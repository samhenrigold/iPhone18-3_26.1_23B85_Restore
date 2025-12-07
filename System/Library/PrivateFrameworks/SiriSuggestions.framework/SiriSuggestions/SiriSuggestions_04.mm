uint64_t sub_231227F0C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DefaultAllOwnerConfigsLoader();
  v3 = swift_allocObject();
  v4 = type metadata accessor for DefaultOwnerConfigLoader();
  result = swift_allocObject();
  v3[5] = v4;
  v3[6] = &off_2845F3FA8;
  v3[2] = result;
  a1[3] = v2;
  a1[4] = &off_2845F3F88;
  *a1 = v3;
  return result;
}

void sub_231227FCC()
{
  OUTLINED_FUNCTION_21_0();
  v104 = v1;
  v100 = v0;
  v3 = v2;
  v105[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v102 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  v9 = v8 - v7;
  v10 = sub_231367890();
  OUTLINED_FUNCTION_0_0();
  v101 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v103 = v13;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  v88 = &v87 - v15;
  OUTLINED_FUNCTION_18();
  v16 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v87 - v24;
  if (sub_2312257EC())
  {
    v99 = v25;
    v26 = [objc_opt_self() defaultManager];
    v27 = sub_2313665F0();
    v105[0] = 0;
    v28 = [v26 contentsOfDirectoryAtURL:v27 includingPropertiesForKeys:0 options:4 error:v105];

    v29 = v105[0];
    if (v28)
    {
      v30 = v16;
      v31 = sub_23136A1A0();
      v32 = v29;

      v33 = sub_231369EC0();
      v34 = 0;
      v35 = *(v31 + 16);
      v36 = v18;
      v95 = v31;
      v96 = v18 + 16;
      v97 = v18 + 8;
      v98 = v35;
      v90 = v101 + 32;
      v91 = v16;
      v93 = v101 + 8;
      v94 = (v101 + 16);
      v89 = v101 + 40;
      v37 = v99;
      v38 = v88;
      v92 = v18;
      while (1)
      {
        if (v98 == v34)
        {

          sub_231367CF0();
          swift_allocObject();
          sub_231367CD0();
          goto LABEL_22;
        }

        if (v34 >= *(v31 + 16))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
        }

        v39 = v10;
        OUTLINED_FUNCTION_35_0();
        v41 = *(v36 + 72);
        v102 = v42;
        (*(v36 + 16))(v37, v31 + v40 + v41 * v42, v30);
        v43 = v100[5];
        v44 = v100[6];
        __swift_project_boxed_opaque_existential_1(v100 + 2, v43);
        v45 = v104;
        (*(v44 + 8))(v37, v43, v44);
        if (v45)
        {
          v85 = OUTLINED_FUNCTION_24_6();
          v86(v85);

          goto LABEL_22;
        }

        v104 = 0;
        v46 = OUTLINED_FUNCTION_24_6();
        v47(v46);
        v48 = sub_231367880();
        v50 = v49;
        v51 = v38;
        (*v94)(v103, v38, v39);
        swift_isUniquelyReferenced_nonNull_native();
        v105[0] = v33;
        v52 = sub_231215F6C(v48, v50);
        if (__OFADD__(v33[2], (v53 & 1) == 0))
        {
          goto LABEL_26;
        }

        v54 = v52;
        v55 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43920, &unk_23136EBB8);
        v56 = v105;
        if (sub_23136A700())
        {
          v56 = v105[0];
          v57 = sub_231215F6C(v48, v50);
          if ((v55 & 1) != (v58 & 1))
          {
            sub_23136A970();
            __break(1u);
            return;
          }

          v54 = v57;
        }

        v10 = v39;
        if (v55)
        {

          v33 = v105[0];
          v59 = OUTLINED_FUNCTION_33_5();
          (v56[5])(v59, v103, v39);
          v60 = OUTLINED_FUNCTION_32_2();
          v61(v60);
        }

        else
        {
          v33 = v105[0];
          *(v105[0] + (v54 >> 6) + 8) |= 1 << v54;
          v62 = (v33[6] + 16 * v54);
          *v62 = v48;
          v62[1] = v50;
          v63 = OUTLINED_FUNCTION_33_5();
          (v56[4])(v63, v103, v39);
          v64 = OUTLINED_FUNCTION_32_2();
          v65(v64);
          v66 = v33[2];
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_27;
          }

          v33[2] = v68;
        }

        v34 = v102 + 1;
        v30 = v91;
        v36 = v92;
        v38 = v51;
        v37 = v99;
        v31 = v95;
      }
    }

    v84 = v105[0];
    sub_231366570();
  }

  else
  {
    sub_231369100();
    (*(v18 + 16))(v22, v3, v16);
    v69 = sub_2313698A0();
    v70 = sub_23136A3B0();
    if (os_log_type_enabled(v69, v70))
    {
      OUTLINED_FUNCTION_60();
      v104 = v4;
      v71 = OUTLINED_FUNCTION_20_6();
      v105[0] = v71;
      *v4 = 136315138;
      OUTLINED_FUNCTION_0_11();
      sub_231228E54(v72, v73, MEMORY[0x277CC9290]);
      v74 = sub_23136A8B0();
      v75 = v18;
      v77 = v76;
      (*(v75 + 8))(v22, v16);
      v78 = sub_2311CFD58(v74, v77, v105);

      *(v4 + 4) = v78;
      _os_log_impl(&dword_2311CB000, v69, v70, "Domain asset should point to a directory, a non-directory url - %s is not expected", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();
      OUTLINED_FUNCTION_6_1();
      MEMORY[0x23192B930]();

      v79 = (*(v102 + 8))(v9, v104);
    }

    else
    {

      (*(v18 + 8))(v22, v16);
      v79 = (*(v102 + 8))(v9, v4);
    }

    v82 = sub_231228DBC(v79, v80, v81);
    OUTLINED_FUNCTION_42_3(&type metadata for OwnerConfigLoaderErrors, v82);
    OUTLINED_FUNCTION_10_8(v83, 9);
  }

  swift_willThrow();
LABEL_22:
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_231228710(uint64_t a1)
{
  sub_231367890();
  v3 = sub_231369EC0();
  v4 = 0;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v5 == v4)
    {
      sub_231367CF0();
      swift_allocObject();
      return sub_231367CD0();
    }

    sub_231366690();
    sub_231227FCC();
    if (v1)
    {
      break;
    }

    v6 = MEMORY[0x231928390]();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v3;
    sub_2312288C4(v6, sub_231228D4C, 0, isUniquelyReferenced_nonNull_native, &v9);

    v3 = v9;
    ++v4;
  }
}

void sub_2312288C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  v8 = sub_231367890();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43918, &qword_23136EBB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (v39 - v12);
  sub_2312B7234();
  v39[2] = v49;
  v41 = v9;
  v14 = (v9 + 32);
  v39[4] = a1;
  sub_231369EE0();
  v39[3] = a3;

  v40 = v8;
  while (1)
  {
    sub_2312B6974();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43910, &qword_2313749B0);
    if (__swift_getEnumTagSinglePayload(v13, 1, v15) == 1)
    {
      sub_2311D3BBC(v48);

      return;
    }

    v16 = *(v15 + 48);
    v18 = v13[1];
    v46 = *v13;
    v17 = v46;
    v47 = v18;
    v19 = *v14;
    v20 = v14;
    (*v14)(v42, v13 + v16, v8);
    v21 = *v43;
    v24 = sub_231215F6C(v17, v18);
    v25 = v21[2];
    v26 = (v22 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      sub_23136A970();
      __break(1u);
      goto LABEL_20;
    }

    v28 = v22;
    if (v21[3] < v27)
    {
      break;
    }

    if (a4)
    {
      if (v22)
      {
        goto LABEL_13;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43920, &unk_23136EBB8);
      v27 = sub_23136A710();
      if (v28)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v29 = v42;
    v30 = *v43;
    *(*v43 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v31 = (v30[6] + 16 * v24);
    *v31 = v17;
    v31[1] = v18;
    v32 = v30[7] + *(v41 + 72) * v24;
    v8 = v40;
    v14 = v20;
    v19(v32, v29, v40);
    v33 = v30[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_18;
    }

    v30[2] = v35;
    a4 = 1;
  }

  sub_2312B4390(v27, a4 & 1);
  v27 = sub_231215F6C(v17, v18);
  if ((v28 & 1) != (v22 & 1))
  {
    goto LABEL_19;
  }

  v24 = v27;
  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  sub_231228DBC(v27, v22, v23);
  v36 = swift_allocError();
  *v37 = 8;
  swift_willThrow();
  v50 = v36;
  v38 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v41 + 8))(v42, v40);
    sub_2311D3BBC(v48);

    return;
  }

LABEL_20:
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

uint64_t sub_231228D4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43910, &qword_2313749B0);
  result = sub_231361EB8(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_231228DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43928;
  if (!qword_27DD43928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43928);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231228E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_231228E9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for OwnerConfigLoaderErrors(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for OwnerConfigLoaderErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231229064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43948;
  if (!qword_27DD43948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43948);
  }

  return result;
}

uint64_t BiomeStreamRefresher.__allocating_init(bookkeepingXPCClient:)(__int128 *a1)
{
  v2 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v3 = [v2 Intent];
  swift_unknownObjectRelease();
  v4 = sub_231369FA0();
  v5 = [v3 tombstoneDSLPublisherWithUseCase_];

  if (v5)
  {
    v6 = sub_231369FA0();
    v7 = sub_231369FA0();
    v8 = [v5 filterWithKeyPath:v6 value:v7];
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_1_14();
  v9 = swift_allocObject();
  BiomeStreamRefresher.init(bookkeepingXPCClient:tombstonePublisher:)(a1, v8);
  return v9;
}

uint64_t BiomeStreamRefresher.__allocating_init(bookkeepingXPCClient:tombstonePublisher:)(__int128 *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_14();
  v4 = swift_allocObject();
  BiomeStreamRefresher.init(bookkeepingXPCClient:tombstonePublisher:)(a1, a2);
  return v4;
}

uint64_t BiomeStreamRefresher.init(bookkeepingXPCClient:tombstonePublisher:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 64) = 0;
  sub_2311D38A8(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t BiomeStreamRefresher.start(container:)()
{
  OUTLINED_FUNCTION_8();
  v1[15] = v0;
  v2 = sub_2313698C0();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v3 = sub_23136A3F0();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = sub_23136A3E0();
  v1[24] = swift_task_alloc();
  sub_231369E50();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231229468, 0, 0);
}

uint64_t sub_231229468()
{
  v1 = v0[22];
  v2 = v0[21];
  v22 = v0[20];
  v23 = v0[15];
  sub_23122989C();
  sub_231369E40();
  v0[14] = MEMORY[0x277D84F90];
  sub_2312298E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD43950, &qword_23136ECC8);
  sub_231229938();
  sub_23136A550();
  (*(v2 + 104))(v1, *MEMORY[0x277D85260], v22);
  v3 = sub_23136A400();
  v4 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v5 = sub_23122A974(0xD000000000000031, 0x800000023137D4E0, v3);
  v6 = *(v23 + 56);
  if (v6)
  {
    v7 = v0 + 19;
    v8 = v0[15];
    v9 = v6;
    v10 = [v9 subscribeOn:v5];
    v0[6] = sub_23122999C;
    v0[7] = 0;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_231229C7C;
    v0[5] = &block_descriptor_1;
    v11 = _Block_copy(v0 + 2);
    v12 = swift_allocObject();
    swift_weakInit();
    v0[12] = sub_23122A9E0;
    v0[13] = v12;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_23122A624;
    v0[11] = &block_descriptor_3;
    v13 = _Block_copy(v0 + 8);

    v14 = [v10 sinkWithCompletion:v11 receiveInput:v13];
    _Block_release(v13);
    _Block_release(v11);

    *(v8 + 64) = v14;
    swift_unknownObjectRelease();
    sub_231369100();
    v15 = sub_2313698A0();
    v16 = sub_23136A3A0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2311CB000, v15, v16, "BiomeStreamRefresher: Starts listening for App.Intent:tombstones", v17, 2u);
      OUTLINED_FUNCTION_29();

LABEL_6:
      v9 = v15;
      goto LABEL_10;
    }
  }

  else
  {
    v7 = v0 + 18;
    sub_2313690F0();
    v15 = sub_2313698A0();
    v18 = sub_23136A3B0();
    if (os_log_type_enabled(v15, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2311CB000, v15, v18, "BiomeStreamRefresher: Failed to create App.Intent:tombstones publisher", v19, 2u);
      OUTLINED_FUNCTION_29();
      goto LABEL_6;
    }

    v9 = v5;
  }

  v5 = v15;
LABEL_10:

  (*(v0[17] + 8))(*v7, v0[16]);

  OUTLINED_FUNCTION_56_0();

  return v20();
}

unint64_t sub_23122989C()
{
  result = qword_280F7C7C0;
  if (!qword_280F7C7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C7C0);
  }

  return result;
}

unint64_t sub_2312298E0()
{
  result = qword_280F7C7C8;
  if (!qword_280F7C7C8)
  {
    sub_23136A3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C7C8);
  }

  return result;
}

unint64_t sub_231229938()
{
  result = qword_280F7C808;
  if (!qword_280F7C808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD43950, &qword_23136ECC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C808);
  }

  return result;
}

uint64_t sub_23122999C(void *a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v27 - v8;
  v10 = [a1 error];
  if (v10)
  {
    v11 = v10;
    sub_2313690F0();
    v12 = v11;
    v13 = sub_2313698A0();
    v14 = sub_23136A3B0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_23136A980();
      v19 = sub_2311CFD58(v17, v18, &v28);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2311CB000, v13, v14, "BiomeStreamRefresher: App.Intent:tombstones sink completed un-expectedly with error %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x23192B930](v16, -1, -1);
      MEMORY[0x23192B930](v15, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v9, v2);
  }

  else
  {
    sub_2313690F0();
    v20 = a1;
    v21 = sub_2313698A0();
    v22 = sub_23136A3A0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_2311CB000, v21, v22, "BiomeStreamRefresher: App.Intent:tombstones sink completed - %@", v23, 0xCu);
      sub_2311F4E78(v24);
      MEMORY[0x23192B930](v24, -1, -1);
      MEMORY[0x23192B930](v23, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_231229C7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_231229CE4(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_2313698C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_2313690F0();
    swift_unknownObjectRetain();
    v12 = sub_2313698A0();
    v13 = sub_23136A3A0();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      v23 = v22[0];
      *v14 = 136315138;
      if ([a1 respondsToSelector_])
      {
        v15 = [a1 eventBody];
      }

      else
      {
        v15 = 1;
      }

      v22[1] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C8, &qword_23136EDB0);
      v16 = sub_23136A010();
      v18 = sub_2311CFD58(v16, v17, &v23);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2311CB000, v12, v13, "BiomeStreamRefresher: Received event %s", v14, 0xCu);
      v19 = v22[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v22[0]);
      MEMORY[0x23192B930](v19, -1, -1);
      MEMORY[0x23192B930](v14, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v20 = sub_23136A2C0();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v11;
    sub_231271090(0, 0, v5, &unk_23136EDA0, v21);
  }

  return result;
}

uint64_t sub_231229FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2313698C0();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23122A094, 0, 0);
}

uint64_t sub_23122A094()
{
  v1 = v0[2];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439D0, &qword_23136EDB8);
  v4 = sub_231369570();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[7] = v7;
  *(v7 + 16) = xmmword_23136B670;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277D55868], v4);
  v10 = (*(v3 + 48) + **(v3 + 48));
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_23122A28C;

  return v10(v7, v2, v3);
}

uint64_t sub_23122A28C()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v0;

  if (v0)
  {
    v4 = sub_23122A4AC;
  }

  else
  {

    v4 = sub_23122A3A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23122A3A4(uint64_t a1)
{
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[9];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2311CB000, v2, v3, "BiomeStreamRefresher: Reindexed %ld phrases", v5, 0xCu);
    OUTLINED_FUNCTION_29();
  }

  (*(v1[4] + 8))(v1[6], v1[3]);

  OUTLINED_FUNCTION_56_0();

  return v6();
}

uint64_t sub_23122A4AC()
{
  v1 = v0[10];

  sub_2313690F0();
  v2 = v1;
  v3 = sub_2313698A0();
  v4 = sub_23136A3B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2311CB000, v3, v4, "BiomeStreamRefresher: event processing error - %@", v7, 0xCu);
    sub_2311F4E78(v8);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  OUTLINED_FUNCTION_56_0();

  return v11();
}

uint64_t sub_23122A624(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_23122A6A4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*(v0 + 16) + 64);
  if (v1)
  {
    [v1 cancel];
  }

  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t BiomeStreamRefresher.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t BiomeStreamRefresher.__deallocating_deinit()
{
  BiomeStreamRefresher.deinit();
  OUTLINED_FUNCTION_1_14();

  return swift_deallocClassInstance();
}

uint64_t sub_23122A768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23122AAF0;

  return BiomeStreamRefresher.start(container:)();
}

uint64_t sub_23122A7F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23122A888;

  return BiomeStreamRefresher.destroy()();
}

uint64_t sub_23122A888()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

id sub_23122A974(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_231369FA0();

  v6 = [v3 initWithIdentifier:v5 targetQueue:a3];

  return v6;
}

uint64_t sub_23122AA38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23122A888;

  return sub_231229FC8(a1, v4, v5, v6);
}

size_t sub_23122ABA8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_231250134(*(a1 + 16), 0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43908, &unk_23136EBA0);
  v3 = OUTLINED_FUNCTION_40_0(v2);
  OUTLINED_FUNCTION_18_8(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23);
  sub_2312512C8();
  OUTLINED_FUNCTION_16_9(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24, v25, v26, v27, v28);
  if (!v19)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

void *sub_23122AC54(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_2312501E0(*(a1 + 16), 0);
  v2 = sub_231367E10();
  v3 = OUTLINED_FUNCTION_40_0(v2);
  OUTLINED_FUNCTION_18_8(v3, v4, v5, v6, v7, v8, v9, v10, v21, v23);
  sub_231251660();
  OUTLINED_FUNCTION_16_9(v11, v12, v13, v14, v15, v16, v17, v18, v22, v24, v25, v26, v27, v28);
  if (!v19)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_23122AD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_40_4();
  v6(v5);
  OUTLINED_FUNCTION_44_4();
  v7 = a3();
  OUTLINED_FUNCTION_16_9(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22);
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_23122AE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_40_4();
  v6(v5);
  OUTLINED_FUNCTION_44_4();
  v7 = a3();
  OUTLINED_FUNCTION_16_9(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22);
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_23122AECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v6 = OUTLINED_FUNCTION_40_4();
  v8 = v7(v6);
  v9 = a3(0);
  v10 = OUTLINED_FUNCTION_40_0(v9);
  v18 = OUTLINED_FUNCTION_18_8(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31);
  v19 = a4(v18);
  OUTLINED_FUNCTION_16_9(v19, v20, v21, v22, v23, v24, v25, v26, v30, v32, v33, v34, v35, v36);
  if (!v27)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

uint64_t AppUtilsService.homescreenAppPicker.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker;
  sub_231368DB0();
  OUTLINED_FUNCTION_11();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AppUtilsService.__allocating_init(cache:homescreenAppPicker:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker;
  sub_231368DB0();
  OUTLINED_FUNCTION_11();
  (*(v6 + 32))(v4 + v5, a2);
  return v4;
}

uint64_t AppUtilsService.init(cache:homescreenAppPicker:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker;
  sub_231368DB0();
  OUTLINED_FUNCTION_11();
  (*(v5 + 32))(v2 + v4, a2);
  return v2;
}

uint64_t AppUtilsService.getAppDetailsBuilder(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = type metadata accessor for DefaultAppDetailsBuilder();
  v9 = swift_allocObject();
  v9[3] = a1;
  v9[4] = a2;
  v9[2] = v7;
  a3[3] = v8;
  a3[4] = sub_231236C54(&qword_27DD439D8, v10, type metadata accessor for DefaultAppDetailsBuilder, &unk_23136F458);
  *a3 = v9;

  return sub_231369EE0();
}

void AppUtilsService.listIntentSupportingApps()()
{
  OUTLINED_FUNCTION_11_0();
  v44 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439E0, &unk_23136EDD0);
  OUTLINED_FUNCTION_40_0(v6);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = sub_231368480();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v43 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v42 = &v36 - v16;
  MEMORY[0x28223BE20](v17);
  v41 = &v36 - v18;
  v46 = MEMORY[0x277D84FA0];
  v45 = [objc_opt_self() enumeratorWithOptions_];
  v39 = (v12 + 16);
  v40 = (v12 + 32);
  v38 = (v12 + 8);
  v19 = (v1 + 8);
  v20 = 1001;
  v21 = &off_278908000;
  *&v22 = 134217984;
  v36 = v22;
  v37 = (v1 + 8);
  while (1)
  {
    v23 = [v45 v21[180]];
    if (!v23)
    {
      break;
    }

    v24 = v23;
    if (!v20)
    {

      break;
    }

    v25 = MEMORY[0x23192B1C0]();
    if (--v20)
    {
      sub_23122B5D4();
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        sub_2311D1F18(v9, &qword_27DD439E0, &unk_23136EDD0);
      }

      else
      {
        v29 = v41;
        (*v40)(v41, v9, v10);
        v30 = v43;
        v31.n128_f64[0] = (*v39)(v43, v29, v10);
        v32 = v42;
        sub_23122EB84(v42, v30, v31);
        v33 = *v38;
        (*v38)(v32, v10);
        v34 = v29;
        v21 = &off_278908000;
        v33(v34, v10);
        v19 = v37;
      }
    }

    else
    {
      sub_231369100();
      v26 = sub_2313698A0();
      v27 = sub_23136A390();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = OUTLINED_FUNCTION_60();
        *v28 = v36;
        *(v28 + 4) = 1000;
        _os_log_impl(&dword_2311CB000, v26, v27, "[warning] Too many app records returned from LSApplicationRecord. Using first %ld", v28, 0xCu);
        v21 = &off_278908000;
        OUTLINED_FUNCTION_29();
      }

      (*v19)(v5, v44);
    }

    objc_autoreleasePoolPop(v25);
  }

  v35 = sub_231369EE0();
  sub_23122AECC(v35, sub_2312503C0, MEMORY[0x277D60F78], sub_231251E44);

  OUTLINED_FUNCTION_9_0();
}

void sub_23122B5D4()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  v4 = v3;
  sub_2313698C0();
  OUTLINED_FUNCTION_4_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  if ([v2 developerType] == 1)
  {
LABEL_11:
    v31 = sub_231368480();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v31);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v11 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (!v11)
  {
LABEL_8:
    sub_231369100();
    v20 = v2;
    v21 = sub_2313698A0();
    v22 = sub_23136A3B0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_60();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v23 = 136315138;
      v24 = [v20 description];
      v25 = v4;
      v26 = sub_231369FD0();
      v28 = v27;

      v29 = v26;
      v4 = v25;
      v30 = sub_2311CFD58(v29, v28, &v33);

      *(v23 + 4) = v30;
      _os_log_impl(&dword_2311CB000, v21, v22, "Unable to create INAppInfo for record: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v6 + 8))(v10, v1);
    goto LABEL_11;
  }

  v12 = v11;
  sub_2312360F8(v11, &selRef_applicationIdentifier);
  if (!v13)
  {

    goto LABEL_8;
  }

  v14 = [v12 supportedIntents];
  sub_23136A310();

  sub_231368470();
  sub_231368480();
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_9_0();

  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void AppUtilsService.findIntents(forApp:)()
{
  OUTLINED_FUNCTION_11_0();
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_4();
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  sub_231369EE0();
  v2 = OUTLINED_FUNCTION_35_5();
  sub_23122DFCC(v2, v3, 1);
  sub_23122B5D4();
  OUTLINED_FUNCTION_9_0();
}

Swift::Bool __swiftcall AppUtilsService.isAppInstalled(appBundleId:)(Swift::String appBundleId)
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  v4 = v3;
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_4();
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  sub_231369EE0();
  v7 = sub_23122DFCC(v4, v2, 0);
  v8 = [v7 applicationState];
  [v8 isInstalled];

  OUTLINED_FUNCTION_9_0();
  return result;
}

uint64_t AppUtilsService.deinit()
{

  v1 = OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker;
  sub_231368DB0();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t AppUtilsService.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15SiriSuggestions15AppUtilsService_homescreenAppPicker;
  sub_231368DB0();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_23122BE68(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_23122BE88, 0, 0);
}

uint64_t sub_23122BE88()
{
  v1 = v0[8];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v0[9] = v3;
  v0[5] = v2;
  v0[6] = v3;
  v10 = (*MEMORY[0x277D61208] + MEMORY[0x277D61208]);
  sub_231369EE0();
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AB8, &qword_23136F498);
  v6 = sub_231236B4C(&qword_27DD43AC0, sub_231236378, MEMORY[0x277D84F58]);
  v7 = sub_231236B4C(&qword_27DD43AC8, sub_231236324, MEMORY[0x277D84F40]);
  *v4 = v0;
  v4[1] = sub_23122C010;
  v8 = v0[8];

  return v10(v0 + 2, v0 + 5, &unk_23136F490, v8, v5, v6, v7);
}

uint64_t sub_23122C010()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_23122C11C, 0, 0);
}

uint64_t sub_23122C11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[3];
  if (v4)
  {
    v5 = v3[2];
    v6 = v3[4];
    v7 = &type metadata for DefaultAppDetails;
    v8 = sub_231236BC4(a1, a2, a3);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v9 = v3[7];
  *v9 = v5;
  v9[1] = v4;
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  OUTLINED_FUNCTION_56_0();

  return v10();
}

uint64_t sub_23122C1B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2313698C0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23122C278, 0, 0);
}

uint64_t sub_23122C278()
{
  v19 = v0;
  v2 = *(v0 + 24);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = sub_231366900();
  if (v5)
  {
    DefaultAppDetails.init(appInfo:)(v5, *(v0 + 16));
  }

  else
  {
    sub_2313690F0();

    v6 = sub_2313698A0();
    v7 = sub_23136A3B0();

    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 32);
    if (v8)
    {
      OUTLINED_FUNCTION_60();
      v12 = OUTLINED_FUNCTION_57_0();
      v18 = v12;
      *v1 = 136315138;
      *(v1 + 4) = sub_2311CFD58(v3, v4, &v18);
      OUTLINED_FUNCTION_37_2(&dword_2311CB000, v13, v14, "SAAppInfoFactory was unable to create the app info for: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v10 + 8))(v9, v11);
    v15 = *(v0 + 16);
    *v15 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  OUTLINED_FUNCTION_56_0();

  return v16();
}

void DefaultAppDetails.init(appInfo:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  v11 = [a1 appIdentifyingInfo];
  if (v11)
  {
    v12 = v11;
    v13 = sub_2312360F8(v11, &selRef_bundleId);
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      v17 = sub_231236158(a1);
      if (!v17)
      {
        v17 = sub_231369EC0();
      }

      v18 = v17;

      *a2 = v15;
      a2[1] = v16;
      a2[2] = v18;
      return;
    }
  }

  sub_2313690F0();
  v19 = sub_2313698A0();
  v20 = sub_23136A3B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2311CB000, v19, v20, "Could not create AppDetails from provided appInfo because it's missing the bundleId", v21, 2u);
    OUTLINED_FUNCTION_29();
  }

  (*(v6 + 8))(v10, v4);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t sub_23122C598()
{

  return v0;
}

uint64_t sub_23122C5C0()
{
  sub_23122C598();

  return swift_deallocClassInstance();
}

uint64_t sub_23122C5F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23122C690;

  return sub_23122BE68(a1);
}

uint64_t sub_23122C690()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t DefaultAppDetails.identifier.getter()
{
  v1 = *v0;
  sub_231369EE0();
  return v1;
}

uint64_t DefaultAppDetails.appName.getter@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  a1[3] = &type metadata for DefaultAppName;
  a1[4] = sub_2312361BC(a2, a3, a4);
  *a1 = v7;
  a1[1] = v6;
  a1[2] = v8;
  sub_231369EE0();

  return sub_231369EE0();
}

void DefaultAppDetails.getSirikitApp()()
{
  OUTLINED_FUNCTION_11_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439F0, &qword_23136EDE0);
  OUTLINED_FUNCTION_40_0(v1);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v2);
  v28 = v26 - v3;
  v4 = v0[1];
  v5 = v0[2];
  v6 = *(v5 + 16);
  if (v6)
  {
    v26[0] = *v0;
    v26[1] = v4;
    v34 = MEMORY[0x277D84F90];
    sub_23136A6C0();
    v8 = sub_231236C18();
    v9 = v5 + 64;
    v10 = v6 - 1;
    v27 = v5 + 64;
    v11 = v28;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v5 + 32))
      {
        if ((*(v9 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        if (v7 != *(v5 + 36))
        {
          goto LABEL_14;
        }

        v31 = 1 << v8;
        v32 = v8 >> 6;
        v29 = v10;
        v30 = v7;
        v33 = *(*(v5 + 56) + 16 * v8);
        sub_231366D20();
        swift_allocObject();
        sub_231369EE0();
        sub_231369EE0();
        sub_231366D10();
        sub_23136A050();
        v12 = sub_231366CD0();
        OUTLINED_FUNCTION_55_4();
        __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
        sub_231366CF0();

        sub_2311D1F18(v11, &qword_27DD439F0, &qword_23136EDE0);
        sub_23136A050();
        OUTLINED_FUNCTION_55_4();
        __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
        sub_231366CE0();

        sub_2311D1F18(v11, &qword_27DD439F0, &qword_23136EDE0);
        sub_231366D00();

        sub_23136A6A0();
        sub_23136A6D0();
        sub_23136A6E0();
        sub_23136A6B0();
        OUTLINED_FUNCTION_19_8();
        if (v8 >= -v19)
        {
          goto LABEL_15;
        }

        v9 = v27;
        if ((*(v27 + 8 * v32) & v31) == 0)
        {
          goto LABEL_16;
        }

        if (v30 != *(v5 + 36))
        {
          goto LABEL_17;
        }

        v20 = sub_23136A570();
        if (!v29)
        {
          goto LABEL_12;
        }

        v8 = v20;
        v7 = *(v5 + 36);
        v10 = v29 - 1;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
  }

LABEL_12:
  sub_231366C90();
  swift_allocObject();
  sub_231366C80();
  sub_231369EE0();
  v21 = v28;
  OUTLINED_FUNCTION_35_5();
  sub_23136A050();

  sub_231366CD0();
  OUTLINED_FUNCTION_55_4();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_231366C60();

  sub_2311D1F18(v21, &qword_27DD439F0, &qword_23136EDE0);
  sub_231366C50();

  sub_231366C70();

  OUTLINED_FUNCTION_9_0();
}

void DefaultAppDetails.toDialog(dialogProvider:)()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v5 = v4;
  sub_2313698C0();
  OUTLINED_FUNCTION_4_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v13 = *v0;
  v12 = v0[1];
  v14 = v0[2];
  sub_2311CF324(v3, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439F8, &qword_23136EDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A00, &unk_23136EDF0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v20);
    sub_231369120();
    v15 = sub_2313698A0();
    v16 = sub_23136A3A0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2311CB000, v15, v16, "Mapping AppName to SiriKitApp instance for dialogging", v17, 2u);
      OUTLINED_FUNCTION_29();
    }

    (*(v7 + 8))(v11, v1);
    v21[0] = v13;
    v21[1] = v12;
    v21[2] = v14;
    DefaultAppDetails.getSirikitApp()();
    v21[0] = v18;
    sub_231366CA0();
    sub_231236C54(&qword_27DD43A08, 255, MEMORY[0x277D55C08], MEMORY[0x277D55C00]);
    v19 = sub_231366D30();
    v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);

    *v5 = v19;
  }

  else
  {
    *v5 = v13;
    v5[1] = v12;
    v5[2] = v14;
    v5[3] = &type metadata for DefaultAppDetails;
    sub_231369EE0();
    sub_231369EE0();
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t DefaultAppDetails.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23136A650();
  MEMORY[0x23192A730](0xD000000000000018, 0x800000023137D5E0);
  sub_231369EE0();
  MEMORY[0x23192A730](v1, v2);

  MEMORY[0x23192A730](0xD000000000000016, 0x800000023137D600);
  v3 = sub_23136A8B0();
  MEMORY[0x23192A730](v3);

  MEMORY[0x23192A730](0xD000000000000012, 0x800000023137D620);
  return 0;
}

uint64_t static DefaultAppDetails.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23136A900() & 1) == 0)
  {
    return 0;
  }

  return sub_23122CF44(v2, v3);
}

uint64_t sub_23122CF44(uint64_t result, uint64_t a2)
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
    sub_231369EE0();
    sub_231369EE0();
    v20 = sub_231215F6C(v15, v16);
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
      v25 = sub_23136A900();

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

uint64_t sub_23122D0E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D656D614E707061 && a2 == 0xEA00000000007061)
  {

    return 1;
  }

  else
  {
    v7 = sub_23136A900();

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

uint64_t sub_23122D1BC(char a1)
{
  sub_23136A9D0();
  MEMORY[0x23192B090](a1 & 1);
  return sub_23136AA00();
}

uint64_t sub_23122D204(char a1)
{
  if (a1)
  {
    return 0x4D656D614E707061;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_23122D250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23122D0E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23122D298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23122D1B4();
  *a1 = result;
  return result;
}

uint64_t sub_23122D2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231236210(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23122D2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231236210(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void DefaultAppDetails.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_21_0();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A10, &qword_23136EE00);
  OUTLINED_FUNCTION_0_0();
  v37 = v28;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v35 - v30;
  v36 = *(v23 + 16);
  v32 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_231236210(v32, v33, v34);
  sub_23136AA40();
  sub_23136A840();
  if (!v24)
  {
    v38 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A20, &qword_23136EE08);
    sub_231236264(&qword_27DD43A28, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_23136A890();
  }

  (*(v37 + 8))(v31, v27);
  OUTLINED_FUNCTION_22_0();
}

void DefaultAppDetails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_21_0();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A30, &qword_23136EE10);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v28);
  v29 = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_231236210(v29, v30, v31);
  sub_23136AA20();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v32 = sub_23136A7D0();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A20, &qword_23136EE08);
    sub_231236264(&qword_27DD43A38, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_23136A820();
    v35 = OUTLINED_FUNCTION_35_5();
    v36(v35);
    *v27 = v32;
    v27[1] = v34;
    v27[2] = v37;
    sub_231369EE0();
    sub_231369EE0();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t DefaultAppName.getSirikitApp()()
{
  sub_231369EE0();
  sub_231369EE0();
  DefaultAppDetails.getSirikitApp()();
  v1 = v0;

  return v1;
}

uint64_t DefaultAppName.toDialog(dialogProvider:)()
{
  sub_231369EE0();
  sub_231369EE0();
  DefaultAppDetails.toDialog(dialogProvider:)();
}

Swift::String_optional __swiftcall DefaultAppName.appName(locale:)(Swift::String locale)
{
  OUTLINED_FUNCTION_11_0();
  v4 = v3;
  v6 = v5;
  sub_2313698C0();
  OUTLINED_FUNCTION_4_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  v14 = *(v1 + 8);
  v13 = *(v1 + 16);
  sub_2313690F0();
  sub_231369EE0();
  sub_231369EE0();
  v15 = sub_2313698A0();
  v16 = sub_23136A3A0();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_60();
    v17 = OUTLINED_FUNCTION_57_0();
    v27 = v17;
    *v14 = 136315138;
    v18 = sub_231369E90();
    v26 = v2;
    v20 = v6;
    v21 = v4;
    v22 = sub_2311CFD58(v18, v19, &v27);

    *(v14 + 4) = v22;
    v4 = v21;
    v6 = v20;
    _os_log_impl(&dword_2311CB000, v15, v16, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v8 + 8))(v12, v26);
  }

  else
  {

    (*(v8 + 8))(v12);
  }

  sub_231210CBC(v6, v4, v13);
  OUTLINED_FUNCTION_9_0();
  result.value._object = v24;
  result.value._countAndFlagsBits = v23;
  return result;
}

uint64_t sub_23122DA18(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6961746544707061 && a2 == 0xEA0000000000736CLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23136A900();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23122DAA0()
{
  sub_23136A9D0();
  MEMORY[0x23192B090](0);
  return sub_23136AA00();
}

uint64_t sub_23122DB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23122DA18(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23122DB54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23122DA98();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23122DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312362D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23122DBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312362D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void DefaultAppName.encode(to:)()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A40, &qword_23136EE18);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v11 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2312362D0(v11, v12, v13);
  sub_231369EE0();
  sub_231369EE0();
  v14 = sub_23136AA40();
  v18[1] = v8;
  v18[2] = v9;
  v18[3] = v10;
  sub_231236324(v14, v15, v16);
  v17 = v18[0];
  sub_23136A890();

  (*(v4 + 8))(v7, v17);
  OUTLINED_FUNCTION_22_0();
}

void DefaultAppName.init(from:)()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A58, &qword_23136EE20);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2312362D0(v11, v12, v13);
  v14 = sub_23136AA20();
  if (!v0)
  {
    sub_231236378(v14, v15, v16);
    sub_23136A820();
    (*(v7 + 8))(v10, v5);
    v17 = v19;
    *v4 = v18[1];
    *(v4 + 8) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_22_0();
}

uint64_t AppUtilErrors.hashValue.getter()
{
  sub_23136A9D0();
  MEMORY[0x23192B090](0);
  return sub_23136AA00();
}

uint64_t sub_23122DF8C(uint64_t a1)
{
  sub_23136A9D0();
  MEMORY[0x23192B090](0);
  return sub_23136AA00();
}

id sub_23122DFCC(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_231369FA0();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_231366570();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_23122E0AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

BOOL sub_23122E0DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_23136A5D0();
  OUTLINED_FUNCTION_19_8();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(v5 + 56 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2311E5778(a2, v17);
      v16 = *v3;
      sub_231231BE8(v17, v9, isUniquelyReferenced_nonNull_native);
      *v3 = v16;
      v13 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v13;
      *(a1 + 32) = *(a2 + 32);
      return v10 == 0;
    }

    sub_2311E5778(*(v5 + 48) + 40 * v9, v17);
    v11 = MEMORY[0x23192AC90](v17, a2);
    sub_2311E57D4(v17);
    if (v11)
    {
      break;
    }

    v6 = v9 + 1;
  }

  sub_2311E57D4(a2);
  sub_2311E5778(*(v5 + 48) + 40 * v9, a1);
  return v10 == 0;
}

void sub_23122E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_56_3();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = *v30;
  sub_23136A9D0();
  sub_23136A060();
  sub_23136AA00();
  OUTLINED_FUNCTION_19_8();
  v40 = ~v39;
  while (1)
  {
    v41 = v38 & v40;
    if (((1 << (v38 & v40)) & *(v37 + 56 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v42 = (*(v37 + 48) + 16 * v41);
    v43 = *v42 == v34 && v42[1] == v32;
    if (v43 || (sub_23136A900() & 1) != 0)
    {

      v44 = (*(v37 + 48) + 16 * v41);
      v45 = v44[1];
      *v36 = *v44;
      v36[1] = v45;
      sub_231369EE0();
      goto LABEL_11;
    }

    v38 = v41 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v30;
  sub_231369EE0();
  sub_231231D48(v34, v32, v41, isUniquelyReferenced_nonNull_native);
  *v30 = v47;
  *v36 = v34;
  v36[1] = v32;
LABEL_11:
  OUTLINED_FUNCTION_57_4();
}

void sub_23122E348()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v3);
  sub_231369A00();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_23_4();
  v7 = sub_231236C54(v5, 255, v6, MEMORY[0x277D72400]);
  OUTLINED_FUNCTION_12_7(v7);
  OUTLINED_FUNCTION_0_12();
  do
  {
    OUTLINED_FUNCTION_2_7();
    if (v8)
    {
      OUTLINED_FUNCTION_41_4();
      v13 = OUTLINED_FUNCTION_7_8();
      v14(v13);
      v15 = OUTLINED_FUNCTION_8_8();
      sub_231231EB0(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_6_7();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_1_15();
    v2(v9);
    OUTLINED_FUNCTION_23_4();
    v11 = sub_231236C54(&qword_27DD43B20, 255, v10, MEMORY[0x277D72408]);
    OUTLINED_FUNCTION_13_8(v11);
    v12 = OUTLINED_FUNCTION_10_9();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = OUTLINED_FUNCTION_15_10();
  v1(v20);
  v21 = OUTLINED_FUNCTION_9_9();
  v2(v21);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_23122E4BC()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v3);
  sub_231367490();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_22_5();
  v7 = sub_231236C54(v5, 255, v6, MEMORY[0x277D608C0]);
  OUTLINED_FUNCTION_12_7(v7);
  OUTLINED_FUNCTION_0_12();
  do
  {
    OUTLINED_FUNCTION_2_7();
    if (v8)
    {
      OUTLINED_FUNCTION_41_4();
      v13 = OUTLINED_FUNCTION_7_8();
      v14(v13);
      v15 = OUTLINED_FUNCTION_8_8();
      sub_231232168(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_6_7();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_1_15();
    v2(v9);
    OUTLINED_FUNCTION_22_5();
    v11 = sub_231236C54(&qword_27DD43B38, 255, v10, MEMORY[0x277D608C8]);
    OUTLINED_FUNCTION_13_8(v11);
    v12 = OUTLINED_FUNCTION_10_9();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = OUTLINED_FUNCTION_15_10();
  v1(v20);
  v21 = OUTLINED_FUNCTION_9_9();
  v2(v21);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23122E630(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_231369EE0();
    v8 = sub_23136A5B0();

    if (v8)
    {

      sub_2313692F0();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_23136A5A0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_23122F424(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_2312300E4(v18 + 1);
        }

        sub_231231AFC(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_2313692F0();
    OUTLINED_FUNCTION_21_6();
    sub_231236C54(v10, 255, v11, MEMORY[0x277D612D8]);
    OUTLINED_FUNCTION_35_5();
    sub_231369F30();
    OUTLINED_FUNCTION_19_8();
    v14 = ~v13;
    while (1)
    {
      v15 = v12 & v14;
      if (((*(v6 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v2;

        sub_231232420(v21, v15, isUniquelyReferenced_nonNull_native);
        *v2 = v23;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_21_6();
      sub_231236C54(&qword_280F7C908, 255, v16, MEMORY[0x277D612E0]);
      if (sub_231369F60())
      {
        break;
      }

      v12 = v15 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v15);

    return 0;
  }

  return result;
}

void sub_23122E89C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v3);
  sub_231369050();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_20_7();
  v7 = sub_231236C54(v5, 255, v6, MEMORY[0x277D61278]);
  OUTLINED_FUNCTION_12_7(v7);
  OUTLINED_FUNCTION_0_12();
  do
  {
    OUTLINED_FUNCTION_2_7();
    if (v8)
    {
      OUTLINED_FUNCTION_41_4();
      v13 = OUTLINED_FUNCTION_7_8();
      v14(v13);
      v15 = OUTLINED_FUNCTION_8_8();
      sub_2312325F8(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_6_7();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_1_15();
    v2(v9);
    OUTLINED_FUNCTION_20_7();
    v11 = sub_231236C54(&qword_280F7C940, 255, v10, MEMORY[0x277D61280]);
    OUTLINED_FUNCTION_13_8(v11);
    v12 = OUTLINED_FUNCTION_10_9();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = OUTLINED_FUNCTION_15_10();
  v1(v20);
  v21 = OUTLINED_FUNCTION_9_9();
  v2(v21);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_23122EA10()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v3);
  sub_231368090();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_28_6();
  v7 = sub_231236C54(v5, 255, v6, MEMORY[0x277D60D98]);
  OUTLINED_FUNCTION_12_7(v7);
  OUTLINED_FUNCTION_0_12();
  do
  {
    OUTLINED_FUNCTION_2_7();
    if (v8)
    {
      OUTLINED_FUNCTION_41_4();
      v13 = OUTLINED_FUNCTION_7_8();
      v14(v13);
      v15 = OUTLINED_FUNCTION_8_8();
      sub_2312328B0(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_6_7();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_1_15();
    v2(v9);
    OUTLINED_FUNCTION_28_6();
    v11 = sub_231236C54(&qword_280F7C9C0, 255, v10, MEMORY[0x277D60DA0]);
    OUTLINED_FUNCTION_13_8(v11);
    v12 = OUTLINED_FUNCTION_10_9();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = OUTLINED_FUNCTION_15_10();
  v1(v20);
  v21 = OUTLINED_FUNCTION_9_9();
  v2(v21);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

BOOL sub_23122EB84(char *a1, char *a2, __n128 a3)
{
  v24 = a1;
  v5 = sub_231368480();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v3;
  v9 = *v3;
  sub_231236C54(&qword_280F7C988, 255, MEMORY[0x277D60F78], MEMORY[0x277D60F80]);
  v29 = a2;
  v10 = sub_231369F30();
  v26 = v9;
  v27 = v9 + 56;
  v11 = ~(-1 << *(v9 + 32));
  v28 = v6 + 16;
  v25 = v6 + 8;
  while (1)
  {
    v12 = v10 & v11;
    v13 = (1 << (v10 & v11)) & *(v27 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v13)
    {
      v18 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v29;
      v21.n128_f64[0] = (*(v6 + 16))(v8, v29, v5);
      v30 = *v18;
      sub_231232B68(v8, v12, isUniquelyReferenced_nonNull_native, v21);
      *v18 = v30;
      (*(v6 + 32))(v24, v20, v5);
      return v13 == 0;
    }

    v14 = *(v6 + 72) * v12;
    v15 = *(v6 + 16);
    v15(v8, *(v26 + 48) + v14, v5);
    sub_231236C54(&qword_280F7C980, 255, MEMORY[0x277D60F78], MEMORY[0x277D60F88]);
    v16 = sub_231369F60();
    v17 = *(v6 + 8);
    v17(v8, v5);
    if (v16)
    {
      break;
    }

    v10 = v12 + 1;
  }

  v17(v29, v5);
  v15(v24, *(v26 + 48) + v14, v5);
  return v13 == 0;
}

void sub_23122EE54()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v3);
  sub_231369D90();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_27_6();
  v7 = sub_231236C54(v5, 255, v6, MEMORY[0x277D73118]);
  OUTLINED_FUNCTION_12_7(v7);
  OUTLINED_FUNCTION_0_12();
  do
  {
    OUTLINED_FUNCTION_2_7();
    if (v8)
    {
      OUTLINED_FUNCTION_41_4();
      v13 = OUTLINED_FUNCTION_7_8();
      v14(v13);
      v15 = OUTLINED_FUNCTION_8_8();
      sub_231232E20(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_6_7();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_1_15();
    v2(v9);
    OUTLINED_FUNCTION_27_6();
    v11 = sub_231236C54(&qword_27DD43B08, 255, v10, MEMORY[0x277D73120]);
    OUTLINED_FUNCTION_13_8(v11);
    v12 = OUTLINED_FUNCTION_10_9();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = OUTLINED_FUNCTION_15_10();
  v1(v20);
  v21 = OUTLINED_FUNCTION_9_9();
  v2(v21);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_23122EFC8()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v3);
  sub_231369990();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_26_7();
  v7 = sub_231236C54(v5, 255, v6, MEMORY[0x277D72248]);
  OUTLINED_FUNCTION_12_7(v7);
  OUTLINED_FUNCTION_0_12();
  do
  {
    OUTLINED_FUNCTION_2_7();
    if (v8)
    {
      OUTLINED_FUNCTION_41_4();
      v13 = OUTLINED_FUNCTION_7_8();
      v14(v13);
      v15 = OUTLINED_FUNCTION_8_8();
      sub_2312330D8(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_6_7();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_1_15();
    v2(v9);
    OUTLINED_FUNCTION_26_7();
    v11 = sub_231236C54(&qword_27DD43AF0, 255, v10, MEMORY[0x277D72250]);
    OUTLINED_FUNCTION_13_8(v11);
    v12 = OUTLINED_FUNCTION_10_9();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = OUTLINED_FUNCTION_15_10();
  v1(v20);
  v21 = OUTLINED_FUNCTION_9_9();
  v2(v21);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_23122F13C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v3);
  sub_231369900();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_25_5();
  v7 = sub_231236C54(v5, 255, v6, MEMORY[0x277D72110]);
  OUTLINED_FUNCTION_12_7(v7);
  OUTLINED_FUNCTION_0_12();
  do
  {
    OUTLINED_FUNCTION_2_7();
    if (v8)
    {
      OUTLINED_FUNCTION_41_4();
      v13 = OUTLINED_FUNCTION_7_8();
      v14(v13);
      v15 = OUTLINED_FUNCTION_8_8();
      sub_231233390(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_6_7();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_1_15();
    v2(v9);
    OUTLINED_FUNCTION_25_5();
    v11 = sub_231236C54(&qword_27DD43B50, 255, v10, MEMORY[0x277D72118]);
    OUTLINED_FUNCTION_13_8(v11);
    v12 = OUTLINED_FUNCTION_10_9();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = OUTLINED_FUNCTION_15_10();
  v1(v20);
  v21 = OUTLINED_FUNCTION_9_9();
  v2(v21);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

void sub_23122F2B0()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14_9(v3);
  sub_231369D50();
  OUTLINED_FUNCTION_4_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_24_7();
  v7 = sub_231236C54(v5, 255, v6, MEMORY[0x277D72D68]);
  OUTLINED_FUNCTION_12_7(v7);
  OUTLINED_FUNCTION_0_12();
  do
  {
    OUTLINED_FUNCTION_2_7();
    if (v8)
    {
      OUTLINED_FUNCTION_41_4();
      v13 = OUTLINED_FUNCTION_7_8();
      v14(v13);
      v15 = OUTLINED_FUNCTION_8_8();
      sub_231233648(v15, v16, v17);
      v18 = OUTLINED_FUNCTION_6_7();
      v19(v18);
      goto LABEL_7;
    }

    v9 = OUTLINED_FUNCTION_1_15();
    v2(v9);
    OUTLINED_FUNCTION_24_7();
    v11 = sub_231236C54(&qword_27DD43360, 255, v10, MEMORY[0x277D72D70]);
    OUTLINED_FUNCTION_13_8(v11);
    v12 = OUTLINED_FUNCTION_10_9();
    v1(v12);
  }

  while ((v0 & 1) == 0);
  v20 = OUTLINED_FUNCTION_15_10();
  v1(v20);
  v21 = OUTLINED_FUNCTION_9_9();
  v2(v21);
LABEL_7:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_23122F424(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AE0, &qword_23136F4A8);
    v2 = sub_23136A620();
    v15 = v2;
    sub_23136A590();
    while (1)
    {
      if (!sub_23136A5C0())
      {

        return v2;
      }

      sub_2313692F0();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_2312300E4(v3 + 1);
      }

      v2 = v15;
      sub_231236C54(&unk_280F7C910, 255, MEMORY[0x277D612D0], MEMORY[0x277D612D8]);
      result = sub_231369F30();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_23122F63C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AD8, &qword_23136F4A0);
  result = sub_23136A610();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_2312B3C88(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(v3 + 48) + 40 * (v13 | (v6 << 6));
    v27 = *v16;
    v28 = *(v16 + 16);
    v29 = *(v16 + 32);
    result = sub_23136A5D0();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v5 + 48) + 40 * v20;
    *v25 = v27;
    *(v25 + 16) = v28;
    *(v25 + 32) = v29;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
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
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_23122F898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_45_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B68, &qword_23136F4E0);
  v34 = sub_23136A610();
  if (!v31[2])
  {
LABEL_24:

    *v30 = v34;
    OUTLINED_FUNCTION_57_4();
    return;
  }

  v35 = 0;
  v36 = v31 + 7;
  OUTLINED_FUNCTION_29_4();
  if (!v33)
  {
LABEL_4:
    v38 = v35;
    while (1)
    {
      v35 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v35 >= v32)
      {
        break;
      }

      ++v38;
      if (v36[v35])
      {
        OUTLINED_FUNCTION_31_6();
        v33 = v40 & v39;
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_42_4();
    if (v51 >= 64)
    {
      sub_2312B3C88(0, (v51 + 63) >> 6, (v31 + 7));
    }

    else
    {
      OUTLINED_FUNCTION_19_8();
      *v36 = v52;
    }

    v31[2] = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_32_3();
LABEL_9:
    v41 = (v31[6] + 16 * (v37 | (v35 << 6)));
    v42 = *v41;
    v43 = v41[1];
    sub_23136A9D0();
    sub_23136A060();
    sub_23136AA00();
    OUTLINED_FUNCTION_36_3();
    if (v44)
    {
      break;
    }

    OUTLINED_FUNCTION_52_4();
LABEL_18:
    OUTLINED_FUNCTION_30_4(v45);
    *v50 = v42;
    v50[1] = v43;
    ++*(v34 + 16);
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_51();
  while (++v46 != v48 || (v47 & 1) == 0)
  {
    v49 = v46 == v48;
    if (v46 == v48)
    {
      v46 = 0;
    }

    v47 |= v49;
    if (v30[v46] != -1)
    {
      OUTLINED_FUNCTION_50_0();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_23122FA2C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_231369A00();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B28, &qword_23136F4C0);
  result = sub_23136A610();
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
      sub_2312B3C88(0, (v28 + 63) >> 6, v9);
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
    sub_231236C54(&qword_27DD43B18, 255, MEMORY[0x277D723F8], MEMORY[0x277D72400]);
    result = sub_231369F30();
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

uint64_t sub_23122FD88(uint64_t a1)
{
  v2 = v1;
  v36 = sub_231367490();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B40, &qword_23136F4C8);
  result = sub_23136A610();
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
      sub_2312B3C88(0, (v28 + 63) >> 6, v9);
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
    sub_231236C54(&qword_27DD43B30, 255, MEMORY[0x277D608B8], MEMORY[0x277D608C0]);
    result = sub_231369F30();
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

uint64_t sub_2312300E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AE0, &qword_23136F4A8);
  result = sub_23136A610();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v26 = v3;
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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_2312B3C88(0, (v25 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_2313692F0();
    sub_231236C54(&unk_280F7C910, 255, MEMORY[0x277D612D0], MEMORY[0x277D612D8]);
    result = sub_231369F30();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    v3 = v26;
    if (!v10)
    {
      goto LABEL_7;
    }
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
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_231230378(uint64_t a1)
{
  v2 = v1;
  v36 = sub_231369050();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B78, &qword_23136F4F0);
  result = sub_23136A610();
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
      sub_2312B3C88(0, (v28 + 63) >> 6, v9);
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
    sub_231236C54(&qword_280F7C948, 255, MEMORY[0x277D61268], MEMORY[0x277D61278]);
    result = sub_231369F30();
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

uint64_t sub_2312306D4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_231368090();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B70, &qword_23136F4E8);
  result = sub_23136A610();
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
      sub_2312B3C88(0, (v28 + 63) >> 6, v9);
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
    sub_231236C54(&qword_280F7C9C8, 255, MEMORY[0x277D60D90], MEMORY[0x277D60D98]);
    result = sub_231369F30();
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

uint64_t sub_231230A30(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v37 = sub_231368480();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B80, &qword_23136F4F8);
  result = sub_23136A610();
  v8 = result;
  if (!*(v6 + 16))
  {
LABEL_27:

    *v3 = v8;
    return result;
  }

  v31 = v2;
  v32 = v6;
  v9 = 0;
  v10 = (v6 + 56);
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
  v35 = v4 + 32;
  v15 = result + 56;
  if (!v13)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      sub_2312B3C88(0, (v29 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v3 = v31;
    *(v6 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = *(v6 + 48) + *(v4 + 72) * (v16 | (v9 << 6));
    v20 = *(v4 + 32);
    v33 = *(v4 + 72);
    v34 = v20;
    v20(v36, v19, v37);
    sub_231236C54(&qword_280F7C988, 255, MEMORY[0x277D60F78], MEMORY[0x277D60F80]);
    result = sub_231369F30();
    v21 = -1 << *(v8 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = v34(*(v8 + 48) + v24 * v33, v36, v37);
    ++*(v8 + 16);
    v6 = v32;
    if (!v13)
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
    v28 = *(v15 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_231230D8C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_231369D90();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B10, &qword_23136F4B8);
  result = sub_23136A610();
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
      sub_2312B3C88(0, (v28 + 63) >> 6, v9);
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
    sub_231236C54(&qword_27DD43B00, 255, MEMORY[0x277D73110], MEMORY[0x277D73118]);
    result = sub_231369F30();
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

uint64_t sub_2312310E8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_231369990();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AF8, &qword_23136F4B0);
  result = sub_23136A610();
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
      sub_2312B3C88(0, (v28 + 63) >> 6, v9);
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
    sub_231236C54(&qword_27DD43AE8, 255, MEMORY[0x277D72238], MEMORY[0x277D72248]);
    result = sub_231369F30();
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

uint64_t sub_231231444(uint64_t a1)
{
  v2 = v1;
  v36 = sub_231369900();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B58, &qword_23136F4D0);
  result = sub_23136A610();
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
      sub_2312B3C88(0, (v28 + 63) >> 6, v9);
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
    sub_231236C54(&qword_27DD43B48, 255, MEMORY[0x277D72108], MEMORY[0x277D72110]);
    result = sub_231369F30();
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

uint64_t sub_2312317A0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_231369D50();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B60, &qword_23136F4D8);
  result = sub_23136A610();
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
      sub_2312B3C88(0, (v28 + 63) >> 6, v9);
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
    sub_231236C54(&qword_280F7C888, 255, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
    result = sub_231369F30();
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

unint64_t sub_231231AFC(uint64_t a1, uint64_t a2)
{
  sub_2313692F0();
  sub_231236C54(&unk_280F7C910, 255, MEMORY[0x277D612D0], MEMORY[0x277D612D8]);
  sub_231369F30();
  result = sub_23136A580();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_231231BE8(unint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23122F63C(v7 + 1);
      goto LABEL_10;
    }

    if (v8 <= v7)
    {
      sub_231233EE8(v7 + 1);
LABEL_10:
      v15 = *v3;
      result = sub_23136A5D0();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_2311E5778(*(v15 + 48) + 40 * a2, v18);
        v17 = MEMORY[0x23192AC90](v18, v6);
        sub_2311E57D4(v18);
        if (v17)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_231233900();
  }

LABEL_7:
  v9 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v10 = *(v9 + 48) + 40 * a2;
  v11 = *(v6 + 16);
  *v10 = *v6;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(v6 + 32);
  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v14;
  }

  return result;
}

uint64_t sub_231231EB0(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_231369A00();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23122FA2C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231234284(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_231236C54(&qword_27DD43B18, 255, MEMORY[0x277D723F8], MEMORY[0x277D72400]);
      v14 = sub_231369F30();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43B20, 255, MEMORY[0x277D723F8], MEMORY[0x277D72408]);
        v16 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_231232168(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_231367490();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23122FD88(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2312345A0(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_231236C54(&qword_27DD43B30, 255, MEMORY[0x277D608B8], MEMORY[0x277D608C0]);
      v14 = sub_231369F30();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43B38, 255, MEMORY[0x277D608B8], MEMORY[0x277D608C8]);
        v16 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

unint64_t sub_231232420(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2312300E4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2312348BC(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_2313692F0();
      sub_231236C54(&unk_280F7C910, 255, MEMORY[0x277D612D0], MEMORY[0x277D612D8]);
      result = sub_231369F30();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_231236C54(&qword_280F7C908, 255, MEMORY[0x277D612D0], MEMORY[0x277D612E0]);
        if (sub_231369F60())
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_231233BB0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_2312325F8(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_231369050();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231230378(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231234B34(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_231236C54(&qword_280F7C948, 255, MEMORY[0x277D61268], MEMORY[0x277D61278]);
      v14 = sub_231369F30();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_280F7C940, 255, MEMORY[0x277D61268], MEMORY[0x277D61280]);
        v16 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_2312328B0(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_231368090();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2312306D4(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231234E50(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_231236C54(&qword_280F7C9C8, 255, MEMORY[0x277D60D90], MEMORY[0x277D60D98]);
      v14 = sub_231369F30();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_280F7C9C0, 255, MEMORY[0x277D60D90], MEMORY[0x277D60DA0]);
        v16 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_231232B68(uint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  v24 = a1;
  v7 = sub_231368480();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231230A30(v12 + 1, v9);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_23123516C(v12 + 1, v9);
LABEL_8:
      v23 = v4;
      v14 = *v4;
      sub_231236C54(&qword_280F7C988, 255, MEMORY[0x277D60F78], MEMORY[0x277D60F80]);
      v15 = sub_231369F30();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v14 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v8 + 16))(v11, *(v14 + 48) + *(v8 + 72) * a2, v7);
        sub_231236C54(&qword_280F7C980, 255, MEMORY[0x277D60F78], MEMORY[0x277D60F88]);
        v17 = sub_231369F60();
        (*(v8 + 8))(v11, v7);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v4 = v23;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v8 + 32))(*(v18 + 48) + *(v8 + 72) * a2, v24, v7, v9);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_231232E20(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_231369D90();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231230D8C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231235488(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_231236C54(&qword_27DD43B00, 255, MEMORY[0x277D73110], MEMORY[0x277D73118]);
      v14 = sub_231369F30();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43B08, 255, MEMORY[0x277D73110], MEMORY[0x277D73120]);
        v16 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_2312330D8(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_231369990();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2312310E8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2312357A4(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_231236C54(&qword_27DD43AE8, 255, MEMORY[0x277D72238], MEMORY[0x277D72248]);
      v14 = sub_231369F30();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43AF0, 255, MEMORY[0x277D72238], MEMORY[0x277D72250]);
        v16 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_231233390(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_231369900();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_231231444(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231235AC0(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_231236C54(&qword_27DD43B48, 255, MEMORY[0x277D72108], MEMORY[0x277D72110]);
      v14 = sub_231369F30();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43B50, 255, MEMORY[0x277D72108], MEMORY[0x277D72118]);
        v16 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_231233648(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = sub_231369D50();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2312317A0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_231235DDC(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_231236C54(&qword_280F7C888, 255, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
      v14 = sub_231369F30();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43360, 255, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
        v16 = sub_231369F60();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

void *sub_231233900()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AD8, &qword_23136F4A0);
  v2 = *v0;
  v3 = sub_23136A600();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 5 * v17;
        result = sub_2311E5778(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_231233A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B68, &qword_23136F4E0);
  v2 = *v0;
  v3 = sub_23136A600();
  if (v2[2])
  {
    OUTLINED_FUNCTION_42_4();
    v6 = (v5 + 63) >> 6;
    if (v3 != v2 || v4 >= &v2[v6 + 7])
    {
      memmove(v4, v2 + 7, 8 * v6);
    }

    v8 = 0;
    *(v3 + 16) = v2[2];
    OUTLINED_FUNCTION_42_4();
    OUTLINED_FUNCTION_49_3();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_15:
        v18 = v14 | (v8 << 6);
        v19 = (v2[6] + 16 * v18);
        v20 = v19[1];
        v21 = (*(v3 + 48) + 16 * v18);
        *v21 = *v19;
        v21[1] = v20;
        sub_231369EE0();
      }

      while (v11);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_17;
      }

      ++v15;
      if (v2[v8 + 7])
      {
        OUTLINED_FUNCTION_31_6();
        v11 = v17 & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v3;
  }
}

void *sub_231233BB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AE0, &qword_23136F4A8);
  v2 = *v0;
  v3 = sub_23136A600();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_231233D00()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  v3(0);
  OUTLINED_FUNCTION_4_9();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = OUTLINED_FUNCTION_35_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v11 = *v0;
  v12 = sub_23136A600();
  if (v11[2])
  {
    v29 = v2;
    OUTLINED_FUNCTION_42_4();
    v15 = (v14 + 63) >> 6;
    if (v12 != v11 || v13 >= &v11[v15 + 7])
    {
      memmove(v13, v11 + 7, 8 * v15);
    }

    v17 = 0;
    *(v12 + 16) = v11[2];
    OUTLINED_FUNCTION_42_4();
    OUTLINED_FUNCTION_49_3();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;
    v30 = v5 + 32;
    v31 = v5 + 16;
    if ((v19 & v18) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_32_3();
LABEL_15:
        v27 = *(v5 + 72) * (v23 | (v17 << 6));
        (*(v5 + 16))(v8, v11[6] + v27, v1);
        (*(v5 + 32))(*(v12 + 48) + v27, v8, v1);
      }

      while (v20);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v2 = v29;
        goto LABEL_19;
      }

      ++v24;
      if (v11[v17 + 7])
      {
        OUTLINED_FUNCTION_31_6();
        v20 = v26 & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v2 = v12;
    OUTLINED_FUNCTION_9_0();
  }
}

uint64_t sub_231233EE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AD8, &qword_23136F4A0);
  result = sub_23136A610();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        sub_2311E5778(*(v3 + 48) + 40 * (v12 | (v6 << 6)), v26);
        result = sub_23136A5D0();
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v23 = *(v5 + 48) + 40 * v18;
        v24 = v26[0];
        v25 = v26[1];
        *(v23 + 32) = v27;
        *v23 = v24;
        *(v23 + 16) = v25;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v11 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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
    *v2 = v5;
  }

  return result;
}

void sub_231234110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_45_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B68, &qword_23136F4E0);
  v34 = sub_23136A610();
  if (*(v31 + 16))
  {
    v35 = 0;
    OUTLINED_FUNCTION_29_4();
    if (v33)
    {
      while (1)
      {
        OUTLINED_FUNCTION_32_3();
LABEL_9:
        v40 = (*(v31 + 48) + 16 * (v36 | (v35 << 6)));
        v41 = *v40;
        v42 = v40[1];
        sub_23136A9D0();
        sub_231369EE0();
        sub_23136A060();
        sub_23136AA00();
        OUTLINED_FUNCTION_36_3();
        if (v43)
        {
          break;
        }

        OUTLINED_FUNCTION_52_4();
LABEL_18:
        OUTLINED_FUNCTION_30_4(v44);
        *v49 = v41;
        v49[1] = v42;
        ++*(v34 + 16);
        if (!v33)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_51();
      while (++v45 != v47 || (v46 & 1) == 0)
      {
        v48 = v45 == v47;
        if (v45 == v47)
        {
          v45 = 0;
        }

        v46 |= v48;
        if (v30[v45] != -1)
        {
          OUTLINED_FUNCTION_50_0();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v37 = v35;
      while (1)
      {
        v35 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v35 >= v32)
        {
          goto LABEL_20;
        }

        ++v37;
        if (*(v31 + 56 + 8 * v35))
        {
          OUTLINED_FUNCTION_31_6();
          v33 = v39 & v38;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    *v30 = v34;
    OUTLINED_FUNCTION_57_4();
  }
}

uint64_t sub_231234284(uint64_t a1)
{
  v2 = v1;
  v33 = sub_231369A00();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B28, &qword_23136F4C0);
  v7 = sub_23136A610();
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
        sub_231236C54(&qword_27DD43B18, 255, MEMORY[0x277D723F8], MEMORY[0x277D72400]);
        result = sub_231369F30();
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

uint64_t sub_2312345A0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_231367490();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B40, &qword_23136F4C8);
  v7 = sub_23136A610();
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
        sub_231236C54(&qword_27DD43B30, 255, MEMORY[0x277D608B8], MEMORY[0x277D608C0]);
        result = sub_231369F30();
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

uint64_t sub_2312348BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AE0, &qword_23136F4A8);
  result = sub_23136A610();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v26 = (v10 - 1) & v10;
LABEL_12:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
        sub_2313692F0();
        sub_231236C54(&unk_280F7C910, 255, MEMORY[0x277D612D0], MEMORY[0x277D612D8]);

        result = sub_231369F30();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        v3 = v25;
        v10 = v26;
        if (!v26)
        {
          goto LABEL_7;
        }
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v26 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_231234B34(uint64_t a1)
{
  v2 = v1;
  v33 = sub_231369050();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B78, &qword_23136F4F0);
  v7 = sub_23136A610();
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
        sub_231236C54(&qword_280F7C948, 255, MEMORY[0x277D61268], MEMORY[0x277D61278]);
        result = sub_231369F30();
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

uint64_t sub_231234E50(uint64_t a1)
{
  v2 = v1;
  v33 = sub_231368090();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B70, &qword_23136F4E8);
  v7 = sub_23136A610();
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
        sub_231236C54(&qword_280F7C9C8, 255, MEMORY[0x277D60D90], MEMORY[0x277D60D98]);
        result = sub_231369F30();
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

uint64_t sub_23123516C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v34 = sub_231368480();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B80, &qword_23136F4F8);
  v8 = sub_23136A610();
  result = v7;
  if (*(v7 + 16))
  {
    v29 = v2;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v32 = v4 + 16;
    v33 = v4;
    v16 = v8 + 56;
    v30 = (v4 + 32);
    v31 = result;
    if (v14)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_12:
        v20 = *(v33 + 72);
        (*(v33 + 16))(v6, *(result + 48) + v20 * (v17 | (v10 << 6)), v34);
        sub_231236C54(&qword_280F7C988, 255, MEMORY[0x277D60F78], MEMORY[0x277D60F80]);
        result = sub_231369F30();
        v21 = -1 << *(v8 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v16 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v16 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v16 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        (*v30)(*(v8 + 48) + v24 * v20, v6, v34);
        ++*(v8 + 16);
        result = v31;
        if (!v14)
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
        v28 = *(v16 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v18 = v10;
      while (1)
      {
        v10 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v10 >= v15)
        {

          v3 = v29;
          goto LABEL_25;
        }

        v19 = *(v11 + 8 * v10);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v14 = (v19 - 1) & v19;
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
    *v3 = v8;
  }

  return result;
}

uint64_t sub_231235488(uint64_t a1)
{
  v2 = v1;
  v33 = sub_231369D90();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B10, &qword_23136F4B8);
  v7 = sub_23136A610();
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
        sub_231236C54(&qword_27DD43B00, 255, MEMORY[0x277D73110], MEMORY[0x277D73118]);
        result = sub_231369F30();
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

uint64_t sub_2312357A4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_231369990();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AF8, &qword_23136F4B0);
  v7 = sub_23136A610();
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
        sub_231236C54(&qword_27DD43AE8, 255, MEMORY[0x277D72238], MEMORY[0x277D72248]);
        result = sub_231369F30();
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

uint64_t sub_231235AC0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_231369900();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B58, &qword_23136F4D0);
  v7 = sub_23136A610();
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
        sub_231236C54(&qword_27DD43B48, 255, MEMORY[0x277D72108], MEMORY[0x277D72110]);
        result = sub_231369F30();
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

uint64_t sub_231235DDC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_231369D50();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B60, &qword_23136F4D8);
  v7 = sub_23136A610();
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
        sub_231236C54(&qword_280F7C888, 255, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
        result = sub_231369F30();
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

uint64_t sub_2312360F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231369FD0();

  return v4;
}

uint64_t sub_231236158(void *a1)
{
  v1 = [a1 appNameMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231369E80();

  return v3;
}

unint64_t sub_2312361BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD439E8;
  if (!qword_27DD439E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD439E8);
  }

  return result;
}

unint64_t sub_231236210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A18;
  if (!qword_27DD43A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A18);
  }

  return result;
}

uint64_t sub_231236264(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43A20, &qword_23136EE08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2312362D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A48;
  if (!qword_27DD43A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A48);
  }

  return result;
}

unint64_t sub_231236324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A50;
  if (!qword_27DD43A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A50);
  }

  return result;
}

unint64_t sub_231236378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A60;
  if (!qword_27DD43A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A60);
  }

  return result;
}

uint64_t type metadata accessor for AppUtilsService(uint64_t a1)
{
  result = qword_280F848F0;
  if (!qword_280F848F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2312364BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A68;
  if (!qword_27DD43A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A68);
  }

  return result;
}

unint64_t sub_231236514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A70;
  if (!qword_27DD43A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A70);
  }

  return result;
}

unint64_t sub_23123656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A78;
  if (!qword_27DD43A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A78);
  }

  return result;
}

unint64_t sub_2312365C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A80;
  if (!qword_27DD43A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A80);
  }

  return result;
}

uint64_t sub_231236620(uint64_t a1)
{
  result = sub_231368DB0();
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

_BYTE *sub_23123671C(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for DefaultAppDetails.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2312368A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A88;
  if (!qword_27DD43A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A88);
  }

  return result;
}

unint64_t sub_231236900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A90;
  if (!qword_27DD43A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A90);
  }

  return result;
}

unint64_t sub_231236958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43A98;
  if (!qword_27DD43A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A98);
  }

  return result;
}

unint64_t sub_2312369B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43AA0;
  if (!qword_27DD43AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43AA0);
  }

  return result;
}

unint64_t sub_231236A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43AA8;
  if (!qword_27DD43AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43AA8);
  }

  return result;
}

unint64_t sub_231236A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43AB0;
  if (!qword_27DD43AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43AB0);
  }

  return result;
}

uint64_t sub_231236AB4()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23122C690;

  return sub_23122C1B8(v3, v0);
}

uint64_t sub_231236B4C(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43AB8, &qword_23136F498);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231236BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD43AD0;
  if (!qword_27DD43AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43AD0);
  }

  return result;
}

uint64_t sub_231236C54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1)
{

  return sub_231369F60();
}

uint64_t sub_231236DF4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[7];
  v2 = v1[14];
  v0[8] = v2;
  v3 = *(v2 + 16);
  v0[9] = v3;
  if (v3)
  {
    v0[10] = v1[15];
    v4 = v1[16];
    v0[11] = v4;
    v0[12] = swift_getObjectType();
    v5 = *(v4 + 24);
    v0[13] = v5;
    v0[14] = (v4 + 24) & 0xFFFFFFFFFFFFLL | 0x2EF1000000000000;
    v0[15] = 0;
    sub_2311CF324(v2 + 32, (v0 + 2));
    v10 = (v5 + *v5);
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_3_11(v6);

    return v10(v7);
  }

  else
  {
    OUTLINED_FUNCTION_56_0();

    return v9();
  }
}

uint64_t sub_231236F4C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_231237054, v3, 0);
}

uint64_t sub_231237054()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[15] + 1;
  if (v1 == v0[9])
  {
    OUTLINED_FUNCTION_56_0();

    return v2();
  }

  else
  {
    v0[15] = v1;
    v4 = v0[13];
    sub_2311CF324(v0[8] + 40 * v1 + 32, (v0 + 2));
    v7 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_3_11(v5);

    return v7(v6);
  }
}

uint64_t sub_231237194()
{
  sub_231237E70(MEMORY[0x277D85028]);

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2312371D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D05C8;

  return sub_231236DD4();
}

uint64_t sub_231237260(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OwnerRefreshable();

  return MEMORY[0x2821C6520](v3, a2);
}

uint64_t sub_2312372FC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t sub_2312373F8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t NoopRefreshableService.__allocating_init()()
{
  v0 = swift_allocObject();
  NoopRefreshableService.init()();
  return v0;
}

uint64_t NoopRefreshableService.init()()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = sub_231369EC0();
  *(v0 + 120) = v1;
  return v0;
}

uint64_t sub_231237530()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_13(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = OUTLINED_FUNCTION_43();
  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312375CC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_8(v0);
  sub_2313698A0();
  v1 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v1))
  {
    v2 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v2);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v3, v4, "NoopRefreshableService addToLifeCycle(owner:)");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_19_9();
  v5 = OUTLINED_FUNCTION_5_10();
  v6(v5);

  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_231237678()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_13(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = OUTLINED_FUNCTION_43();
  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231237714()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_8(v0);
  sub_2313698A0();
  v1 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v1))
  {
    v2 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v2);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v3, v4, "NoopRefreshableService refresh(owner:)");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_19_9();
  v5 = OUTLINED_FUNCTION_5_10();
  v6(v5);

  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_2312377C0()
{
  OUTLINED_FUNCTION_8();
  v0[2] = v1;
  v2 = sub_2313698C0();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = OUTLINED_FUNCTION_43();
  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23123786C()
{
  OUTLINED_FUNCTION_16();
  sub_231369100();
  v1 = sub_2313698A0();
  v2 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v3);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "NoopRefreshableService getEntity(entityType:)");
    OUTLINED_FUNCTION_9_10();
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];

  (*(v7 + 8))(v6, v8);
  v9 = sub_23136A220();

  OUTLINED_FUNCTION_14();

  return v10(v9);
}

uint64_t sub_23123794C()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_13(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = OUTLINED_FUNCTION_43();
  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312379E8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_8(v0);
  sub_2313698A0();
  v1 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v1))
  {
    v2 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v2);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v3, v4, "NoopRefreshableService destroy(owner:)");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_19_9();
  v5 = OUTLINED_FUNCTION_5_10();
  v6(v5);

  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_231237A94()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_13(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = OUTLINED_FUNCTION_43();
  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231237B30()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_8(v0);
  sub_2313698A0();
  v1 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v1))
  {
    v2 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v2);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v3, v4, "NoopRefreshableService refreshAsync()");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_19_9();
  v5 = OUTLINED_FUNCTION_5_10();
  v6(v5);

  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_231237BDC()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_13(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = OUTLINED_FUNCTION_43();
  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231237C78()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_8(v0);
  sub_2313698A0();
  v1 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v1))
  {
    v2 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v2);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v3, v4, "NoopRefreshableService destroy()");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_19_9();
  v5 = OUTLINED_FUNCTION_5_10();
  v6(v5);

  OUTLINED_FUNCTION_56_0();

  return v7();
}

uint64_t sub_231237D24()
{
  v0 = sub_2313698C0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v4 = sub_2313698A0();
  v5 = sub_23136A3A0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_63();
    *v6 = 0;
    _os_log_impl(&dword_2311CB000, v4, v5, "NoopRefreshableService getAllOwners()", v6, 2u);
    MEMORY[0x23192B930](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return MEMORY[0x277D84F90];
}

uint64_t sub_231237E70(void (*a1)(void))
{

  a1(*(v1 + 120));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t NoopRefreshableService.__deallocating_deinit()
{
  NoopRefreshableService.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231237EDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231237678();
}

uint64_t sub_231237F88()
{
  OUTLINED_FUNCTION_8();
  sub_2312372C4();
  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_231237FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231237530();
}

uint64_t sub_23123806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for NoopRefreshableService();
  *v10 = v5;
  v10[1] = sub_231209AAC;

  return MEMORY[0x2821C72B0](a1, a2, v11, a3, a5);
}

uint64_t sub_231238138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for NoopRefreshableService();
  *v10 = v5;
  v10[1] = sub_231209AAC;

  return MEMORY[0x2821C72C0](a1, a2, a3, v11, a5);
}

uint64_t sub_231238204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for NoopRefreshableService();
  *v6 = v3;
  v6[1] = sub_231209AAC;

  return MEMORY[0x2821C72B8](a1, v7, a3);
}

uint64_t sub_2312382B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return sub_2312377C0();
}

uint64_t sub_23123834C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_23123794C();
}

uint64_t sub_2312383F8()
{
  OUTLINED_FUNCTION_8();
  sub_231237D24();
  OUTLINED_FUNCTION_14();
  v1 = MEMORY[0x277D84F90];

  return v0(v1);
}

uint64_t sub_231238454()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231237A94();
}

uint64_t sub_2312384E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NoopRefreshableService();

  return MEMORY[0x2821C6520](v3, a2);
}

uint64_t sub_231238518()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_231238538, v2, 0);
}

uint64_t sub_231238538()
{
  OUTLINED_FUNCTION_8();
  sub_2312373C0();
  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_231238590()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231237BDC();
}

uint64_t sub_231238620(uint64_t a1)
{
  *(a1 + 8) = sub_231239058(&qword_27DD43B90, type metadata accessor for NoopRefreshableService, &protocol conformance descriptor for NoopRefreshableService);
  result = sub_231239058(&qword_27DD43B98, type metadata accessor for NoopRefreshableService, &protocol conformance descriptor for NoopRefreshableService);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of RefreshableService.refresh(owner:)()
{
  OUTLINED_FUNCTION_16();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v10 = (*(v0 + 24) + **(v0 + 24));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_30(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_34_0(v7);

  return v10(v5, v3, v1);
}

uint64_t dispatch thunk of NoopRefreshableService.addToLifeCycle(owner:localEntities:)()
{
  OUTLINED_FUNCTION_16();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v9 = (*(v4 + 160) + **(v4 + 160));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_34_0(v6);

  return v9(v3, v1);
}

uint64_t dispatch thunk of NoopRefreshableService.refresh(owner:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  OUTLINED_FUNCTION_13_0();
  v7 = (*(v2 + 168) + **(v2 + 168));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_34_0(v4);

  return v7(v1);
}

uint64_t dispatch thunk of NoopRefreshableService.getEntity<A>(entityType:)()
{
  OUTLINED_FUNCTION_16();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v9 = (*(v4 + 176) + **(v4 + 176));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_34_0(v6);

  return v9(v3, v1);
}

uint64_t dispatch thunk of NoopRefreshableService.destroy(owner:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  OUTLINED_FUNCTION_13_0();
  v7 = (*(v2 + 184) + **(v2 + 184));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_34_0(v4);

  return v7(v1);
}

uint64_t dispatch thunk of NoopRefreshableService.refreshAsync()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v5 = (*(v0 + 192) + **(v0 + 192));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_34_0(v2);

  return v5();
}

uint64_t dispatch thunk of NoopRefreshableService.destroy()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v5 = (*(v0 + 200) + **(v0 + 200));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_34_0(v2);

  return v5();
}

uint64_t sub_231239058(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2312390B8()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BB8, &unk_23136F890);
  v1[3] = OUTLINED_FUNCTION_43();
  v2 = sub_2313698C0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312391A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_231369100();
  v3 = *(v2 + 48);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_231239264;

  return MEMORY[0x2821C72A0](ObjectType, v3);
}

uint64_t sub_231239264()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231239350()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
  sub_231369880();

  v4 = *(v3 + 8);
  v4(v1, v2);
  sub_231369170();
  v5 = sub_2313698A0();
  v6 = sub_23136A3A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2311CB000, v5, v6, "Loading owner definitions", v7, 2u);
    OUTLINED_FUNCTION_29();
  }

  v8 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];

  v4(v8, v9);
  v12 = *(v11 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BC0, &qword_23136F8A0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v13);

  v14 = swift_task_alloc();
  v0[10] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BC8, &unk_23136F8B8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
  *v14 = v0;
  v14[1] = sub_2312395AC;
  v20 = v0[2];
  v19 = v0[3];

  return MEMORY[0x2821C6B08](v12, v19, &unk_23136F8B0, v20, v15, v16, v17, v18);
}

void sub_2312395AC(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v1)
  {
  }

  else
  {
    sub_231228E9C(*(v5 + 24), &qword_27DD43BB8, &unk_23136F890);

    OUTLINED_FUNCTION_14();

    v9(a1);
  }
}

uint64_t sub_231239714(_OWORD *a1, uint64_t a2)
{
  *(v2 + 616) = a2;
  v4 = sub_2313698C0();
  *(v2 + 624) = v4;
  *(v2 + 632) = *(v4 - 8);
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();
  *(v2 + 656) = *a1;

  return MEMORY[0x2822009F8](sub_2312397EC, 0, 0);
}

uint64_t sub_2312397EC()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  *(v0 + 672) = v1;
  *v1 = v0;
  v1[1] = sub_23123989C;
  v2 = *(v0 + 616);

  return MEMORY[0x2821C7198](&unk_23136F8D0, v2);
}

uint64_t sub_23123989C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 680) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231239988(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = *(v1 + 680);
  v5 = v4 + 32;
  v6 = *(v4 + 16);
  v72 = v4 + 32;
LABEL_2:
  v7 = v5 + 40 * v2;
  v73 = v3;
  while (1)
  {
    *(v1 + 688) = v3;
    if (v6 == v2)
    {
      break;
    }

    if (v2 >= *(v4 + 16))
    {
      __break(1u);
      return MEMORY[0x2821C7280](isUniquelyReferenced_nonNull_native);
    }

    sub_2311CF324(v7, v1 + 256);
    __swift_project_boxed_opaque_existential_1((v1 + 256), *(v1 + 280));
    OUTLINED_FUNCTION_14_1();
    sub_231367AD0();
    sub_2311CF324(v1 + 256, v1 + 376);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BD0, &qword_23136F8D8);
    if (!swift_dynamicCast())
    {
      *(v1 + 368) = 0;
      *(v1 + 336) = 0u;
      *(v1 + 352) = 0u;
      sub_231228E9C(v1 + 336, &qword_27DD43BD8, &qword_23136F8E0);
      *(v1 + 296) = 0u;
      *(v1 + 312) = 0u;
      *(v1 + 328) = 0;
LABEL_10:
      sub_231228E9C(v1 + 296, &qword_27DD43BE0, &qword_23136F8E8);
LABEL_11:
      *(v1 + 56) = 0;
      goto LABEL_12;
    }

    __swift_project_boxed_opaque_existential_1((v1 + 336), *(v1 + 360));
    OUTLINED_FUNCTION_14_1();
    v3 = v73;
    sub_231368220();
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 336));
    if (!*(v1 + 320))
    {
      goto LABEL_10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BF0, &qword_23136F8F8);
    sub_231368940();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 256));
    if (*(v1 + 40))
    {
      v74 = *(v1 + 16);
      v76 = *(v1 + 32);
      v77 = *(v1 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23126E858();
        v3 = isUniquelyReferenced_nonNull_native;
      }

      v8 = v3[2];
      if (v8 >= v3[3] >> 1)
      {
        sub_23126E858();
        v3 = isUniquelyReferenced_nonNull_native;
      }

      ++v2;
      v3[2] = v8 + 1;
      v9 = &v3[6 * v8];
      v9[3] = v76;
      v9[4] = v77;
      v9[2] = v74;
      v5 = v4 + 32;
      goto LABEL_2;
    }

    isUniquelyReferenced_nonNull_native = sub_231228E9C(v1 + 16, &qword_27DD43BE8, &qword_23136F8F0);
    v7 += 40;
    ++v2;
  }

  v10 = v3[2];
  *(v1 + 696) = v10;
  if (v10)
  {
    *(v1 + 704) = 0;
    sub_23123B09C((v3 + 4), v1 + 64);
    OUTLINED_FUNCTION_12_8();

    OUTLINED_FUNCTION_28_7();
    v11 = *(v1 + 248);
    *(v1 + 712) = v11;
    if (v11)
    {
      OUTLINED_FUNCTION_24_8();

      v12 = sub_2313698A0();
      v13 = sub_23136A3A0();

      os_log_type_enabled(v12, v13);
      OUTLINED_FUNCTION_27_7();
      if (v14)
      {
        OUTLINED_FUNCTION_60();
        v15 = OUTLINED_FUNCTION_57_0();
        v20 = OUTLINED_FUNCTION_44_5(v15, v16, v17, v18, v19, 4.8149e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
        sub_231369E90();
        v21 = OUTLINED_FUNCTION_22_6();
        OUTLINED_FUNCTION_42_5(v21, v22, v23, v24, v25, v26, v27, v28);
        OUTLINED_FUNCTION_14_1();

        *(v3 + 4) = v20;
        OUTLINED_FUNCTION_20_9(&dword_2311CB000, v29, v30, "Propagating local lifecycle instance of: %s to global lifecycle");
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (qword_27DD435A8)(v73, v72);
      }

      else
      {

        v59 = OUTLINED_FUNCTION_30_5();
        v61(v59, v60);
      }

      OUTLINED_FUNCTION_35_6();
      *(v1 + 720) = sub_231368930();
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v1 + 728) = v62;
      *v62 = v63;
      isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_0_14(v62);
    }

    else
    {
      OUTLINED_FUNCTION_24_8();
      sub_2311CF324(v1 + 416, v1 + 456);
      v36 = sub_2313698A0();
      v37 = sub_23136A3A0();
      OUTLINED_FUNCTION_43_1(v37);
      OUTLINED_FUNCTION_31_7();
      if (v38)
      {
        OUTLINED_FUNCTION_60();
        v75 = OUTLINED_FUNCTION_21_7();
        OUTLINED_FUNCTION_3_12(4.8149e-34);
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_15_11();
        v39();
        OUTLINED_FUNCTION_40_5();
        OUTLINED_FUNCTION_39_2();
        v40 = __swift_destroy_boxed_opaque_existential_1Tm((v1 + 456));
        v48 = OUTLINED_FUNCTION_41_5(v40, v41, v42, v43, v44, v45, v46, v47);

        *(&qword_27DD435A0 + 4) = v48;
        OUTLINED_FUNCTION_19_1(&dword_2311CB000, v49, v50, "no lifecycles detected for: %s");
        OUTLINED_FUNCTION_17_6(v51, v52, v53, v54, v55, v56, v57, v58, v71, v75);
        OUTLINED_FUNCTION_29();

        MEMORY[8](v72, v73);
      }

      else
      {

        v67 = OUTLINED_FUNCTION_29_5();
        v68(v67);
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 456));
      }

      OUTLINED_FUNCTION_36_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
      *(v1 + 736) = sub_231369EC0();
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v1 + 744) = v69;
      *v69 = v70;
      isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_1_16(v69);
    }

    return MEMORY[0x2821C7280](isUniquelyReferenced_nonNull_native);
  }

  if (*(*(v1 + 680) + 16))
  {
    OUTLINED_FUNCTION_14_10();
    do
    {
      OUTLINED_FUNCTION_37_4();
      sub_2311CF324(v1 + 496, v1 + 536);
      type metadata accessor for OwnerLockedOwnerDefinition();
      OUTLINED_FUNCTION_20();
      swift_allocObject();
      sub_2311FBA9C((v1 + 536));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 496));
      OUTLINED_FUNCTION_11_9();
      if (v32)
      {
        OUTLINED_FUNCTION_13_9(v31);
      }

      OUTLINED_FUNCTION_2_8();
      v34 = sub_23123B10C(&qword_280F85948, v33, &unk_23136D150);
      OUTLINED_FUNCTION_6_8(v34);
    }

    while (!v35);
  }

  v64 = OUTLINED_FUNCTION_10_10();

  return v65(v64);
}

uint64_t sub_23123A058()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23123A158()
{

  OUTLINED_FUNCTION_46_6();
  sub_231228E9C((v2 + 14), &qword_27DD43BF8, &unk_23136F900);
  if (v0 == v1)
  {

    if (*(v2[85] + 16))
    {
      OUTLINED_FUNCTION_14_10();
      do
      {
        OUTLINED_FUNCTION_37_4();
        sub_2311CF324((v2 + 62), (v2 + 67));
        type metadata accessor for OwnerLockedOwnerDefinition();
        OUTLINED_FUNCTION_20();
        swift_allocObject();
        sub_2311FBA9C(v2 + 67);
        __swift_destroy_boxed_opaque_existential_1Tm(v2 + 62);
        OUTLINED_FUNCTION_11_9();
        if (v6)
        {
          OUTLINED_FUNCTION_13_9(v5);
        }

        OUTLINED_FUNCTION_2_8();
        v8 = sub_23123B10C(&qword_280F85948, v7, &unk_23136D150);
        OUTLINED_FUNCTION_6_8(v8);
      }

      while (!v9);
    }

    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_8_4();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_12_8();

  OUTLINED_FUNCTION_28_7();
  v10 = v2[31];
  v2[89] = v10;
  if (v10)
  {
    OUTLINED_FUNCTION_24_8();

    v11 = sub_2313698A0();
    v12 = sub_23136A3A0();

    os_log_type_enabled(v11, v12);
    OUTLINED_FUNCTION_27_7();
    if (v13)
    {
      OUTLINED_FUNCTION_60();
      v14 = OUTLINED_FUNCTION_57_0();
      v19 = OUTLINED_FUNCTION_44_5(v14, v15, v16, v17, v18, 4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
      sub_231369E90();
      v20 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_42_5(v20, v21, v22, v23, v24, v25, v26, v27);
      OUTLINED_FUNCTION_14_1();

      *(v4 + 4) = v19;
      OUTLINED_FUNCTION_20_9(&dword_2311CB000, v28, v29, "Propagating local lifecycle instance of: %s to global lifecycle");
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v3 + 8))();
    }

    else
    {

      v55 = OUTLINED_FUNCTION_30_5();
      v57(v55, v56);
    }

    OUTLINED_FUNCTION_35_6();
    v2[90] = sub_231368930();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v2[91] = v58;
    *v58 = v59;
    OUTLINED_FUNCTION_0_14(v58);
  }

  else
  {
    OUTLINED_FUNCTION_24_8();
    sub_2311CF324((v2 + 52), (v2 + 57));
    v32 = sub_2313698A0();
    v33 = sub_23136A3A0();
    OUTLINED_FUNCTION_43_1(v33);
    OUTLINED_FUNCTION_31_7();
    if (v34)
    {
      OUTLINED_FUNCTION_60();
      v68 = OUTLINED_FUNCTION_21_7();
      OUTLINED_FUNCTION_3_12(4.8149e-34);
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_15_11();
      v35();
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_39_2();
      v36 = __swift_destroy_boxed_opaque_existential_1Tm(v2 + 57);
      v44 = OUTLINED_FUNCTION_41_5(v36, v37, v38, v39, v40, v41, v42, v43);

      *(v3 + 4) = v44;
      OUTLINED_FUNCTION_19_1(&dword_2311CB000, v45, v46, "no lifecycles detected for: %s");
      OUTLINED_FUNCTION_17_6(v47, v48, v49, v50, v51, v52, v53, v54, v67, v68);
      OUTLINED_FUNCTION_29();

      MEMORY[8]();
    }

    else
    {

      v60 = OUTLINED_FUNCTION_29_5();
      v61(v60);
      __swift_destroy_boxed_opaque_existential_1Tm(v2 + 57);
    }

    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
    v2[92] = sub_231369EC0();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v2[93] = v62;
    *v62 = v63;
    OUTLINED_FUNCTION_1_16(v62);
  }

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821C7280](v64);
}

uint64_t sub_23123A5B8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23123A6B8(uint64_t a1)
{
  OUTLINED_FUNCTION_46_6();
  sub_231228E9C((v3 + 14), &qword_27DD43BF8, &unk_23136F900);
  if (v1 == v2)
  {

    if (*(v3[85] + 16))
    {
      OUTLINED_FUNCTION_14_10();
      do
      {
        OUTLINED_FUNCTION_37_4();
        sub_2311CF324((v3 + 62), (v3 + 67));
        type metadata accessor for OwnerLockedOwnerDefinition();
        OUTLINED_FUNCTION_20();
        swift_allocObject();
        sub_2311FBA9C(v3 + 67);
        __swift_destroy_boxed_opaque_existential_1Tm(v3 + 62);
        OUTLINED_FUNCTION_11_9();
        if (v7)
        {
          OUTLINED_FUNCTION_13_9(v6);
        }

        OUTLINED_FUNCTION_2_8();
        v9 = sub_23123B10C(&qword_280F85948, v8, &unk_23136D150);
        OUTLINED_FUNCTION_6_8(v9);
      }

      while (!v10);
    }

    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_8_4();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_12_8();

  OUTLINED_FUNCTION_28_7();
  v11 = v3[31];
  v3[89] = v11;
  if (v11)
  {
    OUTLINED_FUNCTION_24_8();

    v12 = sub_2313698A0();
    v13 = sub_23136A3A0();

    os_log_type_enabled(v12, v13);
    OUTLINED_FUNCTION_27_7();
    if (v14)
    {
      OUTLINED_FUNCTION_60();
      v15 = OUTLINED_FUNCTION_57_0();
      v20 = OUTLINED_FUNCTION_44_5(v15, v16, v17, v18, v19, 4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
      sub_231369E90();
      v21 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_42_5(v21, v22, v23, v24, v25, v26, v27, v28);
      OUTLINED_FUNCTION_14_1();

      *(v5 + 4) = v20;
      OUTLINED_FUNCTION_20_9(&dword_2311CB000, v29, v30, "Propagating local lifecycle instance of: %s to global lifecycle");
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v4 + 8))();
    }

    else
    {

      v56 = OUTLINED_FUNCTION_30_5();
      v58(v56, v57);
    }

    OUTLINED_FUNCTION_35_6();
    v3[90] = sub_231368930();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v3[91] = v59;
    *v59 = v60;
    OUTLINED_FUNCTION_0_14(v59);
  }

  else
  {
    OUTLINED_FUNCTION_24_8();
    sub_2311CF324((v3 + 52), (v3 + 57));
    v33 = sub_2313698A0();
    v34 = sub_23136A3A0();
    OUTLINED_FUNCTION_43_1(v34);
    OUTLINED_FUNCTION_31_7();
    if (v35)
    {
      OUTLINED_FUNCTION_60();
      v69 = OUTLINED_FUNCTION_21_7();
      OUTLINED_FUNCTION_3_12(4.8149e-34);
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_15_11();
      v36();
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_39_2();
      v37 = __swift_destroy_boxed_opaque_existential_1Tm(v3 + 57);
      v45 = OUTLINED_FUNCTION_41_5(v37, v38, v39, v40, v41, v42, v43, v44);

      *(v4 + 4) = v45;
      OUTLINED_FUNCTION_19_1(&dword_2311CB000, v46, v47, "no lifecycles detected for: %s");
      OUTLINED_FUNCTION_17_6(v48, v49, v50, v51, v52, v53, v54, v55, v68, v69);
      OUTLINED_FUNCTION_29();

      MEMORY[8]();
    }

    else
    {

      v61 = OUTLINED_FUNCTION_29_5();
      v62(v61);
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + 57);
    }

    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
    v3[92] = sub_231369EC0();
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v3[93] = v63;
    *v63 = v64;
    OUTLINED_FUNCTION_1_16(v63);
  }

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821C7280](v65);
}

uint64_t sub_23123AB10(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_23123AB30, 0, 0);
}

uint64_t sub_23123AB30()
{
  v1 = v0[13];
  v0[14] = sub_231368940();
  v2 = *(v1 + 48);
  swift_unknownObjectRetain();
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_26_3(v3);

  return MEMORY[0x2821C7228](v4, v2);
}

uint64_t sub_23123ABEC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23123ACD8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435F8, &qword_231374530);
  v3 = swift_allocObject();
  v7 = *(v1 + 24);
  *(v3 + 16) = xmmword_23136B670;
  sub_2311CF324(v2, v3 + 32);
  type metadata accessor for OwnerRefreshable();
  v4 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  *(v4 + 120) = v7;
  *(v4 + 112) = v3;
  sub_231368F00();
  sub_2311CF324(v2, v0 + 16);
  sub_23123B10C(qword_280F83F98, type metadata accessor for OwnerRefreshable, &unk_23136F7C0);
  sub_2311CF324(v1 + 56, v0 + 56);
  sub_231368EE0();
  OUTLINED_FUNCTION_14();

  return v5();
}

void *sub_23123AE54()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t sub_23123AE8C()
{
  sub_23123AE54();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_23123AEE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return sub_2312390B8();
}

uint64_t sub_23123AF84()
{
  OUTLINED_FUNCTION_8();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_26_3(v2);

  return sub_231239714(v3, v0);
}

uint64_t sub_23123B010()
{
  OUTLINED_FUNCTION_8();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_26_3(v2);

  return sub_23123AB10(v3, v0);
}

uint64_t sub_23123B09C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BF8, &unk_23136F900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23123B10C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_23123B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a9;
  sub_2311D38A8(a5, (v14 + 7));
  return v14;
}

void *sub_23123B1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = a3;
  a7[5] = a4;
  a7[6] = a9;
  sub_2311D38A8(a5, (a7 + 7));
  return a7;
}

uint64_t OUTLINED_FUNCTION_13_9@<X0>(unint64_t a1@<X8>)
{

  return sub_2311F5CF8(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_17_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a10);

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_18_9()
{
  v2 = *(v0 + 704);
  *(v0 + 704) = v2 + 1;
  v3 = *(v0 + 688) + 48 * v2 + 80;

  return sub_23123B09C(v3, v0 + 64);
}

uint64_t OUTLINED_FUNCTION_24_8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));

  return sub_231369100();
}

uint64_t OUTLINED_FUNCTION_28_7()
{
  sub_2311D38A8((v0 + 160), v0 + 416);

  return sub_23123B09C(v0 + 112, v0 + 208);
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  *v6 = a6;

  return sub_231368930();
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
}

uint64_t sub_23123B354()
{
  v1 = *(v0 + 56);
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  sub_2311CF324((v1 + 7), v0 + 16);
  type metadata accessor for DefaultOwnerDefinitionProvider();
  v7 = swift_allocObject();
  ObjectType = swift_getObjectType();
  *(v0 + 64) = sub_23123B1CC(v2, v3, v5, v4, (v0 + 16), 1, v7, ObjectType, v6);
  sub_231369EE0();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_23123B484;

  return sub_2312390B8();
}

uint64_t sub_23123B484(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_23123B59C()
{
  sub_23123AE54();

  return swift_deallocClassInstance();
}

uint64_t sub_23123B5F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23120B320;

  return sub_23123B334();
}

void *sub_23123B684(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_23123B704(a1, a2, a3, a4, v13, a6, a7);
}

void *sub_23123B704(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  a5[3] = a1;
  a5[4] = a2;
  a5[5] = a3;
  a5[6] = a7;
  sub_2311CF324(a4, (a5 + 7));
  swift_unknownObjectRetain();
  sub_23126DDD0(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = v9;
  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    sub_23126DDD0(v11 > 1, v12 + 1, 1, v9);
    v10 = v45;
  }

  v14 = type metadata accessor for SuggestionsForHelpDefinitionFactory();
  v15 = sub_23123BAAC(qword_280F85178, type metadata accessor for SuggestionsForHelpDefinitionFactory, &protocol conformance descriptor for SuggestionsForHelpDefinitionFactory);
  *(v10 + 16) = v13;
  v16 = v10 + 16 * v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  v17 = *(v10 + 24);
  v18 = v12 + 2;
  if ((v12 + 2) > (v17 >> 1))
  {
    sub_23126DDD0(v17 > 1, v12 + 2, 1, v10);
    v10 = v46;
  }

  v19 = type metadata accessor for BaseSuggestionsOwnerDefinitionFactory();
  v20 = sub_23123BAAC(&unk_280F85680, type metadata accessor for BaseSuggestionsOwnerDefinitionFactory, &protocol conformance descriptor for BaseSuggestionsOwnerDefinitionFactory);
  *(v10 + 16) = v18;
  v21 = v10 + 16 * v13;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v22 = sub_2313683F0();
  v23 = *(v10 + 16);
  if (v22)
  {
    v24 = *(v10 + 24);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      sub_23126DDD0(v24 > 1, v23 + 1, 1, v10);
      v10 = v50;
    }

    v26 = type metadata accessor for AppIntentBridgeFactory();
    v27 = sub_23123BAAC(&qword_27DD43C00, type metadata accessor for AppIntentBridgeFactory, &unk_23137A388);
    *(v10 + 16) = v25;
    v28 = v10 + 16 * v23;
    *(v28 + 32) = v26;
    *(v28 + 40) = v27;
  }

  else
  {
    v25 = *(v10 + 16);
  }

  v29 = *(v10 + 24);
  v30 = v25 + 1;
  if (v25 >= v29 >> 1)
  {
    sub_23126DDD0(v29 > 1, v25 + 1, 1, v10);
    v10 = v47;
  }

  v31 = type metadata accessor for INIntentBridgeFactory();
  v32 = sub_23123BAAC(&qword_280F81EE0, type metadata accessor for INIntentBridgeFactory, &unk_23137A330);
  *(v10 + 16) = v30;
  v33 = v10 + 16 * v25;
  *(v33 + 32) = v31;
  *(v33 + 40) = v32;
  v34 = *(v10 + 24);
  v35 = v25 + 2;
  if ((v25 + 2) > (v34 >> 1))
  {
    sub_23126DDD0(v34 > 1, v25 + 2, 1, v10);
    v10 = v48;
  }

  v36 = type metadata accessor for CustomContinuersBridgeFactory();
  v37 = sub_23123BAAC(qword_280F7EA40, type metadata accessor for CustomContinuersBridgeFactory, &protocol conformance descriptor for CustomContinuersBridgeFactory);
  *(v10 + 16) = v35;
  v38 = v10 + 16 * v30;
  *(v38 + 32) = v36;
  *(v38 + 40) = v37;
  v39 = *(v10 + 24);
  v40 = v25 + 3;
  if (v40 > (v39 >> 1))
  {
    sub_23126DDD0(v39 > 1, v40, 1, v10);
    v10 = v49;
  }

  swift_unknownObjectRelease();
  v41 = sub_2313696C0();
  v42 = sub_23123BAAC(&qword_280F7C8B0, MEMORY[0x277D60780], MEMORY[0x277D60778]);
  *(v10 + 16) = v40;
  v43 = v10 + 16 * v35;
  *(v43 + 32) = v41;
  *(v43 + 40) = v42;
  a5[2] = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return a5;
}

uint64_t sub_23123BAAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23123BAF4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v4 = sub_2313698C0();
  v3[8] = v4;
  OUTLINED_FUNCTION_0(v4);
  v3[9] = v5;
  v3[10] = OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C08, &unk_2313708B0);
  v3[11] = OUTLINED_FUNCTION_43();
  v6 = sub_231367E60();
  v3[12] = v6;
  OUTLINED_FUNCTION_0(v6);
  v3[13] = v7;
  v3[14] = OUTLINED_FUNCTION_43();
  v8 = sub_231367EA0();
  v3[15] = v8;
  OUTLINED_FUNCTION_0(v8);
  v3[16] = v9;
  v3[17] = OUTLINED_FUNCTION_43();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  OUTLINED_FUNCTION_0(v10);
  v3[18] = v11;
  v3[19] = OUTLINED_FUNCTION_67();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C10, &qword_23136FA68);
  v3[22] = OUTLINED_FUNCTION_67();
  v3[23] = swift_task_alloc();
  v12 = sub_231369630();
  v3[24] = v12;
  OUTLINED_FUNCTION_0(v12);
  v3[25] = v13;
  v3[26] = OUTLINED_FUNCTION_67();
  v3[27] = swift_task_alloc();
  v14 = sub_2313696B0();
  v3[28] = v14;
  OUTLINED_FUNCTION_0(v14);
  v3[29] = v15;
  v3[30] = OUTLINED_FUNCTION_67();
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23123BDC4, 0, 0);
}

uint64_t sub_23123BDC4()
{
  v102 = v0;
  v1 = v0;
  v2 = v0[29];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1[6], *(v1[6] + 24));
  sub_2313683A0();
  v4 = sub_23136A200();

  v96 = *(v4 + 16);
  v87 = *MEMORY[0x277D1EB18];
  v85 = (v3 + 104);
  v82 = (v2 + 8);
  v90 = v2;
  v79 = (v2 + 32);
  v6 = 0;
  v80 = MEMORY[0x277D84F90];
  v99 = v1;
  while (1)
  {
    if (v96 == v6)
    {
      v89 = v1[18];
      v21 = v1[16];
      v22 = v1[13];
      v23 = v1[7];

      result = sub_23123CE3C(v80, v23);
      v24 = 0;
      v25 = MEMORY[0x277D84F90];
      v100 = MEMORY[0x277D84F90];
      v26 = result + 64;
      v91 = result;
      v27 = -1;
      v28 = -1 << *(result + 32);
      if (-v28 < 64)
      {
        v27 = ~(-1 << -v28);
      }

      v29 = v27 & *(result + 64);
      v30 = (63 - v28) >> 6;
      v88 = *MEMORY[0x277D72D28];
      v86 = *MEMORY[0x277D60CE8];
      v84 = (v22 + 104);
      v83 = *MEMORY[0x277D60CE0];
      v81 = (v21 + 8);
      v93 = v30;
      v95 = result + 64;
LABEL_19:
      v97 = v25;
      while (1)
      {
        while (1)
        {
          if (!v29)
          {
            while (1)
            {
              v31 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                break;
              }

              if (v31 >= v30)
              {
                v50 = v1[22];
                v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C20, &unk_23136FA70);
                __swift_storeEnumTagSinglePayload(v50, 1, 1, v51);
                v29 = 0;
                goto LABEL_27;
              }

              v29 = *(v26 + 8 * v31);
              ++v24;
              if (v29)
              {
                v24 = v31;
                goto LABEL_26;
              }
            }

            __break(1u);
            goto LABEL_47;
          }

          v31 = v24;
LABEL_26:
          v33 = v1[21];
          v32 = v1[22];
          v34 = __clz(__rbit64(v29));
          v29 &= v29 - 1;
          v35 = v34 | (v31 << 6);
          sub_23123EA8C(*(v91 + 48) + *(v89 + 72) * v35, v33, &qword_27DD437B8, &qword_23136FA60);
          v36 = *(*(v91 + 56) + 8 * v35);
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C20, &unk_23136FA70);
          v38 = *(v37 + 48);
          sub_23123E9F8(v33, v32, &qword_27DD437B8, &qword_23136FA60);
          *(v32 + v38) = v36;
          __swift_storeEnumTagSinglePayload(v32, 0, 1, v37);
          v1 = v99;
          sub_231369EE0();
LABEL_27:
          v39 = v1[23];
          sub_23123E9F8(v1[22], v39, &qword_27DD43C10, &qword_23136FA68);
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C20, &unk_23136FA70);
          if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
          {

            sub_231369150();
            v61 = sub_2313698A0();
            v62 = sub_23136A3A0();
            v63 = os_log_type_enabled(v61, v62);
            v64 = v1;
            v67 = v1 + 9;
            v66 = v1[9];
            v65 = v67[1];
            v68 = v64[8];
            if (v63)
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v101 = v70;
              *v69 = 136315138;
              v71 = sub_2313692F0();
              v72 = sub_231369EE0();
              v73 = MEMORY[0x23192A860](v72, v71);
              v75 = v74;

              v76 = sub_2311CFD58(v73, v75, &v101);

              *(v69 + 4) = v76;
              _os_log_impl(&dword_2311CB000, v61, v62, "AppEntityCountBasedSignalExtractor:: Return signals %s", v69, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v70);
              MEMORY[0x23192B930](v70, -1, -1);
              MEMORY[0x23192B930](v69, -1, -1);
            }

            (*(v66 + 8))(v65, v68);

            v77 = v99[1];

            return v77(v97);
          }

          v41 = v1[23];
          v42 = *(v41 + *(v40 + 48));
          sub_23123E9F8(v41, v1[20], &qword_27DD437B8, &qword_23136FA60);
          v43 = *(v42 + 16);

          v44 = v1[20];
          if (v43)
          {
            break;
          }

LABEL_31:
          result = sub_2311D1F18(v44, &qword_27DD437B8, &qword_23136FA60);
          v30 = v93;
          v26 = v95;
        }

        v45 = v1[19];
        sub_23123EA8C(v44, v45, &qword_27DD437B8, &qword_23136FA60);
        v46 = sub_231369D50();
        if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
        {
          v47 = v1[19];
          sub_2311D1F18(v1[20], &qword_27DD437B8, &qword_23136FA60);
          v44 = v47;
          goto LABEL_31;
        }

        if ((*(*(v46 - 8) + 88))(v1[19], v46) == v88)
        {
          v52 = v1[17];
          v53 = v1[14];
          v98 = v1[15];
          v54 = v1[11];
          v78 = v1[12];
          v55 = OUTLINED_FUNCTION_64();
          v56(v55);
          sub_231369EE0();
          sub_231369EE0();

          if (v43 == 1)
          {
            v57 = v83;
          }

          else
          {
            v57 = v86;
          }

          (*v84)(v53, v57, v78);
          sub_2313692F0();
          sub_231367E90();
          v58 = sub_231367B80();
          __swift_storeEnumTagSinglePayload(v54, 1, 1, v58);
          sub_2313691F0();
          sub_2311D1F18(v54, &qword_27DD43C08, &unk_2313708B0);
          (*v81)(v52, v98);

          MEMORY[0x23192A830](v59);
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23136A1C0();
          }

          v60 = v1[20];
          sub_23136A240();

          result = sub_2311D1F18(v60, &qword_27DD437B8, &qword_23136FA60);
          v25 = v100;
          v30 = v93;
          v26 = v95;
          goto LABEL_19;
        }

        sub_2311D1F18(v1[20], &qword_27DD437B8, &qword_23136FA60);
        v48 = OUTLINED_FUNCTION_64();
        result = v49(v48);
        v30 = v93;
        v26 = v95;
      }
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v7 = v1[26];
    v8 = v1[24];
    v94 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v92 = *(v90 + 72);
    (*(v90 + 16))(v1[31], v4 + v94 + v92 * v6, v1[28]);
    sub_231369680();
    (*v85)(v7, v87, v8);
    sub_23123EA44(&qword_27DD43C18, 255, MEMORY[0x277D1EB58], MEMORY[0x277D1EB78]);
    sub_23136A140();
    sub_23136A140();
    v9 = v1[27];
    v10 = v1[24];
    if (v1[2] == v1[4] && v1[3] == v1[5])
    {
      v14 = OUTLINED_FUNCTION_3_13();
      (v4)(v14);
      (v4)(v9, v10);

LABEL_11:
      v1 = v99;
      v15 = *v79;
      (*v79)(v99[30], v99[31], v99[28]);
      v16 = v80;
      v101 = v80;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2311F5958(0, *(v80 + 16) + 1, 1);
        v16 = v101;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2311F5958(v17 > 1, v18 + 1, 1);
        v16 = v101;
      }

      ++v6;
      v19 = v99[30];
      v20 = v99[28];
      *(v16 + 16) = v18 + 1;
      v80 = v16;
      result = v15(v16 + v94 + v18 * v92, v19, v20);
    }

    else
    {
      v12 = sub_23136A900();
      v13 = OUTLINED_FUNCTION_3_13();
      (v4)(v13);
      (v4)(v9, v10);

      if (v12)
      {
        goto LABEL_11;
      }

      v1 = v99;
      result = (*v82)(v99[31], v99[28]);
      ++v6;
    }
  }

LABEL_47:
  __break(1u);
  return result;
}