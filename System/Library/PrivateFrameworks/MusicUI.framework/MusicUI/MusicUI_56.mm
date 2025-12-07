uint64_t sub_216C44AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_216C44B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_216C44BD0(uint64_t a1)
{
  swift_getWitnessTable();
  sub_217009AF4();
  __break(1u);
}

uint64_t type metadata accessor for GoToAlbumViewModel(uint64_t a1)
{
  result = qword_280E3EED0;
  if (!qword_280E3EED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216C44C84(uint64_t a1)
{
  sub_21700C084();
  if (v1 <= 0x3F)
  {
    sub_2166DB204();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObjectGraph(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216C44D20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21700B804();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = OUTLINED_FUNCTION_84();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_21700C084();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = OUTLINED_FUNCTION_84();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6BD0, &qword_217056DC8);
  v2[14] = OUTLINED_FUNCTION_84();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A0, &unk_217056DD0);
  v2[17] = OUTLINED_FUNCTION_84();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216C44EE8()
{
  v1 = v0[3];
  v2 = *(v1 + *(type metadata accessor for GoToAlbumViewModel(0) + 20));
  if (v2 == 2)
  {
    v0[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
    v3 = swift_allocObject();
    v0[24] = v3;
    *(v3 + 16) = xmmword_21701D820;
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53A8, &unk_217056DE0);
    *(v3 + 32) = sub_21700B6C4();
    v4 = swift_task_alloc();
    v0[26] = v4;
    OUTLINED_FUNCTION_1_177();
    v0[27] = sub_216C46378(v5, v6, MEMORY[0x277CD8260]);
    *v4 = v0;
    v4[1] = sub_216C455AC;
    v7 = v0[12];

    return MEMORY[0x282124818](v7, v3);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[4];
    v11 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC2EE0, &unk_217023900);
    v12 = swift_allocObject();
    v0[20] = v12;
    *(v12 + 16) = xmmword_21701D820;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC53A8, &unk_217056DE0);
    *(v12 + 32) = sub_21700B6C4();
    v13 = MEMORY[0x277CD7CF8];
    if ((v2 & 1) == 0)
    {
      v13 = MEMORY[0x277CD7D00];
    }

    (*(v11 + 104))(v9, *v13, v10);
    (*(v11 + 32))(v8, v9, v10);
    v14 = swift_task_alloc();
    v0[21] = v14;
    OUTLINED_FUNCTION_1_177();
    v17 = sub_216C46378(v15, v16, MEMORY[0x277CD8260]);
    *v14 = v0;
    v14[1] = sub_216C451C8;
    v18 = v0[13];
    v19 = v0[8];
    v20 = v0[9];
    v21 = MEMORY[0x277CD8218];
    v22 = MEMORY[0x277CD81F8];

    return MEMORY[0x282124810](v18, v12, v19, v20, v21, v22, v17);
  }
}

uint64_t sub_216C451C8()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2[8];
  v4 = v2[5];
  v5 = v2[4];
  v6 = *v1;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v8 + 176) = v0;

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216C455AC()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216C459AC()
{
  OUTLINED_FUNCTION_69_0();
  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  v6 = *v1;
  OUTLINED_FUNCTION_28();
  *v7 = v6;
  *(v8 + 272) = v0;

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216C45DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  v14 = OUTLINED_FUNCTION_0_207();
  OUTLINED_FUNCTION_7_90(v14);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216C45E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();

  v14 = OUTLINED_FUNCTION_0_207();
  OUTLINED_FUNCTION_7_90(v14);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216C45F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  v14 = OUTLINED_FUNCTION_0_207();
  OUTLINED_FUNCTION_7_90(v14);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_216C46000()
{
  v1 = v0;
  v2 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700C0B4();
  if (!v7)
  {
    v6 = sub_21700C164();
  }

  v8 = v6;
  v9 = v7;
  LOBYTE(v32[0]) = 1;
  v10 = *(v2 + 24);
  v11 = sub_217005EF4();
  OUTLINED_FUNCTION_88(&v5[v10], v12, v13, v11);
  *v5 = 4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 11) = v8;
  *(v5 + 12) = v9;
  *(v5 + 13) = 0;
  v5[112] = 1;
  v14 = sub_21700BFF4();
  v16 = v15;
  v17 = type metadata accessor for AlbumDetailPageIntent(0);
  v33 = v17;
  v34 = sub_216C46378(&qword_27CAC3E50, type metadata accessor for AlbumDetailPageIntent, &unk_21704DC88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  sub_21695BC04(v5, boxed_opaque_existential_1);
  v19 = *(v17 + 24);
  v20 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_88(boxed_opaque_existential_1 + v19, v21, v22, v20);
  v23 = (boxed_opaque_existential_1 + *(v17 + 20));
  *v23 = v14;
  v23[1] = v16;
  sub_2168466D8(v32, &v29);
  v24 = *(v1 + *(type metadata accessor for GoToAlbumViewModel(0) + 24));
  v35 = 0u;
  v36 = 0u;
  LOWORD(v37) = 1;

  sub_216CCC700(&v29, v24, &v35, 0, 0, v25, v26, v27, v29, v30, v31, v32[0], v32[1], v32[2], v33, v34, v35, *(&v35 + 1), v36, *(&v36 + 1), v37, v38);
  sub_2168F3F20(v5);
  return sub_216699820(v32, &qword_27CAB6AB8, &unk_217013E10);
}

uint64_t sub_216C461F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_216C46290;

  return sub_216C44D20(a1);
}

uint64_t sub_216C46290()
{
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216C46378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216C463C0()
{
  result = qword_27CAC6BD8;
  if (!qword_27CAC6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6BD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GoToAlbumViewModel.GoToAlbumError(_BYTE *result, int a2, int a3)
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

unint64_t sub_216C464C4()
{
  result = qword_27CAC6BE0;
  if (!qword_27CAC6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6BE0);
  }

  return result;
}

uint64_t sub_216C46518()
{
  OUTLINED_FUNCTION_33();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v1[16] = v5;
  v6 = sub_2170078C4();
  OUTLINED_FUNCTION_36(v6);
  v1[21] = OUTLINED_FUNCTION_80();
  v7 = sub_21700B774();
  v1[22] = v7;
  OUTLINED_FUNCTION_2(v7);
  v1[23] = v8;
  v1[24] = OUTLINED_FUNCTION_80();
  v9 = sub_21700B754();
  v1[25] = v9;
  OUTLINED_FUNCTION_2(v9);
  v1[26] = v10;
  v1[27] = OUTLINED_FUNCTION_80();
  v11 = sub_217005EF4();
  v1[28] = v11;
  OUTLINED_FUNCTION_2(v11);
  v1[29] = v12;
  v1[30] = OUTLINED_FUNCTION_80();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v1[31] = v13;
  OUTLINED_FUNCTION_36(v13);
  v1[32] = OUTLINED_FUNCTION_84();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  OUTLINED_FUNCTION_36(v14);
  v1[35] = OUTLINED_FUNCTION_80();
  v15 = sub_217005AB4();
  v1[36] = v15;
  OUTLINED_FUNCTION_2(v15);
  v1[37] = v16;
  v1[38] = OUTLINED_FUNCTION_80();
  v17 = sub_21700B864();
  v1[39] = v17;
  OUTLINED_FUNCTION_2(v17);
  v1[40] = v18;
  v1[41] = OUTLINED_FUNCTION_84();
  v1[42] = swift_task_alloc();
  v19 = sub_217007C24();
  v1[43] = v19;
  OUTLINED_FUNCTION_2(v19);
  v1[44] = v20;
  v1[45] = OUTLINED_FUNCTION_80();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB08, &qword_217025210);
  OUTLINED_FUNCTION_36(v21);
  v1[46] = OUTLINED_FUNCTION_84();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v22 = type metadata accessor for BaseURLRequest(0);
  OUTLINED_FUNCTION_36(v22);
  v1[50] = OUTLINED_FUNCTION_80();
  v23 = sub_217005844();
  v1[51] = v23;
  OUTLINED_FUNCTION_2(v23);
  v1[52] = v24;
  v1[53] = OUTLINED_FUNCTION_84();
  v1[54] = swift_task_alloc();
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_216C468AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  if (sub_21669DAC4())
  {
    v26 = swift_task_alloc();
    v23[55] = v26;
    *v26 = v23;
    v26[1] = sub_216C46B88;
    OUTLINED_FUNCTION_31_4();

    return sub_216A4F6C8();
  }

  else
  {
    v29 = OUTLINED_FUNCTION_6_95();
    v30(v29);
    v31 = *(v24 + 24);
    v32 = OUTLINED_FUNCTION_20_52();
    v23[56] = v32;
    v23[5] = v32;
    OUTLINED_FUNCTION_108();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_23_43(AssociatedConformanceWitness);
    v31(v25, v24);
    OUTLINED_FUNCTION_22_47();
    sub_216C48670(v23[50]);
    __swift_destroy_boxed_opaque_existential_1Tm(v23 + 2);
    if (v22)
    {
      OUTLINED_FUNCTION_4_116();

      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_31_4();
    }

    else
    {
      sub_21700B664();
      swift_allocObject();
      v23[58] = MEMORY[0x21CE9C470]();
      if (qword_27CAB5BC8 != -1)
      {
        OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
      }

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
      v43 = __swift_project_value_buffer(v42, qword_27CB22950);
      v44 = OUTLINED_FUNCTION_10_78(v43);
      v46 = v45(v44);
      OUTLINED_FUNCTION_21_51(v46, "FetchDeveloperToken");
      sub_21700B854();
      OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
      a18 = v47;
      v48 = swift_task_alloc();
      v23[62] = v48;
      *v48 = v23;
      OUTLINED_FUNCTION_2_142(v48);
      OUTLINED_FUNCTION_31_4();
    }

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_216C46B88()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216C46C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v26 = OUTLINED_FUNCTION_6_95();
  v27(v26);
  v28 = *(v24 + 24);
  v29 = OUTLINED_FUNCTION_20_52();
  v23[56] = v29;
  v23[5] = v29;
  OUTLINED_FUNCTION_108();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_23_43(AssociatedConformanceWitness);
  v28(v25, v24);
  OUTLINED_FUNCTION_22_47();
  sub_216C48670(v23[50]);
  __swift_destroy_boxed_opaque_existential_1Tm(v23 + 2);
  if (v22)
  {
    OUTLINED_FUNCTION_4_116();

    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_31_4();
  }

  else
  {
    sub_21700B664();
    swift_allocObject();
    v23[58] = MEMORY[0x21CE9C470]();
    if (qword_27CAB5BC8 != -1)
    {
      OUTLINED_FUNCTION_7_91(&qword_27CAB5BC8);
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB10, &qword_217025220);
    v41 = __swift_project_value_buffer(v40, qword_27CB22950);
    v42 = OUTLINED_FUNCTION_10_78(v41);
    v44 = v43(v42);
    OUTLINED_FUNCTION_21_51(v44, "FetchDeveloperToken");
    sub_21700B854();
    OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7BB8]);
    a18 = v45;
    v46 = swift_task_alloc();
    v23[62] = v46;
    *v46 = v23;
    OUTLINED_FUNCTION_2_142(v46);
    OUTLINED_FUNCTION_31_4();
  }

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216C46ED0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v7 = v4[40];
  *v6 = *v2;
  v5[63] = v8;
  v5[64] = v1;

  v9 = (v7 + 8);
  v5[65] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = v4[42];
  v11 = v4[39];
  if (v1)
  {
    (*v9)(v10, v11);
  }

  else
  {
    v5[66] = a1;
    v12 = *v9;
    v5[67] = *v9;
    v12(v10, v11);
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_216C47060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[60];
  v10 = v8[59];
  v11 = v8[48];
  v12 = v8[45];
  v13 = v8[43];
  sub_216BD4F18(a1, a2, a3, a4, a5, a6, a7, a8, v8[41], v21, v22, v23, v24, v25);
  sub_21700B844();
  swift_allocObject();
  v8[68] = MEMORY[0x21CE9C650]();
  v9(v12, v10, v13);
  sub_216BD7934(v12, "FetchUserToken", 14, 2, v11);
  v8[15] = 0;
  sub_216C486CC();
  sub_21700F9B4();
  OUTLINED_FUNCTION_38_0(MEMORY[0x277CD7D10]);
  v20 = v14;
  v15 = swift_task_alloc();
  v8[69] = v15;
  *v15 = v8;
  v15[1] = sub_216C471C4;
  v16 = v8[66];
  v17 = v8[63];
  v18 = v8[41];

  return v20(v16, v17, v18);
}

uint64_t sub_216C471C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  *v8 = *v3;
  v7[70] = v2;

  v9 = v6[67];
  v10 = v6[41];
  v11 = v6[39];
  if (!v2)
  {
    v7[71] = a2;
    v7[72] = a1;
  }

  v9(v10, v11);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_216C47370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = v8;
  v10 = v8[35];
  v9 = v8[36];
  sub_216BD4F18(a1, a2, a3, a4, a5, a6, a7, a8, v43, v45, v47[0], v47[1], v47[2], v47[3]);
  sub_217005814();

  sub_2167846B8(v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
  {
    sub_216697664(v8[35], &qword_27CAB6BD0, &unk_2170142B0);
  }

  else
  {
    v11 = v8[33];
    v12 = v8[28];
    (*(v8[37] + 32))(v8[38], v8[35], v8[36]);
    sub_2170057F4();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12))
    {
      v13 = v8[34];
      v14 = v8[28];
      sub_216697664(v8[33], &qword_27CABA820, &unk_217018CE0);
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
    }

    else
    {
      v16 = v8[33];
      v15 = v8[34];
      (*(v8[29] + 16))(v8[30], v16, v8[28]);
      sub_216697664(v16, &qword_27CABA820, &unk_217018CE0);
      sub_216C48244(v15);
      v17 = OUTLINED_FUNCTION_108();
      v18(v17);
    }

    sub_217005804();
    if (qword_27CAB5FF8 != -1)
    {
      swift_once();
    }

    v19 = sub_217007CA4();
    __swift_project_value_buffer(v19, qword_27CAC6BE8);
    v20 = sub_217007C84();
    v21 = sub_21700EDA4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v8[37];
      v46 = v8[38];
      v23 = v8[36];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47[0] = v25;
      *v24 = 136446210;
      swift_beginAccess();
      sub_2170057F4();
      swift_endAccess();
      v26 = sub_21700E594();
      v28 = sub_2166A85FC(v26, v27, v47);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_216679000, v20, v21, "Rewrote URL to %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x21CEA1440](v25, -1, -1);
      MEMORY[0x21CEA1440](v24, -1, -1);

      (*(v22 + 8))(v46, v23);
    }

    else
    {
      v30 = v8[37];
      v29 = v8[38];
      v31 = v8[36];

      (*(v30 + 8))(v29, v31);
    }
  }

  v44 = v8[60];
  v32 = v8[59];
  v34 = v8[53];
  v33 = v8[54];
  v35 = v8[51];
  v36 = v8[52];
  v37 = v8[47];
  v38 = v8[45];
  v39 = v8[43];
  swift_beginAccess();
  (*(v36 + 16))(v34, v33, v35);
  sub_21700B734();
  v44(v38, v32, v39);
  sub_216BD7934(v38, "PerformRequest", 14, 2, v37);
  v40 = swift_task_alloc();
  v8[73] = v40;
  *v40 = v8;
  v40[1] = sub_216C477C4;
  v41 = v8[24];

  return MEMORY[0x2821243B8](v41);
}

uint64_t sub_216C477C4()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_28();
  *v3 = v2;
  *(v4 + 592) = v0;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_216C478C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = v8[74];
  v9 = v8[60];
  v10 = v8[59];
  v11 = v8[46];
  v12 = v8[45];
  v13 = v8[43];
  sub_216BD4F18(a1, a2, a3, a4, a5, a6, a7, a8, v40, v42, v45, v48, v51, v54);
  v9(v12, v10, v13);
  sub_216BD7934(v12, "DeserializeProtobuf", 19, 2, v11);
  swift_getAssociatedTypeWitness();
  v8[13] = sub_21700B764();
  v8[14] = v14;
  swift_getAssociatedConformanceWitness();
  sub_2170078B4();
  v15 = v62;
  v16 = sub_217007A14();
  v63 = v8[54];
  if (v15)
  {
    v24 = v8[52];
    v60 = v8[49];
    v61 = v8[51];
    v25 = v8[46];
    v26 = v8[47];
    v27 = v8[26];
    v58 = v8[27];
    v59 = v8[48];
    v28 = v8[24];
    v57 = v8[25];
    v30 = v8[22];
    v29 = v8[23];
    sub_216BD4F18(v16, v17, v18, v19, v20, v21, v22, v23, v41, v43, v46, v49, v52, v55);

    OUTLINED_FUNCTION_15_60(v25);
    (*(v29 + 8))(v28, v30);
    OUTLINED_FUNCTION_15_60(v26);
    (*(v27 + 8))(v58, v57);
    OUTLINED_FUNCTION_15_60(v59);
    OUTLINED_FUNCTION_15_60(v60);
    (*(v24 + 8))(v63, v61);
  }

  else
  {
    v32 = v8[52];
    v33 = v8[46];
    v34 = v8[26];
    v36 = v8[24];
    v35 = v8[25];
    v38 = v8[22];
    v37 = v8[23];
    sub_216BD4F18(v16, v17, v18, v19, v20, v21, v22, v23, v41, v8[27], v8[47], v8[48], v8[49], v8[51]);

    OUTLINED_FUNCTION_15_60(v33);
    (*(v37 + 8))(v36, v38);
    OUTLINED_FUNCTION_15_60(v47);
    (*(v34 + 8))(v44, v35);
    OUTLINED_FUNCTION_15_60(v50);
    OUTLINED_FUNCTION_15_60(v53);
    (*(v32 + 8))(v63, v56);
  }

  OUTLINED_FUNCTION_3();

  return v31();
}

uint64_t sub_216C47D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v23 = v22[54];
  v24 = v22[51];
  v25 = v22[52];
  v26 = v22[49];

  sub_216697664(v26, &qword_27CABBB08, &qword_217025210);
  (*(v25 + 8))(v23, v24);
  OUTLINED_FUNCTION_0_208();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_31_4();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216C47EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v23 = v22[54];
  v24 = v22[51];
  v25 = v22[52];
  v27 = v22[48];
  v26 = v22[49];

  sub_216697664(v27, &qword_27CABBB08, &qword_217025210);
  sub_216697664(v26, &qword_27CABBB08, &qword_217025210);
  (*(v25 + 8))(v23, v24);
  OUTLINED_FUNCTION_0_208();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_31_4();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_216C48024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_47_23();
  v23 = v22[52];
  v39 = v22[51];
  v40 = v22[54];
  v25 = v22[48];
  v24 = v22[49];
  v26 = v22[47];
  v27 = v22[26];
  v28 = v22[27];
  v29 = v22[25];

  sub_216697664(v26, &qword_27CABBB08, &qword_217025210);
  (*(v27 + 8))(v28, v29);
  sub_216697664(v25, &qword_27CABBB08, &qword_217025210);
  sub_216697664(v24, &qword_27CABBB08, &qword_217025210);
  (*(v23 + 8))(v40, v39);
  OUTLINED_FUNCTION_0_208();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_31_4();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, v39, v40, a20, a21, a22);
}

uint64_t sub_216C481B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC7MusicUI26SwiftMusicRequestPerformer_bag;
  sub_21700DFD4();
  OUTLINED_FUNCTION_34();
  (*(v8 + 32))(v3 + v7, a1);
  *(v3 + OBJC_IVAR____TtC7MusicUI26SwiftMusicRequestPerformer_userDefaults) = a2;
  *(v3 + OBJC_IVAR____TtC7MusicUI26SwiftMusicRequestPerformer_privacyDisclaimer) = a3;
  return v3;
}

uint64_t sub_216C48244@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = sub_217005AB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170059E4();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216697664(v6, &qword_27CAB6BD0, &unk_2170142B0);
    v11 = sub_217005EF4();
    OUTLINED_FUNCTION_34();
    (*(v12 + 16))(a1, v1, v11);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_108();
    v15(v14);
    sub_217005A74();
    if (v16)
    {
      sub_217005A84();
    }

    v17 = sub_217005A04();
    if (v18)
    {
      MEMORY[0x21CE96830](v17);
    }

    sub_217005A34();
    if ((v19 & 1) == 0)
    {
      sub_217005A44();
    }

    sub_2170059F4();
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_216C48454()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC6BE8);
  __swift_project_value_buffer(v0, qword_27CAC6BE8);
  return sub_217007C94();
}

uint64_t sub_216C484D4()
{
  v1 = OBJC_IVAR____TtC7MusicUI26SwiftMusicRequestPerformer_bag;
  sub_21700DFD4();
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_216C4854C()
{
  sub_216C484D4();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216C485AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2169D1708;

  return sub_216C46518();
}

uint64_t sub_216C48670(uint64_t a1)
{
  v2 = type metadata accessor for BaseURLRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216C486CC()
{
  result = qword_27CAC6C00;
  if (!qword_27CAC6C00)
  {
    sub_21700B864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6C00);
  }

  return result;
}

uint64_t type metadata accessor for ReplayPageBodyView(uint64_t a1)
{
  result = qword_27CAC6C08;
  if (!qword_27CAC6C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216C48798(uint64_t a1)
{
  type metadata accessor for MappedReplayPage(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObjectGraph(319);
    if (v2 <= 0x3F)
    {
      sub_216C48834(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216C48834(uint64_t a1)
{
  if (!qword_27CAC6C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA758, &qword_217020FC0);
    sub_2166D9530(&qword_27CABA760, &qword_27CABA758, &qword_217020FC0, &unk_2170390B0);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAC6C18);
    }
  }
}

uint64_t sub_216C488F4@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = type metadata accessor for ReplayPageBodyView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8FF8, &unk_217056F80);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v15 = *v1;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9000, &qword_21701C310);
  sub_2166D9530(&qword_280E29FC0, &qword_27CAB9000, &qword_21701C310, MEMORY[0x277D83980]);
  sub_2170075C4();
  swift_getKeyPath();
  sub_216C490BC(v1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplayPageBodyView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_216C4911C(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ReplayPageBodyView);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_216C49034;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6C20, &qword_217056FB8);
  sub_2166D9530(&qword_27CAB9008, &qword_27CAB8FF8, &unk_217056F80, MEMORY[0x277D7EC38]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9368, &qword_217056FC0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9370, qword_21701CA90);
  v11 = sub_2166D9530(&qword_27CAB9378, &qword_27CAB9370, qword_21701CA90, &unk_217068A78);
  v15 = v10;
  v16 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v9;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_21700B154();
}

uint64_t sub_216C48C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v31 = a4;
  v6 = sub_2170099D4();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9370, qword_21701CA90);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9368, &qword_217056FC0);
  v26 = *(v14 - 8);
  v27 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  v32 = a2;
  sub_216C490BC(a2, v10, type metadata accessor for MappedSection);
  v17 = type metadata accessor for ReplayPageBodyView(0);
  if (*(a3 + *(v17 + 24)))
  {
    v25 = *(*a3 + 16);
    v18 = *(a3 + *(v17 + 20));
    v19 = &v13[v11[13]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = &v13[v11[12]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA758, &qword_217020FC0);
    sub_2166D9530(&qword_27CABA760, &qword_27CABA758, &qword_217020FC0, &unk_2170390B0);
    *v20 = sub_217008684();
    v20[1] = v21;
    sub_216C4911C(v10, v13, type metadata accessor for MappedSection);
    *&v13[v11[9]] = v18;
    *&v13[v11[10]] = v33;
    *&v13[v11[11]] = v25;
    v22 = v28;
    sub_2170099C4();
    sub_2166D9530(&qword_27CAB9378, &qword_27CAB9370, qword_21701CA90, &unk_217068A78);
    sub_21700A784();
    (*(v29 + 8))(v22, v30);
    sub_216C4917C(v13);
    sub_21682409C();
    return (*(v26 + 8))(v16, v27);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA758, &qword_217020FC0);
    sub_2166D9530(&qword_27CABA760, &qword_27CABA758, &qword_217020FC0, &unk_2170390B0);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C49034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ReplayPageBodyView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_216C48C30(a1, a2, v8, a3);
}

uint64_t sub_216C490BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216C4911C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216C4917C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9370, qword_21701CA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216C491E4()
{
  result = qword_27CAC6C28;
  if (!qword_27CAC6C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CAC6C30, qword_217056FF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9368, &qword_217056FC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9370, qword_21701CA90);
    sub_2166D9530(&qword_27CAB9378, &qword_27CAB9370, qword_21701CA90, &unk_217068A78);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6C28);
  }

  return result;
}

id sub_216C4931C@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName);
  v5 = *(v1 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName + 8);
  v6 = *(v1 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_imageType);
  v7 = objc_allocWithZone(ObjectType);
  sub_21700DF14();
  result = sub_216C49400(v4, v5, v6);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

id sub_216C49400(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName];
  *v8 = a1;
  v8[1] = a2;
  v3[OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_imageType] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_216C49470()
{
  if (*(v0 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_fullName);
  }

  else
  {
    BYTE8(v3) = 0;
    *&v3 = *(v0 + OBJC_IVAR____TtC7MusicUI20MonogramArtworkToken_imageType);
    sub_21700F544();
    v1 = *(&v3 + 1);
  }

  sub_21700DF14();
  return v1;
}

_BYTE *storeEnumTagSinglePayload for MonogramArtworkToken.MonogramImageType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216C496DC()
{
  result = qword_27CAC6C58;
  if (!qword_27CAC6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6C58);
  }

  return result;
}

uint64_t sub_216C49730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (OUTLINED_FUNCTION_1_151(a1, a2, a3) + 32);
  v11 = (*v10 + **v10);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_5(v6);
  *v7 = v8;
  v7[1] = sub_2166AB4A0;

  return v11(v5, v4, v3);
}

uint64_t sub_216C49860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (OUTLINED_FUNCTION_1_151(a1, a2, a3) + 48);
  v11 = (*v10 + **v10);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_5(v6);
  *v7 = v8;
  v7[1] = sub_2166AB4A4;

  return v11(v5, v4, v3);
}

uint64_t sub_216C49978()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_38_0(&unk_2170571C8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_143(v1);

  return v4(v3);
}

uint64_t sub_216C49A20()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_38_0(&unk_2170571E8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_143(v1);

  return v4(v3);
}

uint64_t sub_216C49AB0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_38_0(&unk_217057208);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_143(v1);

  return v4(v3);
}

uint64_t sub_216C49B40()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_0(&unk_217057218);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_5(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A0;

  return v5();
}

uint64_t sub_216C49BD0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_0(&unk_217057110);
  v5 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_5(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A0;

  return v5();
}

uint64_t sub_216C49C60(uint64_t a1)
{
  result = sub_216C4A040();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216C49CE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 8;
  if (v5 > 8)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_22:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
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

  return (v7 | v12) + 254;
}

void sub_216C49E44(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v7 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = 0;
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
          a1[v7] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_216C4A040()
{
  result = qword_280E29AD8;
  if (!qword_280E29AD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E29AD8);
  }

  return result;
}

uint64_t sub_216C4A09C(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    type metadata accessor for LoadablePageView.LoadingState(255, v2, *(a1 + 24), v3);
    v4 = sub_21700AEE4();
    if (v6 <= 0x3F)
    {
      sub_216C4A63C(319);
      v4 = v7;
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_216C4A160(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  v11 = v10;
  v12 = *(v10 + 64);
  v13 = 8;
  if (v12 > 8)
  {
    v13 = v12;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = *(v6 + 64) + v15;
  if (v14 >= a2)
  {
LABEL_27:
    if (v7 < 0x7FFFFFFE)
    {
      v25 = *((v13 + ((a1 + v16) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      if ((v25 + 1) >= 2)
      {
        return v25;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v7, v5);
    }
  }

  else
  {
    v17 = (v13 & 0xFFFFFFFFFFFFFFF8) + (v16 & ~v15) + 32;
    v18 = v17 & 0xFFFFFFF8;
    if ((v17 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = a2 - v14 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      case 2:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v22 = *(a1 + v17);
        if (!v22)
        {
          goto LABEL_27;
        }

LABEL_24:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        result = v14 + (v24 | v23) + 1;
        break;
      default:
        goto LABEL_27;
    }
  }

  return result;
}

void sub_216C4A38C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = (v11 & 0xFFFFFFFFFFFFFFF8) + (v14 & ~v13) + 32;
  if (v12 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if ((v11 & 0xFFFFFFF8) + (v14 & ~v13) == -32)
    {
      v16 = a3 - v12 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (a2 <= v12)
  {
    switch(v18)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (a2)
        {
LABEL_34:
          if (v9 < 0x7FFFFFFE)
          {
            v21 = ((a1 + v14) & ~v13);
            if (a2 > 0x7FFFFFFE)
            {
              v22 = v11 & 0xFFFFFFF8;
              if (v22 != -16)
              {
                bzero(v21, (v22 + 16));
                *v21 = a2 - 0x7FFFFFFF;
              }
            }

            else
            {
              *((v21 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    if ((v11 & 0xFFFFFFF8) + (v14 & ~v13) == -32)
    {
      v19 = a2 - v12;
    }

    else
    {
      v19 = 1;
    }

    if ((v11 & 0xFFFFFFF8) + (v14 & ~v13) != -32)
    {
      v20 = ~v12 + a2;
      bzero(a1, v15);
      *a1 = v20;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v19;
        break;
      case 2:
        *(a1 + v15) = v19;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *(a1 + v15) = v19;
        break;
      default:
        return;
    }
  }
}

void sub_216C4A63C(uint64_t a1)
{
  if (!qword_280E2A588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8118, &qword_217019040);
    v1 = sub_21700AEE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A588);
    }
  }
}

uint64_t sub_216C4A6E4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_38_0(&unk_2170571F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_143(v1);

  return v4(v3);
}

uint64_t sub_216C4A774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v93 = a1;
  v2 = a1 - 8;
  v92 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v90[1] = v3;
  v91 = v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150, &qword_21701C740);
  OUTLINED_FUNCTION_1();
  v97 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  v96 = v7;
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = OUTLINED_FUNCTION_26_41();
  OUTLINED_FUNCTION_1();
  v95 = v11;
  MEMORY[0x28223BE20](v12);
  v94 = v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = v90 - v15;
  OUTLINED_FUNCTION_26_41();
  OUTLINED_FUNCTION_1();
  v99 = v17;
  v100 = v16;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  v98 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6C60, &qword_217057228);
  v21 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v103 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  v102 = v24;
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v25);
  v27 = v90 - v26;
  type metadata accessor for LoadablePageView.LoadingState(0, v8, v9, v28);
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  v31 = v90 - v30;
  OUTLINED_FUNCTION_6_5();
  v108 = v4;
  v105 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v107 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  v106 = v34;
  sub_21700AEE4();
  v35 = v104;
  sub_21700AEB4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = v98;
      v38 = OUTLINED_FUNCTION_14_63();
      v39(v38);
      v40 = (*(v9 + 40))(v37, v8, v9);
      v43 = OUTLINED_FUNCTION_17_58(v40, v41, v42, &unk_2170A8854);
      v44 = v101;
      v45 = OUTLINED_FUNCTION_21_52();
      sub_2166C24DC(v45, v46, v43);
      v47 = *(v95 + 8);
      v48 = OUTLINED_FUNCTION_21_52();
      v47(v48);
      sub_2166C24DC(v44, v10, v43);
      v49 = sub_216C4BF20();
      v50 = v102;
      OUTLINED_FUNCTION_20_53();
      sub_2166C2CB0();
      v112 = v49;
      v113 = v43;
      OUTLINED_FUNCTION_6_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_28_2();
      sub_2166D9530(v51, v52, v53, v54);
      OUTLINED_FUNCTION_12_69();
      sub_2166C2718();
      v103[1](v50, v21);
      v55 = OUTLINED_FUNCTION_21_52();
      v47(v55);
      (v47)(v101, v10);
      (*(v99 + 8))(v98, v100);
    }

    else
    {
      sub_217007514();
      v70 = sub_216C4AFA0(v35, v8, v9, v69);
      v71 = &v27[*(v20 + 36)];
      *v71 = v70;
      v71[1] = v72;
      v73 = sub_216C4BF20();
      v43 = OUTLINED_FUNCTION_17_58(v73, v74, v75, &unk_2170A8854);
      v71[2] = 0;
      v71[3] = 0;
      v76 = v102;
      OUTLINED_FUNCTION_20_53();
      sub_2166C2718();
      v110 = v73;
      v111 = v43;
      OUTLINED_FUNCTION_6_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_28_2();
      sub_2166D9530(v77, v78, v79, v80);
      OUTLINED_FUNCTION_12_69();
      sub_2166C2718();
      v103[1](v76, v21);
      sub_216C4BFD8(v27);
    }
  }

  else
  {
    v103 = *v31;
    (*(v92 + 16))(v91, v35, v93);
    v56 = swift_allocObject();
    *(v56 + 16) = v8;
    *(v56 + 24) = v9;
    OUTLINED_FUNCTION_19_45();
    v57();
    v58 = v103;
    v59 = v103;
    v60 = v96;
    sub_217007564();
    v61 = sub_216C4BF20();
    v43 = OUTLINED_FUNCTION_17_58(v61, v62, v63, &unk_2170A8854);
    v118 = v61;
    v119 = v43;
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_28_2();
    sub_2166D9530(v64, v65, v66, v67);
    OUTLINED_FUNCTION_12_69();
    v68 = v108;
    sub_2166C2CB0();

    (*(v97 + 8))(v60, v68);
  }

  v116 = sub_216C4BF20();
  v117 = v43;
  OUTLINED_FUNCTION_43_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_28_2();
  v86 = sub_2166D9530(v82, v83, v84, v85);
  v114 = WitnessTable;
  v115 = v86;
  v87 = v105;
  v88 = swift_getWitnessTable();
  sub_2166C24DC(v8, v87, v88);
  return (*(v107 + 8))(v8, v87);
}

uint64_t (*sub_216C4AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LoadablePageView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return sub_216C4C040;
}

uint64_t sub_216C4B104(uint64_t a1)
{
  v2 = v1;
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = (v2 + *(v4 + 48));
  v11 = *v10;
  v12 = v10[1];
  v22 = *v10;
  v23 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750, &qword_217057230);
  sub_21700AEB4();
  if (v21)
  {
  }

  v14 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  sub_21700EA34();
  v15 = sub_21700EA24();
  v16 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  *(v17 + 32) = *(a1 + 16);
  (*(v5 + 32))(v17 + v16, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_21677BBA0();
  v22 = v11;
  v23 = v12;
  v21 = v19;
  return sub_21700AEC4();
}

uint64_t sub_216C4B32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LoadablePageView.LoadingState(0, a2, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for LoadablePageView(0, a2, a3, v13);
  (*(v7 + 16))(v9, v12, v6);
  sub_21700AEE4();
  sub_21700AEC4();
  (*(v7 + 8))(v12, v6);
  return sub_216C4B104(v14);
}

uint64_t sub_216C4B490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v9 = type metadata accessor for LoadablePageView.LoadingState(0, a5, a6, a4);
  v6[8] = v9;
  v6[9] = *(v9 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[12] = AssociatedTypeWitness;
  v6[13] = *(AssociatedTypeWitness - 8);
  v11 = swift_task_alloc();
  v6[14] = v11;
  v6[15] = sub_21700EA34();
  v6[16] = sub_21700EA24();
  v14 = (*(a6 + 32) + **(a6 + 32));
  v12 = swift_task_alloc();
  v6[17] = v12;
  *v12 = v6;
  v12[1] = sub_216C4B6C8;

  return v14(v11, a5, a6);
}

uint64_t sub_216C4B6C8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  v3[18] = v0;

  v7 = sub_21700E9B4();
  v3[19] = v7;
  v3[20] = v6;
  if (v0)
  {
    v8 = sub_216C4BBD8;
  }

  else
  {
    v8 = sub_216C4B818;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_216C4B818()
{
  v1 = v0[9];
  v13 = v0[7];
  v2 = v0[6];
  (*(v0[13] + 16))(v0[11], v0[14], v0[12]);
  OUTLINED_FUNCTION_14_63();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LoadablePageView(0, v2, v13, v3);
  v0[21] = *(v1 + 16);
  OUTLINED_FUNCTION_19_45();
  v4();
  OUTLINED_FUNCTION_24_33();
  sub_21700AEE4();
  sub_21700AEC4();
  v5 = OUTLINED_FUNCTION_14_63();
  v6(v5);
  v12 = (*(v13 + 48) + **(v13 + 48));
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_216C4B9D8;
  v8 = v0[14];
  v9 = v0[6];
  v10 = v0[7];

  return v12(v8, v9, v10);
}

uint64_t sub_216C4B9D8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_216C4BD10;
  }

  else
  {
    v5 = sub_216C4BB10;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_216C4BB10()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_5_109(v4, v5, v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750, &qword_217057230);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_216C4BBD8()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + 16);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  **(v0 + 88) = *(v0 + 144);
  OUTLINED_FUNCTION_14_63();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LoadablePageView(0, v4, v3, v5);
  OUTLINED_FUNCTION_19_45();
  v2();
  OUTLINED_FUNCTION_24_33();
  sub_21700AEE4();
  sub_21700AEC4();
  v6 = OUTLINED_FUNCTION_14_63();
  v8 = v7(v6);
  OUTLINED_FUNCTION_5_109(v8, v9, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750, &qword_217057230);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v12();
}

uint64_t sub_216C4BD10()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  v4 = v0[21];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];
  *v7 = v0[23];
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LoadablePageView(0, v10, v8, v11);
  v4(v5, v7, v9);
  OUTLINED_FUNCTION_24_33();
  sub_21700AEE4();
  sub_21700AEC4();
  v12 = (*(v6 + 8))(v7, v9);
  OUTLINED_FUNCTION_5_109(v12, v13, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC6750, &qword_217057230);
  sub_21700AEC4();

  OUTLINED_FUNCTION_3();

  return v16();
}

uint64_t sub_216C4BE78()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_38_0(&unk_2170571D8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_5(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_143(v1);

  return v4(v3);
}

unint64_t sub_216C4BF20()
{
  result = qword_280E2B310;
  if (!qword_280E2B310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6C60, &qword_217057228);
    sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B310);
  }

  return result;
}

uint64_t sub_216C4BFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6C60, &qword_217057228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C4C058(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for LoadablePageView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_216C4C0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = v4[5];
  v8 = *(type metadata accessor for LoadablePageView(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_9_5(v12);
  *v13 = v14;
  v13[1] = sub_2166AB4A4;

  return sub_216C4B490(a1, v10, v11, v4 + v9, v6, v7);
}

uint64_t sub_216C4C230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_216C4C284(_BYTE *result, unsigned int a2, unsigned int a3)
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

unsigned __int8 *sub_216C4C35C(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_216C4C418(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216C4C4EC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_216C4C508(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_216C4C538()
{
  sub_216C4E858();
  sub_21700CD14();
  return v1;
}

unint64_t sub_216C4C584(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_216C4C5D0(char a1)
{
  result = 0xD000000000000012;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  return result;
}

unint64_t sub_216C4C64C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_216C4C584(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_216C4C67C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_216C4C5D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_216C4C6AC()
{
  result = qword_27CAC6C68;
  if (!qword_27CAC6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6C68);
  }

  return result;
}

uint64_t sub_216C4C700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v203 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v188 = v174 - v11;
  OUTLINED_FUNCTION_4_1();
  v189 = sub_21700D3E4();
  OUTLINED_FUNCTION_1();
  v184 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v183 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47_1();
  v199 = v18;
  OUTLINED_FUNCTION_4_1();
  v198 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v195 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v190 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47_1();
  v194 = v25;
  OUTLINED_FUNCTION_4_1();
  v209 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v191 = v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47_1();
  v204 = v31;
  OUTLINED_FUNCTION_4_1();
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v206 = v32;
  v207 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  v197 = v39;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v40);
  v42 = v174 - v41;
  v192 = a3;
  v193 = a4;
  v44 = type metadata accessor for PageChangeInstruction(255, a3, a4, v43);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for OpaqueProtoRequestConvertibleIntent(0, v44, WitnessTable, v46);
  OUTLINED_FUNCTION_1();
  v200 = v47;
  v201 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1_0();
  v196 = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  v52 = (v174 - v51);
  OUTLINED_FUNCTION_18_52();
  v205 = a1;
  sub_21700CE04();
  v53 = a2;
  v54 = v27;
  v57 = *(v27 + 16);
  v55 = v27 + 16;
  v56 = v57;
  v58 = v204;
  v57(v204, v53, v209);
  v202 = v52;
  v59 = v58;
  v60 = v44;
  v61 = v208;
  sub_216EFFC4C(v42, v59, v44, WitnessTable, v52);
  v208 = v61;
  if (v61)
  {
    (*(v54 + 8))(v53, v209);
    return (*(v207 + 8))(v205, v206);
  }

  v174[1] = v55;
  v175 = v56;
  v176 = WitnessTable;
  v177 = v54;
  v204 = v53;
  v63 = v196;
  v64 = v200;
  (*(v201 + 16))(v196, v202, v200);
  OUTLINED_FUNCTION_10_79();
  v65 = swift_getWitnessTable();
  sub_2169425C8(v63, v64, v65, v203 + 1);
  v66 = v197;
  v67 = v205;
  sub_21700CE04();
  v68 = v199;
  sub_21700CD74();
  v70 = v207 + 8;
  v69 = *(v207 + 8);
  v69(v66, v206);
  v71 = v68;
  v72 = v198;
  v73 = v60;
  if (__swift_getEnumTagSinglePayload(v71, 1, v198) == 1)
  {
    sub_216697664(v199, &qword_27CAB78D0, &unk_21701A800);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_209();
    v76 = sub_216C4EA04(v74, v75, MEMORY[0x277D22550]);
    v77 = OUTLINED_FUNCTION_4(v76);
    v79 = v78;
    v81 = type metadata accessor for PageEventTrigger(0, v192, v193, v80);
    *v79 = 0x73746E657665;
    v79[1] = 0xE600000000000000;
    v79[2] = v81;
    OUTLINED_FUNCTION_50();
    (*(v82 + 104))(v79);
    v208 = v77;
    swift_willThrow();
    v83 = OUTLINED_FUNCTION_4_117();
    v84(v83);
    v69(v67, v206);
    v85 = OUTLINED_FUNCTION_6_96();
    v86(v85);
    v88 = 0;
    v89 = v203;
    goto LABEL_9;
  }

  v196 = v60;
  v197 = v69;
  v207 = v70;
  v91 = v194;
  v90 = v195;
  v92 = v195 + 32;
  v93 = v199;
  v199 = *(v195 + 32);
  v199(v194, v93, v72);
  v174[0] = *(v90 + 16);
  (v174[0])(v190, v91, v72);
  v94 = v209;
  v175(v191, v204, v209);
  type metadata accessor for MusicEvent(0);
  OUTLINED_FUNCTION_1_178();
  sub_216C4EA04(v95, v96, &unk_217043928);
  v97 = v208;
  v98 = sub_21700E934();
  v208 = v97;
  if (!v97)
  {
    v190 = v90 + 16;
    v191 = v92;
    v103 = v199;
    v104 = v203;
    v175 = v98;
    *v203 = v98;
    v105 = v185;
    sub_21700CE04();
    sub_216C4E858();
    sub_21700CD14();
    v106 = v206;
    v107 = v197;
    v197(v105, v206);
    v108 = v210;
    if (v210 == 3)
    {
      v109 = v181;
      sub_21700CE04();
      v110 = v182;
      sub_21700CD74();
      v107(v109, v106);
      v111 = v198;
      if (__swift_getEnumTagSinglePayload(v110, 1, v198) != 1)
      {
        v114 = v179;
        v103(v179, v110, v111);
        v115 = v180;
        (v174[0])(v180, v114, v111);
        v116 = v208;
        v117 = v111;
        v112 = sub_21700E2A4();
        v208 = v116;
        v113 = v195;
        v118 = *(v195 + 8);
        v118(v115, v117);
        v119 = v117;
        v106 = v206;
        v118(v114, v119);
LABEL_17:
        v120 = v187;
        v121 = v186;
        v104[6] = v112;
        v122 = v205;
        sub_21700CE04();
        v123 = v188;
        sub_21700CCB4();
        v124 = v197;
        v197(v121, v106);
        v125 = v189;
        if (__swift_getEnumTagSinglePayload(v123, 1, v189) == 1)
        {
          v126 = OUTLINED_FUNCTION_4_117();
          v127(v126);
          v124(v122, v106);
          (*(v113 + 8))(v194, v198);
          v128 = OUTLINED_FUNCTION_6_96();
          v129(v128);
          result = sub_216697664(v123, &qword_27CAB7D20, &qword_217018700);
        }

        else
        {
          v130 = v184;
          v131 = v183;
          (*(v184 + 32))(v183, v123, v125);
          v132 = v124;
          sub_21700D3F4();
          v133 = sub_21700CDB4();
          v135 = v134;
          v132(v120, v106);
          if (v135)
          {
            v136 = v133 == 0xD000000000000014 && 0x800000021708B2D0 == v135;
            v89 = v203;
            if (v136 || (sub_21700F7D4() & 1) != 0)
            {

              v137 = v178;
              v138 = v183;
              sub_21700D3F4();
              v139 = sub_21700CD44();
              v140 = OUTLINED_FUNCTION_4_117();
              v141(v140);
              v142 = v206;
              v143 = v197;
              v197(v205, v206);
              v143(v137, v142);
              OUTLINED_FUNCTION_67();
              v144(v138, v125);
              (*(v195 + 8))(v194, v198);
              v145 = OUTLINED_FUNCTION_6_96();
              result = v146(v145);
              v147 = v139 & 1;
            }

            else
            {
              v152 = v133 == 0x696C61766E496F6ELL && v135 == 0xEE006E6F69746164;
              v153 = v205;
              v154 = v206;
              v155 = v202;
              v156 = v195;
              if (!v152 && (sub_21700F7D4() & 1) == 0)
              {
                sub_21700E2E4();
                OUTLINED_FUNCTION_0_209();
                sub_216C4EA04(v160, v161, MEMORY[0x277D22550]);
                v162 = swift_allocError();
                v163 = v154;
                v165 = v164;
                v167 = type metadata accessor for PageEventTrigger(0, v192, v193, v166);
                *v165 = v133;
                v165[1] = v135;
                v165[2] = v167;
                OUTLINED_FUNCTION_50();
                (*(v168 + 104))(v165);
                v208 = v162;
                swift_willThrow();
                v169 = OUTLINED_FUNCTION_4_117();
                v170(v169);
                v197(v205, v163);
                OUTLINED_FUNCTION_67();
                v171(v183, v125);
                (*(v156 + 8))(v194, v198);
                v172 = OUTLINED_FUNCTION_6_96();
                v173(v172);

                v88 = 1;
                goto LABEL_8;
              }

              v157 = OUTLINED_FUNCTION_4_117();
              v158(v157);
              v197(v153, v154);
              OUTLINED_FUNCTION_67();
              v159(v183, v125);
              (*(v156 + 8))(v194, v198);
              result = (*(v201 + 8))(v155, v200);
              v147 = 2;
            }

LABEL_28:
            *(v89 + 56) = v147;
            return result;
          }

          v148 = OUTLINED_FUNCTION_4_117();
          v149(v148);
          v132(v205, v106);
          (*(v130 + 8))(v131, v125);
          (*(v195 + 8))(v194, v198);
          v150 = OUTLINED_FUNCTION_6_96();
          result = v151(v150);
        }

        v147 = 0;
        v89 = v203;
        goto LABEL_28;
      }

      sub_216697664(v110, &qword_27CAB78D0, &unk_21701A800);
      v112 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB38, &qword_2170254E0);
      v112 = swift_allocObject();
      *(v112 + 16) = xmmword_217013DA0;
      *(v112 + 32) = v108;
    }

    v113 = v195;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_67();
  v99(v204, v94);
  v197(v205, v206);
  (*(v90 + 8))(v91, v72);
  v100 = OUTLINED_FUNCTION_6_96();
  v101(v100);
  v88 = 0;
  v89 = v203;
LABEL_8:
  v73 = v196;
LABEL_9:
  type metadata accessor for AnyProtoRequestConvertibleIntent(0, v73, v176, v87);
  OUTLINED_FUNCTION_34();
  result = (*(v102 + 8))(v89 + 1);
  if (v88)
  {
  }

  return result;
}

uint64_t sub_216C4D6D8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C4D714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a2;
  v104 = a3;
  v99 = OUTLINED_FUNCTION_23_44();
  OUTLINED_FUNCTION_1();
  v101 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v93 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v90 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_47_1();
  v98 = v11;
  OUTLINED_FUNCTION_4_1();
  sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v96 = v13;
  v97 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v92 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47_1();
  v95 = v16;
  OUTLINED_FUNCTION_4_1();
  v17 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  v89 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v88 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  v26 = &v86 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v86 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v86 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CB0, &unk_217057580);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  v36 = (&v86 - v35);
  OUTLINED_FUNCTION_18_52();
  v102 = a1;
  sub_21700CE04();
  sub_21700CE04();
  v37 = sub_21700CDB4();
  v39 = v38;
  v40 = *(v19 + 8);
  v41 = v29;
  v42 = v17;
  v105 = v19 + 8;
  v103 = v40;
  v40(v41, v17);
  if (!v39)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_209();
    v56 = sub_216C4EA04(v54, v55, MEMORY[0x277D22550]);
    v57 = v17;
    v58 = OUTLINED_FUNCTION_4(v56);
    OUTLINED_FUNCTION_16_58(v58, v59);
    *(v60 + 8) = v61;
    *(v60 + 16) = v33;
    OUTLINED_FUNCTION_50();
    (*(v62 + 104))();
    swift_willThrow();
    v63 = v103;
    v103(v32, v57);
    (*(v101 + 8))(v100, v99);
    return v63(v102, v57);
  }

  (*(v19 + 32))(v36 + *(v33 + 36), v32, v17);
  *v36 = v37;
  v36[1] = v39;
  v43 = v104;
  *(v104 + 32) = v33;
  *(v43 + 40) = sub_216C4EA74(&qword_27CAC6CB8, &qword_27CAC6CB0, &unk_217057580);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v43 + 8));
  v91 = v36;
  sub_216681B04(v36, boxed_opaque_existential_1, &qword_27CAC6CB0, &unk_217057580);
  v45 = v102;
  sub_21700CE04();
  v46 = v98;
  sub_21700CD74();
  v47 = v103;
  v103(v26, v42);
  v48 = v97;
  if (__swift_getEnumTagSinglePayload(v46, 1, v97) == 1)
  {
    sub_216697664(v46, &qword_27CAB78D0, &unk_21701A800);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_209();
    v51 = sub_216C4EA04(v49, v50, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_4(v51);
    *v52 = 0x73746E657665;
    v52[1] = 0xE600000000000000;
    v52[2] = &unk_282931B70;
    OUTLINED_FUNCTION_50();
    (*(v53 + 104))();
    swift_willThrow();
    (*(v101 + 8))(v100, v99);
    v47(v45, v42);
LABEL_7:
    sub_216697664(v91, &qword_27CAC6CB0, &unk_217057580);
    return sub_216697664(v104 + 8, &qword_27CABBB28, &unk_2170254D0);
  }

  v87 = v42;
  v66 = v95;
  v65 = v96;
  (*(v96 + 32))(v95, v46, v48);
  (*(v65 + 16))(v92, v66, v48);
  v68 = v100;
  v67 = v101;
  v69 = v99;
  (*(v101 + 16))(v93, v100, v99);
  type metadata accessor for MusicEvent(0);
  v70 = v48;
  OUTLINED_FUNCTION_1_178();
  sub_216C4EA04(v71, v72, &unk_217043928);
  v73 = v94;
  v74 = sub_21700E934();
  if (v73)
  {
    (*(v67 + 8))(v68, v69);
    v103(v102, v87);
    (*(v65 + 8))(v66, v48);
    goto LABEL_7;
  }

  *v104 = v74;
  v75 = v88;
  sub_21700CE04();
  v76 = v90;
  sub_21700CD74();
  v103(v75, v87);
  if (__swift_getEnumTagSinglePayload(v76, 1, v70) == 1)
  {
    sub_216697664(v76, &qword_27CAB78D0, &unk_21701A800);
    v77 = 0;
    v78 = v96;
  }

  else
  {
    v79 = sub_21700E2A4();
    v80 = v76;
    v77 = v79;
    v78 = v96;
    (*(v96 + 8))(v80, v70);
  }

  *(v104 + 48) = v77;
  v81 = v89;
  v82 = v102;
  sub_21700CE04();
  sub_216C4E858();
  sub_21700CD14();
  (*(v101 + 8))(v68, v69);
  v83 = v82;
  v84 = v87;
  v85 = v103;
  v103(v83, v87);
  v85(v81, v84);
  (*(v78 + 8))(v66, v70);
  result = sub_216697664(v91, &qword_27CAC6CB0, &unk_217057580);
  *(v104 + 56) = v106;
  return result;
}

uint64_t sub_216C4DFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v83 = a2;
  v80 = a3;
  v84 = OUTLINED_FUNCTION_23_44();
  OUTLINED_FUNCTION_1();
  v81 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v75 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v79 = v71 - v9;
  OUTLINED_FUNCTION_4_1();
  v85 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v76 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v73 = v12;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47_1();
  v74 = v14;
  OUTLINED_FUNCTION_4_1();
  v15 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v78 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v22 = v71 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v71 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6C98, &qword_2170574D8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = (v71 - v28);
  OUTLINED_FUNCTION_18_52();
  v82 = a1;
  sub_21700CE04();
  sub_21700CE04();
  v30 = sub_21700CDB4();
  v32 = v31;
  v33 = (v17 + 8);
  v86 = *(v17 + 8);
  v86(v22, v15);
  if (!v32)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_209();
    v48 = sub_216C4EA04(v46, v47, MEMORY[0x277D22550]);
    v49 = OUTLINED_FUNCTION_3_0(v48);
    OUTLINED_FUNCTION_16_58(v49, v50);
    *(v51 + 8) = v52;
    *(v51 + 16) = v26;
    OUTLINED_FUNCTION_50();
    (*(v53 + 104))();
    swift_willThrow();
    v54 = v86;
    v86(v25, v15);
    (*(v81 + 8))(v83, v84);
    return v54(v82, v15);
  }

  (*(v17 + 32))(v29 + *(v26 + 36), v25, v15);
  *v29 = v30;
  v29[1] = v32;
  v34 = v80;
  v80[4] = v26;
  v34[5] = sub_216C4EA74(&qword_27CAC6CA0, &qword_27CAC6C98, &qword_2170574D8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34 + 1);
  v72 = v29;
  sub_216681B04(v29, boxed_opaque_existential_1, &qword_27CAC6C98, &qword_2170574D8);
  v36 = v78;
  v37 = v82;
  sub_21700CE04();
  v38 = v79;
  sub_21700CD74();
  v39 = v86;
  v86(v36, v15);
  if (__swift_getEnumTagSinglePayload(v38, 1, v85) == 1)
  {
    sub_216697664(v38, &qword_27CAB78D0, &unk_21701A800);
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_209();
    v42 = sub_216C4EA04(v40, v41, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_3_0(v42);
    *v43 = 0x73746E657665;
    v43[1] = 0xE600000000000000;
    v43[2] = &unk_282931998;
    OUTLINED_FUNCTION_50();
    (*(v44 + 104))();
    swift_willThrow();
    (*(v81 + 8))(v83, v84);
    v39(v37, v15);
    v45 = v72;
  }

  else
  {
    v78 = v33;
    v71[1] = v15;
    v56 = v76;
    v57 = v74;
    v58 = v85;
    (*(v76 + 32))(v74, v38, v85);
    (*(v56 + 16))(v73, v57, v58);
    v59 = v81;
    v61 = v83;
    v60 = v84;
    (*(v81 + 16))(v75, v83, v84);
    type metadata accessor for MusicEvent(0);
    OUTLINED_FUNCTION_1_178();
    sub_216C4EA04(v62, v63, &unk_217043928);
    v64 = v77;
    v65 = sub_21700E934();
    if (!v64)
    {
      v68 = v65;
      (*(v59 + 8))(v61, v60);
      v69 = OUTLINED_FUNCTION_22_48();
      v70(v69);
      (*(v56 + 8))(v57, v85);
      result = sub_216697664(v72, &qword_27CAC6C98, &qword_2170574D8);
      *v80 = v68;
      return result;
    }

    (*(v59 + 8))(v61, v60);
    v66 = OUTLINED_FUNCTION_22_48();
    v67(v66);
    (*(v56 + 8))(v57, v85);
    v45 = v72;
    v34 = v80;
  }

  sub_216697664(v45, &qword_27CAC6C98, &qword_2170574D8);
  return sub_216697664((v34 + 1), &qword_27CAC6CA8, &qword_2170574E0);
}

uint64_t sub_216C4E794(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6C78, qword_2170574A8);
    sub_216C4EA04(a2, type metadata accessor for TabBanner, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216C4E830(uint64_t a1)
{
  result = sub_216AC7DA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_216C4E858()
{
  result = qword_280E3D8A8;
  if (!qword_280E3D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D8A8);
  }

  return result;
}

uint64_t sub_216C4E8AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216C4C538();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_216C4E8D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_216C4E918(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216C4EA04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216C4EA4C(uint64_t a1)
{
  result = sub_216AC7D54();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C4EA74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_10_79();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216C4EACC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_216853570(*(a1 + a2 - 16), *(a1 + a2 - 8), a2, a4);
  *a3 = result;
  return result;
}

uint64_t sub_216C4EB00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = swift_unknownObjectRetain();
  return sub_2168535C0(v6, v4, v5, v7);
}

uint64_t sub_216C4EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v62 = *(v4 - 8);
  v5 = v62;
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v50 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v61 = &v48 - v13;
  MEMORY[0x28223BE20](v14);
  v51 = &v48 - v15;
  MEMORY[0x28223BE20](v16);
  v52 = &v48 - v17;
  MEMORY[0x28223BE20](v18);
  v53 = &v48 - v19;
  MEMORY[0x28223BE20](v20);
  v54 = &v48 - v21;
  MEMORY[0x28223BE20](v22);
  v55 = &v48 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7068, &qword_217057B48);
  swift_allocObject();

  v63 = sub_216B94EA4(v24);
  v25 = *(v5 + 16);
  v25(v7, v2, v4);
  sub_2168AECC8(&qword_27CAC7070, &qword_27CAC7068, &qword_217057B48);
  sub_21700D5A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7078, &qword_217057B50);
  swift_allocObject();

  v63 = sub_216B94EA4(v26);
  v27 = v49;
  v25(v49, v7, v4);
  v59 = v5 + 16;
  sub_2168AECC8(&qword_27CAC7080, &qword_27CAC7078, &qword_217057B50);
  sub_21700D5A4();
  v28 = v62 + 8;
  v60 = *(v62 + 8);
  v60(v7, v4);

  v29 = a1;
  v58 = a1;
  v63 = a1;
  v30 = v50;
  v25(v50, v27, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7088, &qword_217057B58);
  v57 = &unk_21704718C;
  sub_2168AECC8(&qword_27CAC7090, &qword_27CAC7088, &qword_217057B58);
  sub_21700D5A4();
  v31 = v60;
  v60(v27, v4);
  v63 = v29;
  v32 = v61;
  v25(v61, v30, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7098, &qword_217057B60);
  sub_2168AECC8(&qword_27CAC70A0, &qword_27CAC7098, &qword_217057B60);
  sub_21700D5A4();
  v31(v30, v4);
  v33 = v31;
  v34 = v58;
  v62 = v28;
  v63 = v58;
  v35 = v51;
  v25(v51, v32, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70A8, &qword_217057B68);
  sub_2168AECC8(&qword_27CAC70B0, &qword_27CAC70A8, &qword_217057B68);
  v36 = v35;
  sub_21700D5A4();
  v33(v61, v4);
  v63 = v34;
  v37 = v52;
  v25(v52, v36, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70B8, &qword_217057B70);
  sub_2168AECC8(&qword_27CAC70C0, &qword_27CAC70B8, &qword_217057B70);
  sub_21700D5A4();
  v33(v36, v4);
  v38 = v33;
  v63 = v34;
  v39 = v53;
  v25(v53, v37, v4);
  v48 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70C8, &qword_217057B78);
  sub_2168AECC8(&qword_27CAC70D0, &qword_27CAC70C8, &qword_217057B78);
  sub_21700D5A4();
  v38(v37, v4);
  v40 = v58;
  v63 = v58;
  v41 = v54;
  v25(v54, v39, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70D8, &qword_217057B80);
  sub_2168AECC8(&qword_27CAC70E0, &qword_27CAC70D8, &qword_217057B80);
  sub_21700D5A4();
  v42 = v60;
  v60(v39, v4);
  v63 = v40;
  v43 = v55;
  v44 = v41;
  v45 = v41;
  v46 = v48;
  v48(v55, v44, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70E8, &qword_217057B88);
  sub_2168AECC8(&qword_27CAC70F0, &qword_27CAC70E8, &qword_217057B88);
  sub_21700D5A4();
  v42(v45, v4);
  v63 = v40;
  v46(v56, v43, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC70F8, &unk_217057B90);
  sub_2168AECC8(&qword_27CAC7100, &qword_27CAC70F8, &unk_217057B90);
  sub_21700D5A4();
  return (v42)(v43, v4);
}

uint64_t sub_216C4F380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v62 = *(v4 - 8);
  v5 = v62;
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v50 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v61 = &v48 - v13;
  MEMORY[0x28223BE20](v14);
  v51 = &v48 - v15;
  MEMORY[0x28223BE20](v16);
  v52 = &v48 - v17;
  MEMORY[0x28223BE20](v18);
  v53 = &v48 - v19;
  MEMORY[0x28223BE20](v20);
  v54 = &v48 - v21;
  MEMORY[0x28223BE20](v22);
  v55 = &v48 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FC8, &qword_217057AF8);
  swift_allocObject();

  v63 = sub_216B94EA4(v24);
  v25 = *(v5 + 16);
  v25(v7, v2, v4);
  sub_2168AECC8(&qword_27CAC6FD0, &qword_27CAC6FC8, &qword_217057AF8);
  sub_21700D5A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FD8, &qword_217057B00);
  swift_allocObject();

  v63 = sub_216B94EA4(v26);
  v27 = v49;
  v25(v49, v7, v4);
  v59 = v5 + 16;
  sub_2168AECC8(&qword_27CAC6FE0, &qword_27CAC6FD8, &qword_217057B00);
  sub_21700D5A4();
  v28 = v62 + 8;
  v60 = *(v62 + 8);
  v60(v7, v4);

  v29 = a1;
  v58 = a1;
  v63 = a1;
  v30 = v50;
  v25(v50, v27, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FE8, &qword_217057B08);
  v57 = &unk_21704718C;
  sub_2168AECC8(&qword_27CAC6FF0, &qword_27CAC6FE8, &qword_217057B08);
  sub_21700D5A4();
  v31 = v60;
  v60(v27, v4);
  v63 = v29;
  v32 = v61;
  v25(v61, v30, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FF8, &qword_217057B10);
  sub_2168AECC8(&qword_27CAC7000, &qword_27CAC6FF8, &qword_217057B10);
  sub_21700D5A4();
  v31(v30, v4);
  v33 = v31;
  v34 = v58;
  v62 = v28;
  v63 = v58;
  v35 = v51;
  v25(v51, v32, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7008, &qword_217057B18);
  sub_2168AECC8(&qword_27CAC7010, &qword_27CAC7008, &qword_217057B18);
  v36 = v35;
  sub_21700D5A4();
  v33(v61, v4);
  v63 = v34;
  v37 = v52;
  v25(v52, v36, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7018, &qword_217057B20);
  sub_2168AECC8(&qword_27CAC7020, &qword_27CAC7018, &qword_217057B20);
  sub_21700D5A4();
  v33(v36, v4);
  v38 = v33;
  v63 = v34;
  v39 = v53;
  v25(v53, v37, v4);
  v48 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7028, &qword_217057B28);
  sub_2168AECC8(&qword_27CAC7030, &qword_27CAC7028, &qword_217057B28);
  sub_21700D5A4();
  v38(v37, v4);
  v40 = v58;
  v63 = v58;
  v41 = v54;
  v25(v54, v39, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7038, &qword_217057B30);
  sub_2168AECC8(&qword_27CAC7040, &qword_27CAC7038, &qword_217057B30);
  sub_21700D5A4();
  v42 = v60;
  v60(v39, v4);
  v63 = v40;
  v43 = v55;
  v44 = v41;
  v45 = v41;
  v46 = v48;
  v48(v55, v44, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7048, &qword_217057B38);
  sub_2168AECC8(&qword_27CAC7050, &qword_27CAC7048, &qword_217057B38);
  sub_21700D5A4();
  v42(v45, v4);
  v63 = v40;
  v46(v56, v43, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7058, &qword_217057B40);
  sub_2168AECC8(&qword_27CAC7060, &qword_27CAC7058, &qword_217057B40);
  sub_21700D5A4();
  return (v42)(v43, v4);
}

uint64_t sub_216C4FBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v62 = *(v4 - 8);
  v5 = v62;
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v50 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v61 = &v48 - v13;
  MEMORY[0x28223BE20](v14);
  v51 = &v48 - v15;
  MEMORY[0x28223BE20](v16);
  v52 = &v48 - v17;
  MEMORY[0x28223BE20](v18);
  v53 = &v48 - v19;
  MEMORY[0x28223BE20](v20);
  v54 = &v48 - v21;
  MEMORY[0x28223BE20](v22);
  v55 = &v48 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F18, &qword_217057A90);
  swift_allocObject();

  v63 = sub_216B94EA4(v24);
  v25 = *(v5 + 16);
  v25(v7, v2, v4);
  sub_2168AECC8(&qword_27CAC6F20, &qword_27CAC6F18, &qword_217057A90);
  sub_21700D5A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F28, &qword_217057A98);
  swift_allocObject();

  v63 = sub_216B94EA4(v26);
  v27 = v49;
  v25(v49, v7, v4);
  v59 = v5 + 16;
  sub_2168AECC8(&qword_27CAC6F30, &qword_27CAC6F28, &qword_217057A98);
  sub_21700D5A4();
  v28 = v62 + 8;
  v60 = *(v62 + 8);
  v60(v7, v4);

  v29 = a1;
  v58 = a1;
  v63 = a1;
  v30 = v50;
  v25(v50, v27, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F38, &qword_217057AA0);
  v57 = &unk_21704718C;
  sub_2168AECC8(&qword_27CAC6F40, &qword_27CAC6F38, &qword_217057AA0);
  sub_21700D5A4();
  v31 = v60;
  v60(v27, v4);
  v63 = v29;
  v32 = v61;
  v25(v61, v30, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F48, &qword_217057AA8);
  sub_2168AECC8(&qword_27CAC6F50, &qword_27CAC6F48, &qword_217057AA8);
  sub_21700D5A4();
  v31(v30, v4);
  v33 = v31;
  v34 = v58;
  v62 = v28;
  v63 = v58;
  v35 = v51;
  v25(v51, v32, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F58, &qword_217057AB0);
  sub_2168AECC8(&qword_27CAC6F60, &qword_27CAC6F58, &qword_217057AB0);
  v36 = v35;
  sub_21700D5A4();
  v33(v61, v4);
  v63 = v34;
  v37 = v52;
  v25(v52, v36, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F68, &qword_217057AB8);
  sub_2168AECC8(&qword_27CAC6F70, &qword_27CAC6F68, &qword_217057AB8);
  sub_21700D5A4();
  v33(v36, v4);
  v38 = v33;
  v63 = v34;
  v39 = v53;
  v25(v53, v37, v4);
  v48 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F78, &qword_217057AC0);
  sub_2168AECC8(&qword_27CAC6F80, &qword_27CAC6F78, &qword_217057AC0);
  sub_21700D5A4();
  v38(v37, v4);
  v40 = v58;
  v63 = v58;
  v41 = v54;
  v25(v54, v39, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F88, &qword_217057AC8);
  sub_2168AECC8(&qword_27CAC6F90, &qword_27CAC6F88, &qword_217057AC8);
  sub_21700D5A4();
  v42 = v60;
  v60(v39, v4);
  v63 = v40;
  v43 = v55;
  v44 = v41;
  v45 = v41;
  v46 = v48;
  v48(v55, v44, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F98, &qword_217057AD0);
  sub_2168AECC8(&qword_27CAC6FA0, &qword_27CAC6F98, &qword_217057AD0);
  sub_21700D5A4();
  v42(v45, v4);
  v63 = v40;
  v46(v56, v43, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FA8, &unk_217057AD8);
  sub_2168AECC8(&qword_27CAC6FB0, &qword_27CAC6FA8, &unk_217057AD8);
  sub_21700D5A4();
  return (v42)(v43, v4);
}

uint64_t sub_216C503F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v62 = *(v4 - 8);
  v5 = v62;
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v50 = &v48 - v11;
  MEMORY[0x28223BE20](v12);
  v61 = &v48 - v13;
  MEMORY[0x28223BE20](v14);
  v51 = &v48 - v15;
  MEMORY[0x28223BE20](v16);
  v52 = &v48 - v17;
  MEMORY[0x28223BE20](v18);
  v53 = &v48 - v19;
  MEMORY[0x28223BE20](v20);
  v54 = &v48 - v21;
  MEMORY[0x28223BE20](v22);
  v55 = &v48 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7108, &qword_217057BA0);
  swift_allocObject();

  v63 = sub_216B94EA4(v24);
  v25 = *(v5 + 16);
  v25(v7, v2, v4);
  sub_2168AECC8(qword_280E30690, &qword_27CAC7108, &qword_217057BA0);
  sub_21700D5A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7110, &qword_217057BA8);
  swift_allocObject();

  v63 = sub_216B94EA4(v26);
  v27 = v49;
  v25(v49, v7, v4);
  v59 = v5 + 16;
  sub_2168AECC8(qword_280E2EF98, &qword_27CAC7110, &qword_217057BA8);
  sub_21700D5A4();
  v28 = v62 + 8;
  v60 = *(v62 + 8);
  v60(v7, v4);

  v29 = a1;
  v58 = a1;
  v63 = a1;
  v30 = v50;
  v25(v50, v27, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7118, &qword_217057BB0);
  v57 = &unk_21704718C;
  sub_2168AECC8(&qword_280E337E0, &qword_27CAC7118, &qword_217057BB0);
  sub_21700D5A4();
  v31 = v60;
  v60(v27, v4);
  v63 = v29;
  v32 = v61;
  v25(v61, v30, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7120, &qword_217057BB8);
  sub_2168AECC8(&qword_280E337F0, &qword_27CAC7120, &qword_217057BB8);
  sub_21700D5A4();
  v31(v30, v4);
  v33 = v31;
  v34 = v58;
  v62 = v28;
  v63 = v58;
  v35 = v51;
  v25(v51, v32, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7128, &qword_217057BC0);
  sub_2168AECC8(&qword_280E337E8, &qword_27CAC7128, &qword_217057BC0);
  v36 = v35;
  sub_21700D5A4();
  v33(v61, v4);
  v63 = v34;
  v37 = v52;
  v25(v52, v36, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7130, &qword_217057BC8);
  sub_2168AECC8(qword_280E337F8, &qword_27CAC7130, &qword_217057BC8);
  sub_21700D5A4();
  v33(v36, v4);
  v38 = v33;
  v63 = v34;
  v39 = v53;
  v25(v53, v37, v4);
  v48 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7138, &qword_217057BD0);
  sub_2168AECC8(qword_280E33880, &qword_27CAC7138, &qword_217057BD0);
  sub_21700D5A4();
  v38(v37, v4);
  v40 = v58;
  v63 = v58;
  v41 = v54;
  v25(v54, v39, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7140, &qword_217057BD8);
  sub_2168AECC8(qword_280E2E0A8, &qword_27CAC7140, &qword_217057BD8);
  sub_21700D5A4();
  v42 = v60;
  v60(v39, v4);
  v63 = v40;
  v43 = v55;
  v44 = v41;
  v45 = v41;
  v46 = v48;
  v48(v55, v44, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7148, &qword_217057BE0);
  sub_2168AECC8(&qword_27CAC7150, &qword_27CAC7148, &qword_217057BE0);
  sub_21700D5A4();
  v42(v45, v4);
  v63 = v40;
  v46(v56, v43, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7158, qword_217057BE8);
  sub_2168AECC8(&qword_27CAC7160, &qword_27CAC7158, qword_217057BE8);
  sub_21700D5A4();
  return (v42)(v43, v4);
}

uint64_t sub_216C50C34@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E60, &qword_217057730);
  MEMORY[0x28223BE20](v67);
  v61 = &v54 - v1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EB0, &qword_2170579A0);
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - v2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E40, &qword_217057718);
  MEMORY[0x28223BE20](v73);
  v68 = &v54 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E50, &unk_217057720);
  MEMORY[0x28223BE20](v63);
  v60 = &v54 - v4;
  v5 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E30, &unk_217057708);
  MEMORY[0x28223BE20](v62);
  v59 = &v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EB8, &qword_2170579A8);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EC0, &qword_2170579B0);
  MEMORY[0x28223BE20](v69);
  v71 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EC8, &qword_2170579B8);
  MEMORY[0x28223BE20](v12);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D90, &qword_2170576B8);
  MEMORY[0x28223BE20](v70);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D80, &qword_2170576B0);
  MEMORY[0x28223BE20](v15);
  v72 = &v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8, &unk_2170575E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  sub_2166A6EA4();
  v23 = type metadata accessor for BackgroundConfiguration(0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
LABEL_2:
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8, &qword_217057600);
    sub_216C5447C();
    sub_216C54594();
    sub_217009554();
  }

  else
  {
    v56 = v15;
    v57 = v10;
    v58 = v8;
    sub_2166A6EA4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v24 = *(v19 + 5);
        v55 = v22;
        v25 = v19[48];
        sub_2167B8EF0(v19, v75);
        v26 = v59;
        v27 = &v59[*(v62 + 36)];
        sub_2167B7D58(v75, v27);
        *(v27 + 40) = v24;
        *(v27 + 48) = v25;
        *(v27 + 56) = sub_21700B3B4();
        *(v27 + 64) = v28;
        sub_2166A6EA4();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8, &qword_217057600);
        sub_216C54594();
        sub_216C54C8C();
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54508();
        sub_216C54D44();
        v29 = v72;
        sub_217009554();
        sub_216697664(v14, &qword_27CAC6D90, &qword_2170576B8);
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C5447C();
        sub_217009554();
        sub_216697664(v29, &qword_27CAC6D80, &qword_2170576B0);
        v22 = v55;
        sub_216697664(v26, &qword_27CAC6E30, &unk_217057708);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        return sub_216697664(v22, &qword_27CABBAA8, &unk_2170575E0);
      case 2u:
        sub_216C55FC8();
        v43 = sub_21700B3B4();
        v45 = v44;
        v46 = *(v63 + 36);
        v55 = v22;
        v47 = v60;
        v48 = &v60[v46];
        sub_21698A02C(&v60[v46]);
        v49 = &v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA78, &unk_2170708C0) + 36)];
        *v49 = v43;
        v49[1] = v45;
        sub_2166A6EA4();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54DD0();
        sub_216C54E88();
        v50 = v68;
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54508();
        sub_216C54D44();
        v51 = v72;
        sub_217009554();
        sub_216697664(v50, &qword_27CAC6E40, &qword_217057718);
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8, &qword_217057600);
        sub_216C5447C();
        sub_216C54594();
        sub_217009554();
        v22 = v55;
        sub_216697664(v51, &qword_27CAC6D80, &qword_2170576B0);
        sub_216697664(v47, &qword_27CAC6E50, &unk_217057720);
        sub_216C55F70(v64, type metadata accessor for Artwork);
        return sub_216697664(v22, &qword_27CABBAA8, &unk_2170575E0);
      case 3u:
        v30 = *v19;
        v31 = sub_21700B3B4();
        v33 = v32;
        v34 = *(v67 + 36);
        v55 = v22;
        v35 = v61;
        v36 = &v61[v34];
        sub_21698A1F0(&v61[v34], v30);
        v37 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA80, &qword_217024F80) + 36)];
        *v37 = v31;
        v37[1] = v33;
        sub_2166A6EA4();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54DD0();
        sub_216C54E88();
        v38 = v68;
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54508();
        sub_216C54D44();
        v39 = v72;
        sub_217009554();
        sub_216697664(v38, &qword_27CAC6E40, &qword_217057718);
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8, &qword_217057600);
        sub_216C5447C();
        sub_216C54594();
        sub_217009554();
        v22 = v55;
        sub_216697664(v39, &qword_27CAC6D80, &qword_2170576B0);
        v40 = v35;
        v41 = &qword_27CAC6E60;
        v42 = &qword_217057730;
        goto LABEL_8;
      case 5u:
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8, &qword_217057600);
        sub_216C54594();
        sub_216C54C8C();
        sub_217009554();
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C54508();
        sub_216C54D44();
        v52 = v72;
        sub_217009554();
        sub_216697664(v14, &qword_27CAC6D90, &qword_2170576B8);
        sub_2166A6EA4();
        swift_storeEnumTagMultiPayload();
        sub_216C5447C();
        sub_217009554();
        v40 = v52;
        v41 = &qword_27CAC6D80;
        v42 = &qword_2170576B0;
LABEL_8:
        sub_216697664(v40, v41, v42);
        break;
      default:
        sub_216C55F70(v19, type metadata accessor for BackgroundConfiguration);
        goto LABEL_2;
    }
  }

  return sub_216697664(v22, &qword_27CABBAA8, &unk_2170575E0);
}

uint64_t sub_216C51980()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54C0, &qword_217051170);
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_8();
  v1(v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FB8, &qword_217057AE8);
  OUTLINED_FUNCTION_25_43(v2);
  swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6FC0, &qword_217057AF0);
  return OUTLINED_FUNCTION_19_46(v3);
}

uint64_t sub_216C51AF4()
{
  swift_getKeyPath();
  sub_2166A6EA4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC69D0, &unk_217055F60);
  OUTLINED_FUNCTION_25_43(v0);
  swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6980, &qword_217055F10);
  return OUTLINED_FUNCTION_19_46(v1);
}

uint64_t sub_216C51C48@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 <= 374.0)
  {
    v4 = 0;
    v3 = 16.0;
  }

  else
  {
    v3 = 20.0;
    if (a2 <= 500.0)
    {
      v4 = 1;
    }

    else if (a2 <= 726.0)
    {
      v4 = 2;
    }

    else
    {
      if (a2 <= 981.0)
      {
        v4 = 3;
      }

      else if (a2 <= 1194.0)
      {
        v4 = 4;
      }

      else if (a2 <= 1500.0)
      {
        v4 = 5;
      }

      else if (a2 > 2500.0)
      {
        v4 = 7;
      }

      else
      {
        v4 = 6;
      }

      v3 = 34.0;
    }
  }

  KeyPath = swift_getKeyPath();
  sub_2166A6EA4();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E10, &unk_2170576F0) + 36);
  *v6 = KeyPath;
  *(v6 + 8) = v4;
  v7 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E00, &qword_2170576E8);
  v9 = (a1 + *(result + 36));
  *v9 = v7;
  v9[1] = 0;
  *(v9 + 2) = v3;
  v9[3] = 0;
  *(v9 + 4) = v3;
  return result;
}

uint64_t sub_216C51E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8, &unk_2170575E0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_2166A6EA4();
  return a5(v9);
}

uint64_t sub_216C51F00()
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for CatalogPagePresenter.State(255, *(v1 + v2 - 16), *(v1 + v2 - 8), v2);
  sub_21700F164();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = OUTLINED_FUNCTION_24_34(v4);
  v6(v5, v0);
  return sub_216A43ACC();
}

uint64_t sub_216C52034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = type metadata accessor for BackgroundConfiguration(0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_82();
  sub_216C55F18();
  return a5(v10);
}

void sub_216C520F0()
{
  OUTLINED_FUNCTION_92();
  v0 = OUTLINED_FUNCTION_82();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_36(v2);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v6 - v4;
  sub_2166A6EA4();
  sub_216A45FC0(v5);
}

uint64_t sub_216C521BC(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  type metadata accessor for ObjectGraph(0);
  sub_21700D5F4();
  a2(a1);
  v14 = *(v6 + 8);
  v14(v10, v4);
  v15 = sub_216E9C508(v13);
  v14(v13, v4);
  return v15;
}

uint64_t RelatedContentView.init(item:stackAuthority:shelfWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();

  sub_2166B6484(v8);

  v9 = *(a1 + 24);
  v10 = *(**(a1 + 32) + 104);

  v10(a2, v9);

  v11 = type metadata accessor for RelatedContentView(0);
  v12 = (a3 + v11[5]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0, &unk_21701E4B0);
  OUTLINED_FUNCTION_3_2();
  sub_2168AECC8(v13, &qword_27CAB9AA0, &unk_21701E4B0);
  *v12 = sub_217008684();
  v12[1] = v14;
  v15 = *(a1 + 48);
  v16 = a3 + v11[6];
  *v16 = *(a1 + 40);
  v16[8] = v15;
  *(a3 + v11[7]) = *(*(a1 + 16) + *(**(a1 + 16) + 160));
  *(a3 + v11[11]) = a2;
  *(a3 + v11[12]) = a4;
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  swift_retain_n();

  sub_21700E094();
  *(a3 + v11[8]) = v20;
  v17 = type metadata accessor for SocialGraphController(0);
  OUTLINED_FUNCTION_26_42(v17);
  *(a3 + v11[9]) = v20;
  v18 = type metadata accessor for AppDestinationPageProviderBox();
  OUTLINED_FUNCTION_26_42(v18);

  *(a3 + v11[10]) = v20;
  return result;
}

uint64_t type metadata accessor for RelatedContentView(uint64_t a1)
{
  result = qword_27CAC6E80;
  if (!qword_27CAC6E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RelatedContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v252 = a1;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CC0, &unk_2170575C0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_105();
  v249 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28, &unk_217041400);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v6);
  v239 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v237 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v10 - v9);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CC8, &qword_2170575D0);
  OUTLINED_FUNCTION_1();
  v234 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CD0, &qword_2170575D8);
  OUTLINED_FUNCTION_1();
  v240 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v16);
  v17 = sub_21700D704();
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v20 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  v232 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v245 = v203 - v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_70(v203 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9180, &qword_21701C770);
  OUTLINED_FUNCTION_36(v29);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  v229 = sub_2170080D4();
  OUTLINED_FUNCTION_1();
  v228 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v35 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBAA8, &unk_2170575E0);
  OUTLINED_FUNCTION_36(v36);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_36(v39);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CD8, &qword_2170575F0);
  OUTLINED_FUNCTION_36(v42);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v44);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE0, &qword_2170575F8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v46);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CE8, &qword_217057600);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CF0, &qword_217057608);
  OUTLINED_FUNCTION_36(v49);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v51);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6CF8, &qword_217057610);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v53);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D00, &qword_217057618);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v55);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D08, &qword_217057620);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v57);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D10, &qword_217057628);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D18, &qword_217057630);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D20, &qword_217057638);
  OUTLINED_FUNCTION_1();
  v231 = v64;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v66);
  v67 = type metadata accessor for MappedCatalogPage(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v70 - v69);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D28, &qword_217057640);
  v72 = OUTLINED_FUNCTION_36(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_77();
  v75 = v73 - v74;
  MEMORY[0x28223BE20](v76);
  v78 = v203 - v77;
  v241 = type metadata accessor for RelatedContentView(0);
  v79 = *(v1 + v241[5] + 8);
  v80 = type metadata accessor for Page(0);
  v255 = v80;
  v81 = sub_216C55ED4(&qword_280E2C548, type metadata accessor for Page);
  v256 = v81;
  swift_getKeyPath();
  v214 = v80;
  v253 = v80;
  v254 = v81;
  v213 = v81;
  v82 = v250;
  swift_getKeyPath();
  v247 = v79;
  sub_217007DE4();

  v83 = v78;

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D30, &qword_2170576A0);
  if (__swift_getEnumTagSinglePayload(v78, 1, v84) == 1)
  {
    goto LABEL_4;
  }

  v207 = v60;
  v208 = v63;
  sub_2166A6EA4();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_216697664(v75, &qword_27CAC6D30, &qword_2170576A0);
    v82 = v250;
    v60 = v207;
LABEL_4:
    swift_storeEnumTagMultiPayload();
    v85 = sub_216C53FA0();
    v260 = v60;
    v261 = v85;
    v86 = OUTLINED_FUNCTION_12_70();
    v260 = v82;
    v261 = v86;
    v87 = OUTLINED_FUNCTION_11_76();
    v260 = v248;
    v261 = v87;
    OUTLINED_FUNCTION_10_80();
    sub_217009554();
    return sub_216697664(v83, &qword_27CAC6D28, &qword_217057640);
  }

  v205 = v78;
  v89 = v243;
  sub_216C55FC8();
  v90 = v241;
  v91 = v1;
  sub_216E9C900(*(v91 + v241[11]), *(v91 + v241[10]));
  v92 = v247;
  v93 = sub_216C521BC(v247, sub_216C4FBBC);

  type metadata accessor for MenuBuilder();
  v94 = sub_216C65C14();
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  v204 = type metadata accessor for AddToPlaylistMenuBuilder();
  v96 = swift_allocObject();
  *(v96 + 16) = v93;
  v97 = *(v89 + *(v67 + 24));

  v98 = sub_2170093B4();
  v99 = v209;
  *v209 = v98;
  *(v99 + 8) = 0;
  *(v99 + 16) = 0;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6E78, &qword_217057748);
  sub_216C54F40(v91, v97, v93, v99 + *(v100 + 44));
  v101 = v90[12];
  v206 = v91;
  v102 = *(v91 + v101);
  v103 = sub_2170098A4();
  v104 = v210;
  __swift_storeEnumTagSinglePayload(v210, 1, 1, v103);
  v105 = v211;
  sub_216C51C48(v211, v102);
  sub_216697664(v104, &qword_27CAB8600, &qword_217020AD0);
  sub_216697664(v99, &qword_27CAC6CD8, &qword_2170575F0);
  type metadata accessor for MusicEntityAnnotationWrapper();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_216C55ED4(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  OUTLINED_FUNCTION_42_0();
  sub_217007D54();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6DF0, &qword_2170576E0);
  OUTLINED_FUNCTION_21_53(v106);
  type metadata accessor for PlaybackPresenter(0);
  sub_21700E094();
  sub_216C55ED4(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  OUTLINED_FUNCTION_42_0();
  sub_217007D54();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6DE0, &qword_2170576D8);
  OUTLINED_FUNCTION_21_53(v107);
  type metadata accessor for ExplicitBadgingPresenter(0);
  v203[1] = *(*v92 + 160);

  sub_21700E094();

  sub_216C55ED4(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  OUTLINED_FUNCTION_42_0();
  sub_217007D54();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6DD0, &qword_2170576D0);
  OUTLINED_FUNCTION_21_53(v108);
  sub_216C55ED4(qword_280E45220, type metadata accessor for MenuBuilder);
  v109 = sub_217007D54();
  v110 = (v105 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6DC0, &qword_2170576C8) + 36));
  *v110 = v109;
  v110[1] = v95;
  sub_216C55ED4(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder);
  v209 = v95;

  v111 = sub_217007D54();
  v112 = (v105 + *(v212 + 36));
  *v112 = v111;
  v112[1] = v96;
  sub_216C54758();
  v204 = v96;

  v113 = v246;
  v210 = v93;
  OUTLINED_FUNCTION_82();
  sub_21700A1E4();
  sub_216697664(v105, &qword_27CAC6CE0, &qword_2170575F8);
  v114 = (v113 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6DA8, &qword_2170576C0) + 36));
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA68, &qword_217057700);
  MEMORY[0x28223BE20](v115);
  v116 = v213;
  v203[-2] = v214;
  v203[-1] = v116;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  OUTLINED_FUNCTION_2_144();
  swift_getKeyPath();
  OUTLINED_FUNCTION_82();
  sub_217007DE4();

  v118 = type metadata accessor for BackgroundConfiguration(0);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v118);
  *v114 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_53();
  v123 = (v246 + v122);
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_2_144();
  v125 = swift_getKeyPath();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_2_144();
  swift_getKeyPath();
  sub_217007DE4();

  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v118);
  v129 = swift_getKeyPath();
  *v123 = v129;
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_2_144();
  v130 = swift_getKeyPath();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_2_144();
  swift_getKeyPath();
  v131 = v216;
  sub_217007DE4();

  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v118);
  v135 = v246;
  sub_216C50C34(v218);
  sub_216697664(v131, &qword_27CABBAA8, &unk_2170575E0);
  v136 = sub_216697664(v135, &qword_27CAC6CE8, &qword_217057600);
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_2_144();
  v137 = swift_getKeyPath();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_2_144();
  swift_getKeyPath();
  v138 = v223;
  sub_217007DE4();

  v139 = v229;
  if (__swift_getEnumTagSinglePayload(v138, 1, v229) == 1)
  {
    v140 = v226;
    sub_216C55534(v226);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v138, 1, v139);
    v142 = v228;
    if (EnumTagSinglePayload != 1)
    {
      sub_216697664(v138, &qword_27CAB9180, &qword_21701C770);
    }
  }

  else
  {
    v142 = v228;
    v140 = v226;
    (*(v228 + 32))(v226, v138, v139);
  }

  v143 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_53();
  v145 = (v220 + v144);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9278, &qword_21701C850);
  (*(v142 + 32))(v145 + *(v146 + 28), v140, v139);
  *v145 = v143;
  sub_2167A4788();
  v147 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v147, v148);
  OUTLINED_FUNCTION_3_2();
  sub_2168AECC8(v149, &qword_27CAB9AA0, &unk_21701E4B0);
  v150 = sub_217007D54();
  v151 = v222;
  sub_2167A4788();
  OUTLINED_FUNCTION_4_53();
  v153 = (v151 + v152);
  v154 = v247;
  *v153 = v150;
  v153[1] = v154;
  v155 = *(v154 + *(*v154 + 176));
  MEMORY[0x28223BE20](v156);
  v203[-2] = type metadata accessor for SocialBadgingRequestCoordinator(0);
  v203[-1] = sub_216C55ED4(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator);
  v157 = swift_getKeyPath();
  v158 = v225;
  sub_2166A6EA4();
  v159 = (v158 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6D58, &qword_2170576A8) + 36));
  *v159 = v157;
  v159[1] = v155;
  swift_retain_n();

  OUTLINED_FUNCTION_82();
  v160 = sub_217007D54();
  sub_216697664(v151, &qword_27CAC6D00, &qword_217057618);
  OUTLINED_FUNCTION_4_53();
  v162 = (v158 + v161);
  *v162 = v160;
  v162[1] = v155;
  v163 = v241;
  v164 = v206;
  v165 = *(v206 + v241[8]);
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_216C55ED4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  OUTLINED_FUNCTION_42_0();
  v166 = sub_217007D54();
  v167 = v227;
  sub_2167A4788();
  OUTLINED_FUNCTION_4_53();
  v169 = (v167 + v168);
  *v169 = v166;
  v169[1] = v165;
  v170 = *(v164 + v163[9]);
  type metadata accessor for SocialGraphController(0);
  sub_216C55ED4(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  v171 = v165;
  v172 = sub_217007D54();
  v173 = v242;
  sub_2167A4788();
  v174 = v207;
  v175 = (v173 + *(v207 + 36));
  *v175 = v172;
  v175[1] = v170;

  v176 = MEMORY[0x277D84F90];
  v177 = MEMORY[0x277D837D0];
  sub_21700E384();
  sub_21700D6F4();
  sub_216C5570C(v176);
  OUTLINED_FUNCTION_8();
  sub_21700D124();
  v178 = sub_21700D194();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v179, v180, v181, v178);
  v182 = v245;
  sub_2166A6EA4();
  LODWORD(v178) = __swift_getEnumTagSinglePayload(v182, 1, v178);

  v183 = v250;
  if (!v178)
  {
    v184 = sub_21700D0E4();
    if (*v185)
    {
      v259 = v177;
      v257 = 0xD000000000000020;
      v258 = 0x800000021708B330;
      sub_2166EF928();
    }

    v184(&v260, 0);
  }

  v186 = sub_216C53FA0();
  v187 = v233;
  sub_21700A224();
  v188 = v232;
  sub_2166A6EA4();
  v189 = v235;
  v190 = v239;
  sub_21700D444();
  v191 = v238;
  sub_217007584();
  sub_217007594();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v192, v193, v194, v195);
  v260 = v174;
  v261 = v186;
  v196 = OUTLINED_FUNCTION_12_70();
  v197 = v236;
  sub_21700A194();
  sub_216697664(v191, &qword_27CAC1E28, &unk_217041400);
  (*(v237 + 8))(v189, v190);
  sub_216697664(v188, &qword_27CAB8DF8, qword_21701B930);
  (*(v234 + 8))(v187, v183);
  sub_21700D844();
  sub_21700D444();
  v260 = v183;
  v261 = v196;
  v198 = OUTLINED_FUNCTION_11_76();
  v199 = v230;
  v200 = v248;
  sub_21700A1F4();

  (*(v240 + 8))(v197, v200);
  sub_216697664(v244, &qword_27CAB8DF8, qword_21701B930);
  sub_216697664(v242, &qword_27CAC6D18, &qword_217057630);
  sub_216697664(v245, &qword_27CAB8DF8, qword_21701B930);
  v201 = v231;
  v202 = v208;
  (*(v231 + 16))(v249, v199, v208);
  swift_storeEnumTagMultiPayload();
  v260 = v200;
  v261 = v198;
  OUTLINED_FUNCTION_10_80();
  sub_217009554();

  (*(v201 + 8))(v199, v202);
  sub_216C55F70(v243, type metadata accessor for MappedCatalogPage);
  v83 = v205;
  return sub_216697664(v83, &qword_27CAC6D28, &qword_217057640);
}

unint64_t sub_216C53FA0()
{
  result = qword_27CAC6D38;
  if (!qword_27CAC6D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D18, &qword_217057630);
    sub_216C54058();
    sub_2168AECC8(&qword_280E2A7B8, &qword_27CAB92A0, &unk_21701C870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D38);
  }

  return result;
}

unint64_t sub_216C54058()
{
  result = qword_27CAC6D40;
  if (!qword_27CAC6D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D10, &qword_217057628);
    sub_216C54110();
    sub_2168AECC8(&qword_280E2A778, &qword_27CAB9298, &unk_2170544C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D40);
  }

  return result;
}

unint64_t sub_216C54110()
{
  result = qword_27CAC6D48;
  if (!qword_27CAC6D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D08, &qword_217057620);
    sub_216C541C8();
    sub_2168AECC8(&qword_280E2A768, &qword_27CAB9290, &unk_21701C860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D48);
  }

  return result;
}

unint64_t sub_216C541C8()
{
  result = qword_27CAC6D50;
  if (!qword_27CAC6D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D58, &qword_2170576A8);
    sub_216C54280();
    sub_2168AECC8(&qword_280E2A768, &qword_27CAB9290, &unk_21701C860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D50);
  }

  return result;
}

unint64_t sub_216C54280()
{
  result = qword_27CAC6D60;
  if (!qword_27CAC6D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D00, &qword_217057618);
    sub_216C54338();
    sub_2168AECC8(&qword_27CAC6E68, &qword_27CAC6E70, &unk_217057738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D60);
  }

  return result;
}

unint64_t sub_216C54338()
{
  result = qword_27CAC6D68;
  if (!qword_27CAC6D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CF8, &qword_217057610);
    sub_216C543F0();
    sub_2168AECC8(&qword_280E2A738, &qword_27CAB9278, &qword_21701C850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D68);
  }

  return result;
}

unint64_t sub_216C543F0()
{
  result = qword_27CAC6D70;
  if (!qword_27CAC6D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CF0, &qword_217057608);
    sub_216C5447C();
    sub_216C54594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D70);
  }

  return result;
}

unint64_t sub_216C5447C()
{
  result = qword_27CAC6D78;
  if (!qword_27CAC6D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D80, &qword_2170576B0);
    sub_216C54508();
    sub_216C54D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D78);
  }

  return result;
}

unint64_t sub_216C54508()
{
  result = qword_27CAC6D88;
  if (!qword_27CAC6D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D90, &qword_2170576B8);
    sub_216C54594();
    sub_216C54C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D88);
  }

  return result;
}

unint64_t sub_216C54594()
{
  result = qword_27CAC6D98;
  if (!qword_27CAC6D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CE8, &qword_217057600);
    sub_216C5464C();
    sub_2168AECC8(&qword_280E2A7B0, &qword_27CABBA68, &qword_217057700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6D98);
  }

  return result;
}

unint64_t sub_216C5464C()
{
  result = qword_27CAC6DA0;
  if (!qword_27CAC6DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6DA8, &qword_2170576C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CE0, &qword_2170575F8);
    type metadata accessor for ObjectGraph(255);
    sub_216C54758();
    swift_getOpaqueTypeConformance2();
    sub_2168AECC8(&qword_280E2A7B0, &qword_27CABBA68, &qword_217057700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DA0);
  }

  return result;
}

unint64_t sub_216C54758()
{
  result = qword_27CAC6DB0;
  if (!qword_27CAC6DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CE0, &qword_2170575F8);
    sub_216C54810();
    sub_2168AECC8(&qword_280E2A7A8, &qword_27CABBA20, &qword_217024DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DB0);
  }

  return result;
}

unint64_t sub_216C54810()
{
  result = qword_27CAC6DB8;
  if (!qword_27CAC6DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6DC0, &qword_2170576C8);
    sub_216C548C8();
    sub_2168AECC8(&qword_280E2A7E8, &qword_27CABBA18, &unk_2170543F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DB8);
  }

  return result;
}

unint64_t sub_216C548C8()
{
  result = qword_27CAC6DC8;
  if (!qword_27CAC6DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6DD0, &qword_2170576D0);
    sub_216C54980();
    sub_2168AECC8(&qword_280E2A7A0, &qword_27CAC6E20, &qword_21705FBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DC8);
  }

  return result;
}

unint64_t sub_216C54980()
{
  result = qword_27CAC6DD8;
  if (!qword_27CAC6DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6DE0, &qword_2170576D8);
    sub_216C54A38();
    sub_2168AECC8(&qword_280E2A7D8, &qword_27CABBA00, &qword_217024DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DD8);
  }

  return result;
}

unint64_t sub_216C54A38()
{
  result = qword_27CAC6DE8;
  if (!qword_27CAC6DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6DF0, &qword_2170576E0);
    sub_216C54AF0();
    sub_2168AECC8(&qword_280E2A7F0, &qword_27CABB9F8, &unk_217054400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DE8);
  }

  return result;
}

unint64_t sub_216C54AF0()
{
  result = qword_27CAC6DF8;
  if (!qword_27CAC6DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E00, &qword_2170576E8);
    sub_216C54BA8();
    sub_2168AECC8(&qword_280E2A740, &qword_27CABCC90, &unk_217028930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6DF8);
  }

  return result;
}

unint64_t sub_216C54BA8()
{
  result = qword_27CAC6E08;
  if (!qword_27CAC6E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E10, &unk_2170576F0);
    sub_2168AECC8(&qword_27CAC6E18, &qword_27CAC6CD8, &qword_2170575F0);
    sub_2168AECC8(&qword_280E2A760, &qword_27CABCC88, &unk_2170541D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E08);
  }

  return result;
}

unint64_t sub_216C54C8C()
{
  result = qword_27CAC6E28;
  if (!qword_27CAC6E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E30, &unk_217057708);
    sub_216C54594();
    sub_2168AECC8(&qword_280E2AC10, &qword_27CABBA70, &unk_217024F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E28);
  }

  return result;
}

unint64_t sub_216C54D44()
{
  result = qword_27CAC6E38;
  if (!qword_27CAC6E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E40, &qword_217057718);
    sub_216C54DD0();
    sub_216C54E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E38);
  }

  return result;
}

unint64_t sub_216C54DD0()
{
  result = qword_27CAC6E48;
  if (!qword_27CAC6E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E50, &unk_217057720);
    sub_216C54594();
    sub_2168AECC8(&qword_280E2AC08, &qword_27CABBA78, &unk_2170708C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E48);
  }

  return result;
}

unint64_t sub_216C54E88()
{
  result = qword_27CAC6E58;
  if (!qword_27CAC6E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6E60, &qword_217057730);
    sub_216C54594();
    sub_2168AECC8(&qword_280E2ABE8, &qword_27CABBA80, &qword_217024F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E58);
  }

  return result;
}

uint64_t sub_216C54F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41[0] = a3;
  v47 = a4;
  v42 = type metadata accessor for SectionHeaderView(0);
  MEMORY[0x28223BE20](v42);
  v7 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MappedSection(0);
  v41[1] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6ED0, &qword_217057A10);
  MEMORY[0x28223BE20](v46);
  v12 = v41 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6ED8, &qword_217057A18);
  MEMORY[0x28223BE20](v45);
  v43 = v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EE0, &qword_217057A20);
  MEMORY[0x28223BE20](v14);
  v16 = v41 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EE8, &qword_217057A28);
  MEMORY[0x28223BE20](v44);
  v18 = v41 - v17;
  result = type metadata accessor for RelatedContentView(0);
  v20 = a1;
  v21 = (a1 + *(result + 24));
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(a2 + 16);
  if (v23 != 1)
  {
    if (v22 >= v24)
    {
      v37 = 1;
      v33 = v42;
    }

    else
    {
      v33 = v42;
      if (v22 < 0)
      {
        goto LABEL_14;
      }

      sub_216C55F18();
      v34 = v10[1];
      *v7 = *v10;
      v7[1] = v34;
      sub_2166A6EA4();
      v35 = *(v8 + 52);
      v7[2] = *(v10 + *(v8 + 48));
      v36 = *(v10 + v35);
      sub_21700DF14();
      sub_216C55F70(v10, type metadata accessor for MappedSection);
      *(v7 + v33[7]) = v36;
      *(v7 + v33[8]) = v22;
      *(v7 + v33[9]) = 1;
      sub_216C55FC8();
      v37 = 0;
    }

    __swift_storeEnumTagSinglePayload(v12, v37, 1, v33);
    v38 = &qword_27CAC6ED0;
    v39 = &qword_217057A10;
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_216C55CB8();
    sub_216C55E20();
    sub_217009554();
    v40 = v12;
    return sub_216697664(v40, v38, v39);
  }

  if (v22 >= v24)
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v14);
    goto LABEL_9;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    v25 = result;
    sub_216C55F18();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6F08, &qword_217057A30);
    v27 = &v16[v26[13]];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = &v16[v26[12]];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9AA0, &unk_21701E4B0);
    sub_2168AECC8(&qword_27CAB9AA8, &qword_27CAB9AA0, &unk_21701E4B0);
    *v28 = sub_217008684();
    v28[1] = v29;
    *&v16[v26[9]] = v41[0];
    *&v16[v26[10]] = v22;
    *&v16[v26[11]] = 0x7FFFFFFFFFFFFFFFLL;
    v30 = *(v20 + *(v25 + 48));
    KeyPath = swift_getKeyPath();
    v32 = &v16[*(v14 + 36)];
    *v32 = KeyPath;
    v32[1] = v30;
    sub_216C56020(v16, v18);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v14);

LABEL_9:
    v38 = &qword_27CAC6EE8;
    v39 = &qword_217057A28;
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_216C55CB8();
    sub_216C55E20();
    sub_217009554();
    v40 = v18;
    return sub_216697664(v40, v38, v39);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_216C55534@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_2166A6EA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2170080D4();
    OUTLINED_FUNCTION_34();
    return (*(v12 + 32))(a1, v11);
  }

  else
  {
    sub_21700ED94();
    v14 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    OUTLINED_FUNCTION_82();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v2);
  }
}

unint64_t sub_216C5570C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF7F0, &qword_217057990);
  OUTLINED_FUNCTION_42_0();
  v2 = sub_21700F5C4();
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
    sub_2166A6EA4();
    result = sub_216C5585C(v13, v14);
    if (v8)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v9 = (v3[6] + 16 * result);
    *v9 = v13;
    v9[1] = v14;
    result = sub_2166EF9C4(&v15, (v3[7] + 32 * result));
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      goto LABEL_12;
    }

    v3[2] = v12;
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

unint64_t sub_216C5585C(uint64_t a1, uint64_t a2)
{
  sub_21700F8F4();
  sub_21700E614();
  v4 = sub_21700F944();

  return sub_2166AF6DC(a1, a2, v4);
}

uint64_t sub_216C558D4(uint64_t a1)
{
  sub_2170080D4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v4 = OUTLINED_FUNCTION_24_34(v3);
  v5(v4, a1);
  return sub_217008DF4();
}

void sub_216C559C0(uint64_t a1)
{
  sub_216820EBC(319);
  if (v1 <= 0x3F)
  {
    sub_216C55ACC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObjectGraph(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for UserSocialProfileCoordinator(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SocialGraphController(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for AppDestinationPageProviderBox();
            if (v6 <= 0x3F)
            {
              type metadata accessor for MusicStackAuthority(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_216C55ACC(uint64_t a1)
{
  if (!qword_27CAC6E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9AA0, &unk_21701E4B0);
    sub_2168AECC8(&qword_27CAB9AA8, &qword_27CAB9AA0, &unk_21701E4B0);
    v1 = sub_2170086B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAC6E90);
    }
  }
}

unint64_t sub_216C55B70()
{
  result = qword_27CAC6E98;
  if (!qword_27CAC6E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6EA0, &qword_217057988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CD0, &qword_2170575D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6CC8, &qword_2170575D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6D18, &qword_217057630);
    sub_216C53FA0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6E98);
  }

  return result;
}

unint64_t sub_216C55CB8()
{
  result = qword_27CAC6EF0;
  if (!qword_27CAC6EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6EE8, &qword_217057A28);
    sub_216C55D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6EF0);
  }

  return result;
}

unint64_t sub_216C55D3C()
{
  result = qword_27CAC6EF8;
  if (!qword_27CAC6EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6EE0, &qword_217057A20);
    sub_2168AECC8(&qword_27CAC6F00, &qword_27CAC6F08, &qword_217057A30);
    sub_2168AECC8(&qword_280E2A758, &qword_27CAB93F0, &qword_21702FD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6EF8);
  }

  return result;
}

unint64_t sub_216C55E20()
{
  result = qword_27CAC6F10;
  if (!qword_27CAC6F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC6ED0, &qword_217057A10);
    sub_216C55ED4(qword_280E3F988, type metadata accessor for SectionHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC6F10);
  }

  return result;
}

uint64_t sub_216C55ED4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216C55F18()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C55F70(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C55FC8()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C56020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6EE0, &qword_217057A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AccountSettingsPageIntent(uint64_t a1)
{
  result = qword_27CAC7168;
  if (!qword_27CAC7168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_216C56154(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v15[0] = type metadata accessor for AccountSettingsPageIntent(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2E40, &qword_217045C98);
    v9 = sub_21700E594();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v11 = a1;
    v12 = sub_2166F1E10(v15, a1);
    sub_2166F1F64(v12, 0x646E696B24, 0xE500000000000000);
    sub_2168CC268(v2, v6);
    v13 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v11).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216C56354(uint64_t a1)
{
  result = sub_2166CE8F4(&qword_27CAC7178, type metadata accessor for AccountSettingsPageIntent, &unk_217057C38);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216C563F4(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE8F4(&qword_27CAC7178, type metadata accessor for AccountSettingsPageIntent, &unk_217057C38);
  result = sub_2166CE8F4(&qword_27CAC7180, type metadata accessor for AccountSettingsPageIntent, &unk_217057C1C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for AddRecentSearchTermAction(uint64_t a1)
{
  result = qword_280E35CC8;
  if (!qword_280E35CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216C564EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v41 = a2;
  v43 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v35 = v10;
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v42 = a1;
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = v20;
  v25 = *(v14 + 8);
  v25(v24, v12);
  if (v23)
  {
    v37 = v25;
    v26 = (v40 + *(type metadata accessor for AddRecentSearchTermAction(0) + 20));
    *v26 = v21;
    v26[1] = v23;
    v27 = v42;
    (*(v14 + 16))(v17, v42, v12);
    v28 = v41;
    (*(v5 + 16))(v8, v41, v43);
    v29 = v38;
    sub_21700D224();
    (*(v5 + 8))(v28, v43);
    v37(v27, v12);
    if (v29)
    {
    }

    else
    {
      return (*(v35 + 32))(v40, v39, v36);
    }
  }

  else
  {
    v31 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v33 = v32;
    v34 = type metadata accessor for AddRecentSearchTermAction(0);
    *v33 = 1836213620;
    v33[1] = 0xE400000000000000;
    v33[2] = v34;
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v5 + 8))(v41, v43);
    return (v25)(v42, v12);
  }
}

uint64_t sub_216C56918(uint64_t a1, uint64_t a2)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for ModalFlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v28 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for SocialOnboardingPrivacySettingsPageIntent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ReferrerInfo(0);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  v19[*(v16 + 20)] = 1;
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_21700D234();
  v21 = &v10[*(v7 + 20)];
  v21[3] = v16;
  v21[4] = sub_216C56CDC(qword_27CAC7190, type metadata accessor for SocialOnboardingPrivacySettingsPageIntent, &unk_217065C5C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_216C56D24(v19, boxed_opaque_existential_1, type metadata accessor for SocialOnboardingPrivacySettingsPageIntent);
  type metadata accessor for FlowAction.Destination(0);
  swift_storeEnumTagMultiPayload();
  *&v10[*(v7 + 24)] = xmmword_217015580;
  v30[3] = v7;
  v30[4] = sub_216C56CDC(qword_280E426A8, type metadata accessor for ModalFlowAction, &unk_217063664);
  v23 = __swift_allocate_boxed_opaque_existential_1(v30);
  sub_216C56D24(v10, v23, type metadata accessor for ModalFlowAction);
  v24 = v29;
  (*(v3 + 104))(v6, *MEMORY[0x277D21E18], v29);
  v25 = sub_21700D5E4();
  (*(v3 + 8))(v6, v24);
  sub_216C56D84(v10, type metadata accessor for ModalFlowAction);
  (*(v28 + 8))(v15, v11);
  sub_216C56D84(v19, type metadata accessor for SocialOnboardingPrivacySettingsPageIntent);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v25;
}

uint64_t sub_216C56CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216C56D24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216C56D84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C56E34(uint64_t a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for ModalFlowAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v24 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_21700D234();
  v16 = &v10[*(v8 + 20)];
  v17 = *(a1 + 40);
  *v16 = *a1;
  v23 = *(a1 + 8);
  *(v16 + 8) = v23;
  v22 = *(a1 + 24);
  *(v16 + 24) = v22;
  *(v16 + 5) = v17;
  type metadata accessor for FlowAction.Destination(0);
  swift_storeEnumTagMultiPayload();
  *&v10[*(v8 + 24)] = xmmword_217015580;
  v26[3] = v8;
  v26[4] = sub_216C57140(qword_280E426A8, type metadata accessor for ModalFlowAction, &unk_217063664);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_216B9DD8C(v10, boxed_opaque_existential_1);
  v19 = v25;
  (*(v4 + 104))(v7, *MEMORY[0x277D21E18], v25);
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  v20 = sub_21700D5E4();
  (*(v4 + 8))(v7, v19);
  sub_216B9DDF0(v10);
  (*(v24 + 8))(v15, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v20;
}

uint64_t sub_216C57140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216C57188()
{
  OUTLINED_FUNCTION_22_49();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC7220, qword_217057F40);
  MEMORY[0x21CE9BEE0](&v2, v0);
  return v2;
}

uint64_t sub_216C571D4()
{
  OUTLINED_FUNCTION_22_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC7220, qword_217057F40);
  return sub_21700B0D4();
}

uint64_t sub_216C57224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_12_71();
  v6 = sub_21700AF54();
  OUTLINED_FUNCTION_1();
  v150 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v10);
  v172 = a1;
  v159 = *(a1 - 8);
  MEMORY[0x28223BE20](v11);
  v158 = v12;
  OUTLINED_FUNCTION_70(&v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  v16 = OUTLINED_FUNCTION_8_0(&v142 - v15);
  v165 = v4;
  v161 = v5;
  type metadata accessor for ActionButton(v16, v4, v5, v17);
  OUTLINED_FUNCTION_1();
  v149 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v21);
  v174 = v22;
  v175 = v6;
  v23 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v28);
  v168 = sub_21700CFB4();
  OUTLINED_FUNCTION_1();
  v155 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_0(v32 - v31);
  v33 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v148 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7();
  v38 = v37 - v36;
  v153 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v152 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v44 = OUTLINED_FUNCTION_36(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_77();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v49);
  v169 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v163 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_70(&v142 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v55);
  v56 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v173 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_77();
  v61 = v59 - v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v63);
  v64 = v2[1];
  if (!v64)
  {
    goto LABEL_17;
  }

  v65 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v65 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v65)
  {
    goto LABEL_17;
  }

  v146 = *v2;
  v145 = v25;
  sub_21700DF14();
  v147 = v2;
  v66 = sub_216C582C0();
  if (v66 == 6)
  {
LABEL_16:

LABEL_17:
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v23);
    OUTLINED_FUNCTION_6_2();
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_210();
    v76 = swift_getWitnessTable();
    v187 = WitnessTable;
    v188 = v76;
    OUTLINED_FUNCTION_6_1();
    swift_getWitnessTable();
LABEL_18:
    OUTLINED_FUNCTION_48_20();
    sub_2168D4034(v61, v77);
    v78 = *(v173 + 8);
    v78(v61, v56);
    OUTLINED_FUNCTION_6_2();
    v79 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_210();
    v80 = swift_getWitnessTable();
    v185 = v79;
    v186 = v80;
    OUTLINED_FUNCTION_6_1();
    v184 = swift_getWitnessTable();
    OUTLINED_FUNCTION_5_76();
    v81 = swift_getWitnessTable();
    sub_2166C24DC(v47, v56, v81);
    return (v78)(v47, v56);
  }

  v67 = v66;
  if (sub_216F07FB4(v66) == 0x4264656B636F6C62 && v68 == 0xE900000000000079)
  {

    goto LABEL_16;
  }

  v144 = v67;
  v70 = sub_21700F7D4();

  if (v70)
  {
    goto LABEL_16;
  }

  v71 = v147[8];
  if (v71)
  {
    v143 = *(v71 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded);
    v72 = v166;
    __swift_storeEnumTagSinglePayload(v166, 1, 1, v33);
    sub_21700D6F4();
    v178 = MEMORY[0x277D837D0];
    *&v177 = 0x657461676976616ELL;
    *(&v177 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v177, &v183);
    v73 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v182 = v73;
    sub_2166EF9D4();
    v74 = v182;
    sub_216681B04(v72, v47, &qword_27CABA820, &unk_217018CE0);
    if (__swift_getEnumTagSinglePayload(v47, 1, v33) == 1)
    {
      sub_2166997CC(v47, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      OUTLINED_FUNCTION_87_10();
      (*(v83 + 32))(v38, v47, v33);
      v47 = v74;
      v84 = sub_217005DE4();
      v178 = MEMORY[0x277D837D0];
      *&v177 = v84;
      *(&v177 + 1) = v85;
      sub_2166EF9C4(&v177, &v183);
      swift_isUniquelyReferenced_nonNull_native();
      v182 = v74;
      sub_2166EF9D4();
      (*(v72 + 8))(v38, v33);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v86 = sub_21700CF84();
    __swift_project_value_buffer(v86, qword_280E73DB0);
    OUTLINED_FUNCTION_48_20();
    MEMORY[0x21CE9DD70](v146, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v87 = v155;
    v88 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_217013DA0;
    (*(v87 + 16))(v89 + v88, v47, v168);
    OUTLINED_FUNCTION_48_20();
    v91 = v153;
    (*(v90 + 16))(v151, v170, v153);
    sub_21700D244();
    (*(v87 + 8))(v167, v168);
    v93 = *(v47 + 8);
    v92 = v47 + 8;
    v93(v170, v91);
    sub_2166997CC(v166, &qword_27CABA820, &unk_217018CE0);
    v94 = v172;
    v95 = v147;
    v96 = sub_216C59A10(v172, sub_216CAF434);
    if (sub_216C58384())
    {

      v178 = type metadata accessor for OpenSocialProfileEditAction(0);
      v179 = sub_216C5AC9C(&qword_27CAB7F18, type metadata accessor for OpenSocialProfileEditAction, &unk_21704EE0C);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v177);
      sub_216C58494(v171, boxed_opaque_existential_1);
      v98 = sub_217007F04();
      __swift_storeEnumTagSinglePayload(v156, 1, 1, v98);
      v99 = v94;
      v100 = v159;
      v47 = v164;
      (*(v159 + 16))(v164, v95, v99);
      v101 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v102 = swift_allocObject();
      v103 = v165;
      v104 = v161;
      *(v102 + 16) = v165;
      *(v102 + 24) = v104;
      (*(v100 + 32))(v102 + v101, v47, v99);
      OUTLINED_FUNCTION_87_10();
      sub_21695FF44(v105, v156, v106, v102, 0, 0, v103, v104, v107);
      OUTLINED_FUNCTION_6_2();
      v108 = v174;
      v109 = swift_getWitnessTable();
      v110 = v157;
      v111 = OUTLINED_FUNCTION_38_32();
      sub_2166C24DC(v111, v112, v109);
      v113 = *(v149 + 8);
      v114 = OUTLINED_FUNCTION_38_32();
      v113(v114);
      sub_2166C24DC(v110, v108, v109);
      OUTLINED_FUNCTION_0_210();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_48_20();
      OUTLINED_FUNCTION_38_32();
      sub_2166C2718();
      v115 = OUTLINED_FUNCTION_38_32();
      v113(v115);
      v116 = v157;
      v117 = v108;
    }

    else
    {
      OUTLINED_FUNCTION_87_10();
      (*(v118 + 16))(v164, v95, v94);
      OUTLINED_FUNCTION_48_20();
      v120 = *(v119 + 16);
      LODWORD(v170) = v96;
      v120(v154, v171, v169);
      v121 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v122 = v94;
      v123 = (v158 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
      v167 = (*(v92 + 80) + v123 + 18) & ~*(v92 + 80);
      v168 = v167 + v52;
      v124 = swift_allocObject();
      v125 = v122;
      v126 = v161;
      *(v124 + 16) = v165;
      *(v124 + 24) = v126;
      v128 = *(v91 + 32);
      v127 = v91 + 32;
      v128(v124 + v121, v164, v125);
      v129 = v124 + v123;
      *v129 = v146;
      *(v129 + 8) = v64;
      *(v129 + 16) = v170 & 1;
      *(v129 + 17) = v143;
      v130 = *(v92 + 32);
      v47 = v92 + 32;
      v131 = v130(v124 + v167, v154, v169);
      *(v124 + v168) = v144;
      MEMORY[0x28223BE20](v131);
      *(&v142 - 4) = v165;
      *(&v142 - 3) = v126;
      *(&v142 - 2) = v147;
      OUTLINED_FUNCTION_87_10();
      sub_21700AF14();
      OUTLINED_FUNCTION_0_210();
      v132 = v175;
      v133 = swift_getWitnessTable();
      v134 = v160;
      sub_2166C24DC(v127, v132, v133);
      v113 = *(v150 + 8);
      (v113)(v127, v132);
      sub_2166C24DC(v134, v132, v133);
      OUTLINED_FUNCTION_6_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_48_20();
      OUTLINED_FUNCTION_38_32();
      sub_2166C2CB0();
      (v113)(v127, v132);
      v116 = v160;
      v117 = v132;
    }

    (v113)(v116, v117);
    (*(v163 + 8))(v171, v169);
    OUTLINED_FUNCTION_6_2();
    v135 = swift_getWitnessTable();
    OUTLINED_FUNCTION_0_210();
    v136 = swift_getWitnessTable();
    v180 = v135;
    v181 = v136;
    OUTLINED_FUNCTION_6_1();
    v137 = swift_getWitnessTable();
    v138 = v162;
    sub_2166C24DC(v47, v23, v137);
    v139 = v145;
    (*(v145 + 8))(v47, v23);
    (*(v139 + 32))(v61, v138, v23);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v23);
    goto LABEL_18;
  }

  type metadata accessor for UserSocialProfileCoordinator(0);
  OUTLINED_FUNCTION_9_83();
  sub_216C5AC9C(v140, v141, &unk_21705D6E8);
  OUTLINED_FUNCTION_191();
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216C582C0()
{
  if (!*(v0 + 8))
  {
    return 6;
  }

  if (*(v0 + 80))
  {

    v1 = sub_216F0706C();

    return v1;
  }

  else
  {
    type metadata accessor for SocialGraphController(0);
    sub_216C5AC9C(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C58384()
{
  v0 = sub_216C582C0();
  v1 = 1;
  v2 = 0;
  switch(v0)
  {
    case 5:
      goto LABEL_3;
    case 6:
      return v2 & 1;
    default:
      v1 = sub_21700F7D4();
LABEL_3:

      v2 = v1;
      break;
  }

  return v2 & 1;
}

uint64_t sub_216C58494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700D284();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_216C58500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 24);
  type metadata accessor for SocialRelationshipButtonView(0, a2, a3, a4);
  v5 = sub_216C5856C();
  v4(v5);
}

uint64_t sub_216C5856C()
{
  v0 = sub_216C57188();
  if (v0 == 6)
  {
    return 0;
  }

  else
  {
    return sub_216F07498(v0);
  }
}

uint64_t sub_216C585A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  HIDWORD(v143) = a7;
  v140 = a6;
  HIDWORD(v146) = a5;
  LODWORD(v161) = a4;
  v163 = a3;
  v162 = a2;
  v148 = a8;
  v147 = a9;
  v10 = type metadata accessor for SocialRelationshipButtonView(0, a8, a9, a4);
  v142 = *(v10 - 8);
  v11 = *(v142 + 64);
  MEMORY[0x28223BE20](v10);
  v141 = &v138 - v12;
  v166 = sub_2170075A4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_217006224();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  MEMORY[0x28223BE20](v15 - 8);
  v155 = &v138 - v16;
  v17 = sub_217006274();
  MEMORY[0x28223BE20](v17 - 8);
  v169 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21700E4C4();
  MEMORY[0x28223BE20](v19 - 8);
  v168 = (&v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v159 = type metadata accessor for PresentAlertAction(0);
  MEMORY[0x28223BE20](v159);
  v160 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_21700CFB4();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v23 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_217005EF4();
  v145 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_21700D704();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v28 = &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v138 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v138 - v36;
  v154 = sub_21700D284();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v167 = &v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_216C5992C())
  {
    v144 = v10;
    v139 = a1;
    sub_216950E18(__src);
    if (*&__src[8])
    {
      memcpy(__dst, __src, sizeof(__dst));
      __swift_storeEnumTagSinglePayload(v37, 1, 1, v24);
      sub_21700D6F4();
      *&__src[24] = MEMORY[0x277D837D0];
      strcpy(__src, "navigate");
      __src[9] = 0;
      *&__src[10] = 0;
      *&__src[12] = -402653184;
      sub_2166EF9C4(__src, &v171);
      v39 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v170[0] = v39;
      sub_2166EF9D4();
      v40 = v170[0];
      sub_216681B04(v37, v34, &qword_27CABA820, &unk_217018CE0);
      if (__swift_getEnumTagSinglePayload(v34, 1, v24) == 1)
      {
        sub_2166997CC(v34, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        v78 = v145;
        (*(v145 + 32))(v26, v34, v24);
        v79 = sub_217005DE4();
        *&__src[24] = MEMORY[0x277D837D0];
        *__src = v79;
        *&__src[8] = v80;
        sub_2166EF9C4(__src, &v171);
        swift_isUniquelyReferenced_nonNull_native();
        v170[0] = v40;
        sub_2166EF9D4();
        v40 = v170[0];
        (*(v78 + 8))(v26, v24);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v81 = sub_21700CF84();
      v82 = __swift_project_value_buffer(v81, qword_280E73DB0);
      MEMORY[0x21CE9DD70](v162, v163, 0x6E6F74747562, 0xE600000000000000, v40, v82);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
      v83 = v151;
      v84 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_217013DA0;
      v86 = v85 + v84;
      v87 = v152;
      (*(v83 + 16))(v86, v23, v152);
      v88 = v149;
      v89 = v150;
      (*(v149 + 16))(v28, v31, v150);
      sub_21700D244();
      (*(v83 + 8))(v23, v87);
      (*(v88 + 8))(v31, v89);
      sub_2166997CC(v37, &qword_27CABA820, &unk_217018CE0);
      sub_21700E4B4();
      sub_217006264();
      v163 = sub_21700E584();
      v162 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
      v91 = (_s6ActionVMa(0) - 8);
      v92 = *(*v91 + 72);
      v93 = (*(*v91 + 80) + 32) & ~*(*v91 + 80);
      v94 = swift_allocObject();
      v161 = v94;
      *(v94 + 16) = xmmword_217013D90;
      v95 = (v94 + v93);
      sub_2167ADC3C(__dst, __src);
      v152 = sub_217007F04();
      v96 = v155;
      __swift_storeEnumTagSinglePayload(v155, 1, 1, v152);
      v97 = v156;
      sub_217006214();
      v98 = sub_2170061F4();
      v100 = v99;
      v101 = *(v157 + 8);
      v102 = v158;
      v101(v97, v158);
      v103 = &v95[v91[8]];
      *v103 = v98;
      v103[1] = v100;
      memcpy(v95, __src, 0x48uLL);
      sub_2168D36D4(v96, &v95[v91[7]]);
      v104 = &v95[v92];
      sub_21700E4B4();
      sub_217006264();
      v157 = sub_21700E584();
      v151 = v105;
      sub_217006214();
      v150 = sub_2170061F4();
      v107 = v106;
      v101(v97, v102);
      v108 = v101;
      sub_217007EF4();
      __swift_storeEnumTagSinglePayload(v96, 0, 1, v152);
      sub_217006214();
      v109 = sub_2170061F4();
      v111 = v110;
      v108(v97, v102);
      v112 = &v104[v91[8]];
      *v112 = v109;
      v112[1] = v111;
      *v104 = v150;
      *(v104 + 1) = v107;
      v113 = v167;
      v114 = v151;
      *(v104 + 2) = v157;
      *(v104 + 3) = v114;
      *(v104 + 2) = 0u;
      *(v104 + 3) = 0u;
      *(v104 + 8) = 0;
      sub_2168D36D4(v96, &v104[v91[7]]);
      sub_21700E4B4();
      sub_217006264();
      v115 = sub_21700E584();
      sub_216933384(v163, v162, v161, v115, v116, __src);
      v117 = v153;
      v118 = v160;
      v119 = v154;
      (*(v153 + 16))(v160, v113, v154);
      v120 = v159;
      v121 = v118 + *(v159 + 20);
      v122 = *&__src[16];
      *v121 = *__src;
      *(v121 + 16) = v122;
      *(v121 + 32) = *&__src[32];
      sub_216C0C534(&v171);
      if (v172)
      {
        __swift_project_boxed_opaque_existential_1(&v171, v172);
        v170[3] = v120;
        v170[4] = sub_216C5AC9C(qword_280E3EB18, type metadata accessor for PresentAlertAction, &unk_21703EA34);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v170);
        v124 = sub_216C5ACE4(v118, boxed_opaque_existential_1, type metadata accessor for PresentAlertAction);
        v125 = v164;
        sub_216C0C548(v124, v126, v127, v128, v129, v130, v131, v132, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
        sub_217007544();
        (*(v165 + 8))(v125, v166);
        sub_216C5AC48(v118, type metadata accessor for PresentAlertAction);
        (*(v117 + 8))(v113, v119);
        sub_2167ADC98(__dst);
        __swift_destroy_boxed_opaque_existential_1Tm(v170);
        v133 = &v171;
        return __swift_destroy_boxed_opaque_existential_1Tm(v133);
      }

      sub_216C5AC48(v118, type metadata accessor for PresentAlertAction);
      (*(v117 + 8))(v113, v119);
      sub_2167ADC98(__dst);
      v134 = &v171;
      return sub_2166997CC(v134, &qword_27CAB7310, &unk_2170170F0);
    }

    sub_2166997CC(__src, &qword_27CAB8100, qword_21701B4C0);
    a1 = v139;
    v10 = v144;
  }

  v41 = a1;
  v42 = v10;
  if (sub_216C59A10(v10, sub_216CAC8D0))
  {
    sub_216C0C534(__dst);
    if (__dst[3])
    {
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      *&__src[24] = type metadata accessor for OpenUserAccountSettingsPageAction(0);
      *&__src[32] = sub_216C5AC9C(&qword_27CABA428, type metadata accessor for OpenUserAccountSettingsPageAction, &unk_217040344);
      __swift_allocate_boxed_opaque_existential_1(__src);
      v43 = sub_21700D234();
LABEL_23:
      v136 = v164;
      sub_216C0C548(v43, v44, v45, v46, v47, v48, v49, v50, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149);
      sub_217007544();
      (*(v165 + 8))(v136, v166);
      __swift_destroy_boxed_opaque_existential_1Tm(__src);
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if ((v161 & 1) == 0)
  {
    sub_216C0C534(__dst);
    if (__dst[3])
    {
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      *&__src[24] = type metadata accessor for OpenFinancePageAction(0);
      *&__src[32] = sub_216C5AC9C(qword_280E3A550, type metadata accessor for OpenFinancePageAction, &unk_2170186D4);
      v77 = __swift_allocate_boxed_opaque_existential_1(__src);
      v43 = sub_216C59A9C(v77);
      goto LABEL_23;
    }

LABEL_26:
    v134 = __dst;
    return sub_2166997CC(v134, &qword_27CAB7310, &unk_2170170F0);
  }

  if ((v146 & 0x100000000) == 0)
  {
    sub_216C0C534(__dst);
    if (__dst[3])
    {
      __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
      *&__src[24] = type metadata accessor for StartSocialOnboardingAction(0);
      *&__src[32] = sub_216C5AC9C(&qword_27CAB6FC8, type metadata accessor for StartSocialOnboardingAction, &protocol conformance descriptor for StartSocialOnboardingAction);
      v135 = __swift_allocate_boxed_opaque_existential_1(__src);
      v43 = sub_216C59DAC(v140, v135);
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  v51 = *(a1 + 64);
  if (v51)
  {
    v52 = *(a1 + 16);
    v53 = v51;
    sub_216CAF2D0(v162, v163, v52, v54, v55, v56, v57, v58, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
    v169 = v59;

    v60 = v142;
    v168 = *(v142 + 16);
    v61 = v141;
    v168(v141, v41, v42);
    v144 = v42;
    v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v167 = (v62 + v11);
    v63 = (v62 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    v65 = v147;
    *(v64 + 16) = v148;
    *(v64 + 24) = v65;
    v66 = *(v60 + 32);
    v67 = v144;
    v66(v64 + v62, v61, v144);
    v68 = v64 + v63;
    v69 = v163;
    *v68 = v162;
    *(v68 + 8) = v69;
    LOBYTE(v63) = BYTE4(v143);
    *(v68 + 16) = BYTE4(v143);
    v168(v61, v41, v67);
    v70 = v167;
    v71 = swift_allocObject();
    v72 = v147;
    *(v71 + 16) = v148;
    *(v71 + 24) = v72;
    v66(v71 + v62, v61, v144);
    *(v71 + v70) = v63;
    v73 = v71 + (v70 & 0xFFFFFFFFFFFFFFF8);
    v74 = v163;
    *(v73 + 8) = v162;
    *(v73 + 16) = v74;
    v75 = sub_2166AF2EC();
    swift_bridgeObjectRetain_n();
    v76 = sub_21700EE84();
    __dst[3] = v75;
    __dst[4] = MEMORY[0x277D225C0];
    __dst[0] = v76;
    sub_21700E1C4();

LABEL_24:
    v133 = __dst;
    return __swift_destroy_boxed_opaque_existential_1Tm(v133);
  }

  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_216C5AC9C(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
  result = sub_217008CD4();
  __break(1u);
  return result;
}

uint64_t sub_216C5992C()
{
  if (*(v0 + 64))
  {
    type metadata accessor for RestrictionsController();

    sub_21700D4B4();

    if (v3)
    {
      v1 = sub_2166C1A3C();
    }

    else
    {
      return 0;
    }

    return v1;
  }

  else
  {
    type metadata accessor for UserSocialProfileCoordinator(0);
    sub_216C5AC9C(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C59A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + 64);
  if (v3)
  {
    v5 = v3;
    LOBYTE(a2) = a2();

    return a2 & 1;
  }

  else
  {
    type metadata accessor for UserSocialProfileCoordinator(0);
    OUTLINED_FUNCTION_9_83();
    sub_216C5AC9C(v7, v8, &unk_21705D6E8);
    OUTLINED_FUNCTION_191();
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216C59A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217006224();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  if (v8)
  {
    v9 = v1[1];
    v10 = *v1;
    v11 = v8;
  }

  else
  {
    sub_217006214();
    v10 = sub_2170061F4();
    v11 = v12;
    (*(v4 + 8))(v6, v3);
    v9 = 0;
  }

  v13 = type metadata accessor for OpenFinancePageAction(0);
  v14 = (a1 + v13[5]);
  *v14 = v10;
  v14[1] = v11;
  *(a1 + v13[6]) = 3;
  type metadata accessor for OpenFinancePageAction.Kind(0);
  swift_storeEnumTagMultiPayload();
  swift_bridgeObjectRetain_n();
  v15 = MEMORY[0x277D837D0];
  v16 = sub_21700E384();
  if (v8)
  {
    *(&v25 + 1) = v15;
    *&v24 = v7;
    *(&v24 + 1) = v9;
    sub_2166EF9C4(&v24, v23);
    swift_isUniquelyReferenced_nonNull_native();
    v22 = v16;
    sub_2166EF9D4();
    v16 = v22;
  }

  else
  {
    v17 = sub_2166AF66C(1684366707, 0xE400000000000000);
    if (v18)
    {
      v19 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      *&v23[0] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
      sub_21700F554();
      v16 = *&v23[0];

      sub_2166EF9C4((*(v16 + 56) + 32 * v19), &v24);
      sub_21700F574();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    sub_2166997CC(&v24, &unk_27CABF7A0, &unk_217014D20);
  }

  *(&v25 + 1) = v15;
  strcpy(&v24, "socialProfile");
  HIWORD(v24) = -4864;
  sub_2166EF9C4(&v24, v23);
  swift_isUniquelyReferenced_nonNull_native();
  v22 = v16;
  sub_2166EF9D4();
  *(a1 + v13[8]) = v22;
  result = sub_21700D234();
  *(a1 + v13[7]) = 0;
  *(a1 + v13[9]) = 0;
  return result;
}

uint64_t sub_216C59DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700D284();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = type metadata accessor for StartSocialOnboardingAction(0);
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_216C59E1C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a5;
  v10 = *a1;
  v11 = type metadata accessor for SocialRelationshipButtonView(0, a6, a7, a4);
  sub_21700DF14();
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446722;
    *(v14 + 4) = sub_2166A85FC(a3, a4, &v23);
    *(v14 + 12) = 2082;
    v16 = sub_216F0750C(v7);
    v18 = sub_2166A85FC(v16, v17, &v23);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2082;
    v19 = sub_216F0750C(v10);
    v21 = sub_2166A85FC(v19, v20, &v23);

    *(v14 + 24) = v21;
    _os_log_impl(&dword_216679000, v12, v13, "Follow state for social profile: %{public}s, successfully updated from: '%{public}s' to: '%{public}s'", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v15, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  return sub_216C59FC8(v10, v11);
}

uint64_t sub_216C59FC8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_216C57188();
  if (v3 == 6)
  {
    goto LABEL_2;
  }

  v6 = sub_216F07FB4(v3);
  v8 = v7;
  if (v6 == sub_216F07FB4(v2) && v8 == v9)
  {
  }

  else
  {
    v11 = sub_21700F7D4();

    if ((v11 & 1) == 0)
    {
LABEL_2:
      v4 = sub_21700B414();
      MEMORY[0x28223BE20](v4);
      sub_217008564();
    }
  }

  return result;
}

void sub_216C5A118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for SocialRelationshipButtonView(0, a6, a7, a4);
  sub_216C59FC8(a3, v10);
  sub_21700DF14();
  oslog = sub_217007C84();
  v11 = sub_21700EDA4();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_2166A85FC(a4, a5, &v18);
    *(v12 + 12) = 2082;
    v14 = sub_216F0750C(a3);
    v16 = sub_2166A85FC(v14, v15, &v18);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_216679000, oslog, v11, "Follow state for social profile: %{public}s, failed to update, reverting back to: '%{public}s'", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v13, -1, -1);
    MEMORY[0x21CEA1440](v12, -1, -1);
  }
}

uint64_t sub_216C5A294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v12 = *(v11 + 24);
  type metadata accessor for SocialRelationshipButtonView(0, v13, v14, v15);
  v16 = sub_216C5856C();
  v12(v16);

  sub_2166C24DC(v7, a2, a3);
  v17 = *(v5 + 8);
  v17(v7, a2);
  sub_2166C24DC(v10, a2, a3);
  return (v17)(v10, a2);
}

uint64_t sub_216C5A424@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_21700B114();
  v5 = OUTLINED_FUNCTION_36(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57B0, &unk_217057E90);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v34[-v11];
  v13 = *MEMORY[0x277CE0118];
  sub_217009294();
  OUTLINED_FUNCTION_34();
  (*(v14 + 104))(v8, v13);
  if (a1 == 2)
  {
    v15 = sub_21700AD34();
  }

  else if (a1)
  {
    v15 = sub_21700ACD4();
  }

  else
  {
    v15 = sub_21700AC54();
  }

  v16 = v15;
  sub_2170081E4();
  v17 = MEMORY[0x277CE1260];
  sub_216C5ACE4(v8, v12, MEMORY[0x277CE1260]);
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57D0, &qword_217051A58) + 36)];
  v19 = v35;
  *v18 = *&v34[8];
  *(v18 + 1) = v19;
  *(v18 + 4) = v36;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57D8, &qword_217051A60);
  *&v12[*(v20 + 52)] = v16;
  *&v12[*(v20 + 56)] = 256;
  v21 = sub_21700B3B4();
  v23 = v22;
  sub_216C5AC48(v8, v17);
  v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57E0, &qword_217051A68) + 36)];
  *v24 = v21;
  v24[1] = v23;
  if ((a1 | 2) == 2)
  {
    v25 = sub_21700ACD4();
  }

  else
  {
    v25 = sub_21700AC54();
  }

  v26 = v25;
  sub_216C5ACE4(v12, a2, MEMORY[0x277CE1260]);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8780, &unk_217029530);
  *(a2 + *(v27 + 52)) = v26;
  *(a2 + *(v27 + 56)) = 256;
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57E8, &unk_217051A70) + 36);
  sub_216681B04(v12, v28, &qword_27CAC57B0, &unk_217057E90);
  v29 = sub_21700B3B4();
  v31 = v30;
  sub_2166997CC(v12, &qword_27CAC57B0, &unk_217057E90);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC57F0, qword_217057EA0);
  v33 = (v28 + *(result + 36));
  *v33 = v29;
  v33[1] = v31;
  return result;
}

void sub_216C5A70C(uint64_t a1)
{
  sub_216688154();
  if (v1 <= 0x3F)
  {
    sub_2166B0B84();
    if (v2 <= 0x3F)
    {
      sub_216C5A8C0(319, &qword_27CAC7218, &qword_27CAC0B30, &qword_21703B130, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_216A949B4(319);
        if (v4 <= 0x3F)
        {
          sub_216AF7568(319);
          if (v5 <= 0x3F)
          {
            sub_216C5A8C0(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_2167EE974(319);
              if (v7 <= 0x3F)
              {
                sub_217007CA4();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_216C5A8C0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_216C5A968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for SocialRelationshipButtonView(0, v5, v6, a4);
  OUTLINED_FUNCTION_2(v7);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_21700D284();
  OUTLINED_FUNCTION_2(v12);
  v15 = v4 + ((v11 + *(v13 + 80) + 18) & ~*(v13 + 80));
  return sub_216C585A0(v4 + v9, *(v4 + v11), *(v4 + v11 + 8), *(v4 + v11 + 16), *(v4 + v11 + 17), v15, *(v15 + *(v14 + 64)), v5, v6);
}

uint64_t sub_216C5AA84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_12_71();
  v7 = type metadata accessor for SocialRelationshipButtonView(v3, v4, v5, v6);
  OUTLINED_FUNCTION_36(v7);
  v10 = v0 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_216C58500(v10, v1, v2, v8);
}

uint64_t sub_216C5AB04()
{
  v0 = OUTLINED_FUNCTION_12_71();
  v4 = type metadata accessor for SocialRelationshipButtonView(v0, v1, v2, v3);
  OUTLINED_FUNCTION_2(v4);
  v5 = OUTLINED_FUNCTION_21_54();

  return sub_216C59E1C(v5, v6, v7, v8, v9, v10, v11);
}

void sub_216C5ABA8()
{
  v0 = OUTLINED_FUNCTION_12_71();
  v4 = type metadata accessor for SocialRelationshipButtonView(v0, v1, v2, v3);
  OUTLINED_FUNCTION_2(v4);
  v5 = OUTLINED_FUNCTION_21_54();

  sub_216C5A118(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_216C5AC48(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C5AC9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216C5ACE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216C5AD68(uint64_t a1)
{
  v1 = sub_21700B7F4();
  if (v2 <= 0x3F)
  {
    swift_getWitnessTable();
    v1 = sub_217006984();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

char *sub_216C5AE78()
{
  OUTLINED_FUNCTION_92();
  memcpy(__dst, v1, sizeof(__dst));
  objc_allocWithZone(type metadata accessor for LibraryImportWebViewModel(0));
  sub_2167E705C(v1, &v4);

  return sub_216B61FCC(__dst, v0, v2);
}

uint64_t sub_216C5AF70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72A8, &qword_217057FF8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  v4 = (&v19 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72B0, &qword_217058000);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  type metadata accessor for LibraryImportWebViewModel(0);
  OUTLINED_FUNCTION_2_145();
  sub_216C5D26C(v6, v7, &unk_217049BDC);
  v8 = sub_2170081B4();
  v9 = sub_216B61EEC();

  if (v9)
  {
    swift_storeEnumTagMultiPayload();
    sub_216C5D0E4();
    OUTLINED_FUNCTION_1_179();
    sub_2166D9530(v10, v11, v12, v13);
    return sub_217009554();
  }

  else
  {
    *v4 = sub_21700B3B4();
    v4[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72B8, &unk_217058008);
    sub_216C5B1C4(v1, v4 + *(v16 + 44));
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_216C5D0E4();
    OUTLINED_FUNCTION_1_179();
    sub_2166D9530(v17, &qword_27CAC72A8, &qword_217057FF8, v18);
    sub_217009554();
    return sub_216697664(v4, &qword_27CAC72A8, &qword_217057FF8);
  }
}

uint64_t sub_216C5B1C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0, &unk_217026510);
  v60 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v59 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72D0, &qword_217058018);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v58 - v7;
  v8 = type metadata accessor for LibraryImportWebView(0);
  v77 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = v9;
  v80 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_217009124();
  v10 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72D8, &qword_217058020);
  MEMORY[0x28223BE20](v87);
  v65 = &v58 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72E0, &qword_217058028);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v88 = &v58 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72E8, &qword_217058030);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v90 = &v58 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72F0, &qword_217058038);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v91 = &v58 - v16;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC72F8, &qword_217058040);
  MEMORY[0x28223BE20](v72);
  v79 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v70 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v78 = &v58 - v21;
  v22 = *a1;
  v93 = a1[1];
  v94 = v22;
  v85 = *(a1 + 16);
  v23 = type metadata accessor for LibraryImportWebViewModel(0);
  v24 = sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel, &unk_217049BDC);
  v25 = sub_2170081B4();
  v26 = *&v25[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_webView];

  *&__dst[0] = v26;
  v27 = v89;
  (*(v10 + 104))(v12, *MEMORY[0x277CDDDC0], v89);
  sub_216C5D138();
  v28 = v65;
  sub_21700A904();
  (*(v10 + 8))(v12, v27);

  LOBYTE(v25) = sub_217009CE4();
  v29 = sub_217008A34();
  v30 = v28 + *(v87 + 36);
  *v30 = v29;
  *(v30 + 8) = v25;
  v89 = a1;
  v96 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7308, &unk_217058048);
  v32 = sub_216C5D194();
  v33 = type metadata accessor for TopToolBar(255);
  v34 = sub_216C5D26C(&qword_27CAC7318, type metadata accessor for TopToolBar, &unk_2170582D0);
  *&__dst[0] = v33;
  *(&__dst[0] + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v32;
  v68 = v31;
  v66 = OpaqueTypeConformance2;
  sub_21700AAD4();
  sub_216697664(v28, &qword_27CAC72D8, &qword_217058020);
  v95 = v24;
  v36 = sub_2170081B4();
  memcpy(__dst, &v36[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel], sizeof(__dst));
  sub_2166A6EA4();

  v38 = *(&__dst[0] + 1);
  v37 = *&__dst[0];
  if (*(&__dst[0] + 1))
  {
    v102[0] = __dst[0];
    v102[1] = __dst[1];
    v102[2] = __dst[2];
    v102[3] = __dst[3];
    v102[4] = __dst[4];
    sub_21700DF14();
    sub_216697664(v102, &qword_27CAC3C08, &qword_217049C80);
  }

  else
  {
    v102[0] = *&__dst[0];
    v102[1] = __dst[1];
    v102[2] = __dst[2];
    v102[3] = __dst[3];
    v102[4] = __dst[4];
    sub_216697664(v102, &qword_27CAC3C08, &qword_217049C80);
    v37 = 0;
    v38 = 0xE000000000000000;
  }

  v99 = v37;
  v100 = v38;
  v86 = v23;
  v39 = sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v61 = v97[10];
  v62 = v98;
  v40 = sub_2170081B4();
  memcpy(v101, &v40[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_alertModel], sizeof(v101));
  sub_2166A6EA4();

  memcpy(v97, v101, 0x50uLL);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7320, &unk_217058080);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3C08, &qword_217049C80);
  *&v102[0] = v87;
  *(&v102[0] + 1) = v68;
  *&v102[1] = v67;
  *(&v102[1] + 1) = v66;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_2167B2E14();
  v68 = sub_216C5D2B4();
  v87 = sub_2167C4D74();
  v41 = v71;
  v42 = v88;
  sub_21700A9A4();

  memcpy(v102, v97, sizeof(v102));
  sub_216697664(v102, &qword_27CAC7340, &qword_217058098);

  (*(v69 + 8))(v42, v41);
  v43 = sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  sub_216C614BC();
  swift_allocObject();
  sub_216C61F24();
  v97[0] = v41;
  v97[1] = MEMORY[0x277D837D0];
  v97[2] = v63;
  v97[3] = v64;
  v97[4] = v65;
  v97[5] = v66;
  v97[6] = v67;
  v97[7] = v68;
  v97[8] = v87;
  swift_getOpaqueTypeConformance2();
  sub_216C5D3D4();
  v44 = v75;
  v45 = v90;
  sub_21700A9E4();

  (*(v73 + 8))(v45, v44);
  sub_216C614BC();
  v46 = swift_allocObject();
  sub_216C61F24();
  v47 = v70;
  (*(v74 + 32))(v70, v91, v76);
  v48 = &v47[*(v72 + 36)];
  *v48 = sub_216C5D428;
  v48[1] = v46;
  v48[2] = 0;
  v48[3] = 0;
  v49 = v78;
  sub_216752BBC();
  v50 = sub_2170081B4();
  LOBYTE(v47) = sub_216B61EC4();

  v51 = 1;
  v52 = v81;
  v53 = v82;
  if (v47)
  {
    v54 = v59;
    sub_217008294();
    (*(v60 + 32))(v53, v54, v52);
    v51 = 0;
  }

  __swift_storeEnumTagSinglePayload(v53, v51, 1, v52);
  v55 = v79;
  sub_2166A6EA4();
  v56 = v83;
  sub_2166A6EA4();
  sub_2166A6EA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7350, &unk_2170580D0);
  sub_2166A6EA4();
  sub_216697664(v53, &qword_27CAC72D0, &qword_217058018);
  sub_216697664(v49, &qword_27CAC72F8, &qword_217058040);
  sub_216697664(v56, &qword_27CAC72D0, &qword_217058018);
  return sub_216697664(v55, &qword_27CAC72F8, &qword_217058040);
}

uint64_t sub_216C5BF30(uint64_t *a1)
{
  v1 = type metadata accessor for TopToolBar(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LibraryImportWebViewModel(0);
  sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel, &unk_217049BDC);
  sub_2170081B4();
  v4 = sub_2170081B4();
  v5 = sub_216B61DB0();

  *(v3 + *(v1 + 20)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  *v3 = sub_217008684();
  v3[1] = v6;
  *(v3 + *(v1 + 24)) = v5 & 1;
  v7 = sub_216C5D26C(&qword_27CAC7318, type metadata accessor for TopToolBar, &unk_2170582D0);
  MEMORY[0x21CE9A570](v3, v1, v7);
  return sub_216C61514(v3, type metadata accessor for TopToolBar);
}

uint64_t sub_216C5C110@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7338, &qword_217058090);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2F90, &qword_2170580E0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v43 = &v37 - v15;
  MEMORY[0x28223BE20](v16);
  v42 = &v37 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  memcpy(__dst, a1, sizeof(__dst));
  if (*(&__dst[0] + 1))
  {
    __src[0] = __dst[0];
    v21 = a1[2];
    __src[1] = a1[1];
    __src[2] = v21;
    v22 = a1[4];
    __src[3] = a1[3];
    __src[4] = v22;
    memcpy(v45, a1, sizeof(v45));
    sub_216C60FF8(v45, v47);
    sub_217007EF4();
    v23 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v23);
    v24 = swift_allocObject();
    v41 = v4;
    v25 = memcpy((v24 + 16), __src, 0x50uLL);
    v39 = v13;
    MEMORY[0x28223BE20](v25);
    v38 = v6;
    *(&v37 - 2) = __src;
    memcpy(v46, __dst, sizeof(v46));
    sub_216C60FF8(v46, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
    sub_2167C4D74();
    v40 = a2;
    sub_21700AF04();
    v26 = swift_allocObject();
    v27 = memcpy((v26 + 16), __src, 0x50uLL);
    MEMORY[0x28223BE20](v27);
    *(&v37 - 2) = __src;
    memcpy(v47, __dst, sizeof(v47));
    sub_216C60FF8(v47, &v44);
    v28 = v42;
    sub_21700AF14();
    v29 = *(v11 + 16);
    v30 = v43;
    v29(v43, v20, v10);
    v31 = v39;
    v29(v39, v28, v10);
    v32 = v38;
    v29(v38, v30, v10);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7358, &qword_2170580E8);
    v29(&v32[*(v33 + 48)], v31, v10);
    sub_216697664(__dst, &qword_27CAC3C08, &qword_217049C80);
    v34 = *(v11 + 8);
    v34(v28, v10);
    v34(v20, v10);
    v34(v31, v10);
    v34(v30, v10);
    v35 = v40;
    sub_2167A4788();
    return __swift_storeEnumTagSinglePayload(v35, 0, 1, v41);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

double sub_216C5C670@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  *a2 = v2;
  a2[1] = v3;
  v4 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v4;
  sub_21700DF14();
  return result;
}

uint64_t sub_216C5C688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_21700E384();
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF820, &qword_217033DD0);
  v5[0] = v3;
  v2(v5, 0, 0);
  return sub_216697664(v5, &unk_27CABF7A0, &unk_217014D20);
}

double sub_216C5C728@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *a2 = v2;
  a2[1] = v3;
  v4 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v4;
  sub_21700DF14();
  return result;
}

void sub_216C5C740(void *a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  if (a1[1])
  {
    v4 = 0;
    v5 = 0;
    if (a1[3])
    {
      v3 = a1[2];
      v6 = sub_21700DF14();
      v5 = MEMORY[0x277D84F90];
      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = 0;
  a2[3] = v5;
}

void *sub_216C5C7A8@<X0>(void *a2@<X8>)
{
  v3 = type metadata accessor for LibraryImportWebView(0);
  MEMORY[0x28223BE20](v3 - 8);
  type metadata accessor for LibraryImportWebViewModel(0);
  sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel, &unk_217049BDC);
  v4 = sub_2170081B4();
  v5 = *&v4[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_protectionSpaceHost];
  v6 = *&v4[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_protectionSpaceHost + 8];
  sub_21700DF14();

  sub_216C614BC();
  v7 = swift_allocObject();
  sub_216C61F24();
  sub_216C5CB88(v5, v6, sub_216C5D4FC, v7, __src);
  return memcpy(a2, __src, 0x60uLL);
}

void sub_216C5C978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  objc_allocWithZone(MEMORY[0x277CCACF0]);
  sub_21700DF14();
  sub_21700DF14();
  v9 = sub_216C60F68(a1, a2, a3, a4, 2);
  type metadata accessor for LibraryImportWebViewModel(0);
  sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel, &unk_217049BDC);
  v10 = sub_2170081B4();
  v11 = *&v10[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCredential];
  *&v10[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCredential] = v9;
  v12 = v9;

  v13 = sub_2170081B4();
  v14 = *&v13[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  v15 = *&v13[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion + 8];
  sub_2167759F4(v14, v15);

  if (v14)
  {
    v14(0, v9);
    sub_21667E91C(v14, v15);
  }

  v16 = sub_2170081B4();
  v17 = &v16[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  v18 = *&v16[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  v19 = *&v16[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion + 8];
  *v17 = 0;
  *(v17 + 1) = 0;
  sub_21667E91C(v18, v19);

  v20 = sub_2170081B4();
  sub_216B61F50(0);
}

__n128 sub_216C5CB88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21700AEA4();
  sub_21700AEA4();
  sub_21700AEA4();
  result = v11;
  *a5 = v11;
  *(a5 + 16) = v12;
  *(a5 + 24) = v11;
  *(a5 + 40) = v12;
  *(a5 + 48) = v11.n128_u8[0];
  *(a5 + 56) = v11.n128_u64[1];
  *(a5 + 64) = a1;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 88) = a4;
  return result;
}

void sub_216C5CC68(uint64_t *a1)
{
  v1 = type metadata accessor for LibraryImportWebView(0);
  MEMORY[0x28223BE20](v1 - 8);
  type metadata accessor for LibraryImportWebViewModel(0);
  sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel, &unk_217049BDC);
  v2 = sub_2170081B4();
  sub_216C614BC();
  v3 = swift_allocObject();
  sub_216C61F24();
  v4 = &v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_dismiss];
  v5 = *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_dismiss];
  v6 = *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_dismiss + 8];
  *v4 = sub_216C5D454;
  v4[1] = v3;
  sub_21667E91C(v5, v6);
}

uint64_t sub_216C5CE00(uint64_t *a1)
{
  v1 = sub_217008424();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LibraryImportWebViewModel(0);
  sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel, &unk_217049BDC);
  v5 = sub_2170081B4();
  v6 = &v5[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  v7 = *&v5[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion];
  v8 = *&v5[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_authChallengeCompletion + 8];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_21667E91C(v7, v8);

  sub_216C5F230(type metadata accessor for LibraryImportWebView, v4);
  sub_217008414();
  return (*(v2 + 8))(v4, v1);
}

id sub_216C5CF74(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _setUseSystemAppearance_];
  return v2;
}

uint64_t sub_216C5CFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216C61440();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_216C5D054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216C61440();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_216C5D0B8(uint64_t a1)
{
  sub_216C61440();
  sub_2170094F4();
  __break(1u);
}

unint64_t sub_216C5D0E4()
{
  result = qword_27CAC72C0;
  if (!qword_27CAC72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC72C0);
  }

  return result;
}

unint64_t sub_216C5D138()
{
  result = qword_27CAC7300;
  if (!qword_27CAC7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7300);
  }

  return result;
}

unint64_t sub_216C5D194()
{
  result = qword_27CAC7310;
  if (!qword_27CAC7310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC72D8, &qword_217058020);
    sub_216C5D138();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7310);
  }

  return result;
}

uint64_t sub_216C5D26C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_216C5D2B4()
{
  result = qword_27CAC7328;
  if (!qword_27CAC7328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7320, &unk_217058080);
    sub_2166D9530(&qword_27CAC7330, &qword_27CAC7338, &qword_217058090, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7328);
  }

  return result;
}

void *sub_216C5D364@<X0>(void *a1@<X8>)
{
  type metadata accessor for LibraryImportWebView(0);

  return sub_216C5C7A8(a1);
}

unint64_t sub_216C5D3D4()
{
  result = qword_27CAC7348;
  if (!qword_27CAC7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7348);
  }

  return result;
}

uint64_t sub_216C5D480(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void sub_216C5D4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for LibraryImportWebView(0) - 8);
  v10 = (v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));

  sub_216C5C978(a1, a2, a3, a4, v10);
}

double sub_216C5D594@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_216983738(154);
  v4 = v3;
  v5 = sub_21700AD34();
  KeyPath = swift_getKeyPath();
  v7 = sub_217009D54();
  v8 = swift_getKeyPath();
  v9 = sub_217009C84();
  v10 = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  v11 = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = v11;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v5;
  *(a1 + 48) = v8;
  *(a1 + 56) = v7;
  *(a1 + 64) = v9;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1;
  *(a1 + 112) = v10;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_216C5D66C()
{
  v0 = sub_2170090F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for TopToolBar(0);
  sub_2166A6EA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2167A4788();
  }

  sub_21700ED94();
  v6 = sub_217009C34();
  sub_217007BC4();

  sub_2170090E4();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216C5D858@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7390, &qword_217058448);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - v3;
  v5 = sub_217009684();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7398, &qword_217058450);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  sub_217009624();
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73A0, &unk_217058458);
  sub_2166D9530(&qword_27CAC73A8, &qword_27CAC73A0, &unk_217058458, MEMORY[0x277CE14C0]);
  sub_217008B94();
  v10 = sub_216B61DB0();
  v11 = sub_216B61DD8();
  v13 = v12;
  v14 = &v4[*(v2 + 48)];
  (*(v7 + 16))(v4, v9, v6);
  *v14 = v10 & 1;
  *(v14 + 1) = v11;
  *(v14 + 2) = v13;
  sub_217009404();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_216C5DAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_2170098A4();
  v49 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v43[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v43[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v43[-v15];
  v17 = type metadata accessor for CancelButton(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v50 = &v43[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v43[-v21];
  v23 = *(a1 + 8);
  *(v22 + *(v18 + 28)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for LibraryImportWebViewModel(0);
  v25 = sub_216C5D26C(&unk_280E357F8, type metadata accessor for LibraryImportWebViewModel, &unk_217049BDC);
  v26 = v23;
  v27 = v49;
  v46 = v26;
  v47 = v25;
  v48 = v24;
  *v22 = sub_217008684();
  v22[1] = v28;
  sub_216C5D66C();
  (*(v27 + 104))(v13, *MEMORY[0x277CE0560], v3);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v3);
  v29 = *(v6 + 56);
  sub_2166A6EA4();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    sub_216697664(v13, &qword_27CAB8600, &qword_217020AD0);
    sub_216697664(v16, &qword_27CAB8600, &qword_217020AD0);
    if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v3) == 1)
    {
      sub_216697664(v8, &qword_27CAB8600, &qword_217020AD0);
LABEL_9:
      v36 = v46;
      v31 = sub_217008684();
      v32 = v37;
      v38 = v37;
      v30 = 1;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(&v8[v29], 1, v3) == 1)
  {
    sub_216697664(v13, &qword_27CAB8600, &qword_217020AD0);
    sub_216697664(v16, &qword_27CAB8600, &qword_217020AD0);
    (*(v27 + 8))(v51, v3);
LABEL_6:
    sub_216697664(v8, &qword_27CAB8708, &qword_21701A3E0);
    goto LABEL_7;
  }

  v33 = v45;
  (*(v27 + 32))(v45, &v8[v29], v3);
  sub_216C5D26C(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v34 = v51;
  v44 = sub_21700E494();
  v35 = *(v27 + 8);
  v35(v33, v3);
  sub_216697664(v13, &qword_27CAB8600, &qword_217020AD0);
  sub_216697664(v16, &qword_27CAB8600, &qword_217020AD0);
  v35(v34, v3);
  sub_216697664(v8, &qword_27CAB8600, &qword_217020AD0);
  if (v44)
  {
    goto LABEL_9;
  }

LABEL_7:
  v30 = 0;
  v31 = 0;
  v32 = 0;
LABEL_10:
  v39 = v50;
  sub_216C614BC();
  v40 = v52;
  sub_216C614BC();
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73B0, &qword_217058498) + 48));
  *v41 = 0;
  v41[1] = v30;
  v41[2] = v31;
  v41[3] = v32;
  sub_216C61514(v22, type metadata accessor for CancelButton);

  return sub_216C61514(v39, type metadata accessor for CancelButton);
}

uint64_t sub_216C5E09C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a3;
  v99 = a2;
  v105 = a1;
  v110 = a4;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3880, &qword_217048C60);
  v93 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v92 = v80 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB79C8, &qword_217017CA0);
  v81 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = v80 - v5;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7490, &qword_217058688);
  MEMORY[0x28223BE20](v109);
  v95 = v80 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7498, &qword_217058690);
  v82 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = v80 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74A0, &qword_217058698);
  v80[1] = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v9 = v80 - v8;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74A8, &qword_2170586A0);
  v88 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v87 = v80 - v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74B0, &qword_2170586A8);
  v86 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v85 = v80 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74B8, &qword_2170586B0);
  MEMORY[0x28223BE20](v106);
  v101 = v80 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74C0, &qword_2170586B8);
  v84 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v14 = v80 - v13;
  v15 = sub_217009684();
  MEMORY[0x28223BE20](v15 - 8);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74C8, L"@\v6");
  v83 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v17 = v80 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC74D0, aP_0);
  MEMORY[0x28223BE20](v108);
  v107 = v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38, &unk_2170586D0);
  MEMORY[0x28223BE20](v19);
  v21 = (v80 - v20);
  v111 = v80 - v20;
  v22 = sub_21700ADB4();
  v23 = (v21 + *(v19 + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
  v25 = *MEMORY[0x277CE1050];
  v26 = sub_21700ADF4();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v21 = v22;
  v27 = v104;
  if (!v104)
  {
    v40 = v90;
    v41 = v91;
    v42 = v89;
    v43 = v92;
    v44 = v93;
    if ((v105 & 1) == 0)
    {
      sub_217009664();
      sub_2170081F4();
      v68 = MEMORY[0x277CDD7A8];
      v69 = sub_2166D9530(&qword_280E2B3A0, &qword_27CAB79C8, &qword_217017CA0, MEMORY[0x277CDD7A8]);
      v70 = v43;
      v71 = v94;
      MEMORY[0x21CE9A570](v41, v94, v69);
      v72 = sub_2166D9530(&qword_27CAC74D8, &qword_27CAC74A0, &qword_217058698, v68);
      v112 = v42;
      v113 = v72;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v112 = v71;
      v113 = v69;
      v74 = swift_getOpaqueTypeConformance2();
      v75 = v95;
      v76 = v43;
      v77 = v97;
      MEMORY[0x21CE9A590](v76, v96, v97, OpaqueTypeConformance2, v74);
      v78 = sub_216C61B74();
      v79 = sub_216C61CD4();
      v39 = v107;
      MEMORY[0x21CE9A590](v75, v106, v109, v78, v79);
      sub_216697664(v75, &qword_27CAC7490, &qword_217058688);
      (*(v44 + 8))(v70, v77);
      (*(v81 + 8))(v41, v71);
      goto LABEL_8;
    }

    v45 = sub_217009674();
    MEMORY[0x28223BE20](v45);
    v80[-2] = v111;
    sub_21680C99C();
    sub_2170081F4();
    v46 = MEMORY[0x277CDD7A8];
    v47 = sub_2166D9530(&qword_27CAC74D8, &qword_27CAC74A0, &qword_217058698, MEMORY[0x277CDD7A8]);
    v48 = v42;
    MEMORY[0x21CE9A570](v9, v42, v47);
    v112 = v42;
    v113 = v47;
    v49 = swift_getOpaqueTypeConformance2();
    v50 = sub_2166D9530(&qword_280E2B3A0, &qword_27CAB79C8, &qword_217017CA0, v46);
    v112 = v94;
    v113 = v50;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = v95;
    v53 = v96;
    MEMORY[0x21CE9A580](v40, v96, v97, v49, v51);
    v54 = sub_216C61B74();
    v55 = sub_216C61CD4();
    v39 = v107;
    MEMORY[0x21CE9A590](v52, v106, v109, v54, v55);
    sub_216697664(v52, &qword_27CAC7490, &qword_217058688);
    (*(v82 + 8))(v40, v53);
    v56 = &v112;
    goto LABEL_7;
  }

  v28 = sub_217009674();
  if ((v105 & 1) == 0)
  {
    MEMORY[0x28223BE20](v28);
    v80[-2] = v99;
    v80[-1] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
    sub_2167C4D74();
    v9 = v85;
    sub_2170081F4();
    v57 = sub_2166D9530(&qword_27CAC74F0, &qword_27CAC74B0, &qword_2170586A8, MEMORY[0x277CDD7A8]);
    v58 = v87;
    v48 = v102;
    MEMORY[0x21CE9A570](v9, v102, v57);
    v59 = sub_2166D9530(&qword_27CAC74E8, &qword_27CAC74C8, L"@\v6", MEMORY[0x277CDDB60]);
    v112 = v98;
    v113 = v59;
    v60 = swift_getOpaqueTypeConformance2();
    v112 = v48;
    v113 = v57;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = v101;
    v63 = v103;
    MEMORY[0x21CE9A590](v58, v100, v103, v60, v61);
    v64 = sub_216C61B74();
    v65 = sub_216C61CD4();
    v39 = v107;
    MEMORY[0x21CE9A580](v62, v106, v109, v64, v65);
    sub_216697664(v62, &qword_27CAC74B8, &qword_2170586B0);
    (*(v88 + 8))(v58, v63);
    v56 = &v114;
LABEL_7:
    (*(*(v56 - 32) + 8))(v9, v48);
    goto LABEL_8;
  }

  MEMORY[0x28223BE20](v28);
  v29 = v99;
  v80[-4] = v111;
  v80[-3] = v29;
  v80[-2] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7508, &qword_217058710);
  sub_2166D9530(&qword_27CAC7510, &qword_27CAC7508, &qword_217058710, MEMORY[0x277CE1138]);
  sub_217008B94();
  v30 = sub_2166D9530(&qword_27CAC74E8, &qword_27CAC74C8, L"@\v6", MEMORY[0x277CDDB60]);
  v31 = v98;
  MEMORY[0x21CE9A570](v17, v98, v30);
  v112 = v31;
  v113 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_2166D9530(&qword_27CAC74F0, &qword_27CAC74B0, &qword_2170586A8, MEMORY[0x277CDD7A8]);
  v112 = v102;
  v113 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v100;
  v36 = v101;
  MEMORY[0x21CE9A580](v14, v100, v103, v32, v34);
  v37 = sub_216C61B74();
  v38 = sub_216C61CD4();
  v39 = v107;
  MEMORY[0x21CE9A580](v36, v106, v109, v37, v38);
  sub_216697664(v36, &qword_27CAC74B8, &qword_2170586B0);
  (*(v84 + 8))(v14, v35);
  (*(v83 + 8))(v17, v31);
LABEL_8:
  v66 = sub_216C61E30();
  MEMORY[0x21CE9A570](v39, v108, v66);
  sub_216697664(v39, &qword_27CAC74D0, aP_0);
  return sub_216697664(v111, &qword_27CAB8B38, &unk_2170586D0);
}

uint64_t sub_216C5EF1C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_2170091A4();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7518, &qword_217058718);
  return sub_216C5EF8C(a2, a3, a4 + *(v7 + 44));
}

uint64_t sub_216C5EF8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38, &unk_2170586D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_2166A6EA4();
  sub_2166A6EA4();
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7520, &qword_217058720) + 48));
  *v9 = a1;
  v9[1] = a2;
  v10 = MEMORY[0x277D84F90];
  v9[2] = 0;
  v9[3] = v10;
  sub_21700DF14();
  sub_2167770D0(a1, a2, 0, v10);
  sub_2167C4DF0(a1, a2, 0, v10);
  return sub_216697664(v8, &qword_27CAB8B38, &unk_2170586D0);
}

double sub_216C5F0BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = MEMORY[0x277D84F90];
  a3[2] = 0;
  a3[3] = v3;
  sub_21700DF14();
  return result;
}

uint64_t sub_216C5F0E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a2;
  sub_21700AF14();
  LOBYTE(a2) = sub_216B61D60();
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = (a2 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7528, &qword_217058758);
  v11 = (a3 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = sub_2167D2420;
  v11[2] = v9;
  return result;
}

uint64_t sub_216C5F1F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21700ADB4();
  *a1 = result;
  return result;
}

uint64_t sub_216C5F230@<X0>(void (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170090F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
  OUTLINED_FUNCTION_34();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  a1(0, v9);
  sub_2166A6EA4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_217008424();
    OUTLINED_FUNCTION_34();
    return (*(v12 + 32))(a2, v11);
  }

  else
  {
    sub_21700ED94();
    v14 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_216C5F438()
{
  v0 = type metadata accessor for CancelButton(0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_217007F04();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217007EE4();
  sub_216C614BC();
  v4 = swift_allocObject();
  sub_216C61F24();
  return MEMORY[0x21CE9BD40](v3, sub_216C61F7C, v4);
}

uint64_t sub_216C5F5AC(uint64_t a1)
{
  v2 = sub_217008424();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  v7 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  sub_21700DF14();
  v9 = sub_216935620(3, v8);
  v11 = v10;

  if (v9)
  {
    v12 = sub_21700E384();
    v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF820, &qword_217033DD0);
    v26[1] = 0;
    v27[0] = v12;
    v26[0] = 0;
    v9(v27, v26);
    sub_21667E91C(v9, v11);
    sub_216697664(v27, &unk_27CABF7A0, &unk_217014D20);
    swift_beginAccess();
    sub_216A51D14(3, v13, v14, v15, v16, v17, v18, v19, v25, v26[0]);
    v21 = v20;
    v23 = v22;
    swift_endAccess();
    return sub_21667E91C(v21, v23);
  }

  else
  {
    sub_216B67F18();
    sub_216C5F230(type metadata accessor for CancelButton, v5);
    sub_217008414();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_216C5F7C4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73B8, &qword_2170584A0);
  sub_216C5F8C8(v2, a2 + *(v4 + 44));
  v5 = sub_217009C84();
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73C0, &qword_2170584A8) + 36);
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  v7 = swift_allocObject();
  memcpy((v7 + 16), v2, 0x60uLL);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73C8, &unk_2170584B0) + 36));
  *v8 = sub_216C6156C;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
  return sub_216C61590(v2, &v10);
}

uint64_t sub_216C5F8C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D8, &qword_2170584C8);
  MEMORY[0x28223BE20](v74);
  v4 = (&v58 - v3);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73E0, &qword_2170584D0);
  MEMORY[0x28223BE20](v65);
  v68 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73E8, &qword_2170584D8);
  MEMORY[0x28223BE20](v64);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73F0, &qword_2170584E0);
  MEMORY[0x28223BE20](v13);
  v66 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73F8, &qword_2170584E8);
  MEMORY[0x28223BE20](v71);
  v73 = &v58 - v18;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7400, &qword_2170584F0);
  MEMORY[0x28223BE20](v72);
  KeyPath = &v58 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7408, &qword_2170584F8);
  v62 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  MEMORY[0x28223BE20](v26);
  v70 = &v58 - v27;
  MEMORY[0x28223BE20](v28);
  v69 = &v58 - v29;
  v76 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AEB4();
  if (v77 == 1)
  {
    sub_217009264();
    v30 = swift_allocObject();
    memcpy((v30 + 16), a1, 0x60uLL);
    sub_216C61590(a1, &v76);
    v68 = v25;
    v31 = v69;
    sub_21700AF34();
    sub_217009264();
    v32 = swift_allocObject();
    memcpy((v32 + 16), a1, 0x60uLL);
    sub_216C61590(a1, &v76);
    v33 = v70;
    sub_21700AF34();
    v34 = v62;
    v35 = *(v62 + 16);
    v36 = v68;
    v35(v68, v31, v20);
    v35(v22, v33, v20);
    v37 = KeyPath;
    v35(KeyPath, v36, v20);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7428, &qword_217058508);
    v35((v37 + *(v38 + 48)), v22, v20);
    v39 = *(v34 + 8);
    v39(v22, v20);
    v39(v36, v20);
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    v40 = MEMORY[0x277CE14C0];
    sub_2166D9530(&qword_27CAC7418, &qword_27CAC7400, &qword_2170584F0, MEMORY[0x277CE14C0]);
    sub_2166D9530(&qword_27CAC7420, &qword_27CAC73D8, &qword_2170584C8, v40);
    sub_217009554();
    sub_216697664(v37, &qword_27CAC7400, &qword_2170584F0);
    v39(v70, v20);
    return (v39)(v69, v20);
  }

  else
  {
    v69 = 0x800000021708B3E0;
    v70 = sub_217009EA4();
    KeyPath = swift_getKeyPath();
    sub_217009264();
    v61 = v12;
    v77 = *a1;
    v78 = *(a1 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0, &qword_2170584C0);
    v60 = v8;
    sub_21700AED4();
    sub_21700B4B4();
    v42 = sub_217009C84();
    v43 = &v17[*(v13 + 36)];
    v59 = v17;
    *v43 = v42;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    v43[40] = 1;
    sub_217009264();
    v77 = *(a1 + 24);
    v78 = *(a1 + 5);
    sub_21700AED4();
    v44 = v61;
    sub_217008194();
    v45 = sub_217009C84();
    v46 = v44 + *(v64 + 36);
    *v46 = v45;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 1;
    sub_217009264();
    v47 = swift_allocObject();
    memcpy((v47 + 16), a1, 0x60uLL);
    sub_216C61590(a1, &v76);
    v48 = v60;
    sub_21700AF34();
    v49 = sub_217009C84();
    v50 = v48 + *(v65 + 36);
    *v50 = v49;
    *(v50 + 8) = 0u;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 1;
    v51 = v66;
    sub_2166A6EA4();
    v52 = v67;
    sub_2166A6EA4();
    v53 = v68;
    sub_2166A6EA4();
    *v4 = 0xD000000000000017;
    v54 = v69;
    v4[1] = v69;
    v55 = MEMORY[0x277D84F90];
    v4[2] = 0;
    v4[3] = v55;
    v56 = v70;
    v4[4] = KeyPath;
    v4[5] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC7410, &qword_217058500);
    sub_2166A6EA4();
    sub_2166A6EA4();
    sub_2166A6EA4();

    sub_2167770D0(0xD000000000000017, v54, 0, MEMORY[0x277D84F90]);

    sub_216697664(v53, &qword_27CAC73E0, &qword_2170584D0);
    sub_216697664(v52, &qword_27CAC73E8, &qword_2170584D8);
    sub_216697664(v51, &qword_27CAC73F0, &qword_2170584E0);
    sub_2167C4DF0(0xD000000000000017, v54, 0, MEMORY[0x277D84F90]);

    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    v57 = MEMORY[0x277CE14C0];
    sub_2166D9530(&qword_27CAC7418, &qword_27CAC7400, &qword_2170584F0, MEMORY[0x277CE14C0]);
    sub_2166D9530(&qword_27CAC7420, &qword_27CAC73D8, &qword_2170584C8, v57);
    sub_217009554();

    sub_216697664(v4, &qword_27CAC73D8, &qword_2170584C8);
    sub_216697664(v60, &qword_27CAC73E0, &qword_2170584D0);
    sub_216697664(v61, &qword_27CAC73E8, &qword_2170584D8);
    return sub_216697664(v59, &qword_27CAC73F0, &qword_2170584E0);
  }
}

uint64_t sub_216C60514(__int128 *a1)
{
  v1 = *(a1 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0, &qword_2170584C0);
  sub_21700AEB4();
  sub_21700AEB4();
  v1();
}

uint64_t sub_216C605DC(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0, &qword_2170584C0);
  sub_21700AEC4();
  sub_21700AEC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  return sub_21700AEC4();
}

uint64_t sub_216C606A0(__int128 *a1)
{
  sub_216C60770();
  v2 = *(a1 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0, &qword_2170584C0);
  sub_21700AEB4();
  sub_21700AEB4();
  v2();
}

uint64_t sub_216C60770()
{
  v1 = v0;
  v2 = sub_21700E574();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *v0;
  v35 = *(v0 + 2);
  v32 = *v0;
  v33 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0, &qword_2170584C0);
  sub_21700AEB4();
  v7 = v30;
  v6 = v31;

  v9 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v32 = *(v1 + 24);
    v33 = *(v1 + 5);
    sub_21700AEB4();
    v11 = v30;
    v10 = v31;

    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v32 = *(v1 + 24);
      v33 = *(v1 + 5);
      sub_21700AEB4();
      sub_21700E564();
      v13 = sub_21700E524();
      v15 = v14;

      result = (*(v3 + 8))(v5, v2);
      if (v15 >> 60 != 15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_217018C90;
        *(inited + 32) = sub_21700E514();
        *(inited + 40) = v17;
        v18 = *MEMORY[0x277CDC248];
        type metadata accessor for CFString(0);
        *(inited + 72) = v19;
        *(inited + 48) = v18;
        *(inited + 80) = sub_21700E514();
        *(inited + 88) = v20;
        v32 = v34;
        v33 = v35;
        v21 = v18;
        sub_21700AEB4();
        v22 = v30;
        v23 = v31;
        v24 = MEMORY[0x277D837D0];
        *(inited + 120) = MEMORY[0x277D837D0];
        *(inited + 96) = v22;
        *(inited + 104) = v23;
        *(inited + 128) = sub_21700E514();
        *(inited + 136) = v25;
        v32 = v1[4];
        v26 = v32;
        *(inited + 168) = v24;
        *(inited + 144) = v26;
        *(inited + 176) = sub_21700E514();
        *(inited + 184) = v27;
        *(inited + 216) = MEMORY[0x277CC9318];
        *(inited + 192) = v13;
        *(inited + 200) = v15;
        sub_216C615C8(&v32, &v30);
        sub_21677A3F0(v13, v15);
        sub_21700E384();
        v28 = sub_21700E344();

        SecItemAdd(v28, 0);

        return sub_21677A510(v13, v15);
      }
    }
  }

  return result;
}

uint64_t sub_216C60AB4()
{
  v33[35] = *MEMORY[0x277D85DE8];
  v1 = sub_21700E574();
  MEMORY[0x28223BE20](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015240;
  *(inited + 32) = sub_21700E514();
  *(inited + 40) = v3;
  v4 = *MEMORY[0x277CDC248];
  type metadata accessor for CFString(0);
  v6 = v5;
  *(inited + 72) = v5;
  *(inited + 48) = v4;
  *(inited + 80) = sub_21700E514();
  *(inited + 88) = v7;
  v27 = v0[4];
  v8 = v27;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v8;
  *(inited + 128) = sub_21700E514();
  *(inited + 136) = v9;
  v10 = *MEMORY[0x277CDC438];
  *(inited + 168) = v6;
  *(inited + 144) = v10;
  *(inited + 176) = sub_21700E514();
  *(inited + 184) = v11;
  v12 = MEMORY[0x277D839B0];
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  *(inited + 224) = sub_21700E514();
  *(inited + 232) = v13;
  *(inited + 264) = v12;
  *(inited + 240) = 1;
  v14 = v4;
  sub_216C615C8(&v27, &v30);
  v15 = v10;
  sub_21700E384();
  v33[0] = 0;
  v16 = sub_21700E344();

  LODWORD(inited) = SecItemCopyMatching(v16, v33);

  if (!inited)
  {
    if (v33[0])
    {
      *&v30 = v33[0];
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
      if (swift_dynamicCast())
      {
        sub_21700E514();
        sub_216934F28();

        if (!v32)
        {

          sub_216697664(&v30, &unk_27CABF7A0, &unk_217014D20);
          return swift_unknownObjectRelease();
        }

        if (swift_dynamicCast())
        {
          v18 = v28;
          v17 = v29;
          sub_21700E514();
          sub_216934F28();

          if (v32)
          {
            if (swift_dynamicCast())
            {
              v19 = v28;
              v20 = v29;
              sub_21700E564();
              v21 = sub_21700E534();
              v23 = v22;
              sub_21677A524(v19, v20);
              if (v23)
              {
                v24 = HIBYTE(v17) & 0xF;
                if ((v17 & 0x2000000000000000) == 0)
                {
                  v24 = v18 & 0xFFFFFFFFFFFFLL;
                }

                if (v24)
                {
                  v25 = HIBYTE(v23) & 0xF;
                  if ((v23 & 0x2000000000000000) == 0)
                  {
                    v25 = v21 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v25)
                  {
                    v30 = v0[3];
                    LOBYTE(v28) = 1;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
                    sub_21700AEC4();
                    v30 = *v0;
                    v31 = *(v0 + 2);
                    v28 = v18;
                    v29 = v17;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC73D0, &qword_2170584C0);
                    sub_21700AEC4();
                    v30 = *(v0 + 24);
                    v31 = *(v0 + 5);
                    v28 = v21;
                    v29 = v23;
                    sub_21700AEC4();
                    return swift_unknownObjectRelease();
                  }
                }
              }
            }
          }

          else
          {
            sub_216697664(&v30, &unk_27CABF7A0, &unk_217014D20);
          }
        }
      }
    }
  }

  return swift_unknownObjectRelease();
}

id sub_216C60F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21700E4D4();

  v8 = sub_21700E4D4();

  v9 = [v5 initWithUser:v7 password:v8 persistence:a5];

  return v9;
}

uint64_t objectdestroy_20Tm_2()
{

  return swift_deallocObject();
}

uint64_t sub_216C6110C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_216C6114C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_216C611DC(uint64_t a1)
{
  sub_216C61284(319, &qword_27CAC7370, MEMORY[0x277CDF860]);
  if (v1 <= 0x3F)
  {
    sub_2167FCA6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216C61284(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LibraryImportWebViewModel(255);
    OUTLINED_FUNCTION_2_145();
    v9 = sub_216C5D26C(v7, v8, &unk_217049BDC);
    v10 = a3(a1, v6, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_216C61330()
{
  result = qword_27CAC7378;
  if (!qword_27CAC7378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7380, &qword_2170581E8);
    sub_216C5D0E4();
    sub_2166D9530(&qword_27CAC72C8, &qword_27CAC72A8, &qword_217057FF8, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7378);
  }

  return result;
}

unint64_t sub_216C61440()
{
  result = qword_27CAC7388;
  if (!qword_27CAC7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7388);
  }

  return result;
}

uint64_t sub_216C614BC()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C61514(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_61Tm()
{

  return swift_deallocObject();
}

uint64_t __swift_get_extra_inhabitant_index_41Tm(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v7 = OUTLINED_FUNCTION_3_17();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_42Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v7 = OUTLINED_FUNCTION_3_17();

    return __swift_storeEnumTagSinglePayload(v7, v8, a2, v9);
  }

  return result;
}

void sub_216C6180C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_216C61284(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_21694CB7C(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_216C61898()
{
  result = qword_27CAC7440;
  if (!qword_27CAC7440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7448, &qword_217058578);
    sub_216C61950();
    sub_2166D9530(&qword_280E2A730, &qword_27CAB8688, qword_2170272F0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7440);
  }

  return result;
}

unint64_t sub_216C61950()
{
  result = qword_27CAC7450;
  if (!qword_27CAC7450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7458, &unk_217058580);
    sub_2167D95A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7450);
  }

  return result;
}

unint64_t sub_216C619DC()
{
  result = qword_27CAC7470;
  if (!qword_27CAC7470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC73C8, &unk_2170584B0);
    sub_216C61A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7470);
  }

  return result;
}

unint64_t sub_216C61A68()
{
  result = qword_27CAC7478;
  if (!qword_27CAC7478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC73C0, &qword_2170584A8);
    sub_2166D9530(&qword_27CAC7480, &qword_27CAC7488, qword_217058598, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7478);
  }

  return result;
}

unint64_t sub_216C61B74()
{
  result = qword_27CAC74E0;
  if (!qword_27CAC74E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74B8, &qword_2170586B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74C8, L"@\v6");
    sub_2166D9530(&qword_27CAC74E8, &qword_27CAC74C8, L"@\v6", MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74B0, &qword_2170586A8);
    sub_2166D9530(&qword_27CAC74F0, &qword_27CAC74B0, &qword_2170586A8, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC74E0);
  }

  return result;
}

unint64_t sub_216C61CD4()
{
  result = qword_27CAC74F8;
  if (!qword_27CAC74F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7490, &qword_217058688);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74A0, &qword_217058698);
    v1 = MEMORY[0x277CDD7A8];
    sub_2166D9530(&qword_27CAC74D8, &qword_27CAC74A0, &qword_217058698, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB79C8, &qword_217017CA0);
    sub_2166D9530(&qword_280E2B3A0, &qword_27CAB79C8, &qword_217017CA0, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC74F8);
  }

  return result;
}

unint64_t sub_216C61E30()
{
  result = qword_27CAC7500;
  if (!qword_27CAC7500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC74D0, aP_0);
    sub_216C61B74();
    sub_216C61CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7500);
  }

  return result;
}

uint64_t sub_216C61F24()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

unint64_t sub_216C61FA8()
{
  result = qword_27CAC7530;
  if (!qword_27CAC7530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC7528, &qword_217058758);
    sub_2166D9530(&qword_27CAC7538, &qword_27CAC7540, qword_217058760, MEMORY[0x277CDF028]);
    sub_2166D9530(&qword_280E2A6E0, &qword_27CABF2D0, &unk_217032D90, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC7530);
  }

  return result;
}

void sub_216C62094(__int16 a1)
{
  switch(a1)
  {
    case 5:
    case 9:
    case 13:
    case 15:
    case 21:
    case 22:
    case 23:
    case 24:
    case 26:
    case 29:
    case 30:
    case 36:
    case 38:
    case 40:
    case 44:
    case 48:
    case 50:
    case 51:
    case 52:
    case 54:
    case 59:
    case 61:
    case 65:
    case 71:
    case 73:
    case 75:
    case 76:
    case 78:
    case 79:
    case 80:
    case 87:
    case 93:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 114:
    case 115:
    case 118:
    case 125:
    case 127:
    case 129:
    case 130:
    case 137:
    case 141:
    case 149:
    case 150:
    case 155:
    case 172:
    case 174:
    case 176:
    case 180:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 204:
    case 207:
    case 209:
    case 211:
    case 212:
    case 213:
    case 214:
    case 216:
    case 223:
    case 224:
    case 225:
    case 226:
    case 228:
    case 231:
    case 232:
    case 233:
    case 236:
    case 238:
    case 239:
    case 240:
    case 241:
    case 242:
    case 243:
    case 244:
    case 245:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 256:
    case 257:
    case 259:
    case 260:
    case 263:
    case 265:
    case 268:
    case 270:
    case 271:
    case 272:
    case 274:
    case 276:
    case 278:
    case 279:
    case 283:
    case 284:
    case 285:
    case 287:
    case 288:
    case 294:
    case 308:
    case 314:
    case 315:
    case 317:
    case 321:
    case 325:
    case 326:
    case 327:
    case 328:
    case 330:
    case 331:
    case 332:
    case 333:
    case 334:
    case 335:
    case 337:
    case 343:
    case 349:
    case 365:
    case 372:
    case 373:
    case 374:
    case 375:
    case 376:
    case 377:
    case 378:
    case 379:
    case 382:
    case 383:
    case 384:
    case 385:
    case 386:
    case 387:
      OUTLINED_FUNCTION_6_97();
      break;
    case 7:
    case 18:
    case 34:
    case 35:
    case 82:
    case 98:
    case 160:
    case 215:
    case 246:
      OUTLINED_FUNCTION_17_5();
      break;
    case 20:
    case 32:
    case 77:
    case 81:
    case 84:
    case 171:
    case 173:
    case 264:
      OUTLINED_FUNCTION_4_118(22);
      break;
    case 37:
    case 57:
    case 237:
    case 316:
      OUTLINED_FUNCTION_2_146(22);
      break;
    case 39:
    case 190:
    case 193:
    case 291:
      OUTLINED_FUNCTION_10_81();
      break;
    case 60:
    case 64:
    case 113:
    case 202:
    case 203:
    case 324:
      OUTLINED_FUNCTION_1_180(22);
      break;
    case 83:
    case 117:
    case 151:
    case 152:
    case 175:
    case 208:
    case 261:
      OUTLINED_FUNCTION_3_137(22);
      break;
    case 96:
      OUTLINED_FUNCTION_8_92(0x74696465u);
      break;
    case 136:
      OUTLINED_FUNCTION_11_77(0x56736168u);
      break;
    case 188:
      OUTLINED_FUNCTION_11_77(0x566E6970u);
      break;
    case 189:
      OUTLINED_FUNCTION_5_110();
      break;
    case 363:
    case 364:
      OUTLINED_FUNCTION_0_211();
      break;
    case 368:
      OUTLINED_FUNCTION_8_92(0x72657375u);
      break;
    default:
      return;
  }
}

unint64_t sub_216C640C8(char a1)
{
  result = 0x736F706D6F437962;
  switch(a1)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_7_92();
      result = v10 + 7;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      OUTLINED_FUNCTION_7_92();
      result = v11 | 8;
      break;
    case 5:
      OUTLINED_FUNCTION_7_92();
      result = v13 + 17;
      break;
    case 6:
      OUTLINED_FUNCTION_7_92();
      result = v9 + 12;
      break;
    case 7:
    case 8:
    case 15:
    case 31:
      OUTLINED_FUNCTION_7_92();
      result = v14 | 1;
      break;
    case 9:
      return result;
    case 10:
      result = OUTLINED_FUNCTION_2_146(20);
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
    case 19:
      result = OUTLINED_FUNCTION_4_118(20);
      break;
    case 13:
      result = 0x7372756F68;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 16:
      result = 0x6F546E657473696CLL;
      break;
    case 17:
      result = OUTLINED_FUNCTION_1_180(20);
      break;
    case 18:
      v6 = 0x6574756E696DLL;
      goto LABEL_23;
    case 20:
      result = OUTLINED_FUNCTION_3_137(20);
      break;
    case 21:
    case 24:
      OUTLINED_FUNCTION_7_92();
      result = v12 - 1;
      break;
    case 22:
      result = OUTLINED_FUNCTION_5_110();
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 25:
      OUTLINED_FUNCTION_7_92();
      result = v8 + 6;
      break;
    case 26:
      OUTLINED_FUNCTION_7_92();
      result = v15 + 16;
      break;
    case 27:
      v6 = 0x646E6F636573;
LABEL_23:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 28:
      result = 0x694C6E49776F6873;
      break;
    case 29:
      result = 0x656C6666756873;
      break;
    case 30:
      result = 0xD000000000000014;
      break;
    case 32:
      result = 0xD000000000000014;
      break;
    case 33:
      result = OUTLINED_FUNCTION_0_211();
      break;
    case 34:
      OUTLINED_FUNCTION_7_92();
      result = v7 | 2;
      break;
    case 35:
      OUTLINED_FUNCTION_7_92();
      result = v4 - 3;
      break;
    case 36:
      OUTLINED_FUNCTION_7_92();
      result = v5 - 4;
      break;
    case 37:
      result = 0xD000000000000014;
      break;
    default:
      OUTLINED_FUNCTION_7_92();
      result = v3 + 23;
      break;
  }

  return result;
}