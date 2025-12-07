unint64_t sub_2697951CC()
{
  result = qword_2803244A0;
  if (!qword_2803244A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803244A0);
  }

  return result;
}

unint64_t sub_269795220()
{
  result = qword_2803244A8;
  if (!qword_2803244A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324490, &qword_269860150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803244A8);
  }

  return result;
}

unint64_t sub_269795284()
{
  result = qword_2803244B0;
  if (!qword_2803244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803244B0);
  }

  return result;
}

unint64_t sub_2697952D8()
{
  result = qword_2803244B8;
  if (!qword_2803244B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803244B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceCapabilitiesNoneMatchedReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_269795408(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_26979545C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_2697954D4()
{
  result = qword_2803244D0;
  if (!qword_2803244D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803244D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_32()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t sub_26979555C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26979559C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269795600(void *a1)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244D8, &qword_2698603C8);
  OUTLINED_FUNCTION_8_9(v2);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v3);
  v40 = v34 - v4;
  OUTLINED_FUNCTION_2_13();
  sub_269854734();
  OUTLINED_FUNCTION_8();
  v35 = v6;
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_7();
  v37 = v7;
  OUTLINED_FUNCTION_2_13();
  sub_269854584();
  OUTLINED_FUNCTION_8();
  v38 = v9;
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  OUTLINED_FUNCTION_8_9(v12);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v13);
  v15 = v34 - v14;
  v16 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v34 - v23;
  sub_269851D94();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_269853474();
  if (v25)
  {
    sub_269851D44();

    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_269796034(v15);
    }

    else
    {
      (*(v18 + 8))(v24, v16);
      (*(v18 + 32))(v24, v15, v16);
    }
  }

  v26 = v1[8];
  v34[2] = v1[9];
  v34[1] = __swift_project_boxed_opaque_existential_1(v1 + 5, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244F0, &qword_2698603E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2698590C0;
  v28 = v41;
  *(v27 + 32) = v41;
  *v11 = v27;
  v11[1] = 0;
  (*(v18 + 16))(v22, v24, v16);
  (*(v35 + 104))(v37, *MEMORY[0x277D61F80], v36);
  v29 = sub_269854724();
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v29);
  v30 = v28;
  sub_269854714();
  v32 = v38;
  v31 = v39;
  (*(v38 + 104))(v11, *MEMORY[0x277D61ED0], v39);
  sub_2698546B4();
  (*(v32 + 8))(v11, v31);
  return (*(v18 + 8))(v24, v16);
}

uint64_t sub_269795A18(int a1)
{
  v2 = v1;
  LODWORD(v68) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244D8, &qword_2698603C8);
  OUTLINED_FUNCTION_8_9(v3);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v4);
  v69 = &v55 - v5;
  OUTLINED_FUNCTION_2_13();
  sub_269854734();
  OUTLINED_FUNCTION_8();
  v72 = v7;
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_7();
  v66 = v8;
  OUTLINED_FUNCTION_2_13();
  v74 = sub_269854584();
  OUTLINED_FUNCTION_8();
  v70 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_7();
  v67 = v11;
  OUTLINED_FUNCTION_2_13();
  sub_269854574();
  OUTLINED_FUNCTION_8();
  v76 = v13;
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_7();
  v75 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  OUTLINED_FUNCTION_8_9(v15);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = sub_269851DA4();
  OUTLINED_FUNCTION_8();
  v21 = v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v55 - v26;
  sub_269851D94();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v28 = v27;
  sub_269853474();
  if (v29)
  {
    sub_269851D44();

    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {
      sub_269796034(v18);
    }

    else
    {
      (*(v21 + 8))(v27, v19);
      (*(v21 + 32))(v27, v18, v19);
    }
  }

  v71 = v19;
  v30 = v75;
  v31 = v76;
  v32 = *(v76 + 104);
  v33 = MEMORY[0x277D61EC0];
  LODWORD(v65) = v68 & 1;
  if ((v68 & 1) == 0)
  {
    v33 = MEMORY[0x277D61EB8];
  }

  v34 = v77;
  v32(v75, *v33, v77);
  v35 = v2[9];
  v63 = v2[8];
  v64 = v35;
  v62 = __swift_project_boxed_opaque_existential_1(v2 + 5, v63);
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244E0, &qword_2698603D8) + 48);
  v68 = v21;
  v60 = *(v21 + 16);
  v60(v25, v28, v19);
  v37 = *MEMORY[0x277D61F80];
  v56 = v2;
  v38 = *(v72 + 13);
  v72 = v28;
  v39 = v66;
  v59 = v37;
  v58 = v38;
  v38(v66);
  v40 = sub_269854724();
  v41 = v69;
  v57 = v40;
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v40);
  v42 = v67;
  v61 = v25;
  sub_269854714();
  (*(v31 + 16))(v42 + v36, v30, v34);
  v43 = v70;
  v44 = *(v70 + 104);
  v45 = v74;
  v44(v42, *MEMORY[0x277D61EB0], v74);
  sub_2698546B4();
  v46 = v45;
  v47 = *(v43 + 8);
  v47(v42, v46);
  if (!v65)
  {
    v48 = v56[9];
    v65 = v56[8];
    v70 = v48;
    v64 = __swift_project_boxed_opaque_existential_1(v56 + 5, v65);
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244E8, &qword_2698603E0) + 48);
    v63 = v44;
    v60(v61, v72, v71);
    v58(v39, v59, v73);
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v57);
    sub_269854714();
    v50 = v42;
    v51 = *MEMORY[0x277D61EA8];
    v52 = sub_269854564();
    (*(*(v52 - 8) + 104))(v50 + v49, v51, v52);
    v53 = v74;
    v63(v50, *MEMORY[0x277D61EC8], v74);
    sub_2698546B4();
    v47(v50, v53);
  }

  (*(v76 + 8))(v75, v77);
  return (*(v68 + 8))(v72, v71);
}

uint64_t sub_269796034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26979609C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v10 = __swift_project_value_buffer(v6, qword_28033D910);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2698548B4();
  v12 = sub_269854F14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_16_2();
    *v13 = 0;
    _os_log_impl(&dword_269684000, v11, v12, "Unknown failure occured, sending genericError dialog.", v13, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v7 + 8))(v9, v6);
  sub_2696A73F8(a1, v21);
  sub_2696F3E90(a2, v19);
  sub_2696A73F8(a3, v18);
  v14 = swift_allocObject();
  v15 = v19[1];
  *(v14 + 16) = v19[0];
  *(v14 + 32) = v15;
  *(v14 + 48) = v20;
  sub_26968E5D4(v18, v14 + 56);
  sub_269852774();
  swift_allocObject();
  v21[0] = sub_269852764();
  sub_269853144();
}

uint64_t sub_2697962EC()
{
  OUTLINED_FUNCTION_2_7();
  v0[15] = v1;
  v0[16] = v2;
  v3 = sub_2698548D4();
  v0[17] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v0[18] = v4;
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697963B0()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803244F8, &qword_269860400);
  *v3 = v0;
  v3[1] = sub_2697964B8;

  return MEMORY[0x2822007B8](v0 + 14, 0, 0, 0xD000000000000020, 0x800000026987F440, sub_26979866C, v2, v4);
}

uint64_t sub_2697964B8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697965B8()
{
  v81 = v0;
  v3 = *(v0 + 112);
  v4 = 0x280322000uLL;
  if (!v3)
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    __swift_project_value_buffer(*(v0 + 136), qword_28033D910);
    v39 = OUTLINED_FUNCTION_2_8();
    v40(v39);
    v41 = sub_2698548B4();
    v42 = sub_269854F24();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_16_2();
      *v43 = 0;
      _os_log_impl(&dword_269684000, v41, v42, "Unable to get state of devices from context", v43, 2u);
      OUTLINED_FUNCTION_10();
    }

    v44 = OUTLINED_FUNCTION_22_3();
    v45(v44);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v6 = 1;
    goto LABEL_53;
  }

  v78 = sub_26975004C();
  if (!v78)
  {

    LOBYTE(v2) = 0;
    v37 = 0;
    v6 = 0;
    LOBYTE(v1) = 0;
    goto LABEL_48;
  }

  v5 = 0;
  v71 = 0;
  v72 = 0;
  v6 = 0;
  v7 = 0;
  v76 = v3 & 0xC000000000000001;
  v68 = 0;
  v69 = v3 & 0xFFFFFFFFFFFFFF8;
  v70 = (*(v0 + 144) + 16);
  v74 = v3;
  do
  {
    if (v76)
    {
      v8 = MEMORY[0x26D646120](v5, v3);
    }

    else
    {
      if (v5 >= *(v69 + 16))
      {
        goto LABEL_57;
      }

      v8 = *(v3 + 8 * v5 + 32);
    }

    v1 = v8;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if ([v8 proximity] == 4000)
    {

      v71 = sub_2696CD57C(v1, &selRef_roomName);
      v7 = v10;
    }

    v11 = sub_2696CD57C(v1, &selRef_assistantIdentifier);
    v2 = v12;
    v13 = sub_269854604();
    if (!v2)
    {

      goto LABEL_31;
    }

    if (v11 == v13 && v2 == v14)
    {
    }

    else
    {
      v16 = sub_269855584();

      if ((v16 & 1) == 0)
      {

        goto LABEL_31;
      }
    }

    v73 = v7;

    if (*(v4 + 1760) != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 168);
    v18 = *(v0 + 136);
    v19 = __swift_project_value_buffer(v18, qword_28033D910);
    (*v70)(v17, v19, v18);
    v20 = sub_2698548B4();
    v21 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v21))
    {
      v22 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v22);
      _os_log_impl(&dword_269684000, v20, v18, "RemoteExecutionResponseUtil.getState() Found context for target device - matched assistantIdentifier", v7, 2u);
      OUTLINED_FUNCTION_18_7();
    }

    v23 = OUTLINED_FUNCTION_22_3();
    v24(v23);
    v72 = sub_2696CD57C(v1, &selRef_roomName);
    v6 = v25;
    result = sub_26979859C(v1);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v27 = result;
    v28 = v4;
    v29 = sub_269854A94();
    if (!*(v27 + 16))
    {

LABEL_29:

      goto LABEL_30;
    }

    v2 = sub_26973CEF8(v29, v30);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_29;
    }

    sub_2696B6F94(*(v27 + 56) + 32 * v2, v0 + 16);

    sub_2696B6F94(v0 + 16, v0 + 48);
    v33 = objc_allocWithZone(MEMORY[0x277CEF4D8]);
    v34 = sub_269798530((v0 + 48));
    v35 = [v34 sleepState];

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v68 = v35 == 2;
LABEL_30:
    v4 = v28;
    v7 = v73;
LABEL_31:
    v3 = v74;
    ++v5;
  }

  while (v9 != v78);

  if (v6)
  {
    LOBYTE(v1) = v68;
    if (v7)
    {
      v36 = v7;
      v37 = v72;
      if (v71 == v72 && v36 == v6)
      {

        LOBYTE(v2) = 1;
        v37 = v71;
        v6 = v36;
      }

      else
      {
        LOBYTE(v2) = sub_269855584();
      }
    }

    else
    {
      LOBYTE(v2) = 0;
      v37 = v72;
    }
  }

  else
  {

    LOBYTE(v2) = 0;
    v37 = 0;
    LOBYTE(v1) = v68;
  }

LABEL_48:
  v72 = v37;
  if (*(v4 + 1760) != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v49 = *(v0 + 160);
  v50 = *(v0 + 136);
  v51 = *(v0 + 144);
  v52 = __swift_project_value_buffer(v50, qword_28033D910);
  (*(v51 + 16))(v49, v52, v50);

  v53 = sub_2698548B4();
  v54 = sub_269854F14();

  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 160);
  v57 = *(v0 + 136);
  v58 = *(v0 + 144);
  if (v55)
  {
    v59 = v2;
    v60 = swift_slowAlloc();
    v79 = v57;
    v61 = swift_slowAlloc();
    v80 = v61;
    *v60 = 136315138;
    v77 = v56;
    v62 = v1;
    *(v0 + 80) = v1 & 1;
    *(v0 + 88) = v72;
    *(v0 + 96) = v6;
    v75 = v54;
    v63 = v59 & 1;
    *(v0 + 104) = v59 & 1;

    v64 = sub_269854AE4();
    v66 = sub_26974F520(v64, v65, &v80);

    *(v60 + 4) = v66;
    v48 = v63;
    _os_log_impl(&dword_269684000, v53, v75, "RemoteExecutionResponseUtil.getState() returning RemoteDeviceState: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    OUTLINED_FUNCTION_18_7();
    OUTLINED_FUNCTION_10();

    (*(v58 + 8))(v77, v79);
  }

  else
  {

    (*(v58 + 8))(v56, v57);
    v48 = v2 & 1;
    v62 = v1;
  }

  v46 = v62 & 1;
  v47 = v72;
LABEL_53:

  v67 = *(v0 + 8);

  return v67(v46, v47, v6, v48);
}

uint64_t sub_269796CBC()
{
  OUTLINED_FUNCTION_2_7();
  v0[17] = v1;
  v0[18] = v2;
  v0[15] = v3;
  v0[16] = v4;
  v0[14] = v5;
  v6 = sub_2698548D4();
  v0[19] = v6;
  OUTLINED_FUNCTION_5_12(v6);
  v0[20] = v7;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v8 = sub_269852624();
  v0[24] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v0[25] = v9;
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_269796DE8()
{
  v1 = *(v0 + 120);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (sub_2696CB5D4(v2, v3) & 1) != 0 || (__swift_project_boxed_opaque_existential_1(*(v0 + 120), v1[3]), (sub_269852CE4()))
  {
    sub_2696A73F8(*(v0 + 120), v0 + 72);
    type metadata accessor for LocUtil();
    inited = swift_initStackObject();
    sub_26968E5D4((v0 + 72), inited + 16);
    sub_269830114();
    v6 = v5;
    *(v0 + 224) = v7;
    *(v0 + 232) = v5;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((inited + 16));
    if (v6)
    {
      v8 = *(v0 + 136);
      if (v8)
      {
        v9 = *(v0 + 144);
        v10 = *(v0 + 128);
        v11 = v9[3];
        v12 = v9[4];
        __swift_project_boxed_opaque_existential_1(v9, v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
        v13 = swift_allocObject();
        *(v0 + 240) = v13;
        *(v13 + 16) = xmmword_269857710;
        *(v13 + 32) = v10;
        *(v13 + 40) = v8;
        v14 = *(v12 + 8);

        v35 = (v14 + *v14);
        v15 = swift_task_alloc();
        *(v0 + 248) = v15;
        *v15 = v0;
        v15[1] = sub_2697971DC;

        return v35(v13, v11, v12);
      }

      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      __swift_project_value_buffer(*(v0 + 152), qword_28033D910);
      v25 = OUTLINED_FUNCTION_2_8();
      v26(v25);
      v19 = sub_2698548B4();
      v27 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_5(v27))
      {
        v28 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v28);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v29, v30, "Missing mediaRouteId, skipping TV Remote button");
        OUTLINED_FUNCTION_18_7();
      }

      v24 = *(v0 + 176);
    }

    else
    {
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      __swift_project_value_buffer(*(v0 + 152), qword_28033D910);
      v17 = OUTLINED_FUNCTION_2_8();
      v18(v17);
      v19 = sub_2698548B4();
      v20 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_5(v20))
      {
        v21 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v21);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v22, v23, "Unable to localize button label");
        OUTLINED_FUNCTION_18_7();
      }

      v24 = *(v0 + 168);
    }

    v31 = *(v0 + 152);
    v32 = *(v0 + 160);

    (*(v32 + 8))(v24, v31);
  }

  v33 = type metadata accessor for VideoDataModels.ButtonModel(0);
  OUTLINED_FUNCTION_17_14(v33);

  OUTLINED_FUNCTION_7_7();

  return v34();
}

uint64_t sub_2697971DC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;
  *(v4 + 256) = v3;

  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697972E4()
{
  v1 = v0[32];
  if (v1[2])
  {
    v2 = v0[27];
    v3 = v0[25];
    v4 = v0[26];
    v5 = v0[24];
    v6 = v0[14];
    v7 = v1[4];
    v8 = v1[5];

    v9 = [objc_allocWithZone(MEMORY[0x277D47AB0]) init];
    sub_269798608(v7, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F0, &unk_26985D8C0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_269857710;
    v11 = sub_269852664();
    v12 = MEMORY[0x277D63778];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 32));
    *boxed_opaque_existential_1 = v9;
    *(boxed_opaque_existential_1 + 8) = 0;
    (*(*(v11 - 8) + 104))();
    v14 = v9;
    sub_269852634();
    (*(v3 + 16))(v4, v2, v5);
    VideoDataModels.ButtonModel.init(label:actionProperty:)();

    (*(v3 + 8))(v2, v5);
    v15 = type metadata accessor for VideoDataModels.ButtonModel(0);
    v16 = v6;
    v17 = 0;
  }

  else
  {

    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    __swift_project_value_buffer(v0[19], qword_28033D910);
    v18 = OUTLINED_FUNCTION_2_8();
    v19(v18);
    v20 = sub_2698548B4();
    v21 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v21))
    {
      v22 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v22);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v23, v24, "Unable to encode mediaRoute for TV Remote");
      OUTLINED_FUNCTION_18_7();
    }

    v25 = v0[14];

    v26 = OUTLINED_FUNCTION_22_3();
    v27(v26);
    v15 = type metadata accessor for VideoDataModels.ButtonModel(0);
    v16 = v25;
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v17, 1, v15);

  OUTLINED_FUNCTION_7_7();

  return v28();
}

uint64_t sub_2697975C4()
{
  OUTLINED_FUNCTION_2_7();
  v0[47] = v1;
  v0[48] = v2;
  v0[45] = v3;
  v0[46] = v4;
  sub_269852EB4();
  v0[49] = swift_task_alloc();
  v5 = sub_269853634();
  v0[50] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v0[51] = v6;
  v0[52] = swift_task_alloc();
  v7 = sub_2698548D4();
  v0[53] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v0[54] = v8;
  v0[55] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2697976F4()
{
  v33 = v0;
  *(v0 + 56) = 0;
  v1 = *(v0 + 368);
  *(v0 + 60) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  if (v1 < 2)
  {
    goto LABEL_2;
  }

  if (v1 == 2)
  {
    *(v0 + 59) = 1;
    goto LABEL_16;
  }

  sub_26981D690(1836019538, 0xE400000000000000, v1);
  if (v2)
  {
    OUTLINED_FUNCTION_6_29();
    if (v5)
    {
      *(v0 + 64) = v3;
      *(v0 + 72) = v4;
      *(v0 + 57) = 1;
      goto LABEL_16;
    }
  }

  sub_26981D690(0x656369766544, 0xE600000000000000, v1);
  if (!v6)
  {
LABEL_13:
    sub_26981D690(0x797469746E45, 0xE600000000000000, v1);
    if (v10)
    {
      OUTLINED_FUNCTION_6_29();
      if (v11)
      {
        goto LABEL_15;
      }
    }

LABEL_2:
    *(v0 + 57) = 0;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_6_29();
  if (!v9)
  {

    goto LABEL_13;
  }

LABEL_15:
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  *(v0 + 58) = 1;
LABEL_16:
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v14 = *(v0 + 424);
  v15 = __swift_project_value_buffer(v14, qword_28033D910);
  (*(v13 + 16))(v12, v15, v14);
  v16 = *(v0 + 72);
  *(v0 + 96) = *(v0 + 56);
  *(v0 + 112) = v16;
  *(v0 + 128) = *(v0 + 88);
  sub_2696C2924(v0 + 96, v0 + 136);
  v17 = sub_2698548B4();
  v18 = sub_269854F14();
  sub_2696C28F4(v0 + 96);
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 432);
  v21 = *(v0 + 440);
  v22 = *(v0 + 424);
  if (v19)
  {
    v31 = *(v0 + 440);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315138;
    *(v0 + 256) = *(v0 + 96);
    *(v0 + 272) = *(v0 + 112);
    *(v0 + 288) = *(v0 + 128);
    sub_2696C2924(v0 + 96, v0 + 296);
    v25 = sub_269854AE4();
    v27 = sub_26974F520(v25, v26, &v32);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_269684000, v17, v18, "Returning remoteVideoPlayingDeviceNotFoundDialog with params: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v20 + 8))(v31, v22);
  }

  else
  {

    (*(v20 + 8))(v21, v22);
  }

  swift_beginAccess();
  v28 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v28;
  *(v0 + 48) = *(v0 + 88);
  v29 = swift_task_alloc();
  *(v0 + 448) = v29;
  *v29 = v0;
  v29[1] = sub_269797A3C;

  return sub_2696C0FB4();
}

uint64_t sub_269797A3C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v5 + 456) = v1;

  if (v1)
  {
    v8 = sub_269797E64;
  }

  else
  {
    *(v5 + 464) = a1;
    v8 = sub_269797B58;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_269797B58(uint64_t a1)
{
  v2 = v1[58];
  v3 = v1[48];
  sub_269852E64();
  sub_2698535C4();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v4 = swift_allocObject();
  v1[59] = v4;
  *(v4 + 16) = xmmword_2698590C0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = swift_task_alloc();
  v1[60] = v6;
  *v6 = v1;
  v6[1] = sub_269797C9C;
  v7 = v1[45];

  return MEMORY[0x2821BB488](v7);
}

uint64_t sub_269797C9C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_269797D9C()
{
  v1 = OUTLINED_FUNCTION_22_3();
  v2(v1);
  *(v0 + 216) = *(v0 + 56);
  *(v0 + 232) = *(v0 + 72);
  *(v0 + 248) = *(v0 + 88);
  sub_2696C28F4(v0 + 216);

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_269797E64()
{
  v1 = *(v0 + 72);
  *(v0 + 176) = *(v0 + 56);
  *(v0 + 192) = v1;
  *(v0 + 208) = *(v0 + 88);
  sub_2696C28F4(v0 + 176);

  OUTLINED_FUNCTION_7_7();

  return v2();
}

uint64_t sub_269797F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  v3[9] = swift_task_alloc();
  v4 = sub_2698532A4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v5 = swift_task_alloc();
  v3[12] = v5;
  v6 = swift_task_alloc();
  v3[13] = v6;
  *v6 = v3;
  v6[1] = sub_269798038;

  return MEMORY[0x2821BAED8](v5);
}

uint64_t sub_269798038()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  *(v4 + 112) = v0;

  if (v0)
  {
    v5 = sub_269728394;
  }

  else
  {
    v5 = sub_26979813C;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26979813C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_269852CA4();
  v6 = sub_269853234();
  OUTLINED_FUNCTION_17_14(v6);
  v7 = sub_2698538F4();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2698530B4();
  sub_2696B9D80(v0 + 16, &qword_280323028, qword_26985AD20);
  sub_2696B9D80(v3, &qword_280323010, &unk_26985B640);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_7_7();

  return v9();
}

uint64_t sub_2697982A8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324500, &qword_269860408);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-v6];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  *(inited + 32) = sub_269854A94();
  *(inited + 40) = v9;
  *(inited + 48) = sub_269854A94();
  *(inited + 56) = v10;
  sub_269831730(inited);
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_269798674;
  *(v13 + 24) = v12;
  sub_269854484();
}

id sub_269798530(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_26979859C(void *a1)
{
  v1 = [a1 serializedContextByKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2698549E4();

  return v3;
}

void sub_269798608(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setHashedRouteId_];
}

uint64_t sub_269798674(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324500, &qword_269860408);

  return sub_2697984B4(a1);
}

uint64_t sub_2697986F8()
{
  OUTLINED_FUNCTION_2_7();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2696DA938;

  return sub_269797F04(v3, v0 + 16, v0 + 56);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2697987A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2697987FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void *sub_2697988A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2698538C4();
  v3 = type metadata accessor for BaseDialogProvider();
  v22 = OUTLINED_FUNCTION_99_0(v3);
  if (qword_2803226B0 != -1)
  {
    swift_once();
  }

  v23 = qword_28033D8E0;
  sub_2698538C4();
  v4 = type metadata accessor for LocUtil();
  v5 = OUTLINED_FUNCTION_40_5(v4);
  sub_26968E5D4(v25, v5 + 16);
  v6 = type metadata accessor for GlobalsImpl();
  inited = swift_initStaticObject();
  sub_269852C84();
  v8 = sub_2698546A4();
  v9 = sub_269854684();
  if (qword_280322688 != -1)
  {
    swift_once();
  }

  v10 = qword_28033D8B8;
  v11 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v11);
  v12 = sub_269853254();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = OUTLINED_FUNCTION_68_0(v13);
  v14[5] = &type metadata for CoreAnalyticsService;
  v14[6] = &xmmword_287A41610;
  v14[15] = v3;
  v14[16] = &off_287A3DBA0;
  v14[12] = v22;
  v14[20] = type metadata accessor for SiriSignalsRecorder();
  v14[21] = &off_287A44CA0;
  v14[17] = v23;
  v14[26] = v6;
  v14[27] = &off_287A41CD0;
  v14[23] = inited;
  v15 = MEMORY[0x277D61F10];
  v14[46] = v8;
  v14[47] = v15;
  v14[43] = v9;
  v14[31] = type metadata accessor for TrialSignalCollectConfigProvider();
  v14[32] = &off_287A44AE0;
  v14[28] = v10;
  v16 = MEMORY[0x277D5BD58];
  v14[36] = v11;
  v14[37] = v16;
  v14[33] = v12;
  v14[48] = 0;
  v17 = qword_2803238F0;
  v18 = type metadata accessor for MediaNLIntent(0);
  __swift_storeEnumTagSinglePayload(v14 + v17, 1, 1, v18);
  sub_26968E5D4(&v26, (v14 + 7));
  v14[22] = v5;
  sub_26968E5D4(v25, (v14 + 38));
  v14[48] = a1;

  return v14;
}

uint64_t sub_269798AFC()
{
  type metadata accessor for AddToWatchListIntent();
  type metadata accessor for AddToWatchListIntentResponse();
  sub_269852B14();
  sub_269854404();
  swift_allocObject();
  sub_2698543D4();
  sub_269852A44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246B0, &qword_269860610);
  sub_269852AB4();
  sub_2697988A8(0, &qword_2803246D8, &qword_269860628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246D8, &qword_269860628);
  sub_26971CA38(&qword_2803246E0, &qword_2803246D8, &qword_269860628);
  sub_269852A74();

  sub_269852AF4();
  type metadata accessor for AddToWatchListUnsupportedValueStrategy();
  *&v2 = sub_2697473A4();
  sub_26979C320(&qword_2803246E8, type metadata accessor for AddToWatchListUnsupportedValueStrategy);
  sub_269852A94();

  sub_269852AD4();
  sub_2698538C4();
  type metadata accessor for BaseDialogProvider();
  v0 = swift_allocObject();
  *&v2 = sub_26979C204(&v2, v0, type metadata accessor for AddToWatchListHandleIntentStrategy);
  type metadata accessor for AddToWatchListHandleIntentStrategy();
  sub_26979C320(&qword_2803246F0, type metadata accessor for AddToWatchListHandleIntentStrategy);
  sub_269852A34();

  sub_269852AA4();
}

void sub_269798DB8()
{
  OUTLINED_FUNCTION_19_1();
  sub_26969329C(0, &qword_2815718F0, 0x277CD3EC0);
  sub_26969329C(0, &qword_2803245E0, 0x277CD3EC8);
  OUTLINED_FUNCTION_16_16();
  sub_269852B14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DC0, &unk_26985CF00);
  OUTLINED_FUNCTION_12_26();
  sub_269852AB4();
  if (qword_280322450 != -1)
  {
    swift_once();
  }

  sub_26979BF5C(qword_28033D628, &v39);
  sub_2698538C4();
  v0 = OUTLINED_FUNCTION_22_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v3 = OUTLINED_FUNCTION_44_6(v2);
  sub_26968E5D4(&v36, v3 + 16);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v4, v5, &qword_269860598);
  OUTLINED_FUNCTION_18_15();
  sub_269852A34();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_10_18();
  sub_269852AA4();
  v6 = OUTLINED_FUNCTION_22_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *&v39 = v8;
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v9, v10, &qword_2698605A0);
  OUTLINED_FUNCTION_18_15();
  sub_269852A54();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_10_18();
  sub_269852AC4();
  v11 = type metadata accessor for BaseDialogProvider();
  v12 = OUTLINED_FUNCTION_99_0(v11);

  sub_2698538C4();
  v37 = v11;
  v38 = &off_287A3DBA0;
  *&v36 = v12;
  v13 = type metadata accessor for INPlayMediaUnsupportedValueStrategy();
  v14 = OUTLINED_FUNCTION_44_6(v13);
  __swift_mutable_project_boxed_opaque_existential_1(&v36, v11);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_6_30(v16, v36);
  v18(v17);
  OUTLINED_FUNCTION_39_2();
  *&v39 = v14;
  sub_26979C320(&qword_280324608, type metadata accessor for INPlayMediaUnsupportedValueStrategy);
  OUTLINED_FUNCTION_18_15();
  sub_269852A94();

  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_12_26();
  sub_269852AD4();
  sub_2698538C4();
  v19 = OUTLINED_FUNCTION_20_14();
  v20 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v20);
  OUTLINED_FUNCTION_15_18();

  v21 = sub_269853254();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324610, &qword_2698605A8);
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_52_3();
  sub_26979BFB8(v22, v19, v21, v23);
  OUTLINED_FUNCTION_15_18();

  *&v39 = v21;
  OUTLINED_FUNCTION_14_16(&qword_280324618);
  OUTLINED_FUNCTION_52_3();
  sub_269852A84();

  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_12_26();
  sub_269852B04();
  sub_2698538C4();
  OUTLINED_FUNCTION_20_14();
  v24 = OUTLINED_FUNCTION_50_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_41_4(v26);
  v27 = type metadata accessor for LocUtil();
  v28 = OUTLINED_FUNCTION_40_5(v27);
  sub_26968E5D4(&v39, v28 + 16);
  qword_269860608 = v28;
  *&v39 = &qword_2698605A8;
  OUTLINED_FUNCTION_13_17(&qword_280324628);
  OUTLINED_FUNCTION_18_15();
  sub_269852A74();
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_9_24();
  sub_269852AF4();
  v29 = OUTLINED_FUNCTION_20_14();
  v40 = v11;
  v41 = &off_287A3DBA0;
  *&v39 = v29;
  sub_2698538C4();
  v30 = OUTLINED_FUNCTION_16_16();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  v33 = OUTLINED_FUNCTION_44_6(v32);
  OUTLINED_FUNCTION_31_10(v33);
  sub_26968E5D4(&v36, &qword_2698605E8);
  *&v39 = &unk_2698605B0;
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v34, v35, &qword_2698605B8);
  OUTLINED_FUNCTION_18_15();
  sub_269852A64();
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_9_24();
  sub_269852AE4();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979927C()
{
  OUTLINED_FUNCTION_19_1();
  sub_26969329C(0, &qword_2815718C8, 0x277CD4030);
  sub_26969329C(0, &qword_280324640, 0x277CD4038);
  OUTLINED_FUNCTION_16_16();
  sub_269852B14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D58, &unk_26985CD10);
  OUTLINED_FUNCTION_12_26();
  sub_269852AB4();
  if (qword_280322448 != -1)
  {
    swift_once();
  }

  sub_26979C04C(qword_28033D600, &v39);
  sub_2698538C4();
  v0 = OUTLINED_FUNCTION_22_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v3 = OUTLINED_FUNCTION_44_6(v2);
  sub_26968E5D4(&v36, v3 + 16);
  OUTLINED_FUNCTION_24_12();
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v4, v5, &qword_2698605D8);
  OUTLINED_FUNCTION_18_15();
  sub_269852A34();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_10_18();
  sub_269852AA4();
  v6 = OUTLINED_FUNCTION_22_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *&v39 = v8;
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v9, v10, &qword_2698605E0);
  OUTLINED_FUNCTION_18_15();
  sub_269852A54();
  OUTLINED_FUNCTION_29_11();
  OUTLINED_FUNCTION_10_18();
  sub_269852AC4();
  v11 = type metadata accessor for BaseDialogProvider();
  v12 = OUTLINED_FUNCTION_99_0(v11);

  sub_2698538C4();
  v37 = v11;
  v38 = &off_287A3DBA0;
  *&v36 = v12;
  v13 = type metadata accessor for INSearchForMediaUnsupportedValueStrategy();
  v14 = OUTLINED_FUNCTION_44_6(v13);
  __swift_mutable_project_boxed_opaque_existential_1(&v36, v11);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_6_30(v16, v36);
  v18(v17);
  OUTLINED_FUNCTION_39_2();
  *&v39 = v14;
  sub_26979C320(&qword_280324668, type metadata accessor for INSearchForMediaUnsupportedValueStrategy);
  OUTLINED_FUNCTION_18_15();
  sub_269852A94();

  OUTLINED_FUNCTION_5_13();
  OUTLINED_FUNCTION_12_26();
  sub_269852AD4();
  sub_2698538C4();
  v19 = OUTLINED_FUNCTION_20_14();
  v20 = sub_269853264();
  OUTLINED_FUNCTION_68_0(v20);
  OUTLINED_FUNCTION_15_18();

  v21 = sub_269853254();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324670, &qword_2698605E8);
  swift_allocObject();
  v22 = OUTLINED_FUNCTION_52_3();
  sub_26979BFB8(v22, v19, v21, v23);
  OUTLINED_FUNCTION_15_18();

  *&v39 = v21;
  OUTLINED_FUNCTION_14_16(&qword_280324678);
  OUTLINED_FUNCTION_52_3();
  sub_269852A84();

  OUTLINED_FUNCTION_50_4();
  OUTLINED_FUNCTION_12_26();
  sub_269852B04();
  sub_2698538C4();
  OUTLINED_FUNCTION_20_14();
  v24 = OUTLINED_FUNCTION_50_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_41_4(v26);
  v27 = type metadata accessor for LocUtil();
  v28 = OUTLINED_FUNCTION_40_5(v27);
  sub_26968E5D4(&v39, v28 + 16);
  qword_269860648 = v28;
  *&v39 = &qword_2698605E8;
  OUTLINED_FUNCTION_13_17(&qword_280324688);
  OUTLINED_FUNCTION_18_15();
  sub_269852A74();
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_9_24();
  sub_269852AF4();
  v29 = OUTLINED_FUNCTION_20_14();
  v40 = v11;
  v41 = &off_287A3DBA0;
  *&v39 = v29;
  sub_2698538C4();
  v30 = OUTLINED_FUNCTION_16_16();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  v33 = OUTLINED_FUNCTION_44_6(v32);
  OUTLINED_FUNCTION_31_10(v33);
  sub_26968E5D4(&v36, &qword_269860628);
  *&v39 = &unk_2698605F0;
  OUTLINED_FUNCTION_11_28();
  sub_26971CA38(v34, v35, &qword_2698605F8);
  OUTLINED_FUNCTION_18_15();
  sub_269852A64();
  OUTLINED_FUNCTION_48_6();

  OUTLINED_FUNCTION_9_24();
  sub_269852AE4();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269799740@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayLiveServiceIntent();
  type metadata accessor for PlayLiveServiceIntentResponse();
  sub_269852B14();
  sub_269854404();
  swift_allocObject();
  v26 = sub_2698543D4();
  sub_269852A44();
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803245A0, &qword_269860568);
  v27 = a2;
  sub_269852AB4();
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = a1;
  v11 = sub_2698548B4();
  v12 = sub_269854F44();

  v13 = os_log_type_enabled(v11, v12);
  v25 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    if (v10 && (v16 = sub_269854634(), v17))
    {
      v18 = v17;
    }

    else
    {

      v18 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    v19 = sub_26974F520(v16, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_269684000, v11, v12, "RCHChildFlowProducers.playLiveServiceProducers() remoteDevice: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D647170](v15, -1, -1);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for PlayLiveServiceHandleIntentStrategy();
  v20 = v9;
  v21 = v25;
  v28 = sub_2697597C8(v25);
  sub_26979C320(&qword_2803245C8, type metadata accessor for PlayLiveServiceHandleIntentStrategy);
  sub_269852A34();

  sub_269852AA4();
  type metadata accessor for PlayLiveServiceDisambiguationStrategy();
  v22 = v20;
  v28 = sub_269751094(v21);
  sub_26979C320(&qword_2803245D0, type metadata accessor for PlayLiveServiceDisambiguationStrategy);
  sub_269852A74();

  sub_269852AF4();
  type metadata accessor for PlayLiveServiceUnsupportedValueStrategy();
  v28 = sub_26975DFA4();
  sub_26979C320(&qword_2803245D8, type metadata accessor for PlayLiveServiceUnsupportedValueStrategy);
  sub_269852A94();

  sub_269852AD4();
}

uint64_t sub_269799BE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlayVideoIntent();
  type metadata accessor for PlayVideoIntentResponse();
  sub_269852B14();
  sub_269854404();
  swift_allocObject();
  v24[2] = sub_2698543D4();
  sub_269852A44();
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324550, &qword_269860540);
  v26 = a2;
  sub_269852AB4();
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = a1;
  v11 = sub_2698548B4();
  v12 = sub_269854F44();

  v13 = os_log_type_enabled(v11, v12);
  v25 = v10;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    if (v10 && (v16 = sub_269854634(), v17))
    {
      v18 = v17;
    }

    else
    {

      v18 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    v19 = sub_26974F520(v16, v18, &v27);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_269684000, v11, v12, "RCHChildFlowProducers.playVideoProducers() remoteDevice: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D647170](v15, -1, -1);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v20 = v9;
  v21 = v25;
  v27 = sub_2697988A8(v25, &qword_280324578, &qword_269860558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324578, &qword_269860558);
  sub_26971CA38(&qword_280324580, &qword_280324578, &qword_269860558);
  sub_269852A74();

  sub_269852AF4();
  type metadata accessor for PlayVideoUnsupportedValueStrategy();
  v27 = sub_26977F4B8();
  sub_26979C320(&qword_280324588, type metadata accessor for PlayVideoUnsupportedValueStrategy);
  sub_269852A94();

  sub_269852AD4();
  type metadata accessor for PlayVideoHandleIntentStrategy();
  v22 = v20;
  v27 = sub_269763E24(v21);
  sub_26979C320(&qword_280324590, type metadata accessor for PlayVideoHandleIntentStrategy);
  sub_269852A34();

  sub_269852AA4();
}

uint64_t sub_26979A098()
{
  type metadata accessor for RemoveFromWatchListIntent();
  type metadata accessor for RemoveFromWatchListIntentResponse();
  sub_269852B14();
  sub_269854404();
  swift_allocObject();
  sub_2698543D4();
  sub_269852A44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324700, &qword_269860638);
  sub_269852AB4();
  sub_2697988A8(0, &qword_280324728, &qword_269860650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324728, &qword_269860650);
  sub_26971CA38(&qword_280324730, &qword_280324728, &qword_269860650);
  sub_269852A74();

  sub_269852AF4();
  type metadata accessor for RemoveFromWatchListUnsupportedValueStrategy();
  *&v2 = sub_269785C84();
  sub_26979C320(&qword_280324738, type metadata accessor for RemoveFromWatchListUnsupportedValueStrategy);
  sub_269852A94();

  sub_269852AD4();
  sub_2698538C4();
  type metadata accessor for BaseDialogProvider();
  v0 = swift_allocObject();
  *&v2 = sub_26979C204(&v2, v0, type metadata accessor for RemoveFromWatchListHandleIntentStrategy);
  type metadata accessor for RemoveFromWatchListHandleIntentStrategy();
  sub_26979C320(&qword_280324740, type metadata accessor for RemoveFromWatchListHandleIntentStrategy);
  sub_269852A34();

  sub_269852AA4();
}

uint64_t sub_26979A354@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WatchSportsEventIntent();
  type metadata accessor for WatchSportsEventIntentResponse();
  sub_269852B14();
  sub_269854404();
  swift_allocObject();
  v24 = sub_2698543D4();
  sub_269852A44();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324518, &qword_269860520);
  v25 = a2;
  sub_269852AB4();
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v5 + 16))(v7, v9, v4);
  v10 = a1;
  v11 = a1;
  v12 = sub_2698548B4();
  v13 = sub_269854F44();

  if (os_log_type_enabled(v12, v13))
  {
    v22[1] = v8;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136315138;
    v23 = v11;
    if (v11 && (v16 = sub_269854634(), v17))
    {
      v18 = v17;
    }

    else
    {

      v18 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    v19 = sub_26974F520(v16, v18, &v26);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_269684000, v12, v13, "RCHChildFlowProducers.watchSportsEventProducers() remoteDevice: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D647170](v15, -1, -1);
    MEMORY[0x26D647170](v14, -1, -1);

    (*(v5 + 8))(v7, v4);
    v11 = v23;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for WatchSportsEventHandleIntentStrategy();
  v20 = v10;
  v26 = sub_269788DE0(v11);
  sub_26979C320(&qword_280324540, type metadata accessor for WatchSportsEventHandleIntentStrategy);
  sub_269852A34();

  sub_269852AA4();
}

uint64_t sub_26979A708()
{
  sub_269854404();
  swift_allocObject();
  result = sub_2698543D4();
  qword_280324508 = result;
  return result;
}

void sub_26979A778()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324548, &qword_269860538);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324550, &qword_269860540);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_29();
  sub_269799BE4(v0, v4);
  v5 = OUTLINED_FUNCTION_8_27();
  v6(v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324558, &qword_269860548);
  OUTLINED_FUNCTION_68_0(v7);
  OUTLINED_FUNCTION_38_9();
  sub_269852B24();
  OUTLINED_FUNCTION_34_6();
  type metadata accessor for PlayVideoFlowStrategy();
  sub_26979C320(&qword_280324560, type metadata accessor for PlayVideoFlowStrategy);

  OUTLINED_FUNCTION_21_14();
  if (qword_280322500 != -1)
  {
    OUTLINED_FUNCTION_4_24(&qword_280322500);
  }

  OUTLINED_FUNCTION_45_4(qword_280324508);
  v8 = OUTLINED_FUNCTION_19_11();
  v9(v8);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_0_36();
  sub_26971CA38(v10, v11, &qword_269860550);
  OUTLINED_FUNCTION_23_13();
  sub_269852B34();
  OUTLINED_FUNCTION_56_4();

  v12 = OUTLINED_FUNCTION_35_10();
  v13(v12);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979A9BC()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324598, &qword_269860560);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803245A0, &qword_269860568);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_29();
  sub_269799740(v0, v4);
  v5 = OUTLINED_FUNCTION_8_27();
  v6(v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803245A8, &qword_269860570);
  OUTLINED_FUNCTION_68_0(v7);
  OUTLINED_FUNCTION_38_9();
  sub_269852B24();
  OUTLINED_FUNCTION_34_6();
  type metadata accessor for PlayLiveServiceFlowStrategy();
  sub_26979C320(&qword_2803245B0, type metadata accessor for PlayLiveServiceFlowStrategy);

  OUTLINED_FUNCTION_21_14();
  if (qword_280322500 != -1)
  {
    OUTLINED_FUNCTION_4_24(&qword_280322500);
  }

  OUTLINED_FUNCTION_45_4(qword_280324508);
  v8 = OUTLINED_FUNCTION_19_11();
  v9(v8);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_0_36();
  sub_26971CA38(v10, v11, &qword_269860578);
  OUTLINED_FUNCTION_23_13();
  sub_269852B34();
  OUTLINED_FUNCTION_56_4();

  v12 = OUTLINED_FUNCTION_35_10();
  v13(v12);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979AC00()
{
  OUTLINED_FUNCTION_19_1();
  v0 = type metadata accessor for BaseDialogProvider();
  memset(v35, 0, 40);
  v1 = OUTLINED_FUNCTION_99_0(v0);
  sub_2698538C4();
  sub_269852BB4();
  sub_269853524();
  v31[3] = &type metadata for FeatureFlagServiceImpl;
  v31[4] = &off_287A41BD8;
  v30[3] = &type metadata for VideoFlowFactoryImpl;
  v30[4] = &off_287A40968;
  v29[3] = v0;
  v29[4] = &off_287A3DBA0;
  v29[0] = v1;
  v2 = type metadata accessor for ThirdPartyPlayWrapperFlow(0);
  v3 = OUTLINED_FUNCTION_68_0(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v31, &type metadata for FeatureFlagServiceImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v30, &type metadata for VideoFlowFactoryImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v0);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v28[3] = &type metadata for FeatureFlagServiceImpl;
  v28[4] = &off_287A41BD8;
  v27[3] = &type metadata for VideoFlowFactoryImpl;
  v27[4] = &off_287A40968;
  v26[3] = v0;
  v26[4] = &off_287A3DBA0;
  v26[0] = v8;
  v9 = OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyPlayWrapperFlow_input;
  v10 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v9 + v3, 1, 1, v10);
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  sub_2696A73F8(v28, v3 + 16);
  sub_2696A73F8(v27, v3 + 56);
  sub_2696A73F8(v26, v3 + 96);
  sub_2696A73F8(v34, v3 + 136);
  sub_26979C0A8(v35, &v21);
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_0(v34);
    sub_26979C118(v35);
    __swift_destroy_boxed_opaque_existential_0(v26);
    __swift_destroy_boxed_opaque_existential_0(v27);
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_26968E5D4(&v21, &v23);
  }

  else
  {
    sub_2696A73F8(v34, &v23);
    v11 = type metadata accessor for CarSessionProvider();
    v12 = swift_allocObject();
    v13 = v24;
    v14 = v25;
    __swift_mutable_project_boxed_opaque_existential_1(&v23, v24);
    OUTLINED_FUNCTION_3_20();
    MEMORY[0x28223BE20](v15);
    v17 = OUTLINED_FUNCTION_6_30(v16, v20);
    v18(v17);
    v19 = sub_2697B1354(&off_287A41BD8, v12, v13, v14);
    __swift_destroy_boxed_opaque_existential_0(&v23);
    v24 = v11;
    v25 = &off_287A41458;
    *&v23 = v19;
    __swift_destroy_boxed_opaque_existential_0(v34);
    sub_26979C118(v35);
    __swift_destroy_boxed_opaque_existential_0(v26);
    __swift_destroy_boxed_opaque_existential_0(v27);
    __swift_destroy_boxed_opaque_existential_0(v28);
    if (v22)
    {
      sub_26979C118(&v21);
    }
  }

  sub_26968E5D4(&v23, v3 + 176);
  sub_26968E5D4(&v33, v3 + 216);
  sub_26968E5D4(&v32, v3 + 256);
  __swift_destroy_boxed_opaque_existential_0(v29);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(v31);
  v35[0] = v3;
  sub_26979C320(&qword_280323DB0, type metadata accessor for ThirdPartyPlayWrapperFlow);
  sub_269852B34();
  OUTLINED_FUNCTION_56_4();
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979AFB8()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_54_2(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DB8, &unk_269860580);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DC0, &unk_26985CF00);
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_29();
  sub_269798DB8();
  v11 = OUTLINED_FUNCTION_22_10();
  v12(v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DC8, &unk_26985CF10);
  OUTLINED_FUNCTION_68_0(v13);
  OUTLINED_FUNCTION_86();
  sub_269852B24();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DA8, &qword_26985CED8);
  OUTLINED_FUNCTION_11_28();
  v16 = sub_26971CA38(v14, v15, &qword_26985CED8);
  OUTLINED_FUNCTION_43_4(v16);
  if (v1 && v2)
  {
    sub_269854404();
    OUTLINED_FUNCTION_15_18();

    v17 = v2;
    v18 = sub_2698543E4();
    OUTLINED_FUNCTION_55_4(v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323DD8, &qword_269860590);
    OUTLINED_FUNCTION_0_36();
    sub_26971CA38(v19, v20, &qword_269860590);
    OUTLINED_FUNCTION_23_13();
    sub_269852B34();
  }

  else
  {
    sub_269853044();
    v21 = OUTLINED_FUNCTION_5_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_0_36();
    sub_26971CA38(v23, v24, &qword_269860590);
    OUTLINED_FUNCTION_23_13();
    sub_269852B34();
    OUTLINED_FUNCTION_15_18();
  }

  v25 = OUTLINED_FUNCTION_51_7();
  v26(v25);
  (*(v8 + 8))(v0, v6);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26979B2A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExecutePlayVideoIntentFlow(0);
  sub_269854404();

  v2 = sub_2698543E4();
  sub_269707540(v2);
  sub_26979C320(&qword_280323B70, type metadata accessor for ExecutePlayVideoIntentFlow);
  v3 = sub_269852B34();

  return v3;
}

uint64_t sub_26979B370(uint64_t a1)
{
  sub_269852BB4();
  v8[3] = &type metadata for FeatureFlagServiceImpl;
  v8[4] = &off_287A41BD8;
  v7[3] = &type metadata for VideoFlowFactoryImpl;
  v7[4] = &off_287A40968;
  WrapperFlow = type metadata accessor for ThirdPartyFindWrapperFlow(0);
  v2 = OUTLINED_FUNCTION_68_0(WrapperFlow);
  __swift_mutable_project_boxed_opaque_existential_1(v8, &type metadata for FeatureFlagServiceImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v7, &type metadata for VideoFlowFactoryImpl);
  *(v2 + 40) = &type metadata for FeatureFlagServiceImpl;
  *(v2 + 48) = &off_287A41BD8;
  *(v2 + 80) = &type metadata for VideoFlowFactoryImpl;
  *(v2 + 88) = &off_287A40968;
  v3 = OBJC_IVAR____TtC16SiriVideoIntents25ThirdPartyFindWrapperFlow_input;
  v4 = sub_269853854();
  __swift_storeEnumTagSinglePayload(v2 + v3, 1, 1, v4);
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  sub_26968E5D4(&v9, v2 + 96);
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v8);
  *&v9 = v2;
  sub_26979C320(&qword_280323D48, type metadata accessor for ThirdPartyFindWrapperFlow);
  v5 = sub_269852B34();

  return v5;
}

void sub_26979B4A8()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_54_2(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D50, &unk_2698605C0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D58, &unk_26985CD10);
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_29();
  sub_26979927C();
  v11 = OUTLINED_FUNCTION_22_10();
  v12(v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D60, &unk_26985CD20);
  OUTLINED_FUNCTION_68_0(v13);
  OUTLINED_FUNCTION_86();
  sub_269852B24();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D40, &unk_26985CD00);
  OUTLINED_FUNCTION_11_28();
  v16 = sub_26971CA38(v14, v15, &unk_26985CD00);
  OUTLINED_FUNCTION_43_4(v16);
  if (v1 && v2)
  {
    sub_269854404();
    OUTLINED_FUNCTION_15_18();

    v17 = v2;
    v18 = sub_2698543E4();
    OUTLINED_FUNCTION_55_4(v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323D70, &qword_2698605D0);
    OUTLINED_FUNCTION_0_36();
    sub_26971CA38(v19, v20, &qword_2698605D0);
    OUTLINED_FUNCTION_23_13();
    sub_269852B34();
  }

  else
  {
    sub_269853044();
    v21 = OUTLINED_FUNCTION_5_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
    OUTLINED_FUNCTION_0_36();
    sub_26971CA38(v23, v24, &qword_2698605D0);
    OUTLINED_FUNCTION_23_13();
    sub_269852B34();
    OUTLINED_FUNCTION_15_18();
  }

  v25 = OUTLINED_FUNCTION_51_7();
  v26(v25);
  (*(v8 + 8))(v0, v6);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26979B798(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow(0);
  sub_269854404();

  v2 = sub_2698543E4();
  sub_269708ADC(v2);
  sub_26979C320(&qword_280323B98, type metadata accessor for ExecuteShowInAppSearchResultsIntentFlow);
  v3 = sub_269852B34();

  return v3;
}

void sub_26979B860()
{
  OUTLINED_FUNCTION_19_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246A8, &qword_269860608);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246B0, &qword_269860610);
  OUTLINED_FUNCTION_8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_53_1();
  sub_269798AFC();
  sub_2698538C4();
  v7 = type metadata accessor for AddToWatchListFlowStrategy();
  v8 = OUTLINED_FUNCTION_40_5(v7);
  OUTLINED_FUNCTION_31_10(v8);
  v9 = OUTLINED_FUNCTION_16_16();
  v10(v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246B8, &qword_269860618);
  OUTLINED_FUNCTION_68_0(v11);
  OUTLINED_FUNCTION_86();
  sub_269852B24();
  sub_26979C320(&qword_2803246C0, type metadata accessor for AddToWatchListFlowStrategy);
  OUTLINED_FUNCTION_15_18();

  OUTLINED_FUNCTION_42_6();
  sub_269853044();
  v12 = OUTLINED_FUNCTION_47_5();
  v13(v12);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_0_36();
  sub_26971CA38(v14, v15, &qword_269860620);
  sub_269852B34();
  OUTLINED_FUNCTION_38_9();

  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979BABC()
{
  OUTLINED_FUNCTION_19_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246F8, &qword_269860630);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324700, &qword_269860638);
  OUTLINED_FUNCTION_8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_53_1();
  sub_26979A098();
  sub_2698538C4();
  v7 = type metadata accessor for RemoveFromWatchListFlowStrategy();
  v8 = OUTLINED_FUNCTION_40_5(v7);
  OUTLINED_FUNCTION_31_10(v8);
  v9 = OUTLINED_FUNCTION_16_16();
  v10(v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324708, &qword_269860640);
  OUTLINED_FUNCTION_68_0(v11);
  OUTLINED_FUNCTION_86();
  sub_269852B24();
  sub_26979C320(&qword_280324710, type metadata accessor for RemoveFromWatchListFlowStrategy);
  OUTLINED_FUNCTION_15_18();

  OUTLINED_FUNCTION_42_6();
  sub_269853044();
  v12 = OUTLINED_FUNCTION_47_5();
  v13(v12);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_0_36();
  sub_26971CA38(v14, v15, &qword_269860648);
  sub_269852B34();
  OUTLINED_FUNCTION_38_9();

  (*(v4 + 8))(v0, v2);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void sub_26979BD18()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_37_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324510, &qword_269860518);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324518, &qword_269860520);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_36_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_29();
  sub_26979A354(v0, v4);
  v5 = OUTLINED_FUNCTION_8_27();
  v6(v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324520, &qword_269860528);
  OUTLINED_FUNCTION_68_0(v7);
  OUTLINED_FUNCTION_38_9();
  sub_269852B24();
  OUTLINED_FUNCTION_34_6();
  type metadata accessor for WatchSportsEventFlowStrategy();
  sub_26979C320(&qword_280324528, type metadata accessor for WatchSportsEventFlowStrategy);

  OUTLINED_FUNCTION_21_14();
  if (qword_280322500 != -1)
  {
    OUTLINED_FUNCTION_4_24(&qword_280322500);
  }

  OUTLINED_FUNCTION_45_4(qword_280324508);
  v8 = OUTLINED_FUNCTION_19_11();
  v9(v8);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_0_36();
  sub_26971CA38(v10, v11, &qword_269860530);
  OUTLINED_FUNCTION_23_13();
  sub_269852B34();
  OUTLINED_FUNCTION_56_4();

  v12 = OUTLINED_FUNCTION_35_10();
  v13(v12);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_21_0();
}

void *sub_26979BFB8(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[10] = type metadata accessor for BaseDialogProvider();
  a4[11] = &off_287A3DBA0;
  a4[7] = a2;
  v8 = sub_269853264();
  v9 = MEMORY[0x277D5BD58];
  a4[16] = v8;
  a4[17] = v9;
  a4[13] = a3;
  sub_2696A73F8(a1, (a4 + 2));
  v10 = type metadata accessor for LocUtil();
  v11 = OUTLINED_FUNCTION_40_5(v10);
  sub_26968E5D4(a1, v11 + 16);
  a4[12] = v11;
  return a4;
}

uint64_t sub_26979C0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246A0, &qword_269860600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26979C118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803246A0, &qword_269860600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_26979C180(__int128 *a1, uint64_t a2, void *a3)
{
  a3[16] = type metadata accessor for BaseDialogProvider();
  a3[17] = &off_287A3DBA0;
  a3[13] = a2;
  sub_2696A73F8(a1, (a3 + 2));
  sub_2696A73F8(a1, (a3 + 7));
  v6 = type metadata accessor for LocUtil();
  v7 = OUTLINED_FUNCTION_40_5(v6);
  sub_26968E5D4(a1, v7 + 16);
  a3[12] = v7;
  return a3;
}

void *sub_26979C204(__int128 *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v15 = type metadata accessor for BaseDialogProvider();
  v16 = &off_287A3DBA0;
  v14[0] = a2;
  a3(0);
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_26979C180(a1, *v9, v6);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_26979C320(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_27()
{
  result = v0;
  *(v2 - 96) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_17(unint64_t *a1)
{

  return sub_26971CA38(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_14_16(unint64_t *a1)
{

  return sub_26971CA38(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_14()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_14()
{

  return sub_269853064();
}

__n128 OUTLINED_FUNCTION_24_12()
{
  result = *(v1 - 120);
  v3 = *(v1 - 104);
  *(v0 + 56) = result;
  *(v0 + 72) = v3;
  *(v0 + 88) = *(v1 - 88);
  *(v1 - 120) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_11()
{
}

uint64_t OUTLINED_FUNCTION_31_10(uint64_t a1)
{

  return sub_26968E5D4((v1 - 120), a1 + 16);
}

uint64_t OUTLINED_FUNCTION_39_2()
{
  v5 = *v2;
  v1[5] = v0;
  v1[6] = v3;
  v1[2] = v5;
  sub_26968E5D4((v4 - 120), (v1 + 7));
  __swift_destroy_boxed_opaque_existential_0((v4 - 160));
}

uint64_t OUTLINED_FUNCTION_40_5(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_41_4(void *a1)
{
  a1[10] = v2;
  a1[11] = v3;
  a1[7] = v1;

  return sub_2696A73F8(v4 - 120, (a1 + 2));
}

uint64_t OUTLINED_FUNCTION_42_6()
{

  return sub_269853064();
}

uint64_t OUTLINED_FUNCTION_43_4(uint64_t a1)
{

  return sub_269853064();
}

uint64_t OUTLINED_FUNCTION_44_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45_4(uint64_t a1)
{

  return MEMORY[0x2821BAFA0](a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1)
{

  return MEMORY[0x2821BAFA0](a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_56_4()
{
}

uint64_t sub_26979C798()
{
  v0 = sub_26979C7E0();
  type metadata accessor for AtomicOnce();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v0;
  qword_281571B20 = result;
  return result;
}

uint64_t sub_26979C7E0()
{
  v9 = sub_269854F94();
  OUTLINED_FUNCTION_8();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_1();
  v5 = v4 - v3;
  sub_269854F74();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v7 = sub_269854994();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_3_1();
  sub_2696ADFE4();
  sub_269854974();
  sub_2697A1A18(&qword_2815718E8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324D40, &unk_269862100);
  sub_2697A1A60(&qword_281571900, &unk_280324D40, &unk_269862100);
  sub_269855174();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v9);
  return sub_269854FB4();
}

uint64_t VideoFlowProvider.init()@<X0>(uint64_t a1@<X8>)
{
  sub_2698538C4();
  *(a1 + 64) = &type metadata for VideoFlowFactoryImpl;
  *(a1 + 72) = &off_287A40968;
  v2 = type metadata accessor for PommesResponseLoggingProvider();
  result = swift_allocObject();
  *(a1 + 152) = v2;
  *(a1 + 160) = &off_287A41D18;
  *(a1 + 128) = result;
  *(a1 + 112) = &type metadata for FeatureFlagServiceImpl;
  *(a1 + 120) = &off_287A41BD8;
  *(a1 + 80) = 0;
  return result;
}

uint64_t VideoFlowProvider.findFlow(for:)@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X8>)
{
  v221 = a2;
  v220 = a1;
  v191 = sub_2698538D4();
  OUTLINED_FUNCTION_8();
  v190 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_1(v182 - v6);
  v185 = sub_269852474();
  OUTLINED_FUNCTION_8();
  v184 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_7();
  v183 = v9;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323A38, qword_26985BB40);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_1(v182 - v11);
  v198 = sub_269852584();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v13);
  v197 = sub_269851ED4();
  OUTLINED_FUNCTION_8();
  v196 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v16);
  v202 = sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v201 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_15_1(v19);
  sub_269853874();
  OUTLINED_FUNCTION_8();
  v209 = v21;
  v210 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15_1(v182 - v23);
  sub_2698538A4();
  OUTLINED_FUNCTION_8();
  v207 = v25;
  v208 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15_7();
  v27 = OUTLINED_FUNCTION_15_1(v26);
  v28 = type metadata accessor for MediaNLIntent(v27);
  MEMORY[0x28223BE20](v28 - 8);
  OUTLINED_FUNCTION_15_7();
  v212 = v29;
  sub_269853F44();
  OUTLINED_FUNCTION_8();
  v218 = v31;
  v219 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_24_3();
  v211 = v32;
  MEMORY[0x28223BE20](v33);
  v215 = v182 - v34;
  v35 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v40);
  v42 = (v182 - v41);
  v43 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_3();
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
  v217 = v51;
  MEMORY[0x28223BE20](v52);
  v54 = v182 - v53;
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v55 = __swift_project_value_buffer(v43, qword_281571B38);
  v56 = *(v45 + 16);
  v213 = v55;
  v214 = v56;
  (v56)(v54);
  v57 = sub_2698548B4();
  v58 = sub_269854F44();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_269684000, v57, v58, "Making flow from parse", v59, 2u);
    OUTLINED_FUNCTION_10();
  }

  v62 = *(v45 + 8);
  v61 = v45 + 8;
  v60 = v62;
  v62(v54, v43);
  if ((v222[10] & 1) == 0)
  {
    if (qword_280322508 != -1)
    {
      OUTLINED_FUNCTION_8_28(&qword_280322508);
    }

    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    sub_269846098(sub_2697A17FC, v63);
  }

  v216 = v61;
  v64 = *(v37 + 16);
  v65 = v220;
  v64(v42, v220, v35);
  v66 = (*(v37 + 88))(v42, v35);
  if (v66 == *MEMORY[0x277D5C128])
  {
    v67 = OUTLINED_FUNCTION_6_31();
    v68(v67);
    v70 = v218;
    v69 = v219;
    v71 = v215;
    (*(v218 + 32))(v215, v42, v219);
    OUTLINED_FUNCTION_15_19();
    v72();
    v73 = v211;
    v220 = *(v70 + 16);
    v220(v211, v71, v69);
    v74 = sub_2698548B4();
    v75 = sub_269854F44();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = OUTLINED_FUNCTION_27_2();
      v208 = v60;
      v77 = v76;
      v78 = OUTLINED_FUNCTION_9_3();
      *&v223[0] = v78;
      *v77 = 136315138;
      sub_2697A1A18(&qword_2803236E0, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
      v79 = sub_269855544();
      v81 = v80;
      v82 = *(v70 + 8);
      v82(v73, v219);
      v83 = sub_26974F520(v79, v81, v223);
      v69 = v219;

      *(v77 + 4) = v83;
      _os_log_impl(&dword_269684000, v74, v75, "Received .NLv3IntentOnly parse: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v78);
      v71 = v215;
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v208(v217, v43);
    }

    else
    {

      v82 = *(v70 + 8);
      v82(v73, v69);
      v60(v217, v43);
    }

    v90 = v212;
    v220(v212, v71, v69);
    v91 = sub_26979DE38(v90);
    sub_2697A1918(v90, type metadata accessor for MediaNLIntent);
    if (v91)
    {
      sub_269852BA4();

      v92 = OUTLINED_FUNCTION_14_17();
      return (v82)(v92);
    }

    v119 = OUTLINED_FUNCTION_14_17();
    (v82)(v119);
  }

  else if (v66 == *MEMORY[0x277D5C150])
  {
    v84 = OUTLINED_FUNCTION_6_31();
    v85(v84);
    v87 = v207;
    v86 = v208;
    v88 = v206;
    (*(v207 + 32))(v206, v42, v208);
    if (sub_26979E614(v88))
    {
      sub_269852BA4();

      return (*(v87 + 8))(v88, v86);
    }

    (*(v87 + 8))(v88, v86);
  }

  else if (v66 == *MEMORY[0x277D5C140])
  {
    v93 = OUTLINED_FUNCTION_6_31();
    v94(v93);
    v96 = v209;
    v95 = v210;
    v97 = v205;
    (*(v209 + 32))(v205, v42, v210);
    v98 = v203;
    OUTLINED_FUNCTION_15_19();
    v99();
    v100 = v204;
    (*(v96 + 16))(v204, v97, v95);
    v101 = v43;
    v102 = sub_2698548B4();
    v103 = sub_269854F44();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = OUTLINED_FUNCTION_27_2();
      v105 = OUTLINED_FUNCTION_9_3();
      v208 = v60;
      v106 = v105;
      *&v223[0] = v105;
      *v104 = 136315138;
      v107 = v200;
      v220 = v101;
      sub_269853864();
      v108 = v195;
      sub_269851EE4();
      v109 = v201;
      v110 = v202;
      (*(v201 + 8))(v107, v202);
      sub_269851EC4();
      (*(v196 + 8))(v108, v197);
      v111 = sub_269854AE4();
      v113 = v112;
      v114 = *(v209 + 8);
      v114(v204, v210);
      v115 = sub_26974F520(v111, v113, v223);

      *(v104 + 4) = v115;
      v116 = v107;
      v97 = v205;
      _os_log_impl(&dword_269684000, v102, v103, "Received .pegasusResults parse: %s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v106);
      OUTLINED_FUNCTION_10();
      v95 = v210;
      OUTLINED_FUNCTION_10();

      v117 = OUTLINED_FUNCTION_9_25(&v225);
      v118(v117);
    }

    else
    {

      v114 = *(v96 + 8);
      v114(v100, v95);
      v60(v98, v101);
      v110 = v202;
      v109 = v201;
      v116 = v200;
    }

    sub_269853864();
    v137 = sub_26979E748();
    (*(v109 + 8))(v116, v110);
    if (v137)
    {
      sub_269852BA4();

      return (v114)(v97, v95);
    }

    v114(v97, v95);
  }

  else if (v66 == *MEMORY[0x277D5C148])
  {
    v120 = OUTLINED_FUNCTION_6_31();
    v121(v120);
    v122 = v43;
    v123 = *v42;
    v124 = v199;
    v214(v199, v213, v122);
    v125 = v123;
    v126 = sub_2698548B4();
    v127 = sub_269854F44();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = v60;
      v129 = OUTLINED_FUNCTION_27_2();
      v130 = OUTLINED_FUNCTION_9_3();
      *&v223[0] = v130;
      *v129 = 136315138;
      sub_2696D6C54();
      if (v131)
      {
        v132 = v131;
        v133 = v183;
        sub_269854544();

        v134 = v187;
        sub_269852424();
        v135 = v133;
        v124 = v199;
        (*(v184 + 8))(v135, v185);
        v136 = 0;
      }

      else
      {
        v136 = 1;
        v134 = v187;
      }

      v178 = sub_2698523C4();
      __swift_storeEnumTagSinglePayload(v134, v136, 1, v178);
      v179 = sub_269854AE4();
      v181 = sub_26974F520(v179, v180, v223);

      *(v129 + 4) = v181;
      _os_log_impl(&dword_269684000, v126, v127, "Received .pommesResponse parse: %s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v130);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v128(v124, v122);
    }

    else
    {

      v60(v124, v122);
    }

    v224 = 0;
    memset(v223, 0, sizeof(v223));
    sub_269854524();
    sub_26969B0C0(v223, &qword_280324748, &qword_269860658);
    if (sub_26979E8D0())
    {
      sub_269852BA4();
    }
  }

  else if (v66 == *MEMORY[0x277D5C160])
  {
    v208 = v60;
    v138 = OUTLINED_FUNCTION_6_31();
    v139(v138);
    v140 = v190;
    v141 = v194;
    v142 = v191;
    (*(v190 + 32))(v194, v42, v191);
    v143 = v193;
    OUTLINED_FUNCTION_15_19();
    v144();
    v145 = *(v140 + 16);
    v146 = v189;
    v145(v189, v141, v142);
    v147 = v43;
    v148 = sub_2698548B4();
    v149 = sub_269854F44();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = OUTLINED_FUNCTION_27_2();
      v220 = v147;
      v151 = v140;
      v152 = v150;
      v153 = OUTLINED_FUNCTION_9_3();
      *&v223[0] = v153;
      *v152 = 136315138;
      v145(v182[2], v146, v142);
      v154 = sub_269854AE4();
      v156 = v155;
      v157 = *(v151 + 8);
      v157(v146, v142);
      v158 = sub_26974F520(v154, v156, v223);

      *(v152 + 4) = v158;
      _os_log_impl(&dword_269684000, v148, v149, "Received .uso parse: %s", v152, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v153);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v159 = OUTLINED_FUNCTION_9_25(v223 + 8);
      v160(v159);
      v157(v194, v142);
    }

    else
    {

      v177 = *(v140 + 8);
      v177(v146, v142);
      v208(v143, v147);
      v177(v141, v142);
    }
  }

  else
  {
    v161 = v192;
    OUTLINED_FUNCTION_15_19();
    v162();
    v163 = v186;
    v64(v186, v65, v35);
    v164 = sub_2698548B4();
    v220 = v43;
    v165 = v164;
    v166 = sub_269854F24();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = v163;
      v168 = OUTLINED_FUNCTION_27_2();
      v222 = OUTLINED_FUNCTION_9_3();
      *&v223[0] = v222;
      *v168 = 136315138;
      LODWORD(v219) = v166;
      v64(v182[1], v167, v35);
      v169 = sub_269854AE4();
      v208 = v60;
      v170 = v169;
      v172 = v171;
      v173 = *(v37 + 8);
      v173(v167, v35);
      v174 = sub_26974F520(v170, v172, v223);

      *(v168 + 4) = v174;
      _os_log_impl(&dword_269684000, v165, v219, "Received unsupported parse: %s", v168, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v222);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v175 = OUTLINED_FUNCTION_9_25(v223);
      v176(v175);
    }

    else
    {

      v173 = *(v37 + 8);
      v173(v163, v35);
      v60(v161, v220);
    }

    v173(v42, v35);
  }

  return sub_269852B94();
}

uint64_t sub_26979DE38(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2698548D4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  if (qword_280322560 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  sub_2697A1A18(qword_280323548, type metadata accessor for MediaNLIntent, &unk_269860BD8);
  sub_269853D54();
  if (v32)
  {
    v10 = 0;
    if (v32 == 1)
    {
      if (!sub_2697A1458())
      {
        if (qword_2803225C8 != -1)
        {
          swift_once();
        }

        sub_269853D54();
        if (v33)
        {

          type metadata accessor for PlayLiveServiceWrapperFlow(0);
          sub_269724F70();
          v32 = v13;
          v14 = &qword_280323E70;
          v15 = type metadata accessor for PlayLiveServiceWrapperFlow;
          v16 = &unk_26985D4D8;
        }

        else
        {
          if (qword_2803225C0 != -1)
          {
            swift_once();
          }

          v21 = sub_269853D64();
          v22 = (v21 + 32);
          v23 = *(v21 + 16);
          v31[3] = 0x800000026987A6C0;
          v31[4] = v21;
          v31[1] = 0x800000026987A660;
          v31[2] = 0x800000026987A6A0;
          v31[0] = 0x800000026987A640;
          while (2)
          {
            if (v23)
            {
              switch(*v22)
              {
                case 0x13:

                  break;
                default:
                  v24 = sub_269855584();

                  ++v22;
                  --v23;
                  if ((v24 & 1) == 0)
                  {
                    continue;
                  }

                  break;
              }

              if (qword_280322578 != -1)
              {
                swift_once();
              }

              sub_269853D54();
              if (!v33)
              {
                sub_269852BB4();
                sub_269724B58();
                v10 = sub_269852B34();
                sub_2697A18C4(&v32);
                return v10;
              }
            }

            break;
          }

          if (qword_280322700 != -1)
          {
            swift_once();
          }

          v25 = __swift_project_value_buffer(v3, qword_281571B38);
          (*(v4 + 16))(v9, v25, v3);
          v26 = sub_2698548B4();
          v27 = sub_269854F44();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&dword_269684000, v26, v27, "VideoFlowProvider makeFlow() returning playVideoWrapperFlow", v28, 2u);
            MEMORY[0x26D647170](v28, -1, -1);
          }

          (*(v4 + 8))(v9, v3);
          type metadata accessor for PlayVideoWrapperFlow(0);
          sub_2697290CC();
          v32 = v29;
          v14 = &qword_280323E90;
          v15 = type metadata accessor for PlayVideoWrapperFlow;
          v16 = &unk_26985D710;
        }

        sub_2697A1A18(v14, v15, v16);
        v10 = sub_269852B34();

        return v10;
      }

      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      sub_26979AC00();
      return v11;
    }
  }

  else
  {
    if (sub_2697A1458())
    {
      v12 = __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
      return sub_26979B370(v12);
    }

    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v3, qword_281571B38);
    (*(v4 + 16))(v7, v17, v3);
    v18 = sub_2698548B4();
    v19 = sub_269854F24();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_269684000, v18, v19, "Unable to handle find utterances on this platform", v20, 2u);
      MEMORY[0x26D647170](v20, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    return 0;
  }

  return v10;
}

uint64_t sub_26979E614(uint64_t a1)
{
  v2 = sub_269853884();
  v4 = SKIDirectInvocation.Video.init(rawValue:)(v2, v3);
  if (v4 == 4)
  {
    type metadata accessor for TvAppNotInstalledFlow();
    sub_26973895C();
    v7 = &qword_280323EF8;
    v8 = type metadata accessor for TvAppNotInstalledFlow;
    v9 = &unk_26985DB50;
    goto LABEL_7;
  }

  if (v4 == 3)
  {
    type metadata accessor for OpenOnRemoteDeviceFlow(0);
    sub_269720C4C();
    v7 = &qword_280323E48;
    v8 = type metadata accessor for OpenOnRemoteDeviceFlow;
    v9 = &unk_26985D170;
LABEL_7:
    sub_2697A1A18(v7, v8, v9);
    v6 = sub_269852B34();

    return v6;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v5 = __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  return sub_26979B370(v5);
}

uint64_t sub_26979E748()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_269852474();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696D3C74();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_26969B0C0(v2, &qword_280323360, &unk_26985AB80);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_2697A00B8(v6);
    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t sub_26979E8D0()
{
  v0 = sub_269852474();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696D6C54();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  sub_269854544();
  v6 = sub_2697A00B8(v3);

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t static VideoFlowProvider.prewarm()()
{
  if (qword_280322508 != -1)
  {
    OUTLINED_FUNCTION_8_28(&qword_280322508);
  }

  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  sub_269846098(sub_2697A1AB8, v0);
}

uint64_t sub_26979EA64(char a1)
{
  v2 = sub_269854954();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_269854994();
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269854964();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696ADFE4();
  (*(v9 + 104))(v11, *MEMORY[0x277D851C0], v8);
  v12 = sub_269854FC4();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_2697A19E4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_14;
  v14 = _Block_copy(aBlock);
  sub_269854974();
  v19 = MEMORY[0x277D84F90];
  sub_2697A1A18(&qword_281571918, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  sub_269855174();
  MEMORY[0x26D645EA0](0, v7, v4, v14);
  _Block_release(v14);

  (*(v18 + 8))(v4, v2);
  (*(v5 + 8))(v7, v17);
}

uint64_t sub_26979EDE8(char a1)
{
  v2 = sub_269854964();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2698548D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_281571B38);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2698548B4();
  v12 = sub_269854F44();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_269684000, v11, v12, "VideoFlowProvider#prewarm parallelizing playback tasks on separate queue", v13, 2u);
    MEMORY[0x26D647170](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D851C0], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324758, &qword_2698606E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269858BB0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1 & 1;
  *(inited + 32) = sub_2697A1A04;
  *(inited + 40) = v15;
  *(inited + 48) = sub_26979F150;
  *(inited + 56) = 0;
  *(inited + 64) = sub_26979F1B0;
  *(inited + 72) = 0;
  *(inited + 80) = sub_26979F1DC;
  *(inited + 88) = 0;
  *(inited + 96) = sub_26979F3C0;
  *(inited + 104) = 0;
  *(inited + 112) = sub_26979FC30;
  *(inited + 120) = 0;
  sub_2696ADFE4();
  v16 = sub_269854FC4();
  sub_2696A87EC(v16, inited, sub_26979FF2C, 0);

  swift_setDeallocating();
  sub_269819DD4();
  return (*(v3 + 8))(v5, v2);
}

void sub_26979F150()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 prewarm];
}

uint64_t sub_26979F1F8(uint64_t a1)
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(a1 + 16);

    _os_log_impl(&dword_269684000, v7, v8, "VideoFlowProvider#prewarm InstalledAppProvider apps: %ld", v9, 0xCu);
    MEMORY[0x26D647170](v9, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26979F3C0()
{
  v28 = sub_269854954();
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_269854994();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269854944();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2698549B4();
  v32 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = sub_269854964();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696ADFE4();
  (*(v14 + 104))(v16, *MEMORY[0x277D851B8], v13);
  v25 = sub_269854FC4();
  (*(v14 + 8))(v16, v13);
  sub_2698549A4();
  *v6 = 50;
  (*(v4 + 104))(v6, *MEMORY[0x277D85178], v3);
  MEMORY[0x26D6458C0](v10, v6);
  (*(v4 + 8))(v6, v3);
  v17 = *(v32 + 8);
  v32 += 8;
  v17(v10, v7);
  aBlock[4] = sub_26979F8D4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2696A8DD0;
  aBlock[3] = &block_descriptor_13;
  v18 = _Block_copy(aBlock);
  v19 = v26;
  sub_269854974();
  v33 = MEMORY[0x277D84F90];
  sub_2697A1A18(&qword_281571918, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803228A0, &qword_2698577D0);
  sub_2697A1A60(&qword_281571908, &unk_2803228A0, &qword_2698577D0);
  v21 = v27;
  v20 = v28;
  sub_269855174();
  v22 = v25;
  MEMORY[0x26D645E80](v12, v19, v21, v18);
  _Block_release(v18);

  (*(v31 + 8))(v21, v20);
  (*(v29 + 8))(v19, v30);
  return (v17)(v12, v7);
}

void sub_26979F8D4()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_281571B50);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "VideoFlowProvider#prewarm AppSelector started...", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for AppSelector();
  sub_2696AEBC0();
}

uint64_t sub_26979FA88(char a1)
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281571B50);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2698548B4();
  v8 = sub_269854F14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_269684000, v7, v8, "VideoFlowProvider#prewarm AppSelector success?:%{BOOL}d", v9, 8u);
    MEMORY[0x26D647170](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26979FC30(uint64_t (**a1)(void))
{
  v2 = sub_2698548D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = *a1;
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_281571B50);
  v28 = *(v3 + 16);
  v28(v8, v10, v2);
  v11 = sub_2698548B4();
  v12 = sub_269854F14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v6;
    v14 = v9;
    v15 = v13;
    *v13 = 0;
    _os_log_impl(&dword_269684000, v11, v12, "SpotlightSearchProvider#warmup", v13, 2u);
    v16 = v15;
    v9 = v14;
    v6 = v27;
    MEMORY[0x26D647170](v16, -1, -1);
  }

  v17 = *(v3 + 8);
  v17(v8, v2);
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324760, qword_2698606F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_269857710;
  v20 = *MEMORY[0x277CCA1A0];
  *(v19 + 32) = *MEMORY[0x277CCA1A0];
  v21 = v20;
  sub_2697A1970(v19, v18);
  v28(v6, v10, v2);
  v22 = sub_2698548B4();
  v23 = sub_269854F14();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_269684000, v22, v23, "SpotlightSearchProvider#warmup complete", v24, 2u);
    MEMORY[0x26D647170](v24, -1, -1);
  }

  v25 = (v17)(v6, v2);
  return v9(v25);
}

uint64_t sub_26979FF2C()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322708 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_281571B50);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_2698548B4();
  v6 = sub_269854F14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269684000, v5, v6, "VideoFlowDelegatePlugin#warmup complete", v7, 2u);
    MEMORY[0x26D647170](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2697A00B8(uint64_t a1)
{
  v164 = a1;
  v1 = sub_2698548D4();
  v2 = *(v1 - 8);
  v158 = v1;
  v159 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v144 = &v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v154 = &v143 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v153 = &v143 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v145 = &v143 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v146 = &v143 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v148 = &v143 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v149 = &v143 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v147 = &v143 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v150 = &v143 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v151 = &v143 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v152 = &v143 - v24;
  MEMORY[0x28223BE20](v23);
  v157 = &v143 - v25;
  v26 = sub_269851F04();
  v27 = *(v26 - 8);
  v28 = v27;
  v29 = MEMORY[0x28223BE20](v26);
  v162 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v143 - v31;
  v33 = sub_2698523C4();
  v163 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v161 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v143 - v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324750, &unk_2698606D8);
  v38 = *(v27 + 72);
  v39 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2698580D0;
  v41 = v40 + v39;
  v42 = *(v27 + 104);
  v160 = *MEMORY[0x277D39200];
  v42(v41);
  v156 = *MEMORY[0x277D39208];
  v42(v41 + v38);
  v43 = v26;
  v44 = v33;
  v45 = v163;
  sub_269831C88();
  sub_269852424();
  sub_2698523A4();
  v46 = *(v45 + 1);
  v46(v37, v44);
  sub_269807DA0();
  LOBYTE(v27) = v47;

  v48 = *(v28 + 8);
  v48(v32, v43);
  if (v27)
  {
    v49 = *(sub_269852464() + 16);

    if (!v49)
    {
      type metadata accessor for NoResultsFlow(0);
      v165 = sub_26971D2CC();
      v62 = &qword_280323E00;
      v63 = type metadata accessor for NoResultsFlow;
      v64 = &unk_26985CFF8;
      goto LABEL_34;
    }
  }

  v163 = v48;
  v50 = v161;
  sub_269852424();
  v51 = v162;
  sub_2698523A4();
  v46(v50, v44);
  v52 = (*(v28 + 88))(v51, v43);
  if (v52 == v160)
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v53 = v158;
    v54 = __swift_project_value_buffer(v158, qword_281571B38);
    v55 = v159;
    v56 = v157;
    (*(v159 + 16))(v157, v54, v53);
    v57 = sub_2698548B4();
    v58 = sub_269854F44();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_9;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "VideoFlowProvider makeFlow() returning playVideoWrapperFlow";
LABEL_8:
    _os_log_impl(&dword_269684000, v57, v58, v60, v59, 2u);
    MEMORY[0x26D647170](v59, -1, -1);
LABEL_9:

    (*(v55 + 8))(v56, v53);
    type metadata accessor for PlayVideoWrapperFlow(0);
    sub_2697290CC();
    v165 = v61;
    v62 = &qword_280323E90;
    v63 = type metadata accessor for PlayVideoWrapperFlow;
    v64 = &unk_26985D710;
LABEL_34:
    sub_2697A1A18(v62, v63, v64);
    v89 = sub_269852B34();

    return v89;
  }

  if (v52 == v156)
  {
    __swift_project_boxed_opaque_existential_1(v155, v155[3]);
    v65 = sub_269852D04();
    v53 = v158;
    v55 = v159;
    if ((v65 & 1) == 0)
    {
      if (qword_280322700 != -1)
      {
        swift_once();
      }

      v75 = __swift_project_value_buffer(v53, qword_281571B38);
      v76 = v154;
      (*(v55 + 16))(v154, v75, v53);
      v77 = sub_2698548B4();
      v78 = sub_269854F44();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_269684000, v77, v78, "VideoFlowProvider makeFlow() returning SearchVideoFlow", v79, 2u);
        MEMORY[0x26D647170](v79, -1, -1);
      }

      (*(v55 + 8))(v76, v53);
      v80 = type metadata accessor for SearchVideoFlow(0);
      v165 = sub_26972CD80(v80);
      v62 = &qword_280323EB0;
      v63 = type metadata accessor for SearchVideoFlow;
      v64 = &unk_26985D830;
      goto LABEL_34;
    }

    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v66 = __swift_project_value_buffer(v53, qword_281571B38);
    v56 = v153;
    (*(v55 + 16))(v153, v66, v53);
    v57 = sub_2698548B4();
    v58 = sub_269854F44();
    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_9;
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = "VideoFlowProvider makeFlow() returning playVideoWrapperFlow for search request because device is in CarPlay";
    goto LABEL_8;
  }

  if (v52 == *MEMORY[0x277D391D8])
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v67 = v158;
    v68 = __swift_project_value_buffer(v158, qword_281571B38);
    v69 = v159;
    v70 = v152;
    (*(v159 + 16))(v152, v68, v67);
    v71 = sub_2698548B4();
    v72 = sub_269854F44();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_269684000, v71, v72, "VideoFlowProvider makeFlow() returning playLiveServiceWrapperFlow", v73, 2u);
      MEMORY[0x26D647170](v73, -1, -1);
    }

    (*(v69 + 8))(v70, v67);
    type metadata accessor for PlayLiveServiceWrapperFlow(0);
    sub_269724F70();
    v165 = v74;
    v62 = &qword_280323E70;
    v63 = type metadata accessor for PlayLiveServiceWrapperFlow;
    v64 = &unk_26985D4D8;
    goto LABEL_34;
  }

  if (v52 == *MEMORY[0x277D391E0])
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v81 = v158;
    v82 = __swift_project_value_buffer(v158, qword_281571B38);
    v83 = v159;
    v84 = v151;
    (*(v159 + 16))(v151, v82, v81);
    v85 = sub_2698548B4();
    v86 = sub_269854F44();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_269684000, v85, v86, "VideoFlowProvider makeFlow() returning watchSportsEventWrapperFlow", v87, 2u);
      MEMORY[0x26D647170](v87, -1, -1);
    }

    (*(v83 + 8))(v84, v81);
    type metadata accessor for WatchSportsEventWrapperFlow(0);
    sub_269739E38();
    v165 = v88;
    v62 = &qword_280323F20;
    v63 = type metadata accessor for WatchSportsEventWrapperFlow;
    v64 = &unk_26985DD98;
    goto LABEL_34;
  }

  if (v52 == *MEMORY[0x277D391D0])
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v91 = v158;
    v92 = __swift_project_value_buffer(v158, qword_281571B38);
    v93 = v159;
    v94 = v150;
    (*(v159 + 16))(v150, v92, v91);
    v95 = sub_2698548B4();
    v96 = sub_269854F44();
    v97 = os_log_type_enabled(v95, v96);
    v98 = v155;
    if (!v97)
    {
      goto LABEL_42;
    }

    v99 = swift_slowAlloc();
    *v99 = 0;
    v100 = "VideoFlowProvider makeFlow() returning thirdPartyPlayWrapperFlow";
    goto LABEL_41;
  }

  if (v52 == *MEMORY[0x277D391F0])
  {
    v98 = v155;
    __swift_project_boxed_opaque_existential_1(v155, v155[3]);
    v102 = sub_269852D04();
    v91 = v158;
    v93 = v159;
    if ((v102 & 1) == 0)
    {
      if (qword_280322700 != -1)
      {
        swift_once();
      }

      v113 = __swift_project_value_buffer(v91, qword_281571B38);
      v114 = v149;
      (*(v93 + 16))(v149, v113, v91);
      v115 = sub_2698548B4();
      v116 = sub_269854F44();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&dword_269684000, v115, v116, "VideoFlowProvider makeFlow() returning thirdPartyFindWrapperFlow", v117, 2u);
        MEMORY[0x26D647170](v117, -1, -1);
      }

      (*(v93 + 8))(v114, v91);
      v118 = __swift_project_boxed_opaque_existential_1(v98 + 5, v98[8]);
      return sub_26979B370(v118);
    }

    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v103 = __swift_project_value_buffer(v91, qword_281571B38);
    v94 = v147;
    (*(v93 + 16))(v147, v103, v91);
    v95 = sub_2698548B4();
    v96 = sub_269854F44();
    if (!os_log_type_enabled(v95, v96))
    {
LABEL_42:

      (*(v93 + 8))(v94, v91);
      __swift_project_boxed_opaque_existential_1(v98 + 5, v98[8]);
      sub_26979AC00();
      return v101;
    }

    v99 = swift_slowAlloc();
    *v99 = 0;
    v100 = "VideoFlowProvider makeFlow() returning thirdPartyPlayWrapperFlow for search request because device is in CarPlay";
LABEL_41:
    _os_log_impl(&dword_269684000, v95, v96, v100, v99, 2u);
    MEMORY[0x26D647170](v99, -1, -1);
    goto LABEL_42;
  }

  if (v52 == *MEMORY[0x277D391C0])
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v104 = v158;
    v105 = __swift_project_value_buffer(v158, qword_281571B38);
    v106 = v159;
    v107 = v148;
    (*(v159 + 16))(v148, v105, v104);
    v108 = sub_2698548B4();
    v109 = sub_269854F44();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v155;
    if (v110)
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_269684000, v108, v109, "VideoFlowProvider makeFlow() returning addToWatchListFlow", v112, 2u);
      MEMORY[0x26D647170](v112, -1, -1);
    }

    (*(v106 + 8))(v107, v104);
    __swift_project_boxed_opaque_existential_1(v111 + 5, v111[8]);
    sub_26979B860();
    return v101;
  }

  if (v52 == *MEMORY[0x277D391E8])
  {
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v119 = v158;
    v120 = __swift_project_value_buffer(v158, qword_281571B38);
    v121 = v159;
    v122 = v146;
    (*(v159 + 16))(v146, v120, v119);
    v123 = sub_2698548B4();
    v124 = sub_269854F44();
    v125 = os_log_type_enabled(v123, v124);
    v126 = v155;
    if (v125)
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_269684000, v123, v124, "VideoFlowProvider makeFlow() returning removeFromWatchListFlow", v127, 2u);
      MEMORY[0x26D647170](v127, -1, -1);
    }

    (*(v121 + 8))(v122, v119);
    __swift_project_boxed_opaque_existential_1(v126 + 5, v126[8]);
    sub_26979BABC();
    return v101;
  }

  if (v52 != *MEMORY[0x277D391C8])
  {
    if (v52 != *MEMORY[0x277D391F8])
    {
      v163(v51, v43);
      return 0;
    }

    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v135 = v158;
    v136 = __swift_project_value_buffer(v158, qword_281571B38);
    v137 = v159;
    v138 = v144;
    (*(v159 + 16))(v144, v136, v135);
    v139 = sub_2698548B4();
    v140 = sub_269854F44();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_269684000, v139, v140, "VideoFlowProvider makeFlow() returning ServerNeedsDisambiguationFlow", v141, 2u);
      MEMORY[0x26D647170](v141, -1, -1);
    }

    (*(v137 + 8))(v138, v135);
    v142 = type metadata accessor for ServerNeedsDisambiguationFlow(0);
    v165 = sub_2697342A0(v142);
    v62 = &qword_280323EF0;
    v63 = type metadata accessor for ServerNeedsDisambiguationFlow;
    v64 = &unk_26985D9E0;
    goto LABEL_34;
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v128 = v158;
  v129 = __swift_project_value_buffer(v158, qword_281571B38);
  v130 = v159;
  v131 = v145;
  (*(v159 + 16))(v145, v129, v128);
  v132 = sub_2698548B4();
  v133 = sub_269854F44();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    *v134 = 0;
    _os_log_impl(&dword_269684000, v132, v133, "VideoFlowProvider makeFlow() returning openWatchListFlow", v134, 2u);
    MEMORY[0x26D647170](v134, -1, -1);
  }

  (*(v130 + 8))(v131, v128);
  sub_269852BB4();
  sub_269724B58();
  v89 = sub_269852B34();
  sub_2697A18C4(&v165);
  return v89;
}

BOOL sub_2697A1458()
{
  v0 = sub_2698548D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323700, qword_26985B120);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-v5];
  if (qword_2803225D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  v7 = _s10MediaNLAppVMa(0);
  sub_2697A1A18(qword_280323548, type metadata accessor for MediaNLIntent, &unk_269860BD8);
  sub_2697A1A18(qword_280323708, _s10MediaNLAppVMa, &unk_2698609DC);
  sub_269853D44();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_26969B0C0(v6, &qword_280323700, qword_26985B120);
  }

  else
  {
    v8 = sub_2697A5220();
    v10 = v9;
    v11 = sub_2697A1918(v6, _s10MediaNLAppVMa);
    if (v10)
    {
      v20[0] = v8;
      v20[1] = v10;
      MEMORY[0x28223BE20](v11);
      *&v19[-16] = v20;
      v12 = sub_2698337D4();

      return !v12;
    }
  }

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, qword_281571B38);
  (*(v1 + 16))(v3, v14, v0);
  v15 = sub_2698548B4();
  v16 = sub_269854F44();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_269684000, v15, v16, "Request does not contain app bundleID", v17, 2u);
    MEMORY[0x26D647170](v17, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_2697A180C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2697A184C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2697A1918(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_2697A1970(uint64_t a1, void *a2)
{
  type metadata accessor for FileProtectionType(0);
  v3 = sub_269854CA4();

  [a2 preheat_];
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2697A1A04()
{
  if (*(v0 + 16) == 1)
  {
    sub_2697B19D0();
  }
}

uint64_t sub_2697A1A18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2697A1A60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_8_28(uint64_t a1)
{

  return swift_once();
}

void sub_2697A1B24()
{
  v1 = v0;
  v2 = sub_2698523C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = [v0 contentSearch];
  if (!v9)
  {
    type metadata accessor for ContentSearch();
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v9 = sub_2697C01B0(0, 0, 0, 0xE000000000000000);
  }

  [v1 setContentSearch_];

  v11 = [v1 contentSearch];
  if (v11)
  {
    v12 = v11;
    sub_269852424();
    v13 = sub_269851FD4();
    v15 = v14;
    v16 = *(v3 + 8);
    v16(v8, v2);

    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      sub_269852424();
      sub_269851FD4();
      v16(v6, v2);
      v18 = sub_269854A64();
    }

    else
    {
      v18 = 0;
    }

    [v12 setName_];
  }
}

void sub_2697A1D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = v4;
  v8 = (*(*(a3 + 8) + 16))(a2);
  if (!v8)
  {
    sub_26969329C(0, &qword_280322DB8, 0x277CD3DC8);
    OUTLINED_FUNCTION_1_30();
    OUTLINED_FUNCTION_83_0();
    v8 = sub_269854ED4();
  }

  v9 = v8;
  v10 = a4(a1);
  v11 = OUTLINED_FUNCTION_54();
  [v6 setValue:v10 forKey:v11];
}

void sub_2697A1E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26969329C(0, &qword_280322DB8, 0x277CD3DC8);

  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_83_0();
  v4 = sub_269854ED4();
  v5 = OUTLINED_FUNCTION_54();
  [v3 setValue:v4 forKey:v5];
}

void sub_2697A1EFC(uint64_t a1)
{
  sub_26969329C(0, &qword_280323838, 0x277CD3DB8);
  v2 = sub_269854CA4();
  v3 = sub_269854A64();
  [v1 setValue:v2 forKey:v3];
}

void sub_2697A1F9C()
{
  v1 = v0;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  v2 = sub_269855034();
  v3 = objc_allocWithZone(MEMORY[0x277CD3F18]);
  v4 = sub_2697A21C8(0, 0, 0, v2);
  [v1 setPrivateSearchForMediaIntentData_];
}

void sub_2697A2040()
{
  v1 = v0;
  sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
  v2 = sub_269855034();
  v3 = sub_269855034();
  v4 = objc_allocWithZone(MEMORY[0x277CD3F10]);
  v5 = sub_2697A2120(v2, v3, 0);
  [v1 setPrivatePlayMediaIntentData_];
}

id sub_2697A2120(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    sub_26969329C(0, &qword_280323838, 0x277CD3DB8);
    v7 = sub_269854CA4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 initWithAppSelectionEnabled:a1 appInferred:a2 audioSearchResults:v7];

  return v8;
}

id sub_2697A21C8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (!a2)
  {
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_26969329C(0, &qword_280323838, 0x277CD3DB8);
  v9 = sub_269854CA4();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_269854CA4();

LABEL_6:
  v11 = [v5 initWithPrivateMediaIntentData:a1 audioSearchResults:v9 internalSignals:v10 appInferred:a4];

  return v11;
}

void sub_2697A22BC()
{
  if (qword_2803225C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  sub_2696DAEF8();
  sub_269853D54();
  if (v2)
  {
    sub_2697593BC(v1, v2, v0);
  }
}

void sub_2697A2360(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 contentSearch];
  if (!v4)
  {
    type metadata accessor for ContentSearch();
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = OUTLINED_FUNCTION_0_37();
    [v2 setContentSearch_];
  }

  v6 = [v2 contentSearch];
  if (v6)
  {
    v7 = v6;
    sub_2697A29D8(a1);
  }
}

void sub_2697A2434(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_2698523C4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = [v2 contentSearch];
  if (!v12)
  {
    type metadata accessor for ContentSearch();
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v12 = OUTLINED_FUNCTION_0_37();
  }

  [v3 setContentSearch_];

  v14 = [v3 contentSearch];
  if (v14)
  {
    v15 = v14;
    v26[1] = a2;
    sub_269852424();
    v16 = sub_269851FD4();
    v17 = v5;
    v19 = v18;
    v26[0] = v6;
    v20 = *(v6 + 8);
    v20(v11, v17);

    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      sub_269852424();
      sub_269851FD4();
      v20(v9, v17);
      v22 = sub_269854A64();
    }

    else
    {
      v22 = 0;
    }

    v5 = v17;
    [v15 setName_];

    v6 = v26[0];
  }

  sub_2696D4E0C();
  sub_2697A26BC(v23, v3);
  sub_269852424();
  v24 = sub_269852384();
  (*(v6 + 8))(v9, v5);
  sub_2697A2730(v24, v3);
  sub_2696D3F48();
  sub_269763C54(v25, v3);
}

void sub_2697A26BC(uint64_t a1, void *a2)
{
  type metadata accessor for UtsSearchParam();
  v3 = sub_269854CA4();

  [a2 setUtsSearchParams_];
}

void sub_2697A2730(uint64_t a1, void *a2)
{
  v3 = sub_269854CA4();

  [a2 setChannelIds_];
}

id OUTLINED_FUNCTION_0_37()
{

  return sub_2697C01B0(0, 0, 0, 0xE000000000000000);
}

void sub_2697A27C0()
{
  v1 = v0;
  v2 = sub_2698523C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = [v0 contentSearch];
  if (!v9)
  {
    type metadata accessor for ContentSearch();
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v9 = sub_2697C01B0(0, 0, 0, 0xE000000000000000);
  }

  [v1 setContentSearch_];

  v11 = [v1 contentSearch];
  if (v11)
  {
    v12 = v11;
    sub_269852424();
    v13 = sub_269851FD4();
    v15 = v14;
    v16 = *(v3 + 8);
    v16(v8, v2);

    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      sub_269852424();
      sub_269851FD4();
      v16(v6, v2);
      v18 = sub_269854A64();
    }

    else
    {
      v18 = 0;
    }

    [v12 setName_];
  }
}

void sub_2697A29D8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324790, &qword_269860820);
  MEMORY[0x28223BE20](v4 - 8);
  i = (v42 - v5);
  if (qword_280322578 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    v7 = type metadata accessor for MediaNLIntent(0);
    v8 = sub_2697A3D58(qword_280323548, type metadata accessor for MediaNLIntent, &unk_269860BD8);
    sub_269853D54();
    if (v48)
    {
      sub_2696C97B8(v47, v48, v2, &selRef_setName_);
    }

    if (qword_280322580 != -1)
    {
      swift_once();
    }

    v44 = v8;
    sub_269853D54();
    if (v48)
    {
      v46[2] = v47;
      v46[3] = v48;
      v46[0] = 0x3A636D753A6E7275;
      v46[1] = 0xE800000000000000;
      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      v9 = sub_269693054();
      v10 = sub_269855104(v46, v45, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837D0], v9, v9, v9);
      v12 = v11;

      sub_2696C97B8(v10, v12, v2, &selRef_setUmcId_);
    }

    if (qword_280322568 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_38();
    sub_269853D54();
    v13 = v47;
    if (v47 != 12)
    {
      if (qword_280322520 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_4_25();
      sub_26981D3C4(v13, qword_280324778);
      if (v14)
      {
        swift_endAccess();
      }

      else
      {
        v15 = swift_endAccess();
        OUTLINED_FUNCTION_0_16(v15, sel_setType_);
      }
    }

    if (qword_2803225B0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_38();
    sub_269853D54();
    v16 = v47;
    if (v47 != 9)
    {
      if (qword_280322528 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_4_25();
      sub_26982EB2C(v16, qword_280324780);
      if (v17)
      {
        swift_endAccess();
      }

      else
      {
        v18 = swift_endAccess();
        OUTLINED_FUNCTION_0_16(v18, sel_setSort_);
      }
    }

    if (qword_280322558 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_38();
    sub_269853D54();
    if (v47 != 48)
    {
      v19 = sub_2697A5954(v47);
      sub_2696C97B8(v19, v20, v2, &selRef_setGenre_);
    }

    sub_26969329C(0, &qword_280324798, 0x277CD3B68);
    v21 = sub_2697A40A4(a1);
    OUTLINED_FUNCTION_0_16(v21, sel_setReleaseDateRange_);

    sub_2697A35D8();
    sub_2697A388C();
    if (sub_2697856BC(v2))
    {
    }

    else
    {
      sub_2697A3CE4(MEMORY[0x277D84F90], v2);
    }

    if (qword_280322598 != -1)
    {
      swift_once();
    }

    _s13MediaNLPersonVMa(0);
    sub_2697A3D58(&qword_2803247A0, _s13MediaNLPersonVMa, &unk_269861C70);
    v22 = *(OUTLINED_FUNCTION_1_31() + 16);

    if (v22)
    {
      v47 = sub_2697856BC(v2);
      if (v47)
      {
        type metadata accessor for Person();
        v23 = OUTLINED_FUNCTION_1_31();
        v24 = sub_2697ACE74(v23);

        v25 = sub_26980BAA8(v24);
        if (v47)
        {
          v26 = sub_269854CA4();
        }

        else
        {
          v26 = 0;
        }

        OUTLINED_FUNCTION_0_16(v25, sel_setRoles_);
      }

      else
      {
        [v2 setRoles_];
      }
    }

    if (qword_2803225A0 != -1)
    {
      swift_once();
    }

    v27 = *(sub_269853D64() + 16);

    if (!v27)
    {
      break;
    }

    v42[2] = a1;
    v43 = i;
    v42[1] = v7;
    OUTLINED_FUNCTION_0_38();
    v28 = sub_269853D64();
    v29 = 0;
    a1 = *(v28 + 16);
    for (i = (v28 + 40); ; i += 2)
    {
      if (a1 == v29)
      {

        i = v43;
        goto LABEL_56;
      }

      if (v29 >= *(v28 + 16))
      {
        break;
      }

      v30 = *(i - 1);
      v31 = *i;
      type metadata accessor for Person();
      v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());

      v33 = sub_2697C01B0(0, 0, 0, 0xE000000000000000);
      [v33 setRole_];
      sub_2697A3DA0(v30, v31, v33);
      v47 = sub_2697856BC(v2);
      if (v47)
      {
        v34 = v33;
        MEMORY[0x26D645B90]();
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        v35 = sub_269854CF4();
        if (v47)
        {
          v36 = sub_269854CA4();
        }

        else
        {
          v36 = 0;
        }

        OUTLINED_FUNCTION_0_16(v35, sel_setRoles_);
      }

      else
      {
        [v2 setRoles_];
      }

      ++v29;
    }

    __break(1u);
LABEL_66:
    swift_once();
  }

LABEL_56:
  v37 = sub_2697A7014();
  if (v38)
  {
    sub_2696C97B8(v37, v38, v2, &selRef_setStudio_);
  }

  if (qword_2803225B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_38();
  sub_269853D54();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247A8, &qword_269860828);
  if (__swift_getEnumTagSinglePayload(i, 1, v39) == 1)
  {
    sub_2697A3DF8(i);
  }

  else
  {
    sub_269853F14();
    v40 = v48;
    (*(*(v39 - 8) + 8))(i, v39);
    if ((v40 & 1) == 0)
    {
      v41 = sub_269854E84();
      OUTLINED_FUNCTION_0_16(v41, sel_setRecommendedAge_);
    }
  }
}

uint64_t sub_2697A3258()
{
  sub_2697A3F98();
  result = sub_269854A04();
  qword_280324768 = result;
  return result;
}

uint64_t sub_2697A3298()
{
  sub_2697A3FEC();
  result = sub_269854A04();
  qword_280324770 = result;
  return result;
}

uint64_t sub_2697A32D8()
{
  sub_2697A3E60();
  result = sub_269854A04();
  qword_280324778 = result;
  return result;
}

uint64_t sub_2697A3318()
{
  sub_2697A3EB4();
  result = sub_269854A04();
  qword_280324780 = result;
  return result;
}

void *sub_2697A3358()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247C0, &unk_269860830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269858BC0;
  *(inited + 32) = 2;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = 3;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 4;
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = 5;
  *(inited + 88) = swift_getKeyPath();
  *(inited + 96) = 16;
  *(inited + 104) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247C8, &qword_269860938);
  sub_2697A3F44();
  result = sub_269854A04();
  off_280324788 = result;
  return result;
}

id sub_2697A345C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_25(a1) isUhd];
  *v1 = result;
  return result;
}

id sub_2697A34A8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_25(a1) isDolbyVision];
  *v1 = result;
  return result;
}

id sub_2697A34F4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_25(a1) isDolbyAtmos];
  *v1 = result;
  return result;
}

id sub_2697A3540(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_25(a1) isHdr];
  *v1 = result;
  return result;
}

id sub_2697A358C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_2_25(a1) isFree];
  *v1 = result;
  return result;
}

void sub_2697A35D8()
{
  v1 = v0;
  if (qword_280322618 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  sub_2697A3D58(qword_280323548, type metadata accessor for MediaNLIntent, &unk_269860BD8);
  sub_269853D54();
  if (v15 != 4)
  {
    if (qword_280322510 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = sub_26981D394(v15, qword_280324768);
    if (v3)
    {
      swift_endAccess();
    }

    else
    {
      v4 = v2;
      swift_endAccess();
      [v1 setSeasonReference_];
    }
  }

  v5 = sub_2697A7180();
  if ((v6 & 1) == 0)
  {
    v15 = v5;
    v7 = sub_269855544();
    sub_2696C97B8(v7, v8, v1, &selRef_setSeasonNumber_);
  }

  if (qword_280322608 != -1)
  {
    swift_once();
  }

  sub_269853D54();
  if (v15 != 5)
  {
    if (qword_280322518 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = sub_26981D3AC(v15, qword_280324770);
    if (v10)
    {
      swift_endAccess();
    }

    else
    {
      v11 = v9;
      swift_endAccess();
      [v1 setEpisodeReference_];
    }
  }

  sub_2697A71A4();
  if ((v12 & 1) == 0)
  {
    v13 = sub_269855544();
    sub_2696C97B8(v13, v14, v1, &selRef_setEpisodeNumber_);
  }
}

uint64_t sub_2697A388C()
{
  v1 = sub_2698548D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v0;
  v5 = [v0 attributes];
  if (!v5)
  {
    type metadata accessor for SearchAttributes();
    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v5 = sub_2697C01B0(0, 0, 0, 0xE000000000000000);
    [v33 setAttributes_];
  }

  if (qword_2803225C0 != -1)
  {
LABEL_22:
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  sub_2697A3D58(qword_280323548, type metadata accessor for MediaNLIntent, &unk_269860BD8);
  v7 = sub_269853D64();
  v8 = 0;
  v9 = *(v7 + 16);
  v10 = (v2 + 2);
  ++v2;
  *&v11 = 136315138;
  v34 = v11;
  v35 = v2;
  v36 = v10;
  while (v9 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v12 = *(v7 + v8 + 32);
    if (qword_280322530 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_280324788 + 2) && (sub_26973D4C8(v12), (v13 & 1) != 0))
    {
      swift_endAccess();

      v14 = [v33 attributes];
      if (v14)
      {
        v15 = v14;
        sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
        v38 = sub_269855034();
        v39[0] = v15;
        swift_setAtReferenceWritableKeyPath();
      }
    }

    else
    {
      swift_endAccess();
      if (qword_280322700 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v1, qword_281571B38);
      (*v10)(v4, v16, v1);
      v17 = sub_2698548B4();
      v18 = sub_269854F14();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v39[0] = v20;
        *v19 = v34;
        v21 = sub_2697A7348(v12);
        v23 = sub_26974F520(v21, v22, v39);
        v37 = v8;
        v24 = v7;
        v25 = v4;
        v26 = v1;
        v27 = v9;
        v28 = v23;

        *(v19 + 4) = v28;
        v9 = v27;
        v1 = v26;
        v4 = v25;
        v7 = v24;
        v8 = v37;
        _os_log_impl(&dword_269684000, v17, v18, "Skipping unsupported attribute case: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        v29 = v20;
        v2 = v35;
        MEMORY[0x26D647170](v29, -1, -1);
        v30 = v19;
        v10 = v36;
        MEMORY[0x26D647170](v30, -1, -1);
      }

      (*v2)(v4, v1);
    }

    ++v8;
  }
}

void sub_2697A3CE4(uint64_t a1, void *a2)
{
  type metadata accessor for Person();
  v3 = sub_269854CA4();

  [a2 setRoles_];
}

uint64_t sub_2697A3D58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2697A3DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setName_];
}

uint64_t sub_2697A3DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324790, &qword_269860820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2697A3E60()
{
  result = qword_2803247B0;
  if (!qword_2803247B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803247B0);
  }

  return result;
}

unint64_t sub_2697A3EB4()
{
  result = qword_2803247B8;
  if (!qword_2803247B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803247B8);
  }

  return result;
}

unint64_t sub_2697A3F44()
{
  result = qword_2803247D0;
  if (!qword_2803247D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803247D0);
  }

  return result;
}

unint64_t sub_2697A3F98()
{
  result = qword_2803247D8;
  if (!qword_2803247D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803247D8);
  }

  return result;
}

unint64_t sub_2697A3FEC()
{
  result = qword_2803247E0;
  if (!qword_2803247E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803247E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return sub_269853D34();
}

uint64_t OUTLINED_FUNCTION_4_25()
{

  return swift_beginAccess();
}

uint64_t sub_2697A40A4(uint64_t a1)
{
  v100 = a1;
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v97 = v2;
  v98 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12();
  v89 = v3 - v4;
  MEMORY[0x28223BE20](v5);
  v80 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247E8, &qword_269860940);
  v8 = OUTLINED_FUNCTION_8_9(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12();
  v79 = v9 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  v99 = &v79 - v13;
  MEMORY[0x28223BE20](v12);
  v94 = &v79 - v14;
  OUTLINED_FUNCTION_2_13();
  sub_2698540A4();
  OUTLINED_FUNCTION_8();
  v95 = v16;
  v96 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v93 = v18 - v17;
  OUTLINED_FUNCTION_2_13();
  v87 = sub_269854104();
  OUTLINED_FUNCTION_8();
  v85 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v88 = v22 - v21;
  OUTLINED_FUNCTION_2_13();
  sub_269854114();
  OUTLINED_FUNCTION_8();
  v83 = v24;
  v84 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  v86 = v26 - v25;
  OUTLINED_FUNCTION_2_13();
  sub_269854134();
  OUTLINED_FUNCTION_8();
  v91 = v28;
  v92 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v90 = v30 - v29;
  OUTLINED_FUNCTION_2_13();
  v31 = sub_269851D34();
  v32 = OUTLINED_FUNCTION_8_9(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_1();
  v82 = v34 - v33;
  OUTLINED_FUNCTION_2_13();
  v35 = sub_269851E84();
  v36 = OUTLINED_FUNCTION_8_9(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  v81 = sub_269854144();
  OUTLINED_FUNCTION_8();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_1();
  v42 = v41 - v40;
  v43 = sub_269851EA4();
  v44 = OUTLINED_FUNCTION_8_9(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_1();
  v45 = sub_269851E24();
  v46 = OUTLINED_FUNCTION_8_9(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12();
  v48 = MEMORY[0x28223BE20](v47);
  MEMORY[0x28223BE20](v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247F0, &qword_269860948);
  v50 = OUTLINED_FUNCTION_8_9(v49);
  MEMORY[0x28223BE20](v50);
  v52 = &v79 - v51;
  if (qword_280322590 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  sub_2697A4BF0(qword_280323548, type metadata accessor for MediaNLIntent, &unk_269860BD8);
  sub_269853D54();
  v53 = sub_269853C94();
  if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
  {
    v54 = &qword_2803247F0;
    v55 = &qword_269860948;
    v56 = v52;
LABEL_18:
    sub_269698048(v56, v54, v55);
    return 0;
  }

  v100 = sub_269853C84();
  (*(*(v53 - 8) + 8))(v52, v53);
  sub_269851DE4();
  sub_269851DE4();
  sub_269851DE4();
  sub_269851E94();
  (*(v38 + 104))(v42, *MEMORY[0x277D56150], v81);
  sub_269851E54();
  sub_269851D24();
  sub_269854164();
  swift_allocObject();
  v57 = sub_269854154();
  (*(v83 + 104))(v86, *MEMORY[0x277D56138], v84);
  (*(v85 + 104))(v88, *MEMORY[0x277D56120], v87);
  sub_269854174();
  sub_269854194();
  sub_2697A4BF0(&qword_2803247F8, MEMORY[0x277D563F8], MEMORY[0x277D56400]);
  sub_269854A04();
  v58 = v90;
  sub_269854124();
  v59 = v93;
  sub_269854094();
  v60 = v94;
  v88 = v57;
  sub_269854084();
  v62 = v98;
  v61 = v99;
  v63 = v97;
  v64 = v89;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324800, &unk_269860950);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v65);
  sub_2697A4C38(v60, v61);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324800, &unk_269860950);
  if (__swift_getEnumTagSinglePayload(v61, 1, v66) == 1)
  {
LABEL_13:
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v74 = __swift_project_value_buffer(v62, qword_281571B38);
    (*(v63 + 16))(v64, v74, v62);
    v75 = sub_2698548B4();
    v76 = sub_269854F14();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_269684000, v75, v76, "Got no recommendation from DateTimeResolver, setting releaseDateRange to nil", v77, 2u);
      MEMORY[0x26D647170](v77, -1, -1);
    }

    (*(v63 + 8))(v64, v62);
    sub_269698048(v60, &qword_2803247E8, &qword_269860940);
    (*(v95 + 8))(v59, v96);
    (*(v91 + 8))(v58, v92);
    v56 = v61;
    v54 = &qword_2803247E8;
    v55 = &qword_269860940;
    goto LABEL_18;
  }

  v67 = v79;
  sub_2697A4C38(v61, v79);
  v68 = *(v66 - 8);
  if ((*(v68 + 88))(v67, v66) != *MEMORY[0x277D56080])
  {
    (*(v68 + 8))(v67, v66);
    goto LABEL_13;
  }

  (*(v68 + 96))(v67, v66);
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v69 = __swift_project_value_buffer(v62, qword_281571B38);
  (*(v63 + 16))(v80, v69, v62);
  v70 = sub_2698548B4();
  v71 = sub_269854F14();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_269684000, v70, v71, "Got confident recommendation from DateTimeResolver", v72, 2u);
    MEMORY[0x26D647170](v72, -1, -1);
  }

  (*(v63 + 8))(v80, v62);
  v73 = sub_269854184();

  sub_269698048(v60, &qword_2803247E8, &qword_269860940);
  (*(v95 + 8))(v59, v96);
  (*(v91 + 8))(v58, v92);
  sub_269698048(v61, &qword_2803247E8, &qword_269860940);
  return v73;
}

uint64_t sub_2697A4BF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2697A4C38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803247E8, &qword_269860940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697A4CA8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MediaNLIntent(0);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269853F44();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  v8 = sub_2696CD57C(v2, &selRef_mediaName);
  v10 = v9;
  v11 = sub_2697A6488();
  if (v12)
  {
    v13 = v11;
    v14 = v12;

    v8 = v13;
    v10 = v14;
  }

  [v2 sortOrder];
  if (qword_2803225B0 != -1)
  {
    swift_once();
  }

  v18[3] = v8;
  v18[4] = v10;
  sub_2696DAEF8();
  sub_269853D54();
  v15 = v19;
  if (v19 != 9)
  {
    if (qword_280322538 != -1)
    {
      swift_once();
    }

    sub_26982EB2C(v15, qword_280324808);
  }

  v18[2] = sub_26969CDB4();
  v18[1] = [v2 mediaType];
  v18[0] = sub_2696CD57C(v2, &selRef_artistName);
  sub_2696CD57C(v2, &selRef_albumName);
  sub_26977DD18(v2, &selRef_genreNames);
  sub_26977DD18(v2, &selRef_moodNames);
  [v2 releaseDate];
  [v2 reference];
  sub_2696CD57C(v2, &selRef_mediaIdentifier);
  v16 = sub_269854ED4();
  sub_2696CC460(v6);
  return v16;
}

uint64_t sub_2697A4F74()
{
  v1 = sub_2698523C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269852424();
  v5 = sub_269851FD4();
  v8[2] = v6;
  v8[3] = v5;
  (*(v2 + 8))(v4, v1);
  v8[1] = sub_26969CDB4();
  [v0 sortOrder];
  sub_2696CD57C(v0, &selRef_artistName);
  sub_2696CD57C(v0, &selRef_albumName);
  sub_26977DD18(v0, &selRef_genreNames);
  sub_26977DD18(v0, &selRef_moodNames);
  [v0 releaseDate];
  [v0 reference];
  sub_2696CD57C(v0, &selRef_mediaIdentifier);
  return sub_269854ED4();
}

uint64_t sub_2697A5164()
{
  type metadata accessor for INMediaSortOrder(0);
  sub_2697A3EB4();
  result = sub_269854A04();
  qword_280324808 = result;
  return result;
}

uint64_t sub_2697A5220()
{
  if (qword_280322550 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_280322550);
  }

  _s10MediaNLAppVMa(0);
  sub_2697A58D0(&qword_280324838, &unk_2698609AC);
  sub_269853D54();
  if (v3)
  {
    return v2;
  }

  if (qword_280322548 != -1)
  {
    OUTLINED_FUNCTION_0_39(&qword_280322548);
  }

  sub_269853D54();
  return v1;
}

uint64_t sub_2697A537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  swift_allocObject();
  result = sub_269853BB4();
  *a4 = result;
  return result;
}

uint64_t sub_2697A53E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324820, &unk_269860990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26985C7B0;
  if (qword_280322540 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D758;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  *(v0 + 56) = v2;
  v3 = sub_2697A55A4();
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_280322548;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_0_39(&qword_280322548);
  }

  v5 = qword_28033D760;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = qword_280322550;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_1_32(&qword_280322550);
  }

  v7 = qword_28033D768;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;

  return MEMORY[0x2821C0790](7368801, 0xE300000000000000, 0, v0);
}

uint64_t sub_2697A556C()
{
  v0 = sub_269853B84();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

unint64_t sub_2697A55A4()
{
  result = qword_280324830;
  if (!qword_280324830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324828, &qword_269860C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324830);
  }

  return result;
}

uint64_t sub_2697A5650(uint64_t a1)
{
  result = sub_269853D94();
  if (v2 <= 0x3F)
  {
    result = sub_269853B74();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2697A56D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_269853D94();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  *(a3 + *(_s10MediaNLAppVMa(0) + 20)) = a2;
}

uint64_t sub_2697A5764@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269853D94();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2697A57DC(uint64_t a1)
{
  v2 = sub_2697A58D0(qword_280323708, &unk_2698609DC);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_2697A5844(uint64_t a1)
{
  v2 = sub_2697A58D0(qword_280323708, &unk_2698609DC);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_2697A58D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s10MediaNLAppVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_32(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2697A5954(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      return 0x7275746E65766461;
    case 2:
      return 0xD000000000000011;
    case 3:
      v4 = 1835626081;
      return v4 | 0x6F69746100000000;
    case 4:
      return 0x656D696E61;
    case 5:
      return 0x68706172676F6962;
    case 6:
      return 0x6F6F77796C6C6F62;
    case 7:
      return 0x7363697373616C63;
    case 8:
      return 0x7964656D6F63;
    case 9:
      return 0x656D697263;
    case 10:
      return 0x6D61726475636F64;
    case 11:
      return 0x746E656D75636F64;
    case 12:
      return 0x616D617264;
    case 13:
      return 0x6369746F7265;
    case 14:
      v4 = 1668637797;
      return v4 | 0x6F69746100000000;
    case 15:
      v5 = 0x7361746E6166;
      return v5 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 16:
      return 0x74616E7265746E69;
    case 17:
      return 0x776F6873656D6167;
    case 18:
      v5 = 0x726F74736968;
      return v5 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 19:
      v5 = 0x6164696C6F68;
      return v5 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 20:
      return 0x726F72726F68;
    case 21:
      return 0x646E657065646E69;
    case 22:
      return 0x6B6567696164696ALL;
    case 23:
      return 0x662026207364696BLL;
    case 24:
      return 1952606060;
    case 25:
      return 0x6E656D756B636F6DLL;
    case 26:
      return 0x636973756DLL;
    case 27:
      return 0x6C61636973756DLL;
    case 28:
      v5 = 0x72657473796DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 29:
      return 1937204590;
    case 30:
      return 0x6F6F77796C6C6F6ELL;
    case 31:
      return 0x616C65766F6ELL;
    case 32:
      return 0xD000000000000010;
    case 33:
      v5 = 0x74696C616572;
      return v5 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    case 34:
      return 0x65636E616D6F72;
    case 35:
      return 0x657269746173;
    case 36:
      return 0x69662D696373;
    case 37:
      return 0x69662074726F6873;
    case 38:
      return 0x6D6F63746973;
    case 39:
      return 0xD000000000000010;
    case 40:
      return 0x7374726F7073;
    case 41:
      v3 = 0x687265707573;
      goto LABEL_29;
    case 42:
      return 0x6F68732D6B6C6174;
    case 43:
      return 0x736E656574;
    case 44:
      v3 = 0x6C6C69726874;
LABEL_29:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 45:
      result = 0x73746173756B6F74;
      break;
    case 46:
      result = 7496055;
      break;
    case 47:
      result = 0x6E726574736577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A5E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324850, &qword_269860A20);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D780 = result;
  return result;
}

uint64_t _s5GenreOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD1)
  {
    if (a2 + 47 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 47) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 48;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v5 = v6 - 48;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5GenreOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD0)
  {
    v6 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
          *result = a2 + 47;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2697A5FDC()
{
  result = qword_280324858;
  if (!qword_280324858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324858);
  }

  return result;
}

unint64_t sub_2697A6030(uint64_t a1, uint64_t a2)
{
  v2 = sub_2698555B4();

  if (v2 >= 0x30)
  {
    return 48;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2697A60B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2697A6030(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2697A60E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697A5954(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697A6120(uint64_t a1, uint64_t a2)
{
  v4 = sub_2697A62AC();
  v5 = sub_2697A6300();
  v6 = sub_2697A6354();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_2697A6198()
{
  result = qword_280324860;
  if (!qword_280324860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324868, &qword_269860A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324860);
  }

  return result;
}

unint64_t sub_2697A6200()
{
  result = qword_280324870;
  if (!qword_280324870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324870);
  }

  return result;
}

unint64_t sub_2697A6258()
{
  result = qword_280324878;
  if (!qword_280324878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324878);
  }

  return result;
}

unint64_t sub_2697A62AC()
{
  result = qword_280324880;
  if (!qword_280324880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324880);
  }

  return result;
}

unint64_t sub_2697A6300()
{
  result = qword_280324888;
  if (!qword_280324888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324888);
  }

  return result;
}

unint64_t sub_2697A6354()
{
  result = qword_280324890;
  if (!qword_280324890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324890);
  }

  return result;
}

uint64_t type metadata accessor for MediaNLIntent(uint64_t a1)
{
  result = qword_280324898;
  if (!qword_280324898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2697A641C(uint64_t a1)
{
  result = sub_269853F44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2697A6488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803249A0, &qword_269860CE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v27 - v1;
  v3 = sub_2696CAAE8();
  v5 = v3;
  v6 = v4;
  if (v4)
  {
    *&v28 = v3;
    *(&v28 + 1) = v4;
    v27[0] = 94;
    v27[1] = 0xE100000000000000;
    sub_269693054();
    if (sub_269855144())
    {

      v5 = 0;
      v6 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803249A8, &qword_269860CE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269860B70;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  if (qword_280322570 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  OUTLINED_FUNCTION_0_40();
  sub_2697A9F1C(v8, v9, &unk_269860BD8);
  OUTLINED_FUNCTION_2_26();
  sub_269853D54();
  *(inited + 48) = v28;
  if (qword_280322578 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_26();
  sub_269853D54();
  *(inited + 64) = v28;
  if (qword_280322558 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_26();
  sub_269853D54();
  if (v28 == 48)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = sub_2697A5954(v28);
  }

  *(inited + 80) = v10;
  *(inited + 88) = v11;
  if (qword_280322598 != -1)
  {
    swift_once();
  }

  v12 = _s13MediaNLPersonVMa(0);
  OUTLINED_FUNCTION_4_26();
  sub_2697A9F1C(v13, v14, &unk_269861C70);
  sub_269853D34();
  sub_269771CE8();

  if (__swift_getEnumTagSinglePayload(v2, 1, v12) == 1)
  {
    sub_2696CB05C(v2, &qword_2803249A0, &qword_269860CE0);
    *(inited + 96) = 0;
    *(inited + 104) = 0;
  }

  else
  {
    if (qword_280322640 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_4_26();
    sub_2697A9F1C(v15, v16, &unk_269861C40);
    sub_269853D54();
    *(inited + 96) = v28;
    sub_2697A9F64(v2);
  }

  if (qword_2803225A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_26();
  v17 = sub_269853D64();
  if (v17[2])
  {
    v19 = v17[4];
    v18 = v17[5];
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  *(inited + 112) = v19;
  *(inited + 120) = v18;
  if (qword_280322568 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_26();
  sub_269853D54();
  if (v28 == 12)
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = sub_2697A8CD8(v28);
  }

  v22 = 0;
  *(inited + 128) = v20;
  *(inited + 136) = v21;
  while (1)
  {
    v23 = v22 + 16;
    if (v22 == 112)
    {
      break;
    }

    v24 = *(inited + v22 + 40);
    v22 += 16;
    if (v24)
    {
      v25 = *(inited + v23 + 16);
      swift_setDeallocating();

      goto LABEL_35;
    }
  }

  swift_setDeallocating();
  v25 = 0;
LABEL_35:
  sub_269819D58();
  return v25;
}

uint64_t sub_2697A6954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v61 = v4;
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v64 = v6 - v5;
  v7 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v58 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v54[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v54[-v15];
  v17 = sub_269853F44();
  OUTLINED_FUNCTION_8();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = (v22 - v21);
  v63 = type metadata accessor for MediaNLIntent(0);
  OUTLINED_FUNCTION_3_14();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_1();
  v27 = v26 - v25;
  v59 = *(v9 + 16);
  v59(v16, a1, v7);
  v28 = (*(v9 + 88))(v16, v7);
  v29 = *(v9 + 8);
  if (v28 == *MEMORY[0x277D5C128])
  {
    v29(a1, v7);
    (*(v9 + 96))(v16, v7);
    v30 = *(v19 + 32);
    v30(v23, v16, v17);
    v30(v27, v23, v17);
    v31 = v65;
    sub_269750B68(v27, v65);
    v32 = 0;
    v33 = v31;
  }

  else
  {
    v57 = *(v9 + 8);
    v29(v16, v7);
    if (qword_280322700 != -1)
    {
      swift_once();
    }

    v34 = v62;
    v35 = __swift_project_value_buffer(v62, qword_281571B38);
    v36 = v61;
    (*(v61 + 16))(v64, v35, v34);
    v37 = v60;
    v38 = v59;
    v59(v60, a1, v7);
    v39 = sub_2698548B4();
    v40 = sub_269854F44();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v56 = a1;
      v42 = v41;
      v43 = swift_slowAlloc();
      v66 = v43;
      *v42 = 136315138;
      v55 = v40;
      v38(v58, v37, v7);
      v44 = sub_269854AE4();
      v46 = v45;
      v47 = v37;
      v48 = v57;
      v57(v47, v7);
      v49 = sub_26974F520(v44, v46, &v66);
      v50 = v36;
      v51 = v49;

      *(v42 + 4) = v51;
      _os_log_impl(&dword_269684000, v39, v55, "Unsupported parse while creating MediaNLIntent: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x26D647170](v43, -1, -1);
      MEMORY[0x26D647170](v42, -1, -1);

      v48(v56, v7);
      (*(v50 + 8))(v64, v62);
    }

    else
    {

      v52 = v57;
      v57(a1, v7);
      v52(v37, v7);
      (*(v36 + 8))(v64, v34);
    }

    v32 = 1;
    v33 = v65;
  }

  return __swift_storeEnumTagSinglePayload(v33, v32, 1, v63);
}

BOOL sub_2697A6E84()
{
  if (qword_2803225E0 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  OUTLINED_FUNCTION_0_40();
  sub_2697A9F1C(v0, v1, &unk_269860BD8);
  sub_269853D54();
  if (v28)
  {

    return 1;
  }

  else
  {
    if (qword_2803225E8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_15_20(qword_28033D810, v2, v3, v4, v5, v6, v7, v8, v24);
    if (qword_2803225F8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_15_20(qword_28033D820, v9, v10, v11, v12, v13, v14, v15, v25);
    if (qword_280322600 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_15_20(qword_28033D828, v16, v17, v18, v19, v20, v21, v22, v26);
    return v27 != 2;
  }
}

uint64_t sub_2697A7014()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324988, &qword_269860CC8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  if (qword_2803225A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  OUTLINED_FUNCTION_0_40();
  v5 = sub_2697A9F1C(v3, v4, &unk_269860BD8);
  OUTLINED_FUNCTION_17_15(v5);
  v6 = sub_269853CB4();
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_2696CB05C(v2, &qword_280324988, &qword_269860CC8);
    return 0;
  }

  else
  {
    v7 = sub_269853CA4();
    OUTLINED_FUNCTION_3_14();
    (*(v8 + 8))(v2, v6);
  }

  return v7;
}

uint64_t sub_2697A71C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324990, &qword_269860CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for MediaNLIntent(0);
  OUTLINED_FUNCTION_0_40();
  v9 = sub_2697A9F1C(v7, v8, &unk_269860BD8);
  OUTLINED_FUNCTION_17_15(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324998, &qword_269860CD8);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_2696CB05C(v6, &qword_280324990, &qword_269860CD0);
    return 0;
  }

  else
  {
    sub_269853F14();
    v11 = v14;
    OUTLINED_FUNCTION_3_14();
    (*(v12 + 8))(v6, v10);
  }

  return v11;
}

unint64_t sub_2697A7348(char a1)
{
  result = 0x7572207473726966;
  switch(a1)
  {
    case 1:
      result = 25704;
      break;
    case 2:
      result = 27444;
      break;
    case 3:
      result = 0x69762079626C6F64;
      break;
    case 4:
      result = 0x74612079626C6F64;
      break;
    case 5:
      result = 7496808;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
    case 15:
      result = 0xD000000000000012;
      break;
    case 8:
      v3 = 1650619748;
      goto LABEL_21;
    case 9:
      result = 0x656C746974627573;
      break;
    case 10:
      result = 25651;
      break;
    case 11:
      result = 2019650921;
      break;
    case 12:
      result = 0x65656E6974616DLL;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x7720736472617761;
      break;
    case 16:
      result = 1701147238;
      break;
    case 17:
      result = 0x6573616863727570;
      break;
    case 18:
      v3 = 1953391986;
LABEL_21:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x646500000000;
      break;
    case 19:
      result = 0x656D75736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A751C()
{
  if (qword_280322638 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2697A7578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248A8, &qword_269860C50);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D788 = result;
  return result;
}

uint64_t sub_2697A75D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248B8, &qword_269860C58);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D790 = result;
  return result;
}

uint64_t sub_2697A7628()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D798 = result;
  return result;
}

uint64_t sub_2697A7694()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D7A0 = result;
  return result;
}

uint64_t sub_2697A76EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(16, v1);
  qword_28033D7A8 = result;
  return result;
}

uint64_t sub_2697A7740()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248C8, &qword_269860C68);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D7B0 = result;
  return result;
}

uint64_t sub_2697A77A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248D8, &unk_269860C70);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(16, v1);
  qword_28033D7B8 = result;
  return result;
}

uint64_t sub_2697A7830()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D7C8 = result;
  return result;
}

uint64_t sub_2697A7890()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248F0, &qword_269860C80);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D7D0 = result;
  return result;
}

uint64_t sub_2697A78FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324900, &qword_269860C88);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D7D8 = result;
  return result;
}

uint64_t sub_2697A7954()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324910, &qword_269860C90);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(19, v1);
  qword_28033D7E0 = result;
  return result;
}

uint64_t sub_2697A79A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324920, &qword_269860C98);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = sub_269853BB4();
  qword_28033D7E8 = result;
  return result;
}

uint64_t sub_2697A7A04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(16, v1);
  qword_28033D7F0 = result;
  return result;
}

uint64_t sub_2697A7A8C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_68_0(v6);
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_2697A7AD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(19, v1);
  qword_28033D800 = result;
  return result;
}

uint64_t sub_2697A7B2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(27, v1);
  qword_28033D808 = result;
  return result;
}

uint64_t sub_2697A7B80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(18, v1);
  qword_28033D810 = result;
  return result;
}

uint64_t sub_2697A7BD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_1_33();
  result = sub_269853BB4();
  qword_28033D818 = result;
  return result;
}

uint64_t sub_2697A7C34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(25, v1);
  qword_28033D820 = result;
  return result;
}

uint64_t sub_2697A7C88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324970, &qword_269860CC0);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D828 = result;
  return result;
}

uint64_t sub_2697A7CF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324930, &qword_269860CA0);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(27, v1);
  qword_28033D830 = result;
  return result;
}

uint64_t sub_2697A7D44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324940, &qword_269860CA8);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D838 = result;
  return result;
}

uint64_t sub_2697A7DAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324950, &qword_269860CB0);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(26, v1);
  qword_28033D840 = result;
  return result;
}

uint64_t sub_2697A7E00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324940, &qword_269860CA8);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D848 = result;
  return result;
}

uint64_t sub_2697A7E68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324960, &qword_269860CB8);
  OUTLINED_FUNCTION_68_0(v0);
  OUTLINED_FUNCTION_3_34();
  result = OUTLINED_FUNCTION_11_29(17, v1);
  qword_28033D850 = result;
  return result;
}

uint64_t sub_2697A7EBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  swift_allocObject();
  result = sub_269853BB4();
  qword_28033D858 = result;
  return result;
}

uint64_t sub_2697A7F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324820, &unk_269860990);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_269860B80;
  if (qword_280322560 != -1)
  {
    swift_once();
  }

  v1 = qword_28033D788;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248A8, &qword_269860C50);
  *(v0 + 64) = sub_269693204(&qword_2803248B0, &qword_2803248A8, &qword_269860C50, MEMORY[0x277D5E430]);
  *(v0 + 32) = v1;
  v2 = qword_280322568;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28033D790;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248B8, &qword_269860C58);
  *(v0 + 104) = sub_269693204(&qword_2803248C0, &qword_2803248B8, &qword_269860C58, MEMORY[0x277D5E430]);
  *(v0 + 72) = v3;
  v4 = qword_280322570;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_28033D798;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324828, &qword_269860C60);
  *(v0 + 136) = v6;
  v7 = sub_269693204(&qword_280324830, &qword_280324828, &qword_269860C60, MEMORY[0x277D5E430]);
  *(v0 + 144) = v7;
  *(v0 + 112) = v5;
  v8 = qword_280322578;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_28033D7A0;
  *(v0 + 176) = v6;
  *(v0 + 184) = v7;
  *(v0 + 152) = v9;
  v10 = qword_280322580;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28033D7A8;
  *(v0 + 216) = v6;
  *(v0 + 224) = v7;
  *(v0 + 192) = v11;
  v12 = qword_280322588;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_28033D7B0;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248C8, &qword_269860C68);
  *(v0 + 264) = sub_269693204(&qword_2803248D0, &qword_2803248C8, &qword_269860C68, MEMORY[0x277D5E430]);
  *(v0 + 232) = v13;
  v14 = qword_280322590;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_28033D7B8;
  *(v0 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248D8, &unk_269860C70);
  *(v0 + 304) = sub_269693204(&qword_2803248E0, &qword_2803248D8, &unk_269860C70, MEMORY[0x277D5E430]);
  *(v0 + 272) = v15;
  v16 = qword_280322558;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_28033D780;
  *(v0 + 336) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324850, &qword_269860A20);
  *(v0 + 344) = sub_269693204(&qword_2803248E8, &qword_280324850, &qword_269860A20, MEMORY[0x277D5E430]);
  *(v0 + 312) = v17;
  v18 = qword_280322598;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_28033D7C0;
  v20 = _s23MediaPersonOntologyNodeCMa(0);
  v21 = MEMORY[0x277D5E210];
  *(v0 + 376) = v20;
  *(v0 + 384) = v21;
  *(v0 + 352) = v19;
  v22 = qword_2803225A0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_28033D7C8;
  *(v0 + 416) = v6;
  *(v0 + 424) = v7;
  *(v0 + 392) = v23;
  v24 = qword_2803225A8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_28033D7D0;
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803248F0, &qword_269860C80);
  *(v0 + 464) = sub_269693204(&qword_2803248F8, &qword_2803248F0, &qword_269860C80, MEMORY[0x277D5E430]);
  *(v0 + 432) = v25;
  v26 = qword_2803225B0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_28033D7D8;
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324900, &qword_269860C88);
  *(v0 + 504) = sub_269693204(&qword_280324908, &qword_280324900, &qword_269860C88, MEMORY[0x277D5E430]);
  *(v0 + 472) = v27;
  v28 = qword_2803225B8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_28033D7E0;
  *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324910, &qword_269860C90);
  *(v0 + 544) = sub_269693204(&qword_280324918, &qword_280324910, &qword_269860C90, MEMORY[0x277D5E430]);
  *(v0 + 512) = v29;
  v30 = qword_2803225C0;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_28033D7E8;
  *(v0 + 576) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324920, &qword_269860C98);
  *(v0 + 584) = sub_269693204(&qword_280324928, &qword_280324920, &qword_269860C98, MEMORY[0x277D5E430]);
  *(v0 + 552) = v31;
  v32 = qword_2803225C8;

  if (v32 != -1)
  {
    swift_once();
  }

  v33 = qword_28033D7F0;
  *(v0 + 616) = v6;
  *(v0 + 624) = v7;
  *(v0 + 592) = v33;
  v34 = qword_2803225D0;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_28033D7F8;
  *(v0 + 656) = _s20MediaAppOntologyNodeCMa(0);
  *(v0 + 664) = v21;
  *(v0 + 632) = v35;
  v36 = qword_280322608;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_28033D830;
  *(v0 + 696) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324930, &qword_269860CA0);
  *(v0 + 704) = sub_269693204(&qword_280324938, &qword_280324930, &qword_269860CA0, MEMORY[0x277D5E430]);
  *(v0 + 672) = v37;
  v38 = qword_280322610;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_28033D838;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324940, &qword_269860CA8);
  *(v0 + 736) = v40;
  v41 = sub_269693204(&qword_280324948, &qword_280324940, &qword_269860CA8, MEMORY[0x277D5E430]);
  *(v0 + 744) = v41;
  *(v0 + 712) = v39;
  v42 = qword_280322618;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_28033D840;
  *(v0 + 776) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324950, &qword_269860CB0);
  *(v0 + 784) = sub_269693204(&qword_280324958, &qword_280324950, &qword_269860CB0, MEMORY[0x277D5E430]);
  *(v0 + 752) = v43;
  v44 = qword_280322620;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = qword_28033D848;
  *(v0 + 816) = v40;
  *(v0 + 824) = v41;
  *(v0 + 792) = v45;
  v46 = qword_280322630;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = qword_28033D858;
  *(v0 + 856) = v6;
  *(v0 + 864) = v7;
  *(v0 + 832) = v47;
  v48 = qword_280322628;

  if (v48 != -1)
  {
    swift_once();
  }

  v49 = qword_28033D850;
  *(v0 + 896) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324960, &qword_269860CB8);
  *(v0 + 904) = sub_269693204(&qword_280324968, &qword_280324960, &qword_269860CB8, MEMORY[0x277D5E430]);
  *(v0 + 872) = v49;
  v50 = qword_2803225D8;

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = qword_28033D800;
  *(v0 + 936) = v6;
  *(v0 + 944) = v7;
  *(v0 + 912) = v51;
  v52 = qword_2803225E0;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = qword_28033D808;
  *(v0 + 976) = v6;
  *(v0 + 984) = v7;
  *(v0 + 952) = v53;
  v54 = qword_2803225E8;

  if (v54 != -1)
  {
    swift_once();
  }

  v55 = qword_28033D810;
  *(v0 + 1016) = v6;
  *(v0 + 1024) = v7;
  *(v0 + 992) = v55;
  v56 = qword_2803225F8;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = qword_28033D820;
  *(v0 + 1056) = v6;
  *(v0 + 1064) = v7;
  *(v0 + 1032) = v57;
  v58 = qword_280322600;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = qword_28033D828;
  *(v0 + 1096) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324970, &qword_269860CC0);
  *(v0 + 1104) = sub_269693204(&qword_280324978, &qword_280324970, &qword_269860CC0, MEMORY[0x277D5E430]);
  *(v0 + 1072) = v59;
  sub_269853BA4();
  swift_allocObject();

  result = sub_269853B94();
  qword_28033D860 = result;
  return result;
}

unint64_t sub_2697A8BC0()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A8C0C(char a1)
{
  result = 1684957542;
  switch(a1)
  {
    case 1:
      result = 2036427888;
      break;
    case 2:
      result = 6579297;
      break;
    case 3:
      result = 0x65766F6D6572;
      break;
    case 4:
      result = 0x6170206863746566;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2697A8C8C()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A8CD8(char a1)
{
  result = 0x736472617761;
  switch(a1)
  {
    case 1:
      result = 0x776F68735F7674;
      break;
    case 2:
      result = 0x6F736165735F7674;
      break;
    case 3:
      result = 0x6F736970655F7674;
      break;
    case 4:
      result = 0x6569766F6DLL;
      break;
    case 5:
      result = 0x6C656E6E616863;
      break;
    case 6:
      result = 0x656D6974776F6873;
      break;
    case 7:
      result = 0x73676E696874;
      break;
    case 8:
      result = 0x72656C69617274;
      break;
    case 9:
      result = 0x7374656B636974;
      break;
    case 10:
      result = 0x7372657461656874;
      break;
    case 11:
      result = 0x736F65646976;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2697A8E14()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2697A8E60(char a1)
{
  result = 0x42656D69546C6C41;
  switch(a1)
  {
    case 1:
      result = 0x57656D69546C6C41;
      break;
    case 2:
      result = 1953719650;
      break;
    case 3:
      result = OUTLINED_FUNCTION_7_30(28535);
      break;
    case 4:
      result = 0x72616C75706F70;
      break;
    case 5:
      result = 0x6E656D6D6F636572;
      break;
    case 6:
      v3 = 1702323566;
      goto LABEL_9;
    case 7:
      v3 = 1701080175;
LABEL_9:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x747300000000;
      break;
    case 8:
      result = 0x676E6973736F7267;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2697A8F54()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A8FA0(char a1)
{
  if (!a1)
  {
    return 0x657469726F766166;
  }

  if (a1 == 1)
  {
    return 0x7473696C68736977;
  }

  return 0x73696C6863746177;
}

unint64_t sub_2697A8FF8()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A9044(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_7_30(26982);
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_19();
      break;
    case 3:
      result = 1954047342;
      break;
    case 4:
      result = 0x73756F6976657270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2697A90B0()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A90FC(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_7_30(26982);
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_19();
      break;
    case 3:
      result = 0x746E6572727563;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2697A917C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697A8BC0();
  *a1 = result;
  return result;
}

uint64_t sub_2697A91AC()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A8C0C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2697A9248@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697A8C8C();
  *a1 = result;
  return result;
}

uint64_t sub_2697A9278()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A8CD8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2697A9314@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697A8E14();
  *a1 = result;
  return result;
}

unint64_t sub_2697A9344()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A8E60(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2697A93E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697A8F54();
  *a1 = result;
  return result;
}

uint64_t sub_2697A9410()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A8FA0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2697A94AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697A8FF8();
  *a1 = result;
  return result;
}

uint64_t sub_2697A94DC()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A9044(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2697A9578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697A90B0();
  *a1 = result;
  return result;
}

uint64_t sub_2697A95A8()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A90FC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9670(char a1)
{
  if (a1)
  {
    return 0x65674178616DLL;
  }

  else
  {
    return 0x6567416E696DLL;
  }
}

unint64_t sub_2697A9698()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698555B4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2697A96EC()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2697A9738(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 0x206D7269666E6F63;
      break;
    case 4:
      result = 0x63207463656A6572;
      break;
    case 5:
      result = 0x726F6D20776F6873;
      break;
    case 6:
      result = 0x6B636162206F67;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2697A9814()
{
  OUTLINED_FUNCTION_8_29();
  sub_2698553E4();
  OUTLINED_FUNCTION_13_18();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2697A9864(char a1)
{
  if (a1)
  {
    return 0x69736976656C6574;
  }

  else
  {
    return 0x76745F656C707061;
  }
}

uint64_t sub_2697A9908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697A9814();
  *a1 = result;
  return result;
}

uint64_t sub_2697A9940()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A9670(v1);
  *v0 = result;
  v0[1] = 0xE600000000000000;
  return result;
}

unint64_t sub_2697A99E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697A9698();
  *a1 = result;
  return result;
}

unint64_t sub_2697A9A10()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A7348(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_2697A9AAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697A96EC();
  *a1 = result;
  return result;
}

uint64_t sub_2697A9ADC()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A9738(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9B78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697A9814();
  *a1 = result;
  return result;
}

uint64_t sub_2697A9BB0()
{
  v1 = OUTLINED_FUNCTION_5_30();
  result = sub_2697A9864(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2697A9C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_2697A9CB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269853F44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2697A9D38(uint64_t a1)
{
  v2 = sub_2697A9F1C(&qword_280324980, type metadata accessor for MediaNLIntent, &unk_269860C08);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_2697A9DB4(uint64_t a1)
{
  v2 = sub_2697A9F1C(&qword_280324980, type metadata accessor for MediaNLIntent, &unk_269860C08);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_2697A9E20(uint64_t a1)
{
  v2 = sub_2697A9F1C(&qword_280324980, type metadata accessor for MediaNLIntent, &unk_269860C08);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_2697A9F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2697A9F64(uint64_t a1)
{
  v2 = _s13MediaNLPersonVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.MediaConfirmationValue(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.SeasonNumberReference(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MediaNLIntent.SearchAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.SearchAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictedApp.Order(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_2697AA394(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_14_18(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaNLIntent.Sort(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.Sort(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.List(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MediaNLIntent.Noun(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MediaNLIntent.Noun(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2697AA810(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          result = OUTLINED_FUNCTION_14_18(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2697AA8EC()
{
  result = qword_2803249B8;
  if (!qword_2803249B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249B8);
  }

  return result;
}

unint64_t sub_2697AA988()
{
  result = qword_2803249D0;
  if (!qword_2803249D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249D0);
  }

  return result;
}

unint64_t sub_2697AA9E0()
{
  result = qword_2803249D8;
  if (!qword_2803249D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249D8);
  }

  return result;
}

unint64_t sub_2697AAA80()
{
  result = qword_2803249F0;
  if (!qword_2803249F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249F0);
  }

  return result;
}

unint64_t sub_2697AAAD8()
{
  result = qword_2803249F8;
  if (!qword_2803249F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803249F8);
  }

  return result;
}

unint64_t sub_2697AAB74()
{
  result = qword_280324A10;
  if (!qword_280324A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A10);
  }

  return result;
}

unint64_t sub_2697AABCC()
{
  result = qword_280324A18;
  if (!qword_280324A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A18);
  }

  return result;
}

unint64_t sub_2697AAC6C()
{
  result = qword_280324A30;
  if (!qword_280324A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A30);
  }

  return result;
}

unint64_t sub_2697AACC4()
{
  result = qword_280324A38;
  if (!qword_280324A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A38);
  }

  return result;
}

unint64_t sub_2697AAD60()
{
  result = qword_280324A50;
  if (!qword_280324A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A50);
  }

  return result;
}

unint64_t sub_2697AADB8()
{
  result = qword_280324A58;
  if (!qword_280324A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A58);
  }

  return result;
}

unint64_t sub_2697AAE58()
{
  result = qword_280324A70;
  if (!qword_280324A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A70);
  }

  return result;
}

unint64_t sub_2697AAEF8()
{
  result = qword_280324A88;
  if (!qword_280324A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A88);
  }

  return result;
}

unint64_t sub_2697AAF50()
{
  result = qword_280324A90;
  if (!qword_280324A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A90);
  }

  return result;
}

unint64_t sub_2697AAFA8()
{
  result = qword_280324A98;
  if (!qword_280324A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324A98);
  }

  return result;
}

unint64_t sub_2697AB000()
{
  result = qword_280324AA0;
  if (!qword_280324AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AA0);
  }

  return result;
}

unint64_t sub_2697AB0A0()
{
  result = qword_280324AB8;
  if (!qword_280324AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AB8);
  }

  return result;
}

unint64_t sub_2697AB0F8()
{
  result = qword_280324AC0;
  if (!qword_280324AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AC0);
  }

  return result;
}

unint64_t sub_2697AB194()
{
  result = qword_280324AD8;
  if (!qword_280324AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AD8);
  }

  return result;
}

unint64_t sub_2697AB1EC()
{
  result = qword_280324AE0;
  if (!qword_280324AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AE0);
  }

  return result;
}

unint64_t sub_2697AB244()
{
  result = qword_280324AE8;
  if (!qword_280324AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324AE8);
  }

  return result;
}

unint64_t sub_2697AB2E0()
{
  result = qword_280324B00;
  if (!qword_280324B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B00);
  }

  return result;
}

unint64_t sub_2697AB338()
{
  result = qword_280324B08;
  if (!qword_280324B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B08);
  }

  return result;
}

unint64_t sub_2697AB390()
{
  result = qword_280324B10;
  if (!qword_280324B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B10);
  }

  return result;
}

unint64_t sub_2697AB3E8()
{
  result = qword_280324B18;
  if (!qword_280324B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B18);
  }

  return result;
}

unint64_t sub_2697AB440()
{
  result = qword_280324B20;
  if (!qword_280324B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B20);
  }

  return result;
}

unint64_t sub_2697AB498()
{
  result = qword_280324B28;
  if (!qword_280324B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B28);
  }

  return result;
}

unint64_t sub_2697AB4F0()
{
  result = qword_280324B30;
  if (!qword_280324B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B30);
  }

  return result;
}

unint64_t sub_2697AB544()
{
  result = qword_280324B38;
  if (!qword_280324B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B38);
  }

  return result;
}

unint64_t sub_2697AB598()
{
  result = qword_280324B40;
  if (!qword_280324B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B40);
  }

  return result;
}

unint64_t sub_2697AB5EC()
{
  result = qword_280324B48;
  if (!qword_280324B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B48);
  }

  return result;
}

unint64_t sub_2697AB640()
{
  result = qword_280324B50;
  if (!qword_280324B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B50);
  }

  return result;
}

unint64_t sub_2697AB694()
{
  result = qword_280324B58;
  if (!qword_280324B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B58);
  }

  return result;
}

unint64_t sub_2697AB6E8()
{
  result = qword_280324B60;
  if (!qword_280324B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B60);
  }

  return result;
}

unint64_t sub_2697AB73C()
{
  result = qword_280324B68;
  if (!qword_280324B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B68);
  }

  return result;
}

unint64_t sub_2697AB790()
{
  result = qword_280324B70;
  if (!qword_280324B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B70);
  }

  return result;
}

unint64_t sub_2697AB7E4()
{
  result = qword_280324B78;
  if (!qword_280324B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B78);
  }

  return result;
}

unint64_t sub_2697AB838()
{
  result = qword_280324B80;
  if (!qword_280324B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B80);
  }

  return result;
}

unint64_t sub_2697AB88C()
{
  result = qword_280324B88;
  if (!qword_280324B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B88);
  }

  return result;
}

unint64_t sub_2697AB8E0()
{
  result = qword_280324B90;
  if (!qword_280324B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B90);
  }

  return result;
}

unint64_t sub_2697AB934()
{
  result = qword_280324B98;
  if (!qword_280324B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324B98);
  }

  return result;
}

unint64_t sub_2697AB988()
{
  result = qword_280324BA0;
  if (!qword_280324BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BA0);
  }

  return result;
}

unint64_t sub_2697AB9DC()
{
  result = qword_280324BA8;
  if (!qword_280324BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BA8);
  }

  return result;
}

unint64_t sub_2697ABA30()
{
  result = qword_280324BB0;
  if (!qword_280324BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BB0);
  }

  return result;
}

unint64_t sub_2697ABA84()
{
  result = qword_280324BB8;
  if (!qword_280324BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BB8);
  }

  return result;
}

unint64_t sub_2697ABAD8()
{
  result = qword_280324BC0;
  if (!qword_280324BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BC0);
  }

  return result;
}

unint64_t sub_2697ABB2C()
{
  result = qword_280324BC8;
  if (!qword_280324BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324BC8);
  }

  return result;
}