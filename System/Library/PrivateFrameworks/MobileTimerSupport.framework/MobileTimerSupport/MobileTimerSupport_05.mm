unint64_t sub_22D7D9CF4()
{
  result = qword_280CD1F10;
  if (!qword_280CD1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD1F10);
  }

  return result;
}

uint64_t sub_22D7D9D48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03620, &qword_22D825540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D7D9DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22D7D9E00()
{
  result = qword_27DA03668;
  if (!qword_27DA03668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03668);
  }

  return result;
}

unint64_t sub_22D7D9E54()
{
  result = qword_27DA03670;
  if (!qword_27DA03670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03670);
  }

  return result;
}

unint64_t sub_22D7D9EA8()
{
  result = qword_27DA03678;
  if (!qword_27DA03678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03678);
  }

  return result;
}

void sub_22D7D9EFC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03738, &qword_22D8257F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_22D7E0CD0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D7DA300;
  aBlock[3] = &block_descriptor_63;
  v10 = _Block_copy(aBlock);

  v11 = [a2 addCompletionBlock_];
  _Block_release(v10);
}

void sub_22D7DA0BC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03728, &qword_22D8257E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_22D7E0C9C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D7DA300;
  aBlock[3] = &block_descriptor_13;
  v10 = _Block_copy(aBlock);

  v11 = [a2 addCompletionBlock_];
  _Block_release(v10);
}

uint64_t sub_22D7DA27C(void *a1, id a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_22D81B4A8();
  }

  else
  {
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_22D81B4B8();
  }
}

uint64_t sub_22D7DA300(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_22D81A198();
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22D7DA4D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(*(v7 - 8) + 16);

  return v8(a4, v4 + v6, v7);
}

uint64_t TimerViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  TimerViewModel.init()();
  return v0;
}

uint64_t TimerViewModel.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036C0, &qword_22D8255D0);
  v84 = *(v2 - 8);
  v85 = v2;
  MEMORY[0x28223BE20](v2);
  v82 = &v55 - v3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036B8, &qword_22D8255C8);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036B0, &qword_22D8255C0);
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v77 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036C8, &qword_22D8255D8);
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v55 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036A8, &qword_22D8255B8);
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v55 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036A0, &qword_22D8255B0);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v55 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036D0, &qword_22D8255E0);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v55 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03698, &qword_22D8255A8);
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v62 = &v55 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03690, &qword_22D8255A0);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v55 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036D8, &qword_22D8255E8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03688, &qword_22D825598);
  v88 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v58 = &v55 - v18;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03680, &qword_22D825590);
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v20 = &v55 - v19;
  *(v1 + 16) = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_22D81B938())
  {
    v21 = sub_22D7DFBC4(MEMORY[0x277D84F90]);
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

  *(v1 + 24) = v21;
  v22 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersAddedStream;
  v23 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersAddedContinuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036E0, &qword_22D8255F0);
  v87 = *MEMORY[0x277D85778];
  v91 = *(v15 + 104);
  v91(v17);
  v24 = v58;
  sub_22D81B508();
  v90 = *(v15 + 8);
  v90(v17, v14);
  v86 = v14;
  v89 = *(v89 + 32);
  v57 = v1;
  (v89)(v1 + v22, v20, v92);
  v88 = *(v88 + 32);
  (v88)(v1 + v23, v24, v93);
  v55 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersRemovedStream;
  v56 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersRemovedContinuation;
  v25 = v87;
  v26 = v86;
  (v91)(v17, v87, v86);
  sub_22D81B508();
  v90(v17, v26);
  v27 = v17;
  v28 = v57;
  (v89)(v57 + v55, v20, v92);
  (v88)(v28 + v56, v24, v93);
  v55 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersUpdatedStream;
  v56 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersUpdatedContinuation;
  v29 = v25;
  v30 = v86;
  (v91)(v27, v29, v86);
  sub_22D81B508();
  v90(v27, v30);
  (v89)(v28 + v55, v20, v92);
  v31 = v28;
  (v88)(v28 + v56, v24, v93);
  v32 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timerFiredStream;
  v33 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timerFiredContinuation;
  sub_22D759CA0(0, &qword_280CD1508, 0x277D29730);
  v34 = v66;
  v35 = v64;
  v36 = v87;
  v37 = v67;
  (*(v66 + 104))(v64, v87, v67);
  v38 = v59;
  v39 = v62;
  sub_22D81B508();
  (*(v34 + 8))(v35, v37);
  (*(v60 + 32))(v31 + v32, v38, v61);
  (*(v63 + 32))(v31 + v33, v39, v65);
  v40 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_recentsStream;
  v41 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_recentsContinuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036E8, &qword_22D8255F8);
  v43 = v75;
  v42 = v76;
  v44 = v73;
  (*(v75 + 104))(v73, v36, v76);
  v45 = v68;
  v46 = v71;
  sub_22D81B508();
  (*(v43 + 8))(v44, v42);
  (*(v69 + 32))(v31 + v40, v45, v70);
  (*(v72 + 32))(v31 + v41, v46, v74);
  v47 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_latestStream;
  v48 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_latestContinuation;
  sub_22D759CA0(0, &qword_280CD1528, 0x277D29738);
  v50 = v84;
  v49 = v85;
  v51 = v82;
  (*(v84 + 104))(v82, v36, v85);
  v52 = v77;
  v53 = v80;
  sub_22D81B508();
  (*(v50 + 8))(v51, v49);
  (*(v78 + 32))(v31 + v47, v52, v79);
  (*(v81 + 32))(v31 + v48, v53, v83);
  return v31;
}

uint64_t sub_22D7DB170(void *a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  v3 = a1;

  sub_22D7DB870(MEMORY[0x277D296C0], &unk_2840D9628, sub_22D7E0F34, sub_22D7E1030);
  sub_22D7DB870(MEMORY[0x277D296A0], &unk_2840D9600, sub_22D7E0F10, sub_22D7E1030);
  sub_22D7DB870(MEMORY[0x277D296B8], &unk_2840D95D8, sub_22D7E0EEC, sub_22D7E1030);
  sub_22D7DBB90(MEMORY[0x277D29688], &unk_2840D95B0, sub_22D7E0EE4, sub_22D7E102C);
  sub_22D7DBB90(MEMORY[0x277D29678], &unk_2840D9588, sub_22D7E0EC4, sub_22D7E0ECC);
  return sub_22D7DB870(MEMORY[0x277D29698], &unk_2840D9538, sub_22D7E0EA4, sub_22D7E0EAC);
}

Swift::Void __swiftcall TimerViewModel.registerPublishers()()
{
  sub_22D7DB870(MEMORY[0x277D296C0], &unk_2840D9628, sub_22D7E0F34, sub_22D7E1030);
  sub_22D7DB870(MEMORY[0x277D296A0], &unk_2840D9600, sub_22D7E0F10, sub_22D7E1030);
  sub_22D7DB870(MEMORY[0x277D296B8], &unk_2840D95D8, sub_22D7E0EEC, sub_22D7E1030);
  sub_22D7DBB90(MEMORY[0x277D29688], &unk_2840D95B0, sub_22D7E0EE4, sub_22D7E102C);
  sub_22D7DBB90(MEMORY[0x277D29678], &unk_2840D9588, sub_22D7E0EC4, sub_22D7E0ECC);
  sub_22D7DB870(MEMORY[0x277D29698], &unk_2840D9538, sub_22D7E0EA4, sub_22D7E0EAC);
}

uint64_t TimerViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersAddedStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03680, &qword_22D825590);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersAddedContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03688, &qword_22D825598);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersRemovedStream, v2);
  v6(v0 + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersRemovedContinuation, v5);
  v3(v0 + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersUpdatedStream, v2);
  v6(v0 + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timersUpdatedContinuation, v5);
  v7 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timerFiredStream;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03690, &qword_22D8255A0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timerFiredContinuation;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03698, &qword_22D8255A8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_recentsStream;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036A0, &qword_22D8255B0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_recentsContinuation;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036A8, &qword_22D8255B8);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_latestStream;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036B0, &qword_22D8255C0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_latestContinuation;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036B8, &qword_22D8255C8);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  return v0;
}

uint64_t TimerViewModel.__deallocating_deinit()
{
  TimerViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22D7DB870(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a3;
  v22[1] = a4;
  v5 = sub_22D81B6C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_22D81B2C8();
  v12 = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = objc_opt_self();
  v15 = v9;
  v16 = [v14 defaultCenter];
  sub_22D81B6D8();

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v10;
  v19 = v22[0];
  v18[4] = v12;
  v18[5] = v19;
  v18[6] = v13;
  sub_22D7E0FB8(&qword_280CD2980, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_22D81A198();
  v20 = sub_22D81AD58();

  (*(v6 + 8))(v8, v5);
  v22[5] = v20;
  swift_beginAccess();
  sub_22D81ACF8();
  sub_22D81ACC8();
  swift_endAccess();
}

uint64_t sub_22D7DBB90(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a3;
  v22[1] = a4;
  v5 = sub_22D81B6C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = sub_22D81B2C8();
  v12 = v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = objc_opt_self();
  v15 = v9;
  v16 = [v14 defaultCenter];
  sub_22D81B6D8();

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = v10;
  v19 = v22[0];
  v18[4] = v12;
  v18[5] = v19;
  v18[6] = v13;
  sub_22D7E0FB8(&qword_280CD2980, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_22D81A198();
  v20 = sub_22D81AD58();

  (*(v6 + 8))(v8, v5);
  v22[5] = v20;
  swift_beginAccess();
  sub_22D81ACF8();
  sub_22D81ACC8();
  swift_endAccess();
}

uint64_t sub_22D7DBE38(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03688, &qword_22D825598);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03778, &qword_22D825838);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v6 + 16))(v8, Strong + *a3, v5);

    v17 = v12;
    sub_22D81A398();
    sub_22D81B528();
    (*(v6 + 8))(v8, v5);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03780, &qword_22D825840);
  (*(*(v15 - 8) + 56))(v11, v14, 1, v15);
  return sub_22D764440(v11, &qword_27DA03778, &qword_22D825838);
}

uint64_t sub_22D7DC044(unint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03698, &qword_22D8255A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03748, &qword_22D825808);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *a1;
  if (v10 >> 62)
  {
    result = sub_22D81B938();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x2318D1F70](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v6, Strong + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_timerFiredContinuation, v3);

    v17 = v13;
    sub_22D81B528();
    (*(v4 + 8))(v6, v3);
    v15 = 0;
  }

  else
  {

    v15 = 1;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03750, &qword_22D825810);
  (*(*(v16 - 8) + 56))(v9, v15, 1, v16);
  return sub_22D764440(v9, &qword_27DA03748, &qword_22D825808);
}

uint64_t sub_22D7DC2A4(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036A8, &qword_22D8255B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03768, &qword_22D825828);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v6, Strong + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_recentsContinuation, v3);

    v15 = v10;
    sub_22D81A398();
    sub_22D81B528();
    (*(v4 + 8))(v6, v3);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03770, &qword_22D825830);
  (*(*(v13 - 8) + 56))(v9, v12, 1, v13);
  return sub_22D764440(v9, &qword_27DA03768, &qword_22D825828);
}

uint64_t sub_22D7DC4A8(unint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036B8, &qword_22D8255C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03758, &qword_22D825818);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *a1;
  if (v10 >> 62)
  {
    result = sub_22D81B938();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x2318D1F70](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v4 + 16))(v6, Strong + OBJC_IVAR____TtC18MobileTimerSupport14TimerViewModel_latestContinuation, v3);

    v17 = v13;
    sub_22D81B528();
    (*(v4 + 8))(v6, v3);
    v15 = 0;
  }

  else
  {

    v15 = 1;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03760, &qword_22D825820);
  (*(*(v16 - 8) + 56))(v9, v15, 1, v16);
  return sub_22D764440(v9, &qword_27DA03758, &qword_22D825818);
}

uint64_t TimerViewModel.addTimer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DC728, 0, 0);
}

uint64_t sub_22D7DC728()
{
  v1 = *(v0[3] + 16);
  if (v1)
  {
    v2 = [v1 addTimer_];
  }

  else
  {
    v2 = 0;
  }

  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22D7DC84C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7DFE58, v3, v5);
}

uint64_t sub_22D7DC84C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22D7DC9CC;
  }

  else
  {

    v2 = sub_22D7DC968;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7DC968()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7DC9CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TimerViewModel.pauseResumeTimer(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22D7DCAE0;

  return TimerViewModel.getTimer(_:)(a1, a2);
}

uint64_t sub_22D7DCAE0(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_22D7DCC14, 0, 0);
  }
}

uint64_t sub_22D7DCC14()
{
  v1 = v0[4];
  if (v1)
  {
    if ([objc_opt_self() isActiveTimer_])
    {
      if ([v1 state] == 3)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }

      v3 = [v1 timerByUpdatingWithState_];
      v0[5] = v3;
      v4 = swift_task_alloc();
      v0[6] = v4;
      *v4 = v0;
      v4[1] = sub_22D7DCD8C;

      return TimerViewModel.updateTimer(_:)(v3);
    }

    v7 = v0[1];
  }

  else
  {
    sub_22D7DFE60();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_22D7DCD8C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22D7DCF08;
  }

  else
  {
    v2 = sub_22D7DCEA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7DCEA0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7DCF08()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TimerViewModel.getTimer(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D7DCF94, 0, 0);
}

uint64_t sub_22D7DCF94()
{
  v1 = [*(v0[4] + 16) timers];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22D7DD05C;

  return sub_22D7DFEB4(v1);
}

uint64_t sub_22D7DD05C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_22D7DD424;
  }

  else
  {

    v4 = sub_22D7DD178;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22D7DD178()
{
  v2 = v0[7];
  if (v2)
  {
    v26 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22D81B938())
    {
      v4 = 0;
      v1 = v0;
      v5 = v0[7];
      v6 = v5 & 0xC000000000000001;
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x2318D1F70](v4, v2);
        }

        else
        {
          if (v4 >= *(v7 + 16))
          {
            goto LABEL_15;
          }

          v8 = *(v2 + 8 * v4 + 32);
        }

        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        MEMORY[0x2318D1B10](v8);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v0 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22D81B458();
        }

        sub_22D81B478();
        ++v4;
        if (v9 == i)
        {
          v10 = v26;
          v0 = v1;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_18:

    if (v10 >> 62)
    {
      goto LABEL_37;
    }

    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_20:
      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x2318D1F70](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_33:
            __break(1u);
LABEL_34:

LABEL_35:

            v22 = v1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_37:
            v11 = sub_22D81B938();
            if (!v11)
            {
              break;
            }

            goto LABEL_20;
          }

          v13 = *(v10 + 8 * v12 + 32);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_33;
          }
        }

        v15 = v0[2];
        v25 = v0[3];
        v1 = v13;
        v16 = [v13 timerIDString];
        v17 = sub_22D81B2C8();
        v19 = v18;

        if (v17 == v15 && v19 == v25)
        {
          goto LABEL_34;
        }

        v21 = sub_22D81BB08();

        if (v21)
        {
          goto LABEL_35;
        }

        ++v12;
      }

      while (v14 != v11);
    }
  }

  v22 = 0;
LABEL_40:
  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_22D7DD424()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t TimerViewModel.updateTimer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DD4A8, 0, 0);
}

uint64_t sub_22D7DD4A8()
{
  v1 = *(v0[3] + 16);
  if (v1)
  {
    v2 = [v1 updateTimer_];
  }

  else
  {
    v2 = 0;
  }

  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22D7DD5CC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v3, v5);
}

uint64_t sub_22D7DD5CC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22D7E100C;
  }

  else
  {

    v2 = sub_22D7E1014;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7DD708()
{
  v1 = [*(v0[2] + 16) timers];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22D7DD7D0;

  return sub_22D7DFEB4(v1);
}

uint64_t sub_22D7DD7D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22D7E1038, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t TimerViewModel.repeatTimer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DD948, 0, 0);
}

uint64_t sub_22D7DD948()
{
  v1 = [*(v0 + 16) timerIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22D7DDA18;

  return TimerViewModel.repeatTimer(_:)(v2, v4);
}

uint64_t sub_22D7DDA18()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22D7DDB54, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22D7DDB54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TimerViewModel.repeatTimer(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D7DDBDC, 0, 0);
}

uint64_t sub_22D7DDBDC()
{
  v1 = *(v0[4] + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_22D81B2B8();
    v4 = [v2 repeatTimerWithIdentifier_];
  }

  else
  {
    v4 = 0;
  }

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22D7DDD28;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v5, v7);
}

uint64_t sub_22D7DDD28()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22D7DDEA8;
  }

  else
  {

    v2 = sub_22D7DDE44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7DDE44()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7DDEA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TimerViewModel.dismissTimer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DDF34, 0, 0);
}

uint64_t sub_22D7DDF34()
{
  v1 = [*(v0 + 16) timerIDString];
  v2 = sub_22D81B2C8();
  v4 = v3;

  *(v0 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_22D7DE004;

  return TimerViewModel.dismissTimer(_:)(v2, v4);
}

uint64_t sub_22D7DE004()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22D7E1034, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t TimerViewModel.dismissTimer(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22D7DE164, 0, 0);
}

uint64_t sub_22D7DE164()
{
  v1 = *(v0[4] + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_22D81B2B8();
    v4 = [v2 dismissTimerWithIdentifier_];
  }

  else
  {
    v4 = 0;
  }

  v0[5] = v4;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v4;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22D7DE2B0;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v5, v7);
}

uint64_t sub_22D7DE2B0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22D7E1010;
  }

  else
  {

    v2 = sub_22D7E1018;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t TimerViewModel.stopTimer(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22D7DE474;

  return TimerViewModel.getTimer(_:)(a1, a2);
}

uint64_t sub_22D7DE474(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_22D7DE5A8, 0, 0);
  }
}

uint64_t sub_22D7DE5A8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = [v1 timerByUpdatingWithState_];
    v0[5] = v2;
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_22D7DE6D0;

    return TimerViewModel.updateTimer(_:)(v2);
  }

  else
  {
    sub_22D7DFE60();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22D7DE6D0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22D7E1020;
  }

  else
  {
    v2 = sub_22D7E101C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t TimerViewModel.removeTimer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DE804, 0, 0);
}

uint64_t sub_22D7DE804()
{
  v1 = *(v0[3] + 16);
  if (v1)
  {
    v2 = [v1 removeTimer_];
  }

  else
  {
    v2 = 0;
  }

  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22D7DD5CC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v3, v5);
}

uint64_t sub_22D7DE948()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA036F8, &qword_22D825668);
  *v1 = v0;
  v1[1] = sub_22D7DEA30;
  v3 = *(v0 + 48);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000012, 0x800000022D82BBE0, sub_22D7E0310, v3, v2);
}

uint64_t sub_22D7DEA30()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22D7DEB64;
  }

  else
  {
    v2 = sub_22D7DEB44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22D7DEB7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03740, &qword_22D825800);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  if (v8)
  {
    (*(v5 + 16))(v7, a1, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, v7, v4);
    aBlock[4] = sub_22D7E0DF8;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D7DEDF8;
    aBlock[3] = &block_descriptor_69;
    v11 = _Block_copy(aBlock);
    v12 = v8;

    [v12 loadAllDurationsWithCompletion_];
    _Block_release(v11);
  }
}

uint64_t sub_22D7DED44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id a5)
{
  if (a5)
  {
    v5 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03740, &qword_22D825800);
    return sub_22D81B4A8();
  }

  else
  {
    v7 = a4;
    sub_22D81A398();
    sub_22D81A398();
    sub_22D81A398();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03740, &qword_22D825800);
    return sub_22D81B4B8();
  }
}

uint64_t sub_22D7DEDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = a2;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_22D759CA0(0, &qword_280CD1528, 0x277D29738);
    v10 = sub_22D81B438();
  }

  if (a3)
  {
    sub_22D759CA0(0, &qword_280CD1528, 0x277D29738);
    a3 = sub_22D81B438();
  }

  if (a4)
  {
    sub_22D759CA0(0, &qword_280CD1528, 0x277D29738);
    a4 = sub_22D81B438();
  }

  sub_22D81A198();
  v12 = a5;
  v13 = a6;
  v11(v10, a3, a4, a5, a6);
}

uint64_t TimerViewModel.removeRecentDuration(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7DEF58, 0, 0);
}

uint64_t sub_22D7DEF58()
{
  v1 = *(v0[3] + 16);
  if (v1)
  {
    v2 = [v1 removeRecentDuration_];
  }

  else
  {
    v2 = 0;
  }

  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22D7DD5CC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000019, 0x800000022D82BBC0, sub_22D7E103C, v3, v5);
}

uint64_t sub_22D7DF09C()
{
  v1 = [*(v0[2] + 16) recentDurations];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22D7DF164;

  return sub_22D7E0318(v1);
}

uint64_t sub_22D7DF164(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22D7DF2BC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_22D7DF2BC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7DF340()
{
  v1 = [*(v0[2] + 16) favoriteDurations];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22D7DD7D0;

  return sub_22D7E0318(v1);
}

uint64_t sub_22D7DF428()
{
  v1 = [*(v0[2] + 16) defaultDurations];
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22D7DD7D0;

  return sub_22D7E0318(v1);
}

uint64_t sub_22D7DF510()
{
  v1 = [*(*(v0 + 24) + 16) latestDuration];
  *(v0 + 32) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03700, qword_22D8256A0);
    *v4 = v0;
    v4[1] = sub_22D7DF6A8;

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000015, 0x800000022D82BC00, sub_22D7E070C, v3, v5);
  }

  else
  {
    sub_22D7DFE60();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_22D7DF6A8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22D7DF834;
  }

  else
  {

    v2 = sub_22D7DF7C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7DF7C4()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_22D7DF834()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7DF8A4(uint64_t a1)
{
  v2 = sub_22D81AA38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03710, &qword_22D8257E0);
    v9 = sub_22D81B818();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_22D7E0FB8(&qword_27DA03718, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_22D81B1C8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_22D7E0FB8(&qword_27DA03720, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_22D81B1F8();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_22D7DFBC4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_22D81B938();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03788, &unk_22D825848);
      result = sub_22D81B818();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_22D81B938();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x2318D1F70](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_22D81ACF8();
    sub_22D7E0FB8(&qword_27DA03790, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_22D81B1C8();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_22D7E0FB8(&qword_27DA03798, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_22D81B1F8();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);
  result = sub_22D81A198();
  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_22D7DFE60()
{
  result = qword_27DA036F0;
  if (!qword_27DA036F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA036F0);
  }

  return result;
}

uint64_t sub_22D7DFED4()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[5] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03730, &qword_22D8257F0);
    *v4 = v0;
    v4[1] = sub_22D7E0048;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x800000022D82BC00, sub_22D7E1040, v3, v5);
  }

  else
  {
    sub_22D7DFE60();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22D7E0048()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_22D7E02A8;
  }

  else
  {

    v2 = sub_22D7E0164;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E0164()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_22D759CA0(0, &qword_280CD1508, 0x277D29730);
    v2 = v1;
    sub_22D81B428();

    v5 = *(v0 + 24);
    sub_22D7DFE60();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0);
  }
}

uint64_t sub_22D7E02A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22D7E0338()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[5] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03730, &qword_22D8257F0);
    *v4 = v0;
    v4[1] = sub_22D7E04AC;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000015, 0x800000022D82BC00, sub_22D7E0CC8, v3, v5);
  }

  else
  {
    sub_22D7DFE60();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22D7E04AC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_22D7E1008;
  }

  else
  {

    v2 = sub_22D7E05C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E05C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_22D759CA0(0, &qword_280CD1528, 0x277D29738);
    v2 = v1;
    sub_22D81B428();

    v5 = *(v0 + 24);
    sub_22D7DFE60();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {

    v3 = *(v0 + 8);

    return v3(0);
  }
}

uint64_t type metadata accessor for TimerViewModel(uint64_t a1)
{
  result = qword_280CD2798;
  if (!qword_280CD2798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D7E0768(uint64_t a1)
{
  sub_22D7E0BD0(319, &qword_280CD1540, &qword_27DA036E0, &qword_22D8255F0, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_22D7E0BD0(319, &qword_280CD1568, &qword_27DA036E0, &qword_22D8255F0, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      sub_22D7E0B68(319, &qword_280CD1530, &qword_280CD1508, 0x277D29730, MEMORY[0x277D857B8]);
      if (v3 <= 0x3F)
      {
        sub_22D7E0B68(319, &qword_280CD1558, &qword_280CD1508, 0x277D29730, MEMORY[0x277D85788]);
        if (v4 <= 0x3F)
        {
          sub_22D7E0BD0(319, &qword_280CD1548, &qword_27DA036E8, &qword_22D8255F8, MEMORY[0x277D857B8]);
          if (v5 <= 0x3F)
          {
            sub_22D7E0BD0(319, &unk_280CD1570, &qword_27DA036E8, &qword_22D8255F8, MEMORY[0x277D85788]);
            if (v6 <= 0x3F)
            {
              sub_22D7E0B68(319, &qword_280CD1538, &qword_280CD1528, 0x277D29738, MEMORY[0x277D857B8]);
              if (v7 <= 0x3F)
              {
                sub_22D7E0B68(319, &qword_280CD1560, &qword_280CD1528, 0x277D29738, MEMORY[0x277D85788]);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_22D7E0B68(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22D759CA0(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22D7E0BD0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_22D7E0C48()
{
  result = qword_27DA03708;
  if (!qword_27DA03708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03708);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t objectdestroyTm_4(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22D7E0DF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03740, &qword_22D825800);

  return sub_22D7DED44(a1, a2, a3, a4, a5);
}

uint64_t objectdestroy_80Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22D7E0FB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22D7E1048()
{
  result = qword_27DA037A0;
  if (!qword_27DA037A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA037A0);
  }

  return result;
}

unint64_t sub_22D7E10A0()
{
  result = qword_27DA037A8;
  if (!qword_27DA037A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA037A8);
  }

  return result;
}

uint64_t sub_22D7E112C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v16 = sub_22D81A768();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  sub_22D81B228();
  sub_22D81A948();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v11(v6, v10, v3);
  v12 = v17;
  sub_22D81A778();
  (*(v9 + 56))(v12, 0, 1, v16);
  v13 = v18;
  sub_22D81A2C8();
  v14 = sub_22D81A2B8();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_22D7E14B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22D7E14D0, 0, 0);
}

uint64_t sub_22D7E14D0()
{
  v1 = [*(v0 + 24) timersSync];
  if (!v1)
  {
    goto LABEL_19;
  }

  sub_22D7E1A14();
  v2 = sub_22D81B438();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_18:

    v1 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v3 = sub_22D81B938();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_4:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2318D1F70](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v1 = v5;
    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ([v5 state] == 3)
    {
      break;
    }

    ++v4;
    if (v6 == v3)
    {
      goto LABEL_18;
    }
  }

  v7 = [v1 timerByUpdatingWithState_];
  if (v7)
  {
    v8 = v7;
  }

LABEL_19:
  sub_22D819FD8();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22D7E1690()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D7E1850(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA037C0, qword_22D8259B8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D7E1928(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D7E14B0(a1, v4);
}

uint64_t sub_22D7E19C8(uint64_t a1)
{
  v2 = sub_22D7D1D78();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D7E1A14()
{
  result = qword_280CD1508;
  if (!qword_280CD1508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CD1508);
  }

  return result;
}

void sub_22D7E1A60(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22D81A728();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_22D7E1AC4(uint64_t a1)
{
  v3 = *(v1 + 112);
  v4 = [v3 allObjects];
  v5 = sub_22D81B438();

  if (v5 >> 62)
  {
    v6 = sub_22D81B938();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_12:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318D1F70](v7, v5);
        if (v8 == a1)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        if (v8 == a1)
        {
LABEL_10:
          [v3 removeObject_];
        }
      }

      ++v7;
      swift_unknownObjectRelease();
      if (v6 == v7)
      {
        goto LABEL_12;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22D7E1BF0(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;
      sub_22D81A398();
      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_22D7E1CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = a4;
  return MEMORY[0x2822009F8](sub_22D7E1CC0, a4, 0);
}

uint64_t sub_22D7E1CC0()
{
  sub_22D75CCD8(*(v0 + 88) + 120, v0 + 16);

  return MEMORY[0x2822009F8](sub_22D7E1D30, 0, 0);
}

uint64_t sub_22D7E1D30()
{
  v1 = v0[11];
  v0[12] = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);

  return MEMORY[0x2822009F8](sub_22D7E1DA4, v1, 0);
}

uint64_t sub_22D7E1DA4()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  *(v0 + 104) = *(v1 + 112);
  sub_22D81A398();

  return MEMORY[0x2822009F8](sub_22D7E1E2C, 0, 0);
}

uint64_t sub_22D7E1E2C()
{
  v8 = v0;
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_22D7E88FC(*(v1 + 16), 0);
    v4 = sub_22D7E9B1C(&v7, v3 + 4, v2, v1);
    sub_22D792FD0(v7);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  sub_22D7E844C(v3);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22D7E1F14(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22D7E1F34, v1, 0);
}

id sub_22D7E1F34()
{
  v17 = v0;
  if (*(*(v0 + 64) + 160) == 1)
  {
    result = [*(v0 + 56) identifier];
    if (result)
    {
      v2 = result;
      v3 = *(v0 + 56);
      v4 = *(v0 + 64);
      v5 = sub_22D81B2C8();
      v7 = v6;

      swift_beginAccess();
      v8 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v4 + 112);
      *(v4 + 112) = 0x8000000000000000;
      sub_22D80C83C(v8, v5, v7, isUniquelyReferenced_nonNull_native);

      v10 = v16;
      *(v4 + 112) = v16;
      swift_endAccess();
      sub_22D75CCD8(v4 + 120, v0 + 16);
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v11 = *(v10 + 16);
      if (!v11)
      {
        v12 = MEMORY[0x277D84F90];
LABEL_8:
        sub_22D7E844C(v12);

        __swift_destroy_boxed_opaque_existential_0((v0 + 16));
        v15 = *(v0 + 8);
        goto LABEL_9;
      }

      v12 = sub_22D7E88FC(v11, 0);
      v13 = sub_22D7E9B1C(&v16, v12 + 4, v11, v10);
      v14 = v16;
      sub_22D81A198();
      result = sub_22D792FD0(v14);
      if (v13 == v11)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_22D7EB8E4();
  swift_allocError();
  swift_willThrow();
  v15 = *(v0 + 8);
LABEL_9:

  return v15();
}

id sub_22D7E2140(void *a1)
{
  if (*(v1 + 160) != 1)
  {
    goto LABEL_6;
  }

  v14[6] = v2;
  result = [a1 identifier];
  if (result)
  {
    v4 = result;
    v5 = sub_22D81B2C8();
    v7 = v6;

    swift_beginAccess();
    sub_22D804758(0, v5, v7);
    swift_endAccess();
    sub_22D75CCD8(v1 + 120, v14);
    __swift_project_boxed_opaque_existential_0(v14, v14[3]);
    v8 = *(v1 + 112);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = sub_22D7E88FC(*(v8 + 16), 0);
      v11 = sub_22D7E9B1C(&v13, v10 + 4, v9, v8);
      v12 = v13;
      sub_22D81A398();
      sub_22D792FD0(v12);
      if (v11 != v9)
      {
        __break(1u);
LABEL_6:
        sub_22D7EB8E4();
        swift_allocError();
        return swift_willThrow();
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    sub_22D7E844C(v10);

    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22D7E22DC()
{
  v2 = v0;
  v3 = objc_opt_self();
  v4 = sub_22D81B2B8();
  v5 = &off_278771000;
  [v3 logInfo_];

  if (*(v2 + 160) != 1)
  {
    sub_22D7EB8E4();
    swift_allocError();
    swift_willThrow();
    return v4;
  }

  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_22D81B838();

  v23 = 0xD00000000000001DLL;
  v24 = 0x800000022D82C070;
  swift_beginAccess();
  v6 = *(v2 + 112);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v21 = v3;
  v25 = v1;
  v8 = sub_22D7E88FC(v7, 0);
  v9 = sub_22D7E9B1C(v22, v8 + 4, v7, v6);
  v10 = v22[0];
  sub_22D81A398();
  result = sub_22D792FD0(v10);
  if (v9 == v7)
  {
    v3 = v21;
    v5 = &off_278771000;
LABEL_7:
    v12 = sub_22D7EB4B8();
    v13 = MEMORY[0x2318D1B50](v8, v12);
    v15 = v14;

    MEMORY[0x2318D1A50](v13, v15);

    v16 = sub_22D81B2B8();

    [v3 v5[58]];

    v17 = *(v2 + 112);
    v18 = *(v17 + 16);
    if (!v18)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = sub_22D7E88FC(*(v17 + 16), 0);
    v19 = sub_22D7E9B1C(v22, v4 + 4, v18, v17);
    v20 = v22[0];
    sub_22D81A398();
    sub_22D792FD0(v20);
    if (v19 != v18)
    {
      __break(1u);
      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D7E2568()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

id MTStopwatchStorageProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MTStopwatchStorageProxy.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = type metadata accessor for DefaultsStopwatchDataStore();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v26[3] = v6;
  v26[4] = &off_2840D98C0;
  v26[0] = v7;
  type metadata accessor for StopwatchStorageActor();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v26, v6);
  MEMORY[0x28223BE20](v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_22D7E9C70(*v11, v8);
  __swift_destroy_boxed_opaque_existential_0(v26);
  *&v0[v4] = v13;
  v14 = OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA037D8, &qword_22D8259D0);
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 112) = [objc_opt_self() weakObjectsHashTable];
  *&v0[v14] = v15;
  v16 = OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_sessionsActor;
  type metadata accessor for StopwatchSessionsProvider();
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v17 + 112) = MEMORY[0x277D84F98];
  *&v0[v16] = v17;
  v18 = type metadata accessor for MTStopwatchStorageProxy();
  v25.receiver = v0;
  v25.super_class = v18;
  v19 = objc_msgSendSuper2(&v25, sel_init);
  v20 = sub_22D81B4F8();
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v19;
  v22 = v19;
  sub_22D7BD9C8(0, 0, v3, &unk_22D8259E0, v21);

  sub_22D764440(v3, &unk_27DA01FF0, &qword_22D81FC70);
  return v22;
}

uint64_t sub_22D7E294C()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  v0[3] = v2;
  v0[4] = *(v1 + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_sessionsActor);
  return MEMORY[0x2822009F8](sub_22D7E2988, v2, 0);
}

uint64_t sub_22D7E2988()
{
  [*(v0[3] + 112) addObject_];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22D7E2A2C;

  return sub_22D7E75C8();
}

uint64_t sub_22D7E2A2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22D7E2B44(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_22D81B4F8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v2;
  sub_22D748F50(a1, a2);
  v10 = v2;
  sub_22D75D890(0, 0, v7, &unk_22D8259F0, v9);
}

uint64_t sub_22D7E2C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D7E2C8C, 0, 0);
}

uint64_t sub_22D7E2C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3[2])
  {
    v4 = *(v3[4] + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
    v3[5] = v4;
    return MEMORY[0x2822009F8](sub_22D7E2CC4, v4, 0);
  }

  else
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }
}

uint64_t sub_22D7E2CC4()
{
  *(v0 + 48) = sub_22D7E22DC();
  *(v0 + 56) = 0;

  return MEMORY[0x2822009F8](sub_22D7E2D50, 0, 0);
}

uint64_t sub_22D7E2D50()
{
  (*(v0 + 16))(*(v0 + 48), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7E2DC8()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_22D7E2FB8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22D7EB4B8();
    v5 = sub_22D81B418();
  }

  if (a2)
  {
    v6 = sub_22D81A728();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_22D7E3074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return MEMORY[0x2822009F8](sub_22D7E309C, 0, 0);
}

uint64_t sub_22D7E309C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_22D7E3140;
  v2 = *(v0 + 40);

  return sub_22D7E1F14(v2);
}

uint64_t sub_22D7E3140()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22D7E3490;
  }

  else
  {
    v2 = sub_22D7E3254;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E3254()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7E3280, v1, 0);
}

uint64_t sub_22D7E3280()
{
  v1 = [*(*(v0 + 88) + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    ++v7;
    *(v0 + 16) = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    [*(v0 + 24) didCreateStopWatch:v10 source:v9];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_10:

  v3 = sub_22D7E3428;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E3428()
{
  (*(v0 + 56))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7E3490()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22D7E3594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return MEMORY[0x2822009F8](sub_22D7E35BC, 0, 0);
}

uint64_t sub_22D7E35BC()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_22D7E3660;
  v2 = *(v0 + 40);

  return sub_22D7E1F14(v2);
}

uint64_t sub_22D7E3660()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_22D7EBBC8;
  }

  else
  {
    v2 = sub_22D7E3774;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E3774()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7E37A0, v1, 0);
}

uint64_t sub_22D7E37A0()
{
  v1 = [*(*(v0 + 88) + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    ++v7;
    *(v0 + 16) = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    [*(v0 + 24) didUpdateStopwatch:v10 source:v9];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_10:

  v3 = sub_22D7EBBCC;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E39C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v6;
  v16[5] = a1;
  v16[6] = a4;
  v16[7] = a2;
  v16[8] = a3;
  v17 = v6;
  v18 = a1;
  swift_unknownObjectRetain();
  sub_22D81A198();
  sub_22D75D890(0, 0, v14, a6, v16);
}

uint64_t sub_22D7E3AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return MEMORY[0x2822009F8](sub_22D7E3B1C, 0, 0);
}

uint64_t sub_22D7E3B1C()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](sub_22D7E3B48, v1, 0);
}

uint64_t sub_22D7E3B48()
{
  sub_22D7E2140(*(v0 + 40));
  *(v0 + 80) = 0;

  return MEMORY[0x2822009F8](sub_22D7E3BD8, 0, 0);
}

uint64_t sub_22D7E3BD8()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7E3C04, v1, 0);
}

uint64_t sub_22D7E3C04()
{
  v1 = [*(*(v0 + 88) + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    ++v7;
    *(v0 + 16) = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    [*(v0 + 24) didDeleteStopwatch:v10 source:v9];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_10:

  v3 = sub_22D7EBBCC;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E3E04(void *a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(a4);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = sub_22D81B4F8();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a3;
  v20[6] = a5;
  v20[7] = a8;
  v20[8] = v18;
  v21 = a3;
  swift_unknownObjectRetain();
  v22 = a1;
  sub_22D75D890(0, 0, v16, a9, v20);
}

uint64_t sub_22D7E3F64(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_22D81B4F8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v5;
  v15[5] = a2;
  v15[6] = a1;
  v15[7] = a5;
  v15[8] = a3;
  v15[9] = a4;
  v16 = v5;
  v17 = a2;
  v18 = a1;
  swift_unknownObjectRetain();
  sub_22D81A198();
  sub_22D75D890(0, 0, v13, &unk_22D825A38, v15);
}

uint64_t sub_22D7E40AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  return MEMORY[0x2822009F8](sub_22D7E40DC, 0, 0);
}

uint64_t sub_22D7E40DC()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_22D7E4180;
  v2 = *(v0 + 40);

  return sub_22D7E1F14(v2);
}

uint64_t sub_22D7E4180()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_22D7E44D8;
  }

  else
  {
    v2 = sub_22D7E4294;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E4294()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 96) = v1;
  return MEMORY[0x2822009F8](sub_22D7E42C0, v1, 0);
}

uint64_t sub_22D7E42C0()
{
  v1 = [*(*(v0 + 96) + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v8 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    ++v7;
    *(v0 + 16) = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    [*(v0 + 24) didAddLap:v10 forStopwatch:v11 source:v9];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_10:

  v3 = sub_22D7E4470;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E4470()
{
  (*(v0 + 64))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7E44D8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22D7E46FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E4724, 0, 0);
}

void sub_22D7E4724()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_22D7E47D0;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E47D0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22D7EBBD8;
  }

  else
  {
    v2 = sub_22D7E48E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E48E4()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E4910, v1, 0);
}

uint64_t sub_22D7E4910()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v15 = v0[14];
  v9 = v0[12];
  v14 = v0 + 4;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v11 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v11;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v12 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_228;
      v10 = _Block_copy(v0 + 2);
      sub_22D81A198();
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v12 didClearAllLapsForStopwatch:v0[11] withCompletion:v10 source:{v15, v14}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7EBBD0;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_22D7E4B5C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_22D81A198();
  v4 = a2;
  v3(a2);
}

uint64_t sub_22D7E4D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E4D90, 0, 0);
}

void sub_22D7E4D90()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_22D7E4E3C;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E4E3C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22D7EBBD8;
  }

  else
  {
    v2 = sub_22D7E4F50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E4F50()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E4F7C, v1, 0);
}

uint64_t sub_22D7E4F7C()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v15 = v0[14];
  v9 = v0[12];
  v14 = v0 + 4;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v11 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v11;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v12 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_224;
      v10 = _Block_copy(v0 + 2);
      sub_22D81A198();
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v12 didStartLapTimerForStopwatch:v0[11] withCompletion:v10 source:{v15, v14}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7EBBD0;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E5368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E5390, 0, 0);
}

void sub_22D7E5390()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_22D7E543C;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E543C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22D7E583C;
  }

  else
  {
    v2 = sub_22D7E5550;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E5550()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E557C, v1, 0);
}

uint64_t sub_22D7E557C()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v15 = v0[14];
  v9 = v0[12];
  v14 = v0 + 4;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v11 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v11;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v12 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_220;
      v10 = _Block_copy(v0 + 2);
      sub_22D81A198();
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v12 didPauseLapTimerForStopwatch:v0[11] withCompletion:v10 source:{v15, v14}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7E57C8;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E57C8()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v1(0);
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D7E583C()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[16];
    v3 = v2;
    v1(v2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D7E5A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E5A9C, 0, 0);
}

void sub_22D7E5A9C()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_22D7E5B48;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E5B48()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22D7EBBD8;
  }

  else
  {
    v2 = sub_22D7E5C5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E5C5C()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E5C88, v1, 0);
}

uint64_t sub_22D7E5C88()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v15 = v0[14];
  v9 = v0[12];
  v14 = v0 + 4;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v11 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v11;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v12 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_216;
      v10 = _Block_copy(v0 + 2);
      sub_22D81A198();
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v12 didLapLapTimerForStopwatch:v0[11] withCompletion:v10 source:{v15, v14}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7EBBD0;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E6074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E609C, 0, 0);
}

void sub_22D7E609C()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_22D7E6148;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E6148()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22D7EBBD8;
  }

  else
  {
    v2 = sub_22D7E625C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E625C()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E6288, v1, 0);
}

uint64_t sub_22D7E6288()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v15 = v0[14];
  v9 = v0[12];
  v14 = v0 + 4;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v11 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v11;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v12 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_212;
      v10 = _Block_copy(v0 + 2);
      sub_22D81A198();
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v12 didResetLapTimerForStopwatch:v0[11] withCompletion:v10 source:{v15, v14}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7EBBD0;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E6674(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v6;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v17 = a1;
  v18 = v6;
  sub_22D748F50(a2, a3);
  swift_unknownObjectRetain();
  sub_22D75D890(0, 0, v14, a6, v16);
}

uint64_t sub_22D7E67AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x2822009F8](sub_22D7E67D4, 0, 0);
}

void sub_22D7E67D4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 120) = v2;
    *v2 = v0;
    v2[1] = sub_22D7E6880;

    sub_22D7E1F14(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E6880()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_22D7EBBD8;
  }

  else
  {
    v2 = sub_22D7E6994;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D7E6994()
{
  v1 = *(*(v0 + 80) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](sub_22D7E69C0, v1, 0);
}

uint64_t sub_22D7E69C0()
{
  v1 = [*(v0[17] + 112) allObjects];
  v2 = sub_22D81B438();

  if (v2 >> 62)
  {
    v3 = sub_22D81B938();
    v6 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v7 = 0;
  v8 = v0[13];
  v15 = v0[14];
  v9 = v0[12];
  v14 = v0 + 4;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x2318D1F70](v7, v2);
    }

    else
    {
      v11 = *(v2 + 8 * v7 + 32);
      swift_unknownObjectRetain();
    }

    v0[8] = v11;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA038C0, &unk_22D825CE0);
    swift_dynamicCast();
    v12 = v0[9];
    if (v9)
    {
      v0[6] = v9;
      v0[7] = v8;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22D7E4B5C;
      v0[5] = &block_descriptor_14;
      v10 = _Block_copy(v0 + 2);
      sub_22D81A198();
    }

    else
    {
      v10 = 0;
    }

    ++v7;
    [v12 didResumeLapTimerForStopwatch:v0[11] withCompletion:v10 source:{v15, v14}];
    _Block_release(v10);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (v6 != v7);
LABEL_13:

  v3 = sub_22D7EBBD0;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D7E6DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22D7E6DCC, 0, 0);
}

uint64_t sub_22D7E6DCC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22D7E6DF8, v1, 0);
}

uint64_t sub_22D7E6DF8()
{
  [*(v0[4] + 112) addObject_];
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D7E6EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_22D81B4F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a1;
  v11 = v3;
  swift_unknownObjectRetain();
  sub_22D75D890(0, 0, v8, a3, v10);
}

uint64_t sub_22D7E6FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22D7E6FD0, 0, 0);
}

uint64_t sub_22D7E6FD0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_observerStore);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22D7E6FFC, v1, 0);
}

uint64_t sub_22D7E6FFC()
{
  sub_22D7E1AC4(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7E707C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_22D81B4F8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a3;
  swift_unknownObjectRetain();
  v13 = a1;
  sub_22D75D890(0, 0, v10, a5, v12);
}

uint64_t sub_22D7E718C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_22D81B4F8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_22D7BD9C8(0, 0, v3, &unk_22D825AC8, v5);

  return sub_22D764440(v3, &unk_27DA01FF0, &qword_22D81FC70);
}

uint64_t sub_22D7E72D0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D7E72FC, v1, 0);
}

uint64_t sub_22D7E72FC()
{
  *(*(v0 + 24) + 160) = 1;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22D7E7398;

  return sub_22D7E75C8();
}

uint64_t sub_22D7E7398()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22D7E75C8()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D7E7670, 0, 0);
}

uint64_t sub_22D7E7670()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_sessionsActor);
  *(v0 + 88) = v1;
  return MEMORY[0x2822009F8](sub_22D7E769C, v1, 0);
}

uint64_t sub_22D7E769C()
{
  *(v0 + 96) = sub_22D76A30C();

  return MEMORY[0x2822009F8](sub_22D7E7708, 0, 0);
}

uint64_t sub_22D7E7708()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = objc_opt_self();
  v0[13] = v3;
  sub_22D81B838();
  v4 = [v2 description];
  sub_22D81B2C8();

  MEMORY[0x2318D1A50](0xD000000000000021, 0x800000022D82BFD0);
  v5 = MEMORY[0x2318D1B50](v1, MEMORY[0x277D837D0]);
  MEMORY[0x2318D1A50](v5);

  MEMORY[0x2318D1A50](41, 0xE100000000000000);
  v6 = sub_22D81B2B8();

  [v3 logInfo_];

  v7 = *&v2[OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_stopwatchActor];
  v0[14] = v7;

  return MEMORY[0x2822009F8](sub_22D7E787C, v7, 0);
}

uint64_t sub_22D7E787C()
{
  *(v0 + 120) = sub_22D7E22DC();
  *(v0 + 128) = 0;

  return MEMORY[0x2822009F8](sub_22D7E7950, 0, 0);
}

void sub_22D7E7950()
{
  v71 = v0;
  v1 = v0;
  v2 = *(v0 + 120);
  v69 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_34:
    v3 = sub_22D81B938();
    v4 = v1[15];
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v2;
  }

  v5 = MEMORY[0x277D84F90];
  v68 = v1;
  if (v3)
  {
    v6 = 0;
    v7 = v2 & 0xC000000000000001;
    v8 = v2 & 0xFFFFFFFFFFFFFF8;
    p_info = &v4->info;
    v1 = &off_278771000;
    do
    {
      if (v7)
      {
        v10 = MEMORY[0x2318D1F70](v6, v68[15]);
      }

      else
      {
        if (v6 >= *(v8 + 16))
        {
          goto LABEL_33;
        }

        v10 = p_info[v6];
      }

      v11 = v10;
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if ([(__objc2_class_ro *)v10 state]== 1 || [(__objc2_class_ro *)v11 state]== 2)
      {
        sub_22D81B888();
        sub_22D81B8A8();
        sub_22D81B8B8();
        v2 = &v69;
        sub_22D81B898();
      }

      else
      {
      }

      ++v6;
    }

    while (v12 != v3);
    v1 = v68;
    v13 = v69;
    v5 = MEMORY[0x277D84F90];

    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

  v13 = MEMORY[0x277D84F90];

  if (v5 < 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  if ((v13 & 0x4000000000000000) != 0)
  {
LABEL_35:
    v14 = sub_22D81B938();
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_36:

    v28 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

LABEL_20:
  v69 = v5;
  sub_22D7E8B4C(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
LABEL_56:
    __break(1u);
    return;
  }

  v15 = 0;
  v16 = v69;
  do
  {
    v17 = v16;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x2318D1F70](v15, v13);
    }

    else
    {
      v18 = *(v13 + 8 * v15 + 32);
    }

    v19 = v18;
    v20 = [v18 identifier];
    if (v20)
    {
      v21 = v20;
      v22 = sub_22D81B2C8();
      v24 = v23;
    }

    else
    {

      v22 = 0;
      v24 = 0;
    }

    v16 = v17;
    v69 = v17;
    v25 = *(v17 + 16);
    v26 = *(v16 + 24);
    if (v25 >= v26 >> 1)
    {
      sub_22D7E8B4C((v26 > 1), v25 + 1, 1);
      v16 = v69;
    }

    ++v15;
    *(v16 + 16) = v25 + 1;
    v27 = v16 + 16 * v25;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
  }

  while (v14 != v15);
  v28 = v16;

  v1 = v68;
LABEL_37:
  v30 = v1[12];
  v29 = v1[13];
  v31 = v1[8];
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_22D81B838();
  v32 = [(__objc2_class *)v31 description];
  v33 = sub_22D81B2C8();
  v35 = v34;

  v69 = v33;
  v70 = v35;
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D82C000);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  v67 = v28;
  v37 = MEMORY[0x2318D1B50](v28, v36);
  MEMORY[0x2318D1A50](v37);

  MEMORY[0x2318D1A50](41, 0xE100000000000000);
  v38 = sub_22D81B2B8();

  [(__objc2_class *)v29 logInfo:v38];

  cache = v30->cache;
  if (cache)
  {
    v40 = 0;
    v66 = v1 + 6;
    v61 = v1 + 2;
    v62 = v30->cache;
    v41 = v1[16];
    v42 = v1[12] + 1;
    v63 = v30;
    while (v40 < v30->cache)
    {
      info = v42[-1].info;
      isa = v42->isa;
      v1[6] = info;
      v1[7] = isa;
      v45 = swift_task_alloc();
      *(v45 + 16) = v66;
      swift_bridgeObjectRetain_n();
      v46 = sub_22D7E1BF0(sub_22D7EB5CC, v45, v67);

      if (v46)
      {
      }

      else
      {
        v48 = v1[9];
        v47 = v1[10];
        v49 = v1[8];
        v64 = v49;
        v65 = v41;
        v50 = sub_22D81B4F8();
        v51 = *(v50 - 8);
        (*(v51 + 56))(v47, 1, 1, v50);
        v52 = swift_allocObject();
        v52[2] = 0;
        v52[3] = 0;
        v52[4] = v49;
        v52[5] = info;
        v52[6] = isa;
        sub_22D7EB6B4(v47, v48);
        LODWORD(v49) = (*(v51 + 48))(v48, 1, v50);
        sub_22D81A398();
        v53 = v64;
        sub_22D81A198();
        v54 = v68[9];
        if (v49 == 1)
        {
          sub_22D764440(v68[9], &unk_27DA01FF0, &qword_22D81FC70);
        }

        else
        {
          sub_22D81B4E8();
          (*(v51 + 8))(v54, v50);
        }

        v55 = v52[2];
        swift_unknownObjectRetain();

        v41 = v65;
        if (v55)
        {
          swift_getObjectType();
          v56 = sub_22D81B498();
          v58 = v57;
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0;
          v58 = 0;
        }

        sub_22D764440(v68[10], &unk_27DA01FF0, &qword_22D81FC70);
        v59 = swift_allocObject();
        *(v59 + 16) = &unk_22D825BF8;
        *(v59 + 24) = v52;
        if (v58 | v56)
        {
          *v61 = 0;
          v61[1] = 0;
          v68[4] = v56;
          v68[5] = v58;
        }

        v1 = v68;
        cache = v62;
        v30 = v63;
        swift_task_create();
      }

      ++v40;
      v42 = (v42 + 16);
      if (cache == v40)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_52:

  v60 = v1[1];

  v60();
}

uint64_t sub_22D7E8024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D7E8048, 0, 0);
}

uint64_t sub_22D7E8048()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = objc_opt_self();
  sub_22D81B838();
  v5 = [v3 description];
  sub_22D81B2C8();

  MEMORY[0x2318D1A50](0xD000000000000023, 0x800000022D82C020);
  MEMORY[0x2318D1A50](v2, v1);
  MEMORY[0x2318D1A50](41, 0xE100000000000000);
  v6 = sub_22D81B2B8();

  [v4 logInfo_];

  v7 = *&v3[OBJC_IVAR____TtC18MobileTimerSupport23MTStopwatchStorageProxy_sessionsActor];
  v0[5] = v7;

  return MEMORY[0x2822009F8](sub_22D7E81AC, v7, 0);
}

uint64_t sub_22D7E81AC()
{
  sub_22D76A00C(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

id MTStopwatchStorageProxy.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MTStopwatchStorageProxy();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22D7E82B8()
{
  if ([*(v0 + 16) objectForKey_])
  {
    sub_22D81B758();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_22D764440(v7, &unk_27DA02030, qword_22D81F298);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA03858, &unk_22D825BE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_22D7EB504();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    return;
  }

  v1 = objc_opt_self();
  v2 = sub_22D81B158();
  v3 = [v1 decodeStopwatchesFromDictionary_];

  if (v3)
  {

    sub_22D7EB4B8();
    sub_22D81B438();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22D7E844C(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_22D7EB4B8();
  v3 = sub_22D81B418();
  v4 = [v2 encodedDictionaryForStopwatches_];

  if (v4)
  {
    sub_22D81B168();

    v5 = *(v1 + 16);
    v4 = sub_22D81B158();
  }

  else
  {
    v5 = *(v1 + 16);
  }

  [v5 setObject:v4 forKey:@"MTStopwatches"];
  return swift_unknownObjectRelease();
}

uint64_t sub_22D7E8564()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22D7E859C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22D7E8694;

  return v6(a1);
}

uint64_t sub_22D7E8694()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_22D7E878C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02010, &unk_22D81F258);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_22D7E8800(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA03870, &unk_22D825C90);
  v4 = *(sub_22D81A938() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22D7E88FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01E88, &qword_22D81EAA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_22D7E8984(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E8B6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D7E89A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E8C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D7E89C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E8FF0(a1, a2, a3, *v3, &qword_27DA038F8, &qword_22D826130, type metadata accessor for AlarmConcern);
  *v3 = result;
  return result;
}

char *sub_22D7E8A08(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E8DB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22D7E8A28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E8EC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D7E8A48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E9310(a1, a2, a3, *v3, &qword_27DA038E8, &qword_22D825D18, &qword_27DA038F0, &unk_22D825D20);
  *v3 = result;
  return result;
}

void *sub_22D7E8A88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E8FF0(a1, a2, a3, *v3, &qword_27DA02008, &qword_22D81F250, type metadata accessor for AlarmEntity);
  *v3 = result;
  return result;
}

char *sub_22D7E8ACC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E91CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D7E8AEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E9310(a1, a2, a3, *v3, &qword_27DA03898, &qword_22D825CB8, &qword_27DA038A0, &qword_22D825CC0);
  *v3 = result;
  return result;
}

void *sub_22D7E8B2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E9458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22D7E8B4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22D7E9648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22D7E8B6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038B8, &qword_22D825CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22D7E8C70(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038D0, &qword_22D825D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038D8, &qword_22D825D08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22D7E8DB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03890, &qword_22D825CB0);
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

char *sub_22D7E8EC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038E0, &qword_22D825D10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22D7E8FF0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_22D7E91CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA03880, &unk_22D825CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22D7E9310(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_22D7E9458(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038A8, &qword_22D825CC8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038B0, &qword_22D825CD0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038B0, &qword_22D825CD0) - 8);
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

void *sub_22D7E9648(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03868, &qword_22D825C10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22D7E977C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_22D7E9878(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_22D81A938();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_22D7E9B1C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22D7E9C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v65 - v5;
  v80 = type metadata accessor for DefaultsStopwatchDataStore();
  v81 = &off_2840D98C0;
  v79[0] = a1;
  swift_defaultActor_initialize();
  *(a2 + 112) = MEMORY[0x277D84F98];
  *(a2 + 160) = 0;
  *(a2 + 164) = 1065353216;
  v7 = objc_opt_self();
  v8 = sub_22D81B2B8();
  [v7 logInfo_];

  v69 = (a2 + 112);
  sub_22D75CCD8(v79, a2 + 120);
  __swift_project_boxed_opaque_existential_0(v79, v80);
  sub_22D7E82B8();
  v10 = v9;
  if (v9 >> 62)
  {
LABEL_35:
    v11 = sub_22D81B938();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = v7;
  v67 = v6;
  v68 = a2;
  if (v11)
  {
    v7 = 0;
    v71 = v10 & 0xFFFFFFFFFFFFFF8;
    v72 = v10 & 0xC000000000000001;
    v12 = MEMORY[0x277D84F98];
    v70 = v10;
    while (1)
    {
      if (v72)
      {
        v15 = MEMORY[0x2318D1F70](v7, v10);
      }

      else
      {
        if (v7 >= *(v71 + 16))
        {
          goto LABEL_32;
        }

        v15 = *(v10 + 8 * v7 + 32);
      }

      v16 = v15;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v73 = (v7 + 1);
      v6 = v11;
      sub_22D81A398();
      v17 = [v16 identifier];
      if (!v17)
      {
        __break(1u);
        goto LABEL_37;
      }

      v18 = v17;
      v19 = sub_22D81B2C8();
      v21 = v20;

      v22 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v12;
      v10 = v12;
      v25 = sub_22D807780(v19, v21);
      v26 = v12[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_33;
      }

      a2 = v24;
      if (v12[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v24)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_22D80DBC8();
          if (a2)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_22D80AFC8(v28, isUniquelyReferenced_nonNull_native);
        v29 = sub_22D807780(v19, v21);
        if ((a2 & 1) != (v30 & 1))
        {
          goto LABEL_38;
        }

        v25 = v29;
        if (a2)
        {
LABEL_5:

          v10 = v77;
          v13 = *(v77 + 56);
          v14 = *(v13 + 8 * v25);
          *(v13 + 8 * v25) = v22;

          goto LABEL_6;
        }
      }

      v10 = v77;
      *(v77 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v31 = (*(v10 + 48) + 16 * v25);
      *v31 = v19;
      v31[1] = v21;
      *(*(v10 + 56) + 8 * v25) = v22;

      v32 = *(v10 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_34;
      }

      *(v10 + 16) = v34;
LABEL_6:
      v12 = v10;
      ++v7;
      v11 = v6;
      v10 = v70;
      if (v73 == v6)
      {
        goto LABEL_25;
      }
    }
  }

  v12 = MEMORY[0x277D84F98];
LABEL_25:

  v35 = v69;
  swift_beginAccess();
  *v35 = v12;

  v36 = *(*__swift_project_boxed_opaque_existential_0(v79, v80) + 16);
  v37 = sub_22D81B2B8();
  [v36 floatForKey_];
  v39 = v38;

  v40 = v68;
  if (v39 < 1.0)
  {
    v41 = *(*__swift_project_boxed_opaque_existential_0(v35 + 1, *(v68 + 144)) + 16);
    v42 = sub_22D81B5D8();
    v43 = sub_22D81B2B8();
    [v41 setValue:v42 forKey:v43];
  }

  v77 = 0;
  v78 = 0xE000000000000000;
  sub_22D81B838();

  v77 = 0xD000000000000015;
  v78 = 0x800000022D82C120;
  sub_22D7EB4B8();
  sub_22D81A398();
  v44 = sub_22D81B178();
  v46 = v45;

  MEMORY[0x2318D1A50](v44, v46);

  v47 = sub_22D81B2B8();

  v48 = v66;
  [v66 logInfo_];

  v49 = v67;
  swift_beginAccess();
  if (*(*v35 + 16))
  {
    goto LABEL_30;
  }

  v50 = sub_22D7EB950();
  v51 = [v50 identifier];
  if (v51)
  {
    v52 = v51;
    v53 = sub_22D81B2C8();
    v55 = v54;

    swift_beginAccess();
    v56 = v50;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v74 = *(v40 + 112);
    *(v40 + 112) = 0x8000000000000000;
    sub_22D80C83C(v56, v53, v55, v57);

    *(v40 + 112) = v74;
    swift_endAccess();
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_22D81B838();

    v75 = 0xD00000000000001DLL;
    v76 = 0x800000022D82C0E0;
    sub_22D7EB4B8();
    sub_22D81A398();
    v58 = sub_22D81B178();
    v60 = v59;

    MEMORY[0x2318D1A50](v58, v60);

    v61 = sub_22D81B2B8();

    [v48 &selRef_minute + 6];

    v62 = sub_22D81B4F8();
    (*(*(v62 - 8) + 56))(v49, 1, 1, v62);
    v63 = swift_allocObject();
    v63[2] = 0;
    v63[3] = 0;
    v63[4] = v40;
    sub_22D81A198();
    sub_22D7BDC88(0, 0, v49, &unk_22D825CF8, v63);

    sub_22D764440(v49, &unk_27DA01FF0, &qword_22D81FC70);
LABEL_30:
    __swift_destroy_boxed_opaque_existential_0(v79);
    return v40;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_22D81BB58();
  __break(1u);
  return result;
}

uint64_t sub_22D7EA4E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7E292C(a1, v4, v5, v6);
}

uint64_t sub_22D7EA598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D7E2C68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D7EA660(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7E3074(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7EA73C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7E3594(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7EA818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7E3AF4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7EA8F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7E40AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7EA9E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7E46FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7EAABC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7E4D68(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7EAB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7E5368(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7EAC74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7E5A74(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7EAD50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7E6074(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7EAE2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D7E67AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D7EAF08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D7E6DAC(a1, v4, v5, v7, v6);
}

uint64_t sub_22D7EAFC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D7E6FB0(a1, v4, v5, v7, v6);
}

uint64_t sub_22D7EB088(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7E72B0(a1, v4, v5, v6);
}

unint64_t sub_22D7EB4B8()
{
  result = qword_280CD2D80;
  if (!qword_280CD2D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CD2D80);
  }

  return result;
}

unint64_t sub_22D7EB504()
{
  result = qword_27DA03850;
  if (!qword_27DA03850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03850);
  }

  return result;
}

BOOL sub_22D7EB558(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_22D81BB08() & 1;
    }
  }

  return result;
}

uint64_t sub_22D7EB5EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D7E8024(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D7EB6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_47Tm_0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_23Tm_0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_19Tm_1()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_7Tm_1()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_22D7EB8E4()
{
  result = qword_280CD1DD0;
  if (!qword_280CD1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD1DD0);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_22D81A198();
}

uint64_t sub_22D7EB950()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D296F8]) init];
  [v0 setOffset_];
  [v0 setCurrentInterval_];
  [v0 setPreviousLapsTotalInterval_];
  [v0 setState_];
  [v0 copy];
  sub_22D81B758();

  swift_unknownObjectRelease();
  sub_22D7EB4B8();
  swift_dynamicCast();
  return v2;
}

uint64_t sub_22D7EBA30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B0C;

  return sub_22D7E1CA0(a1, v4, v5, v6);
}

unint64_t sub_22D7EBB08()
{
  result = qword_27DA03900;
  if (!qword_27DA03900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03900);
  }

  return result;
}

unint64_t sub_22D7EBB60()
{
  result = qword_27DA03908;
  if (!qword_27DA03908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03908);
  }

  return result;
}

uint64_t sub_22D7EBBF4()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScheduledTask(uint64_t a1)
{
  result = qword_27DA03910;
  if (!qword_27DA03910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D7EBCEC(uint64_t a1)
{
  result = sub_22D81A918();
  if (v2 <= 0x3F)
  {
    result = sub_22D81A8C8();
    if (v3 <= 0x3F)
    {
      result = sub_22D7EBD88();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22D7EBD88()
{
  result = qword_27DA03920;
  if (!qword_27DA03920)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DA03920);
  }

  return result;
}

unint64_t sub_22D7EBDEC()
{
  result = qword_27DA03928;
  if (!qword_27DA03928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA03928);
  }

  return result;
}

uint64_t sub_22D7EBE40()
{
  sub_22D81BBC8();
  sub_22D81A918();
  sub_22D7EC0A4(&qword_27DA02650, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22D81B1D8();
  return sub_22D81BC18();
}

uint64_t sub_22D7EBEC8(uint64_t a1)
{
  sub_22D81A918();
  sub_22D7EC0A4(&qword_27DA02650, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_22D81B1D8();
}

uint64_t sub_22D7EBF4C(uint64_t a1)
{
  sub_22D81BBC8();
  sub_22D81A918();
  sub_22D7EC0A4(&qword_27DA02650, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22D81B1D8();
  return sub_22D81BC18();
}

BOOL sub_22D7EBFD0(uint64_t a1, uint64_t a2)
{
  sub_22D81A918();
  sub_22D7EC0A4(&qword_27DA02730, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return (sub_22D81B1F8() & 1) == 0;
}

uint64_t sub_22D7EC0A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void Date.solarTerminatorPath.getter(uint64_t a1@<X8>)
{
  v2 = COERCE_DOUBLE(sub_22D7EC2FC());
  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    *v3.i64 = v2;
    v22 = v3;
    v5 = sin((v2 + 284.0) * 0.98630137 * 0.0174532925) * 23.45;
    *v6.i64 = *v22.i64 - trunc(*v22.i64);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v8 = (*vbslq_s8(vnegq_f64(v7), v6, v22).i64 * 24.0 + -12.0) * 15.0;
    v9 = tan(v5 * 0.0174532925);
    v10 = 0;
    v11 = fabs(v5);
    v12 = v11 <= 10.0;
    if (v11 <= 10.0)
    {
      v13 = 1;
    }

    else
    {
      v13 = 3;
    }

    if (v11 > 15.0)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2 * (v11 > 10.0);
    }

    v15 = MEMORY[0x277D84F90];
    do
    {
      if (!(v10 % v13))
      {
        v17 = v10 + -180.0;
        v18 = 0.0;
        if (v9 != 0.0)
        {
          v19 = cos((v8 + v17) * 0.0174532925);
          v18 = atan(-v19 / v9) * 57.2957795;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_22D7ED7F4(0, *(v15 + 2) + 1, 1, v15);
        }

        v21 = *(v15 + 2);
        v20 = *(v15 + 3);
        if (v21 >= v20 >> 1)
        {
          v15 = sub_22D7ED7F4((v20 > 1), v21 + 1, 1, v15);
        }

        *(v15 + 2) = v21 + 1;
        v16 = &v15[16 * v21];
        *(v16 + 4) = v18;
        *(v16 + 5) = v17;
      }

      ++v10;
    }

    while (v10 != 361);
    *a1 = v5 > 0.0;
    *(a1 + 8) = v15;
    *(a1 + 16) = v14;
    *(a1 + 24) = v12;
  }
}

uint64_t sub_22D7EC2FC()
{
  v0 = sub_22D81A708();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v49 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22D81A968();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81AA48();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_22D81A8C8();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_22D81AAB8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v42 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - v24;
  sub_22D81AA78();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_22D764440(v15, &qword_27DA02958, &qword_22D822EC0);
    v26 = objc_opt_self();
    v27 = sub_22D81B2B8();
    [v26 logError_];

LABEL_5:
    *&result = 0.0;
    return result;
  }

  v42 = v1;
  v43 = v0;
  v28 = *(v17 + 32);
  v28(v23, v15, v16);
  v28(v25, v23, v16);
  sub_22D7ECA2C(v10);
  if ((*(v51 + 48))(v10, 1, v52) == 1)
  {
    (*(v17 + 8))(v25, v16);
    sub_22D764440(v10, &qword_27DA02000, &qword_22D81F160);
    goto LABEL_5;
  }

  (*(v51 + 32))(v50, v10, v52);
  v31 = v44;
  v30 = v45;
  (*(v44 + 104))(v5, *MEMORY[0x277CC9830], v45);
  v32 = v46;
  sub_22D81A978();
  (*(v31 + 8))(v5, v30);
  (*(v17 + 16))(v20, v25, v16);
  sub_22D81AA28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03048, &qword_22D822ED0);
  v33 = sub_22D81AA38();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22D81DF60;
  (*(v34 + 104))(v36 + v35, *MEMORY[0x277CC99A8], v33);
  sub_22D7DF8A4(v36);
  swift_setDeallocating();
  (*(v34 + 8))(v36 + v35, v33);
  swift_deallocClassInstance();
  v37 = v49;
  v38 = v50;
  sub_22D81A9A8();

  v39 = sub_22D81A6C8();
  LOBYTE(v36) = v40;
  v41 = v39 / 86400.0;
  (*(v42 + 8))(v37, v43);
  (*(v47 + 8))(v32, v48);
  (*(v51 + 8))(v38, v52);
  (*(v17 + 8))(v25, v16);
  if (v36)
  {
    *&result = 1.0;
  }

  else
  {
    *&result = v41 + 1.0;
  }

  return result;
}

uint64_t SolarTerminatorPath.init(isNorthernHemisphereSummer:coordinates:preferredRenderingMethod:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  return result;
}

uint64_t sub_22D7ECA2C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v44 - v2;
  v3 = sub_22D81A708();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81A968();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81AA48();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02958, &qword_22D822EC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v44 - v13;
  v15 = sub_22D81AAB8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v44 - v21;
  MEMORY[0x28223BE20](v20);
  v52 = &v44 - v23;
  sub_22D81AA78();
  v53 = v16;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_22D764440(v14, &qword_27DA02958, &qword_22D822EC0);
    v24 = objc_opt_self();
    v25 = sub_22D81B2B8();
    [v24 logError_];

    v26 = sub_22D81A8C8();
    return (*(*(v26 - 8) + 56))(v54, 1, 1, v26);
  }

  else
  {
    v45 = v5;
    v46 = v3;
    v28 = v53;
    v29 = *(v53 + 32);
    v29(v22, v14, v15);
    v30 = v52;
    v29(v52, v22, v15);
    (*(v7 + 104))(v9, *MEMORY[0x277CC9830], v6);
    v31 = v47;
    sub_22D81A978();
    (*(v7 + 8))(v9, v6);
    v32 = v28;
    v33 = v45;
    (*(v32 + 16))(v19, v30, v15);
    sub_22D81AA28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03048, &qword_22D822ED0);
    v34 = sub_22D81AA38();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_22D81DF60;
    (*(v35 + 104))(v37 + v36, *MEMORY[0x277CC9988], v34);
    sub_22D7DF8A4(v37);
    swift_setDeallocating();
    (*(v35 + 8))(v37 + v36, v34);
    swift_deallocClassInstance();
    sub_22D81A9B8();

    sub_22D81A698();
    sub_22D81A648();
    sub_22D81A668();
    sub_22D81A6B8();
    sub_22D81A6D8();
    v38 = v50;
    sub_22D81AA18();
    v39 = sub_22D81A8C8();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v38, 1, v39) == 1)
    {
      sub_22D764440(v38, &qword_27DA02000, &qword_22D81F160);
      v41 = objc_opt_self();
      v42 = sub_22D81B2B8();
      [v41 logError_];

      (*(v51 + 8))(v33, v46);
      (*(v48 + 8))(v31, v49);
      (*(v53 + 8))(v52, v15);
      return (*(v40 + 56))(v54, 1, 1, v39);
    }

    else
    {
      (*(v51 + 8))(v33, v46);
      (*(v48 + 8))(v31, v49);
      (*(v53 + 8))(v52, v15);
      v43 = v54;
      (*(v40 + 32))(v54, v38, v39);
      return (*(v40 + 56))(v43, 0, 1, v39);
    }
  }
}

BOOL static SolarTerminatorPath.PreferredRenderingMethod.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_22D7ED224(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

void SolarTerminatorPath.preferredRenderingMethod.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

char *sub_22D7ED274(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02010, &unk_22D81F258);
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

char *sub_22D7ED368(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038E0, &qword_22D825D10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_22D7ED494(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03890, &qword_22D825CB0);
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

void *sub_22D7ED618(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_22D7ED7F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03950, &unk_22D826120);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22D7ED8F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03940, &unk_22D826110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03948, &qword_22D826AD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s18MobileTimerSupport19SolarTerminatorPathV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2[2];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v31 = MEMORY[0x277D84F90];
    sub_22D7E8984(0, v4, 0);
    v5 = v31;
    v6 = v2 + 4;
    v7 = *(v31 + 16);
    v8 = v4;
    do
    {
      v9 = *v6;
      v10 = *(v31 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_22D7E8984((v10 > 1), v7 + 1, 1);
      }

      *(v31 + 16) = v7 + 1;
      *(v31 + 8 * v7 + 32) = v9;
      v6 += 2;
      ++v7;
      --v8;
    }

    while (v8);
  }

  v11 = v3[2];
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v32 = MEMORY[0x277D84F90];
    sub_22D7E8984(0, v11, 0);
    v12 = v32;
    v13 = v3 + 4;
    v14 = *(v32 + 16);
    v15 = v11;
    do
    {
      v16 = *v13;
      v17 = *(v32 + 24);
      if (v14 >= v17 >> 1)
      {
        sub_22D7E8984((v17 > 1), v14 + 1, 1);
      }

      *(v32 + 16) = v14 + 1;
      *(v32 + 8 * v14 + 32) = v16;
      v13 += 2;
      ++v14;
      --v15;
    }

    while (v15);
  }

  v18 = sub_22D7813CC(v5, v12);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v19 = MEMORY[0x277D84F90];
  if (v4)
  {
    v33 = MEMORY[0x277D84F90];
    sub_22D7E8984(0, v4, 0);
    v19 = v33;
    v20 = *(v33 + 16);
    v21 = v2 + 5;
    do
    {
      v22 = *v21;
      v23 = *(v33 + 24);
      if (v20 >= v23 >> 1)
      {
        sub_22D7E8984((v23 > 1), v20 + 1, 1);
      }

      *(v33 + 16) = v20 + 1;
      *(v33 + 8 * v20 + 32) = v22;
      v21 += 2;
      ++v20;
      --v4;
    }

    while (v4);
  }

  v25 = MEMORY[0x277D84F90];
  if (v11)
  {
    v34 = MEMORY[0x277D84F90];
    sub_22D7E8984(0, v11, 0);
    v25 = v34;
    v26 = *(v34 + 16);
    v27 = v3 + 5;
    do
    {
      v28 = *v27;
      v29 = *(v34 + 24);
      if (v26 >= v29 >> 1)
      {
        sub_22D7E8984((v29 > 1), v26 + 1, 1);
      }

      *(v34 + 16) = v26 + 1;
      *(v34 + 8 * v26 + 32) = v28;
      v27 += 2;
      ++v26;
      --v11;
    }

    while (v11);
  }

  v30 = sub_22D7813CC(v19, v25);

  return v30 & 1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_22D7EDD14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22D7EDD5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SolarTerminatorPath.PreferredRenderingMethod(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SolarTerminatorPath.PreferredRenderingMethod(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22D7EDE14(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D7EDE30(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t (*sub_22D7EDE60(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = a3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v9 = a3 + 32;
    v23 = result;
    v24 = a2;
    v25 = a3;
    v22 = v5;
    while (v7 < *(v4 + 16))
    {
      sub_22D75CCD8(v9, v31);
      v10 = v6(v31);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v31);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_22D749DBC(v31, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22D7E8AEC(0, *(v8 + 16) + 1, 1);
          v8 = v32;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_22D7E8AEC((v12 > 1), v13 + 1, 1);
          v8 = v32;
        }

        v14 = __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
        v26 = &v22;
        MEMORY[0x28223BE20](v14);
        v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v16);
        v18 = *v16;
        v19 = *(v16 + 1);
        v20 = *(v16 + 2);
        LOBYTE(v16) = v16[24];
        v28 = &type metadata for AlarmActivityProxy;
        v29 = &off_2840DAAC0;
        v21 = swift_allocObject();
        *&v27 = v21;
        *(v21 + 16) = v18;
        *(v21 + 24) = v19;
        *(v21 + 32) = v20;
        *(v21 + 40) = v16;
        *(v8 + 16) = v13 + 1;
        sub_22D749DBC(&v27, v8 + 40 * v13 + 32);
        result = __swift_destroy_boxed_opaque_existential_0(v30);
        v4 = v25;
        v6 = v23;
        v5 = v22;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v31);
      }

      ++v7;
      v9 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_22D7EE0E0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22D792FEC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_22D7FD4C8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22D7EE164(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v49 = a2;
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0);
  v51 = *(v7 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v48 - v11;
  v66 = type metadata accessor for AlarmActivityAttributes(0);
  MEMORY[0x28223BE20](v66);
  v61 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_22D81B838();

  v62 = 0x676E697461647075;
  v63 = 0xE900000000000020;
  v57 = v3;
  v14 = *(v3 + 112);
  v15 = *(v3 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v14, v15);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  v55 = a1;
  v16 = &a1[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 1);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v17, v18);

  v19 = sub_22D81B2B8();

  [v13 logInfo_];

  v20 = *(v16 + 1);
  v60 = *v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03300, &qword_22D823E48);
  sub_22D81A398();
  v21 = sub_22D81AAC8();
  v22 = v21;
  v56 = v5;
  v54 = v9;
  if (v21 >> 62)
  {
LABEL_20:
    v23 = sub_22D81B938();
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_3:
      v24 = 0;
      v58 = v22 & 0xFFFFFFFFFFFFFF8;
      v59 = v22 & 0xC000000000000001;
      do
      {
        if (v59)
        {
          v25 = MEMORY[0x2318D1F70](v24, v22);
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v34 = v55;
            goto LABEL_23;
          }
        }

        else
        {
          if (v24 >= *(v58 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v25 = *(v22 + 8 * v24 + 32);
          sub_22D81A198();
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_16;
          }
        }

        v27 = v61;
        sub_22D81AAD8();
        v28 = *(v27 + *(v66 + 20));
        sub_22D803468(v27, type metadata accessor for AlarmActivityAttributes);
        v29 = &v28[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
        swift_beginAccess();
        v31 = *v29;
        v30 = *(v29 + 1);
        sub_22D81A398();

        if (v31 == v60 && v30 == v20)
        {
          goto LABEL_17;
        }

        v33 = sub_22D81BB08();

        if (v33)
        {
          goto LABEL_18;
        }

        ++v24;
      }

      while (v26 != v23);
    }
  }

  v34 = v55;
  v35 = v56;
  result = sub_22D7F0FC8(v55, v49);
  if (!v35)
  {
    v25 = result;
LABEL_23:
    v37 = v50;
    v38 = v51;
    v39 = sub_22D81B4F8();
    v40 = v53;
    (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
    v41 = v37;
    v42 = v54;
    sub_22D7640C4(v41, v54, &qword_27DA03368, &qword_22D824BF0);
    v43 = sub_22D80383C(&qword_280CD1F08, 255, type metadata accessor for AlarmActivityProvider, &unk_22D824904);
    v44 = (*(v38 + 80) + 56) & ~*(v38 + 80);
    v45 = swift_allocObject();
    v46 = v57;
    v45[2] = v57;
    v45[3] = v43;
    v45[4] = v25;
    v45[5] = v46;
    v45[6] = v34;
    sub_22D79DD0C(v42, v45 + v44, &qword_27DA03368, &qword_22D824BF0);
    swift_retain_n();
    v47 = v34;
    sub_22D75D890(0, 0, v40, &unk_22D8268D8, v45);
  }

  return result;
}

uint64_t sub_22D7EE6EC(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v49 = a2;
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0);
  v51 = *(v7 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v48 - v11;
  v66 = type metadata accessor for TimerActivityAttributes(0);
  MEMORY[0x28223BE20](v66);
  v61 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_22D81B838();

  v62 = 0x676E697461647075;
  v63 = 0xE900000000000020;
  v57 = v3;
  v14 = *(v3 + 112);
  v15 = *(v3 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v14, v15);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  v55 = a1;
  v16 = &a1[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id];
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 1);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v17, v18);

  v19 = sub_22D81B2B8();

  [v13 logInfo_];

  v20 = *(v16 + 1);
  v60 = *v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F0, &unk_22D823E30);
  sub_22D81A398();
  v21 = sub_22D81AAC8();
  v22 = v21;
  v56 = v5;
  v54 = v9;
  if (v21 >> 62)
  {
LABEL_20:
    v23 = sub_22D81B938();
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_3:
      v24 = 0;
      v58 = v22 & 0xFFFFFFFFFFFFFF8;
      v59 = v22 & 0xC000000000000001;
      do
      {
        if (v59)
        {
          v25 = MEMORY[0x2318D1F70](v24, v22);
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v34 = v55;
            goto LABEL_23;
          }
        }

        else
        {
          if (v24 >= *(v58 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v25 = *(v22 + 8 * v24 + 32);
          sub_22D81A198();
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_16;
          }
        }

        v27 = v61;
        sub_22D81AAD8();
        v28 = *(v27 + *(v66 + 20));
        sub_22D803468(v27, type metadata accessor for TimerActivityAttributes);
        v29 = &v28[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId];
        swift_beginAccess();
        v31 = *v29;
        v30 = *(v29 + 1);
        sub_22D81A398();

        if (v31 == v60 && v30 == v20)
        {
          goto LABEL_17;
        }

        v33 = sub_22D81BB08();

        if (v33)
        {
          goto LABEL_18;
        }

        ++v24;
      }

      while (v26 != v23);
    }
  }

  v34 = v55;
  v35 = v56;
  result = sub_22D7F0768(v55, v49);
  if (!v35)
  {
    v25 = result;
LABEL_23:
    v37 = v50;
    v38 = v51;
    v39 = sub_22D81B4F8();
    v40 = v53;
    (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
    v41 = v37;
    v42 = v54;
    sub_22D7640C4(v41, v54, &qword_27DA03368, &qword_22D824BF0);
    v43 = sub_22D80383C(&qword_280CD28D0, 255, type metadata accessor for TimerActivityProvider, &unk_22D8248C0);
    v44 = (*(v38 + 80) + 56) & ~*(v38 + 80);
    v45 = swift_allocObject();
    v46 = v57;
    v45[2] = v57;
    v45[3] = v43;
    v45[4] = v25;
    v45[5] = v46;
    v45[6] = v34;
    sub_22D79DD0C(v42, v45 + v44, &qword_27DA03368, &qword_22D824BF0);
    swift_retain_n();
    v47 = v34;
    sub_22D75D890(0, 0, v40, &unk_22D8268A8, v45);
  }

  return result;
}

uint64_t sub_22D7EEC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0);
  v45 = *(v5 - 8);
  v48 = *(v45 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = &v41 - v6;
  v7 = sub_22D81AFD8();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = v8;
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = &v41 - v10;
  v11 = sub_22D81A918();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_22D81B838();

  v53 = 0x676E697461647075;
  v54 = 0xE900000000000020;
  v16 = *(v3 + 168);
  v17 = *(v3 + 176);
  v50 = v3;
  sub_22D81A398();
  MEMORY[0x2318D1A50](v16, v17);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  v18 = a1;
  sub_22D81AF98();
  v19 = sub_22D81A8D8();
  v21 = v20;
  v22 = *(v12 + 8);
  v22(v14, v11);
  MEMORY[0x2318D1A50](v19, v21);

  v23 = sub_22D81B2B8();

  [v15 logInfo_];

  sub_22D81AF98();
  v24 = sub_22D81A8D8();
  v26 = v25;
  v22(v14, v11);
  v27 = sub_22D8020A8(v24, v26);

  v51 = v27;
  if (v27)
  {
    v28 = v50;
LABEL_3:
    v29 = sub_22D81B4F8();
    (*(*(v29 - 8) + 56))(v55, 1, 1, v29);
    v30 = v46;
    v31 = v47;
    v32 = v43;
    (*(v46 + 16))(v43, v18, v47);
    v33 = v49;
    sub_22D7640C4(v44, v49, &qword_27DA03368, &qword_22D824BF0);
    v35 = sub_22D80383C(qword_280CD1BA8, v34, type metadata accessor for ActivityAttributesProvider, &unk_22D8266EC);
    v36 = (*(v30 + 80) + 48) & ~*(v30 + 80);
    v37 = (v42 + *(v45 + 80) + v36) & ~*(v45 + 80);
    v38 = swift_allocObject();
    *(v38 + 2) = v28;
    *(v38 + 3) = v35;
    *(v38 + 4) = v51;
    *(v38 + 5) = v28;
    (*(v30 + 32))(&v38[v36], v32, v31);
    sub_22D79DD0C(v33, &v38[v37], &qword_27DA03368, &qword_22D824BF0);
    swift_retain_n();
    sub_22D75D890(0, 0, v55, &unk_22D826848, v38);
  }

  v28 = v50;
  v40 = v52;
  result = sub_22D7F184C(v18, v41);
  v51 = result;
  if (!v40)
  {
    v52 = 0;
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_22D7EF200(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t, char *))
{
  v35 = a5;
  v27 = a3;
  v28 = a4;
  v33 = a2;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_22D81AC48();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D81AC38();
  MEMORY[0x28223BE20](v11 - 8);
  v29 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D81A768();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  MEMORY[0x28223BE20](v14);
  v15 = sub_22D81AC68();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_opt_self();
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_22D81B838();

  v36 = 0x676E697472656C61;
  v37 = 0xE900000000000020;
  v34 = v5;
  v21 = *(v5 + 112);
  v20 = *(v5 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v21, v20);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  v22 = (v40 + *v28);
  swift_beginAccess();
  v24 = *v22;
  v23 = v22[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v24, v23);

  v25 = sub_22D81B2B8();

  [v19 logInfo_];

  sub_22D81A738();
  sub_22D81A738();
  v38 = &type metadata for MobileTimerFeatureFlags;
  v39 = sub_22D76B44C();
  LOBYTE(v36) = 1;
  LOBYTE(v23) = sub_22D81AC78();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  if (v23)
  {
    sub_22D81AC08();
  }

  else
  {
    sub_22D81AC18();
  }

  (*(v31 + 104))(v30, *MEMORY[0x277CB9838], v32);
  sub_22D81AC58();
  (*(v16 + 16))(v8, v18, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v35(v40, v33, v8);
  sub_22D764440(v8, &qword_27DA03368, &qword_22D824BF0);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_22D7EF688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[1] = a3;
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03368, &qword_22D824BF0);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v30 - v6;
  v37 = sub_22D81AC48();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v34 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D81AC38();
  MEMORY[0x28223BE20](v8 - 8);
  v33 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D81A768();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v32 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v36 = sub_22D81AC68();
  v13 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D81A918();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = objc_opt_self();
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_22D81B838();

  v42 = 0x676E697472656C61;
  v43 = 0xE900000000000020;
  v41 = v3;
  v20 = *(v3 + 168);
  v21 = *(v3 + 176);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v20, v21);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  v38 = a1;
  sub_22D81AF98();
  v22 = sub_22D81A8D8();
  v24 = v23;
  (*(v17 + 8))(v19, v16);
  MEMORY[0x2318D1A50](v22, v24);

  v25 = sub_22D81B2B8();

  [v31 logInfo_];

  sub_22D81A738();
  sub_22D81A738();
  v44 = &type metadata for MobileTimerFeatureFlags;
  v45 = sub_22D76B44C();
  LOBYTE(v42) = 1;
  v26 = sub_22D81AC78();
  __swift_destroy_boxed_opaque_existential_0(&v42);
  if (v26)
  {
    sub_22D81AC08();
  }

  else
  {
    sub_22D81AC18();
  }

  (*(v35 + 104))(v34, *MEMORY[0x277CB9838], v37);
  sub_22D81AC58();
  v27 = v39;
  v28 = v36;
  (*(v13 + 16))(v39, v15, v36);
  (*(v13 + 56))(v27, 0, 1, v28);
  sub_22D7EEC74(v38, v40, v27);
  sub_22D764440(v27, &qword_27DA03368, &qword_22D824BF0);
  return (*(v13 + 8))(v15, v28);
}

uint64_t sub_22D7EFBAC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_22D81B838();

  v18 = 0x6E696873696E6966;
  v19 = 0xEA00000000002067;
  v11 = *(v2 + 168);
  v12 = *(v2 + 176);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v11, v12);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  MEMORY[0x2318D1A50](a1, a2);
  v13 = sub_22D81B2B8();

  [v10 logInfo_];

  result = sub_22D7F45C8(a1, a2);
  if (!v4)
  {
    v15 = result;
    v16 = sub_22D81B4F8();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;
    sub_22D75D890(0, 0, v9, &unk_22D826828, v17);
  }

  return result;
}

uint64_t sub_22D7EFDB0(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v7 - 8);
  v37[0] = v37 - v8;
  v42 = type metadata accessor for AlarmActivityAttributes(0);
  MEMORY[0x28223BE20](v42);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_22D81B838();

  v47 = 0x6E696873696E6966;
  v48 = 0xEA00000000002067;
  v38 = v2;
  v13 = *(v2 + 112);
  v12 = *(v2 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v13, v12);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  v43 = a1;
  v44 = a2;
  MEMORY[0x2318D1A50](a1, a2);
  v14 = sub_22D81B2B8();

  [v11 logInfo_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03300, &qword_22D823E48);
  v15 = sub_22D81AAC8();
  v16 = v15;
  v37[1] = v4;
  v39 = v11;
  if (v15 >> 62)
  {
LABEL_20:
    v17 = sub_22D81B938();
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_3:
      v18 = 0;
      v40 = v16 & 0xFFFFFFFFFFFFFF8;
      v41 = v16 & 0xC000000000000001;
      do
      {
        if (v41)
        {
          v19 = MEMORY[0x2318D1F70](v18, v16);
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v27 = sub_22D81B4F8();
            v28 = v37[0];
            (*(*(v27 - 8) + 56))(v37[0], 1, 1, v27);
            v29 = swift_allocObject();
            v29[2] = 0;
            v29[3] = 0;
            v29[4] = v19;
            sub_22D75D890(0, 0, v28, &unk_22D8268C8, v29);
          }
        }

        else
        {
          if (v18 >= *(v40 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v19 = *(v16 + 8 * v18 + 32);
          sub_22D81A198();
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_16;
          }
        }

        sub_22D81AAD8();
        v21 = *&v10[*(v42 + 20)];
        sub_22D803468(v10, type metadata accessor for AlarmActivityAttributes);
        v22 = &v21[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_alarmId];
        swift_beginAccess();
        v24 = *v22;
        v23 = *(v22 + 1);
        sub_22D81A398();

        if (v24 == v43 && v23 == v44)
        {
          goto LABEL_17;
        }

        v26 = sub_22D81BB08();

        if (v26)
        {
          goto LABEL_18;
        }

        ++v18;
      }

      while (v20 != v17);
    }
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  sub_22D81B838();
  v31 = v38;
  v49 = v38;
  type metadata accessor for AlarmActivityProvider();
  sub_22D81B908();
  MEMORY[0x2318D1A50](0xD00000000000002ALL, 0x800000022D82C3D0);
  v33 = *(v31 + 112);
  v32 = *(v31 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v33, v32);

  MEMORY[0x2318D1A50](0x203A646920, 0xE500000000000000);
  MEMORY[0x2318D1A50](v43, v44);
  v34 = v45;
  v35 = v46;
  sub_22D81A398();
  v36 = sub_22D81B2B8();

  [v39 logError_];

  sub_22D7CDE20(v34, v35);

  return swift_willThrow();
}

uint64_t sub_22D7F028C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v7 - 8);
  v37[0] = v37 - v8;
  v42 = type metadata accessor for TimerActivityAttributes(0);
  MEMORY[0x28223BE20](v42);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_22D81B838();

  v47 = 0x6E696873696E6966;
  v48 = 0xEA00000000002067;
  v38 = v2;
  v13 = *(v2 + 112);
  v12 = *(v2 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v13, v12);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  v43 = a1;
  v44 = a2;
  MEMORY[0x2318D1A50](a1, a2);
  v14 = sub_22D81B2B8();

  [v11 logInfo_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F0, &unk_22D823E30);
  v15 = sub_22D81AAC8();
  v16 = v15;
  v37[1] = v4;
  v39 = v11;
  if (v15 >> 62)
  {
LABEL_20:
    v17 = sub_22D81B938();
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_3:
      v18 = 0;
      v40 = v16 & 0xFFFFFFFFFFFFFF8;
      v41 = v16 & 0xC000000000000001;
      do
      {
        if (v41)
        {
          v19 = MEMORY[0x2318D1F70](v18, v16);
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v27 = sub_22D81B4F8();
            v28 = v37[0];
            (*(*(v27 - 8) + 56))(v37[0], 1, 1, v27);
            v29 = swift_allocObject();
            v29[2] = 0;
            v29[3] = 0;
            v29[4] = v19;
            sub_22D75D890(0, 0, v28, &unk_22D826888, v29);
          }
        }

        else
        {
          if (v18 >= *(v40 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v19 = *(v16 + 8 * v18 + 32);
          sub_22D81A198();
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_16;
          }
        }

        sub_22D81AAD8();
        v21 = *&v10[*(v42 + 20)];
        sub_22D803468(v10, type metadata accessor for TimerActivityAttributes);
        v22 = &v21[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_timerId];
        swift_beginAccess();
        v24 = *v22;
        v23 = *(v22 + 1);
        sub_22D81A398();

        if (v24 == v43 && v23 == v44)
        {
          goto LABEL_17;
        }

        v26 = sub_22D81BB08();

        if (v26)
        {
          goto LABEL_18;
        }

        ++v18;
      }

      while (v20 != v17);
    }
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  sub_22D81B838();
  v31 = v38;
  v49 = v38;
  type metadata accessor for TimerActivityProvider();
  sub_22D81B908();
  MEMORY[0x2318D1A50](0xD00000000000002ALL, 0x800000022D82C3D0);
  v33 = *(v31 + 112);
  v32 = *(v31 + 120);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v33, v32);

  MEMORY[0x2318D1A50](0x203A646920, 0xE500000000000000);
  MEMORY[0x2318D1A50](v43, v44);
  v34 = v45;
  v35 = v46;
  sub_22D81A398();
  v36 = sub_22D81B2B8();

  [v39 logError_];

  sub_22D7CDE20(v34, v35);

  return swift_willThrow();
}

uint64_t sub_22D7F0768(_BYTE *a1, uint64_t a2)
{
  v4 = v3;
  v58 = a2;
  v72 = sub_22D81ABA8();
  v6 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038B0, &qword_22D825CD0);
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = sub_22D81A8C8();
  MEMORY[0x28223BE20](v11 - 8);
  v62 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D81ABC8();
  MEMORY[0x28223BE20](v13 - 8);
  v61 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032E8, &qword_22D823E28);
  MEMORY[0x28223BE20](v15 - 8);
  v59 = &v51 - v16;
  v55 = type metadata accessor for TimerActivityAttributes(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039D0, &unk_22D8268B0);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v51 - v18;
  v19 = objc_opt_self();
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_22D81B838();

  v74 = 0x676E697461657263;
  v75 = 0xE900000000000020;
  v20 = *(v2 + 112);
  v21 = *(v2 + 120);
  v73 = v2;
  sub_22D81A398();
  MEMORY[0x2318D1A50](v20, v21);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  v22 = &a1[OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_id];
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v23, v24);

  v25 = sub_22D81B2B8();

  [v19 logInfo_];

  v26 = OBJC_IVAR____TtC18MobileTimerSupport12TimerContext_firing;
  swift_beginAccess();
  v60 = a1;
  v27 = sub_22D7F2574(a1[v26]);
  v28 = *(v27 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v52 = v4;
    v78 = MEMORY[0x277D84F90];
    sub_22D7E8B2C(0, v28, 0);
    v30 = 0;
    v29 = v78;
    v66 = v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v67 = v27;
    v64 = v28;
    v65 = v6 + 16;
    v68 = v6;
    v63 = v6 + 8;
    v31 = v10;
    while (v30 < *(v27 + 16))
    {
      v32 = v68;
      v33 = *(v68 + 16);
      v35 = v71;
      v34 = v72;
      v33(v71, v66 + *(v68 + 72) * v30, v72);
      v36 = v31 + *(v70 + 48);
      v33(v31, v35, v34);
      v37 = *(v73 + 136);
      *v36 = *(v73 + 128);
      *(v36 + 8) = v37;
      *(v36 + 16) = 1;
      v38 = *(v32 + 8);
      sub_22D81A398();
      v38(v35, v34);
      v78 = v29;
      v40 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22D7E8B2C((v39 > 1), v40 + 1, 1);
        v29 = v78;
      }

      ++v30;
      *(v29 + 16) = v40 + 1;
      sub_22D79DD0C(v31, v29 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v40, &qword_27DA038B0, &qword_22D825CD0);
      v27 = v67;
      if (v64 == v30)
      {
        v4 = v52;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    if (*(v29 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B0, &unk_22D826AE0);
      v41 = sub_22D81B978();
    }

    else
    {
      v41 = MEMORY[0x277D84F98];
    }

    v78 = v41;
    sub_22D7FCF38(v29, 1, &v78);
    v72 = v4;
    if (!v4)
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F0, &unk_22D823E30);
      sub_22D8037D4(v58, v54, type metadata accessor for TimerActivityAttributes);
      v42 = v73;
      sub_22D7F3874(v60);
      sub_22D81A198();
      sub_22D81ABB8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021D0, &qword_22D826860);
      v43 = *(sub_22D81AB58() - 8);
      v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_22D81DF60;
      v46 = (v45 + v44);
      v47 = *(v42 + 136);
      *v46 = *(v42 + 128);
      v46[1] = v47;
      (*(v43 + 104))();
      sub_22D81A398();
      sub_22D81A888();
      sub_22D80383C(qword_280CD27C0, 255, type metadata accessor for TimerActivityAttributes, &protocol conformance descriptor for TimerActivityAttributes);
      v48 = v53;
      sub_22D81AAF8();
      v49 = sub_22D81AB48();
      (*(v56 + 8))(v48, v57);
      return v49;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_22D7F0FC8(_BYTE *a1, uint64_t a2)
{
  v4 = v3;
  v59 = a2;
  v77 = sub_22D81ABA8();
  v6 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038B0, &qword_22D825CD0);
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = sub_22D81A8C8();
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D81ABC8();
  MEMORY[0x28223BE20](v13 - 8);
  v67 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA032F8, &qword_22D823E40);
  MEMORY[0x28223BE20](v15 - 8);
  v66 = &v56 - v16;
  v60 = type metadata accessor for AlarmActivityAttributes(0);
  MEMORY[0x28223BE20](v60);
  v65 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039D8, &qword_22D8268E0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v58 = &v56 - v18;
  v19 = objc_opt_self();
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_22D81B838();

  v79 = 0x676E697461657263;
  v80 = 0xE900000000000020;
  v20 = v2[14];
  v21 = v2[15];
  v78 = v2;
  sub_22D81A398();
  MEMORY[0x2318D1A50](v20, v21);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  v22 = &a1[OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_id];
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  sub_22D81A398();
  MEMORY[0x2318D1A50](v23, v24);

  v25 = sub_22D81B2B8();

  [v19 logInfo_];

  v26 = OBJC_IVAR____TtC18MobileTimerSupport12AlarmContext_isFiring;
  swift_beginAccess();
  v61 = a1;
  v27 = sub_22D7F2574(a1[v26]);
  v28 = *(v27 + 16);
  v29 = MEMORY[0x277D84F90];
  if (v28)
  {
    v57 = v4;
    v83 = MEMORY[0x277D84F90];
    v72 = v28;
    sub_22D7E8B2C(0, v28, 0);
    v30 = 0;
    v29 = v83;
    v71 = v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v69 = v27;
    v70 = v6 + 16;
    v73 = v6;
    v68 = v6 + 8;
    v31 = v10;
    while (v30 < *(v27 + 16))
    {
      v32 = v73;
      v33 = *(v73 + 16);
      v35 = v76;
      v34 = v77;
      v33(v76, v71 + *(v73 + 72) * v30, v77);
      v36 = v31 + *(v75 + 48);
      v33(v31, v35, v34);
      v37 = v78[17];
      *v36 = v78[16];
      *(v36 + 8) = v37;
      *(v36 + 16) = 1;
      v38 = *(v32 + 8);
      sub_22D81A398();
      v38(v35, v34);
      v83 = v29;
      v40 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22D7E8B2C((v39 > 1), v40 + 1, 1);
        v29 = v83;
      }

      ++v30;
      *(v29 + 16) = v40 + 1;
      sub_22D79DD0C(v31, v29 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v40, &qword_27DA038B0, &qword_22D825CD0);
      v27 = v69;
      if (v72 == v30)
      {
        v4 = v57;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    if (*(v29 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B0, &unk_22D826AE0);
      v41 = sub_22D81B978();
    }

    else
    {
      v41 = MEMORY[0x277D84F98];
    }

    v83 = v41;
    sub_22D7FCF38(v29, 1, &v83);
    v77 = v4;
    if (!v4)
    {
      v75 = v83;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03300, &qword_22D823E48);
      sub_22D8037D4(v59, v65, type metadata accessor for AlarmActivityAttributes);
      v42 = v78;
      sub_22D7F3B5C(v61);
      sub_22D81A198();
      sub_22D81ABB8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021D0, &qword_22D826860);
      v43 = sub_22D81AB58();
      v44 = *(v43 - 8);
      v45 = *(v44 + 72);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_22D821040;
      v48 = (v47 + v46);
      v49 = v42[17];
      *v48 = v42[16];
      v48[1] = v49;
      v50 = *(v44 + 104);
      (v50)(v48, *MEMORY[0x277CB9338], v43);
      v51 = (v48 + v45);
      v52 = v42[19];
      *v51 = v42[18];
      v51[1] = v52;
      v50();
      sub_22D81A398();
      sub_22D81A398();
      sub_22D81A888();
      sub_22D80383C(qword_280CD1C90, 255, type metadata accessor for AlarmActivityAttributes, &protocol conformance descriptor for AlarmActivityAttributes);
      v53 = v58;
      sub_22D81AAF8();
      v54 = sub_22D81AB48();
      (*(v62 + 8))(v53, v63);
      return v54;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_22D7F184C(uint64_t a1, uint64_t a2)
{
  v124 = a2;
  v135 = sub_22D81ABA8();
  v137 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA038B0, &qword_22D825CD0);
  v132 = *(v5 - 8);
  v133 = v5;
  MEMORY[0x28223BE20](v5);
  v104 = &v99 - v6;
  v7 = sub_22D81A8C8();
  MEMORY[0x28223BE20](v7 - 8);
  v103 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D81ABC8();
  MEMORY[0x28223BE20](v9 - 8);
  v120 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03998, &qword_22D826818);
  MEMORY[0x28223BE20](v11 - 8);
  v119 = &v99 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039A8, &unk_22D826850);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v99 - v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03648, &qword_22D825560);
  v115 = *(v127 - 8);
  v14 = MEMORY[0x28223BE20](v127);
  v118 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v99 - v16;
  v17 = sub_22D81AF78();
  v126 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v112 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v111 = &v99 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v99 - v22;
  v24 = sub_22D81A918();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v110 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v99 - v28;
  v136 = objc_opt_self();
  v138 = 0;
  v139 = 0xE000000000000000;
  sub_22D81B838();

  v138 = 0x676E697461657263;
  v139 = 0xE900000000000020;
  v125 = v2;
  v30 = *(v2 + 168);
  v31 = *(v2 + 176);
  sub_22D81A398();
  MEMORY[0x2318D1A50](v30, v31);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C3B0);
  sub_22D81AF98();
  v32 = sub_22D81A8D8();
  v34 = v33;
  v35 = *(v25 + 8);
  v99 = v29;
  v123 = v25 + 8;
  v35(v29, v24);
  v36 = v35;
  MEMORY[0x2318D1A50](v32, v34);

  v37 = sub_22D81B2B8();

  [v136 logInfo_];

  v117 = a1;
  sub_22D81AF88();
  v38 = v126;
  v39 = *(v126 + 88);
  v109 = v126 + 88;
  v108 = v39;
  v40 = v39(v23, v17);
  v105 = *MEMORY[0x277CB9A00];
  LODWORD(a1) = v40 == v105;
  v41 = *(v38 + 8);
  v113 = v17;
  v107 = v38 + 8;
  v106 = v41;
  v41(v23, v17);
  v42 = sub_22D7F2574(a1);
  v43 = v42[2];
  v44 = MEMORY[0x277D84F90];
  v121 = v24;
  v122 = v36;
  v136 = v42;
  if (v43)
  {
    v45 = v42;
    v138 = MEMORY[0x277D84F90];
    sub_22D7E8B2C(0, v43, 0);
    v46 = 0;
    v47 = v137;
    v44 = v138;
    v130 = v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v128 = v137 + 8;
    v129 = v137 + 16;
    v48 = v125;
    v49 = v104;
    v131 = v43;
    while (v46 < v45[2])
    {
      v50 = &v130[*(v47 + 72) * v46];
      v51 = *(v137 + 16);
      v53 = v134;
      v52 = v135;
      v51(v134, v50, v135);
      v54 = v49 + *(v133 + 48);
      v51(v49, v53, v52);
      v47 = v137;
      v55 = *(v48 + 192);
      *v54 = *(v48 + 184);
      *(v54 + 8) = v55;
      *(v54 + 16) = 1;
      v56 = *(v47 + 8);
      sub_22D81A398();
      v56(v53, v52);
      v138 = v44;
      v58 = *(v44 + 16);
      v57 = *(v44 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_22D7E8B2C((v57 > 1), v58 + 1, 1);
        v47 = v137;
        v44 = v138;
      }

      ++v46;
      *(v44 + 16) = v58 + 1;
      sub_22D79DD0C(v49, v44 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v58, &qword_27DA038B0, &qword_22D825CD0);
      v45 = v136;
      if (v131 == v46)
      {
        v59 = v116;
        v24 = v121;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_18:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v59 = v116;
LABEL_9:
  v60 = v124;
  if (*(v44 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA039B0, &unk_22D826AE0);
    v61 = sub_22D81B978();
  }

  else
  {
    v61 = MEMORY[0x277D84F98];
  }

  v62 = v117;
  v63 = v127;
  v138 = v61;
  sub_22D7FCF38(v44, 1, &v138);
  v135 = v59;
  if (v59)
  {
    goto LABEL_18;
  }

  v137 = v138;
  v64 = v115;
  v65 = v114;
  v134 = *(v115 + 16);
  (v134)(v114, v60, v63);
  v66 = v110;
  sub_22D81AF98();
  v67 = sub_22D81A8D8();
  v69 = v68;
  v70 = v66;
  v71 = v62;
  v122(v70, v24);
  v72 = sub_22D80243C(v62);
  v73 = v111;
  sub_22D81AF88();
  v74 = v112;
  v75 = v73;
  v76 = v113;
  (*(v126 + 32))(v112, v75, v113);
  v77 = v108(v74, v76);
  v78 = v77 == v105;
  v106(v74, v76);
  v79 = v78;
  v80 = v127;
  v81 = v125;
  LOBYTE(v67) = sub_22D7FE0C4(v67, v69, v79, v65, v125, v72);

  (*(v64 + 8))(v65, v80);
  if (v67)
  {
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA03358, &qword_22D824A70);
    (v134)(v118, v124, v80);
    sub_22D7F3E44(v71, v119);
    sub_22D81A198();
    sub_22D81ABB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021D0, &qword_22D826860);
    v82 = sub_22D81AB58();
    v83 = *(v82 - 8);
    v84 = *(v83 + 72);
    v85 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_22D821040;
    v87 = (v86 + v85);
    v88 = v81[24];
    *v87 = v81[23];
    v87[1] = v88;
    v89 = *(v83 + 104);
    (v89)(v87, *MEMORY[0x277CB9338], v82);
    v90 = (v87 + v84);
    v91 = v81[26];
    *v90 = v81[25];
    v90[1] = v91;
    v89();
    sub_22D81A398();
    sub_22D81A398();
    sub_22D81A888();
    sub_22D8000B0();
    v92 = v100;
    sub_22D81AAF8();
    v93 = sub_22D81AB48();
    (*(v101 + 8))(v92, v102);
  }

  else
  {

    v138 = 0;
    v139 = 0xE000000000000000;
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD000000000000031, 0x800000022D82C460);
    v94 = v99;
    sub_22D81AF98();
    v95 = sub_22D81A8D8();
    v97 = v96;
    v122(v94, v121);
    MEMORY[0x2318D1A50](v95, v97);

    MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D82C4A0);
    v93 = v139;
    sub_22D7CDE20(v138, v139);

    swift_willThrow();
  }

  return v93;
}