uint64_t sub_2660D17B0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2660D18B0()
{
  OUTLINED_FUNCTION_1_0();

  v1 = OUTLINED_FUNCTION_11_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_21_1();
  v4(v3);

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_2660D1960()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660D1A68()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 80);

  sub_2660D3160(v1, type metadata accessor for AppLaunchDataModels.ConfirmationViewModel);
  v2 = OUTLINED_FUNCTION_11_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_21_1();
  v5(v4);

  OUTLINED_FUNCTION_5_3();

  return v6();
}

uint64_t sub_2660D1B38()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2660D1BE0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_26618B650();
  sub_26618B680();
  sub_26618B690();
  v6 = sub_26618B440();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_26618B660();
  return sub_26618B640();
}

uint64_t sub_2660D1CEC()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_8_2();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660D1D90()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  __swift_project_value_buffer(*(v0 + 32), qword_2814B4A98);
  v1 = OUTLINED_FUNCTION_8_3();
  v2(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_2(v4))
  {
    OUTLINED_FUNCTION_24_0();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_0(v5);
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v6, v7, "RemoteDeviceConfirmationFlowStrategy.makeConfirmationRejectedResponse called");
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v8 = OUTLINED_FUNCTION_12_1();
  v9(v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 56) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_27_0(v10);

  return sub_2661799FC();
}

uint64_t sub_2660D1ED0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2660D1FCC()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_8_2();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660D2070()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  __swift_project_value_buffer(*(v0 + 32), qword_2814B4A98);
  v1 = OUTLINED_FUNCTION_8_3();
  v2(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_2(v4))
  {
    OUTLINED_FUNCTION_24_0();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_0(v5);
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v6, v7, "RemoteDeviceConfirmationFlowStrategy.makeFlowCancelledResponse called");
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v8 = OUTLINED_FUNCTION_12_1();
  v9(v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 56) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_27_0(v10);

  return sub_2661799FC();
}

uint64_t sub_2660D21CC()
{
  OUTLINED_FUNCTION_1_0();
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  swift_allocError();
  *v0 = 0;
  swift_willThrow();
  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2660D224C@<X0>(uint64_t a1@<X8>)
{
  v45 = sub_26618AB50();
  OUTLINED_FUNCTION_2_2();
  v46 = v3;
  v5 = MEMORY[0x28223BE20](v4);
  v50 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v44 = v36 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v36 - v12;
  result = sub_2660D27A0();
  if (!v1)
  {
    v38 = result;
    v37 = v15;
    v41 = 0;
    v39 = v16;
    v40 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v18 = swift_allocObject();
    v43 = a1;
    v19 = v18;
    v47 = xmmword_26618E190;
    *(v18 + 16) = xmmword_26618E190;
    v36[1] = "CONFIRMATION_CANCEL";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C088, &unk_26618F940);
    inited = swift_initStackObject();
    v42 = v11;
    v21 = inited;
    *(inited + 16) = v47;
    v48 = 0xD000000000000011;
    v49 = 0x8000000266198330;
    v22 = MEMORY[0x277D837D0];
    sub_26618CD20();
    v21[12] = v22;
    v21[9] = 0x6D7269666E6F63;
    v21[10] = 0xE700000000000000;
    sub_26618C850();
    v23 = sub_26618AB80();
    v24 = MEMORY[0x277D63778];
    v19[7] = v23;
    v19[8] = v24;
    __swift_allocate_boxed_opaque_existential_0(v19 + 4);
    sub_26618AB70();

    sub_26618AB60();
    v25 = swift_allocObject();
    *(v25 + 16) = v47;
    v26 = swift_initStackObject();
    *(v26 + 16) = v47;
    v48 = 0xD000000000000011;
    v49 = 0x8000000266198330;
    v27 = v37;

    v28 = MEMORY[0x277D837D0];
    sub_26618CD20();
    *(v26 + 96) = v28;
    *(v26 + 72) = 0x6C65636E6163;
    *(v26 + 80) = 0xE600000000000000;
    sub_26618C850();
    *(v25 + 56) = v23;
    *(v25 + 64) = MEMORY[0x277D63778];
    __swift_allocate_boxed_opaque_existential_0((v25 + 32));
    sub_26618AB70();

    sub_26618AB60();

    type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
    v48 = v38;
    v49 = v27;
    sub_26618AB90();
    v29 = v46;
    v30 = *(v46 + 16);
    v31 = v44;
    v36[0] = v13;
    v32 = v45;
    v30(v44, v13, v45);
    v33 = v50;
    v30(v50, v31, v32);
    sub_26618AB90();
    v34 = *(v29 + 8);
    v34(v31, v32);
    v48 = v39;
    v49 = v40;
    sub_26618AB90();
    v35 = v42;
    v30(v31, v42, v32);
    v30(v33, v31, v32);
    sub_26618AB90();
    v34(v31, v32);
    v34(v35, v32);
    return (v34)(v36[0], v32);
  }

  return result;
}

uint64_t sub_2660D27A0()
{
  v1 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26617CA00(0xD000000000000014, 0x80000002661982C0);
  if (v8)
  {
    v0 = v7;
    sub_26617CA00(0xD000000000000013, 0x80000002661982E0);
    if (v9)
    {
      return v0;
    }
  }

  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v1, qword_2814B4A80);
  (*(v3 + 16))(v6, v10, v1);
  v11 = sub_26618C690();
  v12 = sub_26618CAC0();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_24_0();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2660B7000, v11, v12, "DeviceConfirmationStrategy.makePromptForConfirmation: Failed to localize labels for confirmation dialog.", v13, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  (*(v3 + 8))(v6, v1);
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  swift_allocError();
  *v14 = 7;
  swift_willThrow();
  return v0;
}

void *sub_2660D29C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_2660D31B4((v0 + 13));
  sub_2660D3208((v0 + 25));
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  return v0;
}

uint64_t sub_2660D2A0C()
{
  sub_2660D29C4();

  return MEMORY[0x2821FE8D8](v0, 280, 7);
}

uint64_t sub_2660D2A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660CFE00();
}

uint64_t sub_2660D2B38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D10C8();
}

uint64_t sub_2660D2BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeviceConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821BA040](a1, a2, v9, a4);
}

uint64_t sub_2660D2CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeviceConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821BA048](a1, a2, v9, a4);
}

uint64_t sub_2660D2D68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D2E00;

  return sub_2660D1CEC();
}

uint64_t sub_2660D2E00()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2660D2EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D1FCC();
}

uint64_t sub_2660D2F78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D21B0();
}

unint64_t sub_2660D3004()
{
  result = qword_28005C078;
  if (!qword_28005C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C078);
  }

  return result;
}

uint64_t sub_2660D3060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.ConfirmationViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660D30C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_26_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2660D3118(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2660D3160(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_26_0();
  (*(v3 + 8))(a1);
  return a1;
}

BOOL OUTLINED_FUNCTION_15_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;
  *(v2 - 96) = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_task_alloc();
}

uint64_t sub_2660D33E0@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  MEMORY[0x28223BE20](v2);
  v89 = &v86 - v3;
  OUTLINED_FUNCTION_18_2();
  sub_26618B8E0();
  OUTLINED_FUNCTION_2_2();
  v87 = v5;
  v88 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_6();
  v86 = v6;
  OUTLINED_FUNCTION_18_2();
  sub_26618B840();
  OUTLINED_FUNCTION_2_2();
  v91 = v8;
  v92 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_6();
  v93 = v9;
  OUTLINED_FUNCTION_18_2();
  sub_26618B7F0();
  OUTLINED_FUNCTION_2_2();
  v96 = v11;
  v97 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_6();
  v95 = v12;
  OUTLINED_FUNCTION_18_2();
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v99 = v14;
  v100 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_1();
  v90 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v98 = &v86 - v18;
  v19 = OUTLINED_FUNCTION_18_2();
  v94 = type metadata accessor for AppLaunchIntent(v19);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_6();
  v101 = v21;
  OUTLINED_FUNCTION_18_2();
  v22 = sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24_1();
  v34 = v32 - v33;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v86 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v86 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v86 - v42;
  sub_26618B770();
  v44 = (*(v30 + 88))(v43, v28);
  if (v44 == *MEMORY[0x277D5C128])
  {
    (*(v30 + 16))(v41, v43, v28);
    (*(v30 + 96))(v41, v28);
    (*(v24 + 32))(v27, v41, v22);
    v45 = v101;
    (*(v24 + 16))(v101, v27, v22);
    v46 = v28;
    v47 = v43;
    if (sub_2660C97B4())
    {
      sub_26618B290();
      OUTLINED_FUNCTION_2_7();
      sub_2660D7518(v45, v48);
      (*(v24 + 8))(v27, v22);
    }

    else
    {
      v96 = v27;
      v97 = v24;
      if (qword_2814B3D48 != -1)
      {
        OUTLINED_FUNCTION_10_3(&qword_2814B3D48);
      }

      OUTLINED_FUNCTION_8_4();
      sub_2660D3118(v55, v56, &unk_2661939B8);
      v57 = v45;
      sub_26618BDA0();
      v58 = v104;
      v60 = v99;
      v59 = v100;
      if (!v104)
      {
        goto LABEL_26;
      }

      v61 = v103;

      v62 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v62 = v61 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        sub_26618B2A0();
      }

      else
      {
LABEL_26:
        if (qword_2814B2C40 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v78 = __swift_project_value_buffer(v59, qword_2814B4A98);
        v79 = v98;
        (*(v60 + 16))(v98, v78, v59);
        v80 = sub_26618C690();
        sub_26618CAA0();
        v81 = OUTLINED_FUNCTION_25_1();
        if (os_log_type_enabled(v81, v82))
        {
          OUTLINED_FUNCTION_24_0();
          v83 = swift_slowAlloc();
          OUTLINED_FUNCTION_30_0(v83);
          OUTLINED_FUNCTION_30_1(&dword_2660B7000, v80, v79, "RemoteDevicesDisambiguationStrategy.actionForInput does not contain valid appLaunchIntent.destinationDeviceId, ignoring");
          OUTLINED_FUNCTION_10_2();
          MEMORY[0x26677CC30]();
        }

        (*(v60 + 8))(v98, v59);
        sub_26618B2B0();
      }

      OUTLINED_FUNCTION_2_7();
      sub_2660D7518(v57, v84);
      (*(v97 + 8))(v96, v22);
    }

    return (*(v30 + 8))(v47, v46);
  }

  v46 = v28;
  if (v44 == *MEMORY[0x277D5C150])
  {
    (*(v30 + 16))(v38, v43, v28);
    (*(v30 + 96))(v38, v28);
    v50 = v95;
    v49 = v96;
    v51 = v97;
    (*(v96 + 4))(v95, v38, v97);
    if (sub_26618B7D0() == 0xD000000000000030 && 0x80000002661983D0 == v52)
    {
    }

    else
    {
      v54 = sub_26618D000();

      if ((v54 & 1) == 0)
      {
        (*(v49 + 1))(v50, v51);
        v47 = v43;
LABEL_25:
        sub_26618B2B0();
        return (*(v30 + 8))(v47, v46);
      }
    }

    sub_26618B2A0();
    (*(v49 + 1))(v50, v51);
    v47 = v43;
    return (*(v30 + 8))(v47, v46);
  }

  v47 = v43;
  if (v44 != *MEMORY[0x277D5C160])
  {
    goto LABEL_25;
  }

  (*(v30 + 16))(v34, v43, v28);
  (*(v30 + 96))(v34, v28);
  v64 = v91;
  v63 = v92;
  v65 = v93;
  (*(v91 + 32))(v93, v34, v92);
  v66 = v86;
  sub_26618B820();
  v67 = sub_26618B8B0();
  (*(v87 + 8))(v66, v88);
  v68 = v89;
  sub_266139C58(v67, v89);

  v69 = sub_26618B980();
  LODWORD(v67) = __swift_getEnumTagSinglePayload(v68, 1, v69);
  sub_2660BF79C(v68, &qword_28005BF28, &qword_26618F960);
  if (v67 == 1)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v70 = v100;
    v71 = __swift_project_value_buffer(v100, qword_2814B4A80);
    v72 = v99;
    v73 = v90;
    (*(v99 + 16))(v90, v71, v70);
    v74 = sub_26618C690();
    sub_26618CAB0();
    v75 = OUTLINED_FUNCTION_25_1();
    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_24_0();
      v77 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v77);
      OUTLINED_FUNCTION_30_1(&dword_2660B7000, v74, v73, "RemoteDevicesDisambiguationStrategy.actionForInput No user dialog act found in userParse");
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v72 + 8))(v90, v70);
    sub_26618B2B0();
    (*(v64 + 8))(v93, v63);
  }

  else
  {
    sub_26618B2A0();
    (*(v64 + 8))(v65, v63);
  }

  return (*(v30 + 8))(v47, v46);
}

uint64_t sub_2660D3D4C()
{
  OUTLINED_FUNCTION_18();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_26618B8E0();
  v1[19] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[20] = v6;
  v1[21] = OUTLINED_FUNCTION_25_0();
  v1[22] = swift_task_alloc();
  v7 = sub_26618B840();
  v1[23] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_25_0();
  v1[26] = swift_task_alloc();
  v9 = sub_26618B7F0();
  v1[27] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[28] = v10;
  v1[29] = OUTLINED_FUNCTION_8_2();
  v11 = type metadata accessor for AppLaunchIntent(0);
  v1[30] = v11;
  OUTLINED_FUNCTION_3_0(v11);
  v1[31] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618C6B0();
  v1[32] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[33] = v13;
  v1[34] = OUTLINED_FUNCTION_25_0();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v14 = sub_26618C0E0();
  v1[38] = v14;
  OUTLINED_FUNCTION_0_4(v14);
  v1[39] = v15;
  v1[40] = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618B800();
  v1[41] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v1[42] = v17;
  v1[43] = OUTLINED_FUNCTION_25_0();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2660D3FF4(uint64_t a1)
{
  v158 = v1;
  sub_26618B770();
  v2 = OUTLINED_FUNCTION_12_1();
  v4 = v3(v2);
  i = 0x2814B2000uLL;
  if (v4 != *MEMORY[0x277D5C128])
  {
    if (v4 != *MEMORY[0x277D5C150])
    {
      if (v4 == *MEMORY[0x277D5C160])
      {
        OUTLINED_FUNCTION_34();
        v53 = OUTLINED_FUNCTION_13_2();
        v54(v53);
        v55 = OUTLINED_FUNCTION_11_0();
        v56(v55);
        v57 = OUTLINED_FUNCTION_7_4();
        v58(v57);
        if (qword_2814B2C40 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v60 = *(v1 + 200);
        v59 = *(v1 + 208);
        v61 = *(v1 + 184);
        v62 = *(v1 + 192);
        __swift_project_value_buffer(*(v1 + 256), qword_2814B4A98);
        v63 = OUTLINED_FUNCTION_13_2();
        v153 = v64;
        (v64)(v63);
        (*(v62 + 16))(v60, v59, v61);
        v65 = sub_26618C690();
        v66 = sub_26618CAA0();
        v67 = os_log_type_enabled(v65, v66);
        v68 = *(v1 + 256);
        v69 = *(v1 + 264);
        v71 = *(v1 + 192);
        v70 = *(v1 + 200);
        v72 = *(v1 + 184);
        if (v67)
        {
          v148 = *(v1 + 184);
          log = v65;
          v156 = *(v1 + 280);
          v73 = *(v1 + 168);
          v74 = *(v1 + 176);
          v76 = *(v1 + 152);
          v75 = *(v1 + 160);
          v150 = v66;
          v77 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v157[0] = v149;
          *v77 = 136315138;
          sub_26618B820();
          (*(v75 + 16))(v73, v74, v76);
          v147 = sub_2661458C0(v73);
          v152 = v68;
          v79 = v78;
          v80 = *(v71 + 8);
          v80(v70, v148);
          v81 = v80;
          (*(v75 + 8))(v74, v76);
          v82 = sub_266103A98(v147, v79, v157);

          *(v77 + 4) = v82;
          _os_log_impl(&dword_2660B7000, log, v150, "RemoteDevicesDisambiguationStrategy.parseDisambiguationResult using follow up USO parse: %s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v149);
          OUTLINED_FUNCTION_10_2();
          MEMORY[0x26677CC30]();
          OUTLINED_FUNCTION_10_2();
          MEMORY[0x26677CC30]();

          v83 = *(v69 + 8);
          v84 = v156;
          v85 = v152;
        }

        else
        {

          v141 = *(v71 + 8);
          v141(v70, v72);
          v81 = v141;
          v84 = OUTLINED_FUNCTION_12_1();
        }

        v151 = v83;
        (v83)(v84, v85);
        v142 = *(v1 + 176);
        v144 = *(v1 + 152);
        v143 = *(v1 + 160);
        sub_26618B820();
        v155 = sub_2660D4CE4();
        v30 = v145;
        (*(v143 + 8))(v142, v144);
        v146 = OUTLINED_FUNCTION_31_0();
        v81(v146);
        v12 = 0x2814B2000;
        goto LABEL_8;
      }

      goto LABEL_36;
    }

    v44 = OUTLINED_FUNCTION_13_2();
    v45(v44);
    v46 = OUTLINED_FUNCTION_11_0();
    v47(v46);
    v48 = OUTLINED_FUNCTION_7_4();
    v49(v48);
    if (sub_26618B7D0() == 0xD000000000000030 && 0x80000002661983D0 == v50)
    {
    }

    else
    {
      v52 = sub_26618D000();

      if ((v52 & 1) == 0)
      {
        (*(*(v1 + 224) + 8))(*(v1 + 232), *(v1 + 216));
LABEL_36:
        v86 = *(v1 + 368);
        v88 = *(v1 + 328);
        v87 = *(v1 + 336);
        sub_2660D3004();
        OUTLINED_FUNCTION_18_1();
        v89 = swift_allocError();
        OUTLINED_FUNCTION_17_2(v89, v90, v91, v92, v93, v94, v95, v96);
LABEL_64:
        (*(v87 + 8))(v86, v88);
        goto LABEL_65;
      }
    }

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    __swift_project_value_buffer(*(v1 + 256), qword_2814B4A98);
    v97 = OUTLINED_FUNCTION_8_3();
    v153 = v98;
    (v98)(v97);
    v99 = sub_26618C690();
    v100 = sub_26618CAA0();
    if (os_log_type_enabled(v99, v100))
    {
      OUTLINED_FUNCTION_24_0();
      v101 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v101);
      OUTLINED_FUNCTION_30_1(&dword_2660B7000, v99, v100, "RemoteDevicesDisambiguationStrategy.parseDisambiguationResult using directInvocation");
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v102 = *(v1 + 264);

    v103 = *(v102 + 8);
    v104 = OUTLINED_FUNCTION_12_1();
    v103(v104);
    v105 = sub_26618B7E0();
    if (v105)
    {
      sub_266158220(0x696669746E656469, 0xEA00000000007265, v105, (v1 + 16));

      if (*(v1 + 40))
      {
        if (swift_dynamicCast())
        {
          v151 = v103;
          v106 = *(v1 + 368);
          v108 = *(v1 + 328);
          v107 = *(v1 + 336);
          (*(*(v1 + 224) + 8))(*(v1 + 232), *(v1 + 216));
          v30 = *(v1 + 88);
          v155 = *(v1 + 80);
          (*(v107 + 8))(v106, v108);

          goto LABEL_9;
        }

        goto LABEL_63;
      }
    }

    else
    {
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
    }

    sub_2660BF79C(v1 + 16, &qword_28005C0A8, qword_26618FAE0);
LABEL_63:
    v86 = *(v1 + 368);
    v88 = *(v1 + 328);
    v87 = *(v1 + 336);
    v130 = *(v1 + 224);
    v129 = *(v1 + 232);
    v131 = *(v1 + 216);
    sub_2660D3004();
    OUTLINED_FUNCTION_18_1();
    v132 = swift_allocError();
    OUTLINED_FUNCTION_17_2(v132, v133, v134, v135, v136, v137, v138, v139);
    (*(v130 + 8))(v129, v131);
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_34();
  v6 = OUTLINED_FUNCTION_13_2();
  v7(v6);
  v8 = OUTLINED_FUNCTION_11_0();
  v9(v8);
  v10 = OUTLINED_FUNCTION_7_4();
  v11(v10);
  if (qword_2814B2C40 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v12 = i;
    __swift_project_value_buffer(*(v1 + 256), qword_2814B4A98);
    v13 = OUTLINED_FUNCTION_8_3();
    v153 = v14;
    (v14)(v13);
    v15 = sub_26618C690();
    v16 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_1(v16))
    {
      OUTLINED_FUNCTION_24_0();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_0(v17);
      OUTLINED_FUNCTION_30_1(&dword_2660B7000, v15, v16, "RemoteDevicesDisambiguationStrategy.parseDisambiguationResult using NLv3Intent");
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v19 = *(v1 + 312);
    v18 = *(v1 + 320);
    v20 = *(v1 + 304);
    v21 = *(v1 + 248);

    v22 = OUTLINED_FUNCTION_31_0();
    v151 = v23;
    v23(v22);
    (*(v19 + 16))(v21, v18, v20);
    if (qword_2814B3D48 != -1)
    {
      OUTLINED_FUNCTION_10_3(&qword_2814B3D48);
    }

    v24 = *(v1 + 248);
    OUTLINED_FUNCTION_8_4();
    sub_2660D3118(v25, v26, &unk_2661939B8);
    sub_26618BDA0();
    OUTLINED_FUNCTION_2_7();
    sub_2660D7518(v24, v27);
    v28 = OUTLINED_FUNCTION_12_1();
    v29(v28);
    v30 = *(v1 + 104);
    v155 = *(v1 + 96);
LABEL_8:
    v31 = *(v1 + 368);
    v32 = *(v1 + 328);
    v33 = *(*(v1 + 336) + 8);

    v33(v31, v32);
    if (!v30)
    {
      break;
    }

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0B8, &qword_26618FAD0);
    v34 = sub_26618B610();
    v35 = sub_2661046B8();
    for (i = 0; ; ++i)
    {
      if (v35 == i)
      {

        v12 = 0x2814B2000uLL;
        goto LABEL_48;
      }

      if ((v34 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x26677C150](i, v34);
      }

      else
      {
        if (i >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v36 = *(v34 + 8 * i + 32);
      }

      v37 = v36;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (sub_266136804() == v155 && v38 == v30)
      {

LABEL_60:
        OUTLINED_FUNCTION_20_1();
        v127 = *(v1 + 144);

        __swift_project_boxed_opaque_existential_1((v127 + 104), *(v127 + 128));
        sub_266179554(i + 1);
        *(v1 + 112) = v37;
        sub_26618C4F0();
        sub_26618B550();

        OUTLINED_FUNCTION_5_3();
        goto LABEL_66;
      }

      v40 = sub_26618D000();

      if (v40)
      {
        goto LABEL_60;
      }

      v41 = sub_26618C4C0();
      if (v42)
      {
        *(v1 + 48) = v41;
        *(v1 + 56) = v42;
        *(v1 + 64) = v155;
        *(v1 + 72) = v30;
        sub_2660CCD6C();
        v43 = sub_26618CC20();

        if (!v43)
        {
          goto LABEL_60;
        }
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

LABEL_48:
  if (*(v12 + 3136) != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v109 = *(v1 + 272);
  v110 = *(v1 + 256);
  v111 = __swift_project_value_buffer(v110, qword_2814B4A98);
  v153(v109, v111, v110);

  v112 = sub_26618C690();
  v113 = sub_26618CAB0();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v157[0] = v115;
    *v114 = 136315138;
    if (v30)
    {
      v116 = v155;
    }

    else
    {
      v116 = 7104878;
    }

    if (!v30)
    {
      v30 = 0xE300000000000000;
    }

    v117 = sub_266103A98(v116, v30, v157);

    *(v114 + 4) = v117;
    _os_log_impl(&dword_2660B7000, v112, v113, "RemoteDevicesDisambiguationStrategy.parseDisambiguationResult No device matched specified identifier: %s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  else
  {
  }

  v118 = OUTLINED_FUNCTION_31_0();
  v151(v118);
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  v119 = swift_allocError();
  OUTLINED_FUNCTION_17_2(v119, v120, v121, v122, v123, v124, v125, v126);
LABEL_65:
  OUTLINED_FUNCTION_20_1();

  OUTLINED_FUNCTION_5_3();
LABEL_66:

  return v128();
}

uint64_t sub_2660D4CE4()
{
  v1 = v0;
  v2 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266144AE8();
  if (v8)
  {
    v9 = v8;
    v10 = __swift_project_boxed_opaque_existential_1((v1 + 320), *(v1 + 344));
    sub_2660D7054(v10, v9);
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    __swift_project_value_buffer(v2, qword_2814B4A80);
    OUTLINED_FUNCTION_34();
    v11(v7);
    v12 = sub_26618C690();
    v13 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v13))
    {
      OUTLINED_FUNCTION_24_0();
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2660B7000, v12, v13, "RemoteDevicesDisambiguationStrategy.getSelectedDeviceIdentifierOrName() No tasks found in input", v14, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v4 + 8))(v7, v2);
  }

  return OUTLINED_FUNCTION_12_1();
}

uint64_t sub_2660D4E8C()
{
  OUTLINED_FUNCTION_18();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
  OUTLINED_FUNCTION_3_0(v4);
  v1[10] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v5);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B6A0();
  v1[12] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B440();
  v1[15] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618C6B0();
  v1[18] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_8_2();
  v12 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2660D500C()
{
  v33 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0B8, &qword_26618FAD0);
  v2 = sub_26618B610();
  v0[21] = v2;
  if (qword_2814B2C40 != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = __swift_project_value_buffer(v5, qword_2814B4A98);
  (*(v3 + 16))(v4, v6, v5);

  v7 = sub_26618C690();
  v8 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v8))
  {
    v30 = v1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 134218242;
    *(v9 + 4) = sub_2661046B8();

    *(v9 + 12) = 2080;
    sub_26610027C(v2);
    v2 = sub_266103A98(v11, v12, &v32);

    *(v9 + 14) = v2;
    _os_log_impl(&dword_2660B7000, v7, v8, "RemoteDevicesDisambiguationStrategy.makePromptForDisambiguation(): Disambiguating %ld items : %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    v1 = v30;
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  else
  {
  }

  v13 = OUTLINED_FUNCTION_31_0();
  v14(v13);
  v15 = sub_26618B610();
  v16 = sub_2661046B8();
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
LABEL_6:
  v31 = v18;
  v0[22] = v18;
  while (v16 != v17)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26677C150](v17, v15);
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v19 = *(v15 + 8 * v17 + 32);
    }

    v20 = v19;
    v2 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v21 = sub_26618C4C0();
    v1 = v22;

    ++v17;
    if (v1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266129600();
        v31 = v26;
      }

      v24 = *(v31 + 16);
      if (v24 >= *(v31 + 24) >> 1)
      {
        sub_266129600();
        v31 = v27;
      }

      v18 = v31;
      *(v31 + 16) = v24 + 1;
      v25 = v31 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v1;
      v17 = v2;
      goto LABEL_6;
    }
  }

  sub_266148554();
  v28 = swift_task_alloc();
  v0[23] = v28;
  *v28 = v0;
  v28[1] = sub_2660D537C;

  return sub_2660C36D8(v31);
}

uint64_t sub_2660D537C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  *(v2 + 192) = v4;
  *(v2 + 200) = v0;

  if (v0)
  {

    v5 = sub_2660D5C2C;
  }

  else
  {
    v5 = sub_2660D54C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2660D54C0()
{
  v1 = v0[17];
  v2 = v0[9];
  sub_26618B1C0();
  *(swift_task_alloc() + 16) = v1;
  sub_26618B620();

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  OUTLINED_FUNCTION_12_1();
  if (sub_26618B1A0())
  {
    v3 = v0[24];
    v4 = v0[9];

    v5 = v4[26];
    v6 = v4[27];
    __swift_project_boxed_opaque_existential_1(v4 + 23, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v7 = swift_allocObject();
    v0[26] = v7;
    *(v7 + 16) = xmmword_26618F7E0;
    *(v7 + 32) = v3;
    v8 = v3;
    v9 = swift_task_alloc();
    v0[27] = v9;
    *v9 = v0;
    v9[1] = sub_2660D5884;
    v10 = v0[14];
    v11 = v0[7];

    return MEMORY[0x2821BB488](v11, v7, v10, v5, v6);
  }

  else
  {
    v12 = v0[25];
    sub_2660D6134(v0[21], v0[10]);
    if (v12)
    {
      v13 = v0[24];
      (*(v0[13] + 8))(v0[14], v0[12]);

      (*(v0[16] + 8))(v0[17], v0[15]);

      OUTLINED_FUNCTION_5_3();

      return v14();
    }

    else
    {
      v15 = v0[24];
      v16 = v0[9];
      v17 = v0[10];

      v18 = v16[26];
      v19 = v16[27];
      __swift_project_boxed_opaque_existential_1(v16 + 23, v18);
      v0[5] = type metadata accessor for AppLaunchDataModels(0);
      v0[6] = sub_2660D3118(qword_2814B3FF0, type metadata accessor for AppLaunchDataModels, &protocol conformance descriptor for AppLaunchDataModels);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
      sub_2660D6FF0(v17, boxed_opaque_existential_0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v21 = swift_allocObject();
      v0[28] = v21;
      *(v21 + 16) = xmmword_26618F7E0;
      *(v21 + 32) = v15;
      v22 = v15;
      v23 = swift_task_alloc();
      v0[29] = v23;
      *v23 = v0;
      v23[1] = sub_2660D5A44;
      v24 = v0[14];
      v25 = v0[7];

      return MEMORY[0x2821BB468](v25, v0 + 2, v21, v24, v18, v19);
    }
  }
}

uint64_t sub_2660D5884()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2660D5984()
{
  OUTLINED_FUNCTION_19();

  v1 = OUTLINED_FUNCTION_11_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_19_2();
  v4(v3);

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_2660D5A44()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660D5B4C()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 80);

  sub_2660D7518(v1, type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel);
  v2 = OUTLINED_FUNCTION_11_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_19_2();
  v5(v4);

  OUTLINED_FUNCTION_5_3();

  return v6();
}

uint64_t sub_2660D5C2C()
{
  OUTLINED_FUNCTION_19();
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2660D5CDC(uint64_t a1, uint64_t a2)
{
  v3 = sub_26618B230();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_26618B650();
  sub_26618B680();
  v10 = sub_26618B440();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_26618B660();
  sub_26618B640();
  (*(v4 + 104))(v6, *MEMORY[0x277D5BC50], v3);
  return sub_26618B630();
}

uint64_t sub_2660D5E94()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_8_2();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660D5F38()
{
  OUTLINED_FUNCTION_19();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 32), qword_2814B4A98);
  v1 = OUTLINED_FUNCTION_8_3();
  v2(v1);
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_1(v4))
  {
    OUTLINED_FUNCTION_24_0();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_0(v5);
    OUTLINED_FUNCTION_30_1(&dword_2660B7000, v3, v4, "RemoteDevicesDisambiguationStrategy.makeFlowCancelledResponse called");
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v6 = OUTLINED_FUNCTION_12_1();
  v7(v6);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_2660D1ED0;

  return sub_2661799FC();
}

uint64_t sub_2660D60B0()
{
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  swift_allocError();
  *v0 = 0;
  swift_willThrow();
  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2660D6134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v43 = v4;
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_6();
  v42 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0B0, &qword_26618FAB8);
  v7 = OUTLINED_FUNCTION_3_0(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v52 = type metadata accessor for AppLaunchDataModels.Device(0);
  OUTLINED_FUNCTION_2_2();
  v47 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_1();
  v49 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v46 = &v41 - v15;
  v16 = sub_2661046B8();
  v17 = 0;
  v18 = a1 & 0xC000000000000001;
  v19 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = MEMORY[0x277D84F90];
  v48 = a1;
  while (v16 != v17)
  {
    if (v18)
    {
      v21 = MEMORY[0x26677C150](v17, a1);
    }

    else
    {
      if (v17 >= *(v19 + 16))
      {
        goto LABEL_23;
      }

      v21 = *(a1 + 8 * v17 + 32);
    }

    v22 = v21;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      OUTLINED_FUNCTION_0_5();
      swift_once();
      goto LABEL_19;
    }

    v50 = v21;
    sub_2660D657C(v9);

    if (__swift_getEnumTagSinglePayload(v9, 1, v52) == 1)
    {
      sub_2660BF79C(v9, &qword_28005C0B0, &qword_26618FAB8);
    }

    else
    {
      v23 = v46;
      sub_2660D6F84(v9, v46);
      sub_2660D6F84(v23, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266129880(0, *(v20 + 16) + 1, 1, v20);
        v20 = v26;
      }

      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_266129880(v24 > 1, v25 + 1, 1, v20);
        v20 = v27;
      }

      *(v20 + 16) = v25 + 1;
      sub_2660D6F84(v49, v20 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v25);
      a1 = v48;
    }

    ++v17;
  }

  v28 = sub_26617CA00(0x56545F4843494857, 0xE800000000000000);
  if (v29)
  {
    v50 = v28;
    v51 = v29;
    v30 = v45;
    sub_26618AB90();
    result = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
    *(v30 + *(result + 20)) = v20;
    return result;
  }

  if (qword_2814B2C40 != -1)
  {
    goto LABEL_24;
  }

LABEL_19:
  v32 = v44;
  __swift_project_value_buffer(v44, qword_2814B4A98);
  v34 = v42;
  v33 = v43;
  OUTLINED_FUNCTION_34();
  v35(v34);
  v36 = sub_26618C690();
  sub_26618CAB0();
  v37 = OUTLINED_FUNCTION_25_1();
  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_24_0();
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_2660B7000, v36, v34, "Unable to retieve localized string for 'WHICH_TV' label", v39, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  (*(v33 + 8))(v34, v32);
  sub_2660D3004();
  OUTLINED_FUNCTION_18_1();
  swift_allocError();
  *v40 = 7;
  return swift_willThrow();
}

uint64_t sub_2660D657C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_26618AB50();
  v46 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v42 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v51 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v48 = &v42 - v10;
  v11 = sub_26618C6B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26618C4C0();
  if (v16)
  {
    v17 = v16;
    v45 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v18 = swift_allocObject();
    v44 = xmmword_26618E190;
    *(v18 + 16) = xmmword_26618E190;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C088, &unk_26618F940);
    inited = swift_initStackObject();
    *(inited + 16) = v44;
    v49 = 0x696669746E656469;
    v50 = 0xEA00000000007265;
    v20 = MEMORY[0x277D837D0];
    sub_26618CD20();
    v21 = sub_266136804();
    *(inited + 96) = v20;
    *(inited + 72) = v21;
    *(inited + 80) = v22;
    sub_26618C850();
    v23 = sub_26618AB80();
    v24 = MEMORY[0x277D63778];
    *(v18 + 56) = v23;
    *(v18 + 64) = v24;
    __swift_allocate_boxed_opaque_existential_0((v18 + 32));
    sub_26618AB70();

    v25 = v48;
    sub_26618AB60();
    *&v44 = sub_26618C4A0();
    v43 = v26;
    v27 = v46;
    v28 = *(v46 + 16);
    v29 = v51;
    v28(v51, v25, v1);
    v49 = v45;
    v50 = v17;
    v30 = v47;
    sub_26618AB90();
    v31 = type metadata accessor for AppLaunchDataModels.Device(0);
    v49 = v44;
    v50 = v43;
    sub_26618AB90();
    v28(v7, v29, v1);
    v28(v4, v7, v1);
    sub_26618AB90();
    v32 = *(v27 + 8);
    v32(v7, v1);
    v32(v51, v1);
    v32(v48, v1);
    v33 = v30;
    v34 = 0;
    v35 = v31;
  }

  else
  {
    v36 = v47;
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v11, qword_2814B4A98);
    (*(v12 + 16))(v14, v37, v11);
    v38 = sub_26618C690();
    v39 = sub_26618CAB0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_2660B7000, v38, v39, "DeviceDisambiguationStrategy.makeDisambiguationModel: device has no name", v40, 2u);
      MEMORY[0x26677CC30](v40, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    v35 = type metadata accessor for AppLaunchDataModels.Device(0);
    v33 = v36;
    v34 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
}

void *sub_2660D6A9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  sub_2660D3208((v0 + 8));
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  sub_2660D31B4((v0 + 28));
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  return v0;
}

uint64_t sub_2660D6AF4()
{
  sub_2660D6A9C();

  return MEMORY[0x2821FE8D8](v0, 360, 7);
}

uint64_t sub_2660D6B7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D3D4C();
}

uint64_t sub_2660D6C2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D4E8C();
}

uint64_t sub_2660D6CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeviceDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821BA098](a1, a2, v9, a4);
}

uint64_t sub_2660D6D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeviceDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821BA0A0](a1, a2, v9, a4);
}

uint64_t sub_2660D6E5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D2E00;

  return sub_2660D5E94();
}

uint64_t sub_2660D6EF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660D6094();
}

uint64_t sub_2660D6F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.Device(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660D6FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.DeviceDisambiguationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660D7054(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0C0, &qword_26618FAD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v17 = &type metadata for ReferenceResolver;
  v18 = &off_2877CC6F0;
  v16[0] = swift_allocObject();
  sub_2660CFC00(a1, v16[0] + 16);
  sub_26618BDF0();
  sub_2660D74A8(v15, v13);
  if (!v14)
  {
    sub_2660BF79C(v15, &qword_28005C0A8, qword_26618FAE0);
LABEL_15:
    v6 = 0;
    goto LABEL_24;
  }

  sub_2660D74A8(v13, v12);
  sub_26618BF40();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_26618C040();
    if (swift_dynamicCast())
    {

      sub_26618BAF0();

      if (v10[3])
      {
        v6 = sub_26618BB00();

        if (!v6)
        {
          sub_2660BF79C(v15, &qword_28005C0A8, qword_26618FAE0);

          goto LABEL_23;
        }

        if (sub_2661046B8())
        {
          sub_2661046C8();
          if ((v6 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26677C150](0, v6);
          }

          else
          {
          }

          sub_26618BCF0();

          sub_2660BF79C(v15, &qword_28005C0A8, qword_26618FAE0);
          v6 = v10[1];
          goto LABEL_23;
        }

        sub_2660BF79C(v15, &qword_28005C0A8, qword_26618FAE0);
      }

      else
      {
        sub_2660BF79C(v15, &qword_28005C0A8, qword_26618FAE0);
      }

      goto LABEL_22;
    }

    sub_2660BF79C(v15, &qword_28005C0A8, qword_26618FAE0);
    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_15;
  }

  sub_26618BAF0();

  v6 = v11;
  if (v11)
  {
    sub_26618BB90();

    __swift_project_boxed_opaque_existential_1(v16, v17);
    v7 = sub_2661613B8();
    sub_266139CA0(v7, v5);

    v8 = sub_26618C7A0();
    if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
    {
      sub_2660BF79C(v15, &qword_28005C0A8, qword_26618FAE0);

      sub_2660BF79C(v5, &qword_28005C0C0, &qword_26618FAD8);
LABEL_22:
      v6 = 0;
      goto LABEL_23;
    }

    v6 = sub_26618C770();

    sub_2660BF79C(v15, &qword_28005C0A8, qword_26618FAE0);
    (*(*(v8 - 8) + 8))(v5, v8);
LABEL_23:
    __swift_destroy_boxed_opaque_existential_1(v12);
    goto LABEL_24;
  }

  sub_2660BF79C(v15, &qword_28005C0A8, qword_26618FAE0);

  __swift_destroy_boxed_opaque_existential_1(v12);
LABEL_24:
  sub_2660BF79C(v13, &qword_28005C0A8, qword_26618FAE0);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v6;
}

uint64_t sub_2660D74A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0A8, qword_26618FAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660D7518(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_30_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

BOOL sub_2660D769C(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return !a2;
    case 1:
      return a2 == 1;
    case 2:
      return a2 == 2;
  }

  if (a2 < 3)
  {
    return 0;
  }

  sub_2660DA39C();
  return sub_26618CBA0() & 1;
}

uint64_t sub_2660D7728(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_2660DA3FC(a1, a2);
}

uint64_t sub_2660D7760(char a1)
{
  result = 0x6769626D61736944;
  switch(a1)
  {
    case 1:
      result = 0x616D7269666E6F43;
      break;
    case 2:
      result = 0x6C65532D6F747541;
      break;
    case 3:
      result = 0x6A65522D6F747541;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2660D77F8(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      if (a2 >> 62 == 1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      switch(__ROR8__(a1 ^ 0x8000000000000000, 3))
      {
        case 1:
          OUTLINED_FUNCTION_16_1();
          break;
        case 2:
          OUTLINED_FUNCTION_16_1();
          v4 = v6 + 8;
          break;
        case 3:
          OUTLINED_FUNCTION_16_1();
          v4 = v7 | 0x10;
          break;
        case 4:
          OUTLINED_FUNCTION_16_1();
          v4 = v5 + 24;
          break;
        default:
          v4 = 0x8000000000000000;
          break;
      }

      if (a2 == v4)
      {
        return 1;
      }
    }
  }

  else if (!(a2 >> 62))
  {
LABEL_6:
    sub_2660DA39C();
    return sub_26618CBA0() & 1;
  }

  return 0;
}

uint64_t sub_2660D790C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
  if (!(v1 >> 62))
  {
    return 2;
  }

  if (v1 >> 62 != 1)
  {
    return *(&unk_26618FE48 + ((v1 ^ 0x8000000000000000) & 0xFFFFFFFFFFFFFFF8));
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

BOOL sub_2660D7970(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state;
  v7 = *(v1 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
  if (v7 == 0x8000000000000000)
  {
    v8 = sub_26618B790();
    OUTLINED_FUNCTION_16();
    (*(v9 + 16))(v5, a1, v8);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_input;
    swift_beginAccess();
    sub_2660CFB90(v5, v1 + v10);
    swift_endAccess();
    v11 = *(v1 + v6);
    *(v1 + v6) = 0x8000000000000000;
    sub_2660DA3E0(v11);
  }

  return v7 == 0x8000000000000000;
}

uint64_t sub_2660D7AA4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExecutionDeviceResolutionFlow(0);
  sub_2660DB1C4(&qword_28005C130, type metadata accessor for ExecutionDeviceResolutionFlow, &unk_26618FC90);
  return sub_26618AFB0();
}

uint64_t sub_2660D7B34()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_26618C6B0();
  v1[7] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B800();
  v1[10] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_8_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v1[13] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B790();
  v1[14] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_8_2();
  v9 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2660D7CA0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_input;
  swift_beginAccess();
  sub_2660BF73C(v3 + v4, v1, &qword_28005C060, &qword_26618FD10);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2660BF79C(v0[13], &qword_28005C060, &qword_26618FD10);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    __swift_project_value_buffer(v0[7], qword_2814B4A98);
    v5 = OUTLINED_FUNCTION_8_3();
    v6(v5);
    v7 = sub_26618C690();
    v8 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_1(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v9, v10, "ExecutionDeviceResolutionFlow.execute() Input is nil. Error executing request");
      OUTLINED_FUNCTION_7_2();
    }

    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];

    (*(v12 + 8))(v11, v13);
    return sub_26618CE80();
  }

  else
  {
    v15 = v0[6];
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
    v16 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state;
    v0[17] = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state;
    if (*(v15 + v16) == 0x8000000000000000)
    {
      v17 = v0[6];
      v18 = v17[25];
      v19 = v17[26];
      __swift_project_boxed_opaque_existential_1(v17 + 22, v18);
      __swift_project_boxed_opaque_existential_1(v17 + 2, v17[5]);
      v20 = sub_2660DB3E0();
      v0[18] = v20;
      v21 = swift_task_alloc();
      v0[19] = v21;
      *v21 = v0;
      v21[1] = sub_2660D7FAC;

      return MEMORY[0x2821C8A68](v20, v18, v19);
    }

    else
    {
      sub_26618B360();
      v22 = OUTLINED_FUNCTION_1_6();
      v23(v22);

      OUTLINED_FUNCTION_5_3();

      return v24();
    }
  }
}

uint64_t sub_2660D7FAC(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v5 + 160) = v1;

  if (v1)
  {
    v8 = sub_2660D836C;
  }

  else
  {

    *(v5 + 168) = a1;
    v8 = sub_2660D80D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2660D80D0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((*(v0 + 48) + 16), *(*(v0 + 48) + 40));
  sub_26618B770();
  sub_2660DB448();
  v5 = v4;
  v7 = v6;

  *(v0 + 176) = v5;
  *(v0 + 192) = v7;
  (*(v2 + 8))(v1, v3);
  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_2660D81F0;

  return sub_2660D9540();
}

uint64_t sub_2660D81F0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2660D82D4()
{
  sub_2660DB184(*(v0 + 176), *(v0 + 192));
  v1 = OUTLINED_FUNCTION_1_6();
  v2(v1);

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_2660D836C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[6];

  v4 = *(v3 + v2);
  *(v3 + v2) = 0x8000000000000020;
  sub_2660DA3E0(v4);
  sub_26618B360();

  v5 = OUTLINED_FUNCTION_1_6();
  v6(v5);

  OUTLINED_FUNCTION_5_3();

  return v7();
}

uint64_t sub_2660D842C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v69 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C120, &qword_26618FD08);
  OUTLINED_FUNCTION_3_5();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v62 - v18);
  v20 = *(v13 + 16);
  v20(&v62 - v18, a1, v11);
  v21 = OUTLINED_FUNCTION_3_3();
  v23 = v22(v21);
  if (v23 == *MEMORY[0x277D5BC38])
  {
    v24 = OUTLINED_FUNCTION_3_3();
    v25(v24);
    v26 = *v19;
    __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
    if (sub_26618B1A0())
    {
      __swift_project_boxed_opaque_existential_1(v2 + 27, v2[30]);
      sub_2661642A0(v26, 1);
    }

    __swift_project_boxed_opaque_existential_1(v2 + 32, v2[35]);
    sub_26618C4E0();
    v27 = sub_26618C5D0();
    sub_2661792EC(0, v27);
    v17 = &qword_28005D000;
    v28 = *(v2 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
    *(v2 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = v26 | 0x4000000000000000;
    goto LABEL_11;
  }

  if (v23 == *MEMORY[0x277D5BC30])
  {
    v29 = OUTLINED_FUNCTION_3_3();
    v30(v29);
    goto LABEL_7;
  }

  if (v23 == *MEMORY[0x277D5BC40])
  {
    v28 = OUTLINED_FUNCTION_6_3();
    v32 = v33 - 8;
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x277D5BC28])
  {
LABEL_7:
    v28 = OUTLINED_FUNCTION_6_3();
LABEL_10:
    *(v2 + v31) = v32;
LABEL_11:
    sub_2660DA3E0(v28);
    v34 = v69;
    goto LABEL_12;
  }

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v44 = __swift_project_value_buffer(v4, qword_2814B4A98);
  (*(v69 + 16))(v68, v44, v4);
  v20(v17, a1, v11);
  v45 = sub_26618C690();
  v46 = sub_26618CAB0();
  if (OUTLINED_FUNCTION_15_1(v46))
  {
    v47 = swift_slowAlloc();
    v66 = v47;
    v67 = swift_slowAlloc();
    v71 = v67;
    *v47 = 136315138;
    sub_2660DB13C(&qword_28005C128, &qword_28005C120, &qword_26618FD08, MEMORY[0x277D5BC48]);
    v65 = v45;
    v63 = sub_26618CFD0();
    v49 = v48;
    v50 = *(v13 + 8);
    v64 = v46;
    v51 = OUTLINED_FUNCTION_14_2();
    v50(v51);
    v52 = v50;
    v53 = sub_266103A98(v63, v49, &v71);

    v55 = v65;
    v54 = v66;
    *(v66 + 1) = v53;
    _os_log_impl(&dword_2660B7000, v55, v64, "ExecutionDeviceResolutionFlow.processDisambigautionResult() received unknown result: %s. Setting flow to .failure state.", v54, 0xCu);
    v17 = v67;
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  else
  {

    v56 = *(v13 + 8);
    v57 = OUTLINED_FUNCTION_14_2();
    v56(v57);
    v52 = v56;
  }

  v58 = v69;
  (*(v69 + 8))(v68, v4);
  v34 = v58;
  v59 = OUTLINED_FUNCTION_6_3();
  *(v2 + v60) = 0x8000000000000020;
  sub_2660DA3E0(v59);
  v61 = OUTLINED_FUNCTION_3_3();
  v52(v61);
LABEL_12:
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v4, qword_2814B4A80);
  (*(v34 + 16))(v9, v35, v4);

  v36 = sub_26618C690();
  v37 = sub_26618CAA0();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v71 = v39;
    *v38 = 136315138;
    v70 = *(v2 + v17[42]);
    sub_2660DAF7C(v70);
    v40 = sub_26618C8D0();
    v42 = sub_266103A98(v40, v41, &v71);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_2660B7000, v36, v37, "ExecutionDeviceResolutionFlow.processDisambigautionResult() state after processDisambigautionResult: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  return (*(v34 + 8))(v9, v4);
}

uint64_t sub_2660D8A50(uint64_t a1, int a2)
{
  v73 = a2;
  v79 = sub_26618C6B0();
  v82 = *(v79 - 8);
  v4 = MEMORY[0x28223BE20](v79);
  v78 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v74 = &v71 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0A0, &unk_266191AC0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v71 - v11;
  v12 = sub_26618B750();
  v77 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v76 = (&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C110, &qword_26618FD00);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v71 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v80 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state;
  v81 = v2;
  v23 = *(v2 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
  if (v23 >> 62)
  {
    result = sub_26618CE80();
    __break(1u);
    return result;
  }

  v24 = *(v15 + 16);
  v72 = a1;
  v24(&v71 - v21, a1, v14);
  v25 = (*(v15 + 88))(v22, v14);
  v26 = *MEMORY[0x277D5BC38];
  v83 = v23;
  if (v25 == v26)
  {
    (*(v15 + 96))(v22, v14);
    v28 = v76;
    v27 = v77;
    v29 = v12;
    (*(v77 + 32))(v76, v22, v12);
    v30 = v23;
    v31 = v75;
    sub_26618B710();
    v32 = sub_26618B540();
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
    {
      (*(v27 + 8))(v28, v12);
      v33 = v78;
      v34 = v79;
      v36 = v80;
      v35 = v81;
LABEL_5:
      v37 = *(v35 + v36);
      *(v35 + v36) = 0x8000000000000020;
      v38 = v82;
LABEL_24:
      sub_2660DA3E0(v37);
      sub_2660BF79C(v31, &qword_28005C0A0, &unk_266191AC0);
      goto LABEL_25;
    }

    sub_2660BF73C(v31, v10, &qword_28005C0A0, &unk_266191AC0);
    v42 = *(v32 - 8);
    v43 = (*(v42 + 88))(v10, v32);
    v33 = v78;
    v34 = v79;
    v36 = v80;
    if (v43 == *MEMORY[0x277D5BED8])
    {
      v35 = v81;
      __swift_project_boxed_opaque_existential_1(v81 + 7, v81[10]);
      if (sub_26618B1A0())
      {
        sub_2660C5864((v35 + 27), v84);
        __swift_project_boxed_opaque_existential_1(v84, v84[3]);
        if (v73)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        sub_2661642A0(v30, v44);
        __swift_destroy_boxed_opaque_existential_1(v84);
      }

      __swift_project_boxed_opaque_existential_1(v35 + 32, v35[35]);
      sub_26618C4E0();
      v45 = sub_26618C5D0();
      sub_2661792EC(1, v45);
      (*(v77 + 8))(v76, v29);
      v37 = *(v35 + v36);
      *(v35 + v36) = v83 | 0x4000000000000000;
      v46 = v30;
    }

    else
    {
      if (v43 != *MEMORY[0x277D5BED0])
      {
        (*(v77 + 8))(v76, v29);
        (*(v42 + 8))(v10, v32);
        v35 = v81;
        goto LABEL_5;
      }

      v35 = v81;
      __swift_project_boxed_opaque_existential_1(v81 + 7, v81[10]);
      if (sub_26618B1A0() & 1) != 0 && (v73)
      {
        __swift_project_boxed_opaque_existential_1(v35 + 27, v35[30]);
        sub_2661642A0(v30, 4);
        __swift_project_boxed_opaque_existential_1(v35 + 32, v35[35]);
        sub_26618C4E0();
        v47 = sub_26618C5D0();
        sub_2661792EC(3, v47);
      }

      (*(v77 + 8))(v76, v29);
      v37 = *(v35 + v36);
      *(v35 + v36) = 0x8000000000000018;
    }

    v38 = v82;
    v31 = v75;
    goto LABEL_24;
  }

  if (v25 == *MEMORY[0x277D5BC30])
  {
    v39 = *(v15 + 8);
    v40 = v23;
    v39(v22, v14);
    v34 = v79;
    v38 = v82;
  }

  else
  {
    v38 = v82;
    if (v25 == *MEMORY[0x277D5BC40])
    {
      v36 = v80;
      v35 = v81;
      *(v81 + v80) = 0x8000000000000018;
      v33 = v78;
      v34 = v79;
      goto LABEL_25;
    }

    if (v25 != *MEMORY[0x277D5BC28])
    {
      *(v81 + v80) = 0x8000000000000020;
      if (qword_2814B2C40 != -1)
      {
        swift_once();
      }

      v34 = v79;
      v58 = __swift_project_value_buffer(v79, qword_2814B4A98);
      (*(v38 + 16))(v74, v58, v34);
      v24(v20, v72, v14);
      v59 = sub_26618C690();
      LODWORD(v77) = sub_26618CAB0();
      if (os_log_type_enabled(v59, v77))
      {
        v60 = swift_slowAlloc();
        v75 = v60;
        v76 = swift_slowAlloc();
        v84[0] = v76;
        *v60 = 136315138;
        v61 = v71;
        v24(v71, v20, v14);
        v62 = *(v15 + 8);
        v62(v20, v14);
        sub_2660DB13C(&qword_28005C118, &qword_28005C110, &qword_26618FD00, MEMORY[0x277D5BC48]);
        v63 = sub_26618CFD0();
        v65 = v64;
        v62(v61, v14);
        v66 = sub_266103A98(v63, v65, v84);

        v67 = v75;
        *(v75 + 4) = v66;
        v68 = v67;
        _os_log_impl(&dword_2660B7000, v59, v77, "ExecutionDeviceResolutionFlow.processConfirmationResult() received unknown result: %s. Setting flow to .failure state.", v67, 0xCu);
        v69 = v76;
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x26677CC30](v69, -1, -1);
        MEMORY[0x26677CC30](v68, -1, -1);

        v70 = v82;
      }

      else
      {
        v62 = *(v15 + 8);
        v62(v20, v14);

        v70 = v38;
      }

      (*(v70 + 8))(v74, v34);
      v62(v22, v14);
      v35 = v81;
      v38 = v82;
      v33 = v78;
      v36 = v80;
      goto LABEL_25;
    }

    v57 = v23;
    v34 = v79;
  }

  v36 = v80;
  v35 = v81;
  v41 = *(v81 + v80);
  *(v81 + v80) = 0x8000000000000020;
  sub_2660DA3E0(v41);
  v33 = v78;
LABEL_25:
  if (qword_2814B2C38 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v34, qword_2814B4A80);
  (*(v38 + 16))(v33, v48, v34);

  v49 = sub_26618C690();
  v50 = sub_26618CAA0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v84[0] = v52;
    *v51 = 136315138;
    v85 = *(v35 + v36);
    sub_2660DAF7C(v85);
    v53 = sub_26618C8D0();
    v55 = sub_266103A98(v53, v54, v84);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_2660B7000, v49, v50, "ExecutionDeviceResolutionFlow.processConfirmationResult() state after processConfirmationResult: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x26677CC30](v52, -1, -1);
    MEMORY[0x26677CC30](v51, -1, -1);

    sub_2660DA3E0(v83);
  }

  else
  {
    sub_2660DA3E0(v83);
  }

  return (*(v38 + 8))(v33, v34);
}

uint64_t sub_2660D9540()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 368) = v2;
  *(v1 + 376) = v0;
  *(v1 + 416) = v3;
  *(v1 + 360) = v4;
  v5 = sub_26618C6B0();
  *(v1 + 384) = v5;
  OUTLINED_FUNCTION_0_4(v5);
  *(v1 + 392) = v6;
  *(v1 + 400) = swift_task_alloc();
  *(v1 + 408) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660D9600()
{
  switch(*(v0 + 416) >> 6)
  {
    case 1:
      v36 = *(v0 + 368);
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      __swift_project_value_buffer(*(v0 + 384), qword_2814B4A98);
      v37 = OUTLINED_FUNCTION_8_3();
      v38(v37);
      v39 = sub_26618C690();
      v40 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_15_1(v40))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v41, v42, "ExecutionDeviceResolutionFlow.handleProcessDevicesResult() Prompting for confirmation first.");
        OUTLINED_FUNCTION_7_2();
      }

      v43 = *(v0 + 392);
      v44 = *(v0 + 400);
      v45 = *(v0 + 376);
      v46 = *(v0 + 384);
      v47 = *(v0 + 368);
      v48 = *(v0 + 416);

      (*(v43 + 8))(v44, v46);
      sub_2660C5864(v45 + 56, v0 + 16);
      sub_2660C5864(v45 + 96, v0 + 56);
      sub_26618B470();
      swift_allocObject();
      v49 = sub_26618B460();
      v50 = *(v0 + 80);
      v51 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v50);
      OUTLINED_FUNCTION_3_5();
      v53 = v52;
      v54 = OUTLINED_FUNCTION_8_2();
      (*(v53 + 16))(v54, v51, v50);
      sub_2660DAD70((v0 + 16), *v54, v49);
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));

      sub_2660C5864(v45 + 136, v0 + 96);
      *(v0 + 336) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0E0, &qword_26618FCE8);
      swift_allocObject();
      sub_2660DAEC4(v47, v48);
      type metadata accessor for DeviceConfirmationStrategy();
      sub_2660DB1C4(&qword_28005C0E8, type metadata accessor for DeviceConfirmationStrategy, &unk_26618F8C0);

      v55 = sub_26618ADF0();
      v56 = *(v45 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
      *(v45 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = v47;
      sub_2660DAEC4(v47, v48);
      sub_2660DA3E0(v56);
      *(v0 + 344) = v55;
      v57 = swift_allocObject();
      *(v57 + 16) = v45;
      *(v57 + 24) = v48 & 1;
      sub_2660DB13C(&qword_28005C0F0, &qword_28005C0E0, &qword_26618FCE8, MEMORY[0x277D5B670]);

      sub_26618B320();

      goto LABEL_15;
    case 2:
      v31 = *(v0 + 368);
      v30 = *(v0 + 376);
      v32 = *(v30 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
      *(v30 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = v31 | 0x4000000000000000;
      v33 = v31;
      v34 = v32;
      goto LABEL_9;
    case 3:
      v35 = *(v0 + 376);
      v34 = *(v35 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
      *(v35 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = 0x8000000000000010;
LABEL_9:
      sub_2660DA3E0(v34);
      sub_26618B360();
      break;
    default:
      v1 = qword_2814B2C40;

      if (v1 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      v2 = *(v0 + 408);
      v3 = *(v0 + 384);
      v4 = *(v0 + 392);
      v5 = __swift_project_value_buffer(v3, qword_2814B4A98);
      (*(v4 + 16))(v2, v5, v3);
      v6 = sub_26618C690();
      v7 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_15_1(v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_2660B7000, v6, v7, "ExecutionDeviceResolutionFlow.handleProcessDevicesResult() found multiple potential devices. Requesting device dismbiguation", v8, 2u);
        OUTLINED_FUNCTION_7_2();
      }

      v9 = *(v0 + 408);
      v11 = *(v0 + 384);
      v10 = *(v0 + 392);
      v12 = *(v0 + 376);

      (*(v10 + 8))(v9, v11);
      sub_2660C5864(v12 + 56, v0 + 136);
      sub_2660C5864(v12 + 96, v0 + 176);
      sub_2660C5864(v12 + 256, v0 + 216);
      sub_2660C5864(v12 + 296, v0 + 256);
      v13 = *(v0 + 200);
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v13);
      OUTLINED_FUNCTION_3_5();
      v16 = v15;
      v17 = OUTLINED_FUNCTION_8_2();
      (*(v16 + 16))(v17, v14, v13);
      v18 = *(v0 + 240);
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v18);
      OUTLINED_FUNCTION_3_5();
      v21 = v20;
      v22 = OUTLINED_FUNCTION_8_2();
      (*(v21 + 16))(v22, v19, v18);
      v23 = *(v0 + 280);
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v23);
      OUTLINED_FUNCTION_3_5();
      v26 = v25;
      v27 = OUTLINED_FUNCTION_8_2();
      (*(v26 + 16))(v27, v24, v23);
      sub_2660DAA44((v0 + 136), *v17, *v22, v27);
      __swift_destroy_boxed_opaque_existential_1((v0 + 256));

      __swift_destroy_boxed_opaque_existential_1((v0 + 216));

      __swift_destroy_boxed_opaque_existential_1((v0 + 176));

      sub_2660C5864(v12 + 136, v0 + 296);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C0F8, &unk_26618FCF0);
      swift_allocObject();
      type metadata accessor for DeviceDisambiguationStrategy();
      sub_2660DB1C4(&qword_28005C100, type metadata accessor for DeviceDisambiguationStrategy, &unk_26618FA40);

      v28 = sub_26618AE40();
      v29 = *(v12 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state);
      *(v12 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = 0x8000000000000008;
      sub_2660DA3E0(v29);
      *(v0 + 352) = v28;
      sub_2660DB13C(&qword_28005C108, &qword_28005C0F8, &unk_26618FCF0, MEMORY[0x277D5B6B0]);

      sub_26618B320();

LABEL_15:

      break;
  }

  OUTLINED_FUNCTION_5_3();

  return v58();
}

void *sub_2660D9DF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  sub_2660BF79C(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_input, &qword_28005C060, &qword_26618FD10);
  sub_2660DA3E0(*(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state));
  return v0;
}

uint64_t sub_2660D9E7C()
{
  sub_2660D9DF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ExecutionDeviceResolutionFlow(uint64_t a1)
{
  result = qword_28005C0C8;
  if (!qword_28005C0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660D9F28(uint64_t a1)
{
  sub_2660CF61C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t get_enum_tag_for_layout_string_20SiriAppLaunchIntents29ExecutionDeviceResolutionFlowC5StateO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_2660DA000(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
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

uint64_t sub_2660DA054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_2660DA0B4(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_2660DA114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2660DA1C4;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2660DA1C4()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2660DA2D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D2E00;

  return sub_2660D7B34();
}

uint64_t sub_2660DA370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2660D790C();
  *a1 = result;
  return result;
}

unint64_t sub_2660DA39C()
{
  result = qword_28005C0D8;
  if (!qword_28005C0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C0D8);
  }

  return result;
}

void sub_2660DA3E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t sub_2660DA3FC(uint64_t result, uint64_t a2)
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

    v20 = sub_266129F20(v15, v16);
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
      v25 = sub_26618D000();

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

uint64_t sub_2660DA59C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for BaseDialogProvider();
  v49[3] = v10;
  v49[4] = &off_2877CAA90;
  v49[0] = a2;
  v11 = type metadata accessor for CoreAnalyticsService();
  v47 = v11;
  v48 = &off_2877CD310;
  v46[0] = a3;
  v44 = &type metadata for AppLaunchFeatureFlagsImpl;
  v45 = &off_2877CD168;
  v42[3] = sub_26618B470();
  v42[4] = MEMORY[0x277D5BD58];
  v42[0] = a4;
  v40 = &type metadata for ReferenceResolver;
  v41 = &off_2877CC6F0;
  v12 = swift_allocObject();
  v39[0] = v12;
  v13 = *(a5 + 16);
  *(v12 + 16) = *a5;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a5 + 32);
  type metadata accessor for DeviceDisambiguationStrategy();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v49, v10);
  MEMORY[0x28223BE20](v15);
  v17 = (v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  MEMORY[0x28223BE20](v19);
  v21 = (v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x28223BE20](v23);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = *v17;
  v28 = *v21;
  v38[3] = v10;
  v38[4] = &off_2877CAA90;
  v38[0] = v27;
  v37[3] = v11;
  v37[4] = &off_2877CD310;
  v37[0] = v28;
  v36[3] = &type metadata for AppLaunchFeatureFlagsImpl;
  v36[4] = &off_2877CD168;
  *(v14 + 344) = &type metadata for ReferenceResolver;
  *(v14 + 352) = &off_2877CC6F0;
  v29 = swift_allocObject();
  *(v14 + 320) = v29;
  v30 = *(v25 + 1);
  *(v29 + 16) = *v25;
  *(v29 + 32) = v30;
  *(v29 + 48) = *(v25 + 4);
  sub_2660C5864(a1, v14 + 16);
  sub_2660C5864(a1, v35);
  type metadata accessor for LocUtil();
  v31 = swift_allocObject();
  sub_2660B9EB8(v35, v31 + 16);
  *(v14 + 56) = v31;
  sub_2660C5864(v38, v14 + 64);
  sub_2660C5864(v37, v14 + 104);
  sub_2660C5864(v36, v14 + 144);
  sub_2660C5864(v42, v14 + 184);
  sub_2660C5864(v14 + 16, v14 + 224);
  sub_2660C5864(v14 + 184, v14 + 264);
  v32 = sub_26618C8A0();
  LODWORD(a4) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  *(v14 + 312) = a4 == 1;
  sub_2660C5864(v14 + 224, v35);
  v33 = swift_allocObject();
  sub_2660B9EB8(v35, v33 + 16);
  *(v14 + 304) = v33;
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v14;
}

uint64_t sub_2660DAA44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[3] = type metadata accessor for BaseDialogProvider();
  v32[4] = &off_2877CAA90;
  v32[0] = a2;
  v31[3] = type metadata accessor for CoreAnalyticsService();
  v31[4] = &off_2877CD310;
  v31[0] = a3;
  v30[3] = &type metadata for ReferenceResolver;
  v30[4] = &off_2877CC6F0;
  v8 = swift_allocObject();
  v30[0] = v8;
  v9 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a4 + 32);
  sub_2660C5864(a1, v29);
  sub_2660C5864(v32, v28);
  sub_2660C5864(v31, v27);
  sub_26618B470();
  swift_allocObject();
  v10 = sub_26618B460();
  sub_2660C5864(v30, v26);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v28, v28[3]);
  MEMORY[0x28223BE20](v11);
  v13 = (&v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v27, v27[3]);
  MEMORY[0x28223BE20](v15);
  v17 = (&v26[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
  MEMORY[0x28223BE20](v19);
  v21 = &v26[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_2660DA59C(v29, *v13, *v17, v10, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v23;
}

uint64_t sub_2660DAD70(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = type metadata accessor for BaseDialogProvider();
  v18 = &off_2877CAA90;
  v16[0] = a2;
  v14 = &type metadata for AppLaunchFeatureFlagsImpl;
  v15 = &off_2877CD168;
  type metadata accessor for DeviceConfirmationStrategy();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  MEMORY[0x28223BE20](v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v11 = sub_2660DAF98(a1, *v9, a3, v6);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v11;
}

id sub_2660DAEC4(id a1, unsigned __int8 a2)
{
  switch(a2 >> 6)
  {
    case 1:
    case 2:
      result = a1;
      break;
    case 3:
      result = sub_2660DAEF4(a1);
      break;
    default:

      break;
  }

  return result;
}

unint64_t sub_2660DAEF4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2660DAF7C(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

uint64_t sub_2660DAF98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = sub_26618B470();
  v19[4] = MEMORY[0x277D5BD58];
  v19[0] = a3;
  v18[3] = type metadata accessor for BaseDialogProvider();
  v18[4] = &off_2877CAA90;
  v18[0] = a2;
  v16 = &type metadata for AppLaunchFeatureFlagsImpl;
  v17 = &off_2877CD168;
  sub_2660C5864(a1, a4 + 16);
  sub_2660C5864(a1, __src);
  type metadata accessor for LocUtil();
  v8 = swift_allocObject();
  sub_2660B9EB8(__src, v8 + 16);
  *(a4 + 56) = v8;
  sub_2660C5864(v19, a4 + 64);
  sub_2660C5864(v18, a4 + 200);
  sub_2660C5864(a4 + 16, __src);
  sub_2660C5864(a4 + 64, &__src[2] + 8);
  v9 = sub_26618C8A0();
  v10 = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v18);
  BYTE8(__src[5]) = v10 == 1;
  sub_2660C5864(__src, v13);
  v11 = swift_allocObject();
  sub_2660B9EB8(v13, v11 + 16);
  *&__src[5] = v11;
  memcpy((a4 + 104), __src, 0x59uLL);
  sub_2660B9EB8(&v15, a4 + 240);
  return a4;
}

uint64_t sub_2660DB13C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_2660DB184(id a1, unsigned __int8 a2)
{
  switch(a2 >> 6)
  {
    case 1:
    case 2:

      break;
    case 3:
      sub_2660DB1B4(a1);
      break;
    default:

      break;
  }
}

unint64_t sub_2660DB1B4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_2660DB1C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2660DB20C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2660DB268(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2660DB2C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2660DB31C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2660DB3E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26618F7E0;
  sub_26618C5A0();
  *(v0 + 32) = sub_26618C590();
  return v0;
}

void sub_2660DB448()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v71 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v68 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v68 - v15;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v17 = __swift_project_value_buffer(v6, qword_2814B4A98);
  v18 = *(v8 + 16);
  v72 = v17;
  v73 = v18;
  (v18)(v16);

  v19 = sub_26618C690();
  v20 = sub_26618CAA0();
  if (os_log_type_enabled(v19, v20))
  {
    v69 = v14;
    v75 = v8;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v78[0] = v22;
    *v21 = 134218242;
    v74 = v6;
    v70 = v1;
    v68[1] = v5;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v23 = sub_26618CCD0();
    }

    else
    {
      v23 = *(v3 + 16);
    }

    *(v21 + 4) = v23;

    *(v21 + 12) = 2080;

    v26 = sub_2660DCE7C(v25);

    sub_26610027C(v26);
    v28 = v27;
    v30 = v29;

    v31 = sub_266103A98(v28, v30, v78);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_2660B7000, v19, v20, "LaunchAppDeviceResolutionStrategy.processDevices() Found %ld appLaunch capable remote devices: %s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v6 = v74;
    v8 = v75;
    v32 = OUTLINED_FUNCTION_11_1();
    v20(v32);
    v1 = v70;
    v14 = v69;
  }

  else
  {

    v24 = OUTLINED_FUNCTION_11_1();
    v20(v24);
  }

  sub_2660DBF04();
  v33 = sub_266136B94(v78, v3);
  if (v34)
  {
    sub_2660DD77C(v78);
  }

  else if (sub_2661046B8() < 2)
  {
    if (sub_2661046B8())
    {
      sub_2661046C8();
      if ((v33 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26677C150](0, v33);
      }

      else
      {
        v52 = *(v33 + 32);
      }

      sub_2660DBAF8();
      sub_2660DD77C(v78);
      OUTLINED_FUNCTION_7_5();
    }

    else
    {
      sub_2660DD77C(v78);
      OUTLINED_FUNCTION_7_5();
    }
  }

  else
  {

    sub_2660DD77C(v78);
    sub_2660DC6A0();
    if (v35)
    {
      v37 = v35;
      v38 = v36;
      OUTLINED_FUNCTION_7_5();
      if (v38)
      {
        v73(v14, v72, v6);
        v39 = v37;
        v40 = v14;
        v41 = sub_26618C690();
        v42 = sub_26618CAA0();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v75 = v8;
          v44 = v43;
          v45 = swift_slowAlloc();
          v74 = v6;
          v46 = v45;
          v76[0] = v45;
          *v44 = 136315138;
          v47 = sub_26618C4A0();
          v49 = sub_266103A98(v47, v48, v76);

          *(v44 + 4) = v49;
          _os_log_impl(&dword_2660B7000, v41, v42, "LaunchAppDeviceResolutionStrategy.processDevices() Confirmation is required for auto-selection of device %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v46);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();

          OUTLINED_FUNCTION_7_5();
          v50 = v74;
          v51 = v40;
        }

        else
        {

          OUTLINED_FUNCTION_7_5();
          v51 = v40;
          v50 = v6;
        }

        (v20)(v51, v50);
      }

      else
      {
        v75 = v8;
        v53 = v71;
        v73(v71, v72, v6);
        v54 = v37;
        v55 = sub_26618C690();
        v56 = sub_26618CAA0();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v70 = v1;
          v58 = v57;
          v59 = swift_slowAlloc();
          v74 = v6;
          v60 = v59;
          v76[0] = v59;
          *v58 = 136315138;
          v61 = sub_26618C4A0();
          v63 = v54;
          v64 = sub_266103A98(v61, v62, v76);

          *(v58 + 4) = v64;
          v54 = v63;
          _os_log_impl(&dword_2660B7000, v55, v56, "LaunchAppDeviceResolutionStrategy.processDevices() Auto-selecting device: %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v60);
          OUTLINED_FUNCTION_7_2();
          v1 = v70;
          OUTLINED_FUNCTION_7_2();

          v65 = v74;
          v66 = v71;
        }

        else
        {

          v66 = v53;
          v65 = v6;
        }

        (v20)(v66, v65);
        sub_2660C5864(v1 + 96, v76);
        __swift_project_boxed_opaque_existential_1(v76, v77);
        sub_26618C4E0();
        v67 = sub_26618C5D0();
        sub_2661792EC(2, v67);
        __swift_destroy_boxed_opaque_existential_1(v76);
        sub_2660C5864(v1 + 56, v76);
        __swift_project_boxed_opaque_existential_1(v76, v77);
        sub_2661642A0(v54, 3);
        OUTLINED_FUNCTION_7_5();
        __swift_destroy_boxed_opaque_existential_1(v76);
      }
    }

    else
    {
      sub_266142B58(v33);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660DBAF8()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;

  sub_2661569E0(v5);

  v6 = v3[7];
  if (v6[2] != 1 || ((v7 = v6[5], v49 = v6[4], v50 = v7, , v8 = sub_26618C4C0(), v9) ? (v10 = v8) : (v10 = 0), v9 ? (v11 = v9) : (v11 = 0xE000000000000000), v47 = v10, v48 = v11, v12 = sub_2660CCD6C(), v14 = OUTLINED_FUNCTION_16_2(v12, MEMORY[0x277D837D0], v13, v12), , , v14))
  {
    v15 = v3[4];
    if (v15)
    {
      v49 = v3[3];
      v50 = v15;

      v16 = sub_26618C4C0();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v47 = v18;
      v48 = v19;
      v20 = sub_2660CCD6C();
      OUTLINED_FUNCTION_16_2(v20, MEMORY[0x277D837D0], v21, v20);
    }
  }

  sub_26618C4E0();
  v22 = sub_26618C5D0();
  if (v22 != sub_26618C5D0() && !v3[6])
  {
    if ((v24 = v1[5], v23 = v1[6], __swift_project_boxed_opaque_existential_1(v1 + 2, v24), OUTLINED_FUNCTION_3_5(), v26 = v25, MEMORY[0x28223BE20](v27), OUTLINED_FUNCTION_1_4(), v30 = v29 - v28, (*(v26 + 16))(v29 - v28), LOBYTE(v23) = sub_2660C80B8(v24, v23), (*(v26 + 8))(v30, v24), (v23 & 1) == 0) && (v31 = v1[5], __swift_project_boxed_opaque_existential_1(v1 + 2, v31), v46[1] = v46, OUTLINED_FUNCTION_3_5(), v33 = v32, MEMORY[0x28223BE20](v34), OUTLINED_FUNCTION_1_4(), v37 = v36 - v35, (*(v33 + 16))(v36 - v35), v38 = sub_26618B170(), (*(v33 + 8))(v37, v31), (v38 & 1) == 0) || (sub_26618C4E0(), v37 = sub_26618C5D0(), v37 != sub_26618C5D0()))
    {
      if (!v3[4] || (sub_26618C4E0(), v37 = sub_26618C5D0(), sub_26618C5D0() >= v37))
      {
        v39 = v1[5];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v39);
        OUTLINED_FUNCTION_3_5();
        v41 = v40;
        MEMORY[0x28223BE20](v42);
        OUTLINED_FUNCTION_1_4();
        v44 = OUTLINED_FUNCTION_5_4(v43);
        v45(v44);
        sub_26618B1A0();
        (*(v41 + 8))(v37, v39);
      }
    }
  }

  OUTLINED_FUNCTION_7_1();
}

void sub_2660DBF04()
{
  OUTLINED_FUNCTION_6_0();
  v65 = v0;
  v67 = v1;
  sub_26618C6B0();
  OUTLINED_FUNCTION_3_5();
  v57 = v3;
  v58 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  v59 = v5 - v4;
  v63 = type metadata accessor for AppLaunchIntent(0);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1_4();
  v8 = v7 - v6;
  v9 = sub_26618C0E0();
  OUTLINED_FUNCTION_3_5();
  v61 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  v15 = sub_26618B800();
  OUTLINED_FUNCTION_3_5();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26618F7E0;
  sub_26618C5A0();
  v23 = 1;
  *(v22 + 32) = sub_26618C590();
  v87[0] = 0;
  v87[1] = 0;
  LOBYTE(v88) = 1;
  v89 = 0u;
  v90 = 0u;
  v91 = MEMORY[0x277D84F90];
  v92 = 0;
  v93 = 0;
  v94 = v22;
  v85 = 0u;
  v86 = v88;
  v83 = 0u;
  v84 = v22;
  (*(v17 + 16))(v21, v65, v15);
  v24 = OUTLINED_FUNCTION_12_2();
  if (v25(v24) == *MEMORY[0x277D5C128])
  {
    v26 = OUTLINED_FUNCTION_12_2();
    v27(v26);
    (*(v61 + 32))(v14, v21, v9);
    (*(v61 + 16))(v8, v14, v9);
    v28 = v9;
    v29 = v8;
    v30 = v14;
    if (qword_2814B3D38 != -1)
    {
      swift_once();
    }

    sub_2660C98B4();
    sub_26618BDA0();
    v31 = v71;
    if (v71)
    {
      v32 = v70;
      v33 = HIBYTE(v71) & 0xF;
      if ((v71 & 0x2000000000000000) == 0)
      {
        v33 = v70 & 0xFFFFFFFFFFFFLL;
      }

      if (!v33)
      {

        v32 = 0;
        v31 = 0;
      }
    }

    else
    {
      v32 = 0;
    }

    if (qword_2814B3DB8 != -1)
    {
      swift_once();
    }

    sub_26618BDA0();
    v9 = v71;
    if (v71)
    {
      v34 = v70;
      sub_2660DD7D0(v29);
      (*(v61 + 8))(v30, v28);
      v44 = MEMORY[0x277D84F90];
      v45 = HIBYTE(v71) & 0xF;
      if ((v71 & 0x2000000000000000) == 0)
      {
        v45 = v70 & 0xFFFFFFFFFFFFLL;
      }

      if (!v45)
      {

        v34 = 0;
        v9 = 0;
      }
    }

    else
    {
      if (qword_2814B3DD0 != -1)
      {
        swift_once();
      }

      sub_26618BDA0();
      sub_2660DD7D0(v8);
      (*(v61 + 8))(v30, v28);
      v9 = v71;
      v34 = 0;
      v44 = MEMORY[0x277D84F90];
    }

    OUTLINED_FUNCTION_4_7();
    v72 = v50;
    *&v73 = v34;
    *(&v73 + 1) = v9;
    v74 = v32;
    v75 = v31;
    v76 = v44;
    *(v51 + 64) = *(v51 + 128);
    v22 = v84;
    v79 = v84;
    v64 = v78;
    v66 = v77;
    v43 = v50 & 1;
    v60 = v71;
    v62 = v70;
    sub_2660DD6B8(&v70, &v68);
    v41 = v34;
    v42 = v9;
  }

  else
  {
    sub_2660DD6B8(v87, &v70);
    sub_2660C87C0();
    if (v69)
    {
      sub_2660DD77C(v87);
      sub_2660B9EB8(&v68, v80);
      v34 = v81;
      v35 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      if ((*(v35 + 8))(v34, v35))
      {
        sub_26614313C();
        OUTLINED_FUNCTION_10_4();
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
      }

      OUTLINED_FUNCTION_4_7();
      v72 = v46;
      v73 = 0u;
      *(v47 + 40) = 0u;
      v47[4] = v47[8];
      v76 = v23;
      v79 = v84;
      sub_2660DD6B8(&v70, &v68);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v48 = OUTLINED_FUNCTION_12_2();
      v49(v48);
      OUTLINED_FUNCTION_9_3();
      v22 = v79;
      v64 = v78;
      v66 = v77;
      v31 = v75;
      v44 = v76;
      v42 = *(&v73 + 1);
      v32 = v74;
      v41 = v73;
      v62 = v70;
      v60 = v71;
      v43 = v72;
    }

    else
    {
      sub_2660DD714(&v68);
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      v36 = __swift_project_value_buffer(v58, qword_2814B4A98);
      (*(v57 + 16))(v59, v36, v58);
      v37 = sub_26618C690();
      v34 = sub_26618CAB0();
      if (os_log_type_enabled(v37, v34))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2660B7000, v37, v34, "LaunchAppDeviceResolutionStrategy.remoteDevicesFilter() Unable to create AppLaunchIntent from parse, ignoring input", v38, 2u);
        OUTLINED_FUNCTION_7_2();
      }

      v9 = v57 + 8;
      (*(v57 + 8))(v59, v58);
      v39 = OUTLINED_FUNCTION_12_2();
      v40(v39);
      OUTLINED_FUNCTION_9_3();
      v60 = 0;
      v62 = 0;
      v41 = 0;
      v42 = 0;
      v32 = 0;
      v31 = 0;
      v64 = 0;
      v66 = 0;
      v43 = 1;
      v44 = MEMORY[0x277D84F90];
    }
  }

  LOBYTE(v68) = v43;
  OUTLINED_FUNCTION_4_7();
  v72 = v52;
  *&v73 = v34;
  *(&v73 + 1) = v9;
  v74 = v53;
  v75 = v55;
  v76 = v54;
  *(v56 + 64) = *(v56 + 128);
  v79 = v84;
  sub_2660DD77C(&v70);
  *v67 = v62;
  *(v67 + 8) = v60;
  *(v67 + 16) = v68;
  *(v67 + 24) = v41;
  *(v67 + 32) = v42;
  *(v67 + 40) = v32;
  *(v67 + 48) = v31;
  *(v67 + 56) = v44;
  *(v67 + 64) = v66;
  *(v67 + 72) = v64;
  *(v67 + 80) = v22;
  OUTLINED_FUNCTION_7_1();
}

void sub_2660DC6A0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v72 = v2;
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  OUTLINED_FUNCTION_3_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8);
  v11 = sub_2660C80B8(v3, v4);
  (*(v6 + 8))(v10, v3);
  if ((v11 & 1) == 0)
  {
    v12 = *(v1 + 40);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v12);
    OUTLINED_FUNCTION_3_5();
    v14 = v13;
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_1_4();
    v17 = OUTLINED_FUNCTION_5_4(v16);
    v18(v17);
    v19 = sub_26618B170();
    (*(v14 + 8))(v11, v12);
    if ((v19 & 1) == 0)
    {
      v20 = sub_2661046B8();
      v21 = 0;
      v22 = MEMORY[0x277D84F98];
      while (v20 != v21)
      {
        if ((v72 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x26677C150](v21, v72);
        }

        else
        {
          if (v21 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v23 = *(v72 + 8 * v21 + 32);
        }

        v24 = v23;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          sub_26618C4F0();
          sub_26618D030();
          __break(1u);
          return;
        }

        v25 = sub_2661569E0(v24);
        v27 = v26;
        v29 = v28;

        if (v25)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v70 = sub_26612A058(v24);
          v71 = v30;
          if (__OFADD__(*(v22 + 16), (v30 & 1) == 0))
          {
            goto LABEL_64;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C138, &qword_26618FEE8);
          if (sub_26618CE40())
          {
            v31 = sub_26612A058(v24);
            v33 = v71;
            if ((v71 & 1) != (v32 & 1))
            {
              goto LABEL_66;
            }
          }

          else
          {
            v31 = v70;
            v33 = v71;
          }

          v34 = (v25 & 0x100) >> 8;
          if (v33)
          {
            v35 = *(v22 + 56) + 24 * v31;
            *v35 = 1;
            *(v35 + 1) = v34;
            *(v35 + 8) = v27;
            *(v35 + 16) = v29;
          }

          else
          {
            *(v22 + 8 * (v31 >> 6) + 64) |= 1 << v31;
            *(*(v22 + 48) + 8 * v31) = v24;
            v36 = *(v22 + 56) + 24 * v31;
            *v36 = 1;
            *(v36 + 1) = v34;
            *(v36 + 8) = v27;
            *(v36 + 16) = v29;
            v37 = *(v22 + 16);
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_65;
            }

            *(v22 + 16) = v39;
          }

          ++v21;
        }

        else
        {

          ++v21;
        }
      }

      v40 = *(v22 + 16);
      if (v40 >= 2)
      {
        v74 = MEMORY[0x277D84F90];
        v73 = *(v22 + 16);
        sub_26612A3B8(0, v40, 0);
        v42 = sub_2660DD5FC(v22);
        v44 = v43;
        v45 = v73;
        v46 = 0;
        v47 = v22 + 64;
        v48 = 1;
        v49 = 24;
        v50 = -2;
        if ((v42 & 0x8000000000000000) == 0)
        {
          while (v42 < v48 << *(v22 + 32))
          {
            v51 = v42 >> 6;
            v52 = v48 << v42;
            if ((*(v47 + 8 * (v42 >> 6)) & (v48 << v42)) == 0)
            {
              goto LABEL_59;
            }

            if (*(v22 + 36) != v44)
            {
              goto LABEL_60;
            }

            v53 = *(*(v22 + 56) + v42 * v49 + 8);
            v55 = v74[2];
            v54 = v74[3];
            if (v55 >= v54 >> 1)
            {
              sub_26612A3B8((v54 > 1), v55 + 1, 1);
              OUTLINED_FUNCTION_3_7();
            }

            v74[2] = v55 + 1;
            v74[v55 + 4] = v53;
            v56 = v48 << *(v22 + 32);
            if (v42 >= v56)
            {
              goto LABEL_61;
            }

            v57 = *(v47 + 8 * v51);
            if ((v57 & v52) == 0)
            {
              goto LABEL_62;
            }

            if (*(v22 + 36) != v44)
            {
              goto LABEL_63;
            }

            v58 = v57 & (v50 << (v42 & 0x3F));
            if (v58)
            {
              v56 = __clz(__rbit64(v58)) | v42 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v59 = v51 << 6;
              v60 = v51 + 1;
              v61 = (v22 + 72 + 8 * v51);
              while (v60 < (v56 + 63) >> 6)
              {
                v63 = *v61++;
                v62 = v63;
                v59 += 64;
                ++v60;
                if (v63)
                {
                  sub_2660DD6AC(v42, v44, v41 & 1);
                  OUTLINED_FUNCTION_3_7();
                  v56 = __clz(__rbit64(v62)) + v59;
                  goto LABEL_40;
                }
              }

              sub_2660DD6AC(v42, v44, v41 & 1);
              OUTLINED_FUNCTION_3_7();
            }

LABEL_40:
            if (++v46 == v45)
            {
              v66 = sub_2660DCD08(v74);
              v68 = v67;

              v69 = sub_2660DCFD4(v22, v66, v68 & 1);

              if (v69[2] != 1 || (v64 = sub_266139D64(v69)) == 0)
              {

                goto LABEL_3;
              }

              v65 = sub_266139D64(v69);

              if (!v65)
              {
                goto LABEL_53;
              }

              goto LABEL_46;
            }

            v41 = 0;
            v44 = *(v22 + 36);
            v42 = v56;
            if (v56 < 0)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_58;
      }

      if (v40 == 1 && (v64 = sub_266139D64(v22)) != 0)
      {
        v65 = sub_266139D64(v22);

        if (v65)
        {
LABEL_46:
        }

        else
        {
LABEL_53:
        }
      }

      else
      {
      }
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_2660DCD08(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void *sub_2660DCD4C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return v0;
}

uint64_t sub_2660DCD84()
{
  sub_2660DCD4C();

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_2660DCDDC(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = sub_26618CCD0();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    sub_266140AE8(v3, 0);
    OUTLINED_FUNCTION_10_4();

    v12 = OUTLINED_FUNCTION_13_3(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19);
    sub_266142590(v12, v13, v14, v15);
    v2 = v16;
    sub_2660BA124(v19);
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = *(v2 + 16);
    if (!v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v1;
}

uint64_t sub_2660DCE7C(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = sub_26618CCD0();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    sub_266140AE8(v3, 0);
    OUTLINED_FUNCTION_10_4();

    v12 = OUTLINED_FUNCTION_13_3(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19);
    sub_266142778(v12, v13, v14, v15);
    v2 = v16;
    sub_2660BA124(v19);
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = *(v2 + 16);
    if (!v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v1;
}

void *sub_2660DCF1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = OUTLINED_FUNCTION_10_4();
  v3 = sub_266140BB8(v2, 0);
  sub_266142928();
  v5 = v4;

  sub_2660BA124(v7);
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

unint64_t *sub_2660DCFD4(uint64_t a1, unint64_t *a2, char a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a2 = sub_2660DD258(v12, v8, v6, a2, a3 & 1);
      MEMORY[0x26677CC30](v12, -1, -1);
      return a2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_266140D60(0, v8, v9);
  v10 = sub_2660DD158(v9, v8, v6, a2, a3 & 1);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

unint64_t *sub_2660DD158(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  while (1)
  {
    while (v10)
    {
      v11 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v12 = v11 | (v7 << 6);
      if ((a5 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v13 = v7;
    do
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= ((v8 + 63) >> 6))
      {
        return sub_2660DD2E8(result, a2, v6, a3);
      }

      v14 = *(a3 + 64 + 8 * v7);
      ++v13;
    }

    while (!v14);
    v10 = (v14 - 1) & v14;
    v12 = __clz(__rbit64(v14)) | (v7 << 6);
    if (a5)
    {
      continue;
    }

LABEL_12:
    if (*(*(a3 + 56) + 24 * v12 + 8) == a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
  return sub_2660DD2E8(result, a2, v6, a3);
}

unint64_t *sub_2660DD258(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_2660DD158(v9, a2, a3, a4, a5 & 1);

    return v10;
  }

  return result;
}

uint64_t sub_2660DD2E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C140, &unk_26618FEF0);
  result = sub_26618CEB0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 24 * v16;
    v32 = *(v18 + 1);
    v33 = *v18;
    v30 = *(v18 + 16);
    v31 = *(v18 + 8);
    v19 = v17;
    result = sub_26618CB90();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
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
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v19;
    v28 = *(v9 + 56) + 24 * v23;
    *v28 = v33;
    *(v28 + 1) = v32;
    *(v28 + 8) = v31;
    *(v28 + 16) = v30;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void (*sub_2660DD51C(uint64_t a1, uint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_8_5(a1, a2, a3);
  sub_2661046C8();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x26677C150](v5, v4);
  }

  *v3 = v7;
  return sub_2660DD588;
}

void (*sub_2660DD590(uint64_t a1, uint64_t a2, uint64_t a3))(id *)
{
  OUTLINED_FUNCTION_8_5(a1, a2, a3);
  sub_2661046C8();
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = MEMORY[0x26677C150](v5, v4);
  }

  *v3 = v7;
  return sub_2660DD840;
}

char *sub_2660DD63C(char *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
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
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *(v6 + 1);
    *result = *v6;
    result[1] = v7;
    *(result + 8) = *(v6 + 8);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_2660DD6AC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2660DD714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C148, &unk_26618FF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660DD7D0(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2660DD82C(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_2660DB1B4(result);
  }

  else
  {
  }
}

__n128 OUTLINED_FUNCTION_4_7()
{
  result = v0[10];
  v1[9] = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_7_5()
{

  return sub_2660DD82C(v0, 0);
}

uint64_t OUTLINED_FUNCTION_16_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26618CC20();
}

uint64_t sub_2660DD940()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = OUTLINED_FUNCTION_4_8();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v2);
  sub_26618B810();
  sub_26618B600();
  v3 = type metadata accessor for BaseDialogProvider();
  v4 = swift_allocObject();
  sub_26618B0E0();
  v5 = sub_26618B470();
  swift_allocObject();
  v6 = sub_26618B460();
  sub_26618B040();
  v21[3] = v3;
  v21[4] = &off_2877CAA90;
  v21[0] = v4;
  v19 = &type metadata for AppLaunchFlowFactoryImpl;
  v20 = &off_2877CD5D8;
  v17[3] = v5;
  v17[4] = MEMORY[0x277D5BD58];
  v17[0] = v6;
  type metadata accessor for CloseAppWrapperFlow(0);
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v21, v3);
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_mutable_project_boxed_opaque_existential_1(v18, v19);

  v16[3] = &type metadata for AppLaunchFlowFactoryImpl;
  v16[4] = &off_2877CD5D8;
  v11 = OBJC_IVAR____TtC20SiriAppLaunchIntents19CloseAppWrapperFlow_input;
  __swift_storeEnumTagSinglePayload(v7 + OBJC_IVAR____TtC20SiriAppLaunchIntents19CloseAppWrapperFlow_input, 1, 1, v2);
  swift_beginAccess();
  sub_2660DE7DC(v0, v7 + v11);
  swift_endAccess();
  sub_2660C5864(v25, v7 + 16);
  sub_2660C5864(v24, v7 + 56);
  sub_2660C5864(v16, v7 + 96);
  sub_2660C5864(v23, v7 + 136);
  sub_2660C5864(v17, v7 + 176);
  sub_2660C5864(v7 + 16, v7 + 216);
  sub_2660C5864(v7 + 176, v7 + 256);
  v12 = sub_26618C8A0();
  LODWORD(v11) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_2660CFA98(v0);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v16);
  *(v7 + 304) = v11 == 1;
  sub_2660C5864(v7 + 216, v15);
  type metadata accessor for LocUtil();
  v13 = swift_allocObject();
  sub_2660B9EB8(v15, v13 + 16);
  *(v7 + 296) = v13;
  sub_2660B9EB8(&v22, v7 + 312);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v7;
}

uint64_t sub_2660DDCA8(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = OUTLINED_FUNCTION_4_8();
  (*(*(v5 - 8) + 16))(v2, a1, v5);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
  v6 = OBJC_IVAR____TtC20SiriAppLaunchIntents19CloseAppWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v2, v1 + v6);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660DDD9C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CloseAppWrapperFlow(0);
  sub_2660DE784();
  return sub_26618AFB0();
}

uint64_t sub_2660DDDFC()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_26618C6B0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660DDEF0, 0, 0);
}

uint64_t sub_2660DDEF0()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC20SiriAppLaunchIntents19CloseAppWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v2 + v3, v1);
  v4 = sub_26618B790();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_2660CFA98(v0[10]);
    if (qword_2814B2C40 != -1)
    {
      swift_once();
    }

    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    v8 = __swift_project_value_buffer(v7, qword_2814B4A98);
    (*(v6 + 16))(v5, v8, v7);
    v9 = sub_26618C690();
    v10 = sub_26618CAB0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2660B7000, v9, v10, "CloseAppWrapperFlow.execute Input is nil. Error executing request", v11, 2u);
      MEMORY[0x26677CC30](v11, -1, -1);
    }

    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];

    (*(v13 + 8))(v12, v14);
    return sub_26618CE80();
  }

  else
  {
    sub_2660CFA98(v0[10]);
    sub_2660DE128();

    OUTLINED_FUNCTION_5_3();

    return v16();
  }
}

uint64_t sub_2660DE128()
{
  sub_2660C5864(v0 + 56, v2);
  sub_26618AC90();
  swift_allocObject();

  v2[0] = sub_26618AC80();
  sub_26618B340();
}

uint64_t sub_2660DE1D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2660DE1F4, 0, 0);
}

uint64_t sub_2660DE1F4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 312), *(*(v0 + 24) + 336));
  sub_26618B0D0();
  sub_26618B0B0();
  sub_26618B050();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2660DE32C;

  return sub_266179E74();
}

uint64_t sub_2660DE32C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

void *sub_2660DE40C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_2660D31B4((v0 + 27));
  __swift_destroy_boxed_opaque_existential_1(v0 + 39);
  sub_2660CFA98(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents19CloseAppWrapperFlow_input);
  return v0;
}

uint64_t sub_2660DE46C()
{
  sub_2660DE40C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CloseAppWrapperFlow(uint64_t a1)
{
  result = qword_28005C158;
  if (!qword_28005C158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660DE518(uint64_t a1)
{
  sub_2660CF61C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660DE614()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D2E00;

  return sub_2660DDDFC();
}

uint64_t sub_2660DE6B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CloseAppWrapperFlow(0);

  return sub_26618AFE0();
}

uint64_t sub_2660DE6EC()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2660D2E00;

  return sub_2660DE1D4(v3, v0);
}

unint64_t sub_2660DE784()
{
  result = qword_28005C168;
  if (!qword_28005C168)
  {
    type metadata accessor for CloseAppWrapperFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C168);
  }

  return result;
}

uint64_t sub_2660DE7DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_8()
{

  return sub_26618B790();
}

uint64_t sub_2660DE86C(__int128 *a1, __int128 *a2)
{
  v5 = OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_input;
  v6 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  sub_2660B9EB8(a1, v2 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_aceService);
  sub_2660B9EB8(a2, v2 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_eventSender);
  return v2;
}

uint64_t sub_2660DE8E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_26618B790();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v5, v1 + v7);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660DE9EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HomeScreenFlow(0);
  sub_2660DF848();
  return sub_26618AFB0();
}

uint64_t sub_2660DEA4C()
{
  OUTLINED_FUNCTION_18();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_26618C6B0();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660DEB58, 0, 0);
}

uint64_t sub_2660DEB58()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v2 + v3, v1);
  v4 = sub_26618B790();
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v1, 1, v4);
  sub_2660CFA98(v1);
  if (v2 == 1)
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v5 = v0[11];
    v6 = v0[8];
    v7 = v0[9];
    v8 = __swift_project_value_buffer(v6, qword_2814B4A80);
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_26618C690();
    v10 = sub_26618CAB0();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v11, v12, "HomeScreenFlow.execute() Missing intput");
      OUTLINED_FUNCTION_7_2();
    }

    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[9];

    (*(v15 + 8))(v13, v14);
    sub_26618B360();

    v16 = OUTLINED_FUNCTION_2_8(0);

    return v17(v16);
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v19 = v0[12];
    v20 = v0[8];
    v21 = v0[9];
    v22 = __swift_project_value_buffer(v20, qword_2814B4A80);
    v0[14] = v22;
    v23 = *(v21 + 16);
    v0[15] = v23;
    v0[16] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v19, v22, v20);
    v24 = sub_26618C690();
    v25 = sub_26618CAD0();
    if (os_log_type_enabled(v24, v25))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v26, v27, "HomeScreenFlow.execute() submitting SAScreenActionShowHomeScreen command.");
      OUTLINED_FUNCTION_7_2();
    }

    v28 = v0[12];
    v29 = v0[8];
    v30 = v0[9];
    v31 = v0[7];

    v32 = *(v30 + 8);
    v0[17] = v32;
    v32(v28, v29);
    v34 = *(v31 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_aceService + 24);
    v33 = *(v31 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_aceService + 32);
    __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_aceService), v34);
    v35 = [objc_allocWithZone(MEMORY[0x277D477B8]) init];
    v0[18] = v35;
    v36 = swift_task_alloc();
    v0[19] = v36;
    v37 = sub_2660DF8A0();
    *v36 = v0;
    v36[1] = sub_2660DEEC0;

    return MEMORY[0x2821BB6A0](v35, v34, v37, v33);
  }
}

uint64_t sub_2660DEEC0(void *a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;
  *(v5 + 160) = v1;

  if (v1)
  {
    v8 = sub_2660DF078;
  }

  else
  {
    v9 = *(v5 + 144);

    v8 = sub_2660DEFE0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2660DEFE0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_8(a1);

  v3 = *(v1 + 8);

  return v3(v2 << 32);
}

uint64_t sub_2660DF078()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);

  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_26618C690();
  LOBYTE(v8) = sub_26618CAB0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 160);
    v24 = *(v0 + 80);
    v25 = *(v0 + 136);
    v10 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    *(v0 + 40) = v9;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v14 = sub_26618C8D0();
    v16 = sub_266103A98(v14, v15, &v26);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2660B7000, v7, v8, "HomeScreenFlow.execute() error submitting command: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v17 = v25(v24, v10);
  }

  else
  {
    v18 = *(v0 + 136);
    v8 = *(v0 + 72);
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);

    v17 = v18(v19, v20);
  }

  OUTLINED_FUNCTION_3_8(v17);

  v21 = OUTLINED_FUNCTION_2_8(v8);

  return v22(v21);
}

uint64_t sub_2660DF2A0()
{
  sub_2660CFA98(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_input);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_aceService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14HomeScreenFlow_eventSender));
  return v0;
}

uint64_t sub_2660DF2E8()
{
  sub_2660DF2A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for HomeScreenFlow(uint64_t a1)
{
  result = qword_28005C180;
  if (!qword_28005C180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660DF394(uint64_t a1)
{
  sub_2660CF61C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660DF464()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660DF500;

  return sub_2660DEA4C();
}

uint64_t sub_2660DF500()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_2_8(HIDWORD(v2) & 1);

  return v6(v5);
}

uint64_t sub_2660DF638(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660DF700;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660DF700()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2660DF7E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HomeScreenFlow(0);

  return sub_26618AFE0();
}

unint64_t sub_2660DF820(uint64_t a1)
{
  result = sub_2660DF848();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2660DF848()
{
  result = qword_28005C190;
  if (!qword_28005C190)
  {
    type metadata accessor for HomeScreenFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C190);
  }

  return result;
}

unint64_t sub_2660DF8A0()
{
  result = qword_2814B2C10;
  if (!qword_2814B2C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B2C10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_8(uint64_t a1)
{

  return sub_26618B360();
}

uint64_t sub_2660DF91C(uint64_t a1)
{
  sub_26618B810();
  v1 = type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  v3 = sub_26618B470();
  swift_allocObject();
  v4 = sub_26618B460();
  sub_26618B600();
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v5 = static InstalledAppProvider.shared;
  v6 = type metadata accessor for MarketplaceInfoProvider();
  swift_allocObject();
  v7 = sub_26615E04C();
  sub_26618B040();
  v33[3] = v1;
  v33[4] = &off_2877CAA90;
  v33[0] = v2;
  v31 = v3;
  v32 = MEMORY[0x277D5BD58];
  *&v30 = v4;
  v28 = type metadata accessor for InstalledAppProvider();
  v29 = &protocol witness table for InstalledAppProvider;
  *&v27 = v5;
  v25 = v6;
  v26 = &off_2877CC370;
  v24[0] = v7;
  type metadata accessor for InstallAppFlow(0);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v33, v1);
  MEMORY[0x28223BE20](v9);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  MEMORY[0x28223BE20](v13);
  v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  v19 = (v8 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_dialogProvider);
  v19[3] = v1;
  v19[4] = &off_2877CAA90;
  *v19 = v17;
  v20 = (v8 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_marketplaceInfoProvider);
  v20[3] = v6;
  v20[4] = &off_2877CC370;
  *v20 = v18;
  v21 = OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_input;
  v22 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v8 + v21, 1, 1, v22);
  sub_2660B9EB8(v36, v8 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_deviceState);
  sub_2660B9EB8(&v30, v8 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_responseGenerator);
  sub_2660B9EB8(&v35, v8 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_outputPublisher);
  sub_2660B9EB8(&v27, v8 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_installedAppProvider);
  sub_2660B9EB8(&v34, v8 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_eventSender);

  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v8;
}

uint64_t sub_2660DFCA4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = sub_26618B790();
  OUTLINED_FUNCTION_16();
  (*(v8 + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v6, v1 + v9);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660DFD9C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InstallAppFlow(0);
  OUTLINED_FUNCTION_1_7();
  sub_2660E202C(v2, v3);
  return sub_26618AFB0();
}

uint64_t sub_2660DFE1C()
{
  OUTLINED_FUNCTION_18();
  v1[37] = v2;
  v1[38] = v0;
  v1[39] = *v0;
  v3 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v3);
  v1[40] = swift_task_alloc();
  v4 = sub_26618B6A0();
  v1[41] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[42] = v5;
  v1[43] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C1E8, &qword_266192910);
  v1[44] = v6;
  OUTLINED_FUNCTION_3_0(v6);
  v1[45] = OUTLINED_FUNCTION_25_0();
  v1[46] = swift_task_alloc();
  v7 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  v1[47] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v1[48] = OUTLINED_FUNCTION_25_0();
  v1[49] = swift_task_alloc();
  v8 = sub_26618B800();
  v1[50] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[51] = v9;
  v1[52] = OUTLINED_FUNCTION_25_0();
  v1[53] = swift_task_alloc();
  v10 = sub_26618B790();
  v1[54] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[55] = v11;
  v1[56] = OUTLINED_FUNCTION_25_0();
  v1[57] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v12);
  v1[58] = OUTLINED_FUNCTION_25_0();
  v1[59] = swift_task_alloc();
  v13 = sub_26618C6B0();
  v1[60] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v1[61] = v14;
  v1[62] = OUTLINED_FUNCTION_25_0();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2660E00DC()
{
  if (qword_2814B2C40 != -1)
  {
    swift_once();
  }

  v1 = v0[65];
  v2 = v0[60];
  v3 = v0[61];
  v4 = __swift_project_value_buffer(v2, qword_2814B4A98);
  v5 = *(v3 + 16);
  v0[66] = v5;
  v0[67] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v86 = v5;
  (v5)(v1, v4, v2);
  v6 = sub_26618C690();
  v7 = sub_26618CA90();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2660B7000, v6, v7, "InstallAppFlow.execute executing InstallAppFlow", v8, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v9 = v0[61];
  v10 = v0[59];
  v11 = v0[54];
  v12 = v0[38];

  v13 = *(v9 + 8);
  v0[68] = v13;
  v14 = OUTLINED_FUNCTION_12_1();
  v13(v14);
  v15 = OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_input;
  swift_beginAccess();
  sub_2660BF73C(v12 + v15, v10, &qword_28005C060, &qword_26618FD10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v17 = v0[59];
  if (EnumTagSinglePayload)
  {
    sub_2660BF79C(v0[59], &qword_28005C060, &qword_26618FD10);
LABEL_7:
    v18 = 0x2814B2000uLL;
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    __swift_project_value_buffer(v0[60], qword_2814B4A80);
    v19 = OUTLINED_FUNCTION_13_4();
    v86(v19);
    v20 = sub_26618C690();
    v21 = sub_26618CAB0();
    if (!os_log_type_enabled(v20, v21))
    {
      v27 = 8;
      goto LABEL_21;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v23, v24, v25, v26, v22, 2u);
    v27 = 8;
    goto LABEL_20;
  }

  v28 = v0[53];
  v29 = v0[51];
  v85 = v0[50];
  v84 = *(v0[55] + 16);
  v84(v0[57], v17, v0[54]);
  sub_2660BF79C(v17, &qword_28005C060, &qword_26618FD10);
  sub_26618B770();
  v30 = OUTLINED_FUNCTION_12_1();
  v83 = v31;
  v31(v30);
  sub_2660C8AA8();
  v33 = v32;
  v0[69] = v32;
  v34 = *(v29 + 8);
  v34(v28, v85);
  if (!*(v33 + 16))
  {

    goto LABEL_7;
  }

  v35 = v0[58];
  v36 = v0[54];
  sub_2660BF73C(v12 + v15, v35, &qword_28005C060, &qword_26618FD10);
  v37 = __swift_getEnumTagSinglePayload(v35, 1, v36);
  v38 = v0[58];
  if (v37)
  {

    v39 = &qword_28005C060;
    v40 = &qword_26618FD10;
    v41 = v38;
LABEL_15:
    sub_2660BF79C(v41, v39, v40);
    v18 = 0x2814B2000uLL;
    goto LABEL_16;
  }

  v70 = v0[52];
  v71 = v0[50];
  v84(v0[56], v0[58], v0[54]);
  sub_2660BF79C(v38, &qword_28005C060, &qword_26618FD10);
  sub_26618B770();
  v72 = OUTLINED_FUNCTION_11_2();
  v83(v72);
  sub_2660C87C0();
  v34(v70, v71);
  if (!v0[5])
  {

    v39 = &qword_28005C148;
    v40 = &unk_26618FF00;
    v41 = (v0 + 2);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v73 = OUTLINED_FUNCTION_11_2();
  v18 = 0x2814B2000;
  if (v74(v73))
  {
    v75 = sub_26613B704();
    v77 = v76;

    v0[70] = v75;
    v0[71] = v77;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v77)
    {
      v78 = HIBYTE(v77) & 0xF;
      if ((v77 & 0x2000000000000000) == 0)
      {
        v78 = v75 & 0xFFFFFFFFFFFFLL;
      }

      if (v78)
      {
        v79 = (v0[38] + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_marketplaceInfoProvider);
        v0[72] = OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_installedAppProvider;
        __swift_project_boxed_opaque_existential_1(v79, v79[3]);
        v80 = swift_task_alloc();
        v0[73] = v80;
        *v80 = v0;
        v80[1] = sub_2660E0918;
        OUTLINED_FUNCTION_20_2();

        __asm { BR              X3 }
      }
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

LABEL_16:
  if (*(v18 + 3128) != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  __swift_project_value_buffer(v0[60], qword_2814B4A80);
  v42 = OUTLINED_FUNCTION_13_4();
  v86(v42);
  v20 = sub_26618C690();
  v43 = sub_26618CAB0();
  if (os_log_type_enabled(v20, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v45, v46, v47, v48, v44, 2u);
    v27 = 6;
LABEL_20:
    OUTLINED_FUNCTION_7_2();
    goto LABEL_21;
  }

  v27 = 6;
LABEL_21:

  v49 = OUTLINED_FUNCTION_12_1();
  v13(v49);
  sub_2660D3004();
  v50 = swift_allocError();
  *v51 = v27;
  swift_willThrow();
  v0[81] = v50;
  if (*(v18 + 3128) != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  OUTLINED_FUNCTION_18_3();
  __swift_project_value_buffer(v50, qword_2814B4A80);
  v52 = OUTLINED_FUNCTION_13_4();
  (v27)(v52);
  v53 = v50;
  v54 = sub_26618C690();
  v55 = sub_26618CAC0();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    v58 = v50;
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 4) = v59;
    *v57 = v59;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v60, v61, v62, v63, v56, 0xCu);
    sub_2660BF79C(v57, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_21_2();
  v64 = OUTLINED_FUNCTION_11_2();
  (v18)(v64);
  v65 = swift_task_alloc();
  v0[82] = v65;
  OUTLINED_FUNCTION_1_7();
  sub_2660E202C(v66, v67);
  *v65 = v0;
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_20_2();

  return sub_2660F1894();
}

uint64_t sub_2660E0918()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = v3;

  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2660E0A04()
{
  sub_26617CDCC(*(v0 + 592));
  *(v0 + 600) = v1;
  v2 = swift_task_alloc();
  *(v0 + 608) = v2;
  *v2 = v0;
  v2[1] = sub_2660E0AE0;

  return sub_2660C4CF4();
}

uint64_t sub_2660E0AE0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 616) = v5;
  *(v3 + 624) = v0;

  if (v0)
  {
    v6 = sub_2660E14E4;
  }

  else
  {

    v6 = sub_2660E0BF4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2660E0BF4()
{
  v31 = v0 + 7;
  v1 = v0[74];
  if (v1[2])
  {
    v2 = v1[7];
    v28 = v1[6];
    v29 = v1[4];
    v30 = v1[5];

    v27 = v2;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
  }

  v3 = v0[72];
  v4 = v0[69];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[38];

  sub_2660C5864(v7 + v3, v31);
  v8 = swift_task_alloc();
  *(v8 + 16) = v31;
  v9 = sub_2661310D0(sub_2660E1F5C, v8, v4);

  v10 = type metadata accessor for AppLaunchDataModels.AppResultSashModel(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  sub_2660BF73C(v5, v6, &qword_28005C1E8, &qword_266192910);
  sub_26618AB90();
  sub_2660BF79C(v5, &qword_28005C1E8, &qword_266192910);
  v0[35] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C200, &qword_266194C10);
  sub_26618AB90();
  v11 = *(v9 + 16);

  if (v11 <= 1)
  {
    sub_2660E1F7C(v29, v30, v28, v27);
  }

  else if (v30)
  {
    v12 = v0[46];
    sub_26616DE6C();
    v13 = OUTLINED_FUNCTION_12_1();
    sub_2660BF73C(v13, v14, &qword_28005C1E8, &qword_266192910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C208, &unk_266192930);
    sub_26618ABC0();
    sub_2660BF79C(v12, &qword_28005C1E8, &qword_266192910);
    goto LABEL_9;
  }

LABEL_9:
  v15 = v0[77];
  v16 = v0[69];
  v17 = v0[49];
  v18 = v0[38];
  sub_2660E1FC0(v0[48], v17);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_26618B1B0();
  *(swift_task_alloc() + 16) = v16;
  sub_26618B620();

  v19 = *(v18 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_responseGenerator + 24);
  v20 = *(v18 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_responseGenerator + 32);
  __swift_project_boxed_opaque_existential_1((v18 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_responseGenerator), v19);
  v0[20] = type metadata accessor for AppLaunchDataModels(0);
  v0[21] = sub_2660E202C(qword_2814B3FF0, type metadata accessor for AppLaunchDataModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
  sub_2660E2070(v17, boxed_opaque_existential_0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v22 = swift_allocObject();
  v0[79] = v22;
  *(v22 + 16) = xmmword_26618F7E0;
  *(v22 + 32) = v15;
  v23 = v15;
  v24 = swift_task_alloc();
  v0[80] = v24;
  *v24 = v0;
  v24[1] = sub_2660E1000;
  v25 = v0[43];

  return MEMORY[0x2821BB468](v0 + 12, v0 + 17, v22, v25, v19, v20);
}

uint64_t sub_2660E1000()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660E1104()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 392);
  sub_2660C5864(*(v0 + 304) + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_outputPublisher, v0 + 176);
  sub_2660C5864(v0 + 96, v0 + 216);
  v3 = swift_allocObject();
  sub_2660B9EB8((v0 + 216), v3 + 16);
  sub_26618AC90();
  swift_allocObject();
  *(v0 + 288) = sub_26618AC80();
  sub_26618B340();

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v4 = OUTLINED_FUNCTION_11_2();
  v5(v4);
  sub_2660E216C(v2);

  OUTLINED_FUNCTION_5_5();

  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_2660E12EC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 664) = v3;

  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2660E13D8()
{
  OUTLINED_FUNCTION_5_5();

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_20_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2660E14E4()
{
  v3 = v0[69];

  v4 = v0[78];
  v0[81] = v4;
  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  OUTLINED_FUNCTION_18_3();
  __swift_project_value_buffer(v3, qword_2814B4A80);
  v5 = OUTLINED_FUNCTION_13_4();
  v1(v5);
  v6 = v4;
  v7 = sub_26618C690();
  v8 = sub_26618CAC0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_17_3();
    _os_log_impl(v13, v14, v15, v16, v9, 0xCu);
    sub_2660BF79C(v10, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_21_2();
  v17 = OUTLINED_FUNCTION_11_2();
  v2(v17);
  v18 = swift_task_alloc();
  v0[82] = v18;
  OUTLINED_FUNCTION_1_7();
  sub_2660E202C(v19, v20);
  *v18 = v0;
  OUTLINED_FUNCTION_2_9();

  return sub_2660F1894();
}

uint64_t sub_2660E16F8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_26618B650();
  sub_26618B680();
  sub_266148EFC();
  v5 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_26618B660();
  return sub_26618B640();
}

uint64_t sub_2660E17D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2660E17F0, 0, 0);
}

uint64_t sub_2660E17F0()
{
  OUTLINED_FUNCTION_18();
  sub_2660C5864(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2660E1850()
{
  sub_2660BF79C(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_input, &qword_28005C060, &qword_26618FD10);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_deviceState));
  sub_2660D3208(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_dialogProvider);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_responseGenerator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_outputPublisher));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_installedAppProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_marketplaceInfoProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents14InstallAppFlow_eventSender));
  return v0;
}

uint64_t sub_2660E18F8()
{
  sub_2660E1850();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for InstallAppFlow(uint64_t a1)
{
  result = qword_28005C1D0;
  if (!qword_28005C1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660E19A4(uint64_t a1)
{
  sub_2660CF61C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660E1A90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660E1B2C;

  return sub_2660DFE1C();
}

uint64_t sub_2660E1B2C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_2660E1C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2660E1CF4;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2660E1CF4()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_54();

  return v5(v2);
}

uint64_t sub_2660E1E00(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660DF700;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660E1EC8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for InstallAppFlow(0);

  return sub_26618AFE0();
}

uint64_t sub_2660E1F04(uint64_t a1)
{
  result = sub_2660E202C(&qword_28005C1E0, type metadata accessor for InstallAppFlow);
  *(a1 + 8) = result;
  return result;
}

void sub_2660E1F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_2660E1FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660E202C(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_13_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2660E2070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660E20D4()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2660DF700;

  return sub_2660E17D0(v3, v0 + 16);
}

uint64_t sub_2660E216C(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchDataModels.AppResultWrapperModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_5()
{
}

void OUTLINED_FUNCTION_21_2()
{
}

uint64_t sub_2660E22DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2660E231C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2660E2394(uint64_t a1)
{
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2660E2430;

  return sub_2660E262C();
}

uint64_t sub_2660E2430()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  *(v1 + 32) = v0;

  return MEMORY[0x2822009F8](sub_2660E2528, 0, 0);
}

uint64_t sub_2660E2528()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[2] + 120), *(v0[2] + 144));
  sub_2660E2C50(v1 | ((HIDWORD(v1) & 1) << 32));
  sub_26618B050();

  v2 = v0[1];

  return v2();
}

uint64_t sub_2660E25D8(uint64_t a1, uint64_t a2)
{
  sub_2660E2B44();

  return sub_26618AFB0();
}

uint64_t sub_2660E262C()
{
  OUTLINED_FUNCTION_18();
  v1[13] = v2;
  v1[14] = v0;
  v3 = sub_26618B800();
  v1[15] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[16] = v4;
  v1[17] = swift_task_alloc();
  v5 = sub_26618B790();
  v1[18] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[19] = v6;
  v1[20] = swift_task_alloc();
  v7 = sub_26618B840();
  v1[21] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[22] = v8;
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660E2788, 0, 0);
}

uint64_t sub_2660E2788()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v7 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v13 = v0[15];
  v14 = v0[18];
  type metadata accessor for LaunchAppWrapperFlow(0);
  sub_2660C5864((v8 + 10), (v0 + 2));
  sub_2660C5864((v8 + 5), (v0 + 7));
  sub_2660E2DA4();
  v10 = v9;
  sub_26617D5D4(v8, 0xD000000000000011, 0x8000000266198820, v1);
  (*(v2 + 16))(v6, v1, v4);
  (*(v7 + 104))(v6, *MEMORY[0x277D5C160], v13);
  sub_26618B780();
  sub_2660E34E0();
  (*(v5 + 8))(v3, v14);
  v0[12] = v10;
  sub_2660E2D4C();
  sub_26618B340();
  (*(v2 + 8))(v1, v4);

  v11 = v0[1];

  return v11(0x100000001);
}

uint64_t sub_2660E2990()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660E2A28;

  return sub_2660E262C();
}

uint64_t sub_2660E2A28()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2 | ((HIDWORD(v2) & 1) << 32));
}

unint64_t sub_2660E2B1C(uint64_t a1)
{
  result = sub_2660E2B44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2660E2B44()
{
  result = qword_28005C210;
  if (!qword_28005C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C210);
  }

  return result;
}

uint64_t sub_2660E2B9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2660DF700;

  return sub_2660E2394(a1);
}

unint64_t sub_2660E2D4C()
{
  result = qword_2814B3C80[0];
  if (!qword_2814B3C80[0])
  {
    type metadata accessor for LaunchAppWrapperFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814B3C80);
  }

  return result;
}

void sub_2660E2DA4()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v55 = v0;
  v56 = v2;
  v3 = v2;
  v50[0] = type metadata accessor for SiriRemembersStoreProvider(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v8);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  v11 = v50 - v10;
  v53 = v50 - v10;
  v52 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v52);
  sub_26618B810();
  sub_2660C5864(v3, v80);
  v12 = type metadata accessor for BaseDialogProvider();
  v13 = swift_allocObject();
  v14 = sub_26618C530();
  v15 = sub_26618C510();
  v51 = v15;
  v54 = v7;
  sub_266164194(v7);
  sub_2660C5864(v1, v79);
  v16 = sub_26618C520();
  v50[1] = v16;
  v17 = sub_26618B470();
  OUTLINED_FUNCTION_41_0(v17);
  v18 = sub_26618B460();
  v19 = sub_26618C460();
  v20 = sub_26618C450();
  v78[3] = v19;
  v78[4] = &off_2877CC660;
  v78[0] = v20;
  v77[3] = v12;
  v77[0] = v13;
  v77[4] = &off_2877CAA90;
  v73[4] = MEMORY[0x277D61F10];
  v75 = &type metadata for AppLaunchFlowFactoryImpl;
  v76 = &off_2877CD5D8;
  v73[3] = v14;
  v73[0] = v15;
  v21 = v50[0];
  v71 = v50[0];
  v72 = &off_2877CC750;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v70);
  sub_2660E7EE8(v7, boxed_opaque_existential_0);
  v69[3] = sub_26618C500();
  v69[4] = MEMORY[0x277D61F08];
  v69[0] = v16;
  v68[3] = v17;
  v68[4] = MEMORY[0x277D5BD58];
  v68[0] = v18;
  v66 = &type metadata for ReferenceResolver;
  v67 = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v65[0] = swift_allocObject();
  sub_2660CFC00(v78, v65[0] + 16);
  v63 = &type metadata for AppLaunchFeatureFlagsImpl;
  v64 = &off_2877CD168;
  v23 = type metadata accessor for LaunchAppWrapperFlow(0);
  v24 = OUTLINED_FUNCTION_41_0(v23);
  __swift_mutable_project_boxed_opaque_existential_1(v77, v12);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_4();
  v28 = (v27 - v26);
  (*(v29 + 16))(v27 - v26);
  __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_4();
  v33 = v32 - v31;
  (*(v34 + 16))(v32 - v31);
  __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_4();
  v37 = OUTLINED_FUNCTION_45_0(v36);
  v38(v37);
  __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  v39 = *v28;
  v61[3] = v12;
  v61[4] = &off_2877CAA90;
  v61[0] = v39;
  v60[3] = &type metadata for AppLaunchFlowFactoryImpl;
  v60[4] = &off_2877CD5D8;
  v59[3] = v21;
  v59[4] = &off_2877CC750;
  v40 = __swift_allocate_boxed_opaque_existential_0(v59);
  sub_2660E7F4C(v33, v40);
  v58[3] = &type metadata for ReferenceResolver;
  v58[4] = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v41 = swift_allocObject();
  v58[0] = v41;
  v42 = *(v7 + 16);
  *(v41 + 16) = *v7;
  *(v41 + 32) = v42;
  *(v41 + 48) = *(v7 + 32);
  *(v24 + 576) = &type metadata for AppLaunchFeatureFlagsImpl;
  *(v24 + 584) = &off_2877CD168;
  v43 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input;
  __swift_storeEnumTagSinglePayload(v24 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input, 1, 1, v52);
  *(v24 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice) = 0;
  swift_beginAccess();
  v44 = v51;

  v45 = v53;
  sub_2660DE7DC(v53, v24 + v43);
  swift_endAccess();
  sub_2660C5864(v81, v24 + 16);
  sub_2660C5864(v80, v24 + 56);
  sub_2660C5864(v61, v24 + 96);
  sub_2660C5864(v60, v24 + 136);
  sub_2660C5864(v73, v24 + 176);
  sub_2660C5864(v59, v24 + 216);
  sub_2660C5864(v79, v24 + 256);
  *(v24 + 592) = 0;
  v46 = type metadata accessor for CoreAnalyticsService();
  v47 = swift_allocObject();
  *(v24 + 320) = v46;
  *(v24 + 328) = &off_2877CD310;
  *(v24 + 296) = v47;
  sub_2660C5864(v69, v24 + 336);
  sub_2660C5864(v68, v24 + 376);
  sub_2660C5864(v58, v24 + 512);
  sub_2660C5864(v24 + 16, v24 + 416);
  sub_2660C5864(v24 + 376, v24 + 456);
  v48 = sub_26618C8A0();
  LODWORD(v46) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v79);
  sub_2660E850C(v54, type metadata accessor for SiriRemembersStoreProvider);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v81);
  sub_2660BF79C(v45, &qword_28005C060, &qword_26618FD10);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  *(v24 + 504) = v46 == 1;
  sub_2660C5864(v24 + 416, v57);
  type metadata accessor for LocUtil();
  OUTLINED_FUNCTION_4_5();
  v49 = swift_allocObject();
  sub_2660B9EB8(v57, v49 + 16);
  *(v24 + 496) = v49;
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  sub_2660CFC5C(v78);
  OUTLINED_FUNCTION_7_1();
}

BOOL sub_2660E34E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - v3;
  v5 = *(v0 + 592);
  if (!*(v0 + 592))
  {
    v6 = sub_26618B790();
    OUTLINED_FUNCTION_16();
    v7 = OUTLINED_FUNCTION_12_1();
    v8(v7);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
    v9 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input;
    swift_beginAccess();
    sub_2660CFB90(v4, v0 + v9);
    swift_endAccess();
    *(v0 + 592) = 1;
  }

  return v5 == 0;
}

uint64_t sub_2660E35EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LaunchAppWrapperFlow(0);
  sub_2660E9668(qword_2814B3C80, type metadata accessor for LaunchAppWrapperFlow, &unk_2661904F0);
  return sub_26618AFB0();
}

uint64_t sub_2660E367C()
{
  OUTLINED_FUNCTION_18();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_26618C6B0();
  v1[22] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[23] = v4;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v5 = sub_26618B7B0();
  v1[28] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[29] = v6;
  v1[30] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B840();
  v1[31] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[32] = v8;
  v1[33] = OUTLINED_FUNCTION_8_2();
  v9 = type metadata accessor for AppLaunchIntent(0);
  OUTLINED_FUNCTION_3_0(v9);
  v1[34] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618C0E0();
  v1[35] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[36] = v11;
  v1[37] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618B800();
  v1[38] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[39] = v13;
  v1[40] = OUTLINED_FUNCTION_8_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v14);
  v1[41] = OUTLINED_FUNCTION_8_2();
  v15 = sub_26618B790();
  v1[42] = v15;
  OUTLINED_FUNCTION_0_4(v15);
  v1[43] = v16;
  v1[44] = OUTLINED_FUNCTION_8_2();
  v17 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

void sub_2660E3914()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[21];
  v4 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2660BF79C(v0[41], &qword_28005C060, &qword_26618FD10);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    OUTLINED_FUNCTION_34_0();
    v5 = (v4 + 192);
    v6 = *(v5 - 1);
    OUTLINED_FUNCTION_14_3(v7, qword_2814B4A98);
    v8 = OUTLINED_FUNCTION_33_0();
    v9(v8);
    v10 = sub_26618C690();
    v11 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_3(v11))
    {
      v12 = "LaunchAppWrapperFlow.execute Input is nil. Error executing request";
LABEL_6:
      v13 = *v5;
      v14 = OUTLINED_FUNCTION_6_2();
      *v14 = 0;
      _os_log_impl(&dword_2660B7000, v10, v6, v12, v14, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
      v13 = *v5;
    }

    goto LABEL_13;
  }

  v15 = v0[21];
  (*(v0[43] + 32))(v0[44], v0[41], v0[42]);
  switch(*(v15 + 592))
  {
    case 1:
      v31 = v0[39];
      sub_26618B770();
      v32 = v31 + 88;
      v33 = OUTLINED_FUNCTION_12_1();
      v35 = v34(v33);
      if (v35 == *MEMORY[0x277D5C128])
      {
        v36 = v0[40];
        v37 = v0[37];
        v38 = v0[35];
        v39 = v0[36];
        v40 = v0[34];
        (*(v0[39] + 96))(v36, v0[38]);
        (*(v39 + 32))(v37, v36, v38);
        (*(v39 + 16))(v40, v37, v38);
        if (sub_2660E4E08())
        {
          v41 = v0[34];
          sub_2660E6078();
          OUTLINED_FUNCTION_2_10();
          sub_2660E850C(v41, v42);
          v43 = OUTLINED_FUNCTION_12_1();
          v44(v43);
LABEL_28:
          v45 = v0[44];
          OUTLINED_FUNCTION_6_4();
          (*(v46 + 8))(v45);

          OUTLINED_FUNCTION_5_3();
          OUTLINED_FUNCTION_36();

          __asm { BRAA            X1, X16 }
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        v0[45] = v23;
        *v23 = v50;
        v25 = sub_2660E41BC;
        goto LABEL_15;
      }

      if (v35 == *MEMORY[0x277D5C150])
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        v0[47] = v23;
        *v23 = v49;
        v25 = sub_2660E4544;
LABEL_15:
        v23[1] = v25;
        OUTLINED_FUNCTION_36();

        sub_2660E55F0();
        return;
      }

      if (v35 == *MEMORY[0x277D5C140])
      {
        v52 = v0[29];
        v51 = v0[30];
        v53 = v0[28];
        (*(v0[39] + 96))(v0[40], v0[38]);
        v54 = OUTLINED_FUNCTION_38_0();
        v55(v54);
        v0[10] = v53;
        v0[11] = &off_2877CAAC8;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
        (*(v52 + 16))(boxed_opaque_existential_0, v51, v53);
        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        v0[48] = v57;
        *v57 = v58;
        OUTLINED_FUNCTION_31_1(v57);
      }

      else if (v35 == *MEMORY[0x277D5C148])
      {
        v59 = v0[40];
        (*(v0[39] + 96))(v59, v0[38]);
        v60 = *v59;
        v0[49] = v60;
        v0[5] = sub_26618C430();
        v0[6] = &off_2877CAAD8;
        v0[2] = v60;
        v61 = v60;
        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        v0[50] = v62;
        *v62 = v63;
        OUTLINED_FUNCTION_31_1(v62);
      }

      else
      {
        if (v35 != *MEMORY[0x277D5C160])
        {
          if (qword_2814B2C40 != -1)
          {
            OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
          }

          OUTLINED_FUNCTION_34_0();
          v5 = (v32 + 216);
          v6 = *(v5 - 4);
          OUTLINED_FUNCTION_14_3(v76, qword_2814B4A98);
          v77 = OUTLINED_FUNCTION_33_0();
          v78(v77);
          v10 = sub_26618C690();
          v79 = sub_26618CAB0();
          if (OUTLINED_FUNCTION_15_3(v79))
          {
            v12 = "Unexpected parse type in input";
            goto LABEL_6;
          }

          v13 = *v5;
LABEL_13:
          v22 = v0 + 22;
          v21 = v0[22];
          v20 = v22[1];

          (*(v20 + 8))(v13, v21);
          sub_26618CE80();
          OUTLINED_FUNCTION_36();
          return;
        }

        v69 = v0[32];
        v68 = v0[33];
        v70 = v0[31];
        (*(v0[39] + 96))(v0[40], v0[38]);
        v71 = OUTLINED_FUNCTION_38_0();
        v72(v71);
        v0[15] = v70;
        v0[16] = &off_2877CAAB8;
        v73 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
        (*(v69 + 16))(v73, v68, v70);
        swift_task_alloc();
        OUTLINED_FUNCTION_28_0();
        v0[46] = v74;
        *v74 = v75;
        OUTLINED_FUNCTION_31_1(v74);
      }

      OUTLINED_FUNCTION_36();

      sub_2660E4C28(v64, v65, v66);
      return;
    case 2:
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      v5 = v0 + 25;
      v27 = v0[25];
      v6 = v0[22];
      v28 = v0[23];
      v29 = __swift_project_value_buffer(v6, qword_2814B4A98);
      (*(v28 + 16))(v27, v29, v6);
      v10 = sub_26618C690();
      v30 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_3(v30))
      {
        v12 = "Unexpected state in execute()";
        goto LABEL_6;
      }

      v13 = *v5;
      goto LABEL_13;
    case 3:
      sub_2660E6778();
      goto LABEL_28;
    case 4:
      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v0[51] = v23;
      *v23 = v24;
      v25 = sub_2660E4A84;
      goto LABEL_15;
    case 5:
      sub_26618B360();
      goto LABEL_28;
    case 6:
      sub_2660E6EEC();
      goto LABEL_28;
    default:
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      OUTLINED_FUNCTION_34_0();
      v5 = (v4 + 208);
      v6 = *(v5 - 3);
      OUTLINED_FUNCTION_14_3(v16, qword_2814B4A98);
      v17 = OUTLINED_FUNCTION_33_0();
      v18(v17);
      v10 = sub_26618C690();
      v19 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_3(v19))
      {
        v12 = "Flow is in .initialized state in execute(). Ensure the right constructor is being used.";
        goto LABEL_6;
      }

      v13 = *v5;
      goto LABEL_13;
  }
}

uint64_t sub_2660E41BC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2660E42A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v16 = v14[36];
  v15 = v14[37];
  v17 = v14[35];
  OUTLINED_FUNCTION_2_10();
  sub_2660E850C(v18, v19);
  (*(v16 + 8))(v15, v17);
  v20 = OUTLINED_FUNCTION_1_8();
  v21(v20);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2660E4388()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660E446C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  (*(v14[32] + 8))(v14[33], v14[31]);
  v15 = OUTLINED_FUNCTION_1_8();
  v16(v15);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2660E4544()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2660E4628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  (*(v14[43] + 8))(v14[44], v14[42]);
  v15 = v14[40];
  OUTLINED_FUNCTION_6_4();
  v28 = v17;
  v29 = v16;
  (*(v18 + 8))(v15);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, v29, a12, a13, a14);
}

uint64_t sub_2660E471C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660E4800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  (*(v14[29] + 8))(v14[30], v14[28]);
  v15 = OUTLINED_FUNCTION_1_8();
  v16(v15);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2660E48D8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660E49BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();

  v15 = OUTLINED_FUNCTION_1_8();
  v16(v15);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2660E4A84()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2660E4B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_26_1();
  v14 = OUTLINED_FUNCTION_1_8();
  v15(v14);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_22_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2660E4C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660E4C54()
{
  OUTLINED_FUNCTION_18();
  sub_2660E4EA4();
  if (v1)
  {
    sub_2660E6078();
    OUTLINED_FUNCTION_5_3();

    return v2();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    *(v0 + 48) = v4;
    *v4 = v5;
    v4[1] = sub_2660E4D28;

    return sub_2660E55F0();
  }
}

uint64_t sub_2660E4D28()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5_3();

  return v3();
}

BOOL sub_2660E4E08()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_26618B1A0())
  {
    return 1;
  }

  v3 = v0[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  return (sub_2660C80B8(v3, v4) & 1) != 0 && sub_26614778C();
}

void sub_2660E4EA4()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v92 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v86 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v86 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v91 = &v86 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v86 - v18;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v20 = sub_26618B1A0();
  if (v20)
  {
    if (qword_2814B2C40 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_3;
  }

  v29 = v3[3];
  v30 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v29);
  v31 = (*(v30 + 8))(v29, v30);
  if (!v31)
  {
    goto LABEL_18;
  }

  v19 = sub_266143284();

  v32 = sub_2661046B8();
  if (!v32)
  {

LABEL_18:
    if (qword_2814B2C40 != -1)
    {
      v31 = OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    OUTLINED_FUNCTION_14_3(v31, qword_2814B4A98);
    OUTLINED_FUNCTION_32_0();
    v38(v9);
    v39 = sub_26618C690();
    v40 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_3(v40))
    {
      v41 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_43_0(v41);
      OUTLINED_FUNCTION_19_3(&dword_2660B7000, v42, v43, "needsDeviceResolution(): no user entities in request");
      OUTLINED_FUNCTION_7_2();
    }

    (*(v30 + 8))(v9, v4);
    goto LABEL_28;
  }

  v33 = v32;
  v89 = v4;
  v34 = 0;
  v35 = v19 & 0xC000000000000001;
  while (1)
  {
    if (v33 == v34)
    {

      if (qword_2814B2C40 != -1)
      {
        v44 = OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      v45 = v89;
      OUTLINED_FUNCTION_14_3(v44, qword_2814B4A98);
      OUTLINED_FUNCTION_32_0();
      v46(v12);
      v47 = sub_26618C690();
      v48 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_15_3(v48))
      {
        v49 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_43_0(v49);
        OUTLINED_FUNCTION_19_3(&dword_2660B7000, v50, v51, "needsDeviceResolution(): found user entities, but none have an associated name");
        OUTLINED_FUNCTION_7_2();
      }

      (*(v30 + 8))(v12, v45);
      goto LABEL_28;
    }

    if (v35)
    {
      v36 = MEMORY[0x26677C150](v34, v19);
    }

    else
    {
      if (v34 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }
    }

    if (__OFADD__(v34, 1))
    {
      break;
    }

    sub_2661433B8(v36);
    v30 = v37;

    ++v34;
    if (v30)
    {
      v88 = v15;

      v52 = 0;
      v90 = MEMORY[0x277D84F90];
      while (v33 != v52)
      {
        sub_2661046C8();
        if (v35)
        {
          MEMORY[0x26677C150](v52, v19);
        }

        else
        {
        }

        v53 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_54;
        }

        v54 = sub_266143474();
        v56 = v55;
        v58 = v57;

        ++v52;
        if (v58)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_266129BB0();
            v90 = v62;
          }

          v59 = v90;
          v60 = *(v90 + 16);
          if (v60 >= *(v90 + 24) >> 1)
          {
            sub_266129BB0();
            v59 = v63;
          }

          *(v59 + 16) = v60 + 1;
          v90 = v59;
          v61 = v59 + 24 * v60;
          *(v61 + 32) = v54;
          *(v61 + 40) = v56;
          *(v61 + 48) = v58;
          v52 = v53;
        }
      }

      v64 = v89;
      if (*(v90 + 16))
      {
        v87 = *(v90 + 32);
        v66 = *(v90 + 40);
        v65 = *(v90 + 48);

        if (qword_2814B2C40 != -1)
        {
          v67 = OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
        }

        OUTLINED_FUNCTION_14_3(v67, qword_2814B4A98);
        v69 = v91;
        v68 = v92;
        v70 = *(v92 + 16);
        v90 = v71;
        v86 = v70;
        (v70)(v91);

        v72 = sub_26618C690();
        v73 = sub_26618CAA0();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = OUTLINED_FUNCTION_49_0();
          v75 = swift_slowAlloc();
          v93 = v75;
          *v74 = 136315138;

          v76 = sub_266103A98(v66, v65, &v93);

          *(v74 + 4) = v76;
          _os_log_impl(&dword_2660B7000, v72, v73, "needsDeviceResolution(): detected reference to an apple product type in request: %s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v75);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();

          v77 = *(v68 + 8);
          v77(v91, v64);
        }

        else
        {

          v77 = *(v68 + 8);
          v77(v69, v64);
        }

        if (v87 >= 2)
        {
          v80 = v88;
          v86(v88, v90, v64);
          v81 = sub_26618C690();
          v82 = sub_26618CAA0();
          if (OUTLINED_FUNCTION_15_3(v82))
          {
            v83 = OUTLINED_FUNCTION_6_2();
            OUTLINED_FUNCTION_43_0(v83);
            OUTLINED_FUNCTION_19_3(&dword_2660B7000, v84, v85, "needsDeviceResolution(): user referenced a non appletv target, so we'll ignore it");
            OUTLINED_FUNCTION_7_2();
          }

          v77(v80, v64);
          goto LABEL_28;
        }
      }

      else
      {
      }

      v78 = v1[5];
      v79 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v78);
      sub_2660C80B8(v78, v79);
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  v20 = OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
LABEL_3:
  OUTLINED_FUNCTION_14_3(v20, qword_2814B4A98);
  OUTLINED_FUNCTION_32_0();
  v21(v19);
  v22 = sub_26618C690();
  v23 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_3(v23))
  {
    v24 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_43_0(v24);
    OUTLINED_FUNCTION_19_3(&dword_2660B7000, v25, v26, "needsDeviceResolution(): Request from homepod. Trigger Device resolution flow");
    OUTLINED_FUNCTION_7_2();
  }

  v27 = OUTLINED_FUNCTION_46_0();
  v28(v27);
LABEL_28:
  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_2660E55F0()
{
  OUTLINED_FUNCTION_18();
  v1[56] = v2;
  v1[57] = v0;
  v1[55] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C228, &qword_266190580);
  v1[58] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[59] = v5;
  v1[60] = OUTLINED_FUNCTION_8_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C230, &unk_266190588);
  v1[61] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[62] = v7;
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v8 = sub_26618B800();
  v1[65] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[66] = v9;
  v1[67] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618C6B0();
  v1[68] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[69] = v11;
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2660E57BC(uint64_t a1)
{
  v60 = v1;
  if (qword_2814B2C40 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v2 = *(v1 + 568);
  v3 = *(v1 + 552);
  OUTLINED_FUNCTION_14_3(a1, qword_2814B4A98);
  (*(v3 + 16))(v2);

  v4 = sub_26618C690();
  v5 = sub_26618CA90();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 456);
    v7 = OUTLINED_FUNCTION_49_0();
    v8 = swift_slowAlloc();
    v59 = v8;
    *v7 = 136315138;
    v9 = *(v6 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice);
    if (v9)
    {
      v10 = [v9 description];
      v11 = sub_26618C8B0();
      v13 = v12;
    }

    else
    {
      v13 = 0xE500000000000000;
      v11 = 0x3E6C696E3CLL;
    }

    v16 = *(v1 + 568);
    v17 = *(v1 + 552);
    v18 = *(v1 + 544);
    v19 = sub_266103A98(v11, v13, &v59);

    *(v7 + 4) = v19;
    _os_log_impl(&dword_2660B7000, v4, v5, "Executing LaunchApp RCHFlow with remoteDevice: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    (*(v17 + 8))(v16, v18);
  }

  else
  {

    v14 = OUTLINED_FUNCTION_12_1();
    v15(v14);
  }

  v20 = *(v1 + 456);
  v57 = *(v1 + 536);
  sub_2660C5864(v20 + 16, v1 + 16);
  sub_2660C5864(v20 + 256, v1 + 56);
  v52 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice;
  v54 = *(v20 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice);
  sub_2660C5864(v20 + 512, v1 + 96);
  sub_2660C5864(v20 + 336, v1 + 136);
  sub_2660C5864(v20 + 552, v1 + 176);
  v21 = *(v1 + 120);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 96, v21);
  OUTLINED_FUNCTION_3_5();
  v24 = v23;
  v25 = OUTLINED_FUNCTION_8_2();
  (*(v24 + 16))(v25, v22, v21);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 176, *(v1 + 200));
  *(v1 + 240) = &type metadata for ReferenceResolver;
  *(v1 + 248) = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v26 = swift_allocObject();
  *(v1 + 216) = v26;
  v27 = *(v25 + 32);
  v28 = *(v25 + 16);
  *(v26 + 16) = *v25;
  *(v26 + 32) = v28;
  *(v26 + 48) = v27;
  *(v1 + 280) = &type metadata for AppLaunchFeatureFlagsImpl;
  *(v1 + 288) = &off_2877CD168;
  *(v1 + 320) = &type metadata for AccountProvider;
  *(v1 + 328) = &off_2877CBF68;
  type metadata accessor for LaunchAppFlowStrategy();
  v29 = swift_allocObject();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 216, &type metadata for ReferenceResolver);
  OUTLINED_FUNCTION_3_5();
  v32 = v31;
  v33 = OUTLINED_FUNCTION_8_2();
  (*(v32 + 16))(v33, v30, &type metadata for ReferenceResolver);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 256, &type metadata for AppLaunchFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 296, &type metadata for AccountProvider);
  *(v1 + 360) = &type metadata for ReferenceResolver;
  *(v1 + 368) = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v34 = swift_allocObject();
  *(v1 + 336) = v34;
  v35 = *(v33 + 32);
  v36 = *(v33 + 16);
  *(v34 + 16) = *v33;
  *(v34 + 32) = v36;
  *(v34 + 48) = v35;
  v29[25] = &type metadata for AppLaunchFeatureFlagsImpl;
  v29[26] = &off_2877CD168;
  v29[30] = &type metadata for AccountProvider;
  v29[31] = &off_2877CBF68;
  v29[32] = 0;
  sub_2660B9EB8((v1 + 16), (v29 + 2));
  v29[32] = v54;
  sub_2660B9EB8((v1 + 56), (v29 + 7));
  sub_2660B9EB8((v1 + 336), (v29 + 17));
  sub_2660B9EB8((v1 + 136), (v29 + 12));
  v37 = v54;
  __swift_destroy_boxed_opaque_existential_1((v1 + 296));
  __swift_destroy_boxed_opaque_existential_1((v1 + 256));
  __swift_destroy_boxed_opaque_existential_1((v1 + 216));

  __swift_destroy_boxed_opaque_existential_1((v1 + 176));
  __swift_destroy_boxed_opaque_existential_1((v1 + 96));

  sub_26618B770();
  v58 = sub_266119CCC(v57, 0);
  v38 = *(v1 + 504);
  v39 = *(v1 + 512);
  v41 = *(v1 + 488);
  v40 = *(v1 + 496);
  v42 = *(v1 + 456);
  (*(*(v1 + 528) + 8))(*(v1 + 536), *(v1 + 520));
  __swift_project_boxed_opaque_existential_1((v42 + 136), *(v42 + 160));
  v43 = *(v20 + v52);
  *(v1 + 400) = &type metadata for AppLaunchFlowFactoryImpl;
  *(v1 + 408) = &off_2877CD5D8;
  v56 = v43;
  sub_2660E7FB0(v43, v20 + 16, (v1 + 376));
  __swift_destroy_boxed_opaque_existential_1((v1 + 376));
  (*(v40 + 16))(v38, v39, v41);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C238, &qword_266190598);
  OUTLINED_FUNCTION_41_0(v44);
  sub_26618AF70();
  *(v1 + 424) = v29;
  sub_2660E9668(&qword_2814B3A88, type metadata accessor for LaunchAppFlowStrategy, &unk_266191E20);

  sub_26618B2F0();
  if (qword_2814B3F10 != -1)
  {
    swift_once();
  }

  v45 = *(v1 + 496);
  v53 = *(v1 + 488);
  v55 = *(v1 + 512);
  v47 = *(v1 + 472);
  v46 = *(v1 + 480);
  v48 = *(v1 + 464);
  v49 = sub_26618B2E0();
  (*(v47 + 8))(v46, v48);
  *(v1 + 432) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C240, qword_2661905A0);
  sub_2660E958C();
  sub_26618AF90();

  (*(v45 + 8))(v55, v53);
  sub_26618B350();

  OUTLINED_FUNCTION_5_3();

  return v50();
}

void sub_2660E6078()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0;
  v55 = v2;
  v57 = v3;
  v4 = sub_26618B790();
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v56 = v9 - v8;
  v10 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_4();
  v16 = v15 - v14;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v17 = __swift_project_value_buffer(v10, qword_2814B4A98);
  (*(v12 + 16))(v16, v17, v10);
  v18 = sub_26618C690();
  v19 = sub_26618CAD0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_6_2();
    *v20 = 0;
    _os_log_impl(&dword_2660B7000, v18, v19, "Target device resolution is required, pushing device resolution flow", v20, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  (*(v12 + 8))(v16, v10);
  *(v1 + 592) = 2;
  sub_2660C5864(v1 + 16, v65);
  sub_2660C5864(v1 + 216, v63);
  sub_2660C5864(v1 + 296, v62);
  __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_4();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22);
  __swift_mutable_project_boxed_opaque_existential_1(v62, v62[3]);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_4();
  v28 = OUTLINED_FUNCTION_42_0(v27);
  v29(v28);
  v54[2] = sub_2660E8888(v65, v24, *v10);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v30 = v56;
  (*(v6 + 16))(v56, v55, v4);
  sub_2660C5864(v1 + 16, v65);
  sub_2660C5864(v1 + 96, v63);
  sub_2660C5864(v1 + 56, v62);
  sub_2660C5864(v1 + 176, v61);
  sub_2660C5864(v1 + 216, v60);
  sub_2660C5864(v1 + 296, v59);
  sub_2660C5864(v1 + 512, v58);
  __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
  v55 = v54;
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1_4();
  v34 = (v33 - v32);
  (*(v35 + 16))(v33 - v32);
  __swift_mutable_project_boxed_opaque_existential_1(v60, v60[3]);
  v54[1] = v54;
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_4();
  v39 = v38 - v37;
  (*(v40 + 16))(v38 - v37);
  __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_4();
  v43 = OUTLINED_FUNCTION_42_0(v42);
  v44(v43);
  __swift_mutable_project_boxed_opaque_existential_1(v58, v58[3]);
  OUTLINED_FUNCTION_3_5();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1_4();
  v47 = OUTLINED_FUNCTION_45_0(v46);
  v48(v47);
  v49 = *v34;
  v50 = *v10;

  v52 = sub_2660E8A7C(v51, v30, v65, v49, v62, v61, v39, v50, v54);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v65[0] = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_2660E955C;
  *(v53 + 24) = v1;
  type metadata accessor for ExecutionDeviceResolutionFlow(0);
  sub_2660E9668(&qword_28005C130, type metadata accessor for ExecutionDeviceResolutionFlow, &unk_26618FC90);

  sub_26618B320();

  OUTLINED_FUNCTION_7_1();
}

void sub_2660E6778()
{
  OUTLINED_FUNCTION_6_0();
  v60 = v0;
  v61 = v1;
  v58 = type metadata accessor for AppLaunchIntent(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v4 - v3);
  v5 = sub_26618B790();
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v12);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_4(&v52 - v14);
  v15 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v20 - v19);
  v56 = sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v55 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v24 - v23);
  v25 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_4();
  v31 = v30 - v29;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v32 = __swift_project_value_buffer(v25, qword_2814B4A98);
  (*(v27 + 16))(v31, v32, v25);
  v33 = sub_26618C690();
  v34 = sub_26618CAA0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_6_2();
    v53 = v11;
    *v35 = 0;
    _os_log_impl(&dword_2660B7000, v33, v34, "Device resolution was required but none were found. Dialoging failure and completing the flow.", v35, 2u);
    v11 = v53;
    OUTLINED_FUNCTION_7_2();
  }

  (*(v27 + 8))(v31, v25);
  v36 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input;
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_48_0();
  if (__swift_getEnumTagSinglePayload(v36, 1, v5))
  {
    sub_2660BF79C(v36, &qword_28005C060, &qword_26618FD10);
LABEL_19:
    v45 = 0;
    v47 = 0;
    v48 = 0;
    goto LABEL_20;
  }

  (*(v7 + 16))(v11, v36, v5);
  sub_2660BF79C(v36, &qword_28005C060, &qword_26618FD10);
  v37 = v59;
  sub_26618B770();
  (*(v7 + 8))(v11, v5);
  if ((*(v17 + 88))(v37, v15) != *MEMORY[0x277D5C128])
  {
    v49 = *(v17 + 8);
    v17 += 8;
    v49(v37, v15);
    goto LABEL_19;
  }

  (*(v17 + 96))(v37, v15);
  v38 = v55;
  v39 = v54;
  v40 = v37;
  v41 = v56;
  (*(v55 + 32))(v54, v40, v56);
  v42 = v57;
  (*(v38 + 16))(v57, v39, v41);
  if (qword_2814B3DB8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_16_3();
  v17 = sub_2660E9668(v43, v44, &unk_2661939B8);
  sub_26618BDA0();
  if (v63)
  {
    goto LABEL_14;
  }

  if (qword_2814B3DD0 != -1)
  {
    swift_once();
  }

  sub_26618BDA0();
  if (v63)
  {
LABEL_14:

    v45 = 1;
  }

  else
  {
    v45 = 0;
  }

  if (qword_2814B3D38 != -1)
  {
    swift_once();
  }

  sub_26618BDA0();
  OUTLINED_FUNCTION_2_10();
  sub_2660E850C(v42, v46);
  (*(v38 + 8))(v39, v41);
  v47 = v62;
  v48 = v63;
LABEL_20:
  sub_2660C5864(v25 + 56, &v64);
  sub_2660E83E4(v25 + 416, &v62);
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_47_0(v50);
  *(v17 + 112) = v45;
  *(v17 + 120) = v47;
  *(v17 + 128) = v48;
  v51 = sub_26618AC90();
  OUTLINED_FUNCTION_41_0(v51);
  v62 = sub_26618AC80();
  sub_26618B340();

  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_2660E6E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_2660D3260;

  return sub_26617A4E0();
}

void sub_2660E6EEC()
{
  OUTLINED_FUNCTION_6_0();
  v75 = v0;
  v76 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  OUTLINED_FUNCTION_3_0(v2);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  v5 = OUTLINED_FUNCTION_9_4(&v67 - v4);
  v71 = type metadata accessor for AppLaunchIntent(v5);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v8 - v7);
  v9 = sub_26618B790();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_4();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v16);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_4(&v67 - v18);
  v19 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v22 - v21);
  v70 = sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v69 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_9_4(v26 - v25);
  v27 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_4();
  v33 = v32 - v31;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  __swift_project_value_buffer(v27, qword_2814B4A98);
  OUTLINED_FUNCTION_28_1();
  v34(v33);
  v35 = sub_26618C690();
  v36 = sub_26618CAA0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_6_2();
    v67 = v15;
    *v37 = 0;
    _os_log_impl(&dword_2660B7000, v35, v36, "A failure occured at some point", v37, 2u);
    v15 = v67;
    OUTLINED_FUNCTION_7_2();
  }

  (*(v29 + 8))(v33, v27);
  v38 = OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input;
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_48_0();
  if (__swift_getEnumTagSinglePayload(v38, 1, v9))
  {
    v39 = &qword_28005C060;
    v40 = &qword_26618FD10;
    v41 = v38;
LABEL_7:
    sub_2660BF79C(v41, v39, v40);
LABEL_14:
    v60 = 0;
    v61 = 0;
    goto LABEL_15;
  }

  (*(v11 + 16))(v15, v38, v9);
  sub_2660BF79C(v38, &qword_28005C060, &qword_26618FD10);
  v42 = v74;
  sub_26618B770();
  (*(v11 + 8))(v15, v9);
  v43 = OUTLINED_FUNCTION_46_0();
  if (v44(v43) != *MEMORY[0x277D5C128])
  {
    v58 = OUTLINED_FUNCTION_46_0();
    v59(v58);
    goto LABEL_14;
  }

  v45 = OUTLINED_FUNCTION_46_0();
  v46(v45);
  v47 = v69;
  v48 = v68;
  v49 = v42;
  v50 = v70;
  (*(v69 + 32))(v68, v49, v70);
  v51 = v72;
  (*(v47 + 16))(v72, v48, v50);
  if (qword_2814B3D40 != -1)
  {
    swift_once();
  }

  v19 = _s11ApplicationVMa(0);
  OUTLINED_FUNCTION_16_3();
  sub_2660E9668(v52, v53, &unk_2661939B8);
  OUTLINED_FUNCTION_18_4();
  sub_2660E9668(v54, v55, &unk_26619303C);
  v56 = v73;
  sub_26618BD90();
  if (__swift_getEnumTagSinglePayload(v56, 1, v19) == 1)
  {
    OUTLINED_FUNCTION_2_10();
    sub_2660E850C(v51, v57);
    (*(v47 + 8))(v48, v50);
    v39 = &qword_28005C220;
    v40 = &qword_266190D70;
    v41 = v56;
    goto LABEL_7;
  }

  if (qword_2814B3D88 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_18_4();
  sub_2660E9668(v64, v65, &unk_26619300C);
  sub_26618BDA0();
  OUTLINED_FUNCTION_2_10();
  sub_2660E850C(v51, v66);
  (*(v47 + 8))(v48, v50);
  v60 = v77[0];
  v61 = v77[1];
  sub_2660E850C(v56, _s11ApplicationVMa);
LABEL_15:
  sub_2660C5864(v27 + 56, &v78);
  sub_2660E83E4(v27 + 416, v77);
  v62 = swift_allocObject();
  OUTLINED_FUNCTION_47_0(v62);
  *(v19 + 112) = v60;
  *(v19 + 120) = v61;
  *(v19 + 128) = 0;
  v63 = sub_26618AC90();
  OUTLINED_FUNCTION_41_0(v63);
  v77[0] = sub_26618AC80();
  sub_26618B340();

  OUTLINED_FUNCTION_7_1();
}

uint64_t sub_2660E7638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_2660D2E00;

  return sub_26617AA58();
}

void sub_2660E7704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v28 = v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &a9 - v33;
  if (v25)
  {
    if (v25 == 1)
    {
      v39 = 5;
    }

    else if (v25 == 2)
    {
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      __swift_project_value_buffer(v26, qword_2814B4A98);
      OUTLINED_FUNCTION_28_1();
      v35(v32);
      v36 = sub_26618C690();
      v37 = sub_26618CAB0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_6_2();
        *v38 = 0;
        _os_log_impl(&dword_2660B7000, v36, v37, "Unexpected device resolution result", v38, 2u);
        OUTLINED_FUNCTION_7_2();
      }

      (*(v28 + 8))(v32, v26);
      v39 = 6;
    }

    else
    {
      v40 = qword_2814B2C40;
      v41 = v25;
      if (v40 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      __swift_project_value_buffer(v26, qword_2814B4A98);
      OUTLINED_FUNCTION_28_1();
      v42(v34);
      v43 = v41;
      v44 = sub_26618C690();
      v45 = sub_26618CAB0();
      sub_2660E83D4(v25);
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_49_0();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        *(v46 + 4) = v43;
        *v47 = v25;
        v48 = v43;
        _os_log_impl(&dword_2660B7000, v44, v45, "ExecutionDeviceResolutionFlow selected device: %@", v46, 0xCu);
        sub_2660BF79C(v47, &qword_28005C1F8, &unk_266190550);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      (*(v28 + 8))(v34, v26);
      v49 = *(v23 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice);
      *(v23 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_executionDevice) = v25;

      v39 = 4;
    }
  }

  else
  {
    v39 = 3;
  }

  *(v23 + 592) = v39;
  OUTLINED_FUNCTION_7_1();
}

void *sub_2660E79E4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  sub_2660D31B4((v0 + 52));
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 69);
  sub_2660BF79C(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents20LaunchAppWrapperFlow_input, &qword_28005C060, &qword_26618FD10);

  return v0;
}

uint64_t sub_2660E7A94()
{
  sub_2660E79E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for LaunchAppWrapperFlow(uint64_t a1)
{
  result = qword_2814B3C70;
  if (!qword_2814B3C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660E7B40(uint64_t a1)
{
  sub_2660CF61C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for LaunchAppWrapperFlow.State(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for LaunchAppWrapperFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2660E7D70()
{
  result = qword_28005C218;
  if (!qword_28005C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C218);
  }

  return result;
}

uint64_t sub_2660E7E10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D2E00;

  return sub_2660E367C();
}

uint64_t sub_2660E7EAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LaunchAppWrapperFlow(0);

  return sub_26618AFE0();
}

uint64_t sub_2660E7EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriRemembersStoreProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660E7F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriRemembersStoreProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660E7FB0(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for LaunchAppIntent();
  type metadata accessor for LaunchAppIntentResponse();
  sub_26618AF60();
  sub_26618C360();
  swift_allocObject();
  sub_26618C350();
  sub_26618AEC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C230, &unk_266190588);
  sub_26618AF20();
  v6 = type metadata accessor for LaunchAppNeedsValueStrategy();
  v19[0] = sub_26612C5D4(v6);
  sub_2660E9668(qword_2814B3890, type metadata accessor for LaunchAppNeedsValueStrategy, &unk_266192568);
  sub_26618AEA0();

  sub_26618AF00();
  type metadata accessor for LaunchAppHandleIntentStrategy();
  v7 = a1;
  v8 = sub_26611CFC4(a1);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v20 = &type metadata for AppLaunchFlowFactoryImpl;
  v21 = &off_2877CD5D8;
  sub_2660C5864(a2, v18);
  sub_2660C5864(v19, v17);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_2660B9EB8(v18, v9 + 24);
  sub_2660B9EB8(v17, v9 + 64);
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_26618AF10();
  v10 = type metadata accessor for LaunchAppDisambiguationStrategy();
  v11 = sub_2661159F4(v10);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v20 = &type metadata for AppLaunchFlowFactoryImpl;
  v21 = &off_2877CD5D8;
  sub_2660C5864(a2, v18);
  sub_2660C5864(v19, v17);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  sub_2660B9EB8(v18, v12 + 24);
  sub_2660B9EB8(v17, v12 + 64);
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_26618AF50();
  type metadata accessor for LaunchAppUnsupportedValueStrategy();
  v13 = v7;
  v14 = sub_2661313DC(a1);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v20 = &type metadata for AppLaunchFlowFactoryImpl;
  v21 = &off_2877CD5D8;
  sub_2660C5864(a2, v18);
  sub_2660C5864(v19, v17);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  sub_2660B9EB8(v18, v15 + 24);
  sub_2660B9EB8(v17, v15 + 64);
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_26618AF40();
  type metadata accessor for LaunchAppConfirmationStrategy();
  v19[0] = sub_266112E80();
  sub_2660E9668(qword_2814B37B0, type metadata accessor for LaunchAppConfirmationStrategy, &unk_266191A30);
  sub_26618AEE0();

  sub_26618AF30();
}

void sub_2660E83D4(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_2660E8440(uint64_t a1)
{
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  if (*(v1 + 129))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_2660D2E00;

  return sub_2660E7638(a1, v1 + 16, v4, v5, v7 | v6);
}

uint64_t sub_2660E850C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2660E8564(uint64_t a1)
{
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2660D3260;

  return sub_2660E6E24(a1, v1 + 16, v4, v5, v6);
}

uint64_t sub_2660E8620(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SiriRemembersStoreProvider(0);
  v27[3] = v8;
  v27[4] = &off_2877CC750;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  sub_2660E7F4C(a2, boxed_opaque_existential_0);
  v26[3] = type metadata accessor for CoreAnalyticsService();
  v26[4] = &off_2877CD310;
  v26[0] = a3;
  sub_2660C5864(a1, a4 + 16);
  sub_2660C5864(v27, a4 + 56);
  sub_2660C5864(v26, a4 + 96);
  sub_2660C5864(v27, v25);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v25[3]);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v23 = v8;
  v24 = &off_2877CC750;
  v14 = __swift_allocate_boxed_opaque_existential_0(v22);
  sub_2660E7F4C(v12, v14);
  type metadata accessor for HistoricalDeviceInteractionProvider();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v15[5] = v8;
  v15[6] = &off_2877CC750;
  v20 = __swift_allocate_boxed_opaque_existential_0(v15 + 2);
  sub_2660E7F4C(v18, v20);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v25);
  *(a4 + 136) = v15;
  return a4;
}

uint64_t sub_2660E8888(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = type metadata accessor for SiriRemembersStoreProvider(0);
  v22 = &off_2877CC750;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_2660E7F4C(a2, boxed_opaque_existential_0);
  v7 = type metadata accessor for CoreAnalyticsService();
  v19[3] = v7;
  v19[4] = &off_2877CD310;
  v19[0] = a3;
  type metadata accessor for LaunchAppDeviceResolutionStrategy();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v7);
  MEMORY[0x28223BE20](v13);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_2660E8620(a1, v11, *v15, v8);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v17;
}

void *sub_2660E8A7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v84 = a6;
  v85 = a3;
  v92 = a5;
  v87 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v81 - v17;
  v83 = type metadata accessor for LaunchAppDeviceResolutionStrategy();
  v118[3] = v83;
  v118[4] = &off_2877CAF18;
  v118[0] = a1;
  v82 = type metadata accessor for BaseDialogProvider();
  v117[3] = v82;
  v117[4] = &off_2877CAA90;
  v117[0] = a4;
  v91 = type metadata accessor for SiriRemembersStoreProvider(0);
  v116[3] = v91;
  v116[4] = &off_2877CC750;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v116);
  sub_2660E7F4C(a7, boxed_opaque_existential_0);
  v90 = type metadata accessor for CoreAnalyticsService();
  v115[3] = v90;
  v115[4] = &off_2877CD310;
  v115[0] = a8;
  v114[3] = &type metadata for ReferenceResolver;
  v114[4] = &off_2877CC6F0;
  v20 = swift_allocObject();
  v114[0] = v20;
  v21 = *(a9 + 16);
  *(v20 + 16) = *a9;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a9 + 32);
  sub_2660C5864(v118, v113);
  v22 = sub_26618B790();
  v86 = v22;
  v88 = *(v22 - 8);
  v89 = v18;
  (*(v88 + 16))(v18, a2, v22);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v22);
  sub_2660C5864(a3, v112);
  sub_2660C5864(v117, v111);
  sub_2660C5864(v92, v110);
  sub_2660C5864(a6, v109);
  sub_2660C5864(v116, v108);
  sub_2660C5864(v115, v107);
  sub_2660C5864(v114, v106);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v113, v113[3]);
  MEMORY[0x28223BE20](v23);
  v25 = (&v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v111, v111[3]);
  MEMORY[0x28223BE20](v27);
  v29 = (&v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v108, v108[3]);
  MEMORY[0x28223BE20](v31);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v107, v107[3]);
  MEMORY[0x28223BE20](v35);
  v37 = (&v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v106, v106[3]);
  MEMORY[0x28223BE20](v39);
  v41 = &v81 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41);
  v43 = *v25;
  v44 = *v29;
  v45 = *v37;
  v46 = v82;
  v47 = v83;
  v105[3] = v83;
  v105[4] = &off_2877CAF18;
  v105[0] = v43;
  v103 = v82;
  v104 = &off_2877CAA90;
  v102[0] = v44;
  v100 = v91;
  v101 = &off_2877CC750;
  v48 = __swift_allocate_boxed_opaque_existential_0(v99);
  sub_2660E7F4C(v33, v48);
  v97 = v90;
  v98 = &off_2877CD310;
  v96[0] = v45;
  v94 = &type metadata for ReferenceResolver;
  v95 = &off_2877CC6F0;
  v49 = swift_allocObject();
  v93[0] = v49;
  v50 = *(v41 + 1);
  *(v49 + 16) = *v41;
  *(v49 + 32) = v50;
  *(v49 + 48) = *(v41 + 4);
  type metadata accessor for ExecutionDeviceResolutionFlow(0);
  v51 = swift_allocObject();
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v105, v47);
  MEMORY[0x28223BE20](v52);
  v54 = (&v81 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  v56 = __swift_mutable_project_boxed_opaque_existential_1(v102, v103);
  MEMORY[0x28223BE20](v56);
  v58 = (&v81 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v99, v100);
  MEMORY[0x28223BE20](v60);
  v62 = &v81 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v63 + 16))(v62);
  v64 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  MEMORY[0x28223BE20](v64);
  v66 = (&v81 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66);
  v68 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  MEMORY[0x28223BE20](v68);
  v70 = &v81 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v71 + 16))(v70);
  v72 = *v54;
  v73 = *v58;
  v74 = *v66;
  v51[5] = v47;
  v51[6] = &off_2877CAF18;
  v51[2] = v72;
  v51[15] = v46;
  v51[16] = &off_2877CAA90;
  v51[12] = v73;
  v51[30] = v91;
  v51[31] = &off_2877CC750;
  v75 = __swift_allocate_boxed_opaque_existential_0(v51 + 27);
  sub_2660E7F4C(v62, v75);
  v51[35] = v90;
  v51[36] = &off_2877CD310;
  v51[32] = v74;
  v51[40] = &type metadata for ReferenceResolver;
  v51[41] = &off_2877CC6F0;
  v76 = swift_allocObject();
  v51[37] = v76;
  v77 = *(v70 + 1);
  *(v76 + 16) = *v70;
  *(v76 + 32) = v77;
  *(v76 + 48) = *(v70 + 4);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v85);
  v78 = v86;
  (*(v88 + 8))(v87, v86);
  __swift_destroy_boxed_opaque_existential_1(v114);
  __swift_destroy_boxed_opaque_existential_1(v115);
  __swift_destroy_boxed_opaque_existential_1(v116);
  __swift_destroy_boxed_opaque_existential_1(v117);
  __swift_destroy_boxed_opaque_existential_1(v118);
  v79 = OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_input;
  __swift_storeEnumTagSinglePayload(v51 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_input, 1, 1, v78);
  swift_beginAccess();
  sub_2660CFB90(v89, v51 + v79);
  swift_endAccess();
  sub_2660B9EB8(v112, (v51 + 7));
  sub_2660B9EB8(v110, (v51 + 17));
  sub_2660B9EB8(v109, (v51 + 22));
  *(v51 + OBJC_IVAR____TtC20SiriAppLaunchIntents29ExecutionDeviceResolutionFlow_state) = 0x8000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v99);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v105);
  __swift_destroy_boxed_opaque_existential_1(v106);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_destroy_boxed_opaque_existential_1(v113);
  return v51;
}

unint64_t sub_2660E958C()
{
  result = qword_2814B4828;
  if (!qword_2814B4828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C240, qword_2661905A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B4828);
  }

  return result;
}

uint64_t objectdestroy_42Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2660E9668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL OUTLINED_FUNCTION_15_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_19_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_47_0(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 248), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_48_0()
{
  v4 = *(v2 - 272);

  return sub_2660CFA28(v1 + v0, v4);
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

uint64_t sub_2660E9948(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2660E99D8(uint64_t a1)
{
  *(v1 + 144) = a1;
  v2 = OUTLINED_FUNCTION_3_6();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2660E9A00()
{
  OUTLINED_FUNCTION_1_0();
  __swift_project_boxed_opaque_existential_1(*(v0 + 144), *(*(v0 + 144) + 24));
  OUTLINED_FUNCTION_12_1();
  if (sub_26618B160())
  {
    [objc_opt_self() setRemotePresentationEnabled_];
  }

  v1 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_2660E9B58;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C268, qword_2661943E0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2660E9CD8;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v2;
  [v1 activateWithDomainIdentifier:0 noteIdentifier:0 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2660E9B58()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    v5 = sub_2660E9C70;
  }

  else
  {
    v5 = sub_2660E9C58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2660E9C70()
{
  OUTLINED_FUNCTION_1_0();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2660E9CD8(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    return sub_2660E9948(v3, a2);
  }

  return j__swift_continuation_throwingResume();
}

uint64_t sub_2660E9D60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  sub_26618B0E0();
  type metadata accessor for QuickNoteActivationProvider();
  v3 = swift_allocObject();
  v4 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  v5 = type metadata accessor for BaseDialogProvider();
  v6 = swift_allocObject();
  sub_26618B600();
  v7 = sub_26618B470();
  swift_allocObject();
  v8 = sub_26618B460();
  sub_26618B810();
  sub_26618B040();
  v23[3] = v5;
  v23[4] = &off_2877CAA90;
  v23[0] = v6;
  v22[3] = v7;
  v22[4] = MEMORY[0x277D5BD58];
  v22[0] = v8;
  v20 = &type metadata for AppLaunchFlowFactoryImpl;
  v21 = &off_2877CD5D8;
  type metadata accessor for LaunchQuickNoteFlow(0);
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v5);
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_mutable_project_boxed_opaque_existential_1(v19, v20);

  *(v9 + 312) = &type metadata for AppLaunchFlowFactoryImpl;
  *(v9 + 320) = &off_2877CD5D8;
  v13 = OBJC_IVAR____TtC20SiriAppLaunchIntents19LaunchQuickNoteFlow_input;
  __swift_storeEnumTagSinglePayload(v9 + OBJC_IVAR____TtC20SiriAppLaunchIntents19LaunchQuickNoteFlow_input, 1, 1, v4);
  sub_2660C5864(v27, v9 + 16);
  *(v9 + 56) = v3;
  *(v9 + 64) = &off_2877CB228;
  swift_beginAccess();
  sub_2660DE7DC(v2, v9 + v13);
  swift_endAccess();
  sub_2660C5864(v26, v9 + 72);
  sub_2660C5864(v22, v9 + 112);
  sub_2660C5864(v25, v9 + 248);
  sub_2660C5864(v9 + 248, v9 + 152);
  sub_2660C5864(v9 + 112, v9 + 192);
  v14 = sub_26618C8A0();
  LODWORD(v4) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_2660CFA98(v2);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v22);
  *(v9 + 240) = v4 == 1;
  sub_2660C5864(v9 + 152, v18);
  type metadata accessor for LocUtil();
  v15 = swift_allocObject();
  sub_2660B9EB8(v18, v15 + 16);
  *(v9 + 232) = v15;
  sub_2660B9EB8(&v24, v9 + 328);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v9;
}

uint64_t sub_2660EA0E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_26618B790();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20SiriAppLaunchIntents19LaunchQuickNoteFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v5, v1 + v7);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660EA1E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LaunchQuickNoteFlow(0);
  sub_2660EB86C();
  return sub_26618AFB0();
}

uint64_t sub_2660EA248()
{
  OUTLINED_FUNCTION_18();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_26618C6B0();
  v1[6] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[7] = v4;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = sub_26618B500();
  v1[10] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_8_2();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660EA34C()
{
  v1 = v0[11];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1((v2 + 248), *(v2 + 272));
  sub_26618B4F0();
  v3 = sub_26618B110();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_12_1();
  v4(v5);
  if (v3)
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    v9 = __swift_project_value_buffer(v7, qword_2814B4A98);
    v0[13] = v9;
    v10 = *(v8 + 16);
    v0[14] = v10;
    v0[15] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v9, v7);
    v11 = sub_26618C690();
    v12 = sub_26618CAA0();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v13, v14, "LaunchQuickNoteFlow#execute requestng quicknote activation");
      OUTLINED_FUNCTION_7_2();
    }

    v15 = v0[7];

    v0[16] = *(v15 + 8);
    v16 = OUTLINED_FUNCTION_12_1();
    v17(v16);
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[17] = v18;
    *v18 = v19;
    v18[1] = sub_2660EA67C;

    return sub_2660E99D8(v2 + 248);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
    v21 = sub_26618AE80();
    OUTLINED_FUNCTION_0_4(v21);
    *(swift_allocObject() + 16) = xmmword_26618E190;
    sub_26618B4F0();
    sub_26618AE70();
    v22 = OUTLINED_FUNCTION_12_1();
    v4(v22);
    v23 = sub_26618AC10();

    v0[2] = v23;
    sub_26618AE60();
    sub_26618B330();

    OUTLINED_FUNCTION_54();

    return v24();
  }
}

uint64_t sub_2660EA67C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_2660EA858;
  }

  else
  {
    v7 = sub_2660EA778;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2660EA778()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 40) + 16), *(*(v0 + 40) + 40));
  v1 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_26618B5C0();

  sub_26618B360();

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_2660EA858()
{
  v20 = v0;
  v1 = *(v0 + 144);
  (*(v0 + 112))(*(v0 + 64), *(v0 + 104), *(v0 + 48));
  v2 = v1;
  v3 = sub_26618C690();
  v4 = sub_26618CAA0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v18 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v0 + 24) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v9 = sub_26618C8D0();
    v11 = sub_266103A98(v9, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2660B7000, v3, v4, "Received an error launching quicknote %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v12 = OUTLINED_FUNCTION_12_1();
    v18(v12);
  }

  else
  {
    v13 = *(v0 + 128);

    v14 = OUTLINED_FUNCTION_12_1();
    v13(v14);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 152) = v15;
  *v15 = v16;
  v15[1] = sub_2660EAA64;

  return sub_2660EABE4();
}

uint64_t sub_2660EAA64()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_7_6();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2660EAB4C()
{

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_2660EABE4()
{
  OUTLINED_FUNCTION_18();
  v1[21] = v2;
  v1[22] = v0;
  v3 = sub_26618B8E0();
  v1[23] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[24] = v4;
  v1[25] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B790();
  v1[26] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[27] = v6;
  v1[28] = OUTLINED_FUNCTION_8_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v1[29] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B800();
  v1[30] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[31] = v8;
  v1[32] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618B840();
  v1[33] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[34] = v10;
  v1[35] = OUTLINED_FUNCTION_8_2();
  v11 = sub_26618C6B0();
  v1[36] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v1[37] = v12;
  v1[38] = OUTLINED_FUNCTION_8_2();
  v13 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2660EADE8()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (os_log_type_enabled(v5, v6))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v7, v8, "Creating failure dialog for QuickNote");
    OUTLINED_FUNCTION_7_2();
  }

  v9 = v0[29];
  v10 = v0[26];
  v11 = v0[22];

  v12 = OUTLINED_FUNCTION_12_1();
  v13(v12);
  v14 = OBJC_IVAR____TtC20SiriAppLaunchIntents19LaunchQuickNoteFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v11 + v14, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    sub_2660CFA98(v0[29]);
  }

  else
  {
    v15 = v0[29];
    (*(v0[27] + 16))(v0[28], v15, v0[26]);
    sub_2660CFA98(v15);
    sub_26618B770();
    v16 = OUTLINED_FUNCTION_31_0();
    v17(v16);
    v18 = OUTLINED_FUNCTION_12_1();
    if (v19(v18) == *MEMORY[0x277D5C160])
    {
      v21 = v0[34];
      v20 = v0[35];
      v23 = v0[32];
      v22 = v0[33];
      (*(v0[31] + 96))(v23, v0[30]);
      (*(v21 + 32))(v20, v23, v22);
      sub_26618B820();
      v24 = sub_266144AE8();
      v25 = OUTLINED_FUNCTION_31_0();
      v26(v25);
      if (v24)
      {
        sub_26613B704();
        v28 = v27;

        v29 = OUTLINED_FUNCTION_31_0();
        v30(v29);
        goto LABEL_13;
      }

      v31 = OUTLINED_FUNCTION_31_0();
      v32(v31);
    }

    else
    {
      (*(v0[31] + 8))(v0[32], v0[30]);
    }
  }

  v28 = 0;
LABEL_13:
  v0[39] = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[40] = v33;
  *v33 = v34;
  v33[1] = sub_2660EB11C;

  return sub_26617AA58();
}