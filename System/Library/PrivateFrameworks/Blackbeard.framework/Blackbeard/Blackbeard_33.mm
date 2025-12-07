uint64_t sub_1E6246DDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D76F8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1E65D9018();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1E65D7EB8();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6246F54, 0, 0);
}

uint64_t sub_1E6246F54()
{
  v1 = v0[9];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = WorkoutPlanService.replaceWorkoutPlan.getter();
  v0[13] = v3;
  sub_1E6143D78(v1);
  v8 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E624709C;
  v5 = v0[12];
  v6 = v0[9];

  return v8(v5, v6);
}

uint64_t sub_1E624709C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1E624733C;
  }

  else
  {
    v5 = sub_1E6247230;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6247230(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[4];
  sub_1E65D7DC8();
  v8 = sub_1E65D76C8();
  v10 = v9;
  (*(v5 + 8))(v6, v7);
  v11 = sub_1E65D7DA8();
  (*(v3 + 8))(v2, v4);

  v12 = v1[1];

  return v12(v8, v10, v11);
}

uint64_t sub_1E624733C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62473B8(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1E65D9ED8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077010, &qword_1E65F92B0);
  v2[8] = swift_task_alloc();
  v4 = sub_1E65D8C28();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1E65D9458();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_1E65E2778();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v7 = sub_1E65D82F8();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E624762C, 0, 0);
}

uint64_t sub_1E624762C()
{
  *(v0 + 288) = *(type metadata accessor for AppComposer(0) + 20);
  v1 = type metadata accessor for AppEnvironment(0);
  *(v0 + 176) = v1;
  *(v0 + 292) = *(v1 + 48);
  v2 = CatalogService.requestCatalogSync.getter();
  *(v0 + 184) = v3;
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  v4[1] = sub_1E6247750;

  return v6(1);
}

uint64_t sub_1E6247750()
{

  if (v0)
  {

    v1 = sub_1E624D4A4;
  }

  else
  {

    v1 = sub_1E6247898;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E6247898()
{
  v1 = ConfigurationService.queryConfiguration.getter();
  v0[25] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_1E62479A8;
  v4 = v0[21];

  return v6(v4);
}

uint64_t sub_1E62479A8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1E6248360;
  }

  else
  {
    v2 = sub_1E6247ABC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6247ABC()
{

  v1 = CatalogService.queryAllCatalogModalityReferences.getter();
  *(v0 + 224) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_1E6247BD0;

  return v5();
}

uint64_t sub_1E6247BD0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_1E6248424;
  }

  else
  {

    *(v4 + 248) = a1;
    v5 = sub_1E6247D00;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6247D00()
{
  v1 = v0[31];
  v2 = v0[21];
  v3 = v0[8];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = sub_1E6405EE0(sub_1E624D488, v5, v1);

  v0[2] = v6;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077018, &qword_1E65F92E8);
  sub_1E5FED46C(&qword_1ED077020, &qword_1ED077018, &qword_1E65F92E8, MEMORY[0x1E69E6328]);
  v0[32] = sub_1E65E5E78();

  v7 = CatalogService.queryCatalogFilterOptions.getter();
  v0[33] = v8;
  v9 = sub_1E65D9758();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_1E65E5D08();
  sub_1E65D8C18();
  v14 = (v7 + *v7);
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = sub_1E6247F6C;
  v11 = v0[14];
  v12 = v0[11];

  return v14(v11, v12);
}

uint64_t sub_1E6247F6C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);

  if (v0)
  {

    v3 = sub_1E6248508;
  }

  else
  {
    v3 = sub_1E62480E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E62480E8()
{
  v26 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[6];
  v9 = v0[7];
  v24 = v0[5];
  sub_1E6092C40(v1);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v2, v1, v3);
  sub_1E65D8268();
  v10 = sub_1E65D9EC8();
  (*(v8 + 8))(v9, v24);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_1E64F7464(*(v10 + 16), 0);
    v13 = sub_1E62598D0(&v25, v12 + 4, v11, v10);
    v14 = v25;

    sub_1E5E24EE4(v14);
    if (v13 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v15 = v0[35];
  v25 = v12;
  sub_1E624C1F0(&v25);
  if (v15)
  {
  }

  else
  {
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[18];
    v20 = v0[16];
    v21 = v0[15];
    v23 = v0[19];

    sub_1E65E2A98();
    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(v17, v23);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1E6248360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6248424()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6248508()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E62485DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v66 = a2;
  v64 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077028, &qword_1E65F92F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v62 - v3;
  v5 = sub_1E65E2A48();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v63 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = v62 - v9;
  v10 = sub_1E65D9ED8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D8268();
  v14 = sub_1E65D9EB8();
  (*(v11 + 8))(v13, v10);
  v15 = sub_1E65D9D08();
  v17 = v16;
  LOBYTE(v13) = v18;
  LOBYTE(v11) = sub_1E637CFC0(v15, v16, v18 & 1, v14);

  sub_1E5F87058(v15, v17, v13 & 1);
  if ((v11 & 1) == 0)
  {
    goto LABEL_34;
  }

  v19 = sub_1E65D9D08();
  v21 = v20;
  v23 = v22;
  sub_1E628A07C(v4);
  sub_1E5F87058(v19, v21, v23 & 1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1E5DFE50C(v4, &qword_1ED077028, &qword_1E65F92F0);
LABEL_34:
    v59 = 1;
    v58 = v66;
    goto LABEL_35;
  }

  (*(v6 + 32))(v65, v4, v5);
  v24 = v5;
  v25 = sub_1E65D9D08();
  v27 = v26;
  v29 = v28;
  v30 = v64 + *(type metadata accessor for AppComposer(0) + 20);
  v31 = type metadata accessor for AppEnvironment(0);
  __swift_project_boxed_opaque_existential_1((v30 + *(v31 + 136)), *(v30 + *(v31 + 136) + 24));
  v32 = sub_1E65DB448();
  *&v67 = v25;
  *(&v67 + 1) = v27;
  v29 &= 1u;
  v68 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E65D7FB8();
  sub_1E5F87058(v25, v27, v29);
  if (v70 == 14)
  {
    (*(v6 + 8))(v65, v24);
    goto LABEL_34;
  }

  v64 = v24;
  v33 = sub_1E6289E48(v32 & 1, v70);
  if (!v34)
  {
    (*(v6 + 8))(v65, v64);
    goto LABEL_34;
  }

  v62[6] = v33;
  v62[5] = sub_1E65D9CF8();
  v35 = sub_1E65D9CD8();
  v62[3] = v36;
  v62[4] = v35;
  v37 = v65;
  (*(v6 + 16))(v63, v65, v64);
  v38 = sub_1E65D9D18();
  v62[1] = v39;
  v62[2] = v38;
  v40 = sub_1E65D9CE8();
  v41 = v37;
  v42 = v40;
  v43 = v40 + 56;
  v44 = 1 << *(v40 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v40 + 56);
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  if (v46)
  {
    while (2)
    {
      v50 = v48;
LABEL_14:
      v51 = *(v42 + 48) + 24 * (__clz(__rbit64(v46)) | (v50 << 6));
      v52 = *(v51 + 16);
      v46 &= v46 - 1;
      v67 = *v51;
      v68 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077030, &qword_1E65F92F8);
      sub_1E65D7FB8();
      switch(v70)
      {
        case 0:
        case 2:
        case 9:
        case 12:
        case 13:
          goto LABEL_15;
        case 1:
          v69 = 0;
          goto LABEL_27;
        case 3:
          v53 = 2;
          goto LABEL_26;
        case 4:
          v53 = 1;
          goto LABEL_26;
        case 5:
          v53 = 3;
          goto LABEL_26;
        case 6:
          v53 = 4;
          goto LABEL_26;
        case 7:
          v53 = 5;
          goto LABEL_26;
        case 8:
          v53 = 6;
          goto LABEL_26;
        case 10:
          v53 = 7;
          goto LABEL_26;
        case 11:
          v53 = 8;
LABEL_26:
          v69 = v53;
LABEL_27:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1E64F6D0C(0, *(v49 + 2) + 1, 1, v49);
          }

          v55 = *(v49 + 2);
          v54 = *(v49 + 3);
          v56 = v55 + 1;
          if (v55 >= v54 >> 1)
          {
            v62[0] = v55 + 1;
            v57 = sub_1E64F6D0C((v54 > 1), v55 + 1, 1, v49);
            v56 = v62[0];
            v49 = v57;
          }

          *(v49 + 2) = v56;
          v49[v55 + 32] = v69;
LABEL_15:
          v48 = v50;
          v41 = v65;
          if (!v46)
          {
            goto LABEL_11;
          }

          continue;
        default:
          goto LABEL_37;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_37:
      JUMPOUT(0);
    }

    if (v50 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v50);
    ++v48;
    if (v46)
    {
      goto LABEL_14;
    }
  }

  sub_1E600CBF0(v49);

  v58 = v66;
  sub_1E65E2C98();
  (*(v6 + 8))(v41, v64);
  v59 = 0;
LABEL_35:
  v60 = sub_1E65E2CB8();
  return (*(*(v60 - 8) + 56))(v58, v59, 1, v60);
}

uint64_t sub_1E6248C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8048();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D9158();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6248D48, 0, 0);
}

uint64_t sub_1E6248D48()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.filterCatalog.getter();
  v0[11] = v2;
  v3 = sub_1E65E27E8();
  v4 = sub_1E6245CCC(v3);

  sub_1E600A6B8(v4);

  v5 = sub_1E65E27F8();
  v6 = sub_1E6245CCC(v5);

  sub_1E600A6B8(v6);

  sub_1E65D8038();
  v11 = (v1 + *v1);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1E6248F10;
  v8 = v0[10];
  v9 = v0[7];

  return v11(v8, v9);
}

uint64_t sub_1E6248F10()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1E5FE0E84;
  }

  else
  {
    v5 = sub_1E62490A4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E62490A4()
{
  v2 = v0[9];
  v1 = v0[10];
  v5 = v0[8];
  sub_1E65D9108();
  sub_1E65D90D8();
  sub_1E65D9118();
  sub_1E65D90E8();
  sub_1E65D9128();
  sub_1E65D9138();
  sub_1E65D90B8();
  sub_1E65D90C8();
  sub_1E65E2708();
  (*(v2 + 8))(v1, v5);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E62491C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65DA308();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D9388();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62492E0, 0, 0);
}

uint64_t sub_1E62492E0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = WorkoutPlanService.makeWorkoutPlanSchedule.getter();
  v0[11] = v2;
  sub_1E62FE8A0();
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6249428;
  v4 = v0[10];
  v5 = v0[7];

  return v7(v4, v5);
}

uint64_t sub_1E6249428()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1E6171EB8;
  }

  else
  {
    v5 = sub_1E62495BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E62495BC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1E61DADA0(v0[2]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6249678()
{
  v1 = v0[7];
  v0[8] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[9] = sub_1E65E6058();
  v0[10] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6249728, v3, v2);
}

uint64_t sub_1E6249728()
{

  sub_1E5E20198(1, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E62497A0, 0, 0);
}

uint64_t sub_1E62497A0()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[14] = *(v2 + 8);
  v0[15] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x6982000000000000;
  v0[16] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E624984C, v4, v3);
}

uint64_t sub_1E624984C()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];

  v1(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E6115FB4, 0, 0);
}

uint64_t sub_1E62498D8(uint64_t a1, uint64_t a2)
{
  v2[29] = a1;
  v2[30] = a2;
  v3 = sub_1E65DA308();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6249998, 0, 0);
}

uint64_t sub_1E6249998()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = WorkoutPlanService.validateSchedule.getter();
  v0[34] = v2;
  sub_1E62FE8A0();
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_1E6249ADC;
  v4 = v0[33];

  return v6(v4);
}

uint64_t sub_1E6249ADC()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[32] + 8))(v2[33], v2[31]);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6249CA0, 0, 0);
  }

  else
  {

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1E6249CA0()
{
  swift_getErrorValue();
  v1 = sub_1E65D8B88();
  v0[5] = v1;
  v2 = sub_1E624D3E0(&qword_1ED077000, MEMORY[0x1E69CB928], MEMORY[0x1E69CB920]);
  v0[6] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v4 = *(*(v1 - 8) + 104);
  v4(boxed_opaque_existential_1, *MEMORY[0x1E69CB910], v1);
  v5 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5)
  {
    v6 = v0[36];
    v7 = sub_1E65E2728();
    sub_1E624D3E0(&qword_1ED077008, MEMORY[0x1E699F440], MEMORY[0x1E699F448]);
    swift_allocError();
    v9 = v8;
    v10 = MEMORY[0x1E699F430];
LABEL_3:
    (*(*(v7 - 8) + 104))(v9, *v10, v7);
    swift_willThrow();

    goto LABEL_9;
  }

  swift_getErrorValue();
  v0[10] = v1;
  v0[11] = v2;
  v11 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  v4(v11, *MEMORY[0x1E69CB908], v1);
  v12 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v13 = v0[36];
  if (v12)
  {
    v14 = sub_1E65E2728();
    sub_1E624D3E0(&qword_1ED077008, MEMORY[0x1E699F440], MEMORY[0x1E699F448]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x1E699F428], v14);
    swift_willThrow();
  }

  else
  {
    swift_getErrorValue();
    v0[15] = v1;
    v0[16] = v2;
    v16 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    v4(v16, *MEMORY[0x1E69CB918], v1);
    v17 = sub_1E65E6CA8();
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    v6 = v0[36];
    if (v17)
    {
      v7 = sub_1E65E2728();
      sub_1E624D3E0(&qword_1ED077008, MEMORY[0x1E699F440], MEMORY[0x1E699F448]);
      swift_allocError();
      v9 = v18;
      v10 = MEMORY[0x1E699F438];
      goto LABEL_3;
    }

    swift_willThrow();
  }

LABEL_9:

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E624A06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v23 = &v22 - v6;
  v7 = sub_1E65D7848();
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075500, &qword_1E65F1B18);
  MEMORY[0x1EEE9AC00](v16 - 8);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  v17 = v12;
  v18 = v22;
  (*(v13 + 8))(v15, v17);
  v19 = v23;
  sub_1E65E2648();
  sub_1E624D3E0(&qword_1ED076FF8, MEMORY[0x1E699F390], MEMORY[0x1E699F398]);
  sub_1E65E4DA8();
  sub_1E5DFE50C(v11, &qword_1ED072958, &qword_1E65EC0F0);
  sub_1E63969B4();
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v19);
  sub_1E5DFE50C(v4, &qword_1ED071F78, &unk_1E65EA3F0);
  v20 = *(v18 + 48);
  if (v20(v19, 1, v7) == 1)
  {
    sub_1E65D77C8();
    if (v20(v19, 1, v7) != 1)
    {
      sub_1E5DFE50C(v19, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v18 + 32))(v25, v19, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  return sub_1E65E2738();
}

uint64_t sub_1E624A504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v39 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArtworkDescriptor(0);
  v18 = (v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E5DFD1CC(a1, v13, &qword_1ED0734E8, &qword_1E65ED470);
  sub_1E5DFD1CC(a3, v10, &qword_1ED072340, &qword_1E65EA410);
  sub_1E65DB248();
  sub_1E5DFD1CC(v38, &v16[v21], &qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppComposer(0);
  v22 = sub_1E65DAE38();
  v23 = sub_1E65DAE38();
  v24 = sub_1E65E4B48();
  v25 = 4.0;
  if (v24)
  {
    v25 = 8.0;
  }

  v26 = 16.0;
  if (v24)
  {
    v26 = 18.0;
  }

  if (v22 == v23)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  if (v22 == v23)
  {
    v28 = 12.0;
  }

  else
  {
    v28 = 8.0;
  }

  sub_1E5E1E458(v16, v20, type metadata accessor for ArtworkContent);
  *(v20 + v18[7]) = MEMORY[0x1E69E7CD0];
  v29 = (v20 + v18[8]);
  *v29 = 0.0;
  v29[1] = v27;
  v29[2] = v27;
  v29[3] = v28;
  *(v20 + v18[9]) = 1;
  v30 = (v20 + v18[10]);
  *v30 = 0;
  v30[1] = 0;
  v31 = v39;
  sub_1E64D2DD0(v20, a4, v39);
  v32 = sub_1E65E4B98();
  v34 = v33;
  v35 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v20, a4, v35);
  sub_1E624D428(v20, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v37 = (v35 + *(result + 36));
  *v37 = v32;
  v37[1] = v34;
  return result;
}

uint64_t sub_1E624A854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v172 = a3;
  v167 = a2;
  v170 = a1;
  v148 = a4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v142 = &v127 - v4;
  v145 = sub_1E65E1398();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v164 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E1298();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v135 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1E65E1208();
  v143 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v163 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v160 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v127 - v10;
  v12 = type metadata accessor for AppComposer(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v134 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v155 = &v127 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v154 = &v127 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v152 = &v127 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v150 = &v127 - v23;
  v25 = v24;
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v127 - v26;
  v28 = sub_1E65E1168();
  v137 = v28;
  v136 = *(v28 - 8);
  v29 = v136;
  v140 = *(v136 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v141 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v165 = &v127 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v127 - v34;
  v138 = &v127 - v34;
  v36 = sub_1E65E1518();
  v161 = *(v36 - 8);
  v162 = v36;
  v133 = *(v161 + 64);
  v37 = MEMORY[0x1EEE9AC00](v36);
  v132 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v166 = &v127 - v39;
  sub_1E65E14F8();
  (*(v29 + 104))(v35, *MEMORY[0x1E699E768], v28);
  v40 = v170;
  v151 = v27;
  sub_1E5E1D6F4(v170, v27, type metadata accessor for AppComposer);
  v41 = *(v13 + 80);
  v153 = ((v41 + 16) & ~v41) + v25;
  v42 = (v41 + 16) & ~v41;
  v171 = v42;
  v168 = v41 | 7;
  v43 = v41;
  v129 = swift_allocObject();
  v173 = type metadata accessor for AppComposer;
  sub_1E5E1E458(v27, v129 + v42, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v172, v11, &unk_1ED077760, &unk_1E66011D0);
  v44 = (*(v160 + 80) + 16) & ~*(v160 + 80);
  v149 = swift_allocObject();
  sub_1E624C114(v11, v149 + v44);
  sub_1E65E5148();
  v172 = sub_1E65E5138();
  v45 = v40;
  v46 = v150;
  v174 = type metadata accessor for AppComposer;
  sub_1E5E1D6F4(v40, v150, type metadata accessor for AppComposer);
  v169 = v43;
  v47 = (v43 + 32) & ~v43;
  v48 = v47 + v25;
  v49 = v47;
  v131 = v47;
  v156 = v25;
  v50 = (v47 + v25) & 0xFFFFFFFFFFFFFFF8;
  v130 = v47 + v25;
  v51 = swift_allocObject();
  v160 = v51;
  v128 = &unk_1E65F9200;
  v52 = v129;
  *(v51 + 16) = &unk_1E65F9200;
  *(v51 + 24) = v52;
  v53 = v51 + v49;
  v54 = v173;
  sub_1E5E1E458(v46, v53, v173);
  *(v51 + v48) = 0;
  v55 = v51 + v50;
  v157 = sub_1E624C184;
  v56 = v149;
  *(v55 + 8) = sub_1E624C184;
  *(v55 + 16) = v56;
  v57 = (v51 + ((v50 + 31) & 0xFFFFFFFFFFFFFFF8));
  v58 = MEMORY[0x1E69AB380];
  v59 = v172;
  *v57 = v172;
  v57[1] = v58;
  v60 = v45;
  v61 = v152;
  sub_1E5E1D6F4(v60, v152, type metadata accessor for AppComposer);
  v62 = (v169 + 48) & ~v169;
  v63 = v62 + v25;
  v64 = swift_allocObject();
  v65 = v128;
  v64[2] = v128;
  v64[3] = v52;
  v66 = v52;
  v64[4] = v59;
  v64[5] = MEMORY[0x1E69AB380];
  v67 = v64;
  sub_1E5E1E458(v61, v64 + v62, v54);
  v159 = v67;
  *(v67 + v63) = 0;
  v68 = v67 + ((v62 + v25) & 0xFFFFFFFFFFFFFFF8);
  v69 = v149;
  *(v68 + 1) = v157;
  *(v68 + 2) = v69;
  v70 = v170;
  v71 = v154;
  sub_1E5E1D6F4(v170, v154, v174);
  v72 = swift_allocObject();
  v72[2] = v65;
  v72[3] = v66;
  v72[4] = v59;
  v72[5] = MEMORY[0x1E69AB380];
  v73 = v72 + v62;
  v74 = v72;
  v158 = v72;
  v75 = v173;
  sub_1E5E1E458(v71, v73, v173);
  v76 = v74 + ((v63 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v76 = v157;
  *(v76 + 1) = v69;
  v76[16] = 0;
  v77 = v155;
  v78 = v174;
  sub_1E5E1D6F4(v70, v155, v174);
  v79 = swift_allocObject();
  v157 = v79;
  *(v79 + 16) = v65;
  *(v79 + 24) = v66;
  v80 = v75;
  sub_1E5E1E458(v77, v79 + v131, v75);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v81 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v82 = v70;
  v149 = *v70;
  v83 = v151;
  sub_1E5E1D6F4(v70, v151, v78);
  sub_1E5DF650C(v167, &v177);
  v84 = (v169 + 24) & ~v169;
  v85 = (v156 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  *(v86 + 16) = v81;
  v87 = v86 + v84;
  v88 = v86;
  v131 = v86;
  sub_1E5E1E458(v83, v87, v80);
  sub_1E5DF599C(&v177, v88 + v85);
  v89 = v150;
  sub_1E5E1D6F4(v70, v150, v78);
  v130 = swift_allocObject();
  v90 = v171;
  sub_1E5E1E458(v89, v130 + v171, v80);
  v91 = v152;
  sub_1E5E1D6F4(v82, v152, v78);
  v150 = swift_allocObject();
  sub_1E5E1E458(v91, v150 + v90, v80);
  v92 = v154;
  sub_1E5E1D6F4(v82, v154, v78);
  v93 = swift_allocObject();
  sub_1E5E1E458(v92, v93 + v90, v80);
  v94 = v155;
  sub_1E5E1D6F4(v82, v155, v78);
  v95 = swift_allocObject();
  sub_1E5E1E458(v94, v95 + v90, v80);
  v96 = v134;
  sub_1E5E1D6F4(v82, v134, v78);
  v97 = swift_allocObject();
  sub_1E5E1E458(v96, v97 + v90, v80);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v98 = v161;
  v99 = v162;
  v100 = v132;
  (*(v161 + 16))(v132, v166, v162);
  v101 = v151;
  sub_1E5E1D6F4(v82, v151, v78);
  v102 = v98;
  v103 = (*(v98 + 80) + 16) & ~*(v98 + 80);
  v104 = (v133 + v169 + v103) & ~v169;
  v105 = swift_allocObject();
  (*(v102 + 32))(v105 + v103, v100, v99);
  v106 = v173;
  sub_1E5E1E458(v101, v105 + v104, v173);
  type metadata accessor for AppFeature(0);
  sub_1E624D3E0(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E624D3E0(&qword_1EE2D6530, MEMORY[0x1E699E7A0], MEMORY[0x1E699E798]);
  v107 = v142;
  v108 = v139;
  sub_1E65E4DE8();
  sub_1E5E1D6F4(v82, v101, v174);
  v109 = (v153 + 7) & 0xFFFFFFFFFFFFFFF8;
  v110 = swift_allocObject();
  sub_1E5E1E458(v101, v110 + v171, v106);
  v111 = (v110 + v109);
  *v111 = v172;
  v111[1] = MEMORY[0x1E69AB380];
  v111[2] = &unk_1E65EB918;
  v111[3] = v160;
  v111[4] = &unk_1E65FA770;
  v111[5] = v159;
  v111[6] = &unk_1E65EB920;
  v111[7] = v158;
  v111[8] = &unk_1E65FA780;
  v111[9] = v157;

  v113 = v163;
  v112 = v164;
  v114 = sub_1E65E4F08();

  (*(v146 + 8))(v107, v147);
  (*(v144 + 8))(v112, v145);
  (*(v143 + 8))(v113, v108);
  v115 = v136;
  v116 = *(v136 + 16);
  v117 = v138;
  v118 = v137;
  v116(v165, v138, v137);
  sub_1E5E1D6F4(v170, v101, v174);
  sub_1E5DF650C(v167, &v177);
  v119 = swift_allocObject();
  sub_1E5E1E458(v101, v119 + v171, v173);
  sub_1E5DF599C(&v177, v119 + v109);
  v120 = v141;
  v116(v141, v117, v118);
  v121 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v122 = (v140 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v123 = swift_allocObject();
  (*(v115 + 32))(v123 + v121, v120, v118);
  *(v123 + v122) = v114;
  sub_1E65E3878();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E624D3E0(&qword_1EE2D6048, MEMORY[0x1E699ED90], MEMORY[0x1E699ED88]);
  v124 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v175 = v124;
  v176 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();

  (*(v115 + 8))(v117, v118);
  return (*(v161 + 8))(v166, v162);
}

uint64_t sub_1E624BA80(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E624BBC4, 0, 0);
}

uint64_t sub_1E624BBC4()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *MEMORY[0x1E69CBD48];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = (v6 + *(type metadata accessor for AppComposer(0) + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  v14 = sub_1E65D9908();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = sub_1E65D9F88();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1E5FA9D34(v11, v12);
  sub_1E65D7A28();
  v16 = sub_1E65D7A38();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);

  v17 = v0[1];

  return v17();
}

unint64_t sub_1E624BE50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = 9;
  sub_1E5DFD1CC(a1, v4, &unk_1ED077760, &unk_1E66011D0);
  v6 = sub_1E65D76F8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_1E5DFE50C(v4, &unk_1ED077760, &unk_1E66011D0);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = sub_1E65D76C8();
    v9 = v10;
    (*(v7 + 8))(v4, v6);
  }

  v13[0] = v8;
  v13[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5FEE0FC();
  sub_1E65E6848();
  v11 = sub_1E6427784(inited);
  swift_setDeallocating();
  sub_1E5DFE50C(inited + 32, &qword_1ED072988, &qword_1E65EC128);
  return v11;
}

uint64_t sub_1E624C038(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E624BA80(a1, v1 + v5);
}

uint64_t sub_1E624C114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E624C184()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E624BE50(v2);
}

uint64_t sub_1E624C1F0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E636B26C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E65E6BA8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E65E5F98();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E624C324(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E624C324(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E636AC44(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1E624C870((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E636ADD0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1E636ADD0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1E624C870((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1E624C870(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1E624CA64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E624CB08(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E624CBE0;

  return sub_1E6246DDC(a1, v1 + v5);
}

uint64_t sub_1E624CBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_1E624CCF4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62473B8(a1, v1 + v5);
}

uint64_t sub_1E624CDD0()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E621FCB8;

  return sub_1E621FDC4(v0 + v3);
}

uint64_t sub_1E624CE9C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6248C28(a1, a2, v2 + v7);
}

uint64_t sub_1E624CF80(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6138698(a1, v1 + v5);
}

uint64_t sub_1E624D05C(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62491C0(a1, a2, v2 + v7);
}

uint64_t sub_1E624D140()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6249658(v0 + v3);
}

uint64_t sub_1E624D20C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62498D8(a1, v1 + v5);
}

uint64_t sub_1E624D2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AppComposer(0);

  return sub_1E624A06C(a1, a2);
}

uint64_t sub_1E624D3E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E624D428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E624D4A8()
{
  v0 = sub_1E65D76A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-v5];
  v7 = sub_1E65D92D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  sub_1E65E4C98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v8 + 32))(v10, v6, v7);
LABEL_7:
    sub_1E65D7698();
    v14 = sub_1E65D92A8();
    (*(v1 + 8))(v3, v0);
    (*(v8 + 8))(v10, v7);
    if (v14)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077038, &qword_1E65F9300) + 48);
    (*(v8 + 32))(v10, v6, v7);
    (*(v1 + 8))(&v6[v12], v0);
    goto LABEL_7;
  }

  v15 = *(v6 + 2);

  v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v17 = sub_1E65E5C48();

  v18 = [v16 initWithDomain:v17 code:v15 userInfo:0];

  v20[15] = 4;
  sub_1E5FFF464();
  v19 = v18;
  LOBYTE(v17) = sub_1E65D97C8();

  if (v17)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void *sub_1E624D7E4(uint64_t a1, void *a2)
{
  v83 = a2;
  v3 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v3);
  v98 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SearchItemContext(0);
  v5 = MEMORY[0x1EEE9AC00](v87);
  v86 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v69 - v7;
  v81 = sub_1E65DCCE8();
  v8 = *(v81 - 8);
  v9 = MEMORY[0x1EEE9AC00](v81);
  v77 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077048, &qword_1E65F9380);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v69 - v13;
  v95 = sub_1E65D9CC8();
  v14 = *(v95 - 8);
  v15 = MEMORY[0x1EEE9AC00](v95);
  v72 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v69 - v17;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v18 = MEMORY[0x1EEE9AC00](v100);
  v84 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v99 = &v69 - v21;
  v22 = a1 + 56;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a1 + 56);
  v26 = (v23 + 63) >> 6;
  v97 = v20 + 16;
  v90 = (v14 + 56);
  v76 = (v8 + 32);
  v74 = (v20 + 32);
  v73 = (v20 + 40);
  v75 = (v8 + 8);
  v93 = v20;
  v88 = (v14 + 48);
  v89 = (v20 + 8);
  v70 = v14;
  v71 = (v14 + 32);
  v96 = a1;

  v27 = 0;
  v79 = MEMORY[0x1E69E7CC0];
  v91 = v26;
  v82 = v3;
LABEL_4:
  v28 = v27;
  if (!v25)
  {
    goto LABEL_6;
  }

  do
  {
    v27 = v28;
LABEL_9:
    v29 = *(v96 + 48);
    v94 = *(v93 + 72);
    v30 = *(v93 + 16);
    v30(v99, v29 + v94 * (__clz(__rbit64(v25)) | (v27 << 6)), v100);
    sub_1E65E04E8();
    v31 = v98;
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      sub_1E6254944(v31, type metadata accessor for ItemContext);
      v53 = 1;
LABEL_18:
      v54 = v92;
      goto LABEL_26;
    }

    v32 = v85;
    sub_1E62548DC(v31, v85, type metadata accessor for SearchItemContext);
    v33 = v86;
    sub_1E62548DC(v32, v86, type metadata accessor for SearchItemContext);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E6254944(v33, type metadata accessor for SearchItemContext);
      v53 = 1;
      goto LABEL_18;
    }

    v34 = v33;
    v35 = *v76;
    v36 = v77;
    v37 = v81;
    (*v76)(v77, v34, v81);
    v35(v80, v36, v37);
    v38 = sub_1E65DCCB8();
    v40 = v39;
    v30(v84, v99, v100);
    v41 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = *v41;
    v43 = v101;
    v78 = v38;
    v45 = sub_1E6215038(v38, v40);
    v46 = v43[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_36;
    }

    v49 = v44;
    if (v43[3] >= v48)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v52 = v101;
        if ((v44 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1E6424B84();
        v52 = v101;
        if ((v49 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_1E641BE8C(v48, isUniquelyReferenced_nonNull_native);
      v50 = sub_1E6215038(v78, v40);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_38;
      }

      v45 = v50;
      v52 = v101;
      if ((v49 & 1) == 0)
      {
LABEL_23:
        v52[(v45 >> 6) + 8] |= 1 << v45;
        v55 = (v52[6] + 16 * v45);
        *v55 = v78;
        v55[1] = v40;
        (*v74)(v52[7] + v45 * v94, v84, v100);
        v56 = v52[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_37;
        }

        v52[2] = v58;
        goto LABEL_25;
      }
    }

    (*v73)(v52[7] + v45 * v94, v84, v100);

LABEL_25:
    *v83 = v52;
    v59 = v80;
    sub_1E65DCCB8();
    sub_1E65DCCA8();
    v54 = v92;
    sub_1E65D9C88();
    (*v75)(v59, v81);
    v53 = 0;
LABEL_26:
    v25 &= v25 - 1;
    v60 = v95;
    (*v90)(v54, v53, 1, v95);
    (*v89)(v99, v100);
    if ((*v88)(v54, 1, v60) != 1)
    {
      v61 = *v71;
      v62 = v69;
      v63 = v95;
      (*v71)(v69, v54, v95);
      v61(v72, v62, v63);
      v64 = v79;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1E64F610C(0, v64[2] + 1, 1, v64);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_1E64F610C((v65 > 1), v66 + 1, 1, v64);
      }

      v64[2] = v66 + 1;
      v67 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v79 = v64;
      v61(v64 + v67 + *(v70 + 72) * v66, v72, v95);
      v26 = v91;
      goto LABEL_4;
    }

    sub_1E5DFE50C(v54, &qword_1ED077048, &qword_1E65F9380);
    v28 = v27;
    v26 = v91;
  }

  while (v25);
LABEL_6:
  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      return v79;
    }

    v25 = *(v22 + 8 * v27);
    ++v28;
    if (v25)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E624E170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_1E65DCC68();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v35 - v10);
  v12 = type metadata accessor for RouteDestination(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v38 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v35 - v16;
  sub_1E645CB58(v11);
  v37 = v13;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E5DFE50C(v11, &unk_1ED072040, &qword_1E65F0860);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v18 - 8) + 56))(v40, 1, 1, v18);
  }

  else
  {
    v35[0] = type metadata accessor for RouteDestination;
    sub_1E62548DC(v11, v17, type metadata accessor for RouteDestination);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
    v21 = v20[16];
    v22 = v20[20];
    v35[1] = v20[12];
    v36 = v22;
    v23 = v40;
    v24 = (v40 + v20[24]);
    (*(v3 + 104))(v8, *MEMORY[0x1E699EEB8], v2);
    (*(v3 + 16))(v6, v8, v2);
    sub_1E6254878(&qword_1ED077040, MEMORY[0x1E699EEC0], MEMORY[0x1E699EEC8]);
    sub_1E65E6848();
    (*(v3 + 8))(v8, v2);
    v25 = *MEMORY[0x1E6999B50];
    v26 = sub_1E65E4EB8();
    (*(*(v26 - 8) + 104))(v23 + v21, v25, v26);
    v27 = v38;
    sub_1E62549BC(v17, v38, type metadata accessor for RouteDestination);
    sub_1E5DF650C(v39, v41);
    v28 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v29 = swift_allocObject();
    sub_1E62548DC(v27, v29 + v28, v35[0]);
    sub_1E5DF599C(v41, v29 + ((v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v24 = &unk_1E65F9310;
    v24[1] = v29;
    sub_1E65E6068();
    sub_1E6254944(v17, type metadata accessor for RouteDestination);
    v30 = *MEMORY[0x1E6999B48];
    v31 = sub_1E65E4EA8();
    (*(*(v31 - 8) + 104))(v23 + v36, v30, v31);
    v32 = *MEMORY[0x1E6999AD8];
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    v34 = *(v33 - 8);
    (*(v34 + 104))(v23, v32, v33);
    return (*(v34 + 56))(v23, 0, 1, v33);
  }
}

uint64_t sub_1E624E6AC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = v51 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v51 - v9;
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v77 = v51 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v76 = v51 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v51 - v19;
  v22 = v21;
  v57 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v24 = v51 - v23;
  sub_1E62549BC(v2, v51 - v23, type metadata accessor for AppComposer);
  sub_1E5DF650C(a1, &v83);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = (v25 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v11 + 80);
  v28 = swift_allocObject();
  v79 = v28;
  sub_1E62548DC(v24, v28 + v25, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v83, v28 + v26);
  sub_1E62549BC(v3, v20, type metadata accessor for AppComposer);
  v51[8] = *a2;
  v51[9] = a2[3];
  v51[10] = a2[5];
  v51[11] = a2[7];
  v51[12] = a2[9];
  v29 = swift_allocObject();
  v60 = v29;
  sub_1E62548DC(v20, v29 + v25, type metadata accessor for AppComposer);
  v30 = (v29 + v26);
  v31 = *(a2 + 3);
  v30[2] = *(a2 + 2);
  v30[3] = v31;
  v30[4] = *(a2 + 4);
  v32 = *(a2 + 1);
  *v30 = *a2;
  v30[1] = v32;
  v33 = v76;
  v54 = type metadata accessor for AppComposer;
  sub_1E62549BC(v3, v76, type metadata accessor for AppComposer);
  v53 = v27;
  v78 = swift_allocObject();
  v55 = type metadata accessor for AppComposer;
  sub_1E62548DC(v33, v78 + v25, type metadata accessor for AppComposer);
  v52 = v3;
  v34 = v77;
  sub_1E62549BC(v3, v77, type metadata accessor for AppComposer);
  v76 = swift_allocObject();
  sub_1E62548DC(v34, v76 + v25, type metadata accessor for AppComposer);
  v58 = *v3;
  v77 = type metadata accessor for ActionButtonDescriptor(0);
  v75 = type metadata accessor for ArtworkDescriptor(0);
  v74 = type metadata accessor for ContextMenu(0);
  v73 = type metadata accessor for ItemContext(0);
  v72 = type metadata accessor for ItemMetrics(0);
  v71 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v70 = type metadata accessor for SectionMetrics(0);
  v51[7] = type metadata accessor for ViewDescriptor(0);
  v69 = sub_1E6254878(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v68 = sub_1E6254878(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v67 = sub_1E6254878(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v51[6] = sub_1E6254878(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v51[5] = sub_1E6254878(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v51[4] = sub_1E6254878(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v51[3] = sub_1E6254878(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v51[2] = sub_1E6254878(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v51[1] = sub_1E6254878(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E6254878(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v36 = sub_1E65DC168();
  v81 = v35;
  v82 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70, MEMORY[0x1E699D718]);
  v80 = v36;
  v37 = v61;
  sub_1E65DC248();
  v38 = v59;
  sub_1E62549BC(v52, v59, v54);
  v39 = (v53 + 32) & ~v53;
  v40 = (v57 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = 0x6372616553205654;
  *(v41 + 24) = 0xE900000000000068;
  sub_1E62548DC(v38, v41 + v39, v55);
  v42 = (v41 + v40);
  *v42 = sub_1E5F8AA74;
  v42[1] = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 0x6372616553205654;
  *(v43 + 24) = 0xE900000000000068;
  type metadata accessor for AppFeature(0);
  sub_1E6254878(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98, MEMORY[0x1E699D758]);
  v44 = v63;
  v45 = v62;
  sub_1E65E4DE8();
  v46 = swift_allocObject();
  v47 = v60;
  *(v46 + 16) = sub_1E6254AC4;
  *(v46 + 24) = v47;

  sub_1E65E4CC8();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1E6256260;
  *(v48 + 24) = v46;

  v49 = sub_1E65E4F08();

  (*(v65 + 8))(v44, v66);
  (*(v64 + 8))(v37, v45);
  return v49;
}

uint64_t sub_1E624F37C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65E3B68();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E50, &qword_1E65ECC08);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_1E65DCBA8();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = sub_1E65DCBE8();
  v2[16] = swift_task_alloc();
  v5 = sub_1E65DD0A8();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = sub_1E65DD128();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E624F5F4, 0, 0);
}

uint64_t sub_1E624F5F4()
{
  v70 = v0;
  v1 = v0;
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65DD078();
  v5 = *(v4 + 8);
  v5(v2, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = v0 + 23;
    v7 = v1[19];
    v8 = v1[17];
    v9 = v1[11];
    v65 = v1[10];
    v10 = v1[8];
    (*(v1[22] + 32))(v1[23], v1[16], v1[21]);
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65DD038();
    v5(v7, v8);
    v11 = *(v9 + 48);
    if (v11(v10, 1, v65) == 1)
    {
      v12 = sub_1E65DD118();
      if (*(v12 + 16))
      {
        (*(v1[11] + 16))(v1[9], v12 + ((*(v1[11] + 80) + 32) & ~*(v1[11] + 80)), v1[10]);
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v17 = v1[10];
      v18 = v1[11];
      v20 = v1[8];
      v19 = v1[9];

      (*(v18 + 56))(v19, v13, 1, v17);
      if (v11(v20, 1, v17) != 1)
      {
        sub_1E5DFE50C(v1[8], &qword_1ED072E50, &qword_1E65ECC08);
      }
    }

    else
    {
      v14 = v1[10];
      v15 = v1[11];
      v16 = v1[9];
      (*(v15 + 32))(v16, v1[8], v14);
      (*(v15 + 56))(v16, 0, 1, v14);
    }

    v21 = v1[9];
    v22 = v1[10];
    if (v11(v21, 1, v22) != 1)
    {
      v29 = v1[13];
      v28 = v1[14];
      v31 = v1[11];
      v30 = v1[12];
      (*(v31 + 32))(v28, v21, v22);
      sub_1E65DD1C8();
      v32 = *(v31 + 16);
      v32(v29, v28, v22);
      v32(v30, v28, v22);
      v33 = sub_1E65E3B48();
      v34 = sub_1E65E6338();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v1[13];
      v38 = v1[10];
      v37 = v1[11];
      v67 = v1[7];
      v39 = v1[5];
      v62 = v1[4];
      if (v35)
      {
        v63 = v1[12];
        v61 = v32;
        v40 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v69 = v60;
        *v40 = 136315394;
        v57 = sub_1E65DCB68();
        log = v33;
        v42 = v41;
        v58 = v34;
        v43 = *(v37 + 8);
        v43(v36, v38);
        v44 = sub_1E5DFD4B0(v57, v42, &v69);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2048;
        v45 = v63;
        v46 = *(sub_1E65DCB88() + 16);

        v64 = v43;
        v43(v45, v38);
        *(v40 + 14) = v46;
        _os_log_impl(&dword_1E5DE9000, log, v58, "[Canvas] Scope section %s results:%ld", v40, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x1E694F1C0](v60, -1, -1);
        v47 = v40;
        v32 = v61;
        MEMORY[0x1E694F1C0](v47, -1, -1);
      }

      else
      {
        v48 = *(v37 + 8);
        v48(v1[12], v38);

        v64 = v48;
        v48(v36, v38);
      }

      (*(v39 + 8))(v67, v62);
      v49 = v1[14];
      v51 = v1[10];
      v50 = v1[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077050, &qword_1E65F93B0);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1E65EA670;
      v68 = *(v1 + 1);
      v32(v53 + v52, v49, v51);
      v54 = swift_task_alloc();
      *(v54 + 16) = v68;
      v66 = sub_1E5F9F838(sub_1E62549A4, v54, v53);
      swift_setDeallocating();
      v64(v53 + v52, v51);
      swift_deallocClassInstance();

      v64(v49, v51);
      v27 = v1 + 21;
      v26 = v1 + 22;
      goto LABEL_19;
    }

    (*(v1[22] + 8))(*v6, v1[21]);
    sub_1E5DFE50C(v21, &qword_1ED072E50, &qword_1E65ECC08);
  }

  else
  {
    sub_1E6254944(v0[16], MEMORY[0x1E699EEA0]);
  }

  v6 = v1 + 6;
  sub_1E65DD1C8();
  v23 = sub_1E65E3B48();
  v24 = sub_1E65E6338();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1E5DE9000, v23, v24, "[Canvas] No results", v25, 2u);
    MEMORY[0x1E694F1C0](v25, -1, -1);
  }

  v26 = v1 + 5;
  v27 = v1 + 4;
  v66 = MEMORY[0x1E69E7CC0];
LABEL_19:
  (*(*v26 + 8))(*v6, *v27);

  v55 = v1[1];

  return v55(v66);
}

uint64_t sub_1E624FD44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60ABB70;

  return sub_1E624FDDC(a1);
}

uint64_t sub_1E624FDDC(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E624FDFC, 0, 0);
}

uint64_t sub_1E624FDFC()
{
  v1 = v0[3];
  v0[2] = MEMORY[0x1E69E7CC8];
  v2 = sub_1E624D7E4(v1, v0 + 2);
  v0[5] = v2;
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v3 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[6] = v4;
  v7 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1E624FF40;

  return (v7)(28, v2);
}

uint64_t sub_1E624FF40(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1E6250154;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_1E6250078;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6250078()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 2;
  *(v3 + 24) = v2;
  v4 = sub_1E6404CB8(sub_1E62548C0, v3, v1);

  v5 = sub_1E600A848(v4);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1E6250154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62501C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchItemContext(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E62549BC(a1, v8, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1E62548DC(v8, v11, type metadata accessor for SearchItemContext);
    sub_1E624E170(a2, a3);
    return sub_1E6254944(v11, type metadata accessor for SearchItemContext);
  }

  else
  {
    sub_1E6254944(v8, type metadata accessor for ItemContext);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_1E6250380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v40 = a2;
  v37 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v38 - 8);
  v39 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v32 - v14;
  v34 = v32 - v14;
  v16 = sub_1E65DD0A8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v33 = sub_1E6014274();
  (*(v17 + 8))(v19, v16);
  v20 = sub_1E65E60A8();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  sub_1E5DFD1CC(v37, v12, &qword_1ED072828, &qword_1E65EBE20);
  v21 = v36;
  v22 = v38;
  (*(v7 + 16))(v36, v40, v38);
  v23 = a4[3];
  v32[1] = *a4;
  v32[2] = v23;
  v32[3] = a4[5];
  v37 = a4[7];
  v40 = a4[9];
  v24 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v25 = (v10 + *(v7 + 80) + v24) & ~*(v7 + 80);
  v26 = (v39 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_1E60E58D4(v12, v27 + v24);
  (*(v7 + 32))(v27 + v25, v21, v22);
  *(v27 + v26) = v33;
  v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  v29 = *(a4 + 4);
  v28[3] = *(a4 + 3);
  v28[4] = v29;
  v30 = *(a4 + 2);
  v28[1] = *(a4 + 1);
  v28[2] = v30;
  *v28 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v34, v42, v27);
}

uint64_t sub_1E6250778(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_1E65DCBE8();
  v2[5] = swift_task_alloc();
  v3 = sub_1E65DD0A8();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_1E65DD128();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62508C4, 0, 0);
}

uint64_t sub_1E62508C4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65DD078();
  (*(v2 + 8))(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 72);
    v12 = *(v0 + 16);
    (*(v5 + 32))(v4, *(v0 + 40), v6);
    v7 = sub_1E65DD118();
    v8 = swift_task_alloc();
    *(v8 + 16) = v12;
    v9 = sub_1E5F9F838(sub_1E6256264, v8, v7);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    sub_1E6254944(*(v0 + 40), MEMORY[0x1E699EEA0]);
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1E6250A8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E60C34A4;

  return sub_1E6250B24(a1);
}

uint64_t sub_1E6250B24(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_1E65D9CC8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1E65DCA68();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for ItemContext(0);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for SearchItemContext(0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = sub_1E65DCCE8();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6250D88, 0, 0);
}

uint64_t sub_1E6250D88()
{
  v1 = MEMORY[0x1E69E7CC8];
  v0[2] = MEMORY[0x1E69E7CC8];
  v0[3] = v1;
  v85 = v0 + 3;
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[5];
  v5 = *(v4 + 56);
  v86 = v4 + 56;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v5;
  v9 = (63 - v7) >> 6;
  v91 = (v2 + 8);
  v82 = (v0[11] + 8);
  v83 = (v3 + 32);
  v81 = v0[8];
  v80 = (v3 + 8);
  v93 = v0[22];
  v79 = (v2 + 40);
  v92 = v0[5];

  v94 = 0;
  v10 = 0;
  v84 = v1;
  v90 = v9;
  while (2)
  {
    v11 = v10;
    while (1)
    {
      v0[26] = v94;
      v0[27] = v1;
      if (!v8)
      {
        while (1)
        {
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            goto LABEL_49;
          }

          if (v10 >= v9)
          {
            break;
          }

          v8 = *(v86 + 8 * v10);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        v74 = v0[6];

        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
        v76 = swift_task_alloc();
        v0[28] = v76;
        *(v76 + 16) = v85;
        *(v76 + 24) = v74;
        v77 = swift_task_alloc();
        v0[29] = v77;
        *v77 = v0;
        v77[1] = sub_1E625162C;
        v35 = &unk_1E65F93E8;
        v41 = (v0 + 4);
        v31 = v75;
        v32 = v75;
        v33 = 0;
        v34 = 0;
        v36 = v76;
        v37 = v75;

        return MEMORY[0x1EEE6DD58](v41, v31, v32, v33, v34, v35, v36, v37);
      }

      v10 = v11;
LABEL_12:
      v15 = v0[24];
      v14 = v0[25];
      v16 = v0[21];
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v87 = v93[9];
      v88 = v93[2];
      v88(v14, *(v92 + 48) + v87 * (v17 | (v10 << 6)), v16);
      v18 = v93[4];
      v18(v15, v14, v16);
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v12 = v0[14];
        (*v91)(v0[24], v0[21]);
        v13 = type metadata accessor for ItemContext;
        goto LABEL_6;
      }

      v20 = v0[16];
      v19 = v0[17];
      sub_1E62548DC(v0[14], v19, type metadata accessor for SearchItemContext);
      sub_1E62548DC(v19, v20, type metadata accessor for SearchItemContext);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v12 = v0[16];
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      (*v91)(v0[24], v0[21]);
      v13 = type metadata accessor for SearchItemContext;
LABEL_6:
      sub_1E6254944(v12, v13);
      v11 = v10;
      v9 = v90;
    }

    v22 = v0[12];
    v23 = v0[10];
    (*v83)(v0[20], v0[16], v0[18]);
    sub_1E65DCCD8();
    sub_1E65DCA58();
    (*v82)(v22, v23);
    v24 = sub_1E65DCBF8();
    v26 = v25;
    if (v24 == sub_1E65DCBF8() && v26 == v27)
    {

      v28 = 29;
    }

    else
    {
      v29 = sub_1E65E6C18();

      if (v29)
      {
        v28 = 29;
      }

      else
      {
        v28 = 28;
      }
    }

    sub_1E65DCCB8();
    sub_1E65DCCA8();
    sub_1E65D9C88();
    sub_1E5E29474(v94, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = sub_1E6417574(v28);
    v39 = v84[2];
    v40 = (v31 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      __break(1u);
      goto LABEL_53;
    }

    v42 = v31;
    if (v84[3] >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_1E64257B0();
      }

LABEL_27:
      *v85 = v84;
      if ((v42 & 1) == 0)
      {
        v84[(v38 >> 6) + 8] |= 1 << v38;
        *(v84[6] + v38) = v28;
        *(v84[7] + 8 * v38) = MEMORY[0x1E69E7CC0];
        v43 = v84[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          return MEMORY[0x1EEE6DD58](v41, v31, v32, v33, v34, v35, v36, v37);
        }

        v84[2] = v45;
      }

      v46 = v84[7];
      v47 = *(v46 + 8 * v38);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + 8 * v38) = v47;
      if ((v48 & 1) == 0)
      {
        v47 = sub_1E64F610C(0, v47[2] + 1, 1, v47);
        *(v46 + 8 * v38) = v47;
      }

      v50 = v47[2];
      v49 = v47[3];
      if (v50 >= v49 >> 1)
      {
        v47 = sub_1E64F610C((v49 > 1), v50 + 1, 1, v47);
        *(v46 + 8 * v38) = v47;
      }

      v51 = v0[23];
      v95 = v0[24];
      v52 = v0[21];
      v53 = v0[9];
      v54 = v0[7];
      v47[2] = v50 + 1;
      (*(v81 + 32))(v47 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v50, v53, v54);
      v55 = sub_1E65DCCB8();
      v57 = v56;
      v88(v51, v95, v52);
      v58 = v0[2];
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v58;
      v41 = sub_1E6215038(v55, v57);
      v60 = v58[2];
      v61 = (v31 & 1) == 0;
      v44 = __OFADD__(v60, v61);
      v62 = v60 + v61;
      if (!v44)
      {
        v63 = v31;
        if (v58[3] >= v62)
        {
          if ((v59 & 1) == 0)
          {
            v73 = v41;
            sub_1E6424B84();
            v41 = v73;
          }
        }

        else
        {
          sub_1E641BE8C(v62, v59);
          v41 = sub_1E6215038(v55, v57);
          if ((v63 & 1) != (v64 & 1))
          {
            goto LABEL_49;
          }
        }

        v65 = v0[23];
        v96 = v0[24];
        v66 = v0[21];
        v89 = v0[20];
        v67 = v0[18];
        if (v63)
        {
          v68 = v41;

          v1 = v98;
          (*v79)(v98[7] + v68 * v87, v65, v66);
          (*v80)(v89, v67);
          (*v91)(v96, v66);
LABEL_44:
          v9 = v90;
          v0[2] = v1;
          v94 = sub_1E624E160;
          continue;
        }

        v69 = v55;
        v1 = v98;
        v98[(v41 >> 6) + 8] |= 1 << v41;
        v70 = (v98[6] + 16 * v41);
        *v70 = v69;
        v70[1] = v57;
        v18(v98[7] + v41 * v87, v65, v66);
        (*v80)(v89, v67);
        v41 = (*v91)(v96, v66);
        v71 = v98[2];
        v44 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (!v44)
        {
          v98[2] = v72;
          goto LABEL_44;
        }

        goto LABEL_55;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    break;
  }

  sub_1E641D4E8(v41, isUniquelyReferenced_nonNull_native);
  v41 = sub_1E6417574(v28);
  if ((v42 & 1) == (v31 & 1))
  {
    v38 = v41;
    goto LABEL_27;
  }

LABEL_49:

  return sub_1E65E6C68();
}

uint64_t sub_1E625162C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_1E62518BC;
  }

  else
  {

    v2 = sub_1E6251748;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6251748()
{
  v1 = v0[26];
  v2 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  *(v4 + 16) = v0 + 2;
  *(v4 + 24) = v2;
  v5 = sub_1E6404CB8(sub_1E6256288, v4, v3);

  v6 = sub_1E600A848(v5);

  sub_1E5E29474(v1, 0);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1E62518BC()
{
  v1 = *(v0 + 208);

  sub_1E5E29474(v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E62519C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v4[14] = v5;
  v4[15] = *(v5 + 64);
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077058, &qword_1E65F93F0);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6251B38, 0, 0);
}

uint64_t sub_1E6251B38()
{
  v34 = (v0 + 16);
  v1 = **(v0 + 96);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v37 = *(v0 + 112);
  v5 = -1;
  v6 = -1 << *(**(v0 + 96) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v39 = **(v0 + 96);

  v12 = 0;
  v38 = v3;
  v35 = v0;
  v36 = v8;
  while (v7)
  {
LABEL_10:
    v15 = *(v0 + 144);
    v40 = v15;
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v18 = *(v0 + 104);
    v19 = __clz(__rbit64(v7)) | (v12 << 6);
    v41 = *(*(v39 + 48) + v19);
    v42 = *(*(v39 + 56) + 8 * v19);
    v43 = *(v0 + 136);
    v20 = sub_1E65E60A8();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v15, 1, 1, v20);
    sub_1E62549BC(v18, v17, type metadata accessor for AppComposer);
    v22 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    sub_1E62548DC(v17, v23 + v22, type metadata accessor for AppComposer);
    *(v23 + v22 + v16) = v41;
    *(v23 + ((v22 + v16) & 0xFFFFFFFFFFFFFFF8) + 8) = v42;
    sub_1E5DFD1CC(v40, v43, &unk_1ED0735B0, &qword_1E65EA000);
    v24 = (*(v21 + 48))(v43, 1, v20);

    v25 = *(v35 + 136);
    if (v24 == 1)
    {
      sub_1E5DFE50C(*(v35 + 136), &unk_1ED0735B0, &qword_1E65EA000);
    }

    else
    {
      sub_1E65E6098();
      (*(v21 + 8))(v25, v20);
    }

    v0 = v35;
    if (*(v23 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_1E65E5FC8();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = **(v35 + 88);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
    v30 = (v28 | v26);
    if (v28 | v26)
    {
      v30 = v34;
      *v34 = 0;
      v34[1] = 0;
      *(v35 + 32) = v26;
      *(v35 + 40) = v28;
    }

    v13 = *(v35 + 144);
    v7 &= v7 - 1;
    *(v35 + 48) = 1;
    *(v35 + 56) = v30;
    *(v35 + 64) = v29;
    swift_task_create();

    v9 = sub_1E5DFE50C(v13, &unk_1ED0735B0, &qword_1E65EA000);
    v3 = v38;
    v8 = v36;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8C8](v9, v10, v11);
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v12;
    if (v7)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E6168();
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  v31 = sub_1E5FED46C(&qword_1ED077060, &qword_1ED077058, &qword_1E65F93F0, MEMORY[0x1E69E8718]);
  v32 = swift_task_alloc();
  *(v0 + 184) = v32;
  *v32 = v0;
  v32[1] = sub_1E6251FF8;
  v10 = *(v0 + 152);
  v9 = v0 + 72;
  v11 = v31;

  return MEMORY[0x1EEE6D8C8](v9, v10, v11);
}

uint64_t sub_1E6251FF8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    (*(v2[20] + 8))(v2[21], v2[19]);

    v3 = sub_1E62523A4;
  }

  else
  {
    v3 = sub_1E625212C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E625212C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[9];
  v5 = v3[22];
  if (v4)
  {
    v6 = *(v4 + 16);
    v7 = *(v5 + 16);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v3[22];
      if (isUniquelyReferenced_nonNull_native && v8 <= v10[3] >> 1)
      {
        if (*(v4 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v7 <= v8)
        {
          v18 = v7 + v6;
        }

        else
        {
          v18 = v7;
        }

        v10 = sub_1E64F66F0(isUniquelyReferenced_nonNull_native, v18, 1, v3[22]);
        if (*(v4 + 16))
        {
LABEL_6:
          v11 = (v10[3] >> 1) - v10[2];
          a1 = sub_1E65D8258();
          if (v11 >= v6)
          {
            swift_arrayInitWithCopy();

            if (!v6)
            {
              goto LABEL_18;
            }

            v12 = v10[2];
            v13 = __OFADD__(v12, v6);
            v14 = v12 + v6;
            if (!v13)
            {
              v10[2] = v14;
              goto LABEL_18;
            }

LABEL_24:
            __break(1u);
            return MEMORY[0x1EEE6D8C8](a1, a2, a3);
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      if (!v6)
      {
LABEL_18:
        v3[22] = v10;
        v19 = sub_1E5FED46C(&qword_1ED077060, &qword_1ED077058, &qword_1E65F93F0, MEMORY[0x1E69E8718]);
        v20 = swift_task_alloc();
        v3[23] = v20;
        *v20 = v3;
        v20[1] = sub_1E6251FF8;
        a2 = v3[19];
        a1 = v3 + 9;
        a3 = v19;

        return MEMORY[0x1EEE6D8C8](a1, a2, a3);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v15 = v3[10];
  (*(v3[20] + 8))(v3[21], v3[19], a3);
  *v15 = v5;

  v16 = v3[1];

  return v16();
}

uint64_t sub_1E62523A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6252430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  *(v6 + 72) = a5;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6252458, 0, 0);
}

uint64_t sub_1E6252458()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 40) = v2;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1E6252578;
  v4 = *(v0 + 32);
  v5 = *(v0 + 72);

  return v7(v5, v4);
}

uint64_t sub_1E6252578(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1E5F9E470;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_1E6232F90;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E62526A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v93 = a2;
  v94 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v69 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = &v69 - v10;
  v75 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v75);
  v85 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v84 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v69 - v16;
  v81 = sub_1E65D7848();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1E65DCA68();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760D8, &qword_1E65F4990);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v80 = &v69 - v21;
  v22 = sub_1E65DCF98();
  v87 = *(v22 - 8);
  v88 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760E0, &qword_1E65F4998);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v69 - v25;
  v27 = sub_1E65DCCE8();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v89 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v90 = *(v30 - 8);
  v91 = v30;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v92 = &v69 - v34;
  v83 = a1;
  v35 = sub_1E65D8078();
  v37 = *v93;
  if (*(*v93 + 16))
  {
    v69 = v8;
    v93 = v4;
    v38 = sub_1E6215038(v35, v36);
    v40 = v39;

    if (v40)
    {
      v41 = v91;
      v42 = *(v37 + 56) + *(v90 + 72) * v38;
      v43 = v90;
      (*(v90 + 16))(v33, v42, v91);
      v44 = v92;
      (*(v43 + 32))(v92, v33, v41);
      sub_1E628C28C(v26);
      v45 = v27;
      if ((*(v28 + 48))(v26, 1, v27) == 1)
      {
        (*(v43 + 8))(v44, v41);
        v46 = &qword_1ED0760E0;
        v47 = &qword_1E65F4998;
        v48 = v26;
      }

      else
      {
        (*(v28 + 32))(v89, v26, v27);
        sub_1E65DCCD8();
        v50 = v82;
        swift_getKeyPath();
        v51 = v77;
        sub_1E65E4EC8();

        v52 = v50 + *(type metadata accessor for AppComposer(0) + 20);
        v53 = type metadata accessor for AppEnvironment(0);
        v54 = v80;
        sub_1E645B850(v19, v51, (v52 + *(v53 + 136)), v80);
        (*(v79 + 8))(v51, v81);
        v55 = v19;
        v56 = v54;
        (*(v76 + 8))(v55, v78);
        v57 = v87;
        v58 = v54;
        v59 = v88;
        if ((*(v87 + 48))(v58, 1, v88) != 1)
        {
          v63 = *(v57 + 32);
          v82 = v28;
          v64 = v73;
          v63(v73, v56, v59);
          swift_getKeyPath();
          v65 = v70;
          sub_1E65E4EC8();

          v66 = *(v52 + 8);
          v81 = v45;
          v67 = v74;
          sub_1E6052A2C(v65, v66, v74);
          (*(v71 + 8))(v65, v72);
          v68 = v91;
          sub_1E65E04E8();
          sub_1E5DFD1CC(v67, v84, &qword_1ED072610, &qword_1E65EB930);
          sub_1E62E2980(v86);
          sub_1E60144DC(v69);
          v83 = type metadata accessor for ActionButtonDescriptor(0);
          v80 = type metadata accessor for ArtworkDescriptor(0);
          v79 = type metadata accessor for ContextMenu(0);
          v78 = type metadata accessor for ItemMetrics(0);
          v77 = type metadata accessor for ViewDescriptor(0);
          v76 = sub_1E6254878(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
          sub_1E6254878(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
          sub_1E6254878(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
          sub_1E6254878(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E6254878(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E6254878(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
          sub_1E6254878(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
          sub_1E6254878(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
          v60 = v94;
          sub_1E65E0488();
          sub_1E5DFE50C(v67, &qword_1ED072610, &qword_1E65EB930);
          (*(v87 + 8))(v64, v88);
          (*(v82 + 8))(v89, v81);
          (*(v90 + 8))(v92, v68);
          v49 = 0;
          goto LABEL_11;
        }

        (*(v28 + 8))(v89, v45);
        (*(v90 + 8))(v92, v91);
        v46 = &qword_1ED0760D8;
        v47 = &qword_1E65F4990;
        v48 = v56;
      }

      sub_1E5DFE50C(v48, v46, v47);
    }

    v49 = 1;
  }

  else
  {

    v49 = 1;
  }

  v60 = v94;
LABEL_11:
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v61 - 8) + 56))(v60, v49, 1, v61);
}

uint64_t sub_1E625325C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[6] = type metadata accessor for RouteResource(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E62532F0, 0, 0);
}

uint64_t sub_1E62532F0()
{
  sub_1E62549BC(*(v0 + 32), *(v0 + 56), type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 23)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 40);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
    v4 = *(v3 + 48);
    sub_1E61B73EC(*(v1 + *(v3 + 64)), *(v1 + *(v3 + 64) + 8));
    v5 = sub_1E65E5528();
    (*(*(v5 - 8) + 8))(v1 + v4, v5);
    v6 = sub_1E65E57D8();
    (*(*(v6 - 8) + 8))(v1, v6);
    v7 = v2[3];
    v8 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v7);
    *(v0 + 16) = 2;
    *(v0 + 24) = -64;
    *(v0 + 26) = 0;
    v17 = (*(v8 + 72) + **(v8 + 72));
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_1E6253728;
    v10 = *(v0 + 32);

    return v17(v10, v0 + 16, 1, v0 + 26, v7, v8);
  }

  else
  {
    v12 = *(v0 + 40);
    sub_1E6254944(*(v0 + 56), type metadata accessor for RouteResource);
    v13 = v12[3];
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_1E600F5B0((v0 + 25));
    v15 = swift_task_alloc();
    *(v0 + 64) = v15;
    *v15 = v0;
    v15[1] = sub_1E62535EC;
    v16 = *(v0 + 32);

    return RoutingContext.appendDestination(_:priority:)(v16, (v0 + 25), v13, v14);
  }
}

uint64_t sub_1E62535EC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6253864, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E6253728()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E62538C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E6253864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E62538C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E625392C(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E625325C(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1E6253A30(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = v55 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v55 - v13;
  v14 = type metadata accessor for AppComposer(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8);
  v64 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v81 = v55 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v78 = v55 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v55 - v23;
  v60 = v16;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v55 - v25;
  v86[3] = a4;
  v86[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v86);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  v28 = a3;
  sub_1E62549BC(a3, v26, type metadata accessor for AppComposer);
  sub_1E5DF650C(v86, &v85);
  v29 = *(v15 + 80);
  v30 = (v29 + 16) & ~v29;
  v77 = v30 + v16;
  v31 = (v30 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v80 = v32;
  sub_1E62548DC(v26, v32 + v30, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v85, v32 + v31);
  sub_1E62549BC(v28, v24, type metadata accessor for AppComposer);
  v55[12] = a2[3];
  v55[13] = a2[5];
  v55[14] = a2[7];
  v55[15] = a2[9];
  v33 = swift_allocObject();
  v63 = v33;
  sub_1E62548DC(v24, v33 + v30, type metadata accessor for AppComposer);
  v34 = (v33 + v31);
  v35 = *(a2 + 3);
  v34[2] = *(a2 + 2);
  v34[3] = v35;
  v34[4] = *(a2 + 4);
  v36 = *(a2 + 1);
  *v34 = *a2;
  v34[1] = v36;
  v37 = v78;
  v58 = type metadata accessor for AppComposer;
  sub_1E62549BC(v28, v78, type metadata accessor for AppComposer);
  v57 = v29;
  v79 = swift_allocObject();
  v59 = type metadata accessor for AppComposer;
  sub_1E62548DC(v37, v79 + v30, type metadata accessor for AppComposer);
  v56 = v28;
  v38 = v81;
  sub_1E62549BC(v28, v81, type metadata accessor for AppComposer);
  v77 = swift_allocObject();
  sub_1E62548DC(v38, v77 + v30, type metadata accessor for AppComposer);
  v62 = *v28;
  v81 = type metadata accessor for ActionButtonDescriptor(0);
  v78 = type metadata accessor for ArtworkDescriptor(0);
  v76 = type metadata accessor for ContextMenu(0);
  v75 = type metadata accessor for ItemContext(0);
  v74 = type metadata accessor for ItemMetrics(0);
  v73 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v55[11] = type metadata accessor for SectionMetrics(0);
  v72 = type metadata accessor for ViewDescriptor(0);
  v55[10] = sub_1E6254878(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v71 = sub_1E6254878(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v55[9] = sub_1E6254878(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v55[8] = sub_1E6254878(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v55[7] = sub_1E6254878(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v55[6] = sub_1E6254878(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v55[5] = sub_1E6254878(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v55[4] = sub_1E6254878(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v55[3] = sub_1E6254878(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  v55[2] = sub_1E5DF11E0();
  v55[1] = sub_1E5DF1338();
  sub_1E6254878(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v40 = sub_1E65DC168();
  v83 = v39;
  v84 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70, MEMORY[0x1E699D718]);
  v82 = v40;
  v41 = v65;
  sub_1E65DC248();
  v42 = v64;
  sub_1E62549BC(v56, v64, v58);
  v43 = (v57 + 32) & ~v57;
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  strcpy((v45 + 16), "Search Results");
  *(v45 + 31) = -18;
  sub_1E62548DC(v42, v45 + v43, v59);
  v46 = (v45 + v44);
  *v46 = sub_1E5F8AA74;
  v46[1] = 0;
  v47 = swift_allocObject();
  strcpy((v47 + 16), "Search Results");
  *(v47 + 31) = -18;
  type metadata accessor for AppFeature(0);
  sub_1E6254878(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98, MEMORY[0x1E699D758]);
  v48 = v67;
  v49 = v66;
  sub_1E65E4DE8();
  v50 = swift_allocObject();
  v51 = v63;
  *(v50 + 16) = sub_1E625477C;
  *(v50 + 24) = v51;

  sub_1E65E4CC8();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1E5FE9CE8;
  *(v52 + 24) = v50;

  v53 = sub_1E65E4F08();

  (*(v69 + 8))(v48, v70);
  (*(v68 + 8))(v41, v49);
  __swift_destroy_boxed_opaque_existential_1(v86);
  return v53;
}

uint64_t sub_1E625479C(uint64_t a1)
{
  type metadata accessor for AppComposer(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E624FD44(a1);
}

uint64_t sub_1E6254878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E62548DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6254944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E62549BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6254AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return sub_1E6250380(a1, a2, v4 + v10, (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t sub_1E6254B9C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E6250778(a1, v1 + v5);
}

uint64_t sub_1E6254C74(uint64_t a1)
{
  type metadata accessor for AppComposer(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5FEE4D4;

  return sub_1E6250A8C(a1);
}

uint64_t objectdestroy_20Tm_0()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E6255A3C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62519C4(a1, a2, v7, v6);
}

uint64_t sub_1E6255AF0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v10 = *(v1 + v6);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E6252430(a1, v7, v8, v1 + v5, v10, v9);
}

uint64_t sub_1E6255C20@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for AppComposer(0);
  return sub_1E6050418(v4, *(v3 + *(v5 + 20) + 8), a1);
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        goto LABEL_16;
      }

LABEL_12:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      goto LABEL_15;
    }

    type metadata accessor for ItemContext(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 6)
      {
        if (v10 == 5)
        {
          v8 = sub_1E65E0248();
        }

        else
        {
          v8 = sub_1E65E3498();
        }

        goto LABEL_15;
      }

      switch(v10)
      {
        case 7:
          type metadata accessor for ProgramDetailItemContext(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v8 = sub_1E65E3578();
            break;
          }

          goto LABEL_7;
        case 8:
          type metadata accessor for SearchItemContext(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v8 = sub_1E65DCCE8();
          }

          else
          {
            v8 = sub_1E65DCF98();
          }

          break;
        case 9:
          v8 = sub_1E65E26E8();
          break;
        default:
          goto LABEL_16;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v10 != 2)
        {
          if (v10 == 3)
          {
            v8 = sub_1E65DC508();
            goto LABEL_15;
          }

          type metadata accessor for LibraryItemContext(0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v8 = sub_1E65DF3B8();
            goto LABEL_15;
          }

LABEL_7:

          goto LABEL_16;
        }

LABEL_39:
        sub_1E5E483B8(*(v0 + v2), *(v0 + v2 + 8));
        goto LABEL_16;
      }

      if (!v10)
      {
        goto LABEL_39;
      }

      if (v10 != 1)
      {
        goto LABEL_16;
      }

      type metadata accessor for BrowseItemContext(0);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 > 3)
      {
        switch(v11)
        {
          case 4:
            v8 = sub_1E65DFDA8();
            break;
          case 5:
            v8 = sub_1E65DFC88();
            break;
          case 6:
            v8 = sub_1E65E0128();
            break;
          default:
            goto LABEL_16;
        }
      }

      else
      {
        if (!v11)
        {
          v8 = sub_1E65DFF38();
          goto LABEL_15;
        }

        if (v11 == 1)
        {
          goto LABEL_7;
        }

        if (v11 != 2)
        {
          goto LABEL_16;
        }

        v8 = sub_1E65DF978();
      }
    }

LABEL_15:
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
LABEL_14:
    v8 = sub_1E65D7968();
    goto LABEL_15;
  }

LABEL_16:
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E62560B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFA78C;

  return sub_1E612C8FC(a1, v12, v13, v1 + v6, v1 + v9, v14, v1 + v11);
}

uint64_t sub_1E62562A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077068, &qword_1E65F9458);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = v23 - v3;
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - v9;
  v11 = sub_1E65DB1E8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1E65DB188();
  v13 = *(v12 - 8);
  v24 = v12;
  v25 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *a1;
  sub_1E5E1DEAC(a1, v10);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1E5E1FA80(v10, v17 + v16);
  type metadata accessor for AppEnvironment(0);
  AccountService.makeAccountChangedStream.getter();
  sub_1E5E1DEAC(a1, v8);
  v18 = swift_allocObject();
  sub_1E5E1FA80(v8, v18 + v16);
  sub_1E65DB1D8();
  v29[3] = sub_1E65DB1A8();
  v29[4] = MEMORY[0x1E699D0C8];
  __swift_allocate_boxed_opaque_existential_1(v29);
  sub_1E65DB198();
  sub_1E65DB178();
  type metadata accessor for AppFeature(0);
  sub_1E625714C(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E625714C(&qword_1ED077070, MEMORY[0x1E699D0C0], MEMORY[0x1E699D0B8]);
  v19 = v26;
  v20 = v24;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v21 = sub_1E65E4F08();
  (*(v27 + 8))(v19, v28);
  (*(v25 + 8))(v15, v20);
  return v21;
}

uint64_t sub_1E625670C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AccountService.fetchPrimaryAccount.getter();
  *(v0 + 24) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E6256820;

  return v5();
}

uint64_t sub_1E6256820(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1E5F9D2C8;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_1E6256948;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6256948()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1E62569B0()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E62566EC(v0 + v3);
}

uint64_t sub_1E6256A7C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6256B48, 0, 0);
}

uint64_t sub_1E6256B48()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[9] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1E6256C64;
  v4 = v0[8];

  return v6(v4);
}

uint64_t sub_1E6256C64()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6256D7C, 0, 0);
}

uint64_t sub_1E6256D7C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076CF8, &qword_1E65F7F20);
  v5 = sub_1E6257194();
  v0[2] = v3;
  v0[3] = v5;
  v4[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_1E65E6188();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6256E74(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6256A7C(a1, v1 + v5);
}

uint64_t sub_1E6256F50(uint64_t a1)
{
  v2 = sub_1E65DB1C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for AppState(0) + 196);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  (*(v3 + 16))(v5, v6 + *(v7 + 28), v2);
  return sub_1E65DB168();
}

uint64_t sub_1E6257050(uint64_t a1)
{
  v2 = sub_1E65DB1C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DB158();
  v6 = a1 + *(type metadata accessor for AppState(0) + 196);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  return (*(v3 + 40))(v6 + *(v7 + 28), v5, v2);
}

uint64_t sub_1E625714C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E6257194()
{
  result = qword_1EE2D47A8;
  if (!qword_1EE2D47A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0721B8, &qword_1E65EA990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D47A8);
  }

  return result;
}

void sub_1E62571F8()
{
  if (*(v0 + qword_1ED078668))
  {
    swift_getObjectType();
    sub_1E6257A1C();
    swift_unknownObjectRetain();
    sub_1E65E51A8();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E625729C()
{
  v1 = v0;
  v2 = sub_1E65E4F98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E61259CC();
  *v5 = sub_1E65E63C8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1E65E4FC8();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = *(v1 + qword_1ED078660);
    if (v8 >= 2)
    {
      v10 = v8;
      v9 = sub_1E65E5408();
      sub_1E6257A80(v8);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E62573E8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E65E4F98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E61259CC();
  *v6 = sub_1E65E63C8();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1E65E4FC8();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = *(v2 + qword_1ED078660);
    if (v8 >= 2)
    {
      v9 = v8;
      sub_1E65E5428();
      sub_1E6257A80(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E625752C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E65E4F98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E61259CC();
  *v6 = sub_1E65E63C8();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1E65E4FC8();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = *(v2 + qword_1ED078660);
    if (v8 >= 2)
    {
      v9 = v8;
      sub_1E65E53E8();
      sub_1E6257A80(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E6257670(void (*a1)(void))
{
  v3 = v1;
  v4 = sub_1E65E4F98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E61259CC();
  *v7 = sub_1E65E63C8();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v8 = sub_1E65E4FC8();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = *(v3 + qword_1ED078660);
    if (v9 >= 2)
    {
      v10 = v9;
      a1();
      sub_1E6257A80(v9);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E62577B4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E65E4F98();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E61259CC();
  *v6 = sub_1E65E63C8();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v7 = sub_1E65E4FC8();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = *(v2 + qword_1ED078660);
    if (v9 >= 2)
    {
      v11 = v9;
      v10 = sub_1E65E53F8();
      sub_1E6257A80(v9);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6257908(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1ED078668);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();

  return swift_unknownObjectRetain();
}

unint64_t sub_1E6257A1C()
{
  result = qword_1ED077078;
  if (!qword_1ED077078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077080, qword_1E65F94F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077078);
  }

  return result;
}

void sub_1E6257A80(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1E6257A90@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v109) = a2;
  v108 = a1;
  v115 = a3;
  v4 = sub_1E65D7268();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1E65D72D8();
  v112 = *(v114 - 8);
  v7 = MEMORY[0x1EEE9AC00](v114);
  v100 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v97 - v9;
  v10 = sub_1E65E1518();
  v110 = *(v10 - 8);
  v111 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v107 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v107);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ArtworkDescriptor(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077088, &qword_1E65F9540);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v97 - v20;
  v22 = sub_1E65E14B8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v116 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v3;
  sub_1E65E1438();
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1E62587E8(v21);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
    return (*(*(v25 - 8) + 56))(v115, 1, 1, v25);
  }

  v27 = v115;
  v98 = v23;
  (*(v23 + 32))(v116, v21, v22);
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E65E14A8();
  sub_1E65E1498();
  sub_1E65DB248();
  v29 = v109;
  sub_1E60E4340(2, v109, &v15[v28]);
  swift_storeEnumTagMultiPayload();
  v30 = sub_1E65E14C8();
  v31 = sub_1E65E4B48();
  v32 = 4.0;
  if (v31)
  {
    v32 = 8.0;
  }

  v33 = 16.0;
  if (v31)
  {
    v33 = 18.0;
  }

  if (v30)
  {
    v34 = v33;
  }

  else
  {
    v34 = v32;
  }

  if (v30)
  {
    v35 = 12.0;
  }

  else
  {
    v35 = 8.0;
  }

  sub_1E617BA04(v15, v18);
  *&v18[v16[5]] = MEMORY[0x1E69E7CD0];
  v36 = &v18[v16[6]];
  *v36 = 0;
  *(v36 + 1) = v34;
  *(v36 + 2) = v34;
  *(v36 + 3) = v35;
  v18[v16[7]] = 1;
  v37 = &v18[v16[8]];
  *v37 = 0;
  *(v37 + 1) = 0;
  sub_1E65E14F8();
  v38 = v29;
  v39 = v18;
  v99 = v22;
  if (v38 < 2)
  {
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077090, &qword_1E65F9548);
    v41 = v40[16];
    v42 = v40[20];
    v43 = v40[24];
    v44 = v40[28];
    v45 = v40[32];
    v46 = v40[36];
    v47 = v27 + v40[40];
    sub_1E60169E8(v39, v27 + v40[12]);
    v48 = *MEMORY[0x1E699DA90];
    v49 = sub_1E65E0988();
    (*(*(v49 - 8) + 104))(v27 + v41, v48, v49);
    v109 = v39;
    v50 = *(v112 + 56);
    v51 = v114;
    v50(v27 + v42, 1, 1, v114);
    v50(v27 + v43, 1, 1, v51);
    v50(v27 + v44, 1, 1, v51);
    v52 = type metadata accessor for ActionButtonDescriptor(0);
    v53 = *(*(v52 - 8) + 56);
    v53(v27 + v45, 1, 1, v52);
    v53(v27 + v46, 1, 1, v52);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B10, &unk_1E6604120) + 48);
    v55 = sub_1E65E1458();
    (*(*(v55 - 8) + 16))(v47, v113, v55);
    v57 = v110;
    v56 = v111;
    v58 = v117;
    (*(v110 + 16))(v47 + v54, v117, v111);
    v59 = type metadata accessor for ViewDescriptor(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v59 - 8) + 56))(v47, 0, 1, v59);
    sub_1E65E09F8();
    (*(v57 + 8))(v58, v56);
    v60 = v109;
LABEL_27:
    sub_1E61BF8AC(v60);
    (*(v98 + 8))(v116, v99);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
    swift_storeEnumTagMultiPayload();
    return (*(*(v96 - 8) + 56))(v27, 0, 1, v96);
  }

  if (v38 == 3)
  {
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077090, &qword_1E65F9548);
    v62 = v61[16];
    v63 = v61[20];
    sub_1E60169E8(v39, v27 + v61[12]);
    v64 = *MEMORY[0x1E699DAA0];
    v65 = sub_1E65E0988();
    (*(*(v65 - 8) + 104))(v27 + v62, v64, v65);
    sub_1E65E1428();
    v66 = MEMORY[0x1E69686E8];
    v67 = v101;
    if (v68)
    {
      sub_1E65D7338();
      sub_1E65D72E8();
      v69 = v67;
      if (qword_1ED071AC8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v103, qword_1ED0965D0);
      v70 = *v66;
      v72 = v104;
      v71 = v105;
      v73 = v106;
      (*(v105 + 104))(v104, v70, v106);
      sub_1E6258850();
      v74 = v114;
      sub_1E65D73C8();
      (*(v71 + 8))(v72, v73);
      v75 = v112;
      (*(v112 + 8))(v69, v74);
      v76 = 0;
    }

    else
    {
      v76 = 1;
      v74 = v114;
      v75 = v112;
    }

    v77 = 1;
    v108 = *(v75 + 56);
    v108(v27 + v63, v76, 1, v74);
    v78 = v61[24];
    sub_1E65E1448();
    if (v79)
    {
      v109 = v39;
      sub_1E65D7338();
      v80 = v100;
      sub_1E65D72E8();
      if (qword_1ED071AC0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v103, qword_1ED0965B8);
      v82 = v104;
      v81 = v105;
      v83 = v106;
      (*(v105 + 104))(v104, *MEMORY[0x1E69686E8], v106);
      sub_1E6258850();
      v84 = v114;
      sub_1E65D73C8();
      (*(v81 + 8))(v82, v83);
      (*(v112 + 8))(v80, v84);
      v77 = 0;
      v39 = v109;
    }

    else
    {
      v84 = v114;
    }

    v85 = v77;
    v86 = v108;
    v108(v27 + v78, v85, 1, v84);
    v87 = v61[28];
    v88 = v27 + v61[32];
    v89 = v61[36];
    v114 = v61[40];
    v86(v27 + v87, 1, 1, v84);
    v90 = type metadata accessor for ActionButtonDescriptor(0);
    v92 = v110;
    v91 = v111;
    v93 = v117;
    (*(v110 + 16))(v88 + *(v90 + 20), v117, v111);
    type metadata accessor for ActionButtonDescriptor.Kind(0);
    swift_storeEnumTagMultiPayload();
    sub_1E65D76E8();
    v94 = *(*(v90 - 8) + 56);
    v94(v88, 0, 1, v90);
    v94(v27 + v89, 1, 1, v90);
    v95 = type metadata accessor for ViewDescriptor(0);
    (*(*(v95 - 8) + 56))(v27 + v114, 1, 1, v95);
    sub_1E65E09F8();
    (*(v92 + 8))(v93, v91);
    v60 = v39;
    goto LABEL_27;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E62587E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077088, &qword_1E65F9540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6258850()
{
  result = qword_1EE2D7280;
  if (!qword_1EE2D7280)
  {
    sub_1E65D72D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7280);
  }

  return result;
}

uint64_t sub_1E62588A8@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v94 = &v89 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = &v89 - v5;
  v113 = sub_1E65DAA88();
  v6 = *(v113 - 8);
  v7 = MEMORY[0x1EEE9AC00](v113 - 8);
  v112 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v89 - v9;
  v11 = sub_1E65D9388();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v102 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65D76F8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v100 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1E65DA878();
  v99 = *(v101 - 8);
  v15 = MEMORY[0x1EEE9AC00](v101);
  v97 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v89 - v17;
  v92 = sub_1E65E2CF8();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v111 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v115 = &v89 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v114 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v120 = (&v89 - v26);
  v93 = v1;
  v27 = sub_1E65E2048();
  v28 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 64);
  v32 = (v29 + 63) >> 6;
  v105 = (v6 + 16);
  v104 = v6 + 8;
  v110 = v6;
  v103 = v6 + 32;
  v116 = v27;

  v34 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  v106 = v32;
  v107 = v28;
  v108 = v19;
  for (i = v10; v31; v32 = v106)
  {
    v119 = v35;
LABEL_9:
    v37 = __clz(__rbit64(v31)) | (v34 << 6);
    v38 = *(v116 + 56);
    v39 = (*(v116 + 48) + 16 * v37);
    v41 = *v39;
    v40 = v39[1];
    v42 = sub_1E65E2A38();
    v43 = *(v42 - 8);
    v44 = v38 + *(v43 + 72) * v37;
    v45 = v19;
    v46 = v120;
    (*(v43 + 16))(v120 + *(v19 + 48), v44, v42);
    *v46 = v41;
    v46[1] = v40;
    v47 = v114;
    sub_1E6259400(v46, v114);

    v48 = *(v45 + 48);
    v49 = sub_1E65E2A18();
    v117 = v50;
    v118 = v49;
    v51 = *(v43 + 8);
    v51(v47 + v48, v42);
    v52 = v46;
    v53 = v45;
    v54 = v51;
    v55 = v115;
    sub_1E6259400(v52, v115);

    v56 = *(v53 + 48);
    v57 = sub_1E65E2A28();
    v51(v55 + v56, v42);
    v58 = *(v57 + 16);
    if (v58)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
      v59 = swift_allocObject();
      v60 = _swift_stdlib_malloc_size(v59);
      v61 = v60 - 32;
      if (v60 < 32)
      {
        v61 = v60 - 17;
      }

      v59[2] = v58;
      v59[3] = 2 * (v61 >> 4);
      v62 = sub_1E6259778(&v121, v59 + 4, v58, v57);
      result = sub_1E5E24EE4(v121);
      if (v62 != v58)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    v63 = v111;
    sub_1E6259400(v120, v111);

    v64 = *(v53 + 48);
    v65 = sub_1E65E29F8();
    v54(v63 + v64, v42);
    v66 = *(v65 + 16);
    if (v66)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
      v67 = swift_allocObject();
      v68 = _swift_stdlib_malloc_size(v67);
      v69 = v68 - 32;
      if (v68 < 32)
      {
        v69 = v68 - 17;
      }

      v67[2] = v66;
      v67[3] = 2 * (v69 >> 4);
      v70 = sub_1E6259778(&v121, v67 + 4, v66, v65);
      result = sub_1E5E24EE4(v121);
      v72 = v112;
      v71 = v113;
      if (v70 != v66)
      {
        goto LABEL_33;
      }
    }

    else
    {

      v72 = v112;
      v71 = v113;
    }

    v73 = i;
    sub_1E65DAA48();
    (*v105)(v72, v73, v71);
    v35 = v119;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1E64F6AF0(0, v35[2] + 1, 1, v35);
    }

    v75 = v35[2];
    v74 = v35[3];
    if (v75 >= v74 >> 1)
    {
      v35 = sub_1E64F6AF0((v74 > 1), v75 + 1, 1, v35);
    }

    v31 &= v31 - 1;
    v76 = v110;
    (*(v110 + 8))(v73, v71);
    sub_1E5DFE50C(v120, &qword_1ED076358, &qword_1E65F9EA0);
    v35[2] = v75 + 1;
    result = (*(v76 + 32))(v35 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v75, v72, v71);
    v28 = v107;
    v19 = v108;
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v32)
    {

      v77 = v90;
      sub_1E65E2078();
      v120 = sub_1E65E2CC8();
      v78 = *(v91 + 8);
      v79 = v92;
      v78(v77, v92);
      sub_1E65E2098();
      sub_1E65E2078();
      WorkoutPlanSchedule.weekdays.getter();
      v78(v77, v79);
      v80 = v98;
      v81 = sub_1E65DA848();
      MEMORY[0x1E6949A30](v81);
      v120 = sub_1E65E2058();
      (*(v99 + 16))(v97, v80, v101);
      sub_1E65E2078();
      sub_1E61DB264(v102);
      v78(v77, v79);
      sub_1E65E2088();
      v82 = v94;
      sub_1E65E2068();
      v83 = sub_1E65E1FC8();
      v84 = *(v83 - 8);
      if ((*(v84 + 48))(v82, 1, v83) == 1)
      {
        sub_1E5DFE50C(v82, &unk_1ED077750, &unk_1E66011C0);
        v85 = 1;
        v86 = v95;
      }

      else
      {
        v87 = v82;
        v86 = v95;
        sub_1E64C6E80(v95);
        (*(v84 + 8))(v87, v83);
        v85 = 0;
      }

      v88 = sub_1E65DA7C8();
      (*(*(v88 - 8) + 56))(v86, v85, 1, v88);
      sub_1E65D9BC8();
      return (*(v99 + 8))(v98, v101);
    }

    v31 = *(v28 + 8 * v36);
    ++v34;
    if (v31)
    {
      v119 = v35;
      v34 = v36;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1E6259400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076358, &qword_1E65F9EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E62594D0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1E6259778(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1E62598D0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1E62599D0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
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

void sub_1E6259ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a2, a3);
  v4 = v3;
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E65E6788();
    sub_1E5E0DFF4();
    sub_1E6259CD8();
    sub_1E65E6268();
    v6 = v23;
    v5 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v3 + 56);

    v8 = 0;
    v6 = v4;
  }

  v20 = v7;
  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        [v18 selector];
        if (sub_1E65D7978())
        {
          break;
        }

        v8 = v16;
        v9 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v19 = sub_1E65E67F8();
        if (!v19)
        {
          break;
        }

        v21 = v19;
        sub_1E5E0DFF4();
        swift_dynamicCast();
        v18 = v22;
        v16 = v8;
        v17 = v9;
      }

      while (v22);
    }

LABEL_19:
    sub_1E5E24EE4(v6);
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_19;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1E6259CD8()
{
  result = qword_1ED077098;
  if (!qword_1ED077098)
  {
    sub_1E5E0DFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077098);
  }

  return result;
}

uint64_t sub_1E6259D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x1E694C310](v4, a3, &type metadata for JetSceneSessionModifier);
}

void sub_1E6259D94()
{
  v1 = (*v0)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770A0, &qword_1E65F95F8);
  sub_1E6259E20();
  sub_1E65E4748();
}

unint64_t sub_1E6259E20()
{
  result = qword_1EE2D4C40;
  if (!qword_1EE2D4C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0770A0, &qword_1E65F95F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C40);
  }

  return result;
}

uint64_t sub_1E6259E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a1;
  v129 = a2;
  v113 = a3;
  v3 = sub_1E65D76F8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v112 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076460, &qword_1E65F56B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v111 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v109 = &v96 - v8;
  v116 = sub_1E65D7268();
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v105 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1E65D7848();
  v127 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1E65D72D8();
  v126 = *(v121 - 8);
  v11 = MEMORY[0x1EEE9AC00](v121);
  v104 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v96 - v13;
  v14 = sub_1E65E0748();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v124 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v96 - v17;
  v18 = sub_1E65D8BB8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = (&v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v115 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for ArtworkDescriptor(0);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1E65D9CC8();
  MEMORY[0x1EEE9AC00](v110);
  v117 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v96 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v96 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v96 - v32;
  v34 = sub_1E65D9AC8();
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEE88(v33);
  sub_1E5DFE50C(v26, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v28 + 8))(v30, v27);
  v38 = *(v35 + 48);
  v39 = v38(v33, 1, v34);
  v108 = v34;
  if (v39 == 1)
  {
    v40 = v127;
    MEMORY[0x1E6941490]();
    if (v38(v33, 1, v34) != 1)
    {
      sub_1E5DFE50C(v33, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    v40 = v127;
    (*(v35 + 32))(v37, v33, v34);
  }

  v107 = v35;
  v41 = sub_1E5F9B6D0(&unk_1F5FA8368);
  v42 = sub_1E63B0704(v41);

  v106 = v37;
  v127 = sub_1E625AE38();
  sub_1E65D8078();
  sub_1E65D80C8();
  sub_1E65D9C88();
  v43 = v103;
  sub_1E65D8128();
  v44 = v115;
  sub_1E63EB15C(v115);
  sub_1E625B0B0(v43);
  v45 = v129;
  v46 = sub_1E65DAE38();
  v47 = sub_1E65DAE38();
  v48 = sub_1E65E4B48();
  v49 = 4.0;
  if (v48)
  {
    v49 = 8.0;
  }

  v50 = 16.0;
  if (v48)
  {
    v50 = 18.0;
  }

  if (v46 == v47)
  {
    v51 = v50;
  }

  else
  {
    v51 = v49;
  }

  if (v46 == v47)
  {
    v52 = 12.0;
  }

  else
  {
    v52 = 8.0;
  }

  v53 = v118;
  sub_1E617BA04(v44, v118);
  v54 = v119;
  *(v53 + *(v119 + 20)) = v42;
  v55 = v53 + v54[6];
  *v55 = 0;
  *(v55 + 8) = v51;
  *(v55 + 16) = v51;
  *(v55 + 24) = v52;
  *(v53 + v54[7]) = 1;
  v56 = (v53 + v54[8]);
  *v56 = 0;
  v56[1] = 0;
  v57 = sub_1E65D8248();
  swift_getKeyPath();
  v58 = v120;
  sub_1E65E4EC8();

  v115 = *(type metadata accessor for AppEnvironment(0) + 136);
  v59 = v104;
  sub_1E63C4134(v58, (v45 + v115), v57, v104);

  v61 = *(v40 + 8);
  v60 = v40 + 8;
  v62 = v122;
  v103 = v61;
  v61(v58, v122);
  v63 = v116;
  v64 = v114;
  v65 = v105;
  if (qword_1EE2D7250 != -1)
  {
    swift_once();
  }

  v102 = sub_1E65D7348();
  __swift_project_value_buffer(v102, qword_1EE2EA220);
  v66 = v64[13];
  v101 = *MEMORY[0x1E69686E8];
  v100 = (v64 + 13);
  v99 = v66;
  v66(v65);
  v67 = sub_1E6016A4C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  v68 = v64;
  v69 = v121;
  v98 = v67;
  sub_1E65D73C8();
  v97 = v68[1];
  v97(v65, v63);
  v70 = v59;
  v71 = v126 + 8;
  v114 = *(v126 + 8);
  (v114)(v70, v69);
  sub_1E65E0738();
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E63C4134(v58, (v129 + v115), v127, v70);

  v72 = v58;
  v127 = v60;
  v73 = v103;
  v103(v72, v62);
  if (qword_1EE2D7248 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v102, qword_1EE2EA208);
  v74 = v116;
  v99(v65, v101, v116);
  sub_1E65D73C8();
  v97(v65, v74);
  (v114)(v70, v69);
  sub_1E65E0738();
  v75 = sub_1E65D8108();
  v126 = v71;
  if (v76 == -1)
  {
    v77 = 9;
  }

  else
  {
    v131 = v75;
    LOBYTE(v132) = v76 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
    sub_1E65D7FB8();
    v77 = v130;
  }

  LODWORD(v116) = v77;
  v78 = v120;
  v120 = sub_1E65D8188();
  v79 = v109;
  sub_1E65D80E8();
  v80 = sub_1E65D76A8();
  v81 = (*(*(v80 - 8) + 48))(v79, 1, v80);
  sub_1E5DFE50C(v79, &qword_1ED0752D8, &qword_1E660CC30);
  v82 = sub_1E65D8238();
  v85 = v129;
  if (v84 == -1)
  {
    LODWORD(v109) = 4;
    v90 = v122;
  }

  else
  {
    v131 = v82;
    v132 = v83;
    v133 = v84 & 1;
    v86 = v82;
    v87 = v83;
    v88 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    v89 = v88;
    v90 = v122;
    v85 = v129;
    sub_1E61281C8(v86, v87, v89);
    LODWORD(v109) = v130;
  }

  LODWORD(v105) = v81 != 1;
  v104 = sub_1E65D8078();
  v103 = v91;
  v102 = sub_1E65D81D8();
  v92 = sub_1E65D8248();
  swift_getKeyPath();
  sub_1E65E4EC8();

  v93 = v125;
  sub_1E63C4134(v78, (v85 + v115), v92, v125);

  v73(v78, v90);
  sub_1E622C018(v93, v111);
  (v114)(v93, v121);
  sub_1E65D76E8();
  sub_1E6016A4C(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6016A4C(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6016A4C(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v94 = MEMORY[0x1E69CC888];
  sub_1E6016A4C(&qword_1EE2D7018, MEMORY[0x1E69CC888], MEMORY[0x1E69CC8A8]);
  sub_1E6016A4C(&qword_1EE2D7030, v94, MEMORY[0x1E69CC890]);
  sub_1E6016A4C(&qword_1EE2D7028, v94, MEMORY[0x1E69CC898]);
  sub_1E65DFEB8();
  return (*(v107 + 8))(v106, v108);
}

uint64_t sub_1E625AE38()
{
  v0 = sub_1E65D9AC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D80A8();
  v5 = sub_1E65D9AA8();
  v7 = v6;
  MEMORY[0x1E6941490]();
  v8 = sub_1E65D9AA8();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  if (v5 == v8 && v7 == v10)
  {
  }

  else
  {
    v12 = sub_1E65E6C18();

    if ((v12 & 1) == 0)
    {
      v13 = sub_1E65D8198();
      v14 = sub_1E65D9AA8();
      v16 = sub_1E637CA94(v14, v15, v13);

      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v17 = *(sub_1E65DADF8() - 8);
        v18 = *(v17 + 72);
        v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1E65EB9E0;
        v21 = (v20 + v19);
        *v21 = sub_1E65D9AA8();
        v21[1] = v22;
        swift_storeEnumTagMultiPayload();
        *(v21 + v18) = 1;
        swift_storeEnumTagMultiPayload();
        v25 = v20;
        sub_1E5FA9E2C(v4);
        return v25;
      }
    }
  }

  return v4;
}

uint64_t sub_1E625B0B0(uint64_t a1)
{
  v2 = sub_1E65D8BB8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E625B10C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077270, &unk_1E660D440);
    v2 = sub_1E65E6A28();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E5DFA11C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1E6121EB8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1E6121EB8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1E6121EB8(v31, v32);
    result = sub_1E65E6818();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1E6121EB8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1E625B3D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075840, &qword_1E65F1DF8);
    v2 = sub_1E65E6A28();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_1E604FBF8(*(a1 + 56) + 40 * v14, &v29);
        v27 = v17;
        v28 = v16;

        swift_dynamicCast();
        sub_1E6121EB8(&v23, v25);
        sub_1E6121EB8(v25, v26);
        sub_1E6121EB8(v26, &v24);
        result = sub_1E6215038(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1E6121EB8(&v24, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_1E6121EB8(&v24, (v2[7] + 32 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E625B644(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077270, &unk_1E660D440);
    v2 = sub_1E65E6A28();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1E604FBF8(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_1E6121EB8(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_1E6121EB8(v35, v24);
    result = sub_1E65E6818();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_1E6121EB8(v24, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1E625B930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppState(0) + 276);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v5 = sub_1E65DD0A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_1E625B9CC(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for AppState(0) + 276);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128) + 28);
  v5 = sub_1E65DD0A8();
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a1, v5);
}

char *sub_1E625BAB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v44 = a1;
  v9 = sub_1E65E43B8();
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x1EEE9AC00](v10);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v12 = sub_1E5DFD1CC(a2, &v38 - v11, a3, a4);
  a5(v12);
  v46 = sub_1E65E4AD8();
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074270, &qword_1E65EFF68));
  v14 = sub_1E65E4058();
  v15 = v43;
  *&v43[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E65EA670;
  v17 = v14;
  sub_1E65E4398();
  v46 = v16;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  sub_1E65E4028();

  v18 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_presentationContextKey;
  v19 = sub_1E65D76F8();
  v20 = *(v19 - 8);
  v21 = v44;
  (*(v20 + 16))(&v15[v18]);
  v22 = type metadata accessor for BarButtonItem(0);
  v45.receiver = v15;
  v45.super_class = v22;
  v23 = objc_msgSendSuper2(&v45, sel_init);
  v24 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v25 = v23;
  v26 = [v24 init];
  [v25 setCustomView_];

  if (sub_1E65E4B48())
  {
    v27 = [v25 customView];
    if (v27)
    {
      v28 = v27;
      v29 = [objc_opt_self() clearColor];
      [v28 setBackgroundColor_];
    }
  }

  v30 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController;
  v31 = [*&v25[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] view];
  if (v31)
  {
    v32 = v31;
    v33 = [v25 customView];
    v34 = v32;
    if (v33)
    {
      v34 = v33;
      [v33 addSubview_];
    }
  }

  result = [*&v25[v30] view];
  if (result)
  {
    v36 = result;
    if (sub_1E65E4B48())
    {
      v37 = [objc_opt_self() clearColor];
    }

    else
    {
      v37 = 0;
    }

    [v36 setBackgroundColor_];

    sub_1E60942E4();
    sub_1E5DFE50C(v39, v40, v41);
    (*(v20 + 8))(v21, v19);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1E625C054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v5 = sub_1E65E43B8();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A4C0, &qword_1E65F9930);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v7;
  v8 = *(v7 + 16);
  v35 = a2;
  v8(&v33 - v9, a2, v6);
  sub_1E5FED46C(&qword_1ED077318, &unk_1ED07A4C0, &qword_1E65F9930, MEMORY[0x1E699CA88]);
  v34 = v6;
  v39 = sub_1E65E4AD8();
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074270, &qword_1E65EFF68));
  v11 = sub_1E65E4058();
  *&v2[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E65EA670;
  v13 = v11;
  sub_1E65E4398();
  v39 = v12;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  sub_1E65E4028();

  v14 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_presentationContextKey;
  v15 = sub_1E65D76F8();
  v16 = *(v15 - 8);
  v17 = v37;
  (*(v16 + 16))(&v3[v14]);
  v18 = type metadata accessor for BarButtonItem(0);
  v38.receiver = v3;
  v38.super_class = v18;
  v19 = objc_msgSendSuper2(&v38, sel_init);
  v20 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v21 = v19;
  v22 = [v20 init];
  [v21 setCustomView_];

  if (sub_1E65E4B48())
  {
    v23 = [v21 customView];
    if (v23)
    {
      v24 = v23;
      v25 = [objc_opt_self() clearColor];
      [v24 setBackgroundColor_];
    }
  }

  v26 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController;
  v27 = [*&v21[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] view];
  if (v27)
  {
    v28 = v27;
    v29 = [v21 customView];
    [v29 addSubview_];
  }

  result = [*&v21[v26] view];
  if (result)
  {
    v31 = result;
    if (sub_1E65E4B48())
    {
      v32 = [objc_opt_self() clearColor];
    }

    else
    {
      v32 = 0;
    }

    [v31 setBackgroundColor_];

    sub_1E60942E4();
    (*(v33 + 8))(v35, v34);
    (*(v16 + 8))(v17, v15);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1E625C58C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1E65E43B8();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1E65DE628();
  MEMORY[0x1EEE9AC00](v7);
  v35 = v9;
  v10 = *(v9 + 16);
  v37 = a2;
  v10(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  sub_1E6275330(&qword_1EE2D6898, MEMORY[0x1E699CBA0], MEMORY[0x1E699CB98]);
  v36 = v7;
  v40 = sub_1E65E4AD8();
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074270, &qword_1E65EFF68));
  v12 = sub_1E65E4058();
  *&v3[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E65EA670;
  v14 = v12;
  sub_1E65E4398();
  v40 = v13;
  sub_1E6275330(&qword_1EE2D4BC0, MEMORY[0x1E697CC60], MEMORY[0x1E697CC68]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5FED46C(&qword_1EE2D4850, &qword_1ED074280, &qword_1E65EFF70, MEMORY[0x1E69E6328]);
  sub_1E65E6738();
  sub_1E65E4028();

  v15 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_presentationContextKey;
  v16 = sub_1E65D76F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v38 = a1;
  v18(&v3[v15], a1, v16);
  v19 = type metadata accessor for BarButtonItem(0);
  v39.receiver = v3;
  v39.super_class = v19;
  v20 = objc_msgSendSuper2(&v39, sel_init);
  v21 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v22 = v20;
  v23 = [v21 init];
  [v22 setCustomView_];

  if (sub_1E65E4B48())
  {
    v24 = [v22 customView];
    if (v24)
    {
      v25 = v24;
      v26 = [objc_opt_self() clearColor];
      [v25 setBackgroundColor_];
    }
  }

  v27 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController;
  v28 = [*&v22[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] view];
  if (v28)
  {
    v29 = v28;
    v30 = [v22 customView];
    [v30 addSubview_];
  }

  result = [*&v22[v27] view];
  if (result)
  {
    v32 = result;
    if (sub_1E65E4B48())
    {
      v33 = [objc_opt_self() clearColor];
    }

    else
    {
      v33 = 0;
    }

    [v32 setBackgroundColor_];

    sub_1E60942E4();
    (*(v35 + 8))(v37, v36);
    (*(v17 + 8))(v38, v16);
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E625CAB4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v2[7] = swift_task_alloc();
  sub_1E65E6058();
  v2[8] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E625CC2C, v4, v3);
}

uint64_t sub_1E625CC2C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  v7 = *MEMORY[0x1E69CBDB0];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v1, v7, v8);
  (*(v9 + 56))(v1, 0, 1, v8);
  v10 = (v5 + *(type metadata accessor for AppComposer(0) + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = sub_1E65D9908();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  v15 = sub_1E65D9F88();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1E5FA9D34(v11, v12);
  sub_1E65D7A28();
  v16 = sub_1E65D7A38();
  (*(*(v16 - 8) + 56))(v6, 0, 1, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E625CED4(uint64_t a1, char a2)
{
  v3 = sub_1E65D8A08();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v85 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v83 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v78 = &v72 - v12;
  v13 = sub_1E65D8C88();
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v75 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v72 - v18;
  v92 = sub_1E65D97D8();
  v77 = *(v92 - 8);
  v19 = MEMORY[0x1EEE9AC00](v92);
  v74 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v89 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v72 - v25;
  v90 = sub_1E65D8C98();
  v87 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E65D89F8();
  v73 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E65DE3E8();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AppComposer(0);
  v35 = a1;
  swift_getObjectType();
  sub_1E65DB678();
  v36 = sub_1E65E03C8();
  v38 = v37;
  if (v36 == sub_1E65E03C8() && v38 == v39)
  {
  }

  else
  {
    v40 = sub_1E65E6C18();

    if ((v40 & 1) == 0)
    {
      return result;
    }
  }

  v42 = v35 + *(v34 + 20);
  v43 = sub_1E65DAE18();
  (*(v31 + 104))(v33, *MEMORY[0x1E69CAD28], v30);
  v44 = sub_1E637C87C(v33, v43);

  result = (*(v31 + 8))(v33, v30);
  if (v44)
  {
    v45 = v73;
    (*(v73 + 104))(v29, *MEMORY[0x1E69CB788], v27);
    sub_1E6171EC8(v29, 3u);
    (*(v45 + 8))(v29, v27);
    v46 = *(type metadata accessor for AppEnvironment(0) + 80);
    v72 = v42;
    v73 = v46;
    v47 = MetricService.publishTrainerTipQuarantineRegionExited.getter();
    v47();

    v48 = v86;
    v49 = v87;
    v50 = v90;
    (*(v87 + 104))(v86, *MEMORY[0x1E69CBAF0], v90);
    v51 = sub_1E65D74E8();
    v52 = *(*(v51 - 8) + 56);
    v53 = v88;
    v52(v88, 1, 1, v51);
    v54 = v89;
    v52(v89, 1, 1, v51);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077248, &qword_1E65FE890);
    v56 = v55[12];
    v57 = v55[16];
    v58 = v76;
    v59 = &v76[v55[20]];
    (*(v49 + 16))(v76, v48, v50);
    sub_1E5DFD1CC(v53, &v58[v56], &qword_1ED072340, &qword_1E65EA410);
    sub_1E5DFD1CC(v54, &v58[v57], &qword_1ED072340, &qword_1E65EA410);
    *v59 = 0;
    *(v59 + 1) = 0;
    v60 = v77;
    v61 = v92;
    (*(v77 + 104))(v58, *MEMORY[0x1E69CC338], v92);
    v62 = sub_1E65D7A38();
    v63 = v91;
    (*(*(v62 - 8) + 56))(v91, 1, 1, v62);
    sub_1E6427784(MEMORY[0x1E69E7CC0]);
    (*(v60 + 16))(v74, v58, v61);
    sub_1E5DFD1CC(v63, v75, &unk_1ED07B500, &qword_1E65F0EE0);
    v64 = sub_1E65D9208();
    (*(*(v64 - 8) + 56))(v78, 1, 1, v64);
    v65 = sub_1E65D9218();
    (*(*(v65 - 8) + 56))(v82, 1, 1, v65);
    v66 = v83;
    sub_1E65D8CA8();
    v67 = sub_1E65D8CB8();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
    (*(*(v68 - 8) + 56))(v84, 1, 1, v68);
    v69 = sub_1E65D9928();
    (*(*(v69 - 8) + 56))(v85, 1, 1, v69);
    v70 = v79;
    sub_1E65D8C78();
    v71 = MetricService.record.getter();
    v71(v70);

    (*(v80 + 8))(v70, v81);
    sub_1E5DFE50C(v91, &unk_1ED07B500, &qword_1E65F0EE0);
    (*(v60 + 8))(v58, v92);
    sub_1E5DFE50C(v89, &qword_1ED072340, &qword_1E65EA410);
    sub_1E5DFE50C(v88, &qword_1ED072340, &qword_1E65EA410);
    return (*(v87 + 8))(v86, v90);
  }

  return result;
}

uint64_t sub_1E625DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = type metadata accessor for AppComposer(0);
  v11 = (a1 + v10[9]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(a1 + v10[5] + 8);
  sub_1E5DFD1CC(a1 + v10[10], &v22, &unk_1ED074320, &unk_1E65EA730);
  sub_1E5DF650C(a4, &v23);
  v20[0] = v12;
  v20[1] = v13;
  v21 = v14;
  type metadata accessor for AppEnvironment(0);
  v15 = sub_1E5FA9D34(v12, v13);
  v16 = a5(v15);
  v19[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v19[4] = sub_1E61379FC();
  v19[0] = swift_allocObject();
  sub_1E6137A50(v20, v19[0] + 16);
  v17 = v16(a2, a3, v19, v12, v13);

  sub_1E6137AAC(v20);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v17;
}

uint64_t sub_1E625DB94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer(0);
  v5 = (a1 + v4[9]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + v4[5] + 8);
  sub_1E5DFD1CC(a1 + v4[10], &v15, &unk_1ED074320, &unk_1E65EA730);
  sub_1E5DF650C(a2, &v16);
  v13[0] = v6;
  v13[1] = v7;
  v14 = v8;
  type metadata accessor for AppEnvironment(0);
  sub_1E5FA9D34(v6, v7);
  active = InteropService.makeActiveWorkoutPlanViewController.getter();
  v12[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v12[4] = sub_1E61379FC();
  v12[0] = swift_allocObject();
  sub_1E6137A50(v13, v12[0] + 16);
  v10 = active(0, v6, v7, v12);

  sub_1E6137AAC(v13);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

uint64_t sub_1E625DCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer(0);
  v5 = (a1 + v4[9]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + v4[5] + 8);
  sub_1E5DFD1CC(a1 + v4[10], &v15, &unk_1ED074320, &unk_1E65EA730);
  sub_1E5DF650C(a2, &v16);
  v13[0] = v6;
  v13[1] = v7;
  v14 = v8;
  type metadata accessor for AppEnvironment(0);
  sub_1E5FA9D34(v6, v7);
  QueueView = InteropService.makeUpNextQueueViewController.getter();
  v12[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v12[4] = sub_1E61379FC();
  v12[0] = swift_allocObject();
  sub_1E6137A50(v13, v12[0] + 16);
  v10 = QueueView(v12, v6, v7);

  sub_1E6137AAC(v13);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

uint64_t sub_1E625DDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AppComposer(0);
  v9 = (a1 + v8[9]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(a1 + v8[5] + 8);
  sub_1E5DFD1CC(a1 + v8[10], &v19, &unk_1ED074320, &unk_1E65EA730);
  sub_1E5DF650C(a4, &v20);
  v17[0] = v10;
  v17[1] = v11;
  v18 = v12;
  type metadata accessor for AppEnvironment(0);
  sub_1E5FA9D34(v10, v11);
  v13 = InteropService.makeWorkoutPlanAlternativeViewController.getter();
  v16[3] = &type metadata for CatalogPageRoutingContextNavigator;
  v16[4] = sub_1E61379FC();
  v16[0] = swift_allocObject();
  sub_1E6137A50(v17, v16[0] + 16);
  v14 = v13(a2, a3, v10, v11, v16);

  sub_1E6137AAC(v17);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v14;
}

void sub_1E625E020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E65E07B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(Strong + qword_1EE2D9180) navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
    sub_1E65E0798();
    v11 = v10;
    (*(v4 + 8))(v6, v3);
    [v9 setLargeTitleInsets_];
  }
}

uint64_t sub_1E625E194(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_1E65E5AF8();
  LODWORD(v2) = [v2 isValidJSONObject_];

  if (v2)
  {
  }

  else
  {
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
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Invalid JSON object.", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    return 0;
  }

  return a1;
}

void sub_1E625E2DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

char *sub_1E625E354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = qword_1ED078640;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  *&v6[qword_1ED078660] = 0;
  v14 = &v6[qword_1ED078668];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v6[qword_1ED078648] = a1;
  v15 = &v6[qword_1ED078650];
  *v15 = a2;
  *(v15 + 1) = a3;
  v16 = &v6[qword_1ED078658];
  *v16 = a4;
  *(v16 + 1) = a5;

  sub_1E5F8711C(a4, a5);
  v20.receiver = v6;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, sel_initWithNibName_bundle_, 0, 0);
  [v17 setOverrideUserInterfaceStyle_];
  v18 = qword_1ED078640;
  [*&v17[qword_1ED078640] setHidesWhenStopped_];
  [*&v17[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1E5E29474(a4, a5);

  return v17;
}

uint64_t sub_1E625E524@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E694B900]();
  *a1 = result;
  return result;
}

char *sub_1E625E57C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t a6)
{
  *&v1744 = a6;
  v1743 = a4;
  *&v1742 = a3;
  v1712 = a2;
  *&v1745 = a1;
  v7 = sub_1E65DAEB8();
  v1505 = *(v7 - 8);
  v1506 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v1504 = &v1478 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D90, &unk_1E65FA3D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v1502 = &v1478 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v1503 = &v1478 - v12;
  v13 = sub_1E65DCA88();
  v1528 = *(v13 - 8);
  v1529 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v1654 = &v1478 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E63B8();
  v1526 = *(v15 - 8);
  v1527 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v1525 = &v1478 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1522 = sub_1E65E6398();
  MEMORY[0x1EEE9AC00](v1522);
  v1524 = &v1478 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65E4F68();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v1521 = &v1478 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1646 = type metadata accessor for MetricService();
  Description = v1646[-1].Description;
  MEMORY[0x1EEE9AC00](v1646);
  v1645 = &v1478 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65DD0A8();
  v1518 = *(v21 - 8);
  v1519 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v1644 = &v1478 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1482 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776A0, &qword_1E65F8030);
  MEMORY[0x1EEE9AC00](v1482);
  v1481 = &v1478 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770A8, &unk_1E65FA3E0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v1492 = &v1478 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v1491 = &v1478 - v27;
  v1634 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v1634);
  v1657 = &v1478 - v28;
  v1653 = sub_1E65E3F88();
  v1652 = *(v1653 - 8);
  MEMORY[0x1EEE9AC00](v1653);
  v1650 = &v1478 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v1649 = *(v1651 - 8);
  MEMORY[0x1EEE9AC00](v1651);
  v1648 = &v1478 - v30;
  v1655 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776C0, &qword_1E65F9648);
  MEMORY[0x1EEE9AC00](v1655);
  v1656 = &v1478 - v31;
  v1638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B0, &unk_1E65FA3F0);
  v1637 = *(v1638 - 8);
  v32 = MEMORY[0x1EEE9AC00](v1638);
  v1636 = &v1478 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v1633 = &v1478 - v34;
  v1641 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776D0, &qword_1E65F9650);
  v35 = MEMORY[0x1EEE9AC00](v1641);
  v1635 = &v1478 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v1702 = (&v1478 - v37);
  v1632 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B8, &unk_1E65FA400);
  MEMORY[0x1EEE9AC00](v1632);
  v1725 = &v1478 - v38;
  v1705 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v1642 = *(v1705 - 8);
  v39 = MEMORY[0x1EEE9AC00](v1705);
  v1706 = &v1478 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1643 = v40;
  MEMORY[0x1EEE9AC00](v39);
  v1647 = (&v1478 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C0, &unk_1E65FA410);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v1631 = &v1478 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v1667 = &v1478 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v1630 = &v1478 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v1666 = &v1478 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v51 = MEMORY[0x1EEE9AC00](v50 - 8);
  v1493 = &v1478 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v1623 = &v1478 - v53;
  v1625 = sub_1E65D7218();
  MEMORY[0x1EEE9AC00](v1625);
  v1624 = &v1478 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C8, &unk_1E65FA420);
  v55 = MEMORY[0x1EEE9AC00](v1497);
  v1500 = &v1478 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v1499 = &v1478 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v1496 = &v1478 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776F0, &qword_1E65F9658);
  v61 = MEMORY[0x1EEE9AC00](v60 - 8);
  v1498 = &v1478 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v1501 = &v1478 - v63;
  v1738 = sub_1E65DEEA8();
  v1740 = *(v1738 - 8);
  MEMORY[0x1EEE9AC00](v1738);
  v1739 = (&v1478 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DE8, &unk_1E65FA430);
  MEMORY[0x1EEE9AC00](v1628);
  v1629 = &v1478 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077700, &qword_1E65EEE38);
  v1512 = *(v66 - 8);
  v1513 = v66;
  MEMORY[0x1EEE9AC00](v66);
  v1511 = &v1478 - v67;
  v1516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DF8, &unk_1E65FA440);
  MEMORY[0x1EEE9AC00](v1516);
  v1515 = &v1478 - v68;
  v1627 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077710, &qword_1E65EEE28);
  v69 = MEMORY[0x1EEE9AC00](v1627);
  v1520 = &v1478 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v1514 = &v1478 - v72;
  MEMORY[0x1EEE9AC00](v71);
  v1517 = &v1478 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E20, &unk_1E65FA450);
  v1484 = *(v74 - 8);
  v1485 = v74;
  MEMORY[0x1EEE9AC00](v74);
  v1483 = &v1478 - v75;
  v1488 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077720, &qword_1E65EEE40);
  MEMORY[0x1EEE9AC00](v1488);
  v1487 = &v1478 - v76;
  v1626 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E10, &unk_1E65FA460);
  v77 = MEMORY[0x1EEE9AC00](v1626);
  v1490 = &v1478 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v1486 = &v1478 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v1489 = &v1478 - v81;
  v1696 = sub_1E65D9048();
  v1614 = *(v1696 - 8);
  MEMORY[0x1EEE9AC00](v1696);
  v1613 = &v1478 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1695 = sub_1E65E58D8();
  v1612 = *(v1695 - 8);
  MEMORY[0x1EEE9AC00](v1695);
  v1611 = &v1478 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1610 = sub_1E65DA308();
  v1609 = *(v1610 - 8);
  MEMORY[0x1EEE9AC00](v1610);
  v1607 = &v1478 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1608 = sub_1E65E56B8();
  v1606 = *(v1608 - 8);
  MEMORY[0x1EEE9AC00](v1608);
  v1603 = &v1478 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1661 = sub_1E65D7EB8();
  v1660 = *(v1661 - 8);
  v86 = MEMORY[0x1EEE9AC00](v1661);
  v1531 = &v1478 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1480 = v87;
  MEMORY[0x1EEE9AC00](v86);
  v1659 = &v1478 - v88;
  v1704 = sub_1E65E55E8();
  v1663 = *(v1704 - 8);
  v89 = MEMORY[0x1EEE9AC00](v1704);
  v1530 = &v1478 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1479 = v90;
  MEMORY[0x1EEE9AC00](v89);
  v1699 = &v1478 - v91;
  v1591 = type metadata accessor for PlaylistType(0);
  v92 = MEMORY[0x1EEE9AC00](v1591);
  v1510 = (&v1478 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = MEMORY[0x1EEE9AC00](v92);
  v1478 = (&v1478 - v95);
  MEMORY[0x1EEE9AC00](v94);
  v1640 = &v1478 - v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v97 - 8);
  v1620 = &v1478 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v99 - 8);
  v1619 = &v1478 - v100;
  v1618 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077740, &qword_1E65F9660);
  v1617 = *(v1618 - 8);
  MEMORY[0x1EEE9AC00](v1618);
  v1616 = &v1478 - v101;
  v1589 = sub_1E65DDE68();
  v1585 = *(v1589 - 8);
  MEMORY[0x1EEE9AC00](v1589);
  v1586 = &v1478 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1615 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D0, &unk_1E65FA480);
  v103 = MEMORY[0x1EEE9AC00](v1615);
  v1621 = &v1478 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v1622 = &v1478 - v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v1587 = *(v106 - 8);
  v107 = MEMORY[0x1EEE9AC00](v106 - 8);
  v1693 = &v1478 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1588 = v108;
  MEMORY[0x1EEE9AC00](v107);
  v1698 = &v1478 - v109;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v1583 = *(v110 - 8);
  v111 = MEMORY[0x1EEE9AC00](v110 - 8);
  v1692 = &v1478 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1584 = v112;
  MEMORY[0x1EEE9AC00](v111);
  v1697 = &v1478 - v113;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v1580 = *(v114 - 8);
  v115 = MEMORY[0x1EEE9AC00](v114 - 8);
  v1592 = &v1478 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = MEMORY[0x1EEE9AC00](v115);
  v1691 = &v1478 - v118;
  v1694 = v119;
  MEMORY[0x1EEE9AC00](v117);
  v1720 = &v1478 - v120;
  v1574 = sub_1E65E52B8();
  v121 = MEMORY[0x1EEE9AC00](v1574);
  v1578 = (&v1478 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v121);
  v1601 = &v1478 - v123;
  v1579 = sub_1E65E5528();
  v1577 = *(v1579 - 8);
  MEMORY[0x1EEE9AC00](v1579);
  v1575 = &v1478 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1690 = sub_1E65E57D8();
  v1573 = *(v1690 - 8);
  MEMORY[0x1EEE9AC00](v1690);
  v1571 = &v1478 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  MEMORY[0x1EEE9AC00](v126 - 8);
  v1576 = &v1478 - v127;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  MEMORY[0x1EEE9AC00](v128 - 8);
  v1572 = &v1478 - v129;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  MEMORY[0x1EEE9AC00](v130 - 8);
  v1569 = &v1478 - v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v1564 = *(v132 - 8);
  v133 = MEMORY[0x1EEE9AC00](v132 - 8);
  v1567 = &v1478 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1565 = v134;
  MEMORY[0x1EEE9AC00](v133);
  v1719 = &v1478 - v135;
  v1570 = sub_1E65D7848();
  v1568 = *(v1570 - 8);
  MEMORY[0x1EEE9AC00](v1570);
  v1723 = &v1478 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v137 - 8);
  v1700 = &v1478 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1658 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v1715 = *(v1658 - 8);
  v139 = MEMORY[0x1EEE9AC00](v1658);
  v1494 = &v1478 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = MEMORY[0x1EEE9AC00](v139);
  v1495 = &v1478 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v1566 = &v1478 - v144;
  MEMORY[0x1EEE9AC00](v143);
  v1689 = &v1478 - v145;
  v1598 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077790, &qword_1E65F9668);
  v1596 = *(v1598 - 8);
  MEMORY[0x1EEE9AC00](v1598);
  v1593 = &v1478 - v146;
  v1600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E0, &unk_1E65FA4C0);
  MEMORY[0x1EEE9AC00](v1600);
  v1599 = &v1478 - v147;
  v1604 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777A0, &qword_1E65F9670);
  MEMORY[0x1EEE9AC00](v1604);
  v1605 = &v1478 - v148;
  v1559 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E8, &unk_1E65FA4D0);
  v1556 = *(v1559 - 8);
  MEMORY[0x1EEE9AC00](v1559);
  v1555 = &v1478 - v149;
  v1563 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777B0, &qword_1E65F9678);
  v1561 = *(v1563 - 8);
  MEMORY[0x1EEE9AC00](v1563);
  v1558 = &v1478 - v150;
  v1562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F0, &unk_1E65FA4E0);
  v1560 = *(v1562 - 8);
  MEMORY[0x1EEE9AC00](v1562);
  v1557 = &v1478 - v151;
  v1554 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v1553 = *(v1554 - 8);
  MEMORY[0x1EEE9AC00](v1554);
  v1552 = &v1478 - v152;
  v1602 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F8, &unk_1E65FA4F0);
  v153 = MEMORY[0x1EEE9AC00](v1602);
  v1594 = &v1478 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = MEMORY[0x1EEE9AC00](v153);
  v1595 = &v1478 - v156;
  MEMORY[0x1EEE9AC00](v155);
  v1597 = &v1478 - v157;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777D0, &qword_1E65F9680);
  v159 = MEMORY[0x1EEE9AC00](v158 - 8);
  v1664 = &v1478 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v159);
  v1665 = &v1478 - v161;
  v1549 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077100, &unk_1E65FA500);
  MEMORY[0x1EEE9AC00](v1549);
  v1548 = &v1478 - v162;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777E0, &qword_1E65F9688);
  v164 = MEMORY[0x1EEE9AC00](v163 - 8);
  v1679 = &v1478 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v164);
  v1682 = &v1478 - v166;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077108, &unk_1E65FA510);
  v168 = MEMORY[0x1EEE9AC00](v167 - 8);
  v1547 = &v1478 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v168);
  v1546 = &v1478 - v170;
  v1545 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777F0, &qword_1E65F9690);
  v171 = MEMORY[0x1EEE9AC00](v1545);
  v1550 = &v1478 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v171);
  v1551 = &v1478 - v173;
  v1732 = sub_1E65D74E8();
  v1731 = *(v1732 - 1);
  v174 = *(v1731 + 64);
  v175 = MEMORY[0x1EEE9AC00](v1732);
  v1668 = &v1478 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = MEMORY[0x1EEE9AC00](v175);
  v1721 = (&v1478 - v177);
  v178 = MEMORY[0x1EEE9AC00](v176);
  v1718 = &v1478 - v179;
  v180 = MEMORY[0x1EEE9AC00](v178);
  v1685 = &v1478 - v181;
  MEMORY[0x1EEE9AC00](v180);
  v1676 = &v1478 - v182;
  v1688 = sub_1E65E1518();
  v1687 = *(v1688 - 8);
  MEMORY[0x1EEE9AC00](v1688);
  v1686 = &v1478 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1730 = sub_1E65DB848();
  v1729 = *(v1730 - 8);
  v184 = MEMORY[0x1EEE9AC00](v1730);
  v1680 = &v1478 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = MEMORY[0x1EEE9AC00](v184);
  v1681 = &v1478 - v187;
  v188 = MEMORY[0x1EEE9AC00](v186);
  v1677 = &v1478 - v189;
  v190 = MEMORY[0x1EEE9AC00](v188);
  v1678 = &v1478 - v191;
  v192 = MEMORY[0x1EEE9AC00](v190);
  v1683 = &v1478 - v193;
  MEMORY[0x1EEE9AC00](v192);
  v1684 = &v1478 - v194;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A0, &unk_1E65FA520);
  v196 = MEMORY[0x1EEE9AC00](v195 - 8);
  v1543 = &v1478 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v196);
  v1544 = &v1478 - v198;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077800, &qword_1E65F9698);
  v200 = MEMORY[0x1EEE9AC00](v199 - 8);
  v1541 = &v1478 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v200);
  v1542 = &v1478 - v202;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072708, &unk_1E65FA530);
  v204 = MEMORY[0x1EEE9AC00](v203 - 8);
  v1671 = &v1478 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v204);
  v1540 = &v1478 - v206;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077810, &qword_1E65F96A0);
  v208 = MEMORY[0x1EEE9AC00](v207 - 8);
  v1536 = &v1478 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v208);
  v1539 = &v1478 - v210;
  v211 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v211 - 8);
  v1537 = &v1478 - ((v212 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1717 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077110, &unk_1E65FA540);
  v1538 = *(v1717 - 1);
  v213 = MEMORY[0x1EEE9AC00](v1717);
  v1672 = &v1478 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = MEMORY[0x1EEE9AC00](v213);
  v1534 = &v1478 - v216;
  v217 = MEMORY[0x1EEE9AC00](v215);
  v1535 = &v1478 - v218;
  MEMORY[0x1EEE9AC00](v217);
  v1675 = &v1478 - v219;
  v1674 = sub_1E65D72D8();
  v1673 = *(v1674 - 8);
  MEMORY[0x1EEE9AC00](v1674);
  v1716 = (&v1478 - ((v220 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1708 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077820, &qword_1E65F96A8);
  v221 = MEMORY[0x1EEE9AC00](v1708);
  v1509 = &v1478 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = MEMORY[0x1EEE9AC00](v221);
  v1639 = &v1478 - v224;
  v225 = MEMORY[0x1EEE9AC00](v223);
  v1532 = &v1478 - v226;
  v227 = MEMORY[0x1EEE9AC00](v225);
  v1662 = &v1478 - v228;
  v229 = MEMORY[0x1EEE9AC00](v227);
  v1707 = &v1478 - v230;
  MEMORY[0x1EEE9AC00](v229);
  v1533 = &v1478 - v231;
  v232 = type metadata accessor for BrowsePage(0);
  MEMORY[0x1EEE9AC00](v232);
  v234 = &v1478 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1734 = sub_1E65D76F8();
  v1735 = *(v1734 - 8);
  v235 = *(v1735 + 8);
  v236 = MEMORY[0x1EEE9AC00](v1734);
  v1703 = &v1478 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = MEMORY[0x1EEE9AC00](v236);
  v1701 = &v1478 - v238;
  v239 = MEMORY[0x1EEE9AC00](v237);
  v1508 = &v1478 - v240;
  v241 = MEMORY[0x1EEE9AC00](v239);
  v1507 = &v1478 - v242;
  v243 = MEMORY[0x1EEE9AC00](v241);
  v1733 = &v1478 - v244;
  v245 = MEMORY[0x1EEE9AC00](v243);
  v1714 = &v1478 - v246;
  v247 = MEMORY[0x1EEE9AC00](v245);
  v1713 = &v1478 - v248;
  v249 = MEMORY[0x1EEE9AC00](v247);
  v1724 = (&v1478 - v250);
  v251 = MEMORY[0x1EEE9AC00](v249);
  v1670 = &v1478 - v252;
  v253 = MEMORY[0x1EEE9AC00](v251);
  v1669 = &v1478 - v254;
  MEMORY[0x1EEE9AC00](v253);
  v1726 = &v1478 - v255;
  v1582 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
  v256 = MEMORY[0x1EEE9AC00](v1582);
  v1581 = &v1478 - ((v257 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v256);
  v1590 = &v1478 - v258;
  v259 = type metadata accessor for AppComposer(0);
  v1736 = *(v259 - 8);
  v260 = MEMORY[0x1EEE9AC00](v259);
  v262 = &v1478 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = MEMORY[0x1EEE9AC00](v260);
  v1710 = &v1478 - v264;
  v265 = MEMORY[0x1EEE9AC00](v263);
  v1709 = &v1478 - v266;
  v267 = MEMORY[0x1EEE9AC00](v265);
  v1728 = &v1478 - v268;
  v269 = MEMORY[0x1EEE9AC00](v267);
  v1727 = &v1478 - v270;
  v1737 = v271;
  MEMORY[0x1EEE9AC00](v269);
  v1741 = &v1478 - v272;
  v273 = type metadata accessor for RouteResource(0);
  MEMORY[0x1EEE9AC00](v273);
  v275 = &v1478 - ((v274 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1756[3] = a5;
  v1756[4] = v1744;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1756);
  v277 = *(*(a5 - 1) + 16);
  v1711 = boxed_opaque_existential_1;
  v1722 = a5;
  v277(boxed_opaque_existential_1, v1742, a5);
  *&v1742 = v259;
  v278 = v1745 + *(v259 + 20);
  v279 = *(v278 + 8);
  sub_1E626F020(v1743, v275, type metadata accessor for RouteResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v699 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v700 = &v275[v699[12]];
      v702 = *v700;
      v701 = v700[1];
      v1734 = v702;
      v1733 = v701;
      v703 = v699[16];
      v1729 = *&v275[v699[20]];
      v704 = v699[24];
      LODWORD(v1732) = v275[v699[28]];
      v705 = &v275[v699[32]];
      v1731 = *v705;
      LODWORD(v1730) = v705[8];
      v706 = v1720;
      sub_1E5FAB460(v275, v1720, &unk_1ED077760, &unk_1E66011D0);
      v707 = v1697;
      sub_1E5FAB460(&v275[v703], v1697, &qword_1ED072B60, &unk_1E65FA490);
      *&v1744 = v278;
      v708 = v1698;
      sub_1E5FAB460(&v275[v704], v1698, &unk_1ED077750, &unk_1E66011C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
      v1743 = swift_allocBox();
      (*(v1585 + 104))(v1586, *MEMORY[0x1E69CAB38], v1589);
      LOBYTE(aBlock) = 0;
      sub_1E65DDC88();
      v1725 = type metadata accessor for AppComposer;
      v709 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      sub_1E5DFD1CC(v706, v1691, &unk_1ED077760, &unk_1E66011D0);
      sub_1E5DFD1CC(v708, v1693, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFD1CC(v707, v1692, &qword_1ED072B60, &unk_1E65FA490);
      v710 = *(v1736 + 80);
      v711 = (v710 + 16) & ~v710;
      v1737 += v711;
      v1736 = v711;
      v1735 = (v710 | 7);
      v1726 = *(v1580 + 80);
      v712 = &v1737[v1726] & ~v1726;
      v1724 = (v710 | 7 | v1726);
      v713 = (v1694 + v712 + 7) & 0xFFFFFFFFFFFFFFF8;
      v714 = (*(v1587 + 80) + v713 + 8) & ~*(v1587 + 80);
      v715 = (v1588 + v714 + 7) & 0xFFFFFFFFFFFFFFF8;
      v716 = (*(v1583 + 80) + v715 + 9) & ~*(v1583 + 80);
      v1723 = (v716 + v1584);
      v1722 = ((v716 + v1584) & 0xFFFFFFFFFFFFFFF8);
      v717 = (v1722 + 23) & 0xFFFFFFFFFFFFFFF8;
      v718 = swift_allocObject();
      v1721 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v709, v718 + v711, type metadata accessor for AppComposer);
      sub_1E5FAB460(v1691, v718 + v712, &unk_1ED077760, &unk_1E66011D0);
      *(v718 + v713) = v1729;
      sub_1E5FAB460(v1693, v718 + v714, &unk_1ED077750, &unk_1E66011C0);
      v719 = v718 + v715;
      *v719 = v1731;
      *(v719 + 8) = v1730;
      sub_1E5FAB460(v1692, v718 + v716, &qword_1ED072B60, &unk_1E65FA490);
      v1723[v718] = v1732;
      *(v1722 + v718 + 8) = v1743;
      v720 = (v718 + v717);
      v721 = v1733;
      *v720 = v1734;
      v720[1] = v721;
      type metadata accessor for AppEnvironment(0);

      v722 = LocalizationService.localizedDateComponentsFormatter.getter();
      *&v1744 = v722();

      v723 = v1745;
      v724 = v1727;
      v725 = v1725;
      sub_1E626F020(v1745, v1727, v1725);
      v726 = v1737;
      v1734 = swift_allocObject();
      v727 = v1736;
      sub_1E5E1E4C0(v724, v1736 + v1734, type metadata accessor for AppComposer);
      v728 = v1728;
      sub_1E626F020(v723, v1728, v725);
      sub_1E5DF650C(v1756, &aBlock);
      v729 = v1592;
      sub_1E5DFD1CC(v1720, v1592, &unk_1ED077760, &unk_1E66011D0);
      v730 = (v726 + 7) & 0xFFFFFFFFFFFFFFF8;
      v731 = (v1726 + v730 + 40) & ~v1726;
      v732 = swift_allocObject();
      sub_1E5E1E4C0(v728, v727 + v732, v1721);
      sub_1E5DF599C(&aBlock, v732 + v730);
      sub_1E5FAB460(v729, v732 + v731, &unk_1ED077760, &unk_1E66011D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00, MEMORY[0x1E699E850]);
      v733 = v1616;
      sub_1E65E26F8();
      sub_1E65E5148();
      sub_1E65E5138();
      v734 = sub_1E65E4FD8();
      v735 = v1619;
      (*(*(v734 - 8) + 56))(v1619, 1, 1, v734);
      if (qword_1EE2D49E0 != -1)
      {
        swift_once();
      }

      v736 = sub_1E65E5018();
      __swift_project_value_buffer(v736, qword_1EE2D49E8);
      v737 = sub_1E65E2E78();
      v738 = v1620;
      (*(*(v737 - 8) + 56))(v1620, 1, 1, v737);
      sub_1E5FED46C(&qword_1ED077120, &unk_1ED077740, &qword_1E65F9660, MEMORY[0x1E699F420]);
      v739 = v1622;
      v740 = v1618;
      sub_1E65E4728();

      sub_1E5DFE50C(v738, &unk_1ED077730, &unk_1E65EA310);
      sub_1E5DFE50C(v735, &qword_1ED071EF8, &unk_1E65FA470);
      (*(v1617 + 8))(v733, v740);
      v741 = v1745;
      v742 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      v743 = swift_allocObject();
      sub_1E5E1E4C0(v742, v1736 + v743, type metadata accessor for AppComposer);

      v744 = (v739 + *(v1615 + 36));
      *v744 = sub_1E626CF38;
      v744[1] = v743;
      v745 = v1621;
      sub_1E5DFD1CC(v739, v1621, &qword_1ED0770D0, &unk_1E65FA480);
      v746 = *v741;
      v747 = *(v1742 + 32);
      v748 = swift_allocObject();
      v1745 = *(v741 + v747);
      *(v748 + 16) = v1745;
      v749 = v1739;
      v750 = v1738;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v751 = v1446;
      }

      else
      {

        swift_unknownObjectRetain();
        v751 = MEMORY[0x1E69E7CD0];
      }

      (*(v1740 + 13))(v749, *MEMORY[0x1E699CE18], v750);
      v752 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778E0, &unk_1E65FA5C0));
      v289 = sub_1E626E800(v745, v751, MEMORY[0x1E69E7CC0], v749, 0, 0, 0, 0, 0, 0, 0, v746, sub_1E6275B5C, v748);

      sub_1E5DFE50C(v739, &qword_1ED0770D0, &unk_1E65FA480);
      sub_1E5DFE50C(v1698, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFE50C(v1697, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5DFE50C(v1720, &unk_1ED077760, &unk_1E66011D0);
      goto LABEL_264;
    case 2u:
      v565 = *v275;
      v564 = *(v275 + 1);
      *v234 = *v275;
      *(v234 + 1) = v564;
      swift_storeEnumTagMultiPayload();

      v566 = v1745;
      sub_1E617DC64(v234, &aBlock);
      sub_1E6272C28(v234, type metadata accessor for BrowsePage);
      if (v279 < 2)
      {
        *v234 = v565;
        *(v234 + 1) = v564;
        swift_storeEnumTagMultiPayload();

        v567 = v1662;
        sub_1E6508CD4(v1756, v234, &aBlock, v1662);
        sub_1E6272C28(v234, type metadata accessor for BrowsePage);
        sub_1E6272CEC();
        v568 = v1707;
        sub_1E5FEE4C8();
        sub_1E5DFE50C(v567, &unk_1ED077820, &qword_1E65F96A8);
        v569 = v1639;
        sub_1E5FEE4C8();
        sub_1E5DFE50C(v568, &unk_1ED077820, &qword_1E65F96A8);
        v570 = v1507;
        sub_1E65D76E8();
        v571 = v1508;
        sub_1E65D76E8();
        v572 = v1509;
        sub_1E5DFD1CC(v569, v1509, &unk_1ED077820, &qword_1E65F96A8);
        v1743 = sub_1E6388F1C(v565, v564, v571, v570, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v573 = swift_allocObject();
        *(v573 + 16) = xmmword_1E65F32F0;
        *(v573 + 32) = sub_1E638D9FC(v565, v564, v571, &aBlock, v566);
        *(v573 + 40) = [objc_opt_self() flexibleSpaceItem];
        v574 = sub_1E638AB3C(v565, v564, v570, &aBlock);

        *(v573 + 48) = v574;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
        v575 = *v566;
        v576 = *(v1742 + 32);
        v577 = swift_allocObject();
        v1745 = *(v566 + v576);
        *(v577 + 16) = v1745;
        v578 = v1739;
        (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);

        swift_unknownObjectRetain();
        *(&v1466 + 1) = sub_1E6275B5C;
        *&v1466 = v575;
        v289 = sub_1E630B390(v572, v1743, v573, v578, 0, 0, 0, 0, 1, 0, v1466, v577);

        sub_1E5DFE50C(v572, &unk_1ED077820, &qword_1E65F96A8);
        swift_unknownObjectRelease();

        v579 = *(v1735 + 1);
        v580 = v1734;
        v579(v571, v1734);
        v579(v570, v580);
        sub_1E5DFE50C(v1639, &unk_1ED077820, &qword_1E65F96A8);
        goto LABEL_264;
      }

      if (v279 != 3)
      {
        goto LABEL_329;
      }

      v1262 = v1741;
      sub_1E626F020(v566, v1741, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1756, &v1748);
      v1263 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v1264 = &v1737[v1263 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1265 = swift_allocObject();
      sub_1E5E1E4C0(v1262, v1265 + v1263, type metadata accessor for AppComposer);
      v1266 = (v1265 + v1264);
      *v1266 = v565;
      v1266[1] = v564;
      sub_1E5DF599C(&v1748, v1265 + ((v1264 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1267 = sub_1E65E4438();
      v1268 = *v566;
      v1269 = *(v1742 + 32);
      v1270 = swift_allocObject();
      v1745 = *(v566 + v1269);
      *(v1270 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1271 = v1456;
      }

      else
      {

        swift_unknownObjectRetain();
        v1271 = MEMORY[0x1E69E7CD0];
      }

      v1272 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1273 = sub_1E6275404(sub_1E6272FAC, v1265, v1267, v1271, MEMORY[0x1E69E7CC0], v1272, 0, 0, 0, 0, 0, 0, 0, v1268, sub_1E6275B5C, v1270, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1274 = v1712;
      if (v1712)
      {
        v1275 = v1712;
        v1276 = v1273;
        if ([v1275 isViewLoaded])
        {
          v1277 = [v1275 view];
          if (v1277)
          {
            v1278 = v1277;
            v1279 = [v1277 snapshotViewAfterScreenUpdates_];

            goto LABEL_262;
          }

          goto LABEL_321;
        }
      }

      else
      {
        v1433 = v1273;
      }

      v1279 = 0;
LABEL_262:
      v1434 = objc_allocWithZone(type metadata accessor for BlurViewController());
      v289 = sub_1E630B7AC(v1273, v1279);

      swift_unknownObjectRelease();

LABEL_263:

      goto LABEL_264;
    case 3u:
      LODWORD(v1743) = v279;
      v639 = *(v275 + 1);
      v1735 = *v275;
      v640 = v1735;
      v1732 = v639;
      LODWORD(v1744) = v275[16];
      LODWORD(v1742) = v275[17];
      v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
      v642 = *(v641 + 80);
      v1734 = v641;
      v643 = v1673;
      v644 = v1716;
      v645 = v1674;
      (*(v1673 + 32))(v1716, &v275[v642], v1674);
      v646 = *(v641 + 80);
      *v234 = v640;
      v647 = v1732;
      *(v234 + 1) = v1732;
      v234[16] = v1744;
      v234[17] = v1742;
      v1733 = *(v643 + 16);
      (v1733)(&v234[v646], v644, v645);
      swift_storeEnumTagMultiPayload();

      sub_1E617DC64(v234, &aBlock);
      sub_1E6272C28(v234, type metadata accessor for BrowsePage);
      v648 = *(v1734 + 80);
      *v234 = v1735;
      *(v234 + 1) = v647;
      v234[16] = v1744;
      v234[17] = v1742;
      (v1733)(&v234[v648], v644, v645);
      swift_storeEnumTagMultiPayload();
      v649 = v1707;
      v650 = v1745;
      sub_1E6508CD4(v1756, v234, &aBlock, v1707);
      sub_1E6272C28(v234, type metadata accessor for BrowsePage);
      v1735 = type metadata accessor for AppComposer;
      v651 = v1741;
      sub_1E626F020(v650, v1741, type metadata accessor for AppComposer);
      v1734 = *(v1736 + 80);
      v652 = (v1734 + 17) & ~v1734;
      v653 = swift_allocObject();
      *(v653 + 16) = v1744;
      v1736 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v651, v653 + v652, type metadata accessor for AppComposer);
      v654 = sub_1E6272CEC();
      v655 = v1534;
      v656 = v1708;
      sub_1E65E4718();

      sub_1E5DFE50C(v649, &unk_1ED077820, &qword_1E65F96A8);
      *&v1748 = v656;
      *(&v1748 + 1) = v654;
      swift_getOpaqueTypeConformance2();
      v657 = v1535;
      v658 = v1717;
      sub_1E5FEE4C8();
      v659 = v1538;
      v660 = v1538 + 8;
      v661 = *(v1538 + 8);
      v661(v655, v658);
      v662 = v1675;
      sub_1E5FEE4C8();
      *&v1742 = v660;
      v661(v657, v658);
      (*(v659 + 16))(v1672, v662, v658);
      v663 = *v1745;
      sub_1E626F020(v1745, v262, v1735);
      v664 = (v1734 + 16) & ~v1734;
      v665 = &v1737[v664];
      v666 = swift_allocObject();
      sub_1E5E1E4C0(v262, v666 + v664, v1736);
      v665[v666] = v1744;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v667 = v1444;
      }

      else
      {

        v667 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B20, &qword_1E65F9800);
      v668 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      *(&v1468 + 1) = sub_1E6272F2C;
      *&v1468 = v663;
      v669 = v1672;
      v670 = sub_1E630B390(v1672, v667, MEMORY[0x1E69E7CC0], v668, 0, 0, 0, 0, 0, 0, v1468, v666);

      v661(v669, v1717);
      v289 = v670;
      sub_1E65D71F8();
      sub_1E6275330(&qword_1ED075EA8, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      sub_1E65E5E48();
      v671 = sub_1E65E5C48();

      [v289 setTitle_];

      v672 = sub_1E6307A64();
      v673 = v672;
      if (v1743 > 1)
      {
        [v672 setLargeTitleDisplayMode_];
        swift_unknownObjectRelease();
      }

      else
      {
        [v672 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        v673 = v289;
      }

      v661(v1675, v1717);
      (*(v1673 + 8))(v1716, v1674);
      goto LABEL_264;
    case 4u:
      v418 = &v275[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48)];
      v419 = *v418;
      v420 = v418[1];
      v323 = v1537;
      sub_1E5E1E4C0(v275, v1537, MEMORY[0x1E699DD40]);
      v421 = v1539;
      v422 = v419;
      v423 = v1745;
      sub_1E63DB038(v323, v422, v420, v1756, v1539);

      v424 = v1536;
      sub_1E5DFD1CC(v421, v1536, &unk_1ED077810, &qword_1E65F96A0);
      v425 = *v423;
      v426 = *(v1742 + 32);
      v427 = swift_allocObject();
      v1745 = *(v423 + v426);
      *(v427 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v428 = v1441;
      }

      else
      {

        swift_unknownObjectRetain();
        v428 = MEMORY[0x1E69E7CD0];
      }

      v429 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      v430 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D8, &qword_1E65F97E8));
      v289 = sub_1E626CF50(v424, v428, MEMORY[0x1E69E7CC0], v429, 0, 0, 0, 0, 0, 0, 0, v425, sub_1E6272C24, v427);

      sub_1E5DFE50C(v421, &unk_1ED077810, &qword_1E65F96A0);
      v332 = MEMORY[0x1E699DD40];
      goto LABEL_256;
    case 5u:
      v759 = *v275;
      v760 = v1544;
      v761 = v1745;
      AppComposer.libraryGalleryViewBuilder(_:currentRoutingContext:)(v759, v1756, v1544);
      v762 = v1543;
      sub_1E5DFD1CC(v760, v1543, &qword_1ED0729A0, &unk_1E65FA520);
      v763 = *v761;
      v764 = *(v1742 + 32);
      v765 = swift_allocObject();
      v1745 = *(v761 + v764);
      *(v765 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v766 = v1447;
      }

      else
      {

        swift_unknownObjectRetain();
        v766 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C8, &qword_1E65F97D8);
      v767 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      *(&v1469 + 1) = sub_1E6275B5C;
      *&v1469 = v763;
      v768 = sub_1E630B390(v762, v766, MEMORY[0x1E69E7CC0], v767, 0, 0, 0, 0, 0, 0, v1469, v765);

      sub_1E5DFE50C(v762, &qword_1ED0729A0, &unk_1E65FA520);
      swift_getKeyPath();
      v289 = v768;
      v769 = v1723;
      sub_1E65E4EC8();

      sub_1E65DF548();
      (*(v1568 + 8))(v769, v1570);
      v770 = sub_1E65E5C48();

      [v289 setTitle_];

      v771 = sub_1E6307A64();
      [v771 setLargeTitleDisplayMode_];

      sub_1E5DFE50C(v760, &qword_1ED0729A0, &unk_1E65FA520);
      goto LABEL_264;
    case 6u:
      *&v1744 = *v275;
      v787 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v788 = v278;
      v789 = *(v787 + 64);
      (*(v1729 + 4))(v1684, &v275[*(v787 + 48)], v1730);
      (*(v1687 + 32))(v1686, &v275[v789], v1688);
      v790 = v1742;
      v791 = v1745;
      sub_1E617FDC0(*(v1745 + *(v1742 + 36)), *(v1745 + *(v1742 + 36) + 8));
      v792 = sub_1E65DB818();
      v793 = sub_1E65DB838();
      v1743 = sub_1E625B3D4(v793);

      v794 = *(v790 + 32);
      v795 = swift_allocObject();
      v796 = *(v791 + v794);
      *&v1742 = v795;
      *(v795 + 16) = v796;
      swift_unknownObjectRetain();
      sub_1E65DB578();
      sub_1E65E1508();
      sub_1E65E1268();
      v797 = *v788;
      v798 = objc_allocWithZone(sub_1E65E1328());
      v799 = sub_1E65E5C48();

      v800 = sub_1E65E5C48();

      v801 = [v798 initWithServiceType:v799 placement:v800 bag:v797];

      v802 = v801;
      sub_1E65E14E8();
      if (v803)
      {
        v804 = sub_1E65E5C48();
      }

      else
      {
        v804 = 0;
      }

      [v802 setOfferHints_];

      v289 = v802;
      [v289 setAccount_];
      [v289 setAnonymousMetrics_];
      v1158 = sub_1E625E194(v1743);
      if (!v1158)
      {
        v1158 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      sub_1E625B10C(v1158);

      v1159 = sub_1E65E5AF8();

      [v289 setMetricsOverlay_];

      sub_1E65DB588();
      v1160 = sub_1E65E5C48();

      [v289 setMediaClientIdentifier_];

      v1161 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v1162 = sub_1E65E6348();

      [v289 setClientInfo_];

      v1163 = sub_1E65E1308();
      v1740 = type metadata accessor for AppComposer;
      v1164 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1756, &aBlock);
      v1165 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v1166 = &v1737[v1165 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1167 = (v1166 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1168 = swift_allocObject();
      v1739 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v1164, v1168 + v1165, type metadata accessor for AppComposer);
      v1169 = v1743;
      *(v1168 + v1166) = v1743;
      sub_1E5DF599C(&aBlock, v1168 + v1167);

      sub_1E65E13A8();

      v1170 = sub_1E65E1308();
      sub_1E626F020(v1745, v1164, v1740);
      sub_1E5DF650C(v1756, &aBlock);
      v1171 = swift_allocObject();
      sub_1E5E1E4C0(v1164, v1171 + v1165, v1739);
      *(v1171 + v1166) = v1169;
      sub_1E5DF599C(&aBlock, v1171 + v1167);
      sub_1E65E13B8();

      sub_1E65E1318();
      v891 = *(v1729 + 1);
      v892 = v1730;
      v891(v1683, v1730);
      (*(v1687 + 8))(v1686, v1688);
      v893 = v1684;
      goto LABEL_146;
    case 7u:
      v674 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290);
      v675 = v1731;
      v676 = v1676;
      v677 = v1732;
      (*(v1731 + 32))(v1676, &v275[*(v674 + 48)], v1732);
      v678 = v1551;
      (*(v675 + 16))(v1551, v676, v677);
      v679 = v1745;
      v680 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      v681 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v682 = swift_allocObject();
      sub_1E5E1E4C0(v680, v682 + v681, type metadata accessor for AppComposer);
      v683 = (v678 + *(v1545 + 36));
      *v683 = sub_1E626CF38;
      v683[1] = v682;
      v684 = v1550;
      sub_1E5DFD1CC(v678, v1550, &unk_1ED0777F0, &qword_1E65F9690);
      v685 = *v679;
      v686 = *(v1742 + 32);
      v687 = swift_allocObject();
      v1745 = *(v679 + v686);
      *(v687 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v688 = v1445;
      }

      else
      {

        swift_unknownObjectRetain();
        v688 = MEMORY[0x1E69E7CD0];
      }

      v689 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      v690 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C0, &qword_1E65F97D0));
      v289 = sub_1E626D770(v684, v688, MEMORY[0x1E69E7CC0], v689, 0, 0, 0, 0, 0, 0, 0, v685, sub_1E6275B5C, v687);

      sub_1E5DFE50C(v678, &unk_1ED0777F0, &qword_1E65F9690);
      (*(v675 + 8))(v1676, v677);
      (*(v1729 + 1))(v275, v1730);
      goto LABEL_264;
    case 8u:
      *&v1744 = *v275;
      v863 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v864 = v278;
      v865 = *(v863 + 64);
      (*(v1729 + 4))(v1678, &v275[*(v863 + 48)], v1730);
      (*(v1731 + 32))(v1685, &v275[v865], v1732);
      v866 = v1742;
      v867 = v1745;
      sub_1E617FDC0(*(v1745 + *(v1742 + 36)), *(v1745 + *(v1742 + 36) + 8));
      v868 = sub_1E65DB818();
      v869 = sub_1E65DB838();
      v870 = sub_1E625B3D4(v869);

      v871 = *(v866 + 32);
      v872 = swift_allocObject();
      v1742 = *(v867 + v871);
      *(v872 + 16) = v1742;
      v873 = *v864;
      v874 = objc_allocWithZone(sub_1E65E1378());
      swift_unknownObjectRetain();
      v875 = sub_1E65D7448();
      v876 = [v874 initWithBag:v873 URL:v875];

      v289 = v876;
      [v289 setAccount_];
      [v289 setAnonymousMetrics_];
      v877 = sub_1E625E194(v870);
      v1743 = v872;
      v878 = v870;
      if (!v877)
      {
        v877 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      sub_1E625B10C(v877);

      v879 = sub_1E65E5AF8();

      [v289 setMetricsOverlay_];

      sub_1E65DB588();
      v880 = sub_1E65E5C48();

      [v289 setMediaClientIdentifier_];

      v881 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v882 = sub_1E65E6348();

      [v289 setClientInfo_];

      v883 = sub_1E65E1358();
      *&v1742 = type metadata accessor for AppComposer;
      v884 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1756, &aBlock);
      v885 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v886 = (&v1737[v885 + 7] & 0xFFFFFFFFFFFFFFF8);
      v1740 = v886;
      v887 = (v886 + 15) & 0xFFFFFFFFFFFFFFF8;
      v888 = swift_allocObject();
      v1739 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v884, v888 + v885, type metadata accessor for AppComposer);
      *(v886 + v888) = v878;
      sub_1E5DF599C(&aBlock, v888 + v887);

      sub_1E65E13A8();

      v889 = sub_1E65E1358();
      sub_1E626F020(v1745, v884, v1742);
      sub_1E5DF650C(v1756, &aBlock);
      v890 = swift_allocObject();
      sub_1E5E1E4C0(v884, v890 + v885, v1739);
      *(v1740 + v890) = v878;
      sub_1E5DF599C(&aBlock, v890 + v887);
      sub_1E65E13B8();

      sub_1E65E1368();
      v891 = *(v1729 + 1);
      v892 = v1730;
      v891(v1677, v1730);
      (*(v1731 + 8))(v1685, v1732);
      v893 = v1678;
LABEL_146:
      v891(v893, v892);
      goto LABEL_264;
    case 9u:
      v539 = *v275;
      v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v541 = v278;
      v542 = *(v540 + 64);
      (*(v1729 + 4))(v1681, &v275[*(v540 + 48)], v1730);
      v1739 = *(v1731 + 32);
      (v1739)(v1718, &v275[v542], v1732);
      v543 = v1742;
      v544 = v1745;
      sub_1E617FDC0(*(v1745 + *(v1742 + 36)), *(v1745 + *(v1742 + 36) + 8));
      v545 = sub_1E65DB838();
      v546 = sub_1E625B3D4(v545);

      v547 = *(v543 + 32);
      v548 = swift_allocObject();
      v1744 = *(v544 + v547);
      v1743 = v548;
      *(v548 + 16) = v1744;
      v549 = objc_opt_self();
      swift_unknownObjectRetain();
      v550 = [v549 currentProcess];
      sub_1E65DB598();
      v551 = sub_1E65E6348();

      v552 = *v541;
      v553 = objc_allocWithZone(sub_1E65E12F8());
      *&v1744 = v539;
      v1740 = v551;
      v289 = [v553 initWithBag:v552 account:v539 clientInfo:v551];
      *&v1742 = v546;
      if (!sub_1E625E194(v546))
      {
        sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      v554 = v1623;
      v555 = sub_1E65E5AF8();

      [v289 setMetricsOverlay_];

      v556 = v1718;
      sub_1E63265A8(v554);
      v557 = v1731;
      v558 = *(v1731 + 48);
      v559 = v1732;
      if (v558(v554, 1, v1732) == 1)
      {
        v560 = *(v557 + 16);
        v561 = v1668;
        v560(v1668, v556, v559);
        v562 = v558(v554, 1, v559);
        v563 = v1739;
        if (v562 != 1)
        {
          sub_1E5DFE50C(v554, &qword_1ED072340, &qword_1E65EA410);
        }
      }

      else
      {
        v561 = v1668;
        v563 = v1739;
        (v1739)(v1668, v554, v559);
      }

      v1108 = sub_1E65D7448();
      v1109 = [v289 loadURL_];

      v1110 = v561;
      v1111 = v1731;
      v1112 = v1721;
      (*(v1731 + 16))(v1721, v1110, v559);
      v1113 = (*(v1111 + 80) + 16) & ~*(v1111 + 80);
      v1114 = swift_allocObject();
      (v563)(v1114 + v1113, v1112, v559);
      *&v1753 = sub_1E6271D70;
      *(&v1753 + 1) = v1114;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v1752 = sub_1E625E2DC;
      *(&v1752 + 1) = &block_descriptor_8;
      v1115 = _Block_copy(&aBlock);

      [v1109 addFinishBlock_];
      _Block_release(v1115);

      v1116 = sub_1E65E12D8();
      v1117 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1756, &aBlock);
      v1118 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v1119 = &v1737[v1118 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1120 = swift_allocObject();
      sub_1E5E1E4C0(v1117, v1120 + v1118, type metadata accessor for AppComposer);
      *(v1120 + v1119) = v1742;
      sub_1E5DF599C(&aBlock, v1120 + ((v1119 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_1E65E1338();

      sub_1E65E12E8();
      v1121 = *(v1111 + 8);
      v1121(v1668, v559);
      v1122 = *(v1729 + 1);
      v1123 = v1730;
      v1122(v1680, v1730);
      v1121(v1718, v559);
      v1122(v1681, v1123);
      goto LABEL_264;
    case 0xAu:
      v805 = *v275;
      v806 = *(v275 + 1);
      if (v279 < 2)
      {
        v1743 = type metadata accessor for AppComposer;
        v807 = v1741;
        sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
        v808 = *(v1736 + 80);
        v1727 = &v1737[(v808 + 16) & ~v808];
        v809 = (v808 + 16) & ~v808;
        v1730 = v809;
        v1728 = v808 | 7;
        v810 = (v1727 + 7) & 0xFFFFFFFFFFFFFFF8;
        v811 = swift_allocObject();
        v1729 = type metadata accessor for AppComposer;
        sub_1E5E1E4C0(v807, v811 + v809, type metadata accessor for AppComposer);
        v812 = (v811 + v810);
        *v812 = v805;
        v812[1] = v806;

        sub_1E61F84B0(v805, v806, sub_1E6270D58, v811, &aBlock);

        AppComposer.modalityDetailViewBuilder(identifier:currentRoutingContext:)(v805, v806, v1756, v1666);
        v813 = v805;
        v1732 = v805;
        v814 = v1733;
        sub_1E65D76E8();
        v815 = v806;
        v816 = v1647;
        *v1647 = v813;
        *(v816 + 8) = v815;
        *&v1744 = v815;
        *(v816 + 16) = 4;
        swift_storeEnumTagMultiPayload();

        v817 = sub_1E6200DD8(v816, v814, &aBlock);
        sub_1E5DFE50C(v816, &unk_1ED0776E0, &qword_1E65EDC00);
        v1737 = *(v1735 + 2);
        (v1737)(v1701, v814, v1734);
        v818 = sub_1E65E4BA8();
        v819 = v1725;
        *v1725 = v818;
        *(v819 + 1) = v820;
        v1723 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v821 = sub_1E65E4998();
        v1726 = sub_1E604C89C();

        v822 = v1702;
        v1724 = v817;
        sub_1E65DE568();
        *v822 = v821;
        v823 = v1744;
        *v816 = v1732;
        *(v816 + 8) = v823;
        *(v816 + 16) = 4;
        swift_storeEnumTagMultiPayload();
        sub_1E626F020(v1745, v1741, v1743);
        sub_1E5DFD1CC(v816, v1706, &unk_1ED0776E0, &qword_1E65EDC00);
        v824 = v1734;
        (v1737)(v1703, v814, v1734);
        v1743 = aBlock;
        v1737 = *(&v1752 + 1);
        v1736 = *(&v1753 + 1);
        v1732 = *(&v1754 + 1);
        v1731 = *(&v1755[0] + 1);
        v825 = &v1727[*(v1642 + 80)] & ~*(v1642 + 80);
        v826 = v1735;
        v827 = (v1643 + *(v1735 + 80) + v825) & ~*(v1735 + 80);
        v828 = swift_allocObject();
        sub_1E5E1E4C0(v1741, v828 + v1730, v1729);
        sub_1E5FAB460(v1706, v828 + v825, &unk_1ED0776E0, &qword_1E65EDC00);
        v826[4](v828 + v827, v1703, v824);
        v829 = (v828 + ((v235 + v827 + 7) & 0xFFFFFFFFFFFFFFF8));
        v830 = v1754;
        v829[2] = v1753;
        v829[3] = v830;
        v829[4] = v1755[0];
        v831 = v1752;
        *v829 = aBlock;
        v829[1] = v831;

        swift_unknownObjectRetain();

        v832 = v1648;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v816, &unk_1ED0776E0, &qword_1E65EDC00);
        v833 = v1650;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280, MEMORY[0x1E699CAC8]);
        sub_1E6275330(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
        v834 = v1656;
        v835 = v1651;
        v836 = v1653;
        sub_1E65E47D8();
        (*(v1652 + 8))(v833, v836);
        (*(v1649 + 8))(v832, v835);
        v837 = sub_1E65E49C8();
        KeyPath = swift_getKeyPath();
        *&v1748 = v837;
        v839 = sub_1E65E3D08();
        v840 = v1655;
        v841 = (v834 + *(v1655 + 36));
        *v841 = KeyPath;
        v841[1] = v839;
        v842 = *MEMORY[0x1E697E6E8];
        v843 = sub_1E65E3DD8();
        v844 = v1657;
        (*(*(v843 - 1) + 104))(v1657, v842, v843);
        sub_1E6275330(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
        if (sub_1E65E5B98())
        {
          v845 = &v1723[v1725];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
          v846 = v1633;
          sub_1E65E4848();
          sub_1E5DFE50C(v844, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v834, &unk_1ED0776C0, &qword_1E65F9648);
          v847 = v1702;
          v848 = v1635;
          sub_1E5DFD1CC(v1702, v1635, &unk_1ED0776D0, &qword_1E65F9650);
          v849 = v1637;
          v850 = *(v1637 + 16);
          v851 = v1636;
          v852 = v1638;
          v850(v1636, v846, v1638);
          sub_1E5DFD1CC(v848, v845, &unk_1ED0776D0, &qword_1E65F9650);
          v853 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v850(&v845[*(v853 + 48)], v851, v852);
          v854 = *(v849 + 8);
          v854(v846, v852);
          sub_1E5DFE50C(v847, &unk_1ED0776D0, &qword_1E65F9650);
          v854(v851, v852);
          sub_1E5DFE50C(v848, &unk_1ED0776D0, &qword_1E65F9650);
          v855 = v1725;
          v856 = (v1725 + *(v1632 + 36));
          v857 = v1724;
          *v856 = sub_1E6275B64;
          v856[1] = v857;
          v858 = type metadata accessor for BarButtonItem(0);
          v856[2] = 0;
          v856[3] = 0;
          v859 = objc_allocWithZone(v858);

          v860 = sub_1E625BAB8(v1701, v855, &qword_1ED0770B8, &unk_1E65FA400, sub_1E627468C);

          (*(v1735 + 1))(v1733, v1734);
          sub_1E5DFD1CC(v1666, v1630, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v844 = swift_allocObject();
          *(v844 + 16) = xmmword_1E65EA660;
          *(v844 + 32) = v860;
          v861 = v860;
          v862 = sub_1E65E4B48();
          *&v1744 = v861;
          if (v862)
          {
            v843 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v833 = 0;
          }

          else
          {
            v843 = [objc_opt_self() blackColor];
            v833 = 3;
          }

          v1395 = v1745;
          v832 = *v1745;
          v1396 = *(v1742 + 32);
          v840 = swift_allocObject();
          v1745 = *(v1395 + v1396);
          *(v840 + 16) = v1745;
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
            goto LABEL_230;
          }

          goto LABEL_292;
        }

        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1397 = v1449;
          goto LABEL_231;
        }

LABEL_230:

        swift_unknownObjectRetain();
        v1397 = MEMORY[0x1E69E7CD0];
LABEL_231:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
        v1398 = v1739;
        (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
        *(&v1476 + 1) = sub_1E6275B5C;
        *&v1476 = v832;
        v1399 = v1630;
        v289 = sub_1E630B390(v1630, v1397, v844, v1398, 0, 0, v843, v833, 1, 0, v1476, v840);

        v290 = &qword_1ED0770C0;
        v291 = &unk_1E65FA410;
        sub_1E5DFE50C(v1399, &qword_1ED0770C0, &unk_1E65FA410);

        swift_unknownObjectRelease();
        v1303 = v1666;
LABEL_236:
        sub_1E5DFE50C(v1303, v290, v291);
        goto LABEL_264;
      }

      if (v279 != 3)
      {
        goto LABEL_336;
      }

      v1304 = v1745;
      v1305 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1756, &aBlock);
      v1306 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v1307 = &v1737[v1306 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1308 = swift_allocObject();
      sub_1E5E1E4C0(v1305, v1308 + v1306, type metadata accessor for AppComposer);
      v1309 = (v1308 + v1307);
      *v1309 = v805;
      v1309[1] = v806;
      sub_1E5DF599C(&aBlock, v1308 + ((v1307 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1310 = sub_1E65E4438();
      v1311 = *v1304;
      v1312 = *(v1742 + 32);
      v1313 = swift_allocObject();
      v1745 = *(v1304 + v1312);
      *(v1313 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1314 = v1458;
      }

      else
      {

        swift_unknownObjectRetain();
        v1314 = MEMORY[0x1E69E7CD0];
      }

      v1315 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1291 = sub_1E6275404(sub_1E6270D40, v1308, v1310, v1314, MEMORY[0x1E69E7CC0], v1315, 0, 0, 0, 0, 0, 0, 0, v1311, sub_1E6275B5C, v1313, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1292 = v1712;
      if (!v1712)
      {
        goto LABEL_220;
      }

      v1316 = v1712;
      v1317 = v1291;
      if (![v1316 isViewLoaded])
      {
        goto LABEL_221;
      }

      v1295 = [v1316 view];
      if (!v1295)
      {
LABEL_323:
        __break(1u);
        goto LABEL_324;
      }

      goto LABEL_219;
    case 0xBu:
      v333 = v1546;
      AppComposer.onboardingModalityDetailViewBuilder(modalityIdentifier:currentRoutingContext:)(*v275, *(v275 + 1), v1756, v1546);

      v300 = &qword_1ED077108;
      v301 = &unk_1E65FA510;
      sub_1E5DFD1CC(v333, v1547, &qword_1ED077108, &unk_1E65FA510);
      v334 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AB0, &unk_1E65FA790));
      v289 = sub_1E65E18F8();
      v314 = v333;
      goto LABEL_124;
    case 0xCu:
      v536 = *v275;
      v537 = *(v275 + 1);
      sub_1E5F94E00(*(v275 + 2), v275[24]);
      type metadata accessor for AppEnvironment(0);
      v538 = InteropService.makePrivacySplashViewController.getter();
      v289 = v538(v536, v537);

      goto LABEL_263;
    case 0xDu:
      v773 = *v275;
      v772 = *(v275 + 1);
      v774 = v1745;
      v775 = v279;
      sub_1E637E93C(*v275, v772, &aBlock);
      v776 = v1548;
      sub_1E64970E4(v773, v772, v1756, &aBlock, v1548);
      v777 = sub_1E626FB98();
      v778 = v1682;
      sub_1E6012F9C(v1549, v777);
      sub_1E5DFE50C(v776, &qword_1ED077100, &unk_1E65FA500);
      v779 = v1669;
      sub_1E65D76E8();
      v780 = v1670;
      sub_1E65D76E8();
      sub_1E5DFD1CC(v778, v1679, &unk_1ED0777E0, &qword_1E65F9688);
      v781 = sub_1E623EEE8(v773, v772, v779, v780, &aBlock);
      v782 = v775;
      v783 = v781;
      if (v782 >= 2)
      {
        v786 = v1735;
        if (v782 != 3)
        {
          goto LABEL_329;
        }

        v784 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v784 = swift_allocObject();
        *(v784 + 16) = xmmword_1E65F32F0;
        *(v784 + 32) = sub_1E623F674(v773, v772, v779, &aBlock);
        *(v784 + 40) = [objc_opt_self() flexibleSpaceItem];
        v785 = sub_1E62408B4(v773, v772, v780, &aBlock);

        *(v784 + 48) = v785;
        v786 = v1735;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771B8, &qword_1E65F9750);
      v1296 = *v774;
      v1297 = *(v1742 + 32);
      v1298 = swift_allocObject();
      v1745 = *(v774 + v1297);
      *(v1298 + 16) = v1745;
      v1299 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);

      swift_unknownObjectRetain();
      *(&v1474 + 1) = sub_1E6275B5C;
      *&v1474 = v1296;
      v1300 = v1679;
      v289 = sub_1E630B390(v1679, v783, v784, v1299, 0, 0, 0, 0, 1, 0, v1474, v1298);

      v290 = &unk_1ED0777E0;
      v291 = &qword_1E65F9688;
      sub_1E5DFE50C(v1300, &unk_1ED0777E0, &qword_1E65F9688);
      swift_unknownObjectRelease();

      v1301 = *(v786 + 1);
      v1302 = v1734;
      v1301(v1670, v1734);
      v1301(v1669, v1302);
      v1303 = v1682;
      goto LABEL_236;
    case 0xEu:
    case 0x13u:
    case 0x18u:
    case 0x26u:
    case 0x28u:
      goto LABEL_328;
    case 0xFu:
      v925 = *v275;
      v926 = *(v275 + 1);
      if (v279 < 2)
      {
        v1743 = type metadata accessor for AppComposer;
        v927 = v1741;
        sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
        v928 = *(v1736 + 80);
        v1727 = &v1737[(v928 + 16) & ~v928];
        v929 = (v928 + 16) & ~v928;
        v1730 = v929;
        v1728 = v928 | 7;
        v930 = (v1727 + 7) & 0xFFFFFFFFFFFFFFF8;
        v931 = swift_allocObject();
        v1729 = type metadata accessor for AppComposer;
        sub_1E5E1E4C0(v927, v931 + v929, type metadata accessor for AppComposer);
        v932 = (v931 + v930);
        *v932 = v925;
        v932[1] = v926;

        sub_1E61F84B0(v925, v926, sub_1E626FD38, v931, &aBlock);

        AppComposer.trainerDetailViewBuilder(identifier:currentRoutingContext:)(v925, v926, v1756, v1667);
        v933 = v925;
        v1732 = v925;
        v934 = v1733;
        sub_1E65D76E8();
        v935 = v926;
        v936 = v1647;
        *v1647 = v933;
        *(v936 + 8) = v935;
        *&v1744 = v935;
        *(v936 + 16) = 3;
        swift_storeEnumTagMultiPayload();

        v937 = sub_1E6200DD8(v936, v934, &aBlock);
        sub_1E5DFE50C(v936, &unk_1ED0776E0, &qword_1E65EDC00);
        v1737 = *(v1735 + 2);
        (v1737)(v1701, v934, v1734);
        v938 = sub_1E65E4BA8();
        v939 = v1725;
        *v1725 = v938;
        *(v939 + 1) = v940;
        v1723 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v941 = sub_1E65E4998();
        v1726 = sub_1E604C89C();

        v942 = v1702;
        v1724 = v937;
        sub_1E65DE568();
        *v942 = v941;
        v943 = v1744;
        *v936 = v1732;
        *(v936 + 8) = v943;
        *(v936 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        sub_1E626F020(v1745, v1741, v1743);
        sub_1E5DFD1CC(v936, v1706, &unk_1ED0776E0, &qword_1E65EDC00);
        v944 = v1734;
        (v1737)(v1703, v934, v1734);
        v1743 = aBlock;
        v1737 = *(&v1752 + 1);
        v1736 = *(&v1753 + 1);
        v1732 = *(&v1754 + 1);
        v1731 = *(&v1755[0] + 1);
        v945 = &v1727[*(v1642 + 80)] & ~*(v1642 + 80);
        v946 = v1735;
        v947 = (v1643 + *(v1735 + 80) + v945) & ~*(v1735 + 80);
        v948 = swift_allocObject();
        sub_1E5E1E4C0(v1741, v948 + v1730, v1729);
        sub_1E5FAB460(v1706, v948 + v945, &unk_1ED0776E0, &qword_1E65EDC00);
        v946[4](v948 + v947, v1703, v944);
        v949 = (v948 + ((v235 + v947 + 7) & 0xFFFFFFFFFFFFFFF8));
        v950 = v1754;
        v949[2] = v1753;
        v949[3] = v950;
        v949[4] = v1755[0];
        v951 = v1752;
        *v949 = aBlock;
        v949[1] = v951;

        swift_unknownObjectRetain();

        v832 = v1648;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v936, &unk_1ED0776E0, &qword_1E65EDC00);
        v833 = v1650;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280, MEMORY[0x1E699CAC8]);
        sub_1E6275330(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
        v952 = v1656;
        v953 = v1651;
        v954 = v1653;
        sub_1E65E47D8();
        (*(v1652 + 8))(v833, v954);
        (*(v1649 + 8))(v832, v953);
        v955 = sub_1E65E49C8();
        v956 = swift_getKeyPath();
        *&v1748 = v955;
        v957 = sub_1E65E3D08();
        v840 = v1655;
        v958 = (v952 + *(v1655 + 36));
        *v958 = v956;
        v958[1] = v957;
        v959 = *MEMORY[0x1E697E6E8];
        v843 = sub_1E65E3DD8();
        v844 = v1657;
        (*(*(v843 - 1) + 104))(v1657, v959, v843);
        sub_1E6275330(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
        if (sub_1E65E5B98())
        {
          v960 = &v1723[v1725];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
          v961 = v1633;
          sub_1E65E4848();
          sub_1E5DFE50C(v844, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v952, &unk_1ED0776C0, &qword_1E65F9648);
          v962 = v1702;
          v963 = v1635;
          sub_1E5DFD1CC(v1702, v1635, &unk_1ED0776D0, &qword_1E65F9650);
          v964 = v1637;
          v965 = *(v1637 + 16);
          v966 = v1636;
          v967 = v1638;
          v965(v1636, v961, v1638);
          sub_1E5DFD1CC(v963, v960, &unk_1ED0776D0, &qword_1E65F9650);
          v968 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v965(&v960[*(v968 + 48)], v966, v967);
          v969 = *(v964 + 8);
          v969(v961, v967);
          sub_1E5DFE50C(v962, &unk_1ED0776D0, &qword_1E65F9650);
          v969(v966, v967);
          sub_1E5DFE50C(v963, &unk_1ED0776D0, &qword_1E65F9650);
          v970 = v1725;
          v971 = (v1725 + *(v1632 + 36));
          v972 = v1724;
          *v971 = sub_1E626FECC;
          v971[1] = v972;
          v973 = type metadata accessor for BarButtonItem(0);
          v971[2] = 0;
          v971[3] = 0;
          v974 = objc_allocWithZone(v973);

          v975 = sub_1E625BAB8(v1701, v970, &qword_1ED0770B8, &unk_1E65FA400, sub_1E627468C);

          (*(v1735 + 1))(v1733, v1734);
          sub_1E5DFD1CC(v1667, v1631, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v976 = swift_allocObject();
          *(v976 + 16) = xmmword_1E65EA660;
          *(v976 + 32) = v975;
          v977 = v975;
          v978 = sub_1E65E4B48();
          *&v1744 = v977;
          if (v978)
          {
            v979 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v980 = 0;
          }

          else
          {
            v979 = [objc_opt_self() blackColor];
            v980 = 3;
          }

          v1400 = v1745;
          v1401 = *v1745;
          v1402 = *(v1742 + 32);
          v1403 = swift_allocObject();
          v1745 = *(v1400 + v1402);
          *(v1403 + 16) = v1745;
          if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
          {

            swift_unknownObjectRetain();
            sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
            v1404 = v1450;
          }

          else
          {

            swift_unknownObjectRetain();
            v1404 = MEMORY[0x1E69E7CD0];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
          v1405 = v1739;
          (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
          *(&v1477 + 1) = sub_1E6275B5C;
          *&v1477 = v1401;
          v1406 = v1631;
          v289 = sub_1E630B390(v1631, v1404, v976, v1405, 0, 0, v979, v980, 1, 0, v1477, v1403);

          v290 = &qword_1ED0770C0;
          v291 = &unk_1E65FA410;
          sub_1E5DFE50C(v1406, &qword_1ED0770C0, &unk_1E65FA410);

          swift_unknownObjectRelease();
          v1303 = v1667;
          goto LABEL_236;
        }

        goto LABEL_291;
      }

      if (v279 != 3)
      {
LABEL_336:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1E65E68A8();
        MEMORY[0x1E694D7C0](0xD000000000000026, 0x80000001E6615040);
        LOBYTE(v1748) = 2;
        sub_1E65E69B8();
        goto LABEL_329;
      }

      v1331 = v1745;
      v1332 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1756, &aBlock);
      v1333 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v1334 = &v1737[v1333 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1335 = swift_allocObject();
      sub_1E5E1E4C0(v1332, v1335 + v1333, type metadata accessor for AppComposer);
      v1336 = (v1335 + v1334);
      *v1336 = v925;
      v1336[1] = v926;
      sub_1E5DF599C(&aBlock, v1335 + ((v1334 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1337 = sub_1E65E4438();
      v1338 = *v1331;
      v1339 = *(v1742 + 32);
      v1340 = swift_allocObject();
      v1745 = *(v1331 + v1339);
      *(v1340 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1341 = v1459;
      }

      else
      {

        swift_unknownObjectRetain();
        v1341 = MEMORY[0x1E69E7CD0];
      }

      v1342 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1291 = sub_1E6275404(sub_1E626FD20, v1335, v1337, v1341, MEMORY[0x1E69E7CC0], v1342, 0, 0, 0, 0, 0, 0, 0, v1338, sub_1E6275B5C, v1340, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1292 = v1712;
      if (!v1712)
      {
        goto LABEL_220;
      }

      v1343 = v1712;
      v1344 = v1291;
      if (![v1343 isViewLoaded])
      {
        goto LABEL_221;
      }

      v1295 = [v1343 view];
      if (!v1295)
      {
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      goto LABEL_219;
    case 0x10u:
      v431 = *v275;
      v432 = *(v275 + 1);
      sub_1E65D76E8();
      sub_1E65D76E8();
      sub_1E65D76E8();
      v433 = v431;
      v434 = v1745;
      LODWORD(v1743) = v279;
      v435 = v1745;
      sub_1E632331C(v431, v432, &aBlock);
      v1726 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
      v1720 = swift_allocBox();
      v436 = *v434;
      swift_getKeyPath();
      v437 = v1552;
      sub_1E65E4EC8();

      *&v1748 = v431;
      v1730 = v431;
      *(&v1748 + 1) = v432;
      v438 = v1554;
      sub_1E65E4D78();
      (*(v1553 + 8))(v437, v438);
      v1707 = v436;
      *&v1748 = sub_1E65E4ED8();
      v1732 = type metadata accessor for AppComposer;
      v439 = v1741;
      sub_1E626F020(v435, v1741, type metadata accessor for AppComposer);
      v440 = *(v1736 + 80);
      v1719 = &v1737[(v440 + 16) & ~v440];
      v441 = ((v440 + 16) & ~v440);
      v1729 = v441;
      v1737 = (v440 | 7);
      v442 = (v1719 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1718 = (v442 + 16);
      v443 = swift_allocObject();
      v1736 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v439, v441 + v443, type metadata accessor for AppComposer);
      v444 = (v443 + v442);
      *v444 = v433;
      v444[1] = v432;
      v1731 = v432;
      v445 = swift_allocObject();
      *(v445 + 16) = sub_1E626F228;
      *(v445 + 24) = v443;
      sub_1E65E3BB8();

      v446 = v1555;
      sub_1E65E3BD8();

      v447 = MEMORY[0x1E695BD60];
      sub_1E5FED46C(&unk_1ED077940, &qword_1ED0770E8, &unk_1E65FA4D0, MEMORY[0x1E695BD60]);

      v448 = v1558;
      v449 = v1559;
      sub_1E65E3BE8();

      (*(v1556 + 8))(v446, v449);
      sub_1E5FED46C(&qword_1ED077138, &unk_1ED0777B0, &qword_1E65F9678, MEMORY[0x1E695BDE0]);

      v450 = v1557;
      v451 = v1563;
      sub_1E65E3BD8();

      (*(v1561 + 8))(v448, v451);
      sub_1E5FED46C(&unk_1ED077950, &qword_1ED0770F0, &unk_1E65FA4E0, v447);
      v452 = v1562;
      v1715 = sub_1E65E3BC8();
      (*(v1560 + 8))(v450, v452);
      v453 = v1745;
      v454 = v1741;
      sub_1E626F020(v1745, v1741, v1732);
      sub_1E5DF650C(v1756, &v1748);
      v1726 = aBlock;
      v1725 = *(&v1752 + 1);
      v1723 = *(&v1753 + 1);
      v1721 = *(&v1754 + 1);
      v1716 = *(&v1755[0] + 1);
      v455 = (v442 + 47) & 0xFFFFFFFFFFFFFFF8;
      v456 = swift_allocObject();
      v457 = v1729;
      sub_1E5E1E4C0(v454, v1729 + v456, v1736);
      sub_1E5DF599C(&v1748, &v456[v442]);
      v1712 = v456;
      v458 = &v456[v455];
      v459 = v1730;
      v460 = v1731;
      *v458 = v1730;
      v458[1] = v460;
      v461 = &v456[(v455 + 23) & 0xFFFFFFFFFFFFFFF8];
      v462 = v1755[0];
      *(v461 + 3) = v1754;
      *(v461 + 4) = v462;
      v463 = v1753;
      *(v461 + 1) = v1752;
      *(v461 + 2) = v463;
      *v461 = aBlock;
      v464 = v453;
      v465 = v1727;
      sub_1E626F020(v464, v1727, v1732);
      sub_1E5DF650C(v1756, v1747);
      v1717 = v442;
      v466 = (v442 + 23) & 0xFFFFFFFFFFFFFFF8;
      v467 = swift_allocObject();
      sub_1E5E1E4C0(v465, v457 + v467, v1736);
      v468 = (v467 + v442);
      *v468 = v459;
      v468[1] = v460;
      v1708 = v467;
      sub_1E5DF599C(v1747, v467 + v466);
      v469 = (v467 + ((v466 + 47) & 0xFFFFFFFFFFFFFFF8));
      v470 = v1754;
      v469[2] = v1753;
      v469[3] = v470;
      v469[4] = v1755[0];
      v471 = v1752;
      *v469 = aBlock;
      v469[1] = v471;
      v472 = v1728;
      sub_1E626F020(v1745, v1728, v1732);
      v473 = v1735;
      v474 = v1733;
      v475 = v1734;
      (*(v1735 + 2))(v1733, v1724, v1734);
      sub_1E5DF650C(v1756, v1746);
      v476 = &v1718[*(v473 + 80)] & ~*(v473 + 80);
      v477 = (v235 + v476 + 7) & 0xFFFFFFFFFFFFFFF8;
      v478 = swift_allocObject();
      v479 = v1729;
      v480 = v472;
      v481 = v1736;
      sub_1E5E1E4C0(v480, v1729 + v478, v1736);
      v482 = v478;
      v483 = (v1717 + v478);
      v484 = v1730;
      v485 = v1731;
      *v483 = v1730;
      v483[1] = v485;
      v486 = *(v473 + 4);
      v487 = v482 + v476;
      v488 = v482;
      v1727 = v482;
      v486(v487, v474, v475);
      sub_1E5DF599C(v1746, v488 + v477);
      v489 = (v488 + ((v477 + 47) & 0xFFFFFFFFFFFFFFF8));
      v490 = v1754;
      v489[2] = v1753;
      v489[3] = v490;
      v489[4] = v1755[0];
      v491 = v1752;
      *v489 = aBlock;
      v489[1] = v491;
      v492 = v1745;
      v493 = v1709;
      v494 = v1732;
      sub_1E626F020(v1745, v1709, v1732);
      v495 = swift_allocObject();
      v496 = v479;
      v497 = v479 + v495;
      v498 = v495;
      v1733 = v495;
      v499 = v481;
      sub_1E5E1E4C0(v493, v497, v481);
      v500 = (v1717 + v498);
      v501 = v1731;
      *v500 = v484;
      v500[1] = v501;
      v502 = v1710;
      sub_1E626F020(v492, v1710, v494);
      v503 = swift_allocObject();
      sub_1E5E1E4C0(v502, v496 + v503, v499);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077960, &unk_1E65FA670);
      sub_1E65E3368();
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
      sub_1E626F664();
      sub_1E6275330(&qword_1ED077178, MEMORY[0x1E699EBD8], MEMORY[0x1E699EBD0]);
      v504 = v1593;
      v505 = v1745;
      sub_1E65E3098();
      v506 = sub_1E5FED46C(&unk_1ED0779F0, &unk_1ED077790, &qword_1E65F9668, MEMORY[0x1E699EAF0]);
      v507 = v1599;
      v508 = v1598;
      sub_1E630FCD8(&aBlock, v1598, v506, v1599);
      (*(v1596 + 8))(v504, v508);
      v509 = v1741;
      sub_1E626F020(v505, v1741, v1732);
      v510 = swift_allocObject();
      sub_1E5E1E4C0(v509, v1729 + v510, v1736);
      sub_1E626F9E0();
      v511 = v1605;
      sub_1E6259D5C(sub_1E626CF38, v510, v1600);

      sub_1E5DFE50C(v507, &qword_1ED0770E0, &unk_1E65FA4C0);
      *&v1748 = v1715;
      v512 = swift_allocObject();
      v513 = v1754;
      v512[3] = v1753;
      v512[4] = v513;
      v512[5] = v1755[0];
      v514 = v1752;
      v512[1] = aBlock;
      v512[2] = v514;
      v515 = swift_allocObject();
      *(v515 + 16) = sub_1E626FADC;
      *(v515 + 24) = v512;
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A00, &qword_1E65F9738);
      sub_1E626FB0C();
      sub_1E5FED46C(&qword_1ED077190, &unk_1ED077A00, &qword_1E65F9738, MEMORY[0x1E695BED8]);
      v516 = v1594;
      sub_1E65E4958();

      sub_1E5DFE50C(v511, &unk_1ED0777A0, &qword_1E65F9670);
      v517 = v1714;

      v518 = sub_1E5FED46C(&unk_1ED077A10, &qword_1ED0770F8, &unk_1E65FA4F0, MEMORY[0x1E697C278]);
      v519 = v1595;
      v520 = v1602;
      sub_1E5FEE4C8();
      v521 = v516;
      v522 = v1730;
      sub_1E5DFE50C(v521, &qword_1ED0770F8, &unk_1E65FA4F0);
      v523 = v1597;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v519, &qword_1ED0770F8, &unk_1E65FA4F0);

      v524 = v1665;
      v525 = v520;
      v526 = v1713;
      sub_1E6012F9C(v525, v518);
      v295 = v1731;
      sub_1E5DFE50C(v523, &qword_1ED0770F8, &unk_1E65FA4F0);
      sub_1E5DFD1CC(v524, v1664, &unk_1ED0777D0, &qword_1E65F9680);
      v527 = v1744;
      v297 = v1722;
      v528 = v1711;
      v1741 = sub_1E62F1C0C(v522, v295, v1724, v526, v517, v1711, &aBlock, v505, v1722, v1744);
      if (v1743 >= 2)
      {
        if (v1743 != 3)
        {
          goto LABEL_329;
        }

        v532 = MEMORY[0x1E69E7CC0];
        v533 = v1735;
LABEL_168:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077198, &unk_1E65FA6B0);
        sub_1E65DC308();
        v1240 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v1241 = *(v1742 + 32);
        v1242 = swift_allocObject();
        v1745 = *(v505 + v1241);
        *(v1242 + 16) = v1745;
        v1243 = v1739;
        (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
        v1244 = v1707;

        swift_unknownObjectRetain();
        *(&v1473 + 1) = sub_1E6275B5C;
        *&v1473 = v1244;
        v1245 = v1664;
        v289 = sub_1E630B390(v1664, v1741, v532, v1243, v1240, 0, 0, 0, 1, 0, v1473, v1242);

        sub_1E5DFE50C(v1245, &unk_1ED0777D0, &qword_1E65F9680);
        v1246 = sub_1E6307A64();
        [v1246 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        sub_1E5DFE50C(v1665, &unk_1ED0777D0, &qword_1E65F9680);
        v1247 = *(v533 + 1);
        v1248 = v1734;
        v1247(v1714, v1734);
        v1247(v1713, v1248);
        v1247(v1724, v1248);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A20, &qword_1E65F9740);
        v529 = swift_allocObject();
        v529[4] = sub_1E62F3D80(v522, v295, v526, v528, &aBlock, v505, v297, v527);
        v292 = (v529 + 4);
        v529[5] = [objc_opt_self() flexibleSpaceItem];
        v530 = sub_1E62E68EC(v522, v295, v517, &aBlock);

        v531 = 0;
        v529[6] = v530;
        v532 = MEMORY[0x1E69E7CC0];
        *&v1748 = MEMORY[0x1E69E7CC0];
        v294 = 3;
        v533 = v1735;
LABEL_27:
        if (v531 <= 3)
        {
          v534 = 3;
        }

        else
        {
          v534 = v531;
        }

        while (1)
        {
          if (v531 == 3)
          {
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771A0, &unk_1E65FA6C0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            goto LABEL_168;
          }

          if (v534 == v531)
          {
            break;
          }

          v535 = v529[v531++ + 4];
          if (v535)
          {
            v297 = v535;
            MEMORY[0x1E694D8F0]();
            if (*((v1748 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1748 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E65E5F68();
              v533 = v1735;
            }

            sub_1E65E5FA8();
            v532 = v1748;
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_270:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v298 = v1439;
        }

        else
        {
LABEL_7:

          swift_unknownObjectRetain();
          v298 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AD0, &unk_1E65FA7A0);
        v299 = v1739;
        (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
        *(&v1464 + 1) = sub_1E6275B5C;
        *&v1464 = v295;
        v289 = sub_1E630B390(v294, v298, MEMORY[0x1E69E7CC0], v299, 0, 0, 0, 0, 0, 0, v1464, v297);

        v300 = &unk_1ED077800;
        v301 = &qword_1E65F9698;
LABEL_123:
        sub_1E5DFE50C(v294, v300, v301);
        v1107 = sub_1E6307A64();
        [v1107 setLargeTitleDisplayMode_];

        v314 = v292;
LABEL_124:
        sub_1E5DFE50C(v314, v300, v301);
      }

LABEL_264:
      __swift_destroy_boxed_opaque_existential_1(v1756);
      return v289;
    case 0x11u:

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v999 = [objc_opt_self() bundleForClass_];
      v1000 = v1745;
      v1001 = *v1745;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v1002;
      sub_1E5F9AEA8();
      v1003 = v1689;
      sub_1E65E41C8();
      v1004 = v1566;
      v1005 = v1658;
      v1715[2](v1566, v1003, v1658);
      v1006 = *(v1742 + 32);
      v1007 = swift_allocObject();
      v1745 = *(v1000 + v1006);
      *(v1007 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1008 = v1448;
      }

      else
      {

        swift_unknownObjectRetain();
        v1008 = MEMORY[0x1E69E7CD0];
      }

      v1009 = v1731;
      v1010 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0) + 48);
      v1011 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      v1012 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v289 = sub_1E626DF90(v1004, v1008, MEMORY[0x1E69E7CC0], v1011, 0, 0, 0, 0, 0, 0, 0, v1001, sub_1E6275B5C, v1007);

      (v1715[1])(v1689, v1005);
      (*(v1009 + 8))(&v275[v1010], v1732);
      goto LABEL_264;
    case 0x12u:
      v691 = *v275;
      v692 = *(v275 + 1);
      v693 = v275[16];
      v694 = sub_1E65DAE38();
      if (v694 == sub_1E65DAE38())
      {
        v695 = 30;
      }

      else
      {
        v695 = 24;
      }

      v696 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      v697 = (*(v1736 + 80) + 33) & ~*(v1736 + 80);
      v698 = swift_allocObject();
      *(v698 + 16) = v691;
      *(v698 + 24) = v692;
      *(v698 + 32) = v693;
      sub_1E5E1E4C0(v696, v698 + v697, type metadata accessor for AppComposer);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077130, &qword_1E65F96C8));
      sub_1E626F21C(v691, v692, v693);
      v289 = sub_1E625E354(v695, &unk_1E65FA600, v698, 0, 0);
      [v289 setModalPresentationStyle_];
      sub_1E5F94E14(v691, v692, v693);
      goto LABEL_264;
    case 0x14u:
      v634 = *(v275 + 1);
      v1739 = *v275;
      v1738 = v634;
      v635 = *(v275 + 3);
      v1743 = *(v275 + 2);
      *&v1742 = v635;
      v1740 = *(v275 + 4);
      v636 = *(v275 + 6);
      v637 = *(v275 + 7);
      if (v279 > 1)
      {
        if (v279 != 3)
        {
          goto LABEL_329;
        }

        v638 = 24;
      }

      else if (v279)
      {
        v638 = 30;
      }

      else
      {
        v638 = 24;
        if (v275[40] < 2u)
        {
          v638 = 2;
        }
      }

      *&v1744 = v638;
      v1249 = v1737;
      v1250 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      v1251 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v1252 = &v1249[v1251 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1253 = (v1252 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1254 = (v1253 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1255 = (v1254 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1256 = swift_allocObject();
      sub_1E5E1E4C0(v1250, v1256 + v1251, type metadata accessor for AppComposer);
      v1257 = (v1256 + v1252);
      v1258 = v1738;
      *v1257 = v1739;
      v1257[1] = v1258;
      v1259 = (v1256 + v1253);
      v1260 = v1742;
      *v1259 = v1743;
      v1259[1] = v1260;
      *(v1256 + v1254) = v1740;
      *(v1256 + v1255) = v636;
      *(v1256 + ((v1255 + 15) & 0xFFFFFFFFFFFFFFF8)) = v637;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077910, &qword_1E65F96C0));
      v1261 = v637;
      v289 = sub_1E625E354(v1744, &unk_1E65FA5F0, v1256, 0, 0);
      [v289 setModalPresentationStyle_];

      goto LABEL_264;
    case 0x15u:
      v907 = *v275;
      v908 = *(v275 + 1);
      v909 = *(v275 + 2);
      v910 = *(v275 + 3);
      v911 = *(v275 + 4);
      v912 = v275[40];
      v913 = *(v275 + 6);
      v914 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0);
      sub_1E5FAB460(&v275[*(v914 + 112)], v1719, &unk_1ED077780, &unk_1E66097F0);
      v1743 = v909;
      *&v1742 = v910;
      v1740 = v911;
      v1739 = v907;
      v1738 = v908;
      if (v279 > 1)
      {
        v915 = v1745;
        v916 = v1741;
        if (v279 != 3)
        {
          goto LABEL_329;
        }

        v917 = 24;
      }

      else
      {
        v915 = v1745;
        v916 = v1741;
        if (v279)
        {
          v917 = 30;
        }

        else
        {
          v917 = 24;
          if (v912 < 2)
          {
            v917 = 2;
          }
        }
      }

      *&v1744 = v917;
      sub_1E626F020(v915, v916, type metadata accessor for AppComposer);
      v1318 = v1567;
      sub_1E5DFD1CC(v1719, v1567, &unk_1ED077780, &unk_1E66097F0);
      v1319 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v1320 = &v1737[v1319 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1321 = (v1320 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1322 = (v1321 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1323 = (v1322 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1324 = (*(v1564 + 80) + v1323 + 8) & ~*(v1564 + 80);
      v1325 = swift_allocObject();
      sub_1E5E1E4C0(v916, v1325 + v1319, type metadata accessor for AppComposer);
      v1326 = (v1325 + v1320);
      v1327 = v1738;
      *v1326 = v1739;
      v1326[1] = v1327;
      v1328 = (v1325 + v1321);
      v1329 = v1742;
      *v1328 = v1743;
      v1328[1] = v1329;
      *(v1325 + v1322) = v1740;
      *(v1325 + v1323) = v913;
      sub_1E5FAB460(v1318, v1325 + v1324, &unk_1ED077780, &unk_1E66097F0);
      v1330 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077080, qword_1E65F94F8));
      v289 = sub_1E625E354(v1744, &unk_1E65FA5E0, v1325, 0, 0);
      [v289 setModalPresentationStyle_];
      sub_1E5DFE50C(v1719, &unk_1ED077780, &unk_1E66097F0);
      goto LABEL_264;
    case 0x16u:
      v581 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v582 = v581[12];
      v583 = &v275[v581[16]];
      v585 = *v583;
      v584 = *(v583 + 1);
      *&v1745 = v585;
      *&v1744 = v584;
      v586 = v581[20];
      v587 = &v275[v581[24]];
      v589 = *v587;
      v588 = *(v587 + 1);
      v1743 = v589;
      *&v1742 = v588;
      v590 = &v275[v581[28]];
      v591 = v590[1];
      v1741 = *v590;
      v592 = v581[32];
      v593 = v581[36];
      v594 = *(v275 + 1);
      aBlock = *v275;
      v1752 = v594;
      *&v1753 = *(v275 + 4);
      v595 = v1731;
      v596 = v1721;
      (*(v1731 + 32))(v1721, &v275[v582], v1732);
      v597 = v1569;
      sub_1E5FAB460(&v275[v586], v1569, &qword_1ED076220, &unk_1E65FA4A0);
      v598 = &v275[v592];
      v599 = v1572;
      sub_1E5FAB460(v598, v1572, &unk_1ED077770, &unk_1E660C190);
      v600 = &v275[v593];
      v601 = v1576;
      sub_1E5FAB460(v600, v1576, &unk_1ED07B500, &qword_1E65F0EE0);
      type metadata accessor for AppEnvironment(0);
      v602 = PlayerService.makeStandardPlayerViewController.getter();
      v289 = v602(&aBlock, v596, v1745, v1744, v597, v1743, v1742, v1741, v591, v601, v599);

      sub_1E5DFE50C(v601, &unk_1ED07B500, &qword_1E65F0EE0);
      sub_1E5DFE50C(v599, &unk_1ED077770, &unk_1E660C190);
      sub_1E5DFE50C(v597, &qword_1ED076220, &unk_1E65FA4A0);
      (*(v595 + 8))(v1721, v1732);
      sub_1E6009FC0(&aBlock);
      goto LABEL_264;
    case 0x17u:
      v603 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v604 = v603[12];
      v605 = &v275[v603[16]];
      v606 = *(v605 + 1);
      *&v1745 = *v605;
      v607 = v1573;
      v608 = v275[v603[20]];
      v609 = v1571;
      (*(v1573 + 32))(v1571, v275, v1690);
      v610 = v1577;
      v611 = v1575;
      v612 = v1579;
      (*(v1577 + 32))(v1575, &v275[v604], v1579);
      type metadata accessor for AppEnvironment(0);
      v613 = PlayerService.makeTipPlayerViewController.getter();
      v614 = v1745;
      v289 = v613(v609, v611, v1745, v606, v608);

      sub_1E61B73EC(v614, v606);
      (*(v610 + 8))(v611, v612);
      (*(v607 + 8))(v609, v1690);
      goto LABEL_264;
    case 0x19u:
      if (v279 < 2)
      {
        v753 = *v275;
        v754 = (v1745 + *(v1742 + 36));
        v755 = *v754;
        v756 = v754[1];
        sub_1E5DFD1CC(v1745 + *(v1742 + 40), &v1752 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1756, v1755);
        *&aBlock = v755;
        *(&aBlock + 1) = v756;
        LOBYTE(v1752) = v279;
        type metadata accessor for AppEnvironment(0);
        sub_1E5FA9D34(v755, v756);
        active = InteropService.makeActiveWorkoutPlanViewController.getter();
        v1749 = &type metadata for CatalogPageRoutingContextNavigator;
        v1750 = sub_1E61379FC();
        *&v1748 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1748 + 16);
        v758 = active(v753, v755, v756, &v1748);
LABEL_117:
        v289 = v758;

        sub_1E6137AAC(&aBlock);
LABEL_118:
        __swift_destroy_boxed_opaque_existential_1(&v1748);
        goto LABEL_264;
      }

      v1280 = v1745;
      if (v279 != 3)
      {
        goto LABEL_329;
      }

      v1281 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1756, &aBlock);
      v1282 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v1283 = &v1737[v1282 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1284 = swift_allocObject();
      sub_1E5E1E4C0(v1281, v1284 + v1282, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1284 + v1283);
      v1285 = sub_1E65E4438();
      v1286 = *v1280;
      v1287 = *(v1742 + 32);
      v1288 = swift_allocObject();
      v1745 = *(v1280 + v1287);
      *(v1288 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1289 = v1457;
      }

      else
      {

        swift_unknownObjectRetain();
        v1289 = MEMORY[0x1E69E7CD0];
      }

      v1290 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1291 = sub_1E6275404(sub_1E626F164, v1284, v1285, v1289, MEMORY[0x1E69E7CC0], v1290, 0, 0, 0, 0, 0, 0, 0, v1286, sub_1E6275B5C, v1288, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1292 = v1712;
      if (!v1712)
      {
        goto LABEL_220;
      }

      v1293 = v1712;
      v1294 = v1291;
      if (![v1293 isViewLoaded])
      {
        goto LABEL_221;
      }

      v1295 = [v1293 view];
      if (!v1295)
      {
LABEL_322:
        __break(1u);
        goto LABEL_323;
      }

      goto LABEL_219;
    case 0x1Au:
      v323 = v1601;
      sub_1E5E1E4C0(v275, v1601, MEMORY[0x1E69CD768]);
      v894 = v1578;
      sub_1E626F020(v323, v1578, MEMORY[0x1E69CD768]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_328;
          }

          type metadata accessor for AppEnvironment(0);
          v1422 = InteropService.makeNotificationViewController.getter();
          v289 = v1422();
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            sub_1E6272C28(v323, MEMORY[0x1E69CD768]);
            v289 = *v894;
            goto LABEL_264;
          }

          v1153 = v1731;
          v1154 = v1721;
          v1155 = v1732;
          (*(v1731 + 32))(v1721, v894, v1732);
          v1156 = v1493;
          (*(v1153 + 16))(v1493, v1154, v1155);
          (*(v1153 + 56))(v1156, 0, 1, v1155);
          type metadata accessor for AppEnvironment(0);
          v1157 = InteropService.makeAccountPageViewController.getter();
          v289 = v1157(v1156);

          sub_1E5DFE50C(v1156, &qword_1ED072340, &qword_1E65EA410);
          (*(v1153 + 8))(v1154, v1155);
        }

        goto LABEL_255;
      }

      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {
          if (EnumCaseMultiPayload != 7)
          {
            goto LABEL_328;
          }

          v1425 = sub_1E65DAE38();
          if (v1425 == sub_1E65DAE38())
          {
            v1426 = 30;
          }

          else
          {
            v1426 = 24;
          }

          v1427 = v1741;
          sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
          v1428 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
          v1429 = swift_allocObject();
          sub_1E5E1E4C0(v1427, v1429 + v1428, type metadata accessor for AppComposer);
          v1430 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077128, &unk_1E65FA5D0));
          v289 = sub_1E625E354(v1426, &unk_1E65F96B8, v1429, 0, 0);
          goto LABEL_255;
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        type metadata accessor for AppEnvironment(0);
        v896 = InteropService.makePrivacyLinkListViewController.getter();
        sub_1E5DF650C(v1756, &aBlock);
        v897 = swift_allocObject();
        sub_1E5DF599C(&aBlock, v897 + 16);
        *(v897 + 56) = v279 < 2;
        if (v279 >= 2)
        {
          v898 = -64;
        }

        else
        {
          v898 = 0;
        }

        *(v897 + 64) = v898;
        sub_1E5FA9D20((v279 < 2), v898);
        v289 = v896(sub_1E626F154, v897);

        sub_1E5F94E00((v279 < 2), v898);
        goto LABEL_255;
      }

      sub_1E65E5C78();
      v1423 = v1493;
      sub_1E65D74C8();

      type metadata accessor for AppEnvironment(0);
      v1424 = InteropService.makeAccountPageViewController.getter();
      v289 = v1424(v1423);

      sub_1E5DFE50C(v1423, &qword_1ED072340, &qword_1E65EA410);
LABEL_255:
      v332 = MEMORY[0x1E69CD768];
LABEL_256:
      sub_1E6272C28(v323, v332);
      goto LABEL_264;
    case 0x1Bu:
      v323 = v1640;
      sub_1E5E1E4C0(v275, v1640, type metadata accessor for PlaylistType);
      if (v279 < 2)
      {
        v324 = v1510;
        sub_1E626F020(v323, v1510, type metadata accessor for PlaylistType);
        v325 = swift_getEnumCaseMultiPayload();
        v326 = v1745;
        v327 = v1722;
        if (v325 == 1)
        {
          v329 = v1504;
          v328 = v1505;
          v330 = v324;
          v331 = v1506;
          (*(v1505 + 32))(v1504, v330, v1506);
          v289 = sub_1E621BAB4(v329, v1711, v326, v327, v1744);
          (*(v328 + 8))(v329, v331);
        }

        else
        {
          v289 = sub_1E621B934(*v324, v324[1], v1711, v1745, v1722, v1744);
        }

        v332 = type metadata accessor for PlaylistType;
        goto LABEL_256;
      }

      v1173 = v279 == 3;
      v1174 = v1745;
      v1175 = v1744;
      v1176 = v1722;
      if (!v1173)
      {
        goto LABEL_329;
      }

      v1177 = v1478;
      sub_1E626F020(v323, v1478, type metadata accessor for PlaylistType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v1179 = v1504;
        v1178 = v1505;
        v1180 = v1177;
        v1181 = v1506;
        (*(v1505 + 32))(v1504, v1180, v1506);
        v1182 = sub_1E621BAB4(v1179, v1711, v1174, v1176, v1175);
        (*(v1178 + 8))(v1179, v1181);
      }

      else
      {
        v1182 = sub_1E621B934(*v1177, v1177[1], v1711, v1174, v1176, v1175);
      }

      v1407 = swift_allocObject();
      *(v1407 + 16) = v1182;
      v1408 = v1182;
      v1409 = sub_1E65E4438();
      v1410 = *v1174;
      v1411 = *(v1742 + 32);
      v1412 = swift_allocObject();
      v1745 = *(v1174 + v1411);
      *(v1412 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1413 = v1455;
      }

      else
      {

        swift_unknownObjectRetain();
        v1413 = MEMORY[0x1E69E7CD0];
      }

      v1414 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1415 = sub_1E6275404(sub_1E626CB8C, v1407, v1409, v1413, MEMORY[0x1E69E7CC0], v1414, 0, 0, 0, 0, 0, 0, 0, v1410, sub_1E6275B5C, v1412, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1416 = v1712;
      if (v1712)
      {
        v1417 = v1712;
        v1418 = v1415;
        if ([v1417 isViewLoaded])
        {
          v1419 = [v1417 view];
          if (!v1419)
          {
LABEL_327:
            __break(1u);
LABEL_328:
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_1E65E68A8();
            MEMORY[0x1E694D7C0](0xD000000000000017, 0x80000001E6614EE0);
            sub_1E65E69B8();
            MEMORY[0x1E694D7C0](0xD000000000000015, 0x80000001E6614F00);
            while (1)
            {
LABEL_329:
              sub_1E65E69D8();
              __break(1u);
            }
          }

          v1420 = v1419;
          v1421 = [v1419 snapshotViewAfterScreenUpdates_];

LABEL_259:
          v1432 = objc_allocWithZone(type metadata accessor for BlurViewController());
          v289 = sub_1E630B7AC(v1415, v1421);

          sub_1E6272C28(v1640, type metadata accessor for PlaylistType);
          goto LABEL_264;
        }
      }

      else
      {
        v1431 = v1415;
      }

      v1421 = 0;
      goto LABEL_259;
    case 0x1Cu:
      v315 = v1735;
      v316 = v1733;
      v317 = v275;
      v318 = v1734;
      (*(v1735 + 4))(v1733, v317, v1734);
      v319 = (v1745 + *(v1742 + 36));
      v320 = *v319;
      v321 = v319[1];
      sub_1E5DFD1CC(v1745 + *(v1742 + 40), &v1752 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1756, v1755);
      *&aBlock = v320;
      *(&aBlock + 1) = v321;
      LOBYTE(v1752) = v279;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v320, v321);
      v322 = InteropService.makeWorkoutPlanDetailViewController.getter();
      v1749 = &type metadata for CatalogPageRoutingContextNavigator;
      v1750 = sub_1E61379FC();
      *&v1748 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1748 + 16);
      v289 = v322(v316, v320, v321, &v1748);

      sub_1E6137AAC(&aBlock);
      v315[1](v316, v318);
      goto LABEL_118;
    case 0x1Du:
      *&v1744 = v278;
      v981 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v982 = v279;
      v983 = v1663;
      v984 = *(v1663 + 32);
      v984(v1699, v275, v1704);
      v985 = v1660;
      v986 = *(v1660 + 32);
      v987 = &v275[v981];
      v988 = v1659;
      v989 = v1661;
      v986(v1659, v987, v1661);
      if (v982 >= 2)
      {
        v1743 = v986;
        *&v1744 = v984;
        v1345 = v1745;
        if (v982 != 3)
        {
          goto LABEL_329;
        }

        v1346 = v1741;
        sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
        v1347 = v1663 + 16;
        (*(v1663 + 16))(v1530, v1699, v1704);
        v1348 = v1660 + 16;
        (*(v1660 + 16))(v1531, v1659, v989);
        sub_1E5DF650C(v1756, &aBlock);
        v1349 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
        v1350 = &v1737[*(v1347 + 64) + v1349] & ~*(v1347 + 64);
        v1351 = (v1479 + *(v1348 + 64) + v1350) & ~*(v1348 + 64);
        v1352 = v1345;
        v1353 = (v1480 + v1351 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1354 = swift_allocObject();
        sub_1E5E1E4C0(v1346, v1354 + v1349, type metadata accessor for AppComposer);
        (v1744)(v1354 + v1350, v1530, v1704);
        (v1743)(v1354 + v1351, v1531, v1661);
        sub_1E5DF599C(&aBlock, v1354 + v1353);
        v1355 = sub_1E65E4438();
        v1356 = *v1352;
        v1357 = *(v1742 + 32);
        v1358 = swift_allocObject();
        v1745 = *(v1352 + v1357);
        *(v1358 + 16) = v1745;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1359 = v1460;
        }

        else
        {

          swift_unknownObjectRetain();
          v1359 = MEMORY[0x1E69E7CD0];
        }

        v1360 = v1712;
        v1361 = v1739;
        (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
        objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

        v1362 = sub_1E6275404(sub_1E626C930, v1354, v1355, v1359, MEMORY[0x1E69E7CC0], v1361, 0, 0, 0, 0, 0, 0, 0, v1356, sub_1E6275B5C, v1358, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

        if (v1360)
        {
          v1363 = v1360;
          v1364 = [v1363 isViewLoaded];
          v1365 = v1663;
          v1366 = v1699;
          if (v1364)
          {
            v1367 = [v1363 view];
            if (!v1367)
            {
LABEL_325:
              __break(1u);
              goto LABEL_326;
            }

            v1368 = v1367;
            v1369 = [v1367 snapshotViewAfterScreenUpdates_];
          }

          else
          {
            v1369 = 0;
          }

          v1436 = v1660;
          v1437 = v1704;
        }

        else
        {
          v1369 = 0;
          v1436 = v1660;
          v1437 = v1704;
          v1365 = v1663;
          v1366 = v1699;
        }

        v1438 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v289 = sub_1E630B7AC(v1362, v1369);

        (*(v1436 + 8))(v1659, v1661);
        (*(v1365 + 8))(v1366, v1437);
        goto LABEL_264;
      }

      v990 = (v1745 + *(v1742 + 36));
      v991 = v988;
      v992 = *v990;
      v993 = v990[1];
      sub_1E5DFD1CC(v1745 + *(v1742 + 40), &v1752 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1756, v1755);
      *&aBlock = v992;
      *(&aBlock + 1) = v993;
      LOBYTE(v1752) = v982;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v992, v993);
      v994 = InteropService.makeWorkoutPlanAlternativeViewController.getter();
      v1749 = &type metadata for CatalogPageRoutingContextNavigator;
      v1750 = sub_1E61379FC();
      *&v1748 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1748 + 16);
      v995 = v1699;
      v996 = v994(v1699, v991, v992, v993, &v1748);

      sub_1E6137AAC(&aBlock);
      v997 = v991;
      v289 = v996;
      (*(v985 + 8))(v997, v989);
      (*(v983 + 8))(v995, v1704);
      goto LABEL_118;
    case 0x1Eu:
      v1017 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
      *&v1744 = *&v275[*(v1017 + 48)];
      v1743 = *&v275[*(v1017 + 64)];
      v1018 = v1606;
      v1019 = v1603;
      v1020 = v275;
      v1021 = v1608;
      (*(v1606 + 32))(v1603, v1020, v1608);
      v1022 = (v1745 + *(v1742 + 36));
      v1023 = *v1022;
      v1024 = v1022[1];
      sub_1E5DFD1CC(v1745 + *(v1742 + 40), &v1752 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1756, v1755);
      *&aBlock = v1023;
      *(&aBlock + 1) = v1024;
      LOBYTE(v1752) = v279;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v1023, v1024);
      v1025 = InteropService.makeWorkoutPlanPreferenceViewController.getter();
      v1749 = &type metadata for CatalogPageRoutingContextNavigator;
      v1750 = sub_1E61379FC();
      *&v1748 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1748 + 16);
      v289 = v1025(v1023, v1024, v1019, v1744, v1743, &v1748);

      sub_1E6137AAC(&aBlock);
      (*(v1018 + 8))(v1019, v1021);
      goto LABEL_118;
    case 0x1Fu:
      *&v1744 = *&v275[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48)];
      v899 = v1609;
      v900 = v1607;
      v901 = v275;
      v902 = v1610;
      (*(v1609 + 32))(v1607, v901, v1610);
      v903 = (v1745 + *(v1742 + 36));
      v904 = *v903;
      v905 = v903[1];
      sub_1E5DFD1CC(v1745 + *(v1742 + 40), &v1752 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1756, v1755);
      *&aBlock = v904;
      *(&aBlock + 1) = v905;
      LOBYTE(v1752) = v279;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v904, v905);
      v906 = InteropService.makeWorkoutPlanReviewViewController.getter();
      v1749 = &type metadata for CatalogPageRoutingContextNavigator;
      v1750 = sub_1E61379FC();
      *&v1748 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1748 + 16);
      v289 = v906(v900, v1744, v904, v905, &v1748);

      sub_1E6137AAC(&aBlock);
      (*(v899 + 8))(v900, v902);
      goto LABEL_118;
    case 0x20u:
      v918 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
      *&v1744 = *&v275[*(v918 + 48)];
      v1743 = *&v275[*(v918 + 64)];
      v919 = v1612;
      v920 = v1611;
      (*(v1612 + 32))(v1611, v275, v1695);
      v921 = (v1745 + *(v1742 + 36));
      v922 = *v921;
      v923 = v921[1];
      sub_1E5DFD1CC(v1745 + *(v1742 + 40), &v1752 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1756, v1755);
      *&aBlock = v922;
      *(&aBlock + 1) = v923;
      LOBYTE(v1752) = v279;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v922, v923);
      v924 = InteropService.makeEditWorkoutPlanScheduleViewController.getter();
      v1749 = &type metadata for CatalogPageRoutingContextNavigator;
      v1750 = sub_1E61379FC();
      *&v1748 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1748 + 16);
      v289 = v924(v920, v1743, v1744, v922, v923, &v1748);

      sub_1E6137AAC(&aBlock);
      (*(v919 + 8))(v920, v1695);
      goto LABEL_118;
    case 0x21u:
      v615 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
      LODWORD(v1744) = v275[*(v615 + 48)];
      v616 = v275[*(v615 + 64)];
      v617 = v1614;
      v618 = v1613;
      (*(v1614 + 32))(v1613, v275, v1696);
      v619 = (v1745 + *(v1742 + 36));
      v620 = *v619;
      v621 = v619[1];
      sub_1E5DFD1CC(v1745 + *(v1742 + 40), &v1752 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1756, v1755);
      *&aBlock = v620;
      *(&aBlock + 1) = v621;
      LOBYTE(v1752) = v279;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v620, v621);
      v622 = InteropService.makeWorkoutPlanSummaryViewController.getter();
      v1749 = &type metadata for CatalogPageRoutingContextNavigator;
      v1750 = sub_1E61379FC();
      *&v1748 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1748 + 16);
      v289 = v622(v618, v1744, v616, &v1748, v620, v621);

      sub_1E6137AAC(&aBlock);
      (*(v617 + 8))(v618, v1696);
      goto LABEL_118;
    case 0x22u:
      v335 = v1745;
      v336 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      v337 = *(v1736 + 80);
      v338 = v1737;
      v1729 = &v1737[(v337 + 16) & ~v337];
      v1730 = (v337 + 16) & ~v337;
      *&v1744 = v337 | 7;
      v1725 = swift_allocObject();
      v1722 = type metadata accessor for AppComposer;
      sub_1E5E1E4C0(v336, v1725 + ((v337 + 16) & ~v337), type metadata accessor for AppComposer);
      sub_1E65E5148();
      LODWORD(v1743) = v279;
      v1736 = sub_1E65E5138();
      v339 = v1727;
      v1724 = type metadata accessor for AppComposer;
      sub_1E626F020(v335, v1727, type metadata accessor for AppComposer);
      v340 = &v338[(v337 + 32) & ~v337];
      v1721 = ((v337 + 32) & ~v337);
      v1720 = v340;
      v341 = swift_allocObject();
      v1732 = v341;
      v1719 = &unk_1E65F9820;
      v342 = v1725;
      *(v341 + 16) = &unk_1E65F9820;
      *(v341 + 24) = v342;
      sub_1E5E1E4C0(v339, v341 + ((v337 + 32) & ~v337), v1722);
      *(v341 + v340) = 0;
      v343 = v341 + (v340 & 0xFFFFFFFFFFFFFFF8);
      v1731 = sub_1E6172524;
      *(v343 + 8) = sub_1E6172524;
      *(v343 + 16) = 0;
      v344 = (v341 + (((v340 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
      v345 = MEMORY[0x1E69AB380];
      v346 = v1736;
      *v344 = v1736;
      v344[1] = v345;
      v347 = v1745;
      sub_1E626F020(v1745, v1728, type metadata accessor for AppComposer);
      v348 = &v1737[(v337 + 48) & ~v337];
      v1718 = ((v337 + 48) & ~v337);
      v349 = swift_allocObject();
      v350 = v1719;
      v351 = v1725;
      *(v349 + 16) = v1719;
      *(v349 + 24) = v351;
      *(v349 + 32) = v346;
      *(v349 + 40) = MEMORY[0x1E69AB380];
      v352 = v1722;
      sub_1E5E1E4C0(v1728, v349 + ((v337 + 48) & ~v337), v1722);
      *(v349 + v348) = 0;
      v353 = (v349 + (v348 & 0xFFFFFFFFFFFFFFF8));
      *(v353 + 1) = v1731;
      *(v353 + 2) = 0;
      v354 = v1709;
      sub_1E626F020(v347, v1709, v1724);
      v355 = (v348 + 7);
      v356 = v1736;
      v357 = v355 & 0xFFFFFFFFFFFFFFF8;
      v358 = swift_allocObject();
      *(v358 + 16) = v350;
      *(v358 + 24) = v351;
      *(v358 + 32) = v356;
      *(v358 + 40) = MEMORY[0x1E69AB380];
      v359 = v352;
      v360 = v358;
      sub_1E5E1E4C0(v354, &v1718[v358], v359);
      v361 = &v360[v357];
      *v361 = v1731;
      *(v361 + 1) = 0;
      v361[16] = 0;
      v362 = v1710;
      sub_1E626F020(v1745, v1710, v1724);
      v363 = swift_allocObject();
      v364 = v1725;
      *(v363 + 16) = v350;
      *(v363 + 24) = v364;
      sub_1E5E1E4C0(v362, v1721 + v363, v359);
      swift_retain_n();
      swift_retain_n();
      sub_1E65D76E8();
      v1727 = v349;
      v1737 = v360;
      v365 = v1730;
      v366 = v1729;
      v1731 = v363;
      v1728 = 0x80000001E6615070;
      if (v1743 >= 2)
      {
        if (v1743 != 3)
        {
          goto LABEL_329;
        }

        v1183 = v363;
        v1722 = type metadata accessor for AppComposer;
        v1184 = v1741;
        sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1756, &aBlock);
        v1185 = ((v1729 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1724 = v1185;
        v1186 = (v1185 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1717 = v1186;
        v1187 = swift_allocObject();
        v1715 = type metadata accessor for AppComposer;
        sub_1E5E1E4C0(v1184, v1187 + v1730, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v1185 + v1187);
        v1725 = v1187;
        v1188 = (v1187 + v1186);
        v1189 = v1728;
        *v1188 = 0xD000000000000016;
        v1188[1] = v1189;
        v1190 = v1187 + ((v1186 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v1190 = v1736;
        v1721 = &unk_1E65F9828;
        *(v1190 + 1) = MEMORY[0x1E69AB380];
        *(v1190 + 2) = &unk_1E65F9828;
        v1720 = &unk_1E65F9830;
        *(v1190 + 3) = v1732;
        *(v1190 + 4) = &unk_1E65F9830;
        v1719 = &unk_1E65F9838;
        *(v1190 + 5) = v1727;
        *(v1190 + 6) = &unk_1E65F9838;
        v1718 = &unk_1E65F9840;
        *(v1190 + 7) = v1737;
        *(v1190 + 8) = &unk_1E65F9840;
        *(v1190 + 9) = v1183;
        v1190[80] = 0;
        v1191 = v1745;
        v1192 = v1722;
        sub_1E626F020(v1745, v1184, v1722);
        v1728 = swift_allocObject();
        v1193 = v1730;
        sub_1E5E1E4C0(v1184, v1728 + v1730, type metadata accessor for AppComposer);
        sub_1E626F020(v1191, v1184, v1192);
        sub_1E5DF650C(v1756, &aBlock);
        v1194 = v1735;
        v1716 = *(v1735 + 2);
        v1195 = v1734;
        (v1716)(v1733, v1726, v1734);
        v1196 = v1717;
        v1197 = (v1717 + *(v1194 + 80) + 80) & ~*(v1194 + 80);
        v1198 = swift_allocObject();
        sub_1E5E1E4C0(v1184, v1198 + v1193, v1715);
        sub_1E5DF599C(&aBlock, v1724 + v1198);
        v1199 = (v1196 + v1198);
        v1722 = v1198;
        *v1199 = v1736;
        v1200 = v1721;
        v1199[1] = MEMORY[0x1E69AB380];
        v1199[2] = v1200;
        v1201 = v1720;
        v1199[3] = v1732;
        v1199[4] = v1201;
        v1202 = v1719;
        v1199[5] = v1727;
        v1199[6] = v1202;
        v1203 = v1718;
        v1199[7] = v1737;
        v1199[8] = v1203;
        v1199[9] = v1731;
        v1204 = v1733;
        v1194[4](v1198 + v1197, v1733, v1195);
        (v1716)(v1204, v1726, v1195);
        v1724 = type metadata accessor for ArtworkDescriptor(0);
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1721 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        v1720 = type metadata accessor for ItemMetrics(0);
        v1719 = type metadata accessor for SectionMetrics(0);
        type metadata accessor for ViewDescriptor(0);
        sub_1E6275330(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E6275330(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E6275330(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E6275330(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        v1205 = v1483;
        sub_1E65E1EB8();
        v1206 = sub_1E65E2DA8();
        v1207 = 0;
        v1208 = 0;
        v1209 = 0;
        v1210 = 0;
        v1211 = 0;
        v1212 = 0;
        v1213 = 0;
        v1214 = 0;
        v1215 = 0;
        v1216 = 0;
        if (v1206)
        {
          v1215 = &unk_1E65F9840;
          v1213 = &unk_1E65F9838;
          v1211 = &unk_1E65F9830;
          v1209 = &unk_1E65F9828;
          v1208 = MEMORY[0x1E69AB380];
          v1207 = v1736;
          v1210 = v1732;
          v1212 = v1727;
          v1214 = v1737;
          v1216 = v1731;
        }

        *&aBlock = v1207;
        *(&aBlock + 1) = v1208;
        *&v1752 = v1209;
        *(&v1752 + 1) = v1210;
        *&v1753 = v1211;
        *(&v1753 + 1) = v1212;
        *&v1754 = v1213;
        *(&v1754 + 1) = v1214;
        *&v1755[0] = v1215;
        *(&v1755[0] + 1) = v1216;
        sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450, MEMORY[0x1E699F128]);
        v1217 = v1487;
        v1218 = v1485;
        sub_1E630FFE8(&aBlock, v1485, v1487);
        (*(v1484 + 8))(v1205, v1218);
        v406 = v1745;
        v1219 = v1741;
        sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
        v1220 = swift_allocObject();
        sub_1E5E1E4C0(v1219, v1220 + v1730, type metadata accessor for AppComposer);
        sub_1E6072124();
        v1221 = v1486;
        sub_1E6259D5C(sub_1E6274210, v1220, v1488);

        sub_1E5DFE50C(v1217, &unk_1ED077720, &qword_1E65EEE40);
        v1222 = sub_1E6072098();
        v411 = v1489;
        v1223 = v1626;
        sub_1E5FEE4C8();
        v413 = &qword_1ED073E10;
        v414 = &unk_1E65FA460;
        sub_1E5DFE50C(v1221, &qword_1ED073E10, &unk_1E65FA460);
        v415 = v1490;
        sub_1E5FEE4C8();
        v1224 = sub_1E6071E58();
        v417 = v1629;
        sub_1E62DFB74(v415, v1627, v1223, v1224, v1222);
      }

      else
      {
        v1722 = type metadata accessor for AppComposer;
        v367 = v1741;
        sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1756, &aBlock);
        v368 = (v366 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1718 = v368;
        v369 = (v366 + 55) & 0xFFFFFFFFFFFFFFF8;
        v370 = swift_allocObject();
        v371 = v365;
        v372 = v370;
        v1725 = v370;
        v1716 = type metadata accessor for AppComposer;
        sub_1E5E1E4C0(v367, v370 + v371, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v372 + v368);
        *(v372 + v368 + 40) = 0;
        v373 = (v372 + v369);
        v374 = v1728;
        *v373 = 0xD000000000000016;
        v373[1] = v374;
        v375 = (v372 + ((v369 + 23) & 0xFFFFFFFFFFFFFFF8));
        v376 = v1736;
        *v375 = v1736;
        v1724 = &unk_1E65F9828;
        v375[1] = MEMORY[0x1E69AB380];
        v375[2] = &unk_1E65F9828;
        v1721 = &unk_1E65F9830;
        v375[3] = v1732;
        v375[4] = &unk_1E65F9830;
        v1720 = &unk_1E65F9838;
        v375[5] = v349;
        v375[6] = &unk_1E65F9838;
        v1719 = &unk_1E65F9840;
        v375[7] = v1737;
        v375[8] = &unk_1E65F9840;
        v375[9] = v1731;
        v377 = v1745;
        v378 = v1722;
        sub_1E626F020(v1745, v367, v1722);
        v1728 = swift_allocObject();
        v379 = v1730;
        sub_1E5E1E4C0(v367, v1728 + v1730, type metadata accessor for AppComposer);
        sub_1E626F020(v377, v367, v378);
        sub_1E5DF650C(v1756, &aBlock);
        v380 = v1735;
        v1717 = *(v1735 + 2);
        v381 = v1734;
        (v1717)(v1733, v1726, v1734);
        v382 = v1718;
        v383 = (v1718 + 47) & 0xFFFFFFFFFFFFFFF8;
        v384 = (v383 + *(v380 + 80) + 80) & ~*(v380 + 80);
        v385 = swift_allocObject();
        sub_1E5E1E4C0(v1741, v385 + v379, v1716);
        sub_1E5DF599C(&aBlock, &v382[v385]);
        v386 = (v385 + v383);
        v1722 = v385;
        *v386 = v376;
        v387 = v1724;
        v386[1] = MEMORY[0x1E69AB380];
        v386[2] = v387;
        v388 = v1721;
        v386[3] = v1732;
        v386[4] = v388;
        v389 = v1720;
        v386[5] = v1727;
        v386[6] = v389;
        v390 = v1719;
        v386[7] = v1737;
        v386[8] = v390;
        v386[9] = v1731;
        v391 = v1733;
        v380[4]((v385 + v384), v1733, v381);
        (v1717)(v391, v1726, v381);
        v1724 = type metadata accessor for ArtworkDescriptor(0);
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1721 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        v1720 = type metadata accessor for ItemMetrics(0);
        v1719 = type metadata accessor for SectionMetrics(0);
        type metadata accessor for ViewDescriptor(0);
        sub_1E6275330(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E6275330(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E6275330(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E6275330(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        v392 = v1511;
        sub_1E65E2448();
        v393 = sub_1E65E2DA8();
        v394 = 0;
        v395 = 0;
        v396 = 0;
        v397 = 0;
        v398 = 0;
        v399 = 0;
        v400 = 0;
        v401 = 0;
        v402 = 0;
        v403 = 0;
        if (v393)
        {
          v402 = MEMORY[0x1E69AB380];
          v401 = &unk_1E65F9828;
          v399 = &unk_1E65F9830;
          v397 = &unk_1E65F9838;
          v395 = &unk_1E65F9840;
          v394 = v1731;
          v396 = v1737;
          v398 = v1727;
          v400 = v1732;
          v403 = v1736;
        }

        *&aBlock = v403;
        *(&aBlock + 1) = v402;
        *&v1752 = v401;
        *(&v1752 + 1) = v400;
        *&v1753 = v399;
        *(&v1753 + 1) = v398;
        *&v1754 = v397;
        *(&v1754 + 1) = v396;
        *&v1755[0] = v395;
        *(&v1755[0] + 1) = v394;
        sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38, MEMORY[0x1E699F2B0]);
        v404 = v1515;
        v405 = v1513;
        sub_1E630FFE8(&aBlock, v1513, v1515);
        (*(v1512 + 8))(v392, v405);
        v406 = v1745;
        v407 = v1741;
        sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
        v408 = swift_allocObject();
        sub_1E5E1E4C0(v407, v408 + v1730, type metadata accessor for AppComposer);
        sub_1E6071EE4();
        v409 = v1514;
        sub_1E6259D5C(sub_1E6274210, v408, v1516);

        sub_1E5DFE50C(v404, &qword_1ED073DF8, &unk_1E65FA440);
        v410 = sub_1E6071E58();
        v411 = v1517;
        v412 = v1627;
        sub_1E5FEE4C8();
        v413 = &unk_1ED077710;
        v414 = &qword_1E65EEE28;
        sub_1E5DFE50C(v409, &unk_1ED077710, &qword_1E65EEE28);
        v415 = v1520;
        sub_1E5FEE4C8();
        v416 = sub_1E6072098();
        v417 = v1629;
        sub_1E62DFC6C(v415, v412, v1626, v410, v416);
      }

      v1225 = sub_1E6071DCC();
      v1226 = v1581;
      sub_1E62DFC6C(v417, v1628, MEMORY[0x1E69E73E0], v1225, MEMORY[0x1E6982070]);
      sub_1E5DFE50C(v417, &qword_1ED073DE8, &unk_1E65FA430);
      sub_1E5DFE50C(v415, v413, v414);
      sub_1E5DFE50C(v411, v413, v414);
      (*(v1735 + 1))(v1726, v1734);
      sub_1E6274228();
      v1227 = v1590;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v1226, &qword_1ED073DA8, &unk_1E65FA550);
      v1228 = *v406;
      v1229 = *(v1742 + 32);
      v1230 = swift_allocObject();
      v1745 = *(v406 + v1229);
      *(v1230 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1231 = v1442;
      }

      else
      {

        swift_unknownObjectRetain();
        v1231 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077200, &unk_1E65FA8D0);
      v1232 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      *(&v1472 + 1) = sub_1E6275B5C;
      *&v1472 = v1228;
      v1233 = sub_1E630B390(v1227, v1231, MEMORY[0x1E69E7CC0], v1232, 0, 0, 0, 0, 0, 0, v1472, v1230);

      sub_1E5DFE50C(v1227, &qword_1ED073DA8, &unk_1E65FA550);
      v289 = v1233;
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1234 = swift_getObjCClassFromMetadata();
      v1235 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E5D48();
      v1236 = sub_1E65E5C48();

      [v289 setTitle_];

      v1237 = sub_1E6307A64();
      v1238 = v1237;
      if (v1743 > 1)
      {
        v1239 = 2;
      }

      else
      {
        v1239 = 1;
      }

      [v1237 setLargeTitleDisplayMode_];

      goto LABEL_264;
    case 0x23u:
      swift_storeEnumTagMultiPayload();
      v623 = v1745;
      sub_1E617DC64(v234, &aBlock);
      sub_1E6272C28(v234, type metadata accessor for BrowsePage);
      swift_storeEnumTagMultiPayload();
      v624 = v1662;
      sub_1E6508CD4(v1756, v234, &aBlock, v1662);
      sub_1E6272C28(v234, type metadata accessor for BrowsePage);
      sub_1E6272CEC();
      v625 = v1707;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v624, &unk_1ED077820, &qword_1E65F96A8);
      v626 = v1533;
      sub_1E5FEE4C8();
      sub_1E5DFE50C(v625, &unk_1ED077820, &qword_1E65F96A8);
      v627 = v1532;
      sub_1E5DFD1CC(v626, v1532, &unk_1ED077820, &qword_1E65F96A8);
      v628 = *v623;
      v629 = *(v1742 + 32);
      v630 = swift_allocObject();
      v1745 = *(v623 + v629);
      *(v630 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v631 = v1443;
      }

      else
      {

        swift_unknownObjectRetain();
        v631 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
      v632 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      *(&v1467 + 1) = sub_1E6275B5C;
      *&v1467 = v628;
      v289 = sub_1E630B390(v627, v631, MEMORY[0x1E69E7CC0], v632, 0, 0, 0, 0, 1, 0, v1467, v630);

      v300 = &unk_1ED077820;
      v301 = &qword_1E65F96A8;
      sub_1E5DFE50C(v627, &unk_1ED077820, &qword_1E65F96A8);
      v633 = sub_1E6307A64();
      [v633 setLargeTitleDisplayMode_];

      swift_unknownObjectRelease();

      v314 = v626;
      goto LABEL_124;
    case 0x24u:
      v302 = v1540;
      v303 = v1745;
      AppComposer.forYouViewBuilder(currentRoutingContext:)(v1756, v1540);
      sub_1E5DFD1CC(v302, v1671, &qword_1ED072708, &unk_1E65FA530);
      v304 = sub_1E65DAE38();
      v305 = sub_1E65DAE38();
      v306 = *v303;
      v307 = *(v1742 + 32);
      v308 = swift_allocObject();
      v1745 = *(v303 + v307);
      *(v308 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v309 = v1440;
      }

      else
      {

        swift_unknownObjectRetain();
        v309 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D0, &qword_1E65F97E0);
      v310 = v304 != v305;
      v311 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      *(&v1465 + 1) = sub_1E6275B5C;
      *&v1465 = v306;
      v312 = v1671;
      v289 = sub_1E630B390(v1671, v309, MEMORY[0x1E69E7CC0], v311, 0, 0, 0, 0, v310, 0, v1465, v308);

      v300 = &qword_1ED072708;
      v301 = &unk_1E65FA530;
      sub_1E5DFE50C(v312, &qword_1ED072708, &unk_1E65FA530);
      v313 = sub_1E6307A64();
      [v313 setLargeTitleDisplayMode_];

      v314 = v302;
      goto LABEL_124;
    case 0x25u:
      v292 = v1542;
      v293 = v1745;
      AppComposer.libraryViewBuilder(currentRoutingContext:)(v1756, v1542);
      v294 = v1541;
      sub_1E5DFD1CC(v292, v1541, &unk_1ED077800, &qword_1E65F9698);
      v295 = *v293;
      v296 = *(v1742 + 32);
      v297 = swift_allocObject();
      v1745 = *(v293 + v296);
      *(v297 + 1) = v1745;
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_7;
      }

      goto LABEL_270;
    case 0x27u:
      if (v279 < 2)
      {
        v1026 = (v1745 + *(v1742 + 32));
        v1027 = *v1026;
        *&v1742 = v1026[1];
        v1028 = v1742;
        v1029 = swift_allocObject();
        v1732 = v1029;
        *(v1029 + 16) = v1027;
        *(v1029 + 24) = v1028;
        swift_getKeyPath();
        swift_unknownObjectRetain();
        sub_1E65E4EC8();

        v1030 = type metadata accessor for AppEnvironment(0);
        v1031 = Description;
        Description[2](v1645, v278 + *(v1030 + 80), v1646);
        sub_1E65E5148();
        swift_unknownObjectRetain();
        v1743 = sub_1E65E5138();
        type metadata accessor for SearchMetricsMonitor(0);
        v1740 = swift_allocObject();
        v1739 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_queue;
        sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
        sub_1E65E4F58();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1E6275330(&qword_1EE2D4610, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A450, &qword_1E65F8060);
        sub_1E5FED46C(&qword_1EE2D4820, &unk_1ED07A450, &qword_1E65F8060, MEMORY[0x1E69E6328]);
        sub_1E65E6738();
        (*(v1526 + 104))(v1525, *MEMORY[0x1E69E8090], v1527);
        v1032 = sub_1E65E63E8();
        v1033 = v1740;
        *(v1739 + v1740) = v1032;
        (*(v1518 + 32))(v1033 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState, v1644, v1519);
        v1034 = MEMORY[0x1E69AB380];
        *(v1033 + 2) = v1743;
        *(v1033 + 3) = v1034;
        (v1031)[4](v1033 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService, v1645, v1646);
        v1035 = (v1033 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker);
        v1036 = v1742;
        *v1035 = v1027;
        v1035[1] = v1036;
        v1037 = v1745;
        v1038 = v1741;
        *&v1742 = type metadata accessor for AppComposer;
        sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
        v1039 = *(v1736 + 80);
        v1730 = &v1737[(v1039 + 16) & ~v1039];
        v1731 = (v1039 + 16) & ~v1039;
        v1040 = v1737;
        v1041 = swift_allocObject();
        v1739 = type metadata accessor for AppComposer;
        v1735 = v1041;
        sub_1E5E1E4C0(v1038, v1041 + ((v1039 + 16) & ~v1039), type metadata accessor for AppComposer);
        v1042 = v1727;
        sub_1E626F020(v1037, v1727, type metadata accessor for AppComposer);
        v1043 = (v1039 + 32) & ~v1039;
        v1726 = v1043;
        v1044 = &v1040[v1043] & 0xFFFFFFFFFFFFFFF8;
        v1725 = &v1040[v1043];
        v1045 = swift_allocObject();
        v1738 = v1045;
        v1733 = &unk_1E65FA760;
        *(v1045 + 16) = &unk_1E65FA760;
        *(v1045 + 24) = v1041;
        sub_1E5E1E4C0(v1042, v1045 + v1043, v1739);
        v1040[v1043 + v1045] = 0;
        v1046 = v1045 + v1044;
        v1734 = sub_1E6172524;
        *(v1046 + 8) = sub_1E6172524;
        *(v1046 + 16) = 0;
        v1047 = (v1045 + ((v1044 + 31) & 0xFFFFFFFFFFFFFFF8));
        v1048 = v1743;
        *v1047 = v1743;
        v1049 = MEMORY[0x1E69AB380];
        v1047[1] = MEMORY[0x1E69AB380];
        v1050 = v1745;
        v1051 = v1728;
        sub_1E626F020(v1745, v1728, v1742);
        v1052 = (v1039 + 48) & ~v1039;
        v1053 = &v1737[v1052];
        v1054 = &v1737[v1052] & 0xFFFFFFFFFFFFFFF8;
        v1055 = swift_allocObject();
        v1056 = v1733;
        v1057 = v1735;
        v1055[2] = v1733;
        v1055[3] = v1057;
        v1055[4] = v1048;
        v1055[5] = v1049;
        v1058 = v1055;
        v1059 = v1739;
        sub_1E5E1E4C0(v1051, v1055 + v1052, v1739);
        v1736 = v1058;
        v1053[v1058] = 0;
        v1060 = v1058 + v1054;
        *(v1060 + 1) = v1734;
        *(v1060 + 2) = 0;
        v1061 = v1050;
        v1062 = v1050;
        v1063 = v1709;
        v1064 = v1742;
        sub_1E626F020(v1062, v1709, v1742);
        v1065 = swift_allocObject();
        v1066 = v1735;
        *(v1065 + 2) = v1056;
        *(v1065 + 3) = v1066;
        v1067 = v1743;
        *(v1065 + 4) = v1743;
        *(v1065 + 5) = MEMORY[0x1E69AB380];
        v1068 = v1065 + v1052;
        v1069 = v1065;
        sub_1E5E1E4C0(v1063, v1068, v1059);
        v1070 = v1069 + ((v1053 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1729 = v1069;
        *v1070 = v1734;
        *(v1070 + 1) = 0;
        v1070[16] = 0;
        v1071 = v1710;
        sub_1E626F020(v1061, v1710, v1064);
        v1072 = swift_allocObject();
        *(v1072 + 16) = v1733;
        *(v1072 + 24) = v1066;
        v1073 = v1072;
        v1734 = v1072;
        sub_1E5E1E4C0(v1071, v1072 + v1726, v1059);
        *&aBlock = v1067;
        *(&aBlock + 1) = MEMORY[0x1E69AB380];
        *&v1752 = &unk_1E65EB918;
        *(&v1752 + 1) = v1738;
        *&v1753 = &unk_1E65FA770;
        *(&v1753 + 1) = v1736;
        *&v1754 = &unk_1E65EB920;
        *(&v1754 + 1) = v1069;
        *&v1755[0] = &unk_1E65FA780;
        *(&v1755[0] + 1) = v1073;
        swift_retain_n();
        swift_retain_n();
        v1074 = v1061;
        v1735 = sub_1E6253A30(v1711, &aBlock, v1061, v1722, v1744);
        v1075 = v1654;
        sub_1E63D53AC(v1735, v1654);
        v1076 = v1740;

        v1733 = sub_1E61C9468(v1075, v1076);
        v1077 = v1076;

        *&v1744 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A460, &qword_1E65F97C8);
        v1078 = v1741;
        sub_1E626F020(v1074, v1741, v1742);
        sub_1E5DF650C(v1756, &v1748);
        v1079 = (v1730 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1080 = (v1079 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1081 = swift_allocObject();
        sub_1E5E1E4C0(v1078, v1081 + v1731, v1059);
        sub_1E5DF599C(&v1748, v1081 + v1079);
        v1082 = (v1081 + v1080);
        v1083 = v1754;
        v1082[2] = v1753;
        v1082[3] = v1083;
        v1082[4] = v1755[0];
        v1084 = v1752;
        *v1082 = aBlock;
        v1082[1] = v1084;
        *(v1081 + ((v1080 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1077;
        v1085 = v1727;
        sub_1E626F020(v1074, v1727, v1742);
        sub_1E5DF650C(v1756, v1747);
        v1086 = (v1039 + 24) & ~v1039;
        v1087 = &v1737[v1086 + 7] & 0xFFFFFFFFFFFFFFF8;
        v1088 = (v1087 + 15) & 0xFFFFFFFFFFFFFFF8;
        v1089 = (v1088 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1090 = swift_allocObject();
        *(v1090 + 16) = v1733;
        sub_1E5E1E4C0(v1085, v1090 + v1086, v1739);
        *(v1090 + v1087) = v1735;
        sub_1E5DF599C(v1747, v1090 + v1088);
        v1091 = (v1090 + v1089);
        v1092 = v1754;
        v1091[2] = v1753;
        v1091[3] = v1092;
        v1091[4] = v1755[0];
        v1093 = v1752;
        *v1091 = aBlock;
        v1091[1] = v1093;
        *(v1090 + ((v1089 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1740;

        v289 = sub_1E65DCC78();
        (*(v1528 + 8))(v1654, v1529);
        goto LABEL_264;
      }

      v1387 = v1745;
      if (v279 != 3)
      {
        goto LABEL_329;
      }

      v1388 = v1481;
      sub_1E62284FC(v1756, v1481);
      v1389 = sub_1E622B4E0();
      v281 = v1491;
      sub_1E6012F9C(v1482, v1389);
      sub_1E5DFE50C(v1388, &unk_1ED0776A0, &qword_1E65F8030);
      v283 = v1492;
      sub_1E5DFD1CC(v281, v1492, &qword_1ED0770A8, &unk_1E65FA3E0);
      v1390 = *v1387;
      v1391 = *(v1742 + 32);
      v1392 = swift_allocObject();
      v1745 = *(v1387 + v1391);
      *(v1392 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1393 = v1462;
      }

      else
      {

        swift_unknownObjectRetain();
        v1393 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AA0, &qword_1E65F9798);
      v1394 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      *(&v1475 + 1) = sub_1E6275B5C;
      *&v1475 = v1390;
      v289 = sub_1E630B390(v283, v1393, MEMORY[0x1E69E7CC0], v1394, 0, 0, 0, 0, 0, 0, v1475, v1392);

      v290 = &qword_1ED0770A8;
      v291 = &unk_1E65FA3E0;
      goto LABEL_227;
    case 0x29u:
      v1094 = (v1745 + *(v1742 + 36));
      v1095 = *v1094;
      v1096 = v1094[1];
      sub_1E5DFD1CC(v1745 + *(v1742 + 40), &v1752 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1756, v1755);
      *&aBlock = v1095;
      *(&aBlock + 1) = v1096;
      LOBYTE(v1752) = v279;
      type metadata accessor for AppEnvironment(0);
      sub_1E5FA9D34(v1095, v1096);
      v1097 = InteropService.makeAccountSettingsViewController.getter();
      v1749 = &type metadata for CatalogPageRoutingContextNavigator;
      v1750 = sub_1E61379FC();
      *&v1748 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1748 + 16);
      v758 = v1097(&v1748);
      goto LABEL_117;
    case 0x2Au:
      v1098 = sub_1E65DDF08();
      *(&v1752 + 1) = v1098;
      *&v1753 = sub_1E6275330(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00], MEMORY[0x1E69CABE0]);
      v1099 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      (*(*(v1098 - 8) + 104))(v1099, *MEMORY[0x1E69CABE8], v1098);
      LOBYTE(v1098) = sub_1E65DAF58();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v1100 = v1733;
      if (v1098)
      {
        sub_1E65D76E8();
        v292 = v1503;
        v1101 = v1745;
        sub_1E606A028(v1756, v1100, v1503);
        (*(v1735 + 1))(v1100, v1734);
        v294 = v1502;
        sub_1E5DFD1CC(v292, v1502, &qword_1ED073D90, &unk_1E65FA3D0);
        v1102 = *v1101;
        v1103 = *(v1742 + 32);
        v1104 = swift_allocObject();
        v1745 = *(v1101 + v1103);
        *(v1104 + 16) = v1745;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1105 = v1453;
        }

        else
        {

          swift_unknownObjectRetain();
          v1105 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077930, &qword_1E65F96F8);
        v1106 = v1739;
        (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
        *(&v1470 + 1) = sub_1E6275B5C;
        *&v1470 = v1102;
        v289 = sub_1E630B390(v294, v1105, MEMORY[0x1E69E7CC0], v1106, 0, 0, 0, 0, 0, 0, v1470, v1104);

        v300 = &qword_1ED073D90;
        v301 = &unk_1E65FA3D0;
        goto LABEL_123;
      }

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1140 = swift_getObjCClassFromMetadata();
      v1141 = [objc_opt_self() bundleForClass_];
      v1142 = v1745;
      v1143 = *v1745;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v1144;
      sub_1E5F9AEA8();
      v1145 = v1495;
      sub_1E65E41C8();
      v1146 = v1494;
      v1147 = v1658;
      v1715[2](v1494, v1145, v1658);
      v1148 = *(v1742 + 32);
      v1149 = swift_allocObject();
      v1745 = *(v1142 + v1148);
      *(v1149 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1150 = v1454;
      }

      else
      {

        swift_unknownObjectRetain();
        v1150 = MEMORY[0x1E69E7CD0];
      }

      v1151 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      v1152 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v289 = sub_1E626DF90(v1146, v1150, MEMORY[0x1E69E7CC0], v1151, 0, 0, 0, 0, 0, 0, 0, v1143, sub_1E6275B5C, v1149);

      (v1715[1])(v1145, v1147);
      goto LABEL_264;
    case 0x2Bu:
      if (v279 < 2)
      {
        v1013 = (v1745 + *(v1742 + 36));
        v1014 = *v1013;
        v1015 = v1013[1];
        sub_1E5DFD1CC(v1745 + *(v1742 + 40), &v1752 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1756, v1755);
        *&aBlock = v1014;
        *(&aBlock + 1) = v1015;
        LOBYTE(v1752) = v279;
        type metadata accessor for AppEnvironment(0);
        sub_1E5FA9D34(v1014, v1015);
        QueueView = InteropService.makeUpNextQueueViewController.getter();
        v1749 = &type metadata for CatalogPageRoutingContextNavigator;
        v1750 = sub_1E61379FC();
        *&v1748 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1748 + 16);
        v758 = QueueView(&v1748, v1014, v1015);
        goto LABEL_117;
      }

      v1370 = v1745;
      if (v279 != 3)
      {
        goto LABEL_329;
      }

      v1371 = v1741;
      sub_1E626F020(v1745, v1741, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1756, &aBlock);
      v1372 = (*(v1736 + 80) + 16) & ~*(v1736 + 80);
      v1373 = &v1737[v1372 + 7] & 0xFFFFFFFFFFFFFFF8;
      v1374 = swift_allocObject();
      sub_1E5E1E4C0(v1371, v1374 + v1372, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1374 + v1373);
      v1375 = sub_1E65E4438();
      v1376 = *v1370;
      v1377 = *(v1742 + 32);
      v1378 = swift_allocObject();
      v1745 = *(v1370 + v1377);
      *(v1378 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1379 = v1461;
      }

      else
      {

        swift_unknownObjectRetain();
        v1379 = MEMORY[0x1E69E7CD0];
      }

      v1380 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1291 = sub_1E6275404(sub_1E626CB74, v1374, v1375, v1379, MEMORY[0x1E69E7CC0], v1380, 0, 0, 0, 0, 0, 0, 0, v1376, sub_1E6275B5C, v1378, &qword_1ED077308, &qword_1E65F9920, &unk_1F5FB6EF0, sub_1E6275B70, sub_1E6275B6C);

      v1292 = v1712;
      if (v1712)
      {
        v1381 = v1712;
        v1382 = v1291;
        if ([v1381 isViewLoaded])
        {
          v1295 = [v1381 view];
          if (!v1295)
          {
LABEL_326:
            __break(1u);
            goto LABEL_327;
          }

LABEL_219:
          v1383 = v1295;
          v1384 = [v1295 snapshotViewAfterScreenUpdates_];

LABEL_222:
          v1386 = objc_allocWithZone(type metadata accessor for BlurViewController());
          v289 = sub_1E630B7AC(v1291, v1384);

          goto LABEL_264;
        }
      }

      else
      {
LABEL_220:
        v1385 = v1291;
      }

LABEL_221:
      v1384 = 0;
      goto LABEL_222;
    default:
      v280 = *v275;
      if (v279 >= 3)
      {
        v1124 = v1496;
        v1125 = v1745;
        AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v280, *(v275 + 1), v1756, v1496);

        v1126 = sub_1E6273064();
        v1127 = v1501;
        sub_1E6012F9C(v1497, v1126);
        sub_1E5DFE50C(v1124, &qword_1ED0770C8, &unk_1E65FA420);
        v1128 = v1498;
        sub_1E5DFD1CC(v1127, v1498, &unk_1ED0776F0, &qword_1E65F9658);
        v1129 = *v1125;
        v1130 = *(v1742 + 32);
        v1131 = swift_allocObject();
        v1745 = *(v1125 + v1130);
        *(v1131 + 16) = v1745;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1132 = v1452;
        }

        else
        {

          swift_unknownObjectRetain();
          v1132 = MEMORY[0x1E69E7CD0];
        }

        v1133 = v1712;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B60, &qword_1E65F9810);
        v1134 = v1739;
        (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
        *(&v1471 + 1) = sub_1E6275B5C;
        *&v1471 = v1129;
        v1135 = sub_1E630B390(v1128, v1132, MEMORY[0x1E69E7CC0], v1134, 0, 0, 0, 0, 0, 0, v1471, v1131);

        sub_1E5DFE50C(v1128, &unk_1ED0776F0, &qword_1E65F9658);
        if (v1133 && (v1136 = v1133, [v1136 isViewLoaded]))
        {
          v1137 = [v1136 view];
          if (!v1137)
          {
            __break(1u);
LABEL_321:
            __break(1u);
            goto LABEL_322;
          }

          v1138 = v1137;
          v1139 = [v1137 snapshotViewAfterScreenUpdates_];
        }

        else
        {
          v1139 = 0;
        }

        v1172 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v289 = sub_1E630B7AC(v1135, v1139);

        sub_1E5DFE50C(v1127, &unk_1ED0776F0, &qword_1E65F9658);
        goto LABEL_264;
      }

      v281 = v1499;
      v282 = v1745;
      AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v280, *(v275 + 1), v1756, v1499);

      v283 = v1500;
      sub_1E5DFD1CC(v281, v1500, &qword_1ED0770C8, &unk_1E65FA420);
      v284 = *v282;
      v285 = *(v1742 + 32);
      v286 = swift_allocObject();
      v1745 = *(v282 + v285);
      *(v286 + 16) = v1745;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v287 = v1451;
      }

      else
      {

        swift_unknownObjectRetain();
        v287 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771F8, &unk_1E65FA7F0);
      v288 = v1739;
      (*(v1740 + 13))(v1739, *MEMORY[0x1E699CE18], v1738);
      *(&v1463 + 1) = sub_1E6275B5C;
      *&v1463 = v284;
      v289 = sub_1E630B390(v283, v287, MEMORY[0x1E69E7CC0], v288, 0, 0, 0, 0, 0, 0, v1463, v286);

      v290 = &qword_1ED0770C8;
      v291 = &unk_1E65FA420;
LABEL_227:
      sub_1E5DFE50C(v283, v290, v291);
      v1303 = v281;
      goto LABEL_236;
  }
}