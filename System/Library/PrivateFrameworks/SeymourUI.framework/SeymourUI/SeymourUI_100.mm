uint64_t sub_20C06D2E4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_20C073F30, v3, v2);
}

uint64_t sub_20C06D428(char a1)
{
  *(v2 + 400) = v1;
  *(v2 + 496) = a1;
  v3 = sub_20C13C554();
  *(v2 + 408) = v3;
  *(v2 + 416) = *(v3 - 8);
  *(v2 + 424) = swift_task_alloc();
  v4 = sub_20C133954();
  *(v2 + 432) = v4;
  *(v2 + 440) = *(v4 - 8);
  *(v2 + 448) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  *(v2 + 456) = swift_task_alloc();
  sub_20C13CDA4();
  *(v2 + 464) = sub_20C13CD94();
  v6 = sub_20C13CD24();
  *(v2 + 472) = v6;
  *(v2 + 480) = v5;

  return MEMORY[0x2822009F8](sub_20C06D5B4, v6, v5);
}

uint64_t sub_20C06D5B4()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 400);
  v3 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_configuration;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v3, v1, &qword_27C761800, &qword_20C14FDA0);
  v4 = sub_20C134104();
  if ((*(*(v4 - 8) + 48))(v1, 1, v4) == 1)
  {
    v5 = *(v0 + 456);

    sub_20B520158(v5, &qword_27C761800, &qword_20C14FDA0);
LABEL_5:

    v12 = *(v0 + 8);

    return v12();
  }

  v6 = *(v0 + 448);
  v7 = *(v0 + 432);
  v8 = *(v0 + 440);
  v9 = *(v0 + 400);
  sub_20B520158(*(v0 + 456), &qword_27C761800, &qword_20C14FDA0);
  v10 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
  swift_beginAccess();
  (*(v8 + 16))(v6, v9 + v10, v7);
  LOBYTE(v9) = sub_20C133924();
  (*(v8 + 8))(v6, v7);
  if (v9)
  {
    v11 = *(v0 + 496);

    sub_20C06F440(v11);
    goto LABEL_5;
  }

  v14 = swift_task_alloc();
  *(v0 + 488) = v14;
  *v14 = v0;
  v14[1] = sub_20C06D7F4;

  return sub_20C06F7C4();
}

uint64_t sub_20C06D7F4(char a1)
{
  v2 = *v1;
  *(*v1 + 497) = a1;

  v3 = *(v2 + 480);
  v4 = *(v2 + 472);

  return MEMORY[0x2822009F8](sub_20C06D91C, v4, v3);
}

uint64_t sub_20C06D91C()
{
  v1 = *(v0 + 497);
  v2 = *(v0 + 400);

  v3 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_isSubscribed;
  *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_isSubscribed) = v1;
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_lazyLockupFetcher);
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = sub_20C073B48;
  v5[4] = v2;

  sub_20C02AE88(sub_20C073B50, v5);
  v7 = v6;

  v8 = *(v2 + v3);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  v9 = 0x800000020C1BBAB0;
  v10 = 0xD000000000000013;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  if (!v8)
  {
    v10 = 0;
  }

  *(v0 + 224) = 128;
  if (!v8)
  {
    v9 = 0;
  }

  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 248) = v10;
  *(v0 + 256) = v9;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0;
  *(v0 + 280) = v8;
  v11 = MEMORY[0x277D84F90];
  *(v0 + 288) = v7;
  *(v0 + 296) = v11;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0;
  *(v0 + 344) = 2;
  nullsub_1();
  v12 = v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row;
  v14 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 16);
  v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 32);
  *(v0 + 16) = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row);
  *(v0 + 32) = v14;
  *(v0 + 48) = v13;
  v15 = *(v12 + 80);
  v16 = *(v12 + 96);
  v17 = *(v12 + 64);
  *(v0 + 64) = *(v12 + 48);
  *(v0 + 112) = v16;
  *(v0 + 96) = v15;
  *(v0 + 80) = v17;
  v19 = *(v12 + 128);
  v18 = *(v12 + 144);
  v20 = *(v12 + 160);
  *(v0 + 128) = *(v12 + 112);
  *(v0 + 176) = v20;
  *(v0 + 160) = v18;
  *(v0 + 144) = v19;
  v21 = *(v0 + 184);
  v22 = *(v0 + 216);
  *(v12 + 16) = *(v0 + 200);
  *(v12 + 32) = v22;
  *v12 = v21;
  v23 = *(v0 + 232);
  v24 = *(v0 + 248);
  v25 = *(v0 + 280);
  *(v12 + 80) = *(v0 + 264);
  *(v12 + 96) = v25;
  *(v12 + 48) = v23;
  *(v12 + 64) = v24;
  v26 = *(v0 + 296);
  v27 = *(v0 + 312);
  v28 = *(v0 + 328);
  *(v12 + 160) = *(v0 + 344);
  *(v12 + 128) = v27;
  *(v12 + 144) = v28;
  *(v12 + 112) = v26;
  sub_20B520158(v0 + 16, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    goto LABEL_7;
  }

  v30 = Strong;
  sub_20B61E008(*(v0 + 400), Strong);
  if (!v32)
  {
    sub_20C0C2D50(0);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v34 = v31;
  v35 = v32;
  v36 = v33;
  v38 = *(v0 + 416);
  v37 = *(v0 + 424);
  v39 = *(v0 + 408);
  sub_20B5E2E18();
  *v37 = sub_20C13D374();
  (*(v38 + 104))(v37, *MEMORY[0x277D85200], v39);
  v40 = sub_20C13C584();
  result = (*(v38 + 8))(v37, v39);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_20B6218E8(v34, v35, v36, *(v0 + 400), *(v0 + 496), v30);
  swift_unknownObjectRelease();

LABEL_11:

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_20C06DC50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20C06DCE4(1);
}

uint64_t sub_20C06DCE4(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 240) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270, &qword_20C155560);
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v4 = sub_20C136594();
  *(v2 + 112) = v4;
  *(v2 + 120) = *(v4 - 8);
  *(v2 + 128) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  *(v2 + 136) = v5;
  *(v2 + 144) = *(v5 - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = sub_20C13CDA4();
  *(v2 + 168) = sub_20C13CD94();
  v6 = swift_task_alloc();
  *(v2 + 176) = v6;
  *v6 = v2;
  v6[1] = sub_20C06DED0;

  return sub_20C06E94C();
}

uint64_t sub_20C06DED0(uint64_t a1)
{
  v2 = *v1;
  v2[23] = a1;

  v4 = sub_20C13CD24();
  v2[24] = v4;
  v2[25] = v3;

  return MEMORY[0x2822009F8](sub_20C06E01C, v4, v3);
}

uint64_t sub_20C06E01C()
{
  v1 = v0[23];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_resumableWorkoutSessions;
  swift_beginAccess();
  *(v2 + v3) = v1;

  v4 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_itemReferences;
  swift_beginAccess();
  v0[8] = *(v2 + v4);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E80, &qword_20C1555A0);
  sub_20C073C60();
  sub_20C073CC4(&qword_27C762288, MEMORY[0x277D51FE0], MEMORY[0x277D51FF0]);
  v5 = sub_20C13CBF4();

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v0[15];
    v8 = v0[11];
    v20 = MEMORY[0x277D84F90];
    sub_20BB5D604(0, v6, 0);
    v9 = v20;
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    do
    {
      v11 = v0[12];
      v12 = v0[13];
      sub_20B52F9E8(v10, v12, &unk_27C772270, &qword_20C155560);
      sub_20B52F9E8(v12, v11, &unk_27C772270, &qword_20C155560);
      sub_20C1367E4();

      sub_20C136554();
      sub_20B520158(v12, &unk_27C772270, &qword_20C155560);
      v13 = sub_20C135C54();
      (*(*(v13 - 8) + 8))(v11, v13);
      v15 = *(v20 + 16);
      v14 = *(v20 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_20BB5D604((v14 > 1), v15 + 1, 1);
      }

      v16 = v0[16];
      v17 = v0[14];
      *(v20 + 16) = v15 + 1;
      (*(v7 + 32))(v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v16, v17);
      v10 += v19;
      --v6;
    }

    while (v6);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  sub_20C02BC6C(v9, v0[19]);

  return MEMORY[0x2822009F8](sub_20C06E388, 0, 0);
}

uint64_t sub_20C06E388()
{
  v1 = v0[19];
  v2 = swift_task_alloc();
  v0[26] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanWeekdayDetailShelf.swift";
  *(v2 + 24) = 45;
  *(v2 + 32) = 2;
  *(v2 + 40) = 112;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_20C06E498;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526AD8, v2, v4);
}

uint64_t sub_20C06E498()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_20C06E840;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v4 = v2[24];
    v5 = v2[25];
    v3 = sub_20C06E5F0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20C06E5F0()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_20C06E688;
  v2 = *(v0 + 240);

  return sub_20C06D428(v2);
}

uint64_t sub_20C06E688()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_20C06E7A8, v3, v2);
}

uint64_t sub_20C06E7A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C06E840()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[24];
  v2 = v0[25];

  return MEMORY[0x2822009F8](sub_20C06E8B4, v1, v2);
}

uint64_t sub_20C06E8B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C06E94C()
{
  v1[10] = v0;
  v2 = sub_20C13BB84();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290, &unk_20C17F5C0);
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = sub_20C135C54();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C06EAD0, 0, 0);
}

uint64_t sub_20C06EAD0()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_itemReferences;
  swift_beginAccess();
  v45 = v2;

  v3 = sub_20B71C580();

  v5 = sub_20C06C3E4(v4);

  v6 = sub_20B71A56C(v5);

  if (*(v6 + 16) <= *(v3 + 16) >> 3)
  {
    sub_20B6CE83C(v6);

    v7 = v3;
  }

  else
  {
    v7 = sub_20B6D0E2C(v6, v3);
  }

  v8 = v0[18];
  v9 = -1;
  v10 = -1 << *(v7 + 32);
  if (-v10 < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 56);
  v12 = (63 - v10) >> 6;
  v13 = (v8 + 8);

  v22 = 0;
  v23 = MEMORY[0x277D84F90];
LABEL_7:
  v44 = v23;
  v0[20] = v23;
  while (v11)
  {
LABEL_14:
    v27 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    (*(v8 + 16))(v0[19], *(v7 + 48) + *(v8 + 72) * (v27 | (v22 << 6)), v0[17]);
    swift_beginAccess();
    if (*(*(v1 + v45) + 16))
    {
      sub_20B65B0BC(v0[19]);
      if (v28)
      {
        v41 = v0[17];
        v42 = v0[19];
        swift_endAccess();

        v29 = sub_20C1367E4();
        v43 = v30;

        (*v13)(v42, v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_20BC05BA4(0, *(v44 + 16) + 1, 1, v44);
          v44 = isUniquelyReferenced_nonNull_native;
        }

        v32 = *(v44 + 16);
        v31 = *(v44 + 24);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_20BC05BA4((v31 > 1), v32 + 1, 1, v44);
          v33 = v32 + 1;
          v44 = isUniquelyReferenced_nonNull_native;
        }

        *(v44 + 16) = v33;
        v34 = v44 + 16 * v32;
        *(v34 + 32) = v29;
        *(v34 + 40) = v43;
        v23 = v44;
        goto LABEL_7;
      }
    }

    v24 = v0[19];
    v25 = v0[17];
    swift_endAccess();
    isUniquelyReferenced_nonNull_native = (*v13)(v24, v25);
  }

  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return MEMORY[0x2822008A0](isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v20, v21);
    }

    if (v26 >= v12)
    {
      break;
    }

    v11 = *(v7 + 56 + 8 * v26);
    ++v22;
    if (v11)
    {
      v22 = v26;
      goto LABEL_14;
    }
  }

  v35 = v0[16];
  v36 = v0[10];

  __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_archivedSessionClient), *(v36 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_archivedSessionClient + 24));

  sub_20B527580(v37);

  sub_20C139B94();

  v38 = swift_task_alloc();
  v0[21] = v38;
  *(v38 + 16) = "SeymourUI/WorkoutPlanWeekdayDetailShelf.swift";
  *(v38 + 24) = 45;
  *(v38 + 32) = 2;
  *(v38 + 40) = 282;
  *(v38 + 48) = v35;
  v39 = swift_task_alloc();
  v0[22] = v39;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763850, &unk_20C154780);
  *v39 = v0;
  v39[1] = sub_20C06EF28;
  v19 = sub_20C073D0C;
  isUniquelyReferenced_nonNull_native = (v0 + 8);
  v18 = 0x800000020C192D10;
  v15 = 0;
  v16 = 0;
  v17 = 0xD000000000000013;
  v20 = v38;

  return MEMORY[0x2822008A0](isUniquelyReferenced_nonNull_native, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_20C06EF28()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = sub_20C06F1D8;
  }

  else
  {
    v5 = v2[15];
    v4 = v2[16];
    v6 = v2[14];

    v2[24] = v2[8];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20C06F0A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C06F0A0()
{
  v9 = v0;
  v1 = v0[23];
  v2 = sub_20C06C7A8(v0[24]);

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7722A0, &qword_20C154CB8);
    v3 = sub_20C13DE84();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v8 = v3;

  sub_20C0731C0(v4, 1, &v8);
  if (v1)
  {

    return swift_unexpectedError();
  }

  else
  {

    v6 = v8;

    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_20C06F1D8()
{
  v25 = v0;
  v1 = v0[23];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_20C13B454();

  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = v0[20];
    v7 = v0[12];
    v23 = v0[13];
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 134218242;
    v11 = *(v6 + 16);

    *(v9 + 4) = v11;

    *(v9 + 12) = 2082;
    v0[9] = v5;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    v13 = sub_20C13C9D4();
    v15 = sub_20B51E694(v13, v14, &v24);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_20B517000, v3, v4, "Unable to query resumable sessions for %ld: %{public}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    (*(v7 + 8))(v23, v8);
  }

  else
  {
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];
    swift_bridgeObjectRelease_n();

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[23];
  v20 = sub_20B6B0A18(MEMORY[0x277D84F90]);

  v21 = v0[1];

  return v21(v20);
}

void sub_20C06F440(int a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlanStringBuilder);
  v9 = v8[9];
  v10 = v8[10];
  __swift_project_boxed_opaque_existential_1(v8 + 6, v9);
  *(v7 + 40) = sub_20B5E107C(0x5941445F54534552, 0xEE00454C5449545FLL, v9, v10);
  *(v7 + 48) = v11;
  *(v7 + 24) = 0;
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20C14F980;
  *(v12 + 32) = v7 | 0x1000000000000006;
  v36 = 0uLL;
  LOBYTE(v37) = 1;
  *(&v37 + 1) = 0;
  *&v38 = 0;
  WORD4(v38) = 128;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  LOBYTE(v42) = 0;
  *(&v42 + 1) = v12;
  *&v43[0] = MEMORY[0x277D84F90];
  *(v43 + 8) = 0u;
  *(&v43[1] + 8) = 0u;
  *(&v43[2] + 1) = 0;
  v44 = 2;
  nullsub_1();
  v13 = v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row;
  v14 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 144);
  v45[8] = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 128);
  v45[9] = v14;
  v46 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 160);
  v15 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 80);
  v45[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 64);
  v45[5] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 112);
  v45[6] = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 96);
  v45[7] = v16;
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 16);
  v45[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row);
  v45[1] = v17;
  v18 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 48);
  v45[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 32);
  v45[3] = v18;
  v19 = v43[2];
  *(v13 + 128) = v43[1];
  *(v13 + 144) = v19;
  *(v13 + 160) = v44;
  v20 = v41;
  *(v13 + 64) = v40;
  *(v13 + 80) = v20;
  v21 = v43[0];
  *(v13 + 96) = v42;
  *(v13 + 112) = v21;
  v22 = v37;
  *v13 = v36;
  *(v13 + 16) = v22;
  v23 = v39;
  *(v13 + 32) = v38;
  *(v13 + 48) = v23;

  sub_20B520158(v45, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v25 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v34 = a1;
    sub_20B61E008(v2, Strong);
    if (v27)
    {
      v29 = v27;
      v30 = v28;
      v33 = v26;
      sub_20B5E2E18();
      *v6 = sub_20C13D374();
      v31 = v35;
      (*(v35 + 104))(v6, *MEMORY[0x277D85200], v4);
      v32 = sub_20C13C584();
      (*(v31 + 8))(v6, v4);
      if ((v32 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_20B6218E8(v33, v29, v30, v2, v34 & 1, v25);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20C06F7C4()
{
  v1[6] = v0;
  v2 = sub_20C13BB84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C06F884, 0, 0);
}

uint64_t sub_20C06F884()
{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_subscriptionCache);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_20B6162B0;

  return MEMORY[0x2821B5680](v3, v2);
}

unint64_t sub_20C06F948(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v118 = a1;
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v108 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133954();
  v107 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v106 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
  MEMORY[0x28223BE20](v10);
  v12 = &v92 - v11;
  v13 = sub_20C134014();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a2 >> 57) & 0x78 | a2 & 7) == 0x20)
  {
    v94 = v6;
    v95 = v5;
    v17 = swift_projectBox();
    sub_20B52F9E8(v17, v12, &unk_27C772250, &unk_20C150590);
    v18 = &v12[v10[16]];
    v19 = *(v18 + 1);
    v113 = *v18;
    v114 = v19;
    v20 = *(v18 + 2);
    v117 = *(v18 + 3);
    v22 = *(v18 + 4);
    v21 = *(v18 + 5);
    v115 = v22;
    v109 = v21;
    v110 = v20;
    v23 = sub_20B6222E8(*&v12[v10[20]], *&v12[v10[20] + 8], *&v12[v10[20] + 16], *&v12[v10[20] + 24]);
    LODWORD(v101) = v12[v10[28]];
    v24 = *&v12[v10[32]];
    (*(v14 + 32))(v16, v12, v13, v23);
    v102 = sub_20C0702A8(v16, v118);
    v25 = sub_20C133E44();
    v27 = v26;
    v28 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_descriptions;
    swift_beginAccess();
    v116 = a3;
    v29 = *(a3 + v28);
    v30 = *(v29 + 16);
    v105 = v14;
    v93 = v8;
    if (v30)
    {
      v31 = sub_20B65AA60(v25, v27);
      v33 = v32;

      if (v33)
      {
        v34 = (*(v29 + 56) + 16 * v31);
        v35 = *v34;
        v36 = v34[1];
        swift_endAccess();
        v37 = objc_allocWithZone(MEMORY[0x277CCA898]);

        v38 = v113;
        v39 = v114;
        v40 = sub_20C13C914();
        v41 = [v37 initWithString_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
        v42 = *(sub_20C138094() - 8);
        v43 = v13;
        v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_20C14F980;
        v46 = (v45 + v44);
        v13 = v43;
        *v46 = v35;
        v46[1] = v36;
        v47 = v41;
        v14 = v105;
        swift_storeEnumTagMultiPayload();
        v48 = v115;
        goto LABEL_8;
      }
    }

    else
    {
    }

    swift_endAccess();
    v49 = v113;
    v50 = v114;
    v47 = v110;

    v48 = v115;
    v45 = v109;
LABEL_8:
    v112 = v45;

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70, &unk_20C1512E0);
    v103 = swift_allocBox();
    v104 = v13;
    v53 = v52;
    v54 = v51[12];
    (*(v14 + 16))(v52, v16, v13);
    v111 = v16;
    v55 = v116;
    v53[v54] = *(*(v116 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_lazyLockupFetcher) + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119[0] = v24;
    sub_20B622330(v102, sub_20B6219F8, 0, isUniquelyReferenced_nonNull_native, v119);

    v98 = 0;
    v100 = &v92;
    v58 = v51[16];
    v59 = v51[20];
    v60 = v51[24];
    v61 = v51[28];
    v102 = v51;
    v97 = v51[32];
    *&v53[v58] = v119[0];
    v62 = &v53[v59];
    v63 = &v53[v60];
    v64 = v114;
    *v62 = v113;
    v62[1] = v64;
    v65 = v117;
    v62[2] = v47;
    v62[3] = v65;
    v66 = v112;
    v62[4] = v48;
    v62[5] = v66;
    *v63 = xmmword_20C157520;
    *(v63 + 3) = 0;
    *(v63 + 4) = 0;
    *(v63 + 2) = 0;
    *(v63 + 20) = 0;
    v53[v61] = v101;
    v96 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics;
    v67 = *(v55 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics);
    MEMORY[0x28223BE20](v57);
    v68 = v111;
    v69 = v118;
    *(&v92 - 2) = v111;
    *(&v92 - 1) = v69;
    v113 = v70;
    v101 = v64;
    v99 = v47;

    LOBYTE(v64) = sub_20B796C44(sub_20C073B5C, (&v92 - 4), v67);

    v114 = v53;
    v53[v97] = v64 & 1;
    v72 = v116;
    v73 = *(v116 + v96);
    MEMORY[0x28223BE20](v71);
    *(&v92 - 2) = v68;
    *(&v92 - 1) = v69;

    LOBYTE(v64) = sub_20B796C44(sub_20C073F14, (&v92 - 4), v73);

    if (v64)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v74 = v101;
      v75 = v113;
    }

    else
    {
      v76 = v99;
      v77 = v101;
      v78 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
      swift_beginAccess();
      v79 = v106;
      v80 = v107;
      v81 = v93;
      (*(v107 + 16))(v106, v72 + v78, v93);
      v82 = v108;
      sub_20C132E64();
      v83 = sub_20C133904();
      LOBYTE(v78) = v84;
      (*(v94 + 8))(v82, v95);
      (*(v80 + 8))(v79, v81);
      if ((v78 & 1) == 0)
      {
        v87 = sub_20C135204();

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        v88 = v113;
        v86 = v87 == v83;
        goto LABEL_14;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v85 = v113;
    }

    v86 = 0;
LABEL_14:
    v89 = v114;
    v90 = *(v102 + 36);
    (*(v105 + 8))(v111, v104);
    v89[v90] = v86;
    return v103 | 0x9000000000000002;
  }

  return a2;
}

void *sub_20C0702A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C135214();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0, &unk_20C14FE60);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v54 - v12;
  v14 = sub_20C134104();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_configuration;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v18, v13, &qword_27C761800, &qword_20C14FDA0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &qword_27C761800, &qword_20C14FDA0);
    return sub_20B6B2348(MEMORY[0x277D84F90]);
  }

  (*(v15 + 32))(v17, v13, v14);
  v20 = v2;
  if (!sub_20C0709AC(a1, a2))
  {
    goto LABEL_13;
  }

  v21 = sub_20C133FF4();
  if (v23 == -1)
  {
    goto LABEL_13;
  }

  if ((v23 & 1) == 0)
  {
    sub_20B584078(v21, v22, v23);
LABEL_13:
    v39 = sub_20B6B2348(MEMORY[0x277D84F90]);
    (*(v15 + 8))(v17, v14);
    return v39;
  }

  v57 = a2;
  v24 = v21;
  v25 = sub_20C133F74();
  MEMORY[0x28223BE20](v25);
  v54[-2] = v17;
  LOBYTE(v54[-1]) = v24;
  v56 = v24;
  if ((v24 & 0xFE) != 0)
  {
    v26 = sub_20B622280;
  }

  else
  {
    v26 = sub_20B6222C8;
  }

  v55 = sub_20B613908(v26, &v54[-4], v25);
  v54[1] = 0;

  v27 = sub_20C133E44();
  v29 = v28;
  v30 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_resumableWorkoutSessions;
  swift_beginAccess();
  v31 = *(v20 + v30);
  if (*(v31 + 16))
  {
    v32 = sub_20B65AA60(v27, v29);
    v34 = v33;

    v35 = v62;
    if (v34)
    {
      v36 = *(v31 + 56);
      v37 = sub_20C134D54();
      v38 = *(v37 - 8);
      (*(v38 + 16))(v35, v36 + *(v38 + 72) * v32, v37);
      (*(v38 + 56))(v35, 0, 1, v37);
    }

    else
    {
      v41 = sub_20C134D54();
      (*(*(v41 - 8) + 56))(v35, 1, 1, v41);
    }
  }

  else
  {

    v40 = sub_20C134D54();
    v35 = v62;
    (*(*(v40 - 8) + 56))(v62, 1, 1, v40);
  }

  swift_endAccess();
  v42 = sub_20C133E44();
  v44 = v43;
  (*(v59 + 16))(v58, v20 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_offset, v60);
  v45 = v61;
  sub_20C135BF4();
  v46 = sub_20C135C54();
  v47 = (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  MEMORY[0x28223BE20](v47);
  v48 = v55;
  LOBYTE(v54[-8]) = v56;
  v54[-7] = v49;
  v54[-6] = v48;
  v54[-5] = v35;
  v54[-4] = v42;
  v54[-3] = v44;
  v54[-2] = v45;
  v50 = sub_20B6142EC(sub_20C073B7C, &v54[-10], v48);

  sub_20B520158(v45, &qword_27C76A410, &unk_20C14FBC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A40, &unk_20C1512B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 0;
  v52 = inited + 32;
  *(inited + 40) = v50;
  v53 = sub_20B6B2348(inited);
  swift_setDeallocating();
  sub_20B520158(v52, &unk_27C762A50, &unk_20C1512C0);
  sub_20B520158(v35, &unk_27C7623D0, &unk_20C14FE60);
  (*(v15 + 8))(v17, v14);
  return v53;
}

BOOL sub_20C0709AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C133954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_isSubscribed) != 1)
  {
    return 0;
  }

  v21 = v6;
  v22 = v5;
  v14 = *(v2 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics);
  MEMORY[0x28223BE20](v11);
  *(&v21 - 2) = a1;
  *(&v21 - 1) = a2;

  v15 = sub_20B796C44(sub_20C073F14, (&v21 - 4), v14);

  if (v15)
  {
    return 0;
  }

  v16 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
  swift_beginAccess();
  (*(v10 + 16))(v13, v2 + v16, v9);
  sub_20C132E64();
  v17 = sub_20C133904();
  v19 = v18;
  (*(v21 + 8))(v8, v22);
  (*(v10 + 8))(v13, v9);
  return (v19 & 1) == 0 && v17 >= sub_20C135204();
}

BOOL sub_20C070C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v20 = sub_20C135C54();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C136104();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = a1;
  sub_20C137264();
  v11 = sub_20C1360D4();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  if (v11 == sub_20C133E44() && v13 == v14)
  {

    goto LABEL_8;
  }

  v16 = sub_20C13DFF4();

  result = 0;
  if (v16)
  {
LABEL_8:
    sub_20C137284();
    v18 = sub_20C135C34();
    (*(v4 + 8))(v6, v20);
    return v18 == v21;
  }

  return result;
}

uint64_t sub_20C070E3C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 144);
  v13[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 128);
  v13[9] = v3;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 80);
  v13[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 64);
  v13[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 112);
  v13[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 96);
  v13[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 16);
  v13[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row);
  v13[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 48);
  v13[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 32);
  v13[3] = v7;
  sub_20B520158(v13, &qword_27C762340, &unk_20C150290);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_archivedSessionClient));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_catalogClient));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_subscriptionCache));

  v8 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_offset;
  v9 = sub_20C135214();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_storefrontLocalizer));

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_configuration, &qword_27C761800, &qword_20C14FDA0);

  v10 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
  v11 = sub_20C133954();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_20C071080()
{
  sub_20C070E3C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanWeekdayDetailShelf(uint64_t a1)
{
  result = qword_27C772230;
  if (!qword_27C772230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C07112C(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20C135214();
    if (v2 <= 0x3F)
    {
      sub_20B524ACC(319);
      if (v3 <= 0x3F)
      {
        sub_20C133954();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

double sub_20C0712E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-1] - v3;
  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C13CDC4();
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_20B6383D0(0, 0, v4, &unk_20C18BC38, v6);

  return result;
}

double sub_20C0714C4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_20C13CDF4();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    sub_20C13CDA4();

    v7 = sub_20C13CD94();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;

    sub_20B6380FC(0, 0, v3, &unk_20C18BC80, v8);
  }

  return result;
}

uint64_t sub_20C071650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_20C13BB84();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[7] = v6;
  *v6 = v4;
  v6[1] = sub_20C071744;

  return sub_20C06DCE4(0);
}

uint64_t sub_20C071744()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C071880, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20C071880(uint64_t a1)
{
  v25 = v1;
  v2 = *(v1 + 64);
  sub_20C13B454();

  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 40);
    v22 = *(v1 + 32);
    v23 = *(v1 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;
    sub_20C135214();
    sub_20C073CC4(&unk_27C772260, MEMORY[0x277D51640], MEMORY[0x277D51660]);
    v10 = sub_20C13DFA4();
    v12 = sub_20B51E694(v10, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v1 + 16) = v6;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    v14 = sub_20C13C9D4();
    v16 = sub_20B51E694(v14, v15, &v24);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_20B517000, v4, v5, "Failed to activate weekday detail %s: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v7 + 8))(v23, v22);
  }

  else
  {
    v18 = *(v1 + 40);
    v17 = *(v1 + 48);
    v19 = *(v1 + 32);

    (*(v18 + 8))(v17, v19);
  }

  v20 = *(v1 + 8);

  return v20();
}

uint64_t sub_20C071B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772240, &qword_20C155EF8);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  sub_20C13CDA4();
  v5[16] = sub_20C13CD94();
  v10 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C071C88, v10, v9);
}

uint64_t sub_20C071C88()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(v0 + 112);
    v2 = *(v0 + 96);
    v18 = *(v0 + 120);
    v19 = *(v0 + 104);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);

    sub_20C02C77C(v7, v2);

    v9 = swift_allocObject();
    *(v9 + 16) = sub_20C073974;
    *(v9 + 24) = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_20C07397C;
    *(v10 + 24) = v9;
    (*(v5 + 16))(v4, v2, v6);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v4, v6);
    v13 = (v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v13 = sub_20C0739BC;
    v13[1] = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772248, &qword_20C18BC00);
    sub_20C137C94();
    (*(v5 + 8))(v2, v6);
    v14 = sub_20C137CB4();
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    v14(sub_20B52E4A0, v15);

    (*(v20 + 8))(v18, v19);
  }

  **(v0 + 40) = Strong == 0;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_20C071F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_20C13CDA4();

  v6 = sub_20C13CD94();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  return sub_20B6380FC(0, 0, v4, &unk_20C18BC10, v7);
}

uint64_t sub_20C07208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_20C072124, v6, v5);
}

uint64_t sub_20C072124()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_20BCD6534;

    return sub_20C06D428(1);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

void sub_20C07222C(unint64_t a1, void *a2, uint64_t a3)
{
  v129 = a2;
  v114 = a3;
  v4 = sub_20C13BB84();
  v126 = *(v4 - 8);
  v127 = v4;
  MEMORY[0x28223BE20](v4);
  v125 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v108);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133954();
  v109 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v117 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C135214();
  v112 = *(v10 - 8);
  v113 = v10;
  MEMORY[0x28223BE20](v10);
  v111 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for WorkoutPlanSwappableItem(0);
  MEMORY[0x28223BE20](v110);
  v118 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50, &unk_20C14FB70);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = (&v106 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v15 - 8);
  v119 = (&v106 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v123 = *(v17 - 8);
  v124 = v17;
  MEMORY[0x28223BE20](v17);
  v122 = &v106 - v18;
  v19 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v19 - 8);
  v120 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70, &unk_20C1512E0);
  MEMORY[0x28223BE20](v24);
  v26 = &v106 - v25;
  v27 = sub_20C134014();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x4A)
  {
    v106 = v7;
    v107 = v8;
    v31 = swift_projectBox();
    sub_20B52F9E8(v31, v26, &unk_27C762A70, &unk_20C1512E0);

    v32 = &v26[*(v24 + 80)];
    v33 = v27;
    v115 = v30;
    v116 = v28;
    v35 = *v32;
    v34 = *(v32 + 1);
    v36 = *(v32 + 2);

    v37 = v116;
    v38 = v115;

    v39 = v27;
    v40 = sub_20B6222E8(*&v26[*(v24 + 96)], *&v26[*(v24 + 96) + 8], *&v26[*(v24 + 96) + 16], *&v26[*(v24 + 96) + 24]);
    (*(v37 + 32))(v38, v26, v27, v40);
    sub_20B5EAE70(v129, v23);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      v55 = v128;
      v56 = *v23;
      v57 = sub_20C133FE4();
      if (v58)
      {
        (*(v37 + 8))(v38, v27);
      }

      else
      {
        v63 = v57;
        v129 = v56;
        v64 = sub_20C133E44();
        v66 = v65;
        v67 = sub_20C133FF4();
        v69 = v68;
        v71 = v70;
        v72 = v55;
        (*(v112 + 16))(v111, v55 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_offset, v113);
        v73 = v118;
        v74 = v66;
        sub_20C135BF4();
        *v73 = v63;
        *(v73 + 8) = v64;
        *(v73 + 16) = v66;
        *(v73 + 24) = v67;
        *(v73 + 32) = v69;
        *(v73 + 40) = v71;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v76 = Strong;
          v77 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
          swift_beginAccess();
          v78 = v109;
          (*(v109 + 16))(v117, v72 + v77, v107);
          v79 = sub_20C136664();
          v80 = v106;
          (*(*(v79 - 8) + 56))(v106, 1, 1, v79);
          v81 = v108;
          v82 = *(v108 + 20);
          v83 = *MEMORY[0x277D513D8];
          v84 = sub_20C134F24();
          (*(*(v84 - 8) + 104))(v80 + v82, v83, v84);
          v85 = v81[6];
          v86 = sub_20C132C14();
          (*(*(v86 - 8) + 56))(v80 + v85, 1, 1, v86);
          v87 = v81[8];
          v88 = sub_20C135ED4();
          (*(*(v88 - 8) + 56))(v80 + v87, 1, 1, v88);
          v89 = v81[10];
          v90 = *MEMORY[0x277D51768];
          v91 = sub_20C1352E4();
          (*(*(v91 - 8) + 104))(v80 + v89, v90, v91);
          v92 = v81[11];
          v93 = sub_20C136E94();
          (*(*(v93 - 8) + 56))(v80 + v92, 1, 1, v93);

          v94 = sub_20B6B29D4(MEMORY[0x277D84F90]);
          v95 = (v80 + v81[7]);
          *v95 = v64;
          v95[1] = v74;
          v96 = (v80 + v81[9]);
          *v96 = 0;
          v96[1] = 0;
          *(v80 + v81[12]) = v94;
          sub_20BF9FD54(v72, v80, v76);
          v97 = v76 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
          v98 = swift_unknownObjectWeakLoadStrong();
          v99 = v129;
          if (v98)
          {
            v100 = *(v97 + 8);
            ObjectType = swift_getObjectType();
            v103 = v117;
            v102 = v118;
            (*(v100 + 272))(v76, v118, v117, v99, ObjectType, v100);
            swift_unknownObjectRelease();
            v105 = v115;
            v104 = v116;
          }

          else
          {
            v105 = v115;
            v104 = v116;
            v103 = v117;
            v102 = v118;
          }

          swift_unknownObjectRelease();

          sub_20C073854(v106, type metadata accessor for ShelfMetricAction);
          (*(v78 + 8))(v103, v107);
          sub_20C073854(v102, type metadata accessor for WorkoutPlanSwappableItem);
          (*(v104 + 8))(v105, v39);
        }

        else
        {

          sub_20C073854(v73, type metadata accessor for WorkoutPlanSwappableItem);
          (*(v116 + 8))(v115, v39);
        }
      }
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v42 = v23;
      v43 = v120;
      sub_20B5F6860(v42, v120);
      v44 = sub_20C133E44();
      v46 = v45;
      v47 = sub_20C135ED4();
      v48 = v119;
      (*(*(v47 - 8) + 56))(v119, 1, 1, v47);
      v49 = sub_20C1352E4();
      v50 = v121;
      (*(*(v49 - 8) + 56))(v121, 1, 1, v49);
      v51 = v122;
      sub_20B5A7F7C(v43, v44, v46, v48, 0, 0, v50, v122);

      sub_20B520158(v50, &unk_27C765D50, &unk_20C14FB70);
      sub_20B520158(v48, &unk_27C7621D0, &unk_20C14D9B0);
      v52 = v124;
      v53 = sub_20C137CB4();
      v54 = swift_allocObject();
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      v53(sub_20B52347C, v54);

      (*(v123 + 8))(v51, v52);
      sub_20C073854(v43, type metadata accessor for ButtonAction);
      (*(v37 + 8))(v38, v33);
    }

    else
    {
      v59 = v125;
      sub_20C13B534();
      v60 = sub_20C13BB74();
      v61 = sub_20C13D1D4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_20B517000, v60, v61, "[WorkoutPlanWeekdayDetailShelf] Unexpected shelf item action", v62, 2u);
        MEMORY[0x20F2F6A40](v62, -1, -1);
      }

      (*(v126 + 8))(v59, v127);
      (*(v37 + 8))(v38, v33);
      sub_20C073854(v23, type metadata accessor for ShelfItemAction);
    }
  }
}

uint64_t sub_20C072EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C072F5C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

double sub_20C07301C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  v7 = sub_20C13CD94();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = a1;

  sub_20B6380FC(0, 0, v4, &unk_20C18BBF0, v8);

  return result;
}

BOOL sub_20C07317C(uint64_t a1)
{
  v2 = *(sub_20C02A560() + 16);

  return v2 - 1 > a1;
}

void sub_20C0731C0(uint64_t a1, char a2, void *a3)
{
  v59 = sub_20C134D54();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639B0, &unk_20C16F050);
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v50 - v10);
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v56 + 80);
  v55 = a1;
  v14 = (v57 + 32);
  v52 = a1 + ((v13 + 32) & ~v13);
  sub_20B52F9E8(v52, v11, &qword_27C7639B0, &unk_20C16F050);
  v15 = v11[1];
  v62 = *v11;
  v16 = v62;
  v63 = v15;
  v17 = *v14;
  v53 = v12;
  v51 = v17;
  v17(v58, v11 + v12, v59);
  v18 = *a3;
  v20 = sub_20B65AA60(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_20BA121C8();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_20BA0DE90(v23, a2 & 1);
  v25 = sub_20B65AA60(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v51((v29[7] + *(v57 + 72) * v20), v58, v59);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v54 != 1)
      {
        v34 = 1;
        while (v34 < *(v55 + 16))
        {
          sub_20B52F9E8(v52 + *(v56 + 72) * v34, v11, &qword_27C7639B0, &unk_20C16F050);
          v35 = v11[1];
          v62 = *v11;
          v36 = v62;
          v63 = v35;
          v37 = *v14;
          (*v14)(v58, v11 + v53, v59);
          v38 = *a3;
          v39 = sub_20B65AA60(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_20BA0DE90(v43, 1);
            v39 = sub_20B65AA60(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v57 + 72) * v39), v58, v59);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v54 == v34)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v64 = v27;
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v57 + 8))(v58, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_20C13E054();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD00000000000001BLL, 0x800000020C1B67A0);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](39, 0xE100000000000000);
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C07372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772248, &qword_20C18BC00);

  return sub_20C137C94();
}

double sub_20C0737C4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v6);
  v4 = v6;
  v7 = 0;
  a1(&v6);

  return sub_20C073A88(v4, 0);
}

uint64_t sub_20C073854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C0738B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20C071B08(a1, v4, v5, v7, v6);
}

uint64_t sub_20C07397C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_20C0739C4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E353C(a1, a2, v2 + v6, v8, v9);
}

double sub_20C073A88(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_20C073A94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20C07208C(a1, v4, v5, v6);
}

uint64_t sub_20C073BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20C071650(a1, v4, v5, v6);
}

unint64_t sub_20C073C60()
{
  result = qword_27C772280;
  if (!qword_27C772280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C763E80, &qword_20C1555A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772280);
  }

  return result;
}

uint64_t sub_20C073CC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C073D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639B0, &unk_20C16F050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C073DAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20C06D144(a1, v4, v5, v6);
}

uint64_t sub_20C073E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20C06D144(a1, v4, v5, v6);
}

double sub_20C073F34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_20C134614();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C136594();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v29 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = sub_20BEDEF30(*(a1 + 16), 0);
    sub_20BEE2CEC(v37, &v10[(*(v5 + 80) + 32) & ~*(v5 + 80)], v9, a1);
    v11 = v37[0];
    v32 = v37[3];
    v33 = v12;
    v31 = v37[4];

    sub_20B583EDC(v11);
    if (v33 == v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_5:
  v37[0] = v10;
  sub_20C075B5C(v37);
  v13 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendations;
  *(v2 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendations) = v37[0];

  v14 = *(v2 + v13);
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v27[2] = v2;
    v28 = a2;
    v37[0] = MEMORY[0x277D84F90];

    sub_20BB5D604(0, v15, 0);
    v16 = v37[0];
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v19 = *(v17 + 64);
    v27[1] = v14;
    v20 = v14 + ((v19 + 32) & ~v19);
    v31 = *(v17 + 56);
    v32 = v18;
    v33 = v17;
    v21 = (v17 - 8);
    v22 = v35;
    v30 = v36 + 32;
    v23 = v29;
    do
    {
      v32(v7, v20, v22);
      sub_20C1345E4();
      sub_20C1345D4();
      sub_20C136554();
      (*v21)(v7, v22);
      v37[0] = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_20BB5D604((v24 > 1), v25 + 1, 1);
        v23 = v29;
        v16 = v37[0];
      }

      *(v16 + 16) = v25 + 1;
      (*(v36 + 32))(v16 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v25, v23, v34);
      v20 += v31;
      --v15;
    }

    while (v15);

    a2 = v28;
  }

  sub_20C02BC6C(v16, a2);

  return result;
}

void sub_20C0742D0()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_lazyLockupFetcher);

  v56 = v4;
  sub_20C0338E0(v4, v1);
  v57 = v5;

  sub_20C135DA4();
  v6 = sub_20C1352B4();
  v8 = v7;
  if (v6 == sub_20C1352B4() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_20C13DFF4();

    if ((v11 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_storefrontLocalizer + 24));
      v12 = sub_20C138D34();
      v54 = v13;
      v55 = v12;
      goto LABEL_9;
    }
  }

  v54 = 0;
  v55 = 0;
LABEL_9:
  v14 = (v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder + 24));
  sub_20C135E04();
  v15 = sub_20C138544();

  v16 = [v15 string];

  v17 = sub_20C13C954();
  v19 = v18;

  __swift_project_boxed_opaque_existential_1(v14, v14[3]);

  sub_20C135D84();
  v20 = sub_20C138544();

  v21 = [v20 string];

  v22 = sub_20C13C954();
  v24 = v23;

  LOBYTE(v21) = (*(v56 + 144) < 0x2FuLL) & (0x4CE7B617E7E2uLL >> *(v56 + 144));
  v25 = sub_20C135D64();
  *&v58 = v55;
  *(&v58 + 1) = v54;
  LOBYTE(v59) = 1;
  *(&v59 + 1) = 0;
  *&v60 = 0;
  BYTE8(v60) = 0x80;
  BYTE9(v60) = v21;
  v61 = 0uLL;
  *&v62 = v25;
  *(&v62 + 1) = v26;
  *&v63 = v17;
  *(&v63 + 1) = v19;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = v57;
  *&v65 = MEMORY[0x277D84F90];
  *(&v65 + 1) = v22;
  *&v66 = v24;
  *(&v66 + 1) = v17;
  *v67 = v19;
  *&v67[8] = xmmword_20C150190;
  nullsub_1();
  v27 = v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row;
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 144);
  v68[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 128);
  v68[9] = v28;
  v69 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 160);
  v29 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 80);
  v68[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 64);
  v68[5] = v29;
  v30 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 112);
  v68[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 96);
  v68[7] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 16);
  v68[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row);
  v68[1] = v31;
  v32 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 48);
  v68[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 32);
  v68[3] = v32;
  v33 = *v67;
  *(v27 + 128) = v66;
  *(v27 + 144) = v33;
  *(v27 + 160) = *&v67[16];
  v34 = v63;
  *(v27 + 64) = v62;
  *(v27 + 80) = v34;
  v35 = v65;
  *(v27 + 96) = v64;
  *(v27 + 112) = v35;
  v36 = v59;
  *v27 = v58;
  *(v27 + 16) = v36;
  v37 = v61;
  *(v27 + 32) = v60;
  *(v27 + 48) = v37;
  sub_20B520158(v68, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61E030(v1, Strong);
      if (v41)
      {
        v43 = v40;
        v44 = v41;
        v45 = v42;
        sub_20B5E2E18();
        v46 = sub_20C13D374();
        v48 = v51;
        v47 = v52;
        *v51 = v46;
        v49 = v53;
        (*(v47 + 104))(v48, *MEMORY[0x277D85200], v53);
        v50 = sub_20C13C584();
        (*(v47 + 8))(v48, v49);
        if ((v50 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B62192C(v43, v44, v45, v1, 1, v39);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20C074798()
{
  v1 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770B90, &qword_20C157D70);
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v35);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = &v34 - v10;
  MEMORY[0x28223BE20](v11);
  v39 = &v34 - v12;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendationClient), *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendationClient + 24));
  sub_20C1398F4();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20C076F80;
  *(v13 + 24) = v1;
  v14 = v35;
  (*(v2 + 16))(v4, v7, v35);
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v2 + 32))(v17 + v15, v4, v14);
  v18 = (v17 + v16);
  *v18 = sub_20B6331FC;
  v18[1] = v13;

  v19 = v34;
  sub_20C137C94();
  (*(v2 + 8))(v7, v14);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20C077BF4;
  *(v20 + 24) = v1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20B849B38;
  *(v21 + 24) = v20;
  v22 = v36;
  v23 = v37;
  v24 = v19;
  v25 = v38;
  (*(v36 + 16))(v37, v19, v38);
  v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v27 = swift_allocObject();
  (*(v22 + 32))(v27 + v26, v23, v25);
  v28 = (v27 + ((v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_20B66A8B4;
  v28[1] = v21;

  v29 = v39;
  sub_20C137C94();
  v30 = *(v22 + 8);
  v30(v24, v25);
  v31 = sub_20C137CB4();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v31(sub_20B5DF6DC, v32);

  return (v30)(v29, v25);
}

uint64_t sub_20C074C48()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 144);
  v13[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 128);
  v13[9] = v3;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 80);
  v13[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 64);
  v13[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 112);
  v13[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 96);
  v13[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 16);
  v13[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row);
  v13[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 48);
  v13[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 32);
  v13[3] = v7;
  sub_20B520158(v13, &qword_27C762340, &unk_20C150290);

  v8 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_descriptor;
  v9 = sub_20C135E14();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendationClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_storefrontLocalizer));

  v10 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf__amdPersonalizationEnabled;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_20C074E08()
{
  sub_20C074C48();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecommendationsShelf(uint64_t a1)
{
  result = qword_27C7722B8;
  if (!qword_27C7722B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C074EB4(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20C135E14();
    if (v2 <= 0x3F)
    {
      sub_20B52432C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

double sub_20C07500C()
{
  sub_20C074798();
  swift_getObjectType();
  sub_20C13AE84();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20C075104(uint64_t a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B474();
  v5 = sub_20C13BB74();
  v6 = sub_20C13D1F4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20B517000, v5, v6, "[RecommendationsShelf] recommendations updated, updating row", v7, 2u);
    MEMORY[0x20F2F6A40](v7, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C074798();
  }

  return result;
}

uint64_t sub_20C075278(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20C076F74;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20C07553C()
{
  v1 = v0;
  v2 = type metadata accessor for ShelfMetricAction(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C136664();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = v3[7];
  v8 = *MEMORY[0x277D51488];
  v9 = sub_20C134F24();
  (*(*(v9 - 8) + 104))(&v5[v7], v8, v9);
  v10 = v3[8];
  v11 = sub_20C132C14();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = sub_20C135D64();
  v14 = v13;
  v15 = v3[10];
  v16 = *MEMORY[0x277D523F0];
  v17 = sub_20C135ED4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v5[v15], v16, v17);
  (*(v18 + 56))(&v5[v15], 0, 1, v17);
  v19 = v3[12];
  v20 = *MEMORY[0x277D51788];
  v21 = sub_20C1352E4();
  (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
  v22 = v3[13];
  v23 = sub_20C136E94();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v25 = &v5[v3[9]];
  *v25 = v12;
  v25[1] = v14;
  v26 = &v5[v3[11]];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[v3[14]] = v24;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA036C(v1, v5, Strong);
    swift_unknownObjectRelease();
  }

  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = (v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder + 24));
    sub_20C135D94();
    v31 = sub_20C138544();

    v32 = [v31 string];

    v50 = sub_20C13C954();
    v51 = v33;

    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_20C135DD4();
    v34 = sub_20C138544();

    v35 = [v34 string];

    v49 = sub_20C13C954();
    v37 = v36;

    v38 = sub_20C135D64();
    v40 = v39;
    v41 = sub_20C135DA4();
    v42 = sub_20C135DC4();
    v43 = v29 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      v47 = v42;
      (*(v44 + 96))(v29, v50, v51, v49, v37, v38, v40, v41, v47, MEMORY[0x277D84F90], ObjectType, v44);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_20B68D110(v5);
}

uint64_t sub_20C0759EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C075A64@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20C075B5C(uint64_t *a1)
{
  v2 = *(sub_20C134614() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A108C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20C075C04(v5);
  *a1 = v3;
}

void sub_20C075C04(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C134614();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C134614() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C075FD8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20C075D30(0, v2, 1, a1);
  }
}

void sub_20C075D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C134614();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_20C1345F4();
      v28 = sub_20C1345F4();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20C075FD8(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C134614();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20C0769BC(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C1345F4();
      v126 = sub_20C1345F4();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C1345F4();
        v39 = sub_20C1345F4();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20C0769BC(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C1345F4();
    v104 = sub_20C1345F4();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_20C0769BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C134614();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C1345F4();
          v45 = sub_20C1345F4();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C1345F4();
        v26 = sub_20C1345F4();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A0B1C(&v64, &v63, &v62);
}

uint64_t sub_20C076FAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20C077074(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_20C13A814();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v11 = v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_row;
  sub_20B5D8060(v27);
  v12 = v27[9];
  *(v11 + 128) = v27[8];
  *(v11 + 144) = v12;
  *(v11 + 160) = v28;
  v13 = v27[5];
  *(v11 + 64) = v27[4];
  *(v11 + 80) = v13;
  v14 = v27[7];
  *(v11 + 96) = v27[6];
  *(v11 + 112) = v14;
  v15 = v27[1];
  *v11 = v27[0];
  *(v11 + 16) = v15;
  v16 = v27[3];
  *(v11 + 32) = v27[2];
  *(v11 + 48) = v16;
  (*(v8 + 104))(v10, *MEMORY[0x277D4EF70], v7);
  LOBYTE(v26[0]) = 0;
  sub_20C13A384();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769190, &unk_20C15F8D0);
  sub_20C133AA4();
  sub_20B51C710(v26, v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v26, v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder);
  v17 = OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_descriptor;
  v18 = sub_20C135E14();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v4 + v17, a3, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_eventHub) = v26[0];
  *(v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_marker) = a2;
  v20 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendations) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v26, v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_subscriptionToken) = sub_20C13A914();
  v21 = sub_20C135D74();
  type metadata accessor for ShelfLazyLockupFetcher();
  v22 = swift_allocObject();
  *(v22 + 152) = v20;
  v23 = sub_20B6B0C04(v20);
  v24 = MEMORY[0x277D84FA0];
  *(v22 + 160) = v23;
  *(v22 + 168) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  sub_20C133AA4();
  (*(v19 + 8))(a3, v18);
  *(v22 + 136) = 10;
  *(v22 + 144) = v21;
  *(v22 + 145) = 0;
  *(v4 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_lazyLockupFetcher) = v22;
  return v4;
}

uint64_t sub_20C0774A8(uint64_t a1, int a2, uint64_t a3)
{
  v70 = a2;
  v5 = sub_20C134014();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v62 - v11;
  v13 = sub_20C134614();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v68 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771DF8, &qword_20C18BD70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  v67 = a3;
  v22 = *(a3 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_recommendations);
  v73 = a1;
  v76 = a1;

  sub_20B6B7B24(sub_20C034274, v22, v21);
  v23 = v21;

  sub_20B52F9E8(v21, v18, &qword_27C771DF8, &qword_20C18BD70);
  v24 = v13;
  if ((*(v14 + 48))(v18, 1, v13) == 1)
  {
    sub_20B520158(v18, &qword_27C771DF8, &qword_20C18BD70);
    sub_20C13B474();
    v25 = v9;
    v26 = v74;
    v27 = v69;
    (*(v74 + 16))(v69, v73, v75);
    v28 = v25;
    v29 = sub_20C13BB74();
    v30 = sub_20C13D1D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v67 = v23;
      v32 = v31;
      v33 = swift_slowAlloc();
      *&v77[0] = v33;
      *v32 = 141558274;
      *(v32 + 4) = 1752392040;
      *(v32 + 12) = 2080;
      sub_20C077B9C();
      v34 = v75;
      v35 = sub_20C13DFA4();
      v37 = v36;
      (*(v26 + 8))(v27, v34);
      v38 = sub_20B51E694(v35, v37, v77);

      *(v32 + 14) = v38;
      _os_log_impl(&dword_20B517000, v29, v30, "[RecommendationsShelf] Could not find matching recommendation for %{mask.hash}s", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      MEMORY[0x20F2F6A40](v32, -1, -1);

      (*(v71 + 8))(v28, v72);
      v39 = v67;
    }

    else
    {

      (*(v26 + 8))(v27, v75);
      (*(v71 + 8))(v25, v72);
      v39 = v23;
    }

    sub_20B520158(v39, &qword_27C771DF8, &qword_20C18BD70);
    return 0xF000000000000007;
  }

  else
  {
    v40 = v14;
    v41 = *(v14 + 32);
    v42 = v68;
    v66 = v24;
    v41(v68, v18, v24);
    v43 = sub_20C134604();
    v71 = v44;
    v72 = v43;
    v45 = *(v67 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder + 24);
    v46 = *(v67 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder + 32);
    __swift_project_boxed_opaque_existential_1((v67 + OBJC_IVAR____TtC9SeymourUI20RecommendationsShelf_mediaTagStringBuilder), v45);
    v47 = sub_20C136194();
    (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
    v48 = v73;
    MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v12, v45, v46, v77);
    sub_20B520158(v12, &unk_27C765110, &unk_20C152460);
    v64 = v77[0];
    v63 = v77[1];
    v62 = v77[2];
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
    v69 = swift_allocBox();
    v51 = v50;
    v52 = v49[12];
    v53 = v49[16];
    v67 = v23;
    v54 = (v50 + v53);
    v55 = v50 + v49[20];
    v56 = v50 + v49[24];
    v57 = v49[28];
    v65 = v49[32];
    (*(v74 + 16))(v50, v48, v75);
    *(v51 + v52) = v70;
    v58 = v63;
    *v54 = v64;
    v54[1] = v58;
    v54[2] = v62;
    v59 = v71;
    *v55 = v72;
    *(v55 + 8) = v59;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0;
    *(v55 + 16) = 0;
    *(v55 + 40) = 513;
    *v56 = 3;
    *(v56 + 8) = 3;
    *(v51 + v57) = 0;
    v60 = sub_20B6B2348(MEMORY[0x277D84F90]);
    (*(v40 + 8))(v42, v66);
    sub_20B520158(v67, &qword_27C771DF8, &qword_20C18BD70);
    *(v51 + v65) = v60;
    return v69 | 0x4000000000000000;
  }
}

unint64_t sub_20C077B9C()
{
  result = qword_27C7722C8;
  if (!qword_27C7722C8)
  {
    sub_20C134014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7722C8);
  }

  return result;
}

uint64_t type metadata accessor for StartWorkoutSessionRequest(uint64_t a1)
{
  result = qword_27C7722D0;
  if (!qword_27C7722D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C077C48(uint64_t a1)
{
  result = sub_20C1344C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20C077CB0(uint64_t a1)
{
  v2 = sub_20C1344C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutSessionRequest(0);
  MEMORY[0x28223BE20](started);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C0785A0(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2F58E0](0);
    sub_20C0786C8(&qword_27C76EE30, MEMORY[0x277D50820], MEMORY[0x277D50828]);
    sub_20C13C7C4();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_20C077E84()
{
  v1 = v0;
  v2 = sub_20C1344C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutSessionRequest(0);
  MEMORY[0x28223BE20](started);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20C0785A0(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2F58E0](0);
    sub_20C0786C8(&qword_27C76EE30, MEMORY[0x277D50820], MEMORY[0x277D50828]);
    sub_20C13C7C4();
    (*(v3 + 8))(v5, v2);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20C078074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_20C1344C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20C0785A0(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    MEMORY[0x20F2F58E0](0);
    sub_20C0786C8(&qword_27C76EE30, MEMORY[0x277D50820], MEMORY[0x277D50828]);
    sub_20C13C7C4();
    (*(v5 + 8))(v7, v4);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20C0782AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1344C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutSessionRequest(0);
  MEMORY[0x28223BE20](started);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7722E8, &qword_20C18BE08);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v18 = (&v26 + *(v17 + 56) - v15);
  sub_20C0785A0(a1, &v26 - v15);
  sub_20C0785A0(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C0785A0(v16, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, v18, v4);
      v23 = MEMORY[0x20F2EBB60](v13, v7);
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v13, v4);
      sub_20C07866C(v16);
      return v23 & 1;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_12;
  }

  sub_20C0785A0(v16, v10);
  v20 = *v10;
  v19 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_20C078604(v16);
    goto LABEL_13;
  }

  if (v20 == *v18 && v19 == v18[1])
  {

    goto LABEL_16;
  }

  v22 = sub_20C13DFF4();

  if (v22)
  {
LABEL_16:
    sub_20C07866C(v16);
    v23 = 1;
    return v23 & 1;
  }

  sub_20C07866C(v16);
LABEL_13:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_20C0785A0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWorkoutSessionRequest(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_20C078604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7722E8, &qword_20C18BE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C07866C(uint64_t a1)
{
  started = type metadata accessor for StartWorkoutSessionRequest(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_20C0786C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20C078734()
{
  result = qword_27C7722F0;
  if (!qword_27C7722F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7722F0);
  }

  return result;
}

void sub_20C0787A4(int a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
LABEL_4:
    if (a1)
    {
      v17 = a6;
    }

    else
    {
      v17 = a5;
    }

    v18 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v19 = sub_20C13CC54();

    [v18 deactivateConstraints_];

    v20 = *(v6 + *v17);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F320;
    *(inited + 32) = a2;
    *(inited + 40) = v20;

    sub_20B853E04(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
    swift_arrayDestroy();
    v22 = sub_20C13CC54();

    [v18 activateConstraints_];

    return;
  }

  v11 = (v6 + *a4);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = a3;
  if ((sub_20BF6C784(v16, v12, v13, v14, v15) ^ a1))
  {

    goto LABEL_4;
  }

  v23 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v24 = sub_20C13CC54();
  [v23 activateConstraints_];
}

char *sub_20C078A30(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_landscapeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_portraitConstraints] = v2;
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_previousBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v80 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF0 != -1)
  {
    swift_once();
  }

  v5 = sub_20C13C914();
  [v4 setText_];

  v6 = *MEMORY[0x277D76918];
  v7 = *MEMORY[0x277D74420];
  v8 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v11 = swift_initStackObject();
  v12 = MEMORY[0x277D74430];
  *(v11 + 16) = xmmword_20C14F980;
  v13 = *v12;
  *(v11 + 32) = *v12;
  *(v11 + 40) = v7;
  v14 = v10;
  v15 = v13;
  v16 = sub_20B6B134C(v11);
  swift_setDeallocating();
  sub_20B520158(v11 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v16;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v17 = sub_20C13C744();

  v18 = [v8 fontDescriptorByAddingAttributes_];

  v19 = objc_opt_self();
  v20 = [v19 fontWithDescriptor:v18 size:0.0];

  [v4 setFont_];
  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v4 setTextColor_];

  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  [v4 setTextAlignment_];
  v22 = v4;
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v24];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v80] = v22;
  v25 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_descriptionLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF8 != -1)
  {
    swift_once();
  }

  v27 = sub_20C13C914();
  [v26 setText_];

  v28 = [v19 preferredFontForTextStyle_];
  [v26 setFont_];

  v29 = [objc_opt_self() labelColor];
  [v26 setTextColor_];

  [v26 setTextAlignment_];
  v30 = v26;
  LODWORD(v31) = 1132068864;
  [v30 setContentCompressionResistancePriority:1 forAxis:v31];
  [v30 setAdjustsFontForContentSizeCategory_];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v25] = v30;
  *&v1[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_presenter] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C151490;
  v33 = *&v1[v80];
  *(v32 + 32) = v33;
  *(v32 + 40) = v30;
  v34 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v35 = v30;

  v36 = v33;
  v37 = sub_20C13CC54();

  v38 = [v34 initWithArrangedSubviews_];

  [v38 setAlignment_];
  [v38 setAxis_];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_stackView] = v38;
  [v38 setCustomSpacing:*&v1[v80] afterView:13.0];
  v81.receiver = v1;
  v81.super_class = type metadata accessor for PhoneSessionOngoingWorkoutDetectedView();
  v39 = objc_msgSendSuper2(&v81, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v40 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_descriptionLabel;
  v41 = *&v39[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_descriptionLabel];
  v42 = v39;
  [v41 setNumberOfLines_];
  [*&v39[v40] setAdjustsFontSizeToFitWidth_];
  [*&v39[v40] setAllowsDefaultTighteningForTruncation_];
  [*&v39[v40] setMinimumScaleFactor_];
  v43 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_stackView;
  v44 = *&v42[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_stackView];
  v45 = v42;
  [v45 addSubview_];
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14F580;
  v47 = [*&v42[v43] widthAnchor];
  v48 = [v45 widthAnchor];
  v49 = [v47 constraintLessThanOrEqualToAnchor:v48 multiplier:0.5];

  *(v46 + 32) = v49;
  *&v45[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_landscapeConstraints] = v46;

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C151490;
  v51 = [*&v42[v43] leadingAnchor];
  v52 = [v45 leadingAnchor];

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v53 = [v51 constraintEqualToAnchor:v52 constant:{*&qword_27C799F40, 2, 5}];

  *(v50 + 32) = v53;
  v54 = [*&v42[v43] trailingAnchor];
  v55 = [v45 trailingAnchor];

  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v56 = [v54 constraintEqualToAnchor:v55 constant:-*&qword_27C799F50];

  *(v50 + 40) = v56;
  *&v45[OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_portraitConstraints] = v50;

  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_20C14FE90;
  v58 = [*&v42[v43] centerXAnchor];
  v59 = [v45 centerXAnchor];

  v60 = [v58 constraintEqualToAnchor_];
  *(v57 + 32) = v60;
  v61 = [*&v42[v43] centerYAnchor];
  v62 = [v45 centerYAnchor];

  v63 = [v61 constraintEqualToAnchor_];
  *(v57 + 40) = v63;
  v64 = [*&v42[v43] topAnchor];
  v65 = [v45 safeAreaLayoutGuide];

  v66 = [v65 topAnchor];
  v67 = [v64 constraintGreaterThanOrEqualToAnchor:v66 constant:4.0];

  *(v57 + 48) = v67;
  v68 = [*&v42[v43] bottomAnchor];
  v69 = [v45 safeAreaLayoutGuide];

  v70 = [v69 bottomAnchor];
  v71 = [v68 constraintLessThanOrEqualToAnchor:v70 constant:-4.0];

  *(v57 + 56) = v71;
  v72 = [v45 traitCollection];

  [v45 bounds];
  v77 = sub_20BF6C784(v72, v73, v74, v75, v76);
  sub_20C0787A4(v77, v57, 0, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_previousBounds, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_landscapeConstraints, &OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_portraitConstraints);

  *(a1 + 24) = &off_282304178;
  swift_unknownObjectWeakAssign();
  [v45 setUserInteractionEnabled_];

  [v45 setAlpha_];

  return v45;
}

id sub_20C079750(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhoneSessionOngoingWorkoutDetectedView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20C079834(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_20B6302C0;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_20B7B548C;
  v6[3] = &block_descriptor_178;
  v5 = _Block_copy(v6);

  [v2 animateWithDuration:v5 animations:0.2];
  _Block_release(v5);
}

void sub_20C079944()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_landscapeConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_portraitConstraints) = v1;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_previousBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v30 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_titleLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF0 != -1)
  {
    swift_once();
  }

  v4 = sub_20C13C914();
  [v3 setText_];

  v5 = *MEMORY[0x277D76918];
  v6 = *MEMORY[0x277D74420];
  v7 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v9 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_20C14F980;
  v11 = *MEMORY[0x277D74430];
  *(v10 + 32) = *MEMORY[0x277D74430];
  *(v10 + 40) = v6;
  v12 = v9;
  v13 = v11;
  v14 = sub_20B6B134C(v10);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v14;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v15 = sub_20C13C744();

  v16 = [v7 fontDescriptorByAddingAttributes_];

  v17 = objc_opt_self();
  v18 = [v17 fontWithDescriptor:v16 size:0.0];

  [v3 setFont_];
  v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v3 setTextColor_];

  [v3 setLineBreakMode_];
  [v3 setNumberOfLines_];
  [v3 setTextAlignment_];
  v20 = v3;
  LODWORD(v21) = 1148846080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v21];
  LODWORD(v22) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v22];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v30) = v20;
  v23 = OBJC_IVAR____TtC9SeymourUI38PhoneSessionOngoingWorkoutDetectedView_descriptionLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760CF8 != -1)
  {
    swift_once();
  }

  v25 = sub_20C13C914();
  [v24 setText_];

  v26 = [v17 preferredFontForTextStyle_];
  [v24 setFont_];

  v27 = [objc_opt_self() labelColor];
  [v24 setTextColor_];

  [v24 setTextAlignment_];
  v28 = v24;
  LODWORD(v29) = 1132068864;
  [v28 setContentCompressionResistancePriority:1 forAxis:v29];
  [v28 setAdjustsFontForContentSizeCategory_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v23) = v28;
  sub_20C13DE24();
  __break(1u);
}

id sub_20C079E68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = sub_20C132EE4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132ED4();
  sub_20C132EA4();
  (*(v7 + 8))(v9, v6);
  sub_20B529B54(MEMORY[0x277D84F90]);
  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_20C13C914();
  v12 = sub_20C13C914();
  v13 = sub_20C13C744();

  v14 = [v10 initWithTitle:v11 message:v12 appearanceInfo:v13];

  v15 = sub_20C13C914();

  [v14 setIdentifier_];

  [v14 setStyle_];
  sub_20C132C04();
  v16 = sub_20C132C14();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = 0;
  if (v18(v5, 1, v16) != 1)
  {
    v19 = sub_20C132B64();
    (*(v17 + 8))(v5, v16);
  }

  [v14 setIconURL_];

  v20 = objc_opt_self();
  v21 = [v20 actionWithTitle:0 style:2];
  [v14 addButtonAction_];

  v22 = [v20 actionWithTitle:0 style:0];
  sub_20C132C04();
  v23 = 0;
  if (v18(v2, 1, v16) != 1)
  {
    v23 = sub_20C132B64();
    (*(v17 + 8))(v2, v16);
  }

  [v22 setDeepLink_];

  [v14 setDefaultAction_];
  return v14;
}

id sub_20C07A280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v0 - 8);
  v36 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - v3;
  v5 = sub_20C132EE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132ED4();
  v9 = sub_20C132EA4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_20B529B54(MEMORY[0x277D84F90]);
  v12 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v13 = sub_20C13C914();
  v14 = sub_20C13C914();
  v15 = sub_20C13C744();

  v16 = [v12 initWithTitle:v13 message:v14 appearanceInfo:v15];

  v38 = v9;
  v37 = v11;
  v17 = sub_20C13C914();
  [v16 setIdentifier_];

  sub_20C132C04();
  v18 = sub_20C132C14();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v4, 1, v18) != 1)
  {
    v21 = sub_20C132B64();
    (*(v19 + 8))(v4, v18);
  }

  [v16 setIconURL_];

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:0 style:2];
  [v16 addButtonAction_];

  [v16 setStyle_];
  v24 = sub_20C13C914();
  v25 = [v22 actionWithTitle_];

  v26 = v36;
  sub_20C132C04();
  v27 = 0;
  if (v20(v26, 1, v18) != 1)
  {
    v27 = sub_20C132B64();
    (*(v19 + 8))(v26, v18);
  }

  [v25 setDeepLink_];

  [v16 addButtonAction_];
  sub_20C1336B4();
  sub_20C1336F4();
  v28 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v29 = sub_20C13C914();

  v30 = [v28 initWithTopic_];

  [v16 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EF0, &qword_20C16B4B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v39 = 0xD000000000000012;
  v40 = 0x800000020C196B60;
  v32 = MEMORY[0x277D837D0];
  sub_20C13DC04();
  *(inited + 96) = v32;
  v33 = v37;
  *(inited + 72) = v38;
  *(inited + 80) = v33;
  v39 = 0x6E656D6563616C70;
  v40 = 0xE900000000000074;
  sub_20C13DC04();
  *(inited + 168) = v32;
  *(inited + 144) = 0xD000000000000013;
  *(inited + 152) = 0x800000020C191800;
  sub_20B529B54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB40, qword_20C16B4C0);
  swift_arrayDestroy();
  v34 = sub_20C13C744();

  [v16 setClickstreamMetricsEvent_];

  return v16;
}

id sub_20C07A8B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v0 - 8);
  v36 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - v3;
  v5 = sub_20C132EE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132ED4();
  v9 = sub_20C132EA4();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  sub_20B529B54(MEMORY[0x277D84F90]);
  v12 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v13 = sub_20C13C914();
  v14 = sub_20C13C914();
  v15 = sub_20C13C744();

  v16 = [v12 initWithTitle:v13 message:v14 appearanceInfo:v15];

  v38 = v9;
  v37 = v11;
  v17 = sub_20C13C914();
  [v16 setIdentifier_];

  [v16 setStyle_];
  sub_20C132C04();
  v18 = sub_20C132C14();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = 0;
  if (v20(v4, 1, v18) != 1)
  {
    v21 = sub_20C132B64();
    (*(v19 + 8))(v4, v18);
  }

  [v16 setIconURL_];

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:0 style:2];
  [v16 addButtonAction_];

  v24 = sub_20C13C914();
  v25 = [v22 actionWithTitle_];

  v26 = v36;
  sub_20C132C04();
  v27 = 0;
  if (v20(v26, 1, v18) != 1)
  {
    v27 = sub_20C132B64();
    (*(v19 + 8))(v26, v18);
  }

  [v25 setDeepLink_];

  [v16 addButtonAction_];
  sub_20C1336B4();
  sub_20C1336F4();
  v28 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v29 = sub_20C13C914();

  v30 = [v28 initWithTopic_];

  [v16 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EF0, &qword_20C16B4B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v39 = 0xD000000000000012;
  v40 = 0x800000020C196B60;
  v32 = MEMORY[0x277D837D0];
  sub_20C13DC04();
  *(inited + 96) = v32;
  v33 = v37;
  *(inited + 72) = v38;
  *(inited + 80) = v33;
  v39 = 0x6E656D6563616C70;
  v40 = 0xE900000000000074;
  sub_20C13DC04();
  *(inited + 168) = v32;
  *(inited + 144) = 0xD000000000000016;
  *(inited + 152) = 0x800000020C1917E0;
  sub_20B529B54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB40, qword_20C16B4C0);
  swift_arrayDestroy();
  v34 = sub_20C13C744();

  [v16 setClickstreamMetricsEvent_];

  return v16;
}

id sub_20C07AEE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_20C132EE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132ED4();
  v31 = sub_20C132EA4();
  v30 = v7;
  v8 = *(v4 + 8);
  v8(v6, v3);
  sub_20B529B54(MEMORY[0x277D84F90]);
  v9 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v10 = sub_20C13C914();
  v11 = sub_20C13C914();
  v12 = sub_20C13C744();

  v13 = [v9 initWithTitle:v10 message:v11 appearanceInfo:v12];

  [v13 setStyle_];
  sub_20C132ED4();
  sub_20C132EA4();
  v8(v6, v3);
  v14 = sub_20C13C914();

  [v13 setIdentifier_];

  sub_20C132C04();
  v15 = sub_20C132C14();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v2, 1, v15) != 1)
  {
    v17 = sub_20C132B64();
    (*(v16 + 8))(v2, v15);
  }

  [v13 setIconURL_];

  v18 = [objc_opt_self() actionWithTitle:0 style:2];
  [v13 addButtonAction_];

  sub_20C1336B4();
  sub_20C1336F4();
  v19 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v20 = sub_20C13C914();

  v21 = [v19 initWithTopic_];

  [v13 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EF0, &qword_20C16B4B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v32 = 0xD000000000000012;
  v33 = 0x800000020C196B60;
  v23 = MEMORY[0x277D837D0];
  sub_20C13DC04();
  *(inited + 96) = v23;
  v24 = v30;
  *(inited + 72) = v31;
  *(inited + 80) = v24;
  v32 = 0x6E656D6563616C70;
  v33 = 0xE900000000000074;
  sub_20C13DC04();
  v25 = sub_20C1393B4();
  *(inited + 168) = v23;
  *(inited + 144) = v25;
  *(inited + 152) = v26;
  sub_20B529B54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB40, qword_20C16B4C0);
  swift_arrayDestroy();
  v27 = sub_20C13C744();

  [v13 setClickstreamMetricsEvent_];

  return v13;
}

id sub_20C07B41C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_20C132EE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132ED4();
  v7 = sub_20C132EA4();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  sub_20B529B54(MEMORY[0x277D84F90]);
  v10 = objc_allocWithZone(MEMORY[0x277CEE488]);
  v11 = sub_20C13C914();
  v12 = sub_20C13C914();
  v13 = sub_20C13C744();

  v14 = [v10 initWithTitle:v11 message:v12 appearanceInfo:v13];

  v15 = sub_20C13C914();
  [v14 setIdentifier_];

  [v14 setStyle_];
  sub_20C132C04();
  v16 = sub_20C132C14();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v2, 1, v16) != 1)
  {
    v18 = sub_20C132B64();
    (*(v17 + 8))(v2, v16);
  }

  [v14 setIconURL_];

  v19 = [objc_opt_self() actionWithTitle:0 style:2];
  [v14 addButtonAction_];

  sub_20C1336B4();
  sub_20C1336F4();
  v20 = objc_allocWithZone(MEMORY[0x277CEE5A8]);
  v21 = sub_20C13C914();

  v22 = [v20 initWithTopic_];

  [v14 setMetricsEvent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EF0, &qword_20C16B4B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v30 = 0xD000000000000012;
  v31 = 0x800000020C196B60;
  v24 = MEMORY[0x277D837D0];
  sub_20C13DC04();
  *(inited + 96) = v24;
  *(inited + 72) = v7;
  *(inited + 80) = v9;
  v30 = 0x6E656D6563616C70;
  v31 = 0xE900000000000074;
  sub_20C13DC04();
  v25 = sub_20C1393B4();
  *(inited + 168) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = v26;
  sub_20B529B54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB40, qword_20C16B4C0);
  swift_arrayDestroy();
  v27 = sub_20C13C744();

  [v14 setClickstreamMetricsEvent_];

  return v14;
}

uint64_t sub_20C07B8F4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = *a2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row;
  sub_20B5D8060(v21);
  v6 = v21[9];
  *(v5 + 128) = v21[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v22;
  v7 = v21[5];
  *(v5 + 64) = v21[4];
  *(v5 + 80) = v7;
  v8 = v21[7];
  *(v5 + 96) = v21[6];
  *(v5 + 112) = v8;
  v9 = v21[1];
  *v5 = v21[0];
  *(v5 + 16) = v9;
  v10 = v21[3];
  *(v5 + 32) = v21[2];
  *(v5 + 48) = v10;
  *(v2 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_preferenceType) = v4;
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_workoutPlanStringBuilder) = v20;
  if (v4)
  {
    v11 = 0xD00000000000001FLL;
  }

  else
  {
    v11 = 0xD00000000000001CLL;
  }

  if (v4)
  {
    v12 = "renceDescriptionShelf";
  }

  else
  {
    v12 = "TRAINERS_PREFERENCE_DESCRIPTION";
  }

  v13 = v20[9];
  v14 = v20[10];
  __swift_project_boxed_opaque_existential_1(v20 + 6, v13);

  v15 = sub_20B5E107C(v11, v12 | 0x8000000000000000, v13, v14);
  v17 = v16;

  v18 = (v3 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_text);
  *v18 = v15;
  v18[1] = v17;
  return v3;
}

void sub_20C07BA90()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = swift_allocObject();
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_text + 8);
  *(v5 + 16) = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_text);
  *(v5 + 24) = v6;
  v7 = v5 | 0x5000000000000006;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14F980;
  *(v8 + 32) = v7;
  v30 = 0uLL;
  LOBYTE(v31) = 1;
  *(&v31 + 1) = 0;
  *&v32 = 0;
  WORD4(v32) = 128;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  LOBYTE(v36) = 0;
  *(&v36 + 1) = v8;
  *&v37[0] = MEMORY[0x277D84F90];
  *(v37 + 8) = 0u;
  *(&v37[1] + 8) = 0u;
  *(&v37[2] + 1) = 0;
  v38 = 2;
  nullsub_1();
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 144);
  v39[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 128);
  v39[9] = v10;
  v40 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 160);
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 80);
  v39[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 64);
  v39[5] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 112);
  v39[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 96);
  v39[7] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 16);
  v39[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row);
  v39[1] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 48);
  v39[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 32);
  v39[3] = v14;
  v15 = v37[2];
  *(v9 + 128) = v37[1];
  *(v9 + 144) = v15;
  *(v9 + 160) = v38;
  v16 = v35;
  *(v9 + 64) = v34;
  *(v9 + 80) = v16;
  v17 = v37[0];
  *(v9 + 96) = v36;
  *(v9 + 112) = v17;
  v18 = v31;
  *v9 = v30;
  *(v9 + 16) = v18;
  v19 = v33;
  *(v9 + 32) = v32;
  *(v9 + 48) = v19;

  sub_20B634408(v39);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v21 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    sub_20B61D230(v0, Strong);
    if (v23)
    {
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v29 = v0;
      sub_20B5E2E18();
      *v4 = sub_20C13D374();
      (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
      v28 = sub_20C13C584();
      (*(v2 + 8))(v4, v1);
      if ((v28 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_20B620A08(v25, v26, v27, v29, 1, v21);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20C07BDA0()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanPreferenceDescriptionShelf(uint64_t a1)
{
  result = qword_27C772338;
  if (!qword_27C772338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C07BEFC(uint64_t a1)
{
  result = sub_20C132EE4();
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

uint64_t sub_20C07BFC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C07C03C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI37WorkoutPlanPreferenceDescriptionShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

char *sub_20C07C0EC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_downloadButton;
  type metadata accessor for DownloadButton();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v43.receiver = v4;
  v43.super_class = type metadata accessor for DownloadButtonCell(0);
  v13 = objc_msgSendSuper2(&v43, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_downloadButton;
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_downloadButton];
  v16 = v13;
  [v15 setSmu:-10.0 touchInsets:{-10.0, -10.0, -10.0}];
  v17 = v16;
  v18 = [v17 contentView];
  [v18 addSubview_];

  v19 = *&v13[v14];
  [v19 addTarget:v17 action:sel_handleDownloadButtonTapped_ forControlEvents:64];

  v41 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20C14FE90;
  v21 = [*&v13[v14] leadingAnchor];
  v22 = [v17 &selRef_setMaximumFractionDigits_];
  v23 = [v22 leadingAnchor];

  v24 = [v21 constraintGreaterThanOrEqualToAnchor_];
  *(v20 + 32) = v24;
  v25 = [*&v13[v14] trailingAnchor];
  v26 = [v17 &selRef_setMaximumFractionDigits_];
  v27 = [v26 trailingAnchor];

  v28 = [v25 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v29) = v42;
  [v28 setPriority_];
  *(v20 + 40) = v28;
  v30 = [*&v13[v14] topAnchor];
  v31 = [v17 contentView];
  v32 = [v31 topAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v20 + 48) = v33;
  v34 = [*&v13[v14] bottomAnchor];
  v35 = [v17 contentView];

  v36 = [v35 bottomAnchor];
  v37 = [v34 constraintEqualToAnchor_];

  sub_20C13BBA4();
  LODWORD(v38) = v42;
  [v37 setPriority_];
  *(v20 + 56) = v37;
  sub_20B5E29D0();
  v39 = sub_20C13CC54();

  [v41 activateConstraints_];

  return v17;
}

id sub_20C07C774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadButtonCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DownloadButtonCell(uint64_t a1)
{
  result = qword_27C772358;
  if (!qword_27C772358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C07C86C(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20C07C914(unint64_t a1, int a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0xB)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    sub_20C13B4A4();
    v14 = v2;
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1F4();

    v17 = os_log_type_enabled(v15, v16);
    v51 = a2;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v52 = v5;
      v19 = v18;
      v20 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v19 = 138543618;
      *(v19 + 4) = v14;
      *v20 = v14;
      *(v19 + 12) = 2082;
      v21 = v14;
      v22 = sub_20BCFF494(*&v12, v13);
      v50 = v6;
      v24 = v13;
      v25 = sub_20B51E694(v22, v23, &v54);

      *(v19 + 14) = v25;
      v13 = v24;
      _os_log_impl(&dword_20B517000, v15, v16, "[DownloadButton] Updating download button state in %{public}@ to %{public}s", v19, 0x16u);
      sub_20B520158(v20, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      v26 = v49;
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v19, -1, -1);

      (*(v50 + 8))(v11, v52);
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    v40 = *&v14[OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_downloadButton];
    v41 = &v40[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v42 = *&v40[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v43 = v40[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8];
    if (v43 <= 1)
    {
      if (v40[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8])
      {
        if (v13 != 1 || ((LODWORD(v42) ^ LODWORD(v12)) & 1) != 0)
        {
          goto LABEL_26;
        }
      }

      else if (v13 || LOBYTE(v42) != LOBYTE(v12))
      {
        goto LABEL_26;
      }
    }

    else if (v43 == 2)
    {
      if (v13 != 2)
      {
        goto LABEL_26;
      }

      result = *&v40[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
      if (v42 != v12)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v43 == 255)
      {
LABEL_26:
        *v41 = v12;
        v41[8] = v13;
        sub_20C010054(*&v12, v13, 2.0);
        v45 = v44;
        v47 = v46;
        ObjectType = swift_getObjectType();
        sub_20C0DC2BC(v45, v51 & 1, v40, ObjectType, v47);
        swift_unknownObjectRelease();
        return result;
      }

      if (*&v42 <= 1)
      {
        if (v42 == 0.0)
        {
          if (v13 != 3 || v12 != 0.0)
          {
            goto LABEL_26;
          }
        }

        else if (v13 != 3 || *&v12 != 1)
        {
          goto LABEL_26;
        }
      }

      else if (*&v42 == 2)
      {
        if (v13 != 3 || *&v12 != 2)
        {
          goto LABEL_26;
        }
      }

      else if (*&v42 == 3)
      {
        if (v13 != 3 || *&v12 != 3)
        {
          goto LABEL_26;
        }
      }

      else if (v13 != 3 || *&v12 != 4)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    sub_20C13B534();

    v28 = v2;
    v29 = sub_20C13BB74();
    v30 = sub_20C13D1D4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v5;
      v53 = a1;
      v34 = v33;
      v54 = v33;
      *v31 = 138543618;
      *(v31 + 4) = v28;
      *v32 = v28;
      *(v31 + 12) = 2082;
      v35 = sub_20B5F66D0();
      v36 = v28;
      v37 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v35);
      v39 = sub_20B51E694(v37, v38, &v54);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_20B517000, v29, v30, "Attempted to configure %{public}@ with item: %{public}s", v31, 0x16u);
      sub_20B520158(v32, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x20F2F6A40](v34, -1, -1);
      MEMORY[0x20F2F6A40](v31, -1, -1);

      (*(v6 + 8))(v8, v52);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

double sub_20C07CE5C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20C07CEA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20C07CF00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20C07CF64()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI18DownloadButtonCell_downloadButton;
  type metadata accessor for DownloadButton();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C07D064()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    v11 = MEMORY[0x28223BE20](v10);
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20C07D248(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_20C07D2A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_20C07D308(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    result = [result size];
    if (a2)
    {
      if (a3 == 0x8000000000000000 && a2 == -1)
      {
        goto LABEL_10;
      }

      if (!__OFADD__(a3 / a2, a3 % a2 != 0))
      {
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

char *sub_20C07D388(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_centerWidth] = 0x4042800000000000;
  v10 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.501960784 blue:0.662745098 alpha:1.0];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.501960784 blue:0.662745098 alpha:1.0];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.97254902 green:0.0666666667 blue:0.309803922 alpha:1.0];
  sub_20B84A274(inited);
  v12 = [v10 layer];
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13 && ([v13 setType_], v12, v12 = objc_msgSend(v10, sel_layer), objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v14, sel_setStartPoint_, 0.5, 0.5), v12, v12 = objc_msgSend(v10, sel_layer), objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0))
  {
    v16 = OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_gradient;
    [v15 setEndPoint_];

    *&v5[v16] = v10;
    v35.receiver = v5;
    v35.super_class = type metadata accessor for BurnBarGradientContainer();
    v17 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
    v18 = objc_allocWithZone(MEMORY[0x277D75348]);
    v19 = v17;
    v20 = [v18 initWithRed:0.97254902 green:0.0666666667 blue:0.309803922 alpha:1.0];
    [v19 setBackgroundColor_];

    v21 = OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_gradient;
    [v19 addSubview_];
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_20C150040;
    v23 = [*&v19[v21] heightAnchor];
    v24 = [*&v19[v21] widthAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 multiplier:1.0];

    *(v22 + 32) = v25;
    v26 = [*&v19[v21] widthAnchor];
    v27 = [v19 widthAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 multiplier:1.0];

    *(v22 + 40) = v28;
    v29 = [*&v19[v21] centerYAnchor];
    v30 = [v19 centerYAnchor];

    v31 = [v29 constraintEqualToAnchor_];
    *(v22 + 48) = v31;
    v32 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v33 = sub_20C13CC54();

    [v32 activateConstraints_];

    return v19;
  }

  else
  {

    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

void sub_20C07D8CC(char a1, double a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_gradient];
  [v6 bounds];
  if (CGRectGetWidth(v23) > 0.0)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_centerWidth] = a2;
    [v6 bounds];
    v7 = a2 / CGRectGetWidth(v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7698D0, &unk_20C1699F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C1517D0;
    *(v8 + 32) = 0;
    *(v8 + 40) = v7;
    *(v8 + 48) = 0x3FF0000000000000;
    v9 = sub_20B84A6AC();
    if (a1)
    {
      v21[0] = MEMORY[0x277D84F90];
      sub_20C13DD64();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v10 = sub_20C13C914();
      v11 = [objc_opt_self() animationWithKeyPath_];

      if (v9)
      {
        sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
        v12 = sub_20C13CC54();
      }

      else
      {
        v12 = 0;
      }

      [v11 setFromValue_];
      swift_unknownObjectRelease();
      sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
      v14 = sub_20C13CC54();

      [v11 setToValue_];

      v15 = [v6 layer];
      v16 = sub_20C13C914();
      [v15 addAnimation:v11 forKey:v16];

      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v8;
      v21[4] = sub_20C07DDE8;
      v21[5] = v18;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 1107296256;
      v21[2] = sub_20B7B548C;
      v21[3] = &block_descriptor_179;
      v19 = _Block_copy(v21);
      v20 = v3;

      [v17 setCompletionBlock_];
      _Block_release(v19);
    }

    else
    {

      v13 = objc_opt_self();
      [v13 begin];
      [v13 setDisableActions_];
      sub_20B84A4C0(v8);

      [v13 commit];
    }
  }
}

id sub_20C07DD80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BurnBarGradientContainer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20C07DE1C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_centerWidth) = 0x4042800000000000;
  v2 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.501960784 blue:0.662745098 alpha:1.0];
  *(inited + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.501960784 blue:0.662745098 alpha:1.0];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.97254902 green:0.0666666667 blue:0.309803922 alpha:1.0];
  sub_20B84A274(inited);
  v4 = [v2 layer];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && ([v5 setType_], v4, v4 = objc_msgSend(v2, sel_layer), objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0) && (objc_msgSend(v6, sel_setStartPoint_, 0.5, 0.5), v4, v4 = objc_msgSend(v2, sel_layer), objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = OBJC_IVAR____TtC9SeymourUI24BurnBarGradientContainer_gradient;
    [v7 setEndPoint_];

    *(v1 + v8) = v2;
  }

  else
  {
  }

  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C07E0E8()
{
  v1 = *(*v0 + 464);

  return v1;
}

uint64_t sub_20C07E11C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20C137EA4();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C07E1DC, 0, 0);
}

uint64_t sub_20C07E1DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    sub_20C13AA14();
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_20C07E2E8;
    v3 = v0[9];

    return sub_20C07E4C0(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_20C07E2E8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20B5D47E8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_20C07E4C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C13B3C4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7723A0, &qword_20C18C158);
  v2[7] = swift_task_alloc();
  v4 = sub_20C134C14();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C07E614, 0, 0);
}

uint64_t sub_20C07E614()
{
  v1 = v0[3];
  v2 = v1[18];
  v3 = v1[19];
  __swift_project_boxed_opaque_existential_1(v1 + 15, v2);
  if ((*(v3 + 8))(0xD000000000000023, 0x800000020C1BC210, v2, v3))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    v7 = v6[7];
    v8 = v6[8];
    __swift_project_boxed_opaque_existential_1(v6 + 4, v7);
    v9 = sub_20C137D24();
    v11 = v10;
    v0[11] = v10;
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_20C07E7A0;
    v13 = v0[7];

    return MEMORY[0x2821AED98](v13, v9, v11, v7, v8);
  }
}

uint64_t sub_20C07E7A0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_20C07ED04;
  }

  else
  {

    v2 = sub_20C07E8BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C07E8BC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20C07FB58(v3);
    v4 = sub_20C137D24();
    v6 = v5;
    sub_20C07FBC0();
    swift_allocError();
    *v7 = v4;
    v7[1] = v6;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[3];
    (*(v2 + 32))(v0[10], v3, v1);
    v12 = v10[7];
    v11 = v10[8];
    __swift_project_boxed_opaque_existential_1(v10 + 4, v12);
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_20C07EA70;
    v14 = v0[10];

    return MEMORY[0x2821AED90](v14, v12, v11);
  }
}

uint64_t sub_20C07EA70(char a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_20C07ED8C;
  }

  else
  {
    *(v4 + 128) = a1 & 1;
    v5 = sub_20C07EB9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20C07EB9C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 72);
  v11 = *(v0 + 64);
  v12 = *(v0 + 80);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v10 = *(v0 + 32);
  v6 = v5[18];
  v7 = v5[19];
  __swift_project_boxed_opaque_existential_1(v5 + 15, v6);
  (*(v7 + 16))(v1, 0xD000000000000023, 0x800000020C1BC210, v6, v7);
  swift_getObjectType();
  sub_20C13B3B4();
  sub_20C13A764();
  (*(v3 + 8))(v4, v10);
  (*(v2 + 8))(v12, v11);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_20C07ED04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C07ED8C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C07EE24()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return swift_deallocClassInstance();
}

uint64_t sub_20C07EEA8()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_20C13B564();
  sub_20C13BB64();
  v20 = *(v3 + 8);
  v20(v8, v2);
  v9 = v1[12];
  v10 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v9);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *(v10 + 24);

  v12(sub_20C07F358, v11, v9, v10);

  v13 = v1[12];
  v14 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v13);
  (*(v14 + 8))(v13, v14);
  sub_20C13B514();
  v15 = sub_20C13BB74();
  v16 = sub_20C13D1F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20B517000, v15, v16, "Activated Bluetooth source observer.", v17, 2u);
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  return (v20)(v5, v2);
}

double sub_20C07F120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B514();
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_20B517000, v11, v12, "Bluetooth source list updated: %ld", v13, 0xCu);
    MEMORY[0x20F2F6A40](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a1;

  sub_20B6380FC(0, 0, v6, &unk_20C18C128, v15);

  return result;
}

uint64_t sub_20C07F360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_20C07F384, 0, 0);
}

uint64_t sub_20C07F384()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 56);
    *(v0 + 72) = *(Strong + 160);

    if (v2 > 0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    *(v0 + 80) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378, &unk_20C18C130);
    sub_20C07FA1C();
    v5 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20C07F4B4, v5, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_20C07F4B4()
{
  sub_20C07FA80();
  sub_20C13B7A4();

  return MEMORY[0x2822009F8](sub_20C07F530, 0, 0);
}

uint64_t sub_20C07F558()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B514();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v6, v7, "Invalidating Bluetooth source observer.", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1[12];
  v10 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v9);
  return (*(v10 + 16))(v9, v10);
}

uint64_t sub_20C07F6C8()
{
  v1[2] = v0;
  v2 = sub_20C13BB84();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C07F788, 0, 0);
}

uint64_t sub_20C07F788(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_20C13B564();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  v6 = v5[18];
  v7 = v5[19];
  __swift_project_boxed_opaque_existential_1(v5 + 15, v6);
  if ((*(v7 + 8))(0xD000000000000023, 0x800000020C1BC210, v6, v7))
  {

    v8 = v1[1];

    return v8(2);
  }

  else
  {
    v10 = sub_20C133CC4();
    sub_20BC3CD24(v11);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D503A0], v10);
    swift_willThrow();

    v13 = v1[1];

    return v13();
  }
}

uint64_t sub_20C07F95C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20C07F360(a1, v4, v5, v7, v6);
}

unint64_t sub_20C07FA1C()
{
  result = qword_27C772380;
  if (!qword_27C772380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C772378, &unk_20C18C130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772380);
  }

  return result;
}

unint64_t sub_20C07FA80()
{
  result = qword_27C772388;
  if (!qword_27C772388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C772390, &qword_20C18C370);
    sub_20C07FB04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772388);
  }

  return result;
}

unint64_t sub_20C07FB04()
{
  result = qword_27C772398;
  if (!qword_27C772398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772398);
  }

  return result;
}

uint64_t sub_20C07FB58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7723A0, &qword_20C18C158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C07FBC0()
{
  result = qword_27C7723A8;
  if (!qword_27C7723A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7723A8);
  }

  return result;
}

uint64_t sub_20C07FC48()
{
  v1[6] = v0;
  v2 = sub_20C13BB84();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C07FD20, 0, 0);
}

uint64_t sub_20C07FD20(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[6];
  sub_20C13B564();
  sub_20C13BB64();
  v6 = *(v4 + 8);
  v1[12] = v6;
  v1[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v7 = v5[5];
  v8 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v7);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = *(v8 + 32);

  v10(sub_20C080494, v9, v7, v8);

  v11 = v5[5];
  v12 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v11);
  v15 = (*(v12 + 8) + **(v12 + 8));
  v13 = swift_task_alloc();
  v1[14] = v13;
  *v13 = v1;
  v13[1] = sub_20C07FF40;

  return v15(v11, v12);
}

uint64_t sub_20C07FF40()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_20C080174;
  }

  else
  {
    v2 = sub_20C080054;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C080054(uint64_t a1)
{
  sub_20C13B514();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20B517000, v2, v3, "Activated audio accessory monitor.", v4, 2u);
    MEMORY[0x20F2F6A40](v4, -1, -1);
  }

  v5 = v1[12];
  v6 = v1[10];
  v7 = v1[7];

  v5(v6, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_20C080174(uint64_t a1)
{
  v20 = v1;
  v2 = v1[15];
  sub_20C13B514();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[12];
    v7 = v1[9];
    v8 = v1[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](v1[3], v1[4]);
    v13 = sub_20B51E694(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v4, v5, "Failed to activate audio accessory monitor: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    v6(v7, v8);
  }

  else
  {
    v14 = v1[12];
    v15 = v1[9];
    v16 = v1[7];

    v14(v15, v16);
  }

  swift_willThrow();

  v17 = v1[1];

  return v17();
}

double sub_20C080354(int a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = (a2 & 0x100000000) == 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  if ((a1 & v6) != 0)
  {
    v10 = v4 == 8221;
  }

  else
  {
    v10 = 3;
  }

  v11 = sub_20C13CDF4();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a3;
  *(v12 + 40) = v10;

  sub_20B6380FC(0, 0, v9, &unk_20C18C218, v12);

  return result;
}

uint64_t sub_20C0804B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 73) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  return MEMORY[0x2822009F8](sub_20C0804D4, 0, 0);
}

uint64_t sub_20C0804D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 73);
    *(v0 + 64) = *(Strong + 56);

    *(v0 + 72) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378, &unk_20C18C130);
    sub_20C07FA1C();
    v4 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20C0805F8, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_20C0805F8()
{
  sub_20C07FA80();
  sub_20C13B7A4();

  return MEMORY[0x2822009F8](sub_20BDDEA2C, 0, 0);
}

uint64_t sub_20C080674()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B514();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v6, v7, "Invalidating audio accessory monitor.", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  return (*(v10 + 16))(v9, v10);
}

uint64_t sub_20C0807E4()
{
  v1[2] = v0;
  v2 = sub_20C13BB84();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C0808A4, 0, 0);
}

uint64_t sub_20C0808A4(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  sub_20C13B564();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  v10 = (*(v7 + 24) + **(v7 + 24));
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_20C080A30;

  return v10(v6, v7);
}

uint64_t sub_20C080A30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_20C080C88;
  }

  else
  {
    v4 = sub_20C080B44;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20C080B44()
{
  v1 = *(v0 + 56);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);

    v3 = *(v0 + 8);

    return v3(v2 == 8221);
  }

  else
  {

    v5 = sub_20C133CC4();
    sub_20BC3CD24(v6);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D503A0], v5);
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_20C080C88(double a1)
{
  v2 = *(v1 + 64);
  v3 = sub_20C133CC4();
  sub_20BC3CD24(v4);
  swift_allocError();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D503A0], v3);
  swift_willThrow();

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_20C080D74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20C0804B0(a1, v4, v5, v6, v7);
}

uint64_t sub_20C080E38(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 264) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  *(v2 + 24) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070, &unk_20C157440);
  *(v2 + 32) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  *(v2 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080, &unk_20C157450);
  *(v2 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0, &unk_20C1523D0);
  *(v2 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090, &unk_20C157460);
  *(v2 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  *(v2 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0, &unk_20C157470);
  *(v2 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0, &unk_20C1523F0);
  *(v2 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0, &unk_20C153BF0);
  *(v2 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00, &unk_20C152400);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0, &unk_20C153C00);
  *(v2 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10, &unk_20C152410);
  *(v2 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20, &unk_20C152420);
  *(v2 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  *(v2 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  *(v2 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  *(v2 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  *(v2 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  *(v2 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  *(v2 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0, &unk_20C153C20);
  *(v2 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  *(v2 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0, &unk_20C1574B0);
  *(v2 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  *(v2 + 216) = swift_task_alloc();
  v3 = sub_20C13BB84();
  *(v2 + 224) = v3;
  *(v2 + 232) = *(v3 - 8);
  *(v2 + 240) = swift_task_alloc();
  v4 = swift_task_alloc();
  *(v2 + 248) = v4;
  *v4 = v2;
  v4[1] = sub_20C0814A0;

  return sub_20C082CF0();
}

uint64_t sub_20C0814A0()
{
  v2 = *v1;
  v2[32] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[2];

    return MEMORY[0x2822009F8](sub_20C08172C, v5, 0);
  }
}

void sub_20C08172C(uint64_t a1)
{
  v2 = *(v1 + 256);
  v4 = *(v1 + 232);
  v3 = *(v1 + 240);
  v5 = *(v1 + 224);
  v6 = *(v1 + 16);
  v7 = *(v1 + 264);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v4 + 8))(v3, v5);
  v8 = *(v6 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state);
  v9 = swift_task_alloc();
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  os_unfair_lock_lock((v8 + 44));
  sub_20C087CC4((v8 + 16));
  if (v2)
  {

    os_unfair_lock_unlock((v8 + 44));
  }

  else
  {
    v11 = *(v1 + 208);
    v10 = *(v1 + 216);
    v13 = *(v1 + 192);
    v12 = *(v1 + 200);
    v15 = *(v1 + 176);
    v14 = *(v1 + 184);
    v53 = *(v1 + 160);
    v54 = *(v1 + 168);
    v52 = *(v1 + 152);
    v60 = *(v1 + 136);
    v61 = *(v1 + 144);
    v55 = *(v1 + 128);
    v56 = *(v1 + 120);
    v58 = *(v1 + 104);
    v59 = *(v1 + 112);
    v57 = *(v1 + 96);
    v50 = *(v1 + 88);
    v43 = *(v1 + 80);
    v44 = *(v1 + 72);
    v45 = *(v1 + 64);
    v46 = *(v1 + 56);
    v51 = *(v1 + 48);
    v47 = *(v1 + 40);
    v48 = *(v1 + 32);
    v16 = *(v1 + 16);
    v49 = *(v1 + 24);
    os_unfair_lock_unlock((v8 + 44));

    __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionClient), *(v16 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionClient + 24));
    sub_20C13A464();
    v17 = sub_20C133D84();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = sub_20C135854();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = sub_20C136194();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v20 = sub_20C133DD4();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    v21 = sub_20C135274();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    v22 = sub_20C134514();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    v23 = sub_20C133B04();
    (*(*(v23 - 8) + 56))(v54, 1, 1, v23);
    v24 = sub_20C134C04();
    (*(*(v24 - 8) + 56))(v53, 1, 1, v24);
    sub_20C13CE94();
    sub_20C1368C4();
    v25 = sub_20C1368F4();
    (*(*(v25 - 8) + 56))(v52, 0, 1, v25);
    v26 = sub_20C134914();
    (*(*(v26 - 8) + 56))(v61, 1, 1, v26);
    v27 = sub_20C133374();
    (*(*(v27 - 8) + 56))(v60, 1, 1, v27);
    v28 = sub_20C135B74();
    (*(*(v28 - 8) + 56))(v55, 1, 1, v28);
    v29 = sub_20C134CD4();
    (*(*(v29 - 8) + 56))(v56, 1, 1, v29);
    v30 = sub_20C136EB4();
    (*(*(v30 - 8) + 56))(v59, 1, 1, v30);
    v31 = sub_20C133494();
    (*(*(v31 - 8) + 56))(v58, 1, 1, v31);
    v32 = sub_20C134594();
    (*(*(v32 - 8) + 56))(v57, 1, 1, v32);
    v33 = sub_20C138184();
    (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
    v34 = sub_20C1363D4();
    (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
    v35 = sub_20C1337A4();
    (*(*(v35 - 8) + 56))(v44, 1, 1, v35);
    v36 = sub_20C1337D4();
    (*(*(v36 - 8) + 56))(v45, 1, 1, v36);
    v37 = sub_20C134A94();
    (*(*(v37 - 8) + 56))(v46, 1, 1, v37);
    v38 = sub_20C135364();
    (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
    v39 = sub_20C136484();
    (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
    v40 = sub_20C136784();
    (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
    v41 = sub_20C137FE4();
    (*(*(v41 - 8) + 56))(v49, 1, 1, v41);
    sub_20C13A174();

    sub_20B520158(v49, &unk_27C768AC0, &unk_20C1523B0);
    sub_20B520158(v48, &unk_27C765070, &unk_20C157440);
    sub_20B520158(v47, &unk_27C765CB0, &unk_20C1523C0);
    sub_20B520158(v51, &unk_27C765080, &unk_20C157450);
    sub_20B520158(v46, &unk_27C768AD0, &unk_20C1523D0);
    sub_20B520158(v45, &unk_27C765090, &unk_20C157460);
    sub_20B520158(v44, &unk_27C768AE0, &unk_20C1523E0);
    sub_20B520158(v43, &unk_27C7650A0, &unk_20C157470);
    sub_20B520158(v50, &unk_27C768AF0, &unk_20C1523F0);
    sub_20B520158(v57, &unk_27C7650B0, &unk_20C153BF0);
    sub_20B520158(v58, &unk_27C768B00, &unk_20C152400);
    sub_20B520158(v59, &unk_27C7650C0, &unk_20C153C00);
    sub_20B520158(v56, &unk_27C768B10, &unk_20C152410);
    sub_20B520158(v55, &unk_27C7650D0, &unk_20C157480);
    sub_20B520158(v60, &unk_27C768B20, &unk_20C152420);
    sub_20B520158(v61, &unk_27C7650E0, &unk_20C157490);
    sub_20B520158(v52, &unk_27C767260, &unk_20C152430);
    sub_20B520158(v53, &unk_27C7650F0, &unk_20C1574A0);
    sub_20B520158(v54, &qword_27C768B30, &unk_20C152440);
    sub_20B520158(v15, &unk_27C765050, &unk_20C153C10);
    sub_20B520158(v14, &unk_27C765100, &unk_20C152450);
    sub_20B520158(v13, &unk_27C7687F0, &unk_20C153C20);
    sub_20B520158(v12, &unk_27C765110, &unk_20C152460);
    sub_20B520158(v11, &unk_27C76BBF0, &unk_20C1574B0);
    sub_20B520158(v10, &unk_27C765120, &unk_20C152470);

    v42 = *(v1 + 8);

    v42();
  }
}

uint64_t sub_20C0823A8()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772418, &qword_20C18C368);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_20C0824FC;

  return sub_20C082CF0();
}

uint64_t sub_20C0824FC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_20C082654, v6, 0);
  }
}

uint64_t sub_20C082654(uint64_t a1)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  v4 = *(v1 + 48);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v3 + 8))(v2, v4);
  if (qword_27C760D00 != -1)
  {
    swift_once();
  }

  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 24);
  v8 = __swift_project_value_buffer(v7, qword_27C7723B0);
  (*(v6 + 16))(v5, v8, v7);
  sub_20C13A344();
  (*(v6 + 8))(v5, v7);
  v9 = *(v1 + 96);
  if (v9 == 3)
  {
    v10 = swift_task_alloc();
    *(v1 + 80) = v10;
    *v10 = v1;
    v10[1] = sub_20C082840;

    return sub_20C0807E4();
  }

  else
  {

    v12 = *(v1 + 8);

    return v12(v9);
  }
}

uint64_t sub_20C082840(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v4 + 16);

    return MEMORY[0x2822009F8](sub_20C0829A8, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_20C0829A8()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_20C082A44;

  return sub_20C07F6C8();
}

uint64_t sub_20C082A44(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v4 + 16);

    return MEMORY[0x2822009F8](sub_20C082BAC, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_20C082BAC(double a1)
{
  v2 = sub_20C133CC4();
  sub_20C087F10(&qword_27C766EF8, MEMORY[0x277D503C8], MEMORY[0x277D503D0]);
  swift_allocError();
  (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D503A0], v2);
  swift_willThrow();

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_20C082CF0()
{
  v1[2] = v0;
  v2 = sub_20C13BB84();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C082DB0, v0, 0);
}

uint64_t sub_20C082DB0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state);
  v0[6] = v1;
  os_unfair_lock_lock((v1 + 44));
  v2 = *(v1 + 16);
  if (v2)
  {
    if (v2 == 2)
    {
      sub_20C087B54();
      swift_allocError();
      swift_willThrow();
      os_unfair_lock_unlock((v1 + 44));
    }

    else
    {
      os_unfair_lock_unlock((v0[6] + 44));
    }

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];
    os_unfair_lock_unlock((v1 + 44));
    sub_20C13B564();
    sub_20C13BB64();
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_20C082F7C;

    return sub_20C07FC48();
  }
}

uint64_t sub_20C082F7C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](sub_20C0830C8, v6, 0);
  }
}

uint64_t sub_20C0830C8()
{
  v1 = *(v0 + 48);
  sub_20C07EEA8();
  os_unfair_lock_lock((v1 + 44));
  sub_20C087BA8(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 1;
  *(v1 + 40) = 0;
  os_unfair_lock_unlock((*(v0 + 48) + 44));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C083178()
{
  v1 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_activityTypeBehavior;
  v2 = sub_20C137254();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionClient));
  sub_20B64B688(v0 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionOrigin);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20C083250()
{
  v0 = sub_20C13A814();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772418, &qword_20C18C368);
  __swift_allocate_value_buffer(v4, qword_27C7723B0);
  __swift_project_value_buffer(v4, qword_27C7723B0);
  (*(v1 + 104))(v3, *MEMORY[0x277D4EFC0], v0);
  v6[15] = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772390, &qword_20C18C370);
  sub_20C087C4C(&qword_27C772420, sub_20C087BF8, MEMORY[0x277D4FA50]);
  sub_20C087C4C(&qword_27C772388, sub_20C07FB04, MEMORY[0x277D84F50]);
  return sub_20C13A384();
}

double sub_20C083400(uint64_t *a1)
{
  if (*a1 >= 3)
  {
    *(a1 + 12) = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 2;
    sub_20C13CE34();
    sub_20C13CE34();
    sub_20C13CE34();
    sub_20C080674();
    sub_20C07F558();
  }

  return result;
}

uint64_t sub_20C0834EC(unint64_t *a1, uint64_t a2, int a3)
{
  v18 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  if (*a1 >= 3)
  {
    v17[1] = v3;
    sub_20C13CE34();
    sub_20C13CE34();
    sub_20C13CE34();
  }

  else
  {
    sub_20C087BA8(*a1, a1[1], a1[2]);
  }

  v9 = sub_20C13CDF4();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;

  v12 = sub_20B6383D0(0, 0, v8, &unk_20C18C388, v11);
  v10(v8, 1, 1, v9);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;

  v14 = sub_20B6383D0(0, 0, v8, &unk_20C18C398, v13);
  v10(v8, 1, 1, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a2;
  *(v15 + 40) = v18;

  result = sub_20B6383D0(0, 0, v8, &unk_20C18C3A8, v15);
  *a1 = v12;
  a1[1] = v14;
  a1[2] = result;
  *(a1 + 12) = 771;
  return result;
}

uint64_t sub_20C0837B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20C083848();
}

uint64_t sub_20C083848()
{
  v1[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772430, &qword_20C18C3B8);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772438, &unk_20C18C3C0);
  v1[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772458, &qword_20C18C3D8);
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C083A58, v0, 0);
}

uint64_t sub_20C083A88(uint64_t a1)
{
  v2 = v1[20];
  v4 = v1[13];
  v3 = v1[14];
  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[9];
  v8 = v1[10];
  sub_20C13B564();
  sub_20C13BB64();
  (*(v4 + 8))(v3, v5);
  v1[21] = *(v2 + 56);
  (*(v8 + 104))(v6, *MEMORY[0x277D85778], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378, &unk_20C18C130);
  sub_20B6D6ABC(&qword_27C772380, &qword_27C772378, &unk_20C18C130, MEMORY[0x277D0A8E0]);
  v10 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C083BF0, v10, v9);
}

uint64_t sub_20C083BF0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  sub_20C13B794();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20C083C94, v4, 0);
}

uint64_t sub_20C083C94()
{
  sub_20B6D6ABC(&qword_27C772440, &qword_27C772438, &unk_20C18C3C0, MEMORY[0x277D857C0]);
  sub_20C13CE64();
  v1 = sub_20C087F10(&qword_27C772448, type metadata accessor for HeartRateDeviceDiscovery, &unk_20C18C338);
  v2 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state;
  v0[22] = v1;
  v0[23] = v2;
  v3 = v0[6];
  sub_20B6D6ABC(&qword_27C772460, &qword_27C772458, &qword_20C18C3D8, MEMORY[0x277D857B0]);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_20C083E0C;

  return MEMORY[0x282200310](v0 + 25, v3, v1);
}

uint64_t sub_20C083E0C()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_20C083F1C, v4, 0);
  }

  return result;
}

uint64_t sub_20C083F1C()
{
  v1 = *(v0 + 200);
  if (v1 == 4)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(*(v0 + 48) + *(v0 + 184));
    os_unfair_lock_lock((v4 + 44));
    if (*(v4 + 16) >= 3uLL)
    {
      v6 = *(v0 + 56);
      v5 = *(v0 + 64);
      v7 = *(v0 + 48);
      v8 = *(v4 + 41);
      *(v4 + 40) = v1;
      if (v1 == 3)
      {
        v9 = v8;
      }

      else
      {
        v9 = v1;
      }

      v10 = sub_20C13CDF4();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v5, 1, 1, v10);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      sub_20B63983C(v5, v6);
      v13 = (*(v11 + 48))(v6, 1, v10);

      v14 = *(v0 + 56);
      if (v13 == 1)
      {
        sub_20B520158(*(v0 + 56), &unk_27C762220, &qword_20C151250);
      }

      else
      {
        sub_20C13CDE4();
        (*(v11 + 8))(v14, v10);
      }

      v15 = *(v12 + 16);
      swift_unknownObjectRetain();

      if (v15)
      {
        swift_getObjectType();
        v16 = sub_20C13CD24();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      sub_20B520158(*(v0 + 64), &unk_27C762220, &qword_20C151250);
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_20C18C408;
      *(v19 + 24) = v12;
      if (v18 | v16)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      swift_task_create();
    }

    os_unfair_lock_unlock((v4 + 44));
    v20 = *(v0 + 176);
    v21 = *(v0 + 48);
    sub_20B6D6ABC(&qword_27C772460, &qword_27C772458, &qword_20C18C3D8, MEMORY[0x277D857B0]);
    v22 = swift_task_alloc();
    *(v0 + 192) = v22;
    *v22 = v0;
    v22[1] = sub_20C083E0C;

    return MEMORY[0x282200310](v0 + 200, v21, v20);
  }
}

uint64_t sub_20C0842F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20C084380();
}

uint64_t sub_20C084380()
{
  v1[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772430, &qword_20C18C3B8);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_20C13BB84();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772438, &unk_20C18C3C0);
  v1[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772458, &qword_20C18C3D8);
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C084590, v0, 0);
}

uint64_t sub_20C0845C0(uint64_t a1)
{
  v2 = v1[20];
  v4 = v1[13];
  v3 = v1[14];
  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[9];
  v8 = v1[10];
  sub_20C13B564();
  sub_20C13BB64();
  (*(v4 + 8))(v3, v5);
  v1[21] = *(v2 + 160);
  (*(v8 + 104))(v6, *MEMORY[0x277D85778], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378, &unk_20C18C130);
  sub_20B6D6ABC(&qword_27C772380, &qword_27C772378, &unk_20C18C130, MEMORY[0x277D0A8E0]);
  v10 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C084728, v10, v9);
}

uint64_t sub_20C084728()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  sub_20C13B794();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20C0847CC, v4, 0);
}

uint64_t sub_20C0847CC()
{
  sub_20B6D6ABC(&qword_27C772440, &qword_27C772438, &unk_20C18C3C0, MEMORY[0x277D857C0]);
  sub_20C13CE64();
  v1 = sub_20C087F10(&qword_27C772448, type metadata accessor for HeartRateDeviceDiscovery, &unk_20C18C338);
  v2 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state;
  v0[22] = v1;
  v0[23] = v2;
  v3 = v0[6];
  sub_20B6D6ABC(&qword_27C772460, &qword_27C772458, &qword_20C18C3D8, MEMORY[0x277D857B0]);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_20C084944;

  return MEMORY[0x282200310](v0 + 25, v3, v1);
}

uint64_t sub_20C084944()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_20C084A54, v4, 0);
  }

  return result;
}

uint64_t sub_20C084A54()
{
  v1 = *(v0 + 200);
  if (v1 == 4)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(*(v0 + 48) + *(v0 + 184));
    os_unfair_lock_lock((v4 + 44));
    if (*(v4 + 16) >= 3uLL)
    {
      v5 = *(v0 + 56);
      v6 = *(v0 + 64);
      v7 = *(v0 + 48);
      v8 = *(v4 + 40);
      if (v8 == 3)
      {
        v9 = v1;
      }

      else
      {
        v9 = v8;
      }

      *(v4 + 40) = v8 | (v1 << 8);
      v10 = sub_20C13CDF4();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v6, 1, 1, v10);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      sub_20B63983C(v6, v5);
      v13 = (*(v11 + 48))(v5, 1, v10);

      v14 = *(v0 + 56);
      if (v13 == 1)
      {
        sub_20B520158(*(v0 + 56), &unk_27C762220, &qword_20C151250);
      }

      else
      {
        sub_20C13CDE4();
        (*(v11 + 8))(v14, v10);
      }

      v15 = *(v12 + 16);
      swift_unknownObjectRetain();

      if (v15)
      {
        swift_getObjectType();
        v16 = sub_20C13CD24();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      sub_20B520158(*(v0 + 64), &unk_27C762220, &qword_20C151250);
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_20C18C3E8;
      *(v19 + 24) = v12;
      if (v18 | v16)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      swift_task_create();
    }

    os_unfair_lock_unlock((v4 + 44));
    v20 = *(v0 + 176);
    v21 = *(v0 + 48);
    sub_20B6D6ABC(&qword_27C772460, &qword_27C772458, &qword_20C18C3D8, MEMORY[0x277D857B0]);
    v22 = swift_task_alloc();
    *(v0 + 192) = v22;
    *v22 = v0;
    v22[1] = sub_20C084944;

    return MEMORY[0x282200310](v0 + 200, v21, v20);
  }
}

uint64_t sub_20C084E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_20B52AC14;

  return sub_20C084ECC(v6);
}

uint64_t sub_20C084ECC(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 450) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0, &unk_20C1523B0);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070, &unk_20C157440);
  *(v2 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  *(v2 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080, &unk_20C157450);
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0, &unk_20C1523D0);
  *(v2 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090, &unk_20C157460);
  *(v2 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  *(v2 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0, &unk_20C157470);
  *(v2 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0, &unk_20C1523F0);
  *(v2 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0, &unk_20C153BF0);
  *(v2 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00, &unk_20C152400);
  *(v2 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0, &unk_20C153C00);
  *(v2 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10, &unk_20C152410);
  *(v2 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0, &unk_20C157480);
  *(v2 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20, &unk_20C152420);
  *(v2 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  *(v2 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  *(v2 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0, &unk_20C1574A0);
  *(v2 + 240) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30, &unk_20C152440);
  *(v2 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  *(v2 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  *(v2 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0, &unk_20C153C20);
  *(v2 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  *(v2 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0, &unk_20C1574B0);
  *(v2 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  *(v2 + 296) = swift_task_alloc();
  v3 = sub_20C1368F4();
  *(v2 + 304) = v3;
  *(v2 + 312) = *(v3 - 8);
  *(v2 + 320) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772430, &qword_20C18C3B8);
  *(v2 + 328) = v4;
  *(v2 + 336) = *(v4 - 8);
  *(v2 + 344) = swift_task_alloc();
  v5 = sub_20C13BB84();
  *(v2 + 352) = v5;
  *(v2 + 360) = *(v5 - 8);
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C0855D8, v1, 0);
}

uint64_t sub_20C0855D8()
{
  v22 = v0;
  v1 = sub_20C133284();
  v2 = sub_20C1371D4();
  v0[48] = sub_20B7C771C(v2, v1, v3);

  sub_20C13B514();

  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[47];
  v8 = v0[44];
  v9 = v0[45];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    sub_20C087F58();
    v12 = sub_20C13CF94();
    v14 = sub_20B51E694(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20B517000, v4, v5, "Discovering heart rate device that supports: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  (*(v9 + 8))(v7, v8);
  v0[49] = v9 + 8;
  v16 = v0[42];
  v15 = v0[43];
  v17 = v0[41];
  v0[50] = *(v0[12] + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_heartRateDeviceStreamPublisher);
  (*(v16 + 104))(v15, *MEMORY[0x277D85778], v17);
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772438, &unk_20C18C3C0);
  v0[11] = sub_20B6D6ABC(&qword_27C772440, &qword_27C772438, &unk_20C18C3C0, MEMORY[0x277D857C0]);
  v0[51] = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378, &unk_20C18C130);
  sub_20B6D6ABC(&qword_27C772380, &qword_27C772378, &unk_20C18C130, MEMORY[0x277D0A8E0]);
  v19 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C085898, v19, v18);
}

uint64_t sub_20C085898()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v4 = v0[12];
  sub_20C13B794();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20C085938, v4, 0);
}

uint64_t sub_20C085938()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C13CE64();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = sub_20C087F10(&qword_27C772448, type metadata accessor for HeartRateDeviceDiscovery, &unk_20C18C338);
  v6 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionClient;
  v0[52] = v5;
  v0[53] = v6;
  v0[54] = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionOrigin;
  v7 = v0[12];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = swift_task_alloc();
  v0[55] = v8;
  *v8 = v0;
  v8[1] = sub_20C085B50;

  return MEMORY[0x282200310](v0 + 56, v7, v5);
}

uint64_t sub_20C085B50()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 96);

    return MEMORY[0x2822009F8](sub_20C085C60, v4, 0);
  }

  return result;
}

uint64_t sub_20C085C60(uint64_t a1)
{
  v81 = v1;
  v2 = *(v1 + 448);
  if (v2 == 4)
  {

    __swift_destroy_boxed_opaque_existential_1((v1 + 16));

    v3 = *(v1 + 8);

    return v3();
  }

  sub_20C13B514();
  v5 = sub_20C13BB74();
  v6 = sub_20C13D1F4();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 360);
  v9 = *(v1 + 368);
  v10 = *(v1 + 352);
  if (v7)
  {
    v78 = *(v1 + 368);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v80 = v12;
    *v11 = 136315138;
    *(v1 + 449) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772390, &qword_20C18C370);
    v13 = sub_20C13D8F4();
    v15 = sub_20B51E694(v13, v14, &v80);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v5, v6, "Heart rate device updated: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);

    (*(v8 + 8))(v78, v10);
    if (v2 != 3)
    {
      goto LABEL_10;
    }
  }

  else
  {

    (*(v8 + 8))(v9, v10);
    if (v2 != 3)
    {
LABEL_10:
      v16 = sub_20C133294();
      v18 = v17;
      if (v16 == sub_20C133294() && v18 == v19)
      {
      }

      else
      {
        v20 = sub_20C13DFF4();

        if ((v20 & 1) == 0)
        {
          v21 = *(v1 + 384);
          v22 = sub_20C133284();
          sub_20C087110(v22, v21);
        }
      }
    }
  }

  sub_20C13CE94();
  sub_20C1368C4();
  v67 = *(v1 + 312);
  v68 = *(v1 + 320);
  v23 = *(v1 + 296);
  v24 = *(v1 + 280);
  v25 = *(v1 + 288);
  v26 = *(v1 + 264);
  v27 = *(v1 + 272);
  v66 = *(v1 + 304);
  v29 = *(v1 + 248);
  v28 = *(v1 + 256);
  v77 = *(v1 + 240);
  v79 = *(v1 + 232);
  v69 = *(v1 + 208);
  v70 = *(v1 + 200);
  v71 = *(v1 + 192);
  v72 = *(v1 + 216);
  v73 = *(v1 + 184);
  v74 = *(v1 + 224);
  v75 = *(v1 + 176);
  v76 = *(v1 + 168);
  v65 = *(v1 + 160);
  v58 = *(v1 + 152);
  v59 = *(v1 + 144);
  v60 = *(v1 + 136);
  v61 = *(v1 + 128);
  v62 = *(v1 + 120);
  v63 = *(v1 + 112);
  v30 = (*(v1 + 96) + *(v1 + 424));
  v64 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_20C13A464();
  v31 = sub_20C133D84();
  (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
  v32 = sub_20C135854();
  (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
  v33 = sub_20C136194();
  (*(*(v33 - 8) + 56))(v24, 1, 1, v33);
  v34 = sub_20C133DD4();
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  v35 = sub_20C135274();
  (*(*(v35 - 8) + 56))(v26, 1, 1, v35);
  v36 = sub_20C134514();
  (*(*(v36 - 8) + 56))(v28, 1, 1, v36);
  v37 = sub_20C133B04();
  (*(*(v37 - 8) + 56))(v29, 1, 1, v37);
  v38 = sub_20C134C04();
  (*(*(v38 - 8) + 56))(v77, 1, 1, v38);
  (*(v67 + 16))(v79, v68, v66);
  (*(v67 + 56))(v79, 0, 1, v66);
  v39 = sub_20C134914();
  (*(*(v39 - 8) + 56))(v74, 1, 1, v39);
  v40 = sub_20C133374();
  (*(*(v40 - 8) + 56))(v72, 1, 1, v40);
  v41 = sub_20C135B74();
  (*(*(v41 - 8) + 56))(v69, 1, 1, v41);
  v42 = sub_20C134CD4();
  (*(*(v42 - 8) + 56))(v70, 1, 1, v42);
  v43 = sub_20C136EB4();
  (*(*(v43 - 8) + 56))(v71, 1, 1, v43);
  v44 = sub_20C133494();
  (*(*(v44 - 8) + 56))(v73, 1, 1, v44);
  v45 = sub_20C134594();
  (*(*(v45 - 8) + 56))(v75, 1, 1, v45);
  v46 = sub_20C138184();
  (*(*(v46 - 8) + 56))(v76, 1, 1, v46);
  v47 = sub_20C1363D4();
  (*(*(v47 - 8) + 56))(v65, 1, 1, v47);
  v48 = sub_20C1337A4();
  (*(*(v48 - 8) + 56))(v58, 1, 1, v48);
  v49 = sub_20C1337D4();
  (*(*(v49 - 8) + 56))(v59, 1, 1, v49);
  v50 = sub_20C134A94();
  (*(*(v50 - 8) + 56))(v60, 1, 1, v50);
  v51 = sub_20C135364();
  (*(*(v51 - 8) + 56))(v61, 1, 1, v51);
  v52 = sub_20C136484();
  (*(*(v52 - 8) + 56))(v62, 1, 1, v52);
  v53 = sub_20C136784();
  (*(*(v53 - 8) + 56))(v63, 1, 1, v53);
  v54 = sub_20C137FE4();
  (*(*(v54 - 8) + 56))(v64, 1, 1, v54);
  sub_20C13A174();

  sub_20B520158(v64, &unk_27C768AC0, &unk_20C1523B0);
  sub_20B520158(v63, &unk_27C765070, &unk_20C157440);
  sub_20B520158(v62, &unk_27C765CB0, &unk_20C1523C0);
  sub_20B520158(v61, &unk_27C765080, &unk_20C157450);
  sub_20B520158(v60, &unk_27C768AD0, &unk_20C1523D0);
  sub_20B520158(v59, &unk_27C765090, &unk_20C157460);
  sub_20B520158(v58, &unk_27C768AE0, &unk_20C1523E0);
  sub_20B520158(v65, &unk_27C7650A0, &unk_20C157470);
  sub_20B520158(v76, &unk_27C768AF0, &unk_20C1523F0);
  sub_20B520158(v75, &unk_27C7650B0, &unk_20C153BF0);
  sub_20B520158(v73, &unk_27C768B00, &unk_20C152400);
  sub_20B520158(v71, &unk_27C7650C0, &unk_20C153C00);
  sub_20B520158(v70, &unk_27C768B10, &unk_20C152410);
  sub_20B520158(v69, &unk_27C7650D0, &unk_20C157480);
  sub_20B520158(v72, &unk_27C768B20, &unk_20C152420);
  sub_20B520158(v74, &unk_27C7650E0, &unk_20C157490);
  sub_20B520158(v79, &unk_27C767260, &unk_20C152430);
  sub_20B520158(v77, &unk_27C7650F0, &unk_20C1574A0);
  sub_20B520158(v29, &qword_27C768B30, &unk_20C152440);
  sub_20B520158(v28, &unk_27C765050, &unk_20C153C10);
  sub_20B520158(v26, &unk_27C765100, &unk_20C152450);
  sub_20B520158(v27, &unk_27C7687F0, &unk_20C153C20);
  sub_20B520158(v24, &unk_27C765110, &unk_20C152460);
  sub_20B520158(v25, &unk_27C76BBF0, &unk_20C1574B0);
  sub_20B520158(v23, &unk_27C765120, &unk_20C152470);
  (*(v67 + 8))(v68, v66);
  v55 = *(v1 + 416);
  v56 = *(v1 + 96);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, *(v1 + 40));
  v57 = swift_task_alloc();
  *(v1 + 440) = v57;
  *v57 = v1;
  v57[1] = sub_20C085B50;

  return MEMORY[0x282200310](v1 + 448, v56, v55);
}

uint64_t sub_20C086B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 33) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_20C086B54, 0, 0);
}

uint64_t sub_20C086B54()
{
  v1 = *(v0 + 33);
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_heartRateDeviceStreamPublisher);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378, &unk_20C18C130);
  sub_20B6D6ABC(&qword_27C772380, &qword_27C772378, &unk_20C18C130, MEMORY[0x277D0A8E0]);
  v3 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C086C34, v3, v2);
}

uint64_t sub_20C086C34()
{
  sub_20C087C4C(&qword_27C772388, sub_20C07FB04, MEMORY[0x277D84F50]);
  sub_20C13B7A4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C086CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 33) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_20C086CF4, 0, 0);
}

uint64_t sub_20C086CF4()
{
  v1 = *(v0 + 33);
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_heartRateDeviceStreamPublisher);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378, &unk_20C18C130);
  sub_20B6D6ABC(&qword_27C772380, &qword_27C772378, &unk_20C18C130, MEMORY[0x277D0A8E0]);
  v3 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20C0883EC, v3, v2);
}

uint64_t sub_20C086DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C088134();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA18](a1, a2, a3, a4, a5, v10, v11);
}

uint64_t sub_20C086E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C088134();
  v11 = MEMORY[0x277D4F9E0];

  return MEMORY[0x2821AEA20](a1, a2, a3, a4, a5, v10, v11);
}

uint64_t type metadata accessor for HeartRateDeviceDiscovery(uint64_t a1)
{
  result = qword_27C772400;
  if (!qword_27C772400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C086F20(uint64_t a1)
{
  result = sub_20C137254();
  if (v2 <= 0x3F)
  {
    result = sub_20C13A484();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI24HeartRateDeviceDiscoveryC5State33_66004802B124CD8BF46659BEFE817868LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20C087028(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 26))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C087084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_20C0870DC(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

void sub_20C087110(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v3 = a2 + 56;
    v4 = 1 << *(a2 + 32);
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    else
    {
      v5 = -1;
    }

    v6 = v5 & *(a2 + 56);
    v7 = (v4 + 63) >> 6;
    v8 = a1 + 56;

    v9 = 0;
    v22 = v3;
    v21 = v7;
    if (v6)
    {
      while (1)
      {
        v10 = v9;
LABEL_10:
        if (!*(a1 + 16))
        {
          break;
        }

        sub_20C13E164();
        sub_20C134224();
        sub_20C13CA64();

        v11 = sub_20C13E1B4();
        v12 = -1 << *(a1 + 32);
        v13 = v11 & ~v12;
        if (((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          break;
        }

        v6 &= v6 - 1;
        v14 = ~v12;
        while (1)
        {
          v15 = sub_20C134224();
          v17 = v16;
          if (v15 == sub_20C134224() && v17 == v18)
          {
            break;
          }

          v20 = sub_20C13DFF4();

          if (v20)
          {
            goto LABEL_21;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

LABEL_21:
        v9 = v10;
        v3 = v22;
        v7 = v21;
        if (!v6)
        {
          goto LABEL_7;
        }
      }

LABEL_23:
    }

    else
    {
LABEL_7:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          return;
        }

        v6 = *(v3 + 8 * v10);
        ++v9;
        if (v6)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_20C08732C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a6;
  v46 = a5;
  v40 = a2;
  v41 = a3;
  v42 = a1;
  v12 = sub_20C13A484();
  MEMORY[0x28223BE20](v12 - 8);
  v45 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C137254();
  v43 = *(v14 - 8);
  v15 = v43;
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[3] = a8;
  v56[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  v19 = [objc_allocWithZone(MEMORY[0x277CEF820]) init];
  v20 = type metadata accessor for BluetoothSourceObserver();
  v21 = [objc_allocWithZone(v20) init];
  v35 = *(v15 + 16);
  v36 = v17;
  v35(v17, a1, v14);
  sub_20B51CC64(v56, v55);
  v22 = [objc_opt_self() standardUserDefaults];
  sub_20B51CC64(v46, v54);
  sub_20B64B624(v44, v45);
  v53[3] = sub_20B51C88C(0, &qword_27C772470, 0x277CEF820);
  v53[4] = &off_2822D79F8;
  v53[0] = v19;
  v52[3] = v20;
  v52[4] = &off_282307EB0;
  v52[0] = v21;
  v51[3] = sub_20B51C88C(0, &qword_27C772478, 0x277CBEBD0);
  v51[4] = &off_2822FA948;
  v51[0] = v22;
  type metadata accessor for HeartRateDeviceDiscovery(0);
  v23 = swift_allocObject();
  v39 = v19;
  v38 = v21;
  v37 = v22;
  swift_defaultActor_initialize();
  v24 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772480, &qword_20C18C418);
  v25 = swift_allocObject();
  *(v25 + 44) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 16) = 0;
  *(v25 + 40) = 0;
  *(v23 + v24) = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_heartRateDeviceStreamPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772378, &unk_20C18C130);
  *(v23 + v26) = sub_20C13B7B4();
  v35((v23 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_activityTypeBehavior), v17, v14);
  sub_20B51CC64(v53, v50);
  type metadata accessor for AudioHeartRateDeviceDiscovery();
  v27 = swift_allocObject();
  *(v27 + 56) = sub_20C13B7B4();
  sub_20B51C710(v50, v27 + 16);
  *(v23 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_audioHeartRateDeviceDiscovery) = v27;
  sub_20B51CC64(v55, v50);
  sub_20B51CC64(v52, v49);
  sub_20B51CC64(v51, v48);
  type metadata accessor for BluetoothHeartRateDeviceDiscovery();
  v28 = swift_allocObject();
  v28[20] = sub_20C13B7B4();
  sub_20C13A924();
  swift_allocObject();
  v29 = v40;
  swift_unknownObjectRetain();
  v30 = v41;
  v31 = sub_20C13A914();
  v28[2] = v29;
  v28[3] = v30;
  sub_20B51CC64(v50, (v28 + 4));
  sub_20B51CC64(v49, (v28 + 9));
  v28[14] = v31;
  sub_20B51CC64(v48, (v28 + 15));
  swift_getObjectType();
  sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_20C13A774();

  swift_unknownObjectRelease();

  sub_20B64B688(v44);
  __swift_destroy_boxed_opaque_existential_1(v46);
  v32 = *(v43 + 8);
  v32(v42, v14);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v55);
  v32(v36, v14);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  *(v23 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_bluetoothHeartRateDeviceDiscovery) = v28;
  sub_20B51C710(v54, v23 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionClient);
  sub_20B681E78(v45, v23 + OBJC_IVAR____TtC9SeymourUI24HeartRateDeviceDiscovery_sessionOrigin);
  return v23;
}

BOOL sub_20C0878B0(uint64_t a1, uint64_t a2)
{
  v2 = BYTE1(a2);
  if (a1 == 3)
  {
    if (a2 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (a2 == 3)
    {
      return 0;
    }

    v3 = BYTE1(a1);
    v4 = sub_20C133294();
    v6 = v5;
    if (v4 == sub_20C133294() && v6 == v7)
    {

      BYTE1(a1) = v3;
    }

    else
    {
      v8 = sub_20C13DFF4();

      BYTE1(a1) = v3;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (BYTE1(a1) == 3)
  {
    return v2 == 3;
  }

  if (v2 == 3)
  {
    return 0;
  }

  v10 = sub_20C133294();
  v12 = v11;
  if (v10 == sub_20C133294() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_20C13DFF4();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_20C087A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a1)
  {
    case 0:
      return !a5;
    case 1:
      return a5 == 1;
    case 2:
      return a5 == 2;
  }

  if (a5 < 3 || (sub_20C13CE14() & 1) == 0 || (sub_20C13CE14() & 1) == 0 || (sub_20C13CE14() & 1) == 0)
  {
    return 0;
  }

  return sub_20C0878B0(a4, a8);
}

unint64_t sub_20C087B54()
{
  result = qword_27C772410;
  if (!qword_27C772410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772410);
  }

  return result;
}

double sub_20C087BA8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 3)
  {
  }

  return result;
}

unint64_t sub_20C087BF8()
{
  result = qword_27C772428;
  if (!qword_27C772428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772428);
  }

  return result;
}

uint64_t sub_20C087C4C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C772390, &qword_20C18C370);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C087CE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20C0837B8();
}

uint64_t sub_20C087D98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20C0842F0();
}

uint64_t sub_20C087E4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20C084E30(a1, v4, v5, v6, v7);
}

uint64_t sub_20C087F10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20C087F58()
{
  result = qword_27C772450;
  if (!qword_27C772450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772450);
  }

  return result;
}

uint64_t sub_20C087FAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20C086CD0(a1, v4, v5, v6, v7);
}

uint64_t sub_20C088070(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20C086B30(a1, v4, v5, v6, v7);
}

unint64_t sub_20C088134()
{
  result = qword_27C772468;
  if (!qword_27C772468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772468);
  }

  return result;
}

uint64_t sub_20C088188(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20C07E11C(a1, v1);
}

uint64_t getEnumTagSinglePayload for HeartRateDeviceDiscovery.HeartRateDeviceList(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 65283 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65283 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65283;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65283;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *storeEnumTagSinglePayload for HeartRateDeviceDiscovery.HeartRateDeviceList(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C088398()
{
  result = qword_27C772488;
  if (!qword_27C772488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772488);
  }

  return result;
}

id sub_20C0883F0()
{
  result = [objc_opt_self() whiteColor];
  qword_27C772490 = result;
  return result;
}

_BYTE *sub_20C08842C(void *a1, char a2)
{
  if ([objc_opt_self() smu_canDecodeOnRenderThread])
  {
    v5 = [objc_opt_self() effectWithStyle_];
    v6 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    v8 = objc_opt_self();
    v6 = v7;
    v9 = [v8 grayColor];
    [v6 setBackgroundColor_];

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  *&v2[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_blurView] = v6;
  v10 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_imageView;
  v11 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v12 = qword_27C760D08;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  [v13 setTintColor_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v2[v10] = v13;
  *&v2[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_image] = a1;
  v2[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize] = a2 & 1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for DeviceBadgeView();
  v14 = a1;
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_20C088980();
  if (v15[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize])
  {
    v16 = 46.0;
  }

  else
  {
    v16 = 23.0;
  }

  v17 = [objc_opt_self() configurationWithPointSize_];
  v18 = *&v15[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_imageView];
  v19 = [v14 imageWithConfiguration_];
  [v18 setImage_];

  return v15;
}

id sub_20C088740(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for DeviceBadgeView();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v2 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize;
  if (v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize])
  {
    v3 = 6.0;
  }

  else
  {
    v3 = 0.0;
  }

  if (v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize])
  {
    v4 = 46.0;
  }

  else
  {
    v4 = 20.0;
  }

  v5 = [v1 layer];
  [v5 setCornerRadius_];

  v6 = [v1 layer];
  [v6 setMasksToBounds_];

  if ([objc_opt_self() smu_canDecodeOnRenderThread])
  {
    v7 = [*&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_blurView] layer];
    [v7 setCornerRadius_];
  }

  else
  {
    [v1 smu:v4 setContinuousCornerRadius:?];
    [*&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_blurView] smu:v4 - (v3 + v3) setContinuousCornerRadius:?];
  }

  v8 = *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint];
  if (v8)
  {
    v9 = 40.0;
    if (v1[v2])
    {
      v9 = 92.0;
    }

    [v8 setConstant_];
  }

  result = *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint];
  if (result)
  {
    v11 = 40.0;
    if (v1[v2])
    {
      v11 = 92.0;
    }

    return [result setConstant_];
  }

  return result;
}

void sub_20C088980()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize;
  if (v0[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize])
  {
    v3 = 6.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [v0 layer];
  [v4 setBorderWidth_];

  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_blurView];
  [v1 addSubview_];
  v6 = [v5 contentView];
  [v6 addSubview_];

  if (v1[v2])
  {
    v7 = 92.0;
  }

  else
  {
    v7 = 40.0;
  }

  v8 = [v1 widthAnchor];
  v9 = [v8 constraintEqualToConstant_];

  v41 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint;
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint] = v9;

  v11 = [v1 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  v13 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint;
  v14 = *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint] = v12;

  UIView.constraintsPinningCenterToCenterOfView(_:)(v1);
  v15 = [v5 leadingAnchor];
  v16 = [v1 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:v3];

  LODWORD(v18) = 1148846080;
  [v17 setPriority_];
  v19 = v17;
  v20 = [v5 trailingAnchor];
  v21 = [v1 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-v3];

  LODWORD(v23) = 1148846080;
  [v22 setPriority_];
  v24 = v22;
  v25 = [v5 topAnchor];
  v26 = [v1 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:v3];

  LODWORD(v28) = 1148846080;
  [v27 setPriority_];
  v29 = [v5 bottomAnchor];
  v30 = [v1 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-v3];

  LODWORD(v32) = 1148846080;
  [v31 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v19;
  *(inited + 40) = v24;
  *(inited + 48) = v27;
  *(inited + 56) = v31;

  sub_20B8D9310(inited);
  v34 = *&v1[v41];
  if (v34)
  {
    v35 = *&v1[v13];
    if (v35)
    {
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_20C151490;
      *(v36 + 32) = v34;
      *(v36 + 40) = v35;
      v37 = v34;
      v38 = v35;
      sub_20B8D9310(v36);
    }
  }

  v39 = objc_opt_self();
  sub_20B5E29D0();
  v40 = sub_20C13CC54();

  [v39 activateConstraints_];
}

id sub_20C088E40(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeviceBadgeView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_20C088F28()
{
  result = qword_27C7724C8;
  if (!qword_27C7724C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7724C8);
  }

  return result;
}

void sub_20C088F7C()
{
  if ([objc_opt_self() smu_canDecodeOnRenderThread])
  {
    v1 = [objc_opt_self() effectWithStyle_];
    v2 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    v4 = objc_opt_self();
    v2 = v3;
    v5 = [v4 grayColor];
    [v2 setBackgroundColor_];

    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  *(v0 + OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_blurView) = v2;
  v6 = OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_imageView;
  v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v8 = qword_27C760D08;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  [v9 setTintColor_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v6) = v9;
  *(v0 + OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_widthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_heightConstraint) = 0;
  sub_20C13DE24();
  __break(1u);
}

BOOL sub_20C08919C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) <= 1u)
  {
    if (!*(a1 + 8))
    {
      if (*(a2 + 8))
      {
        return 0;
      }

      return v2 == v3;
    }

    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 2)
  {
    return v4 == 2 && v2 == v3;
  }

  if (v2)
  {
    if (v4 != 3 || v3 != 1)
    {
      return 0;
    }
  }

  else if (v4 != 3 || v3 != 0)
  {
    return 0;
  }

  return 1;
}

char *WorkoutPlanSurveyViewController.__allocating_init(dependencies:pageContext:pageNavigator:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = sub_20C08BEC0(a1, a2, a3, v11, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v12;
}

id WorkoutPlanSurveyViewController.preferredContentSize.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_20C138104();
  result = sub_20C138104();
  if (v2 != result)
  {
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel_preferredContentSize);
  }

  return result;
}

id WorkoutPlanSurveyViewController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*WorkoutPlanSurveyViewController.preferredContentSize.modify(objc_super **a1))(double **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[4].receiver = v2;
  ObjectType = swift_getObjectType();
  v5[4].super_class = ObjectType;
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    v8 = 0x4087E00000000000;
    v9 = 0x4083800000000000;
  }

  else
  {
    v5[1].receiver = v2;
    v5[1].super_class = ObjectType;
    objc_msgSendSuper2(v5 + 1, sel_preferredContentSize);
  }

  v5->receiver = v9;
  v5->super_class = v8;
  return sub_20B7C3AA4;
}

double WorkoutPlanSurveyViewController.resignActiveObserver.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double WorkoutPlanSurveyViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

char *WorkoutPlanSurveyViewController.init(dependencies:pageContext:pageNavigator:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4[3];
  v10 = a4[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_20C08B7B8(a1, a2, a3, v14, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v19 - v5;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidLoad, v4);
  sub_20C089AF8();
  sub_20B79395C(1);
  sub_20BAD61FC();
  v7 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider] + 32) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v8 = *(v7 + 16);
  if (v8)
  {
    v19[1] = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider];

    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      v11 = swift_getObjectType();
      v12 = *(v10 + 48);
      swift_unknownObjectRetain();
      v12(v11, v10);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_actionPresenter];
  sub_20B8A3F24();
  sub_20C13CDC4();
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  sub_20C13CDA4();
  swift_unknownObjectRetain();
  v15 = sub_20C13CD94();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  sub_20B6383D0(0, 0, v6, &unk_20C1583C8, v16);

  sub_20B695708();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20B797A34(sub_20C08BFCC, v18);

  [v1 setModalInPresentation_];
}

void sub_20C089AF8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_onCancelButtonTapped_];
  v2 = [v0 navigationItem];
  [v2 setLeftBarButtonItem_];

  v3 = [v0 navigationItem];
  [v3 setLargeTitleDisplayMode_];

  v4 = [v0 navigationController];
  v5 = MEMORY[0x277D740C0];
  if (v4)
  {
    v6 = v4;
    v7 = [v4 navigationBar];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v9 = *v5;
    *(inited + 32) = *v5;
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 clearColor];
    *(inited + 64) = sub_20B98EC50();
    *(inited + 40) = v12;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    v5 = MEMORY[0x277D740C0];
    sub_20B520158(inited + 32, &qword_27C763978, &unk_20C163AF0);
    type metadata accessor for Key(0);
    sub_20C08C510(&qword_27C761D80, 255, type metadata accessor for Key, &unk_20C14F0C4);
    v13 = sub_20C13C744();

    [v7 setTitleTextAttributes_];
  }

  v14 = [v0 navigationController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 navigationBar];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_20C14F980;
    v18 = *v5;
    *(v17 + 32) = *v5;
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 clearColor];
    *(v17 + 64) = sub_20B98EC50();
    *(v17 + 40) = v21;
    sub_20B6B1650(v17);
    swift_setDeallocating();
    sub_20B520158(v17 + 32, &qword_27C763978, &unk_20C163AF0);
    type metadata accessor for Key(0);
    sub_20C08C510(&qword_27C761D80, 255, type metadata accessor for Key, &unk_20C14F0C4);
    v22 = sub_20C13C744();

    [v16 setLargeTitleTextAttributes_];

    v1 = v22;
  }
}

double sub_20C089EB4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_unknownObjectRetain();

    sub_20C13CDC4();
    v7 = sub_20C13CDF4();
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
    v8 = swift_allocObject();
    swift_weakInit();
    sub_20C13CDA4();

    v9 = sub_20C13CD94();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;

    sub_20B6383D0(0, 0, v3, &unk_20C1586F0, v10);

    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1);
  type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
  sub_20C08C510(&qword_27C7724F8, 255, type metadata accessor for WorkoutPlanSurveyPageDataProvider, &unk_20C154390);
  sub_20C138C54();
  sub_20C08C510(&qword_27C772500, v4, type metadata accessor for WorkoutPlanSurveyViewController, &protocol conformance descriptor for WorkoutPlanSurveyViewController);
  sub_20C08C510(&qword_27C772508, v5, type metadata accessor for WorkoutPlanSurveyViewController, &protocol conformance descriptor for WorkoutPlanSurveyViewController);
  sub_20C139364();
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1, v7);
  v15 = v2;
  sub_20C132E84();
  sub_20C08C510(&qword_27C772500, v10, type metadata accessor for WorkoutPlanSurveyViewController, &protocol conformance descriptor for WorkoutPlanSurveyViewController);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v11 = [v2 navigationController];
  if (v11)
  {
    v12 = v11;
    if ([v11 isBeingDismissed])
    {
      v15 = v2;
      sub_20C08C510(&qword_27C772510, v13, type metadata accessor for WorkoutPlanSurveyViewController, &protocol conformance descriptor for WorkoutPlanSurveyViewController);
      sub_20C138C74();
    }
  }
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1);
  sub_20C08C510(&qword_27C772500, v3, type metadata accessor for WorkoutPlanSurveyViewController, &protocol conformance descriptor for WorkoutPlanSurveyViewController);
  sub_20C08C510(&qword_27C772508, v4, type metadata accessor for WorkoutPlanSurveyViewController, &protocol conformance descriptor for WorkoutPlanSurveyViewController);
  sub_20C139374();
}

Swift::Void __swiftcall WorkoutPlanSurveyViewController.viewDidLayoutSubviews()()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider] + 32);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v3 = v1;
  [v2 bounds];
  sub_20B9D8614(v4, v5, v6, v7);

  v8 = v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior + 16];
  if (v8 <= 0xFB)
  {
    v9 = *&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior];
    v10 = *&v0[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_magicPocketView];
    [v10 bounds];
    Height = CGRectGetHeight(v18);
    [v10 safeAreaInsets];
    v13 = v12;

    if (v8 >> 6)
    {
      if (v8 >> 6 != 1)
      {
        return;
      }

      v14 = Height - v13;
      v15 = 0.0;
      v16 = 64;
    }

    else
    {
      v15 = Height - v13;
      v14 = v9;
      v16 = v8;
    }

    sub_20B9F24F8(*&v14, *&v15, v16, 0);
  }
}