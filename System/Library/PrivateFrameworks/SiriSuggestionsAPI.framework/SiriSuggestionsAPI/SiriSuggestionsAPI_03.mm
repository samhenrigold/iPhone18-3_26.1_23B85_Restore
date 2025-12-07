uint64_t sub_1BFA410F8(uint64_t a1)
{
  v39 = sub_1BFAAE748();
  v2 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v37 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA58, &unk_1BFAB2A80);
  result = sub_1BFAAFD28();
  v5 = result;
  v6 = 0;
  v40 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v35 = *MEMORY[0x1E69D2AE8];
  v33 = result + 64;
  v34 = v2 + 104;
  v38 = v2;
  v32 = v2 + 32;
  v36 = result;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = v39;
      v19 = (*(v40 + 48) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v40 + 56) + 16 * v17);
      v23 = v22[1];
      v24 = v37;
      v25 = v38;
      *v37 = *v22;
      v24[1] = v23;
      (*(v25 + 104))(v24, v35, v18);
      *(v33 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v26 = v36;
      v27 = (*(v36 + 48) + 16 * v17);
      *v27 = v20;
      v27[1] = v21;
      v28 = v24;
      v5 = v26;
      result = (*(v25 + 32))(*(v26 + 56) + *(v25 + 72) * v17, v28, v18);
      v29 = *(v5 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v5 + 16) = v31;

      v12 = v41;
      if (!v41)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BFA41368(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BFAAEEF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for SiriSuggestions.Suggestion(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BFA42F90(&qword_1EBDFBA50, MEMORY[0x1E69D3090], MEMORY[0x1E69D30A0]);
  v12 = sub_1BFAAF848();
  if ((v12 & 1) == 0)
  {
    v32 = v12;
    if (qword_1EDCC7490 != -1)
    {
      swift_once();
    }

    v13 = sub_1BFAAF688();
    __swift_project_value_buffer(v13, qword_1EDCC6FF8);
    sub_1BFA1C998(a1, v11);
    (*(v6 + 16))(v8, a2, v5);
    v14 = sub_1BFAAF668();
    v15 = sub_1BFAAFB88();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v31 = v2;
      v17 = v16;
      v30 = swift_slowAlloc();
      v33 = v30;
      *v17 = 136315394;
      v29 = v15;
      sub_1BFA42F90(&qword_1EBDFBA38, MEMORY[0x1E69D3090], MEMORY[0x1E69D30B8]);
      v18 = sub_1BFAAFEE8();
      v20 = v19;
      sub_1BFA1C9FC(v11);
      v21 = sub_1BF9F88A8(v18, v20, &v33);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = sub_1BFAAFEE8();
      v24 = v23;
      (*(v6 + 8))(v8, v5);
      v25 = sub_1BF9F88A8(v22, v24, &v33);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_1BF9F6000, v14, v29, "suggestion is not set with the expected deliveryVehicle. %s != %s", v17, 0x16u);
      v26 = v30;
      swift_arrayDestroy();
      MEMORY[0x1BFB618C0](v26, -1, -1);
      MEMORY[0x1BFB618C0](v17, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
      sub_1BFA1C9FC(v11);
    }

    LOBYTE(v12) = v32;
  }

  return v12 & 1;
}

uint64_t sub_1BFA41764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1BFAAF1E8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA41828, 0, 0);
}

uint64_t sub_1BFA41828()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_1BFA418DC;
  v6 = v0[7];

  return MEMORY[0x1EEE407F8](v6, v2, v3);
}

uint64_t sub_1BFA418DC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA419C0()
{
  OUTLINED_FUNCTION_43();
  sub_1BFA3F690();
  v0 = OUTLINED_FUNCTION_46();
  v1(v0);

  OUTLINED_FUNCTION_36();

  return v2();
}

uint64_t static SiriRemembersLogger.getTypeForShownSuggestions(_:)()
{
  v0 = sub_1BFAAEEE8();
  MEMORY[0x1BFB60B80](v0);

  return 0x6567677553746547;
}

uint64_t static SiriRemembersLogger.getInteractionIdForSuggestionShown(requestId:interactionSuffix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1BFB60B80](a2, a3);
  static SiriRemembersLogger.getInteractionID(requestId:suffix:)(a1, 0xD000000000000010, 0x80000001BFAB8FC0);

  return OUTLINED_FUNCTION_46();
}

uint64_t static SiriRemembersLogger.getInteractionID(requestId:suffix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BFAAE398();

  MEMORY[0x1BFB60B80](95, 0xE100000000000000);

  MEMORY[0x1BFB60B80](a2, a3);

  return v6;
}

unint64_t sub_1BFA41BC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_1BFAAF938();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_1BFAAF988();

      return v5;
    }
  }

  __break(1u);
  return result;
}

void *SiriRemembersLogger.deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 72));
  return v0;
}

uint64_t SiriRemembersLogger.__deallocating_deinit()
{
  SiriRemembersLogger.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA41CFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriRemembersLogger.log(from:deliveryVehicle:generationId:)();
}

uint64_t sub_1BFA41DAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriRemembersLogger.logEngagement(for:with:invocationType:)();
}

uint64_t sub_1BFA41E5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDE28;

  return SiriRemembersLogger.logShadowSelected(candidates:deliveryVehicle:generationId:)();
}

uint64_t XPCRemembersDonator.donate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_12();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BFA41F38()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1BFA4202C;
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1BFA4202C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA4214C()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t sub_1BFA421A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  (*(v8 + 32))(v12 + v11, v10, v7);

  sub_1BFAAE718();
}

uint64_t sub_1BFA4230C(void *a1, char a2, void (*a3)(void *, void))
{
  a3(a1, a2 & 1);
  if (a2)
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
    return sub_1BFAAFA58();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
    return sub_1BFAAFA68();
  }
}

uint64_t sub_1BFA423DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDF08;

  return XPCRemembersDonator.donate(_:completion:)(a1, a2, a3);
}

void *InProcessRemembersDonator.init(writableStore:inProcessStore:)(uint64_t (*a1)(), uint64_t a2, uint64_t (*a3)(), uint64_t a4)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1BFA4254C;
  }

  if (a1)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v4[2] = v5;
  v4[3] = v6;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = sub_1BFA42564;
  }

  if (a3)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0;
  }

  v4[4] = v7;
  v4[5] = v8;
  return v4;
}

void sub_1BFA424D0(void *a1, char a2)
{
  v5 = sub_1BFAAE738();
  OUTLINED_FUNCTION_60_0(v5);
  sub_1BFA3E318(a1, a2 & 1, v2 + 16, v2 + ((*(v6 + 80) + 56) & ~*(v6 + 80)));
}

uint64_t InProcessRemembersDonator.donate(_:completion:)()
{
  OUTLINED_FUNCTION_40();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = sub_1BFAAE688();
  v1[8] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_109();
  v1[11] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA42630()
{
  OUTLINED_FUNCTION_72();
  v7 = v0;
  (*(v0[7] + 32))();
  sub_1BFAAE6E8();
  v1 = v0[7];
  v2 = *(v0[9] + 8);
  v3 = v2(v0[11], v0[8]);
  (*(v1 + 16))(v3);
  sub_1BFAAE728();
  v6 = v0[5];
  v2(v0[10], v0[8]);
  v6(0, 0);

  OUTLINED_FUNCTION_36();

  return v4();
}

uint64_t InProcessRemembersDonator.deinit()
{

  return v0;
}

uint64_t InProcessRemembersDonator.__deallocating_deinit()
{
  InProcessRemembersDonator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA42A74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return InProcessRemembersDonator.donate(_:completion:)();
}

uint64_t sub_1BFA42B24(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1BFA42B84(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t dispatch thunk of ShadowLogger.logShadowSelected(candidates:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16_3(a1, a2, a3, a4, a5);
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1BF9FDE28;
  v8 = OUTLINED_FUNCTION_21_2();

  return v10(v8);
}

uint64_t dispatch thunk of RemembersDonator.donate(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16_3(a1, a2, a3, a4, a5);
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1BF9FDF08;
  v8 = OUTLINED_FUNCTION_21_2();

  return v10(v8);
}

uint64_t sub_1BFA42EE4(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
  OUTLINED_FUNCTION_60_0(v5);
  v6 = *(v2 + 16);

  return sub_1BFA4230C(a1, a2 & 1, v6);
}

uint64_t sub_1BFA42F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BFA42FD8(id a1, char a2)
{
  if (a2)
  {
  }
}

void OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  __swift_destroy_boxed_opaque_existential_2Tm(a10);

  JUMPOUT(0x1BFB618C0);
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_1BFAAF688();
}

uint64_t SuggestionType.description.getter()
{
  v1 = *v0;
  v2 = 0x737567616DLL;
  if (v1)
  {
    v2 = 0x6169646E496E6170;
  }

  if (v1 < 0)
  {
    return v2;
  }

  else
  {
    return 0x6B6361426F67;
  }
}

void *sub_1BFA4312C()
{
  result = sub_1BFAAF7D8();
  off_1EDCC6708 = result;
  return result;
}

id sub_1BFA43170()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  qword_1EDCC6718 = result;
  return result;
}

uint64_t sub_1BFA431A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA60, &qword_1BFAB3480);
  __swift_allocate_value_buffer(v0, qword_1EDCCBD50);
  v1 = __swift_project_value_buffer(v0, qword_1EDCCBD50);
  return sub_1BFA431FC(v1);
}

uint64_t sub_1BFA431FC@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v1 = sub_1BFAAE288();
  v70 = *(v1 - 1);
  v71 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BFAAE308();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v72 = &v69 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v73 = &v69 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v75 = &v69 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v69 - v19;
  v21 = MEMORY[0x1BFB61290](v18);
  sub_1BFAAF868();

  sub_1BFAAE2A8();

  sub_1BFAAE2C8();
  v76 = *(v5 + 8);
  v76(v17, v4);
  sub_1BFA44F38();
  v74 = v5;
  v22 = *(v5 + 16);
  v77 = v20;
  v22(v17, v20, v4);
  v23 = sub_1BFA439EC(v17);
  if (!v23)
  {
    if (qword_1EDCC77C0 != -1)
    {
      swift_once();
    }

    v44 = sub_1BFAAF688();
    __swift_project_value_buffer(v44, qword_1EDCC77C8);
    v45 = v77;
    v22(v8, v77, v4);
    v46 = sub_1BFAAF668();
    v47 = sub_1BFAAFB78();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v79[0] = v49;
      *v48 = 136315138;
      v50 = sub_1BFAAE298();
      v52 = v51;
      v53 = v8;
      v54 = v76;
      v76(v53, v4);
      v55 = sub_1BF9F88A8(v50, v52, v79);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_1BF9F6000, v46, v47, "StaticSuggestionDialogCache: Not able to get the Bundle from the bundleURL %s. Returning nil CATTemplateDir URL", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v49);
      MEMORY[0x1BFB618C0](v49, -1, -1);
      MEMORY[0x1BFB618C0](v48, -1, -1);

      v54(v45, v4);
    }

    else
    {

      v67 = v76;
      v76(v8, v4);
      v67(v45, v4);
    }

    goto LABEL_19;
  }

  v24 = v23;
  v25 = [v23 resourceURL];
  if (!v25)
  {
    if (qword_1EDCC77C0 != -1)
    {
      swift_once();
    }

    v56 = sub_1BFAAF688();
    __swift_project_value_buffer(v56, qword_1EDCC77C8);
    v57 = sub_1BFAAF668();
    v58 = sub_1BFAAFB78();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v77;
    if (v59)
    {
      v61 = v24;
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1BF9F6000, v57, v58, "StaticSuggestionDialogCache: Not able to get the bundle.resourceURL. Returning nil CATTemplateDir URL", v62, 2u);
      v63 = v62;
      v24 = v61;
      MEMORY[0x1BFB618C0](v63, -1, -1);
    }

    v76(v60, v4);
LABEL_19:
    v66 = 1;
    v65 = v78;
    return __swift_storeEnumTagSinglePayload(v65, v66, 1, v4);
  }

  v26 = v25;
  v69 = v5 + 8;
  sub_1BFAAE2D8();

  v79[0] = 0x6574616C706D6554;
  v79[1] = 0xE900000000000073;
  v27 = v70;
  v28 = v71;
  (*(v70 + 104))(v3, *MEMORY[0x1E6968F58], v71);
  sub_1BF9F86D0();
  v29 = v73;
  sub_1BFAAE2F8();
  (*(v27 + 8))(v3, v28);
  if (qword_1EDCC77C0 != -1)
  {
    swift_once();
  }

  v30 = sub_1BFAAF688();
  __swift_project_value_buffer(v30, qword_1EDCC77C8);
  v31 = v72;
  v22(v72, v29, v4);
  v32 = sub_1BFAAF668();
  v33 = sub_1BFAAFB78();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v31;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v71 = v24;
    v37 = v36;
    v79[0] = v36;
    *v35 = 136315138;
    v38 = sub_1BFAAE298();
    v40 = v39;
    v41 = v34;
    v42 = v76;
    v76(v41, v4);
    v43 = sub_1BF9F88A8(v38, v40, v79);

    *(v35 + 4) = v43;
    _os_log_impl(&dword_1BF9F6000, v32, v33, "StaticSuggestionDialogCache inferred CAT file path using bundleResource path: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v37);
    MEMORY[0x1BFB618C0](v37, -1, -1);
    MEMORY[0x1BFB618C0](v35, -1, -1);

    v42(v75, v4);
    v42(v77, v4);
  }

  else
  {

    v64 = v76;
    v76(v31, v4);
    v64(v75, v4);
    v64(v77, v4);
  }

  v65 = v78;
  (*(v74 + 32))(v78, v29, v4);
  v66 = 0;
  return __swift_storeEnumTagSinglePayload(v65, v66, 1, v4);
}

id sub_1BFA439EC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1BFAAE2B8();
  v4 = [v2 initWithURL_];

  v5 = sub_1BFAAE308();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t static StaticSuggestionDialogCache.localeExistsInCache(locale:)(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (qword_1EDCC6710 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EDCC6710);
  }

  v4 = qword_1EDCC6718;

  [v4 lock];
  sub_1BF9F854C(a1, a2, &v6);
  [v4 unlock];

  return v6;
}

uint64_t sub_1BFA43B30(void *a1)
{
  [a1 lock];
  if (qword_1EDCC6700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_1BFA44C94(v3, sub_1BFA44C5C, 0, &off_1EDCC6708);
  if (v1)
  {
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    [a1 unlock];
  }

  return result;
}

uint64_t static StaticSuggestionDialogCache.prewarm()()
{
  sub_1BFAAEA08();
  v0[16] = swift_task_alloc();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA60, &qword_1BFAB3480);
  v0[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA43CEC, 0, 0);
}

uint64_t sub_1BFA43CEC()
{
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDCC77C0);
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC77C8);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BF9F6000, v2, v3, "Prewarm StaticSuggestionDialogCache", v4, 2u);
    OUTLINED_FUNCTION_94();
  }

  sub_1BFAAE998();
  v5 = sub_1BFAAE988();
  v0[19] = v5;
  if (qword_1EDCC6720 != -1)
  {
    swift_once();
  }

  v6 = v0[18];
  v7 = v0[16];
  v8 = __swift_project_value_buffer(v0[17], qword_1EDCCBD50);
  sub_1BFA44920(v8, v6);
  sub_1BFAAE9F8();
  v9 = type metadata accessor for FeatureAnnouncementCATsSimple();
  swift_allocObject();
  v10 = v5;
  v11 = sub_1BFAA88E0(v6, v7, v5);
  v0[20] = v11;
  sub_1BFA44920(v8, v6);
  sub_1BFAAE9F8();
  v12 = type metadata accessor for CrossDomainHintCATsSimple();
  swift_allocObject();
  v13 = sub_1BFA47B18(v6, v7, v5);
  v0[21] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA68, &qword_1BFAB2AA0);
  inited = swift_initStackObject();
  v0[22] = inited;
  *(inited + 16) = xmmword_1BFAB1400;
  *(inited + 56) = v9;
  *(inited + 64) = &off_1EDCC66E8;
  *(inited + 32) = v11;
  *(inited + 96) = v12;
  *(inited + 104) = &off_1EDCC6898;
  *(inited + 72) = v13;

  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_1BFA43F88;

  return sub_1BFA44120(inited);
}

uint64_t sub_1BFA43F88()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  swift_setDeallocating();
  sub_1BFA448C0();

  return MEMORY[0x1EEE6DFA0](sub_1BFA4409C, 0, 0);
}

uint64_t sub_1BFA4409C()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_85();

  return v2();
}

uint64_t sub_1BFA44140()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  v0[4] = 0;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_2_6(v3);

    return sub_1BFA4455C(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v8();
  }
}

uint64_t sub_1BFA44208()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {
    v5 = sub_1BFA443EC;
  }

  else
  {
    v5 = sub_1BFA44314;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BFA44314()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[3];
  v2 = v0[4] + 1;
  v0[4] = v2;
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_85();

    return v3();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[2] + 40 * v2 + 32), *(v0[2] + 40 * v2 + 56));
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_2_6(v5);

    return sub_1BFA4455C(v6, v7, v8);
  }
}

uint64_t sub_1BFA443EC()
{
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDCC77C0);
  }

  v1 = *(v0 + 48);
  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC77C8);
  v3 = v1;
  v4 = sub_1BFAAF668();
  v5 = sub_1BFAAFB88();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BF9F6000, v4, v5, "Was not able to execute FeatureAnnouncement or CrossDomainHint CATs. Error: %@", v8, 0xCu);
    sub_1BFA44BF4(v9);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {
  }

  OUTLINED_FUNCTION_85();

  return v12();
}

uint64_t sub_1BFA4455C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v8 = (*(a3 + 16) + **(a3 + 16));
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1BFA4467C;

  return v8(a2, a3);
}

uint64_t sub_1BFA4467C()
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v4 + 40) = v0;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1BFA447C0, 0, 0);
  }
}

uint64_t sub_1BFA447C0()
{
  OUTLINED_FUNCTION_43();
  swift_getAssociatedTypeWitness();
  sub_1BFAAFD08();

  if (qword_1EDCC6710 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EDCC6710);
  }

  v0 = qword_1EDCC6718;

  sub_1BFA43B30(v0);

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA448C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA70, &qword_1BFAB2B80);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA44920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA60, &qword_1BFAB3480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SuggestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7F)
  {
    if (a2 + 129 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 129) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 130;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v5 >= 0x7E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for SuggestionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7E)
  {
    v6 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
          *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StaticSuggestionDialogCache(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BFA44BF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA28, &qword_1BFAB28C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BFA44C5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BFAA214C((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BFA44C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1BFA44D08(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1BFA44D08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1BFAA44D8();
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;

  while (1)
  {
    sub_1BFAA2988(&v27);
    v7 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      sub_1BFA27FF0(v29);
    }

    v8 = v27;
    sub_1BFA27FE0(&v28, v26);
    v9 = *a5;
    v11 = sub_1BFA01764(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
        sub_1BFAAFCE8();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1BFAAB670();
      v15 = sub_1BFA01764(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_1BF9F8B40(v26, v25);
        __swift_destroy_boxed_opaque_existential_2Tm(v26);

        v18 = (v17[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_2Tm(v18);
        sub_1BFA27FE0(v25, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_1BFA27FE0(v26, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BFAAFF38();
  __break(1u);
  return result;
}

unint64_t sub_1BFA44F38()
{
  result = qword_1EDCC63E0;
  if (!qword_1EDCC63E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC63E0);
  }

  return result;
}

uint64_t sub_1BFA44F84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1BFA44FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA4502C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BFA4506C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1BFA450DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  MEMORY[0x1BFB60B80](v3, v4);
  v5 = sub_1BF9F8CE8();
  v6 = sub_1BFAAF858();

  [v5 setBool:1 forKey:v6];
}

uint64_t SiriHintsSuggestionsDispatcherFactory.createDispatcher(sink:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA451A4, 0, 0);
}

uint64_t sub_1BFA451A4()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 16);
  v1[3] = type metadata accessor for DispatchSELFLogger();
  v1[4] = &protocol witness table for DispatchSELFLogger;
  *v1 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v3;

  return v5();
}

uint64_t sub_1BFA45250(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDE28;

  return SiriHintsSuggestionsDispatcherFactory.createDispatcher(sink:)(a1);
}

uint64_t InAppSuggestionsDispatcherFactory.createDispatcher(sink:)@<X0>(void *a1@<X8>)
{
  v3 = *(*(v1 + 56) + 16);
  a1[3] = type metadata accessor for DispatchSELFLogger();
  a1[4] = &protocol witness table for DispatchSELFLogger;
  *a1 = v3;
}

uint64_t SELFDispatcherFactory.createDispatcher(sink:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[3] = type metadata accessor for DispatchSELFLogger();
  a1[4] = &protocol witness table for DispatchSELFLogger;
  *a1 = v3;
}

uint64_t InAppSuggestionsDispatcherFactory.logShownSuggestions(for:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_40();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v1[6] = v5;
  v1[7] = *(v5 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA45450, 0, 0);
}

uint64_t sub_1BFA45450()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 56);
    v18 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DC58(0, v2, 0);
    v3 = v18;
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = *(v0 + 64);
      sub_1BFA1C998(v5, v7);
      v8 = sub_1BFAAF1D8();
      v10 = v9;
      sub_1BFA1C9FC(v7);
      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1BFA2DC58((v11 > 1), v12 + 1, 1);
      }

      *(v18 + 16) = v12 + 1;
      v13 = v18 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  *(v0 + 72) = v3;
  *(v0 + 80) = *(*(*(v0 + 40) + 56) + 16);
  *(v0 + 104) = 0;

  v14 = swift_task_alloc();
  *(v0 + 88) = v14;
  *v14 = v0;
  v14[1] = sub_1BFA45600;
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);

  return DispatchSELFLogger.logUIActivity(generationId:suggestionIds:uiActivity:deliveryVehicle:)(v16, v3, (v0 + 104), v15);
}

uint64_t sub_1BFA45600()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1BFA45724, 0, 0);
}

uint64_t sub_1BFA45724()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v9 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1BFA45858;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v5, v6, v2, v3);
}

uint64_t sub_1BFA45858()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t InAppSuggestionsDispatcherFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));

  return v0;
}

uint64_t sub_1BFA4597C(void *a1)
{
  InAppSuggestionsDispatcherFactory.createDispatcher(sink:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1BFA459E0(void *a1)
{
  SELFDispatcherFactory.createDispatcher(sink:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t dispatch thunk of SuggestionsDispatcherFactory.createDispatcher(sink:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9FDE28;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1BFA45BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BFA45CB0;

  return NextSuggestionsProvider.getNextSuggestions(requestId:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFA45CB0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t NextSuggestionsProvider.getNextSuggestions(requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_15_0();
  v11 = (v5 + *v5);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_0(v6);
  *v7 = v8;
  v7[1] = sub_1BFA47AAC;
  v9 = OUTLINED_FUNCTION_11_6();

  return v11(v9);
}

uint64_t InteractionIdentifier.description.getter()
{
  if (*(v0 + 16))
  {
    v1 = 0x6E6F69737365737BLL;
  }

  else
  {
    v1 = 0x747365757165727BLL;
  }

  v3 = v1;
  MEMORY[0x1BFB60B80](*v0, *(v0 + 8));
  MEMORY[0x1BFB60B80](125, 0xE100000000000000);
  return v3;
}

uint64_t static InteractionIdentifier.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v26 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_1BFAAFF08();
        v28 = OUTLINED_FUNCTION_4_5();
        v30 = OUTLINED_FUNCTION_2_7(v28, v29);
        v32 = OUTLINED_FUNCTION_2_7(v30, v31);
        sub_1BF9FC184(v32, v33);
        v14 = OUTLINED_FUNCTION_4_5();
        goto LABEL_16;
      }

      v42 = OUTLINED_FUNCTION_2_7(v26, v2);
      v44 = OUTLINED_FUNCTION_2_7(v42, v43);
      sub_1BF9FC184(v44, v45);
      sub_1BF9FC184(v3, v2);
      return 1;
    }

LABEL_9:
    v16 = OUTLINED_FUNCTION_4_5();
    v18 = OUTLINED_FUNCTION_2_7(v16, v17);
    v20 = OUTLINED_FUNCTION_2_7(v18, v19);
    sub_1BF9FC184(v20, v21);
    v22 = OUTLINED_FUNCTION_4_5();
    sub_1BF9FC184(v22, v23);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v24 = 1;
    v34 = OUTLINED_FUNCTION_1_6();
    sub_1BF9FC17C(v34, v35);
    v36 = OUTLINED_FUNCTION_1_6();
    sub_1BF9FC17C(v36, v37);
    v38 = OUTLINED_FUNCTION_1_6();
    sub_1BF9FC184(v38, v39);
    v40 = OUTLINED_FUNCTION_1_6();
    sub_1BF9FC184(v40, v41);
    return v24;
  }

  v7 = sub_1BFAAFF08();
  v8 = OUTLINED_FUNCTION_4_5();
  sub_1BF9FC17C(v8, v9);
  v10 = OUTLINED_FUNCTION_1_6();
  sub_1BF9FC17C(v10, v11);
  v12 = OUTLINED_FUNCTION_1_6();
  sub_1BF9FC184(v12, v13);
  v14 = OUTLINED_FUNCTION_4_5();
LABEL_16:
  sub_1BF9FC184(v14, v15);
  return v7 & 1;
}

uint64_t sub_1BFA460B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BFAAFF08();

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

uint64_t sub_1BFA461CC(char a1)
{
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](a1 & 1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA46214(char a1)
{
  if (a1)
  {
    return 0x496E6F6973736573;
  }

  else
  {
    return 0x4974736575716572;
  }
}

uint64_t sub_1BFA4625C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BFAAFF08();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BFA462CC()
{
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](0);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA46334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA460B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA4635C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA4618C();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA46384(uint64_t a1)
{
  v2 = sub_1BFA46840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA463C0(uint64_t a1)
{
  v2 = sub_1BFA46840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA46420@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA46248();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BFA4644C(uint64_t a1)
{
  v2 = sub_1BFA468E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA46488(uint64_t a1)
{
  v2 = sub_1BFA468E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA464C4(uint64_t a1)
{
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](0);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA46504(uint64_t a1)
{
  v2 = sub_1BFA46894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA46540(uint64_t a1)
{
  v2 = sub_1BFA46894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InteractionIdentifier.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA78, &qword_1BFAB2E38);
  OUTLINED_FUNCTION_2_3();
  v27 = v4;
  v28 = v3;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA80, &qword_1BFAB2E40);
  OUTLINED_FUNCTION_2_3();
  v24 = v8;
  v25 = v7;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA88, &qword_1BFAB2E48);
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v18 = *v1;
  v29 = v1[1];
  v30 = v18;
  v19 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFA46840();
  sub_1BFAB0008();
  if (v19)
  {
    v32 = 1;
    sub_1BFA46894();
    v20 = v26;
    sub_1BFAAFE28();
    v21 = v28;
    sub_1BFAAFE78();
    (*(v27 + 8))(v20, v21);
  }

  else
  {
    v31 = 0;
    sub_1BFA468E8();
    sub_1BFAAFE28();
    v22 = v25;
    sub_1BFAAFE78();
    (*(v24 + 8))(v11, v22);
  }

  return (*(v14 + 8))(v17, v12);
}

unint64_t sub_1BFA46840()
{
  result = qword_1EBDFBA90;
  if (!qword_1EBDFBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBA90);
  }

  return result;
}

unint64_t sub_1BFA46894()
{
  result = qword_1EBDFBA98;
  if (!qword_1EBDFBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBA98);
  }

  return result;
}

unint64_t sub_1BFA468E8()
{
  result = qword_1EBDFBAA0;
  if (!qword_1EBDFBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBAA0);
  }

  return result;
}

uint64_t InteractionIdentifier.hash(into:)(uint64_t a1)
{
  MEMORY[0x1BFB611E0](*(v1 + 16));

  return sub_1BFAAF908();
}

uint64_t InteractionIdentifier.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v1);
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t InteractionIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBAA8, &qword_1BFAB2E50);
  OUTLINED_FUNCTION_2_3();
  v51 = v3;
  v52 = v4;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBAB0, &qword_1BFAB2E58);
  OUTLINED_FUNCTION_2_3();
  v50 = v7;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBAB8, &unk_1BFAB2E60);
  OUTLINED_FUNCTION_2_3();
  v53 = v12;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v48 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFA46840();
  v16 = v55;
  sub_1BFAAFFF8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v48[2] = v6;
  v49 = v10;
  v55 = a1;
  v17 = v54;
  v18 = sub_1BFAAFE18();
  result = sub_1BFA47038(v18, 0);
  if (v21 == v22 >> 1)
  {
    goto LABEL_7;
  }

  v48[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
    return result;
  }

  v23 = *(v20 + v21);
  v24 = sub_1BFA47A20(v21 + 1, v22 >> 1, result, v20, v21, v22);
  v26 = v25;
  v28 = v27;
  swift_unknownObjectRelease();
  if (v26 != v28 >> 1)
  {
LABEL_7:
    v34 = sub_1BFAAFC78();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBAC0, &qword_1BFAB5510);
    *v36 = &type metadata for InteractionIdentifier;
    sub_1BFAAFD78();
    sub_1BFAAFC68();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v37 = OUTLINED_FUNCTION_6_6();
    v38(v37, v11);
    a1 = v55;
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v29 = v11;
  v30 = v23;
  if (v23)
  {
    LODWORD(v50) = v23;
    v57 = 1;
    sub_1BFA46894();
    OUTLINED_FUNCTION_13_1(&type metadata for InteractionIdentifier.SessionIdCodingKeys, &v57);
    v31 = v17;
    v49 = v24;
    v32 = sub_1BFAAFDC8();
    v33 = v53;
    v40 = v32;
    v42 = v41;
    swift_unknownObjectRelease();
    v43 = OUTLINED_FUNCTION_12_7();
    v44(v43);
    v30 = v50;
  }

  else
  {
    v56 = 0;
    sub_1BFA468E8();
    OUTLINED_FUNCTION_13_1(&type metadata for InteractionIdentifier.RequestIdCodingKeys, &v56);
    v31 = v17;
    v39 = sub_1BFAAFDC8();
    v42 = v45;
    v52 = v39;
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_10_4();
    v47(v46);
    v40 = v52;
    v33 = v53;
  }

  (*(v33 + 8))(v15, v29);
  *v31 = v40;
  *(v31 + 8) = v42;
  *(v31 + 16) = v30;
  return __swift_destroy_boxed_opaque_existential_2Tm(v55);
}

uint64_t sub_1BFA46F08(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v2);
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t InteractionIdentifierType.hashValue.getter()
{
  v1 = *v0;
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA47038(uint64_t result, uint64_t a2)
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

unint64_t sub_1BFA47084()
{
  result = qword_1EDCC7BF8[0];
  if (!qword_1EDCC7BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC7BF8);
  }

  return result;
}

unint64_t sub_1BFA470DC()
{
  result = qword_1EDCC7988;
  if (!qword_1EDCC7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7988);
  }

  return result;
}

uint64_t dispatch thunk of NextSuggestionsProvider.getNextSuggestions(requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_15_0();
  v11 = (v5 + *v5);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16_0(v6);
  *v7 = v8;
  v7[1] = sub_1BFA47AAC;
  v9 = OUTLINED_FUNCTION_11_6();

  return v11(v9);
}

uint64_t dispatch thunk of NextSuggestionsProvider.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_15_0();
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_16_0(v15);
  *v16 = v17;
  v16[1] = sub_1BFA45CB0;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of NextSuggestionsProvider.refreshService()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BFA45CB0;

  return v7(a1, a2);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BFA474BC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BFA474FC(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BFA4756C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BFA47658(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BFA47708()
{
  result = qword_1EBDFBAC8;
  if (!qword_1EBDFBAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBAC8);
  }

  return result;
}

unint64_t sub_1BFA47760()
{
  result = qword_1EBDFBAD0;
  if (!qword_1EBDFBAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBAD0);
  }

  return result;
}

unint64_t sub_1BFA477B8()
{
  result = qword_1EBDFBAD8;
  if (!qword_1EBDFBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBAD8);
  }

  return result;
}

unint64_t sub_1BFA47810()
{
  result = qword_1EBDFBAE0;
  if (!qword_1EBDFBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBAE0);
  }

  return result;
}

unint64_t sub_1BFA47868()
{
  result = qword_1EBDFBAE8;
  if (!qword_1EBDFBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBAE8);
  }

  return result;
}

unint64_t sub_1BFA478C0()
{
  result = qword_1EBDFBAF0;
  if (!qword_1EBDFBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBAF0);
  }

  return result;
}

unint64_t sub_1BFA47918()
{
  result = qword_1EBDFBAF8;
  if (!qword_1EBDFBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBAF8);
  }

  return result;
}

unint64_t sub_1BFA47970()
{
  result = qword_1EBDFBB00;
  if (!qword_1EBDFBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBB00);
  }

  return result;
}

unint64_t sub_1BFA479C8()
{
  result = qword_1EBDFBB08;
  if (!qword_1EBDFBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBB08);
  }

  return result;
}

uint64_t sub_1BFA47A20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t sub_1BFA47B18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1BFAAEA08();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA60, &qword_1BFAB3480);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1BFA44920(a1, &v17 - v13);
  (*(v9 + 16))(v11, a2, v8);
  sub_1BFAAE9C8();
  swift_allocObject();
  v14 = a3;
  v15 = sub_1BFAAE9B8();
  (*(v9 + 8))(a2, v8);
  sub_1BFA47E18(a1);
  *(v4 + 16) = v15;
  *(v4 + 24) = a3;
  return v4;
}

BOOL sub_1BFA47CDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BFAAFD58();

  return v2 != 0;
}

BOOL sub_1BFA47D48@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BFA47CDC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BFA47D98()
{

  return v0;
}

uint64_t sub_1BFA47DC0()
{
  sub_1BFA47D98();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA47E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA60, &qword_1BFAB3480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for CrossDomainHintCATsSimple.GoBackDialogIds(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BFA47F30()
{
  result = qword_1EBDFBB10;
  if (!qword_1EBDFBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBB10);
  }

  return result;
}

uint64_t sub_1BFA47F84(uint64_t a1)
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

  result = sub_1BFA4BEFC(result, 1, sub_1BFA1F110);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB730, &qword_1BFAB3760);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BFA48074(uint64_t a1)
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

  sub_1BFA4BEFC(result, 1, sub_1BFA1F698);
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
  result = sub_1BFAAEEA8();
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

uint64_t sub_1BFA481A0()
{
  if (qword_1EDCC77C0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BFAAF688();
  __swift_project_value_buffer(v0, qword_1EDCC77C8);
  v1 = sub_1BFAAF668();
  v2 = sub_1BFAAFB88();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF9F6000, v1, v2, "No salient entity service configured. returning no entities", v3, 2u);
    OUTLINED_FUNCTION_94();
  }

  OUTLINED_FUNCTION_24_0();
  v5 = MEMORY[0x1E69E7CC0];

  return v4(v5);
}

uint64_t sub_1BFA482B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BFA4C09C;

  return NoOpSalientEntitiesService.getSalientEntities()();
}

uint64_t RRSalientEntitiesService.__allocating_init()()
{
  v0 = sub_1BFA48400();
  v1 = swift_allocObject();
  sub_1BFA486A8(sub_1BFA483C0, 0, v0);
  return v1;
}

uint64_t sub_1BFA483C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BFAAF638();
  result = sub_1BFAAF628();
  a1[3] = v2;
  a1[4] = &off_1F3F09798;
  *a1 = result;
  return result;
}

uint64_t sub_1BFA48400()
{
  v22 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB728, &unk_1BFAB14F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFAB1400;
  sub_1BFA5FDFC((inited + 32));
  sub_1BFA5FE3C((inited + 72));
  sub_1BFA47F84(inited);
  v1 = *(v22 + 16);
  if (v1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    v14[1] = v22;
    v3 = v22 + 32;
    do
    {
      sub_1BFA4BE78(v3, &v19, &qword_1EBDFB730, &qword_1BFAB3760);
      v16 = v20;
      v15 = v19;
      v17 = v21;
      if (*(&v20 + 1))
      {
        sub_1BF9FA474(&v15, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BFA1F044();
          v2 = v11;
        }

        v4 = *(v2 + 16);
        if (v4 >= *(v2 + 24) >> 1)
        {
          sub_1BFA1F044();
          v2 = v12;
        }

        v5 = __swift_mutable_project_boxed_opaque_existential_1Tm(v18, v18[3]);
        MEMORY[0x1EEE9AC00](v5);
        v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v8 + 16))(v7);
        v9 = *v7;
        v10 = type metadata accessor for UsoSalientEntityExtractor(0);
        v17 = &off_1F3F0A010;
        *(&v16 + 1) = v10;
        *&v15 = v9;
        *(v2 + 16) = v4 + 1;
        sub_1BF9FA474(&v15, v2 + 40 * v4 + 32);
        __swift_destroy_boxed_opaque_existential_2Tm(v18);
      }

      else
      {
        sub_1BFA20F44(&v15, &qword_1EBDFB730, &qword_1BFAB3760);
      }

      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

void *sub_1BFA486A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BFAAF688();
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v4[2] = a1;
  v4[3] = a2;

  sub_1BFAAF228();

  v15 = sub_1BFAAF668();
  v16 = sub_1BFAAFB78();

  if (os_log_type_enabled(v15, v16))
  {
    v25 = v10;
    v17 = OUTLINED_FUNCTION_51_0();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB720, &unk_1BFAB3750);
    v20 = MEMORY[0x1BFB60C30](a3, v19);
    v24 = v8;
    v22 = sub_1BF9F88A8(v20, v21, &v26);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1BF9F6000, v15, v16, "Started SalientEntitiesService with extractords: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v18);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();

    (*(v25 + 8))(v14, v24);
  }

  else
  {

    (*(v10 + 8))(v14, v8);
  }

  v4[4] = a3;
  return v4;
}

char *sub_1BFA488A0(void *a1, void *a2)
{
  v5 = sub_1BFAAF688();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BFAAF228();
  sub_1BF9F94C4(a1, v25);
  v9 = sub_1BFAAF668();
  v10 = sub_1BFAAFB78();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v5;
    v12 = v11;
    v20 = swift_slowAlloc();
    v26 = v20;
    *v12 = 136315138;
    v22 = v2;
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    DynamicType = swift_getDynamicType();
    v24 = v25[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB68, &qword_1BFAB3748);
    v13 = sub_1BFAAF8B8();
    v14 = a2;
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_2Tm(v25);
    v17 = sub_1BF9F88A8(v13, v16, &v26);
    a2 = v14;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BF9F6000, v9, v10, "RRSalientEntitiesService:: Querying for %s", v12, 0xCu);
    v18 = v20;
    __swift_destroy_boxed_opaque_existential_2Tm(v20);
    MEMORY[0x1BFB618C0](v18, -1, -1);
    MEMORY[0x1BFB618C0](v12, -1, -1);

    (*(v6 + 8))(v8, v21);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_2Tm(v25);
    (*(v6 + 8))(v8, v5);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1BFA60BC4(a2);
}

uint64_t sub_1BFA48B10()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 56);
  (*(v1 + 16))();
  v2 = *(v1 + 32);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0 + 16;
  v4 = sub_1BFA48C1C(sub_1BFA4BA54, v3, v2);

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  OUTLINED_FUNCTION_24_0();

  return v5(v4);
}

char *sub_1BFA48BE8@<X0>(void *a1@<X0>, void *a2@<X2>, char **a3@<X8>)
{
  result = sub_1BFA488A0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1BFA48C1C(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = a3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v6;
  }

  while (1)
  {
    result = (a1)(&v20, v5, a2);
    if (v3)
    {

      return v6;
    }

    v8 = v20;
    v9 = *(v20 + 16);
    v10 = *(v6 + 16);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v11 > *(v6 + 24) >> 1)
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      sub_1BFA1F290(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      v6 = v14;
    }

    if (*(v8 + 16))
    {
      v15 = (*(v6 + 24) >> 1) - *(v6 + 16);
      result = sub_1BFAAEDA8();
      if (v15 < v9)
      {
        goto LABEL_22;
      }

      swift_arrayInitWithCopy();

      if (v9)
      {
        v16 = *(v6 + 16);
        v17 = __OFADD__(v16, v9);
        v18 = v16 + v9;
        if (v17)
        {
          goto LABEL_23;
        }

        *(v6 + 16) = v18;
      }
    }

    else
    {

      if (v9)
      {
        goto LABEL_21;
      }
    }

    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t RRSalientEntitiesService.deinit()
{

  return v0;
}

uint64_t RRSalientEntitiesService.__deallocating_deinit()
{
  RRSalientEntitiesService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA48E08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BFA4C09C;

  return RRSalientEntitiesService.getSalientEntities()();
}

BOOL sub_1BFA48E98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB70, &qword_1BFAB3768);
  OUTLINED_FUNCTION_60_0(v1);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v2);
  v93 = OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_0();
  v99 = v6 - v7;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_4();
  v9 = sub_1BFAAF698();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10();
  v98 = v17;
  OUTLINED_FUNCTION_7_4();
  v18 = sub_1BFAAF738();
  OUTLINED_FUNCTION_2_3();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  sub_1BFAAF6B8();
  v25 = sub_1BFAAF718();
  (*(v20 + 8))(v24, v18);
  v26 = *(v25 + 16);
  v92 = v4;
  if (v26)
  {
    v27 = v11 + 16;
    OUTLINED_FUNCTION_12_1();
    v29 = v25 + v28;
    v96 = *(v27 + 56);
    v97 = v30;
    v95 = (v27 + 16);
    v94 = *MEMORY[0x1E69D27E8];
    v31 = (v4 + 32);
    v100 = MEMORY[0x1E69E7CC0];
    v32 = v93;
    do
    {
      v97(v98, v29, v9);
      (*v95)(v15, v98, v9);
      v33 = OUTLINED_FUNCTION_3_6();
      if (v34(v33) == v94)
      {
        v35 = OUTLINED_FUNCTION_3_6();
        v36(v35);
        v37 = OUTLINED_FUNCTION_18_5();
        v38(v37);
        __swift_storeEnumTagSinglePayload(v0, 0, 1, v32);
      }

      else
      {
        v39 = OUTLINED_FUNCTION_8_2();
        __swift_storeEnumTagSinglePayload(v39, v40, 1, v32);
        v41 = OUTLINED_FUNCTION_3_6();
        v42(v41);
      }

      v43 = OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_9_2(v43, v44, v32);
      if (v45)
      {
        sub_1BFA20F44(v0, &qword_1EBDFBB70, &qword_1BFAB3768);
      }

      else
      {
        v46 = v27;
        v47 = *v31;
        (*v31)(v99, v0, v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v100;
        }

        else
        {
          v55 = OUTLINED_FUNCTION_36_1();
          sub_1BFA1F6D8(v55, v56, v57, v58);
          v49 = v59;
        }

        v51 = *(v49 + 16);
        v50 = *(v49 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1BFA1F6D8(v50 > 1, v51 + 1, 1, v49);
          v49 = v60;
        }

        *(v49 + 16) = v51 + 1;
        v32 = v93;
        OUTLINED_FUNCTION_12_1();
        v100 = v52;
        v47(v52 + v53 + *(v54 + 72) * v51, v99, v93);
        v27 = v46;
      }

      v29 += v96;
      --v26;
    }

    while (v26);
  }

  v61 = *(v92 + 104);
  v62 = OUTLINED_FUNCTION_23_2();
  v63 = v61(v62);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_4_6();
  v64 = OUTLINED_FUNCTION_26_0();
  v67 = sub_1BFA14214(v64, v65, v66);
  v68 = *(v92 + 8);
  v69 = OUTLINED_FUNCTION_34_2();
  v68(v69);
  if (v67)
  {

    return 0;
  }

  else
  {
    v71 = OUTLINED_FUNCTION_23_2();
    v72 = v61(v71);
    MEMORY[0x1EEE9AC00](v72);
    OUTLINED_FUNCTION_4_6();
    v73 = OUTLINED_FUNCTION_26_0();
    v76 = sub_1BFA14214(v73, v74, v75);
    v77 = OUTLINED_FUNCTION_34_2();
    v68(v77);
    if (v76 || (v78 = OUTLINED_FUNCTION_23_2(), v79 = v61(v78), MEMORY[0x1EEE9AC00](v79), OUTLINED_FUNCTION_4_6(), v80 = OUTLINED_FUNCTION_26_0(), v83 = sub_1BFA14214(v80, v81, v82), v84 = OUTLINED_FUNCTION_34_2(), v68(v84), v83))
    {

      return 1;
    }

    else
    {
      v85 = OUTLINED_FUNCTION_23_2();
      v86 = v61(v85);
      MEMORY[0x1EEE9AC00](v86);
      OUTLINED_FUNCTION_4_6();
      v87 = OUTLINED_FUNCTION_26_0();
      v70 = sub_1BFA14214(v87, v88, v89);

      v90 = OUTLINED_FUNCTION_34_2();
      v68(v90);
    }
  }

  return v70;
}

BOOL sub_1BFA494C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB70, &qword_1BFAB3768);
  OUTLINED_FUNCTION_60_0(v1);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_29_2();
  OUTLINED_FUNCTION_2_3();
  v74 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_0();
  v81 = v6 - v7;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v68 - v9;
  v11 = sub_1BFAAF698();
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10();
  v80 = v19;
  OUTLINED_FUNCTION_7_4();
  v20 = sub_1BFAAF738();
  OUTLINED_FUNCTION_2_3();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v26 = v25 - v24;
  sub_1BFAAF6B8();
  v27 = sub_1BFAAF718();
  (*(v22 + 8))(v26, v20);
  v28 = v27;
  v29 = *(v27 + 16);
  if (v29)
  {
    v68[1] = v28;
    v69 = v10;
    v30 = v13 + 16;
    OUTLINED_FUNCTION_12_1();
    v33 = v31 + v32;
    v78 = *(v30 + 56);
    v79 = v34;
    v76 = v30 + 72;
    v77 = (v30 + 16);
    v75 = *MEMORY[0x1E69D27E8];
    v70 = v30 + 80;
    v71 = v30 - 8;
    v35 = (v74 + 32);
    v36 = MEMORY[0x1E69E7CC0];
    v72 = v30;
    v73 = v3;
    do
    {
      v37 = v80;
      v79(v80, v33, v11);
      (*v77)(v17, v37, v11);
      v38 = OUTLINED_FUNCTION_3_6();
      v40 = v39(v38);
      if (v40 == v75)
      {
        v41 = OUTLINED_FUNCTION_3_6();
        v42(v41);
        v43 = OUTLINED_FUNCTION_18_5();
        v44(v43);
        __swift_storeEnumTagSinglePayload(v0, 0, 1, v3);
      }

      else
      {
        v45 = OUTLINED_FUNCTION_8_2();
        __swift_storeEnumTagSinglePayload(v45, v46, 1, v3);
        v47 = OUTLINED_FUNCTION_3_6();
        v48(v47);
      }

      v49 = OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_9_2(v49, v50, v3);
      if (v51)
      {
        sub_1BFA20F44(v0, &qword_1EBDFBB70, &qword_1BFAB3768);
      }

      else
      {
        v52 = *v35;
        (*v35)(v81, v0, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = OUTLINED_FUNCTION_36_1();
          sub_1BFA1F6D8(v59, v60, v61, v36);
          v36 = v62;
        }

        v55 = *(v36 + 16);
        v54 = *(v36 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1BFA1F6D8(v54 > 1, v55 + 1, 1, v36);
          v36 = v63;
        }

        *(v36 + 16) = v55 + 1;
        OUTLINED_FUNCTION_12_1();
        v58 = v36 + v56 + *(v57 + 72) * v55;
        v3 = v73;
        v52(v58, v81, v73);
      }

      v33 += v78;
      --v29;
    }

    while (v29);

    v10 = v69;
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
  }

  v64 = v74;
  v65 = (*(v74 + 104))(v10, *MEMORY[0x1E69D28F0], v3);
  MEMORY[0x1EEE9AC00](v65);
  v68[-2] = v10;
  v66 = sub_1BFA14214(sub_1BFA4BEDC, &v68[-4], v36);

  (*(v64 + 8))(v10, v3);
  return v66;
}

uint64_t sub_1BFA499B4()
{
  type metadata accessor for IFSalientEntitiesService();
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  v0 = swift_allocObject();
  result = sub_1BFA49A68(v2, 2u);
  qword_1EDCC6A10 = v0;
  return result;
}

uint64_t static IFSalientEntitiesService.instance.getter()
{
  if (qword_1EDCC6A08 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BFA49A68(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = a2;
  sub_1BFA4BE78(a1, v3 + 16, &qword_1EBDFBB18, &unk_1BFAB3580);
  if (v6 == 2 || (a2 & 1) == 0)
  {
    sub_1BFAAF0E8();
    sub_1BFAAF0D8();
    v8 = sub_1BFAAEBB8();
    v11[3] = v8;
    v11[4] = sub_1BFA4BE30(&qword_1EDCC6500, MEMORY[0x1E69D2E28], MEMORY[0x1E69D2E20]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11);
    (*(*(v8 - 8) + 104))(boxed_opaque_existential_1Tm, *MEMORY[0x1E69D2E18], v8);
    LOBYTE(v8) = sub_1BFAAF0C8();

    sub_1BFA20F44(a1, &qword_1EBDFBB18, &unk_1BFAB3580);
    __swift_destroy_boxed_opaque_existential_2Tm(v11);
    v7 = v8 & 1;
  }

  else
  {
    sub_1BFA20F44(a1, &qword_1EBDFBB18, &unk_1BFAB3580);
    v7 = 1;
  }

  *(v3 + 56) = v7;
  return v3;
}

uint64_t sub_1BFA49BC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB60, &qword_1BFAB3740);
  v0 = sub_1BFAAF558();
  OUTLINED_FUNCTION_2_3();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BFAB3540;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  (v8)(v7, *MEMORY[0x1E69A9008], v0);
  (v8)(v7 + v4, *MEMORY[0x1E69A9078], v0);
  (v8)(v7 + 2 * v4, *MEMORY[0x1E69A9068], v0);
  v9 = OUTLINED_FUNCTION_17_2(3 * v4);
  v8(v9);
  (v8)(v7 + 4 * v4, *MEMORY[0x1E69A9058], v0);
  v10 = OUTLINED_FUNCTION_17_2(5 * v4);
  v8(v10);
  (v8)(v7 + 6 * v4, *MEMORY[0x1E69A8FD0], v0);
  v11 = OUTLINED_FUNCTION_17_2(7 * v4);
  v8(v11);
  (v8)(v7 + 8 * v4, *MEMORY[0x1E69A8FF8], v0);
  v12 = OUTLINED_FUNCTION_17_2(9 * v4);
  v8(v12);
  (v8)(v7 + 10 * v4, *MEMORY[0x1E69A9070], v0);
  (v8)(v7 + 11 * v4, *MEMORY[0x1E69A9028], v0);
  (v8)(v7 + 12 * v4, *MEMORY[0x1E69A9030], v0);
  (v8)(v7 + 13 * v4, *MEMORY[0x1E69A9010], v0);
  (v8)(v7 + 14 * v4, *MEMORY[0x1E69A9018], v0);
  v13 = OUTLINED_FUNCTION_17_2(15 * v4);
  v8(v13);
  (v8)(v7 + 16 * v4, *MEMORY[0x1E69A9000], v0);
  return v6;
}

uint64_t IFSalientEntitiesService.getSalientEntities()()
{
  OUTLINED_FUNCTION_40();
  v1[12] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9A0, &qword_1BFAB2620);
  OUTLINED_FUNCTION_60_0(v2);
  v1[13] = swift_task_alloc();
  v3 = sub_1BFAAEDA8();
  v1[14] = v3;
  OUTLINED_FUNCTION_15(v3);
  v1[15] = v4;
  v1[16] = swift_task_alloc();
  v5 = sub_1BFAAF5D8();
  v1[17] = v5;
  OUTLINED_FUNCTION_15(v5);
  v1[18] = v6;
  v1[19] = swift_task_alloc();
  v7 = sub_1BFAAF688();
  v1[20] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[21] = v8;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA4A070, 0, 0);
}

uint64_t sub_1BFA4A070()
{
  v26 = v0;
  v1 = *(v0 + 96);
  if (*(v1 + 56) == 1)
  {
    sub_1BFA4BE78(v1 + 16, v0 + 56, &qword_1EBDFBB18, &unk_1BFAB3580);
    if (*(v0 + 80))
    {
      sub_1BF9FA474((v0 + 56), v0 + 16);
    }

    else
    {
      v5 = sub_1BFAAF608();
      swift_allocObject();
      v6 = sub_1BFAAF5F8();
      *(v0 + 40) = v5;
      *(v0 + 48) = &off_1F3F097B8;
      *(v0 + 16) = v6;
      if (*(v0 + 80))
      {
        sub_1BFA20F44(v0 + 56, &qword_1EBDFBB18, &unk_1BFAB3580);
      }
    }

    sub_1BFAAF228();

    v7 = sub_1BFAAF668();
    v8 = sub_1BFAAFB78();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 192);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    if (v9)
    {
      v24 = *(v0 + 192);
      v13 = OUTLINED_FUNCTION_51_0();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      sub_1BFA49BC4();
      sub_1BFAAF558();
      v15 = sub_1BFAAEE08();
      v17 = v16;

      v18 = sub_1BF9F88A8(v15, v17, &v25);

      *(v13 + 4) = v18;
      OUTLINED_FUNCTION_30_2(&dword_1BF9F6000, v19, v20, "IFSalientEntitiesService:: Querying for:\n%s");
      __swift_destroy_boxed_opaque_existential_2Tm(v14);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();

      v21 = *(v11 + 8);
      v21(v24, v12);
    }

    else
    {

      v21 = *(v11 + 8);
      v21(v10, v12);
    }

    *(v0 + 200) = v21;
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v22 = sub_1BFA49BC4();
    *(v0 + 208) = v22;
    v23 = swift_task_alloc();
    *(v0 + 216) = v23;
    *v23 = v0;
    v23[1] = sub_1BFA4A370;

    return MEMORY[0x1EEE12048](v22);
  }

  else
  {
    OUTLINED_FUNCTION_19_1();

    OUTLINED_FUNCTION_24_0();
    v3 = MEMORY[0x1E69E7CC0];

    return v2(v3);
  }
}

uint64_t sub_1BFA4A370()
{
  OUTLINED_FUNCTION_40();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v5 + 224) = v4;
  *(v5 + 232) = v0;

  if (v0)
  {
    v6 = sub_1BFA4A804;
  }

  else
  {
    v6 = sub_1BFA4A498;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BFA4A498(uint64_t a1)
{
  v47 = v1;
  sub_1BFAAF228();

  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB78();

  if (os_log_type_enabled(v2, v3))
  {
    v45 = v1[25];
    v4 = v1[23];
    v5 = v1[20];
    v6 = OUTLINED_FUNCTION_51_0();
    v7 = swift_slowAlloc();
    v46 = v7;
    *v6 = 136315138;
    v8 = sub_1BFAAEE08();
    v10 = sub_1BF9F88A8(v8, v9, &v46);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_30_2(&dword_1BF9F6000, v11, v12, "IFSalientEntitiesService:: Retrieved:\n%s");
    __swift_destroy_boxed_opaque_existential_2Tm(v7);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();

    v45(v4, v5);
  }

  else
  {
    v13 = v1[25];
    v14 = v1[23];
    v15 = v1[20];

    v13(v14, v15);
  }

  v16 = *(v1[28] + 16);
  if (v16)
  {
    v44 = *(v1[18] + 16);
    OUTLINED_FUNCTION_12_1();
    v19 = v17 + v18;
    v43 = *(v20 + 56);
    v21 = (v20 - 8);
    v23 = (v22 + 32);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v25 = v1[19];
      v26 = v1[17];
      v28 = v1[13];
      v27 = v1[14];
      v44(v25, v19, v26);
      sub_1BFA4A9A4(v28);
      (*v21)(v25, v26);
      OUTLINED_FUNCTION_9_2(v28, 1, v27);
      if (v29)
      {
        sub_1BFA20F44(v1[13], &qword_1EBDFB9A0, &qword_1BFAB2620);
      }

      else
      {
        v30 = *v23;
        (*v23)(v1[16], v1[13], v1[14]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = OUTLINED_FUNCTION_36_1();
          sub_1BFA1F290(v36, v37, v38, v24);
          v24 = v39;
        }

        v33 = *(v24 + 16);
        v32 = *(v24 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1BFA1F290(v32 > 1, v33 + 1, 1, v24);
          v24 = v40;
        }

        *(v24 + 16) = v33 + 1;
        OUTLINED_FUNCTION_12_1();
        v30(v24 + v34 + *(v35 + 72) * v33);
      }

      v19 += v43;
      --v16;
    }

    while (v16);
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v1 + 2);

  OUTLINED_FUNCTION_24_0();

  return v41(v24);
}

uint64_t sub_1BFA4A804()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[29];
  sub_1BFAAF228();
  v2 = v1;
  v3 = sub_1BFAAF668();
  v4 = sub_1BFAAFB88();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v6 = OUTLINED_FUNCTION_51_0();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BF9F6000, v3, v4, "IFSalientEntitiesService:: Error retrieving context: %@", v6, 0xCu);
    sub_1BFA20F44(v7, &qword_1EBDFBA28, &qword_1BFAB28C0);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  v10 = v0[29];
  v11 = v0[25];
  v12 = v0[22];
  v13 = v0[20];

  v11(v12, v13);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  OUTLINED_FUNCTION_19_1();

  OUTLINED_FUNCTION_24_0();
  v15 = MEMORY[0x1E69E7CC0];

  return v14(v15);
}

uint64_t sub_1BFA4A9A4@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB38, &qword_1BFAB3738);
  OUTLINED_FUNCTION_60_0(v1);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v2);
  v111 = &v99 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB20, &qword_1BFAB3720);
  v5 = OUTLINED_FUNCTION_60_0(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_0();
  v112 = v6 - v7;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v99 - v9;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10();
  v103 = v11;
  OUTLINED_FUNCTION_7_4();
  v12 = sub_1BFAAEFB8();
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10();
  v101 = v20;
  OUTLINED_FUNCTION_7_4();
  v102 = sub_1BFAAF308();
  OUTLINED_FUNCTION_2_3();
  v100 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v106 = v24 - v23;
  OUTLINED_FUNCTION_7_4();
  v99 = sub_1BFAAF778();
  OUTLINED_FUNCTION_2_3();
  v105 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v104 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB28, &qword_1BFAB3728);
  OUTLINED_FUNCTION_60_0(v29);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v99 - v31;
  sub_1BFAAF788();
  OUTLINED_FUNCTION_2_3();
  v108 = v34;
  v109 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_0();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_10();
  v107 = v39;
  OUTLINED_FUNCTION_7_4();
  v40 = sub_1BFAAF558();
  OUTLINED_FUNCTION_2_3();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2();
  v46 = v45 - v44;
  sub_1BFAAF5A8();
  if ((*(v42 + 88))(v46, v40) != *MEMORY[0x1E69A9008])
  {
    v115 = sub_1BFAAF5D8();
    v48 = MEMORY[0x1E69A90D0];
    v116 = sub_1BFA4BE30(&qword_1EBDFBB40, MEMORY[0x1E69A90D0], MEMORY[0x1E69A90E0]);
    v117 = sub_1BFA4BE30(&qword_1EBDFBB48, v48, MEMORY[0x1E69A90D8]);
    __swift_allocate_boxed_opaque_existential_1Tm(v114);
    OUTLINED_FUNCTION_5_3();
    (*(v49 + 16))();
    (*(v14 + 104))(v18, *MEMORY[0x1E69D30F8], v12);
    v50 = v111;
    sub_1BFAAF5B8();
    v51 = sub_1BFAAF578();
    v52 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_9_2(v52, v53, v51);
    if (v81)
    {
      sub_1BFA20F44(v50, &qword_1EBDFBB38, &qword_1BFAB3738);
      v54 = v112;
    }

    else
    {
      v78 = v110;
      sub_1BFAAF568();
      OUTLINED_FUNCTION_5_3();
      (*(v79 + 8))(v50, v51);
      v80 = sub_1BFAAF548();
      OUTLINED_FUNCTION_9_2(v78, 1, v80);
      v54 = v112;
      if (!v81)
      {
        sub_1BFAAF538();
        OUTLINED_FUNCTION_5_3();
        (*(v88 + 8))(v78, v80);
LABEL_20:
        v89 = v113;
        sub_1BFAAED98();
        v90 = sub_1BFAAEDA8();
        __swift_storeEnumTagSinglePayload(v89, 0, 1, v90);
        return (*(v42 + 8))(v46, v40);
      }

      sub_1BFA20F44(v78, &qword_1EBDFBB20, &qword_1BFAB3720);
    }

    sub_1BFAAF5C8();
    v82 = sub_1BFAAF548();
    v83 = OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_9_2(v83, v84, v82);
    if (v81)
    {
      sub_1BFA20F44(v54, &qword_1EBDFBB20, &qword_1BFAB3720);
    }

    else
    {
      sub_1BFAAF538();
      OUTLINED_FUNCTION_5_3();
      (*(v85 + 8))(v54, v82);
    }

    goto LABEL_20;
  }

  sub_1BFAAF598();
  v47 = sub_1BFAAF7A8();
  OUTLINED_FUNCTION_9_2(v32, 1, v47);
  if (v81)
  {
    sub_1BFA20F44(v32, &qword_1EBDFBB28, &qword_1BFAB3728);
  }

  else
  {
    v55 = OUTLINED_FUNCTION_96();
    if (v56(v55) == *MEMORY[0x1E69DAE70])
    {
      v57 = OUTLINED_FUNCTION_96();
      v58(v57);
      v59 = swift_projectBox();
      v61 = v107;
      v60 = v108;
      v62 = *(v108 + 16);
      v63 = v109;
      v62(v107, v59, v109);

      v62(v37, v61, v63);
      v64 = OUTLINED_FUNCTION_18_5();
      if (v65(v64) == *MEMORY[0x1E69DADA8])
      {
        v66 = OUTLINED_FUNCTION_18_5();
        v67(v66);
        v68 = v99;
        (*(v105 + 32))(v104, v37, v99);
        sub_1BFAAF768();
        v69 = v106;
        sub_1BFAAF2F8();
        v70 = v102;
        v115 = v102;
        v71 = MEMORY[0x1E69D3288];
        v116 = sub_1BFA4BE30(&qword_1EBDFBB50, MEMORY[0x1E69D3288], MEMORY[0x1E69D3298]);
        v117 = sub_1BFA4BE30(&qword_1EBDFBB58, v71, MEMORY[0x1E69D3290]);
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v114);
        v73 = v100;
        (*(v100 + 16))(boxed_opaque_existential_1Tm, v69, v70);
        (*(v14 + 104))(v101, *MEMORY[0x1E69D3100], v12);
        v74 = v103;
        sub_1BFAAF5C8();
        v75 = sub_1BFAAF548();
        v76 = OUTLINED_FUNCTION_8_2();
        OUTLINED_FUNCTION_9_2(v76, v77, v75);
        if (v81)
        {
          sub_1BFA20F44(v74, &qword_1EBDFBB20, &qword_1BFAB3720);
        }

        else
        {
          sub_1BFAAF538();
          OUTLINED_FUNCTION_5_3();
          (*(v97 + 8))(v74, v75);
        }

        v98 = v113;
        sub_1BFAAED98();
        (*(v73 + 8))(v106, v70);
        (*(v105 + 8))(v104, v68);
        (*(v108 + 8))(v107, v109);
        v94 = sub_1BFAAEDA8();
        v95 = v98;
        v96 = 0;
        return __swift_storeEnumTagSinglePayload(v95, v96, 1, v94);
      }

      v92 = *(v60 + 8);
      v92(v61, v63);
      v93 = OUTLINED_FUNCTION_18_5();
      (v92)(v93);
    }

    else
    {
      v86 = OUTLINED_FUNCTION_96();
      v87(v86);
    }
  }

  v94 = sub_1BFAAEDA8();
  v95 = v113;
  v96 = 1;
  return __swift_storeEnumTagSinglePayload(v95, v96, 1, v94);
}

uint64_t IFSalientEntitiesService.__deallocating_deinit()
{
  sub_1BFA20F44(v0 + 16, &qword_1EBDFBB18, &unk_1BFAB3580);

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA4B418()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BFA4B4A8;

  return IFSalientEntitiesService.getSalientEntities()();
}

uint64_t sub_1BFA4B4A8()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  OUTLINED_FUNCTION_24_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t Array<A>.getDebugTable()(uint64_t a1)
{
  v1 = sub_1BFAAF688();
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  sub_1BFAAF228();
  sub_1BFAAF5D8();
  v8 = sub_1BFAAF658();
  (*(v3 + 8))(v7, v1);
  return v8;
}

uint64_t sub_1BFA4B6B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB20, &qword_1BFAB3720);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v22 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB28, &qword_1BFAB3728);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = sub_1BFAAF7B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB30, &qword_1BFAB3730);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BFAB3550;
  sub_1BFAAF598();
  v14 = sub_1BFAAF7A8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    sub_1BFA20F44(v8, &qword_1EBDFBB28, &qword_1BFAB3728);
    *(v13 + 32) = 0u;
    *(v13 + 48) = 0u;
  }

  else
  {
    sub_1BFAAF798();
    (*(*(v14 - 8) + 8))(v8, v14);
    *(v13 + 56) = v9;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v13 + 32));
    (*(v10 + 32))(boxed_opaque_existential_1Tm, v12, v9);
  }

  v16 = sub_1BFAAF588();
  *(v13 + 88) = MEMORY[0x1E69E6158];
  *(v13 + 64) = v16;
  *(v13 + 72) = v17;
  sub_1BFAAF598();
  if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
  {
    sub_1BFA20F44(v6, &qword_1EBDFBB28, &qword_1BFAB3728);
    *(v13 + 96) = 0u;
    *(v13 + 112) = 0u;
  }

  else
  {
    *(v13 + 120) = v14;
    v18 = __swift_allocate_boxed_opaque_existential_1Tm((v13 + 96));
    (*(*(v14 - 8) + 32))(v18, v6, v14);
  }

  *(v13 + 152) = sub_1BFAAF558();
  __swift_allocate_boxed_opaque_existential_1Tm((v13 + 128));
  sub_1BFAAF5A8();
  sub_1BFAAF5C8();
  v19 = sub_1BFAAF548();
  if (__swift_getEnumTagSinglePayload(v2, 1, v19) == 1)
  {
    sub_1BFA20F44(v2, &qword_1EBDFBB20, &qword_1BFAB3720);
    *(v13 + 160) = 0u;
    *(v13 + 176) = 0u;
  }

  else
  {
    *(v13 + 184) = v19;
    v20 = __swift_allocate_boxed_opaque_existential_1Tm((v13 + 160));
    (*(*(v19 - 8) + 32))(v20, v2, v19);
  }

  return v13;
}

uint64_t dispatch thunk of SalientEntitiesService.getSalientEntities()()
{
  OUTLINED_FUNCTION_51();
  v2 = v1;
  v4 = v3;
  v7 = (*(v1 + 8) + **(v1 + 8));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1BFA4C098;

  return v7(v4, v2);
}

uint64_t sub_1BFA4BBE4()
{
  OUTLINED_FUNCTION_51();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = (*(v1 + 8) + **(v1 + 8));
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_1BFA4BD08;

  return v9(v6, v4, v2);
}

uint64_t sub_1BFA4BD08()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_24_0();

  return v5(v2);
}

uint64_t sub_1BFA4BE30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BFA4BE78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_96();
  v6(v5);
  return a2;
}

uint64_t sub_1BFA4BEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

_BYTE *sub_1BFA4BF74(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BFA4C024()
{
  result = qword_1EBDFBB78;
  if (!qword_1EBDFBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBB78);
  }

  return result;
}

uint64_t sub_1BFA4C0DC()
{
  OUTLINED_FUNCTION_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);

  return sub_1BFA4C15C();
}

uint64_t sub_1BFA4C170()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v0 = sub_1BFAAF688();
  v1 = OUTLINED_FUNCTION_56(v0, qword_1EDCC8B70);
  v2 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v2))
  {
    v3 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v3);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v4, v5, "submitAsync disabled due to client initalisation error");
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_36();

  return v6();
}

uint64_t sub_1BFA4C230()
{
  OUTLINED_FUNCTION_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);

  return sub_1BFA4C2B0();
}

uint64_t sub_1BFA4C2C4()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v0 = sub_1BFAAF688();
  v1 = OUTLINED_FUNCTION_56(v0, qword_1EDCC8B70);
  v2 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v2))
  {
    v3 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v3);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v4, v5, "submitStateStoreProperties disabled due to client initalisation error");
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_36();

  return v6();
}

uint64_t sub_1BFA4C384()
{
  OUTLINED_FUNCTION_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);

  return sub_1BFA4C404();
}

uint64_t sub_1BFA4C418()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v0 = sub_1BFAAF688();
  v1 = OUTLINED_FUNCTION_56(v0, qword_1EDCC8B70);
  v2 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v2))
  {
    v3 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v3);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v4, v5, "log disabled due to client initalisation error");
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_36();

  return v6();
}

uint64_t sub_1BFA4C4D8()
{
  OUTLINED_FUNCTION_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);

  return sub_1BFA4C558();
}

uint64_t sub_1BFA4C56C()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v0 = sub_1BFAAF688();
  v1 = OUTLINED_FUNCTION_56(v0, qword_1EDCC8B70);
  v2 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v2))
  {
    v3 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v3);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v4, v5, "warmup disabled due to client initalisation error");
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_36();

  return v6();
}

uint64_t sub_1BFA4C62C()
{
  OUTLINED_FUNCTION_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);

  return sub_1BFA4C6AC();
}

uint64_t sub_1BFA4C6C0()
{
  OUTLINED_FUNCTION_40();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);

  return sub_1BFA4C740();
}

uint64_t sub_1BFA4C754()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v0 = sub_1BFAAF688();
  v1 = OUTLINED_FUNCTION_56(v0, qword_1EDCC8B70);
  v2 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v2))
  {
    v3 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v3);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v4, v5, "submitEngagement disabled due to client initalisation error");
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_36();

  return v6();
}

uint64_t sub_1BFA4C814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_1();
  v10 = v3;
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3CA8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_7(v5);

  return v8(v7);
}

uint64_t sub_1BFA4C8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4C8CC, 0, 0);
}

uint64_t sub_1BFA4C8CC()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_7((*(v0 + 40) + 120));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_53_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_7(v2);

  return v5(v4);
}

uint64_t sub_1BFA4C9C8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA4CAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4CACC, 0, 0);
}

uint64_t sub_1BFA4CACC()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_7(*(v0 + 40));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_53_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_7(v2);

  return v5(v4);
}

uint64_t sub_1BFA4CBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4CBE8, 0, 0);
}

uint64_t sub_1BFA4CBE8()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_7((*(v0 + 40) + 16));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_53_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_7(v2);

  return v5(v4);
}

uint64_t DelegatingSiriSuggestionsClient.submitAsync(for:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4CD00()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21_3();
  v1();
  OUTLINED_FUNCTION_3_7(v0 + 2);
  OUTLINED_FUNCTION_30();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1BFA4CE20;
  v3 = OUTLINED_FUNCTION_7_5(v0[7]);

  return v4(v3);
}

uint64_t sub_1BFA4CE20()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 112) = v0;

  if (v0)
  {
    v7 = sub_1BFA4CF74;
  }

  else
  {
    v7 = sub_1BFA4CF1C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BFA4CF1C()
{
  OUTLINED_FUNCTION_40();
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  OUTLINED_FUNCTION_36();

  return v1();
}

uint64_t sub_1BFA4CF74()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t sub_1BFA4CFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_1();
  v10 = v3;
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3C98);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_7(v5);

  return v8(v7);
}

uint64_t sub_1BFA4D05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4D080, 0, 0);
}

uint64_t sub_1BFA4D080()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_7(*(v0 + 40));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_53_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_7(v2);

  return v5(v4);
}

uint64_t sub_1BFA4D178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4D19C, 0, 0);
}

uint64_t sub_1BFA4D19C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_7((*(v0 + 40) + 16));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_53_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_7(v2);

  return v5(v4);
}

uint64_t sub_1BFA4D298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4D2BC, 0, 0);
}

uint64_t sub_1BFA4D2BC()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_7((*(v0 + 40) + 120));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_53_2(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_7(v2);

  return v5(v4);
}

uint64_t DelegatingSiriSuggestionsClient.logShown(for:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4D3D4()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21_3();
  v1();
  OUTLINED_FUNCTION_3_7(v0 + 2);
  OUTLINED_FUNCTION_30();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1BFA4D4F4;
  v3 = OUTLINED_FUNCTION_7_5(v0[7]);

  return v4(v3);
}

uint64_t sub_1BFA4D4F4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 112) = v0;

  if (v0)
  {
    v7 = sub_1BFA52C94;
  }

  else
  {
    v7 = sub_1BFA52CB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BFA4D5F0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3C88);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);

  return v5();
}

uint64_t sub_1BFA4D6A0()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_7(*(v0 + 16));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_55_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_3(v2);

  return v5(v4);
}

uint64_t sub_1BFA4D7B8()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_7((*(v0 + 16) + 16));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_55_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_3(v2);

  return v5(v4);
}

uint64_t sub_1BFA4D8D4()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_7((*(v0 + 16) + 120));
  OUTLINED_FUNCTION_30();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_55_1(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_3(v2);

  return v5(v4);
}

uint64_t DelegatingSiriSuggestionsClient.warmup()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4D9E8()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21_3();
  v1();
  OUTLINED_FUNCTION_3_7((v0 + 16));
  OUTLINED_FUNCTION_30();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_8_3(v2);

  return v4(v3);
}

uint64_t sub_1BFA4DAFC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_1BFA52C98;
  }

  else
  {
    v7 = sub_1BFA52CB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BFA4DBF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4DC10()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_14_2((v0[4] + 120));
  OUTLINED_FUNCTION_5_4(v1);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1BFA112B8;
  OUTLINED_FUNCTION_53(v0[2]);
  OUTLINED_FUNCTION_20_3();

  return v3();
}

uint64_t sub_1BFA4DD18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4DD30()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_14_2(*(v0 + 32));
  OUTLINED_FUNCTION_5_4(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1BFA17D0C;
  OUTLINED_FUNCTION_53(*(v0 + 16));
  OUTLINED_FUNCTION_20_3();

  return v3();
}

uint64_t DelegatingSiriSuggestionsClient.submitEngagement(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4DE50()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21_3();
  v1();
  OUTLINED_FUNCTION_14_2(v0 + 2);
  OUTLINED_FUNCTION_5_4(v2);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1BFA4DF6C;
  OUTLINED_FUNCTION_53(v0[7]);
  OUTLINED_FUNCTION_20_3();

  return v4();
}

uint64_t sub_1BFA4DF6C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = sub_1BFA4E068;
  }

  else
  {
    v7 = sub_1BFA52CB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BFA4E068()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t DelegatingSiriSuggestionsClient.getAutoCompletePhrase(query:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4E0DC()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_21_3();
  v1();
  OUTLINED_FUNCTION_16_1((v0 + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 120) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_52_2(v2);

  return MEMORY[0x1EEE38600](v4);
}

uint64_t sub_1BFA4E194()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    v7 = sub_1BFA4E290;
  }

  else
  {
    v7 = sub_1BFA52CB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BFA4E290()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t DelegatingSiriSuggestionsClient.description.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v4, a1);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = sub_1BFAAFEE8();
  __swift_destroy_boxed_opaque_existential_2Tm(v4);
  return v2;
}

uint64_t sub_1BFA4E358()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3C68);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_3(v1);

  return v4(v3);
}

uint64_t sub_1BFA4E3EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4E410, 0, 0);
}

uint64_t sub_1BFA4E410()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4(*(v0 + 32));
  OUTLINED_FUNCTION_6_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_36_5(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_5(v2);

  return v5(v4);
}

uint64_t sub_1BFA4E508(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4E52C, 0, 0);
}

uint64_t sub_1BFA4E52C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4((*(v0 + 32) + 16));
  OUTLINED_FUNCTION_6_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_36_5(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_5(v2);

  return v5(v4);
}

uint64_t sub_1BFA4E628(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4E64C, 0, 0);
}

uint64_t sub_1BFA4E64C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4((*(v0 + 32) + 120));
  OUTLINED_FUNCTION_6_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_36_5(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_5(v2);

  return v5(v4);
}

uint64_t DelegatingSiriSuggestionsClient.getSuggestionsForApp(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4E764()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21_3();
  v1();
  OUTLINED_FUNCTION_9_4((v0 + 16));
  OUTLINED_FUNCTION_6_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_1BFA4E880;
  OUTLINED_FUNCTION_18_6();

  return v4();
}

uint64_t sub_1BFA4E880()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA4E964()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3C58);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_0(v2);

  return v6(v4);
}

uint64_t sub_1BFA4E9FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4EA1C, 0, 0);
}

uint64_t sub_1BFA4EA1C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4(*(v0 + 24));
  OUTLINED_FUNCTION_39(v1);
  OUTLINED_FUNCTION_30();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1BFA52CA8;
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_48_2();

  return v3();
}

uint64_t sub_1BFA4EB24(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4EB44, 0, 0);
}

uint64_t sub_1BFA4EB44()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4((*(v0 + 24) + 16));
  OUTLINED_FUNCTION_39(v1);
  OUTLINED_FUNCTION_30();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1BFA52CA8;
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_48_2();

  return v3();
}

uint64_t sub_1BFA4EC50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4EC70, 0, 0);
}

uint64_t sub_1BFA4EC70()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4((*(v0 + 24) + 120));
  OUTLINED_FUNCTION_39(v1);
  OUTLINED_FUNCTION_30();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1BFA4ED7C;
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_48_2();

  return v3();
}

uint64_t sub_1BFA4ED7C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t DelegatingSiriSuggestionsClient.disconnect(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4EE74()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21_3();
  v1();
  OUTLINED_FUNCTION_9_4(v0 + 2);
  OUTLINED_FUNCTION_39(v2);
  OUTLINED_FUNCTION_30();
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1BFA4EF98;
  OUTLINED_FUNCTION_53(v0[7]);
  OUTLINED_FUNCTION_48_2();

  return v4();
}

uint64_t sub_1BFA4EF98()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA4F07C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3C48);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);

  return v5();
}

uint64_t sub_1BFA4F12C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4(*(v0 + 16));
  OUTLINED_FUNCTION_5_4(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_55_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_3(v3);

  return v6(v5);
}

uint64_t sub_1BFA4F240()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4((*(v0 + 16) + 16));
  OUTLINED_FUNCTION_5_4(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_55_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_3(v3);

  return v6(v5);
}

uint64_t sub_1BFA4F358()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4((*(v0 + 16) + 120));
  OUTLINED_FUNCTION_5_4(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_55_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_3(v3);

  return v6(v5);
}

uint64_t sub_1BFA4F450()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t DelegatingSiriSuggestionsClient.refreshService()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4F548()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21_3();
  v1();
  OUTLINED_FUNCTION_9_4((v0 + 16));
  OUTLINED_FUNCTION_5_4(v2);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_8_3(v3);

  return v5(v4);
}

uint64_t sub_1BFA4F658()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_1BFA4F754;
  }

  else
  {
    v7 = sub_1BFA52CB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BFA4F754()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t sub_1BFA4F7A8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3C38);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_3(v1);

  return v4(v3);
}

uint64_t sub_1BFA4F83C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4F860, 0, 0);
}

uint64_t sub_1BFA4F860()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4(*(v0 + 32));
  OUTLINED_FUNCTION_6_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_36_5(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_5(v2);

  return v5(v4);
}

uint64_t sub_1BFA4F958(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4F97C, 0, 0);
}

uint64_t sub_1BFA4F97C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4((*(v0 + 32) + 16));
  OUTLINED_FUNCTION_6_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_36_5(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_5(v2);

  return v5(v4);
}

uint64_t sub_1BFA4FA78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA4FA9C, 0, 0);
}

uint64_t sub_1BFA4FA9C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_9_4((*(v0 + 32) + 120));
  OUTLINED_FUNCTION_6_7();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_36_5(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_5(v2);

  return v5(v4);
}

uint64_t DelegatingSiriSuggestionsClient.getSuggestionsForIntents(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4FBB4()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21_3();
  v1();
  OUTLINED_FUNCTION_9_4((v0 + 16));
  OUTLINED_FUNCTION_6_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 96) = v2;
  *v2 = v3;
  v2[1] = sub_1BFA4FCD0;
  OUTLINED_FUNCTION_18_6();

  return v4();
}

uint64_t sub_1BFA4FCD0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA4FDB4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t sub_1BFA4FE04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = v6;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 33) = a3;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA4FE24()
{
  v1 = *(v0 + 33);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_16_1(*(v0 + 80));
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1 & 1;
  OUTLINED_FUNCTION_30();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1BFA4FF68;
  v5 = OUTLINED_FUNCTION_43_2();

  return v6(v5);
}

uint64_t sub_1BFA4FF68()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BFA08660, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v7();
  }
}

uint64_t sub_1BFA50080(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = v6;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 33) = a3;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA500A0()
{
  v1 = *(v0 + 33);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_16_1((*(v0 + 80) + 16));
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1 & 1;
  OUTLINED_FUNCTION_30();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1BFA501E8;
  v5 = OUTLINED_FUNCTION_43_2();

  return v6(v5);
}

uint64_t sub_1BFA501E8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BFA52CAC, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v7();
  }
}

uint64_t DelegatingSiriSuggestionsClient.submitAsync(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = v6;
  *(v7 + 96) = a4;
  *(v7 + 104) = a5;
  *(v7 + 80) = a2;
  *(v7 + 88) = a3;
  *(v7 + 128) = *a1;
  *(v7 + 73) = *(a1 + 16);
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA5032C()
{
  v1 = *(v0 + 73);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  OUTLINED_FUNCTION_21_3();
  v4();
  OUTLINED_FUNCTION_16_1((v0 + 16));
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  OUTLINED_FUNCTION_30();
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1BFA50484;
  v6 = OUTLINED_FUNCTION_43_2();

  return v7(v6);
}

uint64_t sub_1BFA50484()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 152) = v0;

  if (v0)
  {
    v7 = sub_1BFA50580;
  }

  else
  {
    v7 = sub_1BFA52CB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BFA50580()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t sub_1BFA505D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA505FC, 0, 0);
}

uint64_t sub_1BFA505FC()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[7];
  v2 = v1[3];
  OUTLINED_FUNCTION_9_4(v1);
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_30();
  v14 = (v5 + *v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[8] = v6;
  *v6 = v7;
  v6[1] = sub_1BFA5071C;
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  return v14(v12, v10, v11, v8, v9, v2, v4);
}

uint64_t sub_1BFA5071C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t DelegatingSiriSuggestionsClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA5081C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21_3();
  v1();
  OUTLINED_FUNCTION_9_4((v0 + 16));
  OUTLINED_FUNCTION_30();
  v7 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 120) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_52_2(v3);

  return v7(v5);
}

uint64_t sub_1BFA5093C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA50A20(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BF9FDF08;

  return sub_1BFA51618();
}

uint64_t sub_1BFA50AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF9FDF08;

  return SiriSuggestionsSupportingDataClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)();
}

uint64_t sub_1BFA50B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA50B9C, 0, 0);
}

uint64_t sub_1BFA50B9C()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[5];
  v2 = v1[3];
  OUTLINED_FUNCTION_9_4(v1);
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_30();
  v13 = (v5 + *v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[6] = v6;
  *v6 = v7;
  v6[1] = sub_1BFA4C9C8;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];
  v11 = MEMORY[0x1E69E7CD0];

  return (v13)(v10, v8, v9, v11, 0, v2, v4);
}

uint64_t sub_1BFA50CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BF9FDF08;

  return SiriSuggestionsXPCClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)();
}

uint64_t SiriSuggestionsBaseClient.getNextSuggestions(requestId:)()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57_1();
  v4 = v3;
  v6 = *(v5 + 16);
  OUTLINED_FUNCTION_44();
  v13 = (v7 + *v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_16_0(v8);
  *v9 = v10;
  v9[1] = sub_1BF9FDF08;
  v11 = MEMORY[0x1E69E7CD0];

  return (v13)(v4, v2, v1, v11, 0, v0, v6);
}

uint64_t sub_1BFA50ED0()
{
  OUTLINED_FUNCTION_40();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v0[5] = sub_1BFAAF458();
  OUTLINED_FUNCTION_44();
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_100();
  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA50F7C()
{
  OUTLINED_FUNCTION_43();
  (*(v0[6] + 104))(v0[7], *MEMORY[0x1E69CE2D8], v0[5]);

  OUTLINED_FUNCTION_60_1();
  sub_1BFAAF468();

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA51028()
{
  OUTLINED_FUNCTION_40();
  v0[2] = v1;
  v0[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBB90, &qword_1BFAB3AB0);
  OUTLINED_FUNCTION_44();
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_100();
  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA510DC()
{
  OUTLINED_FUNCTION_51();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v1 = sub_1BFAAF688();
  v2 = OUTLINED_FUNCTION_56(v1, qword_1EDCC8B70);
  v3 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v4);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v5, v6, "getSuggestionsForApp disabled due to client initalisation error");
    OUTLINED_FUNCTION_69();
  }

  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  type metadata accessor for SiriSuggestions.SuggestionList(0);
  (*(v8 + 104))(v7, *MEMORY[0x1E69E8790], v9);
  sub_1BFAAFB38();

  OUTLINED_FUNCTION_85();

  return v10();
}

uint64_t sub_1BFA51224()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v0 = sub_1BFAAF688();
  v1 = OUTLINED_FUNCTION_56(v0, qword_1EDCC8B70);
  v2 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v2))
  {
    v3 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v3);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v4, v5, "disconnect disabled due to client initalisation error");
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t sub_1BFA512E4()
{
  OUTLINED_FUNCTION_40();
  v0[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  v0[18] = OUTLINED_FUNCTION_100();
  v0[19] = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_44();
  v0[20] = v2;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1BFA513DC()
{
  v30 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v2 = sub_1BFAAF688();
  v3 = OUTLINED_FUNCTION_56(v2, qword_1EDCC8B70);
  v4 = sub_1BFAAFB78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_44_0();
    *v5 = 0;
    OUTLINED_FUNCTION_67_1(&dword_1BF9F6000, v6, v7, "getSuggestionsForIntents disabled due to client initalisation error");
    MEMORY[0x1BFB618C0](v5, -1, -1);
  }

  v8 = sub_1BFAAF288();
  v0[5] = sub_1BFAAECE8();
  OUTLINED_FUNCTION_47_2();
  v0[6] = sub_1BFA52C4C(v9, 255, v10, MEMORY[0x1E69D2F40]);
  v0[2] = v8;
  sub_1BFAAE3E8();
  sub_1BF9F94C4((v0 + 2), (v0 + 7));
  v11 = OUTLINED_FUNCTION_64_0();
  v8(v11);
  sub_1BF9F94C4((v0 + 7), (v0 + 12));
  v12 = OUTLINED_FUNCTION_60_1();
  v8(v12);
  v13 = sub_1BFAAED08();
  OUTLINED_FUNCTION_68_3(v13);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BFA1B5D0(&v29);
  v14 = OUTLINED_FUNCTION_50_2();
  v1(v14);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  v15 = (v1)(0, v8);
  v23 = OUTLINED_FUNCTION_63_1(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29);
  v24 = OUTLINED_FUNCTION_54_1(v23);
  v25(v24);
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BFA51618()
{
  OUTLINED_FUNCTION_40();
  v0[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  v0[18] = OUTLINED_FUNCTION_100();
  v0[19] = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_44();
  v0[20] = v2;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1BFA51710()
{
  v30 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v2 = sub_1BFAAF688();
  v3 = OUTLINED_FUNCTION_56(v2, qword_1EDCC8B70);
  v4 = sub_1BFAAFB78();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_44_0();
    *v5 = 0;
    OUTLINED_FUNCTION_67_1(&dword_1BF9F6000, v6, v7, "getNextSuggestions disabled due to client initalisation error");
    MEMORY[0x1BFB618C0](v5, -1, -1);
  }

  v8 = sub_1BFAAF288();
  v0[5] = sub_1BFAAECE8();
  OUTLINED_FUNCTION_47_2();
  v0[6] = sub_1BFA52C4C(v9, 255, v10, MEMORY[0x1E69D2F40]);
  v0[2] = v8;
  sub_1BFAAE3E8();
  sub_1BF9F94C4((v0 + 2), (v0 + 7));
  v11 = OUTLINED_FUNCTION_64_0();
  v8(v11);
  sub_1BF9F94C4((v0 + 7), (v0 + 12));
  v12 = OUTLINED_FUNCTION_60_1();
  v8(v12);
  v13 = sub_1BFAAED08();
  OUTLINED_FUNCTION_68_3(v13);
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BFA1B5D0(&v29);
  v14 = OUTLINED_FUNCTION_50_2();
  v1(v14);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  v15 = (v1)(0, v8);
  v23 = OUTLINED_FUNCTION_63_1(v15, v16, v17, v18, v19, v20, v21, v22, v28, v29);
  v24 = OUTLINED_FUNCTION_54_1(v23);
  v25(v24);
  OUTLINED_FUNCTION_58_1();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_61();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BFA51960()
{
  OUTLINED_FUNCTION_43();
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5(&qword_1EDCC8BC0);
  }

  v0 = sub_1BFAAF688();
  v1 = OUTLINED_FUNCTION_56(v0, qword_1EDCC8B70);
  v2 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_91(v2))
  {
    v3 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_29(v3);
    OUTLINED_FUNCTION_12_0(&dword_1BF9F6000, v4, v5, "refreshService disabled due to client initalisation error");
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_36();

  return v6();
}

uint64_t sub_1BFA51A20()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA51A7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FE78C;

  return sub_1BFA50ED0();
}

uint64_t sub_1BFA51B2C()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_1BFA51B60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return sub_1BFA51028();
}

uint64_t sub_1BFA51BF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return sub_1BFA51210();
}

uint64_t sub_1BFA51C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDF08;

  return (sub_1BFA50A20)(a1, a2, a3);
}

uint64_t sub_1BFA51D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDE28;

  return sub_1BFA51618();
}

uint64_t sub_1BFA51DE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDE28;

  return sub_1BFA5194C();
}

uint64_t sub_1BFA51E74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return sub_1BFA512E4();
}

uint64_t sub_1BFA51F0C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BFA52C4C(&qword_1EBDFBB80, a2, type metadata accessor for NoOpSiriSuggestionsClient, &unk_1BFAB39E0);
  result = sub_1BFA52C4C(&qword_1EBDFBB88, v3, type metadata accessor for NoOpSiriSuggestionsClient, &unk_1BFAB39B0);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BFA51F90()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_12_2(&dword_1BFAB3C28);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);
  v3 = OUTLINED_FUNCTION_51_1();

  return v4(v3);
}

uint64_t sub_1BFA52044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_1();
  v10 = v3;
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3C18);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_7(v5);

  return v8(v7);
}

uint64_t sub_1BFA520D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_1();
  v10 = v3;
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3C08);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_7(v5);

  return v8(v7);
}

uint64_t sub_1BFA5216C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3BF8);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);

  return v5();
}

uint64_t sub_1BFA521FC()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3BE8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_3(v1);

  return v4(v3);
}

uint64_t sub_1BFA52290()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3BD8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_0(v2);

  return v6(v4);
}

uint64_t sub_1BFA52328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_1();
  v9 = v3;
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3BC8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_0(v4);
  *v5 = v6;
  v5[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_25_2();

  return v7();
}

uint64_t sub_1BFA523C8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3BB8);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);

  return v5();
}

uint64_t sub_1BFA52458()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3BA8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_3(v1);

  return v4(v3);
}

uint64_t sub_1BFA524EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_1();
  v9 = v3;
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3B98);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_0(v4);
  *v5 = v6;
  v5[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_25_2();

  return v7();
}

uint64_t sub_1BFA5258C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3B88);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);
  v4 = OUTLINED_FUNCTION_60_1();

  return v6(v4);
}

uint64_t sub_1BFA5262C()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_12_2(&dword_1BFAB3B78);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);
  v3 = OUTLINED_FUNCTION_51_1();

  return v4(v3);
}

uint64_t sub_1BFA526DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_1();
  v10 = v3;
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3B68);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_7(v5);

  return v8(v7);
}

uint64_t sub_1BFA52770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_1();
  v10 = v3;
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3B58);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_11_7(v5);

  return v8(v7);
}

uint64_t sub_1BFA52804()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3B48);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);

  return v5();
}

uint64_t sub_1BFA52890()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3B38);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_3(v1);

  return v4(v3);
}

uint64_t sub_1BFA52928()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3B28);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_6_0(v2);

  return v6(v4);
}

uint64_t sub_1BFA529BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_66_1();
  v9 = v3;
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3B18);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16_0(v4);
  *v5 = v6;
  v5[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_25_2();

  return v7();
}

uint64_t sub_1BFA52A5C()
{
  OUTLINED_FUNCTION_58();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3B08);
  v15 = v10;
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_16_0(v11);
  *v12 = v13;
  v12[1] = sub_1BF9FDF08;

  return v15(v9, v7, v5, v3, v1);
}

uint64_t sub_1BFA52B28()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3AF8);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);

  return v5();
}

uint64_t sub_1BFA52BB4()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB3AE8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_17_3(v1);

  return v4(v3);
}

uint64_t sub_1BFA52C4C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_63_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_destroy_boxed_opaque_existential_2Tm((v10 + 56));
  *v11 = a10;
  sub_1BF9F97E4();

  return type metadata accessor for SiriSuggestions.SuggestionList(0);
}

void OUTLINED_FUNCTION_67_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

id sub_1BFA52E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v5 = sub_1BFAAE3F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E69C77A0]) init];
  sub_1BFAAE3E8();
  v10 = sub_1BFAAE398();
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_1BFA3B310(v10, v12, v9, &selRef_setAceId_);
  [v9 setSpokenOnly_];
  [v9 setCanUseServerTTS_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69C77B0]) _swift_FORCE_LOAD___swiftCoreFoundation___SiriSuggestionsAPI];
  sub_1BFAAE3E8();
  v15 = sub_1BFAAE398();
  v17 = v16;
  v13(v8, v5);
  sub_1BFA3B310(v15, v17, v14, &selRef_setAceId_);
  sub_1BFA531B8(a1, v31, v14);
  sub_1BFA53210(v32, v33, v14);
  [v9 setContent_];
  v18 = [objc_allocWithZone(MEMORY[0x1E69C7708]) init];
  v19 = sub_1BFAAF868();
  sub_1BFA3B310(v19, v20, v18, &selRef_setItemType_);
  [v18 setDialog_];
  sub_1BFA3C744(0, &qword_1EBDFBB98, 0x1E696AD98);
  v21 = sub_1BFAAFB98();
  [v18 setListenAfterSpeaking_];

  v22 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];
  [v22 setSupplemental_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB988, &qword_1BFAB4930);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BFAB1F20;
  *(v23 + 32) = v18;
  v24 = v18;
  sub_1BFA53274(v23, v22);
  v25 = v22;
  sub_1BFAAE3E8();
  v26 = sub_1BFAAE398();
  v28 = v27;
  v13(v8, v5);
  sub_1BFA3B310(v26, v28, v25, &selRef_setAceId_);

  return v25;
}

void sub_1BFA531B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BFAAF858();
  [a3 setText_];
}

void sub_1BFA53210(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BFAAF858();
  [a3 setSpeakableTextOverride_];
}

void sub_1BFA53274(uint64_t a1, void *a2)
{
  sub_1BFA3C744(0, &qword_1EBDFBBA0, 0x1E69C7708);
  v3 = sub_1BFAAF9D8();

  [a2 setViews_];
}

uint64_t sub_1BFA53304(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x3172656974;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x3272656974;
    }

    else
    {
      v4 = 0x6B6361626C6C6166;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x3172656974;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x3272656974;
    }

    else
    {
      v2 = 0x6B6361626C6C6166;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_4(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1BFA533E8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7373696D736964;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x7373696D736964;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_69_1();
      v3 = 0xED00007061546E6FLL;
      break;
    case 2:
      v5 = 0x6F4D686374697773;
      v3 = 0xEA00000000006564;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x74696D627573;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6974736567677573;
      v6 = 0xED00007061546E6FLL;
      break;
    case 2:
      v2 = 0x6F4D686374697773;
      v6 = 0xEA00000000006564;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x74696D627573;
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
    v8 = OUTLINED_FUNCTION_35_4(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1BFA53534(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6169646E496E6170;
  }

  else
  {
    v3 = 0x737567616DLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x6169646E496E6170;
  }

  else
  {
    v5 = 0x737567616DLL;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_35_4(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1BFA535C4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x65746E6573657270;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x646570706174;
    }

    else
    {
      v5 = 0x64657265646E6572;
    }

    if (v4 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x65746E6573657270;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x646570706174;
    }

    else
    {
      v3 = 0x64657265646E6572;
    }

    if (a2 == 1)
    {
      v2 = 0xE600000000000000;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_67_2(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1BFA536B0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC00000065707954;
  v3 = 0x7974697669746361;
  v4 = a1;
  v5 = "catGlobalProperties";
  v6 = 0x7974697669746361;
  v7 = 0xEC00000065707954;
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_47_3();
      v9 = v10 - 32;
      goto LABEL_9;
    case 2:
      goto LABEL_10;
    case 3:
      v7 = 0x80000001BFAB85B0;
      v6 = 0xD000000000000013;
      goto LABEL_10;
    case 4:
      v6 = 0x45746E65696C6173;
      v7 = 0xEF7365697469746ELL;
      goto LABEL_10;
    case 5:
      v6 = 0x7453656369766564;
      v7 = 0xEB00000000657461;
      goto LABEL_10;
    case 6:
      v6 = OUTLINED_FUNCTION_47_3();
      v9 = v11 - 32;
      goto LABEL_9;
    case 7:
      v7 = 0xE500000000000000;
      v6 = 0x72656E776FLL;
      goto LABEL_10;
    default:
      v6 = OUTLINED_FUNCTION_47_3();
      v9 = v8 - 32;
LABEL_9:
      v7 = v9 | 0x8000000000000000;
LABEL_10:
      switch(a2)
      {
        case 1:
          OUTLINED_FUNCTION_86_1();
          v13 = v14 - 32;
          goto LABEL_18;
        case 2:
          goto LABEL_19;
        case 3:
          v2 = (v5 - 32) | 0x8000000000000000;
          v3 = 0xD000000000000013;
          goto LABEL_19;
        case 4:
          v3 = 0x45746E65696C6173;
          v2 = 0xEF7365697469746ELL;
          goto LABEL_19;
        case 5:
          v3 = 0x7453656369766564;
          v2 = 0xEB00000000657461;
          goto LABEL_19;
        case 6:
          OUTLINED_FUNCTION_86_1();
          v13 = v15 - 32;
          goto LABEL_18;
        case 7:
          v2 = 0xE500000000000000;
          v3 = 0x72656E776FLL;
          goto LABEL_19;
        default:
          OUTLINED_FUNCTION_86_1();
          v13 = v12 - 32;
LABEL_18:
          v2 = v13 | 0x8000000000000000;
LABEL_19:
          if (v6 == v3 && v7 == v2)
          {
            v17 = 1;
          }

          else
          {
            v17 = OUTLINED_FUNCTION_67_2(v6, a2, v3);
          }

          return v17 & 1;
      }
  }
}

uint64_t sub_1BFA538B8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x72656E776FLL;
  v3 = 0xE500000000000000;
  v4 = "templatingResult";
  v5 = "intentsToSuggest";
  v6 = a1;
  v7 = "intentProperties";
  v8 = 0x72656E776FLL;
  v9 = "dialogIdentifier";
  switch(v6)
  {
    case 1:
      v10 = "dialogIdentifier";
      goto LABEL_8;
    case 2:
      v10 = "intentProperties";
      goto LABEL_8;
    case 3:
      goto LABEL_9;
    case 4:
      v8 = 0x4974694B69726973;
      v3 = 0xED0000746E65746ELL;
      goto LABEL_9;
    case 5:
      v8 = 0x746E65746E496B73;
      v3 = 0xEE00746C75736552;
      goto LABEL_9;
    case 6:
      v10 = "tent";
      goto LABEL_8;
    default:
      v10 = "assistant_service";
LABEL_8:
      v3 = v10 | 0x8000000000000000;
      v8 = OUTLINED_FUNCTION_47_3();
LABEL_9:
      v11 = 0xE500000000000000;
      switch(a2)
      {
        case 1:
          v12 = v7 - 32;
          goto LABEL_16;
        case 2:
          v12 = v5 - 32;
          goto LABEL_16;
        case 3:
          goto LABEL_17;
        case 4:
          v2 = 0x4974694B69726973;
          v11 = 0xED0000746E65746ELL;
          goto LABEL_17;
        case 5:
          v2 = 0x746E65746E496B73;
          v11 = 0xEE00746C75736552;
          goto LABEL_17;
        case 6:
          v12 = v4 - 32;
          goto LABEL_16;
        default:
          v12 = v9 - 32;
LABEL_16:
          v11 = v12 | 0x8000000000000000;
          OUTLINED_FUNCTION_86_1();
LABEL_17:
          if (v8 == v2 && v3 == v11)
          {
            v14 = 1;
          }

          else
          {
            v14 = OUTLINED_FUNCTION_35_4(v8, a2, v2);
          }

          return v14 & 1;
      }
  }
}

uint64_t sub_1BFA53A64(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701998445;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701998445;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v3 = 0x80000001BFAB8500;
      break;
    case 2:
      v5 = 0x726F4D6E7261656CLL;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v5 = 0x6E69796173797274;
      v3 = 0xE900000000000067;
      break;
    case 4:
      v5 = 0x746E69726568746FLL;
      v3 = 0xEA00000000006F72;
      break;
    case 5:
      v5 = 0x706C654869726973;
      v6 = 0x726564616548;
      goto LABEL_8;
    case 6:
      v3 = 0x80000001BFAB8550;
      v5 = 0xD00000000000001FLL;
      break;
    case 7:
      v5 = 0x726F707075736E75;
      v6 = 0x707041646574;
LABEL_8:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 8:
      v3 = 0x80000001BFAB8580;
      v5 = 0xD000000000000019;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000013;
      v7 = 0x80000001BFAB8500;
      break;
    case 2:
      v2 = 0x726F4D6E7261656CLL;
      v7 = 0xE900000000000065;
      break;
    case 3:
      v2 = 0x6E69796173797274;
      v7 = 0xE900000000000067;
      break;
    case 4:
      v2 = 0x746E69726568746FLL;
      v7 = 0xEA00000000006F72;
      break;
    case 5:
      v2 = 0x706C654869726973;
      v8 = 0x726564616548;
      goto LABEL_18;
    case 6:
      v7 = 0x80000001BFAB8550;
      v2 = 0xD00000000000001FLL;
      break;
    case 7:
      v2 = 0x726F707075736E75;
      v8 = 0x707041646574;
LABEL_18:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 8:
      v7 = 0x80000001BFAB8580;
      v2 = 0xD000000000000019;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_35_4(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_1BFA53D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1BFA567B4(a4, a5, a6);
  sub_1BFAAF998();
  sub_1BFAAF998();
  if (v15 == v13 && v16 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_67_2(v15, v9, v13);
  }

  return v11 & 1;
}

uint64_t SiriSuggestions.Suggestion.suggestionId.getter()
{
  type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_78_1();

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriSuggestions.Suggestion.presentation.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for SiriSuggestions.Suggestion(v0);
  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_40_2(v1);
  return sub_1BFA58DF4();
}

uint64_t SiriSuggestions.Suggestion.owner.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = type metadata accessor for SiriSuggestions.Suggestion(v0);
  v2 = OUTLINED_FUNCTION_40_2(*(v1 + 32));

  return sub_1BF9F94C4(v2, v3);
}

uint64_t SiriSuggestions.Suggestion.sourceOwner.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = type metadata accessor for SiriSuggestions.Suggestion(v0);
  v2 = OUTLINED_FUNCTION_40_2(*(v1 + 36));

  return sub_1BF9F94C4(v2, v3);
}

uint64_t SiriSuggestions.Suggestion.invocationAction.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = type metadata accessor for SiriSuggestions.Suggestion(v0);
  OUTLINED_FUNCTION_40_2(*(v1 + 40));
  return sub_1BFA54188();
}

void SiriSuggestions.Suggestion.rankInfo.getter()
{
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = type metadata accessor for SiriSuggestions.Suggestion(v2);
  v4 = OUTLINED_FUNCTION_59_1(v1 + *(v3 + 44));
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = v8;
}

uint64_t SiriSuggestions.Suggestion.loggingAction.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for SiriSuggestions.Suggestion(v0);
  sub_1BFAAF1E8();
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_38_2();

  return v2(v1);
}

uint64_t SiriSuggestions.Suggestion.channelAndScore.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = type metadata accessor for SiriSuggestions.Suggestion(v0);
  OUTLINED_FUNCTION_40_2(*(v1 + 52));
  return sub_1BFA54188();
}

uint64_t SiriSuggestions.Suggestion.objective.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for SiriSuggestions.Suggestion(v0);
  sub_1BFAAF318();
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_38_2();

  return v2(v1);
}

uint64_t SiriSuggestions.Suggestion.associatedTool.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1 = type metadata accessor for SiriSuggestions.Suggestion(v0);
  OUTLINED_FUNCTION_40_2(*(v1 + 60));
  return sub_1BFA54188();
}

uint64_t sub_1BFA54188()
{
  OUTLINED_FUNCTION_36_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_0();
  v3 = OUTLINED_FUNCTION_96();
  v4(v3);
  return v0;
}

uint64_t SiriSuggestions.Suggestion.suggestionType.getter()
{
  v0 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for SiriSuggestions.Suggestion(v0);
  sub_1BFAAEB28();
  OUTLINED_FUNCTION_0();
  v1 = OUTLINED_FUNCTION_38_2();

  return v2(v1);
}

uint64_t SiriSuggestions.Suggestion.init(identifier:suggestionId:deliveryVehicle:owner:sourceOwner:presentation:invocationAction:rankInfo:loggingAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void (*a8)(void)@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v106 = a8;
  v109 = a7;
  v110 = a6;
  v111 = a5;
  v96 = a3;
  v95 = a2;
  v94 = a9;
  v105 = a11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
  OUTLINED_FUNCTION_60_0(v13);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16_4(&v87 - v15);
  sub_1BFAAF318();
  OUTLINED_FUNCTION_2_3();
  v117 = v17;
  v118 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v116 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
  OUTLINED_FUNCTION_60_0(v20);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v21);
  v115 = &v87 - v22;
  v113 = sub_1BFAAF1E8();
  OUTLINED_FUNCTION_2_3();
  v108 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v27 = OUTLINED_FUNCTION_16_4(v26 - v25);
  v28 = type metadata accessor for SiriSuggestions.SuggestionPresentation(v27);
  v29 = OUTLINED_FUNCTION_60_0(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  v107 = v31 - v30;
  v32 = sub_1BFAAEEF8();
  OUTLINED_FUNCTION_2_3();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v87 - v37;
  v39 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2();
  v45 = v44 - v43;
  v93 = *a10;
  v46 = a10[1];
  v92 = *(a10 + 16);
  v91 = a10[3];
  v90 = *(a10 + 32);
  v99 = v41;
  v104 = *(v41 + 16);
  v103 = a1;
  v104(v44 - v43, a1, v39);
  v101 = v34;
  v89 = *(v34 + 16);
  v102 = a4;
  v89(v38, a4, v32);
  sub_1BF9F94C4(v111, &v121);
  sub_1BF9F94C4(v110, &v120);
  OUTLINED_FUNCTION_24_6();
  sub_1BFA58DF4();
  sub_1BFA54188();
  v88 = *(v108 + 16);
  v88(v114, v105, v113);
  v47 = type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
  __swift_storeEnumTagSinglePayload(v115, 1, 1, v47);
  (*(v117 + 104))(v116, *MEMORY[0x1E69D32B0], v118);
  v48 = sub_1BFAAF758();
  __swift_storeEnumTagSinglePayload(v112, 1, 1, v48);
  v49 = v94;
  v98 = v45;
  v100 = v39;
  v104(v94, v45, v39);
  v50 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_78_1();
  v51 = v96;
  *v52 = v95;
  v52[1] = v51;
  v54 = v49 + *(v53 + 28);
  v104 = v38;
  v97 = v32;
  v89(v54, v38, v32);
  sub_1BF9F94C4(&v121, v49 + v50[8]);
  v55 = v49;
  sub_1BFA58DF4();
  sub_1BFA54188();
  sub_1BF9F94C4(&v120, v49 + v50[9]);
  v56 = v49 + v50[11];
  *v56 = v93;
  *(v56 + 8) = v46;
  *(v56 + 16) = v92;
  *(v56 + 24) = v91;
  *(v56 + 32) = v90;
  v57 = v113;
  (v88)(v49 + v50[12], v114);
  sub_1BFA54188();
  (*(v117 + 16))(v49 + v50[14], v116, v118);
  sub_1BFA54188();

  OUTLINED_FUNCTION_47_3();
  v58 = sub_1BFAAF968();

  if (v58)
  {
    OUTLINED_FUNCTION_76_1();
    v59 = v87;
    v60 = v97;
    (*(v58 + 104))(v87);
    OUTLINED_FUNCTION_4_8();
    LODWORD(v96) = sub_1BFA53D78(v104, v59, v61, v62, MEMORY[0x1E69D3090], MEMORY[0x1E69D30A8]);
    v63 = OUTLINED_FUNCTION_34_4();
    v64(v63);
    sub_1BF9FAB40(v106, &qword_1EBDFB658, &unk_1BFAB3CB0);
    OUTLINED_FUNCTION_0_9();
    v106 = v65;
    sub_1BFA58E4C(v109, v66);
    __swift_destroy_boxed_opaque_existential_2Tm(v110);
    __swift_destroy_boxed_opaque_existential_2Tm(v111);
    v67 = *(v58 + 8);
    v68 = OUTLINED_FUNCTION_57_2(v122);
    v67(v68);
    v69 = *(v99 + 8);
    v70 = v100;
    v69(v103, v100);
    (v67)(v59, v60);
    (*(v117 + 8))(v116, v118);
    sub_1BF9FAB40(v115, &qword_1EBDFB9B0, &qword_1BFAB2628);
    v71 = OUTLINED_FUNCTION_42_1();
    v72(v71);
    sub_1BF9FAB40(v119, &qword_1EBDFB658, &unk_1BFAB3CB0);
    sub_1BFA58E4C(v107, v106);
    __swift_destroy_boxed_opaque_existential_2Tm(&v120);
    __swift_destroy_boxed_opaque_existential_2Tm(&v121);
    v73 = OUTLINED_FUNCTION_57_2(&v123);
    v67(v73);
    v69(v98, v70);
    if (v96)
    {
      v74 = MEMORY[0x1E69D2D90];
    }

    else
    {
      v74 = MEMORY[0x1E69D2D98];
    }
  }

  else
  {
    v75 = OUTLINED_FUNCTION_34_4();
    v76(v75);
    sub_1BF9FAB40(v106, &qword_1EBDFB658, &unk_1BFAB3CB0);
    OUTLINED_FUNCTION_24_6();
    sub_1BFA58E4C(v109, v77);
    __swift_destroy_boxed_opaque_existential_2Tm(v110);
    __swift_destroy_boxed_opaque_existential_2Tm(v111);
    OUTLINED_FUNCTION_76_1();
    v111 = *(v58 + 8);
    v111(v102, v97);
    v78 = *(v99 + 8);
    v79 = v100;
    v78(v103, v100);
    (*(v117 + 8))(v116, v118);
    sub_1BF9FAB40(v115, &qword_1EBDFB9B0, &qword_1BFAB2628);
    v80 = OUTLINED_FUNCTION_42_1();
    v81(v80);
    sub_1BF9FAB40(v119, &qword_1EBDFB658, &unk_1BFAB3CB0);
    sub_1BFA58E4C(v107, v57);
    __swift_destroy_boxed_opaque_existential_2Tm(&v120);
    __swift_destroy_boxed_opaque_existential_2Tm(&v121);
    v82 = OUTLINED_FUNCTION_57_2(&v123);
    (v111)(v82);
    v78(v98, v79);
    v74 = MEMORY[0x1E69D2D98];
  }

  sub_1BF9FAB40(v112, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
  v83 = v50[16];
  v84 = *v74;
  sub_1BFAAEB28();
  OUTLINED_FUNCTION_0();
  return (*(v85 + 104))(v55 + v83, v84);
}

uint64_t SiriSuggestions.Suggestion.init(identifier:suggestionId:deliveryVehicle:owner:sourceOwner:presentation:invocationAction:rankInfo:loggingAction:channelAndScore:objective:associatedTool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v21 = sub_1BFAAEEF8();
  OUTLINED_FUNCTION_2_3();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v61 = v26 - v25;
  v59 = *a10;
  v27 = a10[1];
  v58 = *(a10 + 16);
  v57 = a10[3];
  v56 = *(a10 + 32);
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_18();
  v63 = v29;
  v64 = v28;
  v68 = a1;
  (*(v29 + 16))(a9, a1);
  v30 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v31 = (a9 + v30[5]);
  *v31 = a2;
  v31[1] = a3;
  v67 = v23;
  (*(v23 + 16))(a9 + v30[7], a4, v21);
  v66 = a5;
  sub_1BF9F94C4(a5, a9 + v30[8]);
  OUTLINED_FUNCTION_8_4();
  v65 = a7;
  sub_1BFA58DF4();
  v62 = a8;
  sub_1BFA54188();
  sub_1BF9F94C4(a6, a9 + v30[9]);
  v32 = a9 + v30[11];
  *v32 = v59;
  *(v32 + 8) = v27;
  *(v32 + 16) = v58;
  *(v32 + 24) = v57;
  *(v32 + 32) = v56;
  v33 = v30[12];
  v34 = sub_1BFAAF1E8();
  OUTLINED_FUNCTION_18();
  v36 = v35;
  (*(v35 + 16))(a9 + v33, a11, v34);
  sub_1BFA54188();
  v37 = v30[14];
  v38 = sub_1BFAAF318();
  OUTLINED_FUNCTION_18();
  v40 = v39;
  (*(v39 + 16))(a9 + v37);
  sub_1BFA54188();

  OUTLINED_FUNCTION_47_3();
  LOBYTE(v37) = sub_1BFAAF968();

  if (v37)
  {
    (*(v67 + 104))(v61, *MEMORY[0x1E69D3050], v21);
    OUTLINED_FUNCTION_4_8();
    v60 = sub_1BFA53D78(a4, v61, v41, v42, MEMORY[0x1E69D3090], MEMORY[0x1E69D30A8]);
    (*(v40 + 8))(a13, v38);
    sub_1BF9FAB40(a12, &qword_1EBDFB9B0, &qword_1BFAB2628);
    (*(v36 + 8))(a11, v34);
    sub_1BF9FAB40(v62, &qword_1EBDFB658, &unk_1BFAB3CB0);
    OUTLINED_FUNCTION_0_9();
    sub_1BFA58E4C(v65, v43);
    __swift_destroy_boxed_opaque_existential_2Tm(a6);
    __swift_destroy_boxed_opaque_existential_2Tm(v66);
    v44 = *(v67 + 8);
    v44(a4, v21);
    (*(v63 + 8))(v68, v64);
    v44(v61, v21);
    if (v60)
    {
      sub_1BF9FAB40(a14, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
      v45 = v30[16];
      v46 = *MEMORY[0x1E69D2D90];
      sub_1BFAAEB28();
      OUTLINED_FUNCTION_0();
      return (*(v47 + 104))(a9 + v45, v46);
    }
  }

  else
  {
    (*(v40 + 8))(a13, v38);
    sub_1BF9FAB40(a12, &qword_1EBDFB9B0, &qword_1BFAB2628);
    (*(v36 + 8))(a11, v34);
    sub_1BF9FAB40(v62, &qword_1EBDFB658, &unk_1BFAB3CB0);
    OUTLINED_FUNCTION_0_9();
    sub_1BFA58E4C(v65, v49);
    __swift_destroy_boxed_opaque_existential_2Tm(a6);
    __swift_destroy_boxed_opaque_existential_2Tm(v66);
    (*(v67 + 8))(a4, v21);
    (*(v63 + 8))(v68, v64);
  }

  v50 = sub_1BFAAF758();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a14, 1, v50);
  sub_1BF9FAB40(a14, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
  v52 = v30[16];
  sub_1BFAAEB28();
  OUTLINED_FUNCTION_0();
  if (EnumTagSinglePayload == 1)
  {
    v54 = MEMORY[0x1E69D2D98];
  }

  else
  {
    v54 = MEMORY[0x1E69D2DA0];
  }

  return (*(v53 + 104))(a9 + v52, *v54);
}

void SiriSuggestions.Suggestion.init(from:)()
{
  OUTLINED_FUNCTION_55_2();
  v152 = v0;
  v2 = v1;
  v128 = v3;
  v129 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v130 = v6 - v5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16_4(v9);
  v141 = sub_1BFAAF318();
  OUTLINED_FUNCTION_2_3();
  v137 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10();
  v140 = v13;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16_4(v16);
  v145 = sub_1BFAAF1E8();
  OUTLINED_FUNCTION_2_3();
  v143 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10();
  v21 = OUTLINED_FUNCTION_16_4(v20);
  v150 = type metadata accessor for SiriSuggestions.SuggestionPresentation(v21);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16_4(v24);
  v147 = sub_1BFAAEEF8();
  OUTLINED_FUNCTION_2_3();
  v146 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_14_3();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_16_4(v29);
  v30 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v149 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4_0();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v117 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBB0, &unk_1BFAB3CC8);
  OUTLINED_FUNCTION_2_3();
  v151 = v40;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v41);
  v42 = v2[3];
  v153 = v2;
  OUTLINED_FUNCTION_83_1(v2, v42);
  v43 = sub_1BFA56760();
  v44 = v152;
  sub_1BFAAFFF8();
  if (!v44)
  {
    v152 = v43;
    v45 = v150;
    v126 = v35;
    v163 = 0;
    OUTLINED_FUNCTION_2_8();
    sub_1BFA567B4(v46, v47, MEMORY[0x1E69695D0]);
    sub_1BFAAFE08();
    v163 = 1;
    v123 = sub_1BFAAFDC8();
    v124 = v48;
    v125 = v38;
    v163 = 2;
    OUTLINED_FUNCTION_25_3();
    sub_1BFA567B4(v49, v50, MEMORY[0x1E69D30B0]);
    OUTLINED_FUNCTION_75_1(v147, &v163, v39, v147);
    OUTLINED_FUNCTION_76_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    v162 = 3;
    sub_1BFAAEE58();
    v160 = 4;
    sub_1BFAAEE58();
    v160 = 5;
    OUTLINED_FUNCTION_23_4();
    sub_1BFA567B4(v51, v52, &protocol conformance descriptor for SiriSuggestions.SuggestionPresentation);
    OUTLINED_FUNCTION_75_1(v45, &v160, v39, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBB8, &qword_1BFAB3CD8);
    LOBYTE(v156[0]) = 6;
    sub_1BFAAEE18();
    LOBYTE(v155[0]) = 7;
    sub_1BFA567FC();
    OUTLINED_FUNCTION_75_1(&type metadata for SiriSuggestions.RankInfo, v155, v39, &type metadata for SiriSuggestions.RankInfo);
    v152 = v30;
    v53 = v156[0];
    v54 = v156[1];
    v55 = v157;
    v56 = v158;
    v57 = v159;
    LOBYTE(v156[0]) = 8;
    OUTLINED_FUNCTION_27_5();
    sub_1BFA567B4(v58, v59, MEMORY[0x1E69D31E0]);
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_75_1(v145, v60, v39, v145);
    LOBYTE(v156[0]) = 9;
    sub_1BFA58D14(&qword_1EDCC7058, &qword_1EDCC7060, &protocol conformance descriptor for SiriSuggestions.SuggestionChannelAndScore);
    OUTLINED_FUNCTION_81_0();
    v150 = v39;
    OUTLINED_FUNCTION_75_1(v142, v61, v39, v142);
    LOBYTE(v156[0]) = 10;
    OUTLINED_FUNCTION_26_2();
    sub_1BFA567B4(v62, v63, MEMORY[0x1E69D32C8]);
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_54_2(v64, v65);
    LOBYTE(v156[0]) = 11;
    sub_1BFA56850(&qword_1EDCC6FE0, &qword_1EDCC6FE8, MEMORY[0x1E69DAA38]);
    OUTLINED_FUNCTION_81_0();
    OUTLINED_FUNCTION_54_2(v66, v67);
    v142 = 0;
    OUTLINED_FUNCTION_76_1();
    v118 = MEMORY[0x10];
    v68 = v126;
    MEMORY[0x10](v126, v125, v152);
    v69 = *(v146 + 16);
    v121 = v146 + 16;
    v131 = v69;
    v69(v133, v148, v147);
    sub_1BF9F94C4(&v163, v156);
    sub_1BF9F94C4(&v162, v155);
    OUTLINED_FUNCTION_8_4();
    v117 = v70;
    OUTLINED_FUNCTION_37_2();
    sub_1BFA58DF4();
    sub_1BFA54188();
    v71 = *(v143 + 16);
    v120 = v143 + 16;
    v122 = v71;
    v71(v132, v144, v145);
    OUTLINED_FUNCTION_61_1();
    sub_1BFA54188();
    v119 = *(v137 + 2);
    v119(v136, v140, v141);
    sub_1BFA54188();
    v72 = v130;
    v118(v130, v68, v152);
    v73 = v129;
    v74 = (v72 + *(v129 + 20));
    v75 = v124;
    *v74 = v123;
    v74[1] = v75;
    (v131)(v72 + v73[7], v133, v147);
    sub_1BF9F94C4(v156, v72 + v73[8]);
    sub_1BFA58DF4();
    sub_1BFA54188();
    sub_1BF9F94C4(v155, v72 + v73[9]);
    v76 = v72 + v73[11];
    *v76 = v53;
    *(v76 + 8) = v54;
    *(v76 + 16) = v55;
    *(v76 + 24) = v56;
    *(v76 + 32) = v57;
    v122(v72 + v73[12], v132, v145);
    sub_1BFA54188();
    v119(v72 + v73[14], v136, v141);
    sub_1BFA54188();

    OUTLINED_FUNCTION_47_3();
    LOBYTE(v73) = sub_1BFAAF968();

    if (v73)
    {
      v77 = v146;
      v78 = v127;
      v79 = v147;
      (*(v146 + 104))(v127, *MEMORY[0x1E69D3050], v147);
      OUTLINED_FUNCTION_4_8();
      v80 = v133;
      LODWORD(v131) = sub_1BFA53D78(v133, v78, v81, v82, MEMORY[0x1E69D3090], MEMORY[0x1E69D30A8]);
      v83 = *(v77 + 8);
      v83(v78, v79);
      v124 = v83;
      v146 = *(v137 + 1);
      (v146)(v136, v141);
      sub_1BF9FAB40(v135, &qword_1EBDFB9B0, &qword_1BFAB2628);
      v84 = OUTLINED_FUNCTION_41_2(*(v143 + 8));
      v85(v84);
      sub_1BF9FAB40(v154, &qword_1EBDFB658, &unk_1BFAB3CB0);
      sub_1BFA58E4C(v134, type metadata accessor for SiriSuggestions.SuggestionPresentation);
      __swift_destroy_boxed_opaque_existential_2Tm(v155);
      __swift_destroy_boxed_opaque_existential_2Tm(v156);
      v83(v80, v79);
      v86 = *(v149 + 8);
      v87 = v152;
      v86(v126, v152);
      sub_1BF9FAB40(v139, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
      v88 = OUTLINED_FUNCTION_46_3(v161);
      (v146)(v88);
      v89 = OUTLINED_FUNCTION_61_1();
      sub_1BF9FAB40(v89, &qword_1EBDFB9B0, &qword_1BFAB2628);
      v90 = OUTLINED_FUNCTION_44_2();
      v91(v90);
      sub_1BF9FAB40(&v160, &qword_1EBDFB658, &unk_1BFAB3CB0);
      v92 = OUTLINED_FUNCTION_37_2();
      sub_1BFA58E4C(v92, type metadata accessor for SiriSuggestions.SuggestionPresentation);
      OUTLINED_FUNCTION_39_4();
      v124(v148, v79);
      v86(v125, v87);
      v93 = OUTLINED_FUNCTION_10_6();
      v94(v93);
      if (v131)
      {
        v95 = MEMORY[0x1E69D2D90];
LABEL_12:
        sub_1BF9FAB40(v138, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
        v113 = *(v129 + 64);
        v114 = *v95;
        sub_1BFAAEB28();
        OUTLINED_FUNCTION_0();
        v116 = v130;
        (*(v115 + 104))(v130 + v113, v114);
        sub_1BFA1CA58(v116, v128);
        __swift_destroy_boxed_opaque_existential_2Tm(v153);
        goto LABEL_4;
      }
    }

    else
    {
      v96 = *(v137 + 1);
      v97 = OUTLINED_FUNCTION_46_3(&v157);
      v96(v97);
      sub_1BF9FAB40(v135, &qword_1EBDFB9B0, &qword_1BFAB2628);
      v98 = OUTLINED_FUNCTION_41_2(*(v143 + 8));
      v99(v98);
      sub_1BF9FAB40(v154, &qword_1EBDFB658, &unk_1BFAB3CB0);
      OUTLINED_FUNCTION_0_9();
      v137 = v100;
      sub_1BFA58E4C(v134, v101);
      __swift_destroy_boxed_opaque_existential_2Tm(v155);
      __swift_destroy_boxed_opaque_existential_2Tm(v156);
      v146 = *(v146 + 8);
      (v146)(v133, v147);
      v102 = *(v149 + 8);
      v103 = v152;
      v102(v126, v152);
      sub_1BF9FAB40(v139, &qword_1EBDFBBA8, &qword_1BFAB3CC0);
      v104 = OUTLINED_FUNCTION_46_3(v161);
      v96(v104);
      v105 = OUTLINED_FUNCTION_61_1();
      sub_1BF9FAB40(v105, &qword_1EBDFB9B0, &qword_1BFAB2628);
      v106 = OUTLINED_FUNCTION_44_2();
      v107(v106);
      sub_1BF9FAB40(&v160, &qword_1EBDFB658, &unk_1BFAB3CB0);
      v108 = OUTLINED_FUNCTION_37_2();
      sub_1BFA58E4C(v108, v137);
      OUTLINED_FUNCTION_39_4();
      v109 = OUTLINED_FUNCTION_57_2(&v164);
      (v146)(v109);
      v102(v125, v103);
      v110 = OUTLINED_FUNCTION_10_6();
      v111(v110);
    }

    v112 = sub_1BFAAF758();
    if (__swift_getEnumTagSinglePayload(v138, 1, v112) == 1)
    {
      v95 = MEMORY[0x1E69D2D98];
    }

    else
    {
      v95 = MEMORY[0x1E69D2DA0];
    }

    goto LABEL_12;
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v153);
LABEL_4:
  OUTLINED_FUNCTION_56_2();
}

unint64_t sub_1BFA56760()
{
  result = qword_1EDCC7518;
  if (!qword_1EDCC7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7518);
  }

  return result;
}

uint64_t sub_1BFA567B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BFA567FC()
{
  result = qword_1EDCC7048;
  if (!qword_1EDCC7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7048);
  }

  return result;
}

uint64_t sub_1BFA56850(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
    sub_1BFA567B4(a2, MEMORY[0x1E69DAA28], a3);
    result = OUTLINED_FUNCTION_87_0();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SiriSuggestions.Suggestion.== infix(_:_:)()
{
  OUTLINED_FUNCTION_36_6();
  if ((sub_1BFAAE3C8() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v3 = *(v2 + 20);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = (v0 + v3);
  v7 = v4 == *v6 && v5 == v6[1];
  if (!v7 && (sub_1BFAAFF08() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + 24);
  v9 = (v1 + v8);
  v10 = (v0 + v8);
  v11 = v9[2] == v10[2] && v9[3] == v10[3];
  if (!v11 && (sub_1BFAAFF08() & 1) == 0)
  {
    return 0;
  }

  if (*v9 == *v10 && v9[1] == v10[1])
  {
    return 1;
  }

  return sub_1BFAAFF08();
}

uint64_t static SiriSuggestions.SuggestionPresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_36_6();
  v3 = *(v2 + 16) == v0[2] && v1[3] == v0[3];
  if (v3 || (v4 = sub_1BFAAFF08(), result = 0, (v4 & 1) != 0))
  {
    if (*v1 == *v0 && v1[1] == v0[1])
    {
      return 1;
    }

    else
    {

      return sub_1BFAAFF08();
    }
  }

  return result;
}

uint64_t SiriSuggestions.Suggestion.hash(into:)(uint64_t a1)
{
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_8();
  sub_1BFA567B4(v1, v2, MEMORY[0x1E69695B8]);
  OUTLINED_FUNCTION_38_2();
  sub_1BFAAF818();
  type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_78_1();
  sub_1BFAAF908();

  return sub_1BFAAF908();
}

uint64_t SiriSuggestions.Suggestion.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBC8, &unk_1BFAB3CE0);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_83_1(a1, a1[3]);
  sub_1BFA56760();
  sub_1BFAB0008();
  LOBYTE(v40) = 0;
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_8();
  sub_1BFA567B4(v6, v7, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_12_8();
  sub_1BFAAFEB8();
  if (!v2)
  {
    v8 = type metadata accessor for SiriSuggestions.Suggestion(0);
    LOBYTE(v40) = 1;
    OUTLINED_FUNCTION_21_4();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_79_1(2);
    sub_1BFAAEEF8();
    OUTLINED_FUNCTION_25_3();
    sub_1BFA567B4(v9, v10, MEMORY[0x1E69D3098]);
    OUTLINED_FUNCTION_12_8();
    sub_1BFAAFEB8();
    LOBYTE(v37[0]) = 3;
    v36 = v8;
    OUTLINED_FUNCTION_77_1((v3 + *(v8 + 32)));
    OUTLINED_FUNCTION_49_2();
    (*(v14 + 16))();
    OUTLINED_FUNCTION_31_2();
    sub_1BFAAEE68();
    __swift_destroy_boxed_opaque_existential_2Tm(&v40);
    LOBYTE(v37[0]) = 4;
    OUTLINED_FUNCTION_77_1((v3 + *(v8 + 36)));
    OUTLINED_FUNCTION_49_2();
    (*(v15 + 16))();
    OUTLINED_FUNCTION_31_2();
    sub_1BFAAEE68();
    __swift_destroy_boxed_opaque_existential_2Tm(&v40);
    v16 = OUTLINED_FUNCTION_79_1(5);
    type metadata accessor for SiriSuggestions.SuggestionPresentation(v16);
    OUTLINED_FUNCTION_23_4();
    v19 = sub_1BFA567B4(v17, v18, &protocol conformance descriptor for SiriSuggestions.SuggestionPresentation);
    OUTLINED_FUNCTION_7_6(v19);
    v43 = 6;
    sub_1BFA54188();
    v20 = v38;
    if (v38)
    {
      v21 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      *(&v41 + 1) = v20;
      v42 = *(v21 + 16);
      __swift_allocate_boxed_opaque_existential_1Tm(&v40);
      OUTLINED_FUNCTION_49_2();
      (*(v22 + 16))();
      __swift_destroy_boxed_opaque_existential_2Tm(v37);
    }

    else
    {
      sub_1BF9FAB40(v37, &qword_1EBDFB658, &unk_1BFAB3CB0);
      v40 = 0u;
      v41 = 0u;
      v42 = 0;
    }

    OUTLINED_FUNCTION_31_2();
    sub_1BFAAEE28();
    sub_1BF9FAB40(&v40, &qword_1EBDFB5A8, &qword_1BFAB0A00);
    v23 = OUTLINED_FUNCTION_59_1(v3 + *(v36 + 44));
    *&v40 = v24;
    *(&v40 + 1) = v23;
    LOBYTE(v41) = v25;
    *(&v41 + 1) = v26;
    LOBYTE(v42) = v27;
    LOBYTE(v37[0]) = 7;
    sub_1BFA58CC0();
    OUTLINED_FUNCTION_21_4();
    sub_1BFAAFEB8();
    OUTLINED_FUNCTION_79_1(8);
    sub_1BFAAF1E8();
    OUTLINED_FUNCTION_27_5();
    v30 = sub_1BFA567B4(v28, v29, MEMORY[0x1E69D31D8]);
    OUTLINED_FUNCTION_7_6(v30);
    LOBYTE(v40) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
    v31 = sub_1BFA58D14(&qword_1EDCC6538, &qword_1EDCC6540, &protocol conformance descriptor for SiriSuggestions.SuggestionChannelAndScore);
    OUTLINED_FUNCTION_7_6(v31);
    OUTLINED_FUNCTION_79_1(10);
    sub_1BFAAF318();
    OUTLINED_FUNCTION_26_2();
    v34 = sub_1BFA567B4(v32, v33, MEMORY[0x1E69D32C0]);
    OUTLINED_FUNCTION_7_6(v34);
    LOBYTE(v40) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBA8, &qword_1BFAB3CC0);
    v35 = sub_1BFA56850(&qword_1EDCC6478, &qword_1EDCC6480, MEMORY[0x1E69DAA30]);
    OUTLINED_FUNCTION_7_6(v35);
  }

  v11 = OUTLINED_FUNCTION_19_2();
  return v12(v11);
}

uint64_t sub_1BFA570EC()
{
  OUTLINED_FUNCTION_36_6();
  v3 = v1 == 0x696669746E656469 && v2 == 0xEA00000000007265;
  if (v3 || (OUTLINED_FUNCTION_7(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_69_1();
    v7 = v1 == v5 && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_7(v5, v6) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_65_1();
      v10 = v1 == v8 && v0 == v9;
      if (v10 || (OUTLINED_FUNCTION_7(v8, v9) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = v1 == 0x72656E776FLL && v0 == 0xE500000000000000;
        if (v11 || (OUTLINED_FUNCTION_7(0x72656E776FLL, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_12_5();
          v14 = v1 == v12 && v0 == v13;
          if (v14 || (OUTLINED_FUNCTION_7(v12, v13) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v15 = OUTLINED_FUNCTION_73_1();
            v17 = v1 == v15 && v0 == v16;
            if (v17 || (OUTLINED_FUNCTION_7(v15, v16) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v18 = v1 == 0xD000000000000010 && 0x80000001BFAB9520 == v0;
              if (v18 || (v19 = OUTLINED_FUNCTION_47_3(), (OUTLINED_FUNCTION_7(v19, v20) & 1) != 0))
              {

                return 6;
              }

              else
              {
                v21 = v1 == 0x6F666E496B6E6172 && v0 == 0xE800000000000000;
                if (v21 || (OUTLINED_FUNCTION_7(0x6F666E496B6E6172, 0xE800000000000000) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v22 = OUTLINED_FUNCTION_64_1();
                  v24 = v1 == v22 && v0 == v23;
                  if (v24 || (OUTLINED_FUNCTION_7(v22, v23) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v25 = OUTLINED_FUNCTION_63_2();
                    v27 = v1 == v25 && v0 == v26;
                    if (v27 || (OUTLINED_FUNCTION_7(v25, v26) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v28 = v1 == 0x76697463656A626FLL && v0 == 0xE900000000000065;
                      if (v28 || (OUTLINED_FUNCTION_7(0x76697463656A626FLL, 0xE900000000000065) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v29 = OUTLINED_FUNCTION_62_0();
                        if (v1 == v29 && v0 == v30)
                        {

                          return 11;
                        }

                        else
                        {
                          v32 = OUTLINED_FUNCTION_7(v29, v30);

                          if (v32)
                          {
                            return 11;
                          }

                          else
                          {
                            return 12;
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

uint64_t sub_1BFA57390(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_69_1();
      break;
    case 2:
      result = OUTLINED_FUNCTION_65_1();
      break;
    case 3:
      result = 0x72656E776FLL;
      break;
    case 4:
      result = OUTLINED_FUNCTION_12_5();
      break;
    case 5:
      result = OUTLINED_FUNCTION_73_1();
      break;
    case 6:
      result = OUTLINED_FUNCTION_47_3();
      break;
    case 7:
      result = 0x6F666E496B6E6172;
      break;
    case 8:
      result = OUTLINED_FUNCTION_64_1();
      break;
    case 9:
      result = OUTLINED_FUNCTION_63_2();
      break;
    case 10:
      result = 0x76697463656A626FLL;
      break;
    case 11:
      result = OUTLINED_FUNCTION_62_0();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA574FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA570EC();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA57530(uint64_t a1)
{
  v2 = sub_1BFA56760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA5756C(uint64_t a1)
{
  v2 = sub_1BFA56760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.Suggestion.hashValue.getter()
{
  OUTLINED_FUNCTION_89_1();
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_8();
  sub_1BFA567B4(v0, v1, MEMORY[0x1E69695B8]);
  sub_1BFAAF818();
  type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_78_1();
  sub_1BFAAF908();
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA57650(uint64_t a1, uint64_t a2)
{
  sub_1BFAAFF98();
  sub_1BFAAE3F8();
  sub_1BFA567B4(&qword_1EBDFBBC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1BFAAF818();
  sub_1BFAAF908();
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA57758()
{
  v0 = OUTLINED_FUNCTION_22_3();
  v1(v0);
  OUTLINED_FUNCTION_0();
  v2 = OUTLINED_FUNCTION_96();

  return v3(v2);
}

uint64_t SiriSuggestions.SuggestionChannelAndScore.init(channel:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1BFAAF2E8();
  OUTLINED_FUNCTION_0();
  (*(v6 + 32))(a2, a1);
  result = OUTLINED_FUNCTION_90_1();
  *(a2 + v8) = a3;
  return result;
}

BOOL static SiriSuggestions.SuggestionChannelAndScore.== infix(_:_:)()
{
  OUTLINED_FUNCTION_36_6();
  if ((sub_1BFAAF2D8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_90_1();
  return *(v1 + v2) == *(v0 + v2);
}

uint64_t sub_1BFA57884(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BFAAFF08();

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

uint64_t sub_1BFA57948(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x6C656E6E616863;
  }
}

uint64_t sub_1BFA57984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA57884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA579AC(uint64_t a1)
{
  v2 = sub_1BFA58DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA579E8(uint64_t a1)
{
  v2 = sub_1BFA58DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SuggestionChannelAndScore.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBD0, &qword_1BFAB3CF0);
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_83_1(a1, a1[3]);
  sub_1BFA58DA0();
  sub_1BFAB0008();
  sub_1BFAAF2E8();
  OUTLINED_FUNCTION_9_5();
  sub_1BFA567B4(v8, v9, MEMORY[0x1E69D3268]);
  OUTLINED_FUNCTION_12_8();
  sub_1BFAAFEB8();
  if (!v1)
  {
    type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
    sub_1BFAAFE98();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t SiriSuggestions.SuggestionChannelAndScore.hash(into:)()
{
  sub_1BFAAF2E8();
  OUTLINED_FUNCTION_9_5();
  sub_1BFA567B4(v1, v2, MEMORY[0x1E69D3270]);
  OUTLINED_FUNCTION_38_2();
  sub_1BFAAF818();
  OUTLINED_FUNCTION_90_1();
  v4 = *(v0 + v3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1BFB61210](*&v4);
}

uint64_t SiriSuggestions.SuggestionChannelAndScore.hashValue.getter()
{
  OUTLINED_FUNCTION_89_1();
  SiriSuggestions.SuggestionChannelAndScore.hash(into:)();
  return sub_1BFAAFFE8();
}

void SiriSuggestions.SuggestionChannelAndScore.init(from:)()
{
  OUTLINED_FUNCTION_55_2();
  v2 = v1;
  sub_1BFAAF2E8();
  OUTLINED_FUNCTION_2_3();
  v20 = v4;
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBE0, &qword_1BFAB3CF8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for SiriSuggestions.SuggestionChannelAndScore(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_83_1(v2, v2[3]);
  sub_1BFA58DA0();
  sub_1BFAAFFF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_9_5();
    sub_1BFA567B4(v14, v15, MEMORY[0x1E69D3278]);
    sub_1BFAAFE08();
    (*(v20 + 32))(v13, v7, v21);
    OUTLINED_FUNCTION_50_3();
    sub_1BFAAFDE8();
    v17 = v16;
    v18 = OUTLINED_FUNCTION_48_3();
    v19(v18);
    *(v13 + *(v9 + 20)) = v17;
    sub_1BFA58DF4();
    __swift_destroy_boxed_opaque_existential_2Tm(v2);
    sub_1BFA58E4C(v13, type metadata accessor for SiriSuggestions.SuggestionChannelAndScore);
  }

  OUTLINED_FUNCTION_56_2();
}

uint64_t sub_1BFA57F38(uint64_t a1)
{
  sub_1BFAAFF98();
  SiriSuggestions.SuggestionChannelAndScore.hash(into:)();
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA58058@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  a2(0);
  OUTLINED_FUNCTION_0();
  v9 = *(v8 + 16);

  return v9(a3, v3 + v6, v7);
}

uint64_t SiriSuggestions.SuggestionPresentation.locale.getter()
{
  type metadata accessor for SiriSuggestions.SuggestionPresentation(0);

  return OUTLINED_FUNCTION_96();
}

void SiriSuggestions.SuggestionPresentation.policyResult.getter()
{
  v2 = OUTLINED_FUNCTION_22_3();
  v3 = (v1 + *(type metadata accessor for SiriSuggestions.SuggestionPresentation(v2) + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  v0[5] = v9;

  sub_1BFA3C558(v4, v5, v6, v7, v8, v9);
}

__n128 SiriSuggestions.SuggestionPresentation.init(spokenText:displayText:description:assets:policyResult:locale:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = *(a8 + 32);
  v15 = *(a8 + 40);
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  v16 = type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
  v17 = v16[7];
  sub_1BFAAF218();
  OUTLINED_FUNCTION_0();
  v22 = *(a8 + 16);
  v23 = *a8;
  (*(v18 + 32))(&a9[v17], a7);
  v19 = &a9[v16[9]];
  result = v23;
  *v19 = v23;
  *(v19 + 1) = v22;
  *(v19 + 4) = v14;
  *(v19 + 5) = v15;
  v21 = &a9[v16[8]];
  *v21 = a10;
  *(v21 + 1) = a11;
  return result;
}

uint64_t SiriSuggestions.SuggestionPresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v3 = sub_1BFAAF218();
  OUTLINED_FUNCTION_2_3();
  v53 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBE8, &qword_1BFAB3D00);
  OUTLINED_FUNCTION_2_3();
  v52 = v10;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = a1[3];
  v55 = a1;
  OUTLINED_FUNCTION_83_1(a1, v14);
  sub_1BFA58EA4();
  v15 = v54;
  sub_1BFAAFFF8();
  if (!v15)
  {
    v54 = v8;
    v16 = v52;
    v17 = v53;
    LOBYTE(v56) = 0;
    v18 = sub_1BFAAFDC8();
    v20 = v19;
    v49 = OUTLINED_FUNCTION_88_0(1);
    v50 = v21;
    v62 = 2;
    OUTLINED_FUNCTION_53_3(MEMORY[0x1E69E6158]);
    v46 = v56;
    v47 = v18;
    v48 = v57;
    LOBYTE(v56) = 3;
    OUTLINED_FUNCTION_28_2();
    sub_1BFA567B4(v23, v24, MEMORY[0x1E69D3200]);
    sub_1BFAAFE08();
    v62 = 4;
    OUTLINED_FUNCTION_53_3(&type metadata for PolicyResult);
    v41 = v56;
    v42 = v57;
    v43 = v58;
    v44 = v59;
    v25 = v61;
    v45 = v60;
    v26 = OUTLINED_FUNCTION_88_0(5);
    v27 = v17;
    v28 = *(v16 + 8);
    v29 = v26;
    v52 = v30;
    v28(v13, v9);
    v31 = v25;
    v32 = type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
    v33 = v51;
    (*(v27 + 32))(v51 + v32[7], v54, v3);
    *v33 = v47;
    v33[1] = v20;
    v34 = v50;
    v33[2] = v49;
    v33[3] = v34;
    v35 = v48;
    v33[4] = v46;
    v33[5] = v35;
    v36 = (v33 + v32[9]);
    v37 = v42;
    *v36 = v41;
    v36[1] = v37;
    v38 = v44;
    v36[2] = v43;
    v36[3] = v38;
    v36[4] = v45;
    v36[5] = v31;
    v39 = (v33 + v32[8]);
    v40 = v52;
    *v39 = v29;
    v39[1] = v40;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v55);
}

uint64_t SiriSuggestions.SuggestionPresentation.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBF0, &qword_1BFAB3D08);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_83_1(a1, a1[3]);
  sub_1BFA58EA4();
  sub_1BFAB0008();
  LOBYTE(v31) = 0;
  OUTLINED_FUNCTION_21_4();
  sub_1BFAAFE78();
  if (!v2)
  {
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_21_4();
    sub_1BFAAFE78();
    v36 = 2;
    v9 = *(v3 + 40);
    if (v9)
    {
      v10 = *(v3 + 32);
      v11 = MEMORY[0x1E69E6160];
      v12 = MEMORY[0x1E69E6158];
    }

    else
    {
      v10 = 0;
      v12 = 0;
      v11 = 0;
      v33 = 0;
    }

    v31 = v10;
    v32 = v9;
    v34 = v12;
    v35 = v11;

    OUTLINED_FUNCTION_66_2();
    sub_1BF9FAB40(&v31, &qword_1EBDFB5A8, &qword_1BFAB0A00);
    v13 = type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
    LOBYTE(v31) = 3;
    sub_1BFAAF218();
    OUTLINED_FUNCTION_28_2();
    sub_1BFA567B4(v14, v15, MEMORY[0x1E69D31F8]);
    OUTLINED_FUNCTION_12_8();
    sub_1BFAAFEB8();
    v36 = 4;
    v16 = (v3 + *(v13 + 36));
    v18 = *v16;
    v17 = v16[1];
    v20 = v16[2];
    v19 = v16[3];
    v21 = v16[4];
    v22 = v16[5];
    if (v20)
    {
      v29 = v16[1];
      v30 = *v16;
      v27 = v16[3];
      v28 = v16[4];
      v26 = v16[5];
      v23 = sub_1BFA3D770();
      v24 = swift_allocObject();
      v22 = v26;
      v19 = v27;
      v21 = v28;
      v17 = v29;
      v18 = v30;
      *(v24 + 16) = v30 & 1;
      *(v24 + 24) = v29;
      *(v24 + 32) = v20;
      *(v24 + 40) = v27;
      *(v24 + 48) = v28 & 1;
      *(v24 + 56) = v26;
      v25 = &type metadata for PolicyResult;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v23 = 0;
      v32 = 0;
      v33 = 0;
    }

    v31 = v24;
    v34 = v25;
    v35 = v23;
    sub_1BFA3C558(v18, v17, v20, v19, v21, v22);
    OUTLINED_FUNCTION_66_2();
    sub_1BF9FAB40(&v31, &qword_1EBDFB5A8, &qword_1BFAB0A00);
    LOBYTE(v31) = 5;
    OUTLINED_FUNCTION_21_4();
    sub_1BFAAFE78();
  }

  v6 = OUTLINED_FUNCTION_19_2();
  return v7(v6);
}

uint64_t sub_1BFA589B0()
{
  OUTLINED_FUNCTION_36_6();
  v3 = v1 == 0x65546E656B6F7073 && v2 == 0xEA00000000007478;
  if (v3 || (OUTLINED_FUNCTION_7(0x65546E656B6F7073, 0xEA00000000007478) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_72_1();
    v7 = v1 == v5 && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_7(v5, v6) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_71_0();
      v10 = v1 == v8 && v0 == v9;
      if (v10 || (OUTLINED_FUNCTION_7(v8, v9) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = v1 == 0x737465737361 && v0 == 0xE600000000000000;
        if (v11 || (OUTLINED_FUNCTION_7(0x737465737361, 0xE600000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_70_0();
          v14 = v1 == v12 && v0 == v13;
          if (v14 || (OUTLINED_FUNCTION_7(v12, v13) & 1) != 0)
          {

            return 4;
          }

          else if (v1 == 0x656C61636F6CLL && v0 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v16 = OUTLINED_FUNCTION_7(0x656C61636F6CLL, 0xE600000000000000);

            if (v16)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BFA58B18(char a1)
{
  result = 0x65546E656B6F7073;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_72_1();
      break;
    case 2:
      result = OUTLINED_FUNCTION_71_0();
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = OUTLINED_FUNCTION_70_0();
      break;
    case 5:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA58BD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA589B0();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA58C04(uint64_t a1)
{
  v2 = sub_1BFA58EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA58C40(uint64_t a1)
{
  v2 = sub_1BFA58EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestions.SuggestionPresentation.hashValue.getter()
{
  OUTLINED_FUNCTION_89_1();
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

unint64_t sub_1BFA58CC0()
{
  result = qword_1EDCC6528;
  if (!qword_1EDCC6528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6528);
  }

  return result;
}

uint64_t sub_1BFA58D14(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB9B0, &qword_1BFAB2628);
    sub_1BFA567B4(a2, type metadata accessor for SiriSuggestions.SuggestionChannelAndScore, a3);
    result = OUTLINED_FUNCTION_87_0();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BFA58DA0()
{
  result = qword_1EDCC7078;
  if (!qword_1EDCC7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7078);
  }

  return result;
}

uint64_t sub_1BFA58DF4()
{
  OUTLINED_FUNCTION_36_6();
  v1(0);
  OUTLINED_FUNCTION_0();
  v2 = OUTLINED_FUNCTION_96();
  v3(v2);
  return v0;
}

uint64_t sub_1BFA58E4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BFA58EA4()
{
  result = qword_1EDCC7500;
  if (!qword_1EDCC7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7500);
  }

  return result;
}

uint64_t sub_1BFA58EF8(uint64_t a1)
{
  sub_1BFAAFF98();
  sub_1BFAAF908();
  return sub_1BFAAFFE8();
}

uint64_t SiriSuggestions.RankInfo.init(rank:score:tier:windowTs:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *a2;
  *a5 = result;
  *(a5 + 8) = a6;
  *(a5 + 16) = v6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4 & 1;
  return result;
}

uint64_t *SiriSuggestions.RankInfo.init(from:tier:rank:)@<X0>(uint64_t *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *result;
  v6 = result[1];
  v7 = *(result + 16);
  v8 = result[3];
  v9 = *(result + 32);
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  if (*a2 != 3)
  {
    v7 = *a2;
  }

  *a5 = v5;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 24) = v8;
  *(a5 + 32) = v9;
  return result;
}

uint64_t static SiriSuggestions.RankInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if ((sub_1BFA53304(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BFA590AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802396018 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1919248756 && a2 == 0xE400000000000000;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7354776F646E6977 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BFAAFF08();

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

uint64_t sub_1BFA59200(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_89_1();
  MEMORY[0x1BFB611E0](a1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA59240(char a1)
{
  result = 1802396018;
  switch(a1)
  {
    case 1:
      result = 0x65726F6373;
      break;
    case 2:
      result = 1919248756;
      break;
    case 3:
      result = 0x7354776F646E6977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA592B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA590AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA592DC(uint64_t a1)
{
  v2 = sub_1BFA59514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA59318(uint64_t a1)
{
  v2 = sub_1BFA59514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriSuggestions.RankInfo.encode(to:)()
{
  OUTLINED_FUNCTION_55_2();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBBF8, &qword_1BFAB3D10);
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  v11[1] = *(v0 + 32);
  OUTLINED_FUNCTION_83_1(v3, v3[3]);
  sub_1BFA59514();
  sub_1BFAB0008();
  v17 = 0;
  OUTLINED_FUNCTION_3();
  sub_1BFAAFEA8();
  if (!v1)
  {
    v10 = v13;
    OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_3();
    sub_1BFAAFE98();
    v16 = v10;
    v15 = 2;
    sub_1BFA59568();
    OUTLINED_FUNCTION_3();
    sub_1BFAAFEB8();
    v14 = 3;
    OUTLINED_FUNCTION_3();
    sub_1BFAAFE58();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_56_2();
}

unint64_t sub_1BFA59514()
{
  result = qword_1EDCC74E0;
  if (!qword_1EDCC74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC74E0);
  }

  return result;
}

unint64_t sub_1BFA59568()
{
  result = qword_1EDCC6530;
  if (!qword_1EDCC6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6530);
  }

  return result;
}

void SiriSuggestions.RankInfo.init(from:)()
{
  OUTLINED_FUNCTION_55_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBC00, &unk_1BFAB3D18);
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  OUTLINED_FUNCTION_83_1(v2, v2[3]);
  sub_1BFA59514();
  sub_1BFAAFFF8();
  if (!v0)
  {
    v21 = 0;
    OUTLINED_FUNCTION_52_3();
    v11 = sub_1BFAAFDF8();
    OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_52_3();
    sub_1BFAAFDE8();
    v13 = v12;
    v19 = 2;
    sub_1BFA597A4();
    sub_1BFAAFE08();
    HIDWORD(v17) = v20;
    v18 = 3;
    OUTLINED_FUNCTION_52_3();
    v14 = sub_1BFAAFDA8();
    v16 = v15;
    (*(v7 + 8))(v10, v5);
    *v4 = v11;
    *(v4 + 8) = v13;
    *(v4 + 16) = BYTE4(v17);
    *(v4 + 24) = v14;
    *(v4 + 32) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v2);
  OUTLINED_FUNCTION_56_2();
}

unint64_t sub_1BFA597A4()
{
  result = qword_1EDCC7050;
  if (!qword_1EDCC7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7050);
  }

  return result;
}

uint64_t SiriSuggestions.Tier.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1BFAAFD58();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t SiriSuggestions.Tier.rawValue.getter()
{
  v1 = 0x3272656974;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x3172656974;
  }
}

uint64_t sub_1BFA59924@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestions.Tier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::String __swiftcall SiriSuggestions.Suggestion.getAppBundleId()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D8, &qword_1BFAB1450);
  v1 = OUTLINED_FUNCTION_60_0(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_0();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1BFAAF138();
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_0();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  type metadata accessor for SiriSuggestions.Suggestion(0);
  type metadata accessor for SiriSuggestions.SuggestionPresentation(0);
  sub_1BFAAF1F8();
  OUTLINED_FUNCTION_91_0(v4);
  if (v18)
  {
    sub_1BFAAF208();
    OUTLINED_FUNCTION_91_0(v4);
    if (!v18)
    {
      sub_1BF9FAB40(v4, &qword_1EBDFB6D8, &qword_1BFAB1450);
    }
  }

  else
  {
    (*(v10 + 32))(v7, v4, v8);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  }

  OUTLINED_FUNCTION_91_0(v7);
  if (v18)
  {
    sub_1BF9FAB40(v7, &qword_1EBDFB6D8, &qword_1BFAB1450);
LABEL_11:
    v22 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_12;
  }

  (*(v10 + 32))(v17, v7, v8);
  (*(v10 + 16))(v14, v17, v8);
  v19 = (*(v10 + 88))(v14, v8);
  v20 = *MEMORY[0x1E69D31A0];
  v21 = *(v10 + 8);
  v21(v17, v8);
  if (v19 != v20)
  {
    v21(v14, v8);
    goto LABEL_11;
  }

  (*(v10 + 96))(v14, v8);
  v22 = *v14;
  v23 = v14[1];
LABEL_12:
  result._object = v23;
  result._countAndFlagsBits = v22;
  return result;
}

unint64_t sub_1BFA59DA0()
{
  result = qword_1EBDFBC20;
  if (!qword_1EBDFBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBC20);
  }

  return result;
}