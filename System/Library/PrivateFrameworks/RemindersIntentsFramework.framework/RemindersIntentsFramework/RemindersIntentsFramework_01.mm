void sub_261D6E7B0(void *a1, uint64_t a2, void (**a3)(void, void), void *a4, void *a5, unint64_t *a6)
{
  v55 = a4;
  v56 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF45C0, &unk_261D880E0);
  MEMORY[0x28223BE20](v10);
  v57 = (v53 - v11);
  if (qword_27FEF3F98 != -1)
  {
    swift_once();
  }

  v12 = sub_261D864A4();
  v13 = __swift_project_value_buffer(v12, qword_27FEF45A8);
  v14 = a1;
  v15 = sub_261D86494();
  v16 = sub_261D866C4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54 = a3;
    v53[0] = v18;
    v59 = v18;
    *v17 = 136315138;
    v19 = [v14 temporalEventTrigger];
    v53[1] = v13;
    v20 = a6;
    v21 = a5;
    v22 = v19;
    v58 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF45D0, &unk_261D880F0);
    v23 = sub_261D868D4();
    v25 = v24;

    a5 = v21;
    a6 = v20;
    v26 = sub_261D8464C(v23, v25, &v59);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_261D56000, v15, v16, "SiriKit asked for resolving temporalEventTrigger {temporalEventTrigger: %s}", v17, 0xCu);
    v27 = v53[0];
    __swift_destroy_boxed_opaque_existential_0(v53[0]);
    a3 = v54;
    MEMORY[0x26671EBF0](v27, -1, -1);
    MEMORY[0x26671EBF0](v17, -1, -1);
  }

  v28 = v57;
  v29 = [v14 temporalEventTrigger];
  if (!v29)
  {
    v37 = sub_261D86494();
    v38 = sub_261D866C4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_261D56000, v37, v38, ".temporalEventTrigger is nil {result: .notRequired}", v39, 2u);
      MEMORY[0x26671EBF0](v39, -1, -1);
    }

    sub_261D597EC(0, a6, a5);
    v30 = [swift_getObjCClassFromMetadata() notRequired];
    (a3)[2](a3, v30);
    goto LABEL_27;
  }

  v30 = v29;
  sub_261D86784();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = *v28;
    v41 = sub_261D86494();
    v42 = sub_261D866C4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&dword_261D56000, v41, v42, ".temporalEventTrigger resolved to a valid date {result: .success(with: %@)}", v43, 0xCu);
      sub_261D5968C(v44);
      MEMORY[0x26671EBF0](v44, -1, -1);
      MEMORY[0x26671EBF0](v43, -1, -1);
    }

    sub_261D597EC(0, a6, a5);
    v46 = [swift_getObjCClassFromMetadata() successWithResolvedTemporalEventTrigger_];
    (a3)[2](a3, v46);

    goto LABEL_26;
  }

  v31 = sub_261D86764();
  v32 = (*(*(v31 - 8) + 88))(v28, v31);
  if (v32 == *MEMORY[0x277D45EE8])
  {
    v33 = sub_261D86494();
    v34 = sub_261D866C4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_261D56000, v33, v34, ".temporalEventTrigger would create a due date in the past {result: .unsupported(.timeInPast)}", v35, 2u);
      MEMORY[0x26671EBF0](v35, -1, -1);
    }

    v36 = [objc_opt_self() unsupportedForReason_];
LABEL_25:
    v46 = v36;
    (a3)[2](a3, v46);
LABEL_26:

LABEL_27:
    return;
  }

  if (v32 == *MEMORY[0x277D45EF0])
  {
    v47 = sub_261D86494();
    v48 = sub_261D866C4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_261D56000, v47, v48, ".temporalEventTrigger.recurrenceRule is not supported {result: .unsupported(.invalidRecurrence)}", v49, 2u);
      MEMORY[0x26671EBF0](v49, -1, -1);
    }

    v36 = [objc_opt_self() unsupportedForReason_];
    goto LABEL_25;
  }

  if (v32 == *MEMORY[0x277D45EF8])
  {
    v50 = sub_261D86494();
    v51 = sub_261D866C4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_261D56000, v50, v51, ".temporalEventTrigger could not be converted into a dueDate, ignoring it {result: .notRequired}", v52, 2u);
      MEMORY[0x26671EBF0](v52, -1, -1);
    }

    sub_261D597EC(0, a6, a5);
    v36 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_25;
  }

  _Block_release(a3);
  sub_261D86B74();
  __break(1u);
}

uint64_t sub_261D6EE5C()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF45E0);
  v1 = __swift_project_value_buffer(v0, qword_27FEF45E0);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D6F104(unint64_t a1, void (*a2)(NSObject *))
{
  if (qword_27FEF3FA0 != -1)
  {
    swift_once();
  }

  v5 = sub_261D864A4();
  __swift_project_value_buffer(v5, qword_27FEF45E0);

  v6 = sub_261D86494();
  LOBYTE(v7) = sub_261D866C4();
  v8 = a1 >> 62;
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_8;
  }

  v2 = swift_slowAlloc();
  *v2 = 134217984;
  if (v8)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D86954())
  {
    *(v2 + 4) = i;

    _os_log_impl(&dword_261D56000, v6, v7, "Search dataSource returned %ld reminders", v2, 0xCu);
    MEMORY[0x26671EBF0](v2, -1, -1);

LABEL_8:
    if (v8)
    {
      if (sub_261D86954() <= 9)
      {
LABEL_10:
        sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
        a1 = sub_261D86814();
        goto LABEL_13;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 9)
    {
      goto LABEL_10;
    }

LABEL_13:
    if (a1 >> 62)
    {
      v7 = sub_261D86954();
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    v24 = MEMORY[0x277D84F90];
    v6 = &v24;
    sub_261D86A34();
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_35:
    ;
  }

  sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    do
    {
      v11 = v10 + 1;
      MEMORY[0x26671E4C0]();
      sub_261D86824();
      sub_261D86A14();
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      v10 = v11;
    }

    while (v7 != v11);
  }

  else
  {
    v12 = 32;
    do
    {
      v13 = *(a1 + v12);
      sub_261D86824();
      sub_261D86A14();
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      v12 += 8;
      --v7;
    }

    while (v7);
  }

LABEL_24:

  v14 = [objc_allocWithZone(MEMORY[0x277CD4060]) initWithCode:3 userActivity:0];
  sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
  v15 = sub_261D865C4();

  [v14 setTasks_];

  v23 = v14;
  v16 = sub_261D86494();
  v17 = sub_261D866C4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = -1;
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    v20 = [v23 tasks];
    if (v20)
    {
      v21 = v20;
      v22 = sub_261D865D4();

      if (v22 >> 62)
      {
        v18 = sub_261D86954();
      }

      else
      {
        v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    *(v19 + 4) = v18;

    _os_log_impl(&dword_261D56000, v16, v17, "Return success search result {tasksCount: %ld}", v19, 0xCu);
    MEMORY[0x26671EBF0](v19, -1, -1);
  }

  else
  {

    v16 = v23;
  }

  a2(v23);
}

void sub_261D6F590(uint64_t a1, uint64_t a2, void (*a3)(NSObject *))
{
  v3 = sub_261D86214();
  v4 = sub_261D861F4();
  if (qword_27FEF3FA0 != -1)
  {
    goto LABEL_52;
  }

LABEL_2:
  v5 = sub_261D864A4();
  v6 = __swift_project_value_buffer(v5, qword_27FEF45E0);

  v7 = sub_261D86494();
  v8 = sub_261D866C4();
  v9 = v3 >> 62;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (!v9)
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  while (1)
  {

    v12 = sub_261D86494();
    v8 = sub_261D866C4();
    v13 = v4 >> 62;
    if (os_log_type_enabled(v12, v8))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if (v13)
      {
        v15 = sub_261D86954();
      }

      else
      {
        v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 4) = v15;

      _os_log_impl(&dword_261D56000, v12, v8, "Search dataSource returned %ld smartLists", v14, 0xCu);
      MEMORY[0x26671EBF0](v14, -1, -1);
    }

    else
    {
    }

    if (v9)
    {
      v10 = sub_261D86954();
    }

    else
    {
      v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = MEMORY[0x277D84F90];
    v43 = v6;
    if (v10)
    {
      v49 = MEMORY[0x277D84F90];
      v7 = &v49;
      sub_261D86A34();
      if (v10 < 0)
      {
        __break(1u);
        goto LABEL_55;
      }

      v39 = v4 >> 62;
      v40 = v4;
      v16 = 0;
      v8 = OS_LOG_TYPE_DEFAULT;
      v17 = v3 & 0xC000000000000001;
      v18 = v3;
      v44 = (v3 & 0xFFFFFFFFFFFFFF8);
      do
      {
        v4 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v17)
        {
          v19 = MEMORY[0x26671E4C0](v16, v18);
        }

        else
        {
          if (v16 >= v44[2])
          {
            goto LABEL_50;
          }

          v19 = *(v18 + 8 * v16 + 32);
        }

        v20 = v19;
        v47 = v19;
        sub_261D6FBDC(&v47, &v48);

        sub_261D86A14();
        v3 = *(v49 + 16);
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        ++v16;
      }

      while (v4 != v10);
      v21 = v49;
      v6 = v43;
      v4 = v40;
      v3 = v18;
      v9 = MEMORY[0x277D84F90];
      v22 = v40 & 0xFFFFFFFFFFFFFF8;
      if (v39)
      {
        break;
      }

      goto LABEL_24;
    }

    v8 = OS_LOG_TYPE_DEFAULT;
    v21 = MEMORY[0x277D84F90];
    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v13)
    {
      break;
    }

LABEL_24:
    v10 = *(v22 + 16);
    if (!v10)
    {
      goto LABEL_36;
    }

LABEL_25:
    v41 = v21;
    v49 = v9;
    v7 = &v49;
    sub_261D86A34();
    if ((v10 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v24 = v4 & 0xC000000000000001;
      v25 = v4;
      v45 = (v4 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v4 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24)
        {
          v26 = MEMORY[0x26671E4C0](v23, v25);
        }

        else
        {
          if (v23 >= v45[2])
          {
            goto LABEL_51;
          }

          v26 = *(v25 + 8 * v23 + 32);
        }

        v27 = v26;
        v47 = v26;
        sub_261D70018(&v47, &v48);

        sub_261D86A14();
        v3 = *(v49 + 16);
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        ++v23;
        if (v4 == v10)
        {

          v28 = v49;
          v21 = v41;
          goto LABEL_37;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
      goto LABEL_2;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    v11 = sub_261D86954();
LABEL_5:
    *(v10 + 4) = v11;

    _os_log_impl(&dword_261D56000, v7, v8, "Search dataSource returned %ld lists", v10, 0xCu);
    MEMORY[0x26671EBF0](v10, -1, -1);
  }

  v10 = sub_261D86954();
  if (v10)
  {
    goto LABEL_25;
  }

LABEL_36:

  v28 = MEMORY[0x277D84F90];
LABEL_37:
  v29 = [objc_allocWithZone(MEMORY[0x277CD4060]) initWithCode:3 userActivity:0];
  v49 = v21;
  sub_261D6DCC4(v28);
  sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
  v30 = sub_261D865C4();

  [v29 setTaskLists_];

  v46 = v29;
  v31 = sub_261D86494();
  v32 = sub_261D866C4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = -1;
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    v35 = [v46 taskLists];
    if (v35)
    {
      v36 = v35;
      v37 = sub_261D865D4();

      if (v37 >> 62)
      {
        v33 = sub_261D86954();
      }

      else
      {
        v33 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = a3;
    }

    else
    {
      v38 = a3;
    }

    *(v34 + 4) = v33;

    _os_log_impl(&dword_261D56000, v31, v32, "Return success search result {taskListsCount: %ld}", v34, 0xCu);
    MEMORY[0x26671EBF0](v34, -1, -1);
  }

  else
  {

    v31 = v46;
    v38 = a3;
  }

  v38(v46);
}

void sub_261D6FBDC(void **a1@<X0>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4438, &qword_261D88170);
  v4 = sub_261D86194();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261D88100;
  v9 = (v8 + v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46F0, &qword_261D88178) + 48);
  *v9 = [v3 objectID];
  v11 = *MEMORY[0x277D44F58];
  v12 = sub_261D86184();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  v13 = *(v5 + 104);
  v13(v9, *MEMORY[0x277D44F30], v4);
  v9[v6] = 0;
  v13(&v9[v6], *MEMORY[0x277D44EF0], v4);
  sub_261D86254();
  v14 = [objc_opt_self() defaultFetchOptions];
  sub_261D86244();
  if (v30)
  {

    if (qword_27FEF3FA0 != -1)
    {
      swift_once();
    }

    v15 = sub_261D864A4();
    __swift_project_value_buffer(v15, qword_27FEF45E0);
    v16 = v3;
    v17 = v30;
    v18 = sub_261D86494();
    v19 = sub_261D866A4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v20 = 138412546;
      v23 = [v16 objectID];
      *(v20 + 4) = v23;
      *v21 = v23;
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v24 = sub_261D86BA4();
      v26 = sub_261D8464C(v24, v25, &v32);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_261D56000, v18, v19, "Error fetching reminders for list {listID: %@, error: %s", v20, 0x16u);
      sub_261D646F8(v21, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26671EBF0](v22, -1, -1);
      MEMORY[0x26671EBF0](v20, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v27 = v16;
    v28 = sub_261D86654();
  }

  else
  {

    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v29 = v3;
    v28 = sub_261D86664();
  }

  *a3 = v28;
}

void sub_261D70018(void **a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_261D86254();
  sub_261D86234();
  if (v3)
  {
    if (qword_27FEF3FA0 != -1)
    {
      swift_once();
    }

    v6 = sub_261D864A4();
    __swift_project_value_buffer(v6, qword_27FEF45E0);
    v7 = v5;
    v8 = v3;
    v9 = sub_261D86494();
    v10 = sub_261D866A4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v11 = 138412546;
      v13 = [v7 objectID];
      *(v11 + 4) = v13;
      *v12 = v13;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      v14 = sub_261D86BA4();
      v16 = a3;
      v17 = sub_261D8464C(v14, v15, &v22);

      *(v11 + 14) = v17;
      a3 = v16;
      _os_log_impl(&dword_261D56000, v9, v10, "Error fetching reminders for smartList {smartListID: %@, error: %s", v11, 0x16u);
      sub_261D646F8(v12, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26671EBF0](v21, -1, -1);
      MEMORY[0x26671EBF0](v11, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v18 = v7;
    v19 = sub_261D86634();
  }

  else
  {
    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v20 = v5;
    v19 = sub_261D86634();
  }

  *a3 = v19;
}

void sub_261D702DC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_261D703A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSearchForNotebookItemsIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_261D70458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4700, &qword_261D88188);
    v3 = sub_261D86B34();
    v4 = a1 + 32;

    while (1)
    {
      sub_261D64690(v4, &v13, &qword_27FEF41F8, &qword_261D87DB0);
      v5 = v13;
      v6 = v14;
      result = sub_261D76DC8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_261D75950(&v15, (v3[7] + 32 * result));
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

unint64_t sub_261D70588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46F8, &qword_261D88180);
    v3 = sub_261D86B34();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_261D76DC8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void sub_261D7068C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  if (qword_27FEF3FA0 != -1)
  {
    swift_once();
  }

  v5 = sub_261D864A4();
  __swift_project_value_buffer(v5, qword_27FEF45E0);
  v6 = a1;
  v7 = sub_261D86494();
  v8 = sub_261D866C4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_261D56000, v7, v8, "SiriKit asked for resolving itemType {intent: %@}", v9, 0xCu);
    sub_261D646F8(v10, &qword_27FEF4200, &unk_261D878D0);
    MEMORY[0x26671EBF0](v10, -1, -1);
    MEMORY[0x26671EBF0](v9, -1, -1);
  }

  v12 = [v6 itemType];
  if (v12 > 1)
  {
    if (v12 != 3)
    {
      if (v12 != 2)
      {
        goto LABEL_19;
      }

      if ((sub_261D867C4() & 1) == 0)
      {
        v13 = [objc_opt_self() successWithResolvedNotebookItemType_];
        goto LABEL_13;
      }
    }

LABEL_12:
    v13 = [objc_opt_self() successWithResolvedNotebookItemType_];
    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  if (v12 != 1)
  {
LABEL_19:
    v19 = MEMORY[0x277D84F90];
    v20 = sub_261D70458(MEMORY[0x277D84F90]);
    v21 = sub_261D70458(v19);
    _Block_release(a3);
    sub_261D6751C("unknown item type", 17, 2, v20, v21);
    __break(1u);
    return;
  }

  sub_261D597EC(0, &unk_27FEF4710, 0x277CD3E10);
  v13 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_13:
  v22 = v13;
  v14 = sub_261D86494();
  v15 = sub_261D866C4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v22;
    *v17 = v22;
    v18 = v22;
    _os_log_impl(&dword_261D56000, v14, v15, "Resolved itemType {result: %@}", v16, 0xCu);
    sub_261D646F8(v17, &qword_27FEF4200, &unk_261D878D0);
    MEMORY[0x26671EBF0](v17, -1, -1);
    MEMORY[0x26671EBF0](v16, -1, -1);
  }

  (a3)[2](a3, v22);
}

uint64_t sub_261D709EC(void *a1, char *a2, void (**a3)(void, void))
{
  v608 = a2;
  v583 = sub_261D85DC4();
  v582 = *(v583 - 8);
  MEMORY[0x28223BE20](v583);
  v581 = &v542 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4680, &qword_261D88138);
  MEMORY[0x28223BE20](v6 - 8);
  v576 = &v542 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v547 = &v542 - v9;
  MEMORY[0x28223BE20](v10);
  v559 = &v542 - v11;
  MEMORY[0x28223BE20](v12);
  v558 = &v542 - v13;
  MEMORY[0x28223BE20](v14);
  v568 = &v542 - v15;
  v602 = sub_261D85C44();
  v615 = *(v602 - 8);
  MEMORY[0x28223BE20](v602);
  v580 = &v542 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v569 = &v542 - v18;
  MEMORY[0x28223BE20](v19);
  v567 = &v542 - v20;
  v604 = sub_261D85D24();
  v605 = *(v604 - 8);
  MEMORY[0x28223BE20](v604);
  v562 = &v542 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v575 = &v542 - v23;
  MEMORY[0x28223BE20](v24);
  v574 = &v542 - v25;
  MEMORY[0x28223BE20](v26);
  v544 = &v542 - v27;
  MEMORY[0x28223BE20](v28);
  v546 = &v542 - v29;
  MEMORY[0x28223BE20](v30);
  v557 = &v542 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v542 - v33;
  MEMORY[0x28223BE20](v35);
  v594 = &v542 - v36;
  MEMORY[0x28223BE20](v37);
  v566 = &v542 - v38;
  MEMORY[0x28223BE20](v39);
  v618 = &v542 - v40;
  MEMORY[0x28223BE20](v41);
  v617 = &v542 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4780, &unk_261D88140);
  MEMORY[0x28223BE20](v43 - 8);
  v585 = &v542 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v600 = &v542 - v46;
  v603 = sub_261D85DD4();
  v601 = *(v603 - 8);
  MEMORY[0x28223BE20](v603);
  v606 = &v542 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
  MEMORY[0x28223BE20](v48 - 8);
  v584 = &v542 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v591 = (&v542 - v51);
  MEMORY[0x28223BE20](v52);
  v590 = &v542 - v53;
  MEMORY[0x28223BE20](v54);
  v589 = (&v542 - v55);
  MEMORY[0x28223BE20](v56);
  v616 = (&v542 - v57);
  MEMORY[0x28223BE20](v58);
  v588 = &v542 - v59;
  MEMORY[0x28223BE20](v60);
  v610 = &v542 - v61;
  MEMORY[0x28223BE20](v62);
  v599 = &v542 - v63;
  MEMORY[0x28223BE20](v64);
  v587 = &v542 - v65;
  MEMORY[0x28223BE20](v66);
  v614 = &v542 - v67;
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4688, &unk_261D88150);
  MEMORY[0x28223BE20](v556);
  v597 = &v542 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v561 = &v542 - v70;
  MEMORY[0x28223BE20](v71);
  v625 = &v542 - v72;
  MEMORY[0x28223BE20](v73);
  v555 = &v542 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4690, &qword_261D87F08);
  MEMORY[0x28223BE20](v75 - 8);
  v586 = &v542 - v76;
  v626 = sub_261D863C4();
  v621 = *(v626 - 8);
  MEMORY[0x28223BE20](v626);
  v565 = &v542 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v552 = &v542 - v79;
  MEMORY[0x28223BE20](v80);
  v564 = &v542 - v81;
  MEMORY[0x28223BE20](v82);
  v611 = &v542 - v83;
  v623 = sub_261D86194();
  v84 = *(v623 - 8);
  MEMORY[0x28223BE20](v623);
  v578 = &v542 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v573 = &v542 - v87;
  MEMORY[0x28223BE20](v88);
  v572 = &v542 - v89;
  MEMORY[0x28223BE20](v90);
  v560 = &v542 - v91;
  MEMORY[0x28223BE20](v92);
  v593 = &v542 - v93;
  MEMORY[0x28223BE20](v94);
  v592 = &v542 - v95;
  MEMORY[0x28223BE20](v96);
  v595 = &v542 - v97;
  MEMORY[0x28223BE20](v98);
  v596 = &v542 - v99;
  MEMORY[0x28223BE20](v100);
  v543 = &v542 - v101;
  MEMORY[0x28223BE20](v102);
  v571 = &v542 - v103;
  MEMORY[0x28223BE20](v104);
  v570 = &v542 - v105;
  MEMORY[0x28223BE20](v106);
  v579 = (&v542 - v107);
  MEMORY[0x28223BE20](v108);
  v620 = &v542 - v109;
  MEMORY[0x28223BE20](v110);
  v553 = (&v542 - v111);
  MEMORY[0x28223BE20](v112);
  v554 = (&v542 - v113);
  MEMORY[0x28223BE20](v114);
  v563 = &v542 - v115;
  MEMORY[0x28223BE20](v116);
  v613 = &v542 - v117;
  MEMORY[0x28223BE20](v118);
  v612 = &v542 - v119;
  v598 = swift_allocObject();
  *(v598 + 16) = a3;
  v577 = a3;
  _Block_copy(a3);
  if (qword_27FEF3FA0 != -1)
  {
    swift_once();
  }

  v120 = sub_261D864A4();
  v121 = __swift_project_value_buffer(v120, qword_27FEF45E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41E8, &qword_261D87C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261D87AE0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_261D597EC(0, &unk_27FEF46A0, 0x277CD4058);
  *(inited + 48) = a1;
  v123 = a1;
  v124 = sub_261D70458(inited);
  swift_setDeallocating();
  sub_261D646F8(inited + 32, &qword_27FEF41F8, &qword_261D87DB0);
  sub_261D67278("Search task via Siri {intent: %@}", 33, 2, v124);

  v125 = v123;
  v609 = v121;
  v126 = sub_261D86494();
  v127 = sub_261D866C4();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *v128 = 138412290;
    *(v128 + 4) = v125;
    *v129 = v125;
    v130 = v125;
    _os_log_impl(&dword_261D56000, v126, v127, "SiriKit asked for handling search {intent: %@}", v128, 0xCu);
    sub_261D646F8(v129, &qword_27FEF4200, &unk_261D878D0);
    MEMORY[0x26671EBF0](v129, -1, -1);
    MEMORY[0x26671EBF0](v128, -1, -1);
  }

  v630 = MEMORY[0x277D84F90];
  v131 = [v125 title];
  if (v131)
  {
    v132 = v131;
    v133 = [v131 spokenPhrase];

    v134 = sub_261D86534();
    v136 = v135;
  }

  else
  {
    v134 = 0;
    v136 = 0;
  }

  v137 = [v125 content];
  if (v137)
  {
    v138 = v137;
    v139 = sub_261D86534();
    v141 = v140;
  }

  else
  {
    v139 = 0;
    v141 = 0;
  }

  v142 = v625;
  v619 = v84;
  v622 = v125;
  v545 = v34;
  if (!(v136 | v141))
  {
    v143 = MEMORY[0x277D84F90];
    v607 = MEMORY[0x277D84F90];
    v144 = v623;
    v145 = v84;
    v146 = v626;
    v147 = v621;
    goto LABEL_36;
  }

  v148 = 0;
  v627 = v134;
  v628[0] = v136;
  v628[1] = v139;
  v628[2] = v141;
  v149 = MEMORY[0x277D84F90];
LABEL_14:
  v150 = &v628[2 * v148];
  while (++v148 != 3)
  {
    v151 = v150 + 2;
    v152 = *v150;
    v150 += 2;
    if (v152)
    {
      v153 = *(v151 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = sub_261D842B4(0, *(v149 + 2) + 1, 1, v149);
      }

      v155 = *(v149 + 2);
      v154 = *(v149 + 3);
      if (v155 >= v154 >> 1)
      {
        v149 = sub_261D842B4((v154 > 1), v155 + 1, 1, v149);
      }

      *(v149 + 2) = v155 + 1;
      v156 = &v149[16 * v155];
      *(v156 + 4) = v153;
      *(v156 + 5) = v152;
      goto LABEL_14;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46C0, &qword_261D87BF0);
  swift_arrayDestroy();
  v629 = v149;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46C8, &qword_261D88168);
  sub_261D758EC();
  v157 = sub_261D864F4();
  v158 = v84;
  v160 = v159;

  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78);
  v162 = *(v161 + 48);
  v163 = v612;
  v607 = v157;
  *v612 = v157;
  *(v163 + 1) = v160;
  v164 = *MEMORY[0x277D45270];
  v165 = sub_261D862B4();
  v166 = *(*(v165 - 8) + 104);
  v166(&v163[v162], v164, v165);
  v167 = *MEMORY[0x277D44F10];
  v168 = *(v158 + 104);
  v551 = v158 + 104;
  v550 = v168;
  v168(v163, v167, v623);

  v624 = sub_261D8428C(0, 1, 1, MEMORY[0x277D84F90]);
  v170 = v624[2];
  v169 = v624[3];
  if (v170 >= v169 >> 1)
  {
    v624 = sub_261D8428C((v169 > 1), v170 + 1, 1, v624);
  }

  v171 = v624;
  v624[2] = v170 + 1;
  v172 = *(v619 + 32);
  v549 = (*(v619 + 80) + 32) & ~*(v619 + 80);
  v548 = *(v619 + 72);
  v173 = v171 + v549 + v548 * v170;
  v174 = v612;
  v144 = v623;
  v612 = v172;
  (v172)(v173, v174, v623);
  v630 = v171;
  v175 = *(v161 + 48);
  v176 = v613;
  *v613 = v607;
  *(v176 + 1) = v160;
  v166(&v176[v175], v164, v165);
  v550(v176, v167, v144);
  v177 = sub_261D8428C(0, 1, 1, MEMORY[0x277D84F90]);
  v179 = v177[2];
  v178 = v177[3];
  if (v179 >= v178 >> 1)
  {
    v177 = sub_261D8428C((v178 > 1), v179 + 1, 1, v177);
  }

  v142 = v625;
  v146 = v626;
  v147 = v621;
  v177[2] = v179 + 1;
  v607 = v177;
  (v612)(v177 + v549 + v179 * v548, v613, v144);
  v180 = [v622 title];
  v145 = v619;
  v143 = v624;
  if (v180)
  {
    v181 = v180;
    v182 = [v180 vocabularyIdentifier];

    if (v182)
    {
      v183 = sub_261D86534();
      v185 = v184;

      if (v183 == 0xD000000000000011 && 0x8000000261D8D570 == v185)
      {

        v143 = v624;
        v186 = v563;
LABEL_32:
        v188 = *MEMORY[0x277D45060];
        v189 = sub_261D861D4();
        (*(*(v189 - 8) + 104))(v186, v188, v189);
        v550(v186, *MEMORY[0x277D44F40], v144);
        v191 = v607[2];
        v190 = v607[3];
        if (v191 >= v190 >> 1)
        {
          v607 = sub_261D8428C((v190 > 1), v191 + 1, 1, v607);
        }

        v192 = v607;
        v607[2] = v191 + 1;
        (v612)(v192 + v549 + v191 * v548, v186, v144);
        goto LABEL_35;
      }

      v187 = sub_261D86B84();

      v143 = v624;
      v186 = v563;
      if (v187)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_35:
  v125 = v622;
LABEL_36:
  v193 = [v125 notebookItemIdentifier];
  if (!v193)
  {
    v208 = v125;
    v209 = sub_261D86494();
    v210 = sub_261D866A4();

    if (os_log_type_enabled(v209, v210))
    {
      v211 = v142;
      v212 = v143;
      v213 = swift_slowAlloc();
      v214 = v145;
      v215 = swift_slowAlloc();
      *v213 = 138412290;
      *(v213 + 4) = v208;
      *v215 = v208;
      v216 = v208;
      _os_log_impl(&dword_261D56000, v209, v210, "[Announce Reminders] notebookIdentifier not found in intent: %@", v213, 0xCu);
      sub_261D646F8(v215, &qword_27FEF4200, &unk_261D878D0);
      v217 = v215;
      v145 = v214;
      MEMORY[0x26671EBF0](v217, -1, -1);
      v218 = v213;
      v143 = v212;
      v142 = v211;
      MEMORY[0x26671EBF0](v218, -1, -1);
    }

LABEL_65:
    v269 = [v125 status] == 2;
    v270 = v620;
    *v620 = v269;
    v271 = *MEMORY[0x277D44EF0];
    v272 = *(v145 + 104);
    v626 = v145 + 104;
    v272(v270, v271, v144);
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_261D8428C(0, v143[2] + 1, 1, v143);
    }

    v274 = v143[2];
    v273 = v143[3];
    if (v274 >= v273 >> 1)
    {
      v143 = sub_261D8428C((v273 > 1), v274 + 1, 1, v143);
    }

    v143[2] = v274 + 1;
    v275 = *(v145 + 32);
    v613 = ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v612 = *(v145 + 72);
    v621 = v145 + 32;
    v620 = v275;
    (v275)(&v613[v143 + v612 * v274], v270, v144);
    v630 = v143;
    swift_endAccess();
    v276 = [v125 location];
    v611 = v272;
    if (v276 && (v277 = v276, v278 = [v276 name], v277, v278))
    {
      v279 = sub_261D86534();
      v281 = v280;

      if ([v125 locationSearchType] == 1)
      {
        v282 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78) + 48);
        v283 = v579;
        *v579 = v279;
        v283[1] = v281;
        v284 = *MEMORY[0x277D45270];
        v285 = sub_261D862B4();
        (*(*(v285 - 8) + 104))(v283 + v282, v284, v285);
        v272(v283, *MEMORY[0x277D44F48], v144);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_261D8428C(0, v143[2] + 1, 1, v143);
        }

        v287 = v143[2];
        v286 = v143[3];
        v145 = v619;
        if (v287 >= v286 >> 1)
        {
          v143 = sub_261D8428C((v286 > 1), v287 + 1, 1, v143);
        }

        v143[2] = v287 + 1;
        (v620)(&v613[v143 + v287 * v612], v579, v144);
        v288 = v143;
        v630 = v143;
        swift_endAccess();
      }

      else
      {
        v288 = v143;
      }
    }

    else
    {
      v288 = v143;
    }

    v290 = *(v145 + 56);
    v289 = (v145 + 56);
    v586 = v290;
    (v290)(v142, 1, 1, v144);
    v291 = [v125 temporalEventTriggerTypes];
    v292 = [v125 temporalEventTriggerTypes];
    v293 = (v292 & 2) == 0;
    v294 = [v125 temporalEventTriggerTypes];
    if (v291)
    {
      v295 = v602;
      v296 = v288;
      if ((v292 & 2) != 0)
      {
        if ((v294 & 4) == 0)
        {
          v299 = v289;
          v293 = 0;
          v298 = v611;
          goto LABEL_90;
        }

        goto LABEL_96;
      }

      if ((v294 & 4) != 0)
      {
        goto LABEL_96;
      }

      sub_261D646F8(v142, &qword_27FEF4688, &unk_261D88150);
    }

    else
    {
      v295 = v602;
      if ((v292 & 2) == 0)
      {
        v296 = v288;
        if ((v294 & 4) != 0)
        {
          sub_261D646F8(v142, &qword_27FEF4688, &unk_261D88150);
LABEL_87:
          *v142 = 1;
          v298 = v611;
          (v611)(v142, *MEMORY[0x277D44ED8], v144);
          v299 = v289;
          (v586)(v142, 0, 1, v144);
LABEL_90:
          v300 = v578;
          *v578 = v293;
          (v298)(v300, *MEMORY[0x277D44EF8], v144);
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v296 = sub_261D8428C(0, v296[2] + 1, 1, v296);
          }

          v301 = v599;
          v303 = v296[2];
          v302 = v296[3];
          if (v303 >= v302 >> 1)
          {
            v296 = sub_261D8428C((v302 > 1), v303 + 1, 1, v296);
          }

          v296[2] = v303 + 1;
          (v620)(&v613[v296 + v303 * v612], v300, v144);
          v630 = v296;
          swift_endAccess();
          v304 = v616;
          v289 = v299;
LABEL_97:
          v305 = [v125 dateTime];
          if (!v305)
          {
            goto LABEL_189;
          }

          v306 = v305;
          v307 = [v305 allDay];
          if (v307)
          {
            v308 = v306;
            v309 = v307;
            LODWORD(v579) = [v307 BOOLValue];

            v306 = v308;
          }

          else
          {
            LODWORD(v579) = 0;
          }

          v310 = v588;
          v599 = v306;
          v311 = [v306 startDateComponents];
          v624 = v296;
          if (v311)
          {
            v312 = v311;
            sub_261D85BE4();

            v313 = 0;
          }

          else
          {
            v313 = 1;
          }

          v578 = v289;
          v314 = v615;
          v315 = *(v615 + 56);
          v315(v301, v313, 1, v295);
          v316 = v587;
          sub_261D7587C(v301, v587);
          v317 = *(v314 + 48);
          v588 = (v314 + 48);
          v616 = v317;
          if (v317(v316, 1, v295) == 1)
          {
            sub_261D646F8(v316, &qword_27FEF41B0, &unk_261D87DA0);
            v318 = 1;
            v319 = v614;
          }

          else
          {
            v319 = v614;
            sub_261D85BC4();
            (*(v314 + 8))(v316, v295);
            v318 = 0;
          }

          v320 = v606;
          v321 = 1;
          v315(v319, v318, 1, v295);
          v322 = [v599 endDateComponents];
          if (v322)
          {
            v323 = v322;
            sub_261D85BE4();

            v321 = 0;
          }

          v315(v304, v321, 1, v295);
          sub_261D7587C(v304, v310);
          if (v616(v310, 1, v295) == 1)
          {
            sub_261D646F8(v310, &qword_27FEF41B0, &unk_261D87DA0);
            v324 = 1;
            v325 = v610;
          }

          else
          {
            v325 = v610;
            sub_261D85BC4();
            (*(v615 + 8))(v310, v295);
            v324 = 0;
          }

          v315(v325, v324, 1, v295);
          v326 = v589;
          sub_261D64690(v614, v589, &qword_27FEF41B0, &unk_261D87DA0);
          v327 = v616(v326, 1, v295);
          v328 = v600;
          if (v327 == 1)
          {
            sub_261D646F8(v326, &qword_27FEF41B0, &unk_261D87DA0);
            v329 = v601;
            v330 = v603;
            (*(v601 + 56))(v328, 1, 1, v603);
          }

          else
          {
            sub_261D85C34();
            v325 = v610;
            (*(v615 + 8))(v326, v295);
            v329 = v601;
            v330 = v603;
            if ((*(v601 + 48))(v328, 1, v603) != 1)
            {
              (*(v329 + 32))(v320, v328, v330);
              goto LABEL_125;
            }
          }

          v331 = v584;
          sub_261D64690(v325, v584, &qword_27FEF41B0, &unk_261D87DA0);
          if (v616(v331, 1, v295) == 1)
          {
            sub_261D646F8(v331, &qword_27FEF41B0, &unk_261D87DA0);
            v332 = v585;
            (*(v329 + 56))(v585, 1, 1, v330);
          }

          else
          {
            v332 = v585;
            sub_261D85C34();
            (*(v615 + 8))(v331, v295);
            v333 = *(v329 + 48);
            if (v333(v332, 1, v330) != 1)
            {
              (*(v329 + 32))(v320, v332, v330);
LABEL_123:
              v334 = v600;
              v335 = v333(v600, 1, v330);
              v325 = v610;
              if (v335 != 1)
              {
                sub_261D646F8(v334, &unk_27FEF4780, &unk_261D88140);
              }

LABEL_125:
              sub_261D85CA4();
              sub_261D85CB4();
              v336 = v590;
              sub_261D64690(v614, v590, &qword_27FEF41B0, &unk_261D87DA0);
              if (v616(v336, 1, v295) == 1)
              {
                sub_261D646F8(v336, &qword_27FEF41B0, &unk_261D87DA0);
                v337 = v605;
              }

              else
              {
                v338 = v615;
                v339 = *(v615 + 32);
                v340 = v567;
                v339(v567, v336, v295);
                if (v579)
                {
                  v341 = v569;
                  sub_261D85BB4();
                  (*(v338 + 8))(v340, v295);
                  v339(v340, v341, v295);
                }

                __swift_project_boxed_opaque_existential_1(&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider], *&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24]);
                v342 = v594;
                sub_261D85E74();
                v343 = v568;
                sub_261D85D94();
                v344 = v605;
                v345 = *(v605 + 8);
                v346 = v604;
                v345(v342, v604);
                v347 = *(v344 + 48);
                if (v347(v343, 1, v346) == 1)
                {
                  v348 = v566;
                  sub_261D85CA4();
                  (*(v615 + 8))(v340, v295);
                  v349 = v617;
                  v345(v617, v346);
                  v350 = v348;
                  v337 = v344;
                  if (v347(v343, 1, v346) != 1)
                  {
                    sub_261D646F8(v343, &qword_27FEF4680, &qword_261D88138);
                  }
                }

                else
                {
                  (*(v615 + 8))(v340, v295);
                  v349 = v617;
                  v345(v617, v346);
                  v350 = v566;
                  (*(v344 + 32))(v566, v343, v346);
                  v337 = v344;
                }

                (*(v337 + 32))(v349, v350, v346);
                v125 = v622;
                v325 = v610;
                v295 = v602;
              }

              v351 = v325;
              v352 = v591;
              sub_261D64690(v351, v591, &qword_27FEF41B0, &unk_261D87DA0);
              if (v616(v352, 1, v295) == 1)
              {
                sub_261D646F8(v352, &qword_27FEF41B0, &unk_261D87DA0);
                v142 = v625;
                v353 = v604;
                v354 = &qword_27FEF4000;
                goto LABEL_150;
              }

              v355 = v615;
              v356 = *(v615 + 32);
              v357 = v580;
              v356(v580, v352, v295);
              if (v579)
              {
                v358 = v569;
                sub_261D85BB4();
                v359 = *(v355 + 8);
                v359(v357, v295);
                v356(v357, v358, v295);
                __swift_project_boxed_opaque_existential_1(&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider], *&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24]);
                v360 = v594;
                sub_261D85E74();
                v361 = v558;
                sub_261D85D94();
                v362 = v605;
                v363 = v355 + 8;
                v364 = v604;
                v616 = *(v605 + 8);
                (v616)(v360, v604);
                v600 = *(v362 + 48);
                if ((v600)(v361, 1, v364) != 1)
                {
                  v591 = v359;
                  v615 = v363;
                  v379 = *(v362 + 32);
                  v380 = v545;
                  v590 = v362 + 32;
                  v589 = v379;
                  (v379)(v545, v361, v364);
                  v381 = v582;
                  v382 = v581;
                  v383 = v583;
                  (*(v582 + 104))(v581, *MEMORY[0x277CC9968], v583);
                  v384 = v547;
                  sub_261D85DB4();
                  v385 = v382;
                  v386 = v384;
                  (*(v381 + 8))(v385, v383);
                  if ((v600)(v384, 1, v364) == 1)
                  {
                    (v616)(v380, v364);
                    v591(v580, v602);
                    sub_261D646F8(v384, &qword_27FEF4680, &qword_261D88138);
                    v387 = v618;
                    v388 = v618;
                  }

                  else
                  {
                    v388 = v544;
                    sub_261D85CC4();
                    v389 = v616;
                    (v616)(v380, v364);
                    v591(v580, v602);
                    v387 = v618;
                    v389(v618, v364);
                    v389(v386, v364);
                  }

                  v142 = v625;
                  v125 = v622;
                  v354 = &qword_27FEF4000;
                  v390 = v546;
                  v391 = v589;
                  (v589)(v546, v388, v364);
                  v391(v387, v390, v364);
                  v353 = v364;
                  v337 = v605;
LABEL_150:
                  v392 = &v608[v354[194]];
                  if (sub_261D867C4())
                  {
                    v393 = v594;
                    sub_261D85CA4();
                    v394 = *(v337 + 8);
                    v395 = v617;
                    v394(v617, v353);
                    v616 = *(v337 + 32);
                    v616(v395, v393, v353);
                    __swift_project_boxed_opaque_existential_1(v392, *(v392 + 3));
                    v396 = v604;
                    sub_261D85E74();
                    v397 = v574;
                    sub_261D85D84();
                    v394(v393, v396);
                    v398 = v582;
                    v399 = v581;
                    v400 = v397;
                    v401 = v583;
                    (*(v582 + 104))(v581, *MEMORY[0x277CC9968], v583);
                    v402 = v576;
                    sub_261D85DB4();
                    (*(v398 + 8))(v399, v401);
                    v353 = v396;
                    v337 = v605;
                    if ((*(v605 + 48))(v402, 1, v353) == 1)
                    {
                      v394(v400, v353);
                      sub_261D646F8(v402, &qword_27FEF4680, &qword_261D88138);
                      v403 = v618;
                      v404 = v618;
                    }

                    else
                    {
                      v404 = v562;
                      sub_261D85CC4();
                      v394(v400, v353);
                      v403 = v618;
                      v394(v618, v353);
                      v394(v402, v353);
                    }

                    v405 = v575;
                    v406 = v616;
                    v616(v575, v404, v353);
                    v406(v403, v405, v353);
                    v142 = v625;
                    v125 = v622;
                  }

                  v407 = [v125 dateSearchType];
                  if (v407 <= 1)
                  {
                    v144 = v623;
                    v408 = v617;
                    if (!v407)
                    {

                      v409 = *(v337 + 8);
                      v409(v618, v353);
                      v409(v408, v353);
                      (*(v601 + 8))(v606, v603);
                      sub_261D646F8(v610, &qword_27FEF41B0, &unk_261D87DA0);
                      sub_261D646F8(v614, &qword_27FEF41B0, &unk_261D87DA0);
                      v410 = v619;
                      v411 = v596;
                      v296 = v624;
LABEL_196:
                      v488 = v597;
                      sub_261D64690(v142, v597, &qword_27FEF4688, &unk_261D88150);
                      if ((*(v410 + 48))(v488, 1, v144) == 1)
                      {
                        sub_261D646F8(v488, &qword_27FEF4688, &unk_261D88150);
                      }

                      else
                      {
                        (v620)(v411, v488, v144);
                        (*(v410 + 16))(v595, v411, v144);
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v296 = sub_261D8428C(0, v296[2] + 1, 1, v296);
                        }

                        v490 = v296[2];
                        v489 = v296[3];
                        if (v490 >= v489 >> 1)
                        {
                          v296 = sub_261D8428C((v489 > 1), v490 + 1, 1, v296);
                        }

                        v296[2] = v490 + 1;
                        (v620)(&v613[v296 + v490 * v612], v595, v144);
                        v630 = v296;
                        swift_endAccess();
                        (*(v410 + 8))(v411, v144);
                      }

                      v491 = v622;
                      v492 = [v622 taskPriority];
                      v493 = v607;
                      v494 = v611;
                      if (!v492)
                      {
LABEL_217:
                        v501 = [v491 itemType];
                        v502 = sub_261D86494();
                        if (v501 == 2)
                        {
                          v517 = sub_261D866C4();
                          if (os_log_type_enabled(v502, v517))
                          {
                            v518 = swift_slowAlloc();
                            v519 = swift_slowAlloc();
                            v629 = v519;
                            *v518 = 136315138;

                            v521 = MEMORY[0x26671E0C0](v520, v144);
                            v523 = v522;

                            v524 = sub_261D8464C(v521, v523, &v629);

                            *(v518 + 4) = v524;
                            _os_log_impl(&dword_261D56000, v502, v517, "Consulting Search datasource for lists {itemType: taskList, criteria: %s}", v518, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v519);
                            MEMORY[0x26671EBF0](v519, -1, -1);
                            MEMORY[0x26671EBF0](v518, -1, -1);
                          }

                          v525 = v608;
                          v526 = *&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource + 24];
                          v527 = *&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource + 32];
                          __swift_project_boxed_opaque_existential_1(&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource], v526);
                          v528 = swift_allocObject();
                          v528[2] = v525;
                          v528[3] = sub_261D640E0;
                          v528[4] = v598;
                          v529 = *(v527 + 32);

                          v530 = v525;
                          v529(v493, sub_261D75830, v528, v526, v527);
                        }

                        else
                        {
                          if (v501 != 3)
                          {
                            v531 = sub_261D866B4();
                            if (os_log_type_enabled(v502, v531))
                            {
                              v532 = swift_slowAlloc();
                              *v532 = 0;
                              _os_log_impl(&dword_261D56000, v502, v531, "Unhandled itemType. Should have been cleaned up in resolve(). Return failure search result.", v532, 2u);
                              MEMORY[0x26671EBF0](v532, -1, -1);
                            }

                            v533 = [objc_allocWithZone(MEMORY[0x277CD4060]) initWithCode:4 userActivity:0];
                            (v577)[2](v577, v533);

                            goto LABEL_229;
                          }

                          v503 = v296;
                          v504 = sub_261D866C4();
                          if (os_log_type_enabled(v502, v504))
                          {
                            v505 = swift_slowAlloc();
                            v506 = swift_slowAlloc();
                            v629 = v506;
                            *v505 = 136315138;

                            v508 = MEMORY[0x26671E0C0](v507, v144);
                            v510 = v509;

                            v511 = sub_261D8464C(v508, v510, &v629);

                            *(v505 + 4) = v511;
                            _os_log_impl(&dword_261D56000, v502, v504, "Consulting Search datasource for reminders {itemType: task, criteria: %s}", v505, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v506);
                            MEMORY[0x26671EBF0](v506, -1, -1);
                            MEMORY[0x26671EBF0](v505, -1, -1);
                          }

                          v512 = *&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource + 24];
                          v513 = *&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource + 32];
                          __swift_project_boxed_opaque_existential_1(&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource], v512);
                          v514 = swift_allocObject();
                          v515 = v598;
                          *(v514 + 16) = sub_261D640E0;
                          *(v514 + 24) = v515;
                          v516 = *(v513 + 24);

                          v516(v503, sub_261D75874, v514, v512, v513);
                        }

LABEL_229:
                        sub_261D646F8(v625, &qword_27FEF4688, &unk_261D88150);
                      }

                      if (v492 == 1)
                      {
                        *v593 = 0;
                        v494();
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v296 = sub_261D8428C(0, v296[2] + 1, 1, v296);
                        }

                        v496 = v296[2];
                        v495 = v296[3];
                        if (v496 >= v495 >> 1)
                        {
                          v296 = sub_261D8428C((v495 > 1), v496 + 1, 1, v296);
                        }

                        v296[2] = v496 + 1;
                        v497 = &v613[v296 + v496 * v612];
                        v498 = &v625;
LABEL_216:
                        (v620)(v497, *(v498 - 32), v144);
                        v630 = v296;
                        swift_endAccess();
                        goto LABEL_217;
                      }

                      if (v492 == 2)
                      {
                        *v592 = 1;
                        v494();
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v296 = sub_261D8428C(0, v296[2] + 1, 1, v296);
                        }

                        v500 = v296[2];
                        v499 = v296[3];
                        if (v500 >= v499 >> 1)
                        {
                          v296 = sub_261D8428C((v499 > 1), v500 + 1, 1, v296);
                        }

                        v296[2] = v500 + 1;
                        v497 = &v613[v296 + v500 * v612];
                        v498 = &v624;
                        goto LABEL_216;
                      }

                      v536 = MEMORY[0x277D84F90];
                      v537 = sub_261D70458(MEMORY[0x277D84F90]);
                      v538 = sub_261D70458(v536);

                      _Block_release(v577);
                      v539 = "unknown task priority";
                      v540 = 21;
                      goto LABEL_233;
                    }

                    v437 = v606;
                    if (v407 == 1)
                    {
                      v438 = v561;
                      sub_261D64690(v142, v561, &qword_27FEF4688, &unk_261D88150);
                      v410 = v619;
                      v144 = v623;
                      v439 = (*(v619 + 48))(v438, 1, v623);
                      v440 = v560;
                      v441 = v611;
                      v442 = v599;
                      if (v439 == 1)
                      {
                        sub_261D646F8(v438, &qword_27FEF4688, &unk_261D88150);
LABEL_191:
                        v476 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF46B0, &qword_261D88160) + 48);
                        v477 = *(v337 + 16);
                        v477(v440, v617, v353);
                        v478 = *(v337 + 56);
                        v478(v440, 0, 1, v353);
                        v477(&v440[v476], v618, v353);
                        v478(&v440[v476], 0, 1, v353);
                        v144 = v623;
                        (v441)(v440, *MEMORY[0x277D44F38], v623);
                        swift_beginAccess();
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v411 = v596;
                        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                        {
                          v624 = sub_261D8428C(0, v624[2] + 1, 1, v624);
                        }

                        v480 = v603;
                        v482 = v624[2];
                        v481 = v624[3];
                        v483 = v605;
                        if (v482 >= v481 >> 1)
                        {
                          v624 = sub_261D8428C((v481 > 1), v482 + 1, 1, v624);
                        }

                        v484 = v624;
                        v624[2] = v482 + 1;
                        (v620)(&v613[v484 + v482 * v612], v440, v144);
                        v630 = v484;
                        swift_endAccess();

                        v485 = *(v483 + 8);
                        v486 = v604;
                        v485(v618, v604);
                        v485(v617, v486);
                        v487 = v480;
                        v296 = v484;
                        (*(v601 + 8))(v606, v487);
                        sub_261D646F8(v610, &qword_27FEF41B0, &unk_261D87DA0);
                        sub_261D646F8(v614, &qword_27FEF41B0, &unk_261D87DA0);
                        goto LABEL_196;
                      }

                      if ((*(v410 + 88))(v438, v144) != *MEMORY[0x277D44ED8])
                      {
                        (*(v410 + 8))(v438, v144);
                        goto LABEL_191;
                      }

                      (*(v410 + 96))(v438, v144);
                      if ((*v438 & 1) == 0)
                      {

                        v535 = *(v337 + 8);
                        v535(v618, v353);
                        v535(v617, v353);
                        (*(v601 + 8))(v437, v603);
                        sub_261D646F8(v610, &qword_27FEF41B0, &unk_261D87DA0);
                        sub_261D646F8(v614, &qword_27FEF41B0, &unk_261D87DA0);
                        v410 = v619;
                        v411 = v596;
                        v296 = v624;
                        goto LABEL_196;
                      }

                      v464 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF46B0, &qword_261D88160) + 48);
                      v465 = *(v337 + 16);
                      v466 = v543;
                      v467 = v617;
                      v465(v543, v617, v353);
                      v468 = *(v337 + 56);
                      v468(v466, 0, 1, v353);
                      v465(&v466[v464], v618, v353);
                      v468(&v466[v464], 0, 1, v353);
                      v144 = v623;
                      (v441)(v466, *MEMORY[0x277D44F38], v623);
                      swift_beginAccess();
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v624 = sub_261D8428C(0, v624[2] + 1, 1, v624);
                      }

                      v469 = v603;
                      v471 = v624[2];
                      v470 = v624[3];
                      v472 = v605;
                      if (v471 >= v470 >> 1)
                      {
                        v624 = sub_261D8428C((v470 > 1), v471 + 1, 1, v624);
                      }

                      v473 = v624;
                      v624[2] = v471 + 1;
                      (v620)(&v613[v473 + v471 * v612], v466, v144);
                      v630 = v473;
                      swift_endAccess();

                      v474 = *(v472 + 8);
                      v474(v618, v353);
                      v474(v467, v353);
                      v475 = v469;
                      v296 = v473;
                      (*(v601 + 8))(v606, v475);
                      sub_261D646F8(v610, &qword_27FEF41B0, &unk_261D87DA0);
                      sub_261D646F8(v614, &qword_27FEF41B0, &unk_261D87DA0);
                      sub_261D646F8(v142, &qword_27FEF4688, &unk_261D88150);
                      (v586)(v142, 1, 1, v144);
LABEL_189:
                      v410 = v619;
                      v411 = v596;
                      goto LABEL_196;
                    }

LABEL_232:
                    v541 = MEMORY[0x277D84F90];
                    v537 = sub_261D70458(MEMORY[0x277D84F90]);
                    v538 = sub_261D70458(v541);

                    _Block_release(v577);
                    v539 = "unknown date search type";
                    v540 = 24;
LABEL_233:
                    sub_261D6751C(v539, v540, 2, v537, v538);
                    __break(1u);
                    goto LABEL_234;
                  }

                  v412 = v617;
                  if (v407 == 2)
                  {
                    v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF46B0, &qword_261D88160);
                    v414 = *(v413 + 48);
                    v415 = v353;
                    v416 = *(v337 + 16);
                    v417 = v570;
                    v416(v570, v412, v353);
                    v418 = *(v337 + 56);
                    v418(v417, 0, 1, v415);
                    v416(&v417[v414], v618, v415);
                    v418(&v417[v414], 0, 1, v415);
                    v419 = *MEMORY[0x277D44F08];
                    (v611)(v417, v419, v623);
                    swift_beginAccess();
                    v420 = v624;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v420 = sub_261D8428C(0, v420[2] + 1, 1, v420);
                    }

                    v624 = v420;
                    v422 = v420[2];
                    v421 = v420[3];
                    if (v422 >= v421 >> 1)
                    {
                      v624 = sub_261D8428C((v421 > 1), v422 + 1, 1, v624);
                    }

                    v423 = v624;
                    v624[2] = v422 + 1;
                    v424 = v623;
                    (v620)(&v613[v423 + v422 * v612], v570, v623);
                    v630 = v423;
                    swift_endAccess();
                    v425 = *(v413 + 48);
                    v426 = v572;
                    v427 = v604;
                    v416(v572, v617, v604);
                    v418(v426, 0, 1, v427);
                    v416(&v426[v425], v618, v427);
                    v144 = v424;
                    v418(&v426[v425], 0, 1, v427);
                    (v611)(v426, v419, v424);
                    v428 = v607;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v607 = sub_261D8428C(0, v428[2] + 1, 1, v428);
                    }

                    v429 = v625;
                    v410 = v619;
                    v411 = v596;
                    v430 = v614;
                    v432 = v607[2];
                    v431 = v607[3];
                    if (v432 >= v431 >> 1)
                    {
                      v607 = sub_261D8428C((v431 > 1), v432 + 1, 1, v607);
                    }

                    v433 = *(v605 + 8);
                    v433(v618, v427);
                    v433(v617, v427);
                    (*(v601 + 8))(v606, v603);
                    sub_261D646F8(v610, &qword_27FEF41B0, &unk_261D87DA0);
                    sub_261D646F8(v430, &qword_27FEF41B0, &unk_261D87DA0);
                    v434 = v607;
                    v607[2] = v432 + 1;
                    v435 = &v613[v434 + v432 * v612];
                    v436 = &v604;
                  }

                  else
                  {
                    if (v407 != 3)
                    {
                      goto LABEL_232;
                    }

                    v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF46B0, &qword_261D88160);
                    v444 = *(v443 + 48);
                    v445 = v353;
                    v446 = *(v337 + 16);
                    v447 = v571;
                    v446(v571, v412, v353);
                    v448 = *(v337 + 56);
                    v448(v447, 0, 1, v445);
                    v446(&v447[v444], v618, v445);
                    v448(&v447[v444], 0, 1, v445);
                    v449 = *MEMORY[0x277D44F00];
                    (v611)(v447, v449, v623);
                    swift_beginAccess();
                    v450 = v624;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v450 = sub_261D8428C(0, v450[2] + 1, 1, v450);
                    }

                    v624 = v450;
                    v452 = v450[2];
                    v451 = v450[3];
                    if (v452 >= v451 >> 1)
                    {
                      v624 = sub_261D8428C((v451 > 1), v452 + 1, 1, v624);
                    }

                    v453 = v624;
                    v624[2] = v452 + 1;
                    v454 = v623;
                    (v620)(&v613[v453 + v452 * v612], v571, v623);
                    v630 = v453;
                    swift_endAccess();
                    v455 = *(v443 + 48);
                    v456 = v573;
                    v457 = v604;
                    v446(v573, v412, v604);
                    v448(v456, 0, 1, v457);
                    v446(&v456[v455], v618, v457);
                    v144 = v454;
                    v448(&v456[v455], 0, 1, v457);
                    (v611)(v456, v449, v454);
                    v458 = v607;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v607 = sub_261D8428C(0, v458[2] + 1, 1, v458);
                    }

                    v429 = v625;
                    v410 = v619;
                    v411 = v596;
                    v459 = v614;
                    v461 = v607[2];
                    v460 = v607[3];
                    if (v461 >= v460 >> 1)
                    {
                      v607 = sub_261D8428C((v460 > 1), v461 + 1, 1, v607);
                    }

                    v462 = *(v605 + 8);
                    v462(v618, v457);
                    v462(v617, v457);
                    (*(v601 + 8))(v606, v603);
                    sub_261D646F8(v610, &qword_27FEF41B0, &unk_261D87DA0);
                    sub_261D646F8(v459, &qword_27FEF41B0, &unk_261D87DA0);
                    v463 = v607;
                    v607[2] = v461 + 1;
                    v435 = &v613[v463 + v461 * v612];
                    v436 = &v605;
                  }

                  (v620)(v435, *(v436 - 32), v144);
                  v296 = v624;
                  v142 = v429;
                  goto LABEL_196;
                }

                v359(v357, v295);
                sub_261D646F8(v361, &qword_27FEF4680, &qword_261D88138);
                v142 = v625;
                v353 = v364;
                v337 = v362;
                v125 = v622;
              }

              else
              {
                __swift_project_boxed_opaque_existential_1(&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider], *&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24]);
                v365 = v355;
                v366 = v594;
                sub_261D85E74();
                v367 = v559;
                sub_261D85D94();
                v368 = v605;
                v369 = *(v605 + 8);
                v370 = v366;
                v371 = v367;
                v372 = v604;
                v369(v370, v604);
                v373 = v295;
                v353 = v372;
                (*(v365 + 8))(v357, v373);
                v374 = *(v368 + 48);
                if (v374(v371, 1, v372) == 1)
                {
                  v375 = *(v368 + 32);
                  v376 = v557;
                  v375(v557, v618, v372);
                  v377 = v374(v371, 1, v372);
                  v142 = v625;
                  if (v377 != 1)
                  {
                    sub_261D646F8(v371, &qword_27FEF4680, &qword_261D88138);
                  }

                  v337 = v605;
                  v378 = v618;
                }

                else
                {
                  v378 = v618;
                  v369(v618, v353);
                  v375 = *(v368 + 32);
                  v376 = v557;
                  v375(v557, v371, v353);
                  v142 = v625;
                  v337 = v368;
                }

                v375(v378, v376, v353);
              }

              v354 = &qword_27FEF4000;
              goto LABEL_150;
            }
          }

          __swift_project_boxed_opaque_existential_1(&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider], *&v608[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24]);
          v330 = v603;
          sub_261D85E84();
          v333 = *(v329 + 48);
          if (v333(v332, 1, v330) != 1)
          {
            sub_261D646F8(v332, &unk_27FEF4780, &unk_261D88140);
          }

          goto LABEL_123;
        }

LABEL_96:
        v304 = v616;
        v301 = v599;
        goto LABEL_97;
      }

      v297 = v294;
      sub_261D646F8(v142, &qword_27FEF4688, &unk_261D88150);
      v296 = v288;
      if ((v297 & 4) == 0)
      {
        goto LABEL_87;
      }
    }

    *v142 = !(v291 & 1);
    (v611)(v142, *MEMORY[0x277D44ED8], v144);
    (v586)(v142, 0, 1, v144);
    goto LABEL_96;
  }

  v194 = v193;
  v195 = sub_261D86534();
  v197 = v196;

  v198 = v586;
  sub_261D863B4();
  if ((*(v147 + 48))(v198, 1, v146) == 1)
  {
    v199 = v143;
    sub_261D646F8(v198, &unk_27FEF4690, &qword_261D87F08);

    v200 = sub_261D86494();
    v201 = sub_261D866A4();

    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      v203 = v142;
      v204 = swift_slowAlloc();
      v629 = v204;
      *v202 = 136315138;
      v205 = sub_261D8464C(v195, v197, &v629);

      *(v202 + 4) = v205;
      _os_log_impl(&dword_261D56000, v200, v201, "[Announce Reminders] Unable to create itemIdentifier from %s", v202, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v204);
      v206 = v204;
      v142 = v203;
      MEMORY[0x26671EBF0](v206, -1, -1);
      v207 = v202;
      v145 = v619;
      MEMORY[0x26671EBF0](v207, -1, -1);
    }

    else
    {
    }

    v143 = v199;
    goto LABEL_65;
  }

  v219 = v198;
  v220 = v611;
  (*(v147 + 32))(v611, v219, v146);
  v221 = v147;
  v222 = *(v147 + 16);
  v223 = v564;
  v222(v564, v220, v146);
  v224 = sub_261D86494();
  v225 = sub_261D866C4();
  if (os_log_type_enabled(v224, v225))
  {
    v226 = swift_slowAlloc();
    v624 = v143;
    v227 = v226;
    v228 = swift_slowAlloc();
    v612 = v222;
    v229 = v228;
    v629 = v228;
    *v227 = 136446210;
    (v612)(v552, v223, v146);
    v230 = sub_261D86544();
    v232 = v231;
    v613 = *(v221 + 8);
    (v613)(v223, v626);
    v233 = sub_261D8464C(v230, v232, &v629);
    v234 = v625;

    *(v227 + 4) = v233;
    v142 = v234;
    v146 = v626;
    _os_log_impl(&dword_261D56000, v224, v225, "[Announce Reminders] requestIdentifier:%{public}s", v227, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v229);
    v235 = v229;
    v222 = v612;
    MEMORY[0x26671EBF0](v235, -1, -1);
    v236 = v227;
    v143 = v624;
    MEMORY[0x26671EBF0](v236, -1, -1);
  }

  else
  {

    v613 = *(v221 + 8);
    (v613)(v223, v146);
  }

  v237 = v565;
  v222(v565, v611, v146);
  v238 = (*(v221 + 88))(v237, v146);
  if (v238 == *MEMORY[0x277D45620])
  {

    (*(v221 + 96))(v237, v146);
    v239 = *v237;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v240 = swift_allocObject();
    *(v240 + 16) = xmmword_261D877A0;
    *(v240 + 32) = v239;
    v241 = v554;
    *v554 = v240;
    v242 = v619;
    (*(v619 + 104))(v241, *MEMORY[0x277D44F50], v623);
    v243 = v239;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_261D8428C(0, v143[2] + 1, 1, v143);
    }

    v245 = v143[2];
    v244 = v143[3];
    v246 = v245 + 1;
    if (v245 >= v244 >> 1)
    {
      v143 = sub_261D8428C((v244 > 1), v245 + 1, 1, v143);
    }

LABEL_59:
    v143[2] = v246;
    v250 = v242;
    v251 = v242 + 32;
    v252 = *(v242 + 32);
    v253 = v143 + ((*(v242 + 80) + 32) & ~*(v242 + 80));
    v254 = *(v251 + 40);
    v252(&v253[v254 * v245], v241, v623);
    v630 = v143;
    v255 = sub_261D86494();
    v256 = sub_261D866C4();
    if (os_log_type_enabled(v255, v256))
    {
      v257 = swift_slowAlloc();
      v258 = swift_slowAlloc();
      v259 = v143;
      v260 = v258;
      v629 = v258;
      *v257 = 136446210;
      v624 = v259;
      v261 = v259[2];
      if (v261)
      {
        v262 = &v253[v254 * (v261 - 1)];
        v263 = v250;
        v264 = v555;
        v144 = v623;
        (*(v250 + 16))(v555, v262, v623);
        v265 = 0;
      }

      else
      {
        v265 = 1;
        v144 = v623;
        v263 = v250;
        v264 = v555;
      }

      (*(v263 + 56))(v264, v265, 1, v144);
      v266 = sub_261D86544();
      v268 = sub_261D8464C(v266, v267, &v629);
      v145 = v250;

      *(v257 + 4) = v268;
      _os_log_impl(&dword_261D56000, v255, v256, "[Announce Reminders] Added %{public}s to search criteria", v257, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v260);
      MEMORY[0x26671EBF0](v260, -1, -1);
      MEMORY[0x26671EBF0](v257, -1, -1);

      (v613)(v611, v626);
      v125 = v622;
      v143 = v624;
      v142 = v625;
    }

    else
    {

      (v613)(v611, v626);
      v144 = v623;
      v125 = v622;
      v145 = v250;
    }

    goto LABEL_65;
  }

  v247 = v623;
  v242 = v619;
  if (v238 == *MEMORY[0x277D45618])
  {

    (*(v221 + 96))(v237, v146);
    v248 = *(v237 + 1);
    v241 = v553;
    *v553 = *v237;
    v241[1] = v248;
    (*(v242 + 104))(v241, *MEMORY[0x277D44F28], v247);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_261D8428C(0, v143[2] + 1, 1, v143);
    }

    v245 = v143[2];
    v249 = v143[3];
    v246 = v245 + 1;
    if (v245 >= v249 >> 1)
    {
      v143 = sub_261D8428C((v249 > 1), v245 + 1, 1, v143);
    }

    goto LABEL_59;
  }

LABEL_234:

  _Block_release(v577);
  result = sub_261D86B74();
  __break(1u);
  return result;
}

uint64_t sub_261D757B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D757F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D7583C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D7587C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_261D758EC()
{
  result = qword_27FEF46D0;
  if (!qword_27FEF46D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF46C8, &qword_261D88168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF46D0);
  }

  return result;
}

_OWORD *sub_261D75950(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_261D75960()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF4720);
  v1 = __swift_project_value_buffer(v0, qword_27FEF4720);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261D75A28(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 tasks];
  if (v7)
  {
    v8 = v7;
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v9 = sub_261D865D4();

    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    sub_261D68DCC(v9, sub_261D76DC0, v10);
  }

  else
  {
    v11 = *(v3 + OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_dataSource);
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a1;
    v13 = v11[6];
    v14 = v11[7];
    __swift_project_boxed_opaque_existential_1(v11 + 3, v13);
    v15 = swift_allocObject();
    v15[2] = v11;
    v15[3] = sub_261D76D3C;
    v15[4] = v12;
    v16 = *(v14 + 8);

    v17 = a1;

    v16(sub_261D69598, v15, v13, v14);
  }
}

void sub_261D75BF4(unint64_t a1, void (*a2)(uint64_t))
{
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (qword_27FEF3FA8 != -1)
    {
      swift_once();
    }

    v27 = sub_261D864A4();
    __swift_project_value_buffer(v27, qword_27FEF4720);
    v28 = sub_261D86494();
    v29 = sub_261D86684();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_261D56000, v28, v29, "No reminders found for searchTerm {result: .unsupported(.noTasksFound)}", v30, 2u);
      MEMORY[0x26671EBF0](v30, -1, -1);
    }

    v26 = [objc_opt_self() unsupportedForReason_];
    goto LABEL_37;
  }

  if (!sub_261D86954())
  {
    goto LABEL_32;
  }

  v5 = sub_261D86954();
LABEL_3:
  if (v5 != 1)
  {
    if (qword_27FEF3FA8 != -1)
    {
      swift_once();
    }

    v14 = sub_261D864A4();
    __swift_project_value_buffer(v14, qword_27FEF4720);

    v15 = sub_261D86494();
    v16 = sub_261D86684();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      if (v4)
      {
        v18 = sub_261D86954();
      }

      else
      {
        v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v17 + 4) = v18;

      _os_log_impl(&dword_261D56000, v15, v16, "Found %ld reminders found for searchTerm {result: .disambiguation}", v17, 0xCu);
      MEMORY[0x26671EBF0](v17, -1, -1);
    }

    else
    {
    }

    if (v5)
    {
      sub_261D86A34();
      if (v5 < 0)
      {
LABEL_42:
        __break(1u);
        return;
      }

      sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        do
        {
          v20 = v19 + 1;
          MEMORY[0x26671E4C0]();
          sub_261D86824();
          sub_261D86A14();
          sub_261D86A44();
          sub_261D86A54();
          sub_261D86A24();
          v19 = v20;
        }

        while (v5 != v20);
      }

      else
      {
        v21 = (a1 + 32);
        do
        {
          v22 = *v21++;
          v23 = v22;
          sub_261D86824();
          sub_261D86A14();
          sub_261D86A44();
          sub_261D86A54();
          sub_261D86A24();
          --v5;
        }

        while (v5);
      }
    }

    v24 = objc_opt_self();
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v25 = sub_261D865C4();

    v13 = [v24 disambiguationWithTasksToDisambiguate_];

    goto LABEL_29;
  }

  if (qword_27FEF3FA8 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF4720);
  v7 = sub_261D86494();
  v8 = sub_261D86684();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261D56000, v7, v8, "One reminder found for searchTerm {result: .success}", v9, 2u);
    MEMORY[0x26671EBF0](v9, -1, -1);
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26671E4C0](0, a1);
    goto LABEL_11;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_42;
  }

  v10 = *(a1 + 32);
LABEL_11:
  v11 = objc_opt_self();
  sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
  v12 = sub_261D86824();
  v13 = [v11 successWithResolvedTask_];

LABEL_29:
  v26 = [objc_allocWithZone(MEMORY[0x277CD4170]) initWithTaskResolutionResult_];

LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_261D877A0;
  *(v31 + 32) = v26;
  v32 = v26;
  a2(v31);
}

uint64_t sub_261D76194(unint64_t a1, void (*a2)(void *), int a3, id a4)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v52 = a4;
    if (sub_261D86954())
    {
      v53 = sub_261D86954();
      a4 = v52;
      v7 = v53;
      if (v53 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }

LABEL_45:
    if (qword_27FEF3FA8 != -1)
    {
      swift_once();
    }

    v54 = sub_261D864A4();
    __swift_project_value_buffer(v54, qword_27FEF4720);
    v55 = sub_261D86494();
    v56 = sub_261D866C4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_261D56000, v55, v56, "No reminders to snooze. {result: .unsupported(.noTasksFound)}", v57, 2u);
      MEMORY[0x26671EBF0](v57, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_261D877A0;
    *(v26 + 32) = [objc_opt_self() unsupportedForReason_];
    goto LABEL_50;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_45;
  }

  if (v7 == 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = [a4 all];
  if (!v8 || (v9 = v8, v10 = [v8 BOOLValue], v9, !v10))
  {
    if (qword_27FEF3FA8 == -1)
    {
LABEL_12:
      v17 = sub_261D864A4();
      __swift_project_value_buffer(v17, qword_27FEF4720);

      v18 = sub_261D86494();
      v19 = sub_261D866A4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v60 = v21;
        *v20 = 136315138;
        v22 = sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
        v23 = MEMORY[0x26671E0C0](a1, v22);
        v25 = sub_261D8464C(v23, v24, &v60);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_261D56000, v18, v19, "Multiple reminders match but user didn't say 'all'. Ask the user to disambiguate which reminder to snooze. {reminders: %s, result: .disambiguation}", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x26671EBF0](v21, -1, -1);
        MEMORY[0x26671EBF0](v20, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_261D877A0;
      if (!v7)
      {
        goto LABEL_41;
      }

      v60 = MEMORY[0x277D84F90];
      result = sub_261D86A34();
      if ((v7 & 0x8000000000000000) == 0)
      {
        sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
        if ((a1 & 0xC000000000000001) != 0)
        {
          v28 = 0;
          do
          {
            v29 = v28 + 1;
            MEMORY[0x26671E4C0]();
            sub_261D86824();
            sub_261D86A14();
            sub_261D86A44();
            sub_261D86A54();
            sub_261D86A24();
            v28 = v29;
          }

          while (v7 != v29);
        }

        else
        {
          v46 = (a1 + 32);
          do
          {
            v47 = *v46++;
            v48 = v47;
            sub_261D86824();
            sub_261D86A14();
            sub_261D86A44();
            sub_261D86A54();
            sub_261D86A24();
            --v7;
          }

          while (v7);
        }

LABEL_41:
        sub_261D597EC(0, &qword_27FEF4758, 0x277CD4170);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
        v50 = sub_261D865C4();

        v51 = [ObjCClassFromMetadata disambiguationWithTasksToDisambiguate_];

        *(v26 + 32) = v51;
        goto LABEL_50;
      }

      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

LABEL_55:
    swift_once();
    goto LABEL_12;
  }

LABEL_6:
  if (qword_27FEF3FA8 != -1)
  {
    swift_once();
  }

  v11 = sub_261D864A4();
  __swift_project_value_buffer(v11, qword_27FEF4720);

  v12 = sub_261D86494();
  v13 = sub_261D866C4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v60 = v15;
    *v14 = 134218242;
    if (v6)
    {
      v16 = sub_261D86954();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;

    *(v14 + 12) = 2080;
    v30 = MEMORY[0x277D84F90];
    if (v7)
    {
      v58 = v15;
      v59 = MEMORY[0x277D84F90];
      result = sub_261D86A34();
      if (v7 < 0)
      {
        goto LABEL_57;
      }

      v31 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x26671E4C0](v31, a1);
        }

        else
        {
          v32 = *(a1 + 8 * v31 + 32);
        }

        v33 = v32;
        ++v31;
        v34 = [v32 objectID];

        sub_261D86A14();
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
      }

      while (v7 != v31);
      v30 = v59;
      v15 = v58;
    }

    v35 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
    v36 = MEMORY[0x26671E0C0](v30, v35);
    v38 = v37;

    v39 = sub_261D8464C(v36, v38, &v60);

    *(v14 + 14) = v39;
    _os_log_impl(&dword_261D56000, v12, v13, "Resolved %ld tasks to snooze. {reminderIDs: %s, result: .success}", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26671EBF0](v15, -1, -1);
    MEMORY[0x26671EBF0](v14, -1, -1);
  }

  else
  {
  }

  v26 = MEMORY[0x277D84F90];
  if (v7)
  {
    v60 = MEMORY[0x277D84F90];
    sub_261D86A34();
    if ((v7 & 0x8000000000000000) == 0)
    {
      sub_261D597EC(0, &qword_27FEF4758, 0x277CD4170);
      v40 = swift_getObjCClassFromMetadata();
      sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
      v41 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x26671E4C0](v41, a1);
        }

        else
        {
          v42 = *(a1 + 8 * v41 + 32);
        }

        ++v41;
        v43 = v42;
        v44 = sub_261D86824();
        v45 = [v40 successWithResolvedTask_];

        sub_261D86A14();
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
      }

      while (v7 != v41);
      a2(v60);
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_50:
  a2(v26);
LABEL_51:
}

void sub_261D76A88(uint64_t a1, uint64_t a2)
{
  sub_261D597EC(0, &qword_27FEF4758, 0x277CD4170);
  v3 = sub_261D865C4();
  (*(a2 + 16))(a2, v3);
}

id sub_261D76C48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSnoozeTasksIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261D76CFC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D76D48()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D76D88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_261D76DC8(uint64_t a1, uint64_t a2)
{
  sub_261D86BC4();
  sub_261D86574();
  v4 = sub_261D86BD4();

  return sub_261D76E84(a1, a2, v4);
}

unint64_t sub_261D76E40(uint64_t a1)
{
  v2 = sub_261D86894();

  return sub_261D76F3C(a1, v2);
}

unint64_t sub_261D76E84(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_261D86B84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_261D76F3C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_261D868A4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_261D77010(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_261D86AA4() == *(a4 + 36))
    {
      sub_261D86AB4();
      sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
      swift_dynamicCast();
      sub_261D76E40(v6);
      v5 = v4;

      if (v5)
      {
        sub_261D86A84();
        sub_261D86AD4();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_261D86924();
}

void sub_261D77174(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_261D86AE4();
      sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_261D86AA4() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_261D86AB4();
  sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
  swift_dynamicCast();
  v5 = sub_261D76E40(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

uint64_t sub_261D77304(uint64_t a1, void *a2)
{
  v2 = a1;
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_261D86954();
    result = MEMORY[0x277D84F90];
    if (!v3)
    {
      return result;
    }

    v30 = MEMORY[0x277D84F90];
    sub_261D86A34();
    result = sub_261D86A64();
    v27 = result;
    v28 = v5;
    v29 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(v2 + 16);
  result = MEMORY[0x277D84F90];
  if (!v3)
  {
    return result;
  }

  v30 = MEMORY[0x277D84F90];
  sub_261D86A34();
  result = sub_261D86914();
  v6 = *(v2 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  v23 = v3;
  while (v7 < v3)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v16 = v27;
    v15 = v28;
    v17 = v29;
    sub_261D77174(v27, v28, v29, v2);
    v19 = v18;
    v20 = [a2 updateReminder_];

    sub_261D86A14();
    v21 = v2;
    sub_261D86A44();
    sub_261D86A54();
    result = sub_261D86A24();
    if (v24)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      if (sub_261D86A94())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v3 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4770, &qword_261D881B0);
      v22 = sub_261D864E4();
      sub_261D86B14();
      result = v22(v26, 0);
    }

    else
    {
      sub_261D77010(v16, v15, v17, v2);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_261D78A5C(v16, v15, v17);
      v27 = v9;
      v28 = v11;
      v29 = v13 & 1;
      v2 = v21;
      v3 = v23;
    }

    ++v7;
    if (v14 == v3)
    {
      sub_261D78A5C(v27, v28, v29);
      return v30;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_261D77588(void *a1, uint64_t a2)
{
  v109 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4778, &qword_261D881B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v103 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4780, &unk_261D88140);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = &v103 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4680, &qword_261D88138);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v103 - v12;
  MEMORY[0x28223BE20](v14);
  v106 = &v103 - v15;
  MEMORY[0x28223BE20](v16);
  v107 = &v103 - v17;
  v116 = sub_261D85D24();
  v18 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v105 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v103 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v103 - v24;
  MEMORY[0x28223BE20](v26);
  v115 = &v103 - v27;
  if (qword_27FEF3FA8 != -1)
  {
    swift_once();
  }

  v28 = sub_261D864A4();
  v29 = __swift_project_value_buffer(v28, qword_27FEF4720);
  v30 = a1;
  v108 = v29;
  v31 = sub_261D86494();
  v32 = sub_261D866C4();

  v33 = os_log_type_enabled(v31, v32);
  v110 = v25;
  v114 = v5;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v118 = v112;
    *v34 = 136315138;
    v117 = [v30 nextTriggerTime];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4790, &unk_261D881C0);
    v35 = sub_261D86544();
    v37 = v22;
    v38 = v30;
    v39 = v18;
    v40 = v13;
    v41 = v10;
    v42 = sub_261D8464C(v35, v36, &v118);

    *(v34 + 4) = v42;
    v10 = v41;
    v13 = v40;
    v18 = v39;
    v30 = v38;
    v22 = v37;
    _os_log_impl(&dword_261D56000, v31, v32, "Resolving nextTriggerTime {nextTriggerTime: %s}", v34, 0xCu);
    v43 = v112;
    __swift_destroy_boxed_opaque_existential_0(v112);
    v25 = v110;
    MEMORY[0x26671EBF0](v43, -1, -1);
    MEMORY[0x26671EBF0](v34, -1, -1);
  }

  sub_261D85D14();
  sub_261D85D14();
  sub_261D85CC4();
  v111 = *(v18 + 8);
  v112 = (v18 + 8);
  v111(v22, v116);
  v44 = [v30 nextTriggerTime];
  v45 = v107;
  if (v44)
  {
    v46 = v44;
    v47 = [v44 endDate];
    if (v47)
    {
      v48 = v47;
      sub_261D85D04();

      v49 = *(v18 + 32);
      v50 = v10;
      v51 = v106;
      v104 = v46;
      v52 = v25;
      v53 = v45;
      v54 = v116;
      v49(v106, v22, v116);
      v55 = *(v18 + 56);
      v55(v51, 0, 1, v54);
      v56 = v51;
      v10 = v50;
      v49(v53, v56, v54);
      v57 = v53;
      v58 = v54;
      v45 = v53;
      v25 = v52;
      v46 = v104;
      v55(v57, 0, 1, v58);
      v59 = v105;
      v60 = (*(v18 + 48))(v45, 1, v116);
    }

    else
    {
      v61 = *(v18 + 56);
      v62 = 1;
      v61(v106, 1, 1, v116);
      v63 = [v46 startDate];
      if (v63)
      {
        v64 = v63;
        sub_261D85D04();

        v62 = 0;
      }

      v59 = v105;
      v65 = v13;
      v66 = v62;
      v67 = v13;
      v68 = v116;
      v61(v65, v66, 1, v116);
      sub_261D78A68(v67, v45);
      v69 = *(v18 + 48);
      v70 = v106;
      if (v69(v106, 1, v68) != 1)
      {
        sub_261D646F8(v70, &qword_27FEF4680, &qword_261D88138);
      }

      v60 = v69(v45, 1, v116);
    }

    if (v60 == 1)
    {

      sub_261D646F8(v45, &qword_27FEF4680, &qword_261D88138);
    }

    else
    {
      v71 = *(v18 + 32);
      v71(v59, v45, v116);
      v72 = sub_261D85CE4();

      if (v72)
      {
        v73 = v116;
        v111(v25, v116);
        v71(v25, v59, v73);
      }

      else
      {
        v111(v59, v116);
      }
    }
  }

  v74 = v116;
  (*(v18 + 16))(v10, v25, v116);
  (*(v18 + 56))(v10, 0, 1, v74);
  v75 = sub_261D85DD4();
  v76 = v10;
  v77 = *(v75 - 8);
  (*(v77 + 56))(v113, 1, 1, v75);
  v78 = sub_261D85E04();
  v79 = *(v78 - 8);
  (*(v79 + 56))(v114, 1, 1, v78);
  v80 = sub_261D85CD4();
  v81 = 0;
  if ((*(v18 + 48))(v76, 1, v74) != 1)
  {
    v81 = sub_261D85CD4();
    v111(v76, v116);
  }

  v82 = v113;
  if ((*(v77 + 48))(v113, 1, v75) == 1)
  {
    v83 = 0;
  }

  else
  {
    v83 = sub_261D85DA4();
    (*(v77 + 8))(v82, v75);
  }

  v84 = v114;
  if ((*(v79 + 48))(v114, 1, v78) == 1)
  {
    v85 = 0;
  }

  else
  {
    v85 = sub_261D85DF4();
    (*(v79 + 8))(v84, v78);
  }

  v86 = [objc_allocWithZone(MEMORY[0x277CD3B68]) initWithStartDate:v80 endDate:v81 onCalendar:v83 inTimeZone:v85];

  v87 = v86;
  v88 = sub_261D86494();
  v89 = sub_261D866C4();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v118 = v91;
    *v90 = 136315138;
    v92 = v87;
    v93 = [v92 description];
    v94 = sub_261D86534();
    v96 = v95;

    v97 = sub_261D8464C(v94, v96, &v118);

    *(v90 + 4) = v97;
    _os_log_impl(&dword_261D56000, v88, v89, "Resolved nextTriggerTime. {nextTriggerTime: %s, result: .success", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x26671EBF0](v91, -1, -1);
    MEMORY[0x26671EBF0](v90, -1, -1);
  }

  v98 = v110;
  v99 = [objc_opt_self() successWithResolvedDateComponentsRange_];
  (*(v109 + 16))(v109, v99);

  v100 = v116;
  v101 = v111;
  v111(v98, v116);
  return v101(v115, v100);
}

void sub_261D7802C(unint64_t a1, unint64_t a2, void *a3)
{
  v98[1] = *MEMORY[0x277D85DE8];
  v6 = sub_261D85D24();
  v96 = *(v6 - 8);
  v97 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FEF3FA8 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v9 = sub_261D864A4();
    __swift_project_value_buffer(v9, qword_27FEF4720);
    v10 = a1;
    v11 = sub_261D86494();
    v12 = sub_261D866C4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v8;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v10;
      *v15 = v10;
      v16 = v10;
      _os_log_impl(&dword_261D56000, v11, v12, "SiriKit asked for handling snooze tasks intent {intent: %@}", v14, 0xCu);
      sub_261D646F8(v15, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v15, -1, -1);
      v17 = v14;
      v8 = v13;
      MEMORY[0x26671EBF0](v17, -1, -1);
    }

    v18 = [v10 tasks];
    if (!v18)
    {
      v32 = sub_261D86494();
      v33 = sub_261D866A4();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_38;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "No .tasks to snooze. Should have resolved this in resolve stage. Giving up";
      goto LABEL_37;
    }

    v19 = v18;
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v20 = sub_261D865D4();
    v21 = [v10 nextTriggerTime];
    if (!v21)
    {

      goto LABEL_35;
    }

    v22 = v21;
    v23 = [v21 endDate];
    if (!v23)
    {
      break;
    }

    v90 = v22;
    v92 = a3;
    v24 = v23;
    sub_261D85D04();

    sub_261D85CF4();
    v26 = v25;
    v27 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_store);
    v28 = objc_allocWithZone(MEMORY[0x277D447D8]);
    v93 = v27;
    v94 = [v28 initWithStore_];
    v98[0] = MEMORY[0x277D84F90];
    v91 = v8;
    a3 = (v20 & 0xFFFFFFFFFFFFFF8);
    if (v20 >> 62)
    {
      v29 = sub_261D86954();
    }

    else
    {
      v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = 0;
    v89 = 0;
    v95 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29 == a1)
      {

        v36 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
        v37 = v95;
        v38 = sub_261D865C4();
        v98[0] = 0;
        v39 = [v93 fetchRemindersWithObjectIDs:v38 error:v98];

        v40 = v98[0];
        if (v39)
        {
          sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
          sub_261D6C624();
          v41 = sub_261D864C4();
          v42 = v40;

          v43 = v94;
          v44 = sub_261D77304(v41, v43);

          v88 = v36;
          v93 = v43;
          if (v44 >> 62)
          {
            a1 = sub_261D86954();
            if (a1)
            {
LABEL_25:
              a2 = 0;
              v8 = (v44 & 0xC000000000000001);
              a3 = &_swift_FORCE_LOAD___swiftCallKit___RemindersIntentsFramework;
              do
              {
                if (v8)
                {
                  v45 = MEMORY[0x26671E4C0](a2, v44);
                }

                else
                {
                  if (a2 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_45;
                  }

                  v45 = *(v44 + 8 * a2 + 32);
                }

                v46 = v45;
                v47 = a2 + 1;
                if (__OFADD__(a2, 1))
                {
                  goto LABEL_44;
                }

                [v45 snoozeFromNowForTimeInterval_];

                ++a2;
              }

              while (v47 != a1);
            }
          }

          else
          {
            a1 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a1)
            {
              goto LABEL_25;
            }
          }

          v98[0] = 0;
          v52 = v93;
          v53 = [v93 saveSynchronouslyWithError_];
          v40 = v98[0];
          if (v53)
          {
            sub_261D85EB4();
            v54 = v40;
            sub_261D85EA4();
            sub_261D85E94();

            v55 = v95;

            v56 = sub_261D86494();
            v57 = sub_261D866C4();

            v58 = os_log_type_enabled(v56, v57);
            v59 = v92;
            v60 = v88;
            if (v58)
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v98[0] = v62;
              *v61 = 136315138;
              v63 = MEMORY[0x26671E0C0](v55, v60);
              v65 = v64;

              v66 = sub_261D8464C(v63, v65, v98);

              *(v61 + 4) = v66;
              _os_log_impl(&dword_261D56000, v56, v57, "Successfully snoozed reminders. {reminderIDs: %s}", v61, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v62);
              MEMORY[0x26671EBF0](v62, -1, -1);
              MEMORY[0x26671EBF0](v61, -1, -1);
            }

            else
            {
            }

            v83 = v96;
            v82 = v97;
            v85 = v90;
            v84 = v91;
            v86 = [objc_allocWithZone(MEMORY[0x277CD4168]) initWithCode:3 userActivity:0];
            [v86 setSnoozedTasks_];

            (v59[2])(v59, v86);
            (*(v83 + 8))(v84, v82);
            return;
          }

          v51 = v92;
          v37 = v95;
          v36 = v88;
        }

        else
        {
          v51 = v92;
        }

        v67 = v40;

        v68 = sub_261D85C64();
        swift_willThrow();

        v69 = sub_261D86494();
        v70 = sub_261D866A4();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v98[0] = v72;
          *v71 = 136315138;
          v73 = MEMORY[0x26671E0C0](v37, v36);
          v75 = v74;

          v76 = sub_261D8464C(v73, v75, v98);

          *(v71 + 4) = v76;
          _os_log_impl(&dword_261D56000, v69, v70, "Error snoozing reminders {reminderIDs: %s}", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v72);
          MEMORY[0x26671EBF0](v72, -1, -1);
          MEMORY[0x26671EBF0](v71, -1, -1);
        }

        else
        {
        }

        v78 = v96;
        v77 = v97;
        v80 = v90;
        v79 = v91;
        v81 = [objc_allocWithZone(MEMORY[0x277CD4168]) initWithCode:4 userActivity:0];
        (v51[2])(v51, v81);

        (*(v78 + 8))(v79, v77);
        return;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x26671E4C0](a1, v20);
      }

      else
      {
        if (a1 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v30 = *(v20 + 8 * a1 + 32);
      }

      v31 = v30;
      a2 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v8 = sub_261D867E4();

      ++a1;
      if (v8)
      {
        MEMORY[0x26671E090]();
        if (*((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261D865F4();
        }

        sub_261D86604();
        v95 = v98[0];
        a1 = a2;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_35:
  v32 = sub_261D86494();
  v33 = sub_261D866A4();
  if (!os_log_type_enabled(v32, v33))
  {
    goto LABEL_38;
  }

  v34 = swift_slowAlloc();
  *v34 = 0;
  v35 = "No nextTriggerTime.endDate. Should have resolved this in resolve stage. Giving up.";
LABEL_37:
  _os_log_impl(&dword_261D56000, v32, v33, v35, v34, 2u);
  MEMORY[0x26671EBF0](v34, -1, -1);
LABEL_38:

  v48 = [objc_allocWithZone(MEMORY[0x277CD4168]) initWithCode:4 userActivity:0];
  v49 = a3[2];
  v97 = v48;
  v49(a3);
  v50 = v97;
}

uint64_t sub_261D78A5C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_261D78A68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4680, &qword_261D88138);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261D78AD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D78B18()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF47A0);
  v1 = __swift_project_value_buffer(v0, qword_27FEF47A0);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_261D78BE0()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id TTRIntentHandler.handler(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  if (qword_27FEF3FB0 != -1)
  {
    swift_once();
  }

  v5 = sub_261D864A4();
  __swift_project_value_buffer(v5, qword_27FEF47A0);
  v6 = a1;
  v7 = sub_261D86494();
  v8 = sub_261D86694();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_261D56000, v7, v8, "SiriKit asks for handler for intent: %@", v9, 0xCu);
    sub_261D5968C(v10);
    MEMORY[0x26671EBF0](v10, -1, -1);
    MEMORY[0x26671EBF0](v9, -1, -1);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___addTasksHandler;
    v13 = sub_261D792E0;
LABEL_11:
    v14 = sub_261D78FA4(v12, v13);
LABEL_12:
    v15 = v14;
    result = swift_getObjectType();
LABEL_13:
    a2[3] = result;
    *a2 = v15;
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___setTaskAttributeHandler;
    v13 = sub_261D796D0;
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___snoozeTasksHandler;
    v13 = sub_261D799C8;
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = sub_261D7900C();
    goto LABEL_12;
  }

  sub_261D861A4();
  if (swift_dynamicCastClass())
  {
    v15 = sub_261D79138();
    result = type metadata accessor for ConfigurationIntentHandler();
    goto LABEL_13;
  }

  v17 = v6;
  v18 = sub_261D86494();
  v19 = sub_261D866B4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_261D56000, v18, v19, "TTRIntentHandler does not know how to handle intent of class: %@", v20, 0xCu);
    sub_261D5968C(v21);
    MEMORY[0x26671EBF0](v21, -1, -1);
    MEMORY[0x26671EBF0](v20, -1, -1);
  }

  a2[3] = ObjectType;
  *a2 = v23;

  return v23;
}

uint64_t sub_261D78FA4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

id sub_261D7900C()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler;
  if (*(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store);
    v4 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue);
    type metadata accessor for TTRIntentsHandlerStoreDataSource();
    swift_allocObject();
    v5 = v3;
    v6 = v0;
    v7 = sub_261D699F8(v5);
    type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
    v8 = swift_allocObject();
    v9 = v5;
    v10 = v4;
    v11 = sub_261D79D3C(v9, v10, v7, v8);
    sub_261D86054();
    swift_allocObject();
    v12 = v9;
    v13 = v10;
    v14 = sub_261D86044();
    v2 = sub_261D7A11C(v12, v13, v11, v14);
    *(v6 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_261D79138()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___widgetListHandler;
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___widgetListHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___widgetListHandler);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store);
    v5 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue);
    type metadata accessor for TTRIntentsHandlerStoreDataSource();
    swift_allocObject();
    v6 = v4;
    v7 = v0;
    v8 = sub_261D699F8(v6);
    type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
    v9 = swift_allocObject();
    v10 = v6;
    v11 = v5;
    v12 = sub_261D79D3C(v10, v11, v8, v9);
    v13 = objc_allocWithZone(type metadata accessor for ConfigurationIntentHandler());
    v14 = sub_261D79F88(v10, v11, v12, v13);
    v15 = *(v7 + v1);
    *(v7 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

char *sub_261D792E0(char *a1)
{
  v2 = sub_261D86114();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261D86104();
  v6 = *&a1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store];
  v7 = *&a1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue];
  type metadata accessor for TTRIntentsHandlerStoreDataSource();
  swift_allocObject();
  v8 = v6;
  v9 = sub_261D699F8(v8);
  v10 = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v11 = swift_allocObject();
  v12 = v8;

  v13 = v7;
  v14 = sub_261D79D3C(v12, v13, v9, v11);
  v41[3] = v10;
  v41[4] = &off_28744B808;

  v41[0] = v14;
  sub_261D64534(v41, v40);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = sub_261D86054();
  swift_allocObject();
  v17 = a1;
  v18 = sub_261D86044();
  v38 = &type metadata for TTRContactRepresentationResolver;
  v39 = &off_28744B0E0;
  v37[0] = sub_261D79E98;
  v37[1] = v15;
  v36[3] = v2;
  v36[4] = MEMORY[0x277D45DE8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
  v35[3] = v16;
  v35[4] = MEMORY[0x277D45D48];
  v35[0] = v18;
  v20 = type metadata accessor for TTRAddTasksIntentHandler();
  v21 = objc_allocWithZone(v20);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  v33 = &type metadata for TTRContactRepresentationResolver;
  v34 = &off_28744B0E0;
  v32 = *v25;
  v21[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_didNotSpecifyTargetList] = 0;
  sub_261D64534(v35, &v21[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_timeProvider]);
  *&v21[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store] = v12;
  *&v21[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_queue] = v13;
  sub_261D64534(v40, &v21[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource]);
  sub_261D64534(&v32, &v21[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_contactRepresentationResolver]);
  sub_261D64534(v36, &v21[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_userActivityProvider]);
  v31.receiver = v21;
  v31.super_class = v20;
  v27 = v12;
  v28 = v13;
  v29 = objc_msgSendSuper2(&v31, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v40);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(&v32);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v29;
}

char *sub_261D796D0(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store];
  v3 = *&a1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue];
  type metadata accessor for TTRIntentsHandlerStoreDataSource();
  swift_allocObject();
  v4 = v2;
  v5 = sub_261D699F8(v4);
  v6 = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v7 = swift_allocObject();
  v8 = v4;

  v9 = v3;
  v10 = sub_261D79D3C(v8, v9, v5, v7);
  v33[3] = v6;
  v33[4] = &off_28744B808;

  v33[0] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_261D64534(v33, v32);
  v12 = sub_261D86054();
  swift_allocObject();
  v13 = a1;
  v14 = sub_261D86044();
  v31[3] = &type metadata for TTRContactRepresentationResolver;
  v31[4] = &off_28744B0E0;
  v31[0] = sub_261D7A244;
  v31[1] = v11;
  v30[3] = v12;
  v30[4] = MEMORY[0x277D45D48];
  v30[0] = v14;
  v15 = type metadata accessor for TTRSetTaskAttributeIntentHandler();
  v16 = objc_allocWithZone(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v31, &type metadata for TTRContactRepresentationResolver);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v28 = &type metadata for TTRContactRepresentationResolver;
  v29 = &off_28744B0E0;
  v27 = *v20;
  *&v16[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_store] = v8;
  *&v16[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_queue] = v9;
  sub_261D64534(&v27, &v16[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver]);
  sub_261D64534(v32, &v16[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_dataSource]);
  sub_261D64534(v30, &v16[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_timeProvider]);
  v26.receiver = v16;
  v26.super_class = v15;
  v22 = v8;
  v23 = v9;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v30);
  __swift_destroy_boxed_opaque_existential_0(&v27);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v24;
}

id sub_261D799C8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CE2028]) initWithBundleIdentifier_];
  v3 = *(a1 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store);
  v13 = sub_261D597EC(0, &unk_27FEF4870, 0x277CE2028);
  v14 = &off_28744B0F0;
  *&v12 = v2;
  type metadata accessor for TTRIntentsHandlerNotificationCenterDataSource();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_261D79F70(&v12, v4 + 24);
  v5 = *(a1 + OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue);
  v6 = type metadata accessor for TTRSnoozeTasksIntentHandler();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_store] = v3;
  *&v7[OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_queue] = v5;
  *&v7[OBJC_IVAR____TtC25RemindersIntentsFramework27TTRSnoozeTasksIntentHandler_dataSource] = v4;
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = v3;
  v9 = v5;
  return objc_msgSendSuper2(&v11, sel_init);
}

id TTRIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIntentHandler.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_store;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D44850]) initUserInteractive_];
  v4 = OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler_queue;
  sub_261D597EC(0, &qword_27FEF47D0, 0x277D85C78);
  *&v1[v4] = sub_261D86744();
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___contactStore] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___addTasksHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___setTaskAttributeHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___snoozeTasksHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsFramework16TTRIntentHandler____lazy_storage___widgetListHandler] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id TTRIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261D79D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = type metadata accessor for TTRIntentsHandlerStoreDataSource();
  v15 = &off_28744B1C8;
  *&v13 = a3;
  if (qword_27FEF3FC0 != -1)
  {
    swift_once();
  }

  v8 = sub_261D864A4();
  __swift_project_value_buffer(v8, qword_27FEF4918);
  v9 = sub_261D86494();
  v10 = sub_261D866C4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_261D56000, v9, v10, "[TTRIntentsHandlerSpotlightDataSource] Using the Spotlight intents handler data source", v11, 2u);
    MEMORY[0x26671EBF0](v11, -1, -1);
  }

  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_261D79F70(&v13, a4 + 32);
  return a4;
}

uint64_t sub_261D79E60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
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

uint64_t sub_261D79F70(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_261D79F88(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v16[3] = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v16[4] = &off_28744B808;
  v16[0] = a3;
  *&a4[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_badgeSize] = vdupq_n_s64(0x4040000000000000uLL);
  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v9 = sub_261D864A4();
  __swift_project_value_buffer(v9, qword_27FEF4898);
  v10 = sub_261D86494();
  v11 = sub_261D866C4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_261D56000, v10, v11, "ConfigurationIntentHandler Created", v12, 2u);
    MEMORY[0x26671EBF0](v12, -1, -1);
  }

  *&a4[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_store] = a1;
  *&a4[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_queue] = a2;
  sub_261D64534(v16, &a4[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource]);
  v15.receiver = a4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

id sub_261D7A11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v15[3] = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v15[4] = &off_28744B808;
  v15[0] = a3;
  v14[3] = v8;
  v14[4] = MEMORY[0x277D45D48];
  v14[0] = a4;
  v9 = type metadata accessor for TTRSearchForNotebookItemsIntentHandler();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_store] = a1;
  *&v10[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_queue] = a2;
  sub_261D64534(v15, &v10[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_dataSource]);
  sub_261D64534(v14, &v10[OBJC_IVAR____TtC25RemindersIntentsFramework38TTRSearchForNotebookItemsIntentHandler_timeProvider]);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_261D7A248(uint64_t a1, unint64_t a2)
{
  v84 = sub_261D861D4();
  v4 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = &v67 - v7;
  v8 = sub_261D86194();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v67 - v13;
  MEMORY[0x28223BE20](v14);
  v85 = &v67 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  v19 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_51;
  }

  v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v21 = MEMORY[0x277D84F90];
  if (v20 < 2)
  {
    goto LABEL_13;
  }

  v68 = v19;
  v69 = v11;
  v71 = a1;
  v22 = *(a1 + 16);
  v73 = a2;

  v70 = v22;
  v23 = v85;
  if (!v22)
  {
LABEL_11:

LABEL_12:
    v21 = MEMORY[0x277D84F90];
LABEL_13:
    if (v21 >> 62 && sub_261D86954())
    {
      sub_261D7BF9C(MEMORY[0x277D84F90]);
    }

    else
    {
      v38 = MEMORY[0x277D84FA0];
    }

    v94[0] = v38;

    v40 = sub_261D7C268(v39, v94);

LABEL_16:

    return v40;
  }

  v25 = *(v9 + 2);
  v24 = v9 + 16;
  v91 = v25;
  v26 = v71 + ((v24[64] + 32) & ~v24[64]);
  v88 = *(v24 + 7);
  v90 = (v24 + 72);
  v27 = *MEMORY[0x277D44F40];
  v81 = (v24 + 80);
  v78 = (v4 + 32);
  v77 = *MEMORY[0x277D45060];
  v76 = (v4 + 104);
  v75 = (v4 + 8);
  v89 = v24 - 8;
  v67 = v26;
  v28 = v26;
  v29 = v70;
  v79 = v18;
  v80 = v24;
  while (1)
  {
    v31 = v91;
    v91(v18, v28, v8);
    v31(v23, v18, v8);
    v32 = *v90;
    if ((*v90)(v23, v8) == v27)
    {
      break;
    }

    v30 = *v89;
    (*v89)(v23, v8);
LABEL_7:
    v30(v18, v8);
    v28 += v88;
    if (!--v29)
    {
      goto LABEL_11;
    }
  }

  v86 = v32;
  v74 = *v81;
  v74(v23, v8);
  v33 = v82;
  v34 = v23;
  v35 = v84;
  (*v78)(v82, v34, v84);
  v36 = v83;
  (*v76)(v83, v77, v35);
  v87 = sub_261D861C4();
  v37 = *v75;
  (*v75)(v36, v35);
  v37(v33, v35);
  v30 = *v89;
  if ((v87 & 1) == 0)
  {
    v18 = v79;
    v23 = v85;
    goto LABEL_7;
  }

  v9 = v8;
  v30(v79, v8);

  v19 = *MEMORY[0x277D44F10];
  v42 = v72;
  v43 = v67;
  v44 = v70;
  v45 = v74;
  while (1)
  {
    v91(v42, v43, v9);
    if (v86(v42, v9) == v19)
    {
      break;
    }

    v30(v42, v9);
    v43 += v88;
    if (!--v44)
    {
      goto LABEL_11;
    }
  }

  v45(v42, v9);
  v88 = *(v42 + 1);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78);
  v18 = v43;
  v47 = *(v46 + 48);
  v48 = sub_261D862B4();
  v49 = *(*(v48 - 8) + 8);
  v49(&v42[v47], v48);

  v50 = v69;
  v91(v69, v18, v9);
  if (v86(v50, v9) == v19)
  {
    v74(v50, v9);
    v51 = *(v50 + 1);
    v90 = *v50;
    v91 = v51;
    v49(&v50[*(v46 + 48)], v48);

    v95 = MEMORY[0x277D84F90];
    a2 = v73;
    if (v68)
    {
      v4 = sub_261D86954();
    }

    else
    {
      v4 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = MEMORY[0x277D84F90];
    if (v4)
    {
      v11 = 0;
      v53 = a2 & 0xC000000000000001;
      a1 = a2 & 0xFFFFFFFFFFFFFF8;
      v8 = &_swift_FORCE_LOAD___swiftCallKit___RemindersIntentsFramework;
      v54 = &_swift_FORCE_LOAD___swiftCallKit___RemindersIntentsFramework;
      v89 = v4;
      while (1)
      {
        if (v53)
        {
          v55 = MEMORY[0x26671E4C0](v11, a2);
        }

        else
        {
          if (v11 >= *(a1 + 16))
          {
            goto LABEL_50;
          }

          v55 = *(a2 + 8 * v11 + 32);
        }

        v19 = v55;
        v9 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v20 = sub_261D86954();
          goto LABEL_3;
        }

        v56 = [v55 *(v8 + 155)];
        if (v56)
        {
          v18 = v56;
          if ([v56 v54[156]])
          {
            v57 = a1;
            v58 = v53;
            v59 = v8;
            v60 = [v19 name];
            v61 = sub_261D86534();
            v63 = v62;

            v94[0] = v61;
            v94[1] = v63;
            v92 = v90;
            v93 = v91;
            sub_261D7C3F0();
            v64 = sub_261D868E4();

            if (v64)
            {
            }

            else
            {
              sub_261D86A14();
              v18 = *(v95 + 16);
              sub_261D86A44();
              sub_261D86A54();
              sub_261D86A24();
            }

            a2 = v73;
            v8 = v59;
            v53 = v58;
            a1 = v57;
            v4 = v89;
            v54 = &_swift_FORCE_LOAD___swiftCallKit___RemindersIntentsFramework;
            goto LABEL_29;
          }
        }

LABEL_29:
        ++v11;
        if (v9 == v4)
        {
          v65 = v95;
          v52 = MEMORY[0x277D84F90];
          goto LABEL_43;
        }
      }
    }

    v65 = MEMORY[0x277D84F90];
LABEL_43:

    if ((v65 & 0x8000000000000000) != 0 || (v65 & 0x4000000000000000) != 0)
    {
      if (sub_261D86954())
      {
LABEL_46:
        if (v52 >> 62 && sub_261D86954())
        {
          sub_261D7BF9C(MEMORY[0x277D84F90]);
        }

        else
        {
          v66 = MEMORY[0x277D84FA0];
        }

        v94[0] = v66;
        v40 = sub_261D7C268(v65, v94);

        goto LABEL_16;
      }
    }

    else if (*(v65 + 16))
    {
      goto LABEL_46;
    }

    goto LABEL_12;
  }

  result = (v30)(v50, v9);
  __break(1u);
  return result;
}

uint64_t sub_261D7AB70(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_261D86BC4();
  sub_261D86574();
  v8 = sub_261D86BD4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_261D86B84() & 1) != 0)
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

    sub_261D7B5C4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_261D7ACC0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_261D86964();

    if (v9)
    {

      sub_261D7C444();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_261D86954();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_261D7AED8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_261D7B318(v20 + 1);
    }

    v18 = v8;
    sub_261D7B540(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_261D7C444();
  v11 = sub_261D86894();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_261D7B744(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_261D868A4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_261D7AED8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4888, &qword_261D882B8);
    v2 = sub_261D869A4();
    v15 = v2;
    sub_261D86944();
    if (sub_261D86974())
    {
      sub_261D7C444();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_261D7B318(v9 + 1);
        }

        v2 = v15;
        result = sub_261D86894();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_261D86974());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_261D7B0B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4890, &unk_261D882C0);
  result = sub_261D86994();
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
      sub_261D86BC4();
      sub_261D86574();
      result = sub_261D86BD4();
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

uint64_t sub_261D7B318(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4888, &qword_261D882B8);
  result = sub_261D86994();
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_261D86894();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_261D7B540(uint64_t a1, uint64_t a2)
{
  sub_261D86894();
  result = sub_261D86934();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_261D7B5C4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_261D7B0B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_261D7B8A4();
      goto LABEL_16;
    }

    sub_261D7BB50(v8 + 1);
  }

  v10 = *v4;
  sub_261D86BC4();
  sub_261D86574();
  result = sub_261D86BD4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_261D86B84();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_261D86B94();
  __break(1u);
  return result;
}

void sub_261D7B744(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_261D7B318(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_261D7BA00();
      goto LABEL_12;
    }

    sub_261D7BD88(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_261D86894();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_261D7C444();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_261D868A4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_261D86B94();
  __break(1u);
}

void *sub_261D7B8A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4890, &unk_261D882C0);
  v2 = *v0;
  v3 = sub_261D86984();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

id sub_261D7BA00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4888, &qword_261D882B8);
  v2 = *v0;
  v3 = sub_261D86984();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

  return result;
}

uint64_t sub_261D7BB50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4890, &unk_261D882C0);
  result = sub_261D86994();
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
      sub_261D86BC4();

      sub_261D86574();
      result = sub_261D86BD4();
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

uint64_t sub_261D7BD88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4888, &qword_261D882B8);
  result = sub_261D86994();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_261D86894();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

void sub_261D7BF9C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_261D86954())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4888, &qword_261D882B8);
      v3 = sub_261D869B4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_261D86954();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x26671E4C0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_261D86894();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_261D7C444();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_261D868A4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_261D86894();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_261D7C444();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_261D868A4();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_261D7C268(unint64_t a1, uint64_t a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_16:
    v3 = sub_261D86954();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x26671E4C0](v4, a1);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            return v13;
          }
        }

        else
        {
          if (v4 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(a1 + 8 * v4 + 32);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v8 = v6;
        v9 = sub_261D7ACC0(&v12, v8);

        if (v9)
        {
          sub_261D86A14();
          sub_261D86A44();
          v5 = v11;
          sub_261D86A54();
          sub_261D86A24();
        }

        else
        {
        }

        ++v4;
        if (v7 == v3)
        {
          return v13;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_261D7C3F0()
{
  result = qword_27FEF4880;
  if (!qword_27FEF4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4880);
  }

  return result;
}

unint64_t sub_261D7C444()
{
  result = qword_27FEF41C0;
  if (!qword_27FEF41C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEF41C0);
  }

  return result;
}

void sub_261D7C490(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (v7 < *(a3 + 16))
    {
      v15 = *(a3 + 8 * v7 + 32);
      v9 = v15;
      v10 = v6(&v15);
      if (v3)
      {

        return;
      }

      if (v10)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_261D8041C(0, *(v8 + 16) + 1, 1);
          v8 = v16;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_261D8041C((v12 > 1), v13 + 1, 1);
          v8 = v16;
        }

        *(v8 + 16) = v13 + 1;
        *(v8 + 8 * v13 + 32) = v9;
        v6 = a1;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_261D7C5F0()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF4898);
  v1 = __swift_project_value_buffer(v0, qword_27FEF4898);
  if (qword_27FEF3F78 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D7C740(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v11 = sub_261D864A4();
  __swift_project_value_buffer(v11, qword_27FEF4898);

  v12 = a1;
  v13 = sub_261D86494();
  v14 = sub_261D866C4();

  if (os_log_type_enabled(v13, v14))
  {
    v41 = a4;
    v15 = swift_slowAlloc();
    v40 = v6;
    v16 = swift_slowAlloc();
    v43 = v16;
    *v15 = 136315394;
    v17 = v12;
    v18 = [v17 description];
    v19 = sub_261D86534();
    v21 = v20;

    v22 = sub_261D8464C(v19, v21, &v43);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46C0, &qword_261D87BF0);
    v24 = sub_261D86544();
    v26 = sub_261D8464C(v24, v25, &v43);

    *(v15 + 14) = v26;
    _os_log_impl(&dword_261D56000, v13, v14, "Widget provideListOptions {intent: %s, searchTerm: %s}", v15, 0x16u);
    swift_arrayDestroy();
    v27 = v16;
    v6 = v40;
    MEMORY[0x26671EBF0](v27, -1, -1);
    v28 = v15;
    a4 = v41;
    MEMORY[0x26671EBF0](v28, -1, -1);
  }

  else
  {

    v23 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48D8, &unk_261D88328);
  v29 = &v6[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource];
  v30 = *&v6[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource + 24];
  v31 = *&v6[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource + 32];
  __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource], v30);
  sub_261D6D990(v30, v31);
  v32 = *(v29 + 3);
  v33 = *(v29 + 4);
  __swift_project_boxed_opaque_existential_1(v29, v32);
  sub_261D6D8B4(v32, v33);
  sub_261D86424();

  v34 = swift_allocObject();
  v34[2] = a4;
  v34[3] = a5;
  v34[4] = v6;
  v34[5] = v23;
  v34[6] = a3;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_261D80344;
  *(v35 + 24) = v34;

  v36 = v6;
  v37 = sub_261D863F4();
  sub_261D86434();

  v38 = swift_allocObject();
  *(v38 + 16) = a4;
  *(v38 + 24) = a5;

  v39 = sub_261D863F4();
  sub_261D86444();
}

void sub_261D7CC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_261D85C54();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_261D7CC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(id, void), uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v152 = a6;
  v153 = a7;
  v134 = a4;
  v135 = a3;
  v137 = sub_261D86354();
  v141 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v150 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48E8, &unk_261D88340);
  MEMORY[0x28223BE20](v11 - 8);
  v151 = v127 - v12;
  v140 = sub_261D85C94();
  v13 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v139 = v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48D0, &qword_261D88320);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v127 - v16;
  v132 = sub_261D860C4();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v133 = v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4528, &qword_261D87F70);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v127 - v20;
  v22 = sub_261D86374();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v136 = v127 - v27;
  if (!a1)
  {
LABEL_4:
    if (qword_27FEF3FB8 == -1)
    {
LABEL_5:
      v28 = sub_261D864A4();
      __swift_project_value_buffer(v28, qword_27FEF4898);
      v29 = sub_261D86494();
      v30 = sub_261D866A4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261D56000, v29, v30, "Widget provideListOptions failed no data", v31, 2u);
        MEMORY[0x26671EBF0](v31, -1, -1);
      }

      return v135(0, 0);
    }

LABEL_44:
    swift_once();
    goto LABEL_5;
  }

  sub_261D80670(a2, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_261D646F8(v21, &qword_27FEF4528, &qword_261D87F70);
    goto LABEL_4;
  }

  v149 = v13;
  v33 = v136;
  (*(v23 + 32))(v136, v21, v22);
  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v34 = sub_261D864A4();
  v35 = __swift_project_value_buffer(v34, qword_27FEF4898);
  (*(v23 + 16))(v25, v33, v22);

  v36 = v23;
  v127[1] = v35;
  v37 = sub_261D86494();
  v38 = sub_261D866C4();
  v39 = os_log_type_enabled(v37, v38);
  v130 = v22;
  v129 = v23;
  if (v39)
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    *(v40 + 4) = *(a1 + 16);

    *(v40 + 12) = 2048;
    v41 = *(sub_261D86364() + 16);

    v128 = *(v36 + 8);
    v128(v25, v22);
    *(v40 + 14) = v41;
    _os_log_impl(&dword_261D56000, v37, v38, "Widget provideListOptions smartListTypes: %ld, accounts %ld ", v40, 0x16u);
    MEMORY[0x26671EBF0](v40, -1, -1);
  }

  else
  {
    v128 = *(v23 + 8);
    v128(v25, v22);
  }

  v42 = MEMORY[0x277D84F90];
  v160 = MEMORY[0x277D84F90];
  sub_261D860E4();
  v43 = v133;
  v44 = sub_261D860D4();
  MEMORY[0x28223BE20](v44);
  v125 = v43;

  sub_261D7C490(sub_261D806E0, &v127[-4], a1);
  v147 = 0;
  v148 = a5;
  v46 = *(v45 + 16);
  v47 = v149;
  if (v46)
  {
    v154 = v42;
    v48 = v45;
    sub_261D86A34();
    sub_261D86164();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v145 = sub_261D800A0();
    v49 = v48;
    v138 = (v47 + 8);
    v144 = v158;
    v50 = 4;
    v143 = v17;
    v142 = v48;
    v51 = v148;
    while (1)
    {
      v52 = v49[v50];
      sub_261D862A4();
      v53 = sub_261D86294();
      v54 = *(v53 - 8);
      v55 = (*(v54 + 48))(v17, 1, v53);
      v149 = v46;
      if (v55 == 1)
      {
        sub_261D646F8(v17, &qword_27FEF48D0, &qword_261D88320);
        v56 = 0;
      }

      else
      {
        v57 = v139;
        sub_261D86284();
        (*(v54 + 8))(v17, v53);
        sub_261D85C74();
        v56 = v58;
        (*v138)(v57, v140);
      }

      sub_261D86734();
      if (v56)
      {
        v59 = sub_261D86504();
      }

      else
      {
        v59 = 0;
      }

      v60 = objc_allocWithZone(ObjCClassFromMetadata);
      v61 = sub_261D86504();

      v62 = [v60 initWithIdentifier:v59 displayString:v61];

      v159 = 0;
      v63 = sub_261D86744();
      v64 = swift_allocObject();
      v64[2] = v52;
      v64[3] = v51;
      v64[4] = &v159;
      v65 = swift_allocObject();
      *(v65 + 16) = sub_261D80E0C;
      *(v65 + 24) = v64;
      v158[2] = sub_261D80DFC;
      v158[3] = v65;
      aBlock = MEMORY[0x277D85DD0];
      v157 = 1107296256;
      v158[0] = sub_261D7FE50;
      v158[1] = &block_descriptor_38;
      v66 = _Block_copy(&aBlock);
      v67 = v52;
      v68 = v51;

      dispatch_sync(v63, v66);

      _Block_release(v66);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v70 = v159;

      if (v70)
      {
        v71 = v70;
        v72 = v62;
        [v72 setDisplayImage_];
      }

      sub_261D86A14();
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      ++v50;
      v46 = v149 - 1;
      v17 = v143;
      v49 = v142;
      if (v149 == 1)
      {

        v73 = v154;
        a5 = v148;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v73 = MEMORY[0x277D84F90];
LABEL_27:
  v74 = v137;
  if (v153)
  {
    v159 = MEMORY[0x277D84F90];
    if (v73 >> 62)
    {
      v75 = sub_261D86954();
      if (v75)
      {
LABEL_30:
        v76 = 0;
        v149 = v73 & 0xC000000000000001;
        while (1)
        {
          if (v149)
          {
            v78 = MEMORY[0x26671E4C0](v76, v73);
          }

          else
          {
            if (v76 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v78 = *(v73 + 8 * v76 + 32);
          }

          v79 = v78;
          v80 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            break;
          }

          v81 = [v78 displayString];
          v82 = sub_261D86534();
          v84 = v83;

          aBlock = v82;
          v157 = v84;
          v154 = v152;
          v155 = v153;
          v85 = sub_261D85D74();
          v86 = v151;
          (*(*(v85 - 8) + 56))(v151, 1, 1, v85);
          v125 = sub_261D7C3F0();
          v126 = v125;
          sub_261D868F4();
          LOBYTE(v81) = v87;
          sub_261D646F8(v86, &qword_27FEF48E8, &unk_261D88340);

          if (v81)
          {
          }

          else
          {
            sub_261D86A14();
            sub_261D86A44();
            sub_261D86A54();
            sub_261D86A24();
          }

          ++v76;
          v77 = v80 == v75;
          a5 = v148;
          if (v77)
          {
            goto LABEL_46;
          }
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v75)
      {
        goto LABEL_30;
      }
    }

LABEL_46:

    v74 = v137;
  }

  v88 = 0x277CD3000uLL;
  v89 = objc_allocWithZone(MEMORY[0x277CD3E30]);
  v90 = sub_261D86164();
  v91 = sub_261D865C4();

  v92 = [v89 initWithTitle:0 items:v91];

  v93 = v92;
  MEMORY[0x26671E090]();
  if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v139 = v93;
    sub_261D86604();
    v94 = v160;
    v95 = sub_261D86364();
    ObjCClassFromMetadata = *(v95 + 16);
    if (!ObjCClassFromMetadata)
    {
      break;
    }

    v93 = 0;
    v145 = v95 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
    v144 = (v141 + 16);
    v142 = (v141 + 8);
    v140 = v90;
    v143 = v95;
    while (v93 < *(v95 + 16))
    {
      v96 = *(v141 + 72);
      v149 = v93;
      (*(v141 + 16))(v150, v145 + v96 * v93, v74);
      v97 = sub_261D86314();
      v98 = a5;
      v99 = v147;
      v101 = sub_261D80740(v97, v98, v100);
      v147 = v99;

      if (v153)
      {
        v159 = MEMORY[0x277D84F90];
        if (v101 >> 62)
        {
          v93 = sub_261D86954();
          if (v93)
          {
LABEL_54:
            v90 = 0;
            v74 = v101 & 0xC000000000000001;
            a5 = (v101 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v74)
              {
                v102 = MEMORY[0x26671E4C0](v90, v101);
              }

              else
              {
                if (v90 >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_80;
                }

                v102 = *(v101 + 8 * v90 + 32);
              }

              v103 = v102;
              v88 = v90 + 1;
              if (__OFADD__(v90, 1))
              {
                break;
              }

              v104 = [v102 displayString];
              v105 = sub_261D86534();
              v107 = v106;

              aBlock = v105;
              v157 = v107;
              v154 = v152;
              v155 = v153;
              v108 = sub_261D85D74();
              v109 = v151;
              (*(*(v108 - 8) + 56))(v151, 1, 1, v108);
              v125 = sub_261D7C3F0();
              v126 = v125;
              sub_261D868F4();
              LOBYTE(v104) = v110;
              sub_261D646F8(v109, &qword_27FEF48E8, &unk_261D88340);

              if (v104)
              {
              }

              else
              {
                sub_261D86A14();
                sub_261D86A44();
                sub_261D86A54();
                sub_261D86A24();
              }

              ++v90;
              if (v88 == v93)
              {
                a5 = v148;
                v74 = v137;
                v88 = 0x277CD3000;
                v90 = v140;
                goto LABEL_66;
              }
            }

            __break(1u);
LABEL_80:
            __break(1u);
            break;
          }
        }

        else
        {
          v93 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v93)
          {
            goto LABEL_54;
          }
        }

LABEL_66:
      }

      v111 = sub_261D86334();
      v112 = [v111 displayName];

      if (!v112)
      {
        sub_261D86534();
        v112 = sub_261D86504();
      }

      v113 = objc_allocWithZone(*(v88 + 3632));
      v114 = sub_261D865C4();

      v115 = [v113 initWithTitle:v112 items:v114];

      v116 = v115;
      MEMORY[0x26671E090]();
      if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261D865F4();
      }

      v93 = v149 + 1;
      sub_261D86604();

      (*v142)(v150, v74);
      v95 = v143;
      if (v93 == ObjCClassFromMetadata)
      {
        v94 = v160;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_82:
    sub_261D865F4();
  }

LABEL_73:

  v117 = sub_261D86494();
  v118 = sub_261D866C4();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 134217984;
    if (v94 >> 62)
    {
      v120 = sub_261D86954();
    }

    else
    {
      v120 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v119 + 4) = v120;

    _os_log_impl(&dword_261D56000, v117, v118, "Widget provideListOptions sections %ld ", v119, 0xCu);
    MEMORY[0x26671EBF0](v119, -1, -1);
  }

  else
  {
  }

  v121 = objc_allocWithZone(MEMORY[0x277CD3E28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48F0, &qword_261D88350);
  v122 = sub_261D865C4();

  v123 = [v121 initWithSections_];

  v124 = v123;
  v135(v123, 0);

  v128(v136, v130);
  return (*(v131 + 8))(v133, v132);
}

uint64_t sub_261D7DF78(uint64_t *a1, double a2)
{
  v2 = sub_261D860C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261D86534();
  v8 = v7;
  if (v6 == sub_261D86534() && v8 == v9)
  {
    goto LABEL_14;
  }

  v11 = sub_261D86B84();

  if ((v11 & 1) == 0)
  {
    v13 = sub_261D86534();
    v15 = v14;
    if (v13 == sub_261D86534() && v15 == v16)
    {
    }

    else
    {
      v18 = sub_261D86B84();

      if ((v18 & 1) == 0)
      {
        v19 = sub_261D86534();
        v21 = v20;
        if (v19 == sub_261D86534() && v21 == v22)
        {
LABEL_14:

          v12 = 1;
          return v12 & 1;
        }

        v25 = sub_261D86B84();

        if (v25)
        {
          goto LABEL_6;
        }

        v26 = sub_261D86534();
        v28 = v27;
        if (v26 == sub_261D86534() && v28 == v29)
        {
LABEL_22:

LABEL_24:
          v12 = 0;
          return v12 & 1;
        }

        v30 = sub_261D86B84();

        if (v30)
        {
          goto LABEL_24;
        }

        v31 = sub_261D86534();
        v33 = v32;
        if (v31 == sub_261D86534() && v33 == v34)
        {
        }

        else
        {
          v35 = sub_261D86B84();

          if ((v35 & 1) == 0)
          {
            v36 = sub_261D86534();
            v38 = v37;
            if (v36 != sub_261D86534() || v38 != v39)
            {
              v40 = sub_261D86B84();

              if (v40)
              {
                goto LABEL_24;
              }

              v41 = sub_261D86534();
              v43 = v42;
              if (v41 != sub_261D86534() || v43 != v44)
              {
                sub_261D86B84();
              }
            }

            goto LABEL_22;
          }
        }

        sub_261D860B4();
LABEL_17:
        sub_261D80AD4(v23);
        v12 = sub_261D86904();
        (*(v3 + 8))(v5, v2);
        return v12 & 1;
      }
    }

    sub_261D860A4();
    goto LABEL_17;
  }

LABEL_6:
  v12 = 1;
  return v12 & 1;
}

id sub_261D7E39C(void *a1)
{
  v2 = sub_261D85C94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48D0, &qword_261D88320);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = a1;
  sub_261D862A4();
  v10 = sub_261D86294();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_261D646F8(v8, &qword_27FEF48D0, &qword_261D88320);
    v12 = 0;
  }

  else
  {
    sub_261D86284();
    (*(v11 + 8))(v8, v10);
    sub_261D85C74();
    v12 = v13;
    (*(v3 + 8))(v5, v2);
  }

  sub_261D86734();
  if (v12)
  {
    v14 = sub_261D86504();
  }

  else
  {
    v14 = 0;
  }

  sub_261D86164();
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = sub_261D86504();

  v17 = [v15 initWithIdentifier:v14 displayString:v16];

  v18 = sub_261D7F6F4(v9);
  if (v18)
  {
    v19 = v18;
    [v17 setDisplayImage_];
  }

  return v17;
}

void sub_261D7E64C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_261D862F4();
  v50 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v51 = &v37 - v11;
  v12 = sub_261D86324();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261D86304();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277D452F8])
  {
    (*(v15 + 96))(v18, v14);
    v20 = *v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_261D877A0;
    v22 = sub_261D7EBE0(v20);
LABEL_5:
    *(v21 + 32) = v22;

LABEL_6:
    *a3 = v21;
    return;
  }

  if (v19 == *MEMORY[0x277D452F0])
  {
    (*(v15 + 96))(v18, v14);
    v20 = *v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_261D877A0;
    v22 = sub_261D7EF24(v20);
    goto LABEL_5;
  }

  if (v19 == *MEMORY[0x277D45300])
  {
    (*(v15 + 96))(v18, v14);
    v23 = v41;
    v24 = v40;
    v25 = v42;
    (*(v41 + 32))();
    v26 = sub_261D86314();
    v27 = *(v26 + 16);
    if (!v27)
    {

      (*(v23 + 8))(v24, v25);
      v21 = MEMORY[0x277D84F90];
      goto LABEL_6;
    }

    v47 = a2;
    v38 = a3;
    v39 = v3;
    v52 = MEMORY[0x277D84F90];
    v48 = v27;
    sub_261D86A34();
    v28 = 0;
    v29 = *(v50 + 80);
    v49 = v26;
    v46 = v26 + ((v29 + 32) & ~v29);
    v45 = v50 + 88;
    v44 = *MEMORY[0x277D452E8];
    v43 = *MEMORY[0x277D452E0];
    v30 = (v50 + 96);
    v31 = (v50 + 8);
    while (v28 < *(v49 + 16))
    {
      v33 = v50;
      v34 = v51;
      v35 = *(v50 + 16);
      v35(v51, v46 + *(v50 + 72) * v28, v7);
      v35(v9, v34, v7);
      v36 = (*(v33 + 88))(v9, v7);
      if (v36 == v44)
      {
        (*v30)(v9, v7);
        v32 = *v9;
        sub_261D7EBE0(*v9);
      }

      else
      {
        if (v36 != v43)
        {
          goto LABEL_19;
        }

        (*v30)(v9, v7);
        v32 = *v9;
        sub_261D7EF24(*v9);
      }

      ++v28;

      (*v31)(v51, v7);
      sub_261D86A14();
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      if (v48 == v28)
      {
        (*(v41 + 8))(v40, v42);

        v21 = v52;
        a3 = v38;
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_19:
    sub_261D86B74();
    __break(1u);
  }

  sub_261D86B74();
  __break(1u);
}

id sub_261D7EBE0(void *a1)
{
  v2 = sub_261D85EE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261D85C94();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 objectID];
  v12 = [v11 urlRepresentation];

  sub_261D85C84();
  sub_261D85C74();
  (*(v7 + 8))(v10, v6);
  v13 = [a1 displayName];
  if (!v13)
  {
    sub_261D86534();
    v13 = sub_261D86504();
  }

  sub_261D86164();
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_261D86504();

  v16 = [v14 initWithIdentifier:v15 displayString:v13];

  v17 = [a1 appearanceContext];
  v18 = [v17 badge];

  v19 = [a1 color];
  (*(v3 + 104))(v5, *MEMORY[0x277D45CC0], v2);
  v20 = sub_261D7F87C(v18, v19, v5);

  (*(v3 + 8))(v5, v2);
  if (v20)
  {
    [v16 setDisplayImage_];
  }

  v21 = v16;
  v22 = [a1 sharingStatusText];
  [v21 setSubtitleString_];

  return v21;
}

id sub_261D7EF24(void *a1)
{
  v2 = sub_261D85EE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261D85C94();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 objectID];
  v12 = [v11 urlRepresentation];

  sub_261D85C84();
  sub_261D85C74();
  (*(v7 + 8))(v10, v6);
  v13 = [a1 name];
  if (!v13)
  {
    sub_261D86534();
    v13 = sub_261D86504();
  }

  sub_261D86164();
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_261D86504();

  v16 = [v14 initWithIdentifier:v15 displayString:v13];

  v17 = [a1 customContext];
  v18 = [v17 badge];
  v19 = [v17 color];

  sub_261D85ED4();
  v20 = sub_261D7F87C(v18, v19, v5);

  (*(v3 + 8))(v5, v2);
  if (v20)
  {
    [v16 setDisplayImage_];
  }

  [v16 setSubtitleString_];
  return v16;
}

uint64_t sub_261D7F224(void *a1, uint64_t (*a2)(void, void *))
{
  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF4898);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_261D86BA4();
    v12 = sub_261D8464C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_261D56000, v6, v7, "Widget provideListOptions failed error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  return a2(0, a1);
}

id sub_261D7F490(void *a1)
{
  v2 = v1;
  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF4898);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_261D86534();
    v14 = v13;

    v15 = sub_261D8464C(v12, v14, &v22);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_261D56000, v6, v7, "Widget defaultList {intent: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  v16 = *(v2 + OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource + 24);
  v17 = *(v2 + OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC25RemindersIntentsFramework26ConfigurationIntentHandler_dataSource), v16);
  v18 = (*(v17 + 72))(v16, v17);
  if (!v18)
  {
    return sub_261D7E39C(*MEMORY[0x277D44BC0]);
  }

  v19 = v18;
  v20 = sub_261D7EBE0(v18);

  return v20;
}

uint64_t sub_261D7F6F4(void *a1)
{
  v2 = v1;
  v13 = 0;
  sub_261D800A0();
  v4 = sub_261D86744();
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = v2;
  v5[4] = &v13;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_261D802A0;
  *(v6 + 24) = v5;
  aBlock[4] = sub_261D80DFC;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261D7FE50;
  aBlock[3] = &block_descriptor_15;
  v7 = _Block_copy(aBlock);
  v8 = a1;
  v9 = v2;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_261D7F87C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_261D85EE4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v23 = 0;
  sub_261D800A0();
  v11 = sub_261D86744();
  (*(v9 + 16))(&aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v4;
  *(v13 + 3) = a1;
  *(v13 + 4) = a2;
  (*(v9 + 32))(&v13[v12], &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *&v13[(v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8] = &v23;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_261D801CC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_261D80260;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261D7FE50;
  aBlock[3] = &block_descriptor_2;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  v17 = v4;
  v18 = a1;

  dispatch_sync(v11, v15);

  _Block_release(v15);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
    v20 = v23;

    return v20;
  }

  return result;
}

void sub_261D7FAE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v31 = a5;
  v32 = a4;
  v7 = sub_261D85EE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261D85E34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(sub_261D85F24()) initWithFrame_];
  if (!a2)
  {
    goto LABEL_7;
  }

  v16 = [a2 emoji];
  if (!v16)
  {
    v20 = [a2 emblem];
    if (v20)
    {
      v21 = v20;
      sub_261D86754();

      goto LABEL_8;
    }

LABEL_7:
    sub_261D86754();
LABEL_8:
    sub_261D85F04();
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = v16;
  sub_261D86534();
  v30 = v11;

  v11 = v30;
  sub_261D85EF4();
  sub_261D85EC4();
  if (!a3)
  {
LABEL_4:
    sub_261D85E44();
    v18 = v15;
    sub_261D85E14();
    v19 = sub_261D85E24();
    (*(v12 + 8))(v14, v11);
    goto LABEL_10;
  }

LABEL_9:
  v22 = v15;
  v19 = sub_261D868B4();
LABEL_10:
  [v15 setTintColor_];

  (*(v8 + 16))(v10, v32, v7);
  sub_261D85F14();
  sub_261D86844();
  [v15 layoutIfNeeded];
  v23 = sub_261D86834();
  if (v23)
  {
    v24 = v23;
    v25 = [objc_opt_self() imageWithUIImage_];
    v26 = v31;
    v27 = *v31;
    *v31 = v25;

    if (*v26)
    {
      v28 = *v26;
      [v28 _setRenderingMode_];
    }

    v15 = v24;
  }
}

void sub_261D7FE78(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = sub_261D86724();
  if (v4)
  {
    v5 = v4;
    v6 = sub_261D86714();
    if (v6)
    {
      v7 = v6;
      v8 = [objc_allocWithZone(sub_261D85F24()) initWithFrame_];
      v15 = v5;
      sub_261D85F04();
      [v8 setTintColor_];
      v9 = sub_261D86834();
      if (v9)
      {
        v10 = v9;
        v11 = [objc_opt_self() imageWithUIImage_];
        v12 = *a3;
        *a3 = v11;

        if (*a3)
        {
          v13 = *a3;
          [v13 _setRenderingMode_];
        }
      }

      else
      {
        v10 = v15;
        v15 = v8;
      }

      v14 = v15;
    }

    else
    {
      v14 = v5;
    }
  }
}

id sub_261D7FFF4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_261D800A0()
{
  result = qword_27FEF47D0;
  if (!qword_27FEF47D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEF47D0);
  }

  return result;
}

uint64_t sub_261D800EC()
{
  v1 = sub_261D85EE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_261D801CC()
{
  v1 = *(sub_261D85EE4() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_261D7FAE8(v3, v4, v6, v0 + v2, v5);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261D802BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D802FC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261D80354()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D8038C(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48E0, &qword_261D88338);
  return v3(v4, &a1[*(v5 + 48)]);
}

char *sub_261D803FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261D8043C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_261D8041C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_261D80548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_261D8043C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4910, &qword_261D88360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261D80548(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4520, &qword_261D87F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for REMSmartListType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_261D80670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4528, &qword_261D87F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261D80700()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D80740(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v34 = *(a1 + 16);
  if (!v34)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(sub_261D86304() - 8);
  v33 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = MEMORY[0x277D84F90];
  v32 = *(v7 + 72);
  while (1)
  {
    v10 = v4;
    sub_261D7E64C(v33 + v32 * v6, a2, &v39);
    if (v4)
    {

      return v8;
    }

    v11 = v39;
    v12 = v39 >> 62;
    if (v39 >> 62)
    {
      v13 = sub_261D86954();
    }

    else
    {
      v13 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      v30 = sub_261D86954();
      v16 = v30 + v13;
      if (__OFADD__(v30, v13))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v13;
    if (result)
    {
      if (!v14)
      {
        v17 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_261D86954();
      goto LABEL_16;
    }

    if (v14)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_261D869F4();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v19 >> 1) - v18) < v37)
    {
      goto LABEL_38;
    }

    v36 = v8;
    v22 = v17 + 8 * v18 + 32;
    v31 = v17;
    if (v12)
    {
      if (v20 < 1)
      {
        goto LABEL_40;
      }

      sub_261D80A6C();
      for (i = 0; i != v20; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF48F8, &qword_261D88358);
        v24 = sub_261D84EB4(v38, i, v11);
        v26 = *v25;
        (v24)(v38, 0);
        *(v22 + 8 * i) = v26;
      }
    }

    else
    {
      sub_261D86164();
      swift_arrayInitWithCopy();
    }

    v4 = v10;
    v8 = v36;
    if (v37 >= 1)
    {
      v27 = *(v31 + 16);
      v28 = __OFADD__(v27, v37);
      v29 = v27 + v37;
      if (v28)
      {
        goto LABEL_39;
      }

      *(v31 + 16) = v29;
    }

LABEL_4:
    if (++v6 == v34)
    {
      return v8;
    }
  }

  v21 = v17;
  result = sub_261D86954();
  v17 = v21;
  v20 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_261D80A6C()
{
  result = qword_27FEF4900;
  if (!qword_27FEF4900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF48F8, &qword_261D88358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4900);
  }

  return result;
}

unint64_t sub_261D80AD4(double a1)
{
  result = qword_27FEF4908;
  if (!qword_27FEF4908)
  {
    sub_261D860C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4908);
  }

  return result;
}

void sub_261D80B2C(void *a1, uint64_t a2)
{
  sub_261D863E4();
  v4 = sub_261D863D4();
  v5 = [a1 list];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 identifier];
  }

  else
  {
    v7 = 0;
  }

  [v4 setList_];

  if (qword_27FEF3FB8 != -1)
  {
    swift_once();
  }

  v8 = sub_261D864A4();
  __swift_project_value_buffer(v8, qword_27FEF4898);
  v9 = a1;
  v26 = v4;
  v10 = sub_261D86494();
  v11 = sub_261D866C4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315394;
    v14 = v9;
    v15 = [v14 description];
    v16 = sub_261D86534();
    v18 = v17;

    v19 = sub_261D8464C(v16, v18, &v27);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    v20 = v26;
    v21 = [v20 description];
    v22 = sub_261D86534();
    v24 = v23;

    v25 = sub_261D8464C(v22, v24, &v27);

    *(v12 + 14) = v25;
    _os_log_impl(&dword_261D56000, v10, v11, "Widget handle {intent: %s, response: %s}", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v13, -1, -1);
    MEMORY[0x26671EBF0](v12, -1, -1);
  }

  (*(a2 + 16))(a2, v26);
}

uint64_t sub_261D80E10(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D86954())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x277D84F90];
    sub_261D86A34();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26671E4C0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_261D86A14();
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_261D80F9C(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_261D86A34();
    v9 = *(sub_261D86194() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_261D86A14();
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_261D81114(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  v11[2] = &v12;
  v8 = sub_261D80F9C(a4, v11, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4930, &qword_261D883D0);
  v11[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4938, &unk_261D883D8);
  sub_261D854C4();
  sub_261D86414();

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  v10 = sub_261D863F4();
  sub_261D86434();
}

uint64_t sub_261D81230()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF4918);
  v1 = __swift_project_value_buffer(v0, qword_27FEF4918);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261D812F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_261D86194();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v24 = v5;
    v25 = a2;
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v27 = *MEMORY[0x277D44F30];
    v16 = (v13 - 8);
    v17 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v26 = *(v13 + 56);
    while (1)
    {
      v14(v11, v17, v4, v9);
      (v14)(v7, v11, v4);
      v18 = (*(v13 + 72))(v7, v4);
      if (v18 == v27)
      {
        break;
      }

      v19 = *v16;
      (*v16)(v7, v4);
      v19(v11, v4);
      v17 += v26;
      if (!--v12)
      {
        v20 = 1;
        v5 = v24;
        a2 = v25;
        return (*(v5 + 56))(a2, v20, 1, v4);
      }
    }

    v5 = v24;
    (*(v24 + 96))(v7, v4);

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46F0, &qword_261D88178) + 48);
    v22 = sub_261D86184();
    (*(*(v22 - 8) + 8))(v7 + v21, v22);
    a2 = v25;
    (*(v5 + 32))(v25, v11, v4);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  return (*(v5 + 56))(a2, v20, 1, v4);
}

void sub_261D8157C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (sub_261D8575C(a1))
  {
    if (qword_27FEF3FC0 != -1)
    {
      swift_once();
    }

    v8 = sub_261D864A4();
    __swift_project_value_buffer(v8, qword_27FEF4918);

    v9 = sub_261D86494();
    v10 = sub_261D866C4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;
      v13 = sub_261D86194();
      v14 = MEMORY[0x26671E0C0](a1, v13);
      v16 = sub_261D8464C(v14, v15, &v32);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_261D56000, v9, v10, "Querying Spotlight for reminders {criteria: %s}", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26671EBF0](v12, -1, -1);
      MEMORY[0x26671EBF0](v11, -1, -1);
    }

    sub_261D86094();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4948, &qword_261D883E8);
    v17 = sub_261D861B4();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_261D87AE0;
    (*(v18 + 104))(v20 + v19, *MEMORY[0x277D45058], v17);
    sub_261D597EC(0, &qword_27FEF47D0, 0x277D85C78);
    v21 = sub_261D86744();
    sub_261D86084();

    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = v4;
    v22[4] = a2;
    v22[5] = a3;

    v23 = sub_261D863F4();
    sub_261D86434();

    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a2;
    v24[4] = a3;

    v31 = sub_261D863F4();
    sub_261D86444();
  }

  else
  {
    if (qword_27FEF3FC0 != -1)
    {
      swift_once();
    }

    v25 = sub_261D864A4();
    __swift_project_value_buffer(v25, qword_27FEF4918);
    v26 = sub_261D86494();
    v27 = sub_261D866C4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_261D56000, v26, v27, "Criteria does not contain a text search, using fallback data source", v28, 2u);
      MEMORY[0x26671EBF0](v28, -1, -1);
    }

    v29 = v4[7];
    v30 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v29);
    (*(v30 + 24))(a1, a2, a3, v29, v30);
  }
}

uint64_t sub_261D81A18(uint64_t *a1, unint64_t a2, void *a3, void (*a4)(uint64_t), unint64_t a5)
{
  v6 = v5;
  v96 = a4;
  v105[1] = *MEMORY[0x277D85DE8];
  v104 = sub_261D86184();
  v92 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v89 - v13;
  MEMORY[0x28223BE20](v14);
  v103 = (&v89 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4688, &unk_261D88150);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v89 - v17;
  v102 = sub_261D86194();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v93 = (&v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v95 = &v89 - v21;

  v23 = sub_261D84CE4(v22);

  if (qword_27FEF3FC0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v24 = sub_261D864A4();
    v25 = __swift_project_value_buffer(v24, qword_27FEF4918);

    v94 = v25;
    v26 = sub_261D86494();
    v27 = sub_261D866C4();

    v28 = os_log_type_enabled(v26, v27);
    v97 = a5;
    v98 = a3;
    v99 = a2;
    if (v28)
    {
      v101 = v11;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v105[0] = v30;
      *v29 = 134218498;
      v90 = v6;
      if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
      {
        v31 = sub_261D86954();
      }

      else
      {
        v31 = *(v23 + 16);
      }

      *(v29 + 4) = v31;

      *(v29 + 12) = 2080;
      v32 = MEMORY[0x26671E0C0](a2, v102);
      v34 = sub_261D8464C(v32, v33, v105);

      *(v29 + 14) = v34;
      *(v29 + 22) = 2080;
      v35 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
      v36 = MEMORY[0x26671E0C0](v23, v35);
      v38 = sub_261D8464C(v36, v37, v105);

      *(v29 + 24) = v38;
      _os_log_impl(&dword_261D56000, v26, v27, "Got %ld reminders from Spotlight {criteria: %s, reminderIDs: %s}", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671EBF0](v30, -1, -1);
      MEMORY[0x26671EBF0](v29, -1, -1);

      v6 = v90;
      a3 = v98;
      v11 = v101;
    }

    else
    {
    }

    v39 = a3[2];
    sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
    v40 = sub_261D865C4();

    v105[0] = 0;
    v41 = [v39 fetchRemindersWithObjectIDs:v40 error:v105];

    v42 = v105[0];
    if (!v41)
    {
      v49 = v105[0];
      sub_261D85C64();

      return swift_willThrow();
    }

    v43 = v11;
    sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
    sub_261D6C624();
    v44 = sub_261D864C4();
    v45 = v42;

    v23 = sub_261D84C1C(v44, &unk_27FEF4440, 0x277D44750);

    v46 = v99;
    sub_261D812F8(v99, v18);
    v47 = v100;
    v48 = v102;
    if ((*(v100 + 48))(v18, 1, v102) == 1)
    {
      sub_261D85A30(v18);
      goto LABEL_34;
    }

    v51 = v95;
    (*(v47 + 32))(v95, v18, v48);
    v52 = v93;
    (*(v47 + 16))(v93, v51, v48);
    if ((*(v47 + 88))(v52, v48) != *MEMORY[0x277D44F30])
    {
      v66 = *(v47 + 8);
      v66(v51, v48);
      v66(v52, v48);
      goto LABEL_34;
    }

    (*(v47 + 96))(v52, v48);
    v101 = *v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46F0, &qword_261D88178);
    v54 = v92;
    v55 = v52 + *(v53 + 48);
    a3 = v103;
    v18 = v104;
    (v92[4])(v103, v55, v104);
    v11 = v91;
    (v54[13])(v91, *MEMORY[0x277D44F58], v18);
    v56 = sub_261D86174();
    v57 = v54[1];
    v93 = (v54 + 1);
    v91 = v57;
    (v57)(v11, v18);
    if ((v56 & 1) == 0)
    {
      v67 = v43;
      (v54[2])(v43, a3, v18);
      v68 = sub_261D86494();
      v69 = a3;
      v70 = sub_261D866B4();
      if (os_log_type_enabled(v68, v70))
      {
        v71 = swift_slowAlloc();
        v72 = v67;
        v92 = swift_slowAlloc();
        v105[0] = v92;
        *v71 = 136315138;
        sub_261D85A98();
        v73 = sub_261D86B54();
        v74 = v18;
        v76 = v75;
        v77 = v91;
        (v91)(v72, v74);
        v78 = sub_261D8464C(v73, v76, v105);

        *(v71 + 4) = v78;
        _os_log_impl(&dword_261D56000, v68, v70, "Called with %s, but should only be .includeForSiri in TTRIntentsHandlerSpotlightDataSource.", v71, 0xCu);
        v79 = v92;
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x26671EBF0](v79, -1, -1);
        v80 = v71;
        v46 = v99;
        MEMORY[0x26671EBF0](v80, -1, -1);

        (v77)(v103, v104);
      }

      else
      {

        v81 = v91;
        (v91)(v67, v18);
        (v81)(v69, v18);
      }

      (*(v100 + 8))(v95, v102);
LABEL_34:
      v82 = v97;
      if (v23 >> 62)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    v58 = sub_261D86494();
    v59 = sub_261D866C4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_261D56000, v58, v59, "Criteria had list id, filtering further", v60, 2u);
      MEMORY[0x26671EBF0](v60, -1, -1);
    }

    v90 = v6;

    v105[0] = MEMORY[0x277D84F90];

    v61 = *(v23 + 16);
    if (!v61)
    {
      goto LABEL_42;
    }

LABEL_19:
    a2 = 0;
    a5 = v23 & 0xC000000000000001;
    while (1)
    {
      if (a5)
      {
        v63 = MEMORY[0x26671E4C0](a2, v23);
      }

      else
      {
        if (a2 >= *(v23 + 16))
        {
          goto LABEL_38;
        }

        v63 = *(v23 + 8 * a2 + 32);
      }

      v11 = v63;
      a3 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      sub_261D597EC(0, &qword_27FEF4960, 0x277D82BB8);
      v6 = [v11 list];
      v64 = [v6 objectID];

      v65 = sub_261D868A4();
      if (v65)
      {
        sub_261D86A14();
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
      }

      else
      {
      }

      ++a2;
      v62 = a3 == v61;
      a3 = v103;
      v18 = v104;
      if (v62)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v61 = sub_261D86954();
  if (v61)
  {
    goto LABEL_19;
  }

LABEL_42:

  (v91)(a3, v18);
  (*(v100 + 8))(v95, v102);
  v23 = v105[0];
  v82 = v97;
  v46 = v99;
  if (v105[0] >> 62)
  {
LABEL_43:
    if (!sub_261D86954())
    {
      goto LABEL_44;
    }

LABEL_36:
    v96(v23);
  }

LABEL_35:
  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_44:
  v83 = v46;

  v84 = sub_261D86494();
  v85 = sub_261D866C4();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&dword_261D56000, v84, v85, "Consulting fallbackDataSource since Spotlight result is empty.", v86, 2u);
    MEMORY[0x26671EBF0](v86, -1, -1);
  }

  v87 = v98[7];
  v88 = v98[8];
  __swift_project_boxed_opaque_existential_1(v98 + 4, v87);
  return (*(v88 + 24))(v83, v96, v82, v87, v88);
}

uint64_t sub_261D825A4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_27FEF3FC0 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF4918);

  v7 = a1;
  v8 = sub_261D86494();
  v9 = sub_261D866A4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    v12 = sub_261D86194();
    v13 = MEMORY[0x26671E0C0](a2, v12);
    v15 = sub_261D8464C(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v16 = sub_261D86BA4();
    v18 = sub_261D8464C(v16, v17, &v20);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_261D56000, v8, v9, "Error matching reminders from Spotlight {criteria: %s, error: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v11, -1, -1);
    MEMORY[0x26671EBF0](v10, -1, -1);
  }

  return a3(MEMORY[0x277D84F90]);
}

void sub_261D82794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) < 2uLL)
  {
    v9 = v3;
    if (qword_27FEF3FC0 != -1)
    {
      swift_once();
    }

    v10 = sub_261D864A4();
    __swift_project_value_buffer(v10, qword_27FEF4918);

    v11 = sub_261D86494();
    v12 = sub_261D866C4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      v15 = sub_261D86194();
      v16 = MEMORY[0x26671E0C0](a1, v15);
      v18 = sub_261D8464C(v16, v17, &v28);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_261D56000, v11, v12, "Querying Spotlight for lists {criteria: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x26671EBF0](v14, -1, -1);
      MEMORY[0x26671EBF0](v13, -1, -1);
    }

    sub_261D86094();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4948, &qword_261D883E8);
    v19 = sub_261D861B4();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_261D87AE0;
    (*(v20 + 104))(v22 + v21, *MEMORY[0x277D45050], v19);
    sub_261D597EC(0, &qword_27FEF47D0, 0x277D85C78);
    v23 = sub_261D86744();
    sub_261D86084();

    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = v9;
    v24[4] = a2;
    v24[5] = a3;

    v25 = sub_261D863F4();
    sub_261D86434();

    v26 = swift_allocObject();
    v26[2] = a1;
    v26[3] = a2;
    v26[4] = a3;

    v27 = sub_261D863F4();
    sub_261D86444();
  }

  else
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a3;
    v7[4] = a1;

    sub_261D81114(v8, sub_261D856EC, v7, sub_261D85490, &unk_28744B8C8, sub_261D85560);
  }
}

uint64_t sub_261D82BE0(unint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = sub_261D86224();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261D7A248(a5, a1);

  sub_261D86204();
  a3(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_261D82CF0(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v51 = a3;
  v52[1] = *MEMORY[0x277D85DE8];
  v9 = sub_261D86224();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_261D84CE4(v11);

  if (qword_27FEF3FC0 != -1)
  {
    swift_once();
  }

  v13 = sub_261D864A4();
  v14 = __swift_project_value_buffer(v13, qword_27FEF4918);

  v47 = v14;
  v15 = sub_261D86494();
  v16 = sub_261D866C4();

  if (os_log_type_enabled(v15, v16))
  {
    v45 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v52[0] = v18;
    *v17 = 134218498;
    v46 = a5;
    v44 = v5;
    if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
    {
      v19 = sub_261D86954();
    }

    else
    {
      v19 = *(v12 + 16);
    }

    *(v17 + 4) = v19;

    *(v17 + 12) = 2080;
    v20 = sub_261D86194();
    v21 = a2;
    v22 = MEMORY[0x26671E0C0](a2, v20);
    v24 = sub_261D8464C(v22, v23, v52);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    v25 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
    v26 = MEMORY[0x26671E0C0](v12, v25);
    v28 = sub_261D8464C(v26, v27, v52);

    *(v17 + 24) = v28;
    _os_log_impl(&dword_261D56000, v15, v16, "Got %ld lists from Spotlight {criteria: %s, listIDs: %s}", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v18, -1, -1);
    MEMORY[0x26671EBF0](v17, -1, -1);

    a4 = v45;
    a5 = v46;
  }

  else
  {
    v21 = a2;
  }

  v29 = v51[2];
  sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
  v30 = sub_261D865C4();

  v52[0] = 0;
  v31 = [v29 fetchListsWithObjectIDs:v30 error:v52];

  v32 = v52[0];
  if (v31)
  {
    sub_261D597EC(0, &qword_27FEF41C0, 0x277D44660);
    sub_261D6C624();
    v33 = sub_261D864C4();
    v34 = v32;

    if ((v33 & 0xC000000000000001) != 0)
    {
      v35 = v21;
      if (sub_261D86954())
      {
LABEL_12:
        sub_261D84C1C(v33, &qword_27FEF41C0, 0x277D44660);

        v36 = v48;
        sub_261D86204();
        a4(v36);
        return (*(v49 + 8))(v36, v50);
      }
    }

    else
    {
      v35 = v21;
      if (*(v33 + 16))
      {
        goto LABEL_12;
      }
    }

    v39 = sub_261D86494();
    v40 = sub_261D866C4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_261D56000, v39, v40, "Consulting fallbackDataSource for CSL or non-Spotlight-indexed list", v41, 2u);
      MEMORY[0x26671EBF0](v41, -1, -1);
    }

    v42 = v51[7];
    v43 = v51[8];
    __swift_project_boxed_opaque_existential_1(v51 + 4, v42);
    return (*(v43 + 32))(v35, a4, a5, v42, v43);
  }

  else
  {
    v38 = v52[0];
    sub_261D85C64();

    return swift_willThrow();
  }
}

uint64_t sub_261D83210(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_261D86224();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FEF3FC0 != -1)
  {
    swift_once();
  }

  v12 = sub_261D864A4();
  __swift_project_value_buffer(v12, qword_27FEF4918);

  v13 = a1;
  v14 = sub_261D86494();
  v15 = sub_261D866A4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29[1] = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = a3;
    v19 = v18;
    v31 = v18;
    *v17 = 136315394;
    v20 = sub_261D86194();
    v21 = MEMORY[0x26671E0C0](a2, v20);
    v23 = sub_261D8464C(v21, v22, &v31);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v24 = sub_261D86BA4();
    v26 = sub_261D8464C(v24, v25, &v31);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_261D56000, v14, v15, "Error matching lists from Spotlight {criteria: %s, error: %s}", v17, 0x16u);
    swift_arrayDestroy();
    v27 = v19;
    a3 = v30;
    MEMORY[0x26671EBF0](v27, -1, -1);
    MEMORY[0x26671EBF0](v17, -1, -1);
  }

  sub_261D86204();
  a3(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_261D834B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = sub_261D86194();
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v49 - v8);
  result = swift_allocObject();
  v67 = result;
  v68 = MEMORY[0x277D84F90];
  *(result + 16) = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    result = sub_261D86954();
    v11 = result;
    v50 = a2;
    v51 = a3;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_31:
    v43 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_32;
    }

LABEL_29:
    v45 = swift_allocObject();
    v46 = v51;
    v45[2] = v52;
    v45[3] = a1;
    v45[4] = v50;
    v45[5] = v46;
    v45[6] = v44;
    v45[7] = v67;

    sub_261D81114(v43, sub_261D84EA4, v45, sub_261D85490, &unk_28744B8C8, sub_261D85560);
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v50 = a2;
  v51 = a3;
  if (!v11)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = a1 & 0xC000000000000001;
    v58 = *MEMORY[0x277D45270];
    v57 = *MEMORY[0x277D44F10];
    v63 = v62 + 32;
    v64 = (v62 + 104);
    v55 = 0x8000000261D8D570;
    v54 = *MEMORY[0x277D45060];
    v65 = MEMORY[0x277D84F90];
    v53 = *MEMORY[0x277D44F40];
    v60 = v11;
    v61 = a1;
    v59 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v13)
      {
        v14 = MEMORY[0x26671E4C0](v12, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = sub_261D86674();
      if (v16)
      {

        v17 = v15;
        MEMORY[0x26671E090]();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261D865F4();
        }

        sub_261D86604();

        v65 = v68;
      }

      else
      {
        v18 = [v15 title];
        v19 = [v18 spokenPhrase];

        v20 = sub_261D86534();
        v22 = v21;

        v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78) + 48);
        *v9 = v20;
        v9[1] = v22;
        v24 = sub_261D862B4();
        (*(*(v24 - 8) + 104))(v9 + v23, v58, v24);
        v25 = *v64;
        (*v64)(v9, v57, v66);
        v26 = *(v67 + 16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_261D843E8(0, *(v26 + 2) + 1, 1, v26, &qword_27FEF4438, &qword_261D88170, MEMORY[0x277D44F90]);
          *(v67 + 16) = v26;
        }

        v28 = *(v26 + 2);
        v27 = *(v26 + 3);
        if (v28 >= v27 >> 1)
        {
          v26 = sub_261D843E8((v27 > 1), v28 + 1, 1, v26, &qword_27FEF4438, &qword_261D88170, MEMORY[0x277D44F90]);
        }

        *(v26 + 2) = v28 + 1;
        v29 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v30 = *(v62 + 72);
        v31 = *(v62 + 32);
        v31(&v26[v29 + v30 * v28], v9, v66);
        *(v67 + 16) = v26;
        v32 = [v15 title];
        v33 = [v32 vocabularyIdentifier];

        if (v33)
        {
          v34 = sub_261D86534();
          v36 = v35;

          if (v34 == 0xD000000000000011 && v55 == v36)
          {

LABEL_23:
            v38 = sub_261D861D4();
            v39 = v56;
            (*(*(v38 - 8) + 104))(v56, v54, v38);
            v25(v39, v53, v66);
            v40 = *(v67 + 16);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_261D843E8(0, *(v40 + 2) + 1, 1, v40, &qword_27FEF4438, &qword_261D88170, MEMORY[0x277D44F90]);
              *(v67 + 16) = v40;
            }

            v42 = *(v40 + 2);
            v41 = *(v40 + 3);
            v13 = v59;
            if (v42 >= v41 >> 1)
            {
              v40 = sub_261D843E8((v41 > 1), v42 + 1, 1, v40, &qword_27FEF4438, &qword_261D88170, MEMORY[0x277D44F90]);
              *(v67 + 16) = v40;
            }

            *(v40 + 2) = v42 + 1;
            v31(&v40[v29 + v42 * v30], v56, v66);
            *(v67 + 16) = v40;
            v11 = v60;
            a1 = v61;
            goto LABEL_6;
          }

          v37 = sub_261D86B84();

          if (v37)
          {
            goto LABEL_23;
          }
        }

        v11 = v60;
        a1 = v61;
        v13 = v59;
      }

LABEL_6:
      if (v11 == ++v12)
      {
        v43 = *(v67 + 16);
        v44 = v65;
        if (*(v43 + 16))
        {
          goto LABEL_29;
        }

LABEL_32:

        v47 = v52[7];
        v48 = v52[8];
        __swift_project_boxed_opaque_existential_1(v52 + 4, v47);
        (*(v48 + 40))(a1, v50, v51, v47, v48);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261D83C1C(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 >> 62)
  {
    v19 = a4;
    v20 = a3;
    v21 = sub_261D86954();
    a3 = v20;
    a4 = v19;
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_3:
    if (a2 >> 62)
    {
      v22 = a4;
      v23 = a3;
      v24 = sub_261D86954();
      a3 = v23;
      a4 = v22;
      if (v24)
      {
        goto LABEL_5;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    v25 = a6;
    v26 = a3[7];
    v27 = a3[8];
    v28 = a4;
    __swift_project_boxed_opaque_existential_1(a3 + 4, v26);
    return (*(v27 + 40))(v28, a5, v25, v26, v27);
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_5:
  v14 = a3[7];
  v15 = a3[8];
  __swift_project_boxed_opaque_existential_1(a3 + 4, v14);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a8;
  v16[4] = a2;
  v16[5] = a5;
  v16[6] = a6;
  v17 = *(v15 + 40);

  v17(a7, sub_261D85668, v16, v14, v15);
}

uint64_t sub_261D83DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v17 = a5;
  v7 = sub_261D86224();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261D86214();
  v19[0] = a2;

  sub_261D6DB80(v11);
  v12 = v19[0];
  swift_beginAccess();

  sub_261D7A248(v13, v12);

  v14 = sub_261D861F4();
  v18 = a4;

  sub_261D6DB68(v14);
  sub_261D86204();
  v17(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_261D83F94()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_261D84000(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 64);
  __swift_project_boxed_opaque_existential_1((*v1 + 32), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_261D840CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 56);
  v10 = *(*v4 + 64);
  __swift_project_boxed_opaque_existential_1((*v4 + 32), v9);
  return (*(v10 + 56))(a1, a2, a3, a4, v9, v10);
}

uint64_t sub_261D84154()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t sub_261D841AC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 64);
  __swift_project_boxed_opaque_existential_1((*v2 + 32), v5);
  return (*(v6 + 80))(a1, a2, v5, v6);
}

uint64_t sub_261D8421C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 64);
  __swift_project_boxed_opaque_existential_1((*v2 + 32), v5);
  return (*(v6 + 88))(a1, a2, v5, v6);
}

char *sub_261D842B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4910, &qword_261D88360);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_261D843E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}