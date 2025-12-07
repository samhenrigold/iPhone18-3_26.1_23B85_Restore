uint64_t sub_2225E6488()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2225E6608;
  }

  else
  {
    sub_2225E53B4(*(v2 + 72), *(v2 + 80));
    v3 = sub_2225E65A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225E65A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225E6608()
{
  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  __swift_project_boxed_opaque_existential_1(qword_280DA0A20, qword_280DA0A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_22261AEC0();
  sub_2225E22D4((v0 + 2), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  v5 = v0[1];

  return v5();
}

uint64_t ASDArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(uint64_t a1, _BYTE *a2)
{
  v4 = v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v4;
  *(v3 + 368) = *v4;
  sub_22261AF10();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 345) = *a2;

  return MEMORY[0x2822009F8](sub_2225E6918, 0, 0);
}

uint64_t sub_2225E6918()
{
  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 345);
  v2 = *(v0 + 360);
  sub_2225D6718(qword_280DA0A20, v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261D9A0;
  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 240) = &type metadata for ArcadeEntitlementRefreshCondition;
  *(v0 + 216) = v1;
  sub_22261AEC0();
  sub_2225E22D4(v0 + 216, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  swift_beginAccess();
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  *(v0 + 272) = &type metadata for ArcadeState;
  *(v0 + 248) = v3;
  *(v0 + 256) = v4;
  sub_2225E5394(v3, v4);
  sub_22261AEC0();
  sub_2225E22D4(v0 + 248, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  v5 = *(v2 + 24);
  if (v5)
  {
    v6 = *(*(v0 + 360) + 16);
    v7 = MEMORY[0x277D837D0];
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *(v0 + 296) = 0;
  }

  v8 = *(v0 + 345);
  *(v0 + 280) = v6;
  *(v0 + 288) = v5;
  *(v0 + 304) = v7;

  sub_22261AEE0();
  sub_2225E22D4(v0 + 280, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v9 = v8 >> 6;
  v10 = *(v0 + 345);
  if (v8 >> 6 > 1)
  {
    if (v9 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
      v20 = sub_22261B110();
      if (v10 == 192)
      {
        v38 = *(v0 + 360);
        v39 = v38[7];
        v40 = v38[8];
        __swift_project_boxed_opaque_existential_1(v38 + 4, v39);
        v41 = *(v40 + 16);
        swift_retain_n();
        v41(1, sub_2225E7E88, v20, v39, v40);
      }

      else
      {
        v42 = *(v0 + 360);
        v43 = v42[14];
        v44 = v42[15];
        v56 = sub_2225E7A54(1, v43, v44, v20, v42, *(v0 + 368));
        v46 = v45;
        v47 = v42[7];
        v48 = v42[8];
        __swift_project_boxed_opaque_existential_1(v42 + 4, v47);
        v49 = *(v48 + 8);

        v49(1, 1, v43, v44, v56, v46, v47, v48);
      }

      v19 = MEMORY[0x277D21FB0];
      goto LABEL_17;
    }

    v22 = *(v0 + 360);
    v55 = *(v0 + 368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
    v23 = sub_22261B110();
    v25 = v22[7];
    v24 = v22[8];
    __swift_project_boxed_opaque_existential_1(v22 + 4, v25);
    v26 = *(v24 + 16);

    v27 = v24;
    v19 = MEMORY[0x277D21FB0];
    v26(1, sub_2225E9290, v23, v25, v27);
    v29 = v22[14];
    v28 = v22[15];
    v30 = swift_allocObject();
    *(v30 + 16) = v22;
    *(v30 + 24) = v10 & 1;
    *(v30 + 32) = v29;
    *(v30 + 40) = v28;
    *(v30 + 48) = v55;
    *(v0 + 120) = sub_22261AFD0();
    *(v0 + 128) = v19;
    __swift_allocate_boxed_opaque_existential_0((v0 + 96));

    sub_22261AFC0();
    sub_2225E8E20(qword_280D9EC28, &qword_27D010AB8, &qword_22261D9E8);
    v20 = sub_22261B0E0();

    v21 = (v0 + 96);
  }

  else
  {
    v11 = *(v0 + 360);
    v54 = *(v0 + 368);
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
      v31 = sub_22261B110();
      v33 = v11[7];
      v32 = v11[8];
      __swift_project_boxed_opaque_existential_1(v11 + 4, v33);
      v34 = *(v32 + 16);

      v34(1, sub_2225E9290, v31, v33, v32);
      v36 = v11[14];
      v35 = v11[15];
      v37 = swift_allocObject();
      *(v37 + 16) = v11;
      *(v37 + 24) = v10 & 1;
      *(v37 + 32) = v36;
      *(v37 + 40) = v35;
      *(v37 + 48) = v54;
      *(v0 + 160) = sub_22261AFD0();
      v19 = MEMORY[0x277D21FB0];
      *(v0 + 168) = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_0((v0 + 136));

      sub_22261AFC0();
      sub_2225E8E20(qword_280D9EC28, &qword_27D010AB8, &qword_22261D9E8);
      v20 = sub_22261B0E0();

      v21 = (v0 + 136);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
      v12 = sub_22261B110();
      v14 = v11[7];
      v13 = v11[8];
      __swift_project_boxed_opaque_existential_1(v11 + 4, v14);
      v15 = *(v13 + 16);

      v15(1, sub_2225E9290, v12, v14, v13);
      v17 = v11[14];
      v16 = v11[15];
      v18 = swift_allocObject();
      *(v18 + 16) = v11;
      *(v18 + 24) = v10 & 1;
      *(v18 + 32) = v17;
      *(v18 + 40) = v16;
      *(v18 + 48) = v54;
      *(v0 + 200) = sub_22261AFD0();
      v19 = MEMORY[0x277D21FB0];
      *(v0 + 208) = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_0((v0 + 176));

      sub_22261AFC0();
      sub_2225E8E20(qword_280D9EC28, &qword_27D010AB8, &qword_22261D9E8);
      v20 = sub_22261B0E0();

      v21 = (v0 + 176);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v21);

LABEL_17:
  *(v0 + 400) = v20;
  *(v0 + 80) = sub_22261AFD0();
  *(v0 + 88) = v19;
  __swift_allocate_boxed_opaque_existential_0((v0 + 56));

  sub_22261AFC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC0, &qword_22261D9F0);
  sub_2225E8E20(&qword_280D9EC20, &qword_27D010AC0, &qword_22261D9F0);
  v50 = sub_22261B0E0();
  *(v0 + 408) = v50;

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v51 = swift_task_alloc();
  *(v0 + 416) = v51;
  *v51 = v0;
  v51[1] = sub_2225E72A4;
  v52 = *(v0 + 360);

  return sub_2225E840C(v0 + 336, v50, v52);
}

uint64_t sub_2225E72A4()
{

  return MEMORY[0x2822009F8](sub_2225E73A0, 0, 0);
}

uint64_t sub_2225E73A0()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v1 + 136);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  os_unfair_lock_lock(v4 + 4);
  sub_2225E8DE8(v6);
  v7 = *(v0 + 352);
  os_unfair_lock_unlock(v4 + 4);

  *v7 = v2;
  *(v7 + 8) = v3;

  v8 = *(v0 + 8);

  return v8();
}

BOOL sub_2225E75D0(unint64_t a1)
{
  v37 = sub_22261ADE0();
  v2 = *(v37 - 8);
  v3 = MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v35 = &v31 - v6;
  MEMORY[0x28223BE20](v5);
  v34 = &v31 - v7;
  if (a1)
  {
    v8 = a1;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *(v9 + 16); i; i = sub_22261B5B0())
    {
      v11 = 0;
      v40 = v9;
      v41 = v8 & 0xC000000000000001;
      v32 = (v2 + 8);
      v33 = (v2 + 32);
      v38 = v8;
      v39 = i;
      while (1)
      {
        if (v41)
        {
          v12 = MEMORY[0x223DBB940](v11, v8);
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_23;
          }

          v12 = *(v8 + 8 * v11 + 32);
        }

        v2 = v12;
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v14 = *(v42 + 24);
        if (v14)
        {
          v15 = *(v42 + 16);
          v16 = [v12 familyID];
          v17 = [v16 stringValue];

          v18 = sub_22261B1E0();
          v20 = v19;

          if (v18 == v15 && v14 == v20)
          {

            v8 = v38;
          }

          else
          {
            v22 = sub_22261B620();

            v8 = v38;
            if ((v22 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v23 = [v2 expiryDate];
          if (!v23)
          {
            goto LABEL_26;
          }

          v24 = v23;
          v25 = v35;
          sub_22261ADC0();

          v26 = v34;
          v27 = v37;
          (*v33)(v34, v25, v37);
          v28 = v36;
          sub_22261ADD0();
          LOBYTE(v24) = sub_22261AD90();
          v29 = *v32;
          (*v32)(v28, v27);
          v29(v26, v27);
          if (v24)
          {
            goto LABEL_26;
          }
        }

LABEL_5:

        ++v11;
        v9 = v40;
        if (v13 == v39)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }
  }

LABEL_25:
  v2 = 0;
LABEL_26:

  return v2 != 0;
}

BOOL sub_2225E78EC(unint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 16);
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_23:
    v17 = sub_22261B5B0();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v17 != v6;
    if (v17 == v6)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DBB940](v6, a1);
    }

    else
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_22;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v10 = [v8 stringValue];
    v11 = sub_22261B1E0();
    v13 = v12;

    if (v11 == v4 && v2 == v13)
    {

      return 1;
    }

    v15 = sub_22261B620();

    ++v6;
  }

  while ((v15 & 1) == 0);
  return v7;
}

void (*sub_2225E7A54(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, char a2, char a3, void *a4)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a5;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a6;

  return sub_2225E91DC;
}

void sub_2225E7AFC(uint64_t a1, char a2, char a3, id a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a4)
  {
    sub_22261B0F0();
    return;
  }

  if ((a5 & 1) == 0 || (a2 & 1) == 0 || (a3 & 1) == 0)
  {
    v16 = a4;
    goto LABEL_11;
  }

  type metadata accessor for Code(0);
  v12 = a4;
  sub_2225E9210();
  if ((sub_22261AD00() & 1) == 0)
  {
LABEL_11:
    sub_22261B0D0();

    return;
  }

  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_280DA0A20, qword_280DA0A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AEB0();
  sub_22261AEB0();
  sub_22261B060();

  v13 = a6[7];
  v14 = a6[8];
  __swift_project_boxed_opaque_existential_1(a6 + 4, v13);
  v15 = *(v14 + 8);

  v15(1, 1, a7, a8, sub_2225E9268, a9, v13, v14);
}

void sub_2225E7D88(uint64_t a1, char a2, char a3, id a4)
{
  if (a4)
  {
    v5 = a4;
    sub_22261B0D0();
  }

  else
  {
    sub_22261B0F0();
  }
}

void sub_2225E7E08(uint64_t a1, char a2, id a3)
{
  if (a3)
  {
    v4 = a3;
    sub_22261B0D0();
  }

  else
  {
    sub_22261B0F0();
  }
}

uint64_t sub_2225E7E90(uint64_t *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 9) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
    v11 = sub_22261B110();
    v12 = sub_2225E7A54(a3 & 1, a4, a5, v11, a2, a6);
    v14 = v13;
    v15 = a2[7];
    v16 = a2[8];
    __swift_project_boxed_opaque_existential_1(a2 + 4, v15);
    (*(v16 + 8))(1, 1, a4, a5, v12, v14, v15, v16);

    return v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);

    return sub_22261B0C0();
  }
}

uint64_t sub_2225E7FC8(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 9);
  if (*(a1 + 8) == 1)
  {
    if (!sub_2225E75D0(*a1) && (v11 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a1 + 9))
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);

    return sub_22261B0C0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
  v13 = sub_22261B110();
  v14 = sub_2225E7A54(a3 & 1, a4, a5, v13, a2, a6);
  v16 = v15;
  v17 = a2[7];
  v18 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v17);
  (*(v18 + 8))(1, 1, a4, a5, v14, v16, v17, v18);

  return v13;
}

uint64_t sub_2225E8120(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 9);
  if (*(a1 + 8) == 1)
  {
    if (sub_2225E75D0(*a1) && (v11 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a1 + 9))
  {
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);

    return sub_22261B0C0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB8, &qword_22261D9E8);
  v13 = sub_22261B110();
  v14 = sub_2225E7A54(a3 & 1, a4, a5, v13, a2, a6);
  v16 = v15;
  v17 = a2[7];
  v18 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v17);
  (*(v18 + 8))(1, 1, a4, a5, v14, v16, v17, v18);

  return v13;
}

uint64_t sub_2225E8278(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC0, &qword_22261D9F0);
  v6 = sub_22261B110();
  v7 = a2[7];
  v8 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v3;
  *(v9 + 32) = v4;
  *(v9 + 33) = v5;
  v10 = *(v8 + 24);

  v10(sub_2225E9270, v9, v7, v8);

  return v6;
}

void sub_2225E836C(uint64_t a1, int a2, id a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v6 = a3;
    sub_22261B0D0();
  }

  else
  {

    sub_22261B0F0();
  }
}

uint64_t sub_2225E840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a1;
  v3[27] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  v3[28] = swift_task_alloc();
  sub_22261AF10();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC0, &qword_22261D9F0);
  v5 = sub_2225E8E20(&qword_280D9EC20, &qword_27D010AC0, &qword_22261D9F0);
  v6 = swift_task_alloc();
  v3[32] = v6;
  *v6 = v3;
  v6[1] = sub_2225E8570;

  return MEMORY[0x282180360](v3 + 22, v4, v5);
}

uint64_t sub_2225E8570()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_2225E8AD4;
  }

  else
  {
    *(v2 + 272) = *(v2 + 176);
    v3 = sub_2225E868C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225E868C()
{
  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  sub_2225D6718(qword_280DA0A20, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261D5B0;
  sub_22261AF00();
  sub_22261AEF0();
  if (v1)
  {
    v2 = v0[34];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AD8, &qword_22261DB28);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v0[12] = 0;
    v0[13] = 0;
  }

  v4 = v0[35];
  v0[11] = v2;
  v0[14] = v3;

  sub_22261AEE0();
  sub_2225E22D4((v0 + 11), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261AF00();
  sub_22261AEF0();
  if (v4)
  {
    v5 = v0[35];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AD0, &qword_22261DB20);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v0[16] = 0;
    v0[17] = 0;
  }

  v7 = v0[34];
  v0[15] = v5;
  v0[18] = v6;

  sub_22261AEE0();
  sub_2225E22D4((v0 + 15), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B060();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v8 = sub_2225E75D0(v7);

  if (v8)
  {
    v9 = v0[27];
    v10 = v0[28];

    __swift_project_boxed_opaque_existential_1((v9 + 72), *(v9 + 96));
    sub_22261AF80();
    v11 = sub_22261B0B0();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v10, 1, v11);
    v14 = v0[28];
    if (v13 == 1)
    {
      sub_2225E22D4(v0[28], &qword_27D0108E8, qword_22261DAE0);
      v15 = 0;
    }

    else
    {
      swift_getKeyPath();
      sub_22261B0A0();

      v15 = v0[25];
      (*(v12 + 8))(v14, v11);
    }

    v17 = 2;
  }

  else
  {
    v16 = sub_2225E78EC(v0[35]);

    v17 = 0;
    if (v16)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  v18 = v0[26];
  *v18 = v15;
  *(v18 + 8) = v17;

  v19 = v0[1];

  return v19();
}

uint64_t sub_2225E8AD4()
{
  if (qword_280D9ED08 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  __swift_project_boxed_opaque_existential_1(qword_280DA0A20, qword_280DA0A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  swift_getErrorValue();
  v2 = v0[19];
  v3 = v0[20];
  v0[10] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_22261AEC0();
  sub_2225E22D4((v0 + 7), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  v5 = v0[26];
  *v5 = 1;
  *(v5 + 8) = 3;

  v6 = v0[1];

  return v6();
}

void sub_2225E8D38(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  swift_beginAccess();
  v7 = *(a2 + 144);
  *(a2 + 144) = a3;
  v8 = *(a2 + 152);
  *(a2 + 152) = a4;
  sub_2225E5394(v7, v8);
  sub_2225E5394(a3, a4);
  sub_2225E53B4(v7, v8);
  v9 = v7;
  v10 = v8;
  sub_2225E5C84(&v9);
  sub_2225E53B4(v7, v8);
}

uint64_t sub_2225E8E20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

id sub_2225E8F00@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  *a1 = v4;
  v5 = *(v3 + 152);
  *(a1 + 8) = v5;
  return sub_2225E5394(v4, v5);
}

uint64_t sub_2225E8F60(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225E2AA0;

  return ASDArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)(a1, a2);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_2225E905C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2225E90B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2225E911C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225E2AA0;

  return sub_2225E63B8();
}

unint64_t sub_2225E9210()
{
  result = qword_27D010858;
  if (!qword_27D010858)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010858);
  }

  return result;
}

void sub_2225E9294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_appQuery);

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    [v5 setObserver_];
  }
}

uint64_t sub_2225E933C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2225D83D0(0, &qword_280D9F278, 0x277CEC328);
    v4 = sub_22261B2B0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_2225E9448()
{
  sub_22261B500();
  swift_getObjectType();
  v1 = sub_22261B750();

  v7 = v1;
  MEMORY[0x223DBB650](0x7265755170706128, 0xEB00000000203A79);
  v2 = [*(v0 + OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_appQuery) description];
  v3 = sub_22261B1E0();
  v5 = v4;

  MEMORY[0x223DBB650](v3, v5);

  MEMORY[0x223DBB650](41, 0xE100000000000000);
  return v7;
}

id sub_2225E9668()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 ASDDeviceAppFetcher.init(regulatoryLogger:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

id ASDDeviceAppFetcher.observeQuery(_:on:using:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v12[5] = *a1;
  v13 = v7;
  v8 = sub_2225F1EE4();
  sub_2225D6718(a2, v12);
  v9 = objc_allocWithZone(type metadata accessor for ASDDeviceAppFetcher.QueryObservation());

  v10 = sub_2225EA3E8(v8, v12, a3, a4);

  return v10;
}

uint64_t ASDDeviceAppFetcher.fetchQuery(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  *(v2 + 64) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_2225E9814, 0, 0);
}

uint64_t sub_2225E9814()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AE0, &qword_22261DB48);
  *v5 = v0;
  v5[1] = sub_2225E9930;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x6575516863746566, 0xEE00293A5F287972, sub_2225EA55C, v4, v6);
}

uint64_t sub_2225E9930()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2225E9A68;
  }

  else
  {

    v2 = sub_2225E9A4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225E9A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225E9ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v42 = a2;
  v39 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B70, &qword_22261DBF8);
  v37 = *(v41 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - v6;
  v7 = sub_22261AE30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  sub_22261B440();
  sub_22261AE20();
  sub_22261B400();
  v14 = sub_22261B440();
  v15 = v5;
  sub_22261AE10();

  sub_2225EA67C(a4, aBlock);
  v16 = v44;
  v17 = v13;
  if (v44)
  {
    v18 = v45;
    __swift_project_boxed_opaque_existential_1(aBlock, v44);
    (*(v18 + 3))(v16, v18);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  else
  {
    sub_2225EA6EC(aBlock);
  }

  v19 = v42;
  v47 = v42;
  v48 = v15;
  v35 = sub_2225F1EE4();
  v36 = v17;
  v20 = v8;
  v21 = *(v8 + 16);
  v34 = v7;
  v21(v11, v17, v7);
  v22 = v37;
  v23 = v40;
  v24 = v41;
  (*(v37 + 16))(v40, v39, v41);
  v25 = (*(v20 + 80) + 25) & ~*(v20 + 80);
  v26 = (v9 + *(v22 + 80) + v25) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v19;
  *(v27 + 24) = v15;
  v28 = v11;
  v29 = v34;
  (*(v20 + 32))(v27 + v25, v28, v34);
  (*(v22 + 32))(v27 + v26, v23, v24);
  v45 = sub_2225EA78C;
  v46 = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225E933C;
  v44 = &block_descriptor;
  v30 = _Block_copy(aBlock);
  sub_2225EA89C(v19, v15);

  v31 = v35;
  [v35 executeQueryWithResultHandler_];
  _Block_release(v30);

  return (*(v20 + 8))(v36, v29);
}

uint64_t sub_2225E9F30(void *a1, void *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  sub_22261B3F0();
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  v7 = sub_22261B440();
  sub_22261AE10();

  if (a2)
  {
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B70, &qword_22261DBF8);
    return sub_22261B2D0();
  }

  else
  {
    if (a1)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B70, &qword_22261DBF8);
    return sub_22261B2E0();
  }
}

id sub_2225EA0D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v12[5] = *a1;
  v13 = v7;
  v8 = sub_2225F1EE4();
  sub_2225D6718(a2, v12);
  v9 = objc_allocWithZone(type metadata accessor for ASDDeviceAppFetcher.QueryObservation());

  v10 = sub_2225EA3E8(v8, v12, a3, a4);

  return v10;
}

uint64_t sub_2225EA184(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  *(v2 + 64) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_2225EA1B0, 0, 0);
}

uint64_t sub_2225EA1B0()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AE0, &qword_22261DB48);
  *v5 = v0;
  v5[1] = sub_2225EA2CC;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x6575516863746566, 0xEE00293A5F287972, sub_2225EA8E4, v4, v6);
}

uint64_t sub_2225EA2CC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2225EA8E0;
  }

  else
  {

    v2 = sub_2225EA8EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_2225EA3E8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_appQuery] = a1;
  sub_2225D6718(a2, &v4[OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_taskScheduler]);
  v10 = &v4[OBJC_IVAR____TtCV8AppState19ASDDeviceAppFetcherP33_20A96B0C17EB75E205905EBE25F52A5B16QueryObservation_observer];
  *v10 = a3;
  *(v10 + 1) = a4;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = a1;

  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_2225EA8D4;
  v17[5] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_2225E933C;
  v17[3] = &block_descriptor_16;
  v14 = _Block_copy(v17);
  v15 = v12;

  [v11 executeQueryWithResultHandler_];
  _Block_release(v14);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v15;
}

uint64_t get_enum_tag_for_layout_string_8AppState16RegulatoryLogger_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2225EA584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2225EA5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2225EA67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B80, &unk_22261DC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225EA6EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B80, &unk_22261DC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2225EA754(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2)
  {
    goto LABEL_7;
  }

  if (a2 == 3)
  {
  }
}

uint64_t sub_2225EA78C(void *a1, void *a2)
{
  v5 = *(sub_22261AE30() - 8);
  v6 = (*(v5 + 80) + 25) & ~*(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D010B70, &qword_22261DBF8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  return sub_2225E9F30(a1, a2, v7, v8, v2 + v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2225EA89C(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2 >= 2u)
    {
      return result;
    }
  }

  if (a2 == 2)
  {
  }

  if (a2 == 3)
  {
    return result;
  }

  return result;
}

uint64_t ASDPurchaseHistory.update(in:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2225EA910, 0, 0);
}

uint64_t sub_2225EA910()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2225EAA08;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x6928657461647075, 0xEB00000000293A6ELL, sub_2225EAE4C, v3, v5);
}

uint64_t sub_2225EAA08()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2225EE2C0;
  }

  else
  {

    v2 = sub_2225EE2B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225EAB24(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C10, &qword_22261DCE8);
  v3 = *(v21 - 8);
  v22 = *(v3 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - v4;
  v6 = sub_22261AE30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  sub_22261B440();
  sub_22261AE20();
  sub_22261B400();
  v13 = sub_22261B440();
  sub_22261AE10();

  (*(v7 + 16))(v10, v12, v6);
  v14 = v21;
  (*(v3 + 16))(v5, v23, v21);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + *(v3 + 80) + v15) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v10, v6);
  (*(v3 + 32))(v17 + v16, v5, v14);
  aBlock[4] = sub_2225EE1AC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225EAE54;
  aBlock[3] = &block_descriptor_57;
  v18 = _Block_copy(aBlock);

  [v24 updateWithContext:v25 withCompletionHandler:v18];
  _Block_release(v18);
  return (*(v7 + 8))(v12, v6);
}

void sub_2225EAE54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t ASDPurchaseHistory.update(for:in:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2225EAEE4, 0, 0);
}

uint64_t sub_2225EAEE4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2225EAFE8;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0x6628657461647075, 0xEF293A6E693A726FLL, sub_2225EB430, v4, v6);
}

uint64_t sub_2225EAFE8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2225EA8E0;
  }

  else
  {

    v2 = sub_2225EE2B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225EB104(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C10, &qword_22261DCE8);
  v4 = *(v21[0] - 8);
  v21[1] = *(v4 + 64);
  MEMORY[0x28223BE20](v21[0]);
  v6 = v21 - v5;
  v7 = sub_22261AE30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  sub_22261B440();
  sub_22261AE20();
  sub_22261B400();
  v14 = sub_22261B440();
  sub_22261AE10();

  (*(v8 + 16))(v11, v13, v7);
  v15 = v21[0];
  (*(v4 + 16))(v6, v22, v21[0]);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + *(v4 + 80) + v16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v11, v7);
  (*(v4 + 32))(v18 + v17, v6, v15);
  aBlock[4] = sub_2225EE048;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225EAE54;
  aBlock[3] = &block_descriptor_51;
  v19 = _Block_copy(aBlock);

  [v23 updateForAccountID:v24 withContext:v25 withCompletionHandler:v19];
  _Block_release(v19);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_2225EB43C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22261B3F0();
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  v6 = sub_22261B440();
  sub_22261AE10();

  if (a1)
  {
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C10, &qword_22261DCE8);
    return sub_22261B2D0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C10, &qword_22261DCE8);
    return sub_22261B2E0();
  }
}

uint64_t ASDPurchaseHistory.fetchAllApps(of:compatibleWith:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2225EB55C, 0, 0);
}

uint64_t sub_2225EB55C()
{
  v1 = v0[5];
  v2 = sub_2225EE614(v0[3]);
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  *v4 = v0;
  v4[1] = sub_2225EB67C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x6575516863746566, 0xEE00293A5F287972, sub_2225EDC5C, v3, v5);
}

uint64_t sub_2225EB67C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2225EB800;
  }

  else
  {

    v2 = sub_2225EB798;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225EB798()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2225EB800()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ASDPurchaseHistory.fetchApps(of:withIDs:compatibleWith:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_2225EB890, 0, 0);
}

{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_2225EBBC4, 0, 0);
}

uint64_t sub_2225EB890()
{
  v1 = v0[6];
  v2 = sub_2225EE8B0(v0[4], v0[3]);
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  *v4 = v0;
  v4[1] = sub_2225EB9B0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x6575516863746566, 0xEE00293A5F287972, sub_2225EE2C8, v3, v5);
}

uint64_t sub_2225EB9B0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2225EBB34;
  }

  else
  {

    v2 = sub_2225EBACC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225EBACC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2225EBB34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225EBBC4()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_2225D6718(*(v0 + 80), v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 96) = v4;
  *(v4 + 16) = v2;
  sub_2225D2F1C((v0 + 16), v4 + 24);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = sub_2225EDC64;
  v6[5] = v4;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_2225EBD24;

  return MEMORY[0x282200740](v0 + 56, v5, v5, 0, 0, &unk_22261DC48, v6, v5);
}

uint64_t sub_2225EBD24()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2225EBEA8;
  }

  else
  {

    v2 = sub_2225EBE40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225EBE40()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2225EBEA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ASDPurchaseHistory.fetchAllApps(for:compatibleWith:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_2225EBF38, 0, 0);
}

uint64_t sub_2225EBF38()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  sub_2225D6718(*(v0 + 72), v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  sub_2225D2F1C((v0 + 16), v3 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = sub_2225EDD40;
  v5[5] = v3;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_2225EC08C;

  return MEMORY[0x282200740](v0 + 56, v4, v4, 0, 0, &unk_22261DC58, v5, v4);
}

uint64_t sub_2225EC08C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_2225EC210;
  }

  else
  {

    v2 = sub_2225EC1A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225EC1A8()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2225EC210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225EC27C(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C08, &qword_22261DCE0);
  v3 = *(v21 - 8);
  v22 = *(v3 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - v4;
  v6 = sub_22261AE30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  sub_22261B440();
  sub_22261AE20();
  sub_22261B400();
  v13 = sub_22261B440();
  sub_22261AE10();

  (*(v7 + 16))(v10, v12, v6);
  v14 = v21;
  (*(v3 + 16))(v5, v23, v21);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + *(v3 + 80) + v15) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v10, v6);
  (*(v3 + 32))(v17 + v16, v5, v14);
  aBlock[4] = sub_2225EDF40;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225EC6BC;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  [v24 executeQuery:v25 withResultHandler:v18];
  _Block_release(v18);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_2225EC5A4(void *a1, void *a2, uint64_t a3)
{
  sub_22261B3F0();
  sub_2225D83D0(0, &qword_280D9F268, 0x277D86200);
  v5 = sub_22261B440();
  sub_22261AE10();

  if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C08, &qword_22261DCE0);
    return sub_22261B2D0();
  }

  else
  {
    if (a1)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C08, &qword_22261DCE0);
    return sub_22261B2E0();
  }
}

uint64_t sub_2225EC6BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2225D83D0(0, &qword_280D9EBD8, 0x277CEC410);
    v4 = sub_22261B2B0();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_2225EC760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF8, &qword_22261DCB8);
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225EC878, 0, 0);
}

uint64_t sub_2225EC878()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = **(v0 + 120);
    v3 = (v1 + 32);
    v4 = sub_22261B310();
    v5 = *(v4 - 8);
    v25 = *(v5 + 56);
    v24 = (v5 + 48);
    v23 = (v5 + 8);
    do
    {
      v8 = *(v0 + 184);
      v7 = *(v0 + 192);
      v9 = *(v0 + 152);
      v10 = *v3++;
      v27 = *(v0 + 136);
      v25(v7, 1, 1, v4);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v27;
      *(v11 + 48) = v9;
      *(v11 + 56) = v10;
      sub_2225EDE20(v7, v8);
      LODWORD(v8) = (*v24)(v8, 1, v4);
      v13 = v27;

      v14 = *(v0 + 184);
      if (v8 == 1)
      {
        sub_2225EDE90(*(v0 + 184));
        if (*v12)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_22261B300();
        (*v23)(v14, v4);
        if (*v12)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_22261B2C0();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
      v18 = v16 | v15;
      if (v16 | v15)
      {
        v18 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v16;
      }

      v6 = *(v0 + 192);
      *(v0 + 80) = 1;
      *(v0 + 88) = v18;
      *(v0 + 96) = v26;
      swift_task_create();

      sub_2225EDE90(v6);
      --v2;
    }

    while (v2);
  }

  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C00, &qword_22261DCD8);
  sub_22261B350();
  *(v0 + 208) = MEMORY[0x277D84F90];
  v19 = sub_2225EDEF8(&qword_280D9EBF0, &qword_27D010BF8, &qword_22261DCB8, MEMORY[0x277D85838]);
  v20 = swift_task_alloc();
  *(v0 + 216) = v20;
  *v20 = v0;
  v20[1] = sub_2225ECC08;
  v21 = *(v0 + 160);

  return MEMORY[0x282200308](v0 + 104, v21, v19);
}

uint64_t sub_2225ECC08()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    (*(v2[21] + 8))(v2[22], v2[20]);

    v3 = sub_2225ED10C;
  }

  else
  {
    v3 = sub_2225ECD40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2225ECD40()
{
  v2 = v0 + 104;
  v1 = *(v0 + 104);
  if (!v1)
  {
    v15 = *(v0 + 208);
    v16 = *(v0 + 112);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    *v16 = v15;

    v17 = *(v0 + 8);

    return v17();
  }

  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    v4 = sub_22261B5B0();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *(v0 + 208);
  v6 = v5 >> 62;
  if (v5 >> 62)
  {
    v30 = sub_22261B5B0();
    v8 = v30 + v4;
    if (!__OFADD__(v30, v4))
    {
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = v7 + v4;
  if (__OFADD__(v7, v4))
  {
    goto LABEL_37;
  }

LABEL_6:
  LODWORD(v9) = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v9;
  }

  if (v9 != 1 || (v12 = v5 & 0xFFFFFFFFFFFFFF8, v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1, v13 < v8))
  {
    if (v6)
    {
      goto LABEL_39;
    }

    goto LABEL_16;
  }

  v14 = *(v0 + 208);
  while (1)
  {
    v19 = *(v12 + 16);
    if (v3)
    {
      break;
    }

    v20 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_23;
    }

LABEL_19:
    if (v13 - v19 >= v4)
    {
      v31 = v14;
      v32 = v4;
      v13 = v12 + 8 * v19 + 32;
      v33 = v0 + 104;
      if (v3)
      {
        goto LABEL_25;
      }

      sub_2225D83D0(0, &qword_280D9EBD8, 0x277CEC410);
      swift_arrayInitWithCopy();
LABEL_28:

      v2 = v33;
      v14 = v31;
      if (v32 > 0)
      {
        v25 = *(v12 + 16);
        v26 = __OFADD__(v25, v32);
        v27 = v25 + v32;
        if (v26)
        {
          __break(1u);
          goto LABEL_41;
        }

        *(v12 + 16) = v27;
      }

      goto LABEL_31;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    sub_22261B5B0();
LABEL_16:
    v9 = sub_22261B520();
    v14 = v9;
    v12 = v9 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  v9 = sub_22261B5B0();
  v20 = v9;
  if (v9)
  {
    goto LABEL_19;
  }

LABEL_23:

  if (v4 > 0)
  {
    __break(1u);
LABEL_25:
    if (v20 >= 1)
    {
      sub_2225EDEF8(&qword_280D9EBF8, &qword_27D010BF0, &qword_22261DC28, MEMORY[0x277D83988]);
      for (i = 0; i != v20; ++i)
      {
        v22 = sub_222606430((v0 + 48), i, v1);
        v24 = *v23;
        (v22)(v0 + 48, 0);
        *(v13 + 8 * i) = v24;
      }

      goto LABEL_28;
    }

LABEL_41:
    __break(1u);
    return MEMORY[0x282200308](v9, v10, v11);
  }

LABEL_31:
  *(v0 + 208) = v14;
  v28 = sub_2225EDEF8(&qword_280D9EBF0, &qword_27D010BF8, &qword_22261DCB8, MEMORY[0x277D85838]);
  v29 = swift_task_alloc();
  *(v0 + 216) = v29;
  *v29 = v0;
  v29[1] = sub_2225ECC08;
  v10 = *(v0 + 160);
  v9 = v2;
  v11 = v28;

  return MEMORY[0x282200308](v9, v10, v11);
}

uint64_t sub_2225ED10C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225ED184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return MEMORY[0x2822009F8](sub_2225ED1AC, 0, 0);
}

uint64_t sub_2225ED1AC()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 40))(*(v0 + 56));
  *(v0 + 64) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010BF0, &qword_22261DC28);
  *v4 = v0;
  v4[1] = sub_2225ED2D0;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x6575516863746566, 0xEE00293A5F287972, sub_2225EE2C8, v3, v5);
}

uint64_t sub_2225ED2D0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2225ED45C;
  }

  else
  {

    v2 = sub_2225ED3EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225ED3EC()
{
  v1 = *(v0 + 24);

  *v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2225ED45C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225ED4C8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2225ED4EC, 0, 0);
}

uint64_t sub_2225ED4EC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2225ED5E4;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x6928657461647075, 0xEB00000000293A6ELL, sub_2225EE2CC, v3, v5);
}

uint64_t sub_2225ED5E4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2225ED700;
  }

  else
  {

    v2 = sub_2225DD7E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225ED700()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2225ED764(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_2225ED78C, 0, 0);
}

uint64_t sub_2225ED78C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2225ED890;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0x6628657461647075, 0xEF293A6E693A726FLL, sub_2225EE2B0, v4, v6);
}

uint64_t sub_2225ED890()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2225E9A68;
  }

  else
  {

    v2 = sub_2225EE2B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225ED9AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225D767C;

  return ASDPurchaseHistory.fetchAllApps(of:compatibleWith:)(a1, a2);
}

uint64_t sub_2225EDA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225EE2C4;

  return ASDPurchaseHistory.fetchApps(of:withIDs:compatibleWith:)(a1, a2, a3);
}

uint64_t sub_2225EDB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225EE2C4;

  return ASDPurchaseHistory.fetchApps(of:withIDs:compatibleWith:)(a1, a2, a3);
}

uint64_t sub_2225EDBB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225EE2C4;

  return ASDPurchaseHistory.fetchAllApps(for:compatibleWith:)(a1, a2);
}

uint64_t sub_2225EDC78(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2225E2E18;

  return sub_2225EC760(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_2225EDD4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2225E2AA0;

  return sub_2225ED184(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2225EDE20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225EDE90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2225EDEF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2225EDF40(void *a1, void *a2)
{
  v5 = *(sub_22261AE30() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C08, &qword_22261DCE0);

  return sub_2225EC5A4(a1, a2, v2 + v6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_44Tm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_22261AE30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return MEMORY[0x2821FE8E8](v2, v13 + v14, v15 | 7);
}

uint64_t sub_2225EE1BC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_22261AE30() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C10, &qword_22261DCE8) - 8);
  return sub_2225EB43C(a1, v3 + v8, v3 + ((v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

id sub_2225EE2D0(void *a1)
{
  v1 = a1;
  v2 = [v1 redownloadParams];
  sub_22261B1E0();

  sub_2225EE3F8();
  sub_22261B470();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C18, &unk_22261DCF0);
  sub_2225EE44C();
  sub_22261B1C0();

  v3 = sub_22261B1D0();

  return v3;
}

unint64_t sub_2225EE3F8()
{
  result = qword_280D9EC08;
  if (!qword_280D9EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9EC08);
  }

  return result;
}

unint64_t sub_2225EE44C()
{
  result = qword_280D9EBB0;
  if (!qword_280D9EBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D010C18, &unk_22261DCF0);
    sub_2225DC9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9EBB0);
  }

  return result;
}

void *sub_2225EE4D0(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CEC418]) init];
  v5 = v4;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  [v4 setAccountID_];
  [v5 setIsHidden_];
  [v5 setIsFirstParty_];
  [v5 setIsPreorder_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C20, qword_22261DD10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22261DD00;
  *(v7 + 32) = [objc_allocWithZone(MEMORY[0x277CEC420]) initWithName:*MEMORY[0x277CEC4E0] ascending:0];
  sub_2225D83D0(0, &qword_280D9EBB8, 0x277CEC420);
  v8 = sub_22261B2A0();

  [v5 setSortOptions_];

  return v5;
}

void *sub_2225EE614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  sub_2225EEA28(a1, v12 - v3);
  v5 = sub_22261B0B0();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2225D8124(v4);
LABEL_5:
    v9 = 0;
    v10 = 1;
    return sub_2225EE4D0(v9, v10);
  }

  swift_getKeyPath();
  sub_22261B0A0();

  v7 = v12[1];
  (*(v6 + 8))(v4, v5);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v7 longLongValue];

  v9 = v8;
  v10 = 0;
  return sub_2225EE4D0(v9, v10);
}

void *sub_2225EE784(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_2225EE4D0(a2, a3 & 1);
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_22261B570();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
      sub_22261B550();
      sub_22261B580();
      sub_22261B590();
      sub_22261B560();
      --v5;
    }

    while (v5);
  }

  sub_2225D83D0(0, &qword_280D9F270, 0x277CCABB0);
  v8 = sub_22261B2A0();

  [v4 setStoreIDs_];

  return v4;
}

void *sub_2225EE8B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  sub_2225EEA28(a2, v14 - v5);
  v7 = sub_22261B0B0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2225D8124(v6);
LABEL_5:
    v11 = 0;
    v12 = 1;
    return sub_2225EE784(a1, v11, v12);
  }

  swift_getKeyPath();
  sub_22261B0A0();

  v9 = v14[1];
  (*(v8 + 8))(v6, v7);
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [v9 longLongValue];

  v11 = v10;
  v12 = 0;
  return sub_2225EE784(a1, v11, v12);
}

uint64_t sub_2225EEA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2225EEA98(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C50, &qword_22261DDB8);
    return sub_22261B2D0();
  }

  if (!a1)
  {
    type metadata accessor for ASDError(0);
    sub_2225F016C(MEMORY[0x277D84F90]);
    sub_2225F029C();
    sub_22261AD70();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C50, &qword_22261DDB8);
    return sub_22261B2D0();
  }

  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C50, &qword_22261DDB8);
  return sub_22261B2E0();
}

uint64_t sub_2225EEB94(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C38, &qword_22261DDA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_22261AE00();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  if (a2)
  {
    v17 = a2;
    v14 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C30, &qword_22261DD98);
  }

  else
  {
    sub_2225DE5AC(a1, v6, &qword_27D010C38, &qword_22261DDA0);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v13, v6, v7);
      (*(v8 + 16))(v11, v13, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C30, &qword_22261DD98);
      sub_22261B2E0();
      return (*(v8 + 8))(v13, v7);
    }

    sub_2225EFFD4(v6);
    type metadata accessor for ASDError(0);
    v16 = 901;
    sub_2225F016C(MEMORY[0x277D84F90]);
    sub_2225F029C();
    sub_22261AD70();
    v16 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C30, &qword_22261DD98);
  }

  return sub_22261B2D0();
}

Swift::Bool __swiftcall ASDPurchaseManager.isDeletableSystemApp(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = MEMORY[0x223DBBBF0]();
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v5 = sub_2225EFE00(countAndFlagsBits, object);
  LOBYTE(object) = v5 != 0;

  objc_autoreleasePoolPop(v3);
  return object;
}

uint64_t ASDPurchaseManager.start(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2225EEF28, 0, 0);
}

uint64_t sub_2225EEF28()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_2225EFED8();
  *v3 = v0;
  v3[1] = sub_2225EF028;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x3A5F287472617473, 0xE900000000000029, sub_2225EFECC, v2, v4);
}

uint64_t sub_2225EF028()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2225EF208;
  }

  else
  {

    v2 = sub_2225EF144;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2225EF144()
{
  v1 = *(v0 + 16);
  if ([v1 error])
  {
    swift_willThrow();

    v2 = *(v0 + 8);
    v3 = 0;
  }

  else
  {
    v4 = [v1 success];

    v2 = *(v0 + 8);
    v3 = v4;
  }

  return v2(v3);
}

uint64_t sub_2225EF208()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_2225EF270(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C50, &qword_22261DDB8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2225F0388;
  *(v12 + 24) = v11;
  aBlock[4] = sub_2225F0414;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225EF450;
  aBlock[3] = &block_descriptor_17;
  v13 = _Block_copy(aBlock);

  [a2 startPurchase:a3 withResultHandler:v13];
  _Block_release(v13);
}

void sub_2225EF450(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t ASDPurchaseManager.install(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_2225EF550, 0, 0);
}

uint64_t sub_2225EF550()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_22261AE00();
  *v3 = v0;
  v3[1] = sub_2225EF654;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0x286C6C6174736E69, 0xEB00000000293A5FLL, sub_2225EFF24, v2, v4);
}

uint64_t sub_2225EF654()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2225EF790, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2225EF790()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2225EF7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C30, &qword_22261DD98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - v7;
  v9 = sub_22261B1D0();
  NSClassFromString(v9);

  v10 = objc_opt_self();
  (*(v6 + 16))(v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v8, v5);
  aBlock[4] = sub_2225EFF30;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2225EF9E0;
  aBlock[3] = &block_descriptor_1;
  v13 = _Block_copy(aBlock);

  [v10 installApp:a3 withCompletionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_2225EF9E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C38, &qword_22261DDA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_22261ADF0();
    v10 = sub_22261AE00();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_22261AE00();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_2225EFFD4(v8);
}

BOOL sub_2225EFB24(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x223DBBBF0]();
  v5 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v6 = sub_2225EFE00(a1, a2);
  v7 = v6 != 0;

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t sub_2225EFBB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225EFC4C;

  return ASDPurchaseManager.start(_:)(a1);
}

uint64_t sub_2225EFC4C(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_2225EFD54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225E2AA0;

  return ASDPurchaseManager.install(_:)(a1, a2);
}

id sub_2225EFE00(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22261B1D0();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifierOfSystemPlaceholder:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_22261AD80();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_2225EFED8()
{
  result = qword_27D010C28;
  if (!qword_27D010C28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D010C28);
  }

  return result;
}

uint64_t sub_2225EFF30(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C30, &qword_22261DD98);

  return sub_2225EEB94(a1, a2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2225EFFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C38, &qword_22261DDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2225F003C(uint64_t a1, uint64_t a2)
{
  sub_22261B700();
  sub_22261B210();
  v4 = sub_22261B740();

  return sub_2225F00B4(a1, a2, v4);
}

unint64_t sub_2225F00B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22261B620())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2225F016C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C40, &qword_22261DDA8);
    v3 = sub_22261B5E0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2225DE5AC(v4, &v13, &qword_27D010C48, &qword_22261DDB0);
      v5 = v13;
      v6 = v14;
      result = sub_2225F003C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2225F02F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2225F029C()
{
  result = qword_27D0108B0;
  if (!qword_27D0108B0)
  {
    type metadata accessor for ASDError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0108B0);
  }

  return result;
}

_OWORD *sub_2225F02F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2225F0388(void **a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C50, &qword_22261DDB8);
  v4 = *a1;

  return sub_2225EEA98(v4, a2);
}

uint64_t sub_2225F0414(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2225F0454(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  if (a4)
  {
    v12 = sub_22261B1D0();
  }

  else
  {
    v12 = 0;
  }

  v15[4] = a5;
  v15[5] = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2225F0550;
  v15[3] = &block_descriptor_6;
  v13 = _Block_copy(v15);

  [v11 getSubscriptionEntitlementsForSegment:a1 ignoreCaches:a2 & 1 requestingBundleId:v12 withCacheInfoResultHandler:v13];
  _Block_release(v13);
}

uint64_t sub_2225F0550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_2225D83D0(0, &qword_280D9EBC8, 0x277CEC4A0);
    v8 = sub_22261B2B0();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);
}

uint64_t sub_2225F0610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2225F06CC;
  v8[3] = &block_descriptor_3;
  v6 = _Block_copy(v8);

  [v5 getCachedSubscriptionEntitlementsForSegment:a1 withResultHandler:v6];
  _Block_release(v6);
}

uint64_t sub_2225F06E0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2225F0794;
  v6[3] = &block_descriptor_2;
  v4 = _Block_copy(v6);

  [v3 getAppStoreConsumedIntroOfferFamilyIdsWithResultHandler_];
  _Block_release(v4);
}

uint64_t sub_2225F07A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_2225D83D0(0, a5, a6);
    v8 = sub_22261B2B0();
  }

  v10 = a4;
  v9(v8, a3, a4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2225F0888(uint64_t a1)
{
  result = sub_22261B450();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_2225F092C()
{
  v1 = *(*v0 + 12);
  v2 = sub_22261B450();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2225F09C0()
{
  sub_2225F092C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t static AvailableUpdate.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_22261B620();
  }
}

uint64_t AvailableUpdate.hash(into:)(uint64_t a1)
{
  MEMORY[0x223DBBB60](*v1);

  return sub_22261B210();
}

uint64_t AvailableUpdate.hashValue.getter()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  sub_22261B210();
  return sub_22261B740();
}

uint64_t sub_2225F0B60()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  sub_22261B210();
  return sub_22261B740();
}

uint64_t sub_2225F0BC4(uint64_t a1)
{
  MEMORY[0x223DBBB60](*v1);

  return sub_22261B210();
}

uint64_t sub_2225F0C18()
{
  v1 = *v0;
  sub_22261B700();
  MEMORY[0x223DBBB60](v1);
  sub_22261B210();
  return sub_22261B740();
}

unint64_t sub_2225F0C7C()
{
  result = qword_27D010C58;
  if (!qword_27D010C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D010C58);
  }

  return result;
}

uint64_t sub_2225F0CD0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return sub_22261B620();
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2225F0D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2225F0D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_2225F0DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_2225D8D00(a2, &v16 - v11);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_2225DB76C(v12);
  if (a2 != 6)
  {
    return 0;
  }

  sub_2225D8D00(a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = 1;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload || (sub_2225D8D00(v10, v7), *v7 >= 2u))
    {
      v14 = 0;
    }
  }

  sub_2225DB76C(v10);
  return v14;
}

uint64_t DefaultAppStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  swift_allocObject();
  *(v0 + 16) = sub_22261B190();
  return v0;
}

uint64_t DefaultAppStateDataSource.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  swift_allocObject();
  *(v0 + 16) = sub_22261B190();
  return v0;
}

uint64_t DefaultAppStateDataSource.state(forAppWith:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for State(0);
  swift_storeEnumTagMultiPayload();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t DefaultAppStateDataSource.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2225F1108@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for State(0);
  swift_storeEnumTagMultiPayload();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

double sub_2225F11D8@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_280D9F4B8 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v4 = qword_280DA0AC0;
  if (*(qword_280DA0AC0 + 16) && (v5 = sub_2225F17A8(v3), (v6 & 1) != 0))
  {
    sub_2225D6718(*(v4 + 56) + 40 * v5, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2225F1290()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C60, &unk_22261E048);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22261D5B0;
  *(inited + 32) = 0;
  *(inited + 64) = &type metadata for StoreAppRuleset;
  *(inited + 72) = &off_2835C22E8;
  *(inited + 80) = 1;
  *(inited + 112) = &type metadata for BetaAppRuleset;
  *(inited + 120) = &off_2835C22D8;
  v1 = sub_2225DDF60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A20, &qword_22261D370);
  result = swift_arrayDestroy();
  qword_280DA0AC8 = v1;
  return result;
}

double sub_2225F135C@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  if (*(v4 + 16) && (v5 = sub_2225F173C(*a1), (v6 & 1) != 0))
  {
    sub_2225D6718(*(v4 + 56) + 40 * v5, v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    State.key.getter(&v10);
    (*(v8 + 8))(&v10, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2225F1424()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2225F14A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C68, &qword_22261E098);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22261DFF0;
  *(inited + 32) = 0;
  *(inited + 64) = &_s7BuyableVN;
  *(inited + 72) = &off_2835C2218;
  *(inited + 80) = 1;
  *(inited + 112) = &_s7WaitingVN;
  *(inited + 120) = &off_2835C2DD8;
  *(inited + 128) = 5;
  *(inited + 160) = &_s10InstallingVN;
  *(inited + 168) = &off_2835C26D8;
  *(inited + 176) = 6;
  *(inited + 208) = &_s9InstalledVN;
  *(inited + 216) = &off_2835C26A8;
  *(inited + 224) = 7;
  *(inited + 256) = &_s15RemoteInstalledVN;
  *(inited + 264) = &off_2835C1488;
  *(inited + 272) = 2;
  *(inited + 304) = &_s9PurchasedVN;
  *(inited + 312) = &off_2835C2778;
  *(inited + 320) = 3;
  *(inited + 352) = &_s9UpdatableVN;
  *(inited + 360) = &off_2835C2DA8;
  *(inited + 368) = 4;
  *(inited + 400) = &_s12DownloadableVN;
  *(inited + 408) = &off_2835C2490;
  *(inited + 416) = 8;
  *(inited + 448) = &_s8OpenableVN;
  *(inited + 456) = &off_2835C2748;
  *(inited + 464) = 9;
  *(inited + 496) = &_s7UnknownVN;
  *(inited + 504) = &off_2835C2D78;
  v1 = sub_2225DDE34(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A58, qword_22261E0A0);
  result = swift_arrayDestroy();
  qword_280DA0AC0 = v1;
  return result;
}

unint64_t sub_2225F1650(uint64_t a1)
{
  sub_22261B700();
  MEMORY[0x223DBBB60](a1);
  v2 = sub_22261B740();

  return sub_2225F1814(a1, v2);
}

unint64_t sub_2225F16BC(uint64_t a1, char a2)
{
  sub_22261B700();
  MEMORY[0x223DBBB60](a1);
  MEMORY[0x223DBBB40](a2 & 1);
  v4 = sub_22261B740();

  return sub_2225F1880(a1, a2 & 1, v4);
}

unint64_t sub_2225F173C(char a1)
{
  sub_22261B700();
  MEMORY[0x223DBBB40](a1 & 1);
  v2 = sub_22261B740();

  return sub_2225F1904(a1 & 1, v2);
}

unint64_t sub_2225F17A8(uint64_t a1)
{
  v1 = a1;
  sub_22261B700();
  sub_2225DFBC8(v4, v1);
  v2 = sub_22261B740();

  return sub_2225F1974(v1, v2);
}

unint64_t sub_2225F1814(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2225F1880(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      if (!((*(*(v3 + 48) + 16 * result) != a1) | (*(*(v3 + 48) + 16 * result + 8) ^ a2) & 1))
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2225F1904(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2225F1974(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v25 + 48) + v4);
      v26 = v4;
      if (v6 > 4)
      {
        if (*(*(v25 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v10 = 0x696C6C6174736E69;
            v11 = 0xEA0000000000676ELL;
          }

          else
          {
            v10 = 0x656C6C6174736E69;
            v11 = 0xE900000000000064;
          }
        }

        else if (v6 == 7)
        {
          v10 = 0x6E4965746F6D6572;
          v11 = 0xEF64656C6C617473;
        }

        else if (v6 == 8)
        {
          v11 = 0xE800000000000000;
          v10 = 0x656C62616E65706FLL;
        }

        else
        {
          v11 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x6C62617461647075;
        }

        else
        {
          v7 = 0x64616F6C6E776F64;
        }

        if (v6 == 3)
        {
          v8 = 0xE900000000000065;
        }

        else
        {
          v8 = 0xEC000000656C6261;
        }

        if (v6 == 2)
        {
          v7 = 0x6573616863727570;
          v8 = 0xE900000000000064;
        }

        v9 = *(*(v25 + 48) + v4) ? 0x676E6974696177 : 0x656C6261797562;
        v10 = v6 <= 1 ? v9 : v7;
        v11 = v6 <= 1 ? 0xE700000000000000 : v8;
      }

      v12 = 0x656C62616E65706FLL;
      if (v5 != 8)
      {
        v12 = 0x6E776F6E6B6E75;
      }

      v13 = 0xE800000000000000;
      if (v5 != 8)
      {
        v13 = 0xE700000000000000;
      }

      if (v5 == 7)
      {
        v12 = 0x6E4965746F6D6572;
        v13 = 0xEF64656C6C617473;
      }

      v14 = 0x696C6C6174736E69;
      if (v5 != 5)
      {
        v14 = 0x656C6C6174736E69;
      }

      v15 = 0xEA0000000000676ELL;
      if (v5 != 5)
      {
        v15 = 0xE900000000000064;
      }

      if (v5 <= 6)
      {
        v12 = v14;
        v13 = v15;
      }

      if (v5 == 3)
      {
        v16 = 0x6C62617461647075;
      }

      else
      {
        v16 = 0x64616F6C6E776F64;
      }

      if (v5 == 3)
      {
        v17 = 0xE900000000000065;
      }

      else
      {
        v17 = 0xEC000000656C6261;
      }

      if (v5 == 2)
      {
        v16 = 0x6573616863727570;
        v17 = 0xE900000000000064;
      }

      if (v5)
      {
        v18 = 0x676E6974696177;
      }

      else
      {
        v18 = 0x656C6261797562;
      }

      if (v5 <= 1)
      {
        v16 = v18;
        v17 = 0xE700000000000000;
      }

      v19 = v5 <= 4 ? v16 : v12;
      v20 = v5 <= 4 ? v17 : v13;
      if (v10 == v19 && v11 == v20)
      {
        break;
      }

      v21 = sub_22261B620();

      if (v21)
      {
        return v26;
      }

      v4 = (v26 + 1) & v23;
      if (((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v26;
  }

  return v4;
}

uint64_t dispatch thunk of DeviceAppFetcher.fetchQuery(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2225D3D18;

  return v9(a1, a2, a3);
}

uint64_t get_enum_tag_for_layout_string_8AppState06DeviceA5QueryO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_2225F1E30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2225F1E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2225F1EBC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t *sub_2225F1EE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v43 = *v0;
  if (v2 <= 1)
  {
    if (!*(v0 + 8))
    {
      v4 = v1[2];
      if (v4)
      {
        v44 = MEMORY[0x277D84F90];
        sub_22261B570();
        v5 = v43 + 56;
        v6 = sub_22261B4B0();
        result = v43;
        v7 = 0;
        while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(result + 32))
        {
          v9 = v6 >> 6;
          if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
          {
            goto LABEL_56;
          }

          v10 = *(result + 9);
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
          sub_22261B550();
          sub_22261B580();
          sub_22261B590();
          sub_22261B560();
          result = v43;
          v8 = 1 << *(v43 + 32);
          if (v6 >= v8)
          {
            goto LABEL_58;
          }

          v11 = *(v5 + 8 * v9);
          if ((v11 & (1 << v6)) == 0)
          {
            goto LABEL_60;
          }

          if (v10 != *(v43 + 36))
          {
            goto LABEL_62;
          }

          v12 = v11 & (-2 << (v6 & 0x3F));
          if (v12)
          {
            v8 = __clz(__rbit64(v12)) | v6 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v13 = v9 << 6;
            v14 = v9 + 1;
            v15 = (v43 + 64 + 8 * v9);
            while (v14 < (v8 + 63) >> 6)
            {
              v17 = *v15++;
              v16 = v17;
              v13 += 64;
              ++v14;
              if (v17)
              {
                sub_2225F24E0(v6, v10, 0);
                result = v43;
                v8 = __clz(__rbit64(v16)) + v13;
                goto LABEL_11;
              }
            }

            sub_2225F24E0(v6, v10, 0);
            result = v43;
          }

LABEL_11:
          ++v7;
          v6 = v8;
          if (v7 == v4)
          {
            goto LABEL_46;
          }
        }

        goto LABEL_54;
      }

LABEL_46:
      sub_2225E53D4();
      v38 = sub_22261B2A0();

      v39 = [objc_opt_self() queryForStoreItemIDs_];
LABEL_47:
      v40 = v39;

      return v40;
    }

    v34 = v1[2];
    if (!v34 || (v35 = sub_2225D7D54(v1[2], 0), v36 = sub_2226064B8(&v44, v35 + 4, v34, v43), v37 = v44, sub_2225EA89C(v43, 1u), sub_2225F24EC(v37), v36 == v34))
    {
      v41 = sub_22261B2A0();

      v42 = [objc_opt_self() queryForBundleIDs_];

      return v42;
    }

    __break(1u);
LABEL_45:
    sub_2225E53D4();
    v38 = sub_22261B2A0();

    v39 = [objc_opt_self() queryForBetaAppsWithStoreItemIDs_];
    goto LABEL_47;
  }

  if (v2 != 2)
  {
    if (v2 == 3)
    {

      return v1;
    }

    else
    {
      v32 = objc_opt_self();
      if (v43)
      {
        v33 = [v32 queryForBetaApps];
      }

      else
      {
        v33 = [v32 queryForStoreApps];
      }

      return v33;
    }
  }

  v18 = v1[2];
  if (!v18)
  {
    goto LABEL_45;
  }

  v44 = MEMORY[0x277D84F90];
  sub_22261B570();
  v19 = v43 + 56;
  v20 = sub_22261B4B0();
  result = v43;
  v21 = 0;
  while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(result + 32))
  {
    v23 = v20 >> 6;
    if ((*(v19 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {
      goto LABEL_55;
    }

    v24 = *(result + 9);
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    sub_22261B550();
    sub_22261B580();
    sub_22261B590();
    sub_22261B560();
    result = v43;
    v22 = 1 << *(v43 + 32);
    if (v20 >= v22)
    {
      goto LABEL_57;
    }

    v25 = *(v19 + 8 * v23);
    if ((v25 & (1 << v20)) == 0)
    {
      goto LABEL_59;
    }

    if (v24 != *(v43 + 36))
    {
      goto LABEL_61;
    }

    v26 = v25 & (-2 << (v20 & 0x3F));
    if (v26)
    {
      v22 = __clz(__rbit64(v26)) | v20 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v23 << 6;
      v28 = v23 + 1;
      v29 = (v43 + 64 + 8 * v23);
      while (v28 < (v22 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          sub_2225F24E0(v20, v24, 0);
          result = v43;
          v22 = __clz(__rbit64(v30)) + v27;
          goto LABEL_27;
        }
      }

      sub_2225F24E0(v20, v24, 0);
      result = v43;
    }

LABEL_27:
    ++v21;
    v20 = v22;
    if (v21 == v18)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
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
  return result;
}

uint64_t sub_2225F24E0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a4;
  sub_2225D6718(a2, v28);
  sub_2225DE5AC(a3, v27, &qword_27D010C70, &unk_22261E1F0);
  if (qword_280D9F2C8 != -1)
  {
    swift_once();
  }

  v8 = sub_22261B150();
  v9 = __swift_project_value_buffer(v8, qword_280DA0A90);
  v26[3] = v8;
  v26[4] = MEMORY[0x277D22508];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v9, v8);
  v11 = swift_allocObject();
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  *(v11 + 56) = v5;
  *(v11 + 64) = v6;
  sub_2225D6718(v28, v11 + 72);
  sub_2225DE5AC(v27, v11 + 112, &qword_27D010C70, &unk_22261E1F0);
  *(v11 + 152) = v7;
  v12 = MEMORY[0x277D84F90];
  *(v11 + 160) = sub_2225DD970(MEMORY[0x277D84F90]);
  sub_2225EA89C(v5, v6);
  *(v11 + 168) = sub_2225DE080(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109E8, &unk_22261D290);
  swift_allocObject();
  *(v11 + 200) = sub_22261B190();
  sub_2225D6718(v26, v11 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0109F0, &qword_22261E200);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v11 + 192) = v13;
  v15 = v29;
  v14 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v24 = v5;
  v25 = v6;
  v23[3] = sub_22261AFD0();
  v23[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v23);
  sub_22261AFC0();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v14 + 8);

  v18 = v17(&v24, v23, sub_2225F766C, v16, v15, v14);
  v20 = v19;

  sub_2225E22D4(v27, &qword_27D010C70, &unk_22261E1F0);
  __swift_destroy_boxed_opaque_existential_1(v26);

  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_2225EA754(v5, v6);
  *(v11 + 176) = v18;
  *(v11 + 184) = v20;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_2225E22D4(a3, &qword_27D010C70, &unk_22261E1F0);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v11;
}

uint64_t sub_2225F280C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2225F286C(a1);
  }

  return result;
}

uint64_t sub_2225F286C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22261AF10();
  MEMORY[0x28223BE20](v4 - 8);
  v27 = a1;
  v28 = sub_2225F481C;
  v29 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C88, &unk_22261E330);
  sub_2225F776C();
  v11 = sub_22261B1C0();
  v10 = v5;

  v6 = v1[5];
  v13 = v1[6];
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v30 = v3;
  v27 = v1;

  sub_22261AEC0();
  sub_2225E22D4(&v27, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v30 = MEMORY[0x277D837D0];
  v27 = v11;
  v28 = v10;
  sub_22261AEC0();
  sub_2225E22D4(&v27, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v7 = v1[24];
  v24 = a1;
  v25 = v1;
  v26 = v3;
  v21 = sub_2225F7854;
  v22 = &v23;
  os_unfair_lock_lock(v7 + 4);
  sub_2225F793C(&v27);
  os_unfair_lock_unlock(v7 + 4);
  v17 = a1;
  v18 = v1;
  v19 = v27;
  v20 = v3;
  v14 = sub_2225F790C;
  v15 = &v16;
  os_unfair_lock_lock(v7 + 4);
  sub_2225F793C(&v27);
  os_unfair_lock_unlock(v7 + 4);
  v8 = v27;

  v27 = v8;
  sub_22261B180();
}

uint64_t DeviceAppStateDataSource.deinit()
{
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2225EA754(*(v0 + 56), *(v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  sub_2225E22D4(v0 + 112, &qword_27D010C70, &unk_22261E1F0);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t DeviceAppStateDataSource.__deallocating_deinit()
{
  DeviceAppStateDataSource.deinit();

  return MEMORY[0x2821FE8D8](v0, 208, 7);
}

uint64_t DeviceAppStateDataSource.description.getter()
{
  v0 = sub_22261B750();
  MEMORY[0x223DBB650](v0);

  MEMORY[0x223DBB650](0x203A797265757128, 0xE800000000000000);
  sub_22261B5A0();
  MEMORY[0x223DBB650](41, 0xE100000000000000);
  return 0;
}

uint64_t DeviceAppStateDataSource.load()()
{
  v1[21] = v0;
  v1[22] = *v0;
  sub_22261AF10();
  v1[23] = swift_task_alloc();
  v2 = sub_22261AF30();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225F2E90, 0, 0);
}

uint64_t sub_2225F2E90()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  sub_22261AEB0();
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v4);
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  v8 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_2225F3008;

  return v8(v0 + 136, v4, v5);
}

uint64_t sub_2225F3008(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_2225F311C;
  }

  else
  {
    v4 = sub_2225F33BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225F311C()
{
  v1 = v0;
  v2 = v0[25];
  v12 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v1[21];
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v1[5] = v4;
  v1[2] = v5;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 2), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v1[9] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 6);
  (*(v2 + 16))(boxed_opaque_existential_0, v12, v3);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 6), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v7 = v1[14];
  v8 = v1[15];
  v1[13] = v8;
  v9 = __swift_allocate_boxed_opaque_existential_0(v1 + 10);
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 10), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  swift_willThrow();
  (*(v2 + 8))(v12, v3);

  v10 = v1[1];

  return v10();
}

uint64_t sub_2225F33BC()
{
  v15 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[21];
  v3 = v0[22];
  v5 = *(v4 + 192);
  v6 = swift_task_alloc();
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = 0;
  v6[5] = v3;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_2225F7674;
  *(v7 + 24) = v6;
  os_unfair_lock_lock(v5 + 4);
  sub_2225F7694(&v14);
  if (v2)
  {
    os_unfair_lock_unlock(v5 + 4);
  }

  else
  {
    v10 = v0[25];
    v9 = v0[26];
    v11 = v0[24];
    os_unfair_lock_unlock(v5 + 4);
    v12 = v14;

    v0[20] = v12;
    sub_22261B180();
    (*(v10 + 8))(v9, v11);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2225F353C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  *(v5 + 176) = a3;
  *(v5 + 184) = v6;
  *(v5 + 145) = a4;
  *(v5 + 168) = a2;
  *(v5 + 192) = *v6;
  sub_22261AF10();
  v8 = swift_task_alloc();
  v9 = *a1;
  *(v5 + 200) = v8;
  *(v5 + 208) = v9;
  *(v5 + 146) = *(a1 + 8);

  return MEMORY[0x2822009F8](sub_2225F360C, 0, 0);
}

uint64_t sub_2225F360C()
{
  v1 = *(v0 + 146);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = v3[12];
  v5 = v3[13];
  __swift_project_boxed_opaque_existential_1(v3 + 9, v4);
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  v8 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = sub_2225F375C;

  return v8(v0 + 136, v4, v5);
}

uint64_t sub_2225F375C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_2225F39BC;
  }

  else
  {
    v4 = sub_2225F3870;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2225F3870()
{
  v14 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v4 + 192);
  v7 = swift_task_alloc();
  v7[2] = v1;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v3;
  v8 = swift_task_alloc();
  *(v8 + 16) = sub_2225F790C;
  *(v8 + 24) = v7;
  os_unfair_lock_lock(v6 + 4);
  sub_2225F793C(&v13);
  os_unfair_lock_unlock(v6 + 4);
  if (v2)
  {
  }

  else
  {
    v10 = *(v0 + 145);
    v11 = v13;

    if (v10)
    {
      *(v0 + 160) = v11;
      sub_22261B180();
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_2225F39BC()
{
  v1 = v0;
  v2 = v0[24];
  v3 = v1[23];
  v12 = v1[21];
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v4 = sub_22261AF30();
  v5 = *(v4 - 8);
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v1[5] = v2;
  v1[2] = v3;

  sub_22261AEC0();
  sub_2225E22D4((v1 + 2), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v1[9] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 6);
  (*(v5 + 16))(boxed_opaque_existential_0, v12, v4);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 6), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  swift_getErrorValue();
  v7 = v1[14];
  v8 = v1[15];
  v1[13] = v8;
  v9 = __swift_allocate_boxed_opaque_existential_0(v1 + 10);
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  sub_22261AEC0();
  sub_2225E22D4((v1 + 10), &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B070();

  swift_willThrow();

  v10 = v1[1];

  return v10();
}

uint64_t DeviceAppStateDataSource.reloadState(forAppsWith:synchronizing:)(uint64_t a1, char a2)
{
  *(v3 + 57) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = sub_22261AF30();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();
  v5 = sub_22261AF10();
  *(v3 + 104) = v5;
  *(v3 + 112) = *(v5 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225F3DAC, 0, 0);
}

uint64_t sub_2225F3DAC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 64);
  *(v0 + 48) = v5;
  *(v0 + 56) = 0;

  sub_22261AF00();
  sub_22261AEF0();
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C78, &unk_22261E800);
  *(v0 + 16) = v5;

  sub_22261AEC0();
  sub_2225E22D4(v0 + 16, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  (*(v4 + 32))(v2, v1, v3);
  sub_22261AF20();
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_2225F3F30;
  v7 = *(v0 + 96);
  v8 = *(v0 + 57);

  return sub_2225F353C((v0 + 48), v7, v5, v8);
}

uint64_t sub_2225F3F30()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *v1;
  *(v2 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  sub_2225EA754(*(v2 + 48), *(v2 + 56));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2225F4108, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_2225F4108()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DeviceAppStateDataSource.reloadAllStates(synchronizing:)(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 25) = a1;
  v3 = sub_22261AF30();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2225F4244, 0, 0);
}

uint64_t sub_2225F4244()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  sub_2225EA89C(v2, v3);
  sub_22261AEB0();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_2225F432C;
  v5 = *(v0 + 56);
  v6 = *(v0 + 25);

  return sub_2225F353C((v0 + 16), v5, 0, v6);
}

uint64_t sub_2225F432C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  *(v2 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  sub_2225EA754(*(v2 + 16), *(v2 + 24));
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2225F44EC, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7();
  }
}

uint64_t sub_2225F44EC()
{

  v1 = *(v0 + 8);

  return v1();
}

void DeviceAppStateDataSource.state(forAppWith:)()
{
  v1 = *(v0 + 192);
  os_unfair_lock_lock(v1 + 4);
  sub_2225F76C8(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_2225F45C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 160);
  if (*(v6 + 16) && (v7 = sub_2225F1650(a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for State(0);
    v12 = *(v11 - 8);
    sub_2225D8D00(v10 + *(v12 + 72) * v9, a3);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for State(0);
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

BOOL DeviceAppStateDataSource.providesState(forApp:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 64);
  if (v3 == 2)
  {
    goto LABEL_5;
  }

  v4 = *(v1 + 56);
  if (v3 == 3)
  {
    v6 = [v4 predicate];
    v7 = [v6 description];

    sub_22261B1E0();
    sub_2225EE3F8();
    v5 = sub_22261B480();

    return ((v2 ^ v5) & 1) == 0;
  }

  if (v3 == 4 && v4 == 1)
  {
LABEL_5:
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return ((v2 ^ v5) & 1) == 0;
}

uint64_t sub_2225F481C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v27 = [*a1 storeItemID];
  v4 = sub_22261B610();
  v6 = v5;
  v7 = [v3 progress];
  if (v7)
  {
    v8 = v7;
    v28 = v4;
    v29 = v6;
    MEMORY[0x223DBB650](8250, 0xE200000000000000);
    v9 = v8;
    v10 = [v9 description];
    v11 = sub_22261B1E0();
    v13 = v12;

    MEMORY[0x223DBB650](v11, v13);
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_22261B500();
    MEMORY[0x223DBB650](v4, v6);

    MEMORY[0x223DBB650](0x6C646E75423C203ALL, 0xEC0000003D444965);
    v15 = [v3 bundleID];
    v16 = sub_22261B1E0();
    v18 = v17;

    MEMORY[0x223DBB650](v16, v18);

    MEMORY[0x223DBB650](0x6C6174736E49202CLL, 0xEC0000003D64656CLL);
    v19 = [v3 isInstalled];
    v20 = v19 == 0;
    if (v19)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v20)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    MEMORY[0x223DBB650](v21, v22);

    MEMORY[0x223DBB650](0xD000000000000013, 0x800000022261FC00);
    v23 = [v3 isLaunchProhibited];
    v24 = v23 == 0;
    if (v23)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v24)
    {
      v26 = 0xE500000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    MEMORY[0x223DBB650](v25, v26);

    result = MEMORY[0x223DBB650](62, 0xE100000000000000);
  }

  *a2 = v28;
  a2[1] = v29;
  return result;
}

uint64_t sub_2225F4A90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22261AF10();
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a2 + 168);
  sub_2225D6718(a2 + 16, v56);
  v9 = sub_2225F78B8();

  v10 = MEMORY[0x223DBB7B0](0, &type metadata for AdamID, v9);
  v57 = v10;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22261B5B0())
  {
    v34 = a3;
    v12 = 0;
    v46 = a1 & 0xC000000000000001;
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v37 = 0x800000022261EEF0;
    v36 = "s not a number: ";
    v10 = &off_2784B0000;
    v35 = xmmword_22261C770;
    v39 = a1;
    v38 = v8;
    v44 = i;
    while (1)
    {
      if (v46)
      {
        v21 = MEMORY[0x223DBB940](v12, a1);
      }

      else
      {
        if (v12 >= *(v45 + 16))
        {
          goto LABEL_22;
        }

        v21 = *(a1 + 8 * v12 + 32);
      }

      v22 = v21;
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (![v21 v10[89]])
      {
        v25 = [v22 bundleID];
        v26 = sub_22261B1E0();
        v28 = v27;

        if (*(v8 + 16))
        {
          v29 = sub_2225F003C(v26, v28);
          v31 = v30;

          v10 = &off_2784B0000;
          if (v31)
          {
            v24 = *(*(v8 + 56) + 8 * v29);
            goto LABEL_13;
          }
        }

        else
        {

          v10 = &off_2784B0000;
        }
      }

      v24 = [v22 v10[89]];
      sub_2225D6718(v56, v53);
      if ((v24 & 0x8000000000000000) == 0)
      {
        sub_2225D5EB0(v53);
LABEL_13:

        a3 = &v57;
        sub_222614E28(v53, v24);
        goto LABEL_5;
      }

      v49 = 0;
      v50 = 0xE000000000000000;
      sub_22261B500();

      v49 = 0xD00000000000001DLL;
      v50 = v37;
      v52 = v24;
      v13 = sub_22261B610();
      MEMORY[0x223DBB650](v13);

      v14 = v49;
      v15 = v50;
      sub_2225D50A4();
      v16 = swift_allocError();
      *v17 = v14;
      v17[1] = v15;
      swift_willThrow();
      v42 = v54;
      v43 = v55;
      v41 = __swift_project_boxed_opaque_existential_1(v53, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
      sub_22261AF30();
      *(swift_allocObject() + 16) = v35;
      sub_22261AF00();
      sub_22261AEF0();
      v51 = MEMORY[0x277D84A28];
      v49 = v24;
      sub_22261AEC0();
      sub_2225E22D4(&v49, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      swift_getErrorValue();
      v18 = v47;
      v19 = v48;
      v51 = v48;
      v20 = __swift_allocate_boxed_opaque_existential_0(&v49);
      (*(*(v19 - 8) + 16))(v20, v18, v19);
      sub_22261AEC0();
      sub_2225E22D4(&v49, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      v8 = v38;
      sub_22261AF20();
      a1 = v39;
      a3 = v41;
      sub_22261B070();

      sub_2225D5EB0(v53);
LABEL_5:
      ++v12;
      v10 = &off_2784B0000;
      if (v23 == v44)
      {
        v10 = v57;
        a3 = v34;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_20:

  result = __swift_destroy_boxed_opaque_existential_1(v56);
  *a3 = v10;
  return result;
}

void sub_2225F5044(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = MEMORY[0x223DBBBF0]();
  sub_2225F50DC(a1, a2, a3, a4, &v12);
  objc_autoreleasePoolPop(v11);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a5 = v12;
  }
}

uint64_t sub_2225F50DC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v117 = a4;
  v119 = a5;
  v8 = type metadata accessor for State(0);
  v123 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v121 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C80, &unk_22261E320);
  MEMORY[0x28223BE20](v132);
  v131 = &v114 - v10;
  v11 = sub_22261AF10();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v118 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v128 = &v114 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v129 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v114 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v136 = &v114 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v146 = (&v114 - v24);
  MEMORY[0x28223BE20](v23);
  v120 = &v114 - v25;
  v156 = MEMORY[0x277D84FA0];
  v155 = MEMORY[0x277D84FA0];
  v140 = a1;
  v116 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_87;
  }

  v26 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v27 = MEMORY[0x277D84FA0];
  v139 = a2;
  v141 = v8;
  if (v26)
  {
    v122 = v20;
    v115 = a3;
    v28 = 0;
    v138 = v140 & 0xC000000000000001;
    v127 = v140 & 0xFFFFFFFFFFFFFF8;
    v135 = (v123 + 48);
    v130 = (v123 + 56);
    v126 = 0x800000022261EEF0;
    v125 = "s not a number: ";
    v20 = 0x2784B0000;
    v124 = xmmword_22261C770;
    v137 = v26;
    while (1)
    {
      if (v138)
      {
        v40 = MEMORY[0x223DBB940](v28, v140);
      }

      else
      {
        if (v28 >= *(v127 + 16))
        {
          goto LABEL_85;
        }

        v40 = *(v140 + 8 * v28 + 32);
      }

      v41 = v40;
      if (__OFADD__(v28, 1))
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        v26 = sub_22261B5B0();
        goto LABEL_3;
      }

      v145 = v28 + 1;
      a3 = [v40 *(v20 + 712)];
      sub_2225D6718(a2 + 16, v151);
      v144 = v41;
      if (a3 < 0)
      {
        v149[0] = 0;
        v149[1] = 0xE000000000000000;
        sub_22261B500();

        v149[0] = 0xD00000000000001DLL;
        v149[1] = v126;
        v154 = a3;
        v29 = MEMORY[0x277D84A28];
        v30 = sub_22261B610();
        v31 = a3;
        MEMORY[0x223DBB650](v30);

        v32 = v149[0];
        v33 = v149[1];
        sub_2225D50A4();
        v34 = swift_allocError();
        *v35 = v32;
        v35[1] = v33;
        swift_willThrow();
        v134 = v152;
        v143 = v153;
        v133 = __swift_project_boxed_opaque_existential_1(v151, v152);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
        sub_22261AF30();
        *(swift_allocObject() + 16) = v124;
        sub_22261AF00();
        sub_22261AEF0();
        v150 = v29;
        v149[0] = v31;
        sub_22261AEC0();
        sub_2225E22D4(v149, &qword_27D0108D8, &qword_22261D9E0);
        sub_22261AEF0();
        swift_getErrorValue();
        a3 = v147;
        v36 = v148;
        v150 = v148;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v149);
        (*(*(v36 - 8) + 16))(boxed_opaque_existential_0, a3, v36);
        sub_22261AEC0();
        sub_2225E22D4(v149, &qword_27D0108D8, &qword_22261D9E0);
        sub_22261AEF0();
        sub_22261AF20();
        sub_22261B070();
        v20 = &off_2784B0000;
        v8 = v141;

        v38 = v34;
        a2 = v139;

        sub_2225D5EB0(v151);
        v134 = 0;
        goto LABEL_6;
      }

      sub_2225D5EB0(v151);
      v42 = [v41 *(v20 + 712)];
      v143 = a3;
      if (v42)
      {
        v8 = v41;
        v43 = [v41 bundleID];
        v44 = sub_22261B1E0();
        a3 = v45;

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v149[0] = *(a2 + 168);
        v20 = v149[0];
        *(a2 + 168) = 0x8000000000000000;
        v47 = sub_2225F003C(v44, a3);
        v49 = *(v20 + 16);
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
          goto LABEL_84;
        }

        a2 = v48;
        if (*(v20 + 24) >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v20 = v149;
            v84 = v47;
            sub_22261A588();
            v47 = v84;
          }
        }

        else
        {
          sub_2225F8E7C(v52, isUniquelyReferenced_nonNull_native);
          v20 = v149[0];
          v47 = sub_2225F003C(v44, a3);
          if ((a2 & 1) != (v53 & 1))
          {
            result = sub_22261B670();
            __break(1u);
            return result;
          }
        }

        v41 = v8;
        v8 = v141;
        if (a2)
        {
          v54 = v47;

          v55 = v149[0];
          a3 = v143;
          *(*(v149[0] + 56) + 8 * v54) = v143;
        }

        else
        {
          v55 = v149[0];
          *(v149[0] + 8 * (v47 >> 6) + 64) |= 1 << v47;
          v56 = (v55[6] + 16 * v47);
          *v56 = v44;
          v56[1] = a3;
          a3 = v143;
          *(v55[7] + 8 * v47) = v143;
          v57 = v55[2];
          v51 = __OFADD__(v57, 1);
          v58 = v57 + 1;
          if (v51)
          {
            goto LABEL_86;
          }

          v55[2] = v58;
        }

        a2 = v139;
        *(v139 + 168) = v55;
        swift_endAccess();
      }

      sub_2225F6358(v41, v146);
      v59 = [v41 isBetaApp];
      v60 = *(a2 + 64);
      if (v60 == 2)
      {
        if (v59)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v61 = *(a2 + 56);
        if (v60 == 3)
        {
          v62 = v59;
          v63 = [v61 predicate];
          v64 = [v63 description];

          v65 = sub_22261B1E0();
          v67 = v66;

          v151[0] = v65;
          v151[1] = v67;
          strcpy(v149, "isBetaApp == 1");
          HIBYTE(v149[1]) = -18;
          sub_2225EE3F8();
          LOBYTE(v65) = sub_22261B480();

          v68 = v62 ^ v65;
          a3 = v143;
          a2 = v139;
          if ((v68 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v60 == 4)
        {
          if (((v59 ^ (v61 == 1)) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if ((v59 & 1) == 0)
        {
LABEL_36:
          if ((*v135)(v146, 1, v8) != 1)
          {
            sub_222614E28(v151, a3);
          }
        }
      }

      swift_beginAccess();
      v69 = *(a2 + 160);
      v70 = *(v69 + 16);
      v142 = v28;
      if (v70 && (v71 = sub_2225F1650(a3), (v72 & 1) != 0))
      {
        v73 = v136;
        sub_2225D8D00(*(v69 + 56) + *(v123 + 72) * v71, v136);
        v74 = 0;
      }

      else
      {
        v74 = 1;
        v73 = v136;
      }

      (*v130)(v73, v74, 1, v8);
      swift_endAccess();
      a3 = *(v132 + 48);
      v75 = v131;
      sub_2225DE5AC(v73, v131, &qword_27D010A38, qword_22261E810);
      sub_2225DE5AC(v146, v75 + a3, &qword_27D010A38, qword_22261E810);
      v76 = *v135;
      if ((*v135)(v75, 1, v8) == 1)
      {
        sub_2225E22D4(v73, &qword_27D010A38, qword_22261E810);
        v77 = v76((v75 + a3), 1, v8);
        v20 = 0x2784B0000;
        if (v77 != 1)
        {
          goto LABEL_47;
        }

        sub_2225E22D4(v75, &qword_27D010A38, qword_22261E810);
      }

      else
      {
        v78 = v8;
        v79 = v122;
        sub_2225DE5AC(v75, v122, &qword_27D010A38, qword_22261E810);
        if (v76((v75 + a3), 1, v78) == 1)
        {
          sub_2225E22D4(v136, &qword_27D010A38, qword_22261E810);
          sub_2225DB76C(v79);
          v20 = 0x1FA9AE000;
          v8 = v141;
LABEL_47:
          sub_2225E22D4(v75, &qword_27D010C80, &unk_22261E320);
LABEL_48:
          v80 = v146;
          v81 = v129;
          sub_2225DE5AC(v146, v129, &qword_27D010A38, qword_22261E810);
          swift_beginAccess();
          v82 = v81;
          a3 = v143;
          sub_222618F1C(v82, v143);
          swift_endAccess();
          sub_222614E28(v151, a3);

          sub_2225E22D4(v80, &qword_27D010A38, qword_22261E810);
          v39 = v137;
          v28 = v142;
          goto LABEL_7;
        }

        v83 = v121;
        sub_2225DDDD0(v75 + a3, v121);
        a3 = _s8AppState0B0O2eeoiySbAC_ACtFZ_0(v79, v83);
        sub_2225DB76C(v83);
        sub_2225E22D4(v136, &qword_27D010A38, qword_22261E810);
        sub_2225DB76C(v79);
        sub_2225E22D4(v75, &qword_27D010A38, qword_22261E810);
        v20 = 0x2784B0000;
        v8 = v141;
        if ((a3 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v28 = v142;
      sub_2225E22D4(v146, &qword_27D010A38, qword_22261E810);
LABEL_6:
      v39 = v137;
LABEL_7:
      ++v28;
      if (v145 == v39)
      {
        v143 = v155;
        a3 = v115;
        v27 = MEMORY[0x277D84FA0];
        goto LABEL_54;
      }
    }
  }

  v143 = MEMORY[0x277D84FA0];
LABEL_54:
  swift_beginAccess();
  v154 = v27;

  v85 = sub_2225FED50(v146);
  if (a3)
  {
    v85 = sub_222605F60(a3, v85);
  }

  v86 = 0;
  v8 = v85 + 56;
  v87 = 1 << *(v85 + 32);
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  else
  {
    v88 = -1;
  }

  a2 = v88 & *(v85 + 56);
  v89 = (v87 + 63) >> 6;
  a3 = v143;
  v90 = v143 + 56;
  v144 = (v123 + 56);
  v145 = v85;
  while (1)
  {
    v93 = v86;
    if (!a2)
    {
      break;
    }

LABEL_66:
    v94 = __clz(__rbit64(a2));
    a2 &= a2 - 1;
    v95 = *(*(v85 + 48) + ((v86 << 9) | (8 * v94)));
    if (*(a3 + 16) && (sub_22261B700(), v20 = v151, MEMORY[0x223DBBB60](v95), v96 = sub_22261B740(), v97 = -1 << *(a3 + 32), v98 = v96 & ~v97, ((*(v90 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) != 0))
    {
      v99 = ~v97;
      while (*(*(a3 + 48) + 8 * v98) != v95)
      {
        v98 = (v98 + 1) & v99;
        if (((*(v90 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
LABEL_71:
      v100 = sub_2225F1650(v95);
      if (v101)
      {
        v102 = v100;
        v103 = v139;
        v104 = swift_isUniquelyReferenced_nonNull_native();
        v105 = *(v103 + 160);
        v151[0] = v105;
        *(v103 + 160) = 0x8000000000000000;
        if (!v104)
        {
          sub_22261A170();
          v105 = v151[0];
        }

        v142 = v102;
        v106 = v105[7] + *(v123 + 72) * v102;
        v92 = v120;
        sub_2225DDDD0(v106, v120);
        sub_222619C30(v142, v105);
        v146 = v105;
        *(v103 + 160) = v105;

        v91 = 0;
        a3 = v143;
      }

      else
      {
        v91 = 1;
        v92 = v120;
      }

      v85 = v145;
      (*v144)(v92, v91, 1, v141);
      sub_2225E22D4(v92, &qword_27D010A38, qword_22261E810);
      sub_222614E28(v151, v95);
      v20 = &v156;
      sub_222614E28(v151, v95);
    }
  }

  while (1)
  {
    v86 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v86 >= v89)
    {
      break;
    }

    a2 = *(v8 + 8 * v86);
    ++v93;
    if (a2)
    {
      goto LABEL_66;
    }
  }

  v107 = v154;
  swift_endAccess();

  v108 = v139;
  sub_2225DE5AC(v139 + 112, v151, &qword_27D010C70, &unk_22261E1F0);
  v109 = v152;
  if (v152)
  {
    v110 = v153;
    __swift_project_boxed_opaque_existential_1(v151, v152);
    v108 = v139;
    (*(v110 + 32))(v107, v109, v110);

    __swift_destroy_boxed_opaque_existential_1(v151);
  }

  else
  {

    sub_2225E22D4(v151, &qword_27D010C70, &unk_22261E1F0);
  }

  v111 = v140;
  __swift_project_boxed_opaque_existential_1((v108 + 16), *(v108 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v152 = v117;
  v151[0] = v108;

  sub_22261AEC0();
  sub_2225E22D4(v151, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  if (v116)
  {
    v112 = sub_22261B5B0();
  }

  else
  {
    v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v152 = MEMORY[0x277D83B88];
  v151[0] = v112;
  sub_22261AEC0();
  sub_2225E22D4(v151, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  *v119 = v156;
  return result;
}

uint64_t sub_2225F6358@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = v2 + 2;
  v7 = *v2;
  v8 = sub_22261AF10();
  MEMORY[0x28223BE20](v8 - 8);
  v95 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A38, qword_22261E810);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v75 - v11;
  v13 = type metadata accessor for State(0);
  Description = v13[-1].Description;
  v15 = MEMORY[0x28223BE20](v13);
  v90 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - v17;
  v19 = [a1 storeItemID];
  v94 = v6;
  sub_2225D6718(v6, v100);
  sub_2225D4CC8(v19, v100, &v97);
  if (v98)
  {
    return Description[7](a2, 1, 1, v13);
  }

  v93 = v7;
  v89 = a2;
  v21 = v97;
  sub_2225DE5AC(v3 + 112, v100, &qword_27D010C70, &unk_22261E1F0);
  v22 = v101;
  v88 = v21;
  if (v101)
  {
    v23 = v18;
    v24 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v96 = v21;
    (*(v24 + 8))(&v97, &v96, v22, v24);
    v25 = v97;
    v26 = v99;
    __swift_destroy_boxed_opaque_existential_1(v100);
    if (v26)
    {
      v27 = [a1 storeExternalVersionID];

      LOBYTE(v26) = v27 < v25;
    }

    v18 = v23;
  }

  else
  {
    sub_2225E22D4(v100, &qword_27D010C70, &unk_22261E1F0);
    LOBYTE(v26) = 0;
  }

  LOBYTE(v100[0]) = *(v3 + 152);
  v28 = a1;
  sub_2225DE690(v28, v100, v26, v12);
  v91 = Description;
  v29 = (Description[6])(v12, 1, v13);
  v92 = v13;
  if (v29 == 1)
  {
    sub_2225E22D4(v12, &qword_27D010A38, qword_22261E810);
    v30 = *(v3 + 40);
    v90 = *(v3 + 48);
    v94 = __swift_project_boxed_opaque_existential_1(v94, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
    sub_22261AF30();
    *(swift_allocObject() + 16) = xmmword_22261C770;
    sub_22261AF00();
    sub_22261AEF0();
    v101 = v93;
    v100[0] = v3;

    sub_22261AEC0();
    sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
    sub_22261AEF0();
    v101 = sub_2225F7720();
    v100[0] = v28;
    v31 = v28;
    sub_22261AEC0();
    sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
    sub_22261AEF0();
    sub_22261AF20();
    sub_22261B050();

    sub_2225DE5AC(v3 + 112, v100, &qword_27D010C70, &unk_22261E1F0);
    v32 = v101;
    if (v101)
    {
      v33 = v102;
      __swift_project_boxed_opaque_existential_1(v100, v101);
      v97 = v88;
      (*(v33 + 24))(&v97, v32, v33);
      __swift_destroy_boxed_opaque_existential_1(v100);
    }

    else
    {
      sub_2225E22D4(v100, &qword_27D010C70, &unk_22261E1F0);
    }

    return v91[7](v89, 1, 1, v92);
  }

  sub_2225DDDD0(v12, v18);
  v34 = *(v3 + 48);
  v85 = *(v3 + 40);
  v86 = v34;
  v84 = __swift_project_boxed_opaque_existential_1(v94, v85);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  v36 = *(sub_22261AF30() - 8);
  v37 = *(v36 + 80);
  v38 = (v37 + 32) & ~v37;
  v79 = *(v36 + 72);
  v80 = v37;
  v82 = v35;
  v39 = swift_allocObject();
  v81 = xmmword_22261C770;
  *(v39 + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v101 = v93;
  v100[0] = v3;

  sub_22261AEC0();
  sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v101 = sub_2225F7720();
  v100[0] = v28;
  v40 = v28;
  sub_22261AEC0();
  sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v101 = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v100);
  v87 = v18;
  sub_2225D8D00(v18, boxed_opaque_existential_0);
  sub_22261AEC0();
  sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v83 = v38;
  sub_22261AF20();
  sub_22261B060();

  sub_2225DE5AC(v3 + 112, v100, &qword_27D010C70, &unk_22261E1F0);
  v42 = v101;
  if (!v101)
  {
    sub_2225E22D4(v100, &qword_27D010C70, &unk_22261E1F0);
    v48 = v91;
    goto LABEL_22;
  }

  v85 = v40;
  v86 = v3;
  v43 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v44 = v88;
  v96 = v88;
  (*(v43 + 8))(&v97, &v96, v42, v43);
  v46 = v97;
  v45 = v98;
  v47 = v99;
  __swift_destroy_boxed_opaque_existential_1(v100);
  v48 = v91;
  if (!v47)
  {
LABEL_22:
    v63 = v89;
    sub_2225DDDD0(v87, v89);
    return v48[7](v63, 0, 1, v92);
  }

  v49 = v86;
  v50 = *(v86 + 40);
  v84 = *(v86 + 48);
  v78 = __swift_project_boxed_opaque_existential_1(v94, v50);
  *(swift_allocObject() + 16) = v81;
  sub_22261AF00();
  sub_22261AEF0();
  v101 = v93;
  v100[0] = v49;

  sub_22261AEC0();
  sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v77 = v46;
  v100[0] = v46;
  v100[1] = v45;
  v76 = v45;
  v100[2] = v47;
  v101 = &type metadata for AvailableUpdate;

  sub_22261AEC0();
  sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v101 = &type metadata for AdamID;
  v100[0] = v44;
  sub_22261AEC0();
  sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v51 = v90;
  sub_2225D8D00(v87, v90);
  v52 = v47;
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    sub_2225DB76C(v51);
LABEL_25:
    v54 = v86;
    goto LABEL_26;
  }

  v53 = *(v51 + 8);
  if (![v85 storeItemID])
  {

    goto LABEL_25;
  }

  v54 = v86;
  if (v53)
  {
    v55 = v77;
    if (v53 >= v77)
    {

      __swift_project_boxed_opaque_existential_1(v94, *(v54 + 40));
      *(swift_allocObject() + 16) = v81;
      sub_22261AF00();
      sub_22261AEF0();
      v101 = v93;
      v100[0] = v54;

      sub_22261AEC0();
      sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      sub_22261AF20();
      sub_22261B050();

      sub_2225DE5AC(v54 + 112, v100, &qword_27D010C70, &unk_22261E1F0);
      v71 = v101;
      if (v101)
      {
        v72 = v102;
        __swift_project_boxed_opaque_existential_1(v100, v101);
        v97 = v88;
        (*(v72 + 24))(&v97, v71, v72);
        __swift_destroy_boxed_opaque_existential_1(v100);
      }

      else
      {
        sub_2225E22D4(v100, &qword_27D010C70, &unk_22261E1F0);
      }

      v73 = v92;
      v74 = v89;
      sub_2225DDDD0(v87, v89);
      return v91[7](v74, 0, 1, v73);
    }

    else
    {
      v56 = *(v86 + 48);
      v88 = *(v86 + 40);
      v90 = v56;
      v94 = __swift_project_boxed_opaque_existential_1(v94, v88);
      *(swift_allocObject() + 16) = v81;
      sub_22261AF00();
      sub_22261AEF0();
      v101 = v93;
      v100[0] = v54;

      sub_22261AEC0();
      v57 = v91;
      sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      v58 = MEMORY[0x277D84A28];
      v101 = MEMORY[0x277D84A28];
      v100[0] = v55;
      sub_22261AEC0();
      sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      v101 = v58;
      v100[0] = v53;
      sub_22261AEC0();
      sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      v59 = v92;
      v101 = v92;
      v60 = __swift_allocate_boxed_opaque_existential_0(v100);
      v61 = v76;
      *v60 = v76;
      v60[1] = v52;
      swift_storeEnumTagMultiPayload();

      sub_22261AEC0();
      sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
      sub_22261AEF0();
      sub_22261AF20();
      sub_22261B050();

      sub_2225DB76C(v87);
      v62 = v89;
      *v89 = v61;
      v62[1] = v52;
      swift_storeEnumTagMultiPayload();
      return v57[7](v62, 0, 1, v59);
    }
  }

LABEL_26:
  v64 = *(v54 + 40);
  v90 = *(v54 + 48);
  __swift_project_boxed_opaque_existential_1(v94, v64);
  *(swift_allocObject() + 16) = v81;
  sub_22261AF00();
  sub_22261AEF0();
  v101 = v93;
  v100[0] = v54;

  sub_22261AEC0();
  sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  v101 = &type metadata for AdamID;
  v65 = v88;
  v100[0] = v88;
  sub_22261AEC0();
  sub_2225E22D4(v100, &qword_27D0108D8, &qword_22261D9E0);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  sub_2225DE5AC(v54 + 112, v100, &qword_27D010C70, &unk_22261E1F0);
  v66 = v101;
  if (v101)
  {
    v67 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v97 = v65;
    (*(v67 + 24))(&v97, v66, v67);
    __swift_destroy_boxed_opaque_existential_1(v100);
  }

  else
  {
    sub_2225E22D4(v100, &qword_27D010C70, &unk_22261E1F0);
  }

  v69 = v91;
  v68 = v92;
  v70 = v89;
  sub_2225DDDD0(v87, v89);
  return v69[7](v70, 0, 1, v68);
}

uint64_t sub_2225F735C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2225E2E18;

  return DeviceAppStateDataSource.load()();
}

uint64_t sub_2225F73EC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225E2AA0;

  return DeviceAppStateDataSource.reloadState(forAppsWith:synchronizing:)(a1, a2);
}

uint64_t sub_2225F7494(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2225E2E18;

  return DeviceAppStateDataSource.reloadAllStates(synchronizing:)(a1);
}

void sub_2225F752C()
{
  v1 = *(*v0 + 192);
  os_unfair_lock_lock(v1 + 4);
  sub_2225F7954(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_2225F7628@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_2225F7720()
{
  result = qword_280D9F278;
  if (!qword_280D9F278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D9F278);
  }

  return result;
}

unint64_t sub_2225F776C()
{
  result = qword_280D9F258;
  if (!qword_280D9F258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D010C88, &unk_22261E330);
    sub_2225F77F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9F258);
  }

  return result;
}

unint64_t sub_2225F77F0()
{
  result = qword_280D9F298;
  if (!qword_280D9F298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D010AE0, &qword_22261DB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9F298);
  }

  return result;
}

void *sub_2225F7874@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_2225F78B8()
{
  result = qword_280D9F2E0;
  if (!qword_280D9F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9F2E0);
  }

  return result;
}

uint64_t sub_2225F796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_2225F1650(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22261A6F0();
      v9 = v12;
    }

    v10 = *(v9 + 56) + 24 * v7;
    v11 = *(v10 + 16);
    *a2 = *v10;
    *(a2 + 16) = v11;
    result = sub_222619FD0(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_2225F7A0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_222614A98(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_22261B4B0();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_222614A98((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_2225F24E0(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_2225F24E0(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
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

void *DeviceUpdateRegistry.__allocating_init()()
{
  if (qword_280D9F2B8 != -1)
  {
    swift_once();
  }

  v0 = sub_22261B150();
  v1 = __swift_project_value_buffer(v0, qword_280DA0A60);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D22508];
  v2[6] = v0;
  v2[7] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 3);
  (*(*(v0 - 8) + 16))(boxed_opaque_existential_0, v1, v0);
  v5 = sub_2225DE17C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C90, &qword_22261E340);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  v2[2] = v6;
  return v2;
}

uint64_t DeviceUpdateRegistry.entry(forAdamID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 16);

  os_unfair_lock_lock(v5 + 6);
  sub_2225F7DA8(&v5[4], v4, a2);
  os_unfair_lock_unlock(v5 + 6);
}

unint64_t sub_2225F7DA8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16))
  {
    result = sub_2225F1650(a2);
    if (v5)
    {
      v6 = *(v4 + 56) + 24 * result;
      v7 = *(v6 + 16);
      *a3 = *v6;
      *(a3 + 16) = v7;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t DeviceUpdateRegistry.addEntry(_:forAdamID:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *v2;
  v6 = sub_22261AF10();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *a2;
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v15 = v5;
  v14[0] = v2;

  sub_22261AEC0();
  sub_2225D5F6C(v14);
  sub_22261AEF0();
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v15 = &type metadata for AvailableUpdate;

  sub_22261AEC0();
  sub_2225D5F6C(v14);
  sub_22261AEF0();
  v15 = MEMORY[0x277D84A28];
  v14[0] = v10;
  sub_22261AEC0();
  sub_2225D5F6C(v14);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v11 = v2[2];

  os_unfair_lock_lock(&v11[1].Description);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = v11[1].Kind;
  v11[1].Kind = 0x8000000000000000;
  sub_2225F9BFC(v7, v8, v9, v10, isUniquelyReferenced_nonNull_native);
  v11[1].Kind = v14[0];
  os_unfair_lock_unlock(&v11[1].Description);
}

uint64_t DeviceUpdateRegistry.removeEntry(forAdamID:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_22261AF10();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *a1;
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  v9 = v3;
  v8[0] = v1;

  sub_22261AEC0();
  sub_2225D5F6C(v8);
  sub_22261AEF0();
  v9 = MEMORY[0x277D84A28];
  v8[0] = v5;
  sub_22261AEC0();
  sub_2225D5F6C(v8);
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v6 = v1[2];

  os_unfair_lock_lock(v6 + 6);
  sub_2225F796C(v5, v8);

  os_unfair_lock_unlock(v6 + 6);
}

uint64_t DeviceUpdateRegistry.removeEntries(forAdamIDs:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22261AF10();
  result = MEMORY[0x28223BE20](v4 - 8);
  if (*(a1 + 16))
  {
    __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
    sub_22261AF30();
    *(swift_allocObject() + 16) = xmmword_22261C770;
    sub_22261AF00();
    sub_22261AEF0();
    v11 = v3;
    v10[0] = v1;

    sub_22261AEC0();
    sub_2225D5F6C(v10);
    sub_22261AEF0();
    v6 = sub_2225F7A0C(a1);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010C98, &qword_22261E348);
    v10[0] = v6;
    sub_22261AEC0();
    sub_2225D5F6C(v10);
    sub_22261AEF0();
    sub_22261AF20();
    sub_22261B050();

    v8 = v1[2];
    MEMORY[0x28223BE20](v7);
    *(&v9 - 2) = a1;

    os_unfair_lock_lock((v8 + 24));
    sub_2225FA194((v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
  }

  return result;
}

uint64_t sub_2225F85B8(uint64_t *a1, uint64_t a2)
{
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    result = sub_2225F1650(*(*(a2 + 48) + ((v10 << 9) | (8 * v12))));
    if (v13)
    {
      v14 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *a1;
      v17 = *a1;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22261A6F0();
        v16 = v17;
      }

      result = sub_222619FD0(v14, v16);
      *a1 = v16;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DeviceUpdateRegistry.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t DeviceUpdateRegistry.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2225F8754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = *(v4 + 16);

  os_unfair_lock_lock(v6 + 6);
  sub_2225F7DA8(&v6[4], v5, a2);
  os_unfair_lock_unlock(v6 + 6);
}

uint64_t sub_2225F883C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for State(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A48, &qword_22261D398);
  v36 = v4;
  result = sub_22261B5D0();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_2225DDDD0(v24, v37);
      }

      else
      {
        sub_2225D8D00(v24, v37);
      }

      sub_22261B700();
      MEMORY[0x223DBBB60](v22);
      result = sub_22261B740();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_2225DDDD0(v37, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2225F8B5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for State(0);
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A00, &unk_22261D350);
  v36 = v4;
  result = sub_22261B5D0();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_2225DDDD0(v24, v37);
      }

      else
      {
        sub_2225D8D00(v24, v37);
      }

      sub_22261B700();
      MEMORY[0x223DBBB40](v22);
      result = sub_22261B740();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_2225DDDD0(v37, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2225F8E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A30, &unk_22261D380);
  v34 = v4;
  result = sub_22261B5D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22261B700();
      sub_22261B210();
      result = sub_22261B740();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2225F911C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A28, &qword_22261D378);
  v32 = v4;
  result = sub_22261B5D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v33 = *v22;
      v23 = *(v22 + 16);
      if ((v32 & 1) == 0)
      {
      }

      sub_22261B700();
      MEMORY[0x223DBBB60](v21);
      result = sub_22261B740();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v33;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2225F93CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A10, &qword_22261D360);
  v30 = v4;
  result = sub_22261B5D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_22261B700();
      MEMORY[0x223DBBB60](v20);
      result = sub_22261B740();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2225F965C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A08, &qword_22261E3A0);
  v37 = v4;
  result = sub_22261B5D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *v22;
      v42 = *(v22 + 8);
      v24 = *(v5 + 56) + 56 * v21;
      v41 = *v24;
      v40 = *(v24 + 16);
      v25 = *(v24 + 32);
      v26 = *(v24 + 48);
      v38 = *(v24 + 40);
      v39 = *(v24 + 24);
      if ((v37 & 1) == 0)
      {
      }

      sub_22261B700();
      MEMORY[0x223DBBB60](v23);
      MEMORY[0x223DBBB40](v42);
      result = sub_22261B740();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v42;
      v17 = *(v7 + 56) + 56 * v15;
      *v17 = v41;
      *(v17 + 16) = v40;
      *(v17 + 24) = v39;
      *(v17 + 32) = v25;
      *(v17 + 40) = v38;
      *(v17 + 48) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2225F9964(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2225F1650(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22261A170();
      goto LABEL_7;
    }

    sub_2225F883C(v13, a3 & 1);
    v20 = sub_2225F1650(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22261B670();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for State(0) - 8) + 72) * v10;

    return sub_2225FA1EC(a1, v18);
  }

LABEL_13:

  return sub_2225F9FFC(v10, a2, a1, v16);
}

uint64_t sub_2225F9AB0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2225F173C(a2 & 1);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_22261A37C();
      goto LABEL_7;
    }

    sub_2225F8B5C(v13, a3 & 1);
    v20 = sub_2225F173C(a2 & 1);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22261B670();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for State(0) - 8) + 72) * v10;

    return sub_2225FA1EC(a1, v18);
  }

LABEL_13:

  return sub_2225FA090(v10, a2 & 1, a1, v16);
}

unint64_t sub_2225F9BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_2225F1650(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_2225F911C(v18, a5 & 1);
      result = sub_2225F1650(a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_22261B670();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_22261A6F0();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a4;
    v25 = (v23[7] + 24 * result);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 24 * result);
  *v24 = a1;
  v24[1] = a2;
  v24[2] = a3;
}

unint64_t sub_2225F9D70(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2225F1650(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2225F93CC(v14, a3 & 1);
      result = sub_2225F1650(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_22261B670();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22261A864();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_2225F9EBC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2225F16BC(a2, a3 & 1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22261A9C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2225F965C(v16, a4 & 1);
    v11 = sub_2225F16BC(a2, a3 & 1);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_22261B670();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 56 * v11;

    return sub_2225FA250(a1, v22);
  }

  else
  {

    return sub_2225FA128(v11, a2, a3 & 1, a1, v21);
  }
}

uint64_t sub_2225F9FFC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for State(0);
  result = sub_2225DDDD0(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2225FA090(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = type metadata accessor for State(0);
  result = sub_2225DDDD0(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_2225FA128(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2225FA1EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DisabledArcadeSubscriptionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB0, &unk_22261D9C0);
  swift_allocObject();
  *(v0 + 16) = sub_22261AEA0();
  return v0;
}

uint64_t DisabledArcadeSubscriptionManager.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AB0, &unk_22261D9C0);
  swift_allocObject();
  *(v0 + 16) = sub_22261AEA0();
  return v0;
}

uint64_t sub_2225FA394()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 3;
  return (*(v0 + 8))();
}

uint64_t DisabledArcadeSubscriptionManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2225FA4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2225D8D00(a2, &v15 - v8);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_2225D8D64(v9, type metadata accessor for State);
  if (a2 != 3)
  {
    return 0;
  }

  sub_2225D8D00(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = type metadata accessor for State;
  if (EnumCaseMultiPayload > 9)
  {
    goto LABEL_8;
  }

  v12 = 1;
  if (((1 << EnumCaseMultiPayload) & 0x2A3) == 0)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = 1;
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v13 = 1;
      v11 = type metadata accessor for AppInstallation;
LABEL_10:
      sub_2225D8D64(v7, v11);
      return v13;
    }

LABEL_8:
    v13 = 0;
    v11 = type metadata accessor for State;
    goto LABEL_10;
  }

  return v12;
}

unsigned __int8 *sub_2225FA634(uint64_t a1, uint64_t a2)
{
  v56 = sub_22261AC90();
  v4 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CA0, &qword_22261E438);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CA8, &qword_22261E440);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v54 - v11;
  v58 = 0x2F2F3A7370747468;
  v59 = 0xE90000000000003FLL;
  MEMORY[0x223DBB650](a1, a2);
  sub_22261ACB0();

  v13 = sub_22261ACC0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_2225E22D4(v9, &qword_27D010CA0, &qword_22261E438);
    return 0;
  }

  v15 = sub_22261ACA0();
  (*(v14 + 8))(v9, v13);
  if (!v15)
  {
    return 0;
  }

  v55 = v12;
  v16 = *(v15 + 16);
  v17 = v56;
  if (v16)
  {
    v18 = 0;
    v19 = 0x7256747845707061;
    while (v18 < *(v15 + 16))
    {
      (*(v4 + 16))(v6, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v17);
      if (sub_22261AC70() == v19 && v20 == 0xEB00000000644973)
      {

LABEL_13:

        v24 = v55;
        v17 = v56;
        (*(v4 + 32))(v55, v6, v56);
        v23 = 0;
        goto LABEL_14;
      }

      v21 = v19;
      v22 = sub_22261B620();

      if (v22)
      {
        goto LABEL_13;
      }

      ++v18;
      v17 = v56;
      (*(v4 + 8))(v6, v56);
      v19 = v21;
      if (v16 == v18)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

LABEL_11:

  v23 = 1;
  v24 = v55;
LABEL_14:
  (*(v4 + 56))(v24, v23, 1, v17);
  if ((*(v4 + 48))(v24, 1, v17) == 1)
  {
    sub_2225E22D4(v24, &qword_27D010CA8, &qword_22261E440);
    return 0;
  }

  v25 = v17;
  v26 = sub_22261AC80();
  v28 = v27;
  result = (*(v4 + 8))(v24, v25);
  if (!v28)
  {
    return 0;
  }

  v30 = HIBYTE(v28) & 0xF;
  v31 = v26 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v32 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
LABEL_83:

    return 0;
  }

  if ((v28 & 0x1000000000000000) == 0)
  {
    if ((v28 & 0x2000000000000000) != 0)
    {
      v58 = v26;
      v59 = v28 & 0xFFFFFFFFFFFFFFLL;
      if (v26 == 43)
      {
        if (v30)
        {
          if (--v30)
          {
            v34 = 0;
            v44 = &v58 + 1;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                break;
              }

              v46 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                break;
              }

              v34 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                break;
              }

              ++v44;
              if (!--v30)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_90:
        __break(1u);
        return result;
      }

      if (v26 != 45)
      {
        if (v30)
        {
          v34 = 0;
          v49 = &v58;
          while (1)
          {
            v50 = *v49 - 48;
            if (v50 > 9)
            {
              break;
            }

            v51 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              break;
            }

            v34 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              break;
            }

            v49 = (v49 + 1);
            if (!--v30)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

      if (v30)
      {
        if (--v30)
        {
          v34 = 0;
          v38 = &v58 + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v34;
            if ((v34 * 10) >> 64 != (10 * v34) >> 63)
            {
              break;
            }

            v34 = v40 - v39;
            if (__OFSUB__(v40, v39))
            {
              break;
            }

            ++v38;
            if (!--v30)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v26 & 0x1000000000000000) != 0)
      {
        result = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_22261B530();
      }

      v33 = *result;
      if (v33 == 43)
      {
        if (v31 >= 1)
        {
          v30 = v31 - 1;
          if (v31 != 1)
          {
            v34 = 0;
            if (result)
            {
              v41 = result + 1;
              while (1)
              {
                v42 = *v41 - 48;
                if (v42 > 9)
                {
                  goto LABEL_77;
                }

                v43 = 10 * v34;
                if ((v34 * 10) >> 64 != (10 * v34) >> 63)
                {
                  goto LABEL_77;
                }

                v34 = v43 + v42;
                if (__OFADD__(v43, v42))
                {
                  goto LABEL_77;
                }

                ++v41;
                if (!--v30)
                {
                  goto LABEL_78;
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_77;
        }

        goto LABEL_89;
      }

      if (v33 != 45)
      {
        if (v31)
        {
          v34 = 0;
          if (result)
          {
            while (1)
            {
              v47 = *result - 48;
              if (v47 > 9)
              {
                goto LABEL_77;
              }

              v48 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                goto LABEL_77;
              }

              v34 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                goto LABEL_77;
              }

              ++result;
              if (!--v31)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_77:
        v34 = 0;
        LOBYTE(v30) = 1;
        goto LABEL_78;
      }

      if (v31 >= 1)
      {
        v30 = v31 - 1;
        if (v31 != 1)
        {
          v34 = 0;
          if (result)
          {
            v35 = result + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                goto LABEL_77;
              }

              v37 = 10 * v34;
              if ((v34 * 10) >> 64 != (10 * v34) >> 63)
              {
                goto LABEL_77;
              }

              v34 = v37 - v36;
              if (__OFSUB__(v37, v36))
              {
                goto LABEL_77;
              }

              ++v35;
              if (!--v30)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_69:
          LOBYTE(v30) = 0;
LABEL_78:
          v57 = v30;
          v52 = v30;
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v34 = sub_2225D57B8(v26, v28, 10);
  v52 = v53;
LABEL_79:

  if (v52)
  {
    return 0;
  }

  else
  {
    return v34;
  }
}

id sub_2225FAD1C()
{
  if (qword_280D9EBE0 != -1)
  {
    swift_once();
  }

  v1 = qword_280D9EBE8;
  qword_280D9EDD0 = qword_280D9EBE8;

  return v1;
}

AppState::GreenTeaLogger __swiftcall GreenTeaLogger.init()()
{
  v1 = sub_2225FADC8(&qword_280D9EBE0, &qword_280D9EBE8, v0);
  result.backing._logger = v2;
  result.backing.super.isa = v1;
  return result;
}

id sub_2225FADC8@<X0>(void *a1@<X0>, void **a2@<X1>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

id sub_2225FAE84()
{
  result = [objc_allocWithZone(ASGreenTeaLogger) init];
  qword_280D9EBE8 = result;
  return result;
}

uint64_t sub_2225FAEB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2225FAF00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2225FAF4C(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v31 = sub_22261AE50();
  v28 = *(v31 - 8);
  v29 = v28;
  MEMORY[0x28223BE20](v31);
  v30 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22261B3B0();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22261AE70();
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v26 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22261B3A0();
  MEMORY[0x28223BE20](v8);
  *(v2 + 24) = 2;
  v23[1] = sub_2225FB9A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CB8, &qword_22261E4F8);
  v9 = swift_allocObject();
  v24 = xmmword_22261C770;
  *(v9 + 16) = xmmword_22261C770;
  sub_22261B390();
  aBlock[0] = v9;
  sub_2225FB9EC(&qword_280D9F288, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CC0, &qword_22261E500);
  sub_2225FBA34(&qword_280D9F2A0, &qword_27D010CC0, &qword_22261E500);
  sub_22261B4A0();
  v10 = v26;
  sub_22261AE60();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v27);
  v11 = sub_22261B3E0();
  v12 = v25;
  *(v25 + 16) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CC8, &qword_22261E508);
  v13 = v29;
  v14 = swift_allocObject();
  *(v14 + 16) = v24;
  sub_22261AE40();
  aBlock[0] = v14;
  sub_2225FB9EC(&qword_280D9F030, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CD0, &qword_22261E510);
  sub_2225FBA34(&qword_280D9F020, &qword_27D010CD0, &qword_22261E510);
  v16 = v30;
  v15 = v31;
  sub_22261B4A0();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v33;
  v20 = v34;
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = sub_2225FBA88;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222608724;
  aBlock[3] = &block_descriptor_3;
  v21 = _Block_copy(aBlock);

  sub_22261AE60();
  MEMORY[0x223DBB800](0, v10, v16, v21);
  _Block_release(v21);

  (*(v32 + 8))(v10, v35);
  (*(v13 + 8))(v16, v15);

  return v12;
}

uint64_t sub_2225FB518(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    a2(&v5);
    *(v4 + 24) = v5;
  }

  return result;
}

uint64_t HardwarePlatform.init(bag:device:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22261B020();
  v13[3] = v6;
  v13[4] = &off_2835C22F8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  v8 = *(v6 - 8);
  (*(v8 + 16))(boxed_opaque_existential_0, a2, v6);
  sub_2225D6718(v13, a3);
  *(a3 + 48) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CB0, &qword_22261E490);
  swift_allocObject();
  v10 = sub_2225FAF4C(sub_2225FB704, v9);
  (*(v8 + 8))(a2, v6);
  v11 = sub_22261B010();
  (*(*(v11 - 8) + 8))(a1, v11);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  *(a3 + 40) = v10;
  return result;
}

uint64_t HardwarePlatform.isRunnable(_:)(void *a1)
{
  if ([a1 watchOnly])
  {
    return 0;
  }

  if ([a1 supportsIPad])
  {
    return 1;
  }

  return [a1 supportsIPhone];
}

uint64_t sub_2225FB844(void *a1)
{
  if ([a1 watchOnly])
  {
    return 0;
  }

  if ([a1 supportsIPad])
  {
    return 1;
  }

  return [a1 supportsIPhone];
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2225FB8DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2225FB924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2225FB984(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2 & 1;
  }
}

unint64_t sub_2225FB9A0()
{
  result = qword_280D9F280;
  if (!qword_280D9F280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D9F280);
  }

  return result;
}

uint64_t sub_2225FB9EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2225FBA34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2225FBAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_2225D8D00(a2, &v19 - v14);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_2225D8D64(v15, type metadata accessor for State);
  if (a2 == 7)
  {
    sub_2225D8D00(a1, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 9)
    {
      v17 = 1;
      if (((1 << EnumCaseMultiPayload) & 0x22C) != 0)
      {
LABEL_10:
        sub_2225D8D64(v13, type metadata accessor for State);
        return v17;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_2225D8D00(v13, v7);
        if (*v7)
        {
          goto LABEL_10;
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_2225D8D00(v13, v10);
        sub_2225D8D64(v10, type metadata accessor for AppInstallation);
        goto LABEL_10;
      }
    }

    v17 = 0;
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_2225FBCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallation(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for State(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A78, qword_22261D520);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = *(v14 + 56);
  sub_2225FCAD4(a1, &v22 - v15, type metadata accessor for State);
  sub_2225FCAD4(a2, &v16[v17], type metadata accessor for State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload == 9)
    {
      sub_2225FCB3C(&v16[v17], type metadata accessor for State);
      v19 = v16;
LABEL_9:
      sub_2225FCB3C(v19, type metadata accessor for State);
      v20 = 1;
      return v20 & 1;
    }

LABEL_7:
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_2225E22D4(v16, &qword_27D010A78, qword_22261D520);
      v20 = 0;
      return v20 & 1;
    }

    sub_2225FCB3C(&v16[v17], type metadata accessor for AppInstallation);
    v19 = v16;
    goto LABEL_9;
  }

  sub_2225FCAD4(v16, v12, type metadata accessor for State);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_2225FCB3C(v12, type metadata accessor for AppInstallation);
    goto LABEL_7;
  }

  sub_2225FCB9C(v12, v9, type metadata accessor for AppInstallation);
  sub_2225FCB9C(&v16[v17], v7, type metadata accessor for AppInstallation);
  v20 = sub_2225FBFE8(&v9[*(v4 + 20)], &v7[*(v4 + 20)]);
  sub_2225FCB3C(v7, type metadata accessor for AppInstallation);
  sub_2225FCB3C(v9, type metadata accessor for AppInstallation);
  sub_2225FCB3C(v16, type metadata accessor for State);
  return v20 & 1;
}

uint64_t sub_2225FBFE8(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010988, &qword_22261CB70);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = &v76 - v4;
  v5 = type metadata accessor for AppInstallation.Phase(0);
  v6 = MEMORY[0x28223BE20](v5);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = &v76 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v78 = &v76 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v84 = &v76 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v76 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v76 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v76 = &v76 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v83 = &v76 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v82 = &v76 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v86 = &v76 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v76 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v76 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v76 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v76 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v76 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010980, &qword_22261CB68);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v43 = &v76 - v42;
  v44 = *(v41 + 56);
  sub_2225FCAD4(a1, &v76 - v42, type metadata accessor for AppInstallation.Phase);
  sub_2225FCAD4(v87, &v43[v44], type metadata accessor for AppInstallation.Phase);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_2225FCAD4(v43, v28, type metadata accessor for AppInstallation.Phase);
      v55 = swift_getEnumCaseMultiPayload();
      if (v55 == 2)
      {
        v51 = v43;
        sub_2225FCB3C(&v43[v44], type metadata accessor for AppInstallation.Progress);
        v56 = v28;
        goto LABEL_29;
      }

      if (v55 == 1)
      {
        v51 = v43;
        v53 = v28;
        goto LABEL_23;
      }

      v65 = v28;
LABEL_33:
      sub_2225FCB3C(v65, type metadata accessor for AppInstallation.Progress);
      goto LABEL_34;
    }

    v49 = v39;
    sub_2225FCAD4(v43, v39, type metadata accessor for AppInstallation.Phase);
    v50 = swift_getEnumCaseMultiPayload();
    if (v50 != 3)
    {
      v51 = v43;
      if (v50)
      {
        sub_2225FCB3C(v49, type metadata accessor for AppInstallation.Progress);
LABEL_37:
        sub_2225FCB3C(&v51[v44], type metadata accessor for AppInstallation.Phase);
        v54 = v51;
        goto LABEL_38;
      }

      goto LABEL_17;
    }

    v62 = swift_projectBox();
    v51 = v43;
    sub_2225FCAD4(v62, v37, type metadata accessor for AppInstallation.Phase);
    sub_2225FCAD4(v37, v34, type metadata accessor for AppInstallation.Phase);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2225FCB3C(v37, type metadata accessor for AppInstallation.Phase);
      v63 = swift_projectBox();
      v64 = v81;
      sub_2225FCC04(v63, v81);
      sub_2225FCB3C(v64, type metadata accessor for AppInstallation.Phase);
    }

    else
    {
      sub_2225FCB3C(v34, type metadata accessor for AppInstallation.Phase);
      sub_2225FCB9C(v37, v31, type metadata accessor for AppInstallation.Phase);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_2225FCB3C(v31, type metadata accessor for AppInstallation.Progress);

        v56 = v49;
        goto LABEL_29;
      }

      sub_2225FCB3C(v31, type metadata accessor for AppInstallation.Phase);
    }

LABEL_45:

    sub_2225FCB3C(v49, type metadata accessor for AppInstallation.Progress);
    sub_2225FCB3C(v43, type metadata accessor for AppInstallation.Phase);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_34;
      }

      v54 = v43;
      goto LABEL_38;
    }

    sub_2225FCAD4(v43, v85, type metadata accessor for AppInstallation.Phase);
    v46 = swift_projectBox();
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 == 3)
    {
      v69 = v43;
      sub_2225FCAD4(&v43[v44], v84, type metadata accessor for AppInstallation.Phase);
      v70 = swift_projectBox();
      v71 = v79;
      sub_2225FCAD4(v46, v79, type metadata accessor for AppInstallation.Phase);
      v72 = v70;
      v73 = v80;
      sub_2225FCAD4(v72, v80, type metadata accessor for AppInstallation.Phase);
      v68 = sub_2225FBFE8(v71, v73);
      sub_2225FCB3C(v73, type metadata accessor for AppInstallation.Phase);
      sub_2225FCB3C(v71, type metadata accessor for AppInstallation.Phase);

      sub_2225FCB3C(v69 + v44, type metadata accessor for AppInstallation.Phase);
      sub_2225FCB3C(v69, type metadata accessor for AppInstallation.Phase);
      return v68 & 1;
    }

    if (v47 == 2)
    {
      v48 = v78;
      sub_2225FCAD4(&v43[v44], v78, type metadata accessor for AppInstallation.Phase);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v47)
      {
LABEL_9:

LABEL_34:
        sub_2225E22D4(v43, &qword_27D010980, &qword_22261CB68);
LABEL_46:
        v68 = 0;
        return v68 & 1;
      }

      v48 = v77;
      sub_2225FCAD4(&v43[v44], v77, type metadata accessor for AppInstallation.Phase);
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_8:
        sub_2225E22D4(v48, &qword_27D010CD8, qword_22261E558);
        goto LABEL_9;
      }
    }

    v66 = v46;
    v67 = v84;
    sub_2225FCAD4(v66, v84, type metadata accessor for AppInstallation.Phase);
    v51 = v43;
    sub_2225FCB3C(v48, type metadata accessor for AppInstallation.Progress);
    sub_2225FCB3C(v67, type metadata accessor for AppInstallation.Progress);

    goto LABEL_37;
  }

  v49 = v86;
  sub_2225FCAD4(v43, v86, type metadata accessor for AppInstallation.Phase);
  v52 = swift_getEnumCaseMultiPayload();
  if (v52 == 3)
  {
    v57 = swift_projectBox();
    v58 = v82;
    sub_2225FCAD4(v57, v82, type metadata accessor for AppInstallation.Phase);
    v59 = v83;
    sub_2225FCAD4(v58, v83, type metadata accessor for AppInstallation.Phase);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2225FCB3C(v58, type metadata accessor for AppInstallation.Phase);
      v60 = swift_projectBox();
      v61 = v81;
      sub_2225FCC04(v60, v81);
      sub_2225FCB3C(v61, type metadata accessor for AppInstallation.Phase);
    }

    else
    {
      sub_2225FCB3C(v59, type metadata accessor for AppInstallation.Phase);
      v74 = v76;
      sub_2225FCB9C(v58, v76, type metadata accessor for AppInstallation.Phase);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_2225FCB3C(v74, type metadata accessor for AppInstallation.Progress);

        sub_2225FCB3C(v49, type metadata accessor for AppInstallation.Progress);
        v54 = v43;
        goto LABEL_38;
      }

      sub_2225FCB3C(v74, type metadata accessor for AppInstallation.Phase);
    }

    goto LABEL_45;
  }

  if (v52 != 2)
  {
    v65 = v49;
    goto LABEL_33;
  }

  v51 = v43;
LABEL_17:
  v53 = v49;
LABEL_23:
  sub_2225FCB3C(v53, type metadata accessor for AppInstallation.Progress);
  v56 = &v51[v44];
LABEL_29:
  sub_2225FCB3C(v56, type metadata accessor for AppInstallation.Progress);
  v54 = v51;
LABEL_38:
  sub_2225FCB3C(v54, type metadata accessor for AppInstallation.Phase);
  v68 = 1;
  return v68 & 1;
}

uint64_t sub_2225FCAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2225FCB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2225FCB9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2225FCC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010988, &qword_22261CB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *ManagedRestrictions.__allocating_init(accounts:)(void *a1)
{
  sub_2225D6718(a1, v6);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() defaultCenter];
    swift_allocObject();
    v5 = sub_2225FD71C(v6, v3, v4);

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2225FCD38()
{
  v1 = *v0;
  v2 = sub_22261AF10();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280D9EC18 != -1)
  {
    swift_once();
  }

  v3 = sub_22261B150();
  __swift_project_value_buffer(v3, qword_280DA0A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  sub_22261AED0();
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v5[3] = v1;
  v5[4] = &protocol witness table for ManagedRestrictions;
  v5[0] = v0;

  sub_22261AE90();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t ManagedRestrictions.deinit()
{
  [*(v0 + 64) removeObserver_];
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ManagedRestrictions.__deallocating_deinit()
{
  [*(v0 + 64) removeObserver_];
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

id ManagedRestrictions.maxAppContentRating.getter()
{
  v1 = [*(v0 + 56) effectiveValueForSetting_];
  if (!v1)
  {
    return static Restrictions.defaultMaxAppContentRating.getter();
  }

  v2 = v1;
  v3 = [v1 integerValue];

  return v3;
}

uint64_t ManagedRestrictions.hasManagedAppleID.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108E8, qword_22261DAE0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  v4 = sub_22261B0B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_22261AF80();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2225D8124(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    swift_getKeyPath();
    sub_22261B0A0();

    (*(v5 + 8))(v7, v4);
    return v9[15];
  }
}

uint64_t sub_2225FD32C()
{
  v1 = *v0;
  v2 = sub_22261AF10();
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280D9EC18 != -1)
  {
    swift_once();
  }

  v3 = sub_22261B150();
  __swift_project_value_buffer(v3, qword_280DA0A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0108D0, &unk_22261E210);
  sub_22261AF30();
  *(swift_allocObject() + 16) = xmmword_22261C770;
  sub_22261AF00();
  sub_22261AEF0();
  sub_22261AED0();
  sub_22261AEF0();
  sub_22261AF20();
  sub_22261B050();

  v5[3] = v1;
  v5[4] = &protocol witness table for ManagedRestrictions;
  v5[0] = v0;

  sub_22261AE90();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t *sub_2225FD71C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010958, &qword_22261E610);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-1] - v10;
  sub_2225D6718(a1, (v4 + 2));
  v4[7] = a2;
  v4[8] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010CE0, &qword_22261E618);
  swift_allocObject();
  v12 = a2;
  v13 = a3;
  v4[9] = sub_22261AEA0();
  [v13 addObserver:v4 selector:sel_effectiveSettingsChanged_ name:*MEMORY[0x277D25CA0] object:v12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22261AF90();
  swift_getObjectType();
  sub_2225FEC80();
  sub_22261AF50();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v16);
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

BOOL _s8AppState19ManagedRestrictionsC24isRunningInStoreDemoModeSbvg_0()
{
  v6 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  v0 = sub_22261B1D0();
  v1 = sub_22261B1D0();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t sub_2225FDA6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_2225D8D00(a2, &v15 - v8);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    v13 = v9;
LABEL_8:
    sub_2225D8D64(v13, type metadata accessor for State);
    return 0;
  }

  sub_2225D8D00(a1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload < 2)
    {
      return result;
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      v12 = type metadata accessor for State;
LABEL_15:
      sub_2225D8D64(v7, v12);
      return 1;
    }

LABEL_17:
    v13 = v7;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 9 && EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v12 = type metadata accessor for AppInstallation;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t sub_2225FDBF4()
{
  v0 = sub_22261B130();
  __swift_allocate_value_buffer(v0, qword_280DA0A48);
  __swift_project_value_buffer(v0, qword_280DA0A48);
  return sub_22261B120();
}

uint64_t sub_2225FDD1C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22261B130();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22261B150();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  if (qword_280D9F2B0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_280DA0A48);
  (*(v6 + 16))(v8, v10, v5);
  return sub_22261B140();
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

uint64_t sub_2225FDED0()
{
  v0 = sub_22261AFB0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22261B130();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22261B150();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D9F2B0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_280DA0A48);
  (*(v5 + 16))(v7, v12, v4);
  sub_22261B140();
  (*(v1 + 104))(v3, *MEMORY[0x277D21DD8], v0);
  v13 = sub_22261B040();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  result = sub_22261AF70();
  qword_280DA09F8 = result;
  unk_280DA0A00 = MEMORY[0x277D21D78];
  qword_280DA09E0 = v13;
  return result;
}

uint64_t sub_2225FE1F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010A78, qword_22261D520);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = type metadata accessor for State(0);
  v8 = MEMORY[0x28223BE20](v7);
  v31 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v30 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v30 - v22;
  sub_2225D8D00(a2, &v30 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *(v4 + 48);
    sub_2225D8D00(a1, v6);
    sub_2225D8D00(a2, &v6[v24]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 9)
      {
        goto LABEL_15;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2225D8D00(v6, v18);
        if ((*v18 & 1) == 0 && swift_getEnumCaseMultiPayload() == 1)
        {
          sub_2225D8D00(&v6[v24], v15);
          if (*v15 == 1)
          {
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      sub_2225D8D00(v6, v21);
      if (*v21 < 2u)
      {
        goto LABEL_15;
      }
    }

    if (swift_getEnumCaseMultiPayload() != 1 || (sub_2225D8D00(&v6[v24], v12), *v12 != 1) || (v28 = v31, *v31 = 0, *(v28 + 8) = 0xE000000000000000, swift_storeEnumTagMultiPayload(), v29 = sub_2225FA4AC(a1, v28), sub_2225DB76C(v28), (v29 & 1) == 0))
    {
      sub_2225FE4DC(v6);
      return 0;
    }

LABEL_15:
    sub_2225DB76C(&v6[v24]);
    sub_2225DB76C(v6);
    return 1;
  }

  sub_2225DB76C(v23);
  return 0;
}