uint64_t sub_240060730()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240060778()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2400607B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2400607F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24006082C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void APDServerEntry(int a1, uint64_t *a2)
{
  v4 = a1;
  for (i = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a1]; v4; --v4)
  {
    v5 = *a2++;
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
    [i addObject:v6];
  }

  v7 = objc_opt_new();
  [v7 runWithArguments:i];
}

uint64_t sub_240060918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_240069AB4();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_240069AD4();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = sub_240069A64();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = sub_240069AA4();
  v6[21] = v10;
  v6[22] = *(v10 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240060AF0, 0, 0);
}

uint64_t sub_240060AF0()
{
  (*(v0[19] + 104))(v0[20], *MEMORY[0x277D03160], v0[18]);
  sub_240069A94();
  v1 = swift_task_alloc();
  v0[24] = v1;
  *v1 = v0;
  v1[1] = sub_240060BBC;

  return MEMORY[0x2821593D8]();
}

uint64_t sub_240060BBC(uint64_t a1)
{
  v4 = *v2;
  v4[25] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2400612F8, 0, 0);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    if (a1)
    {
      v5 = a1;
    }

    v4[26] = v5;
    v6 = swift_task_alloc();
    v4[27] = v6;
    *v6 = v4;
    v6[1] = sub_240060D50;

    return MEMORY[0x2821593E0]();
  }
}

uint64_t sub_240060D50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_2400614D8;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_240060E78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_240060E78()
{
  v34 = v0;
  v1 = MEMORY[0x277D84F90];
  if (v0[29])
  {
    v2 = v0[29];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v3 = sub_240069A34();
  __swift_project_value_buffer(v3, qword_281311078);

  v4 = sub_240069A14();
  v5 = sub_240069BC4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33[0] = v8;
    *v7 = 136315394;
    v9 = MEMORY[0x277D837D0];
    v10 = MEMORY[0x245CB6890](v2, MEMORY[0x277D837D0]);
    v12 = sub_240065F70(v10, v11, v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = MEMORY[0x245CB6890](v6, v9);
    v15 = sub_240065F70(v13, v14, v33);

    *(v7 + 14) = v15;
    v1 = MEMORY[0x277D84F90];
    _os_log_impl(&dword_24005F000, v4, v5, "Unlockable apps: %s, unhideable apps: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CB6E40](v8, -1, -1);
    MEMORY[0x245CB6E40](v7, -1, -1);
  }

  v16 = v0[26];
  v31 = v0[21];
  v32 = v0[23];
  v17 = v0[17];
  v18 = v0[14];
  v29 = v0[15];
  v30 = v0[22];
  v27 = v0[13];
  v28 = v0[16];
  v19 = v0[10];
  v20 = v0[11];
  v26 = v0[12];
  v33[0] = MEMORY[0x277D84F98];
  sub_240061A78(v16, v33);

  sub_240068264(v2, v33, v16);
  swift_bridgeObjectRelease_n();

  v21 = v33[0];
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v21;
  v0[6] = sub_240068D80;
  v0[7] = v22;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_240061DCC;
  v0[5] = &block_descriptor_34;
  v23 = _Block_copy(v0 + 2);

  sub_240069AC4();
  v0[8] = v1;
  sub_240068EB0(&qword_281310F20, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C5618, &qword_24006A4B8);
  sub_240068DB0(&unk_281310F10, &unk_27E3C5618, &qword_24006A4B8, MEMORY[0x277D83970]);
  sub_240069C14();
  MEMORY[0x245CB6920](0, v17, v18, v23);
  _Block_release(v23);
  (*(v27 + 8))(v18, v26);
  (*(v28 + 8))(v17, v29);
  (*(v30 + 8))(v32, v31);

  v24 = v0[1];

  return v24();
}

uint64_t sub_2400612F8()
{
  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_240069A34();
  __swift_project_value_buffer(v2, qword_281311078);
  v3 = v1;
  v4 = sub_240069A14();
  v5 = sub_240069BB4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24005F000, v4, v5, "couldn't get unhideable apps: %@", v7, 0xCu);
    sub_240068E50(v8, &qword_27E3C5628, &qword_24006A4C0);
    MEMORY[0x245CB6E40](v8, -1, -1);
    MEMORY[0x245CB6E40](v7, -1, -1);
  }

  v11 = v0[25];

  v0[26] = MEMORY[0x277D84F90];
  v12 = swift_task_alloc();
  v0[27] = v12;
  *v12 = v0;
  v12[1] = sub_240060D50;

  return MEMORY[0x2821593E0]();
}

uint64_t sub_2400614D8()
{
  v43 = v0;
  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_240069A34();
  __swift_project_value_buffer(v2, qword_281311078);
  v3 = v1;
  v4 = sub_240069A14();
  v5 = sub_240069BB4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24005F000, v4, v5, "couldn't get unlockable apps: %@", v7, 0xCu);
    sub_240068E50(v8, &qword_27E3C5628, &qword_24006A4C0);
    MEMORY[0x245CB6E40](v8, -1, -1);
    MEMORY[0x245CB6E40](v7, -1, -1);
  }

  v11 = v0[28];

  if (qword_281311068 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_281311078);
  v12 = MEMORY[0x277D84F90];

  v13 = sub_240069A14();
  v14 = sub_240069BC4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[26];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v42[0] = v17;
    *v16 = 136315394;
    v18 = MEMORY[0x277D837D0];
    v19 = MEMORY[0x245CB6890](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
    v21 = sub_240065F70(v19, v20, v42);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = MEMORY[0x245CB6890](v15, v18);
    v24 = sub_240065F70(v22, v23, v42);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_24005F000, v13, v14, "Unlockable apps: %s, unhideable apps: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CB6E40](v17, -1, -1);
    MEMORY[0x245CB6E40](v16, -1, -1);
  }

  v25 = v0[26];
  v40 = v0[21];
  v41 = v0[23];
  v26 = v0[17];
  v27 = v0[14];
  v38 = v0[15];
  v39 = v0[22];
  v36 = v0[13];
  v37 = v0[16];
  v28 = v0[10];
  v29 = v0[11];
  v35 = v0[12];
  v42[0] = MEMORY[0x277D84F98];
  sub_240061A78(v25, v42);

  sub_240068264(v12, v42, v25);
  swift_bridgeObjectRelease_n();

  v30 = v42[0];
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = v29;
  v31[4] = v30;
  v0[6] = sub_240068D80;
  v0[7] = v31;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_240061DCC;
  v0[5] = &block_descriptor_34;
  v32 = _Block_copy(v0 + 2);

  sub_240069AC4();
  v0[8] = v12;
  sub_240068EB0(&qword_281310F20, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C5618, &qword_24006A4B8);
  sub_240068DB0(&unk_281310F10, &unk_27E3C5618, &qword_24006A4B8, MEMORY[0x277D83970]);
  sub_240069C14();
  MEMORY[0x245CB6920](0, v26, v27, v32);
  _Block_release(v32);
  (*(v36 + 8))(v27, v35);
  (*(v37 + 8))(v26, v38);
  (*(v39 + 8))(v41, v40);

  v33 = v0[1];

  return v33();
}

uint64_t sub_240061A78(uint64_t a1, void *a2)
{
  v4 = sub_240069954();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5630, &qword_24006A4C8);
  result = MEMORY[0x28223BE20](v7 - 8);
  v10 = *(a1 + 16);
  if (v10)
  {
    v42 = v44 + 32;
    v43 = v4;
    v38 = (v44 + 56);
    v39 = &v37 - v9;
    v11 = (a1 + 40);
    v40 = a2;
    v41 = v6;
    while (1)
    {
      v20 = *(v11 - 1);
      v19 = *v11;

      sub_240069934();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a2;
      v46 = v22;
      v24 = sub_240065A78(v20, v19);
      v25 = v22[2];
      v26 = (v23 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        break;
      }

      v28 = v23;
      if (v22[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_240066B78();
        }
      }

      else
      {
        sub_240066748(v27, isUniquelyReferenced_nonNull_native);
        v29 = sub_240065A78(v20, v19);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_17;
        }

        v24 = v29;
      }

      v31 = v46;
      v45 = v10;
      if (v28)
      {
        v13 = v43;
        v12 = v44;
        v14 = *(v44 + 72) * v24;
        v15 = *(v44 + 32);
        v16 = v39;
        v15(v39, v46[7] + v14, v43);
        v15((v31[7] + v14), v41, v13);
        v17 = *(v12 + 56);
        v6 = v41;
        v17(v16, 0, 1, v13);
      }

      else
      {
        v46[(v24 >> 6) + 8] |= 1 << v24;
        v32 = (v31[6] + 16 * v24);
        *v32 = v20;
        v32[1] = v19;
        v33 = v43;
        (*(v44 + 32))(v31[7] + *(v44 + 72) * v24, v6, v43);
        v34 = v31[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_16;
        }

        v31[2] = v36;
        v16 = v39;
        (*v38)(v39, 1, 1, v33);
      }

      v18 = v40;
      *v40 = v31;
      a2 = v18;
      sub_240068E50(v16, &qword_27E3C5630, &qword_24006A4C8);

      v11 += 2;
      v10 = v45 - 1;
      if (v45 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_240069CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_240061DCC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_240061E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C55A8, &unk_24006A480);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_240068BA8(a3, v25 - v10, &qword_27E3C55A8, &unk_24006A480);
  v12 = sub_240069B94();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_240068E50(v11, &qword_27E3C55A8, &unk_24006A480);
  }

  else
  {
    sub_240069B84();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_240069B74();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_240069B34() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_240068E50(a3, &qword_27E3C55A8, &unk_24006A480);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_240068E50(a3, &qword_27E3C55A8, &unk_24006A480);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_240062110()
{
  v7 = sub_240069BE4();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_240069BD4();
  MEMORY[0x28223BE20](v3);
  v4 = sub_240069AD4();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_240068950();
  sub_240069AC4();
  v8 = MEMORY[0x277D84F90];
  sub_240068EB0(&qword_281310EF0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C5598, &unk_24006A520);
  sub_240068DB0(&qword_281310F00, &unk_27E3C5598, &unk_24006A520, MEMORY[0x277D83970]);
  sub_240069C14();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_240069C04();
  qword_281311070 = result;
  return result;
}

void sub_240062378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  swift_weakInit();
  v5 = objc_allocWithZone(sub_240069994());
  v6 = sub_240069974();

  *a1 = v6;
  sub_240069984();
  sub_240069984();
  v7 = objc_opt_self();
  v8 = [v7 sharedConnection];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 isLockingAppsAllowed];

    *(a1 + 8) = v10;
    if (!v10)
    {
      v13 = 0;
      goto LABEL_6;
    }

    v11 = [v7 sharedConnection];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 isHidingAppsAllowed];

LABEL_6:
      *(a1 + 9) = v13;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2400624D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2400626C0(a1);
  }

  return result;
}

uint64_t sub_240062530(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24006888C;
  *(v5 + 24) = v4;
  v8[4] = sub_240068898;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_240062698;
  v8[3] = &block_descriptor;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_2400626C0(uint64_t a1)
{
  v2 = sub_240069914();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_240069904();
  v7 = sub_240069B24();
  v9 = v8;
  if (v7 == sub_240069B24() && v9 == v10)
  {

    goto LABEL_16;
  }

  v12 = sub_240069CB4();

  if (v12)
  {
LABEL_16:

    sub_240063084();
    return;
  }

  v13 = sub_240069904();
  v14 = sub_240069B24();
  v16 = v15;
  if (v14 == sub_240069B24() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_240069CB4();

    if ((v19 & 1) == 0)
    {
      if (qword_281311068 != -1)
      {
        swift_once();
      }

      v20 = sub_240069A34();
      __swift_project_value_buffer(v20, qword_281311078);
      (*(v3 + 16))(v5, a1, v2);
      v21 = sub_240069A14();
      v22 = sub_240069BC4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v23 = 136315138;
        sub_240068EB0(&qword_27E3C5638, 255, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
        v25 = sub_240069CA4();
        v27 = v26;
        (*(v3 + 8))(v5, v2);
        v28 = sub_240065F70(v25, v27, &v30);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_24005F000, v21, v22, "iOSManagementExpert: unknown notification: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x245CB6E40](v24, -1, -1);
        MEMORY[0x245CB6E40](v23, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }

      return;
    }
  }

  sub_240062A98();
}

id sub_240062A98()
{
  v1 = v0;
  v2 = objc_opt_self();
  result = [v2 sharedConnection];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  v5 = [result isLockingAppsAllowed];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_6;
  }

  result = [v2 sharedConnection];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [result isHidingAppsAllowed];

LABEL_6:
  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v8 = sub_240069A34();
  __swift_project_value_buffer(v8, qword_281311078);
  v9 = sub_240069A14();
  v10 = sub_240069BC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 4) = v5;
    *(v11 + 8) = 1024;
    *(v11 + 10) = v7;
    _os_log_impl(&dword_24005F000, v9, v10, "Effective settings changed. Locking allowed: %{BOOL}d, hiding allowed: %{BOOL}d", v11, 0xEu);
    MEMORY[0x245CB6E40](v11, -1, -1);
  }

  v12 = *(v1 + 32);
  os_unfair_lock_lock(v12 + 12);
  sub_240062C70(&v12[4], v5, v7, &v13);
  os_unfair_lock_unlock(v12 + 12);
  sub_240062530(v13);
}

uint64_t sub_240062C70@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v4) = a3;
  v31 = a4;
  v6 = a2 & 1;
  v7 = sub_240069964();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v9);
  v14 = &v29[-v13];
  v15 = &unk_281311000;
  if (*(a1 + 8) == v6)
  {
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v30 = v4;
    *(a1 + 8) = v6;
    if (qword_281311068 != -1)
    {
      swift_once();
    }

    v16 = sub_240069A34();
    __swift_project_value_buffer(v16, qword_281311078);
    v17 = sub_240069A14();
    v18 = sub_240069BC4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24005F000, v17, v18, "locking apps capability changed", v19, 2u);
      MEMORY[0x245CB6E40](v19, -1, -1);
    }

    *v14 = v6;
    (*(v8 + 104))(v14, *MEMORY[0x277CEBE40], v7);
    v20 = sub_240065D98(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = v20[2];
    v21 = v20[3];
    if (v4 >= v21 >> 1)
    {
      v20 = sub_240065D98((v21 > 1), v4 + 1, 1, v20);
    }

    v20[2] = v4 + 1;
    result = (*(v8 + 32))(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, v14, v7);
    LOBYTE(v4) = v30;
    v15 = &unk_281311000;
  }

  if (*(a1 + 9) != (v4 & 1))
  {
    if (v15[13] != -1)
    {
      swift_once();
    }

    v22 = sub_240069A34();
    __swift_project_value_buffer(v22, qword_281311078);
    v23 = sub_240069A14();
    v24 = sub_240069BC4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v4;
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_24005F000, v23, v24, "hiding apps capability changed", v4, 2u);
      v26 = v4;
      LOBYTE(v4) = v25;
      MEMORY[0x245CB6E40](v26, -1, -1);
    }

    *(a1 + 9) = v4 & 1;
    *v11 = v4 & 1;
    (*(v8 + 104))(v11, *MEMORY[0x277CEBE38], v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_240065D98(0, v20[2] + 1, 1, v20);
    }

    v28 = v20[2];
    v27 = v20[3];
    if (v28 >= v27 >> 1)
    {
      v20 = sub_240065D98((v27 > 1), v28 + 1, 1, v20);
    }

    v20[2] = v28 + 1;
    result = (*(v8 + 32))(v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, v11, v7);
  }

  *v31 = v20;
  return result;
}

uint64_t sub_240063084()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C55A8, &unk_24006A480);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v5 = sub_240069A34();
  __swift_project_value_buffer(v5, qword_281311078);
  v6 = sub_240069A14();
  v7 = sub_240069BC4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_24005F000, v6, v7, "Fetching protectability.", v8, 2u);
    MEMORY[0x245CB6E40](v8, -1, -1);
  }

  v9 = os_transaction_create();
  if (qword_281311050 != -1)
  {
    swift_once();
  }

  v10 = qword_281311070;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v1;
  v12 = sub_240069B94();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v10;
  v13[5] = sub_2400689E4;
  v13[6] = v11;

  v14 = v10;
  sub_240061E10(0, 0, v4, &unk_24006A498, v13);
}

uint64_t sub_2400632C8(uint64_t a1)
{
  if (qword_281311068 != -1)
  {
    swift_once();
  }

  v2 = sub_240069A34();
  __swift_project_value_buffer(v2, qword_281311078);
  v3 = sub_240069A14();
  v4 = sub_240069BC4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24005F000, v3, v4, "Done fetching protectability.", v5, 2u);
    MEMORY[0x245CB6E40](v5, -1, -1);
  }

  return sub_2400633BC(a1);
}

uint64_t sub_2400633BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_240069AE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_281311050 != -1)
  {
    swift_once();
  }

  v8 = qword_281311070;
  *v7 = qword_281311070;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v9 = v8;
  LOBYTE(v8) = sub_240069AF4();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_281311068 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v10 = sub_240069A34();
  __swift_project_value_buffer(v10, qword_281311078);

  v11 = sub_240069A14();
  v12 = sub_240069BC4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315138;
    sub_240069954();
    v15 = sub_240069B04();
    v17 = sub_240065F70(v15, v16, v29);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_24005F000, v11, v12, "Apps changed. New protectability: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x245CB6E40](v14, -1, -1);
    MEMORY[0x245CB6E40](v13, -1, -1);
  }

  v18 = *(v2 + 32);
  MEMORY[0x28223BE20](v19);
  *(&v28 - 2) = a1;
  os_unfair_lock_lock(v18 + 12);
  sub_2400687C4(&v18[4], v29);
  os_unfair_lock_unlock(v18 + 12);
  v20 = v29[1];
  v21 = v30;
  sub_240062530(v29[0]);

  if (v21 == 1)
  {
    sub_2400699D4();
    v22 = sub_240069B34();

    notify_post((v22 + 32));
  }

  v23 = *(v20 + 16);
  if (v23)
  {
    v24 = v20 + 40;
    do
    {
      v25 = *(v24 - 8);

      v25(v26);

      v24 += 16;
      --v23;
    }

    while (v23);
  }
}

void sub_24006371C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v209 = a1;
  v185[0] = a3;
  v4 = sub_240069964();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v190 = (v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v189 = (v185 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v203 = (v185 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v202 = (v185 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v192 = (v185 - v15);
  MEMORY[0x28223BE20](v14);
  v191 = (v185 - v16);
  v17 = sub_240069954();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v193 = v185 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v185 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v185 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v188 = v185 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v187 = v185 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v196 = v185 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v224 = v185 - v34;
  MEMORY[0x28223BE20](v33);
  v204 = v185 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5570, &qword_24006A458);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v208 = v185 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v207 = (v185 - v39);
  v40 = a2 + 64;
  v41 = 1 << *(a2 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(a2 + 64);
  v194 = (v41 + 63) >> 6;
  v218 = v18 + 32;
  v213 = v18;
  v221 = (v18 + 8);
  v222 = (v18 + 16);
  v198 = *MEMORY[0x277CEBE30];
  v211 = (v5 + 104);
  v212 = v5;
  v210 = v5 + 32;
  v197 = *MEMORY[0x277CEBE28];

  v44 = 0;
  *&v45 = 136315650;
  v195 = v45;
  *&v45 = 136315394;
  v186 = v45;
  v225 = MEMORY[0x277D84F90];
  v205 = a2;
  v220 = v4;
  v214 = v17;
  *&v217 = v23;
  v201 = v26;
  v46 = v23;
  v206 = a2 + 64;
  if (!v43)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v47 = v44;
LABEL_16:
    v219 = (v43 - 1) & v43;
    v50 = __clz(__rbit64(v43)) | (v47 << 6);
    v51 = (*(v205 + 48) + 16 * v50);
    v52 = *v51;
    v53 = v51[1];
    v54 = v213;
    v55 = v204;
    (*(v213 + 16))(v204, *(v205 + 56) + *(v213 + 72) * v50, v17);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
    v57 = *(v56 + 48);
    v58 = v208;
    *v208 = v52;
    *(v58 + 1) = v53;
    v59 = v58;
    (*(v54 + 32))(&v58[v57], v55, v17);
    (*(*(v56 - 8) + 56))(v59, 0, 1, v56);

    v46 = v217;
LABEL_17:
    v60 = v207;
    sub_2400688D8(v59, v207);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
    if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
    {
      break;
    }

    v62 = *v60;
    v63 = v60[1];
    (*v218)(v224, v60 + *(v61 + 48), v17);
    v64 = *(v209 + 16);
    v65 = v220;
    v223 = v62;
    if (v64 && *(v64 + 16) && (v66 = sub_240065A78(v62, v63), (v67 & 1) != 0))
    {
      v68 = *(v64 + 56) + *(v213 + 72) * v66;
      v216 = *(v213 + 16);
      (v216)(v196, v68, v17);
      v69 = sub_240069944() & 1;
      if (v69 != (sub_240069944() & 1))
      {
        v70 = v187;
        if (qword_281311068 != -1)
        {
          swift_once();
        }

        v71 = sub_240069A34();
        __swift_project_value_buffer(v71, qword_281311078);
        (v216)(v70, v224, v17);

        v72 = sub_240069A14();
        v73 = sub_240069BC4();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v226 = v75;
          *v74 = v186;
          *(v74 + 4) = sub_240065F70(v62, v63, &v226);
          *(v74 + 12) = 1024;
          v200 = v72;
          v76 = sub_240069944();
          v77 = v70;
          v78 = v76 & 1;
          (*v221)(v77, v214);
          *(v74 + 14) = v78;
          v79 = v200;
          _os_log_impl(&dword_24005F000, v200, v73, "%s lockability changed to %{BOOL}d", v74, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v75);
          v80 = v75;
          v17 = v214;
          MEMORY[0x245CB6E40](v80, -1, -1);
          v81 = v74;
          v65 = v220;
          MEMORY[0x245CB6E40](v81, -1, -1);
        }

        else
        {
          (*v221)(v70, v17);
        }

        v115 = sub_240069944();
        v116 = v191;
        *v191 = v62;
        v116[1] = v63;
        *(v116 + 16) = v115 & 1;
        (*v211)(v116, v198, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v225 = sub_240065D98(0, v225[2] + 1, 1, v225);
        }

        v118 = v225[2];
        v117 = v225[3];
        if (v118 >= v117 >> 1)
        {
          v225 = sub_240065D98((v117 > 1), v118 + 1, 1, v225);
        }

        v119 = v225;
        v225[2] = v118 + 1;
        (*(v212 + 32))(v119 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v118, v191, v65);
      }

      v120 = v224;
      v121 = sub_240069924() & 1;
      v122 = v196;
      if (v121 != (sub_240069924() & 1))
      {
        v123 = v63;
        if (qword_281311068 != -1)
        {
          swift_once();
        }

        v124 = sub_240069A34();
        __swift_project_value_buffer(v124, qword_281311078);
        v125 = v188;
        (v216)(v188, v224, v17);

        v126 = sub_240069A14();
        v127 = sub_240069BC4();

        v128 = os_log_type_enabled(v126, v127);
        v43 = v219;
        if (v128)
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v226 = v130;
          *v129 = v186;
          v200 = v126;
          v131 = v223;
          *(v129 + 4) = sub_240065F70(v223, v123, &v226);
          *(v129 + 12) = 1024;
          v132 = sub_240069924() & 1;
          v216 = *v221;
          v216(v125, v214);
          *(v129 + 14) = v132;
          v133 = v200;
          _os_log_impl(&dword_24005F000, v200, v127, "%s hideability changed to %{BOOL}d", v129, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v130);
          v134 = v130;
          v17 = v214;
          MEMORY[0x245CB6E40](v134, -1, -1);
          v135 = v129;
          v65 = v220;
          MEMORY[0x245CB6E40](v135, -1, -1);
        }

        else
        {
          v216 = *v221;
          v216(v125, v17);

          v131 = v223;
        }

        v137 = sub_240069924();
        v138 = v192;
        *v192 = v131;
        v138[1] = v123;
        *(v138 + 16) = v137 & 1;
        (*v211)(v138, v197, v65);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140 = v196;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v225 = sub_240065D98(0, v225[2] + 1, 1, v225);
        }

        v142 = v225[2];
        v141 = v225[3];
        if (v142 >= v141 >> 1)
        {
          v225 = sub_240065D98((v141 > 1), v142 + 1, 1, v225);
        }

        v143 = v216;
        v216(v140, v17);
        v143(v224, v17);
        v144 = v225;
        v225[2] = v142 + 1;
        (*(v212 + 32))(v144 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v142, v192, v65);
        v46 = v217;
        goto LABEL_6;
      }

      v136 = *v221;
      (*v221)(v122, v17);
      v136(v120, v17);
      v40 = v206;
      v43 = v219;
      if (!v219)
      {
LABEL_8:
        if (v194 <= v44 + 1)
        {
          v48 = v44 + 1;
        }

        else
        {
          v48 = v194;
        }

        v49 = v48 - 1;
        while (1)
        {
          v47 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            break;
          }

          if (v47 >= v194)
          {
            v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
            v114 = v208;
            (*(*(v113 - 8) + 56))(v208, 1, 1, v113);
            v219 = 0;
            v44 = v49;
            v59 = v114;
            goto LABEL_17;
          }

          v43 = *(v40 + 8 * v47);
          ++v44;
          if (v43)
          {
            v44 = v47;
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_101;
      }
    }

    else
    {
      if (qword_281311068 != -1)
      {
        swift_once();
      }

      v82 = sub_240069A34();
      __swift_project_value_buffer(v82, qword_281311078);
      v83 = *v222;
      v84 = v201;
      v85 = v224;
      (*v222)(v201, v224, v17);
      v83(v46, v85, v17);

      v86 = sub_240069A14();
      v87 = sub_240069BC4();

      v88 = os_log_type_enabled(v86, v87);
      v215 = v63;
      if (v88)
      {
        v89 = swift_slowAlloc();
        v200 = v86;
        v90 = v89;
        v199 = swift_slowAlloc();
        v226 = v199;
        *v90 = v195;
        *(v90 + 4) = sub_240065F70(v223, v63, &v226);
        *(v90 + 12) = 1024;
        v91 = sub_240069944() & 1;
        v92 = *v221;
        (*v221)(v84, v17);
        *(v90 + 14) = v91;
        *(v90 + 18) = 1024;
        v93 = sub_240069924() & 1;
        v216 = v92;
        v92(v46, v17);
        *(v90 + 20) = v93;
        v94 = v200;
        _os_log_impl(&dword_24005F000, v200, v87, "%s now has protectability info, lockable: %{BOOL}d, hideable: %{BOOL}d", v90, 0x18u);
        v95 = v199;
        __swift_destroy_boxed_opaque_existential_0(v199);
        MEMORY[0x245CB6E40](v95, -1, -1);
        MEMORY[0x245CB6E40](v90, -1, -1);
      }

      else
      {
        v96 = *v221;
        (*v221)(v46, v17);
        v216 = v96;
        v96(v84, v17);
      }

      v97 = v220;
      v98 = v224;
      v99 = sub_240069944();
      v43 = v219;
      if (v99)
      {
        v17 = v214;
        v100 = v215;
        v46 = v217;
        if ((sub_240069924() & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v100 = v215;

        v101 = sub_240069944();
        v102 = v202;
        *v202 = v223;
        v102[1] = v100;
        *(v102 + 16) = v101 & 1;
        (*v211)(v102, v198, v97);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v17 = v214;
        v46 = v217;
        if ((v103 & 1) == 0)
        {
          v225 = sub_240065D98(0, v225[2] + 1, 1, v225);
        }

        v105 = v225[2];
        v104 = v225[3];
        if (v105 >= v104 >> 1)
        {
          v225 = sub_240065D98((v104 > 1), v105 + 1, 1, v225);
        }

        v106 = v225;
        v225[2] = v105 + 1;
        (*(v212 + 32))(v106 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v105, v202, v97);
        if ((sub_240069924() & 1) == 0)
        {
LABEL_39:
          v107 = sub_240069924();
          v108 = v203;
          *v203 = v223;
          v108[1] = v100;
          *(v108 + 16) = v107 & 1;
          (*v211)(v108, v197, v97);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v225 = sub_240065D98(0, v225[2] + 1, 1, v225);
          }

          v109 = v216;
          v111 = v225[2];
          v110 = v225[3];
          if (v111 >= v110 >> 1)
          {
            v225 = sub_240065D98((v110 > 1), v111 + 1, 1, v225);
          }

          v109(v98, v17);
          v112 = v225;
          v225[2] = v111 + 1;
          (*(v212 + 32))(v112 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v111, v203, v97);
          goto LABEL_6;
        }
      }

      v216(v98, v17);

LABEL_6:
      v40 = v206;
      if (!v43)
      {
        goto LABEL_8;
      }
    }
  }

  v145 = *(v209 + 16);
  v146 = v220;
  v219 = v145;
  if (v145)
  {
    v147 = v145;
  }

  else
  {
    v145 = sub_240068520(MEMORY[0x277D84F90]);
    v147 = 0;
  }

  v223 = v147;
  swift_bridgeObjectRetain_n();
  v148 = sub_240064E04(v145);
  v149 = sub_240066FF4(v205, v148);
  v150 = v149 + 56;
  v151 = 1 << *(v149 + 32);
  v152 = -1;
  if (v151 < 64)
  {
    v152 = ~(-1 << v151);
  }

  v153 = v152 & *(v149 + 56);
  v154 = (v151 + 63) >> 6;
  v218 = v149;

  v155 = 0;
  *&v156 = 136315138;
  v217 = v156;
  if (!v153)
  {
LABEL_72:
    while (1)
    {
      v157 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        break;
      }

      if (v157 >= v154)
      {

        if (v219)
        {
          v179 = v205;
          v180 = sub_240065574(v223, v205);

          v181 = v180 ^ 1;
        }

        else
        {
          v181 = 1;
          v179 = v205;
        }

        v182 = v209;
        v183 = *(v209 + 24);
        *(v209 + 16) = v179;
        *(v182 + 24) = MEMORY[0x277D84F90];
        v184 = v185[0];
        *v185[0] = v225;
        *(v184 + 8) = v183;
        *(v184 + 16) = v181 & 1;
        return;
      }

      v153 = *(v150 + 8 * v157);
      ++v155;
      if (v153)
      {
        v155 = v157;
        goto LABEL_76;
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  while (1)
  {
LABEL_76:
    v158 = (*(v218 + 48) + ((v155 << 10) | (16 * __clz(__rbit64(v153)))));
    v159 = v158[1];
    v224 = *v158;
    v160 = qword_281311068;

    if (v160 != -1)
    {
      swift_once();
    }

    v161 = sub_240069A34();
    __swift_project_value_buffer(v161, qword_281311078);

    v162 = sub_240069A14();
    v163 = sub_240069BC4();

    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v226 = v165;
      *v164 = v217;
      *(v164 + 4) = sub_240065F70(v224, v159, &v226);
      _os_log_impl(&dword_24005F000, v162, v163, "%s lost protectability management", v164, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v165);
      MEMORY[0x245CB6E40](v165, -1, -1);
      v166 = v164;
      v146 = v220;
      MEMORY[0x245CB6E40](v166, -1, -1);
    }

    v167 = v193;
    v168 = v223;
    if (!v219)
    {
      break;
    }

    if (!*(v223 + 16))
    {
      goto LABEL_102;
    }

    v169 = sub_240065A78(v224, v159);
    if ((v170 & 1) == 0)
    {
      goto LABEL_103;
    }

    (*(v213 + 16))(v167, *(v168 + 56) + *(v213 + 72) * v169, v214);
    if ((sub_240069944() & 1) == 0)
    {
      v171 = v189;
      *v189 = v224;
      v171[1] = v159;
      *(v171 + 16) = 1;
      (*v211)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v225 = sub_240065D98(0, v225[2] + 1, 1, v225);
      }

      v173 = v225[2];
      v172 = v225[3];
      if (v173 >= v172 >> 1)
      {
        v225 = sub_240065D98((v172 > 1), v173 + 1, 1, v225);
      }

      v174 = v225;
      v225[2] = v173 + 1;
      (*(v212 + 32))(v174 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v173, v189, v146);
      v167 = v193;
    }

    v153 &= v153 - 1;
    if (sub_240069924())
    {
      (*v221)(v167, v214);

      if (!v153)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v175 = v190;
      *v190 = v224;
      v175[1] = v159;
      *(v175 + 16) = 1;
      (*v211)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v225 = sub_240065D98(0, v225[2] + 1, 1, v225);
      }

      v177 = v225[2];
      v176 = v225[3];
      if (v177 >= v176 >> 1)
      {
        v225 = sub_240065D98((v176 > 1), v177 + 1, 1, v225);
      }

      (*v221)(v193, v214);
      v178 = v225;
      v225[2] = v177 + 1;
      (*(v212 + 32))(v178 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v177, v190, v146);
      if (!v153)
      {
        goto LABEL_72;
      }
    }
  }

LABEL_104:
  __break(1u);
}

uint64_t sub_240064E04(uint64_t a1)
{
  result = MEMORY[0x245CB68D0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_240066EA4(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_240064F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_240069954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = v21 - v14;
  if (*(a1 + 8) == 1)
  {
    v16 = *(a1 + 16);
    if (v16 && *(v16 + 16) && (v17 = result, result = sub_240065A78(a2, a3), (v18 & 1) != 0))
    {
      (*(v9 + 16))(v12, *(v16 + 56) + *(v9 + 72) * result, v17);
      (*(v9 + 32))(v15, v12, v17);
      v19 = sub_240069944();
      result = (*(v9 + 8))(v15, v17);
      v20 = v19 & 1;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  *a4 = v20;
  return result;
}

unint64_t sub_2400650C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_240069954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = v21 - v14;
  if (*(a1 + 9) == 1)
  {
    v16 = *(a1 + 16);
    if (v16 && *(v16 + 16) && (v17 = result, result = sub_240065A78(a2, a3), (v18 & 1) != 0))
    {
      (*(v9 + 16))(v12, *(v16 + 56) + *(v9 + 72) * result, v17);
      (*(v9 + 32))(v15, v12, v17);
      v19 = sub_240069924();
      result = (*(v9 + 8))(v15, v17);
      v20 = v19 & 1;
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  *a4 = v20;
  return result;
}

uint64_t sub_240065260()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2400652D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_240065320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_240065370@<D0>(void *a1@<X8>)
{
  *a1 = *(*v1 + 16);

  return result;
}

unint64_t sub_240065380()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 48));
  if (*(v1 + 32))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = sub_240068520(MEMORY[0x277D84F90]);
  }

  os_unfair_lock_unlock((v1 + 48));
  return v2;
}

uint64_t sub_2400653E0()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 12);
  sub_240068770(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 12);
  return v3;
}

uint64_t sub_240065440()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 12);
  sub_240068754(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 12);
  return v3;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_240065574(uint64_t a1, uint64_t a2)
{
  v4 = sub_240069954();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5570, &qword_24006A458);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_2400688D8(v20, v54);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_240065A78(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_240068EB0(&qword_27E3C5580, 255, MEMORY[0x277CEBE10], MEMORY[0x277CEBE18]);
    v47 = sub_240069B14();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5578, &qword_24006A460);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_240065A78(uint64_t a1, uint64_t a2)
{
  sub_240069CE4();
  sub_240069B44();
  v4 = sub_240069CF4();

  return sub_240065AF0(a1, a2, v4);
}

unint64_t sub_240065AF0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_240069CB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_240065BA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_240065CA0;

  return v6(a1);
}

uint64_t sub_240065CA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_240065D98(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5588, &qword_24006A468);
  v10 = *(sub_240069964() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_240069964() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_240065F70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24006603C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24006882C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24006603C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_240066148(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_240069C64();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_240066148(uint64_t a1, unint64_t a2)
{
  v3 = sub_240066194(a1, a2);
  sub_2400662C4(&unk_285205D00);
  return v3;
}

void *sub_240066194(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2400663B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_240069C64();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_240069B54();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2400663B0(v10, 0);
        result = sub_240069C54();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2400662C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_240066424(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2400663B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5568, &qword_24006A450);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_240066424(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5568, &qword_24006A450);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_240066518(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_240065A78(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_240066748(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_240065A78(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_240069CD4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v27 = v13;
    sub_240066B78();
    v13 = v27;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_240066AC8(v13, a2, a3, a1, v12);
    v28 = sub_240069954();
    (*(*(v28 - 8) + 56))(a4, 1, 1, v28);

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = v12[7];
  v21 = v13;
  v22 = sub_240069954();
  v23 = *(v22 - 8);
  v24 = v23;
  v25 = *(v23 + 72) * v21;
  v26 = *(v23 + 32);
  v26(a4, v20 + v25, v22);
  v26(v12[7] + v25, a1, v22);
  (*(v24 + 56))(a4, 0, 1, v22);
LABEL_11:
  *v6 = v12;
}

uint64_t sub_240066748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_240069954();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5560, &qword_24006A448);
  v42 = v4;
  result = sub_240069C84();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_240069CE4();
      sub_240069B44();
      result = sub_240069CF4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_240066AC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_240069954();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_240066B78()
{
  v1 = v0;
  v35 = sub_240069954();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5560, &qword_24006A448);
  v3 = *v0;
  v4 = sub_240069C74();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

uint64_t sub_240066DF8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_240066EA4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_240069CE4();
  sub_240069B44();
  v8 = sub_240069CF4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_240069CB4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_240067C20(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_240066FF4(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_240069CE4();

    sub_240069B44();
    v23 = sub_240069CF4();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_240069CB4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_2400679FC(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_240069CE4();

            sub_240069B44();
            v41 = sub_240069CF4();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_240069CB4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_2400677C4(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x245CB6E40](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_240068948(v13);
    return v5;
  }

  result = MEMORY[0x245CB6E40](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_240067564(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5590, &unk_24006A470);
  result = sub_240069C34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_240069CE4();
      sub_240069B44();
      result = sub_240069CF4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_2400677C4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_2400679FC(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_240069CE4();

        sub_240069B44();
        v19 = sub_240069CF4();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_240069CB4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_2400679FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5590, &unk_24006A470);
  result = sub_240069C44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_240069CE4();

    sub_240069B44();
    result = sub_240069CF4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_240067C20(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_240067564(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_240067DA0();
      goto LABEL_16;
    }

    sub_240067EFC(v8 + 1);
  }

  v10 = *v4;
  sub_240069CE4();
  sub_240069B44();
  v11 = sub_240069CF4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_240069CB4() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_240069CC4();
  __break(1u);
}

void sub_240067DA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5590, &unk_24006A470);
  v2 = *v0;
  v3 = sub_240069C24();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_240067EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5590, &unk_24006A470);
  result = sub_240069C34();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_240069CE4();

      sub_240069B44();
      result = sub_240069CF4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_240068134(uint64_t a1)
{
  v2 = sub_240069964();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a1 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = *a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v6, v11, v2);
      sub_240069A44();
      result = (*(v8 - 8))(v6, v2);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_240068264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_240069954();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5630, &qword_24006A4C8);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = v16 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (a1 + 40);
    v17 = a3;
    do
    {
      v14 = *v13;
      v16[0] = *(v13 - 1);
      v15 = v16[0];
      v16[1] = v14;
      MEMORY[0x28223BE20](result);
      v16[-2] = v16;

      sub_240066DF8(sub_240068DF8, &v16[-4], v17);
      sub_240069934();
      sub_240066518(v7, v15, v14, v11);
      sub_240068E50(v11, &qword_27E3C5630, &qword_24006A4C8);

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

void *sub_240068418(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5550, &qword_24006A3F0);
  swift_allocObject();
  v1[2] = sub_240069A54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C5640, &qword_24006A4D0);
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  v4 = (v3 + 48);
  *(v3 + 16) = 0;
  v5 = v3 + 16;
  *(v3 + 24) = 257;
  v6 = MEMORY[0x277D84F90];
  *(v3 + 32) = 0;
  *(v3 + 40) = v6;
  v1[3] = a1;
  v1[4] = v3;

  v7 = a1;
  os_unfair_lock_lock(v4);
  sub_240068EF8(v5);
  os_unfair_lock_unlock(v4);

  sub_240063084();
  return v1;
}

unint64_t sub_240068520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5558, &qword_24006A440);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5560, &qword_24006A448);
    v7 = sub_240069C94();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_240068BA8(v9, v5, &qword_27E3C5558, &qword_24006A440);
      v11 = *v5;
      v12 = v5[1];
      result = sub_240065A78(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_240069954();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_24006882C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2400688D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C5570, &qword_24006A458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240068950()
{
  result = qword_281310EE8;
  if (!qword_281310EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281310EE8);
  }

  return result;
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2400689EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240068AB4;

  return sub_240060918(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_240068AB4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240068BA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_240068C10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240068FCC;

  return sub_240065BA8(a1, v4);
}

uint64_t sub_240068CC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240068AB4;

  return sub_240065BA8(a1, v4);
}

uint64_t sub_240068DB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_240068DF8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_240069CB4() & 1;
  }
}

uint64_t sub_240068E50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_240068EB0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240068F30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240068F50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_281310EF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_281310EF8);
    }
  }
}

id APDServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id APDServer.init()()
{
  v0 = sub_240069BE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240069BD4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_240069AD4();
  MEMORY[0x28223BE20](v5 - 8);
  v18 = OBJC_IVAR____TtC19AppProtectionDaemon9APDServer_serviceQueue;
  sub_240068950();
  sub_240069AC4();
  *&v21 = MEMORY[0x277D84F90];
  sub_240069590(&qword_281310EF0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C5598, &unk_24006A520);
  sub_240069364();
  sub_240069C14();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  v6 = sub_240069C04();
  v7 = v19;
  *&v19[v18] = v6;
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 defaultCenter];
  sub_2400699C4();
  sub_2400699A4();
  v11 = sub_2400699B4();

  v12 = type metadata accessor for iOSManagementExpert();
  swift_allocObject();
  v13 = sub_240068418(v9);

  v14 = sub_240069590(&qword_281311048, type metadata accessor for iOSManagementExpert, &unk_24006A3F8);
  v15 = &v7[OBJC_IVAR____TtC19AppProtectionDaemon9APDServer_platformExpert];
  *v15 = v13;
  *(v15 + 8) = v21;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v16 = type metadata accessor for APDServer();
  v20.receiver = v7;
  v20.super_class = v16;
  return objc_msgSendSuper2(&v20, sel_init);
}

unint64_t sub_240069364()
{
  result = qword_281310F00;
  if (!qword_281310F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E3C5598, &unk_24006A520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281310F00);
  }

  return result;
}

void sub_2400693EC()
{
  sub_240069A04();
  v1 = *(v0 + OBJC_IVAR____TtC19AppProtectionDaemon9APDServer_serviceQueue);
  v2 = OBJC_IVAR____TtC19AppProtectionDaemon9APDServer_platformExpert;
  sub_2400695FC();
  v4 = swift_allocObject();
  sub_240069650(v0 + v2, v4 + 16);
  v3 = v1;
  sub_2400699F4();
  sub_2400699E4();
  __break(1u);
}

id APDServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APDServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240069590(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2400695FC()
{
  result = qword_281311058;
  if (!qword_281311058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281311058);
  }

  return result;
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

uint64_t sub_2400696E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_240069730(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_240069788(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24006981C()
{
  v0 = sub_240069A34();
  __swift_allocate_value_buffer(v0, qword_281311078);
  __swift_project_value_buffer(v0, qword_281311078);
  return sub_240069A24();
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