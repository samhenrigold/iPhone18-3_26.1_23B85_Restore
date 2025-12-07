uint64_t sub_1B1E2E0B4@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784888, &qword_1B1F2D1A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784890, &qword_1B1F2D1A8);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784868, &qword_1B1F2D198);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  sub_1B1E2FBF4();
  sub_1B1F19F10();
  sub_1B1F19F00();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784898, &qword_1B1F2D1B0);
  sub_1B1F19EF0();

  sub_1B1F19F00();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848A0, &qword_1B1F2D1E0);
  sub_1B1F19EF0();

  sub_1B1F19F00();
  sub_1B1F19F20();
  sub_1B1F19EE0();
  v10 = sub_1B1E2FC9C(&qword_1EB784870, &qword_1EB784868, &qword_1B1F2D198, MEMORY[0x1E695A498]);
  MEMORY[0x1B273C7E0](v7, &unk_1F28F5670, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x1B273C7D0](v9, &unk_1F28F5670, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_1B1E2E41C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E2E3F8();
  *a1 = result;
  return result;
}

void sub_1B1E2E448()
{
  OUTLINED_FUNCTION_17_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784828, &qword_1B1F2D138);
  OUTLINED_FUNCTION_8(v1);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12_3();
  v3 = sub_1B1F1A1D0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v7 = sub_1B1F1A370();
  v8 = OUTLINED_FUNCTION_8(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_16_3();
  v9 = sub_1B1F1A850();
  v10 = OUTLINED_FUNCTION_8(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v11 = sub_1B1F1A1E0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_14_3();
  sub_1B1F1A840();
  sub_1B1F1A360();
  (*(v5 + 104))(v0, *MEMORY[0x1E6968DF0], v3);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  sub_1B1F1A1F0();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  sub_1B1F19F80();
  OUTLINED_FUNCTION_15_1();
}

void sub_1B1E2E644()
{
  OUTLINED_FUNCTION_17_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848A8, &qword_1B1F2D1E8);
  OUTLINED_FUNCTION_8(v1);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v2);
  v55 = v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784828, &qword_1B1F2D138);
  OUTLINED_FUNCTION_8(v4);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  v54 = v46 - v6;
  v7 = sub_1B1F1A1D0();
  v8 = OUTLINED_FUNCTION_9_5(v7);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v11 = sub_1B1F1A370();
  v12 = OUTLINED_FUNCTION_8(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  v15 = v14 - v13;
  v16 = sub_1B1F1A850();
  v17 = OUTLINED_FUNCTION_8(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_3();
  v52 = sub_1B1F1A1E0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848B0, &qword_1B1F2D1F0);
  v19 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848B8, &qword_1B1F2D1F8) - 8);
  v20 = *v19;
  v51 = *(*v19 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v53 = v22;
  *(v22 + 16) = xmmword_1B1F29850;
  v23 = v22 + v21;
  v46[1] = v19[14];
  *(v22 + v21) = 0;
  sub_1B1F1A840();
  sub_1B1F1A360();
  v47 = *MEMORY[0x1E6968DF0];
  v24 = *(v10 + 104);
  v48 = v10 + 104;
  v50 = v24;
  v24(v0);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_5_7(v25, v26, v27, v15, v0);
  OUTLINED_FUNCTION_4_6();
  v28 = v52;
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v52);
  v32 = sub_1B1F19EB0();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  OUTLINED_FUNCTION_18_3();
  v36 = (v23 + v51);
  v51 = v19[14];
  *v36 = 1;
  sub_1B1F1A840();
  sub_1B1F1A360();
  v50(v0, v47, v49);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_5_7(v37, v38, v39, v15, v0);
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v28);
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v32);
  OUTLINED_FUNCTION_18_3();
  sub_1B1F19ED0();
  sub_1B1E2EFFC();
  sub_1B1F1A730();
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_1B1E2EA38(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1F1B160();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1E2EA8C(char a1)
{
  if (a1)
  {
    return 0x656C67676F74;
  }

  else
  {
    return 1852994932;
  }
}

unint64_t sub_1B1E2EAC8()
{
  result = qword_1ED84EDE0;
  if (!qword_1ED84EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDE0);
  }

  return result;
}

uint64_t sub_1B1E2EB34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1E2EA38(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B1E2EB64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E2EA8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B1E2EBE8()
{
  result = qword_1ED84EE20;
  if (!qword_1ED84EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EE20);
  }

  return result;
}

unint64_t sub_1B1E2EC40()
{
  result = qword_1ED84EDF8;
  if (!qword_1ED84EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDF8);
  }

  return result;
}

unint64_t sub_1B1E2EC98()
{
  result = qword_1ED84EDD8;
  if (!qword_1ED84EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDD8);
  }

  return result;
}

unint64_t sub_1B1E2ECFC()
{
  result = qword_1ED84EE08;
  if (!qword_1ED84EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EE08);
  }

  return result;
}

unint64_t sub_1B1E2ED50()
{
  result = qword_1ED84EE00;
  if (!qword_1ED84EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EE00);
  }

  return result;
}

unint64_t sub_1B1E2EDA4()
{
  result = qword_1ED84EE18;
  if (!qword_1ED84EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EE18);
  }

  return result;
}

unint64_t sub_1B1E2EDFC()
{
  result = qword_1ED84EE10;
  if (!qword_1ED84EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EE10);
  }

  return result;
}

unint64_t sub_1B1E2EEA8()
{
  result = qword_1EB7847F0;
  if (!qword_1EB7847F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7847F0);
  }

  return result;
}

uint64_t sub_1B1E2EEFC(uint64_t a1)
{
  v2 = sub_1B1E2EEA8();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1B1E2EF4C()
{
  result = qword_1ED84EDF0;
  if (!qword_1ED84EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDF0);
  }

  return result;
}

unint64_t sub_1B1E2EFA4()
{
  result = qword_1ED84EDD0;
  if (!qword_1ED84EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDD0);
  }

  return result;
}

unint64_t sub_1B1E2EFFC()
{
  result = qword_1ED84EDE8;
  if (!qword_1ED84EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDE8);
  }

  return result;
}

uint64_t sub_1B1E2F054(uint64_t a1)
{
  v2 = sub_1B1E2EDFC();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1B1E2F0A4()
{
  result = qword_1ED84EDB8;
  if (!qword_1ED84EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDB8);
  }

  return result;
}

unint64_t sub_1B1E2F0FC()
{
  result = qword_1ED84EDC8;
  if (!qword_1ED84EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDC8);
  }

  return result;
}

uint64_t sub_1B1E2F188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1E2F1AC, 0, 0);
}

uint64_t sub_1B1E2F1AC()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 hasCapability_];

  if ((v2 & 1) == 0)
  {
    v4 = [objc_allocWithZone(WFAVSystemController) init];
    sub_1B1F19E50();
    if (*(v0 + 40) == 1)
    {
      OUTLINED_FUNCTION_15_4();
      v5 = sub_1B1F1A860();
      v6 = [v4 toggleSilentModeWithReason:v5 client:1];

      if ((v6 & 1) == 0)
      {
        sub_1B1E2FC48();
        swift_allocError();
        *v7 = 1;
LABEL_9:
        swift_willThrow();

        goto LABEL_10;
      }
    }

    else
    {
      sub_1B1F19E50();
      v8 = *(v0 + 40);
      OUTLINED_FUNCTION_15_4();
      v9 = sub_1B1F1A860();
      LOBYTE(v8) = [v4 setSilentMode:v8 reason:v9 client:1];

      if ((v8 & 1) == 0)
      {
        sub_1B1E2FC48();
        swift_allocError();
        *v11 = 2;
        goto LABEL_9;
      }
    }

    sub_1B1F19E40();

    v10 = *(v0 + 8);
    goto LABEL_11;
  }

  sub_1B1E2FC48();
  swift_allocError();
  *v3 = 0;
  swift_willThrow();
LABEL_10:
  v10 = *(v0 + 8);
LABEL_11:

  return v10();
}

void sub_1B1E2F3D0()
{
  OUTLINED_FUNCTION_17_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784818, &qword_1B1F2D128);
  OUTLINED_FUNCTION_8(v0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v1);
  v69 = &v58 - v2;
  sub_1B1F19F30();
  OUTLINED_FUNCTION_0();
  v71 = v3;
  v72 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_3();
  v68 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784820, &qword_1B1F2D130);
  v8 = OUTLINED_FUNCTION_8(v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784828, &qword_1B1F2D138);
  OUTLINED_FUNCTION_8(v11);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B1F1A1D0();
  v14 = OUTLINED_FUNCTION_9_5(v13);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_3();
  v19 = v18 - v17;
  v20 = sub_1B1F1A370();
  v21 = OUTLINED_FUNCTION_8(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_3();
  v24 = v23 - v22;
  v25 = sub_1B1F1A850();
  v26 = OUTLINED_FUNCTION_8(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_3();
  v27 = sub_1B1F1A1E0();
  v63 = v27;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_3();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784830, &qword_1B1F2D140);
  OUTLINED_FUNCTION_14_3();
  sub_1B1F1A840();
  sub_1B1F1A360();
  v64 = *MEMORY[0x1E6968DF0];
  v28 = *(v16 + 104);
  v65 = v16 + 104;
  v67 = v28;
  v59 = v19;
  v28(v19);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_5_7(v29, v30, v31, v24, v19);
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v27);
  v74 = 0;
  v35 = sub_1B1F19E30();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v35);
  v62 = *MEMORY[0x1E695A500];
  v42 = *(v72 + 104);
  v72 += 104;
  v61 = v42;
  v43 = v68;
  v42(v68);
  sub_1B1E2EEA8();
  sub_1B1F19E70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784838, &qword_1B1F2D148);
  sub_1B1F1A840();
  sub_1B1F1A360();
  v44 = v59;
  v67(v59, v64, v66);
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_5_7(v45, v46, v47, v24, v44);
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v63);
  v73 = 1;
  sub_1B1F1AA10();
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  OUTLINED_FUNCTION_4_6();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v35);
  v61(v43, v62, v71);
  sub_1B1F19E80();
  OUTLINED_FUNCTION_15_1();
}

uint64_t sub_1B1E2F8DC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B1E2F988;

  return sub_1B1E2F188(a1, v5, v4);
}

uint64_t sub_1B1E2F988()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1B1E2FA7C(void *a1@<X8>)
{
  sub_1B1E2F3D0();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B1E2FAA4(uint64_t a1)
{
  v2 = sub_1B1E2FBF4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1B1E2FAE0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *sub_1B1E2FB1C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E2FBF4()
{
  result = qword_1ED84EDC0;
  if (!qword_1ED84EDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EDC0);
  }

  return result;
}

unint64_t sub_1B1E2FC48()
{
  result = qword_1EB784840;
  if (!qword_1EB784840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784840);
  }

  return result;
}

uint64_t sub_1B1E2FC9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

_BYTE *sub_1B1E2FCE4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E2FDC0()
{
  result = qword_1EB7848C0;
  if (!qword_1EB7848C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7848C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1B1F1A1F0();
}

uint64_t OUTLINED_FUNCTION_18_3()
{

  return MEMORY[0x1EEDB3A88](v0, v1, v2);
}

uint64_t sub_1B1E2FE80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001B1F38DA0 == a2;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001B1F38DC0 == a2;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F68537865646E69 && a2 == 0xEE00737475637472;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E496574656C6564 && a2 == 0xEB00000000786564)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B1F1B510();

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

unint64_t sub_1B1E30000(char a1)
{
  result = 0x6F68537865646E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6E496574656C6564;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_1B1E300A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E30130(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6563726F66 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1B1E3024C(char a1)
{
  if (!a1)
  {
    return 0x64657461647075;
  }

  if (a1 == 1)
  {
    return 0x6465766F6D6572;
  }

  return 0x6563726F66;
}

uint64_t sub_1B1E302A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E2FE80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E302F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E2FFF8();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E30318(uint64_t a1)
{
  v2 = sub_1B1E30B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E30354(uint64_t a1)
{
  v2 = sub_1B1E30B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E303B0@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_17_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B1E303DC(uint64_t a1)
{
  v2 = sub_1B1E30BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E30418(uint64_t a1)
{
  v2 = sub_1B1E30BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E30458(uint64_t a1)
{
  v2 = sub_1B1E30CB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E30494(uint64_t a1)
{
  v2 = sub_1B1E30CB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E304D0(uint64_t a1)
{
  v2 = sub_1B1E30C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3050C(uint64_t a1)
{
  v2 = sub_1B1E30C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E30550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E30130(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E30578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E30244();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E305A0(uint64_t a1)
{
  v2 = sub_1B1E30C64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E305DC(uint64_t a1)
{
  v2 = sub_1B1E30C64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VoiceShortcutClientRequest.Spotlight.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848C8, &qword_1B1F2D300);
  OUTLINED_FUNCTION_0();
  v48 = v4;
  v49 = v3;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v47 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848D0, &qword_1B1F2D308);
  OUTLINED_FUNCTION_0();
  v44 = v8;
  v45 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v43 = v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848D8, &qword_1B1F2D310);
  OUTLINED_FUNCTION_0();
  v46 = v11;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v52 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848E0, &qword_1B1F2D318);
  OUTLINED_FUNCTION_0();
  v41 = v15;
  v42 = v14;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7848E8, &unk_1B1F2D320);
  OUTLINED_FUNCTION_0();
  v53 = v20;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  v24 = *v1;
  v51 = v1[1];
  v25 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E30B68();
  sub_1B1F1B830();
  if (!(v25 >> 6))
  {
    LOBYTE(v56) = 1;
    sub_1B1E30C64();
    v31 = v19;
    OUTLINED_FUNCTION_12_4(&_s9SpotlightO28IndexToolChangesetCodingKeysON, &v56);
    v56 = v24;
    v55 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785850, &qword_1B1F31450);
    sub_1B1E322F4(&qword_1EB784910, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    v32 = v50;
    v33 = v54;
    sub_1B1F1B2B0();
    if (v33)
    {
      (*(v46 + 8))(v52, v32);
      OUTLINED_FUNCTION_9_6();
      v29 = v23;
      v30 = v31;
    }

    else
    {
      v37 = v31;
      v56 = v51;
      v55 = 1;
      sub_1B1F1B2B0();
      v38 = v46;
      LOBYTE(v56) = 2;
      v39 = v52;
      sub_1B1F1B280();
      (*(v38 + 8))(v39, v32);
      OUTLINED_FUNCTION_9_6();
      v29 = v23;
      v30 = v37;
    }

    return v28(v29, v30);
  }

  if (v25 >> 6 == 1)
  {
    LOBYTE(v56) = 3;
    sub_1B1E30BBC();
    v26 = v47;
    OUTLINED_FUNCTION_12_4(&_s9SpotlightO21DeleteIndexCodingKeysON, &v56);
    v27 = v49;
    sub_1B1F1B250();
    (*(v48 + 8))(v26, v27);
    OUTLINED_FUNCTION_9_6();
    v29 = v23;
    v30 = v19;
    return v28(v29, v30);
  }

  if (v51 | v24 || v25 != 128)
  {
    LOBYTE(v56) = 2;
    sub_1B1E30C10();
    v34 = v43;
    OUTLINED_FUNCTION_12_4(&_s9SpotlightO24IndexShortcutsCodingKeysON, &v56);
    (*(v44 + 8))(v34, v45);
  }

  else
  {
    LOBYTE(v56) = 0;
    sub_1B1E30CB8();
    OUTLINED_FUNCTION_12_4(&_s9SpotlightO37FullContextualActionReindexCodingKeysON, &v56);
    (*(v41 + 8))(v18, v42);
  }

  OUTLINED_FUNCTION_9_6();
  return v35(v23, v19);
}

unint64_t sub_1B1E30B68()
{
  result = qword_1EB7848F0;
  if (!qword_1EB7848F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7848F0);
  }

  return result;
}

unint64_t sub_1B1E30BBC()
{
  result = qword_1EB7848F8;
  if (!qword_1EB7848F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7848F8);
  }

  return result;
}

unint64_t sub_1B1E30C10()
{
  result = qword_1EB784900;
  if (!qword_1EB784900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784900);
  }

  return result;
}

unint64_t sub_1B1E30C64()
{
  result = qword_1EB784908;
  if (!qword_1EB784908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784908);
  }

  return result;
}

unint64_t sub_1B1E30CB8()
{
  result = qword_1EB784918;
  if (!qword_1EB784918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784918);
  }

  return result;
}

void VoiceShortcutClientRequest.Spotlight.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784920, &qword_1B1F2D330);
  OUTLINED_FUNCTION_0();
  v76 = v3;
  v77 = v4;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v79 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784928, &qword_1B1F2D338);
  OUTLINED_FUNCTION_0();
  v74 = v8;
  v75 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v82 = v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784930, &qword_1B1F2D340);
  OUTLINED_FUNCTION_0();
  v78 = v11;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784938, &qword_1B1F2D348);
  OUTLINED_FUNCTION_0();
  v73 = v16;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784940, &unk_1B1F2D350);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  v26 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v26);
  sub_1B1E30B68();
  v27 = v84;
  sub_1B1F1B810();
  if (v27)
  {
    goto LABEL_9;
  }

  v70 = v15;
  v71 = v19;
  v29 = v81;
  v28 = v82;
  v72 = v14;
  v84 = v22;
  v30 = v25;
  v31 = sub_1B1F1B210();
  sub_1B1E322BC(v31, 0);
  if (v34 == v35 >> 1)
  {
LABEL_8:
    v48 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_18();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v50 = &type metadata for VoiceShortcutClientRequest.Spotlight;
    sub_1B1F1B190();
    sub_1B1F1AFD0();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_9_6();
    v51(v30, v20);
LABEL_9:
    v52 = v83;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v52);
    return;
  }

  v69 = 0;
  if (v34 < (v35 >> 1))
  {
    v36 = *(v33 + v34);
    sub_1B1E32B64(v34 + 1, v35 >> 1, v32, v33, v34, v35);
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    if (v38 == v40 >> 1)
    {
      v41 = v80;
      switch(v36)
      {
        case 1:
          LOBYTE(v87) = 1;
          sub_1B1E30C64();
          OUTLINED_FUNCTION_4_7(&_s9SpotlightO28IndexToolChangesetCodingKeysON, &v87);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB785850, &qword_1B1F31450);
          LOBYTE(v86) = 0;
          v56 = sub_1B1E322F4(&qword_1EB783240, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
          v57 = OUTLINED_FUNCTION_20_2(v56, &v86);
          v45 = v87;
          v85 = 1;
          OUTLINED_FUNCTION_20_2(v57, &v85);
          v63 = v29;
          v46 = v86;
          v85 = 2;
          v64 = v63;
          LODWORD(v82) = sub_1B1F1B1D0();
          swift_unknownObjectRelease();
          v65 = OUTLINED_FUNCTION_15_5();
          v66(v65, v64);
          v67 = OUTLINED_FUNCTION_11_3();
          v68(v67);
          v47 = v82 & 1;
          v52 = v83;
          v41 = v80;
          break;
        case 2:
          LOBYTE(v87) = 2;
          sub_1B1E30C10();
          OUTLINED_FUNCTION_4_7(&_s9SpotlightO24IndexShortcutsCodingKeysON, &v87);
          swift_unknownObjectRelease();
          (*(v74 + 8))(v28, v75);
          OUTLINED_FUNCTION_9_6();
          v53 = OUTLINED_FUNCTION_11_3();
          v54(v53);
          v46 = 0;
          v47 = 0x80;
          v45 = 1;
          goto LABEL_12;
        case 3:
          LOBYTE(v87) = 3;
          sub_1B1E30BBC();
          OUTLINED_FUNCTION_4_7(&_s9SpotlightO21DeleteIndexCodingKeysON, &v87);
          v55 = sub_1B1F1B1A0();
          v46 = v58;
          v82 = v55;
          swift_unknownObjectRelease();
          v59 = OUTLINED_FUNCTION_25_1();
          v60(v59);
          v61 = OUTLINED_FUNCTION_11_3();
          v62(v61);
          v47 = 64;
          v45 = v82;
          v52 = v83;
          break;
        default:
          LOBYTE(v87) = 0;
          sub_1B1E30CB8();
          v42 = v71;
          OUTLINED_FUNCTION_4_7(&_s9SpotlightO37FullContextualActionReindexCodingKeysON, &v87);
          swift_unknownObjectRelease();
          (*(v73 + 8))(v42, v70);
          OUTLINED_FUNCTION_9_6();
          v43 = OUTLINED_FUNCTION_11_3();
          v44(v43);
          v45 = 0;
          v46 = 0;
          v47 = 0x80;
LABEL_12:
          v52 = v83;
          break;
      }

      *v41 = v45;
      *(v41 + 8) = v46;
      *(v41 + 16) = v47;
      goto LABEL_10;
    }

    v30 = v25;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t VCVoiceShortcutClient.indexToolsIntoSpotlight(with:removed:force:)()
{
  OUTLINED_FUNCTION_1();
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  *(v1 + 153) = v3;
  *(v1 + 72) = v4;
  v5 = type metadata accessor for VoiceShortcutClientRequest(0);
  *(v1 + 96) = v5;
  OUTLINED_FUNCTION_8(v5);
  *(v1 + 104) = OUTLINED_FUNCTION_9();
  v6 = sub_1B1F1A640();
  *(v1 + 112) = v6;
  OUTLINED_FUNCTION_6_0(v6);
  *(v1 + 120) = v7;
  *(v1 + 128) = OUTLINED_FUNCTION_9();
  v8 = OUTLINED_FUNCTION_5_8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B1E315E0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 153);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 152) = 1;
  *v1 = v3;
  v1[1] = v4;
  OUTLINED_FUNCTION_28_1(v1, v2);
  sub_1B1F1A760();
  sub_1B1F1A760();
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 136) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_2(v5);

  return sub_1B1E1978C(v7, (v0 + 152), v8);
}

uint64_t sub_1B1E316A8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  sub_1B1E04AB4(*(v3 + 104));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t VCVoiceShortcutClient.indexShortcuts()()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v0;
  v2 = type metadata accessor for VoiceShortcutClientRequest(0);
  v1[10] = v2;
  OUTLINED_FUNCTION_8(v2);
  v1[11] = OUTLINED_FUNCTION_9();
  v3 = sub_1B1F1A640();
  v1[12] = v3;
  OUTLINED_FUNCTION_6_0(v3);
  v1[13] = v4;
  v1[14] = OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_5_8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B1E31878()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 136) = 1;
  v1 = *(v0 + 88);
  *v1 = xmmword_1B1F2D2F0;
  OUTLINED_FUNCTION_28_1(v1, 128);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 120) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_14_4(v2);

  return sub_1B1E1978C(v4, v5, v6);
}

uint64_t sub_1B1E31920()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  sub_1B1E04AB4(*(v3 + 88));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1E31A28()
{
  v1 = v0[16];
  sub_1B1E18F74();
  v2 = sub_1B1F1A630();
  if (v1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
LABEL_5:

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v3 = v0[13];
  v4 = v0[12];
  if (v0[4])
  {
    OUTLINED_FUNCTION_27_1(v2, v4);
    OUTLINED_FUNCTION_18();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_22_2(v5, v6);
    OUTLINED_FUNCTION_18();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_21_2(v7, v8);
    (*(v3 + 8))();
    goto LABEL_5;
  }

  (*(v3 + 8))(v0[14], v4);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v9();
}

uint64_t sub_1B1E31B88()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_2_0();

  return v0();
}

uint64_t VCVoiceShortcutClient.indexContextualActions()()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v0;
  v2 = type metadata accessor for VoiceShortcutClientRequest(0);
  v1[10] = v2;
  OUTLINED_FUNCTION_8(v2);
  v1[11] = OUTLINED_FUNCTION_9();
  v3 = sub_1B1F1A640();
  v1[12] = v3;
  OUTLINED_FUNCTION_6_0(v3);
  v1[13] = v4;
  v1[14] = OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_5_8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B1E31CB8()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 88);
  *(v0 + 136) = 1;
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_28_1(v1, 128);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 120) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_14_4(v2);

  return sub_1B1E1978C(v4, v5, v6);
}

uint64_t sub_1B1E31D58()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 128) = v0;

  sub_1B1E04AB4(*(v3 + 88));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t VCVoiceShortcutClient.deleteIndex(indexIdentifier:)()
{
  OUTLINED_FUNCTION_1();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = type metadata accessor for VoiceShortcutClientRequest(0);
  v1[12] = v4;
  OUTLINED_FUNCTION_8(v4);
  v1[13] = OUTLINED_FUNCTION_9();
  v5 = sub_1B1F1A640();
  v1[14] = v5;
  OUTLINED_FUNCTION_6_0(v5);
  v1[15] = v6;
  v1[16] = OUTLINED_FUNCTION_9();
  v7 = OUTLINED_FUNCTION_5_8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1E31F2C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  *(v0 + 152) = 1;
  *v1 = v2;
  v1[1] = v3;
  OUTLINED_FUNCTION_28_1(v1, 64);
  sub_1B1F1A760();
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 136) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_19_2(v4);

  return sub_1B1E1978C(v6, (v0 + 152), v7);
}

uint64_t sub_1B1E31FEC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_8_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 144) = v0;

  sub_1B1E04AB4(*(v3 + 104));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1E320F4()
{
  v1 = v0[18];
  sub_1B1E18F74();
  v2 = sub_1B1F1A630();
  if (v1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
LABEL_5:

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v3 = v0[15];
  v4 = v0[14];
  if (v0[4])
  {
    OUTLINED_FUNCTION_27_1(v2, v4);
    OUTLINED_FUNCTION_18();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_22_2(v5, v6);
    OUTLINED_FUNCTION_18();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_21_2(v7, v8);
    (*(v3 + 8))();
    goto LABEL_5;
  }

  (*(v3 + 8))(v0[16], v4);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v9();
}

uint64_t sub_1B1E32254()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_2_0();

  return v0();
}

void sub_1B1E322BC(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
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

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_11();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1B1E322F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB785850, &qword_1B1F31450);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient0abC7RequestO9SpotlightO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B1E32380(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 17))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
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

uint64_t sub_1B1E323CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1B1E32430(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *_s9SpotlightO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s9SpotlightO28IndexToolChangesetCodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s9SpotlightO21DeleteIndexCodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E326F0()
{
  result = qword_1EB784948;
  if (!qword_1EB784948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784948);
  }

  return result;
}

unint64_t sub_1B1E32748()
{
  result = qword_1EB784950;
  if (!qword_1EB784950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784950);
  }

  return result;
}

unint64_t sub_1B1E327A0()
{
  result = qword_1EB784958;
  if (!qword_1EB784958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784958);
  }

  return result;
}

unint64_t sub_1B1E327F8()
{
  result = qword_1EB784960;
  if (!qword_1EB784960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784960);
  }

  return result;
}

unint64_t sub_1B1E32850()
{
  result = qword_1EB784968;
  if (!qword_1EB784968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784968);
  }

  return result;
}

unint64_t sub_1B1E328A8()
{
  result = qword_1EB784970;
  if (!qword_1EB784970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784970);
  }

  return result;
}

unint64_t sub_1B1E32900()
{
  result = qword_1EB784978;
  if (!qword_1EB784978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784978);
  }

  return result;
}

unint64_t sub_1B1E32958()
{
  result = qword_1EB784980;
  if (!qword_1EB784980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784980);
  }

  return result;
}

unint64_t sub_1B1E329B0()
{
  result = qword_1EB784988;
  if (!qword_1EB784988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784988);
  }

  return result;
}

unint64_t sub_1B1E32A08()
{
  result = qword_1EB784990;
  if (!qword_1EB784990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784990);
  }

  return result;
}

unint64_t sub_1B1E32A60()
{
  result = qword_1EB784998;
  if (!qword_1EB784998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784998);
  }

  return result;
}

unint64_t sub_1B1E32AB8()
{
  result = qword_1EB7849A0;
  if (!qword_1EB7849A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7849A0);
  }

  return result;
}

unint64_t sub_1B1E32B10()
{
  result = qword_1EB7849A8;
  if (!qword_1EB7849A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7849A8);
  }

  return result;
}

uint64_t sub_1B1E32B64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_1B1E32C64(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E32CD8(uint64_t a1)
{
  sub_1B1F1B7C0();
  sub_1B1E00C48();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E32D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E32C64(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E32D60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B1E32DB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CodableSecureObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v25 = a3;
  type metadata accessor for CodableSecureObject.CodingKeys(255, a2, a4, a5);
  OUTLINED_FUNCTION_1_12();
  swift_getWitnessTable();
  sub_1B1F1B220();
  OUTLINED_FUNCTION_0();
  v22 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1F1B810();
  if (!v5)
  {
    v11 = v25;
    v21 = a1;
    v12 = v22;
    sub_1B1E0EDAC();
    sub_1B1F1B200();
    v14 = v23;
    v13 = v24;
    sub_1B1E33104();
    v15 = sub_1B1F1AD40();
    v18 = v15;
    if (v15)
    {
      sub_1B1E03C48(v14, v13);
      v19 = OUTLINED_FUNCTION_2_8();
      v20(v19);
      *v11 = v18;
      v16 = v21;
      return __swift_destroy_boxed_opaque_existential_1(v16);
    }

    sub_1B1F1AFE0();
    swift_allocError();
    OUTLINED_FUNCTION_0_11();
    swift_getWitnessTable();
    sub_1B1F1AFC0();
    swift_willThrow();
    sub_1B1E03C48(v14, v13);
    (*(v12 + 8))(v10);
    a1 = v21;
  }

  v16 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

unint64_t sub_1B1E33104()
{
  result = qword_1EB7849B8[0];
  if (!qword_1EB7849B8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB7849B8);
  }

  return result;
}

uint64_t CodableSecureObject.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  type metadata accessor for CodableSecureObject.CodingKeys(255, *(a2 + 16), a3, a4);
  OUTLINED_FUNCTION_1_12();
  swift_getWitnessTable();
  v22 = sub_1B1F1B2C0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = *v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1F1B830();
  v12 = objc_opt_self();
  v23[0] = 0;
  v13 = [v12 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v23];
  v14 = v23[0];
  if (v13)
  {
    v15 = sub_1B1F1A290();
    v17 = v16;

    v23[0] = v15;
    v23[1] = v17;
    sub_1B1E0EF20();
    v18 = v22;
    sub_1B1F1B2B0();
    (*(v7 + 8))(v10, v18);
    return sub_1B1E03C48(v15, v17);
  }

  else
  {
    v20 = v14;
    sub_1B1F1A1C0();

    swift_willThrow();
    return (*(v7 + 8))(v10, v22);
  }
}

uint64_t sub_1B1E333A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_1B1E33404(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B1E334F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7254657461657263 && a2 == 0xED00007265676769;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72546574656C6564 && a2 == 0xED00007265676769;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x80000001B1F38E30 == a2;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001B1F38E50 == a2;
        if (v8 || (sub_1B1F1B510() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001B1F38E70 == a2;
          if (v9 || (sub_1B1F1B510() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000021 && 0x80000001B1F38E90 == a2;
            if (v10 || (sub_1B1F1B510() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5468736572666572 && a2 == 0xEE00726567676972;
              if (v11 || (sub_1B1F1B510() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001B1F38EC0 == a2;
                if (v12 || (sub_1B1F1B510() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000020 && 0x80000001B1F38EE0 == a2;
                  if (v13 || (sub_1B1F1B510() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6769725465726966 && a2 == 0xEB00000000726567;
                    if (v14 || (sub_1B1F1B510() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001FLL && 0x80000001B1F38F10 == a2;
                      if (v15 || (sub_1B1F1B510() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001CLL && 0x80000001B1F38F30 == a2;
                        if (v16 || (sub_1B1F1B510() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000016 && 0x80000001B1F38F50 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1B1F1B510();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1B1E338E4(char a1)
{
  result = 0x7254657461657263;
  switch(a1)
  {
    case 1:
      result = 0x72546574656C6564;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0x5468736572666572;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0x6769725465726966;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E33AA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E33B68(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B1E33B80(uint64_t a1)
{
  v2 = sub_1B1E3516C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33BBC(uint64_t a1)
{
  v2 = sub_1B1E3516C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33BF8(uint64_t a1)
{
  v2 = sub_1B1E35118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33C34(uint64_t a1)
{
  v2 = sub_1B1E35118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E334F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E33CA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E338DC();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E33CC8(uint64_t a1)
{
  v2 = sub_1B1E3500C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33D04(uint64_t a1)
{
  v2 = sub_1B1E3500C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E33AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E33D70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E33B60();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E33D98(uint64_t a1)
{
  v2 = sub_1B1E354B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33DD4(uint64_t a1)
{
  v2 = sub_1B1E354B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33E10(uint64_t a1)
{
  v2 = sub_1B1E35460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33E4C(uint64_t a1)
{
  v2 = sub_1B1E35460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33E88(uint64_t a1)
{
  v2 = sub_1B1E350C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33EC4(uint64_t a1)
{
  v2 = sub_1B1E350C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33F00(uint64_t a1)
{
  v2 = sub_1B1E3540C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33F3C(uint64_t a1)
{
  v2 = sub_1B1E3540C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33F78(uint64_t a1)
{
  v2 = sub_1B1E353B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E33FB4(uint64_t a1)
{
  v2 = sub_1B1E353B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E33FF0(uint64_t a1)
{
  v2 = sub_1B1E351C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3402C(uint64_t a1)
{
  v2 = sub_1B1E351C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E34068(uint64_t a1)
{
  v2 = sub_1B1E35214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E340A4(uint64_t a1)
{
  v2 = sub_1B1E35214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E340E0(uint64_t a1)
{
  v2 = sub_1B1E352BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3411C(uint64_t a1)
{
  v2 = sub_1B1E352BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E34158(uint64_t a1)
{
  v2 = sub_1B1E35310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E34194(uint64_t a1)
{
  v2 = sub_1B1E35310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E341D0(uint64_t a1)
{
  v2 = sub_1B1E35268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3420C(uint64_t a1)
{
  v2 = sub_1B1E35268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E34248(uint64_t a1)
{
  v2 = sub_1B1E35364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E34284(uint64_t a1)
{
  v2 = sub_1B1E35364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VoiceShortcutClientRequest.Automations.encode(to:)(void *a1)
{
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AD0, &qword_1B1F2DB60);
  OUTLINED_FUNCTION_0();
  v90[8] = v2;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17();
  v108 = v4;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AD8, &qword_1B1F2DB68);
  OUTLINED_FUNCTION_0();
  v90[7] = v5;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v106 = v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AE0, &qword_1B1F2DB70);
  OUTLINED_FUNCTION_0();
  v90[6] = v8;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v104 = v10;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AE8, &qword_1B1F2DB78);
  OUTLINED_FUNCTION_0();
  v90[5] = v11;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_17();
  v102 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AF0, &qword_1B1F2DB80);
  OUTLINED_FUNCTION_0();
  v99 = v15;
  v100 = v14;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v17);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784AF8, &qword_1B1F2DB88);
  OUTLINED_FUNCTION_0();
  v90[4] = v18;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17();
  v98 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B00, &qword_1B1F2DB90);
  OUTLINED_FUNCTION_0_12(v21, &v122);
  v90[3] = v22;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B08, &qword_1B1F2DB98);
  OUTLINED_FUNCTION_0_12(v25, &v121);
  v95 = v26;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B10, &qword_1B1F2DBA0);
  OUTLINED_FUNCTION_0_12(v29, &v119);
  v93 = v30;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B18, &qword_1B1F2DBA8);
  OUTLINED_FUNCTION_0_12(v33, &v120);
  v90[2] = v34;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B20, &qword_1B1F2DBB0);
  OUTLINED_FUNCTION_0_12(v37, &v114);
  v90[9] = v38;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v90 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B28, &qword_1B1F2DBB8);
  OUTLINED_FUNCTION_0_12(v42, v116);
  v90[0] = v43;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v90 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B30, &qword_1B1F2DBC0);
  OUTLINED_FUNCTION_0_12(v47, v117);
  v90[1] = v48;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v50);
  type metadata accessor for TriggerType(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_4(v90 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for VoiceShortcutClientRequest.Automations(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v90 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784B38, &qword_1B1F2DBC8);
  OUTLINED_FUNCTION_0();
  v110 = v56;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v57);
  v59 = v90 - v58;
  v60 = a1[3];
  v61 = __swift_project_boxed_opaque_existential_0(a1, v60);
  sub_1B1E3500C();
  v112 = v59;
  sub_1B1F1B830();
  sub_1B1E35060(v111, v55);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LOBYTE(v115) = 1;
      sub_1B1E35460();
      v79 = v112;
      v60 = v113;
      sub_1B1F1B240();
      OUTLINED_FUNCTION_20_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      v80 = OUTLINED_FUNCTION_4_8();
      v81(v80);
      OUTLINED_FUNCTION_23_2();
      v72 = v79;
      goto LABEL_19;
    case 2u:
      LOBYTE(v115) = 3;
      sub_1B1E353B8();
      v77 = v92;
      OUTLINED_FUNCTION_8_6(&_s11AutomationsO31FetchScheduledTriggerCodingKeysON, &v115);
      OUTLINED_FUNCTION_20_3();
      v78 = v94;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      goto LABEL_18;
    case 3u:
      LOBYTE(v115) = 6;
      sub_1B1E352BC();
      v77 = v96;
      OUTLINED_FUNCTION_8_6(&_s11AutomationsO24RefreshTriggerCodingKeysON, &v115);
      OUTLINED_FUNCTION_20_3();
      v78 = v97;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B250();
      OUTLINED_FUNCTION_21_3();
      goto LABEL_18;
    case 4u:
      LOBYTE(v115) = 7;
      sub_1B1E35268();
      v77 = v98;
      OUTLINED_FUNCTION_8_6(&_s11AutomationsO27UnregisterTriggerCodingKeysON, &v115);
      OUTLINED_FUNCTION_20_3();
      v78 = v101;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      goto LABEL_18;
    case 5u:
      LOBYTE(v115) = 9;
      sub_1B1E351C0();
      v77 = v102;
      OUTLINED_FUNCTION_8_6(&_s11AutomationsO21FireTriggerCodingKeysON, &v115);
      OUTLINED_FUNCTION_20_3();
      v78 = v103;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      goto LABEL_18;
    case 6u:
      LOBYTE(v115) = 10;
      sub_1B1E3516C();
      v77 = v104;
      OUTLINED_FUNCTION_8_6(&_s11AutomationsO41CheckTriggerStateWithIdentifierCodingKeysON, &v115);
      OUTLINED_FUNCTION_20_3();
      v78 = v105;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      goto LABEL_18;
    case 7u:
      LOBYTE(v115) = 11;
      sub_1B1E35118();
      v77 = v106;
      OUTLINED_FUNCTION_8_6(&_s11AutomationsO38CheckTriggerStateWithKeyPathCodingKeysON, &v115);
      OUTLINED_FUNCTION_20_3();
      v78 = v107;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
      goto LABEL_18;
    case 8u:
      LOBYTE(v115) = 12;
      sub_1B1E350C4();
      v77 = v108;
      OUTLINED_FUNCTION_8_6(&_s11AutomationsO32DeleteTriggerShortcutsCodingKeysON, &v115);
      OUTLINED_FUNCTION_20_3();
      v78 = v109;
      OUTLINED_FUNCTION_10_3();
      sub_1B1F1B270();
      OUTLINED_FUNCTION_21_3();
LABEL_18:
      OUTLINED_FUNCTION_13_2();
      v84(v77, v78);
      OUTLINED_FUNCTION_23_2();
      v72 = v46;
LABEL_19:
      v73 = v60;
      goto LABEL_20;
    case 9u:
      LOBYTE(v115) = 2;
      sub_1B1E3540C();
      v61 = v112;
      v55 = v113;
      sub_1B1F1B240();
      OUTLINED_FUNCTION_13_2();
      v75 = v41;
      v76 = &v114;
      goto LABEL_15;
    case 0xAu:
      LOBYTE(v115) = 4;
      sub_1B1E35364();
      OUTLINED_FUNCTION_16_4(&_s11AutomationsO28UserHasAutomationsCodingKeysON, &v115);
      OUTLINED_FUNCTION_13_2();
      v75 = v59;
      v76 = &v119;
      goto LABEL_15;
    case 0xBu:
      LOBYTE(v115) = 5;
      sub_1B1E35310();
      OUTLINED_FUNCTION_16_4(&_s11AutomationsO43ResetAutomationConfirmationStatusCodingKeysON, &v115);
      OUTLINED_FUNCTION_13_2();
      v75 = v59;
      v76 = &v121;
LABEL_15:
      v74(v75, *(v76 - 32));
      goto LABEL_16;
    case 0xCu:
      LOBYTE(v115) = 8;
      sub_1B1E35214();
      OUTLINED_FUNCTION_16_4(&_s11AutomationsO42GetConfiguredTriggerDescriptionsCodingKeysON, &v115);
      (*(v99 + 8))(v59, v100);
LABEL_16:
      OUTLINED_FUNCTION_23_2();
      result = v82(v61, v55);
      break;
    default:
      v62 = &v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7844F8, &qword_1B1F2DBD0) + 48)];
      v64 = *v62;
      v63 = *(v62 + 1);
      v109 = *(v62 + 2);
      LODWORD(v111) = v62[24];
      v65 = v91;
      sub_1B1E368C8(v55, v91, type metadata accessor for TriggerType);
      LOBYTE(v115) = 0;
      sub_1B1E354B4();
      v67 = v112;
      v66 = v113;
      sub_1B1F1B240();
      LOBYTE(v115) = 0;
      sub_1B1E36928(&qword_1EB784BB0, &protocol conformance descriptor for TriggerType);
      v68 = v114;
      sub_1B1F1B2B0();
      if (v68)
      {
        sub_1B1E35508(v64, v63, v109, v111);
        v69 = OUTLINED_FUNCTION_4_8();
        v70(v69);
        sub_1B1E35548(v65);
        OUTLINED_FUNCTION_23_2();
        v72 = v67;
        v73 = v66;
LABEL_20:
        result = v71(v72, v73);
      }

      else
      {
        v107 = v64;
        v108 = v63;
        v115 = v64;
        v116[0] = v63;
        v85 = v109;
        v116[1] = v109;
        v86 = v111;
        v117[0] = v111;
        v118 = 1;
        sub_1B1E355A4();
        sub_1B1F1B2B0();
        v87 = OUTLINED_FUNCTION_4_8();
        v88(v87);
        sub_1B1E35548(v65);
        OUTLINED_FUNCTION_23_2();
        v89(v67, v66);
        result = sub_1B1E35508(v107, v108, v85, v86);
      }

      break;
  }

  return result;
}

uint64_t type metadata accessor for VoiceShortcutClientRequest.Automations(uint64_t a1)
{
  result = qword_1EB784C40;
  if (!qword_1EB784C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B1E3500C()
{
  result = qword_1EB784B40;
  if (!qword_1EB784B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B40);
  }

  return result;
}

uint64_t sub_1B1E35060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceShortcutClientRequest.Automations(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1E350C4()
{
  result = qword_1EB784B48;
  if (!qword_1EB784B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B48);
  }

  return result;
}

unint64_t sub_1B1E35118()
{
  result = qword_1EB784B50;
  if (!qword_1EB784B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B50);
  }

  return result;
}

unint64_t sub_1B1E3516C()
{
  result = qword_1EB784B58;
  if (!qword_1EB784B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B58);
  }

  return result;
}

unint64_t sub_1B1E351C0()
{
  result = qword_1EB784B60;
  if (!qword_1EB784B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B60);
  }

  return result;
}

unint64_t sub_1B1E35214()
{
  result = qword_1EB784B68;
  if (!qword_1EB784B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B68);
  }

  return result;
}

unint64_t sub_1B1E35268()
{
  result = qword_1EB784B70;
  if (!qword_1EB784B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B70);
  }

  return result;
}

unint64_t sub_1B1E352BC()
{
  result = qword_1EB784B78;
  if (!qword_1EB784B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B78);
  }

  return result;
}

unint64_t sub_1B1E35310()
{
  result = qword_1EB784B80;
  if (!qword_1EB784B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B80);
  }

  return result;
}

unint64_t sub_1B1E35364()
{
  result = qword_1EB784B88;
  if (!qword_1EB784B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B88);
  }

  return result;
}

unint64_t sub_1B1E353B8()
{
  result = qword_1EB784B90;
  if (!qword_1EB784B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B90);
  }

  return result;
}

unint64_t sub_1B1E3540C()
{
  result = qword_1EB784B98;
  if (!qword_1EB784B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784B98);
  }

  return result;
}

unint64_t sub_1B1E35460()
{
  result = qword_1EB784BA0;
  if (!qword_1EB784BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784BA0);
  }

  return result;
}

unint64_t sub_1B1E354B4()
{
  result = qword_1EB784BA8;
  if (!qword_1EB784BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784BA8);
  }

  return result;
}

uint64_t sub_1B1E35508(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }
}

uint64_t sub_1B1E35548(uint64_t a1)
{
  v2 = type metadata accessor for TriggerType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B1E355A4()
{
  result = qword_1EB784BB8;
  if (!qword_1EB784BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784BB8);
  }

  return result;
}

uint64_t VoiceShortcutClientRequest.Automations.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BC0, &qword_1B1F2DBD8);
  OUTLINED_FUNCTION_0_12(v3, &v223);
  v195 = v4;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17();
  v192 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BC8, &qword_1B1F2DBE0);
  OUTLINED_FUNCTION_0_12(v7, &v222);
  v183 = v8;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v191[2] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BD0, &qword_1B1F2DBE8);
  OUTLINED_FUNCTION_0_12(v11, &v221);
  v182 = v12;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17();
  v191[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BD8, &qword_1B1F2DBF0);
  OUTLINED_FUNCTION_0_12(v15, &v220);
  v181 = v16;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17();
  v191[0] = v18;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BE0, &qword_1B1F2DBF8);
  OUTLINED_FUNCTION_0();
  v179 = v19;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_17();
  v190 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BE8, &qword_1B1F2DC00);
  OUTLINED_FUNCTION_0_12(v22, &v211);
  v180 = v23;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  v189 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BF0, &qword_1B1F2DC08);
  OUTLINED_FUNCTION_0_12(v26, &v203);
  v178 = v27;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_17();
  v188 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784BF8, &qword_1B1F2DC10);
  OUTLINED_FUNCTION_0_12(v30, &v201);
  v176 = v31;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_17();
  v201 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C00, &qword_1B1F2DC18);
  OUTLINED_FUNCTION_0_12(v34, &v198);
  v173 = v35;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17();
  v187 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C08, &qword_1B1F2DC20);
  OUTLINED_FUNCTION_0_12(v38, &v199);
  v174 = v39;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_17();
  v186[1] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C10, &qword_1B1F2DC28);
  OUTLINED_FUNCTION_0_12(v42, &v192);
  v169 = v43;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C18, &qword_1B1F2DC30);
  OUTLINED_FUNCTION_0_12(v46, &v193);
  v170 = v47;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_18_4(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C20, &qword_1B1F2DC38);
  OUTLINED_FUNCTION_0_12(v50, &v195);
  v172 = v51;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_17();
  v198 = v53;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784C28, &unk_1B1F2DC40);
  OUTLINED_FUNCTION_0();
  v197 = v54;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v161 - v56;
  v196 = type metadata accessor for VoiceShortcutClientRequest.Automations(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_14_5();
  v64 = MEMORY[0x1EEE9AC00](v63);
  v66 = &v161 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64);
  v69 = &v161 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67);
  v72 = &v161 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70);
  v75 = &v161 - v74;
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v161 - v76;
  v78 = a1[3];
  v202 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v78);
  sub_1B1E3500C();
  v199 = v57;
  v79 = v203;
  sub_1B1F1B810();
  if (v79)
  {
    goto LABEL_8;
  }

  v164 = v72;
  v165 = v69;
  v166 = v66;
  v167 = v75;
  v80 = v199;
  v82 = v200;
  v81 = v201;
  v203 = v77;
  sub_1B1F1B210();
  result = sub_1B1E32BFC();
  if (v85 == v86 >> 1)
  {
LABEL_7:
    v94 = v196;
    v95 = sub_1B1F1AFE0();
    swift_allocError();
    v97 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0);
    *v97 = v94;
    sub_1B1F1B190();
    sub_1B1F1AFD0();
    (*(*(v95 - 8) + 104))(v97, *MEMORY[0x1E69E6AF8], v95);
    swift_willThrow();
    swift_unknownObjectRelease();
    v98 = OUTLINED_FUNCTION_2_9();
    v99(v98);
LABEL_8:
    v100 = v202;
    return __swift_destroy_boxed_opaque_existential_1(v100);
  }

  v163 = 0;
  if (v85 < (v86 >> 1))
  {
    v162 = *(v84 + v85);
    sub_1B1E32BF8();
    v88 = v87;
    v90 = v89;
    swift_unknownObjectRelease();
    v91 = v194;
    v92 = v195;
    if (v88 == v90 >> 1)
    {
      switch(v162)
      {
        case 1:
          v207 = 1;
          sub_1B1E35460();
          OUTLINED_FUNCTION_7_6(&_s11AutomationsO23DeleteTriggerCodingKeysON, &v207);
          OUTLINED_FUNCTION_6_7();
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          v141 = OUTLINED_FUNCTION_4_8();
          v142(v141);
          v143 = OUTLINED_FUNCTION_2_9();
          v144(v143);
          OUTLINED_FUNCTION_5_9(&v184);
          goto LABEL_23;
        case 2:
          v208 = 2;
          sub_1B1E3540C();
          v108 = v186[0];
          OUTLINED_FUNCTION_9_7(&_s11AutomationsO35FetchAllScheduledTriggersCodingKeysON, &v208);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_2();
          v109(v108, v171);
          v110 = OUTLINED_FUNCTION_2_9();
          v111(v110);
          OUTLINED_FUNCTION_19_3();
          goto LABEL_22;
        case 3:
          v209 = 3;
          sub_1B1E353B8();
          OUTLINED_FUNCTION_7_6(&_s11AutomationsO31FetchScheduledTriggerCodingKeysON, &v209);
          OUTLINED_FUNCTION_6_7();
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          v133 = OUTLINED_FUNCTION_4_8();
          v134(v133);
          v135 = OUTLINED_FUNCTION_2_9();
          v136(v135);
          OUTLINED_FUNCTION_5_9(&v185);
          goto LABEL_23;
        case 4:
          v210 = 4;
          sub_1B1E35364();
          v103 = v187;
          OUTLINED_FUNCTION_9_7(&_s11AutomationsO28UserHasAutomationsCodingKeysON, &v210);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_2();
          v104(v103, v175);
          v105 = OUTLINED_FUNCTION_2_9();
          v106(v105);
          OUTLINED_FUNCTION_19_3();
          goto LABEL_22;
        case 5:
          v212 = 5;
          sub_1B1E35310();
          OUTLINED_FUNCTION_9_7(&_s11AutomationsO43ResetAutomationConfirmationStatusCodingKeysON, &v212);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_2();
          v112(v81, v177);
          v113 = OUTLINED_FUNCTION_2_9();
          v114(v113);
          OUTLINED_FUNCTION_19_3();
          goto LABEL_22;
        case 6:
          v213 = 6;
          sub_1B1E352BC();
          OUTLINED_FUNCTION_7_6(&_s11AutomationsO24RefreshTriggerCodingKeysON, &v213);
          OUTLINED_FUNCTION_6_7();
          sub_1B1F1B1A0();
          OUTLINED_FUNCTION_15_6();
          v145 = OUTLINED_FUNCTION_4_8();
          v146(v145);
          v147 = OUTLINED_FUNCTION_2_9();
          v148(v147);
          OUTLINED_FUNCTION_5_9(v186);
          goto LABEL_23;
        case 7:
          v214 = 7;
          sub_1B1E35268();
          OUTLINED_FUNCTION_7_6(&_s11AutomationsO27UnregisterTriggerCodingKeysON, &v214);
          OUTLINED_FUNCTION_6_7();
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          v137 = OUTLINED_FUNCTION_4_8();
          v138(v137);
          v139 = OUTLINED_FUNCTION_2_9();
          v140(v139);
          OUTLINED_FUNCTION_5_9(&v187);
          goto LABEL_23;
        case 8:
          v215 = 8;
          sub_1B1E35214();
          v115 = v190;
          OUTLINED_FUNCTION_7_6(&_s11AutomationsO42GetConfiguredTriggerDescriptionsCodingKeysON, &v215);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_2();
          v116(v115, v91);
          v117 = OUTLINED_FUNCTION_2_9();
          v118(v117);
          OUTLINED_FUNCTION_19_3();
LABEL_22:
          swift_storeEnumTagMultiPayload();
          goto LABEL_25;
        case 9:
          v216 = 9;
          sub_1B1E351C0();
          OUTLINED_FUNCTION_7_6(&_s11AutomationsO21FireTriggerCodingKeysON, &v216);
          OUTLINED_FUNCTION_6_7();
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          v129 = OUTLINED_FUNCTION_4_8();
          v130(v129);
          v131 = OUTLINED_FUNCTION_2_9();
          v132(v131);
          OUTLINED_FUNCTION_5_9(&v188);
          goto LABEL_23;
        case 10:
          v217 = 10;
          sub_1B1E3516C();
          OUTLINED_FUNCTION_7_6(&_s11AutomationsO41CheckTriggerStateWithIdentifierCodingKeysON, &v217);
          OUTLINED_FUNCTION_6_7();
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          v149 = OUTLINED_FUNCTION_4_8();
          v150(v149);
          v151 = OUTLINED_FUNCTION_2_9();
          v152(v151);
          OUTLINED_FUNCTION_5_9(&v189);
          goto LABEL_23;
        case 11:
          v218 = 11;
          sub_1B1E35118();
          OUTLINED_FUNCTION_9_7(&_s11AutomationsO38CheckTriggerStateWithKeyPathCodingKeysON, &v218);
          OUTLINED_FUNCTION_24_0();
          v101 = sub_1B1F1B1C0();
          v102 = v197;
          v119 = v101;
          v121 = v120;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_13_2();
          v122 = OUTLINED_FUNCTION_22_3();
          v123(v122);
          (*(v102 + 8))(v80, v82);
          v124 = v168;
          *v168 = v119;
          v124[1] = v121;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_3_8();
          v126 = v124;
          goto LABEL_24;
        case 12:
          v219 = 12;
          sub_1B1E350C4();
          v107 = v192;
          OUTLINED_FUNCTION_9_7(&_s11AutomationsO32DeleteTriggerShortcutsCodingKeysON, &v219);
          v81 = v184;
          OUTLINED_FUNCTION_24_0();
          sub_1B1F1B1C0();
          OUTLINED_FUNCTION_15_6();
          (*(v92 + 8))(v107, v81);
          v127 = OUTLINED_FUNCTION_2_9();
          v128(v127);
          OUTLINED_FUNCTION_5_9(v191);
LABEL_23:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_3_8();
          v126 = v81;
LABEL_24:
          v90 = v203;
          sub_1B1E368C8(v126, v203, v125);
LABEL_25:
          v160 = v202;
          v93 = v193;
          break;
        default:
          v206 = 0;
          sub_1B1E354B4();
          OUTLINED_FUNCTION_9_7(&_s11AutomationsO23CreateTriggerCodingKeysON, &v206);
          type metadata accessor for TriggerType(0);
          v205 = 0;
          sub_1B1E36928(&qword_1EB784C30, &protocol conformance descriptor for TriggerType);
          OUTLINED_FUNCTION_24_0();
          sub_1B1F1B200();
          v93 = v193;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7844F8, &qword_1B1F2DBD0);
          v204 = 1;
          sub_1B1E3696C();
          OUTLINED_FUNCTION_24_0();
          sub_1B1F1B200();
          swift_unknownObjectRelease();
          v154 = OUTLINED_FUNCTION_22_3();
          v155(v154);
          v156 = OUTLINED_FUNCTION_2_9();
          v157(v156);
          v158 = v167;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_3_8();
          v90 = v203;
          sub_1B1E368C8(v158, v203, v159);
          v160 = v202;
          break;
      }

      OUTLINED_FUNCTION_3_8();
      sub_1B1E368C8(v90, v93, v153);
      v100 = v160;
      return __swift_destroy_boxed_opaque_existential_1(v100);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E368C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1B1E36928(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TriggerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1E3696C()
{
  result = qword_1EB784C38;
  if (!qword_1EB784C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C38);
  }

  return result;
}

void sub_1B1E369C8(uint64_t a1)
{
  sub_1B1E36A50(319);
  if (v1 <= 0x3F)
  {
    sub_1B1E36AB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B1E36A50(uint64_t a1)
{
  if (!qword_1EB784C50)
  {
    type metadata accessor for TriggerType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB784C50);
    }
  }
}

void sub_1B1E36AB8()
{
  if (!qword_1EB783280)
  {
    v0 = sub_1B1F1AEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB783280);
    }
  }
}

uint64_t _s11AutomationsO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s11AutomationsO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s11AutomationsO23CreateTriggerCodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E36DF8(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E36EA8()
{
  result = qword_1EB784C58;
  if (!qword_1EB784C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C58);
  }

  return result;
}

unint64_t sub_1B1E36F00()
{
  result = qword_1EB784C60;
  if (!qword_1EB784C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C60);
  }

  return result;
}

unint64_t sub_1B1E36F58()
{
  result = qword_1EB784C68;
  if (!qword_1EB784C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C68);
  }

  return result;
}

unint64_t sub_1B1E36FB0()
{
  result = qword_1EB784C70;
  if (!qword_1EB784C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C70);
  }

  return result;
}

unint64_t sub_1B1E37008()
{
  result = qword_1EB784C78;
  if (!qword_1EB784C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C78);
  }

  return result;
}

unint64_t sub_1B1E37060()
{
  result = qword_1EB784C80;
  if (!qword_1EB784C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C80);
  }

  return result;
}

unint64_t sub_1B1E370B8()
{
  result = qword_1EB784C88;
  if (!qword_1EB784C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C88);
  }

  return result;
}

unint64_t sub_1B1E37110()
{
  result = qword_1EB784C90;
  if (!qword_1EB784C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C90);
  }

  return result;
}

unint64_t sub_1B1E37168()
{
  result = qword_1EB784C98;
  if (!qword_1EB784C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784C98);
  }

  return result;
}

unint64_t sub_1B1E371C0()
{
  result = qword_1EB784CA0;
  if (!qword_1EB784CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CA0);
  }

  return result;
}

unint64_t sub_1B1E37218()
{
  result = qword_1EB784CA8;
  if (!qword_1EB784CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CA8);
  }

  return result;
}

unint64_t sub_1B1E37270()
{
  result = qword_1EB784CB0;
  if (!qword_1EB784CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CB0);
  }

  return result;
}

unint64_t sub_1B1E372C8()
{
  result = qword_1EB784CB8;
  if (!qword_1EB784CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CB8);
  }

  return result;
}

unint64_t sub_1B1E37320()
{
  result = qword_1EB784CC0;
  if (!qword_1EB784CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CC0);
  }

  return result;
}

unint64_t sub_1B1E37378()
{
  result = qword_1EB784CC8;
  if (!qword_1EB784CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CC8);
  }

  return result;
}

unint64_t sub_1B1E373D0()
{
  result = qword_1EB784CD0;
  if (!qword_1EB784CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CD0);
  }

  return result;
}

unint64_t sub_1B1E37428()
{
  result = qword_1EB784CD8;
  if (!qword_1EB784CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CD8);
  }

  return result;
}

unint64_t sub_1B1E37480()
{
  result = qword_1EB784CE0;
  if (!qword_1EB784CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CE0);
  }

  return result;
}

unint64_t sub_1B1E374D8()
{
  result = qword_1EB784CE8;
  if (!qword_1EB784CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CE8);
  }

  return result;
}

unint64_t sub_1B1E37530()
{
  result = qword_1EB784CF0;
  if (!qword_1EB784CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CF0);
  }

  return result;
}

unint64_t sub_1B1E37588()
{
  result = qword_1EB784CF8;
  if (!qword_1EB784CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784CF8);
  }

  return result;
}

unint64_t sub_1B1E375E0()
{
  result = qword_1EB784D00;
  if (!qword_1EB784D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D00);
  }

  return result;
}

unint64_t sub_1B1E37638()
{
  result = qword_1EB784D08;
  if (!qword_1EB784D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D08);
  }

  return result;
}

unint64_t sub_1B1E37690()
{
  result = qword_1EB784D10;
  if (!qword_1EB784D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D10);
  }

  return result;
}

unint64_t sub_1B1E376E8()
{
  result = qword_1EB784D18;
  if (!qword_1EB784D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D18);
  }

  return result;
}

unint64_t sub_1B1E37740()
{
  result = qword_1EB784D20;
  if (!qword_1EB784D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D20);
  }

  return result;
}

unint64_t sub_1B1E37798()
{
  result = qword_1EB784D28;
  if (!qword_1EB784D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D28);
  }

  return result;
}

unint64_t sub_1B1E377F0()
{
  result = qword_1EB784D30;
  if (!qword_1EB784D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D30);
  }

  return result;
}

unint64_t sub_1B1E37848()
{
  result = qword_1EB784D38;
  if (!qword_1EB784D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D38);
  }

  return result;
}

unint64_t sub_1B1E378A0()
{
  result = qword_1EB784D40;
  if (!qword_1EB784D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D40);
  }

  return result;
}

unint64_t sub_1B1E378F8()
{
  result = qword_1EB784D48;
  if (!qword_1EB784D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D48);
  }

  return result;
}

unint64_t sub_1B1E37950()
{
  result = qword_1EB784D50;
  if (!qword_1EB784D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D50);
  }

  return result;
}

unint64_t sub_1B1E379A8()
{
  result = qword_1EB784D58;
  if (!qword_1EB784D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D58);
  }

  return result;
}

unint64_t sub_1B1E37A00()
{
  result = qword_1EB784D60;
  if (!qword_1EB784D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D60);
  }

  return result;
}

unint64_t sub_1B1E37A58()
{
  result = qword_1EB784D68;
  if (!qword_1EB784D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D68);
  }

  return result;
}

unint64_t sub_1B1E37AB0()
{
  result = qword_1EB784D70;
  if (!qword_1EB784D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D70);
  }

  return result;
}

unint64_t sub_1B1E37B08()
{
  result = qword_1EB784D78;
  if (!qword_1EB784D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D78);
  }

  return result;
}

unint64_t sub_1B1E37B60()
{
  result = qword_1EB784D80;
  if (!qword_1EB784D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D80);
  }

  return result;
}

void *OUTLINED_FUNCTION_5_9@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *v3 = v1;
  v3[1] = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B240();
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1, uint64_t a2)
{

  return sub_1B1F1B180();
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return swift_unknownObjectRelease();
}

uint64_t LinkSnapshot.State.installIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_6_8();
  sub_1B1E0E714(v0, v1);
  return OUTLINED_FUNCTION_6_8();
}

uint64_t LinkSnapshot.State.init(containerId:installIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void LinkSnapshot.State.init(bundleMetadata:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 bundleIdentifier];
  v5 = sub_1B1F1A890();
  v7 = v6;

  v8 = [a1 installIdentifier];
  v9 = sub_1B1F1A290();
  v11 = v10;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
}

uint64_t static LinkSnapshot.State.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1B1F1B510() & 1) != 0)
  {
    OUTLINED_FUNCTION_6_8();

    JUMPOUT(0x1B273CB00);
  }

  return 0;
}

uint64_t sub_1B1E37DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B1F38F70 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

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

uint64_t sub_1B1E37EB0(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656E6961746E6F63;
  }
}

uint64_t sub_1B1E37EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E37DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E37F24(uint64_t a1)
{
  v2 = sub_1B1E38118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E37F60(uint64_t a1)
{
  v2 = sub_1B1E38118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LinkSnapshot.State.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  v38 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784D88, &qword_1B1F2EBC0);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v35 - v31;
  v33 = *(v23 + 16);
  v36 = *(v23 + 24);
  v37 = v33;
  __swift_project_boxed_opaque_existential_0(v26, v26[3]);
  sub_1B1E38118();
  sub_1B1F1B830();
  LOBYTE(v39) = 0;
  v34 = v38;
  sub_1B1F1B270();
  if (!v34)
  {
    v39 = v37;
    v40 = v36;
    sub_1B1E0E714(v37, v36);
    sub_1B1E0EF20();
    sub_1B1F1B2B0();
    sub_1B1E03C48(v39, v40);
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E38118()
{
  result = qword_1EB784D90;
  if (!qword_1EB784D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784D90);
  }

  return result;
}

uint64_t LinkSnapshot.State.hash(into:)(uint64_t a1)
{
  sub_1B1F1A900();

  return sub_1B1F1A2A0();
}

uint64_t LinkSnapshot.State.hashValue.getter()
{
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  sub_1B1F1A2A0();
  return sub_1B1F1B7F0();
}

void LinkSnapshot.State.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784D98, &qword_1B1F2EBC8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v28);
  __swift_project_boxed_opaque_existential_0(v25, v25[3]);
  sub_1B1E38118();
  sub_1B1F1B810();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    LOBYTE(v34) = 0;
    v29 = sub_1B1F1B1C0();
    v31 = v30;
    sub_1B1E0EDAC();
    sub_1B1F1B200();
    v32 = OUTLINED_FUNCTION_2_10();
    v33(v32);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v34;
    v27[3] = v35;
    sub_1B1F1A760();
    sub_1B1E0E714(v34, v35);
    __swift_destroy_boxed_opaque_existential_1(v25);

    sub_1B1E03C48(v34, v35);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E38450(uint64_t a1)
{
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  sub_1B1F1A2A0();
  return sub_1B1F1B7F0();
}

VoiceShortcutClient::LinkSnapshot __swiftcall LinkSnapshot.init(state:)(Swift::OpaquePointer state)
{
  v2 = v1;
  v5 = MEMORY[0x1E69E7CD0];
  v3 = sub_1B1E38EF8(MEMORY[0x1E69E7CC8], state._rawValue, &v5);

  *v2 = v3;
  return result;
}

void sub_1B1E38530(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v90 = a3;
  v5 = sub_1B1F1A500();
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v88 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v80 - v8;
  v9 = sub_1B1F1A8C0();
  v87 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B1F1A350();
  v86 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[3];
  v93 = a2[2];
  v18 = *a1;
  v19 = *(*a1 + 16);
  sub_1B1F1A760();
  if (!v19 || (v20 = sub_1B1DEBED8(v15, v16), (v21 & 1) == 0))
  {
    sub_1B1F1A760();
    v47 = v93;
    sub_1B1E0E714(v93, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = *a1;
    sub_1B1E0DDC0(v15, v16, v47, v17, v15, v16, isUniquelyReferenced_nonNull_native);

    *a1 = v94;
    return;
  }

  v82 = v17;
  v22 = (*(v18 + 56) + 32 * v20);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  v84 = v15;
  v85 = v25;
  v27 = v23 == v15 && v24 == v16;
  v81 = v26;
  v83 = v24;
  if (v27 || (sub_1B1F1B510() & 1) != 0)
  {
    sub_1B1F1A760();
    v28 = v85;
    sub_1B1E0E714(v85, v26);
    v29 = MEMORY[0x1B273CB00](v28, v26, v93, v82);
    v30 = v90;
    if (v29)
    {
      if (qword_1ED84F030 != -1)
      {
        v29 = swift_once();
      }

      v31 = qword_1ED84F038;
      v32 = MEMORY[0x1EEE9AC00](v29);
      *(&v80 - 2) = "ToolKit";
      MEMORY[0x1EEE9AC00](v32);
      *(&v80 - 2) = sub_1B1E07904;
      *(&v80 - 1) = v33;

      os_unfair_lock_lock(v31 + 4);
      v34 = v88;
      v35 = v95;
      sub_1B1E07944(v36);
      if (!v35)
      {
        os_unfair_lock_unlock(v31 + 4);

        swift_bridgeObjectRetain_n();
        v37 = v93;
        v38 = v82;
        sub_1B1E0E714(v93, v82);
        v39 = sub_1B1F1A4E0();
        v40 = sub_1B1F1AD20();
        swift_bridgeObjectRelease_n();
        sub_1B1E03C48(v37, v38);
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v94 = v42;
          *v41 = 136315394;
          v43 = sub_1B1DF61DC(v84, v16, &v94);

          *(v41 + 4) = v43;
          *(v41 + 12) = 2080;
          v44 = sub_1B1F1A240();
          v46 = sub_1B1DF61DC(v44, v45, &v94);

          *(v41 + 14) = v46;
          _os_log_impl(&dword_1B1DE3000, v39, v40, "Duplicate data found in state for containerId: %s. installId: %s", v41, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B273F720](v42, -1, -1);
          MEMORY[0x1B273F720](v41, -1, -1);

          sub_1B1E03C48(v85, v81);
          (*(v91 + 8))(v88, v92);
        }

        else
        {

          sub_1B1E03C48(v85, v81);

          (*(v91 + 8))(v34, v92);
        }

        return;
      }

LABEL_31:
      os_unfair_lock_unlock(v31 + 4);
      __break(1u);
      return;
    }
  }

  else
  {
    sub_1B1F1A760();
    sub_1B1E0E714(v85, v26);
    v30 = v90;
  }

  v49 = *v30;
  sub_1B1F1A760();
  v50 = sub_1B1E60184(v84, v16, v49);

  if (!v50)
  {
    sub_1B1F1A340();
    sub_1B1F1A300();
    (*(v86 + 8))(v14, v12);
    sub_1B1F1A8B0();
    v52 = sub_1B1F1A8A0();
    v54 = v53;

    (*(v87 + 8))(v11, v9);
    if (v54 >> 60 == 15)
    {
      v55 = 0;
    }

    else
    {
      v55 = v52;
    }

    if (v54 >> 60 == 15)
    {
      v56 = 0xC000000000000000;
    }

    else
    {
      v56 = v54;
    }

    swift_bridgeObjectRetain_n();
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v94 = *a1;
    v58 = v84;
    sub_1B1E0DDC0(v84, v16, v55, v56, v84, v16, v57);

    *a1 = v94;
    sub_1B1F1A760();
    sub_1B1E640C4(&v94, v58, v16);
  }

  if (qword_1ED84F030 != -1)
  {
    v51 = swift_once();
  }

  v31 = qword_1ED84F038;
  v59 = MEMORY[0x1EEE9AC00](v51);
  *(&v80 - 2) = "ToolKit";
  MEMORY[0x1EEE9AC00](v59);
  *(&v80 - 2) = sub_1B1E07904;
  *(&v80 - 1) = v60;

  os_unfair_lock_lock(v31 + 4);
  v61 = v89;
  v62 = v95;
  sub_1B1E07944(v63);
  v64 = v85;
  v95 = v62;
  if (v62)
  {
    goto LABEL_31;
  }

  os_unfair_lock_unlock(v31 + 4);

  swift_bridgeObjectRetain_n();
  v65 = v93;
  v66 = v82;
  sub_1B1E0E714(v93, v82);
  sub_1B1F1A760();
  v67 = v81;
  sub_1B1E0E714(v64, v81);
  v68 = sub_1B1F1A4E0();
  v69 = sub_1B1F1AD20();

  sub_1B1E03C48(v64, v67);

  sub_1B1E03C48(v65, v66);
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v94 = v71;
    *v70 = 136315650;
    v72 = v68;
    v73 = sub_1B1DF61DC(v84, v16, &v94);

    *(v70 + 4) = v73;
    *(v70 + 12) = 2080;
    v74 = sub_1B1F1A240();
    v76 = sub_1B1DF61DC(v74, v75, &v94);

    *(v70 + 14) = v76;
    *(v70 + 22) = 2080;
    v77 = sub_1B1F1A240();
    v79 = sub_1B1DF61DC(v77, v78, &v94);

    *(v70 + 24) = v79;
    _os_log_impl(&dword_1B1DE3000, v72, v69, "Conflicting data found in state for containerId: %s. installId 1: %s. installId 2: %s ", v70, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B273F720](v71, -1, -1);
    MEMORY[0x1B273F720](v70, -1, -1);

    sub_1B1E03C48(v85, v67);
    (*(v91 + 8))(v89, v92);
  }

  else
  {

    sub_1B1E03C48(v64, v67);

    (*(v91 + 8))(v61, v92);
  }
}

uint64_t sub_1B1E38EF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v17 = a1;
  v6 = *(a2 + 16);
  v7 = (a2 + 56);
  if (!v6)
  {
    return v17;
  }

  while (1)
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = *(v7 - 2);
    v14[0] = *(v7 - 3);
    v14[1] = v10;
    v15 = v9;
    v16 = v8;
    sub_1B1F1A760();
    sub_1B1E0E714(v9, v8);
    sub_1B1E38530(&v17, v14, a3);
    v11 = v15;
    v12 = v16;

    sub_1B1E03C48(v11, v12);
    if (v4)
    {
      break;
    }

    v7 += 4;
    if (!--v6)
    {
      return v17;
    }
  }
}

uint64_t sub_1B1E38FD4(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  OUTLINED_FUNCTION_0_13();
  v8 = v7 & v6;
  v153 = (v9 + 63) >> 6;
  while (1)
  {
LABEL_4:
    if (v8)
    {
      OUTLINED_FUNCTION_14_6();
      goto LABEL_11;
    }

    v11 = v4;
    do
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
      }

      if (v4 >= v153)
      {
        return 1;
      }

      ++v11;
    }

    while (!*(v5 + 8 * v4));
    OUTLINED_FUNCTION_13_3();
LABEL_11:
    v12 = v10 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = (*(v3 + 56) + 24 * v12);
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v15 == 0;
    sub_1B1F1A760();
    sub_1B1F1A760();
    v21 = v19;
    if (!v15)
    {
      return v20;
    }

    v156 = v21;
    v154 = v15 == 0;
    v22 = sub_1B1DEBED8(v14, v15);
    v24 = v23;

    if ((v24 & 1) == 0 || ((v25 = (*(v2 + 56) + 24 * v22), v26 = v25[2], *v25 == v17) ? (v27 = v18 == v25[1]) : (v27 = 0), !v27 && (sub_1B1F1B510() & 1) == 0))
    {
      v138 = v156;
      goto LABEL_114;
    }

    sub_1B1F1A760();
    v155 = v26;
    v28 = sub_1B1F1A290();
    v30 = v29;
    v31 = sub_1B1F1A290();
    v3 = v31;
    v33 = v32;
    v34 = v30 >> 62;
    v35 = v32 >> 62;
    if (!v27)
    {
      break;
    }

    if (v28)
    {
      v36 = 0;
    }

    else
    {
      v36 = v30 == 0xC000000000000000;
    }

    v37 = v36 && v32 >> 62 == 3;
    if (!v37 || (!v31 ? (v38 = v32 == 0xC000000000000000) : (v38 = 0), !v38))
    {
      v39 = 0;
      goto LABEL_39;
    }

    sub_1B1E03C48(0, 0xC000000000000000);
    v40 = 0;
    v41 = 0xC000000000000000;
LABEL_58:
    sub_1B1E03C48(v40, v41);

    OUTLINED_FUNCTION_11_4();
  }

  v39 = 0;
  switch(v34)
  {
    case 0uLL:
      v39 = BYTE6(v30);
      break;
    case 1uLL:
      if (__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_120;
      }

      v39 = HIDWORD(v28) - v28;
      break;
    case 2uLL:
      v43 = *(v28 + 16);
      v42 = *(v28 + 24);
      v44 = __OFSUB__(v42, v43);
      v39 = v42 - v43;
      if (!v44)
      {
        break;
      }

      goto LABEL_121;
    case 3uLL:
      break;
    default:
      goto LABEL_138;
  }

LABEL_39:
  switch(v35)
  {
    case 1uLL:
      LODWORD(v45) = HIDWORD(v31) - v31;
      if (__OFSUB__(HIDWORD(v31), v31))
      {
        goto LABEL_118;
      }

      v45 = v45;
LABEL_48:
      if (v39 == v45)
      {
        if (v39 < 1)
        {
LABEL_57:
          v55 = OUTLINED_FUNCTION_1_13();
          sub_1B1E03C48(v55, v56);
          v40 = OUTLINED_FUNCTION_9_8();
          goto LABEL_58;
        }

        v48 = v31 >> 32;
        switch(v34)
        {
          case 1:
            if (v28 >> 32 < v28)
            {
              goto LABEL_122;
            }

            v72 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v72, v73);
            v74 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v74, v75);
            v76 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v76, v77);
            v64 = sub_1B1F1A0C0();
            if (!v64)
            {
              goto LABEL_75;
            }

            v78 = sub_1B1F1A0E0();
            if (__OFSUB__(v28, v78))
            {
              goto LABEL_125;
            }

            v64 += v28 - v78;
LABEL_75:
            sub_1B1F1A0D0();
            sub_1B1E3B6E4(__s1, v64, v3, v33);
            v79 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v79, v80);
            v81 = OUTLINED_FUNCTION_9_8();
            sub_1B1E03C48(v81, v82);
            v83 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v83, v84);
            v85 = __s1[0];

            v86 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v86, v87);
            v88 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v88, v89);

            v2 = a2;
            OUTLINED_FUNCTION_11_4();
            v20 = v154;
            if ((v85 & 1) == 0)
            {
              return v20;
            }

            goto LABEL_4;
          case 2:
            v57 = *(v28 + 16);
            v58 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v58, v59);
            v60 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v60, v61);
            v62 = OUTLINED_FUNCTION_1_13();
            sub_1B1E0E714(v62, v63);
            v64 = sub_1B1F1A0C0();
            if (!v64)
            {
              goto LABEL_62;
            }

            v65 = sub_1B1F1A0E0();
            if (__OFSUB__(v57, v65))
            {
              goto LABEL_124;
            }

            v64 += v57 - v65;
LABEL_62:
            OUTLINED_FUNCTION_5_10();
            if (!v44)
            {
              goto LABEL_75;
            }

            goto LABEL_123;
          case 3:
            memset(__s1, 0, 14);
            if (v35 == 2)
            {
              v90 = *(v31 + 16);
              v91 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v91, v92);
              v93 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v93, v94);
              v95 = sub_1B1F1A0C0();
              if (v95)
              {
                v96 = sub_1B1F1A0E0();
                if (__OFSUB__(v90, v96))
                {
                  goto LABEL_130;
                }

                v95 += v90 - v96;
              }

              OUTLINED_FUNCTION_5_10();
              if (v44)
              {
                goto LABEL_128;
              }

              v97 = sub_1B1F1A0D0();
              if (!v95)
              {
                goto LABEL_135;
              }

              if (v97 >= v90)
              {
                v98 = v90;
              }

              else
              {
                v98 = v97;
              }

              v99 = v95;
            }

            else if (v35 == 1)
            {
              if (v48 < v31)
              {
                goto LABEL_126;
              }

              v66 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v66, v67);
              v68 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v68, v69);
              v70 = sub_1B1F1A0C0();
              if (v70)
              {
                __s2b = v70;
                v71 = sub_1B1F1A0E0();
                if (__OFSUB__(v3, v71))
                {
                  goto LABEL_132;
                }

                __s2c = &__s2b[v3 - v71];
              }

              else
              {
                __s2c = 0;
              }

              v118 = sub_1B1F1A0D0();
              v99 = __s2c;
              if (!__s2c)
              {
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
                v144 = OUTLINED_FUNCTION_1_13();
                sub_1B1E03C48(v144, v145);
                v146 = OUTLINED_FUNCTION_1_13();
                sub_1B1E03C48(v146, v147);

                __break(1u);
LABEL_138:
                JUMPOUT(0);
              }

              if (v118 >= v48 - v3)
              {
                v98 = v48 - v3;
              }

              else
              {
                v98 = v118;
              }
            }

            else
            {
              v157 = v31;
              v158 = v32;
              v159 = BYTE2(v32);
              v160 = BYTE3(v32);
              v161 = BYTE4(v32);
              v162 = BYTE5(v32);
              v106 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v106, v107);
              v108 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v108, v109);
              v99 = &v157;
              v98 = BYTE6(v33);
            }

            v119 = memcmp(__s1, v99, v98);
            v120 = OUTLINED_FUNCTION_9_8();
            sub_1B1E03C48(v120, v121);
            v122 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v122, v123);

            v124 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v124, v125);
            v2 = a2;
            v20 = v154;
            v126 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v126, v127);
            OUTLINED_FUNCTION_11_4();
            if (v119)
            {
              return v20;
            }

            goto LABEL_4;
          default:
            __s1[0] = v28;
            LOWORD(__s1[1]) = v30;
            BYTE2(__s1[1]) = BYTE2(v30);
            BYTE3(__s1[1]) = BYTE3(v30);
            BYTE4(__s1[1]) = BYTE4(v30);
            BYTE5(__s1[1]) = BYTE5(v30);
            if (v35)
            {
              if (v35 == 1)
              {
                if (v48 < v31)
                {
                  goto LABEL_127;
                }

                v49 = OUTLINED_FUNCTION_1_13();
                sub_1B1E0E714(v49, v50);
                v51 = OUTLINED_FUNCTION_1_13();
                sub_1B1E0E714(v51, v52);
                v53 = sub_1B1F1A0C0();
                if (v53)
                {
                  __s2 = v53;
                  v54 = sub_1B1F1A0E0();
                  if (__OFSUB__(v3, v54))
                  {
                    goto LABEL_133;
                  }

                  __s2a = &__s2[v3 - v54];
                }

                else
                {
                  __s2a = 0;
                }

                v128 = sub_1B1F1A0D0();
                v104 = __s2a;
                if (!__s2a)
                {
                  goto LABEL_137;
                }

                if (v128 >= v48 - v3)
                {
                  v105 = v48 - v3;
                }

                else
                {
                  v105 = v128;
                }
              }

              else
              {
                v110 = *(v31 + 16);
                v111 = OUTLINED_FUNCTION_1_13();
                sub_1B1E0E714(v111, v112);
                v113 = OUTLINED_FUNCTION_1_13();
                sub_1B1E0E714(v113, v114);
                v115 = sub_1B1F1A0C0();
                if (v115)
                {
                  v116 = sub_1B1F1A0E0();
                  if (__OFSUB__(v110, v116))
                  {
                    goto LABEL_131;
                  }

                  v115 += v110 - v116;
                }

                OUTLINED_FUNCTION_5_10();
                if (v44)
                {
                  goto LABEL_129;
                }

                v117 = sub_1B1F1A0D0();
                if (!v115)
                {
                  goto LABEL_136;
                }

                if (v117 >= v110)
                {
                  v105 = v110;
                }

                else
                {
                  v105 = v117;
                }

                v104 = v115;
              }
            }

            else
            {
              v157 = v31;
              v158 = v32;
              v159 = BYTE2(v32);
              v160 = BYTE3(v32);
              v161 = BYTE4(v32);
              v162 = BYTE5(v32);
              v100 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v100, v101);
              v102 = OUTLINED_FUNCTION_1_13();
              sub_1B1E0E714(v102, v103);
              v104 = &v157;
              v105 = BYTE6(v33);
            }

            v129 = memcmp(__s1, v104, v105);
            v130 = OUTLINED_FUNCTION_9_8();
            sub_1B1E03C48(v130, v131);
            v132 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v132, v133);

            v134 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v134, v135);
            v136 = OUTLINED_FUNCTION_1_13();
            sub_1B1E03C48(v136, v137);
            v2 = a2;
            OUTLINED_FUNCTION_11_4();
            v20 = v154;
            if (v129)
            {
              return v20;
            }

            break;
        }

        goto LABEL_4;
      }

LABEL_113:
      v139 = OUTLINED_FUNCTION_1_13();
      sub_1B1E03C48(v139, v140);
      v141 = OUTLINED_FUNCTION_9_8();
      sub_1B1E03C48(v141, v142);

      v138 = v155;
LABEL_114:

      return 0;
    case 2uLL:
      v47 = *(v31 + 16);
      v46 = *(v31 + 24);
      v44 = __OFSUB__(v46, v47);
      v45 = v46 - v47;
      if (!v44)
      {
        goto LABEL_48;
      }

      goto LABEL_119;
    case 3uLL:
      if (v39)
      {
        goto LABEL_113;
      }

      goto LABEL_57;
    default:
      v45 = BYTE6(v32);
      goto LABEL_48;
  }
}

uint64_t sub_1B1E398D0(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v145 = 0;
    v146 = a2;
    v5 = a1 + 64;
    OUTLINED_FUNCTION_0_13();
    v8 = v7 & v6;
    v147 = (v9 + 63) >> 6;
    v148 = v3;
    while (1)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_14_6();
        v150 = v11;
        goto LABEL_11;
      }

      v12 = v4;
      do
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
        }

        if (v4 >= v147)
        {
          return 1;
        }

        ++v12;
      }

      while (!*(v5 + 8 * v4));
      OUTLINED_FUNCTION_13_3();
      v150 = v13;
LABEL_11:
      v14 = v10 | (v4 << 6);
      v15 = (*(v3 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v3 + 56) + 32 * v14);
      v19 = *v18;
      v20 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      sub_1B1F1A760();
      sub_1B1F1A760();
      v23 = OUTLINED_FUNCTION_2_10();
      sub_1B1E0E714(v23, v24);
      result = v17 == 0;
      if (!v17)
      {
        return result;
      }

      v26 = sub_1B1DEBED8(v16, v17);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        break;
      }

      v29 = (*(v2 + 56) + 32 * v26);
      v3 = v29[2];
      v30 = v29[3];
      v31 = *v29 == v19 && v20 == v29[1];
      if (!v31 && (sub_1B1F1B510() & 1) == 0)
      {
        break;
      }

      v32 = v30 >> 62;
      v33 = v21 >> 62;
      if (v31)
      {
        if (v3)
        {
          v34 = 0;
        }

        else
        {
          v34 = v30 == 0xC000000000000000;
        }

        v38 = 0;
        v35 = v34 && v21 >> 62 == 3;
        if (!v35 || v22 || v21 != 0xC000000000000000)
        {
          goto LABEL_36;
        }

        v36 = 0;
        v37 = 0xC000000000000000;
LABEL_57:
        sub_1B1E03C48(v36, v37);
        v3 = v148;
        v8 = v150;
      }

      else
      {
        v38 = 0;
        switch(v32)
        {
          case 0uLL:
            v38 = BYTE6(v30);
            break;
          case 1uLL:
            if (__OFSUB__(HIDWORD(v3), v3))
            {
              goto LABEL_107;
            }

            v38 = HIDWORD(v3) - v3;
            break;
          case 2uLL:
            v40 = *(v3 + 16);
            v39 = *(v3 + 24);
            v41 = __OFSUB__(v39, v40);
            v38 = v39 - v40;
            if (!v41)
            {
              break;
            }

            goto LABEL_106;
          case 3uLL:
            break;
          default:
            goto LABEL_125;
        }

LABEL_36:
        switch(v33)
        {
          case 1uLL:
            LODWORD(v42) = HIDWORD(v22) - v22;
            if (__OFSUB__(HIDWORD(v22), v22))
            {
              goto LABEL_105;
            }

            v42 = v42;
LABEL_45:
            if (v38 != v42)
            {
              goto LABEL_100;
            }

            if (v38 < 1)
            {
LABEL_56:

              v36 = OUTLINED_FUNCTION_2_10();
              goto LABEL_57;
            }

            v2 = v22 >> 32;
            switch(v32)
            {
              case 1:
                if (v3 >> 32 < v3)
                {
                  goto LABEL_108;
                }

                v144 = v3;
                v73 = OUTLINED_FUNCTION_2_10();
                sub_1B1E0E714(v73, v74);
                v75 = OUTLINED_FUNCTION_2_10();
                sub_1B1E0E714(v75, v76);
                v77 = OUTLINED_FUNCTION_2_10();
                sub_1B1E0E714(v77, v78);
                sub_1B1F1A760();
                v79 = OUTLINED_FUNCTION_4_9();
                sub_1B1E0E714(v79, v80);
                v63 = sub_1B1F1A0C0();
                if (!v63)
                {
                  goto LABEL_79;
                }

                v81 = sub_1B1F1A0E0();
                if (__OFSUB__(v3, v81))
                {
                  goto LABEL_111;
                }

                v63 += v3 - v81;
LABEL_79:
                sub_1B1F1A0D0();
                v2 = v145;
                sub_1B1E3B6E4(__s1, v63, v22, v21);
                v87 = OUTLINED_FUNCTION_2_10();
                sub_1B1E03C48(v87, v88);
                if (v145)
                {
                  goto LABEL_124;
                }

                v89 = OUTLINED_FUNCTION_4_9();
                sub_1B1E03C48(v89, v90);

                v91 = OUTLINED_FUNCTION_2_10();
                sub_1B1E03C48(v91, v92);
                v93 = __s1[0];
                v94 = OUTLINED_FUNCTION_2_10();
                sub_1B1E03C48(v94, v95);
                v96 = OUTLINED_FUNCTION_2_10();
                v98 = sub_1B1E03C48(v96, v97);
                result = OUTLINED_FUNCTION_15_7(v98, v99, v100, v101, v102, v103, v104, v105, v144, 0, v146, v147, v148, v149, 0);
                if ((v93 & 1) == 0)
                {
                  return result;
                }

                continue;
              case 2:
                v54 = *(v3 + 16);
                v144 = *(v3 + 24);
                v55 = OUTLINED_FUNCTION_2_10();
                sub_1B1E0E714(v55, v56);
                v57 = OUTLINED_FUNCTION_2_10();
                sub_1B1E0E714(v57, v58);
                v59 = OUTLINED_FUNCTION_2_10();
                sub_1B1E0E714(v59, v60);
                sub_1B1F1A760();
                v61 = OUTLINED_FUNCTION_4_9();
                sub_1B1E0E714(v61, v62);
                v63 = sub_1B1F1A0C0();
                if (!v63)
                {
                  goto LABEL_61;
                }

                v64 = sub_1B1F1A0E0();
                if (__OFSUB__(v54, v64))
                {
                  goto LABEL_110;
                }

                v63 += v54 - v64;
LABEL_61:
                OUTLINED_FUNCTION_5_10();
                if (!v41)
                {
                  goto LABEL_79;
                }

                goto LABEL_109;
              case 3:
                memset(__s1, 0, 14);
                if (v33 == 2)
                {
                  v2 = *(v22 + 16);
                  v143 = *(v22 + 24);
                  v106 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v106, v107);
                  v108 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v108, v109);
                  sub_1B1F1A760();
                  v110 = OUTLINED_FUNCTION_4_9();
                  sub_1B1E0E714(v110, v111);
                  v51 = sub_1B1F1A0C0();
                  if (v51)
                  {
                    v112 = sub_1B1F1A0E0();
                    if (__OFSUB__(v2, v112))
                    {
                      goto LABEL_116;
                    }

                    v51 += v2 - v112;
                  }

                  OUTLINED_FUNCTION_5_10();
                  if (v41)
                  {
                    goto LABEL_114;
                  }

                  v113 = sub_1B1F1A0D0();
                  if (!v51)
                  {
                    goto LABEL_121;
                  }

                  goto LABEL_93;
                }

                if (v33 != 1)
                {
LABEL_78:
                  __s2 = v22;
                  v152 = v21;
                  v153 = BYTE2(v21);
                  v154 = BYTE3(v21);
                  v155 = BYTE4(v21);
                  v156 = BYTE5(v21);
                  v82 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v82, v83);
                  v84 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v84, v85);
                  v86 = memcmp(__s1, &__s2, BYTE6(v21));
                  goto LABEL_97;
                }

                v143 = v22;
                if (v2 < v22)
                {
                  goto LABEL_112;
                }

                v65 = OUTLINED_FUNCTION_2_10();
                sub_1B1E0E714(v65, v66);
                v67 = OUTLINED_FUNCTION_2_10();
                sub_1B1E0E714(v67, v68);
                sub_1B1F1A760();
                v69 = OUTLINED_FUNCTION_4_9();
                sub_1B1E0E714(v69, v70);
                v51 = sub_1B1F1A0C0();
                if (v51)
                {
                  v71 = sub_1B1F1A0E0();
                  if (__OFSUB__(v22, v71))
                  {
                    goto LABEL_118;
                  }

                  v51 += v22 - v71;
                }

                v53 = sub_1B1F1A0D0();
                if (!v51)
                {
                  __break(1u);
LABEL_121:
                  __break(1u);
LABEL_122:
                  __break(1u);
LABEL_123:
                  __break(1u);
LABEL_124:
                  v139 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E03C48(v139, v140);
                  v141 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E03C48(v141, v142);

                  __break(1u);
LABEL_125:
                  JUMPOUT(0);
                }

                goto LABEL_71;
              default:
                __s1[0] = v3;
                LOWORD(__s1[1]) = v30;
                BYTE2(__s1[1]) = BYTE2(v30);
                BYTE3(__s1[1]) = BYTE3(v30);
                BYTE4(__s1[1]) = BYTE4(v30);
                BYTE5(__s1[1]) = BYTE5(v30);
                if (!v33)
                {
                  goto LABEL_78;
                }

                if (v33 == 1)
                {
                  v143 = v22;
                  if (v2 < v22)
                  {
                    goto LABEL_113;
                  }

                  v45 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v45, v46);
                  v47 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v47, v48);
                  sub_1B1F1A760();
                  v49 = OUTLINED_FUNCTION_4_9();
                  sub_1B1E0E714(v49, v50);
                  v51 = sub_1B1F1A0C0();
                  if (v51)
                  {
                    v52 = sub_1B1F1A0E0();
                    if (__OFSUB__(v22, v52))
                    {
                      goto LABEL_119;
                    }

                    v51 += v22 - v52;
                  }

                  v53 = sub_1B1F1A0D0();
                  if (!v51)
                  {
                    goto LABEL_123;
                  }

LABEL_71:
                  if (v53 >= v2 - v143)
                  {
                    v72 = v2 - v143;
                  }

                  else
                  {
                    v72 = v53;
                  }
                }

                else
                {
                  v2 = *(v22 + 16);
                  v143 = *(v22 + 24);
                  v114 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v114, v115);
                  v116 = OUTLINED_FUNCTION_2_10();
                  sub_1B1E0E714(v116, v117);
                  sub_1B1F1A760();
                  v118 = OUTLINED_FUNCTION_4_9();
                  sub_1B1E0E714(v118, v119);
                  v51 = sub_1B1F1A0C0();
                  if (v51)
                  {
                    v120 = sub_1B1F1A0E0();
                    if (__OFSUB__(v2, v120))
                    {
                      goto LABEL_117;
                    }

                    v51 += v2 - v120;
                  }

                  OUTLINED_FUNCTION_5_10();
                  if (v41)
                  {
                    goto LABEL_115;
                  }

                  v113 = sub_1B1F1A0D0();
                  if (!v51)
                  {
                    goto LABEL_122;
                  }

LABEL_93:
                  if (v113 >= v2)
                  {
                    v72 = v2;
                  }

                  else
                  {
                    v72 = v113;
                  }
                }

                v86 = memcmp(__s1, v51, v72);

                v121 = OUTLINED_FUNCTION_4_9();
                sub_1B1E03C48(v121, v122);
LABEL_97:

                v123 = OUTLINED_FUNCTION_2_10();
                sub_1B1E03C48(v123, v124);
                v125 = OUTLINED_FUNCTION_2_10();
                sub_1B1E03C48(v125, v126);
                v127 = OUTLINED_FUNCTION_2_10();
                v129 = sub_1B1E03C48(v127, v128);
                result = OUTLINED_FUNCTION_15_7(v129, v130, v131, v132, v133, v134, v135, v136, v143, v145, v146, v147, v148, v149, 0);
                if (v86)
                {
                  return result;
                }

                break;
            }

            break;
          case 2uLL:
            v44 = *(v22 + 16);
            v43 = *(v22 + 24);
            v41 = __OFSUB__(v43, v44);
            v42 = v43 - v44;
            if (!v41)
            {
              goto LABEL_45;
            }

            goto LABEL_104;
          case 3uLL:
            if (v38)
            {
              goto LABEL_100;
            }

            goto LABEL_56;
          default:
            v42 = BYTE6(v21);
            goto LABEL_45;
        }
      }
    }

LABEL_100:

    v137 = OUTLINED_FUNCTION_2_10();
    sub_1B1E03C48(v137, v138);
  }

  return 0;
}

uint64_t sub_1B1E3A090(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001B1F38F90 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B1F1B510();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B1E3A130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E3A090(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B1E3A15C(uint64_t a1)
{
  v2 = sub_1B1E3A360();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3A198(uint64_t a1)
{
  v2 = sub_1B1E3A360();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LinkSnapshot.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_34();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784DA0, &qword_1B1F2EBD0);
  OUTLINED_FUNCTION_0();
  v27 = v26;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  sub_1B1E3A360();
  sub_1B1F1A760();
  sub_1B1F1B830();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784DB0, &qword_1B1F2EBD8);
  sub_1B1E3C104(&qword_1EB784DB8, sub_1B1E3A3B4);
  sub_1B1F1B2B0();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E3A360()
{
  result = qword_1EB784DA8;
  if (!qword_1EB784DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DA8);
  }

  return result;
}

unint64_t sub_1B1E3A3B4()
{
  result = qword_1EB784DC0;
  if (!qword_1EB784DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DC0);
  }

  return result;
}

uint64_t LinkSnapshot.hashValue.getter()
{
  v1 = *v0;
  sub_1B1F1B7C0();
  sub_1B1E3BF6C(v3, v1);
  return sub_1B1F1B7F0();
}

void LinkSnapshot.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_34();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784DC8, &qword_1B1F2EBE0);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  sub_1B1E3A360();
  sub_1B1F1B810();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784DB0, &qword_1B1F2EBD8);
    sub_1B1E3C104(&qword_1EB784DD0, sub_1B1E3C184);
    sub_1B1F1B200();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_35();
}

uint64_t static LinkSnapshot.empty.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = MEMORY[0x1E69E7CD0];
  v2 = sub_1B1E38EF8(MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CC0], &v4);

  *a1 = v2;
  return result;
}

uint64_t sub_1B1E3A684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B1E3A734;

  return static LinkSnapshot.partial(_:failIfContainerNotFound:)();
}

uint64_t sub_1B1E3A734()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_2_0();

  return v0();
}

uint64_t static LinkSnapshot.partial(_:failIfContainerNotFound:)()
{
  OUTLINED_FUNCTION_1();
  *(v0 + 56) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1B1E3A8B8;

  return static LinkSnapshot.complete()();
}

uint64_t sub_1B1E3A8B8()
{
  OUTLINED_FUNCTION_1();
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1B1E3AAB8;
  }

  else
  {
    v2 = sub_1B1E3A9C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1E3A9C8()
{
  v1 = *(v0 + 56);
  sub_1B1F1A760();
  v2 = OUTLINED_FUNCTION_6_8();
  v4 = sub_1B1E3B908(v2, v3);

  if (v1 == 1 && v4[2] < *(*(v0 + 32) + 16))
  {

    sub_1B1E3C1D8();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_2_0();
  }

  else
  {
    **(v0 + 24) = v4;
    OUTLINED_FUNCTION_2_0();
  }

  return v5();
}

uint64_t sub_1B1E3AADC()
{
  OUTLINED_FUNCTION_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B1E3C924;

  return static LinkSnapshot.complete()();
}

uint64_t static LinkSnapshot.complete()()
{
  OUTLINED_FUNCTION_1();
  v0[3] = v1;
  v2 = sub_1B1F1A500();
  v0[4] = v2;
  v0[5] = *(v2 - 8);
  v0[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E3AC58, 0, 0);
}

uint64_t sub_1B1E3AC58()
{
  v45 = v0;
  v44[2] = *MEMORY[0x1E69E9840];
  if (qword_1ED84F030 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED84F038;
  v2 = swift_task_alloc();
  *(v2 + 16) = "ToolKit";
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_1B1DE7A98;
  *(v3 + 24) = v2;

  os_unfair_lock_lock(v1 + 4);
  sub_1B1DE7A64(v4);
  os_unfair_lock_unlock(v1 + 4);

  v5 = sub_1B1F1A4E0();
  v6 = sub_1B1F1AD30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B1DE3000, v5, v6, "Building complete Link snapshot from LNMetadataProvider", v7, 2u);
    MEMORY[0x1B273F720](v7, -1, -1);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  (*(v9 + 8))(v8, v10);
  v11 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  v0[2] = 0;
  v12 = [v11 bundleRegistrationsWithError_];
  v13 = v0[2];
  if (v12)
  {
    v14 = v12;
    sub_1B1E3C22C();
    v15 = sub_1B1F1A9B0();
    v16 = v13;

    v17 = sub_1B1E2AC98(v15);
    if (v17)
    {
      v18 = v17;
      v41 = v11;
      v42 = v0;
      v44[0] = MEMORY[0x1E69E7CC0];
      sub_1B1E3B2A4(0, v17 & ~(v17 >> 63), 0);
      if (v18 < 0)
      {
        __break(1u);
      }

      v19 = 0;
      v20 = v44[0];
      v43 = v15 & 0xC000000000000001;
      v21 = v15;
      v22 = v18;
      do
      {
        if (v43)
        {
          v23 = MEMORY[0x1B273D840](v19, v15);
        }

        else
        {
          v23 = *(v15 + 8 * v19 + 32);
        }

        v24 = v23;
        v25 = [v23 bundleIdentifier];
        v26 = sub_1B1F1A890();
        v28 = v27;

        v29 = [v24 installIdentifier];
        v30 = sub_1B1F1A290();
        v32 = v31;

        v44[0] = v20;
        v34 = *(v20 + 16);
        v33 = *(v20 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1B1E3B2A4(v33 > 1, v34 + 1, 1);
          v20 = v44[0];
        }

        ++v19;
        *(v20 + 16) = v34 + 1;
        v35 = (v20 + 32 * v34);
        v35[4] = v26;
        v35[5] = v28;
        v35[6] = v30;
        v35[7] = v32;
        v15 = v21;
      }

      while (v22 != v19);

      v11 = v41;
      v0 = v42;
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v38 = v0[3];
    v44[0] = MEMORY[0x1E69E7CD0];
    v39 = sub_1B1E38EF8(MEMORY[0x1E69E7CC8], v20, v44);

    *v38 = v39;

    OUTLINED_FUNCTION_2_0();
  }

  else
  {
    v36 = v13;
    sub_1B1F1A1C0();

    swift_willThrow();

    OUTLINED_FUNCTION_2_0();
  }

  return v37();
}

uint64_t sub_1B1E3B128(uint64_t a1)
{
  v2 = *v1;
  sub_1B1F1B7C0();
  sub_1B1E3BF6C(v4, v2);
  return sub_1B1F1B7F0();
}

uint64_t LinkSnapshot.debugDescription.getter()
{
  sub_1B1F1AFA0();

  sub_1B1F1A760();
  v0 = sub_1B1F1A740();
  MEMORY[0x1B273D1A0](v0);

  MEMORY[0x1B273D1A0](0x73656C646E756220, 0xE800000000000000);
  return 0x616E536B6E694C3CLL;
}

uint64_t sub_1B1E3B244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1E3B2C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1E3B264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1E3B3C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1E3B284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1E3B4CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1E3B2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1E3B5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1E3B2C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783F38, &qword_1B1F2CC10);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B1E2B4A4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E3B3C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E30, &unk_1B1F2F170);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1B1E2B4C4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E3B4CC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E40, &qword_1B1F2F188);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1B1E2B4E8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784530, &qword_1B1F2F190);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1E3B5E4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E38, &qword_1B1F2F180);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1B1E2B510((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B1E3B6E4(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      v8 = sub_1B1E3B850(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v8 = 1;
LABEL_10:
        *a1 = v8 & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v8 = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_10;
  }
}

char *sub_1B1E3B850(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1B1F1A0C0();
  v8 = result;
  if (result)
  {
    result = sub_1B1F1A0E0();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1B1F1A0D0();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

unint64_t *sub_1B1E3B908(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_1B1F1A760();
      v4 = sub_1B1E3BD20(v12, v7, v4, a2);
      MEMORY[0x1B273F720](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = (v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1B1E64060(0, v7, v9);
  sub_1B1F1A760();
  v10 = sub_1B1E3BACC(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

unint64_t *sub_1B1E3BACC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v31 = a4 + 56;
  v32 = result;
LABEL_5:
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    if (*(a4 + 16))
    {
      v37 = v10;
      v38 = v5;
      v16 = (*(a3 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v33 = v15;
      v19 = *(a3 + 56) + 32 * v15;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      sub_1B1F1B7C0();
      sub_1B1F1A760();
      sub_1B1F1A760();
      v35 = v21;
      v36 = v20;
      sub_1B1E0E714(v20, v21);
      sub_1B1F1A900();
      v22 = sub_1B1F1B7F0();
      v23 = ~(-1 << *(a4 + 32));
      do
      {
        v24 = v22 & v23;
        if (((*(v31 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {

          sub_1B1E03C48(v36, v35);

          v5 = v38;
          v10 = v37;
          goto LABEL_5;
        }

        v25 = (*(a4 + 48) + 16 * v24);
        if (*v25 == v17 && v25[1] == v18)
        {
          break;
        }

        v27 = sub_1B1F1B510();
        v22 = v24 + 1;
      }

      while ((v27 & 1) == 0);

      sub_1B1E03C48(v36, v35);

      *(v32 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v5 = v38 + 1;
      v10 = v37;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      sub_1B1E66C74(v32, a2, v5, a3);
      v29 = v28;

      return v29;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t *sub_1B1E3BD20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v8 = sub_1B1E3BACC(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1B1E3BDC0(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  OUTLINED_FUNCTION_0_13();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  result = sub_1B1F1A760();
  v22 = 0;
  v10 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_6:
      v12 = __clz(__rbit64(v6)) | (v11 << 6);
      v13 = *(*(a2 + 48) + 16 * v12 + 8);
      v14 = *(*(a2 + 56) + 24 * v12 + 16);
      sub_1B1F1A760();
      sub_1B1F1A760();
      v15 = v14;
      if (!v13)
      {
        break;
      }

      v16 = v15;
      v6 &= v6 - 1;
      memcpy(__dst, a1, sizeof(__dst));
      sub_1B1F1A900();

      sub_1B1F1A760();
      v17 = v16;
      sub_1B1F1A900();

      v18 = sub_1B1F1A290();
      v20 = v19;
      sub_1B1F1A2A0();
      sub_1B1E03C48(v18, v20);

      result = sub_1B1F1B7F0();
      v22 ^= result;
      v10 = v11;
      if (!v6)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    return MEMORY[0x1B273E060](v22);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_9;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E3BF6C(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  OUTLINED_FUNCTION_0_13();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  result = sub_1B1F1A760();
  v22 = 0;
  v9 = 0;
  if (v5)
  {
    while (1)
    {
      v10 = v9;
LABEL_6:
      v11 = *(*(a2 + 48) + 16 * (__clz(__rbit64(v5)) | (v10 << 6)) + 8);
      sub_1B1F1A760();
      sub_1B1F1A760();
      v12 = OUTLINED_FUNCTION_7_7();
      sub_1B1E0E714(v12, v13);
      if (!v11)
      {
        break;
      }

      v5 &= v5 - 1;
      memcpy(__dst, a1, sizeof(__dst));
      sub_1B1F1A900();

      sub_1B1F1A760();
      v14 = OUTLINED_FUNCTION_7_7();
      sub_1B1E0E714(v14, v15);
      sub_1B1F1A900();

      sub_1B1F1A2A0();

      v16 = OUTLINED_FUNCTION_7_7();
      sub_1B1E03C48(v16, v17);
      v18 = OUTLINED_FUNCTION_7_7();
      sub_1B1E03C48(v18, v19);
      result = sub_1B1F1B7F0();
      v22 ^= result;
      v9 = v10;
      if (!v5)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    return MEMORY[0x1B273E060](v22);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_9;
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E3C104(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784DB0, &qword_1B1F2EBD8);
    a2();
    OUTLINED_FUNCTION_7_7();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1E3C184()
{
  result = qword_1EB784DD8;
  if (!qword_1EB784DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DD8);
  }

  return result;
}

unint64_t sub_1B1E3C1D8()
{
  result = qword_1EB784DE0;
  if (!qword_1EB784DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DE0);
  }

  return result;
}

unint64_t sub_1B1E3C22C()
{
  result = qword_1EB7835D0;
  if (!qword_1EB7835D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7835D0);
  }

  return result;
}

unint64_t sub_1B1E3C274()
{
  result = qword_1EB784DE8;
  if (!qword_1EB784DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DE8);
  }

  return result;
}

unint64_t sub_1B1E3C2D4()
{
  result = qword_1EB784DF0;
  if (!qword_1EB784DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DF0);
  }

  return result;
}

unint64_t sub_1B1E3C328(void *a1)
{
  a1[1] = sub_1B1E3C368();
  a1[2] = sub_1B1E3C3BC();
  a1[3] = sub_1B1E3C410();
  result = sub_1B1E3C464();
  a1[4] = result;
  return result;
}

unint64_t sub_1B1E3C368()
{
  result = qword_1EB783AA0;
  if (!qword_1EB783AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AA0);
  }

  return result;
}

unint64_t sub_1B1E3C3BC()
{
  result = qword_1EB783AA8;
  if (!qword_1EB783AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AA8);
  }

  return result;
}

unint64_t sub_1B1E3C410()
{
  result = qword_1EB783AC0;
  if (!qword_1EB783AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AC0);
  }

  return result;
}

unint64_t sub_1B1E3C464()
{
  result = qword_1EB783AB8;
  if (!qword_1EB783AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AB8);
  }

  return result;
}

unint64_t sub_1B1E3C4BC()
{
  result = qword_1EB783AB0;
  if (!qword_1EB783AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB783AB0);
  }

  return result;
}

_BYTE *sub_1B1E3C534(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LinkSnapshot.State.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E3C6C0()
{
  result = qword_1EB784DF8;
  if (!qword_1EB784DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784DF8);
  }

  return result;
}

unint64_t sub_1B1E3C718()
{
  result = qword_1EB784E00;
  if (!qword_1EB784E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E00);
  }

  return result;
}

unint64_t sub_1B1E3C770()
{
  result = qword_1EB784E08;
  if (!qword_1EB784E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E08);
  }

  return result;
}

unint64_t sub_1B1E3C7C8()
{
  result = qword_1EB784E10;
  if (!qword_1EB784E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E10);
  }

  return result;
}

unint64_t sub_1B1E3C820()
{
  result = qword_1EB784E18;
  if (!qword_1EB784E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E18);
  }

  return result;
}

unint64_t sub_1B1E3C878()
{
  result = qword_1EB784E20;
  if (!qword_1EB784E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E20);
  }

  return result;
}

unint64_t sub_1B1E3C8D0()
{
  result = qword_1EB784E28;
  if (!qword_1EB784E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E28);
  }

  return result;
}

uint64_t AsyncSequence.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = sub_1B1F19FF0();
  v4[6] = v6;
  OUTLINED_FUNCTION_6_0(v6);
  v4[7] = v7;
  v4[8] = OUTLINED_FUNCTION_9();
  v4[9] = swift_getAssociatedTypeWitness();
  v8 = sub_1B1F1AEB0();
  v4[10] = v8;
  OUTLINED_FUNCTION_6_0(v8);
  v4[11] = v9;
  v4[12] = OUTLINED_FUNCTION_9();
  v4[13] = *(a2 - 8);
  v4[14] = OUTLINED_FUNCTION_9();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_0(AssociatedTypeWitness);
  v4[16] = v11;
  v4[17] = OUTLINED_FUNCTION_9();

  return MEMORY[0x1EEE6DFA0](sub_1B1E3CB4C, 0, 0);
}

uint64_t sub_1B1E3CB4C()
{
  (*(v0[13] + 16))(v0[14], v0[5], v0[3]);
  sub_1B1F1AB60();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1B1E3CC64;
  v3 = v0[15];
  v4 = v0[12];

  return MEMORY[0x1EEE6D8C8](v4, v3, AssociatedConformanceWitness);
}

uint64_t sub_1B1E3CC64()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B1E3CF5C;
  }

  else
  {
    v2 = sub_1B1E3CD78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1E3CD78()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  if (EnumTagSinglePayload == 1)
  {
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = *(v0 + 48);
    (*(*(v0 + 88) + 8))(v1, *(v0 + 80));
    *(v0 + 160) = 2;
    sub_1B1E3CFF4(MEMORY[0x1E69E7CC0]);
    sub_1B1E3D12C();
    sub_1B1F1A1A0();
    sub_1B1F19FE0();
    (*(v8 + 8))(v7, v9);
    swift_willThrow();
    (*(v5 + 8))(v4, v6);
    OUTLINED_FUNCTION_1_14();
  }

  else
  {
    v11 = *(v0 + 16);
    (*(v5 + 8))(*(v0 + 136), *(v0 + 120));
    (*(*(v2 - 8) + 32))(v11, v1, v2);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B1E3CF5C()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  OUTLINED_FUNCTION_1_14();

  v1 = v0[1];

  return v1();
}

unint64_t sub_1B1E3CFF4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E20, &qword_1B1F2F1A0);
  v2 = sub_1B1F1B140();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1B1E3D1FC(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1B1E3D184(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1B1E077D8(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1B1E3D12C()
{
  result = qword_1EB7835A8;
  if (!qword_1EB7835A8)
  {
    sub_1B1F19FF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7835A8);
  }

  return result;
}

unint64_t sub_1B1E3D184(uint64_t a1, uint64_t a2)
{
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  v4 = sub_1B1F1B7F0();

  return sub_1B1DEBF4C(a1, a2, v4);
}

uint64_t sub_1B1E3D1FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E48, &qword_1B1F2F1A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1E3D26C()
{
  qword_1ED84EE40 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_1B1E3D2A8(char *description, int a2, char a3, void *dso)
{
  if ((a3 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1ED84EE30 == -1)
        {
LABEL_5:
          v6 = qword_1ED84EE40;

          return _os_activity_create(dso, description, v6, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        swift_once();
        goto LABEL_5;
      }

LABEL_28:
      result = sub_1B1F1B100();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v8 = description + 1;
    goto LABEL_13;
  }

  v9 = (description & 0x3F) << 8;
  v10 = (description >> 6) + v9 + 33217;
  v11 = (v9 | (description >> 6) & 0x3F) << 8;
  v12 = (description >> 18) + ((v11 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v13 = (description >> 12) + v11 + 8487393;
  if (description >> 16)
  {
    v8 = v12;
  }

  else
  {
    v8 = v13;
  }

  if (description < 0x800)
  {
    v8 = v10;
  }

LABEL_13:
  *descriptiona = (v8 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v8) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1ED84EE30 != -1)
  {
    swift_once();
  }

  return _os_activity_create(dso, descriptiona, qword_1ED84EE40, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t WFLogActivity.Handle.deinit(uint64_t a1)
{
  OUTLINED_FUNCTION_0_14(a1);
  os_activity_scope_leave((v1 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t WFLogActivity.Handle.__deallocating_deinit(uint64_t a1)
{
  WFLogActivity.Handle.deinit(a1);

  return MEMORY[0x1EEE6BDC0](v1, 40, 7);
}

uint64_t sub_1B1E3D518(uint64_t a1)
{
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_0_14(a1);
  os_activity_scope_enter(v2, (v1 + 24));
  return swift_endAccess();
}

void *static WFLogActivity.begin(name:)(char *a1, int a2, char a3)
{
  v3 = sub_1B1E3D2A8(a1, a2, a3, &dword_1B1DE3000);
  type metadata accessor for WFLogActivity.Handle();
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v3;
  sub_1B1E3D518(v4);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for WFLogActivity(_BYTE *result, int a2, int a3)
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

uint64_t XPCEndpoint.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1F1B800();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E50, &qword_1B1F2F200);
    if (swift_dynamicCast())
    {
      v5 = swift_unknownObjectRetain();
      v6 = MEMORY[0x1B273FB80](v5);
      if (v6 == sub_1B1F1A560())
      {

        swift_unknownObjectRelease();
        *a2 = v10;
      }

      else
      {
        sub_1B1E3D7F8();
        swift_allocError();
        *v7 = 1;
        swift_willThrow();

        swift_unknownObjectRelease_n();
      }
    }

    else
    {
      sub_1B1E3D7F8();
      swift_allocError();
      *v8 = 0;
      swift_willThrow();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B1E3D7F8()
{
  result = qword_1EB784E58;
  if (!qword_1EB784E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E58);
  }

  return result;
}

uint64_t XPCEndpoint.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1F1B820();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E60, &qword_1B1F2F208);
  if (swift_dynamicCast())
  {

    v3 = *(v8 + 16);
    v4 = *(v8 + 24);
    *(v8 + 16) = v2;
    *(v8 + 24) = 0;
    v5 = *(v8 + 32);
    *(v8 + 32) = 7;
    swift_unknownObjectRetain();
    sub_1B1E177B0(v3, v4, v5);
  }

  else
  {
    sub_1B1E3D7F8();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }
}

uint64_t XPCEndpoint.description.getter()
{
  v1 = *v0;
  sub_1B1F1AFA0();

  v2 = MEMORY[0x1B273FA10](v1);
  v3 = sub_1B1F1A920();
  v5 = v4;
  MEMORY[0x1B273F720](v2, -1, -1);
  MEMORY[0x1B273D1A0](v3, v5);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0x646E65206370783CLL;
}

_BYTE *storeEnumTagSinglePayload for XPCEndpointCodingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B1E3DB58()
{
  result = qword_1EB784E68;
  if (!qword_1EB784E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E68);
  }

  return result;
}

uint64_t ProtobufUseCase.hashValue.getter()
{
  v1 = *v0;
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](v1);
  return sub_1B1F1B7F0();
}

uint64_t OnewayProtobufRepresentable.protobuf.getter()
{
  v2 = 0;
  OUTLINED_FUNCTION_3_9();
  return v0(&v2);
}

void OnewayProtobufRepresentable<>.protobufBytes(useCase:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_34();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_0();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  a13 = *v31;
  (*(v27 + 16))(&a13, v29, v27);
  if (!v23)
  {
    sub_1B1F1A3F0();
    (*(v34 + 8))(v37, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_35();
}

void ProtobufRepresentable.init(protobuf:)()
{
  OUTLINED_FUNCTION_34();
  v28 = v2;
  v29 = v0;
  v4 = v3;
  v6 = v5;
  v30 = v7;
  v31 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  OUTLINED_FUNCTION_5_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_11();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  (*(v11 + 16))(v14, v6, v9);
  if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) == 1)
  {
    v24 = *(v11 + 8);
    v24(v14, v9);
    type metadata accessor for ProtobufRepresentableError(0, AssociatedTypeWitness, v25, v26);
    swift_getWitnessTable();
    swift_allocError();
    *v27 = AssociatedTypeWitness;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v24(v6, v9);
  }

  else
  {
    (*(v16 + 32))(v23, v14, AssociatedTypeWitness);
    (*(v16 + 16))(v20, v23, AssociatedTypeWitness);
    (*(v4 + 16))(v20, v30, v4);
    (*(v11 + 8))(v6, v9);
    (*(v16 + 8))(v23, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_35();
}

void ProtobufRepresentable.init(optionalProtobuf:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v35 = v3;
  OUTLINED_FUNCTION_5_0();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v7;
  v36 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B1F1AEB0();
  OUTLINED_FUNCTION_5_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  OUTLINED_FUNCTION_5_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_11();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  (*(v12 + 16))(v15, v2, v10);
  if (__swift_getEnumTagSinglePayload(v15, 1, AssociatedTypeWitness) == 1)
  {
    v25 = *(v12 + 8);
    v25(v2, v10);
    v25(v15, v10);
    v26 = 1;
    v27 = v35;
    v28 = v36;
LABEL_6:
    __swift_storeEnumTagSinglePayload(v27, v26, 1, v28);
    goto LABEL_7;
  }

  v31 = v2;
  (*(v17 + 32))(v24, v15, AssociatedTypeWitness);
  (*(v17 + 16))(v21, v24, AssociatedTypeWitness);
  OUTLINED_FUNCTION_3_9();
  v28 = v36;
  v29(v21, v36);
  if (!v0)
  {
    (*(v12 + 8))(v31, v10);
    (*(v17 + 8))(v24, AssociatedTypeWitness);
    v27 = v35;
    (*(v32 + 32))(v35, v34, v28);
    v26 = 0;
    goto LABEL_6;
  }

  (*(v12 + 8))(v31, v10);
  (*(v17 + 8))(v24, AssociatedTypeWitness);
LABEL_7:
  OUTLINED_FUNCTION_35();
}

void ProtobufRepresentable<>.init(protobufBytes:compressionAlgorithm:)()
{
  OUTLINED_FUNCTION_34();
  v51 = v2;
  v52 = v1;
  v47 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v45 = v15;
  v53[5] = *MEMORY[0x1E69E9840];
  v16 = sub_1B1F1A3D0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v48 = v4;
  v46 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_11();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  if (v8)
  {
    v44 = v23;
    v27 = OUTLINED_FUNCTION_1_15();
    sub_1B1E0E714(v27, v28);
    v49 = v14;
    v50 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_1_15();
    v29 = sub_1B1F1A250();
    v53[0] = 0;
    v30 = [v29 decompressedDataUsingAlgorithm:v10 error:v53];

    v31 = v53[0];
    if (!v30)
    {
      v42 = v31;
      sub_1B1F1A1C0();

      swift_willThrow();
      v40 = OUTLINED_FUNCTION_1_15();
      goto LABEL_8;
    }

    v44 = v23;
    v49 = v14;
    v50 = v12;
    v32 = v30;
    sub_1B1F1A290();
  }

  memset(v53, 0, 40);
  v33 = OUTLINED_FUNCTION_1_15();
  sub_1B1E0E714(v33, v34);
  sub_1B1F1A3C0();
  OUTLINED_FUNCTION_1_15();
  v35 = v52;
  sub_1B1F1A3E0();
  if (!v35)
  {
    v36 = v44;
    (*(v19 + 16))(v44, v26, AssociatedTypeWitness);
    OUTLINED_FUNCTION_3_9();
    v37(v36, v46);
    (*(v19 + 8))(v26, AssociatedTypeWitness);
  }

  v38 = OUTLINED_FUNCTION_1_15();
  sub_1B1E03C48(v38, v39);
  v40 = v49;
  v41 = v50;
LABEL_8:
  sub_1B1E03C48(v40, v41);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E3E8B8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1B1E3E930(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1B1E3E980()
{
  result = qword_1EB784E80;
  if (!qword_1EB784E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784E80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProtobufUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B1E3EB00(uint64_t a1)
{
  swift_getMetatypeMetadata();
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1E3EB74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
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
      if (v11 >= 2)
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

  return (v5 | v10) + 255;
}

void sub_1B1E3EC98(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
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

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
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

_BYTE *storeEnumTagSinglePayload for ProtobufRepresentableEscapeHatchCoding(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B1E3EF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xEB00000000736E6FLL;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74694B6C6F6F74 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x80000001B1F390C0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B1F1B510();

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

unint64_t sub_1B1E3F074(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x74694B6C6F6F74;
      break;
    case 2:
      result = 0x6867696C746F7073;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E3F108(uint64_t a1)
{
  v2 = sub_1B1E3FCCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3F144(uint64_t a1)
{
  v2 = sub_1B1E3FCCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E3F188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E3EF08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E3F1B0(uint64_t a1)
{
  v2 = sub_1B1E3F998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3F1EC(uint64_t a1)
{
  v2 = sub_1B1E3F998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E3F228(uint64_t a1)
{
  v2 = sub_1B1E3FA50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3F264(uint64_t a1)
{
  v2 = sub_1B1E3FA50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E3F2A0(uint64_t a1)
{
  v2 = sub_1B1E3FAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3F2DC(uint64_t a1)
{
  v2 = sub_1B1E3FAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E3F318(uint64_t a1)
{
  v2 = sub_1B1E3FBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E3F354(uint64_t a1)
{
  v2 = sub_1B1E3FBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VoiceShortcutClientRequest.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v61 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E88, &qword_1B1F2F540);
  OUTLINED_FUNCTION_0();
  v59 = v5;
  v60 = v4;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_17();
  v58 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E90, &qword_1B1F2F548);
  OUTLINED_FUNCTION_0();
  v56 = v9;
  v57 = v8;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v55 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784E98, &qword_1B1F2F550);
  OUTLINED_FUNCTION_0();
  v53 = v13;
  v54 = v12;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17();
  v52 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784EA0, &qword_1B1F2F558);
  OUTLINED_FUNCTION_0();
  v50 = v17;
  v51 = v16;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  type metadata accessor for VoiceShortcutClientRequest.Automations(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_3();
  v24 = v23 - v22;
  type metadata accessor for VoiceShortcutClientRequest(0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_30_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784EA8, &qword_1B1F2F560);
  OUTLINED_FUNCTION_0();
  v62 = v27;
  v63 = v26;
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v28);
  v29 = v3[3];
  __swift_project_boxed_opaque_existential_0(v3, v29);
  sub_1B1E3F998();
  sub_1B1F1B830();
  sub_1B1E3F9EC(v61, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v42 = *v1;
      v43 = *(v1 + 8);
      v44 = *(v1 + 16);
      LOBYTE(v64) = 1;
      sub_1B1E3FBF4();
      v45 = v52;
      OUTLINED_FUNCTION_25_3(&type metadata for VoiceShortcutClientRequest.ToolKitCodingKeys, &v64);
      v64 = v42;
      v65 = v43;
      v66 = v44;
      sub_1B1E3FC48();
      v46 = v54;
      sub_1B1F1B2B0();
      (*(v53 + 8))(v45, v46);
      v47 = OUTLINED_FUNCTION_18_5();
      v48(v47, v20);
      sub_1B1E3FC9C(v42, v43, v44);
      break;
    case 2u:
      v31 = *v1;
      v32 = *(v1 + 8);
      v33 = *(v1 + 16);
      LOBYTE(v64) = 2;
      sub_1B1E3FAF8();
      v34 = v55;
      OUTLINED_FUNCTION_25_3(&type metadata for VoiceShortcutClientRequest.SpotlightCodingKeys, &v64);
      v64 = v31;
      v65 = v32;
      LOBYTE(v66) = v33;
      sub_1B1E3FB4C();
      v35 = v57;
      sub_1B1F1B2B0();
      (*(v56 + 8))(v34, v35);
      v36 = OUTLINED_FUNCTION_18_5();
      v37(v36, v20);
      sub_1B1E3FBA0(v31, v32, v33);
      break;
    case 3u:
      LOBYTE(v64) = 3;
      sub_1B1E3FA50();
      v38 = v58;
      OUTLINED_FUNCTION_34_0(&type metadata for VoiceShortcutClientRequest.DaemonConfigurationCodingKeys, &v64);
      sub_1B1E3FAA4();
      v39 = v60;
      sub_1B1F1B2B0();
      (*(v59 + 8))(v38, v39);
      goto LABEL_5;
    default:
      sub_1B1E42188(v1, v24, type metadata accessor for VoiceShortcutClientRequest.Automations);
      LOBYTE(v64) = 0;
      sub_1B1E3FCCC();
      OUTLINED_FUNCTION_34_0(&type metadata for VoiceShortcutClientRequest.AutomationsCodingKeys, &v64);
      sub_1B1E42290(&qword_1EB784EF0, &protocol conformance descriptor for VoiceShortcutClientRequest.Automations);
      v30 = v51;
      sub_1B1F1B2B0();
      (*(v50 + 8))(v20, v30);
      sub_1B1E3FD20(v24);
LABEL_5:
      v40 = OUTLINED_FUNCTION_18_5();
      v41(v40, v29);
      break;
  }

  OUTLINED_FUNCTION_35();
}

uint64_t type metadata accessor for VoiceShortcutClientRequest(uint64_t a1)
{
  result = qword_1EB784F98;
  if (!qword_1EB784F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B1E3F998()
{
  result = qword_1EB784EB0;
  if (!qword_1EB784EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EB0);
  }

  return result;
}

uint64_t sub_1B1E3F9EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceShortcutClientRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1E3FA50()
{
  result = qword_1EB784EB8;
  if (!qword_1EB784EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EB8);
  }

  return result;
}

unint64_t sub_1B1E3FAA4()
{
  result = qword_1EB784EC0;
  if (!qword_1EB784EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EC0);
  }

  return result;
}

unint64_t sub_1B1E3FAF8()
{
  result = qword_1EB784EC8;
  if (!qword_1EB784EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EC8);
  }

  return result;
}

unint64_t sub_1B1E3FB4C()
{
  result = qword_1EB784ED0;
  if (!qword_1EB784ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784ED0);
  }

  return result;
}

uint64_t sub_1B1E3FBA0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 != 1)
  {
    if (a3 >> 6)
    {
      return result;
    }
  }
}

unint64_t sub_1B1E3FBF4()
{
  result = qword_1EB784ED8;
  if (!qword_1EB784ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784ED8);
  }

  return result;
}

unint64_t sub_1B1E3FC48()
{
  result = qword_1EB784EE0;
  if (!qword_1EB784EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB784EE0);
  }

  return result;
}