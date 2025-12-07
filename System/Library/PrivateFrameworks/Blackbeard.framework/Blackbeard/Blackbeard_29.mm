uint64_t AppComposer.audioLanguageEngagementSheetViewBuilder(onDismissed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F00, &qword_1E65EA320);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  sub_1E6318EA0(v24);
  sub_1E61BAD70(v3, a1, a2, v15);
  v16 = sub_1E65E4FD8();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v17 = sub_1E65E5018();
  __swift_project_value_buffer(v17, qword_1EE2D49E8);
  v18 = sub_1E65E2E78();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_1E5F99C3C();
  sub_1E65E4728();
  sub_1E5DFE50C(v9, &unk_1ED077730, &unk_1E65EA310);
  sub_1E5DFE50C(v12, &qword_1ED071EF8, &unk_1E65FA470);
  sub_1E5DFE50C(v15, &qword_1ED071F00, &qword_1E65EA320);
  v19 = swift_allocObject();
  v20 = v24[3];
  v19[3] = v24[2];
  v19[4] = v20;
  v19[5] = v24[4];
  v21 = v24[1];
  v19[1] = v24[0];
  v19[2] = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F08, &qword_1E65EA328);
  v23 = (a3 + *(result + 36));
  *v23 = 0;
  v23[1] = 0;
  v23[2] = sub_1E5F99E38;
  v23[3] = v19;
  return result;
}

uint64_t sub_1E61BAD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v41 = a2;
  v46 = a4;
  v42 = sub_1E65E16A8();
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076440, &qword_1E65F5688);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076448, &qword_1E65F5690);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F30, &qword_1E65EA338);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v35 - v10;
  v12 = type metadata accessor for AppComposer(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = sub_1E65E1638();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + *(v13 + 28) + 8);
  if (v21 >= 2)
  {
    v36 = v9;
    v37 = v18;
    v28 = v40;
    v29 = v42;
    if (v21 == 3)
    {
      sub_1E5E1DEAC(a1, &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v31 = swift_allocObject();
      sub_1E5E1FA80(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
      v32 = (v31 + ((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v32 = v41;
      v32[1] = v28;

      v33 = v38;
      sub_1E65E1698();
      v34 = v39;
      (*(v39 + 16))(v36, v33, v29);
      swift_storeEnumTagMultiPayload();
      sub_1E61BD6E0(&qword_1ED071F38, MEMORY[0x1E699E900], MEMORY[0x1E699E8F8]);
      sub_1E61BD6E0(&qword_1ED071F40, MEMORY[0x1E699E940], MEMORY[0x1E699E938]);
      sub_1E65E4138();
      sub_1E5DFD1CC(v11, v43, &qword_1ED071F30, &qword_1E65EA338);
      swift_storeEnumTagMultiPayload();
      sub_1E5F99D4C();
      sub_1E65E4138();
      sub_1E5DFE50C(v11, &qword_1ED071F30, &qword_1E65EA338);
      return (*(v34 + 8))(v33, v29);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v39 = v7;
    v22 = v18;
    sub_1E5E1DEAC(a1, &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v24 = swift_allocObject();
    sub_1E5E1FA80(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    v25 = (v24 + ((v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    v26 = v40;
    *v25 = v41;
    v25[1] = v26;

    sub_1E65E1628();
    (*(v17 + 16))(v9, v20, v22);
    swift_storeEnumTagMultiPayload();
    sub_1E61BD6E0(&qword_1ED071F38, MEMORY[0x1E699E900], MEMORY[0x1E699E8F8]);
    sub_1E61BD6E0(&qword_1ED071F40, MEMORY[0x1E699E940], MEMORY[0x1E699E938]);
    sub_1E65E4138();
    sub_1E5DFD1CC(v11, v43, &qword_1ED071F30, &qword_1E65EA338);
    swift_storeEnumTagMultiPayload();
    sub_1E5F99D4C();
    sub_1E65E4138();
    sub_1E5DFE50C(v11, &qword_1ED071F30, &qword_1E65EA338);
    return (*(v17 + 8))(v20, v22);
  }

  return result;
}

uint64_t AppComposer.makeAudioLanguageEngagementSheetStore(onDismissed:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076420, &qword_1E65F5608);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v39 - v6;
  v42 = sub_1E65E16C8();
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v50 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppComposer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v40 = &v39 - v16;
  v18 = sub_1E65E16F8();
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v39 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  sub_1E5E1DEAC(v2, v17);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  sub_1E5E1FA80(v17, v25 + v24);
  sub_1E5E1DEAC(v2, v15);
  v26 = swift_allocObject();
  sub_1E5E1FA80(v15, v26 + v24);
  sub_1E5E1DEAC(v2, v12);
  v27 = swift_allocObject();
  sub_1E5E1FA80(v12, v27 + v24);

  v28 = v47;
  sub_1E65E16E8();
  v39 = v2;
  v41 = *v2;
  (*(v48 + 16))(v21, v28, v49);
  sub_1E65E16B8();
  v29 = v2;
  v30 = v40;
  sub_1E5E1DEAC(v29, v40);
  v31 = swift_allocObject();
  sub_1E5E1FA80(v30, v31 + v24);
  type metadata accessor for AppFeature(0);
  sub_1E61BD6E0(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E61BD6E0(&qword_1ED076428, MEMORY[0x1E699E950], MEMORY[0x1E699E948]);
  v32 = v42;
  v33 = v43;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v39, v30);
  v34 = swift_allocObject();
  sub_1E5E1FA80(v30, v34 + v24);
  sub_1E65E4CC8();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E61BD47C;
  *(v35 + 24) = v34;

  v36 = v50;
  v37 = sub_1E65E4F08();

  (*(v45 + 8))(v33, v46);
  (*(v44 + 8))(v36, v32);
  (*(v48 + 8))(v47, v49);
  return v37;
}

uint64_t sub_1E61BBA24(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61BBA44, 0, 0);
}

uint64_t sub_1E61BBA44()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61BBAAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D7848();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1E65DA518();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61BBBC8, 0, 0);
}

uint64_t sub_1E61BBBC8()
{
  *(v0 + 112) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 80) = type metadata accessor for AppEnvironment(0);
  v1 = EngagementService.fetchAudioLanguageEngagementSheet.getter();
  *(v0 + 88) = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1E61BBCEC;
  v4 = *(v0 + 72);

  return v6(v4);
}

uint64_t sub_1E61BBCEC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E61BBF34;
  }

  else
  {
    v2 = sub_1E61BBE1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61BBE1C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v10 = *(v0 + 32);
  v11 = *(v0 + 56);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24) + *(v0 + 112);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E634BC5C(v5, (v7 + *(v2 + 136)), v6);
  (*(v4 + 8))(v5, v10);
  (*(v3 + 8))(v1, v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E61BBF34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61BBFA4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65E1718();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1E65DABE8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61BC0C0, 0, 0);
}

uint64_t sub_1E61BC0C0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v4 = EngagementService.updateAudioLanguageEngagementSheetAcknowledgment.getter();
  v0[10] = v5;
  sub_1E65E1728();
  sub_1E65E1708();
  (*(v2 + 8))(v1, v3);
  sub_1E65DABA8();
  sub_1E65DABC8();
  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1E61BC254;
  v7 = v0[9];

  return v9(v7);
}

uint64_t sub_1E61BC254()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60EC658, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1E61BC43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D9AC8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61BC500, 0, 0);
}

uint64_t sub_1E61BC500()
{

  sub_1E65E61B8();
  sub_1E65D9A98();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SessionService.updateAudioLanguagePreference.getter();
  v0[8] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1E61BC64C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E61BC64C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E5FB32D0;
  }

  else
  {
    v2 = sub_1E61BC77C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61BC77C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E61BC7FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076438, &qword_1E65F5658);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v29 - v5;
  v6 = sub_1E65D7768();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E1688();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v30 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = sub_1E65D7848();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v29 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v29 - v22;
  v37 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v35 = a1;
  sub_1E65E4C98();
  sub_1E5E1F544(v17);
  sub_1E5DFE50C(v12, &qword_1ED071F78, &unk_1E65EA3F0);
  v24 = *(v19 + 48);
  v25 = v24(v17, 1, v18);
  v31 = v23;
  if (v25 == 1)
  {
    sub_1E65D77C8();
    if (v24(v17, 1, v18) != 1)
    {
      sub_1E5DFE50C(v17, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v19 + 32))(v23, v17, v18);
  }

  sub_1E6060A50();
  sub_1E65E4C98();
  v26 = v30;
  sub_1E5E1F544(v30);
  sub_1E5DFE50C(v12, &qword_1ED071F78, &unk_1E65EA3F0);
  if (v24(v26, 1, v18) == 1)
  {
    v27 = v29;
    sub_1E65D77C8();
    if (v24(v26, 1, v18) != 1)
    {
      sub_1E5DFE50C(v26, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    v27 = v29;
    (*(v19 + 32))(v29, v26, v18);
  }

  sub_1E62388C8(v32);
  (*(v19 + 8))(v27, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
  sub_1E65E4C98();
  return sub_1E65E1648();
}

uint64_t sub_1E61BCCC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076438, &qword_1E65F5658);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12 = *(type metadata accessor for AppState(0) + 48);
  sub_1E65E1658();
  sub_1E5DFD1CC(v7, v5, &qword_1ED076438, &qword_1E65F5658);
  sub_1E65E4C78();
  sub_1E65E1618();
  sub_1E61BD6E0(&qword_1EE2D64D8, MEMORY[0x1E699E8D8], MEMORY[0x1E699E8E8]);
  sub_1E65E4C88();
  sub_1E5DFE50C(v7, &qword_1ED076438, &qword_1E65F5658);
  return (*(v9 + 40))(a1 + v12, v11, v8);
}

uint64_t sub_1E61BCEC8(uint64_t a1)
{
  v2 = sub_1E65E1668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - v6;
  sub_1E6318EA0(v15);
  v8 = sub_1E65E60A8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v3 + 16))(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  (*(v3 + 32))(v10 + v9, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v11 = (v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = v15[3];
  v11[2] = v15[2];
  v11[3] = v12;
  v11[4] = v15[4];
  v13 = v15[1];
  *v11 = v15[0];
  v11[1] = v13;
  sub_1E6059EAC(0, 0, v7, &unk_1E65F5650, v10);
}

uint64_t sub_1E61BD0D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E61BBA24(v2, v3);
}

uint64_t sub_1E61BD168(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E61BBAAC(a1, v1 + v5);
}

uint64_t sub_1E61BD244(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E61BBFA4(a1, v1 + v5);
}

uint64_t sub_1E61BD31C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61BC43C(a1, a2, v2 + v7);
}

uint64_t sub_1E61BD3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1E61BC7FC(a1, v6, a2);
}

uint64_t sub_1E61BD47C(uint64_t a1)
{
  type metadata accessor for AppComposer(0);

  return sub_1E61BCEC8(a1);
}

unint64_t sub_1E61BD4FC()
{
  result = qword_1ED076430;
  if (!qword_1ED076430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F08, &qword_1E65EA328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071F00, &qword_1E65EA320);
    sub_1E5F99C3C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076430);
  }

  return result;
}

uint64_t sub_1E61BD5C4(uint64_t a1)
{
  v4 = *(sub_1E65E1668() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E63195A4(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_1E61BD6E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E61BD72C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return AppComposer.makeAudioLanguageEngagementSheetStore(onDismissed:)(*v2, v2[1]);
}

uint64_t sub_1E61BD7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v6[6] = swift_task_alloc();
  v6[7] = type metadata accessor for PageMetricsClick(0);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v6[9] = swift_task_alloc();
  v7 = sub_1E65D9908();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076450, &qword_1E65F56A0);
  v6[13] = swift_task_alloc();
  v8 = sub_1E65D8F28();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076458, &qword_1E65F56A8);
  v6[18] = swift_task_alloc();
  v9 = sub_1E65D8C68();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = sub_1E65E0388();
  v6[23] = v10;
  v6[24] = *(v10 - 8);
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076460, &qword_1E65F56B0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074048, &qword_1E65EF200);
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61BDB70, 0, 0);
}

uint64_t sub_1E61BDB70()
{
  v1 = v0[28];
  sub_1E5DFD1CC(v0[2], v1, &qword_1ED074048, &qword_1E65EF200);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074050, &qword_1E65EF208);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
LABEL_11:

    v38 = v0[1];

    return v38();
  }

  v3 = v0[27];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  sub_1E5FAB460(v0[28] + *(v2 + 48), v3, &qword_1ED076460, &qword_1E65F56B0);
  sub_1E5DFD1CC(v3, v4, &qword_1ED076460, &qword_1E65F56B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v7 = v0[26];
    sub_1E5DFE50C(v0[27], &qword_1ED076460, &qword_1E65F56B0);
    v8 = v7;
    v9 = &qword_1ED076460;
    v10 = &qword_1E65F56B0;
LABEL_10:
    sub_1E5DFE50C(v8, v9, v10);
    v36 = v0[28];
    v37 = sub_1E65D9CC8();
    (*(*(v37 - 8) + 8))(v36, v37);
    goto LABEL_11;
  }

  v11 = v0[19];
  v12 = v0[20];
  v13 = v0[18];
  (*(v0[24] + 32))(v0[25], v0[26], v0[23]);
  sub_1E65E0318();
  sub_1E65D8C48();
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v14 = v0[27];
    v15 = v0[18];
    (*(v0[24] + 8))(v0[25], v0[23]);
    sub_1E5DFE50C(v14, &qword_1ED076460, &qword_1E65F56B0);
    v9 = &qword_1ED076458;
    v10 = &qword_1E65F56A8;
    v8 = v15;
    goto LABEL_10;
  }

  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[13];
  v19 = *(v0[20] + 32);
  v19(v0[22], v0[18], v0[19]);
  sub_1E65E0348();
  sub_1E65D8F08();
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    v20 = v0[27];
    v22 = v0[24];
    v21 = v0[25];
    v23 = v0[23];
    v24 = v0[13];
    (*(v0[20] + 8))(v0[22], v0[19]);
    (*(v22 + 8))(v21, v23);
    sub_1E5DFE50C(v20, &qword_1ED076460, &qword_1E65F56B0);
    v9 = &qword_1ED076450;
    v10 = &qword_1E65F56A0;
    v8 = v24;
    goto LABEL_10;
  }

  v25 = v0[10];
  v26 = v0[11];
  v27 = v0[9];
  (*(v0[15] + 32))(v0[17], v0[13], v0[14]);
  sub_1E65E0358();
  sub_1E65D98E8();
  if ((*(v26 + 48))(v27, 1, v25) == 1)
  {
    v28 = v0[27];
    v30 = v0[24];
    v29 = v0[25];
    v32 = v0[22];
    v31 = v0[23];
    v33 = v0[19];
    v34 = v0[20];
    v35 = v0[9];
    (*(v0[15] + 8))(v0[17], v0[14]);
    (*(v34 + 8))(v32, v33);
    (*(v30 + 8))(v29, v31);
    sub_1E5DFE50C(v28, &qword_1ED076460, &qword_1E65F56B0);
    v9 = &qword_1ED072330;
    v10 = &qword_1E65EAB70;
    v8 = v35;
    goto LABEL_10;
  }

  v41 = v0[21];
  v40 = v0[22];
  v43 = v0[19];
  v42 = v0[20];
  v73 = v43;
  v76 = v0[17];
  v64 = v0[15];
  v65 = v0[16];
  v75 = v0[14];
  v71 = v0[11];
  v72 = v0[12];
  v70 = v0[10];
  v63 = v0[8];
  v68 = v0[7];
  v44 = v0[5];
  v45 = v0[6];
  v69 = v44;
  v74 = v0[4];
  v66 = v0[3];
  (*(v71 + 32))();
  v46 = sub_1E65D9D78();
  (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  (*(v42 + 16))(v41, v40, v43);
  v47 = sub_1E65D74E8();
  (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  sub_1E65D86A8();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1E65EB9E0;
  sub_1E65E0338();
  sub_1E65E0378();
  sub_1E65E0368();
  v48 = *(v64 + 16);
  v48(v65, v76, v75);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  v49 = type metadata accessor for SectionMetrics(0);
  v48(v65, v66 + *(v49 + 24), v75);

  sub_1E65D8678();
  v50 = v68[8];
  v51 = sub_1E65DA208();
  (*(*(v51 - 8) + 56))(v63 + v50, 1, 1, v51);
  v52 = sub_1E65E0338();
  v54 = v53;
  v48(v63 + v68[14], v76, v75);
  v55 = v68[15];
  (*(v71 + 16))(v63 + v55, v72, v70);
  (*(v71 + 56))(v63 + v55, 0, 1, v70);
  v56 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  sub_1E5FAB460(v45, v63, &qword_1ED073578, &qword_1E65F0E60);
  v19(v63 + v68[5], v41, v73);
  sub_1E5FAB460(v69, v63 + v68[6], &qword_1ED072340, &qword_1E65EA410);
  *(v63 + v68[7]) = v67;
  v57 = (v63 + v68[9]);
  *v57 = 0;
  v57[1] = 0;
  v58 = (v63 + v68[10]);
  *v58 = 0;
  v58[1] = 0;
  *(v63 + v68[11]) = v56;
  v59 = (v63 + v68[12]);
  *v59 = 0;
  v59[1] = 0;
  v60 = (v63 + v68[13]);
  *v60 = v52;
  v60[1] = v54;
  v77 = (*(v74 + 48) + **(v74 + 48));
  v61 = swift_task_alloc();
  v0[29] = v61;
  *v61 = v0;
  v61[1] = sub_1E61BE558;
  v62 = v0[8];

  return v77(v62);
}

uint64_t sub_1E61BE558()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1E61BE868;
  }

  else
  {
    v2 = sub_1E61BE66C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61BE66C()
{
  v1 = v0[24];
  v16 = v0[25];
  v17 = v0[27];
  v14 = v0[22];
  v15 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[10];
  sub_1E5FC0990(v0[8]);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v14, v3);
  (*(v1 + 8))(v16, v15);
  sub_1E5DFE50C(v17, &qword_1ED076460, &qword_1E65F56B0);
  v10 = v0[28];
  v11 = sub_1E65D9CC8();
  (*(*(v11 - 8) + 8))(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E61BE868()
{
  v16 = v0[27];
  v17 = v0[28];
  v1 = v0[24];
  v14 = v0[23];
  v15 = v0[25];
  v13 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  sub_1E5FC0990(v0[8]);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v13, v3);
  (*(v1 + 8))(v15, v14);
  sub_1E5DFE50C(v16, &qword_1ED076460, &qword_1E65F56B0);
  v10 = sub_1E65D9CC8();
  (*(*(v10 - 8) + 8))(v17, v10);

  v11 = v0[1];

  return v11();
}

uint64_t AppComposer.summaryWorkoutsCardViewBuilder<A>(identifier:header:items:isInteractive:locale:headerAction:itemAction:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a4;
  v44 = a6;
  v45 = a7;
  v47 = a5;
  v48 = a8;
  v46 = a3;
  v33[1] = a11;
  v42 = a2;
  v43 = a9;
  v35 = a10;
  v12 = type metadata accessor for AppComposer(0);
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v38 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E65D7848();
  v14 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33[0] = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65DF7E8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076468, &qword_1E65F56B8);
  v36 = v20;
  v34 = sub_1E61BEE9C();
  v49 = v20;
  v50 = a10;
  v51 = v34;
  v52 = a11;
  v21 = sub_1E65DF7C8();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v33 - v26;
  (*(v17 + 16))(v19, a1, v16);
  (*(v14 + 16))(v33[0], v40, v37);
  v28 = v38;
  sub_1E5E1DEAC(v41, v38);
  v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v30 = swift_allocObject();
  sub_1E5E1E2B8(v28, v30 + v29, type metadata accessor for AppComposer);

  sub_1E65DF7B8();
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  v31 = *(v22 + 8);
  v31(v25, v21);
  sub_1E5FEE4C8();
  return (v31)(v27, v21);
}

unint64_t sub_1E61BEE9C()
{
  result = qword_1EE2D4CE0;
  if (!qword_1EE2D4CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076468, &qword_1E65F56B8);
    sub_1E5FEB2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CE0);
  }

  return result;
}

uint64_t sub_1E61BEF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v73 = a1;
  v77 = a3;
  v65 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ArtworkDescriptor(0);
  MEMORY[0x1EEE9AC00](v67);
  v5 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v6 = MEMORY[0x1EEE9AC00](v76);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v62 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076470, &qword_1E65F56C0);
  MEMORY[0x1EEE9AC00](v74);
  v75 = (&v62 - v18);
  v63 = sub_1E65E4A08();
  v19 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076478, &qword_1E65F56C8);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v62 - v24;
  v26 = sub_1E65DF818();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v29, v73, v26);
  v30 = (*(v27 + 88))(v29, v26);
  if (v30 == *MEMORY[0x1E699F050])
  {
    (*(v27 + 96))(v29, v26);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076488, &qword_1E65F56D8);
    (*(v23 + 32))(v25, &v29[*(v31 + 48)], v22);
    if (!sub_1E65E1778())
    {
      v32 = [objc_opt_self() mainBundle];
    }

    v33 = &v29[*(v31 + 64)];
    sub_1E65E4A48();
    v34 = v63;
    (*(v19 + 104))(v21, *MEMORY[0x1E6981630], v63);
    v35 = sub_1E65E4A38();

    (*(v19 + 8))(v21, v34);
    *v75 = v35;
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB2FC();
    sub_1E65E4138();
    (*(v23 + 8))(v25, v22);
    return sub_1E5DFE50C(v33, &qword_1ED0734E8, &qword_1E65ED470);
  }

  if (v30 == *MEMORY[0x1E699F058])
  {
    (*(v27 + 96))(v29, v26);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076480, &qword_1E65F56D0) + 48);
    v37 = v72;
    sub_1E5FAB460(v29, v72, &qword_1ED0734E8, &qword_1E65ED470);
    v38 = v68;
    sub_1E5FAB460(&v29[v36], v68, &qword_1ED072340, &qword_1E65EA410);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    sub_1E5DFD1CC(v37, v16, &qword_1ED0734E8, &qword_1E65ED470);
    sub_1E5DFD1CC(v38, v64, &qword_1ED072340, &qword_1E65EA410);
    v40 = v66;
    sub_1E65DB248();
    v41 = *MEMORY[0x1E699DC58];
    v42 = sub_1E65DC488();
    (*(*(v42 - 8) + 104))(v40 + v39, v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
    v33 = v37;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AppComposer(0);
    v43 = v71;
    v44 = sub_1E65DAE38();
    v45 = sub_1E65DAE38();
    v46 = sub_1E65E4B48();
    v47 = 4.0;
    if (v46)
    {
      v47 = 8.0;
    }

    v48 = 16.0;
    if (v46)
    {
      v48 = 18.0;
    }

    if (v44 == v45)
    {
      v49 = v48;
    }

    else
    {
      v49 = v47;
    }

    if (v44 == v45)
    {
      v50 = 12.0;
    }

    else
    {
      v50 = 8.0;
    }

    sub_1E5E1E2B8(v40, v5, type metadata accessor for ArtworkContent);
    v51 = v67;
    *(v5 + *(v67 + 20)) = MEMORY[0x1E69E7CD0];
    v52 = (v5 + v51[6]);
    *v52 = 0.0;
    v52[1] = v49;
    v52[2] = v49;
    v52[3] = v50;
    *(v5 + v51[7]) = 1;
    v53 = (v5 + v51[8]);
    *v53 = 0;
    v53[1] = 0;
    v54 = v69;
    sub_1E64D2DD0(v5, v43, v69);
    v55 = sub_1E65E4B98();
    v57 = v56;
    v58 = v54 + *(v76 + 36);
    sub_1E64D54B4(v5, v43, v58);
    sub_1E61BF8AC(v5);
    v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28) + 36));
    *v59 = v55;
    v59[1] = v57;
    v60 = v70;
    sub_1E5EACC5C(v54, v70);
    sub_1E5EACCCC(v60, v75);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB2FC();
    sub_1E65E4138();
    sub_1E5EACD3C(v60);
    sub_1E5DFE50C(v38, &qword_1ED072340, &qword_1E65EA410);
    return sub_1E5DFE50C(v33, &qword_1ED0734E8, &qword_1E65ED470);
  }

  result = sub_1E65E6C08();
  __break(1u);
  return result;
}

uint64_t sub_1E61BF82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E61BEF28(a1, v6, a2);
}

uint64_t sub_1E61BF8AC(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppComposer.sampleContentSummaryViewBuilder(isPreview:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v25 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = sub_1E65D76F8();
  v24[0] = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - v15;
  v26 = v24 - v15;
  sub_1E65D76E8();
  sub_1E5E1DEAC(v3, v9);
  (*(v11 + 16))(v14, v16, v10);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = (v17 + v6 + *(v11 + 80)) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_1E5E1E2B8(v9, v19 + v17, type metadata accessor for AppComposer);
  v20 = v24[0];
  (*(v11 + 32))(v19 + v18, v14, v24[0]);
  *(v19 + v18 + v12) = v27;
  v21 = v25;
  sub_1E5E1DEAC(v24[1], v25);
  v22 = swift_allocObject();
  sub_1E5E1E2B8(v21, v22 + v17, type metadata accessor for AppComposer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076490, &qword_1E65F56E0);
  sub_1E5FED46C(&qword_1EE2D6768, &qword_1ED076490, &qword_1E65F56E0, MEMORY[0x1E699F048]);
  sub_1E65E3688();
  return (*(v11 + 8))(v26, v20);
}

uint64_t sub_1E61BFC24(void *a1, uint64_t a2, int a3)
{
  v35 = a3;
  v33 = a2;
  v32 = sub_1E65D76F8();
  v4 = *(v32 - 8);
  v31 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v30 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764C8, &qword_1E65F5700);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = v29 - v7;
  v8 = sub_1E65E3618();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppComposer(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = sub_1E65E3638();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1E65E37E8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = *a1;
  sub_1E5E1DEAC(a1, v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_1E5E1E2B8(v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AppComposer);
  *(v20 + v19 + v13) = 0;
  sub_1E65E3628();
  sub_1E65E37D8();
  sub_1E65E3608();
  v21 = v30;
  v22 = v32;
  (*(v4 + 16))(v30, v33, v32);
  v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v24 = v23 + v31;
  v25 = swift_allocObject();
  (*(v4 + 32))(v25 + v23, v21, v22);
  *(v25 + v24) = v35;
  type metadata accessor for AppFeature(0);
  sub_1E61C681C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E61C681C(&qword_1EE2D6058, MEMORY[0x1E699EE50], MEMORY[0x1E699EE48]);
  v26 = v34;
  sub_1E65E4DE8();
  v27 = sub_1E65E4F08();
  (*(v38 + 8))(v26, v39);
  (*(v36 + 8))(v10, v37);
  (*(v16 + 8))(v18, v15);
  return v27;
}

uint64_t sub_1E61C01BC()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65D76F8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));

  return sub_1E61BFC24((v0 + v2), v5, v6);
}

id sub_1E61C02A8@<X0>(uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v40 = a2;
  v34[1] = a4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v4 = MEMORY[0x1EEE9AC00](v42);
  v44 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v41 = v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764D0, &qword_1E65F5738);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764D8, &qword_1E65F5740);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  v36 = sub_1E65D76F8();
  v12 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v43 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v34 - v18;
  v20 = sub_1E65D7848();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v19);
  sub_1E5DFE50C(v16, &qword_1ED071F78, &unk_1E65EA3F0);
  v24 = *(v21 + 48);
  v25 = v24(v19, 1, v20);
  v39 = v23;
  if (v25 == 1)
  {
    sub_1E65D77C8();
    if (v24(v19, 1, v20) != 1)
    {
      sub_1E5DFE50C(v19, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
  }

  (*(v12 + 16))(v43, v40, v36);
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
  sub_1E65E4D78();
  v26 = v38;
  sub_1E65E4C98();
  (*(v37 + 8))(v11, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v27 = v41;
  sub_1E65E4C98();
  v28 = v44;
  sub_1E5FAB460(v27, v44, &qword_1ED072808, &qword_1E65EBE00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072820, &qword_1E65EBE18) + 48);
      v31 = sub_1E65D76A8();
      (*(*(v31 - 8) + 8))(v28 + v30, v31);
    }

    else
    {
      sub_1E5DFE50C(v28, &qword_1ED072808, &qword_1E65EBE00);
    }
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v33 = result;
    MobileGestalt_get_wapiCapability();

    return sub_1E65E37B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E61C0898@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a1;
  v126 = a3;
  v165 = sub_1E65E36D8();
  v171 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v147 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v146 = v111 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v163 = v111 - v8;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076478, &qword_1E65F56C8);
  v170 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = v111 - v9;
  v184 = sub_1E65E37C8();
  v155 = *(v184 - 8);
  v10 = MEMORY[0x1EEE9AC00](v184);
  v181 = v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v166 = v111 - v12;
  v164 = sub_1E65DF818();
  v154 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v195 = v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1E65E36E8();
  v168 = *(v193 - 8);
  v14 = MEMORY[0x1EEE9AC00](v193);
  v143 = v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v188 = (v111 - v16);
  v187 = sub_1E65E3798();
  v153 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v186 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1E65E3678();
  v190 = *(v194 - 8);
  v18 = MEMORY[0x1EEE9AC00](v194);
  v185 = v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v196 = v111 - v20;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073200, &qword_1E65ED058);
  v21 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v183 = v111 - v22;
  v23 = type metadata accessor for AppComposer(0);
  v120 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v121 = v24;
  v122 = v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v182 = v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v197 = v111 - v28;
  v29 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1E65D7848();
  v123 = *(v124 - 8);
  v32 = MEMORY[0x1EEE9AC00](v124);
  v118 = v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v111 - v34;
  v36 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v167 = sub_1E65D72D8();
  v37 = *(v167 - 8);
  v38 = MEMORY[0x1EEE9AC00](v167);
  v141 = v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v140 = v111 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v180 = v111 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v179 = v111 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = v111 - v46;
  v117 = sub_1E65DF7E8();
  v116 = *(v117 - 8);
  v48 = MEMORY[0x1EEE9AC00](v117);
  v113 = v111 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = v111 - v50;
  v115 = sub_1E65D76F8();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = v111 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D76E8();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = [objc_opt_self() bundleForClass_];
  v125 = a2;
  v55 = *a2;
  swift_getKeyPath();
  v111[1] = v55;
  sub_1E65E4EC8();

  v119 = v35;
  sub_1E65E5CD8();
  sub_1E65D7338();
  v142 = v31;
  sub_1E65D72E8();
  v56 = *(v37 + 56);
  v162 = v37 + 56;
  v161 = v56;
  v56(v197, 1, 1, v167);
  v127 = v51;
  v139 = v47;
  sub_1E65DF7D8();
  v191 = sub_1E65E3718();
  v189 = *(v191 + 16);
  if (v189)
  {
    v198 = MEMORY[0x1E69E7CC0];
    sub_1E601CA1C(0, v189, 0);
    v57 = 0;
    v58 = v190;
    v177 = v191 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v176 = v190 + 16;
    v175 = *MEMORY[0x1E699EDE0];
    v174 = v190 + 88;
    v173 = (v190 + 8);
    v160 = *MEMORY[0x1E699EDD8];
    v172 = (v21 + 104);
    v169 = (v190 + 96);
    v138 = (v171 + 32);
    v137 = *MEMORY[0x1E699EDD0];
    v136 = *MEMORY[0x1E699F030];
    v135 = *MEMORY[0x1E699EDF0];
    v168 += 13;
    v134 = (v171 + 8);
    v133 = *MEMORY[0x1E699F038];
    v159 = (v153 + 4);
    v158 = (v155 + 2);
    v157 = (v155 + 11);
    v156 = v155 + 1;
    v155 += 12;
    v154 += 13;
    v132 = (v170 + 32);
    ++v153;
    v152 = *MEMORY[0x1E699EDF8];
    v151 = *MEMORY[0x1E699EE38];
    v131 = *MEMORY[0x1E699EE40];
    v130 = *MEMORY[0x1E699F058];
    v129 = *MEMORY[0x1E699F050];
    v150 = *MEMORY[0x1E699F040];
    v171 = v21 + 32;
    v59 = v198;
    v60 = v166;
    v178 = v21;
    while (v57 < *(v191 + 16))
    {
      v197 = v59;
      v61 = *(v58 + 16);
      v62 = v196;
      v63 = v194;
      v61(v196, v177 + *(v58 + 72) * v57, v194);
      v64 = v185;
      v61(v185, v62, v63);
      v65 = (*(v58 + 88))(v64, v63);
      if (v65 == v175)
      {
        (*v169)(v64, v63);
        (*v159)(v186, v64, v187);
        v66 = sub_1E65E3728();
        v67 = v188;
        *v188 = v66;
        v67[1] = v68;
        (*v168)(v67, v152, v193);
        sub_1E65E3748();
        sub_1E65E3788();
        v69 = v182;
        sub_1E65E3778();
        v161(v69, 0, 1, v167);
        LODWORD(v170) = sub_1E65E3738();
        sub_1E65E3768();
        v70 = v181;
        v71 = v184;
        (*v158)(v181, v60, v184);
        v72 = (*v157)(v70, v71);
        if (v72 == v151)
        {
          v73 = v184;
          (*v156)(v60, v184);
          v74 = v181;
          (*v155)(v181, v73);
          v75 = *(v74 + 1);
          v149 = *v74;
          v148 = v75;
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076488, &qword_1E65F56D8);
          v77 = *(v76 + 64);
          v78 = *v132;
          v79 = v144;
          v80 = v145;
          (*v132)(v144, &v74[*(v76 + 48)], v145);
          v81 = v163;
          sub_1E5FAB460(&v74[v77], v163, &qword_1ED0734E8, &qword_1E65ED470);
          v82 = *(v76 + 48);
          v83 = *(v76 + 64);
          *v195 = v149;
          *(v195 + 1) = v148;
          v60 = v166;
          v78(&v195[v82], v79, v80);
          sub_1E5FAB460(v81, &v195[v83], &qword_1ED0734E8, &qword_1E65ED470);
          v84 = (&v164 + 4);
        }

        else
        {
          if (v72 != v131)
          {
            goto LABEL_20;
          }

          v91 = v184;
          (*v156)(v60, v184);
          v92 = v181;
          (*v155)(v181, v91);
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076480, &qword_1E65F56D0);
          v94 = *(v93 + 48);
          v95 = v163;
          sub_1E5FAB460(v92, v163, &qword_1ED0734E8, &qword_1E65ED470);
          v96 = v92 + v94;
          v97 = v146;
          sub_1E5FAB460(v96, v146, &qword_1ED072340, &qword_1E65EA410);
          v98 = *(v93 + 48);
          v99 = v195;
          sub_1E5FAB460(v95, v195, &qword_1ED0734E8, &qword_1E65ED470);
          sub_1E5FAB460(v97, &v99[v98], &qword_1ED072340, &qword_1E65EA410);
          v84 = &v165;
        }

        v90 = v178;
        (*v154)(v195, *(v84 - 64), v164);
        sub_1E61C681C(&qword_1EE2D6060, MEMORY[0x1E699EE00], MEMORY[0x1E699EE08]);
        v88 = v183;
        sub_1E65DF808();
        (*v153)(v186, v187);
        v89 = v150;
        v63 = v194;
        v85 = v192;
      }

      else
      {
        v85 = v192;
        if (v65 == v160)
        {
          (*v169)(v64, v63);
          v86 = v147;
          (*v138)(v147, v64, v165);
          v87 = v143;
          sub_1E65E36C8();
          (*v168)(v87, v135, v193);
          sub_1E65E36B8();
          sub_1E65D7338();
          sub_1E65D72E8();
          sub_1E65E36A8();
          sub_1E65D7338();
          sub_1E65D72E8();
          sub_1E65E3698();
          sub_1E65D7338();
          v63 = v194;
          v60 = v166;
          sub_1E65D72E8();
          sub_1E61C681C(&qword_1EE2D6060, MEMORY[0x1E699EE00], MEMORY[0x1E699EE08]);
          v88 = v183;
          v85 = v192;
          sub_1E65DF7F8();
          (*v134)(v86, v165);
          v89 = v133;
          v90 = v178;
        }

        else
        {
          v89 = v136;
          v90 = v178;
          v88 = v183;
          if (v65 != v137)
          {
            goto LABEL_21;
          }
        }
      }

      (*v173)(v196, v63);
      (*v172)(v88, v89, v85);
      v59 = v197;
      v198 = v197;
      v101 = *(v197 + 2);
      v100 = *(v197 + 3);
      if (v101 >= v100 >> 1)
      {
        sub_1E601CA1C((v100 > 1), v101 + 1, 1);
        v59 = v198;
      }

      ++v57;
      *(v59 + 2) = v101 + 1;
      (*(v90 + 32))(&v59[((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v101], v88, v85);
      v58 = v190;
      if (v189 == v57)
      {

        v197 = v59;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    sub_1E65E6C08();
    __break(1u);
LABEL_21:
    result = sub_1E65E6C08();
    __break(1u);
  }

  else
  {

    v197 = MEMORY[0x1E69E7CC0];
LABEL_18:
    LODWORD(v196) = sub_1E65E3708();
    swift_getKeyPath();
    v102 = v119;
    sub_1E65E4EC8();

    v103 = v116;
    v104 = v117;
    (*(v116 + 16))(v113, v127, v117);
    v105 = v123;
    v106 = v124;
    (*(v123 + 16))(v118, v102, v124);
    v107 = v122;
    sub_1E5E1DEAC(v125, v122);
    v108 = (*(v120 + 80) + 16) & ~*(v120 + 80);
    v109 = swift_allocObject();
    sub_1E5E1E2B8(v107, v109 + v108, type metadata accessor for AppComposer);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076468, &qword_1E65F56B8);
    sub_1E61BEE9C();
    sub_1E61C681C(&qword_1EE2D6060, MEMORY[0x1E699EE00], MEMORY[0x1E699EE08]);
    sub_1E65DF7B8();
    (*(v105 + 8))(v102, v106);
    (*(v103 + 8))(v127, v104);
    return (*(v114 + 8))(v112, v115);
  }

  return result;
}

uint64_t sub_1E61C208C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1E65E60A8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1E64B80F8(0, 0, v2, &unk_1E65F57B0, v4);
}

uint64_t sub_1E61C217C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v0[18] = swift_task_alloc();
  v1 = sub_1E65D74E8();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C2270, 0, 0);
}

uint64_t sub_1E61C2270()
{
  v13 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v12[0] = 0;
  v12[1] = 0;
  URLAction.makeURL(root:)(v12, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[18], &qword_1ED072340, &qword_1E65EA410);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[SampleContentComposer] Failed constructing explore url", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v0[22] = objc_opt_self();
    sub_1E65E6058();
    v0[23] = sub_1E65E6048();
    v11 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C24A4, v11, v10);
  }
}

uint64_t sub_1E61C24A4()
{
  v1 = *(v0 + 176);

  *(v0 + 192) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E61C2528, 0, 0);
}

uint64_t sub_1E61C2528()
{
  v1 = v0[24];
  v2 = sub_1E65D7448();
  v0[25] = v2;
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E61C681C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1E65E9A14);
  v3 = sub_1E65E5AF8();
  v0[26] = v3;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1E61C26E8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E0, &qword_1E65F5758);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E61C27C8;
  v0[13] = &block_descriptor_50;
  v0[14] = v4;
  [v1 openURL:v2 options:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E61C26E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61C6BE8, 0, 0);
}

uint64_t sub_1E61C27C8(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1E61C2824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_1E65D74E8();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E36F8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v37 - v15;
  v17 = sub_1E65E36E8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == *MEMORY[0x1E699EDF8])
  {
    (*(v18 + 96))(v20, v17);
    v22 = *v20;
    v23 = v20[1];
    v24 = sub_1E65E60A8();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v22;
    v25[5] = v23;
    sub_1E64B80F8(0, 0, v16, &unk_1E65F57A0, v25);
  }

  if (v21 != *MEMORY[0x1E699EDF0])
  {
LABEL_14:
    sub_1E65E6C08();
    __break(1u);
    goto LABEL_15;
  }

  (*(v18 + 96))(v20, v17);
  (*(v8 + 32))(v13, v20, v7);
  (*(v8 + 16))(v11, v13, v7);
  v27 = (*(v8 + 88))(v11, v7);
  if (v27 == *MEMORY[0x1E699EE18])
  {
    sub_1E65D74C8();
    v29 = v39;
    v28 = v40;
    if ((*(v39 + 48))(v4, 1, v40) == 1)
    {
      (*(v8 + 8))(v13, v7);
      return sub_1E5DFE50C(v4, &qword_1ED072340, &qword_1E65EA410);
    }

    v32 = v38;
    (*(v29 + 32))(v38, v4, v28);
    v33 = [objc_opt_self() defaultWorkspace];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1E65D7448();
      sub_1E6215168(MEMORY[0x1E69E7CC0]);
      v36 = sub_1E65E5AF8();

      [v34 openSensitiveURL:v35 withOptions:v36];

      (*(v29 + 8))(v32, v28);
      return (*(v8 + 8))(v13, v7);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v27 != *MEMORY[0x1E699EE10])
  {
LABEL_15:
    result = sub_1E65E6C08();
    __break(1u);
    return result;
  }

  v30 = sub_1E65E60A8();
  (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  sub_1E64B80F8(0, 0, v16, &unk_1E65F5790, v31);

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1E61C2E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5[20] = swift_task_alloc();
  v6 = sub_1E65D74E8();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C2F3C, 0, 0);
}

uint64_t sub_1E61C2F3C()
{
  v13 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v12[0] = 0;
  v12[1] = 0;
  URLAction.makeURL(root:)(v12, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[20], &qword_1ED072340, &qword_1E65EA410);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[SampleContentComposer] Failed constructing item url", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v0[24] = objc_opt_self();
    sub_1E65E6058();
    v0[25] = sub_1E65E6048();
    v11 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C3174, v11, v10);
  }
}

uint64_t sub_1E61C3174()
{
  v1 = *(v0 + 192);

  *(v0 + 208) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E61C31F8, 0, 0);
}

uint64_t sub_1E61C31F8()
{
  v1 = v0[26];
  v2 = sub_1E65D7448();
  v0[27] = v2;
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E61C681C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1E65E9A14);
  v3 = sub_1E65E5AF8();
  v0[28] = v3;

  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1E61C33B8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E0, &qword_1E65F5758);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E61C27C8;
  v0[13] = &block_descriptor_40;
  v0[14] = v4;
  [v1 openURL:v2 options:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E61C33B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61C3498, 0, 0);
}

uint64_t sub_1E61C3498()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E61C3538()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v0[18] = swift_task_alloc();
  v1 = sub_1E65D74E8();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C362C, 0, 0);
}

uint64_t sub_1E61C362C()
{
  v13 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v12[0] = 0;
  v12[1] = 0;
  URLAction.makeURL(root:)(v12, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[18], &qword_1ED072340, &qword_1E65EA410);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[SampleContentComposer] Failed constructing explore url", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v0[22] = objc_opt_self();
    sub_1E65E6058();
    v0[23] = sub_1E65E6048();
    v11 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C3860, v11, v10);
  }
}

uint64_t sub_1E61C3860()
{
  v1 = *(v0 + 176);

  *(v0 + 192) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E61C38E4, 0, 0);
}

uint64_t sub_1E61C38E4()
{
  v1 = v0[24];
  v2 = sub_1E65D7448();
  v0[25] = v2;
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E61C681C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1E65E9A14);
  v3 = sub_1E65E5AF8();
  v0[26] = v3;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1E61C26E8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E0, &qword_1E65F5758);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E61C27C8;
  v0[13] = &block_descriptor_43;
  v0[14] = v4;
  [v1 openURL:v2 options:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t AppComposer.sampleContentWorkoutViewBuilder(onHide:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076498, &qword_1E65F56E8);
  sub_1E61C3D58();
  sub_1E5FED46C(&qword_1ED0764A8, &qword_1ED076498, &qword_1E65F56E8, MEMORY[0x1E699EDA8]);
  return sub_1E65E4B78();
}

uint64_t sub_1E61C3B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[0] = a2;
  v18[1] = a4;
  v6 = type metadata accessor for AppComposer(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - v11;
  sub_1E5E1DEAC(a1, v18 - v11);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1E5E1E2B8(v12, v14 + v13, type metadata accessor for AppComposer);
  v15 = (v14 + ((v13 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v18[0];
  v15[1] = a3;
  sub_1E5E1DEAC(a1, v10);
  v16 = swift_allocObject();
  sub_1E5E1E2B8(v10, v16 + v13, type metadata accessor for AppComposer);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076468, &qword_1E65F56B8);
  sub_1E61BEE9C();
  return sub_1E65E3648();
}

unint64_t sub_1E61C3D58()
{
  result = qword_1ED0764A0;
  if (!qword_1ED0764A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0764A0);
  }

  return result;
}

unint64_t sub_1E61C3DAC()
{
  result = qword_1ED0764B8;
  if (!qword_1ED0764B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0764C0, &qword_1E65F56F8);
    sub_1E61C3D58();
    sub_1E5FED46C(&qword_1ED0764A8, &qword_1ED076498, &qword_1E65F56E8, MEMORY[0x1E699EDA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0764B8);
  }

  return result;
}

uint64_t sub_1E61C3E70(void *a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764C8, &qword_1E65F5700);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v25 = v23 - v6;
  v7 = sub_1E65E3618();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = sub_1E65E3638();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1E65E37E8();
  v24 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *a1;
  v17 = swift_allocObject();
  *(v17 + 16) = v23[0];
  *(v17 + 24) = a3;
  sub_1E5E1DEAC(a1, v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_1E5E1E2B8(v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for AppComposer);
  *(v19 + v18 + v12) = 1;

  sub_1E65E3628();
  sub_1E65E37D8();
  sub_1E65E3608();
  type metadata accessor for AppFeature(0);
  sub_1E61C681C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E61C681C(&qword_1EE2D6058, MEMORY[0x1E699EE50], MEMORY[0x1E699EE48]);
  v20 = v25;
  sub_1E65E4DE8();
  v21 = sub_1E65E4F08();
  (*(v28 + 8))(v20, v29);
  (*(v26 + 8))(v9, v27);
  (*(v24 + 8))(v16, v14);
  return v21;
}

uint64_t sub_1E61C4344()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1E61C3E70((v0 + v2), v4, v5);
}

id sub_1E61C43D4@<X0>(uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v2 = MEMORY[0x1EEE9AC00](v34);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764D0, &qword_1E65F5738);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v31 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764D8, &qword_1E65F5740);
  v7 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v31 - v8;
  v10 = sub_1E65D76F8();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - v16;
  v18 = sub_1E65D7848();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v17);
  sub_1E5DFE50C(v14, &qword_1ED071F78, &unk_1E65EA3F0);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    sub_1E65D77C8();
    if (v22(v17, 1, v18) != 1)
    {
      sub_1E5DFE50C(v17, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
  }

  sub_1E65D76E8();
  v38 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
  sub_1E65E4D78();
  v23 = v32;
  sub_1E65E4C98();
  (*(v7 + 8))(v9, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v24 = v33;
  sub_1E65E4C98();
  v25 = v36;
  sub_1E5FAB460(v24, v36, &qword_1ED072808, &qword_1E65EBE00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072820, &qword_1E65EBE18) + 48);
      v28 = sub_1E65D76A8();
      (*(*(v28 - 8) + 8))(v25 + v27, v28);
    }

    else
    {
      sub_1E5DFE50C(v25, &qword_1ED072808, &qword_1E65EBE00);
    }
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v30 = result;
    MobileGestalt_get_wapiCapability();

    return sub_1E65E37B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E61C4960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v73 = a1;
  v77 = a3;
  v65 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ArtworkDescriptor(0);
  MEMORY[0x1EEE9AC00](v67);
  v5 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v6 = MEMORY[0x1EEE9AC00](v76);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v62 - v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076470, &qword_1E65F56C0);
  MEMORY[0x1EEE9AC00](v74);
  v75 = (&v62 - v18);
  v63 = sub_1E65E4A08();
  v19 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076478, &qword_1E65F56C8);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v62 - v24;
  v26 = sub_1E65E37C8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v29, v73, v26);
  v30 = (*(v27 + 88))(v29, v26);
  if (v30 == *MEMORY[0x1E699EE38])
  {
    (*(v27 + 96))(v29, v26);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076488, &qword_1E65F56D8);
    (*(v23 + 32))(v25, &v29[*(v31 + 48)], v22);
    if (!sub_1E65E1778())
    {
      v32 = [objc_opt_self() mainBundle];
    }

    v33 = &v29[*(v31 + 64)];
    sub_1E65E4A48();
    v34 = v63;
    (*(v19 + 104))(v21, *MEMORY[0x1E6981630], v63);
    v35 = sub_1E65E4A38();

    (*(v19 + 8))(v21, v34);
    *v75 = v35;
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB2FC();
    sub_1E65E4138();
    (*(v23 + 8))(v25, v22);
    return sub_1E5DFE50C(v33, &qword_1ED0734E8, &qword_1E65ED470);
  }

  if (v30 == *MEMORY[0x1E699EE40])
  {
    (*(v27 + 96))(v29, v26);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076480, &qword_1E65F56D0) + 48);
    v37 = v72;
    sub_1E5FAB460(v29, v72, &qword_1ED0734E8, &qword_1E65ED470);
    v38 = v68;
    sub_1E5FAB460(&v29[v36], v68, &qword_1ED072340, &qword_1E65EA410);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    sub_1E5DFD1CC(v37, v16, &qword_1ED0734E8, &qword_1E65ED470);
    sub_1E5DFD1CC(v38, v64, &qword_1ED072340, &qword_1E65EA410);
    v40 = v66;
    sub_1E65DB248();
    v41 = *MEMORY[0x1E699DC58];
    v42 = sub_1E65DC488();
    (*(*(v42 - 8) + 104))(v40 + v39, v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
    v33 = v37;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for AppComposer(0);
    v43 = v71;
    v44 = sub_1E65DAE38();
    v45 = sub_1E65DAE38();
    v46 = sub_1E65E4B48();
    v47 = 4.0;
    if (v46)
    {
      v47 = 8.0;
    }

    v48 = 16.0;
    if (v46)
    {
      v48 = 18.0;
    }

    if (v44 == v45)
    {
      v49 = v48;
    }

    else
    {
      v49 = v47;
    }

    if (v44 == v45)
    {
      v50 = 12.0;
    }

    else
    {
      v50 = 8.0;
    }

    sub_1E5E1E2B8(v40, v5, type metadata accessor for ArtworkContent);
    v51 = v67;
    *(v5 + *(v67 + 20)) = MEMORY[0x1E69E7CD0];
    v52 = (v5 + v51[6]);
    *v52 = 0.0;
    v52[1] = v49;
    v52[2] = v49;
    v52[3] = v50;
    *(v5 + v51[7]) = 1;
    v53 = (v5 + v51[8]);
    *v53 = 0;
    v53[1] = 0;
    v54 = v69;
    sub_1E64D2DD0(v5, v43, v69);
    v55 = sub_1E65E4B98();
    v57 = v56;
    v58 = v54 + *(v76 + 36);
    sub_1E64D54B4(v5, v43, v58);
    sub_1E61BF8AC(v5);
    v59 = (v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28) + 36));
    *v59 = v55;
    v59[1] = v57;
    v60 = v70;
    sub_1E5EACC5C(v54, v70);
    sub_1E5EACCCC(v60, v75);
    swift_storeEnumTagMultiPayload();
    sub_1E5FEB2FC();
    sub_1E65E4138();
    sub_1E5EACD3C(v60);
    sub_1E5DFE50C(v38, &qword_1ED072340, &qword_1E65EA410);
    return sub_1E5DFE50C(v33, &qword_1ED0734E8, &qword_1E65ED470);
  }

  result = sub_1E65E6C08();
  __break(1u);
  return result;
}

uint64_t sub_1E61C527C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v2[20] = swift_task_alloc();
  v3 = sub_1E65D74E8();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C5374, 0, 0);
}

uint64_t sub_1E61C5374()
{
  v13 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v12[0] = 0;
  v12[1] = 0;
  URLAction.makeURL(root:)(v12, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[20], &qword_1ED072340, &qword_1E65EA410);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6328();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[SampleContentComposer] Failed constructing item url", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v0[24] = objc_opt_self();
    sub_1E65E6058();
    v0[25] = sub_1E65E6048();
    v11 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C55B0, v11, v10);
  }
}

uint64_t sub_1E61C55B0()
{
  v1 = *(v0 + 192);

  *(v0 + 208) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E61C5634, 0, 0);
}

uint64_t sub_1E61C5634()
{
  v1 = v0[26];
  v2 = sub_1E65D7448();
  v0[27] = v2;
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E61C681C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1E65E9A14);
  v3 = sub_1E65E5AF8();
  v0[28] = v3;

  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1E61C57F4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E0, &qword_1E65F5758);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E61C27C8;
  v0[13] = &block_descriptor_26;
  v0[14] = v4;
  [v1 openURL:v2 options:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E61C57F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61C58D4, 0, 0);
}

uint64_t sub_1E61C58D4()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E61C5978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C5A10, 0, 0);
}

uint64_t sub_1E61C5A10()
{
  v1 = *(v0 + 16);
  v2 = sub_1E65E60A8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1E64B80F8(0, 0, v1, &unk_1E65F5750, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E61C5AFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v0[18] = swift_task_alloc();
  v1 = sub_1E65D74E8();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C5BF0, 0, 0);
}

uint64_t sub_1E61C5BF0()
{
  v13 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v12[0] = 0;
  v12[1] = 0;
  URLAction.makeURL(root:)(v12, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[18], &qword_1ED072340, &qword_1E65EA410);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6328();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[SampleContentComposer] Failed constructing explore url", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v0[22] = objc_opt_self();
    sub_1E65E6058();
    v0[23] = sub_1E65E6048();
    v11 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C5E24, v11, v10);
  }
}

uint64_t sub_1E61C5E24()
{
  v1 = *(v0 + 176);

  *(v0 + 192) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1E61C5EA8, 0, 0);
}

uint64_t sub_1E61C5EA8()
{
  v1 = v0[24];
  v2 = sub_1E65D7448();
  v0[25] = v2;
  sub_1E6428210(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1E61C681C(&qword_1ED071D68, type metadata accessor for OpenExternalURLOptionsKey, &unk_1E65E9A14);
  v3 = sub_1E65E5AF8();
  v0[26] = v3;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1E61C6068;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E0, &qword_1E65F5758);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E61C27C8;
  v0[13] = &block_descriptor_6;
  v0[14] = v4;
  [v1 openURL:v2 options:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E61C6068()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61C6148, 0, 0);
}

uint64_t sub_1E61C6148()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E61C61E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v0[2] = swift_task_alloc();
  v1 = sub_1E65D74E8();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C62DC, 0, 0);
}

id sub_1E61C62DC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1E65D74C8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v0[2], &qword_1ED072340, &qword_1E65EA410);
  }

  else
  {
    (*(v0[4] + 32))(v0[5], v0[2], v0[3]);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    v9 = sub_1E65D7448();
    sub_1E6215168(MEMORY[0x1E69E7CC0]);
    v10 = sub_1E65E5AF8();

    [v5 openSensitiveURL:v9 withOptions:v10];

    (*(v7 + 8))(v6, v8);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E61C6498(uint64_t a1, char a2)
{
  *(v2 + 40) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E61C64BC, 0, 0);
}

uint64_t sub_1E61C64BC()
{
  v1 = v0[2];
  v0[3] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  sub_1E65E6058();
  v0[4] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61C6568, v3, v2);
}

uint64_t sub_1E61C6568()
{
  v1 = *(v0 + 40);

  sub_1E642B1F0(v1 & 1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E61C65D4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E648305C(v2);
}

uint64_t sub_1E61C6680()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E61C6498(v3, v4);
}

uint64_t sub_1E61C6770()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E61C5AFC();
}

uint64_t sub_1E61C681C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E61C687C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E61C6910()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E61C3538();
}

uint64_t sub_1E61C69BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61C2E44(a1, v4, v5, v7, v6);
}

uint64_t sub_1E61C6A7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E61C217C();
}

id sub_1E61C6B28@<X0>(uint64_t a2@<X8>)
{
  v4 = *(sub_1E65D76F8() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));

  return sub_1E61C02A8(v5, v6, a2);
}

uint64_t sub_1E61C6BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764F0, &qword_1E65F5830);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-1] - v6;
  sub_1E5E20198(20, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E8, &qword_1E65F57F8);
  result = swift_dynamicCast();
  if (result)
  {
    v10[0] = a1;
    v10[1] = a2;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1E61C6D40@<X0>(uint64_t *a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v24 - v3;
  v4 = type metadata accessor for ArchivedSessionService();
  Description = v4[-1].Description;
  v6 = Description[8];
  MEMORY[0x1EEE9AC00](v4);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v8 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v27 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v9 = v1 + *(type metadata accessor for AppEnvironment(0) + 32);
  v28 = v9;
  swift_getKeyPath();
  v26 = Description[2];
  v26(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, v4);
  v25 = v4;
  v10 = *(Description + 80);
  v11 = swift_allocObject();
  v29 = Description[4];
  v29(v11 + ((v10 + 16) & ~v10), &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764E8, &qword_1E65F57F8);
  swift_allocObject();

  v13 = sub_1E65E4E68();
  v24 = v13;
  v14 = v31;
  v31[3] = v12;
  v14[4] = &off_1F5FAA810;
  *v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E65EA670;
  v16 = sub_1E65E60A8();
  v17 = v30;
  (*(*(v16 - 8) + 56))(v30, 1, 1, v16);
  v18 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v25;
  v26(v18, v28 + v27, v25);
  v20 = (v10 + 32) & ~v10;
  v21 = (v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v29(v22 + v20, v18, v19);
  *(v22 + v21) = v24;

  result = sub_1E6059EAC(0, 0, v17, &unk_1E65F5808, v22);
  *(v15 + 32) = result;
  v14[5] = v15;
  return result;
}

uint64_t sub_1E61C7114(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E61C713C, 0, 0);
}

uint64_t sub_1E61C713C()
{
  v1 = ArchivedSessionService.requireSampleContentSessionsAllowed.getter();
  v0[6] = v2;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E61C7238;
  v5 = v0[4];
  v4 = v0[5];

  return v7(v5, v4);
}

uint64_t sub_1E61C7238()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E61C74E4;
  }

  else
  {
    v2 = sub_1E61C734C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61C734C()
{
  v11 = v0;

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);

  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1E5DFD4B0(v5, v4, &v10);
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Sample content session status allowed for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  **(v0 + 16) = 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E61C74E4()
{
  v13 = v0;

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);

  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 64);
  if (v4)
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1E5DFD4B0(v7, v6, &v12);
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Sample content session status restricted for %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  **(v0 + 16) = 1;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E61C768C(uint64_t a1, void *a2)
{
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E61C7114(a1, a2, v2 + v7);
}

uint64_t sub_1E61C7770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C78A4, 0, 0);
}

uint64_t sub_1E61C78A4()
{
  v1 = ArchivedSessionService.makeSampleContentArchivedSessionsUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E61C79A0;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E61C79A0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FE0E84;
  }

  else
  {
    v2 = sub_1E61C7AD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61C7AD0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E61C7BAC;
  v5 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1E61C7BAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61C7CA8, 0, 0);
}

uint64_t sub_1E61C7CA8()
{
  v1 = v0[2];
  v0[15] = v1;
  if (v1)
  {
    sub_1E65E6058();
    v0[16] = sub_1E65E6048();
    v3 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E61C7DA8, v3, v2);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E61C7DA8()
{

  *(v0 + 136) = sub_1E65E4E48();

  return MEMORY[0x1EEE6DFA0](sub_1E61C7E1C, 0, 0);
}

uint64_t sub_1E61C7E1C()
{
  v1 = v0[4];
  v2 = sub_1E608A340(v0[17], v0[15]);
  v0[18] = v2;

  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1E61C7F28;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1E61C7F28()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61C805C, 0, 0);
}

uint64_t sub_1E61C805C()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E61C7BAC;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1E61C8104(uint64_t a1)
{
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E61C7770(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E61C8224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C82D0, 0, 0);
}

uint64_t sub_1E61C82D0()
{
  v1 = *(v0 + 80);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 80) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v31 = *(v0 + 80);

  v10 = 0;
  v29 = v8;
  v30 = v3;
  while (v7)
  {
LABEL_11:
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);
    v16 = (*(v31 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v17 = v16[1];
    v32 = *v16;
    v33 = *(v0 + 96);
    v18 = sub_1E65E60A8();
    v19 = *(v18 - 8);
    (*(v19 + 56))(v14, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v21 = v20 + 2;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v32;
    v20[6] = v17;
    sub_1E5DF4C84(v14, v33);
    LODWORD(v14) = (*(v19 + 48))(v33, 1, v18);
    swift_bridgeObjectRetain_n();

    v22 = *(v0 + 96);
    if (v14 == 1)
    {
      sub_1E5DF4CF4(*(v0 + 96));
      if (*v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1E65E6098();
      (*(v19 + 8))(v22, v18);
      if (*v21)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_1E65E5FC8();
        v25 = v24;
        swift_unknownObjectRelease();
        goto LABEL_16;
      }
    }

    v23 = 0;
    v25 = 0;
LABEL_16:
    v26 = **(v0 + 72);
    v27 = swift_allocObject();
    *(v27 + 16) = &unk_1E65F5828;
    *(v27 + 24) = v20;

    if (v25 | v23)
    {
      v11 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v23;
      *(v0 + 40) = v25;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 104);
    v7 &= v7 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v11;
    *(v0 + 64) = v26;
    swift_task_create();

    result = sub_1E5DF4CF4(v12);
    v8 = v29;
    v3 = v30;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1E61C8634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764F0, &qword_1E65F5830);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C8704, 0, 0);
}

uint64_t sub_1E61C8704()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  v0[10] = sub_1E65E6058();
  v0[11] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61C87A4, v3, v2);
}

uint64_t sub_1E61C87A4()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E61C8820, 0, 0);
}

uint64_t sub_1E61C8820(uint64_t a1)
{
  *(v1 + 96) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61C88AC, v3, v2);
}

uint64_t sub_1E61C88AC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_1E65E4E18();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E61C8944(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E61C8224(a1, a2, v7, v6);
}

uint64_t sub_1E61C89F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E61C8634(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E61C8AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for PageMetricsClick(0);
  v5[5] = swift_task_alloc();
  sub_1E65DFE38();
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C8B80, 0, 0);
}

uint64_t sub_1E61C8B80()
{
  v1 = v0[6];
  sub_1E61C91D4(v0[2], v1);
  v2 = sub_1E65E02A8();
  v3 = (*(*(v2 - 8) + 48))(v1, 3, v2);
  if (v3 <= 1)
  {
    if (!v3)
    {
      sub_1E61C9238(v0[6], MEMORY[0x1E699D5A8]);
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
LABEL_8:

    v34 = v0[1];

    return v34();
  }

  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  v7 = sub_1E65D9D78();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = v5[5];
  v9 = *MEMORY[0x1E69CBAA0];
  v10 = sub_1E65D8C68();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  v11 = v5[6];
  v12 = sub_1E65D74E8();
  (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
  v13 = v5[8];
  v14 = sub_1E65DA208();
  (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
  v15 = sub_1E65E28F8();
  v17 = v16;
  v18 = v5[14];
  v19 = *MEMORY[0x1E69CBCC8];
  v20 = sub_1E65D8F28();
  (*(*(v20 - 8) + 104))(v4 + v18, v19, v20);
  v21 = v5[15];
  v22 = *MEMORY[0x1E69CC448];
  v23 = sub_1E65D9908();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v4 + v21, v22, v23);
  (*(v24 + 56))(v4 + v21, 0, 1, v23);
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  *(v4 + v5[7]) = v25;
  v27 = (v4 + v5[9]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v4 + v5[10]);
  *v28 = 0;
  v28[1] = 0;
  *(v4 + v5[11]) = v26;
  v29 = (v4 + v5[12]);
  *v29 = 0;
  v29[1] = 0;
  v30 = (v4 + v5[13]);
  *v30 = v15;
  v30[1] = v17;
  v35 = (*(v6 + 48) + **(v6 + 48));
  v31 = swift_task_alloc();
  v0[7] = v31;
  *v31 = v0;
  v31[1] = sub_1E61C8FAC;
  v32 = v0[5];

  return v35(v32);
}

uint64_t sub_1E61C8FAC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E61C9148;
  }

  else
  {
    v2 = sub_1E61C90C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61C90C0()
{
  sub_1E61C9238(*(v0 + 40), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61C9148()
{
  sub_1E61C9238(*(v0 + 40), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61C91D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DFE38();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61C9238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61C9298(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1E65E4C08();
}

uint64_t sub_1E61C9468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v23 = a1;
  v4 = type metadata accessor for AppComposer(0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076590, &qword_1E65F58B0);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = sub_1E65DCA88();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65DD1D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v3;
  (*(v10 + 16))(v12, v23, v9);
  sub_1E65DD1B8();
  sub_1E5E1DEAC(v3, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = swift_allocObject();
  sub_1E5E1FA80(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  type metadata accessor for AppFeature(0);
  sub_1E61CC7BC(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E61CC7BC(&qword_1EE2D6B00, MEMORY[0x1E699EF70], MEMORY[0x1E699EF68]);
  sub_1E65E4DE8();
  v19 = swift_allocObject();
  *(v19 + 16) = v26;

  sub_1E65E4CC8();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1E61CC804;
  *(v20 + 24) = v19;

  v21 = sub_1E65E4F08();

  (*(v27 + 8))(v8, v28);
  (*(v14 + 8))(v16, v13);
  return v21;
}

uint64_t sub_1E61C989C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v39 - v8;
  v9 = sub_1E65D7848();
  v10 = *(v9 - 8);
  v41 = v9;
  v42 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1E65DD0F8();
  v12 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E65DD0A8();
  v15 = *(v40 - 8);
  v16 = MEMORY[0x1EEE9AC00](v40);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v39 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v45 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v48 = &v39 - v24;
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
  v25 = *(a2 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  sub_1E65DAE08();
  v26 = v41;
  sub_1E65DD068();
  sub_1E637A69C();
  v43 = v21;
  sub_1E65DCFE8();
  (*(v12 + 8))(v14, v49);
  v27 = *(v15 + 8);
  v28 = v18;
  v29 = v40;
  v30 = v42;
  v27(v28, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v49 = a1;
  v31 = v46;
  sub_1E65E4C98();
  v32 = v44;
  sub_1E5E1F544(v44);
  sub_1E5DFE50C(v31, &qword_1ED071F78, &unk_1E65EA3F0);
  v33 = *(v30 + 48);
  if (v33(v32, 1, v26) == 1)
  {
    v34 = v47;
    sub_1E65D77C8();
    if (v33(v32, 1, v26) != 1)
    {
      sub_1E5DFE50C(v32, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    v34 = v47;
    (*(v30 + 32))(v47, v32, v26);
  }

  v35 = v45;
  v36 = v43;
  sub_1E65DCFF8();
  (*(v30 + 8))(v34, v26);
  v27(v36, v29);
  if (v25 < 2 || v25 == 3)
  {
    v37 = v48;
    sub_1E65DD028();
    v27(v35, v29);
    sub_1E63969B4();
    sub_1E65DD058();
    return (v27)(v37, v29);
  }

  else
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E61C9E00(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DD0A8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61C9EC0, 0, 0);
}

uint64_t sub_1E61C9EC0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E6013E58(v4);
  (*(v2 + 8))(v1, v3);
  v5 = sub_1E65D7A38();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E61C9FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a5;
  v9 = type metadata accessor for AppComposer(0);
  v39 = *(v9 - 8);
  v38 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076038, &qword_1E65F4908);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076578, &qword_1E65F58A0);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076580, &qword_1E65F58A8);
  v19 = MEMORY[0x1EEE9AC00](v35);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - v22;
  sub_1E619CA14(a2, a3, v14);
  v24 = *(a4 + 16);
  v25 = *(a4 + 24);
  v26 = sub_1E5FED46C(&qword_1ED076080, &qword_1ED076038, &qword_1E65F4908, MEMORY[0x1E699EE90]);
  sub_1E5E1EC14(v24, v25, v11, v26);
  (*(v12 + 8))(v14, v11);
  v27 = a1;
  v28 = v34;
  sub_1E5E1DEAC(v27, v34);
  v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v30 = swift_allocObject();
  sub_1E5E1FA80(v28, v30 + v29);
  v41 = v11;
  v42 = v26;
  swift_getOpaqueTypeConformance2();
  v31 = v36;
  sub_1E6259D5C(sub_1E60772D8, v30, v36);

  (*(v37 + 8))(v18, v31);
  sub_1E61CC614();
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v21, &qword_1ED076580, &qword_1E65F58A8);
  sub_1E5FEE4C8();
  return sub_1E5DFE50C(v23, &qword_1ED076580, &qword_1E65F58A8);
}

uint64_t sub_1E61CA3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a6;
  v47 = a3;
  v48 = a2;
  v49 = a1;
  v60 = a7;
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0764F8, &qword_1E65F5840);
  v15 = *(v14 - 8);
  v53 = v14;
  v54 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v51 = v44 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076500, &qword_1E65F5848);
  v18 = *(v17 - 8);
  v58 = v17;
  v59 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v50 = v44 - v19;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076508, &qword_1E65F5850);
  v20 = MEMORY[0x1EEE9AC00](v57);
  v52 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v55 = v44 - v22;
  v45 = v13;
  sub_1E5E1DEAC(a2, v13);
  sub_1E5DF650C(a4, v61);
  v44[1] = a5[5];
  v44[2] = a5[7];
  v44[3] = a5[9];
  v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v46 = v23 + v12;
  v24 = (v23 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1E5E1FA80(v13, v26 + v23);
  *(v26 + v24) = v47;
  sub_1E5DF599C(v61, v26 + v25);
  v27 = (v26 + ((v25 + 47) & 0xFFFFFFFFFFFFFFF8));
  v28 = *(a5 + 3);
  v27[2] = *(a5 + 2);
  v27[3] = v28;
  v27[4] = *(a5 + 4);
  v29 = *(a5 + 1);
  *v27 = *a5;
  v27[1] = v29;

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076510, &qword_1E65F5858);
  sub_1E5FED46C(&qword_1ED076518, &qword_1ED076510, &qword_1E65F5858, MEMORY[0x1E6981F48]);
  v30 = v51;
  sub_1E65DCFA8();
  v31 = *(v56 + 16);
  v32 = *(v56 + 24);
  v33 = sub_1E5FED46C(&qword_1ED076520, &qword_1ED0764F8, &qword_1E65F5840, MEMORY[0x1E699EF20]);
  v34 = v50;
  v35 = v31;
  v36 = v53;
  sub_1E5E1EC14(v35, v32, v53, v33);
  v37 = v36;
  (*(v54 + 8))(v30, v36);
  v38 = v45;
  sub_1E5E1DEAC(v48, v45);
  v39 = swift_allocObject();
  sub_1E5E1FA80(v38, v39 + v23);
  *&v61[0] = v37;
  *(&v61[0] + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v40 = v52;
  v41 = v58;
  sub_1E6259D5C(sub_1E60722DC, v39, v58);

  (*(v59 + 8))(v34, v41);
  sub_1E61CC11C();
  v42 = v55;
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v40, &qword_1ED076508, &qword_1E65F5850);
  sub_1E5FEE4C8();
  return sub_1E5DFE50C(v42, &qword_1ED076508, &qword_1E65F5850);
}

uint64_t sub_1E61CA938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a5;
  v147 = a4;
  v142 = a3;
  v146 = a2;
  v119 = a1;
  v133 = a6;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v145 = v107 - v6;
  v141 = sub_1E65D76F8();
  v140 = *(v141 - 8);
  v118 = *(v140 + 64);
  v7 = MEMORY[0x1EEE9AC00](v141);
  v148 = v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v149 = v107 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v144 = v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v150 = v107 - v13;
  v14 = type metadata accessor for AppComposer(0);
  v138 = *(v14 - 8);
  v137 = *(v138 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v117 = v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v116 = (v107 - v17);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v131 = *(v130 - 8);
  v18 = MEMORY[0x1EEE9AC00](v130);
  v125 = v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v126 = v107 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v128 = v107 - v22;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076530, &qword_1E65F5860);
  v23 = MEMORY[0x1EEE9AC00](v132);
  v127 = v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v129 = v107 - v25;
  v26 = sub_1E65E07B8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v107 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076538, &qword_1E65F5868);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v107 - v35;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076540, &qword_1E65F5870);
  v37 = MEMORY[0x1EEE9AC00](v124);
  v123 = v107 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v143 = v107 - v39;
  sub_1E65E4AE8();
  LODWORD(v139) = sub_1E65E4468();
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E0668();
  (*(v31 + 8))(v33, v30);
  sub_1E65E0798();
  (*(v27 + 8))(v29, v26);
  sub_1E65E3BF8();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076548, &qword_1E65F5898) + 36)];
  *v48 = v139;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_1E65E3DF8();
  v50 = sub_1E65E4438();
  v51 = &v36[*(v34 + 36)];
  *v51 = v49;
  v51[8] = v50;
  sub_1E61CC218();
  sub_1E65E4898();
  sub_1E5DFE50C(v36, &qword_1ED076538, &qword_1E65F5868);
  v52 = v116;
  sub_1E5E1DEAC(v146, v116);
  sub_1E5DF650C(v147, &v154);
  v53 = v111;
  v112 = *v111;
  v113 = v111[3];
  v114 = v111[5];
  v115 = v111[7];
  v139 = v111[9];
  v54 = *(v138 + 80);
  v55 = (v54 + 16) & ~v54;
  v136 = v55 + v137;
  v135 = v55;
  v134 = v54 | 7;
  v56 = (v55 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
  v138 = v56;
  v137 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v122 = v57;
  sub_1E5E1FA80(v52, v57 + v55);
  sub_1E5DF599C(&v154, v57 + v56);
  v58 = (v57 + ((v56 + 47) & 0xFFFFFFFFFFFFFFF8));
  v59 = v53[3];
  v58[2] = v53[2];
  v58[3] = v59;
  v58[4] = v53[4];
  v60 = v53[1];
  *v58 = *v53;
  v58[1] = v60;
  v61 = sub_1E65E3E08();
  v62 = *(v61 - 8);
  v63 = v150;
  (*(v62 + 16))(v150, v119, v61);
  (*(v62 + 56))(v63, 0, 1, v61);
  swift_unknownObjectRetain();

  v64 = v149;
  sub_1E65D76E8();
  (*(v120 + 104))(v145, *MEMORY[0x1E699D720], v121);
  v65 = v146;
  v66 = v117;
  sub_1E5E1DEAC(v146, v117);
  v121 = swift_allocObject();
  v67 = v135;
  sub_1E5E1FA80(v66, v121 + v135);
  sub_1E5E1DEAC(v65, v66);
  v120 = swift_allocObject();
  v68 = v67;
  sub_1E5E1FA80(v66, v120 + v67);
  sub_1E5E1DEAC(v65, v66);
  v119 = swift_allocObject();
  sub_1E5E1FA80(v66, v119 + v67);
  v69 = v66;
  sub_1E5E1DEAC(v65, v66);
  sub_1E5DF650C(v147, &v153);
  v70 = v140;
  v71 = *(v140 + 16);
  v110 = v140 + 16;
  v116 = v71;
  v72 = v148;
  v73 = v141;
  (v71)(v148, v64, v141);
  v74 = v137;
  v108 = (v137 + 87) & 0xFFFFFFFFFFFFFFF8;
  v109 = v108 + 8;
  v75 = (v108 + 8 + *(v70 + 80)) & ~*(v70 + 80);
  v76 = swift_allocObject();
  sub_1E5E1FA80(v69, v76 + v68);
  sub_1E5DF599C(&v153, v76 + v138);
  v77 = (v76 + v74);
  v78 = v76;
  v118 = v76;
  v79 = v53[3];
  v77[2] = v53[2];
  v77[3] = v79;
  v77[4] = v53[4];
  v80 = v53[1];
  *v77 = *v53;
  v77[1] = v80;
  v81 = v142;
  v82 = v108;
  *(v78 + v108) = v142;
  (*(v70 + 32))(v78 + v75, v72, v73);
  v83 = v146;
  sub_1E5E1DEAC(v146, v69);
  sub_1E5DF650C(v147, &v153);
  v84 = swift_allocObject();
  v85 = v135;
  sub_1E5E1FA80(v69, v84 + v135);
  sub_1E5DF599C(&v153, v84 + v138);
  v86 = (v84 + v137);
  v147 = v84;
  v87 = v53[3];
  v86[2] = v53[2];
  v86[3] = v87;
  v86[4] = v53[4];
  v88 = v53[1];
  *v86 = *v53;
  v86[1] = v88;
  *(v84 + v82) = v81;
  sub_1E5E1DEAC(v83, v69);
  v146 = swift_allocObject();
  sub_1E5E1FA80(v69, v146 + v85);
  sub_1E5DFD1CC(v150, v144, &qword_1ED074410, &qword_1E65F0B78);
  (v116)(v148, v149, v73);
  v138 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v137 = type metadata accessor for ArtworkDescriptor(0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v117 = type metadata accessor for ContextMenu(0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v114 = type metadata accessor for ItemContext(0);
  v113 = type metadata accessor for ItemMetrics(0);
  v112 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v110 = type metadata accessor for SectionMetrics(0);
  v109 = type metadata accessor for ViewDescriptor(0);
  v108 = sub_1E61CC7BC(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v107[7] = sub_1E60731B0();
  v107[6] = sub_1E61CC7BC(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v107[5] = sub_1E5FEB2FC();
  v107[4] = sub_1E60C08DC();
  v107[3] = sub_1E60C15C0();
  v107[2] = sub_1E61CC7BC(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v91 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  *&v153 = v90;
  *(&v153 + 1) = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v153 = v89;
  *(&v153 + 1) = OpaqueTypeConformance2;
  v107[1] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E61CC7BC(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E61CC7BC(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E61CC7BC(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E61CC7BC(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E61CC7BC(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E61CC7BC(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E61CC7BC(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v93 = v125;
  sub_1E65DC198();
  (*(v140 + 8))(v149, v141);
  sub_1E5DFE50C(v150, &qword_1ED074410, &qword_1E65F0B78);
  v94 = sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  v95 = v126;
  v96 = v130;
  sub_1E5FEE4C8();
  v97 = *(v131 + 8);
  v97(v93, v96);
  v98 = v128;
  sub_1E5FEE4C8();
  v97(v95, v96);
  v99 = sub_1E65E4458();
  v100 = v127;
  sub_1E6501658(v99, 0x4034000000000000, 0, v96, v94);
  v97(v98, v96);
  v101 = sub_1E61CC52C();
  v102 = v129;
  v103 = v132;
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v100, &qword_1ED076530, &qword_1E65F5860);
  v104 = v143;
  v105 = v123;
  sub_1E5DFD1CC(v143, v123, &qword_1ED076540, &qword_1E65F5870);
  *&v154 = v105;
  sub_1E5EB2078(v102, v100);
  *(&v154 + 1) = v100;
  *&v153 = v124;
  *(&v153 + 1) = v103;
  v151 = sub_1E61CC478(&qword_1ED076570, &qword_1ED076540, &qword_1E65F5870, sub_1E61CC218);
  v152 = v101;
  sub_1E61C9298(&v154, 2uLL, &v153);
  sub_1E5DFE50C(v102, &qword_1ED076530, &qword_1E65F5860);
  sub_1E5DFE50C(v104, &qword_1ED076540, &qword_1E65F5870);
  sub_1E5DFE50C(v100, &qword_1ED076530, &qword_1E65F5860);
  return sub_1E5DFE50C(v105, &qword_1ED076540, &qword_1E65F5870);
}

uint64_t sub_1E61CBED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);

  return sub_1E61CA938(a1, v2 + v6, v8, v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8), (v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_1E61CBF9C(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  sub_1E61E66C8(a1, a3, a4, v15 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v12 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v15[0] = v11;
  v15[1] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v10, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1E61CC11C()
{
  result = qword_1ED076528;
  if (!qword_1ED076528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076508, &qword_1E65F5850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0764F8, &qword_1E65F5840);
    sub_1E5FED46C(&qword_1ED076520, &qword_1ED0764F8, &qword_1E65F5840, MEMORY[0x1E699EF20]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076528);
  }

  return result;
}

unint64_t sub_1E61CC218()
{
  result = qword_1ED076550;
  if (!qword_1ED076550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076538, &qword_1E65F5868);
    sub_1E61CC2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076550);
  }

  return result;
}

unint64_t sub_1E61CC2A4()
{
  result = qword_1ED076558;
  if (!qword_1ED076558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076548, &qword_1E65F5898);
    sub_1E61CC7BC(&qword_1ED076560, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076558);
  }

  return result;
}

uint64_t sub_1E61CC360(char *a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E61CBF9C(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E61CC478(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E61CC7BC(&qword_1EE2D4BC8, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E61CC52C()
{
  result = qword_1ED076568;
  if (!qword_1ED076568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076530, &qword_1E65F5860);
    sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
    sub_1E61CC7BC(&qword_1EE2D4C38, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076568);
  }

  return result;
}

unint64_t sub_1E61CC614()
{
  result = qword_1ED076588;
  if (!qword_1ED076588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076580, &qword_1E65F58A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076038, &qword_1E65F4908);
    sub_1E5FED46C(&qword_1ED076080, &qword_1ED076038, &qword_1E65F4908, MEMORY[0x1E699EE90]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076588);
  }

  return result;
}

uint64_t sub_1E61CC728(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1E61CC7BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E61CC804(uint64_t result, uint64_t a2)
{
  if (*(v2 + 16))
  {
    return sub_1E60C34A8(result, a2);
  }

  return result;
}

uint64_t sub_1E61CC82C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1E65E6058();
  v3[5] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E61CC8C8, v5, v4);
}

uint64_t sub_1E61CC8C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = *(v0[4] + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 24) + **(v2 + 24));
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1E61CCA44;
    v6 = v0[2];
    v5 = v0[3];

    return v9(v6, v5, ObjectType, v2);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E61CCA44()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E61CCB88, v3, v2);
}

uint64_t sub_1E61CCB88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61CCBE8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  sub_1E65E6058();
  *(v2 + 24) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E61CCC84, v4, v3);
}

uint64_t sub_1E61CCC84()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = *(*(v0 + 16) + 24);
    ObjectType = swift_getObjectType();
    v8 = (*(v2 + 32) + **(v2 + 32));
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_1E61CCE00;
    v5 = *(v0 + 64);

    return v8(v5, ObjectType, v2);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E61CCE00()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1E5F961F4, v3, v2);
}

uint64_t sub_1E61CCF44()
{
  sub_1E5E0BE48(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1E61CCF7C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E61CCFE8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E61CD054(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E61CC82C(a1, a2);
}

uint64_t sub_1E61CD0F8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFE6BC;

  return sub_1E61CCBE8(a1);
}

uint64_t sub_1E61CD18C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  sub_1E65E3B18();
  result = sub_1E65E3B18();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v0 + 32);

    v3(v5);

    return sub_1E5F9169C(v3, v4);
  }

  return result;
}

uint64_t sub_1E61CD2D8(uint64_t a1, char a2)
{
  *(v3 + 184) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  *(v3 + 56) = type metadata accessor for RouteDetourPresenter.State(0);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = sub_1E65E6058();
  *(v3 + 80) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  *(v3 + 88) = v5;
  *(v3 + 96) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E61CD3A8, v5, v4);
}

uint64_t sub_1E61CD3A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state;
  swift_beginAccess();
  sub_1E61CFFB4(v2 + v3, v1, type metadata accessor for RouteDetourPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *(v0 + 64);

    v11 = type metadata accessor for RouteDetourPresenter.State;
    v12 = v10;
LABEL_10:
    sub_1E61D001C(v12, v11);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {

LABEL_11:

    v14 = *(v0 + 8);

    return v14();
  }

  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076598, &qword_1E65F59C8);
  v8 = *(v5 + *(v7 + 48));
  *(v0 + 104) = v8;
  v9 = *(v5 + *(v7 + 64));
  *(v0 + 112) = v9;
  if (v9 != v6)
  {

LABEL_9:
    v12 = *(v0 + 64);
    v11 = type metadata accessor for RouteDestination;
    goto LABEL_10;
  }

  v13 = [v9 presentingViewController];
  if (v13)
  {

    goto LABEL_9;
  }

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v16 = sub_1E65E3B68();
  __swift_project_value_buffer(v16, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v17 = swift_task_alloc();
  *(v0 + 120) = v17;
  *v17 = v0;
  v17[1] = sub_1E61CD634;
  v18 = *(v0 + 184);

  return sub_1E6394EA4(v18);
}

uint64_t sub_1E61CD634()
{
  v1 = *v0;
  v2 = *v0;

  *(v1 + 128) = sub_1E65E6048();
  v3 = swift_task_alloc();
  *(v1 + 136) = v3;
  *v3 = v2;
  v3[1] = sub_1E61CD798;
  v4 = *(v1 + 184);

  return sub_1E6394EA4(v4);
}

uint64_t sub_1E61CD798()
{
  v1 = *v0;

  v3 = sub_1E65E5FC8();
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E61CD8DC, v3, v2);
}

uint64_t sub_1E61CD8DC(uint64_t a1)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 184);
  v4 = *(v1 + 40);
  *(v1 + 160) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v1 + 168) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  v6 = swift_task_alloc();
  *(v1 + 176) = v6;
  *v6 = v1;
  v6[1] = sub_1E61CD9F8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E61CD9F8()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E61CDB58, v3, v2);
}

uint64_t sub_1E61CDB58()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E61CDBBC, v1, v2);
}

uint64_t sub_1E61CDBBC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[8];

  sub_1E61D001C(v3, type metadata accessor for RouteDestination);

  v4 = v0[1];

  return v4();
}

char *sub_1E61CDC58()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = objc_allocWithZone(_s20NavigationControllerCMa(0));
  v7 = sub_1E6239324(v2, sub_1E61D007C, v3, sub_1E61D0084, v4, &unk_1E65F59F0, v5);
  [*&v7[OBJC_IVAR____TtCC10Blackbeard20RouteDetourPresenter20NavigationController_menuGestureRecognizer] addTarget:v1 action:sel_menuButtonTapped];
  return v7;
}

uint64_t sub_1E61CDD88(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 24);
    if (v2)
    {
      v3 = *(result + 32);
      sub_1E5F8711C(*(result + 24), v3);

      v2(v4);
      return sub_1E5F9169C(v2, v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E61CDE18(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 40);
    if (v2)
    {
      v3 = *(result + 48);
      sub_1E5F8711C(*(result + 40), v3);

      v2(v4);
      return sub_1E5F9169C(v2, v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E61CDEA8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  sub_1E65E6058();
  *(v3 + 56) = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E61CDF44, v5, v4);
}

uint64_t sub_1E61CDF44()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1E61CE040;
    v3 = *(v0 + 96);
    v4 = *(v0 + 40);

    return sub_1E61CD2D8(v4, v3);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1E61CE040()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E61CE184, v3, v2);
}

uint64_t sub_1E61CE184()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61CE1E4()
{
  sub_1E5F9169C(v0[3], v0[4]);
  sub_1E5F9169C(v0[5], v0[6]);
  sub_1E61D001C(v0 + OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state, type metadata accessor for RouteDetourPresenter.State);

  return swift_deallocClassInstance();
}

uint64_t sub_1E61CE298@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RouteDetourPresenter.State(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state;
  swift_beginAccess();
  sub_1E61CFFB4(v1 + v6, v5, type metadata accessor for RouteDetourPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E61D001C(v5, type metadata accessor for RouteDetourPresenter.State);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076598, &qword_1E65F59C8);

  sub_1E5F9CE80(v5, a1);
  v9 = 0;
LABEL_6:
  v10 = type metadata accessor for RouteDestination(0);
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t sub_1E61CE414(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = type metadata accessor for RouteDetourPresenter.State(0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = sub_1E65E6058();
  v2[17] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  v2[18] = v4;
  v2[19] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E61CE4EC, v4, v3);
}

uint64_t sub_1E61CE4EC()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v4 = OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state;
  swift_beginAccess();
  sub_1E61CFFB4(v2 + v4, v1, type metadata accessor for RouteDetourPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = v0[14];
      v7 = v0[15];
      v8 = v0[11];
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076598, &qword_1E65F59C8);
      v10 = *(v7 + *(v9 + 48));
      v0[20] = v10;
      v11 = *(v7 + *(v9 + 64));
      v0[21] = v11;
      v12 = sub_1E61CDC58();
      v0[22] = v12;
      v13 = *(v9 + 48);
      v14 = *(v9 + 64);
      sub_1E61CFFB4(v8, v6, type metadata accessor for RouteDestination);
      *(v6 + v13) = v10;
      *(v6 + v14) = v12;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v15 = v10;
      v16 = v12;
      sub_1E61CFF50(v6, v2 + v4);
      swift_endAccess();
      v11;
      v17 = swift_task_alloc();
      v0[23] = v17;
      *v17 = v0;
      v17[1] = sub_1E61CE904;

      return sub_1E6394EA4(0);
    }

    else
    {
      return sub_1E65E69D8();
    }
  }

  else
  {
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[11];

    v22 = *v20;
    v23 = sub_1E61CDC58();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076598, &qword_1E65F59C8);
    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    sub_1E61CFFB4(v21, v19, type metadata accessor for RouteDestination);
    *(v19 + v25) = v22;
    *(v19 + v26) = v23;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v27 = v22;
    v28 = v23;
    sub_1E61CFF50(v19, v2 + v4);
    swift_endAccess();
    type metadata accessor for RouteDetourPresenter.RouteDetourDisplayHandle();
    v29 = swift_allocObject();
    *(v29 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v29 + 24) = &off_1F5FB4FB8;
    swift_unknownObjectWeakAssign();

    v30 = v0[1];

    return v30(v29, &off_1F5FB26B8);
  }
}

uint64_t sub_1E61CE904()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E61CEA24, v3, v2);
}

uint64_t sub_1E61CEA24()
{
  v1 = v0[21];
  v2 = [v1 presentingViewController];
  v0[24] = v2;

  if (v2)
  {
    v0[25] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v0[26] = v4;
    v0[27] = v3;

    return MEMORY[0x1EEE6DFA0](sub_1E61CEBBC, v4, v3);
  }

  else
  {

    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[15];
    type metadata accessor for RouteDetourPresenter.RouteDetourDisplayHandle();
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v9 + 24) = &off_1F5FB4FB8;
    swift_unknownObjectWeakAssign();

    sub_1E61D001C(v8, type metadata accessor for RouteDestination);

    v10 = v0[1];

    return v10(v9, &off_1F5FB26B8);
  }
}

uint64_t sub_1E61CEBBC(uint64_t a1)
{
  v2 = v1[24];
  v1[28] = sub_1E65E6048();
  v3 = swift_task_alloc();
  v1[29] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  v4 = swift_task_alloc();
  v1[30] = v4;
  *v4 = v1;
  v4[1] = sub_1E61CECC8;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E61CECC8()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1E61CEE28, v3, v2);
}

uint64_t sub_1E61CEE28()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E61CEE94, v1, v2);
}

uint64_t sub_1E61CEE94()
{

  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[15];
  type metadata accessor for RouteDetourPresenter.RouteDetourDisplayHandle();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = &off_1F5FB4FB8;
  swift_unknownObjectWeakAssign();

  sub_1E61D001C(v4, type metadata accessor for RouteDestination);

  v6 = v0[1];

  return v6(v5, &off_1F5FB26B8);
}

uint64_t sub_1E61CEF94(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = v3;
  *(v4 + 280) = a3;
  *(v4 + 96) = a1;
  *(v4 + 120) = type metadata accessor for RouteDestination(0);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = type metadata accessor for RouteDetourPresenter.State(0);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = sub_1E65E6058();
  *(v4 + 184) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v4 + 192) = v6;
  *(v4 + 200) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E61CF0BC, v6, v5);
}

uint64_t sub_1E61CF0BC()
{
  v71 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v3 = OBJC_IVAR____TtC10Blackbeard20RouteDetourPresenter_state;
  swift_beginAccess();
  sub_1E61CFFB4(v2 + v3, v1, type metadata accessor for RouteDetourPresenter.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v17 = *(v0 + 168);

    v35 = type metadata accessor for RouteDetourPresenter.State;
LABEL_21:
    v33 = v35;
    v34 = v17;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 1)
  {

LABEL_23:

    v45 = *(v0 + 8);

    return v45();
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 96);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076598, &qword_1E65F59C8);
  v9 = *(v5 + *(v8 + 48));
  *(v0 + 208) = v9;
  v10 = *(v5 + *(v8 + 64));
  *(v0 + 216) = v10;
  sub_1E5F9CE80(v5, v6);
  if (object_getClass(v7) != _TtCC10Blackbeard20RouteDetourPresenterP33_E527F0BD857B0EA0BE2FC0D1803B804B24RouteDetourDisplayHandle || !v7)
  {

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v36 = sub_1E65E3B68();
    __swift_project_value_buffer(v36, qword_1EE2EA2A0);
    swift_unknownObjectRetain();
    v14 = sub_1E65E3B48();
    v37 = sub_1E65E6328();
    swift_unknownObjectRelease();
    v38 = os_log_type_enabled(v14, v37);
    v17 = *(v0 + 144);
    if (v38)
    {
      v69 = *(v0 + 96);
      v39 = swift_slowAlloc();
      v40 = v9;
      v41 = swift_slowAlloc();
      v70 = v41;
      *v39 = 136446210;
      *(v0 + 64) = v69;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE8, &qword_1E65F59D0);
      v42 = sub_1E65E5CE8();
      v44 = sub_1E5DFD4B0(v42, v43, &v70);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1E5DE9000, v14, v37, "Unexpected display type: %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1E694F1C0](v41, -1, -1);
      MEMORY[0x1E694F1C0](v39, -1, -1);

LABEL_20:
      v35 = type metadata accessor for RouteDestination;
      goto LABEL_21;
    }

LABEL_19:
    goto LABEL_20;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  if (!Strong || (swift_unknownObjectRelease(), Strong != v10))
  {

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v12 = sub_1E65E3B68();
    __swift_project_value_buffer(v12, qword_1EE2EA2A0);
    swift_unknownObjectRetain();
    v13 = v10;
    v14 = sub_1E65E3B48();
    v15 = sub_1E65E6328();
    swift_unknownObjectRelease();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 144);
    v18 = *(v0 + 96);
    if (v16)
    {
      v68 = v9;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v70 = v20;
      *v19 = 136446466;
      v21 = swift_unknownObjectWeakLoadStrong();
      v22 = *(v18 + 24);
      *(v0 + 80) = v21;
      *(v0 + 88) = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765A0, &qword_1E65F59D8);
      v67 = v17;
      v23 = sub_1E65E6648();
      v25 = v24;
      swift_unknownObjectRelease();
      v26 = sub_1E5DFD4B0(v23, v25, &v70);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2082;
      v27 = v13;
      v28 = [v27 description];
      v29 = sub_1E65E5C78();
      v31 = v30;

      v32 = sub_1E5DFD4B0(v29, v31, &v70);

      *(v19 + 14) = v32;
      _os_log_impl(&dword_1E5DE9000, v14, v15, "%{public}s != %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v20, -1, -1);
      MEMORY[0x1E694F1C0](v19, -1, -1);

      swift_unknownObjectRelease();
      v33 = type metadata accessor for RouteDestination;
      v34 = v67;
LABEL_22:
      sub_1E61D001C(v34, v33);
      goto LABEL_23;
    }

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v47 = v9;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v48 = *(v0 + 160);
  v50 = *(v0 + 136);
  v49 = *(v0 + 144);
  v51 = sub_1E65E3B68();
  __swift_project_value_buffer(v51, qword_1EE2EA2A0);
  sub_1E65E3B18();
  *v48 = v47;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v52 = v47;
  sub_1E61CFF50(v48, v2 + v3);
  swift_endAccess();
  sub_1E61CFFB4(v49, v50, type metadata accessor for RouteDestination);
  v53 = sub_1E65E3B48();
  v54 = sub_1E65E6338();
  v55 = os_log_type_enabled(v53, v54);
  v56 = *(v0 + 136);
  if (v55)
  {
    v57 = *(v0 + 128);
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v70 = v59;
    *v58 = 141558274;
    *(v58 + 4) = 1752392040;
    *(v58 + 12) = 2080;
    sub_1E61CFFB4(v56, v57, type metadata accessor for RouteDestination);
    v60 = sub_1E65E5CE8();
    v62 = v61;
    sub_1E61D001C(v56, type metadata accessor for RouteDestination);
    v63 = sub_1E5DFD4B0(v60, v62, &v70);

    *(v58 + 14) = v63;
    _os_log_impl(&dword_1E5DE9000, v53, v54, "Dismissing Detour Presenter for %{mask.hash}s", v58, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x1E694F1C0](v59, -1, -1);
    MEMORY[0x1E694F1C0](v58, -1, -1);
  }

  else
  {

    sub_1E61D001C(v56, type metadata accessor for RouteDestination);
  }

  v64 = [v10 presentingViewController];
  *(v0 + 224) = v64;
  if (!v64)
  {
    sub_1E61D001C(*(v0 + 144), type metadata accessor for RouteDestination);

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  *(v0 + 232) = sub_1E65E6048();
  v66 = sub_1E65E5FC8();
  *(v0 + 240) = v66;
  *(v0 + 248) = v65;

  return MEMORY[0x1EEE6DFA0](sub_1E61CF954, v66, v65);
}

uint64_t sub_1E61CF954(uint64_t a1)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 280);
  *(v1 + 256) = sub_1E65E6048();
  v4 = swift_task_alloc();
  *(v1 + 264) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  *(v1 + 272) = v5;
  *v5 = v1;
  v5[1] = sub_1E61CFA6C;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E61CFA6C()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1E61CFBCC, v3, v2);
}

uint64_t sub_1E61CFBCC()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1E61CFC38, v1, v2);
}

uint64_t sub_1E61CFC38()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];

  swift_unknownObjectRelease();
  sub_1E61D001C(v3, type metadata accessor for RouteDestination);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E61CFD0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E61CFDA0;

  return sub_1E61CE414(a1);
}

uint64_t sub_1E61CFDA0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1E61CFEA4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E61CEF94(a1, a2, a3);
}

uint64_t sub_1E61CFF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteDetourPresenter.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61CFFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61D001C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61D008C(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E61CDEA8(a1, a2, v2);
}

uint64_t sub_1E61D0138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[54] = a4;
  v9 = sub_1E65D76A8();
  v8[59] = v9;
  v8[60] = *(v9 - 8);
  v8[61] = swift_task_alloc();
  v10 = sub_1E65D8EF8();
  v8[62] = v10;
  v8[63] = *(v10 - 8);
  v8[64] = swift_task_alloc();
  v11 = sub_1E65D7EB8();
  v8[65] = v11;
  v8[66] = *(v11 - 8);
  v8[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v12 = sub_1E65D76F8();
  v8[70] = v12;
  v8[71] = *(v12 - 8);
  v8[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v13 = sub_1E65D8F28();
  v8[75] = v13;
  v8[76] = *(v13 - 8);
  v8[77] = swift_task_alloc();
  v14 = sub_1E65D7848();
  v8[78] = v14;
  v8[79] = *(v14 - 8);
  v8[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v8[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075FB8, &qword_1E65F4690);
  v8[82] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v8[83] = swift_task_alloc();
  v8[84] = swift_task_alloc();
  v15 = sub_1E65D8C68();
  v8[85] = v15;
  v8[86] = *(v15 - 8);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v8[91] = type metadata accessor for PageMetricsClick(0);
  v8[92] = swift_task_alloc();
  v8[93] = swift_task_alloc();
  v8[94] = swift_task_alloc();
  v8[95] = sub_1E65DEB68();
  v8[96] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  v8[97] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v8[98] = v16;
  v8[99] = *(v16 - 8);
  v8[100] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  v8[101] = swift_task_alloc();
  v8[102] = swift_task_alloc();
  v8[103] = swift_task_alloc();
  v8[104] = swift_task_alloc();
  v8[105] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61D0734, 0, 0);
}

uint64_t sub_1E61D0734()
{
  v1 = v0[105];
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[55];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEC44(v1);
  sub_1E5DFE50C(v5, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v3 + 8))(v2, v4);
  sub_1E61D2F24(v7, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v8 = v187;
      v69 = v187[96];
      sub_1E5DFE50C(v187[105], &qword_1ED072968, &unk_1E6609800);
      sub_1E61D2FF0(v69, MEMORY[0x1E699CCF8]);
      goto LABEL_3;
    case 2u:
      v11 = v187;
      v12 = v187[102];
      v13 = v187[96];
      v14 = v187[66];
      v15 = v187[65];
      v173 = v13[1];
      v177 = *v13;
      sub_1E5DFD1CC(v187[105], v12, &qword_1ED072968, &unk_1E6609800);
      v16 = 1;
      v182 = *(v14 + 48);
      if (v182(v12, 1, v15) != 1)
      {
        v17 = v187[67];
        v18 = v187[66];
        v19 = v187[65];
        v20 = v187[64];
        v21 = v187[63];
        v169 = v187[62];
        v22 = v187[61];
        v23 = v187[60];
        v24 = v187[59];
        (*(v18 + 32))(v17, v187[102], v19);
        sub_1E65D7688();
        sub_1E65D7E58();
        (*(v23 + 8))(v22, v24);
        sub_1E65D7E28();
        (*(v21 + 8))(v20, v169);
        (*(v18 + 8))(v17, v19);
        v11 = v187;
        v16 = 0;
      }

      v25 = v11[69];
      v26 = v11[68];
      v27 = v187[60];
      v28 = v187[59];
      (*(v27 + 56))(v25, v16, 1, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EA8E0;
      *(inited + 32) = 10;
      sub_1E5DFD1CC(v25, v26, &qword_1ED0752D8, &qword_1E660CC30);
      v30 = (*(v27 + 48))(v26, 1, v28);
      v31 = v187;
      v32 = v30;
      v33 = v187[68];
      if (v30 == 1)
      {
        sub_1E5DFE50C(v187[68], &qword_1ED0752D8, &qword_1E660CC30);
        v34 = 0;
      }

      else
      {
        v70 = v187[60];
        v71 = v187[59];
        v34 = sub_1E65D7608();
        (*(v70 + 8))(v33, v71);
        v31 = v187;
      }

      v72 = v32 == 1;
      v73 = v31[105];
      v74 = v31[101];
      v75 = v31[65];
      v31[52] = v34;
      *(v31 + 424) = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765A8, &qword_1E65F5A38);
      sub_1E61D2F88(&qword_1ED0765B0, &qword_1ED0765A8, &qword_1E65F5A38);
      sub_1E65E6848();
      *(inited + 80) = 13;
      v31[44] = v177;
      v31[45] = v173;
      sub_1E65E6848();
      *(inited + 128) = 9;
      sub_1E5DFD1CC(v73, v74, &qword_1ED072968, &unk_1E6609800);
      v76 = v182(v74, 1, v75);
      v77 = v31[101];
      if (v76 == 1)
      {
        sub_1E5DFE50C(v31[101], &qword_1ED072968, &unk_1E6609800);
        v78 = 0;
        v79 = 0;
      }

      else
      {
        v80 = v31[72];
        v81 = v187[71];
        v82 = v187[70];
        v83 = v187[66];
        v84 = v187[65];
        sub_1E65D7DC8();
        (*(v83 + 8))(v77, v84);
        v78 = sub_1E65D76C8();
        v79 = v85;
        (*(v81 + 8))(v80, v82);
        v31 = v187;
      }

      v86 = v31[92];
      v87 = v31[91];
      v88 = v31[86];
      v89 = v31[76];
      v179 = v31[85];
      v185 = v31[75];
      v188 = v31[58];
      v31[46] = v78;
      v31[47] = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E61D2F88(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
      sub_1E65E6848();
      v90 = sub_1E6427784(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      v91 = *MEMORY[0x1E69CC908];
      v92 = sub_1E65D9D78();
      v93 = v31;
      v94 = *(v92 - 8);
      (*(v94 + 104))(v86, v91, v92);
      (*(v94 + 56))(v86, 0, 1, v92);
      (*(v88 + 104))(v86 + v87[5], *MEMORY[0x1E69CBAA0], v179);
      v95 = v87[6];
      v96 = sub_1E65D74E8();
      (*(*(v96 - 8) + 56))(v86 + v95, 1, 1, v96);
      v97 = v87[8];
      v98 = sub_1E65DA208();
      (*(*(v98 - 8) + 56))(v86 + v97, 1, 1, v98);
      (*(v89 + 104))(v86 + v87[14], *MEMORY[0x1E69CBCC8], v185);
      v99 = v87[15];
      v100 = sub_1E65D9908();
      (*(*(v100 - 8) + 56))(v86 + v99, 1, 1, v100);
      *(v86 + v87[7]) = MEMORY[0x1E69E7CC0];
      v101 = (v86 + v87[9]);
      *v101 = 0;
      v101[1] = 0;
      v102 = (v86 + v87[10]);
      *v102 = 0;
      v102[1] = 0;
      *(v86 + v87[11]) = v90;
      v103 = (v86 + v87[12]);
      *v103 = 0;
      v103[1] = 0;
      *(v86 + v87[13]) = xmmword_1E65F5A00;
      v189 = (*(v188 + 48) + **(v188 + 48));
      v104 = swift_task_alloc();
      v93[110] = v104;
      *v104 = v93;
      v104[1] = sub_1E61D24F0;
      v105 = v93[92];
      goto LABEL_28;
    case 3u:
      v52 = v187[96];
      v53 = v187[59];
      v54 = v187[60];
      sub_1E5DFE50C(v187[105], &qword_1ED072968, &unk_1E6609800);
      (*(v54 + 8))(v52, v53);
      v8 = v187;
      goto LABEL_3;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xEu:
    case 0xFu:
      v8 = v187;
      sub_1E5DFE50C(v187[105], &qword_1ED072968, &unk_1E6609800);
LABEL_3:

      v9 = v8[1];

      return v9();
    case 0xDu:
      v35 = v187;
      v174 = v187[103];
      v178 = v187[105];
      v36 = v187[89];
      v37 = v187[87];
      v38 = v187[86];
      v39 = v187[85];
      v40 = v187[83];
      v170 = v187[73];
      v41 = v187[66];
      v183 = v187[65];
      v42 = *MEMORY[0x1E69CC908];
      v43 = sub_1E65D9D78();
      v44 = *(v43 - 8);
      (*(v44 + 104))(v36, v42, v43);
      (*(v44 + 56))(v36, 0, 1, v43);
      (*(v38 + 104))(v37, *MEMORY[0x1E69CBA90], v39);
      v45 = sub_1E65D74E8();
      (*(*(v45 - 8) + 56))(v40, 1, 1, v45);
      v46 = sub_1E65DA208();
      (*(*(v46 - 8) + 56))(v170, 1, 1, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_1E65EA670;
      *(v47 + 32) = 9;
      sub_1E5DFD1CC(v178, v174, &qword_1ED072968, &unk_1E6609800);
      v48 = (*(v41 + 48))(v174, 1, v183);
      v49 = v187[103];
      if (v48 == 1)
      {
        sub_1E5DFE50C(v187[103], &qword_1ED072968, &unk_1E6609800);
        v50 = 0;
        v51 = 0;
      }

      else
      {
        v106 = v187[72];
        v107 = v187[71];
        v108 = v187[70];
        v109 = v187[66];
        v110 = v187[65];
        sub_1E65D7DC8();
        (*(v109 + 8))(v49, v110);
        v50 = sub_1E65D76C8();
        v51 = v111;
        (*(v107 + 8))(v106, v108);
        v35 = v187;
      }

      v112 = v35[93];
      v113 = v35[91];
      v114 = v35[86];
      v167 = v35[89];
      v171 = v35[85];
      v175 = v35[87];
      v180 = v35[83];
      v115 = v35[76];
      v165 = v35[75];
      v186 = v35[73];
      v190 = v35[58];
      v35[48] = v50;
      v35[49] = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E61D2F88(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
      sub_1E65E6848();
      v116 = sub_1E6427784(v47);
      swift_setDeallocating();
      sub_1E5DFE50C(v47 + 32, &qword_1ED072988, &qword_1E65EC128);
      (*(v115 + 104))(v112 + v113[14], *MEMORY[0x1E69CBCC8], v165);
      v117 = v35;
      v118 = v113[15];
      v119 = sub_1E65D9908();
      (*(*(v119 - 8) + 56))(v112 + v118, 1, 1, v119);
      sub_1E5FAB460(v167, v112, &qword_1ED073578, &qword_1E65F0E60);
      (*(v114 + 32))(v112 + v113[5], v175, v171);
      sub_1E5FAB460(v180, v112 + v113[6], &qword_1ED072340, &qword_1E65EA410);
      *(v112 + v113[7]) = MEMORY[0x1E69E7CC0];
      sub_1E5FAB460(v186, v112 + v113[8], &qword_1ED073570, &unk_1E65F4570);
      v120 = (v112 + v113[9]);
      *v120 = 0;
      v120[1] = 0;
      v121 = (v112 + v113[10]);
      *v121 = 0;
      v121[1] = 0;
      *(v112 + v113[11]) = v116;
      v122 = (v112 + v113[12]);
      *v122 = 0;
      v122[1] = 0;
      *(v112 + v113[13]) = xmmword_1E65F4AB0;
      v189 = (*(v190 + 48) + **(v190 + 48));
      v123 = swift_task_alloc();
      v117[108] = v123;
      *v123 = v117;
      v123[1] = sub_1E61D21A8;
      v105 = v117[93];
      goto LABEL_28;
    default:
      v55 = v187[90];
      v56 = v187[88];
      v57 = v187[86];
      v58 = v187[85];
      v59 = v187[84];
      v60 = v187[82];
      v61 = v187[81];
      v62 = sub_1E65D9D78();
      (*(*(v62 - 8) + 56))(v55, 1, 1, v62);
      (*(v57 + 104))(v56, *MEMORY[0x1E69CBA28], v58);
      v63 = v187;
      v64 = sub_1E65D74E8();
      (*(*(v64 - 8) + 56))(v59, 1, 1, v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
      sub_1E65D86A8();
      v184 = swift_allocObject();
      *(v184 + 16) = xmmword_1E65EA670;
      sub_1E65DEA08();
      _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      sub_1E65DE9B8();
      sub_1E60EF310(v60);
      sub_1E5DFE50C(v61, &qword_1ED0737C8, &unk_1E6605140);
      v65 = sub_1E65DE788();
      v66 = *(v65 - 8);
      v67 = (*(v66 + 48))(v60, 1, v65);
      v68 = v187[82];
      if (v67 == 1)
      {
        sub_1E5DFE50C(v187[82], &qword_1ED075FB8, &qword_1E65F4690);
      }

      else
      {
        v124 = v187[80];
        v125 = v187[79];
        v126 = v187[78];
        sub_1E65DE778();
        (*(v66 + 8))(v68, v65);
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65DE5D8();
        (*(v125 + 8))(v124, v126);
        v63 = v187;
      }

      v127 = v63[105];
      v128 = v63[104];
      v129 = v63[74];
      v130 = v63[66];
      v131 = v63[65];
      v176 = *MEMORY[0x1E69CBCC8];
      v181 = (v63[76] + 104);
      v168 = *v181;
      (*v181)(v63[77]);
      sub_1E6427498(MEMORY[0x1E69E7CC0]);
      sub_1E65D8678();
      v132 = sub_1E65DA208();
      (*(*(v132 - 8) + 56))(v129, 1, 1, v132);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v133 = swift_initStackObject();
      *(v133 + 16) = xmmword_1E65EA670;
      *(v133 + 32) = 9;
      sub_1E5DFD1CC(v127, v128, &qword_1ED072968, &unk_1E6609800);
      v134 = (*(v130 + 48))(v128, 1, v131);
      v135 = v63[104];
      if (v134 == 1)
      {
        sub_1E5DFE50C(v63[104], &qword_1ED072968, &unk_1E6609800);
        v136 = 0;
        v137 = 0;
      }

      else
      {
        v138 = v63[72];
        v139 = v187[71];
        v140 = v187[70];
        v141 = v187[66];
        v142 = v187[65];
        sub_1E65D7DC8();
        (*(v141 + 8))(v135, v142);
        v136 = sub_1E65D76C8();
        v137 = v143;
        (*(v139 + 8))(v138, v140);
        v63 = v187;
      }

      v144 = v63[94];
      v145 = v63[91];
      v146 = v63[86];
      v163 = v63[85];
      v164 = v63[88];
      v166 = v63[84];
      v160 = v63[75];
      v161 = v63[90];
      v172 = v63[74];
      v191 = v63[58];
      v63[50] = v136;
      v63[51] = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E61D2F88(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
      sub_1E65E6848();
      v162 = sub_1E6427784(v133);
      swift_setDeallocating();
      sub_1E5DFE50C(v133 + 32, &qword_1ED072988, &qword_1E65EC128);
      v147 = sub_1E65DEA08();
      v149 = v148;
      (v168)(v144 + v145[14], v176, v160);
      v150 = v63;
      v151 = v145[15];
      v152 = *MEMORY[0x1E69CC498];
      v153 = sub_1E65D9908();
      v154 = *(v153 - 8);
      (*(v154 + 104))(v144 + v151, v152, v153);
      (*(v154 + 56))(v144 + v151, 0, 1, v153);
      sub_1E5FAB460(v161, v144, &qword_1ED073578, &qword_1E65F0E60);
      (*(v146 + 32))(v144 + v145[5], v164, v163);
      sub_1E5FAB460(v166, v144 + v145[6], &qword_1ED072340, &qword_1E65EA410);
      *(v144 + v145[7]) = v184;
      sub_1E5FAB460(v172, v144 + v145[8], &qword_1ED073570, &unk_1E65F4570);
      v155 = (v144 + v145[9]);
      *v155 = 0;
      v155[1] = 0;
      v156 = (v144 + v145[10]);
      *v156 = 0;
      v156[1] = 0;
      *(v144 + v145[11]) = v162;
      v157 = (v144 + v145[12]);
      *v157 = 0;
      v157[1] = 0;
      v158 = (v144 + v145[13]);
      *v158 = v147;
      v158[1] = v149;
      v189 = (*(v191 + 48) + **(v191 + 48));
      v159 = swift_task_alloc();
      v150[106] = v159;
      *v159 = v150;
      v159[1] = sub_1E61D1E60;
      v105 = v150[94];
LABEL_28:

      return v189(v105);
  }
}

uint64_t sub_1E61D1E60()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_1E61D2854;
  }

  else
  {
    v2 = sub_1E61D1F74;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61D1F74()
{
  v1 = v0[105];
  sub_1E61D2FF0(v0[94], type metadata accessor for PageMetricsClick);
  sub_1E5DFE50C(v1, &qword_1ED072968, &unk_1E6609800);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E61D21A8()
{
  *(*v1 + 872) = v0;

  if (v0)
  {
    v2 = sub_1E61D2A90;
  }

  else
  {
    v2 = sub_1E61D22BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61D22BC()
{
  v1 = v0[105];
  sub_1E61D2FF0(v0[93], type metadata accessor for PageMetricsClick);
  sub_1E5DFE50C(v1, &qword_1ED072968, &unk_1E6609800);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E61D24F0()
{
  *(*v1 + 888) = v0;

  if (v0)
  {
    v2 = sub_1E61D2CCC;
  }

  else
  {
    v2 = sub_1E61D2604;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61D2604()
{
  v1 = v0[105];
  v2 = v0[69];
  sub_1E61D2FF0(v0[92], type metadata accessor for PageMetricsClick);
  sub_1E5DFE50C(v2, &qword_1ED0752D8, &qword_1E660CC30);
  sub_1E5DFE50C(v1, &qword_1ED072968, &unk_1E6609800);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E61D2854()
{
  sub_1E61D2FF0(v0[94], type metadata accessor for PageMetricsClick);
  sub_1E5DFE50C(v0[105], &qword_1ED072968, &unk_1E6609800);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E61D2A90()
{
  sub_1E61D2FF0(v0[93], type metadata accessor for PageMetricsClick);
  sub_1E5DFE50C(v0[105], &qword_1ED072968, &unk_1E6609800);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E61D2CCC()
{
  v1 = v0[69];
  sub_1E61D2FF0(v0[92], type metadata accessor for PageMetricsClick);
  sub_1E5DFE50C(v1, &qword_1ED0752D8, &qword_1E660CC30);
  sub_1E5DFE50C(v0[105], &qword_1ED072968, &unk_1E6609800);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E61D2F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DEB68();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61D2F88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E61D2FF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StretchGoalPlanArtworkView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1E65E4BA8();
  *a2 = result;
  a2[1] = v4;
  a2[2] = sub_1E61D308C;
  a2[3] = 0;
  return result;
}

uint64_t sub_1E61D308C@<X0>(void *a1@<X8>)
{
  v69 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765C8, &qword_1E65F5AF8) - 8;
  v1 = MEMORY[0x1EEE9AC00](v64);
  v68 = &v59[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = MEMORY[0x1EEE9AC00](v1);
  v67 = &v59[-v4];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v66 = &v59[-v6];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v59[-v8];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v70 = &v59[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v59[-v11];
  sub_1E65E4C38();
  sub_1E65E4C28();
  sub_1E65E3D78();
  v63 = sub_1E65E4268();
  v13 = *(v63 + 20);
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_1E65E3FA8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 104);
  v61 = v15;
  v62 = v16 + 104;
  v60 = v14;
  v17(&v12[v13], v14, v15);
  sub_1E65E4158();
  *v12 = v18;
  *(v12 + 1) = v19;
  *(v12 + 2) = v20;
  *(v12 + 3) = v21;
  sub_1E65E4C28();
  sub_1E65E4C38();
  sub_1E65E3D98();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765D0, &qword_1E65F5B00);
  v23 = &v12[*(v22 + 52)];
  v24 = v76;
  *v23 = v75;
  *(v23 + 1) = v24;
  *(v23 + 4) = v77;
  *&v12[*(v22 + 56)] = 256;
  v71 = v12;
  sub_1E65E3D28();
  sub_1E65E4BB8();
  sub_1E65E3CF8();
  v25 = v63;
  v26 = v64;
  v27 = &v12[*(v64 + 44)];
  v28 = v79;
  *v27 = v78;
  *(v27 + 1) = v28;
  *(v27 + 2) = v80;
  v29 = v70;
  v17(&v70[*(v25 + 20)], v14, v15);
  sub_1E65E4158();
  *v29 = v30;
  v29[1] = v31;
  v29[2] = v32;
  v29[3] = v33;
  sub_1E65E4C28();
  sub_1E65E4C38();
  sub_1E65E3D98();
  v34 = v29 + *(v22 + 52);
  v35 = v82;
  *v34 = v81;
  *(v34 + 1) = v35;
  *(v34 + 4) = v83;
  *(v29 + *(v22 + 56)) = 256;
  sub_1E65E3D28();
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v36 = (v29 + *(v26 + 44));
  v37 = v85;
  *v36 = v84;
  v36[1] = v37;
  v36[2] = v86;
  v38 = v65;
  v17(&v65[*(v25 + 20)], v60, v61);
  sub_1E65E4158();
  *v38 = v39;
  v38[1] = v40;
  v38[2] = v41;
  v38[3] = v42;
  sub_1E65E4C28();
  sub_1E65E4C38();
  sub_1E65E3D98();
  v43 = v38 + *(v22 + 52);
  v44 = v88;
  *v43 = v87;
  *(v43 + 1) = v44;
  *(v43 + 4) = v89;
  *(v38 + *(v22 + 56)) = 256;
  sub_1E65E3D28();
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v45 = (v38 + *(v26 + 44));
  v46 = v91;
  *v45 = v90;
  v45[1] = v46;
  v45[2] = v92;
  sub_1E65E4C28();
  sub_1E65E4C38();
  sub_1E65E3D88();
  v47 = v72;
  v48 = v66;
  sub_1E61D3718(v71, v66);
  v49 = v70;
  v50 = v67;
  sub_1E61D3718(v70, v67);
  v51 = v68;
  sub_1E61D3718(v38, v68);
  v52 = v93;
  v53 = v69;
  *v69 = v47;
  v54 = v73;
  *(v53 + 3) = v74;
  *(v53 + 1) = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765D8, &qword_1E65F5B08);
  sub_1E61D3718(v48, v53 + v55[12]);
  sub_1E61D3718(v50, v53 + v55[16]);
  sub_1E61D3718(v51, v53 + v55[20]);
  v56 = v53 + v55[24];
  *v56 = v52;
  v57 = v94;
  *(v56 + 24) = v95;
  *(v56 + 8) = v57;

  sub_1E61D3788(v38);
  sub_1E61D3788(v49);
  sub_1E61D3788(v71);

  sub_1E61D3788(v51);
  sub_1E61D3788(v50);
  sub_1E61D3788(v48);
}

uint64_t sub_1E61D3668@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1E65E4BA8();
  *a2 = result;
  a2[1] = v4;
  a2[2] = sub_1E61D308C;
  a2[3] = 0;
  return result;
}

unint64_t sub_1E61D36B4()
{
  result = qword_1ED0765B8;
  if (!qword_1ED0765B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0765C0, &qword_1E65F5AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0765B8);
  }

  return result;
}

uint64_t sub_1E61D3718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765C8, &qword_1E65F5AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61D3788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765C8, &qword_1E65F5AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E61D37F4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x446D6172676F7270;
    v6 = 0x686372616573;
    if (a1 != 8)
    {
      v6 = 0x5074756F6B726F77;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6546646E4177656ELL;
    if (a1 != 5)
    {
      v7 = 0x57646574616C6572;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7465446472617761;
    v2 = 0x7265746C6966;
    v3 = 0x756F59726F66;
    if (a1 != 3)
    {
      v3 = 0x7972617262696CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6573776F7262;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E61D396C(uint64_t a1)
{
  v2 = sub_1E61D849C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D39A8(uint64_t a1)
{
  v2 = sub_1E61D849C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D39E4(uint64_t a1)
{
  v2 = sub_1E61D8448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3A20(uint64_t a1)
{
  v2 = sub_1E61D8448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3A64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E61D9404(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E61D3A98(uint64_t a1)
{
  v2 = sub_1E61D8100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3AD4(uint64_t a1)
{
  v2 = sub_1E61D8100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3B10(uint64_t a1)
{
  v2 = sub_1E61D83A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3B4C(uint64_t a1)
{
  v2 = sub_1E61D83A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3B88(uint64_t a1)
{
  v2 = sub_1E61D834C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3BC4(uint64_t a1)
{
  v2 = sub_1E61D834C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3C00(uint64_t a1)
{
  v2 = sub_1E61D82F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3C3C(uint64_t a1)
{
  v2 = sub_1E61D82F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3C78(uint64_t a1)
{
  v2 = sub_1E61D82A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3CB4(uint64_t a1)
{
  v2 = sub_1E61D82A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3CF0(uint64_t a1)
{
  v2 = sub_1E61D81FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3D2C(uint64_t a1)
{
  v2 = sub_1E61D81FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3D68(uint64_t a1)
{
  v2 = sub_1E61D8250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3DA4(uint64_t a1)
{
  v2 = sub_1E61D8250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3DE0(uint64_t a1)
{
  v2 = sub_1E61D81A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3E1C(uint64_t a1)
{
  v2 = sub_1E61D81A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D3E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E61D3EE0(uint64_t a1)
{
  v2 = sub_1E61D8154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D3F1C(uint64_t a1)
{
  v2 = sub_1E61D8154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ItemContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765E0, &qword_1E65F5B10);
  v118 = *(v2 - 8);
  v119 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v115 = &v71 - v3;
  v4 = sub_1E65E26E8();
  v116 = *(v4 - 8);
  v117 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v114 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765E8, &qword_1E65F5B18);
  v112 = *(v6 - 8);
  v113 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v71 - v7;
  v109 = type metadata accessor for SearchItemContext(0);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765F0, &qword_1E65F5B20);
  v107 = *(v9 - 8);
  v108 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v71 - v10;
  v104 = type metadata accessor for ProgramDetailItemContext(0);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0765F8, &qword_1E65F5B28);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v99 = &v71 - v12;
  v101 = sub_1E65E3498();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v98 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076600, &qword_1E65F5B30);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v71 - v14;
  v95 = sub_1E65E0248();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076608, &qword_1E65F5B38);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v71 - v16;
  v87 = type metadata accessor for LibraryItemContext(0);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076610, &qword_1E65F5B40);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = &v71 - v18;
  v84 = sub_1E65DC508();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076618, &qword_1E65F5B48);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v71 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076620, &qword_1E65F5B50);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v71 - v21;
  v73 = type metadata accessor for BrowseItemContext(0);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076628, &qword_1E65F5B58);
  v72 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v71 - v24;
  v26 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076630, &qword_1E65F5B60);
  v30 = *(v29 - 8);
  v121 = v29;
  v122 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v71 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E61D8100();
  v33 = v32;
  sub_1E65E6DA8();
  sub_1E61D8544(v120, v28, type metadata accessor for ItemContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v35 = v94;
        v36 = v92;
        v52 = v28;
        v38 = v95;
        (*(v94 + 32))(v92, v52, v95);
        LOBYTE(v123) = 5;
        sub_1E61D82A4();
        v39 = v93;
        v40 = v121;
        sub_1E65E6B18();
        sub_1E5DF3F80(&qword_1ED076680, MEMORY[0x1E699D680], MEMORY[0x1E699D688]);
        v41 = v97;
        sub_1E65E6B78();
        v42 = &v126;
      }

      else
      {
        v35 = v100;
        v36 = v98;
        v70 = v28;
        v38 = v101;
        (*(v100 + 32))(v98, v70, v101);
        LOBYTE(v123) = 6;
        sub_1E61D8250();
        v39 = v99;
        v40 = v121;
        sub_1E65E6B18();
        sub_1E5DF3F80(&qword_1ED076670, MEMORY[0x1E699EC90], MEMORY[0x1E699EC98]);
        v41 = v103;
        sub_1E65E6B78();
        v42 = &v127;
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v43 = v105;
      sub_1E61D85AC(v28, v105, type metadata accessor for ProgramDetailItemContext);
      LOBYTE(v123) = 7;
      sub_1E61D81FC();
      v60 = v106;
      v40 = v121;
      sub_1E65E6B18();
      sub_1E5DF3F80(&qword_1ED076660, type metadata accessor for ProgramDetailItemContext, &protocol conformance descriptor for ProgramDetailItemContext);
      v61 = v108;
      sub_1E65E6B78();
      (*(v107 + 8))(v60, v61);
      v46 = type metadata accessor for ProgramDetailItemContext;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        v35 = v116;
        v36 = v114;
        v64 = v28;
        v38 = v117;
        (*(v116 + 32))(v114, v64, v117);
        LOBYTE(v123) = 9;
        sub_1E61D8154();
        v39 = v115;
        v40 = v121;
        sub_1E65E6B18();
        sub_1E5DF3F80(&qword_1ED076640, MEMORY[0x1E699F400], MEMORY[0x1E699F408]);
        v41 = v119;
        sub_1E65E6B78();
        v65 = v118;
LABEL_22:
        (*(v65 + 8))(v39, v41);
        (*(v35 + 8))(v36, v38);
        return (*(v122 + 8))(v33, v40);
      }

      v43 = v110;
      sub_1E61D85AC(v28, v110, type metadata accessor for SearchItemContext);
      LOBYTE(v123) = 8;
      sub_1E61D81A8();
      v44 = v111;
      v40 = v121;
      sub_1E65E6B18();
      sub_1E5DF3F80(&qword_1ED076650, type metadata accessor for SearchItemContext, &protocol conformance descriptor for SearchItemContext);
      v45 = v113;
      sub_1E65E6B78();
      (*(v112 + 8))(v44, v45);
      v46 = type metadata accessor for SearchItemContext;
    }

LABEL_17:
    sub_1E61D97A8(v43, v46);
    return (*(v122 + 8))(v33, v40);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v53 = *v28;
      v54 = *(v28 + 1);
      v55 = v28[16];
      LOBYTE(v123) = 2;
      sub_1E61D83A0();
      v56 = v78;
      v57 = v121;
      v58 = v33;
      sub_1E65E6B18();
      v123 = v53;
      v124 = v54;
      v125 = v55;
      sub_1E61D83F4();
      v59 = v80;
      sub_1E65E6B78();
      (*(v79 + 8))(v56, v59);
      (*(v122 + 8))(v58, v57);
      return sub_1E5E483B8(v53, v54);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v35 = v83;
      v36 = v81;
      v37 = v28;
      v38 = v84;
      (*(v83 + 32))(v81, v37, v84);
      LOBYTE(v123) = 3;
      sub_1E61D834C();
      v39 = v82;
      v40 = v121;
      sub_1E65E6B18();
      sub_1E5DF3F80(&qword_1EE2D6B48, MEMORY[0x1E699E0B0], MEMORY[0x1E699E0B8]);
      v41 = v86;
      sub_1E65E6B78();
      v42 = &v117;
LABEL_21:
      v65 = *(v42 - 32);
      goto LABEL_22;
    }

    v43 = v88;
    sub_1E61D85AC(v28, v88, type metadata accessor for LibraryItemContext);
    LOBYTE(v123) = 4;
    sub_1E61D82F8();
    v62 = v89;
    v40 = v121;
    sub_1E65E6B18();
    sub_1E5DF3F80(&qword_1ED076690, type metadata accessor for LibraryItemContext, &protocol conformance descriptor for LibraryItemContext);
    v63 = v91;
    sub_1E65E6B78();
    (*(v90 + 8))(v62, v63);
    v46 = type metadata accessor for LibraryItemContext;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v66 = v74;
    sub_1E61D85AC(v28, v74, type metadata accessor for BrowseItemContext);
    LOBYTE(v123) = 1;
    sub_1E61D8448();
    v67 = v75;
    v68 = v121;
    sub_1E65E6B18();
    sub_1E5DF3F80(&qword_1ED0766B0, type metadata accessor for BrowseItemContext, &protocol conformance descriptor for BrowseItemContext);
    v69 = v77;
    sub_1E65E6B78();
    (*(v76 + 8))(v67, v69);
    sub_1E61D97A8(v66, type metadata accessor for BrowseItemContext);
    return (*(v122 + 8))(v32, v68);
  }

  else
  {
    v48 = *v28;
    v47 = *(v28 + 1);
    v49 = v28[16];
    LOBYTE(v123) = 0;
    sub_1E61D849C();
    v50 = v121;
    sub_1E65E6B18();
    v123 = v48;
    v124 = v47;
    v125 = v49;
    sub_1E61D84F0();
    sub_1E65E6B78();
    (*(v72 + 8))(v25, v23);
    (*(v122 + 8))(v32, v50);
    return sub_1E5E483B8(v48, v47);
  }
}

uint64_t ItemContext.hash(into:)(uint64_t a1)
{
  v82 = a1;
  v1 = sub_1E65E26E8();
  v79 = *(v1 - 8);
  v80 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v78 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SearchItemContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E3578();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ProgramDetailItemContext(0);
  v7 = MEMORY[0x1EEE9AC00](v74);
  v75 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v62 - v9;
  v10 = sub_1E65E3498();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E0248();
  v70 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DF3B8();
  v64 = *(v15 - 8);
  v65 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LibraryItemContext(0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v62 - v21;
  v22 = sub_1E65DC508();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for BrowseItemContext(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61D8544(v81, v31, type metadata accessor for ItemContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v43 = v70;
        (*(v70 + 32))(v14, v31, v12);
        MEMORY[0x1E694E740](5);
        sub_1E5DF3F80(&qword_1ED0766E0, MEMORY[0x1E699D680], MEMORY[0x1E699D690]);
        sub_1E65E5B48();
        return (*(v43 + 8))(v14, v12);
      }

      v56 = v71;
      v55 = v72;
      v34 = v73;
      (*(v72 + 32))(v71, v31, v73);
      MEMORY[0x1E694E740](6);
      v57 = &unk_1ED0766D8;
      v58 = MEMORY[0x1E699EC90];
      v59 = MEMORY[0x1E699ECA0];
    }

    else
    {
      v34 = v80;
      v35 = v82;
      if (EnumCaseMultiPayload == 7)
      {
        v44 = v31;
        v45 = v77;
        sub_1E61D85AC(v44, v77, type metadata accessor for ProgramDetailItemContext);
        MEMORY[0x1E694E740](7);
        v46 = v75;
        sub_1E61D8544(v45, v75, type metadata accessor for ProgramDetailItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v48 = v66;
          v47 = v67;
          v49 = v68;
          (*(v67 + 32))(v66, v46, v68);
          MEMORY[0x1E694E740](1);
          sub_1E5DF3F80(&qword_1ED0766D0, MEMORY[0x1E699ECE8], MEMORY[0x1E699ECF8]);
          sub_1E65E5B48();
          (*(v47 + 8))(v48, v49);
        }

        else
        {
          MEMORY[0x1E694E740](0);
          sub_1E65E5D78();
        }

        v50 = type metadata accessor for ProgramDetailItemContext;
LABEL_32:
        v61 = v50;
        v38 = v45;
        return sub_1E61D97A8(v38, v61);
      }

      if (EnumCaseMultiPayload == 8)
      {
        v36 = type metadata accessor for SearchItemContext;
        v37 = v76;
        sub_1E61D85AC(v31, v76, type metadata accessor for SearchItemContext);
        MEMORY[0x1E694E740](8);
        SearchItemContext.hash(into:)(v35);
        v38 = v37;
        goto LABEL_26;
      }

      v56 = v78;
      v55 = v79;
      (*(v79 + 32))(v78, v31, v80);
      MEMORY[0x1E694E740](9);
      v57 = &unk_1ED0766C8;
      v58 = MEMORY[0x1E699F400];
      v59 = MEMORY[0x1E699F410];
    }

    sub_1E5DF3F80(v57, v58, v59);
    sub_1E65E5B48();
    return (*(v55 + 8))(v56, v34);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v39 = *v31;
      v40 = *(v31 + 1);
      v41 = v31[16];
      v42 = 0;
      goto LABEL_15;
    }

    v36 = type metadata accessor for BrowseItemContext;
    sub_1E61D85AC(v31, v28, type metadata accessor for BrowseItemContext);
    v60 = v82;
    MEMORY[0x1E694E740](1);
    BrowseItemContext.hash(into:)(v60);
    v38 = v28;
LABEL_26:
    v61 = v36;
    return sub_1E61D97A8(v38, v61);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v23 + 32))(v25, v31, v22);
      MEMORY[0x1E694E740](3);
      sub_1E5DF3F80(&qword_1EE2D6B40, MEMORY[0x1E699E0B0], MEMORY[0x1E699E0C0]);
      sub_1E65E5B48();
      return (*(v23 + 8))(v25, v22);
    }

    v51 = v31;
    v45 = v69;
    sub_1E61D85AC(v51, v69, type metadata accessor for LibraryItemContext);
    MEMORY[0x1E694E740](4);
    sub_1E61D8544(v45, v20, type metadata accessor for LibraryItemContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v53 = v63;
      v52 = v64;
      v54 = v65;
      (*(v64 + 32))(v63, v20, v65);
      MEMORY[0x1E694E740](1);
      sub_1E5DF3F80(&qword_1ED0766E8, MEMORY[0x1E699E5F0], MEMORY[0x1E699E600]);
      sub_1E65E5B48();
      (*(v52 + 8))(v53, v54);
    }

    else
    {
      MEMORY[0x1E694E740](0);
      sub_1E65E5D78();
    }

    v50 = type metadata accessor for LibraryItemContext;
    goto LABEL_32;
  }

  v39 = *v31;
  v40 = *(v31 + 1);
  v41 = v31[16];
  v42 = 2;
LABEL_15:
  MEMORY[0x1E694E740](v42);
  if (v41)
  {
    MEMORY[0x1E694E740](1);
  }

  else
  {
    MEMORY[0x1E694E740](0);
  }

  sub_1E65E5D78();
  return sub_1E5E483B8(v39, v40);
}

uint64_t ItemContext.hashValue.getter()
{
  sub_1E65E6D28();
  ItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t ItemContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0766F0, &qword_1E65F5B68);
  v126 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v131 = &v95 - v3;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0766F8, &qword_1E65F5B70);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v132 = &v95 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076700, &qword_1E65F5B78);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v128 = &v95 - v5;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076708, &qword_1E65F5B80);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v139 = &v95 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076710, &qword_1E65F5B88);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v130 = &v95 - v7;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076718, &qword_1E65F5B90);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v129 = &v95 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076720, &qword_1E65F5B98);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v138 = &v95 - v9;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076728, &qword_1E65F5BA0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v137 = &v95 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076730, &qword_1E65F5BA8);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v136 = &v95 - v11;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076738, &qword_1E65F5BB0);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v127 = &v95 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076740, &unk_1E65F5BB8);
  v134 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v14 = &v95 - v13;
  v133 = type metadata accessor for ItemContext(0);
  v15 = MEMORY[0x1EEE9AC00](v133);
  v106 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v105 = &v95 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v104 = &v95 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v103 = &v95 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v102 = &v95 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v101 = &v95 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v95 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v95 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v95 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v95 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v95 - v39;
  v41 = a1[3];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1E61D8100();
  v135 = v14;
  v42 = v149;
  sub_1E65E6D98();
  if (v42)
  {
    return __swift_destroy_boxed_opaque_existential_1(v142);
  }

  v96 = v38;
  v97 = v32;
  v98 = v35;
  v99 = v29;
  v43 = v136;
  v44 = v137;
  v45 = v138;
  v46 = v139;
  v149 = 0;
  v100 = v40;
  v48 = v140;
  v47 = v141;
  v49 = v135;
  v50 = sub_1E65E6AF8();
  v51 = (2 * *(v50 + 16)) | 1;
  v145 = v50;
  v146 = v50 + 32;
  v147 = 0;
  v148 = v51;
  v52 = sub_1E5FBE3F8();
  if (v52 == 10 || v147 != v148 >> 1)
  {
    v59 = sub_1E65E68F8();
    swift_allocError();
    v60 = v47;
    v62 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v62 = v133;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v59 - 8) + 104))(v62, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    (*(v134 + 8))(v49, v60);
LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v142);
  }

  if (v52 <= 4u)
  {
    if (v52 > 1u)
    {
      v53 = v149;
      if (v52 != 2)
      {
        if (v52 == 3)
        {
          LOBYTE(v143) = 3;
          sub_1E61D834C();
          v54 = v45;
          sub_1E65E6A68();
          v55 = v47;
          v56 = v134;
          if (!v53)
          {
            sub_1E65DC508();
            sub_1E5DF3F80(&qword_1ED076778, MEMORY[0x1E699E0B0], MEMORY[0x1E699E0C8]);
            v57 = v99;
            v58 = v114;
            sub_1E65E6AD8();
            (*(v113 + 8))(v54, v58);
            (*(v56 + 8))(v49, v141);
            swift_unknownObjectRelease();
LABEL_39:
            swift_storeEnumTagMultiPayload();
            v92 = v57;
            goto LABEL_41;
          }
        }

        else
        {
          LOBYTE(v143) = 4;
          sub_1E61D82F8();
          v80 = v129;
          sub_1E65E6A68();
          v55 = v47;
          v56 = v134;
          if (!v53)
          {
            type metadata accessor for LibraryItemContext(0);
            sub_1E5DF3F80(&qword_1ED076770, type metadata accessor for LibraryItemContext, &protocol conformance descriptor for LibraryItemContext);
            v57 = v101;
            v90 = v116;
            sub_1E65E6AD8();
            (*(v115 + 8))(v80, v90);
            (*(v56 + 8))(v49, v141);
            swift_unknownObjectRelease();
            goto LABEL_39;
          }
        }

        (*(v56 + 8))(v49, v55);
        goto LABEL_11;
      }

      LOBYTE(v143) = 2;
      sub_1E61D83A0();
      sub_1E65E6A68();
      if (!v53)
      {
        sub_1E61D8614();
        v76 = v112;
        sub_1E65E6AD8();
        (*(v111 + 8))(v44, v76);
        (*(v134 + 8))(v49, v47);
        swift_unknownObjectRelease();
        v91 = v144;
        v72 = v97;
        *v97 = v143;
        *(v72 + 16) = v91;
        goto LABEL_38;
      }

      goto LABEL_36;
    }

    v68 = v149;
    if (!v52)
    {
      LOBYTE(v143) = 0;
      sub_1E61D849C();
      v69 = v127;
      sub_1E65E6A68();
      if (!v68)
      {
        sub_1E61D8668();
        v70 = v108;
        sub_1E65E6AD8();
        (*(v107 + 8))(v69, v70);
        (*(v134 + 8))(v49, v47);
        swift_unknownObjectRelease();
        v71 = v144;
        v72 = v96;
        *v96 = v143;
        *(v72 + 16) = v71;
LABEL_38:
        swift_storeEnumTagMultiPayload();
        v92 = v72;
LABEL_41:
        v93 = v100;
        sub_1E61D85AC(v92, v100, type metadata accessor for ItemContext);
        v94 = v142;
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    LOBYTE(v143) = 1;
    sub_1E61D8448();
    v86 = v43;
    sub_1E65E6A68();
    if (!v68)
    {
      type metadata accessor for BrowseItemContext(0);
      sub_1E5DF3F80(&qword_1ED076788, type metadata accessor for BrowseItemContext, &protocol conformance descriptor for BrowseItemContext);
      v66 = v98;
      v87 = v110;
      sub_1E65E6AD8();
      (*(v109 + 8))(v86, v87);
      (*(v134 + 8))(v49, v47);
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

LABEL_36:
    (*(v134 + 8))(v49, v47);
    goto LABEL_11;
  }

  if (v52 <= 6u)
  {
    if (v52 != 5)
    {
      LOBYTE(v143) = 6;
      sub_1E61D8250();
      v88 = v149;
      sub_1E65E6A68();
      if (!v88)
      {
        sub_1E65E3498();
        sub_1E5DF3F80(&qword_1ED076760, MEMORY[0x1E699EC90], MEMORY[0x1E699ECA8]);
        v66 = v103;
        v89 = v120;
        sub_1E65E6AD8();
        (*(v119 + 8))(v46, v89);
        (*(v134 + 8))(v49, v47);
        swift_unknownObjectRelease();
        goto LABEL_40;
      }

      goto LABEL_36;
    }

    LOBYTE(v143) = 5;
    sub_1E61D82A4();
    v73 = v130;
    v74 = v149;
    sub_1E65E6A68();
    if (v74)
    {
      goto LABEL_36;
    }

    sub_1E65E0248();
    sub_1E5DF3F80(&qword_1ED076768, MEMORY[0x1E699D680], MEMORY[0x1E699D698]);
    v66 = v102;
    v75 = v118;
    sub_1E65E6AD8();
    (*(v117 + 8))(v73, v75);
    (*(v134 + 8))(v49, v47);
    swift_unknownObjectRelease();
LABEL_40:
    swift_storeEnumTagMultiPayload();
    v92 = v66;
    goto LABEL_41;
  }

  if (v52 == 7)
  {
    LOBYTE(v143) = 7;
    sub_1E61D81FC();
    v77 = v128;
    v78 = v149;
    sub_1E65E6A68();
    if (v78)
    {
      goto LABEL_36;
    }

    type metadata accessor for ProgramDetailItemContext(0);
    sub_1E5DF3F80(&qword_1ED076758, type metadata accessor for ProgramDetailItemContext, &protocol conformance descriptor for ProgramDetailItemContext);
    v66 = v104;
    v79 = v122;
    sub_1E65E6AD8();
    (*(v121 + 8))(v77, v79);
    (*(v134 + 8))(v49, v47);
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  if (v52 == 8)
  {
    LOBYTE(v143) = 8;
    sub_1E61D81A8();
    v64 = v132;
    v65 = v149;
    sub_1E65E6A68();
    if (v65)
    {
      goto LABEL_36;
    }

    type metadata accessor for SearchItemContext(0);
    sub_1E5DF3F80(&qword_1ED076750, type metadata accessor for SearchItemContext, &protocol conformance descriptor for SearchItemContext);
    v66 = v105;
    v67 = v125;
    sub_1E65E6AD8();
    (*(v124 + 8))(v64, v67);
    (*(v134 + 8))(v49, v47);
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v81 = v48;
  LOBYTE(v143) = 9;
  sub_1E61D8154();
  v82 = v131;
  v83 = v149;
  sub_1E65E6A68();
  if (v83)
  {
    goto LABEL_36;
  }

  sub_1E65E26E8();
  sub_1E5DF3F80(&qword_1ED076748, MEMORY[0x1E699F400], MEMORY[0x1E699F418]);
  v84 = v106;
  v85 = v123;
  sub_1E65E6AD8();
  (*(v126 + 8))(v82, v85);
  (*(v134 + 8))(v49, v47);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v93 = v100;
  sub_1E61D85AC(v84, v100, type metadata accessor for ItemContext);
  v94 = v142;
  v48 = v81;
LABEL_42:
  sub_1E61D85AC(v93, v48, type metadata accessor for ItemContext);
  return __swift_destroy_boxed_opaque_existential_1(v94);
}

uint64_t sub_1E61D7454()
{
  sub_1E65E6D28();
  ItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E61D7498(uint64_t a1)
{
  sub_1E65E6D28();
  ItemContext.hash(into:)(v2);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard11ItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v108 = a1;
  v3 = sub_1E65E26E8();
  v101 = *(v3 - 8);
  v102 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v94 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchItemContext(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProgramDetailItemContext(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E3498();
  v99 = *(v9 - 8);
  v100 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65E0248();
  v97 = *(v11 - 8);
  v98 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LibraryItemContext(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v89 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DC508();
  v95 = *(v15 - 8);
  v96 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BrowseItemContext(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v87 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ItemContext(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v107 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v106 = &v86 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v105 = &v86 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v104 = &v86 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v103 = &v86 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v86 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v86 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v86 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v86 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v86 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0767F0, &unk_1E65F6960);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v47 = &v86 - v46;
  v48 = &v86 + *(v45 + 56) - v46;
  sub_1E61D8544(v108, &v86 - v46, type metadata accessor for ItemContext);
  v49 = a2;
  v50 = v48;
  sub_1E61D8544(v49, v48, type metadata accessor for ItemContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v65 = v103;
        sub_1E61D8544(v47, v103, type metadata accessor for ItemContext);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v67 = v97;
          v66 = v98;
          v68 = v90;
          (*(v97 + 32))(v90, v48, v98);
          v69 = MEMORY[0x1E6947C40](v65, v68);
LABEL_32:
          v55 = v69;
          v78 = *(v67 + 8);
          v78(v68, v66);
          v78(v65, v66);
          goto LABEL_33;
        }

        v81 = v97;
        v80 = v98;
      }

      else
      {
        v65 = v104;
        sub_1E61D8544(v47, v104, type metadata accessor for ItemContext);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v67 = v99;
          v66 = v100;
          v68 = v91;
          (*(v99 + 32))(v91, v48, v100);
          v69 = MEMORY[0x1E694AE90](v65, v68);
          goto LABEL_32;
        }

        v81 = v99;
        v80 = v100;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        v41 = v105;
        sub_1E61D8544(v47, v105, type metadata accessor for ItemContext);
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          v79 = type metadata accessor for ProgramDetailItemContext;
          goto LABEL_43;
        }

        v57 = type metadata accessor for ProgramDetailItemContext;
        v58 = v92;
        sub_1E61D85AC(v48, v92, type metadata accessor for ProgramDetailItemContext);
        v59 = _s10Blackbeard24ProgramDetailItemContextO2eeoiySbAC_ACtFZ_0(v41, v58);
LABEL_28:
        v55 = v59;
        sub_1E61D97A8(v58, v57);
        v77 = v41;
LABEL_29:
        sub_1E61D97A8(v77, v57);
LABEL_33:
        sub_1E61D97A8(v47, type metadata accessor for ItemContext);
        return v55 & 1;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v41 = v106;
        sub_1E61D8544(v47, v106, type metadata accessor for ItemContext);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          v79 = type metadata accessor for SearchItemContext;
          goto LABEL_43;
        }

        v57 = type metadata accessor for SearchItemContext;
        v58 = v93;
        sub_1E61D85AC(v48, v93, type metadata accessor for SearchItemContext);
        v59 = _s10Blackbeard17SearchItemContextO2eeoiySbAC_ACtFZ_0(v41, v58);
        goto LABEL_28;
      }

      v65 = v107;
      sub_1E61D8544(v47, v107, type metadata accessor for ItemContext);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v67 = v101;
        v68 = v94;
        v66 = v102;
        (*(v101 + 32))(v94, v48, v102);
        v69 = MEMORY[0x1E694A0E0](v65, v68);
        goto LABEL_32;
      }

      v81 = v101;
      v80 = v102;
    }

    (*(v81 + 8))(v65, v80);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1E61D8544(v47, v43, type metadata accessor for ItemContext);
      v60 = v47;
      v62 = *v43;
      v61 = *(v43 + 1);
      v63 = v43[16];
      if (!swift_getEnumCaseMultiPayload())
      {
        v83 = *v50;
        v84 = *(v50 + 1);
        v85 = v50[16];
        v112 = v62;
        v113 = v61;
        v114 = v63;
        v109 = v83;
        v110 = v84;
        v111 = v85;
        v55 = _s10Blackbeard17FilterItemContextO2eeoiySbAC_ACtFZ_0(&v112, &v109);
        sub_1E5E483B8(v83, v84);
        v75 = v62;
        goto LABEL_49;
      }

      v64 = v62;
LABEL_35:
      sub_1E5E483B8(v64, v61);
      v47 = v60;
LABEL_46:
      sub_1E61D9740(v47);
      v55 = 0;
      return v55 & 1;
    }

    sub_1E61D8544(v47, v41, type metadata accessor for ItemContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v57 = type metadata accessor for BrowseItemContext;
      v58 = v87;
      sub_1E61D85AC(v48, v87, type metadata accessor for BrowseItemContext);
      v59 = _s10Blackbeard17BrowseItemContextO2eeoiySbAC_ACtFZ_0(v41, v58);
      goto LABEL_28;
    }

    v79 = type metadata accessor for BrowseItemContext;
LABEL_43:
    sub_1E61D97A8(v41, v79);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1E61D8544(v47, v38, type metadata accessor for ItemContext);
    v60 = v47;
    v70 = *v38;
    v61 = *(v38 + 1);
    v71 = v38[16];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v72 = *v50;
      v73 = *(v50 + 1);
      v74 = v50[16];
      v112 = v70;
      v113 = v61;
      v114 = v71;
      v109 = v72;
      v110 = v73;
      v111 = v74;
      v55 = _s10Blackbeard17FilterItemContextO2eeoiySbAC_ACtFZ_0(&v112, &v109);
      sub_1E5E483B8(v72, v73);
      v75 = v70;
LABEL_49:
      sub_1E5E483B8(v75, v61);
      sub_1E61D97A8(v60, type metadata accessor for ItemContext);
      return v55 & 1;
    }

    v64 = v70;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1E61D8544(v47, v32, type metadata accessor for ItemContext);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_1E61D97A8(v32, type metadata accessor for LibraryItemContext);
      goto LABEL_46;
    }

    v57 = type metadata accessor for LibraryItemContext;
    v76 = v89;
    sub_1E61D85AC(v48, v89, type metadata accessor for LibraryItemContext);
    v55 = _s10Blackbeard18LibraryItemContextO2eeoiySbAC_ACtFZ_0(v32, v76);
    sub_1E61D97A8(v76, type metadata accessor for LibraryItemContext);
    v77 = v32;
    goto LABEL_29;
  }

  sub_1E61D8544(v47, v35, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v95 + 8))(v35, v96);
    goto LABEL_46;
  }

  v52 = v95;
  v53 = v88;
  v54 = v96;
  (*(v95 + 32))(v88, v48, v96);
  v55 = MEMORY[0x1E6943F00](v35, v53);
  v56 = *(v52 + 8);
  v56(v53, v54);
  v56(v35, v54);
  sub_1E61D97A8(v47, type metadata accessor for ItemContext);
  return v55 & 1;
}

unint64_t sub_1E61D8100()
{
  result = qword_1EE2DB7F8[0];
  if (!qword_1EE2DB7F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DB7F8);
  }

  return result;
}

unint64_t sub_1E61D8154()
{
  result = qword_1ED076638;
  if (!qword_1ED076638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076638);
  }

  return result;
}

unint64_t sub_1E61D81A8()
{
  result = qword_1ED076648;
  if (!qword_1ED076648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076648);
  }

  return result;
}

unint64_t sub_1E61D81FC()
{
  result = qword_1ED076658;
  if (!qword_1ED076658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076658);
  }

  return result;
}

unint64_t sub_1E61D8250()
{
  result = qword_1ED076668;
  if (!qword_1ED076668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076668);
  }

  return result;
}

unint64_t sub_1E61D82A4()
{
  result = qword_1ED076678;
  if (!qword_1ED076678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076678);
  }

  return result;
}

unint64_t sub_1E61D82F8()
{
  result = qword_1ED076688;
  if (!qword_1ED076688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076688);
  }

  return result;
}

unint64_t sub_1E61D834C()
{
  result = qword_1EE2DB7C0;
  if (!qword_1EE2DB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7C0);
  }

  return result;
}

unint64_t sub_1E61D83A0()
{
  result = qword_1ED076698;
  if (!qword_1ED076698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076698);
  }

  return result;
}

unint64_t sub_1E61D83F4()
{
  result = qword_1ED0766A0;
  if (!qword_1ED0766A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0766A0);
  }

  return result;
}

unint64_t sub_1E61D8448()
{
  result = qword_1ED0766A8;
  if (!qword_1ED0766A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0766A8);
  }

  return result;
}

unint64_t sub_1E61D849C()
{
  result = qword_1ED0766B8;
  if (!qword_1ED0766B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0766B8);
  }

  return result;
}

unint64_t sub_1E61D84F0()
{
  result = qword_1ED0766C0;
  if (!qword_1ED0766C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0766C0);
  }

  return result;
}

uint64_t sub_1E61D8544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61D85AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E61D8614()
{
  result = qword_1ED076780;
  if (!qword_1ED076780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076780);
  }

  return result;
}

unint64_t sub_1E61D8668()
{
  result = qword_1ED076790;
  if (!qword_1ED076790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E61D88B0()
{
  result = qword_1ED076798;
  if (!qword_1ED076798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076798);
  }

  return result;
}

unint64_t sub_1E61D8908()
{
  result = qword_1ED0767A0;
  if (!qword_1ED0767A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767A0);
  }

  return result;
}

unint64_t sub_1E61D8960()
{
  result = qword_1ED0767A8;
  if (!qword_1ED0767A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767A8);
  }

  return result;
}

unint64_t sub_1E61D89B8()
{
  result = qword_1ED0767B0;
  if (!qword_1ED0767B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767B0);
  }

  return result;
}

unint64_t sub_1E61D8A10()
{
  result = qword_1ED0767B8;
  if (!qword_1ED0767B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767B8);
  }

  return result;
}

unint64_t sub_1E61D8A68()
{
  result = qword_1ED0767C0;
  if (!qword_1ED0767C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767C0);
  }

  return result;
}

unint64_t sub_1E61D8AC0()
{
  result = qword_1ED0767C8;
  if (!qword_1ED0767C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767C8);
  }

  return result;
}

unint64_t sub_1E61D8B18()
{
  result = qword_1ED0767D0;
  if (!qword_1ED0767D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767D0);
  }

  return result;
}

unint64_t sub_1E61D8B70()
{
  result = qword_1ED0767D8;
  if (!qword_1ED0767D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767D8);
  }

  return result;
}

unint64_t sub_1E61D8BC8()
{
  result = qword_1ED0767E0;
  if (!qword_1ED0767E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767E0);
  }

  return result;
}

unint64_t sub_1E61D8C20()
{
  result = qword_1ED0767E8;
  if (!qword_1ED0767E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0767E8);
  }

  return result;
}

unint64_t sub_1E61D8C78()
{
  result = qword_1EE2DB780;
  if (!qword_1EE2DB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB780);
  }

  return result;
}

unint64_t sub_1E61D8CD0()
{
  result = qword_1EE2DB788;
  if (!qword_1EE2DB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB788);
  }

  return result;
}

unint64_t sub_1E61D8D28()
{
  result = qword_1EE2DB7D8;
  if (!qword_1EE2DB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7D8);
  }

  return result;
}

unint64_t sub_1E61D8D80()
{
  result = qword_1EE2DB7E0;
  if (!qword_1EE2DB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7E0);
  }

  return result;
}

unint64_t sub_1E61D8DD8()
{
  result = qword_1EE2DB7C8;
  if (!qword_1EE2DB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7C8);
  }

  return result;
}

unint64_t sub_1E61D8E30()
{
  result = qword_1EE2DB7D0;
  if (!qword_1EE2DB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7D0);
  }

  return result;
}

unint64_t sub_1E61D8E88()
{
  result = qword_1EE2DB7B0;
  if (!qword_1EE2DB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7B0);
  }

  return result;
}

unint64_t sub_1E61D8EE0()
{
  result = qword_1EE2DB7B8;
  if (!qword_1EE2DB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7B8);
  }

  return result;
}

unint64_t sub_1E61D8F38()
{
  result = qword_1EE2DB790;
  if (!qword_1EE2DB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB790);
  }

  return result;
}

unint64_t sub_1E61D8F90()
{
  result = qword_1EE2DB798;
  if (!qword_1EE2DB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB798);
  }

  return result;
}

unint64_t sub_1E61D8FE8()
{
  result = qword_1EE2DB750;
  if (!qword_1EE2DB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB750);
  }

  return result;
}

unint64_t sub_1E61D9040()
{
  result = qword_1EE2DB758;
  if (!qword_1EE2DB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB758);
  }

  return result;
}

unint64_t sub_1E61D9098()
{
  result = qword_1EE2DB740;
  if (!qword_1EE2DB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB740);
  }

  return result;
}

unint64_t sub_1E61D90F0()
{
  result = qword_1EE2DB748;
  if (!qword_1EE2DB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB748);
  }

  return result;
}

unint64_t sub_1E61D9148()
{
  result = qword_1EE2DB760;
  if (!qword_1EE2DB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB760);
  }

  return result;
}

unint64_t sub_1E61D91A0()
{
  result = qword_1EE2DB768;
  if (!qword_1EE2DB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB768);
  }

  return result;
}

unint64_t sub_1E61D91F8()
{
  result = qword_1EE2DB7A0;
  if (!qword_1EE2DB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7A0);
  }

  return result;
}

unint64_t sub_1E61D9250()
{
  result = qword_1EE2DB7A8;
  if (!qword_1EE2DB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7A8);
  }

  return result;
}

unint64_t sub_1E61D92A8()
{
  result = qword_1EE2DB770;
  if (!qword_1EE2DB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB770);
  }

  return result;
}

unint64_t sub_1E61D9300()
{
  result = qword_1EE2DB778;
  if (!qword_1EE2DB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB778);
  }

  return result;
}

unint64_t sub_1E61D9358()
{
  result = qword_1EE2DB7E8;
  if (!qword_1EE2DB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7E8);
  }

  return result;
}

unint64_t sub_1E61D93B0()
{
  result = qword_1EE2DB7F0;
  if (!qword_1EE2DB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DB7F0);
  }

  return result;
}

uint64_t sub_1E61D9404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465446472617761 && a2 == 0xEB000000006C6961;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573776F7262 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F59726F66 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972617262696CLL && a2 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6546646E4177656ELL && a2 == 0xEE00646572757461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x57646574616C6572 && a2 == 0xEE0074756F6B726FLL || (sub_1E65E6C18() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x446D6172676F7270 && a2 == 0xED00006C69617465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x5074756F6B726F77 && a2 == 0xEB000000006E616CLL)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1E61D9740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0767F0, &unk_1E65F6960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E61D97A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FilterItemContext.identifier.getter()
{
  v1 = *v0;
  sub_1E61DA5E0(*v0, v0[1]);
  return v1;
}

uint64_t sub_1E61D9850()
{
  if (*v0)
  {
    return 0x6C6F686563616C70;
  }

  else
  {
    return 1835365481;
  }
}

uint64_t sub_1E61D988C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E61D996C(uint64_t a1)
{
  v2 = sub_1E61DA5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D99A8(uint64_t a1)
{
  v2 = sub_1E61DA5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D99E4(uint64_t a1)
{
  v2 = sub_1E61DA690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D9A20(uint64_t a1)
{
  v2 = sub_1E61DA690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E61D9A5C(uint64_t a1)
{
  v2 = sub_1E61DA63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61D9A98(uint64_t a1)
{
  v2 = sub_1E61DA63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FilterItemContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0767F8, &qword_1E65F6970);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076800, &qword_1E65F6978);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076808, &qword_1E65F6980);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E61DA5E8();
  sub_1E65E6DA8();
  if (v13)
  {
    v26 = 1;
    sub_1E61DA63C();
    v14 = v20;
    sub_1E65E6B18();
    v15 = v22;
    sub_1E65E6B48();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_1E61DA690();
    sub_1E65E6B18();
    v16 = v19;
    sub_1E65E6B48();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t FilterItemContext.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E694E740](*(v1 + 16));

  return sub_1E65E5D78();
}

uint64_t FilterItemContext.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t FilterItemContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076828, &qword_1E65F6988);
  v32 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076830, &qword_1E65F6990);
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076838, &unk_1E65F6998);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E61DA5E8();
  v13 = v34;
  sub_1E65E6D98();
  if (!v13)
  {
    v34 = v9;
    v14 = sub_1E65E6AF8();
    v15 = (2 * *(v14 + 16)) | 1;
    v36 = v14;
    v37 = v14 + 32;
    v38 = 0;
    v39 = v15;
    v16 = sub_1E5FBE3F0();
    v17 = v8;
    if (v16 == 2 || v38 != v39 >> 1)
    {
      v24 = sub_1E65E68F8();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
      *v26 = &type metadata for FilterItemContext;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v34 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = v16;
      if (v16)
      {
        v41 = 1;
        sub_1E61DA63C();
        sub_1E65E6A68();
        v19 = v33;
        v18 = v34;
        v20 = v30;
        v21 = sub_1E65E6AA8();
        v23 = v22;
        (*(v32 + 8))(v4, v20);
      }

      else
      {
        v41 = 0;
        sub_1E61DA690();
        v28 = v7;
        sub_1E65E6A68();
        v19 = v33;
        v18 = v34;
        v21 = sub_1E65E6AA8();
        v23 = v29;
        (*(v31 + 8))(v28, v5);
      }

      (*(v18 + 8))(v11, v17);
      swift_unknownObjectRelease();
      *v19 = v21;
      *(v19 + 8) = v23;
      *(v19 + 16) = v40 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1E61DA39C()
{
  v1 = *(v0 + 16);
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17FilterItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = a2[1];
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    sub_1E61DA5E0(*a2, a2[1]);
    sub_1E61DA5E0(v3, v2);
    sub_1E5FEE4E4(v3, v2);
    sub_1E5FEE4E4(v5, v4);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v11 = sub_1E65E6C18();
    sub_1E61DA5E0(v5, v4);
    sub_1E61DA5E0(v3, v2);
    sub_1E5FEE4E4(v3, v2);
    sub_1E5FEE4E4(v5, v4);
    return v11 & 1;
  }

LABEL_15:
  sub_1E61DA5E0(v6, v7);
  sub_1E61DA5E0(v3, v2);
  sub_1E5FEE4E4(v3, v2);
  sub_1E5FEE4E4(v3, v2);
  return 1;
}

unint64_t sub_1E61DA5E8()
{
  result = qword_1ED076810;
  if (!qword_1ED076810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076810);
  }

  return result;
}

unint64_t sub_1E61DA63C()
{
  result = qword_1ED076818;
  if (!qword_1ED076818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076818);
  }

  return result;
}

unint64_t sub_1E61DA690()
{
  result = qword_1ED076820;
  if (!qword_1ED076820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076820);
  }

  return result;
}

unint64_t sub_1E61DA6E8()
{
  result = qword_1ED076840;
  if (!qword_1ED076840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076840);
  }

  return result;
}

uint64_t sub_1E61DA748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E61DA790(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E61DA824()
{
  result = qword_1ED076848;
  if (!qword_1ED076848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076848);
  }

  return result;
}

unint64_t sub_1E61DA87C()
{
  result = qword_1ED076850;
  if (!qword_1ED076850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076850);
  }

  return result;
}

unint64_t sub_1E61DA8D4()
{
  result = qword_1ED076858;
  if (!qword_1ED076858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076858);
  }

  return result;
}

unint64_t sub_1E61DA92C()
{
  result = qword_1ED076860;
  if (!qword_1ED076860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076860);
  }

  return result;
}

unint64_t sub_1E61DA984()
{
  result = qword_1ED076868;
  if (!qword_1ED076868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076868);
  }

  return result;
}

unint64_t sub_1E61DA9DC()
{
  result = qword_1ED076870;
  if (!qword_1ED076870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076870);
  }

  return result;
}

unint64_t sub_1E61DAA34()
{
  result = qword_1ED076878;
  if (!qword_1ED076878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076878);
  }

  return result;
}

unint64_t sub_1E61DAA8C()
{
  result = qword_1ED076880;
  if (!qword_1ED076880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076880);
  }

  return result;
}

unint64_t sub_1E61DAAE4()
{
  result = qword_1ED076888;
  if (!qword_1ED076888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076888);
  }

  return result;
}

uint64_t sub_1E61DAB3C(uint64_t a1, uint64_t (*a2)(BOOL, unint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v32 = MEMORY[0x1E69E7CC0];
  a2(0, v3, 0);
  v4 = v32;
  v6 = a1 + 56;
  result = sub_1E65E6748();
  v8 = result;
  v9 = 0;
  v28 = v3;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v30 = v9;
    v31 = *(a1 + 36);
    v12 = *(a1 + 48) + 24 * v8;
    v14 = *v12;
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    result = a3(*v12, v13, v15);
    v17 = *(v32 + 16);
    v16 = *(v32 + 24);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      result = a2(v16 > 1, v17 + 1, 1);
      v18 = v17 + 1;
    }

    *(v32 + 16) = v18;
    v19 = v32 + 24 * v17;
    *(v19 + 32) = v14;
    *(v19 + 40) = v13;
    *(v19 + 48) = v15;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v6 = a1 + 56;
    v20 = *(a1 + 56 + 8 * v11);
    if ((v20 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v31 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v8 & 0x3F));
    if (v21)
    {
      v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v24 = (a1 + 64 + 8 * v11);
      while (v23 < (v10 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1E5F87098(v8, v31, 0);
          v10 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v8, v31, 0);
    }

LABEL_4:
    v9 = v30 + 1;
    v8 = v10;
    if (v30 + 1 == v28)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E61DADA0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768A0, &qword_1E65F6E68);
  v1 = MEMORY[0x1EEE9AC00](v48);
  v46 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073278, &qword_1E65ED0D0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = sub_1E65D9358();
  v8 = *(v7 + 16);
  if (v8)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601C0F8(0, v8, 0);
    v9 = v50;
    v10 = v7 + 64;
    v11 = sub_1E65E6748();
    v12 = 0;
    v41 = *(v7 + 36);
    v39 = v7 + 72;
    v40 = v8;
    v13 = *(v7 + 32);
    v42 = v7 + 64;
    v43 = v7;
    do
    {
      if (v11 < 0 || v11 >= 1 << v13)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v16 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v49 = v12;
      v17 = *(v7 + 48);
      v18 = sub_1E65D8EF8();
      v19 = *(v18 - 8);
      v20 = v6;
      v21 = v47;
      (*(v19 + 16))(v47, v17 + *(v19 + 72) * v11, v18);
      v22 = *(*(v7 + 56) + 8 * v11);
      v23 = v46;
      v24 = v21;
      v6 = v20;
      (*(v19 + 32))(v46, v24, v18);
      *(v23 + *(v48 + 48)) = v22;
      v25 = *(v45 + 48);

      *(v20 + v25) = sub_1E61DB728(v20, v23, v22);
      sub_1E5DFE50C(v23, &qword_1ED0768A0, &qword_1E65F6E68);
      v50 = v9;
      v27 = *(v9 + 16);
      v26 = *(v9 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601C0F8((v26 > 1), v27 + 1, 1);
        v9 = v50;
      }

      *(v9 + 16) = v27 + 1;
      sub_1E5FAB460(v20, v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v27, &qword_1ED073278, &qword_1E65ED0D0);
      v7 = v43;
      v13 = *(v43 + 32);
      v14 = 1 << v13;
      if (v11 >= 1 << v13)
      {
        goto LABEL_25;
      }

      v10 = v42;
      v28 = *(v42 + 8 * v16);
      if ((v28 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      if (v41 != *(v43 + 36))
      {
        goto LABEL_27;
      }

      v29 = v28 & (-2 << (v11 & 0x3F));
      if (v29)
      {
        v14 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v15 = v40;
      }

      else
      {
        v30 = v16 << 6;
        v31 = v16 + 1;
        v15 = v40;
        v32 = (v39 + 8 * v16);
        while (v31 < (v14 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            v14 = __clz(__rbit64(v33)) + v30;
            break;
          }
        }
      }

      v11 = v14;
      v12 = v49 + 1;
    }

    while (v49 + 1 != v15);

    if (!*(v9 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_21:
      v35 = MEMORY[0x1E69E7CC8];
      goto LABEL_22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768A8, &qword_1E65F6E70);
  v35 = sub_1E65E6A28();
LABEL_22:
  v50 = v35;

  sub_1E61DC040(v36, 1, &v50);

  return sub_1E65E2CD8();
}

uint64_t sub_1E61DB264@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076890, &qword_1E65F6E58);
  v1 = MEMORY[0x1EEE9AC00](v48);
  v46 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F80, &qword_1E65ECDE0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = sub_1E65E2CE8();
  v8 = *(v7 + 16);
  if (v8)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1E601C8B0(0, v8, 0);
    v9 = v50;
    v10 = v7 + 64;
    v11 = sub_1E65E6748();
    v12 = 0;
    v41 = *(v7 + 36);
    v39 = v7 + 72;
    v40 = v8;
    v13 = *(v7 + 32);
    v42 = v7 + 64;
    v43 = v7;
    do
    {
      if (v11 < 0 || v11 >= 1 << v13)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v16 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v49 = v12;
      v17 = *(v7 + 48);
      v18 = sub_1E65E2BA8();
      v19 = *(v18 - 8);
      v20 = v6;
      v21 = v47;
      (*(v19 + 16))(v47, v17 + *(v19 + 72) * v11, v18);
      v22 = *(*(v7 + 56) + 8 * v11);
      v23 = v46;
      v24 = v21;
      v6 = v20;
      (*(v19 + 32))(v46, v24, v18);
      *(v23 + *(v48 + 48)) = v22;
      v25 = *(v45 + 48);

      *(v20 + v25) = sub_1E61DBD10(v20, v23, v22);
      sub_1E5DFE50C(v23, &qword_1ED076890, &qword_1E65F6E58);
      v50 = v9;
      v27 = *(v9 + 16);
      v26 = *(v9 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601C8B0((v26 > 1), v27 + 1, 1);
        v9 = v50;
      }

      *(v9 + 16) = v27 + 1;
      sub_1E5FAB460(v20, v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v27, &qword_1ED072F80, &qword_1E65ECDE0);
      v7 = v43;
      v13 = *(v43 + 32);
      v14 = 1 << v13;
      if (v11 >= 1 << v13)
      {
        goto LABEL_25;
      }

      v10 = v42;
      v28 = *(v42 + 8 * v16);
      if ((v28 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      if (v41 != *(v43 + 36))
      {
        goto LABEL_27;
      }

      v29 = v28 & (-2 << (v11 & 0x3F));
      if (v29)
      {
        v14 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v15 = v40;
      }

      else
      {
        v30 = v16 << 6;
        v31 = v16 + 1;
        v15 = v40;
        v32 = (v39 + 8 * v16);
        while (v31 < (v14 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            v14 = __clz(__rbit64(v33)) + v30;
            break;
          }
        }
      }

      v11 = v14;
      v12 = v49 + 1;
    }

    while (v49 + 1 != v15);

    if (!*(v9 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_21:
      v35 = MEMORY[0x1E69E7CC8];
      goto LABEL_22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076898, &qword_1E65F6E60);
  v35 = sub_1E65E6A28();
LABEL_22:
  v50 = v35;

  sub_1E61DC594(v36, 1, &v50);

  return sub_1E65D9348();
}

uint64_t sub_1E61DB728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E65D76F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E65D9F38();
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E65E27C8();
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D8EB8();
  sub_1E65D8EC8();
  sub_1E65D8ED8();
  sub_1E65D8EE8();
  sub_1E65E2B58();
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1E601CA5C(0, v11, 0);
    v12 = v39;
    v14 = *(v6 + 16);
    v13 = v6 + 16;
    v15 = a3 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v28 = *(v13 + 56);
    v29 = v14;
    v26[1] = v8 + 32;
    v27 = (v13 - 8);
    v30 = v8;
    v31 = v13;
    v16 = v34;
    do
    {
      v38 = v12;
      v17 = v33;
      v29(v33, v15, v16);
      sub_1E65D76E8();
      v18 = sub_1E65D9F18();
      v36 = v19;
      v37 = v18;
      sub_1E65D9F28();
      v20 = sub_1E65D9EF8();
      v21 = v10;
      v22 = sub_1E61DAB3C(v20, sub_1E601CAA0, sub_1E600E210);

      sub_1E600C6BC(v22);
      v10 = v21;

      v12 = v38;
      sub_1E65E2788();
      (*v27)(v17, v16);
      v39 = v12;
      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1E601CA5C((v23 > 1), v24 + 1, 1);
        v12 = v39;
      }

      *(v12 + 16) = v24 + 1;
      (*(v30 + 32))(v12 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v10, v32);
      v15 += v28;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t WorkoutPlanSchedule.weekdays.getter()
{
  v0 = sub_1E65E2BA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65E2CE8();
  v5 = v4;
  v6 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  v24 = v1 + 8;
  v25 = v1 + 16;

  v12 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      (*(v1 + 16))(v3, *(v5 + 48) + *(v1 + 72) * (v13 | (v12 << 6)), v0);
      v14 = sub_1E65E2B68();
      v15 = MEMORY[0x1E6942760](v14);
      result = (*(v1 + 8))(v3, v0);
      if (v15 != 7)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E64F6ADC(0, *(v23 + 2) + 1, 1, v23);
      v23 = result;
    }

    v18 = *(v23 + 2);
    v17 = *(v23 + 3);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v22 = v18 + 1;
      result = sub_1E64F6ADC((v17 > 1), v18 + 1, 1, v23);
      v19 = v22;
      v23 = result;
    }

    v20 = v23;
    *(v23 + 2) = v19;
    v20[v18 + 32] = v15;
  }

  while (v9);
LABEL_6:
  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v10)
    {

      v21 = sub_1E600C434(v23);

      return v21;
    }

    v9 = *(v6 + 8 * v16);
    ++v12;
    if (v9)
    {
      v12 = v16;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}