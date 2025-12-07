uint64_t sub_2489DFC14(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_248A11BC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248A12A50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + 24);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v46 = v14;
  LOBYTE(v14) = sub_248A12A60();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_248A122D0();
  __swift_project_value_buffer(v15, qword_2815105D8);
  v16 = *(v7 + 16);
  v45 = a1;
  v16(v9, a1, v6);
  v17 = a2;
  v18 = sub_248A122B0();
  v19 = sub_248A12E60();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = v3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48[0] = v42;
    *v21 = 136446722;
    v23 = sub_248A13570();
    v25 = sub_24897BC00(v23, v24, v48);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_248A132F0();
    v28 = v27;
    (*(v7 + 8))(v9, v6);
    v29 = sub_24897BC00(v26, v28, v48);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2114;
    v30 = a2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 24) = v31;
    *v22 = v31;
    _os_log_impl(&dword_248975000, v18, v19, "[%{public}s] Did fail authentication for session %{public}s) with error %{public}@", v21, 0x20u);
    sub_248983734(v22, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v22, -1, -1);
    v32 = v42;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v32, -1, -1);
    v33 = v21;
    v3 = v43;
    MEMORY[0x24C1E0A80](v33, -1, -1);
  }

  else
  {

    v34 = (*(v7 + 8))(v9, v6);
  }

  MEMORY[0x28223BE20](v34);
  v39 = v45;
  v40 = a2;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = sub_2489E21F8;
  *(v35 + 24) = &v41 - 4;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2489E2214;
  *(v36 + 24) = v35;

  v48[0] = v3;
  sub_2489E21C4(v48);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v47 = v3;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    LODWORD(v40) = 0;
    v39 = 191;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489E01FC(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_248A11BC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A12A50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(isEscapingClosureAtFileLocation + 24);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_248A12A60();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v37 = v13;
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_248A122D0();
  __swift_project_value_buffer(v14, qword_2815105D8);
  (*(v5 + 16))(v7, a1, v4);
  v15 = sub_248A122B0();
  v16 = sub_248A12E80();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v39[0] = v19;
    *v18 = 136446466;
    v20 = sub_248A13570();
    v22 = sub_24897BC00(v20, v21, v39);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_248A132F0();
    v25 = v24;
    (*(v5 + 8))(v7, v4);
    v26 = sub_24897BC00(v23, v25, v39);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_248975000, v15, v16, "[%{public}s] Did enable authentication for session %{public}s)", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v19, -1, -1);
    v27 = v18;
    a1 = v35;
    MEMORY[0x24C1E0A80](v27, -1, -1);
  }

  else
  {

    v28 = (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x28223BE20](v28);
  v32 = a1;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = sub_2489E2124;
  *(v29 + 24) = &v34 - 4;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2489E2214;
  *(v30 + 24) = v29;

  v39[0] = isEscapingClosureAtFileLocation;
  sub_2489E21C4(v39);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v38 = isEscapingClosureAtFileLocation;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    v33 = 0;
    v32 = 199;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489E0774(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_248A11BC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248A12A50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + 24);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v46 = v14;
  LOBYTE(v14) = sub_248A12A60();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_248A122D0();
  __swift_project_value_buffer(v15, qword_2815105D8);
  v16 = *(v7 + 16);
  v45 = a1;
  v16(v9, a1, v6);
  v17 = a2;
  v18 = sub_248A122B0();
  v19 = sub_248A12E60();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = v3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48[0] = v42;
    *v21 = 136446722;
    v23 = sub_248A13570();
    v25 = sub_24897BC00(v23, v24, v48);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_248A132F0();
    v28 = v27;
    (*(v7 + 8))(v9, v6);
    v29 = sub_24897BC00(v26, v28, v48);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2114;
    v30 = a2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 24) = v31;
    *v22 = v31;
    _os_log_impl(&dword_248975000, v18, v19, "[%{public}s] Did fail to enable device for session %{public}s) with error %{public}@", v21, 0x20u);
    sub_248983734(v22, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v22, -1, -1);
    v32 = v42;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v32, -1, -1);
    v33 = v21;
    v3 = v43;
    MEMORY[0x24C1E0A80](v33, -1, -1);
  }

  else
  {

    v34 = (*(v7 + 8))(v9, v6);
  }

  MEMORY[0x28223BE20](v34);
  v39 = v45;
  v40 = a2;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = sub_2489E20F0;
  *(v35 + 24) = &v41 - 4;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2489E2214;
  *(v36 + 24) = v35;

  v48[0] = v3;
  sub_2489E21C4(v48);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v47 = v3;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    LODWORD(v40) = 0;
    v39 = 207;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489E0D5C(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_248A11BC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_248A12A50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(isEscapingClosureAtFileLocation + 24);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_248A12A60();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v37 = v13;
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_248A122D0();
  __swift_project_value_buffer(v14, qword_2815105D8);
  (*(v5 + 16))(v7, a1, v4);
  v15 = sub_248A122B0();
  v16 = sub_248A12E80();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v39[0] = v19;
    *v18 = 136446466;
    v20 = sub_248A13570();
    v22 = sub_24897BC00(v20, v21, v39);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_248A132F0();
    v25 = v24;
    (*(v5 + 8))(v7, v4);
    v26 = sub_24897BC00(v23, v25, v39);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_248975000, v15, v16, "[%{public}s] Did disable authentication for session %{public}s)", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v19, -1, -1);
    v27 = v18;
    a1 = v35;
    MEMORY[0x24C1E0A80](v27, -1, -1);
  }

  else
  {

    v28 = (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x28223BE20](v28);
  v32 = a1;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = sub_2489E21DC;
  *(v29 + 24) = &v34 - 4;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2489E2214;
  *(v30 + 24) = v29;

  v39[0] = isEscapingClosureAtFileLocation;
  sub_2489E21C4(v39);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v38 = isEscapingClosureAtFileLocation;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    v33 = 0;
    v32 = 215;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489E12D4(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_248A11BC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248A12A50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + 24);
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v46 = v14;
  LOBYTE(v14) = sub_248A12A60();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_28150F5F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_248A122D0();
  __swift_project_value_buffer(v15, qword_2815105D8);
  v16 = *(v7 + 16);
  v45 = a1;
  v16(v9, a1, v6);
  v17 = a2;
  v18 = sub_248A122B0();
  v19 = sub_248A12E60();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = v3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48[0] = v42;
    *v21 = 136446722;
    v23 = sub_248A13570();
    v25 = sub_24897BC00(v23, v24, v48);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    sub_2489DD118(&unk_27EEB6080, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_248A132F0();
    v28 = v27;
    (*(v7 + 8))(v9, v6);
    v29 = sub_24897BC00(v26, v28, v48);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2114;
    v30 = a2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 24) = v31;
    *v22 = v31;
    _os_log_impl(&dword_248975000, v18, v19, "[%{public}s] Did fail to disable device for session %{public}s) with error %{public}@", v21, 0x20u);
    sub_248983734(v22, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v22, -1, -1);
    v32 = v42;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v32, -1, -1);
    v33 = v21;
    v3 = v43;
    MEMORY[0x24C1E0A80](v33, -1, -1);
  }

  else
  {

    v34 = (*(v7 + 8))(v9, v6);
  }

  MEMORY[0x28223BE20](v34);
  v39 = v45;
  v40 = a2;
  sub_248A12EF0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_12;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = sub_2489E21F8;
  *(v35 + 24) = &v41 - 4;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2489D1BD4;
  *(v36 + 24) = v35;

  v48[0] = v3;
  sub_2489D1BF0(v48);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
LABEL_12:
    v48[0] = 0;
    v48[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v47 = v3;
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    LODWORD(v40) = 0;
    v39 = 223;
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.unlock(withDeviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2489839A0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.canAuthenticate(withDeviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_248978D74;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.listDevices()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24898314C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.listPairedDevices()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489E21F4;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.pair(withDeviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2489839A0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.unpair(withDeviceID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2489839A0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharingInteractionControllerProtocol.isRemoteUnlockSupported()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 56) + **(a2 + 56));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248990EBC;

  return v7(a1, a2);
}

unint64_t sub_2489E2168()
{
  result = qword_27EEB60C0;
  if (!qword_27EEB60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB60C0);
  }

  return result;
}

void *static XPCServer.makeDaemonServer(machServiceName:requiredEntitlements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for XPCServer(0, *(v4 + 80), *(v4 + 88), a4);
  v6 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v7 = sub_248A12B30();
  v8 = [v6 initWithMachServiceName_];

  v11 = sub_2489E5270(v8, a3, v9, v10);

  return v11;
}

uint64_t XPCServer.transportDispatchService.getter()
{
  sub_24898C374();
}

void *XPCServer.__allocating_init(listener:requiredEntitlements:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2489E5270(a1, a2, a3, a4);

  return v5;
}

void *XPCServer.init(listener:requiredEntitlements:)(void *a1, uint64_t a2)
{
  v3 = sub_2489E5190(a1, a2);

  return v3;
}

uint64_t XPCServer.deinit()
{
  sub_2489E2570();

  v1 = qword_28150F6B0;
  v2 = sub_248A11E00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t XPCServer.__deallocating_deinit()
{
  XPCServer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2489E2468()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x6574617669746361, 0xEA00000000002928);
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener;
  [*(v3 + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener) setDelegate_];
  [*(v3 + v4) activate];
  v5 = *(v0 + 8);

  return v5();
}

id sub_2489E2570()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x6164696C61766E69, 0xEC00000029286574);
  sub_248A11DE0();
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener;
  [*(v2 + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener) setDelegate_];
  v4 = *(v2 + v3);

  return [v4 invalidate];
}

uint64_t sub_2489E265C(void *a1)
{
  v2 = v1;
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_2815105C0);
  v5 = a1;
  v6 = sub_248A122B0();
  v7 = sub_248A12E80();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v8 = 136446466;
    v11 = sub_2489BDE7C(0xD00000000000005CLL, 0x8000000248A1A9F0, 0xD000000000000014, 0x8000000248A1AB90);
    v13 = sub_24897BC00(v11, v12, &v29);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&dword_248975000, v6, v7, "%{public}s Accepting new connection: %{public}@", v8, 0x16u);
    sub_248983734(v9, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  sub_248A12140();
  v15 = v5;
  v16 = sub_248A12100();
  sub_2489E2D24(v16);
  sub_248A12130();
  v17 = objc_opt_self();
  v18 = [v17 interfaceWithProtocol_];
  [v15 setRemoteObjectInterface_];

  v19 = [v17 interfaceWithProtocol_];
  [v15 setExportedInterface_];

  [v15 setExportedObject_];
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = v20;
  v21[4] = v16;
  v33 = sub_2489E5930;
  v34 = v21;
  v29 = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2489E2AF4;
  v32 = &block_descriptor_6;
  v22 = _Block_copy(&v29);
  v23 = v15;

  [v23 setInterruptionHandler_];
  _Block_release(v22);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = v24;
  v25[4] = v16;
  v33 = sub_2489E59B8;
  v34 = v25;
  v29 = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_2489E2AF4;
  v32 = &block_descriptor_32;
  v26 = _Block_copy(&v29);
  v27 = v23;

  [v27 setInvalidationHandler_];
  _Block_release(v26);
  [v27 activate];
}

uint64_t sub_2489E2AF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2489E2B38(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_2815105C0);
  v8 = a1;
  v9 = sub_248A122B0();
  v10 = sub_248A12E60();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20[0] = v12;
    *v11 = 136446210;
    v13 = [v8 serviceName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_248A12B60();
      v17 = v16;
    }

    else
    {
      v17 = 0xEB00000000646569;
      v15 = 0x6669636570736E75;
    }

    v18 = sub_24897BC00(v15, v17, v20);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_248975000, v9, v10, a4, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2489E2DE8(a3);
  }

  return result;
}

uint64_t sub_2489E2D24(uint64_t a1)
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x6976726553646461, 0xEE00293A5F286563);
  return sub_248A11DA0();
}

uint64_t sub_2489E2DE8(uint64_t a1)
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0xD000000000000011, 0x8000000248A1AB70);
  return sub_248A11DB0();
}

uint64_t sub_2489E2EA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_2489E2EF4, 0, 0);
}

uint64_t sub_2489E2EF4()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = *(v1 + 80);
  *(v2 + 24) = *(v1 + 88);
  *(v2 + 32) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_2489E2FDC;

  return MEMORY[0x28215A940](&unk_248A179E8, v2);
}

uint64_t sub_2489E2FDC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489E3118, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2489E3118()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489E317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2489E31A4, 0, 0);
}

uint64_t sub_2489E31A4()
{
  sub_248A12140();
  swift_unknownObjectRetain();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v6 = (v0[3] + *v0[3]);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_2489E3308;

    return v6(v2);
  }

  else
  {
    swift_unknownObjectRelease();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2489E3308()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2489E3480;
  }

  else
  {
    v2 = sub_2489E341C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489E341C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489E3480()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489E34E4(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2489E3508, 0, 0);
}

uint64_t sub_2489E3508()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x726F70736E617274, 0xED0000293A5F2874);
  v5 = (*MEMORY[0x277D05180] + MEMORY[0x277D05180]);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_248988D64;
  v3 = *(v0 + 32);

  return v5(v3, 0, 0xF000000000000000);
}

uint64_t sub_2489E3648(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = a1;
  v12 = sub_248A12D40();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_248A179C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_248A179D0;
  v14[5] = v13;

  sub_2489E4DAC(0, 0, v9, &unk_248A179D8, v14);
}

uint64_t sub_2489E37D0(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_2489890B8;

  return sub_2489E34E4(a1);
}

uint64_t sub_2489E388C(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = a1;
  return MEMORY[0x2822009F8](sub_2489E38B4, 0, 0);
}

uint64_t sub_2489E38B4()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0xD000000000000012, 0x8000000248A1AA50);
  v7 = (*MEMORY[0x277D05180] + MEMORY[0x277D05180]);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2489E39EC;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 48);

  return v7(v5, v3, v4);
}

uint64_t sub_2489E39EC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2489E3AFC(uint64_t a1, uint64_t a2, int a3, void *a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = a1;
  v14 = sub_248A12D40();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_248A17990;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_248A15148;
  v16[5] = v15;
  v17 = a4;

  sub_2489E4DAC(0, 0, v11, &unk_248A15150, v16);
}

uint64_t sub_2489E3C90(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;

    a2 = sub_248A11B00();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v4[4] = a2;
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_2489899D8;

  return sub_2489E388C(a1, a2, v9);
}

uint64_t sub_2489E3D90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489AEC74;

  return sub_2489E2448();
}

uint64_t sub_2489E3E20()
{
  sub_2489E2570();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489E3E80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return XPCServer.send(_:)(a1);
}

uint64_t XPCServer.send(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2489E3F38, 0, 0);
}

uint64_t sub_2489E3F38()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2489E3FF8;

  return sub_2489E2EA8(&unk_248A17778, v2);
}

uint64_t sub_2489E3FF8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489E4134, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2489E4134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489E4198()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return XPCServer.send<A>(_:)();
}

uint64_t XPCServer.send<A>(_:)()
{
  return MEMORY[0x2822009F8](sub_2489E5FC8, 0, 0);
}

{
  return MEMORY[0x2822009F8](sub_2489E5FC8, 0, 0);
}

uint64_t sub_2489E4240()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return XPCServer.send<A>(_:)();
}

uint64_t sub_2489E42E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2489839A0;

  return XPCServer.send<A>(_:payload:)(a1, a2, a3, a4);
}

uint64_t XPCServer.send<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2489E43D0, 0, 0);
}

uint64_t sub_2489E43D0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_2489E4490;

  return sub_2489E2EA8(&unk_248A177A8, v1);
}

uint64_t sub_2489E4490()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489E45CC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2489E45CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489E4630()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return XPCServer.send<A, B>(_:payload:)();
}

uint64_t XPCServer.send<A, B>(_:payload:)()
{
  return MEMORY[0x2822009F8](sub_2489E5FC8, 0, 0);
}

{
  return MEMORY[0x2822009F8](sub_2489E4788, 0, 0);
}

uint64_t sub_2489E46DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return XPCServer.send<A, B>(_:payload:)();
}

uint64_t sub_2489E4788()
{
  v1 = sub_248A12150();
  sub_2489BCB48();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D05128], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

id sub_2489E4958()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2489E49E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return MEMORY[0x28215AB28](a2);
}

uint64_t sub_2489E4A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_248978D74;

  return MEMORY[0x28215AB10](a2, a3, a4, a5);
}

uint64_t sub_2489E4B4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return sub_2489E2448();
}

uint64_t sub_2489E4BDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2489839A0;

  return v6();
}

uint64_t sub_2489E4CC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2489839A0;

  return v7();
}

uint64_t sub_2489E4DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2489B1DD0(a3, v23 - v10);
  v12 = sub_248A12D40();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_248983734(v11, &unk_27EEB52D0, &qword_248A14980);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_248A12D30();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_248A12CD0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_248A12B90() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);

    return v21;
  }

LABEL_8:
  sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2489E5098(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489E5FCC;

  return v6(a1);
}

void *sub_2489E5190(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_248A11DF0();
  v6 = type metadata accessor for ServerListener();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener] = a1;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = a1;
  v3[3] = objc_msgSendSuper2(&v10, sel_init);
  v3[4] = a2;
  sub_248A122A0();
  v3[2] = sub_248A12290();
  *(v3[3] + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8) = &off_285B62840;
  swift_unknownObjectWeakAssign();
  return v3;
}

void *sub_2489E5270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for XPCServer(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_2489E5190(a1, a2);
}

uint64_t sub_2489E52C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return sub_2489E49E4(a1, v4);
}

uint64_t sub_2489E5360(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2489839A0;

  return sub_2489E4A84(a1, v7, v6, v4, v5);
}

uint64_t sub_2489E541C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_2489E5498(uint64_t a1)
{
  result = sub_248A11E00();
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

uint64_t dispatch thunk of XPCServer.activate()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_248978D74;

  return v4();
}

uint64_t dispatch thunk of XPCServer.transport(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24898D6B0;

  return v6(a1);
}

uint64_t dispatch thunk of XPCServer.transport(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 200) + **(*v3 + 200));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24898CC40;

  return v10(a1, a2, a3);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2489E59E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2489839A0;

  return sub_2489E3C90(v2, v3, v4, v5);
}

uint64_t sub_2489E5AA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return sub_2489E5098(a1, v4);
}

uint64_t sub_2489E5B5C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2489839A0;

  return sub_2489E37D0(v2, v4, v3);
}

uint64_t sub_2489E5C10(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  for (i = (a2 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;

    v7 = sub_248A12B30();
    v8 = [a1 valueForEntitlement_];

    if (v8)
    {
      sub_248A12F70();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v22[0] = v20;
    v22[1] = v21;
    if (!*(&v21 + 1))
    {
      break;
    }

    if ((swift_dynamicCast() & 1) == 0 || (v19 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  sub_248983734(v22, &qword_27EEB5610, &qword_248A15118);
LABEL_12:
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_2815105C0);

  v11 = a1;
  v12 = sub_248A122B0();
  v13 = sub_248A12E60();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v22[0] = v16;
    *v14 = 138543618;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2082;
    v17 = v11;
    v18 = sub_24897BC00(v6, v5, v22);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_248975000, v12, v13, "Rejecting connection %{public}@ due to missing entitlement: %{public}s", v14, 0x16u);
    sub_248983734(v15, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C1E0A80](v16, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2489E5EC4(void *a1)
{
  v3 = sub_2489E5C10(a1, *(v1 + 32));
  if (v3)
  {
    sub_2489E265C(a1);
  }

  return v3 & 1;
}

uint64_t sub_2489E5F08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489E317C(a1, v7, v6, v4, v5);
}

uint64_t sub_2489E5FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2489B1DD0(a3, v22 - v9);
  v11 = sub_248A12D40();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_248983734(v10, &unk_27EEB52D0, &qword_248A14980);
  }

  else
  {
    sub_248A12D30();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_248A12CD0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_248A12B90() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2489E6270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2489B1DD0(a3, v22 - v9);
  v11 = sub_248A12D40();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_248983734(v10, &unk_27EEB52D0, &qword_248A14980);
  }

  else
  {
    sub_248A12D30();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_248A12CD0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_248A12B90() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6170, &qword_248A17AC8);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_248983734(a3, &unk_27EEB52D0, &qword_248A14980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6170, &qword_248A17AC8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t BYOEAssetValidation.validateAssets(assets:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_248A12480();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489E65F8, 0, 0);
}

uint64_t sub_2489E65F8()
{
  v28 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = sub_248A122D0();
  v0[19] = __swift_project_value_buffer(v5, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A1ABB0, 0xD000000000000017, 0x8000000248A1AC30);
  sub_248A12450();
  sub_248A123E0();
  sub_248A12AD0();

  sub_248A12410();
  sub_2489E8084(&qword_27EEB53E8, MEMORY[0x277D04EF0]);
  v6 = sub_248A12F80();
  v7 = *(v3 + 8);
  v0[20] = v7;
  v0[21] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  v7(v1, v4);
  if (v6 & 1) != 0 || (v9 = v0[16], v8 = v0[17], v10 = v0[14], sub_248A123E0(), sub_248A12AD0(), , sub_248A12440(), v11 = sub_248A12F80(), v7(v9, v10), v7(v8, v10), (v11))
  {
    v12 = swift_task_alloc();
    v0[22] = v12;
    *v12 = v0;
    v12[1] = sub_2489E6A00;

    return BYOEAssetValidation.validateAndApplyCoreRXAssets()();
  }

  else
  {
    v14 = sub_248A122B0();
    v15 = sub_248A12E80();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446210;
      swift_beginAccess();
      sub_2489E8084(&qword_27EEB53D8, MEMORY[0x277D04EF8]);
      v18 = sub_248A132F0();
      v20 = sub_24897BC00(v18, v19, &v27);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_248975000, v14, v15, "Validation: valid assets: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1E0A80](v17, -1, -1);
      MEMORY[0x24C1E0A80](v16, -1, -1);
    }

    v21 = v0[20];
    v22 = v0[18];
    v23 = v0[15];
    v24 = v0[14];
    v25 = v0[11];
    swift_beginAccess();
    (*(v23 + 16))(v25, v22, v24);
    v21(v22, v24);

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_2489E6A00(uint64_t a1)
{
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_2489E6B00, 0, 0);
}

uint64_t sub_2489E6B00()
{
  v23 = v0;
  v1 = v0[23];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v21 = sub_248A13030();

  if (v21)
  {
LABEL_3:
    v3 = v0[20];
    v4 = v0[17];
    v5 = v0[18];
    v6 = v0[14];
    sub_248A12410();
    sub_2489E8084(&qword_27EEB6158, MEMORY[0x277D04EE8]);
    sub_248A12C50();
    v3(v5, v6);
    sub_248A12C50();
    v0[8] = v0[10] | v0[9];
    sub_2489E8084(&qword_27EEB6160, MEMORY[0x277D04F00]);
    sub_248A13560();
    v3(v4, v6);
  }

LABEL_4:
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446210;
    swift_beginAccess();
    sub_2489E8084(&qword_27EEB53D8, MEMORY[0x277D04EF8]);
    v11 = sub_248A132F0();
    v13 = sub_24897BC00(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_248975000, v7, v8, "Validation: valid assets: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  v14 = v0[20];
  v15 = v0[18];
  v16 = v0[15];
  v17 = v0[14];
  v18 = v0[11];
  swift_beginAccess();
  (*(v16 + 16))(v18, v15, v17);
  v14(v15, v17);

  v19 = v0[1];

  return v19();
}

uint64_t BYOEAssetValidation.validateAndApplyCoreRXAssets()()
{
  *(v1 + 328) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  *(v1 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489E6E80, 0, 0);
}

uint64_t sub_2489E6E80()
{
  v1 = *(v0 + 328);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v6 = (*(v3 + 64) + **(v3 + 64));
  v4 = swift_task_alloc();
  *(v0 + 344) = v4;
  *v4 = v0;
  v4[1] = sub_2489E6FA8;

  return v6(v2, v3);
}

uint64_t sub_2489E6FA8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_2489E7578;
  }

  else
  {
    v4 = sub_2489E70BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2489E70BC()
{
  v16 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105A8);

  v2 = sub_248A122B0();
  v3 = sub_248A12E40();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 352);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x24C1DF960](v5, &type metadata for RXUUIDInfo);
    v10 = v9;

    v11 = sub_24897BC00(v8, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_248975000, v2, v3, "CoreRX state before validation: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  else
  {
  }

  v12 = **(v0 + 328);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 320;
  *(v0 + 24) = sub_2489E7338;
  v13 = swift_continuation_init();
  *(v0 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6168, &qword_248A17A20);
  *(v0 + 256) = MEMORY[0x277D85DD0];
  *(v0 + 264) = 1107296256;
  *(v0 + 272) = sub_2489E7A30;
  *(v0 + 280) = &block_descriptor_7;
  *(v0 + 288) = v13;
  [v12 validateAndApplyLensEnrollmentAssetsWithCompletion_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2489E7338()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_2489E77D0;
  }

  else
  {
    v2 = sub_2489E7448;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489E7448()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = sub_248A12D40();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_2489E80C8(v2, v0 + 168);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = *(v0 + 216);
  *(v5 + 64) = *(v0 + 200);
  *(v5 + 80) = v6;
  *(v5 + 96) = *(v0 + 232);
  *(v5 + 112) = *(v0 + 248);
  v7 = *(v0 + 184);
  *(v5 + 32) = *(v0 + 168);
  *(v5 + 48) = v7;
  sub_2489E5FD4(0, 0, *(v0 + 336), &unk_248A17A28, v5);

  v8 = *(v0 + 8);

  return v8(v3);
}

uint64_t sub_2489E7578()
{
  v1 = *(v0 + 360);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_248975000, v4, v5, "Error performing CoreRX validation: %{public}@", v6, 0xCu);
    sub_248983734(v7, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  v11 = *(v0 + 328);
  v10 = *(v0 + 336);

  v12 = sub_248A12D40();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_2489E80C8(v11, v0 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = *(v0 + 128);
  *(v13 + 64) = *(v0 + 112);
  *(v13 + 80) = v14;
  *(v13 + 96) = *(v0 + 144);
  *(v13 + 112) = *(v0 + 160);
  v15 = *(v0 + 96);
  *(v13 + 32) = *(v0 + 80);
  *(v13 + 48) = v15;
  sub_2489E5FD4(0, 0, *(v0 + 336), &unk_248A17A10, v13);

  v16 = *(v0 + 8);
  v17 = MEMORY[0x277D84F90];

  return v16(v17);
}

uint64_t sub_2489E77D0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 368);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_2815105A8);
  v4 = v2;
  v5 = sub_248A122B0();
  v6 = sub_248A12E60();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_248975000, v5, v6, "Error performing CoreRX validation: %{public}@", v7, 0xCu);
    sub_248983734(v8, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  v12 = *(v1 + 328);
  v11 = *(v1 + 336);

  v13 = sub_248A12D40();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_2489E80C8(v12, v1 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = *(v1 + 128);
  *(v14 + 64) = *(v1 + 112);
  *(v14 + 80) = v15;
  *(v14 + 96) = *(v1 + 144);
  *(v14 + 112) = *(v1 + 160);
  v16 = *(v1 + 96);
  *(v14 + 32) = *(v1 + 80);
  *(v14 + 48) = v16;
  sub_2489E5FD4(0, 0, *(v1 + 336), &unk_248A17A10, v14);

  v17 = *(v1 + 8);
  v18 = MEMORY[0x277D84F90];

  return v17(v18);
}

uint64_t sub_2489E7A30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_2489E85F8();
    **(*(v4 + 64) + 40) = sub_248A12C90();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_2489E7B10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248978D74;

  return BYOEAssetValidation.validateAssets(assets:)(a1, a2);
}

uint64_t sub_2489E7BB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248990EBC;

  return BYOEAssetValidation.validateAndApplyCoreRXAssets()();
}

uint64_t sub_2489E7C64()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v6 = (*(v3 + 64) + **(v3 + 64));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2489E7D8C;

  return v6(v2, v3);
}

uint64_t sub_2489E7D8C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2489E7EC0, 0, 0);
  }
}

uint64_t sub_2489E7EC0()
{
  v15 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_2815105A8);

  v2 = sub_248A122B0();
  v3 = sub_248A12E40();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x24C1DF960](v5, &type metadata for RXUUIDInfo);
    v10 = v9;

    v11 = sub_24897BC00(v8, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_248975000, v2, v3, "CoreRX state after validation: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2489E8084(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_248A12480();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2489E8100(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return sub_2489E7C44(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2489E822C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248978D74;

  return sub_2489E7C44(a1, v4, v5, v1 + 32);
}

uint64_t dispatch thunk of BYOEAssetValidationProtocol.validateAssets(assets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_248978D74;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BYOEAssetValidationProtocol.validateAndApplyCoreRXAssets()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248990EBC;

  return v7(a1, a2);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2489E854C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2489E8594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2489E85F8()
{
  result = qword_27EEB6178;
  if (!qword_27EEB6178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB6178);
  }

  return result;
}

void *EnrollmentAssetServer.__allocating_init(xpcServer:managedAssets:telemetry:lockoutObserverManager:fileManager:compression:guestUserModeService:validation:darwinNotificationXPCEventServer:appleAccountProvider:keyValueStore:deviceSharingUserDefaults:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  v81 = a8;
  v67 = a4;
  v76 = a14;
  v77 = a11;
  v78 = a1;
  v74 = a5;
  v75 = a10;
  v17 = a2[3];
  v73 = a2[4];
  v82 = a2;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
  v70 = v17;
  MEMORY[0x28223BE20](v18);
  v72 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))();
  v21 = a3;
  v79 = a3;
  v22 = a3[3];
  v69 = v21[4];
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v65 = v22;
  MEMORY[0x28223BE20](v23);
  v68 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))();
  ObjectType = swift_getObjectType();
  v26 = a6;
  v71 = a6;
  v27 = a6[3];
  v63 = v26[4];
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x28223BE20](v28);
  v62 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))();
  v66 = a7;
  v31 = a7[3];
  v60 = a7[4];
  v32 = __swift_mutable_project_boxed_opaque_existential_1(a7, v31);
  MEMORY[0x28223BE20](v32);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34);
  v61 = a9;
  v36 = a9[3];
  v58 = a9[4];
  v37 = __swift_mutable_project_boxed_opaque_existential_1(a9, v36);
  MEMORY[0x28223BE20](v37);
  v39 = &v56 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39);
  v59 = a12;
  v41 = a12[3];
  v56 = a12[4];
  v42 = __swift_mutable_project_boxed_opaque_existential_1(a12, v41);
  MEMORY[0x28223BE20](v42);
  v44 = &v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v44);
  v57 = a13;
  v46 = a13[3];
  v47 = a13[4];
  v48 = __swift_mutable_project_boxed_opaque_existential_1(a13, v46);
  MEMORY[0x28223BE20](v48);
  v50 = &v56 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v50);
  v55 = v47;
  v52 = v76;
  v53 = sub_2489F3418(v78, v72, v68, v67, v62, v34, v81, v39, v75, v77, v44, v50, v76, v80, v36, v65, v41, v27, v70, ObjectType, v46, v31, v58, v69, v56, v63, v73, v74, v55, v60);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v66);
  __swift_destroy_boxed_opaque_existential_0(v71);
  __swift_destroy_boxed_opaque_existential_0(v79);
  __swift_destroy_boxed_opaque_existential_0(v82);
  return v53;
}

void *EnrollmentAssetServer.init(xpcServer:managedAssets:telemetry:lockoutObserverManager:fileManager:compression:guestUserModeService:validation:darwinNotificationXPCEventServer:appleAccountProvider:keyValueStore:deviceSharingUserDefaults:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  v32 = a7;
  v33 = a8;
  v40 = a6;
  v41 = a3;
  v42 = a2;
  v34 = a13;
  v36 = a12;
  v37 = a10;
  v38 = a9;
  v39 = a11;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v21 - 8);
  v35 = &v31 - v22;
  v14[2] = a1;
  sub_248997228(a2, (v14 + 3));
  sub_248997228(a3, (v14 + 34));
  v14[39] = a4;
  v14[40] = a5;
  sub_248997228(a6, (v14 + 8));
  v23 = v32;
  sub_248997228(v32, (v14 + 13));
  v14[18] = v33;
  sub_248997228(a9, (v14 + 19));
  sub_248997228(a12, (v14 + 24));
  v24 = v34;
  sub_248997228(v34, (v14 + 29));
  v14[41] = a14;
  swift_unknownObjectRetain();
  v25 = a14;

  swift_unknownObjectRetain();
  EnrollmentAssetServer.registerForKVSNotification()();
  EnrollmentAssetServer.registerForAccountChangeNotification@Sendable ()();
  v26 = sub_248A12D40();
  v27 = v35;
  (*(*(v26 - 8) + 56))(v35, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v29 = v37;
  v28[4] = v14;
  v28[5] = v29;
  v28[6] = v39;

  swift_unknownObjectRetain();
  sub_2489AC334(0, 0, v27, &unk_248A17AE0, v28);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v40);
  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v42);
  return v14;
}

void EnrollmentAssetServer.registerForAccountChangeNotification@Sendable ()()
{
  v1 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000026, 0x8000000248A1AC50);
  v3 = [objc_opt_self() sharedSubscriber];
  v5[4] = sub_2489F3954;
  v5[5] = v1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2489F2B20;
  v5[3] = &block_descriptor_8;
  v4 = _Block_copy(v5);

  [v3 registerAccountChangeEventHandler_];
  _Block_release(v4);
}

uint64_t sub_2489E9180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_2489E9218;

  return sub_2489F1598();
}

uint64_t sub_2489E9218()
{

  return MEMORY[0x2822009F8](sub_2489E9314, 0, 0);
}

uint64_t sub_2489E9314()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 48) = swift_getObjectType();
  *(v0 + 112) = 0;
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = sub_2489F4A8C;
  *(v3 + 24) = v2;
  *(v0 + 64) = *(v1 + 24);
  *(v0 + 72) = (v1 + 24) & 0xFFFFFFFFFFFFLL | 0x524C000000000000;

  v5 = sub_248A12CD0();
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;

  return MEMORY[0x2822009F8](sub_2489E93F4, v5, v4);
}

uint64_t sub_2489E93F4()
{
  (*(v0 + 64))(v0 + 112, &unk_248A17D30, *(v0 + 56), *(v0 + 48), *(v0 + 32));

  return MEMORY[0x2822009F8](sub_2489E9488, 0, 0);
}

uint64_t sub_2489E9488()
{
  v1 = *(v0 + 16);
  *(v0 + 113) = 1;
  v2 = swift_allocObject();
  *(v0 + 96) = v2;
  *(v2 + 16) = sub_2489F4B54;
  *(v2 + 24) = v1;
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_2489E9538, v4, v3);
}

uint64_t sub_2489E9538()
{
  (*(v0 + 64))(v0 + 113, &unk_248A17D38, *(v0 + 96), *(v0 + 48), *(v0 + 32));

  return MEMORY[0x2822009F8](sub_2489E95D0, 0, 0);
}

uint64_t sub_2489E95D0()
{
  v1 = *(v0 + 16);
  *(v0 + 114) = 2;
  v2 = swift_allocObject();
  *(v0 + 104) = v2;
  *(v2 + 16) = sub_2489F4B5C;
  *(v2 + 24) = v1;
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_2489E9680, v4, v3);
}

uint64_t sub_2489E9680()
{
  (*(v0 + 64))(v0 + 114, &unk_248A17D40, *(v0 + 104), *(v0 + 48), *(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489E9710(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_2489E9774(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000002BLL, 0x8000000248A1AF00);
  v7 = sub_248A12D40();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_2489AC334(0, 0, v5, &unk_248A17D60, v8);
}

uint64_t sub_2489E9900(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000029, 0x8000000248A1AED0);
  v7 = sub_248A12D40();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_2489AC334(0, 0, v5, &unk_248A17D50, v8);
}

uint64_t sub_2489E9A8C()
{
  v1[16] = v0;
  v2 = sub_248A12330();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489E9B4C, 0, 0);
}

uint64_t sub_2489E9B4C()
{
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = sub_248A122D0();
  v0[20] = __swift_project_value_buffer(v5, qword_2815105C0);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0x6574617669746361, 0xEA00000000002928);
  v6 = *(v3 + 16);
  v0[21] = v6;
  v0[2] = v6;
  v7 = *MEMORY[0x277D04DD8];
  v8 = *(v2 + 104);
  v0[22] = v8;
  v0[23] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v1, v7, v4);
  v9 = swift_allocObject();
  v0[24] = v9;
  swift_weakInit();
  swift_retain_n();
  v10 = swift_task_alloc();
  v0[25] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6188, &qword_248A17B00);
  v0[26] = v11;
  v12 = sub_248A12320();
  v13 = sub_248A12400();
  v0[27] = v13;
  v14 = sub_2489F3A20();
  v0[28] = v14;
  v15 = sub_2489F4D94(&unk_28150F5B8, MEMORY[0x277D04DB0], MEMORY[0x277D04D90]);
  v0[29] = sub_2489F4D94(&qword_28150F5A0, MEMORY[0x277D04EB8], MEMORY[0x277D04EB0]);
  *v10 = v0;
  v10[1] = sub_2489E9DE8;
  v16 = v0[19];

  return MEMORY[0x28215ABB8](v16, &unk_248A17AF8, v9, v11, v12, v13, v14, v15);
}

uint64_t sub_2489E9DE8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);

  v5 = *(v3 + 8);
  *(v1 + 240) = v5;
  *(v1 + 248) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_2489E9F8C, 0, 0);
}

uint64_t sub_2489E9F8C()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[3] = v0[21];
  v1(v2, *MEMORY[0x277D04E10], v3);
  v4 = swift_allocObject();
  v0[32] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_2489EA0B8;
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[19];
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v8, &unk_248A17B10, v4, v7, v9, v6, v10);
}

uint64_t sub_2489EA0B8()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EA258, 0, 0);
}

uint64_t sub_2489EA258()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[4] = v0[21];
  v1(v2, *MEMORY[0x277D04E00], v3);
  v4 = swift_allocObject();
  v0[34] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_2489EA384;
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[19];
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC8](v8, &unk_248A17B20, v4, v7, v9, v6, v10);
}

uint64_t sub_2489EA384()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EA524, 0, 0);
}

uint64_t sub_2489EA524()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[5] = v0[21];
  v1(v2, *MEMORY[0x277D04E38], v3);
  v4 = swift_allocObject();
  v0[36] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_2489EA650;
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[19];
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC8](v8, &unk_248A17B30, v4, v7, v9, v6, v10);
}

uint64_t sub_2489EA650()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EA7F0, 0, 0);
}

uint64_t sub_2489EA7F0()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[6] = v0[21];
  v1(v2, *MEMORY[0x277D04E30], v3);
  v4 = swift_allocObject();
  v0[38] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_2489EA91C;
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[19];
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v8, &unk_248A17B40, v4, v7, v9, v6, v10);
}

uint64_t sub_2489EA91C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EAABC, 0, 0);
}

uint64_t sub_2489EAABC()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[7] = v0[21];
  v1(v2, *MEMORY[0x277D04DE8], v3);
  v4 = swift_allocObject();
  v0[40] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[41] = v5;
  v6 = sub_248A123B0();
  v7 = sub_2489F4D94(&unk_28150F5A8, MEMORY[0x277D04EA0], MEMORY[0x277D04E80]);
  *v5 = v0;
  v5[1] = sub_2489EAC20;
  v8 = v0[28];
  v9 = v0[26];
  v10 = v0[19];

  return MEMORY[0x28215ABC8](v10, &unk_248A17B50, v4, v9, v6, v8, v7);
}

uint64_t sub_2489EAC20()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EADC0, 0, 0);
}

uint64_t sub_2489EADC0()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[8] = v0[21];
  v1(v2, *MEMORY[0x277D04E08], v3);
  v4 = swift_allocObject();
  v0[42] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_2489EAEEC;
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[19];
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v8, &unk_248A17B60, v4, v7, v9, v6, v10);
}

uint64_t sub_2489EAEEC()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EB08C, 0, 0);
}

uint64_t sub_2489EB08C()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[9] = v0[21];
  v1(v2, *MEMORY[0x277D04E40], v3);
  v4 = swift_allocObject();
  v0[44] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_2489EB1B0;
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[19];

  return MEMORY[0x28215ABD0](v8, &unk_248A17B70, v4, v7, v6);
}

uint64_t sub_2489EB1B0()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EB358, 0, 0);
}

uint64_t sub_2489EB358()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[10] = v0[21];
  v1(v2, *MEMORY[0x277D04E18], v3);
  v4 = swift_allocObject();
  v0[46] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[47] = v5;
  *v5 = v0;
  v5[1] = sub_2489EB484;
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[19];
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v8, &unk_248A17B80, v4, v7, v9, v6, v10);
}

uint64_t sub_2489EB484()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EB624, 0, 0);
}

uint64_t sub_2489EB624()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[11] = v0[21];
  v1(v2, *MEMORY[0x277D04E28], v3);
  v4 = swift_allocObject();
  v0[48] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[49] = v5;
  *v5 = v0;
  v5[1] = sub_2489EB750;
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[19];
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC8](v8, &unk_248A17B90, v4, v7, v9, v6, v10);
}

uint64_t sub_2489EB750()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EB8F0, 0, 0);
}

uint64_t sub_2489EB8F0()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[12] = v0[21];
  v1(v2, *MEMORY[0x277D04DF0], v3);
  v4 = swift_allocObject();
  v0[50] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[51] = v5;
  *v5 = v0;
  v5[1] = sub_2489EBA1C;
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[19];
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D05188];

  return MEMORY[0x28215ABC0](v8, &unk_248A17BA0, v4, v7, v9, v6, v10);
}

uint64_t sub_2489EBA1C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EBBBC, 0, 0);
}

uint64_t sub_2489EBBBC()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[13] = v0[21];
  v1(v2, *MEMORY[0x277D04E20], v3);
  v4 = swift_allocObject();
  v0[52] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[53] = v5;
  v6 = sub_248A12490();
  v7 = sub_2489F4D94(&qword_27EEB6190, MEMORY[0x277D04F28], MEMORY[0x277D04F08]);
  *v5 = v0;
  v5[1] = sub_2489EBD20;
  v8 = v0[28];
  v9 = v0[26];
  v10 = v0[19];

  return MEMORY[0x28215ABC8](v10, &unk_248A17BB0, v4, v9, v6, v8, v7);
}

uint64_t sub_2489EBD20()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EBEC0, 0, 0);
}

uint64_t sub_2489EBEC0()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[14] = v0[21];
  v1(v2, *MEMORY[0x277D04DE0], v3);
  v4 = swift_allocObject();
  v0[54] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[55] = v5;
  *v5 = v0;
  v5[1] = sub_2489EBFD0;
  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[26];
  v9 = v0[27];
  v10 = v0[19];

  return MEMORY[0x28215ABC8](v10, &unk_248A17BC0, v4, v8, v9, v6, v7);
}

uint64_t sub_2489EBFD0()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EC170, 0, 0);
}

uint64_t sub_2489EC170()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[17];
  v0[15] = v0[21];
  v1(v2, *MEMORY[0x277D04DF8], v3);
  v4 = swift_allocObject();
  v0[56] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[57] = v5;
  *v5 = v0;
  v5[1] = sub_2489EC290;
  v6 = v0[28];
  v7 = v0[26];
  v8 = v0[19];
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D05190];

  return MEMORY[0x28215ABC0](v8, &unk_248A17BD0, v4, v7, v9, v6, v10);
}

uint64_t sub_2489EC290()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489EC430, 0, 0);
}

uint64_t sub_2489EC430()
{
  v1 = *(v0 + 168);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x6574617669746361, 0xEA00000000002928);
  v2 = *(v1 + 24);
  v3 = OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener;
  [*(v2 + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener) setDelegate_];
  [*(v2 + v3) activate];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2489EC504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2489EC528, 0, 0);
}

uint64_t sub_2489EC528()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_2489EC65C;
    v3 = v0[5];
    v4 = v0[6];

    return sub_2489EF500(v3, v4);
  }

  else
  {
    v6 = v0[5];
    v7 = sub_248A12400();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2489EC65C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2489EC818;
  }

  else
  {

    v2 = sub_2489EC778;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489EC778()
{
  v1 = *(v0 + 40);
  v2 = sub_248A12400();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2489EC818()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489EC87C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489EC89C, 0, 0);
}

uint64_t sub_2489EC89C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5D8 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_281510590);
    sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000014, 0x8000000248A1AD10);
    __swift_project_boxed_opaque_existential_1((v2 + 192), *(v2 + 216));
    v4 = sub_248A121E0();

    v5 = v4 & 1;
  }

  else
  {
    v5 = 2;
  }

  **(v0 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2489EC9E8(_BYTE *a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 72) = *a1;
  return MEMORY[0x2822009F8](sub_2489ECA10, 0, 0);
}

uint64_t sub_2489ECA10()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5D8 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_281510590);
    sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18B10);
    v4 = v2[27];
    v5 = v2[28];
    __swift_project_boxed_opaque_existential_1(v2 + 24, v4);
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_2489ECBB0;
    v7 = *(v0 + 72);

    return MEMORY[0x28215AB98](v7, v4, v5);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2489ECBB0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2489ECD28;
  }

  else
  {
    v2 = sub_2489ECCC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489ECCC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489ECD28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489ECD8C(_BYTE *a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 72) = *a1;
  return MEMORY[0x2822009F8](sub_2489ECDB4, 0, 0);
}

uint64_t sub_2489ECDB4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_2489ECEA8;
    v3 = *(v0 + 72);

    return EnrollmentAssetServer.setCloudDataExistsKVS(value:)(v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2489ECEA8()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489F4EC8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2489ECFE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489ED004, 0, 0);
}

uint64_t sub_2489ED004()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1.value = EnrollmentAssetServer.getCloudDataExistsKVS()().value;
  }

  else
  {
    v1.value = 2;
  }

  (*(v0 + 40))->value = v1.value;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489ED0AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489ED0CC, 0, 0);
}

uint64_t sub_2489ED0CC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2489ED1BC;
    v3 = v0[5];

    return sub_2489EE214(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2489ED1BC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489F4ECC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2489ED2F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489ED318, 0, 0);
}

uint64_t sub_2489ED318()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2489ED40C;

    return sub_2489F0CCC();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2489ED40C(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_2489F4ECC;
  }

  else
  {

    *(v4 + 80) = a1 & 1;
    v5 = sub_2489F4EC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2489ED560()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_2489ED648;

    return sub_2489F1598();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2489ED648()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2489ED75C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489ED77C, 0, 0);
}

uint64_t sub_2489ED77C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1.value = EnrollmentAssetServer.getAssociatedAVPKVS()().value;
  }

  else
  {
    v1.value = 2;
  }

  (*(v0 + 40))->value = v1.value;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489ED824(_BYTE *a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 72) = *a1;
  return MEMORY[0x2822009F8](sub_2489ED84C, 0, 0);
}

uint64_t sub_2489ED84C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_2489ECEA8;
    v3 = *(v0 + 72);

    return EnrollmentAssetServer.setAssociatedAVPKVS(value:)(v3);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2489ED940(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489ED960, 0, 0);
}

uint64_t sub_2489ED960()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2489EDA54;

    return EnrollmentAssetServer.getFeatureState()();
  }

  else
  {
    v4 = v0[5];
    *v4 = 0;
    v4[1] = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2489EDA54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_2489EDBB4;
  }

  else
  {

    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_2489EDB90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2489EDB90()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  *v2 = *(v0 + 88);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2489EDBB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489EDC18(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489EDC38, 0, 0);
}

uint64_t sub_2489EDC38()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 40);
    v4 = sub_248A122D0();
    __swift_project_value_buffer(v4, qword_2815105A8);
    sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001CLL, 0x8000000248A18C50);
    v5 = v2[6];
    v6 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v5);
    (*(v6 + 80))(v3, v5, v6);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2489EDDA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489EDDC4, 0, 0);
}

uint64_t sub_2489EDDC4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_2489ED1BC;
    v3 = v0[5];

    return EnrollmentAssetServer.storeEnrollmentAssets(assets:)(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2489EDEB8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2489EDED8, 0, 0);
}

uint64_t sub_2489EDED8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_2489EDFD0;

    return EnrollmentAssetServer.localDataExists()();
  }

  else
  {
    **(v0 + 40) = 2;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_2489EDFD0(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_2489F4ECC;
  }

  else
  {

    *(v4 + 80) = a1 & 1;
    v5 = sub_2489EE104;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_2489EE128()
{
  v1 = *(v0 + 16);
  if (qword_28150F5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105C0);
  sub_2489BDB14(0xD00000000000005CLL, 0x8000000248A1A9F0, 0x6164696C61766E69, 0xEC00000029286574);
  sub_248A11DE0();
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener;
  [*(v3 + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener) setDelegate_];
  v5 = *(v3 + v4);

  return [v5 invalidate];
}

uint64_t sub_2489EE214(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_248A12490();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_248A123B0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489EE330, 0, 0);
}

uint64_t sub_2489EE330()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = sub_248A122D0();
  *(v0 + 80) = v4;
  __swift_project_value_buffer(v4, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18CD0);
  v5 = *MEMORY[0x277D04E88];
  v6 = *(v2 + 104);
  *(v0 + 88) = v6;
  *(v0 + 96) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v1, v5, v3);
  *(v0 + 104) = sub_2489F4D94(&unk_27EEB6198, MEMORY[0x277D04EA0], MEMORY[0x277D04EA8]);
  sub_248A12C50();
  sub_248A12C50();
  v7 = *(v2 + 8);
  *(v0 + 112) = v7;
  *(v0 + 120) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if (*(v0 + 208) == *(v0 + 212) || (v8 = *(v0 + 72), v9 = *(v0 + 56), v6(v8, *MEMORY[0x277D04E90], v9), sub_248A12C50(), sub_248A12C50(), v7(v8, v9), *(v0 + 216) == *(v0 + 220)))
  {
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    *v10 = v0;
    v10[1] = sub_2489EE6C8;

    return sub_2489F0CCC();
  }

  else
  {
    v12 = *(v0 + 24);
    *(v0 + 136) = os_transaction_create();
    v13 = v12[6];
    v14 = v12[7];
    __swift_project_boxed_opaque_existential_1(v12 + 3, v13);
    v17 = (*(v14 + 32) + **(v14 + 32));
    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_2489EEA5C;
    v16 = *(v0 + 16);

    return v17(v16, v13, v14);
  }
}

uint64_t sub_2489EE6C8(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 232) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2489EE82C, 0, 0);
  }
}

uint64_t sub_2489EE82C()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 24);
    *(v0 + 136) = os_transaction_create();
    v2 = v1[6];
    v3 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
    v10 = (*(v3 + 32) + **(v3 + 32));
    v4 = swift_task_alloc();
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_2489EEA5C;
    v5 = *(v0 + 16);

    return v10(v5, v2, v3);
  }

  else
  {
    v7 = sub_248A12350();
    sub_2489F4D94(&qword_27EEB51C0, MEMORY[0x277D04E68], MEMORY[0x277D04E70]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D04E58], v7);
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2489EEA5C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_2489EF398;
  }

  else
  {
    v2 = sub_2489EEB70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489EEB70()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v0 + 88))(v2, *MEMORY[0x277D04E98], v3);
  sub_248A12C50();
  sub_248A12C50();
  v1(v2, v3);
  if (*(v0 + 224) == *(v0 + 228))
  {
    sub_248A12060();
    swift_unknownObjectRelease();

    v4 = *(v0 + 8);
LABEL_5:

    return v4();
  }

  v5 = *(v0 + 152);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = v8[6];
  v11 = v8[7];
  __swift_project_boxed_opaque_existential_1(v8 + 3, v10);
  (*(v7 + 104))(v6, *MEMORY[0x277D04F18], v9);
  (*(v11 + 80))(v6, v10, v11);
  if (v5)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    swift_unknownObjectRelease();

    v4 = *(v0 + 8);
    goto LABEL_5;
  }

  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_2489EEDC4;

  return EnrollmentAssetServer.setUniqueDeleteEventKVS()();
}

uint64_t sub_2489EEDC4()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489EF410, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 176) = v3;
    *v3 = v2;
    v3[1] = sub_2489EEF38;

    return EnrollmentAssetServer.setCloudDataExistsKVS(value:)(0);
  }
}

uint64_t sub_2489EEF38()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2489EF488;
  }

  else
  {
    v2 = sub_2489EF04C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489EF04C()
{
  sub_248A12060();
  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  __swift_project_value_buffer(v0[10], qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18B10);
  v2 = v1[27];
  v3 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v2);
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_2489EF194;

  return MEMORY[0x28215AB98](0, v2, v3);
}

uint64_t sub_2489EF194()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2489EF320;
  }

  else
  {
    v2 = sub_2489EF2A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489EF2A8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489EF320()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489EF398()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489EF410()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489EF488()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489EF500(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_248A12400();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_248A12300();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_248A11AC0();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v7 = sub_248A12480();
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489EF72C, 0, 0);
}

uint64_t sub_2489EF72C()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[8];
  v3 = sub_248A122D0();
  v0[28] = __swift_project_value_buffer(v3, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001DLL, 0x8000000248A1ACF0);
  v4 = v2[6];
  v5 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v4);
  sub_248A12310();
  v6 = (*(v5 + 8))(v1, v4, v5);
  v0[29] = v6;
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[25];
  v10 = *(v9 + 8);
  v0[30] = v10;
  v0[31] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  if (*(v6 + 16))
  {
    v11 = v0[8];
    v12 = v11[11];
    v13 = v11[12];
    __swift_project_boxed_opaque_existential_1(v11 + 8, v12);
    (*(v13 + 32))(v12, v13);
    sub_248A120F0();
    v14 = sub_248A120E0();
    LOBYTE(v12) = sub_248A120C0();

    if (v12)
    {
      v15 = v11[11];
      v16 = v11[12];
      __swift_project_boxed_opaque_existential_1(v11 + 8, v15);
      (*(v16 + 24))(v15, v16);
    }

    v35 = v0[15];
    v17 = v0[13];
    v18 = v0[14];
    v37 = v2[7];
    v38 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v38);
    v20 = v11[11];
    v19 = v11[12];
    __swift_project_boxed_opaque_existential_1(v11 + 8, v20);
    v21 = *(v19 + 8);

    v21(v20, v19);
    sub_248A122E0();
    (*(v18 + 104))(v35, *MEMORY[0x277D04D98], v17);
    sub_2489F4D94(&qword_27EEB61A8, MEMORY[0x277D04DA0], MEMORY[0x277D04DA8]);
    sub_248A12C50();
    sub_248A12C50();
    if (v0[2] == v0[4] && v0[3] == v0[5])
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_248A13340();
    }

    v30 = v0[16];
    v31 = v0[13];
    v32 = *(v0[14] + 8);
    v32(v0[15], v31);
    v32(v30, v31);

    v36 = (*(v37 + 16) + **(v37 + 16));
    v33 = swift_task_alloc();
    v0[32] = v33;
    *v33 = v0;
    v33[1] = sub_2489EFD64;
    v34 = v0[23];

    return v36(v6, v34, v22 & 1, v38, v37);
  }

  else
  {
    v23 = sub_248A122B0();
    v24 = sub_248A12E60();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_248975000, v23, v24, "No assets found for export", v25, 2u);
      MEMORY[0x24C1E0A80](v25, -1, -1);
    }

    v26 = sub_248A12350();
    sub_2489F4D94(&qword_27EEB51C0, MEMORY[0x277D04E68], MEMORY[0x277D04E70]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D04E60], v26);
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_2489EFD64()
{
  v2 = *v1;
  v2[33] = v0;

  v3 = v2[23];
  v4 = v2[18];
  v5 = v2[17];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);

    v9 = sub_2489F08AC;
  }

  else
  {
    v2[34] = v7;
    v2[35] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);

    v9 = sub_2489EFF10;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2489EFF10()
{
  v1 = *(v0 + 64);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v6 = (*(v3 + 64) + **(v3 + 64));
  v4 = swift_task_alloc();
  *(v0 + 288) = v4;
  *v4 = v0;
  v4[1] = sub_2489F0038;

  return v6(v2, v3);
}

uint64_t sub_2489F0038(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_2489F09A4;
  }

  else
  {
    v4 = sub_2489F014C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2489F014C(uint64_t a1)
{
  v71 = v1;
  v2 = v1[37];
  if (*(v2 + 16))
  {
    sub_248A12410();
    v3 = *(v2 + 16);
    v4 = v1[37];
    if (v3)
    {
      v70[0] = MEMORY[0x277D84F90];
      sub_2489CE5CC(0, v3, 0);
      v5 = v70[0];
      v6 = *(v70[0] + 16);
      v7 = 16 * v6;
      v8 = (v4 + 40);
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        v70[0] = v5;
        v11 = v6 + 1;
        v12 = *(v5 + 24);

        if (v6 >= v12 >> 1)
        {
          sub_2489CE5CC((v12 > 1), v11, 1);
          v5 = v70[0];
        }

        *(v5 + 16) = v11;
        v13 = v5 + v7;
        *(v13 + 32) = v10;
        *(v13 + 40) = v9;
        v7 += 16;
        v8 += 4;
        ++v6;
        --v3;
      }

      while (v3);
    }

    else
    {

      v5 = MEMORY[0x277D84F90];
    }

    v14 = v1[30];
    v15 = v1[29];
    v16 = v1[26];
    v17 = v1[24];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70[0] = v15;
    sub_2489B02E8(v5, v16, isUniquelyReferenced_nonNull_native);
    v14(v16, v17);
  }

  else
  {
  }

  v19 = sub_248A122B0();
  v20 = sub_248A12E80();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v70[0] = v22;
    *v21 = 136446210;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5380, &qword_248A14CC0);
    sub_2489F4D94(&unk_27EEB61C0, MEMORY[0x277D04ED0], MEMORY[0x277D04ED8]);
    v23 = sub_248A12AB0();
    v25 = v24;

    v26 = sub_24897BC00(v23, v25, v70);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_248975000, v19, v20, "Asset map: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C1E0A80](v22, -1, -1);
    MEMORY[0x24C1E0A80](v21, -1, -1);
  }

  v69 = v1[38];
  v28 = v1[21];
  v27 = v1[22];
  v29 = v1[8];
  v30 = v29[16];
  v31 = v29[17];
  __swift_project_boxed_opaque_existential_1(v29 + 13, v30);
  v33 = v29[11];
  v32 = v29[12];
  __swift_project_boxed_opaque_existential_1(v29 + 8, v33);
  (*(v32 + 8))(v33, v32);
  v34 = v29[11];
  v35 = v29[12];
  __swift_project_boxed_opaque_existential_1(v29 + 8, v34);
  (*(v35 + 16))(v34, v35);
  (*(v31 + 8))(v27, v28, v30, v31);
  v36 = v1[34];
  if (v69)
  {
    v37 = v1[22];
    v38 = v1[17];
    v36(v1[21], v38);
    v36(v37, v38);

    v39 = v1[1];
  }

  else
  {
    v40 = v1[22];
    v63 = v1[19];
    v41 = v1[17];
    v64 = v41;
    v65 = v1[12];
    v68 = v1[11];
    v66 = v1[10];
    v67 = v1[9];
    v42 = v1[8];
    v36(v1[21], v41);
    v36(v40, v41);
    v43 = v42[11];
    v44 = v42[12];
    __swift_project_boxed_opaque_existential_1(v42 + 8, v43);
    v45 = *(v44 + 16);

    v45(v43, v44);
    v46 = v42[11];
    v47 = v42[12];
    __swift_project_boxed_opaque_existential_1(v42 + 8, v46);
    v49 = v42[11];
    v48 = v42[12];
    __swift_project_boxed_opaque_existential_1(v42 + 8, v49);
    (*(v48 + 16))(v49, v48);
    (*(v47 + 72))(v63, v46, v47);
    v36(v63, v64);
    sub_248A123D0();
    (*(v66 + 16))(v68, v65, v67);
    v50 = sub_248A122B0();
    v51 = sub_248A12E80();
    v52 = os_log_type_enabled(v50, v51);
    v54 = v1[10];
    v53 = v1[11];
    v55 = v1[9];
    if (v52)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v70[0] = v57;
      *v56 = 136446210;
      sub_2489F4D94(&unk_27EEB61B0, MEMORY[0x277D04EB8], MEMORY[0x277D04EC8]);
      v58 = sub_248A132F0();
      v60 = v59;
      (*(v54 + 8))(v53, v55);
      v61 = sub_24897BC00(v58, v60, v70);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_248975000, v50, v51, "Returning: %{public}s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x24C1E0A80](v57, -1, -1);
      MEMORY[0x24C1E0A80](v56, -1, -1);
    }

    else
    {

      (*(v54 + 8))(v53, v55);
    }

    (*(v1[10] + 32))(v1[6], v1[12], v1[9]);

    v39 = v1[1];
  }

  return v39();
}

uint64_t sub_2489F08AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489F09A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489F0A9C()
{
  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000014, 0x8000000248A1AD10);
  __swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
  return sub_248A121E0() & 1;
}

uint64_t sub_2489F0B68(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_2489F0B8C, 0, 0);
}

uint64_t sub_2489F0B8C()
{
  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18B10);
  v3 = v1[27];
  v4 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v3);
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2489D3E30;
  v6 = *(v0 + 32);

  return MEMORY[0x28215AB98](v6, v3, v4);
}

uint64_t sub_2489F0CEC()
{
  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_248A122D0();
  v0[3] = __swift_project_value_buffer(v2, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000014, 0x8000000248A1AD30);
  __swift_project_boxed_opaque_existential_1((v1 + 192), *(v1 + 216));
  if (sub_248A121E0())
  {
    v3 = v0[2];
    v4 = v3[6];
    v5 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v4);
    v12 = (*(v5 + 40) + **(v5 + 40));
    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_2489F0F7C;

    return v12(v4, v5);
  }

  else
  {
    v8 = sub_248A122B0();
    v9 = sub_248A12E80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_248975000, v8, v9, "Cloud sync is disabled. Cannot delete cloud data.", v10, 2u);
      MEMORY[0x24C1E0A80](v10, -1, -1);
    }

    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_2489F0F7C(char a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_2489F12F0;
  }

  else
  {
    v4 = sub_2489F1094;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2489F1094(uint64_t a1)
{
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 64);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_248975000, v2, v3, "Cloud data exists: %{BOOL,public}d. Setting KVS.", v5, 8u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v1 + 48) = v6;
  *v6 = v1;
  v6[1] = sub_2489F11B8;
  v7 = *(v1 + 64);

  return EnrollmentAssetServer.setCloudDataExistsKVS(value:)(v7);
}

uint64_t sub_2489F11B8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489F1444, 0, 0);
  }

  else
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_2489F12F0()
{
  v1 = *(v0 + 40);
  v2 = v1;
  v3 = sub_248A122B0();
  v4 = sub_248A12E60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_248975000, v3, v4, "Could not check if cloud zone exists. Error: %{public}@", v5, 0xCu);
    sub_24897CA88(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_2489F1444()
{
  v1 = *(v0 + 56);
  v2 = v1;
  v3 = sub_248A122B0();
  v4 = sub_248A12E60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_248975000, v3, v4, "Could not check if cloud zone exists. Error: %{public}@", v5, 0xCu);
    sub_24897CA88(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9(0);
}

uint64_t sub_2489F15B8()
{
  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_248A122D0();
  v0[3] = __swift_project_value_buffer(v2, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD000000000000023, 0x8000000248A1AD50);
  __swift_project_boxed_opaque_existential_1((v1 + 192), *(v1 + 216));
  v3 = sub_248A121F0();
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_2489F1708;

  return EnrollmentAssetServer.setAssociatedAVPKVS(value:)(v3 & 1);
}

uint64_t sub_2489F1708()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_2489F19AC;
  }

  else
  {
    v2 = sub_2489F181C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489F181C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v2[6];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
  (*(v4 + 56))(v3, v4);
  if (v1)
  {
    v5 = v1;
    v6 = sub_248A122B0();
    v7 = sub_248A12E60();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_248975000, v6, v7, "Error while setting associated AVP KVS or waking MA: %{public}@", v8, 0xCu);
      sub_24897CA88(v9);
      MEMORY[0x24C1E0A80](v9, -1, -1);
      MEMORY[0x24C1E0A80](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_2489F19AC()
{
  v1 = *(v0 + 40);
  v2 = v1;
  v3 = sub_248A122B0();
  v4 = sub_248A12E60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_248975000, v3, v4, "Error while setting associated AVP KVS or waking MA: %{public}@", v5, 0xCu);
    sub_24897CA88(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2489F1AF8(uint64_t a1)
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_2815105A8);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001CLL, 0x8000000248A18C50);
  v4 = v1[6];
  v5 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v4);
  return (*(v5 + 80))(a1, v4, v5);
}

uint64_t EnrollmentAssetServer.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t EnrollmentAssetServer.__deallocating_deinit()
{
  EnrollmentAssetServer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2489F1C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_2489F1D28;

  return EnrollmentAssetServer.setCloudDataExistsKVS(value:)(1);
}

uint64_t sub_2489F1D28()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_2489F2078;
  }

  else
  {
    v2 = sub_2489F1E3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489F1E3C()
{
  v1 = *(v0 + 16);
  sub_248A12060();
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_2489F1F78;

  return v6(v2, v3);
}

uint64_t sub_2489F1F78(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2489F2078()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_248975000, v4, v5, "Error setting cloud data exists: %@", v8, 0xCu);
    sub_24897CA88(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2489F220C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489F22A4;

  return EnrollmentAssetServer.setCloudDataExistsKVS(value:)(1);
}

uint64_t sub_2489F22A4()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489F23D8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2489F23D8()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_248975000, v4, v5, "Error setting cloud data exists: %@", v8, 0xCu);
    sub_24897CA88(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2489F256C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_2815105A8);
  v9 = sub_248A122B0();
  v10 = sub_248A12E80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a2;
    _os_log_impl(&dword_248975000, v9, v10, "Received notificaiton of account change type: %u", v11, 8u);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  v12 = sub_248A12D40();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;

  sub_2489E5FD4(0, 0, v7, &unk_248A17D18, v13);
}

uint64_t sub_2489F2764()
{
  *(v0 + 24) = os_transaction_create();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2489F2804;

  return sub_2489F1598();
}

uint64_t sub_2489F2804()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_2489F2944;

  return sub_2489F0CCC();
}

uint64_t sub_2489F2944()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2489F2ABC;
  }

  else
  {
    v2 = sub_2489F2A58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489F2A58()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489F2ABC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

void sub_2489F2B20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_2489F2B98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return sub_2489E9A8C();
}

void *_s13DeviceSharing21EnrollmentAssetServerC026darwinNotificationXPCEventE0AcA06DarwinghE8Protocol_p_tcfC_0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v46 - v3;
  v51 = sub_248A12230();
  v56 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v50 = [v5 sharedInstance];
  v6 = type metadata accessor for EnrollmentAssetTelemetry(0);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC13DeviceSharing24EnrollmentAssetTelemetry_requestTime;
  v9 = sub_248A11B70();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  sub_248A12370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_248A14B30;
  *(v10 + 32) = sub_248A12380();
  *(v10 + 40) = v11;
  v12 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v13 = sub_248A12B30();

  v14 = [v12 initWithMachServiceName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB6188, &qword_248A17B00);
  v15 = swift_allocObject();
  sub_248A11DF0();
  v16 = type metadata accessor for ServerListener();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_xpcListener] = v14;
  v71.receiver = v17;
  v71.super_class = v16;
  v18 = v14;
  v15[3] = objc_msgSendSuper2(&v71, sel_init);
  v15[4] = v10;
  sub_248A122A0();
  v19 = sub_248A12290();

  v15[2] = v19;
  *(v15[3] + OBJC_IVAR____TtC13DeviceSharingP33_49212DB15AC1BF3DB4C737D3A7547CBB14ServerListener_delegate + 8) = &off_285B62840;
  swift_unknownObjectWeakAssign();
  v20 = [v5 sharedInstance];
  type metadata accessor for DarwinNotifyCenter();
  v21 = swift_allocObject();
  type metadata accessor for LockoutObserverManager(0);
  swift_allocObject();
  v22 = v20;
  v49 = v22;

  v47 = sub_248A0D1F4(v21);

  v46 = [objc_opt_self() defaultManager];
  v66 = &type metadata for ManagedAssetsBYOE;
  v67 = &off_285B60AA0;
  v23 = v50;
  v65[0] = v50;
  v63 = v6;
  v64 = &protocol witness table for EnrollmentAssetTelemetry;
  v62[0] = v7;
  sub_248997228(v65, &v69);
  sub_248997228(v62, &v70);
  v24 = objc_allocWithZone(MEMORY[0x277D00810]);
  v25 = v7;
  v48 = v7;

  v50 = v23;
  v26 = [v24 init];
  __swift_destroy_boxed_opaque_existential_0(v62);
  __swift_destroy_boxed_opaque_existential_0(v65);
  v68 = v26;
  v27 = v55;
  sub_248A12220();
  v28 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v29 = sub_248A12B30();
  v30 = [v28 initWithStoreIdentifier:v29 type:1];

  sub_248A120F0();
  v31 = v30;
  v32 = sub_248A120E0();
  v67 = &off_285B60AA0;
  v66 = &type metadata for ManagedAssetsBYOE;
  v65[0] = v22;
  v63 = v6;
  v64 = &protocol witness table for EnrollmentAssetTelemetry;
  v62[0] = v25;
  v33 = sub_2489F4D94(&qword_27EEB61D0, type metadata accessor for LockoutObserverManager, &protocol conformance descriptor for LockoutObserverManager);
  v61[3] = &type metadata for FileManagerBYOE;
  v61[4] = &protocol witness table for FileManagerBYOE;
  v34 = v46;
  v61[0] = v46;
  v60[3] = &type metadata for ArchiveStreamCompression;
  v60[4] = &protocol witness table for ArchiveStreamCompression;
  v59[3] = &type metadata for BYOEAssetValidation;
  v59[4] = &protocol witness table for BYOEAssetValidation;
  v59[0] = swift_allocObject();
  sub_2489E80C8(&v68, v59[0] + 16);
  v35 = v51;
  v58[3] = v51;
  v58[4] = MEMORY[0x277D05158];
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v58);
  (*(v56 + 16))(boxed_opaque_existential_1Tm, v27, v35);
  v57[3] = sub_2489F4DDC();
  v57[4] = &protocol witness table for NSUbiquitousKeyValueStore;
  v57[0] = v31;
  type metadata accessor for EnrollmentAssetServer();
  v37 = swift_allocObject();
  v37[2] = v15;
  sub_248997228(v65, (v37 + 3));
  sub_248997228(v62, (v37 + 34));
  v37[39] = v47;
  v37[40] = v33;
  sub_248997228(v61, (v37 + 8));
  sub_248997228(v60, (v37 + 13));
  v37[18] = 0;
  sub_248997228(v59, (v37 + 19));
  sub_248997228(v58, (v37 + 24));
  sub_248997228(v57, (v37 + 29));
  v37[41] = v32;
  v38 = v34;

  v39 = v32;
  EnrollmentAssetServer.registerForKVSNotification()();
  EnrollmentAssetServer.registerForAccountChangeNotification@Sendable ()();
  v40 = sub_248A12D40();
  v41 = v52;
  (*(*(v40 - 8) + 56))(v52, 1, 1, v40);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v44 = v53;
  v43 = v54;
  v42[4] = v37;
  v42[5] = v44;
  v42[6] = v43;

  swift_unknownObjectRetain();
  sub_2489AC334(0, 0, v41, &unk_248A17D78, v42);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(v58);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v60);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v62);
  __swift_destroy_boxed_opaque_existential_0(v65);

  (*(v56 + 8))(v55, v35);
  sub_2489F4E70(&v68);
  return v37;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_2489F3418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v58 = a8;
  v67 = a7;
  v55 = a5;
  v56 = a6;
  v64 = a1;
  v65 = a4;
  v52 = a3;
  v70 = a10;
  v69 = a9;
  v68 = a13;
  v62 = a12;
  v60 = a11;
  v61 = a29;
  v53 = a30;
  v59 = a21;
  v57 = a25;
  v51 = a26;
  v54 = a23;
  v63 = a28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v31 - 8);
  v66 = &v51 - v32;
  v77[3] = a19;
  v77[4] = a27;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v77);
  (*(*(a19 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a19);
  v76[3] = a16;
  v76[4] = a24;
  v34 = __swift_allocate_boxed_opaque_existential_1Tm(v76);
  (*(*(a16 - 8) + 32))(v34, v52, a16);
  v75[3] = a18;
  v75[4] = v51;
  v35 = __swift_allocate_boxed_opaque_existential_1Tm(v75);
  (*(*(a18 - 8) + 32))(v35, v55, a18);
  v74[3] = a22;
  v74[4] = v53;
  v36 = __swift_allocate_boxed_opaque_existential_1Tm(v74);
  (*(*(a22 - 8) + 32))(v36, v56, a22);
  v73[3] = a15;
  v73[4] = v54;
  v37 = __swift_allocate_boxed_opaque_existential_1Tm(v73);
  (*(*(a15 - 8) + 32))(v37, v58, a15);
  v72[3] = a17;
  v72[4] = v57;
  v38 = __swift_allocate_boxed_opaque_existential_1Tm(v72);
  (*(*(a17 - 8) + 32))(v38, v60, a17);
  v39 = v59;
  v71[3] = v59;
  v71[4] = v61;
  v40 = __swift_allocate_boxed_opaque_existential_1Tm(v71);
  (*(*(v39 - 8) + 32))(v40, v62, v39);
  type metadata accessor for EnrollmentAssetServer();
  v41 = swift_allocObject();
  v41[2] = v64;
  sub_248997228(v77, (v41 + 3));
  sub_248997228(v76, (v41 + 34));
  v42 = v63;
  v41[39] = v65;
  v41[40] = v42;
  sub_248997228(v75, (v41 + 8));
  sub_248997228(v74, (v41 + 13));
  v41[18] = v67;
  sub_248997228(v73, (v41 + 19));
  sub_248997228(v72, (v41 + 24));
  sub_248997228(v71, (v41 + 29));
  v43 = v68;
  v41[41] = v68;
  swift_unknownObjectRetain();
  v44 = v43;

  EnrollmentAssetServer.registerForKVSNotification()();
  EnrollmentAssetServer.registerForAccountChangeNotification@Sendable ()();
  v45 = sub_248A12D40();
  v46 = v66;
  (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v49 = v69;
  v48 = v70;
  v47[4] = v41;
  v47[5] = v49;
  v47[6] = v48;

  swift_unknownObjectRetain();
  sub_2489AC334(0, 0, v46, &unk_248A17D68, v47);

  __swift_destroy_boxed_opaque_existential_0(v71);
  __swift_destroy_boxed_opaque_existential_0(v72);
  __swift_destroy_boxed_opaque_existential_0(v73);
  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v76);
  __swift_destroy_boxed_opaque_existential_0(v77);
  return v41;
}

uint64_t sub_2489F388C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2489839A0;

  return sub_2489E9180(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2489F3974(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2489839A0;

  return sub_2489EC504(a1, a2, v2);
}

unint64_t sub_2489F3A20()
{
  result = qword_28150F620[0];
  if (!qword_28150F620[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB6188, &qword_248A17B00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28150F620);
  }

  return result;
}

uint64_t sub_2489F3A84(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489EC87C(a1, v1);
}

uint64_t sub_2489F3B20(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489EC9E8(a1, v1);
}

uint64_t sub_2489F3BB8(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ECD8C(a1, v1);
}

uint64_t sub_2489F3C50(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ECFE4(a1, v1);
}

uint64_t sub_2489F3CEC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ED0AC(a1, v1);
}

uint64_t sub_2489F3D84(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ED2F8(a1, v1);
}

uint64_t sub_2489F3E20()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return sub_2489ED540(v0);
}

uint64_t sub_2489F3EB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ED75C(a1, v1);
}

uint64_t sub_2489F3F4C(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ED824(a1, v1);
}

uint64_t sub_2489F3FE4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489ED940(a1, v1);
}

uint64_t sub_2489F4080(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489EDC18(a1, v1);
}

uint64_t sub_2489F4118(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489EDDA4(a1, v1);
}

uint64_t sub_2489F41B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return sub_2489EDEB8(a1, v1);
}

uint64_t dispatch thunk of EnrollmentAssetServer.activate()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return v4();
}

uint64_t dispatch thunk of EnrollmentAssetServer.deleteEnrollmentData(from:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return v6(a1);
}

uint64_t dispatch thunk of EnrollmentAssetServer.getEnrollmentAssets(request:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 200) + **(*v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_248978D74;

  return v8(a1, a2);
}

uint64_t dispatch thunk of EnrollmentAssetServer.setCloudSyncState(enabled:)(uint64_t a1)
{
  v6 = (*(*v1 + 216) + **(*v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2489839A0;

  return v6(a1);
}

uint64_t dispatch thunk of EnrollmentAssetServer.canDeleteCloudData()()
{
  v4 = (*(*v0 + 224) + **(*v0 + 224));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24898314C;

  return v4();
}

uint64_t dispatch thunk of EnrollmentAssetServer.refreshAssociatedAVPAccountStatus()()
{
  v4 = (*(*v0 + 232) + **(*v0 + 232));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2489839A0;

  return v4();
}

uint64_t sub_2489F49D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_2489F2744(a1, v4, v5, v6);
}

uint64_t sub_2489F4AA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return sub_2489E9710(a1, v4);
}

uint64_t sub_2489F4B64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2489839A0;

  return sub_2489F220C();
}

uint64_t sub_2489F4C18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2489839A0;

  return sub_2489F1C8C(a1, v4, v5, v6);
}

uint64_t sub_2489F4CCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248978D74;

  return sub_2489E9180(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2489F4D94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2489F4DDC()
{
  result = qword_27EEB61D8;
  if (!qword_27EEB61D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB61D8);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2489F4ED0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_248A128A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5BF8, &qword_248A16950);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5608, &qword_248A15110);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v31 - v19;
  MEMORY[0x28223BE20](v18);
  (*(v22 + 16))(&v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v23 = swift_dynamicCast();
  v24 = *(v5 + 56);
  v24(v20, v23 ^ 1u, 1, v4);
  *v17 = -65569;
  (*(v5 + 104))(v17, *MEMORY[0x277CD8FA0], v4);
  v24(v17, 0, 1, v4);
  v25 = *(v8 + 56);
  sub_2489F535C(v20, v10);
  sub_2489F535C(v17, &v10[v25]);
  v26 = *(v5 + 48);
  if (v26(v10, 1, v4) != 1)
  {
    sub_2489F535C(v10, v14);
    if (v26(&v10[v25], 1, v4) != 1)
    {
      v28 = v32;
      (*(v5 + 32))(v32, &v10[v25], v4);
      sub_2489F53CC();
      v27 = sub_248A12B00();
      v29 = *(v5 + 8);
      v29(v28, v4);
      sub_248983734(v17, &qword_27EEB5608, &qword_248A15110);
      v29(v14, v4);
      sub_248983734(v10, &qword_27EEB5608, &qword_248A15110);
      goto LABEL_8;
    }

    sub_248983734(v17, &qword_27EEB5608, &qword_248A15110);
    (*(v5 + 8))(v14, v4);
    goto LABEL_6;
  }

  sub_248983734(v17, &qword_27EEB5608, &qword_248A15110);
  if (v26(&v10[v25], 1, v4) != 1)
  {
LABEL_6:
    sub_248983734(v10, &qword_27EEB5BF8, &qword_248A16950);
    v27 = 0;
    goto LABEL_8;
  }

  sub_248983734(v10, &qword_27EEB5608, &qword_248A15110);
  v27 = 1;
LABEL_8:
  sub_248983734(v20, &qword_27EEB5608, &qword_248A15110);
  return v27 & 1;
}

uint64_t sub_2489F535C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5608, &qword_248A15110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2489F53CC()
{
  result = qword_27EEB5C00;
  if (!qword_27EEB5C00)
  {
    sub_248A128A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5C00);
  }

  return result;
}

uint64_t static ArchiveStreamCompressionConfiguration.currentArchiveCompressionAlgorithm.getter@<X0>(uint64_t a1@<X8>)
{
  sub_248A120F0();
  v2 = sub_248A120E0();
  v3 = sub_248A12090();
  v5 = v4;

  sub_2489F5524(v3, v5, a1);
}

uint64_t static ArchiveStreamCompressionConfiguration.currentArchiveCompressionThreadCount.getter()
{
  sub_248A120F0();
  v0 = sub_248A120E0();
  v1 = sub_248A120A0();

  return v1;
}

uint64_t static ArchiveStreamCompressionConfiguration.currentArchiveCompressionNeedsToDeleteFiles.getter()
{
  sub_248A120F0();
  v0 = sub_248A120E0();
  v1 = sub_248A120C0();

  return v1 & 1;
}

void sub_2489F5524(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_248A11C90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x6573667A6CLL && a2 == 0xE500000000000000 || (sub_248A13340() & 1) != 0)
  {
    sub_248A11C70();
  }

  else if (a1 == 3439212 && a2 == 0xE300000000000000 || (sub_248A13340() & 1) != 0)
  {
    sub_248A11C30();
  }

  else if (a1 == 1634564716 && a2 == 0xE400000000000000 || (sub_248A13340() & 1) != 0)
  {
    sub_248A11C40();
  }

  else if (a1 == 0x70616D7469627A6CLL && a2 == 0xE800000000000000 || (sub_248A13340() & 1) != 0)
  {
    sub_248A11C80();
  }

  else if (a1 == 1651076218 && a2 == 0xE400000000000000 || (sub_248A13340() & 1) != 0)
  {
    sub_248A11C60();
  }

  else
  {
    sub_248A11C50();
  }

  if (qword_28150F5D0 != -1)
  {
    swift_once();
  }

  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_281510578);
  (*(v7 + 16))(v9, a3, v6);

  v11 = sub_248A122B0();
  v12 = sub_248A12E80();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_24897BC00(a1, a2, &v20);
    *(v13 + 12) = 2082;
    sub_2489F596C();
    v15 = sub_248A132F0();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = sub_24897BC00(v15, v17, &v20);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_248975000, v11, v12, "ArchiveCompression value in defaults:%{public}s, current algorithm will be %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_2489F596C()
{
  result = qword_27EEB61E0;
  if (!qword_27EEB61E0)
  {
    sub_248A11C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB61E0);
  }

  return result;
}

uint64_t sub_2489F59C4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  v2[6] = sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v4 = sub_248A12CD0();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_2489F5A78, v4, v3);
}

uint64_t sub_2489F5A78()
{
  v33 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9DC8);

  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 40);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136446466;
    v8 = sub_2489FA2C8();
    v10 = v9;

    v11 = sub_24897BC00(v8, v10, &v32);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v0 + 16) = *(v5 + qword_27EEB5440);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5460, &qword_248A14E48);
    v12 = sub_248A12B80();
    v14 = sub_24897BC00(v12, v13, &v32);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Activate peer connection: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v6, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 40);
  v16 = qword_27EEB5448;
  *(v0 + 72) = qword_27EEB5448;
  if (*(v15 + v16))
  {

    v17 = sub_248A122B0();
    v18 = sub_248A12E80();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136446210;
      v21 = sub_2489FA2C8();
      v23 = v22;

      v24 = sub_24897BC00(v21, v23, &v32);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_248975000, v17, v18, "[%{public}s] Peer connection was already active", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1E0A80](v20, -1, -1);
      MEMORY[0x24C1E0A80](v19, -1, -1);
    }

    else
    {
    }

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v25 = *(v15 + qword_27EEB5440 + 8);
    ObjectType = swift_getObjectType();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = *(v25 + 24);

    v28(sub_248A03ED8, v27, ObjectType, v25);

    v29 = swift_task_alloc();
    *(v0 + 80) = v29;
    *v29 = v0;
    v29[1] = sub_2489F5EF0;

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_2489F5EF0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_2489F60AC;
  }

  else
  {
    v5 = sub_2489F602C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2489F602C(uint64_t a1, uint64_t a2)
{
  v3 = v2[9];
  v4 = v2[5];
  v5 = *(v4 + v3);
  *(v4 + v3) = v2[4];
  swift_unknownObjectRetain();
  sub_24898C42C(v5);
  sub_2489F635C(v4);
  v6 = v2[1];

  return v6();
}

uint64_t sub_2489F60AC()
{
  sub_2489F635C(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489F6110(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    MEMORY[0x28223BE20](result);
    v7[2] = a1;
    sub_248A12EF0();
    if (swift_task_isCurrentExecutor())
    {
      v5 = swift_allocObject();
      *(v5 + 16) = sub_248A03FF4;
      *(v5 + 24) = v7;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_2489D1BD4;
      *(v6 + 24) = v5;

      v8[0] = isEscapingClosureAtFileLocation;
      sub_2489D1BF0(v8);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v7[6] = isEscapingClosureAtFileLocation;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489F635C(uint64_t result)
{
  v1 = qword_27EEB5438;
  if (*(result + qword_27EEB5438))
  {
    v2 = result;
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v3 = sub_248A122D0();
    __swift_project_value_buffer(v3, qword_27EEB9DC8);
    sub_2489BDB14(0xD000000000000062, 0x8000000248A18F40, 0x656D6954706F7473, 0xED0000292874756FLL);
    if (*(v2 + v1))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
      sub_248A12D70();
    }

    *(v2 + v1) = 0;
  }

  return result;
}

uint64_t sub_2489F6494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-1] - v5;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_27EEB9DC8);

  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136446210;

    v12 = sub_2489FA2C8();
    v14 = v13;

    v15 = sub_24897BC00(v12, v14, v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] Starting connection and waiting until ready", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  else
  {
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v6, a1, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v18 = qword_27EEB5418;
  swift_beginAccess();
  sub_24898D194(v6, a2 + v18, &qword_27EEB5450, qword_248A14E30);
  swift_endAccess();
  v19 = *(a2 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  (*(v19 + 40))(*(a2 + 24), ObjectType, v19);
  return sub_2489F9548();
}

uint64_t sub_2489F6784()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  v1[3] = sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v3 = sub_248A12CD0();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_2489F6838, v3, v2);
}

uint64_t sub_2489F6838()
{
  v24 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  __swift_project_value_buffer(v1, qword_27EEB9DC8);

  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136446210;

    v6 = sub_2489FA2C8();
    v8 = v7;

    v9 = sub_24897BC00(v6, v8, &v23);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Invalidating peer connection", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  else
  {
  }

  v10 = v0[2];
  v11 = qword_27EEB5448;
  v0[6] = qword_27EEB5448;
  if (*(v10 + v11) == 1)
  {

    v12 = sub_248A122B0();
    v13 = sub_248A12E80();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446210;

      v16 = sub_2489FA2C8();
      v18 = v17;

      v19 = sub_24897BC00(v16, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_248975000, v12, v13, "[%{public}s] Peer connection already invalided", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1E0A80](v15, -1, -1);
      MEMORY[0x24C1E0A80](v14, -1, -1);
    }

    else
    {
    }

    v21 = v0[1];

    return v21();
  }

  else
  {
    v20 = swift_task_alloc();
    v0[7] = v20;
    *v20 = v0;
    v20[1] = sub_2489F6BDC;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_2489F6BDC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2489F6CFC, v3, v2);
}

uint64_t sub_2489F6CFC()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = *(v2 + v1);
  *(v2 + v1) = 1;
  sub_24898C42C(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2489F6D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5458, &unk_248A180A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-1] - v5;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_27EEB9DC8);

  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136446210;

    v12 = sub_2489FA2C8();
    v14 = v13;

    v15 = sub_24897BC00(v12, v14, v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] Cancelling connection and waiting until done", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  else
  {
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v6, a1, v16);
  (*(v17 + 56))(v6, 0, 1, v16);
  v18 = qword_27EEB5428;
  swift_beginAccess();
  sub_24898D194(v6, a2 + v18, &qword_27EEB5458, &unk_248A180A0);
  swift_endAccess();
  v19 = *(a2 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  return (*(v19 + 48))(ObjectType, v19);
}

uint64_t sub_2489F704C(char *a1)
{
  v95 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x28223BE20](v2);
  v82 = &v80 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5458, &unk_248A180A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v84 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v80 - v7;
  v8 = sub_248A128A0();
  v94 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v87 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v93 = &v80 - v12;
  MEMORY[0x28223BE20](v11);
  v90 = &v80 - v13;
  v14 = sub_248A126F0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v92 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v80 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v80 - v21;
  v23 = sub_248A12A50();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = (&v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = v1;
  v27 = *(v1 + 24);
  *v26 = v27;
  (*(v24 + 104))(v26, *MEMORY[0x277D85200], v23);
  v28 = v27;
  LOBYTE(v27) = sub_248A12A60();
  (*(v24 + 8))(v26, v23);
  if (v27)
  {
    v91 = v8;
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v29 = sub_248A122D0();
  v30 = __swift_project_value_buffer(v29, qword_27EEB9DC8);
  v31 = v22;
  v32 = *(v15 + 16);
  v32(v31, v95, v14);

  v89 = v30;
  v33 = sub_248A122B0();
  v34 = sub_248A12E80();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v88 = v32;
    v36 = v35;
    v81 = swift_slowAlloc();
    v97[0] = v81;
    *v36 = 136446466;
    v37 = sub_2489FA2C8();
    v39 = v38;

    v40 = sub_24897BC00(v37, v39, v97);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    v88(v20, v31, v14);
    v41 = sub_248A12B80();
    v43 = v42;
    v44 = *(v15 + 8);
    v44(v31, v14);
    v45 = sub_24897BC00(v41, v43, v97);

    *(v36 + 14) = v45;
    _os_log_impl(&dword_248975000, v33, v34, "[%{public}s] Connection state did update: %{public}s", v36, 0x16u);
    v46 = v81;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v46, -1, -1);
    v47 = v36;
    v32 = v88;
    MEMORY[0x24C1E0A80](v47, -1, -1);
  }

  else
  {

    v44 = *(v15 + 8);
    v44(v31, v14);
  }

  v49 = v92;
  v48 = v93;
  v32(v92, v95, v14);
  result = (*(v15 + 88))(v49, v14);
  v51 = v94;
  if (result == *MEMORY[0x277CD8DE8])
  {
    (*(v15 + 96))(v49, v14);
    v53 = v90;
    v52 = v91;
    (*(v51 + 32))(v90, v49, v91);
    v54 = *(v51 + 16);
    v54(v48, v53, v52);

    v55 = sub_248A122B0();
    v56 = sub_248A12E60();
    v57 = v48;
    if (os_log_type_enabled(v55, v56))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v97[0] = v95;
      *v58 = 136446466;
      v93 = v54;
      v60 = sub_2489FA2C8();
      v62 = v61;

      v63 = sub_24897BC00(v60, v62, v97);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2114;
      sub_248A04028(&qword_27EEB5620, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
      swift_allocError();
      (v93)(v64, v57, v52);
      v65 = _swift_stdlib_bridgeErrorToNSError();
      v66 = *(v94 + 8);
      v66(v57, v52);
      *(v58 + 14) = v65;
      *v59 = v65;
      _os_log_impl(&dword_248975000, v55, v56, "[%{public}s] Connection waiting with error: %{public}@", v58, 0x16u);
      sub_248983734(v59, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v59, -1, -1);
      v67 = v95;
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x24C1E0A80](v67, -1, -1);
      MEMORY[0x24C1E0A80](v58, -1, -1);

      return (v66)(v90, v52);
    }

    else
    {

      v71 = *(v51 + 8);
      v71(v48, v52);
      return (v71)(v53, v52);
    }
  }

  else
  {
    v68 = v91;
    if (result == *MEMORY[0x277CD8DE0])
    {
      (*(v15 + 96))(v49, v14);
      v69 = v87;
      v70 = (*(v51 + 32))(v87, v49, v68);
      MEMORY[0x28223BE20](v70);
      *(&v80 - 2) = v69;
      sub_2489F7B88();
      return (*(v51 + 8))(v69, v68);
    }

    else if (result != *MEMORY[0x277CD8DD8] && result != *MEMORY[0x277CD8DF8])
    {
      if (result == *MEMORY[0x277CD8DD0])
      {
        sub_2489F8E9C(0);
        sub_2489F7B88();
        return sub_2489F7D98();
      }

      else if (result == *MEMORY[0x277CD8DF0])
      {
        v72 = qword_27EEB5428;
        v73 = v96;
        swift_beginAccess();
        v74 = v83;
        sub_24898D610(v73 + v72, v83, &qword_27EEB5458, &unk_248A180A0);
        v76 = v85;
        v75 = v86;
        if ((*(v85 + 48))(v74, 1, v86))
        {
          sub_248983734(v74, &qword_27EEB5458, &unk_248A180A0);
        }

        else
        {
          v77 = v82;
          (*(v76 + 16))(v82, v74, v75);
          sub_248983734(v74, &qword_27EEB5458, &unk_248A180A0);
          sub_248A12CF0();
          (*(v76 + 8))(v77, v75);
        }

        v78 = v84;
        (*(v76 + 56))(v84, 1, 1, v75);
        v79 = v96;
        swift_beginAccess();
        sub_24898D194(v78, v79 + v72, &qword_27EEB5458, &unk_248A180A0);
        swift_endAccess();
        return sub_2489F7B88();
      }

      else
      {
        return (v44)(v49, v14);
      }
    }
  }

  return result;
}

uint64_t sub_2489F7B88()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DC8);
  swift_retain_n();
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446466;

    v5 = sub_2489FA2C8();
    v7 = v6;

    v8 = sub_24897BC00(v5, v7, &v12);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2050;
    v9 = sub_248A11D90();

    *(v3 + 14) = v9;

    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Notify %{public}ld observers", v3, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v10);
  return sub_248A11DC0();
}

uint64_t sub_2489F7D98()
{
  v1 = v0;
  v2 = sub_248A12A50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 24);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_248A12A60();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_27EEB9DC8);

  v9 = sub_248A122B0();
  v10 = sub_248A12E80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136446210;

    v13 = sub_2489FA2C8();
    v15 = v14;

    v16 = sub_24897BC00(v13, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_248975000, v9, v10, "[%{public}s] Receive next message", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  else
  {
  }

  v17 = *(v1 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = *(v17 + 72);

  v20(sub_248A04070, v19, ObjectType, v17);
}

uint64_t sub_2489F8078(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    MEMORY[0x28223BE20](result);
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = a3;
    v16 = a4 & 1;
    v17 = a5;
    sub_248A12EF0();
    if (swift_task_isCurrentExecutor())
    {
      v13 = swift_allocObject();
      *(v13 + 16) = sub_248A04078;
      *(v13 + 24) = v15;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_2489E2214;
      *(v14 + 24) = v13;

      v19[0] = isEscapingClosureAtFileLocation;
      sub_2489E21C4(v19);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);

      swift_isEscapingClosureAtFileLocation();

      __break(1u);
    }

    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    v18 = isEscapingClosureAtFileLocation;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_248A131F0();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_2489F82EC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v57 = a4;
  v55 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v10 - 8);
  v54 = &v51 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5608, &qword_248A15110);
  v12 = MEMORY[0x28223BE20](v56);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = sub_248A12A50();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v6 + 24);
  *v20 = v21;
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v22 = v21;
  LOBYTE(v21) = sub_248A12A60();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v23 = sub_248A122D0();
  __swift_project_value_buffer(v23, qword_27EEB9DC8);
  sub_24898D610(a5, v16, &qword_27EEB5608, &qword_248A15110);

  v24 = sub_248A122B0();
  v25 = sub_248A12E80();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v52 = a5;
    v27 = v26;
    v28 = swift_slowAlloc();
    v51 = a2;
    v29 = v28;
    v59[0] = v28;
    *v27 = 136446978;
    v30 = sub_2489FA2C8();
    v32 = v31;

    v33 = sub_24897BC00(v30, v32, v59);

    *(v27 + 4) = v33;
    v53 = v6;
    *(v27 + 12) = 2082;
    v58 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5618, &qword_248A15130);
    v34 = sub_248A12B80();
    v36 = sub_24897BC00(v34, v35, v59);

    *(v27 + 14) = v36;
    *(v27 + 22) = 1026;
    *(v27 + 24) = v57 & 1;
    *(v27 + 28) = 2082;
    sub_24898D610(v16, v14, &qword_27EEB5608, &qword_248A15110);
    v37 = sub_248A12B80();
    v39 = v38;
    sub_248983734(v16, &qword_27EEB5608, &qword_248A15110);
    v40 = sub_24897BC00(v37, v39, v59);
    v6 = v53;

    *(v27 + 30) = v40;
    _os_log_impl(&dword_248975000, v24, v25, "[%{public}s] Handle next message (context: %{public}s, isComplete: %{BOOL,public}d), error: %{public}s)", v27, 0x26u);
    swift_arrayDestroy();
    v41 = v29;
    a2 = v51;
    MEMORY[0x24C1E0A80](v41, -1, -1);
    v42 = v27;
    a5 = v52;
    MEMORY[0x24C1E0A80](v42, -1, -1);

    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {

    sub_248983734(v16, &qword_27EEB5608, &qword_248A15110);
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  if (sub_248A12650())
  {
    sub_248A12800();
    if (swift_dynamicCastClass())
    {
      sub_248A12810();
      if (!v59[3])
      {

        sub_248983734(v59, &qword_27EEB5610, &qword_248A15118);
        goto LABEL_16;
      }

      if (swift_dynamicCast())
      {
        v43 = v58;
        v44 = sub_248A12D40();
        v45 = v54;
        (*(*(v44 - 8) + 56))(v54, 1, 1, v44);
        v46 = sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
        v47 = swift_allocObject();
        *(v47 + 16) = v6;
        *(v47 + 24) = v46;
        *(v47 + 32) = v6;
        *(v47 + 40) = v43;
        v48 = v55;
        *(v47 + 48) = v55;
        *(v47 + 56) = a2;
        swift_retain_n();
        sub_24898C480(v48, a2);
        sub_2489AC334(0, 0, v45, &unk_248A180C8, v47);
      }
    }
  }

LABEL_16:
  v49 = sub_248A128A0();
  result = (*(*(v49 - 8) + 48))(a5, 1, v49);
  if (result == 1)
  {
    return sub_2489F7D98();
  }

  return result;
}

uint64_t sub_2489F896C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_2489F8A40;

  return sub_2489F9F1C(a5, a6, a7);
}

uint64_t sub_2489F8A40(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(v6 + 48) = v2;

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
    sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
    v8 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_2489F8BE4, v8, v7);
  }

  else
  {
    sub_24898C4E8(a1, a2);
    v9 = *(v6 + 8);

    return v9();
  }
}

uint64_t sub_2489F8BE4()
{
  v27 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DC8);

  sub_24898C480(v3, v2);
  v5 = v1;
  v6 = sub_248A122B0();
  v7 = sub_248A12E60();
  sub_24898C4E8(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v9 = 136446722;
    v12 = sub_2489FA2C8();
    v14 = v13;

    v15 = sub_24897BC00(v12, v14, &v26);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    if (v8 >> 60 == 15)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v17 = sub_248A11AD0();
      v16 = v19;
    }

    v20 = v0[6];
    v21 = sub_24897BC00(v17, v16, &v26);

    *(v9 + 14) = v21;
    *(v9 + 22) = 2114;
    v22 = v20;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v23;
    *v10 = v23;
    _os_log_impl(&dword_248975000, v6, v7, "[%{public}s] Failed to parse message: %{public}s; error: %{public}@", v9, 0x20u);
    sub_248983734(v10, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  else
  {
    v18 = v0[6];
  }

  v24 = v0[1];

  return v24();
}

void sub_2489F8E9C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v52 - v12);
  v14 = qword_27EEB5418;
  swift_beginAccess();
  sub_24898D610(v2 + v14, v9, &qword_27EEB5450, qword_248A14E30);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_248983734(v9, &qword_27EEB5450, qword_248A14E30);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v15 = sub_248A122D0();
    __swift_project_value_buffer(v15, qword_27EEB9DC8);

    v16 = sub_248A122B0();
    v17 = sub_248A12E60();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v56[0] = v19;
      *v18 = 136446210;
      v20 = sub_2489FA2C8();
      v22 = v21;

      v23 = sub_24897BC00(v20, v22, v56);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_248975000, v16, v17, "[%{public}s] Ready continuation already resumed", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1E0A80](v19, -1, -1);
      MEMORY[0x24C1E0A80](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    if (a1)
    {
      v24 = a1;
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v25 = sub_248A122D0();
      __swift_project_value_buffer(v25, qword_27EEB9DC8);

      v26 = a1;
      v27 = sub_248A122B0();
      v28 = sub_248A12E80();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v55 = v7;
        v30 = v29;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v56[0] = v54;
        *v30 = 136446466;
        v52 = v27;
        v31 = sub_2489FA2C8();
        v32 = v13;
        v34 = v33;

        v35 = sub_24897BC00(v31, v34, v56);
        v13 = v32;

        *(v30 + 4) = v35;
        *(v30 + 12) = 2114;
        v36 = a1;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 14) = v37;
        v27 = v52;
        v38 = v53;
        *v53 = v37;
        _os_log_impl(&dword_248975000, v27, v28, "[%{public}s] Resuming ready continuation with error: %{public}@", v30, 0x16u);
        sub_248983734(v38, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v38, -1, -1);
        v39 = v54;
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x24C1E0A80](v39, -1, -1);
        v40 = v30;
        v7 = v55;
        MEMORY[0x24C1E0A80](v40, -1, -1);
      }

      else
      {
      }

      v56[0] = a1;
      sub_248A12CE0();
    }

    else
    {
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v41 = sub_248A122D0();
      __swift_project_value_buffer(v41, qword_27EEB9DC8);

      v42 = sub_248A122B0();
      v43 = sub_248A12E80();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v55 = v7;
        v56[0] = v45;
        v46 = v45;
        *v44 = 136446210;
        v47 = sub_2489FA2C8();
        v54 = v13;
        v49 = v48;

        v50 = sub_24897BC00(v47, v49, v56);
        v13 = v54;

        *(v44 + 4) = v50;
        _os_log_impl(&dword_248975000, v42, v43, "[%{public}s] Resuming ready continuation with success", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        v51 = v46;
        v7 = v55;
        MEMORY[0x24C1E0A80](v51, -1, -1);
        MEMORY[0x24C1E0A80](v44, -1, -1);
      }

      else
      {
      }

      sub_248A12CF0();
    }

    (*(v11 + 8))(v13, v10);
    (*(v11 + 56))(v7, 1, 1, v10);
    swift_beginAccess();
    sub_24898D194(v7, v2 + v14, &qword_27EEB5450, qword_248A14E30);
    swift_endAccess();
  }
}

uint64_t sub_2489F9548()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_2489F9DE4();
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000062, 0x8000000248A18F40, 0x6D69547472617473, 0xEE00292874756F65);
  v7 = sub_248A12D40();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = v1;
  v9[5] = v2;
  swift_retain_n();
  *(v1 + qword_27EEB5438) = sub_2489E5FD4(0, 0, v5, &unk_248A180B8, v9);
}

uint64_t sub_2489F9748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_248A131D0();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v8 = sub_248A12CD0();
  v5[7] = v8;
  v5[8] = v7;

  return MEMORY[0x2822009F8](sub_2489F9858, v8, v7);
}

uint64_t sub_2489F9858()
{
  v12 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  *(v0 + 72) = __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_248A13570();
    v8 = sub_24897BC00(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Peer connection activation timeout started", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  sub_248A133B0();
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_2489F9A54;

  return sub_248996414(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_2489F9A54()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_2489888BC;
  }

  else
  {
    v8 = sub_2489F9BEC;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2489F9BEC()
{
  v13 = v0;
  v1 = v0[11];
  sub_248A12D90();
  if (v1)
  {

    v2 = v0[1];
  }

  else
  {
    if (!*(v0[2] + qword_27EEB5448))
    {
      v3 = sub_248A122B0();
      v4 = sub_248A12E80();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v12 = v6;
        *v5 = 136446210;
        v7 = sub_248A13570();
        v9 = sub_24897BC00(v7, v8, &v12);

        *(v5 + 4) = v9;
        _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Peer connection activation timeout hit", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x24C1E0A80](v6, -1, -1);
        MEMORY[0x24C1E0A80](v5, -1, -1);
      }

      sub_248A12D00();
      sub_248A04028(&qword_27EEB55F8, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v10 = swift_allocError();
      sub_248A12A70();
      sub_2489F8E9C(v10);
    }

    v2 = v0[1];
  }

  return v2();
}

void sub_2489F9DE4()
{
  v1 = qword_27EEB5438;
  if (*(v0 + qword_27EEB5438))
  {
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v2 = sub_248A122D0();
    __swift_project_value_buffer(v2, qword_27EEB9DC8);
    sub_2489BDB14(0xD000000000000062, 0x8000000248A18F40, 0x656D6954706F7473, 0xED0000292874756FLL);
    if (*(v0 + v1))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
      sub_248A12D70();
    }

    *(v0 + v1) = 0;
  }
}

uint64_t sub_2489F9F1C(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489F9FD4, v6, v5);
}

uint64_t sub_2489F9FD4()
{
  v32 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_27EEB9DC8);

  sub_24898C480(v2, v1);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  sub_24898C4E8(v2, v1);
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_8;
  }

  v6 = *(v0 + 32);
  v7 = *(v0 + 56);
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v31 = v9;
  *v8 = 136446722;
  v10 = sub_2489FA2C8();
  v12 = v11;

  v13 = sub_24897BC00(v10, v12, &v31);

  *(v8 + 4) = v13;
  *(v8 + 12) = 1026;
  *(v8 + 14) = v7;
  *(v8 + 18) = 2082;
  if (v6 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v23 = *(v0 + 32);
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v24)
    {
      v15 = BYTE6(v23);
      goto LABEL_6;
    }

LABEL_18:
    v28 = *(v0 + 24);
    v29 = *(v0 + 28);
    v27 = __OFSUB__(v29, v28);
    LODWORD(v15) = v29 - v28;
    if (v27)
    {
      __break(1u);
      return result;
    }

    v15 = v15;
    goto LABEL_6;
  }

  if (v24 == 2)
  {
    v25 = *(*(v0 + 24) + 16);
    v26 = *(*(v0 + 24) + 24);
    v27 = __OFSUB__(v26, v25);
    v15 = v26 - v25;
    if (!v27)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  v15 = 0;
LABEL_6:
  *(v0 + 16) = v15;
  v16 = sub_248A132F0();
  v18 = sub_24897BC00(v16, v17, &v31);

  *(v8 + 20) = v18;
  _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Transport item %{public}u with data %{public}s", v8, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x24C1E0A80](v9, -1, -1);
  MEMORY[0x24C1E0A80](v8, -1, -1);

LABEL_8:
  v30 = (*MEMORY[0x277D05180] + MEMORY[0x277D05180]);
  v19 = swift_task_alloc();
  *(v0 + 48) = v19;
  *v19 = v0;
  v19[1] = sub_248989634;
  v20 = *(v0 + 24);
  v21 = *(v0 + 32);
  v22 = *(v0 + 56);

  return v30(v22, v20, v21);
}

uint64_t sub_2489FA2C8()
{
  v1 = v0;
  v2 = sub_248A11BC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_248A13100();
  v9 = sub_248A13570();
  v11 = v10;

  v24 = v9;
  v25 = v11;
  MEMORY[0x24C1DF8B0](0x63656E6E6F432820, 0xEE00203A6E6F6974);
  v12 = *(v0 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  v22 = (*(v12 + 8))(ObjectType, v12);
  v14 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v14);

  MEMORY[0x24C1DF8B0](0x656369766544202CLL, 0xEA0000000000203ALL);
  v15 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D610(v1 + v15, v8, &qword_27EEB5400, &unk_248A14E10);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_248983734(v8, &qword_27EEB5400, &unk_248A14E10);
    v16 = 0xE500000000000000;
    v17 = 0x4449206F4ELL;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_248983734(v8, &qword_27EEB5400, &unk_248A14E10);
    v18 = sub_248A11B90();
    v16 = v19;
    (*(v3 + 8))(v5, v2);
    v17 = v18;
  }

  MEMORY[0x24C1DF8B0](v17, v16);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  return v24;
}

uint64_t sub_2489FA5E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_248A12670();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_248A11F10();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489FA750, v6, v5);
}

uint64_t sub_2489FA750()
{
  v31 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_27EEB9DC8);
  (*(v2 + 16))(v1, v4, v3);

  v6 = sub_248A122B0();
  v7 = sub_248A12E80();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v12 = 136446466;
    v13 = sub_2489FA2C8();
    v15 = v14;

    v16 = sub_24897BC00(v13, v15, v30);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1026;
    sub_248A04028(&qword_27EEB6220, MEMORY[0x277D05060], MEMORY[0x277D05068]);
    sub_248A13110();
    LODWORD(v16) = *(v0 + 92);
    (*(v10 + 8))(v9, v11);
    *(v12 + 14) = v16;
    _os_log_impl(&dword_248975000, v6, v7, "[%{public}s] Send item %{public}u", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C1E0A80](v29, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  else
  {
    (*(v10 + 8))(*(v0 + 72), *(v0 + 56));
  }

  sub_248A12800();
  sub_248A04028(&qword_27EEB6220, MEMORY[0x277D05060], MEMORY[0x277D05068]);
  sub_248A13110();
  v17 = *(v0 + 80);
  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 48);
  v19 = *(v0 + 40);
  v28 = *(v0 + 32);
  v27 = *(v0 + 24);

  v20 = sub_248A127F0();
  v30[3] = MEMORY[0x277D84CC0];
  LODWORD(v30[0]) = v17;
  sub_248A12820();
  sub_248A13110();
  *(v0 + 88) = *(v0 + 84);
  sub_248A132F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5468, &qword_248A14E70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_248A14E00;
  *(v21 + 32) = v20;
  sub_248A12660();
  swift_allocObject();

  v22 = sub_248A12640();
  v23 = *(v27 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  (*(v19 + 104))(v18, *MEMORY[0x277CD8DA8], v28);
  (*(v23 + 64))(0, 0xF000000000000000, v22, 1, v18, ObjectType, v23);

  (*(v19 + 8))(v18, v28);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2489FAC1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-1] - v3;
  sub_2489FAEBC();
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_27EEB9DC8);
  v6 = sub_248A122B0();
  v7 = sub_248A12E80();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, v16);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_24897BC00(0xD000000000000010, 0x8000000248A1B110, v16);
    _os_log_impl(&dword_248975000, v6, v7, "[%{public}s] %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  v10 = sub_248A12D40();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v11;
  v13 = sub_2489E5FD4(0, 0, v4, &unk_248A18090, v12);
  swift_beginAccess();
  *(v1 + 24) = v13;
}

uint64_t sub_2489FAEBC()
{
  v1 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, v8);
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_24897BC00(0x72616548706F7473, 0xEF29287461654274, v8);
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  swift_beginAccess();
  if (*(v1 + 24))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    sub_248A12D70();
  }

  *(v1 + 24) = 0;
}

uint64_t sub_2489FB0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_248A131C0();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_248A131D0();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FB1E0, 0, 0);
}

uint64_t sub_2489FB1E0()
{
  v16 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = sub_248A122D0();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v15);
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Waiting to send heartbeat...", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C1E0A80](v5, -1, -1);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  sub_248A133B0();
  *(v0 + 64) = xmmword_248A17DD0;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v9 = sub_248A04028(&qword_27EEB5790, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_248A13390();
  sub_248A04028(&qword_27EEB5798, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_248A131E0();
  v10 = *(v7 + 8);
  *(v0 + 152) = v10;
  *(v0 + 160) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_2489FB4C0;
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);

  return MEMORY[0x2822008C8](v13, v0 + 40, v12, v9);
}

uint64_t sub_2489FB4C0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 88);
  *(*v1 + 176) = v0;

  v3(v4, v5);
  if (v0)
  {
    v6 = sub_2489FBAAC;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v6 = sub_2489FB658;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2489FB658()
{
  v23 = v0;
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 192) = v2;
    *v2 = v0;
    v2[1] = sub_2489FBFC4;

    return GuestUserAccessResponsePeerConnectionService.sendHeartbeat()();
  }

  else if (sub_248A12D80())
  {
    v4 = sub_248A122B0();
    v5 = sub_248A12E80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v22);
      _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Heartbeat cancelled", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C1E0A80](v7, -1, -1);
      MEMORY[0x24C1E0A80](v6, -1, -1);
    }

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v9 = sub_248A122D0();
    *(v0 + 144) = __swift_project_value_buffer(v9, qword_27EEB9DC8);
    v10 = sub_248A122B0();
    v11 = sub_248A12E80();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v22);
      _os_log_impl(&dword_248975000, v10, v11, "[%{public}s] Waiting to send heartbeat...", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C1E0A80](v13, -1, -1);
      MEMORY[0x24C1E0A80](v12, -1, -1);
    }

    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    v16 = *(v0 + 88);
    sub_248A133B0();
    *(v0 + 64) = xmmword_248A17DD0;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 1;
    v17 = sub_248A04028(&qword_27EEB5790, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_248A13390();
    sub_248A04028(&qword_27EEB5798, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_248A131E0();
    v18 = *(v15 + 8);
    *(v0 + 152) = v18;
    *(v0 + 160) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v14, v16);
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_2489FB4C0;
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);

    return MEMORY[0x2822008C8](v21, v0 + 40, v20, v17);
  }
}

uint64_t sub_2489FBAAC()
{
  v30 = v0;
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  v1 = *(v0 + 176);
  v2 = v1;
  v3 = sub_248A122B0();
  v4 = sub_248A12E60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v29);
    *(v5 + 12) = 2114;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Error sending heartbeat: %{public}@", v5, 0x16u);
    sub_248983734(v6, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);

    if ((sub_248A12D80() & 1) == 0)
    {
LABEL_3:
      v10 = sub_248A122D0();
      *(v0 + 144) = __swift_project_value_buffer(v10, qword_27EEB9DC8);
      v11 = sub_248A122B0();
      v12 = sub_248A12E80();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v29 = v14;
        *v13 = 136446210;
        *(v13 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v29);
        _os_log_impl(&dword_248975000, v11, v12, "[%{public}s] Waiting to send heartbeat...", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x24C1E0A80](v14, -1, -1);
        MEMORY[0x24C1E0A80](v13, -1, -1);
      }

      v16 = *(v0 + 96);
      v15 = *(v0 + 104);
      v17 = *(v0 + 88);
      sub_248A133B0();
      *(v0 + 64) = xmmword_248A17DD0;
      *(v0 + 40) = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 1;
      v18 = sub_248A04028(&qword_27EEB5790, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      sub_248A13390();
      sub_248A04028(&qword_27EEB5798, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      sub_248A131E0();
      v19 = *(v16 + 8);
      *(v0 + 152) = v19;
      *(v0 + 160) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v15, v17);
      v20 = swift_task_alloc();
      *(v0 + 168) = v20;
      *v20 = v0;
      v20[1] = sub_2489FB4C0;
      v22 = *(v0 + 112);
      v21 = *(v0 + 120);

      return MEMORY[0x2822008C8](v22, v0 + 40, v21, v18);
    }
  }

  else
  {

    if ((sub_248A12D80() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v23 = sub_248A122B0();
  v24 = sub_248A12E80();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v29);
    _os_log_impl(&dword_248975000, v23, v24, "[%{public}s] Heartbeat cancelled", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x24C1E0A80](v26, -1, -1);
    MEMORY[0x24C1E0A80](v25, -1, -1);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2489FBFC4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2489FC4BC;
  }

  else
  {
    v2 = sub_2489FC0F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2489FC0F4()
{
  v21 = v0;
  if (sub_248A12D80())
  {
    v1 = sub_248A122B0();
    v2 = sub_248A12E80();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v20 = v4;
      *v3 = 136446210;
      *(v3 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v20);
      _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Heartbeat cancelled", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);
      MEMORY[0x24C1E0A80](v4, -1, -1);
      MEMORY[0x24C1E0A80](v3, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = sub_248A122D0();
    *(v0 + 144) = __swift_project_value_buffer(v7, qword_27EEB9DC8);
    v8 = sub_248A122B0();
    v9 = sub_248A12E80();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v20);
      _os_log_impl(&dword_248975000, v8, v9, "[%{public}s] Waiting to send heartbeat...", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1E0A80](v11, -1, -1);
      MEMORY[0x24C1E0A80](v10, -1, -1);
    }

    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = *(v0 + 88);
    sub_248A133B0();
    *(v0 + 64) = xmmword_248A17DD0;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 1;
    v15 = sub_248A04028(&qword_27EEB5790, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_248A13390();
    sub_248A04028(&qword_27EEB5798, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_248A131E0();
    v16 = *(v13 + 8);
    *(v0 + 152) = v16;
    *(v0 + 160) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v12, v14);
    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v17[1] = sub_2489FB4C0;
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);

    return MEMORY[0x2822008C8](v19, v0 + 40, v18, v15);
  }
}

uint64_t sub_2489FC4BC()
{
  v30 = v0;
  v1 = *(v0 + 200);
  v2 = v1;
  v3 = sub_248A122B0();
  v4 = sub_248A12E60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v5 = 136446466;
    *(v5 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v29);
    *(v5 + 12) = 2114;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Error sending heartbeat: %{public}@", v5, 0x16u);
    sub_248983734(v6, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C1E0A80](v7, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);

    if ((sub_248A12D80() & 1) == 0)
    {
LABEL_3:
      v10 = sub_248A122D0();
      *(v0 + 144) = __swift_project_value_buffer(v10, qword_27EEB9DC8);
      v11 = sub_248A122B0();
      v12 = sub_248A12E80();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v29 = v14;
        *v13 = 136446210;
        *(v13 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v29);
        _os_log_impl(&dword_248975000, v11, v12, "[%{public}s] Waiting to send heartbeat...", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x24C1E0A80](v14, -1, -1);
        MEMORY[0x24C1E0A80](v13, -1, -1);
      }

      v16 = *(v0 + 96);
      v15 = *(v0 + 104);
      v17 = *(v0 + 88);
      sub_248A133B0();
      *(v0 + 64) = xmmword_248A17DD0;
      *(v0 + 48) = 0;
      *(v0 + 40) = 0;
      *(v0 + 56) = 1;
      v18 = sub_248A04028(&qword_27EEB5790, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      sub_248A13390();
      sub_248A04028(&qword_27EEB5798, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      sub_248A131E0();
      v19 = *(v16 + 8);
      *(v0 + 152) = v19;
      *(v0 + 160) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v15, v17);
      v20 = swift_task_alloc();
      *(v0 + 168) = v20;
      *v20 = v0;
      v20[1] = sub_2489FB4C0;
      v22 = *(v0 + 112);
      v21 = *(v0 + 120);

      return MEMORY[0x2822008C8](v22, v0 + 40, v21, v18);
    }
  }

  else
  {

    if ((sub_248A12D80() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v23 = sub_248A122B0();
  v24 = sub_248A12E80();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v29 = v26;
    *v25 = 136446210;
    *(v25 + 4) = sub_24897BC00(0xD00000000000002CLL, 0x8000000248A17FE0, &v29);
    _os_log_impl(&dword_248975000, v23, v24, "[%{public}s] Heartbeat cancelled", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x24C1E0A80](v26, -1, -1);
    MEMORY[0x24C1E0A80](v25, -1, -1);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t GuestUserAccessResponsePeerConnectionService.__allocating_init(peerConnection:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  sub_248A11DF0();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_2489FCA24(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_2489FCABC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t GuestUserAccessResponsePeerConnectionService.init(peerConnection:)(uint64_t a1)
{
  *(v1 + 24) = 0;
  sub_248A11DF0();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_2489FCB90(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_248A11F10();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FCC50, 0, 0);
}

uint64_t sub_2489FCC50()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0xD000000000000016, 0x8000000248A18DD0);
  v0[16] = *(v1 + 16);
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489FCD8C, v4, v3);
}

uint64_t sub_2489FCD8C()
{
  sub_248A03118(*(v0 + 96), *(v0 + 128), &off_285B62EC8, "[%{public}s] Add observer %{public}s", MEMORY[0x277D04F48]);

  return MEMORY[0x2822009F8](sub_2489FCE1C, 0, 0);
}

uint64_t sub_2489FCE1C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v0[2] = v0[16];
  v4 = *MEMORY[0x277D04FB0];
  v5 = *(v3 + 104);
  v0[18] = v5;
  v0[19] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v2);
  v6 = swift_allocObject();
  v0[20] = v6;
  swift_weakInit();
  swift_retain_n();
  v7 = swift_task_alloc();
  v0[21] = v7;
  v8 = sub_248A11FF0();
  v9 = sub_248A02C08(&qword_27EEB61F0, &protocol conformance descriptor for PeerConnection<A>);
  v0[22] = v9;
  v10 = sub_248A04028(&qword_27EEB61F8, MEMORY[0x277D050B0], MEMORY[0x277D050A8]);
  *v7 = v0;
  v7[1] = sub_2489FCFC8;
  v11 = v0[17];
  v12 = v0[15];

  return MEMORY[0x28215ABC8](v12, &unk_248A17DF8, v6, v11, v8, v9, v10);
}

uint64_t sub_2489FCFC8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  v5 = *(v3 + 8);
  *(v1 + 184) = v5;
  *(v1 + 192) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return MEMORY[0x2822009F8](sub_2489FD16C, 0, 0);
}

uint64_t sub_2489FD16C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
  v0[3] = v0[16];
  v1(v2, *MEMORY[0x277D04FC8], v3);
  v4 = swift_allocObject();
  v0[25] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[26] = v5;
  v6 = sub_248A12010();
  v7 = sub_248A04028(&qword_27EEB6200, MEMORY[0x277D050C8], MEMORY[0x277D050C0]);
  *v5 = v0;
  v5[1] = sub_2489FD2CC;
  v8 = v0[22];
  v9 = v0[17];
  v10 = v0[15];

  return MEMORY[0x28215ABC8](v10, &unk_248A17E08, v4, v9, v6, v8, v7);
}

uint64_t sub_2489FD2CC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 104);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489FD46C, 0, 0);
}

uint64_t sub_2489FD46C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
  v0[4] = v0[16];
  v1(v2, *MEMORY[0x277D04FC0], v3);
  v4 = swift_allocObject();
  v0[27] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_2489FD58C;
  v6 = v0[22];
  v7 = v0[17];
  v8 = v0[15];

  return MEMORY[0x28215ABD0](v8, &unk_248A17E18, v4, v7, v6);
}

uint64_t sub_2489FD58C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 104);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489FD734, 0, 0);
}

uint64_t sub_2489FD734()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
  v0[5] = v0[16];
  v1(v2, *MEMORY[0x277D05018], v3);
  v4 = swift_allocObject();
  v0[29] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_2489FD854;
  v6 = v0[22];
  v7 = v0[17];
  v8 = v0[15];

  return MEMORY[0x28215ABD0](v8, &unk_248A17E28, v4, v7, v6);
}

uint64_t sub_2489FD854()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 104);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489FD9FC, 0, 0);
}

uint64_t sub_2489FD9FC()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
  v0[6] = v0[16];
  v1(v2, *MEMORY[0x277D05010], v3);
  v4 = swift_allocObject();
  v0[31] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_2489FDB1C;
  v6 = v0[22];
  v7 = v0[17];
  v8 = v0[15];

  return MEMORY[0x28215ABD0](v8, &unk_248A17E38, v4, v7, v6);
}

uint64_t sub_2489FDB1C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 104);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489FDCC4, 0, 0);
}

uint64_t sub_2489FDCC4()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
  v0[7] = v0[16];
  v1(v2, *MEMORY[0x277D04FD0], v3);
  v4 = swift_allocObject();
  v0[33] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_2489FDDE4;
  v6 = v0[22];
  v7 = v0[17];
  v8 = v0[15];

  return MEMORY[0x28215ABD0](v8, &unk_248A17E48, v4, v7, v6);
}

uint64_t sub_2489FDDE4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 104);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489FDF8C, 0, 0);
}

uint64_t sub_2489FDF8C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
  v0[8] = v0[16];
  v1(v2, *MEMORY[0x277D05058], v3);
  v4 = swift_allocObject();
  v0[35] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[36] = v5;
  v6 = sub_248A11E40();
  v7 = sub_248A04028(&qword_28150F610, MEMORY[0x277D04F78], MEMORY[0x277D04F70]);
  *v5 = v0;
  v5[1] = sub_2489FE0EC;
  v8 = v0[22];
  v9 = v0[17];
  v10 = v0[15];

  return MEMORY[0x28215ABC8](v10, &unk_248A17E58, v4, v9, v6, v8, v7);
}

uint64_t sub_2489FE0EC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 104);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489FE28C, 0, 0);
}

uint64_t sub_2489FE28C()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
  v0[9] = v0[16];
  v1(v2, *MEMORY[0x277D05050], v3);
  v4 = swift_allocObject();
  v0[37] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_2489FE3A8;
  v6 = v0[22];
  v7 = v0[17];
  v8 = v0[15];
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D05188];

  return MEMORY[0x28215ABC8](v8, &unk_248A17E68, v4, v7, v9, v6, v10);
}

uint64_t sub_2489FE3A8()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 104);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2489FE548, 0, 0);
}

uint64_t sub_2489FE548()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[13];
  v0[10] = v0[16];
  v1(v2, *MEMORY[0x277D04FE0], v3);
  v4 = swift_allocObject();
  v0[39] = v4;
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[40] = v5;
  *v5 = v0;
  v5[1] = sub_2489FE660;
  v6 = v0[22];
  v7 = v0[17];
  v8 = v0[15];

  return MEMORY[0x28215ABD0](v8, &unk_248A17E78, v4, v7, v6);
}

uint64_t sub_2489FE660()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 104);
  v5 = *v0;

  v2(v3, v4);

  v6 = swift_task_alloc();
  *(v1 + 328) = v6;
  *v6 = v5;
  v6[1] = sub_2489FE870;
  v7 = *(v1 + 88);

  return sub_2489F59C4(v7);
}

uint64_t sub_2489FE870()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2489FE980(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FEA14, 0, 0);
}

uint64_t sub_2489FEA14()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[8];
    v2 = v0[5];
    v3 = sub_248A11FF0();
    (*(*(v3 - 8) + 16))(v1, v2, v3);
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v1);

    sub_248A03DB4(v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2489FEB28(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FEBBC, 0, 0);
}

uint64_t sub_2489FEBBC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[8];
    v2 = v0[5];
    v3 = sub_248A12010();
    (*(*(v3 - 8) + 16))(v1, v2, v3);
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v1);

    sub_248A03DB4(v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2489FECD0(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FED64, 0, 0);
}

uint64_t sub_2489FED64()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 56);
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v1);

    sub_248A03DB4(v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489FEE2C(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FEEC0, 0, 0);
}

uint64_t sub_2489FEEC0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 56);
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v1);

    sub_248A03DB4(v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489FEF88(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FF01C, 0, 0);
}

uint64_t sub_2489FF01C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 56);
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v1);

    sub_248A03DB4(v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489FF0E4(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FF178, 0, 0);
}

uint64_t sub_2489FF178()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 56);
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v1);

    sub_248A03DB4(v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2489FF240(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FF2D4, 0, 0);
}

uint64_t sub_2489FF2D4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[8];
    v2 = v0[5];
    v3 = sub_248A11E40();
    (*(*(v3 - 8) + 16))(v1, v2, v3);
    swift_storeEnumTagMultiPayload();
    sub_248A00914(v1);

    sub_248A03DB4(v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2489FF3E8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v2[5] = a2;
  v2[6] = v3;
  v2[7] = v4;
  return MEMORY[0x2822009F8](sub_2489FF410, 0, 0);
}

uint64_t sub_2489FF410()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_2489FF500;
    v4 = v0[6];
    v3 = v0[7];

    return sub_248A01390(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2489FF500()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2489EC818, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2489FF65C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_248A04190();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489FF70C()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0x6164696C61766E69, 0xEC00000029286574);
  sub_2489FAEBC();
  *(v0 + 24) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489FF84C, v4, v3);
}

uint64_t sub_2489FF84C()
{
  sub_248A03118(v0[2], v0[3], &off_285B62EC8, "[%{public}s] Remove observer %{public}s", MEMORY[0x277D04F50]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2489FF91C;

  return sub_2489F6784();
}

uint64_t sub_2489FF91C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2489FFA14(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2489FFA34, 0, 0);
}

uint64_t sub_2489FFA34()
{
  *(v0 + 56) = *(*(v0 + 48) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5898, &qword_248A15C28);
  sub_248A02C08(&qword_27EEB5EC0, &protocol conformance descriptor for PeerConnection<A>);
  v2 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_2489FFAEC, v2, v1);
}

uint64_t sub_2489FFAEC()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D610(v1 + v3, v2, &qword_27EEB5400, &unk_248A14E10);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2489FFB8C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  v3 = sub_248A11F10();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response(0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2489FFCE0, 0, 0);
}

uint64_t sub_2489FFCE0()
{
  v44 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 96);
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_27EEB9DC8);
  sub_248A03D4C(v2, v1, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  v4 = sub_248A122B0();
  v5 = sub_248A12E80();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v43 = v9;
    *v8 = 136446466;
    v10 = sub_248A13570();
    v12 = sub_24897BC00(v10, v11, &v43);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v13 = GuestUserAccessPeerConnectionServiceMessage.Response.description.getter();
    v15 = v14;
    sub_248A03DB4(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
    v16 = sub_24897BC00(v13, v15, &v43);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_248975000, v4, v5, "[%{public}s] Sending message: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {

    sub_248A03DB4(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  }

  GuestUserAccessPeerConnectionServiceMessage.Response.transportPayload.getter(v0 + 56);
  v17 = *(v0 + 128);
  v18 = *(v0 + 96);
  if (*(v0 + 80))
  {
    v19 = *(v0 + 184);
    sub_248978948((v0 + 56), v0 + 16);
    v21 = *(v0 + 40);
    v20 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
    sub_248A03D4C(v18, v19, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = *(v17 + 104);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v23(*(v0 + 152), *MEMORY[0x277D05038], *(v0 + 120));
        goto LABEL_20;
      }

      v24 = *(v0 + 184);
      v25 = *(v0 + 152);
      v26 = *(v0 + 120);
      v27 = MEMORY[0x277D05028];
    }

    else
    {
      v24 = *(v0 + 184);
      if (EnumCaseMultiPayload)
      {
        v25 = *(v0 + 152);
        v26 = *(v0 + 120);
        v27 = MEMORY[0x277D05030];
      }

      else
      {
        v25 = *(v0 + 152);
        v26 = *(v0 + 120);
        v27 = MEMORY[0x277D04FB8];
      }
    }

    v23(v25, *v27, v26);
    sub_248A03DB4(v24, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
LABEL_20:
    (*(*(v0 + 128) + 32))(*(v0 + 160), *(v0 + 152), *(v0 + 120));
    v35 = sub_248A12F20();
    *(v0 + 200) = v35;
    *(v0 + 208) = *(v35 - 8);
    v36 = swift_task_alloc();
    *(v0 + 216) = v36;
    v37 = *(v21 - 8);
    (*(v37 + 16))();
    (*(v37 + 56))(v36, 0, 1, v21);
    v38 = swift_task_alloc();
    *(v0 + 224) = v38;
    *v38 = v0;
    v38[1] = sub_248A0030C;
    v39 = *(v0 + 160);

    return PeerConnection.send<A>(_:payload:)(v39, v36, v21, v20);
  }

  v28 = *(v0 + 176);
  sub_248983734(v0 + 56, &qword_27EEB6208, &qword_248A17EB0);
  sub_248A03D4C(v18, v28, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
  v29 = swift_getEnumCaseMultiPayload();
  v30 = *(v17 + 104);
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      v30(*(v0 + 136), *MEMORY[0x277D05038], *(v0 + 120));
      goto LABEL_26;
    }

    v31 = *(v0 + 176);
    v32 = *(v0 + 136);
    v33 = *(v0 + 120);
    v34 = MEMORY[0x277D05028];
  }

  else
  {
    v31 = *(v0 + 176);
    if (v29)
    {
      v32 = *(v0 + 136);
      v33 = *(v0 + 120);
      v34 = MEMORY[0x277D05030];
    }

    else
    {
      v32 = *(v0 + 136);
      v33 = *(v0 + 120);
      v34 = MEMORY[0x277D04FB8];
    }
  }

  v30(v32, *v34, v33);
  sub_248A03DB4(v31, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Response);
LABEL_26:
  (*(*(v0 + 128) + 32))(*(v0 + 144), *(v0 + 136), *(v0 + 120));
  v41 = swift_task_alloc();
  *(v0 + 240) = v41;
  *v41 = v0;
  v41[1] = sub_248A005AC;
  v42 = *(v0 + 144);

  return sub_2489FA5E8(v42);
}

uint64_t sub_248A0030C()
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 120);
  *(*v1 + 232) = v0;

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v8 = sub_248A00794;
  }

  else
  {

    v8 = sub_248A004F4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_248A004F4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A005AC()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *v1;
  *(v5 + 248) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_248A0085C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_248A00794()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A0085C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248A00914(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_27EEB9DC8);
  sub_248A03D4C(a1, v9, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  v11 = sub_248A122B0();
  v12 = sub_248A12E80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v4;
    v32 = v14;
    v15 = v14;
    *v13 = 136446466;
    v16 = sub_248A13570();
    v18 = sub_24897BC00(v16, v17, &v32);
    v30 = v1;
    v19 = v18;

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    v20 = GuestUserAccessPeerConnectionServiceMessage.Request.description.getter();
    v22 = v21;
    sub_248A03DB4(v9, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
    v23 = sub_24897BC00(v20, v22, &v32);
    v2 = v30;

    *(v13 + 14) = v23;
    _os_log_impl(&dword_248975000, v11, v12, "[%{public}s] Received request: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v15, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  else
  {

    sub_248A03DB4(v9, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  sub_248A03D4C(a1, v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 3)
  {
    v26 = sub_2489FAEBC();
  }

  else
  {
    v26 = sub_248A03DB4(v7, type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request);
  }

  MEMORY[0x28223BE20](v26);
  *(&v29 - 2) = v2;
  *(&v29 - 1) = a1;
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0xD000000000000013, 0x8000000248A1B0F0);
  MEMORY[0x28223BE20](v27);
  *(&v29 - 2) = sub_248A03E14;
  *(&v29 - 1) = (&v29 - 4);
  return sub_248A11DC0();
}

uint64_t sub_248A00CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10[3] = type metadata accessor for GuestUserAccessResponsePeerConnectionService(0);
  v10[4] = &protocol witness table for GuestUserAccessResponsePeerConnectionService;
  v10[0] = a3;
  v8 = *(a2 + 8);

  v8(v10, a4, ObjectType, a2);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_248A00D94(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446466;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    if (v1)
    {
      v10 = 0xD000000000000015;
    }

    else
    {
      v10 = 0xD00000000000001ALL;
    }

    if (v1)
    {
      v11 = "sendGuestUserAccessResponse(_:)";
    }

    else
    {
      v11 = "peerConnectionDidFail";
    }

    v12 = sub_24897BC00(v10, v11 | 0x8000000000000000, &v16);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Received status update: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v13);
  sub_2489BDB14(0xD000000000000093, 0x8000000248A1AFA0, 0xD000000000000013, 0x8000000248A1B0F0);
  MEMORY[0x28223BE20](v14);
  return sub_248A11DC0();
}