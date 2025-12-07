unint64_t sub_22FA812F8()
{
  result = qword_28147ADA0;
  if (!qword_28147ADA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28147ADA0);
  }

  return result;
}

uint64_t sub_22FA8136C()
{
  v0 = sub_22FCC6DE4();
  v8[3] = v0;
  v8[4] = sub_22FA814F4(qword_28147B080, 255, MEMORY[0x277D3A838], MEMORY[0x277D3A7F0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A808], v0);
  v2 = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if ((v2 & 1) == 0)
  {
    if (qword_27DAD6E68 != -1)
    {
      swift_once();
    }

    v3 = sub_22FCC8684();
    __swift_project_value_buffer(v3, qword_27DAD76E8);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FA28000, v4, v5, "PublicEventCachingTask not enabled to run due to feature flag being disabled", v6, 2u);
      MEMORY[0x23190A000](v6, -1, -1);
    }
  }

  return v2 & 1;
}

uint64_t sub_22FA814F4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_22FA81540(uint64_t a1)
{
  sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    sub_22FCC91F4();
    if (v2 <= 0x3F)
    {
      sub_22FA83258(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

unint64_t sub_22FA81690@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22FA83984(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22FA816BC()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0x74754F64656D6954;
  v4 = 0x656C6C65636E6143;
  if (v1 != 4)
  {
    v4 = 0x6F69747065637845;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6564656563637553;
  if (v1 != 1)
  {
    v5 = 0x64656C696146;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t *sub_22FA81790@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_22FA817A8()
{
  v1 = 0x6E616D6564206E4FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F72676B636142;
  }
}

uint64_t sub_22FA81828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v26 - v9;
  v11 = sub_22FCC6794();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v26 - v19;
  (*(a2 + 80))(a1, a2, v18);
  v21 = v12[6];
  if (v21(v10, 1, v11) == 1)
  {
    return sub_22FA2B420(v10, &qword_27DAD8730, &qword_22FCD1B20);
  }

  v28 = v15;
  v27 = v12[4];
  v27(v20, v10, v11);
  v23 = v29;
  (*(a2 + 88))(a1, a2);
  if (v21(v23, 1, v11) == 1)
  {
    v24 = v28;
    sub_22FCC6784();
    if (v21(v23, 1, v11) != 1)
    {
      sub_22FA2B420(v23, &qword_27DAD8730, &qword_22FCD1B20);
    }
  }

  else
  {
    v24 = v28;
    v27(v28, v23, v11);
  }

  sub_22FCC66D4();
  v25 = v12[1];
  v25(v24, v11);
  return (v25)(v20, v11);
}

uint64_t sub_22FA81B34()
{
  sub_22FCC9384();

  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 40))(v1, v2);
  MEMORY[0x231907FA0](v3);

  MEMORY[0x231907FA0](0x6E696769726F2820, 0xEA0000000000203ALL);
  if (*(v0 + qword_281488000))
  {
    if (*(v0 + qword_281488000) == 1)
    {
      v4 = 0xE900000000000064;
      v5 = 0x6E616D6564206E4FLL;
    }

    else
    {
      v4 = 0x800000022FCE10A0;
      v5 = 0xD000000000000012;
    }
  }

  else
  {
    v4 = 0xEF6B73617420646ELL;
    v5 = 0x756F72676B636142;
  }

  MEMORY[0x231907FA0](v5, v4);

  MEMORY[0x231907FA0](41, 0xE100000000000000);
  return 0x206B736154;
}

uint64_t sub_22FA81C90()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v7 = (*(v2 + 40))(v1, v2);
  MEMORY[0x231907FA0](46, 0xE100000000000000);
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = (*(v4 + 48))(v3, v4);
  MEMORY[0x231907FA0](v5);

  return v7;
}

uint64_t sub_22FA81D4C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA81E10, 0, 0);
}

uint64_t sub_22FA81E10()
{
  v74 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = sub_22FCC6794();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = *(*v3 + 176);
  swift_beginAccess();
  sub_22FA2F4C8(v2, v3 + v7);
  swift_endAccess();
  v0[13] = v3;
  WitnessTable = swift_getWitnessTable();
  sub_22FA81828(v1, WitnessTable);
  v9 = sub_22FC3B88C(v8);
  v11 = v10;
  v72 = qword_281488030;
  LODWORD(v1) = *(v3 + qword_281488030);

  if (v1 != 1)
  {

    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F34();
    if (!os_log_type_enabled(v20, v21))
    {

      goto LABEL_28;
    }

    v66 = v21;
    v22 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v73 = v68;
    *v22 = 136446978;
    v23 = sub_22FA81B34();
    v25 = sub_22FA2F600(v23, v24, &v73);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    v26 = sub_22FA2F600(v9, v11, &v73);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2082;
    v27 = *(v3 + v72);

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v39 = 0xE800000000000000;
        v28 = 0x74754F64656D6954;
        goto LABEL_23;
      }

      if (v27 != 4)
      {
        v39 = 0xE90000000000006ELL;
        v28 = 0x6F69747065637845;
        goto LABEL_23;
      }

      v28 = 0x656C6C65636E6143;
    }

    else
    {
      if (!v27)
      {
        v39 = 0xE700000000000000;
        v28 = 0x6E776F6E6B6E55;
        goto LABEL_23;
      }

      if (v27 != 1)
      {
        v39 = 0xE600000000000000;
        v28 = 0x64656C696146;
        goto LABEL_23;
      }

      v28 = 0x6564656563637553;
    }

    v39 = 0xE900000000000064;
LABEL_23:
    v40 = v0[17];
    v41 = sub_22FA2F600(v28, v39, &v73);

    *(v22 + 24) = v41;
    *(v22 + 32) = 2080;
    if (*(v40 + *(*v40 + 160)))
    {
      swift_getErrorValue();
      v42 = v0[10];
      v43 = v0[11];
      v44 = *(v43 - 8);
      v45 = swift_task_alloc();
      (*(v44 + 16))(v45, v42, v43);
      v46 = sub_22FCC97D4();
      v48 = v47;
      (*(v44 + 8))(v45, v43);
    }

    else
    {
      v48 = 0xE800000000000000;
      v46 = 0x726F727265206F6ELL;
    }

    v49 = sub_22FA2F600(v46, v48, &v73);

    *(v22 + 34) = v49;
    _os_log_impl(&dword_22FA28000, v20, v66, "%{public}s failed in %{public}s: %{public}s (%s)", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v68, -1, -1);
    MEMORY[0x23190A000](v22, -1, -1);
LABEL_27:

    goto LABEL_28;
  }

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v73 = v67;
    *v14 = 136446466;
    v15 = sub_22FA81B34();
    v65 = v9;
    v17 = v16;

    v18 = sub_22FA2F600(v15, v17, &v73);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_22FA2F600(v65, v11, &v73);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_22FA28000, v12, v13, "%{public}s completed in %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v67, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  else
  {
  }

  v29 = *(v0[17] + qword_281488028);
  if (v29)
  {

    v20 = sub_22FCC8664();
    v30 = sub_22FCC8F34();
    if (!os_log_type_enabled(v20, v30))
    {

      goto LABEL_28;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v73 = v69;
    *v31 = 136446466;
    v33 = sub_22FA81B34();
    v35 = v34;

    v36 = sub_22FA2F600(v33, v35, &v73);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2114;
    v37 = *(v29 + 16);
    *(v31 + 14) = v37;
    *v32 = v37;
    v38 = v37;
    _os_log_impl(&dword_22FA28000, v20, v30, "New incremental token for %{public}s: %{public}@", v31, 0x16u);
    sub_22FA2B420(v32, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x23190A000](v69, -1, -1);
    MEMORY[0x23190A000](v31, -1, -1);

    goto LABEL_27;
  }

LABEL_28:
  v50 = v0[17];
  v51 = v50[5];
  v52 = v50[6];
  __swift_project_boxed_opaque_existential_1(v50 + 2, v51);
  if ((*(v52 + 96))(v51, v52))
  {
    v54 = v0[17];
    v53 = v0[18];
    v55 = v50[5];
    v56 = v50[6];
    __swift_project_boxed_opaque_existential_1(v50 + 2, v55);
    (*(v56 + 32))(v55, v56);
    v57 = v0[5];
    v58 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v57);
    v0[20] = (*(v58 + 56))(v57, v58);
    v59 = v50[5];
    v70 = v50[6];
    __swift_project_boxed_opaque_existential_1(v50 + 2, v59);
    v0[14] = v54;
    sub_22FA81828(v53, WitnessTable);
    v60 = *(v54 + *(*v54 + 160));
    v0[21] = v60;
    v0[22] = *(v54 + qword_281488028);
    v61 = v60;

    v62 = swift_task_alloc();
    v0[23] = v62;
    *v62 = v0;
    v62[1] = sub_22FA827AC;
    v76 = v59;
    v77 = v70;

    JUMPOUT(0x22FC37E04);
  }

  v63 = v0[1];

  return v63();
}

uint64_t sub_22FA827AC()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_22FA82924()
{
  if (*(v0 + qword_281488018))
  {
    return 1;
  }

  if (!*(v0 + qword_281488010))
  {
    return 0;
  }

  isCancelled = swift_task_isCancelled();

  return isCancelled & 1;
}

void sub_22FA8298C()
{
  *(v0 + qword_281488018) = 1;
  if (*(v0 + qword_281488010))
  {

    sub_22FCC8D54();
  }

  *(v0 + qword_281488030) = 4;
  sub_22FCC8CF4();
  sub_22FA838BC();
  v1 = swift_allocError();
  sub_22FCC89B4();
  v2 = *(*v0 + 160);
  v3 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_22FA82A98()
{
  v1 = *(v0[2] + qword_281488010);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_22FA82BA4;
    v3 = MEMORY[0x277D84A98];
    v4 = MEMORY[0x277D84AC0];
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200440](v0 + 5, v1, v5, v3, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22FA82BA4()
{

  return MEMORY[0x2822009F8](sub_22FA82CBC, 0, 0);
}

uint64_t sub_22FA82CD0(char a1)
{
  v2 = v1;
  if (qword_281481AF8 != -1)
  {
    swift_once();
  }

  if (byte_281488078 == 1 && PFOSVariantHasInternalDiagnostics())
  {

    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v27 = v7;
      *v6 = 136315138;
      v8 = v1[5];
      v9 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v8);
      v10 = (*(v9 + 40))(v8, v9);
      v12 = sub_22FA2F600(v10, v11, &v27);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_22FA28000, v4, v5, "hit timeout for task %s: tapToRadarForTimeoutsIsEnabled, triggering TTR flow", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23190A000](v7, -1, -1);
      MEMORY[0x23190A000](v6, -1, -1);
    }

    v27 = 0;
    v28 = 0xE000000000000000;
    sub_22FCC9384();

    v27 = 0xD00000000000002DLL;
    v28 = 0x800000022FCE0FD0;
    v13 = v1[5];
    v14 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
    v15 = (*(v14 + 40))(v13, v14);
    MEMORY[0x231907FA0](v15);

    MEMORY[0x231907FA0](39, 0xE100000000000000);
    v17 = v27;
    v16 = v28;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_22FCC9384();
    MEMORY[0x231907FA0](v17, v16);
    MEMORY[0x231907FA0](0xD000000000000041, 0x800000022FCE1000);
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v18 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v18);

    MEMORY[0x231907FA0](0xD000000000000043, 0x800000022FCE1050);
    v19 = objc_opt_self();
    v20 = sub_22FCC8A54();

    v21 = sub_22FCC8A54();

    v22 = sub_22FCC8A54();
    v23 = sub_22FCC8C24();
    [v19 tapToRadarWithTitle:v20 description:v21 radarComponent:3 isUserInitiated:0 displayReason:v22 attachments:v23];
  }

  v24 = v2[5];
  v25 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v24);
  return (*(v25 + 160))(a1 & 1, v24, v25);
}

char *sub_22FA83080()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = qword_281488008;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  v3 = *(*v0 + 152);
  v4 = sub_22FCC91F4();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  sub_22FA2B420(&v0[*(*v0 + 168)], &qword_27DAD8730, &qword_22FCD1B20);
  sub_22FA2B420(&v0[*(*v0 + 176)], &qword_27DAD8730, &qword_22FCD1B20);
  return v0;
}

uint64_t sub_22FA831E8()
{
  sub_22FA83080();

  return swift_deallocClassInstance();
}

void sub_22FA83258(uint64_t a1)
{
  if (!qword_281482520)
  {
    sub_22FCC6794();
    v1 = sub_22FCC91F4();
    if (!v2)
    {
      atomic_store(v1, &qword_281482520);
    }
  }
}

uint64_t getEnumTagSinglePayload for PHATaskCompletionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PHATaskCompletionState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FA83444()
{
  result = qword_27DAD7768;
  if (!qword_27DAD7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7768);
  }

  return result;
}

uint64_t sub_22FA834C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22FA83520()
{
  result = qword_27DAD7780;
  if (!qword_27DAD7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7780);
  }

  return result;
}

uint64_t sub_22FA835F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 168);
  swift_beginAccess();
  return sub_22FA83914(v3 + v4, a1);
}

uint64_t sub_22FA83660@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 176);
  swift_beginAccess();
  return sub_22FA83914(v3 + v4, a1);
}

uint64_t sub_22FA836C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C030;

  return sub_22FA81D4C(a1);
}

uint64_t sub_22FA837A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C21C;

  return sub_22FA82A78();
}

uint64_t sub_22FA83880(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22FA838BC()
{
  result = qword_28147AFC0;
  if (!qword_28147AFC0)
  {
    sub_22FCC8CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AFC0);
  }

  return result;
}

uint64_t sub_22FA83914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FA83984(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

id PhotoStyle.__allocating_init(photoLibrary:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22FA88FDC(a1);

  return v4;
}

id PhotoStyle.init(photoLibrary:)(void *a1)
{
  v2 = sub_22FA88FDC(a1);

  return v2;
}

double static PhotoStyle.analytics.getter()
{
  if (qword_281481B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static PhotoStyle.analytics.setter(void *a1)
{
  if (qword_281481B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_281481B48 = a1;
}

uint64_t (*static PhotoStyle.analytics.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_281481B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_22FA83C04@<D0>(void *a1@<X8>)
{
  if (qword_281481B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_281481B48;

  return result;
}

uint64_t sub_22FA83C84(void **a1)
{
  v1 = *a1;
  v2 = qword_281481B40;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_281481B48 = v1;
}

char *sub_22FA83D10(uint64_t a1, uint64_t a2, id a3)
{
  v6 = sub_22FA8933C(a1, a2);
  if (![v6 count])
  {
    a3 = [objc_allocWithZone(MEMORY[0x277CD9888]) init];
    goto LABEL_18;
  }

  v7 = sub_22FA8963C(v6, a3);
  if (v4)
  {
LABEL_18:

    return a3;
  }

  v8 = v7;
  v9 = [*(v3 + OBJC_IVAR___PHAPhotoStyle_photoLibrary) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22FCD2240;
  *(v10 + 32) = sub_22FCC8A84();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_22FCC8A84();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_22FCC8A84();
  *(v10 + 72) = v13;
  v14 = sub_22FCC8C24();

  [v9 setFetchPropertySets_];

  if (!(v8 >> 62))
  {
    v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_16:

LABEL_17:
    v27 = objc_opt_self();
    v28 = sub_22FCC8C24();

    a3 = [v27 fetchAssetsWithLocalIdentifiers:v28 options:v9];

    goto LABEL_18;
  }

  v15 = sub_22FCC92C4();
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_5:
  v29 = v9;
  v30 = v6;
  v31 = MEMORY[0x277D84F90];
  result = sub_22FA86EA8(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x231908810](v17, v8);
      }

      else
      {
        v18 = *(v8 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = [v18 localIdentifier];
      v21 = sub_22FCC8A84();
      v23 = v22;

      v25 = *(v31 + 16);
      v24 = *(v31 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22FA86EA8((v24 > 1), v25 + 1, 1);
      }

      ++v17;
      *(v31 + 16) = v25 + 1;
      v26 = v31 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    while (v15 != v17);

    v6 = v30;
    v9 = v29;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_22FA8401C(uint64_t a1)
{
  v3 = sub_22FCC6794();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v53 = &v49 - v10;
  v11 = objc_opt_self();
  v12 = *(v1 + OBJC_IVAR___PHAPhotoStyle_photoLibrary);
  v13 = [v11 propertyProviderForPHPhotoLibrary_];
  if (!v13)
  {
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8EF4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22FA28000, v22, v23, "Skipping library features, no library info provider available", v24, 2u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    return;
  }

  v14 = v13;
  v51 = v4;
  v52 = v3;
  v57 = a1;
  v15 = [objc_allocWithZone(MEMORY[0x277CF6ED0]) init];
  [v14 registerSystemProperties_];
  v16 = *MEMORY[0x277CF6E50];
  v17 = sub_22FCC8A54();
  v54 = v15;
  v18 = [v15 propertyForKey:v16 forEventName:v17 payloadForSystemPropertyExtraction:0];

  if (v18)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() && (v55 = 0, v56 = 0, v19 = v18, sub_22FCC8A74(), v19, (v20 = v56) != 0))
    {
      v21 = v55;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v25 = sub_22FB1C65C(v21, v20);

    *(v1 + OBJC_IVAR___PHAPhotoStyle_librarySizeRange) = v25;
  }

  v26 = [v12 librarySpecificFetchOptions];
  [v26 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22FCD1F90;
  v28 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v29 = sub_22FCC8A54();
  v30 = [v28 initWithKey:v29 ascending:1];

  *(v27 + 32) = v30;
  sub_22FA3A77C(0, &qword_28147AEB0, 0x277CCAC98);
  v31 = sub_22FCC8C24();

  [v26 setSortDescriptors_];

  v32 = [objc_opt_self() fetchMomentsWithOptions_];
  v33 = [v32 fetchedObjects];

  if (!v33)
  {
    goto LABEL_22;
  }

  sub_22FA3A77C(0, &qword_28147AE90, 0x277CD97B8);
  v34 = sub_22FCC8C44();

  if (v34 >> 62)
  {
    v35 = v7;
    if (sub_22FCC92C4())
    {
      goto LABEL_14;
    }

LABEL_21:

LABEL_22:
    sub_22FCC9004();
    swift_unknownObjectRelease();

    return;
  }

  v35 = v7;
  if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_14:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x231908810](0, v34);
LABEL_17:
    v37 = v36;

    v38 = [v37 startDate];
    if (v38)
    {
      v50 = v37;
      v39 = v53;
      v40 = v38;
      sub_22FCC6754();

      v41 = [objc_opt_self() now];
      sub_22FCC6754();

      v42 = objc_allocWithZone(MEMORY[0x277CCA970]);
      v49 = v1;
      v43 = sub_22FCC66F4();
      v44 = sub_22FCC66F4();
      v45 = [v42 initWithStartDate:v43 endDate:v44];

      v46 = *(v51 + 8);
      v47 = v35;
      v48 = v52;
      v46(v47, v52);
      LOBYTE(v44) = sub_22FB1CA88(v45);

      v46(v39, v48);
      *(v49 + OBJC_IVAR___PHAPhotoStyle_libraryAge) = v44;
    }

    else
    {
    }

    goto LABEL_22;
  }

  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v34 + 32);
    goto LABEL_17;
  }

  __break(1u);
}

void sub_22FA845E8(void *a1)
{
  v67 = sub_22FCC8944();
  v2 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v3);
  v66 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v5, v6).n128_u64[0];
  v65 = &v55 - v8;
  [a1 fetchPropertySetsIfNeeded];
  v9 = objc_opt_self();
  v69 = a1;
  v10 = [v9 assetResourcesForAsset_];
  sub_22FA3A77C(0, &qword_27DAD77E8, 0x277CD97F0);
  v11 = sub_22FCC8C44();

  v12 = swift_allocObject();
  v70 = v12;
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  if (v11 >> 62)
  {
LABEL_21:
    v14 = sub_22FCC92C4();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_3:
      v55 = v13;
      v15 = 0;
      v13 = (v11 & 0xC000000000000001);
      v56 = v11 & 0xFFFFFFFFFFFFFF8;
      v62 = (v2 + 1);
      v63 = &v76;
      v2 = &selRef_setDateStyle_;
      v61 = xmmword_22FCD3450;
      v64 = v11;
      v60 = v14;
      v59 = v11 & 0xC000000000000001;
      while (1)
      {
        if (v13)
        {
          v16 = MEMORY[0x231908810](v15, v11);
        }

        else
        {
          if (v15 >= *(v56 + 16))
          {
            goto LABEL_20;
          }

          v16 = *(v11 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if ([v16 v2[314]] == 7)
        {
          v71 = v15 + 1;
          v19 = swift_allocObject();
          *(v19 + 16) = v61;
          v20 = [objc_allocWithZone(MEMORY[0x277CD9808]) init];
          [v20 setNetworkAccessAllowed_];
          v21 = dispatch_group_create();
          v72 = v17;
          v22 = v21;
          dispatch_group_enter(v21);
          v23 = [objc_opt_self() defaultManager];
          v78 = sub_22FA89E2C;
          v79 = v19;
          v73 = v23;
          aBlock = MEMORY[0x277D85DD0];
          v75 = 1107296256;
          v76 = sub_22FA84DFC;
          v77 = &block_descriptor_17;
          v24 = _Block_copy(&aBlock);
          v25 = v20;

          v26 = swift_allocObject();
          v28 = v68;
          v27 = v69;
          v26[2] = v22;
          v26[3] = v28;
          v26[4] = v27;
          v26[5] = v19;
          v26[6] = v70;
          v78 = sub_22FA89E34;
          v79 = v26;
          aBlock = MEMORY[0x277D85DD0];
          v75 = 1107296256;
          v76 = sub_22FA854D0;
          v77 = &block_descriptor_23;
          v29 = _Block_copy(&aBlock);

          v30 = v22;
          v58 = v28;
          v57 = v27;

          v31 = v73;
          v32 = v72;
          [NSObject requestDataForAssetResource:v73 options:sel_requestDataForAssetResource_options_dataReceivedHandler_completionHandler_ dataReceivedHandler:? completionHandler:?];
          _Block_release(v29);
          _Block_release(v24);

          v33 = v66;
          sub_22FCC8924();
          v34 = v65;
          sub_22FCC8954();
          v35 = *v62;
          v36 = v67;
          (*v62)(v33, v67);
          v73 = v30;
          sub_22FCC8F64();
          v35(v34, v36);
          if (sub_22FCC88C4())
          {
            v37 = v32;

            v38 = v57;
            v39 = sub_22FCC8664();
            v40 = sub_22FCC8F14();
            if (!os_log_type_enabled(v39, v40))
            {

              goto LABEL_18;
            }

            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            aBlock = v42;
            *v41 = 136315138;
            v43 = [v38 uuid];

            if (v43)
            {
              v44 = sub_22FCC8A84();
              v46 = v45;

              v47 = sub_22FA2F600(v44, v46, &aBlock);

              *(v41 + 4) = v47;
              _os_log_impl(&dword_22FA28000, v39, v40, "Timed out while requesting adjustment data for asset %s", v41, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v42);
              MEMORY[0x23190A000](v42, -1, -1);
              MEMORY[0x23190A000](v41, -1, -1);

LABEL_18:

              return;
            }

            __break(1u);
            return;
          }

          v11 = v64;
          v14 = v60;
          v13 = v59;
          v2 = &selRef_setDateStyle_;
          v17 = v73;
          v18 = v71;
        }

        ++v15;
        if (v18 == v14)
        {

          v13 = v55;
          goto LABEL_23;
        }
      }
    }
  }

LABEL_23:
  swift_beginAccess();
  v48 = *v13;
  if (*v13)
  {
    v49 = objc_opt_self();
    v50 = v48;
    v51 = [v49 compositionControllerWithAdjustmentData:v50 asset:v69 imageOrientation:0 outMasterWidth:0 outMasterHeight:0];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 semanticStyleAdjustmentController];
      if (v53)
      {
        v54 = v53;
        [v53 color];
        sub_22FCC6C64();
        [v54 tone];
        sub_22FCC6C64();
        [v54 intensity];
        sub_22FCC6C64();

        return;
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_22FA84D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_22FCC6684();
  return swift_endAccess();
}

uint64_t sub_22FA84DFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_22FCC6664();
  v7 = v6;

  v3(v5, v7);
  sub_22FA7E6C4(v5, v7);
}

void sub_22FA84E84(void *a1, NSObject *a2, int a3, id a4, uint64_t a5, uint64_t a6)
{
  v62 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = a1;
    v7 = a4;
    v10 = v6;
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();
    if (!os_log_type_enabled(v11, v12))
    {

LABEL_16:

      goto LABEL_18;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v61[0] = v15;
    *v13 = 136315394;
    v16 = [v7 uuid];
    if (v16)
    {
      v17 = v16;

      v18 = sub_22FCC8A84();
      v20 = v19;

      v21 = sub_22FA2F600(v18, v20, v61);

      *(v13 + 4) = v21;
      *(v13 + 12) = 2112;
      v22 = v6;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v23;
      *v14 = v23;
      _os_log_impl(&dword_22FA28000, v11, v12, "Error while requesting adjustment data for asset %s: %@", v13, 0x16u);
      sub_22FA3A56C(v14);
      MEMORY[0x23190A000](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x23190A000](v15, -1, -1);
      MEMORY[0x23190A000](v13, -1, -1);

      goto LABEL_16;
    }

    goto LABEL_29;
  }

  v26 = [a4 adjustmentProperties];
  if (!v26)
  {
    __break(1u);
LABEL_29:

    __break(1u);
    goto LABEL_30;
  }

  v27 = v26;
  v6 = [v26 formatIdentifier];

  if (!v6)
  {
LABEL_18:
    dispatch_group_leave(a2);
    return;
  }

  v28 = [a4 adjustmentProperties];
  if (!v28)
  {
LABEL_30:

    __break(1u);
    goto LABEL_31;
  }

  v29 = v28;
  v30 = [v28 formatVersion];

  if (!v30)
  {
    goto LABEL_26;
  }

  v31 = objc_opt_self();
  v32 = a5;
  swift_beginAccess();
  v33 = *(a5 + 16);
  v34 = *(v32 + 24);
  sub_22FA7E820(v33, v34);
  v35 = sub_22FCC6654();
  sub_22FA7E6C4(v33, v34);
  v61[0] = 0;
  v36 = [v31 propertyListWithData:v35 options:0 format:0 error:v61];

  if (v36)
  {
    v37 = v61[0];
    sub_22FCC9234();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77F0, &qword_22FCD34E8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_22;
    }

    v38 = sub_22FCC8A84();
    if (*(v59 + 16))
    {
      v40 = sub_22FA2DB54(v38, v39);
      v42 = v41;

      if (v42)
      {
        sub_22FA2F7D8(*(v59 + 56) + 32 * v40, v61);

        if (swift_dynamicCast())
        {
          v43 = objc_allocWithZone(MEMORY[0x277CD97A0]);
          v44 = sub_22FCC6654();
          v45 = [v43 initWithFormatIdentifier:v6 formatVersion:v30 data:v44];

          sub_22FA7E6C4(v59, v60);
          swift_beginAccess();
          v46 = *(a6 + 16);
          *(a6 + 16) = v45;

          goto LABEL_18;
        }

LABEL_22:

        goto LABEL_18;
      }
    }

    else
    {
    }

LABEL_26:
    goto LABEL_18;
  }

  v47 = v61[0];

  v48 = sub_22FCC6514();
  swift_willThrow();
  v49 = a4;
  v50 = sub_22FCC8664();
  v51 = sub_22FCC8F14();
  if (!os_log_type_enabled(v50, v51))
  {

    goto LABEL_18;
  }

  v52 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v61[0] = v53;
  *v52 = 136315138;
  v54 = [v49 uuid];

  if (v54)
  {
    v55 = sub_22FCC8A84();
    v57 = v56;

    v58 = sub_22FA2F600(v55, v57, v61);

    *(v52 + 4) = v58;
    _os_log_impl(&dword_22FA28000, v50, v51, "Error while deserializing adjustment data for asset %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x23190A000](v53, -1, -1);
    MEMORY[0x23190A000](v52, -1, -1);

    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
}

void sub_22FA854D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_22FA8553C(void *a1, char a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CD9810]) initWithPhotoLibrary_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a2;
  *(v6 + 32) = v5;
  v10[4] = sub_22FA89B00;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_22FA862D0;
  v10[3] = &block_descriptor_5;
  v7 = _Block_copy(v10);
  v8 = v2;
  v9 = v5;

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v7);
  sub_22FCC9004();
}

void sub_22FA85684(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a5;
  v10 = objc_autoreleasePoolPush();
  sub_22FA856FC(a4, a1, v7, a6);

  objc_autoreleasePoolPop(v10);
}

void sub_22FA856FC(uint64_t a1, void *a2, int a3, void *a4)
{
  v116 = a4;
  v217 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7880, &qword_22FCD3540);
  *&v9 = MEMORY[0x28223BE20](v7 - 8, v8).n128_u64[0];
  v11 = &v100 - v10;
  v12 = [a2 uuid];
  if (!v12)
  {
    goto LABEL_52;
  }

  v13 = v12;
  v14 = sub_22FCC8A84();
  v16 = v15;

  sub_22FA89184(v14, v16);

  if (qword_281481B40 != -1)
  {
    swift_once();
  }

  v17 = [a2 uuid];
  if (!v17)
  {
    goto LABEL_53;
  }

  v18 = v17;
  v19 = sub_22FCC8A84();
  v21 = v20;

  swift_beginAccess();
  v22 = off_281481B48;
  if (!*(off_281481B48 + 2))
  {

    goto LABEL_10;
  }

  v23 = sub_22FA2DB54(v19, v21);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_10:
    swift_endAccess();
    return;
  }

  v105 = v4;
  v26 = v22[7] + 200 * v23;
  v153[0] = *v26;
  v27 = *(v26 + 48);
  v28 = *(v26 + 64);
  v29 = *(v26 + 32);
  v153[1] = *(v26 + 16);
  v153[2] = v29;
  v154 = v27;
  v155 = v28;
  v30 = *(v26 + 80);
  v31 = *(v26 + 96);
  v32 = *(v26 + 128);
  v158 = *(v26 + 112);
  v159 = v32;
  v156 = v30;
  v157 = v31;
  v33 = *(v26 + 144);
  v34 = *(v26 + 160);
  v35 = *(v26 + 176);
  v163 = *(v26 + 192);
  v161 = v34;
  v162 = v35;
  v160 = v33;
  v181 = *v26;
  v180[0] = *(v26 + 33);
  *(v180 + 3) = *(v26 + 36);
  v178 = *(v26 + 50);
  v179 = *(v26 + 54);
  v36 = *(&v154 + 1);
  v177 = BYTE8(v155);
  *(v176 + 3) = *(v26 + 76);
  v176[0] = *(v26 + 73);
  v112 = v156;
  v175 = BYTE8(v156);
  v174[0] = *(v26 + 89);
  *(v174 + 3) = *(v26 + 92);
  v113 = v157;
  v114 = v155;
  v173 = BYTE8(v157);
  v171 = *(v26 + 105);
  v172 = *(v26 + 107);
  v170 = v158;
  v37 = *(v26 + 113);
  v169 = *(v26 + 115);
  v168 = v37;
  v167 = BYTE8(v158);
  *(v166 + 15) = *(v26 + 136);
  v166[0] = *(v26 + 121);
  *(v164 + 3) = *(v26 + 164);
  v164[0] = *(v26 + 161);
  swift_endAccess();
  v165 = 0;
  sub_22FA72B60(v153, &v182);
  [a2 currentSmartStyleCast];
  v38 = PHStringFromPHAdjustmentStyleCastShort();
  if (v38)
  {
    v39 = v38;
    v40 = sub_22FCC8A84();
    v110 = v41;
    v111 = v40;
  }

  else
  {

    v110 = 0;
    v111 = 0;
  }

  v115 = v36;
  if (a3)
  {
    v42 = [a2 photosSmartStyleExtendedProperties];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 smartStyleColorBias];
      if (v44)
      {
        v45 = v44;
        v46 = [v43 smartStyleToneBias];
        if (v46)
        {
          v47 = v46;
          v48 = [v43 smartStyleIntensity];
          if (v48)
          {
            v49 = v48;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_22FCD3460;
            *(v50 + 32) = v45;
            *(v50 + 40) = v47;
            v109 = v50;
            *(v50 + 48) = v49;

LABEL_20:

            goto LABEL_26;
          }

          v43 = v45;
        }

        else
        {
          v47 = v45;
        }

        v43 = v47;
      }
    }
  }

  else
  {
    sub_22FA845E8(a2);
    if (v51)
    {
      v54 = v51;
      v55 = v52;
      v56 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_22FCD3460;
      *(v57 + 32) = v54;
      *(v57 + 40) = v55;
      v109 = v57;
      *(v57 + 48) = v56;
      goto LABEL_20;
    }
  }

  v109 = MEMORY[0x277D84F90];
LABEL_26:
  v58 = [a2 originalImageProperties];
  if (v58)
  {
    v108 = a3;
    v59 = v58;
    v60 = sub_22FCC89D4();

    v61 = sub_22FCC8594();
    v62 = *(v61 - 8);
    (*(v62 + 56))(v11, 1, 1, v61);
    v63 = sub_22FCC89C4();
    v64 = 0;
    if ((*(v62 + 48))(v11, 1, v61) != 1)
    {
      v64 = sub_22FCC8584();
      (*(v62 + 8))(v11, v61);
    }

    v65 = [objc_allocWithZone(MEMORY[0x277D3B458]) initWithImageProperties:v63 contentType:v64 timeZoneLookup:0];

    v66 = v115;
    if (v65)
    {
      v67 = *(&v154 + 1);
      v66 = [v65 brightness];

      v114 = [v65 photoProcessingFlags];
      v177 = 0;
      v113 = [v65 photoCaptureFlags];
      v173 = 0;
      v117 = *MEMORY[0x277CD33B0];
      v68 = v117;
      type metadata accessor for CFString(0);
      sub_22FA89FB0();
      v69 = v68;
      sub_22FCC9324();
      LOBYTE(a3) = v108;
      if (*(v60 + 16) && (v70 = sub_22FA69EBC(&v182), (v71 & 1) != 0))
      {
        sub_22FA2F7D8(*(v60 + 56) + 32 * v70, &v118);
        sub_22FA3A7C4(&v182);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7888, &qword_22FCD3548);
        v72 = swift_dynamicCast();
        v73 = v217;
        if (v72)
        {
          v74 = v117;
          if (v117[2] && (v75 = sub_22FA2DB54(13367, 0xE200000000000000), (v76 & 1) != 0))
          {
            v77 = *(v74[7] + 8 * v75);
            swift_unknownObjectRetain();

            *&v182 = v77;
            v78 = swift_dynamicCast();
            v79 = v118;
            if (!v78)
            {
              v79 = 0;
            }

            v112 = v79;
            v80 = v78 ^ 1;
          }

          else
          {

            v112 = 0;
            v80 = 1;
          }

          v175 = v80;
        }

        else
        {
        }
      }

      else
      {

        sub_22FA3A7C4(&v182);
        v73 = v217;
      }
    }

    else
    {

      LOBYTE(a3) = v108;
      v73 = v217;
    }
  }

  else
  {
    v73 = v217;
    v66 = v115;
  }

  LODWORD(v217) = *(v73 + OBJC_IVAR___PHAPhotoStyle_librarySizeRange);
  v108 = *(v73 + OBJC_IVAR___PHAPhotoStyle_libraryAge);
  v81 = [a2 mediaAnalysisProperties];
  v82 = [v81 faceCount];

  if (v82 >> 31)
  {
    __break(1u);
    goto LABEL_50;
  }

  v107 = v82;
  v170 = 0;
  v83 = sub_22FA86354(a2);
  if (v83 < 0xFFFFFFFF80000000)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v83 > 0x7FFFFFFF)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v106 = v83;
  v84 = v66;
  v167 = 0;
  v85 = v116;
  v86 = [v116 _sceneForAsset_];
  v87 = sub_22FCC8A84();
  v103 = v88;
  v104 = v87;

  v89 = [v85 _sceneSubjectForAsset_];
  v116 = sub_22FCC8A84();
  v102 = v90;

  v91 = [a2 uuid];
  if (v91)
  {
    v92 = v91;
    v101 = a3 & 1;
    v100 = sub_22FCC8A84();
    v94 = v93;

    v182 = v181;
    v183 = v111;
    v184 = v110;
    v185 = a3 & 1;
    *v186 = v180[0];
    *&v186[3] = *(v180 + 3);
    v187 = v109;
    v188 = v217;
    v189 = v108;
    v190 = v178;
    v191 = v179;
    v115 = v84;
    v192 = v84;
    v193 = v114;
    v194 = v177;
    *v195 = v176[0];
    *&v195[3] = *(v176 + 3);
    v196 = v112;
    v197 = v175;
    *v198 = v174[0];
    *&v198[3] = *(v174 + 3);
    v199 = v113;
    v200 = v173;
    v202 = v172;
    v201 = v171;
    v203 = v107;
    v204 = v170;
    v206 = v169;
    v205 = v168;
    v207 = v106;
    v208 = v167;
    *&v209[15] = *(v166 + 15);
    *v209 = v166[0];
    v210 = 1;
    v211 = v165;
    *&v212[3] = *(v164 + 3);
    *v212 = v164[0];
    v96 = v103;
    v95 = v104;
    v213 = v104;
    v214 = v103;
    v97 = v116;
    v215 = v116;
    v98 = v102;
    v216 = v102;
    swift_beginAccess();
    sub_22FA72B60(&v182, &v118);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v118 = off_281481B48;
    off_281481B48 = 0x8000000000000000;
    sub_22FB25FB0(&v182, v100, v94, isUniquelyReferenced_nonNull_native);

    off_281481B48 = v118;
    swift_endAccess();
    v118 = v181;
    v119 = v111;
    v120 = v110;
    v121 = v101;
    *v122 = v180[0];
    *&v122[3] = *(v180 + 3);
    v123 = v109;
    v124 = v217;
    v125 = v108;
    v126 = v178;
    v127 = v179;
    v128 = v115;
    v129 = v114;
    v130 = v177;
    *&v131[3] = *(v176 + 3);
    *v131 = v176[0];
    v132 = v112;
    v133 = v175;
    *&v134[3] = *(v174 + 3);
    *v134 = v174[0];
    v135 = v113;
    v136 = v173;
    v138 = v172;
    v137 = v171;
    v139 = v107;
    v140 = v170;
    v141 = v168;
    v142 = v169;
    v143 = v106;
    v144 = v167;
    *v145 = v166[0];
    *&v145[15] = *(v166 + 15);
    v146 = 1;
    v147 = v165;
    *&v148[3] = *(v164 + 3);
    *v148 = v164[0];
    v149 = v95;
    v150 = v96;
    v151 = v97;
    v152 = v98;
    sub_22FA89F5C(&v118);
    return;
  }

LABEL_54:
  __break(1u);
}

void sub_22FA862D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_22FA86354(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR___PHAPhotoStyle_photoLibrary) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FCD1F90;
  *(v4 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
  v5 = sub_22FCC8C24();

  [v3 setIncludedDetectionTypes_];

  v6 = [objc_opt_self() fetchPersonsInAsset:a1 options:v3];
  v7 = [v6 count];

  return v7;
}

void sub_22FA86480(void *a1, void *a2)
{
  v5 = sub_22FCC9024();
  v7 = v6;
  v9 = v8;
  sub_22FA8401C(v5);
  if (v2)
  {
  }

  else
  {
    sub_22FA8553C(a1, 1);
    sub_22FA8553C(a2, 0);
  }
}

void sub_22FA86548(void *a1)
{
  if (qword_281481B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_281481B48 = MEMORY[0x277D84F98];

  v3 = sub_22FA83D10(1000, 1, a1);
  if (!v1)
  {
    v4 = v3;
    v5 = sub_22FA83D10(1000, 0, a1);
    v6 = sub_22FCC9024();
    v8 = v7;
    v10 = v9;
    sub_22FA8401C(v6);
    sub_22FA8553C(v4, 1);
    sub_22FA8553C(v5, 0);
    v27 = 0;

    v11 = v4;
    v12 = v5;
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218240;
      *(v15 + 4) = [v11 count];

      *(v15 + 12) = 2048;
      *(v15 + 14) = [v12 count];

      _os_log_impl(&dword_22FA28000, v13, v14, "Computed Style features for %ld captured and %ld edited assets", v15, 0x16u);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    else
    {

      v13 = v12;
    }

    v17 = off_281481B48;
    v18 = *(off_281481B48 + 2);
    if (v18)
    {
      v19 = sub_22FA86B08(v18, 0);
      v25 = sub_22FA8871C(&v26, v19 + 4, v18, v17);
      v20 = v26;

      sub_22FA37D64(v20);
      if (v25 != v18)
      {
        __break(1u);
        return;
      }

      v21 = v27;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      v21 = v27;
    }

    sub_22FC2CCE8(v19, v16);
    if (v21)
    {
    }

    else
    {

      v22 = sub_22FCC8664();
      v23 = sub_22FCC8F34();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = *(off_281481B48 + 2);
        _os_log_impl(&dword_22FA28000, v22, v23, "Donated %ld Biome events", v24, 0xCu);
        MEMORY[0x23190A000](v24, -1, -1);
      }
    }
  }
}

id PhotoStyle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotoStyle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoStyle(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_22FA86B08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22FA86B8C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77F8, &qword_22FCD4150);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_22FA86C10(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_22FA86C98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77D8, &qword_22FCD34D8);
  v4 = *(type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0) - 8);
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

void *sub_22FA86D94(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77B0, &qword_22FCD34C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_22FA86E24(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73E0, &qword_22FCD2170);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

char *sub_22FA86EA8(char *a1, int64_t a2, char a3)
{
  result = sub_22FA31B84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FA86EC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87A34(a1, a2, a3, *v3, &qword_27DAD7878, &qword_22FCD3538, MEMORY[0x277D3C160]);
  *v3 = result;
  return result;
}

void *sub_22FA86F0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87A34(a1, a2, a3, *v3, &qword_27DAD7868, &qword_22FCD3530, type metadata accessor for MomentContextResponse);
  *v3 = result;
  return result;
}

void *sub_22FA86F50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87590(a1, a2, a3, *v3, &qword_27DAD7278, &qword_22FCD1B10, &qword_27DAD7848, &qword_22FCD3518);
  *v3 = result;
  return result;
}

void *sub_22FA86F90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87A34(a1, a2, a3, *v3, &qword_27DAD7860, &qword_22FCD9BC0, type metadata accessor for TemplatedPrompt);
  *v3 = result;
  return result;
}

void *sub_22FA86FD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87A34(a1, a2, a3, *v3, &qword_27DAD7828, &qword_22FCD4A40, MEMORY[0x277D3C080]);
  *v3 = result;
  return result;
}

void *sub_22FA87018(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87A34(a1, a2, a3, *v3, &qword_27DAD7820, &qword_22FCD3508, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

void *sub_22FA8705C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87C10(a1, a2, a3, *v3, &qword_27DAD7850, &qword_22FCD3520, &qword_27DAD7858, &qword_22FCD3528);
  *v3 = result;
  return result;
}

char *sub_22FA8709C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FA870BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87590(a1, a2, a3, *v3, &qword_27DAD8350, &unk_22FCD3B00, &unk_27DAD9020, &qword_22FCD4990);
  *v3 = result;
  return result;
}

void *sub_22FA870FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87590(a1, a2, a3, *v3, &qword_27DAD77A0, &qword_22FCD34B0, &qword_27DAD7450, qword_22FCD61A0);
  *v3 = result;
  return result;
}

void *sub_22FA8713C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87590(a1, a2, a3, *v3, &qword_27DAD77C8, &unk_22FCD5EE0, &qword_27DAD7560, &unk_22FCD29B0);
  *v3 = result;
  return result;
}

char *sub_22FA8717C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA876D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FA8719C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA8748C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FA871BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA877DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FA871DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87A34(a1, a2, a3, *v3, &qword_27DAD77D8, &qword_22FCD34D8, type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo);
  *v3 = result;
  return result;
}

void *sub_22FA87220(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87C10(a1, a2, a3, *v3, &qword_27DAD77D0, &qword_22FCD34D0, &unk_27DAD7BC0, &unk_22FCD60B0);
  *v3 = result;
  return result;
}

void *sub_22FA87260(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87A34(a1, a2, a3, *v3, &qword_27DAD7870, &unk_22FCD4AA0, MEMORY[0x277D3BF48]);
  *v3 = result;
  return result;
}

char *sub_22FA872A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87914(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FA872C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87A34(a1, a2, a3, *v3, &qword_27DAD77E0, &qword_22FCD34E0, MEMORY[0x277D3BFB8]);
  *v3 = result;
  return result;
}

void *sub_22FA87308(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87C10(a1, a2, a3, *v3, &qword_27DAD7810, &qword_22FCD34F8, &qword_27DAD7818, &qword_22FCD3500);
  *v3 = result;
  return result;
}

void *sub_22FA87348(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FA87D44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FA87390(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77A8, &qword_22FCD34B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_22FA8748C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77F8, &qword_22FCD4150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22FA87590(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_22FA876D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7808, &qword_22FCD34F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22FA877DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73E0, &qword_22FCD2170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FA87914(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7840, &qword_22FCD3510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22FA87A34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_22FA87C10(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_22FA87D44(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77B8, &qword_22FCD34C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C0, &qword_22FCD49D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22FA87E78(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = sub_22FCC9834();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = 1;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v8);
      v12 = v11 != a1;
      if (v11 == a1)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v10 = 0;
  }

  else
  {
    v12 = 1;
    v10 = 1;
  }

LABEL_8:
  v13 = *(v5 + 16);
  v14 = v13 + v10;
  if (__OFADD__(v13, v10))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = *(v5 + 24);
  if (v15 >= v14 && (a2 & 1) != 0)
  {
    if (!v12)
    {
LABEL_27:
      v25 = *(*v2 + 48);
      result = *(v25 + 8 * v8);
      *(v25 + 8 * v8) = a1;
      return result;
    }

    goto LABEL_24;
  }

  if (a2)
  {
    sub_22FB05AFC(v14);
  }

  else
  {
    if (v15 >= v14)
    {
      sub_22FB06840();
      if (!v12)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    sub_22FB06F24(v14);
  }

  v16 = *v2;
  v17 = sub_22FCC9834();
  v18 = -1 << *(v16 + 32);
  v8 = v17 & ~v18;
  if (((*(v16 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_23:
    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_24:
    v20 = *v2;
    *(*v2 + 8 * (v8 >> 6) + 56) |= 1 << v8;
    *(*(v20 + 48) + 8 * v8) = a1;
    v21 = *(v20 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      result = 0;
      *(v20 + 16) = v23;
      return result;
    }

    goto LABEL_29;
  }

  v19 = ~v18;
  while (*(*(v16 + 48) + 8 * v8) != a1)
  {
    v8 = (v8 + 1) & v19;
    if (((*(v16 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_30:
  result = sub_22FCC9764();
  __break(1u);
  return result;
}

void (*sub_22FA88058(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x231908810](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22FA8A010;
  }

  __break(1u);
  return result;
}

uint64_t *sub_22FA880E0(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x231908810](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_22FA8A014;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_22FA88160(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x231908810](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_22FA881E0;
  }

  __break(1u);
  return result;
}

void (*sub_22FA881E8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x231908810](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22FA88268;
  }

  __break(1u);
  return result;
}

void *sub_22FA88270(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22FA883C8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_22FA8851C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_22FA8861C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
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
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_22FA8871C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22FA88890(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = *(v33 + 72);
      sub_22FA89E94(v26 + v27 * (v25 | (v20 << 6)), v11);
      sub_22FA89EF8(v11, v15);
      sub_22FA89EF8(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        goto LABEL_23;
      }

      a2 += v27;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_22FA88AB8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_22FA2D328(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_22FA2D89C(v20, v21);
      sub_22FA2D89C(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t *sub_22FA88C40(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_22FCC92B4();
  sub_22FA3A77C(0, a5, a6);
  sub_22FA89E44(a7, a5, a6);
  result = sub_22FCC8EB4();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_22FCC92E4())
      {
        goto LABEL_30;
      }

      sub_22FA3A77C(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

void *sub_22FA88E70(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_22FA2F7D8(*(a4 + 56) + ((v12 << 11) | (32 * v17)), v20);
      sub_22FA4FE00(v20, v21);
      sub_22FA4FE00(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 2;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

id sub_22FA88FDC(void *a1)
{
  v3 = sub_22FCC8684();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___PHAPhotoStyle_numberOfDonatedAssets] = 10;
  v8 = OBJC_IVAR___PHAPhotoStyle_log;
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  v9 = sub_22FCC91C4();
  *&v1[v8] = v9;
  v1[OBJC_IVAR___PHAPhotoStyle_librarySizeRange] = 0;
  v1[OBJC_IVAR___PHAPhotoStyle_libraryAge] = 0;
  *&v1[OBJC_IVAR___PHAPhotoStyle_photoLibrary] = a1;
  v10 = v9;
  v11 = a1;
  sub_22FCC8694();
  (*(v4 + 32))(&v1[OBJC_IVAR___PHAPhotoStyle_logger], v7, v3);
  v12 = type metadata accessor for PhotoStyle(0);
  v14.receiver = v1;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_22FA89184(uint64_t a1, uint64_t a2)
{
  if (qword_281481B40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!*(off_281481B48 + 2) || (sub_22FA2DB54(a1, a2), (v4 & 1) == 0))
  {
    swift_endAccess();
    v8[0] = a1;
    v8[1] = a2;
    v8[2] = 0;
    v8[3] = 0;
    v9 = 2;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    v15 = 0;
    v16 = 1;
    v17 = 0;
    v18 = 1;
    v19 = 0;
    v20 = 1;
    v21 = 0;
    v22 = 1;
    v23 = 0;
    v24 = 1;
    v25 = 33686018;
    v26 = MEMORY[0x277D84F90];
    v27 = 0;
    v28 = 1;
    v30 = 0u;
    v29 = 0u;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = off_281481B48;
    off_281481B48 = 0x8000000000000000;
    sub_22FB25FB0(v8, a1, a2, isUniquelyReferenced_nonNull_native);
    off_281481B48 = v7;
  }

  return swift_endAccess();
}

id sub_22FA8933C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_22FCC6794();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(v3 + OBJC_IVAR___PHAPhotoStyle_photoLibrary) librarySpecificFetchOptions];
  [v12 setFetchLimit_];
  sub_22FCC6724();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22FCD1F90;
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_22FCC8A54();
  v16 = [v14 initWithKey:v15 ascending:0];

  *(v13 + 32) = v16;
  sub_22FA3A77C(0, &qword_28147AEB0, 0x277CCAC98);
  v17 = sub_22FCC8C24();

  [v12 setSortDescriptors_];

  v18 = objc_opt_self();
  v19 = sub_22FCC66F4();
  v20 = [v18 fetchAssetsCapturedOrEdited:(a2 & 1) == 0 onThisCameraSinceDate:v19 options:v12];

  if (v20)
  {
    (*(v7 + 8))(v11, v6);
  }

  else
  {
    v21 = sub_22FCC8664();
    v22 = sub_22FCC8F14();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22FA28000, v21, v22, "Unexpected nil while fetching assets", v23, 2u);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    v20 = [objc_allocWithZone(MEMORY[0x277CD9888]) init];
    (*(v7 + 8))(v11, v6);
  }

  return v20;
}

uint64_t sub_22FA8963C(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [a1 count];
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = [v3 count];
  v43 = v5;
  type metadata accessor for BiomeUtilities();
  v7 = static BiomeUtilities.readUUIDs(stream:subsetName:type:progressReporter:)(9, 0, 0, 0);
  if (v2)
  {
    return v5;
  }

  v8 = v7;
  v40 = v7;
  if (v6 >= 10)
  {
    goto LABEL_25;
  }

  v9 = [v3 fetchedObjects];
  if (!v9)
  {
    if (v6 < 0)
    {
      goto LABEL_46;
    }

    if (!v6)
    {
      goto LABEL_47;
    }

LABEL_25:
    v23 = 0;
    v38 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84FA0];
    v25 = -v6 % v6;
    while (1)
    {
      v28 = 0;
      v39 = v23 + 1;
      v29 = v24 + 56;
      while (1)
      {
        v41[0] = 0;
        MEMORY[0x23190A010](v41, 8);
        v32 = (v41[0] * v6) >> 64;
        if (v6 > (v41[0] * v6) && v25 > v41[0] * v6)
        {
          do
          {
            v41[0] = 0;
            MEMORY[0x23190A010](v41, 8);
          }

          while (v25 > v41[0] * v6);
          v32 = (v41[0] * v6) >> 64;
        }

        if (*(v24 + 16))
        {
          v33 = sub_22FCC9834();
          v34 = -1 << *(v24 + 32);
          v35 = v33 & ~v34;
          if ((*(v29 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
          {
            v36 = ~v34;
            while (*(*(v24 + 48) + 8 * v35) != v32)
            {
              v35 = (v35 + 1) & v36;
              if (((*(v29 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
              {
                goto LABEL_31;
              }
            }

            goto LABEL_32;
          }
        }

LABEL_31:
        v30 = [v3 objectAtIndexedSubscript_];
        v31 = [v40 containsObject_];

        if ((v31 & 1) == 0)
        {
          break;
        }

LABEL_32:
        if (++v28 == 3)
        {
          goto LABEL_29;
        }
      }

      v26 = [v3 objectAtIndexedSubscript_];
      MEMORY[0x231908070]();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22FCC8C64();
      }

      sub_22FCC8C84();
      v38 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = v24;
      sub_22FA87E78(v32, isUniquelyReferenced_nonNull_native);
      v24 = v41[0];
LABEL_29:
      v23 = v39;
      if (v39 == 10)
      {

        return v38;
      }
    }
  }

  v10 = v9;
  sub_22FA3A77C(0, &qword_28147ADE8, 0x277CD97A8);
  v3 = sub_22FCC8C44();

  v42 = v5;
  if (v3 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22FCC92C4())
  {
    v12 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x231908810](v12, v3);
      }

      else
      {
        if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v13 = *(v3 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v13 uuid];
      if (v16)
      {
        v17 = v16;
        v18 = sub_22FCC8A84();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v41[0] = v18;
      v41[1] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7890, &qword_22FCDA5D0);
      v21 = sub_22FCC91E4();

      v8 = v40;
      v22 = [v40 containsObject_];
      swift_unknownObjectRelease();
      if (v22)
      {
      }

      else
      {
        sub_22FCC93F4();
        sub_22FCC9424();
        sub_22FCC9434();
        sub_22FCC9404();
      }

      ++v12;
      if (v15 == i)
      {
        v5 = v42;
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_50:

  return v5;
}

uint64_t type metadata accessor for PhotoStyle(uint64_t a1)
{
  result = qword_281481B28;
  if (!qword_281481B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA89B6C(uint64_t a1)
{
  result = sub_22FCC8684();
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

uint64_t sub_22FA89E44(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22FA3A77C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FA89E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FA89EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTraitsForPromptSuggestionsHelper.PersonalTraitInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FA89FB0()
{
  result = qword_27DAD7070;
  if (!qword_27DAD7070)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD7070);
  }

  return result;
}

uint64_t sub_22FA8A024()
{
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  result = sub_22FCC91C4();
  qword_28147D350 = result;
  return result;
}

uint64_t sub_22FA8A09C()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147D328);
  __swift_project_value_buffer(v0, qword_28147D328);
  if (qword_28147D348 != -1)
  {
    swift_once();
  }

  v1 = qword_28147D350;
  return sub_22FCC8694();
}

id sub_22FA8A128()
{
  result = [*(v0 + 176) isSystemPhotoLibrary];
  if ((result & 1) == 0)
  {
    v2 = result;
    if (qword_28147D320 != -1)
    {
      swift_once();
    }

    v3 = sub_22FCC8684();
    __swift_project_value_buffer(v3, qword_28147D328);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F14();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FA28000, v4, v5, "Task will not run: Task can only run on system library", v6, 2u);
      MEMORY[0x23190A000](v6, -1, -1);
    }

    return v2;
  }

  return result;
}

uint64_t sub_22FA8A21C(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  v4 = sub_22FCC71C4();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  v5 = sub_22FCC72B4();
  v3[48] = v5;
  v3[49] = *(v5 - 8);
  v3[50] = swift_task_alloc();
  v6 = sub_22FCC8494();
  v3[51] = v6;
  v3[52] = *(v6 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA8A3F8, 0, 0);
}

uint64_t sub_22FA8A3F8()
{
  if (qword_28147D348 != -1)
  {
    swift_once();
  }

  v1 = qword_28147D350;
  sub_22FCC76D4();
  swift_allocObject();
  v2 = v1;
  *(v0 + 496) = sub_22FCC76C4();

  sub_22FCC84A4();
  sub_22FCC8464();
  v4 = *(v0 + 472);
  v3 = *(v0 + 480);
  v5 = *(v0 + 408);
  v6 = *(v0 + 416);
  sub_22FCC8454();
  v7 = *(v6 + 32);
  v7(v4, v3, v5);
  sub_22FA8B2E4(v4);
  v8 = *(v0 + 352);
  v55 = v9;
  *(v8 + 192) = v9;
  v52 = v8;
  sub_22FA2E6E4(v8 + 136, v0 + 56);
  if (*(v0 + 80))
  {
    v10 = *(v0 + 352);
    sub_22FA2D89C((v0 + 56), v0 + 16);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
    sub_22FCC9384();
    v53 = v0;
    v13 = v7;
    v14 = *(v10 + 64);
    v15 = *(v10 + 72);

    MEMORY[0x231907FA0](0xD00000000000001BLL, 0x800000022FCE14B0);
    (*(v12 + 16))(v55, v14, v15, v11, v12);
    v7 = v13;
    v0 = v53;

    __swift_destroy_boxed_opaque_existential_0((v53 + 16));
  }

  else
  {
    sub_22FA2B420(v0 + 56, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  v17 = *(v0 + 456);
  v16 = *(v0 + 464);
  v18 = *(v0 + 408);
  sub_22FCC8454();
  v7(v17, v16, v18);
  sub_22FA8C924(v17);
  v56 = v7;
  v20 = v19;
  *(*(v0 + 352) + 200) = v19;
  sub_22FA2E6E4(v52 + 136, v0 + 136);
  if (*(v0 + 160))
  {
    v21 = *(v0 + 352);
    sub_22FA2D89C((v0 + 136), v0 + 96);
    v22 = *(v0 + 120);
    v23 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v22);
    sub_22FCC9384();
    MEMORY[0x231907FA0](*(v21 + 64), *(v21 + 72));
    MEMORY[0x231907FA0](0xD000000000000032, 0x800000022FCE1470);
    (*(v23 + 16))(v20, 0, 0xE000000000000000, v22, v23);

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  else
  {
    sub_22FA2B420(v0 + 136, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  sub_22FCC8474();
  v24 = *(v0 + 368);
  v25 = *(v0 + 376);
  v54 = v0;
  v26 = *(v0 + 360);
  v50 = *(*(v0 + 352) + 176);
  sub_22FCC7264();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD78A0, &unk_22FCD36D8) + 48);
  v28 = *MEMORY[0x277D3C0B8];
  v29 = sub_22FCC71B4();
  (*(*(v29 - 8) + 104))(v25, v28, v29);
  *(v25 + v27) = 0;
  (*(v24 + 104))(v25, *MEMORY[0x277D3C0C0], v26);
  v30 = sub_22FCC7254();
  *(v54 + 504) = v30;
  v31 = v54;
  (*(v24 + 8))(v25, v26);
  sub_22FCC8474();
  v33 = *(v54 + 440);
  v32 = *(v54 + 448);
  v34 = *(v54 + 408);
  sub_22FCC8454();
  v35 = v34;
  v36 = v56;
  v56(v33, v32, v35);
  v51 = sub_22FB34618(v50, v30, v33);
  *(*(v54 + 352) + 232) = v51;
  sub_22FA2E6E4(v52 + 136, v54 + 216);
  if (*(v54 + 240))
  {
    v37 = *(v54 + 352);
    sub_22FA2D89C((v54 + 216), v54 + 176);
    v38 = *(v54 + 200);
    v39 = *(v54 + 208);
    __swift_project_boxed_opaque_existential_1((v54 + 176), v38);
    sub_22FCC9384();
    v41 = *(v37 + 64);
    v40 = *(v37 + 72);

    v57 = v41;
    v31 = v54;
    v36 = v56;
    MEMORY[0x231907FA0](0xD000000000000022, 0x800000022FCE1440);
    (*(v39 + 16))(v51, v57, v40, v38, v39);

    __swift_destroy_boxed_opaque_existential_0((v54 + 176));
  }

  else
  {
    sub_22FA2B420(v54 + 216, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  sub_22FCC8474();
  v43 = v31[53];
  v42 = v31[54];
  v44 = v31[51];
  v45 = v31[44];
  sub_22FCC8454();
  v46 = *(v45 + 184);
  v36(v43, v42, v44);
  v47 = swift_task_alloc();
  v31[64] = v47;
  *v47 = v31;
  v47[1] = sub_22FA8AC48;
  v48 = v31[53];

  return sub_22FB35398(v30, v46, v48);
}

uint64_t sub_22FA8AC48(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 520) = v2;

  if (v2)
  {
    v7 = sub_22FA8B19C;
  }

  else
  {
    *(v6 + 528) = a2;
    *(v6 + 536) = a1;
    v7 = sub_22FA8AD80;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_22FA8AD80()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 352);
    *(v5 + 224) = v4;
    sub_22FA2E6E4(v5 + 136, v0 + 296);
    if (*(v0 + 320))
    {
      v6 = *(v0 + 352);
      sub_22FA2D89C((v0 + 296), v0 + 256);
      v7 = *(v0 + 280);
      v8 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v7);
      v9 = v6[27];
      sub_22FCC9384();
      v11 = v6[8];
      v10 = v6[9];

      MEMORY[0x231907FA0](0xD000000000000021, 0x800000022FCE13C0);
      (*(v8 + 16))(v9, v11, v10, v7, v8);

      v12 = *(v0 + 280);
      v13 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v12);
      v14 = v6[26];
      sub_22FCC9384();

      MEMORY[0x231907FA0](0xD000000000000024, 0x800000022FCE13F0);
      (*(v13 + 16))(v14, v11, v10, v12, v13);

      v15 = *(v0 + 280);
      v16 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v15);
      v17 = *(v5 + 224);
      sub_22FCC9384();

      MEMORY[0x231907FA0](0xD00000000000001DLL, 0x800000022FCE1420);
      (*(v16 + 16))(v17, v11, v10, v15, v16);

      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    }

    else
    {
      sub_22FA2B420(v0 + 296, &unk_27DAD83A0, &qword_22FCD1AC0);
    }

    sub_22FCC8484();
    v18 = *(v0 + 504);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

    sub_22FCC76B4();

    v19 = *(v0 + 8);

    v19();
  }
}

uint64_t sub_22FA8B19C()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 384);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_22FCC76B4();

  v7 = *(v0 + 8);

  return v7();
}

void sub_22FA8B2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD78A8, &qword_22FCD36E8);
  v3 = *(v2 - 8);
  v185 = v2;
  v186 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v157[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v157[-v9];
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v157[-v13];
  v15 = sub_22FCC71B4();
  v187 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v157[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD78B0, &qword_22FCD36F0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v157[-v22];
  v24 = v189;
  sub_22FCC8464();
  v189 = v24;
  if (v24)
  {
    v25 = sub_22FCC8494();
    (*(*(v25 - 8) + 8))(a1, v25);
    return;
  }

  v176 = v18;
  v177 = v15;
  v174 = v14;
  v180 = v10;
  v173 = v6;
  v179 = v23;
  v175 = v20;
  v178 = v19;
  v184 = a1;
  v182 = *(v188 + 176);
  v26 = [v182 librarySpecificFetchOptions];
  [v26 setChunkSizeForFetch_];
  [v26 setCacheSizeForFetch_];
  v183 = v26;
  [v26 setFetchLimit_];
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0, &unk_22FCD2160);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22FCD3460;
  v28 = sub_22FA3A77C(0, &qword_28147AEF0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278, &qword_22FCD1B10);
  v29 = swift_allocObject();
  v188 = xmmword_22FCD17F0;
  *(v29 + 16) = xmmword_22FCD17F0;
  v30 = MEMORY[0x277D837D0];
  *(v29 + 56) = MEMORY[0x277D837D0];
  v31 = sub_22FA4EF4C();
  *(v29 + 64) = v31;
  *(v29 + 32) = 0x6574617473;
  *(v29 + 40) = 0xE500000000000000;
  v32 = MEMORY[0x277D84C58];
  v33 = MEMORY[0x277D84CB8];
  *(v29 + 96) = MEMORY[0x277D84C58];
  *(v29 + 104) = v33;
  *(v29 + 72) = 4;
  *(v27 + 32) = sub_22FCC8EE4();
  v34 = swift_allocObject();
  *(v34 + 16) = v188;
  *(v34 + 56) = v30;
  *(v34 + 64) = v31;
  *(v34 + 32) = 1701869940;
  *(v34 + 40) = 0xE400000000000000;
  *(v34 + 96) = v32;
  *(v34 + 104) = v33;
  *(v34 + 72) = 8;
  v181 = v28;
  *(v27 + 40) = sub_22FCC8EE4();
  v35 = swift_allocObject();
  *(v35 + 16) = v188;
  *(v35 + 56) = v30;
  *(v35 + 64) = v31;
  *(v35 + 32) = 0x65707974627573;
  *(v35 + 40) = 0xE700000000000000;
  v36 = sub_22FCC72A4();
  v37 = *(v36 + 16);
  if (v37)
  {
    *&v188 = v27;
    v190[0] = MEMORY[0x277D84F90];
    sub_22FA8709C(0, v37, 0);
    v38 = v190[0];
    v39 = *(v190[0] + 16);
    v40 = 32;
    do
    {
      v41 = *(v36 + v40);
      v190[0] = v38;
      v42 = *(v38 + 24);
      if (v39 >= v42 >> 1)
      {
        sub_22FA8709C((v42 > 1), v39 + 1, 1);
        v38 = v190[0];
      }

      *(v38 + 16) = v39 + 1;
      *(v38 + 2 * v39 + 32) = v41;
      v40 += 2;
      ++v39;
      --v37;
    }

    while (v37);

    v43 = v189;
    v27 = v188;
  }

  else
  {

    v38 = MEMORY[0x277D84F90];
    v43 = v189;
  }

  *(v35 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD78B8, &qword_22FCD36F8);
  *(v35 + 104) = sub_22FA2CF90(&qword_28147AF08, &qword_27DAD78B8, &qword_22FCD36F8, MEMORY[0x277CC9C50]);
  *(v35 + 72) = v38;
  *(v27 + 48) = sub_22FCC8EE4();
  v44 = sub_22FCC8C24();

  v45 = [objc_opt_self() andPredicateWithSubpredicates_];

  v46 = v183;
  [v183 setPredicate_];

  v47 = [objc_opt_self() fetchSuggestionsWithOptions_];
  if (qword_28147D320 != -1)
  {
    swift_once();
  }

  v48 = sub_22FCC8684();
  v49 = __swift_project_value_buffer(v48, qword_28147D328);
  v50 = v47;
  *&v188 = v49;
  v51 = sub_22FCC8664();
  v52 = sub_22FCC8EF4();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v184;
  if (v53)
  {
    v55 = swift_slowAlloc();
    *v55 = 134217984;
    *(v55 + 4) = [v50 count];

    _os_log_impl(&dword_22FA28000, v51, v52, "Found %ld suggestions", v55, 0xCu);
    MEMORY[0x23190A000](v55, -1, -1);
  }

  else
  {

    v51 = v50;
  }

  v56 = v182;

  v57 = [v56 librarySpecificFetchOptions];
  sub_22FCC8474();
  v58 = v43;
  if (v43)
  {

    v59 = sub_22FCC8494();
    (*(*(v59 - 8) + 8))(v54, v59);
    return;
  }

  sub_22FCC7244();
  v182 = v57;
  v60 = sub_22FCC8C24();
  v61 = v182;

  [v61 setFetchPropertySets_];

  v62 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v50 options:v61];
  if (!v62)
  {
    sub_22FCC8484();
    v140 = sub_22FCC8664();
    v141 = sub_22FCC8F14();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&dword_22FA28000, v140, v141, "No assets found for existing suggestions.", v142, 2u);
      MEMORY[0x23190A000](v142, -1, -1);
    }

    return;
  }

  v63 = v62;
  sub_22FA3A77C(0, &qword_28147ADE8, 0x277CD97A8);
  v64 = sub_22FCC89D4();

  v193 = MEMORY[0x277D84F90];
  v192 = MEMORY[0x277D84F98];
  v65 = v187;
  v67 = v176;
  v66 = v177;
  (*(v187 + 13))(v176, *MEMORY[0x277D3C0B8], v177);
  sub_22FCC6F64();
  (*(v65 + 1))(v67, v66);
  sub_22FCC8474();
  v181 = v64;
  v68 = [v50 count];
  if ((v68 & 0x8000000000000000) != 0)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v70 = v180;
  if (!v68)
  {
    v72 = 0;
    v169 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

  v71 = 0;
  v72 = 0;
  v166 = (v186 + 88);
  v165 = *MEMORY[0x277D3BF88];
  v168 = (v186 + 8);
  v162 = (v186 + 96);
  v169 = MEMORY[0x277D84F90];
  v164 = *MEMORY[0x277D3BF80];
  *&v69 = 136315138;
  v170 = v69;
  *(&v73 + 1) = 3;
  v163 = xmmword_22FCD1F90;
  *&v73 = 136315394;
  v161 = v73;
  v176 = v68;
  v177 = v50;
  v167 = (v186 + 16);
  while (2)
  {
    v74 = v71;
    v186 = v72;
    v171 = v71;
    while (1)
    {
      if (v74 >= v68)
      {
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (__OFADD__(v74, 1))
      {
        goto LABEL_70;
      }

      if (v72 >= 200)
      {

        v153 = v50;
        v154 = sub_22FCC8664();
        v155 = sub_22FCC8F04();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 134218496;
          *(v156 + 4) = 200;
          *(v156 + 12) = 2048;
          *(v156 + 14) = v71;
          *(v156 + 22) = 2048;
          *(v156 + 24) = [v153 count];

          _os_log_impl(&dword_22FA28000, v154, v155, "Reached max assets of %ld. Iteration %ld/%ld", v156, 0x20u);
          MEMORY[0x23190A000](v156, -1, -1);
        }

        else
        {
        }

        v72 = v186;
        goto LABEL_61;
      }

      v187 = v74 + 1;
      v75 = [v50 objectAtIndexedSubscript:v74];
      v76 = [v75 uuid];
      if (!v76)
      {
        goto LABEL_72;
      }

      v77 = v76;
      v78 = sub_22FCC8A84();
      v80 = v79;

      v81 = v181;
      if (*(v181 + 16))
      {
        break;
      }

LABEL_34:
      v85 = v75;
      v86 = sub_22FCC8664();
      v87 = sub_22FCC8F14();
      if (os_log_type_enabled(v86, v87))
      {
        v189 = v58;
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v190[0] = v89;
        *v88 = v170;
        v90 = [v85 uuid];

        if (!v90)
        {
          goto LABEL_73;
        }

        v91 = sub_22FCC8A84();
        v93 = v92;

        v94 = sub_22FA2F600(v91, v93, v190);

        *(v88 + 4) = v94;
        _os_log_impl(&dword_22FA28000, v86, v87, "Could not fetch key asset for suggestion %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x23190A000](v89, -1, -1);
        MEMORY[0x23190A000](v88, -1, -1);

        v58 = v189;
        v70 = v180;
      }

      else
      {
      }

      ++v74;
      v68 = v176;
      v50 = v177;
      v72 = v186;
      v71 = v171;
      if (v187 == v176)
      {
        goto LABEL_60;
      }
    }

    v82 = sub_22FA2DB54(v78, v80);
    v84 = v83;

    if ((v84 & 1) == 0)
    {
      goto LABEL_34;
    }

    v95 = *(*(v81 + 56) + 8 * v82);
    v96 = v174;
    v171 = v95;
    sub_22FCC6F54();
    v97 = v185;
    v189 = *v167;
    v189(v70, v96, v185);
    v159 = *v166;
    v98 = v159(v70, v97);
    v99 = v70;
    v100 = v97;
    v160 = *v168;
    v160(v99, v97);
    if (v98 != v165)
    {
      v106 = v173;
      v189(v173, v96, v97);
      v107 = v159(v106, v97);
      if (v107 == v164)
      {
        (*v162)(v106, v97);
        sub_22FA8DBD8(*v106, &v192);
        v108 = v171;

        v109 = sub_22FCC8664();
        v110 = sub_22FCC8F04();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v189 = v58;
          v112 = v111;
          v159 = swift_slowAlloc();
          v190[0] = v159;
          *v112 = v161;
          v113 = [v108 localIdentifier];
          v171 = v108;
          v114 = v113;
          v115 = sub_22FCC8A84();
          v158 = v110;
          v116 = v115;
          v118 = v117;

          v119 = sub_22FA2F600(v116, v118, v190);

          *(v112 + 4) = v119;
          *(v112 + 12) = 2080;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD78C0, &qword_22FCD3700);
          sub_22FA2CF90(&qword_27DAD78C8, &qword_27DAD78C0, &qword_22FCD3700, MEMORY[0x277D3BF90]);
          v120 = sub_22FCC8E94();
          v122 = v121;

          v123 = sub_22FA2F600(v120, v122, v190);

          *(v112 + 14) = v123;
          _os_log_impl(&dword_22FA28000, v109, v158, "\tAsset %s did not pass gating due to %s", v112, 0x16u);
          v124 = v159;
          swift_arrayDestroy();
          MEMORY[0x23190A000](v124, -1, -1);
          v125 = v112;
          v58 = v189;
          MEMORY[0x23190A000](v125, -1, -1);
        }

        else
        {
        }

        v160(v174, v100);
      }

      else
      {
        v138 = v97;
        v139 = v160;
        v160(v96, v138);

        v139(v106, v100);
      }

      v50 = v177;
LABEL_52:
      v72 = v186;
      goto LABEL_53;
    }

    v101 = v75;
    MEMORY[0x231908070]();
    if (*((v193 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v193 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22FCC8C64();
    }

    sub_22FCC8C84();
    v169 = v193;
    v102 = objc_opt_self();
    v103 = swift_allocObject();
    *(v103 + 16) = v163;
    *(v103 + 32) = v101;
    sub_22FA3A77C(0, &unk_28147AED0, 0x277CD99E0);
    v104 = v101;
    v105 = sub_22FCC8C24();

    LODWORD(v102) = [v102 setAvailableFeatures:16 forSuggestions:v105];

    v50 = v177;
    if (!v102)
    {
      v126 = v104;
      v127 = sub_22FCC8664();
      v128 = sub_22FCC8F14();
      v129 = os_log_type_enabled(v127, v128);
      v130 = v174;
      if (v129)
      {
        v189 = v58;
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v190[0] = v132;
        *v131 = v170;
        v133 = [v126 uuid];

        if (!v133)
        {
          goto LABEL_74;
        }

        v134 = sub_22FCC8A84();
        v136 = v135;

        v137 = sub_22FA2F600(v134, v136, v190);

        *(v131 + 4) = v137;
        _os_log_impl(&dword_22FA28000, v127, v128, "Error persisting messagesBackdrop availableFeature on %s", v131, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v132);
        MEMORY[0x23190A000](v132, -1, -1);
        MEMORY[0x23190A000](v131, -1, -1);

        v160(v174, v185);
        v58 = v189;
      }

      else
      {

        v160(v130, v185);
      }

      goto LABEL_52;
    }

    v160(v174, v185);

    v72 = v186 + 1;
LABEL_53:
    v68 = v176;
    v71 = v187;
    v70 = v180;
    if (v187 != v176)
    {
      continue;
    }

    break;
  }

LABEL_60:

LABEL_61:
  v143 = v50;
  v144 = sub_22FCC8664();
  v145 = sub_22FCC8F34();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v191 = v147;
    *v146 = 134218498;
    *(v146 + 4) = v72;
    *(v146 + 12) = 2048;
    *(v146 + 14) = [v143 count];

    *(v146 + 22) = 2080;
    swift_beginAccess();
    sub_22FCC7234();
    v186 = v72;
    sub_22FA8E11C(&qword_27DAD7570, 255, MEMORY[0x277D3C0C8], MEMORY[0x277D3C0D0]);

    v148 = sub_22FCC89E4();
    v150 = v149;

    v151 = sub_22FA2F600(v148, v150, &v191);

    *(v146 + 24) = v151;
    _os_log_impl(&dword_22FA28000, v144, v145, "Accepted %ld/%ld. Rejection reasons: %s", v146, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v147);
    MEMORY[0x23190A000](v147, -1, -1);
    MEMORY[0x23190A000](v146, -1, -1);
  }

  else
  {
  }

  v152 = v182;
  sub_22FCC8484();
  (*(v175 + 8))(v179, v178);
}

void sub_22FA8C924(char *a1)
{
  v2 = v1;
  v4 = sub_22FCC8494();
  v112 = *(v4 - 8);
  v113 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v104 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v103 = &v87 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v105 = &v87 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730, &qword_22FCD1B20);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v110 = &v87 - v15;
  v16 = sub_22FCC72B4();
  v17 = *(v16 - 8);
  v106 = v16;
  v107 = v17;
  MEMORY[0x28223BE20](v16, v18);
  v111 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22FCC8684();
  v108 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22FCC71B4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28147D348 != -1)
  {
    swift_once();
  }

  v29 = qword_28147D350;
  sub_22FCC76D4();
  swift_allocObject();
  v30 = v29;
  v31 = sub_22FCC76C4();
  sub_22FCC8464();
  if (v1)
  {
    sub_22FCC76B4();

    (*(v112 + 8))(a1, v113);
    return;
  }

  v101 = v31;
  v102 = a1;
  v32 = *(v109 + 176);
  (*(v25 + 104))(v28, *MEMORY[0x277D3C0B0], v24);
  v33 = qword_28147D320;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_40:
    swift_once();
  }

  v35 = __swift_project_value_buffer(v20, qword_28147D328);
  (*(v108 + 16))(v23, v35, v20);
  sub_22FCC7224();
  swift_allocObject();
  v34;
  v36 = sub_22FCC71D4();
  v37 = v111;
  sub_22FCC7264();
  v38 = v110;
  sub_22FCC7204();
  v39 = sub_22FCC7274();
  if (v2)
  {

    sub_22FA2B420(v38, &qword_27DAD8730, &qword_22FCD1B20);
    (*(v107 + 8))(v37, v106);
    sub_22FCC76B4();

    (*(v112 + 8))(v102, v113);
    return;
  }

  v40 = v39;
  sub_22FA2B420(v38, &qword_27DAD8730, &qword_22FCD1B20);
  v41 = v40;
  v108 = v35;
  v42 = sub_22FCC8664();
  v43 = sub_22FCC8EF4();
  v44 = os_log_type_enabled(v42, v43);
  v2 = v113;
  if (v44)
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = [v41 count];

    _os_log_impl(&dword_22FA28000, v42, v43, "Found %ld new guest assets", v45, 0xCu);
    MEMORY[0x23190A000](v45, -1, -1);
  }

  else
  {

    v42 = v41;
  }

  v23 = v102;

  if ([v41 count]< 1)
  {
    sub_22FCC8484();
    (*(v107 + 8))(v37, v106);

LABEL_33:
    sub_22FCC76B4();

    return;
  }

  v46 = sub_22FCC7294();
  v110 = 0;
  v88 = v41;
  v47 = v46;
  sub_22FCC8454();
  v48 = v47;
  v50 = v47 + 64;
  v49 = *(v47 + 64);
  v94 = *(v47 + 16);
  v51 = 1 << *(v47 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v49;
  v34 = ((v51 + 63) >> 6);
  v93 = (v112 + 32);

  v54 = 0;
  v55 = 0;
  *&v56 = 136315394;
  v89 = v56;
  v20 = v2;
  v90 = v36;
  v95 = v48;
  v92 = v50;
  v91 = v34;
  if (!v53)
  {
    while (1)
    {
LABEL_18:
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v57 >= v34)
      {
        break;
      }

      v53 = *(v50 + 8 * v57);
      ++v55;
      if (v53)
      {
        goto LABEL_21;
      }
    }

    v75 = v48;
    v76 = sub_22FCC8664();
    v77 = sub_22FCC8F34();
    v78 = os_log_type_enabled(v76, v77);
    v79 = v102;
    if (v78)
    {
      v80 = swift_slowAlloc();
      *v80 = 134217984;
      v81 = *(v75 + 16);

      *(v80 + 4) = v81;

      _os_log_impl(&dword_22FA28000, v76, v77, "Successfully processed candidates for %ld conversations", v80, 0xCu);
      MEMORY[0x23190A000](v80, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v82 = v110;
    v83 = v111;
    sub_22FCC71E4();
    if (v82)
    {
      (*(v107 + 8))(v83, v106);

      v84 = *(v112 + 8);
      v84(v105, v20);
      sub_22FCC76B4();

      v84(v79, v20);
      return;
    }

    sub_22FCC8484();
    v85 = v88;
    (*(v107 + 8))(v83, v106);

    (*(v112 + 8))(v105, v20);
    goto LABEL_33;
  }

  while (1)
  {
    v57 = v55;
LABEL_21:
    v58 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    v59 = v20;
    v100 = v54;
    v60 = __clz(__rbit64(v53)) | (v57 << 6);
    v61 = *(v48 + 56);
    v62 = (*(v48 + 48) + 16 * v60);
    v63 = v62[1];
    v109 = *v62;
    v98 = *(v61 + 8 * v60);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v64 = sub_22FCC8664();
    v65 = sub_22FCC8F34();

    v96 = v65;
    v66 = os_log_type_enabled(v64, v65);
    v99 = v63;
    v97 = v58;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v114 = v68;
      *v67 = v89;
      v69 = sub_22FCC72E4();
      v71 = sub_22FA2F600(v69, v70, &v114);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2048;
      if (v98 >> 62)
      {
        v72 = sub_22FCC92C4();
      }

      else
      {
        v72 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v67 + 14) = v72;

      _os_log_impl(&dword_22FA28000, v64, v96, "Conversation %s:\n\tFound %ld candidate assets", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x23190A000](v68, -1, -1);
      MEMORY[0x23190A000](v67, -1, -1);

      v59 = v113;
      v36 = v90;
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v73 = v103;
    sub_22FCC8434();
    v20 = v59;
    (*v93)(v104, v73, v59);
    v74 = v110;
    v23 = v99;
    v2 = v36;
    sub_22FCC7214();
    v110 = v74;
    if (v74)
    {
      (*(v107 + 8))(v111, v106);

      v86 = *(v112 + 8);
      v86(v105, v20);
      sub_22FCC76B4();

      v86(v102, v20);
      return;
    }

    v53 &= v53 - 1;

    v54 = v97;
    v55 = v57;
    v50 = v92;
    v34 = v91;
    v48 = v95;
    if (!v53)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_22FA8D5B8()
{
  v1 = *(v0 + 16);
  if (*(v1 + 240) == 1 && (*(v1 + 192) > 0 || *(v1 + 200) >= 1))
  {
    return (*(v0 + 8))(*(v1 + 224) > 0);
  }

  else
  {
    return (*(v0 + 8))(0);
  }
}

uint64_t sub_22FA8D628()
{
  v1 = *(v0 + 16);
  if ((*(v1 + 240) & 1) != 0 || *(v1 + 192) <= 0 && *(v1 + 200) < 1)
  {
    return (*(v0 + 8))(0);
  }

  else
  {
    return (*(v0 + 8))(*(v1 + 224) > 0);
  }
}

uint64_t sub_22FA8D674()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_22FA2B420(v0 + 136, &unk_27DAD83A0, &qword_22FCD1AC0);

  return v0;
}

uint64_t sub_22FA8D6DC()
{
  sub_22FA8D674();

  return swift_deallocClassInstance();
}

uint64_t sub_22FA8D734()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8, &qword_22FCD1BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FCD17F0;
  *(v0 + 32) = sub_22FA3A77C(0, &qword_28147AE58, off_2788AF1E8);
  *(v0 + 40) = sub_22FA3A77C(0, &qword_28147AE08, off_2788AF3E0);
  return v0;
}

uint64_t sub_22FA8D7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FA8A21C(a2, a3);
}

uint64_t sub_22FA8D89C()
{
  v0 = sub_22FCC77B4();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D3C280], v0, v3);
  v6 = sub_22FCC7794();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_22FA8D98C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA8E164;

  return sub_22FA8D598();
}

uint64_t sub_22FA8DA1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FA8D608();
}

uint64_t sub_22FA8DAAC(uint64_t result)
{
  if (result)
  {

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FA8DB54(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FA8E11C(&unk_28147D310, a2, type metadata accessor for MessagesBackdropGenerationTask, &unk_22FCD3668);
  result = sub_22FA8E11C(&qword_27DAD7898, v3, type metadata accessor for MessagesBackdropGenerationTask, &unk_22FCD3640);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FA8DBD8(uint64_t a1, uint64_t *a2)
{
  v48 = a2;
  v46 = sub_22FCC7234();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v4);
  v49 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD78C0, &qword_22FCD3700);
  MEMORY[0x28223BE20](v6, v7);
  v47 = v39 - v9;
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v39[1] = v3 + 16;
  v40 = v3;
  v42 = (v3 + 8);
  v43 = v8 + 16;
  v44 = v8;
  v45 = a1;
  v41 = (v8 + 8);

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      (*(v44 + 16))(v47, *(v45 + 48) + *(v44 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v6);
      v17 = v49;
      v18 = v6;
      MEMORY[0x2319063F0](v6);
      v19 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *v19;
      v21 = v50;
      *v19 = 0x8000000000000000;
      v23 = sub_22FA6A154(v17);
      v24 = *(v21 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (*(v21 + 24) >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22FA70F14();
          v21 = v50;
        }
      }

      else
      {
        sub_22FA6D458(v26, isUniquelyReferenced_nonNull_native);
        v21 = v50;
        v28 = sub_22FA6A154(v49);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_25;
        }

        v23 = v28;
      }

      v30 = v48;
      *v48 = v21;

      v31 = *v30;
      if ((v27 & 1) == 0)
      {
        v31[(v23 >> 6) + 8] |= 1 << v23;
        (*(v40 + 16))(v31[6] + *(v40 + 72) * v23, v49, v46);
        *(v31[7] + 8 * v23) = 0;
        v32 = v31[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_24;
        }

        v31[2] = v34;
      }

      v35 = v31[7];
      v36 = *(v35 + 8 * v23);
      v33 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v33)
      {
        goto LABEL_23;
      }

      v13 &= v13 - 1;
      *(v35 + 8 * v23) = v37;
      (*v42)(v49, v46);
      v6 = v18;
      (*v41)(v47, v18);
      v15 = v16;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

uint64_t sub_22FA8DF94()
{
  v0 = sub_22FCC6DE4();
  v8[3] = v0;
  v8[4] = sub_22FA8E11C(qword_28147B080, 255, MEMORY[0x277D3A838], MEMORY[0x277D3A7F0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A7E8], v0);
  v2 = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v8);
  if ((v2 & 1) == 0)
  {
    if (qword_28147D320 != -1)
    {
      swift_once();
    }

    v3 = sub_22FCC8684();
    __swift_project_value_buffer(v3, qword_28147D328);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F14();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22FA28000, v4, v5, "Task will not run: FF Photos/PhotosPosterBackdrop is not enabled", v6, 2u);
      MEMORY[0x23190A000](v6, -1, -1);
    }
  }

  return v2 & 1;
}

uint64_t sub_22FA8E11C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22FA8E16C()
{
  sub_22FBB8090();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessagesFallbackBackdropFastPassActivity(uint64_t a1)
{
  result = qword_28147BDD0;
  if (!qword_28147BDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA8E284(uint64_t a1)
{
  v2[2] = a1;
  v3 = sub_22FCC67F4();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA8E344, v1, 0);
}

uint64_t sub_22FA8E344()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8, &unk_22FCD5EE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FCD1800;
  v6 = type metadata accessor for MessagesBackdropGenerationTask();
  v7 = swift_allocObject();
  *(v7 + 56) = 0x40F5180000000000;
  *(v7 + 64) = 0xD00000000000001ELL;
  *(v7 + 72) = 0x800000022FCE15E0;
  sub_22FCC67E4();
  v8 = sub_22FCC67B4();
  v10 = v9;
  (*(v2 + 8))(v1, v4);
  *(v7 + 80) = v8;
  *(v7 + 88) = v10;
  *(v7 + 96) = xmmword_22FCD3720;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 1;
  v11 = type metadata accessor for MomentGraphWorker();
  *(v7 + 192) = 0u;
  *(v7 + 208) = 0u;
  *(v7 + 224) = 0u;
  *(v7 + 40) = v11;
  *(v7 + 48) = sub_22FA8E634(&qword_281480230, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v7 + 16) = v3;
  v12 = *(v3 + 112);
  v13 = *(v12 + 112);

  *(v7 + 176) = [v13 photoLibrary];
  *(v7 + 184) = [objc_allocWithZone(PHAWallpaperSuggestionRefreshSession) initWithGraphManager_];
  *(v7 + 248) = 0;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0;
  *(v7 + 240) = 1;
  *(v5 + 56) = v6;
  *(v5 + 64) = sub_22FA8E634(&qword_28147D308, type metadata accessor for MessagesBackdropGenerationTask, &unk_22FCD36A8);
  *(v5 + 32) = v7;

  v14 = v0[1];

  return v14(v5);
}

uint64_t sub_22FA8E5F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MessagesFallbackBackdropFastPassActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FA8E634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FA8E67C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();

  return sub_22FCC8674();
}

uint64_t sub_22FA8E6F0(uint64_t a1)
{
  v2 = sub_22FCC65F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FCD1800;
  v8 = *(v3 + 16);
  v8(v6, a1, v2);
  v9 = type metadata accessor for PhotoLibraryResource(0);
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_22FA8E888();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  v8(boxed_opaque_existential_1 + *(v9 + 20), v6, v2);
  v11 = objc_opt_self();
  v12 = sub_22FCC6564();
  LOBYTE(v11) = [v11 isSystemPhotoLibraryURL_];

  (*(v3 + 8))(v6, v2);
  *boxed_opaque_existential_1 = v11;
  return v7;
}

unint64_t sub_22FA8E888()
{
  result = qword_281481D60;
  if (!qword_281481D60)
  {
    type metadata accessor for PhotoLibraryResource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281481D60);
  }

  return result;
}

uint64_t sub_22FA8E910()
{
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF8320(*(v1 + 136));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_22FA8EA60()
{
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF86E0(*(v1 + 128));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_22FA8EBB8()
{
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF8460(*(v1 + 136));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_22FA8ED0C()
{
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF85A0(*(v1 + 136));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_22FA8EDF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_22FA8EE60()
{
  v1 = *(v0 + 136);
  v2 = 0;
  if (_s13PhotoAnalysis27PromptSuggestionCachingTaskC13isMCAvailable12photoLibrary6logger22libraryProcessingCheckSbSo07PHPhotoJ0C_2os6LoggerVSbtFZ_0(v1, v0 + OBJC_IVAR____TtC13PhotoAnalysis33PromptSuggestionAccessRenewalTask_logger, 0))
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D3AC58]) initWithFeature_];
    v4 = [v3 minimumNumberOfCuratedAssets];
    v5 = sub_22FA8EFA0(v1);
    v2 = v5 >= v4;
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F34();
    if (os_log_type_enabled(v6, v7))
    {
      if (v5 < v4)
      {
        v8 = "Library does not meet min asset count for this task: %ld < %ld";
      }

      else
      {
        v8 = "Library meets min asset count for this task: %ld requires %ld";
      }

      v9 = swift_slowAlloc();
      *v9 = 134218240;
      *(v9 + 4) = v5;
      *(v9 + 12) = 2048;
      *(v9 + 14) = v4;
      _os_log_impl(&dword_22FA28000, v6, v7, v8, v9, 0x16u);
      MEMORY[0x23190A000](v9, -1, -1);
    }
  }

  return v2;
}

id sub_22FA8EFA0(void *a1)
{
  v3 = *(v1 + 144);
  sub_22FCC76D4();
  swift_allocObject();
  v4 = v3;
  sub_22FCC76C4();
  v5 = [a1 librarySpecificFetchOptions];
  [v5 setShouldPrefetchCount_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FCD1800;
  *(v6 + 32) = sub_22FCC8A84();
  *(v6 + 40) = v7;
  v8 = sub_22FCC8C24();

  [v5 setFetchPropertySets_];

  v9 = [objc_opt_self() fetchAssetsWithOptions_];
  v10 = [v9 count];
  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F34();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v10;
    _os_log_impl(&dword_22FA28000, v11, v12, "Library asset count: %ld", v13, 0xCu);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  sub_22FCC76B4();

  return v10;
}

uint64_t sub_22FA8F194(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_22FA8F1F0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  v1 = OBJC_IVAR____TtC13PhotoAnalysis33PromptSuggestionAccessRenewalTask_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PromptSuggestionAccessRenewalTask(uint64_t a1)
{
  result = qword_28147CA58;
  if (!qword_28147CA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA8F310(uint64_t a1)
{
  result = sub_22FCC8684();
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

uint64_t sub_22FA8F3FC()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_22FA8F474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C030;

  return sub_22FA8FC8C();
}

void sub_22FA8F518(uint64_t a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA812F8();
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FA8F60C(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 48) == *(*a2 + 48) && *(*a1 + 56) == *(*a2 + 56))
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704();
  }
}

uint64_t sub_22FA8F638(uint64_t a1)
{
  *(a1 + 8) = sub_22FA8F6A0(&qword_28147CA70, &unk_22FCD3910);
  result = sub_22FA8F6A0(&qword_28147CA78, &unk_22FCD38E8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FA8F6A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PromptSuggestionAccessRenewalTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FA8F700()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D3A7C0]) init];
  v0[26] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[3] = sub_22FA8F8A4;
    v3 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD78D8, &qword_22FCDC420);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_22FBD89D0;
    v0[21] = &block_descriptor_6;
    v0[22] = v3;
    [v2 refreshMomentsContextWithReply_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_22FA8FDA4();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_22FA8F8A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_22FA8FC18;
  }

  else
  {
    v2 = sub_22FA8F9B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FA8F9B4()
{
  v1 = v0[26];
  v0[10] = v0;
  v0[15] = v0 + 28;
  v0[11] = sub_22FA8FAD0;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD78E0, &qword_22FCD3980);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_22FA8F194;
  v0[21] = &block_descriptor_7;
  v0[22] = v2;
  [v1 requestDBAccessForPersonalizedSensingServiceWithReply_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_22FA8FAD0()
{

  return MEMORY[0x2822009F8](sub_22FA8FBB0, 0, 0);
}

uint64_t sub_22FA8FBB0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_22FA8FC18(uint64_t a1)
{
  v2 = *(v1 + 208);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_22FA8FCAC()
{
  [objc_opt_self() primeService];
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v1, v2, "PromptSuggestionAccessRenewalTask.execute - scheduled task for momentsd", v3, 2u);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_22FA8FDA4()
{
  result = qword_27DAD78D0;
  if (!qword_27DAD78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD78D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityManager.SchedulingPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityManager.SchedulingPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FA8FF68()
{
  result = qword_27DAD78E8;
  if (!qword_27DAD78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD78E8);
  }

  return result;
}

void *sub_22FA8FFC4()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0xD000000000000011;
  result[3] = 0x800000022FCD3A40;
  result[4] = 0;
  qword_281487EF8 = result;
  return result;
}

uint64_t sub_22FA90014()
{
  if (qword_281480248 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FA900D4(uint64_t a1, uint64_t a2)
{
  result = sub_22FA905C4(&unk_281480238, a2, type metadata accessor for MomentGraphWorker, &unk_22FCD3A90);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FA9012C(uint64_t a1, uint64_t a2)
{
  result = sub_22FA905C4(&unk_281480220, a2, type metadata accessor for MomentGraphWorker, &unk_22FCD3A74);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FA90184(uint64_t a1)
{
  v2 = sub_22FCC65F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22FCD17F0;
  v8 = *(v3 + 16);
  v8(v6, a1, v2);
  v9 = type metadata accessor for PhotoLibraryResource(0);
  *(v7 + 56) = v9;
  *(v7 + 64) = sub_22FA905C4(&qword_281481D60, 255, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  v8(boxed_opaque_existential_1 + *(v9 + 20), v6, v2);
  v11 = objc_opt_self();
  v12 = sub_22FCC6564();
  LOBYTE(v11) = [v11 isSystemPhotoLibraryURL_];

  v13 = *(v3 + 8);
  v13(v6, v2);
  *boxed_opaque_existential_1 = v11;
  v8(v6, a1, v2);
  v14 = type metadata accessor for MomentGraphResource(0);
  *(v7 + 96) = v14;
  *(v7 + 104) = sub_22FA905C4(&qword_28147FCF0, 255, type metadata accessor for MomentGraphResource, &unk_22FCD2FBC);
  v15 = __swift_allocate_boxed_opaque_existential_1((v7 + 72));
  *(v15 + *(v14 + 20)) = 1;
  sub_22FA7FB30(v15);
  v13(v6, v2);
  return v7;
}

void *sub_22FA903F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22FCC65F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = *(a1 + 120);
  v2[14] = a1;
  type metadata accessor for TaskRecorder(0);
  swift_allocObject();
  swift_retain_n();

  v2[15] = sub_22FC34C84(v9);
  type metadata accessor for PhotoKitChangeReader();
  v10 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v10 + 112) = v9;
  v11 = *(v9 + 112);
  *(v10 + 120) = v11;
  v2[16] = v10;
  v12 = [v11 photoLibraryURL];
  sub_22FCC65A4();

  v13 = sub_22FA90184(v8);
  (*(v5 + 8))(v8, v4);
  v2[17] = v13;
  if (qword_281480248 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();

  return v2;
}

uint64_t sub_22FA905C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22FA9060C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FA90630, 0, 0);
}

uint64_t sub_22FA90630()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_7;
  v5 = _Block_copy(v0 + 2);
  v6 = objc_opt_self();

  v7 = [v6 progressReporterWithProgressBlock_];
  v0[11] = v7;
  _Block_release(v5);

  v8 = *(v2 + 72);
  v0[12] = v8;
  v9 = *(*(v8 + 120) + 112);
  v0[13] = v9;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = v9;

  return MEMORY[0x2822009F8](sub_22FA90794, v8, 0);
}

uint64_t sub_22FA90794()
{
  v1 = [*(*(v0 + 96) + 112) workingContext];
  sub_22FCC9114();
  *(v0 + 120) = 0;

  return MEMORY[0x2822009F8](sub_22FA90878, 0, 0);
}

uint64_t sub_22FA90878(uint64_t a1)
{
  sub_22FCC9004();
  v2 = *(v1 + 88);

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_22FA90904()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

void sub_22FA90970(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_allocWithZone(sub_22FCC6B54());
  v6 = a1;
  v7 = a2;
  v8 = sub_22FCC6B44();
  sub_22FCC6B34();
}

uint64_t sub_22FA909F4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_22FA90A80()
{
  v1 = *(*v0 + 96);

  return v1;
}

id sub_22FA90AD0()
{
  v1 = *(*v0 + 72);
  result = [*(v1 + 112) isReady];
  if (result)
  {
    return [*(*(v1 + 120) + 112) isSystemPhotoLibrary];
  }

  return result;
}

uint64_t sub_22FA90B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FA9060C(a2, a3);
}

void sub_22FA90BC4(uint64_t a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FA90CC8(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 96) == *(*a2 + 96) && *(*a1 + 104) == *(*a2 + 104))
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704();
  }
}

uint64_t sub_22FA90CF4(uint64_t a1)
{
  *(a1 + 8) = sub_22FA90D5C(qword_28147DE80, &unk_22FCD3BA4);
  result = sub_22FA90D5C(&unk_27DAD78F0, &unk_22FCD3B7C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FA90D5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SocialGroupsEvaluationTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FA90DC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a2 + 72);
    while (1)
    {
      v9 = *v8;
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);
      v12 = *(v8 - 4);
      v13 = *(v8 - 3);
      v18 = *(v8 - 5);
      *&v19 = v12;
      *(&v19 + 1) = v13;
      *&v20 = v11;
      *(&v20 + 1) = v10;
      v21 = v9;

      v14 = v13;

      result = v7(&v18);
      if (v4)
      {
        v16 = *(&v19 + 1);
      }

      if (result)
      {
        break;
      }

      v15 = *(&v19 + 1);

      v8 += 48;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v17 = v21;
    *a3 = v18;
    *(a3 + 8) = v19;
    *(a3 + 24) = v20;
    *(a3 + 40) = v17;
  }

  else
  {
LABEL_6:
    *(a3 + 25) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t (*sub_22FA90EF8@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_22FA2D328(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_0(v9);
      }

      if (v8)
      {
        return sub_22FA2CF78(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

id sub_22FA90FB4(uint64_t a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8, &qword_22FCD1BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = sub_22FA3A77C(0, &qword_28147AEE0, 0x277CBEAC0);
  *(inited + 40) = sub_22FA3A77C(0, &qword_28147ADE0, 0x277CCABB0);
  *(inited + 48) = sub_22FA3A77C(0, &qword_28147ADF0, 0x277CCA9B8);
  sub_22FB606A0(inited);
  swift_setDeallocating();
  v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v4 = sub_22FCC8C24();

  v5 = [v3 initWithArray_];

  sub_22FCC8E74();
  v6 = sub_22FCC8E64();

  [v1 setClasses:v6 forSelector:sel_cancelOperationsWithIdentifiers_reply_ argumentIndex:0 ofReply:1];

  return v1;
}

uint64_t sub_22FA91180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22FCC9384();
  MEMORY[0x231907FA0](0xD00000000000001DLL, 0x800000022FCE1AC0);
  swift_getObjectType();
  sub_22FCC96E4();
  MEMORY[0x231907FA0](0x746365707865202CLL, 0xEB00000000206465);
  v3 = sub_22FCC9904();
  MEMORY[0x231907FA0](v3);

  return 0;
}

void *sub_22FA9126C()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0x5065636976726553;
  result[3] = 0xEF72656469766F72;
  result[4] = 0;
  qword_281487F20 = result;
  return result;
}

uint64_t sub_22FA912C4(__n128 a1)
{
  v3 = sub_22FCC9904();
  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  MEMORY[0x231907FA0](*(v1 + 176), *(v1 + 184));
  return v3;
}

uint64_t sub_22FA91340(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_22FCC8D14();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_22FC3F41C(0, 0, v4, &unk_22FCD3E50, v7);
}

uint64_t sub_22FA91464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_22FA91484, 0, 0);
}

uint64_t sub_22FA91484()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_22FA91578;

    return sub_22FA927E8();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_22FA91578()
{

  return MEMORY[0x2822009F8](sub_22FA91690, 0, 0);
}

uint64_t sub_22FA916B8()
{
  v1 = v0;
  if (qword_281480880 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  v2 = OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_logger;
  v3 = sub_22FCC8684();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_22FA917A0()
{
  sub_22FA916B8();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ServiceProvider(uint64_t a1)
{
  result = qword_281480848;
  if (!qword_281480848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FA91820(uint64_t a1)
{
  result = sub_22FCC8684();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22FA91900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA919AC, a3, 0);
}

void sub_22FA919AC()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v28 = v2;

  v8 = 0;
  v26 = v7;
  v27 = v3;
  while (v6)
  {
LABEL_11:
    v12 = *(v0 + 120);
    v29 = *(v0 + 112);
    v13 = *(v0 + 104);
    v14 = *(*(v28 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v6)))));
    v15 = sub_22FCC8D14();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v12, 1, 1, v15);
    v17 = swift_allocObject();
    v17[2] = 0;
    v18 = v17 + 2;
    v17[3] = 0;
    v17[4] = v14;
    v17[5] = v13;
    sub_22FA4FAA4(v12, v29, &unk_27DAD8710, &unk_22FCD1B40);
    LODWORD(v12) = (*(v16 + 48))(v29, 1, v15);
    swift_retain_n();

    v19 = *(v0 + 112);
    if (v12 == 1)
    {
      sub_22FA2B420(*(v0 + 112), &unk_27DAD8710, &unk_22FCD1B40);
      if (*v18)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_22FCC8D04();
      (*(v16 + 8))(v19, v15);
      if (*v18)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = sub_22FCC8CC4();
        v22 = v21;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v20 = 0;
    v22 = 0;
LABEL_16:
    v23 = **(v0 + 96);
    v24 = swift_allocObject();
    *(v24 + 16) = &unk_22FCD3E38;
    *(v24 + 24) = v17;

    if (v22 | v20)
    {
      v9 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v20;
      *(v0 + 40) = v22;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v0 + 120);
    v6 &= v6 - 1;
    *(v0 + 72) = 1;
    *(v0 + 80) = v9;
    *(v0 + 88) = v23;
    swift_task_create();

    sub_22FA2B420(v10, &unk_27DAD8710, &unk_22FCD1B40);
    v7 = v26;
    v3 = v27;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  v25 = *(v0 + 8);

  v25();
}

uint64_t sub_22FA91D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 120) = a5;
  v7 = swift_task_alloc();
  *(v5 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  *v7 = v5;
  v7[1] = sub_22FA91E38;
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v5 + 96, a4, v8, v9, v10);
}

uint64_t sub_22FA91E38()
{

  if (v0)
  {

    v1 = sub_22FA82CBC;
  }

  else
  {
    v1 = sub_22FA91F50;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_22FA91F50()
{
  v1 = v0[13];
  v0[17] = v0[12];
  v0[18] = v1;
  v0[19] = swift_getObjectType();
  v0[20] = *(v1 + 64);
  v0[21] = (v1 + 64) & 0xFFFFFFFFFFFFLL | 0xA70E000000000000;
  v3 = sub_22FCC8CC4();

  return MEMORY[0x2822009F8](sub_22FA91FE4, v3, v2);
}

uint64_t sub_22FA91FE4()
{
  *(v0 + 176) = (*(v0 + 160))(*(v0 + 152), *(v0 + 144));

  return MEMORY[0x2822009F8](sub_22FA92058, 0, 0);
}

uint64_t sub_22FA92058()
{
  v1 = v0[22];
  v2 = *(v1 + 16);
  v0[23] = v2;
  if (v2)
  {
    v3 = v0[15];
    v4 = *(v3 + 128);
    v0[24] = v4;
    v0[27] = 0;
    sub_22FA2D328(v1 + 32, (v0 + 2));
    v5 = *(v4 + 120);
    v0[28] = v5;
    v0[14] = v3;
    type metadata accessor for ServiceProvider(0);
    sub_22FAA3118(&unk_281480870, type metadata accessor for ServiceProvider, &unk_22FCD3D70);

    sub_22FCC9324();
    v6 = v0[5];
    v7 = v0[6];
    v8 = __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_22FA924C4;

    return sub_22FB2B2E8(v8, (v0 + 7), v5, v6, v7);
  }

  else
  {

    v11 = *(*(*(v0[15] + 128) + 128) + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_changeCache);
    v0[25] = v11;

    return MEMORY[0x2822009F8](sub_22FA92244, v11, 0);
  }
}

uint64_t sub_22FA92244()
{
  v6 = v0[18];
  sub_22FA3848C();

  v5 = (*(v6 + 88) + **(v6 + 88));
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_22FA92368;
  v2 = v0[18];
  v3 = v0[19];

  return v5(v3, v2);
}

uint64_t sub_22FA92368()
{

  return MEMORY[0x2822009F8](sub_22FA92464, 0, 0);
}

uint64_t sub_22FA92464()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FA924C4()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  sub_22FA3A7C4(v1 + 56);

  return MEMORY[0x2822009F8](sub_22FA925EC, 0, 0);
}

uint64_t sub_22FA925EC()
{
  v1 = v0[27] + 1;
  if (v1 == v0[23])
  {

    v2 = *(*(*(v0[15] + 128) + 128) + OBJC_IVAR____TtC13PhotoAnalysis13TaskScheduler_changeCache);
    v0[25] = v2;

    return MEMORY[0x2822009F8](sub_22FA92244, v2, 0);
  }

  else
  {
    v0[27] = v1;
    v3 = v0[24];
    v4 = v0[15];
    sub_22FA2D328(v0[22] + 40 * v1 + 32, (v0 + 2));
    v5 = *(v3 + 120);
    v0[28] = v5;
    v0[14] = v4;
    type metadata accessor for ServiceProvider(0);
    sub_22FAA3118(&unk_281480870, type metadata accessor for ServiceProvider, &unk_22FCD3D70);

    sub_22FCC9324();
    v6 = v0[5];
    v7 = v0[6];
    v8 = __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_22FA924C4;

    return sub_22FB2B2E8(v8, (v0 + 7), v5, v6, v7);
  }
}

uint64_t sub_22FA92808()
{
  v11 = v0;
  if (*(*(v0[2] + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v1 = swift_task_alloc();
    v0[3] = v1;
    *v1 = v0;
    v1[1] = sub_22FA7CBA4;
    v2 = v0[2];

    return sub_22FC476E4(v2);
  }

  else
  {

    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[2];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_22FA2F600(*(v6 + 176), *(v6 + 184), &v10);
      _os_log_impl(&dword_22FA28000, v4, v5, "Connection invalidated for %{public}s but already not running", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22FA92A00()
{
  v1 = *(v0 + 352);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 360) = v2;
  v3 = *(v2 + 32);
  *(v0 + 297) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = MEMORY[0x277D84F90];
  *(v0 + 368) = MEMORY[0x277D84F90];

  if (!v6)
  {
    v10 = 0;
    while (((63 - v5) >> 6) - 1 != v10)
    {
      v9 = v10 + 1;
      v6 = *(v8 + 8 * v10++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v18 = *(v0 + 352);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2240;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v20 = *(*(v18 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v20 <= 1)
    {
      if (*(*(v18 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v21 = 0xEB00000000705520;
        v22 = 1918989395;
        goto LABEL_20;
      }

      v21 = 0xEC000000676E697ALL;
      v23 = 0x696C616974696E49;
    }

    else if (v20 == 2)
    {
      v21 = 0xE700000000000000;
      v23 = 0x676E696E6E7552;
    }

    else
    {
      if (v20 == 3)
      {
        v21 = 0xED00006E776F4420;
        v22 = 1953851475;
LABEL_20:
        v23 = v22 | 0x676E697400000000;
        goto LABEL_21;
      }

      v21 = 0xE90000000000006ELL;
      v23 = 0x776F442074756853;
    }

LABEL_21:
    v24 = *(v0 + 352);
    MEMORY[0x231907FA0](v23, v21);

    v25 = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v25;
    *(inited + 80) = 0xD000000000000012;
    *(inited + 88) = 0x800000022FCE1A80;
    v26 = MEMORY[0x277D83B88];
    *(inited + 96) = *(*(v24 + 112) + 16);
    *(inited + 120) = v26;
    *(inited + 128) = 0xD000000000000017;
    *(inited + 136) = 0x800000022FCE1AA0;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0, qword_22FCD60C0);
    *(inited + 144) = v7;
    v27 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
    swift_arrayDestroy();
    v28 = *(v0 + 8);

    return v28(v27);
  }

  v9 = 0;
LABEL_8:
  *(v0 + 376) = v6;
  *(v0 + 384) = v9;
  v11 = __clz(__rbit64(v6)) | (v9 << 6);
  v12 = (*(v8 + 48) + 16 * v11);
  *(v0 + 392) = *v12;
  *(v0 + 400) = v12[1];
  v13 = *(*(v8 + 56) + 8 * v11);
  *(v0 + 408) = v13;

  v14 = swift_task_alloc();
  *(v0 + 416) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  *(v0 + 424) = v16;
  *v14 = v0;
  v14[1] = sub_22FA92DFC;
  v17 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 280, v13, v15, v16, v17);
}

uint64_t sub_22FA92DFC()
{
  v1 = *(*v0 + 352);

  return MEMORY[0x2822009F8](sub_22FA92F0C, v1, 0);
}

uint64_t sub_22FA92F0C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  *(v0 + 432) = v1;
  *(v0 + 440) = v2;
  if ((*(v0 + 296) & 1) == 0)
  {

    ObjectType = swift_getObjectType();
    *(v0 + 344) = v1;
    v18 = *(v2 + 8);
    v39 = (*(v18 + 16) + **(v18 + 16));
    v19 = swift_task_alloc();
    *(v0 + 448) = v19;
    *v19 = v0;
    v19[1] = sub_22FA9351C;

    return v39(ObjectType, v18);
  }

  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  *(v0 + 320) = 0;
  *(v0 + 328) = 0xE000000000000000;
  sub_22FCC9384();
  v5 = *(v0 + 328);
  *(v0 + 304) = *(v0 + 320);
  *(v0 + 312) = v5;
  MEMORY[0x231907FA0](0xD000000000000025, 0x800000022FCE1A50);
  MEMORY[0x231907FA0](v4, v3);

  MEMORY[0x231907FA0](8250, 0xE200000000000000);
  *(v0 + 336) = v1;
  sub_22FCC94A4();
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 368);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_31:
    v9 = sub_22FAC2528(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_22FAC2528((v10 > 1), v11 + 1, 1, v9);
  }

  sub_22FAA3160(v1, v2, 1);
  v12 = MEMORY[0x277D837D0];
  *(v0 + 216) = MEMORY[0x277D837D0];
  *(v0 + 192) = v6;
  *(v0 + 200) = v7;
  v9[2] = v11 + 1;
  sub_22FA32554((v0 + 192), &v9[4 * v11 + 4]);
  v14 = *(v0 + 376);
  v13 = *(v0 + 384);
  *(v0 + 368) = v9;
  v15 = (v14 - 1) & v14;
  if (!v15)
  {
    while (1)
    {
      v21 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      v16 = *(v0 + 360);
      if (v21 >= (((1 << *(v0 + 297)) + 63) >> 6))
      {
        break;
      }

      v15 = *(v16 + 8 * v21 + 64);
      ++v13;
      if (v15)
      {
        v13 = v21;
        goto LABEL_14;
      }
    }

    v29 = *(v0 + 352);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2240;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v31 = *(*(v29 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v31 <= 1)
    {
      if (*(*(v29 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v32 = 0xEB00000000705520;
        v33 = 1918989395;
        goto LABEL_26;
      }

      v32 = 0xEC000000676E697ALL;
      v34 = 0x696C616974696E49;
    }

    else if (v31 == 2)
    {
      v32 = 0xE700000000000000;
      v34 = 0x676E696E6E7552;
    }

    else
    {
      if (v31 == 3)
      {
        v32 = 0xED00006E776F4420;
        v33 = 1953851475;
LABEL_26:
        v34 = v33 | 0x676E697400000000;
        goto LABEL_27;
      }

      v32 = 0xE90000000000006ELL;
      v34 = 0x776F442074756853;
    }

LABEL_27:
    v35 = *(v0 + 352);
    MEMORY[0x231907FA0](v34, v32);

    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v12;
    *(inited + 80) = 0xD000000000000012;
    *(inited + 88) = 0x800000022FCE1A80;
    v36 = MEMORY[0x277D83B88];
    *(inited + 96) = *(*(v35 + 112) + 16);
    *(inited + 120) = v36;
    *(inited + 128) = 0xD000000000000017;
    *(inited + 136) = 0x800000022FCE1AA0;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0, qword_22FCD60C0);
    *(inited + 144) = v9;
    v37 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
    swift_arrayDestroy();
    v38 = *(v0 + 8);

    return v38(v37);
  }

  v16 = *(v0 + 360);
LABEL_14:
  *(v0 + 376) = v15;
  *(v0 + 384) = v13;
  v22 = __clz(__rbit64(v15)) | (v13 << 6);
  v23 = (*(v16 + 48) + 16 * v22);
  *(v0 + 392) = *v23;
  *(v0 + 400) = v23[1];
  v24 = *(*(v16 + 56) + 8 * v22);
  *(v0 + 408) = v24;

  v25 = swift_task_alloc();
  *(v0 + 416) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  *(v0 + 424) = v27;
  *v25 = v0;
  v25[1] = sub_22FA92DFC;
  v28 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 280, v24, v26, v27, v28);
}

uint64_t sub_22FA9351C(uint64_t a1)
{
  v2 = *(*v1 + 352);
  *(*v1 + 456) = a1;

  return MEMORY[0x2822009F8](sub_22FA93634, v2, 0);
}

uint64_t sub_22FA93634()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 368);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_27:
    v2 = sub_22FAC2528(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_22FAC2528((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 456);
  v7 = *(v0 + 432);
  v6 = *(v0 + 440);

  sub_22FAA3160(v7, v6, 0);
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
  *(v0 + 224) = v5;
  v2[2] = v4 + 1;
  sub_22FA32554((v0 + 224), &v2[4 * v4 + 4]);
  v9 = *(v0 + 376);
  v8 = *(v0 + 384);
  *(v0 + 368) = v2;
  v10 = (v9 - 1) & v9;
  if (!v10)
  {
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v11 = *(v0 + 360);
      if (v12 >= (((1 << *(v0 + 297)) + 63) >> 6))
      {
        break;
      }

      v10 = *(v11 + 8 * v12 + 64);
      ++v8;
      if (v10)
      {
        v8 = v12;
        goto LABEL_10;
      }
    }

    v20 = *(v0 + 352);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2240;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v22 = *(*(v20 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
    if (v22 <= 1)
    {
      if (*(*(v20 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder) + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
      {
        v23 = 0xEB00000000705520;
        v24 = 1918989395;
        goto LABEL_22;
      }

      v23 = 0xEC000000676E697ALL;
      v25 = 0x696C616974696E49;
    }

    else if (v22 == 2)
    {
      v23 = 0xE700000000000000;
      v25 = 0x676E696E6E7552;
    }

    else
    {
      if (v22 == 3)
      {
        v23 = 0xED00006E776F4420;
        v24 = 1953851475;
LABEL_22:
        v25 = v24 | 0x676E697400000000;
        goto LABEL_23;
      }

      v23 = 0xE90000000000006ELL;
      v25 = 0x776F442074756853;
    }

LABEL_23:
    v26 = *(v0 + 352);
    MEMORY[0x231907FA0](v25, v23);

    v27 = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    *(inited + 72) = v27;
    *(inited + 80) = 0xD000000000000012;
    *(inited + 88) = 0x800000022FCE1A80;
    v28 = MEMORY[0x277D83B88];
    *(inited + 96) = *(*(v26 + 112) + 16);
    *(inited + 120) = v28;
    *(inited + 128) = 0xD000000000000017;
    *(inited + 136) = 0x800000022FCE1AA0;
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BD0, qword_22FCD60C0);
    *(inited + 144) = v2;
    v29 = sub_22FA4DAB0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
    swift_arrayDestroy();
    v30 = *(v0 + 8);

    return v30(v29);
  }

  v11 = *(v0 + 360);
LABEL_10:
  *(v0 + 376) = v10;
  *(v0 + 384) = v8;
  v13 = __clz(__rbit64(v10)) | (v8 << 6);
  v14 = (*(v11 + 48) + 16 * v13);
  *(v0 + 392) = *v14;
  *(v0 + 400) = v14[1];
  v15 = *(*(v11 + 56) + 8 * v13);
  *(v0 + 408) = v15;

  v16 = swift_task_alloc();
  *(v0 + 416) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
  *(v0 + 424) = v18;
  *v16 = v0;
  v16[1] = sub_22FA92DFC;
  v19 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v0 + 280, v15, v17, v18, v19);
}

uint64_t sub_22FA93AA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FA929E0();
}

uint64_t sub_22FA93B34()
{
  sub_22FCC9844();
  sub_22FCC8B14();
  return sub_22FCC9894();
}

uint64_t sub_22FA93B88(uint64_t a1)
{
  sub_22FCC9844();
  sub_22FCC8B14();
  return sub_22FCC9894();
}

uint64_t sub_22FA93BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA93C94, v4, 0);
}

uint64_t sub_22FA93C94(uint64_t a1)
{
  v2 = v1[19];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    swift_beginAccess();
    v4 = *(v2 + 112);
    if (*(v4 + 16))
    {
      v6 = v1[15];
      v5 = v1[16];

      v7 = sub_22FA2DB54(v6, v5);
      if (v8)
      {
        v9 = *(*(v4 + 56) + 8 * v7);
        v1[24] = v9;

        v10 = swift_task_alloc();
        v1[25] = v10;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
        *v10 = v1;
        v10[1] = sub_22FA945A4;
        v13 = MEMORY[0x277D84950];
        v14 = v1 + 13;
        v15 = v9;
        v16 = v11;
LABEL_10:

        return MEMORY[0x282200430](v14, v15, v16, v12, v13);
      }
    }

    v22 = v1[20];
    v24 = v1[17];
    v23 = v1[18];
    v26 = v1[15];
    v25 = v1[16];
    v27 = sub_22FCC8D14();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v24;
    v28[5] = v23;

    v29 = sub_22FB23544(0, 0, v22, &unk_22FCD4000, v28);
    v1[21] = v29;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_22FB26224(v29, v26, v25, isUniquelyReferenced_nonNull_native);

    *(v2 + 112) = v33;
    swift_endAccess();
    v31 = swift_task_alloc();
    v1[22] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v31 = v1;
    v31[1] = sub_22FA94038;
    v13 = MEMORY[0x277D84950];
    v14 = v1 + 11;
    v15 = v29;
    v16 = v32;
    goto LABEL_10;
  }

  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v19 = v18;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  swift_willThrow();

  v20 = v1[1];

  return v20();
}

uint64_t sub_22FA94038()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FAA31A0;
  }

  else
  {
    v4 = sub_22FA94164;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA94164()
{
  v33 = v0;
  v30 = *(v0 + 88);
  v1 = type metadata accessor for LegacyStorytellingService();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;

    swift_unknownObjectRetain();
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 120);
      v31 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;
      v10 = *(v3 + 112);
      v9 = *(v3 + 120);

      v11 = sub_22FA2F600(v10, v9, v32);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_22FA2F600(v6, v31, v32);
      _os_log_impl(&dword_22FA28000, v4, v5, "Successfully instantiated service %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12(v3);
  }

  else
  {
    v14 = sub_22FAA3118(&qword_28147E830, type metadata accessor for LegacyStorytellingService, &unk_22FCDC528);
    sub_22FAA1FD8();
    v15 = swift_allocError();
    *v16 = v30;
    *(v16 + 16) = v1;
    *(v16 + 24) = v14;
    swift_willThrow();
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    swift_beginAccess();
    sub_22FB0430C(v18, v17);
    swift_endAccess();

    v19 = v15;
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F14();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v24 = 136446466;
      *(v24 + 4) = sub_22FA2F600(v23, v22, v32);
      *(v24 + 12) = 2114;
      v27 = v15;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&dword_22FA28000, v20, v21, "Failed to instantiate service for %{public}s: %{public}@", v24, 0x16u);
      sub_22FA2B420(v25, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23190A000](v26, -1, -1);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_22FA945A4()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FAA3194;
  }

  else
  {
    v4 = sub_22FA946D0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA946D0()
{
  v35 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = type metadata accessor for LegacyStorytellingService();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    swift_unknownObjectRetain();
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[15];
      v32 = v0[16];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136446466;
      v12 = *(v5 + 112);
      v11 = *(v5 + 120);

      v13 = sub_22FA2F600(v12, v11, v34);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_22FA2F600(v8, v32, v34);
      _os_log_impl(&dword_22FA28000, v6, v7, "Successfully reusing service %{public}s for %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v14 = v0[1];

    return v14(v5);
  }

  else
  {
    v16 = sub_22FAA3118(&qword_28147E830, type metadata accessor for LegacyStorytellingService, &unk_22FCDC528);
    swift_unknownObjectRetain_n();

    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F14();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v29 = v0[15];
      v30 = v0[16];
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34[0] = v33;
      *v19 = 136446722;
      ObjectType = swift_getObjectType();
      v21 = (*(v2 + 72))(ObjectType, v2);
      v23 = v16;
      v24 = sub_22FA2F600(v21, v22, v34);

      *(v19 + 4) = v24;
      v16 = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_22FA2F600(v29, v30, v34);
      *(v19 + 22) = 2114;
      sub_22FAA1FD8();
      swift_allocError();
      *v25 = v1;
      v25[1] = v2;
      v25[2] = v3;
      v25[3] = v23;
      swift_unknownObjectRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v26;
      *v31 = v26;
      _os_log_impl(&dword_22FA28000, v17, v18, "Failed to reuse service %{public}s for %{public}s: %{public}@", v19, 0x20u);
      sub_22FA2B420(v31, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v33, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    sub_22FAA1FD8();
    swift_allocError();
    *v27 = v1;
    v27[1] = v2;
    v27[2] = v3;
    v27[3] = v16;
    swift_willThrow();
    swift_unknownObjectRelease();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22FA94B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA94BF4, v4, 0);
}

uint64_t sub_22FA94BF4(uint64_t a1)
{
  v2 = v1[19];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    swift_beginAccess();
    v4 = *(v2 + 112);
    if (*(v4 + 16))
    {
      v6 = v1[15];
      v5 = v1[16];

      v7 = sub_22FA2DB54(v6, v5);
      if (v8)
      {
        v9 = *(*(v4 + 56) + 8 * v7);
        v1[24] = v9;

        v10 = swift_task_alloc();
        v1[25] = v10;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
        *v10 = v1;
        v10[1] = sub_22FA95504;
        v13 = MEMORY[0x277D84950];
        v14 = v1 + 13;
        v15 = v9;
        v16 = v11;
LABEL_10:

        return MEMORY[0x282200430](v14, v15, v16, v12, v13);
      }
    }

    v22 = v1[20];
    v24 = v1[17];
    v23 = v1[18];
    v26 = v1[15];
    v25 = v1[16];
    v27 = sub_22FCC8D14();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v24;
    v28[5] = v23;

    v29 = sub_22FB23544(0, 0, v22, &unk_22FCD3FB8, v28);
    v1[21] = v29;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_22FB26224(v29, v26, v25, isUniquelyReferenced_nonNull_native);

    *(v2 + 112) = v33;
    swift_endAccess();
    v31 = swift_task_alloc();
    v1[22] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v31 = v1;
    v31[1] = sub_22FA94F98;
    v13 = MEMORY[0x277D84950];
    v14 = v1 + 11;
    v15 = v29;
    v16 = v32;
    goto LABEL_10;
  }

  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v19 = v18;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  swift_willThrow();

  v20 = v1[1];

  return v20();
}

uint64_t sub_22FA94F98()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FAA31A0;
  }

  else
  {
    v4 = sub_22FA950C4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA950C4()
{
  v33 = v0;
  v30 = *(v0 + 88);
  v1 = type metadata accessor for PhotoLibraryService();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;

    swift_unknownObjectRetain();
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 120);
      v31 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;
      v10 = *(v3 + 112);
      v9 = *(v3 + 120);

      v11 = sub_22FA2F600(v10, v9, v32);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_22FA2F600(v6, v31, v32);
      _os_log_impl(&dword_22FA28000, v4, v5, "Successfully instantiated service %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12(v3);
  }

  else
  {
    v14 = sub_22FAA3118(&qword_281481F90, type metadata accessor for PhotoLibraryService, &unk_22FCD2B98);
    sub_22FAA1FD8();
    v15 = swift_allocError();
    *v16 = v30;
    *(v16 + 16) = v1;
    *(v16 + 24) = v14;
    swift_willThrow();
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    swift_beginAccess();
    sub_22FB0430C(v18, v17);
    swift_endAccess();

    v19 = v15;
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F14();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v24 = 136446466;
      *(v24 + 4) = sub_22FA2F600(v23, v22, v32);
      *(v24 + 12) = 2114;
      v27 = v15;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&dword_22FA28000, v20, v21, "Failed to instantiate service for %{public}s: %{public}@", v24, 0x16u);
      sub_22FA2B420(v25, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23190A000](v26, -1, -1);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_22FA95504()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FAA3194;
  }

  else
  {
    v4 = sub_22FA95630;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA95630()
{
  v35 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = type metadata accessor for PhotoLibraryService();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    swift_unknownObjectRetain();
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[15];
      v32 = v0[16];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136446466;
      v12 = *(v5 + 112);
      v11 = *(v5 + 120);

      v13 = sub_22FA2F600(v12, v11, v34);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_22FA2F600(v8, v32, v34);
      _os_log_impl(&dword_22FA28000, v6, v7, "Successfully reusing service %{public}s for %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v14 = v0[1];

    return v14(v5);
  }

  else
  {
    v16 = sub_22FAA3118(&qword_281481F90, type metadata accessor for PhotoLibraryService, &unk_22FCD2B98);
    swift_unknownObjectRetain_n();

    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F14();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v29 = v0[15];
      v30 = v0[16];
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34[0] = v33;
      *v19 = 136446722;
      ObjectType = swift_getObjectType();
      v21 = (*(v2 + 72))(ObjectType, v2);
      v23 = v16;
      v24 = sub_22FA2F600(v21, v22, v34);

      *(v19 + 4) = v24;
      v16 = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_22FA2F600(v29, v30, v34);
      *(v19 + 22) = 2114;
      sub_22FAA1FD8();
      swift_allocError();
      *v25 = v1;
      v25[1] = v2;
      v25[2] = v3;
      v25[3] = v23;
      swift_unknownObjectRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v26;
      *v31 = v26;
      _os_log_impl(&dword_22FA28000, v17, v18, "Failed to reuse service %{public}s for %{public}s: %{public}@", v19, 0x20u);
      sub_22FA2B420(v31, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v33, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    sub_22FAA1FD8();
    swift_allocError();
    *v27 = v1;
    v27[1] = v2;
    v27[2] = v3;
    v27[3] = v16;
    swift_willThrow();
    swift_unknownObjectRelease();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22FA95AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FA95B54, v4, 0);
}

uint64_t sub_22FA95B54(uint64_t a1)
{
  v2 = v1[19];
  v3 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis15ServiceProvider_stateHolder);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    swift_beginAccess();
    v4 = *(v2 + 112);
    if (*(v4 + 16))
    {
      v6 = v1[15];
      v5 = v1[16];

      v7 = sub_22FA2DB54(v6, v5);
      if (v8)
      {
        v9 = *(*(v4 + 56) + 8 * v7);
        v1[24] = v9;

        v10 = swift_task_alloc();
        v1[25] = v10;
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
        *v10 = v1;
        v10[1] = sub_22FA9667C;
        v13 = MEMORY[0x277D84950];
        v14 = v1 + 13;
        v15 = v9;
        v16 = v11;
LABEL_10:

        return MEMORY[0x282200430](v14, v15, v16, v12, v13);
      }
    }

    v22 = v1[20];
    v24 = v1[17];
    v23 = v1[18];
    v26 = v1[15];
    v25 = v1[16];
    v27 = sub_22FCC8D14();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v24;
    v28[5] = v23;

    v29 = sub_22FB23544(0, 0, v22, &unk_22FCD3F70, v28);
    v1[21] = v29;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_22FB26224(v29, v26, v25, isUniquelyReferenced_nonNull_native);

    *(v2 + 112) = v33;
    swift_endAccess();
    v31 = swift_task_alloc();
    v1[22] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7980, &qword_22FCD3E40);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    *v31 = v1;
    v31[1] = sub_22FA95EF8;
    v13 = MEMORY[0x277D84950];
    v14 = v1 + 11;
    v15 = v29;
    v16 = v32;
    goto LABEL_10;
  }

  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v19 = v18;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  swift_willThrow();

  v20 = v1[1];

  return v20();
}

uint64_t sub_22FA95EF8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FA96464;
  }

  else
  {
    v4 = sub_22FA96024;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA96024()
{
  v33 = v0;
  v30 = *(v0 + 88);
  v1 = type metadata accessor for MomentGraphService();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;

    swift_unknownObjectRetain();
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 120);
      v31 = *(v0 + 128);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;
      v10 = *(v3 + 112);
      v9 = *(v3 + 120);

      v11 = sub_22FA2F600(v10, v9, v32);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_22FA2F600(v6, v31, v32);
      _os_log_impl(&dword_22FA28000, v4, v5, "Successfully instantiated service %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    v12 = *(v0 + 8);

    return v12(v3);
  }

  else
  {
    v14 = sub_22FAA3118(&qword_28147FF30, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
    sub_22FAA1FD8();
    v15 = swift_allocError();
    *v16 = v30;
    *(v16 + 16) = v1;
    *(v16 + 24) = v14;
    swift_willThrow();
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);
    swift_beginAccess();
    sub_22FB0430C(v18, v17);
    swift_endAccess();

    v19 = v15;
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F14();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32[0] = v26;
      *v24 = 136446466;
      *(v24 + 4) = sub_22FA2F600(v23, v22, v32);
      *(v24 + 12) = 2114;
      v27 = v15;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&dword_22FA28000, v20, v21, "Failed to instantiate service for %{public}s: %{public}@", v24, 0x16u);
      sub_22FA2B420(v25, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x23190A000](v26, -1, -1);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    swift_willThrow();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_22FA96464()
{
  v17 = v0;
  v1 = v0[23];
  v3 = v0[15];
  v2 = v0[16];
  swift_beginAccess();
  sub_22FB0430C(v3, v2);
  swift_endAccess();

  v4 = v1;
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F14();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[15];
    v7 = v0[16];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_22FA2F600(v8, v7, &v16);
    *(v9 + 12) = 2114;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_22FA28000, v5, v6, "Failed to instantiate service for %{public}s: %{public}@", v9, 0x16u);
    sub_22FA2B420(v10, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_22FA9667C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_22FA96C28;
  }

  else
  {
    v4 = sub_22FA967A8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FA967A8()
{
  v35 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = type metadata accessor for MomentGraphService();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    swift_unknownObjectRetain();
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F34();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[15];
      v32 = v0[16];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34[0] = v10;
      *v9 = 136446466;
      v12 = *(v5 + 112);
      v11 = *(v5 + 120);

      v13 = sub_22FA2F600(v12, v11, v34);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_22FA2F600(v8, v32, v34);
      _os_log_impl(&dword_22FA28000, v6, v7, "Successfully reusing service %{public}s for %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v10, -1, -1);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v14 = v0[1];

    return v14(v5);
  }

  else
  {
    v16 = sub_22FAA3118(&qword_28147FF30, type metadata accessor for MomentGraphService, &unk_22FCDA1C0);
    swift_unknownObjectRetain_n();

    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F14();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v29 = v0[15];
      v30 = v0[16];
      v19 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34[0] = v33;
      *v19 = 136446722;
      ObjectType = swift_getObjectType();
      v21 = (*(v2 + 72))(ObjectType, v2);
      v23 = v16;
      v24 = sub_22FA2F600(v21, v22, v34);

      *(v19 + 4) = v24;
      v16 = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_22FA2F600(v29, v30, v34);
      *(v19 + 22) = 2114;
      sub_22FAA1FD8();
      swift_allocError();
      *v25 = v1;
      v25[1] = v2;
      v25[2] = v3;
      v25[3] = v23;
      swift_unknownObjectRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v26;
      *v31 = v26;
      _os_log_impl(&dword_22FA28000, v17, v18, "Failed to reuse service %{public}s for %{public}s: %{public}@", v19, 0x20u);
      sub_22FA2B420(v31, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v33, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    sub_22FAA1FD8();
    swift_allocError();
    *v27 = v1;
    v27[1] = v2;
    v27[2] = v3;
    v27[3] = v16;
    swift_willThrow();
    swift_unknownObjectRelease();

    v28 = v0[1];

    return v28();
  }
}