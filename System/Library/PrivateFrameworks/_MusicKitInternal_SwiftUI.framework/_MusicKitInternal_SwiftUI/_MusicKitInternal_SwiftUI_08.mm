double sub_21792AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v36 = a3;
  *(&v36 + 1) = a4;
  v30 = a4;
  v31 = a6;
  v37 = a5;
  v38 = a6;
  v9 = _s21AdditionalContentViewVMa(0, &v36);
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28 = &v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A810, &unk_21796A9A0);
  MEMORY[0x28223BE20](v11 - 8);
  v32 = &v28 - v12;
  v13 = sub_21796810C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  sub_217967C4C();
  sub_217967C1C();
  swift_getWitnessTable();
  sub_21796933C();
  (*(v14 + 8))(v16, v13);
  v17 = v34;
  LOBYTE(v13) = v35;
  v36 = *(a1 + *(v9 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DDC8, &qword_2179711D0);
  sub_217967C1C();
  if ((v13 & 1) == 0 && v17 == v33)
  {
    v19 = sub_21796923C();
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v19);
    v21 = v28;
    v20 = v29;
    (*(v29 + 16))(v28, a1, v9);
    sub_21796920C();
    v22 = sub_2179691FC();
    v23 = (*(v20 + 80) + 64) & ~*(v20 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    *(v24 + 2) = v22;
    *(v24 + 3) = v25;
    v27 = v30;
    v26 = v31;
    *(v24 + 4) = a3;
    *(v24 + 5) = v27;
    *(v24 + 6) = a5;
    *(v24 + 7) = v26;
    (*(v20 + 32))(&v24[v23], v21, v9);
    sub_2178D207C();
  }

  return result;
}

uint64_t sub_21792B278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = sub_21796920C();
  v8[7] = sub_2179691FC();
  v13 = swift_task_alloc();
  v8[8] = v13;
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v14 = _s21AdditionalContentViewVMa(0, (v8 + 2));
  *v13 = v8;
  v13[1] = sub_21792B360;

  return sub_21792B4F8(v14);
}

uint64_t sub_21792B360()
{

  v1 = sub_2179691BC();

  return MEMORY[0x2822009F8](sub_21792B49C, v1, v0);
}

uint64_t sub_21792B49C()
{

  OUTLINED_FUNCTION_39();

  return v0();
}

uint64_t sub_21792B4F8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *(a1 + 16);
  v3 = *(a1 + 32);
  v2[15] = v3;
  v2[16] = *(v3 + 8);
  v4 = sub_21796810C();
  v2[17] = v4;
  v5 = sub_21796944C();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_21796920C();
  v2[25] = sub_2179691FC();
  v7 = sub_2179691BC();
  v2[26] = v7;
  v2[27] = v6;

  return MEMORY[0x2822009F8](sub_21792B680, v7, v6);
}

uint64_t sub_21792B680()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 136);
  *(v0 + 288) = *(*(v0 + 96) + 72);
  *(v0 + 224) = sub_217967C4C();
  sub_217967C1C();
  swift_getWitnessTable();
  v4 = sub_21796932C();
  v5 = *(v2 + 8);
  *(v0 + 232) = v5;
  *(v0 + 240) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26 = v5;
  v5(v1, v3);
  if (v4 & 1) != 0 || (v6 = (*(v0 + 104) + *(*(v0 + 96) + 76)), v7 = *v6, *(v0 + 295) = *v6, v8 = *(v6 + 1), *(v0 + 16) = v7, *(v0 + 248) = v8, *(v0 + 24) = v8, *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560), sub_217967C1C(), (*(v0 + 292)) || (v9 = *(v0 + 192), v10 = *(v0 + 136), sub_217967C1C(), v11 = sub_2179680BC(), v26(v9, v10), (v11 & 1) == 0))
  {

    OUTLINED_FUNCTION_22_5();

    OUTLINED_FUNCTION_39();

    return v24();
  }

  else
  {
    *(v0 + 32) = v7;
    *(v0 + 40) = v8;
    *(v0 + 293) = 1;

    sub_217967C2C();
    if (qword_27CB8A480 != -1)
    {
      swift_once();
    }

    v12 = sub_21796653C();
    *(v0 + 264) = __swift_project_value_buffer(v12, qword_27CB97B00);
    v13 = sub_21796651C();
    v14 = sub_21796939C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_217846000, v13, v14, "Fetching next batch of items in the expanded list.", v15, 2u);
      MEMORY[0x21CEA8ED0](v15, -1, -1);
    }

    v16 = *(v0 + 192);
    v17 = *(v0 + 136);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);

    sub_217967C1C();
    v20 = sub_21796930C();
    v26(v16, v17);
    *(v0 + 48) = *(v19 + *(v18 + 80));
    *(v0 + 80) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DDC8, &qword_2179711D0);
    sub_217967C2C();
    sub_217967C1C();
    v21 = swift_task_alloc();
    *(v0 + 272) = v21;
    *v21 = v0;
    v21[1] = sub_21792BA78;
    v22 = *(v0 + 160);
    v23 = *(v0 + 136);

    return MEMORY[0x282124620](v22, 0, 1, v23);
  }
}

uint64_t sub_21792BA78()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 136);
  *(*v1 + 280) = v0;

  v3(v4, v5);
  v6 = *(v2 + 216);
  v7 = *(v2 + 208);
  if (v0)
  {
    v8 = sub_21792BDC0;
  }

  else
  {
    v8 = sub_21792BC20;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21792BC20()
{
  v1 = v0[20];
  v2 = v0[17];

  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[20];
    v4 = v0[17];
    sub_21796911C();
    sub_2179680AC();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      (*(v0[19] + 8))(v0[20], v0[18]);
    }
  }

  else
  {
    (*(v0[21] + 32))(v0[23], v0[20], v0[17]);
  }

  v9 = v0[29];
  v5 = v0[23];
  v6 = v0[17];
  sub_217967C1C();
  sub_2179680CC();
  v9(v5, v6);
  sub_217967C2C();
  OUTLINED_FUNCTION_17_10();

  OUTLINED_FUNCTION_22_5();

  OUTLINED_FUNCTION_39();

  return v7();
}

uint64_t sub_21792BDC0()
{
  v16 = v0;
  v1 = *(v0 + 280);

  v2 = v1;
  v3 = sub_21796651C();
  v4 = sub_21796937C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    *(v0 + 88) = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A750, &unk_21796A930);
    v9 = sub_217968F8C();
    v11 = sub_217957F4C(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_217846000, v3, v4, "Failed to fetch next batch of items in the expanded list with error: %{public}s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CEA8ED0](v7, -1, -1);
    MEMORY[0x21CEA8ED0](v6, -1, -1);
  }

  else
  {
    v12 = *(v0 + 280);
  }

  OUTLINED_FUNCTION_17_10();

  OUTLINED_FUNCTION_22_5();

  OUTLINED_FUNCTION_39();

  return v13();
}

uint64_t sub_21792BF80(double a1, double a2, double a3, double a4)
{
  sub_21796973C();
  sub_2178D12D0(a1, a2, a3, a4);
  return sub_21796977C();
}

uint64_t sub_21792C068(uint64_t a1)
{
  sub_21796973C();
  sub_2178D12D0(*v1, v1[1], v1[2], v1[3]);
  return sub_21796977C();
}

uint64_t sub_21792C10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(OUTLINED_FUNCTION_19_6(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, v18, v19) - 8);
  v14 = v9 + ((*(v13 + 80) + 48) & ~*(v13 + 80));

  return sub_217928398(v14, v8, v10, v11, v12);
}

uint64_t sub_21792C198(uint64_t a1)
{
  v2 = type metadata accessor for MusicPicker.Click.ControlID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_10Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = *(v9 + 16);
  v24 = *(v9 + 32);
  OUTLINED_FUNCTION_29_5(a1, a2, a3, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_13();
  v12 = v9 + ((*(v11 + 80) + 48) & ~*(v11 + 80));

  sub_2178643E0(*(v12 + 48));

  if (*(v12 + 120))
  {
    if (*(v12 + 104))
    {
      v13 = __swift_destroy_boxed_opaque_existential_1((v12 + 80));
    }
  }

  else
  {
  }

  v21 = OUTLINED_FUNCTION_16_9(v13, v14, v15, v16, v17, v18, v19, v20, v24, *(&v24 + 1), v25);
  OUTLINED_FUNCTION_3();
  (*(v22 + 8))(v10, v21);
  sub_217967C4C();

  OUTLINED_FUNCTION_25_5();
  OUTLINED_FUNCTION_24_8();
  OUTLINED_FUNCTION_15_10();
  sub_2178643E0(*(v8 + 24));
  return swift_deallocObject();
}

uint64_t sub_21792C3B4(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v12[0] = v2[2];
  v4 = v12[0];
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v8 = *(_s21AdditionalContentViewVMa(0, v12) - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

double sub_21792C47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(OUTLINED_FUNCTION_19_6(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, v19, v20) - 8);
  v14 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v15 = v9 + ((v14 + *(v13 + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80));

  return sub_21792AF40(v9 + v14, v15, v8, v10, v11, v12);
}

uint64_t sub_21792C55C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21792C5A4(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = *(_s21AdditionalContentViewVMa(0, (v2 + 2)) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = swift_task_alloc();
  v2[6] = v12;
  *v12 = v2;
  v12[1] = sub_21792C6CC;

  return sub_21792B278(a1, v10, v11, v1 + v9, v5, v4, v6, v7);
}

uint64_t sub_21792C6CC()
{

  OUTLINED_FUNCTION_39();

  return v0();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_10()
{
  sub_2178643E0(*(v1 + *(v0 + 84)));
}

uint64_t OUTLINED_FUNCTION_16_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_21796810C();
}

uint64_t OUTLINED_FUNCTION_17_10()
{
  v2 = *(v0 + 248);
  *(v0 + 64) = *(v0 + 295);
  *(v0 + 72) = v2;
  *(v0 + 294) = 0;

  return sub_217967C2C();
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v12[3];
  v15 = v12[4];
  v16 = v12[5];
  a9 = v12[2];
  a10 = v14;
  a11 = v15;
  a12 = v16;

  return _s21AdditionalContentViewVMa(0, &a9);
}

uint64_t OUTLINED_FUNCTION_22_5()
{
}

uint64_t OUTLINED_FUNCTION_23_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{

  return swift_getOpaqueTypeConformance2();
}

double OUTLINED_FUNCTION_24_8()
{

  return result;
}

double OUTLINED_FUNCTION_25_5()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_29_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return _s21AdditionalContentViewVMa(0, va);
}

uint64_t sub_21792C990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21792CAD8(a1, a2, a3);

  return sub_217966CCC();
}

uint64_t sub_21792C9D8(uint64_t a1)
{
  v2 = sub_21796697C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_21792CAD8(v5, v6, v7);
  sub_217966CDC();
  return (*(v3 + 8))(a1, v2);
}

unint64_t sub_21792CAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8DFA0;
  if (!qword_27CB8DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8DFA0);
  }

  return result;
}

double sub_21792CB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_21796772C();

  return result;
}

uint64_t sub_21792CBB0()
{
  v0 = sub_21796697C();
  __swift_allocate_value_buffer(v0, qword_27CB8DF88);
  v1 = __swift_project_value_buffer(v0, qword_27CB8DF88);
  v2 = *MEMORY[0x277CDFA88];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_21792CC38@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CB8A440 != -1)
  {
    swift_once();
  }

  v2 = sub_21796697C();
  v3 = __swift_project_value_buffer(v2, qword_27CB8DF88);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_21792CCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21792CD44();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_21792CD44()
{
  result = qword_27CB8DFA8[0];
  if (!qword_27CB8DFA8[0])
  {
    sub_21796697C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8DFA8);
  }

  return result;
}

uint64_t sub_21792CDA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MusicLibraryPlaylistViewModel.rawCoverArtworkRecipe.setter(v1, v2, v3);
}

uint64_t (*MusicLibraryPlaylistViewModel.rawCoverArtworkRecipe.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = _s16MusicKitInternal0A24LibraryPlaylistViewModelC01_abC8_SwiftUIE21rawCoverArtworkRecipeSSSgvg_0();
  a1[1] = v3;
  return sub_21792CE2C;
}

uint64_t sub_21792CE2C(void *a1, char a2, __n128 a3)
{
  if ((a2 & 1) == 0)
  {
    return _s16MusicKitInternal0A24LibraryPlaylistViewModelC01_abC8_SwiftUIE21rawCoverArtworkRecipeSSSgvs_0();
  }

  _s16MusicKitInternal0A24LibraryPlaylistViewModelC01_abC8_SwiftUIE21rawCoverArtworkRecipeSSSgvs_0();
}

uint64_t MusicLibraryPlaylistViewModel.coverArtworkRecipes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v1);
  v63 = v52 - v2;
  v62 = sub_21796809C();
  OUTLINED_FUNCTION_2();
  v55 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = sub_217968DFC();
  OUTLINED_FUNCTION_2();
  v54 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_5();
  v53 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v52 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB20, &unk_21796B100);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v16);
  v18 = v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AAE8, &qword_21796AFA0);
  OUTLINED_FUNCTION_2();
  v64 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v52 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AB88, &qword_21796B168);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v28);
  v30 = v52 - v29;
  v31 = sub_217965BFC();
  if (v31)
  {
    return v31;
  }

  v52[0] = v30;
  v52[1] = v0;
  v57 = v15;
  v58 = v7;
  sub_217965C2C();
  v33 = v64;
  (*(v64 + 16))(v24, v27, v19);
  sub_21792D45C(&qword_27CB8D398, MEMORY[0x277CD7CA0]);
  v61 = v18;
  sub_21796905C();
  v34 = *(v60 + 36);
  sub_21792D45C(&qword_27CB8AB28, MEMORY[0x277CD7CB8]);
  v35 = v53;
  v59 = v27;
  v60 = (v54 + 4);
  ++v55;
  v56 = (v54 + 2);
  ++v54;
  v36 = v19;
  v37 = v27;
  while (1)
  {
    v38 = v61;
    sub_2179692EC();
    if (*(v38 + v34) == v65[0])
    {
      sub_217875F0C(v38, &qword_27CB8AB20, &unk_21796B100);
      (*(v33 + 8))(v37, v36);
      v49 = 1;
      v50 = v52[0];
      goto LABEL_9;
    }

    v39 = sub_21796934C();
    v40 = v57;
    (*v56)(v57);
    v39(v65, 0);
    v41 = v34;
    v42 = v36;
    sub_2179692FC();
    v43 = *v60;
    (*v60)(v35, v40, v8);
    v44 = v58;
    sub_2179684BC();
    v45 = v35;
    v46 = v63;
    sub_21796808C();
    (*v55)(v44, v62);
    v47 = sub_21796862C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v47);
    sub_217875F0C(v46, &qword_27CB8AC40, &qword_21796B248);
    if (EnumTagSinglePayload != 1)
    {
      break;
    }

    (*v54)(v45, v8);
    v35 = v45;
    v36 = v42;
    v33 = v64;
    v37 = v59;
    v34 = v41;
  }

  sub_217875F0C(v61, &qword_27CB8AB20, &unk_21796B100);
  (*(v64 + 8))(v59, v42);
  v50 = v52[0];
  v43(v52[0], v45, v8);
  v49 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v50, v49, 1, v8);
  v32 = sub_217917224(v50);

  sub_217965C0C();
  sub_217875F0C(v50, &qword_27CB8AB88, &qword_21796B168);
  return v32;
}

uint64_t sub_21792D45C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8AAE8, &qword_21796AFA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MusicLibraryPlaylistViewModel.artwork(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a1;
  v3 = sub_21796877C();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_5();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8AC48, &unk_21796FF10);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  v16 = sub_217968E3C();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  sub_217965C3C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_217875F0C(v15, qword_27CB8AC48, &unk_21796FF10);
    v23 = sub_217968C2C();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v23);
  }

  else
  {
    (*(v18 + 32))(v22, v15, v16);
    sub_21796604C();
    (*(v5 + 16))(v9, v12, v3);
    sub_217968D7C();
    sub_217968B3C();
    (*(v5 + 8))(v12, v3);
    return (*(v18 + 8))(v22, v16);
  }
}

uint64_t MusicLibraryPlaylistViewModel.select(_:)()
{
  v0 = sub_21796877C();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_21796604C();
  sub_21796876C();
  (*(v2 + 8))(v6, v0);
  return _s16MusicKitInternal0A24LibraryPlaylistViewModelC01_abC8_SwiftUIE21rawCoverArtworkRecipeSSSgvs_0();
}

double sub_21792D7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = sub_21792D898(a1, a2, a4, a6);
  v15[1] = v10;
  v16 = v11 & 1;
  v13 = _s18NavigationBarStyleVMa(0, a4, a6, v12);
  MEMORY[0x21CEA69A0](v15, a3, v13, a5);

  return result;
}

uint64_t sub_21792D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9ViewModelCMa(0, a3, a4, a4);
  swift_getWitnessTable();
  return sub_217966ACC();
}

uint64_t sub_21792D910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21792D94C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21792D9A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_21792DA38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  LODWORD(v38[0]) = a4;
  v38[1] = a7;
  _s18NavigationBarStyleVMa(255, a5, a6, a4);
  OUTLINED_FUNCTION_0_19();
  swift_getWitnessTable();
  v12 = sub_2179670BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v38 - v15;
  (*(v13 + 16))(v38 - v15, a1, v12);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  (*(v13 + 32))(v18 + v17, v16, v12);
  v19 = v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = a2;
  *(v19 + 8) = a3;
  *(v19 + 16) = v38[0];

  v38[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E030, &qword_217971330);
  OUTLINED_FUNCTION_45_2();
  WitnessTable = swift_getWitnessTable();
  v41 = v12;
  v42 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = sub_217967E0C();
  v41 = v12;
  v42 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = OpaqueTypeMetadata2;
  v42 = v22;
  v24 = MEMORY[0x277CE1320];
  v43 = OpaqueTypeConformance2;
  v44 = MEMORY[0x277CE1320];
  v25 = swift_getOpaqueTypeMetadata2();
  v41 = MEMORY[0x277CE1350];
  v42 = MEMORY[0x277CE1340];
  OUTLINED_FUNCTION_3_19();
  v26 = swift_getOpaqueTypeConformance2();
  v41 = OpaqueTypeMetadata2;
  v42 = v22;
  v43 = OpaqueTypeConformance2;
  v44 = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v38[0];
  v41 = v12;
  v42 = v38[0];
  v43 = v25;
  v44 = WitnessTable;
  v45 = v26;
  v46 = v27;
  v29 = swift_getOpaqueTypeMetadata2();
  v41 = v12;
  v42 = v28;
  v43 = v25;
  v44 = WitnessTable;
  v45 = v26;
  v46 = v27;
  v30 = swift_getOpaqueTypeConformance2();
  v41 = v29;
  v42 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v41 = v29;
  v42 = v30;
  v32 = swift_getOpaqueTypeConformance2();
  v35 = sub_21792EBC8(v32, v33, v34);
  v41 = v31;
  v42 = &_s27PickerNavigationItemAdaptorVN;
  v43 = v32;
  v44 = v35;
  swift_getOpaqueTypeMetadata2();
  v41 = v31;
  v42 = &_s27PickerNavigationItemAdaptorVN;
  v43 = v32;
  v44 = v35;
  swift_getOpaqueTypeConformance2();
  v39 = sub_21796685C();
  v40 = v36;
  sub_21796686C();
  OUTLINED_FUNCTION_19();
  swift_getWitnessTable();
  sub_2179560E4();

  v39 = v41;
  v40 = v42;
  sub_2179560E4();

  return result;
}

uint64_t sub_21792DE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a6;
  v80 = a7;
  v76 = a5;
  v58[1] = a4;
  v58[0] = a3;
  v73 = a2;
  v77 = a1;
  v78 = a8;
  v10 = sub_21796676C();
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  v72 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E030, &qword_217971330);
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v70 = v58 - v13;
  _s18NavigationBarStyleVMa(255, a6, a7, v14);
  swift_getWitnessTable();
  v15 = sub_2179670BC();
  WitnessTable = swift_getWitnessTable();
  v83 = v15;
  v84 = WitnessTable;
  v17 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = sub_217967E0C();
  v83 = v15;
  v84 = v17;
  v20 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = OpaqueTypeMetadata2;
  v84 = v19;
  v22 = MEMORY[0x277CE1320];
  v85 = OpaqueTypeConformance2;
  v86 = MEMORY[0x277CE1320];
  v23 = swift_getOpaqueTypeMetadata2();
  v83 = MEMORY[0x277CE1350];
  v84 = MEMORY[0x277CE1340];
  v24 = swift_getOpaqueTypeConformance2();
  v83 = OpaqueTypeMetadata2;
  v84 = v19;
  v85 = OpaqueTypeConformance2;
  v86 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v83 = v15;
  v84 = v12;
  v62 = v12;
  v60 = v23;
  v85 = v23;
  v86 = v20;
  v64 = v20;
  v87 = v24;
  v88 = v25;
  v63 = v24;
  v26 = v25;
  v61 = v25;
  v27 = swift_getOpaqueTypeMetadata2();
  v65 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v58 - v28;
  v83 = v15;
  v84 = v12;
  v85 = v23;
  v86 = v20;
  v87 = v24;
  v88 = v26;
  v30 = swift_getOpaqueTypeConformance2();
  v83 = v27;
  v84 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v69 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v59 = v58 - v32;
  v83 = v27;
  v84 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  v36 = sub_21792EBC8(v33, v34, v35);
  v83 = v31;
  v84 = &_s27PickerNavigationItemAdaptorVN;
  v67 = v33;
  v85 = v33;
  v86 = v36;
  v66 = v36;
  v37 = swift_getOpaqueTypeMetadata2();
  v68 = *(v37 - 8);
  v38 = MEMORY[0x28223BE20](v37);
  v40 = v58 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = v58 - v41;
  sub_217967E1C();
  v43 = v70;
  sub_217966DBC();
  v81 = v79;
  v82 = v80;
  swift_checkMetadataState();
  swift_checkMetadataState();
  v44 = v62;
  sub_217967A8C();
  v45 = v43;
  v46 = v59;
  (*(v71 + 8))(v45, v44);
  v47 = v72;
  sub_21796675C();
  sub_21796778C();
  (*(v74 + 8))(v47, v75);
  (*(v65 + 8))(v29, v27);
  if (v76)
  {
    _s9ViewModelCMa(0, v79, v80, v48);
    swift_getWitnessTable();
    sub_217966A9C();
    sub_2178DA848();
    v50 = v49;
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  sub_21796680C();
  v83 = v50;
  v84 = v52;
  v85 = v53;
  v54 = v67;
  v55 = v66;
  sub_2179678EC();

  (*(v69 + 8))(v46, v31);
  v83 = v31;
  v84 = &_s27PickerNavigationItemAdaptorVN;
  v85 = v54;
  v86 = v55;
  swift_getOpaqueTypeConformance2();
  sub_2179560E4();
  v56 = *(v68 + 8);
  v56(v40, v37);
  sub_2179560E4();
  return (v56)(v42, v37);
}

uint64_t sub_21792E624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v41 = a4;
  v6 = sub_217967E0C();
  v34 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18NavigationBarStyleVMa(255, a2, a3, v8);
  swift_getWitnessTable();
  v9 = sub_2179670BC();
  WitnessTable = swift_getWitnessTable();
  v42 = v9;
  v43 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = OpaqueTypeMetadata2;
  v37 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v30 - v12;
  v42 = v9;
  v43 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = OpaqueTypeMetadata2;
  v43 = v6;
  v44 = OpaqueTypeConformance2;
  v45 = MEMORY[0x277CE1320];
  v35 = MEMORY[0x277CDE968];
  v14 = swift_getOpaqueTypeMetadata2();
  v36 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v31 = &v30 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E040, &qword_217971338);
  sub_217966A5C();
  v19 = swift_allocObject();
  v30 = xmmword_21796A340;
  *(v19 + 16) = xmmword_21796A340;
  sub_217966A4C();
  v20 = swift_checkMetadataState();
  MEMORY[0x21CEA6780](1, v19, v20, WitnessTable);

  v21 = v38;
  sub_217967DEC();
  v22 = swift_allocObject();
  *(v22 + 16) = v30;
  sub_217966A4C();
  v24 = v33;
  v23 = v34;
  v25 = OpaqueTypeConformance2;
  v26 = MEMORY[0x277CE1320];
  MEMORY[0x21CEA6790](v21, v22, v33, v34, OpaqueTypeConformance2, MEMORY[0x277CE1320]);

  (*(v40 + 8))(v21, v23);
  (*(v37 + 8))(v13, v24);
  v42 = v24;
  v43 = v23;
  v44 = v25;
  v45 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = v31;
  sub_2179560E4();
  v28 = *(v36 + 8);
  v28(v17, v14);
  sub_2179560E4();
  return (v28)(v27, v14);
}

uint64_t sub_21792EAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  _s18NavigationBarStyleVMa(255, v6, v7, a2);
  OUTLINED_FUNCTION_0_19();
  swift_getWitnessTable();
  v8 = *(sub_2179670BC() - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);

  return sub_21792DE50(a1, v3 + v9, v11, v12, v13, v6, v7, a3);
}

unint64_t sub_21792EBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8E038;
  if (!qword_27CB8E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E038);
  }

  return result;
}

uint64_t sub_21792EC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = _s20FailureAlertModifierVMa(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2178745BC();
  v13 = &v12[*(v9 + 20)];
  *v13 = a2;
  v13[1] = a3;
  v14 = &v12[*(v9 + 24)];
  v17[15] = 0;

  sub_217967C0C();
  v15 = v18;
  *v14 = v17[16];
  *(v14 + 1) = v15;
  MEMORY[0x21CEA69A0](v12, a4, v9, a5);
  return sub_2179309BC(v12, _s20FailureAlertModifierVMa);
}

uint64_t _s20FailureAlertModifierVMa(uint64_t a1)
{
  result = qword_27CB8E048;
  if (!qword_27CB8E048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21792EDFC(uint64_t a1)
{
  sub_21792EE98(319);
  if (v1 <= 0x3F)
  {
    sub_217875494();
    if (v2 <= 0x3F)
    {
      sub_21788C240();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21792EE98(uint64_t a1)
{
  if (!qword_27CB8E058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A578, &qword_21796A750);
    v1 = sub_217967D5C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8E058);
    }
  }
}

uint64_t sub_21792EF18(uint64_t a1)
{
  v3 = _s20FailureAlertModifierVMa(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E060, &qword_2179713B0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21792F170(a1, (&v13 - v9));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  MEMORY[0x21CEA6C70](v11);
  sub_21793058C(v1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_allocObject();
  sub_217930964();
  sub_217930670();
  sub_217930878();
  sub_217967A5C();

  sub_2178653BC(v7, &qword_27CB8A578, &qword_21796A750);
  return sub_2178653BC(v10, &qword_27CB8E060, &qword_2179713B0);
}

void *sub_21792F170@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0A8, &qword_2179713D8);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0B0, &qword_2179713E0);
  v7 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = _s5AlertVMa(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  MEMORY[0x21CEA6C70](v15);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2178653BC(v11, &qword_27CB8A578, &qword_21796A750);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E070, &qword_2179713B8);
    (*(*(v16 - 8) + 16))(v6, a1, v16);
    swift_storeEnumTagMultiPayload();
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E078, &qword_2179713C0);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E080, &unk_2179713C8);
    v19 = sub_217864B2C(&qword_27CB8E088, &qword_27CB8E070, &qword_2179713B8, MEMORY[0x277CE04B0]);
    v22 = sub_217873C34(v19, v20, v21);
    v23 = sub_217864B2C(&qword_27CB8E090, &qword_27CB8E078, &qword_2179713C0, MEMORY[0x277CE14C0]);
    v24 = sub_2179307FC();
    v63 = v16;
    v64 = MEMORY[0x277D837D0];
    v65 = v17;
    v66 = v18;
    v67 = v19;
    v68 = v22;
    v69 = v23;
    v70 = v24;
    swift_getOpaqueTypeConformance2();
    return sub_217966F8C();
  }

  else
  {
    v55 = _s5AlertVMa;
    sub_217930964();
    v26 = v14[1];
    v61 = *v14;
    v62 = v26;
    v54 = v26;
    v27 = (v2 + *(_s20FailureAlertModifierVMa(0) + 24));
    v28 = *v27;
    v29 = *(v27 + 1);
    v59 = v28;
    v60 = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
    v30 = sub_217967C3C();
    v53 = &v42;
    v50 = v64;
    v51 = v63;
    v52 = v65;
    v31 = MEMORY[0x28223BE20](v30);
    v48 = v41;
    MEMORY[0x28223BE20](v31);
    v47 = v41;
    v49 = v6;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E070, &qword_2179713B8);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E078, &qword_2179713C0);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E080, &unk_2179713C8);
    v32 = sub_217864B2C(&qword_27CB8E088, &qword_27CB8E070, &qword_2179713B8, MEMORY[0x277CE04B0]);
    v46 = v4;
    v33 = v32;
    v36 = sub_217873C34(v32, v34, v35);
    v37 = sub_217864B2C(&qword_27CB8E090, &qword_27CB8E078, &qword_2179713C0, MEMORY[0x277CE14C0]);
    v38 = sub_2179307FC();
    v41[2] = v37;
    v41[3] = v38;
    v41[0] = v33;
    v41[1] = v36;
    v39 = v56;
    sub_21796798C();

    v40 = v58;
    (*(v7 + 16))(v49, v39, v58);
    swift_storeEnumTagMultiPayload();
    v63 = v43;
    v64 = MEMORY[0x277D837D0];
    v65 = v44;
    v66 = v45;
    v67 = v33;
    v68 = v36;
    v69 = v37;
    v70 = v38;
    swift_getOpaqueTypeConformance2();
    sub_217966F8C();
    (*(v7 + 8))(v39, v40);
    return sub_2179309BC(v14, v55);
  }
}

uint64_t sub_21792F814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _s5AlertVMa(0);
  __swift_getEnumTagSinglePayload(a2, 1, v4);
  _s20FailureAlertModifierVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  return sub_217967C2C();
}

uint64_t sub_21792F8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v38 = a3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0B8, &qword_2179713E8);
  MEMORY[0x28223BE20](v39);
  v5 = (v33 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8DA90, &qword_2179713F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v36 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - v9;
  v11 = _s5AlertV7ControlVMa(0);
  v12 = MEMORY[0x28223BE20](v11);
  v34 = (v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = (v33 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0C0, &qword_2179713F8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v33 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v33 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v33 - v26;
  _s5AlertVMa(0);
  sub_2178745BC();
  v35 = v11;
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2178653BC(v10, &qword_27CB8DA90, &qword_2179713F0);
    v28 = 1;
  }

  else
  {
    v33[1] = a1;
    sub_217930964();
    sub_21792FD08(v15, v5);
    sub_2179309BC(v15, _s5AlertV7ControlVMa);
    sub_217854F04();
    v28 = 0;
  }

  __swift_storeEnumTagSinglePayload(v27, v28, 1, v39);
  v29 = v36;
  sub_2178745BC();
  if (__swift_getEnumTagSinglePayload(v29, 1, v35) == 1)
  {
    sub_2178653BC(v29, &qword_27CB8DA90, &qword_2179713F0);
    v30 = 1;
  }

  else
  {
    v31 = v34;
    sub_217930964();
    sub_21792FD08(v31, v5);
    sub_2179309BC(v31, _s5AlertV7ControlVMa);
    sub_217854F04();
    v30 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v30, 1, v39);
  sub_217854EA4();
  sub_217854EA4();
  sub_217854EA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0C8, &qword_217971400);
  sub_217854EA4();
  sub_2178653BC(v25, &qword_27CB8E0C0, &qword_2179713F8);
  sub_2178653BC(v27, &qword_27CB8E0C0, &qword_2179713F8);
  sub_2178653BC(v19, &qword_27CB8E0C0, &qword_2179713F8);
  return sub_2178653BC(v22, &qword_27CB8E0C0, &qword_2179713F8);
}

uint64_t sub_21792FD08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0D0, &qword_217971408);
  MEMORY[0x28223BE20](v44);
  v45 = &v35 - v3;
  v4 = sub_2179669DC();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s20FailureAlertModifierVMa(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8BA20, &qword_217971410);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0D8, &qword_217971418);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0E0, &unk_217971420);
  v36 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v16 = &v35 - v15;
  v17 = _s5AlertV7ControlVMa(0);
  v19 = *a1;
  v18 = a1[1];
  if (*(a1 + *(v17 + 24)) == 1)
  {
    v20 = sub_2179665FC();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
    v47 = v19;
    v48 = v18;
    sub_2178745BC();
    sub_21793058C(v41, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    *(swift_allocObject() + 16) = 0;
    v21 = sub_217930964();
    sub_217873C34(v21, v22, v23);

    sub_217967C8C();
    sub_2178653BC(v11, &qword_27CB8BA20, &qword_217971410);
    v24 = v37;
    sub_2179669CC();
    v25 = sub_217864B2C(&qword_27CB8E0E8, &qword_27CB8E0D8, &qword_217971418, MEMORY[0x277CDF028]);
    sub_2179677FC();
    (*(v38 + 8))(v24, v39);
    (*(v42 + 8))(v14, v12);
    v26 = v36;
    v27 = v43;
    (*(v36 + 16))(v45, v16, v43);
    swift_storeEnumTagMultiPayload();
    v47 = v12;
    v48 = v25;
    swift_getOpaqueTypeConformance2();
    sub_217966F8C();
    return (*(v26 + 8))(v16, v27);
  }

  else
  {
    v29 = sub_21791F758();
    v47 = v19;
    v48 = v18;
    sub_2178745BC();
    sub_21793058C(v41, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    *(swift_allocObject() + 16) = v29 & 1;
    v30 = sub_217930964();
    sub_217873C34(v30, v31, v32);

    sub_217967C8C();
    v33 = v42;
    (*(v42 + 16))(v45, v14, v12);
    swift_storeEnumTagMultiPayload();
    v34 = sub_217864B2C(&qword_27CB8E0E8, &qword_27CB8E0D8, &qword_217971418, MEMORY[0x277CDF028]);
    v47 = v12;
    v48 = v34;
    swift_getOpaqueTypeConformance2();
    sub_217966F8C();
    return (*(v33 + 8))(v14, v12);
  }
}

uint64_t sub_2179303C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 24))
  {
    sub_217873C34(a1, a2, a3);

    result = sub_21796763C();
    v9 = v8 & 1;
  }

  else
  {
    result = 0;
    v6 = 0;
    v9 = 0;
    v7 = 0;
  }

  *a4 = result;
  a4[1] = v6;
  a4[2] = v9;
  a4[3] = v7;
  return result;
}

uint64_t sub_21793044C(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A578, &qword_21796A750);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  if (a1)
  {
    v8 = _s20FailureAlertModifierVMa(0);
    (*(a2 + *(v8 + 20)))();
  }

  v9 = _s5AlertVMa(0);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
  sub_2178745BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960);
  sub_217967D1C();
  return sub_2178653BC(v7, &qword_27CB8A578, &qword_21796A750);
}

uint64_t sub_21793058C(uint64_t a1, uint64_t a2)
{
  v4 = _s20FailureAlertModifierVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179305F0(uint64_t a1, uint64_t a2)
{
  v5 = *(_s20FailureAlertModifierVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21792F814(a1, a2, v6);
}

unint64_t sub_217930670()
{
  result = qword_27CB8E068;
  if (!qword_27CB8E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E060, &qword_2179713B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E070, &qword_2179713B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E078, &qword_2179713C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E080, &unk_2179713C8);
    v1 = sub_217864B2C(&qword_27CB8E088, &qword_27CB8E070, &qword_2179713B8, MEMORY[0x277CE04B0]);
    sub_217873C34(v1, v2, v3);
    sub_217864B2C(&qword_27CB8E090, &qword_27CB8E078, &qword_2179713C0, MEMORY[0x277CE14C0]);
    sub_2179307FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E068);
  }

  return result;
}

unint64_t sub_2179307FC()
{
  result = qword_27CB8E098;
  if (!qword_27CB8E098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E080, &unk_2179713C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E098);
  }

  return result;
}

unint64_t sub_217930878()
{
  result = qword_27CB8E0A0;
  if (!qword_27CB8E0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8A578, &qword_21796A750);
    sub_2179308FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E0A0);
  }

  return result;
}

unint64_t sub_2179308FC()
{
  result = qword_27CB8DAD0;
  if (!qword_27CB8DAD0)
  {
    _s5AlertVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8DAD0);
  }

  return result;
}

uint64_t sub_217930964()
{
  OUTLINED_FUNCTION_86();
  v1(0);
  OUTLINED_FUNCTION_3();
  v2 = OUTLINED_FUNCTION_63_0();
  v3(v2);
  return v0;
}

uint64_t sub_2179309BC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_4Tm()
{
  _s20FailureAlertModifierVMa(0);
  OUTLINED_FUNCTION_13();
  v4 = v0 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A788, &qword_21796A960) + 32);
  v6 = _s5AlertVMa(0);
  if (!OUTLINED_FUNCTION_52_0(v6))
  {

    v7 = v5 + *(v1 + 24);
    v8 = _s5AlertV7ControlVMa(0);
    if (!OUTLINED_FUNCTION_55_0(v8))
    {

      v9 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_4_17(v9))
      {
        OUTLINED_FUNCTION_10();
        (*(v10 + 8))(v7 + v11);
      }
    }

    if (!OUTLINED_FUNCTION_3_20())
    {

      v12 = *(v2 + 20);
      v13 = sub_2179665FC();
      if (!OUTLINED_FUNCTION_8_12(v13))
      {
        OUTLINED_FUNCTION_10();
        (*(v14 + 8))(v5 + v12, v1);
      }
    }
  }

  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_217930BD8()
{
  v1 = *(_s20FailureAlertModifierVMa(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80));

  return sub_21793044C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_3_20()
{
  v4 = v0 + *(v1 + 28);

  return __swift_getEnumTagSinglePayload(v4, 1, v2);
}

uint64_t OUTLINED_FUNCTION_4_17(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_8_12(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

double OUTLINED_FUNCTION_10_9()
{

  return result;
}

uint64_t static PickableMusicItem.catalogSearchableTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F0, &qword_217971440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217971430;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8290];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_217968E3C();
  v6 = MEMORY[0x277CD85D0];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

uint64_t static PickableMusicItem.librarySearchableTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F8, &unk_217971448);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217971430;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8298];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_217968CFC();
  v6 = sub_217930E08();
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  return v0;
}

unint64_t sub_217930E08()
{
  result = qword_27CB8E100;
  if (!qword_27CB8E100)
  {
    sub_217968CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E100);
  }

  return result;
}

uint64_t static PickableMusicItem.convertToPickableItem<A>(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14();
  v13 = *(v11 + 16);
  v13(v15 - v14, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B068, &unk_21796B720);
  if (swift_dynamicCast())
  {
    sub_21784A7D4(&v45, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    sub_217967F0C();
    __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  else
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    sub_217875F0C(&v45, &qword_27CB8B070, &unk_217971CA0);
    *(&v46 + 1) = a3;
    v47 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v45);
    (v13)(boxed_opaque_existential_1, a1, a3);
  }

  v17 = dynamic_cast_existential_1_conditional(a2, a2, &protocol descriptor for PickablePolymorphicMusicItem);
  if (v17)
  {
    v19 = v17;
    v20 = v18;
    v39 = a5;
    v21 = *(&v46 + 1);
    v22 = v47;
    __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
    v38[1] = v38;
    OUTLINED_FUNCTION_0_1();
    MEMORY[0x28223BE20](v23);
    OUTLINED_FUNCTION_14();
    v26 = v25 - v24;
    (*(v27 + 16))(v25 - v24);
    v28 = *(v20 + 16);
    v29 = sub_21796944C();
    v38[0] = v38;
    OUTLINED_FUNCTION_0_1();
    v31 = v30;
    MEMORY[0x28223BE20](v32);
    v34 = v38 - v33;
    v28(v26, v21, v22, v19, v20);
    if (__swift_getEnumTagSinglePayload(v34, 1, v19) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v45);
      (*(v31 + 8))(v34, v29);
      OUTLINED_FUNCTION_2_14();
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
    }

    else
    {
      *(&v43 + 1) = v19;
      v44 = v20;
      v36 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v19 - 8) + 32))(v36, v34, v19);
      __swift_destroy_boxed_opaque_existential_1(&v45);
      OUTLINED_FUNCTION_2_14();
    }

    sub_217931310(&v42, v40);
    v37 = v39;
    if (v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E118, &qword_217971468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E108, &qword_217971458);
      if (swift_dynamicCast())
      {
        return sub_217875F0C(&v42, &qword_27CB8E110, &qword_217971460);
      }
    }

    else
    {
      sub_217875F0C(v40, &qword_27CB8E110, &qword_217971460);
    }

    *(v37 + 32) = 0;
    *v37 = 0u;
    *(v37 + 16) = 0u;
    return sub_217875F0C(&v42, &qword_27CB8E110, &qword_217971460);
  }

  sub_21784A7D4(&v45, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E108, &qword_217971458);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
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

uint64_t sub_217931310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E110, &qword_217971460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217931384@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2179688CC();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_2179313CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2179688CC();
  (*(*(v3 - 8) + 16))(a1, v1, v3);

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

uint64_t sub_217931488@<X0>(uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  (*(v8 + 16))(v7 - v6);
  v9 = a2(0);
  v10 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v10 ^ 1u, 1, v9);
}

uint64_t sub_217931570@<X0>(uint64_t a1@<X8>)
{
  sub_217968A2C();
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = sub_2179688CC();
  v3 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a1, v3 ^ 1u, 1, v2);
}

uint64_t PickableMusicItem<>.pickableSong.getter@<X0>(uint64_t a3@<X8>)
{
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = sub_2179688CC();
  v5 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v5 ^ 1u, 1, v4);
}

uint64_t sub_217931690@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21796852C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2179688CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_217968A2C();
  sub_217967F0C();
  sub_21784A7D4(&v15, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  if (swift_dynamicCast())
  {
    (*(v7 + 32))(a1, v9, v6);
    v11 = MEMORY[0x277CD8368];
  }

  else
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v12 = 1;
      goto LABEL_7;
    }

    (*(v3 + 32))(a1, v5, v2);
    v11 = MEMORY[0x277CD8350];
  }

  (*(*(v10 - 8) + 104))(a1, *v11, v10);
  v12 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(a1, v12, 1, v10);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t PickableMusicItem<>.pickableTrack.getter@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_21796852C();
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v11 = sub_2179688CC();
  OUTLINED_FUNCTION_0_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  sub_217967F0C();
  sub_21784A7D4(&v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  if (swift_dynamicCast())
  {
    (*(v13 + 32))(a3, v17, v11);
    v18 = MEMORY[0x277CD8368];
  }

  else
  {
    if (!swift_dynamicCast())
    {
      sub_217968A2C();
      v21 = OUTLINED_FUNCTION_3_21();
      goto LABEL_7;
    }

    (*(v6 + 32))(a3, v10, v4);
    v18 = MEMORY[0x277CD8350];
  }

  v19 = *v18;
  v20 = sub_217968A2C();
  (*(*(v20 - 8) + 104))(a3, v19, v20);
  v21 = a3;
  v22 = 0;
  v23 = 1;
  v24 = v20;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_217931C40()
{
  v1 = v0;
  v2 = sub_217968E3C();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217968CFC();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v1, v8);
  v14 = (*(v10 + 88))(v13, v8);
  if (v14 == *MEMORY[0x277D2B320])
  {
    (*(v10 + 8))(v13, v8);
    return 0;
  }

  if (v14 == *MEMORY[0x277D2B328])
  {
    (*(v10 + 96))(v13, v8);
    (*(v4 + 32))(v7, v13, v2);
    v15 = sub_217968D5C();
    (*(v4 + 8))(v7, v2);
    return v15;
  }

  result = sub_21796959C();
  __break(1u);
  return result;
}

uint64_t sub_217931E94()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217931F50(void *a1)
{
  a1[1] = sub_217932068(&qword_27CB8E128, MEMORY[0x277D2B348]);
  a1[2] = sub_217932068(&qword_27CB8E130, MEMORY[0x277D2B370]);
  a1[3] = sub_217932068(&qword_27CB8E138, MEMORY[0x277D2B360]);
  a1[4] = sub_217932068(&qword_27CB8E140, MEMORY[0x277D2B368]);
  result = sub_217932068(&qword_27CB8E148, MEMORY[0x277D2B378]);
  a1[5] = result;
  return result;
}

uint64_t sub_217932024(uint64_t a1)
{
  result = sub_217932068(&qword_27CB8BFA0, &unk_2179714C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217932068(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217968CFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217932128(void *a1)
{
  a1[2] = sub_2179321D8(&qword_27CB8E150, MEMORY[0x277CD7D78]);
  a1[3] = sub_2179321D8(&qword_27CB8E158, MEMORY[0x277CD7D68]);
  a1[4] = sub_2179321D8(&qword_27CB8E160, MEMORY[0x277CD7D70]);
  result = sub_2179321D8(&qword_27CB8E168, MEMORY[0x277CD7D80]);
  a1[5] = result;
  return result;
}

uint64_t sub_2179321D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21796831C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793228C()
{
  v1 = sub_217965F7C();
  if (v0)
  {
    v2 = v0;
    if (qword_27CB8A380 != -1)
    {
      OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
    }

    OUTLINED_FUNCTION_1_21();
    sub_21796560C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_21796A340;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 64) = sub_21788C964(v3, v4, v5);
    *(v3 + 32) = v1;
    *(v3 + 40) = v2;
    v6 = sub_217968F7C();

    return v6;
  }

  else
  {
    if (qword_27CB8A380 != -1)
    {
      OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
    }

    OUTLINED_FUNCTION_1_21();
    return sub_21796560C();
  }
}

uint64_t sub_217932418(void *a1)
{
  a1[1] = sub_2179324EC(&qword_27CB8E178, MEMORY[0x277D2AB28]);
  a1[2] = sub_2179324EC(&qword_27CB8E180, MEMORY[0x277D2AB58]);
  a1[3] = sub_2179324EC(&qword_27CB8E188, MEMORY[0x277D2AB40]);
  a1[4] = sub_2179324EC(&qword_27CB8E190, MEMORY[0x277D2AB48]);
  result = sub_2179324EC(&qword_27CB8E198, MEMORY[0x277D2AB60]);
  a1[5] = result;
  return result;
}

uint64_t sub_2179324EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217965F9C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793254C(uint64_t a1, uint64_t a2)
{
  sub_2179326B8(&qword_27CB8D3F0, MEMORY[0x277D2A390]);
  sub_2179326B8(&qword_27CB8B808, &unk_217971538);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2179325E4(void *a1)
{
  a1[1] = sub_2179326B8(&qword_27CB8E1A0, MEMORY[0x277D2A398]);
  a1[2] = sub_2179326B8(&qword_27CB8E1A8, MEMORY[0x277D2A480]);
  a1[3] = sub_2179326B8(&qword_27CB8E1B0, MEMORY[0x277D2A468]);
  a1[4] = sub_2179326B8(&qword_27CB8E1B8, MEMORY[0x277D2A470]);
  result = sub_2179326B8(&qword_27CB8E1C0, MEMORY[0x277D2A488]);
  a1[5] = result;
  return result;
}

uint64_t sub_2179326B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21796595C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793276C()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217932820(void *a1)
{
  a1[2] = sub_2179328D0(&qword_27CB8E1D0, MEMORY[0x277CD8340]);
  a1[3] = sub_2179328D0(&qword_27CB8E1D8, MEMORY[0x277CD8328]);
  a1[4] = sub_2179328D0(&qword_27CB8E1E0, MEMORY[0x277CD8330]);
  result = sub_2179328D0(&qword_27CB8E1E8, MEMORY[0x277CD8348]);
  a1[5] = result;
  return result;
}

uint64_t sub_2179328D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2179689DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217932984()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217932A3C(void *a1)
{
  a1[1] = sub_217932B10(&qword_27CB8E1F8, MEMORY[0x277D2ACD0]);
  a1[2] = sub_217932B10(&qword_27CB8E200, MEMORY[0x277D2AD00]);
  a1[3] = sub_217932B10(&qword_27CB8E208, MEMORY[0x277D2ACF0]);
  a1[4] = sub_217932B10(&qword_27CB8E210, MEMORY[0x277D2ACF8]);
  result = sub_217932B10(&qword_27CB8E218, MEMORY[0x277D2AD08]);
  a1[5] = result;
  return result;
}

uint64_t sub_217932B10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2179661BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217932BC4()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217932C84(void *a1)
{
  a1[2] = sub_217932D34(&qword_27CB8E228, MEMORY[0x277CD7FC0]);
  a1[3] = sub_217932D34(&qword_27CB8E230, MEMORY[0x277CD7FB0]);
  a1[4] = sub_217932D34(&qword_27CB8E238, MEMORY[0x277CD7FB8]);
  result = sub_217932D34(&qword_27CB8E240, MEMORY[0x277CD7FC8]);
  a1[5] = result;
  return result;
}

uint64_t sub_217932D34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21796866C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217932DF0(void *a1)
{
  a1[1] = sub_217932F08(&qword_27CB8E250, MEMORY[0x277D2B390]);
  a1[2] = sub_217932F08(&qword_27CB8E258, MEMORY[0x277D2B3B8]);
  a1[3] = sub_217932F08(&qword_27CB8E260, MEMORY[0x277D2B3A8]);
  a1[4] = sub_217932F08(&qword_27CB8E268, MEMORY[0x277D2B3B0]);
  result = sub_217932F08(&qword_27CB8E270, MEMORY[0x277D2B3C0]);
  a1[5] = result;
  return result;
}

uint64_t sub_217932EC4(uint64_t a1)
{
  result = sub_217932F08(&qword_27CB8D938, &unk_2179715A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217932F08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217968D2C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217932F4C(uint64_t a1, uint64_t a2)
{
  sub_217933098(&qword_27CB8B0E0, MEMORY[0x277D2B450]);
  sub_217933098(&qword_27CB8B0E8, &unk_2179715E0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217932FE8(void *a1)
{
  a1[2] = sub_217933098(&qword_27CB8D3B0, MEMORY[0x277CD85B0]);
  a1[3] = sub_217933098(&qword_27CB8E278, MEMORY[0x277CD8598]);
  a1[4] = sub_217933098(&qword_27CB8D380, MEMORY[0x277CD85A0]);
  result = sub_217933098(&qword_27CB8E280, MEMORY[0x277CD85B8]);
  a1[5] = result;
  return result;
}

uint64_t sub_217933098(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217968DFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217933168(void *a1)
{
  a1[1] = sub_21793323C(&qword_27CB8E290, MEMORY[0x277D2A798]);
  a1[2] = sub_21793323C(&qword_27CB8E298, MEMORY[0x277D2A7E0]);
  a1[3] = sub_21793323C(&qword_27CB8E2A0, MEMORY[0x277D2A7D0]);
  a1[4] = sub_21793323C(&qword_27CB8E2A8, MEMORY[0x277D2A7D8]);
  result = sub_21793323C(&qword_27CB8E2B0, MEMORY[0x277D2A7E8]);
  a1[5] = result;
  return result;
}

uint64_t sub_21793323C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217965D6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2179332F0()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_2179333A4(void *a1)
{
  a1[1] = sub_217933478(&qword_27CB8E2C0, MEMORY[0x277D2AD20]);
  a1[2] = sub_217933478(&qword_27CB8E2C8, MEMORY[0x277D2AD48]);
  a1[3] = sub_217933478(&qword_27CB8E2D0, MEMORY[0x277D2AD38]);
  a1[4] = sub_217933478(&qword_27CB8E2D8, MEMORY[0x277D2AD40]);
  result = sub_217933478(&qword_27CB8E2E0, MEMORY[0x277D2AD50]);
  a1[5] = result;
  return result;
}

uint64_t sub_217933478(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2179661DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2179334BC(uint64_t a1, uint64_t a2)
{
  sub_217933624(&qword_27CB8D3E8, MEMORY[0x277D2A338]);
  sub_217933624(&qword_27CB8BFB0, &unk_217971640);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_217933550(void *a1)
{
  a1[1] = sub_217933624(&qword_27CB8E2E8, MEMORY[0x277D2A348]);
  a1[2] = sub_217933624(&qword_27CB8E2F0, MEMORY[0x277D2A368]);
  a1[3] = sub_217933624(&qword_27CB8E2F8, MEMORY[0x277D2A358]);
  a1[4] = sub_217933624(&qword_27CB8E300, MEMORY[0x277D2A360]);
  result = sub_217933624(&qword_27CB8E308, MEMORY[0x277D2A370]);
  a1[5] = result;
  return result;
}

uint64_t sub_217933624(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21796591C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217933668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F0, &qword_217971440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796E3A0;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8290];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_21796852C();
  v6 = MEMORY[0x277CD7E10];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  result = sub_217968E3C();
  v8 = MEMORY[0x277CD85D0];
  *(v0 + 80) = result;
  *(v0 + 88) = v8;
  qword_27CB8E310 = v0;
  return result;
}

uint64_t sub_217933730()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F8, &unk_217971448);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796E3A0;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8298];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_21796852C();
  v6 = MEMORY[0x277CD7E18];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_217968CFC();
  result = sub_217933CC4(&qword_27CB8E100, MEMORY[0x277D2B358], MEMORY[0x277D2B338]);
  *(v0 + 80) = v7;
  *(v0 + 88) = result;
  qword_27CB8E318 = v0;
  return result;
}

double sub_217933828(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_21793387C(uint64_t a1)
{
  v2 = MEMORY[0x277CD7E58];
  *(a1 + 16) = sub_217933CC4(&qword_27CB8E320, MEMORY[0x277CD7E58], MEMORY[0x277CD7E68]);
  result = sub_217933CC4(&qword_27CB8AF20, v2, MEMORY[0x277CD7E78]);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_217933988()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  sub_21796560C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796A340;
  v1 = sub_2179684DC();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_21788C964(v1, v2, v4);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v5 = sub_217968F7C();

  return v5;
}

uint64_t sub_217933AC4()
{
  v0 = sub_21796599C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21796852C();
  if (sub_2179687FC())
  {
    sub_21796598C();
    v4 = sub_21796597C();
    (*(v1 + 8))(v3, v0);
    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_217933BF0(void *a1)
{
  v2 = MEMORY[0x277CD7E58];
  a1[2] = sub_217933CC4(&qword_27CB8E328, MEMORY[0x277CD7E58], MEMORY[0x277CD7E70]);
  a1[3] = sub_217933CC4(&qword_27CB8E330, v2, MEMORY[0x277CD7E60]);
  a1[4] = sub_217933CC4(&qword_27CB8E320, v2, MEMORY[0x277CD7E68]);
  result = sub_217933CC4(&qword_27CB8AF20, v2, MEMORY[0x277CD7E78]);
  a1[5] = result;
  return result;
}

uint64_t sub_217933CC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217933D78()
{
  v0 = sub_21796896C();
  v2 = v1;

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    return sub_21796896C();
  }

  else
  {
    return sub_2179688FC();
  }
}

uint64_t sub_217933DD4()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  sub_21796560C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796A340;
  v1 = sub_21796890C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_21788C964(v1, v2, v4);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v5 = sub_217968F7C();

  return v5;
}

uint64_t sub_217933F24(void *a1)
{
  a1[2] = sub_217934018(&qword_27CB8A738, MEMORY[0x277CD82E8]);
  a1[3] = sub_217934018(&qword_27CB8E340, MEMORY[0x277CD82D0]);
  a1[4] = sub_217934018(&qword_27CB8E348, MEMORY[0x277CD82D8]);
  result = sub_217934018(&qword_27CB8AF10, MEMORY[0x277CD82F0]);
  a1[5] = result;
  return result;
}

uint64_t sub_217933FD4(uint64_t a1)
{
  result = sub_217934018(&qword_27CB8A6D0, &unk_217971698);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217934018(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2179689AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2179340D8(void *a1)
{
  a1[2] = sub_217934188(&qword_27CB8E350, MEMORY[0x277CD7D48]);
  a1[3] = sub_217934188(&qword_27CB8E358, MEMORY[0x277CD7D38]);
  a1[4] = sub_217934188(&qword_27CB8E360, MEMORY[0x277CD7D40]);
  result = sub_217934188(&qword_27CB8E368, MEMORY[0x277CD7D50]);
  a1[5] = result;
  return result;
}

uint64_t sub_217934188(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2179682DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217934240()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217934300(void *a1)
{
  a1[1] = sub_2179343D4(&qword_27CB8E378, MEMORY[0x277D2ADC8]);
  a1[2] = sub_2179343D4(&qword_27CB8E380, MEMORY[0x277D2AE00]);
  a1[3] = sub_2179343D4(&qword_27CB8E388, MEMORY[0x277D2ADF0]);
  a1[4] = sub_2179343D4(&qword_27CB8E390, MEMORY[0x277D2ADF8]);
  result = sub_2179343D4(&qword_27CB8E398, MEMORY[0x277D2AE08]);
  a1[5] = result;
  return result;
}

uint64_t sub_2179343D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21796624C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217934418()
{
  v0 = sub_21796599C();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_217968A2C();
  if (sub_2179687FC())
  {
    sub_21796598C();
    v7 = sub_21796597C();
    (*(v2 + 8))(v6, v0);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_217934500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F0, &qword_217971440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217971710;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8290];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_21796852C();
  v6 = MEMORY[0x277CD7E10];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_217968E3C();
  v8 = MEMORY[0x277CD85D0];
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  result = sub_2179688CC();
  v10 = MEMORY[0x277CD81E8];
  *(v0 + 96) = result;
  *(v0 + 104) = v10;
  qword_27CB8E3A0 = v0;
  return result;
}

uint64_t sub_2179345DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F8, &unk_217971448);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217971710;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8298];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_21796852C();
  v6 = MEMORY[0x277CD7E18];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = sub_217968CFC();
  v8 = sub_217934D8C(&qword_27CB8E100, MEMORY[0x277D2B358], MEMORY[0x277D2B338]);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  result = sub_2179688CC();
  v10 = MEMORY[0x277CD81F0];
  *(v0 + 96) = result;
  *(v0 + 104) = v10;
  qword_27CB8E3A8 = v0;
  return result;
}

uint64_t Track.init<A>(pickerItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E3B0, &qword_217971720);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v43 - v6;
  v47 = sub_21796852C();
  OUTLINED_FUNCTION_2();
  v45 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  v44 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v43 - v13;
  v15 = *(a2 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = sub_2179688CC();
  OUTLINED_FUNCTION_2();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14();
  v26 = (v25 - v24);
  v49 = sub_217968A2C();
  OUTLINED_FUNCTION_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14();
  v32 = (v31 - v30);
  (*(v15 + 16))(v19, a1, a2);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
    (*(v15 + 8))(a1, a2);
    v33 = *(v22 + 32);
    v33(v26, v14, v20);
    v33(v32, v26, v20);
    v34 = MEMORY[0x277CD8368];
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v20);
    sub_217875F0C(v14, &qword_27CB8CA28, &unk_21796F610);
    (*(v15 + 32))(v46, a1, a2);
    v35 = v48;
    v36 = v47;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v41 = 1;
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
      sub_217875F0C(v35, &qword_27CB8E3B0, &qword_217971720);
      v40 = v49;
      v39 = v50;
      return __swift_storeEnumTagSinglePayload(v39, v41, 1, v40);
    }

    __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
    v37 = v44;
    v38 = *(v45 + 32);
    v38(v44, v35, v36);
    v38(v32, v37, v36);
    v34 = MEMORY[0x277CD8350];
  }

  v40 = v49;
  v39 = v50;
  (*(v28 + 104))(v32, *v34, v49);
  (*(v28 + 32))(v39, v32, v40);
  v41 = 0;
  return __swift_storeEnumTagSinglePayload(v39, v41, 1, v40);
}

uint64_t sub_217934B98(uint64_t a1)
{
  v2 = MEMORY[0x277CD83B8];
  *(a1 + 16) = sub_217934D8C(&qword_27CB8E3B8, MEMORY[0x277CD83B8], MEMORY[0x277CD83C8]);
  result = sub_217934D8C(&qword_27CB8A7B0, v2, MEMORY[0x277CD83E0]);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_217934CB8(void *a1)
{
  v2 = MEMORY[0x277CD83B8];
  a1[2] = sub_217934D8C(&qword_27CB8E3C0, MEMORY[0x277CD83B8], MEMORY[0x277CD83D8]);
  a1[3] = sub_217934D8C(&qword_27CB8E3C8, v2, MEMORY[0x277CD83C0]);
  a1[4] = sub_217934D8C(&qword_27CB8E3B8, v2, MEMORY[0x277CD83C8]);
  result = sub_217934D8C(&qword_27CB8A7B0, v2, MEMORY[0x277CD83E0]);
  a1[5] = result;
  return result;
}

uint64_t sub_217934D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217934E44()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_217934EFC(void *a1)
{
  a1[1] = sub_217934FD0(&qword_27CB8E3D8, MEMORY[0x277D2AAD8]);
  a1[2] = sub_217934FD0(&qword_27CB8E3E0, MEMORY[0x277D2AB10]);
  a1[3] = sub_217934FD0(&qword_27CB8E3E8, MEMORY[0x277D2AB00]);
  a1[4] = sub_217934FD0(&qword_27CB8E3F0, MEMORY[0x277D2AB08]);
  result = sub_217934FD0(&qword_27CB8E3F8, MEMORY[0x277D2AB18]);
  a1[5] = result;
  return result;
}

uint64_t sub_217934FD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217965F5C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217935098(void *a1)
{
  a1[2] = sub_21793518C(&qword_27CB8CA98, MEMORY[0x277CD8628]);
  a1[3] = sub_21793518C(&qword_27CB8E408, MEMORY[0x277CD8610]);
  a1[4] = sub_21793518C(&qword_27CB8E410, MEMORY[0x277CD8618]);
  result = sub_21793518C(&qword_27CB8E418, MEMORY[0x277CD8630]);
  a1[5] = result;
  return result;
}

uint64_t sub_217935148(uint64_t a1)
{
  result = sub_21793518C(&qword_27CB8AAC8, &unk_21797178C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21793518C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217968E3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217935240()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

double sub_217935300()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E438, &unk_217971800);
  swift_allocObject();
  sub_21796825C();
  sub_217968ACC();

  return result;
}

uint64_t sub_217935400(void *a1)
{
  a1[2] = sub_2179354F4(&qword_27CB8AE40, MEMORY[0x277CD8448]);
  a1[3] = sub_2179354F4(&qword_27CB8E428, MEMORY[0x277CD8430]);
  a1[4] = sub_2179354F4(&qword_27CB8E430, MEMORY[0x277CD8438]);
  result = sub_2179354F4(&qword_27CB8B668, MEMORY[0x277CD8450]);
  a1[5] = result;
  return result;
}

uint64_t sub_2179354B0(uint64_t a1)
{
  result = sub_2179354F4(&qword_27CB8AAF8, &unk_2179717C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2179354F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217968AFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793558C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id sub_21793559C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s33MainViewContainerDismissalWrapperV17HostingControllerCMa(0, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  sub_2179673AC();
  sub_21796739C();
  v4 = sub_21793568C(v8);
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2179356C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s33MainViewContainerDismissalWrapperV11CoordinatorCMa(0, *(a1 + 16), *(a1 + 24), a4);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];

  sub_217936420(v6, v7);
  sub_217936420(v8, v9);
  return sub_217935744(v5, v6, v7, v8, v9);
}

id sub_2179357C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_2179356C0(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_21793582C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_2179358A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_217935924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_2179672EC();
  __break(1u);
}

id sub_217935964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[qword_27CB8E448];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[qword_27CB8E450];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v5[qword_27CB8E440] = a1;
  *v6 = a2;
  *(v6 + 1) = a3;
  *v7 = a4;
  *(v7 + 1) = a5;
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_1_22();
  v11 = _s33MainViewContainerDismissalWrapperV11CoordinatorCMa(0, v9, *(v8 + 88), v10);
  v13.receiver = v5;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_217935A10()
{
  v0 = OUTLINED_FUNCTION_63_0();
  sub_217936420(v0, v1);
  return OUTLINED_FUNCTION_63_0();
}

uint64_t sub_217935A48()
{
  v0 = OUTLINED_FUNCTION_63_0();
  sub_217936420(v0, v1);
  return OUTLINED_FUNCTION_63_0();
}

void sub_217935A98(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_217935A80(v5);
}

BOOL sub_217935AF8()
{
  sub_217935A00();
  v0 = sub_21796914C();

  return v0 == 0;
}

uint64_t sub_217935B60(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_217935AF8();

  return a1 & 1;
}

void (*sub_217935BC4(uint64_t a1, uint64_t (*a2)(uint64_t)))(void)
{
  result = a2(a1);
  if (result)
  {
    result();
    v3 = OUTLINED_FUNCTION_63_0();

    return sub_21789096C(v3, v4);
  }

  return result;
}

void sub_217935C1C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_217935BAC(v5);
}

id sub_217935CBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_1_22();
  v6 = _s33MainViewContainerDismissalWrapperV11CoordinatorCMa(0, v4, *(v3 + 88), v5);
  v8.receiver = v2;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_217935D24(uint64_t a1)
{

  sub_21789096C(*(a1 + qword_27CB8E448), *(a1 + qword_27CB8E448 + 8));
  v2 = *(a1 + qword_27CB8E450);
  v3 = *(a1 + qword_27CB8E450 + 8);

  return sub_21789096C(v2, v3);
}

void sub_217935EAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277D85000];
  v7 = _s33MainViewContainerDismissalWrapperV17HostingControllerCMa(0, *((*MEMORY[0x277D85000] & *v4) + qword_27CB97AD8), *((*MEMORY[0x277D85000] & *v4) + qword_27CB97AD8 + 8), a4);
  v12.receiver = v4;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, sel_didMoveToParentViewController_, a1);
  if (a1)
  {
    v8 = a1;
    v9 = [v8 presentationController];
    if (v9)
    {
      v10 = v9;
      [v9 setDelegate_];
    }
  }

  else
  {
    v11 = [v4 presentationController];
    if (!v11)
    {
      return;
    }

    v8 = v11;
    [v11 setDelegate_];
  }
}

void sub_21793602C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_217935EAC(a3, v8, v6, v7);
}

id sub_217936174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = _s33MainViewContainerDismissalWrapperV17HostingControllerCMa(0, *((*MEMORY[0x277D85000] & *v4) + qword_27CB97AD8), *((*MEMORY[0x277D85000] & *v4) + qword_27CB97AD8 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_217936274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_2179362DC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21793631C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2179363D8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_217967B0C();
  *a2 = result;
  return result;
}

double sub_217936420(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_217936444@<X0>(uint64_t a1@<X8>)
{
  sub_2179683BC();
  sub_2179377E8(&qword_27CB8E748, MEMORY[0x277CD7DB0], MEMORY[0x277CD7DC0]);
  sub_2179692AC();
  sub_2179692EC();
  if (v12[4] == v12[0])
  {
    sub_21796814C();
    v2 = OUTLINED_FUNCTION_3_21();
  }

  else
  {
    v6 = sub_21796934C();
    v8 = v7;
    v9 = sub_21796814C();
    OUTLINED_FUNCTION_3();
    (*(v10 + 16))(a1, v8, v9);
    v6(v12, 0);
    v2 = a1;
    v3 = 0;
    v4 = 1;
    v5 = v9;
  }

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_2179365B0()
{
  v3 = OUTLINED_FUNCTION_3_22();
  v5 = v4(v3);
  v6 = v5;
  if (v2)
  {
    (*(*(v5 - 8) + 16))(v0, v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v7, 1, v6);
}

uint64_t sub_217936680()
{
  v3 = OUTLINED_FUNCTION_3_22();
  v4 = _s12SearchColumnVMa(v3);
  v5 = v4;
  if (v2)
  {
    sub_2178A9100(v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v0);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v6, 1, v5);
}

uint64_t sub_217936718@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_217937830(a3, a1, a2);
  sub_2179692AC();
  sub_2179692EC();
  if (v20[4] == v20[0])
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_3_21();
  }

  else
  {
    v14 = sub_21796934C();
    v16 = v15;
    v17 = (a4)(0);
    OUTLINED_FUNCTION_3();
    (*(v18 + 16))(a5, v16, v17);
    v14(v20, 0);
    v10 = a5;
    v11 = 0;
    v12 = 1;
    v13 = v17;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Song.catalogPreviewAssets.getter()
{
  v1[4] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v1[5] = v2;
  OUTLINED_FUNCTION_64_0(v2);
  v1[6] = v3;
  v1[7] = OUTLINED_FUNCTION_16_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8CA28, &unk_21796F610);
  v1[8] = OUTLINED_FUNCTION_16_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E730, &qword_217971AA0);
  v1[9] = v4;
  OUTLINED_FUNCTION_64_0(v4);
  v1[10] = v5;
  v1[11] = OUTLINED_FUNCTION_16_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E738, &qword_217971AA8);
  v1[12] = v6;
  OUTLINED_FUNCTION_64_0(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_16_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  v1[15] = OUTLINED_FUNCTION_16_2();
  v8 = sub_21796809C();
  v1[16] = v8;
  OUTLINED_FUNCTION_64_0(v8);
  v1[17] = v9;
  v1[18] = OUTLINED_FUNCTION_16_2();
  v10 = sub_21796862C();
  v1[19] = v10;
  OUTLINED_FUNCTION_64_0(v10);
  v1[20] = v11;
  v1[21] = OUTLINED_FUNCTION_16_2();

  return MEMORY[0x2822009F8](sub_217936AE0, 0, 0);
}

uint64_t sub_217936AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v14[18];
  v15 = v14[19];
  v17 = v14[16];
  v18 = v14[17];
  v19 = v14[15];
  v14[22] = sub_2179688CC();
  sub_2179684BC();
  sub_21796808C();
  (*(v18 + 8))(v16, v17);
  if (__swift_getEnumTagSinglePayload(v19, 1, v15) == 1)
  {
    sub_2178653BC(v14[15], &qword_27CB8AC40, &qword_21796B248);

    v20 = v14[1];

    return v20(0);
  }

  else
  {
    (*(v14[20] + 32))(v14[21], v14[15], v14[19]);
    swift_getKeyPath();
    v14[2] = sub_21796861C();
    v14[3] = v22;
    sub_2179377E8(&qword_27CB8CB28, MEMORY[0x277CD8238], MEMORY[0x277CD8260]);
    sub_21796837C();
    v29 = swift_task_alloc();
    v14[23] = v29;
    *v29 = v14;
    v29[1] = sub_217936D38;
    v30 = v14[11];
    v31 = v14[12];

    return MEMORY[0x282124780](v30, v31, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_217936D38()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_2179370B0;
  }

  else
  {
    v2 = sub_217936E4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_217936E4C(__n128 a1)
{
  v2 = v1[22];
  v3 = v1[8];
  v5 = v1[6];
  v4 = v1[7];
  v6 = v1[5];
  sub_2179683AC();
  sub_217936718(&qword_27CB8B0A8, &unk_21796B760, &qword_27CB8CAD8, MEMORY[0x277CD8238], v3);
  (*(v5 + 8))(v4, v6);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v8 = v1[20];
    v7 = v1[21];
    v9 = v1[19];
    v11 = v1[13];
    v10 = v1[14];
    v12 = v1[12];
    v13 = v1[8];
    (*(v1[10] + 8))(v1[11], v1[9]);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
    sub_2178653BC(v13, &qword_27CB8CA28, &unk_21796F610);
    v14 = 0;
  }

  else
  {
    v15 = v1[22];
    v16 = v1[20];
    v26 = v1[19];
    v27 = v1[21];
    v17 = v1[13];
    v25 = v1[14];
    v19 = v1[11];
    v18 = v1[12];
    v21 = v1[9];
    v20 = v1[10];
    v22 = v1[8];
    v14 = sub_21796888C();
    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v25, v18);
    (*(v16 + 8))(v27, v26);
    (*(*(v15 - 8) + 8))(v22, v15);
  }

  v23 = v1[1];

  return v23(v14);
}

uint64_t sub_2179370B0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2179371A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F0, &qword_217971440);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796E3A0;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8290];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_217968E3C();
  v6 = MEMORY[0x277CD85D0];
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  result = sub_2179688CC();
  v8 = MEMORY[0x277CD81E8];
  *(v0 + 80) = result;
  *(v0 + 88) = v8;
  qword_27CB8E720 = v0;
  return result;
}

uint64_t sub_217937270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E0F8, &unk_217971448);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796E3A0;
  v1 = sub_2179689AC();
  v2 = MEMORY[0x277CD8298];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_217968AFC();
  v4 = MEMORY[0x277CD83F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = sub_217968CFC();
  v6 = sub_2179377E8(&qword_27CB8E100, MEMORY[0x277D2B358], MEMORY[0x277D2B338]);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  result = sub_2179688CC();
  v8 = MEMORY[0x277CD81F0];
  *(v0 + 80) = result;
  *(v0 + 88) = v8;
  qword_27CB8E728 = v0;
  return result;
}

uint64_t sub_217937378()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  sub_21796560C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A758, &unk_21796B1B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21796A340;
  v1 = sub_21796884C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_21788C964(v1, v2, v4);
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v5 = sub_217968F7C();

  return v5;
}

uint64_t sub_2179374B4()
{
  v0 = sub_21796599C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2179688CC();
  if (sub_2179687FC())
  {
    sub_21796598C();
    v4 = sub_21796597C();
    (*(v1 + 8))(v3, v0);
    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2179375C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_21796863C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_217937610(uint64_t a1)
{
  v2 = MEMORY[0x277CD8238];
  *(a1 + 16) = sub_2179377E8(qword_27CB8C310, MEMORY[0x277CD8238], MEMORY[0x277CD8250]);
  result = sub_2179377E8(&qword_27CB8BCC8, v2, MEMORY[0x277CD8268]);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_217937714(void *a1)
{
  v2 = MEMORY[0x277CD8238];
  a1[2] = sub_2179377E8(&qword_27CB8CB28, MEMORY[0x277CD8238], MEMORY[0x277CD8260]);
  a1[3] = sub_2179377E8(&qword_27CB8E740, v2, MEMORY[0x277CD8248]);
  a1[4] = sub_2179377E8(qword_27CB8C310, v2, MEMORY[0x277CD8250]);
  result = sub_2179377E8(&qword_27CB8BCC8, v2, MEMORY[0x277CD8268]);
  a1[5] = result;
  return result;
}

uint64_t sub_2179377E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217937830(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21793791C(void *a1)
{
  a1[1] = sub_2179379F0(&qword_27CB8E758, MEMORY[0x277D2ABD8]);
  a1[2] = sub_2179379F0(&qword_27CB8E760, MEMORY[0x277D2AC08]);
  a1[3] = sub_2179379F0(&qword_27CB8E768, MEMORY[0x277D2ABF8]);
  a1[4] = sub_2179379F0(&qword_27CB8E770, MEMORY[0x277D2AC00]);
  result = sub_2179379F0(&qword_27CB8E778, MEMORY[0x277D2AC10]);
  a1[5] = result;
  return result;
}

uint64_t sub_2179379F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21796603C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217937AB8(void *a1)
{
  a1[1] = sub_217937B8C(&qword_27CB8E788, MEMORY[0x277D2AB88]);
  a1[2] = sub_217937B8C(&qword_27CB8E790, MEMORY[0x277D2ABB0]);
  a1[3] = sub_217937B8C(&qword_27CB8E798, MEMORY[0x277D2ABA0]);
  a1[4] = sub_217937B8C(&qword_27CB8E7A0, MEMORY[0x277D2ABA8]);
  result = sub_217937B8C(&qword_27CB8E7A8, MEMORY[0x277D2ABB8]);
  a1[5] = result;
  return result;
}

uint64_t sub_217937B8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217965FEC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_217937BF0()
{
  OUTLINED_FUNCTION_81();
  v35 = v1;
  v31 = v2;
  v32 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7F8, &qword_217971CD8);
  OUTLINED_FUNCTION_48(v6);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v7);
  v34 = &v30 - v8;
  v33 = sub_2179683BC();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  v30 = sub_21796809C();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_49_4();
  v18 = sub_21796814C();
  OUTLINED_FUNCTION_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v30 - v26;
  v5(0);
  sub_21793F4A4(v31, v32, v35);
  sub_2179684BC();
  sub_21796807C();
  (*(v16 + 8))(v0, v30);
  v28 = v34;
  sub_217936444(v34);
  (*(v10 + 8))(v14, v33);
  if (__swift_getEnumTagSinglePayload(v28, 1, v18) == 1)
  {
    sub_2178653BC(v28, &qword_27CB8E7F8, &qword_217971CD8);
  }

  else
  {
    (*(v20 + 32))(v27, v28, v18);
    (*(v20 + 104))(v24, *MEMORY[0x277CD7CD0], v18);
    sub_21796813C();
    v29 = *(v20 + 8);
    v29(v24, v18);
    v29(v27, v18);
  }

  OUTLINED_FUNCTION_80();
}

void sub_217937EFC()
{
  OUTLINED_FUNCTION_81();
  v31 = v1;
  v29 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7F8, &qword_217971CD8);
  OUTLINED_FUNCTION_48(v3);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - v5;
  v30 = sub_2179683BC();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_49_4();
  v9 = sub_21796809C();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  v16 = sub_21796814C();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_5();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v28 - v24;
  v29(0);
  sub_2179684BC();
  sub_21796807C();
  (*(v11 + 8))(v15, v9);
  v26 = v28;
  sub_217936444(v28);
  (*(v7 + 8))(v0, v30);
  if (__swift_getEnumTagSinglePayload(v26, 1, v16) == 1)
  {
    sub_2178653BC(v26, &qword_27CB8E7F8, &qword_217971CD8);
  }

  else
  {
    (*(v18 + 32))(v25, v26, v16);
    (*(v18 + 104))(v22, *MEMORY[0x277CD7CD0], v16);
    sub_21796813C();
    v27 = *(v18 + 8);
    v27(v22, v16);
    v27(v25, v16);
  }

  OUTLINED_FUNCTION_80();
}

void sub_217938234()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v10 = *(v8 + 16);
  v10(v12 - v11, v0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B068, &unk_21796B720);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_2178653BC(v18, &qword_27CB8B070, &unk_217971CA0);
LABEL_6:
    v6[3] = v4;
    v6[4] = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
    v10(boxed_opaque_existential_1, v0, v4);
    goto LABEL_7;
  }

  sub_21784A7D4(v18, v20);
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if ((OUTLINED_FUNCTION_56_5(v16, v18, v14, v13) & 1) == 0)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_2178653BC(v16, &qword_27CB8B088, &qword_21796B740);
    __swift_destroy_boxed_opaque_existential_1(v20);
    goto LABEL_6;
  }

  sub_21784A7D4(v16, v6);
  __swift_destroy_boxed_opaque_existential_1(v20);
LABEL_7:
  OUTLINED_FUNCTION_80();
}

uint64_t sub_217938560(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_10();
  v4(v3);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v13 = OUTLINED_FUNCTION_10_10(v5, v6, v7, v8, v9, v10, v11, v12, v21, v22, v24, v25, v26, v27, v28[0]);
  if ((OUTLINED_FUNCTION_56_5(v13, v14, v15, v16) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v28[3])
  {
LABEL_5:
    result = sub_2178653BC(v28, &qword_27CB8B088, &qword_21796B740);
    v19 = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_42_2(v28);
  v17 = OUTLINED_FUNCTION_54_3();
  v18(v17);
  v19 = v23;
  result = __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_6:
  *v2 = v19;
  return result;
}

double sub_217938684()
{
  v0 = OUTLINED_FUNCTION_52_2();
  v1(v0);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_41_3();
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v10 = OUTLINED_FUNCTION_10_10(v2, v3, v4, v5, v6, v7, v8, v9, v18, v19, v20, v21, v22, v23, v24[0]);
  if ((OUTLINED_FUNCTION_47_4(v10, v11, v12, v13) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v24[3])
  {
LABEL_5:
    sub_2178653BC(v24, &qword_27CB8B088, &qword_21796B740);
    return 1.0;
  }

  OUTLINED_FUNCTION_86_1(v24);
  v14 = OUTLINED_FUNCTION_11_12();
  v16 = v15(v14);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v16;
}

double sub_217938770()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v2 = v1(v0);
  OUTLINED_FUNCTION_57_5(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22, v23, v24, v25, v26[0]);
  if ((OUTLINED_FUNCTION_47_4(v12, v13, v14, v15) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v26[3])
  {
LABEL_5:
    sub_2178653BC(v26, &qword_27CB8B088, &qword_21796B740);
    return 1.0;
  }

  OUTLINED_FUNCTION_86_1(v26);
  v16 = OUTLINED_FUNCTION_11_12();
  v18 = v17(v16);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v18;
}

uint64_t sub_2179388A4(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_16_10();
  v3(v2);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v25, v26, v27, v28, v29[0]);
  if (OUTLINED_FUNCTION_56_5(v12, v13, v14, v15))
  {
    if (v29[3])
    {
      OUTLINED_FUNCTION_42_2(v29);
      v16 = OUTLINED_FUNCTION_15_11();
      v17(v16);
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_4();
  }

  sub_2178653BC(v29, &qword_27CB8B088, &qword_21796B740);
  sub_21796870C();
  v19 = OUTLINED_FUNCTION_3_21();
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_217938B94()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v2 = v1(v0);
  OUTLINED_FUNCTION_57_5(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v28, v30, v32, v34, v36, v37, v38[0]);
  if ((OUTLINED_FUNCTION_47_4(v12, v13, v14, v15) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  v16 = v39;
  if (!v39)
  {
LABEL_5:
    sub_2178653BC(v38, &qword_27CB8B088, &qword_21796B740);
    v16 = 0;
    return v16 & 1;
  }

  OUTLINED_FUNCTION_86_1(v38);
  v17 = OUTLINED_FUNCTION_11_12();
  v19 = v18(v17);
  OUTLINED_FUNCTION_50_4(v19, v20, v21, v22, v23, v24, v25, v26, v29, v31, v33, v35);
  return v16 & 1;
}

uint64_t sub_217938D80()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v2 = v1(v0);
  OUTLINED_FUNCTION_57_5(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v28, v30, v32, v34, v36, v37, v38[0]);
  if ((OUTLINED_FUNCTION_47_4(v12, v13, v14, v15) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  v16 = v39;
  if (!v39)
  {
LABEL_5:
    sub_2178653BC(v38, &qword_27CB8B088, &qword_21796B740);
    v16 = 0;
    return v16 & 1;
  }

  OUTLINED_FUNCTION_86_1(v38);
  v17 = OUTLINED_FUNCTION_11_12();
  v19 = v18(v17);
  OUTLINED_FUNCTION_50_4(v19, v20, v21, v22, v23, v24, v25, v26, v29, v31, v33, v35);
  return v16 & 1;
}

uint64_t sub_217938F6C()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v2 = v1(v0);
  OUTLINED_FUNCTION_57_5(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v28, v30, v32, v34, v36, v37, v38[0]);
  if ((OUTLINED_FUNCTION_47_4(v12, v13, v14, v15) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  v16 = v39;
  if (!v39)
  {
LABEL_5:
    sub_2178653BC(v38, &qword_27CB8B088, &qword_21796B740);
    v16 = 0;
    return v16 & 1;
  }

  OUTLINED_FUNCTION_86_1(v38);
  v17 = OUTLINED_FUNCTION_11_12();
  v19 = v18(v17);
  OUTLINED_FUNCTION_50_4(v19, v20, v21, v22, v23, v24, v25, v26, v29, v31, v33, v35);
  return v16 & 1;
}

uint64_t sub_21793916C(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_16_10();
  v3(v2);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v23, v24, v25, v26, v27, v28, v29[0]);
  if (OUTLINED_FUNCTION_56_5(v12, v13, v14, v15))
  {
    if (v29[3])
    {
      OUTLINED_FUNCTION_42_2(v29);
      v16 = OUTLINED_FUNCTION_15_11();
      v17(v16);
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_4();
  }

  sub_2178653BC(v29, &qword_27CB8B088, &qword_21796B740);
  sub_217965EDC();
  v19 = OUTLINED_FUNCTION_3_21();
  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_217939274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3();
  v8 = *(v7 + 16);

  return v8(a4, a1, v6);
}

uint64_t sub_217939308()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v2 = v1(v0);
  OUTLINED_FUNCTION_57_5(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v20, v21, v22, v23, v24, v25, v26[0]);
  if ((OUTLINED_FUNCTION_47_4(v12, v13, v14, v15) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  if (!v26[3])
  {
LABEL_5:
    sub_2178653BC(v26, &qword_27CB8B088, &qword_21796B740);
    return 0;
  }

  OUTLINED_FUNCTION_86_1(v26);
  v16 = OUTLINED_FUNCTION_11_12();
  v18 = v17(v16);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v18;
}

uint64_t sub_217939560()
{
  v0 = OUTLINED_FUNCTION_18_7();
  v2 = v1(v0);
  OUTLINED_FUNCTION_57_5(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v12 = OUTLINED_FUNCTION_10_10(v4, v5, v6, v7, v8, v9, v10, v11, v28, v30, v32, v34, v36, v37, v38[0]);
  if ((OUTLINED_FUNCTION_47_4(v12, v13, v14, v15) & 1) == 0)
  {
    OUTLINED_FUNCTION_30_4();
    goto LABEL_5;
  }

  v16 = v39;
  if (!v39)
  {
LABEL_5:
    sub_2178653BC(v38, &qword_27CB8B088, &qword_21796B740);
    v16 = 0;
    return v16 & 1;
  }

  OUTLINED_FUNCTION_86_1(v38);
  v17 = OUTLINED_FUNCTION_11_12();
  v19 = v18(v17);
  OUTLINED_FUNCTION_50_4(v19, v20, v21, v22, v23, v24, v25, v26, v29, v31, v33, v35);
  return v16 & 1;
}

void *sub_217939EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = a1;
  v7 = sub_21796711C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8B8, &qword_217971D48);
  MEMORY[0x28223BE20](v21);
  v12 = v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8C0, &qword_217971D50);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  if (sub_217939560())
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8C8, &qword_217971D58);
    (*(*(v16 - 8) + 16))(v15, v20, v16);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8E8D0, &qword_27CB8E8C8, &qword_217971D58, MEMORY[0x277CE04B0]);
    sub_21793F01C();
    return sub_217966F8C();
  }

  else
  {
    v18 = swift_allocObject();
    v19[1] = a4;
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;

    sub_21796710C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8C8, &qword_217971D58);
    sub_217864B2C(&qword_27CB8E8D0, &qword_27CB8E8C8, &qword_217971D58, MEMORY[0x277CE04B0]);
    sub_21796788C();

    (*(v8 + 8))(v10, v7);
    sub_2178AEC6C(v12, v15, &qword_27CB8E8B8, &qword_217971D48);
    swift_storeEnumTagMultiPayload();
    sub_21793F01C();
    sub_217966F8C();
    return sub_2178653BC(v12, &qword_27CB8E8B8, &qword_217971D48);
  }
}

void *sub_21793A260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = a1;
  v7 = sub_21796711C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9D8, &qword_217971DF0);
  MEMORY[0x28223BE20](v21);
  v12 = v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9E0, &qword_217971DF8);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  if (sub_217939560())
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9E8, &qword_217971E00);
    (*(*(v16 - 8) + 16))(v15, v20, v16);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8E9F0, &qword_27CB8E9E8, &qword_217971E00, MEMORY[0x277CE04B0]);
    sub_21793F3BC();
    return sub_217966F8C();
  }

  else
  {
    v18 = swift_allocObject();
    v19[1] = a4;
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;

    sub_21796710C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9E8, &qword_217971E00);
    sub_217864B2C(&qword_27CB8E9F0, &qword_27CB8E9E8, &qword_217971E00, MEMORY[0x277CE04B0]);
    sub_21796788C();

    (*(v8 + 8))(v10, v7);
    sub_2178AEC6C(v12, v15, &qword_27CB8E9D8, &qword_217971DF0);
    swift_storeEnumTagMultiPayload();
    sub_21793F3BC();
    sub_217966F8C();
    return sub_2178653BC(v12, &qword_27CB8E9D8, &qword_217971DF0);
  }
}

void *sub_21793A5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = a1;
  v7 = sub_21796711C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E880, &qword_217971D28);
  MEMORY[0x28223BE20](v21);
  v12 = v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E888, &qword_217971D30);
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  if (sub_217939560())
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E890, &qword_217971D38);
    (*(*(v16 - 8) + 16))(v15, v20, v16);
    swift_storeEnumTagMultiPayload();
    sub_217864B2C(&qword_27CB8E898, &qword_27CB8E890, &qword_217971D38, MEMORY[0x277CE04B0]);
    sub_21793EF34();
    return sub_217966F8C();
  }

  else
  {
    v18 = swift_allocObject();
    v19[1] = a4;
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;

    sub_21796710C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E890, &qword_217971D38);
    sub_217864B2C(&qword_27CB8E898, &qword_27CB8E890, &qword_217971D38, MEMORY[0x277CE04B0]);
    sub_21796788C();

    (*(v8 + 8))(v10, v7);
    sub_2178AEC6C(v12, v15, &qword_27CB8E880, &qword_217971D28);
    swift_storeEnumTagMultiPayload();
    sub_21793EF34();
    sub_217966F8C();
    return sub_2178653BC(v12, &qword_27CB8E880, &qword_217971D28);
  }
}

uint64_t sub_21793AD38(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v3);
  v5 = &v12[-1] - v4;
  (*(v6 + 16))(&v12[-1] - v4, v1, v2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7E8, &qword_217971CD0);
  v9 = OUTLINED_FUNCTION_47_4(v12, v5, v8, v7);
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return v9 ^ 1u;
}

uint64_t sub_21793AE24(uint64_t a1)
{
  OUTLINED_FUNCTION_32_3();
  sub_217937BF0();
  return v1 & 1;
}

uint64_t sub_21793AE74(uint64_t a1)
{
  OUTLINED_FUNCTION_32_3();
  sub_21793AEC4();
  return v1 & 1;
}

void sub_21793AEC4()
{
  OUTLINED_FUNCTION_81();
  v31 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  OUTLINED_FUNCTION_48(v9);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v13 = sub_21796809C();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_5();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_58_4();
  v22 = v8(v21);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v23);
  v25 = OUTLINED_FUNCTION_52_4(v24, v31);
  v26(v25, v0, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7E8, &qword_217971CD0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v32);
    sub_21793F4A4(v6, v4, v31);
    sub_2179684BC();
    sub_21796808C();
    v27 = *(v15 + 8);
    v27(v1, v13);
    v28 = sub_21796862C();
    __swift_getEnumTagSinglePayload(v12, 1, v28);
    sub_2178653BC(v12, &qword_27CB8AC40, &qword_21796B248);
    sub_2179684BC();
    sub_21796806C();
    v30 = v29;
    v27(v19, v13);
    if (v30)
    {
    }
  }

  OUTLINED_FUNCTION_80();
}

void sub_21793B144()
{
  OUTLINED_FUNCTION_81();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  OUTLINED_FUNCTION_48(v4);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_49_4();
  v6 = sub_21796809C();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_5();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_58_4();
  v3(v14);
  sub_2179684BC();
  sub_21796808C();
  v15 = *(v8 + 8);
  v15(v1, v6);
  v16 = sub_21796862C();
  __swift_getEnumTagSinglePayload(v0, 1, v16);
  sub_2178653BC(v0, &qword_27CB8AC40, &qword_21796B248);
  sub_2179684BC();
  sub_21796806C();
  v18 = v17;
  v15(v12, v6);
  if (v18)
  {
  }

  OUTLINED_FUNCTION_80();
}

void sub_21793B2F8()
{
  OUTLINED_FUNCTION_81();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8AC40, &qword_21796B248);
  OUTLINED_FUNCTION_48(v3);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = sub_21796809C();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_5();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = v2(0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_52_4(v19, v26);
  v21(v20, v0, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7E8, &qword_217971CD0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v27);
    sub_2179684BC();
    sub_21796808C();
    v22 = *(v9 + 8);
    v22(v16, v7);
    v23 = sub_21796862C();
    __swift_getEnumTagSinglePayload(v6, 1, v23);
    sub_2178653BC(v6, &qword_27CB8AC40, &qword_21796B248);
    sub_2179684BC();
    sub_21796806C();
    v25 = v24;
    v22(v13, v7);
    if (v25)
    {
    }
  }

  OUTLINED_FUNCTION_80();
}

uint64_t sub_21793B594(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_16_10();
  v4 = v3(v2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(v13 - v6, v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7D8, &qword_217971CB8);
  if (swift_dynamicCast())
  {
    sub_21784A7D4(v13, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    OUTLINED_FUNCTION_15_11();
    sub_217965F0C();
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_2178653BC(v13, &qword_27CB8E7E0, &unk_217971CC0);
    sub_217965EDC();
    v9 = OUTLINED_FUNCTION_3_21();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_21793B6D8(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = a1(0);
  v8 = v4;
  v9 = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v2, v4);
  __swift_project_boxed_opaque_existential_1(v7, v8);
  sub_217965F0C();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_21793B788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E930, &qword_217971D90);
  sub_217864B2C(&qword_27CB8E938, &qword_27CB8E930, &qword_217971D90, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793B910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E870, &qword_217971D20);
  sub_217864B2C(&qword_27CB8E878, &qword_27CB8E870, &qword_217971D20, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793BA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E9C8, &qword_217971DE8);
  sub_217864B2C(&qword_27CB8E9D0, &qword_27CB8E9C8, &qword_217971DE8, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793BC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E830, &qword_217971CF8);
  sub_217864B2C(&qword_27CB8E838, &qword_27CB8E830, &qword_217971CF8, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793BDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E840, &qword_217971D00);
  sub_217864B2C(&qword_27CB8E848, &qword_27CB8E840, &qword_217971D00, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793BF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E980, &qword_217971DC0);
  sub_217864B2C(&qword_27CB8E988, &qword_27CB8E980, &qword_217971DC0, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793C0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E920, &qword_217971D88);
  sub_217864B2C(&qword_27CB8E928, &qword_27CB8E920, &qword_217971D88, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793C240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E7C8, &qword_217971CB0);
  sub_217864B2C(&qword_27CB8E7D0, &qword_27CB8E7C8, &qword_217971CB0, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793C3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8A8, &qword_217971D40);
  sub_217864B2C(&qword_27CB8E8B0, &qword_27CB8E8A8, &qword_217971D40, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793C550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E8E8, &qword_217971D68);
  sub_217864B2C(&qword_27CB8E8F0, &qword_27CB8E8E8, &qword_217971D68, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793C6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E970, &qword_217971DB8);
  sub_217864B2C(&qword_27CB8E978, &qword_27CB8E970, &qword_217971DB8, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793C860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E850, &qword_217971D08);
  sub_217864B2C(&qword_27CB8E858, &qword_27CB8E850, &qword_217971D08, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793C9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E990, &qword_217971DC8);
  sub_217864B2C(&qword_27CB8E998, &qword_27CB8E990, &qword_217971DC8, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793CB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E800, &qword_217971CE0);
  sub_217864B2C(&qword_27CB8E808, &qword_27CB8E800, &qword_217971CE0, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793CCF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E810, &qword_217971CE8);
  sub_217864B2C(&qword_27CB8E818, &qword_27CB8E810, &qword_217971CE8, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793CE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21796711C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  sub_21796710C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8E820, &qword_217971CF0);
  sub_217864B2C(&qword_27CB8E828, &qword_27CB8E820, &qword_217971CF0, MEMORY[0x277CE04B0]);
  sub_21796788C();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21793D3E8(uint64_t a1)
{
  OUTLINED_FUNCTION_31_1();
  sub_217937BF0();
  return v1 & 1;
}

uint64_t sub_21793D438(uint64_t a1)
{
  OUTLINED_FUNCTION_31_1();
  sub_21793AEC4();
  return v1 & 1;
}

uint64_t sub_21793D598(uint64_t a1)
{
  OUTLINED_FUNCTION_30_5();
  sub_217937BF0();
  return v1 & 1;
}

uint64_t sub_21793D5E8(uint64_t a1)
{
  OUTLINED_FUNCTION_30_5();
  sub_21793AEC4();
  return v1 & 1;
}

uint64_t sub_21793D938(uint64_t a1)
{
  OUTLINED_FUNCTION_28_4();
  sub_217937BF0();
  return v1 & 1;
}

uint64_t sub_21793D988(uint64_t a1)
{
  OUTLINED_FUNCTION_28_4();
  sub_21793AEC4();
  return v1 & 1;
}

uint64_t sub_21793DA14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217968C2C();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_21793DA8C(uint64_t a1)
{
  OUTLINED_FUNCTION_27_6();
  sub_217937BF0();
  return v1 & 1;
}

uint64_t sub_21793DADC(uint64_t a1)
{
  OUTLINED_FUNCTION_27_6();
  sub_21793AEC4();
  return v1 & 1;
}

uint64_t sub_21793DBB4@<X0>(uint64_t a1@<X8>)
{
  sub_21796591C();
  sub_21793F4A4(&qword_27CB8D3E8, MEMORY[0x277D2A350], MEMORY[0x277D2A338]);
  sub_217967F0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B078, &unk_21796B730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  if (swift_dynamicCast())
  {
    v2 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v3 = v8;
      __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
      (*(v3 + 88))(v2, v3);
      return __swift_destroy_boxed_opaque_existential_1(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  sub_2178653BC(&v6, &qword_27CB8B088, &qword_21796B740);
  v5 = sub_217968C2C();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
}

uint64_t sub_21793E030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_45_3();
  sub_217937EFC();
  return v3 & 1;
}

uint64_t sub_21793E27C(uint64_t a1)
{
  OUTLINED_FUNCTION_39_5();
  sub_217937BF0();
  return v1 & 1;
}

uint64_t sub_21793E2CC(uint64_t a1)
{
  OUTLINED_FUNCTION_39_5();
  sub_21793AEC4();
  return v1 & 1;
}

uint64_t sub_21793E498(uint64_t a1)
{
  OUTLINED_FUNCTION_38_3();
  sub_217937BF0();
  return v1 & 1;
}

uint64_t sub_21793E4E8(uint64_t a1)
{
  OUTLINED_FUNCTION_38_3();
  sub_21793AEC4();
  return v1 & 1;
}

uint64_t sub_21793E570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43_3();
  sub_217937EFC();
  return v3 & 1;
}

uint64_t sub_21793E62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_44_3();
  sub_217937EFC();
  return v3 & 1;
}

uint64_t sub_21793E7C0(uint64_t a1)
{
  OUTLINED_FUNCTION_37_4();
  sub_217937BF0();
  return v1 & 1;
}

uint64_t sub_21793E810(uint64_t a1)
{
  OUTLINED_FUNCTION_37_4();
  sub_21793AEC4();
  return v1 & 1;
}

uint64_t sub_21793E8C8(uint64_t a1)
{
  OUTLINED_FUNCTION_34_3();
  sub_217937BF0();
  return v1 & 1;
}

uint64_t sub_21793E918(uint64_t a1)
{
  OUTLINED_FUNCTION_34_3();
  sub_21793AEC4();
  return v1 & 1;
}

uint64_t Artwork.Treatment.hashValue.getter()
{
  v1 = *v0;
  sub_21796973C();
  MEMORY[0x21CEA86B0](v1);
  return sub_21796977C();
}

unint64_t sub_21793EA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8E7C0;
  if (!qword_27CB8E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E7C0);
  }

  return result;
}

_BYTE *_s9TreatmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21793EE64(uint64_t a1)
{
  OUTLINED_FUNCTION_23_7();
  sub_217937BF0();
  return v1 & 1;
}

uint64_t sub_21793EEB4(uint64_t a1)
{
  OUTLINED_FUNCTION_23_7();
  sub_21793AEC4();
  return v1 & 1;
}

unint64_t sub_21793EF34()
{
  result = qword_27CB8E8A0;
  if (!qword_27CB8E8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E880, &qword_217971D28);
    sub_217864B2C(&qword_27CB8E898, &qword_27CB8E890, &qword_217971D38, MEMORY[0x277CE04B0]);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E8A0);
  }

  return result;
}

unint64_t sub_21793F01C()
{
  result = qword_27CB8E8D8;
  if (!qword_27CB8E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E8B8, &qword_217971D48);
    sub_217864B2C(&qword_27CB8E8D0, &qword_27CB8E8C8, &qword_217971D58, MEMORY[0x277CE04B0]);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E8D8);
  }

  return result;
}

unint64_t sub_21793F104()
{
  result = qword_27CB8E918;
  if (!qword_27CB8E918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E8F8, &qword_217971D70);
    sub_217864B2C(&qword_27CB8E910, &qword_27CB8E908, &qword_217971D80, MEMORY[0x277CE04B0]);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E918);
  }

  return result;
}

unint64_t sub_21793F1EC()
{
  result = qword_27CB8E960;
  if (!qword_27CB8E960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E940, &qword_217971D98);
    sub_217864B2C(&qword_27CB8E958, &qword_27CB8E950, &qword_217971DA8, MEMORY[0x277CE04B0]);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E960);
  }

  return result;
}

unint64_t sub_21793F2D4()
{
  result = qword_27CB8E9C0;
  if (!qword_27CB8E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E9A0, &qword_217971DD0);
    sub_217864B2C(&qword_27CB8E9B8, &qword_27CB8E9B0, &qword_217971DE0, MEMORY[0x277CE04B0]);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E9C0);
  }

  return result;
}

unint64_t sub_21793F3BC()
{
  result = qword_27CB8E9F8;
  if (!qword_27CB8E9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8E9D8, &qword_217971DF0);
    sub_217864B2C(&qword_27CB8E9F0, &qword_27CB8E9E8, &qword_217971E00, MEMORY[0x277CE04B0]);
    sub_21793F4A4(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8E9F8);
  }

  return result;
}

uint64_t sub_21793F4A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_14_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return sub_21793F4A4(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_46_3()
{

  return sub_21793F4A4(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_47_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_50_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_56_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_57_5(uint64_t a1, uint64_t a2, ...)
{

  return sub_217967F0C();
}

uint64_t sub_21793F958()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_21793FA14(void *a1)
{
  a1[2] = sub_21793FAC4(&qword_27CB8EA18, MEMORY[0x277CD8670]);
  a1[3] = sub_21793FAC4(&qword_27CB8EA20, MEMORY[0x277CD8660]);
  a1[4] = sub_21793FAC4(&qword_27CB8EA28, MEMORY[0x277CD8668]);
  result = sub_21793FAC4(&qword_27CB8EA30, MEMORY[0x277CD8678]);
  a1[5] = result;
  return result;
}

uint64_t sub_21793FAC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217968E6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793FB78()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_21793FC34(void *a1)
{
  a1[2] = sub_21793FCE4(&qword_27CB8EA40, MEMORY[0x277CD8518]);
  a1[3] = sub_21793FCE4(&qword_27CB8EA48, MEMORY[0x277CD8500]);
  a1[4] = sub_21793FCE4(&qword_27CB8EA50, MEMORY[0x277CD8508]);
  result = sub_21793FCE4(&qword_27CB8EA58, MEMORY[0x277CD8520]);
  a1[5] = result;
  return result;
}

uint64_t sub_21793FCE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217968C9C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21793FD98()
{
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  return sub_21796560C();
}

uint64_t sub_21793FE50(void *a1)
{
  a1[2] = sub_21793FF00(&qword_27CB8EA68, MEMORY[0x277CD84C8]);
  a1[3] = sub_21793FF00(&qword_27CB8EA70, MEMORY[0x277CD84B8]);
  a1[4] = sub_21793FF00(&qword_27CB8EA78, MEMORY[0x277CD84C0]);
  result = sub_21793FF00(&qword_27CB8EA80, MEMORY[0x277CD84D0]);
  a1[5] = result;
  return result;
}

uint64_t sub_21793FF00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217968C5C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_21793FFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CB8A380 != -1)
  {
    a1 = OUTLINED_FUNCTION_39_0(&qword_27CB8A380);
  }

  return OUTLINED_FUNCTION_0_20(a1, a2, a3, a4, qword_27CB978B8);
}

uint64_t sub_217940024(void *a1)
{
  a1[1] = sub_2179400F8(&qword_27CB8E7F0, MEMORY[0x277D2AD68]);
  a1[2] = sub_2179400F8(&qword_27CB8EA90, MEMORY[0x277D2AD90]);
  a1[3] = sub_2179400F8(&qword_27CB8EA98, MEMORY[0x277D2AD80]);
  a1[4] = sub_2179400F8(&qword_27CB8EAA0, MEMORY[0x277D2AD88]);
  result = sub_2179400F8(qword_27CB8EAA8, MEMORY[0x277D2AD98]);
  a1[5] = result;
  return result;
}

uint64_t sub_2179400F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21796620C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_21796560C();
}

double sub_217940188@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a4;
  v34 = a5;
  v35 = a3;
  v32 = sub_21796595C();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v11 = sub_217965C6C();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v31 = *a2;
  v20 = a2[1];
  v21 = a2[2];
  v30 = a2[3];
  sub_217965C7C();
  (*(v13 + 104))(v17, *MEMORY[0x277D2A6B0], v11);
  v22 = sub_2178FF2D8();
  v23 = *(v13 + 8);
  v23(v17, v11);
  v23(v19, v11);
  v24 = 0;
  v25 = 0;
  if (v22)
  {
    if (qword_27CB8A380 != -1)
    {
      swift_once();
    }

    v24 = sub_21796560C();
    v25 = v26;
  }

  sub_217965C5C();
  sub_217965C8C();
  OUTLINED_FUNCTION_10();
  (*(v27 + 8))(a1);
  v36[0] = v31;
  v37 = v20;
  v38 = v21;
  v39 = v30;
  v28 = sub_2179425A4(&qword_27CB8B808, MEMORY[0x277D2A460], &unk_217971538);
  *&result = sub_217940474(v10, v36, v24, v25, v32, v34, v35, v28, v33).n128_u64[0];
  return result;
}

__n128 sub_217940474@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9)
{
  v14 = *a2;
  v22 = *(a2 + 8);
  v15 = *(a2 + 3);
  v23[0] = a5;
  v23[1] = a7;
  v23[2] = a8;
  v23[3] = a9;
  v16 = _s16SearchResultCellVMa(0, v23);
  v17 = a6 + v16[15];
  *v17 = xmmword_217971E80;
  *(v17 + 16) = xmmword_217971E90;
  *(v17 + 32) = 0;
  OUTLINED_FUNCTION_10();
  (*(v18 + 32))(a6, a1, a5);
  v19 = a6 + v16[13];
  *v19 = v14;
  result = v22;
  *(v19 + 8) = v22;
  *(v19 + 24) = v15;
  v21 = (a6 + v16[14]);
  *v21 = a3;
  v21[1] = a4;
  return result;
}

uint64_t sub_21794057C(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v14 = 0;
    v17 = v2;
    v18 = &type metadata for MusicPicker.Click.SourceContext;
    sub_217897C74();
    if (v6 > 0x3F)
    {
      return v5;
    }

    else
    {
      v15 = 0;
      v19 = v5;
      v7 = *(a1 + 40);
      v11 = v3;
      v12 = *(a1 + 24);
      v13 = v7;
      v8 = _s16SearchResultCellV9ConstantsVMa(319, &v11);
      v3 = v8;
      if (v9 <= 0x3F)
      {
        v16 = 0;
        v20 = v8;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

_DWORD *sub_217940654(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 >= 0x7FFFFFFE)
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }

    v17 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v16 = v17 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        v16 = v7 + (v10 | v15);
        break;
      default:
        goto LABEL_26;
    }
  }

  return (v16 + 1);
}

void sub_2179407A8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              v17[2] = 0;
              v17[3] = 0;
              *v17 = (a2 - 0x7FFFFFFF);
              v17[1] = 0;
            }

            else
            {
              v17[2] = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2179409B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2179409F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217940A10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_217940A60()
{
  v0 = sub_2179661DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217938234();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B080, &unk_21796E060);
  v4 = swift_dynamicCast();
  if (v4)
  {
    (*(v1 + 8))(v3, v0);
  }

  return v4;
}

uint64_t sub_217940B70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a2;
  v163 = sub_217966FAC();
  OUTLINED_FUNCTION_2();
  v158 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v6 - v5);
  v156 = sub_21796722C();
  OUTLINED_FUNCTION_2();
  v155 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v10 - v9);
  v136 = *(a1 - 1);
  v133 = *(v136 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52(&v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = *(a1 + 2);
  v132 = *(v162 - 8);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_52(v15 - v14);
  v16 = *(a1 + 4);
  v127 = *(a1 + 3);
  v17 = v127;
  v164 = a1;
  *&v126 = v16;
  _s11ArtworkViewVMa(255, v18, v16, v19);
  sub_21796698C();
  sub_21796698C();
  sub_21796732C();
  sub_21796698C();
  v20 = sub_21796944C();
  *(&v126 + 1) = *(a1 + 5);
  v21 = *(&v126 + 1);
  OUTLINED_FUNCTION_3_17();
  WitnessTable = swift_getWitnessTable();
  v23 = MEMORY[0x277CDF918];
  v182 = WitnessTable;
  v183 = MEMORY[0x277CDF918];
  v180 = swift_getWitnessTable();
  v181 = v23;
  v24 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_23();
  v27 = sub_2179425A4(v25, v26, MEMORY[0x277CDE458]);
  v178 = v24;
  v179 = v27;
  v177 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_3();
  v130 = v20;
  v128 = swift_getWitnessTable();
  v28 = v162;
  *&v172 = v162;
  *(&v172 + 1) = v17;
  v173 = v20;
  v174 = v16;
  v175 = v21;
  v176 = v128;
  v29 = _s9HItemCellVMa(0, &v172);
  OUTLINED_FUNCTION_2();
  v131 = v30;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v32);
  OUTLINED_FUNCTION_5_5();
  v33 = swift_getWitnessTable();
  *&v172 = v29;
  *(&v172 + 1) = v33;
  v34 = v29;
  v124 = v29;
  v35 = v33;
  v125 = v33;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v146 = v36;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v38);
  v149 = v39;
  v40 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v152 = v41;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v43);
  *&v172 = v34;
  *(&v172 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v170 = OpaqueTypeConformance2;
  v171 = v27;
  v44 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_24();
  v47 = sub_2179425A4(v45, v46, MEMORY[0x277CDDFA8]);
  v138 = v40;
  *&v172 = v40;
  *(&v172 + 1) = v163;
  v140 = v44;
  v173 = v44;
  v174 = v47;
  v137 = v47;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v143 = v48;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v50);
  v145 = v51;
  sub_21796698C();
  OUTLINED_FUNCTION_2();
  v148 = v52;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_52(v54);
  v150 = v55;
  v153 = sub_21796698C();
  OUTLINED_FUNCTION_2();
  v151 = v56;
  v58 = MEMORY[0x28223BE20](v57);
  v141 = &v123 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_52(&v123 - v60);
  v61 = v165;
  v62 = v28;
  (*(v132 + 16))(v160, v165, v28);
  v63 = v164;
  v64 = v164[14];
  v65 = v61 + v164[13];
  v66 = *(v65 + 8);
  v67 = *(v65 + 16);
  v68 = *(v65 + 24);
  LOBYTE(v172) = *v65;
  *(&v172 + 1) = v66;
  v173 = v67;
  v174 = v68;
  v69 = *(v61 + v64 + 8);
  v132 = *(v61 + v64);
  v123 = v69;
  v70 = v136;
  v71 = v134;
  (*(v136 + 16))(v134, v61, v164);
  v72 = (*(v70 + 80) + 48) & ~*(v70 + 80);
  v73 = swift_allocObject();
  *&v74 = v62;
  v75 = v127;
  *(&v74 + 1) = v127;
  v76 = *(&v126 + 1);
  v77 = v126;
  *(v73 + 16) = v74;
  *(v73 + 32) = v77;
  v78 = v73 + v72;
  v79 = v77;
  (*(v70 + 32))(v78, v71, v63);

  sub_217863EC4(v68);

  v121 = v62;
  v81 = v129;
  sub_2178EFD2C(v160, &v172, 1, 1, 0, 0, 0, 11, v129, 0.0, 1u, v132, v80, 0, v75, sub_2179425EC, v73, v121, v75, v130, v79, v76, v128);
  v82 = v154;
  sub_21796720C();
  v83 = v124;
  sub_2179678AC();
  OUTLINED_FUNCTION_54();
  v84(v82, v156);
  OUTLINED_FUNCTION_54();
  v85(v81, v83);
  if (qword_27CB8A3E8 != -1)
  {
    swift_once();
  }

  v86 = xmmword_27CB979C8;
  v87 = qword_27CB979D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7E8, &unk_21796A990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21796A340;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;

  v89 = sub_21796849C();
  *(inited + 72) = MEMORY[0x277CD7E90];
  *(inited + 48) = v89;
  *(inited + 56) = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A7F0, &unk_21796B180);
  v91 = sub_217968EAC();
  v172 = v86;

  MEMORY[0x21CEA7F50](46, 0xE100000000000000);

  MEMORY[0x21CEA7F50](0xD000000000000010, 0x8000000217971E80);

  sub_2178ED924(v91, v172, *(&v172 + 1), v87);
  v93 = v92;
  v95 = v94;
  v97 = v96;

  v98 = v147;
  v99 = v149;
  v100 = v161;
  sub_2178ED854(v93, v95, v97, v149, OpaqueTypeConformance2);

  OUTLINED_FUNCTION_54();
  v101(v100, v99);
  v102 = v157;
  v103 = v138;
  v104 = v163;
  v105 = v140;
  v106 = v137;
  sub_217884F70(v138);
  OUTLINED_FUNCTION_59();
  v107 = v139;
  sub_21796773C();
  OUTLINED_FUNCTION_54();
  v108(v102, v104);
  OUTLINED_FUNCTION_54();
  v109(v98, v103);
  *&v172 = v103;
  *(&v172 + 1) = v104;
  v173 = v105;
  v174 = v106;
  v110 = swift_getOpaqueTypeConformance2();
  v122 = v145;
  sub_2178935BC(v145);
  v111 = v142;
  sub_2179679AC();
  OUTLINED_FUNCTION_54();
  v112(v107, v122);
  sub_21796743C();
  v168 = v110;
  v169 = MEMORY[0x277CDFC60];
  v113 = v150;
  v114 = swift_getWitnessTable();
  v115 = v141;
  sub_217967A0C();
  OUTLINED_FUNCTION_54();
  v116(v111, v113);
  v166 = v114;
  v167 = MEMORY[0x277CDF918];
  v117 = v153;
  swift_getWitnessTable();
  v118 = v144;
  sub_2179560E4();
  v119 = *(v151 + 8);
  v119(v115, v117);
  sub_2179560E4();
  return (v119)(v118, v117);
}

uint64_t sub_217941980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a3;
  v72 = a6;
  v59 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v58 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s11ArtworkViewVMa(0, v11, v12, v12);
  v60 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = sub_21796698C();
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v61 = &v57 - v17;
  v18 = sub_21796698C();
  v63 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v68 = &v57 - v19;
  sub_21796732C();
  v20 = sub_21796698C();
  v66 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v65 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v64 = &v57 - v23;
  v71 = sub_21796944C();
  v70 = *(v71 - 8);
  v24 = MEMORY[0x28223BE20](v71);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v69 = &v57 - v27;
  *&v92 = a2;
  *(&v92 + 1) = v67;
  v93 = a4;
  v94 = a5;
  _s16SearchResultCellVMa(0, &v92);
  if (sub_217940A60())
  {
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v20);
    WitnessTable = swift_getWitnessTable();
    v28 = MEMORY[0x277CDF918];
    v78 = MEMORY[0x277CDF918];
    v75 = swift_getWitnessTable();
    v76 = v28;
    v29 = swift_getWitnessTable();
    v30 = sub_2179425A4(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v73 = v29;
    v74 = v30;
    swift_getWitnessTable();
    v31 = v26;
  }

  else
  {
    v67 = v26;
    v32 = v58;
    (*(v59 + 16))(v58, a1, a2);
    sub_21790B394(v32, a2, a4, v33);
    sub_21796742C();
    v34 = swift_getWitnessTable();
    v35 = v61;
    sub_217967A0C();
    (*(v60 + 8))(v15, v13);
    sub_21796743C();
    v90 = v34;
    v36 = MEMORY[0x277CDF918];
    v91 = MEMORY[0x277CDF918];
    v37 = swift_getWitnessTable();
    sub_217967A0C();
    (*(v62 + 8))(v35, v16);
    if (qword_27CB8A3F0 != -1)
    {
      swift_once();
    }

    v38 = qword_27CB979F0;
    v92 = xmmword_27CB979E0;

    MEMORY[0x21CEA7F50](46, 0xE100000000000000);

    MEMORY[0x21CEA7F50](0x6B726F77747261, 0xE700000000000000);

    v40 = *(&v92 + 1);
    v39 = v92;
    v88 = v37;
    v89 = v36;
    v41 = v18;
    v42 = swift_getWitnessTable();
    v43 = v65;
    v44 = v39;
    v45 = v68;
    sub_2178ED854(v44, v40, v38, v41, v42);

    (*(v63 + 8))(v45, v41);
    v46 = sub_2179425A4(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v86 = v42;
    v87 = v46;
    swift_getWitnessTable();
    v47 = v64;
    sub_2179560E4();
    v48 = v66;
    v49 = *(v66 + 8);
    v49(v43, v20);
    sub_2179560E4();
    v49(v47, v20);
    v31 = v67;
    (*(v48 + 32))(v67, v43, v20);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v20);
  }

  v50 = v69;
  sub_2178AEE20(v31, v69);
  v51 = *(v70 + 8);
  v52 = v71;
  v51(v31, v71);
  v84 = swift_getWitnessTable();
  v53 = MEMORY[0x277CDF918];
  v85 = MEMORY[0x277CDF918];
  v82 = swift_getWitnessTable();
  v83 = v53;
  v54 = swift_getWitnessTable();
  v55 = sub_2179425A4(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v80 = v54;
  v81 = v55;
  v79 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2179560E4();
  return (v51)(v50, v52);
}

uint64_t sub_217942358()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v1);
  v2 = v0[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v2);
  v3 = v0[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v3);
  v4 = v0[3];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CEA86D0](*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x21CEA86D0](*&v5);
}

uint64_t sub_2179423EC()
{
  sub_21796973C();
  sub_217942358();
  return sub_21796977C();
}

BOOL sub_217942434(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_2179422FC(v5, v7);
}

uint64_t sub_217942504(uint64_t a1)
{
  sub_21796973C();
  sub_217942358();
  return sub_21796977C();
}

uint64_t sub_2179425A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2179425EC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(_s16SearchResultCellVMa(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_217941980(v8, v3, v4, v5, v6, a1);
}

uint64_t sub_2179426C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = *a8;
  v27 = a8[1];
  v20 = *(a8 + 16);
  v28 = *a10;
  _s9ViewModelCMa(0, a14, a17, a4);
  swift_getWitnessTable();
  *a9 = sub_217966ACC();
  *(a9 + 8) = v21;
  *(a9 + 32) = sub_217942878(MEMORY[0x277D84F90]);
  *(a9 + 40) = v22;
  v35[0] = a13;
  v35[1] = a14;
  v35[2] = a15;
  v35[3] = a16;
  v35[4] = a17;
  v23 = _s15LibraryMenuCellVMa(0, v35);
  v24 = a9 + *(v23 + 96);
  *v24 = xmmword_217971FE0;
  *(v24 + 16) = 0x4022000000000000;
  *(a9 + 72) = a1;
  *(a9 + 80) = a2;
  *(a9 + 88) = a3;
  *(a9 + 96) = a4;
  *(a9 + 104) = a5;
  *(a9 + 112) = a6;
  *(a9 + 120) = a7;
  *(a9 + 48) = v19;
  *(a9 + 56) = v27;
  *(a9 + 64) = v20;
  *(a9 + 16) = a7;
  *(a9 + 24) = 0;
  *(a9 + 121) = v28;
  v25 = *(v23 + 92);
  sub_21796820C();
  return a11(a9 + v25);
}

uint64_t sub_217942834(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_217942878(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8EBB0, &qword_217972000);
  sub_217967C0C();
  return v2;
}

void sub_2179428E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[3];
  v6 = a1[6];
  _s9ViewModelCMa(255, v5, v6, a4);
  swift_getWitnessTable();
  v7 = sub_217966ADC();
  if (v8 <= 0x3F)
  {
    v23 = 0;
    v30 = v7;
    sub_21788C240();
    if (v10 <= 0x3F)
    {
      v24 = 0;
      v31 = v9;
      sub_217942ADC(319, &qword_27CB8EC38, qword_27CB8EBB0, &qword_217972000, MEMORY[0x277CE10B8]);
      if (v12 <= 0x3F)
      {
        v25 = 0;
        v32 = v11;
        sub_217942ADC(319, qword_27CB8EC40, qword_27CB8BF10, &qword_21796CF30, MEMORY[0x277CE11F8]);
        if (v14 <= 0x3F)
        {
          v33 = v13;
          v34 = MEMORY[0x277D837D0];
          v26 = 0;
          v35 = MEMORY[0x277D837D0];
          v36 = MEMORY[0x277D837D0];
          v27 = 0;
          v37 = MEMORY[0x277D839B0];
          v38 = &type metadata for MusicPicker.Click.LibraryMenuItemID;
          v15 = a1[2];
          v16 = a1[4];
          v17 = sub_21796821C();
          if (v18 <= 0x3F)
          {
            v28 = 0;
            v39 = v17;
            v19 = a1[5];
            v22[0] = v15;
            v22[1] = v5;
            v22[2] = v16;
            v22[3] = v19;
            v22[4] = v6;
            v20 = _s15LibraryMenuCellV9ConstantsVMa(319, v22);
            if (v21 <= 0x3F)
            {
              v29 = 0;
              v40 = v20;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_217942ADC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_217942B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217942BB0()
{
  if (*(v0 + 120))
  {
    return 1;
  }

  v2 = v0;
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v18 = v3;
  v19 = v4;
  v20 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED20, &qword_217972168);
  MEMORY[0x21CEA6C70](&v17);
  v7 = v17;
  if (v17 != 6)
  {
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v18 = v9;
    v19 = v8;
    v16 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED58, &qword_217972178);
    sub_217967C1C();
    v10 = sub_217942834(v7, v17);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      v18 = v9;
      v19 = v16;
      sub_217967C1C();
      v13 = sub_217942834(*(v0 + 121), v17);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          return result;
        }

        if (v10 == v13 + 1)
        {
          return 1;
        }
      }
    }
  }

  v18 = v3;
  v19 = v4;
  v20 = v5;
  MEMORY[0x21CEA6C70](&v17, v6);
  return v17 != 6 && *(v2 + 121) == v17;
}

uint64_t sub_217942D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECC8, &qword_217972130);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_52(&v107 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECD0, &qword_217972138);
  v7 = OUTLINED_FUNCTION_48(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_88();
  v123 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52(&v107 - v10);
  v120 = *(a1 - 8);
  MEMORY[0x28223BE20](v11);
  v132 = v12;
  OUTLINED_FUNCTION_52(&v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_217966FAC();
  v14 = OUTLINED_FUNCTION_8_5(v13, &v143);
  v125 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_52(&v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_21796722C();
  v18 = OUTLINED_FUNCTION_8_5(v17, &v142 + 1);
  v113 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  v133 = *(a1 + 32);
  v23 = _s35LibrarySectionContentViewPropertiesVMa(255, v22, v133, *(&v133 + 1));
  v24 = sub_21796944C();
  OUTLINED_FUNCTION_48(v24);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v25);
  v27 = &v107 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECD8, &qword_217972140);
  OUTLINED_FUNCTION_8_5(v28, &v138);
  v30 = v29;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v31);
  v33 = &v107 - v32;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECE0, &qword_217972148);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v34);
  v36 = &v107 - v35;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECE8, &qword_217972150);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v37);
  v39 = &v107 - v38;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECF0, &qword_217972158);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_52(&v107 - v41);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECF8, &qword_217972160);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_88();
  v118 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_52(&v107 - v45);
  sub_2179438FC(a1, v27);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v23);
  v130 = *(a1 + 24);
  v131 = v22;
  v134 = v22;
  v135 = v130;
  v136 = v133;
  v108 = a1;
  v129 = *(a1 + 48);
  v137 = v129;
  v138 = v2;
  v112 = v2;
  _s8MenuCellVMa(0);
  sub_217944D18(&qword_27CB8ED00, _s8MenuCellVMa, &unk_217973104);
  swift_getWitnessTable();
  sub_21796687C();
  if (qword_27CB8A408 != -1)
  {
    swift_once();
  }

  sub_2178EE0A8(qword_27CB97A28, unk_27CB97A30, qword_27CB97A38);
  sub_217864B2C(&qword_27CB8ED08, &qword_27CB8ECD8, &qword_217972140, MEMORY[0x277CDD938]);
  v46 = v110;
  sub_21796790C();

  (*(v30 + 8))(v33, v46);
  sub_21796720C();
  sub_217944484();
  sub_2179678AC();
  (*(v113 + 8))(v21, v114);
  sub_2178653BC(v36, &qword_27CB8ECE0, &qword_217972148);
  v47 = v108;
  v48 = v112;
  v114 = v112 + *(v108 + 96);
  v49 = *(v114 + 16);
  v50 = &v39[*(v111 + 36)];
  v51 = *(sub_217966A2C() + 20);
  v52 = *MEMORY[0x277CE0118];
  sub_217966DAC();
  OUTLINED_FUNCTION_3();
  (*(v53 + 104))(&v50[v51], v52);
  *v50 = v49;
  *(v50 + 1) = v49;
  v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ADF0, &qword_21796B500) + 36)] = 0;
  v54 = v116;
  sub_217966A8C();
  sub_21794456C();
  sub_217944D18(&qword_27CB8AE00, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  v55 = v128;
  v56 = v126;
  sub_21796773C();
  (*(v125 + 8))(v54, v56);
  sub_2178653BC(v39, &qword_27CB8ECE8, &qword_217972150);
  v57 = v120;
  v58 = v48;
  v125 = *(v120 + 2);
  v126 = v120 + 16;
  v59 = v119;
  (v125)(v119, v48, v47);
  v60 = *(v57 + 80);
  v61 = OUTLINED_FUNCTION_6_10(&unk_282990EC0);
  *&v62 = v131;
  v63 = v129;
  *(&v62 + 1) = v130;
  v64 = v133;
  *(v61 + 16) = v62;
  *(v61 + 32) = v64;
  *(v61 + 48) = v63;
  v65 = *(v57 + 4);
  v65(v61 + ((v60 + 56) & ~v60), v59, v47);
  v120 = v65;
  v66 = (v55 + *(v127 + 36));
  *v66 = sub_217944660;
  v66[1] = v61;
  v67 = *(v48 + 56);
  v68 = *(v48 + 64);
  v139 = *(v48 + 48);
  v140 = v67;
  v141 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED20, &qword_217972168);
  MEMORY[0x21CEA6C70](&v142, v69);
  LOBYTE(v139) = v142;
  v70 = OUTLINED_FUNCTION_3_25();
  v71(v70);
  v72 = OUTLINED_FUNCTION_6_10(&unk_282990EE8);
  v73 = OUTLINED_FUNCTION_2_15(v72);
  (v65)(v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB8BF10, &qword_21796CF30);
  sub_217944728();
  sub_217944894();
  v74 = v115;
  v75 = v128;
  sub_217967A6C();

  sub_2178653BC(v75, &qword_27CB8ECF0, &qword_217972158);
  v76 = OUTLINED_FUNCTION_3_25();
  v77(v76);
  v78 = OUTLINED_FUNCTION_6_10(&unk_282990F10);
  v79 = OUTLINED_FUNCTION_2_15(v78);
  (v120)(v79);
  v80 = 1;
  v81 = (v74 + *(v117 + 36));
  *v81 = sub_217944AB0;
  v81[1] = v61;
  v81[2] = 0;
  v81[3] = 0;
  v82 = v122;
  v83 = v121;
  if ((*(v58 + 120) & 1) == 0)
  {
    v84 = *(v58 + 24);
    LOBYTE(v139) = *(v58 + 16);
    v140 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
    sub_217967C1C();
    if (v142)
    {
      v80 = 1;
    }

    else
    {
      v85 = v107;
      sub_217967D6C();
      v86 = sub_21796742C();
      sub_21796660C();
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v94 = v93;
      v95 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A780, &qword_21796C770) + 36);
      *v95 = v86;
      *(v95 + 8) = v88;
      *(v95 + 16) = v90;
      *(v95 + 24) = v92;
      *(v95 + 32) = v94;
      *(v95 + 40) = 0;
      v96 = sub_21796743C();
      sub_21796660C();
      v97 = v85 + *(v82 + 36);
      *v97 = v96;
      *(v97 + 8) = v98;
      *(v97 + 16) = v99;
      *(v97 + 24) = v100;
      *(v97 + 32) = v101;
      *(v97 + 40) = 0;
      sub_217944B70(v85, v83);
      v80 = 0;
    }
  }

  __swift_storeEnumTagSinglePayload(v83, v80, 1, v82);
  v102 = v118;
  sub_21785588C(v74, v118);
  v103 = v123;
  sub_217944BE0(v83, v123);
  v104 = v124;
  sub_21785588C(v102, v124);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED48, &qword_217972170);
  sub_217944BE0(v103, v104 + *(v105 + 48));
  sub_2178653BC(v83, &qword_27CB8ECD0, &qword_217972138);
  sub_2178653BC(v74, &qword_27CB8ECF8, &qword_217972160);
  sub_2178653BC(v103, &qword_27CB8ECD0, &qword_217972138);
  return sub_2178653BC(v102, &qword_27CB8ECF8, &qword_217972160);
}

double sub_2179438FC@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = sub_21796821C();
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8];
  v10 = *(v2 + 72);
  v11 = *(v2 + 80);
  v12 = *(v2 + 104);
  v13 = *(v2 + 112);
  (*(v14 + 16))(&v16[-v8], v2 + *(a1 + 92));
  v17 = *(v2 + 121);
  sub_21790AD88(v10, v11, v12, v13, v9, &v17, v5, v6, a2, *(a1 + 40));

  return result;
}

double sub_217943A3C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[9];
  v3 = a1[10];
  v6 = a1[11];
  v5 = a1[12];
  __asm { FMOV            V0.2D, #8.0 }

  *(a2 + 40) = _Q0;
  *(a2 + 56) = xmmword_217971FF0;
  v12 = *(_s8MenuCellVMa(0) + 32);
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED60, &qword_2179721B0);
  swift_storeEnumTagMultiPayload();
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;

  return result;
}

double sub_217943AF0(char a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
    sub_217967C2C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED20, &qword_217972168);
  sub_217967D1C();

  return result;
}

uint64_t sub_217943BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  _s15LibraryMenuCellVMa(0, &v9);
  sub_217942BB0();
  v7 = *(a1 + 24);
  LOBYTE(v9) = *(a1 + 16);
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A740, &unk_21796B560);
  return sub_217967C2C();
}

uint64_t sub_217943C48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_21796858C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  v73 = a1;
  v17 = *a1;
  v16 = a1[1];
  v19 = _s9ViewModelCMa(0, a3, a6, v18);
  WitnessTable = swift_getWitnessTable();
  v71 = v16;
  v72 = v17;
  v69 = WitnessTable;
  v70 = v19;
  v21 = sub_217966A9C();
  sub_2178D860C(v21, v22, v23, v24, v25, v26, v27, v28, v68, v69, v70, v71, v72, v73);
  v30 = v29;

  v31 = 0;
  v87 = *(v30 + 16);
  v86 = v10 + 88;
  v32 = *MEMORY[0x277D2AF40];
  v85 = *MEMORY[0x277D2AF58];
  v84 = *MEMORY[0x277D2AF20];
  v83 = *MEMORY[0x277D2AF60];
  v82 = *MEMORY[0x277D2AF48];
  v81 = *MEMORY[0x277D2AF18];
  v80 = *MEMORY[0x277D2AF68];
  v79 = *MEMORY[0x277D2AF38];
  v78 = *MEMORY[0x277D2AF30];
  v77 = *MEMORY[0x277D2AF50];
  v76 = *MEMORY[0x277D2AF28];
  v33 = (v10 + 8);
  v75 = MEMORY[0x277D84F90];
  while (v87 != v31)
  {
    if (v31 >= *(v30 + 16))
    {
      __break(1u);
LABEL_48:
      sub_2178E82E4();
      v58 = v62;
      goto LABEL_39;
    }

    v34 = *(v10 + 16);
    v34(v15, v30 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, v9);
    v34(v13, v15, v9);
    v35 = (*(v10 + 88))(v13, v9);
    if (v35 == v32)
    {
      v41 = 1;
LABEL_31:
      v74 = v41;
LABEL_32:
      (*v33)(v15, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2178E82E4();
        v75 = v45;
      }

      v42 = *(v75 + 16);
      v43 = v42 + 1;
      if (v42 >= *(v75 + 24) >> 1)
      {
        v68 = v42 + 1;
        sub_2178E82E4();
        v43 = v68;
        v75 = v46;
      }

      ++v31;
      v44 = v75;
      *(v75 + 16) = v43;
      *(v44 + v42 + 32) = v74;
    }

    else
    {
      if (v35 == v85)
      {
        v74 = 0;
        goto LABEL_32;
      }

      if (v35 == v84 || v35 == v83 || v35 == v82 || v35 == v81)
      {
        goto LABEL_26;
      }

      if (v35 == v80)
      {
        v41 = 3;
        goto LABEL_31;
      }

      if (v35 == v79)
      {
        v41 = 2;
        goto LABEL_31;
      }

      if (v35 != v78 && v35 != v77 && v35 != v76)
      {
        v92 = 0;
        v93 = 0xE000000000000000;
        sub_21796950C();

        v92 = 0xD000000000000029;
        v93 = 0x8000000217976CF0;
        sub_217944D18(&qword_27CB8ED50, MEMORY[0x277D2AF70], MEMORY[0x277D2AF80]);
        v66 = sub_21796966C();
        MEMORY[0x21CEA7F50](v66);

        MEMORY[0x21CEA7F50](46, 0xE100000000000000);
        result = sub_21796959C();
        __break(1u);
        return result;
      }

LABEL_26:
      (*v33)(v15, v9);
      ++v31;
    }
  }

  v9 = v73[4];
  v15 = v73[5];
  v92 = v9;
  v93 = v15;
  v89 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ED58, &qword_217972178);
  sub_217967C2C();
  v47 = sub_217966A9C();
  sub_2178D860C(v47, v48, v49, v50, v51, v52, v53, v54, v68, v69, v70, v71, v72, v73);
  v56 = v55;

  v57 = *(v56 + 16);

  if (!v57)
  {
    return result;
  }

  v92 = v9;
  v93 = v15;

  sub_217967C1C();
  v58 = v91;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_39:
  v59 = *(v58 + 16);
  if (v59 >= *(v58 + 24) >> 1)
  {
    sub_2178E82E4();
    v58 = v63;
  }

  *(v58 + 16) = v59 + 1;
  *(v58 + v59 + 32) = 4;
  v89 = v9;
  v90 = v15;
  v88 = v58;
  sub_217967C2C();
  v92 = v9;
  v93 = v15;
  sub_217967C1C();
  v60 = v91;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2178E82E4();
    v60 = v64;
  }

  v61 = *(v60 + 16);
  if (v61 >= *(v60 + 24) >> 1)
  {
    sub_2178E82E4();
    v60 = v65;
  }

  *(v60 + 16) = v61 + 1;
  *(v60 + v61 + 32) = 5;
  v89 = v9;
  v90 = v15;
  v88 = v60;
  sub_217967C2C();
}

uint64_t sub_2179442D4(double a1, double a2, double a3)
{
  sub_21796973C();
  sub_217910C74(a1, a2, a3);
  return sub_21796977C();
}

uint64_t sub_2179443D0(uint64_t a1)
{
  sub_21796973C();
  sub_217910C74(*v1, v1[1], v1[2]);
  return sub_21796977C();
}

unint64_t sub_217944484()
{
  result = qword_27CB8ED10;
  if (!qword_27CB8ED10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ECE0, &qword_217972148);
    sub_217864B2C(&qword_27CB8ED08, &qword_27CB8ECD8, &qword_217972140, MEMORY[0x277CDD938]);
    sub_217944D18(&qword_27CB8A710, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED10);
  }

  return result;
}

unint64_t sub_21794456C()
{
  result = qword_27CB8ED18;
  if (!qword_27CB8ED18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ECE8, &qword_217972150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ECE0, &qword_217972148);
    sub_217944484();
    swift_getOpaqueTypeConformance2();
    sub_217864B2C(&qword_27CB8ADF8, &qword_27CB8ADF0, &qword_21796B500, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED18);
  }

  return result;
}

double sub_217944660(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v10[0] = v1[2];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v6 = _s15LibraryMenuCellVMa(0, v10);
  OUTLINED_FUNCTION_48(v6);
  OUTLINED_FUNCTION_9_15();

  return sub_217943AF0(v7, v8);
}

unint64_t sub_217944728()
{
  result = qword_27CB8ED28;
  if (!qword_27CB8ED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ECF0, &qword_217972158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8ECE8, &qword_217972150);
    sub_217966FAC();
    sub_21794456C();
    sub_217944D18(&qword_27CB8AE00, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_217944840(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED28);
  }

  return result;
}

unint64_t sub_217944840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8ED30;
  if (!qword_27CB8ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED30);
  }

  return result;
}

unint64_t sub_217944894()
{
  result = qword_27CB8ED38;
  if (!qword_27CB8ED38)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CB8BF10, &qword_21796CF30);
    sub_217944918(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED38);
  }

  return result;
}

unint64_t sub_217944918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8ED40;
  if (!qword_27CB8ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8ED40);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 48);
  v7 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v7;
  v9 = v1;
  v2 = (_s15LibraryMenuCellVMa(0, v8) - 8);
  v3 = v0 + ((*(*v2 + 80) + 56) & ~*(*v2 + 80));

  v4 = v2[25];
  sub_21796821C();
  OUTLINED_FUNCTION_3();
  (*(v5 + 8))(v3 + v4);
  return swift_deallocObject();
}

uint64_t sub_217944AC8(uint64_t (*a1)(void))
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v9[0] = v1[2];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v9[4] = v5;
  v6 = _s15LibraryMenuCellVMa(0, v9);
  OUTLINED_FUNCTION_48(v6);
  OUTLINED_FUNCTION_9_15();

  return a1();
}

uint64_t sub_217944B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECC8, &qword_217972130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217944BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8ECD0, &qword_217972138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217944C50(uint64_t a1)
{
  v2 = sub_217966E2C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_217966B5C();
}

uint64_t sub_217944D18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{
  v3 = *(v2 - 248);
  *(a1 + 16) = *(v2 - 240);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(v2 - 224);
  *(a1 + 48) = *(v2 - 256);
  return a1 + v1;
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_217944DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_217946D3C(a1, a2, a3);

  return sub_217966CCC();
}

uint64_t sub_217944E80(uint64_t a1)
{
  v2 = sub_217946CCC(a1, v6);
  sub_217946D3C(v2, v3, v4);
  sub_217966CDC();
  return sub_2178653BC(a1, &qword_27CB8A630, qword_21796A7B0);
}

uint64_t static MusicPicker.PageID.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = sub_21796595C();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = *a1;
  v14 = *a2;
  switch(v13 >> 61)
  {
    case 1uLL:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A588, &unk_21796ACE0);
      v26 = swift_projectBox();
      if (v14 >> 61 != 1)
      {
        goto LABEL_20;
      }

      v27 = v26;
      v28 = *(v25 + 48);
      v43 = *(v26 + v28);
      v44 = *(v26 + v28 + 8);
      v42 = *(v26 + v28 + 24);
      v29 = swift_projectBox();
      v41 = *(v29 + v28);
      v30 = *(v29 + v28 + 16);
      v40 = *(v29 + v28 + 8);
      v45 = *(v29 + v28 + 24);
      v46 = v30;
      v31 = *(v6 + 16);
      v31(v12, v27, v4);
      v32 = v29;
      v33 = v45;
      v31(v10, v32, v4);
      v34 = v46;
      v35 = OUTLINED_FUNCTION_8_13();
      sub_217863EC4(v35);

      sub_217863EC4(v33);
      if (sub_21796593C())
      {
        v50[0] = v43;
        v51 = v44;
        v52 = v42;
        v47[0] = v41;
        *&v48 = v40;
        *(&v48 + 1) = v34;
        v49 = v33;
        v24 = static MusicPicker.Click.SourceContext.== infix(_:_:)(v50, v47);
        v36 = *(v6 + 8);
        v36(v10, v4);
        v36(v12, v4);

        sub_2178643E0(v33);
        goto LABEL_16;
      }

      sub_2178643E0(v33);
      v39 = *(v6 + 8);
      v39(v10, v4);
      v39(v12, v4);
      goto LABEL_23;
    case 2uLL:
      if (v14 >> 61 != 2)
      {
        goto LABEL_20;
      }

      v20 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v21 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v50[0] = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v51 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v52 = v20;
      v47[0] = v21;
      v48 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v49 = v22;
      goto LABEL_10;
    case 3uLL:
      if (v14 >> 61 != 3)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_4_19();
      v24 = v14 == v13;
      return v24 & 1;
    case 4uLL:
      if (v13 == 0x8000000000000000)
      {
        if (v14 != 0x8000000000000000)
        {
          goto LABEL_21;
        }

        sub_2178643E0(0x8000000000000000);
        v19 = 0x8000000000000000;
      }

      else
      {
        if (v14 != 0x8000000000000001)
        {
          goto LABEL_21;
        }

        sub_2178643E0(0x8000000000000001);
        v19 = 0x8000000000000001;
      }

      sub_2178643E0(v19);
      v24 = 1;
      return v24 & 1;
    default:
      if (v14 >> 61)
      {
LABEL_20:

LABEL_21:
        v37 = v14;
        goto LABEL_22;
      }

      if (*(v13 + 16) != *(v14 + 16))
      {
        v37 = OUTLINED_FUNCTION_8_13();
LABEL_22:
        sub_217863EC4(v37);
LABEL_23:
        OUTLINED_FUNCTION_4_19();
        v24 = 0;
        return v24 & 1;
      }

      v15 = *(v13 + 32);
      v16 = *(v13 + 48);
      v17 = *(v14 + 48);
      v18 = *(v14 + 24);
      v50[0] = *(v13 + 24);
      v51 = v15;
      v52 = v16;
      v47[0] = v18;
      v48 = *(v14 + 32);
      v49 = v17;
LABEL_10:
      v23 = OUTLINED_FUNCTION_8_13();
      sub_217863EC4(v23);
      v24 = static MusicPicker.Click.SourceContext.== infix(_:_:)(v50, v47);
LABEL_16:
      OUTLINED_FUNCTION_4_19();
      return v24 & 1;
  }
}

uint64_t static MusicPicker.Click.SourceContext.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[2];
  v6 = a2[3];
  if (v3)
  {
    if (v5)
    {
      v7 = a1[1] == a2[1] && v3 == v5;
      if (v7 || (sub_21796969C() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  v11 = v6;
  v12 = v4;
  v8 = OUTLINED_FUNCTION_8_13();
  sub_217863EC4(v8);
  v9 = static MusicPicker.PageID.== infix(_:_:)(&v12, &v11);
  OUTLINED_FUNCTION_4_19();
  return v9 & 1;
}

uint64_t MusicPicker.PageID.hash(into:)(uint64_t a1)
{
  v3 = sub_21796595C();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  v10 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A588, &unk_21796ACE0);
      v18 = swift_projectBox();
      v19 = (v18 + *(v17 + 48));
      v20 = *v19;
      v21 = *(v19 + 2);
      v22 = *(v19 + 3);
      (*(v5 + 16))(v9, v18, v3);
      MEMORY[0x21CEA86B0](3);

      sub_217863EC4(v22);
      sub_217946204(&qword_27CB8E1B8, MEMORY[0x277D2A460], MEMORY[0x277D2A470]);
      sub_217968ECC();
      MEMORY[0x21CEA86B0](v20);
      if (v21)
      {
        OUTLINED_FUNCTION_6_11();
        sub_217968FCC();
      }

      else
      {
        OUTLINED_FUNCTION_5_14();
      }

      MusicPicker.PageID.hash(into:)(a1);
      (*(v5 + 8))(v9, v3);

      return sub_2178643E0(v22);
    case 2uLL:
      v15 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      MEMORY[0x21CEA86B0](4);
      MEMORY[0x21CEA86B0](v15);
      if (!v16)
      {
        goto LABEL_11;
      }

      goto LABEL_3;
    case 3uLL:
      MEMORY[0x21CEA86B0](5);
      v14 = v10;
      goto LABEL_10;
    case 4uLL:
      v14 = v10 != 0x8000000000000000;
LABEL_10:
      result = MEMORY[0x21CEA86B0](v14);
      break;
    default:
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = *(v10 + 40);
      MEMORY[0x21CEA86B0](2);
      MEMORY[0x21CEA86B0](v11);
      MEMORY[0x21CEA86B0](v12);
      if (v13)
      {
LABEL_3:
        OUTLINED_FUNCTION_6_11();
        OUTLINED_FUNCTION_3_26();
      }

      else
      {
LABEL_11:
        OUTLINED_FUNCTION_5_14();
      }

      result = MusicPicker.PageID.hash(into:)(a1);
      break;
  }

  return result;
}

uint64_t MusicPicker.PageID.hashValue.getter()
{
  v2[9] = *v0;
  sub_21796973C();
  MusicPicker.PageID.hash(into:)(v2);
  return sub_21796977C();
}

uint64_t sub_21794567C(uint64_t a1)
{
  v3[9] = *v1;
  sub_21796973C();
  MusicPicker.PageID.hash(into:)(v3);
  return sub_21796977C();
}

uint64_t MusicPicker.Click.SourceContext.sectionTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t MusicPicker.Click.SourceContext.pageID.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_217863EC4(v2);
}

uint64_t MusicPicker.Click.SourceContext.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 2);
  MEMORY[0x21CEA86B0](*v1);
  if (v3)
  {
    OUTLINED_FUNCTION_6_11();
    OUTLINED_FUNCTION_3_26();
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
  }

  return MusicPicker.PageID.hash(into:)(a1);
}

uint64_t MusicPicker.Click.SourceContext.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  OUTLINED_FUNCTION_9_16(a1);
  MEMORY[0x21CEA86B0](v2);
  sub_21796975C();
  if (v3)
  {
    sub_217968FCC();
  }

  MusicPicker.PageID.hash(into:)(v5);
  return sub_21796977C();
}

uint64_t sub_21794581C(uint64_t a1)
{
  v2 = *(v1 + 3);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v2;
  sub_21796973C();
  MusicPicker.Click.SourceContext.hash(into:)(v4);
  return sub_21796977C();
}

uint64_t static MusicPicker.Click.ControlID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21796843C();
  OUTLINED_FUNCTION_2();
  v30 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  type metadata accessor for MusicPicker.Click.ControlID(0);
  OUTLINED_FUNCTION_3();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EDA0, &qword_2179721C8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  sub_217945E54(a1, &v29 - v21);
  sub_217945E54(a2, &v22[v23]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_217945E54(v22, v16);
      if (OUTLINED_FUNCTION_7_14() == 1)
      {
        v26 = v30;
        (*(v30 + 32))(v9, &v22[v23], v4);
        v25 = sub_21796841C();
        v27 = *(v26 + 8);
        v27(v9, v4);
        v27(v16, v4);
        goto LABEL_11;
      }

      (*(v30 + 8))(v16, v4);
      goto LABEL_13;
    case 2u:
      sub_217945E54(v22, v13);
      if (OUTLINED_FUNCTION_7_14() != 2)
      {
        goto LABEL_13;
      }

      v24 = *v13;
      goto LABEL_6;
    case 3u:
      if (OUTLINED_FUNCTION_7_14() != 3)
      {
        goto LABEL_13;
      }

      sub_21792C198(v22);
      v25 = 1;
      return v25 & 1;
    default:
      sub_217945E54(v22, v18);
      if (OUTLINED_FUNCTION_7_14())
      {
LABEL_13:
        sub_2178653BC(v22, &qword_27CB8EDA0, &qword_2179721C8);
        v25 = 0;
      }

      else
      {
        v24 = *v18;
LABEL_6:
        v25 = v24 == v22[v23];
LABEL_11:
        sub_21792C198(v22);
      }

      return v25 & 1;
  }
}

uint64_t MusicPicker.Click.ControlID.hash(into:)(uint64_t a1)
{
  v2 = sub_21796843C();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  type metadata accessor for MusicPicker.Click.ControlID(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14();
  v12 = (v11 - v10);
  sub_217945E54(v1, v11 - v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v4 + 32))(v8, v12, v2);
      MEMORY[0x21CEA86B0](2);
      sub_217946204(&qword_27CB8EDA8, MEMORY[0x277CD7DC8], MEMORY[0x277CD7DD0]);
      sub_217968ECC();
      return (*(v4 + 8))(v8, v2);
    case 2u:
      v13 = *v12;
      v14 = 3;
      goto LABEL_4;
    case 3u:
      v15 = 0;
      return MEMORY[0x21CEA86B0](v15);
    default:
      v13 = *v12;
      v14 = 1;
LABEL_4:
      MEMORY[0x21CEA86B0](v14);
      v15 = v13;
      return MEMORY[0x21CEA86B0](v15);
  }
}

uint64_t MusicPicker.Click.ControlID.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_9_16(a1);
  MusicPicker.Click.ControlID.hash(into:)(v2);
  return sub_21796977C();
}

uint64_t sub_217945D78(uint64_t a1)
{
  sub_21796973C();
  MusicPicker.Click.ControlID.hash(into:)(v2);
  return sub_21796977C();
}

uint64_t type metadata accessor for MusicPicker.Click.ControlID(uint64_t a1)
{
  result = qword_27CB8EE20;
  if (!qword_27CB8EE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217945E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPicker.Click.ControlID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217945F08(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_16(a1);
  MEMORY[0x21CEA86B0](v2);
  return sub_21796977C();
}

double sub_217945FAC()
{
  qword_27CB8ED98 = 0;
  result = 0.0;
  xmmword_27CB8ED78 = 0u;
  unk_27CB8ED88 = 0u;
  return result;
}

uint64_t sub_217945FC4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2811AD4A0 != -1)
  {
    swift_once();
  }

  return sub_217946CCC(&xmmword_27CB8ED78, a1);
}

uint64_t View.musicPickerUserExperienceObserver<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v10[3] = a3;
  v10[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_21796772C();

  return sub_2178653BC(v10, &qword_27CB8A630, qword_21796A7B0);
}

unint64_t sub_217946110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EDB0;
  if (!qword_27CB8EDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EDB0);
  }

  return result;
}

unint64_t sub_217946168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EDB8;
  if (!qword_27CB8EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EDB8);
  }

  return result;
}

uint64_t sub_217946204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2179462DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EDE0;
  if (!qword_27CB8EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EDE0);
  }

  return result;
}

unint64_t sub_217946378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EDF8;
  if (!qword_27CB8EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EDF8);
  }

  return result;
}

unint64_t sub_217946414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EE10;
  if (!qword_27CB8EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE10);
  }

  return result;
}

unint64_t sub_21794646C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EE18;
  if (!qword_27CB8EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE18);
  }

  return result;
}

uint64_t sub_217946508(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC && *(a1 + 8))
    {
      v2 = *a1 + 11;
    }

    else
    {
      v2 = (((*a1 >> 60) >> 1) & 0xFFFFFFF7 | (8 * ((*a1 & 0x1000000000000000) != 0))) ^ 0xF;
      if (v2 >= 0xB)
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

uint64_t sub_217946554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 3) & 1) - 2 * a2) << 60;
    }
  }

  return result;
}

unint64_t *sub_2179465B0(unint64_t *result, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 61);
  }

  else
  {
    v2 = (a2 - 4) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

_BYTE *_s5ClickVwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_217946690(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2179466E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_217946750(uint64_t a1)
{
  result = sub_21796843C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s5ClickV17LibraryMenuItemIDOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5ClickV17LibraryMenuItemIDOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t _s5ClickV13SearchGroupIDOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s5ClickV13SearchGroupIDOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s5ClickV11ControlKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s5ClickV10ActionKindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5ClickV10ActionKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_217946CCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8A630, qword_21796A7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_217946D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EE40;
  if (!qword_27CB8EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_26()
{

  return sub_217968FCC();
}

unint64_t OUTLINED_FUNCTION_4_19()
{
  sub_2178643E0(v1);

  return sub_2178643E0(v0);
}

uint64_t OUTLINED_FUNCTION_5_14()
{

  return sub_21796975C();
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_21796975C();
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return swift_getEnumCaseMultiPayload();
}

void *OUTLINED_FUNCTION_9_16(uint64_t a1, ...)
{

  return sub_21796973C();
}

uint64_t _s6ModuleVMa(uint64_t a1)
{
  result = qword_27CB8EE48;
  if (!qword_27CB8EE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217946F14(uint64_t a1)
{
  sub_217946F98(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_217946F98(uint64_t a1)
{
  if (!qword_27CB8EE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
    v1 = sub_21796944C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB8EE58);
    }
  }
}

uint64_t _s8ModuleIDOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8ModuleIDOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217947164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EE60;
  if (!qword_27CB8EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE60);
  }

  return result;
}

BOOL sub_2179471B8(char *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_2();
  v32 = v5;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EEA8, &qword_217972B10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = *a2;
  v17 = sub_217947F10(*a1);
  v19 = v18;
  v21 = v17 == sub_217947F10(v16) && v19 == v20;
  if (v21)
  {
  }

  else
  {
    v22 = sub_21796969C();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v23 && (sub_21796969C() & 1) == 0)
  {
    return 0;
  }

  v24 = *(_s6ModuleVMa(0) + 24);
  v25 = *(v12 + 48);
  sub_217948468(&a1[v24], v15);
  sub_217948468(&a2[v24], &v15[v25]);
  OUTLINED_FUNCTION_4_20(v15);
  if (v21)
  {
    OUTLINED_FUNCTION_4_20(&v15[v25]);
    if (v21)
    {
      sub_2178653BC(v15, &qword_27CB8B0A0, &qword_21796B758);
      return 1;
    }

LABEL_21:
    sub_2178653BC(v15, &qword_27CB8EEA8, &qword_217972B10);
    return 0;
  }

  sub_217948468(v15, v11);
  OUTLINED_FUNCTION_4_20(&v15[v25]);
  if (v26)
  {
    (*(v32 + 8))(v11, v4);
    goto LABEL_21;
  }

  v28 = v32;
  (*(v32 + 32))(v8, &v15[v25], v4);
  sub_2179483CC(&qword_27CB8EEB0, &qword_27CB8C5C8, MEMORY[0x277CD8258], MEMORY[0x277CD7C98]);
  v29 = sub_217968F1C();
  v30 = *(v28 + 8);
  v30(v8, v4);
  v30(v11, v4);
  sub_2178653BC(v15, &qword_27CB8B0A0, &qword_21796B758);
  return (v29 & 1) != 0;
}

uint64_t sub_217947508(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21796969C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_21796969C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_21796969C();

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

uint64_t sub_217947624(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x656C746974;
  }

  return 0x736D657469;
}

uint64_t sub_217947670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217947508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2179476B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217947610();
  *a1 = result;
  return result;
}

uint64_t sub_2179476E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217948260(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_21794771C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217948260(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217947758(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EE90, &qword_217972B08);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217948260(v11, v12, v13);
  v14 = sub_21796979C();
  v18[15] = *v3;
  v18[14] = 0;
  sub_217948378(v14, v15, v16);
  sub_21796964C();
  if (!v2)
  {
    v18[13] = 1;
    sub_21796963C();
    _s6ModuleVMa(0);
    v18[12] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
    sub_2179483CC(&qword_27CB8EEA0, &qword_27CB8E740, MEMORY[0x277CD8248], MEMORY[0x277CD7C80]);
    sub_21796962C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_217947954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_217947F10(*v1);
  sub_217968FCC();

  sub_217968FCC();
  v11 = _s6ModuleVMa(0);
  sub_217948468(&v1[*(v11 + 24)], v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    return sub_21796975C();
  }

  (*(v4 + 32))(v7, v10, v2);
  sub_21796975C();
  sub_2179483CC(&qword_27CB8EEB8, qword_27CB8C310, MEMORY[0x277CD8250], MEMORY[0x277CD7C88]);
  sub_217968ECC();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_217947B50()
{
  sub_21796973C();
  sub_217947954(v1);
  return sub_21796977C();
}

uint64_t sub_217947B90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v4);
  v6 = v26 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8EE70, &qword_217972B00);
  OUTLINED_FUNCTION_2();
  v26[1] = v8;
  v26[2] = v7;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = _s6ModuleVMa(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217948260(v16, v17, v18);
  v26[3] = v11;
  v19 = sub_21796978C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  sub_2179482B4(v19, v20, v21);
  sub_21796961C();
  *v15 = v30;
  v28 = 1;
  *(v15 + 1) = sub_21796960C();
  *(v15 + 2) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A8, &unk_21796B760);
  v27 = 2;
  sub_2179483CC(&qword_27CB8EE88, &qword_27CB8CB28, MEMORY[0x277CD8260], MEMORY[0x277CD7CA8]);
  sub_2179695FC();
  v23 = OUTLINED_FUNCTION_2_16();
  v24(v23);
  sub_217948308(v6, &v15[*(v12 + 24)]);
  sub_2178EBBC4(v15, v26[0]);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2178EBC28(v15);
}

unint64_t sub_217947EC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2179695EC();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_217947F10(char a1)
{
  result = 0x6574736567677573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x796C746E65636572;
      break;
    case 3:
      result = 0x79616C706572;
      break;
    case 4:
      result = 0x6575657571;
      break;
    case 5:
      result = 0x676E6F732D706F74;
      break;
    case 6:
      result = 0x626C612D6C6C7566;
      break;
    case 7:
      result = 0x7473696C79616C70;
      break;
    case 8:
      result = 0x73656C676E6973;
      break;
    case 9:
      result = 0x74616C69706D6F63;
      break;
    case 10:
      result = 0x2D73726165707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21794809C(uint64_t a1)
{
  sub_21796973C();
  sub_217947954(v2);
  return sub_21796977C();
}

unint64_t sub_2179480E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_217947EC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_217948114@<X0>(unint64_t *a1@<X8>)
{
  result = sub_217947F10(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_217948260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EE78;
  if (!qword_27CB8EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE78);
  }

  return result;
}

unint64_t sub_2179482B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EE80;
  if (!qword_27CB8EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE80);
  }

  return result;
}

uint64_t sub_217948308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_217948378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EE98;
  if (!qword_27CB8EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EE98);
  }

  return result;
}

uint64_t sub_2179483CC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB8B0A8, &unk_21796B760);
    sub_2179484D8(a2, MEMORY[0x277CD8238], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217948468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB8B0A0, &qword_21796B758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2179484D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s6ModuleV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_217948600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EEC0;
  if (!qword_27CB8EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EEC0);
  }

  return result;
}

unint64_t sub_217948658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EEC8;
  if (!qword_27CB8EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB8EEC8);
  }

  return result;
}

unint64_t sub_2179486B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB8EED0[0];
  if (!qword_27CB8EED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CB8EED0);
  }

  return result;
}

uint64_t sub_21794878C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21796653C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_21796652C();
}

unint64_t sub_217948804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_21796810C();
  v15 = sub_21796944C();
  OUTLINED_FUNCTION_48(v15);
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v16);
  v17 = *a5;
  v43[0] = a7;
  v43[1] = a9;
  v43[2] = a10;
  v43[3] = a11;
  v43[4] = a12;
  v18 = _s25LibrarySectionContentViewVMa(0, v43);
  v19 = (a8 + v18[19]);
  _s9ViewModelCMa(0, a9, a12, v20);
  swift_getWitnessTable();
  *v19 = sub_217966ACC();
  v19[1] = v21;
  v22 = a8 + v18[20];
  *v22 = swift_getKeyPath();
  *(v22 + 40) = 0;
  v23 = (a8 + v18[21]);
  *v23 = sub_217948AEC(0, 0xE000000000000000);
  v23[1] = v24;
  v23[2] = v25;
  OUTLINED_FUNCTION_36_6();
  OUTLINED_FUNCTION_36_6();
  v26 = v18[26];
  if (qword_27CB8A380 != -1)
  {
    swift_once();
  }

  v27 = (a8 + v26);
  *v27 = sub_21796560C();
  v27[1] = v28;
  v29 = (a8 + v18[27]);
  *v29 = xmmword_217972C30;
  v29[1] = xmmword_217972C40;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = v17;
  *(a8 + 40) = 1;
  *(a8 + 48) = 0;
  *(a8 + 56) = 0;
  *(a8 + 64) = 0x8000000000000000;
  v30 = v18[18];
  sub_21796821C();
  OUTLINED_FUNCTION_3();
  (*(v31 + 32))(a8 + v30, a6);
  v32 = swift_allocObject();
  *(v32 + 16) = v17;
  v34 = *(a8 + 48);
  v33 = *(a8 + 56);
  v35 = *(a8 + 64);
  *(v32 + 24) = *(a8 + 40);
  *(v32 + 32) = v34;
  *(v32 + 40) = v33;
  *(v32 + 48) = v35;
  *(a8 + v18[24]) = v32;
  v36 = a8 + v18[25];
  *v36 = 1;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  *(v36 + 24) = v32;

  sub_217863EC4(v35);
  return sub_217863EC4(v32);
}

uint64_t sub_217948B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21796810C();
  OUTLINED_FUNCTION_95_0();
  v5 = sub_21796944C();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  OUTLINED_FUNCTION_47();
  MEMORY[0x28223BE20](v8);
  (*(v7 + 16))(&v11 - v9, a1, v5);
  OUTLINED_FUNCTION_153();
  sub_217967C0C();
  return (*(v7 + 8))(a1, v5);
}

void sub_217948C18(void *a1)
{
  v2 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837D0];
  v22 = 0;
  v32 = &type metadata for MusicPicker.Click.LibraryMenuItemID;
  v33 = &type metadata for MusicPicker.Click.SourceContext;
  v3 = a1[2];
  v4 = a1[4];
  v5 = sub_21796821C();
  if (v7 <= 0x3F)
  {
    v23 = 0;
    v34 = v5;
    v8 = a1[3];
    v9 = a1[6];
    _s9ViewModelCMa(255, v8, v9, v6);
    swift_getWitnessTable();
    v10 = sub_217966ADC();
    if (v11 <= 0x3F)
    {
      v24 = 0;
      v35 = v10;
      sub_21788C1DC(319);
      if (v13 <= 0x3F)
      {
        v25 = 0;
        v36 = v12;
        sub_217948E00();
        if (v15 <= 0x3F)
        {
          v26 = 0;
          v37 = v14;
          sub_21796810C();
          sub_21796944C();
          v16 = sub_217967C4C();
          if (v17 <= 0x3F)
          {
            v38 = v16;
            v39 = v16;
            v27 = 0;
            v40 = &type metadata for MusicPicker.PageID;
            v41 = &type metadata for MusicPicker.Click.SourceContext;
            v28 = 0;
            v42 = v2;
            v18 = a1[5];
            v21[0] = v3;
            v21[1] = v8;
            v21[2] = v4;
            v21[3] = v18;
            v21[4] = v9;
            v19 = _s25LibrarySectionContentViewV9ConstantsVMa(319, v21);
            if (v20 <= 0x3F)
            {
              v29 = 0;
              v43 = v19;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}