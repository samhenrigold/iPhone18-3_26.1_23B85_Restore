void sub_231DC3E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[2];
  v8 = *(*v3 + 80);
  v9 = a3;
  v10 = *(v5 + 88);
  v11 = a1;
  v12 = a2;
  sub_231D72D34(sub_231DC3EB0, &v7, v6, v8, a3);
}

BOOL sub_231DC3ED8(uint64_t a1, uint64_t a2)
{
  v2 = sub_231E11F20();

  return v2 != 0;
}

uint64_t sub_231DC3F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_35();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_231DC3F88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_35();
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_231DC3FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_35();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_231DC4044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_35();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_231DC40A4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231DC3ED8(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_231DC410C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231DC3F20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231DC4138(uint64_t a1)
{
  OUTLINED_FUNCTION_1_28();
  swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_231DC417C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_28();
  swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1);
}

void sub_231DC41C0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v5 = *(*v1 + 80);
  v6 = *(v2 + 96);
  v7 = a1;
  sub_231D72D34(sub_231DC43B0, &v4, v3, v5, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_231DC4258(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a5;
  v13[1] = a1;
  type metadata accessor for CodableOSAllocatedUnfairLock.CodingKeys(255, a3, a4, a5);
  OUTLINED_FUNCTION_1_28();
  swift_getWitnessTable();
  v6 = sub_231E120A0();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_231E12270();
  sub_231E12090();
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_231DC43D0(void *a1)
{
  OUTLINED_FUNCTION_3_28();
  v2 = swift_allocObject();
  sub_231DC4418(a1);
  return v2;
}

void *sub_231DC4418(void *a1)
{
  v2 = v1;
  v25 = *v1;
  v4 = *(v25 + 80);
  v22 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v20 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v24 = &v20 - v7;
  v9 = *(v8 + 96);
  v21 = *(v8 + 88);
  type metadata accessor for CodableOSAllocatedUnfairLock.CodingKeys(255, v4, v21, v9);
  OUTLINED_FUNCTION_1_28();
  swift_getWitnessTable();
  sub_231E11FF0();
  OUTLINED_FUNCTION_1_0();
  v23 = v10;
  MEMORY[0x28223BE20](v11);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v12 = v26;
  sub_231E12260();
  if (v12)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v22;
    v14 = v24;
    sub_231E11FD0();
    v16 = v20;
    (*(v13 + 16))(v20, v14, v4);
    v17 = sub_231D71CB0(v16, v4);
    (*(v13 + 8))(v14, v4);
    v18 = OUTLINED_FUNCTION_4_23();
    v19(v18);
    v2[2] = v17;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_231DC4738()
{
  sub_231DC4718();
  OUTLINED_FUNCTION_3_28();

  return swift_deallocClassInstance();
}

uint64_t sub_231DC4764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_231DC43D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *sub_231DC481C(_BYTE *result, int a2, int a3)
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

uint64_t sub_231DC4964()
{
  v0 = sub_231E0FD90();
  MEMORY[0x28223BE20](v0 - 8);
  sub_231E10790();
  sub_231E107E0();
  sub_231E107A0();
  return sub_231E10ED0();
}

uint64_t sub_231DC4A38()
{
  v0 = sub_231E10E30();
  __swift_allocate_value_buffer(v0, qword_2814CE538);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_2_28();
  return sub_231E10E20();
}

uint64_t sub_231DC4AF0()
{
  v0 = sub_231E10E30();
  __swift_allocate_value_buffer(v0, qword_2814CE550);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_2_28();
  return sub_231E10E20();
}

uint64_t sub_231DC4B9C()
{
  v0 = sub_231E10E30();
  __swift_allocate_value_buffer(v0, qword_2814CE580);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_2_28();
  return sub_231E10E20();
}

uint64_t sub_231DC4D4C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_231E10E30();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v4, v5);
  return sub_231E10E20();
}

uint64_t sub_231DC4DF8()
{
  v0 = sub_231E10E30();
  __swift_allocate_value_buffer(v0, qword_2814CE568);
  OUTLINED_FUNCTION_7_23();
  return sub_231E10E20();
}

uint64_t sub_231DC5000(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  v11 = v10 - v9;
  v12 = sub_231E10DB0();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    OUTLINED_FUNCTION_8();
    swift_once();
  }

  v13 = OUTLINED_FUNCTION_7_23();
  (*(v7 + 16))(v11, v13, v5);
  return sub_231E10D90();
}

uint64_t sub_231DC514C(const char *a1, char a2)
{
  v4 = sub_231E10D80();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  sub_231E10DA0();
  sub_231E10D60();
  v11 = sub_231E10DA0();
  v12 = sub_231E11B80();
  result = sub_231E11BE0();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = sub_231E10D70();
      _os_signpost_emit_with_name_impl(&dword_231CAE000, v11, v12, v15, a1, " enableTelemetry=YES ", v14, 2u);
      MEMORY[0x23837E1D0](v14, -1, -1);
LABEL_10:

      v16 = OUTLINED_FUNCTION_8();
      v17(v16);
      sub_231E10DF0();
      swift_allocObject();
      v18 = sub_231E10DE0();
      (*(v6 + 8))(v10, v4);
      return v18;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v20;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_231DC5348(unint64_t a1, char a2, uint64_t a3)
{
  v4 = sub_231E10DC0();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v10 = v9 - v8;
  sub_231E10D80();
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_1();
  v12 = sub_231E10DA0();
  sub_231E10DD0();
  v20 = sub_231E11B70();
  result = sub_231E11BE0();
  if ((result & 1) == 0)
  {
LABEL_13:

    v18 = OUTLINED_FUNCTION_8();
    return v19(v18);
  }

  if ((a2 & 1) == 0)
  {
    v14 = a1;
    if (a1)
    {
LABEL_9:

      sub_231E10E00();

      if ((*(v6 + 88))(v10, v4) == *MEMORY[0x277D85B00])
      {
        v15 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v10, v4);
        v15 = " enableTelemetry=YES";
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_231E10D70();
      _os_signpost_emit_with_name_impl(&dword_231CAE000, v12, v20, v17, v14, v15, v16, 2u);
      MEMORY[0x23837E1D0](v16, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (HIDWORD(a1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      v14 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_231DC55B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x2822009F8](sub_231DC55E0, 0, 0);
}

uint64_t sub_231DC55E0()
{
  v1 = *(v0 + 40);
  *(v0 + 64) = sub_231DC514C(*(v0 + 24), *(v0 + 88));
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_231DC56EC;
  v3 = *(v0 + 16);

  return v5(v3);
}

uint64_t sub_231DC56EC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_231DC5868;
  }

  else
  {
    v2 = sub_231DC5800;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_231DC5800()
{
  OUTLINED_FUNCTION_9_18();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231DC5868()
{
  OUTLINED_FUNCTION_9_18();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231DC58D0(const char *a1, uint64_t a2, char a3, void (*a4)(void))
{
  v7 = sub_231DC514C(a1, a3);
  a4();
  sub_231DC5348(a1, a3, v7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return __swift_project_value_buffer(v0, v1);
}

uint64_t sub_231DC5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_231E0F950();
  v6[8] = v7;
  OUTLINED_FUNCTION_6(v7);
  v6[9] = v8;
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A78, &unk_231E1E3E0);
  v6[11] = swift_task_alloc();
  v9 = sub_231E10070();
  v6[12] = v9;
  OUTLINED_FUNCTION_6(v9);
  v6[13] = v10;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v11 = sub_231E10340();
  v6[17] = v11;
  OUTLINED_FUNCTION_6(v11);
  v6[18] = v12;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v13 = sub_231E10E30();
  v6[21] = v13;
  OUTLINED_FUNCTION_6(v13);
  v6[22] = v14;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231DC5C2C, 0, 0);
}

uint64_t sub_231DC5C2C()
{
  v105 = v0;
  if ((sub_231CE2244() & 1) == 0)
  {
    v2 = sub_231E102B0();
    if (v2 != 2 && (v2 & 1) != 0)
    {
      v1 = 45;
      goto LABEL_35;
    }

    v3 = sub_231E10250();
    if (v3 != 2 && (v3 & 1) != 0)
    {
      v4 = *(v0 + 192);
      v5 = *(v0 + 168);
      v6 = *(v0 + 176);
      v7 = *(v0 + 160);
      v8 = *(v0 + 136);
      v9 = *(v0 + 144);
      v10 = *(v0 + 56);
      v11 = sub_231DC4B64();
      (*(v6 + 16))(v4, v11, v5);
      (*(v9 + 16))(v7, v10, v8);

      v12 = sub_231E10E10();
      v13 = sub_231E11AF0();

      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 192);
      v16 = *(v0 + 168);
      v17 = *(v0 + 176);
      v18 = *(v0 + 160);
      v20 = *(v0 + 136);
      v19 = *(v0 + 144);
      if (v14)
      {
        v101 = *(v0 + 192);
        v21 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v21 = 136446466;
        v22 = sub_231DDB1E8();
        v99 = v16;
        v24 = sub_231CB5000(v22, v23, &v104);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2082;
        v25 = sub_231E10000();
        v27 = v26;
        (*(v19 + 8))(v18, v20);
        v28 = sub_231CB5000(v25, v27, &v104);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_231CAE000, v12, v13, "%{public}s VIP mail eligible for priority; Mail id: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v17 + 8))(v101, v99);
      }

      else
      {

        (*(v19 + 8))(v18, v20);
        (*(v17 + 8))(v15, v16);
      }

      goto LABEL_34;
    }

    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    sub_231E10110();
    if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
    {
      sub_231D163CC(*(v0 + 88));
    }

    else
    {
      v31 = *(v0 + 120);
      v33 = *(v0 + 96);
      v32 = *(v0 + 104);
      (*(v32 + 32))(*(v0 + 128), *(v0 + 88), v33);
      sub_231D16434(&qword_2814CB030, MEMORY[0x277D42250]);
      sub_231E11CC0();
      sub_231D16434(&qword_2814CB038, MEMORY[0x277D42248]);
      v34 = sub_231E115D0();
      v35 = *(v32 + 8);
      v35(v31, v33);
      if ((v34 & 1) == 0)
      {
        v100 = v35;
        v37 = *(v0 + 176);
        v36 = *(v0 + 184);
        v38 = *(v0 + 168);
        v39 = *(v0 + 144);
        v40 = *(v0 + 128);
        v95 = *(v0 + 136);
        v97 = *(v0 + 152);
        v42 = *(v0 + 104);
        v41 = *(v0 + 112);
        v43 = *(v0 + 96);
        v93 = *(v0 + 56);
        v44 = sub_231DC4B64();
        (*(v37 + 16))(v36, v44, v38);
        (*(v42 + 16))(v41, v40, v43);
        (*(v39 + 16))(v97, v93, v95);

        v45 = sub_231E10E10();
        v46 = sub_231E11AF0();

        v47 = os_log_type_enabled(v45, v46);
        v49 = *(v0 + 176);
        v48 = *(v0 + 184);
        v50 = *(v0 + 168);
        v51 = *(v0 + 144);
        v52 = *(v0 + 152);
        v98 = *(v0 + 136);
        v53 = *(v0 + 112);
        v54 = *(v0 + 96);
        if (v47)
        {
          v96 = *(v0 + 184);
          v92 = v46;
          v55 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          *v55 = 136446722;
          v56 = sub_231DDB1E8();
          v94 = v50;
          v58 = sub_231CB5000(v56, v57, &v104);

          *(v55 + 4) = v58;
          *(v55 + 12) = 2082;
          v59 = sub_231E10040();
          v61 = v60;
          v100(v53, v54);
          v62 = sub_231CB5000(v59, v61, &v104);

          *(v55 + 14) = v62;
          *(v55 + 22) = 2082;
          v63 = sub_231E10000();
          v65 = v64;
          (*(v51 + 8))(v52, v98);
          v66 = sub_231CB5000(v63, v65, &v104);

          *(v55 + 24) = v66;
          _os_log_impl(&dword_231CAE000, v45, v92, "%{public}s Mail has categories: %{public}s; id: %{public}s", v55, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_30();
          v67 = v100;
          OUTLINED_FUNCTION_30();

          (*(v49 + 8))(v96, v94);
        }

        else
        {

          (*(v51 + 8))(v52, v98);
          v67 = v100;
          v100(v53, v54);
          (*(v49 + 8))(v48, v50);
        }

        sub_231E10020();
        OUTLINED_FUNCTION_90_0();
        v68 = sub_231E11C90();
        v69 = OUTLINED_FUNCTION_90_0();
        v67(v69);
        sub_231E10050();
        OUTLINED_FUNCTION_90_0();
        v70 = sub_231E11C90();
        v71 = OUTLINED_FUNCTION_90_0();
        v67(v71);
        sub_231E10030();
        OUTLINED_FUNCTION_90_0();
        v72 = sub_231E11C90();
        v73 = OUTLINED_FUNCTION_90_0();
        v67(v73);
        if ((v70 & 1) == 0 && (v68 & v72 & 1) == 0)
        {
          (v67)(*(v0 + 128), *(v0 + 96));
          v1 = 29;
          goto LABEL_35;
        }

        __swift_project_boxed_opaque_existential_0(*(v0 + 40), *(*(v0 + 40) + 24));
        v74 = OUTLINED_FUNCTION_25();
        if (v75(v74) & 1) != 0 || (__swift_project_boxed_opaque_existential_0(*(v0 + 32), *(*(v0 + 32) + 24)), v76 = OUTLINED_FUNCTION_25(), (v77(v76)))
        {
          (v67)(*(v0 + 128), *(v0 + 96));
        }

        else
        {
          sub_231D70008();

          v90 = sub_231D70048();

          v91 = OUTLINED_FUNCTION_25();
          v67(v91);
          if ((v90 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_27;
      }

      v35(*(v0 + 128), *(v0 + 96));
    }

    v1 = 38;
    goto LABEL_35;
  }

  if (sub_231D56880(0, *(v0 + 48)))
  {
LABEL_3:
    v1 = 41;
    goto LABEL_35;
  }

LABEL_27:
  v78 = *(v0 + 24);
  v1 = 0;
  if ((sub_231CE2244() & 1) == 0 || !v78)
  {
LABEL_35:
    v103 = v1;
    OUTLINED_FUNCTION_2_29();
    v88 = v87;

    v89 = *(v0 + 8);

    return v89(v103, 0, v88);
  }

  v79 = *(v0 + 24);

  v80 = sub_231E10140();
  *(v0 + 200) = v81;
  if (!v81)
  {

LABEL_34:
    v1 = 0;
    goto LABEL_35;
  }

  v82 = v80;
  v83 = v81;
  sub_231DB0818(v80);
  v102 = (*(*v79 + 136) + **(*v79 + 136));
  v84 = swift_task_alloc();
  *(v0 + 208) = v84;
  *v84 = v0;
  v84[1] = sub_231DC6590;
  v85 = *(v0 + 80);

  return v102(v82, v83, v85, 0);
}

uint64_t sub_231DC6590(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  *(v4 + 216) = a1;
  *(v4 + 224) = a2;
  *(v4 + 232) = a3;

  v5 = OUTLINED_FUNCTION_25();
  v6(v5);

  return MEMORY[0x2822009F8](sub_231DC670C, 0, 0);
}

uint64_t sub_231DC670C()
{

  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  OUTLINED_FUNCTION_2_29();
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2(v4, v5, v1);
}

uint64_t sub_231DC67E8()
{
  v0 = swift_allocObject();
  sub_231E112C0();
  swift_allocObject();
  *(v0 + 16) = sub_231E112B0();
  return v0;
}

uint64_t sub_231DC683C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v2 = OUTLINED_FUNCTION_47(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - v3;
  v5 = sub_231E119F0();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_231CC3BE0(0, 0, v4, &unk_231E20060, v6);
}

uint64_t sub_231DC691C()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v2 = sub_231E11260();
  v0[3] = v2;
  OUTLINED_FUNCTION_6(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_55();
  v4 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231DC69C0()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  (*(v2 + 104))(v1, *MEMORY[0x277D4B168], v3);
  sub_231E112A0();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_231DC6A74()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231CBFF60;

  return sub_231DC691C();
}

uint64_t sub_231DC6B04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_24(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v7);
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v8 = sub_231E10F20();
  v0[35] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[36] = v9;
  v0[37] = OUTLINED_FUNCTION_55();
  v10 = sub_231E11050();
  v0[38] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[39] = v11;
  v0[40] = OUTLINED_FUNCTION_55();
  v12 = sub_231E10F70();
  v0[41] = v12;
  OUTLINED_FUNCTION_6(v12);
  v0[42] = v13;
  v0[43] = OUTLINED_FUNCTION_55();
  v14 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231DC6C80()
{
  OUTLINED_FUNCTION_10_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
  v1 = sub_231E10400();
  OUTLINED_FUNCTION_6(v1);
  v2 = OUTLINED_FUNCTION_16_13();
  *(v2 + 16) = xmmword_231E138E0;
  sub_231E100E0();
  v3 = sub_231E10150();
  sub_231DC7B54(v3);
  sub_231E090CC(v2);
  OUTLINED_FUNCTION_19_12();
  sub_231CD1550(v4, v5, v6);

  sub_231E10F10();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 352) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_3_30(v7);

  return MEMORY[0x2821AB750](v9);
}

uint64_t sub_231DC6DFC()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 360) = v0;

  (*(v2[36] + 8))(v2[37], v2[35]);
  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DC6F50()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v12 = *(v0 + 328);
  __dst = *(v0 + 216);
  sub_231E11040();
  v9 = v8;
  sub_231E11030();
  sub_231CE1054(v7, v6, &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  sub_231CD28C8((v0 + 120), (v0 + 16), v9);
  sub_231CE1118(v7, &qword_27DD74530, &qword_231E17080);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v12);
  memcpy(__dst, (v0 + 16), 0x68uLL);

  OUTLINED_FUNCTION_19();

  return v10();
}

uint64_t sub_231DC70B8()
{
  OUTLINED_FUNCTION_50_0();
  (*(v0[42] + 8))(v0[43], v0[41]);

  OUTLINED_FUNCTION_19();

  return v1();
}

uint64_t sub_231DC7168()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_24(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v7);
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v8 = sub_231E10FB0();
  v0[35] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[36] = v9;
  v0[37] = OUTLINED_FUNCTION_55();
  v10 = sub_231E11050();
  v0[38] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[39] = v11;
  v0[40] = OUTLINED_FUNCTION_55();
  v12 = sub_231E11020();
  v0[41] = v12;
  OUTLINED_FUNCTION_6(v12);
  v0[42] = v13;
  v0[43] = OUTLINED_FUNCTION_55();
  v14 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231DC72E4()
{
  OUTLINED_FUNCTION_10_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
  v1 = sub_231E10400();
  OUTLINED_FUNCTION_6(v1);
  v2 = OUTLINED_FUNCTION_16_13();
  *(v2 + 16) = xmmword_231E138E0;
  sub_231E104F0();
  v3 = sub_231E10590();
  sub_231DC7B54(v3);
  sub_231E090CC(v2);
  OUTLINED_FUNCTION_19_12();
  sub_231DC2418(v4, v5, v6);

  sub_231E10FA0();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 352) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_3_30(v7);

  return MEMORY[0x2821AB758](v9);
}

uint64_t sub_231DC7460()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 360) = v0;

  (*(v2[36] + 8))(v2[37], v2[35]);
  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231DC75B4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_24(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v7);
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v8 = sub_231E110E0();
  v0[35] = v8;
  OUTLINED_FUNCTION_6(v8);
  v0[36] = v9;
  v0[37] = OUTLINED_FUNCTION_55();
  v10 = sub_231E11050();
  v0[38] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[39] = v11;
  v0[40] = OUTLINED_FUNCTION_55();
  v12 = sub_231E11110();
  v0[41] = v12;
  OUTLINED_FUNCTION_6(v12);
  v0[42] = v13;
  v0[43] = OUTLINED_FUNCTION_55();
  v14 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_231DC7730()
{
  v1 = v0[43];
  v2 = v0[31];
  type metadata accessor for GenerativeModelsHandleResolver();
  v3 = sub_231E10930();
  v4 = sub_231E10970();
  sub_231DC7B54(v4);
  v5 = sub_231E090CC(v3);
  sub_231DF2E4C(v5, v2, v1);

  sub_231E110D0();
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  v0[44] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_3_30(v6);

  return MEMORY[0x2821AB760](v8);
}

uint64_t sub_231DC7890()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_2_30(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_1_30(v2);

  return sub_231DC6B04();
}

uint64_t sub_231DC7928()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;

  if (!v0)
  {
    memcpy(*(v3 + 120), (v3 + 16), 0x68uLL);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_231DC7A24()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_2_30(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_1_30(v2);

  return sub_231DC75B4();
}

uint64_t sub_231DC7ABC()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_2_30(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_1_30(v2);

  return sub_231DC7168();
}

uint64_t sub_231DC7B54(uint64_t a1)
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

  sub_231DC7C78(result, 1);
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
  result = sub_231E10400();
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

void *sub_231DC7C78(int64_t a1, char a2)
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

    result = sub_231CFDF64(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_21()
{

  return type metadata accessor for GenerativeModelsHandleResolver();
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return swift_allocObject();
}

uint64_t sub_231DC7D98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_231DC7DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = sub_231E0F950();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231DC7E6C, 0, 0);
}

uint64_t sub_231DC7E6C()
{
  if (sub_231D2CF78(1, v0[4], sub_231D2D37C, &type metadata for SummarizationManager.Option, sub_231D2D3D0))
  {
    goto LABEL_15;
  }

  v1 = sub_231E10B40();
  v3 = v2;
  v0[9] = v2;
  if (!v2)
  {
    goto LABEL_15;
  }

  v4 = v1;
  sub_231DAA834(v1, v2);
  v6 = v5;
  type metadata accessor for AssetManager();
  sub_231D45490();
  v8 = sub_231D2CF78(v6, v7, sub_231D2D2D4, &type metadata for AppCategoryID, sub_231D2D328);

  if (v8)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_231D45834();
  v10 = sub_231D24924(v4, v3, v9);

  if (v10)
  {
LABEL_15:

    v20 = OUTLINED_FUNCTION_0_20();

    return v21(v20);
  }

  v11 = v0[2];
  if (*v11 < 2)
  {
    goto LABEL_14;
  }

  v12 = sub_231DC3C70(v11[1]);
  result = sub_231DC3C70(v11[2]);
  v14 = __OFADD__(v12, result);
  v15 = v12 + result;
  if (v14)
  {
    __break(1u);
    goto LABEL_22;
  }

  result = sub_231DC3C70(*(v0[2] + 24));
  v14 = __OFADD__(v15, result);
  v16 = v15 + result;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = sub_231DC3C70(*(v0[2] + 32));
  v17 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = sub_231CC8B48();
  if (v19)
  {
    v18 = sub_231D117E8();
  }

  if (v17 < v18)
  {
    goto LABEL_14;
  }

  v22 = v0[3];
  sub_231DB0818(v18);
  v25 = (*(*v22 + 136) + **(*v22 + 136));
  v23 = swift_task_alloc();
  v0[10] = v23;
  *v23 = v0;
  v23[1] = sub_231D2CDFC;
  v24 = v0[8];

  return v25(v4, v3, v24, 0);
}

uint64_t sub_231DC81C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 48) = *(a1 + 32);
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  *v9 = v4;
  v9[1] = sub_231DC8284;

  return sub_231DC7DA8(v4 + 16, v8, a3, a4);
}

uint64_t sub_231DC8284()
{
  OUTLINED_FUNCTION_1_15();

  v0 = OUTLINED_FUNCTION_0_20();

  return v1(v0);
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

uint64_t sub_231DC838C(uint64_t a1, int a2)
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

uint64_t sub_231DC83CC(uint64_t result, int a2, int a3)
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

uint64_t sub_231DC8424()
{
  type metadata accessor for BundleIdRedactor();
  v0 = swift_allocObject();
  result = sub_231DC89BC();
  qword_2814CE640 = v0;
  return result;
}

uint64_t sub_231DC8460()
{
  v0 = swift_allocObject();
  sub_231DC89BC();
  return v0;
}

uint64_t *sub_231DC8498()
{
  if (qword_2814CD6C0 != -1)
  {
    OUTLINED_FUNCTION_4_25(&qword_2814CD6C0);
  }

  return &qword_2814CE640;
}

unint64_t sub_231DC84D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_231E11F20();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_231DC8524(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ELL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231DC85B4(char a1, char a2)
{
  v3 = 0xD000000000000020;
  v4 = "classificationClient";
  v5 = "classificationClient";
  switch(a1)
  {
    case 1:
      v5 = ".lastRolloverDay";
      v3 = 0xD00000000000001ELL;
      break;
    case 2:
      v5 = "BundleIdRedactor.seenBundleIds";
      v3 = 0xD000000000000015;
      break;
    case 3:
      v5 = "BundleIdRedactor.salt";
      v3 = 0xD000000000000029;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000020;
  switch(a2)
  {
    case 1:
      v4 = ".lastRolloverDay";
      v6 = 0xD00000000000001ELL;
      break;
    case 2:
      v4 = "BundleIdRedactor.seenBundleIds";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "BundleIdRedactor.salt";
      v6 = 0xD000000000000029;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_231E12100();
  }

  return v8 & 1;
}

uint64_t sub_231DC86F0(uint64_t a1)
{
  v1 = a1;
  sub_231E12220();
  sub_231DC8740(v3, v1);
  return sub_231E12250();
}

uint64_t sub_231DC8740(uint64_t a1, char a2)
{
  sub_231E116E0();
}

uint64_t sub_231DC87FC(uint64_t a1, char a2)
{
  sub_231E12220();
  sub_231DC8740(v4, a2);
  return sub_231E12250();
}

unint64_t sub_231DC8840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231DC84D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_231DC8870@<X0>(unint64_t *a1@<X8>)
{
  result = sub_231DC8524(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_231DC88AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (a3 != 1)
  {
    switch(a1)
    {
      case 1:
        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (a6 != 2 || a4 != 4)
        {
          return 0;
        }

        break;
      case 5:
        if (a6 != 2 || a4 != 5)
        {
          return 0;
        }

        break;
      default:
        return a6 == 2 && !(a5 | a4);
    }

    return !a5;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_11:
  if (a1 != a4 || a2 != a5)
  {
    return sub_231E12100();
  }

  return 1;
}

uint64_t sub_231DC89BC()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  *(v0 + 16) = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD753E0, &unk_231E201B8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_231DC8A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_1();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231E138E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_231E0F920();
  OUTLINED_FUNCTION_83();
  v12 = sub_231DC8B8C();
  swift_setDeallocating();
  sub_231D51CD0();
  (*(v6 + 8))(v10, v4);
  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 12324;
  }

  return v13;
}

uint64_t sub_231DC8B8C()
{
  v0 = sub_231DC8D2C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_231CC686C(0, v1, 0);
    v2 = v16;
    v3 = (v0 + 48);
    do
    {
      v5 = *(v3 - 2);
      v4 = *(v3 - 1);
      if (*v3)
      {
        if (*v3 == 1)
        {
          v6 = OUTLINED_FUNCTION_83();
          sub_231DCA534(v6, v7, 1u);
          v8 = OUTLINED_FUNCTION_83();
          MEMORY[0x23837CC20](v8);
          v9 = OUTLINED_FUNCTION_83();
          sub_231DCA54C(v9, v10, 1u);
          v11 = 2962724;
          v4 = 0xE300000000000000;
        }

        else
        {
          v4 = 0xE200000000000000;
          v11 = 12324;
          switch(v5)
          {
            case 1:
              v11 = 12580;
              break;
            case 2:
              v11 = 12836;
              break;
            case 3:
              v11 = 13092;
              break;
            case 4:
              v11 = 13348;
              break;
            case 5:
              v11 = 13860;
              break;
            default:
              break;
          }
        }
      }

      else
      {

        v11 = v5;
      }

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_231CC686C((v12 > 1), v13 + 1, 1);
      }

      v3 += 24;
      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v4;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_231DC8D2C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_231DCAA28(v2, &v4);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_231DC8DA0(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = a5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v33 = a3;
    v35 = a4;
    v39 = MEMORY[0x277D84F90];
    v10 = sub_231DCA584(0, v7, 0);
    v11 = v39;
    v12 = (a1 + 40);
    v36 = a2;
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *a2;
      v38[0] = v13;
      v38[1] = v14;
      MEMORY[0x28223BE20](v10);
      v32[2] = v38;

      v16 = v6;
      v17 = sub_231D162D0(sub_231D163AC, v32, v15);
      v37 = v16;

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v19 = *(*a2 + 16);
        if (v19 >= sub_231D127A0())
        {
          v23 = v35;
          if (v35 >> 60 == 15)
          {

            v14 = 0;
            v18 = 2;
            v13 = 4;
          }

          else
          {
            v24 = v33;
            sub_231CF4400(v33, v35);
            v13 = sub_231DCA0FC(v13, v14, v24, v23);
            v26 = v25;
            v18 = v27;
            sub_231CF4340(v24, v23);

            v14 = v26;
          }
        }

        else
        {

          sub_231DCA4A8();
          v20 = *(*a2 + 16);
          v10 = sub_231DCA4F4(v20);
          v18 = 0;
          v21 = *a2;
          *(v21 + 16) = v20 + 1;
          v22 = v21 + 16 * v20;
          *(v22 + 32) = v13;
          *(v22 + 40) = v14;
        }
      }

      v39 = v11;
      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      if (v29 >= v28 >> 1)
      {
        v10 = sub_231DCA584((v28 > 1), v29 + 1, 1);
        v11 = v39;
      }

      *(v11 + 16) = v29 + 1;
      v30 = v11 + 24 * v29;
      *(v30 + 32) = v13;
      *(v30 + 40) = v14;
      *(v30 + 48) = v18;
      v12 += 2;
      --v7;
      a2 = v36;
      v6 = v37;
    }

    while (v7);
    sub_231CF4340(v33, v35);
  }

  else
  {
    sub_231CF4340(a3, a4);
    v11 = MEMORY[0x277D84F90];
  }

  return v11;
}

void sub_231DC9010(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v166 = a3;
  v157 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v156 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v155 = v11 - v10;
  v161 = sub_231E0F570();
  OUTLINED_FUNCTION_24();
  v160 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v159 = v15 - v14;
  sub_231E0FA10();
  OUTLINED_FUNCTION_24();
  v172 = v17;
  v173.n128_u64[0] = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_1();
  v168 = (v19 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75400, &unk_231E20378);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v153 - v21;
  v23 = sub_231E0FA70();
  OUTLINED_FUNCTION_24();
  v167 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_1();
  v28 = v27 - v26;
  v171 = sub_231E0FA20();
  OUTLINED_FUNCTION_24();
  v170 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_1();
  v174 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v158 = &v153 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v153 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v153 - v39;
  *&v178 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v176 = v41;
  v43 = MEMORY[0x28223BE20](v42);
  v44 = MEMORY[0x28223BE20](v43);
  v169 = &v153 - v45;
  MEMORY[0x28223BE20](v44);
  v175 = &v153 - v47;
  v162 = a1;
  v48 = *(a1 + 16);
  if (!v48)
  {
    v63 = *(a2 + 16);
    v64 = MEMORY[0x277D84F90];
    if (v63)
    {
      v65 = a4;
      OUTLINED_FUNCTION_2_31(MEMORY[0x277D84F90]);
      v64 = v183;
      v66 = *(v183 + 16);
      v67 = 24 * v66;
      v68 = xmmword_231E201A0;
      do
      {
        v183 = v64;
        v69 = v66 + 1;
        if (v66 >= *(v64 + 24) >> 1)
        {
          v71 = OUTLINED_FUNCTION_5_27();
          v178 = v72;
          sub_231DCA584(v71, v73, v74);
          v68 = v178;
          v64 = v183;
        }

        *(v64 + 16) = v69;
        v70 = v64 + v67;
        *(v70 + 32) = v68;
        *(v70 + 48) = 2;
        v67 += 24;
        v66 = v69;
        --v63;
      }

      while (v63);
      a4 = v65;
    }

    *a4 = v64;
    return;
  }

  v154 = v46;
  v163 = a2;
  v164 = a4;
  v165 = v4;
  v49 = v48;
  v50 = sub_231E115F0();
  v177 = v49;
  v51 = [v49 BOOLForKey_];

  if ((v51 & 1) == 0 && [objc_opt_self() isInternalBuild])
  {
    v52 = v163;
    v53 = *(v163 + 16);
    if (v53)
    {
      OUTLINED_FUNCTION_2_31(MEMORY[0x277D84F90]);
      v54 = v183;
      v55 = (v52 + 40);
      do
      {
        v57 = *(v55 - 1);
        v56 = *v55;
        v183 = v54;
        v59 = *(v54 + 16);
        v58 = *(v54 + 24);

        if (v59 >= v58 >> 1)
        {
          sub_231DCA584((v58 > 1), v59 + 1, 1);
          v54 = v183;
        }

        *(v54 + 16) = v59 + 1;
        v60 = v54 + 24 * v59;
        *(v60 + 32) = v57;
        *(v60 + 40) = v56;
        *(v60 + 48) = 0;
        v55 += 2;
        --v53;
      }

      while (v53);

      goto LABEL_48;
    }

LABEL_47:
    v54 = MEMORY[0x277D84F90];
LABEL_48:
    *v164 = v54;
    return;
  }

  v153 = "classificationClient";
  v61 = sub_231E115F0();
  v62 = [v177 objectForKey_];

  if (v62)
  {
    sub_231E11C80();
    swift_unknownObjectRelease();
  }

  else
  {
    v181 = 0u;
    v182 = 0u;
  }

  v75 = v178;
  v76 = v175;
  OUTLINED_FUNCTION_0_15();
  if (!v77)
  {
    sub_231CE1118(&v183, &dword_27DD741E0, &qword_231E15D70);
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v75);
LABEL_24:
    sub_231E0F890();
    if (__swift_getEnumTagSinglePayload(v40, 1, v75) != 1)
    {
      sub_231CE1118(v40, &dword_27DD74AD0, &qword_231E16C40);
    }

    goto LABEL_26;
  }

  v78 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v40, v78 ^ 1u, 1, v75);
  if (__swift_getEnumTagSinglePayload(v40, 1, v75) == 1)
  {
    goto LABEL_24;
  }

  (*(v176 + 32))(v76, v40, v75);
LABEL_26:
  v79 = v174;
  sub_231E0F9F0();
  sub_231E0FA60();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
  {
    (*(v167 + 32))(v28, v22, v23);
    v54 = v79;
    sub_231E0FA00();
    v80 = v172;
    v81 = *(v172 + 104);
    v82 = v168;
    LODWORD(v167) = *MEMORY[0x277CC9968];
    v83 = v173.n128_u64[0];
    v81(v168);
    sub_231E0F9E0();
    (*(v80 + 8))(v82, v83);
    v84 = v178;
    if (__swift_getEnumTagSinglePayload(v38, 1, v178) == 1)
    {
      sub_231CE1118(v38, &dword_27DD74AD0, &qword_231E16C40);
      if (*(v163 + 16))
      {
        OUTLINED_FUNCTION_2_31(MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_13_17();
        do
        {
          OUTLINED_FUNCTION_11_19();
          if (v86)
          {
            v88 = OUTLINED_FUNCTION_5_27();
            v173 = v89;
            sub_231DCA584(v88, v90, v91);
            v85 = v173;
            v54 = v183;
          }

          OUTLINED_FUNCTION_6_21(v85);
        }

        while (!v87);

        OUTLINED_FUNCTION_3_31();
        v107(v79, v171);
        (*(v176 + 8))(v175, v178);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_3_31();
      v110(v79, v171);
      (*(v176 + 8))(v76, v178);
      goto LABEL_47;
    }

    v92 = *(v176 + 32);
    v93 = OUTLINED_FUNCTION_174_2();
    v92(v93);
    if (sub_231E0F8D0())
    {
      v168 = v92;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75408, &qword_231E20388);
      v94 = *(v172 + 72);
      v95 = (*(v172 + 80) + 32) & ~*(v172 + 80);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_231E1D9C0;
      v97 = v96 + v95;
      v98 = v173.n128_u64[0];
      (v81)(v97, *MEMORY[0x277CC9988], v173.n128_u64[0]);
      (v81)(v97 + v94, *MEMORY[0x277CC9998], v98);
      (v81)(v97 + 2 * v94, v167, v98);
      sub_231DCA6B8(v96);
      v99 = v159;
      v54 = v174;
      sub_231E0F9C0();

      v100 = v158;
      sub_231E0F9D0();
      (*(v160 + 8))(v99, v161);
      if (__swift_getEnumTagSinglePayload(v100, 1, v84) == 1)
      {
        sub_231CE1118(v100, &dword_27DD74AD0, &qword_231E16C40);
        if (*(v163 + 16))
        {
          OUTLINED_FUNCTION_2_31(MEMORY[0x277D84F90]);
          OUTLINED_FUNCTION_13_17();
          v101 = v174;
          do
          {
            OUTLINED_FUNCTION_11_19();
            if (v86)
            {
              v103 = OUTLINED_FUNCTION_5_27();
              v173 = v104;
              sub_231DCA584(v103, v105, v106);
              v102 = v173;
              v54 = v183;
            }

            OUTLINED_FUNCTION_6_21(v102);
          }

          while (!v87);

          v148 = *(v176 + 8);
          v149 = v178;
          v148(v169, v178);
          OUTLINED_FUNCTION_3_31();
          v150(v101, v171);
          v148(v175, v149);
        }

        else
        {

          v151 = OUTLINED_FUNCTION_7_24();
          MEMORY[0](v151);
          OUTLINED_FUNCTION_3_31();
          v152(v174, v171);
          MEMORY[0](v175, v54);
          v54 = MEMORY[0x277D84F90];
        }

        goto LABEL_48;
      }

      (v168)(v154, v100, v84);
      v111 = sub_231DC4E70();
      v112 = v156;
      v113 = v155;
      v114 = v157;
      (*(v156 + 16))(v155, v111, v157);
      v115 = sub_231E10E10();
      v116 = sub_231E11AF0();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        MEMORY[0x23837E1D0](v117, -1, -1);
      }

      (*(v112 + 8))(v113, v114);
      v118 = sub_231E115F0();
      v119 = v177;
      [v177 removeObjectForKey_];

      v120 = sub_231E115F0();
      [v119 removeObjectForKey_];

      v121 = v154;
      v122 = sub_231E0F8C0();
      v123 = sub_231E115F0();
      v109 = &selRef_notificationSourceWithIdentifier_;
      [v119 setObject:v122 forKey:v123];

      (*(v176 + 8))(v121, v84);
      v108 = v163;
    }

    else
    {
      v108 = v163;
      v109 = &selRef_notificationSourceWithIdentifier_;
    }

    v124 = OUTLINED_FUNCTION_14_14();
    v125 = [v177 objectForKey_];

    if (v125)
    {
      sub_231E11C80();
      swift_unknownObjectRelease();
    }

    else
    {
      v181 = 0u;
      v182 = 0u;
    }

    OUTLINED_FUNCTION_0_15();
    if (v126)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
      if (swift_dynamicCast())
      {
        v127 = v179;
        goto LABEL_60;
      }
    }

    else
    {
      sub_231CE1118(&v183, &dword_27DD741E0, &qword_231E15D70);
    }

    v127 = MEMORY[0x277D84F90];
LABEL_60:
    v184 = v127;
    v128 = sub_231E115F0();
    v129 = [v177 objectForKey_];

    if (v129)
    {
      sub_231E11C80();
      swift_unknownObjectRelease();
    }

    else
    {
      v181 = 0u;
      v182 = 0u;
    }

    OUTLINED_FUNCTION_0_15();
    if (v130)
    {
      if (swift_dynamicCast())
      {
        v131 = v179;
        v132 = v180;
LABEL_70:
        v137 = OUTLINED_FUNCTION_174_2();
        sub_231D26DF0(v137, v138);
        v139 = v162;

        v140 = sub_231DC8DA0(v108, &v184, v131, v132, v139);
        v141 = sub_231E11850();
        v142 = OUTLINED_FUNCTION_14_14();
        v143 = v177;
        [v177 v109[90]];

        v144 = OUTLINED_FUNCTION_174_2();
        sub_231CF4340(v144, v145);

        v146 = OUTLINED_FUNCTION_7_24();
        (v142)(v146);
        OUTLINED_FUNCTION_3_31();
        v147(v174, v171);
        (v142)(v175, v131);

        *v164 = v140;
        return;
      }
    }

    else
    {
      sub_231CE1118(&v183, &dword_27DD741E0, &qword_231E15D70);
    }

    v133 = sub_231E118B0();
    *(v133 + 16) = 32;
    *(v133 + 32) = 0u;
    *(v133 + 48) = 0u;
    if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, (v133 + 32)))
    {

      v131 = 0;
      v132 = 0xF000000000000000;
    }

    else
    {
      v131 = sub_231D26D40(v133 + 32, *(v133 + 16));
      v132 = v134;

      OUTLINED_FUNCTION_174_2();
      v135 = sub_231E0F820();
      v136 = sub_231E115F0();
      [v177 v109[90]];
    }

    goto LABEL_70;
  }

  __break(1u);
}

uint64_t sub_231DCA0FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v40 = *v5;
  sub_231E114D0();
  OUTLINED_FUNCTION_24();
  v43 = v9;
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  v12 = v11 - v10;
  sub_231E11500();
  OUTLINED_FUNCTION_24();
  v41 = v14;
  v42 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v17 = v16 - v15;
  v18 = sub_231E11670();
  OUTLINED_FUNCTION_24();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  v24 = v23 - v22;
  sub_231E11660();
  sub_231E11630();
  v26 = v25;
  (*(v20 + 8))(v24, v18);
  if (v26 >> 60 == 15)
  {
    return 5;
  }

  sub_231E114F0();
  v28 = OUTLINED_FUNCTION_116_3();
  sub_231CF4400(v28, v29);
  v30 = OUTLINED_FUNCTION_116_3();
  sub_231D27708(v30, v31, v17);
  v32 = OUTLINED_FUNCTION_116_3();
  sub_231CF4340(v32, v33);
  sub_231CF4400(a3, a4);
  sub_231D27708(a3, a4, v17);
  sub_231CF4354(a3, a4);
  v34 = sub_231E114E0();
  MEMORY[0x28223BE20](v34);
  *(&v40 - 2) = v40;
  sub_231E114C0();
  v35 = v45;
  v36 = v46;
  v27 = sub_231E0F830();
  sub_231CF4354(v35, v36);
  v37 = OUTLINED_FUNCTION_116_3();
  sub_231CF4340(v37, v38);
  (*(v43 + 8))(v12, v44);
  (*(v41 + 8))(v17, v42);
  return v27;
}

uint64_t sub_231DCA43C()
{
  sub_231DCA414();

  return swift_deallocClassInstance();
}

void *sub_231DCA470(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

char *sub_231DCA4A8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231CE0B9C(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_231DCA4F4(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_231CE0B9C((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

double sub_231DCA534(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_231DCA54C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

char *sub_231DCA584(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_231DCA5A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_231DCA5A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75418, qword_231E203A0);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
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

uint64_t sub_231DCA6B8(uint64_t a1)
{
  v2 = sub_231E0FA10();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75410, &unk_231E20390);
  result = sub_231E11D50();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_231DCACCC(&qword_2814CBC48, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v14 = sub_231E11550();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_231DCACCC(&qword_2814CBC40, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
      v21 = sub_231E115D0();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *sub_231DCA9FC@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_231DCA470(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_231DCAA48()
{
  result = qword_27DD753E8;
  if (!qword_27DD753E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD753E8);
  }

  return result;
}

unint64_t sub_231DCAAA0()
{
  result = qword_27DD753F0;
  if (!qword_27DD753F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD753F8, qword_231E20268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD753F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleIdRedactor.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization16BundleIdRedactorC6ResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_231DCAC20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_231DCAC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_231DCACA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_231DCACCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_6_21(__n128 a1)
{
  *(v1 + 16) = v2;
  v5 = (v1 + v3);
  v5[2] = a1;
  v5[3].n128_u8[0] = v4;
}

uint64_t sub_231DCAD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[31] = a1;
  v4[32] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v5);
  v4[35] = OUTLINED_FUNCTION_55();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C00, &unk_231E203C0);
  OUTLINED_FUNCTION_47(v6);
  v4[36] = OUTLINED_FUNCTION_55();
  v7 = sub_231E10010();
  v4[37] = v7;
  OUTLINED_FUNCTION_6(v7);
  v4[38] = v8;
  v4[39] = OUTLINED_FUNCTION_55();
  v9 = sub_231E11B90();
  v4[40] = v9;
  OUTLINED_FUNCTION_6(v9);
  v4[41] = v10;
  v4[42] = OUTLINED_FUNCTION_55();
  v11 = sub_231E11BA0();
  v4[43] = v11;
  OUTLINED_FUNCTION_6(v11);
  v4[44] = v12;
  v4[45] = OUTLINED_FUNCTION_55();
  v13 = sub_231E10E30();
  v4[46] = v13;
  OUTLINED_FUNCTION_6(v13);
  v4[47] = v14;
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231DCB028, 0, 0);
}

uint64_t sub_231DCB028(uint64_t a1)
{
  v167 = v1;
  v166[1] = *MEMORY[0x277D85DE8];
  v4 = sub_231E10140();
  v1[61] = v5;
  v165 = v1;
  if (!v5)
  {
    v33 = v1[50];
    v34 = v1[46];
    v35 = v1[47];
    v36 = sub_231CB4EEC();
    (*(v35 + 16))(v33, v36, v34);

    v37 = sub_231E10E10();
    sub_231E11AF0();

    if (OUTLINED_FUNCTION_85())
    {
      v38 = v1[33];
      OUTLINED_FUNCTION_9_1();
      v39 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_16_14(v39);
      *v2 = 136446210;
      v40 = sub_231DE2398(v38);
      v42 = sub_231CB5000(v40, v41, v166);

      *(v2 + 4) = v42;
      v45 = "%{public}s AppIntentMailFetcher: Unable to fetch mail thread, missing bundleId";
LABEL_9:
      OUTLINED_FUNCTION_9_10(&dword_231CAE000, v43, v44, v45);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_30();
    }

LABEL_10:

    v53 = OUTLINED_FUNCTION_25();
    v54(v53);
    goto LABEL_70;
  }

  v6 = v4;
  v7 = v5;
  v8 = v1[47];
  v9 = v1[33];
  v10 = sub_231E102F0();
  v1[62] = v11;
  v12 = (v8 + 16);
  v13 = v1[46];
  if (!v11)
  {
    v46 = v1[51];

    v47 = sub_231CB4EEC();
    (*v12)(v46, v47, v13);

    v37 = sub_231E10E10();
    sub_231E11AD0();

    if (OUTLINED_FUNCTION_85())
    {
      v48 = v1[33];
      OUTLINED_FUNCTION_9_1();
      v49 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_16_14(v49);
      *v6 = 136446210;
      v50 = sub_231DE2398(v48);
      v52 = sub_231CB5000(v50, v51, v166);

      *(v6 + 4) = v52;
      v45 = "%{public}s AppIntentMailFetcher: Unable to fetch mail thread, missing conversation id";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v150 = v10;
  v152 = v11;
  v158 = v6;
  v14 = v1[60];
  v15 = sub_231CB4EEC();
  v1[63] = v15;
  v16 = *v12;
  v1[64] = *v12;
  v1[65] = v12 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v156 = v16;
  v157 = v15;
  (v16)(v14);

  v17 = sub_231E10E10();
  sub_231E11AF0();
  v161 = v9;

  v18 = OUTLINED_FUNCTION_39_0();
  v19 = v1[60];
  v20 = &off_231E13000;
  v21 = v1[46];
  v22 = v1[47];
  v155 = v7;
  if (v18)
  {
    v163 = v1[60];
    v23 = v1[33];
    OUTLINED_FUNCTION_16_0();
    v3 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_16_14(v24);
    *v3 = 136446466;
    v25 = sub_231DE2398(v23);
    v20 = sub_231CB5000(v25, v26, v166);

    *(v3 + 4) = v20;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_231CB5000(v6, v7, v166);
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_11();

    v32 = *(v22 + 8);
    v32(v163, v21);
  }

  else
  {

    v32 = *(v22 + 8);
    v32(v19, v21);
  }

  v1[66] = v32;
  v55 = v32;
  v56 = v1[59];
  v57 = v1[46];
  v154 = [objc_allocWithZone(MEMORY[0x277D23C38]) initWithOptions_];
  v1[67] = v154;
  v156(v56, v157, v57);

  v58 = sub_231E10E10();
  sub_231E11AC0();

  v59 = OUTLINED_FUNCTION_39_0();
  v60 = v1[59];
  v61 = v1[46];
  v153 = v55;
  if (v59)
  {
    v164 = v1[59];
    v62 = v1[33];
    OUTLINED_FUNCTION_9_1();
    v63 = OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_16_14(v63);
    *v3 = 136446210;
    v64 = sub_231DE2398(v62);
    v20 = sub_231CB5000(v64, v65, v166);

    *(v3 + 4) = v20;
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v71 = v164;
  }

  else
  {

    v71 = v60;
  }

  v55(v71, v61);
  v72 = sub_231E115F0();
  v1[26] = 0;
  v73 = [v154 entitiesForBundleIdentifier:v72 error:v1 + 26];

  v74 = v1[26];
  if (!v73)
  {
    v101 = v74;
    v102 = sub_231E0F6F0();

    swift_willThrow();
    if (!v102)
    {
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_14_15();
    v103(v101);

    v104 = v102;
    v105 = sub_231E10E10();
    v106 = sub_231E11AD0();

    v107 = OUTLINED_FUNCTION_85();
    v108 = v1[66];
    v109 = v1[49];
    v110 = v1[46];
    if (v107)
    {
      v111 = v1[33];
      OUTLINED_FUNCTION_16_0();
      swift_slowAlloc();
      OUTLINED_FUNCTION_28_11();
      v112 = OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_16_14(v112);
      *v108 = 136446466;
      v113 = sub_231DE2398(v111);
      v115 = OUTLINED_FUNCTION_46_9(v113, v114);

      *(v108 + 4) = v115;
      OUTLINED_FUNCTION_53_9();
      v116 = v102;
      v117 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_56_12(v117);
      _os_log_impl(&dword_231CAE000, v105, v106, "%{public}s AppIntentMailFetcher: Error while fetching messages, error: %@", v108, 0x16u);
      sub_231CC154C(v20, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

    (v108)(v109, v110);
    goto LABEL_70;
  }

  sub_231CC1784(0, &qword_27DD75450, 0x277D23818);
  v75 = sub_231E11870();
  v76 = v74;

  v77 = sub_231CBA138(v75);
  if (!v77)
  {
LABEL_48:

    v145 = 0;
    goto LABEL_58;
  }

  v78 = v77;
  v79 = 0;
  v80 = v75 & 0xC000000000000001;
  v146 = v75 + 32;
  v147 = v75 & 0xFFFFFFFFFFFFFF8;
  v151 = v75;
  v148 = v75 & 0xC000000000000001;
  v149 = v77;
  while (1)
  {
    if (v80)
    {
      v81 = MEMORY[0x23837D2A0](v79, v75);
    }

    else
    {
      if (v79 >= *(v147 + 16))
      {
        goto LABEL_76;
      }

      v81 = *(v146 + 8 * v79);
    }

    v82 = v81;
    if (__OFADD__(v79++, 1))
    {
      goto LABEL_75;
    }

    v84 = sub_231DD18F8(v81);
    if (v84)
    {
      break;
    }

LABEL_47:

    v1 = v165;
    if (v79 == v78)
    {
      goto LABEL_48;
    }
  }

  v85 = v84;
  v160 = v82;
  v162 = v84 & 0xFFFFFFFFFFFFFF8;
  if (!(v84 >> 62))
  {
    v86 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v86)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  v86 = sub_231E11ED0();
  if (!v86)
  {
LABEL_46:

    v82 = v160;
    v75 = v151;
    v80 = v148;
    v78 = v149;
    goto LABEL_47;
  }

LABEL_26:
  v87 = 0;
  while (1)
  {
    if ((v85 & 0xC000000000000001) != 0)
    {
      v88 = MEMORY[0x23837D2A0](v87, v85);
    }

    else
    {
      if (v87 >= *(v162 + 16))
      {
        goto LABEL_74;
      }

      v88 = *(v85 + 8 * v87 + 32);
    }

    v89 = v88;
    v90 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
    }

    v91 = sub_231DD1968(v88);
    if (!v92)
    {
      goto LABEL_38;
    }

    if (v91 == 1818845549 && v92 == 0xE400000000000000)
    {
      break;
    }

    v94 = sub_231E12100();

    if (v94)
    {
      goto LABEL_40;
    }

LABEL_38:

LABEL_45:
    ++v87;
    if (v90 == v86)
    {
      goto LABEL_46;
    }
  }

LABEL_40:
  v95 = [v89 name];
  v96 = sub_231E11620();
  v98 = v97;

  if (v96 != 0xD000000000000011 || v98 != 0x8000000231E36F60)
  {
    v100 = sub_231E12100();

    if (v100)
    {
      goto LABEL_57;
    }

    goto LABEL_45;
  }

LABEL_57:

  v1 = v165;
  v145 = v160;
LABEL_58:
  v159 = v145;
  v1[68] = v145;
LABEL_59:
  v156(v1[58], v157, v1[46]);

  v118 = sub_231E10E10();
  v119 = sub_231E11AC0();

  v120 = os_log_type_enabled(v118, v119);
  v121 = v1[58];
  v122 = v1[46];
  if (v120)
  {
    v123 = v1[33];
    v124 = OUTLINED_FUNCTION_9_1();
    v125 = swift_slowAlloc();
    v166[0] = v125;
    *v124 = 136446210;
    v126 = sub_231DE2398(v123);
    v128 = sub_231CB5000(v126, v127, v166);

    *(v124 + 4) = v128;
    _os_log_impl(&dword_231CAE000, v118, v119, "%{public}s AppIntentMailFetcher: Finished fetching entities", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v125);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  v153(v121, v122);
  if (v159)
  {
    v129 = v159;
    v130 = swift_task_alloc();
    v165[69] = v130;
    *v130 = v165;
    v130[1] = sub_231DCBD70;

    return sub_231E01644(v150, v152, v158, v155);
  }

  v132 = v165[52];
  v133 = v165[46];

  v156(v132, v157, v133);

  v134 = sub_231E10E10();
  sub_231E11AD0();

  if (OUTLINED_FUNCTION_85())
  {
    v135 = v165[33];
    OUTLINED_FUNCTION_9_1();
    v136 = OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_16_14(v136);
    *v161 = 136446210;
    v137 = sub_231DE2398(v135);
    v139 = sub_231CB5000(v137, v138, v166);

    *(v161 + 4) = v139;
    OUTLINED_FUNCTION_9_10(&dword_231CAE000, v140, v141, "%{public}s AppIntentMailFetcher: Unable to fetch mail thread, missing entity metadata");
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_30();
  }

  v142 = OUTLINED_FUNCTION_25();
  v153(v142, v143);
LABEL_70:

  v144 = v165[1];

  return v144();
}

uint64_t sub_231DCBD70(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 560) = v1;

  if (v1)
  {

    v5 = sub_231DCD3EC;
  }

  else
  {
    *(v4 + 568) = a1;
    v5 = sub_231DCBED0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_231DCBED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, void *), uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_53_3();
  a29 = v31;
  a30 = v32;
  a28 = v30;
  a19 = *MEMORY[0x277D85DE8];
  v33 = v30[70];
  v34 = v30[63];
  v35 = v30[64];
  v36 = v30[57];
  v37 = v30[46];
  v38 = sub_231D3F7BC(v30[71]);
  v30[72] = v38;
  v30[73] = v33;
  v35(v36, v34, v37);
  swift_bridgeObjectRetain_n();

  v39 = sub_231E10E10();
  sub_231E11AF0();

  v40 = OUTLINED_FUNCTION_39_0();
  v41 = v30[66];
  v42 = v30[57];
  v43 = v30[46];
  v111 = v38;
  if (v40)
  {
    v109 = v30[57];
    v44 = v30[33];
    OUTLINED_FUNCTION_16_0();
    swift_slowAlloc();
    a14 = v41;
    v45 = OUTLINED_FUNCTION_17_1();
    a18 = v45;
    *v41 = 136446466;
    v46 = sub_231DE2398(v44);
    v48 = sub_231CB5000(v46, v47, &a18);

    *(v41 + 4) = v48;
    v38 = v111;
    *(v41 + 12) = 2048;
    v49 = *(v111 + 16);

    *(v41 + 14) = v49;

    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_11();

    (v41)(v109, v43);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    (v41)(v42, v43);
  }

  v55 = *(v38 + 16);
  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    a18 = MEMORY[0x277D84F90];
    sub_231E11E30();
    v57 = (v38 + 40);
    do
    {
      v58 = *(v57 - 1);
      v59 = *v57;
      objc_allocWithZone(MEMORY[0x277D23800]);

      sub_231DCFF5C(0xD000000000000011, 0x8000000231E36F60, v58, v59);
      sub_231E11E10();
      sub_231E11E40();
      sub_231E11E50();
      sub_231E11E20();
      v57 += 2;
      --v55;
    }

    while (v55);
    v56 = a18;
  }

  v30[74] = v56;
  v60 = v30[68];
  v62 = v30[44];
  v61 = v30[45];
  v63 = v30[42];
  v64 = v30[43];
  v66 = v30[40];
  v65 = v30[41];
  sub_231CC1784(0, &qword_27DD75420, 0x277D23B90);
  *v61 = v56;
  (*(v62 + 104))(v61, *MEMORY[0x277D23A18], v64);
  *v63 = v60;
  (*(v65 + 104))(v63, *MEMORY[0x277D23A40], v66);
  v67 = objc_allocWithZone(MEMORY[0x277D23C68]);
  v68 = v60;

  [v67 init];
  v69 = sub_231E11BB0();
  v30[75] = v69;
  v70 = [objc_opt_self() policyWithEntityMetadata_];
  v30[76] = v70;
  v30[27] = 0;
  v71 = [v70 connectionWithError_];
  v30[77] = v71;
  v72 = v30[27];
  if (v71)
  {
    v73 = v71;
    v30[2] = v30;
    v30[7] = v30 + 28;
    v30[3] = sub_231DCC5E4;
    v74 = swift_continuation_init();
    v30[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75428, &qword_231E203D0);
    v30[10] = MEMORY[0x277D85DD0];
    v30[11] = 1107296256;
    v30[12] = sub_231D5E410;
    v30[13] = &block_descriptor_13;
    v30[14] = v74;
    v75 = v72;
    [v73 performConfigurableQuery:v69 completionHandler:v30 + 10];
    OUTLINED_FUNCTION_39();

    return MEMORY[0x282200938](v76);
  }

  else
  {
    v78 = v30[68];
    v110 = v30[67];
    v79 = v72;

    v80 = sub_231E0F6F0();

    swift_willThrow();
    OUTLINED_FUNCTION_14_15();
    v81(v69);

    v82 = v80;
    v83 = sub_231E10E10();
    sub_231E11AD0();

    v84 = OUTLINED_FUNCTION_39_0();
    v85 = v30[66];
    v86 = v30[49];
    if (v84)
    {
      v87 = v30[33];
      OUTLINED_FUNCTION_16_0();
      swift_slowAlloc();
      v111 = v86;
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_31_14();
      *v86 = 136446466;
      v88 = sub_231DE2398(v87);
      a14 = v85;
      v90 = sub_231CB5000(v88, v89, &a18);

      *(v86 + 4) = v90;
      OUTLINED_FUNCTION_53_9();
      v91 = v80;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_56_12(v92);
      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v93, v94, v95, v96, v97, 0x16u);
      sub_231CC154C(v79, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();

      a14(v86, v110);
    }

    else
    {

      v98 = OUTLINED_FUNCTION_203_0();
      (v85)(v98);
    }

    v99 = OUTLINED_FUNCTION_5_28();
    OUTLINED_FUNCTION_20_16(v99);

    OUTLINED_FUNCTION_32_10();
    OUTLINED_FUNCTION_39();

    return v101(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12, a13, a14, v110, v111, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_231DCC5E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 624) = v2;
  if (v2)
  {
    v3 = *(v1 + 544);

    v4 = sub_231DCD6B0;
  }

  else
  {
    v4 = sub_231DCC760;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_231DCC760()
{
  v132 = v0;
  v131[1] = *MEMORY[0x277D85DE8];
  v1 = &off_278947000;
  v112 = v0[28];
  v2 = [v112 value];
  v3 = [v2 value];

  sub_231E11C80();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75430, &qword_231E203D8);
  v125 = v0;
  if (OUTLINED_FUNCTION_49_10())
  {

    v4 = v0[29];
    v122 = MEMORY[0x277D84F90];
    v130 = MEMORY[0x277D84F90];
    v5 = 0;
    v117 = v4 & 0xC000000000000001;
    v120 = sub_231CBA138(v4);
    v115 = v4 & 0xFFFFFFFFFFFFFF8;
    v113 = v4;
    while (v120 != v5)
    {
      if (v117)
      {
        v6 = MEMORY[0x23837D2A0](v5, v4);
      }

      else
      {
        if (v5 >= *(v115 + 16))
        {
          goto LABEL_50;
        }

        v6 = *(v4 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }

      v8 = [v6 v1[350]];
      sub_231E11C80();
      swift_unknownObjectRelease();
      sub_231CC1784(0, &qword_27DD75438, 0x277D237F0);
      if (OUTLINED_FUNCTION_49_10())
      {

        MEMORY[0x23837CD40]();
        v21 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
        {
          OUTLINED_FUNCTION_2_12(v21);
          sub_231E11890();
        }

        sub_231E118C0();
        v122 = v130;
        ++v5;
      }

      else
      {
        v126 = v7;
        (v0[64])(v0[56], v0[63], v0[46]);

        v9 = sub_231E10E10();
        v10 = sub_231E11AD0();

        v11 = os_log_type_enabled(v9, v10);
        v12 = v0[66];
        v13 = v0[56];
        v14 = v0[46];
        if (v11)
        {
          v15 = v0[33];
          OUTLINED_FUNCTION_9_1();
          v114 = v12;
          v16 = OUTLINED_FUNCTION_199();
          v131[0] = v16;
          *v4 = 136446210;
          v17 = sub_231DE2398(v15);
          v19 = v1;
          v20 = sub_231CB5000(v17, v18, v131);

          *(v4 + 4) = v20;
          v1 = v19;
          _os_log_impl(&dword_231CAE000, v9, v10, "%{public}s AppIntentMailFetcher: Skipping entity, failed cast", v4, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          OUTLINED_FUNCTION_30();
          v4 = v113;
          v0 = v125;
          OUTLINED_FUNCTION_30();

          v114(v13, v14);
        }

        else
        {

          v12(v13, v14);
        }

        ++v5;
      }
    }

    v42 = v125[64];
    v43 = v125[63];
    v44 = v125[55];
    v45 = v125[46];

    v42(v44, v43, v45);
    v47 = v122;
    v46 = v125;
    swift_bridgeObjectRetain_n();

    v48 = sub_231E10E10();
    v49 = sub_231E11AF0();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v125[66];
    if (v50)
    {
      v127 = v125[66];
      v52 = v125[33];
      OUTLINED_FUNCTION_16_0();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      OUTLINED_FUNCTION_16_14(v54);
      *v53 = 136446466;
      v55 = sub_231DE2398(v52);
      v57 = OUTLINED_FUNCTION_46_9(v55, v56);

      *(v53 + 4) = v57;
      v46 = v125;
      *(v53 + 12) = 2048;
      v58 = sub_231CBA138(v122);

      *(v53 + 14) = v58;

      _os_log_impl(&dword_231CAE000, v48, v49, "%{public}s AppIntentMailFetcher: received count entities: %ld", v53, 0x16u);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_30();

      v59 = OUTLINED_FUNCTION_25();
      v127(v59);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v61 = OUTLINED_FUNCTION_25();
      v51(v61);
    }

    v62 = v46[38];
    v63 = sub_231CBA138(v122);
    v64 = 0;
    v119 = v62;
    v121 = (v62 + 32);
    v128 = MEMORY[0x277D84F90];
    while (v63 != v64)
    {
      if ((v122 & 0xC000000000000001) != 0)
      {
        v65 = MEMORY[0x23837D2A0](v64, v47);
      }

      else
      {
        if (v64 >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v65 = *(v47 + 8 * v64 + 32);
      }

      v66 = v65;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_51;
      }

      v67 = v46[36];
      v68 = v46[37];
      sub_231DCDDB0(v65, v46[33], v67);

      OUTLINED_FUNCTION_8_17(v67, 1, v68);
      if (v69)
      {
        sub_231CC154C(v46[36], &qword_27DD74C00, &unk_231E203C0);
        ++v64;
        v47 = v122;
      }

      else
      {
        v70 = *v121;
        (*v121)(v46[39], v46[36], v46[37]);
        v71 = v128;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v71 = sub_231CC0294(0, *(v128 + 16) + 1, 1, v128, &qword_27DD740A0, &qword_231E1C7A0, MEMORY[0x277D42240], MEMORY[0x277D42240]);
        }

        v74 = v71[2];
        v73 = v71[3];
        if (v74 >= v73 >> 1)
        {
          v78 = OUTLINED_FUNCTION_2_12(v73);
          v71 = sub_231CC0294(v78, v74 + 1, 1, v71, &qword_27DD740A0, &qword_231E1C7A0, MEMORY[0x277D42240], MEMORY[0x277D42240]);
        }

        v75 = v125[39];
        v76 = v125[37];
        v71[2] = v74 + 1;
        v128 = v71;
        v77 = v71 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v74;
        v46 = v125;
        v70(v77, v75, v76);
        ++v64;
        v47 = v122;
      }
    }

    v79 = v46[73];
    v131[0] = sub_231DCD940(v128, v46[31]);

    sub_231DCFFFC(v131);
    if (v79)
    {
    }

    v81 = v46[63];
    v124 = v46[64];
    v82 = v46;
    v83 = v46[54];
    v84 = v82[46];

    v85 = v131[0];
    v124(v83, v81, v84);
    swift_retain_n();

    v86 = sub_231E10E10();
    sub_231E11AF0();

    v87 = OUTLINED_FUNCTION_39_0();
    v88 = v82[66];
    v89 = v82[54];
    v90 = v82[46];
    if (v87)
    {
      v129 = v82[66];
      v91 = v82[33];
      OUTLINED_FUNCTION_16_0();
      swift_slowAlloc();
      v92 = OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_16_14(v92);
      *v84 = 136446466;
      v93 = sub_231DE2398(v91);
      v95 = OUTLINED_FUNCTION_46_9(v93, v94);

      *(v84 + 4) = v95;
      *(v84 + 12) = 2048;
      v96 = *(v85 + 16);

      *(v84 + 14) = v96;

      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v97, v98, v99, v100, v101, 0x16u);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();

      v129(v89, v90);
    }

    else
    {

      v88(v89, v90);
    }

    v102 = v82[77];
    v103 = v82[76];
    v104 = v82[75];
    v105 = v82[68];
    v106 = v82[67];
    v107 = v82[35];
    *v107 = v85;
    v108 = *MEMORY[0x277D42288];
    v109 = sub_231E10290();
    OUTLINED_FUNCTION_12();
    (*(v110 + 104))(v107, v108, v109);
    __swift_storeEnumTagSinglePayload(v107, 0, 1, v109);
    sub_231E10090();
  }

  else
  {
    v22 = v0[63];
    v23 = v0[64];
    v24 = v0[53];
    v25 = v0[46];

    v23(v24, v22, v25);

    v26 = sub_231E10E10();
    sub_231E11AD0();

    v27 = OUTLINED_FUNCTION_85();
    v28 = v0[77];
    v29 = v0[76];
    v30 = v0[75];
    v31 = v0[68];
    v123 = v0[67];
    v32 = v0[66];
    v33 = v0[53];
    v34 = v0[46];
    if (v27)
    {
      v35 = v0[33];
      OUTLINED_FUNCTION_9_1();
      v118 = v33;
      v36 = OUTLINED_FUNCTION_199();
      v131[0] = v36;
      *v32 = 136446210;
      v37 = sub_231DE2398(v35);
      v116 = v34;
      v39 = OUTLINED_FUNCTION_46_9(v37, v38);

      *(v32 + 4) = v39;
      OUTLINED_FUNCTION_9_10(&dword_231CAE000, v40, v41, "%{public}s AppIntentMailFetcher: Unable to fetch mail thread, missing values from query response");
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_30();

      (v32)(v118, v116);
    }

    else
    {

      v60 = OUTLINED_FUNCTION_203_0();
      (v32)(v60);
    }
  }

  v111 = v125[1];

  return v111();
}

uint64_t sub_231DCD3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_53_3();
  a29 = v31;
  a30 = v32;
  a28 = v30;
  a19 = *MEMORY[0x277D85DE8];
  v33 = *(v30 + 560);
  (*(v30 + 512))(*(v30 + 384), *(v30 + 504), *(v30 + 368));

  v34 = v33;
  v35 = sub_231E10E10();
  sub_231E11AD0();

  v36 = OUTLINED_FUNCTION_39_0();
  v37 = *(v30 + 560);
  v38 = *(v30 + 544);
  v39 = *(v30 + 528);
  v41 = *(v30 + 376);
  v40 = *(v30 + 384);
  if (v36)
  {
    v42 = *(v30 + 264);
    OUTLINED_FUNCTION_16_0();
    v71 = v43;
    swift_slowAlloc();
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_31_14();
    *v40 = 136446466;
    v44 = sub_231DE2398(v42);
    v69 = v39;
    v46 = sub_231CB5000(v44, v45, &a18);

    *(v40 + 4) = v46;
    OUTLINED_FUNCTION_53_9();
    v47 = v37;
    v48 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_56_12(v48);
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
    sub_231CC154C(v41, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v69(v40, a15);
  }

  else
  {

    v54 = OUTLINED_FUNCTION_203_0();
    (v39)(v54);
  }

  OUTLINED_FUNCTION_5_28();
  v66 = v56;
  v67 = v55;
  v68 = *(v30 + 384);
  v70 = *(v30 + 360);
  v72 = *(v30 + 336);
  v73 = *(v30 + 312);
  v74 = *(v30 + 288);
  v75 = *(v30 + 280);

  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_39();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, v66, v67, v68, v70, v72, v73, v74, v75, a18, a19, a20, a21, a22);
}

uint64_t sub_231DCD6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_53_3();
  a29 = v32;
  a30 = v33;
  a28 = v30;
  a19 = *MEMORY[0x277D85DE8];
  v34 = v30[77];
  v35 = v30[76];
  v36 = v30[75];
  v37 = v30[68];
  v38 = v30[67];
  swift_willThrow();

  v39 = v30[78];
  OUTLINED_FUNCTION_14_15();
  v40(v34);

  v41 = v39;
  v42 = sub_231E10E10();
  sub_231E11AD0();

  v43 = OUTLINED_FUNCTION_39_0();
  v44 = v30[66];
  v45 = v30[49];
  if (v43)
  {
    v46 = v30[33];
    OUTLINED_FUNCTION_16_0();
    swift_slowAlloc();
    a16 = v45;
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_31_14();
    *v45 = 136446466;
    v47 = sub_231DE2398(v46);
    a14 = v44;
    v49 = sub_231CB5000(v47, v48, &a18);

    *(v45 + 4) = v49;
    OUTLINED_FUNCTION_53_9();
    v50 = v39;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_56_12(v51);
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
    sub_231CC154C(v31, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    a14(v45, a15);
  }

  else
  {

    v57 = OUTLINED_FUNCTION_203_0();
    (v44)(v57);
  }

  v58 = OUTLINED_FUNCTION_5_28();
  OUTLINED_FUNCTION_20_16(v58);

  OUTLINED_FUNCTION_32_10();
  OUTLINED_FUNCTION_39();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_231DCD940(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v52 = sub_231E10340();
  v3 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_231E0F950();
  v5 = *(v48 - 8);
  v6 = MEMORY[0x28223BE20](v48);
  v50 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v36 - v8;
  v9 = sub_231E10010();
  v10 = MEMORY[0x28223BE20](v9);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = 0;
  v55 = *(a1 + 16);
  v45 = (v3 + 16);
  v46 = v16 + 16;
  v43 = (v5 + 8);
  v44 = (v3 + 8);
  v37 = (v16 + 32);
  v47 = v16;
  v40 = (v16 + 8);
  v39 = MEMORY[0x277D84F90];
  v54 = a1;
  while (1)
  {
    if (v55 == v15)
    {

      return v39;
    }

    if (v15 >= *(a1 + 16))
    {
      break;
    }

    v17 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v41 = *(v47 + 72);
    v42 = v17;
    (*(v47 + 16))(v14, a1 + v17 + v41 * v15, v9);
    v18 = v9;
    v19 = v49;
    sub_231E0FFA0();
    v20 = v51;
    v21 = v52;
    (*v45)(v51, v53, v52);
    v22 = v14;
    v23 = v50;
    sub_231E101B0();
    (*v44)(v20, v21);
    sub_231DD19E0();
    v24 = v48;
    v25 = sub_231E11590();
    v26 = *v43;
    (*v43)(v23, v24);
    v26(v19, v24);
    if (v25)
    {
      result = (*v40)(v22, v18);
      ++v15;
      a1 = v54;
      v9 = v18;
      v14 = v22;
    }

    else
    {
      v28 = v41;
      v27 = v42;
      v29 = *v37;
      (*v37)(v38, v22, v18);
      v30 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v30;
      v56 = v30;
      v9 = v18;
      v14 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_231D41D7C(0, *(v32 + 16) + 1, 1);
        v32 = v56;
      }

      a1 = v54;
      v33 = v28;
      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      if (v35 >= v34 >> 1)
      {
        v42 = v29;
        sub_231D41D7C((v34 > 1), v35 + 1, 1);
        v29 = v42;
        v32 = v56;
      }

      ++v15;
      *(v32 + 16) = v35 + 1;
      v39 = v32;
      result = v29(v27 + v32 + v35 * v33, v38, v18);
    }
  }

  __break(1u);
  return result;
}

void sub_231DCDDB0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v286 = a2;
  v263 = a3;
  v4 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v246 = &v241 - v11;
  v12 = sub_231E10400();
  OUTLINED_FUNCTION_24();
  v270 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v269 = &v241 - v17;
  v18 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_0();
  v294 = v27;
  MEMORY[0x28223BE20](v28);
  v287 = &v241 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v31 = OUTLINED_FUNCTION_47(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_139();
  v298 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v37);
  v39 = (&v241 - v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v41 = OUTLINED_FUNCTION_47(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_139();
  v299 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  v48 = &v241 - v47;
  v49 = [a1 identifier];
  v50 = [v49 instanceIdentifier];

  v248 = sub_231E11620();
  v262 = v51;

  OUTLINED_FUNCTION_105();
  v297 = v12;
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v12);
  v305 = MEMORY[0x277D84F90];
  v267 = v39;
  OUTLINED_FUNCTION_105();
  v259 = v4;
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v4);
  v58 = [a1 properties];
  sub_231CC1784(0, &qword_27DD75440, 0x277D238D8);
  v59 = sub_231E11870();

  v60 = sub_231CBA138(v59);
  v282 = v6;
  v281 = v60;
  v279 = v48;
  v260 = v20;
  v277 = v59;
  if (!v60)
  {
    OUTLINED_FUNCTION_24_12(&v281);
    v256 = 2;
    v73 = v6;
    OUTLINED_FUNCTION_42_11();
    v76 = v298;
    v71 = v299;
LABEL_160:

    sub_231CC6A58(v279, v71, &dword_27DD73FA0, &dword_231E13460);
    OUTLINED_FUNCTION_8_17(v71, 1, v297);
    if (v74)
    {
      OUTLINED_FUNCTION_23_11();

      OUTLINED_FUNCTION_47_7();
      OUTLINED_FUNCTION_62_6();
      sub_231CC154C(v71, &dword_27DD73FA0, &dword_231E13460);
      sub_231CB4EEC();
      OUTLINED_FUNCTION_6_22();
      v178 = v258;
      v179(v258);

      v180 = sub_231E10E10();
      sub_231E11AF0();

      if (OUTLINED_FUNCTION_33_8())
      {
        OUTLINED_FUNCTION_9_1();
        v181 = OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_51_7(v181);
        *v50 = 136446210;
        v182 = sub_231DE2398(v4);
        OUTLINED_FUNCTION_63_8(v182, v183);
        OUTLINED_FUNCTION_118_2();
        *(v50 + 1) = v48;
        OUTLINED_FUNCTION_27_11(&dword_231CAE000, v184, v185, "%{public}s AppIntentMailFetcher: Skipping entity, missing sender");
        __swift_destroy_boxed_opaque_existential_0(v71);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();
      }

      (*(v4 + 8))(v178, v18);
      goto LABEL_186;
    }

    (*(v270 + 32))(v261, v71, v297);
    v186 = OUTLINED_FUNCTION_38_12();
    sub_231CC6A58(v186, v76, v187, v188);
    v189 = v259;
    OUTLINED_FUNCTION_8_17(v76, 1, v259);
    if (v190)
    {
      OUTLINED_FUNCTION_23_11();

      OUTLINED_FUNCTION_47_7();
      OUTLINED_FUNCTION_62_6();
      sub_231CC154C(v76, &dword_27DD74AD0, &qword_231E16C40);
      sub_231CB4EEC();
      OUTLINED_FUNCTION_6_22();
      v191 = v255;
      v192(v255);

      v193 = sub_231E10E10();
      sub_231E11AF0();

      if (OUTLINED_FUNCTION_33_8())
      {
        OUTLINED_FUNCTION_9_1();
        v194 = OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_51_7(v194);
        *v50 = 136446210;
        v195 = sub_231DE2398(v4);
        OUTLINED_FUNCTION_63_8(v195, v196);
        OUTLINED_FUNCTION_118_2();
        *(v50 + 1) = v48;
        OUTLINED_FUNCTION_27_11(&dword_231CAE000, v197, v198, "%{public}s AppIntentMailFetcher: Skipping entity, missing date");
        __swift_destroy_boxed_opaque_existential_0(v71);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();
      }

      (*(v4 + 8))(v191, v18);
      goto LABEL_185;
    }

    (v73[4].isa)(v257, v76, v189);
    v199 = v256;
    if (v256 == 2)
    {
      OUTLINED_FUNCTION_23_11();

      OUTLINED_FUNCTION_47_7();
      OUTLINED_FUNCTION_62_6();
      sub_231CB4EEC();
      OUTLINED_FUNCTION_6_22();
      v200(v254);

      v201 = sub_231E10E10();
      sub_231E11AF0();

      if (!OUTLINED_FUNCTION_33_8())
      {

        v221 = OUTLINED_FUNCTION_34_12();
        v222(v221);
        v223 = OUTLINED_FUNCTION_9_19();
        v225 = v189;
LABEL_184:
        v224(v223, v225);
LABEL_185:
        (*(v270 + 8))(v261, v297);
LABEL_186:
        v233 = OUTLINED_FUNCTION_38_12();
        sub_231CC154C(v233, v234, v235);
        sub_231CC154C(v279, &dword_27DD73FA0, &dword_231E13460);
        v220 = 1;
        goto LABEL_187;
      }

      OUTLINED_FUNCTION_9_1();
      v202 = OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_51_7(v202);
      *v50 = 136446210;
      v203 = sub_231DE2398(v4);
      v204 = v189;
      OUTLINED_FUNCTION_63_8(v203, v205);
      OUTLINED_FUNCTION_118_2();
      *(v50 + 1) = v199;
      v208 = "%{public}s AppIntentMailFetcher: Skipping entity, missing isRead";
    }

    else
    {
      v71 = v264;
      if (v264)
      {
        v209 = HIBYTE(v264) & 0xF;
        if ((v264 & 0x2000000000000000) == 0)
        {
          v209 = v252 & 0xFFFFFFFFFFFFLL;
        }

        v210 = v270;
        if (v209)
        {
          v211 = v270;
          v212 = v73;
          v213 = v261;
          v214 = v297;
          (*(v270 + 16))(v249, v261, v297);
          v299 = v305;
          v215 = v257;
          v216 = v259;
          (v212[2].isa)(v250, v257, v259);
          sub_231E0FFF0();
          (v212[1].isa)(v215, v216);
          (*(v211 + 8))(v213, v214);
          v217 = OUTLINED_FUNCTION_38_12();
          sub_231CC154C(v217, v218, v219);
          sub_231CC154C(v279, &dword_27DD73FA0, &dword_231E13460);
          v220 = 0;
LABEL_187:
          v236 = sub_231E10010();
          __swift_storeEnumTagSinglePayload(v263, v220, 1, v236);
          return;
        }

        OUTLINED_FUNCTION_23_11();

        v189 = v259;
      }

      else
      {
        OUTLINED_FUNCTION_23_11();
        v210 = v270;
      }

      OUTLINED_FUNCTION_47_7();
      sub_231CB4EEC();
      OUTLINED_FUNCTION_6_22();
      v226(v251);
      v227 = v286;

      v201 = sub_231E10E10();
      sub_231E11AF0();

      if (!OUTLINED_FUNCTION_33_8())
      {

        v237 = OUTLINED_FUNCTION_34_12();
        v238(v237);
        v239 = OUTLINED_FUNCTION_9_19();
        v240(v239, v189);
        (*(v210 + 8))(v261, v297);
        goto LABEL_186;
      }

      OUTLINED_FUNCTION_9_1();
      v228 = OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_51_7(v228);
      *v210 = 136446210;
      v229 = sub_231DE2398(v227);
      v204 = v189;
      OUTLINED_FUNCTION_63_8(v229, v230);
      OUTLINED_FUNCTION_118_2();
      *(v210 + 4) = v199;
      v208 = "%{public}s AppIntentMailFetcher: Skipping entity, missing body";
    }

    OUTLINED_FUNCTION_27_11(&dword_231CAE000, v206, v207, v208);
    __swift_destroy_boxed_opaque_existential_0(v71);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v231 = OUTLINED_FUNCTION_34_12();
    v232(v231);
    v223 = OUTLINED_FUNCTION_9_19();
    v225 = v204;
    goto LABEL_184;
  }

  OUTLINED_FUNCTION_24_12(&v281);
  OUTLINED_FUNCTION_29_10();
  v280 = v59 & 0xC000000000000001;
  v274 = v59 & 0xFFFFFFFFFFFFFF8;
  v273 = v59 + 32;
  v242 = (v6 + 32);
  v241 = (v6 + 8);
  v295 = v20 + 8;
  v296 = v20 + 16;
  v61 = 0;
  v268 = (v270 + 32);
  *&v62 = 136446466;
  v266 = v62;
  *&v62 = *(v63 + 1008);
  v284 = v62;
  v256 = 2;
  v285 = v18;
  OUTLINED_FUNCTION_42_11();
  while (1)
  {
    if (v280)
    {
      v64 = MEMORY[0x23837D2A0](v61, v277);
    }

    else
    {
      if (v61 >= *(v274 + 16))
      {
        goto LABEL_194;
      }

      v64 = *(v273 + 8 * v61);
    }

    v65 = v64;
    if (__OFADD__(v61++, 1))
    {
      break;
    }

    v67 = [v64 value];
    if (v67)
    {
      v68 = v67;
      v69 = [v67 value];

      sub_231E11C80();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v304, 0, sizeof(v304));
    }

    v70 = [v65 identifier];
    v71 = sub_231E11620();
    v73 = v72;

    v74 = v71 == v48 && v73 == 0xE600000000000000;
    if (v74 || (v75 = OUTLINED_FUNCTION_13_18(v48, 0xE600000000000000), v76 = v298, (v75 & 1) != 0))
    {

      sub_231CC6A58(v304, &v302, &dword_27DD741E0, &qword_231E15D70);
      v73 = v282;
      v71 = v299;
      v48 = v61;
      if (v303)
      {
        sub_231CC1784(0, &qword_27DD75448, 0x277CD3E90);
        OUTLINED_FUNCTION_40_10();
        if (OUTLINED_FUNCTION_49_10())
        {
          v77 = v300;
        }

        else
        {
          v77 = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_48_9(&v302);
        v77 = 0;
      }

      v78 = v278;
      sub_231DCFBE8(v77, v4, v278);

      OUTLINED_FUNCTION_48_9(v304);
      v79 = v279;
      v50 = &dword_27DD73FA0;
      sub_231CC154C(v279, &dword_27DD73FA0, &dword_231E13460);
      sub_231CB37DC(v78, v79, &dword_27DD73FA0, &dword_231E13460);
      v76 = v298;
      v61 = v48;
LABEL_22:
      OUTLINED_FUNCTION_29_10();
      goto LABEL_23;
    }

    v80 = v71 == 28532 && v73 == 0xE200000000000000;
    v276 = v65;
    if (v80 || (OUTLINED_FUNCTION_13_18(28532, 0xE200000000000000) & 1) != 0 || (v71 == 25443 ? (v81 = v73 == 0xE200000000000000) : (v81 = 0), (v82 = v265, v81) || (OUTLINED_FUNCTION_13_18(25443, 0xE200000000000000) & 1) != 0 || (v71 == 6513506 ? (v83 = v73 == 0xE300000000000000) : (v83 = 0), v83 || (OUTLINED_FUNCTION_13_18(6513506, 0xE300000000000000) & 1) != 0)))
    {

      v50 = &dword_27DD741E0;
      sub_231CC6A58(v304, &v302, &dword_27DD741E0, &qword_231E15D70);
      v84 = v272;
      v85 = v294;
      v71 = v299;
      v275 = v61;
      if (!v303)
      {
        OUTLINED_FUNCTION_48_9(&v302);
LABEL_59:
        sub_231CB4EEC();
        OUTLINED_FUNCTION_30_12();
        v104(v84);

        OUTLINED_FUNCTION_41_13();
        v106 = v105;
        v73 = sub_231E10E10();
        v107 = sub_231E11AD0();

        if (OUTLINED_FUNCTION_85())
        {
          OUTLINED_FUNCTION_16_0();
          v48 = swift_slowAlloc();
          v4 = swift_slowAlloc();
          v302 = v4;
          *v48 = v266;
          v108 = sub_231DE2398(v286);
          v110 = sub_231CB5000(v108, v109, &v302);

          *(v48 + 4) = v110;
          *(v48 + 12) = 2080;
          v111 = [v106 identifier];
          v50 = sub_231E11620();
          v18 = v112;

          v113 = sub_231CB5000(v50, v18, &v302);
          OUTLINED_FUNCTION_33_15();

          *(v48 + 14) = v113;
          v76 = v298;
          _os_log_impl(&dword_231CAE000, v73, v107, "%{public}s AppIntentMailFetcher: Skipping property '%s' failed cast", v48, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_42_11();
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_29_10();
          OUTLINED_FUNCTION_30();
        }

        OUTLINED_FUNCTION_52_9();
        v114(v84, v18);
        sub_231CC154C(v304, &dword_27DD741E0, &qword_231E15D70);
        OUTLINED_FUNCTION_37_12();
        v71 = v299;
        v61 = v275;
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75430, &qword_231E203D8);
      OUTLINED_FUNCTION_40_10();
      if ((OUTLINED_FUNCTION_49_10() & 1) == 0)
      {
        goto LABEL_59;
      }

      v86 = v300;
      v87 = MEMORY[0x277D84F90];
      v300 = MEMORY[0x277D84F90];
      v88 = sub_231CBA138(v86);
      v89 = 0;
      OUTLINED_FUNCTION_39_7(v88);
      v293 = v87;
      v90 = &off_278947000;
      while (1)
      {
        v50 = &dword_231E13460;
        if (v292 == v89)
        {
          break;
        }

        if (v291)
        {
          v91 = MEMORY[0x23837D2A0](v89, v86);
        }

        else
        {
          if (v89 >= *(v290 + 16))
          {
            goto LABEL_190;
          }

          v91 = *(v86 + 8 * v89 + 32);
        }

        v92 = v91;
        if (__OFADD__(v89, 1))
        {
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        v93 = [v91 v90[350]];
        sub_231E11C80();
        swift_unknownObjectRelease();
        sub_231CC1784(0, &qword_27DD75448, 0x277CD3E90);
        if (OUTLINED_FUNCTION_49_10())
        {

          MEMORY[0x23837CD40]();
          v103 = *((v300 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v300 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v103 >> 1)
          {
            OUTLINED_FUNCTION_2_12(v103);
            sub_231E11890();
          }

          sub_231E118C0();
          v293 = v300;
          ++v89;
          v76 = v298;
        }

        else
        {
          sub_231CB4EEC();
          OUTLINED_FUNCTION_30_12();
          v94 = v287;
          v95(v287);

          v96 = sub_231E10E10();
          v97 = sub_231E11AD0();

          if (os_log_type_enabled(v96, v97))
          {
            OUTLINED_FUNCTION_9_1();
            v98 = OUTLINED_FUNCTION_17_1();
            v302 = v98;
            *v18 = v284;
            v99 = sub_231DE2398(v4);
            v4 = sub_231CB5000(v99, v100, &v302);

            *(v18 + 4) = v4;
            OUTLINED_FUNCTION_42_11();
            _os_log_impl(&dword_231CAE000, v96, v97, "%{public}s AppIntentMailFetcher: Skipping handle, failed cast", v18, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v98);
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_33_15();
            OUTLINED_FUNCTION_30();

            OUTLINED_FUNCTION_52_9();
            v102 = v94;
            v90 = &off_278947000;
          }

          else
          {

            OUTLINED_FUNCTION_52_9();
            v102 = v94;
          }

          v101(v102, v18);

          v76 = v298;
          ++v89;
        }

        v85 = v294;
        v71 = v299;
      }

      v115 = sub_231CBA138(v293);
      v48 = 0;
      OUTLINED_FUNCTION_39_7(v115);
      v271 = MEMORY[0x277D84F90];
      v116 = v283;
      while (v292 != v48)
      {
        if (v291)
        {
          v117 = MEMORY[0x23837D2A0](v48, v293);
        }

        else
        {
          if (v48 >= *(v290 + 16))
          {
            goto LABEL_192;
          }

          v117 = *(v293 + 8 * v48 + 32);
        }

        if (__OFADD__(v48, 1))
        {
          goto LABEL_191;
        }

        v118 = v117;
        sub_231E08B20(v118, v116);
        OUTLINED_FUNCTION_8_17(v116, 1, v297);
        v289 = v48 + 1;
        if (v74)
        {
          sub_231CB4EEC();
          OUTLINED_FUNCTION_30_12();
          v119(v85);

          v120 = v85;
          v121 = sub_231E10E10();
          v122 = sub_231E11AD0();

          if (os_log_type_enabled(v121, v122))
          {
            OUTLINED_FUNCTION_9_1();
            v18 = OUTLINED_FUNCTION_6_1();
            v302 = v18;
            dword_231E13460 = v284;
            v123 = sub_231DE2398(v4);
            v4 = v124;
            v125 = sub_231CB5000(v123, v124, &v302);
            OUTLINED_FUNCTION_42_11();

            unk_231E13464 = v125;
            _os_log_impl(&dword_231CAE000, v121, v122, "%{public}s AppIntentMailFetcher: Skipping handle, failed to init", &dword_231E13460, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v18);
            OUTLINED_FUNCTION_33_15();
            OUTLINED_FUNCTION_30();
            v50 = &dword_231E13460;
            OUTLINED_FUNCTION_30();
          }

          else
          {
          }

          OUTLINED_FUNCTION_52_9();
          v126(v120, v18);
          v76 = v298;
          v85 = v120;
          v116 = v283;
        }

        else
        {
        }

        v127 = v288;
        sub_231CB37DC(v116, v288, &dword_27DD73FA0, &dword_231E13460);

        OUTLINED_FUNCTION_8_17(v127, 1, v297);
        if (v74)
        {
          sub_231CC154C(v127, &dword_27DD73FA0, &dword_231E13460);
          ++v48;
          v71 = v299;
        }

        else
        {
          v128 = *v268;
          (*v268)(v269, v127, v297);
          v129 = v271;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = v299;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v129 = sub_231CC0294(0, v129[2] + 1, 1, v129, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
          }

          v132 = v129[2];
          v131 = v129[3];
          if (v132 >= v131 >> 1)
          {
            v134 = OUTLINED_FUNCTION_2_12(v131);
            v129 = sub_231CC0294(v134, v132 + 1, 1, v129, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
          }

          v129[2] = v132 + 1;
          v133 = (*(v270 + 80) + 32) & ~*(v270 + 80);
          v271 = v129;
          v128(v129 + v133 + *(v270 + 72) * v132, v269, v297);
          v48 = v289;
          v76 = v298;
          v85 = v294;
          v50 = &dword_231E13460;
        }
      }

      v73 = &v305;
      sub_231DC7B54(v271);
      OUTLINED_FUNCTION_41_13();

      sub_231CC154C(v304, &dword_27DD741E0, &qword_231E15D70);
      OUTLINED_FUNCTION_37_12();
      v61 = v275;
      goto LABEL_22;
    }

    v136 = v71 == 0x7463656A627573 && v73 == 0xE700000000000000;
    if (v136 || (OUTLINED_FUNCTION_13_18(0x7463656A627573, 0xE700000000000000) & 1) != 0)
    {

      OUTLINED_FUNCTION_47_7();

      OUTLINED_FUNCTION_4_26();
      if (!v137)
      {
        sub_231CC154C(&v302, &dword_27DD741E0, &qword_231E15D70);
        v253 = 0;
        v142 = &v292;
LABEL_98:
        *(v142 - 32) = 0;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_40_10();
      v138 = swift_dynamicCast();
      v139 = v300;
      if (!v138)
      {
        v139 = 0;
      }

      v253 = v139;
      if (v138)
      {
        v140 = v301;
      }

      else
      {
        v140 = 0;
      }

      v141 = &v292;
LABEL_96:
      *(v141 - 32) = v140;
      goto LABEL_23;
    }

    v143 = v71 == 2036625250 && v73 == 0xE400000000000000;
    if (v143 || (OUTLINED_FUNCTION_13_18(2036625250, 0xE400000000000000) & 1) != 0)
    {

      OUTLINED_FUNCTION_62_6();

      OUTLINED_FUNCTION_4_26();
      if (!v144)
      {
        sub_231CC154C(&v302, &dword_27DD741E0, &qword_231E15D70);
        v252 = 0;
        v142 = &v293;
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_40_10();
      v145 = swift_dynamicCast();
      v146 = v300;
      if (!v145)
      {
        v146 = 0;
      }

      v252 = v146;
      if (v145)
      {
        v140 = v301;
      }

      else
      {
        v140 = 0;
      }

      v141 = &v293;
      goto LABEL_96;
    }

    v147 = v71 == 0x646165527369 && v73 == 0xE600000000000000;
    if (v147 || (OUTLINED_FUNCTION_13_18(0x646165527369, 0xE600000000000000) & 1) != 0)
    {

      OUTLINED_FUNCTION_4_26();
      if (v148)
      {
        OUTLINED_FUNCTION_40_10();
        v149 = swift_dynamicCast();
        v150 = v300;
        if (!v149)
        {
          v150 = 2;
        }
      }

      else
      {
        sub_231CC154C(&v302, &dword_27DD741E0, &qword_231E15D70);
        v150 = 2;
      }

      v256 = v150;
      goto LABEL_23;
    }

    v151 = v71 == 0x656D686361747461 && v73 == 0xEB0000000073746ELL;
    if (v151 || (OUTLINED_FUNCTION_13_18(0x656D686361747461, 0xEB0000000073746ELL) & 1) != 0)
    {
      sub_231CC154C(v304, &dword_27DD741E0, &qword_231E15D70);

      OUTLINED_FUNCTION_37_12();
    }

    else
    {
      v152 = v71 == 0x6563655265746164 && v73 == 0xEC00000064657669;
      if (v152 || (OUTLINED_FUNCTION_13_18(0x6563655265746164, 0xEC00000064657669) & 1) != 0 || (v71 == 0x746E655365746164 ? (v153 = v73 == 0xE800000000000000) : (v153 = 0), v153))
      {

LABEL_141:
        sub_231CC6A58(v304, &v302, &dword_27DD741E0, &qword_231E15D70);
        v71 = v299;
        v50 = &dword_27DD74AD0;
        if (v303)
        {
          v155 = v247;
          v73 = v259;
          v156 = swift_dynamicCast() ^ 1;
          v157 = v155;
          v158 = 1;
        }

        else
        {
          sub_231CC154C(&v302, &dword_27DD741E0, &qword_231E15D70);
          OUTLINED_FUNCTION_105();
          v73 = v259;
        }

        __swift_storeEnumTagSinglePayload(v157, v156, v158, v73);
        v159 = v246;
        v160 = OUTLINED_FUNCTION_38_12();
        sub_231CC6A58(v160, v82, &dword_27DD74AD0, &qword_231E16C40);
        OUTLINED_FUNCTION_8_17(v82, 1, v73);
        if (v74)
        {
          OUTLINED_FUNCTION_41_13();

          v163 = v247;
        }

        else
        {
          v162 = *v242;
          (*v242)(v159, v82, v73);
          v163 = v247;
          v164 = v245;
          sub_231CC6A58(v247, v245, &dword_27DD74AD0, &qword_231E16C40);
          OUTLINED_FUNCTION_8_17(v164, 1, v73);
          if (!v165)
          {
            v169 = v244;
            v162(v244, v164, v73);
            sub_231DD19E0();
            v170 = v159;
            v171 = sub_231E115A0();
            OUTLINED_FUNCTION_41_13();

            sub_231CC154C(v304, &dword_27DD741E0, &qword_231E15D70);
            v173 = OUTLINED_FUNCTION_38_12();
            sub_231CC154C(v173, &dword_27DD74AD0, &qword_231E16C40);
            if (v171)
            {
              v174 = v169;
            }

            else
            {
              v174 = v170;
            }

            if (v171)
            {
              v175 = v170;
            }

            else
            {
              v175 = v169;
            }

            v71 = v299;
            (*v241)(v174, v73);
            v176 = v243;
            v162(v243, v175, v73);
            v50 = &dword_27DD74AD0;
            __swift_storeEnumTagSinglePayload(v176, 0, 1, v73);
            v177 = v176;
            v163 = v247;
            sub_231CB37DC(v177, v267, &dword_27DD74AD0, &qword_231E16C40);
            goto LABEL_158;
          }

          OUTLINED_FUNCTION_41_13();

          (*v241)(v159, v73);
          v50 = &dword_27DD74AD0;
        }

        sub_231CC154C(v304, &dword_27DD741E0, &qword_231E15D70);
        v73 = v267;
        sub_231CC154C(v267, &dword_27DD74AD0, &qword_231E16C40);
        v167 = OUTLINED_FUNCTION_25();
        sub_231CC154C(v167, v168, &qword_231E16C40);
        sub_231CC6A58(v163, v73, &dword_27DD74AD0, &qword_231E16C40);
LABEL_158:
        OUTLINED_FUNCTION_48_9(v163);
        OUTLINED_FUNCTION_37_12();
        v76 = v298;
        goto LABEL_23;
      }

      v154 = OUTLINED_FUNCTION_13_18(0x746E655365746164, 0xE800000000000000);

      if (v154)
      {
        goto LABEL_141;
      }

      sub_231CC154C(v304, &dword_27DD741E0, &qword_231E15D70);

      OUTLINED_FUNCTION_37_12();
      v76 = v298;
    }

    v71 = v299;
LABEL_23:
    if (v61 == v281)
    {
      goto LABEL_160;
    }
  }

LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
}

uint64_t sub_231DCFBE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v16 = OUTLINED_FUNCTION_47(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  if (a1)
  {
    v19 = a1;
    sub_231E08B20(v19, v18);
    v20 = sub_231E10400();
    OUTLINED_FUNCTION_8_17(v18, 1, v20);
    if (v21)
    {
      v22 = sub_231CB4EEC();
      (*(v8 + 16))(v14, v22, v6);

      v23 = sub_231E10E10();
      v24 = sub_231E11AD0();

      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_9_1();
        v45 = a3;
        v25 = OUTLINED_FUNCTION_49_0();
        v46 = v25;
        *a3 = 136446210;
        v26 = sub_231DE2398(a2);
        v28 = OUTLINED_FUNCTION_46_9(v26, v27);
        v44 = v23;
        v29 = v28;

        *(a3 + 4) = v29;
        v30 = v44;
        _os_log_impl(&dword_231CAE000, v44, v24, "%{public}s AppIntentMailFetcher: Skipping handle, failed to init", a3, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        OUTLINED_FUNCTION_11();
        a3 = v45;
        OUTLINED_FUNCTION_30();
      }

      else
      {
      }

      (*(v8 + 8))(v14, v6);
    }

    else
    {
    }

    return sub_231CB37DC(v18, a3, &dword_27DD73FA0, &dword_231E13460);
  }

  else
  {
    v31 = sub_231CB4EEC();
    (*(v8 + 16))(v12, v31, v6);

    v32 = sub_231E10E10();
    v33 = sub_231E11AD0();

    if (OUTLINED_FUNCTION_85())
    {
      OUTLINED_FUNCTION_9_1();
      v34 = OUTLINED_FUNCTION_17_1();
      v46 = v34;
      MEMORY[0] = 136446210;
      v35 = sub_231DE2398(a2);
      v37 = OUTLINED_FUNCTION_46_9(v35, v36);

      MEMORY[4] = v37;
      _os_log_impl(&dword_231CAE000, v32, v33, "%{public}s AppIntentMailFetcher: Skipping handle, missing inPerson", 0, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_11();
    }

    (*(v8 + 8))(v12, v6);
    sub_231E10400();
    OUTLINED_FUNCTION_105();
    return __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  }
}

id sub_231DCFF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_231E115F0();

  v6 = sub_231E115F0();

  v7 = [v4 initWithTypeIdentifier:v5 instanceIdentifier:v6];

  return v7;
}

uint64_t sub_231DCFFFC(uint64_t *a1)
{
  v2 = *(sub_231E10010() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_231DD19CC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_231DD00C8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_231DD00C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_231E120B0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_231E10010();
        v6 = sub_231E118B0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231E10010() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_231DD0590(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_231DD01F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231DD01F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_231E0F950();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_231E10010();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        v54(v56, v26, v12);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_231E0FFA0();
        v32 = v59;
        sub_231E0FFA0();
        v62 = sub_231E0F8D0();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        result = v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_231DD0590(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v157 = sub_231E0F950();
  v8 = *(v157 - 8);
  v9 = MEMORY[0x28223BE20](v157);
  v156 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v130 - v11;
  v12 = sub_231E10010();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v136 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v147 = &v130 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v154 = &v130 - v19;
  result = MEMORY[0x28223BE20](v18);
  v158 = &v130 - v21;
  v142 = a3;
  v22 = a3[1];
  v137 = v13;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_101:
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v123 = (v24 + 16);
      v124 = *(v24 + 16);
      while (v124 >= 2)
      {
        if (!*v142)
        {
          goto LABEL_139;
        }

        v125 = v24;
        v126 = (v24 + 16 * v124);
        v127 = *v126;
        v128 = &v123[2 * v124];
        v24 = v128[1];
        sub_231DD1184(&(*v142)[*(v137 + 9) * *v126], &(*v142)[*(v137 + 9) * *v128], &(*v142)[*(v137 + 9) * v24], v159);
        if (v5)
        {
          break;
        }

        if (v24 < v127)
        {
          goto LABEL_127;
        }

        if (v124 - 2 >= *v123)
        {
          goto LABEL_128;
        }

        *v126 = v127;
        v126[1] = v24;
        v129 = *v123 - v124;
        if (*v123 < v124)
        {
          goto LABEL_129;
        }

        v124 = *v123 - 1;
        result = memmove(v128, v128 + 2, 16 * v129);
        *v123 = v124;
        v24 = v125;
      }
    }

LABEL_136:
    result = sub_231CF1D4C(v24);
    v24 = result;
    goto LABEL_103;
  }

  v131 = a4;
  v23 = 0;
  v151 = (v8 + 8);
  v152 = v13 + 16;
  v149 = (v13 + 32);
  v150 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v153 = v12;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v132 = v24;
      v27 = v23;
      v134 = v23;
      v143 = v5;
      v144 = v23 + 1;
      v28 = *v142;
      v159 = v28;
      v29 = v13;
      v30 = *(v13 + 9);
      v145 = v22;
      v146 = v30;
      v31 = v28 + v30 * v26;
      v32 = v12;
      v33 = *(v29 + 2);
      v33(v158, v31, v12);
      v34 = v154;
      v140 = v33;
      v33(v154, v28 + v30 * v27, v32);
      v5 = v155;
      v24 = v158;
      sub_231E0FFA0();
      v35 = v156;
      sub_231E0FFA0();
      LODWORD(v141) = sub_231E0F8D0();
      v36 = *v151;
      v37 = v157;
      (*v151)(v35, v157);
      v139 = v36;
      (v36)(v5, v37);
      v38 = *(v137 + 1);
      (v38)(v34, v32);
      v138 = v38;
      result = (v38)(v24, v32);
      v39 = v145;
      v40 = v134 + 2;
      v41 = v159 + v146 * (v134 + 2);
      while (1)
      {
        v42 = v40;
        if (++v144 >= v39)
        {
          break;
        }

        v5 = v158;
        v43 = v153;
        v44 = v140;
        v159 = v40;
        (v140)(v158, v41, v153);
        v24 = v154;
        v44(v154, v31, v43);
        v45 = v155;
        sub_231E0FFA0();
        v46 = v156;
        sub_231E0FFA0();
        LOBYTE(v148) = sub_231E0F8D0() & 1;
        LODWORD(v148) = v148;
        v47 = v46;
        v48 = v157;
        v49 = v139;
        (v139)(v47, v157);
        v49(v45, v48);
        v50 = v138;
        (v138)(v24, v43);
        result = (v50)(v5, v43);
        v42 = v159;
        v39 = v145;
        v41 += v146;
        v31 += v146;
        v40 = v159 + 1;
        if ((v141 & 1) != v148)
        {
          goto LABEL_9;
        }
      }

      v144 = v39;
LABEL_9:
      if (v141)
      {
        v26 = v144;
        v25 = v134;
        v12 = v153;
        if (v144 < v134)
        {
          goto LABEL_133;
        }

        if (v134 >= v144)
        {
          v5 = v143;
          v13 = v137;
          v24 = v132;
          goto LABEL_32;
        }

        if (v39 >= v42)
        {
          v51 = v42;
        }

        else
        {
          v51 = v39;
        }

        v52 = v146 * (v51 - 1);
        v53 = v146 * v51;
        v54 = v134;
        v55 = v134 * v146;
        v5 = v143;
        v13 = v137;
        do
        {
          if (v54 != --v26)
          {
            v56 = v5;
            v57 = *v142;
            if (!*v142)
            {
              goto LABEL_140;
            }

            v159 = *v149;
            (v159)(v136, &v57[v55], v12);
            v58 = v55 < v52 || &v57[v55] >= &v57[v53];
            if (v58)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v55 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v159)(&v57[v52], v136, v12);
            v5 = v56;
            v13 = v137;
          }

          ++v54;
          v52 -= v146;
          v53 -= v146;
          v55 += v146;
        }

        while (v54 < v26);
        v24 = v132;
      }

      else
      {
        v5 = v143;
        v13 = v137;
        v24 = v132;
        v12 = v153;
      }

      v26 = v144;
      v25 = v134;
    }

LABEL_32:
    v59 = v142[1];
    if (v26 < v59)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_132;
      }

      if (v26 - v25 < v131)
      {
        break;
      }
    }

LABEL_48:
    if (v26 < v25)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_231CF0DE4(0, *(v24 + 16) + 1, 1, v24);
      v24 = result;
    }

    v80 = *(v24 + 16);
    v79 = *(v24 + 24);
    v81 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      result = sub_231CF0DE4((v79 > 1), v80 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 16) = v81;
    v82 = (v24 + 32);
    v83 = (v24 + 32 + 16 * v80);
    *v83 = v25;
    v83[1] = v26;
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_141;
    }

    v144 = v26;
    if (v80)
    {
      v148 = (v24 + 32);
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = (v24 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v24 + 32);
          v88 = *(v24 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
        {
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
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v142)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_231DD1184(&(*v142)[*(v13 + 9) * *v116], &(*v142)[*(v13 + 9) * *v119], &(*v142)[*(v13 + 9) * v120], v159);
        if (v5)
        {
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v143 = 0;
        v5 = v13;
        v121 = v24;
        v24 = *(v24 + 16);
        if (v118 > v24)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v24)
        {
          goto LABEL_115;
        }

        v81 = v24 - 1;
        result = memmove(v119, v119 + 16, 16 * (v24 - 1 - v118));
        *(v121 + 16) = v24 - 1;
        v122 = v24 > 2;
        v24 = v121;
        v13 = v5;
        v5 = v143;
        v82 = v148;
        if (!v122)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v142[1];
    v23 = v144;
    if (v144 >= v22)
    {
      goto LABEL_101;
    }
  }

  v60 = (v25 + v131);
  if (__OFADD__(v25, v131))
  {
    goto LABEL_134;
  }

  if (v60 >= v59)
  {
    v60 = v142[1];
  }

  if (v60 < v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v26 == v60)
  {
    goto LABEL_48;
  }

  v132 = v24;
  v143 = v5;
  v61 = *v142;
  v62 = *(v13 + 9);
  v148 = *(v13 + 2);
  v63 = &v61[v62 * (v26 - 1)];
  v145 = -v62;
  v134 = v25;
  v64 = (v25 - v26);
  v146 = v61;
  v135 = v62;
  v65 = &v61[v26 * v62];
  v138 = v60;
LABEL_41:
  v144 = v26;
  v139 = v65;
  v140 = v64;
  v141 = v63;
  v66 = v63;
  while (1)
  {
    v67 = v158;
    v68 = v148;
    (v148)(v158, v65, v12);
    v69 = v154;
    (v68)(v154, v66, v12);
    v70 = v155;
    sub_231E0FFA0();
    v71 = v156;
    sub_231E0FFA0();
    LODWORD(v159) = sub_231E0F8D0();
    v72 = *v151;
    v73 = v71;
    v74 = v157;
    (*v151)(v73, v157);
    v75 = v70;
    v12 = v153;
    v72(v75, v74);
    v76 = *v150;
    (*v150)(v69, v12);
    result = v76(v67, v12);
    if ((v159 & 1) == 0)
    {
LABEL_46:
      v26 = v144 + 1;
      v63 = &v141[v135];
      v64 = v140 - 1;
      v65 = &v139[v135];
      if ((v144 + 1) == v138)
      {
        v26 = v138;
        v5 = v143;
        v13 = v137;
        v24 = v132;
        v25 = v134;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v146)
    {
      break;
    }

    v77 = *v149;
    v78 = v147;
    (*v149)(v147, v65, v12);
    swift_arrayInitWithTakeFrontToBack();
    v77(v66, v78, v12);
    v66 += v145;
    v65 += v145;
    v58 = __CFADD__(v64++, 1);
    if (v58)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_231DD1184(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v84 = a4;
  v79 = sub_231E0F950();
  v7 = *(v79 - 8);
  v8 = MEMORY[0x28223BE20](v79);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v67 - v10;
  v83 = sub_231E10010();
  v11 = MEMORY[0x28223BE20](v83);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v81 = &v67 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v17;
  v87 = a1;
  v86 = v84;
  v74 = (v7 + 8);
  v75 = (v14 + 16);
  v73 = (v14 + 8);
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    v42 = v84;
    sub_231CC0498(a2, v19 / v17, v84, MEMORY[0x277D42240]);
    v43 = v42 + v22 * v17;
    v44 = -v17;
    v45 = v43;
    v82 = a1;
    v69 = v44;
LABEL_36:
    v46 = a2 + v44;
    v47 = a3;
    v67 = v45;
    v48 = v45;
    v70 = a2 + v44;
    v71 = a2;
    while (1)
    {
      if (v43 <= v84)
      {
        v87 = a2;
        v85 = v48;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v68 = v48;
      v80 = v47 + v44;
      v49 = v43 + v44;
      v50 = v43;
      v51 = *v75;
      v52 = v46;
      v53 = v83;
      v54 = v47;
      (*v75)(v81, v43 + v44, v83);
      v55 = v76;
      v51(v76, v52, v53);
      v56 = v77;
      sub_231E0FFA0();
      v57 = v78;
      sub_231E0FFA0();
      LODWORD(v72) = sub_231E0F8D0();
      v58 = *v74;
      v59 = v57;
      v60 = v79;
      (*v74)(v59, v79);
      v58(v56, v60);
      v61 = *v73;
      (*v73)(v55, v53);
      v61(v81, v53);
      if (v72)
      {
        v43 = v50;
        a3 = v80;
        if (v54 < v71 || v80 >= v71)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v68;
          v44 = v69;
          a1 = v82;
        }

        else
        {
          v65 = v68;
          v44 = v69;
          v45 = v68;
          v18 = v54 == v71;
          v66 = v70;
          a2 = v70;
          a1 = v82;
          if (!v18)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v66;
            v45 = v65;
          }
        }

        goto LABEL_36;
      }

      v62 = v80;
      if (v54 < v50 || v80 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v62;
        v43 = v49;
        v48 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
      }

      else
      {
        v48 = v49;
        v18 = v50 == v54;
        v47 = v80;
        v43 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v62;
          v43 = v49;
          v48 = v49;
        }
      }
    }

    v87 = a2;
    v85 = v67;
  }

  else
  {
    v23 = v84;
    sub_231CC0498(a1, (a2 - a1) / v17, v84, MEMORY[0x277D42240]);
    v71 = v17;
    v72 = v23 + v21 * v17;
    v85 = v72;
    v80 = a3;
    while (v84 < v72 && a2 < a3)
    {
      v82 = a1;
      v25 = *v75;
      v26 = v81;
      v27 = v83;
      (*v75)(v81, a2, v83);
      v28 = v76;
      v25(v76, v84, v27);
      v29 = v77;
      sub_231E0FFA0();
      v30 = v78;
      sub_231E0FFA0();
      v31 = sub_231E0F8D0();
      v32 = a2;
      v33 = *v74;
      v34 = v30;
      v35 = v79;
      (*v74)(v34, v79);
      v33(v29, v35);
      v36 = *v73;
      (*v73)(v28, v27);
      v36(v26, v27);
      if (v31)
      {
        v37 = v71;
        a2 = v32 + v71;
        v38 = v82;
        if (v82 < v32 || v82 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
        }

        else
        {
          a3 = v80;
          if (v82 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v37 = v71;
        v40 = v84 + v71;
        v38 = v82;
        if (v82 < v84 || v82 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
          a2 = v32;
        }

        else
        {
          a3 = v80;
          a2 = v32;
          if (v82 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v86 = v40;
        v84 = v40;
      }

      a1 = v38 + v37;
      v87 = a1;
    }
  }

LABEL_58:
  sub_231DD1818(&v87, &v86, &v85);
  return 1;
}

uint64_t sub_231DD1818(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_231E10010();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231DD18F8(void *a1)
{
  v1 = [a1 assistantDefinedSchemas];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231CC1784(0, &qword_27DD75458, 0x277D23768);
  v3 = sub_231E11870();

  return v3;
}

uint64_t sub_231DD1968(void *a1)
{
  v1 = [a1 domain];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231E11620();

  return v3;
}

unint64_t sub_231DD19E0()
{
  result = qword_2814CBC60;
  if (!qword_2814CBC60)
  {
    sub_231E0F950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814CBC60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_18(uint64_t a1, uint64_t a2)
{

  return sub_231E12100();
}

void OUTLINED_FUNCTION_24_12(uint64_t a1@<X8>)
{
  *(a1 - 256) = 0;
  *(v1 - 496) = 0;
  *(v1 - 592) = 0;
  *(v1 - 504) = 0;
}

void OUTLINED_FUNCTION_27_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_39_7(uint64_t result)
{
  *(v2 - 256) = v1 & 0xC000000000000001;
  *(v2 - 248) = result;
  *(v2 - 264) = v1 & 0xFFFFFFFFFFFFFF8;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_7()
{
}

uint64_t OUTLINED_FUNCTION_48_9(uint64_t a1)
{

  return sub_231CC154C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_49_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_56_12(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_6()
{
}

unint64_t OUTLINED_FUNCTION_63_8(uint64_t a1, unint64_t a2)
{

  return sub_231CB5000(a1, a2, (v2 - 128));
}

void sub_231DD1BF0()
{
  OUTLINED_FUNCTION_0();
  v0 = sub_231E115F0();
  v1 = sub_231E115F0();
  OUTLINED_FUNCTION_59_0();
  v2 = PPSCreateTelemetryIdentifier();

  qword_2814CDF78 = v2;
}

void sub_231DD1C74(uint64_t a1)
{
  v3 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_138_2();
  if (_MergedGlobals_4 != -1)
  {
    swift_once();
  }

  if (qword_2814CDF78)
  {
    sub_231DD1E58(a1);
    v13 = sub_231E11520();

    PPSSendTelemetry();
  }

  else
  {
    v7 = sub_231CB4EEC();
    (*(v5 + 16))(v1, v7, v3);
    v8 = sub_231E10E10();
    v9 = sub_231E11AE0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_231CAE000, v8, v9, "Analytics: Failed to create PowerLog telemetry identifier. Unable to log to PowerLog.", v10, 2u);
      OUTLINED_FUNCTION_30();
    }

    v11 = OUTLINED_FUNCTION_48();
    v12(v11);
  }
}

void sub_231DD1E58(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_231CF45B4(*(a1 + 48) + 40 * (v10 | (v8 << 6)), __src);
    sub_231DA3AF0();
    memcpy(__dst, __src, sizeof(__dst));
    sub_231DA3AF0();
    if (*&v27[24])
    {
      sub_231CE1044(v27, v28);
      memcpy(v27, __dst, sizeof(v27));
      sub_231CE1044(v28, v26);
      v11 = *(v2 + 16);
      if (*(v2 + 24) <= v11)
      {
        sub_231DE2C30(v11 + 1, 1);
        v2 = v31;
      }

      v12 = sub_231E11D00();
      v13 = v2 + 64;
      v14 = -1 << *(v2 + 32);
      v15 = v12 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v2 + 64 + 8 * (v15 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v14) >> 6;
        while (++v16 != v20 || (v19 & 1) == 0)
        {
          v21 = v16 == v20;
          if (v16 == v20)
          {
            v16 = 0;
          }

          v19 |= v21;
          v22 = *(v13 + 8 * v16);
          if (v22 != -1)
          {
            v17 = __clz(__rbit64(~v22)) + (v16 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_27;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v2 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v23 = *(v2 + 48) + 40 * v17;
      v24 = *v27;
      v25 = *&v27[16];
      *(v23 + 32) = *&v27[32];
      *v23 = v24;
      *(v23 + 16) = v25;
      sub_231CE1044(v26, (*(v2 + 56) + 32 * v17));
      ++*(v2 + 16);
      v18 = &v27[40];
    }

    else
    {
      sub_231CC154C(__dst, &qword_27DD757F0, &qword_231E229F0);
      v18 = v27;
    }

    sub_231CC154C(v18, &dword_27DD741E0, &qword_231E15D70);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_231DD2154()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75460, &qword_231E20420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231E138E0;
  OUTLINED_FUNCTION_51_3();
  *(v1 + 32) = 0xD000000000000014;
  *(v1 + 40) = v2;
  sub_231D6020C();

  nullsub_1();
  v6 = sub_231D6024C(v3, v4, v5, 0);

  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_231CC1784(0, &qword_2814CBD70, 0x277CCABB0);
  OUTLINED_FUNCTION_59_0();
  v7 = sub_231E11530();
  v8 = sub_231E115F0();
  sub_231DDF9BC(v7);

  sub_231CC1784(0, &qword_2814CAEB0, 0x277D82BB8);
  v9 = sub_231E11520();

  OUTLINED_FUNCTION_88_4();
  AnalyticsSendEvent();
}

PSUSummarizationAnalytics __swiftcall PSUSummarizationAnalytics.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_231DD2398(char a1)
{
  result = 1818845549;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = 0x6163696669746F6ELL;
      break;
    case 3:
      OUTLINED_FUNCTION_0();
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x657268546C69616DLL;
      break;
    case 5:
      result = 0x6172546F69647561;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_231DD246C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_231DD247C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD246C(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD24A4()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DA2B1C();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD24EC()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DA2B1C();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

void sub_231DD2524()
{
  OUTLINED_FUNCTION_118();
  v1 = sub_231E10E30();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_138_2();
  OUTLINED_FUNCTION_88_4();
  v5 = sub_231E11690();
  v7 = v6;
  v8 = v5 == 0x79726F74736968 && v6 == 0xE700000000000000;
  if (v8 || (v9 = v5, (OUTLINED_FUNCTION_55_9(0x79726F74736968, 0xE700000000000000) & 1) != 0) || ((OUTLINED_FUNCTION_0(), v9 == 0xD000000000000011) ? (v11 = v10 == v7) : (v11 = 0), v11 || (OUTLINED_FUNCTION_55_9(0xD000000000000011, v10) & 1) != 0 || (v9 == 0x676E696D6F636E69 ? (v12 = v7 == 0xE800000000000000) : (v12 = 0), v12 || (OUTLINED_FUNCTION_55_9(0x676E696D6F636E69, 0xE800000000000000) & 1) != 0 || (v9 == 0x676E696D6F637075 ? (v13 = v7 == 0xEE0064657373696DLL) : (v13 = 0), v13 || (OUTLINED_FUNCTION_55_9(0x676E696D6F637075, 0xEE0064657373696DLL) & 1) != 0 || (v9 == 0x64746E6572727563 ? (v14 = v7 == 0xED00007473656769) : (v14 = 0), v14 || (OUTLINED_FUNCTION_55_9(0x64746E6572727563, 0xED00007473656769) & 1) != 0 || (v9 == 0x676E696D6F637075 ? (v15 = v7 == 0xEE00747365676964) : (v15 = 0), v15 || (OUTLINED_FUNCTION_55_9(0x676E696D6F637075, 0xEE00747365676964) & 1) != 0 || (v9 == 0x6567696464616572 ? (v16 = v7 == 0xEA00000000007473) : (v16 = 0), v16 || (OUTLINED_FUNCTION_55_9(0x6567696464616572, 0xEA00000000007473) & 1) != 0 || ((OUTLINED_FUNCTION_0(), v9 == 0xD000000000000011) ? (v18 = v17 == v7) : (v18 = 0), v18 || (OUTLINED_FUNCTION_55_9(0xD000000000000011, v17) & 1) != 0 || ((OUTLINED_FUNCTION_0(), v9 == 0xD000000000000010) ? (v20 = v19 == v7) : (v20 = 0), v20 || (OUTLINED_FUNCTION_55_9(0xD000000000000010, v19) & 1) != 0 || ((OUTLINED_FUNCTION_0(), v9 == 0xD000000000000014) ? (v22 = v21 == v7) : (v22 = 0), v22 || (OUTLINED_FUNCTION_55_9(0xD000000000000014, v21) & 1) != 0))))))))))
  {

    goto LABEL_7;
  }

  if (v9 == 0x6867696C68676968 && v7 == 0xEB00000000646574)
  {

LABEL_69:

    goto LABEL_7;
  }

  v24 = OUTLINED_FUNCTION_55_9(0x6867696C68676968, 0xEB00000000646574);

  if (v24)
  {
    goto LABEL_69;
  }

  sub_231CB4EEC();
  OUTLINED_FUNCTION_180_2();
  v25(v0);

  v26 = sub_231E10E10();
  v27 = sub_231E11AF0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_67();
    *v28 = 136446210;
    v29 = OUTLINED_FUNCTION_88_4();
    v32 = sub_231CB5000(v29, v30, v31);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_231CAE000, v26, v27, "Unknown section type: %{public}s", v28, 0xCu);
    OUTLINED_FUNCTION_210_0();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  else
  {
  }

  (*(v3 + 8))(v0, v1);
LABEL_7:
  OUTLINED_FUNCTION_113();
}

unint64_t sub_231DD29C4(unint64_t result)
{
  if (result >= 0xC)
  {
    return 12;
  }

  return result;
}

unint64_t sub_231DD29D4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD29C4(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD29FC()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE71C8();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD2A44()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE71C8();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

const char *sub_231DD2A7C(char a1, char a2)
{
  switch(a1)
  {
    case 1:
      result = "Message.Total";
      switch(a2)
      {
        case 1:
          result = "Message.SpotlightFiltering";
          break;
        case 2:
          result = "Message.ContextRetrieval";
          break;
        case 3:
          result = "Message.AttachmentResolution";
          break;
        case 4:
          result = "Message.SummarizationFiltering";
          break;
        case 5:
          result = "Message.PowerBudget";
          break;
        case 6:
          result = "Message.SummaryGeneration";
          break;
        case 7:
          result = "Message.Writeback";
          break;
        case 8:
          result = "Message.ManualSummaryGeneration";
          break;
        case 9:
          result = "Message.Urgency";
          break;
        case 10:
          result = "Message.UrgencyFiltering";
          break;
        case 11:
          result = "Message.UrgencyContext";
          break;
        case 12:
          result = "Message.UrgencyClassification";
          break;
        case 13:
          result = "Message.Everything";
          break;
        case 14:
          result = "Message.PreWarming";
          break;
        case 15:
          result = "Message.SearchableItemToEntityConversion";
          break;
        case 16:
          result = "Message.WaitingInQueue";
          break;
        case 17:
          result = "Message.SpotlightIndexing";
          break;
        case 18:
          goto LABEL_13;
        case 19:
          result = "Message.PriorityFeedbackClassification";
          break;
        default:
          return result;
      }

      break;
    case 2:
      result = "Notification.Total";
      switch(a2)
      {
        case 1:
          result = "Notification.SpotlightFiltering";
          break;
        case 2:
          result = "Notification.ContextRetrieval";
          break;
        case 3:
          result = "Notification.AttachmentResolution";
          break;
        case 4:
          result = "Notification.SummarizationFiltering";
          break;
        case 5:
          result = "Notification.PowerBudget";
          break;
        case 6:
          result = "Notification.SummaryGeneration";
          break;
        case 7:
          result = "Notification.Writeback";
          break;
        case 8:
          result = "Notification.ManualSummaryGeneration";
          break;
        case 9:
          result = "Notification.Urgency";
          break;
        case 10:
          result = "Notification.UrgencyFiltering";
          break;
        case 11:
          result = "Notification.UrgencyContext";
          break;
        case 12:
          result = "Notification.UrgencyClassification";
          break;
        case 13:
          result = "Notification.Everything";
          break;
        case 14:
          result = "Notification.PreWarming";
          break;
        case 15:
          result = "Notification.SearchableItemToEntityConversion";
          break;
        case 16:
          result = "Notification.WaitingInQueue";
          break;
        case 17:
          result = "Notification.SpotlightIndexing";
          break;
        case 18:
          result = "Notification.Initialization";
          break;
        case 19:
          result = "Notification.PriorityFeedbackClassification";
          break;
        default:
          return result;
      }

      break;
    case 3:
      result = "NotificationStack.Total";
      switch(a2)
      {
        case 1:
          result = "NotificationStack.SpotlightFiltering";
          break;
        case 2:
          result = "NotificationStack.ContextRetrieval";
          break;
        case 3:
          result = "NotificationStack.AttachmentResolution";
          break;
        case 4:
          result = "NotificationStack.SummarizationFiltering";
          break;
        case 5:
          result = "NotificationStack.PowerBudget";
          break;
        case 6:
          result = "NotificationStack.SummaryGeneration";
          break;
        case 7:
          result = "NotificationStack.Writeback";
          break;
        case 8:
          result = "NotificationStack.ManualSummaryGeneration";
          break;
        case 9:
          result = "NotificationStack.Urgency";
          break;
        case 10:
          result = "NotificationStack.UrgencyFiltering";
          break;
        case 11:
          result = "NotificationStack.UrgencyContext";
          break;
        case 12:
          result = "NotificationStack.UrgencyClassification";
          break;
        case 13:
          result = "NotificationStack.Everything";
          break;
        case 14:
          result = "NotificationStack.PreWarming";
          break;
        case 15:
          result = "NotificationStack.SearchableItemToEntityConversion";
          break;
        case 16:
          result = "NotificationStack.WaitingInQueue";
          break;
        case 17:
          result = "NotificationStack.SpotlightIndexing";
          break;
        case 18:
          result = "NotificationStack.Initialization";
          break;
        case 19:
          result = "NotificationStack.PriorityFeedbackClassification";
          break;
        default:
          return result;
      }

      break;
    case 4:
      result = "MailThread.AttachmentResolutionTotal";
      switch(a2)
      {
        case 3:
          return result;
        case 6:
          goto LABEL_5;
        case 13:
          result = "MailThread.Everything";
          break;
        default:
          goto LABEL_13;
      }

      break;
    case 5:
      result = "AudioTranscript.Total";
      switch(a2)
      {
        case 1:
          result = "AudioTranscript.SpotlightFiltering";
          break;
        case 2:
        case 3:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 19:
          goto LABEL_13;
        case 4:
          result = "AudioTranscript.SummarizationFiltering";
          break;
        case 5:
          result = "AudioTranscript.PowerBudget";
          break;
        case 6:
          result = "AudioTranscript.SummaryGeneration";
          break;
        case 7:
          result = "AudioTranscript.Writeback";
          break;
        case 13:
          result = "AudioTranscript.Everything";
          break;
        case 14:
          result = "AudioTranscript.PreWarming";
          break;
        case 15:
          result = "AudioTranscript.SearchableItemToEntityConversion";
          break;
        case 16:
          result = "AudioTranscript.WaitingInQueue";
          break;
        case 17:
          result = "AudioTranscript.SpotlightIndexing";
          break;
        case 18:
          result = "AudioTranscript.Initialization";
          break;
        default:
          return result;
      }

      break;
    default:
      result = "Mail.Total";
      switch(a2)
      {
        case 1:
          result = "Mail.SpotlightFiltering";
          break;
        case 2:
          result = "Mail.ContextRetrieval";
          break;
        case 3:
          result = "Mail.AttachmentResolution";
          break;
        case 4:
          result = "Mail.SummarizationFiltering";
          break;
        case 5:
          result = "Mail.PowerBudget";
          break;
        case 6:
          result = "Mail.SummaryGeneration";
          break;
        case 7:
          result = "Mail.Writeback";
          break;
        case 8:
LABEL_5:
          result = "Mail.ManualSummaryGeneration";
          break;
        case 9:
          result = "Mail.Urgency";
          break;
        case 10:
          result = "Mail.UrgencyFiltering";
          break;
        case 11:
          result = "Mail.UrgencyContext";
          break;
        case 12:
          result = "Mail.UrgencyClassification";
          break;
        case 13:
          result = "Mail.Everything";
          break;
        case 14:
          result = "Mail.PreWarming";
          break;
        case 15:
          result = "Mail.SearchableItemToEntityConversion";
          break;
        case 16:
          result = "Mail.WaitingInQueue";
          break;
        case 17:
          result = "Mail.SpotlightIndexing";
          break;
        case 18:
LABEL_13:
          result = 0;
          break;
        case 19:
          result = "Mail.PriorityFeedbackClassification";
          break;
        default:
          return result;
      }

      break;
  }

  return result;
}

uint64_t sub_231DD32CC()
{
  sub_231DE2AE0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3304()
{
  sub_231DE2AE0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD333C()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v1 == 0x6C61746F74 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_15_2(0x6C61746F74, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_0();
    v6 = v1 == 0xD000000000000012 && v5 == v0;
    if (v6 || (OUTLINED_FUNCTION_15_2(0xD000000000000012, v5) & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_63_9();
      v8 = v3 && v7 == v0;
      if (v8 || (OUTLINED_FUNCTION_15_2(0xD000000000000010, v7) & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_0();
        v10 = v1 == 0xD000000000000014 && v9 == v0;
        if (v10 || (OUTLINED_FUNCTION_15_2(0xD000000000000014, v9) & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_0();
          v12 = v1 == 0xD000000000000016 && v11 == v0;
          if (v12 || (OUTLINED_FUNCTION_15_2(0xD000000000000016, v11) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = OUTLINED_FUNCTION_168_2();
            v15 = v1 == v13 && v0 == v14;
            if (v15 || (OUTLINED_FUNCTION_15_2(v13, v14) & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_0();
              v17 = v1 == 0xD000000000000011 && v16 == v0;
              if (v17 || (OUTLINED_FUNCTION_15_2(0xD000000000000011, v16) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v18 = v1 == 0x6361626574697277 && v0 == 0xE90000000000006BLL;
                if (v18 || (OUTLINED_FUNCTION_15_2(0x6361626574697277, 0xE90000000000006BLL) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_0();
                  v20 = v1 == 0xD000000000000017 && v19 == v0;
                  if (v20 || (OUTLINED_FUNCTION_15_2(0xD000000000000017, v19) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v21 = v1 == 0x79636E65677275 && v0 == 0xE700000000000000;
                    if (v21 || (OUTLINED_FUNCTION_15_2(0x79636E65677275, 0xE700000000000000) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_63_9();
                      v23 = v3 && v22 == v0;
                      if (v23 || (OUTLINED_FUNCTION_15_2(0xD000000000000010, v22) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v24 = OUTLINED_FUNCTION_148_2();
                        v26 = v1 == v24 && v0 == v25;
                        if (v26 || (OUTLINED_FUNCTION_15_2(v24, v25) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_0();
                          v28 = v1 == 0xD000000000000015 && v27 == v0;
                          if (v28 || (OUTLINED_FUNCTION_15_2(0xD000000000000015, v27) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v29 = v1 == 0x6968747972657665 && v0 == 0xEA0000000000676ELL;
                            if (v29 || (OUTLINED_FUNCTION_15_2(0x6968747972657665, 0xEA0000000000676ELL) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v30 = v1 == 0x696D726157657270 && v0 == 0xEA0000000000676ELL;
                              if (v30 || (OUTLINED_FUNCTION_15_2(0x696D726157657270, 0xEA0000000000676ELL) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_0();
                                v32 = v1 == 0xD000000000000020 && v31 == v0;
                                if (v32 || (OUTLINED_FUNCTION_15_2(0xD000000000000020, v31) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v33 = OUTLINED_FUNCTION_147_2();
                                  v35 = v1 == v33 && v0 == v34;
                                  if (v35 || (OUTLINED_FUNCTION_15_2(v33, v34) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_0();
                                    v37 = v1 == 0xD000000000000011 && v36 == v0;
                                    if (v37 || (OUTLINED_FUNCTION_15_2(0xD000000000000011, v36) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v38 = OUTLINED_FUNCTION_146_1();
                                      v40 = v1 == v38 && v0 == v39;
                                      if (v40 || (OUTLINED_FUNCTION_15_2(v38, v39) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v41 = OUTLINED_FUNCTION_196_0();
                                        if (v3 && v42 == v0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          OUTLINED_FUNCTION_15_2(v41, v42);
                                          OUTLINED_FUNCTION_10_1();
                                          if (v1)
                                          {
                                            return 19;
                                          }

                                          else
                                          {
                                            return 20;
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

void sub_231DD3798(char a1)
{
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 6:
    case 8:
    case 15:
    case 17:
    case 19:
      OUTLINED_FUNCTION_217_1();
      break;
    case 2:
    case 10:
      OUTLINED_FUNCTION_0();
      break;
    case 5:
      OUTLINED_FUNCTION_168_2();
      break;
    case 11:
      OUTLINED_FUNCTION_148_2();
      break;
    case 12:
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_72_5(5);
      break;
    case 16:
      OUTLINED_FUNCTION_147_2();
      break;
    case 18:
      OUTLINED_FUNCTION_146_1();
      break;
    default:
      return;
  }
}

uint64_t sub_231DD39F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DD333C();
  *a1 = result;
  return result;
}

uint64_t sub_231DD3A24()
{
  sub_231DE254C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3A5C()
{
  sub_231DE254C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3A94()
{
  sub_231DE2B34();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3ACC()
{
  sub_231DE2B34();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3B04()
{
  sub_231DE2798();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3B3C()
{
  sub_231DE2798();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3B74()
{
  sub_231DE25F4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3BAC()
{
  sub_231DE25F4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3BE4()
{
  sub_231DE293C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3C1C()
{
  sub_231DE293C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3C54()
{
  sub_231DE2A38();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3C8C()
{
  sub_231DE2A38();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3CC4()
{
  sub_231DE2744();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3CFC()
{
  sub_231DE2744();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3D34()
{
  sub_231DE25A0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3D6C()
{
  sub_231DE25A0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3DA4()
{
  sub_231DE26F0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3DDC()
{
  sub_231DE26F0();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3E14()
{
  sub_231DE2B88();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3E4C()
{
  sub_231DE2B88();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3E84()
{
  sub_231DE2648();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3EBC()
{
  sub_231DE2648();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3EF4()
{
  sub_231DE2A8C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3F2C()
{
  sub_231DE2A8C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3F64()
{
  sub_231DE29E4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD3F9C()
{
  sub_231DE29E4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD3FD4()
{
  sub_231DE2BDC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD400C()
{
  sub_231DE2BDC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD4044()
{
  sub_231DE27EC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD407C()
{
  sub_231DE27EC();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD40B4()
{
  sub_231DE28E8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD40EC()
{
  sub_231DE28E8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD4124()
{
  sub_231DE2840();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD415C()
{
  sub_231DE2840();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD4194()
{
  sub_231DE2894();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD41CC()
{
  sub_231DE2894();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD4204()
{
  sub_231DE269C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD423C()
{
  sub_231DE269C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD4274()
{
  sub_231DE2990();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD42AC()
{
  sub_231DE2990();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

void sub_231DD42E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_35_1();
  a22 = v25;
  a23 = v26;
  v156 = v27;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75468, &qword_231E20428);
  OUTLINED_FUNCTION_24();
  v152 = v31;
  v153 = v30;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_189_1(v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75470, &qword_231E20430);
  OUTLINED_FUNCTION_24();
  v149 = v35;
  v150 = v34;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_1();
  v148 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75478, &qword_231E20438);
  OUTLINED_FUNCTION_24();
  v146 = v39;
  v147 = v38;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_12_1();
  v145 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75480, &qword_231E20440);
  OUTLINED_FUNCTION_24();
  v143 = v43;
  v144 = v42;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_12_1();
  v142 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75488, &qword_231E20448);
  OUTLINED_FUNCTION_24();
  v140 = v47;
  v141 = v46;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_12_1();
  v139 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75490, &qword_231E20450);
  OUTLINED_FUNCTION_24();
  v137 = v51;
  v138 = v50;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75498, &qword_231E20458);
  OUTLINED_FUNCTION_0_7(v54, &a20);
  v136[0] = v55;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754A0, &qword_231E20460);
  OUTLINED_FUNCTION_0_7(v58, &a17);
  v135 = v59;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754A8, &qword_231E20468);
  OUTLINED_FUNCTION_0_7(v62, &a14);
  v134 = v63;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754B0, &qword_231E20470);
  OUTLINED_FUNCTION_0_7(v66, &v157);
  v133 = v67;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754B8, &qword_231E20478);
  OUTLINED_FUNCTION_0_7(v70, v155);
  v132 = v71;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754C0, &qword_231E20480);
  OUTLINED_FUNCTION_0_7(v74, &v152);
  v131 = v75;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754C8, &qword_231E20488);
  OUTLINED_FUNCTION_0_7(v78, &v149);
  v130 = v79;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754D0, &qword_231E20490);
  OUTLINED_FUNCTION_0_7(v82, &v146);
  v129 = v83;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754D8, &qword_231E20498);
  OUTLINED_FUNCTION_0_7(v86, &v143);
  v128 = v87;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754E0, &qword_231E204A0);
  OUTLINED_FUNCTION_0_7(v90, &v140);
  v127 = v91;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754E8, &qword_231E204A8);
  OUTLINED_FUNCTION_0_7(v94, &v137);
  v126 = v95;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754F0, &qword_231E204B0);
  OUTLINED_FUNCTION_0_7(v98, v136);
  v125 = v99;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_16_2(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD754F8, &qword_231E204B8);
  OUTLINED_FUNCTION_24();
  v124 = v103;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_0_9();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75500, &qword_231E204C0);
  OUTLINED_FUNCTION_24();
  v123[1] = v106;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_81_7();
  v155[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75508, &qword_231E204C8);
  OUTLINED_FUNCTION_24();
  v109 = v108;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v110);
  v112 = v123 - v111;
  OUTLINED_FUNCTION_103_4(v29);
  sub_231DE254C();
  v154 = v112;
  sub_231E12270();
  switch(v156)
  {
    case 1:
      OUTLINED_FUNCTION_31_0();
      sub_231DE2B88();
      v118 = v154;
      v119 = v155[0];
      sub_231E12000();
      (*(v124 + 8))(v23, v102);
      (*(v109 + 8))(v118, v119);
      goto LABEL_25;
    case 2:
      a13 = 2;
      sub_231DE2B34();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.ContextRetrievalCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = v136;
      goto LABEL_21;
    case 3:
      a13 = 3;
      sub_231DE2AE0();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.AttachmentResolutionCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = &v137;
      goto LABEL_21;
    case 4:
      a13 = 4;
      sub_231DE2A8C();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.SummarizationFilteringCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = &v140;
      goto LABEL_21;
    case 5:
      a13 = 5;
      sub_231DE2A38();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.PowerBudgetCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = &v143;
      goto LABEL_21;
    case 6:
      a13 = 6;
      sub_231DE29E4();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.SummaryGenerationCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = &v146;
      goto LABEL_21;
    case 7:
      a13 = 7;
      sub_231DE2990();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.WritebackCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = &v149;
      goto LABEL_21;
    case 8:
      a13 = 8;
      sub_231DE293C();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.ManualSummaryGenerationCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = &v152;
      goto LABEL_21;
    case 9:
      a13 = 9;
      sub_231DE28E8();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.UrgencyCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = v155;
      goto LABEL_21;
    case 10:
      a13 = 10;
      sub_231DE2894();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.UrgencyFilteringCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = &v157;
      goto LABEL_21;
    case 11:
      a13 = 11;
      sub_231DE2840();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.UrgencyContextCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = &a14;
      goto LABEL_21;
    case 12:
      a13 = 12;
      sub_231DE27EC();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.UrgencyClassificationCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = &a17;
      goto LABEL_21;
    case 13:
      a13 = 13;
      sub_231DE2798();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.EverythingCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v117 = &a20;
LABEL_21:
      v115 = *(v117 - 32);
      break;
    case 14:
      a13 = 14;
      sub_231DE2744();
      OUTLINED_FUNCTION_20_17(&type metadata for SummarizationAnalytics.StepKind.PreWarmingCodingKeys, &a13);
      v116 = v137;
      v115 = v138;
      goto LABEL_23;
    case 15:
      a13 = 15;
      sub_231DE26F0();
      v24 = v139;
      OUTLINED_FUNCTION_27_12(&type metadata for SummarizationAnalytics.StepKind.SearchableItemToEntityConversionCodingKeys, &a13);
      v116 = v140;
      v115 = v141;
      goto LABEL_23;
    case 16:
      a13 = 16;
      sub_231DE269C();
      v24 = v142;
      OUTLINED_FUNCTION_27_12(&type metadata for SummarizationAnalytics.StepKind.WaitingInQueueCodingKeys, &a13);
      v116 = v143;
      v115 = v144;
      goto LABEL_23;
    case 17:
      a13 = 17;
      sub_231DE2648();
      v24 = v145;
      OUTLINED_FUNCTION_27_12(&type metadata for SummarizationAnalytics.StepKind.SpotlightIndexingCodingKeys, &a13);
      v116 = v146;
      v115 = v147;
      goto LABEL_23;
    case 18:
      a13 = 18;
      sub_231DE25F4();
      v24 = v148;
      OUTLINED_FUNCTION_27_12(&type metadata for SummarizationAnalytics.StepKind.InitializationCodingKeys, &a13);
      v116 = v149;
      v115 = v150;
      goto LABEL_23;
    case 19:
      a13 = 19;
      sub_231DE25A0();
      v24 = v151;
      OUTLINED_FUNCTION_27_12(&type metadata for SummarizationAnalytics.StepKind.PriorityFeedbackClassificationCodingKeys, &a13);
      v116 = v152;
      v115 = v153;
LABEL_23:
      v114 = *(v116 + 8);
      v113 = v24;
      break;
    default:
      a13 = 0;
      sub_231DE2BDC();
      OUTLINED_FUNCTION_27_12(&type metadata for SummarizationAnalytics.StepKind.TotalCodingKeys, &a13);
      v113 = OUTLINED_FUNCTION_7_2();
      v115 = v105;
      break;
  }

  v114(v113, v115);
  v120 = OUTLINED_FUNCTION_174_2();
  v122(v120, v121);
LABEL_25:
  OUTLINED_FUNCTION_33_0();
}

void sub_231DD50E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_35_1();
  a22 = v25;
  a23 = v26;
  v164[0] = v23;
  v28 = v27;
  v152[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75510, &qword_231E204D0);
  OUTLINED_FUNCTION_24();
  v151[1] = v29;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_1();
  v159[1] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75518, &qword_231E204D8);
  OUTLINED_FUNCTION_0_7(v32, &a20);
  v150[1] = v33;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_189_1(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75520, &qword_231E204E0);
  OUTLINED_FUNCTION_0_7(v36, &a18);
  v149[4] = v37;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_12_1();
  v158[1] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75528, &qword_231E204E8);
  OUTLINED_FUNCTION_0_7(v40, &a16);
  v149[2] = v41;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_12_1();
  v158[0] = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75530, &qword_231E204F0);
  OUTLINED_FUNCTION_0_7(v44, &a14);
  v149[0] = v45;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_12_1();
  v157[2] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75538, &qword_231E204F8);
  OUTLINED_FUNCTION_0_7(v48, &a9);
  v148 = v49;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_12_1();
  v157[1] = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75540, &qword_231E20500);
  OUTLINED_FUNCTION_0_7(v52, v164);
  v147 = v53;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_12_1();
  v157[0] = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75548, &qword_231E20508);
  OUTLINED_FUNCTION_0_7(v56, &v162);
  v146 = v57;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_12_1();
  v156[1] = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75550, &qword_231E20510);
  OUTLINED_FUNCTION_0_7(v60, &v160);
  v145 = v61;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_12_1();
  v156[0] = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75558, &qword_231E20518);
  OUTLINED_FUNCTION_0_7(v64, v159);
  v144 = v65;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_12_1();
  v155 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75560, &qword_231E20520);
  OUTLINED_FUNCTION_0_7(v68, v158);
  v143 = v69;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_12_1();
  v154[1] = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75568, &qword_231E20528);
  OUTLINED_FUNCTION_0_7(v72, v157);
  v142 = v73;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_12_1();
  v162 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75570, &qword_231E20530);
  OUTLINED_FUNCTION_0_7(v76, v156);
  v141 = v77;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_12_1();
  v161 = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75578, &qword_231E20538);
  OUTLINED_FUNCTION_0_7(v80, &v155);
  v140[17] = v81;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_12_1();
  v160 = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75580, &qword_231E20540);
  OUTLINED_FUNCTION_0_7(v84, v154);
  v140[15] = v85;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_12_1();
  v154[0] = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75588, &qword_231E20548);
  OUTLINED_FUNCTION_0_7(v88, v153);
  v140[13] = v89;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_12_1();
  v153[1] = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75590, &qword_231E20550);
  OUTLINED_FUNCTION_0_7(v92, v152);
  v140[11] = v93;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_12_1();
  v153[0] = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75598, &qword_231E20558);
  OUTLINED_FUNCTION_0_7(v96, v151);
  v140[9] = v97;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_12_1();
  v152[1] = v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755A0, &qword_231E20560);
  OUTLINED_FUNCTION_0_7(v100, v150);
  v140[7] = v101;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v102);
  v104 = v140 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755A8, &qword_231E20568);
  OUTLINED_FUNCTION_24();
  v140[6] = v106;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v107);
  v109 = v140 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755B0, &unk_231E20570);
  OUTLINED_FUNCTION_24();
  v112 = v111;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_0_9();
  v163 = v28;
  OUTLINED_FUNCTION_214_1();
  sub_231DE254C();
  OUTLINED_FUNCTION_184_1();
  v114 = v164[0];
  sub_231E12260();
  if (v114)
  {
    goto LABEL_8;
  }

  v140[4] = v109;
  v140[3] = v105;
  v140[5] = v104;
  v115 = v161;
  v116 = v162;
  v164[0] = v112;
  v117 = sub_231E11FE0();
  v121 = sub_231CCF16C(v117, 0);
  if (v119 == v120 >> 1)
  {
LABEL_7:
    v132 = v24;
    v133 = sub_231E11DC0();
    swift_allocError();
    v135 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10);
    *v135 = &type metadata for SummarizationAnalytics.StepKind;
    v136 = sub_231E11F40();
    OUTLINED_FUNCTION_32_0(v136);
    (*(*(v133 - 8) + 104))(v135, *MEMORY[0x277D84160], v133);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v164[0] + 8))(v132, v110);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v163);
LABEL_9:
    OUTLINED_FUNCTION_33_0();
    return;
  }

  v140[2] = 0;
  if (v119 < (v120 >> 1))
  {
    v122 = *(v118 + v119);
    sub_231DE3580(v119 + 1, v120 >> 1, v121, v118, v119, v120);
    v124 = v123;
    v126 = v125;
    v128 = v127;
    swift_unknownObjectRelease();
    if (v126 == v128 >> 1)
    {
      v140[1] = v124;
      switch(v122)
      {
        case 1:
          OUTLINED_FUNCTION_31_0();
          sub_231DE2B88();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.SpotlightFilteringCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = v150;
          goto LABEL_28;
        case 2:
          a13 = 2;
          sub_231DE2B34();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.ContextRetrievalCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = v151;
          goto LABEL_28;
        case 3:
          a13 = 3;
          sub_231DE2AE0();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.AttachmentResolutionCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = v152;
          goto LABEL_28;
        case 4:
          a13 = 4;
          sub_231DE2A8C();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.SummarizationFilteringCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = v153;
          goto LABEL_28;
        case 5:
          a13 = 5;
          sub_231DE2A38();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.PowerBudgetCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = v154;
          goto LABEL_28;
        case 6:
          a13 = 6;
          sub_231DE29E4();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.SummaryGenerationCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = &v155;
          goto LABEL_28;
        case 7:
          a13 = 7;
          sub_231DE2990();
          OUTLINED_FUNCTION_26_11(&type metadata for SummarizationAnalytics.StepKind.WritebackCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v130 = *(v141 + 8);
          v129 = v115;
          v131 = v156;
          goto LABEL_28;
        case 8:
          a13 = 8;
          sub_231DE293C();
          OUTLINED_FUNCTION_26_11(&type metadata for SummarizationAnalytics.StepKind.ManualSummaryGenerationCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v130 = *(v142 + 8);
          v129 = v116;
          v131 = v157;
          goto LABEL_28;
        case 9:
          a13 = 9;
          sub_231DE28E8();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.UrgencyCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = v158;
          goto LABEL_28;
        case 10:
          a13 = 10;
          sub_231DE2894();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.UrgencyFilteringCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = v159;
          goto LABEL_28;
        case 11:
          a13 = 11;
          sub_231DE2840();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.UrgencyContextCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = &v160;
          goto LABEL_28;
        case 12:
          a13 = 12;
          sub_231DE27EC();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.UrgencyClassificationCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = &v162;
          goto LABEL_28;
        case 13:
          a13 = 13;
          sub_231DE2798();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.EverythingCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = v164;
          goto LABEL_28;
        case 14:
          a13 = 14;
          sub_231DE2744();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.PreWarmingCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = &a9;
          goto LABEL_28;
        case 15:
          a13 = 15;
          sub_231DE26F0();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.SearchableItemToEntityConversionCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = &a14;
          goto LABEL_28;
        case 16:
          a13 = 16;
          sub_231DE269C();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.WaitingInQueueCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = &a16;
          goto LABEL_28;
        case 17:
          a13 = 17;
          sub_231DE2648();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.SpotlightIndexingCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = &a18;
          goto LABEL_28;
        case 18:
          a13 = 18;
          sub_231DE25F4();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.InitializationCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = &a20;
          goto LABEL_28;
        case 19:
          a13 = 19;
          sub_231DE25A0();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.PriorityFeedbackClassificationCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v137 = v152[0];
          goto LABEL_29;
        default:
          a13 = 0;
          sub_231DE2BDC();
          OUTLINED_FUNCTION_15_18(&type metadata for SummarizationAnalytics.StepKind.TotalCodingKeys, &a13);
          OUTLINED_FUNCTION_97_5();
          v129 = OUTLINED_FUNCTION_18_12();
          v131 = v149;
LABEL_28:
          v137 = *(v131 - 32);
LABEL_29:
          v130(v129, v137);
          v138 = OUTLINED_FUNCTION_174_3();
          v139(v138);
          __swift_destroy_boxed_opaque_existential_0(v163);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_231DD6220(unint64_t result)
{
  if (result >= 0x16)
  {
    return 22;
  }

  return result;
}

unint64_t sub_231DD6230(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD6220(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD6258()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7174();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD62A0()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7174();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

uint64_t sub_231DD62D8()
{
  v2 = v0;
  v3 = 0x20676E697373696DLL;
  v4 = OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_exitReason;
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  switch(*(v2 + v4))
  {
    case 3:
      OUTLINED_FUNCTION_12_18();
      return v7 + 15;
    case 4:
      OUTLINED_FUNCTION_12_18();
      return v6 + 19;
    case 5:
      v3 = 0xD000000000000011;
      goto LABEL_11;
    case 6:
      sub_231E11D70();

      OUTLINED_FUNCTION_51_3();
      v29 = 0xD00000000000001ELL;
      v11 = v2 + OBJC_IVAR____TtC22ProactiveSummarization22SummarizationAnalytics_ineligibleForSummarizationReason;
      OUTLINED_FUNCTION_81();
      swift_beginAccess();
      v12 = *(v11 + 16);
      if (v12 == 255)
      {
        v18 = 7104878;
        v20 = 0xE300000000000000;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_25_7();
        sub_231CC3500(v13, v14, v12);
        v15 = OUTLINED_FUNCTION_25_7();
        sub_231CFFD6C(v15, v16, v12);
        v18 = v17;
        v20 = v19;
        v21 = OUTLINED_FUNCTION_25_7();
        sub_231CBA16C(v21, v22, v12);
      }

      MEMORY[0x23837CC20](v18, v20);
      goto LABEL_21;
    case 7:
      OUTLINED_FUNCTION_12_18();
      return v8 + 30;
    case 8:
      OUTLINED_FUNCTION_12_18();
      return v24 + 24;
    case 9:
    case 0xA:
      OUTLINED_FUNCTION_87_8();

      OUTLINED_FUNCTION_51_3();
      v29 = v1 + 1;
      OUTLINED_FUNCTION_81();
      swift_beginAccess();
      v27 = OUTLINED_FUNCTION_25();
      MEMORY[0x23837CC20](v27);
LABEL_21:

      MEMORY[0x23837CC20](41, 0xE100000000000000);
      v3 = v29;
      break;
    case 0xB:
      OUTLINED_FUNCTION_12_18();
      v3 = v5 | 8;
      break;
    case 0xC:
    case 0x13:
      OUTLINED_FUNCTION_12_18();
      v3 = v26 + 11;
      break;
    case 0xD:
    case 0x15:
      OUTLINED_FUNCTION_12_18();
      v3 = v10 + 3;
      break;
    case 0xE:
    case 0x11:
      OUTLINED_FUNCTION_0();
      v3 = 0xD00000000000001BLL;
      break;
    case 0xF:
    case 0x16:
      OUTLINED_FUNCTION_12_18();
      v3 = v25 | 0xC;
      break;
    case 0x10:
      v3 = 0xD000000000000011;
LABEL_11:
      OUTLINED_FUNCTION_0();
      break;
    case 0x12:
      OUTLINED_FUNCTION_12_18();
      v3 = v23 | 0xE;
      break;
    case 0x14:
      OUTLINED_FUNCTION_12_18();
      v3 = v9 | 6;
      break;
    default:
      return v3;
  }

  return v3;
}

uint64_t sub_231DD66B0()
{
  OUTLINED_FUNCTION_300_0();
  OUTLINED_FUNCTION_116_6();
  v2 = OUTLINED_FUNCTION_159_2();
  v5 = v1 == v2 && v3 == v4;
  if (v5 || (OUTLINED_FUNCTION_15_2(v2, 0xE900000000000065) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x65746144646E65 && v0 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_15_2(0x65746144646E65, 0xE700000000000000);
    OUTLINED_FUNCTION_10_1();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231DD674C(char a1)
{
  if (a1)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_231DD6790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DD66B0();
  *a1 = result;
  return result;
}

uint64_t sub_231DD67B8()
{
  sub_231DE333C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD67F0()
{
  sub_231DE333C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD6828(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755B8, &qword_231E20580);
  OUTLINED_FUNCTION_24();
  v6 = v5;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_81_7();
  OUTLINED_FUNCTION_103_4(a1);
  sub_231DE333C();
  OUTLINED_FUNCTION_111_5();
  sub_231E12270();
  sub_231E0F950();
  OUTLINED_FUNCTION_3_32();
  sub_231DE3390(v8);
  OUTLINED_FUNCTION_111_5();
  sub_231E12090();
  if (!v1)
  {
    type metadata accessor for SummarizationAnalytics.Interval.Complete(0);
    OUTLINED_FUNCTION_111_5();
    sub_231E12090();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_231DD69B0()
{
  OUTLINED_FUNCTION_35_1();
  v2 = v1;
  v27 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v24 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_5();
  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755C0, &qword_231E20588);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_125_2();
  v12 = type metadata accessor for SummarizationAnalytics.Interval.Complete(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v16 = v15 - v14;
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_231DE333C();
  sub_231E12260();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v23 = v12;
    OUTLINED_FUNCTION_3_32();
    sub_231DE3390(v17);
    v18 = v25;
    sub_231E11FD0();
    v26 = *(v24 + 32);
    v26(v16, v18, v27);
    sub_231E11FD0();
    v19 = OUTLINED_FUNCTION_73_5();
    v20(v19);
    v26(v16 + *(v23 + 20), v7, v27);
    sub_231DE342C();
    __swift_destroy_boxed_opaque_existential_0(v2);
    v21 = OUTLINED_FUNCTION_115_7();
    sub_231DE724C(v21, v22);
  }

  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_231DD6CE0()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v2;
  v4 = sub_231E0F950();
  OUTLINED_FUNCTION_12();
  v8 = *(v5 + 32);
  v8(v3, v1, v4);
  v6 = v3 + *(type metadata accessor for SummarizationAnalytics.Interval.Complete(0) + 20);

  return (v8)(v6, v0, v4);
}

uint64_t sub_231DD6DB8()
{
  v0 = type metadata accessor for SummarizationAnalytics.Interval.Complete(0);
  v1 = OUTLINED_FUNCTION_47(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_138_2();
  type metadata accessor for SummarizationAnalytics.Interval(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_27();
  sub_231DE342C();
  OUTLINED_FUNCTION_33();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_231DE35F8();
    sub_231E0F950();
    OUTLINED_FUNCTION_12();
    v3 = OUTLINED_FUNCTION_59_0();
    v4(v3);
    v5 = OUTLINED_FUNCTION_174_2();
    return sub_231DE724C(v5, v6);
  }

  else
  {
    sub_231E0F950();
    OUTLINED_FUNCTION_12();
    v8 = OUTLINED_FUNCTION_25();
    return v9(v8);
  }
}

uint64_t sub_231DD6F10()
{
  OUTLINED_FUNCTION_300_0();
  v3 = v1 == 0x656C706D6F636E69 && v2 == 0xEA00000000006574;
  if (v3 || (OUTLINED_FUNCTION_15_2(0x656C706D6F636E69, 0xEA00000000006574) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6574656C706D6F63 && v0 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_15_2(0x6574656C706D6F63, 0xE800000000000000);
    OUTLINED_FUNCTION_10_1();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_231DD6FBC(char a1)
{
  if (a1)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x656C706D6F636E69;
  }
}

uint64_t sub_231DD6FF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_231E12100();
    OUTLINED_FUNCTION_10_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231DD7084(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116_6();
  v3 = OUTLINED_FUNCTION_159_2();
  if (v6 == v3 && v4 == v5)
  {

    v8 = 0;
  }

  else
  {
    sub_231E12100();
    OUTLINED_FUNCTION_10_1();
    v8 = v2 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_231DD70F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DD6F10();
  *a1 = result;
  return result;
}

uint64_t sub_231DD711C()
{
  sub_231DE3484();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD7154()
{
  sub_231DE3484();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD7190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231DD6FF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231DD71BC()
{
  sub_231DE34D8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD71F4()
{
  sub_231DE34D8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD724C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231DD7084(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231DD7278()
{
  sub_231DE352C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD72B0()
{
  sub_231DE352C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

void sub_231DD72E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_35_1();
  a22 = v25;
  a23 = v26;
  v75 = v24;
  v72 = v23;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755C8, &qword_231E20590);
  OUTLINED_FUNCTION_24();
  v70 = v30;
  v71 = v29;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  v69 = v32;
  v33 = OUTLINED_FUNCTION_3_0();
  v67 = type metadata accessor for SummarizationAnalytics.Interval.Complete(v33);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_189_1(v36 - v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755D0, &qword_231E20598);
  OUTLINED_FUNCTION_24();
  v65 = v38;
  v66 = v37;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v39);
  v41 = &v64 - v40;
  v64 = sub_231E0F950();
  OUTLINED_FUNCTION_24();
  v73 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4_1();
  v46 = v45 - v44;
  type metadata accessor for SummarizationAnalytics.Interval(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4_1();
  v50 = v49 - v48;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755D8, &qword_231E205A0);
  OUTLINED_FUNCTION_24();
  v52 = v51;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v53);
  v55 = &v64 - v54;
  v56 = *(v28 + 32);
  OUTLINED_FUNCTION_214_1();
  sub_231DE3484();
  sub_231E12270();
  OUTLINED_FUNCTION_4_27();
  sub_231DE342C();
  OUTLINED_FUNCTION_108_6();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v57 = v68;
    sub_231DE35F8();
    OUTLINED_FUNCTION_31_0();
    sub_231DE34D8();
    OUTLINED_FUNCTION_206_0(&type metadata for SummarizationAnalytics.Interval.CompleteCodingKeys, &a13);
    OUTLINED_FUNCTION_68_7();
    sub_231DE3390(v58);
    sub_231E12090();
    v59 = OUTLINED_FUNCTION_41_3();
    v60(v59);
    sub_231DE724C(v57, type metadata accessor for SummarizationAnalytics.Interval.Complete);
  }

  else
  {
    v61 = v64;
    (*(v73 + 32))(v46, v50, v64);
    a12 = 0;
    sub_231DE352C();
    OUTLINED_FUNCTION_206_0(&type metadata for SummarizationAnalytics.Interval.IncompleteCodingKeys, &a12);
    OUTLINED_FUNCTION_3_32();
    sub_231DE3390(v62);
    v63 = v66;
    sub_231E12090();
    (*(v65 + 8))(v41, v63);
    (*(v73 + 8))(v46, v61);
  }

  (*(v52 + 8))(v55, v56);
  OUTLINED_FUNCTION_33_0();
}

void sub_231DD774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_35_1();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755E8, &qword_231E205A8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_12_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755F0, &qword_231E205B0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD755F8, &qword_231E205B8);
  OUTLINED_FUNCTION_24();
  v64 = v33;
  v65 = v32;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_81_7();
  v35 = type metadata accessor for SummarizationAnalytics.Interval(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_121_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_126_2();
  OUTLINED_FUNCTION_103_4(v29);
  sub_231DE3484();
  sub_231E12260();
  if (v24)
  {
    goto LABEL_8;
  }

  v63 = v35;
  v66 = v29;
  v39 = sub_231E11FE0();
  v43 = sub_231CCF16C(v39, 0);
  if (v41 == v42 >> 1)
  {
LABEL_7:
    v49 = sub_231E11DC0();
    swift_allocError();
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10);
    *v51 = v63;
    v52 = sub_231E11F40();
    OUTLINED_FUNCTION_32_0(v52);
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    v53 = OUTLINED_FUNCTION_75_5();
    v54(v53, v65);
    v29 = v66;
LABEL_8:
    v55 = v29;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_33_0();
    return;
  }

  if (v41 < (v42 >> 1))
  {
    a10 = *(v40 + v41);
    sub_231DE3580(v41 + 1, v42 >> 1, v43, v40, v41, v42);
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    if (v45 == v47 >> 1)
    {
      if (a10)
      {
        OUTLINED_FUNCTION_31_0();
        sub_231DE34D8();
        OUTLINED_FUNCTION_154_3(&type metadata for SummarizationAnalytics.Interval.CompleteCodingKeys, &a14);
        type metadata accessor for SummarizationAnalytics.Interval.Complete(0);
        OUTLINED_FUNCTION_68_7();
        sub_231DE3390(v48);
        OUTLINED_FUNCTION_204_0();
        swift_unknownObjectRelease();
        v57 = OUTLINED_FUNCTION_76_6();
        v58(v57);
        (*(v64 + 8))(v25, v65);
      }

      else
      {
        a13 = 0;
        sub_231DE352C();
        OUTLINED_FUNCTION_154_3(&type metadata for SummarizationAnalytics.Interval.IncompleteCodingKeys, &a13);
        sub_231E0F950();
        OUTLINED_FUNCTION_3_32();
        sub_231DE3390(v56);
        OUTLINED_FUNCTION_204_0();
        swift_unknownObjectRelease();
        v59 = OUTLINED_FUNCTION_76_6();
        v60(v59);
        v61 = OUTLINED_FUNCTION_75_5();
        v62(v61, v65);
      }

      swift_storeEnumTagMultiPayload();
      sub_231DE35F8();
      sub_231DE35F8();
      v55 = v29;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_231DD7D48(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

unint64_t sub_231DD7D58(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD7D48(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD7D80()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7120();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD7DC8()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7120();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

uint64_t sub_231DD7E00(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DBCD4C(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD7E28()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE70CC();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD7E70()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE70CC();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

unint64_t sub_231DD7EA8(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_231DD7ED4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD7EA8(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD7EFC()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7078();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD7F44()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7078();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

unint64_t sub_231DD7F7C(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t sub_231DD7F8C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD7F7C(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD7FB4()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7024();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD7FFC()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE7024();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

unint64_t sub_231DD8034(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_231DD8044(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_88_8(a1);
  result = sub_231DD8034(v2);
  *v1 = result;
  return result;
}

uint64_t sub_231DD806C()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE6FD0();
  OUTLINED_FUNCTION_0_32();
  return sub_231E11830();
}

uint64_t sub_231DD80B4()
{
  OUTLINED_FUNCTION_1_26();
  sub_231DE6FD0();
  OUTLINED_FUNCTION_0_32();
  return sub_231E117F0();
}

uint64_t sub_231DD80EC()
{
  OUTLINED_FUNCTION_300_0();
  v2 = OUTLINED_FUNCTION_144_4();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_15_2(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v1 == 0x736575737369 && v0 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_15_2(0x736575737369, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x646567676F6CLL && v0 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_15_2(0x646567676F6CLL, 0xE600000000000000);
      OUTLINED_FUNCTION_10_1();
      if (v1)
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

uint64_t sub_231DD81B8(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_144_4();
  }

  if (a1 == 1)
  {
    return 0x736575737369;
  }

  return 0x646567676F6CLL;
}

uint64_t sub_231DD8210@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DD80EC();
  *a1 = result;
  return result;
}

uint64_t sub_231DD8238()
{
  sub_231DE6C44();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DD8270()
{
  sub_231DE6C44();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DD82A8()
{

  OUTLINED_FUNCTION_130_1();

  return swift_deallocClassInstance();
}

uint64_t sub_231DD82E4(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75770, &unk_231E229C0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_103_4(a1);
  sub_231DE6C44();
  OUTLINED_FUNCTION_184_1();
  OUTLINED_FUNCTION_111_5();
  sub_231E12270();
  OUTLINED_FUNCTION_81();
  swift_beginAccess();
  v10[0] = *(v3 + 16);
  LOBYTE(v9) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75640, &qword_231E20638);
  sub_231DE6E6C();
  OUTLINED_FUNCTION_207_1(v10);
  if (!v2)
  {
    OUTLINED_FUNCTION_81();
    swift_beginAccess();
    v9 = *(v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75638, &qword_231E20630);
    sub_231DE6DA8(&unk_27DD75790);
    OUTLINED_FUNCTION_207_1(&v9);
    LOBYTE(v9) = 2;
    sub_231E12070();
  }

  v6 = OUTLINED_FUNCTION_88_4();
  return v7(v6);
}

void sub_231DD8514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35_1();
  v23 = v20;
  v25 = v24;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75740, &qword_231E229B8);
  OUTLINED_FUNCTION_24();
  v27 = v26;
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_9();
  *(v23 + 16) = MEMORY[0x277D84F98];
  *(v23 + 24) = MEMORY[0x277D84F90];
  *(v23 + 32) = 0;
  __swift_project_boxed_opaque_existential_0(v25, v25[3]);
  sub_231DE6C44();
  OUTLINED_FUNCTION_184_1();
  sub_231E12260();
  if (v21)
  {
  }

  else
  {
    v29 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75640, &qword_231E20638);
    sub_231DE6C98();
    sub_231E11FD0();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v23 + 16) = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75638, &qword_231E20630);
    sub_231DE6DA8(&unk_27DD75760);
    sub_231E11FD0();
    OUTLINED_FUNCTION_42_12();
    swift_beginAccess();
    *(v23 + 24) = a10;

    v30 = sub_231E11FB0();
    (*(v29 + 8))(v22, v31);
    *(v23 + 32) = v30 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v25);
  OUTLINED_FUNCTION_33_0();
}

uint64_t sub_231DD87C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231DD84CC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_231DD8810(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_231E0F6E0();
  v8 = [v7 domain];
  v21 = sub_231E11620();
  v10 = v9;

  swift_getErrorValue();
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75608, &qword_231E205C0);
  v11 = sub_231E11680();
  v13 = v12;
  v14 = sub_231DD8930(a1);
  v16 = v15;
  if (a3)
  {

    v17 = a2;
  }

  else
  {
    sub_231DD89F8();
    v17 = v18;
    a3 = v19;
  }

  *a4 = v21;
  a4[1] = v10;
  a4[2] = v11;
  a4[3] = v13;
  a4[4] = v14;
  a4[5] = v16;
  a4[6] = v17;
  a4[7] = a3;
}