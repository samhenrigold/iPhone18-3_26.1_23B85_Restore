void sub_269289244(char *a1, void (*a2)(char *))
{
  v4 = [a1 createdAlarm];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  if (*&a1[v6] != 4)
  {

LABEL_5:
    v7 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v12 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v7[v12] = 5;
    [v7 setUserActivity_];
    a2(v7);
    goto LABEL_6;
  }

  v7 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v8 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v7[v8] = 4;
  [v7 setUserActivity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2692C9430;
  *(v9 + 32) = v5;
  type metadata accessor for SiriAlarm();
  v10 = v5;
  v11 = sub_2692C7910();

  [v7 setModifiedAlarms_];

  a2(v7);
LABEL_6:
}

void sub_26928941C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *))
{
  v7 = sub_2692C77A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  v13 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v8 + 8))(v11, v7);
  if (v13)
  {
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v14 = sub_2692C77C0();
    __swift_project_value_buffer(v14, qword_280302D28);
    v15 = sub_2692C77B0();
    v16 = sub_2692C79F0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41[0] = v18;
      *v17 = 136315138;
      v40[7] = v12;
      v19 = sub_2692C7840();
      v21 = sub_26927C4DC(v19, v20, v41);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_269270000, v15, v16, "Failed to dismiss alarms, error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D6368E0](v18, -1, -1);
      MEMORY[0x26D6368E0](v17, -1, -1);
    }

    v22 = sub_2692C7760();
    v41[3] = v22;
    v41[4] = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    sub_269280704();
    v24 = swift_allocError();
    *v25 = v12;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v26 = *MEMORY[0x277D61838];
    v27 = sub_2692C76A0();
    (*(*(v27 - 8) + 104))(boxed_opaque_existential_1, v26, v27);
    (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v22);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v41);

    v28 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v29 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v28[v29] = 5;
    [v28 setUserActivity_];
    a4(v28);
  }

  else
  {
    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v30 = sub_2692C77C0();
    __swift_project_value_buffer(v30, qword_280302D28);

    v31 = sub_2692C77B0();
    v32 = sub_2692C7A00();
    sub_2692743E4(v12, 0);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41[0] = v34;
      *v33 = 136315138;
      v35 = type metadata accessor for SiriAlarm();
      v36 = MEMORY[0x26D635E70](v12, v35);
      v38 = sub_26927C4DC(v36, v37, v41);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_269270000, v31, v32, "Successfully dismiss alarms: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x26D6368E0](v34, -1, -1);
      MEMORY[0x26D6368E0](v33, -1, -1);
    }

    type metadata accessor for SiriAlarm();
    v39 = sub_2692C7910();
    [a3 setModifiedAlarms_];

    a4(a3);
  }
}

void sub_269289928(unint64_t *a1, char *a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6, char *a7)
{
  v43 = a7;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  v17 = *(v11 + 8);
  v17(v14, v10);
  if (v16)
  {
    v18 = sub_2692C7760();
    v48 = v18;
    v49 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    sub_269280704();
    v20 = swift_allocError();
    *v21 = v15;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v22 = *MEMORY[0x277D61838];
    v23 = sub_2692C76A0();
    (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, v22, v23);
    (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v18);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v47);

    v24 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v25 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v24[v25] = 5;
    [v24 setUserActivity_];
    v45(v24);
  }

  else
  {
    v26 = v15;
    sub_269289E00(v15, (a3 + 16), sub_26928E8BC);
    if (v44)
    {
      v27 = v44;
      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      v17(v14, v10);
      sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v47);
      v28 = v48;
      v29 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v30 = swift_allocObject();
      v30[2] = a2;
      v30[3] = v27;
      v31 = v45;
      v30[4] = v26;
      v30[5] = v31;
      v30[6] = v46;
      v32 = *(v29 + 80);
      v33 = v27;
      v34 = a2;
      sub_26928E7E4(v26, 0);

      v32(sub_26928E8B4, v30, v28, v29);

      __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    else
    {
      type metadata accessor for SiriAlarm();
      v35 = sub_2692C7910();
      v36 = v43;
      [v43 setModifiedAlarms_];

      if (qword_280302AD8 != -1)
      {
        swift_once();
      }

      v37 = sub_2692C77C0();
      __swift_project_value_buffer(v37, qword_280302D28);
      v38 = sub_2692C77B0();
      v39 = sub_2692C7A00();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v45;
      if (v40)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_269270000, v38, v39, "Handle Enabled only normal alarms.", v42, 2u);
        MEMORY[0x26D6368E0](v42, -1, -1);
      }

      v41(v36);
    }
  }
}

void sub_269289E00(unint64_t a1, uint64_t *a2, uint64_t (*a3)(void *))
{
  v20 = a3;
  v21 = a2;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2692C7C60())
  {
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v5 = 0;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v23)
      {
        v6 = MEMORY[0x26D6360D0](v5, a1);
      }

      else
      {
        if (v5 >= *(v22 + 16))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 identifier];
      if (v9)
      {
        v10 = v9;
        v11 = sub_2692C7830();
        v13 = v12;

        v14 = *v21;
        v24[0] = v11;
        v24[1] = v13;
        MEMORY[0x28223BE20](v15, v16);
        v19[2] = v24;

        v17 = v25;
        LOBYTE(v11) = sub_26928515C(v20, v19, v14);
        v25 = v17;

        if (v11)
        {
          v18 = sub_2692C7980();
          [v7 setUndoable_];

          v7 = v18;
        }
      }

      ++v5;
      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void sub_269289FD0(uint64_t a1, char *a2, uint64_t a3, void *a4, void (*a5)(char *), uint64_t a6, char *a7)
{
  v43 = a7;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  v17 = *(v11 + 8);
  v17(v14, v10);
  if (v16)
  {
    v18 = sub_2692C7760();
    v48 = v18;
    v49 = MEMORY[0x277D61908];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    sub_269280704();
    v20 = swift_allocError();
    *v21 = v15;
    *boxed_opaque_existential_1 = sub_2692C7320();
    v22 = *MEMORY[0x277D61838];
    v23 = sub_2692C76A0();
    (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, v22, v23);
    (*(*(v18 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618F0], v18);
    sub_2692C76B0();
    __swift_destroy_boxed_opaque_existential_1Tm(v47);

    v24 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v25 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v24[v25] = 5;
    [v24 setUserActivity_];
    v45(v24);
  }

  else
  {
    v26 = v15;
    sub_269289E00(v15, (a3 + 16), sub_26928E8BC);
    if (v44)
    {
      v27 = v44;
      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      v17(v14, v10);
      sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v47);
      v28 = v48;
      v29 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v30 = swift_allocObject();
      v30[2] = a2;
      v30[3] = v27;
      v31 = v45;
      v30[4] = v26;
      v30[5] = v31;
      v30[6] = v46;
      v32 = *(v29 + 88);
      v33 = v27;
      v34 = a2;
      sub_26928E7E4(v26, 0);

      v32(sub_26928E8B8, v30, v28, v29);

      __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    else
    {
      type metadata accessor for SiriAlarm();
      v35 = sub_2692C7910();
      v36 = v43;
      [v43 setModifiedAlarms_];

      if (qword_280302AD8 != -1)
      {
        swift_once();
      }

      v37 = sub_2692C77C0();
      __swift_project_value_buffer(v37, qword_280302D28);
      v38 = sub_2692C77B0();
      v39 = sub_2692C7A00();
      v40 = os_log_type_enabled(v38, v39);
      v41 = v45;
      if (v40)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_269270000, v38, v39, "ChangeAlarmStatusIntent.disable handled alarms.", v42, 2u);
        MEMORY[0x26D6368E0](v42, -1, -1);
      }

      v41(v36);
    }
  }
}

void sub_26928A4C0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id ChangeAlarmStatusIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ChangeAlarmStatusIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_26928A5E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302D58, &qword_2692C97C0);
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

void (*sub_26928A6EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6360D0](a2, a3);
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
    return sub_26928A76C;
  }

  __break(1u);
  return result;
}

void (*sub_26928A774(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D6360D0](a2, a3);
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
    return sub_26928E8A0;
  }

  __break(1u);
  return result;
}

id sub_26928A7F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for ChangeAlarmStatusIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_26928A8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentHandler());
  (*(v7 + 16))(v9, a1, a3);
  return sub_26928A7F4(v9, v10, a3, a4);
}

void sub_26928AA1C(uint64_t *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = swift_allocObject();
  *(v61 + 16) = a3;
  _Block_copy(a3);
  v11 = &off_279C54000;
  v12 = [a1 operation];
  v13 = [a1 alarms];
  if (!v13)
  {
LABEL_24:
    if (v12 == 2)
    {
      sub_269275A6C(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v63);
      v24 = v64;
      v25 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v26 = swift_allocObject();
      v27 = v61;
      v26[2] = sub_26928E73C;
      v26[3] = v27;
      v26[4] = a1;
      v26[5] = 2;
      v28 = *(v25 + 56);

      v29 = a1;
      v28(0, sub_26928E89C, v26, v24, v25);

      __swift_destroy_boxed_opaque_existential_1Tm(v63);
LABEL_31:

      return;
    }

    v30 = [a1 alarmSearch];
    if (!v30)
    {
      if (qword_280302AD8 != -1)
      {
        swift_once();
      }

      v49 = sub_2692C77C0();
      __swift_project_value_buffer(v49, qword_280302D28);
      v50 = a1;
      v51 = sub_2692C77B0();
      v52 = sub_2692C79F0();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v50;
        *v54 = v50;
        v55 = v50;
        _os_log_impl(&dword_269270000, v51, v52, "No alarmSearch found for intent: %@", v53, 0xCu);
        sub_26927CEA8(v54, &qword_280302D50, &qword_2692CAB70);
        MEMORY[0x26D6368E0](v54, -1, -1);
        MEMORY[0x26D6368E0](v53, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_2692C9430;
      type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
      *(v56 + 32) = sub_2692BE64C(1);
      v60 = sub_2692C7910();
      a3[2](a3, v60);

      goto LABEL_37;
    }

    v15 = v30;
    if (qword_280302AD8 == -1)
    {
LABEL_28:
      v31 = sub_2692C77C0();
      __swift_project_value_buffer(v31, qword_280302D28);
      v32 = a1;
      v33 = sub_2692C77B0();
      v34 = sub_2692C7A00();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v60 = v15;
        v63[0] = v59;
        *v35 = 136315138;
        v62 = [v32 v11[233]];
        v36 = sub_2692C7840();
        HIDWORD(v58) = v34;
        v38 = a2;
        v39 = v11;
        v40 = sub_26927C4DC(v36, v37, v63);

        *(v35 + 4) = v40;
        v11 = v39;
        a2 = v38;
        _os_log_impl(&dword_269270000, v33, BYTE4(v58), "This is not dismiss request, try to do %s", v35, 0xCu);
        v41 = v59;
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        v15 = v60;
        MEMORY[0x26D6368E0](v41, -1, -1);
        MEMORY[0x26D6368E0](v35, -1, -1);
      }

      v42 = [v32 v11[233]];
      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      (*(v7 + 8))(v10, v6);
      sub_269275A6C(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager, v63);
      v43 = v64;
      v44 = v65;
      __swift_project_boxed_opaque_existential_1(v63, v64);
      v45 = swift_allocObject();
      v45[2] = a2;
      v45[3] = v15;
      v45[4] = v42;
      v45[5] = sub_26928E73C;
      v45[6] = v61;
      v46 = *(v44 + 56);

      v47 = a2;
      v48 = v15;
      v46(v15, sub_26928E8B0, v45, v43, v44);

      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      goto LABEL_31;
    }

LABEL_41:
    swift_once();
    goto LABEL_28;
  }

  v14 = v13;
  v15 = v7;
  type metadata accessor for SiriAlarm();
  v7 = sub_2692C7930();

  v11 = (v7 >> 62);
  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if (!sub_2692C7C60())
  {
LABEL_23:

    v7 = v15;
    v11 = &off_279C54000;
    goto LABEL_24;
  }

LABEL_4:
  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v16 = sub_2692C77C0();
  __swift_project_value_buffer(v16, qword_280302D28);

  v17 = sub_2692C77B0();
  v18 = sub_2692C7A00();
  if (os_log_type_enabled(v17, v18))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v11)
    {
      v19 = sub_2692C7C60();
    }

    else
    {
      v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v19;

    _os_log_impl(&dword_269270000, v17, v18, "ChangeAlarmStatusIntentHandler: Using %ld alarms on intent for resolution", v6, 0xCu);
    MEMORY[0x26D6368E0](v6, -1, -1);

    v20 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v11)
    {
LABEL_20:
      a2 = *(v20 + 16);
      if (!a2)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  else
  {

    v20 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  a2 = sub_2692C7C60();
  if (a2)
  {
LABEL_11:
    v63[0] = MEMORY[0x277D84F90];
    a1 = v63;
    sub_2692C7C10();
    if ((a2 & 0x8000000000000000) == 0)
    {
      type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
      v21 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x26D6360D0](v21, v7);
        }

        else
        {
          v22 = *(v7 + 8 * v21 + 32);
        }

        v23 = v22;
        ++v21;
        sub_2692C42D8(v22);

        sub_2692C7BF0();
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      while (a2 != v21);
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_21:

  type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
  v60 = sub_2692C7910();
  a3[2](a3, v60);

LABEL_37:

  v57 = v60;
}

uint64_t sub_26928B2EC(uint64_t a1, NSObject *a2, _DWORD *a3, void (*a4)(uint64_t), unint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  MEMORY[0x28223BE20](v16, v17);
  v20 = *a1;
  if (*(a1 + 8))
  {
    if (a3 == 1)
    {
      v21 = [a2 time];
      if (v21)
      {
        v22 = v21;
        sub_2692C7280();

        v23 = sub_2692C7310();
        (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
        sub_26927CEA8(v14, &qword_280302C48, &qword_2692C9780);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_2692C9430;
        type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
        v25 = [swift_getObjCClassFromMetadata() notRequired];
LABEL_161:
        *(v24 + 32) = v25;
        v126 = v24;
LABEL_162:
        a4(v126);
      }

      v43 = sub_2692C7310();
      (*(*(v43 - 8) + 56))(v14, 1, 1, v43);
      sub_26927CEA8(v14, &qword_280302C48, &qword_2692C9780);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_2692C9430;
    type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (v20 == 12)
    {
      v25 = [ObjCClassFromMetadata resolutionResultUnsupportedWithReason_];
    }

    else
    {
      v25 = [ObjCClassFromMetadata resolutionResultUnsupportedWithReason_];
    }

    goto LABEL_161;
  }

  v130 = v19;
  v131 = &v130 - v18;
  if (qword_280302AD8 != -1)
  {
    goto LABEL_150;
  }

  while (1)
  {
    v26 = sub_2692C77C0();
    v27 = __swift_project_value_buffer(v26, qword_280302D28);
    v28 = a2;
    v29 = sub_2692C77B0();
    a2 = sub_2692C7A00();

    v30 = os_log_type_enabled(v29, a2);
    v136 = a4;
    v137 = v28;
    v134 = a3;
    v135 = a5;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v139 = v32;
      *v31 = 136315138;
      v33 = v28;
      v34 = [v33 description];
      v35 = sub_2692C7830();
      v37 = v36;

      v38 = v35;
      v28 = v137;
      v39 = sub_26927C4DC(v38, v37, &v139);
      a3 = v134;

      *(v31 + 4) = v39;
      _os_log_impl(&dword_269270000, v29, a2, "Using alarmSearch for filtering: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x26D6368E0](v32, -1, -1);
      MEMORY[0x26D6368E0](v31, -1, -1);
    }

    if ([v28 alarmReferenceType]== 3)
    {
      v40 = 0;
      v138 = 1;
      goto LABEL_25;
    }

    if (!a3)
    {
      v138 = 1;
      v40 = 0;
      goto LABEL_25;
    }

    if (a3 == 2)
    {
      a2 = v27;
      v41 = sub_2692C77B0();
      v42 = sub_2692C7A00();
      if (!os_log_type_enabled(v41, v42))
      {
        v40 = 1;
        goto LABEL_24;
      }

      a2 = swift_slowAlloc();
      LOWORD(a2->isa) = 0;
      _os_log_impl(&dword_269270000, v41, v42, "Overriding alarmSearch to filter for enabled alarms", a2, 2u);
      v40 = 1;
    }

    else
    {
      if (a3 != 1)
      {
        goto LABEL_171;
      }

      a2 = v27;
      v41 = sub_2692C77B0();
      v45 = sub_2692C7A00();
      v40 = 2;
      if (!os_log_type_enabled(v41, v45))
      {
        goto LABEL_24;
      }

      a2 = swift_slowAlloc();
      LOWORD(a2->isa) = 0;
      _os_log_impl(&dword_269270000, v41, v45, "Overriding alarmSearch to filter for disabled alarms", a2, 2u);
    }

    MEMORY[0x26D6368E0](a2, -1, -1);
LABEL_24:

    v138 = 0;
LABEL_25:
    v139 = MEMORY[0x277D84F90];
    v133 = v20 >> 62;
    a4 = v20 >> 62 ? sub_2692C7C60() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = MEMORY[0x277D84F90];
    if (a4)
    {
      v132 = v27;
      a5 = 0;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x26D6360D0](a5, v20);
        }

        else
        {
          if (a5 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_147;
          }

          v47 = *(v20 + 8 * a5 + 32);
        }

        a3 = v47;
        v48 = (a5 + 1);
        if (__OFADD__(a5, 1))
        {
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        a2 = v47;
        if (SiriAlarm.matches(alarmSearch:searchStatusOverride:)(v28, v40, v138))
        {
          a2 = &v139;
          sub_2692C7BF0();
          sub_2692C7C20();
          v28 = v137;
          sub_2692C7C30();
          sub_2692C7C00();
        }

        else
        {
        }

        ++a5;
      }

      while (v48 != a4);
      v49 = v139;
      v46 = MEMORY[0x277D84F90];
      if ((v139 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_41:
        if ((v49 & 0x4000000000000000) == 0)
        {
          v50 = *(v49 + 16);
          goto LABEL_43;
        }
      }
    }

    v50 = sub_2692C7C60();
LABEL_43:
    v51 = v138;
    if (v50)
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_61;
    }

    a2 = sub_2692C77B0();
    v52 = sub_2692C7A00();
    if (os_log_type_enabled(a2, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_269270000, a2, v52, "[ChangeAlarmStatusIntentHandler.processSearchResult] Found zero alarms with statusOverride; retrying without override.", v53, 2u);
      v54 = v53;
      v28 = v137;
      MEMORY[0x26D6368E0](v54, -1, -1);
    }

    v139 = v46;
    if (!a4)
    {
      break;
    }

    v132 = v50;
    a5 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x26D6360D0](a5, v20);
      }

      else
      {
        if (a5 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_149;
        }

        v55 = *(v20 + 8 * a5 + 32);
      }

      a3 = v55;
      v56 = (a5 + 1);
      if (__OFADD__(a5, 1))
      {
        break;
      }

      a2 = v55;
      if (SiriAlarm.matches(alarmSearch:searchStatusOverride:)(v28, 0, 1))
      {
        a2 = &v139;
        sub_2692C7BF0();
        sub_2692C7C20();
        v28 = v137;
        sub_2692C7C30();
        sub_2692C7C00();
      }

      else
      {
      }

      ++a5;
      if (v56 == a4)
      {
        v49 = v139;
        v46 = MEMORY[0x277D84F90];
        v50 = v132;
        goto LABEL_61;
      }
    }

LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    swift_once();
  }

  v49 = v46;
LABEL_61:

  sub_26928E7E4(v20, 0);
  v57 = sub_2692C77B0();
  v58 = sub_2692C7A00();
  v59 = v49 >> 62;
  if (os_log_type_enabled(v57, v58))
  {
    a3 = swift_slowAlloc();
    *a3 = 134218240;
    if (v59)
    {
      v60 = sub_2692C7C60();
    }

    else
    {
      v60 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + 1) = v60;

    *(a3 + 6) = 2048;
    if (v133)
    {
      v61 = sub_2692C7C60();
    }

    else
    {
      v61 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(a3 + 14) = v61;
    sub_2692743E4(v20, 0);
    _os_log_impl(&dword_269270000, v57, v58, "ChangeAlarmStatusIntentHandler resolveAlarms(), count=%ld, from alarms=%ld.", a3, 0x16u);
    MEMORY[0x26D6368E0](a3, -1, -1);

    if (v50)
    {
LABEL_79:

      goto LABEL_80;
    }
  }

  else
  {
    sub_2692743E4(v20, 0);

    if (v50)
    {
      goto LABEL_79;
    }
  }

  if (v59)
  {
    v62 = sub_2692C7C60();
  }

  else
  {
    v62 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v138;
  if (!v62)
  {
    v63 = 1;
  }

  if (v63)
  {
LABEL_80:
    if (v59)
    {
      if (sub_2692C7C60())
      {
LABEL_82:
        if ([v137 alarmReferenceType]== 3)
        {
          v68 = sub_2692C77B0();
          v69 = sub_2692C7A00();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_269270000, v68, v69, "ChangeAlarmStatusIntentHandler alarmReferenceType all", v70, 2u);
            MEMORY[0x26D6368E0](v70, -1, -1);
          }

          if (v59)
          {
            v71 = sub_2692C7C60();
            if (!v71)
            {
              goto LABEL_122;
            }
          }

          else
          {
            v71 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v71)
            {
LABEL_122:

              v92 = MEMORY[0x277D84F90];
LABEL_123:
              v136(v92);
LABEL_124:
            }
          }

          v139 = v46;
          sub_2692C7C10();
          if ((v71 & 0x8000000000000000) == 0)
          {
            type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
            v73 = 0;
            do
            {
              if ((v49 & 0xC000000000000001) != 0)
              {
                v74 = MEMORY[0x26D6360D0](v73, v49);
              }

              else
              {
                v74 = *(v49 + 8 * v73 + 32);
              }

              v75 = v74;
              ++v73;
              sub_2692C42D8(v74);

              sub_2692C7BF0();
              sub_2692C7C20();
              sub_2692C7C30();
              sub_2692C7C00();
            }

            while (v71 != v73);
            goto LABEL_121;
          }

          __break(1u);
          goto LABEL_168;
        }

        if (v59)
        {
          v72 = sub_2692C7C60();
        }

        else
        {
          v72 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v76 = v137;
        if (v72 == 1)
        {
          if ((v49 & 0xC000000000000001) == 0)
          {
            if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_170;
            }

            v77 = *(v49 + 32);
            goto LABEL_102;
          }

LABEL_168:
          v77 = MEMORY[0x26D6360D0](0, v49);
LABEL_102:
          v78 = v77;

          v79 = sub_2692C77B0();
          v80 = sub_2692C7A00();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_269270000, v79, v80, "ChangeAlarmStatusIntentHandler success single alarm", v81, 2u);
            MEMORY[0x26D6368E0](v81, -1, -1);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_2692C9430;
          type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
          *(v82 + 32) = sub_2692C42D8(v78);
          v136(v82);

          goto LABEL_124;
        }

        if (v72 < 2)
        {
          goto LABEL_133;
        }

        if (sub_269283398(v49))
        {
          v83 = sub_2692C77B0();
          v84 = sub_2692C7A00();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_269270000, v83, v84, "ChangeAlarmStatusIntentHandler success multiple identical alarms", v85, 2u);
            MEMORY[0x26D6368E0](v85, -1, -1);
          }

          v139 = v46;
          sub_2692C7C10();
          type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
          v86 = 0;
          do
          {
            if ((v49 & 0xC000000000000001) != 0)
            {
              v87 = MEMORY[0x26D6360D0](v86, v49);
            }

            else
            {
              v87 = *(v49 + 8 * v86 + 32);
            }

            v88 = v87;
            ++v86;
            sub_2692C42D8(v87);

            sub_2692C7BF0();
            sub_2692C7C20();
            sub_2692C7C30();
            sub_2692C7C00();
          }

          while (v72 != v86);
LABEL_121:

          v92 = v139;
          goto LABEL_123;
        }

        v94 = [v76 time];
        if (v94)
        {
          v95 = v130;
          v96 = v94;
          sub_2692C7280();

          v97 = sub_2692C7310();
          (*(*(v97 - 8) + 56))(v95, 0, 1, v97);
          sub_26927CEA8(v95, &qword_280302C48, &qword_2692C9780);
        }

        else
        {
          v98 = sub_2692C7310();
          v99 = v130;
          (*(*(v98 - 8) + 56))(v130, 1, 1, v98);
          sub_26927CEA8(v99, &qword_280302C48, &qword_2692C9780);
          v100 = [v76 timeRange];
          if (!v100)
          {
LABEL_133:
            v105 = sub_2692C77B0();
            v106 = sub_2692C7A00();
            if (os_log_type_enabled(v105, v106))
            {
              v107 = swift_slowAlloc();
              *v107 = 0;
              _os_log_impl(&dword_269270000, v105, v106, "ChangeAlarmStatusIntentHandler unclear search result – disambiguate", v107, 2u);
              MEMORY[0x26D6368E0](v107, -1, -1);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
            v108 = swift_allocObject();
            *(v108 + 16) = xmmword_2692C9430;
            type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
            v109 = sub_2692C433C(v49);

            *(v108 + 32) = v109;
LABEL_136:
            v136(v108);
          }
        }

        v101 = [v76 isMeridianInferred];
        sub_2692822D8();
        v102 = sub_2692C7A50();
        v103 = v102;
        if (v101)
        {
          v104 = sub_2692C7A70();

          if (v104)
          {
            goto LABEL_133;
          }
        }

        else
        {
        }

        v110 = sub_2692C77B0();
        v111 = sub_2692C7A00();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&dword_269270000, v110, v111, "ChangeAlarmStatusIntentHandler multiple matches with meridian-inferred explicit time", v112, 2u);
          MEMORY[0x26D6368E0](v112, -1, -1);
        }

        v139 = v46;
        sub_2692C7C10();
        type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
        v113 = 0;
        do
        {
          if ((v49 & 0xC000000000000001) != 0)
          {
            v114 = MEMORY[0x26D6360D0](v113, v49);
          }

          else
          {
            v114 = *(v49 + 8 * v113 + 32);
          }

          v115 = v114;
          ++v113;
          sub_2692C42D8(v114);

          sub_2692C7BF0();
          sub_2692C7C20();
          sub_2692C7C30();
          sub_2692C7C00();
        }

        while (v72 != v113);

        v108 = v139;
        goto LABEL_136;
      }
    }

    else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_82;
    }

    v116 = sub_2692C77B0();
    v117 = sub_2692C7A00();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_269270000, v116, v117, "ChangeAlarmStatusIntentHandler filtered alarms empty", v118, 2u);
      MEMORY[0x26D6368E0](v118, -1, -1);
    }

    a4 = v136;
    if (v134 == 1)
    {
      v119 = [v137 time];
      if (v119)
      {
        v120 = v131;
        v121 = v119;
        sub_2692C7280();

        v122 = sub_2692C7310();
        (*(*(v122 - 8) + 56))(v120, 0, 1, v122);
        sub_26927CEA8(v120, &qword_280302C48, &qword_2692C9780);
        v123 = sub_2692C77B0();
        v124 = sub_2692C7A00();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&dword_269270000, v123, v124, "ChangeAlarmStatusIntentHandler marking response as .notRequired, as this was an enable request; will attempt creation", v125, 2u);
          MEMORY[0x26D6368E0](v125, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_2692C9430;
        type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
        v25 = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_161;
      }

      v127 = sub_2692C7310();
      v128 = v131;
      (*(*(v127 - 8) + 56))(v131, 1, 1, v127);
      sub_26927CEA8(v128, &qword_280302C48, &qword_2692C9780);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_2692C9430;
    type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
    *(v129 + 32) = [swift_getObjCClassFromMetadata() resolutionResultUnsupportedWithReason_];
    v126 = v129;
    goto LABEL_162;
  }

  v64 = sub_2692C77B0();
  v65 = sub_2692C7A00();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_269270000, v64, v65, "ChangeAlarmStatusIntentHandler has no candidate alarms to act on - do nothing, and do not disambiguate", v66, 2u);
    MEMORY[0x26D6368E0](v66, -1, -1);
  }

  if (v59)
  {
    v67 = sub_2692C7C60();
    if (!v67)
    {
      goto LABEL_122;
    }
  }

  else
  {
    v67 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v67)
    {
      goto LABEL_122;
    }
  }

  v139 = v46;
  sub_2692C7C10();
  if ((v67 & 0x8000000000000000) == 0)
  {
    type metadata accessor for ChangeAlarmStatusAlarmsResolutionResult();
    v89 = 0;
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v90 = MEMORY[0x26D6360D0](v89, v49);
      }

      else
      {
        v90 = *(v49 + 8 * v89 + 32);
      }

      v91 = v90;
      ++v89;
      sub_2692C42D8(v90);

      sub_2692C7BF0();
      sub_2692C7C20();
      sub_2692C7C30();
      sub_2692C7C00();
    }

    while (v67 != v89);
    goto LABEL_121;
  }

LABEL_170:
  __break(1u);
LABEL_171:
  v139 = a3;
  result = sub_2692C7D80();
  __break(1u);
  return result;
}

void sub_26928C750(uint64_t a1, void *a2, uint64_t a3, char *a4, void (**a5)(void, void))
{
  v10 = sub_2692C77A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v39[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  _Block_copy(a5);
  if (a1 == 1)
  {
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v11 + 8))(v14, v10);
    sub_269275A6C(&a4[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v39);
    v22 = v40;
    v23 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v24 = swift_allocObject();
    v24[2] = a4;
    v24[3] = a2;
    v24[4] = a3;
    v24[5] = sub_2692808C4;
    v24[6] = v15;
    v25 = *(v23 + 80);
    v26 = a4;
    v27 = a2;

    v25(sub_26928E5D0, v24, v22, v23);
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    sub_2692C7A20();
    sub_2692C7790();
    sub_2692C7780();
    (*(v11 + 8))(v14, v10);
    sub_269275A6C(&a4[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v39);
    v16 = v40;
    v17 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a2;
    v18[4] = a3;
    v18[5] = sub_2692808C4;
    v18[6] = v15;
    v19 = *(v17 + 88);
    v20 = a4;
    v21 = a2;

    v19(sub_26928E5E8, v18, v16, v17);
LABEL_5:

    __swift_destroy_boxed_opaque_existential_1Tm(v39);

    return;
  }

  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v28 = sub_2692C77C0();
  __swift_project_value_buffer(v28, qword_280302D28);
  v29 = sub_2692C77B0();
  v30 = sub_2692C79F0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_269270000, v29, v30, "Only support .enable, .disable here.", v31, 2u);
    MEMORY[0x26D6368E0](v31, -1, -1);
  }

  v32 = sub_2692C7760();
  v40 = v32;
  v41 = MEMORY[0x277D61908];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  v34 = *MEMORY[0x277D61890];
  v35 = sub_2692C7710();
  (*(*(v35 - 8) + 104))(boxed_opaque_existential_1, v34, v35);
  (*(*(v32 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v32);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  v36 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v37 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v36[v37] = 5;
  [v36 setUserActivity_];
  (a5)[2](a5, v36);
}

void sub_26928CC68(char *a1, uint64_t a2)
{
  v4 = [a1 createdAlarm];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = OBJC_IVAR___CreateAlarmIntentResponse_code;
  swift_beginAccess();
  if (*&a1[v6] != 4)
  {

LABEL_5:
    v7 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v12 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v7[v12] = 5;
    [v7 setUserActivity_];
    (*(a2 + 16))(a2, v7);
    goto LABEL_6;
  }

  v7 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v8 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v7[v8] = 4;
  [v7 setUserActivity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2692C9430;
  *(v9 + 32) = v5;
  type metadata accessor for SiriAlarm();
  v10 = v5;
  v11 = sub_2692C7910();

  [v7 setModifiedAlarms_];

  (*(a2 + 16))(a2, v7);
LABEL_6:
}

void sub_26928CE4C(void *a1, char *a2, NSObject *a3)
{
  v6 = sub_2692C77A0();
  isa = v6[-1].isa;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v143 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v20 = [a1 alarms];
  if (!v20)
  {
LABEL_92:
    v87 = [a1 alarmSearch];
    if (v87)
    {
      v88 = v87;
      v89 = [v87 time];

      if (v89)
      {
        sub_2692C7280();

        v90 = sub_2692C7310();
        (*(*(v90 - 8) + 56))(v15, 0, 1, v90);
      }

      else
      {
        v90 = sub_2692C7310();
        (*(*(v90 - 8) + 56))(v15, 1, 1, v90);
      }

      sub_26928E660(v15, v18, &qword_280302C48, &qword_2692C9780);
      sub_2692C7310();
      if ((*(*(v90 - 8) + 48))(v18, 1, v90) != 1)
      {
        sub_26927CEA8(v18, &qword_280302C48, &qword_2692C9780);
        v95 = sub_269290E5C();
        if (v95)
        {
          v96 = v95;
          sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v156);
          AlarmIntentHandler = type metadata accessor for CreateAlarmIntentHandler();
          v98 = objc_allocWithZone(AlarmIntentHandler);
          v99 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject;
          if (qword_280302B50 != -1)
          {
            swift_once();
          }

          v100 = qword_280303380;
          *&v98[v99] = qword_280303380;
          sub_269275A6C(v156, &v98[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
          v155.receiver = v98;
          v155.super_class = AlarmIntentHandler;
          v101 = v100;
          v102 = objc_msgSendSuper2(&v155, sel_init);
          __swift_destroy_boxed_opaque_existential_1Tm(v156);
          _Block_copy(a3);

          sub_2692A620C(v96, v102, a3);
          _Block_release(a3);

          goto LABEL_100;
        }

        goto LABEL_99;
      }
    }

    else
    {
      v91 = sub_2692C7310();
      (*(*(v91 - 8) + 56))(v18, 1, 1, v91);
    }

    sub_26927CEA8(v18, &qword_280302C48, &qword_2692C9780);
LABEL_99:
    v92 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
    v93 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v92[v93] = 5;
    [v92 setUserActivity_];
    (a3[2].isa)(a3, v92);

    goto LABEL_100;
  }

  v21 = v20;
  v153 = isa;
  v154 = a2;
  v22 = v19;
  v152 = v10;
  type metadata accessor for SiriAlarm();
  v23 = sub_2692C7930();

  if (v23 >> 62)
  {
    goto LABEL_90;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_91:

    a2 = v154;
    goto LABEL_92;
  }

  while (1)
  {
    v151 = v6;
    v148 = type metadata accessor for ChangeAlarmStatusIntentResponse();
    v25 = [objc_allocWithZone(v148) init];
    v26 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
    swift_beginAccess();
    *&v25[v26] = 4;
    v150 = v25;
    [v25 setUserActivity_];
    if (ChangeAlarmStatusIntent.isDismissRequest(alarms:)(v23))
    {
      break;
    }

    if (qword_280302AD8 != -1)
    {
      swift_once();
    }

    v41 = sub_2692C77C0();
    v18 = __swift_project_value_buffer(v41, qword_280302D28);
    v6 = sub_2692C77B0();
    v42 = sub_2692C7A00();
    if (os_log_type_enabled(v6, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_269270000, v6, v42, "Intent is enable/disable alarm intent(not dismiss), trying to handle().", v43, 2u);
      MEMORY[0x26D6368E0](v43, -1, -1);
    }

    v149 = swift_allocObject();
    *(v149 + 16) = MEMORY[0x277D84F90];
    v44 = [a1 operation];
    v146 = v22;
    v147 = a3;
    v143 = a1;
    v144 = v18;
    if (v44 == 1)
    {
      v6 = 0;
      a1 = (v23 & 0xC000000000000001);
      v22 = v23 & 0xFFFFFFFFFFFFFF8;
      v145 = MEMORY[0x277D84F90];
      while (2)
      {
        v15 = v6;
        while (2)
        {
          if (a1)
          {
            v57 = MEMORY[0x26D6360D0](v15, v23);
          }

          else
          {
            if (v15 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_89;
            }

            v57 = *(v23 + 8 * v15 + 32);
          }

          v58 = v57;
          v6 = (v15 + 1);
          if (__OFADD__(v15, 1))
          {
            goto LABEL_86;
          }

          v59 = [v57 enabled];
          v18 = sub_2692822D8();
          v60 = sub_2692C7A50();
          a3 = v60;
          if (v59)
          {
            v18 = sub_2692C7A70();

            if (v18)
            {
LABEL_38:

              ++v15;
              if (v6 == v24)
              {
                goto LABEL_52;
              }

              continue;
            }
          }

          else
          {
          }

          break;
        }

        v56 = [v58 identifier];
        if (v56)
        {
          v61 = v56;
          v18 = sub_2692C7830();
          v15 = v62;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v145 = sub_26928A5E0(0, *(v145 + 16) + 1, 1, v145);
          }

          v64 = *(v145 + 16);
          v63 = *(v145 + 24);
          if (v64 >= v63 >> 1)
          {
            v145 = sub_26928A5E0((v63 > 1), v64 + 1, 1, v145);
          }

          v65 = v145;
          *(v145 + 16) = v64 + 1;
          v66 = v65 + 16 * v64;
          *(v66 + 32) = v18;
          *(v66 + 40) = v15;
          if (v6 == v24)
          {
LABEL_52:
            *(v149 + 16) = v145;

            goto LABEL_56;
          }

          continue;
        }

        goto LABEL_38;
      }
    }

    if (v44 == 2)
    {
      a1 = (v23 & 0xC000000000000001);
      v22 = v23 & 0xFFFFFFFFFFFFFF8;
      v145 = MEMORY[0x277D84F90];
      v45 = 0;
      if ((v23 & 0xC000000000000001) != 0)
      {
LABEL_33:
        v46 = MEMORY[0x26D6360D0](v45, v23);
        goto LABEL_23;
      }

      while (1)
      {
        if (v45 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_88;
        }

        v46 = *(v23 + 8 * v45 + 32);
LABEL_23:
        v15 = v46;
        v6 = (&v45->isa + 1);
        if (__OFADD__(v45, 1))
        {
          goto LABEL_87;
        }

        v47 = [v46 enabled];
        v18 = sub_2692822D8();
        v48 = sub_2692C7A50();
        a3 = v48;
        if (v47)
        {
          v18 = sub_2692C7A70();

          if (v18)
          {
            v49 = [v15 identifier];
            if (v49)
            {
              v50 = v49;
              v18 = sub_2692C7830();
              v52 = v51;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v145 = sub_26928A5E0(0, *(v145 + 16) + 1, 1, v145);
              }

              v15 = *(v145 + 16);
              v53 = *(v145 + 24);
              if (v15 >= v53 >> 1)
              {
                v145 = sub_26928A5E0((v53 > 1), v15 + 1, 1, v145);
              }

              v54 = v145;
              *(v145 + 16) = v15 + 1;
              v55 = v54 + 16 * v15;
              *(v55 + 32) = v18;
              *(v55 + 40) = v52;
              if (v6 == v24)
              {
                goto LABEL_52;
              }

              v45 = v6;
              if (a1)
              {
                goto LABEL_33;
              }

              continue;
            }
          }
        }

        else
        {
        }

        v45 = (v45 + 1);
        if (v6 == v24)
        {
          goto LABEL_52;
        }

        if (a1)
        {
          goto LABEL_33;
        }
      }
    }

    v18 = sub_2692C77B0();
    v67 = sub_2692C79F0();
    if (os_log_type_enabled(v18, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_269270000, v18, v67, "Unsupported operation when getting undoable alarms in .handle(), expected enable/disable.", v68, 2u);
      MEMORY[0x26D6368E0](v68, -1, -1);
    }

LABEL_56:
    v69 = 0;
    v156[0] = MEMORY[0x277D84F90];
    v22 = v23 & 0xC000000000000001;
    a1 = (v23 & 0xFFFFFFFFFFFFFF8);
    v6 = &off_279C54000;
    while (1)
    {
      if (v22)
      {
        v70 = MEMORY[0x26D6360D0](v69, v23);
      }

      else
      {
        if (v69 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v70 = *(v23 + 8 * v69 + 32);
      }

      v15 = v70;
      a3 = (v69 + 1);
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v71 = [v70 sleepAlarmAttribute];
      if (v71)
      {

        v18 = v156;
        sub_2692C7BF0();
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      else
      {
      }

      ++v69;
      if (a3 == v24)
      {
        v15 = 0;
        v145 = v156[0];
        v156[0] = MEMORY[0x277D84F90];
        do
        {
          if (v22)
          {
            v72 = MEMORY[0x26D6360D0](v15, v23);
          }

          else
          {
            if (v15 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_85;
            }

            v72 = *(v23 + 8 * v15 + 32);
          }

          v73 = v72;
          v74 = (v15 + 1);
          if (__OFADD__(v15, 1))
          {
            goto LABEL_84;
          }

          v75 = [v72 sleepAlarmAttribute];
          if (v75)
          {
            v18 = v75;
          }

          else
          {
            v18 = v156;
            sub_2692C7BF0();
            a3 = *(v156[0] + 16);
            sub_2692C7C20();
            sub_2692C7C30();
            sub_2692C7C00();
          }

          ++v15;
        }

        while (v74 != v24);

        v76 = v156[0];
        v77 = v145;
        if ((v145 & 0x8000000000000000) != 0 || (v145 & 0x4000000000000000) != 0)
        {
          v103 = sub_2692C7C60();
          v79 = v147;
          v80 = v154;
          v81 = v151;
          if (v103 <= 1)
          {
            v78 = sub_2692C7C60();
            goto LABEL_108;
          }

LABEL_79:

          v82 = sub_2692C77B0();
          v83 = sub_2692C79F0();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_269270000, v82, v83, "Can NOT enable multiple sleep alarms, should only handle upcoming one.\nCheck the resolveAlarms method and make sure it returns at most 1 sleep alarm.", v84, 2u);
            MEMORY[0x26D6368E0](v84, -1, -1);
          }

          v85 = [objc_allocWithZone(v148) init];
          v86 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
          swift_beginAccess();
          *&v85[v86] = 5;
          [v85 setUserActivity_];
          (v79[2].isa)(v79, v85);

          goto LABEL_134;
        }

        v78 = *(v145 + 16);
        v79 = v147;
        v80 = v154;
        v81 = v151;
        if (v78 >= 2)
        {
          goto LABEL_79;
        }

LABEL_108:
        if (v78)
        {
          if ((v77 & 0xC000000000000001) != 0)
          {
            v104 = MEMORY[0x26D6360D0](0, v77);
            goto LABEL_112;
          }

          if (*(v77 + 16))
          {
            v104 = *(v77 + 32);
LABEL_112:
            v15 = v104;

            v74 = v15;
            v105 = [v74 identifier];
            if (v105)
            {
              v106 = v105;
              v107 = sub_2692C7830();
              v109 = v108;

              v110 = *(v149 + 16);
              v156[0] = v107;
              v156[1] = v109;
              MEMORY[0x28223BE20](v111, v112);
              *(&v143 - 2) = v156;

              LOBYTE(v107) = sub_26928515C(sub_26928E8BC, (&v143 - 4), v110);

              v81 = v151;
              if (v107)
              {
                v113 = sub_2692C7980();
                [v74 setUndoable:v113];
              }
            }

            if ((v76 & 0x8000000000000000) == 0 && (v76 & 0x4000000000000000) == 0)
            {
              if (*(v76 + 16))
              {
                goto LABEL_118;
              }

LABEL_131:

              v139 = sub_2692C77B0();
              v140 = sub_2692C7A00();
              if (os_log_type_enabled(v139, v140))
              {
                v141 = swift_slowAlloc();
                *v141 = 0;
                _os_log_impl(&dword_269270000, v139, v140, "Only found sleep alarm.", v141, 2u);
                MEMORY[0x26D6368E0](v141, -1, -1);
              }

              v142 = [v143 operation];
              _Block_copy(v79);
              sub_26928C750(v142, v74, MEMORY[0x277D84F90], v80, v79);
              _Block_release(v79);

              goto LABEL_134;
            }
          }

          else
          {
            __break(1u);
          }

          if (!sub_2692C7C60())
          {
            goto LABEL_131;
          }

LABEL_118:
        }

        else
        {

          v15 = 0;
        }

        v114 = [v143 operation];
        if (v114 == 2)
        {
          sub_2692C7A20();
          v123 = v152;
          sub_2692C7790();
          sub_2692C7780();
          (*(v153 + 1))(v123, v81);
          sub_269275A6C(&v80[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v156);
          v124 = v157;
          v125 = v158;
          v154 = __swift_project_boxed_opaque_existential_1(v156, v157);
          v126 = swift_allocObject();
          v128 = v149;
          v127 = v150;
          v126[2] = v80;
          v126[3] = v128;
          v126[4] = v15;
          v126[5] = sub_26928062C;
          v126[6] = v146;
          v126[7] = v127;
          v152 = *(v125 + 24);
          v153 = v15;

          v129 = v80;
          v122 = v127;

          v152(v76, sub_26928E8A4, v126, v124, v125);
        }

        else
        {
          if (v114 != 1)
          {

            v130 = sub_2692C77B0();
            v131 = sub_2692C79F0();
            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              *v132 = 0;
              _os_log_impl(&dword_269270000, v130, v131, "Operation is empty: don't know what to do with the alarm, return failure response.", v132, 2u);
              MEMORY[0x26D6368E0](v132, -1, -1);
            }

            v133 = sub_2692C7760();
            v157 = v133;
            v158 = MEMORY[0x277D61908];
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v156);
            v135 = *MEMORY[0x277D61890];
            v136 = sub_2692C7710();
            (*(*(v136 - 8) + 104))(boxed_opaque_existential_1, v135, v136);
            (*(*(v133 - 1) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v133);
            sub_2692C76B0();
            __swift_destroy_boxed_opaque_existential_1Tm(v156);
            v137 = [objc_allocWithZone(v148) init];
            v138 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
            swift_beginAccess();
            *&v137[v138] = 5;
            [v137 setUserActivity_];
            (v79[2].isa)(v79, v137);

            goto LABEL_134;
          }

          sub_2692C7A20();
          v115 = v152;
          sub_2692C7790();
          sub_2692C7780();
          (*(v153 + 1))(v115, v81);
          sub_269275A6C(&v80[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v156);
          v116 = v157;
          v117 = v158;
          v154 = __swift_project_boxed_opaque_existential_1(v156, v157);
          v118 = swift_allocObject();
          v120 = v149;
          v119 = v150;
          v118[2] = v80;
          v118[3] = v120;
          v118[4] = v15;
          v118[5] = sub_26928062C;
          v118[6] = v146;
          v118[7] = v119;
          v152 = *(v117 + 16);
          v153 = v15;

          v121 = v80;
          v122 = v119;

          v152(v76, sub_26928E8A8, v118, v116, v117);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v156);

LABEL_134:
        _Block_release(v79);
        v94 = v79;
        goto LABEL_101;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v24 = sub_2692C7C60();
    if (!v24)
    {
      goto LABEL_91;
    }
  }

  v27 = v151;
  if (qword_280302AD8 != -1)
  {
    swift_once();
  }

  v28 = sub_2692C77C0();
  __swift_project_value_buffer(v28, qword_280302D28);
  v29 = sub_2692C77B0();
  v30 = sub_2692C7A00();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v152;
  if (v31)
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_269270000, v29, v30, "Intent is dismiss firing alarm intent, trying to handle().", v33, 2u);
    MEMORY[0x26D6368E0](v33, -1, -1);
  }

  sub_2692C7A20();
  v34 = v154;
  sub_2692C7790();
  sub_2692C7780();
  (*(v153 + 1))(v32, v27);
  sub_269275A6C(&v34[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager], v156);
  v35 = v158;
  v153 = v157;
  __swift_project_boxed_opaque_existential_1(v156, v157);
  v36 = swift_allocObject();
  v37 = v150;
  v36[2] = v34;
  v36[3] = v37;
  v36[4] = sub_26928062C;
  v36[5] = v22;
  v38 = *(v35 + 40);

  v39 = v34;
  v40 = v37;
  v38(v23, sub_26928E898, v36, v153, v35);

  __swift_destroy_boxed_opaque_existential_1Tm(v156);

LABEL_100:
  _Block_release(a3);
  v94 = a3;
LABEL_101:
  _Block_release(v94);
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_26928E654(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_26928E660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_54Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26928E7E4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26928E840(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2692C7D60() & 1;
  }
}

BOOL Optional<A>.isRecurrent.getter(_BOOL8 result)
{
  if (result)
  {
    if (result >> 62)
    {
      v1 = sub_2692C7C60();
    }

    else
    {
      v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v1 != 0;
  }

  return result;
}

uint64_t sub_26928E91C()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302D60);
  v1 = __swift_project_value_buffer(v0, qword_280302D60);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_26928E9E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v46 = a1;
  v45 = sub_2692C7360();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_24:
    v9 = sub_2692C7C60();
    v10 = a2;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = a2;
    if (v9)
    {
LABEL_3:
      v11 = 0;
      v43 = a3 & 0xFFFFFFFFFFFFFF8;
      v44 = a3 & 0xC000000000000001;
      v12 = (v5 + 1);
      v42 = v9;
      while (1)
      {
        if (v44)
        {
          v13 = MEMORY[0x26D6360D0](v11, a3);
        }

        else
        {
          if (v11 >= *(v43 + 16))
          {
            goto LABEL_23;
          }

          v13 = *(a3 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v16 = [v13 alarmURL];
        sub_2692C7340();

        v17 = sub_2692C7330();
        v19 = v18;
        (*v12)(v8, v45);
        if (v17 == v46 && v19 == a2)
        {
          goto LABEL_10;
        }

        v20 = sub_2692C7D60();

        if (v20)
        {
          goto LABEL_12;
        }

        v21 = [v14 alarmIDString];
        v22 = sub_2692C7830();
        v5 = v23;

        if (v22 == v46 && v5 == v10)
        {
LABEL_10:
        }

        else
        {
          v24 = sub_2692C7D60();

          if ((v24 & 1) == 0)
          {

            goto LABEL_13;
          }
        }

LABEL_12:
        v5 = &v47;
        sub_2692C7BF0();
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
LABEL_13:
        ++v11;
        a2 = v10;
        if (v15 == v42)
        {
          v25 = v47;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

LABEL_31:
          while (1)
          {
            v27 = sub_2692C7C60();
            v26 = sub_2692C7C60();
            if (v27 != 1)
            {
              break;
            }

            if (!v26)
            {

              return 0;
            }

LABEL_28:
            if ((v25 & 0xC000000000000001) != 0)
            {
              goto LABEL_49;
            }

            if (*(v25 + 16))
            {
              goto LABEL_42;
            }

            __break(1u);
          }

          a2 = v10;
          goto LABEL_35;
        }
      }
    }
  }

  v25 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  if ((v25 & 0x4000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v26 = *(v25 + 16);
  if (v26 == 1)
  {
    goto LABEL_28;
  }

LABEL_35:
  if (v26)
  {
    if (qword_280302AE0 != -1)
    {
      swift_once();
    }

    v29 = sub_2692C77C0();
    __swift_project_value_buffer(v29, qword_280302D60);

    v30 = sub_2692C77B0();
    v31 = sub_2692C79F0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = a2;
      a2 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v47 = v33;
      *a2 = 136315138;
      *(a2 + 4) = sub_26927C4DC(v46, v32, &v47);
      _os_log_impl(&dword_269270000, v30, v31, "Multiple alarms found by alarm id %s", a2, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x26D6368E0](v33, -1, -1);
      MEMORY[0x26D6368E0](a2, -1, -1);
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
LABEL_49:
      v34 = MEMORY[0x26D6360D0](0, v25);
      goto LABEL_43;
    }

    if (*(v25 + 16))
    {
LABEL_42:
      v34 = *(v25 + 32);
LABEL_43:
      v28 = v34;

      return v28;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (qword_280302AE0 != -1)
  {
LABEL_51:
    swift_once();
  }

  v36 = sub_2692C77C0();
  __swift_project_value_buffer(v36, qword_280302D60);

  v37 = sub_2692C77B0();
  v38 = sub_2692C79F0();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = a2;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_26927C4DC(v46, v39, &v47);
    _os_log_impl(&dword_269270000, v37, v38, "No alarm found by alarm id %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x26D6368E0](v41, -1, -1);
    MEMORY[0x26D6368E0](v40, -1, -1);
  }

  return 0;
}

void sub_26928EF70(char *a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v97 = a2;
  v75 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB0, &qword_2692C9718);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v90 = v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB8, &qword_2692C9720);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v89 = v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v77 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v99 = v71 - v14;
  v78 = sub_2692C73E0();
  v79 = *(v78 - 8);
  v16 = MEMORY[0x28223BE20](v78, v15);
  v76 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v95 = v71 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v94 = v71 - v22;
  v93 = sub_2692C7310();
  v83 = *(v93 - 8);
  v24 = MEMORY[0x28223BE20](v93, v23);
  v96 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v74 = v71 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v31 = v71 - v30;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
  v32 = sub_2692C74E0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2692C9680;
  v37 = *(v33 + 104);
  (v37)(v36 + v35, *MEMORY[0x277CC9980], v32);
  (v37)(v36 + v35 + v34, *MEMORY[0x277CC99A0], v32);
  v92 = (2 * v34);
  (v37)(v36 + v35 + 2 * v34, *MEMORY[0x277CC99B8], v32);
  v87 = 3 * v34;
  LODWORD(v91) = *MEMORY[0x277CC9988];
  v37(v36 + v35 + 3 * v34);
  LODWORD(v88) = *MEMORY[0x277CC9998];
  v37(v36 + v35 + 4 * v34);
  LODWORD(v86) = *MEMORY[0x277CC9968];
  v37(v36 + v35 + 5 * v34);
  sub_2692A5EEC(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2692C7460();

  v72 = v31;
  v38 = sub_2692C72E0();
  if (v39)
  {
    v40 = 1;
  }

  else
  {
    v40 = v38;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2692C97D0;
  (v37)(v41 + v35, v86, v32);
  (v37)(v41 + v35 + v34, v88, v32);
  (v37)(v92 + v41 + v35, v91, v32);
  v42 = v79;
  v43 = v78;
  sub_2692A5EEC(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2692C7460();

  sub_2692C72A0();
  sub_2692C72C0();
  v44 = v99;
  sub_2692C7480();
  v87 = *(v42 + 48);
  v88 = v42 + 48;
  if ((v87)(v44, 1, v43) != 1)
  {
    v46 = *(v42 + 32);
    v45 = v42 + 32;
    v82 = v46;
    v46(v94, v44, v43);
    v47 = 0;
    v86 = sub_2692C74F0();
    v48 = *(v86 - 8);
    v49 = *(v48 + 56);
    v84 = v48 + 56;
    v85 = v49;
    v50 = v73;
    v51 = v73 & 0xFFFFFFFFFFFFFF8;
    if (v73 < 0)
    {
      v52 = v73;
    }

    else
    {
      v52 = v73 & 0xFFFFFFFFFFFFFF8;
    }

    v71[1] = v52;
    v99 = (v73 & 0xC000000000000001);
    v53 = v45;
    v91 = (v45 - 24);
    v92 = (v83 + 8);
    v83 = v40;
    v80 = (v45 - 16);
    v81 = 0x8000000000000000 - v40;
    v54 = v77;
    v55 = v76;
    v79 = v53;
    while (1)
    {
      v85(v89, 1, 1, v86);
      v56 = sub_2692C7500();
      (*(*(v56 - 8) + 56))(v90, 1, 1, v56);
      sub_2692C72F0();
      sub_2692C7490();
      if ((v87)(v54, 1, v43) == 1)
      {
        break;
      }

      v82(v95, v54, v43);
      if (__OFADD__(v83, v47))
      {
        goto LABEL_36;
      }

      if (v47 == v81)
      {
        goto LABEL_37;
      }

      v98 = v47;
      v100 = MEMORY[0x277D84F90];
      if (v50 >> 62)
      {
        v57 = sub_2692C7C60();
        v58 = &off_279C54000;
        if (v57)
        {
LABEL_14:
          v59 = 0;
          while (1)
          {
            if (v99)
            {
              v60 = MEMORY[0x26D6360D0](v59, v50);
            }

            else
            {
              if (v59 >= *(v51 + 16))
              {
                goto LABEL_35;
              }

              v60 = *(v50 + 8 * v59 + 32);
            }

            v61 = v60;
            v62 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              break;
            }

            v63 = [v60 v58[253]];
            if ((MTAlarmRepeatScheduleFromDay() & ~v63) != 0 && [v61 v58[253]])
            {
            }

            else
            {
              sub_2692C7BF0();
              sub_2692C7C20();
              v58 = &off_279C54000;
              sub_2692C7C30();
              sub_2692C7C00();
            }

            ++v59;
            if (v62 == v57)
            {
              v64 = v100;
              v54 = v77;
              v43 = v78;
              v55 = v76;
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          break;
        }
      }

      else
      {
        v57 = *(v51 + 16);
        v58 = &off_279C54000;
        if (v57)
        {
          goto LABEL_14;
        }
      }

      v64 = MEMORY[0x277D84F90];
LABEL_28:
      v65 = *v80;
      if (v98)
      {
        v66 = v95;
        v65(v55, v95, v43);
      }

      else
      {
        v65(v55, v75, v43);
        v66 = v95;
      }

      v67 = sub_26928FA40(v55, v97, v64);

      v68 = *v91;
      (*v91)(v55, v43);
      v68(v66, v43);
      v69 = *v92;
      (*v92)(v96, v93);
      if (!v67)
      {
        v47 = v98 + 1;
        if (v98 != 6)
        {
          continue;
        }
      }

      v68(v94, v43);
      v70 = v93;
      v69(v74, v93);
      v69(v72, v70);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26928FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v107 = a2;
  v105 = a1;
  v3 = sub_2692C74E0();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x28223BE20](v3, v6);
  v90 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB0, &qword_2692C9718);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v98 = &v86 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302CB8, &qword_2692C9720);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v96 = &v86 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v89 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v97 = &v86 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v101 = (&v86 - v22);
  v104 = sub_2692C7310();
  v106 = *(v104 - 8);
  v24 = MEMORY[0x28223BE20](v104, v23);
  v95 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v86 - v27;
  v100 = sub_2692C73E0();
  v29 = *(v100 - 8);
  v31 = MEMORY[0x28223BE20](v100, v30);
  v94 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v103 = &v86 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v37 = *(v29 + 16);
  v102 = &v86 - v38;
  v37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C68, &unk_2692CAA00);
  v39 = *(v4 + 72);
  v40 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2692C97E0;
  v42 = v41 + v40;
  v43 = *MEMORY[0x277CC9988];
  v91 = v5;
  v44 = *(v5 + 104);
  v44(v42, v43, v3);
  v44(v42 + v39, *MEMORY[0x277CC9998], v3);
  v44(v42 + 2 * v39, *MEMORY[0x277CC9968], v3);
  v45 = v29;
  v46 = v101;
  v44(v42 + 3 * v39, *MEMORY[0x277CC9980], v3);
  v88 = *MEMORY[0x277CC99A0];
  (v44)(v42 + 4 * v39);
  sub_2692A5EEC(v41);
  swift_setDeallocating();
  v93 = v3;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2692C7460();

  sub_2692C72A0();
  sub_2692C72C0();
  sub_2692C72D0();
  v99 = v28;
  v47 = v100;
  sub_2692C7480();
  v48 = *(v45 + 48);
  if (v48(v46, 1, v47) == 1)
  {
    v49 = v47;
    v50 = v104;
LABEL_5:
    sub_269290A58(v46);
    if (qword_280302AE0 != -1)
    {
      swift_once();
    }

    v59 = sub_2692C77C0();
    __swift_project_value_buffer(v59, qword_280302D60);
    v60 = sub_2692C77B0();
    v61 = sub_2692C79F0();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v108 = v63;
      *v62 = 136315138;
      v64 = v99;
      swift_beginAccess();
      sub_269290AC0();
      v65 = sub_2692C7D30();
      v67 = sub_26927C4DC(v65, v66, &v108);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_269270000, v60, v61, "Unable to determine date from components: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x26D6368E0](v63, -1, -1);
      MEMORY[0x26D6368E0](v62, -1, -1);

      (*(v106 + 8))(v64, v50);
    }

    else
    {

      (*(v106 + 8))(v99, v50);
    }

    v68 = 0;
    v69 = v102;
    goto LABEL_15;
  }

  v86 = v45;
  v51 = *(v45 + 32);
  v87 = v48;
  v101 = v51;
  v51(v103, v46, v47);
  v52 = sub_2692C74F0();
  (*(*(v52 - 8) + 56))(v96, 1, 1, v52);
  v53 = sub_2692C7500();
  (*(*(v53 - 8) + 56))(v98, 1, 1, v53);
  LOBYTE(v85) = 1;
  v84 = 0;
  v83 = 1;
  v82 = 0;
  v54 = v95;
  sub_2692C72F0();
  v55 = v97;
  v56 = v87;
  sub_2692C7490();
  v57 = *(v106 + 8);
  v58 = v104;
  v98 = (v106 + 8);
  v96 = v57;
  (v57)(v54, v104);
  v46 = v55;
  if (v56(v55, 1, v47) == 1)
  {
    v50 = v58;
    v45 = v86;
    v49 = v47;
    (*(v86 + 8))(v103, v47);
    goto LABEL_5;
  }

  v101(v94, v55, v47);
  sub_2692C7380();
  v45 = v86;
  v69 = v102;
  if (v70 != 0.0)
  {
LABEL_14:

    v75 = sub_269290B18(v74, v69);

    MEMORY[0x28223BE20](v76, v77);
    v78 = v94;
    v84 = v69;
    v85 = v94;
    v79 = sub_2692AC078(sub_269290E3C, &v82, v75);
    sub_2692906A0(v79, v69);
    v68 = v80;
    v81 = *(v45 + 8);
    v81(v103, v47);

    v49 = v47;
    v81(v78, v47);
    (v96)(v99, v104);
LABEL_15:
    (*(v45 + 8))(v69, v49);
    return v68;
  }

  v71 = v90;
  v44(v90, v88, v93);
  v72 = v89;
  sub_2692C74A0();
  (*(v91 + 8))(v71, v93);
  result = (v56)(v72, 1, v47);
  if (result != 1)
  {
    (*(v45 + 40))(v69, v72, v47);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_269290504(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2692C73E0();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18 - v12;
  v14 = *a1;
  (*(v6 + 16))(&v18 - v12, a2, v5);
  v15 = sub_2692C7390();
  v16 = *(v6 + 8);
  v16(v13, v5);
  v17 = [v14 nextFireDateAfterDate_];

  if (v17)
  {
    sub_2692C73C0();

    sub_2692C73D0();
    v16(v10, v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_2692906A0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = sub_2692C73E0();
  v6 = *(v42 - 8);
  v8 = MEMORY[0x28223BE20](v42, v7);
  v41 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v33 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = v33 - v15;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2692C7C60())
  {
    v40 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x26D6360D0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      v18 = *(a1 + 32);
    }

    v43 = v18;
    v33[1] = v3;
    if (i == 1)
    {
      return;
    }

    v34 = a1 & 0xFFFFFFFFFFFFFF8;
    v35 = a1;
    v19 = (v6 + 16);
    v20 = (v6 + 8);
    v3 = 1;
    v6 = 0x1FAA82000uLL;
    v37 = i;
    v38 = a2;
    v36 = v19;
    v39 = v13;
    while (v40)
    {
      v21 = MEMORY[0x26D6360D0](v3, a1);
      v22 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_22;
      }

LABEL_15:
      v44 = v3;
      v45 = v22;
      v23 = v6;
      v24 = v21;
      v13 = v42;
      v47 = *v19;
      v47(v16, a2, v42);
      v25 = sub_2692C7390();
      v48 = *v20;
      v48(v16, v13);
      v46 = v24;
      v26 = [v24 (v23 + 3551)];

      if (!v26)
      {
        goto LABEL_29;
      }

      v27 = v39;
      sub_2692C73C0();

      v47(v16, a2, v13);
      v28 = sub_2692C7390();
      v29 = v48;
      v48(v16, v13);
      v30 = [v43 (v23 + 3551)];

      if (!v30)
      {
        goto LABEL_30;
      }

      v31 = v41;
      sub_2692C73C0();

      v32 = sub_2692C73D0();
      v29(v31, v13);
      v29(v27, v13);
      a1 = v35;
      if (v32 == -1)
      {

        v43 = v46;
        v3 = v45;
        a2 = v38;
        v19 = v36;
        v6 = 0x1FAA82000;
        if (v45 == v37)
        {
          return;
        }
      }

      else
      {

        v3 = v44 + 1;
        a2 = v38;
        v19 = v36;
        v6 = 0x1FAA82000;
        if (v45 == v37)
        {
          return;
        }
      }
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v3 >= *(v34 + 16))
    {
      goto LABEL_24;
    }

    v21 = *(a1 + 8 * v3 + 32);
    v22 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

uint64_t sub_269290A58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269290AC0()
{
  result = qword_280302C78;
  if (!qword_280302C78)
  {
    sub_2692C7310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302C78);
  }

  return result;
}

uint64_t sub_269290B18(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C60, &qword_2692C96E0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v29 = v22 - v7;
  v8 = sub_2692C73E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2692C7C60())
  {
    v14 = 0;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = a1 & 0xC000000000000001;
    v25 = (v9 + 8);
    v26 = (v9 + 16);
    v22[1] = v3;
    v23 = (v9 + 32);
    v24 = (v9 + 56);
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x26D6360D0](v14, a1);
      }

      else
      {
        if (v14 >= *(v27 + 16))
        {
          goto LABEL_15;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      v9 = v15;
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = a1;
      (*v26)(v12, v30, v8);
      v18 = sub_2692C7390();
      (*v25)(v12, v8);
      v19 = [v9 nextFireDateAfterDate_];

      if (v19)
      {
        sub_2692C73C0();

        v20 = v29;
        (*v23)(v29, v12, v8);
        (*v24)(v20, 0, 1, v8);
        sub_269290A58(v20);
        v3 = &v31;
        sub_2692C7BF0();
        sub_2692C7C20();
        sub_2692C7C30();
        sub_2692C7C00();
      }

      else
      {
        v3 = v29;
        (*v24)(v29, 1, 1, v8);
        sub_269290A58(v3);
      }

      a1 = v17;
      ++v14;
      if (v16 == i)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

id sub_269290E5C()
{
  v1 = v0;
  v2 = sub_2692C75B0();
  v102 = *(v2 - 8);
  v103 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v99 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v100 = v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302D90, &unk_2692C97F0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v101 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v98 = v97 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v105 = v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C48, &qword_2692C9780);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v104 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v106 = v97 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = v97 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = v97 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  v107 = v97 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = v97 - v37;
  MEMORY[0x28223BE20](v36, v39);
  v41 = v97 - v40;
  v42 = [objc_allocWithZone(type metadata accessor for CreateAlarmIntent()) init];
  v43 = [v1 alarmSearch];
  if (!v43 || (v44 = v43, v45 = [v43 label], v44, !v45))
  {
    v45 = 0;
  }

  [v42 setLabel_];

  v46 = [v1 alarmSearch];
  if (v46)
  {
    v47 = v46;
    v48 = [v46 time];

    if (v48)
    {
      sub_2692C7280();

      v49 = sub_2692C7310();
      (*(*(v49 - 8) + 56))(v38, 0, 1, v49);
    }

    else
    {
      v49 = sub_2692C7310();
      (*(*(v49 - 8) + 56))(v38, 1, 1, v49);
    }

    sub_26928E660(v38, v41, &qword_280302C48, &qword_2692C9780);
    sub_2692C7310();
    v52 = *(v49 - 8);
    v51 = 0;
    if ((*(v52 + 48))(v41, 1, v49) != 1)
    {
      v51 = sub_2692C7270();
      (*(v52 + 8))(v41, v49);
    }
  }

  else
  {
    v50 = sub_2692C7310();
    (*(*(v50 - 8) + 56))(v41, 1, 1, v50);
    v51 = 0;
  }

  [v42 setTime_];

  v53 = [v1 alarmSearch];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 &off_279C545F8];

    if (v55)
    {
      sub_2692C7280();

      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    v58 = sub_2692C7310();
    (*(*(v58 - 8) + 56))(v31, v56, 1, v58);
    sub_26928E660(v31, v107, &qword_280302C48, &qword_2692C9780);
  }

  else
  {
    v57 = sub_2692C7310();
    (*(*(v57 - 8) + 56))(v107, 1, 1, v57);
  }

  v59 = [v1 alarmSearch];
  if (!v59 || (v60 = v59, v61 = [v59 isMeridianInferred], v60, !v61))
  {
    sub_2692822D8();
    v61 = sub_2692C7A40();
  }

  sub_26927CE40(v107, v27, &qword_280302C48, &qword_2692C9780);
  v62 = sub_2692C7310();
  v63 = *(v62 - 8);
  v64 = *(v63 + 48);
  if (v64(v27, 1, v62) == 1)
  {
    goto LABEL_21;
  }

  v65 = sub_2692C7290();
  v67 = v66;
  v68 = *(v63 + 8);
  v68(v27, v62);
  if (v67)
  {
    goto LABEL_23;
  }

  v27 = v106;
  sub_26927CE40(v107, v106, &qword_280302C48, &qword_2692C9780);
  if (v64(v27, 1, v62) == 1)
  {
LABEL_21:
    sub_26927CEA8(v27, &qword_280302C48, &qword_2692C9780);
LABEL_23:
    if (qword_280302AE8 != -1)
    {
      swift_once();
    }

    v69 = sub_2692C77C0();
    __swift_project_value_buffer(v69, qword_280302D78);
    v70 = sub_2692C77B0();
    v71 = sub_2692C7A00();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_269270000, v70, v71, "AlarmSearch contained invalid time - unable to produce CreateAlarmIntent from ChangeAlarmStatusIntent", v72, 2u);
      MEMORY[0x26D6368E0](v72, -1, -1);
    }

    else
    {
    }

LABEL_28:
    sub_26927CEA8(v107, &qword_280302C48, &qword_2692C9780);
    return 0;
  }

  v74 = v27;
  v97[1] = sub_2692C72B0();
  v76 = v75;
  v68(v74, v62);
  if (v76)
  {
    goto LABEL_23;
  }

  v77 = [v61 BOOLValue];
  v97[0] = v65;
  if (v77 && v65 < 13)
  {
    v78 = v102;
    v79 = v103;
    v80 = v105;
    (*(v102 + 56))(v105, 1, 1, v103);
  }

  else
  {
    v78 = v102;
    v81 = MEMORY[0x277D56298];
    if (v65 >= 12)
    {
      v81 = MEMORY[0x277D562A0];
    }

    v82 = v98;
    v79 = v103;
    (*(v102 + 104))(v98, *v81, v103);
    (*(v78 + 56))(v82, 0, 1, v79);
    v83 = v82;
    v80 = v105;
    sub_26928E660(v83, v105, &qword_280302D90, &unk_2692C97F0);
  }

  v84 = v80;
  v85 = v101;
  sub_26927CE40(v84, v101, &qword_280302D90, &unk_2692C97F0);
  if ((*(v78 + 48))(v85, 1, v79) == 1)
  {
    sub_26927CEA8(v85, &qword_280302D90, &unk_2692C97F0);
    sub_2692C75E0();
    swift_allocObject();
    sub_2692C75D0();
    sub_2692C7600();
    swift_allocObject();
    sub_2692C75A0();
  }

  else
  {
    v86 = v79;
    v87 = v100;
    v88 = v86;
    (*(v78 + 32))(v100);
    (*(v78 + 16))(v99, v87, v88);
    sub_2692C75E0();
    swift_allocObject();
    sub_2692C75C0();
    sub_2692C7600();
    swift_allocObject();
    sub_2692C75A0();
    (*(v102 + 8))(v87, v103);
  }

  v89 = sub_2692C7620();

  if (!v89)
  {
    if (qword_280302AE8 != -1)
    {
      swift_once();
    }

    v92 = sub_2692C77C0();
    __swift_project_value_buffer(v92, qword_280302D78);
    v93 = sub_2692C77B0();
    v94 = sub_2692C7A00();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_269270000, v93, v94, "Inference unable to provide inferred time to convert ChangeAlarmStatusIntent to CreateAlarmIntent", v95, 2u);
      MEMORY[0x26D6368E0](v95, -1, -1);
    }

    sub_26927CEA8(v105, &qword_280302D90, &unk_2692C97F0);
    goto LABEL_28;
  }

  sub_2692C75F0();
  v90 = v104;
  if (v64(v104, 1, v62) == 1)
  {
    v91 = 0;
  }

  else
  {
    v96 = v90;
    v91 = sub_2692C7270();
    v68(v96, v62);
  }

  [v42 setTime_];

  [v42 setIsMeridianInferred_];

  sub_26927CEA8(v105, &qword_280302D90, &unk_2692C97F0);
  sub_26927CEA8(v107, &qword_280302C48, &qword_2692C9780);
  return v42;
}

Swift::Bool __swiftcall ChangeAlarmStatusIntent.isDismissRequest(alarms:)(Swift::OpaquePointer alarms)
{
  v18 = MEMORY[0x277D84F90];
  v3 = alarms._rawValue >> 62;
  if (alarms._rawValue >> 62)
  {
LABEL_19:
    v4 = sub_2692C7C60();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((alarms._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v3 = alarms._rawValue & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((alarms._rawValue & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x26D6360D0](v5, alarms._rawValue);
        }

        else
        {
          if (v5 >= *((alarms._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v6 = *(alarms._rawValue + v5 + 4);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v9 = [v6 firing];
        v1 = sub_2692822D8();
        v10 = sub_2692C7A50();
        v11 = v10;
        if (v9)
        {
          v1 = sub_2692C7A70();

          if (v1)
          {
            sub_2692C7BF0();
            sub_2692C7C20();
            sub_2692C7C30();
            v1 = &v18;
            sub_2692C7C00();
            goto LABEL_6;
          }
        }

        else
        {
        }

LABEL_6:
        ++v5;
        if (v8 == v4)
        {
          v3 = v17;
          v12 = v18;
          v1 = v16;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_30;
        }
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  if ((v12 & 0x4000000000000000) != 0)
  {
LABEL_30:
    v13 = sub_2692C7C60();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  if ([v1 operation] != 2)
  {
    return 0;
  }

  if (v3)
  {
    v14 = sub_2692C7C60();
  }

  else
  {
    v14 = *((alarms._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v13 == v14;
}

uint64_t sub_269291C8C()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302D78);
  v1 = __swift_project_value_buffer(v0, qword_280302D78);
  if (qword_280302B48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280307B80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_269291D54()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280302D98);
  v1 = __swift_project_value_buffer(v0, qword_280302D98);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SnoozeAlarmIntentHandler.__allocating_init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_269294C7C(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id SnoozeAlarmIntentHandler.init(manager:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_269294B80(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

id SnoozeAlarmIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SnoozeAlarmIntentHandler.init()()
{
  if (qword_280302AF0 != -1)
  {
    swift_once();
  }

  v0 = sub_2692C77C0();
  __swift_project_value_buffer(v0, qword_280302D98);
  v1 = sub_2692C77B0();
  v2 = sub_2692C7A00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_269270000, v1, v2, "SnoozeAlarmIntentHandler init().", v3, 2u);
    MEMORY[0x26D6368E0](v3, -1, -1);
  }

  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v16);
  v4 = type metadata accessor for SiriAlarmManagerImpl(0);
  v5 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v6 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v7 = swift_allocObject();
  *(v5 + v6) = v7;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *(v5 + v8) = qword_280303380;
  sub_269275A30(&v16, v5 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  v10 = type metadata accessor for SnoozeAlarmIntentHandler();
  v11 = objc_allocWithZone(v10);
  v17 = v4;
  v18 = &protocol witness table for SiriAlarmManagerImpl;
  *&v16 = v5;
  *&v11[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_osLogObject] = v9;
  sub_269275A6C(&v16, &v11[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager]);
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = v9;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v13;
}

void sub_269292224(void *a1, void (*a2)(char *))
{
  if (qword_280302AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280302D98);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Calling SnoozeAlarmIntentHandler.confirm().", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v8 = [a1 remoteDeviceId];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_2692C7830();
  v12 = v11;

  v13 = [a1 skipConfirmation];
  sub_26927CC94(0, &qword_280302CC0, 0x277CCABB0);
  v14 = sub_2692C7A50();
  v15 = v14;
  if (!v13)
  {

    goto LABEL_11;
  }

  v16 = sub_2692C7A70();

  if ((v16 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    v22 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
    v23 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
    swift_beginAccess();
    v24 = 4;
    goto LABEL_13;
  }

  v17 = sub_2692C77B0();
  v18 = sub_2692C7A00();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v19 = 136315138;
    v21 = sub_26927C4DC(v10, v12, v25);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_269270000, v17, v18, "SnoozeAlarmHalIntentHandler returning needs confirm intent since the firing alarm is on remote device %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D6368E0](v20, -1, -1);
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  else
  {
  }

  v22 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
  v23 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  v24 = 3;
LABEL_13:
  *&v22[v23] = v24;
  [v22 setUserActivity_];
  a2(v22);
}

uint64_t sub_2692925DC(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = sub_2692C77A0();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  v2[34] = swift_task_alloc();
  v4 = sub_2692C7360();
  v2[35] = v4;
  v2[36] = *(v4 - 8);
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269292730, 0, 0);
}

uint64_t sub_269292730()
{
  v83 = v0;
  if (qword_280302AF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_2692C77C0();
  *(v0 + 304) = __swift_project_value_buffer(v2, qword_280302D98);
  v3 = v1;
  v4 = sub_2692C77B0();
  v5 = sub_2692C7A00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 232);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v82 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_2692C7830();
    v13 = v12;

    v14 = sub_26927C4DC(v11, v13, &v82);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_269270000, v4, v5, "Calling SnoozeAlarmIntentHandler.handle() for intent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6368E0](v8, -1, -1);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v15 = [*(v0 + 232) remoteExecutionId];
  v16 = *(v0 + 232);
  if (v15)
  {
    v17 = v15;
    v18 = sub_2692C7830();
    v20 = v19;

    *(v0 + 312) = v18;
    *(v0 + 320) = v20;
    v21 = [v16 alarmId];
    if (!v21)
    {

      goto LABEL_14;
    }

    v22 = *(v0 + 280);
    v23 = *(v0 + 288);
    v24 = *(v0 + 272);
    v25 = v21;
    sub_2692C7830();

    sub_2692C7350();

    if ((*(v23 + 48))(v24, 1, v22) == 1)
    {
      v26 = *(v0 + 272);

      sub_269294D94(v26);
LABEL_14:
      v54 = sub_2692C77B0();
      v55 = sub_2692C79F0();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_269270000, v54, v55, "Failed to get a valid alarmId or alarmURL for SAAlarmSnooze command", v56, 2u);
        MEMORY[0x26D6368E0](v56, -1, -1);
      }

      v57 = sub_2692C7760();
      v58 = MEMORY[0x277D61908];
      *(v0 + 40) = v57;
      *(v0 + 48) = v58;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      *boxed_opaque_existential_1 = 0x4120657A6F6F6E53;
      boxed_opaque_existential_1[1] = 0xEF4449206D72616CLL;
      v60 = *MEMORY[0x277D61878];
      v61 = sub_2692C7710();
      (*(*(v61 - 8) + 104))(boxed_opaque_existential_1, v60, v61);
      (*(*(v57 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D618D8], v57);
      sub_2692C76B0();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v62 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
      v63 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
      swift_beginAccess();
      *&v62[v63] = 5;
      [v62 setUserActivity_];

      v64 = *(v0 + 8);

      return v64(v62);
    }

    v67 = *(v0 + 288);
    v66 = *(v0 + 296);
    v68 = *(v0 + 280);
    (*(v67 + 32))(v66, *(v0 + 272), v68);
    v69 = [objc_allocWithZone(MEMORY[0x277D47168]) init];
    *(v0 + 328) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DC0, &qword_2692C9820);
    v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_2692C9800;
    (*(v67 + 16))(v71 + v70, v66, v68);
    v72 = sub_2692C7910();

    [v69 setAlarmIds_];

    sub_2692C7580();
    v73 = *(v0 + 80);
    v74 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v73);
    v75 = swift_task_alloc();
    *(v0 + 336) = v75;
    v76 = sub_26927CC94(0, &qword_280302DC8, 0x277D471B0);
    *v75 = v0;
    v75[1] = sub_2692930E8;

    return MEMORY[0x2821BB680](v69, v18, v20, v73, v76, v74);
  }

  else
  {
    v27 = [*(v0 + 232) alarmId];
    if (v27)
    {
      v28 = v27;
      v29 = *(v0 + 232);
      v30 = sub_2692C77B0();
      v31 = sub_2692C7A00();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v0 + 232);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v82 = v34;
        *v33 = 136315138;
        v35 = [v32 description];
        v36 = sub_2692C7830();
        v38 = v37;

        v39 = sub_26927C4DC(v36, v38, &v82);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_269270000, v30, v31, "Found a remote firing alarm: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x26D6368E0](v34, -1, -1);
        MEMORY[0x26D6368E0](v33, -1, -1);
      }

      v41 = *(v0 + 256);
      v40 = *(v0 + 264);
      v43 = *(v0 + 240);
      v42 = *(v0 + 248);
      type metadata accessor for SiriAlarm();
      v44 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v45 = sub_2692C7820();
      v46 = [v44 initWithIdentifier:v28 displayString:v45];
      *(v0 + 352) = v46;

      sub_2692C7A20();
      sub_2692C7790();
      sub_2692C7780();
      (*(v41 + 8))(v40, v42);
      v47 = swift_task_alloc();
      *(v0 + 360) = v47;
      *(v47 + 16) = v43;
      *(v47 + 24) = v46;
      v48 = swift_task_alloc();
      *(v0 + 368) = v48;
      v49 = type metadata accessor for SnoozeAlarmHalIntentResponse();
      *v48 = v0;
      v48[1] = sub_26929340C;
      v50 = sub_269294D8C;
      v51 = 0x6C41657A6F6F6E73;
      v52 = 0xEF293A5F286D7261;
      v53 = v0 + 216;
    }

    else
    {
      v77 = sub_2692C77B0();
      v78 = sub_2692C7A00();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_269270000, v77, v78, "There's no remote alarm to snooze, try to find it locally.", v79, 2u);
        MEMORY[0x26D6368E0](v79, -1, -1);
      }

      v80 = *(v0 + 240);

      v47 = swift_task_alloc();
      *(v0 + 376) = v47;
      *(v47 + 16) = v80;
      v81 = swift_task_alloc();
      *(v0 + 384) = v81;
      v49 = type metadata accessor for SnoozeAlarmHalIntentResponse();
      *v81 = v0;
      v81[1] = sub_2692935B0;
      v50 = sub_269294D84;
      v51 = 0x6928656C646E6168;
      v52 = 0xEF293A746E65746ELL;
      v53 = v0 + 208;
    }

    return MEMORY[0x2822007B8](v53, 0, 0, v51, v52, v50, v47, v49);
  }
}

uint64_t sub_2692930E8(void *a1)
{
  *(*v2 + 344) = v1;

  if (v1)
  {
    v4 = sub_26929374C;
  }

  else
  {

    v4 = sub_269293204;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_269293204()
{
  v18 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v1 = sub_2692C77B0();
  v2 = sub_2692C7A00();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[40];
  if (v3)
  {
    v5 = v0[39];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v8 = sub_26927C4DC(v5, v4, &v17);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_269270000, v1, v2, "Execute SAAlarmSnooze on remote device %s succeeded!", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D6368E0](v7, -1, -1);
    MEMORY[0x26D6368E0](v6, -1, -1);
  }

  else
  {
  }

  v9 = v0[41];
  v11 = v0[36];
  v10 = v0[37];
  v12 = v0[35];
  v13 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
  v14 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v13[v14] = 4;
  [v13 setUserActivity_];

  (*(v11 + 8))(v10, v12);

  v15 = v0[1];

  return v15(v13);
}

uint64_t sub_26929340C()
{

  return MEMORY[0x2822009F8](sub_269293524, 0, 0);
}

uint64_t sub_269293524()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2692935B0()
{

  return MEMORY[0x2822009F8](sub_2692936C8, 0, 0);
}

uint64_t sub_2692936C8()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26929374C()
{
  v30 = v0;
  v1 = v0[43];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v2 = v1;
  v3 = sub_2692C77B0();
  v4 = sub_2692C79F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[43];
    v7 = v0[39];
    v6 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315394;
    v10 = sub_26927C4DC(v7, v6, &v29);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v0[28] = v5;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DD0, &qword_2692C9828);
    v12 = sub_2692C7840();
    v14 = sub_26927C4DC(v12, v13, &v29);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_269270000, v3, v4, "Execute SAAlarmSnooze on remote device %s failed with error %s!", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6368E0](v9, -1, -1);
    MEMORY[0x26D6368E0](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[43];
  v16 = v0[41];
  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[35];
  v20 = sub_2692C7760();
  v21 = MEMORY[0x277D61908];
  v0[15] = v20;
  v0[16] = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  *boxed_opaque_existential_1 = sub_2692C7320();
  v23 = *MEMORY[0x277D618D0];
  v24 = sub_2692C7750();
  (*(*(v24 - 8) + 104))(boxed_opaque_existential_1, v23, v24);
  (*(*(v20 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D61900], v20);
  sub_2692C76B0();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v25 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
  v26 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v25[v26] = 5;
  [v25 setUserActivity_];

  (*(v18 + 8))(v17, v19);

  v27 = v0[1];

  return v27(v25);
}

uint64_t sub_269293AA8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15[-1] - v8;
  sub_269275A6C(a2 + OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager, v15);
  (*(v5 + 16))(v9, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  *(v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v12 = a2;
  static AlarmIntentHandlerUtils.getFiringAlarms(alarmManager:completion:)(v15, sub_26929573C, v11);

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

uint64_t sub_269293C28(unint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_2692C77A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v36 - v14;
  if (a1 >> 62)
  {
    if (sub_2692C7C60())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v37 = v6;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = a3;
      v17 = MEMORY[0x26D6360D0](0, a1);
      goto LABEL_6;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = a3;
      v17 = *(a1 + 32);
LABEL_6:
      v18 = v17;
      (*(v12 + 16))(v15, a2, v11);
      v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v20 = swift_allocObject();
      (*(v12 + 32))(v20 + v19, v15, v11);
      sub_2692C7A20();
      v21 = v16;
      sub_2692C7790();
      sub_2692C7780();
      (*(v7 + 8))(v10, v37);
      sub_269275A6C(&v16[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager], v39);
      v22 = v40;
      v23 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_2692C9430;
      *(v24 + 32) = v18;
      v25 = swift_allocObject();
      v25[2] = v21;
      v25[3] = sub_2692958F0;
      v25[4] = v20;
      v25[5] = v18;
      v26 = *(v23 + 48);
      v27 = v18;
      v28 = v21;

      v26(v24, sub_2692958E8, v25, v22, v23);

      return __swift_destroy_boxed_opaque_existential_1Tm(v39);
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_280302AF0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v30 = sub_2692C77C0();
  __swift_project_value_buffer(v30, qword_280302D98);
  v31 = sub_2692C77B0();
  v32 = sub_2692C7A00();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_269270000, v31, v32, "No firing alarm to snooze when handle().", v33, 2u);
    MEMORY[0x26D6368E0](v33, -1, -1);
  }

  v34 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
  v35 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  *&v34[v35] = 100;
  [v34 setUserActivity_];
  v38 = v34;
  return sub_2692C79A0();
}

uint64_t sub_26929424C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_269294310;

  return sub_2692925DC(v6);
}

uint64_t sub_269294310(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

void sub_269294474(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v8 = sub_2692C77A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v30[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  sub_2692C7A10();
  sub_2692C7790();
  sub_2692C7780();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_280302AF0 != -1)
    {
      swift_once();
    }

    v14 = sub_2692C77C0();
    __swift_project_value_buffer(v14, qword_280302D98);
    v15 = a5;
    v16 = sub_2692C77B0();
    v17 = sub_2692C79F0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30[0] = v19;
      *v18 = 136315138;
      v20 = v15;
      v21 = [v20 description];
      v22 = sub_2692C7830();
      v24 = v23;

      v25 = sub_26927C4DC(v22, v24, v30);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_269270000, v16, v17, "Can NOT handle Snooze alarm: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D6368E0](v19, -1, -1);
      MEMORY[0x26D6368E0](v18, -1, -1);
    }

    v26 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
    v27 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
    swift_beginAccess();
    v28 = 5;
  }

  else
  {
    v26 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
    v27 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
    swift_beginAccess();
    v28 = 4;
  }

  *&v26[v27] = v28;
  [v26 setUserActivity_];
  a3(v26);
}

uint64_t sub_2692947A4(uint64_t a1, char *a2, void *a3)
{
  v26 = a3;
  v5 = sub_2692C77A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27[-1] - v13;
  (*(v11 + 16))(&v27[-1] - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  sub_2692C7A20();
  sub_2692C7790();
  sub_2692C7780();
  (*(v6 + 8))(v9, v5);
  sub_269275A6C(&a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager], v27);
  v17 = v28;
  v18 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302B70, &qword_2692C9490);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2692C9430;
  v20 = v26;
  *(v19 + 32) = v26;
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = sub_26929572C;
  v21[4] = v16;
  v21[5] = v20;
  v22 = *(v18 + 48);
  v23 = v20;
  v24 = a2;

  v22(v19, sub_269295730, v21, v17, v18);

  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

uint64_t sub_269294AB0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  return sub_2692C79A0();
}

id SnoozeAlarmIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SnoozeAlarmIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_269294B80(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v9 = qword_280303380;
  *&a2[v8] = qword_280303380;
  sub_269275A6C(v14, &a2[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for SnoozeAlarmIntentHandler();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

id sub_269294C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for SnoozeAlarmIntentHandler());
  (*(v7 + 16))(v9, a1, a3);
  return sub_269294B80(v9, v10, a3, a4);
}

uint64_t sub_269294D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SnoozeAlarmIntentHandler.handle(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269294F8C;

  return v7(a1);
}

uint64_t sub_269294F8C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_269295088()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26929513C;

  return sub_26929424C(v2, v3, v4);
}

uint64_t sub_26929513C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_269295230()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2692958EC;

  return sub_2692AAE34(v2, v3, v4);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269295330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2692958EC;

  return sub_2692AAF1C(a1, v4, v5, v6);
}

void sub_2692953FC(void *a1, uint64_t a2)
{
  if (qword_280302AF0 != -1)
  {
    swift_once();
  }

  v4 = sub_2692C77C0();
  __swift_project_value_buffer(v4, qword_280302D98);
  v5 = sub_2692C77B0();
  v6 = sub_2692C7A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_269270000, v5, v6, "Calling SnoozeAlarmIntentHandler.confirm().", v7, 2u);
    MEMORY[0x26D6368E0](v7, -1, -1);
  }

  v8 = [a1 remoteDeviceId];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = sub_2692C7830();
  v12 = v11;

  v13 = [a1 skipConfirmation];
  sub_26927CC94(0, &qword_280302CC0, 0x277CCABB0);
  v14 = sub_2692C7A50();
  v15 = v14;
  if (!v13)
  {

    goto LABEL_11;
  }

  v16 = sub_2692C7A70();

  if ((v16 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    v22 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
    v23 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
    swift_beginAccess();
    v24 = 4;
    goto LABEL_13;
  }

  v17 = sub_2692C77B0();
  v18 = sub_2692C7A00();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25[0] = v20;
    *v19 = 136315138;
    v21 = sub_26927C4DC(v10, v12, v25);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_269270000, v17, v18, "SnoozeAlarmHalIntentHandler returning needs confirm intent since the firing alarm is on remote device %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D6368E0](v20, -1, -1);
    MEMORY[0x26D6368E0](v19, -1, -1);
  }

  else
  {
  }

  v22 = [objc_allocWithZone(type metadata accessor for SnoozeAlarmHalIntentResponse()) init];
  v23 = OBJC_IVAR___SnoozeAlarmHalIntentResponse_code;
  swift_beginAccess();
  v24 = 3;
LABEL_13:
  *&v22[v23] = v24;
  [v22 setUserActivity_];
  (*(a2 + 16))(a2, v22);
}

uint64_t sub_26929573C(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_269293C28(a1, v1 + v4, v5);
}

uint64_t objectdestroy_22Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302DE0, &unk_2692C9890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

SiriTimeAlarmInternal::AlarmNLv4Constants::AlarmVerb_optional __swiftcall AlarmNLv4Constants.AlarmVerb.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2692C7C70();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AlarmNLv4Constants.AlarmVerb.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6978456B63656863;
      break;
    case 2:
      result = 0x657461657263;
      break;
    case 3:
      result = 0x6574656C6564;
      break;
    case 4:
      result = 0x656C6261736964;
      break;
    case 5:
      result = 0x656C62616E65;
      break;
    case 6:
      result = 1684104562;
      break;
    case 7:
      result = 0x74736575716572;
      break;
    case 8:
      result = 0x657A6F6F6E73;
      break;
    case 9:
      result = 0x736972616D6D7573;
      break;
    case 0xA:
      result = 0x657461647075;
      break;
    case 0xB:
      result = 0x627265566F6ELL;
      break;
    case 0xC:
      result = 0x65736F6C63;
      break;
    case 0xD:
      result = 0x656D75736572;
      break;
    case 0xE:
      result = 1886352499;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_269295ABC()
{
  v0 = AlarmNLv4Constants.AlarmVerb.rawValue.getter();
  v2 = v1;
  if (v0 == AlarmNLv4Constants.AlarmVerb.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2692C7D60();
  }

  return v5 & 1;
}

unint64_t sub_269295B5C()
{
  result = qword_280302DE8;
  if (!qword_280302DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302DE8);
  }

  return result;
}

uint64_t sub_269295BB0()
{
  sub_2692C7DE0();
  AlarmNLv4Constants.AlarmVerb.rawValue.getter();
  sub_2692C7890();

  return sub_2692C7E00();
}

uint64_t sub_269295C18(uint64_t a1)
{
  AlarmNLv4Constants.AlarmVerb.rawValue.getter();
  sub_2692C7890();
}

uint64_t sub_269295C7C(uint64_t a1)
{
  sub_2692C7DE0();
  AlarmNLv4Constants.AlarmVerb.rawValue.getter();
  sub_2692C7890();

  return sub_2692C7E00();
}

uint64_t sub_269295CEC@<X0>(uint64_t *a1@<X8>)
{
  result = AlarmNLv4Constants.AlarmVerb.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_269295D18()
{
  result = qword_280302DF0;
  if (!qword_280302DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302DF8, &qword_2692C9940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302DF0);
  }

  return result;
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

uint64_t getEnumTagSinglePayload for AlarmNLv4Constants.AlarmVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmNLv4Constants.AlarmVerb(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269295FF4(uint64_t a1)
{
  v2 = sub_2692969EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269296030(uint64_t a1)
{
  v2 = sub_2692969EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26929606C(uint64_t a1)
{
  v2 = sub_269296BA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692960A8(uint64_t a1)
{
  v2 = sub_269296BA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2692960E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2692C7D60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_269296164(uint64_t a1)
{
  v2 = sub_269296AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692961A0(uint64_t a1)
{
  v2 = sub_269296AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2692961DC()
{
  v1 = 0x6C65536D72616C61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C754D6D72616C61;
  }
}

uint64_t sub_26929624C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26929EF5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_269296280(uint64_t a1)
{
  v2 = sub_269296998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692962BC(uint64_t a1)
{
  v2 = sub_269296998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAlarmSnippetModels.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E00, &qword_2692C99F0);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v45 = &v37 - v4;
  v43 = type metadata accessor for AlarmConfirmationModel(0);
  MEMORY[0x28223BE20](v43, v5);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E08, &qword_2692C99F8);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v40 = &v37 - v9;
  v39 = type metadata accessor for AlarmSelectorModel(0);
  MEMORY[0x28223BE20](v39, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E10, &qword_2692C9A00);
  v38 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for SiriAlarmSnippetModels(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = (&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E18, &qword_2692C9A08);
  v49 = *(v21 - 8);
  v50 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v37 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269296998();
  sub_2692C7E20();
  sub_26929A474(v48, v20, type metadata accessor for SiriAlarmSnippetModels);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_269296A40(v20, v12, type metadata accessor for AlarmSelectorModel);
      v53 = 1;
      sub_269296AA8();
      v26 = v40;
      v27 = v50;
      sub_2692C7CE0();
      sub_269296AFC(&qword_280302E40, type metadata accessor for AlarmSelectorModel, &protocol conformance descriptor for AlarmSelectorModel);
      v28 = v42;
      sub_2692C7D10();
      (*(v41 + 8))(v26, v28);
      v29 = type metadata accessor for AlarmSelectorModel;
      v30 = v12;
    }

    else
    {
      v34 = v44;
      sub_269296A40(v20, v44, type metadata accessor for AlarmConfirmationModel);
      v54 = 2;
      sub_2692969EC();
      v35 = v45;
      v27 = v50;
      sub_2692C7CE0();
      sub_269296AFC(&qword_280302E30, type metadata accessor for AlarmConfirmationModel, &protocol conformance descriptor for AlarmConfirmationModel);
      v36 = v47;
      sub_2692C7D10();
      (*(v46 + 8))(v35, v36);
      v29 = type metadata accessor for AlarmConfirmationModel;
      v30 = v34;
    }

    sub_269296B44(v30, v29);
    return (*(v49 + 8))(v24, v27);
  }

  else
  {
    v31 = *v20;
    v52 = 0;
    sub_269296BA4();
    v32 = v50;
    sub_2692C7CE0();
    v51 = v31;
    sub_269296BF8();
    sub_2692C7D10();
    (*(v38 + 8))(v16, v13);
    (*(v49 + 8))(v24, v32);
  }
}

unint64_t sub_269296998()
{
  result = qword_280302E20;
  if (!qword_280302E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E20);
  }

  return result;
}

unint64_t sub_2692969EC()
{
  result = qword_280302E28;
  if (!qword_280302E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E28);
  }

  return result;
}

uint64_t sub_269296A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269296AA8()
{
  result = qword_280302E38;
  if (!qword_280302E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E38);
  }

  return result;
}

uint64_t sub_269296AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269296B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_269296BA4()
{
  result = qword_280302E48;
  if (!qword_280302E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E48);
  }

  return result;
}

unint64_t sub_269296BF8()
{
  result = qword_280302E50;
  if (!qword_280302E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E50);
  }

  return result;
}

uint64_t SiriAlarmSnippetModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E58, &qword_2692C9A10);
  v4 = *(v3 - 8);
  v77 = v3;
  v78 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v81 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E60, &qword_2692C9A18);
  v8 = *(v7 - 8);
  v75 = v7;
  v76 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v80 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E68, &qword_2692C9A20);
  v12 = *(v11 - 8);
  v73 = v11;
  v74 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v79 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E70, &qword_2692C9A28);
  v83 = *(v15 - 8);
  v84 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v67 - v17;
  v19 = type metadata accessor for SiriAlarmSnippetModels(0);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v67 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v67 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v67 - v33;
  v35 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_269296998();
  v36 = v85;
  sub_2692C7E10();
  if (!v36)
  {
    v68 = v31;
    v69 = v27;
    v37 = v79;
    v38 = v80;
    v70 = v23;
    v71 = v34;
    v40 = v81;
    v39 = v82;
    v72 = 0;
    v85 = v19;
    v41 = v84;
    v42 = sub_2692C7CD0();
    v43 = v42;
    v44 = *(v42 + 16);
    if (!v44 || ((v45 = *(v42 + 32), v44 == 1) ? (v46 = v45 == 3) : (v46 = 1), v46))
    {
      v47 = sub_2692C7BD0();
      swift_allocError();
      v48 = v18;
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E78, &qword_2692C9A30);
      *v50 = v85;
      sub_2692C7C90();
      sub_2692C7BC0();
      (*(*(v47 - 8) + 104))(v50, *MEMORY[0x277D84160], v47);
      swift_willThrow();
      (*(v83 + 8))(v48, v41);
LABEL_17:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v86);
    }

    if (*(v42 + 32))
    {
      if (v45 == 1)
      {
        v89 = 1;
        sub_269296AA8();
        v51 = v38;
        v52 = v72;
        sub_2692C7C80();
        if (v52)
        {
          goto LABEL_16;
        }

        v58 = v39;
        type metadata accessor for AlarmSelectorModel(0);
        sub_269296AFC(&qword_280302E88, type metadata accessor for AlarmSelectorModel, &protocol conformance descriptor for AlarmSelectorModel);
        v61 = v69;
        v62 = v75;
        sub_2692C7CC0();
        v63 = v83;
        (*(v76 + 8))(v51, v62);
        (*(v63 + 8))(v18, v41);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v66 = v61;
        goto LABEL_21;
      }

      v90 = 2;
      sub_2692969EC();
      v59 = v72;
      sub_2692C7C80();
      if (!v59)
      {
        v58 = v39;
        v80 = v43;
        type metadata accessor for AlarmConfirmationModel(0);
        sub_269296AFC(&qword_280302E80, type metadata accessor for AlarmConfirmationModel, &protocol conformance descriptor for AlarmConfirmationModel);
        v64 = v70;
        v65 = v77;
        sub_2692C7CC0();
        (*(v78 + 8))(v40, v65);
        (*(v83 + 8))(v18, v84);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v66 = v64;
LABEL_21:
        v57 = v71;
        sub_269296A40(v66, v71, type metadata accessor for SiriAlarmSnippetModels);
        goto LABEL_22;
      }
    }

    else
    {
      v88 = 0;
      sub_269296BA4();
      v53 = v72;
      sub_2692C7C80();
      if (!v53)
      {
        sub_2692974EC();
        v54 = v73;
        sub_2692C7CC0();
        (*(v74 + 8))(v37, v54);
        (*(v83 + 8))(v18, v41);
        swift_unknownObjectRelease();
        v55 = v68;
        *v68 = v87;
        swift_storeEnumTagMultiPayload();
        v56 = v55;
        v57 = v71;
        sub_269296A40(v56, v71, type metadata accessor for SiriAlarmSnippetModels);
        v58 = v39;
LABEL_22:
        sub_269296A40(v57, v58, type metadata accessor for SiriAlarmSnippetModels);
        return __swift_destroy_boxed_opaque_existential_1Tm(v86);
      }
    }

LABEL_16:
    (*(v83 + 8))(v18, v41);
    goto LABEL_17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v86);
}

unint64_t sub_2692974EC()
{
  result = qword_280302E90;
  if (!qword_280302E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302E90);
  }

  return result;
}

uint64_t AlarmSnippetModel.alarms.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2692975F4()
{
  sub_2692C7DE0();
  MEMORY[0x26D636320](0);
  return sub_2692C7E00();
}

uint64_t sub_269297638(uint64_t a1)
{
  sub_2692C7DE0();
  MEMORY[0x26D636320](0);
  return sub_2692C7E00();
}

uint64_t sub_26929768C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D72616C61 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2692C7D60();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_269297710(uint64_t a1)
{
  v2 = sub_269297934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26929774C(uint64_t a1)
{
  v2 = sub_269297934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlarmSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302E98, &qword_2692C9A38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269297934();

  sub_2692C7E20();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EA8, &qword_2692C9A40);
  sub_269297B60(&qword_280302EB0, &qword_280302EB8, &protocol conformance descriptor for SiriAlarmSnippetModel, MEMORY[0x277D83948]);
  sub_2692C7D10();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_269297934()
{
  result = qword_280302EA0;
  if (!qword_280302EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302EA0);
  }

  return result;
}

uint64_t AlarmSnippetModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EC0, &qword_2692C9A48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269297934();
  sub_2692C7E10();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EA8, &qword_2692C9A40);
    sub_269297B60(&qword_280302EC8, &qword_280302ED0, &protocol conformance descriptor for SiriAlarmSnippetModel, MEMORY[0x277D83978]);
    sub_2692C7CC0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_269297B60(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302EA8, &qword_2692C9A40);
    sub_269296AFC(a2, type metadata accessor for SiriAlarmSnippetModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriAlarmSnippetModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SiriAlarmSnippetModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SiriAlarmSnippetModel.isSleepAlarm.getter()
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  sub_2692C7540();
  return v1;
}

void *sub_269297D08@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  result = sub_2692C7540();
  *a1 = v3;
  return result;
}

uint64_t sub_269297D70(char *a1)
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  return sub_2692C7550();
}

uint64_t SiriAlarmSnippetModel.isSleepAlarm.setter(char a1)
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  return sub_2692C7550();
}

uint64_t (*SiriAlarmSnippetModel.isSleepAlarm.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t SiriAlarmSnippetModel.formattedTimeString.getter()
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  sub_2692C7540();
  return v1;
}

void *sub_269297F18@<X0>(void *a1@<X8>)
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  result = sub_2692C7540();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_269297F80(void *a1)
{
  type metadata accessor for SiriAlarmSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t SiriAlarmSnippetModel.formattedTimeString.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t (*SiriAlarmSnippetModel.formattedTimeString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

void *SiriAlarmSnippetModel.alarmDate.getter()
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  return sub_2692C7540();
}

void *sub_269298138()
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  return sub_2692C7540();
}

uint64_t sub_269298190(uint64_t a1)
{
  v2 = sub_2692C73E0();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2);
  v11(v7, v10, v2);
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  sub_2692C7550();
  return (*(v3 + 8))(v10, v2);
}

uint64_t SiriAlarmSnippetModel.alarmDate.setter(uint64_t a1)
{
  v2 = sub_2692C73E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  sub_2692C7550();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SiriAlarmSnippetModel.alarmDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t SiriAlarmSnippetModel.enabled.getter()
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  sub_2692C7540();
  return v1;
}

void *sub_2692984EC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  result = sub_2692C7540();
  *a1 = v3;
  return result;
}

uint64_t sub_269298554(char *a1)
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  return sub_2692C7550();
}

uint64_t SiriAlarmSnippetModel.enabled.setter(char a1)
{
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  return sub_2692C7550();
}

uint64_t (*SiriAlarmSnippetModel.enabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAlarmSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t SiriAlarmSnippetModel.labelForSnippetWithRecurrence.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 36));

  return v1;
}

uint64_t SiriAlarmSnippetModel.labelForSnippetWithRecurrence.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmSnippetModel.sleepWakeUpLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 40));

  return v1;
}

uint64_t SiriAlarmSnippetModel.sleepWakeUpLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmSnippetModel.sleepDisabledLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 44));

  return v1;
}

uint64_t SiriAlarmSnippetModel.sleepDisabledLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmSnippetModel.nonSpecificDateTimeDescriptive.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 48));

  return v1;
}

uint64_t SiriAlarmSnippetModel.nonSpecificDateTimeDescriptive.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmSnippetModel.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 52);
  v4 = sub_2692C7430();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriAlarmSnippetModel.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriAlarmSnippetModel(0) + 52);
  v4 = sub_2692C7430();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SiriAlarmSnippetModel.punchoutURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 56);

  return sub_269298B6C(v3, a1);
}

uint64_t sub_269298B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriAlarmSnippetModel.punchoutURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SiriAlarmSnippetModel(0) + 56);

  return sub_269298C20(a1, v3);
}

uint64_t sub_269298C20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SiriAlarmSnippetModel.init(id:isSleepAlarm:formattedTimeString:alarmDate:enabled:labelForSnippetWithRecurrence:sleepWakeUpLabel:sleepDisabledLabel:nonSpecificDateTimeDescriptive:locale:punchoutURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v53 = a7;
  v49 = a5;
  v50 = a6;
  v48 = a4;
  v61 = a17;
  v62 = a18;
  v59 = a8;
  v60 = a16;
  v57 = a14;
  v58 = a15;
  v55 = a12;
  v56 = a13;
  v54 = a11;
  v52 = a10;
  v22 = sub_2692C73E0();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v48 - v29;
  v31 = type metadata accessor for SiriAlarmSnippetModel(0);
  v32 = v31[14];
  v51 = v32;
  v33 = sub_2692C7360();
  (*(*(v33 - 8) + 56))(&a9[v32], 1, 1, v33);
  *a9 = a1;
  *(a9 + 1) = a2;
  LOBYTE(v63) = a3;
  sub_2692C7520();
  v63 = v48;
  v64 = v49;
  sub_2692C7520();
  v34 = *(v23 + 16);
  v35 = v50;
  v34(v30, v50, v22);
  v34(v27, v30, v22);
  sub_2692C7520();
  v36 = *(v23 + 8);
  v36(v30, v22);
  LOBYTE(v63) = v53;
  sub_2692C7520();
  v36(v35, v22);
  v37 = &a9[v31[9]];
  v38 = v52;
  *v37 = v59;
  *(v37 + 1) = v38;
  v39 = &a9[v31[10]];
  v40 = v55;
  *v39 = v54;
  *(v39 + 1) = v40;
  v41 = &a9[v31[11]];
  v42 = v57;
  *v41 = v56;
  *(v41 + 1) = v42;
  v43 = &a9[v31[12]];
  v44 = v60;
  *v43 = v58;
  *(v43 + 1) = v44;
  v45 = v31[13];
  v46 = sub_2692C7430();
  (*(*(v46 - 8) + 32))(&a9[v45], v61, v46);
  return sub_269298C20(v62, &a9[v51]);
}

uint64_t sub_269298FC4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0xD000000000000013;
    v8 = 0x7461446D72616C61;
    if (a1 != 3)
    {
      v8 = 0x64656C62616E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x417065656C537369;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD00000000000001ELL;
    v2 = 0x656C61636F6CLL;
    if (a1 != 9)
    {
      v2 = 0x74756F68636E7570;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001DLL;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_269299144@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26929F08C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_269299178(uint64_t a1)
{
  v2 = sub_269299674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2692991B4(uint64_t a1)
{
  v2 = sub_269299674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAlarmSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EF0, &qword_2692C9A70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269299674();
  sub_2692C7E20();
  v21 = 0;
  sub_2692C7D00();
  if (!v1)
  {
    v8 = type metadata accessor for SiriAlarmSnippetModel(0);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
    sub_26929A330(&qword_280302F00, MEMORY[0x277D637D0]);
    sub_2692C7D10();
    v10 = v8;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
    sub_2692996C8(&qword_280302F08, MEMORY[0x277D637D0]);
    sub_2692C7D10();
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
    sub_26929A3A0(&qword_280302F10, MEMORY[0x277D637D0]);
    sub_2692C7D10();
    v17 = 4;
    sub_2692C7D10();
    v16 = 5;
    sub_2692C7D00();
    v15 = 6;
    sub_2692C7D00();
    v14 = 7;
    sub_2692C7D00();
    v13 = 8;
    sub_2692C7D00();
    v12 = 9;
    sub_2692C7430();
    sub_269296AFC(&qword_280302F28, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_2692C7D10();
    v11 = 10;
    sub_2692C7360();
    sub_269296AFC(&qword_280302F30, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_2692C7CF0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_269299674()
{
  result = qword_280302EF8;
  if (!qword_280302EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302EF8);
  }

  return result;
}

uint64_t sub_2692996C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302EE0, &qword_2692C9A58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriAlarmSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C50, &unk_2692C96A0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v71 = v64 - v5;
  v6 = sub_2692C7430();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v72 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v9);
  v73 = v64 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v11);
  v82 = v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302ED8, &qword_2692C9A50);
  v80 = *(v13 - 8);
  v81 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v64 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302F38, &qword_2692C9A78);
  v83 = *(v21 - 8);
  v84 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = v64 - v23;
  v25 = type metadata accessor for SiriAlarmSnippetModel(0);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = (v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v27 + 56);
  v31 = sub_2692C7360();
  v32 = *(*(v31 - 8) + 56);
  v87 = v30;
  v88 = v29;
  v32(v29 + v30, 1, 1, v31);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269299674();
  v85 = v24;
  v33 = v86;
  sub_2692C7E10();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_269294D94(v88 + v87);
  }

  else
  {
    v34 = v20;
    v35 = v82;
    v68 = v17;
    v67 = v31;
    v86 = a1;
    v69 = v25;
    v99 = 0;
    v36 = sub_2692C7CB0();
    v37 = v88;
    *v88 = v36;
    v37[1] = v38;
    v98 = 1;
    v39 = sub_26929A330(&qword_280302F40, MEMORY[0x277D637E0]);
    v40 = v34;
    v41 = v81;
    sub_2692C7CC0();
    v66 = v39;
    v42 = v37 + v69[5];
    v65 = *(v80 + 32);
    v65(v42, v40, v41);
    v97 = 2;
    sub_2692996C8(&qword_280302F48, MEMORY[0x277D637E0]);
    v43 = v35;
    v44 = v77;
    sub_2692C7CC0();
    v64[1] = 0;
    v45 = v69;
    (*(v75 + 32))(v88 + v69[6], v43, v44);
    v96 = 3;
    sub_26929A3A0(&qword_280302F50, MEMORY[0x277D637E0]);
    v46 = v73;
    v47 = v76;
    sub_2692C7CC0();
    v48 = v88;
    (*(v74 + 32))(v88 + v45[7], v46, v47);
    v95 = 4;
    v49 = v68;
    sub_2692C7CC0();
    v65(v48 + v45[8], v49, v41);
    v94 = 5;
    v50 = sub_2692C7CB0();
    v51 = (v48 + v45[9]);
    *v51 = v50;
    v51[1] = v52;
    v93 = 6;
    v53 = sub_2692C7CB0();
    v54 = (v48 + v45[10]);
    *v54 = v53;
    v54[1] = v55;
    v92 = 7;
    v56 = sub_2692C7CB0();
    LODWORD(v82) = 1;
    v57 = (v48 + v45[11]);
    *v57 = v56;
    v57[1] = v58;
    v91[0] = 8;
    v59 = sub_2692C7CB0();
    v60 = (v48 + v45[12]);
    *v60 = v59;
    v60[1] = v61;
    v90 = 9;
    sub_269296AFC(&qword_280302F58, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
    sub_2692C7CC0();
    (*(v78 + 32))(v88 + v69[13], v72, v79);
    v89 = 10;
    sub_269296AFC(&qword_280302F60, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_2692C7CA0();
    (*(v83 + 8))(v85, v84);
    v62 = v88;
    sub_269298C20(v71, v88 + v87);
    sub_26929A474(v62, v70, type metadata accessor for SiriAlarmSnippetModel);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    return sub_269296B44(v62, type metadata accessor for SiriAlarmSnippetModel);
  }
}

uint64_t sub_26929A330(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302ED8, &qword_2692C9A50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26929A3A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302EE8, &unk_2692C9A60);
    v4 = MEMORY[0x277CC9578];
    sub_269296AFC(&qword_280302F18, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_269296AFC(&qword_280302F20, v4, MEMORY[0x277CC9580]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26929A474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t AlarmSelectorModel.alarms.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*AlarmSelectorModel.header.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AlarmSelectorModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929A62C;
}

uint64_t AlarmSelectorModel.init(alarms:header:)@<X0>(uint64_t a1@<X0>, void *a4@<X8>)
{
  *a4 = a1;
  type metadata accessor for AlarmSelectorModel(0);
  return sub_2692C7520();
}

uint64_t sub_26929A6A8()
{
  v1 = *v0;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v1);
  return sub_2692C7E00();
}

uint64_t sub_26929A6F0(uint64_t a1)
{
  v2 = *v1;
  sub_2692C7DE0();
  MEMORY[0x26D636320](v2);
  return sub_2692C7E00();
}

uint64_t sub_26929A734()
{
  if (*v0)
  {
    return 0x726564616568;
  }

  else
  {
    return 0x736D72616C61;
  }
}

uint64_t sub_26929A760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736D72616C61 && a2 == 0xE600000000000000;
  if (v6 || (sub_2692C7D60() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2692C7D60();

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

uint64_t sub_26929A840(uint64_t a1)
{
  v2 = sub_26929AACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26929A87C(uint64_t a1)
{
  v2 = sub_26929AACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlarmSelectorModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302F68, &qword_2692C9A80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929AACC();
  sub_2692C7E20();
  v12 = *v3;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302F78, &qword_2692C9A88);
  sub_26929AB20(&qword_280302F80, &qword_280302F88, &protocol conformance descriptor for SiriAlarmItemModel, MEMORY[0x277D83948]);
  sub_2692C7D10();
  if (!v2)
  {
    type metadata accessor for AlarmSelectorModel(0);
    v11[6] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
    sub_2692996C8(&qword_280302F08, MEMORY[0x277D637D0]);
    sub_2692C7D10();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26929AACC()
{
  result = qword_280302F70;
  if (!qword_280302F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302F70);
  }

  return result;
}

uint64_t sub_26929AB20(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280302F78, &qword_2692C9A88);
    sub_269296AFC(a2, type metadata accessor for SiriAlarmItemModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26929ABDC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlarmSelectorModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v4);
  v6 = &v21 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302F90, &qword_2692C9A90);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AlarmSelectorModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929AACC();
  sub_2692C7E10();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = a1;
  v14 = v13;
  v16 = v27;
  v15 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302F78, &qword_2692C9A88);
  v31 = 0;
  sub_26929AB20(&qword_280302F98, &qword_280302FA0, &protocol conformance descriptor for SiriAlarmItemModel, MEMORY[0x277D83978]);
  v17 = v29;
  sub_2692C7CC0();
  v22 = v14;
  v23 = v32;
  *v14 = v32;
  v30 = 1;
  sub_2692996C8(&qword_280302F48, MEMORY[0x277D637E0]);
  sub_2692C7CC0();
  (*(v16 + 8))(v9, v17);
  v18 = *(v10 + 20);
  v19 = v22;
  (*(v25 + 32))(&v22[v18], v6, v15);
  sub_26929A474(v19, v26, type metadata accessor for AlarmSelectorModel);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return sub_269296B44(v19, type metadata accessor for AlarmSelectorModel);
}

uint64_t sub_26929B014(uint64_t (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  sub_2692C7540();
  return v2;
}

void *sub_26929B070@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  result = sub_2692C7540();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_26929B0DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  (a5)(0, a2, a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t sub_26929B168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t (*SiriAlarmItemModel.formattedTimeString.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAlarmItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

void *SiriAlarmItemModel.alarmDate.getter()
{
  type metadata accessor for SiriAlarmItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  return sub_2692C7540();
}

void *sub_26929B2B4()
{
  type metadata accessor for SiriAlarmItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  return sub_2692C7540();
}

uint64_t sub_26929B30C(uint64_t a1)
{
  v2 = sub_2692C73E0();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  v11 = *(v3 + 16);
  v11(&v13 - v9, a1, v2);
  v11(v7, v10, v2);
  type metadata accessor for SiriAlarmItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  sub_2692C7550();
  return (*(v3 + 8))(v10, v2);
}

uint64_t SiriAlarmItemModel.alarmDate.setter(uint64_t a1)
{
  v2 = sub_2692C73E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  type metadata accessor for SiriAlarmItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  sub_2692C7550();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SiriAlarmItemModel.alarmDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAlarmItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t SiriAlarmItemModel.labelForSnippetWithRecurrence.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriAlarmItemModel(0) + 28));

  return v1;
}

uint64_t SiriAlarmItemModel.labelForSnippetWithRecurrence.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmItemModel(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmItemModel.invocationVerbValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriAlarmItemModel(0) + 32));

  return v1;
}

uint64_t SiriAlarmItemModel.invocationVerbValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAlarmItemModel(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAlarmItemModel.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriAlarmItemModel(0) + 36);
  v4 = sub_2692C7430();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriAlarmItemModel.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriAlarmItemModel(0) + 36);
  v4 = sub_2692C7430();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SiriAlarmItemModel.init(id:formattedTimeString:alarmDate:labelForSnippetWithRecurrence:invocationVerbValue:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v39 = a7;
  v40 = a8;
  v41 = a11;
  v37 = a10;
  v38 = a6;
  v17 = sub_2692C73E0();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v36 - v24;
  *a9 = a1;
  *(a9 + 1) = a2;
  v26 = type metadata accessor for SiriAlarmItemModel(0);
  v42 = a3;
  v43 = a4;
  sub_2692C7520();
  v27 = *(v18 + 16);
  v27(v25, a5, v17);
  v27(v22, v25, v17);
  sub_2692C7520();
  v28 = *(v18 + 8);
  v28(a5, v17);
  v28(v25, v17);
  v29 = &a9[v26[7]];
  v30 = v39;
  *v29 = v38;
  *(v29 + 1) = v30;
  v31 = &a9[v26[8]];
  v32 = v37;
  *v31 = v40;
  *(v31 + 1) = v32;
  v33 = v26[9];
  v34 = sub_2692C7430();
  return (*(*(v34 - 8) + 32))(&a9[v33], v41, v34);
}

unint64_t sub_26929BB00()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD00000000000001DLL;
  v4 = 0xD000000000000013;
  if (v1 != 4)
  {
    v4 = 0x656C61636F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x7461446D72616C61;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26929BBC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26929F40C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26929BBF4(uint64_t a1)
{
  v2 = sub_26929BF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26929BC30(uint64_t a1)
{
  v2 = sub_26929BF60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAlarmItemModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302FA8, &qword_2692C9A98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929BF60();
  sub_2692C7E20();
  v9[15] = 0;
  sub_2692C7D00();
  if (!v1)
  {
    type metadata accessor for SiriAlarmItemModel(0);
    v9[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
    sub_2692996C8(&qword_280302F08, MEMORY[0x277D637D0]);
    sub_2692C7D10();
    v9[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
    sub_26929A3A0(&qword_280302F10, MEMORY[0x277D637D0]);
    sub_2692C7D10();
    v9[12] = 3;
    sub_2692C7D00();
    v9[11] = 4;
    sub_2692C7D00();
    v9[10] = 5;
    sub_2692C7430();
    sub_269296AFC(&qword_280302F28, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_2692C7D10();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26929BF60()
{
  result = qword_280302FB0;
  if (!qword_280302FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302FB0);
  }

  return result;
}

uint64_t SiriAlarmItemModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = sub_2692C7430();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v3);
  v41 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE8, &unk_2692C9A60);
  v42 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v5);
  v44 = &v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v36 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302FB8, &qword_2692C9AA0);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for SiriAlarmItemModel(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929BF60();
  v47 = v13;
  v18 = v49;
  sub_2692C7E10();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v44;
  v49 = v14;
  v37 = v17;
  v20 = v46;
  v55 = 0;
  v21 = sub_2692C7CB0();
  v22 = v37;
  *v37 = v21;
  v22[1] = v23;
  v54 = 1;
  sub_2692996C8(&qword_280302F48, MEMORY[0x277D637E0]);
  sub_2692C7CC0();
  (*(v43 + 32))(v37 + v49[5], v10, v7);
  v53 = 2;
  sub_26929A3A0(&qword_280302F50, MEMORY[0x277D637E0]);
  v24 = v20;
  sub_2692C7CC0();
  v25 = v49;
  (*(v42 + 32))(v37 + v49[6], v19, v24);
  v52 = 3;
  v26 = sub_2692C7CB0();
  v27 = (v37 + v25[7]);
  *v27 = v26;
  v27[1] = v28;
  v51 = 4;
  v29 = sub_2692C7CB0();
  v30 = (v37 + v25[8]);
  *v30 = v29;
  v30[1] = v31;
  v50 = 5;
  sub_269296AFC(&qword_280302F58, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
  v32 = v40;
  v33 = v41;
  sub_2692C7CC0();
  (*(v45 + 8))(v47, v48);
  v34 = v37;
  (*(v38 + 32))(v37 + v25[9], v33, v32);
  sub_26929A474(v34, v39, type metadata accessor for SiriAlarmItemModel);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_269296B44(v34, type metadata accessor for SiriAlarmItemModel);
}

uint64_t AlarmConfirmationModel.yesLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  sub_2692C7540();
  return v1;
}

uint64_t sub_26929C718(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t (*AlarmConfirmationModel.yesLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t (*AlarmConfirmationModel.noLabel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AlarmConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

uint64_t AlarmConfirmationModel.invocationVerbValue.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlarmConfirmationModel(0) + 24));

  return v1;
}

uint64_t AlarmConfirmationModel.invocationVerbValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmConfirmationModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AlarmConfirmationModel.text.getter()
{
  type metadata accessor for AlarmConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  sub_2692C7540();
  return v1;
}

void *sub_26929CA28@<X0>(void *a1@<X8>)
{
  type metadata accessor for AlarmConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  result = sub_2692C7540();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26929CA90(void *a1)
{
  type metadata accessor for AlarmConfirmationModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t AlarmConfirmationModel.text.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AlarmConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  return sub_2692C7550();
}

uint64_t (*AlarmConfirmationModel.text.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for AlarmConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  *(v3 + 32) = sub_2692C7530();
  return sub_26929F7A4;
}

void sub_26929CBF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t AlarmConfirmationModel.init(yesLabel:noLabel:invocationVerbValue:text:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  sub_2692C7520();
  v12 = type metadata accessor for AlarmConfirmationModel(0);
  sub_2692C7520();
  v13 = (a9 + *(v12 + 24));
  *v13 = a5;
  v13[1] = a6;
  return sub_2692C7520();
}

unint64_t sub_26929CD00()
{
  v1 = 0x6C6562614C736579;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 1954047348;
  }

  if (*v0)
  {
    v1 = 0x6C6562614C6F6ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26929CD78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26929F610(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26929CDAC(uint64_t a1)
{
  v2 = sub_26929D04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26929CDE8(uint64_t a1)
{
  v2 = sub_26929D04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AlarmConfirmationModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302FC0, &qword_2692C9AA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929D04C();
  sub_2692C7E20();
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  sub_2692996C8(&qword_280302F08, MEMORY[0x277D637D0]);
  sub_2692C7D10();
  if (!v1)
  {
    type metadata accessor for AlarmConfirmationModel(0);
    v12 = 1;
    sub_2692C7D10();
    v11 = 2;
    sub_2692C7D00();
    v10 = 3;
    sub_2692C7D10();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26929D04C()
{
  result = qword_280302FC8;
  if (!qword_280302FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280302FC8);
  }

  return result;
}

uint64_t AlarmConfirmationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302EE0, &qword_2692C9A58);
  v42 = *(v44 - 8);
  v4 = MEMORY[0x28223BE20](v44, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v43 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302FD0, &qword_2692C9AB0);
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for AlarmConfirmationModel(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26929D04C();
  v47 = v16;
  v21 = v48;
  sub_2692C7E10();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v10;
  v38 = v6;
  v39 = v17;
  v48 = a1;
  v40 = v20;
  v52 = 0;
  v23 = sub_2692996C8(&qword_280302F48, MEMORY[0x277D637E0]);
  v25 = v43;
  v24 = v44;
  v26 = v46;
  sub_2692C7CC0();
  v27 = *(v42 + 32);
  v27(v40, v25, v24);
  v51 = 1;
  v28 = v22;
  sub_2692C7CC0();
  v37 = v23;
  v29 = v40;
  v27(&v40[*(v39 + 20)], v28, v24);
  v50 = 2;
  v43 = 0;
  v30 = sub_2692C7CB0();
  v31 = v27;
  v32 = v38;
  v33 = v39;
  v34 = (v29 + *(v39 + 24));
  *v34 = v30;
  v34[1] = v35;
  v49 = 3;
  sub_2692C7CC0();
  (*(v45 + 8))(v47, v26);
  v31(v29 + *(v33 + 28), v32, v24);
  sub_26929A474(v29, v41, type metadata accessor for AlarmConfirmationModel);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  return sub_269296B44(v29, type metadata accessor for AlarmConfirmationModel);
}

uint64_t sub_26929D918(uint64_t a1)
{
  result = type metadata accessor for AlarmSelectorModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AlarmConfirmationModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26929D9A4(uint64_t *a1, int a2)
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

uint64_t sub_26929D9EC(uint64_t result, int a2, int a3)
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

void sub_26929DA60(uint64_t a1)
{
  sub_26929DBD8(319, &qword_280303008, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_26929DBD8(319, &qword_280303010, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_26929DC24(319, &qword_280303018, MEMORY[0x277CC9578], MEMORY[0x277D637C8]);
      if (v3 <= 0x3F)
      {
        sub_2692C7430();
        if (v4 <= 0x3F)
        {
          sub_26929DC24(319, &qword_280303020, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26929DBD8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2692C7560();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26929DC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_26929DCB0(uint64_t a1)
{
  sub_26929DC24(319, &qword_280303038, type metadata accessor for SiriAlarmItemModel, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26929DBD8(319, &qword_280303010, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26929DD9C(uint64_t a1)
{
  sub_26929DBD8(319, &qword_280303010, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26929DC24(319, &qword_280303018, MEMORY[0x277CC9578], MEMORY[0x277D637C8]);
    if (v2 <= 0x3F)
    {
      sub_2692C7430();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26929DEB4(uint64_t a1)
{
  sub_26929DBD8(319, &qword_280303010, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for AlarmConfirmationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmConfirmationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAlarmItemModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriAlarmItemModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmSelectorModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmSelectorModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAlarmSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriAlarmSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAlarmSnippetModels.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriAlarmSnippetModels.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26929E618()
{
  result = qword_280303060;
  if (!qword_280303060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303060);
  }

  return result;
}

unint64_t sub_26929E670()
{
  result = qword_280303068;
  if (!qword_280303068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303068);
  }

  return result;
}

unint64_t sub_26929E6C8()
{
  result = qword_280303070;
  if (!qword_280303070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303070);
  }

  return result;
}

unint64_t sub_26929E720()
{
  result = qword_280303078;
  if (!qword_280303078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303078);
  }

  return result;
}

unint64_t sub_26929E778()
{
  result = qword_280303080;
  if (!qword_280303080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303080);
  }

  return result;
}

unint64_t sub_26929E7D0()
{
  result = qword_280303088;
  if (!qword_280303088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303088);
  }

  return result;
}

unint64_t sub_26929E828()
{
  result = qword_280303090;
  if (!qword_280303090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303090);
  }

  return result;
}

unint64_t sub_26929E880()
{
  result = qword_280303098;
  if (!qword_280303098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303098);
  }

  return result;
}

unint64_t sub_26929E8D8()
{
  result = qword_2803030A0;
  if (!qword_2803030A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030A0);
  }

  return result;
}

unint64_t sub_26929E930()
{
  result = qword_2803030A8;
  if (!qword_2803030A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030A8);
  }

  return result;
}

unint64_t sub_26929E988()
{
  result = qword_2803030B0;
  if (!qword_2803030B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030B0);
  }

  return result;
}

unint64_t sub_26929E9E0()
{
  result = qword_2803030B8;
  if (!qword_2803030B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030B8);
  }

  return result;
}

unint64_t sub_26929EA38()
{
  result = qword_2803030C0;
  if (!qword_2803030C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030C0);
  }

  return result;
}

unint64_t sub_26929EA90()
{
  result = qword_2803030C8;
  if (!qword_2803030C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030C8);
  }

  return result;
}

unint64_t sub_26929EAE8()
{
  result = qword_2803030D0;
  if (!qword_2803030D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030D0);
  }

  return result;
}

unint64_t sub_26929EB40()
{
  result = qword_2803030D8;
  if (!qword_2803030D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030D8);
  }

  return result;
}

unint64_t sub_26929EB98()
{
  result = qword_2803030E0;
  if (!qword_2803030E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030E0);
  }

  return result;
}

unint64_t sub_26929EBF0()
{
  result = qword_2803030E8;
  if (!qword_2803030E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030E8);
  }

  return result;
}

unint64_t sub_26929EC48()
{
  result = qword_2803030F0;
  if (!qword_2803030F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030F0);
  }

  return result;
}

unint64_t sub_26929ECA0()
{
  result = qword_2803030F8;
  if (!qword_2803030F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803030F8);
  }

  return result;
}

unint64_t sub_26929ECF8()
{
  result = qword_280303100;
  if (!qword_280303100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303100);
  }

  return result;
}

unint64_t sub_26929ED50()
{
  result = qword_280303108;
  if (!qword_280303108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303108);
  }

  return result;
}

unint64_t sub_26929EDA8()
{
  result = qword_280303110;
  if (!qword_280303110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303110);
  }

  return result;
}

unint64_t sub_26929EE00()
{
  result = qword_280303118;
  if (!qword_280303118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303118);
  }

  return result;
}

unint64_t sub_26929EE58()
{
  result = qword_280303120;
  if (!qword_280303120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303120);
  }

  return result;
}

unint64_t sub_26929EEB0()
{
  result = qword_280303128;
  if (!qword_280303128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303128);
  }

  return result;
}

unint64_t sub_26929EF08()
{
  result = qword_280303130;
  if (!qword_280303130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280303130);
  }

  return result;
}

uint64_t sub_26929EF5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C754D6D72616C61 && a2 == 0xEA00000000006974;
  if (v4 || (sub_2692C7D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65536D72616C61 && a2 == 0xED0000726F746365 || (sub_2692C7D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002692CD020 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2692C7D60();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26929F08C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2692C7D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x417065656C537369 && a2 == 0xEC0000006D72616CLL || (sub_2692C7D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002692CD040 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461446D72616C61 && a2 == 0xE900000000000065 || (sub_2692C7D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_2692C7D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002692CD060 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002692CD080 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002692CD0A0 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000002692CD0C0 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_2692C7D60() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74756F68636E7570 && a2 == 0xEB000000004C5255)
  {

    return 10;
  }

  else
  {
    v6 = sub_2692C7D60();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_26929F40C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2692C7D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002692CD040 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446D72616C61 && a2 == 0xE900000000000065 || (sub_2692C7D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002692CD060 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002692CD0E0 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_2692C7D60();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_26929F610(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562614C736579 && a2 == 0xE800000000000000;
  if (v4 || (sub_2692C7D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562614C6F6ELL && a2 == 0xE700000000000000 || (sub_2692C7D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002692CD0E0 == a2 || (sub_2692C7D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2692C7D60();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_26929F7C0(char a1)
{
  result = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  if (a1)
  {
    type metadata accessor for AlarmRepeatSchedule();
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = sub_2692C7820();
    v5 = [v3 initWithIdentifier:0 displayString:v4];

    [v5 setRepeatSchedule_];
    v6 = v5;
    MEMORY[0x26D635E30]();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2692C7950();
    }

    sub_2692C7960();

    result = v31;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  type metadata accessor for AlarmRepeatSchedule();
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_2692C7820();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  [v9 setRepeatSchedule_];
  v10 = v9;
  MEMORY[0x26D635E30]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2692C7950();
  }

  sub_2692C7960();

  result = v31;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  type metadata accessor for AlarmRepeatSchedule();
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_2692C7820();
  v13 = [v11 initWithIdentifier:0 displayString:v12];

  [v13 setRepeatSchedule_];
  v14 = v13;
  MEMORY[0x26D635E30]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2692C7950();
  }

  sub_2692C7960();

  result = v31;
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  type metadata accessor for AlarmRepeatSchedule();
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = sub_2692C7820();
  v17 = [v15 initWithIdentifier:0 displayString:v16];

  [v17 setRepeatSchedule_];
  v18 = v17;
  MEMORY[0x26D635E30]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2692C7950();
  }

  sub_2692C7960();

  result = v31;
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  type metadata accessor for AlarmRepeatSchedule();
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_2692C7820();
  v21 = [v19 initWithIdentifier:0 displayString:v20];

  [v21 setRepeatSchedule_];
  v22 = v21;
  MEMORY[0x26D635E30]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2692C7950();
  }

  sub_2692C7960();

  result = v31;
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_24:
  type metadata accessor for AlarmRepeatSchedule();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = sub_2692C7820();
  v25 = [v23 initWithIdentifier:0 displayString:v24];

  [v25 setRepeatSchedule_];
  v26 = v25;
  MEMORY[0x26D635E30]();
  if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2692C7950();
  }

  sub_2692C7960();

  result = v31;
  if ((a1 & 0x40) != 0)
  {
LABEL_27:
    type metadata accessor for AlarmRepeatSchedule();
    v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v28 = sub_2692C7820();
    v29 = [v27 initWithIdentifier:0 displayString:v28];

    [v29 setRepeatSchedule_];
    v30 = v29;
    MEMORY[0x26D635E30]();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2692C7950();
    }

    sub_2692C7960();

    return v31;
  }

  return result;
}

uint64_t static AlarmIntentHandlerUtils.getFiringAlarms(alarmManager:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_280302AF8 != -1)
  {
    swift_once();
  }

  v6 = sub_2692C77C0();
  __swift_project_value_buffer(v6, qword_280303138);
  v7 = sub_2692C77B0();
  v8 = sub_2692C7A00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_269270000, v7, v8, "Trying to get local firing alarm through alarmSearch.", v9, 2u);
    MEMORY[0x26D6368E0](v9, -1, -1);
  }

  v10 = objc_allocWithZone(type metadata accessor for AlarmSearch());
  v11 = sub_2692C7820();
  v12 = [v10 initWithIdentifier:0 displayString:v11 pronunciationHint:0];

  [v12 setAlarmSearchStatus_];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = *(v14 + 56);
  v17 = v12;

  v16(v12, sub_2692A1438, v15, v13, v14);
}

uint64_t sub_26929FF04()
{
  v0 = sub_2692C77C0();
  __swift_allocate_value_buffer(v0, qword_280303138);
  v1 = __swift_project_value_buffer(v0, qword_280303138);
  if (qword_280302B40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280303368);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *static AlarmIntentHandlerUtils.getAllAlarms(fromSearchResponse:)(unint64_t *a1)
{
  v1 = *a1;
  v2 = qword_280302AF8;
  if (a1[1])
  {
    if (qword_280302AF8 != -1)
    {
      swift_once();
    }

    v3 = sub_2692C77C0();
    __swift_project_value_buffer(v3, qword_280303138);
    v4 = sub_2692C77B0();
    v5 = sub_2692C7A00();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37 = v7;
      *v6 = 136315138;
      v8 = sub_2692C7840();
      v10 = sub_26927C4DC(v8, v9, &v37);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_269270000, v4, v5, "Can NOT find any alarms, error: %s.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D6368E0](v7, -1, -1);
      MEMORY[0x26D6368E0](v6, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  if (v2 != -1)
  {
    swift_once();
  }

  v11 = sub_2692C77C0();
  __swift_project_value_buffer(v11, qword_280303138);

  v12 = sub_2692C77B0();
  v13 = sub_2692C7A00();
  sub_2692743E4(v1, 0);
  if (!os_log_type_enabled(v12, v13))
  {
LABEL_26:

    return v1;
  }

  v14 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v37 = v35;
  *v14 = 136315138;
  if (v1 >> 62)
  {
    v15 = sub_2692C7C60();
  }

  else
  {
    v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
LABEL_25:
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280302C28, &unk_2692C9690);
    v30 = MEMORY[0x26D635E70](v16, v29);
    v32 = v31;

    v33 = sub_26927C4DC(v30, v32, &v37);

    *(v14 + 4) = v33;
    _os_log_impl(&dword_269270000, v12, v13, "Found all alarms: %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x26D6368E0](v35, -1, -1);
    MEMORY[0x26D6368E0](v14, -1, -1);
    goto LABEL_26;
  }

  v34 = v14;
  v36 = MEMORY[0x277D84F90];
  result = sub_2692A0A8C(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v16 = v36;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D6360D0](v18, v1);
      }

      else
      {
        v19 = *(v1 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = [v19 identifier];
      if (v21)
      {
        v22 = v21;
        v23 = sub_2692C7830();
        v25 = v24;
      }

      else
      {

        v23 = 0;
        v25 = 0;
      }

      v27 = *(v36 + 16);
      v26 = *(v36 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2692A0A8C((v26 > 1), v27 + 1, 1);
      }

      ++v18;
      *(v36 + 16) = v27 + 1;
      v28 = v36 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (v15 != v18);
    v14 = v34;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

id static AlarmIntentHandlerUtils.selectIntentHandlers(from:)(void *a1)
{
  if (qword_280302AF8 != -1)
  {
    swift_once();
  }

  v2 = sub_2692C77C0();
  __swift_project_value_buffer(v2, qword_280303138);
  v3 = a1;
  v4 = sub_2692C77B0();
  v5 = sub_2692C7A00();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_269270000, v4, v5, "AlarmIntentHandlerUtils selecting intentHandler from: %@", v6, 0xCu);
    sub_2692A14A0(v7);
    MEMORY[0x26D6368E0](v7, -1, -1);
    MEMORY[0x26D6368E0](v6, -1, -1);
  }

  v9 = [v3 _metadata];
  if (qword_280302B28 != -1)
  {
    swift_once();
  }

  sub_269275A6C(&qword_280303238, &v58);
  v10 = type metadata accessor for SiriAlarmManagerImpl(0);
  v11 = swift_allocObject();
  sub_2692C7610();
  sub_2692C74B0();
  v12 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_sleepAlarmManager;
  type metadata accessor for SiriSleepAlarmManager();
  v13 = swift_allocObject();
  *(v11 + v12) = v13;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_osLogObject;
  if (qword_280302B50 != -1)
  {
    swift_once();
  }

  v15 = qword_280303380;
  *(v11 + v14) = qword_280303380;
  sub_269275A30(&v58, v11 + OBJC_IVAR____TtC21SiriTimeAlarmInternal20SiriAlarmManagerImpl_alarmManager);
  type metadata accessor for CreateAlarmIntent();
  if (swift_dynamicCastClass())
  {
    AlarmIntentHandler = type metadata accessor for CreateAlarmIntentHandler();
    v17 = objc_allocWithZone(AlarmIntentHandler);
    v59 = v10;
    v60 = &protocol witness table for SiriAlarmManagerImpl;
    *&v58 = v11;
    *&v17[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject] = v15;
    sub_269275A6C(&v58, &v17[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
    v50.receiver = v17;
    v50.super_class = AlarmIntentHandler;
    v18 = v15;
    v19 = objc_msgSendSuper2(&v50, sel_init);
  }

  else
  {
    type metadata accessor for DeleteAlarmIntent();
    if (swift_dynamicCastClass())
    {
      v20 = type metadata accessor for DeleteAlarmIntentHandler();
      v21 = objc_allocWithZone(v20);
      v59 = v10;
      v60 = &protocol witness table for SiriAlarmManagerImpl;
      *&v58 = v11;
      *&v21[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_osLogObject] = v15;
      sub_269275A6C(&v58, &v21[OBJC_IVAR____TtC21SiriTimeAlarmInternal24DeleteAlarmIntentHandler_siriAlarmManager]);
      v51.receiver = v21;
      v51.super_class = v20;
      v22 = v15;
      v19 = objc_msgSendSuper2(&v51, sel_init);
    }

    else
    {
      type metadata accessor for SearchAlarmIntent();
      if (swift_dynamicCastClass())
      {
        v23 = type metadata accessor for SearchAlarmIntentHandler();
        v24 = objc_allocWithZone(v23);
        v59 = v10;
        v60 = &protocol witness table for SiriAlarmManagerImpl;
        *&v58 = v11;
        *&v24[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_osLogObject] = v15;
        sub_269275A6C(&v58, &v24[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SearchAlarmIntentHandler_siriAlarmManager]);
        v52.receiver = v24;
        v52.super_class = v23;
        v25 = v15;
        v19 = objc_msgSendSuper2(&v52, sel_init);
      }

      else
      {
        type metadata accessor for ChangeAlarmStatusIntent();
        if (swift_dynamicCastClass())
        {
          v26 = type metadata accessor for ChangeAlarmStatusIntentHandler();
          v27 = objc_allocWithZone(v26);
          v59 = v10;
          v60 = &protocol witness table for SiriAlarmManagerImpl;
          *&v58 = v11;
          *&v27[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_osLogObject] = v15;
          sub_269275A6C(&v58, &v27[OBJC_IVAR____TtC21SiriTimeAlarmInternal30ChangeAlarmStatusIntentHandler_siriAlarmManager]);
          v53.receiver = v27;
          v53.super_class = v26;
          v28 = v15;
          v19 = objc_msgSendSuper2(&v53, sel_init);
        }

        else
        {
          type metadata accessor for UpdateAlarmIntent();
          if (swift_dynamicCastClass())
          {
            updated = type metadata accessor for UpdateAlarmIntentHandler();
            v30 = objc_allocWithZone(updated);
            v59 = v10;
            v60 = &protocol witness table for SiriAlarmManagerImpl;
            *&v58 = v11;
            *&v30[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_osLogObject] = v15;
            sub_269275A6C(&v58, &v30[OBJC_IVAR____TtC21SiriTimeAlarmInternal24UpdateAlarmIntentHandler_siriAlarmManager]);
            v54.receiver = v30;
            v54.super_class = updated;
            v31 = v15;
            v19 = objc_msgSendSuper2(&v54, sel_init);
          }

          else
          {
            type metadata accessor for SnoozeAlarmHalIntent();
            if (swift_dynamicCastClass())
            {
              v32 = type metadata accessor for SnoozeAlarmIntentHandler();
              v33 = objc_allocWithZone(v32);
              v59 = v10;
              v60 = &protocol witness table for SiriAlarmManagerImpl;
              *&v58 = v11;
              *&v33[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_osLogObject] = v15;
              sub_269275A6C(&v58, &v33[OBJC_IVAR____TtC21SiriTimeAlarmInternal24SnoozeAlarmIntentHandler_siriAlarmManager]);
              v55.receiver = v33;
              v55.super_class = v32;
              v34 = v15;
              v19 = objc_msgSendSuper2(&v55, sel_init);
            }

            else
            {
              type metadata accessor for DismissAlarmHalIntent();
              if (swift_dynamicCastClass())
              {
                v35 = type metadata accessor for DismissAlarmHalIntentHandler();
                v36 = objc_allocWithZone(v35);
                v59 = v10;
                v60 = &protocol witness table for SiriAlarmManagerImpl;
                *&v58 = v11;
                *&v36[OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_osLogObject] = v15;
                sub_269275A6C(&v58, &v36[OBJC_IVAR____TtC21SiriTimeAlarmInternal28DismissAlarmHalIntentHandler_siriAlarmManager]);
                v56.receiver = v36;
                v56.super_class = v35;
                v37 = v15;
                v19 = objc_msgSendSuper2(&v56, sel_init);
              }

              else
              {
                v38 = v3;
                v39 = v15;
                v40 = sub_2692C77B0();
                v41 = sub_2692C79F0();

                if (os_log_type_enabled(v40, v41))
                {
                  v42 = swift_slowAlloc();
                  v43 = swift_slowAlloc();
                  *v42 = 138412290;
                  *(v42 + 4) = v38;
                  *v43 = v38;
                  v44 = v38;
                  _os_log_impl(&dword_269270000, v40, v41, "Unable to recognize the alarm intent %@. Returning CreateAlarmIntentHandler anyways.", v42, 0xCu);
                  sub_2692A14A0(v43);
                  MEMORY[0x26D6368E0](v43, -1, -1);
                  MEMORY[0x26D6368E0](v42, -1, -1);
                }

                v45 = type metadata accessor for CreateAlarmIntentHandler();
                v46 = objc_allocWithZone(v45);
                v59 = v10;
                v60 = &protocol witness table for SiriAlarmManagerImpl;
                *&v58 = v11;
                *&v46[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_osLogObject] = v39;
                sub_269275A6C(&v58, &v46[OBJC_IVAR____TtC21SiriTimeAlarmInternal24CreateAlarmIntentHandler_siriAlarmManager]);
                v57.receiver = v46;
                v57.super_class = v45;
                v47 = v39;
                v19 = objc_msgSendSuper2(&v57, sel_init);
              }
            }
          }
        }
      }
    }
  }

  v48 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  return v48;
}