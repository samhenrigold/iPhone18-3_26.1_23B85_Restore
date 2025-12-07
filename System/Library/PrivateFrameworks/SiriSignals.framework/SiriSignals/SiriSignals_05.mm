uint64_t sub_2314F9D5C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FA408(v3, v1, v2);
}

uint64_t sub_2314F9DA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v13[3] = &type metadata for NoParameters;
  v13[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v13, v2);
  v3 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  sub_2314A2910(v2, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v5 = sub_231585FF4();
    __swift_project_value_buffer(v5, qword_280D72248);
    v6 = sub_231585FE4();
    v7 = sub_2315865E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12[2] = v9;
      *v8 = 136315138;
      v12[1] = type metadata accessor for DomainToContactRecencySignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B740, &unk_23158ADF8);
      sub_231586204();
      v10 = sub_2314A22E8();

      *(v8 + 4) = v10;
      _os_log_impl(&dword_231496000, v6, v7, "%s no entityName given", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314F9FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = &type metadata for SignalComputationContext;
  v27[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v27[0] = v9;
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  sub_2314B5008(a1, v26);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v27, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v11 = *(a1 + 40);
  (*(v6 + 32))(v8, v4, v5);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_284610448;
  }

  v26[0] = *(a1 + 8);
  v13 = *(&v26[0] + 1);
  if (!*(&v26[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 136315138;
      v25[2] = type metadata accessor for DomainToContactRecencySignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B740, &unk_23158ADF8);
      sub_231586204();
      v22 = sub_2314A22E8();

      *(v20 + 4) = v22;
      _os_log_impl(&dword_231496000, v18, v19, "%s no entityName given", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x231931280](v21, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_15;
  }

  v14 = *&v26[0];

  sub_2314A1D9C(v26, v25, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v15);
  *(&v24 - 4) = v8;
  *(&v24 - 3) = v14;
  *(&v24 - 2) = v13;
  v16 = sub_2314DCD00(sub_2314FA9E4, (&v24 - 6), v12);

  (*(v6 + 8))(v8, v5);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v16;
}

uint64_t sub_2314FA408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a2;
  v34[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v34, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_284610448;
  }

  (*(a3 + 32))(&v30, a2, a3);
  v16 = v31;
  if (!v31)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      v29[2] = type metadata accessor for DomainToContactRecencySignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B740, &unk_23158ADF8);
      sub_231586204();
      v27 = sub_2314A22E8();

      *(v25 + 4) = v27;
      _os_log_impl(&dword_231496000, v23, v24, "%s no entityName given", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231931280](v26, -1, -1);
      MEMORY[0x231931280](v25, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_15;
  }

  v17 = v32;
  v18 = v33;
  v19 = v30;

  sub_2314A0D38(v19, v16, v17, v18);
  MEMORY[0x28223BE20](v20);
  v29[-4] = v12;
  v29[-3] = v17;
  v29[-2] = v18;
  v21 = sub_2314DCD00(sub_2314FA9C4, &v29[-6], v15);

  (*(v10 + 8))(v12, v9);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v21;
}

uint64_t sub_2314FA854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactRecencySignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314FA8B8(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactRecencySignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314FA93C(uint64_t a1)
{
  result = sub_231585D34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2314FAA10()
{
  result = sub_231586964();
  qword_27DD5B748 = result;
  unk_27DD5B750 = v1;
  return result;
}

uint64_t static DomainToContactTimeSinceLastUsedSignal.signalName.getter()
{
  if (qword_27DD5ADE8 != -1)
  {
    OUTLINED_FUNCTION_0_39(&qword_27DD5ADE8);
  }

  v0 = qword_27DD5B748;

  return v0;
}

unint64_t DomainToContactTimeSinceLastUsedSignal.id.getter()
{
  type metadata accessor for DomainToContactTimeSinceLastUsedSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADE8 != -1)
  {
    OUTLINED_FUNCTION_0_39(&qword_27DD5ADE8);
  }

  MEMORY[0x23192FF80](qword_27DD5B748, unk_27DD5B750);
  return v1;
}

uint64_t type metadata accessor for DomainToContactTimeSinceLastUsedSignal(uint64_t a1)
{
  result = qword_27DD5B760;
  if (!qword_27DD5B760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainToContactTimeSinceLastUsedSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FB8A0(v3, v1, v2);
}

uint64_t sub_2314FABB4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v7 = sub_231585D34();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-v12];
  v21 = *a1;
  v14 = *(v8 + 16);
  v14(&v20[-v12], a2, v7);
  UsedSignal = type metadata accessor for DomainToContactTimeSinceLastUsedSignal(0);
  a4[3] = UsedSignal;
  a4[4] = &protocol witness table for DomainToContactTimeSinceLastUsedSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v14(boxed_opaque_existential_1, v13, v7);
  *(boxed_opaque_existential_1 + *(UsedSignal + 28)) = v21;
  v17 = v22;
  *(boxed_opaque_existential_1 + *(UsedSignal + 20)) = v22;
  v14(v11, boxed_opaque_existential_1, v7);
  v18 = v17;
  sub_231585A74();
  return (*(v8 + 8))(v13, v7);
}

uint64_t static DomainToContactTimeSinceLastUsedSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611C70);
  *a1 = result;
  return result;
}

uint64_t DomainToContactTimeSinceLastUsedSignal.value(completion:)(void (*a1)(unint64_t *, __n128), uint64_t a2)
{
  UsedSignal = type metadata accessor for DomainToContactTimeSinceLastUsedSignal(0);
  MEMORY[0x28223BE20](UsedSignal);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v103 = v8;
  MEMORY[0x28223BE20](v9);
  v96 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_231585BA4();
  OUTLINED_FUNCTION_4_1();
  v91 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v102 = v14;
  MEMORY[0x28223BE20](v15);
  v90 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_3_1();
  v101 = v18;
  MEMORY[0x28223BE20](v19);
  v98 = (&v82 - v20);
  v99 = v11;
  sub_2315860F4();
  LOBYTE(v105) = *(v2 + *(UsedSignal + 28));
  DomainUseCase.intentTypes.getter();
  v21 = sub_231585A44();
  v87 = 0;
  v86 = a1;
  v85 = a2;
  v84 = v7;
  v82 = UsedSignal;
  v83 = v2;
  v22 = v21;

  v23 = v103;
  v24 = sub_2315860F4();
  v25 = 0;
  v92 = v22;
  v28 = *(v22 + 64);
  v27 = v22 + 64;
  v26 = v28;
  v29 = 1 << *(v27 - 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v26;
  v88 = (v29 + 63) >> 6;
  v89 = v91 + 16;
  v100 = (v91 + 32);
  v94 = v91 + 8;
  v95 = (v23 + 1);
  isUniquelyReferenced_nonNull_native = v99;
  v33 = v101;
  for (i = v27; ; v27 = i)
  {
    v103 = v24;
    if (!v31)
    {
      while (1)
      {
        v34 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v34 >= v88)
        {
          v24 = &qword_27DD5B640;
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
          __swift_storeEnumTagSinglePayload(v33, 1, 1, v70);
          v31 = 0;
          goto LABEL_11;
        }

        v31 = *(v27 + 8 * v34);
        ++v25;
        if (v31)
        {
          v25 = v34;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v34 = v25;
LABEL_10:
    v35 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v36 = v35 | (v34 << 6);
    v37 = (*(v92 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = v91;
    v41 = v90;
    (*(v91 + 16))(v90, *(v92 + 56) + *(v91 + 72) * v36, isUniquelyReferenced_nonNull_native);
    v24 = &qword_27DD5B640;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    v43 = *(v42 + 48);
    v44 = v101;
    *v101 = v39;
    *(v44 + 1) = v38;
    v33 = v44;
    (*(v40 + 32))(&v44[v43], v41, isUniquelyReferenced_nonNull_native);
    __swift_storeEnumTagSinglePayload(v33, 0, 1, v42);

LABEL_11:
    v45 = v98;
    sub_2314F56B8(v33, v98);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
    {
      break;
    }

    v48 = *v45;
    v47 = v45[1];
    (*v100)(v102, v45 + *(v46 + 48), isUniquelyReferenced_nonNull_native);
    v49 = v96;
    sub_231585B74();
    sub_2315857F4();
    v51 = v50;
    (*v95)(v49, v97);
    v52 = round(v51);
    v53 = v103;
    if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }

    if (v52 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v52 >= 9.22337204e18)
    {
      goto LABEL_37;
    }

    if (v52 < 0 && __OFSUB__(0, v52))
    {
      goto LABEL_40;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v53;
    v54 = sub_23149C888(v48, v47);
    v56 = *(v53 + 16);
    v57 = (v55 & 1) == 0;
    v24 = (v56 + v57);
    if (__OFADD__(v56, v57))
    {
      goto LABEL_38;
    }

    v58 = v54;
    v59 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v60 = sub_23149C888(v48, v47);
      if ((v59 & 1) != (v61 & 1))
      {
        result = sub_231586C84();
        __break(1u);
        return result;
      }

      v58 = v60;
    }

    if (v59)
    {

      v24 = v105;
      v62 = OUTLINED_FUNCTION_2_15();
      v63(v62);
    }

    else
    {
      v24 = v105;
      *(v105 + 8 * (v58 >> 6) + 64) |= 1 << v58;
      v64 = (v24[6] + 16 * v58);
      *v64 = v48;
      v64[1] = v47;
      v65 = OUTLINED_FUNCTION_2_15();
      v66(v65);
      v67 = v24[2];
      v68 = __OFADD__(v67, 1);
      v69 = v67 + 1;
      if (v68)
      {
        goto LABEL_39;
      }

      v24[2] = v69;
    }

    v33 = v101;
  }

  v24 = v103;
  if (qword_280D70420 == -1)
  {
    goto LABEL_28;
  }

LABEL_41:
  OUTLINED_FUNCTION_6_0(&qword_280D70420);
LABEL_28:
  v71 = sub_231585FF4();
  __swift_project_value_buffer(v71, qword_280D72248);
  v72 = v84;
  sub_2314FBCAC(v83, v84);
  v73 = sub_231585FE4();
  v74 = sub_2315865D4();
  v75 = os_log_type_enabled(v73, v74);
  v76 = v86;
  if (v75)
  {
    v77 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *v77 = 136315394;
    v104 = *(v72 + *(v82 + 28));
    v105 = DomainUseCase.rawValue.getter();
    v106 = v78;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADE8 != -1)
    {
      OUTLINED_FUNCTION_0_39(&qword_27DD5ADE8);
    }

    MEMORY[0x23192FF80](qword_27DD5B748, unk_27DD5B750);
    sub_2314FBD10(v72);
    v79 = sub_2314A22E8();

    *(v77 + 4) = v79;
    *(v77 + 12) = 2080;

    sub_2315860E4();

    v80 = sub_2314A22E8();

    *(v77 + 14) = v80;
    _os_log_impl(&dword_231496000, v73, v74, "%s value: %s", v77, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314FBD10(v72);
  }

  v105 = v24;
  LOBYTE(v106) = 1;

  (v76)(&v105);
  sub_2314A5EEC(v105, v106);
}

uint64_t sub_2314FB840(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FB8A0(v3, v1, v2);
}

uint64_t sub_2314FB8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = a2;
  v28[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v28, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
LABEL_15:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_28460FFA8;
  }

  v16 = (*(a3 + 48))(a2, a3);
  if (!v16)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[2] = v24;
      *v23 = 136315138;
      v27[1] = type metadata accessor for DomainToContactTimeSinceLastUsedSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B758, &unk_23158DE10);
      sub_231586204();
      v25 = sub_2314A22E8();

      *(v23 + 4) = v25;
      _os_log_impl(&dword_231496000, v21, v22, "%s no intent given", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x231931280](v24, -1, -1);
      MEMORY[0x231931280](v23, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v27[-2] = v12;
  v27[-1] = v18;
  v19 = sub_2314DCD00(sub_2314FBE38, &v27[-4], v15);

  (*(v10 + 8))(v12, v9);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v19;
}

uint64_t sub_2314FBCAC(uint64_t a1, uint64_t a2)
{
  UsedSignal = type metadata accessor for DomainToContactTimeSinceLastUsedSignal(0);
  (*(*(UsedSignal - 8) + 16))(a2, a1, UsedSignal);
  return a2;
}

uint64_t sub_2314FBD10(uint64_t a1)
{
  UsedSignal = type metadata accessor for DomainToContactTimeSinceLastUsedSignal(0);
  (*(*(UsedSignal - 8) + 8))(a1, UsedSignal);
  return a1;
}

unint64_t sub_2314FBD94(uint64_t a1)
{
  result = sub_231585D34();
  if (v2 <= 0x3F)
  {
    result = sub_2314EF33C();
    if (v3 <= 0x3F)
    {
      result = sub_231585A84();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2314FBE68()
{
  result = sub_231586964();
  qword_27DD5B770 = result;
  *algn_27DD5B778 = v1;
  return result;
}

uint64_t static DomainToContactTotalFrequencyByIntentSignal.signalName.getter()
{
  if (qword_27DD5ADF0 != -1)
  {
    OUTLINED_FUNCTION_0_40(&qword_27DD5ADF0);
  }

  v0 = qword_27DD5B770;

  return v0;
}

unint64_t DomainToContactTotalFrequencyByIntentSignal.id.getter()
{
  type metadata accessor for DomainToContactTotalFrequencyByIntentSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADF0 != -1)
  {
    OUTLINED_FUNCTION_0_40(&qword_27DD5ADF0);
  }

  MEMORY[0x23192FF80](qword_27DD5B770, *algn_27DD5B778);
  return v1;
}

uint64_t type metadata accessor for DomainToContactTotalFrequencyByIntentSignal(uint64_t a1)
{
  result = qword_27DD5B788;
  if (!qword_27DD5B788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainToContactTotalFrequencyByIntentSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FCD78(v3, v1, v2);
}

uint64_t sub_2314FC00C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v7 = sub_231585D34();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-v12];
  v21 = *a1;
  v14 = *(v8 + 16);
  v14(&v20[-v12], a2, v7);
  v15 = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal(0);
  a4[3] = v15;
  a4[4] = &protocol witness table for DomainToContactTotalFrequencyByIntentSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v14(boxed_opaque_existential_1, v13, v7);
  *(boxed_opaque_existential_1 + *(v15 + 28)) = v21;
  v17 = v22;
  *(boxed_opaque_existential_1 + *(v15 + 20)) = v22;
  v14(v11, boxed_opaque_existential_1, v7);
  v18 = v17;
  sub_231585A74();
  return (*(v8 + 8))(v13, v7);
}

uint64_t static DomainToContactTotalFrequencyByIntentSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611C98);
  *a1 = result;
  return result;
}

uint64_t DomainToContactTotalFrequencyByIntentSignal.value(completion:)(void (*a1)(unint64_t *, __n128), uint64_t a2)
{
  v5 = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  v90 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231585BA4();
  v97 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v107 = v9;
  MEMORY[0x28223BE20](v10);
  v96 = v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_3_1();
  v106 = v13;
  MEMORY[0x28223BE20](v14);
  v103 = (v89 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v89 - v17;
  v19 = v8;
  v98 = sub_2315860F4();
  v20 = sub_2315860F4();
  v93 = v5;
  v21 = *(v5 + 28);
  v94 = v2;
  LOBYTE(v109) = *(v2 + v21);
  v22 = v109;
  DomainUseCase.intentTypes.getter();
  if (v22 <= 0xD)
  {
    if (((1 << v22) & 0xA95) != 0)
    {
      v23 = MEMORY[0x277D5FFC0];
LABEL_6:
      v24 = *v23;
      v25 = sub_231585D74();
      OUTLINED_FUNCTION_8();
      (*(v26 + 104))(v18, v24, v25);
      v27 = v18;
      v28 = 0;
      v29 = v25;
      goto LABEL_7;
    }

    if (((1 << v22) & 0x3060) != 0)
    {
      v23 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  v29 = sub_231585D74();
  v27 = v18;
  v28 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
  v30 = sub_231585A34();
  v92 = a1;
  v91 = a2;
  v31 = v30;
  v89[1] = 0;
  sub_2314A2910(v18, &qword_27DD5B4C8, &unk_23158A6B0);

  v32 = v106;
  v33 = v8;
  v34 = 0;
  v98 = v31;
  v37 = *(v31 + 64);
  v36 = v31 + 64;
  v35 = v37;
  v38 = 1 << *(v36 - 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v35;
  v41 = (v38 + 63) >> 6;
  v95 = v97 + 16;
  v105 = (v97 + 32);
  v101 = v19;
  v102 = v97 + 8;
  v42 = v107;
  v99 = v41;
  v100 = v36;
  if ((v39 & v35) != 0)
  {
    while (1)
    {
      v104 = v20;
      v43 = v33;
      v44 = v34;
LABEL_15:
      v45 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v46 = v45 | (v44 << 6);
      v47 = v97;
      v48 = (*(v98 + 48) + 16 * v46);
      v50 = *v48;
      v49 = v48[1];
      v51 = v96;
      (*(v97 + 16))(v96, *(v98 + 56) + *(v97 + 72) * v46, v43);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
      v53 = *(v52 + 48);
      v54 = v106;
      *v106 = v50;
      v54[1] = v49;
      v32 = v54;
      v55 = *(v47 + 32);
      v33 = v43;
      v55(v32 + v53, v51, v43);
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v52);

      v20 = v104;
      v42 = v107;
LABEL_16:
      v56 = v103;
      sub_2314F56B8(v32, v103);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
      if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
      {
        break;
      }

      v59 = *v56;
      v58 = v56[1];
      (*v105)(v42, v56 + *(v57 + 48), v33);
      if (v20[2] && (v60 = sub_23149C888(v59, v58), (v61 & 1) != 0))
      {
        v62 = *(v20[7] + 8 * v60);
      }

      else
      {
        v62 = 0;
      }

      if (__OFADD__(v62, sub_231585B84()))
      {
        goto LABEL_42;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v109 = v20;
      v63 = sub_23149C888(v59, v58);
      v65 = v20[2];
      v66 = (v64 & 1) == 0;
      v20 = (v65 + v66);
      if (__OFADD__(v65, v66))
      {
        goto LABEL_43;
      }

      v33 = v63;
      v42 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v67 = sub_23149C888(v59, v58);
        if ((v42 & 1) != (v68 & 1))
        {
          result = sub_231586C84();
          __break(1u);
          return result;
        }

        v33 = v67;
      }

      if (v42)
      {

        v20 = v109;
        v69 = OUTLINED_FUNCTION_2_16();
        v70(v69);
      }

      else
      {
        v20 = v109;
        *(v109 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v71 = (v20[6] + 16 * v33);
        *v71 = v59;
        v71[1] = v58;
        v72 = OUTLINED_FUNCTION_2_16();
        v73(v72);
        v74 = v20[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_44;
        }

        v20[2] = v76;
      }

      v32 = v106;
      v41 = v99;
      v36 = v100;
      if (!v40)
      {
        goto LABEL_11;
      }
    }

    if (qword_280D70420 != -1)
    {
      goto LABEL_45;
    }
  }

  else
  {
LABEL_11:
    while (1)
    {
      v44 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v44 >= v41)
      {
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        __swift_storeEnumTagSinglePayload(v32, 1, 1, v77);
        v40 = 0;
        goto LABEL_16;
      }

      v40 = *(v36 + 8 * v44);
      ++v34;
      if (v40)
      {
        v104 = v20;
        v43 = v33;
        v34 = v44;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v78 = sub_231585FF4();
  __swift_project_value_buffer(v78, qword_280D72248);
  v79 = v90;
  sub_2314FD194(v94, v90);
  v80 = sub_231585FE4();
  v81 = sub_2315865D4();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v92;
  if (v82)
  {
    v84 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *v84 = 136315394;
    v108 = *(v79 + *(v93 + 28));
    v109 = DomainUseCase.rawValue.getter();
    v110 = v85;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADF0 != -1)
    {
      OUTLINED_FUNCTION_0_40(&qword_27DD5ADF0);
    }

    MEMORY[0x23192FF80](qword_27DD5B770, *algn_27DD5B778);
    sub_2314FD1F8(v79);
    v86 = sub_2314A22E8();

    *(v84 + 4) = v86;
    *(v84 + 12) = 2080;

    sub_2315860E4();

    v87 = sub_2314A22E8();

    *(v84 + 14) = v87;
    _os_log_impl(&dword_231496000, v80, v81, "%s value: %s", v84, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314FD1F8(v79);
  }

  v109 = v20;
  LOBYTE(v110) = 1;

  (v83)(&v109);
  sub_2314A5EEC(v109, v110);
}

uint64_t sub_2314FCD18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FCD78(v3, v1, v2);
}

uint64_t sub_2314FCD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = a2;
  v28[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v28, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_28460FFD0;
  }

  v16 = (*(a3 + 48))(a2, a3);
  if (!v16)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[2] = v24;
      *v23 = 136315138;
      v27[1] = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B780, &qword_23158AE90);
      sub_231586204();
      v25 = sub_2314A22E8();

      *(v23 + 4) = v25;
      _os_log_impl(&dword_231496000, v21, v22, "%s no intent given", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x231931280](v24, -1, -1);
      MEMORY[0x231931280](v23, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v27[-2] = v12;
  v27[-1] = v18;
  v19 = sub_2314DCD00(sub_2314FD27C, &v27[-4], v15);

  (*(v10 + 8))(v12, v9);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v19;
}

uint64_t sub_2314FD194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314FD1F8(uint64_t a1)
{
  v2 = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314FD2AC()
{
  result = sub_231586964();
  qword_27DD5B798 = result;
  unk_27DD5B7A0 = v1;
  return result;
}

uint64_t static DomainToHandleAffinityScoreSignal.signalName.getter()
{
  if (qword_27DD5ADF8 != -1)
  {
    OUTLINED_FUNCTION_0_41(&qword_27DD5ADF8);
  }

  v0 = qword_27DD5B798;

  return v0;
}

unint64_t DomainToHandleAffinityScoreSignal.id.getter()
{
  type metadata accessor for DomainToHandleAffinityScoreSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5ADF8 != -1)
  {
    OUTLINED_FUNCTION_0_41(&qword_27DD5ADF8);
  }

  MEMORY[0x23192FF80](qword_27DD5B798, unk_27DD5B7A0);
  return v1;
}

uint64_t type metadata accessor for DomainToHandleAffinityScoreSignal(uint64_t a1)
{
  result = qword_27DD5B7A8;
  if (!qword_27DD5B7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DomainToHandleAffinityScoreSignal.entityID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DomainToHandleAffinityScoreSignal(0) + 24));

  return v1;
}

uint64_t static DomainToHandleAffinityScoreSignal.instances(createdFor:useCases:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[0] = MEMORY[0x277D84F90];
  v27[1] = a1;
  v27[2] = a2;
  v27[3] = 0;
  v27[4] = 0;
  v27[5] = a3;

  v3 = sub_2314FE338(v27);
  sub_2314C1D18(v27);
  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v21 = v3;
  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v5, v26);
    sub_23149FD3C(v26, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((OUTLINED_FUNCTION_7_14(v7, v8, v9) & 1) == 0)
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
LABEL_11:
      sub_2314A2910(&v22, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v23 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v22, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_4_13();
      v6 = isUniquelyReferenced_nonNull_native;
    }

    v18 = *(v6 + 24);
    if (*(v6 + 16) >= v18 >> 1)
    {
      OUTLINED_FUNCTION_6_12(v18);
      v6 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_5_11(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14, v15, v16, v17, v20, v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25[0]);
LABEL_12:
    v5 += 40;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t static DomainToHandleAffinityScoreSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2314FE338(v3);
}

uint64_t static DomainToHandleAffinityScoreSignal.instances(createdFor:)(uint64_t a1, uint64_t a2)
{
  v26[0] = MEMORY[0x277D84F90];
  v26[1] = a1;
  v26[2] = a2;
  memset(&v26[3], 0, 24);

  v2 = sub_2314FE338(v26);
  sub_2314C1D18(v26);
  v3 = *(v2 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v20 = v2;
  v4 = v2 + 32;
  v5 = MEMORY[0x277D84F90];
  do
  {
    sub_2314A2C74(v4, v25);
    sub_23149FD3C(v25, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B590, &qword_23158A9D8);
    if ((OUTLINED_FUNCTION_7_14(v6, v7, v8) & 1) == 0)
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
LABEL_11:
      sub_2314A2910(&v21, &qword_27DD5B598, &qword_23158A9E0);
      goto LABEL_12;
    }

    if (!*(&v22 + 1))
    {
      goto LABEL_11;
    }

    sub_23149FD3C(&v21, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_4_13();
      v5 = isUniquelyReferenced_nonNull_native;
    }

    v17 = *(v5 + 24);
    if (*(v5 + 16) >= v17 >> 1)
    {
      OUTLINED_FUNCTION_6_12(v17);
      v5 = isUniquelyReferenced_nonNull_native;
    }

    OUTLINED_FUNCTION_5_11(isUniquelyReferenced_nonNull_native, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24[0]);
LABEL_12:
    v4 += 40;
    --v3;
  }

  while (v3);

  return v5;
}

uint64_t static DomainToHandleAffinityScoreSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FE764(v3, v1, v2);
}

double sub_2314FD808@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for DomainToHandleAffinityScoreSignal(0);
  a5[3] = v10;
  a5[4] = &protocol witness table for DomainToHandleAffinityScoreSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  v12 = sub_231585D34();
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
  *(boxed_opaque_existential_1 + *(v10 + 20)) = v9;
  v13 = (boxed_opaque_existential_1 + *(v10 + 24));
  *v13 = a3;
  v13[1] = a4;

  return result;
}

uint64_t static DomainToHandleAffinityScoreSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611CC0);
  *a1 = result;
  return result;
}

uint64_t DomainToHandleAffinityScoreSignal.value(completion:)(void (*a1)(unint64_t *), uint64_t a2)
{
  v85 = a2;
  v86 = a1;
  v2 = type metadata accessor for DomainToHandleAffinityScoreSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  v83 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_11_0();
  v78 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v75 = &v73 - v11;
  v74 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v89 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_0();
  v87 = (v14 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - v17;
  v19 = sub_231585AE4();
  OUTLINED_FUNCTION_4_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11_0();
  v25 = v23 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v73 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v73 - v30;
  sub_231585AD4();
  sub_231585AC4();
  v32 = *(v21 + 8);
  v32(v25, v19);
  v33 = v88;
  sub_231585AA4();
  v80 = v32;
  v81 = v21 + 8;
  v32(v29, v19);
  v34 = *(v89 + 16);
  v35 = v33;
  v36 = v33;
  v37 = v74;
  v34(v18, v36, v74);
  v73 = v2;
  v38 = *(v35 + *(v2 + 20));
  v39 = *(v21 + 16);
  v82 = v31;
  v40 = v75;
  v39();
  v84 = v19;
  v41 = v19;
  v42 = v37;
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
  v43 = DomainToHandleAffinityScoreSignal.id.getter();
  v45 = v44;
  v77 = v18;
  v34(v87, v18, v42);
  LOBYTE(v91) = v38;
  v46 = DomainUseCase.intentTypes.getter();
  v76 = v45;
  if (v38 <= 0xD)
  {
    if (((1 << v38) & 0xA95) != 0)
    {
      v47 = v46;
      v48 = v43;
      v49 = *MEMORY[0x277D5FFC0];
      v50 = sub_231585D74();
      OUTLINED_FUNCTION_8();
      v52 = v79;
      (*(v51 + 104))(v79, v49, v50);
LABEL_6:
      v55 = v52;
      v56 = 0;
      v57 = v50;
      goto LABEL_7;
    }

    if (((1 << v38) & 0x3060) != 0)
    {
      v47 = v46;
      v48 = v43;
      v53 = *MEMORY[0x277D5FFB8];
      v50 = sub_231585D74();
      OUTLINED_FUNCTION_8();
      v52 = v79;
      (*(v54 + 104))(v79, v53, v50);
      goto LABEL_6;
    }
  }

  v47 = v46;
  v48 = v43;
  v57 = sub_231585D74();
  v52 = v79;
  v55 = v79;
  v56 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v55, v56, 1, v57);
  if (v38 - 1 > 0xA)
  {
    v58 = 2;
  }

  else
  {
    v58 = byte_23158AF92[(v38 - 1)];
  }

  v59 = v78;
  sub_2314A1D9C(v40, v78, &qword_27DD5B4D0, &qword_23158A5D0);
  v60 = sub_2314A0DE8(v87, v47, v52, v58, v59, v48, v76, MEMORY[0x277D84F90], 0);
  v62 = v61;
  sub_2314A2910(v40, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v89 + 8))(v77, v42);
  v63 = sub_2314BB35C(v60, v62);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v64 = sub_231585FF4();
  __swift_project_value_buffer(v64, qword_280D72248);
  v65 = v83;
  sub_2314FEBB0(v88, v83);

  v66 = sub_231585FE4();
  v67 = sub_2315865D4();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v68 = 136315394;
    v90 = *(v65 + *(v73 + 20));
    v91 = DomainUseCase.rawValue.getter();
    v92 = v69;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5ADF8 != -1)
    {
      OUTLINED_FUNCTION_0_41(&qword_27DD5ADF8);
    }

    MEMORY[0x23192FF80](qword_27DD5B798, unk_27DD5B7A0);
    sub_2314FEC14(v65);
    v70 = sub_2314A22E8();

    *(v68 + 4) = v70;
    *(v68 + 12) = 2080;
    sub_2315860E4();
    v71 = sub_2314A22E8();

    *(v68 + 14) = v71;
    _os_log_impl(&dword_231496000, v66, v67, "%s value: %s", v68, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2314FEC14(v65);
  }

  v91 = v63;
  LOBYTE(v92) = 3;
  v86(&v91);
  sub_2314A5EEC(v91, v92);
  return v80(v82, v84);
}

uint64_t sub_2314FE0A4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314FE764(v3, v1, v2);
}

uint64_t sub_2314FE104()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v13[3] = &type metadata for NoParameters;
  v13[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v13, v2);
  v3 = sub_231585D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  sub_2314A2910(v2, &qword_27DD5B008, &unk_23158A5C0);
  if (EnumTagSinglePayload != 1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v5 = sub_231585FF4();
    __swift_project_value_buffer(v5, qword_280D72248);
    v6 = sub_231585FE4();
    v7 = sub_2315865E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12[2] = v9;
      *v8 = 136315138;
      v12[1] = type metadata accessor for DomainToHandleAffinityScoreSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7B8, &unk_23158AF80);
      sub_231586204();
      v10 = sub_2314A22E8();

      *(v8 + 4) = v10;
      _os_log_impl(&dword_231496000, v6, v7, "%s no entityName given", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2314FE338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = &type metadata for SignalComputationContext;
  v27[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v27[0] = v9;
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  sub_2314B5008(a1, v26);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v27, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v11 = *(a1 + 40);
  (*(v6 + 32))(v8, v4, v5);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_2846104F0;
  }

  v26[0] = *(a1 + 8);
  v13 = *(&v26[0] + 1);
  if (!*(&v26[0] + 1))
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    v18 = sub_231585FE4();
    v19 = sub_2315865E4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 136315138;
      v25[2] = type metadata accessor for DomainToHandleAffinityScoreSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7B8, &unk_23158AF80);
      sub_231586204();
      v22 = sub_2314A22E8();

      *(v20 + 4) = v22;
      _os_log_impl(&dword_231496000, v18, v19, "%s no entityName given", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x231931280](v21, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    goto LABEL_15;
  }

  v14 = *&v26[0];

  sub_2314A1D9C(v26, v25, &qword_27DD5B120, &qword_23158ACE0);

  MEMORY[0x28223BE20](v15);
  *(&v24 - 4) = v8;
  *(&v24 - 3) = v14;
  *(&v24 - 2) = v13;
  v16 = sub_2314DCD00(sub_2314FECB8, (&v24 - 6), v12);

  (*(v6 + 8))(v8, v5);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v16;
}

uint64_t sub_2314FE764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = a2;
  v34[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v34, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_2846104F0;
  }

  (*(a3 + 32))(&v30, a2, a3);
  v16 = v31;
  if (!v31)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      v29[2] = type metadata accessor for DomainToHandleAffinityScoreSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7B8, &unk_23158AF80);
      sub_231586204();
      v27 = sub_2314A22E8();

      *(v25 + 4) = v27;
      _os_log_impl(&dword_231496000, v23, v24, "%s no entityName given", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x231931280](v26, -1, -1);
      MEMORY[0x231931280](v25, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_15;
  }

  v17 = v32;
  v18 = v33;
  v19 = v30;

  sub_2314A0D38(v19, v16, v17, v18);
  MEMORY[0x28223BE20](v20);
  v29[-4] = v12;
  v29[-3] = v17;
  v29[-2] = v18;
  v21 = sub_2314DCD00(sub_2314FEC98, &v29[-6], v15);

  (*(v10 + 8))(v12, v9);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v21;
}

uint64_t sub_2314FEBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainToHandleAffinityScoreSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314FEC14(uint64_t a1)
{
  v2 = type metadata accessor for DomainToHandleAffinityScoreSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314FECE4()
{
  result = sub_231586964();
  qword_27DD5B7C0 = result;
  *algn_27DD5B7C8 = v1;
  return result;
}

uint64_t static DomainTotalFrequencyByCountryCodeSignal.signalName.getter()
{
  if (qword_27DD5AE00 != -1)
  {
    OUTLINED_FUNCTION_0_42(&qword_27DD5AE00);
  }

  v0 = qword_27DD5B7C0;

  return v0;
}

unint64_t DomainTotalFrequencyByCountryCodeSignal.id.getter()
{
  type metadata accessor for DomainTotalFrequencyByCountryCodeSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5AE00 != -1)
  {
    OUTLINED_FUNCTION_0_42(&qword_27DD5AE00);
  }

  MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
  return v1;
}

uint64_t type metadata accessor for DomainTotalFrequencyByCountryCodeSignal(uint64_t a1)
{
  result = qword_27DD5B7E0;
  if (!qword_27DD5B7E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainTotalFrequencyByCountryCodeSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231501228(v3, v1, v2);
}

uint64_t sub_2314FEE88@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v7 = sub_231585D34();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-v12];
  v21 = *a1;
  v14 = *(v8 + 16);
  v14(&v20[-v12], a2, v7);
  v15 = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal(0);
  a4[3] = v15;
  a4[4] = &protocol witness table for DomainTotalFrequencyByCountryCodeSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v14(boxed_opaque_existential_1, v13, v7);
  *(boxed_opaque_existential_1 + *(v15 + 28)) = v21;
  v17 = v22;
  *(boxed_opaque_existential_1 + *(v15 + 20)) = v22;
  v14(v11, boxed_opaque_existential_1, v7);
  v18 = v17;
  sub_231585A74();
  return (*(v8 + 8))(v13, v7);
}

uint64_t static DomainTotalFrequencyByCountryCodeSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611CE8);
  *a1 = result;
  return result;
}

uint64_t DomainTotalFrequencyByCountryCodeSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v251 = a2;
  v252 = a1;
  v3 = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal(0);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_13();
  v260 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v9);
  v232 = &v226 - v10;
  v259 = sub_231585BA4();
  OUTLINED_FUNCTION_4_1();
  v257 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v258 = v13;
  MEMORY[0x28223BE20](v14);
  v256 = &v226 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_3_1();
  v255 = v17;
  MEMORY[0x28223BE20](v18);
  v254 = (&v226 - v19);
  v240 = sub_231585D74();
  OUTLINED_FUNCTION_4_1();
  v239 = v20;
  MEMORY[0x28223BE20](v21);
  v238 = &v226 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7D0, &unk_23158AFA8);
  OUTLINED_FUNCTION_4_1();
  v236 = v23;
  MEMORY[0x28223BE20](v24);
  v246 = (&v226 - v25);
  v249 = sub_231585D14();
  OUTLINED_FUNCTION_4_1();
  v250 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v32);
  v34 = &v226 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v226 - v36;
  v38 = sub_231585AE4();
  OUTLINED_FUNCTION_4_1();
  v245 = v39;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = (&v226 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v226 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v226 - v47;
  v49 = sub_2315860F4();
  v247 = v3;
  v253 = v2;
  v50 = 0;
  v51 = sub_231585A14();
  v227 = v43;
  v228 = v46;
  v229 = v48;
  v230 = v38;
  if (!v51)
  {
    v52 = v253;
    if (qword_280D70420 == -1)
    {
LABEL_3:
      v53 = sub_231585FF4();
      __swift_project_value_buffer(v53, qword_280D72248);
      v54 = v260;
      sub_231501644(v52, v260);
      v55 = sub_231585FE4();
      v56 = sub_2315865D4();
      if (OUTLINED_FUNCTION_21_4(v56))
      {
        OUTLINED_FUNCTION_14_4();
        swift_slowAlloc();
        v57 = OUTLINED_FUNCTION_16_5();
        v264 = v57;
        *v50 = 136315138;
        OUTLINED_FUNCTION_4_14();
        v59 = OUTLINED_FUNCTION_17_5(*(v54 + v58));
        OUTLINED_FUNCTION_6_13(v59, v60);
        if (qword_27DD5AE00 != -1)
        {
          OUTLINED_FUNCTION_0_42(&qword_27DD5AE00);
        }

        MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
        sub_2315016A8(v54);
        OUTLINED_FUNCTION_10_7();
        v61 = sub_2314A22E8();

        *(v50 + 4) = v61;
        OUTLINED_FUNCTION_18_5();
        _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        goto LABEL_7;
      }

      v67 = v54;
LABEL_9:
      sub_2315016A8(v67);
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_14_4();
      goto LABEL_10;
    }

LABEL_80:
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
    goto LABEL_3;
  }

  v69 = v253;
  v70 = v51;
  sub_231585A24();
  v71 = v230;
  if (__swift_getEnumTagSinglePayload(v37, 1, v230) != 1)
  {
    v244 = v70;
    (*(v245 + 32))(v229, v37, v71);
    sub_231585D04();
    sub_231585C64();
    v86 = v250 + 8;
    v87 = *(v250 + 8);
    OUTLINED_FUNCTION_19_4();
    v87();
    v88 = sub_231585C44();
    v260 = 0;
    v250 = v86;
    v261 = v49;
    v89 = v88;
    (v87)(v34, v46);
    v90 = v246;
    v91 = sub_231500988(v89);

    v92 = sub_231501010(v91);

    v93 = v227;
    if (v92[2] != 1)
    {

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
      }

      v145 = sub_231585FF4();
      __swift_project_value_buffer(v145, qword_280D72248);
      OUTLINED_FUNCTION_13_5();
      OUTLINED_FUNCTION_19_4();
      sub_231501644(v146, v147);

      v148 = sub_231585FE4();
      v149 = sub_2315865D4();
      if (OUTLINED_FUNCTION_21_4(v149))
      {
        OUTLINED_FUNCTION_14_4();
        OUTLINED_FUNCTION_22_0();
        v150 = OUTLINED_FUNCTION_16_5();
        v264 = v150;
        *v93 = 136315394;
        OUTLINED_FUNCTION_4_14();
        v152 = OUTLINED_FUNCTION_17_5(*(v91 + v151));
        OUTLINED_FUNCTION_6_13(v152, v153);
        if (qword_27DD5AE00 != -1)
        {
          OUTLINED_FUNCTION_0_42(&qword_27DD5AE00);
        }

        MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
        sub_2315016A8(v91);
        OUTLINED_FUNCTION_10_7();
        v154 = sub_2314A22E8();

        *(v93 + 4) = v154;
        *(v93 + 6) = 2048;
        v155 = v92[2];

        *(v93 + 14) = v155;

        OUTLINED_FUNCTION_18_5();
        _os_log_impl(v156, v157, v158, v159, v160, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v150);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        OUTLINED_FUNCTION_15_4();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        sub_2315016A8(v91);
        OUTLINED_FUNCTION_15_4();
        OUTLINED_FUNCTION_14_4();
      }

      v161 = v229;
      OUTLINED_FUNCTION_11_9();
      (v87)(&v262);
      sub_2314A5EEC(v262, v263);
      (*(v245 + 8))(v161, v230);
    }

    v94 = v71;
    v95 = v92[4];
    v96 = v92[5];

    v262 = v95;
    v263 = v96;

    MEMORY[0x23192FF80](37, 0xE100000000000000);

    v97 = v262;
    v98 = v263;
    v99 = *(v244 + 16);

    LODWORD(v244) = v99 > 1;
    v246 = sub_2315860F4();
    sub_231585AD4();
    *v90 = v97;
    v90[1] = v98;
    v100 = *MEMORY[0x277D5FF30];
    v101 = v236;
    v102 = v90;
    v103 = v87;
    v104 = v102;
    v242 = *(v236 + 104);
    v105 = v93;
    v106 = v237;
    (v242)(v102, v100, v237);
    sub_231585AB4();
    v107 = *(v101 + 8);
    v107(v104, v106);
    v243 = *(v245 + 8);
    v245 += 8;
    v243(v105, v94);
    v108 = v233;
    sub_231585D04();
    v109 = v234;
    sub_231585C64();
    v110 = v249;
    (v103)(v108, v249);
    OUTLINED_FUNCTION_4_14();
    LOBYTE(v262) = *(v253 + v111);
    *v104 = DomainUseCase.intentTypes.getter();
    (v242)(v104, *MEMORY[0x277D5FF28], v106);
    v112 = v235;
    sub_231585C94();
    v107(v104, v106);
    v113 = v109;
    v114 = v110;
    v115 = v103;
    (v103)(v113, v114);
    LOBYTE(v262) = v244;
    v116 = v248;
    sub_231585CA4();
    (v103)(v112, v114);
    v117 = v239;
    v118 = v238;
    v119 = v240;
    (*(v239 + 104))(v238, *MEMORY[0x277D5FFC0], v240);
    v120 = v241;
    sub_231585CD4();
    (*(v117 + 8))(v118, v119);
    (v115)(v116, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7D8, &qword_23158AFB8);
    v121 = sub_231585C14();
    OUTLINED_FUNCTION_4_1();
    v123 = v122;
    v124 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_231588340;
    (*(v123 + 104))(v125 + v124, *MEMORY[0x277D5FF90], v121);
    v126 = v120;
    v127 = v253;
    v128 = v260;
    v129 = sub_231585C34();
    v242 = v128;
    if (v128)
    {

      (v115)(v126, v114);
      v130 = OUTLINED_FUNCTION_7_15();
      v131(v130);
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
      }

      v132 = sub_231585FF4();
      __swift_project_value_buffer(v132, qword_280D72248);
      v133 = v231;
      sub_231501644(v127, v231);
      v134 = v242;
      v135 = v242;
      v136 = sub_231585FE4();
      v137 = sub_2315865E4();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = OUTLINED_FUNCTION_22_0();
        v264 = swift_slowAlloc();
        *v138 = 136315394;
        OUTLINED_FUNCTION_4_14();
        v140 = OUTLINED_FUNCTION_17_5(*(v133 + v139));
        OUTLINED_FUNCTION_6_13(v140, v141);
        if (qword_27DD5AE00 != -1)
        {
          OUTLINED_FUNCTION_0_42(&qword_27DD5AE00);
        }

        MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
        sub_2315016A8(v133);
        OUTLINED_FUNCTION_10_7();
        v142 = sub_2314A22E8();

        *(v138 + 4) = v142;
        *(v138 + 12) = 2080;
        v143 = v242;
        swift_getErrorValue();
        sub_231586C94();
        v144 = sub_2314A22E8();

        *(v138 + 14) = v144;
        _os_log_impl(&dword_231496000, v136, v137, "%s error querying interaction history: %s", v138, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        sub_2315016A8(v133);
      }

      v242 = 0;
      v162 = v246;
    }

    else
    {
      v162 = v129;

      (v115)(v126, v114);
      v163 = OUTLINED_FUNCTION_7_15();
      v164(v163);
    }

    v52 = 0;
    v246 = v162;
    v167 = *(v162 + 8);
    v166 = (v162 + 64);
    v165 = v167;
    v168 = 1 << *(v166 - 32);
    v169 = -1;
    if (v168 < 64)
    {
      v169 = ~(-1 << v168);
    }

    v170 = v169 & v165;
    v171 = (v168 + 63) >> 6;
    v172 = v257;
    v244 = v257 + 16;
    v260 = (v257 + 32);
    v250 = v257 + 8;
    v50 = &qword_27DD5B640;
    v174 = v258;
    v173 = v259;
    v43 = v256;
    v249 = v166;
    v248 = v171;
    if ((v169 & v165) != 0)
    {
      do
      {
        v175 = v52;
LABEL_50:
        v176 = __clz(__rbit64(v170));
        v170 &= v170 - 1;
        v177 = v176 | (v175 << 6);
        v178 = (v246[6] + 16 * v177);
        v180 = *v178;
        v179 = v178[1];
        (*(v172 + 16))(v43, v246[7] + *(v172 + 72) * v177, v173);
        v181 = &unk_23158AE80;
        v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        v183 = *(v182 + 48);
        v184 = v255;
        *v255 = v180;
        v184[1] = v179;
        v185 = v184;
        (*(v172 + 32))(v184 + v183, v43, v173);
        v186 = v182;
        v50 = &qword_27DD5B640;
        __swift_storeEnumTagSinglePayload(v185, 0, 1, v186);

LABEL_51:
        v187 = v185;
        v188 = v254;
        sub_2314F56B8(v187, v254);
        v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v188, 1, v189);
        v191 = v261;
        if (EnumTagSinglePayload == 1)
        {

          if (qword_280D70420 != -1)
          {
            OUTLINED_FUNCTION_6_0(&qword_280D70420);
          }

          v210 = sub_231585FF4();
          __swift_project_value_buffer(v210, qword_280D72248);
          OUTLINED_FUNCTION_13_5();
          OUTLINED_FUNCTION_19_4();
          sub_231501644(v211, v212);
          v213 = sub_231585FE4();
          v214 = sub_2315865D4();
          OUTLINED_FUNCTION_21_4(v214);
          OUTLINED_FUNCTION_20_5();
          if (v215)
          {
            v50 = OUTLINED_FUNCTION_22_0();
            v181 = swift_slowAlloc();
            v264 = v181;
            *v50 = 136315394;
            OUTLINED_FUNCTION_4_14();
            v217 = OUTLINED_FUNCTION_17_5(*(v173 + v216));
            OUTLINED_FUNCTION_6_13(v217, v218);
            if (qword_27DD5AE00 != -1)
            {
              OUTLINED_FUNCTION_0_42(&qword_27DD5AE00);
            }

            MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
            sub_2315016A8(v173);
            OUTLINED_FUNCTION_10_7();
            v219 = sub_2314A22E8();

            *(v50 + 4) = v219;
            *(v50 + 6) = 2080;

            sub_2315860E4();

            OUTLINED_FUNCTION_10_7();
            v220 = sub_2314A22E8();

            *(v50 + 14) = v220;
            OUTLINED_FUNCTION_18_5();
            _os_log_impl(v221, v222, v223, v224, v225, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_10();

            OUTLINED_FUNCTION_20_5();
          }

          else
          {

            sub_2315016A8(v173);
          }

          OUTLINED_FUNCTION_11_9();
          OUTLINED_FUNCTION_15_4();
          (v50)();
          sub_2314A5EEC(v262, v263);
          v243(v181, v230);
        }

        v50 = *v188;
        v43 = v188[1];
        (*v260)(v174, v188 + *(v189 + 48), v173);
        if (*(v191 + 16) && (v192 = sub_23149C888(v50, v43), (v193 & 1) != 0))
        {
          v194 = *(*(v191 + 56) + 8 * v192);
        }

        else
        {
          v194 = 0;
        }

        if (__OFADD__(v194, sub_231585B84()))
        {
          goto LABEL_77;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v262 = v191;
        v195 = sub_23149C888(v50, v43);
        if (__OFADD__(*(v191 + 16), (v196 & 1) == 0))
        {
          goto LABEL_78;
        }

        v174 = v195;
        v197 = v196;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (sub_231586A64())
        {
          v198 = sub_23149C888(v50, v43);
          v173 = v259;
          if ((v197 & 1) != (v199 & 1))
          {
            result = sub_231586C84();
            __break(1u);
            return result;
          }

          v174 = v198;
          if (v197)
          {
LABEL_64:

            v261 = v262;
            v207 = OUTLINED_FUNCTION_9_9(v262[7]);
            v208(v207);
            goto LABEL_65;
          }
        }

        else
        {
          v173 = v259;
          if (v197)
          {
            goto LABEL_64;
          }
        }

        v200 = v262;
        v262[(v174 >> 6) + 8] |= 1 << v174;
        v201 = (v200[6] + 16 * v174);
        *v201 = v50;
        v201[1] = v43;
        v202 = OUTLINED_FUNCTION_9_9(v200[7]);
        v203(v202);
        v204 = v200[2];
        v205 = __OFADD__(v204, 1);
        v206 = v204 + 1;
        if (v205)
        {
          goto LABEL_79;
        }

        v261 = v200;
        v200[2] = v206;
LABEL_65:
        v43 = v256;
        v172 = v257;
        v166 = v249;
        v171 = v248;
        v50 = &qword_27DD5B640;
      }

      while (v170);
    }

    while (1)
    {
      v175 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v175 >= v171)
      {
        v181 = &unk_23158AE80;
        v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        v185 = v255;
        __swift_storeEnumTagSinglePayload(v255, 1, 1, v209);
        v170 = 0;
        goto LABEL_51;
      }

      v170 = *(v166 + 8 * v175);
      ++v52;
      if (v170)
      {
        v52 = v175;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  sub_2314CC1C4(v37, &qword_27DD5B4D0, &qword_23158A5D0);
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v72 = sub_231585FF4();
  __swift_project_value_buffer(v72, qword_280D72248);
  v73 = v69;
  v74 = v244;
  sub_231501644(v73, v244);
  v55 = sub_231585FE4();
  v75 = sub_2315865D4();
  if (!OUTLINED_FUNCTION_21_4(v75))
  {

    v67 = v74;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_4();
  swift_slowAlloc();
  v76 = OUTLINED_FUNCTION_16_5();
  v264 = v76;
  MEMORY[0] = 136315138;
  OUTLINED_FUNCTION_4_14();
  v78 = OUTLINED_FUNCTION_17_5(*(v74 + v77));
  OUTLINED_FUNCTION_6_13(v78, v79);
  if (qword_27DD5AE00 != -1)
  {
    OUTLINED_FUNCTION_0_42(&qword_27DD5AE00);
  }

  MEMORY[0x23192FF80](qword_27DD5B7C0, *algn_27DD5B7C8);
  sub_2315016A8(v74);
  OUTLINED_FUNCTION_10_7();
  v80 = sub_2314A22E8();

  MEMORY[4] = v80;
  OUTLINED_FUNCTION_18_5();
  _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v76);
LABEL_7:
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_15_4();
LABEL_10:
  OUTLINED_FUNCTION_11_9();
  (v43)(&v262);
  sub_2314A5EEC(v262, v263);
}

uint64_t sub_231500988(uint64_t a1)
{
  v75 = sub_231585E34();
  v2 = *(v75 - 8);
  v3 = MEMORY[0x28223BE20](v75);
  v67 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v66 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A0, &qword_23158A530);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  v9 = sub_231585DF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v81 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a1 + 16);
  if (v58)
  {
    v12 = sub_231585DB4();
    v13 = 0;
    v14 = *(v12 - 8);
    v69 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v77 = v10 + 16;
    v74 = v2 + 16;
    v65 = v2;
    v63 = (v2 + 8);
    v15 = (v10 + 8);
    v68 = *(v14 + 72);
    v71 = MEMORY[0x277D84F90];
    v16 = v58;
    v64 = v8;
    v70 = v9;
    v76 = v10;
    v62 = (v10 + 8);
LABEL_3:
    v73 = v13 + 1;
    v17 = sub_231585DA4();
    v18 = 0;
    v19 = v17 + 64;
    v20 = 1 << *(v17 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v17 + 64);
    v23 = (v20 + 63) >> 6;
LABEL_7:
    if (v22)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v24 >= v23)
      {

        v13 = v73;
        if (v73 == v16)
        {
          return v71;
        }

        goto LABEL_3;
      }

      v22 = *(v19 + 8 * v24);
      ++v18;
      if (v22)
      {
        v18 = v24;
LABEL_12:
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v26 = v25 | (v18 << 6);
        v27 = *(*(v17 + 56) + 8 * v26);
        v28 = *(v27 + 16);
        if (v28)
        {
          v60 = v17;
          v78 = v28;
          v29 = *(*(v17 + 48) + 16 * v26 + 8);
          v80 = v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
          swift_bridgeObjectRetain_n();
          v59 = v29;

          v30 = 0;
          v79 = v27;
          while (1)
          {
            if (v30 >= *(v27 + 16))
            {
              goto LABEL_41;
            }

            (*(v10 + 16))(v81, v80 + *(v10 + 72) * v30, v9);
            if (sub_231585DD4() == 0x61486E6F73726550 && v31 == 0xEC000000656C646ELL)
            {
            }

            else
            {
              v33 = sub_231586C44();

              if ((v33 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            v34 = sub_231585DE4();
            if (*(v34 + 16) && (v35 = sub_23149C888(1701869940, 0xE400000000000000), (v36 & 1) != 0))
            {
              v37 = *(v65 + 72);
              v38 = *(v65 + 16);
              v39 = v75;
              v38(v8, *(v34 + 56) + v37 * v35, v75);

              __swift_storeEnumTagSinglePayload(v8, 0, 1, v39);
              sub_2314CC1C4(v8, &qword_27DD5B4A0, &qword_23158A530);
              v40 = sub_231585DE4();
              if (!*(v40 + 16))
              {
                goto LABEL_42;
              }

              v41 = sub_23149C888(1701869940, 0xE400000000000000);
              if ((v42 & 1) == 0)
              {
                goto LABEL_42;
              }

              v43 = *(v40 + 56) + v41 * v37;
              v44 = v66;
              v45 = v75;
              v38(v66, v43, v75);

              v46 = v67;
              sub_231586244();
              LODWORD(v72) = sub_231585E14();
              v47 = *v63;
              (*v63)(v46, v45);
              v47(v44, v45);
              v8 = v64;
              v9 = v70;
              v15 = v62;
              if (v72)
              {
                v72 = sub_231585DC4();
                v61 = v48;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_23149D588();
                  v71 = v54;
                }

                v49 = *(v71 + 16);
                if (v49 >= *(v71 + 24) >> 1)
                {
                  sub_23149D588();
                  v71 = v55;
                }

                v9 = v70;
                (*v15)(v81, v70);
                v50 = v71;
                v51 = v72;
                *(v71 + 16) = v49 + 1;
                v52 = v50 + 16 * v49;
                v53 = v61;
                *(v52 + 32) = v51;
                *(v52 + 40) = v53;
                goto LABEL_34;
              }
            }

            else
            {

              __swift_storeEnumTagSinglePayload(v8, 1, 1, v75);
              sub_2314CC1C4(v8, &qword_27DD5B4A0, &qword_23158A530);
            }

LABEL_33:
            (*v15)(v81, v9);
LABEL_34:
            ++v30;
            v27 = v79;
            v10 = v76;
            if (v78 == v30)
            {

              swift_bridgeObjectRelease_n();
              v16 = v58;
              v17 = v60;
              goto LABEL_7;
            }
          }
        }

        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

const void *sub_231501010(uint64_t a1)
{
  v1 = MEMORY[0x277D84FA0];
  v25 = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {

      v4 = sub_231585D94();
      v6 = v5;

      if (v6)
      {
        v12 = v25;
        if (*(v25 + 16))
        {
          sub_231586D14();
          sub_231586274();
          v13 = sub_231586D44();
          v14 = ~(-1 << *(v12 + 32));
          while (1)
          {
            v15 = v13 & v14;
            if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
            {
              break;
            }

            v16 = (*(v12 + 48) + 16 * v15);
            if (*v16 != v4 || v6 != v16[1])
            {
              v18 = sub_231586C44();
              v13 = v15 + 1;
              if ((v18 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_14;
          }
        }

        sub_2314A00A4(v24, v4, v6, v7, v8, v9, v10, v11, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, vars0, vars8);
LABEL_14:
      }
    }

    v1 = v25;
  }

  v19 = *(v1 + 16);
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = sub_231571BB0(*(v1 + 16), 0);
  sub_231572A38();
  v22 = v21;
  sub_2314A4B70(v24[0]);
  if (v22 != v19)
  {
    __break(1u);
LABEL_20:

    return MEMORY[0x277D84F90];
  }

  return v20;
}

uint64_t sub_2315011C8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231501228(v3, v1, v2);
}

uint64_t sub_231501228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = a2;
  v28[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v28, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314CC1C4(v8, &qword_27DD5B008, &unk_23158A5C0);
LABEL_15:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = (*(a3 + 24))(a2, a3);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = &unk_28460FFF8;
  }

  v16 = (*(a3 + 48))(a2, a3);
  if (!v16)
  {

    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[2] = v24;
      *v23 = 136315138;
      v27[1] = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7F0, "֫");
      sub_231586204();
      v25 = sub_2314A22E8();

      *(v23 + 4) = v25;
      _os_log_impl(&dword_231496000, v21, v22, "%s no intent given", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x231931280](v24, -1, -1);
      MEMORY[0x231931280](v23, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = MEMORY[0x28223BE20](v16);
  v27[-2] = v12;
  v27[-1] = v18;
  v19 = sub_2314DCD00(sub_23150172C, &v27[-4], v15);

  (*(v10 + 8))(v12, v9);
LABEL_16:
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v19;
}

uint64_t sub_231501644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315016A8(uint64_t a1)
{
  v2 = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23150175C()
{
  result = sub_231586964();
  qword_27DD5B7F8 = result;
  unk_27DD5B800 = v1;
  return result;
}

uint64_t static DomainTotalFrequencySignal.signalName.getter()
{
  if (qword_27DD5AE08 != -1)
  {
    OUTLINED_FUNCTION_1_17(&qword_27DD5AE08);
  }

  v0 = qword_27DD5B7F8;

  return v0;
}

unint64_t DomainTotalFrequencySignal.id.getter()
{
  type metadata accessor for DomainTotalFrequencySignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_27DD5AE08 != -1)
  {
    OUTLINED_FUNCTION_1_17(&qword_27DD5AE08);
  }

  MEMORY[0x23192FF80](qword_27DD5B7F8, unk_27DD5B800);
  return v1;
}

uint64_t type metadata accessor for DomainTotalFrequencySignal(uint64_t a1)
{
  result = qword_27DD5B818;
  if (!qword_27DD5B818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainTotalFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231502770(v3, v1, v2);
}

uint64_t sub_231501900@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_231585D34();
  OUTLINED_FUNCTION_4_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_0();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v20[-v14];
  v21 = *a1;
  v16 = *(v8 + 16);
  v16(&v20[-v14], a2, v6);
  v17 = type metadata accessor for DomainTotalFrequencySignal(0);
  a3[3] = v17;
  a3[4] = &protocol witness table for DomainTotalFrequencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v16(boxed_opaque_existential_1, v15, v6);
  *(boxed_opaque_existential_1 + *(v17 + 24)) = v21;
  v16(v12, boxed_opaque_existential_1, v6);
  sub_231585A74();
  return (*(v8 + 8))(v15, v6);
}

uint64_t static DomainTotalFrequencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611D10);
  *a1 = result;
  return result;
}

uint64_t DomainTotalFrequencySignal.value(completion:)(void (*a1)(unint64_t *, __n128), uint64_t a2)
{
  v5 = type metadata accessor for DomainTotalFrequencySignal(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231585BA4();
  OUTLINED_FUNCTION_4_1();
  v143 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_0();
  v150 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v133 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_11_0();
  v146 = (v16 - v17);
  MEMORY[0x28223BE20](v18);
  v142 = (&v133 - v19);
  v152 = v8;
  sub_2315860F4();
  v20 = sub_2315860F4();
  v134 = v5;
  v147 = *(v5 + 24);
  LOBYTE(v157) = *(v2 + v147);
  DomainUseCase.intentTypes.getter();
  v148 = v2;
  v21 = sub_231585A54();
  v137 = a1;
  v136 = a2;
  v135 = v7;
  v29 = v21;
  v133 = 0;

  v30 = v29;
LABEL_6:
  v31 = 0;
  v141 = v30;
  v34 = *(v30 + 64);
  v33 = v30 + 64;
  v32 = v34;
  v35 = 1 << *(v33 - 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v32;
  v38 = (v35 + 63) >> 6;
  v139 = v143 + 16;
  v149 = (v143 + 32);
  v145 = v143 + 8;
  v39 = v146;
  v40 = v142;
  v144 = v33;
  v138 = v38;
  while (1)
  {
    if (!v37)
    {
      while (1)
      {
        v42 = (v31 + 1);
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v42 >= v38)
        {
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
          __swift_storeEnumTagSinglePayload(v39, 1, 1, v90);
          v37 = 0;
          goto LABEL_16;
        }

        v37 = *(v33 + 8 * v42);
        ++v31;
        if (v37)
        {
          v41 = v20;
          v31 = v42;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v41 = v20;
    v42 = v31;
LABEL_15:
    v43 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v44 = v43 | (v42 << 6);
    v45 = (*(v141 + 48) + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
    v48 = v143;
    v49 = v140;
    v50 = v152;
    (*(v143 + 16))(v140, *(v141 + 56) + *(v143 + 72) * v44, v152);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    v52 = *(v51 + 48);
    v53 = v146;
    *v146 = v47;
    *(v53 + 1) = v46;
    v39 = v53;
    (*(v48 + 32))(&v53[v52], v49, v50);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v51);

    v20 = v41;
    v40 = v142;
    v38 = v138;
LABEL_16:
    sub_2314F56B8(v39, v40);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    if (__swift_getEnumTagSinglePayload(v40, 1, v54) == 1)
    {
      break;
    }

    v56 = *v40;
    v55 = v40[1];
    (*v149)(v150, v40 + *(v54 + 48), v152);
    v151 = sub_231585D84();
    v153 = v57;
    v58 = *(v148 + v147);
    if (v58 <= 0xA && ((1 << v58) & 0x50A) != 0)
    {
      v157 = v56;
      v158 = v55;
      v154 = 1702195828;
      v155 = 0xE400000000000000;
      sub_231502AB8();
      if (sub_231586794())
      {

        if (*(v20 + 16) && (v59 = OUTLINED_FUNCTION_2_17(), v61 = sub_23149C888(v59, v60), (v62 & 1) != 0))
        {
          v63 = *(*(v20 + 56) + 8 * v61);
        }

        else
        {
          v63 = 0;
        }

        v71 = sub_231585B84();
        v72 = v63 + v71;
        if (__OFADD__(v63, v71))
        {
          goto LABEL_81;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v157 = v20;
        v73 = OUTLINED_FUNCTION_2_17();
        sub_23149C888(v73, v74);
        OUTLINED_FUNCTION_3_14();
        if (v77)
        {
          goto LABEL_82;
        }

        v78 = v75;
        v79 = v76;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (OUTLINED_FUNCTION_5_12(v80))
        {
          v81 = OUTLINED_FUNCTION_2_17();
          sub_23149C888(v81, v82);
          OUTLINED_FUNCTION_7_16();
          if (!v64)
          {
            goto LABEL_91;
          }

          v78 = v83;
        }

        if (v79)
        {
          goto LABEL_69;
        }

        v84 = OUTLINED_FUNCTION_0_43();
        v85(v84);
        v86 = *(v20 + 16);
        v77 = __OFADD__(v86, 1);
        v87 = v86 + 1;
        if (v77)
        {
          goto LABEL_85;
        }

        goto LABEL_71;
      }

      v58 = *(v148 + v147);
    }

    v64 = v58 == 11 || v58 == 4;
    if (!v64)
    {

LABEL_44:
      switch(*(v148 + v147))
      {
        case 1:
        case 3:
        case 4:
        case 8:
        case 0xA:
        case 0xB:
          v88 = OUTLINED_FUNCTION_9_10();
          v89(v88);

          v33 = v144;
          continue;
        default:
          if (*(v20 + 16) && (v104 = OUTLINED_FUNCTION_2_17(), v106 = sub_23149C888(v104, v105), (v107 & 1) != 0))
          {
            v108 = *(*(v20 + 56) + 8 * v106);
          }

          else
          {
            v108 = 0;
          }

          v109 = sub_231585B84();
          v72 = v108 + v109;
          if (__OFADD__(v108, v109))
          {
            goto LABEL_87;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v157 = v20;
          v110 = OUTLINED_FUNCTION_2_17();
          sub_23149C888(v110, v111);
          OUTLINED_FUNCTION_3_14();
          if (v77)
          {
            goto LABEL_88;
          }

          v78 = v112;
          v30 = v113;
          v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
          if ((OUTLINED_FUNCTION_5_12(v114) & 1) == 0)
          {
            goto LABEL_68;
          }

          v115 = OUTLINED_FUNCTION_2_17();
          sub_23149C888(v115, v116);
          OUTLINED_FUNCTION_7_16();
          if (!v64)
          {
            goto LABEL_91;
          }

          v78 = v117;
LABEL_68:
          if (v30)
          {
            goto LABEL_69;
          }

          v120 = OUTLINED_FUNCTION_0_43();
          v121(v120);
          v122 = *(v20 + 16);
          v77 = __OFADD__(v122, 1);
          v87 = v122 + 1;
          if (!v77)
          {
            goto LABEL_71;
          }

          __break(1u);
          OUTLINED_FUNCTION_6_0(&qword_280D70420);
          v22 = sub_231585FF4();
          __swift_project_value_buffer(v22, qword_280D72248);
          v23 = v31;
          v24 = sub_231585FE4();
          v25 = sub_2315865E4();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v157 = swift_slowAlloc();
            *v26 = 136315394;
            v154 = v134;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B810, &qword_23158B018);
            sub_231586204();
            v27 = sub_2314A22E8();

            *(v26 + 4) = v27;
            *(v26 + 12) = 2080;
            swift_getErrorValue();
            sub_231586C94();
            v28 = sub_2314A22E8();

            *(v26 + 14) = v28;
            _os_log_impl(&dword_231496000, v24, v25, "%s error querying interaction history: %s", v26, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_10();
            OUTLINED_FUNCTION_10();
          }

          else
          {
          }

          v133 = 0;
          break;
      }

      goto LABEL_6;
    }

    v157 = v56;
    v158 = v55;
    v154 = 0x65736C6166;
    v155 = 0xE500000000000000;
    sub_231502AB8();
    v65 = sub_231586794();

    if ((v65 & 1) == 0)
    {
      goto LABEL_44;
    }

    if (*(v20 + 16) && (v66 = OUTLINED_FUNCTION_2_17(), v68 = sub_23149C888(v66, v67), (v69 & 1) != 0))
    {
      v70 = *(*(v20 + 56) + 8 * v68);
    }

    else
    {
      v70 = 0;
    }

    v91 = sub_231585B84();
    v72 = v70 + v91;
    if (__OFADD__(v70, v91))
    {
      goto LABEL_83;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v157 = v20;
    v92 = OUTLINED_FUNCTION_2_17();
    sub_23149C888(v92, v93);
    OUTLINED_FUNCTION_3_14();
    if (v77)
    {
      goto LABEL_84;
    }

    v78 = v94;
    v96 = v95;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (OUTLINED_FUNCTION_5_12(v97))
    {
      v98 = OUTLINED_FUNCTION_2_17();
      sub_23149C888(v98, v99);
      OUTLINED_FUNCTION_7_16();
      if (!v64)
      {
LABEL_91:
        result = sub_231586C84();
        __break(1u);
        return result;
      }

      v78 = v100;
    }

    if (v96)
    {
LABEL_69:

      v20 = v157;
      *(*(v157 + 56) + 8 * v78) = v72;
      v118 = OUTLINED_FUNCTION_9_10();
      v119(v118);
      goto LABEL_72;
    }

    v101 = OUTLINED_FUNCTION_0_43();
    v102(v101);
    v103 = *(v20 + 16);
    v77 = __OFADD__(v103, 1);
    v87 = v103 + 1;
    if (v77)
    {
      goto LABEL_86;
    }

LABEL_71:
    *(v20 + 16) = v87;
LABEL_72:
    v39 = v146;
    v33 = v144;
  }

  if (qword_280D70420 == -1)
  {
    goto LABEL_74;
  }

LABEL_89:
  OUTLINED_FUNCTION_6_0(&qword_280D70420);
LABEL_74:
  v123 = sub_231585FF4();
  __swift_project_value_buffer(v123, qword_280D72248);
  v124 = v135;
  sub_2315029F8(v148, v135);
  v125 = sub_231585FE4();
  v126 = sub_2315865D4();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    *v127 = 136315394;
    v156 = *(v124 + *(v134 + 24));
    v157 = DomainUseCase.rawValue.getter();
    v158 = v128;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_27DD5AE08 != -1)
    {
      OUTLINED_FUNCTION_1_17(&qword_27DD5AE08);
    }

    MEMORY[0x23192FF80](qword_27DD5B7F8, unk_27DD5B800);
    sub_231502A5C(v124);
    v129 = sub_2314A22E8();

    *(v127 + 4) = v129;
    *(v127 + 12) = 2080;

    sub_2315860E4();

    v130 = sub_2314A22E8();

    *(v127 + 14) = v130;
    _os_log_impl(&dword_231496000, v125, v126, "%s value: %s", v127, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_231502A5C(v124);
  }

  v131 = v137;
  v157 = v20;
  LOBYTE(v158) = 1;

  (v131)(&v157);
  sub_2314A5EEC(v157, v158);
}

uint64_t sub_231502710(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_231502770(v3, v1, v2);
}

uint64_t sub_231502770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = a2;
  v19[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v19, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314B5064(v8);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = (*(a3 + 24))(a2, a3);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &unk_284610020;
    }

    MEMORY[0x28223BE20](v15);
    *(&v18 - 2) = v12;
    v14 = sub_2314DCD00(sub_231502BC0, (&v18 - 4), v16);

    (*(v10 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

uint64_t sub_2315029F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainTotalFrequencySignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231502A5C(uint64_t a1)
{
  v2 = type metadata accessor for DomainTotalFrequencySignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231502AB8()
{
  result = qword_27DD5B808;
  if (!qword_27DD5B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B808);
  }

  return result;
}

uint64_t sub_231502B34(uint64_t a1)
{
  result = sub_231585D34();
  if (v2 <= 0x3F)
  {
    result = sub_231585A84();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DomainUseCase.interactionDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 0xD)
  {
    v4 = 1 << v3;
    if ((v4 & 0xA95) != 0)
    {
      v5 = MEMORY[0x277D5FFC0];
LABEL_6:
      v6 = *v5;
      v7 = sub_231585D74();
      (*(*(v7 - 8) + 104))(a1, v6, v7);
      v8 = a1;
      v9 = 0;
      v10 = v7;
      goto LABEL_7;
    }

    if ((v4 & 0x3060) != 0)
    {
      v5 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  v10 = sub_231585D74();
  v8 = a1;
  v9 = 1;
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t DomainUseCase.isDonatedBySiri.getter()
{
  if (*v0 - 1 > 0xA)
  {
    return 2;
  }

  else
  {
    return byte_23158B16E[(*v0 - 1)];
  }
}

unint64_t DomainUseCase.pseTaskName.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000029;
  if (v1 != 7)
  {
    v2 = 0;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t DomainUseCase.entityFieldName.getter()
{
  if (*v0 - 2 > 0xB)
  {
    return 0;
  }

  else
  {
    return *&aPerson[8 * (*v0 - 2)];
  }
}

SiriSignals::DomainUseCase_optional __swiftcall DomainUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586C54();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_231502E10()
{
  result = qword_27DD5B828;
  if (!qword_27DD5B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B828);
  }

  return result;
}

unint64_t sub_231502E88@<X0>(unint64_t *a1@<X8>)
{
  result = DomainUseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DomainUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DomainUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231503014(void (*a1)(void *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v25 = MEMORY[0x277D84F90];
  sub_23152D5B8(0, v5, 0);
  v6 = v25;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v21 = v10;
    a1(v22, &v21);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v25 = v6;
    v12 = *(v6 + 16);
    v11 = *(v6 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_23152D5B8(v11 > 1, v12 + 1, 1);
    }

    v13 = v23;
    v14 = v24;
    __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_0();
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_5();
    v18 = v17 - v16;
    (*(v19 + 16))(v17 - v16);
    sub_231540938(v12, v18, &v25, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v6 = v25;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2315031C0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x277D84F90];
  sub_23152D794(0, v5, 0);
  v6 = v16;
  v9 = *(sub_231585B14() - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v13 = *(v16 + 16);
    v12 = *(v16 + 24);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      sub_23152D794(v12 > 1, v13 + 1, 1);
    }

    *(v16 + 16) = v14;
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23150331C()
{
  result = sub_231586964();
  qword_280D6F228 = result;
  *algn_280D6F230 = v1;
  return result;
}

uint64_t static DomainUserPersonaSignal.signalName.getter()
{
  if (qword_280D6F220 != -1)
  {
    OUTLINED_FUNCTION_0_45(&qword_280D6F220);
  }

  v0 = qword_280D6F228;

  return v0;
}

unint64_t DomainUserPersonaSignal.id.getter()
{
  type metadata accessor for DomainUserPersonaSignal(0);
  v1 = DomainUseCase.rawValue.getter();
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  if (qword_280D6F220 != -1)
  {
    OUTLINED_FUNCTION_0_45(&qword_280D6F220);
  }

  MEMORY[0x23192FF80](qword_280D6F228, *algn_280D6F230);
  return v1;
}

uint64_t type metadata accessor for DomainUserPersonaSignal(uint64_t a1)
{
  result = qword_280D6F208;
  if (!qword_280D6F208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DomainUserPersonaSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315042CC(v3, v1, v2);
}

uint64_t static DomainUserPersonaSignal.instances(useCases:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v4 = OUTLINED_FUNCTION_19(v3);
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v19[3] = &type metadata for SignalComputationContext;
  v19[4] = &protocol witness table for SignalComputationContext;
  v12 = swift_allocObject();
  v19[0] = v12;
  *(v12 + 16) = MEMORY[0x277D84F90];
  *(v12 + 24) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 56) = a1;
  v13 = qword_280D6FD68;
  swift_bridgeObjectRetain_n();

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v19, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_2314A2910(v1, &qword_27DD5B008, &unk_23158A5C0);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = (*(v7 + 32))(v11, v1, v5);
    if (a1)
    {
      v16 = a1;
    }

    else
    {
      v16 = &unk_284610378;
    }

    MEMORY[0x28223BE20](v15);
    *(&v18 - 2) = v11;

    v14 = sub_231503014(sub_231504564, (&v18 - 4), v16);

    (*(v7 + 8))(v11, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);

  swift_bridgeObjectRelease_n();

  return v14;
}

uint64_t static DomainUserPersonaSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_231504044(v3);
}

uint64_t sub_231503790@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for DomainUserPersonaSignal(0);
  a3[3] = v6;
  a3[4] = protocol witness table for DomainUserPersonaSignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = sub_231585D34();
  result = (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a2, v8);
  *(boxed_opaque_existential_1 + *(v6 + 20)) = v5;
  return result;
}

uint64_t static DomainUserPersonaSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611EF0);
  *a1 = result;
  return result;
}

uint64_t DomainUserPersonaSignal.value(completion:)(uint64_t (*a1)(unint64_t *), uint64_t a2)
{
  v59 = a2;
  v60 = a1;
  v3 = type metadata accessor for DomainUserPersonaSignal(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v58 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4C8, &unk_23158A6B0);
  v8 = OUTLINED_FUNCTION_19(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4D0, &qword_23158A5D0);
  v12 = OUTLINED_FUNCTION_19(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v56 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  v17 = sub_231585D34();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  v26 = *(v19 + 16);
  v26(&v53 - v24, v2, v17);
  v53 = v3;
  v27 = *(v2 + *(v3 + 20));
  v28 = sub_231585AE4();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v28);
  v57 = v2;
  v29 = DomainUserPersonaSignal.id.getter();
  v54 = v30;
  v55 = v29;
  v26(v23, v25, v17);
  LOBYTE(v62) = v27;
  v31 = DomainUseCase.intentTypes.getter();
  if (v27 <= 0xD)
  {
    if (((1 << v27) & 0xA95) != 0)
    {
      v32 = MEMORY[0x277D5FFC0];
LABEL_6:
      v33 = *v32;
      v34 = sub_231585D74();
      OUTLINED_FUNCTION_8();
      (*(v35 + 104))(v10, v33, v34);
      v36 = v10;
      v37 = 0;
      v38 = v34;
      goto LABEL_7;
    }

    if (((1 << v27) & 0x3060) != 0)
    {
      v32 = MEMORY[0x277D5FFB8];
      goto LABEL_6;
    }
  }

  v38 = sub_231585D74();
  v36 = v10;
  v37 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v36, v37, 1, v38);
  if (v27 - 1 > 0xA)
  {
    v39 = 2;
  }

  else
  {
    v39 = byte_23158B28A[(v27 - 1)];
  }

  v40 = v56;
  sub_2314A68F8(v16, v56);
  v41 = sub_2314A0DE8(v23, v31, v10, v39, v40, v55, v54, MEMORY[0x277D84F90], 0);
  sub_2314A2910(v16, &qword_27DD5B4D0, &qword_23158A5D0);
  (*(v19 + 8))(v25, v17);
  sub_23156D71C(v41);
  v43 = v42;

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v44 = sub_231585FF4();
  __swift_project_value_buffer(v44, qword_280D72248);
  v45 = v58;
  sub_231504584(v57, v58);
  v46 = sub_231585FE4();
  v47 = sub_2315865D4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v64 = v49;
    *v48 = 136315394;
    v61 = *(v45 + *(v53 + 20));
    v62 = DomainUseCase.rawValue.getter();
    v63 = v50;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    if (qword_280D6F220 != -1)
    {
      OUTLINED_FUNCTION_0_45(&qword_280D6F220);
    }

    MEMORY[0x23192FF80](qword_280D6F228, *algn_280D6F230);
    sub_2315045E8(v45);
    v51 = sub_2314A22E8();

    *(v48 + 4) = v51;
    *(v48 + 12) = 1024;
    *(v48 + 14) = v43;
    _os_log_impl(&dword_231496000, v46, v47, "%s value: %d", v48, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x231931280](v49, -1, -1);
    MEMORY[0x231931280](v48, -1, -1);
  }

  else
  {

    sub_2315045E8(v45);
  }

  v62 = v43;
  LOBYTE(v63) = 0;
  return v60(&v62);
}

uint64_t sub_231503DF4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315042CC(v3, v1, v2);
}

uint64_t _s11SiriSignals23DomainUserPersonaSignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v2 = OUTLINED_FUNCTION_19(v1);
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v14[3] = &type metadata for NoParameters;
  v14[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2(&qword_280D6FD68);
  }

  sub_2315144B0(v14, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    sub_2314A2910(v0, &qword_27DD5B008, &unk_23158A5C0);
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = (*(v5 + 32))(v9, v0, v3);
    MEMORY[0x28223BE20](v11);
    *(&v13 - 2) = v9;
    v10 = sub_231503014(sub_231504684, (&v13 - 4), &unk_284610378);
    (*(v5 + 8))(v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

uint64_t sub_231504044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17[-v3 - 8];
  v5 = sub_231585D34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18[3] = &type metadata for SignalComputationContext;
  v18[4] = &protocol witness table for SignalComputationContext;
  v9 = swift_allocObject();
  v18[0] = v9;
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  sub_2314B5008(a1, v17);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314A2910(v4, &qword_27DD5B008, &unk_23158A5C0);
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = (*(v6 + 32))(v8, v4, v5);
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_284610378;
    }

    MEMORY[0x28223BE20](v13);
    *(&v16 - 2) = v8;

    v11 = sub_231503014(sub_231504684, (&v16 - 4), v14);

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v11;
}

uint64_t sub_2315042CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-1] - v7;
  v9 = sub_231585D34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = a2;
  v19[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v19, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2314A2910(v8, &qword_27DD5B008, &unk_23158A5C0);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = (*(a3 + 24))(a2, a3);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = &unk_284610378;
    }

    MEMORY[0x28223BE20](v15);
    *(&v18 - 2) = v12;
    v14 = sub_231503014(sub_231504684, (&v18 - 4), v16);

    (*(v10 + 8))(v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

uint64_t sub_231504584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DomainUserPersonaSignal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2315045E8(uint64_t a1)
{
  v2 = type metadata accessor for DomainUserPersonaSignal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315046EC()
{
  result = sub_231586964();
  qword_280D6CE20 = result;
  *algn_280D6CE28 = v1;
  return result;
}

uint64_t static ForegroundAppBiomeSignal.signalName.getter()
{
  if (qword_280D6CE18 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_280D6CE18);
  }

  v0 = qword_280D6CE20;

  return v0;
}

uint64_t ForegroundAppBiomeSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2315047B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_280D6CE18 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_280D6CE18);
  }

  v6 = *algn_280D6CE28;
  *a3 = qword_280D6CE20;
  a3[1] = v6;
  a3[2] = &unk_2846103A0;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(v8 + 8);

  a3[3] = v9(v7, v8);
  a3[4] = a2;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ForegroundAppBiomeSignal.init(candidateBundleIds:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_231539348(a1);

  sub_23149A740(__src);

  memcpy(__dst, __src, sizeof(__dst));
  v4 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v5 = [v4 InFocus];
  swift_unknownObjectRelease();
  if (qword_280D6CE18 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_280D6CE18);
  }

  v7 = qword_280D6CE20;
  v6 = *algn_280D6CE28;
  v8 = __dst[0];

  result = sub_2314A0D7C(__dst);
  *a2 = v7;
  a2[1] = v6;
  a2[2] = &unk_284611F18;
  a2[3] = v8;
  a2[4] = v5;
  return result;
}

uint64_t static ForegroundAppBiomeSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315056CC(v3, v1, v2);
}

uint64_t static ForegroundAppBiomeSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_23150557C(v3);
}

uint64_t static ForegroundAppBiomeSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611F48);
  *a1 = result;
  return result;
}

void ForegroundAppBiomeSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v10 = &v28[-v9 - 8];
  v11 = v2[1];
  v35 = *v2;
  v36 = v11;
  v37 = *(v2 + 4);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2315860F4();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
  v16 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_2314B87DC(v10, v8, 1, 1, 0);
  v18 = v17;
  v19 = [v37 publisherWithOptions_];
  OUTLINED_FUNCTION_1_18();
  v20 = swift_allocObject();
  v21 = v36;
  *(v20 + 16) = v35;
  *(v20 + 32) = v21;
  *(v20 + 48) = v37;
  *(v20 + 56) = v12;
  *(v20 + 64) = a1;
  *(v20 + 72) = a2;
  v33 = sub_231505814;
  v34 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2314B901C;
  v32 = &block_descriptor_7;
  v22 = _Block_copy(&aBlock);
  sub_231505824(&v35, v28);

  OUTLINED_FUNCTION_1_18();
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  *(v23 + 24) = v14;
  v24 = v36;
  *(v23 + 32) = v35;
  *(v23 + 48) = v24;
  *(v23 + 64) = v37;
  *(v23 + 72) = v12;
  v33 = sub_23150585C;
  v34 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2314B901C;
  v32 = &block_descriptor_16;
  v25 = _Block_copy(&aBlock);
  sub_231505824(&v35, v28);

  v26 = [v19 sinkWithCompletion:v22 receiveInput:v25];
  _Block_release(v25);
  _Block_release(v22);
}

uint64_t sub_231504DF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v7 = sub_231585FF4();
  __swift_project_value_buffer(v7, qword_280D72248);
  sub_231505824(a2, v16);

  v8 = sub_231585FE4();
  v9 = sub_2315865D4();
  sub_231505918(a2);

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_2314A22E8();
    *(v10 + 12) = 2080;
    swift_beginAccess();

    sub_2315860E4();

    v12 = sub_2314A22E8();

    *(v10 + 14) = v12;
    _os_log_impl(&dword_231496000, v8, v9, "%s value: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v11, -1, -1);
    MEMORY[0x231931280](v10, -1, -1);
  }

  swift_beginAccess();
  v14 = *(a3 + 16);
  v15 = 1;

  a4(&v14);
  return sub_2314A5EEC(v14, v15);
}

void sub_23150502C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x231930B10]();
  v11 = [a1 eventBody];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2314D7528(v11);
    v15 = v14;
    swift_beginAccess();
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;

    LOBYTE(v13) = [v12 starting];

    swift_beginAccess();
    *(a3 + 16) = v13;
  }

  v44 = a3;
  objc_autoreleasePoolPop(v10);
  v16 = *(a4 + 24);
  v17 = *(v16 + 16);
  if (!v17)
  {
    return;
  }

  swift_beginAccess();
  swift_beginAccess();
  v18 = (v16 + 40);
  v45 = a2;
  while (1)
  {
    v20 = *(v18 - 1);
    v19 = *v18;
    v21 = *(a2 + 24);
    if (v21)
    {
      v22 = v20 == *(a2 + 16) && v21 == v19;
      if (v22 || (sub_231586C44()) && *(v44 + 16) == 1)
      {
        swift_beginAccess();

        swift_isUniquelyReferenced_nonNull_native();
        v23 = *(a5 + 16);
        *(a5 + 16) = 0x8000000000000000;
        v24 = sub_23149C888(v20, v19);
        if (__OFADD__(v23[2], (v25 & 1) == 0))
        {
          goto LABEL_33;
        }

        v26 = v24;
        v27 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (sub_231586A64())
        {
          v28 = sub_23149C888(v20, v19);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_35;
          }

          v26 = v28;
        }

        if ((v27 & 1) == 0)
        {
          v30 = v23;
          v23[(v26 >> 6) + 8] |= 1 << v26;
          v42 = (v23[6] + 16 * v26);
          *v42 = v20;
          v42[1] = v19;
          *(v23[7] + 8 * v26) = 1;
          v43 = v23[2];
          v40 = __OFADD__(v43, 1);
          v41 = v43 + 1;
          if (v40)
          {
            goto LABEL_34;
          }

LABEL_28:
          v30[2] = v41;
          goto LABEL_29;
        }

        v30 = v23;
        *(v23[7] + 8 * v26) = 1;
        goto LABEL_29;
      }
    }

    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a5 + 16);
    *(a5 + 16) = 0x8000000000000000;
    v32 = sub_23149C888(v20, v19);
    if (__OFADD__(v31[2], (v33 & 1) == 0))
    {
      break;
    }

    v34 = v32;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v36 = sub_23149C888(v20, v19);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_35;
      }

      v34 = v36;
    }

    if ((v35 & 1) == 0)
    {
      v30 = v31;
      v31[(v34 >> 6) + 8] |= 1 << v34;
      v38 = (v31[6] + 16 * v34);
      *v38 = v20;
      v38[1] = v19;
      *(v31[7] + 8 * v34) = 0;
      v39 = v31[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

    v30 = v31;
    *(v31[7] + 8 * v34) = 0;
LABEL_29:
    *(a5 + 16) = v30;
    swift_endAccess();
    a2 = v45;
    v18 += 2;
    if (!--v17)
    {
      return;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_231586C84();
  __break(1u);
}

uint64_t sub_231505404(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315056CC(v3, v1, v2);
}

uint64_t _s11SiriSignals24ForegroundAppBiomeSignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v6[3] = &type metadata for NoParameters;
  v6[4] = &protocol witness table for NoParameters;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  sub_2314A2C74(v6, v5);
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for ForegroundAppBiomeSignal;
  *(v0 + 64) = &protocol witness table for ForegroundAppBiomeSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  sub_2315047B0(v5, v2, (v3 + 16));
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v0;
}

uint64_t sub_23150557C(_OWORD *a1)
{
  v11[3] = &type metadata for SignalComputationContext;
  v11[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v11[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_2314A2C74(v11, v10);
  sub_2314B5008(a1, &v9);
  v5 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v6 = [v5 InFocus];
  swift_unknownObjectRelease();
  *(v4 + 56) = &type metadata for ForegroundAppBiomeSignal;
  *(v4 + 64) = &protocol witness table for ForegroundAppBiomeSignal;
  v7 = swift_allocObject();
  *(v4 + 32) = v7;
  sub_2315047B0(v10, v6, (v7 + 16));
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v4;
}

uint64_t sub_2315056CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = a2;
  v12[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231588340;
  sub_2314A2C74(v12, v11);
  v7 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v8 = [v7 InFocus];
  swift_unknownObjectRelease();
  *(v6 + 56) = &type metadata for ForegroundAppBiomeSignal;
  *(v6 + 64) = &protocol witness table for ForegroundAppBiomeSignal;
  v9 = swift_allocObject();
  *(v6 + 32) = v9;
  sub_2315047B0(v11, v8, (v9 + 16));
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v6;
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

uint64_t sub_231505880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2315058C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_231505964()
{
  result = sub_231586964();
  qword_280D6CB48 = result;
  *algn_280D6CB50 = v1;
  return result;
}

uint64_t static ForegroundAppInFocusSignal.signalName.getter()
{
  if (qword_280D6CB40 != -1)
  {
    OUTLINED_FUNCTION_0_47(&qword_280D6CB40);
  }

  v0 = qword_280D6CB48;

  return v0;
}

uint64_t ForegroundAppInFocusSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_231505A20@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  if (qword_280D6CB40 != -1)
  {
    OUTLINED_FUNCTION_0_47(&qword_280D6CB40);
  }

  v6 = *algn_280D6CB50;
  *a3 = qword_280D6CB48;
  a3[1] = v6;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(v8 + 8);

  a3[2] = v9(v7, v8);
  v10 = v9(v7, v8);
  type metadata accessor for BiomeQueriesAppInFocus();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_2314D62B4(a2, v11 + 24);
  a3[3] = v11;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ForegroundAppInFocusSignal.init(candidateBundleIds:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SignalDefinitionParametersProvider.Builder();
  swift_initStackObject();
  SignalDefinitionParametersProvider.Builder.init()();
  sub_231539348(a1);

  sub_23149A740(__src);

  v15[3] = &type metadata for SignalDefinitionParametersProvider;
  v15[4] = &protocol witness table for SignalDefinitionParametersProvider;
  v4 = swift_allocObject();
  v15[0] = v4;
  memcpy((v4 + 16), __src, 0x50uLL);
  v13 = &type metadata for BiomeSQLQueryResultProvider;
  v14 = &protocol witness table for BiomeSQLQueryResultProvider;
  if (qword_280D6CB40 != -1)
  {
    OUTLINED_FUNCTION_0_47(&qword_280D6CB40);
  }

  v6 = qword_280D6CB48;
  v5 = *algn_280D6CB50;
  v7 = __swift_project_boxed_opaque_existential_1(v15, &type metadata for SignalDefinitionParametersProvider);
  v8 = *(v4 + 16);
  v9 = *v7;
  type metadata accessor for BiomeQueriesAppInFocus();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_2314D62B4(&v12, v10 + 24);

  result = __swift_destroy_boxed_opaque_existential_1(v15);
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

uint64_t static ForegroundAppInFocusSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315061EC(v3, v1, v2);
}

uint64_t static ForegroundAppInFocusSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2315060D8(v3);
}

uint64_t static ForegroundAppInFocusSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611F70);
  *a1 = result;
  return result;
}

uint64_t ForegroundAppInFocusSignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v2 = sub_2314CCBB0();
  if (v2)
  {
    v3 = v2;
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v4 = sub_231585FF4();
    __swift_project_value_buffer(v4, qword_280D72248);

    v5 = sub_231585FE4();
    v6 = sub_2315865D4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315394;

      v9 = sub_2314A22E8();

      *(v7 + 4) = v9;
      *(v7 + 12) = 2080;
      sub_2315860E4();
      v10 = sub_2314A22E8();

      *(v7 + 14) = v10;
      _os_log_impl(&dword_231496000, v5, v6, "%s value: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v8, -1, -1);
      MEMORY[0x231931280](v7, -1, -1);
    }

    v12 = v3;
    v13 = 1;
    a1(&v12);
    return sub_2314A5EEC(v12, v13);
  }

  else
  {
    v12 = -1;
    v13 = 0;
    return a1(&v12);
  }
}

uint64_t sub_231505FA8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315061EC(v3, v1, v2);
}

uint64_t _s11SiriSignals26ForegroundAppInFocusSignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v7[3] = &type metadata for NoParameters;
  v7[4] = &protocol witness table for NoParameters;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  sub_2314A2C74(v7, v6);
  v4 = &type metadata for BiomeSQLQueryResultProvider;
  v5 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v0 + 56) = &type metadata for ForegroundAppInFocusSignal;
  *(v0 + 64) = &protocol witness table for ForegroundAppInFocusSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  sub_231505A20(v6, &v3, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v0;
}

uint64_t sub_2315060D8(_OWORD *a1)
{
  v12[3] = &type metadata for SignalComputationContext;
  v12[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v12[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_2314A2C74(v12, v11);
  v9 = &type metadata for BiomeSQLQueryResultProvider;
  v10 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v4 + 56) = &type metadata for ForegroundAppInFocusSignal;
  *(v4 + 64) = &protocol witness table for ForegroundAppInFocusSignal;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  sub_2314B5008(a1, v7);
  sub_231505A20(v11, &v8, (v5 + 16));
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4;
}

uint64_t sub_2315061EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = a2;
  v13[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231588340;
  sub_2314A2C74(v13, v12);
  v10 = &type metadata for BiomeSQLQueryResultProvider;
  v11 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v6 + 56) = &type metadata for ForegroundAppInFocusSignal;
  *(v6 + 64) = &protocol witness table for ForegroundAppInFocusSignal;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  sub_231505A20(v12, &v9, (v7 + 16));
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v6;
}

uint64_t sub_231506310()
{
  result = sub_231586964();
  qword_280D6F160 = result;
  qword_280D6F168 = v1;
  return result;
}

uint64_t *sub_231506344()
{
  if (qword_280D6F158 != -1)
  {
    OUTLINED_FUNCTION_0_48(&qword_280D6F158);
  }

  return &qword_280D6F160;
}

uint64_t static ForegroundAppRecencySignal.signalName.getter()
{
  if (qword_280D6F158 != -1)
  {
    OUTLINED_FUNCTION_0_48(&qword_280D6F158);
  }

  swift_beginAccess();
  v0 = qword_280D6F160;

  return v0;
}

uint64_t static ForegroundAppRecencySignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F158 != -1)
  {
    OUTLINED_FUNCTION_0_48(&qword_280D6F158);
  }

  swift_beginAccess();
  qword_280D6F160 = a1;
  qword_280D6F168 = a2;
}

uint64_t (*static ForegroundAppRecencySignal.signalName.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280D6F158 != -1)
  {
    OUTLINED_FUNCTION_0_48(&qword_280D6F158);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_2315064EC@<D0>(void *a1@<X8>)
{
  sub_231506344();
  swift_beginAccess();
  v2 = qword_280D6F168;
  *a1 = qword_280D6F160;
  a1[1] = v2;

  return result;
}

uint64_t sub_231506540(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231506344();
  swift_beginAccess();
  qword_280D6F160 = v2;
  qword_280D6F168 = v1;
}

uint64_t ForegroundAppRecencySignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static ForegroundAppRecencySignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v7[3] = &type metadata for BiomeSQLQueryResultProvider;
  v7[4] = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v0 + 56) = &type metadata for ForegroundAppRecencySignal;
  *(v0 + 64) = &protocol witness table for ForegroundAppRecencySignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  if (qword_280D6F158 != -1)
  {
    OUTLINED_FUNCTION_0_48(&qword_280D6F158);
  }

  swift_beginAccess();
  v2 = qword_280D6F168;
  *(v1 + 16) = qword_280D6F160;
  *(v1 + 24) = v2;
  sub_2314A2C74(v7, v6);
  type metadata accessor for BiomeQueriesAppInFocus();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  sub_2314D62B4(v6, v3 + 24);
  *(v1 + 32) = v3;
  *(v1 + 40) = sub_2314E03E4;
  *(v1 + 48) = 0;

  __swift_destroy_boxed_opaque_existential_1(v7);
  *(v1 + 56) = v4;
  *(v1 + 64) = -1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  return v0;
}

uint64_t static ForegroundAppRecencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315071E4(v3, v1, v2);
}

uint64_t static ForegroundAppRecencySignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_231506FD0(v3);
}

uint64_t static ForegroundAppRecencySignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611F98);
  *a1 = result;
  return result;
}

void sub_2315067E4(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  v21 = *a2;
  LOBYTE(v22) = v4;
  swift_unknownObjectRetain();
  sub_2315074D0(v21, v4);
  sub_2314D7108(&v21, &v16);
  v5 = v17;
  if (!v17)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v12 = sub_231585FF4();
    __swift_project_value_buffer(v12, qword_280D72248);
    v13 = sub_231585FE4();
    v14 = sub_2315865E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_231496000, v13, v14, "ForegroundAppRecencySignal: Invalid input", v15, 2u);
      MEMORY[0x231931280](v15, -1, -1);
    }

    goto LABEL_10;
  }

  v6 = v16;
  v7 = v20;
  if ((v18 & 1) == 0)
  {
    v21 = v16;
    v22 = v17;
    sub_2315074E4(&v21);
    v23 = v7;
    sub_231507538(&v23);
LABEL_10:
    v10 = 0;
    v11 = -1;
    goto LABEL_11;
  }

  v8 = v19;
  v21 = v20;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v7;
  sub_23157562C(v8, v6, v5, isUniquelyReferenced_nonNull_native);

  sub_231507538(&v21);
  v10 = v23;
  v11 = 1;
LABEL_11:
  *a3 = v10;
  *(a3 + 8) = v11;
}

uint64_t ForegroundAppRecencySignal.value(completion:)(uint64_t (*a1)(uint64_t *))
{
  v2 = sub_2314CD40C();
  if (v2)
  {
    v3 = v2;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v4 = sub_231585FF4();
    __swift_project_value_buffer(v4, qword_280D72248);

    v5 = sub_231585FE4();
    v6 = sub_2315865D4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315394;

      v9 = sub_2314A22E8();

      *(v7 + 4) = v9;
      *(v7 + 12) = 2080;
      sub_2315860E4();
      v10 = sub_2314A22E8();

      *(v7 + 14) = v10;
      _os_log_impl(&dword_231496000, v5, v6, "%s value: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v8, -1, -1);
      MEMORY[0x231931280](v7, -1, -1);
    }

    v12 = v3;
    v13 = 1;
    a1(&v12);
    return sub_2314A5EEC(v12, v13);
  }

  else
  {
    v12 = -1;
    v13 = 0;
    return a1(&v12);
  }
}

void ForegroundAppRecencySignal.derive(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = a2;
  switch(v4)
  {
    case 1:
      swift_retain_n();
      sub_2314EA928(*&v3, v5, v6);
      v40 = v39;

      *v7 = v40;
      goto LABEL_38;
    case 2:
      v10 = OUTLINED_FUNCTION_6_1(*a1);
      if (!(v12 ^ v13 | v11))
      {
        goto LABEL_44;
      }

      if (v10 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v10 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v14 = v10;
      if ((v10 & 0x8000000000000000) == 0)
      {

        v16 = v5(v15);

        if (v16 < v14)
        {
          v14 = -1;
        }

        else
        {
          v14 = v16 - v14;
        }
      }

      *v7 = v14;
      goto LABEL_38;
    case 3:
      v43 = *(v2 + 24);
      v41 = *(a1 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v17 = sub_231586AC4();
      v18 = v17;
      v19 = *&v3 + 64;
      v20 = 1 << *(*&v3 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      i = v21 & *(*&v3 + 64);
      v23 = (v20 + 63) >> 6;
      v45 = v17 + 64;
      swift_retain_n();
      v24 = 0;
      v44 = v3;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((*&v3 & 0x8000000000000000) == 0)
      {

        v9 = v5(v8);

        if (v9 < *&v3)
        {
          v3 = NAN;
        }

        else
        {
          *&v3 = v9 - *&v3;
        }
      }

      *v7 = v3;
      goto LABEL_38;
  }

LABEL_20:
  v26 = v24;
  do
  {
    v24 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v24 >= v23)
    {

      v4 = v41;
      v7 = a2;
      *a2 = v18;
LABEL_38:
      *(v7 + 8) = v4;
      return;
    }

    v27 = *(v19 + 8 * v24);
    ++v26;
  }

  while (!v27);
  v25 = __clz(__rbit64(v27));
  for (i = (v27 - 1) & v27; ; i &= i - 1)
  {
    v28 = v25 | (v24 << 6);
    v29 = OUTLINED_FUNCTION_6_1(*(*(*&v3 + 56) + 8 * v28));
    if (!(v12 ^ v13 | v11))
    {
      break;
    }

    if (v29 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v29 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v30 = (*(*&v3 + 48) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = v29;

    if ((v33 & 0x8000000000000000) == 0)
    {
      v35 = v43(v34);
      if (v35 < v33)
      {
        v33 = -1;
      }

      else
      {
        v33 = v35 - v33;
      }
    }

    *(v45 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v36 = (v18[6] + 16 * v28);
    *v36 = v31;
    v36[1] = v32;
    *(v18[7] + 8 * v28) = v33;
    v37 = v18[2];
    v13 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v13)
    {
      goto LABEL_43;
    }

    v18[2] = v38;
    v3 = v44;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v25 = __clz(__rbit64(i));
  }

LABEL_40:
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
}

void ForegroundAppRecencySignal.adaptCached(value:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 56);
  v8 = *(v2 + 40);
  v9 = v5;
  v10 = *(v2 + 72);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

uint64_t sub_231506F4C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315071E4(v3, v1, v2);
}

uint64_t sub_231506FD0(uint64_t *a1)
{
  v15[3] = &type metadata for SignalComputationContext;
  v15[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v15[0] = v2;
  v3 = *a1;
  v16 = *a1;
  v4 = *(a1 + 1);
  v2[1] = *a1;
  v2[2] = v4;
  v2[3] = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v15, v14);
  v13[3] = &type metadata for BiomeSQLQueryResultProvider;
  v13[4] = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v5 + 56) = &type metadata for ForegroundAppRecencySignal;
  *(v5 + 64) = &protocol witness table for ForegroundAppRecencySignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  sub_2314B5008(a1, v12);
  if (qword_280D6F158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6F168;
  *(v6 + 16) = qword_280D6F160;
  *(v6 + 24) = v7;
  v8 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_2314A2C74(v13, v12);
  type metadata accessor for BiomeQueriesAppInFocus();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  sub_2314D62B4(v12, v9 + 24);
  *(v6 + 32) = v9;
  *(v6 + 40) = sub_2314E03E4;
  *(v6 + 48) = 0;
  v10 = *v8;

  sub_2315075A0(&v16, v12);

  __swift_destroy_boxed_opaque_existential_1(v13);
  *(v6 + 56) = v10;
  *(v6 + 64) = -1;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 1;
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v5;
}

uint64_t sub_2315071E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[3] = a2;
  v20[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a2 - 8) + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v20, v17);
  v16[3] = &type metadata for BiomeSQLQueryResultProvider;
  v16[4] = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v5 + 56) = &type metadata for ForegroundAppRecencySignal;
  *(v5 + 64) = &protocol witness table for ForegroundAppRecencySignal;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  if (qword_280D6F158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_280D6F168;
  *(v6 + 16) = qword_280D6F160;
  *(v6 + 24) = v7;
  v8 = v18;
  v14 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v9 = *(a3 + 8);

  v10 = v9(a2, a3);
  sub_2314A2C74(v16, v15);
  type metadata accessor for BiomeQueriesAppInFocus();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_2314D62B4(v15, v11 + 24);
  *(v6 + 32) = v11;
  *(v6 + 40) = sub_2314E03E4;
  *(v6 + 48) = 0;
  v12 = v9(v8, v14);
  __swift_destroy_boxed_opaque_existential_1(v16);
  *(v6 + 56) = v12;
  *(v6 + 64) = -1;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 1;
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v5;
}

uint64_t sub_23150742C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_23150746C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2315074D0(uint64_t result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2314A5168(result, a2);
  }

  return result;
}

uint64_t sub_231507538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2E8, &unk_23158B460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315075A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231507688(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = OUTLINED_FUNCTION_10_8();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_231507748(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v9 = OUTLINED_FUNCTION_10_8();
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
  }

  v11 = v9;

  a5(a1, a2, 1, &v11);

  return v11;
}

uint64_t sub_231507838(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v6 = OUTLINED_FUNCTION_10_8();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;
  a4(a1, 1, &v8);
  return v8;
}

uint64_t ForegroundAppSignal.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ForegroundAppSignal.__allocating_init(candidateAppBundleIds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ForegroundAppSignal.init(candidateAppBundleIds:)(a1);
  return v2;
}

void *ForegroundAppSignal.init(candidateAppBundleIds:)(uint64_t a1)
{
  v1[3] = [objc_opt_self() keyPathForForegroundApp];
  v1[4] = sub_231586964();
  v1[5] = v3;
  v1[2] = a1;
  return v1;
}

void sub_2315079AC(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() userContext];
  if (!v3)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);
    v23 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_231496000, v23, v24, "ForegroundAppSignal#BOOLValue Could not find user context; values are empty", v25, 2u);
      MEMORY[0x231931280](v25, -1, -1);
    }

    goto LABEL_35;
  }

  v4 = v3;
  v5 = *(v1 + 24);
  if (!v5)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v26 = sub_231585FF4();
    __swift_project_value_buffer(v26, qword_280D72248);
    v27 = sub_231585FE4();
    v28 = sub_2315865E4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_231496000, v27, v28, "ForegroundAppSignal#BOOLValue could not resolve keypath, which should never happen", v29, 2u);
      MEMORY[0x231931280](v29, -1, -1);
    }

    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231588FF0;
  *(v6 + 32) = v5;
  sub_2314A207C(0, &qword_280D6FE80, 0x277CFE358);
  v7 = v5;
  v8 = sub_231586374();

  v9 = [v4 valuesForKeyPaths_];

  if (!v9 || (sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340), sub_2314DFED8(), v10 = sub_2315860D4(), v9, v11 = sub_231566778(v7, v10), , !v11) || (v12 = [v11 value], v11, !v12))
  {
LABEL_30:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v30 = sub_231585FF4();
    __swift_project_value_buffer(v30, qword_280D72248);
    v31 = sub_231585FE4();
    v32 = sub_2315865E4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_231496000, v31, v32, "ForegroundAppSignal#BOOLValue missing value for path", v33, 2u);
      MEMORY[0x231931280](v33, -1, -1);
    }

LABEL_35:
    v34 = 0;
    v35 = -1;
    goto LABEL_36;
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B840, &unk_23158A000);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_30;
  }

  v13 = *(v1 + 16);
  v14 = *(v13 + 16);
  if (v14)
  {
    v37 = v7;
    v15 = v38;
    v39 = MEMORY[0x277D84F90];
    sub_23152D5F8(0, v14, 0);
    v16 = v39;
    v17 = (v13 + 40);
    do
    {
      if (*(v17 - 1) == v15 && *v17 == v40)
      {
        v19 = 1;
      }

      else
      {
        v19 = sub_231586C44() & 1;
      }

      v21 = *(v39 + 16);
      v20 = *(v39 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_23152D5F8(v20 > 1, v21 + 1, 1);
      }

      *(v39 + 16) = v21 + 1;
      *(v39 + 8 * v21 + 32) = v19;
      v17 += 2;
      --v14;
    }

    while (v14);

    v7 = v37;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v35 = sub_231507748(v36, v16, &qword_27DD5B188, &unk_231588590, sub_231508F88);

  swift_unknownObjectRelease();
  v34 = 1;
LABEL_36:
  *a1 = v35;
  *(a1 + 8) = v34;
}

uint64_t ForegroundAppSignal.deinit()
{

  return v0;
}

uint64_t ForegroundAppSignal.__deallocating_deinit()
{
  ForegroundAppSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_231507FFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
  v39 = v4;
  v6 = sub_231586AD4();
  if (!v5[2])
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v38 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_1_19();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v16;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_9_0();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_9_11();
    v3 = v2;
    if (v36 != v37)
    {
      OUTLINED_FUNCTION_7_17(v35);
    }

    else
    {
      OUTLINED_FUNCTION_5_13(v35);
    }

    v5[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = v15 | (v7 << 6);
    v20 = (v5[6] + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v5[7] + 8 * v19);
    if ((v39 & 1) == 0)
    {
    }

    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    OUTLINED_FUNCTION_4_15();
    if (((v26 << v25) & ~v14[v24]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_3_15();
LABEL_20:
    OUTLINED_FUNCTION_12_0();
    *(v14 + v31) |= v32;
    v34 = (v6[6] + 16 * v33);
    *v34 = v21;
    v34[1] = v22;
    *(v6[7] + 8 * v33) = v23;
    ++v6[2];
    v5 = v38;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_2_18();
  while (++v27 != v29 || (v28 & 1) == 0)
  {
    v30 = v27 == v29;
    if (v27 == v29)
    {
      v27 = 0;
    }

    v28 |= v30;
    if (v14[v27] != -1)
    {
      OUTLINED_FUNCTION_11();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_231508218(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B328, &qword_231589370);
  v30 = v4;
  result = sub_231586AD4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
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
        goto LABEL_34;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      sub_23149BEE0(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v30 & 1) == 0)
    {
    }

    sub_231586D14();
    sub_231586274();

    result = sub_231586D44();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_231508524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B358, &qword_23158B510);
  v41 = v4;
  v6 = sub_231586AD4();
  if (!v5[2])
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v40 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_1_19();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v16;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_9_0();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_9_11();
    v3 = v2;
    if (v38 != v39)
    {
      OUTLINED_FUNCTION_7_17(v37);
    }

    else
    {
      OUTLINED_FUNCTION_5_13(v37);
    }

    v5[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = v15 | (v7 << 6);
    v20 = (v5[6] + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (v5[7] + 16 * v19);
    v24 = v23[1];
    v42 = *v23;
    if ((v41 & 1) == 0)
    {
    }

    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    OUTLINED_FUNCTION_4_15();
    if (((v27 << v26) & ~v14[v25]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_3_15();
LABEL_20:
    OUTLINED_FUNCTION_12_0();
    *(v14 + v32) |= v33;
    v35 = (v6[6] + 16 * v34);
    *v35 = v21;
    v35[1] = v22;
    v36 = (v6[7] + 16 * v34);
    *v36 = v42;
    v36[1] = v24;
    ++v6[2];
    v5 = v40;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_2_18();
  while (++v28 != v30 || (v29 & 1) == 0)
  {
    v31 = v28 == v30;
    if (v28 == v30)
    {
      v28 = 0;
    }

    v29 |= v31;
    if (v14[v28] != -1)
    {
      OUTLINED_FUNCTION_11();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_231508758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
  v33 = v4;
  result = sub_231586AD4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
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
        goto LABEL_34;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_23149BEE0(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v33 & 1) == 0)
    {
    }

    sub_231586D14();
    sub_231586274();
    result = sub_231586D44();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_2315089F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B8A0, &qword_23158B518);
  v51 = v4;
  v6 = sub_231586AD4();
  if (!v5[2])
  {

LABEL_29:
    *v3 = v6;
    return;
  }

  v48 = v3;
  v49 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_1_19();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  v15 = 56;
  v50 = v6;
  if (!v11)
  {
LABEL_4:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v17;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_9_0();
        v53 = v19 & v18;
        goto LABEL_9;
      }
    }

    if (v51)
    {
      OUTLINED_FUNCTION_9_11();
      if (v46 != v47)
      {
        OUTLINED_FUNCTION_7_17(v45);
      }

      else
      {
        OUTLINED_FUNCTION_5_13(v45);
      }

      v5[2] = 0;
    }

    v3 = v48;
    goto LABEL_29;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v11));
    v53 = (v11 - 1) & v11;
LABEL_9:
    v20 = v16 | (v7 << 6);
    v21 = (v5[6] + 16 * v20);
    v22 = v21[1];
    v56 = *v21;
    v23 = (v5[7] + v20 * v15);
    v24 = v23[1];
    v54 = *v23;
    v26 = v23[2];
    v25 = v23[3];
    v27 = v23[5];
    v52 = v23[4];
    v28 = v23[6];
    if ((v51 & 1) == 0)
    {
    }

    v55 = v25;
    v29 = v26;
    v30 = v24;
    sub_231586D14();
    sub_231586274();
    sub_231586D44();
    v6 = v50;
    OUTLINED_FUNCTION_4_15();
    if (((v33 << v32) & ~*(v14 + 8 * v31)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_3_15();
    v35 = v55;
    v36 = v28;
    v37 = v27;
LABEL_20:
    *(v14 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v43 = (v50[6] + 16 * v34);
    *v43 = v56;
    v43[1] = v22;
    v15 = 56;
    v44 = (v50[7] + 56 * v34);
    v11 = v53;
    *v44 = v54;
    v44[1] = v30;
    v44[2] = v29;
    v44[3] = v35;
    v44[4] = v52;
    v44[5] = v37;
    v44[6] = v36;
    ++v50[2];
    v5 = v49;
    if (!v53)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_2_18();
  v35 = v55;
  v36 = v28;
  v37 = v27;
  while (++v38 != v40 || (v39 & 1) == 0)
  {
    v41 = v38 == v40;
    if (v38 == v40)
    {
      v38 = 0;
    }

    v39 |= v41;
    v42 = *(v14 + 8 * v38);
    if (v42 != -1)
    {
      v34 = __clz(__rbit64(~v42)) + (v38 << 6);
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_231508CC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B850, &qword_23158B4E8);
  v37 = v4;
  result = sub_231586AD4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v2;
  v36 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
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
        goto LABEL_34;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_23149BEE0(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = v19[1];
    v38 = *v19;
    v21 = *(v5 + 56) + 16 * v18;
    v22 = *v21;
    v23 = *(v21 + 8);
    if ((v37 & 1) == 0)
    {

      sub_2315074D0(v22, v23);
    }

    sub_231586D14();
    sub_231586274();
    result = sub_231586D44();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v38;
    v32[1] = v20;
    v33 = *(v7 + 56) + 16 * v27;
    *v33 = v22;
    *(v33 + 8) = v23;
    ++*(v7 + 16);
    v5 = v36;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_231508F88(uint64_t a1, uint64_t a2, char a3, void *a4)
{

  v7 = 0;
  v30 = a2;
  v8 = (a1 + 40);
  while (1)
  {
    v9 = *(a1 + 16);
    if (v7 == v9)
    {
LABEL_18:

      swift_bridgeObjectRelease_n();
      return;
    }

    if (v7 >= v9)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_231586C84();
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(a2 + 16);
    if (v7 == v10)
    {
      goto LABEL_18;
    }

    if (v7 >= v10)
    {
      goto LABEL_21;
    }

    v12 = *(v8 - 1);
    v11 = *v8;
    v13 = *(a2 + 8 * v7 + 32);
    v14 = *a4;

    v16 = sub_23149C888(v12, v11);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_22;
    }

    v20 = v15;
    if (v14[3] < v19)
    {
      break;
    }

    if (a3)
    {
      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      sub_231586A74();
      if (v20)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v23 = *a4;
    *(*a4 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v24 = (v23[6] + 16 * v16);
    *v24 = v12;
    v24[1] = v11;
    *(v23[7] + 8 * v16) = v13;
    v25 = v23[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_23;
    }

    v23[2] = v27;
    v8 += 2;
    ++v7;
    a3 = 1;
    a2 = v30;
  }

  sub_231507FFC(v19, a3 & 1);
  v21 = sub_23149C888(v12, v11);
  if ((v20 & 1) != (v22 & 1))
  {
    goto LABEL_24;
  }

  v16 = v21;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v28 = swift_allocError();
  swift_willThrow();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_25:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

void sub_2315092A8(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_231586C84();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 8);
    v8 = *i;
    v9 = *a3;

    v11 = sub_231574C34(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B870, &qword_23158B4F8);
      sub_231586A74();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v18[6] + v11) = v7;
    *(v18[7] + 8 * v11) = v8;
    v19 = v18[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v18[2] = v21;
    ++v5;
    a2 = 1;
  }

  sub_231508218(v14, a2 & 1);
  v16 = sub_231574C34(v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v22 = swift_allocError();
  swift_willThrow();

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

void sub_23150956C(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_231586C84();
      __break(1u);
      goto LABEL_21;
    }

    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_23149C888(v8, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_18;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      sub_231586A74();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v8;
    v20[1] = v7;
    *(v19[7] + 8 * v12) = v9;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_19;
    }

    v19[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_231508758(v15, a2 & 1);
  v17 = sub_23149C888(v8, v7);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_20;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_21:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

void sub_231509844(uint64_t a1, uint64_t a2, char a3, void *a4)
{

  v7 = 0;
  v8 = (a1 + 40);
  while (1)
  {
    v9 = *(a1 + 16);
    if (v7 == v9)
    {
LABEL_18:

      swift_bridgeObjectRelease_n();
      return;
    }

    if (v7 >= v9)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_231586C84();
      __break(1u);
      goto LABEL_24;
    }

    v10 = *(a2 + 16);
    if (v7 == v10)
    {
      goto LABEL_18;
    }

    if (v7 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v8 - 1);
    v11 = *v8;
    v13 = a2;
    v14 = *(a2 + 8 * v7 + 32);
    v15 = *a4;

    v17 = sub_23149C888(v12, v11);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_21;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (a3)
    {
      if (v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      sub_231586A74();
      if (v21)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v24 = *a4;
    *(*a4 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v12;
    v25[1] = v11;
    *(v24[7] + 8 * v17) = v14;
    v26 = v24[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_22;
    }

    v24[2] = v28;
    v8 += 2;
    ++v7;
    a3 = 1;
    a2 = v13;
  }

  sub_231508758(v20, a3 & 1);
  v22 = sub_23149C888(v12, v11);
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_23;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v29 = swift_allocError();
  swift_willThrow();
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_24:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

void sub_231509B70(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 32)
  {
    if (v27 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_231586C84();
      __break(1u);
      goto LABEL_23;
    }

    v6 = *i;
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *(i - 3);

    sub_2315074D0(v8, v6);
    if (!v7)
    {
      goto LABEL_17;
    }

    v29 = v6;
    v10 = *a3;
    v12 = sub_23149C888(v9, v7);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B858, &qword_23158B4F0);
      sub_231586A74();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v9;
    v20[1] = v7;
    v21 = v19[7] + 16 * v12;
    *v21 = v8;
    *(v21 + 8) = v29;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v19[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_231508CC4(v15, a2 & 1);
  v17 = sub_23149C888(v9, v7);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v25 = swift_allocError();
  swift_willThrow();

  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2314D70F4(v8, v29);

    return;
  }

LABEL_23:
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000001BLL, 0x80000002315913A0);
  sub_231586A54();
  MEMORY[0x23192FF80](39, 0xE100000000000000);
  sub_231586AA4();
  __break(1u);
}

uint64_t *sub_231509E78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2315868E4();
  OUTLINED_FUNCTION_17_6(v10, v11, v12, v13, v14, v15, v16, v17, v118, v125, v132, v140, v148, v154, v158, v165, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, *(&v174 + 1), v175, v176, 0x4449656C646E7562, 0xE800000000000000, v178, *(&v178 + 1), v179, v180, *(&v180 + 1), v181, v182, v183);
  v18 = sub_2314D5E98(v186);
  if (!v184)
  {
    sub_2314CC1C4(&v183, &qword_27DD5B218, &unk_23158A010);
LABEL_7:
    if (qword_280D70420 != -1)
    {
      goto LABEL_100;
    }

    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_8_9(v18, v19, v20, MEMORY[0x277D837D0], v21, v22, v23, v24, v119, v126, v133, v141, v149, v155, v159, v166, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, *(&v174 + 1), v175, v176, v177, *(&v177 + 1), v178, *(&v178 + 1), v179, v180, *(&v180 + 1), v181, v182, v183) & 1) == 0)
  {
    goto LABEL_7;
  }

  v25 = v177;

  v26 = sub_2315868E4();
  OUTLINED_FUNCTION_17_6(v26, v27, v28, v29, v30, v31, v32, v33, v120, v127, v134, v142, v150, v155, v160, v167, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, *(&v174 + 1), v175, v176, a2, a3, v178, *(&v178 + 1), v179, v180, *(&v180 + 1), v181, v182, v183);
  v34 = sub_2314D5E98(v186);
  if (OUTLINED_FUNCTION_8_9(v34, v35, v36, MEMORY[0x277D839F8], v37, v38, v39, v40, v121, v128, v135, v143, v151, v156, v161, v168, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, *(&v174 + 1), v175, v176, v177, *(&v177 + 1), v178, *(&v178 + 1), v179, v180, *(&v180 + 1), v181, v182, v183))
  {

    v41 = sub_2315868E4();
    OUTLINED_FUNCTION_17_6(v41, v42, v43, v44, v45, v46, v47, v48, v122, v129, v136, v144, v152, v155, v162, v169, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, *(&v174 + 1), v175, v176, a4, a5, v178, *(&v178 + 1), v179, v180, *(&v180 + 1), v181, v182, v183);
    v49 = sub_2314D5E98(v186);
    if (OUTLINED_FUNCTION_8_9(v49, v50, v51, MEMORY[0x277D839B0], v52, v53, v54, v55, v123, v130, v137, v145, v153, v157, v163, v170, v171, *(&v171 + 1), v172, *(&v172 + 1), v173, v174, *(&v174 + 1), v175, v176, v177, *(&v177 + 1), v178, *(&v178 + 1), v179, v180, *(&v180 + 1), v181, v182, v183))
    {
      return v25;
    }

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v100 = sub_231585FF4();
    __swift_project_value_buffer(v100, qword_280D72248);

    v101 = sub_231585FE4();
    v102 = sub_2315865E4();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      *v103 = 136315394;
      v104 = sub_2314A22E8();
      OUTLINED_FUNCTION_20_6(v104);
      v105 = MEMORY[0x277D84F90];
      if (v25)
      {
        v139 = v102;
        v147 = v101;
        v106 = OUTLINED_FUNCTION_9_12();
        sub_23152D7D4(v106, v25, 0);
        v105 = v189;
        v107 = sub_23156C5C8();
        v109 = v108;
        OUTLINED_FUNCTION_4_8();
        while ((v107 & 0x8000000000000000) == 0)
        {
          OUTLINED_FUNCTION_13_6();
          if (v71 == v72)
          {
            break;
          }

          OUTLINED_FUNCTION_3_9();
          if (v73)
          {
            goto LABEL_102;
          }

          if (*(a1 + 36) != v109)
          {
            goto LABEL_103;
          }

          OUTLINED_FUNCTION_18_6();
          OUTLINED_FUNCTION_22_6();
          OUTLINED_FUNCTION_7_8();
          sub_2314D6070(v25 + 5, v185);
          sub_2314D89D4(&v183, &v177);
          v171 = v177;
          v172 = v178;
          v173 = v179;
          sub_2314D6070(&v180, &v174);
          sub_2314D6014(&v171, v188);
          v25 = &qword_27DD5B338;
          sub_2314CC1C4(&v171, &qword_27DD5B338, &qword_231589660);
          sub_2314CC1C4(&v183, &qword_27DD5B338, &qword_231589660);
          OUTLINED_FUNCTION_19_5();
          if (v93)
          {
            v115 = OUTLINED_FUNCTION_12_7(v110);
            sub_23152D7D4(v115, &qword_27DD5B338, 1);
            v105 = v189;
          }

          *(v105 + 16) = &qword_27DD5B338;
          OUTLINED_FUNCTION_3_16(v105 + 40 * &qword_231589660);
          OUTLINED_FUNCTION_21_5();
          if (v71 == v72)
          {
            goto LABEL_104;
          }

          OUTLINED_FUNCTION_11_10();
          if (v73)
          {
            goto LABEL_105;
          }

          if (*(a1 + 36) != v109)
          {
            goto LABEL_106;
          }

          OUTLINED_FUNCTION_6_9();
          if (v73)
          {
            OUTLINED_FUNCTION_2_0();
            while (v114 < v113)
            {
              OUTLINED_FUNCTION_14_5();
              if (a1)
              {
                OUTLINED_FUNCTION_5_14();
                v25 = (__clz(__rbit64(a1)) + a4);
                goto LABEL_81;
              }
            }

            OUTLINED_FUNCTION_5_14();
          }

          else
          {
            OUTLINED_FUNCTION_10_9();
            v25 = (v111 | v112);
          }

LABEL_81:
          OUTLINED_FUNCTION_15_5();
          if (v73)
          {
            v101 = v147;
            v102 = v139;
            goto LABEL_84;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

LABEL_84:
      MEMORY[0x231930080](v105, MEMORY[0x277D84030]);

      v116 = sub_2314A22E8();

      *(v103 + 14) = v116;
      _os_log_impl(&dword_231496000, v101, v102, "ForegroundBundleIdInFocus: missing an expected column %s in: %s", v103, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    return 0;
  }

  if (qword_280D70420 != -1)
  {
LABEL_107:
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v83 = sub_231585FF4();
  __swift_project_value_buffer(v83, qword_280D72248);

  v84 = sub_231585FE4();
  a4 = sub_2315865E4();

  if (os_log_type_enabled(v84, a4))
  {
    v85 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    *v85 = 136315394;
    v86 = sub_2314A22E8();
    OUTLINED_FUNCTION_20_6(v86);
    v87 = MEMORY[0x277D84F90];
    if (v25)
    {
      v88 = OUTLINED_FUNCTION_9_12();
      sub_23152D7D4(v88, v25, 0);
      v87 = v189;
      v89 = sub_23156C5C8();
      v91 = v90;
      OUTLINED_FUNCTION_4_8();
      while ((v89 & 0x8000000000000000) == 0)
      {
        OUTLINED_FUNCTION_13_6();
        if (v71 == v72)
        {
          break;
        }

        OUTLINED_FUNCTION_3_9();
        if (v73)
        {
          goto LABEL_95;
        }

        if (*(a1 + 36) != v91)
        {
          goto LABEL_96;
        }

        OUTLINED_FUNCTION_18_6();
        OUTLINED_FUNCTION_22_6();
        OUTLINED_FUNCTION_7_8();
        sub_2314D6070(v25 + 5, v185);
        sub_2314D89D4(&v183, &v177);
        v171 = v177;
        v172 = v178;
        v173 = v179;
        sub_2314D6070(&v180, &v174);
        sub_2314D6014(&v171, v188);
        v25 = &qword_27DD5B338;
        sub_2314CC1C4(&v171, &qword_27DD5B338, &qword_231589660);
        sub_2314CC1C4(&v183, &qword_27DD5B338, &qword_231589660);
        OUTLINED_FUNCTION_19_5();
        if (v93)
        {
          v98 = OUTLINED_FUNCTION_12_7(v92);
          sub_23152D7D4(v98, &qword_27DD5B338, 1);
          v87 = v189;
        }

        *(v87 + 16) = &qword_27DD5B338;
        OUTLINED_FUNCTION_3_16(v87 + 40 * &qword_231589660);
        OUTLINED_FUNCTION_21_5();
        if (v71 == v72)
        {
          goto LABEL_97;
        }

        OUTLINED_FUNCTION_11_10();
        if (v73)
        {
          goto LABEL_98;
        }

        if (*(a1 + 36) != v91)
        {
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_6_9();
        if (v73)
        {
          OUTLINED_FUNCTION_2_0();
          while (v97 < v96)
          {
            OUTLINED_FUNCTION_14_5();
            if (a1)
            {
              OUTLINED_FUNCTION_5_14();
              v25 = (__clz(__rbit64(a1)) + a4);
              goto LABEL_54;
            }
          }

          OUTLINED_FUNCTION_5_14();
        }

        else
        {
          OUTLINED_FUNCTION_10_9();
          v25 = (v94 | v95);
        }

LABEL_54:
        OUTLINED_FUNCTION_15_5();
        if (v73)
        {
          goto LABEL_56;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
LABEL_8:
        v56 = sub_231585FF4();
        __swift_project_value_buffer(v56, qword_280D72248);

        v57 = sub_231585FE4();
        v58 = sub_2315865E4();

        if (!os_log_type_enabled(v57, v58))
        {
          break;
        }

        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v61 = v60;
        v190 = v60;
        *v59 = 136315138;
        v62 = *(a1 + 16);
        v63 = MEMORY[0x277D84F90];
        if (!v62)
        {
LABEL_30:
          MEMORY[0x231930080](v63, MEMORY[0x277D84030]);

          v82 = sub_2314A22E8();

          *(v59 + 4) = v82;
          _os_log_impl(&dword_231496000, v57, v58, "ForegroundBundleIdInFocus: missing an expected column bundleID in: %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v61);
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_10();
          break;
        }

        v124 = v60;
        v131 = v59;
        v138 = v58;
        v146 = v57;
        v64 = OUTLINED_FUNCTION_9_12();
        sub_23152D7D4(v64, v62, 0);
        v63 = v189;
        v65 = sub_23156C5C8();
        v67 = v66;
        v69 = v68;
        v70 = 0;
        v164 = v62;
        OUTLINED_FUNCTION_4_8();
        while ((v65 & 0x8000000000000000) == 0)
        {
          OUTLINED_FUNCTION_13_6();
          if (v71 == v72)
          {
            break;
          }

          OUTLINED_FUNCTION_3_9();
          if (v73)
          {
            goto LABEL_89;
          }

          if (*(a1 + 36) != v67)
          {
            goto LABEL_90;
          }

          OUTLINED_FUNCTION_18_6();
          sub_2314A24F0(*(a1 + 56) + 32 * v65, v187);
          OUTLINED_FUNCTION_7_8();
          sub_2314D6070(v187, v185);
          sub_2314D89D4(&v183, &v177);
          v171 = v177;
          v172 = v178;
          v173 = v179;
          sub_2314D6070(&v180, &v174);
          sub_2314D6014(&v171, v188);
          sub_2314CC1C4(&v171, &qword_27DD5B338, &qword_231589660);
          sub_2314CC1C4(&v183, &qword_27DD5B338, &qword_231589660);
          v189 = v63;
          v74 = a1;
          a1 = *(v63 + 16);
          v75 = *(v63 + 24);
          if (a1 >= v75 >> 1)
          {
            v81 = OUTLINED_FUNCTION_12_7(v75);
            sub_23152D7D4(v81, a1 + 1, 1);
            v63 = v189;
          }

          *(v63 + 16) = a1 + 1;
          OUTLINED_FUNCTION_3_16(v63 + 40 * a1);
          v76 = 1 << *(v74 + 32);
          if (v65 >= v76)
          {
            goto LABEL_91;
          }

          OUTLINED_FUNCTION_11_10();
          if (v73)
          {
            goto LABEL_92;
          }

          a1 = v74;
          if (*(v74 + 36) != v67)
          {
            goto LABEL_93;
          }

          OUTLINED_FUNCTION_6_9();
          if (v73)
          {
            OUTLINED_FUNCTION_2_0();
            while (v80 < v79)
            {
              OUTLINED_FUNCTION_14_5();
              if (v74)
              {
                sub_2314ABA68(v65, v67, v69 & 1);
                v76 = __clz(__rbit64(v74)) + a4;
                goto LABEL_28;
              }
            }

            sub_2314ABA68(v65, v67, v69 & 1);
          }

          else
          {
            OUTLINED_FUNCTION_10_9();
            v76 = v77 | v78;
          }

LABEL_28:
          v69 = 0;
          ++v70;
          v65 = v76;
          v67 = v155;
          if (v70 == v164)
          {
            v57 = v146;
            v58 = v138;
            v61 = v124;
            v59 = v131;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
      }

      return 0;
    }

LABEL_56:
    MEMORY[0x231930080](v87, MEMORY[0x277D84030]);

    v99 = sub_2314A22E8();

    *(v85 + 14) = v99;
    _os_log_impl(&dword_231496000, v84, a4, "ForegroundBundleIdInFocus: missing an expected column %s in: %s", v85, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  return 0;
}

uint64_t sub_23150A9F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a7 != a8)
    {
      v14 = 0;
      return v14 & 1;
    }

    goto LABEL_9;
  }

  v13 = sub_231586C44();
  v14 = 0;
  if ((v13 & 1) != 0 && a7 == a8)
  {
LABEL_9:
    v14 = a3 ^ a6 ^ 1;
  }

  return v14 & 1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23150AB24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_23150AB64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23150ABBC()
{
  result = qword_27DD5B8B0[0];
  if (!qword_27DD5B8B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD5B8B0);
  }

  return result;
}

uint64_t sub_23150AC30()
{
  result = sub_231586964();
  qword_280D6CE48 = result;
  unk_280D6CE50 = v1;
  return result;
}

uint64_t static ForegroundWarmAppSignal.signalName.getter()
{
  if (qword_280D6CE40 != -1)
  {
    OUTLINED_FUNCTION_0_49(&qword_280D6CE40);
  }

  v0 = qword_280D6CE48;

  return v0;
}

uint64_t ForegroundWarmAppSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23150ACEC@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  if (qword_280D6CE40 != -1)
  {
    OUTLINED_FUNCTION_0_49(&qword_280D6CE40);
  }

  v6 = unk_280D6CE50;
  *a3 = qword_280D6CE48;
  a3[1] = v6;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(v8 + 8);

  a3[2] = v9(v7, v8);
  v10 = v9(v7, v8);
  type metadata accessor for BiomeQueriesAppInFocus();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_2314D62B4(a2, v11 + 24);
  a3[3] = v11;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static ForegroundWarmAppSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23150B30C(v3, v1, v2);
}

uint64_t static ForegroundWarmAppSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284611FC0);
  *a1 = result;
  return result;
}

uint64_t ForegroundWarmAppSignal.value(completion:)(void (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = sub_2314CCBB0();
  if (v4)
  {
    v5 = v4;
    v26 = a1;
    v6 = sub_2315860F4();
    v7 = 0;
    v28 = v3;
    v29 = *(v3 + 16);
    v8 = (v3 + 40);
    v27 = v5;
    while (1)
    {
      if (v29 == v7)
      {

        v30 = v6;
        v31 = 1;
        v26(&v30);
        return sub_2314A5EEC(v30, v31);
      }

      if (v7 >= *(v3 + 16))
      {
        break;
      }

      v10 = *(v8 - 1);
      v9 = *v8;
      v11 = *(v5 + 16);

      v14 = v11 && (v12 = sub_23149C888(v10, v9), (v13 & 1) != 0) && *(*(v5 + 56) + 8 * v12) == 2;
      swift_isUniquelyReferenced_nonNull_native();
      v30 = v6;
      v15 = sub_23149C888(v10, v9);
      if (__OFADD__(v6[2], (v16 & 1) == 0))
      {
        goto LABEL_22;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v19 = sub_23149C888(v10, v9);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_24;
        }

        v17 = v19;
      }

      v6 = v30;
      if (v18)
      {
        *(*(v30 + 56) + 8 * v17) = v14;
      }

      else
      {
        *(v30 + 8 * (v17 >> 6) + 64) |= 1 << v17;
        v21 = (v6[6] + 16 * v17);
        *v21 = v10;
        v21[1] = v9;
        *(v6[7] + 8 * v17) = v14;
        v22 = v6[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_23;
        }

        v6[2] = v24;
      }

      v8 += 2;
      ++v7;
      v5 = v27;
      v3 = v28;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_231586C84();
    __break(1u);
  }

  else
  {
    v30 = -1;
    v31 = 0;
    return (a1)(&v30);
  }

  return result;
}

uint64_t sub_23150B0C8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23150B30C(v3, v1, v2);
}

uint64_t _s11SiriSignals23ForegroundWarmAppSignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v7[3] = &type metadata for NoParameters;
  v7[4] = &protocol witness table for NoParameters;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  sub_2314A2C74(v7, v6);
  v4 = &type metadata for BiomeSQLQueryResultProvider;
  v5 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v0 + 56) = &type metadata for ForegroundWarmAppSignal;
  *(v0 + 64) = &protocol witness table for ForegroundWarmAppSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  sub_23150ACEC(v6, &v3, (v1 + 16));
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v0;
}

uint64_t sub_23150B1F8(_OWORD *a1)
{
  v12[3] = &type metadata for SignalComputationContext;
  v12[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v12[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231588340;
  sub_2314A2C74(v12, v11);
  v9 = &type metadata for BiomeSQLQueryResultProvider;
  v10 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v4 + 56) = &type metadata for ForegroundWarmAppSignal;
  *(v4 + 64) = &protocol witness table for ForegroundWarmAppSignal;
  v5 = swift_allocObject();
  *(v4 + 32) = v5;
  sub_2314B5008(a1, v7);
  sub_23150ACEC(v11, &v8, (v5 + 16));
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v4;
}

uint64_t sub_23150B30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = a2;
  v13[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_231588340;
  sub_2314A2C74(v13, v12);
  v10 = &type metadata for BiomeSQLQueryResultProvider;
  v11 = &protocol witness table for BiomeSQLQueryResultProvider;
  *(v6 + 56) = &type metadata for ForegroundWarmAppSignal;
  *(v6 + 64) = &protocol witness table for ForegroundWarmAppSignal;
  v7 = swift_allocObject();
  *(v6 + 32) = v7;
  sub_23150ACEC(v12, &v9, (v7 + 16));
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v6;
}

uint64_t sub_23150B41C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_17();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_17();
  type metadata accessor for GetOnce.RunState(0, *(v5 + 80), v6, v7);
  OUTLINED_FUNCTION_8();
  return (*(v8 + 16))(a1, v1 + v4);
}

double sub_23150B4B8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_17();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_17();
  type metadata accessor for GetOnce.RunState(0, *(v5 + 80), v6, v7);
  OUTLINED_FUNCTION_8();
  (*(v8 + 40))(v1 + v4, a1);
  swift_endAccess();
  return result;
}

double sub_23150B55C()
{
  OUTLINED_FUNCTION_0_50();
  swift_beginAccess();

  return result;
}

uint64_t GetOnce.__allocating_init(queue:valueGetter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  GetOnce.init(queue:valueGetter:)(a1, a2, a3);
  return v6;
}

void *GetOnce.init(queue:valueGetter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(v3 + *(*v3 + 96), 1, 2, *(*v3 + 80));
  OUTLINED_FUNCTION_0_50();
  v8 = *(v7 + 104);
  swift_getFunctionTypeMetadata1();
  *(v3 + v8) = sub_2315860B4();
  v3[2] = a2;
  v3[3] = a3;
  OUTLINED_FUNCTION_0_50();
  *(v3 + *(v9 + 112)) = a1;
  return v3;
}

uint64_t sub_23150B6CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_231586024();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_231586064();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_23150BCE4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23149B484;
  aBlock[3] = &block_descriptor_8;
  v19 = _Block_copy(aBlock);

  sub_231586054();
  v21[1] = MEMORY[0x277D84F90];
  sub_2314BCC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
  sub_2314BCC5C();
  sub_2315867C4();
  MEMORY[0x231930370](0, v17, v11, v19);
  _Block_release(v19);
  (*(v8 + 8))(v11, v6);
  (*(v14 + 8))(v17, v12);
}

double sub_23150B954(void *a1, void (*a2)(_BYTE *), uint64_t a3)
{
  v6 = *(*a1 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v25 - v8;
  v12 = type metadata accessor for GetOnce.RunState(0, v6, v10, v11);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_23150B41C(&v25 - v16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 2, v6);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      v19 = swift_allocObject();
      v19[2] = v6;
      v19[3] = a2;
      v19[4] = a3;
      v26 = sub_23150CA88;
      v27 = v19;
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_231586454();

      sub_231586414();
      swift_endAccess();
      __swift_storeEnumTagSinglePayload(v15, 2, 2, v6);
      sub_23150B4B8(v15);
      v20 = a1[2];
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v6;
      *(v22 + 24) = v21;

      v20(sub_23150CA44, v22);
    }

    else
    {
      v24 = swift_allocObject();
      v24[2] = v6;
      v24[3] = a2;
      v24[4] = a3;
      v26 = sub_23150CA1C;
      v27 = v24;
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_231586454();

      sub_231586414();
      swift_endAccess();
    }
  }

  else
  {
    (*(v7 + 32))(v9, v17, v6);
    a2(v9);
    (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_23150BCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_231586024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231586064();
  v24 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v22 = *(result + *(*result + 112));
    (*(v12 + 16))(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    v16 = *(v12 + 80);
    v23 = v8;
    v17 = v5;
    v18 = (v16 + 32) & ~v16;
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = v15;
    (*(v12 + 32))(v19 + v18, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    aBlock[4] = sub_23150CA4C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23149B484;
    aBlock[3] = &block_descriptor_19_0;
    v20 = _Block_copy(aBlock);

    sub_231586054();
    v26 = MEMORY[0x277D84F90];
    sub_2314BCC04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
    sub_2314BCC5C();
    v21 = v25;
    sub_2315867C4();
    MEMORY[0x231930370](0, v11, v21, v20);
    _Block_release(v20);
    (*(v6 + 8))(v21, v17);
    (*(v24 + 8))(v11, v23);
  }

  return result;
}

void sub_23150C074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a1 + 80);
  v6 = type metadata accessor for GetOnce.RunState(0, v5, a3, a4);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  (*(*(v5 - 8) + 16))(&v15 - v7, a2, v5);
  __swift_storeEnumTagSinglePayload(v8, 0, 2, v5);
  sub_23150B4B8(v8);
  sub_23150B55C();
  v10 = v9;
  swift_getFunctionTypeMetadata1();
  v11 = sub_231586394();
  v16 = v11;
  if (v11 == sub_231586424())
  {
LABEL_4:

    swift_beginAccess();
    sub_231586454();
    sub_231586444();
    swift_endAccess();
  }

  else
  {
    while (1)
    {
      v12 = sub_2315863F4();
      sub_2315863B4();
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = *(v10 + 32 + 16 * v11);

      sub_231586434();
      v13(a2);

      v14 = sub_231586424();
      v11 = v16;
      if (v16 == v14)
      {
        goto LABEL_4;
      }
    }

    sub_231586974();
    __break(1u);
  }
}

char *GetOnce.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_0_50();
  v3 = *(v2 + 96);
  type metadata accessor for GetOnce.RunState(0, *(v1 + 80), v4, v5);
  OUTLINED_FUNCTION_8();
  (*(v6 + 8))(&v0[v3]);
  OUTLINED_FUNCTION_0_50();

  OUTLINED_FUNCTION_0_50();

  return v0;
}

uint64_t GetOnce.__deallocating_deinit()
{
  GetOnce.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23150C3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for GetOnce.RunState(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23150C4F0(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_23150C54C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
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

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 > v6)
  {
    v12 = 8 * v7;
    if (v7 <= 3)
    {
      v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v7);
        if (!v13)
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_30;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_30:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_31;
      }
    }

    v13 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_30;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v7 > 3)
    {
      v15 = 0;
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

    return v6 + (v7 | v15) + 1;
  }

LABEL_31:
  if (!v5)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  v17 = EnumTagSinglePayload >= 2;
  result = EnumTagSinglePayload - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_23150C714(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v7 - 2;
  }

  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v13 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    v10 = v12 + v8;
  }

  v15 = 8 * v10;
  v16 = a3 >= v11;
  v17 = a3 - v11;
  if (v17 != 0 && v16)
  {
    if (v10 <= 3)
    {
      v21 = ((v17 + ~(-1 << v15)) >> v15) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v11 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_38;
        }

        break;
      case 3:
LABEL_64:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_37;
      default:
LABEL_37:
        if (a2)
        {
LABEL_38:
          if (a2 + 2 <= v7)
          {
            v28 = a2 + 2;

            __swift_storeEnumTagSinglePayload(a1, v28, v7, v6);
          }

          else
          {
            v24 = -1 << v9;
            if (v8 <= 3)
            {
              v25 = ~v24;
            }

            else
            {
              v25 = -1;
            }

            if (v8)
            {
              v26 = v25 & (a2 - v7 + 1);
              if (v8 <= 3)
              {
                v27 = v8;
              }

              else
              {
                v27 = 4;
              }

              bzero(a1, v8);
              switch(v27)
              {
                case 2:
                  *a1 = v26;
                  break;
                case 3:
                  *a1 = v26;
                  a1[2] = BYTE2(v26);
                  break;
                case 4:
                  *a1 = v26;
                  break;
                default:
                  *a1 = v26;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v11 + a2;
    if (v10 < 4)
    {
      v20 = (v19 >> v15) + 1;
      if (v10)
      {
        v23 = v19 & ~(-1 << v15);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v10 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v10] = v20;
        break;
      case 2:
        *&a1[v10] = v20;
        break;
      case 3:
        goto LABEL_64;
      case 4:
        *&a1[v10] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_23150CAA4()
{
  result = sub_231586964();
  qword_280D6D4F0 = result;
  unk_280D6D4F8 = v1;
  return result;
}

uint64_t static HashedLocationSignal.signalName.getter()
{
  if (qword_280D6D4E8 != -1)
  {
    OUTLINED_FUNCTION_0_51();
    swift_once();
  }

  v0 = qword_280D6D4F0;

  return v0;
}

uint64_t HashedLocationSignal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static HashedLocationSignal.id(using:)(char *a1)
{
  if (qword_280D6D4E8 != -1)
  {
    OUTLINED_FUNCTION_0_51();
    swift_once();
  }

  MEMORY[0x23192FF80](qword_280D6D4F0, unk_280D6D4F8);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  sub_231586A54();
  return 0;
}

void *sub_23150CC08@<X0>(void *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (result)
  {
    sub_2314E4E9C([result *off_27890AE70[a2]]);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 5381;
      v7 = 32;
      do
      {
        v6 = 33 * v6 + *(v4 + v7);
        v7 += 4;
        --v5;
      }

      while (v5);

      v8 = v6;
    }

    else
    {

      v8 = 5381;
    }
  }

  else
  {
    v8 = -1;
  }

  *a3 = v8;
  *(a3 + 8) = 0;
  return result;
}

uint64_t static HashedLocationSignal.instances(with:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_23150D238();
}

SiriSignals::HashedLocationSignal::Granularity_optional __swiftcall HashedLocationSignal.Granularity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231586B04();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HashedLocationSignal.Granularity.rawValue.getter()
{
  v1 = 0x303035326DLL;
  if (*v0 != 1)
  {
    v1 = 0x3635316D6BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 808465261;
  }
}

uint64_t sub_23150CDDC@<X0>(uint64_t *a1@<X8>)
{
  result = HashedLocationSignal.Granularity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23150CE34(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_23150D238();
}

uint64_t _s11SiriSignals20HashedLocationSignalV9instancesSayAA0E9Providing_pGyFZ_0()
{
  OUTLINED_FUNCTION_3_18();
  v1 = 0;
  v2 = v16;
  do
  {
    v3 = byte_284610660[v1 + 32];
    v4 = [BiomeLibrary() Location];
    swift_unknownObjectRelease();
    v5 = [v4 HashedCoordinates];
    swift_unknownObjectRelease();
    *&v12 = 0;
    *(&v12 + 1) = 0xE000000000000000;
    if (qword_280D6D4E8 != -1)
    {
      OUTLINED_FUNCTION_0_51();
      swift_once();
    }

    MEMORY[0x23192FF80](qword_280D6D4F0, unk_280D6D4F8);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    v15 = v3;
    sub_231586A54();
    v6 = v12;
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_1_20(v7);
    if (v9)
    {
      OUTLINED_FUNCTION_2_19(v8);
      v2 = v16;
    }

    ++v1;
    v13 = &type metadata for HashedLocationSignal;
    v14 = &protocol witness table for HashedLocationSignal;
    v10 = swift_allocObject();
    *&v12 = v10;
    *(v10 + 16) = v6;
    *(v10 + 32) = v5;
    *(v10 + 40) = sub_23150D608;
    *(v10 + 48) = v0;
    *(v2 + 16) = v4;
    sub_23149FD3C(&v12, v2 + 40 * v3 + 32);
  }

  while (v1 != 3);
  return v2;
}

uint64_t sub_23150D064()
{
  OUTLINED_FUNCTION_3_18();
  v1 = 0;
  v2 = v16;
  do
  {
    v3 = byte_284610048[v1 + 32];
    v4 = [BiomeLibrary() Location];
    swift_unknownObjectRelease();
    v5 = [v4 HashedCoordinates];
    swift_unknownObjectRelease();
    *&v12 = 0;
    *(&v12 + 1) = 0xE000000000000000;
    if (qword_280D6D4E8 != -1)
    {
      OUTLINED_FUNCTION_0_51();
      swift_once();
    }

    MEMORY[0x23192FF80](qword_280D6D4F0, unk_280D6D4F8);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    v15 = v3;
    sub_231586A54();
    v6 = v12;
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_1_20(v7);
    if (v9)
    {
      OUTLINED_FUNCTION_2_19(v8);
      v2 = v16;
    }

    ++v1;
    v13 = &type metadata for HashedLocationSignal;
    v14 = &protocol witness table for HashedLocationSignal;
    v10 = swift_allocObject();
    *&v12 = v10;
    *(v10 + 16) = v6;
    *(v10 + 32) = v5;
    *(v10 + 40) = sub_23150D600;
    *(v10 + 48) = v0;
    *(v2 + 16) = v4;
    sub_23149FD3C(&v12, v2 + 40 * v3 + 32);
  }

  while (v1 != 3);
  return v2;
}

uint64_t sub_23150D238()
{
  v15 = MEMORY[0x277D84F90];
  sub_23152D5B8(0, 3, 0);
  v0 = 0;
  v1 = v15;
  do
  {
    v2 = byte_284610248[v0 + 32];
    v3 = [BiomeLibrary() Location];
    swift_unknownObjectRelease();
    v4 = [v3 HashedCoordinates];
    swift_unknownObjectRelease();
    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    if (qword_280D6D4E8 != -1)
    {
      swift_once();
    }

    MEMORY[0x23192FF80](qword_280D6D4F0, unk_280D6D4F8);
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    v14 = v2;
    sub_231586A54();
    v5 = v11;
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    v15 = v1;
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_23152D5B8(v7 > 1, v8 + 1, 1);
      v1 = v15;
    }

    ++v0;
    v12 = &type metadata for HashedLocationSignal;
    v13 = &protocol witness table for HashedLocationSignal;
    v9 = swift_allocObject();
    *&v11 = v9;
    *(v9 + 16) = v5;
    *(v9 + 32) = v4;
    *(v9 + 40) = sub_23150D608;
    *(v9 + 48) = v6;
    *(v1 + 16) = v8 + 1;
    sub_23149FD3C(&v11, v1 + 40 * v8 + 32);
  }

  while (v0 != 3);
  return v1;
}

unint64_t sub_23150D458()
{
  result = qword_27DD5B9B8;
  if (!qword_27DD5B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B9B8);
  }

  return result;
}

unint64_t sub_23150D4B0()
{
  result = qword_27DD5B9C0;
  if (!qword_27DD5B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B9C8, &qword_23158B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B9C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HashedLocationSignal.Granularity(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23150D60C(uint64_t a1)
{
  if (qword_280D6C6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_280D72130;
  if (*(qword_280D72130 + 16) && (v3 = sub_231574DAC(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + v3);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865D4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a1;
      _os_log_impl(&dword_231496000, v7, v8, "Unable to map the requested media type: %ld to a supported media category", v9, 0xCu);
      MEMORY[0x231931280](v9, -1, -1);
    }

    return 5;
  }

  return v5;
}