unint64_t sub_2275E6EB0()
{
  result = qword_281398B98;
  if (!qword_281398B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BF750, &qword_22768D818);
    sub_2275E6F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398B98);
  }

  return result;
}

unint64_t sub_2275E6F3C()
{
  result = qword_281399198;
  if (!qword_281399198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281399198);
  }

  return result;
}

void sub_2275E6FE4(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    sub_226E99364(319, &qword_281398B08, 0x277CBE428);
    if (v2 <= 0x3F)
    {
      sub_226E99364(319, &qword_281398A90, 0x277CBE440);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void *sub_2275E70C8(uint64_t a1)
{
  v55 = sub_2276694E0();
  v2 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_227665A20();
  MEMORY[0x28223BE20](v63);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v47 - v7;
  MEMORY[0x28223BE20](v8);
  v57 = &v47 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v64 = MEMORY[0x277D84F98];
  v58 = a1;
  v15 = *(a1 + 56);
  v14 = a1 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v56 = v9 + 16;
  v61 = v9;
  v62 = v9 + 32;
  v50 = v2 + 32;
  v51 = v2;
  v49 = (v2 + 8);
  v48 = xmmword_227670CD0;
  v54 = v4;
  v52 = v19;
  while (v18)
  {
LABEL_9:
    v21 = v57;
    v22 = *(v58 + 48);
    v23 = v61;
    v59 = *(v61 + 72);
    v24 = v63;
    (*(v61 + 16))(v57, v22 + v59 * (__clz(__rbit64(v18)) | (v11 << 6)), v63);
    v25 = *(v23 + 32);
    v25(v60, v21, v24);
    sub_2276659F0();
    v27 = sub_226F39E30(v4);
    v28 = v12[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_23;
    }

    v31 = v26;
    if (v12[3] < v30)
    {
      sub_226FE9DAC(v30, 1);
      v12 = v64;
      v32 = sub_226F39E30(v4);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_25;
      }

      v27 = v32;
    }

    v18 &= v18 - 1;
    if (v31)
    {
      (*v49)(v4, v55);
      v34 = v12[7];
      v25(v53, v60, v63);
      v35 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_2273A6798(0, *(v35 + 2) + 1, 1, v35);
        *(v34 + 8 * v27) = v35;
      }

      v38 = *(v35 + 2);
      v37 = *(v35 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v47 = v38 + 1;
        v45 = sub_2273A6798((v37 > 1), v38 + 1, 1, v35);
        v39 = v47;
        v35 = v45;
        *(v34 + 8 * v27) = v45;
      }

      *(v35 + 2) = v39;
      v25(&v35[((*(v61 + 80) + 32) & ~*(v61 + 80)) + v38 * v59], v53, v63);
      v4 = v54;
      v19 = v52;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAD58, &qword_2276797C0);
      v40 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v48;
      v4 = v54;
      v25((v41 + v40), v60, v63);
      v12[(v27 >> 6) + 8] |= 1 << v27;
      (*(v51 + 32))(v12[6] + *(v51 + 72) * v27, v4, v55);
      *(v12[7] + 8 * v27) = v41;
      v42 = v12[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_24;
      }

      v12[2] = v44;
      v19 = v52;
    }
  }

  while (1)
  {
    v20 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v12;
    }

    v18 = *(v14 + 8 * v20);
    ++v11;
    if (v18)
    {
      v11 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22766D220();
  __break(1u);
  return result;
}

void *sub_2275E75A4(uint64_t a1)
{
  v55 = sub_2276694E0();
  v2 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_227664140();
  MEMORY[0x28223BE20](v63);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v47 - v7;
  MEMORY[0x28223BE20](v8);
  v57 = &v47 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v64 = MEMORY[0x277D84F98];
  v58 = a1;
  v15 = *(a1 + 56);
  v14 = a1 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v56 = v9 + 16;
  v61 = v9;
  v62 = v9 + 32;
  v50 = v2 + 32;
  v51 = v2;
  v49 = (v2 + 8);
  v48 = xmmword_227670CD0;
  v54 = v4;
  v52 = v19;
  while (v18)
  {
LABEL_9:
    v21 = v57;
    v22 = *(v58 + 48);
    v23 = v61;
    v59 = *(v61 + 72);
    v24 = v63;
    (*(v61 + 16))(v57, v22 + v59 * (__clz(__rbit64(v18)) | (v11 << 6)), v63);
    v25 = *(v23 + 32);
    v25(v60, v21, v24);
    sub_2276640D0();
    v27 = sub_226F39E30(v4);
    v28 = v12[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_23;
    }

    v31 = v26;
    if (v12[3] < v30)
    {
      sub_226FEFAF8(v30, 1);
      v12 = v64;
      v32 = sub_226F39E30(v4);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_25;
      }

      v27 = v32;
    }

    v18 &= v18 - 1;
    if (v31)
    {
      (*v49)(v4, v55);
      v34 = v12[7];
      v25(v53, v60, v63);
      v35 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_2273A7368(0, *(v35 + 2) + 1, 1, v35);
        *(v34 + 8 * v27) = v35;
      }

      v38 = *(v35 + 2);
      v37 = *(v35 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v47 = v38 + 1;
        v45 = sub_2273A7368((v37 > 1), v38 + 1, 1, v35);
        v39 = v47;
        v35 = v45;
        *(v34 + 8 * v27) = v45;
      }

      *(v35 + 2) = v39;
      v25(&v35[((*(v61 + 80) + 32) & ~*(v61 + 80)) + v38 * v59], v53, v63);
      v4 = v54;
      v19 = v52;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFA8, &qword_227679A68);
      v40 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v48;
      v4 = v54;
      v25((v41 + v40), v60, v63);
      v12[(v27 >> 6) + 8] |= 1 << v27;
      (*(v51 + 32))(v12[6] + *(v51 + 72) * v27, v4, v55);
      *(v12[7] + 8 * v27) = v41;
      v42 = v12[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_24;
      }

      v12[2] = v44;
      v19 = v52;
    }
  }

  while (1)
  {
    v20 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v12;
    }

    v18 = *(v14 + 8 * v20);
    ++v11;
    if (v18)
    {
      v11 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2275E7A80()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);

  return swift_deallocClassInstance();
}

uint64_t sub_2275E7B14(uint64_t a1, void *a2)
{
  v3 = v2;
  v36 = a2;
  v44 = sub_227664140();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276694E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  sub_2276640D0();
  swift_beginAccess();
  v15 = *(v3 + 256);
  if (*(v15 + 16))
  {

    v16 = sub_226F39E30(v14);
    if (v17)
    {
      sub_226E91B50(*(v15 + 56) + 40 * v16, v40);
      (*(v12 + 8))(v14, v11);

      sub_226E92AB8(v40, v41);
      v18 = v42;
      v19 = v43;
      __swift_project_boxed_opaque_existential_0(v41, v42);
      if ((*(v19 + 24))(v18, v19))
      {
        v20 = __swift_project_boxed_opaque_existential_0(v36, v36[3]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFA8, &qword_227679A68);
        v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_227670CD0;
        (*(v5 + 16))(v22 + v21, v39, v44);
        sub_22755FCC8(v22, v20[1], *(v20 + 16), v20[3]);
      }

      return __swift_destroy_boxed_opaque_existential_0(v41);
    }
  }

  (*(v12 + 8))(v14, v11);
  sub_22766A6B0();
  v24 = v44;
  (*(v5 + 16))(v7, v39, v44);
  v25 = sub_22766B380();
  v26 = sub_22766C890();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v41[0] = v28;
    *v27 = 136446210;
    sub_2275ED304(&qword_27D7BF760, MEMORY[0x277D506C0], MEMORY[0x277D506D8]);
    v29 = sub_22766D140();
    v30 = v24;
    v32 = v31;
    (*(v5 + 8))(v7, v30);
    v33 = sub_226E97AE8(v29, v32, v41);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v25, v26, "No registered zone for sync operation: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v24);
  }

  (*(v37 + 8))(v10, v38);
  sub_226F1893C();
  swift_allocError();
  *v34 = 11;
  return swift_willThrow();
}

uint64_t sub_2275E8000()
{
  v1[14] = v0;
  v2 = sub_227669A70();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA288, &qword_22768D8D0);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_2276655F0();
  v1[21] = v4;
  v5 = *(v4 - 8);
  v1[22] = v5;
  v1[23] = *(v5 + 64);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v6 = sub_227665230();
  v1[27] = v6;
  v1[28] = *(v6 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v1[31] = v7;
  v1[32] = *(v7 - 8);
  v1[33] = swift_task_alloc();
  v8 = sub_22766B390();
  v1[34] = v8;
  v1[35] = *(v8 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275E8300, 0, 0);
}

uint64_t sub_2275E8300(uint64_t a1)
{
  sub_22766A6B0();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Launching Paired Device.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v1[40];
  v6 = v1[34];
  v7 = v1[35];
  v8 = v1[33];
  v9 = v1[14];

  (*(v7 + 8))(v5, v6);
  __swift_project_boxed_opaque_existential_0((v9 + 16), *(v9 + 40));
  sub_22766AD70();
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  sub_22766AD10();
  v10 = swift_task_alloc();
  v1[41] = v10;
  *(v10 + 16) = "SeymourServices/PairedSyncCoordinator.swift";
  *(v10 + 24) = 43;
  *(v10 + 32) = 2;
  *(v10 + 40) = 82;
  *(v10 + 48) = v8;
  v11 = swift_task_alloc();
  v1[42] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB390, &unk_22767A8A0);
  *v11 = v1;
  v11[1] = sub_2275E8528;

  return MEMORY[0x2822008A0](v1 + 7, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2275ED19C, v10, v12);
}

uint64_t sub_2275E8528()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  *(*v1 + 344) = v0;

  if (v0)
  {

    v4 = sub_2275E8B14;
  }

  else
  {
    v5 = v2[33];
    v6 = v2[31];
    swift_unknownObjectRelease();

    (*(v3 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v4 = sub_2275E86A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275E86A4()
{
  v1 = v0[14];
  swift_beginAccess();
  v0[44] = *(v1 + 256);

  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = sub_2275E875C;

  return sub_2275EA5C0();
}

uint64_t sub_2275E875C(char a1)
{
  *(*v1 + 500) = a1;

  return MEMORY[0x2822009F8](sub_2275E885C, 0, 0);
}

uint64_t sub_2275E885C()
{
  v1 = *(v0 + 500);
  v2 = *(v0 + 352);
  v3 = *(v0 + 112);
  v4 = v3[20];
  v5 = v3[21];
  __swift_project_boxed_opaque_existential_0(v3 + 17, v4);
  v6 = swift_allocObject();
  *(v0 + 368) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v10 = (*(v5 + 24) + **(v5 + 24));
  v7 = swift_task_alloc();
  *(v0 + 376) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF758, qword_22768D8E0);
  *v7 = v0;
  v7[1] = sub_2275E89F8;

  return v10(v0 + 104, sub_2275ED1B4, v6, v8, v4, v5);
}

uint64_t sub_2275E89F8()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_2275E919C;
  }

  else
  {

    v2 = sub_2275E8C44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275E8B14()
{
  (*(v0[32] + 8))(v0[33], v0[31]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2275E8C44()
{
  v48 = v0;
  sub_227665210();
  v1 = *(sub_227665220() + 16);

  if (v1)
  {
    v3 = v0[29];
    v2 = v0[30];
    v4 = v0[27];
    v5 = v0[28];
    sub_22766A6B0();
    (*(v5 + 16))(v3, v2, v4);
    v6 = sub_22766B380();
    v7 = sub_22766C8B0();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[38];
    v10 = v0[34];
    v11 = v0[35];
    v13 = v0[28];
    v12 = v0[29];
    v14 = v0[27];
    if (v8)
    {
      v45 = v7;
      v15 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47 = v44;
      *v15 = 136315138;
      sub_227665220();
      sub_227665A20();
      v46 = v9;
      sub_2275ED304(&unk_28139B780, MEMORY[0x277D51AF0], MEMORY[0x277D51AF8]);
      v16 = sub_22766C610();
      v43 = v10;
      v18 = v17;

      v19 = *(v13 + 8);
      v19(v12, v14);
      v20 = sub_226E97AE8(v16, v18, &v47);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_226E8E000, v6, v45, "Offering sync data with %s operations.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AA9A450](v44, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      v21 = *(v11 + 8);
      v21(v46, v43);
    }

    else
    {

      v19 = *(v13 + 8);
      v19(v12, v14);
      v21 = *(v11 + 8);
      v21(v9, v10);
    }

    v0[49] = v21;
    v0[50] = v19;
    v34 = v0[20];
    v36 = v0[16];
    v35 = v0[17];
    v37 = v0[15];
    swift_getObjectType();
    (*(v36 + 104))(v35, *MEMORY[0x277D4E540], v37);
    v38 = v34;
    sub_227669610();
    (*(v36 + 8))(v35, v37);
    v39 = swift_task_alloc();
    v0[51] = v39;
    *(v39 + 16) = "SeymourServices/PairedSyncCoordinator.swift";
    *(v39 + 24) = 43;
    *(v39 + 32) = 2;
    *(v39 + 40) = 91;
    *(v39 + 48) = v38;
    v40 = swift_task_alloc();
    v0[52] = v40;
    *v40 = v0;
    v40[1] = sub_2275E92B4;
    v41 = v0[26];
    v42 = v0[21];

    return MEMORY[0x2822008A0](v41, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2275ED1D4, v39, v42);
  }

  else
  {
    sub_22766A6B0();
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[39];
    v26 = v0[34];
    v27 = v0[35];
    v28 = v0[30];
    v29 = v0[27];
    v30 = v0[28];
    if (v24)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_226E8E000, v22, v23, "No operations found in the paired sync request.", v31, 2u);
      MEMORY[0x22AA9A450](v31, -1, -1);
    }

    (*(v27 + 8))(v25, v26);
    (*(v30 + 8))(v28, v29);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_2275E919C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275E92B4()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_2275E9A60;
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    v3 = sub_2275E9404;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2275E9404(uint64_t a1)
{
  v56 = v1;
  v3 = *(v1 + 200);
  v2 = *(v1 + 208);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  sub_22766A6B0();
  v49 = *(v5 + 16);
  v49(v3, v2, v4);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v1 + 392);
  v10 = *(v1 + 296);
  v11 = *(v1 + 272);
  v12 = *(v1 + 200);
  v14 = *(v1 + 168);
  v13 = *(v1 + 176);
  if (v8)
  {
    v47 = *(v1 + 272);
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v55 = v43;
    *v15 = 136315138;
    sub_2276655E0();
    sub_227667580();
    v45 = v9;
    sub_2275ED304(&qword_27D7B8930, MEMORY[0x277D52E68], MEMORY[0x277D52E70]);
    v16 = sub_22766C610();
    v42 = v10;
    v18 = v17;

    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_226E97AE8(v16, v18, &v55);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v6, v7, "Got sync acknowledgement with %s operations completed.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x22AA9A450](v43, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v45(v42, v47);
  }

  else
  {

    v19 = *(v13 + 8);
    v19(v12, v14);
    v9(v10, v11);
  }

  *(v1 + 432) = v19;
  v21 = *(sub_2276655E0() + 16);

  if (v21)
  {
    v46 = *(v1 + 208);
    v22 = *(v1 + 192);
    v53 = *(v1 + 184);
    v23 = *(v1 + 168);
    v24 = *(v1 + 176);
    v25 = *(v1 + 112);
    __swift_project_boxed_opaque_existential_0(v25 + 27, v25[30]);
    *(v1 + 496) = 9;
    *(v1 + 440) = sub_226F19410();
    *(v1 + 448) = sub_226F19464();
    sub_22766A130();
    v26 = v25[21];
    __swift_project_boxed_opaque_existential_0(v25 + 17, v25[20]);
    v49(v22, v46, v23);
    v27 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v28 = swift_allocObject();
    *(v1 + 456) = v28;
    (*(v24 + 32))(v28 + v27, v22, v23);
    *(v28 + ((v53 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
    v29 = *(v26 + 24);

    v51 = (v29 + *v29);
    v30 = swift_task_alloc();
    *(v1 + 464) = v30;
    *v30 = v1;
    v30[1] = sub_2275E9BAC;

    return v51();
  }

  else
  {
    sub_22766A6B0();
    v32 = sub_22766B380();
    v33 = sub_22766C890();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v1 + 288);
    v36 = *(v1 + 272);
    v52 = *(v1 + 240);
    v54 = *(v1 + 400);
    v48 = *(v1 + 392);
    v50 = *(v1 + 216);
    v37 = *(v1 + 208);
    v38 = *(v1 + 168);
    if (v34)
    {
      v44 = v19;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_226E8E000, v32, v33, "Got an empty confirmation.", v39, 2u);
      v40 = v39;
      v19 = v44;
      MEMORY[0x22AA9A450](v40, -1, -1);
    }

    v48(v35, v36);
    v19(v37, v38);
    v54(v52, v50);

    v41 = *(v1 + 8);

    return v41();
  }
}

uint64_t sub_2275E9A60()
{
  v1 = v0[50];
  v2 = v0[30];
  v3 = v0[27];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2275E9BAC()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_2275EA048;
  }

  else
  {

    v2 = sub_2275E9CC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275E9CC8()
{
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_2275E9D58;

  return sub_2275E8000();
}

uint64_t sub_2275E9D58()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_2275EA234;
  }

  else
  {
    v2 = sub_2275E9E6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275E9E6C()
{
  v7 = *(v0 + 240);
  v8 = *(v0 + 400);
  v5 = *(v0 + 432);
  v6 = *(v0 + 216);
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0((*(v0 + 112) + 216), *(*(v0 + 112) + 240));
  *(v0 + 499) = 9;
  sub_22766A120();
  v5(v1, v2);
  v8(v7, v6);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2275EA048()
{
  v8 = *(v0 + 240);
  v9 = *(v0 + 400);
  v6 = *(v0 + 432);
  v7 = *(v0 + 216);
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v3 = *(v0 + 112);

  __swift_project_boxed_opaque_existential_0((v3 + 216), *(v3 + 240));
  *(v0 + 497) = 9;
  sub_22766A120();
  v6(v1, v2);
  v9(v8, v7);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2275EA234()
{
  v7 = *(v0 + 240);
  v8 = *(v0 + 400);
  v5 = *(v0 + 432);
  v6 = *(v0 + 216);
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_0((*(v0 + 112) + 216), *(*(v0 + 112) + 240));
  *(v0 + 498) = 9;
  sub_22766A120();
  v5(v1, v2);
  v8(v7, v6);

  v3 = *(v0 + 8);

  return v3();
}

double sub_2275EA414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2276655E0();
  v7[2] = a3;
  v7[3] = a1;
  sub_2275CE534(sub_2275ED294, v7, v5);

  return result;
}

double sub_2275EA490(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2276694E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a2 + 56), *(a2 + 80));
  v9 = sub_227667550();
  v11 = v10;
  sub_227667570();
  sub_22712CDF8(v9, v11, v8, a3);
  (*(v6 + 8))(v8, v5);

  return result;
}

uint64_t sub_2275EA5C0()
{
  v1[33] = v0;
  v2 = sub_22766B390();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v1[38] = v3;
  v4 = *(v3 - 8);
  v1[39] = v4;
  v1[40] = *(v4 + 64);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[43] = v5;
  v1[44] = *(v5 - 8);
  v1[45] = swift_task_alloc();
  v6 = sub_227665AD0();
  v1[46] = v6;
  v1[47] = *(v6 - 8);
  v1[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275EA7CC, 0, 0);
}

uint64_t sub_2275EA7CC()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 264) + 176), *(*(v0 + 264) + 200));
  v2 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v1 + v2, v0 + 16);
  if (*(v0 + 40))
  {
    sub_226E92AB8((v0 + 16), v0 + 56);
    sub_226E91B50(v0 + 56, v0 + 96);
    v3 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  }

  else
  {
    sub_226F099DC();
    v4 = swift_allocError();
    *v5 = 0;
    *(swift_allocObject() + 16) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v6 = *(v0 + 360);
  v8 = *(v0 + 328);
  v7 = *(v0 + 336);
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  v11 = *(v0 + 304);
  (*(v10 + 16))(v8, v7, v11);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v12, v8, v11);
  v15 = (v14 + v13);
  *v15 = sub_2275ED080;
  v15[1] = 0;
  sub_227669270();
  (*(v10 + 8))(v7, v11);
  v16 = swift_task_alloc();
  *(v0 + 392) = v16;
  *(v16 + 16) = "SeymourServices/PairedSyncCoordinator.swift";
  *(v16 + 24) = 43;
  *(v16 + 32) = 2;
  *(v16 + 40) = 189;
  *(v16 + 48) = v6;
  v17 = swift_task_alloc();
  *(v0 + 400) = v17;
  *v17 = v0;
  v17[1] = sub_226F0F658;
  v18 = *(v0 + 384);
  v19 = *(v0 + 368);

  return MEMORY[0x2822008A0](v18, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2275ED2D4, v16, v19);
}

void sub_2275EAB0C(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v60 = a3;
  v55 = a2;
  v51 = a4;
  v7 = sub_22766B390();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7);
  v52 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v56 = a1;
  v10 = __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB328, &unk_227681200);
  v15 = swift_allocObject();
  v16 = v11;
  v17 = v12;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  swift_getKeyPath();
  v18 = sub_2276633C0();
  v59[3] = MEMORY[0x277D849A8];
  LODWORD(v59[0]) = v18;
  sub_226F06498();

  v19 = sub_22766C820();
  sub_226ED25F8(v59, v57);
  v20 = v58;
  if (v58)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v57, v58);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_0(v57);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB330 qword_227681240))];

  sub_226EBC888(v59);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v50[1] = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v59, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v33 = sub_2272316B8(100);
  if (v5)
  {
    swift_setDeallocating();

    v34 = qword_2813B2078;
    v35 = sub_22766A100();
    (*(*(v35 - 8) + 8))(v15 + v34, v35);
    swift_deallocClassInstance();
  }

  else
  {
    v36 = v33;
    swift_setDeallocating();

    v37 = qword_2813B2078;
    v38 = sub_22766A100();
    (*(*(v38 - 8) + 8))(v15 + v37, v38);
    swift_deallocClassInstance();
    v39 = v52;
    sub_22766A6B0();

    v40 = sub_22766B380();
    v41 = sub_22766C8B0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v59[0] = v43;
      *v42 = 136446210;
      sub_227664140();
      sub_2275ED304(&unk_28139B9C0, MEMORY[0x277D506C0], MEMORY[0x277D506C8]);
      v44 = sub_22766C610();
      v46 = sub_226E97AE8(v44, v45, v59);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_226E8E000, v40, v41, "Found paired sync operations: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AA9A450](v43, -1, -1);
      MEMORY[0x22AA9A450](v42, -1, -1);
    }

    (*(v53 + 8))(v39, v54);
    v47 = sub_2275E75A4(v36);
    MEMORY[0x28223BE20](v47);
    v50[-4] = v55;
    LOBYTE(v50[-3]) = v60;
    v50[-2] = v56;
    v48 = sub_2271C35AC(sub_2275ED2B0, &v50[-6], v47);

    v49 = sub_226F36400(v48);
    *v51 = v49;
  }
}

void sub_2275EB214(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = a4;
  LODWORD(v38) = a3;
  v31 = a5;
  v7 = sub_227664140();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276694E0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    return;
  }

  (*(v8 + 16))(v10, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7, v13);
  sub_2276640D0();
  (*(v8 + 8))(v10, v7);
  if (!*(a2 + 16) || (v17 = sub_226F39E30(v15), (v18 & 1) == 0))
  {
    sub_226F1893C();
    swift_allocError();
    *v28 = 11;
    swift_willThrow();
    (*(v12 + 8))(v15, v11);
    return;
  }

  sub_226E91B50(*(a2 + 56) + 40 * v17, v34);
  sub_226E92AB8(v34, v35);
  v19 = v36;
  v20 = v37;
  __swift_project_boxed_opaque_existential_0(v35, v36);
  if (((*(v20 + 32))(v38, v19, v20) & 1) == 0)
  {
    sub_226F1893C();
    swift_allocError();
    *v29 = 19;
    swift_willThrow();
    goto LABEL_9;
  }

  v21 = v36;
  v22 = v37;
  v30 = __swift_project_boxed_opaque_existential_0(v35, v36);
  *&v34[0] = v16;
  v38 = *(v22 + 48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE710, &qword_22768D920);
  v24 = sub_226E9CFD0(&qword_281399110, &qword_27D7BE710, &qword_22768D920, MEMORY[0x277D83970]);
  v25 = v33;
  v26 = v38(v34, v32, v23, v24, v21, v22);
  if (v25)
  {
LABEL_9:
    (*(v12 + 8))(v15, v11);
    goto LABEL_10;
  }

  v27 = v26;
  (*(v12 + 8))(v15, v11);
  *v31 = v27;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t sub_2275EB590(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2276655F0();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_227665230();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_22766B390();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275EB724, 0, 0);
}

uint64_t sub_2275EB724(uint64_t a1)
{
  v42 = v1;
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  v5 = v1[7];
  sub_22766A6B0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[19];
  v10 = v1[15];
  v11 = v1[16];
  v13 = v1[13];
  v12 = v1[14];
  v14 = v1[12];
  if (v8)
  {
    v39 = v7;
    v15 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v15 = 136315138;
    sub_227665220();
    sub_227665A20();
    v40 = v9;
    sub_2275ED304(&unk_28139B780, MEMORY[0x277D51AF0], MEMORY[0x277D51AF8]);
    v16 = sub_22766C610();
    v37 = v10;
    v18 = v17;

    (*(v13 + 8))(v12, v14);
    v19 = sub_226E97AE8(v16, v18, &v41);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v6, v39, "Got sync data with %s operations.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v38, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    v20 = *(v11 + 8);
    v20(v40, v37);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v20 = *(v11 + 8);
    v20(v9, v10);
  }

  v1[20] = v20;
  v21 = v1[8];
  swift_beginAccess();
  v22 = *(v21 + 256);

  v23 = sub_227665220();
  v24 = sub_2275E70C8(v23);
  v1[21] = v24;
  sub_22766A6B0();

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134349056;
    *(v27 + 4) = v24[2];

    _os_log_impl(&dword_226E8E000, v25, v26, "Saving %{public}ld zones from payload.", v27, 0xCu);
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  else
  {
  }

  v28 = v1[18];
  v29 = v1[15];
  v1[22] = (v1[16] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v28, v29);
  v1[5] = v24;
  v30 = swift_allocObject();
  *(v30 + 16) = v22;
  v31 = swift_allocObject();
  v1[23] = v31;
  *(v31 + 16) = &unk_22768D938;
  *(v31 + 24) = v30;
  v32 = swift_task_alloc();
  v1[24] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF768, &qword_22768D950);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF770, &qword_22768D958);
  v35 = sub_226E9CFD0(&qword_27D7BF778, &qword_27D7BF768, &qword_22768D950, MEMORY[0x277D83530]);
  *v32 = v1;
  v32[1] = sub_2275EBB98;

  return MEMORY[0x2821AFB18](5, &unk_22768D948, v31, v33, v34, v35);
}

uint64_t sub_2275EBB98(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_2275EBF78;
  }

  else
  {

    *(v4 + 208) = a1;
    v5 = sub_2275EBCDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275EBCDC()
{
  v25 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  sub_226F34B1C(v0[26]);
  sub_2276655D0();
  sub_22766A6B0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[15];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  if (v7)
  {
    v23 = v0[17];
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v14 = 136315138;
    sub_2276655E0();
    sub_227667580();
    sub_2275ED304(&qword_27D7B8930, MEMORY[0x277D52E68], MEMORY[0x277D52E70]);
    v15 = sub_22766C610();
    v21 = v8;
    v17 = v16;

    (*(v12 + 8))(v11, v13);
    v18 = sub_226E97AE8(v15, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_226E8E000, v5, v6, "Successfully saved %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x22AA9A450](v22, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    v21(v23, v10);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    v8(v9, v10);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_2275EBF78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275EC024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v4 = sub_227665A20();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v5 = sub_227667580();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v6 = sub_2276694E0();
  v3[35] = v6;
  v3[36] = *(v6 - 8);
  v3[37] = swift_task_alloc();
  v7 = sub_22766B390();
  v3[38] = v7;
  v3[39] = *(v7 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275EC208, 0, 0);
}

uint64_t sub_2275EC208()
{
  if (*(*(v0 + 224) + 16) && (v1 = sub_226F39E30(*(v0 + 208)), (v2 & 1) != 0))
  {
    sub_226E91B50(*(*(v0 + 224) + 56) + 40 * v1, v0 + 56);
    sub_226E92AB8((v0 + 56), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v3);
    v8 = (*(v4 + 16) + **(v4 + 16));
    v5 = swift_task_alloc();
    *(v0 + 336) = v5;
    *v5 = v0;
    v5[1] = sub_2275EC3E0;

    return v8(v3, v4);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7(0);
  }
}

uint64_t sub_2275EC3E0(char a1)
{
  *(*v1 + 368) = a1;

  return MEMORY[0x2822009F8](sub_2275EC4E0, 0, 0);
}

uint64_t sub_2275EC4E0()
{
  if (*(v0 + 368) == 1)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v1);

    v4 = sub_226F47124(v3);
    *(v0 + 344) = v4;

    v8 = (*(v2 + 40) + **(v2 + 40));
    v5 = swift_task_alloc();
    *(v0 + 352) = v5;
    *v5 = v0;
    v5[1] = sub_2275EC6B8;

    return v8(v4, v1, v2);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v7 = *(v0 + 8);

    return v7(0);
  }
}

uint64_t sub_2275EC6B8()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_2275ECB70;
  }

  else
  {

    v2 = sub_2275EC7D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275EC7D4(uint64_t a1)
{
  v40 = v1;
  sub_22766A6B0();
  sub_226E91B50((v1 + 2), (v1 + 17));
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[41];
  v6 = v1[38];
  v7 = v1[39];
  if (v4)
  {
    v8 = v1[36];
    v9 = v1[37];
    v33 = v1[35];
    v10 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v10 = 136446210;
    v38 = v6;
    v39 = v34;
    v11 = v1[20];
    v12 = v1[21];
    __swift_project_boxed_opaque_existential_0(v1 + 17, v11);
    v36 = v5;
    (*(v12 + 8))(v11, v12);
    v13 = sub_2276694C0();
    v15 = v14;
    (*(v8 + 8))(v9, v33);
    __swift_destroy_boxed_opaque_existential_0(v1 + 17);
    v16 = sub_226E97AE8(v13, v15, &v39);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v2, v3, "Saved zone %{public}s successfully.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AA9A450](v34, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v7 + 8))(v36, v38);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v1 + 17);
  }

  v17 = v1[27];
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = v1[33];
    v21 = v1[30];
    v39 = MEMORY[0x277D84F90];
    sub_226F20888(0, v18, 0);
    v19 = v39;
    v23 = *(v21 + 16);
    v22 = v21 + 16;
    v24 = v17 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v35 = *(v22 + 56);
    v37 = v23;
    do
    {
      v25 = v1[31];
      v26 = v1[29];
      v37(v25, v24, v26);
      sub_2276659F0();
      sub_2276659E0();
      sub_227667560();
      (*(v22 - 8))(v25, v26);
      v39 = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F20888((v27 > 1), v28 + 1, 1);
        v19 = v39;
      }

      v29 = v1[34];
      v30 = v1[32];
      *(v19 + 16) = v28 + 1;
      (*(v20 + 32))(v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v28, v29, v30);
      v24 += v35;
      --v18;
    }

    while (v18);
  }

  __swift_destroy_boxed_opaque_existential_0(v1 + 2);

  v31 = v1[1];

  return v31(v19);
}

uint64_t sub_2275ECB70()
{
  v29 = v0;
  v1 = *(v0 + 360);

  sub_22766A6B0();
  sub_226E91B50(v0 + 16, v0 + 96);
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  if (os_log_type_enabled(v3, v4))
  {
    v24 = *(v0 + 360);
    v25 = *(v0 + 312);
    v5 = *(v0 + 296);
    v26 = *(v0 + 304);
    v27 = *(v0 + 320);
    v6 = *(v0 + 288);
    v23 = *(v0 + 280);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136446466;
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_0((v0 + 96), v9);
    (*(v10 + 8))(v9, v10);
    v11 = sub_2276694C0();
    v13 = v12;
    (*(v6 + 8))(v5, v23);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v14 = sub_226E97AE8(v11, v13, &v28);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v15 = MEMORY[0x22AA995D0](*(v0 + 184), *(v0 + 192));
    v17 = sub_226E97AE8(v15, v16, &v28);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_226E8E000, v3, v4, "Couldn't save zone %{public}s with error: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v25 + 8))(v27, v26);
  }

  else
  {
    v19 = *(v0 + 312);
    v18 = *(v0 + 320);
    v20 = *(v0 + 304);

    (*(v19 + 8))(v18, v20);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_2275ECE48(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF780, &qword_22768D960) + 48));
  v9 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_2275ECF6C;

  return v9(a2, v6);
}

uint64_t sub_2275ECF6C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2275ED080(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 8))(v5, v6, v7);
  return (*(v3 + 8))(v5, v2);
}

double sub_2275ED1EC(uint64_t a1)
{
  v3 = *(sub_2276655F0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2275EA414(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2275ED304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2275ED34C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2274F664C;

  return sub_2275EC024(a1, a2, v6);
}

uint64_t sub_2275ED3F8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E92F34;

  return sub_2275ECE48(a1, a2, v6);
}

void sub_2275ED4C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v168 = a2;
  v175 = sub_227662190();
  v170 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v177 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABD8, &unk_2276795D0);
  v4 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v174 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v185 = &v148 - v7;
  MEMORY[0x28223BE20](v8);
  v184 = &v148 - v9;
  v187 = sub_227665440();
  v176 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v179 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v172 = &v148 - v12;
  v13 = sub_227663540();
  MEMORY[0x28223BE20](v13 - 8);
  v169 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276622D0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_2276627D0();
  v19 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v167 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v171 = &v148 - v22;
  MEMORY[0x28223BE20](v23);
  v173 = &v148 - v24;
  MEMORY[0x28223BE20](v25);
  v183 = &v148 - v26;
  v27 = sub_227662750();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v178 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v148 - v32;
  v34 = [a1 dateCreated];
  if (!v34)
  {
    goto LABEL_20;
  }

  v182 = v33;
  v35 = v34;
  sub_227662710();

  v36 = [a1 identifier];
  if (!v36)
  {
LABEL_19:
    (*(v28 + 8))(v182, v27);
LABEL_20:
    v46 = sub_227664DD0();
    sub_2275F0364(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D51028], v46);
    swift_willThrow();

    return;
  }

  v37 = v36;
  sub_2276627B0();

  v38 = [a1 startDate];
  if (!v38)
  {
LABEL_18:
    (*(v19 + 8))(v183, v180);
    goto LABEL_19;
  }

  v39 = v38;
  v157 = sub_22766C000();
  v163 = v40;

  v41 = [a1 schedule];
  if (!v41)
  {
LABEL_17:

    goto LABEL_18;
  }

  v42 = v41;
  v43 = [a1 templateIdentifier];
  if (!v43)
  {

    goto LABEL_17;
  }

  v166 = v28;
  v153 = a1;
  v44 = v43;
  sub_2276627B0();

  v45 = MEMORY[0x277D84F90];
  v192 = MEMORY[0x277D84F90];
  v152 = v42;
  sub_22766CA80();
  sub_2275F0364(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22766CBB0();
  v165 = v27;
  if (v191)
  {
    v161 = MEMORY[0x277D84F90];
    do
    {
      while (1)
      {
        sub_226F04970(&v190, &v188);
        type metadata accessor for ManagedWorkoutPlanItemIndex();
        if ((swift_dynamicCast() & 1) == 0 || !v189)
        {
          break;
        }

        MEMORY[0x22AA985C0]();
        if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v164 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22766C360();
        }

        sub_22766C3A0();
        v161 = v192;
        sub_22766CBB0();
        v27 = v165;
        if (!v191)
        {
          goto LABEL_22;
        }
      }

      sub_22766CBB0();
    }

    while (v191);
    v27 = v165;
  }

  else
  {
    v161 = v45;
  }

LABEL_22:
  (*(v16 + 8))(v18, v15);
  v48 = v161;
  v160 = v19;
  v159 = v4;
  if (v161 >> 62)
  {
    goto LABEL_51;
  }

  v49 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = v166;
  v51 = v183;
  v53 = v177;
  for (i = v178; v49; i = v178)
  {
    *&v190 = MEMORY[0x277D84F90];
    sub_226F1F2A8(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      goto LABEL_78;
    }

    v54 = 0;
    v164 = v190;
    v158 = v48 & 0xC000000000000001;
    v154 = v48 & 0xFFFFFFFFFFFFFF8;
    v156 = (v170 + 8);
    v55 = v182;
    v155 = v49;
    while (!__OFADD__(v54, 1))
    {
      v162 = (v54 + 1);
      if (v158)
      {
        v56 = MEMORY[0x22AA991A0](v54, v48);
      }

      else
      {
        if (v54 >= *(v154 + 16))
        {
          goto LABEL_77;
        }

        v56 = *(v48 + 8 * v54 + 32);
      }

      v57 = v56;
      v58 = [v56 offset];
      if (!v58)
      {
        goto LABEL_45;
      }

      v59 = v58;
      sub_22766C000();

      v170 = [v57 item];
      if (!v170)
      {

        v50 = v166;
        v55 = v182;
LABEL_45:

        v83 = sub_227664DD0();
        sub_2275F0364(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v83 - 8) + 104))(v84, *MEMORY[0x277D51028], v83);
        swift_willThrow();

        v85 = *(v19 + 8);
        v86 = v180;
        v85(v173, v180);
        v85(v183, v86);
        (*(v50 + 8))(v55, v27);
LABEL_48:

        return;
      }

      v60 = v181;
      sub_2276620C0();
      v61 = v53;
      if (v60)
      {

        goto LABEL_47;
      }

      v181 = 0;
      sub_227662120();
      if (v62 & 1) != 0 || (sub_227662130(), (v63) || (sub_227662160(), (v64) || (sub_227662170(), (v65))
      {

        v81 = sub_227664470();
        sub_2275F0364(&qword_27D7BA250, MEMORY[0x277D50940], MEMORY[0x277D50948]);
        swift_allocError();
        (*(*(v81 - 8) + 104))(v82, *MEMORY[0x277D50908], v81);
        swift_willThrow();

        (*v156)(v53, v175);
        v27 = v165;
LABEL_47:
        v87 = v183;
        v88 = *(v19 + 8);
        v89 = v180;
        v88(v173, v180);
        v88(v87, v89);
        (*(v166 + 8))(v182, v27);
        goto LABEL_48;
      }

      v66 = v186;
      v67 = *(v186 + 48);
      v68 = v174;
      sub_2276653F0();
      (*v156)(v61, v175);
      v69 = v57;
      *(v68 + v67) = [v57 index];
      v70 = v170;
      v71 = [v170 workout];
      if (!v71)
      {

        v90 = sub_227664DD0();
        sub_2275F0364(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v90 - 8) + 104))(v91, *MEMORY[0x277D51028], v90);
        swift_willThrow();

        v92 = *(v160 + 8);
        v93 = v180;
        v92(v173, v180);
        v92(v183, v93);
        (*(v166 + 8))(v182, v165);
        (*(v176 + 8))(v68, v187);
        goto LABEL_48;
      }

      v72 = v71;
      v73 = (v68 + *(v66 + 64));
      v74 = sub_22766C000();
      v76 = v75;

      *v73 = v74;
      v73[1] = v76;
      v77 = v164;
      *&v190 = v164;
      v79 = v164[2];
      v78 = v164[3];
      v27 = v165;
      if (v79 >= v78 >> 1)
      {
        sub_226F1F2A8((v78 > 1), v79 + 1, 1);
        v77 = v190;
      }

      v77[2] = v79 + 1;
      v80 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v164 = v77;
      sub_2275F03AC(v68, v77 + v80 + *(v159 + 72) * v79);
      ++v54;
      v19 = v160;
      v50 = v166;
      v55 = v182;
      v51 = v183;
      v53 = v177;
      v48 = v161;
      if (v162 == v155)
      {

        i = v178;
        v94 = v164;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_51:
    v49 = sub_22766CD20();
    v50 = v166;
    v51 = v183;
    v53 = v177;
  }

  v94 = MEMORY[0x277D84F90];
LABEL_53:
  v95 = v181;
  v96 = sub_2275F041C(v94);
  v149 = v95;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9818, &unk_22767C480);
  v97 = sub_22766CFF0();
  v164 = v97;
  v98 = 0;
  v99 = v96[8];
  v151 = v96 + 8;
  v162 = v96;
  v100 = 1 << *(v96 + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v102 = v101 & v99;
  v150 = (v100 + 63) >> 6;
  v155 = v176 + 16;
  v181 = v176 + 32;
  v103 = (v176 + 8);
  v154 = v97 + 64;
  v104 = v182;
  if (v102)
  {
    while (1)
    {
      v170 = ((v102 - 1) & v102);
      v174 = v98;
      v105 = __clz(__rbit64(v102)) | (v98 << 6);
LABEL_62:
      v109 = v162;
      v110 = v162[6];
      v111 = v176;
      v112 = *(v176 + 16);
      v175 = *(v176 + 72) * v105;
      v113 = v172;
      v114 = v187;
      v112(v172, v110 + v175, v187);
      v115 = v109[7];
      v177 = v105;
      v116 = *(v115 + 8 * v105);
      v117 = *(v111 + 32);
      v117(v179, v113, v114);
      *&v190 = v116;
      swift_getKeyPath();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7E8, &qword_22768DA00);
      sub_226E9CFD0(&qword_27D7BF7F0, &qword_27D7BF7E8, &qword_22768DA00, MEMORY[0x277D83970]);
      v118 = sub_22766C220();

      v119 = *(v118 + 16);
      if (v119)
      {
        v158 = v116;
        v161 = v117;
        *&v190 = MEMORY[0x277D84F90];
        sub_226F1F2C8(0, v119, 0);
        v120 = v190;
        v121 = (*(v159 + 80) + 32) & ~*(v159 + 80);
        v156 = v118;
        v122 = v118 + v121;
        v123 = *(v159 + 72);
        v124 = v186;
        do
        {
          v125 = v184;
          sub_226E93170(v122, v184, &qword_27D7BABD8, &unk_2276795D0);
          v126 = v185;
          sub_2275F03AC(v125, v185);
          v127 = (v126 + *(v124 + 64));
          v129 = *v127;
          v128 = v127[1];
          (*v103)(v126, v187);
          *&v190 = v120;
          v131 = *(v120 + 16);
          v130 = *(v120 + 24);
          if (v131 >= v130 >> 1)
          {
            sub_226F1F2C8((v130 > 1), v131 + 1, 1);
            v120 = v190;
          }

          *(v120 + 16) = v131 + 1;
          v132 = v120 + 16 * v131;
          *(v132 + 32) = v129;
          *(v132 + 40) = v128;
          v122 += v123;
          --v119;
          v124 = v186;
        }

        while (v119);

        v19 = v160;
        v27 = v165;
        v51 = v183;
        v117 = v161;
      }

      else
      {

        v120 = MEMORY[0x277D84F90];
        v51 = v183;
      }

      v133 = v177;
      *(v154 + ((v177 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v177;
      v134 = v164;
      v117((v164[6] + v175), v179, v187);
      *(v134[7] + 8 * v133) = v120;
      v135 = v134[2];
      v136 = __OFADD__(v135, 1);
      v137 = v135 + 1;
      v50 = v166;
      i = v178;
      if (v136)
      {
        break;
      }

      v134[2] = v137;
      v104 = v182;
      v98 = v174;
      v102 = v170;
      if (!v170)
      {
        goto LABEL_57;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return;
  }

LABEL_57:
  v106 = v98;
  while (1)
  {
    v107 = (v106 + 1);
    if (__OFADD__(v106, 1))
    {
      __break(1u);
      goto LABEL_76;
    }

    if (v107 >= v150)
    {
      break;
    }

    v108 = v151[v107];
    ++v106;
    if (v108)
    {
      v170 = ((v108 - 1) & v108);
      v174 = v107;
      v105 = __clz(__rbit64(v108)) | (v107 << 6);
      goto LABEL_62;
    }
  }

  (*(v50 + 16))(i, v104, v27);
  v138 = v19;
  v139 = *(v19 + 16);
  v140 = v180;
  v139(v171, v51, v180);
  v141 = v149;
  sub_227663490();
  v181 = v141;
  if (v141)
  {

    v142 = *(v138 + 8);
    v142(v171, v140);
    v143 = *(v50 + 8);
    v143(v178, v27);
    v142(v173, v140);
    v142(v51, v140);
    v143(v182, v27);
  }

  else
  {
    v144 = v50;
    v145 = v153;
    *&v188 = [v153 state];
    sub_226FAF774();
    sub_227663AE0();
    v187 = v190;
    LODWORD(v186) = BYTE8(v190);
    v146 = v173;
    v139(v167, v173, v140);
    v192 = [v145 variation];
    sub_2272F1AC4();
    sub_227663AE0();
    sub_2276637F0();

    v147 = *(v138 + 8);
    v147(v146, v140);
    v147(v183, v140);
    (*(v144 + 8))(v182, v27);
  }
}

void sub_2275EEB10(void *a1, uint64_t a2)
{
  v36 = a1;
  v5 = sub_227663540();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276627D0();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v2;
  v14 = sub_227663840();
  v40 = a2;
  sub_2275F0914(v14, sub_2275F08F8, v39);
  v16 = v15;

  if (!v3)
  {
    v32 = v16;
    v33 = v5;
    sub_2276637E0();
    v17 = sub_2276626A0();
    (*(v11 + 8))(v13, v10);
    v18 = v36;
    [v36 setDateCreated_];

    sub_2276637C0();
    v19 = sub_227662790();
    v20 = *(v34 + 8);
    v20(v9, v7);
    [v18 setIdentifier_];

    sub_227663820();
    v21 = sub_227662790();
    v20(v9, v7);
    [v18 setTemplateIdentifier_];

    v22 = v35;
    sub_2276638B0();
    sub_2276634A0();
    (*(v37 + 8))(v22, v33);
    v23 = sub_22766BFD0();

    [v18 setStartDate_];

    v41 = sub_227663850();
    v42 = v24 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC408, &qword_22767DA98);
    sub_227663AD0();
    v25 = v43;
    if (v43 >= 0x7FFFFFFF)
    {
      v25 = 0x7FFFFFFFLL;
    }

    if (v25 <= 0xFFFFFFFF80000000)
    {
      v26 = 0xFFFFFFFF80000000;
    }

    else
    {
      v26 = v25;
    }

    [v18 setState_];
    sub_227073BD4(v32);

    v27 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v28 = sub_22766C2B0();

    v29 = [v27 initWithArray_];

    [v18 setSchedule_];
    v41 = sub_2276638C0();
    v42 = v30 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9298, &unk_227676680);
    sub_227663AD0();
    if (v43 < -32768)
    {
      __break(1u);
    }

    else if (v43 < 0x8000)
    {
      [v18 setVariation_];
      return;
    }

    __break(1u);
  }
}

void sub_2275EEFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_22766CF30();
    v8 = 0;
    for (i = (a2 + 40); ; i += 2)
    {
      v11 = *(i - 1);
      v10 = *i;

      sub_2275EF0EC(v8, v11, v10, a3);
      if (v4)
      {
        break;
      }

      ++v8;

      sub_22766CF00();
      sub_22766CF40();
      sub_22766CF50();
      sub_22766CF10();
      if (v5 == v8)
      {
        return;
      }
    }
  }
}

void sub_2275EF0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ManagedWorkoutPlanItemIndex();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v8 = objc_opt_self();
  v9 = sub_22766BFD0();
  v10 = [v8 insertNewObjectForEntityForName:v9 inManagedObjectContext:a4];

  type metadata accessor for ManagedWorkoutPlanItem();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

    v15 = sub_227664DD0();
    sub_2275F0364(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D51000], v15);
    swift_willThrow();
    goto LABEL_7;
  }

  v12 = v11;
  v13 = sub_22766BFD0();
  [v12 setWorkout_];

  [v7 setItem_];
  sub_22730F2B4();
  if (v4)
  {
LABEL_7:

    return;
  }

  v14 = sub_22766BFD0();

  [v7 setOffset_];

  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    [v7 setIndex_];
    return;
  }

  __break(1u);
}

void *static WorkoutPlan.representativeSamples()()
{
  v84 = sub_2276627D0();
  v68 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v66 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v82 = &v66 - v2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF788, &qword_22768D968);
  v3 = *(v81 - 1);
  MEMORY[0x28223BE20](v81);
  v80 = &v66 - v4;
  v79 = sub_2276638D0();
  v5 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227662940();
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_227662750();
  v67 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v87 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_227663540();
  v70 = *(v86 - 8);
  v75 = (v86 - 8);
  v69 = v70;
  MEMORY[0x28223BE20](v86);
  v85 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_227662630();
  v71 = sub_227662780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF790, &qword_22768D970);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_227675BD0;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAD98, &qword_227679800);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808) - 8);
  v12 = *v11;
  v90 = *(*v11 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v92 = xmmword_227670CD0;
  *(v14 + 16) = xmmword_227670CD0;
  v15 = v11[14];
  sub_2276653F0();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABC8, &qword_2276795C0);
  v16 = swift_allocObject();
  *(v16 + 16) = v92;
  *(v16 + 32) = sub_22766C0A0();
  *(v16 + 40) = v17;
  *(v14 + v13 + v15) = v16;
  v18 = sub_22714BF00(v14);
  swift_setDeallocating();
  sub_226E97D1C(v14 + v13, &qword_27D7BADA0, &qword_227679808);
  swift_deallocClassInstance();
  v19 = v88;
  *(v88 + 32) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v92;
  v21 = v11[14];
  sub_2276653F0();
  v22 = swift_allocObject();
  *(v22 + 16) = v92;
  *(v22 + 32) = sub_22766C0A0();
  *(v22 + 40) = v23;
  *(v20 + v13 + v21) = v22;
  v24 = sub_22714BF00(v20);
  swift_setDeallocating();
  sub_226E97D1C(v20 + v13, &qword_27D7BADA0, &qword_227679808);
  swift_deallocClassInstance();
  *(v19 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v92;
  v26 = v25 + v13;
  v27 = v11[14];
  sub_2276653F0();
  v28 = swift_allocObject();
  *(v28 + 16) = v92;
  *(v28 + 32) = sub_22766C0A0();
  *(v28 + 40) = v29;
  *(v26 + v27) = v28;
  v30 = sub_22714BF00(v25);
  swift_setDeallocating();
  sub_226E97D1C(v26, &qword_27D7BADA0, &qword_227679808);
  swift_deallocClassInstance();
  *(v19 + 48) = v30;
  sub_227662640();
  sub_227662890();
  v31 = v85;
  sub_2276634E0();
  v32 = v86;
  v33 = sub_22766C380();
  *(v33 + 16) = 3;
  v34 = v33 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
  v35 = v69;
  v36 = (v69 + 16);
  v37 = *(v69 + 16);
  v38 = v31;
  v37(v34, v31, v32);
  v39 = *(v70 + 72);
  v76 = v36;
  v75 = v37;
  v37(v34 + v39, v38, v32);
  (*(v35 + 32))(v34 + 2 * v39, v38, v32);
  sub_2275F0264();
  sub_226FAF774();
  v40 = sub_227663B50();
  v41 = sub_227662780();
  sub_2275F02B8();
  sub_2272F1AC4();
  v42 = sub_227663B50();
  v113 = v71;
  v114[0] = v72;
  v114[1] = v114;
  v114[2] = &v113;
  v111 = v33;
  v112 = v88;
  v114[3] = &v112;
  v114[4] = &v111;
  v109 = v41;
  v110 = v40;
  v114[5] = &v110;
  v114[6] = &v109;
  v108 = v42;
  v114[7] = &v108;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v102 = v43;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7A8, &qword_22768D978);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7B0, &qword_22768D980);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7B8, &qword_22768D988);
  v106 = v43;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7C0, &qword_22768D990);
  v44 = MEMORY[0x277D83970];
  v94 = sub_226E9CFD0(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48, MEMORY[0x277D83970]);
  v45 = sub_226E9CFD0(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750, v44);
  v95 = v45;
  v96 = sub_226E9CFD0(&qword_27D7BF7C8, &qword_27D7BF7A8, &qword_22768D978, v44);
  v97 = sub_226E9CFD0(&qword_27D7BF7D0, &qword_27D7BF7B0, &qword_22768D980, v44);
  v98 = sub_226E9CFD0(&qword_27D7BF7D8, &qword_27D7BF7B8, &qword_22768D988, v44);
  v99 = v45;
  v100 = sub_226E9CFD0(&qword_27D7BF7E0, &qword_27D7BF7C0, &qword_22768D990, v44);
  v46 = sub_2276638E0();

  v47 = *(v46 + 16);
  if (v47)
  {
    v93 = MEMORY[0x277D84F90];
    result = sub_226F1F5A8(0, v47, 0);
    v49 = 0;
    v50 = v93;
    v70 = v46 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v69 = v67 + 16;
    v68 += 2;
    v67 = v5 + 32;
    v74 = v3;
    v73 = v5;
    v72 = v46;
    v71 = v47;
    v51 = v68;
    v52 = v82;
    while (v49 < *(v46 + 16))
    {
      v53 = v80;
      sub_226E93170(v70 + *(v3 + 72) * v49, v80, &qword_27D7BF788, &qword_22768D968);
      v54 = v81[12];
      v55 = v81[20];
      v56 = v53 + v81[24];
      v91 = *v56;
      LODWORD(v90) = *(v56 + 8);
      v57 = v81[28];
      v58 = v53 + v81[32];
      v89 = *v58;
      LODWORD(v88) = *(v58 + 8);
      v59 = *v69;
      *&v92 = v50;
      v59(v87, v53, v77);
      v60 = *v51;
      v61 = v53 + v54;
      v62 = v84;
      (*v51)(v52, v61, v84);
      v75(v85, v53 + v55, v86);
      v60(v83, v53 + v57, v62);

      v63 = v78;
      v50 = v92;
      sub_2276637F0();
      sub_226E97D1C(v53, &qword_27D7BF788, &qword_22768D968);
      v93 = v50;
      v65 = *(v50 + 16);
      v64 = *(v50 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_226F1F5A8((v64 > 1), v65 + 1, 1);
        v50 = v93;
      }

      ++v49;
      *(v50 + 16) = v65 + 1;
      result = (*(v73 + 32))(v50 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v65, v63, v79);
      v3 = v74;
      v46 = v72;
      if (v71 == v49)
      {

        return v50;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void (*sub_2275F00EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA991A0](a2, a3);
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
    return sub_2275F016C;
  }

  __break(1u);
  return result;
}

void (*sub_2275F0174(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA991A0](a2, a3);
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
    return sub_2275F0DA8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2275F01F4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    *result = *(a3 + 8 * a2 + 32);

    return sub_2275F025C;
  }

  __break(1u);
  return result;
}

unint64_t sub_2275F0264()
{
  result = qword_27D7BF798;
  if (!qword_27D7BF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF798);
  }

  return result;
}

unint64_t sub_2275F02B8()
{
  result = qword_27D7BF7A0;
  if (!qword_27D7BF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF7A0);
  }

  return result;
}

uint64_t sub_2275F030C(uint64_t a1)
{
  result = sub_2275F0364(&qword_2813A57E0, MEMORY[0x277D50180], &protocol conformance descriptor for WorkoutPlan);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275F0364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2275F03AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABD8, &unk_2276795D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2275F041C(uint64_t a1)
{
  v70 = sub_227665440();
  v2 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABD8, &unk_2276795D0);
  MEMORY[0x28223BE20](v64);
  v61 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - v7;
  MEMORY[0x28223BE20](v8);
  v62 = &v53 - v9;
  MEMORY[0x28223BE20](v10);
  v69 = &v53 - v12;
  v72 = MEMORY[0x277D84F98];
  v13 = *(a1 + 16);
  if (v13)
  {
    v56 = *(v11 + 80);
    v14 = *(v11 + 72);
    v15 = a1 + ((v56 + 32) & ~v56);
    v66 = (v2 + 32);
    v59 = (v56 + 32) & ~v56;
    v60 = (v2 + 16);
    v71 = MEMORY[0x277D84F98];
    v57 = v2;
    v55 = (v2 + 8);
    v54 = xmmword_227670CD0;
    v58 = v14;
    while (1)
    {
      v67 = v15;
      v68 = v13;
      v20 = v69;
      sub_226E93170(v15, v69, &qword_27D7BABD8, &unk_2276795D0);
      v21 = v20;
      v22 = v62;
      sub_226E93170(v21, v62, &qword_27D7BABD8, &unk_2276795D0);
      v23 = v63;
      v24 = *(v64 + 48);
      v25 = *(v22 + v24);
      v26 = *(v64 + 64);
      v27 = *(v22 + v26);
      v28 = *(v22 + v26 + 8);
      v29 = v4;
      v30 = &v63[v26];
      v31 = v22;
      v32 = v70;
      v65 = *v66;
      v65(v63, v31, v70);
      *(v23 + v24) = v25;
      *v30 = v27;
      *(v30 + 1) = v28;
      v4 = v29;
      (*v60)(v29, v23, v32);
      sub_226E97D1C(v23, &qword_27D7BABD8, &unk_2276795D0);
      v33 = v71;
      v35 = sub_226F39F04(v29);
      v36 = v33[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        break;
      }

      v39 = v34;
      if (v33[3] < v38)
      {
        sub_226FE1E4C(v38, 1);
        v33 = v72;
        v40 = sub_226F39F04(v29);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_20;
        }

        v35 = v40;
      }

      v71 = v33;
      if (v39)
      {
        (*v55)(v29, v70);
        v42 = v33[7];
        sub_2275F03AC(v69, v61);
        v43 = *(v42 + 8 * v35);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v42 + 8 * v35) = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = sub_2273A4E80(0, v43[2] + 1, 1, v43);
          *(v42 + 8 * v35) = v43;
        }

        v46 = v43[2];
        v45 = v43[3];
        if (v46 >= v45 >> 1)
        {
          v43 = sub_2273A4E80((v45 > 1), v46 + 1, 1, v43);
          *(v42 + 8 * v35) = v43;
        }

        v16 = v67;
        v17 = v68;
        v43[2] = v46 + 1;
        v18 = v43 + v59;
        v19 = v58;
        sub_2275F03AC(v61, &v18[v46 * v58]);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABD0, &qword_2276795C8);
        v19 = v58;
        v47 = v59;
        v48 = swift_allocObject();
        *(v48 + 16) = v54;
        sub_2275F03AC(v69, v48 + v47);
        v33[(v35 >> 6) + 8] |= 1 << v35;
        v65((v33[6] + *(v57 + 72) * v35), v29, v70);
        *(v33[7] + 8 * v35) = v48;
        v49 = v33[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_19;
        }

        v33[2] = v51;
        v16 = v67;
        v17 = v68;
      }

      v15 = v16 + v19;
      v13 = v17 - 1;
      if (!v13)
      {
        return v71;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_22766D220();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2275F0914(uint64_t a1, uint64_t (*a2)(char *, uint64_t, __n128), uint64_t a3)
{
  v4 = v3;
  v56 = a2;
  v57 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  MEMORY[0x28223BE20](v55);
  v7 = &v46 - v6;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v52 = v12;
  v53 = a1 + 64;
  v47 = a1;
  v54 = v7;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v12)
        {
          goto LABEL_40;
        }

        v11 = *(v8 + 8 * v15);
        ++v13;
        if (v11)
        {
          v13 = v15;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

LABEL_10:
    v16 = __clz(__rbit64(v11)) | (v13 << 6);
    v17 = *(a1 + 48);
    v18 = sub_227665440();
    (*(*(v18 - 8) + 16))(v7, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(*(a1 + 56) + 8 * v16);
    *&v7[*(v55 + 48)] = v19;

    v20 = (v56)(v7, v19);
    if (v4)
    {
      goto LABEL_39;
    }

    v21 = v20;
    sub_226E97D1C(v7, &qword_27D7B9DE0, &qword_227676640);
    v22 = v21 >> 62;
    v23 = v21 >> 62 ? sub_22766CD20() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = v21;
    v24 = a1;
    v25 = v14 >> 62;
    if (v14 >> 62)
    {
      break;
    }

    v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v26 + v23;
    if (__OFADD__(v26, v23))
    {
      goto LABEL_38;
    }

LABEL_15:
    v59 = v23;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v25)
      {
LABEL_20:
        sub_22766CD20();
      }

LABEL_21:
      v28 = sub_22766CE90();
      v29 = v28 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v25)
    {
      goto LABEL_20;
    }

    v28 = v14;
    v29 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v27 > *(v29 + 24) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    v58 = v28;
    if (v22)
    {
      v32 = sub_22766CD20();
    }

    else
    {
      v32 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 &= v11 - 1;
    if (v32)
    {
      if (((v31 >> 1) - v30) < v59)
      {
        goto LABEL_43;
      }

      v49 = v13;
      v50 = v11;
      v51 = 0;
      v33 = v29 + 8 * v30 + 32;
      v48 = v29;
      if (v22)
      {
        if (v32 < 1)
        {
          goto LABEL_45;
        }

        sub_226E9CFD0(&qword_27D7BF800, &qword_27D7BF7F8, &qword_22768DA08, MEMORY[0x277D83988]);
        v34 = 0;
        v35 = v61;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF7F8, &qword_22768DA08);
          v36 = v32;
          v37 = v33;
          v38 = sub_2275F00EC(v60, v34, v35);
          v40 = *v39;
          (v38)(v60, 0);
          v33 = v37;
          v32 = v36;
          *(v33 + 8 * v34++) = v40;
        }

        while (v36 != v34);
      }

      else
      {
        type metadata accessor for ManagedWorkoutPlanItemIndex();
        swift_arrayInitWithCopy();
      }

      v14 = v58;
      v4 = v51;
      v12 = v52;
      a1 = v47;
      v8 = v53;
      v7 = v54;
      v13 = v49;
      v11 = v50;
      if (v59 >= 1)
      {
        v41 = *(v48 + 16);
        v42 = __OFADD__(v41, v59);
        v43 = v41 + v59;
        if (v42)
        {
          goto LABEL_44;
        }

        *(v48 + 16) = v43;
      }
    }

    else
    {

      v14 = v58;
      v8 = v53;
      v7 = v54;
      v12 = v52;
      a1 = v24;
      if (v59 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  v44 = v23;
  v45 = sub_22766CD20();
  v23 = v44;
  v42 = __OFADD__(v45, v44);
  v27 = v45 + v44;
  if (!v42)
  {
    goto LABEL_15;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  sub_226E97D1C(v7, &qword_27D7B9DE0, &qword_227676640);

LABEL_40:
}

uint64_t sub_2275F0DAC(char a1)
{
  v3 = sub_227669A90();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v4 + 104);
  v8(v7, *MEMORY[0x277D4EE40], v3, v5);
  v11[15] = 0;
  sub_227669760();
  (v8)(v7, *MEMORY[0x277D4EE78], v3);
  v11[14] = 0;
  sub_227669760();
  (v8)(v7, *MEMORY[0x277D4EF30], v3);
  v11[13] = 1;
  sub_227669760();
  *(v1 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_platform) = a1;
  v9 = v1 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  return v1;
}

void sub_2275F0F8C(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  if (sub_2276693B0())
  {
    v8 = *(v5 + 16);
    v8(v7, v2 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker__fakeSubscribed, v4);
    sub_227669730();
    v9 = *(v5 + 8);
    v9(v7, v4);
    if (v16[15] == 1)
    {
      v10 = type metadata accessor for ServiceSubscriptionFakingProvider();
      swift_allocObject();
      v11 = 1;
LABEL_7:
      v14 = sub_22730F9A4(v11);
      v15 = &off_283AAF8E0;
      goto LABEL_8;
    }

    v8(v7, v2 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker__fakeUnsubscribed, v4);
    sub_227669730();
    v9(v7, v4);
    if (v16[14] == 1)
    {
      v10 = type metadata accessor for ServiceSubscriptionFakingProvider();
      swift_allocObject();
      v11 = 0;
      goto LABEL_7;
    }
  }

  v12 = sub_2276693D0();
  v13 = [objc_opt_self() sharedInstance];
  v10 = type metadata accessor for ServiceSubscriptionProvider();
  swift_allocObject();
  v14 = sub_2273BE1F8(v12, v13);

  v15 = &off_283AB6790;
LABEL_8:
  a1[3] = v10;
  a1[4] = v15;
  *a1 = v14;
}

uint64_t sub_2275F11F8()
{
  v1 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker__fakeSubscribed;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker__fakeUnsubscribed, v2);
  v3(v0 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker__fakeSubscribedSimulator, v2);
  sub_2275F1408(v0 + OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServiceSubscriptionProviderBroker(uint64_t a1)
{
  result = qword_28139DB00;
  if (!qword_28139DB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2275F1350(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2275F1438(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v6 = type metadata accessor for SyncSubmissionChangeset(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_226F1F0B0(0, v10, 0);
    v11 = v20;
    for (i = a3 + 32; ; i += 40)
    {
      v17(i, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F1F0B0((v13 > 1), v14 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v14 + 1;
      sub_2275F6C68(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, type metadata accessor for SyncSubmissionChangeset);
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

void sub_2275F15DC(void (*a1)(uint64_t *__return_ptr, char *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v31 = a2;
  v6 = sub_227664140();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v29 = v9;
    v37[2] = MEMORY[0x277D84F90];
    sub_22766CF30();
    v34 = a3 + 56;
    v11 = sub_22766CC90();
    v12 = 0;
    v35 = *(a3 + 36);
    v27 = v7 + 16;
    v28 = (v7 + 8);
    v24 = a3 + 64;
    v25 = v6;
    v26 = v10;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a3 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v34 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      if (v35 != *(a3 + 36))
      {
        goto LABEL_23;
      }

      v33 = v12;
      v16 = v29;
      (*(v7 + 16))(v29, *(a3 + 48) + *(v7 + 72) * v11, v6);
      v30(v37, v16, &v36);
      if (v4)
      {
        (*v28)(v16, v6);

        return;
      }

      v32 = 0;
      (*v28)(v16, v6);
      sub_22766CF00();
      sub_22766CF40();
      sub_22766CF50();
      sub_22766CF10();
      v13 = 1 << *(a3 + 32);
      if (v11 >= v13)
      {
        goto LABEL_24;
      }

      v17 = *(v34 + 8 * v15);
      if ((v17 & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (v35 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v11 & 0x3F));
      if (v18)
      {
        v13 = __clz(__rbit64(v18)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v26;
      }

      else
      {
        v19 = v15 << 6;
        v20 = v15 + 1;
        v21 = (v24 + 8 * v15);
        v14 = v26;
        while (v20 < (v13 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_226EB526C(v11, v35, 0);
            v13 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v11, v35, 0);
      }

LABEL_4:
      v4 = v32;
      v12 = v33 + 1;
      v11 = v13;
      v6 = v25;
      if (v33 + 1 == v14)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_2275F1924(void (*a1)(unint64_t), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v37 = sub_2276694E0();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DirtySyncZone(0);
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (v11)
  {
    v35 = v8;
    v46 = MEMORY[0x277D84F90];
    v40 = v6;
    sub_226F1F010(0, v11, 0);
    v12 = v40;
    v45 = v46;
    v13 = a3 + 56;
    v14 = sub_22766CC90();
    v15 = 0;
    v33 = v12 + 16;
    v34 = (v12 + 8);
    v31 = a3 + 64;
    v32 = v11;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a3 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_22;
      }

      v41 = v15;
      v43 = *(a3 + 36);
      v18 = a3;
      v19 = *(a3 + 48) + *(v12 + 72) * v14;
      v11 = v35;
      a3 = v37;
      (*(v12 + 16))(v35, v19, v37);
      v38(v11);
      v42 = v4;
      if (v4)
      {
        goto LABEL_26;
      }

      (*v34)(v11, a3);
      v20 = v45;
      v46 = v45;
      v11 = *(v45 + 16);
      v21 = *(v45 + 24);
      a3 = v11 + 1;
      if (v11 >= v21 >> 1)
      {
        sub_226F1F010((v21 > 1), v11 + 1, 1);
        v20 = v46;
      }

      *(v20 + 16) = a3;
      v22 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v45 = v20;
      sub_2275F6C68(v44, v20 + v22 + *(v36 + 72) * v11, type metadata accessor for DirtySyncZone);
      v16 = 1 << *(v18 + 32);
      if (v14 >= v16)
      {
        goto LABEL_23;
      }

      v23 = *(v13 + 8 * v17);
      if ((v23 & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      a3 = v18;
      if (v43 != *(v18 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v14 & 0x3F));
      if (v24)
      {
        v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v17 << 6;
        v26 = v17 + 1;
        v27 = (v31 + 8 * v17);
        while (v26 < (v16 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_226EB526C(v14, v43, 0);
            v16 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v14, v43, 0);
      }

LABEL_4:
      v4 = v42;
      v15 = v41 + 1;
      v14 = v16;
      v11 = v32;
      v12 = v40;
      if (v41 + 1 == v32)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    (*v34)(v11, a3);

    __break(1u);
  }
}

void sub_2275F1D68(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v15 = MEMORY[0x277D84F90];
    sub_226F1FCE8(0, v5, 0);
    v8 = v15;
    for (i = (a3 + 32); ; ++i)
    {
      v13 = *i;

      a1(&v14, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v14;
      v15 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_226F1FCE8((v11 > 1), v12 + 1, 1);
        v8 = v15;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2275F1E9C(void (*a1)(uint64_t *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v16 = a1;
  v17 = a2;
  v6 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v19 = MEMORY[0x277D84F90];
    sub_226F1FD88(0, v10, 0);
    v11 = v19;
    for (i = (a3 + 32); ; ++i)
    {
      v18 = *i;

      (v16)(&v18);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v19 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F1FD88((v13 > 1), v14 + 1, 1);
        v11 = v19;
      }

      *(v11 + 16) = v14 + 1;
      sub_2275F6C68(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, type metadata accessor for WorkoutPlanGenerationScaffold);
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2275F205C(void (*a1)(unint64_t), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v37 = sub_227666B60();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD8, &qword_227679B60);
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v30 - v10;
  v11 = *(a3 + 16);
  if (v11)
  {
    v35 = v8;
    v46 = MEMORY[0x277D84F90];
    v40 = v6;
    sub_226F1FE68(0, v11, 0);
    v12 = v40;
    v45 = v46;
    v13 = a3 + 56;
    v14 = sub_22766CC90();
    v15 = 0;
    v33 = v12 + 16;
    v34 = (v12 + 8);
    v31 = a3 + 64;
    v32 = v11;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a3 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v13 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_22;
      }

      v41 = v15;
      v43 = *(a3 + 36);
      v18 = a3;
      v19 = *(a3 + 48) + *(v12 + 72) * v14;
      v11 = v35;
      a3 = v37;
      (*(v12 + 16))(v35, v19, v37);
      v38(v11);
      v42 = v4;
      if (v4)
      {
        goto LABEL_26;
      }

      (*v34)(v11, a3);
      v20 = v45;
      v46 = v45;
      v11 = *(v45 + 16);
      v21 = *(v45 + 24);
      a3 = v11 + 1;
      if (v11 >= v21 >> 1)
      {
        sub_226F1FE68((v21 > 1), v11 + 1, 1);
        v20 = v46;
      }

      *(v20 + 16) = a3;
      v22 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v45 = v20;
      sub_22704D454(v44, v20 + v22 + *(v36 + 72) * v11);
      v16 = 1 << *(v18 + 32);
      if (v14 >= v16)
      {
        goto LABEL_23;
      }

      v23 = *(v13 + 8 * v17);
      if ((v23 & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      a3 = v18;
      if (v43 != *(v18 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v14 & 0x3F));
      if (v24)
      {
        v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v17 << 6;
        v26 = v17 + 1;
        v27 = (v31 + 8 * v17);
        while (v26 < (v16 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_226EB526C(v14, v43, 0);
            v16 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v14, v43, 0);
      }

LABEL_4:
      v4 = v42;
      v15 = v41 + 1;
      v14 = v16;
      v11 = v32;
      v12 = v40;
      if (v41 + 1 == v32)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    (*v34)(v11, a3);

    __break(1u);
  }
}

void sub_2275F2494(void (*a1)(char *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, double), void (*a6)(BOOL, unint64_t, uint64_t))
{
  v9 = v6;
  v52 = a1;
  v53 = a2;
  v11 = a4(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v51 = a5(0, v13);
  v16 = *(v51 - 8);
  v17 = MEMORY[0x28223BE20](v51);
  v58 = &v40 - v18;
  v19 = *(a3 + 16);
  if (v19)
  {
    v50 = v15;
    v60 = MEMORY[0x277D84F90];
    v43 = v19;
    v41 = a6;
    (a6)(0, v19, 0, v17);
    v56 = a3 + 56;
    v57 = v60;
    v20 = sub_22766CC90();
    v21 = v16;
    v22 = v20;
    v23 = 0;
    v48 = v12 + 16;
    v49 = (v12 + 8);
    v46 = v21 + 32;
    v47 = v21;
    v42 = a3 + 64;
    v24 = v12;
    v44 = v12;
    v45 = v11;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(a3 + 32))
    {
      v26 = v22 >> 6;
      if ((*(v56 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_23;
      }

      v55 = v23;
      v27 = *(a3 + 36);
      v28 = v50;
      (*(v24 + 16))(v50, *(a3 + 48) + *(v24 + 72) * v22, v11);
      v52(v28, &v59);
      if (v9)
      {
        (*v49)(v28, v11);

        return;
      }

      v54 = 0;
      (*v49)(v28, v11);
      v29 = v57;
      v60 = v57;
      v31 = *(v57 + 16);
      v30 = *(v57 + 24);
      if (v31 >= v30 >> 1)
      {
        v41(v30 > 1, v31 + 1, 1);
        v29 = v60;
      }

      *(v29 + 16) = v31 + 1;
      v32 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v57 = v29;
      (*(v47 + 32))(v29 + v32 + *(v47 + 72) * v31, v58, v51);
      v25 = 1 << *(a3 + 32);
      if (v22 >= v25)
      {
        goto LABEL_24;
      }

      v33 = *(v56 + 8 * v26);
      if ((v33 & (1 << v22)) == 0)
      {
        goto LABEL_25;
      }

      if (v27 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v34 = v33 & (-2 << (v22 & 0x3F));
      if (v34)
      {
        v25 = __clz(__rbit64(v34)) | v22 & 0x7FFFFFFFFFFFFFC0;
        v11 = v45;
      }

      else
      {
        v35 = v26 << 6;
        v36 = v26 + 1;
        v37 = (v42 + 8 * v26);
        v11 = v45;
        while (v36 < (v25 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            sub_226EB526C(v22, v27, 0);
            v25 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v22, v27, 0);
      }

LABEL_4:
      v9 = v54;
      v23 = v55 + 1;
      v22 = v25;
      v24 = v44;
      if (v55 + 1 == v43)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_2275F28B8(void (*a1)(void *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v18 = MEMORY[0x277D84F90];
    sub_226F1F2C8(0, v5, 0);
    v7 = v18;
    for (i = (a3 + 40); ; i += 2)
    {
      v9 = *i;
      v16[0] = *(i - 1);
      v16[1] = v9;

      (a1)(v17, v16);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v17[0];
      v10 = v17[1];
      v18 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_226F1F2C8((v12 > 1), v13 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2275F29E0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = sub_227667BA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x277D84F90];
    sub_226F20448(0, v10, 0);
    v11 = v20;
    v12 = *(sub_227662B10() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      v18(v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226F20448((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_2275F6C68(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, MEMORY[0x277D53198]);
      v13 += v17;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2275F2BDC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_227663DD0();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    sub_226F20528(0, v9, 0);
    v10 = v21;
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v11 = a3 + v17;
    v16 = (v6 + 32);
    v12 = *(v6 + 72);
    while (1)
    {
      v19(v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F20528((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      (*v16)(v10 + v17 + v14 * v12, v8, v18);
      v11 += v12;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2275F2D98(void (*a1)(id *), unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v26 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85C8, &qword_227679600);
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v18 - v7;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v10 = a3;
    v28 = MEMORY[0x277D84F90];
    a3 = &v28;
    sub_226F20768(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v11 = 0;
    v12 = v28;
    v13 = v10;
    v22 = v10;
    v23 = v10 & 0xC000000000000001;
    v19 = v10 & 0xFFFFFFFFFFFFFF8;
    v20 = v6 + 32;
    v21 = i;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v23)
      {
        v15 = MEMORY[0x22AA991A0](v11, v13);
      }

      else
      {
        if (v11 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v15 = *(v13 + 8 * v11 + 32);
      }

      i = v15;
      v27 = v15;
      a3 = v26;
      v25(&v27);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v28 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        a3 = &v28;
        sub_226F20768((v16 > 1), v17 + 1, 1);
        v12 = v28;
      }

      *(v12 + 16) = v17 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, v8, v24);
      ++v11;
      v13 = v22;
      if (v14 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_2275F2FE8(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = sub_2276624A0();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_226F1F548(0, v9, 0);
    v10 = v20;
    v15 = v6 + 32;
    for (i = (a3 + 40); ; i += 2)
    {
      v12 = *i;
      v19[0] = *(i - 1);
      v19[1] = v12;

      v17(v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v20 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F1F548((v13 > 1), v14 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v16);
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2275F31B4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_2276639B0();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    sub_226F1F508(0, v9, 0);
    v10 = v21;
    v11 = *(sub_2276624A0() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = v6 + 32;
    v16 = *(v11 + 72);
    while (1)
    {
      v19(v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F1F508((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v18);
      v12 += v16;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2275F33B8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);

  return swift_deallocClassInstance();
}

uint64_t sub_2275F3434@<X0>(void (*a1)(void, void, void)@<X0>, void (*a2)(void, void)@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v38 = a4;
  v5 = sub_2276639B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227664AE0();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  sub_22766A6C0();
  sub_22766B370();
  v36 = *(v13 + 8);
  v37 = v12;
  v36(v18, v12);
  sub_227663970();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2275F6BA0(v11, MEMORY[0x277D50D68]);
  if (EnumCaseMultiPayload)
  {
    sub_22766A6C0();
    (*(v6 + 16))(v8, a1, v5);
    v20 = sub_22766B380();
    v21 = sub_22766C890();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      sub_226EB1088(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
      v23 = sub_22766D140();
      v25 = v24;
      (*(v6 + 8))(v8, v5);
      v26 = sub_226E97AE8(v23, v25, &v39);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_226E8E000, v20, v21, "[Key Request Provider] AssetRequest is not the required mediaStream request %{mask.hash}s", v22, 0x16u);
      v27 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v27, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v36(v15, v37);
    v29 = sub_227663190();
    sub_226EB1088(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v30 = swift_allocError();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D4FCF0], v29);
    *(swift_allocObject() + 16) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    return sub_227669280();
  }

  else
  {
    __swift_project_boxed_opaque_existential_0((v33 + 16), *(v33 + 40));
    return sub_2274A7EDC(a1, v34, v35, v38);
  }
}

uint64_t sub_2275F392C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD440, &unk_227684B60);
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v12);
  v39 = &v32 - v13;
  v14 = *(v3 + 25);
  v34 = *(v3 + 26);
  v36 = v3;
  __swift_project_boxed_opaque_existential_0(v3 + 22, v14);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  v16 = sub_2276642E0();
  v35 = v16;

  v33 = v11;
  sub_226ECF5D8(sub_2275F6938, v15, v14, v16, v34, v11);

  v34 = *(v6 + 16);
  v17 = v38;
  v34(v8, v11, v38);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v32 = *(v6 + 32);
  v32(v20 + v18, v8, v17);
  v21 = (v20 + v19);
  *v21 = sub_2275F3F90;
  v21[1] = 0;
  v22 = v39;
  sub_227669270();
  v23 = *(v6 + 8);
  v24 = v33;
  v25 = v38;
  v23(v33, v38);
  v26 = v22;
  v27 = v25;
  v34(v24, v26, v25);
  v28 = swift_allocObject();
  v32(v28 + v18, v24, v27);
  v29 = (v28 + v19);
  v30 = v36;
  *v29 = sub_2275F6980;
  v29[1] = v30;
  type metadata accessor for AssetRequestProvider.CatalogURLs(0);

  sub_227669270();
  return (v23)(v39, v27);
}

void sub_2275F3C74(void *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;

  v14 = sub_226F87158(v13, 0, 1, a1);

  if (!v4)
  {
    if (*(v14 + 16))
    {
      v15 = sub_2276642E0();
      (*(*(v15 - 8) + 16))(a4, v14 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)), v15);
    }

    else
    {

      sub_22766A6C0();

      v16 = sub_22766B380();
      v17 = sub_22766C8B0();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v23 = v19;
        *v18 = 136446210;
        *(v18 + 4) = sub_226E97AE8(a2, a3, &v23);
        _os_log_impl(&dword_226E8E000, v16, v17, "[Request Provider] Bundle requests - Catalog workout not found for identifier %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x22AA9A450](v19, -1, -1);
        MEMORY[0x22AA9A450](v18, -1, -1);
      }

      (*(v10 + 8))(v12, v9);
      v20 = sub_227663190();
      sub_226EB1088(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D4FD68], v20);
      swift_willThrow();
    }
  }
}

uint64_t sub_2275F3F90(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD448, &unk_22768B800);
  MEMORY[0x28223BE20](v6);
  v8 = (v19 - v7);
  sub_226E93170(a1, v19 - v7, &qword_27D7BD448, &unk_22768B800);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_226E97D1C(v8, &qword_27D7BD448, &unk_22768B800);
  }

  v9 = *v8;
  sub_22766A6C0();
  v10 = v9;
  v11 = sub_22766B380();
  v12 = sub_22766C890();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v15 = MEMORY[0x22AA995D0](v19[2], v19[3]);
    v17 = sub_226E97AE8(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_226E8E000, v11, v12, "Failed to query catalog workouts with error: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2275F4218@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
  v36 = *(v38 - 8);
  v35 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = &v29 - v7;
  v8 = sub_2276642E0();
  v30 = v8;
  v9 = *(v8 - 8);
  v32 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_227667D10();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a2 + 12, a2[15]);
  __swift_project_boxed_opaque_existential_0(a2 + 12, a2[15]);
  v14 = *(v9 + 16);
  v14(v11, a1, v8);
  v31 = v13;
  sub_227667D00();
  __swift_project_boxed_opaque_existential_0(a2 + 7, a2[10]);
  v15 = off_283AA5520[0];
  type metadata accessor for AssetScriptClient();
  v16 = v33;
  v15(v13);
  v17 = v30;
  v14(v11, a1, v30);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  (*(v9 + 32))(v19 + v18, v11, v17);
  v20 = v36;
  v21 = v34;
  v22 = v38;
  (*(v36 + 16))(v34, v16, v38);
  v23 = v20;
  v24 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v25 = (v35 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v23 + 32))(v26 + v24, v21, v22);
  v27 = (v26 + v25);
  *v27 = sub_2275F69B0;
  v27[1] = v19;
  type metadata accessor for AssetRequestProvider.CatalogURLs(0);
  sub_227669270();
  (*(v23 + 8))(v16, v22);
  return (*(v37 + 8))(v31, v39);
}

uint64_t sub_2275F460C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AssetRequestProvider.CatalogURLs(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = *a1;
  v14 = sub_2276642E0();
  (*(*(v14 - 8) + 16))(v12, a2, v14);
  v15 = *(v13 + 16);
  if (!v15)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v28 = a2;
  v29 = v7;
  v30 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v32 = a3;
  v16 = sub_2274CD790(v15, 0);
  v17 = *(sub_2276624A0() - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v27 = v16;
  sub_2274CF59C(&v33, &v16[v18], v15, v13);
  v20 = v19;
  v21 = v33;

  result = sub_226EBB21C(v21);
  if (v20 == v15)
  {
    v6 = v31;
    v7 = v29;
    v9 = v30;
    v23 = v27;
LABEL_5:
    sub_227664240();
    *&v12[*(v6 + 20)] = v23;
    sub_2275F6C00(v12, v9, type metadata accessor for AssetRequestProvider.CatalogURLs);
    v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v25 = swift_allocObject();
    sub_2275F6C68(v9, v25 + v24, type metadata accessor for AssetRequestProvider.CatalogURLs);
    sub_227669280();
    return sub_2275F6BA0(v12, type metadata accessor for AssetRequestProvider.CatalogURLs);
  }

  __break(1u);
  return result;
}

void sub_2275F48B4(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v103 = a6;
  v106 = a5;
  v125 = a4;
  v114 = a7;
  v111 = sub_227663480();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = v8;
  v123 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for AssetRequestProvider.CatalogURLs(0);
  v102 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v101 = v9;
  v122 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD420, &qword_227679D40);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v10;
  MEMORY[0x28223BE20](v11);
  v124 = &v89 - v12;
  v98 = sub_2276624A0();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_227664AE0();
  MEMORY[0x28223BE20](v94);
  v95 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2276639B0();
  v104 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v115 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v15;
  MEMORY[0x28223BE20](v16);
  v120 = &v89 - v17;
  v119 = sub_2276687D0();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v19 - 8);
  v93 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v116 = &v89 - v22;
  v132 = sub_2276667F0();
  v23 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_227669180();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v130 = &v89 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF48, &unk_227682548);
  MEMORY[0x28223BE20](v31 - 8);
  v90 = &v89 - v32;
  sub_2276625E0();
  v34 = v33;
  v35 = v28;
  sub_227663950();
  v37 = v36;
  v92 = sub_22766C0A0();
  v91 = v38;
  v105 = a1;
  v39 = sub_2276642A0();
  v40 = v39;
  v41 = v39 + 56;
  v42 = 1 << *(v39 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v39 + 56);
  v45 = (v42 + 63) >> 6;
  v127 = (v23 + 8);
  v128 = v26 + 16;
  v135 = v26;
  v133 = v26 + 32;
  v134 = (v26 + 8);

  v47 = 0;
  v129 = v46;
  if (v44)
  {
    while (1)
    {
      v48 = v47;
LABEL_8:
      v49 = *(v40 + 48);
      v50 = v135;
      v51 = v130;
      (*(v135 + 16))(v130, v49 + *(v135 + 72) * (__clz(__rbit64(v44)) | (v48 << 6)), v25);
      v126 = *(v50 + 32);
      v126(v35, v51, v25);
      v52 = v131;
      sub_227669150();
      v53 = sub_2276667E0();
      v55 = v54;
      v57 = v56;
      (*v127)(v52, v132);
      v137 = v53;
      v138 = v55;
      v57 &= 1u;
      v139 = v57;
      v136 = 4;
      sub_2275F6444();
      sub_2275F6498();
      LOBYTE(v52) = sub_227663B30();
      sub_226EB2DFC(v53, v55, v57);
      if (v52)
      {
        break;
      }

      v44 &= v44 - 1;
      (*v134)(v35, v25);
      v47 = v48;
      v40 = v129;
      if (!v44)
      {
        goto LABEL_5;
      }
    }

    v59 = v90;
    v126(v90, v35, v25);
    v58 = 0;
LABEL_12:
    v60 = v135;
    (*(v135 + 56))(v59, v58, 1, v25);

    if ((*(v60 + 48))(v59, 1, v25) == 1)
    {
      sub_226E97D1C(v59, &qword_27D7BCF48, &unk_227682548);
    }

    else
    {
      sub_227669160();
      (*v134)(v59, v25);
    }

    sub_227669370();
    sub_227669380();
    v61 = v116;
    sub_227662340();

    v62 = v105;
    sub_227664280();
    sub_226E93170(v61, v93, &unk_27D7BB570, &unk_227670FC0);
    v63 = v117;
    sub_227668790();
    (*(v118 + 16))(v95, v63, v119);
    swift_storeEnumTagMultiPayload();
    (*(v96 + 16))(v97, v62 + *(v100 + 24), v98);
    v64 = v106;
    sub_2276633E0();
    v65 = v120;
    sub_227663900();
    v66 = sub_227663410();
    sub_2275F3434(v65, v66, v67, v124);

    sub_2275F6C00(v62, v122, type metadata accessor for AssetRequestProvider.CatalogURLs);
    v68 = v110;
    v69 = v64;
    v70 = v111;
    (*(v110 + 16))(v123, v69, v111);
    v71 = v104;
    (*(v104 + 16))(v115, v65, v121);
    v72 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v73 = (v101 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = (*(v68 + 80) + v75 + 8) & ~*(v68 + 80);
    v77 = (v108 + *(v71 + 80) + v76) & ~*(v71 + 80);
    v78 = swift_allocObject();
    sub_2275F6C68(v122, v78 + v72, type metadata accessor for AssetRequestProvider.CatalogURLs);
    *(v78 + v73) = v125;
    *(v78 + v74) = v34;
    *(v78 + v75) = v34 + v37;
    (*(v68 + 32))(v78 + v76, v123, v70);
    v79 = v78 + v77;
    v80 = v121;
    (*(v71 + 32))(v79, v115, v121);
    v81 = v112;
    v82 = v109;
    v83 = v124;
    v84 = v113;
    (*(v112 + 16))(v109, v124, v113);
    v85 = (*(v81 + 80) + 16) & ~*(v81 + 80);
    v86 = (v107 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
    v87 = swift_allocObject();
    (*(v81 + 32))(v87 + v85, v82, v84);
    v88 = (v87 + v86);
    *v88 = sub_2275F64EC;
    v88[1] = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
    sub_227669270();
    (*(v81 + 8))(v83, v84);
    (*(v71 + 8))(v120, v80);
    (*(v118 + 8))(v117, v119);
    sub_226E97D1C(v116, &unk_27D7BB570, &unk_227670FC0);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v45)
      {

        v58 = 1;
        v59 = v90;
        goto LABEL_12;
      }

      v44 = *(v41 + 8 * v48);
      ++v47;
      if (v44)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_2275F5670(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v81 = a5;
  v83 = a3;
  v84 = a4;
  v80 = a6;
  v76 = sub_227663480();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v87 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22766B390();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276624A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *a1;
  v18 = type metadata accessor for AssetRequestProvider.CatalogURLs(0);
  v19 = *(a2 + *(v18 + 20));
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = sub_2273A4ECC(0, 1, 1, MEMORY[0x277D84F90]);
    v23 = *(v15 + 16);
    v22 = v15 + 16;
    v85 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v86 = v23;
    v24 = v19 + v85;
    v25 = *(v22 + 56);
    v26 = (v22 + 16);
    do
    {
      v27 = v22;
      v86(v17, v24, v14);
      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_2273A4ECC((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v18 = (*v26)(&v21[v85 + v29 * v25], v17, v14);
      v24 += v25;
      --v20;
      v22 = v27;
    }

    while (v20);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v18);
  v30 = v84;
  *(&v74 - 4) = v83;
  *(&v74 - 3) = a7;
  *(&v74 - 2) = a8;
  *(&v74 - 1) = v30;
  sub_2275F31B4(sub_2275F668C, (&v74 - 6), v21);
  v32 = v31;

  v88[9] = v32;
  v33 = v82;
  v34 = *(v82 + 16);
  if (!v34)
  {
    goto LABEL_11;
  }

  v35 = sub_2274CD768(*(v82 + 16), 0);
  v36 = *(sub_2276639B0() - 8);
  sub_2274CDD80(v88, &v35[(*(v36 + 80) + 32) & ~*(v36 + 80)], v34, v33);
  v38 = v37;
  v39 = v88[0];

  sub_226EBB21C(v39);
  if (v38 != v34)
  {
    __break(1u);
LABEL_11:
    v35 = MEMORY[0x277D84F90];
  }

  v88[10] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABE0, &qword_2276795F0);
  v40 = sub_2276639B0();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_227670CD0;
  (*(v41 + 16))(v43 + v42, v81, v40);
  v88[11] = v43;
  v44 = MEMORY[0x277D84F90];
  for (i = 4; i != 7; ++i)
  {
    v46 = v88[i + 5];
    v47 = *(v46 + 16);
    v48 = v44[2];
    v49 = v48 + v47;
    if (__OFADD__(v48, v47))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v49 > v44[3] >> 1)
    {
      if (v48 <= v49)
      {
        v51 = v48 + v47;
      }

      else
      {
        v51 = v48;
      }

      v44 = sub_2273A4EA4(isUniquelyReferenced_nonNull_native, v51, 1, v44);
    }

    v52 = v87;
    if (*(v46 + 16))
    {
      if ((v44[3] >> 1) - v44[2] < v47)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v47)
      {
        v53 = v44[2];
        v54 = __OFADD__(v53, v47);
        v55 = v53 + v47;
        if (v54)
        {
          goto LABEL_34;
        }

        v44[2] = v55;
      }
    }

    else
    {

      if (v47)
      {
        goto LABEL_32;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  swift_arrayDestroy();
  v56 = v77;
  sub_22766A6C0();
  v57 = v75;
  v58 = v76;
  (*(v75 + 16))(v52, v84, v76);

  v59 = sub_22766B380();
  v60 = sub_22766C8B0();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = v52;
    v62 = v58;
    v63 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v88[0] = v87;
    *v63 = 136446722;
    v64 = sub_2276633E0();
    v65 = v57;
    v67 = v66;
    (*(v65 + 8))(v61, v62);
    v68 = sub_226E97AE8(v64, v67, v88);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2160;
    *(v63 + 14) = 1752392040;
    *(v63 + 22) = 2080;
    v69 = MEMORY[0x22AA98660](v44, v40);
    v71 = sub_226E97AE8(v69, v70, v88);

    *(v63 + 24) = v71;
    _os_log_impl(&dword_226E8E000, v59, v60, "[Request Provider] Bundle (%{public}s) created requests: %{mask.hash}s", v63, 0x20u);
    v72 = v87;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v72, -1, -1);
    MEMORY[0x22AA9A450](v63, -1, -1);
  }

  else
  {

    (*(v57 + 8))(v52, v58);
  }

  (*(v78 + 8))(v56, v79);
  v73 = sub_226F3FF8C(v44);

  *(swift_allocObject() + 16) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_227669280();
}

uint64_t sub_2275F5E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12[0] = a3;
  v12[1] = a2;
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227664AE0();
  MEMORY[0x28223BE20](v10);
  sub_22766C0A0();
  swift_storeEnumTagMultiPayload();
  (*(v7 + 16))(v9, a1, v6);
  sub_2276633E0();
  return sub_227663900();
}

uint64_t sub_2275F6004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v29 = a3;
  v31 = a2;
  v32 = a5;
  v27 = sub_227663480();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD418, &unk_227684B38);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v28);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v25 = *v5;
  v14 = sub_227663410();
  sub_2275F392C(v14, v15, v13);

  v16 = v27;
  (*(v7 + 16))(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v27);
  v17 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v29;
  *(v18 + 24) = v30 & 1;
  *(v18 + 32) = v31;
  (*(v7 + 32))(v18 + v17, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v19 = v26;
  *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v20 = v28;
  (*(v9 + 16))(v19, v13, v28);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v21, v19, v20);
  v23 = (v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_2275F6318;
  v23[1] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9360, qword_22767B900);
  sub_227669270();
  return (*(v9 + 8))(v13, v20);
}

void sub_2275F6318(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227663480() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v2 + 32);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2275F48B4(a1, v7, v2 + v6, v8, a2);
}

uint64_t type metadata accessor for AssetRequestProvider.CatalogURLs(uint64_t a1)
{
  result = qword_28139A6E0;
  if (!qword_28139A6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2275F6444()
{
  result = qword_27D7BF808;
  if (!qword_27D7BF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF808);
  }

  return result;
}

unint64_t sub_2275F6498()
{
  result = qword_27D7BF810;
  if (!qword_27D7BF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF810);
  }

  return result;
}

void sub_2275F64EC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AssetRequestProvider.CatalogURLs(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_227663480() - 8);
  v11 = (*(v10 + 80) + v9 + 8) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_2276639B0() - 8);
  v14 = *(v2 + v7);
  v15 = *(v2 + v8);
  v16 = *(v2 + v9);
  v17 = v2 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  sub_2275F5670(a1, v2 + v6, v14, v2 + v11, v17, a2, v15, v16);
}

double sub_2275F6918@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_2275F69B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276642E0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2275F460C(a1, v6, a2);
}

uint64_t sub_2275F6A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2275F6BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2275F6C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2275F6C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2275F6CF8(uint64_t a1)
{
  sub_2276642E0();
  if (v1 <= 0x3F)
  {
    sub_2275F6D94(319);
    if (v2 <= 0x3F)
    {
      sub_2276624A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2275F6D94(uint64_t a1)
{
  if (!qword_281399158)
  {
    sub_2276624A0();
    v1 = sub_22766C3D0();
    if (!v2)
    {
      atomic_store(v1, &qword_281399158);
    }
  }
}

uint64_t sub_2275F6DEC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2275F6E78()
{
  v1[22] = v0;
  v2 = sub_2276624A0();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v3 = sub_227669F70();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();
  v4 = sub_22766B390();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275F6FFC, 0, 0);
}

uint64_t sub_2275F6FFC(uint64_t a1)
{
  sub_22766A770();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Creating representative database", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v1[31];
  v6 = v1[32];
  v7 = v1[29];
  v8 = v1[30];
  v10 = v1[27];
  v9 = v1[28];
  v11 = v1[25];
  v12 = v1[24];
  v25 = v1[26];
  v26 = v1[23];
  v24 = v1[22];

  (*(v5 + 8))(v6, v8);
  sub_226EA1CF4();
  sub_22766C950();
  (*(v9 + 104))(v7, *MEMORY[0x277D4F368], v10);
  v13 = sub_227669F60();
  v14 = MEMORY[0x277D4F358];
  v1[5] = v13;
  v1[6] = v14;
  __swift_allocate_boxed_opaque_existential_0(v1 + 2);
  sub_227669F50();
  sub_22766A8E0();
  swift_allocObject();
  v15 = sub_22766A8B0();
  v1[33] = v15;
  v16 = sub_22766ABD0();
  swift_allocObject();

  v17 = sub_22766ABC0();
  v18 = MEMORY[0x277D54610];
  v1[34] = v17;
  v1[10] = v16;
  v1[11] = v18;
  v1[7] = v17;
  sub_226E91B50(v24 + 256, (v1 + 12));

  sub_227662330();
  sub_2276623F0();
  v19 = *(v12 + 8);
  v19(v11, v26);
  type metadata accessor for PersistenceStore(0);
  v20 = swift_allocObject();
  v1[35] = v20;
  *(v20 + 16) = 0;
  (*(v12 + 16))(v20 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_directory, v25, v26);
  sub_226E91B50((v1 + 7), v20 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_dataProtectionMonitor);
  v21 = (v20 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_eventHub);
  *v21 = v15;
  v21[1] = MEMORY[0x277D4F9B0];
  *(v20 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_monitors) = MEMORY[0x277D84F90];
  sub_227669B50();
  swift_allocObject();
  swift_retain_n();
  *(v20 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_subscriptionToken) = sub_227669B40();
  sub_226E91B50((v1 + 12), v20 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_transactionCoordinator);
  *(v20 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state) = 0;
  sub_22766ABF0();
  swift_allocObject();
  swift_weakInit();
  sub_22764662C(&qword_28139D350, MEMORY[0x277D54620], MEMORY[0x277D54618]);
  sub_2276699F0();

  v19(v25, v26);
  __swift_destroy_boxed_opaque_existential_0(v1 + 12);
  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  __swift_destroy_boxed_opaque_existential_0(v1 + 17);
  v22 = swift_task_alloc();
  v1[36] = v22;
  *v22 = v1;
  v22[1] = sub_2275F7474;

  return sub_22708BA40();
}

uint64_t sub_2275F7474()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_227604518;
  }

  else
  {
    v2 = sub_2275F7588;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275F7588()
{
  v0[38] = 0;
  switch(byte_283A95F20)
  {
    case 1:
      v104 = swift_task_alloc();
      v0[41] = v104;
      *v104 = v0;
      v104[1] = sub_2275FA350;
      v105 = v0[35];

      return sub_227609488(100, v105);
    case 2:
      v94 = swift_task_alloc();
      v0[43] = v94;
      *v94 = v0;
      v94[1] = sub_2275FA464;
      v95 = v0[35];

      return sub_227609DC0(100, v95);
    case 3:
      v100 = swift_task_alloc();
      v0[45] = v100;
      *v100 = v0;
      v101 = sub_2275FA578;
      goto LABEL_240;
    case 4:
      v78 = swift_task_alloc();
      v0[47] = v78;
      *v78 = v0;
      v78[1] = sub_2275FA68C;
      v79 = v0[35];

      return sub_22760B0BC(100, v79);
    case 5:
      v124 = swift_task_alloc();
      v0[49] = v124;
      *v124 = v0;
      v124[1] = sub_2275FA7A0;
      v125 = v0[35];

      return sub_22760B9F4(100, v125);
    case 6:
      v102 = swift_task_alloc();
      v0[51] = v102;
      *v102 = v0;
      v103 = sub_2275FA8B4;
      goto LABEL_197;
    case 7:
      v102 = swift_task_alloc();
      v0[53] = v102;
      *v102 = v0;
      v103 = sub_2275FA9C8;
LABEL_197:
      v102[1] = v103;
      v134 = v0[35];

      result = sub_22760C32C(100, v134);
      break;
    case 8:
      v139 = swift_task_alloc();
      v0[55] = v139;
      *v139 = v0;
      v139[1] = sub_2275FAADC;
      v140 = v0[35];

      result = sub_22760CC64(100, v140);
      break;
    case 9:
      v88 = swift_task_alloc();
      v0[57] = v88;
      *v88 = v0;
      v88[1] = sub_2275FABF0;
      v89 = v0[35];

      result = sub_22760D61C(100, v89);
      break;
    case 10:
      v137 = swift_task_alloc();
      v0[59] = v137;
      *v137 = v0;
      v137[1] = sub_2275FAD04;
      v138 = v0[35];

      result = sub_22760DF54(100, v138);
      break;
    case 11:
      v72 = swift_task_alloc();
      v0[61] = v72;
      *v72 = v0;
      v72[1] = sub_2275FAE18;
      v73 = v0[35];

      result = sub_22760E88C(100, v73);
      break;
    case 12:
      v86 = swift_task_alloc();
      v0[63] = v86;
      *v86 = v0;
      v86[1] = sub_2275FAF2C;
      v87 = v0[35];

      result = sub_22760F1C4(100, v87);
      break;
    case 13:
      v132 = swift_task_alloc();
      v0[65] = v132;
      *v132 = v0;
      v132[1] = sub_2275FB040;
      v133 = v0[35];

      result = sub_22760FAFC(100, v133);
      break;
    case 14:
      v62 = swift_task_alloc();
      v0[67] = v62;
      *v62 = v0;
      v62[1] = sub_2275FB154;
      v63 = v0[35];

      result = sub_227610434(100, v63);
      break;
    case 15:
      v96 = swift_task_alloc();
      v0[69] = v96;
      *v96 = v0;
      v96[1] = sub_2275FB268;
      v97 = v0[35];

      result = sub_227610D6C(100, v97);
      break;
    case 16:
      v56 = swift_task_alloc();
      v0[71] = v56;
      *v56 = v0;
      v56[1] = sub_2275FB37C;
      v57 = v0[35];

      result = sub_2276116A4(100, v57);
      break;
    case 17:
      v112 = swift_task_alloc();
      v0[73] = v112;
      *v112 = v0;
      v112[1] = sub_2275FB490;
      v113 = v0[35];

      result = sub_227611F6C(100, v113);
      break;
    case 18:
      v135 = swift_task_alloc();
      v0[75] = v135;
      *v135 = v0;
      v135[1] = sub_2275FB5A4;
      v136 = v0[35];

      result = sub_2276128A4(100, v136);
      break;
    case 19:
      v155 = swift_task_alloc();
      v0[77] = v155;
      *v155 = v0;
      v155[1] = sub_2275FB6B8;
      v156 = v0[35];

      result = sub_22761316C(100, v156);
      break;
    case 20:
      v120 = swift_task_alloc();
      v0[79] = v120;
      *v120 = v0;
      v120[1] = sub_2275FB7CC;
      v121 = v0[35];

      result = sub_227613AA4(100, v121);
      break;
    case 21:
      v130 = swift_task_alloc();
      v0[81] = v130;
      *v130 = v0;
      v130[1] = sub_2275FB8E0;
      v131 = v0[35];

      result = sub_2276143DC(100, v131);
      break;
    case 22:
      v149 = swift_task_alloc();
      v0[83] = v149;
      *v149 = v0;
      v149[1] = sub_2275FB9F4;
      v150 = v0[35];

      result = sub_227614CE8(100, v150);
      break;
    case 23:
      v162 = swift_task_alloc();
      v0[87] = v162;
      *v162 = v0;
      v162[1] = sub_2275FBC1C;
      v163 = v0[35];

      result = sub_227615F00(100, v163);
      break;
    case 24:
      v92 = swift_task_alloc();
      v0[85] = v92;
      *v92 = v0;
      v92[1] = sub_2275FBB08;
      v93 = v0[35];

      result = sub_2276155F4(100, v93);
      break;
    case 25:
      v90 = swift_task_alloc();
      v0[89] = v90;
      *v90 = v0;
      v90[1] = sub_2275FBD30;
      v91 = v0[35];

      result = sub_227616838(100, v91);
      break;
    case 26:
      v170 = swift_task_alloc();
      v0[91] = v170;
      *v170 = v0;
      v170[1] = sub_2275FBE44;
      v171 = v0[35];

      result = sub_227617170(100, v171);
      break;
    case 27:
      v52 = swift_task_alloc();
      v0[93] = v52;
      *v52 = v0;
      v52[1] = sub_2275FBF58;
      v53 = v0[35];

      result = sub_227617AA8(100, v53);
      break;
    case 28:
      v164 = swift_task_alloc();
      v0[95] = v164;
      *v164 = v0;
      v164[1] = sub_2275FC06C;
      v165 = v0[35];

      result = sub_2276183E0(100, v165);
      break;
    case 29:
      v166 = swift_task_alloc();
      v0[97] = v166;
      *v166 = v0;
      v166[1] = sub_2275FC180;
      v167 = v0[35];

      result = sub_227618D18(100, v167);
      break;
    case 30:
      v141 = swift_task_alloc();
      v0[99] = v141;
      *v141 = v0;
      v141[1] = sub_2275FC294;
      v142 = v0[35];

      result = sub_227619650(100, v142);
      break;
    case 31:
      v110 = swift_task_alloc();
      v0[101] = v110;
      *v110 = v0;
      v110[1] = sub_2275FC3A8;
      v111 = v0[35];

      result = sub_227619F88(100, v111);
      break;
    case 32:
      v143 = swift_task_alloc();
      v0[103] = v143;
      *v143 = v0;
      v143[1] = sub_2275FC4BC;
      v144 = v0[35];

      result = sub_22761A8C0(100, v144);
      break;
    case 33:
      v64 = swift_task_alloc();
      v0[105] = v64;
      *v64 = v0;
      v64[1] = sub_2275FC5D0;
      v65 = v0[35];

      result = sub_22761B188(100, v65);
      break;
    case 34:
      v54 = swift_task_alloc();
      v0[107] = v54;
      *v54 = v0;
      v54[1] = sub_2275FC6E4;
      v55 = v0[35];

      result = sub_22761BAC0(100, v55);
      break;
    case 35:
      v46 = swift_task_alloc();
      v0[109] = v46;
      *v46 = v0;
      v46[1] = sub_2275FC7F8;
      v47 = v0[35];

      result = sub_22761C3F8(100, v47);
      break;
    case 36:
      v48 = swift_task_alloc();
      v0[111] = v48;
      *v48 = v0;
      v48[1] = sub_2275FC90C;
      v49 = v0[35];

      result = sub_22761CD30(100, v49);
      break;
    case 37:
      v36 = swift_task_alloc();
      v0[113] = v36;
      *v36 = v0;
      v36[1] = sub_2275FCA20;
      v37 = v0[35];

      result = sub_22761D668(100, v37);
      break;
    case 38:
      v168 = swift_task_alloc();
      v0[115] = v168;
      *v168 = v0;
      v168[1] = sub_2275FCB34;
      v169 = v0[35];

      result = sub_22761DFA0(100, v169);
      break;
    case 39:
      v153 = swift_task_alloc();
      v0[117] = v153;
      *v153 = v0;
      v153[1] = sub_2275FCC48;
      v154 = v0[35];

      result = sub_22761E8AC(100, v154);
      break;
    case 40:
      v80 = swift_task_alloc();
      v0[119] = v80;
      *v80 = v0;
      v80[1] = sub_2275FCD5C;
      v81 = v0[35];

      result = sub_22761F1E4(100, v81);
      break;
    case 41:
      v116 = swift_task_alloc();
      v0[121] = v116;
      *v116 = v0;
      v116[1] = sub_2275FCE70;
      v117 = v0[35];

      result = sub_22761FB1C(100, v117);
      break;
    case 42:
      v159 = swift_task_alloc();
      v0[123] = v159;
      *v159 = v0;
      v159[1] = sub_2275FCF84;
      v160 = v0[35];

      result = sub_227620454(100, v160);
      break;
    case 43:
      v26 = swift_task_alloc();
      v0[125] = v26;
      *v26 = v0;
      v26[1] = sub_2275FD098;
      v27 = v0[35];

      result = sub_227620D8C(100, v27);
      break;
    case 44:
      v60 = swift_task_alloc();
      v0[127] = v60;
      *v60 = v0;
      v60[1] = sub_2275FD1AC;
      v61 = v0[35];

      result = sub_2276216C4(100, v61);
      break;
    case 45:
      v145 = swift_task_alloc();
      v0[129] = v145;
      *v145 = v0;
      v145[1] = sub_2275FD2C0;
      v146 = v0[35];

      result = sub_227621F8C(100, v146);
      break;
    case 46:
      v180 = swift_task_alloc();
      v0[131] = v180;
      *v180 = v0;
      v180[1] = sub_2275FD3D4;
      v181 = v0[35];

      result = sub_2276228C4(100, v181);
      break;
    case 47:
      v40 = swift_task_alloc();
      v0[133] = v40;
      *v40 = v0;
      v40[1] = sub_2275FD4E8;
      v41 = v0[35];

      result = sub_2276231FC(100, v41);
      break;
    case 48:
      v66 = swift_task_alloc();
      v0[135] = v66;
      *v66 = v0;
      v66[1] = sub_2275FD5FC;
      v67 = v0[35];

      result = sub_227623B34(100, v67);
      break;
    case 49:
      v76 = swift_task_alloc();
      v0[137] = v76;
      *v76 = v0;
      v76[1] = sub_2276007A4;
      v77 = v0[35];

      result = sub_2276243FC(100, v77);
      break;
    case 50:
      v22 = swift_task_alloc();
      v0[139] = v22;
      *v22 = v0;
      v22[1] = sub_2276008B8;
      v23 = v0[35];

      result = sub_227624D34(100, v23);
      break;
    case 51:
      v190 = swift_task_alloc();
      v0[141] = v190;
      *v190 = v0;
      v190[1] = sub_2276009CC;
      v191 = v0[35];

      result = sub_2276255FC(100, v191);
      break;
    case 52:
      v178 = swift_task_alloc();
      v0[145] = v178;
      *v178 = v0;
      v178[1] = sub_227600BF4;
      v179 = v0[35];

      result = sub_22762686C(100, v179);
      break;
    case 53:
      v38 = swift_task_alloc();
      v0[147] = v38;
      *v38 = v0;
      v38[1] = sub_227600D08;
      v39 = v0[35];

      result = sub_2276271A4(100, v39);
      break;
    case 54:
      v172 = swift_task_alloc();
      v0[143] = v172;
      *v172 = v0;
      v172[1] = sub_227600AE0;
      v173 = v0[35];

      result = sub_227625F34(100, v173);
      break;
    case 55:
      v176 = swift_task_alloc();
      v0[149] = v176;
      *v176 = v0;
      v176[1] = sub_227600E1C;
      v177 = v0[35];

      result = sub_227627ADC(100, v177);
      break;
    case 56:
      v42 = swift_task_alloc();
      v0[151] = v42;
      *v42 = v0;
      v42[1] = sub_227600F30;
      v43 = v0[35];

      result = sub_227628414(100, v43);
      break;
    case 57:
      v157 = swift_task_alloc();
      v0[153] = v157;
      *v157 = v0;
      v157[1] = sub_227601044;
      v158 = v0[35];

      result = sub_227628D4C(100, v158);
      break;
    case 58:
      v68 = swift_task_alloc();
      v0[155] = v68;
      *v68 = v0;
      v68[1] = sub_227601158;
      v69 = v0[35];

      result = sub_227629684(100, v69);
      break;
    case 59:
      v100 = swift_task_alloc();
      v0[157] = v100;
      *v100 = v0;
      v101 = sub_22760126C;
LABEL_240:
      v100[1] = v101;
      v161 = v0[35];

      result = sub_22760A6F8(100, v161);
      break;
    case 60:
      v82 = swift_task_alloc();
      v0[159] = v82;
      *v82 = v0;
      v82[1] = sub_227601380;
      v83 = v0[35];

      result = sub_227629FBC(100, v83);
      break;
    case 61:
      v122 = swift_task_alloc();
      v0[161] = v122;
      *v122 = v0;
      v122[1] = sub_227601494;
      v123 = v0[35];

      result = sub_22762A8F4(100, v123);
      break;
    case 62:
      v128 = swift_task_alloc();
      v0[163] = v128;
      *v128 = v0;
      v128[1] = sub_2276015A8;
      v129 = v0[35];

      result = sub_22762B1BC(100, v129);
      break;
    case 63:
      v98 = swift_task_alloc();
      v0[165] = v98;
      *v98 = v0;
      v98[1] = sub_2276016BC;
      v99 = v0[35];

      result = sub_22762BAF4(100, v99);
      break;
    case 64:
      v84 = swift_task_alloc();
      v0[167] = v84;
      *v84 = v0;
      v84[1] = sub_2276017D0;
      v85 = v0[35];

      result = sub_22762C3BC(100, v85);
      break;
    case 65:
      v126 = swift_task_alloc();
      v0[169] = v126;
      *v126 = v0;
      v126[1] = sub_2276018E4;
      v127 = v0[35];

      result = sub_22762CCF4(100, v127);
      break;
    case 66:
      v30 = swift_task_alloc();
      v0[171] = v30;
      *v30 = v0;
      v30[1] = sub_2276019F8;
      v31 = v0[35];

      result = sub_22762D5BC(100, v31);
      break;
    case 67:
      v58 = swift_task_alloc();
      v0[173] = v58;
      *v58 = v0;
      v58[1] = sub_227601B0C;
      v59 = v0[35];

      result = sub_22762DEF4(100, v59);
      break;
    case 68:
      v198 = swift_task_alloc();
      v0[175] = v198;
      *v198 = v0;
      v198[1] = sub_227601C20;
      v199 = v0[35];

      result = sub_22762E82C(100, v199);
      break;
    case 69:
      v50 = swift_task_alloc();
      v0[177] = v50;
      *v50 = v0;
      v50[1] = sub_227601D34;
      v51 = v0[35];

      result = sub_22762F164(100, v51);
      break;
    case 70:
      v16 = swift_task_alloc();
      v0[179] = v16;
      *v16 = v0;
      v16[1] = sub_227601E48;
      v17 = v0[35];

      result = sub_22762FA9C(100, v17);
      break;
    case 71:
      v34 = swift_task_alloc();
      v0[181] = v34;
      *v34 = v0;
      v34[1] = sub_227601F5C;
      v35 = v0[35];

      result = sub_2276303D4(100, v35);
      break;
    case 72:
      v174 = swift_task_alloc();
      v0[183] = v174;
      *v174 = v0;
      v174[1] = sub_227602070;
      v175 = v0[35];

      result = sub_227630D0C(100, v175);
      break;
    case 73:
      v182 = swift_task_alloc();
      v0[185] = v182;
      *v182 = v0;
      v182[1] = sub_227602184;
      v183 = v0[35];

      result = sub_227631644(100, v183);
      break;
    case 74:
      v186 = swift_task_alloc();
      v0[187] = v186;
      *v186 = v0;
      v186[1] = sub_227602298;
      v187 = v0[35];

      result = sub_227631F7C(100, v187);
      break;
    case 75:
      v44 = swift_task_alloc();
      v0[189] = v44;
      *v44 = v0;
      v44[1] = sub_2276023AC;
      v45 = v0[35];

      result = sub_2276328B4(100, v45);
      break;
    case 76:
      v118 = swift_task_alloc();
      v0[191] = v118;
      *v118 = v0;
      v118[1] = sub_2276024C0;
      v119 = v0[35];

      result = sub_2276331EC(100, v119);
      break;
    case 77:
      v18 = swift_task_alloc();
      v0[193] = v18;
      *v18 = v0;
      v18[1] = sub_2276025D4;
      v19 = v0[35];

      result = sub_227633B24(100, v19);
      break;
    case 78:
      v194 = swift_task_alloc();
      v0[195] = v194;
      *v194 = v0;
      v194[1] = sub_2276026E8;
      v195 = v0[35];

      result = sub_22763445C(100, v195);
      break;
    case 79:
      v10 = swift_task_alloc();
      v0[197] = v10;
      *v10 = v0;
      v10[1] = sub_2276027FC;
      v11 = v0[35];

      result = sub_227634D94(100, v11);
      break;
    case 80:
      v32 = swift_task_alloc();
      v0[199] = v32;
      *v32 = v0;
      v32[1] = sub_227602910;
      v33 = v0[35];

      result = sub_2276356CC(100, v33);
      break;
    case 81:
      v74 = swift_task_alloc();
      v0[201] = v74;
      *v74 = v0;
      v74[1] = sub_227602A24;
      v75 = v0[35];

      result = sub_227636004(100, v75);
      break;
    case 82:
      v70 = swift_task_alloc();
      v0[203] = v70;
      *v70 = v0;
      v70[1] = sub_227602B38;
      v71 = v0[35];

      result = sub_2276368CC(100, v71);
      break;
    case 83:
      v6 = swift_task_alloc();
      v0[205] = v6;
      *v6 = v0;
      v6[1] = sub_227602C4C;
      v7 = v0[35];

      result = sub_227637204(100, v7);
      break;
    case 84:
      v4 = swift_task_alloc();
      v0[207] = v4;
      *v4 = v0;
      v4[1] = sub_227602D60;
      v5 = v0[35];

      result = sub_227637ACC(100, v5);
      break;
    case 85:
      v147 = swift_task_alloc();
      v0[209] = v147;
      *v147 = v0;
      v147[1] = sub_227602E74;
      v148 = v0[35];

      result = sub_227638404(100, v148);
      break;
    case 86:
      v151 = swift_task_alloc();
      v0[211] = v151;
      *v151 = v0;
      v151[1] = sub_227602F88;
      v152 = v0[35];

      result = sub_227638D3C(100, v152);
      break;
    case 87:
      v184 = swift_task_alloc();
      v0[213] = v184;
      *v184 = v0;
      v184[1] = sub_22760309C;
      v185 = v0[35];

      result = sub_227639674(100, v185);
      break;
    case 88:
      v24 = swift_task_alloc();
      v0[215] = v24;
      *v24 = v0;
      v24[1] = sub_2276031B0;
      v25 = v0[35];

      result = sub_227639FAC(100, v25);
      break;
    case 89:
      v206 = swift_task_alloc();
      v0[217] = v206;
      *v206 = v0;
      v206[1] = sub_2276032C4;
      v207 = v0[35];

      result = sub_22763A874(100, v207);
      break;
    case 90:
      v204 = swift_task_alloc();
      v0[219] = v204;
      *v204 = v0;
      v204[1] = sub_2276033D8;
      v205 = v0[35];

      result = sub_22763B1AC(100, v205);
      break;
    case 91:
      v8 = swift_task_alloc();
      v0[221] = v8;
      *v8 = v0;
      v8[1] = sub_2276034EC;
      v9 = v0[35];

      result = sub_22763BA74(100, v9);
      break;
    case 92:
      v106 = swift_task_alloc();
      v0[223] = v106;
      *v106 = v0;
      v106[1] = sub_227603600;
      v107 = v0[35];

      result = sub_22763C3AC(100, v107);
      break;
    case 93:
      v20 = swift_task_alloc();
      v0[225] = v20;
      *v20 = v0;
      v20[1] = sub_227603714;
      v21 = v0[35];

      result = sub_22763CCE4(100, v21);
      break;
    case 94:
      v114 = swift_task_alloc();
      v0[227] = v114;
      *v114 = v0;
      v114[1] = sub_227603828;
      v115 = v0[35];

      result = sub_22763D61C(100, v115);
      break;
    case 95:
      v200 = swift_task_alloc();
      v0[229] = v200;
      *v200 = v0;
      v200[1] = sub_22760393C;
      v201 = v0[35];

      result = sub_22763DEF8(100, v201);
      break;
    case 96:
      v12 = swift_task_alloc();
      v0[231] = v12;
      *v12 = v0;
      v12[1] = sub_227603A50;
      v13 = v0[35];

      result = sub_22763E7C0(100, v13);
      break;
    case 97:
      v208 = swift_task_alloc();
      v0[233] = v208;
      *v208 = v0;
      v208[1] = sub_227603B64;
      v209 = v0[35];

      result = sub_22763F0F8(100, v209);
      break;
    case 98:
      v108 = swift_task_alloc();
      v0[235] = v108;
      *v108 = v0;
      v108[1] = sub_227603C78;
      v109 = v0[35];

      result = sub_22763FA3C(100, v109);
      break;
    case 99:
      v210 = swift_task_alloc();
      v0[247] = v210;
      *v210 = v0;
      v210[1] = sub_2276042F0;
      v211 = v0[35];

      result = sub_22764311C(100, v211);
      break;
    case 100:
      v202 = swift_task_alloc();
      v0[243] = v202;
      *v202 = v0;
      v202[1] = sub_2276040C8;
      v203 = v0[35];

      result = sub_227641EAC(100, v203);
      break;
    case 101:
      v196 = swift_task_alloc();
      v0[237] = v196;
      *v196 = v0;
      v196[1] = sub_227603D8C;
      v197 = v0[35];

      result = sub_227640374(100, v197);
      break;
    case 102:
      v28 = swift_task_alloc();
      v0[239] = v28;
      *v28 = v0;
      v28[1] = sub_227603EA0;
      v29 = v0[35];

      result = sub_227640CAC(100, v29);
      break;
    case 103:
      v192 = swift_task_alloc();
      v0[245] = v192;
      *v192 = v0;
      v192[1] = sub_2276041DC;
      v193 = v0[35];

      result = sub_2276427E4(100, v193);
      break;
    case 104:
      v188 = swift_task_alloc();
      v0[241] = v188;
      *v188 = v0;
      v188[1] = sub_227603FB4;
      v189 = v0[35];

      result = sub_227641574(100, v189);
      break;
    case 105:
      v14 = swift_task_alloc();
      v0[249] = v14;
      *v14 = v0;
      v14[1] = sub_227604404;
      v15 = v0[35];

      result = sub_2276439E4(100, v15);
      break;
    default:
      v1 = swift_task_alloc();
      v0[39] = v1;
      *v1 = v0;
      v1[1] = sub_2275FA23C;
      v2 = v0[35];

      result = sub_227608B50(100, v2);
      break;
  }

  return result;
}

uint64_t sub_2275FA23C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_2276045C0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FA350()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_227604668;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FA464()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_227604710;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FA578()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_2276047B8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FA68C()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_227604860;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FA7A0()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_227604908;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FA8B4()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_2276049B0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FA9C8()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_227604A58;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FAADC()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_227604B00;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FABF0()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_227604BA8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FAD04()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_227604C50;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FAE18()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_227604CF8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FAF2C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_227604DA0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FB040()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_227604E48;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FB154()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_227604EF0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FB268()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_227604F98;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FB37C()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_227605040;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FB490()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_2276050E8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FB5A4()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_227605190;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FB6B8()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_227605238;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FB7CC()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_2276052E0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FB8E0()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_227605388;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FB9F4()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_227605430;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FBB08()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_2276054D8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FBC1C()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_227605580;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FBD30()
{
  *(*v1 + 720) = v0;

  if (v0)
  {
    v2 = sub_227605628;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FBE44()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_2276056D0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FBF58()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_227605778;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FC06C()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_227605820;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FC180()
{
  *(*v1 + 784) = v0;

  if (v0)
  {
    v2 = sub_2276058C8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FC294()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_227605970;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FC3A8()
{
  *(*v1 + 816) = v0;

  if (v0)
  {
    v2 = sub_227605A18;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FC4BC()
{
  *(*v1 + 832) = v0;

  if (v0)
  {
    v2 = sub_227605AC0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FC5D0()
{
  *(*v1 + 848) = v0;

  if (v0)
  {
    v2 = sub_227605B68;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FC6E4()
{
  *(*v1 + 864) = v0;

  if (v0)
  {
    v2 = sub_227605C10;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FC7F8()
{
  *(*v1 + 880) = v0;

  if (v0)
  {
    v2 = sub_227605CB8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FC90C()
{
  *(*v1 + 896) = v0;

  if (v0)
  {
    v2 = sub_227605D60;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FCA20()
{
  *(*v1 + 912) = v0;

  if (v0)
  {
    v2 = sub_227605E08;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FCB34()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_227605EB0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FCC48()
{
  *(*v1 + 944) = v0;

  if (v0)
  {
    v2 = sub_227605F58;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FCD5C()
{
  *(*v1 + 960) = v0;

  if (v0)
  {
    v2 = sub_227606000;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FCE70()
{
  *(*v1 + 976) = v0;

  if (v0)
  {
    v2 = sub_2276060A8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FCF84()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_227606150;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FD098()
{
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v2 = sub_2276061F8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FD1AC()
{
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v2 = sub_2276062A0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FD2C0()
{
  *(*v1 + 1040) = v0;

  if (v0)
  {
    v2 = sub_227606348;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FD3D4()
{
  *(*v1 + 1056) = v0;

  if (v0)
  {
    v2 = sub_2276063F0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FD4E8()
{
  *(*v1 + 1072) = v0;

  if (v0)
  {
    v2 = sub_227606498;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FD5FC()
{
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v2 = sub_227606540;
  }

  else
  {
    v2 = sub_2275FD710;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275FD710()
{
  v1 = v0[38] + 1;
  if (v0[38] == 105)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[38] = v1;
    switch(*(&unk_283A95F00 + v1 + 32))
    {
      case 1:
        v106 = swift_task_alloc();
        v0[41] = v106;
        *v106 = v0;
        v106[1] = sub_2275FA350;
        v107 = v0[35];

        return sub_227609488(100, v107);
      case 2:
        v96 = swift_task_alloc();
        v0[43] = v96;
        *v96 = v0;
        v96[1] = sub_2275FA464;
        v97 = v0[35];

        return sub_227609DC0(100, v97);
      case 3:
        v102 = swift_task_alloc();
        v0[45] = v102;
        *v102 = v0;
        v103 = sub_2275FA578;
        goto LABEL_244;
      case 4:
        v80 = swift_task_alloc();
        v0[47] = v80;
        *v80 = v0;
        v80[1] = sub_2275FA68C;
        v81 = v0[35];

        return sub_22760B0BC(100, v81);
      case 5:
        v126 = swift_task_alloc();
        v0[49] = v126;
        *v126 = v0;
        v126[1] = sub_2275FA7A0;
        v127 = v0[35];

        return sub_22760B9F4(100, v127);
      case 6:
        v104 = swift_task_alloc();
        v0[51] = v104;
        *v104 = v0;
        v105 = sub_2275FA8B4;
        goto LABEL_201;
      case 7:
        v104 = swift_task_alloc();
        v0[53] = v104;
        *v104 = v0;
        v105 = sub_2275FA9C8;
LABEL_201:
        v104[1] = v105;
        v136 = v0[35];

        result = sub_22760C32C(100, v136);
        break;
      case 8:
        v141 = swift_task_alloc();
        v0[55] = v141;
        *v141 = v0;
        v141[1] = sub_2275FAADC;
        v142 = v0[35];

        result = sub_22760CC64(100, v142);
        break;
      case 9:
        v90 = swift_task_alloc();
        v0[57] = v90;
        *v90 = v0;
        v90[1] = sub_2275FABF0;
        v91 = v0[35];

        result = sub_22760D61C(100, v91);
        break;
      case 0xA:
        v139 = swift_task_alloc();
        v0[59] = v139;
        *v139 = v0;
        v139[1] = sub_2275FAD04;
        v140 = v0[35];

        result = sub_22760DF54(100, v140);
        break;
      case 0xB:
        v74 = swift_task_alloc();
        v0[61] = v74;
        *v74 = v0;
        v74[1] = sub_2275FAE18;
        v75 = v0[35];

        result = sub_22760E88C(100, v75);
        break;
      case 0xC:
        v88 = swift_task_alloc();
        v0[63] = v88;
        *v88 = v0;
        v88[1] = sub_2275FAF2C;
        v89 = v0[35];

        result = sub_22760F1C4(100, v89);
        break;
      case 0xD:
        v134 = swift_task_alloc();
        v0[65] = v134;
        *v134 = v0;
        v134[1] = sub_2275FB040;
        v135 = v0[35];

        result = sub_22760FAFC(100, v135);
        break;
      case 0xE:
        v64 = swift_task_alloc();
        v0[67] = v64;
        *v64 = v0;
        v64[1] = sub_2275FB154;
        v65 = v0[35];

        result = sub_227610434(100, v65);
        break;
      case 0xF:
        v98 = swift_task_alloc();
        v0[69] = v98;
        *v98 = v0;
        v98[1] = sub_2275FB268;
        v99 = v0[35];

        result = sub_227610D6C(100, v99);
        break;
      case 0x10:
        v58 = swift_task_alloc();
        v0[71] = v58;
        *v58 = v0;
        v58[1] = sub_2275FB37C;
        v59 = v0[35];

        result = sub_2276116A4(100, v59);
        break;
      case 0x11:
        v114 = swift_task_alloc();
        v0[73] = v114;
        *v114 = v0;
        v114[1] = sub_2275FB490;
        v115 = v0[35];

        result = sub_227611F6C(100, v115);
        break;
      case 0x12:
        v137 = swift_task_alloc();
        v0[75] = v137;
        *v137 = v0;
        v137[1] = sub_2275FB5A4;
        v138 = v0[35];

        result = sub_2276128A4(100, v138);
        break;
      case 0x13:
        v157 = swift_task_alloc();
        v0[77] = v157;
        *v157 = v0;
        v157[1] = sub_2275FB6B8;
        v158 = v0[35];

        result = sub_22761316C(100, v158);
        break;
      case 0x14:
        v122 = swift_task_alloc();
        v0[79] = v122;
        *v122 = v0;
        v122[1] = sub_2275FB7CC;
        v123 = v0[35];

        result = sub_227613AA4(100, v123);
        break;
      case 0x15:
        v132 = swift_task_alloc();
        v0[81] = v132;
        *v132 = v0;
        v132[1] = sub_2275FB8E0;
        v133 = v0[35];

        result = sub_2276143DC(100, v133);
        break;
      case 0x16:
        v151 = swift_task_alloc();
        v0[83] = v151;
        *v151 = v0;
        v151[1] = sub_2275FB9F4;
        v152 = v0[35];

        result = sub_227614CE8(100, v152);
        break;
      case 0x17:
        v164 = swift_task_alloc();
        v0[87] = v164;
        *v164 = v0;
        v164[1] = sub_2275FBC1C;
        v165 = v0[35];

        result = sub_227615F00(100, v165);
        break;
      case 0x18:
        v94 = swift_task_alloc();
        v0[85] = v94;
        *v94 = v0;
        v94[1] = sub_2275FBB08;
        v95 = v0[35];

        result = sub_2276155F4(100, v95);
        break;
      case 0x19:
        v92 = swift_task_alloc();
        v0[89] = v92;
        *v92 = v0;
        v92[1] = sub_2275FBD30;
        v93 = v0[35];

        result = sub_227616838(100, v93);
        break;
      case 0x1A:
        v172 = swift_task_alloc();
        v0[91] = v172;
        *v172 = v0;
        v172[1] = sub_2275FBE44;
        v173 = v0[35];

        result = sub_227617170(100, v173);
        break;
      case 0x1B:
        v54 = swift_task_alloc();
        v0[93] = v54;
        *v54 = v0;
        v54[1] = sub_2275FBF58;
        v55 = v0[35];

        result = sub_227617AA8(100, v55);
        break;
      case 0x1C:
        v166 = swift_task_alloc();
        v0[95] = v166;
        *v166 = v0;
        v166[1] = sub_2275FC06C;
        v167 = v0[35];

        result = sub_2276183E0(100, v167);
        break;
      case 0x1D:
        v168 = swift_task_alloc();
        v0[97] = v168;
        *v168 = v0;
        v168[1] = sub_2275FC180;
        v169 = v0[35];

        result = sub_227618D18(100, v169);
        break;
      case 0x1E:
        v143 = swift_task_alloc();
        v0[99] = v143;
        *v143 = v0;
        v143[1] = sub_2275FC294;
        v144 = v0[35];

        result = sub_227619650(100, v144);
        break;
      case 0x1F:
        v112 = swift_task_alloc();
        v0[101] = v112;
        *v112 = v0;
        v112[1] = sub_2275FC3A8;
        v113 = v0[35];

        result = sub_227619F88(100, v113);
        break;
      case 0x20:
        v145 = swift_task_alloc();
        v0[103] = v145;
        *v145 = v0;
        v145[1] = sub_2275FC4BC;
        v146 = v0[35];

        result = sub_22761A8C0(100, v146);
        break;
      case 0x21:
        v66 = swift_task_alloc();
        v0[105] = v66;
        *v66 = v0;
        v66[1] = sub_2275FC5D0;
        v67 = v0[35];

        result = sub_22761B188(100, v67);
        break;
      case 0x22:
        v56 = swift_task_alloc();
        v0[107] = v56;
        *v56 = v0;
        v56[1] = sub_2275FC6E4;
        v57 = v0[35];

        result = sub_22761BAC0(100, v57);
        break;
      case 0x23:
        v48 = swift_task_alloc();
        v0[109] = v48;
        *v48 = v0;
        v48[1] = sub_2275FC7F8;
        v49 = v0[35];

        result = sub_22761C3F8(100, v49);
        break;
      case 0x24:
        v50 = swift_task_alloc();
        v0[111] = v50;
        *v50 = v0;
        v50[1] = sub_2275FC90C;
        v51 = v0[35];

        result = sub_22761CD30(100, v51);
        break;
      case 0x25:
        v38 = swift_task_alloc();
        v0[113] = v38;
        *v38 = v0;
        v38[1] = sub_2275FCA20;
        v39 = v0[35];

        result = sub_22761D668(100, v39);
        break;
      case 0x26:
        v170 = swift_task_alloc();
        v0[115] = v170;
        *v170 = v0;
        v170[1] = sub_2275FCB34;
        v171 = v0[35];

        result = sub_22761DFA0(100, v171);
        break;
      case 0x27:
        v155 = swift_task_alloc();
        v0[117] = v155;
        *v155 = v0;
        v155[1] = sub_2275FCC48;
        v156 = v0[35];

        result = sub_22761E8AC(100, v156);
        break;
      case 0x28:
        v82 = swift_task_alloc();
        v0[119] = v82;
        *v82 = v0;
        v82[1] = sub_2275FCD5C;
        v83 = v0[35];

        result = sub_22761F1E4(100, v83);
        break;
      case 0x29:
        v118 = swift_task_alloc();
        v0[121] = v118;
        *v118 = v0;
        v118[1] = sub_2275FCE70;
        v119 = v0[35];

        result = sub_22761FB1C(100, v119);
        break;
      case 0x2A:
        v161 = swift_task_alloc();
        v0[123] = v161;
        *v161 = v0;
        v161[1] = sub_2275FCF84;
        v162 = v0[35];

        result = sub_227620454(100, v162);
        break;
      case 0x2B:
        v28 = swift_task_alloc();
        v0[125] = v28;
        *v28 = v0;
        v28[1] = sub_2275FD098;
        v29 = v0[35];

        result = sub_227620D8C(100, v29);
        break;
      case 0x2C:
        v62 = swift_task_alloc();
        v0[127] = v62;
        *v62 = v0;
        v62[1] = sub_2275FD1AC;
        v63 = v0[35];

        result = sub_2276216C4(100, v63);
        break;
      case 0x2D:
        v147 = swift_task_alloc();
        v0[129] = v147;
        *v147 = v0;
        v147[1] = sub_2275FD2C0;
        v148 = v0[35];

        result = sub_227621F8C(100, v148);
        break;
      case 0x2E:
        v182 = swift_task_alloc();
        v0[131] = v182;
        *v182 = v0;
        v182[1] = sub_2275FD3D4;
        v183 = v0[35];

        result = sub_2276228C4(100, v183);
        break;
      case 0x2F:
        v42 = swift_task_alloc();
        v0[133] = v42;
        *v42 = v0;
        v42[1] = sub_2275FD4E8;
        v43 = v0[35];

        result = sub_2276231FC(100, v43);
        break;
      case 0x30:
        v68 = swift_task_alloc();
        v0[135] = v68;
        *v68 = v0;
        v68[1] = sub_2275FD5FC;
        v69 = v0[35];

        result = sub_227623B34(100, v69);
        break;
      case 0x31:
        v78 = swift_task_alloc();
        v0[137] = v78;
        *v78 = v0;
        v78[1] = sub_2276007A4;
        v79 = v0[35];

        result = sub_2276243FC(100, v79);
        break;
      case 0x32:
        v24 = swift_task_alloc();
        v0[139] = v24;
        *v24 = v0;
        v24[1] = sub_2276008B8;
        v25 = v0[35];

        result = sub_227624D34(100, v25);
        break;
      case 0x33:
        v192 = swift_task_alloc();
        v0[141] = v192;
        *v192 = v0;
        v192[1] = sub_2276009CC;
        v193 = v0[35];

        result = sub_2276255FC(100, v193);
        break;
      case 0x34:
        v180 = swift_task_alloc();
        v0[145] = v180;
        *v180 = v0;
        v180[1] = sub_227600BF4;
        v181 = v0[35];

        result = sub_22762686C(100, v181);
        break;
      case 0x35:
        v40 = swift_task_alloc();
        v0[147] = v40;
        *v40 = v0;
        v40[1] = sub_227600D08;
        v41 = v0[35];

        result = sub_2276271A4(100, v41);
        break;
      case 0x36:
        v174 = swift_task_alloc();
        v0[143] = v174;
        *v174 = v0;
        v174[1] = sub_227600AE0;
        v175 = v0[35];

        result = sub_227625F34(100, v175);
        break;
      case 0x37:
        v178 = swift_task_alloc();
        v0[149] = v178;
        *v178 = v0;
        v178[1] = sub_227600E1C;
        v179 = v0[35];

        result = sub_227627ADC(100, v179);
        break;
      case 0x38:
        v44 = swift_task_alloc();
        v0[151] = v44;
        *v44 = v0;
        v44[1] = sub_227600F30;
        v45 = v0[35];

        result = sub_227628414(100, v45);
        break;
      case 0x39:
        v159 = swift_task_alloc();
        v0[153] = v159;
        *v159 = v0;
        v159[1] = sub_227601044;
        v160 = v0[35];

        result = sub_227628D4C(100, v160);
        break;
      case 0x3A:
        v70 = swift_task_alloc();
        v0[155] = v70;
        *v70 = v0;
        v70[1] = sub_227601158;
        v71 = v0[35];

        result = sub_227629684(100, v71);
        break;
      case 0x3B:
        v102 = swift_task_alloc();
        v0[157] = v102;
        *v102 = v0;
        v103 = sub_22760126C;
LABEL_244:
        v102[1] = v103;
        v163 = v0[35];

        result = sub_22760A6F8(100, v163);
        break;
      case 0x3C:
        v84 = swift_task_alloc();
        v0[159] = v84;
        *v84 = v0;
        v84[1] = sub_227601380;
        v85 = v0[35];

        result = sub_227629FBC(100, v85);
        break;
      case 0x3D:
        v124 = swift_task_alloc();
        v0[161] = v124;
        *v124 = v0;
        v124[1] = sub_227601494;
        v125 = v0[35];

        result = sub_22762A8F4(100, v125);
        break;
      case 0x3E:
        v130 = swift_task_alloc();
        v0[163] = v130;
        *v130 = v0;
        v130[1] = sub_2276015A8;
        v131 = v0[35];

        result = sub_22762B1BC(100, v131);
        break;
      case 0x3F:
        v100 = swift_task_alloc();
        v0[165] = v100;
        *v100 = v0;
        v100[1] = sub_2276016BC;
        v101 = v0[35];

        result = sub_22762BAF4(100, v101);
        break;
      case 0x40:
        v86 = swift_task_alloc();
        v0[167] = v86;
        *v86 = v0;
        v86[1] = sub_2276017D0;
        v87 = v0[35];

        result = sub_22762C3BC(100, v87);
        break;
      case 0x41:
        v128 = swift_task_alloc();
        v0[169] = v128;
        *v128 = v0;
        v128[1] = sub_2276018E4;
        v129 = v0[35];

        result = sub_22762CCF4(100, v129);
        break;
      case 0x42:
        v32 = swift_task_alloc();
        v0[171] = v32;
        *v32 = v0;
        v32[1] = sub_2276019F8;
        v33 = v0[35];

        result = sub_22762D5BC(100, v33);
        break;
      case 0x43:
        v60 = swift_task_alloc();
        v0[173] = v60;
        *v60 = v0;
        v60[1] = sub_227601B0C;
        v61 = v0[35];

        result = sub_22762DEF4(100, v61);
        break;
      case 0x44:
        v200 = swift_task_alloc();
        v0[175] = v200;
        *v200 = v0;
        v200[1] = sub_227601C20;
        v201 = v0[35];

        result = sub_22762E82C(100, v201);
        break;
      case 0x45:
        v52 = swift_task_alloc();
        v0[177] = v52;
        *v52 = v0;
        v52[1] = sub_227601D34;
        v53 = v0[35];

        result = sub_22762F164(100, v53);
        break;
      case 0x46:
        v18 = swift_task_alloc();
        v0[179] = v18;
        *v18 = v0;
        v18[1] = sub_227601E48;
        v19 = v0[35];

        result = sub_22762FA9C(100, v19);
        break;
      case 0x47:
        v36 = swift_task_alloc();
        v0[181] = v36;
        *v36 = v0;
        v36[1] = sub_227601F5C;
        v37 = v0[35];

        result = sub_2276303D4(100, v37);
        break;
      case 0x48:
        v176 = swift_task_alloc();
        v0[183] = v176;
        *v176 = v0;
        v176[1] = sub_227602070;
        v177 = v0[35];

        result = sub_227630D0C(100, v177);
        break;
      case 0x49:
        v184 = swift_task_alloc();
        v0[185] = v184;
        *v184 = v0;
        v184[1] = sub_227602184;
        v185 = v0[35];

        result = sub_227631644(100, v185);
        break;
      case 0x4A:
        v188 = swift_task_alloc();
        v0[187] = v188;
        *v188 = v0;
        v188[1] = sub_227602298;
        v189 = v0[35];

        result = sub_227631F7C(100, v189);
        break;
      case 0x4B:
        v46 = swift_task_alloc();
        v0[189] = v46;
        *v46 = v0;
        v46[1] = sub_2276023AC;
        v47 = v0[35];

        result = sub_2276328B4(100, v47);
        break;
      case 0x4C:
        v120 = swift_task_alloc();
        v0[191] = v120;
        *v120 = v0;
        v120[1] = sub_2276024C0;
        v121 = v0[35];

        result = sub_2276331EC(100, v121);
        break;
      case 0x4D:
        v20 = swift_task_alloc();
        v0[193] = v20;
        *v20 = v0;
        v20[1] = sub_2276025D4;
        v21 = v0[35];

        result = sub_227633B24(100, v21);
        break;
      case 0x4E:
        v196 = swift_task_alloc();
        v0[195] = v196;
        *v196 = v0;
        v196[1] = sub_2276026E8;
        v197 = v0[35];

        result = sub_22763445C(100, v197);
        break;
      case 0x4F:
        v12 = swift_task_alloc();
        v0[197] = v12;
        *v12 = v0;
        v12[1] = sub_2276027FC;
        v13 = v0[35];

        result = sub_227634D94(100, v13);
        break;
      case 0x50:
        v34 = swift_task_alloc();
        v0[199] = v34;
        *v34 = v0;
        v34[1] = sub_227602910;
        v35 = v0[35];

        result = sub_2276356CC(100, v35);
        break;
      case 0x51:
        v76 = swift_task_alloc();
        v0[201] = v76;
        *v76 = v0;
        v76[1] = sub_227602A24;
        v77 = v0[35];

        result = sub_227636004(100, v77);
        break;
      case 0x52:
        v72 = swift_task_alloc();
        v0[203] = v72;
        *v72 = v0;
        v72[1] = sub_227602B38;
        v73 = v0[35];

        result = sub_2276368CC(100, v73);
        break;
      case 0x53:
        v8 = swift_task_alloc();
        v0[205] = v8;
        *v8 = v0;
        v8[1] = sub_227602C4C;
        v9 = v0[35];

        result = sub_227637204(100, v9);
        break;
      case 0x54:
        v6 = swift_task_alloc();
        v0[207] = v6;
        *v6 = v0;
        v6[1] = sub_227602D60;
        v7 = v0[35];

        result = sub_227637ACC(100, v7);
        break;
      case 0x55:
        v149 = swift_task_alloc();
        v0[209] = v149;
        *v149 = v0;
        v149[1] = sub_227602E74;
        v150 = v0[35];

        result = sub_227638404(100, v150);
        break;
      case 0x56:
        v153 = swift_task_alloc();
        v0[211] = v153;
        *v153 = v0;
        v153[1] = sub_227602F88;
        v154 = v0[35];

        result = sub_227638D3C(100, v154);
        break;
      case 0x57:
        v186 = swift_task_alloc();
        v0[213] = v186;
        *v186 = v0;
        v186[1] = sub_22760309C;
        v187 = v0[35];

        result = sub_227639674(100, v187);
        break;
      case 0x58:
        v26 = swift_task_alloc();
        v0[215] = v26;
        *v26 = v0;
        v26[1] = sub_2276031B0;
        v27 = v0[35];

        result = sub_227639FAC(100, v27);
        break;
      case 0x59:
        v208 = swift_task_alloc();
        v0[217] = v208;
        *v208 = v0;
        v208[1] = sub_2276032C4;
        v209 = v0[35];

        result = sub_22763A874(100, v209);
        break;
      case 0x5A:
        v206 = swift_task_alloc();
        v0[219] = v206;
        *v206 = v0;
        v206[1] = sub_2276033D8;
        v207 = v0[35];

        result = sub_22763B1AC(100, v207);
        break;
      case 0x5B:
        v10 = swift_task_alloc();
        v0[221] = v10;
        *v10 = v0;
        v10[1] = sub_2276034EC;
        v11 = v0[35];

        result = sub_22763BA74(100, v11);
        break;
      case 0x5C:
        v108 = swift_task_alloc();
        v0[223] = v108;
        *v108 = v0;
        v108[1] = sub_227603600;
        v109 = v0[35];

        result = sub_22763C3AC(100, v109);
        break;
      case 0x5D:
        v22 = swift_task_alloc();
        v0[225] = v22;
        *v22 = v0;
        v22[1] = sub_227603714;
        v23 = v0[35];

        result = sub_22763CCE4(100, v23);
        break;
      case 0x5E:
        v116 = swift_task_alloc();
        v0[227] = v116;
        *v116 = v0;
        v116[1] = sub_227603828;
        v117 = v0[35];

        result = sub_22763D61C(100, v117);
        break;
      case 0x5F:
        v202 = swift_task_alloc();
        v0[229] = v202;
        *v202 = v0;
        v202[1] = sub_22760393C;
        v203 = v0[35];

        result = sub_22763DEF8(100, v203);
        break;
      case 0x60:
        v14 = swift_task_alloc();
        v0[231] = v14;
        *v14 = v0;
        v14[1] = sub_227603A50;
        v15 = v0[35];

        result = sub_22763E7C0(100, v15);
        break;
      case 0x61:
        v210 = swift_task_alloc();
        v0[233] = v210;
        *v210 = v0;
        v210[1] = sub_227603B64;
        v211 = v0[35];

        result = sub_22763F0F8(100, v211);
        break;
      case 0x62:
        v110 = swift_task_alloc();
        v0[235] = v110;
        *v110 = v0;
        v110[1] = sub_227603C78;
        v111 = v0[35];

        result = sub_22763FA3C(100, v111);
        break;
      case 0x63:
        v212 = swift_task_alloc();
        v0[247] = v212;
        *v212 = v0;
        v212[1] = sub_2276042F0;
        v213 = v0[35];

        result = sub_22764311C(100, v213);
        break;
      case 0x64:
        v204 = swift_task_alloc();
        v0[243] = v204;
        *v204 = v0;
        v204[1] = sub_2276040C8;
        v205 = v0[35];

        result = sub_227641EAC(100, v205);
        break;
      case 0x65:
        v198 = swift_task_alloc();
        v0[237] = v198;
        *v198 = v0;
        v198[1] = sub_227603D8C;
        v199 = v0[35];

        result = sub_227640374(100, v199);
        break;
      case 0x66:
        v30 = swift_task_alloc();
        v0[239] = v30;
        *v30 = v0;
        v30[1] = sub_227603EA0;
        v31 = v0[35];

        result = sub_227640CAC(100, v31);
        break;
      case 0x67:
        v194 = swift_task_alloc();
        v0[245] = v194;
        *v194 = v0;
        v194[1] = sub_2276041DC;
        v195 = v0[35];

        result = sub_2276427E4(100, v195);
        break;
      case 0x68:
        v190 = swift_task_alloc();
        v0[241] = v190;
        *v190 = v0;
        v190[1] = sub_227603FB4;
        v191 = v0[35];

        result = sub_227641574(100, v191);
        break;
      case 0x69:
        v16 = swift_task_alloc();
        v0[249] = v16;
        *v16 = v0;
        v16[1] = sub_227604404;
        v17 = v0[35];

        result = sub_2276439E4(100, v17);
        break;
      default:
        v4 = swift_task_alloc();
        v0[39] = v4;
        *v4 = v0;
        v4[1] = sub_2275FA23C;
        v5 = v0[35];

        result = sub_227608B50(100, v5);
        break;
    }
  }

  return result;
}

uint64_t sub_2276007A4()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_2276065E8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276008B8()
{
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2 = sub_227606690;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276009CC()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_227606738;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227600AE0()
{
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v2 = sub_2276067E0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227600BF4()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_227606888;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227600D08()
{
  *(*v1 + 1184) = v0;

  if (v0)
  {
    v2 = sub_227606930;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227600E1C()
{
  *(*v1 + 1200) = v0;

  if (v0)
  {
    v2 = sub_2276069D8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227600F30()
{
  *(*v1 + 1216) = v0;

  if (v0)
  {
    v2 = sub_227606A80;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227601044()
{
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v2 = sub_227606B28;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227601158()
{
  *(*v1 + 1248) = v0;

  if (v0)
  {
    v2 = sub_227606BD0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22760126C()
{
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v2 = sub_227606C78;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227601380()
{
  *(*v1 + 1280) = v0;

  if (v0)
  {
    v2 = sub_227606D20;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227601494()
{
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v2 = sub_227606DC8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276015A8()
{
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v2 = sub_227606E70;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276016BC()
{
  *(*v1 + 1328) = v0;

  if (v0)
  {
    v2 = sub_227606F18;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276017D0()
{
  *(*v1 + 1344) = v0;

  if (v0)
  {
    v2 = sub_227606FC0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276018E4()
{
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v2 = sub_227607068;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276019F8()
{
  *(*v1 + 1376) = v0;

  if (v0)
  {
    v2 = sub_227607110;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227601B0C()
{
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v2 = sub_2276071B8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227601C20()
{
  *(*v1 + 1408) = v0;

  if (v0)
  {
    v2 = sub_227607260;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227601D34()
{
  *(*v1 + 1424) = v0;

  if (v0)
  {
    v2 = sub_227607308;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227601E48()
{
  *(*v1 + 1440) = v0;

  if (v0)
  {
    v2 = sub_2276073B0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227601F5C()
{
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v2 = sub_227607458;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227602070()
{
  *(*v1 + 1472) = v0;

  if (v0)
  {
    v2 = sub_227607500;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227602184()
{
  *(*v1 + 1488) = v0;

  if (v0)
  {
    v2 = sub_2276075A8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227602298()
{
  *(*v1 + 1504) = v0;

  if (v0)
  {
    v2 = sub_227607650;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276023AC()
{
  *(*v1 + 1520) = v0;

  if (v0)
  {
    v2 = sub_2276076F8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276024C0()
{
  *(*v1 + 1536) = v0;

  if (v0)
  {
    v2 = sub_2276077A0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276025D4()
{
  *(*v1 + 1552) = v0;

  if (v0)
  {
    v2 = sub_227607848;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276026E8()
{
  *(*v1 + 1568) = v0;

  if (v0)
  {
    v2 = sub_2276078F0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276027FC()
{
  *(*v1 + 1584) = v0;

  if (v0)
  {
    v2 = sub_227607998;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227602910()
{
  *(*v1 + 1600) = v0;

  if (v0)
  {
    v2 = sub_227607A40;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227602A24()
{
  *(*v1 + 1616) = v0;

  if (v0)
  {
    v2 = sub_227607AE8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227602B38()
{
  *(*v1 + 1632) = v0;

  if (v0)
  {
    v2 = sub_227607B90;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227602C4C()
{
  *(*v1 + 1648) = v0;

  if (v0)
  {
    v2 = sub_227607C38;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227602D60()
{
  *(*v1 + 1664) = v0;

  if (v0)
  {
    v2 = sub_227607CE0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227602E74()
{
  *(*v1 + 1680) = v0;

  if (v0)
  {
    v2 = sub_227607D88;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227602F88()
{
  *(*v1 + 1696) = v0;

  if (v0)
  {
    v2 = sub_227607E30;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22760309C()
{
  *(*v1 + 1712) = v0;

  if (v0)
  {
    v2 = sub_227607ED8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276031B0()
{
  *(*v1 + 1728) = v0;

  if (v0)
  {
    v2 = sub_227607F80;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276032C4()
{
  *(*v1 + 1744) = v0;

  if (v0)
  {
    v2 = sub_227608028;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276033D8()
{
  *(*v1 + 1760) = v0;

  if (v0)
  {
    v2 = sub_2276080D0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276034EC()
{
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v2 = sub_227608178;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227603600()
{
  *(*v1 + 1792) = v0;

  if (v0)
  {
    v2 = sub_227608220;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227603714()
{
  *(*v1 + 1808) = v0;

  if (v0)
  {
    v2 = sub_2276082C8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227603828()
{
  *(*v1 + 1824) = v0;

  if (v0)
  {
    v2 = sub_227608370;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22760393C()
{
  *(*v1 + 1840) = v0;

  if (v0)
  {
    v2 = sub_227608418;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227603A50()
{
  *(*v1 + 1856) = v0;

  if (v0)
  {
    v2 = sub_2276084C0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227603B64()
{
  *(*v1 + 1872) = v0;

  if (v0)
  {
    v2 = sub_227608568;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227603C78()
{
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v2 = sub_227608610;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227603D8C()
{
  *(*v1 + 1904) = v0;

  if (v0)
  {
    v2 = sub_2276086B8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227603EA0()
{
  *(*v1 + 1920) = v0;

  if (v0)
  {
    v2 = sub_227608760;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227603FB4()
{
  *(*v1 + 1936) = v0;

  if (v0)
  {
    v2 = sub_227608808;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276040C8()
{
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v2 = sub_2276088B0;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276041DC()
{
  *(*v1 + 1968) = v0;

  if (v0)
  {
    v2 = sub_227608958;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2276042F0()
{
  *(*v1 + 1984) = v0;

  if (v0)
  {
    v2 = sub_227608A00;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227604404()
{
  *(*v1 + 2000) = v0;

  if (v0)
  {
    v2 = sub_227608AA8;
  }

  else
  {
    v2 = sub_227646EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227604518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276045C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604668()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276047B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604908()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276049B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604A58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604B00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604BA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604C50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604CF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604EF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227604F98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605040()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276050E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605190()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605238()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276052E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605388()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605430()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276054D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605628()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276056D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605778()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276058C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605A18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605AC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605B68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605CB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605D60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605E08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227605F58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276060A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606150()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276061F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276062A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606348()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276063F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276065E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606690()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606738()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276067E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2276069D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606B28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606C78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227606D20()
{

  v1 = *(v0 + 8);

  return v1();
}