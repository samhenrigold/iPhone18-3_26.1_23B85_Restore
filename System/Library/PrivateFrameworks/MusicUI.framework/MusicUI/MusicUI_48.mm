void sub_216B676D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_2168282D4(a1, v13, &unk_27CABF7A0, &unk_217014D20);
  v6 = v14;
  if (!v14)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  v12 = sub_21700F7B4();
  (*(v8 + 8))(v11, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  if (a3)
  {
LABEL_3:
    a3 = sub_21700E4D4();
  }

LABEL_4:
  (*(a4 + 16))(a4, v12, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_216B67884(uint64_t a1, unint64_t a2)
{
  v65 = a1;
  v70 = type metadata accessor for SelectTabAction(0);
  OUTLINED_FUNCTION_1();
  v77 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_103_2();
  v75 = v6;
  v64 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = v63 - v9;
  v69 = type metadata accessor for SetPersistenceItemAction(0);
  OUTLINED_FUNCTION_1();
  v71 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_103_2();
  v72 = v14;
  v73 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v63 - v16;
  sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v66 = v19;
  v67 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v74 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_103_2();
  v79 = v25;
  v68 = v26;
  MEMORY[0x28223BE20](v27);
  v78 = v63 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v29);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  v32 = v63 - v31;
  type metadata accessor for LibraryImportStatusProvider();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v33 = v81;
  v76 = v2;
  if (*&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastVisitedBaseURLString + 8])
  {
    v34 = *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastVisitedBaseURLString];
    v35 = *&v2[OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_lastVisitedBaseURLString + 8];
  }

  else
  {
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  v81 = v65;
  v82 = a2;
  v83 = v34;
  v84 = v35;
  sub_21700DF14();
  sub_21700DF14();
  sub_21692B3EC(&v81);
  sub_216B68DF0(v81, v82);
  type metadata accessor for UnifiedMessages.Coordinator(0);
  sub_21700E094();
  v36 = v81;
  sub_21700EA74();
  v65 = v33;
  OUTLINED_FUNCTION_44_22();
  sub_21700EA34();
  v63[1] = v36;

  v37 = sub_21700EA24();
  OUTLINED_FUNCTION_181();
  v38 = swift_allocObject();
  v39 = MEMORY[0x277D85700];
  v38[2] = v37;
  v38[3] = v39;
  v38[4] = v36;
  OUTLINED_FUNCTION_9_46();
  v63[0] = v32;
  sub_21677BBA0();

  v40 = v78;
  v41 = v80;
  sub_21700E094();
  sub_2170061D4();
  sub_217006174();
  v43 = v42;
  (*(v66 + 8))(v22, v67);
  v44 = v69;
  v45 = &v17[v69[5]];
  *(v45 + 3) = MEMORY[0x277D839F8];
  *v45 = v43;
  sub_21700D234();
  v46 = &v17[v44[6]];
  strcpy(v46, "LastImportDate");
  v46[15] = -18;
  v17[v44[7]] = 0;
  sub_21700D234();
  v10[*(v70 + 5)] = 4;
  OUTLINED_FUNCTION_44_22();
  v47 = v74;
  (*(v74 + 16))(v79, v40, v41);
  OUTLINED_FUNCTION_12_58();
  v70 = v48;
  v49 = v73;
  sub_216B69594(v17, v73, v50);
  v51 = v75;
  sub_216B69594(v10, v75, type metadata accessor for SelectTabAction);
  v69 = v76;
  v52 = sub_21700EA24();
  v53 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v54 = *(v71 + 80);
  v76 = v17;
  v55 = (v68 + v54 + v53) & ~v54;
  v56 = v77[80];
  v77 = v10;
  v57 = (v72 + v56 + v55) & ~v56;
  v58 = (v64 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 16) = v52;
  *(v59 + 24) = MEMORY[0x277D85700];
  v60 = v59 + v53;
  v61 = v80;
  (*(v47 + 32))(v60, v79, v80);
  sub_216B695F0(v49, v59 + v55, v70);
  sub_216B695F0(v51, v59 + v57, type metadata accessor for SelectTabAction);
  *(v59 + v58) = v69;
  OUTLINED_FUNCTION_9_46();
  sub_21677EBA0();

  sub_216B697A8(v77, type metadata accessor for SelectTabAction);
  sub_216B697A8(v76, type metadata accessor for SetPersistenceItemAction);
  return (*(v47 + 8))(v78, v61);
}

uint64_t sub_216B67F18()
{
  type metadata accessor for LibraryImportStatusProvider();
  type metadata accessor for ObjectGraph(0);
  OUTLINED_FUNCTION_8();
  sub_21700E094();
  memset(v1, 0, sizeof(v1));
  sub_21692B3EC(v1);
}

uint64_t sub_216B67F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v5[0] = a2;
  v5[1] = a3;
  return a4(a1, v5);
}

char *sub_216B67FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3C18, &qword_217049D18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 32) = 0x65736E6F70736572;
    *(inited + 40) = 0xE800000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF830, &qword_217020AC0);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_217013DA0;
    *(v8 + 32) = 0x736D61726170;
    *(v8 + 40) = 0xE600000000000000;
    *(v8 + 48) = a2;
    *(v8 + 56) = a3;
    sub_21700DF14();
    *(inited + 48) = sub_21700E384();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890, &qword_217033E20);
    v9 = sub_21700E384();
    v10 = OBJC_IVAR____TtC7MusicUI25LibraryImportWebViewModel_callbackForActionType;
    swift_beginAccess();
    v11 = *&v6[v10];
    sub_21700DF14();
    v12 = sub_216935620(2, v11);
    v14 = v13;

    if (v12)
    {
      v16[3] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC3C20, &qword_217049D20);
      v15[1] = 0;
      v16[0] = v9;
      v15[0] = 0;
      v12(v16, v15);
      sub_21667E91C(v12, v14);

      return sub_216697664(v16, &unk_27CABF7A0, &unk_217014D20);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_216B681C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  *(v4 + 24) = sub_21700EA34();
  *(v4 + 32) = sub_21700EA24();
  *(v4 + 40) = 2;

  return MEMORY[0x2822009F8](sub_216B68248, a4, 0);
}

uint64_t sub_216B68248()
{
  OUTLINED_FUNCTION_31();
  sub_216A04C9C((v0 + 40));
  v2 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_21677BB48, v2, v1);
}

uint64_t sub_216B682D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  sub_21700D284();
  v7[15] = swift_task_alloc();
  sub_21700EA34();
  v7[16] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v7[17] = v10;
  v7[18] = v9;

  return MEMORY[0x2822009F8](sub_216B6840C, v10, v9);
}

uint64_t sub_216B6840C()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[9];
  sub_21700D234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0, &unk_21701EC70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_217013D90;
  *(v6 + 56) = type metadata accessor for SetPersistenceItemAction(0);
  *(v6 + 64) = sub_216B69868(&qword_280E36028, type metadata accessor for SetPersistenceItemAction, &unk_21702C7BC);
  __swift_allocate_boxed_opaque_existential_1((v6 + 32));
  OUTLINED_FUNCTION_12_58();
  sub_216B69594(v5, v7, v8);
  *(v6 + 96) = type metadata accessor for SelectTabAction(0);
  *(v6 + 104) = sub_216B69868(qword_280E42060, type metadata accessor for SelectTabAction, &protocol conformance descriptor for SelectTabAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 72));
  sub_216B69594(v4, boxed_opaque_existential_1, type metadata accessor for SelectTabAction);
  v10 = sub_21700D3B4();
  v11 = MEMORY[0x277D21D10];
  v0[5] = v10;
  v0[6] = v11;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_21700D394();
  (*(v3 + 104))(v1, *MEMORY[0x277D21E18], v2);
  v12 = swift_task_alloc();
  v0[19] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  *v12 = v0;
  v12[1] = sub_216B6863C;
  v13 = OUTLINED_FUNCTION_38_29();

  return MEMORY[0x28217F468](v13, v14, v15, v16, v17);
}

uint64_t sub_216B6863C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 160) = v0;

  v7 = OUTLINED_FUNCTION_20_13();
  v8(v7);
  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_216B68794()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216B68804()
{
  OUTLINED_FUNCTION_33();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216B6887C()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61F14();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216B688C8()
{
  OUTLINED_FUNCTION_0_0();
  v0 = sub_216B61F3C();
  return OUTLINED_FUNCTION_1_11(v0);
}

uint64_t sub_216B68914(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21700DF14();
  return sub_216B61E4C(v1, v2);
}

id sub_216B68954(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_217005E04();
  v15[4] = a3;
  v15[5] = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_216B68A6C;
  v15[3] = &block_descriptor_26;
  v11 = _Block_copy(v15);
  v12 = [v5 initWithURL:v10 callback:a2 completionHandler:v11];
  _Block_release(v11);

  v13 = sub_217005EF4();
  (*(*(v13 - 8) + 8))(a1, v13);

  return v12;
}

uint64_t sub_216B68A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_217005E64();
    v10 = sub_217005EF4();
    v11 = 0;
  }

  else
  {
    v10 = sub_217005EF4();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v11, 1, v10);

  v12 = a3;
  v9(v8, a3);

  return sub_216697664(v8, &qword_27CABA820, &unk_217018CE0);
}

uint64_t sub_216B68B7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2166AB4A0;

  return v6();
}

uint64_t sub_216B68C64(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2166AB4A4;

  return v7();
}

uint64_t sub_216B68D4C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_91_0();

  return sub_216B66B54(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216B68DF0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_216B68E38()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216B681C0(v5, v6, v7, v1);
}

uint64_t sub_216B68ECC()
{
  OUTLINED_FUNCTION_82_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_2(v2);
  v3 = type metadata accessor for SetPersistenceItemAction(0);
  OUTLINED_FUNCTION_2(v3);
  v4 = type metadata accessor for SelectTabAction(0);
  OUTLINED_FUNCTION_2(v4);
  OUTLINED_FUNCTION_39_24();
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_2166AB4A4;
  OUTLINED_FUNCTION_17_4();

  return sub_216B682D8(v6, v7, v8, v9, v10, v11, v1);
}

uint64_t sub_216B6908C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a2;
  v6[1] = a3;
  return v4(a1, v6);
}

uint64_t sub_216B690C4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216B652EC(v5, v6, v7, v1);
}

uint64_t sub_216B69158()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_12_7();

  return sub_216B64F20(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_94Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216B69248()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_12_7();

  return sub_216B64C6C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_216B692E8()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_47_8();

  return sub_216B6435C(v3, v4, v5, v6, v7);
}

uint64_t sub_216B69380()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_22_39(v1);
  OUTLINED_FUNCTION_47_8();

  return v6(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216B69418()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_22_39(v1);
  OUTLINED_FUNCTION_47_8();

  return v6(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_110Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_35_3();

  return swift_deallocObject();
}

uint64_t sub_216B694E8()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_2166AB4A0;
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_216B69594(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B695F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B6964C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_2(v1);
  v2 = type metadata accessor for OpenExternalURLAction(0);
  OUTLINED_FUNCTION_2(v2);
  OUTLINED_FUNCTION_39_24();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2166AB4A4;
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_91_0();

  return sub_216B6396C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_216B697A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_75Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));
  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216B69868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B698B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_216B6994C(uint64_t a1)
{
  sub_216688154();
  if (v1 <= 0x3F)
  {
    sub_2166B0B84();
    if (v2 <= 0x3F)
    {
      sub_2167D1C30(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216B69A6C(uint64_t a1)
{
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8BB8, &qword_21701AFD0);
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CA8, &qword_217049FF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CB0, &qword_217049FF8);
  v4 = *(a1 + 16);
  v5 = sub_216B6A524();
  v6 = *(a1 + 24);
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v27 = sub_217009F14();
  v28 = v26[0];
  OUTLINED_FUNCTION_2_115(v27, v7, v26);
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  v8 = sub_21700AF94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v18[-v13];
  sub_2170091A4();
  v19 = v4;
  v20 = v6;
  v21 = v1;
  sub_21700AF84();
  OUTLINED_FUNCTION_6_7();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v11, v8, WitnessTable);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_2166C24DC(v14, v8, WitnessTable);
  return (v16)(v14, v8);
}

uint64_t sub_216B69C90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CB0, &qword_217049FF8);
  *&__src[0] = v7;
  *(&__src[0] + 1) = a2;
  v32 = sub_216B6A524();
  *&__src[1] = v32;
  *(&__src[1] + 1) = a3;
  v8 = sub_217009F14();
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  sub_21700B3B4();
  v14 = sub_2170083C4();
  v31 = v74;
  v35 = v78;
  v33 = v76;
  v34 = v79;
  v92 = 1;
  v90 = v75;
  v88 = v77;
  v15 = a1[1];
  if (v15)
  {
    v29 = *a1;
    sub_21700DF14();
    *(&v28 + 1) = sub_217009D54();
    *&v28 = swift_getKeyPath();
    v16 = sub_21700AD34();
    WitnessTable = v7;
    v17 = v16;
    type metadata accessor for TrackTrailingInfoView(0, a2, a3, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
    sub_2170082C4();
    sub_21700B3B4();
    v14 = sub_2170083C4();
    *&__src[0] = v29;
    *(&__src[0] + 1) = v15;
    *&__src[1] = 0;
    *(&__src[1] + 1) = MEMORY[0x277D84F90];
    __src[2] = v28;
    *&__src[3] = v17;
  }

  else
  {
    memset(__src, 0, 104);
  }

  MEMORY[0x28223BE20](v14);
  *(&v27 - 4) = a2;
  *(&v27 - 3) = a3;
  *(&v27 - 2) = a1;
  sub_217009F04();
  WitnessTable = swift_getWitnessTable();
  sub_2166C24DC(v10, v8, WitnessTable);
  v19 = v36;
  v32 = *(v36 + 8);
  v32(v10, v8);
  sub_21700B3B4();
  sub_2170083C4();
  v20 = v80;
  v21 = v82;
  *(&v28 + 1) = v85;
  v29 = v84;
  v72 = 1;
  v70 = v81;
  v68 = v83;
  v55 = 0;
  v56 = v92;
  *v57 = *v91;
  *&v57[3] = *&v91[3];
  v58 = v31;
  v59 = v90;
  *v60 = *v89;
  *&v60[3] = *&v89[3];
  v61 = v33;
  v62 = v88;
  *&v63[3] = *&v87[3];
  *v63 = *v87;
  v64 = v35;
  v65 = v34;
  v66[0] = &v55;
  memcpy(v54, __src, sizeof(v54));
  v66[1] = v54;
  v22 = v13;
  (*(v19 + 16))(v10, v13, v8);
  v43 = 0;
  v44 = v72;
  *v45 = *v71;
  *&v45[3] = *&v71[3];
  v46 = v20;
  v47 = v70;
  *v48 = *v69;
  *&v48[3] = *&v69[3];
  v49 = v21;
  v50 = v68;
  *v51 = *v67;
  *&v51[3] = *&v67[3];
  v52 = v29;
  v53 = *(&v28 + 1);
  v66[2] = v10;
  v66[3] = &v43;
  sub_216B6A6D8(__src, v73);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8BB8, &qword_21701AFD0);
  v42[0] = v23;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CA8, &qword_217049FF0);
  v42[2] = v8;
  v42[3] = v23;
  v24 = sub_21680CF4C();
  v38 = v24;
  v39 = sub_216B6A748();
  v40 = WitnessTable;
  v41 = v24;
  sub_216984F84(v66, 4, v42);
  sub_216B6A87C(__src);
  v25 = v32;
  v32(v22, v8);
  v25(v10, v8);
  memcpy(v73, v54, sizeof(v73));
  return sub_216B6A87C(v73);
}

uint64_t sub_216B6A1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v12 + 16))(v9);
  sub_2166C24DC(v7, a2, a3);
  v13 = *(v5 + 8);
  v13(v7, a2);
  sub_2166C24DC(v11, a2, a3);
  return (v13)(v11, a2);
}

uint64_t sub_216B6A300@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21700ADB4();
  if (qword_280E2C408 != -1)
  {
    swift_once();
  }

  v3 = sub_21700ADF4();
  v4 = __swift_project_value_buffer(v3, qword_280E73B30);
  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B38, &unk_2170586D0) + 36));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450);
  (*(*(v3 - 8) + 16))(v6 + *(v7 + 28), v4, v3);
  *v6 = KeyPath;
  *a1 = v2;
  if (qword_280E2C410 != -1)
  {
    swift_once();
  }

  v8 = qword_280E73B48;
  v9 = swift_getKeyPath();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8B40, &unk_21704A010) + 36));
  *v10 = v9;
  v10[1] = v8;

  v11 = sub_21700AD14();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CD8, &qword_21704A008) + 36)) = v11;
  sub_21700B3B4();
  sub_2170083C4();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CC8, &qword_21704A000) + 36));
  *v12 = v14;
  v12[1] = v15;
  v12[2] = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CB0, &qword_217049FF8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_216B6A524()
{
  result = qword_27CAC3CB8;
  if (!qword_27CAC3CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CB0, &qword_217049FF8);
    sub_216B6A7F8(&qword_27CAC3CC0, &qword_27CAC3CC8, &qword_21704A000, sub_216B6A608);
    sub_2166D9530(&qword_280E2A8E8, &qword_27CAC3CE0, &qword_2170623C0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3CB8);
  }

  return result;
}

unint64_t sub_216B6A608()
{
  result = qword_27CAC3CD0;
  if (!qword_27CAC3CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CD8, &qword_21704A008);
    sub_21680C8E4();
    sub_2166D9530(&qword_280E2A828, &qword_27CABA400, &qword_217020410, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3CD0);
  }

  return result;
}

uint64_t sub_216B6A6D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CA8, &qword_217049FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216B6A748()
{
  result = qword_27CAC3CE8;
  if (!qword_27CAC3CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3CA8, &qword_217049FF0);
    sub_216B6A7F8(&qword_27CAC3CF0, &qword_27CABB178, &unk_21704A020, sub_21691118C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3CE8);
  }

  return result;
}

uint64_t sub_216B6A7F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216B6A87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3CA8, &qword_217049FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_216B6A8F4(void *a1)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v3 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D08, &qword_217045B38);
    v4 = sub_21700E594();
    v8[3] = MEMORY[0x277D837D0];
    v8[0] = v4;
    v8[1] = v5;
    v6 = a1;
    v7 = sub_2166F1E10(v8, a1);
    sub_2166F1F64(v7, 0x646E696B24, 0xE500000000000000);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_216B6A9D0(uint64_t a1)
{
  *(a1 + 8) = sub_216B6AA00();
  result = sub_216B6AA54();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216B6AA00()
{
  result = qword_280E36DA0;
  if (!qword_280E36DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E36DA0);
  }

  return result;
}

unint64_t sub_216B6AA54()
{
  result = qword_280E36DA8[0];
  if (!qword_280E36DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E36DA8);
  }

  return result;
}

id sub_216B6AB18(void *a1)
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
    v15[0] = type metadata accessor for BrowsePageIntent(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D30, &unk_217045B70);
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

uint64_t sub_216B6AD18(uint64_t a1)
{
  result = sub_2166CE6B4(qword_280E41430, type metadata accessor for BrowsePageIntent, &unk_21704A1C0);
  *(a1 + 8) = result;
  return result;
}

void sub_216B6ADB8(uint64_t a1)
{
  sub_216B6B4F0(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

char *sub_216B6AE58()
{
  OUTLINED_FUNCTION_2_1();
  swift_allocObject();
  return sub_216B6AEB0();
}

char *sub_216B6AEB0()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_1();
  v5 = *(v4 + 280);
  v6 = type metadata accessor for PushNotifications.Subscription(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  type metadata accessor for PushNotifications(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v7 + 272)) = v8;
  return sub_216B12724(v3, v2, v0 & 1);
}

uint64_t sub_216B6AF70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD120, &unk_21704A2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = v2[2];
  v10 = v2[3];
  v2[2] = a1;
  v2[3] = a2;

  sub_21667E91C(v9, v10);
  OUTLINED_FUNCTION_0_1();
  v12 = *(v2 + *(v11 + 272));
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = *(v5 + 264);
  *(v14 + 24) = v13;
  v15 = *&v12[OBJC_IVAR____TtC7MusicUI17PushNotifications_lock];
  v16 = *(v15 + 16);
  v17 = v12;

  os_unfair_lock_lock(v16);
  sub_216EFCDB0(v17, 0xD000000000000016, 0x8000000217089850, sub_216B6B678, v14, v8);
  os_unfair_lock_unlock(*(v15 + 16));

  v18 = type metadata accessor for PushNotifications.Subscription(0);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v18);
  OUTLINED_FUNCTION_0_1();
  v20 = *(v19 + 280);
  swift_beginAccess();
  sub_216B6B680(v8, v2 + v20);
  return swift_endAccess();
}

uint64_t sub_216B6B16C(uint64_t a1, uint64_t a2)
{
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(v3);
  if (v5)
  {
    return swift_dynamicCast();
  }

  else
  {
    return sub_21669987C(v4, &unk_27CABF7A0, &unk_217014D20);
  }
}

uint64_t sub_216B6B260()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD120, &unk_21704A2E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for PushNotifications.Subscription(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_1();
  v8 = *(v7 + 280);
  swift_beginAccess();
  sub_216B6B548(v0 + v8, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    return sub_21669987C(v3, &unk_27CACD120, &unk_21704A2E0);
  }

  sub_216B6B5B8(v3, v6);
  OUTLINED_FUNCTION_0_1();
  sub_216EFCD50();
  return sub_216B6B61C(v6);
}

uint64_t sub_216B6B3C0()
{
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  return sub_21669987C(v0 + *(v2 + 280), &unk_27CACD120, &unk_21704A2E0);
}

char *sub_216B6B414()
{
  v0 = sub_216B127F4();

  sub_21669987C(&v0[*(*v0 + 280)], &unk_27CACD120, &unk_21704A2E0);
  return v0;
}

uint64_t sub_216B6B484()
{
  v0 = sub_216B6B414();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216B6B4F0(uint64_t a1)
{
  if (!qword_27CAC3D90)
  {
    type metadata accessor for PushNotifications.Subscription(255);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAC3D90);
    }
  }
}

uint64_t sub_216B6B548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD120, &unk_21704A2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B6B5B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNotifications.Subscription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B6B61C(uint64_t a1)
{
  v2 = type metadata accessor for PushNotifications.Subscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B6B680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD120, &unk_21704A2E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B6B718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v36 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v33 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v31 = a1;
  sub_21700CE04();
  v16 = sub_21700CDB4();
  v18 = v17;
  v19 = *(v11 + 8);
  v34 = v11 + 8;
  v35 = v9;
  v32 = v19;
  v19(v15, v9);
  if (v18)
  {
    v37 = v16;
    v38 = v18;
    sub_21700F364();
    sub_21700D7A4();
    v20 = v31;
    sub_21700CE04();
    v21 = v33;
    v29 = *(v33 + 16);
    v29(v8, v39, v4);
    v30 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(0);
    OUTLINED_FUNCTION_1_147();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3D98, "~+\t");
    sub_21700CE04();
    v22 = v39;
    v29(v8, v39, v4);
    sub_216B6BB58();
    OUTLINED_FUNCTION_1_147();
    (*(v21 + 8))(v22, v4);
    result = v32(v20, v35);
    *(v36 + *(v30 + 24)) = v37;
  }

  else
  {
    v24 = sub_21700E2E4();
    sub_216B6BC0C(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v26 = v25;
    v27 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(0);
    *v26 = 25705;
    v26[1] = 0xE200000000000000;
    v26[2] = v27;
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D22530], v24);
    swift_willThrow();
    (*(v33 + 8))(v39, v4);
    return v32(v31, v35);
  }

  return result;
}

unint64_t sub_216B6BB58()
{
  result = qword_27CAC3DA0;
  if (!qword_27CAC3DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3D98, "~+\t");
    sub_216B6BC0C(&unk_280E2DFE0, type metadata accessor for SocialOnboardingSharedPlaylistLockup, &unk_217047F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3DA0);
  }

  return result;
}

uint64_t sub_216B6BC0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B6BC54(uint64_t a1, uint64_t a2)
{
  v3 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = sub_21700CDB4();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    (*(v12 + 16))(v16, a1, v10);
    (*(v5 + 16))(v9, a2, v3);
    type metadata accessor for AttributedDateRange(0);
    v19 = swift_allocObject();
    sub_216B6C2B0(v16, v9);
  }

  v20 = OUTLINED_FUNCTION_9_71();
  v21(v20);
  v22 = OUTLINED_FUNCTION_8_78();
  v23(v22);
  return v19;
}

uint64_t sub_216B6BE70(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_216B6C2B0(a1, a2);
  return v4;
}

uint64_t sub_216B6BEC8()
{
  v1 = v0;
  v2 = sub_217006274();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = (v1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange____lazy_storage___resolvedValue);
  if (*(v1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange____lazy_storage___resolvedValue + 8))
  {
    v10 = *v9;
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_lock);
    [v11 lock];
    if (qword_27CAB5DE0 != -1)
    {
      swift_once();
    }

    v12 = qword_27CAC3DA8;
    [qword_27CAC3DA8 setDateStyle_];
    [v12 setTimeStyle_];
    if (*(v1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag + 8))
    {
      sub_21700DF14();
      sub_217006234();
    }

    else
    {
      sub_217006254();
    }

    v13 = sub_217006244();
    (*(v4 + 8))(v8, v2);
    [v12 setLocale_];

    v14 = sub_21700E4D4();
    [v12 setDateTemplate_];

    v15 = sub_217006134();
    v16 = sub_217006134();
    v17 = [v12 stringFromDate:v15 toDate:v16];

    sub_21700E514();
    OUTLINED_FUNCTION_8_70();

    [v11 unlock];
    v18 = *(v1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_excludedPatterns);
    v19 = *(v18 + 16);
    v20 = v18 + 40;
    for (i = MEMORY[0x277D837D0]; v19; v15 = v23)
    {
      sub_2167B2E14();
      sub_21700DF14();
      v16 = sub_21700F1B4();
      v23 = v22;

      v20 += 16;
      --v19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_217013DA0;
    *(v24 + 56) = i;
    *(v24 + 64) = sub_2167C6E08();
    *(v24 + 32) = v16;
    *(v24 + 40) = v15;
    sub_21700DF14();
    v10 = sub_21700E554();
    v26 = v25;

    *v9 = v10;
    v9[1] = v26;
    sub_21700DF14();
  }

  sub_21700DF14();
  return v10;
}

uint64_t sub_216B6C27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_216B6BC54(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7 & 1;
  }

  return result;
}

char *sub_216B6C2B0(uint64_t a1, uint64_t a2)
{
  v121 = a2;
  v115 = a1;
  v112 = *v2;
  sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v119 = v5;
  v120 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v109 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_77();
  v116 = (v9 - v10);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v103 - v12;
  v14 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77();
  v107 = v18 - v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  v106 = v21;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  v105 = v23;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  v108 = v25;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  v110 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_15_52();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_53();
  v30 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v122 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77();
  v111 = (v33 - v34);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v35);
  v37 = &v103 - v36;
  v38 = &v2[OBJC_IVAR____TtC7MusicUI19AttributedDateRange____lazy_storage___resolvedValue];
  *v38 = 0;
  *(v38 + 1) = 0;
  v113 = v38;
  v39 = OBJC_IVAR____TtC7MusicUI19AttributedDateRange_lock;
  v40 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v118 = v2;
  v114 = v39;
  *&v2[v39] = v40;
  v41 = v115;
  sub_21700CE04();
  sub_21700CD54();
  v42 = *(v16 + 8);
  v117 = v14;
  v125 = v16 + 8;
  v124 = v42;
  v42(v3, v14);
  v123 = v30;
  if (__swift_getEnumTagSinglePayload(v13, 1, v30) == 1)
  {
    sub_2168CF17C(v13);
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_148();
    v45 = sub_216B6DA1C(v43, v44, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_3_0(v45);
    *v46 = 0x7461447472617473;
    v47 = v112;
    v46[1] = 0xE900000000000065;
    v46[2] = v47;
    OUTLINED_FUNCTION_9_7();
    (*(v48 + 104))();
    swift_willThrow();
    v49 = OUTLINED_FUNCTION_7_79();
    v50(v49);
    v124(v41, v117);
LABEL_17:
    v71 = v118;

    swift_deallocPartialClassInstance();
    return v71;
  }

  v51 = v123;
  v52 = *(v122 + 32);
  v52(v37, v13, v123);
  v53 = v41;
  sub_21700CE04();
  v54 = v116;
  sub_21700CD54();
  v55 = v117;
  OUTLINED_FUNCTION_4_94();
  v56();
  if (__swift_getEnumTagSinglePayload(v54, 1, v51) == 1)
  {
    sub_2168CF17C(v116);
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_148();
    v59 = sub_216B6DA1C(v57, v58, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_3_0(v59);
    *v60 = 0x65746144646E65;
    v61 = v112;
    v60[1] = 0xE700000000000000;
    v60[2] = v61;
    OUTLINED_FUNCTION_9_7();
    (*(v62 + 104))();
    swift_willThrow();
    v63 = OUTLINED_FUNCTION_7_79();
    v64(v63);
    OUTLINED_FUNCTION_4_94();
    v65();
    (*(v122 + 8))(v37, v123);
    goto LABEL_17;
  }

  v104 = v37;
  v66 = v122;
  v52(v111, v116, v123);
  v67 = v110;
  sub_21700CE04();
  v68 = v67;
  sub_21700CDB4();
  OUTLINED_FUNCTION_8_70();
  OUTLINED_FUNCTION_4_94();
  v69();
  if (!v37)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_1_148();
    v94 = sub_216B6DA1C(v92, v93, MEMORY[0x277D22550]);
    OUTLINED_FUNCTION_3_0(v94);
    *v95 = 0x6574616C706D6574;
    v95[1] = 0xE800000000000000;
    v95[2] = v112;
    OUTLINED_FUNCTION_9_7();
    (*(v96 + 104))();
    swift_willThrow();
    v97 = OUTLINED_FUNCTION_7_79();
    v98(v97);
    OUTLINED_FUNCTION_4_94();
    v99();
    v100 = *(v66 + 8);
    v101 = v123;
    v100(v111, v123);
    v100(v104, v101);
    goto LABEL_17;
  }

  v70 = *(v66 + 16);
  v71 = v118;
  v72 = v123;
  v70(&v118[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_startDate], v104, v123);
  v70(&v71[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_endDate], v111, v72);
  v73 = &v71[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_template];
  *v73 = v68;
  *(v73 + 1) = v37;
  v74 = v108;
  sub_21700CE04();
  sub_21700CDB4();
  OUTLINED_FUNCTION_8_70();
  v75 = v124;
  v124(v74, v55);
  v76 = &v71[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag];
  *v76 = v74;
  *(v76 + 1) = v37;
  v77 = v105;
  OUTLINED_FUNCTION_17_49(0x6C79745365746164);
  sub_21700CD64();
  v78 = OUTLINED_FUNCTION_13_52();
  v75(v78);
  if (v37)
  {
    v79 = 0;
  }

  else
  {
    v79 = v77;
  }

  *&v71[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_dateStyle] = v79;
  v80 = v106;
  OUTLINED_FUNCTION_17_49(0x6C797453656D6974);
  sub_21700CD64();
  v81 = OUTLINED_FUNCTION_13_52();
  v75(v81);
  if (v37)
  {
    v82 = 0;
  }

  else
  {
    v82 = v80;
  }

  *&v71[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_timeStyle] = v82;
  v83 = v107;
  sub_21700CE04();
  sub_21700CDB4();
  OUTLINED_FUNCTION_8_70();
  (v75)(v83, v55);
  v84 = &v71[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_stringFormat];
  *v84 = v83;
  *(v84 + 1) = v37;
  sub_21700CE04();
  v86 = v119;
  v85 = v120;
  v87 = v121;
  (*(v119 + 16))(v109, v121, v120);
  sub_216AC7084();
  if (v88)
  {
    v89 = v88;
  }

  else
  {
    v89 = MEMORY[0x277D84F90];
  }

  (*(v86 + 8))(v87, v85);
  (v75)(v53, v55);
  v90 = v123;
  v91 = *(v122 + 8);
  v91(v111, v123);
  v91(v104, v90);
  *&v71[OBJC_IVAR____TtC7MusicUI19AttributedDateRange_excludedPatterns] = v89;
  return v71;
}

uint64_t sub_216B6CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = (v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange____lazy_storage___resolvedValue);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC7MusicUI19AttributedDateRange_lock;
  *(v11 + v18) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v19 = OBJC_IVAR____TtC7MusicUI19AttributedDateRange_startDate;
  v20 = sub_2170061E4();
  v21 = *(*(v20 - 8) + 32);
  v21(v11 + v19, a1, v20);
  v21(v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_endDate, a2, v20);
  v22 = (v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_template);
  *v22 = a3;
  v22[1] = a4;
  v23 = (v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag);
  *v23 = a5;
  v23[1] = a6;
  *(v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_dateStyle) = a7;
  *(v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_timeStyle) = a8;
  v24 = (v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_stringFormat);
  *v24 = a9;
  v24[1] = a10;
  *(v11 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_excludedPatterns) = a11;
  return v11;
}

void sub_216B6CE2C(uint64_t a1, uint64_t a2)
{
  if (sub_217006184() & 1) != 0 && (sub_217006184())
  {
    OUTLINED_FUNCTION_11_64(OBJC_IVAR____TtC7MusicUI19AttributedDateRange_template);
    v6 = v6 && v4 == v5;
    if (v6 || (sub_21700F7D4() & 1) != 0)
    {
      v7 = *(a1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag + 8);
      v8 = *(a2 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag + 8);
      if (v7)
      {
        if (!v8)
        {
          return;
        }

        v9 = *(a1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag) == *(a2 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_languageTag) && v7 == v8;
        if (!v9 && (sub_21700F7D4() & 1) == 0)
        {
          return;
        }
      }

      else if (v8)
      {
        return;
      }

      if (*(a1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_dateStyle) == *(a2 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_dateStyle) && *(a1 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_timeStyle) == *(a2 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_timeStyle))
      {
        OUTLINED_FUNCTION_11_64(OBJC_IVAR____TtC7MusicUI19AttributedDateRange_stringFormat);
        v12 = v6 && v10 == v11;
        if (v12 || (sub_21700F7D4() & 1) != 0)
        {

          sub_216E20CEC();
        }
      }
    }
  }
}

uint64_t sub_216B6CF68()
{
  v1 = OBJC_IVAR____TtC7MusicUI19AttributedDateRange_startDate;
  v2 = sub_2170061E4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC7MusicUI19AttributedDateRange_endDate, v2);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();

  OUTLINED_FUNCTION_84_0();

  return v0;
}

uint64_t sub_216B6D048()
{
  sub_216B6CF68();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for AttributedDateRange(uint64_t a1)
{
  result = qword_27CAC3DC0;
  if (!qword_27CAC3DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  result = qword_27CACE060;
  if (!qword_27CACE060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B6D0F4(uint64_t a1)
{
  result = sub_2170061E4();
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

uint64_t sub_216B6D22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_216B6BE70(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void (*sub_216B6D284(void *a1))(uint64_t, uint64_t)
{
  v4 = v1;
  v6 = sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_52();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_14_53();
  v19 = type metadata accessor for AttributedDateRange(v18);
  if (*(a1 + v19[6] + 8))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3DD8, &qword_21704A5B0);
    sub_2167880BC();
    swift_allocError();
    v22 = xmmword_21704A3E0;
LABEL_9:
    *v21 = v22;
    *(v21 + 16) = v20;
    swift_willThrow();
LABEL_10:
    sub_216B6D970(a1);
    return v20;
  }

  v23 = v19;
  if (*(a1 + v19[7] + 8))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3DD8, &qword_21704A5B0);
    sub_2167880BC();
    swift_allocError();
    v22 = xmmword_21704A3D0;
    goto LABEL_9;
  }

  v24 = (a1 + v19[8]);
  if (!v24[1])
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3DD8, &qword_21704A5B0);
    sub_2167880BC();
    swift_allocError();
    v22 = xmmword_21704A3C0;
    goto LABEL_9;
  }

  v47 = v24[1];
  v45 = *v24;
  sub_217006164();
  sub_217006164();
  v25 = v23[10];
  v26 = (a1 + v23[9]);
  v27 = v26[1];
  v44 = *v26;
  v28 = a1 + v25;
  LOBYTE(v25) = *(a1 + v25 + 9);
  v46 = v27;
  if (v25)
  {
    sub_21700DF14();
    sub_21700DF14();
    v43 = 0;
  }

  else
  {
    LODWORD(v43) = v28[8];
    v42 = *v28;
    sub_21700DF14();
    sub_21700DF14();
    v30 = sub_216B6D6E4(v42, v43 & 1);
    if (v4)
    {
      goto LABEL_17;
    }

    v43 = v30;
  }

  v31 = a1 + v23[11];
  if ((v31[9] & 1) == 0)
  {
    v32 = sub_216B6D6E4(*v31, v31[8] & 1);
    if (!v4)
    {
      goto LABEL_18;
    }

LABEL_17:

    v20 = *(v8 + 8);
    v20(v3, v6);
    v20(v2, v6);
    goto LABEL_10;
  }

  v32 = 0;
LABEL_18:
  v33 = (a1 + v23[12]);
  v34 = v33[1];
  v42 = v32;
  v38[1] = v34;
  if (v34)
  {
    v41 = *v33;
    v39 = v34;
  }

  else
  {
    v39 = 0xE200000000000000;
    v41 = 16421;
  }

  v38[0] = *a1;
  v40 = v8;
  v35 = *(v8 + 16);
  v35(v15, v2, v6);
  v35(v12, v3, v6);
  v20 = swift_allocObject();
  sub_21700DF14();
  v36 = sub_21700DF14();
  sub_216B6CCA8(v15, v12, v45, v47, v44, v46, v43, v42, v41, v39, v36);
  v37 = *(v40 + 8);
  v37(v3, v6);
  v37(v2, v6);
  sub_216B6D970(a1);
  return v20;
}

uint64_t sub_216B6D6E4(uint64_t a1, char a2)
{
  v4 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  if (a2)
  {
    return qword_21704A5C8[a1];
  }

  sub_217007C94();
  v12 = sub_217007C84();
  v13 = sub_21700ED84();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315394;
    v16 = sub_21700F784();
    v18 = sub_2166A85FC(v16, v17, &v22);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3DE0, &unk_21704A5B8);
    v19 = sub_21700E594();
    v21 = sub_2166A85FC(v19, v20, &v22);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_216679000, v12, v13, "Unrecognized value '%s' for type '%s'", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v15, -1, -1);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  return 0;
}

void (*sub_216B6D944@<X0>(void *a1@<X0>, void (**a2)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  result = sub_216B6D284(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_216B6D970(uint64_t a1)
{
  v2 = type metadata accessor for AttributedDateRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_216B6D9CC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA978]) init];
  result = [v0 setBoundaryStyle_];
  qword_27CAC3DA8 = v0;
  return result;
}

uint64_t sub_216B6DA1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ObjectGraph.init(name:dependencies:)()
{
  OUTLINED_FUNCTION_4_95();
  OUTLINED_FUNCTION_2_116();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_171();
  v2 = OUTLINED_FUNCTION_1_149();
  v3(v2);
  sub_21700D464();
  v4 = OUTLINED_FUNCTION_3_113();
  v5(v4);
  return v0;
}

uint64_t ObjectGraph.__deallocating_deinit()
{
  v0 = _s7MusicUI11ObjectGraphCfd_0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_216B6DB60()
{
  OUTLINED_FUNCTION_33();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v0[5] = v4;
  v0[6] = *(v4 - 8);
  v0[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v0[8] = v5;
  v0[9] = *(v5 - 8);
  v0[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216B6DC94, 0, 0);
}

uint64_t sub_216B6DC94()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  (*(v3 + 104))(v1, *MEMORY[0x277D21E18], v2);
  v0[11] = sub_21700D5E4();
  (*(v3 + 8))(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  sub_216B50BCC();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_216B6DDF8;
  v5 = v0[2];

  return MEMORY[0x282180360](v5);
}

uint64_t sub_216B6DDF8()
{
  OUTLINED_FUNCTION_33();
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_216B6DF9C;
  }

  else
  {
    v2 = sub_216B6DF24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_216B6DF24()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_0_13();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_216B6DF9C()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_0_13();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

_BYTE *storeEnumTagSinglePayload for UnifiedMessagesLaunchIntent(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_216B6E0F0(void *a1, char a2)
{
  v4 = objc_opt_self();
  result = [v4 valueWithNewObjectInContext_];
  if (result)
  {
    v6 = result;
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D00, &qword_217045B30);
    v7 = sub_21700E594();
    v13 = MEMORY[0x277D837D0];
    v11 = v7;
    v12 = v8;
    v9 = a1;
    v10 = sub_2166F1E10(&v11, a1);
    sub_2166F1F64(v10, 0x646E696B24, 0xE500000000000000);
    sub_2166F1F64([v4 valueWithBool:a2 & 1 inContext:{v9, v11, v12}], 0xD000000000000018, 0x8000000217085130);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_216B6E22C(uint64_t a1)
{
  *(a1 + 8) = sub_216ABE8E8();
  result = sub_216B6E25C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216B6E25C()
{
  result = qword_27CAC3DE8;
  if (!qword_27CAC3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3DE8);
  }

  return result;
}

uint64_t sub_216B6E2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = OUTLINED_FUNCTION_80();
  v3[13] = type metadata accessor for PresentSheetAction(0);
  v3[14] = OUTLINED_FUNCTION_80();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = OUTLINED_FUNCTION_80();
  v3[18] = type metadata accessor for MusicAppDestination(0);
  v3[19] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v3[20] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v3[21] = v7;
  v3[22] = v6;

  return MEMORY[0x2822009F8](sub_216B6E46C, v7, v6);
}

uint64_t sub_216B6E46C()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[13];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[12];
  v4 = v0[8];
  *v1 = *v4;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ObjectGraph(0);
  sub_21700DF14();
  sub_21700E094();
  sub_2169152B0(v1, v2 + *(v3 + 20), type metadata accessor for MusicAppDestination);
  type metadata accessor for ModalActionModelDestinations.Destination(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(type metadata accessor for OpenAddToPlaylistAction(0) + 20);
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(v2, &v4[v5]);
  v0[5] = v3;
  v0[6] = sub_216B6E7C0(qword_280E3EA78, type metadata accessor for PresentSheetAction, &unk_217045370);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2169152B0(v2, boxed_opaque_existential_1, type metadata accessor for PresentSheetAction);
  (*(v14 + 104))(v16, *MEMORY[0x277D21E18], v15);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_216914E5C;
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[7];

  return MEMORY[0x28217F468](v12, v0 + 2, v10, v11, v9);
}

uint64_t sub_216B6E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2166DFAC0;

  return sub_216B6E2C0(a1, a2, a3);
}

unint64_t sub_216B6E74C(uint64_t a1)
{
  result = sub_2166DA6BC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B6E7C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ShowInLibraryAction(uint64_t a1)
{
  result = qword_280E3D0F8;
  if (!qword_280E3D0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B6E87C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v42 - v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v44 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v50 = v14;
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v43 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v46 = v18;
  v47 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for ShowInLibraryAction(0) + 20);
  v22 = type metadata accessor for ContentDescriptor(0);
  v53 = a2;
  v49 = v21;
  __swift_storeEnumTagSinglePayload(a2 + v21, 1, 1, v22);
  sub_21700CE04();
  v23 = *(v7 + 16);
  v52 = v5;
  v23(v12, v54, v5);
  v24 = v48;
  sub_21700D224();
  if (v24)
  {
    (*(v7 + 8))(v54, v52);
    v25 = OUTLINED_FUNCTION_1_108();
    v26(v25);
    return sub_2168F3EB8(v53 + v49);
  }

  else
  {
    v42 = v22;
    v48 = v7;
    v27 = v53;
    (*(v46 + 32))(v53, v20, v47);
    v28 = v43;
    sub_21700CE04();
    v29 = v44;
    v23(v44, v54, v52);
    v30 = v45;
    ContentDescriptor.init(deserializing:using:)(v28, v29, v31, v32, v33, v34, v35, v36, v42, v43, SWORD2(v43), SBYTE6(v43), SHIBYTE(v43), v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
    v38 = OUTLINED_FUNCTION_2_117();
    v39(v38);
    v40 = OUTLINED_FUNCTION_1_108();
    v41(v40);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v42);
    return sub_216A765E0(v30, v27 + v49);
  }
}

unint64_t sub_216B6EC98()
{
  result = qword_280E3A9B8[0];
  if (!qword_280E3A9B8[0])
  {
    type metadata accessor for EngagementEventAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3A9B8);
  }

  return result;
}

uint64_t sub_216B6ECF0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EngagementEventAction(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  type metadata accessor for UnifiedMessages.Coordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v10 = v30;
  if (qword_27CAB5DE8 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_27CAC3DF0);
  sub_216B6F248(a1, v9);
  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v10;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    v17 = sub_21700E364();
    v29 = v5;
    v18 = a1;
    v19 = v4;
    v21 = v20;
    sub_216B6F2AC(v9);
    v22 = sub_2166A85FC(v17, v21, &v30);
    v4 = v19;
    a1 = v18;
    v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_216679000, v12, v13, "💬 event: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x21CEA1440](v16, -1, -1);
    v23 = v15;
    v10 = v28;
    MEMORY[0x21CEA1440](v23, -1, -1);
  }

  else
  {

    sub_216B6F2AC(v9);
  }

  sub_216B6F248(a1, v6);
  v24 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v10;
  sub_216B6F308(v6, v25 + v24);
  return sub_216ECDBF4(&unk_21704A8D0, v25);
}

uint64_t sub_216B6EFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_216B6F008, 0, 0);
}

uint64_t sub_216B6F008()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[4];
  v0[5] = *(v1 + *(type metadata accessor for EngagementEventAction(0) + 20));
  sub_21700EA34();
  v0[6] = sub_21700EA24();
  v3 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216B6F0B0, v3, v2);
}

uint64_t sub_216B6F0B0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 40);

  sub_216A04B10(v1);

  return MEMORY[0x2822009F8](sub_216B6F120, 0, 0);
}

uint64_t sub_216B6F120()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_216B6F1C8()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC3DF0);
  __swift_project_value_buffer(v0, qword_27CAC3DF0);
  return sub_217007C94();
}

uint64_t sub_216B6F248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementEventAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B6F2AC(uint64_t a1)
{
  v2 = type metadata accessor for EngagementEventAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B6F308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementEventAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B6F36C(uint64_t a1)
{
  v4 = *(type metadata accessor for EngagementEventAction(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2167CCCD0;

  return sub_216B6EFE4(a1, v6, v1 + v5);
}

uint64_t sub_216B6F478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v63 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v47 - v5;
  v58 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v53 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v51 = v8;
  MEMORY[0x28223BE20](v9);
  v52 = &v47 - v10;
  v11 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v50 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v61 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  v54 = v22;
  MEMORY[0x28223BE20](v23);
  v55 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v57 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_21700CE04();
  v28 = v11;
  v29 = *(v13 + 16);
  v30 = v63;
  v29(v18);
  v31 = v60;
  sub_21700D224();
  if (v31)
  {
    (*(v13 + 8))(v30, v28);
    return (*(v20 + 8))(v62, v61);
  }

  else
  {
    v48 = v29;
    v49 = v13;
    v60 = v28;
    (*(v57 + 32))(v59, v27, v55);
    v33 = v54;
    v34 = v62;
    sub_21700CE04();
    v35 = v56;
    sub_21700CD74();
    v38 = *(v20 + 8);
    v36 = v20 + 8;
    v37 = v38;
    v39 = v61;
    v38(v33, v61);
    if (__swift_getEnumTagSinglePayload(v35, 1, v58) == 1)
    {
      (*(v49 + 8))(v63, v60);
      v37(v34, v39);
      sub_216A0BF90(v35);
      v40 = 0;
    }

    else
    {
      v47 = v37;
      v54 = v36;
      v42 = v52;
      v41 = v53;
      v43 = v58;
      (*(v53 + 32))(v52, v35, v58);
      (*(v41 + 16))(v51, v42, v43);
      v48(v50, v63, v60);
      sub_216A0BFF8();
      v40 = sub_21700E934();
      v44 = OUTLINED_FUNCTION_2_118();
      v45(v44);
      v47(v62, v61);
      (*(v41 + 8))(v42, v58);
    }

    v46 = v59;
    result = type metadata accessor for FindFriendsBatchFollowAction(0);
    *(v46 + *(result + 20)) = v40;
  }

  return result;
}

uint64_t sub_216B6FA48()
{

  return v0;
}

uint64_t sub_216B6FA78()
{
  sub_216B6FA48();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_216B6FAAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  switch(*v5)
  {
    case 4:
      v30 = type metadata accessor for AlbumDetailPageIntent(0);
      *(a4 + 24) = v30;
      v31 = &unk_27CAC3E50;
      v32 = type metadata accessor for AlbumDetailPageIntent;
      v33 = &unk_21704DC88;
      goto LABEL_13;
    case 5:
      v34 = type metadata accessor for ArtistDetailPageIntent(0);
      OUTLINED_FUNCTION_0_173(v34);
      v26 = &unk_27CAC3E48;
      v27 = type metadata accessor for ArtistDetailPageIntent;
      v28 = &unk_21703BCB8;
      goto LABEL_22;
    case 6:
      v29 = type metadata accessor for ArtistUploadedVideoDetailPageIntent(0);
      OUTLINED_FUNCTION_0_173(v29);
      v26 = &unk_27CAC3E20;
      v27 = type metadata accessor for ArtistUploadedVideoDetailPageIntent;
      v28 = &unk_21702D0A4;
      goto LABEL_22;
    case 7:
    case 8:
    case 0xA:
    case 0xB:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x15:
      if (qword_27CAB5DF8 != -1)
      {
        swift_once();
      }

      v16 = sub_217007CA4();
      __swift_project_value_buffer(v16, qword_27CAC3E08);
      sub_21695BC04(v5, v15);
      v17 = sub_217007C84();
      v18 = sub_21700ED84();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v46 = v20;
        *v19 = 136446210;
        sub_21695BC04(v15, v12);
        v21 = sub_21700E594();
        v23 = v22;
        sub_2168F3F20(v15);
        v24 = sub_2166A85FC(v21, v23, &v46);

        *(v19 + 4) = v24;
        _os_log_impl(&dword_216679000, v17, v18, "Unable to create detail page intent for content descriptor: '%{public}s'", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x21CEA1440](v20, -1, -1);
        MEMORY[0x21CEA1440](v19, -1, -1);
      }

      else
      {

        sub_2168F3F20(v15);
      }

      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return;
    case 9:
      v25 = type metadata accessor for CuratorDetailPageIntent(0);
      OUTLINED_FUNCTION_0_173(v25);
      v26 = &unk_27CAB94B0;
      v27 = type metadata accessor for CuratorDetailPageIntent;
      v28 = &unk_217061B38;
      goto LABEL_22;
    case 0xC:
      v37 = type metadata accessor for MovieDetailPageIntent(0);
      OUTLINED_FUNCTION_0_173(v37);
      v26 = &unk_27CAC3E38;
      v27 = type metadata accessor for MovieDetailPageIntent;
      v28 = &unk_2170341C8;
      goto LABEL_22;
    case 0xD:
      v40 = type metadata accessor for MusicVideoDetailPageIntent(0);
      OUTLINED_FUNCTION_0_173(v40);
      v26 = &unk_27CAC3E30;
      v27 = type metadata accessor for MusicVideoDetailPageIntent;
      v28 = &unk_217061D9C;
      goto LABEL_22;
    case 0xE:
      v30 = type metadata accessor for PlaylistDetailPageIntent(0);
      *(a4 + 24) = v30;
      v31 = &unk_27CAC3E40;
      v32 = type metadata accessor for PlaylistDetailPageIntent;
      v33 = &unk_21706F334;
LABEL_13:
      *(a4 + 32) = sub_216B700D0(v31, v32, v33);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
      sub_21695BC04(v5, boxed_opaque_existential_1);
      sub_2168CC268(a3, boxed_opaque_existential_1 + *(v30 + 24));
      v36 = (boxed_opaque_existential_1 + *(v30 + 20));
      *v36 = a1;
      v36[1] = a2;

      sub_21700DF14();
      return;
    case 0x13:
      v42 = type metadata accessor for SongAlbumDetailPageIntent(0);
      OUTLINED_FUNCTION_0_173(v42);
      v26 = &unk_27CAC3E28;
      v27 = type metadata accessor for SongAlbumDetailPageIntent;
      v28 = &unk_21704CF1C;
      goto LABEL_22;
    case 0x14:
      v38 = type metadata accessor for TVEpisodeDetailPageIntent(0);
      OUTLINED_FUNCTION_0_173(v38);
      v26 = &qword_27CAB80D8;
      v27 = type metadata accessor for TVEpisodeDetailPageIntent;
      v28 = &unk_21707048C;
      goto LABEL_22;
    case 0x16:
      v39 = type metadata accessor for TVShowDetailPageIntent(0);
      OUTLINED_FUNCTION_0_173(v39);
      v26 = &unk_27CAC1000;
      v27 = type metadata accessor for TVShowDetailPageIntent;
      v28 = &unk_21703D498;
      goto LABEL_22;
    default:
      v41 = type metadata accessor for AppleCuratorDetailPageIntent(0);
      OUTLINED_FUNCTION_0_173(v41);
      v26 = &unk_27CAB94B8;
      v27 = type metadata accessor for AppleCuratorDetailPageIntent;
      v28 = &unk_217064230;
LABEL_22:
      *(a4 + 32) = sub_216B700D0(v26, v27, v28);
      v43 = __swift_allocate_boxed_opaque_existential_1(a4);
      sub_21695BC04(v5, v43);
      v44 = v43 + *(a2 + 20);

      sub_2168CC268(a3, v44);
      return;
  }
}

uint64_t sub_216B70050()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC3E08);
  __swift_project_value_buffer(v0, qword_27CAC3E08);
  return sub_217007C94();
}

uint64_t sub_216B700D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_216B70144@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E58, &qword_21704AA58);
  sub_216B70260(a1, a2 + *(v4 + 44));
  v5 = sub_217009C84();
  v6 = sub_217008A34();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E60, &qword_21704AA60) + 36);
  *v7 = v6;
  *(v7 + 8) = v5;
  v13.origin.x = OUTLINED_FUNCTION_0_174();
  CGRectGetWidth(v13);
  v14.origin.x = OUTLINED_FUNCTION_0_174();
  CGRectGetHeight(v14);
  sub_21700B3B4();
  sub_2170083C4();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E68, &qword_21704AA68) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_216B70260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E70, &qword_21704AA70);
  MEMORY[0x28223BE20](v4);
  v6 = &v74 - v5;
  v7 = type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v74 - v11;
  MEMORY[0x28223BE20](v12);
  v85 = &v74 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v74 - v15;
  MEMORY[0x28223BE20](v17);
  v84 = &v74 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - v20;
  MEMORY[0x28223BE20](v22);
  v87 = &v74 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v74 - v25;
  MEMORY[0x28223BE20](v27);
  v88 = &v74 - v28;
  swift_beginAccess();
  v29 = *(a1 + 48);
  if (v29 && *(v29 + 16) >= 0xFuLL)
  {
    v78 = v9;
    v76 = a2;
    sub_216A73E6C(1uLL, 5, v29);
    v32 = v31;
    v82 = v33;
    v83 = v34;
    v36 = v35;
    v77 = v4;
    v79 = v6;
    if (v35)
    {
      sub_21700F7E4();
      swift_unknownObjectRetain_n();
      sub_21700DF14();
      v39 = swift_dynamicCastClass();
      if (!v39)
      {
        swift_unknownObjectRelease();
        v39 = MEMORY[0x277D84F90];
      }

      v40 = *(v39 + 16);

      if (__OFSUB__(v36 >> 1, v83))
      {
        goto LABEL_40;
      }

      if (v40 != (v36 >> 1) - v83)
      {
        goto LABEL_41;
      }

      v38 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v6 = v79;
      if (v38)
      {
        goto LABEL_14;
      }

      v38 = MEMORY[0x277D84F90];
      goto LABEL_13;
    }

    sub_21700DF14();
    while (1)
    {
      sub_216A73BEC(v32, v82, v83, v36);
      v38 = v37;
LABEL_13:
      swift_unknownObjectRelease();
LABEL_14:
      if (*(v29 + 16) < 6uLL)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v41 = *(v7 + 24);
      v42 = sub_21700C4B4();
      v43 = *(v42 - 8);
      v44 = *(v43 + 16);
      v45 = v29 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v75 = *(v43 + 72);
      v80 = v45;
      v81 = v43 + 16;
      v82 = v44;
      v83 = v42;
      (v44)(&v26[v41], v45 + 5 * v75);
      v46 = sub_216A39FAC();
      *v26 = v38;
      v26[8] = 2;
      *&v26[*(v7 + 28)] = v46;
      sub_216B7197C(v26, v88);
      sub_216A73E6C(6uLL, 10, v29);
      v32 = v48;
      v50 = v49;
      v52 = v51;
      if ((v51 & 1) == 0)
      {
        goto LABEL_16;
      }

      v74 = v47;
      sub_21700F7E4();
      swift_unknownObjectRetain_n();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        swift_unknownObjectRelease();
        v54 = MEMORY[0x277D84F90];
      }

      v55 = *(v54 + 16);

      if (__OFSUB__(v52 >> 1, v50))
      {
        break;
      }

      if (v55 != (v52 >> 1) - v50)
      {
        goto LABEL_43;
      }

      v26 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v36 = v78;
      v6 = v79;
      if (v26)
      {
        goto LABEL_24;
      }

      v26 = MEMORY[0x277D84F90];
LABEL_23:
      swift_unknownObjectRelease();
LABEL_24:
      if (!*(v29 + 16))
      {
        goto LABEL_38;
      }

      v82(&v21[*(v7 + 24)], v80, v83);
      v56 = sub_216A39FAC();
      *v21 = v26;
      v21[8] = 1;
      *&v21[*(v7 + 28)] = v56;
      sub_216B7197C(v21, v87);
      sub_216A73E6C(0xBuLL, 15, v29);
      v32 = v57;
      v59 = v58;
      v26 = v60;
      v62 = v61;
      if ((v61 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_21700F7E4();
      swift_unknownObjectRetain_n();
      v64 = swift_dynamicCastClass();
      if (!v64)
      {
        swift_unknownObjectRelease();
        v64 = MEMORY[0x277D84F90];
      }

      v65 = *(v64 + 16);

      if (__OFSUB__(v62 >> 1, v26))
      {
        __break(1u);
LABEL_45:
        swift_unknownObjectRelease();
        v36 = v78;
        v6 = v79;
LABEL_26:
        sub_216A73BEC(v32, v59, v26, v62);
        v21 = v63;
        v4 = v77;
        goto LABEL_33;
      }

      if (v65 != (v62 >> 1) - v26)
      {
        goto LABEL_45;
      }

      v21 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v4 = v77;
      v36 = v78;
      v6 = v79;
      if (v21)
      {
        goto LABEL_34;
      }

      v21 = MEMORY[0x277D84F90];
LABEL_33:
      swift_unknownObjectRelease();
LABEL_34:
      if (*(v29 + 16) >= 0xBuLL)
      {
        v82(&v16[*(v7 + 24)], v80 + 10 * v75, v83);

        v66 = sub_216A39FAC();
        *v16 = v21;
        v16[8] = 0;
        *&v16[*(v7 + 28)] = v66;
        v67 = v84;
        sub_216B7197C(v16, v84);
        v68 = v88;
        v69 = v85;
        sub_216B71E44(v88, v85, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        v70 = v86;
        v71 = v87;
        sub_216B71E44(v87, v86, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71E44(v67, v36, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71E44(v69, v6, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E78, &qword_21704AA78);
        sub_216B71E44(v70, &v6[*(v72 + 48)], type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71E44(v36, &v6[*(v72 + 64)], type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v67, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v71, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v68, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v36, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v70, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        sub_216B71F04(v69, type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn);
        a2 = v76;
        sub_216B719E0(v6, v76);
        v30 = 0;
        return __swift_storeEnumTagSinglePayload(a2, v30, 1, v4);
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      swift_unknownObjectRelease();
      v6 = v79;
    }

    __break(1u);
LABEL_43:
    swift_unknownObjectRelease();
    v6 = v79;
    v47 = v74;
LABEL_16:
    sub_216A73BEC(v32, v47, v50, v52);
    v26 = v53;
    v36 = v78;
    goto LABEL_23;
  }

  v30 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v30, 1, v4);
}

double sub_216B70998@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_2170093B4();
  v13 = 0;
  sub_216B70A20(v2, v12);
  v5 = v12[0];
  result = *&v12[1];
  v7 = v12[2];
  v8 = v12[3];
  v9 = v12[4];
  v10 = v12[5];
  v11 = v13;
  *a2 = v4;
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = v11;
  *(a2 + 24) = v5;
  *(a2 + 32) = result;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  return result;
}

uint64_t sub_216B70A20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = &unk_217013000;
  if (!*(a1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BC8, &qword_21703FBB0);
    v16 = sub_21700C4B4();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_217013DA0;
    v19 = type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn(0);
    (*(v17 + 16))(v15 + v18, a1 + *(v19 + 24), v16);
    goto LABEL_11;
  }

  sub_216A73E6C(0, 2, *a1);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ((v12 & 1) == 0)
  {
LABEL_3:
    sub_216A73BEC(v7, v9, v11, v13);
    v15 = v14;
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_21700F7E4();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = MEMORY[0x277D84F90];
  }

  v21 = *(v20 + 16);

  if (__OFSUB__(v13 >> 1, v11))
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v21 != (v13 >> 1) - v11)
  {
LABEL_45:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v15 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

LABEL_11:
  v22 = type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn(0);
  v23 = *(a1 + *(v22 + 28));
  if (v4 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BC8, &qword_21703FBB0);
    v24 = sub_21700C4B4();
    v25 = *(v24 - 8);
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_217013DA0;
    (*(v25 + 16))(v27 + v26, a1 + *(v22 + 24), v24);
    goto LABEL_33;
  }

  v28 = *a1;
  if (!v4)
  {
    sub_216A73E6C(0, 2, v28);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    if (v43)
    {
      sub_21700F7E4();
      swift_unknownObjectRetain_n();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        swift_unknownObjectRelease();
        v54 = MEMORY[0x277D84F90];
      }

      v55 = *(v54 + 16);

      if (__OFSUB__(v44 >> 1, v42))
      {
        __break(1u);
      }

      else if (v55 == (v44 >> 1) - v42)
      {
        v27 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v27)
        {
          swift_unknownObjectRelease();
          v27 = MEMORY[0x277D84F90];
        }

        goto LABEL_33;
      }

      swift_unknownObjectRelease();
    }

    sub_216A73BEC(v38, v40, v42, v44);
    v27 = v45;
    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  sub_216A73E6C(2uLL, 4, v28);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if ((v34 & 1) == 0)
  {
    goto LABEL_15;
  }

  v67 = v29;
  sub_21700F7E4();
  swift_unknownObjectRetain_n();
  v46 = swift_dynamicCastClass();
  if (!v46)
  {
    swift_unknownObjectRelease();
    v46 = MEMORY[0x277D84F90];
  }

  v47 = *(v46 + 16);

  if (__OFSUB__(v35 >> 1, v33))
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v47 != (v35 >> 1) - v33)
  {
LABEL_47:
    swift_unknownObjectRelease();
    v5 = &unk_217013000;
    v29 = v67;
LABEL_15:
    sub_216A73BEC(v31, v29, v33, v35);
    v27 = v36;
    goto LABEL_24;
  }

  v27 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v5 = &unk_217013000;
  if (v27)
  {
    goto LABEL_25;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_24:
  swift_unknownObjectRelease();
LABEL_25:
  if (v4 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1BC8, &qword_21703FBB0);
    v48 = sub_21700C4B4();
    v49 = *(v48 - 8);
    v50 = v5;
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = v50[218];
    result = (*(v49 + 16))(v52 + v51, a1 + *(v22 + 24), v48);
    goto LABEL_41;
  }

LABEL_33:
  sub_216A73E6C(2uLL, 4, *a1);
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  if ((v62 & 1) == 0)
  {
LABEL_34:
    sub_216A73BEC(v57, v59, v61, v63);
    v52 = v64;
    result = swift_unknownObjectRelease();
    goto LABEL_41;
  }

  sub_21700F7E4();
  swift_unknownObjectRetain_n();
  v65 = swift_dynamicCastClass();
  if (!v65)
  {
    swift_unknownObjectRelease();
    v65 = MEMORY[0x277D84F90];
  }

  v66 = *(v65 + 16);

  if (__OFSUB__(v63 >> 1, v61))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v66 != (v63 >> 1) - v61)
  {
LABEL_43:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  v52 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease();
  if (!v52)
  {
    result = swift_unknownObjectRelease();
    v52 = MEMORY[0x277D84F90];
  }

LABEL_41:
  *a2 = v15;
  a2[1] = v23;
  a2[2] = v27;
  a2[3] = v23;
  a2[4] = v52;
  a2[5] = v23;
  return result;
}

void sub_216B71028(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 16) <= 1uLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x4028000000000000;
  }

  *a2 = sub_2170091A4();
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3ED0, &qword_21704AC18);
  sub_216B710A4(a1, a2 + *(v7 + 44), a3);
}

void sub_216B710A4(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3ED8, &qword_21704AC20);
  MEMORY[0x28223BE20](v33);
  v7 = v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3EE0, &qword_21704AC28);
  MEMORY[0x28223BE20](v8);
  v10 = v32 - v9;
  v11 = type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView(0);
  MEMORY[0x28223BE20](v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v32 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v32 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v32 - v21;
  v23 = *(a1 + 16);
  if (v23 >= 2)
  {
    v24 = sub_21700C4B4();
    v32[2] = a2;
    v25 = v24;
    v26 = *(v24 - 8);
    v32[0] = v7;
    v27 = *(v26 + 16);
    v32[1] = v8;
    v28 = v26 + 16;
    v29 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v27(v22, v29, v24);
    *&v22[*(v11 + 20)] = a3;
    v27(v19, v29 + *(v28 + 56), v25);
    *&v19[*(v11 + 20)] = a3;
    sub_216B71E44(v22, v16, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    sub_216B71E44(v19, v13, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    sub_216B71E44(v16, v10, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3EF8, &qword_21704AC30);
    sub_216B71E44(v13, &v10[*(v30 + 48)], type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    sub_216B71F04(v13, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    sub_216B71F04(v16, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    sub_216B71F64(v10, v32[0]);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC3EE8, &qword_27CAC3EE0, &qword_21704AC28, MEMORY[0x277CE14C0]);
    sub_216B71EAC();
    sub_217009554();
    sub_216B71FD4(v10);
    sub_216B71F04(v19, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
LABEL_5:
    sub_216B71F04(v22, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    return;
  }

  if (v23 == 1)
  {
    v31 = sub_21700C4B4();
    (*(*(v31 - 8) + 16))(v22, a1 + ((*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80)), v31);
    *&v22[*(v11 + 20)] = a3 + a3 + 12.0;
    sub_216B71E44(v22, v7, type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC3EE8, &qword_27CAC3EE0, &qword_21704AC28, MEMORY[0x277CE14C0]);
    sub_216B71EAC();
    sub_217009554();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_216B7151C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v37 = sub_21700C444();
  v2 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21700C4B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_217007474();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  (*(v6 + 16))(v8, v1, v5, v14);
  type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView(0);
  v17 = v36;
  sub_217007484();
  sub_21700C404();
  sub_2170073E4();
  (*(v2 + 8))(v4, v37);
  v18 = *(v10 + 8);
  v18(v12, v9);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  v18(v16, v9);
  v19 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3770, &unk_2170485A0) + 36);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440, &unk_217016D40);
  v21 = (v19 + *(v20 + 36));
  v22 = *(sub_217008B44() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_217009294();
  (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #7.0 }

  *v21 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  v30 = qword_280E73AA0;
  v31 = byte_280E73AA8;
  v32 = qword_280E73AB0;
  v33 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8930, &qword_21701A680) + 36);
  sub_216B71E44(v21, v33, MEMORY[0x277CDFC08]);
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)) = 256;
  *v19 = v30;
  *(v19 + 8) = v31;
  *(v19 + 16) = v32;
  v34 = v19 + *(v20 + 40);
  *v34 = swift_getKeyPath();
  *(v34 + 8) = 0;
}

uint64_t sub_216B7197C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingAlbumArtworkContentView.MarketingGridColumn(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B719E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3E70, &qword_21704AA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_216B71A78(uint64_t a1)
{
  sub_216B71B0C(319);
  if (v1 <= 0x3F)
  {
    sub_21700C4B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216B71B0C(uint64_t a1)
{
  if (!qword_27CAC3E90)
  {
    sub_21700C4B4();
    v1 = sub_21700E984();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAC3E90);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MarketingAlbumArtworkContentView.LargeArtworkPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216B71C40()
{
  result = qword_27CAC3E98;
  if (!qword_27CAC3E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3E68, &qword_21704AA68);
    sub_216B71CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3E98);
  }

  return result;
}

unint64_t sub_216B71CCC()
{
  result = qword_27CAC3EA0;
  if (!qword_27CAC3EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3E60, &qword_21704AA60);
    sub_2166D9530(&qword_27CAC3EA8, &qword_27CAC3EB0, qword_21704AAB8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3EA0);
  }

  return result;
}

unint64_t sub_216B71D88()
{
  result = qword_27CAC3EB8;
  if (!qword_27CAC3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3EB8);
  }

  return result;
}

uint64_t sub_216B71E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_216B71EAC()
{
  result = qword_27CAC3EF0;
  if (!qword_27CAC3EF0)
  {
    type metadata accessor for MarketingAlbumArtworkContentView.ArtworkView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3EF0);
  }

  return result;
}

uint64_t sub_216B71F04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_216B71F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3EE0, &qword_21704AC28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B71FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3EE0, &qword_21704AC28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B72064(uint64_t a1)
{
  result = sub_21700C4B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216B720F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_20;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_20:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_20;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_216B7220C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
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
LABEL_35:
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

        goto LABEL_24;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_23;
      case 3:
        goto LABEL_35;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_24;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_216B723C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = sub_21700D284();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  if (!a2)
  {
    return 0;
  }

  v11 = v5 + v10 + 1;
  if (a2 <= v9)
  {
    goto LABEL_25;
  }

  v12 = (v11 & ~v10) + *(*(v6 - 8) + 64);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v9 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    if (v16 < 2)
    {
LABEL_25:
      if (v8 > 0xFE)
      {

        return __swift_getEnumTagSinglePayload((a1 + v11) & ~v10, v8, v6);
      }

      else
      {
        v20 = *(a1 + v5);
        if (v20 >= 2)
        {
          return (v20 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_25;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    switch(v18)
    {
      case 2:
        v19 = *a1;
        break;
      case 3:
        v19 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v19 = *a1;
        break;
      default:
        v19 = *a1;
        break;
    }
  }

  else
  {
    v19 = 0;
  }

  return v9 + (v19 | v17) + 1;
}

void sub_216B725AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = sub_21700D284();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = v7 + 1;
  v13 = *(v9 + 80);
  v14 = v7 + 1 + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  if (a3 <= v11)
  {
    v17 = 0;
  }

  else if (v15 <= 3)
  {
    v20 = ((a3 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v11 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_55:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v10 > 0xFE)
          {

            __swift_storeEnumTagSinglePayload(&a1[v14] & ~v13, a2, v10, v8);
          }

          else if (a2 > 0xFE)
          {
            if (v12 <= 3)
            {
              v23 = ~(-1 << (8 * v12));
            }

            else
            {
              v23 = -1;
            }

            if (v7 != -1)
            {
              v24 = v23 & (a2 - 255);
              if (v12 <= 3)
              {
                v25 = v7 + 1;
              }

              else
              {
                v25 = 4;
              }

              bzero(a1, v12);
              switch(v25)
              {
                case 2:
                  *a1 = v24;
                  break;
                case 3:
                  *a1 = v24;
                  a1[2] = BYTE2(v24);
                  break;
                case 4:
                  *a1 = v24;
                  break;
                default:
                  *a1 = v24;
                  break;
              }
            }
          }

          else
          {
            a1[v7] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v11 + a2;
    if (v15 < 4)
    {
      v19 = (v18 >> v16) + 1;
      if (v15)
      {
        v22 = v18 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v15 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v15] = v19;
        break;
      case 2:
        *&a1[v15] = v19;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v15] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata accessor for PlayNextAction(uint64_t a1)
{
  result = qword_280E430C0;
  if (!qword_280E430C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B72910(uint64_t a1)
{
  v1 = sub_21700D284();
  if (v2 <= 0x3F)
  {
    sub_21692CF60(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688154();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_2166D90EC(319);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_216B729F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v48 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v55 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v53 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v49 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v46 = v17;
  MEMORY[0x28223BE20](v18);
  Action = type metadata accessor for PlayNextAction(0);
  *(a3 + *(Action + 32)) = 0x80;
  v47 = Action;
  v20 = *(Action + 40);
  v51 = a3;
  *(a3 + v20) = 0;
  v21 = a1;
  sub_21700CE04();
  v22 = v56;
  v54 = v7;
  v50 = *(v7 + 16);
  v50(v12, v56, v5);
  v23 = v52;
  sub_21700D224();
  if (v23)
  {
    (*(v54 + 8))(v22, v5);
    return (*(v53 + 8))(v21, v55);
  }

  else
  {
    v25 = *(v46 + 32);
    v52 = 0;
    v26 = v51;
    v25();
    v27 = v49;
    sub_21700CE04();
    v28 = v48;
    v45 = v5;
    v50(v48, v22, v5);
    sub_216AC609C();
    v29 = v47;
    *(v26 + *(v47 + 20)) = v30;
    sub_21700CE04();
    v31 = sub_21700CDB4();
    v33 = v32;
    v53 = *(v53 + 8);
    (v53)(v27, v55);
    v34 = (v26 + *(v29 + 24));
    *v34 = v31;
    v34[1] = v33;
    type metadata accessor for ContentDescriptor(0);
    sub_21700CE04();
    v35 = v45;
    v50(v28, v56, v45);
    sub_216B72F38(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    v36 = v51;
    sub_21700D734();
    sub_21700CE04();
    v37 = sub_21700CDB4();
    v39 = v38;
    (*(v54 + 8))(v56, v35);
    v40 = v21;
    v41 = v55;
    v42 = v53;
    (v53)(v40, v55);
    result = v42(v27, v41);
    v43 = (v36 + *(v29 + 36));
    *v43 = v37;
    v43[1] = v39;
  }

  return result;
}

uint64_t sub_216B72EE0(uint64_t a1)
{
  result = sub_216B72F38(qword_280E430E0, type metadata accessor for PlayNextAction, &unk_21704ADC4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B72F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B72F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7, a2);
}

uint64_t sub_216B72FC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v10[0] = *a4;
  v10[1] = v8;
  v11 = v7;
  return v6(a1, a2, a3 & 1, v10, a5);
}

uint64_t sub_216B73010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v5;
  return v4(a1, v8, a3);
}

uint64_t sub_216B73054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v4;
  return v3(v7, a2);
}

void sub_216B73098(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v54 = a4;
  v52 = a3;
  v51 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
  v47 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0, &qword_21703E810);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v46 - v10;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v59 = a2 + 56;
  sub_21700DF14();
  v16 = 0;
  v53 = a1;
  while (v14)
  {
    v17 = v16;
LABEL_10:
    v18 = *(a1 + 48) + 40 * (__clz(__rbit64(v14)) | (v17 << 6));
    v20 = *v18;
    v19 = *(v18 + 16);
    v58 = *(v18 + 32);
    v57[0] = v20;
    v57[1] = v19;
    v21 = v20;
    if (v58)
    {
      sub_21700DF14();
    }

    else
    {
      sub_2168387D4(v57, v56);
    }

    v14 &= v14 - 1;
    if (*(a2 + 16))
    {
      sub_21700F8F4();
      sub_2168387D4(v57, v55);
      sub_21700E614();
      v22 = sub_21700F944();
      v23 = ~(-1 << *(a2 + 32));
      do
      {
        v24 = v22 & v23;
        if (((*(v59 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v23)) & 1) == 0)
        {

          goto LABEL_32;
        }

        v25 = (*(a2 + 48) + 16 * v24);
        if (*v25 == v21 && v25[1] == *(&v21 + 1))
        {
          break;
        }

        v27 = sub_21700F7D4();
        v22 = v24 + 1;
      }

      while ((v27 & 1) == 0);

      v28 = v54;
      swift_beginAccess();
      v29 = *(v28 + 16);
      if (*(v29 + 16))
      {
        sub_2168387D4(v57, v56);
        v30 = sub_216E68214();
        v31 = v50;
        if (v32)
        {
          sub_216B751C8(*(v29 + 56) + *(v47 + 72) * v30, v50);
          v33 = v31;
          v34 = 0;
        }

        else
        {
          v33 = v50;
          v34 = 1;
        }

        v35 = v51;
        __swift_storeEnumTagSinglePayload(v33, v34, 1, v51);
      }

      else
      {
        v31 = v50;
        v35 = v51;
        __swift_storeEnumTagSinglePayload(v50, 1, 1, v51);
        sub_2168387D4(v57, v56);
      }

      swift_endAccess();
      if (__swift_getEnumTagSinglePayload(v31, 1, v35) == 1)
      {
        sub_216697664(v31, &qword_27CAC15C0, &qword_21703E810);
        v36 = v48;
        sub_216A51910(v57, v37, v38, v39, v40, v41, v42, v43, v46, v47);
        sub_216A8DB24(v57);
        sub_216697664(v36, &qword_27CAC15C0, &qword_21703E810);
      }

      else
      {
        v44 = v49;
        sub_216B752B4(v31, v49, type metadata accessor for PersistentPageSectionManager.ShelfMetadata);
        v45 = v52;
        swift_isUniquelyReferenced_nonNull_native();
        v56[0] = *v45;
        sub_21693A140(v44, v57);
        sub_216A8DB24(v57);
        *v45 = v56[0];
      }

LABEL_32:
      sub_216A8DB24(v57);
      v16 = v17;
      a1 = v53;
    }

    else
    {

      v16 = v17;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_216B7354C(char a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    _s7SectionVMa(0);
    v5 = sub_21700E384();
  }

  v6 = qword_280E32070;
  sub_21700DF14();
  if (v6 != -1)
  {
LABEL_23:
    swift_once();
  }

  v7 = sub_217007CA4();
  __swift_project_value_buffer(v7, qword_280E32078);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_21700DF14();
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446466;
    _s7SectionVMa(0);
    v12 = sub_21700E394();
    v14 = sub_2166A85FC(v12, v13, &v26);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1026;

    *(v10 + 14) = a1 & 1;

    _os_log_impl(&dword_216679000, v8, v9, "Page updated: updatedSectionIDs=%{public}s, isPaginationUpdate=%{BOOL,public}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x21CEA1440](v11, -1, -1);
    MEMORY[0x21CEA1440](v10, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v15 = 1 << *(v5 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v5 + 64);
  v18 = (v15 + 63) >> 6;
  sub_21700DF14();
  v19 = 0;
  while (v17)
  {
    v20 = v17;
LABEL_17:
    v17 = (v20 - 1) & v20;
    if ((a1 & 1) == 0)
    {
      v22 = (*(v5 + 48) + ((v19 << 10) | (16 * __clz(__rbit64(v20)))));
      v24 = *v22;
      v23 = v22[1];
      sub_21700DF14();
      sub_216B73C18(v24, v23);
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v21 >= v18)
    {
      break;
    }

    v20 = *(v5 + 64 + 8 * v21);
    ++v19;
    if (v20)
    {
      v19 = v21;
      goto LABEL_17;
    }
  }

  sub_216B73F7C(a1 & 1, a2);
}

uint64_t (*sub_216B73868(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_216B74764(v4, a2);
  return sub_216B75318;
}

uint64_t (*sub_216B738CC(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_216B747F4(v6, a2, a3);
  return sub_216B73940;
}

void sub_216B73944(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_216B73990(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if ((a1[4] & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_19;
      }

      return 1;
    }

    return 0;
  }

  if ((a2[4] & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = v4 == v6 && v5 == v7;
  if (!v12 && (sub_21700F7D4() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v10 && v9 == v11)
  {
    return 1;
  }

LABEL_19:

  return sub_21700F7D4();
}

uint64_t sub_216B73A5C(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x21CEA0720](1);
    sub_21700E614();
  }

  else
  {
    MEMORY[0x21CEA0720](0);
  }

  return sub_21700E614();
}

uint64_t sub_216B73AF0()
{
  sub_21700F8F4();
  if (*(v0 + 32))
  {
    v1 = MEMORY[0x21CEA0720](1);
    OUTLINED_FUNCTION_4_96(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19);
    sub_21700E614();
  }

  else
  {
    v9 = MEMORY[0x21CEA0720](0);
    OUTLINED_FUNCTION_4_96(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
  }

  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216B73B88(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_21700F8F4();
  if (v2)
  {
    v3 = MEMORY[0x21CEA0720](1);
    OUTLINED_FUNCTION_4_96(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21);
    sub_21700E614();
  }

  else
  {
    v11 = MEMORY[0x21CEA0720](0);
    OUTLINED_FUNCTION_4_96(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
  }

  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_216B73C18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0, &qword_21703E810);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v37 - v6;
  swift_beginAccess();
  v7 = *(v2 + 16);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v11 = 1 << *(*(v2 + 16) + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v40 = *(v2 + 16);
  result = swift_bridgeObjectRetain_n();
  v16 = 0;
  v38 = a2;
  if (v13)
  {
LABEL_8:
    while (1)
    {
      v18 = *(v40 + 48) + 40 * (__clz(__rbit64(v13)) | (v16 << 6));
      v20 = *v18;
      v19 = *(v18 + 16);
      v45 = *(v18 + 32);
      v44[0] = v20;
      v44[1] = v19;
      v21 = *(&v20 + 1);
      v22 = v20;
      sub_21700DF14();
      if (v22 == v41 && v21 == a2)
      {
        break;
      }

      v24 = sub_21700F7D4();
      sub_2168387D4(v44, v43);

      if (v24)
      {
        goto LABEL_15;
      }

LABEL_19:
      v13 &= v13 - 1;
      result = sub_216A8DB24(v44);
      if (!v13)
      {
        goto LABEL_4;
      }
    }

    sub_2168387D4(v44, v43);

LABEL_15:
    swift_beginAccess();
    v25 = sub_216E68214();
    if (v26)
    {
      v27 = v25;
      swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v3 + 16);
      *(v3 + 16) = 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A8, &qword_217039EA0);
      sub_21700F554();
      v28 = v3;
      v29 = v42;
      v30 = *(v42 + 48) + 40 * v27;
      sub_216838830(*v30, *(v30 + 8), *(v30 + 16), *(v30 + 24), *(v30 + 32));
      v31 = *(v29 + 56);
      v32 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
      v33 = v39;
      sub_216B752B4(v31 + *(*(v32 - 8) + 72) * v27, v39, type metadata accessor for PersistentPageSectionManager.ShelfMetadata);
      sub_2167CB9EC();
      sub_21700F574();
      *(v28 + 16) = v29;
      v3 = v28;

      v34 = v33;
      v35 = 0;
      v36 = v32;
      a2 = v38;
    }

    else
    {
      v36 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
      v33 = v39;
      v34 = v39;
      v35 = 1;
    }

    __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
    sub_216697664(v33, &qword_27CAC15C0, &qword_21703E810);
    swift_endAccess();
    goto LABEL_19;
  }

LABEL_4:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v9 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_216B73F7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21700DF14();
  v4 = sub_216E64354(v3);
  type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
  sub_2167CB9EC();
  v7 = sub_21700E384();
  swift_beginAccess();
  sub_21700DF14();

  v5 = sub_21700DF14();
  sub_216B73098(v5, v4, &v7, v2);

  *(v2 + 16) = v7;
}

uint64_t sub_216B7404C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0, &qword_21703E810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  swift_beginAccess();
  sub_216935074();
  swift_endAccess();
  v10 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    v11 = *(v10 + 20);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8, &qword_217047DB0);
    __swift_storeEnumTagSinglePayload(&v9[v11], 1, 1, v12);
    if (__swift_getEnumTagSinglePayload(v6, 1, v10) != 1)
    {
      sub_216697664(v6, &qword_27CAC15C0, &qword_21703E810);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_175();
    sub_216B752B4(v6, v9, v13);
  }

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  swift_beginAccess();
  sub_2168387D4(a2, v18);
  sub_216A8BB9C(v9, a2);
  v14 = sub_216B73868(v18, a2);
  v16 = v15;
  if (!__swift_getEnumTagSinglePayload(v15, 1, v10))
  {
    sub_216B746F4(a1, v16 + *(v10 + 20));
  }

  (v14)(v18, 0);
  return swift_endAccess();
}

uint64_t sub_216B74270@<X0>(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0, &qword_21703E810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16) && (v8 = sub_216E68214(), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
    OUTLINED_FUNCTION_34();
    sub_216B751C8(v11 + *(v13 + 72) * v10, v6);
    v14 = v6;
    v15 = 0;
  }

  else
  {
    v12 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
    v14 = v6;
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, 1, v12);
  type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v12))
  {
    sub_216697664(v6, &qword_27CAC15C0, &qword_21703E810);
    swift_endAccess();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8, &qword_217047DB0);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v16);
  }

  else
  {
    sub_216681B04(&v6[*(v12 + 20)], a2, &qword_27CAC3618, &qword_21704AE70);
    sub_216697664(v6, &qword_27CAC15C0, &qword_21703E810);
    return swift_endAccess();
  }
}

uint64_t sub_216B74428()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_280E32078);
  __swift_project_value_buffer(v0, qword_280E32078);
  return sub_217007C94();
}

uint64_t type metadata accessor for PersistentPageSectionManager.ShelfMetadata(uint64_t a1)
{
  result = qword_280E320E8;
  if (!qword_280E320E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B74540(uint64_t a1)
{
  sub_216B745C4(319);
  if (v1 <= 0x3F)
  {
    sub_216B7461C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216B745C4(uint64_t a1)
{
  if (!qword_280E29B60)
  {
    type metadata accessor for CGPoint(255);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E29B60);
    }
  }
}

void sub_216B7461C(uint64_t a1)
{
  if (!qword_280E333D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC35F8, &qword_217047DB0);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, qword_280E333D8);
    }
  }
}

unint64_t sub_216B746A0()
{
  result = qword_280E3F8D8;
  if (!qword_280E3F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3F8D8);
  }

  return result;
}

uint64_t sub_216B746F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3618, &qword_21704AE70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_216B74764(void *a1, uint64_t a2))()
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_216B751A0(v4);
  v4[9] = sub_216B748F0(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_216B7531C;
}

uint64_t (*sub_216B747F4(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_216B7522C(v6);
  v6[9] = sub_216B74D48(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_216B7488C;
}

void sub_216B74890(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_216B748F0(void *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0xA8uLL);
  *a1 = v7;
  v7[10] = a2;
  v7[11] = v3;
  v8 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
  v7[12] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[13] = v9;
  v11 = *(v9 + 64);
  v7[14] = __swift_coroFrameAllocStub(v11);
  v7[15] = __swift_coroFrameAllocStub(v11);
  v7[16] = __swift_coroFrameAllocStub(v11);
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC15C0, &qword_21703E810) - 8) + 64);
  v7[17] = __swift_coroFrameAllocStub(v12);
  v7[18] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v7[19] = v13;
  v14 = *v4;
  v15 = sub_216E68214();
  *(v7 + 33) = v16 & 1;
  if (__OFADD__(*(v14 + 16), (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A8, &qword_217039EA0);
  if (sub_21700F554())
  {
    v19 = sub_216E68214();
    if ((v18 & 1) == (v20 & 1))
    {
      v17 = v19;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[20] = v17;
  if (v18)
  {
    sub_216B752B4(*(*v4 + 56) + *(v10 + 72) * v17, v13, type metadata accessor for PersistentPageSectionManager.ShelfMetadata);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v21, 1, v8);
  return sub_216B74B40;
}

void sub_216B74B40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  if (a2)
  {
    sub_216681B04(v3, *(v2 + 136), &qword_27CAC15C0, &qword_21703E810);
    OUTLINED_FUNCTION_2_119();
    v4 = *(v2 + 33);
    v5 = *(v2 + 136);
    if (v6 != 1)
    {
      OUTLINED_FUNCTION_0_175();
      sub_216B752B4(v7, v8, v9);
      if ((v4 & 1) == 0)
      {
        v10 = *(v2 + 112);
        v11 = *(v2 + 80);
        OUTLINED_FUNCTION_0_175();
        sub_216B752B4(v12, v10, v13);
        OUTLINED_FUNCTION_5_85();
        v14 = v11;
        v15 = v2;
LABEL_11:
        sub_2168387D4(v14, v15);
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_216681B04(v3, *(v2 + 144), &qword_27CAC15C0, &qword_21703E810);
    OUTLINED_FUNCTION_2_119();
    v4 = *(v2 + 33);
    v5 = *(v2 + 144);
    if (v16 != 1)
    {
      OUTLINED_FUNCTION_0_175();
      sub_216B752B4(v17, v18, v19);
      if ((v4 & 1) == 0)
      {
        v23 = *(v2 + 112);
        v24 = *(v2 + 80);
        OUTLINED_FUNCTION_0_175();
        sub_216B752B4(v25, v23, v26);
        OUTLINED_FUNCTION_5_85();
        v15 = v2 + 40;
        v14 = v24;
        goto LABEL_11;
      }

LABEL_9:
      OUTLINED_FUNCTION_0_175();
      sub_216B752B4(v20, v21, v22);
      goto LABEL_12;
    }
  }

  sub_216697664(v5, &qword_27CAC15C0, &qword_21703E810);
  if (v4)
  {
    sub_216A8DB24(*(**(v2 + 88) + 48) + 40 * *(v2 + 160));
    sub_2167CB9EC();
    sub_21700F574();
  }

LABEL_12:
  v27 = *(v2 + 144);
  v28 = *(v2 + 152);
  v30 = *(v2 + 128);
  v29 = *(v2 + 136);
  v32 = *(v2 + 112);
  v31 = *(v2 + 120);
  sub_216697664(v28, &qword_27CAC15C0, &qword_21703E810);
  free(v28);
  free(v27);
  free(v29);
  free(v30);
  free(v31);
  free(v32);

  free(v2);
}

void (*sub_216B74D48(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v10 = type metadata accessor for PopoverBubbleTipDismissContext(0);
  v9[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[4] = v11;
  v13 = *(v11 + 64);
  v9[5] = __swift_coroFrameAllocStub(v13);
  v9[6] = __swift_coroFrameAllocStub(v13);
  v9[7] = __swift_coroFrameAllocStub(v13);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC09A0, &qword_21703A310) - 8) + 64);
  v9[8] = __swift_coroFrameAllocStub(v14);
  v9[9] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v9[10] = v15;
  v16 = *v4;
  v17 = sub_216E69548(a2, a3);
  *(v9 + 96) = v18 & 1;
  if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD200, &qword_21704AFF0);
  if (sub_21700F554())
  {
    v21 = sub_216E69548(a2, a3);
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_21700F824();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[11] = v19;
  if (v20)
  {
    sub_216B752B4(*(*v5 + 56) + *(v12 + 72) * v19, v15, type metadata accessor for PopoverBubbleTipDismissContext);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v23, 1, v10);
  return sub_216B74FB0;
}

void sub_216B74FB0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_216681B04(v3, *(v2 + 8), &qword_27CAC09A0, &qword_21703A310);
    OUTLINED_FUNCTION_2_119();
    v4 = *(v2 + 96);
    v5 = *(v2 + 8);
    if (v6 != 1)
    {
      v7 = *(v2 + 2);
      OUTLINED_FUNCTION_1_150();
      sub_216B752B4(v8, v9, v10);
      v11 = *v7;
      v12 = *(v2 + 11);
      if ((v4 & 1) == 0)
      {
LABEL_4:
        v13 = *(v2 + 5);
        v15 = *v2;
        v14 = *(v2 + 1);
        OUTLINED_FUNCTION_1_150();
        sub_216B752B4(v16, v13, v17);
        sub_21693B160(v12, v15, v14, v13, v11);
        sub_21700DF14();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_216681B04(v3, *(v2 + 9), &qword_27CAC09A0, &qword_21703A310);
    OUTLINED_FUNCTION_2_119();
    v4 = *(v2 + 96);
    v5 = *(v2 + 9);
    if (v18 != 1)
    {
      v19 = *(v2 + 2);
      OUTLINED_FUNCTION_1_150();
      sub_216B752B4(v20, v21, v22);
      v11 = *v19;
      v12 = *(v2 + 11);
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      OUTLINED_FUNCTION_1_150();
      sub_216B752B4(v23, v24, v25);
      goto LABEL_10;
    }
  }

  sub_216697664(v5, &qword_27CAC09A0, &qword_21703A310);
  if (v4)
  {
    sub_216B75260(*(**(v2 + 2) + 48) + 16 * *(v2 + 11));
    sub_216A069B8();
    sub_21700F574();
  }

LABEL_10:
  v26 = *(v2 + 9);
  v27 = *(v2 + 10);
  v29 = *(v2 + 7);
  v28 = *(v2 + 8);
  v31 = *(v2 + 5);
  v30 = *(v2 + 6);
  sub_216697664(v27, &qword_27CAC09A0, &qword_21703A310);
  free(v27);
  free(v26);
  free(v28);
  free(v29);
  free(v30);
  free(v31);

  free(v2);
}

uint64_t (*sub_216B751A0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_216B75314;
}

uint64_t sub_216B751C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_216B7522C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_216B75254;
}

uint64_t sub_216B752B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_216B75320(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v68 = a2;
  v69 = a4;
  v67 = a1;
  v64 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38, &unk_217017F60);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v63 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v58 - v11;
  v70 = type metadata accessor for SocialOnboardingSharedPlaylistLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  type metadata accessor for MappedSection.Content(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = (v19 - v18);
  v59 = type metadata accessor for MappedSection(0);
  OUTLINED_FUNCTION_1();
  v71 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v66 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  v29 = v28 - v27;
  v30 = *(a5 + 32);
  v65 = a3;

  v72 = a5;
  if (v30(v69, a5))
  {
    sub_216DE8DC8();

    v31 = (v29 + *(v66 + 24));
    v32 = *v31;
    v61 = v31[1];
    v62 = v32;
    sub_21700DF14();
    sub_216B785AC(v29, type metadata accessor for Page.Header);
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v33 = type metadata accessor for SocialOnboardingSharedPlaylistPageLockup(0);
  v34 = v72;
  v35 = *(v72 + 56);
  v60 = *(v67 + *(v33 + 24));
  sub_21700DF14();
  v36 = v35(v69, v34);
  v37 = *(v36 + 16);
  v66 = MEMORY[0x277D84F90];
  if (v37)
  {
    v38 = *(v59 + 28);
    v39 = *(v71 + 80);
    v72 = v36;
    v40 = v36 + ((v39 + 32) & ~v39);
    v41 = *(v71 + 72);
    v42 = MEMORY[0x277D84F90];
    do
    {
      v43 = OUTLINED_FUNCTION_39_3();
      sub_216B75938(v43, v44, v45);
      sub_216B75938(v25 + v38, v20, type metadata accessor for MappedSection.Content);
      sub_216B785AC(v25, type metadata accessor for MappedSection);
      if (swift_getEnumCaseMultiPayload() == 36)
      {

        v42 = *v20;
      }

      else
      {
        sub_216B785AC(v20, type metadata accessor for MappedSection.Content);
      }

      v40 += v41;
      --v37;
    }

    while (v37);
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  v73 = MEMORY[0x277D84F90];
  v46 = sub_2166BF3C8(v42);
  v47 = 0;
  v71 = v42 & 0xFFFFFFFFFFFFFF8;
  v72 = v42 & 0xC000000000000001;
  while (1)
  {
    if (v46 == v47)
    {

      v51 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
      __swift_storeEnumTagSinglePayload(v63, 1, 1, v51);
      type metadata accessor for SocialProfileUpdater(0);
      swift_allocObject();
      v52 = v65;
      sub_216AFBA30();
      v54 = v53;
      (*(*(v69 - 8) + 8))(v68);
      sub_216B785AC(v67, type metadata accessor for SocialOnboardingSharedPlaylistPageLockup);
      v55 = v64;
      *v64 = sub_2167D8C58;
      v55[1] = v54;
      *(v55 + 16) = 0;
      v56 = v61;
      v57 = v62;
      v55[3] = v60;
      v55[4] = v57;
      v55[5] = v56;
      v55[6] = v52;
      return;
    }

    if (v72)
    {
      MEMORY[0x21CEA0220](v47, v42);
    }

    else
    {
      if (v47 >= *(v71 + 16))
      {
        goto LABEL_28;
      }
    }

    if (__OFADD__(v47, 1))
    {
      break;
    }

    sub_216DE9B98();
    sub_216683A80(v16 + *(v70 + 20), v12, &qword_27CAB6A00, &unk_217016B60);
    sub_216B785AC(v16, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
    v48 = type metadata accessor for ContentDescriptor(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v48);
    sub_216699778(v12, &qword_27CAB6A00);
    if (EnumTagSinglePayload == 1)
    {

      goto LABEL_21;
    }

    type metadata accessor for SocialProfileUpdater.PlaylistDescriptor(0);
    swift_allocObject();
    sub_216B02848();
    if (v50)
    {
      MEMORY[0x21CE9F610]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      v66 = v73;
      ++v47;
    }

    else
    {
LABEL_21:
      ++v47;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_216B75938(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216B75994()
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3F30, &qword_21704B108);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_105();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3F38, &qword_21704B110);
  OUTLINED_FUNCTION_1();
  v45 = v1;
  v46 = v2;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v42 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3F40, &qword_21704B118);
  OUTLINED_FUNCTION_1();
  v47 = v5;
  v48 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v44 = v8;
  sub_216B75F54(v49);
  sub_2170093C4();
  v9 = OUTLINED_FUNCTION_39_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3F50, &qword_21704B128);
  OUTLINED_FUNCTION_5_86();
  v14 = sub_216B790C0(v13);
  v15 = OUTLINED_FUNCTION_39_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v15, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FB8, &qword_21704B168);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FC0, &qword_21704B170);
  OUTLINED_FUNCTION_3_114();
  v21 = sub_216B79044(v20);
  __dst[0] = v17;
  __dst[1] = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_216B78B58();
  __dst[0] = v17;
  __dst[1] = MEMORY[0x277CE1350];
  __dst[2] = v18;
  __dst[3] = v19;
  __dst[4] = v21;
  __dst[5] = MEMORY[0x277CE1340];
  __dst[6] = OpaqueTypeConformance2;
  __dst[7] = v23;
  v24 = swift_getOpaqueTypeConformance2();
  sub_21700A444();
  memcpy(__dst, v49, 0x92uLL);
  sub_216699778(__dst, &qword_27CAC3F48);
  sub_2170093B4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4018, &qword_21704B198);
  v49[0] = v11;
  v49[1] = v12;
  v49[2] = v14;
  v49[3] = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4020, &qword_21704B1A0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4028, &qword_21704B1A8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4030, &qword_21704B1B0);
  v30 = sub_216B78C44();
  v49[0] = v27;
  v49[1] = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = sub_216B78E3C();
  v49[0] = v27;
  v49[1] = MEMORY[0x277CE1350];
  v49[2] = v28;
  v49[3] = v29;
  v49[4] = v30;
  v49[5] = MEMORY[0x277CE1340];
  v49[6] = v31;
  v49[7] = v32;
  v41 = swift_getOpaqueTypeConformance2();
  sub_21700A444();
  v33 = OUTLINED_FUNCTION_39_3();
  v34(v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4088, &qword_21704B1D8);
  v49[0] = v43;
  v49[1] = v25;
  v49[2] = v26;
  v49[3] = v41;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4090, &qword_21704B1E0);
  v38 = sub_216B78EFC();
  v49[0] = v37;
  v49[1] = v38;
  OUTLINED_FUNCTION_2_2();
  v39 = swift_getOpaqueTypeConformance2();
  sub_21700AAD4();
  (*(v46 + 8))(v42, v45);
  v49[0] = v45;
  v49[1] = v35;
  v49[2] = v36;
  v49[3] = v39;
  OUTLINED_FUNCTION_4_97();
  swift_getOpaqueTypeConformance2();
  sub_21700A8C4();
  return (*(v48 + 8))(v44, v47);
}

void *sub_216B75F54@<X0>(void *a2@<X8>)
{
  type metadata accessor for SocialProfileUpdater(0);
  sub_216B78FF0(&qword_280E3B500);
  sub_2170081B4();
  v3 = sub_216AFF318();

  v4 = sub_2166BF3C8(v3);

  if (v4)
  {
    v5 = sub_217008CF4();
    v7 = v6;
    v8 = sub_2170081B4();
    v9 = sub_217007D54();
    v10 = sub_217009CA4();
    sub_217007F24();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    LOBYTE(__src[0]) = 0;
    v19 = sub_217009C74();
    sub_217007F24();
    v30[0] = v5;
    v30[1] = v7;
    v30[2] = v9;
    v30[3] = v8;
    LOBYTE(v30[4]) = v10;
    v30[5] = v12;
    v30[6] = v14;
    v30[7] = v16;
    v30[8] = v18;
    LOBYTE(v30[9]) = 0;
    LOBYTE(v30[10]) = v19;
    v30[11] = v20;
    v30[12] = v21;
    v30[13] = v22;
    v30[14] = v23;
    LOBYTE(v30[15]) = 0;
    sub_216B79134(v30);
  }

  else
  {
    v24 = sub_2170093B4();
    v29[0] = 1;
    sub_216B76280(__src);
    memcpy(__dst, __src, 0x79uLL);
    memcpy(v28, __src, 0x79uLL);
    sub_216683A80(__dst, v30, &qword_27CAC40E8, &qword_21704B3C8);
    sub_216699778(v28, &qword_27CAC40E8);
    memcpy(&v26[7], __dst, 0x79uLL);
    v30[0] = v24;
    v30[1] = 0;
    LOBYTE(v30[2]) = v29[0];
    memcpy(&v30[2] + 1, v26, 0x80uLL);
    sub_216B7913C(v30);
  }

  memcpy(v29, v30, sizeof(v29));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3F78, &unk_21704B138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FA8, &qword_21704B158);
  sub_216B79044(&unk_27CAC3F70);
  sub_2167D2D50(&unk_27CAC3FA0);
  sub_217009554();
  return memcpy(a2, __src, 0x92uLL);
}

uint64_t sub_216B76280@<X0>(uint64_t a1@<X8>)
{
  sub_216983738(174);
  sub_217009EA4();
  v2 = sub_21700A094();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  KeyPath = swift_getKeyPath();
  v10 = sub_217009CA4();
  if (qword_27CAB5E10 != -1)
  {
    swift_once();
  }

  sub_217007F24();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v6 & 1;
  v22[96] = 0;
  __src[0] = v2;
  __src[1] = v4;
  LOBYTE(__src[2]) = v19;
  __src[3] = v8;
  __src[4] = KeyPath;
  LOBYTE(__src[5]) = 1;
  LOBYTE(__src[6]) = v10;
  __src[7] = v11;
  __src[8] = v13;
  __src[9] = v15;
  __src[10] = v17;
  LOBYTE(__src[11]) = 0;
  memcpy(&v22[7], __src, 0x59uLL);
  v21[96] = 0;
  *a1 = 0x4049000000000000;
  *(a1 + 8) = 0;
  memcpy((a1 + 9), v22, 0x60uLL);
  *(a1 + 112) = 0x4049000000000000;
  *(a1 + 120) = 0;
  v24[0] = v2;
  v24[1] = v4;
  v25 = v19;
  v26 = v8;
  v27 = KeyPath;
  v28 = 1;
  v29 = v10;
  v30 = v12;
  v31 = v14;
  v32 = v16;
  v33 = v18;
  v34 = 0;
  sub_216683A80(__src, v21, &qword_27CAC40F0, qword_21704B3D0);
  return sub_216699778(v24, &qword_27CAC40F0);
}

uint64_t sub_216B7645C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FB0, &qword_21704B160);
  MEMORY[0x28223BE20](v0);
  v2 = v5 - v1;
  sub_216B76610(v5 - v1);
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FB8, &qword_21704B168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FC0, &qword_21704B170);
  v3 = sub_216B79044(&unk_27CAC3FC8);
  v5[0] = v0;
  v5[1] = v3;
  swift_getOpaqueTypeConformance2();
  sub_216B78B58();
  sub_21700AB34();
  return sub_216699778(v2, &qword_27CAC3FB0);
}

uint64_t sub_216B76610@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v44 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4008, &qword_21704B190);
  MEMORY[0x28223BE20](v47);
  v6 = &v44 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FF8, &qword_21704B188);
  MEMORY[0x28223BE20](v48);
  v8 = &v44 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FE8, &qword_21704B180);
  MEMORY[0x28223BE20](v45);
  v10 = &v44 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FD8, &qword_21704B178);
  MEMORY[0x28223BE20](v46);
  v49 = &v44 - v11;
  v12 = *(v1 + 40);
  if (v12)
  {
    v13 = *(v1 + 32);
    v14 = v12;
  }

  else
  {
    v13 = sub_216983738(316);
    v14 = v15;
  }

  sub_21700DF14();
  v16 = sub_217009D34();
  KeyPath = swift_getKeyPath();
  __src[0] = v13;
  __src[1] = v14;
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  __src[4] = KeyPath;
  __src[5] = v16;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();

  sub_21700B3C4();
  sub_217008BB4();
  (*(v50 + 32))(v6, v4, v51);
  memcpy(&v6[*(v47 + 36)], __src, 0x70uLL);
  v18 = swift_getKeyPath();
  sub_2167C5834(v6, v8, &qword_27CAC4008, &qword_21704B190);
  v19 = &v8[*(v48 + 36)];
  *v19 = v18;
  v19[8] = 0;
  v20 = swift_getKeyPath();
  sub_2167C5834(v8, v10, &qword_27CAC3FF8, &qword_21704B188);
  v21 = &v10[*(v45 + 36)];
  *v21 = v20;
  *(v21 + 1) = 0;
  v21[16] = 1;
  LOBYTE(v20) = sub_217009C74();
  sub_217007F24();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v49;
  sub_2167C5834(v10, v49, &qword_27CAC3FE8, &qword_21704B180);
  v31 = v30 + *(v46 + 36);
  *v31 = v20;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  LOBYTE(v20) = sub_217009CA4();
  sub_217007F24();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v30;
  v41 = v52;
  sub_2167C5834(v40, v52, &qword_27CAC3FD8, &qword_21704B178);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FB0, &qword_21704B160);
  v43 = v41 + *(result + 36);
  *v43 = v20;
  *(v43 + 8) = v33;
  *(v43 + 16) = v35;
  *(v43 + 24) = v37;
  *(v43 + 32) = v39;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_216B76ADC()
{
  v0 = sub_217009334();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3FB0, &qword_21704B160);
  sub_216B79044(&unk_27CAC3FC8);
  sub_21700A704();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216B76C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4020, &qword_21704B1A0);
  MEMORY[0x28223BE20](v48);
  v4 = (v47 - v3);
  v5 = *a1;
  v6 = *(a1 + 8);
  v47[1] = type metadata accessor for SocialProfileUpdater(0);
  sub_216B78FF0(&qword_280E3B500);
  sub_2170081B4();
  v7 = sub_21700D3B4();
  v8 = MEMORY[0x277D21D10];
  v4[3] = v7;
  v4[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_216AFDE5C();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4078, &qword_21704B1D0);
  v10 = v9[11];
  v11 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v4 + v10, 1, 1, v11);
  v52 = *(a1 + 24);
  v51 = *(a1 + 32);
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = *(a1 + 48);
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  v16 = v9[12];
  *(v4 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v17 = v4 + v9[13];
  *v17 = swift_getKeyPath();
  v17[40] = 0;
  v4[5] = sub_216B79034;
  v4[6] = v12;
  v4[7] = sub_216B7903C;
  v4[8] = v14;
  sub_2167759EC(v5, v6);
  sub_216683A80(&v52, v50, &qword_27CABBAF0, &qword_217025110);
  sub_216683A80(&v51, v50, &qword_27CABAA40, &unk_217014260);

  sub_2167759EC(v5, v6);
  sub_216683A80(&v52, v50, &qword_27CABBAF0, &qword_217025110);
  sub_216683A80(&v51, v50, &qword_27CABAA40, &unk_217014260);

  sub_2170081B4();
  v18 = sub_216AFF2F0();

  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v18 & 1;
  v21 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4068, &qword_21704B1C8) + 36));
  *v21 = KeyPath;
  v21[1] = sub_2167D2420;
  v21[2] = v20;
  v22 = sub_217009CA4();
  sub_217007F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4058, &qword_21704B1C0) + 36);
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_217009C74();
  sub_217007F24();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4048, &qword_21704B1B8) + 36);
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = swift_getKeyPath();
  v43 = v48;
  v44 = v4 + *(v48 + 36);
  *v44 = v42;
  v44[8] = 0;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4028, &qword_21704B1A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4030, &qword_21704B1B0);
  v45 = sub_216B78C44();
  v50[0] = v43;
  v50[1] = v45;
  swift_getOpaqueTypeConformance2();
  sub_216B78E3C();
  sub_21700AB34();
  return sub_216699778(v4, &qword_27CAC4020);
}

double sub_216B77174@<D0>(uint64_t a2@<X8>)
{
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E28, &qword_217018BB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E30, &qword_217018BB8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E38, &qword_217018BC0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E40, &qword_217018BC8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40D8, &unk_21704B310);
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v17 = &v26 - v16;
  sub_216B7760C(v4);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v4, v8, &qword_27CAB7E28, &qword_217018BB0);
  memcpy(&v8[*(v6 + 44)], __src, 0x70uLL);
  v18 = sub_217009C84();
  sub_2167C5834(v8, v12, &qword_27CAB7E30, &qword_217018BB8);
  v19 = &v12[*(v10 + 44)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = sub_21700AC54();
  LOBYTE(v6) = sub_217009C84();
  sub_2167C5834(v12, v15, &qword_27CAB7E38, &qword_217018BC0);
  v21 = &v15[*(v13 + 36)];
  *v21 = v20;
  v21[8] = v6;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E48, &unk_217018BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E50, &qword_21704B320);
  sub_2167D92B8();
  sub_2167D9660();
  sub_2167D9718();
  sub_21700AB34();
  sub_216699778(v15, &qword_27CAB7E40);
  if (qword_27CAB5E08 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v22 = v28;
  (*(v26 + 32))(v28, v17, v27);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40E0, &qword_21704B328) + 36));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  result = v32[0];
  v23[2] = *v32;
  return result;
}

uint64_t sub_216B7760C@<X0>(uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0, &qword_217018C00);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA8, &unk_217018C08);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0, &unk_217026510);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  type metadata accessor for SocialProfileUpdater(0);
  sub_216B78FF0(&qword_280E3B500);
  sub_2170081B4();
  v11 = sub_216AFF2F0();

  if (v11)
  {
    sub_217008294();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&qword_27CAB7BC8);
    v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E88, &unk_217018BF0);
    v13 = sub_2167D95A8();
    *&v34[0] = v12;
    *(&v34[0] + 1) = v13;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v15 = sub_216983738(90);
    v17 = v16;
    v18 = sub_21700ACF4();
    KeyPath = swift_getKeyPath();
    v20 = sub_217009D54();
    v21 = swift_getKeyPath();
    *&v30 = v15;
    *(&v30 + 1) = v17;
    *&v31 = 0;
    *(&v31 + 1) = MEMORY[0x277D84F90];
    *&v32 = KeyPath;
    *(&v32 + 1) = v18;
    *&v33 = v21;
    *(&v33 + 1) = v20;
    sub_217009DE4();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88, &unk_217018BF0);
    v23 = sub_2167D95A8();
    sub_21700A304();
    v34[0] = v30;
    v34[1] = v31;
    v34[2] = v32;
    v34[3] = v33;
    sub_216699778(v34, &qword_27CAB7E88);
    v24 = v27;
    v25 = v29;
    (*(v27 + 16))(v6, v3, v29);
    swift_storeEnumTagMultiPayload();
    sub_2167D2D50(&qword_27CAB7BC8);
    *&v30 = v22;
    *(&v30 + 1) = v23;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v24 + 8))(v3, v25);
  }
}

uint64_t sub_216B77A88(uint64_t *a1)
{
  type metadata accessor for SocialProfileUpdater(0);
  sub_216B78FF0(&qword_280E3B500);
  sub_2170081B4();
  sub_216AFF304(1);
}

uint64_t sub_216B77B2C()
{
  v0 = sub_217009334();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4020, &qword_21704B1A0);
  sub_216B78C44();
  sub_21700A704();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_216B77C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v9 = OUTLINED_FUNCTION_100(a1, a2);
  v11 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v9, v10) + 36);
  sub_21700B2D4();
  v12 = sub_217009C84();
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20, &qword_2170180F0) + 36)) = v12;
  return sub_216683A80(a1, a5, a3, a4);
}

uint64_t sub_216B77CDC@<X0>(uint64_t a2@<X8>)
{
  v28 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40B0, &qword_21704B1F0);
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v23 - v3;
  v4 = sub_217009684();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40A0, &qword_21704B1E8);
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4090, &qword_21704B1E0);
  MEMORY[0x28223BE20](v27);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  type metadata accessor for SocialProfileUpdater(0);
  sub_216B78FF0(&qword_280E3B500);
  sub_2170081B4();
  v13 = sub_216AFF318();

  v14 = sub_2166BF3C8(v13);

  if (v14)
  {
    sub_217009634();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40B8, &qword_21704B1F8);
    sub_2167D2D50(&unk_27CAC40C0);
    sub_2170081F4();
    v15 = sub_2167D2D50(&unk_27CAC40A8);
    v16 = v25;
    MEMORY[0x21CE9A570](v7, v5, v15);
    v17 = v26;
    (*(v26 + 16))(v9, v16, v2);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v2);
    v29 = v5;
    v30 = v15;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CE9A5A0](v9, v2, OpaqueTypeConformance2);
    sub_216699778(v9, &qword_27CAC4090);
    (*(v17 + 8))(v16, v2);
    (*(v24 + 8))(v7, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v2);
    v19 = sub_2167D2D50(&unk_27CAC40A8);
    v29 = v5;
    v30 = v19;
    v20 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CE9A5A0](v9, v2, v20);
    sub_216699778(v9, &qword_27CAC4090);
  }

  v21 = sub_216B78EFC();
  MEMORY[0x21CE9A570](v12, v27, v21);
  return sub_216699778(v12, &qword_27CAC4090);
}

uint64_t sub_216B781BC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for HideAllPlaylistsAction(0);
  a1[4] = sub_216B78FF0(qword_280E39410);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21700D234();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40B8, &qword_21704B1F8);
  v3 = v2[11];
  v4 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v5 = v2[12];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v2[13];
  result = swift_getKeyPath();
  *v6 = result;
  v6[40] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = sub_216B782DC;
  a1[6] = 0;
  return result;
}

uint64_t sub_216B782DC()
{
  sub_216983738(139);
  sub_21700AC54();
  swift_getKeyPath();
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8, &unk_217018240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC40C8, &unk_21704B2A0);
  sub_2167D2750();
  sub_216B79044(&unk_27CAC40D0);
  sub_21700AB44();
}

uint64_t sub_216B78428@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = sub_217009C84();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 1;
  sub_2167770D0(v3, v4, v5, v6);
}

uint64_t sub_216B78514(uint64_t a1)
{
  result = sub_21700B304();
  v2 = 50.0;
  if (result)
  {
    v2 = 48.0;
  }

  qword_27CAC3F20 = *&v2;
  return result;
}

double sub_216B7854C()
{
  if (qword_27CAB5E08 != -1)
  {
    swift_once();
  }

  result = *&qword_27CAC3F20 + 16.0;
  *&qword_27CAC3F28 = *&qword_27CAC3F20 + 16.0;
  return result;
}

uint64_t sub_216B785AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B78610(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_216B78650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_216B786D0()
{
  result = qword_27CAC3F60;
  if (!qword_27CAC3F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F68, &qword_21704B130);
    sub_216B79044(&unk_27CAC3F70);
    sub_2167D2D50(&unk_27CAC3FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3F60);
  }

  return result;
}

unint64_t sub_216B787E4()
{
  result = qword_27CAC3F88;
  if (!qword_27CAC3F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3F90, &qword_21704B148);
    sub_216B7889C();
    sub_2167D2D50(&qword_27CAB7C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3F88);
  }

  return result;
}

unint64_t sub_216B7889C()
{
  result = qword_27CAC3F98;
  if (!qword_27CAC3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3F98);
  }

  return result;
}

unint64_t sub_216B78920()
{
  result = qword_27CAC3FE0;
  if (!qword_27CAC3FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FE8, &qword_21704B180);
    sub_216B789D8();
    sub_2167D2D50(&qword_280E2A6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3FE0);
  }

  return result;
}

unint64_t sub_216B789D8()
{
  result = qword_27CAC3FF0;
  if (!qword_27CAC3FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FF8, &qword_21704B188);
    sub_216B78A90();
    sub_2167D2D50(&qword_280E2A730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC3FF0);
  }

  return result;
}

unint64_t sub_216B78A90()
{
  result = qword_27CAC4000;
  if (!qword_27CAC4000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4008, &qword_21704B190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7660, &qword_2170189A0);
    sub_2167C4CBC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4000);
  }

  return result;
}

unint64_t sub_216B78B58()
{
  result = qword_27CAC4010;
  if (!qword_27CAC4010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC3FC0, &qword_21704B170);
    sub_216B79044(&unk_27CAC3FC8);
    sub_2167D2D50(&qword_27CAB7B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4010);
  }

  return result;
}

unint64_t sub_216B78C44()
{
  result = qword_27CAC4038;
  if (!qword_27CAC4038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4020, &qword_21704B1A0);
    sub_216B79044(&unk_27CAC4040);
    sub_2167D2D50(&qword_280E2A700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4038);
  }

  return result;
}

unint64_t sub_216B78D58()
{
  result = qword_27CAC4060;
  if (!qword_27CAC4060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4068, &qword_21704B1C8);
    sub_2167D2D50(&unk_27CAC4070);
    sub_2167D2D50(&qword_280E2A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4060);
  }

  return result;
}

unint64_t sub_216B78E3C()
{
  result = qword_27CAC4080;
  if (!qword_27CAC4080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4030, &qword_21704B1B0);
    sub_216B78C44();
    sub_2167D2D50(&qword_27CAB7B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4080);
  }

  return result;
}

unint64_t sub_216B78EFC()
{
  result = qword_27CAC4098;
  if (!qword_27CAC4098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4090, &qword_21704B1E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC40A0, &qword_21704B1E8);
    sub_2167D2D50(&unk_27CAC40A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4098);
  }

  return result;
}

unint64_t sub_216B78FF0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_216B79044(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_216B790C0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_216B791B0(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v84 = a1;
  v98 = sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v97 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v96 = v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v92 = v5;
  MEMORY[0x28223BE20](v6);
  v91 = &v82 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v95 = v8;
  MEMORY[0x28223BE20](v9);
  v89 = &v82 - v10;
  v11 = OUTLINED_FUNCTION_4_1();
  v88 = type metadata accessor for PresentAlertAction(v11);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v87 = v13;
  v14 = OUTLINED_FUNCTION_4_1();
  v15 = _s6ActionVMa(v14);
  v16 = v15 - 8;
  v85 = *(v15 - 8);
  v86 = v85;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v83 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v82 - v20;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v25 = sub_216983738(140);
  v27 = v26;
  v28 = type metadata accessor for HideFromProfileAction(0);
  v105[3] = v28;
  v105[4] = sub_216B7A06C(&qword_27CAC40F8, type metadata accessor for HideFromProfileAction, &unk_21704772C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
  sub_21700D234();
  v30 = type metadata accessor for PromptHideFromProfileAction(0);
  sub_2167B7D58(v84 + *(v30 + 20), boxed_opaque_existential_1 + *(v28 + 20));
  sub_217006214();
  v31 = sub_2170061F4();
  v33 = v32;
  v34 = *(v23 + 8);
  v35 = OUTLINED_FUNCTION_46_1();
  v34(v35);
  v104[0] = v31;
  v104[1] = v33;
  v104[2] = v25;
  v104[3] = v27;
  sub_2167ADC3C(v104, v21);
  v36 = sub_217007F04();
  v82 = v21;
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  sub_217006214();
  v40 = sub_2170061F4();
  v42 = v41;
  v43 = OUTLINED_FUNCTION_46_1();
  v34(v43);
  v44 = &v21[*(v16 + 32)];
  *v44 = v40;
  v44[1] = v42;
  v45 = sub_216983738(43);
  v47 = v46;
  v101 = 0u;
  v102 = 0u;
  v103 = 0;
  sub_217006214();
  v48 = sub_2170061F4();
  v50 = v49;
  v51 = OUTLINED_FUNCTION_46_1();
  v34(v51);
  v100[0] = v48;
  v100[1] = v50;
  v100[2] = v45;
  v100[3] = v47;
  v52 = v83;
  sub_2167ADC3C(v100, v83);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v36);
  sub_217006214();
  v56 = sub_2170061F4();
  v58 = v57;
  v59 = OUTLINED_FUNCTION_46_1();
  v34(v59);
  v60 = (v52 + *(v16 + 32));
  *v60 = v56;
  v60[1] = v58;
  v61 = sub_216983738(141);
  v63 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
  v64 = *(v85 + 72);
  v65 = (*(v86 + 80) + 32) & ~*(v86 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_217013D90;
  v67 = v66 + v65;
  v68 = v82;
  sub_216B7A0B4(v82, v67, _s6ActionVMa);
  sub_216B7A0B4(v52, v67 + v64, _s6ActionVMa);
  sub_216933384(v61, v63, v66, 0, 0, v106);
  v69 = v87;
  sub_21700D234();
  v70 = v88;
  v71 = v69 + *(v88 + 20);
  v72 = v106[1];
  *v71 = v106[0];
  *(v71 + 16) = v72;
  *(v71 + 32) = v107;
  type metadata accessor for ObjectGraph(0);
  v73 = v89;
  v74 = v90;
  sub_21700E094();
  v99[3] = v70;
  v99[4] = sub_216B7A06C(qword_280E3EB18, type metadata accessor for PresentAlertAction, &unk_21703EA34);
  v75 = __swift_allocate_boxed_opaque_existential_1(v99);
  sub_216B7A0B4(v69, v75, type metadata accessor for PresentAlertAction);
  v76 = v92;
  v77 = v91;
  v78 = v94;
  (*(v92 + 104))(v91, *MEMORY[0x277D21E18], v94);
  v79 = v73;
  sub_21700D5E4();

  (*(v76 + 8))(v77, v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  (*(v97 + 104))(v96, *MEMORY[0x277D21CA8], v98);
  v80 = sub_21700E1F4();
  (*(v95 + 8))(v79, v74);
  sub_216B7A130(v69, type metadata accessor for PresentAlertAction);
  sub_216B7A130(v52, _s6ActionVMa);
  sub_2167ADC98(v100);
  sub_216B7A130(v68, _s6ActionVMa);
  sub_2167ADC98(v104);
  return v80;
}

uint64_t sub_216B79998(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v63 = a1;
  v65 = sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v59 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v58 = v4;
  v5 = OUTLINED_FUNCTION_4_1();
  v6 = type metadata accessor for HideFromProfileIntent(v5);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_6_0();
  v61 = v7;
  v8 = OUTLINED_FUNCTION_4_1();
  v9 = type metadata accessor for ContentDescriptor(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v60 = v11;
  OUTLINED_FUNCTION_4_1();
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v56 = v13;
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - v18;
  v20 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v55 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v30 - 8);
  OUTLINED_FUNCTION_77();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v55 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v55 - v38;
  OUTLINED_FUNCTION_38_2();
  v64 = v9;
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v9);
  v43 = type metadata accessor for HideFromProfileAction(0);
  sub_2167B7D58(v63 + *(v43 + 20), v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74C0, &qword_217017120);
  if (swift_dynamicCast())
  {
    (*(v22 + 32))(v26, v29, v20);
    sub_216BC88B8(v36);
    (*(v22 + 8))(v26, v20);
LABEL_5:
    sub_2168F3EB8(v39);
    sub_216816BC4(v36, v39);
    v46 = v64;
    goto LABEL_7;
  }

  v44 = v57;
  if (swift_dynamicCast())
  {
    v45 = v56;
    (*(v56 + 32))(v16, v19, v44);
    sub_216BCC2D0(v36);
    (*(v45 + 8))(v16, v44);
    goto LABEL_5;
  }

  sub_2168F3EB8(v39);
  OUTLINED_FUNCTION_38_2();
  v46 = v64;
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v64);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  sub_216919014(v39, v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, v46) == 1)
  {
    sub_2168F3EB8(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
    (*(v59 + 104))(v58, *MEMORY[0x277D21CA0], v65);
    v50 = sub_21700E1F4();
    sub_2168F3EB8(v39);
  }

  else
  {
    v51 = v60;
    sub_2168ED900(v33, v60);
    v52 = v61;
    sub_216B7A0B4(v51, v61, type metadata accessor for ContentDescriptor);
    type metadata accessor for JSIntentDispatcher();
    type metadata accessor for ObjectGraph(0);
    v53 = v62;
    sub_21700E094();
    sub_216ECE1E4(v52, v53);
    v66[3] = sub_21700D7C4();
    v66[4] = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v66);

    sub_21700D7B4();
    v50 = sub_21700E1B4();

    sub_216B7A130(v52, type metadata accessor for HideFromProfileIntent);
    sub_216B7A130(v51, type metadata accessor for ContentDescriptor);
    sub_2168F3EB8(v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
  }

  return v50;
}

uint64_t sub_216B79F48@<X0>(_BYTE *a1@<X0>, uint64_t a3@<X8>)
{
  if (*a1 == 1)
  {
    type metadata accessor for UserSocialProfileCoordinator(0);
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    sub_21700CC34();
  }

  v4 = *MEMORY[0x277D21CA8];
  v5 = sub_21700D2A4();
  return (*(*(v5 - 8) + 104))(a3, v4, v5);
}

uint64_t sub_216B7A06C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216B7A0B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B7A130(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B7A1A4()
{
  result = sub_21700E4D4();
  qword_27CAC4100 = result;
  return result;
}

uint64_t sub_216B7A200()
{
  result = sub_21700E4D4();
  qword_27CAC4108 = result;
  return result;
}

BOOL static DownloadState.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 9) != 1)
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      if (a1[1])
      {
        if (v4)
        {
          return 1;
        }
      }

      else if ((v4 & 1) == 0 && v2 == v3)
      {
        return 1;
      }
    }

    return 0;
  }

  switch(v2)
  {
    case 1:
      if (!*(a2 + 9))
      {
        return 0;
      }

      v3 ^= 1uLL;
      break;
    case 2:
      if (!*(a2 + 9))
      {
        return 0;
      }

      v3 ^= 2uLL;
      break;
    case 3:
      if (!*(a2 + 9))
      {
        return 0;
      }

      v3 ^= 3uLL;
      break;
    case 4:
      return *(a2 + 9) && v3 > 3;
    default:
      if (!*(a2 + 9))
      {
        return 0;
      }

      break;
  }

  return !(v3 | v4);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DownloadState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DownloadState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 10) = v3;
  return result;
}

uint64_t sub_216B7A37C(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216B7A398(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 9) = v2;
  return result;
}

uint64_t dispatch thunk of DownloadManager.downloadItems.getter()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v8 = (*(v0 + 8) + **(v0 + 8));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_5(v4);
  *v5 = v6;
  v5[1] = sub_216B7A9E0;

  return v8(v3, v1);
}

uint64_t dispatch thunk of DownloadManager.downloadItems(for:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_151(v0, v1, v2);
  OUTLINED_FUNCTION_2_120();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_5(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_176(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DownloadManager.download(identifiers:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_151(v0, v1, v2);
  OUTLINED_FUNCTION_2_120();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_5(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_176(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DownloadManager.removeDownloads(identifiers:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_151(v0, v1, v2);
  OUTLINED_FUNCTION_2_120();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_5(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_176(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DownloadManager.pauseDownloads(identifiers:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_151(v0, v1, v2);
  OUTLINED_FUNCTION_2_120();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_5(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_176(v4);

  return v7(v6);
}

uint64_t dispatch thunk of DownloadManager.resumeDownloads(identifiers:)()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_1_151(v0, v1, v2);
  OUTLINED_FUNCTION_2_120();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_5(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_176(v4);

  return v7(v6);
}

void sub_216B7A9F8(uint64_t a1)
{
  sub_21700D574();
  if (v1 <= 0x3F)
  {
    sub_2166B41F4(319);
    if (v2 <= 0x3F)
    {
      sub_217006714();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_216B7AB58()
{
  OUTLINED_FUNCTION_0_1();
  KeyPath = swift_getKeyPath();
  sub_216B7BBC8(KeyPath);

  return *(v0 + 16);
}

uint64_t sub_216B7ABC8()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7AB58();
  *v0 = result;
  return result;
}

uint64_t sub_216B7AC18(char a1)
{
  v17 = *(v1 + 16);
  v16 = a1;
  OUTLINED_FUNCTION_16_0();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_16_0();
  v6 = *(v5 + 88);
  v8 = _s14RequestManagerC5StateOMa(0, v4, v6, v7);
  WitnessTable = swift_getWitnessTable();
  result = sub_21669946C(&v17, &v16, v8, WitnessTable);
  if (result)
  {
    MEMORY[0x28223BE20](result);
    OUTLINED_FUNCTION_2_121();
    *(v11 - 16) = v4;
    *(v11 - 8) = v6;
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_87();
    MEMORY[0x28223BE20](v12);
    OUTLINED_FUNCTION_1_152();
    *(v13 - 16) = v1;
    *(v13 - 8) = a1;
    OUTLINED_FUNCTION_6_79(v14, v15, MEMORY[0x277D84F78]);
  }

  else
  {
    *(v1 + 16) = a1;
  }

  return result;
}

double sub_216B7AD48()
{
  OUTLINED_FUNCTION_0_1();
  KeyPath = swift_getKeyPath();
  sub_216B7BBC8(KeyPath);

  swift_beginAccess();
  sub_21700DF14();
  return result;
}

void sub_216B7ADD0()
{
  OUTLINED_FUNCTION_0_0();
  sub_216B7AD48();
  *v0 = v1;
}

uint64_t sub_216B7AE24(uint64_t a1)
{
  OUTLINED_FUNCTION_0_1();
  v4 = v3;
  swift_beginAccess();
  v5 = *(v1 + 24);
  v16 = a1;
  v17 = v5;
  sub_21700DF14();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4120, &qword_21704B908);
  v7 = sub_2166D9530(&qword_27CAC4128, &qword_27CAC4120, &qword_21704B908, MEMORY[0x277D83B60]);
  v8 = sub_21669946C(&v17, &v16, v6, v7);

  if (v8)
  {
    MEMORY[0x28223BE20](v9);
    OUTLINED_FUNCTION_2_121();
    *(v10 - 16) = *(v4 + 80);
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_87();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_1_152();
    *(v12 - 16) = v1;
    *(v12 - 8) = a1;
    OUTLINED_FUNCTION_6_79(v13, v14, MEMORY[0x277D84F78]);
  }

  else
  {
    *(v1 + 24) = a1;
  }
}

uint64_t sub_216B7AFA8()
{
  OUTLINED_FUNCTION_0_1();
  KeyPath = swift_getKeyPath();
  sub_216B7BBC8(KeyPath);
}

uint64_t sub_216B7B01C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7AFA8();
  *v0 = result;
  return result;
}

uint64_t sub_216B7B070(uint64_t a1)
{
  OUTLINED_FUNCTION_12_3();
  v3 = *(v1 + 32);
  v16 = v4;
  v17 = v3;
  v6 = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118, &qword_217019040);
  v8 = sub_216B7C0E4();
  LOBYTE(v7) = sub_21669946C(&v17, &v16, v7, v8);

  if (v7)
  {
    MEMORY[0x28223BE20](v9);
    OUTLINED_FUNCTION_2_121();
    *(v10 - 16) = *(v6 + 80);
    swift_getKeyPath();
    OUTLINED_FUNCTION_5_87();
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_1_152();
    *(v12 - 16) = v1;
    *(v12 - 8) = a1;
    OUTLINED_FUNCTION_6_79(v13, v14, MEMORY[0x277D84F78]);
  }

  else
  {
    *(v1 + 32) = a1;
  }
}

double sub_216B7B1AC()
{
  OUTLINED_FUNCTION_0_1();
  KeyPath = swift_getKeyPath();
  sub_216B7BBC8(KeyPath);

  sub_21700DF14();
  return result;
}

void sub_216B7B228()
{
  OUTLINED_FUNCTION_0_0();
  sub_216B7B1AC();
  *v0 = v1;
}

uint64_t sub_216B7B27C()
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_80(KeyPath, MEMORY[0x277D84F78], v2);
}

uint64_t sub_216B7B324@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  KeyPath = swift_getKeyPath();
  sub_216B7BBC8(KeyPath);

  v4 = qword_280E41B70;
  swift_beginAccess();
  return sub_216861304(v1 + v4, a1);
}

uint64_t sub_216B7B3E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_216861304(a1, &v6 - v3);
  return sub_216B7B47C(v4);
}

uint64_t sub_216B7B47C(uint64_t a1)
{
  OUTLINED_FUNCTION_12_3();
  swift_beginAccess();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_87();
  OUTLINED_FUNCTION_7_80(v2, MEMORY[0x277D84F78], v4);

  return sub_2168116E4(a1);
}

uint64_t sub_216B7B548(uint64_t a1, uint64_t a2)
{
  v4 = qword_280E41B70;
  swift_beginAccess();
  sub_216861520(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_216B7B5B4()
{
  OUTLINED_FUNCTION_0_1();
  KeyPath = swift_getKeyPath();
  sub_216B7BBC8(KeyPath);

  return *(v0 + qword_280E41B60);
}

uint64_t sub_216B7B62C()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7B5B4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_216B7B67C()
{
  OUTLINED_FUNCTION_12_3();
  v2 = v1;
  v3 = qword_280E41B60;
  v13 = *(v0 + qword_280E41B60);
  v5 = v4 & 1;
  v12 = v4;
  result = sub_21669946C(&v13, &v12, MEMORY[0x277D839B0], MEMORY[0x277D839C8]);
  if (result)
  {
    MEMORY[0x28223BE20](result);
    OUTLINED_FUNCTION_2_121();
    *(v7 - 16) = *(v2 + 80);
    swift_getKeyPath();
    OUTLINED_FUNCTION_10_67();
    MEMORY[0x28223BE20](v8);
    OUTLINED_FUNCTION_1_152();
    *(v9 - 16) = v0;
    *(v9 - 8) = v5;
    OUTLINED_FUNCTION_6_79(v10, v11, MEMORY[0x277D84F78]);
  }

  else
  {
    *(v0 + v3) = v5;
  }

  return result;
}

uint64_t sub_216B7B784()
{
  OUTLINED_FUNCTION_0_1();
  KeyPath = swift_getKeyPath();
  sub_216B7BBC8(KeyPath);

  return *(v0 + qword_280E41AD8);
}

uint64_t sub_216B7B7FC()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_216B7B784();
  *v0 = result;
  return result;
}

uint64_t sub_216B7B848(char a1)
{
  v2 = qword_280E41AD8;
  v18 = *(v1 + qword_280E41AD8);
  v3 = a1 & 1;
  v17 = a1 & 1;
  OUTLINED_FUNCTION_16_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_16_0();
  v7 = *(v6 + 88);
  v9 = _s14RequestManagerC19PageAppearanceStateOMa(0, v5, v7, v8);
  WitnessTable = swift_getWitnessTable();
  result = sub_21669946C(&v18, &v17, v9, WitnessTable);
  if (result)
  {
    MEMORY[0x28223BE20](result);
    OUTLINED_FUNCTION_2_121();
    *(v12 - 16) = v5;
    *(v12 - 8) = v7;
    swift_getKeyPath();
    OUTLINED_FUNCTION_10_67();
    MEMORY[0x28223BE20](v13);
    OUTLINED_FUNCTION_1_152();
    *(v14 - 16) = v1;
    *(v14 - 8) = v3;
    OUTLINED_FUNCTION_6_79(v15, v16, MEMORY[0x277D84F78]);
  }

  else
  {
    *(v1 + v2) = v3;
  }

  return result;
}

uint64_t sub_216B7B97C()
{
  if (sub_216B7BA2C())
  {
  }

  else
  {

    return sub_216B7AC18(0);
  }
}

uint64_t sub_216B7B9D0(uint64_t a1)
{
  *(v1 + qword_280E41A48) = a1;

  sub_216B7B97C();
}

uint64_t sub_216B7BA2C()
{
  OUTLINED_FUNCTION_0_1();
  KeyPath = swift_getKeyPath();
  sub_216B7BBC8(KeyPath);

  return sub_216B7B9C0();
}

uint64_t sub_216B7BA9C()
{
  sub_216B7B9C0();
  swift_getAssociatedTypeWitness();
  sub_21700F164();

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_80(KeyPath, MEMORY[0x277D84F78], v2);
}

uint64_t sub_216B7BD38()
{

  v1 = qword_280E41B68;
  sub_21700D574();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  sub_2168116E4(v0 + qword_280E41B70);

  v3 = qword_280E41AD0;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_216B7BE40()
{
  sub_216B7BD38();
  OUTLINED_FUNCTION_12_3();

  return MEMORY[0x2821FE8D8](v0);
}

_BYTE *sub_216B7BEAC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_216B7BF90(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216B7C0E4()
{
  result = qword_27CAC4110;
  if (!qword_27CAC4110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8118, &qword_217019040);
    sub_2166D9530(&qword_27CAC4118, &qword_27CAC0990, "Ѓ\n", MEMORY[0x277D85800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4110);
  }

  return result;
}

unint64_t sub_216B7C198()
{
  v1 = v0;
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D2A400])
  {
    v8 = 0x6D75626C61;
    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D2A418])
  {
    v8 = 0x747369747261;
    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D2A438])
  {
    v8 = 0x7265736F706D6F63;
    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D2A3C8])
  {
    v8 = 0x7241746964657263;
    goto LABEL_20;
  }

  v8 = 0x726F7461727563;
  if (v7 != *MEMORY[0x277D2A428] && v7 != *MEMORY[0x277D2A388])
  {
    if (v7 == *MEMORY[0x277D2A408])
    {
      v10 = 1919837543;
LABEL_19:
      v8 = v10 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      goto LABEL_20;
    }

    if (v7 == *MEMORY[0x277D2A3B0])
    {
      v10 = 1769369453;
      goto LABEL_19;
    }

    if (v7 == *MEMORY[0x277D2A3B8])
    {
      v8 = 0x646956636973756DLL;
    }

    else if (v7 == *MEMORY[0x277D2A440] || v7 == *MEMORY[0x277D2A3E8])
    {
      v8 = 0x7473696C79616C70;
    }

    else if (v7 != *MEMORY[0x277D2A450])
    {
      if (v7 == *MEMORY[0x277D2A3C0])
      {
        v8 = 0x614C64726F636572;
      }

      else if (v7 == *MEMORY[0x277D2A3D0])
      {
        v8 = 0x65506C6169636F73;
      }

      else if (v7 == *MEMORY[0x277D2A3F8])
      {
        v8 = 1735290739;
      }

      else if (v7 == *MEMORY[0x277D2A430])
      {
        v8 = 0x6174536F69646172;
      }

      else if (v7 == *MEMORY[0x277D2A458])
      {
        v8 = 0x646F736970457674;
      }

      else if (v7 == *MEMORY[0x277D2A448])
      {
        v8 = 0x6E6F736165537674;
      }

      else if (v7 == *MEMORY[0x277D2A420])
      {
        v8 = 0x776F68537674;
      }

      else
      {
        v8 = 0x646564616F6C7075;
        if (v7 != *MEMORY[0x277D2A3D8] && v7 != *MEMORY[0x277D2A3E0])
        {
          v8 = 0x6E776F6E6B6E75;
        }
      }
    }
  }

LABEL_20:
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t sub_216B7C624(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI28GoToArtistMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

void sub_216B7C728()
{
  OUTLINED_FUNCTION_49();
  v5 = OUTLINED_FUNCTION_5_88();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_122();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_55_1();
  sub_21700C1E4();
  OUTLINED_FUNCTION_34();
  (*(v9 + 16))(v4, v1);
  swift_storeEnumTagMultiPayload();
  sub_21700C164();
  OUTLINED_FUNCTION_7_81();
  v10 = OUTLINED_FUNCTION_4_98();
  sub_216B7C8A0(v10, v11, v5, v3, v2, v12, 0xE500000000000000, v13, v14);

  OUTLINED_FUNCTION_1_153();
  sub_21678C1C4();
  OUTLINED_FUNCTION_10_68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v0;
  sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B7C8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>)
{
  v90 = a7;
  v89 = a6;
  v110 = a4;
  v103 = a3;
  v101 = a2;
  v115 = a1;
  v113 = sub_2170075A4();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = v12;
  v111 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for GoToArtistAction(0);
  v106 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v108 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v13;
  MEMORY[0x28223BE20](v14);
  v104 = &v83 - v15;
  v102 = sub_21700CFB4();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_217005EF4();
  v85 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v84 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21700D704();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = &v83 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v21 - 8);
  v87 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v116 = &v83 - v24;
  v94 = sub_21700D284();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21700C1E4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for GoToArtistContext(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *a8;
  v36 = type metadata accessor for MenuConfiguration(0);
  v37 = *(v36 + 20);
  v88 = a5;
  sub_216B7DED0(a5 + v37, v35, type metadata accessor for MenuContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_216B7DCF0(v35, type metadata accessor for MenuContext);
  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_5;
  }

  v39 = a9;
  sub_216B7DED0(v115, v32, type metadata accessor for GoToArtistContext);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v27 + 32))(v29, v32, v26);
    v40 = sub_21700C124();
    (*(v27 + 8))(v29, v26);
    if (v40 != 2 && (v40 & 1) != 0)
    {
LABEL_5:
      v41 = type metadata accessor for MenuAction(0);
      return __swift_storeEnumTagSinglePayload(a9, 1, 1, v41);
    }
  }

  else
  {
    sub_216B7DCF0(v32, type metadata accessor for GoToArtistContext);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v44 = (v88 + *(v36 + 36));
  v45 = v44[1];
  v46 = MEMORY[0x277D837D0];
  *(inited + 48) = *v44;
  *(inited + 56) = v45;
  *(inited + 72) = v46;
  *(inited + 80) = 1684957547;
  v47 = v89;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v47;
  *(inited + 104) = v90;
  *(inited + 120) = v46;
  *(inited + 128) = 0x657461676976616ELL;
  *(inited + 168) = v46;
  *(inited + 136) = 0xEA00000000006F54;
  *(inited + 144) = 0x747369747261;
  *(inited + 152) = 0xE600000000000000;
  sub_21700DF14();
  sub_21700DF14();
  v48 = sub_21700E384();
  v49 = v91;
  __swift_storeEnumTagSinglePayload(v116, 1, 1, v91);
  v50 = v96;
  sub_21700D6F4();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v119 = v48;
  sub_2166EF9C4(&v119, &v118);
  v51 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v117 = v51;
  sub_2166EF9D4();
  v52 = v117;
  v120 = v46;
  v53 = 0xE800000000000000;
  *&v119 = 0x657461676976616ELL;
  *(&v119 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v119, &v118);
  swift_isUniquelyReferenced_nonNull_native();
  v117 = v52;
  sub_2166EF9D4();
  v54 = v117;
  v55 = 0x6472616F6279656BLL;
  switch(v86)
  {
    case 1:
      v53 = 0xE500000000000000;
      v55 = 0x79726F7473;
      break;
    case 2:
      v53 = 0xE400000000000000;
      v55 = 1701998445;
      break;
    case 3:
      v53 = 0xE500000000000000;
      v55 = 0x636972796CLL;
      break;
    case 4:
      v55 = 0xD000000000000010;
      v53 = 0x80000002170801D0;
      break;
    case 5:
      v53 = 0x80000002170801F0;
      v55 = 0xD000000000000012;
      break;
    case 6:
      v53 = 0xE900000000000075;
      v55 = 0x6E654D6570697773;
      break;
    case 7:
      v53 = 0x8000000217080210;
      v55 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v120 = v46;
  *&v119 = v55;
  *(&v119 + 1) = v53;
  sub_2166EF9C4(&v119, &v118);
  swift_isUniquelyReferenced_nonNull_native();
  v117 = v54;
  sub_2166EF9D4();
  v56 = v117;
  v57 = v87;
  sub_2167DE934(v116, v87);
  if (__swift_getEnumTagSinglePayload(v57, 1, v49) == 1)
  {
    sub_216697664(v57, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v58 = v85;
    v59 = v84;
    (*(v85 + 32))(v84, v57, v49);
    v60 = sub_217005DE4();
    v120 = v46;
    *&v119 = v60;
    *(&v119 + 1) = v61;
    sub_2166EF9C4(&v119, &v118);
    swift_isUniquelyReferenced_nonNull_native();
    v117 = v56;
    sub_2166EF9D4();
    v56 = v117;
    (*(v58 + 8))(v59, v49);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v62 = sub_21700CF84();
  v63 = __swift_project_value_buffer(v62, qword_280E73DB0);
  v64 = v99;
  MEMORY[0x21CE9DD70](v101, v103, 0x6E6F74747562, 0xE600000000000000, v56, v63);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v65 = v100;
  v66 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_217013DA0;
  v68 = v67 + v66;
  v69 = v102;
  (*(v65 + 16))(v68, v64, v102);
  v70 = v97;
  v71 = v98;
  (*(v97 + 16))(v95, v50, v98);
  v72 = v92;
  sub_21700D244();
  (*(v65 + 8))(v64, v69);
  (*(v70 + 8))(v50, v71);
  sub_216697664(v116, &qword_27CABA820, &unk_217018CE0);
  v73 = v104;
  sub_216B7DED0(v115, v104, type metadata accessor for GoToArtistContext);
  (*(v93 + 32))(v73 + *(v105 + 20), v72, v94);
  type metadata accessor for MenuActionType(0);
  swift_storeEnumTagMultiPayload();
  v74 = v108;
  sub_216B7DD48(v73, v108);
  v75 = v112;
  v76 = v111;
  v77 = v113;
  (*(v112 + 16))(v111, v110, v113);
  v78 = (*(v106 + 80) + 24) & ~*(v106 + 80);
  v79 = (v107 + *(v75 + 80) + v78) & ~*(v75 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v114;
  sub_216B7DD48(v74, v80 + v78);
  (*(v75 + 32))(v80 + v79, v76, v77);
  v81 = type metadata accessor for MenuAction(0);
  v82 = (v39 + *(v81 + 20));
  *v82 = sub_216B7DDAC;
  v82[1] = v80;
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v81);
}

void sub_216B7D720()
{
  OUTLINED_FUNCTION_49();
  v5 = OUTLINED_FUNCTION_5_88();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_122();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_55_1();
  sub_21700BA44();
  OUTLINED_FUNCTION_34();
  (*(v9 + 16))(v4, v1);
  swift_storeEnumTagMultiPayload();
  sub_21700B9F4();
  OUTLINED_FUNCTION_7_81();
  v10 = OUTLINED_FUNCTION_4_98();
  sub_216B7C8A0(v10, v11, v5, v3, v2, v12, 0xEA00000000006F65, v13, v14);

  OUTLINED_FUNCTION_1_153();
  sub_21678C1C4();
  OUTLINED_FUNCTION_10_68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v0;
  sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

void sub_216B7D8A0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_5_88();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_122();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  OUTLINED_FUNCTION_36(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_55_1();
  type metadata accessor for MenuContext(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(type metadata accessor for MenuConfiguration(0) + 20);
  swift_storeEnumTagMultiPayload();
  v13 = sub_216B88F54(v1 + v12, v11);
  sub_216B7DCF0(v11, type metadata accessor for MenuContext);
  if (v13)
  {
    v14 = 4;
  }

  else
  {
    v14 = 7;
  }

  sub_21700C084();
  OUTLINED_FUNCTION_34();
  (*(v15 + 16))(v3, v0);
  swift_storeEnumTagMultiPayload();
  sub_21700BFF4();
  v17 = v16;
  v24[47] = v14;
  v18 = OUTLINED_FUNCTION_4_98();
  sub_216B7C8A0(v18, v19, v17, v2, v1, 1735290739, 0xE400000000000000, v20, v21);

  OUTLINED_FUNCTION_1_153();
  v22 = sub_21678C1C4();
  sub_216697664(v4, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v22;
  sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216B7DAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for GoToArtistAction(0);
  v6[4] = sub_216B7DE78();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_216B7DED0(a2, boxed_opaque_existential_1, type metadata accessor for GoToArtistAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_216B7DB88()
{

  v1 = OBJC_IVAR____TtC7MusicUI28GoToArtistMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for GoToArtistMenuActionProvider(uint64_t a1)
{
  result = qword_280E323B8;
  if (!qword_280E323B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216B7DCF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216B7DD48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToArtistAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B7DDAC()
{
  v1 = *(type metadata accessor for GoToArtistAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v4);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_216B7DAC8(v6, v0 + v2, v7);
}

unint64_t sub_216B7DE78()
{
  result = qword_27CAC4130;
  if (!qword_27CAC4130)
  {
    type metadata accessor for GoToArtistAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4130);
  }

  return result;
}

uint64_t sub_216B7DED0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216B7DF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v41 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v38 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  sub_21700CE04();
  v16 = sub_21700CDB4();
  v18 = v17;
  v19 = *(v11 + 8);
  v36 = v11 + 8;
  v37 = v9;
  v34 = v19;
  v19(v15, v9);
  if (v18)
  {
    v39 = v16;
    v40 = v18;
    v33 = a3;
    sub_21700F364();
    sub_21700D7A4();
    sub_21700CE04();
    v31 = *(v38 + 16);
    v20 = v35;
    v21 = v41;
    v31(v8, v35, v41);
    FriendsPageSectionLockup = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(0);
    OUTLINED_FUNCTION_0_177();
    sub_21700D734();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4138, &qword_21704BA50);
    v30 = a1;
    sub_21700CE04();
    v22 = v21;
    v23 = v31;
    v31(v8, v20, v22);
    sub_216B7E444();
    OUTLINED_FUNCTION_0_177();
    sub_21700D734();
    *(v33 + *(FriendsPageSectionLockup + 24)) = v39;
    sub_21700CE04();
    v24 = v41;
    v23(v8, v20, v41);
    OUTLINED_FUNCTION_0_177();
    sub_21700D734();
    (*(v38 + 8))(v20, v24);
    result = v34(v30, v37);
    *(v33 + *(FriendsPageSectionLockup + 28)) = v39;
  }

  else
  {
    v26 = sub_21700E2E4();
    sub_216B7E4F8(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v28 = v27;
    v29 = type metadata accessor for SocialOnboardingFindFriendsPageSectionLockup(0);
    *v28 = 25705;
    v28[1] = 0xE200000000000000;
    v28[2] = v29;
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D22530], v26);
    swift_willThrow();
    (*(v38 + 8))(v35, v41);
    return v34(a1, v37);
  }

  return result;
}

unint64_t sub_216B7E444()
{
  result = qword_27CAC4140;
  if (!qword_27CAC4140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4138, &qword_21704BA50);
    sub_216B7E4F8(&qword_280E2DC20, type metadata accessor for SocialOnboardingFindFriendsPageLockup, &unk_217041290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4140);
  }

  return result;
}

uint64_t sub_216B7E4F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ListenNowPageIntent(uint64_t a1)
{
  result = qword_280E3DBC0;
  if (!qword_280E3DBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B7E5B4(uint64_t a1)
{
  sub_216692630(319, &qword_280E4A510, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_216692630(319, &qword_280E44870, type metadata accessor for ReferrerInfo);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_216B7E6B8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v9 = type metadata accessor for ListenNowPageIntent(0);
    v16[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D28, &unk_21704BBF0);
    v10 = sub_21700E594();
    v16[3] = MEMORY[0x277D837D0];
    v16[0] = v10;
    v16[1] = v11;
    v12 = a1;
    v13 = sub_2166F1E10(v16, a1);
    sub_2166F1F64(v13, 0x646E696B24, 0xE500000000000000);
    sub_2168CC268(v2 + *(v9 + 20), v6);
    v14 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v12).super.isa;
      sub_216B7EB84(v6, type metadata accessor for ReferrerInfo);
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

uint64_t sub_216B7E88C@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for AnyPageRequestBody.OneOf_InnerBody(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_217007874();
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for AnyPageRequest(0);
  v10 = v6;
  v11 = v1;
  sub_2166CE6FC(&qword_27CAC4148, type metadata accessor for AnyPageRequest, &unk_21707E4E0);
  sub_217007A44();
  result = sub_216B7EB84(v6, type metadata accessor for AnyPageRequestBody.OneOf_InnerBody);
  if (!v2)
  {
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  return result;
}

uint64_t sub_216B7EA44(uint64_t a1)
{
  result = sub_2166CE6FC(&qword_280E3DBD8, type metadata accessor for ListenNowPageIntent, &unk_21704BB30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216B7EAE4(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE6FC(&qword_280E3DBD8, type metadata accessor for ListenNowPageIntent, &unk_21704BB30);
  result = sub_2166CE6FC(&qword_280E3DBE0, type metadata accessor for ListenNowPageIntent, &unk_21704BB14);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216B7EB84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ShowInAppleMusicAction(uint64_t a1)
{
  result = qword_280E48148;
  if (!qword_280E48148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216B7EC58(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166D90EC(319);
    if (v2 <= 0x3F)
    {
      sub_216688154();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216B7ECF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v45 - v6;
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v59 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v47 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v55 = v15;
  v56 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v46 = v16;
  MEMORY[0x28223BE20](v17);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v49 = v19;
  v50 = v18;
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ShowInAppleMusicAction(0);
  v23 = *(v22 + 20);
  v24 = type metadata accessor for ContentDescriptor(0);
  v54 = v23;
  __swift_storeEnumTagSinglePayload(a3 + v23, 1, 1, v24);
  v25 = *(v22 + 24);
  v57 = a1;
  v58 = a3;
  v26 = (a3 + v25);
  *v26 = 0;
  v26[1] = 0;
  sub_21700CE04();
  v27 = v59;
  v28 = *(v59 + 16);
  v29 = v52;
  v51 = v7;
  v28(v13);
  v30 = v53;
  sub_21700D224();
  if (v30)
  {
    (*(v27 + 8))(v29, v51);
    (*(v55 + 8))(v57, v56);
    return sub_2168F3EB8(v58 + v54);
  }

  else
  {
    v53 = v24;
    v31 = v58;
    (*(v49 + 32))(v58, v21, v50);
    v32 = v46;
    v33 = v57;
    sub_21700CE04();
    v34 = v47;
    (v28)(v47, v29, v51);
    v35 = v48;
    ContentDescriptor.init(deserializing:using:)(v32, v34, v36, v37, v38, v39, v40, v41, v45, v46, SWORD2(v46), SBYTE6(v46), SHIBYTE(v46), v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    v43 = OUTLINED_FUNCTION_1_154();
    v44(v43);
    (*(v55 + 8))(v33, v56);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v53);
    return sub_216A765E0(v35, v31 + v54);
  }
}

uint64_t sub_216B7F12C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4150, &qword_21704BC70);
  __swift_allocate_value_buffer(v0, qword_27CB229F8);
  __swift_project_value_buffer(v0, qword_27CB229F8);
  return sub_21700DA54();
}

void sub_216B7F1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4160, &qword_21704BC80);
  MEMORY[0x28223BE20](v5);
  v7 = v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4168, &qword_21704BC88);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v58 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v61 = v11;
    v62 = v14;
    v63 = v9;
    v64 = a1;
    v65 = v8;
    v16 = Strong;
    sub_216B803CC(a1, v7, type metadata accessor for FlowAction);
    v17 = type metadata accessor for FlowActionPageView(0);
    *&v7[*(v17 + 20)] = a3;
    v18 = &v7[*(v17 + 24)];
    type metadata accessor for MusicStackAuthority(0);
    sub_2166B4CA8(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);

    *v18 = sub_217008CF4();
    v18[1] = v19;
    v20 = sub_217007D54();
    v60 = v5;
    v21 = *(v5 + 36);
    v59 = v7;
    v22 = &v7[v21];
    *v22 = v20;
    v22[1] = v16;
    v23 = objc_opt_self();
    v58[3] = v16;

    v24 = [v23 sharedApplication];
    v25 = [v24 connectedScenes];

    v26 = sub_2169657E4();
    sub_2166B4CA8(&qword_280E29B28, sub_2169657E4, MEMORY[0x277D85378]);
    v27 = sub_21700EB84();

    v58[2] = v27;
    v66 = v26;
    if ((v27 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_21700F264();
      sub_21700EBC4();
      v27 = v71;
      v28 = v72;
      v29 = v73;
      v30 = v74;
      v31 = v75;
    }

    else
    {
      v32 = -1 << *(v27 + 32);
      v28 = v27 + 56;
      v33 = ~v32;
      v34 = -v32;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v31 = v35 & *(v27 + 56);
      sub_21700DF14();
      v29 = v33;
      v30 = 0;
    }

    v58[1] = v29;
    v36 = (v29 + 64) >> 6;
    v69 = *MEMORY[0x277D772C8];
    if (v27 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v37 = v30;
    v38 = v31;
    v39 = v30;
    if (v31)
    {
LABEL_14:
      v40 = (v38 - 1) & v38;
      v41 = *(*(v27 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
      if (v41)
      {
        while (1)
        {
          v67 = v31;
          v68 = v30;
          v43 = v27;
          v44 = [v41 session];
          v45 = [v44 role];

          v46 = sub_21700E514();
          v48 = v47;
          if (v46 == sub_21700E514() && v48 == v49)
          {
            break;
          }

          v51 = sub_21700F7D4();

          if (v51)
          {
            goto LABEL_27;
          }

          v30 = v39;
          v31 = v40;
          v27 = v43;
          if ((v43 & 0x8000000000000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_16:
          v42 = sub_21700F2E4();
          if (!v42)
          {
            goto LABEL_25;
          }

          v70 = v42;
          swift_dynamicCast();
          v41 = v76[0];
          v39 = v30;
          v40 = v31;
          if (!v76[0])
          {
            goto LABEL_28;
          }
        }

LABEL_27:
        v27 = v43;
      }

LABEL_28:
      sub_216687978(v27);

      sub_216B80434();
      v52 = v62;
      v53 = v59;
      sub_21700A1D4();

      sub_216B804F0(v53);
      v54 = v63;
      v55 = v61;
      v56 = v65;
      (*(v63 + 16))(v61, v52, v65);
      sub_216EB0ED4(v76);
      v57 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4178, &qword_21704BC90));
      sub_216B80268(v55, v76);

      (*(v54 + 8))(v52, v56);
    }

    else
    {
      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v39 >= v36)
        {
LABEL_25:
          v41 = 0;
          goto LABEL_28;
        }

        v38 = *(v28 + 8 * v39);
        ++v37;
        if (v38)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_216B7F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a3;
  v89 = a1;
  v7 = type metadata accessor for MusicAppDestinationContext(0);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(a4 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v75 - v13;
  v16 = type metadata accessor for AppDestinationPageView(0, a4, a5, v15);
  v85 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v75 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6A88, &qword_21706EE30);
  v19 = sub_2170089F4();
  v79 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v88 = v75 - v20;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_216A528D0();
  v92 = WitnessTable;
  v93 = v22;
  v23 = swift_getWitnessTable();
  v80 = v19;
  v94 = v19;
  v95 = v23;
  v77 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v78 = v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v75 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v87 = Strong;
    if ((*(a5 + 152))(a4, a5))
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v31 = type metadata accessor for WrappedAppPageDestination(0, AssociatedTypeWitness, AssociatedConformanceWitness, v30);
      (*(a5 + 160))(v89, v87, v89 + *(v31 + 40), a4, a5);
    }

    else
    {
      v76 = v27;
      v32 = v89;
      (*(v83 + 16))(v14, v89, AssociatedTypeWitness);
      (*(v84 + 16))(v11, v90, a4);
      v33 = swift_getAssociatedConformanceWitness();
      v83 = type metadata accessor for WrappedAppPageDestination(0, AssociatedTypeWitness, v33, v34);
      v35 = v32 + *(v83 + 40);
      v36 = v86;
      sub_216B803CC(v35, v86, type metadata accessor for MusicAppDestinationContext);
      sub_216B5EEBC(v14, v11, v36, a4, a5, v18);
      type metadata accessor for MusicStackAuthority(0);
      sub_2166B4CA8(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
      sub_21700A654();
      (*(v85 + 8))(v18, v16);
      v37 = [objc_opt_self() sharedApplication];
      v38 = [v37 connectedScenes];

      v39 = sub_2169657E4();
      sub_2166B4CA8(&qword_280E29B28, sub_2169657E4, MEMORY[0x277D85378]);
      v40 = sub_21700EB84();

      v75[2] = v40;
      v84 = v39;
      if ((v40 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_21700F264();
        sub_21700EBC4();
        v40 = v94;
        v41 = v95;
        v42 = v96;
        v43 = v97;
        v44 = v98;
      }

      else
      {
        v45 = -1 << *(v40 + 32);
        v41 = v40 + 56;
        v42 = ~v45;
        v46 = -v45;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v44 = v47 & *(v40 + 56);
        sub_21700DF14();
        v43 = 0;
      }

      v75[1] = v42;
      v48 = (v42 + 64) >> 6;
      v90 = *MEMORY[0x277D772C8];
      if (v40 < 0)
      {
        goto LABEL_18;
      }

LABEL_12:
      v49 = v43;
      v50 = v44;
      v51 = v43;
      if (v44)
      {
LABEL_16:
        v52 = (v50 - 1) & v50;
        v53 = *(*(v40 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));
        if (v53)
        {
          while (1)
          {
            v86 = v43;
            v85 = v44;
            v55 = v40;
            v56 = [v53 session];
            v57 = [v56 role];

            v58 = sub_21700E514();
            v60 = v59;
            if (v58 == sub_21700E514() && v60 == v61)
            {
              break;
            }

            v63 = sub_21700F7D4();

            if (v63)
            {
              goto LABEL_29;
            }

            v43 = v51;
            v44 = v52;
            v40 = v55;
            if ((v55 & 0x8000000000000000) == 0)
            {
              goto LABEL_12;
            }

LABEL_18:
            v54 = sub_21700F2E4();
            if (!v54)
            {
              goto LABEL_27;
            }

            *&v102 = v54;
            swift_dynamicCast();
            v53 = *&v99[0];
            v51 = v43;
            v52 = v44;
            if (!*&v99[0])
            {
              goto LABEL_30;
            }
          }

LABEL_29:
          v40 = v55;
        }

LABEL_30:
        sub_216687978(v40);

        v64 = v76;
        v65 = v80;
        v66 = v77;
        v67 = v88;
        sub_21700A1D4();

        (*(v79 + 8))(v67, v65);
        *&v99[0] = v65;
        *(&v99[0] + 1) = v66;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v69 = OpaqueTypeMetadata2;
        type metadata accessor for PageHostingController(0, OpaqueTypeMetadata2, OpaqueTypeConformance2, v70);
        v71 = v81;
        v72 = v78;
        (*(v81 + 16))(v78, v64, v69);
        v73 = v89 + *(v83 + 48);
        v74 = *(v73 + 16);
        v99[0] = *v73;
        v99[1] = v74;
        v100 = *(v73 + 32);
        v101 = v99[0];
        v102 = v74;
        sub_216A2841C(&v101, v91);
        sub_216A2841C(&v102, v91);
        sub_2166CBBF4(v72, v99);

        (*(v71 + 8))(v64, v69);
      }

      else
      {
        while (1)
        {
          v51 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          if (v51 >= v48)
          {
LABEL_27:
            v53 = 0;
            goto LABEL_30;
          }

          v50 = *(v41 + 8 * v51);
          ++v49;
          if (v50)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_216B80268(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4168, &qword_21704BC88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = v2 + *((*MEMORY[0x277D85000] & *v2) + qword_280E73C80 + 16);
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 1) = v10;
  *(v9 + 16) = *(a2 + 32);
  (*(v6 + 16))(v8, a1, v5);
  v11 = sub_217009444();
  (*(v6 + 8))(a1, v5);
  return v11;
}

uint64_t sub_216B803CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_216B80434()
{
  result = qword_27CAC4170;
  if (!qword_27CAC4170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4160, &qword_21704BC80);
    sub_2166B4CA8(qword_280E3F018, type metadata accessor for FlowActionPageView, &unk_217018DE4);
    sub_216A528D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4170);
  }

  return result;
}

uint64_t sub_216B804F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4160, &qword_21704BC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216B80558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BD0, &unk_2170142B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_217005AB4();
  OUTLINED_FUNCTION_1();
  v36 = v11;
  MEMORY[0x28223BE20](v12);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2C90, &unk_21705E460);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  type metadata accessor for OpenFinancePageAction.Kind(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216B80B24(a1, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = a3;
    v24 = sub_21700E4D4();
    sub_21700DFC4();

    sub_21700DFA4();
    (*(v16 + 8))(v19, v14);
    MEMORY[0x21CE9F490](0xD000000000000012, 0x8000000217089C70);
    v26 = v40;
    v25 = v41;
    sub_217005A94();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_216697664(v9, &qword_27CAB6BD0, &unk_2170142B0);
      sub_216B80BA8();
      swift_allocError();
      *v27 = v26;
      v27[1] = v25;
      return swift_willThrow();
    }

    else
    {
      v30 = v10;

      v31 = v36;
      (*(v36 + 32))(v39, v9, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AC8, &qword_217013E50);
      sub_2170059B4();
      *(swift_allocObject() + 16) = xmmword_217013DA0;
      sub_217005984();

      v32 = v39;
      sub_2170059D4();
      v33 = v37;
      sub_2170059F4();
      v34 = sub_217005EF4();
      if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
      {
        sub_216697664(v33, &qword_27CABA820, &unk_217018CE0);
        sub_216B80BA8();
        swift_allocError();
        *v35 = 0;
        v35[1] = 0;
        swift_willThrow();
        return (*(v31 + 8))(v32, v30);
      }

      else
      {
        (*(v31 + 8))(v32, v30);
        return (*(*(v34 - 8) + 32))(v23, v33);
      }
    }
  }

  else
  {
    sub_217005EF4();
    OUTLINED_FUNCTION_34();
    return (*(v29 + 32))(a3, v22);
  }
}

uint64_t sub_216B80B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenFinancePageAction.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_216B80BA8()
{
  result = qword_27CAC4180;
  if (!qword_27CAC4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4180);
  }

  return result;
}

uint64_t sub_216B80C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4190, &qword_21704BDF0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v28 = v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4198, &qword_21704BDF8);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC41A0, &qword_21704BE00);
  OUTLINED_FUNCTION_1();
  v27 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v26 = v14;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  v29 = v17;
  v30 = v2;
  if (v15)
  {
    v24 = v4;
    v32 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v18 = a1 + 32;
    do
    {
      sub_2167ADC3C(v18, v31);
      v20 = v31[2];
      v19 = v31[3];
      sub_21700DF14();
      sub_2167ADC98(v31);
      v32 = v16;
      v21 = *(v16 + 16);
      if (v21 >= *(v16 + 24) >> 1)
      {
        sub_2166F4258();
        v16 = v32;
      }

      *(v16 + 16) = v21 + 1;
      v22 = v16 + 16 * v21;
      *(v22 + 32) = v20;
      *(v22 + 40) = v19;
      v18 += 72;
      --v15;
    }

    while (v15);
    v2 = v30;
    v4 = v24;
  }

  v32 = v16;
  (*(v8 + 104))(v11, *MEMORY[0x277CC8AF0], v25);
  (*(v4 + 104))(v28, *MEMORY[0x277CC8B00], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
  sub_2166D9530(&qword_280E29E30, &qword_27CAB74F8, &unk_217017160, MEMORY[0x277D83970]);
  sub_217005864();
  (*(v4 + 8))(v28, v30);
  (*(v8 + 8))(v11, v25);
  sub_2166D9530(&qword_280E4A518, &qword_27CAC41A0, &qword_21704BE00, MEMORY[0x277CC8B28]);
  sub_21700E744();
  (*(v27 + 8))(v26, v29);

  return v31[0];
}

uint64_t sub_216B80FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for ContainerDetailHeaderView.ArtworkData(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v78 = type metadata accessor for ContainerDetailHeaderView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4188, &qword_21705AC00);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v81 = v13;
  v14 = type metadata accessor for AlbumDetailHeaderLockup(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  v19 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v79 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - v25;
  sub_216CCC4A8();
  sub_216DEA0E8();
  sub_216681B04(v18 + v14[13], v7, &qword_27CAB6D60, &qword_217014E40);
  v27 = *(v4 + 28);
  v28 = v18 + v14[14];
  v76 = v7;
  sub_216681B04(v28, v7 + v27, &qword_27CABBEA8, &unk_217026710);
  v29 = (v18 + v14[6]);
  v30 = v29[1];
  if (v30)
  {
    v75 = *v29;
    v74 = v30;
  }

  else
  {
    v75 = sub_21700C184();
    v74 = v31;
  }

  v32 = *(v18 + v14[7]);
  v77 = v26;
  if (v32 && *(v32 + 16))
  {
    sub_21700DF14();
    v33 = sub_216B80C28(v32);
    OUTLINED_FUNCTION_4_99(v33, v34);
  }

  else
  {
    sub_21700DF14();
    v35 = sub_21700C0C4();
    OUTLINED_FUNCTION_4_99(v35, v36);
    if (!v32)
    {
      goto LABEL_11;
    }
  }

  sub_216CE09CC(v32, &v83);
  if (v83.n128_u64[1])
  {
    sub_216681B04(v85, &v86, &qword_27CAB6DB0, &qword_217016C00);
    sub_2167ADC98(&v83);
    goto LABEL_12;
  }

  sub_216697664(&v83, &qword_27CAB8100, qword_21701B4C0);
LABEL_11:
  v86 = 0u;
  v87 = 0u;
  v88 = 0;
LABEL_12:
  v37 = sub_216CCC4A8();
  sub_2168A5DB0(v37, v38, v39, v40, v41, v42, v43, v44, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  v46 = v45;
  v79 = *(v79 + 8);
  (v79)(v23, v19);
  v83 = v86;
  v84 = v87;
  v85[0] = v88;
  v47 = v46 & 1;
  v48 = (v18 + v14[8]);
  v71 = v19;
  v50 = *v48;
  v49 = v48[1];
  v51 = a1;
  if (*(v18 + v14[11]))
  {
    v52 = *(v18 + v14[11]);
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  sub_21700DF14();
  sub_21700DF14();
  v53 = sub_216B8159C(v51);
  v54 = v14[9];
  v55 = v78;
  sub_216681B04(v18 + v54, v11 + v78[8], &qword_27CABBE20, qword_217034D80);
  sub_216B81CA4(v76, v11, type metadata accessor for ContainerDetailHeaderView.ArtworkData);
  v56 = v11 + v55[5];
  v57 = v74;
  *v56 = v75;
  *(v56 + 8) = v57;
  v58 = v72;
  *(v56 + 16) = v73;
  *(v56 + 24) = v58;
  v59 = v84;
  *(v56 + 32) = v83;
  *(v56 + 48) = v59;
  *(v56 + 64) = v85[0];
  *(v56 + 72) = v47;
  v60 = (v11 + v55[6]);
  *v60 = v50;
  v60[1] = v49;
  v60[2] = v52;
  *(v11 + v55[7]) = v53;
  v61 = v11 + v55[9];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  v62 = v11 + v55[10];
  *v62 = swift_getKeyPath();
  *(v62 + 8) = 0;
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  *(v62 + 32) = 0;
  v63 = v11 + v55[11];
  *v63 = swift_getKeyPath();
  *(v63 + 8) = 0;
  v64 = v71;
  *(&v84 + 1) = v71;
  v85[0] = MEMORY[0x277CD82B8];
  __swift_allocate_boxed_opaque_existential_1(&v83);
  sub_216CCC4A8();
  v65 = v81;
  v66 = (v81 + *(v80 + 36));
  sub_2167B7D58(&v83, (v66 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_216B81DD0(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
  v67 = sub_217008CF4();
  v69 = v68;
  (v79)(v77, v64);
  *v66 = v67;
  v66[1] = v69;
  sub_216B81CA4(v11, v65, type metadata accessor for ContainerDetailHeaderView);
  __swift_destroy_boxed_opaque_existential_1Tm(&v83);
  sub_216B81B78(v65, v82);
  return sub_216B81C4C(v18, type metadata accessor for AlbumDetailHeaderLockup);
}