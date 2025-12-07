uint64_t sub_214C94F58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_214C94FC0(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  sub_214C94DA0();
  return swift_unknownObjectRelease();
}

void (*sub_214C95044(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL, 42342);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_214C950F0;
}

void sub_214C950F0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_214A759F4();
    swift_endAccess();
  }

  else
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_endAccess();
    sub_214C94DA0();
  }

  free(v2);
}

double sub_214C951B0@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_214C95294();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214C9521C(void *a1, void *a2)
{
  sub_214A671A8(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214C953FC(v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214C95294()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_collectionView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

unint64_t sub_214C95304()
{
  v2 = qword_27CA383C8;
  if (!qword_27CA383C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA383C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C95380()
{
  v2 = qword_27CA383D0;
  if (!qword_27CA383D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA383D0);
    return WitnessTable;
  }

  return v2;
}

double sub_214C953FC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_collectionView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C95500()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_dataSource);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C95570(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_dataSource);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214C95674()
{
  v16 = 0;
  v1 = sub_214CCD2B4();
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v10 = v4 - v9;
  v16 = v0;
  v11 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___headerIdentifier);
  v12 = &v15;
  swift_beginAccess();
  v13 = *v11;
  MEMORY[0x277D82BE0](v13);
  swift_endAccess();
  if (v13)
  {
    v7 = v13;
    return v13;
  }

  else
  {
    type metadata accessor for PriorityMessageListHeaderFooterIdentifier(0);
    sub_214CCD2A4();
    v5 = sub_214C93B08(v10);
    MEMORY[0x277D82BE0](v5);
    v4[0] = v8 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___headerIdentifier;
    v4[1] = &v14;
    swift_beginAccess();
    v2 = *v4[0];
    *v4[0] = v5;
    MEMORY[0x277D82BD8](v2);
    swift_endAccess();
    return v5;
  }
}

double sub_214C957F0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___headerIdentifier);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double (*sub_214C95888(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_214C95674();
  return sub_214C958E4;
}

double sub_214C958E4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_214C957F0(*a1);
  }

  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_214C957F0(v3);
  *&result = MEMORY[0x277D82BD8](*a1).n128_u64[0];
  return result;
}

id sub_214C95964()
{
  v16 = 0;
  v1 = sub_214CCD2B4();
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v10 = v4 - v9;
  v16 = v0;
  v11 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___footerIdentifier);
  v12 = &v15;
  swift_beginAccess();
  v13 = *v11;
  MEMORY[0x277D82BE0](v13);
  swift_endAccess();
  if (v13)
  {
    v7 = v13;
    return v13;
  }

  else
  {
    type metadata accessor for PriorityMessageListHeaderFooterIdentifier(0);
    sub_214CCD2A4();
    v5 = sub_214C93B08(v10);
    MEMORY[0x277D82BE0](v5);
    v4[0] = v8 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___footerIdentifier;
    v4[1] = &v14;
    swift_beginAccess();
    v2 = *v4[0];
    *v4[0] = v5;
    MEMORY[0x277D82BD8](v2);
    swift_endAccess();
    return v5;
  }
}

double sub_214C95AE0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___footerIdentifier);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double (*sub_214C95B78(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_214C95964();
  return sub_214C95BD4;
}

double sub_214C95BD4(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_214C95AE0(*a1);
  }

  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_214C95AE0(v3);
  *&result = MEMORY[0x277D82BD8](*a1).n128_u64[0];
  return result;
}

uint64_t sub_214C95C54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_214C95CBC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x277D82BD8](a1);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void (*sub_214C95D54(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL, 52218);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_backgroundView;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_214B520E8;
}

uint64_t sub_214C95E00()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hasPendingHighlightsShimmer);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

double sub_214C95E68(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hasPendingHighlightsShimmer);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return result;
}

void sub_214C95F48()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewIsVisible);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  (MEMORY[0x277D82BE0])();
  if (v3)
  {
    v1 = sub_214C95E00();
  }

  else
  {
    v1 = 0;
  }

  (MEMORY[0x277D82BD8])();
  if (v1)
  {
    sub_214C96020();
  }
}

uint64_t sub_214C96020()
{
  v96 = 0;
  v133 = 0;
  v91 = 0;
  v128 = 0;
  v123 = 0;
  v92 = sub_214CCF224();
  v93 = *(v92 - 8);
  v94 = v93;
  MEMORY[0x28223BE20](0);
  v95 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_214CCF254();
  v98 = *(v97 - 8);
  v99 = v98;
  MEMORY[0x28223BE20](v96);
  v100 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_214CCDA74();
  v102 = *(v101 - 8);
  v103 = v102;
  v105 = *(v102 + 64);
  MEMORY[0x28223BE20](v101 - 8);
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = &v15 - v107;
  MEMORY[0x28223BE20](&v15 - v107);
  v106 = &v15 - v107;
  MEMORY[0x28223BE20](&v15 - v107);
  v108 = &v15 - v107;
  v133 = v0;
  v109 = sub_214C97A94();
  if (!v109)
  {
LABEL_24:
    (*(v103 + 16))(v104, &v90[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger], v101);
    v34 = sub_214CCDA54();
    v31 = v34;
    v33 = sub_214CCFBB4();
    v32 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
    v35 = sub_214CD03C4();
    if (os_log_type_enabled(v34, v33))
    {
      v12 = v91;
      v22 = sub_214CCFF24();
      v18 = v22;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
      v20 = 0;
      v23 = sub_214A632C4(0, v19, v19);
      v21 = v23;
      v24 = sub_214A632C4(v20, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v132 = v22;
      v131 = v23;
      v130 = v24;
      v25 = 0;
      v26 = &v132;
      sub_214A6627C(0, &v132);
      sub_214A6627C(v25, v26);
      v129 = v35;
      v27 = &v15;
      MEMORY[0x28223BE20](&v15);
      v28 = &v15 - 6;
      *(&v15 - 4) = v13;
      *(&v15 - 3) = &v131;
      *(&v15 - 2) = &v130;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
      sub_214A810E0();
      sub_214CCF764();
      v30 = v12;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v31, v32, "Did not add any new priority emails. Skipping shimmer.", v18, 2u);
        v16 = 0;
        sub_214A669DC(v21, 0, v19);
        sub_214A669DC(v24, v16, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();

        v17 = v30;
      }
    }

    else
    {

      v17 = v91;
    }

    v15 = v17;

    (*(v103 + 8))(v104, v101);
    return v15;
  }

  v89 = v109;
  v88 = v109;
  v128 = v109;
  v3 = sub_214C39564();
  if ((v3 & 1) == 0)
  {

    goto LABEL_24;
  }

  v87 = sub_214C973B4();
  if (v87)
  {
    v86 = v87;
    v84 = v87;
    v123 = v87;
    v122 = [v87 activationState];
    v121 = 0;
    v85 = type metadata accessor for ActivationState(0);
    sub_214C9F760();
    v4 = sub_214CD03F4();
    if (v4 & 1) != 0 && (sub_214C970A4())
    {
      v5 = sub_214C95E68(0);
      (*(v103 + 16))(v108, &v90[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger], v101, v5);
      v82 = sub_214CCDA54();
      v79 = v82;
      v81 = sub_214CCFBB4();
      v80 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
      v83 = sub_214CD03C4();
      if (os_log_type_enabled(v82, v81))
      {
        v6 = v91;
        v70 = sub_214CCFF24();
        v66 = v70;
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
        v68 = 0;
        v71 = sub_214A632C4(0, v67, v67);
        v69 = v71;
        v72 = sub_214A632C4(v68, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v113 = v70;
        v112 = v71;
        v111 = v72;
        v73 = 0;
        v74 = &v113;
        sub_214A6627C(0, &v113);
        sub_214A6627C(v73, v74);
        v110 = v83;
        v75 = &v15;
        MEMORY[0x28223BE20](&v15);
        v76 = &v15 - 6;
        *(&v15 - 4) = v7;
        *(&v15 - 3) = &v112;
        *(&v15 - 2) = &v111;
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
        sub_214A810E0();
        sub_214CCF764();
        v78 = v6;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_214A5E000, v79, v80, "Did add new items to Priority, playing shimmer.", v66, 2u);
          v64 = 0;
          sub_214A669DC(v69, 0, v67);
          sub_214A669DC(v72, v64, MEMORY[0x277D84F70] + 8);
          sub_214CCFF04();

          v65 = v78;
        }
      }

      else
      {

        v65 = v91;
      }

      v62 = v65;

      (*(v103 + 8))(v108, v101);
      v59 = 0;
      sub_214B51A38();
      v61 = sub_214CCFC44();
      v58 = swift_allocObject();
      v57 = v58 + 16;
      v8 = v90;
      swift_unknownObjectWeakInit();

      v119 = sub_214C9F7E0;
      v120 = v58;
      aBlock = MEMORY[0x277D85DD0];
      v115 = 1107296256;
      v116 = 0;
      v117 = sub_214A746A8;
      v118 = &block_descriptor_26;
      v60 = _Block_copy(&aBlock);

      sub_214BC69C4();
      sub_214BC69DC();
      MEMORY[0x21605DF00](v59, v100, v95, v60);
      (*(v94 + 8))(v95, v92);
      (*(v99 + 8))(v100, v97);
      _Block_release(v60);

      sub_214C3A10C();

      return v62;
    }
  }

  v9 = sub_214C95E68(1);
  (*(v103 + 16))(v106, &v90[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger], v101, v9);
  v55 = sub_214CCDA54();
  v52 = v55;
  v54 = sub_214CCFBB4();
  v53 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v56 = sub_214CD03C4();
  if (os_log_type_enabled(v55, v54))
  {
    v10 = v91;
    v43 = sub_214CCFF24();
    v39 = v43;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v41 = 0;
    v44 = sub_214A632C4(0, v40, v40);
    v42 = v44;
    v45 = sub_214A632C4(v41, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v127 = v43;
    v126 = v44;
    v125 = v45;
    v46 = 0;
    v47 = &v127;
    sub_214A6627C(0, &v127);
    sub_214A6627C(v46, v47);
    v124 = v56;
    v48 = &v15;
    MEMORY[0x28223BE20](&v15);
    v49 = &v15 - 6;
    *(&v15 - 4) = v11;
    *(&v15 - 3) = &v126;
    *(&v15 - 2) = &v125;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
    sub_214A810E0();
    sub_214CCF764();
    v51 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v52, v53, "Need to play Priority shimmer but the scene is not active, will wait until the scene becomes active.", v39, 2u);
      v37 = 0;
      sub_214A669DC(v42, 0, v40);
      sub_214A669DC(v45, v37, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

      v38 = v51;
    }
  }

  else
  {

    v38 = v91;
  }

  v36 = v38;

  (*(v103 + 8))(v106, v101);

  return v36;
}

uint64_t sub_214C970A4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewIsVisible);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

void sub_214C9710C(char a1)
{
  v2 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewIsVisible);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_214C95F48();
}

double (*sub_214C97184(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C971F4;
}

double sub_214C971F4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214C95F48();
  }

  return result;
}

double sub_214C97244()
{
  v5 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hostingScene);
  swift_beginAccess();
  v6 = *v5;
  MEMORY[0x277D82BE0](*v5);
  swift_endAccess();
  if (v6)
  {
    v3 = [objc_opt_self() defaultCenter];
    (MEMORY[0x277D82BE0])();
    v2 = *MEMORY[0x277D76E48];
    MEMORY[0x277D82BE0](*MEMORY[0x277D76E48]);
    [v3 addObserver:v4 selector:sel_hostingSceneDidBecomeActive_ name:v2 object:{v6, MEMORY[0x277D82BE0](v6).n128_f64[0]}];
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v2);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v3);
    *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  return result;
}

uint64_t sub_214C973B4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hostingScene);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C97424(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hostingScene);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  sub_214C97244();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214C974C0()
{
  v1 = [*(v0 + 16) highlightedMessagesViewHostingScene];

  return v1;
}

uint64_t type metadata accessor for PriorityMessageListHeaderFooterIdentifier(uint64_t a1)
{
  v2 = qword_27CA38510;
  if (!qword_27CA38510)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

double (*sub_214C9756C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C975DC;
}

double sub_214C975DC(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return sub_214C97244();
  }

  return result;
}

uint64_t sub_214C9762C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger;
  v2 = sub_214CCDA74();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

double sub_214C976A0@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_214C97A94();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214C9770C(uint64_t *a1, void *a2)
{
  sub_214A75F48(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214C97AFC(v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214C97784()
{
  v10 = v0;
  v4 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel);
  swift_beginAccess();
  v6 = *v4;

  swift_endAccess();
  sub_214C97914(v6);

  v7 = (v5 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel);
  swift_beginAccess();
  if (*v7)
  {

    swift_endAccess();
    v2 = sub_214C338C8();

    v3 = v2;
  }

  else
  {
    swift_endAccess();
    v3 = 0;
  }

  v8 = v3;
  if (v3)
  {
    v9 = v8;
  }

  else
  {
    type metadata accessor for MUIHighlightedMessage();
    v9 = sub_214CD03C4();
  }

  sub_214C97A54(v9);
}

uint64_t sub_214C97914(uint64_t a1)
{

  result = a1;
  if (a1)
  {
    v3 = swift_allocObject();
    (MEMORY[0x277D82BE0])();
    swift_unknownObjectWeakInit();
    (MEMORY[0x277D82BD8])();

    v2 = swift_allocObject();
    *(v2 + 16) = v3;
    *(v2 + 24) = a1;
    sub_214C9D238(sub_214C9F7E8, v2);
  }

  return result;
}

uint64_t sub_214C97A94()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C97AFC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
  sub_214C97784();
}

double (*sub_214C97B80(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C97BF0;
}

double sub_214C97BF0(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214C97784();
  }

  return result;
}

uint64_t sub_214C97C40()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_messageByIdentifier);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C97CA8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_messageByIdentifier);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C97D98()
{
  v4 = v0;
  v3 = sub_214C97C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38440, &qword_214CF5B08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710, &qword_214CF3320);
  sub_214C9F7F4();
  v2 = sub_214CCF6F4();
  sub_214A62278(&v3);
  return v2;
}

double sub_214C97E68@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1];
  MEMORY[0x277D82BE0](*a1);
  v4 = [v3 messageListItem];
  MEMORY[0x277D82BD8](v3);
  swift_getObjectType();
  v6 = [v4 itemID];
  swift_unknownObjectRelease();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

uint64_t sub_214C97F4C()
{
  ObjectType = swift_getObjectType();
  v8 = v0;
  MEMORY[0x277D82BE0](v0);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PriorityMessageListViewController(0);
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  MEMORY[0x277D82BD8](v0);
  sub_214C9812C();
  sub_214C988F0();
  sub_214C993C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35530, &qword_214CF5B10);
  sub_214CD03C4();
  v3 = v1;
  *v1 = sub_214CCDCC4();
  v3[1] = MEMORY[0x277D74BF0];
  sub_214A63280();
  v4 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = ObjectType;

  sub_214CCFC04();

  return swift_unknownObjectRelease();
}

double sub_214C9812C()
{
  sub_214A69E94();
  v35 = [v34 view];
  *&v0 = (MEMORY[0x277D82BD8])().n128_u64[0];
  if (v35)
  {
    v33 = v35;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 253, 0);
    __break(1u);
  }

  [v33 bounds];
  v28 = v1;
  v29 = v2;
  v30 = v3;
  v31 = v4;
  MEMORY[0x277D82BD8](v33);
  v5 = sub_214C9C2B4();
  v6 = sub_214A69EF8(v5, v28, v29, v30, v31);
  sub_214C953FC(v6);
  v32 = sub_214C95294();
  if (v32)
  {
    v27 = v32;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 254, 0);
    __break(1u);
  }

  type metadata accessor for AutoresizingMask(0);
  sub_214CD03C4();
  *v7 = 2;
  v7[1] = 16;
  sub_214A63280();
  sub_214B01B00();
  sub_214CD0084();
  [v27 setAutoresizingMask_];
  MEMORY[0x277D82BD8](v27);
  v26 = sub_214C95294();
  if (v26)
  {
    v25 = v26;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 255, 0);
    __break(1u);
  }

  [v25 setScrollEnabled_];
  MEMORY[0x277D82BD8](v25);
  v24 = sub_214C95294();
  if (v24)
  {
    v23 = v24;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 256, 0);
    __break(1u);
  }

  [v23 _setShouldDeriveVisibleBoundsFromContainingScrollView_];
  MEMORY[0x277D82BD8](v23);
  v22 = sub_214C95294();
  if (v22)
  {
    v21 = v22;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 257, 0);
    __break(1u);
  }

  [v21 setDelegate_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v21);
  v20 = sub_214C95294();
  if (v20)
  {
    v19 = v20;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 258, 0);
    __break(1u);
  }

  [v19 setSelectionFollowsFocus_];
  MEMORY[0x277D82BD8](v19);
  v18 = sub_214C95294();
  if (v18)
  {
    v17 = v18;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 259, 0);
    __break(1u);
  }

  [v17 setClipsToBounds_];
  MEMORY[0x277D82BD8](v17);
  v16 = sub_214C95294();
  if (v16)
  {
    v15 = v16;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 260, 0);
    __break(1u);
  }

  v12 = *MEMORY[0x277D258E0];
  MEMORY[0x277D82BE0](*MEMORY[0x277D258E0]);
  sub_214CCF564();
  v13 = sub_214CCF544();

  [v15 setAccessibilityIdentifier_];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v15);
  v14 = [v34 view];
  (MEMORY[0x277D82BD8])();
  if (v14)
  {
    v11 = v14;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 261, 0);
    __break(1u);
  }

  v10 = sub_214C95294();
  if (v10)
  {
    v9 = v10;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 261, 0);
    __break(1u);
  }

  [v11 addSubview_];
  MEMORY[0x277D82BD8](v9);
  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

uint64_t sub_214C988F0()
{
  v71 = 0;
  v70 = sub_214C9BB5C;
  v31 = sub_214C9F960;
  v32 = sub_214C9FAEC;
  v33 = "Fatal error";
  v34 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v35 = "MailUI/PriorityMessageListViewController.swift";
  ObjectType = swift_getObjectType();
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38460, &qword_214CF5B18);
  v39 = *(v37 - 8);
  v38 = v37 - 8;
  v40 = v39;
  v41 = *(v39 + 64);
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v43 = &v15 - v42;
  v44 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v42);
  v76 = &v15 - v44;
  v84 = &v15 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38468, &qword_214CF5B20);
  v47 = *(v45 - 8);
  v46 = v45 - 8;
  v48 = v47;
  v49 = *(v47 + 64);
  v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v51 = &v15 - v50;
  v52 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v50);
  v75 = &v15 - v52;
  v83 = &v15 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38470, &qword_214CF5B28);
  v55 = *(v53 - 8);
  v54 = v53 - 8;
  v56 = v55;
  v57 = *(v55 + 64);
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v59 = &v15 - v58;
  v60 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v58);
  v74 = &v15 - v60;
  v82 = &v15 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38478, &qword_214CF5B30);
  v63 = *(v61 - 8);
  v62 = v61 - 8;
  v64 = v63;
  v65 = *(v63 + 64);
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v67 = &v15 - v66;
  v68 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v15 - v66);
  v69 = &v15 - v68;
  v81 = &v15 - v68;
  v80 = v0;
  v5 = sub_214C94C18();
  v73 = *v5;
  v72 = v5[1];

  sub_214C9F8FC();
  sub_214CCFBD4();
  sub_214C9BB88();
  sub_214C9BC58();
  sub_214C9BD28();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38488, &qword_214CF5B38);
  v79 = sub_214C95294();
  if (v79)
  {
    v30 = v79;
  }

  else
  {
    sub_214CD01F4(v33, 11, 2, v34, 68, 2, v35, 46, 2, 225, 0);
    __break(1u);
  }

  v28 = v30;
  v21 = v56;
  (*(v55 + 16))(v59, v74, v53);
  v22 = v48;
  (*(v47 + 16))(v51, v75, v45);
  v23 = v40;
  (*(v39 + 16))(v43, v76, v37);
  v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v25 = (v24 + v57 + *(v22 + 80)) & ~*(v22 + 80);
  v26 = (v25 + v49 + *(v23 + 80)) & ~*(v23 + 80);
  v27 = swift_allocObject();
  (*(v55 + 32))(v27 + v24, v59, v53);
  (*(v47 + 32))(v27 + v25, v51, v45);
  (*(v39 + 32))(v27 + v26, v43, v37);
  v6 = sub_214CCDE94();
  sub_214C95570(v6);
  v29 = sub_214C95500();
  if (v29)
  {
    v20 = v29;
  }

  else
  {
    sub_214CD01F4(v33, 11, 2, v34, 68, 2, v35, 46, 2, 242, 0);
    __break(1u);
  }

  v19 = v20;
  v7 = MEMORY[0x277D82BE0](v77);
  v15 = v64;
  (*(v63 + 16))(v67, v69, v61, v7);
  v16 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v17 = (v16 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  v9 = v16;
  v10 = v67;
  v11 = v63;
  v12 = v61;
  v18 = v8;
  *(v8 + 16) = v77;
  (*(v11 + 32))(v8 + v9, v10, v12);
  *(v18 + v17) = ObjectType;
  sub_214CCDEA4();
  v13 = MEMORY[0x277D82BD8](v19);
  (*(v39 + 8))(v76, v37, v13);
  (*(v47 + 8))(v75, v45);
  (*(v55 + 8))(v74, v53);
  return (*(v63 + 8))(v69, v61);
}

uint64_t sub_214C993C8()
{
  v7 = "Fatal error";
  v8 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v9 = "MailUI/PriorityMessageListViewController.swift";
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38490, &unk_214CF5B40);
  v10 = *(v19 - 8);
  v11 = v19 - 8;
  v13 = *(v10 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v14 = v4 - v12;
  v15 = v12;
  MEMORY[0x28223BE20](v4 - v12);
  v16 = v4 - v15;
  v23 = v4 - v15;
  v22 = v0;
  sub_214C94118();
  v18 = v1;
  v21 = v1;
  v17 = sub_214C9FBBC();
  sub_214C95380();
  sub_214CCDE34();
  sub_214CCDDE4();
  v20 = sub_214C95500();
  if (v20)
  {
    v6 = v20;
  }

  else
  {
    sub_214CD01F4(v7, 11, 2, v8, 68, 2, v9, 46, 2, 169, 0);
    __break(1u);
  }

  v4[0] = v6;
  (*(v10 + 16))(v14, v16, v19);
  sub_214CCDEC4();
  v5 = *(v10 + 8);
  v4[1] = v10 + 8;
  v5(v14, v19);
  v2 = MEMORY[0x277D82BD8](v4[0]);
  (v5)(v16, v19, v2);
}

double sub_214C99658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v13 = a1;
  v12 = a2;
  v11 = a3 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v10 = Strong;
    v5 = [Strong traitCollection];
    MEMORY[0x277D82BD8](Strong);
    v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection_];
    MEMORY[0x277D82BD8](a2);
    MEMORY[0x277D82BD8](v5);
    if (v6)
    {
      v9 = sub_214C95C54();
      if (v9)
      {
        v4 = v9;
        MEMORY[0x277D82BE0](v9);
        sub_214A671E8(&v9);
        [v4 updateBorderColor];
        MEMORY[0x277D82BD8](v4);
      }

      else
      {
        sub_214A671E8(&v9);
      }

      *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
    }

    else
    {
      *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
    }
  }

  return result;
}

void sub_214C9987C(char a1)
{
  v5 = a1 & 1;
  v4 = v1;
  MEMORY[0x277D82BE0](v1);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PriorityMessageListViewController(0);
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1 & 1);
  MEMORY[0x277D82BD8](v1);
  sub_214C9710C(1);
  sub_214C99930();
}

void sub_214C99930()
{
  v2[2] = 0;
  if ([objc_opt_self() shimmerWhenAppearing])
  {
    v2[1] = sub_214C97D98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FF0, &qword_214CEDD98);
    sub_214A80F28();
    v1 = sub_214CCFA94();

    if ((v1 & 1) == 0)
    {
      v2[0] = sub_214C95C54();
      if (v2[0])
      {
        v0 = v2[0];
        MEMORY[0x277D82BE0](v2[0]);
        sub_214A671E8(v2);
        [v0 shimmer];
        MEMORY[0x277D82BD8](v0);
      }

      else
      {
        sub_214A671E8(v2);
      }
    }
  }
}

void sub_214C99AB4(char a1)
{
  v5 = a1 & 1;
  v4 = v1;
  MEMORY[0x277D82BE0](v1);
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PriorityMessageListViewController(0);
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1 & 1);
  MEMORY[0x277D82BD8](v1);
  sub_214C9710C(0);
}

id PriorityMessageListViewController.__deallocating_deinit()
{
  v4 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v2);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PriorityMessageListViewController(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_214C99E10()
{
  if (sub_214C97A94())
  {

    sub_214A75F80();
    sub_214C3B96C();
    v8 = v0;

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_214A75F80();
    v9 = 0.0;
    v10 = 1;
  }

  (MEMORY[0x277D82BE0])();
  if (v10)
  {
    v5 = *&v11[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_sectionInset];
    v6 = [v11 view];
    *&v1 = (MEMORY[0x277D82BD8])().n128_u64[0];
    if (v6)
    {
      [v6 safeAreaInsets];
      v4 = v2;
      MEMORY[0x277D82BD8](v6);
      v7 = v5 + v4;
    }

    else
    {
      sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 148, 0);
      __break(1u);
    }
  }

  else
  {
    v7 = v9;
  }

  (MEMORY[0x277D82BD8])();
  return v7;
}

double sub_214C9A060()
{
  if (sub_214C97A94())
  {

    sub_214A75F80();
    sub_214C3B96C();
    v8 = v0;

    v9 = v8;
    v10 = 0;
  }

  else
  {
    sub_214A75F80();
    v9 = 0.0;
    v10 = 1;
  }

  (MEMORY[0x277D82BE0])();
  if (v10)
  {
    v5 = *&v11[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_sectionInset];
    v6 = [v11 view];
    *&v1 = (MEMORY[0x277D82BD8])().n128_u64[0];
    if (v6)
    {
      [v6 safeAreaInsets];
      v4 = v2;
      MEMORY[0x277D82BD8](v6);
      v7 = v5 + v4;
    }

    else
    {
      sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 156, 0);
      __break(1u);
    }
  }

  else
  {
    v7 = v9;
  }

  (MEMORY[0x277D82BD8])();
  return v7;
}

id PriorityMessageListViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_214CCF544();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

_BYTE *PriorityMessageListViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v14 = a1;
  v15 = a2;
  v13 = a3;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_collectionView = 0;
  *&v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_dataSource] = 0;
  *&v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___headerIdentifier] = 0;
  *&v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___footerIdentifier] = 0;
  swift_unknownObjectWeakInit();
  v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hasPendingHighlightsShimmer] = 0;
  v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewIsVisible] = 0;
  *&v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hostingScene] = 0;
  v8 = type metadata accessor for PriorityMessageListViewController(0);
  static Logger.mailUILogger<A>(for:)(v8, v8);
  *&v16[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel] = 0;
  v9 = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_messageByIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA384A8, &qword_214CF5B50);
  sub_214CD03C4();
  sub_214B894B8();
  type metadata accessor for MUIHighlightedMessage();
  sub_214C9FC38();
  *&v16[v9] = sub_214CCF344();
  v10 = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_sectionInset;
  type metadata accessor for MUIPriorityMessageListBackgroundDecorationView();
  *&v16[v10] = sub_214C7AC74();

  if (a2)
  {
    v5 = sub_214CCF544();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v12.receiver = v16;
  v12.super_class = v8;
  v4 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v16 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v16);
  return v4;
}

id PriorityMessageListViewController.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

_BYTE *PriorityMessageListViewController.init(coder:)(uint64_t a1)
{
  v10 = 0;
  v9 = a1;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_collectionView = 0;
  *&v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_dataSource] = 0;
  *&v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___headerIdentifier] = 0;
  *&v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController____lazy_storage___footerIdentifier] = 0;
  swift_unknownObjectWeakInit();
  v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hasPendingHighlightsShimmer] = 0;
  v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewIsVisible] = 0;
  *&v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_hostingScene] = 0;
  v5 = type metadata accessor for PriorityMessageListViewController(0);
  static Logger.mailUILogger<A>(for:)(v5, v5);
  *&v10[OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_viewModel] = 0;
  v3 = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_messageByIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA384A8, &qword_214CF5B50);
  sub_214CD03C4();
  sub_214B894B8();
  type metadata accessor for MUIHighlightedMessage();
  sub_214C9FC38();
  *&v10[v3] = sub_214CCF344();
  v4 = OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_sectionInset;
  type metadata accessor for MUIPriorityMessageListBackgroundDecorationView();
  *&v10[v4] = sub_214C7AC74();
  v8.receiver = v10;
  v8.super_class = v5;
  v7 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  if (v7)
  {
    MEMORY[0x277D82BE0](v7);
    v10 = v7;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v10);
    return v7;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

uint64_t sub_214C9AA64(uint64_t a1, int a2)
{
  v72 = a1;
  v71 = a2;
  v63 = sub_214C9B5C8;
  v64 = sub_214C9B640;
  v65 = sub_214C9FD40;
  v66 = sub_214C9FE84;
  v67 = "Fatal error";
  v68 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v69 = "MailUI/PriorityMessageListViewController.swift";
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v104 = 0;
  v70 = 0;
  v102 = 0;
  v99 = 0;
  v91 = 0;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA384C0, &unk_214CF5B58);
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v77 = &v23 - v76;
  v78 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v79 = &v23 - v78;
  v112 = &v23 - v78;
  v111 = v5;
  v110 = v6 & 1;
  v109 = v2;
  v87 = &v108;
  v88 = sub_214C97D2C();
  v80 = 0;
  v82 = sub_214B894B8();
  v81 = type metadata accessor for MUIHighlightedMessage();
  v83 = sub_214C9FC38();
  v84 = sub_214B28CB0();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38440, &qword_214CF5B08);
  sub_214CCF394();
  v88();
  v106 = sub_214C97A94();
  if (v106)
  {
    v59 = &v106;
    v60 = v106;

    sub_214A75F80();
    v61 = sub_214C407A0();

    v62 = v61;
  }

  else
  {
    sub_214A75F80();
    v62 = 0;
  }

  v105 = v62;
  if (v62)
  {
    v107 = v105;
  }

  else
  {
    v107 = sub_214CD03C4();
    if (v105)
    {
      sub_214A62278(&v105);
    }
  }

  v7 = v70;
  v53 = v107;
  v104 = v107;
  v103 = v107;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690, &qword_214CF45F0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA384D0, &qword_214CF5B68);
  v8 = sub_214C43614();
  v9 = sub_214A6E4F4(v63, 0, v54, v55, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v56);
  v57 = v7;
  v58 = v9;
  if (v7)
  {
    __break(1u);
    __break(1u);

    __break(1u);
  }

  else
  {
    v49 = v58;
    v102 = v58;
    v101[1] = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA384A8, &qword_214CF5B50);
    sub_214CD03C4();
    v10 = sub_214CCF344();
    v51 = v101;
    v101[0] = v10;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA384E0, &qword_214CF5B70);
    sub_214C9FCB8();
    sub_214CCF734();
    v52 = 0;
    sub_214C97CA8(v101[2]);
    v100 = v49;
    KeyPath = swift_getKeyPath();

    v11 = sub_214C9FD74();
    v48 = sub_214A6E4F4(v65, KeyPath, v50, &unk_2826ECEC0, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v56);
    v45 = v48;

    v99 = v45;
    sub_214C95380();
    sub_214CCDF14();
    v98 = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA384F8, qword_214CF5B98);
    sub_214C9FDFC();
    if ((sub_214CCFA94() & 1) == 0)
    {
      v41 = &unk_2826ECEC0;
      v42 = sub_214CD03C4();
      v40 = v12;
      v13 = sub_214C95674();
      v14 = v40;
      *v40 = v13;
      *(v14 + 8) = 0;
      sub_214A63280();
      v43 = v15;
      v96 = 0;
      v44 = 255;
      v97 = -1;
      sub_214CCDF04();

      v94[1] = 0;
      v95 = v44;
      sub_214CCDF04();
      v94[0] = sub_214C97A94();
      if (v94[0])
      {
        v35 = v94;
        v36 = v94[0];

        sub_214A75F80();
        v37 = sub_214C40804();

        v38 = v37;
        v39 = 0;
      }

      else
      {
        sub_214A75F80();
        v38 = 0;
        v39 = 1;
      }

      v92 = v38;
      v93 = v39 & 1;
      v34 = (v39 & 1) != 0 ? 0 : v92;
      v91 = v34 > 0;
      if (v34 > 0)
      {
        v31 = &unk_2826ECEC0;
        v32 = sub_214CD03C4();
        v30 = v16;
        v17 = sub_214C95964();
        v18 = v30;
        *v30 = v17;
        *(v18 + 8) = 2;
        sub_214A63280();
        v33 = v19;
        v89 = 0;
        v90 = -1;
        sub_214CCDF04();
      }
    }

    v29 = sub_214C95500();
    if (v29)
    {
      v28 = v29;
    }

    else
    {
      sub_214CD01F4(v67, 11, 2, v68, 68, 2, v69, 46, 2, 195, 0);
      __break(1u);
    }

    v25 = v28;
    (*(v74 + 16))(v77, v79, v73);
    MEMORY[0x277D82BE0](v86);
    v20 = swift_allocObject();
    *(v20 + 16) = v86;
    v24 = v20;
    sub_214CCDED4();
    sub_214A6B584(v66, v24);
    v27 = *(v74 + 8);
    v26 = v74 + 8;
    v27(v77, v73);
    v21 = MEMORY[0x277D82BD8](v25);
    (v27)(v79, v73, v21);
  }

  return result;
}

void sub_214C9B5C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = sub_214C943F8(v4);
  *(a2 + 8) = v2;
  MEMORY[0x277D82BE0](v4);
  *(a2 + 16) = v4;
}

double sub_214C9B640(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[2];
  MEMORY[0x277D82BE0](*a2);
  MEMORY[0x277D82BE0](v4);
  sub_214C94310(v3);
  MEMORY[0x277D82BE0](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38440, &qword_214CF5B08);
  sub_214CCF3E4();
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_214C9B76C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](v5);

  v6 = v3;
  v7 = v4;
  v8 = v5;
  swift_getAtKeyPath();
  sub_214CA0B74(&v6);
}

double sub_214C9B814(uint64_t a1)
{
  v6 = a1;
  v7 = sub_214CA0B08;
  v27 = 0;
  v9 = 0;
  v13 = sub_214CCF224();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v4 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v3 - v4;
  v17 = sub_214CCF254();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v5 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v16 = &v3 - v5;
  v27 = v1;
  sub_214B51A38();
  v19 = sub_214CCFC44();
  v8 = swift_allocObject();
  MEMORY[0x277D82BE0](v6);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v6);

  v25 = v7;
  v26 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_214A746A8;
  v24 = &block_descriptor_77;
  v18 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v9, v16, v12, v18);
  (*(v10 + 8))(v12, v13);
  (*(v14 + 8))(v16, v17);
  _Block_release(v18);
  *&result = MEMORY[0x277D82BD8](v19).n128_u64[0];
  return result;
}

double sub_214C9BAB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    sub_214C96020();
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

uint64_t sub_214C9BB88()
{
  swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  type metadata accessor for PriorityMessageListHeaderCell();
  return sub_214CCFBC4();
}

uint64_t sub_214C9BC58()
{
  swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  type metadata accessor for PriorityMessageListCell();
  return sub_214CCFBC4();
}

uint64_t sub_214C9BD28()
{
  swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  type metadata accessor for PriorityMessageListFooterCell();
  return sub_214CCFBC4();
}

uint64_t sub_214C9BDF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v26 = a1;
  v25 = a2;
  v12 = *a3;
  v13 = *(a3 + 8);
  v23 = *a3;
  v24 = v13;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v6 = sub_214CCD364();
  if (sub_214C940DC(v6))
  {
    sub_214CCF614("Unknown section", 15, 1);
    sub_214CD0204();
    __break(1u);
  }

  else if (v13)
  {
    MEMORY[0x277D82BE0](v12);
    if (v13 == 1)
    {
      v16 = v12;
      v17 = 1;
      type metadata accessor for PriorityMessageListCell();
      v9 = sub_214CCFBE4();
      sub_214CA0BBC(&v16);
      return v9;
    }

    else
    {
      v18 = v12;
      v19 = v13;
      type metadata accessor for PriorityMessageListFooterCell();
      v8 = sub_214CCFBE4();
      sub_214CA0BBC(&v18);
      return v8;
    }
  }

  else
  {
    MEMORY[0x277D82BE0](v12);
    v14 = v12;
    v15 = 0;
    type metadata accessor for PriorityMessageListHeaderCell();
    v10 = sub_214CCFBE4();
    sub_214CA0BBC(&v14);
    return v10;
  }

  return v11;
}

uint64_t sub_214C9C090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[7] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[4] = a4;
  v16[3] = a5;
  v16[2] = a6;

  v6 = sub_214C94C18();
  v11 = *v6;
  v12 = v6[1];

  v16[0] = v11;
  v16[1] = v12;
  v15 = MEMORY[0x21605D8D0](v11, v12, a2, a3);
  sub_214A61B48(v16);
  if (v15)
  {

    v10 = sub_214C95294();
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 245, 0);
      __break(1u);
    }

    sub_214C9F8FC();
    v8 = sub_214CCFBF4();
    MEMORY[0x277D82BD8](v9);
    return v8;
  }

  else
  {

    sub_214CCF614("Unknown supplementary kind", 26, 1);
    result = sub_214CD0204();
    __break(1u);
  }

  return result;
}

id sub_214C9C2B4()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = ObjectType;

  sub_214C9FEB0();

  v7 = sub_214C9D110(sub_214C9FEA4, v6);
  type metadata accessor for MUIPriorityMessageListBackgroundDecorationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() elementKind];
  sub_214CCF564();
  v5 = sub_214CCF544();

  [v7 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:{v5, MEMORY[0x277D82BD8](v3).n128_f64[0]}];
  MEMORY[0x277D82BD8](v5);

  return v7;
}

double sub_214C9C47C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v5 = sub_214C97A94();
    PriorityMessageListHeaderCell.updateViewModel(_:)(v5);

    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

double sub_214C9C568(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v5 = sub_214C94310(v7);
    sub_214C97C40();
    sub_214B894B8();
    type metadata accessor for MUIHighlightedMessage();
    sub_214C9FC38();
    sub_214CCF3D4();
    MEMORY[0x277D82BD8](v5);

    v6 = sub_214C97A94();
    PriorityMessageListCell.updateMessage(_:andViewModel:)(v9, v6);

    (MEMORY[0x277D82BD8])();
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

double sub_214C9C70C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v5 = sub_214C97A94();
    PriorityMessageListFooterCell.updateViewModel(_:)(v5);

    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

id sub_214C9C7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a1;
  v59 = a2;
  v58 = a3;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v82 = 0;
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v75 = 0;
  v74 = 0;
  v52 = 0;
  v53 = sub_214CCDF34();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v57 = v19 - v56;
  v61 = sub_214CCDF94();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v65 = v19 - v64;
  v66 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v67 = v19 - v66;
  v87 = v19 - v66;
  v86 = v5;
  v85 = v6;
  v68 = v7 + 16;
  v84 = v7 + 16;
  v69 = &v83;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return 0;
  }

  v51 = Strong;
  v50 = Strong;
  v82 = Strong;
  if (sub_214C940DC(v60))
  {
    MEMORY[0x277D82BD8](v50);
    return 0;
  }

  (*(v54 + 104))(v57, *MEMORY[0x277D74D50], v53);
  sub_214CCDF44();
  v8 = [objc_opt_self() clearColor];
  sub_214CCDF64();
  sub_214C99DB0();
  sub_214CCDF54();
  v35 = sub_214C99E10();
  *&v36 = *(v50 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_sectionInset);
  *(&v36 + 1) = sub_214C9A060();
  v34 = 0.0;
  v79 = __PAIR128__(*&v35, 0);
  v80 = v36;
  v37 = 0;
  sub_214A77548();
  (*(v62 + 16))(v65, v67, v61);
  v48 = sub_214CCFD34();
  v47 = *(v62 + 8);
  v46 = v62 + 8;
  v47(v65, v61);
  MEMORY[0x277D82BE0](v48);
  v81 = v48;
  v33 = 0x1FB05B000uLL;
  v76 = v34;
  v77 = v35;
  v78 = v36;
  [v48 0x1FB05B8F8];
  v26 = sub_214CA0A40();
  sub_214A772E0();
  v19[1] = 0x277CFB000uLL;
  v20 = [objc_opt_self() fractionalWidthDimension_];
  v9 = [objc_opt_self() absoluteDimension_];
  v21 = sub_214A77344(v20, v9);
  v10 = sub_214C94C18();
  v22 = *v10;
  v23 = v10[1];

  v38 = 1;
  v45 = sub_214CA0FCC(v21, v22, v23, 1);
  v75 = v45;
  v25 = sub_214CD03C4();
  v24 = v11;
  MEMORY[0x277D82BE0](v45);
  *v24 = v45;
  sub_214A63280();
  v27 = v12;
  v28 = sub_214CCF7D4();

  [v48 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v28);
  v31 = objc_opt_self();
  v30 = [objc_opt_self() elementKind];
  sub_214CCF564();
  v29 = v13;
  v32 = sub_214CCF544();

  *&v14 = MEMORY[0x277D82BD8](v30).n128_u64[0];
  v44 = [v31 backgroundDecorationItemWithElementKind_];
  MEMORY[0x277D82BD8](v32);
  v74 = v44;
  MEMORY[0x277D82BE0](v44);
  v71 = v34;
  v72 = v35;
  v73 = v36;
  [v44 (v33 + 2296)];
  MEMORY[0x277D82BD8](v44);
  v41 = sub_214CA0AA4();
  v40 = sub_214CD03C4();
  v39 = v15;
  MEMORY[0x277D82BE0](v44);
  *v39 = v44;
  sub_214A63280();
  v42 = v16;
  v43 = sub_214CCF7D4();

  [v48 setDecorationItems_];
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  v17 = MEMORY[0x277D82BD8](v45);
  (v47)(v67, v61, v17);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v50);
  return v48;
}

double sub_214C9D158(uint64_t a1, uint64_t a2)
{
  v5[5] = a1 + 16;
  v5[4] = a2;
  swift_beginAccess();
  v5[0] = swift_unknownObjectWeakLoadStrong();
  if (v5[0])
  {
    v4 = v5[0];
    MEMORY[0x277D82BE0](v5[0]);
    sub_214A671E8(v5);
    swift_endAccess();
    v3 = sub_214C338C8();
    sub_214C97A54(v3);

    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  else
  {
    sub_214A671E8(v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_214C9D270(uint64_t a1)
{
  v4 = sub_214C95500();
  if (v4)
  {
    v3 = v4;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/PriorityMessageListViewController.swift", 46, 2, 348, 0);
    __break(1u);
  }

  sub_214CCDEB4();
  MEMORY[0x277D82BD8](v3);
  if (v5 == 255)
  {
    goto LABEL_10;
  }

  (MEMORY[0x277D82BE0])();
  if (v5)
  {
    (MEMORY[0x277D82BD8])();
    (MEMORY[0x277D82BD8])();
LABEL_10:
    v2 = 0;
    return v2 & 1;
  }

  (MEMORY[0x277D82BD8])();
  (MEMORY[0x277D82BD8])();
  v2 = 1;
  return v2 & 1;
}

double sub_214C9D43C(uint64_t a1)
{
  v5[4] = a1 + 16;
  swift_beginAccess();
  v5[0] = swift_unknownObjectWeakLoadStrong();
  if (v5[0])
  {
    v3 = v5[0];
    MEMORY[0x277D82BE0](v5[0]);
    sub_214A671E8(v5);
    swift_endAccess();
    v4 = sub_214C95C54();
    if (v4)
    {
      v2 = v4;
      MEMORY[0x277D82BE0](v4);
      sub_214A671E8(&v4);
      [v2 shimmer];
      *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
    }

    else
    {
      sub_214A671E8(&v4);
      *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
    }
  }

  else
  {
    sub_214A671E8(v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_214C9D570(uint64_t a1)
{
  v32 = a1;
  v42 = 0;
  v41 = 0;
  v31 = 0;
  v33 = sub_214CCDA74();
  v34 = *(v33 - 8);
  v35 = v34;
  MEMORY[0x28223BE20](v32);
  v36 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3;
  v41 = v1;
  if ((sub_214C95E00() & 1) == 0)
  {
    return v31;
  }

  (*(v35 + 16))(v36, v30 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger, v33);
  v28 = sub_214CCDA54();
  v25 = v28;
  v27 = sub_214CCFBB4();
  v26 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v29 = sub_214CD03C4();
  if (os_log_type_enabled(v28, v27))
  {
    v4 = v31;
    v16 = sub_214CCFF24();
    v12 = v16;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v14 = 0;
    v17 = sub_214A632C4(0, v13, v13);
    v15 = v17;
    v18 = sub_214A632C4(v14, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v40 = v16;
    v39 = v17;
    v38 = v18;
    v19 = 0;
    v20 = &v40;
    sub_214A6627C(0, &v40);
    sub_214A6627C(v19, v20);
    v37 = v29;
    v21 = &v7;
    MEMORY[0x28223BE20](&v7);
    v22 = &v7 - 6;
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v39;
    *(&v7 - 2) = &v38;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
    sub_214A810E0();
    sub_214CCF764();
    v24 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v25, v26, "Hosting scene became active and there is a pending shimmer.", v12, 2u);
      v10 = 0;
      sub_214A669DC(v15, 0, v13);
      sub_214A669DC(v18, v10, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

      v11 = v24;
    }
  }

  else
  {

    v11 = v31;
  }

  v8 = v11;

  (*(v35 + 8))(v36, v33);
  sub_214C96020();
  return v8;
}

void PriorityMessageListViewController.collectionView(_:didSelectItemAt:)(uint64_t a1, uint64_t a2)
{
  v90 = a1;
  v89 = a2;
  v71 = sub_214B4C014;
  v72 = sub_214A7E51C;
  v73 = sub_214A7E854;
  v74 = sub_214A662DC;
  v75 = sub_214A662DC;
  v76 = sub_214A7E40C;
  v77 = "Fatal error";
  v78 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v79 = "MailUI/PriorityMessageListViewController.swift";
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v80 = 0;
  v103 = 0;
  v104 = 0;
  v101 = 0;
  v98 = 0;
  v81 = 0;
  v82 = sub_214CCD374();
  v84 = *(v82 - 8);
  v83 = v82 - 8;
  v85 = v84;
  v86 = *(v84 + 64);
  v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v88 = v23 - v87;
  v91 = sub_214CCDA74();
  v92 = *(v91 - 8);
  v93 = v91 - 8;
  v94 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v90);
  v95 = v23 - v94;
  v113 = v3;
  v112 = v4;
  v111 = v2;
  v96 = sub_214C95500();
  if (v96)
  {
    v69 = v96;
  }

  else
  {
    sub_214CD01F4(v77, 11, 2, v78, 68, 2, v79, 46, 2, 410, 0);
    __break(1u);
  }

  v66 = v69;
  sub_214CCDEB4();
  v5 = MEMORY[0x277D82BD8](v66);
  v67 = v109[1];
  v68 = v110;
  if (v110 == 255)
  {
    (*(v92 + 16))(v95, v70 + OBJC_IVAR____TtC6MailUI33PriorityMessageListViewController_logger, v91, v5);
    v32 = v85;
    (*(v84 + 16))(v88, v89, v82);
    v33 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v37 = 7;
    v34 = swift_allocObject();
    (*(v84 + 32))(v34 + v33, v88, v82);

    v36 = 32;
    v8 = swift_allocObject();
    v9 = v34;
    v38 = v8;
    *(v8 + 16) = v71;
    *(v8 + 24) = v9;

    v46 = sub_214CCDA54();
    v47 = sub_214CCFBA4();
    v35 = 17;
    v40 = swift_allocObject();
    *(v40 + 16) = 34;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v38;
    v39 = v10;
    *(v10 + 16) = v72;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v39;
    v43 = v12;
    *(v12 + 16) = v73;
    *(v12 + 24) = v13;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
    v42 = sub_214CD03C4();
    v44 = v14;

    v15 = v40;
    v16 = v44;
    *v44 = v74;
    v16[1] = v15;

    v17 = v41;
    v18 = v44;
    v44[2] = v75;
    v18[3] = v17;

    v19 = v43;
    v20 = v44;
    v44[4] = v76;
    v20[5] = v19;
    sub_214A63280();

    if (os_log_type_enabled(v46, v47))
    {
      v21 = v80;
      v25 = sub_214CCFF24();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
      v26 = sub_214A632C4(0, v24, v24);
      v27 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v28 = v109;
      v109[0] = v25;
      v29 = &v108;
      v108 = v26;
      v30 = &v107;
      v107 = v27;
      sub_214A6627C(2, v109);
      sub_214A6627C(1, v28);
      v105 = v74;
      v106 = v40;
      sub_214A66290(&v105, v28, v29, v30);
      v31 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v105 = v75;
        v106 = v41;
        sub_214A66290(&v105, v109, &v108, &v107);
        v23[1] = 0;
        v105 = v76;
        v106 = v43;
        sub_214A66290(&v105, v109, &v108, &v107);
        _os_log_impl(&dword_214A5E000, v46, v47, "Unable to select item at index path: %{public}s", v25, 0xCu);
        sub_214A669DC(v26, 0, v24);
        sub_214A669DC(v27, 1, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v22 = MEMORY[0x277D82BD8](v46);
    (*(v92 + 8))(v95, v91, v22);
  }

  else
  {
    v64 = v67;
    v65 = v68;
    v62 = v68;
    v63 = v67;
    v103 = v67;
    v104 = v68;
    if (v68)
    {
      if (v62 == 1)
      {
        v61 = v63;
        v54 = v63;
        MEMORY[0x277D82BE0](v63);
        v101 = v54;
        MEMORY[0x277D82BE0](v54);
        v56 = sub_214C97C40();
        v59 = &v99;
        v99 = v54;
        v55 = 0;
        v57 = sub_214B894B8();
        v58 = type metadata accessor for MUIHighlightedMessage();
        sub_214C9FC38();
        sub_214CCF3D4();
        MEMORY[0x277D82BD8](v99);
        v60 = v100;
        if (v100)
        {
          v53 = v60;
          v52 = v60;
          v98 = v60;

          v6 = sub_214C94F58();
          v97 = v6;
          if (v6)
          {
            v50 = &v97;
            v51 = v97;
            swift_unknownObjectRetain();
            sub_214A759F4();
            swift_getObjectType();
            [v51 highlightedMessagesViewDidSelectMessage_];
            swift_unknownObjectRelease();
          }

          else
          {
            sub_214A759F4();
          }

          MEMORY[0x277D82BD8](v52);
        }

        else
        {
        }

        MEMORY[0x277D82BD8](v54);
      }

      else
      {
        v7 = sub_214C97A94();
        v102 = v7;
        if (v7)
        {
          v48 = &v102;
          v49 = v102;

          sub_214A75F80();
          sub_214C3B6B4();
        }

        else
        {
          sub_214A75F80();
        }
      }
    }

    MEMORY[0x277D82BD8](v63);
  }
}

void PriorityMessageListViewController.collectionView(_:willDisplaySupplementaryView:forElementKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = 0;
  v13[7] = a1;
  v13[6] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v13[3] = a5;

  v11 = [objc_opt_self() elementKind];
  v13[0] = sub_214CCF564();
  v13[1] = v5;
  v12 = MEMORY[0x21605D8D0](v13[0], v5, a3, a4);
  sub_214A61B48(v13);
  MEMORY[0x277D82BD8](v11);
  if (v12)
  {

    MEMORY[0x277D82BE0](a2);
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      MEMORY[0x277D82BD8](a2);
      v6 = 0;
    }

    sub_214C95CBC(v6);
  }

  else
  {
  }
}

uint64_t sub_214C9F214(uint64_t a1, uint64_t a2)
{

  sub_214CCD404();
}

uint64_t sub_214C9F2E4(void (*a1)(void))
{

  a1();
}

uint64_t (*sub_214C9F344(uint64_t a1, uint64_t a2))()
{

  v2 = swift_allocObject();
  result = sub_214CA08EC;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214C9F3BC(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v17 = a2;
  v16 = MEMORY[0x277D85700];
  v20 = &unk_214CF5FF0;
  v22 = 0;
  v23 = 0;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30, &qword_214CF0AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v19 = &v14 - v14;
  v22 = v2;
  v23 = v3;
  v18 = 0;
  v4 = sub_214CCF994();
  (*(*(v4 - 8) + 56))(v19, 1);

  sub_214CCF964();
  v15 = sub_214CCF954();
  v5 = swift_allocObject();
  v6 = v16;
  v7 = v17;
  v8 = v18;
  v9 = v19;
  v10 = v20;
  v11 = v5;
  v12 = v21;
  v11[2] = v15;
  v11[3] = v6;
  v11[4] = v12;
  v11[5] = v7;
  sub_214B88C30(v8, v8, v9, v10, v11, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214C9F54C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a6;
  v6[5] = a5;
  v6[4] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[2] = a5;
  v6[3] = a6;
  sub_214CCF964();
  v6[7] = sub_214CCF954();
  v7 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214C9F610, v7);
}

uint64_t sub_214C9F610()
{
  v1 = v0[6];
  v2 = v0[5];
  v0[4] = v0;
  sub_214C9F214(v2, v1);

  v3 = *(v0[4] + 8);

  return v3();
}

id sub_214C9F6B0(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = 0;
  v9 = sub_214A7590C;
  v10 = &block_descriptor_73;
  v4 = _Block_copy(&aBlock);
  v5 = [v3 initWithSectionProvider_];
  _Block_release(v4);

  return v5;
}

unint64_t sub_214C9F760()
{
  v2 = qword_27CA38420;
  if (!qword_27CA38420)
  {
    type metadata accessor for ActivationState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9F7F4()
{
  v2 = qword_27CA38450;
  if (!qword_27CA38450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA38440, &qword_214CF5B08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38450);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for PriorityMessageListViewController(uint64_t a1)
{
  v2 = qword_27CA38528;
  if (!qword_27CA38528)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_214C9F8FC()
{
  v2 = qword_27CA38480;
  if (!qword_27CA38480)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38480);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C9F960(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38470, &qword_214CF5B28) - 8);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v9 = v13 + *(v8 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38468, &qword_214CF5B20);
  v14 = (v9 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v10 = v14 + *(*(v4 - 8) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38460, &qword_214CF5B18);
  v6 = v3 + ((v10 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80));

  return sub_214C9BDF8(a1, a2, a3, v3 + v13, v3 + v14, v6);
}

uint64_t sub_214C9FAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38478, &qword_214CF5B30);
  v6 = *(v4 + 16);
  v7 = v4 + ((*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80));

  return sub_214C9C090(a1, a2, a3, a4, v6, v7);
}

unint64_t sub_214C9FBBC()
{
  v2 = qword_27CA38498;
  if (!qword_27CA38498)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9FC38()
{
  v2 = qword_27CA384B8;
  if (!qword_27CA384B8)
  {
    sub_214B894B8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA384B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9FCB8()
{
  v2 = qword_27CA384E8;
  if (!qword_27CA384E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA384E0, &qword_214CF5B70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA384E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9FD74()
{
  v2 = qword_27CA384F0;
  if (!qword_27CA384F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA384E0, &qword_214CF5B70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA384F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9FDFC()
{
  v2 = qword_27CA38500;
  if (!qword_27CA38500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA384F8, qword_214CF5B98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C9FEB0()
{
  v2 = qword_27CA38508;
  if (!qword_27CA38508)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38508);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C9FF48(uint64_t a1)
{
  updated = sub_214CCD2B4();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_214CA0038(uint64_t a1)
{
  updated = sub_214CCDA74();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_214CA0404(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFD && *(a1 + 9))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214CA0528(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFD)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 254;
    if (a3 >= 0xFE)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_214CA073C()
{
  v2 = qword_27CA38538;
  if (!qword_27CA38538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38540, qword_214CF5EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CA07DC()
{
  v2 = qword_27CA38548;
  if (!qword_27CA38548)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CA0870()
{
  v2 = qword_27CA38550;
  if (!qword_27CA38550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38550);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214CA08F8(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_214A82860;

  return sub_214C9F54C(v4, a1, v7, v8, v9, v10);
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214CA0A40()
{
  v2 = qword_280C7C610;
  if (!qword_280C7C610)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C610);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214CA0AA4()
{
  v2 = qword_27CA38560;
  if (!qword_27CA38560)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38560);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_214CA0B74(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[2]);
  return a1;
}

uint64_t sub_214CA0BBC(uint64_t a1)
{
  if (*(a1 + 8) != 255)
  {
    MEMORY[0x277D82BD8](*a1);
  }

  return a1;
}

id QLThumbnailRepresentation.platformImage.getter()
{
  v1 = [v0 UIImage];

  return v1;
}

uint64_t sub_214CA0C78()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  swift_endAccess();
  return v2;
}

double sub_214CA0CDC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t RichLinkMetadataGenerator.init(messageRepository:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  MEMORY[0x277D82BD8](a1);
  return v5;
}

uint64_t RichLinkMetadataGenerator.retreiveMetadata(for:messageID:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{

  a5(0);
}

id sub_214CA0FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_214CCF544();
  v8 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];
  MEMORY[0x277D82BD8](v6);

  MEMORY[0x277D82BD8](a1);
  return v8;
}

uint64_t static SearchCollectionViewLayoutFactory_iOS.columnCount(forSection:usingLayoutEnvironment:)(char *a1, void *a2)
{
  v13 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = [a2 container];
  swift_unknownObjectRelease();
  swift_getObjectType();
  [v11 effectiveContentSize];
  v12 = v2;
  swift_unknownObjectRelease();
  switch(v13)
  {
    case 3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v8 = [a2 traitCollection];
      swift_unknownObjectRelease();
      v9 = [v8 preferredContentSizeCategory];
      MEMORY[0x277D82BD8](v8);
      if (sub_214CCFD14())
      {
        if (v12 <= 800.0)
        {
          v5 = 2;
        }

        else
        {
          v5 = 4;
        }

        MEMORY[0x277D82BD8](v9);
        v6 = v5;
      }

      else
      {
        if (v12 <= 800.0)
        {
          v7 = 4;
        }

        else
        {
          v7 = 6;
        }

        MEMORY[0x277D82BD8](v9);
        v6 = v7;
      }

      break;
    case 4:
    case 8:
      v6 = 3;
      break;
    case 5:
    case 9:
      if (v12 <= 800.0)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }

      v6 = v4;
      break;
    default:
      v6 = 1;
      break;
  }

  return v6;
}

uint64_t static SearchCollectionViewLayoutFactory_iOS.layout(forSection:layoutEnvironment:)(char *a1, void *a2)
{
  v9 = 0;
  v8 = 0;
  v5 = *a1;
  v9 = v5;
  v8 = a2;
  v7 = v5;
  v6 = static SearchCollectionViewLayoutFactory_iOS.columnCount(forSection:usingLayoutEnvironment:)(&v7, a2);
  switch(v5)
  {
    case 1:
    case 7:
    case 10:
    case 11:
    case 12:
    case 13:
      v3 = static SearchCollectionViewLayoutFactory_iOS.listSectionWithHeaderLayout(_:)(a2);
      break;
    case 2:
      v3 = static SearchCollectionViewLayoutFactory_iOS.listSectionLayout(_:showsSeparators:)(a2, 0);
      break;
    case 3:
      v3 = static SearchCollectionViewLayoutFactory_iOS.contactsSectionLayout(columns:)(v6);
      break;
    case 4:
      v3 = static SearchCollectionViewLayoutFactory_iOS.photosSectionLayout(columns:)(v6);
      break;
    case 5:
      v3 = static SearchCollectionViewLayoutFactory_iOS.locationsSectionLayout(columns:)(v6);
      break;
    case 6:
      v3 = static SearchCollectionViewLayoutFactory_iOS.recentSearchesSectionLayout(_:deletion:)(a2, sub_214CA2E60, 0);
      break;
    case 8:
      v3 = static SearchCollectionViewLayoutFactory_iOS.documentsSectionLayout(columns:)(v6);
      break;
    case 9:
      v3 = static SearchCollectionViewLayoutFactory_iOS.linksSectionLayout(columns:)(v6);
      break;
    default:
      v3 = static SearchCollectionViewLayoutFactory_iOS.indexStatusSectionLayout(_:)(a2);
      break;
  }

  return v3;
}

id static SearchCollectionViewLayoutFactory_iOS.contactsSectionLayout(columns:)(uint64_t a1)
{
  sub_214A772E0();
  v13 = [objc_opt_self() 0x1FAB6B7F8];
  v1 = [objc_opt_self() 0x1FAE0AF13];
  v27 = sub_214A77344(v13, v1);
  sub_214A7727C();
  MEMORY[0x277D82BE0](v27);
  v26 = sub_214A773B8(v27);
  v14 = [objc_opt_self() 0x1FAB6B7F8];
  v2 = [objc_opt_self() 0x1FAE0AF13];
  v25 = sub_214A77344(v14, v2);
  v24 = [objc_opt_self() horizontalGroupWithLayoutSize:v25 subitem:v26 count:a1];
  sub_214A77548();
  MEMORY[0x277D82BE0](v24);
  v21 = sub_214A775AC(v24);
  MEMORY[0x277D82BE0](v21);
  [v21 setInterGroupSpacing_];
  [v21 0x1FB606678];
  [v21 0x1FB05B8F8];
  [v21 0x1FB606678];
  [v21 0x1FB05B8F8];
  [v26 0x1FB05B8F8];
  v16 = [objc_opt_self() 0x1FAB6B7F8];
  v9 = [objc_opt_self() 0x1FAE0AF13];
  v23 = sub_214A77344(v16, v9);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v23);
  v10 = sub_214CABD1C();
  v17 = *v10;
  v18 = v10[1];

  v22 = sub_214CA0FCC(v23, v17, v18, 5);
  sub_214CD03C4();
  v19 = v11;
  MEMORY[0x277D82BE0](v22);
  *v19 = v22;
  sub_214A63280();
  v20 = sub_214CCF7D4();

  [v21 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  return v21;
}

id static SearchCollectionViewLayoutFactory_iOS.documentsSectionLayout(columns:)(uint64_t a1)
{
  sub_214A772E0();
  v9 = [objc_opt_self() 0x1FAB6B7F8];
  v1 = [objc_opt_self() 0x1FAE0AF13];
  v28 = sub_214A77344(v9, v1);
  sub_214A7727C();
  MEMORY[0x277D82BE0](v28);
  v27 = sub_214A773B8(v28);
  [v27 0x1FB05B8F8];
  v10 = [objc_opt_self() 0x1FAB6B7F8];
  v2 = [objc_opt_self() 0x1FAE0AF13];
  v26 = sub_214A77344(v10, v2);
  v25 = [objc_opt_self() horizontalGroupWithLayoutSize:v26 subitem:v27 count:a1];
  sub_214A77548();
  MEMORY[0x277D82BE0](v25);
  v20 = sub_214A775AC(v25);
  MEMORY[0x277D82BE0](v20);
  [v20 0x1FB05B8F8];
  v12 = [objc_opt_self() 0x1FAB6B7F8];
  v3 = [objc_opt_self() 0x1FAE0AF13];
  v24 = sub_214A77344(v12, v3);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v24);
  v4 = sub_214CB5E44();
  v13 = *v4;
  v14 = v4[1];

  v23 = sub_214CA0FCC(v24, v13, v14, 1);
  v15 = [objc_opt_self() 0x1FAB6B7F8];
  v5 = [objc_opt_self() 0x1FAE0AF13];
  v22 = sub_214A77344(v15, v5);
  MEMORY[0x277D82BE0](v22);
  v6 = sub_214CABD1C();
  v16 = *v6;
  v17 = v6[1];

  v21 = sub_214CA0FCC(v22, v16, v17, 5);
  sub_214CD03C4();
  v18 = v7;
  MEMORY[0x277D82BE0](v23);
  *v18 = v23;
  MEMORY[0x277D82BE0](v21);
  v18[1] = v21;
  sub_214A63280();
  v19 = sub_214CCF7D4();

  [v20 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  return v20;
}

id static SearchCollectionViewLayoutFactory_iOS.linksSectionLayout(columns:)(uint64_t a1)
{
  v28[1] = a1;
  sub_214A772E0();
  v7 = objc_opt_self();
  v28[0] = a1;
  v10 = sub_214A63208();
  v9 = MEMORY[0x277D83B88];
  v8 = [v7 0x1FAB6B7F8];
  v1 = [objc_opt_self() fractionalHeightDimension_];
  v21 = sub_214A77344(v8, v1);
  v27[6] = v21;
  sub_214A7727C();
  MEMORY[0x277D82BE0](v21);
  v20 = sub_214A773B8(v21);
  v27[5] = v20;
  v27[1] = 2.0;
  v27[2] = 2.0;
  v27[3] = 2.0;
  v27[4] = 2.0;
  [v20 0x1FB05B8F8];
  v12 = [objc_opt_self() 0x1FAB6B7F8];
  v11 = objc_opt_self();
  v27[0] = a1;
  v2 = [v11 0x1FAB6B7F8];
  v26 = sub_214A77344(v12, v2);
  v25 = [objc_opt_self() horizontalGroupWithLayoutSize:v26 subitem:v20 count:a1];
  v14 = [objc_opt_self() fixedSpacing_];
  [v25 setInterItemSpacing_];
  MEMORY[0x277D82BD8](v14);
  sub_214A77548();
  MEMORY[0x277D82BE0](v25);
  v24 = sub_214A775AC(v25);
  [v24 0x1FB05B8F8];
  [v24 setInterGroupSpacing_];
  v15 = [objc_opt_self() 0x1FAB6B7F8];
  v3 = [objc_opt_self() estimatedDimension_];
  v23 = sub_214A77344(v15, v3);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v23);
  v4 = sub_214CB5E44();
  v16 = *v4;
  v17 = v4[1];

  v22 = sub_214CA0FCC(v23, v16, v17, 1);
  sub_214CD03C4();
  v18 = v5;
  MEMORY[0x277D82BE0](v22);
  *v18 = v22;
  sub_214A63280();
  v19 = sub_214CCF7D4();

  [v24 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  return v24;
}

id static SearchCollectionViewLayoutFactory_iOS.locationsSectionLayout(columns:)(uint64_t a1)
{
  v35[1] = a1;
  sub_214A772E0();
  v9 = objc_opt_self();
  v35[0] = a1;
  v12 = sub_214A63208();
  v11 = MEMORY[0x277D83B88];
  v10 = [v9 0x1FAB6B7F8];
  v1 = [objc_opt_self() fractionalHeightDimension_];
  v26 = sub_214A77344(v10, v1);
  v34[6] = v26;
  sub_214A7727C();
  MEMORY[0x277D82BE0](v26);
  v25 = sub_214A773B8(v26);
  v34[5] = v25;
  v34[1] = 2.0;
  v34[2] = 2.0;
  v34[3] = 2.0;
  v34[4] = 2.0;
  [v25 0x1FB05B8F8];
  v14 = [objc_opt_self() 0x1FAB6B7F8];
  v13 = objc_opt_self();
  v34[0] = a1;
  v2 = [v13 0x1FAB6B7F8];
  v33 = sub_214A77344(v14, v2);
  v32 = [objc_opt_self() horizontalGroupWithLayoutSize:v33 subitem:v25 count:a1];
  v16 = [objc_opt_self() fixedSpacing_];
  [v32 setInterItemSpacing_];
  MEMORY[0x277D82BD8](v16);
  sub_214A77548();
  MEMORY[0x277D82BE0](v32);
  v31 = sub_214A775AC(v32);
  [v31 0x1FB05B8F8];
  [v31 setInterGroupSpacing_];
  v17 = [objc_opt_self() 0x1FAB6B7F8];
  v3 = [objc_opt_self() 0x1FAE0AF13];
  v30 = sub_214A77344(v17, v3);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v30);
  v4 = sub_214CB5E44();
  v18 = *v4;
  v19 = v4[1];

  v29 = sub_214CA0FCC(v30, v18, v19, 1);
  v20 = [objc_opt_self() 0x1FAB6B7F8];
  v5 = [objc_opt_self() 0x1FAE0AF13];
  v28 = sub_214A77344(v20, v5);
  MEMORY[0x277D82BE0](v28);
  v6 = sub_214CABD1C();
  v21 = *v6;
  v22 = v6[1];

  v27 = sub_214CA0FCC(v28, v21, v22, 5);
  sub_214CD03C4();
  v23 = v7;
  MEMORY[0x277D82BE0](v29);
  *v23 = v29;
  MEMORY[0x277D82BE0](v27);
  v23[1] = v27;
  sub_214A63280();
  v24 = sub_214CCF7D4();

  [v31 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  return v31;
}

id static SearchCollectionViewLayoutFactory_iOS.photosSectionLayout(columns:)(uint64_t a1)
{
  v35[1] = a1;
  sub_214A772E0();
  v9 = objc_opt_self();
  v35[0] = a1;
  v12 = sub_214A63208();
  v11 = MEMORY[0x277D83B88];
  v10 = [v9 0x1FAB6B7F8];
  v1 = [objc_opt_self() fractionalHeightDimension_];
  v26 = sub_214A77344(v10, v1);
  v34[2] = v26;
  sub_214A7727C();
  MEMORY[0x277D82BE0](v26);
  v25 = sub_214A773B8(v26);
  v34[1] = v25;
  v14 = [objc_opt_self() 0x1FAB6B7F8];
  v13 = objc_opt_self();
  v34[0] = a1;
  v2 = [v13 0x1FAB6B7F8];
  v33 = sub_214A77344(v14, v2);
  v32 = [objc_opt_self() horizontalGroupWithLayoutSize:v33 subitem:v25 count:a1];
  v16 = [objc_opt_self() fixedSpacing_];
  [v32 setInterItemSpacing_];
  MEMORY[0x277D82BD8](v16);
  sub_214A77548();
  MEMORY[0x277D82BE0](v32);
  v27 = sub_214A775AC(v32);
  MEMORY[0x277D82BE0](v27);
  [v27 setContentInsets_];
  [v27 setInterGroupSpacing_];
  v17 = [objc_opt_self() 0x1FAB6B7F8];
  v3 = [objc_opt_self() 0x1FAE0AF13];
  v31 = sub_214A77344(v17, v3);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v31);
  v4 = sub_214CB5E44();
  v18 = *v4;
  v19 = v4[1];

  v30 = sub_214CA0FCC(v31, v18, v19, 1);
  v20 = [objc_opt_self() 0x1FAB6B7F8];
  v5 = [objc_opt_self() 0x1FAE0AF13];
  v29 = sub_214A77344(v20, v5);
  MEMORY[0x277D82BE0](v29);
  v6 = sub_214CABD1C();
  v21 = *v6;
  v22 = v6[1];

  v28 = sub_214CA0FCC(v29, v21, v22, 5);
  sub_214CD03C4();
  v23 = v7;
  MEMORY[0x277D82BE0](v30);
  *v23 = v30;
  MEMORY[0x277D82BE0](v28);
  v23[1] = v28;
  sub_214A63280();
  v24 = sub_214CCF7D4();

  [v27 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  return v27;
}

uint64_t static SearchCollectionViewLayoutFactory_iOS.recentSearchesSectionLayout(_:deletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v16 = a2;
  v17 = a3;
  v18 = sub_214CA3BE8;
  v19 = sub_214CA3FB4;
  v34 = 0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v20 = 0;
  v11 = sub_214CCDF34();
  v14 = *(v11 - 8);
  v10[1] = v11 - 8;
  v10[0] = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v15 = v10 - v10[0];
  v26 = sub_214CCDF94();
  v22 = *(v26 - 8);
  v23 = v26 - 8;
  v13 = *(v22 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v24 = v10 - v12;
  v4 = MEMORY[0x28223BE20](v3);
  v25 = v10 - v5;
  v34 = v10 - v5;
  v33 = v21;
  v31 = v6;
  v32 = v17;
  (*(v14 + 104))(v4);
  sub_214CCDF44();

  v7 = swift_allocObject();
  v8 = v17;
  *(v7 + 16) = v16;
  *(v7 + 24) = v8;
  sub_214CCDF24();
  sub_214CCDF84();
  sub_214A77548();
  (*(v22 + 16))(v24, v25, v26);
  v29 = sub_214CCFD34();
  v28 = *(v22 + 8);
  v27 = v22 + 8;
  v28(v24, v26);
  v30 = v29;
  v28(v25, v26);
  return v29;
}

void *static SearchCollectionViewLayoutFactory_iOS.listSectionWithHeaderLayout(_:)(void *a1)
{
  has_malloc_size = _swift_stdlib_has_malloc_size();
  v14 = static SearchCollectionViewLayoutFactory_iOS.listSectionLayout(_:showsSeparators:)(a1, has_malloc_size & 1);
  sub_214A772E0();
  v7 = [objc_opt_self() fractionalWidthDimension_];
  v2 = [objc_opt_self() estimatedDimension_];
  v13 = sub_214A77344(v7, v2);
  sub_214CA0A40();
  MEMORY[0x277D82BE0](v13);
  v3 = sub_214CB88D8();
  v8 = *v3;
  v9 = v3[1];

  v12 = sub_214CA0FCC(v13, v8, v9, 1);
  sub_214CD03C4();
  v10 = v4;
  MEMORY[0x277D82BE0](v12);
  *v10 = v12;
  sub_214A63280();
  v11 = sub_214CCF7D4();

  [v14 setBoundarySupplementaryItems_];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  return v14;
}

uint64_t static SearchCollectionViewLayoutFactory_iOS.listSectionLayout(_:showsSeparators:)(void *a1, int a2)
{
  v25 = a1;
  v17 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v11 = 0;
  v12 = sub_214CCDF34();
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v8 - v15;
  v18 = sub_214CCDF94();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v22 = &v8 - v21;
  v23 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v24 = &v8 - v23;
  v31 = &v8 - v23;
  v30 = v4;
  v29 = v5 & 1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v26 = [v25 traitCollection];
  swift_unknownObjectRelease();
  v27 = [v26 mf_useSplitViewStyling];
  v6 = MEMORY[0x277D82BD8](v26);
  if (v27)
  {
    (*(v13 + 104))(v16, *MEMORY[0x277D74D58], v12, v6);
  }

  else
  {
    (*(v13 + 104))(v16, *MEMORY[0x277D74D60], v12, v6);
  }

  sub_214CCDF44();
  sub_214CCDF74();
  sub_214A77548();
  (*(v19 + 16))(v22, v24, v18);
  v10 = sub_214CCFD34();
  v9 = *(v19 + 8);
  v8 = v19 + 8;
  v9(v22, v18);
  v28 = v10;
  v9(v24, v18);
  return v10;
}

uint64_t static SearchCollectionViewLayoutFactory_iOS.indexStatusSectionLayout(_:)(uint64_t a1)
{
  v14 = a1;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v13 = 0;
  v7 = sub_214CCDF34();
  v11 = *(v7 - 8);
  v6 = v7 - 8;
  v5 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v4 - v5;
  v19 = sub_214CCDF94();
  v15 = *(v19 - 8);
  v16 = v19 - 8;
  v9 = *(v15 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v17 = &v4 - v8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v18 = &v4 - v10;
  v25 = &v4 - v10;
  v24 = v14;
  (*(v11 + 104))(v2);
  sub_214CCDF44();
  sub_214CCDF74();
  sub_214A77548();
  (*(v15 + 16))(v17, v18, v19);
  v22 = sub_214CCFD34();
  v21 = *(v15 + 8);
  v20 = v15 + 8;
  v21(v17, v19);
  v23 = v22;
  v21(v18, v19);
  return v22;
}

id sub_214CA389C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v32 = a2;
  v33 = a3;
  v41 = sub_214CA4204;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v43 = 0;
  v38 = sub_214CCD374();
  v34 = *(v38 - 8);
  v35 = v38 - 8;
  v30 = v34;
  v31 = *(v34 + 64);
  v21 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v37 = &v20 - v21;
  v53 = v3;
  v51 = v4;
  v52 = v5;
  v46 = sub_214CA41A0();
  v22 = 1;
  v24 = sub_214CCF614("Delete", 6, 1);
  v28 = v6;
  v23 = sub_214CCF614("Title for swipe to delete action for recent search items.", 57, v22 & 1);
  v27 = v7;
  v26 = sub_214CA9BDC();
  sub_214B1C228();
  v25 = v8;
  v39 = sub_214CCCF54();
  v40 = v9;

  MEMORY[0x277D82BD8](v26);

  (*(v34 + 16))(v37, v29, v38);
  v36 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v10 = swift_allocObject();
  v11 = v33;
  v12 = v34;
  v13 = v36;
  v14 = v37;
  v15 = v38;
  v42 = v10;
  *(v10 + 16) = v32;
  *(v10 + 24) = v11;
  (*(v12 + 32))(v10 + v13, v14, v15);
  v44 = 1;
  v48 = sub_214CA3CB8(1, v39, v40, v41, v42);
  v50 = v48;
  sub_214CA429C();
  v47 = sub_214CD03C4();
  v45 = v16;
  MEMORY[0x277D82BE0](v48);
  *v45 = v48;
  sub_214A63280();
  v49 = sub_214CA3F30(v17, v18);
  MEMORY[0x277D82BD8](v48);
  return v49;
}

uint64_t sub_214CA3BF4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{

  v7 = a5(a7);
  a3(v7 & 1);
}

id sub_214CA3CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = sub_214CCF544();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v18 = a4;
  v19 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = 0;
  v16 = sub_214CA3E04;
  v17 = &block_descriptor_27;
  v6 = _Block_copy(&aBlock);
  v7 = [swift_getObjCClassFromMetadata() contextualActionWithStyle:a1 title:v9 handler:v6];
  _Block_release(v6);

  MEMORY[0x277D82BD8](v9);
  return v7;
}

uint64_t sub_214CA3E04(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7(a2, a3, sub_214CA4300);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
}

id sub_214CA3F30(uint64_t a1, double a2)
{
  sub_214CA41A0();
  v3 = sub_214CCF7D4();
  v4 = [swift_getObjCClassFromMetadata() configurationWithActions_];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

uint64_t sub_214CA3FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[0] = a3;
  v13 = a2;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v7[1] = 0;
  v8 = sub_214CCDE54();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = v7 - v11;
  v14 = sub_214CCDE64();
  v17 = *(v14 - 8);
  v15 = v14 - 8;
  v16 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14);
  v18 = v7 - v16;
  v21 = v7 - v16;
  v20 = a1;
  v19 = v5;
  (*(v17 + 16))(v4);
  if (!sub_214CCD334())
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D74C98], v8);
    sub_214CCDE44();
  }

  return (*(v17 + 32))(v7[0], v18, v14);
}

unint64_t sub_214CA41A0()
{
  v2 = qword_27CA38570;
  if (!qword_27CA38570)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38570);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214CA4204(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = sub_214CCD374();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  return sub_214CA3BF4(a1, a2, a3, a4, v6, v7, v8);
}

unint64_t sub_214CA429C()
{
  v2 = qword_27CA38578;
  if (!qword_27CA38578)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38578);
    return ObjCClassMetadata;
  }

  return v2;
}

char *SearchItem.section.getter@<X0>(_BYTE *a1@<X8>)
{
  v17 = a1;
  v27 = 0;
  v28 = 0;
  v18 = 0;
  v19 = type metadata accessor for SearchItem.LegacySuggested(0);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v21 = &v15[-v20];
  v28 = &v15[-v20];
  v24 = type metadata accessor for SearchItem(v1);
  v23 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v25 = &v15[-v23];
  v27 = v2;
  sub_214B9A920(v2, &v15[-v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v4 = v25;
        *v17 = 3;
        return sub_214B5BC5C(v4);
      case 2:
        v7 = v25;
        *v17 = 4;
        return sub_214C883D4(v7);
      case 3:
        v6 = v25;
        *v17 = 5;
        return sub_214BB4214(v6);
      case 4:
        v5 = v25;
        *v17 = 8;
        return sub_214B62C28(v5);
      case 5:
        sub_214CA46B0(v25, v21);
        v28 = v21;
        v16 = v21[*(v19 + 36)];
        if (v16)
        {
          v14 = v21;
          if (v16 == 1)
          {
            *v17 = 12;
          }

          else
          {
            *v17 = 13;
          }

          return sub_214BB01BC(v14);
        }

        else
        {
          v13 = v21;
          *v17 = 11;
          return sub_214BB01BC(v13);
        }

      case 6:
        v8 = v25;
        *v17 = 7;
        return sub_214B92DC4(v8);
      case 7:
        v9 = v25;
        *v17 = 6;
        return sub_214B92DC4(v9);
      case 8:
        v10 = v25;
        *v17 = 1;
        return sub_214CA4784(v10);
      default:
        v11 = v25;
        if (EnumCaseMultiPayload == 9)
        {
          *v17 = 2;
          return sub_214BAB488(v11);
        }

        else
        {
          *v17 = 9;
          return sub_214BB22B4(v11);
        }
    }
  }

  else
  {
    v3 = v25;
    *v17 = 10;
    return sub_214B92DC4(v3);
  }
}

uint64_t type metadata accessor for SearchItem(uint64_t a1)
{
  v2 = qword_280C7E1D0;
  if (!qword_280C7E1D0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

__n128 sub_214CA46B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SearchItem.LegacySuggested(0);
  *(a2 + v3[5]) = *(a1 + v3[5]);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  result = *(a1 + v3[7]);
  *(a2 + v3[7]) = result;
  *(a2 + v3[8]) = *(a1 + v3[8]);
  *(a2 + v3[9]) = *(a1 + v3[9]);
  return result;
}

uint64_t sub_214CA4784(uint64_t a1)
{
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1);
  v3 = type metadata accessor for SearchItem.TopHit(0);
  MEMORY[0x277D82BD8](*(a1 + *(v3 + 20)));

  return a1;
}

char *SearchItem.id.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v59 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v58 = 0;
  v57 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v48 = 0;
  v30 = type metadata accessor for SearchItem.Link(0);
  v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v32 = &v23 - v31;
  v68 = &v23 - v31;
  v33 = (*(*(type metadata accessor for SearchItem.InstantAnswer(v1) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v34 = &v23 - v33;
  v67 = &v23 - v33;
  v35 = (*(*(type metadata accessor for SearchItem.TopHit(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v36 = &v23 - v35;
  v66 = &v23 - v35;
  v37 = (*(*(type metadata accessor for SearchItem.LegacySuggested(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v38 = &v23 - v37;
  v65 = &v23 - v37;
  v39 = (*(*(type metadata accessor for SearchItem.Document(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v40 = &v23 - v39;
  v64 = &v23 - v39;
  v41 = (*(*(type metadata accessor for SearchItem.Location(v5) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v42 = &v23 - v41;
  v63 = &v23 - v41;
  v43 = (*(*(type metadata accessor for SearchItem.Photo(v6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v44 = &v23 - v43;
  v62 = &v23 - v43;
  v45 = type metadata accessor for SearchItem.Contact(v7);
  v46 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v47 = &v23 - v46;
  v61 = &v23 - v46;
  v49 = type metadata accessor for SearchItem.Generic(v8);
  v50 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v51 = &v23 - v50;
  v60 = &v23 - v50;
  v54 = type metadata accessor for SearchItem(v9);
  v53 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v55 = &v23 - v53;
  v59 = v10;
  sub_214B9A920(v10, (&v23 - v53));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_214B5BFEC(v55, v47);
        v61 = v47;
        v27 = &v47[*(v45 + 24)];
        v12 = sub_214CCD2B4();
        (*(*(v12 - 8) + 16))(v29, v27);
        return sub_214B5BC5C(v47);
      case 2:
        sub_214CA5B5C(v55, v44);
        v62 = v44;
        v13 = sub_214CCD2B4();
        (*(*(v13 - 8) + 16))(v29, v44);
        return sub_214C883D4(v44);
      case 3:
        sub_214BB4808(v55, v42);
        v63 = v42;
        v14 = sub_214CCD2B4();
        (*(*(v14 - 8) + 16))(v29, v42);
        return sub_214BB4214(v42);
      case 4:
        sub_214B633A4(v55, v40);
        v64 = v40;
        v15 = sub_214CCD2B4();
        (*(*(v15 - 8) + 16))(v29, v40);
        return sub_214B62C28(v40);
      case 5:
        sub_214CA46B0(v55, v38);
        v65 = v38;
        v16 = sub_214CCD2B4();
        (*(*(v16 - 8) + 16))(v29, v38);
        return sub_214BB01BC(v38);
      case 6:
        v57 = v51;
        sub_214B93174(v55, v51);
        v57 = v51;
        v26 = &v51[*(v49 + 24)];
        v17 = sub_214CCD2B4();
        (*(*(v17 - 8) + 16))(v29, v26);
        return sub_214B92DC4(v51);
      case 7:
        v58 = v51;
        sub_214B93174(v55, v51);
        v58 = v51;
        v25 = &v51[*(v49 + 24)];
        v18 = sub_214CCD2B4();
        (*(*(v18 - 8) + 16))(v29, v25);
        return sub_214B92DC4(v51);
      case 8:
        sub_214CA5AC4(v55, v36);
        v66 = v36;
        v19 = sub_214CCD2B4();
        (*(*(v19 - 8) + 16))(v29, v36);
        return sub_214CA4784(v36);
      case 9:
        sub_214CA5234(v55, v34);
        v67 = v34;
        v20 = sub_214CCD2B4();
        (*(*(v20 - 8) + 16))(v29, v34);
        return sub_214BAB488(v34);
      default:
        sub_214BB2898(v55, v32);
        v68 = v32;
        v24 = &v32[*(v30 + 20)];
        v21 = sub_214CCD2B4();
        (*(*(v21 - 8) + 16))(v29, v24);
        return sub_214BB22B4(v32);
    }
  }

  else
  {
    sub_214B93174(v55, v51);
    v60 = v51;
    v28 = &v51[*(v49 + 24)];
    v11 = sub_214CCD2B4();
    (*(*(v11 - 8) + 16))(v29, v28);
    return sub_214B92DC4(v51);
  }
}

__n128 sub_214CA5234(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v28 = type metadata accessor for SearchItem.InstantAnswer(0);
  *(a2 + v28[5]) = *(a1 + v28[5]);
  *(a2 + v28[6]) = *(a1 + v28[6]);
  *(a2 + v28[7]) = *(a1 + v28[7]);
  *(a2 + v28[8]) = *(a1 + v28[8]);
  v23 = v28[9];
  v25 = sub_214CCCEB4();
  v24 = *(v25 - 8);
  v26 = *(v24 + 32);
  v26(a2 + v23, a1 + v23);
  (v26)(a2 + v28[10], a1 + v28[10], v25);
  *(a2 + v28[11]) = *(a1 + v28[11]);
  v29 = v28[12];
  v31 = sub_214CCD154();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if ((v33)(a1 + v29, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
    memcpy((a2 + v29), (a1 + v29), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v32 + 32))();
    (*(v32 + 56))(a2 + v29, 0, 1, v31);
  }

  __dst = (a2 + v28[13]);
  __src = (a1 + v28[13]);
  v20 = sub_214CCD2F4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if ((v22)(__src, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v21 + 32))(__dst, __src, v20);
    (*(v21 + 56))(__dst, 0, 1, v20);
  }

  v16 = (a2 + v28[14]);
  v17 = (a1 + v28[14]);
  if (v22())
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
    memcpy(v16, v17, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(v21 + 32))(v16, v17, v20);
    (*(v21 + 56))(v16, 0, 1, v20);
  }

  v14 = (a2 + v28[15]);
  v15 = (a1 + v28[15]);
  if (v33())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370);
    memcpy(v14, v15, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v32 + 32))(v14, v15, v31);
    (*(v32 + 56))(v14, 0, 1, v31);
  }

  *(a2 + v28[16]) = *(a1 + v28[16]);
  *(a2 + v28[17]) = *(a1 + v28[17]);
  *(a2 + v28[18]) = *(a1 + v28[18]);
  *(a2 + v28[19]) = *(a1 + v28[19]);
  (v26)(a2 + v28[20], a1 + v28[20], v25);
  v12 = (a2 + v28[21]);
  v13 = (a1 + v28[21]);
  if ((*(v24 + 48))())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308, &qword_214CF1380);
    memcpy(v12, v13, *(*(v7 - 8) + 64));
  }

  else
  {
    (v26)(v12, v13, v25);
    (*(v24 + 56))(v12, 0, 1, v25);
  }

  v10 = (a2 + v28[22]);
  v11 = (a1 + v28[22]);
  if (v22())
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300, &qword_214CF1378);
    memcpy(v10, v11, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v21 + 32))(v10, v11, v20);
    (*(v21 + 56))(v10, 0, 1, v20);
  }

  *(a2 + v28[23]) = *(a1 + v28[23]);
  *(a2 + v28[24]) = *(a1 + v28[24]);
  *(a2 + v28[25]) = *(a1 + v28[25]);
  result = *(a1 + v28[26]);
  *(a2 + v28[26]) = result;
  return result;
}

uint64_t sub_214CA5AC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SearchItem.TopHit(0);
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  *(a2 + *(v3 + 24)) = *(a1 + *(v3 + 24));
  return result;
}

__n128 sub_214CA5B5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SearchItem.Photo(0);
  *(a2 + v3[5]) = *(a1 + v3[5]);
  result = *(a1 + v3[6]);
  *(a2 + v3[6]) = result;
  *(a2 + v3[7]) = *(a1 + v3[7]);
  *(a2 + v3[8]) = *(a1 + v3[8]);
  return result;
}

uint64_t SearchItem.hash(into:)(uint64_t a1)
{
  v5 = a1;
  v11 = 0;
  v10 = 0;
  v9 = sub_214CCD2B4();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v8 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  SearchItem.id.getter(&v4 - v4);
  sub_214CCD294();
  return (*(v6 + 8))(v8, v9);
}

uint64_t static SearchItem.== infix(_:_:)(uint64_t a1, void *a2)
{
  v97 = a1;
  v123 = a2;
  v133 = 0;
  v132 = 0;
  v95 = 0;
  v51 = (*(*(type metadata accessor for SearchItem.Link(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v52 = &v49[-v51];
  v53 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v54 = &v49[-v53];
  v55 = (*(*(type metadata accessor for SearchItem.InstantAnswer(v4) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v56 = &v49[-v55];
  v57 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v58 = &v49[-v57];
  v59 = (*(*(type metadata accessor for SearchItem.TopHit(v7) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v60 = &v49[-v59];
  v61 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v62 = &v49[-v61];
  v63 = (*(*(type metadata accessor for SearchItem.LegacySuggested(v10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v64 = &v49[-v63];
  v65 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v66 = &v49[-v65];
  v67 = (*(*(type metadata accessor for SearchItem.Document(v13) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v68 = &v49[-v67];
  v69 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v70 = &v49[-v69];
  v71 = (*(*(type metadata accessor for SearchItem.Location(v16) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v72 = &v49[-v71];
  v73 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v74 = &v49[-v73];
  v75 = (*(*(type metadata accessor for SearchItem.Photo(v19) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v76 = &v49[-v75];
  v77 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v78 = &v49[-v77];
  v79 = (*(*(type metadata accessor for SearchItem.Contact(v22) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v80 = &v49[-v79];
  v81 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v82 = &v49[-v81];
  v26 = type metadata accessor for SearchItem.Generic(v25);
  v83 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v84 = &v49[-v83];
  v85 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v49[-v83]);
  v86 = &v49[-v85];
  v87 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v49[-v85]);
  v88 = &v49[-v87];
  v89 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v49[-v87]);
  v90 = &v49[-v89];
  v91 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v49[-v89]);
  v92 = &v49[-v91];
  v93 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v49[-v91]);
  v94 = &v49[-v93];
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38580, &qword_214CF6088);
  v96 = (*(*(v127 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v129 = &v49[-v96];
  v128 = type metadata accessor for SearchItem(v32);
  v121 = *(*(v128 - 8) + 64);
  v98 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97);
  v99 = &v49[-v98];
  v100 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v101 = &v49[-v100];
  v102 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v103 = &v49[-v102];
  v104 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v105 = &v49[-v104];
  v106 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v107 = &v49[-v106];
  v108 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v109 = &v49[-v108];
  v110 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v111 = &v49[-v110];
  v112 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v113 = &v49[-v112];
  v114 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v115 = &v49[-v114];
  v116 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v117 = &v49[-v116];
  v118 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v119 = &v49[-v118];
  v120 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v126 = &v49[-v120];
  v122 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v124 = &v49[-v122];
  v133 = v45;
  v132 = v46;
  sub_214B9A920(v45, &v49[-v122]);
  sub_214B9A920(v123, v126);
  v125 = *(v127 + 48);
  sub_214BA3648(v124, v129);
  sub_214BA3648(v126, &v129[v125]);
  v130 = *(v127 + 48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_214B9A920(v129, v117);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_214B5BC5C(v117);
          goto LABEL_67;
        }

        sub_214B5BFEC(v117, v82);
        sub_214B5BFEC(&v129[v130], v80);
        if (static SearchItem.Contact.== infix(_:_:)(v82, v80))
        {
          sub_214B5BC5C(v80);
          sub_214B5BC5C(v82);
          sub_214B9C35C(v129);
          v50 = 1;
        }

        else
        {
          sub_214B5BC5C(v80);
          sub_214B5BC5C(v82);
          sub_214B9C35C(v129);
          v50 = 0;
        }

        break;
      case 2:
        sub_214B9A920(v129, v115);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_214C883D4(v115);
          goto LABEL_67;
        }

        sub_214CA5B5C(v115, v78);
        sub_214CA5B5C(&v129[v130], v76);
        if (static SearchItem.Photo.== infix(_:_:)(v78, v76))
        {
          sub_214C883D4(v76);
          sub_214C883D4(v78);
          sub_214B9C35C(v129);
          v50 = 1;
        }

        else
        {
          sub_214C883D4(v76);
          sub_214C883D4(v78);
          sub_214B9C35C(v129);
          v50 = 0;
        }

        break;
      case 3:
        sub_214B9A920(v129, v113);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_214BB4214(v113);
          goto LABEL_67;
        }

        sub_214BB4808(v113, v74);
        sub_214BB4808(&v129[v130], v72);
        if (static SearchItem.Location.== infix(_:_:)(v74, v72))
        {
          sub_214BB4214(v72);
          sub_214BB4214(v74);
          sub_214B9C35C(v129);
          v50 = 1;
        }

        else
        {
          sub_214BB4214(v72);
          sub_214BB4214(v74);
          sub_214B9C35C(v129);
          v50 = 0;
        }

        break;
      case 4:
        sub_214B9A920(v129, v111);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          sub_214B62C28(v111);
          goto LABEL_67;
        }

        sub_214B633A4(v111, v70);
        sub_214B633A4(&v129[v130], v68);
        if (static SearchItem.Document.== infix(_:_:)(v70, v68))
        {
          sub_214B62C28(v68);
          sub_214B62C28(v70);
          sub_214B9C35C(v129);
          v50 = 1;
        }

        else
        {
          sub_214B62C28(v68);
          sub_214B62C28(v70);
          sub_214B9C35C(v129);
          v50 = 0;
        }

        break;
      case 5:
        sub_214B9A920(v129, v109);
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          sub_214BB01BC(v109);
          goto LABEL_67;
        }

        sub_214CA46B0(v109, v66);
        sub_214CA46B0(&v129[v130], v64);
        if (static SearchItem.LegacySuggested.== infix(_:_:)(v66, v64))
        {
          sub_214BB01BC(v64);
          sub_214BB01BC(v66);
          sub_214B9C35C(v129);
          v50 = 1;
        }

        else
        {
          sub_214BB01BC(v64);
          sub_214BB01BC(v66);
          sub_214B9C35C(v129);
          v50 = 0;
        }

        break;
      case 6:
        sub_214B9A920(v129, v107);
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          sub_214B92DC4(v107);
          goto LABEL_67;
        }

        sub_214B93174(v107, v90);
        sub_214B93174(&v129[v130], v88);
        if (static SearchItem.Generic.== infix(_:_:)(v90, v88))
        {
          sub_214B92DC4(v88);
          sub_214B92DC4(v90);
          sub_214B9C35C(v129);
          v50 = 1;
        }

        else
        {
          sub_214B92DC4(v88);
          sub_214B92DC4(v90);
          sub_214B9C35C(v129);
          v50 = 0;
        }

        break;
      case 7:
        sub_214B9A920(v129, v105);
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          sub_214B92DC4(v105);
          goto LABEL_67;
        }

        sub_214B93174(v105, v86);
        sub_214B93174(&v129[v130], v84);
        if (static SearchItem.Generic.== infix(_:_:)(v86, v84))
        {
          sub_214B92DC4(v84);
          sub_214B92DC4(v86);
          sub_214B9C35C(v129);
          v50 = 1;
        }

        else
        {
          sub_214B92DC4(v84);
          sub_214B92DC4(v86);
          sub_214B9C35C(v129);
          v50 = 0;
        }

        break;
      case 8:
        sub_214B9A920(v129, v103);
        if (swift_getEnumCaseMultiPayload() != 8)
        {
          sub_214CA4784(v103);
          goto LABEL_67;
        }

        sub_214CA5AC4(v103, v62);
        sub_214CA5AC4(&v129[v130], v60);
        if (static SearchItem.TopHit.== infix(_:_:)(v62, v60))
        {
          sub_214CA4784(v60);
          sub_214CA4784(v62);
          sub_214B9C35C(v129);
          v50 = 1;
        }

        else
        {
          sub_214CA4784(v60);
          sub_214CA4784(v62);
          sub_214B9C35C(v129);
          v50 = 0;
        }

        break;
      case 9:
        sub_214B9A920(v129, v101);
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          sub_214BAB488(v101);
          goto LABEL_67;
        }

        sub_214CA5234(v101, v58);
        sub_214CA5234(&v129[v130], v56);
        if (static SearchItem.InstantAnswer.== infix(_:_:)(v58, v56))
        {
          sub_214BAB488(v56);
          sub_214BAB488(v58);
          sub_214B9C35C(v129);
          v50 = 1;
        }

        else
        {
          sub_214BAB488(v56);
          sub_214BAB488(v58);
          sub_214B9C35C(v129);
          v50 = 0;
        }

        break;
      default:
        sub_214B9A920(v129, v99);
        v47 = swift_getEnumCaseMultiPayload();
        if (v47 == 10)
        {
          sub_214BB2898(v99, v54);
          sub_214BB2898(&v129[v130], v52);
          if (static SearchItem.Link.== infix(_:_:)(v54, v52))
          {
            sub_214BB22B4(v52);
            sub_214BB22B4(v54);
            sub_214B9C35C(v129);
            v50 = 1;
          }

          else
          {
            sub_214BB22B4(v52);
            sub_214BB22B4(v54);
            sub_214B9C35C(v129);
            v50 = 0;
          }

          return v50 & 1;
        }

        sub_214BB22B4(v99);
LABEL_67:
        sub_214CA7274(v129);
        v50 = 0;
        return v50 & 1;
    }
  }

  else
  {
    sub_214B9A920(v129, v119);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_214B92DC4(v119);
      goto LABEL_67;
    }

    sub_214B93174(v119, v94);
    sub_214B93174(&v129[v130], v92);
    if (static SearchItem.Generic.== infix(_:_:)(v94, v92))
    {
      sub_214B92DC4(v92);
      sub_214B92DC4(v94);
      sub_214B9C35C(v129);
      v50 = 1;
    }

    else
    {
      sub_214B92DC4(v92);
      sub_214B92DC4(v94);
      sub_214B9C35C(v129);
      v50 = 0;
    }
  }

  return v50 & 1;
}

void *sub_214CA7274(void *a1)
{
  type metadata accessor for SearchItem(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:

        v91 = a1 + *(type metadata accessor for SearchItem.Contact(0) + 24);
        v2 = sub_214CCD2B4();
        (*(*(v2 - 8) + 8))(v91);

        break;
      case 2:
        v3 = sub_214CCD2B4();
        (*(*(v3 - 8) + 8))(a1);
        v90 = type metadata accessor for SearchItem.Photo(0);

        MEMORY[0x277D82BD8](*(a1 + *(v90 + 28)));

        break;
      case 3:
        v4 = sub_214CCD2B4();
        (*(*(v4 - 8) + 8))(a1);
        type metadata accessor for SearchItem.Location(0);

        break;
      case 4:
        v5 = sub_214CCD2B4();
        (*(*(v5 - 8) + 8))(a1);
        v89 = type metadata accessor for SearchItem.Document(0);

        v88 = a1 + *(v89 + 32);
        v6 = sub_214CCD154();
        (*(*(v6 - 8) + 8))(v88);

        break;
      case 5:
        v7 = sub_214CCD2B4();
        (*(*(v7 - 8) + 8))(a1);
        v87 = type metadata accessor for SearchItem.LegacySuggested(0);
        MEMORY[0x277D82BD8](*(a1 + *(v87 + 20)));

        MEMORY[0x277D82BD8](*(a1 + *(v87 + 32)));
        break;
      case 6:

        v86 = type metadata accessor for SearchItem.Generic(0);
        v85 = a1 + v86[6];
        v8 = sub_214CCD2B4();
        (*(*(v8 - 8) + 8))(v85);
        MEMORY[0x277D82BD8](*(a1 + v86[7]));
        MEMORY[0x277D82BD8](*(a1 + v86[8]));
        MEMORY[0x277D82BD8](*(a1 + v86[9]));

        break;
      case 7:

        v84 = type metadata accessor for SearchItem.Generic(0);
        v83 = a1 + v84[6];
        v9 = sub_214CCD2B4();
        (*(*(v9 - 8) + 8))(v83);
        MEMORY[0x277D82BD8](*(a1 + v84[7]));
        MEMORY[0x277D82BD8](*(a1 + v84[8]));
        MEMORY[0x277D82BD8](*(a1 + v84[9]));

        break;
      case 8:
        v10 = sub_214CCD2B4();
        (*(*(v10 - 8) + 8))(a1);
        v82 = type metadata accessor for SearchItem.TopHit(0);
        MEMORY[0x277D82BD8](*(a1 + *(v82 + 20)));

        break;
      case 9:
        v11 = sub_214CCD2B4();
        (*(*(v11 - 8) + 8))(a1);
        v77 = type metadata accessor for SearchItem.InstantAnswer(0);

        v73 = a1 + v77[9];
        v75 = sub_214CCCEB4();
        v74 = *(v75 - 8);
        v76 = *(v74 + 8);
        v76(v73);
        (v76)(a1 + v77[10], v75);

        v78 = a1 + v77[12];
        v79 = sub_214CCD154();
        v80 = *(v79 - 8);
        v81 = *(v80 + 48);
        if (!(v81)(v78, 1))
        {
          (*(v80 + 8))(v78, v79);
        }

        v69 = a1 + v77[13];
        v70 = sub_214CCD2F4();
        v71 = *(v70 - 8);
        v72 = *(v71 + 48);
        if (!(v72)(v69, 1))
        {
          (*(v71 + 8))(v69, v70);
        }

        v68 = a1 + v77[14];
        if (!v72())
        {
          (*(v71 + 8))(v68, v70);
        }

        v67 = a1 + v77[15];
        if (!v81())
        {
          (*(v80 + 8))(v67, v79);
        }

        (v76)(a1 + v77[20], v75);
        v66 = a1 + v77[21];
        if (!(*(v74 + 48))())
        {
          (v76)(v66, v75);
        }

        v65 = a1 + v77[22];
        if (!v72())
        {
          (*(v71 + 8))(v65, v70);
        }

        break;
      case 10:

        v64 = type metadata accessor for SearchItem.Link(0);
        v62 = a1 + *(v64 + 20);
        v12 = sub_214CCD2B4();
        (*(*(v12 - 8) + 8))(v62);
        v63 = a1 + *(v64 + 24);
        v13 = sub_214CCD154();
        (*(*(v13 - 8) + 8))(v63);

        break;
    }
  }

  else
  {

    v93 = type metadata accessor for SearchItem.Generic(0);
    v92 = a1 + v93[6];
    v1 = sub_214CCD2B4();
    (*(*(v1 - 8) + 8))(v92);
    MEMORY[0x277D82BD8](*(a1 + v93[7]));
    MEMORY[0x277D82BD8](*(a1 + v93[8]));
    MEMORY[0x277D82BD8](*(a1 + v93[9]));
  }

  v60 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38580, &qword_214CF6088) + 48);
  v61 = swift_getEnumCaseMultiPayload();
  if (v61)
  {
    switch(v61)
    {
      case 1:

        v57 = &v60[*(type metadata accessor for SearchItem.Contact(0) + 24)];
        v15 = sub_214CCD2B4();
        (*(*(v15 - 8) + 8))(v57);

        break;
      case 2:
        v16 = sub_214CCD2B4();
        (*(*(v16 - 8) + 8))(v60);
        v56 = type metadata accessor for SearchItem.Photo(0);

        MEMORY[0x277D82BD8](*&v60[*(v56 + 28)]);

        break;
      case 3:
        v17 = sub_214CCD2B4();
        (*(*(v17 - 8) + 8))(v60);
        type metadata accessor for SearchItem.Location(0);

        break;
      case 4:
        v18 = sub_214CCD2B4();
        (*(*(v18 - 8) + 8))(v60);
        v55 = type metadata accessor for SearchItem.Document(0);

        v54 = &v60[*(v55 + 32)];
        v19 = sub_214CCD154();
        (*(*(v19 - 8) + 8))(v54);

        break;
      case 5:
        v20 = sub_214CCD2B4();
        (*(*(v20 - 8) + 8))(v60);
        v53 = type metadata accessor for SearchItem.LegacySuggested(0);
        MEMORY[0x277D82BD8](*&v60[*(v53 + 20)]);

        MEMORY[0x277D82BD8](*&v60[*(v53 + 32)]);
        break;
      case 6:

        v52 = type metadata accessor for SearchItem.Generic(0);
        v51 = &v60[v52[6]];
        v21 = sub_214CCD2B4();
        (*(*(v21 - 8) + 8))(v51);
        MEMORY[0x277D82BD8](*&v60[v52[7]]);
        MEMORY[0x277D82BD8](*&v60[v52[8]]);
        MEMORY[0x277D82BD8](*&v60[v52[9]]);

        break;
      case 7:

        v50 = type metadata accessor for SearchItem.Generic(0);
        v49 = &v60[v50[6]];
        v22 = sub_214CCD2B4();
        (*(*(v22 - 8) + 8))(v49);
        MEMORY[0x277D82BD8](*&v60[v50[7]]);
        MEMORY[0x277D82BD8](*&v60[v50[8]]);
        MEMORY[0x277D82BD8](*&v60[v50[9]]);

        break;
      case 8:
        v23 = sub_214CCD2B4();
        (*(*(v23 - 8) + 8))(v60);
        v48 = type metadata accessor for SearchItem.TopHit(0);
        MEMORY[0x277D82BD8](*&v60[*(v48 + 20)]);

        break;
      case 9:
        v24 = sub_214CCD2B4();
        (*(*(v24 - 8) + 8))(v60);
        v43 = type metadata accessor for SearchItem.InstantAnswer(0);

        v39 = &v60[v43[9]];
        v41 = sub_214CCCEB4();
        v40 = *(v41 - 8);
        v42 = *(v40 + 8);
        v42(v39);
        (v42)(&v60[v43[10]], v41);

        v44 = &v60[v43[12]];
        v45 = sub_214CCD154();
        v46 = *(v45 - 8);
        v47 = *(v46 + 48);
        if (!(v47)(v44, 1))
        {
          (*(v46 + 8))(v44, v45);
        }

        v35 = &v60[v43[13]];
        v36 = sub_214CCD2F4();
        v37 = *(v36 - 8);
        v38 = *(v37 + 48);
        if (!(v38)(v35, 1))
        {
          (*(v37 + 8))(v35, v36);
        }

        v34 = &v60[v43[14]];
        if (!v38())
        {
          (*(v37 + 8))(v34, v36);
        }

        v33 = &v60[v43[15]];
        if (!v47())
        {
          (*(v46 + 8))(v33, v45);
        }

        (v42)(&v60[v43[20]], v41);
        v32 = &v60[v43[21]];
        if (!(*(v40 + 48))())
        {
          (v42)(v32, v41);
        }

        v31 = &v60[v43[22]];
        if (!v38())
        {
          (*(v37 + 8))(v31, v36);
        }

        break;
      case 10:

        v30 = type metadata accessor for SearchItem.Link(0);
        v28 = &v60[*(v30 + 20)];
        v25 = sub_214CCD2B4();
        (*(*(v25 - 8) + 8))(v28);
        v29 = &v60[*(v30 + 24)];
        v26 = sub_214CCD154();
        (*(*(v26 - 8) + 8))(v29);

        break;
    }
  }

  else
  {

    v59 = type metadata accessor for SearchItem.Generic(0);
    v58 = &v60[v59[6]];
    v14 = sub_214CCD2B4();
    (*(*(v14 - 8) + 8))(v58);
    MEMORY[0x277D82BD8](*&v60[v59[7]]);
    MEMORY[0x277D82BD8](*&v60[v59[8]]);
    MEMORY[0x277D82BD8](*&v60[v59[9]]);
  }

  return a1;
}

uint64_t SearchItem.hashValue.getter()
{
  type metadata accessor for SearchItem(0);
  sub_214CA8DEC();
  return sub_214CD0114();
}

unint64_t sub_214CA8DEC()
{
  v2 = qword_280C7E1E8[0];
  if (!qword_280C7E1E8[0])
  {
    type metadata accessor for SearchItem(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_280C7E1E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchItem.accessibilityDescription.getter()
{
  v97 = 0;
  v96 = 0;
  v99 = 0;
  v98 = 0;
  v81 = 0;
  v79 = (*(*(type metadata accessor for SearchItem.Generic(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v80 = &v30 - v79;
  v99 = &v30 - v79;
  v82 = type metadata accessor for SearchItem.LegacySuggested(v0);
  v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v84 = &v30 - v83;
  v98 = &v30 - v83;
  v87 = type metadata accessor for SearchItem(v1);
  v86 = (*(*(v87 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85);
  v88 = &v30 - v86;
  v97 = v2;
  sub_214B9A920(v2, (&v30 - v86));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v76 = sub_214CCF614("contact", 7, 1);
        v75 = v3;
        sub_214B5BC5C(v88);
        v77 = v76;
        v78 = v75;
        break;
      case 2:
        v74 = sub_214CCF614("photo", 5, 1);
        v73 = v4;
        sub_214C883D4(v88);
        v77 = v74;
        v78 = v73;
        break;
      case 3:
        v72 = sub_214CCF614("location", 8, 1);
        v71 = v5;
        sub_214BB4214(v88);
        v77 = v72;
        v78 = v71;
        break;
      case 4:
        v70 = sub_214CCF614("document", 8, 1);
        v69 = v6;
        sub_214B62C28(v88);
        v77 = v70;
        v78 = v69;
        break;
      case 5:
        *&v7 = sub_214CA46B0(v88, v84).n128_u64[0];
        v98 = v84;
        v68 = v84[*(v82 + 36)];
        if (v68)
        {
          if (v68 == 1)
          {
            v65 = sub_214CCF614("legacyMailbox", 13, 1, v7);
            v64 = v9;
            sub_214BB01BC(v84);
            v77 = v65;
            v78 = v64;
          }

          else
          {
            v63 = sub_214CCF614("legacyOther", 11, 1, v7);
            v62 = v10;
            sub_214BB01BC(v84);
            v77 = v63;
            v78 = v62;
          }
        }

        else
        {
          v67 = sub_214CCF614("legacyCanned", 12, 1, v7);
          v66 = v8;
          sub_214BB01BC(v84);
          v77 = v67;
          v78 = v66;
        }

        break;
      case 6:
        sub_214B93174(v88, v80);
        v99 = v80;
        v50 = 11;
        v11 = sub_214CD03B4();
        v57 = &v91;
        v91 = v11;
        v92 = v12;
        v55 = 1;
        v13 = sub_214CCF614("suggestion.", v50, 1);
        v51 = v14;
        MEMORY[0x21605E650](v13);

        v52 = *v80;
        v53 = *(v80 + 1);

        v54 = v90;
        v90[0] = v52;
        v90[1] = v53;
        sub_214CD0394();
        sub_214A61B48(v54);
        v15 = sub_214CCF614("", 0, v55 & 1);
        v56 = v16;
        MEMORY[0x21605E650](v15);

        v59 = v91;
        v58 = v92;

        sub_214A61B48(v57);
        v61 = sub_214CCF5F4();
        v60 = v17;
        sub_214B92DC4(v80);
        v77 = v61;
        v78 = v60;
        break;
      case 7:
        v96 = v80;
        sub_214B93174(v88, v80);
        v96 = v80;
        v38 = 7;
        v18 = sub_214CD03B4();
        v45 = &v94;
        v94 = v18;
        v95 = v19;
        v43 = 1;
        v20 = sub_214CCF614("recent.", v38, 1);
        v39 = v21;
        MEMORY[0x21605E650](v20);

        v40 = *v80;
        v41 = *(v80 + 1);

        v42 = v93;
        v93[0] = v40;
        v93[1] = v41;
        sub_214CD0394();
        sub_214A61B48(v42);
        v22 = sub_214CCF614("", 0, v43 & 1);
        v44 = v23;
        MEMORY[0x21605E650](v22);

        v47 = v94;
        v46 = v95;

        sub_214A61B48(v45);
        v49 = sub_214CCF5F4();
        v48 = v24;
        sub_214B92DC4(v80);
        v77 = v49;
        v78 = v48;
        break;
      case 8:
        v35 = sub_214CCF614("topHit", 6, 1);
        v34 = v26;
        sub_214CA4784(v88);
        v77 = v35;
        v78 = v34;
        break;
      case 9:
        v33 = sub_214CCF614("instantAnswer", 13, 1);
        v32 = v27;
        sub_214BAB488(v88);
        v77 = v33;
        v78 = v32;
        break;
      default:
        v31 = sub_214CCF614("link", 4, 1);
        v30 = v28;
        sub_214BB22B4(v88);
        v77 = v31;
        v78 = v30;
        break;
    }
  }

  else
  {
    v37 = sub_214CCF614("Search in All Mailboxes", 23, 1);
    v36 = v25;
    sub_214B92DC4(v88);
    v77 = v37;
    v78 = v36;
  }

  return v77;
}

unint64_t sub_214CA9828()
{
  v2 = qword_280C7E1E0;
  if (!qword_280C7E1E0)
  {
    type metadata accessor for SearchItem(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7E1E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214CA99C0(uint64_t a1)
{
  v11 = type metadata accessor for SearchItem.Generic(319);
  if (v1 <= 0x3F)
  {
    v11 = type metadata accessor for SearchItem.Contact(319);
    if (v2 <= 0x3F)
    {
      v11 = type metadata accessor for SearchItem.Photo(319);
      if (v3 <= 0x3F)
      {
        v11 = type metadata accessor for SearchItem.Location(319);
        if (v4 <= 0x3F)
        {
          v11 = type metadata accessor for SearchItem.Document(319);
          if (v5 <= 0x3F)
          {
            v11 = type metadata accessor for SearchItem.LegacySuggested(319);
            if (v6 <= 0x3F)
            {
              v11 = type metadata accessor for SearchItem.TopHit(319);
              if (v7 <= 0x3F)
              {
                v11 = type metadata accessor for SearchItem.InstantAnswer(319);
                if (v8 <= 0x3F)
                {
                  v11 = type metadata accessor for SearchItem.Link(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v11;
}

id sub_214CA9BDC()
{
  v0 = [objc_opt_self() mainBundle];

  return v0;
}

uint64_t sub_214CA9C48()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CA9C90()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CA9CD8()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CA9D20()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214CA9D90(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214CA9E28()
{
  v5 = *(v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel);
  *&v1 = MEMORY[0x277D82BE0](v5).n128_u64[0];
  sub_214CCF614("", v1);
  v4 = sub_214CCF544();

  [v5 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v7 = *(v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel);
  *&v2 = MEMORY[0x277D82BE0](v7).n128_u64[0];
  sub_214CCF614("", 0, 1, v2);
  v6 = sub_214CCF544();

  [v7 0x1FB02AAF8];
  MEMORY[0x277D82BD8](v6);
  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

uint64_t sub_214CA9F5C()
{
  sub_214CCF614("Label informing users of search indexing status", 47, 1);
  v58 = v1;
  sub_214CCF614("Label informing users on how to speed up search indexing while plugged in China", 79, 1);
  v59 = v2;
  sub_214CCF614("Label informing users on how to speed up search indexing while plugged in most regions", 86, 1);
  v60 = v3;
  v61 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus;
  v62 = (v0 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus);
  swift_beginAccess();
  if (*v62)
  {
    v53 = *(v57 + v61);
    MEMORY[0x277D82BE0](v53);
    swift_endAccess();
    v54 = [v53 scenario];
    MEMORY[0x277D82BD8](v53);
    v55 = v54;
    v56 = 0;
  }

  else
  {
    swift_endAccess();
    v55 = 0;
    v56 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA385A8, &qword_214CF6198);
  if (v56)
  {
LABEL_42:
    sub_214CA9E28();
    goto LABEL_44;
  }

  if (v55)
  {
    if (v55 != 1)
    {
      if (v55 != 2)
      {
        sub_214CD03E4();
        __break(1u);
      }

      goto LABEL_42;
    }

    v30 = *(v57 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel);
    *&v7 = MEMORY[0x277D82BE0](v30).n128_u64[0];
    sub_214CCF614("OPTIMIZING_SEARCH_TITLE", 23, 1, v7);
    v28 = sub_214CA9BDC();
    sub_214B1C228();
    sub_214CCCF54();

    MEMORY[0x277D82BD8](v28);

    v29 = sub_214CCF544();

    [v30 setText_];
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    v31 = *(v57 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel);
    MEMORY[0x277D82BE0](v31);
    v32 = MobileGestalt_get_current_device();
    if (v32)
    {
      v27 = v32;
    }

    else
    {
      sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/SearchPreparingView.swift", 32, 2, 47, 0);
      __break(1u);
    }

    wapiCapability = MobileGestalt_get_wapiCapability();
    MEMORY[0x277D82BD8](v27);
    if (wapiCapability)
    {
      v23 = objc_opt_self();
      sub_214CCF614("OPTIMIZING_SEARCH_OTHER_EXPLANATION_WLAN", 40, 1);
      v24 = sub_214CCF544();

      v25 = [v23 modelSpecificLocalizedStringKeyForKey_];
      MEMORY[0x277D82BD8](v24);
      if (v25)
      {
        sub_214CCF564();
        v21 = v8;
        MEMORY[0x277D82BD8](v25);
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (!v22)
      {
        sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/SearchPreparingView.swift", 32, 2, 48, 0);
        __break(1u);
      }

      v20 = sub_214CA9BDC();
      sub_214B1C228();
      v12 = v59;
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v20);
    }

    else
    {
      v17 = objc_opt_self();
      sub_214CCF614("OPTIMIZING_SEARCH_OTHER_EXPLANATION_WiFi", 40, 1);
      v18 = sub_214CCF544();

      v19 = [v17 modelSpecificLocalizedStringKeyForKey_];
      MEMORY[0x277D82BD8](v18);
      if (v19)
      {
        sub_214CCF564();
        v15 = v9;
        MEMORY[0x277D82BD8](v19);
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (!v16)
      {
        sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/SearchPreparingView.swift", 32, 2, 49, 0);
        __break(1u);
      }

      v14 = sub_214CA9BDC();
      sub_214B1C228();
      v12 = v60;
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v14);
    }

    v13 = sub_214CCF544();

    [v31 setText_];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v31);
  }

  else
  {
    v50 = *(v57 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel);
    *&v4 = MEMORY[0x277D82BE0](v50).n128_u64[0];
    sub_214CCF614("OPTIMIZING_SEARCH_TITLE", 23, 1, v4);
    v48 = sub_214CA9BDC();
    sub_214B1C228();
    sub_214CCCF54();

    MEMORY[0x277D82BD8](v48);

    v49 = sub_214CCF544();

    [v50 setText_];
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    v51 = *(v57 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel);
    MEMORY[0x277D82BE0](v51);
    v52 = MobileGestalt_get_current_device();
    if (v52)
    {
      v47 = v52;
    }

    else
    {
      sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/SearchPreparingView.swift", 32, 2, 42, 0);
      __break(1u);
    }

    v46 = MobileGestalt_get_wapiCapability();
    MEMORY[0x277D82BD8](v47);
    if (v46)
    {
      v43 = objc_opt_self();
      sub_214CCF614("OPTIMIZING_SEARCH_NORMAL_EXPLANATION_WLAN", 41, 1);
      v44 = sub_214CCF544();

      v45 = [v43 modelSpecificLocalizedStringKeyForKey_];
      MEMORY[0x277D82BD8](v44);
      if (v45)
      {
        sub_214CCF564();
        v41 = v5;
        MEMORY[0x277D82BD8](v45);
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      if (!v42)
      {
        sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/SearchPreparingView.swift", 32, 2, 43, 0);
        __break(1u);
      }

      v40 = sub_214CA9BDC();
      sub_214B1C228();
      v11 = v59;
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v40);
    }

    else
    {
      v37 = objc_opt_self();
      sub_214CCF614("OPTIMIZING_SEARCH_NORMAL_EXPLANATION_WiFi", 41, 1);
      v38 = sub_214CCF544();

      v39 = [v37 modelSpecificLocalizedStringKeyForKey_];
      MEMORY[0x277D82BD8](v38);
      if (v39)
      {
        sub_214CCF564();
        v35 = v6;
        MEMORY[0x277D82BD8](v39);
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      if (!v36)
      {
        sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/SearchPreparingView.swift", 32, 2, 44, 0);
        __break(1u);
      }

      v34 = sub_214CA9BDC();
      sub_214B1C228();
      v11 = v60;
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v34);
    }

    v33 = sub_214CCF544();

    [v51 setText_];
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v51);
  }

LABEL_44:
}

uint64_t sub_214CAAD84(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  return sub_214CA9F5C();
}

char *sub_214CAAE88(double a1, double a2, double a3, double a4)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  *&v11 = a3;
  *(&v11 + 1) = a4;
  ObjectType = swift_getObjectType();
  v14 = v10;
  v15 = v11;
  v16 = v4;
  v6 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView;
  sub_214A73FCC();
  *&v4[v6] = sub_214A61730();
  v7 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel;
  sub_214A73F68();
  *&v16[v7] = sub_214A61730();
  v8 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel;
  *&v16[v8] = sub_214A61730();
  *&v16[OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus] = 0;
  v13.receiver = v16;
  v13.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v13, sel_initWithFrame_, v10, v11);
  MEMORY[0x277D82BE0](v12);
  v16 = v12;
  sub_214CAB028();
  MEMORY[0x277D82BD8](v16);
  return v12;
}

double sub_214CAB028()
{
  v4 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel];
  MEMORY[0x277D82BE0](v4);
  v3 = [objc_opt_self() 0x1FBB7A66ELL];
  [v4 0x1FB30BC78];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v8 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel];
  MEMORY[0x277D82BE0](v8);
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D769D0];
  MEMORY[0x277D82BE0](*MEMORY[0x277D769D0]);
  v7 = [v5 0x1FBACF65ALL];
  [v8 0x1FAAB1478];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v9 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel];
  [v9 0x1FAC2AD78];
  MEMORY[0x277D82BD8](v9);
  v10 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel];
  [v10 0x1FAF65978];
  MEMORY[0x277D82BD8](v10);
  v12 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  MEMORY[0x277D82BE0](v12);
  v11 = [objc_opt_self() 0x1FBB7A66ELL];
  [v12 0x1FB30BC78];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v16 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  MEMORY[0x277D82BE0](v16);
  v13 = objc_opt_self();
  v14 = *MEMORY[0x277D76968];
  MEMORY[0x277D82BE0](*MEMORY[0x277D76968]);
  v15 = [v13 0x1FBACF65ALL];
  [v16 0x1FAAB1478];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  v17 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  [v17 0x1FAC2AD78];
  MEMORY[0x277D82BD8](v17);
  v18 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  [v18 0x1FAF65978];
  MEMORY[0x277D82BD8](v18);
  v19 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  [v19 setNumberOfLines_];
  MEMORY[0x277D82BD8](v19);
  v21 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  MEMORY[0x277D82BE0](v21);
  v20 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel];
  [v21 0x1FBB16380];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v23 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  MEMORY[0x277D82BE0](v23);
  v22 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel];
  [v23 0x1FBB16380];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v24 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v24);
  v25 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  [v25 setAxis_];
  MEMORY[0x277D82BD8](v25);
  v26 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  MEMORY[0x277D82BE0](v26);
  [v26 setSpacing_];
  MEMORY[0x277D82BD8](v26);
  v27 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  [v0 addSubview_];
  MEMORY[0x277D82BD8](v27);
  v46 = objc_opt_self();
  sub_214A6F394();
  sub_214CD03C4();
  v45 = v1;
  v28 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  v30 = [v28 0x1FBBB4950];
  MEMORY[0x277D82BD8](v28);
  v29 = [v0 0x1FBBB4950];
  MEMORY[0x277D82BD8](v0);
  v31 = [v30 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  *v45 = v31;
  v32 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  v34 = [v32 0x1FBB20D25];
  MEMORY[0x277D82BD8](v32);
  v33 = [v0 0x1FBB20D25];
  MEMORY[0x277D82BD8](v0);
  v35 = [v34 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  v45[1] = v35;
  v36 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  v38 = [v36 0x1FBB5C529];
  MEMORY[0x277D82BD8](v36);
  v37 = [v0 0x1FBB5C529];
  MEMORY[0x277D82BD8](v0);
  v39 = [v38 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  v45[2] = v39;
  v40 = *&v0[OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView];
  v43 = [v40 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v40);
  v42 = [v41 0x1FBBB59CCLL];
  (MEMORY[0x277D82BD8])();
  v44 = [v43 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  v45[3] = v44;
  sub_214A63280();
  v47 = sub_214CCF7D4();

  [v46 activateConstraints_];
  *&result = MEMORY[0x277D82BD8](v47).n128_u64[0];
  return result;
}

void sub_214CABA7C()
{
  v0 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_stackView;
  sub_214A73FCC();
  *v0 = sub_214A61730();
  v1 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_titleLabel;
  sub_214A73F68();
  *v1 = sub_214A61730();
  v2 = OBJC_IVAR____TtC6MailUI19SearchPreparingView_explanationLabel;
  *v2 = sub_214A61730();
  *OBJC_IVAR____TtC6MailUI19SearchPreparingView_indexStatus = 0;
  sub_214CCF614("init(coder:) has not been implemented", 37, 1);
  sub_214CD0204();
  __break(1u);
}

id SearchPreparingView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_214CABD1C()
{
  if (qword_280C7D9D8 != -1)
  {
    swift_once();
  }

  return &qword_280C7D9E0;
}

double SeparatorSupplementaryView.separatorLeadingInset.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_214CABDE0@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset);
  swift_beginAccess();
  v6 = *v4;
  swift_endAccess();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214CABE7C(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  SeparatorSupplementaryView.separatorLeadingInset.setter(v4);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double SeparatorSupplementaryView.separatorLeadingInset.setter(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return sub_214CABF54();
}

double sub_214CABF54()
{
  v6 = OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint;
  v7 = (v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint);
  swift_beginAccess();
  if (*v7)
  {
    v4 = *(v5 + v6);
    MEMORY[0x277D82BE0](v4);
    swift_endAccess();
    v2 = (v5 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset);
    swift_beginAccess();
    v3 = *v2;
    swift_endAccess();
    [v4 setConstant_];
    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

double (*SeparatorSupplementaryView.separatorLeadingInset.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214CAC0C0;
}

double sub_214CAC0C0(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return sub_214CABF54();
  }

  return result;
}

uint64_t sub_214CAC110()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214CAC180(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214CAC218()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214CAC288(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214CAC320()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CAC368()
{
  type metadata accessor for SeparatorSupplementaryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA385D0, &qword_214CF6230);
  result = sub_214CCF5B4();
  qword_280C7D9E0 = result;
  qword_280C7D9E8 = v1;
  return result;
}

uint64_t static SeparatorSupplementaryView.reuseIdentifier.getter()
{
  v1 = *sub_214CABD1C();

  return v1;
}

double sub_214CAC438()
{
  v8 = [v0 traitCollection];
  v9 = [v8 preferredContentSizeCategory];
  MEMORY[0x277D82BD8](v8);
  v10 = sub_214CCFD14();
  MEMORY[0x277D82BD8](v9);
  if (v10)
  {
    return 1.0;
  }

  v6 = objc_opt_self();
  v4 = [v0 traitCollection];
  [v4 displayScale];
  v5 = v1;
  MEMORY[0x277D82BD8](v4);
  [v6 uiRoundValue:v0 toViewScale:1.0 / v5];
  return v2;
}

char *SeparatorSupplementaryView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  *&v9 = a3;
  *(&v9 + 1) = a4;
  ObjectType = swift_getObjectType();
  v12 = v8;
  v13 = v9;
  v14 = v4;
  *&v4[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset] = 0;
  *&v14[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint] = 0;
  *&v14[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint] = 0;
  v6 = OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator;
  sub_214A7802C();
  *&v14[v6] = sub_214A61730();
  v11.receiver = v14;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, sel_initWithFrame_, v8, v9);
  MEMORY[0x277D82BE0](v10);
  v14 = v10;
  SeparatorSupplementaryView.setupLayout()();
  SeparatorSupplementaryView.configureBackground()();
  MEMORY[0x277D82BD8](v14);
  return v10;
}

Swift::Void __swiftcall SeparatorSupplementaryView.setupLayout()()
{
  v37 = v0;
  v6 = *&v0[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  [v0 addSubview_];
  MEMORY[0x277D82BD8](v6);
  v7 = *&v0[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v7);
  v8 = *&v0[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  v10 = [v8 heightAnchor];
  MEMORY[0x277D82BD8](v8);
  v12 = [v10 constraintEqualToConstant_];
  MEMORY[0x277D82BD8](v10);
  v11 = &v9[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint];
  swift_beginAccess();
  v1 = *v11;
  *v11 = v12;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  v13 = *&v9[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  v17 = [v13 0x1FBB5C529];
  MEMORY[0x277D82BD8](v13);
  v16 = [v9 0x1FBB5C529];
  (MEMORY[0x277D82BD8])();
  v14 = &v9[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset];
  swift_beginAccess();
  v15 = *v14;
  swift_endAccess();
  v19 = [v17 constraintEqualToAnchor:v16 constant:v15];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v18 = &v9[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint];
  swift_beginAccess();
  v2 = *v18;
  *v18 = v19;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36598, &qword_214CF1FA8);
  sub_214CD03C4();
  v35 = v3;
  v21 = *&v9[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  v23 = [v21 0x1FBBB4950];
  MEMORY[0x277D82BD8](v21);
  v22 = [v9 0x1FBBB4950];
  v24 = [v23 0x1FBB28F65];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  *v35 = v24;
  v25 = *&v9[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  v27 = [v25 0x1FBB20D25];
  MEMORY[0x277D82BD8](v25);
  v26 = [v9 0x1FBB20D25];
  v28 = [v27 0x1FBB28F65];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  v35[1] = v28;
  v29 = *&v9[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator];
  v31 = [v29 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v29);
  v30 = [v9 0x1FBBB59CCLL];
  v32 = [v31 0x1FBB28F65];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  v35[2] = v32;
  v33 = &v9[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint];
  swift_beginAccess();
  sub_214A671A8(v33, v35 + 3);
  swift_endAccess();
  v34 = &v9[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint];
  swift_beginAccess();
  sub_214A671A8(v34, v35 + 4);
  swift_endAccess();
  sub_214A63280();
  v36 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A0, &unk_214CF1FB0);
  sub_214A6F394();
  sub_214BD01B4();
  sub_214CCF6F4();
  sub_214A62278(&v36);
  v5 = sub_214CCF7D4();

  [v20 activateConstraints_];
  MEMORY[0x277D82BD8](v5);
}

Swift::Void __swiftcall SeparatorSupplementaryView.configureBackground()()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator);
  MEMORY[0x277D82BE0](v2);
  v1 = [objc_opt_self() separatorColor];
  [v2 setBackgroundColor_];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v2);
}

void sub_214CACFA0()
{
  *OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separatorLeadingInset = 0;
  *OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint = 0;
  *OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_leadingConstraint = 0;
  v0 = OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_separator;
  sub_214A7802C();
  *v0 = sub_214A61730();
  sub_214CCF614("init(coder:) has not been implemented", 37, 1);
  sub_214CD0204();
  __break(1u);
}

Swift::Void __swiftcall SeparatorSupplementaryView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  ObjectType = swift_getObjectType();
  v14 = isa;
  v13 = v1;
  *&v2 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, isa, v2);
  (MEMORY[0x277D82BD8])();
  MEMORY[0x277D82BE0](isa);
  if (isa)
  {
    v6 = [v10 traitCollection];
    v7 = [(objc_class *)isa mf_traitDifferenceAffectsTextLayout:v6, (MEMORY[0x277D82BD8])().n128_f64[0]];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](isa);
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v8;
  }

  if (v5)
  {
    v4 = &v10[OBJC_IVAR____TtC6MailUI26SeparatorSupplementaryView_heightConstraint];
    swift_beginAccess();
    if (*v4)
    {
      v3 = *v4;
      MEMORY[0x277D82BE0](*v4);
      swift_endAccess();
      [v3 setConstant_];
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      swift_endAccess();
    }
  }
}

id SeparatorSupplementaryView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Sequence<>.joined(by:matchingAttributes:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_214BD299C();
  v6 = sub_214A61730();
  MEMORY[0x277D82BE0](a1);
  sub_214CCF744();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v6);
  return v7;
}

void sub_214CAD57C(id *a1@<X0>, id *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = *a1;
  v12 = *a2;
  v14 = [*a1 length];
  *&v5 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  if (v14 > 0)
  {
    if (a3)
    {
      [v12 0x1FAD8E6F8];
      v6 = [v12 attributesAtIndex_longestEffectiveRange_inRange_];
      type metadata accessor for Key(0);
      sub_214B04398();
      sub_214CCF314();
      MEMORY[0x277D82BD8](v6);
      sub_214BD299C();
      MEMORY[0x277D82BE0](a4);
      v15 = sub_214CAD918(a4);
      v7 = [v15 0x1FAD8E6F8];
      MEMORY[0x277D82BD8](v15);

      v8 = sub_214CCF304();

      [v15 addAttributes:v8 range:{0, v7}];
      [v13 appendAttributedString_];
      MEMORY[0x277D82BD8](v15);
    }

    else
    {
      [v13 appendAttributedString_];
    }
  }

  [v13 appendAttributedString_];
  MEMORY[0x277D82BE0](v13);
  *a5 = v13;
}

uint64_t sub_214CAD958()
{
  type metadata accessor for Options(0);
  sub_214CD03C4();
  *v0 = 1;
  sub_214A63280();
  sub_214B01C30();
  sub_214CD0084();
  return v2;
}

uint64_t sub_214CAD9D4()
{
  type metadata accessor for MatchingOptions(0);
  sub_214CD03C4();
  sub_214B01D60();
  sub_214CD0084();
  return v1;
}

void sub_214CADA3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v52 = a2;
  v53 = 0;
  v75._internal = 0;
  v66 = 0;
  v65 = 0;
  v62 = 0;
  v78 = a1;
  v77 = a2;
  *&v75._checkout = a3;
  v76 = a4;
  sub_214CAE100(a2, a1, &v73);
  v54 = v73;
  v55 = v74;
  isa = v75.super.isa;
  pattern = v75._pattern;
  v58._rawValue = v75._options;
  v71 = v73;
  v72 = v74;
  v69 = v75.super.isa;
  v70 = v75._pattern;
  options = v75._options;
  v67 = v75._options;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  sub_214B50C54();
  if (sub_214CCFA94() & 1) != 0 || (sub_214CCF664())
  {
    v13 = v52;

    v17 = v52;
    v18 = 0;
    v19 = v49;
  }

  else
  {
    v45 = v49;
    v42 = 0;
    sub_214BD299C();
    v4 = v52;
    v43 = sub_214CAD918(v52);
    v66 = v43;
    v44 = sub_214CAE668();

    v5 = sub_214CAD958();
    NSRegularExpression.init(tokens:options:)(&v75, v58, v5);
    v46 = v6;
    v47 = v7;
    v48 = v6;
    if (v6)
    {
      v15 = v48;
    }

    else
    {
      v26 = v47;
      v38 = 0;
      v65 = v47;

      v27 = sub_214CCF544();

      v63 = isa;
      v64 = pattern;
      v29 = [v47 matchesInString:v27 options:sub_214CAD9D4() range:{isa, pattern}];

      v33 = 0;
      v28 = sub_214CAE6CC();
      v31 = sub_214CCF7E4();
      v30 = v31;
      v62 = v31;

      v61[1] = v31;
      KeyPath = swift_getKeyPath();
      v32 = KeyPath;

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385D8, &qword_214CF62A8);
      v34 = v36;
      v37 = type metadata accessor for _NSRange(0);
      v39 = sub_214CAE868();
      v40 = 0;
      v41 = sub_214A6E4F4(sub_214CAE834, KeyPath, v36, v37, MEMORY[0x277D84A98], v39, MEMORY[0x277D84AC0], v8);
      v20 = v41;
      v24 = 0;

      v61[0] = v41;
      v9 = v43;
      v21 = &v15;
      MEMORY[0x28223BE20](&v15);
      v22 = v14;
      v14[2] = v51;
      v14[3] = v50;
      v14[4] = v10;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385E8, &qword_214CF62B0);
      sub_214CAE9A0();
      v11 = v24;
      sub_214CCF764();
      v25 = v11;

      if (v11)
      {
        __break(1u);
      }

      else
      {
        sub_214A62278(v61);
        v12 = v43;
        v60 = v30;
        v16 = sub_214CCFA94() ^ 1;

        v17 = v43;
        v18 = v16;
        v19 = v25;
      }
    }
  }
}

uint64_t sub_214CAE100@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v43 = 0;
  v67 = 0;
  v44 = 0;
  v51 = 0;
  v69 = a1;
  v68 = a2;
  v45 = [a1 string];
  v48 = sub_214CCF564();
  v49 = v3;
  v46 = v48;
  v47 = v3;
  v65 = v48;
  v66 = v3;

  v50 = sub_214CCF5D4();
  v64 = v50;

  v62 = v48;
  v63 = v47;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA385F8, &unk_214CF62B8);
  v31 = v33;
  v34 = sub_214CAEA28();
  v32 = v34;
  v35 = sub_214B075A0();
  v36 = sub_214CCFEF4();
  v37 = v4;
  v60 = v36;
  v61 = v4;
  v38 = sub_214CAF7DC(v48, v47);
  v39 = v5;
  v58 = v38;
  v59 = v5;
  v40 = sub_214CCF5D4();
  v57 = v40;

  v55 = v38;
  v56 = v39;
  v29 = MEMORY[0x277D837D0];
  v24 = sub_214CCFEF4();
  v25 = v6;
  v53 = v24;
  v54 = v6;
  v52 = v41;
  v26 = &v18;
  MEMORY[0x28223BE20](&v18);
  v27 = &v16;
  v17 = v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  v8 = sub_214B50C54();
  v30 = sub_214A6E4F4(sub_214CB4300, v27, v28, v29, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
  v23 = v30;
  v51 = v30;
  if (sub_214CCFEE4())
  {

    v18 = v38;
    v19 = v39;
    v20 = v24;
    v21 = v25;
    v22 = v23;
  }

  else
  {

    v18 = v46;
    v19 = v47;
    v20 = v36;
    v21 = v37;
    v22 = v41;
  }

  v11 = v42;
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  *v42 = v18;
  v11[1] = v12;
  v11[2] = v13;
  v11[3] = v14;
  v11[4] = v15;
  return result;
}

unint64_t sub_214CAE668()
{
  v2 = qword_280C7CAD8;
  if (!qword_280C7CAD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CAD8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214CAE6CC()
{
  v2 = qword_280C7CA80;
  if (!qword_280C7CA80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CA80);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214CAE73C@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  *a2 = [*a1 range];
  a2[1] = v2;
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t sub_214CAE7BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);

  swift_getAtKeyPath();
  MEMORY[0x277D82BD8](v3);
}

unint64_t sub_214CAE868()
{
  v2 = qword_280C7CE10;
  if (!qword_280C7CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA385D8, &qword_214CF62A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CAE9A0()
{
  v2 = qword_280C7CDB0;
  if (!qword_280C7CDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA385E8, &qword_214CF62B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CAEA28()
{
  v2 = qword_280C7C420;
  if (!qword_280C7C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA385F8, &unk_214CF62B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C420);
    return WitnessTable;
  }

  return v2;
}

uint64_t static SnippetGenerator.highlightingTokens(tokens:in:highlighting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_214CADA3C(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t static SnippetGenerator.highlightingTokens(authorTokens:authorEmailTokens:inEmailAttributedString:highlighting:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v79[1] = 0;
  rawValue = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73[0] = 0;
  v62 = 0;
  v61 = 0;
  v79[6] = a1;
  v79[5] = a2;
  v79[4] = a3;
  v79[2] = a4;
  v79[3] = a5;
  v44 = MEMORY[0x277D837D0];
  v79[0] = sub_214CCF804();
  v50 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  v47 = sub_214B50C54();
  v48._rawValue = sub_214A6E4F4(sub_214CB4300, v49, v43, v44, MEMORY[0x277D84A98], v47, MEMORY[0x277D84AC0], v46);
  if (v45)
  {
    __break(1u);

    v12 = 0;
    v13 = 0;
    goto LABEL_19;
  }

  sub_214A62278(v79);
  rawValue = v48._rawValue;
  v77 = v48._rawValue;
  if ((sub_214CCFA94() & 1) != 0 || ![a3 length])
  {
    MEMORY[0x277D82BE0](a3);

    v30 = a3;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    goto LABEL_15;
  }

  sub_214CADA3C(v48._rawValue, a3, a4, a5);
  v36 = v5;
  v37 = v6;
  v76 = v5;
  v75 = v6 & 1;
  v73[1] = a1;
  v74 = (sub_214CCFA94() ^ 1) & 1;
  if (v74)
  {
    v35 = v37;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {

    v30 = v36;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
LABEL_15:
    sub_214A6B584(v31, v32);
    sub_214A6B584(0, 0);
    sub_214A6B584(v33, v34);
    sub_214A6B584(0, 0);
    return v30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38608, &qword_214CF62C8);
  sub_214CD03C4();
  v73[0] = sub_214CCF344();
  v26 = *MEMORY[0x277D06F28];
  v25 = [v36 length];
  type metadata accessor for EnumerationOptions(0);
  sub_214CD03C4();
  sub_214B01E90();
  sub_214CD0084();
  v27 = v72;
  v24 = swift_allocObject();
  *(v24 + 16) = v73;

  v23 = swift_allocObject();
  *(v23 + 16) = sub_214CB4334;
  *(v23 + 24) = v24;

  v70 = sub_214CB433C;
  v71 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = 0;
  v68 = sub_214CAFE5C;
  v69 = &block_descriptor_28;
  v28 = _Block_copy(&aBlock);

  v63 = 0;
  v64 = v25;
  [v36 enumerateAttribute:v26 inRange:0 options:v25 usingBlock:{v27, v28}];
  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x277D82BD8](v26);
    sub_214BD299C();
    MEMORY[0x277D82BE0](v36);
    v21 = sub_214CAD918(v36);
    v62 = v21;
    sub_214CAE668();

    v8 = sub_214CAD958();
    NSRegularExpression.init(tokens:options:)(v9, v48, v8);
    v22 = v10;
    if (!v11)
    {
      v61 = v10;
      v17 = *MEMORY[0x277D06F28];
      v16 = [v36 length];
      sub_214CD03C4();
      sub_214CD0084();
      v18 = v60;

      MEMORY[0x277D82BE0](v22);
      MEMORY[0x277D82BE0](v21);
      v15 = swift_allocObject();
      v15[2] = v73;
      v15[3] = &v74;
      v15[4] = a1;
      v15[5] = v22;
      v15[6] = a4;
      v15[7] = a5;
      v15[8] = v21;

      v14 = swift_allocObject();
      *(v14 + 16) = sub_214CB4348;
      *(v14 + 24) = v15;

      v58 = sub_214CB433C;
      v59 = v14;
      v53 = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = 0;
      v56 = sub_214CAFE5C;
      v57 = &block_descriptor_13_2;
      v19 = _Block_copy(&v53);

      v51 = 0;
      v52 = v16;
      [v36 enumerateAttribute:v17 inRange:0 options:v16 usingBlock:{v18, v19}];
      _Block_release(v19);
      v20 = swift_isEscapingClosureAtFileLocation();

      result = v20;
      if ((v20 & 1) == 0)
      {
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v22);
        sub_214A62278(v73);
        MEMORY[0x277D82BD8](v36);

        v30 = v21;
        v31 = sub_214CB4334;
        v32 = v24;
        v33 = sub_214CB4348;
        v34 = v15;
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    MEMORY[0x277D82BD8](v21);
    sub_214A62278(v73);
    MEMORY[0x277D82BD8](v36);

    v12 = sub_214CB4334;
    v13 = v24;
LABEL_19:
    sub_214A6B584(v12, v13);
    sub_214A6B584(0, 0);
    return v46;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_214CAF770@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_214CAF7DC(*a1, a1[1]);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_214CAF7DC(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  v36 = a1;
  v37 = a2;
  v10 = sub_214CCF614("’", 3, 0);
  v11 = v2;
  v33 = v10;
  v34 = v2;
  v31 = sub_214CCF614("'", 1, 1);
  v32 = v3;
  v29 = a1;
  v30 = a2;
  v27 = v10;
  v28 = v11;
  v25 = v31;
  v26 = v3;
  sub_214B075A0();
  sub_214B60B9C();
  v12 = sub_214CCFFD4();
  v16 = v4;
  v23 = v12;
  v24 = v4;
  v19 = v12;
  v20 = v4;
  v13 = *MEMORY[0x277CBE760];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBE760]);
  v14 = sub_214CCFFB4();
  v15 = v5;
  MEMORY[0x277D82BD8](v13);
  v17 = v14;
  v18 = v15;

  if (v15)
  {
    v21 = v17;
    v22 = v18;
  }

  else
  {

    v21 = v12;
    v22 = v16;
  }

  v7 = v21;

  return v7;
}

void (*sub_214CAFA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void)
{
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v26[8] = a1;
  v26[6] = a2;
  v26[7] = a3;
  v26[5] = a4;
  v26[4] = a5;
  sub_214C011C8(a1, v26);
  if (v26[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0, &unk_214CF2E80);
    if (swift_dynamicCast())
    {
      v19 = v21;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    sub_214A7D24C(v26);
    v20 = 0;
  }

  if (!v20)
  {
    return sub_214A6B584(0, 0);
  }

  v25 = v20;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = [v20 emailAddressValue];
  swift_unknownObjectRelease();
  if (v18)
  {
    v5 = [v18 simpleAddress];
    v15 = v5;
    if (v5)
    {
      v11 = sub_214CCF564();
      v12 = v6;
      MEMORY[0x277D82BD8](v15);
      v13 = v11;
      v14 = v12;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    MEMORY[0x277D82BD8](v18);
    v16 = v13;
    v17 = v14;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    return sub_214A6B584(0, 0);
  }

  v23 = v16;
  v24 = v17;

  v22[0] = v16;
  v22[1] = v17;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_214A73344;
  *(v10 + 24) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38688, &qword_214CF6430);
  result = sub_214CCF3A4();
  if (__OFADD__(*v8, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v8;
    result();

    sub_214A61B48(v22);

    swift_unknownObjectRelease();
    return sub_214A6B584(sub_214B26858, v10);
  }

  return result;
}

void *sub_214CAFE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a3;
  v9[5] = a4;
  v6 = *(a1 + 32);
  swift_unknownObjectRetain();
  if (a2)
  {
    v8[3] = swift_getObjectType();
    v8[0] = a2;
    v4 = sub_214B11A4C(v8, v9);
  }

  else
  {
    memset(v9, 0, 32);
  }

  v6(v4);
  return sub_214A7D24C(v9);
}

uint64_t sub_214CAFF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _BYTE *a6, uint64_t a7, void *a8, void (*a9)(uint64_t, uint64_t, uint64_t, __n128), uint64_t a10, uint64_t a11)
{
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v62 = 0;
  v55 = 0;
  v56 = 0;
  v78[14] = a1;
  v78[12] = a2;
  v78[13] = a3;
  v78[11] = a4;
  v78[10] = a5;
  v78[9] = a6;
  v78[8] = a7;
  v78[7] = a8;
  v78[5] = a9;
  v78[6] = a10;
  v78[4] = a11;
  sub_214C011C8(a1, v78);
  if (v78[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0, &unk_214CF2E80);
    result = swift_dynamicCast();
    if (result)
    {
      v45 = v52;
    }

    else
    {
      v45 = 0;
    }

    v46 = v45;
  }

  else
  {
    result = sub_214A7D24C(v78);
    v46 = 0;
  }

  if (!v46)
  {
    return result;
  }

  v77 = v46;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v44 = [v46 emailAddressValue];
  swift_unknownObjectRelease();
  if (v44)
  {
    v12 = [v44 simpleAddress];
    v41 = v12;
    if (v12)
    {
      v37 = sub_214CCF564();
      v38 = v13;
      MEMORY[0x277D82BD8](v41);
      v39 = v37;
      v40 = v38;
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    MEMORY[0x277D82BD8](v44);
    v42 = v39;
    v43 = v40;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v75 = v42;
  v76 = v43;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v36 = [v46 emailAddressValue];
  swift_unknownObjectRelease();
  if (v36)
  {
    v14 = [v36 displayName];
    v33 = v14;
    if (v14)
    {
      v29 = sub_214CCF564();
      v30 = v15;
      MEMORY[0x277D82BD8](v33);
      v31 = v29;
      v32 = v30;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    MEMORY[0x277D82BD8](v36);
    v34 = v31;
    v35 = v32;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v73 = v34;
  v74 = v35;

  if (!v43)
  {
    goto LABEL_31;
  }

  v55 = v42;
  v56 = v43;

  v53[0] = v42;
  v53[1] = v43;
  sub_214CCF3D4();
  sub_214A61B48(v53);
  if ((v54 & 1) != 0 || v53[2] <= 1)
  {

LABEL_31:
    v72 = 0;
    v28 = 0;
    goto LABEL_32;
  }

  v72 = 1;

  v28 = 1;
LABEL_32:

  if (v28)
  {
    v57 = a7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
    sub_214B50C54();
    v27 = sub_214CCFA94() ^ 1;
  }

  else
  {
    LOBYTE(v27) = 0;
  }

  *a6 = v27 & 1;
  if (*a6)
  {

    v58 = v34;
    v59 = v35;
    if (v35)
    {
      v60 = v58;
      v61 = v59;
    }

    else
    {
      v60 = sub_214CCF614("", 0, 1);
      v61 = v16;
      if (v59)
      {
        sub_214A61B48(&v58);
      }
    }

    v25 = v60;
    v26 = v61;
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v22 = [v46 stringValue];
    v23 = sub_214CCF564();
    v24 = v17;
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v22);
    v25 = v23;
    v26 = v24;
  }

  v70 = v25;
  v71 = v26;
  v19 = sub_214CCF644();
  v68 = 0;
  v69 = v19;

  v20 = sub_214CCF544();

  type metadata accessor for MatchingOptions(0);
  sub_214CD03C4();
  sub_214B01D60();
  sub_214CD0084();
  v65 = 0;
  v66 = v19;
  v21 = [a8 firstMatchInString:v20 options:v67 range:{0, v19}];
  v18 = MEMORY[0x277D82BD8](v20);
  v64 = v21;
  v63 = v21;
  v62 = v21 != 0;
  if (v21)
  {
    a9(a11, a2, a3, v18);
  }

  MEMORY[0x277D82BD8](v21);

  return swift_unknownObjectRelease();
}

id static SnippetGenerator.highlightedSnippetUsingTokens(tokens:in:maxNumberOfWordsBeforeOrAfterToken:maxNumberOfRanges:highlighting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v169 = a6;
  v170 = a5;
  v171 = a3;
  v172 = a2;
  v173 = a1;
  v175 = 0;
  v249 = 0;
  v234 = 0;
  v233 = 0u;
  v232 = 0u;
  v214 = 0;
  v210 = 0;
  v196 = 0;
  v193 = 0;
  v192 = 0;
  v189 = 0;
  v188 = 0;
  v255 = a1;
  v254 = a2;
  v253 = a3;
  v252 = a4;
  v250 = a5;
  v251 = a6;
  v247 = a4;
  v246 = 1;
  sub_214CD0444();
  v174 = v248;
  v245 = v248;
  sub_214CAE100(v172, v173, &v240);
  v176 = v240;
  v177 = v241;
  v178 = v242;
  v179 = v243;
  tokens._rawValue = v244;
  v180 = v244;
  v238 = v240;
  v239 = v241;
  v236 = v242;
  v237 = v243;
  v235 = v244;
  v181 = sub_214CAE668();

  v6 = sub_214CAD958();
  NSRegularExpression.init(tokens:options:)(v7, tokens, v6);
  v183 = v8;
  v184 = v9;
  v185 = v8;
  if (v8)
  {

    result = v185;
    v60 = v185;
    return result;
  }

  v155 = v184;
  v166 = 0;
  v234 = v184;

  v156 = sub_214CCF544();

  v231[1] = v178;
  v231[2] = v179;
  v158 = [v184 matchesInString:v156 options:sub_214CAD9D4() range:{v178, v179}];
  v157 = v158;

  v161 = 0;
  v159 = sub_214CAE6CC();
  v231[0] = sub_214CCF7E4();
  KeyPath = swift_getKeyPath();
  v160 = KeyPath;

  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385D8, &qword_214CF62A8);
  v165 = type metadata accessor for _NSRange(0);
  v162 = v165;
  v10 = sub_214CAE868();
  v167 = 0;
  v168 = sub_214A6E4F4(sub_214CAE834, KeyPath, v164, v165, MEMORY[0x277D84A98], v10, MEMORY[0x277D84AC0], v11);
  v146 = v168;
  v151 = 0;

  sub_214A62278(v231);

  v230 = v168;

  v147 = &v58;
  MEMORY[0x28223BE20](&v58);
  v149 = v57;
  v57[2] = v176;
  v57[3] = v177;
  v57[4] = v12;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385E8, &qword_214CF62B0);
  v148 = v150;
  v13 = sub_214CB442C();
  v14 = v151;
  v152 = v13;
  v16 = sub_214A6E4F4(sub_214CB43F8, v149, v150, v162, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v15);
  v153 = v14;
  v154 = v16;
  if (v14)
  {

    __break(1u);
    goto LABEL_22;
  }

  v141 = v154;
  v142 = 0;

  sub_214A62278(&v230);
  v229 = v141;
  v17 = sub_214CAE9A0();
  v18 = v142;
  v143 = v17;
  v19 = sub_214CCF754();
  v144 = v18;
  v145 = v19;
  if (v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v138 = v145;
  v139 = 0;
  sub_214A62278(&v229);
  v228 = v138;
  v20 = sub_214CCF2D4();
  v21 = v139;
  v227 = v20;
  sub_214CCF734();
  v140 = v21;
  if (v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v135 = 0;
  sub_214A62278(&v228);
  *&v226[1] = v231[3];
  v133 = &v232;
  sub_214CCFA84();
  v122 = *(&v232 + 1);
  v127 = v232;
  v123 = v233;
  swift_unknownObjectRetain();
  v223 = v127;
  v224 = v122;
  v225 = v123;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38610, &unk_214CF62D0);
  v124 = v125;
  v126 = sub_214CB44B4();
  sub_214CCFA04();
  v128 = v221;
  v129 = v222;
  swift_unknownObjectRelease();
  v219 = v128;
  v220 = v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38620, &qword_214CEEAF8);
  v130 = v131;
  sub_214CB453C();
  sub_214CCF434();
  v215 = v217;
  v216 = v218;
  v132 = v57;
  MEMORY[0x28223BE20](v57);
  v22 = v178;
  v134 = &v57[-6];
  v57[-4] = v133;
  v57[-3] = v22;
  v57[-2] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38628, &qword_214CF62E0);
  v25 = v135;
  v136 = v24;
  sub_214BD123C(sub_214CB45E0, v134, v24, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v26, v226);
  v137 = v25;
  if (v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v119 = 0;
  v118 = sub_214AF7FCC();
  v110 = v118;
  v27 = sub_214CCF614("…", 3, 0);
  v111 = sub_214BC9508(v27, v28);
  v214 = v111;
  v114 = v232;
  v112 = v232;
  v115 = v233;
  v113 = v233;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v212 = v114;
  v213 = v115;
  v29 = v172;
  v116 = v57;
  MEMORY[0x28223BE20](v57);
  v117 = &v57[-4];
  v57[-2] = v30;
  v31 = sub_214CB4640();
  v32 = v119;
  v34 = sub_214A6E4F4(sub_214CB4614, v117, v124, v118, MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v33);
  v120 = v32;
  v121 = v34;
  if (v32)
  {
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  v98 = v121;
  v107 = 0;

  sub_214A759F4();
  v211 = v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38630, &qword_214CF62E8);
  v99 = v100;
  v101 = sub_214CB46C8();
  v102 = &v211;
  v104 = Sequence<>.joined(by:matchingAttributes:)(v111, 1, v100, v101);
  v103 = v104;
  sub_214A62278(v102);
  v210 = v104;
  v206 = v112;
  v207 = v113;
  sub_214CCFA04();
  v105 = v204;
  v106 = v205;
  swift_unknownObjectRelease();
  v202 = v105;
  v203 = v106;
  sub_214A8C7F4();
  sub_214CCFA74();
  v35 = v107;
  v198 = v200;
  v199 = v201;
  v108 = v57;
  MEMORY[0x28223BE20](v57);
  v57[-2] = &v232;
  sub_214BD123C(sub_214CB4750, &v57[-4], v36, MEMORY[0x277D84A98], MEMORY[0x277D839B0], v37, &v208);
  v109 = v35;
  if (v35)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v197 = v208;
  if (v208 == 2)
  {
    v97 = 0;
  }

  else
  {
    v97 = v197;
  }

  v196 = v97 & 1;
  if (v97)
  {
    v89 = 0x1FAD8E000uLL;
    v38 = [v103 0x1FAD8E6F8];
    v90 = 0;
    v190 = 0;
    v191 = v38;
    v85 = [v103 attributesAtIndex:0 longestEffectiveRange:0 inRange:{0, v38}];
    v86 = type metadata accessor for Key(v90);
    v88 = sub_214B04398();
    v87 = MEMORY[0x277D84F70] + 8;
    v94 = sub_214CCF314();
    v189 = v94;

    sub_214BD299C();
    v39 = v111;
    v93 = sub_214CAD918(v111);
    v188 = v93;

    v92 = sub_214CCF304();

    v40 = v93;
    v91 = [v93 (v89 + 1784)];

    v186 = v90;
    v187 = v91;
    [v93 addAttributes:v92 range:{v90, v91}];

    v41 = v93;
    v95 = v93;
    v42 = v93;
    v209 = v93;

    v96 = v95;
  }

  else
  {
    v209 = 0;
    v96 = 0;
  }

  v77 = v96;
  v82 = v109;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38638, &qword_214CF62F0);
  v43 = sub_214CD03C4();
  v44 = v103;
  v80 = v43;
  v78 = v45;
  *v45 = v77;
  v46 = v44;
  v78[1] = v103;
  sub_214A63280();
  v195 = v47;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38640, &qword_214CF62F8);
  sub_214CB477C();
  v48 = v82;
  v49 = sub_214CCF6F4();
  v83 = v48;
  v84 = v49;
  if (v48)
  {
    goto LABEL_27;
  }

  v68 = v84;
  v73 = 0;
  sub_214A62278(&v195);
  v194 = v68;
  v69 = sub_214CAD8E0();
  v50 = sub_214C666A0();
  v71 = &v194;
  v72 = Sequence<>.joined(by:matchingAttributes:)(v69, v50 & 1, v99, v101);
  v70 = v72;

  sub_214A62278(v71);
  v51 = v73;
  v193 = v72;
  v52 = static SnippetGenerator.highlightingTokens(tokens:in:highlighting:)(v180, v72, v170, v169);
  v74 = v51;
  v75 = v52;
  v76 = v51;
  if (v51)
  {
LABEL_28:
    v59 = v76;

    sub_214A671E8(&v209);
    sub_214A759F4();

    return v59;
  }

  v64 = v75;
  v192 = v75;
  v66 = [v75 string];
  sub_214CCF564();
  v65 = v53;
  v67 = sub_214CCF664();

  if (v67)
  {
    v54 = v172;
    v63 = v172;
  }

  else
  {
    v55 = v64;
    v63 = v64;
  }

  v61 = v63;
  v62 = v74;

  sub_214A671E8(&v209);
  sub_214A759F4();

  return v61;
}

Swift::Int sub_214CB1854@<X0>(__C::_NSRange *a1@<X0>, Swift::Int a4@<X3>, __C::_NSRange *a5@<X8>)
{
  range = *a1;

  v9 = sub_214CCF544();
  v5 = NSString.rangeByAdding(maxNumberOfWordsBefore:maxNumberOfWordsAfter:range:)(a4, a4, range);
  MEMORY[0x277D82BD8](v9);

  result = v5.location;
  *a5 = v5;
  return result;
}

uint64_t sub_214CB1964(uint64_t *a1, NSRange *a2)
{
  v24 = a1;
  v25 = 0;
  v56 = 0;
  v51.length = 0;
  v51.location = 0;
  v47.length = 0;
  v47.location = 0;
  v42.length = 0;
  v42.location = 0;
  v57 = a1;
  v26 = *a2;
  v56 = v26;
  v28 = *a1;
  v27 = v28;

  v55 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385E8, &qword_214CF62B0);
  v29 = v30;
  sub_214CB49DC();
  sub_214CCF434();
  v31 = v53;
  if (v54)
  {

    v52 = v26;
    result = sub_214CCF884();
    v21 = v23;
  }

  else
  {
    v22 = v31;
    v20 = v31;
    v51 = v31;

    v50 = v31;
    v49 = v26;
    v3 = NSIntersectionRange(v31, v26);
    v48 = v3;
    v47 = v3;
    if (v3.length)
    {
      v18 = v23;
      v45 = v20;
      v44 = v26;
      v43 = NSUnionRange(v20, v26);
      length = v43.length;
      location = v43.location;
      v42 = v43;
      v10 = *v24;

      v40 = v10;
      sub_214CB4A64();
      sub_214CCFA04();
      v11 = v38;
      v12 = v39;

      v36 = v38;
      v37 = v39;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38620, &qword_214CEEAF8);
      sub_214CB453C();
      sub_214CCF434();
      v32 = v34;
      v33 = v35;
      v15 = &v9;
      MEMORY[0x28223BE20](&v9);
      v17 = v8;
      v8[2] = v24;
      v8[3] = location;
      v8[4] = v4;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38628, &qword_214CF62E0);
      v6 = v18;
      sub_214BD123C(sub_214CB4AEC, v17, v5, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v7, &v41);
      v19 = v6;
      result = 0;
      if (v6)
      {
        __break(1u);
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v46 = v26;
      sub_214CCF884();
      result = v23;
      v21 = v23;
    }
  }

  return result;
}

uint64_t sub_214CB1D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385E8, &qword_214CF62B0);
  v4 = sub_214CCF904();
  *v5 = a3;
  v5[1] = a4;
  return v4();
}

void *sub_214CB1DC4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _NSRange(0);
  result = sub_214CD0074();
  if (__OFSUB__(a4, v10.location + v10.length))
  {
    __break(1u);
  }

  else
  {
    v11.location = v10.location + v10.length;
    v11.length = a4 - (v10.location + v10.length);
    v6 = NSUnionRange(v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38610, &unk_214CF62D0);
    v7 = sub_214CD0064();
    *v8 = v6;
    return v7();
  }

  return result;
}

id sub_214CB1FAC@<X0>(id a1@<X1>, void *a2@<X0>, void *a3@<X8>)
{
  result = [a1 attributedSubstringFromRange_];
  *a3 = result;
  return result;
}

void *sub_214CB202C@<X0>(BOOL *a3@<X8>)
{
  type metadata accessor for _NSRange(0);
  result = sub_214CD0074();
  *a3 = v5 != 0;
  return result;
}

void static SnippetGenerator.highlightedSnippetUsingTokens(tokens:in:inside:highlighting:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v108 = 0;
  v107 = 0;
  v100 = 0;
  v101 = 0;
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  v88 = 0;
  v89 = 0;
  v87 = 0;
  v75 = 0;
  v76 = 0;
  v72 = 0;
  v71 = 0;
  v127 = a1;
  v126 = a2;
  v122 = a5;
  v123 = a6;
  v124 = a7;
  v125 = a8;
  v120 = a3;
  v121 = a4;
  v119 = v8;
  sub_214CAE100(a2, a1, v115);
  v63 = v116;
  v64 = v117;
  tokens = v118;
  v113 = v115[0];
  v114 = v115[1];
  v111 = v116;
  v112 = v117;
  v110 = v118;
  v109 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  sub_214B50C54();
  if (sub_214CCFA94() & 1) != 0 || (sub_214CCF664())
  {
    MEMORY[0x277D82BE0](a2);

    return;
  }

  sub_214AF7FCC();
  v9 = sub_214CCF614("…", 3, 0);
  v53 = sub_214BC9508(v9, v10);
  v108 = v53;
  sub_214CAE668();

  v11 = sub_214CAD958();
  NSRegularExpression.init(tokens:options:)(v12, tokens, v11);
  v54 = v13;
  if (v14)
  {
    MEMORY[0x277D82BD8](v53);

    return;
  }

  v107 = v13;

  v46 = sub_214CCF544();

  v103[1] = v63;
  v103[2] = v64;
  v47 = [v54 matchesInString:v46 options:sub_214CAD9D4() range:{v63, v64}];
  MEMORY[0x277D82BD8](v46);
  sub_214CAE6CC();
  v103[0] = sub_214CCF7E4();
  KeyPath = swift_getKeyPath();

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385D8, &qword_214CF62A8);
  v50 = type metadata accessor for _NSRange(0);
  v15 = sub_214CAE868();
  v52 = sub_214A6E4F4(sub_214CAE834, KeyPath, v49, v50, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v51);

  sub_214A62278(v103);
  MEMORY[0x277D82BD8](v47);
  v102 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA385E8, &qword_214CF62B0);
  sub_214CAE9A0();
  sub_214CCF714();
  sub_214A62278(&v102);
  v44 = v104;
  v45 = v105;
  if (v106)
  {
    MEMORY[0x277D82BE0](a2);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v53);

    return;
  }

  v100 = v104;
  v101 = v105;
  v98 = v104;
  v99 = v105;
  v132 = v104;
  v133 = v105;
  v43 = v104 + v105;
  v96 = 0;
  v97 = v104 + v105;
  if (__OFSUB__(v64, v104))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return;
  }

  v94 = v104;
  v95 = v64 - v104;
  v92 = v104;
  v93 = v105;
  v130 = v104;
  v131 = v105;
  v90 = v104;
  v91 = v105;
  v128 = v104;
  v129 = v105;
  if (__OFSUB__(v64, v104 + v105))
  {
    goto LABEL_31;
  }

  v88 = v104 + v105;
  v89 = v64 - (v104 + v105);
  v41 = swift_allocObject();
  v87 = v41 + 16;
  *(v41 + 16) = v44;
  v42 = [a2 string];
  if (v42)
  {
    v40 = v42;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/SnippetGenerator.swift", 29, 2, 228, 0);
    __break(1u);
  }

  _s3__C18EnumerationOptionsVMa_0(0);
  sub_214CD03C4();
  *v18 = 3;
  v18[1] = 256;
  sub_214A63280();
  sub_214B01640();
  sub_214CD0084();
  v37 = v86;
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](v53);

  v36 = swift_allocObject();
  *(v36 + 16) = v44;
  *(v36 + 24) = v45;
  *(v36 + 32) = v44 + v45;
  *(v36 + 40) = v64 - (v44 + v45);
  *(v36 + 48) = a2;
  *(v36 + 56) = v62;
  *(v36 + 64) = v53;
  *(v36 + 72) = a5;
  *(v36 + 80) = a6;
  *(v36 + 88) = a7;
  *(v36 + 96) = a8;
  *(v36 + 104) = v41;
  v84 = sub_214CB4804;
  v85 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = 0;
  v82 = sub_214C806A0;
  v83 = &block_descriptor_24_0;
  v38 = _Block_copy(&aBlock);

  v77 = 0;
  v78 = v43;
  [v40 enumerateSubstringsInRange:0 options:v43 usingBlock:{v37, v38}];
  _Block_release(v38);
  MEMORY[0x277D82BD8](v40);
  swift_beginAccess();
  v39 = *(v41 + 16);
  swift_endAccess();
  swift_beginAccess();
  swift_endAccess();
  if (__OFSUB__(v64, v39))
  {
    goto LABEL_32;
  }

  v75 = v39;
  v76 = v64 - v39;
  v73 = v39;
  v74 = v64 - v39;
  v35 = [a2 attributedSubstringFromRange_];
  v72 = v35;
  v71 = v39 != 0;
  if (v39)
  {
    [v35 0x1FAD8E6F8];
    v32 = [v35 attributesAtIndex_longestEffectiveRange_inRange_];
    type metadata accessor for Key(0);
    sub_214B04398();
    sub_214CCF314();
    MEMORY[0x277D82BD8](v32);
    sub_214BD299C();
    MEMORY[0x277D82BE0](v53);
    v67 = sub_214CAD918(v53);

    v33 = sub_214CCF304();

    v66 = [v67 0x1FAD8E6F8];
    [v67 addAttributes:v33 range:{0, v66, MEMORY[0x277D82BD8](v67).n128_f64[0]}];
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BE0](v67);
    MEMORY[0x277D82BE0](v67);
    v70 = v67;
    MEMORY[0x277D82BD8](v67);

    v34 = v67;
  }

  else
  {
    v70 = 0;
    v34 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38638, &qword_214CF62F0);
  sub_214CD03C4();
  v30 = v20;
  *v20 = v34;
  MEMORY[0x277D82BE0](v35);
  v30[1] = v35;
  sub_214A63280();
  v69 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA38640, &qword_214CF62F8);
  sub_214CB477C();
  v31 = sub_214CCF6F4();
  sub_214A62278(&v69);
  v68 = v31;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38630, &qword_214CF62E8);
  v26 = sub_214CB46C8();
  v27 = sub_214CAD8E0();
  v22 = sub_214C666A0();
  v28 = Sequence<>.joined(by:matchingAttributes:)(v27, v22 & 1, v25, v26);
  MEMORY[0x277D82BD8](v27);
  sub_214A62278(&v68);
  v29 = static SnippetGenerator.highlightingTokens(tokens:in:highlighting:)(tokens, v28, a3, a4);
  v23 = [v29 string];
  sub_214CCF564();
  v24 = sub_214CCF664();

  MEMORY[0x277D82BD8](v23);
  if (v24)
  {
    MEMORY[0x277D82BE0](a2);
  }

  else
  {
    MEMORY[0x277D82BE0](v29);
  }

  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v28);
  sub_214A671E8(&v70);
  MEMORY[0x277D82BD8](v35);

  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v53);
}

double sub_214CB3134(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4, uint64_t a5, uint64_t a6, uint64_t a7, NSUInteger a8, double a9, double a10, double a11, long double a12, NSUInteger a13, NSUInteger a14, NSUInteger a15, void *a16, uint64_t a17, void *a18, uint64_t a19)
{
  v66 = a1;
  v67 = a2;
  v64 = a3;
  v65 = a4;
  v62 = a5;
  v63 = a6;
  v61 = a7;
  v59 = a8;
  v60 = a13;
  v57 = a14;
  v58 = a15;
  v56 = a16;
  v55 = a17;
  v54 = a18;
  v50 = a9;
  v51 = a10;
  v52 = a11;
  v53 = a12;
  v49 = a19 + 16;
  v47 = a3;
  v48 = a4;
  v68.location = a3;
  v68.length = a4;
  v45 = a8;
  v46 = a13;
  v69.location = a8;
  v69.length = a13;
  v44 = NSUnionRange(v68, v69);
  v43 = v44;
  v42 = v44;
  v40 = a14;
  v41 = a15;
  v70.location = a14;
  v70.length = a15;
  v39 = NSUnionRange(v44, v70);
  v38 = v39;
  v24 = a3 != 0;
  v37 = a3 != 0;
  v36 = v44;
  v23 = [a16 0x1FB7C103ALL];
  v35 = v23;
  v34 = v39;
  v29 = [a16 0x1FB7C103ALL];
  v33 = v29;
  v32 = sub_214CB34E0(v23, a18, v24, 0, a9, a10, a11, a12) & 1;
  v30 = sub_214CB34E0(v29, a18, v24, 1, a9, a10, a11, a12);
  v31[25] = v30 & 1;
  if (v32)
  {
    v20 = 0;
  }

  else
  {
    v20 = v30 ^ 1;
  }

  if (v20)
  {
    v31[0] = 1;
    sub_214CAD888(v31, a7, MEMORY[0x277D85368]);
    MEMORY[0x277D82BD8](v29);
    *&result = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  else
  {
    swift_beginAccess();
    *(a19 + 16) = v44.location;
    swift_endAccess();
    MEMORY[0x277D82BD8](v29);
    *&result = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  return result;
}

uint64_t sub_214CB34E0(void *a1, void *a2, int a3, int a4, double a5, double a6, double a7, long double a8)
{
  v60 = a1;
  v51 = a2;
  v59 = a3;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  v49 = a8;
  v50 = a4;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0.0;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v62 = 0;
  v61 = 0;
  v52 = sub_214CD0364();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v56 = &v32 - v55;
  v57 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v10);
  v58 = &v32 - v57;
  v80 = v12;
  v79 = v13;
  v78 = v14 & 1;
  *&v76 = v11;
  *(&v76 + 1) = v15;
  *&v77 = v16;
  *(&v77 + 1) = v17;
  v75 = v18 & 1;
  v74 = v8;
  v19 = MEMORY[0x277D82BE0](v12).n128_u64[0];
  v73 = v60;
  if (v59)
  {
    v44 = 0;
    sub_214BD299C();
    MEMORY[0x277D82BE0](v60);
    v45 = sub_214CAD918(v60);
    v61 = v45;
    [v45 insertAttributedString:v51 atIndex:v44];
    MEMORY[0x277D82BE0](v45);
    v20 = v73;
    v73 = v45;
    MEMORY[0x277D82BD8](v20);
    v19 = MEMORY[0x277D82BD8](v45).n128_u64[0];
  }

  [v51 size];
  v71 = v21;
  v72 = v22;
  sub_214CB41C8(v51, v48, v22);
  v42 = v23;
  *&v69 = v24;
  *(&v69 + 1) = v25;
  *&v70 = v26;
  *(&v70 + 1) = v23;
  v68 = sub_214CB3FF8(v50 & 1);
  v41 = v48 * v68;
  (*(v53 + 104))(v58, *MEMORY[0x277D84680], v52);
  v67 = v42;
  (*(v53 + 16))(v56, v58, v52);
  result = (*(v53 + 88))(v56, v52);
  v43 = result;
  if (result == *MEMORY[0x277D84678])
  {
    v67 = round(v42);
    goto LABEL_17;
  }

  if (v43 == *MEMORY[0x277D84670])
  {
    v67 = rint(v42);
    goto LABEL_17;
  }

  if (v43 == *MEMORY[0x277D84680])
  {
    goto LABEL_15;
  }

  if (v43 == *MEMORY[0x277D84688])
  {
LABEL_16:
    v67 = floor(v42);
    goto LABEL_17;
  }

  if (v43 == *MEMORY[0x277D84660])
  {
    v67 = trunc(v42);
    goto LABEL_17;
  }

  if (v43 != *MEMORY[0x277D84668])
  {
    sub_214CCF9C4();
    (*(v53 + 8))(v56, v52);
LABEL_17:
    v33 = v67;
    (*(v53 + 8))(v58, v52);
    v38 = fmax(v49, v33);
    v37 = 0.0;
    v65 = 0uLL;
    *&v66 = v41;
    *(&v66 + 1) = v38;
    v34 = v73;
    MEMORY[0x277D82BE0](v73);
    sub_214CB41C8(v34, v41, v38);
    *&v35 = v28;
    *(&v35 + 1) = v29;
    *&v36 = v30;
    *(&v36 + 1) = v31;
    MEMORY[0x277D82BD8](v34);
    v63 = v35;
    v64 = v36;
    v39 = sub_214B2F92C(*&v35, *(&v35 + 1), *&v36, *(&v36 + 1), v37, v37, v41, v38);
    v62 = v39;
    MEMORY[0x277D82BD8](v73);
    return v39;
  }

  v40 = *&v42 >> 63;
  if (v42 >= 0.0)
  {
LABEL_15:
    v67 = ceil(v42);
    goto LABEL_17;
  }

  if (v40 == 1)
  {
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id SnippetGenerator.init()()
{
  v4 = v0;
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x277D82BE0](v2);
  v4 = v2;
  MEMORY[0x277D82BD8](v2);
  return v2;
}

id SnippetGenerator.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214CB3F78(double a1)
{
  if (0.5 == a1)
  {
    return 0;
  }

  if (1.0 == a1)
  {
    return 1;
  }

  return 2;
}

double sub_214CB3FF8(char a1)
{
  if (a1)
  {
    return 1.0;
  }

  else
  {
    return 0.5;
  }
}

uint64_t sub_214CB4038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_214CB4890();
  sub_214C2F894();
  return sub_214CD03F4() & 1;
}

uint64_t sub_214CB4088(uint64_t a1, uint64_t a2)
{
  sub_214CB4890();
  sub_214B5D4E4();
  return sub_214CCF7A4();
}

uint64_t sub_214CB40CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_214CB4890();
  sub_214B5D4E4();
  return sub_214CCF7C4();
}

uint64_t sub_214CB4118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_214CB4890();
  sub_214B5D4E4();
  return sub_214CCF7B4();
}

uint64_t sub_214CB4164@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214CB3F78(*a1);
  *a2 = result;
  return result;
}

id sub_214CB41C8(void *a1, double a2, double a3)
{
  v6 = a2 * 2.0;
  v7 = a3 * 2.0;
  type metadata accessor for NSStringDrawingOptions(0);
  sub_214CD03C4();
  *v3 = 1;
  v3[1] = 2;
  sub_214A63280();
  sub_214B01FC0();
  sub_214CD0084();
  return [a1 boundingRectWithSize:v9 options:0 context:{v6, v7, *&a2}];
}

uint64_t block_copy_helper_11_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214CB442C()
{
  v2 = qword_280C7CDA8;
  if (!qword_280C7CDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA385E8, &qword_214CF62B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB44B4()
{
  v2 = qword_280C7C448;
  if (!qword_280C7C448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA38610, &unk_214CF62D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB453C()
{
  v2 = qword_280C7CD78;
  if (!qword_280C7CD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38620, &qword_214CEEAF8);
    sub_214A8C138();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CD78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB4640()
{
  v2 = qword_280C7C438;
  if (!qword_280C7C438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA38610, &unk_214CF62D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C438);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB46C8()
{
  v2 = qword_280C7CE48;
  if (!qword_280C7CE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA38630, &qword_214CF62E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB477C()
{
  v2 = qword_280C7CE38;
  if (!qword_280C7CE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA38640, &qword_214CF62F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB4890()
{
  v2 = qword_27CA38650;
  if (!qword_27CA38650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB4960()
{
  v2 = qword_27CA38668;
  if (!qword_27CA38668)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38668);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB49DC()
{
  v2 = qword_280C7CDC0;
  if (!qword_280C7CDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA385E8, &qword_214CF62B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CB4A64()
{
  v2 = qword_27CA38678;
  if (!qword_27CA38678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA385E8, &qword_214CF62B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38678);
    return WitnessTable;
  }

  return v2;
}

id sub_214CB4B20(uint64_t a1)
{
  v4 = [v1 initWithAttributedString_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t Optional<A>.capitalizedIfDesirable(locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = &v62;
  v42 = a1;
  v37 = a2;
  v44 = a3;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v58 = 0;
  v59 = 0;
  v38 = sub_214CCD2D4();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v43 = &v12 - v41;
  v3[6] = v42;
  v3[4] = v4;
  v3[5] = v5;

  if (!v44)
  {
    goto LABEL_17;
  }

  v34 = v37;
  v35 = v44;
  v6 = v36;
  v7 = v37;
  v8 = v44;
  v29 = v44;
  v30 = v37;
  v36[2] = v37;
  v6[3] = v8;
  *v6 = v7;
  v6[1] = v8;
  v31 = sub_214B60F8C();
  sub_214CCFA74();
  v32 = v60;
  v33 = v61;
  if (!v61)
  {

LABEL_17:

    v14 = v37;
    v15 = v44;
    return v14;
  }

  v27 = v32;
  v28 = v33;
  v26 = v33;
  v58 = v32;
  v59 = v33;
  v9 = sub_214CCF414();
  if (v9 & 1) == 0 || ((, v52 = v30, v53 = v29, v22 = MEMORY[0x277D837D0], sub_214B61150(), sub_214CCFAA4(), v23 = v57, v48 = v54, v49 = v55, v50 = v56, v51 = v57, sub_214CB5040(), sub_214CCFA74(), v24 = v46, v25 = v47, , !v25) ? (v19 = 2) : (v20 = v24, v21 = v25, v17 = v25, v18 = sub_214CCF424(), , v19 = v18 & 1), (v45 = v19, v19 == 2) ? (v16 = 0) : (v16 = v45), (v16))
  {

    goto LABEL_17;
  }

  sub_214B1CFBC();
  v12 = String.capitalizingFirstLetter(locale:)(v43, v30, v29);
  v13 = v10;
  (*(v39 + 8))(v43, v38);

  v14 = v12;
  v15 = v13;
  return v14;
}

unint64_t sub_214CB5040()
{
  v2 = qword_27CA38690;
  if (!qword_27CA38690)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38690);
    return WitnessTable;
  }

  return v2;
}

uint64_t String.capitalizingFirstLetter(locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = a1;
  v15 = a2;
  v16 = a3;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35978, &qword_214CEFD90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v11 = v9 - v10;
  v28 = v3;
  v26 = v4;
  v27 = v5;

  v25[4] = v15;
  v25[5] = v16;
  v17 = sub_214B60F8C();
  v18 = MEMORY[0x277D837D0];
  sub_214CCFA84();
  v12 = v25;
  v25[0] = v25[6];
  v25[1] = v25[7];
  v25[2] = v25[8];
  v25[3] = v25[9];
  sub_214CCD2C4();
  v6 = sub_214CCD2D4();
  (*(*(v6 - 8) + 56))(v11, 0, 1);
  sub_214B61004();
  v19 = MEMORY[0x277D83E40];
  v13 = sub_214CCFFA4();
  v14 = v7;
  sub_214B6107C(v11);
  sub_214B61124(v12);
  v22 = v24;
  v24[0] = v13;
  v24[1] = v14;

  v23[4] = v15;
  v23[5] = v16;
  sub_214B61150();
  sub_214CCFAA4();
  v21 = v23;
  v23[0] = v23[6];
  v23[1] = v23[7];
  v23[2] = v23[8];
  v23[3] = v23[9];
  v20 = sub_214B61168();
  sub_214B611E0();
  sub_214CCFAE4();
  sub_214B61124(v21);
  sub_214A61B48(v22);
  return v25[10];
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{

  v5 = (a1 & 0x8000000000000000) == 0 && a1 < sub_214CCF854();

  if (!v5)
  {
    return (*(*(a3 - 8) + 56))(a4, 1);
  }

  sub_214CCF914();
  return (*(*(a3 - 8) + 56))(a4, 0, 1);
}

uint64_t String.height(width:font:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v35 = a4;
  v25 = a1;
  v24 = a2;
  v40 = a3;
  v64 = 0.0;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0.0;
  v60 = 0;
  v51 = 0u;
  v52 = 0u;
  v29 = 0;
  v47 = sub_214CD0364();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v22 = *(v45 + 64);
  v21 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v48 = &v19 - v21;
  v23 = v21;
  v5 = MEMORY[0x28223BE20](v4);
  v44 = &v19 - v23;
  v64 = v5;
  v63 = v6;
  v61 = v7;
  v62 = v8;
  v59 = v5;
  v36 = 1.79769313e308;
  v60 = 0x7FEFFFFFFFFFFFFFLL;

  v39 = sub_214CCF544();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365F0, &unk_214CF2038);
  v37 = 1;
  v28 = sub_214CD03C4();
  v26 = v9;
  sub_214A671A8(MEMORY[0x277D740A8], v9);
  MEMORY[0x277D82BE0](v25);
  v10 = sub_214BD1F48();
  v11 = v25;
  v12 = v26;
  v26[4] = v10;
  v12[1] = v11;
  sub_214A63280();
  v30 = v13;
  v31 = type metadata accessor for Key(v29);
  v33 = sub_214B04398();
  v32 = MEMORY[0x277D84F70] + 8;
  v34 = sub_214CCF344();
  v38 = sub_214CCF304();

  v57 = v35;
  v58 = v36;
  [v39 boundingRectWithSize:v37 options:v38 attributes:0 context:{v35, v36}];
  v53 = v14;
  v54 = v15;
  v55 = v16;
  v56 = v17;
  *&v41 = v14;
  *(&v41 + 1) = v15;
  *&v42 = v16;
  *(&v42 + 1) = v17;
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);

  v51 = v41;
  v52 = v42;
  v43 = sub_214B2F8EC(*&v41, *(&v41 + 1), *&v42, *(&v42 + 1));
  (*(v45 + 104))(v44, *MEMORY[0x277D84680], v47);
  v50 = v43;
  (*(v45 + 16))(v48, v44, v47);
  result = (*(v45 + 88))(v48, v47);
  v49 = result;
  if (result == *MEMORY[0x277D84678])
  {
    v50 = round(v43);
    goto LABEL_15;
  }

  if (v49 == *MEMORY[0x277D84670])
  {
    v50 = rint(v43);
    goto LABEL_15;
  }

  if (v49 == *MEMORY[0x277D84680])
  {
    goto LABEL_13;
  }

  if (v49 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v50 = floor(v43);
    goto LABEL_15;
  }

  if (v49 == *MEMORY[0x277D84660])
  {
    v50 = trunc(v43);
    goto LABEL_15;
  }

  if (v49 != *MEMORY[0x277D84668])
  {
    sub_214CCF9C4();
    (*(v45 + 8))(v48, v47);
LABEL_15:
    v19 = v50;
    return (*(v45 + 8))(v44, v47);
  }

  v20 = *&v43 >> 63;
  if (v43 >= 0.0)
  {
LABEL_13:
    v50 = ceil(v43);
    goto LABEL_15;
  }

  if (v20 == 1)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t String.partiallyRedactedString.getter(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();

  v4 = sub_214CCF544();

  v5 = [v3 partiallyRedactedStringForString_];
  MEMORY[0x277D82BD8](v4);
  v6 = sub_214CCF564();
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t String.partiallyRedactedSubjectOrSummary.getter(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();

  v4 = sub_214CCF544();

  v5 = [v3 ec:v4 partiallyRedactedStringForSubjectOrSummary:?];
  MEMORY[0x277D82BD8](v4);
  v6 = sub_214CCF564();
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t String.redactedQueryString.getter(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();

  v4 = sub_214CCF544();

  v5 = [v3 redactedQueryStringForQueryString_];
  MEMORY[0x277D82BD8](v4);
  v6 = sub_214CCF564();
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t String.partiallyRedactedAddress.getter(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();

  v6 = sub_214CCF544();

  v7 = [v5 ec:v6 partiallyRedactedStringForAddress:0 localPart:? domain:?];
  MEMORY[0x277D82BD8](v6);
  if (!v7)
  {
    return 0;
  }

  v3 = sub_214CCF564();
  MEMORY[0x277D82BD8](v7);
  return v3;
}

uint64_t *sub_214CB5E44()
{
  if (qword_280C7D210 != -1)
  {
    swift_once();
  }

  return &qword_280C7D218;
}

uint64_t TitleAndButtonSupplementaryView_iOS.Model.title.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t TitleAndButtonSupplementaryView_iOS.Model.buttonConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0) + 20);
  v2 = sub_214CCFEA4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t TitleAndButtonSupplementaryView_iOS.Model.buttonAction.getter()
{
  v2 = *(v0 + *(type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0) + 24));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t TitleAndButtonSupplementaryView_iOS.Model.init(title:buttonConfiguration:buttonAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v23 = a1;
  v32 = a2;
  v30 = a3;
  v27 = a4;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v20[1] = 0;
  v31 = sub_214CCFEA4();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v21 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v24 = v20 - v21;
  v25 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(v5);
  v22 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v33 = (v20 - v22);
  v38 = v20 - v22;
  v36 = v6;
  v37 = v7;
  v35 = v8;
  v34 = v9;

  v10 = v24;
  v11 = v28;
  v12 = v30;
  v13 = v31;
  v14 = v32;
  v15 = v33;
  *v33 = v23;
  v15[1] = v14;
  (*(v11 + 16))(v10, v12, v13);
  (*(v28 + 32))(v33 + *(v25 + 20), v24, v31);
  MEMORY[0x277D82BE0](v27);
  v16 = v26;
  v17 = v33;
  *(v33 + *(v25 + 24)) = v27;
  sub_214CB6CC4(v17, v16);
  v18 = MEMORY[0x277D82BD8](v27);
  (*(v28 + 8))(v30, v31, v18);

  return sub_214CB6DB0(v33);
}

double TitleAndButtonSupplementaryView_iOS.model.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model);
  swift_beginAccess();
  sub_214CB6E54(v3, a1);
  swift_endAccess();
  return result;
}

double sub_214CB624C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v10 = a2;
  v4 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698, &unk_214CF6440) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v9 = (&v4 - v5);
  v6 = *v2;
  MEMORY[0x277D82BE0](v6);
  v13 = v6;
  v11 = v6;
  v7 = (v6 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model);
  v8 = &v12;
  swift_beginAccess();
  sub_214CB6E54(v7, v9);
  swift_endAccess();
  sub_214CB8768(v9, v10);
  *&result = MEMORY[0x277D82BD8](v11).n128_u64[0];
  return result;
}

double sub_214CB6354(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698, &unk_214CF6440) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v9 = &v4 - v6;
  sub_214CB6E54(v2, (&v4 - v6));
  v8 = *v7;
  MEMORY[0x277D82BE0](v8);
  v11 = v8;
  v10 = v8;
  TitleAndButtonSupplementaryView_iOS.model.setter(v9);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

uint64_t TitleAndButtonSupplementaryView_iOS.model.setter(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698, &unk_214CF6440) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = (&v4 - v4);
  v11 = v2;
  v10 = v1;
  sub_214CB6E54(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model);
  v7 = &v9;
  swift_beginAccess();
  sub_214CB7000(v5, v6);
  swift_endAccess();
  sub_214CB6514();
  return sub_214CB72C4(v8);
}

Swift::Void __swiftcall TitleAndButtonSupplementaryView_iOS.configure()()
{
  v41 = 0;
  v40 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8, &qword_214CF1FC0);
  v28 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v29 = &v4 - v28;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698, &unk_214CF6440);
  v30 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v37 = &v4 - v30;
  v38 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v31 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v32 = &v4 - v31;
  v41 = &v4 - v31;
  v40 = v0;
  v33 = (v0 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model);
  v34 = &v39;
  swift_beginAccess();
  sub_214CB6E54(v33, v37);
  swift_endAccess();
  if ((*(v35 + 48))(v37, 1, v38) == 1)
  {
    sub_214CB72C4(v37);
  }

  else
  {
    sub_214CB73A8(v37, v32);
    v24 = *&v27[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label];
    MEMORY[0x277D82BE0](v24);
    v25 = *v32;
    v26 = *(v32 + 1);

    if (v26)
    {
      v22 = v25;
      v23 = v26;
      v19 = v26;
      v20 = sub_214CCF544();

      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v18 = v21;
    [v24 setText_];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BE0](v27);
    if (v26)
    {
      v16 = v25;
      v17 = v26;
      v13 = v26;
      v14 = sub_214CCF544();

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    [v27 setAccessibilityLabel_];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v27);
    v10 = &qword_280C7D000;
    v9 = *&v27[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_button];
    MEMORY[0x277D82BE0](v9);
    v5 = &v32[*(v38 + 20)];
    v8 = sub_214CCFEA4();
    v6 = *(v8 - 8);
    v7 = v8 - 8;
    (*(v6 + 16))(v29, v5);
    (*(v6 + 56))(v29, 0, 1, v8);
    sub_214CCFED4();
    MEMORY[0x277D82BD8](v9);
    v12 = *&v27[v10[44]];
    MEMORY[0x277D82BE0](v12);
    v11 = *&v32[*(v38 + 24)];
    *&v3 = MEMORY[0x277D82BE0](v11).n128_u64[0];
    [v12 addAction:v11 forControlEvents:{64, v3}];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    sub_214CB6DB0(v32);
  }
}

double (*TitleAndButtonSupplementaryView_iOS.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214CB6AC4;
}

double sub_214CB6AC4(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214CB6514();
  }

  return result;
}

uint64_t sub_214CB6B14()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CB6B5C()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_button);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CB6BA4()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CB6BEC()
{
  type metadata accessor for TitleAndButtonSupplementaryView_iOS(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA386A0, &qword_214CF6450);
  result = sub_214CCF5B4();
  qword_280C7D218 = result;
  qword_280C7D220 = v1;
  return result;
}

uint64_t type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(uint64_t a1)
{
  v2 = qword_280C7D200;
  if (!qword_280C7D200)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

char *sub_214CB6CC4(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);

  *(a2 + 1) = v4;
  v6 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0);
  v5 = *(v6 + 20);
  v2 = sub_214CCFEA4();
  (*(*(v2 - 8) + 16))(&a2[v5], &a1[v5]);
  v8 = *(v6 + 24);
  v9 = *&a1[v8];
  MEMORY[0x277D82BE0](v9);
  result = a2;
  *&a2[v8] = v9;
  return result;
}

uint64_t sub_214CB6DB0(uint64_t a1)
{

  v4 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0);
  v3 = *(v4 + 20);
  v1 = sub_214CCFEA4();
  (*(*(v1 - 8) + 8))(a1 + v3);
  MEMORY[0x277D82BD8](*(a1 + *(v4 + 24)));
  return a1;
}

void *sub_214CB6E54(void *a1, void *a2)
{
  v13 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698, &unk_214CF6440);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a1[1];

    a2[1] = v6;
    v8 = a2 + *(v13 + 20);
    v7 = a1 + *(v13 + 20);
    v2 = sub_214CCFEA4();
    (*(*(v2 - 8) + 16))(v8, v7);
    v9 = *(v13 + 24);
    v10 = *(a1 + v9);
    v3 = MEMORY[0x277D82BE0](v10);
    *(a2 + v9) = v10;
    (*(v14 + 56))(v3);
  }

  return a2;
}

void *sub_214CB7000(void *a1, void *a2)
{
  v15 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if ((v17)(a2, 1))
  {
    if (v17(a1, 1, v15))
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698, &unk_214CF6440);
      memcpy(a2, a1, *(*(v7 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      v10 = a2 + *(v15 + 20);
      v9 = a1 + *(v15 + 20);
      v6 = sub_214CCFEA4();
      (*(*(v6 - 8) + 32))(v10, v9);
      *(a2 + *(v15 + 24)) = *(a1 + *(v15 + 24));
      (*(v16 + 56))();
    }
  }

  else if (v17(a1, 1, v15))
  {
    sub_214CB6DB0(a2);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698, &unk_214CF6440);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[1] = a1[1];

    v12 = a2 + *(v15 + 20);
    v11 = a1 + *(v15 + 20);
    v2 = sub_214CCFEA4();
    (*(*(v2 - 8) + 40))(v12, v11);
    v3 = *(v15 + 24);
    v4 = *(a2 + v3);
    *(a2 + v3) = *(a1 + v3);
    MEMORY[0x277D82BD8](v4);
  }

  return a2;
}

uint64_t sub_214CB72C4(uint64_t a1)
{
  v5 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 20);
    v1 = sub_214CCFEA4();
    (*(*(v1 - 8) + 8))(v3);
    MEMORY[0x277D82BD8](*(a1 + *(v5 + 24)));
  }

  return a1;
}

char *sub_214CB73A8(char *a1, char *a2)
{
  *a2 = *a1;
  v5 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0);
  v4 = *(v5 + 20);
  v2 = sub_214CCFEA4();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = a2;
  *&a2[*(v5 + 24)] = *&a1[*(v5 + 24)];
  return result;
}

uint64_t type metadata accessor for TitleAndButtonSupplementaryView_iOS(uint64_t a1)
{
  v2 = qword_280C7D150;
  if (!qword_280C7D150)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t static TitleAndButtonSupplementaryView_iOS.reuseIdentifier.getter()
{
  v1 = *sub_214CB5E44();

  return v1;
}

char *TitleAndButtonSupplementaryView_iOS.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  ObjectType = swift_getObjectType();
  v20 = v13;
  v21 = v14;
  v22 = v4;
  v8 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model;
  v5 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0);
  (*(*(v5 - 8) + 56))(&v4[v8], 1);
  v9 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label;
  sub_214A73F68();
  *&v4[v9] = sub_214A61730();
  v10 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_button;
  sub_214BD2A6C();
  *&v22[v10] = sub_214A61730();
  v11 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView;
  sub_214A73FCC();
  *&v22[v11] = sub_214A61730();
  v19.receiver = v22;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, v13, v14);
  MEMORY[0x277D82BE0](v17);
  v22 = v17;
  TitleAndButtonSupplementaryView_iOS.setupLayout()();
  MEMORY[0x277D82BE0](v17);
  v15 = *MEMORY[0x277D258F8];
  MEMORY[0x277D82BE0](*MEMORY[0x277D258F8]);
  sub_214CCF564();
  v16 = sub_214CCF544();

  [v17 setAccessibilityIdentifier_];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BE0](v17);
  type metadata accessor for UIAccessibilityTraits(0);
  sub_214CD03C4();
  *v6 = *MEMORY[0x277D76558];
  sub_214A63280();
  sub_214CB80E4();
  sub_214CD0084();
  [v17 setAccessibilityTraits_];
  MEMORY[0x277D82BD8](v17);
  [v17 setIsAccessibilityElement_];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v22);
  return v17;
}

Swift::Void __swiftcall TitleAndButtonSupplementaryView_iOS.setupLayout()()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView);
  [v31 addSubview_];
  MEMORY[0x277D82BD8](v2);
  sub_214A7802C();
  v39 = sub_214A61730();
  v4 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  MEMORY[0x277D82BE0](v4);
  v3 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label];
  [v4 0x1FBB16380];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v5 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  [v5 0x1FBB16380];
  MEMORY[0x277D82BD8](v5);
  v6 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v6);
  v7 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  [v7 setAxis_];
  MEMORY[0x277D82BD8](v7);
  v8 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  [v8 setDistribution_];
  MEMORY[0x277D82BD8](v8);
  v9 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  [v9 setAlignment_];
  MEMORY[0x277D82BD8](v9);
  v10 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  MEMORY[0x277D82BE0](v10);
  [v10 setSpacing_];
  MEMORY[0x277D82BD8](v10);
  v14 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label];
  MEMORY[0x277D82BE0](v14);
  v11 = objc_opt_self();
  v12 = *MEMORY[0x277D76988];
  v13 = [v11 preferredFontForTextStyle_];
  MEMORY[0x277D82BD8](v12);
  UILabel.contentSizeAdjustingFont(_:)(v13);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v37 = objc_opt_self();
  sub_214A6F394();
  sub_214CD03C4();
  v36 = v1;
  v15 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  v18 = [v15 0x1FBBB4950];
  MEMORY[0x277D82BD8](v15);
  v16 = [v31 0x1FBB5C2A9];
  v17 = [v16 0x1FBBB4950];
  v19 = [v18 0x1FBB28F65];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *v36 = v19;
  v20 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  v23 = [v20 0x1FBB20D25];
  MEMORY[0x277D82BD8](v20);
  v21 = [v31 0x1FBB5C2A9];
  v22 = [v21 0x1FBB20D25];
  v24 = [v23 0x1FBB28F65];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v36[1] = v24;
  v25 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  v28 = [v25 0x1FBB5C529];
  MEMORY[0x277D82BD8](v25);
  v26 = [v31 0x1FBB78132];
  v27 = [v26 0x1FBB5C529];
  v29 = [v28 0x1FBB28F65];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  v36[2] = v29;
  v30 = *&v31[OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView];
  v34 = [v30 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v30);
  v32 = [v31 0x1FBB78132];
  v33 = [v32 0x1FBBB59CCLL];
  v35 = [v34 0x1FBB28F65];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  v36[3] = v35;
  sub_214A63280();
  v38 = sub_214CCF7D4();

  [v37 activateConstraints_];
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
}

unint64_t sub_214CB80E4()
{
  v2 = qword_280C7CA10;
  if (!qword_280C7CA10)
  {
    type metadata accessor for UIAccessibilityTraits(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CA10);
    return WitnessTable;
  }

  return v2;
}

void sub_214CB81B0()
{
  v1 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_model;
  v0 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0);
  (*(*(v0 - 8) + 56))(v1, 1);
  v2 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_label;
  sub_214A73F68();
  *v2 = sub_214A61730();
  v3 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_button;
  sub_214BD2A6C();
  *v3 = sub_214A61730();
  v4 = OBJC_IVAR____TtC6MailUI35TitleAndButtonSupplementaryView_iOS_stackView;
  sub_214A73FCC();
  *v4 = sub_214A61730();
  sub_214CCF614("init(coder:) has not been implemented", 37, 1);
  sub_214CD0204();
  __break(1u);
}

id TitleAndButtonSupplementaryView_iOS.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_214CB8484(uint64_t a1)
{
  updated = sub_214CB8578(319);
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_214CB8578(uint64_t a1)
{
  v5 = qword_280C7D1C8[0];
  if (!qword_280C7D1C8[0])
  {
    type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(255);
    v4 = sub_214CCFF34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, qword_280C7D1C8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_214CB8664(uint64_t a1)
{
  v5 = sub_214B5CC3C(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_214CCFEA4();
    if (v2 <= 0x3F)
    {
      v5 = sub_214BD1DB0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

_OWORD *sub_214CB8768(_OWORD *a1, _OWORD *a2)
{
  v9 = type metadata accessor for TitleAndButtonSupplementaryView_iOS.Model(0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38698, &unk_214CF6440);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v6 = a2 + *(v9 + 20);
    v5 = a1 + *(v9 + 20);
    v2 = sub_214CCFEA4();
    (*(*(v2 - 8) + 32))(v6, v5);
    *(a2 + *(v9 + 24)) = *(a1 + *(v9 + 24));
    (*(v10 + 56))();
  }

  return a2;
}

uint64_t *sub_214CB88D8()
{
  if (qword_280C7DCB8 != -1)
  {
    swift_once();
  }

  return &qword_280C7DCC0;
}

uint64_t TitleSupplementaryView.title.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

double sub_214CB89AC@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title);
  swift_beginAccess();
  v5 = *v4;
  v7 = v4[1];

  swift_endAccess();
  *a2 = v5;
  a2[1] = v7;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214CB8A5C(void *a1, void *a2)
{
  sub_214A61AD0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  TitleSupplementaryView.title.setter(v6, v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t TitleSupplementaryView.title.setter(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
  sub_214CB8B80();
}

uint64_t sub_214CB8B80()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  sub_214CB8C00(v3, v4);
}

double sub_214CB8C00(uint64_t a1, uint64_t a2)
{
  v9 = *(v2 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label);
  MEMORY[0x277D82BE0](v9);

  if (a2)
  {
    v6 = sub_214CCF544();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [v9 setText_];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v9);
  (MEMORY[0x277D82BE0])();

  if (a2)
  {
    v4 = sub_214CCF544();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [v8 setAccessibilityLabel_];
  MEMORY[0x277D82BD8](v5);
  *&result = (MEMORY[0x277D82BD8])().n128_u64[0];
  return result;
}

double (*TitleSupplementaryView.title.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214CB8E10;
}

double sub_214CB8E10(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214CB8B80();
  }

  return result;
}

double TitleSupplementaryView.horizontalPadding.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_214CB8EC4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding);
  swift_beginAccess();
  v6 = *v4;
  swift_endAccess();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214CB8F60(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  TitleSupplementaryView.horizontalPadding.setter(v4);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double TitleSupplementaryView.horizontalPadding.setter(double a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return sub_214CB9038();
}

double sub_214CB9064()
{
  v10 = OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint;
  v11 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint);
  swift_beginAccess();
  if (*v11)
  {
    v8 = *(v9 + v10);
    MEMORY[0x277D82BE0](v8);
    swift_endAccess();
    v6 = (v9 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding);
    swift_beginAccess();
    v7 = *v6;
    swift_endAccess();
    [v8 setConstant_];
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    swift_endAccess();
  }

  v5 = (v9 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint);
  swift_beginAccess();
  if (*v5)
  {
    v4 = *v5;
    MEMORY[0x277D82BE0](*v5);
    swift_endAccess();
    v2 = (v9 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding);
    swift_beginAccess();
    v3 = *v2;
    swift_endAccess();
    [v4 setConstant_];
    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  else
  {
    swift_endAccess();
  }

  return result;
}

double (*TitleSupplementaryView.horizontalPadding.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214CB929C;
}

double sub_214CB929C(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return sub_214CB9038();
  }

  return result;
}

uint64_t sub_214CB92EC()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214CB9334()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214CB93A4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214CB943C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214CB94AC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214CB9544()
{
  type metadata accessor for TitleSupplementaryView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA386D0, &qword_214CF64C0);
  result = sub_214CCF5B4();
  qword_280C7DCC0 = result;
  qword_280C7DCC8 = v1;
  return result;
}

uint64_t static TitleSupplementaryView.reuseIdentifier.getter()
{
  v1 = *sub_214CB88D8();

  return v1;
}

char *TitleSupplementaryView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  *&v11 = a3;
  *(&v11 + 1) = a4;
  ObjectType = swift_getObjectType();
  v17 = v10;
  v18 = v11;
  v19 = v4;
  v5 = &v4[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v19[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding] = 0;
  v8 = OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label;
  sub_214A73F68();
  *&v19[v8] = sub_214A61730();
  *&v19[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint] = 0;
  *&v19[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint] = 0;
  v16.receiver = v19;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithFrame_, v10, v11);
  MEMORY[0x277D82BE0](v14);
  v19 = v14;
  sub_214CB994C();
  MEMORY[0x277D82BE0](v14);
  v12 = *MEMORY[0x277D258F8];
  MEMORY[0x277D82BE0](*MEMORY[0x277D258F8]);
  sub_214CCF564();
  v13 = sub_214CCF544();

  [v14 setAccessibilityIdentifier_];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BE0](v14);
  type metadata accessor for UIAccessibilityTraits(0);
  sub_214CD03C4();
  *v6 = *MEMORY[0x277D76558];
  sub_214A63280();
  sub_214CB80E4();
  sub_214CD0084();
  [v14 setAccessibilityTraits_];
  MEMORY[0x277D82BD8](v14);
  [v14 setIsAccessibilityElement_];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v19);
  return v14;
}

double sub_214CB994C()
{
  v45 = v0;
  v7 = *&v0[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  [v0 addSubview_];
  MEMORY[0x277D82BD8](v7);
  v8 = *&v0[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v8);
  v13 = *&v0[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  MEMORY[0x277D82BE0](v13);
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D76988];
  v12 = [v9 preferredFontForTextStyle_];
  MEMORY[0x277D82BD8](v10);
  UILabel.contentSizeAdjustingFont(_:)(v12);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v14 = *&v11[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  v19 = [v14 0x1FBB5C529];
  MEMORY[0x277D82BD8](v14);
  v15 = [v11 0x1FBB78132];
  v18 = [v15 0x1FBB5C529];
  MEMORY[0x277D82BD8](v15);
  v16 = &v11[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding];
  swift_beginAccess();
  v17 = *v16;
  swift_endAccess();
  v21 = [v19 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v20 = &v11[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint];
  swift_beginAccess();
  v1 = *v20;
  *v20 = v21;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  v22 = *&v11[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  v27 = [v22 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v22);
  v23 = [v11 0x1FBB78132];
  v26 = [v23 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v23);
  v24 = &v11[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding];
  swift_beginAccess();
  v25 = *v24;
  swift_endAccess();
  v29 = [v27 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  v28 = &v11[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint];
  swift_beginAccess();
  v2 = *v28;
  *v28 = v29;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  v30 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36598, &qword_214CF1FA8);
  sub_214CD03C4();
  v43 = v3;
  v31 = *&v11[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  v34 = [v31 0x1FBBB4950];
  MEMORY[0x277D82BD8](v31);
  v32 = [v11 0x1FBB5C2A9];
  v33 = [v32 0x1FBBB4950];
  MEMORY[0x277D82BD8](v32);
  v35 = [v34 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  *v43 = v35;
  v36 = *&v11[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label];
  v39 = [v36 0x1FBB20D25];
  MEMORY[0x277D82BD8](v36);
  v37 = [v11 0x1FBB5C2A9];
  v38 = [v37 0x1FBB20D25];
  MEMORY[0x277D82BD8](v37);
  v40 = [v39 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  v43[1] = v40;
  v41 = &v11[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint];
  swift_beginAccess();
  sub_214A671A8(v41, v43 + 2);
  swift_endAccess();
  v42 = &v11[OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint];
  swift_beginAccess();
  sub_214A671A8(v42, v43 + 3);
  swift_endAccess();
  sub_214A63280();
  v44 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A0, &unk_214CF1FB0);
  sub_214A6F394();
  sub_214BD01B4();
  sub_214CCF6F4();
  sub_214A62278(&v44);
  v6 = sub_214CCF7D4();

  [v30 activateConstraints_];
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

void sub_214CBA1F4()
{
  v0 = OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title;
  *OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_title = 0;
  *(v0 + 8) = 0;
  *OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_horizontalPadding = 0;
  v1 = OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_label;
  sub_214A73F68();
  *v1 = sub_214A61730();
  *OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_leadingConstraint = 0;
  *OBJC_IVAR____TtC6MailUI22TitleSupplementaryView_trailingConstraint = 0;
  sub_214CCF614("init(coder:) has not been implemented", 37, 1);
  sub_214CD0204();
  __break(1u);
}

id TitleSupplementaryView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ToolboxErrors.localizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = v130;
  v74 = a1;
  v75 = "Dialog to show and say when we encountered an unexpected MailMessageEntityID version.";
  v76 = "Invalid_Message_Entity_Dialog";
  v77 = "Dialog to show and say when the user has asked to summarize one or more mail messages, but we have nothing to summarize.";
  v78 = "Nothing_To_Summarize_Dialog";
  v79 = "Dialog to show and say when the user has asked to unsubscribe to a non-mailing list email, which we won't be able to do.";
  v80 = "Cannot_Unsubscribe_Dialog";
  v81 = "Dialog to show and say when the user has asked to do something with Mail, but they haven't set up an account yet.";
  v82 = "No_Active_Accounts_Dialog";
  v83 = "Dialog to show and say when the user has asked to do something with emails, but we did not find any matching results.";
  v84 = "No_Messages_Found_Dialog";
  v85 = "Dialog to show and say when the user has asked to undo the email they just sent, but we cannot.";
  v86 = "Undo_Send_Delay_Elapsed_Dialog";
  v87 = "Undo_Send_Failed_Dialog";
  v88 = "Dialog to show and say when the user has asked to save an email message as a draft, but attachments are not done loading onto the message.";
  v89 = "Incomplete_Attachments_Dialog";
  v90 = "Dialog to show and say when the user has asked to make edits to an email message draft, but is not actively composing an email message draft.";
  v91 = "Active_Draft_Not_Found_Dialog";
  v148 = 0;
  v125 = 0;
  v103 = 0;
  v92 = sub_214CCF514();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v96 = &v23[-v95];
  v97 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v98 = &v23[-v97];
  v99 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v100 = &v23[-v99];
  v101 = (*(*(sub_214CCD094() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v102 = &v23[-v101];
  v104 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v103);
  v105 = &v23[-v104];
  v6 = sub_214CCF534();
  v106 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v107 = &v23[-v106];
  v108 = *v1;
  v148 = v108;
  if (v108)
  {
    if (v108 == 1)
    {
      v67 = 1;
      sub_214CCF614("Attachments are still loading, please try again in a moment.", 60, 1, v7);
      sub_214CCF4C4();
      v68 = sub_214CCF614("AppIntents", 10, v67 & 1);
      v69 = v9;
      sub_214B1CFBC();
      sub_214B1CFD4(v102);
      v113 = v88;
      v114 = 138;
      v115 = 2;
      v116 = 0;
      return sub_214CCD0B4();
    }

    else if (v108 == 2)
    {
      v66 = [objc_opt_self() em_userDefaults];
      if (v66)
      {
        v65 = v66;
        v63 = v66;
        v60 = *MEMORY[0x277D06D10];
        MEMORY[0x277D82BE0](v60);
        sub_214AFD2F4(v60);
        v61 = v10;
        v62 = sub_214CCF544();
        MEMORY[0x277D82BD8](v60);

        v64 = [v63 objectForKey_];
        MEMORY[0x277D82BD8](v62);
        MEMORY[0x277D82BD8](v63);
        if (v64)
        {
          v59 = v64;
          v58 = v64;
          v57 = &v117;
          sub_214CD0054();
          sub_214B11A4C(v57, &v118);
          swift_unknownObjectRelease();
        }

        else
        {
          v118 = 0uLL;
          v119 = 0uLL;
        }

        v11 = v73;
        *v73 = v118;
        v11[1] = v119;
      }

      else
      {
        memset(v130, 0, sizeof(v130));
        v131 = 0;
      }

      if (v131)
      {
        if (swift_dynamicCast())
        {
          v55 = v120;
          v56 = 0;
        }

        else
        {
          v55 = 0;
          v56 = 1;
        }

        v53 = v55;
        v54 = v56;
      }

      else
      {
        sub_214A7D24C(v130);
        v53 = 0;
        v54 = 1;
      }

      v52 = v53;
      if ((v54 & 1) != 0 || (v51 = v52, v50 = v51, v125 = v51, v51 <= 0))
      {
        v41 = 0;
        v40 = 1;
        sub_214CCF614("It’s too late to unsend that message.", 39, 0);
        sub_214CCF4C4();
        v42 = sub_214CCF614("AppIntents", 10, v40 & 1);
        v43 = v16;
        sub_214B1CFBC();
        sub_214B1CFD4(v102);
        v126 = v85;
        v127 = 95;
        v128 = 2;
        v129 = v41 & 1;
        return sub_214CCD0B4();
      }

      else
      {
        sub_214CCF504();
        v47 = 1;
        sub_214CCF614("Emails can only be unsent within ", 33, 1);
        v44 = v12;
        sub_214CCF4F4();

        v124 = v50;
        sub_214CCF5C4();
        v45 = v13;
        sub_214CCF4E4();

        sub_214CCF614(" seconds.", 9, v47 & 1);
        v46 = v14;
        sub_214CCF4F4();

        (*(v93 + 16))(v98, v100, v92);
        (*(v93 + 32))(v96, v98, v92);
        (*(v93 + 8))(v100, v92);
        sub_214CCF524();
        v48 = sub_214CCF614("AppIntents", 10, v47 & 1);
        v49 = v15;
        sub_214B1CFBC();
        sub_214B1CFD4(v102);
        v121 = v85;
        v122 = 95;
        v123 = 2;
        return sub_214CCD0B4();
      }
    }

    else if (v108 == 3)
    {
      v37 = 1;
      sub_214CCF614("Sorry, I couldn't find any matching email messages.", 51, 1, v7);
      sub_214CCF4C4();
      v38 = sub_214CCF614("AppIntents", 10, v37 & 1);
      v39 = v17;
      sub_214B1CFBC();
      sub_214B1CFD4(v102);
      v132 = v83;
      v133 = 117;
      v134 = 2;
      return sub_214CCD0B4();
    }

    else if (v108 == 4)
    {
      v34 = 0;
      v33 = 1;
      sub_214CCF614("To do that, youʼll need to set up your Mail account in Settings.", 65, 0, v7);
      sub_214CCF4C4();
      v35 = sub_214CCF614("AppIntents", 10, v33 & 1);
      v36 = v18;
      sub_214B1CFBC();
      sub_214B1CFD4(v102);
      v135 = v81;
      v136 = 113;
      v137 = 2;
      v138 = v34 & 1;
      return sub_214CCD0B4();
    }

    else if (v108 == 5)
    {
      v30 = 1;
      sub_214CCF614("Sorry, I can only unsubscribe from messages sent to a mailing list.", 67, 1, v7);
      sub_214CCF4C4();
      v31 = sub_214CCF614("AppIntents", 10, v30 & 1);
      v32 = v19;
      sub_214B1CFBC();
      sub_214B1CFD4(v102);
      v139 = v79;
      v140 = 120;
      v141 = 2;
      return sub_214CCD0B4();
    }

    else
    {
      if (v108 == 6)
      {
        v27 = 1;
        sub_214CCF614("There's nothing to summarize.", 29, 1, v7);
        sub_214CCF4C4();
        v28 = sub_214CCF614("AppIntents", 10, v27 & 1);
        v29 = v20;
        sub_214B1CFBC();
        sub_214B1CFD4(v102);
        v142 = v77;
        v143 = 120;
        v144 = 2;
      }

      else
      {
        v24 = 1;
        sub_214CCF614("Sorry, something went wrong. Please try again.", 46, 1, v7);
        sub_214CCF4C4();
        v25 = sub_214CCF614("AppIntents", 10, v24 & 1);
        v26 = v21;
        sub_214B1CFBC();
        sub_214B1CFD4(v102);
        v145 = v75;
        v146 = 85;
        v147 = 2;
      }

      return sub_214CCD0B4();
    }
  }

  else
  {
    v70 = 1;
    sub_214CCF614("You don't seem to be composing an email message. Let me know if you'd like to start one.", 88, 1, v7);
    sub_214CCF4C4();
    v71 = sub_214CCF614("AppIntents", 10, v70 & 1);
    v72 = v8;
    sub_214B1CFBC();
    sub_214B1CFD4(v102);
    v109 = v90;
    v110 = 141;
    v111 = 2;
    v112 = 0;
    return sub_214CCD0B4();
  }
}

BOOL static ToolboxErrors.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    switch(v5)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      default:
        v4 = 7;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    switch(v6)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      default:
        v3 = 7;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_214CBB690()
{
  v2 = qword_27CA386D8;
  if (!qword_27CA386D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA386D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CBB788()
{
  v2 = qword_27CA386E0;
  if (!qword_27CA386E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA386E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for ToolboxErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF8)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 7) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 248;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 8;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolboxErrors(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF8)
  {
    v5 = ((a3 + 7) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF8)
  {
    v4 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t static SearchItem.TopHit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5[1] = a1;
  v9 = a2;
  v21 = 0;
  v20 = 0;
  v16 = sub_214CCD2B4();
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v7 = v12[8];
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v14 = v5 - v6;
  v8 = v6;
  v2 = MEMORY[0x28223BE20](v5 - v6);
  v15 = v5 - v8;
  v21 = v3;
  v20 = v9;
  v11 = v12[2];
  v10 = v12 + 2;
  v11(v2);
  (v11)(v14, v9, v16);
  v19 = sub_214CCD284();
  v18 = v12[1];
  v17 = v12 + 1;
  v18(v14, v16);
  v18(v15, v16);
  return v19 & 1;
}

uint64_t SearchItem.TopHit.id.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_214CCD2B4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t SearchItem.TopHit.message.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.TopHit(0) + 20));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t type metadata accessor for SearchItem.TopHit(uint64_t a1)
{
  v2 = qword_280C7E4F8;
  if (!qword_280C7E4F8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

double SearchItem.TopHit.message.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for SearchItem.TopHit(0) + 20));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t SearchItem.TopHit.matchingHintsByGlobalMessageID.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.TopHit(0) + 24));

  return v2;
}

uint64_t SearchItem.TopHit.matchingHintsByGlobalMessageID.setter(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SearchItem.TopHit(0) + 24)) = a1;
}

uint64_t SearchItem.TopHit.init(id:message:matchingHintsByGlobalMessageID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v22 = a1;
  v19 = a2;
  v18 = a3;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v14 = 0;
  v23 = sub_214CCD2B4();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v13 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v15 = &v13 - v13;
  v16 = type metadata accessor for SearchItem.TopHit(v4);
  v5 = MEMORY[0x28223BE20](v15);
  v6 = v20;
  v24 = &v13 - v7;
  v28 = &v13 - v7;
  v27 = v8;
  v26 = v9;
  v25 = v10;
  *(&v13 + *(v16 + 24) - v7) = v14;
  (*(v6 + 16))(v5);
  (*(v20 + 32))(v24, v15, v23);
  MEMORY[0x277D82BE0](v19);
  *(v24 + *(v16 + 20)) = v19;

  *(v24 + *(v16 + 24)) = v18;

  sub_214CBC3A8(v24, v17);

  v11 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v11);
  return sub_214CA4784(v24);
}

uint64_t sub_214CBC3A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = type metadata accessor for SearchItem.TopHit(0);
  v4 = *(v6 + 20);
  v5 = *(a1 + v4);
  MEMORY[0x277D82BE0](v5);
  *(a2 + v4) = v5;
  v9 = *(v6 + 24);
  v10 = *(a1 + v9);

  result = a2;
  *(a2 + v9) = v10;
  return result;
}

uint64_t SearchItem.TopHit.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v7 = v1;
  v14 = 0;
  v13 = 0;
  v12 = sub_214CCD2B4();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v11 = &v5 - v8;
  v14 = v6;
  v13 = v3;
  (*(v9 + 16))(v2);
  sub_214B5C87C();
  sub_214CD0554();
  return (*(v9 + 8))(v11, v12);
}

uint64_t SearchItem.TopHit.hashValue.getter()
{
  type metadata accessor for SearchItem.TopHit(0);
  sub_214CBC5FC();
  return sub_214CD0114();
}

unint64_t sub_214CBC5FC()
{
  v2 = qword_27CA386E8;
  if (!qword_27CA386E8)
  {
    type metadata accessor for SearchItem.TopHit(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA386E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CBC6E0()
{
  v2 = qword_27CA386F0;
  if (!qword_27CA386F0)
  {
    type metadata accessor for SearchItem.TopHit(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA386F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CBC7B0(uint64_t a1)
{
  v5 = sub_214CCD2B4();
  if (v1 <= 0x3F)
  {
    v5 = sub_214CBC8B4();
    if (v2 <= 0x3F)
    {
      v5 = sub_214CBC918(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_214CBC8B4()
{
  v2 = qword_280C7C558;
  if (!qword_280C7C558)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C558);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214CBC918(uint64_t a1)
{
  v5 = qword_280C7CFE0;
  if (!qword_280C7CFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA386F8, &qword_214CF66C8);
    v4 = sub_214CCFF34();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_280C7CFE0);
      return v2;
    }
  }

  return v5;
}

BOOL static MUIBackgroundConfigurationStyle.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    switch(v5)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      default:
        v4 = 7;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    switch(v6)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      default:
        v3 = 7;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_214CBCD7C()
{
  v2 = qword_27CA38700;
  if (!qword_27CA38700)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38700);
    return WitnessTable;
  }

  return v2;
}

uint64_t static UIBackgroundConfiguration.withStyle(_:configuration:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a4;
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v27 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v16 = sub_214CCDCB4();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v20 = v11 - v19;
  v21 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v22 = v11 - v21;
  v27 = v11 - v21;
  v23 = *v7;
  v26 = v23;
  v24 = v8;
  v25 = v9;
  if (v23)
  {
    if (v23 == 1)
    {
      sub_214CCDBF4();
      (*(v17 + 32))(v22, v20, v16);
    }

    else if (v23 == 2)
    {
      sub_214CCDC44();
      (*(v17 + 32))(v22, v20, v16);
    }

    else if (v23 == 3)
    {
      sub_214CCDC14();
      (*(v17 + 32))(v22, v20, v16);
    }

    else if (v23 == 4)
    {
      sub_214CCDC54();
      (*(v17 + 32))(v22, v20, v16);
    }

    else if (v23 == 5)
    {
      sub_214CCDC34();
      (*(v17 + 32))(v22, v20, v16);
    }

    else
    {
      if (v23 == 6)
      {
        sub_214CCDC24();
      }

      else
      {
        sub_214CCDC74();
      }

      (*(v17 + 32))(v22, v20, v16);
    }
  }

  else
  {
    sub_214CCDC84();
    (*(v17 + 32))(v22, v20, v16);
  }

  sub_214B5188C(v14);
  if (v14)
  {
    v11[2] = v14;
    v11[3] = v13;
    v11[1] = v13;
    v14(v22);
  }

  return (*(v17 + 32))(v12, v22, v16);
}

unint64_t sub_214CBD250()
{
  v2 = qword_27CA38708;
  if (!qword_27CA38708)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38708);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_214CBD2E0(uint64_t *a1, uint64_t *a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38710, &unk_214CF67F0);
  v3 = sub_214CCF4A4();

  return (v3 & 1) != 0;
}

void sub_214CBD404(uint64_t a1, uint64_t *a2)
{

  sub_214BD24A8();
  sub_214CCD064();
  __break(1u);
}

void sub_214CBD438(uint64_t a1)
{
  v3[1] = a1;
  v1 = sub_214CCCEE4();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  (*(v5 + 16))(v3 - v4, v2);
  sub_214CCCED4();
  __break(1u);
}

uint64_t static UIButton.Configuration.bucketButton(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = a3;
  v27 = a1;
  v38 = a2;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v40 = 0;
  v41 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34250, &qword_214CE9DE0);
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v13 = v10 - v12;
  v19 = 0;
  v14 = sub_214CCCF24();
  v15 = *(v14 - 8);
  v16 = v14 - 8;
  v17 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v18 = v10 - v17;
  v47 = v10 - v17;
  v20 = sub_214CCCFA4();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v24 = v10 - v23;
  v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v26 = v10 - v25;
  v46 = v10 - v25;
  v28 = sub_214CCFEA4();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v31 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v32 = v10 - v31;
  v45 = v10 - v31;
  v43 = v6;
  v44 = v7;
  sub_214CCFE94();
  sub_214CCCF94();
  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v33 = objc_opt_self();
  v34 = *MEMORY[0x277D76968];
  *&v8 = MEMORY[0x277D82BE0](v34).n128_u64[0];
  v35 = [v33 preferredFontForTextStyle_];
  MEMORY[0x277D82BD8](v34);
  v37 = &v42;
  v42 = v35;
  sub_214BD24A8();
  sub_214CCCF64();

  if (v38)
  {
    v10[3] = v27;
    v10[4] = v38;
    v10[1] = v38;
    v10[2] = v27;
    v40 = v27;
    v41 = v38;
    (*(v21 + 16))(v24, v26, v20);
    sub_214CCCF34();
    (*(v15 + 16))(v13, v18, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    sub_214CCFE04();
    (*(v15 + 8))(v18, v14);
  }

  (*(v29 + 16))(v11, v32, v28);
  (*(v21 + 8))(v26, v20);
  return (*(v29 + 8))(v32, v28);
}

double UIFontTextStyle.pointSize(maxCategory:)(uint64_t a1, uint64_t a2)
{
  v12[6] = a1;
  v12[5] = a2;
  v10 = MEMORY[0x277D76620];
  swift_beginAccess();
  v11 = *v10;
  MEMORY[0x277D82BE0](*v10);
  swift_endAccess();
  if (v11)
  {
    v8 = v11;
  }

  else
  {
    sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "MailUI/UIFontTextStyle+MailUI.swift", 35, 2, 14, 0);
    __break(1u);
  }

  v4 = [v8 preferredContentSizeCategory];
  MEMORY[0x277D82BD8](v8);
  v12[0] = v4;
  type metadata accessor for UIContentSizeCategory(0);
  sub_214CBDCB4();
  sub_214CD0464();
  sub_214A671E8(v12);
  v6 = v12[4];
  MEMORY[0x277D82BE0](a2);
  type metadata accessor for TextStyle(0);
  sub_214B04518();
  sub_214B04128();
  v5 = sub_214CD0334();
  MEMORY[0x277D82BE0](v6);
  sub_214B04618();
  sub_214CD0334();
  CTFontDescriptorGetTextStyleSize();
  v7 = v2;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v7;
}

unint64_t sub_214CBDCB4()
{
  v2 = qword_280C7CA00;
  if (!qword_280C7CA00)
  {
    type metadata accessor for UIContentSizeCategory(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CA00);
    return WitnessTable;
  }

  return v2;
}

uint64_t ZeroKeywordResultModel.title.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t ZeroKeywordResultModel.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ZeroKeywordResultModel.subtitle.getter()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t ZeroKeywordResultModel.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ZeroKeywordResultModel.image.getter()
{
  v2 = *(v0 + 32);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double ZeroKeywordResultModel.image.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void __swiftcall ZeroKeywordResultModel.init(title:subtitle:image:)(MailUI::ZeroKeywordResultModel *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle, UIImage_optional image)
{
  isa = image.value.super.isa;
  __b = 0;
  v10 = 0;
  v11 = 0;

  __b = title;

  v10 = subtitle;

  MEMORY[0x277D82BE0](isa);
  v4 = v11;
  v11 = isa;
  MEMORY[0x277D82BD8](v4);
  sub_214CBE17C(&__b, retstr);
  MEMORY[0x277D82BD8](isa);

  sub_214CBE208(&__b);
}

void *sub_214CBE17C(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  a2[2] = a1[2];
  v5 = a1[3];

  a2[3] = v5;
  v6 = a1[4];
  MEMORY[0x277D82BE0](v6);
  result = a2;
  a2[4] = v6;
  return result;
}

uint64_t sub_214CBE208(uint64_t a1)
{

  MEMORY[0x277D82BD8](*(a1 + 32));
  return a1;
}

void __swiftcall ZeroKeywordResultModel.init(title:subtitle:)(MailUI::ZeroKeywordResultModel *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle)
{
  __b = 0;
  v7 = 0;
  v8 = 0;

  __b = title;

  v7 = subtitle;

  sub_214CBE17C(&__b, retstr);

  sub_214CBE208(&__b);
}

BOOL static ZeroKeywordResultModel.== infix(_:_:)(void *a1, __int128 *a2)
{
  v34 = 0;
  v33 = 0;
  v15 = *a1;
  v16 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v34 = a1;
  v17 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 4);
  v33 = a2;

  v31[0] = v15;
  v31[1] = v16;
  v32 = v17;
  if (v16)
  {
    sub_214A61AD0(v31, &v20);
    if (*(&v32 + 1))
    {
      v19 = v20;
      v18 = v32;
      v8 = MEMORY[0x21605D8D0](v20, *(&v20 + 1), v32, *(&v32 + 1));
      sub_214A61B48(&v18);
      sub_214A61B48(&v19);
      sub_214A61B48(v31);
      v9 = v8;
      goto LABEL_7;
    }

    sub_214A61B48(&v20);
    goto LABEL_9;
  }

  if (*(&v32 + 1))
  {
LABEL_9:
    sub_214A76610(v31);
    v9 = 0;
    goto LABEL_7;
  }

  sub_214A61B48(v31);
  v9 = 1;
LABEL_7:

  if (v9)
  {

    v29[0] = v10;
    v29[1] = v11;
    v30 = v13;
    if (v11)
    {
      sub_214A61AD0(v29, &v23);
      if (*(&v30 + 1))
      {
        v22 = v23;
        v21 = v30;
        v6 = MEMORY[0x21605D8D0](v23, *(&v23 + 1), v30, *(&v30 + 1));
        sub_214A61B48(&v21);
        sub_214A61B48(&v22);
        sub_214A61B48(v29);
        v7 = v6;
        goto LABEL_17;
      }

      sub_214A61B48(&v23);
    }

    else if (!*(&v30 + 1))
    {
      sub_214A61B48(v29);
      v7 = 1;
LABEL_17:

      if ((v7 & 1) == 0)
      {
        return 0;
      }

      MEMORY[0x277D82BE0](v12);
      MEMORY[0x277D82BE0](v12);
      MEMORY[0x277D82BE0](v14);
      MEMORY[0x277D82BE0](v14);
      v27 = v12;
      v28 = v14;
      if (v12)
      {
        sub_214A671A8(&v27, &v26);
        if (v28)
        {
          v25 = v26;
          v24 = v28;
          sub_214A731BC();
          v4 = sub_214CCFD64();
          MEMORY[0x277D82BD8](v24);
          MEMORY[0x277D82BD8](v25);
          sub_214A671E8(&v27);
          v5 = v4;
LABEL_27:
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](v12);
          return (v5 & 1) != 0;
        }

        MEMORY[0x277D82BD8](v26);
      }

      else if (!v28)
      {
        sub_214A671E8(&v27);
        v5 = 1;
        goto LABEL_27;
      }

      sub_214A68120(&v27);
      v5 = 0;
      goto LABEL_27;
    }

    sub_214A76610(v29);
    v7 = 0;
    goto LABEL_17;
  }

  return 0;
}

void ZeroKeywordResultModel.hash(into:)(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v10 = v1;

  v9[0] = v2;
  v9[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0, &qword_214CF1CD0);
  sub_214A75068();
  sub_214CD0554();
  sub_214A61B48(v9);

  v8[0] = v4;
  v8[1] = v5;
  sub_214CD0554();
  sub_214A61B48(v8);
  MEMORY[0x277D82BE0](v6);
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E8, &unk_214CEEE00);
  sub_214A74F50();
  sub_214CD0554();
  sub_214A671E8(&v7);
}

uint64_t ZeroKeywordResultModel.hashValue.getter()
{
  memset(__b, 0, sizeof(__b));
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  __b[0] = *v0;
  __b[1] = v1;
  __b[2] = v2;
  __b[3] = v3;
  __b[4] = v4;
  sub_214CBE990();
  return sub_214CD0114();
}

unint64_t sub_214CBE990()
{
  v2 = qword_27CA38718;
  if (!qword_27CA38718)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38718);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214CBEA54()
{
  v2 = qword_27CA38720;
  if (!qword_27CA38720)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA38720);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214CBEAEC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_214CBEC1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_214CBEE08()
{
  if (qword_280C7EA90 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_280C836B8);
}

id sub_214CBEEB4()
{
  sub_214A6E0F4();
  type metadata accessor for ResourceBundleClass();
  result = sub_214CBEEFC();
  qword_280C7E098 = result;
  return result;
}

id sub_214CBEEFC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t *sub_214CBEF54()
{
  if (qword_280C7E090 != -1)
  {
    swift_once();
  }

  return &qword_280C7E098;
}

uint64_t sub_214CBEFB4()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3EFE8);
  __swift_project_value_buffer(v2, qword_27CA3EFE8);
  sub_214CCF614("AllMailBackgroundColor", 22, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF04C()
{
  if (qword_27CA340E8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3EFE8);
}

uint64_t sub_214CBF0B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF04C();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF11C()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F000);
  __swift_project_value_buffer(v2, qword_27CA3F000);
  sub_214CCF614("AllMailForegroundColor", 22, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF1B4()
{
  if (qword_27CA340F0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F000);
}

uint64_t sub_214CBF220@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF1B4();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF284()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F018);
  __swift_project_value_buffer(v2, qword_27CA3F018);
  sub_214CCF614("PrimaryCategoryColor", 20, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF31C()
{
  if (qword_27CA340F8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F018);
}

uint64_t sub_214CBF388@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF31C();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF3EC()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F030);
  __swift_project_value_buffer(v2, qword_27CA3F030);
  sub_214CCF614("PromotionsCategoryColor", 23, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF484()
{
  if (qword_27CA34100 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F030);
}

uint64_t sub_214CBF4F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF484();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF554()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F048);
  __swift_project_value_buffer(v2, qword_27CA3F048);
  sub_214CCF614("TransactionsCategoryColor", 25, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF5EC()
{
  if (qword_27CA34108 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F048);
}

uint64_t sub_214CBF658@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF5EC();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF6BC()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F060);
  __swift_project_value_buffer(v2, qword_27CA3F060);
  sub_214CCF614("UpdatesCategoryColor", 20, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF754()
{
  if (qword_27CA34110 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F060);
}

uint64_t sub_214CBF7C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF754();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF824()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F078);
  __swift_project_value_buffer(v2, qword_27CA3F078);
  sub_214CCF614("mailAccountCellTitleColor", 25, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBF8BC()
{
  if (qword_27CA34118 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F078);
}

uint64_t sub_214CBF928@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBF8BC();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBF98C()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_280C836B8);
  __swift_project_value_buffer(v2, qword_280C836B8);
  sub_214CCF614("mailBrandAvatarBorderColor", 26, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBFA24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBEE08();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBFA88()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F090);
  __swift_project_value_buffer(v2, qword_27CA3F090);
  sub_214CCF614("mailConversationViewCollapsedCellLabelColor", 43, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBFB20()
{
  if (qword_27CA34128 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F090);
}

uint64_t sub_214CBFB8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBFB20();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBFBF0()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F0A8);
  __swift_project_value_buffer(v2, qword_27CA3F0A8);
  sub_214CCF614("mailConversationViewGeneratedSummaryGradientColor1", 50, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBFC88()
{
  if (qword_27CA34130 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F0A8);
}

uint64_t sub_214CBFCF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBFC88();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBFD58()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F0C0);
  __swift_project_value_buffer(v2, qword_27CA3F0C0);
  sub_214CCF614("mailConversationViewGeneratedSummaryGradientColor2", 50, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBFDF0()
{
  if (qword_27CA34138 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F0C0);
}

uint64_t sub_214CBFE5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBFDF0();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CBFEC0()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F0D8);
  __swift_project_value_buffer(v2, qword_27CA3F0D8);
  sub_214CCF614("mailConversationViewGeneratedSummaryGradientColor3", 50, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CBFF58()
{
  if (qword_27CA34140 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F0D8);
}

uint64_t sub_214CBFFC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CBFF58();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0028()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F0F0);
  __swift_project_value_buffer(v2, qword_27CA3F0F0);
  sub_214CCF614("mailDarkGrayColor", 17, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC00C0()
{
  if (qword_27CA34148 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F0F0);
}

uint64_t sub_214CC012C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC00C0();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0190()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F108);
  __swift_project_value_buffer(v2, qword_27CA3F108);
  sub_214CCF614("mailDestructiveActionSwipeColor", 31, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0228()
{
  if (qword_27CA34150 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F108);
}

uint64_t sub_214CC0294@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0228();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC02F8()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F120);
  __swift_project_value_buffer(v2, qword_27CA3F120);
  sub_214CCF614("mailIncreasedContrastRed", 24, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0390()
{
  if (qword_27CA34158 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F120);
}

uint64_t sub_214CC03FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0390();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0460()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F138);
  __swift_project_value_buffer(v2, qword_27CA3F138);
  sub_214CCF614("mailMessageListPrimarySelectionColor", 36, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC04F8()
{
  if (qword_27CA34160 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F138);
}

uint64_t sub_214CC0564@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC04F8();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC05C8()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F150);
  __swift_project_value_buffer(v2, qword_27CA3F150);
  sub_214CCF614("mailMessageListPriorityEditSelectionColor", 41, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0660()
{
  if (qword_27CA34168 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F150);
}

uint64_t sub_214CC06CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0660();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0730()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F168);
  __swift_project_value_buffer(v2, qword_27CA3F168);
  sub_214CCF614("mailMessageListSecondarySelectionColor", 38, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC07C8()
{
  if (qword_27CA34170 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F168);
}

uint64_t sub_214CC0834@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC07C8();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0898()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F180);
  __swift_project_value_buffer(v2, qword_27CA3F180);
  sub_214CCF614("mailMessageListTertiarySelectionColor", 37, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0930()
{
  if (qword_27CA34178 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F180);
}

uint64_t sub_214CC099C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0930();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0A00()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F198);
  __swift_project_value_buffer(v2, qword_27CA3F198);
  sub_214CCF614("mailMoreButtonGrayColor", 23, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0A98()
{
  if (qword_27CA34180 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F198);
}

uint64_t sub_214CC0B04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0A98();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0B68()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F1B0);
  __swift_project_value_buffer(v2, qword_27CA3F1B0);
  sub_214CCF614("mailPreviousDraftPickerHeaderTextColor", 38, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0C00()
{
  if (qword_27CA34188 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F1B0);
}

uint64_t sub_214CC0C6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0C00();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0CD0()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F1C8);
  __swift_project_value_buffer(v2, qword_27CA3F1C8);
  sub_214CCF614("mailSnippetHighlightColor", 25, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0D68()
{
  if (qword_27CA34190 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F1C8);
}

uint64_t sub_214CC0DD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0D68();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0E38()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F1E0);
  __swift_project_value_buffer(v2, qword_27CA3F1E0);
  sub_214CCF614("mailSystemLightGrayColor", 24, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC0ED0()
{
  if (qword_27CA34198 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F1E0);
}

uint64_t sub_214CC0F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC0ED0();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC0FA0()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F1F8);
  __swift_project_value_buffer(v2, qword_27CA3F1F8);
  sub_214CCF614("mailThreadedConversationViewBackgroundColor", 43, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1038()
{
  if (qword_27CA341A0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F1F8);
}

uint64_t sub_214CC10A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1038();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1108()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F210);
  __swift_project_value_buffer(v2, qword_27CA3F210);
  sub_214CCF614("mailTransparentLightGrayColor", 29, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC11A0()
{
  if (qword_27CA341A8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F210);
}

uint64_t sub_214CC120C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC11A0();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1270()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F228);
  __swift_project_value_buffer(v2, qword_27CA3F228);
  sub_214CCF614("mailVibrantDarkColor", 20, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1308()
{
  if (qword_27CA341B0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F228);
}

uint64_t sub_214CC1374@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1308();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC13D8()
{
  v2 = sub_214CCD744();
  __swift_allocate_value_buffer(v2, qword_27CA3F240);
  __swift_project_value_buffer(v2, qword_27CA3F240);
  sub_214CCF614("mailVibrantLightColor", 21, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1470()
{
  if (qword_27CA341B8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD744();
  return __swift_project_value_buffer(v0, qword_27CA3F240);
}

uint64_t sub_214CC14DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1470();
  v1 = sub_214CCD744();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1540()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F258);
  __swift_project_value_buffer(v2, qword_27CA3F258);
  sub_214CCF614("AvatarPlaceholderRect", 21, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC15D8()
{
  if (qword_27CA341C0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F258);
}

uint64_t sub_214CC1644@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC15D8();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC16A8()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F270);
  __swift_project_value_buffer(v2, qword_27CA3F270);
  sub_214CCF614("_gradient.highlegibility", 24, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1740()
{
  if (qword_27CA341C8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F270);
}

uint64_t sub_214CC17AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1740();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1810()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F288);
  __swift_project_value_buffer(v2, qword_27CA3F288);
  sub_214CCF614("arrowshape.turn.up.left", 23, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC18A8()
{
  if (qword_27CA341D0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F288);
}

uint64_t sub_214CC1914@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC18A8();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1978()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F2A0);
  __swift_project_value_buffer(v2, qword_27CA3F2A0);
  sub_214CCF614("envelope.badge.minus", 20, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1A10()
{
  if (qword_27CA341D8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F2A0);
}

uint64_t sub_214CC1A7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1A10();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1AE0()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F2B8);
  __swift_project_value_buffer(v2, qword_27CA3F2B8);
  sub_214CCF614("link.badge.ellipsis", 19, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1B78()
{
  if (qword_27CA341E0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F2B8);
}

uint64_t sub_214CC1BE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1B78();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1C48()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F2D0);
  __swift_project_value_buffer(v2, qword_27CA3F2D0);
  sub_214CCF614("link.badge.minus", 16, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1CE0()
{
  if (qword_27CA341E8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F2D0);
}

uint64_t sub_214CC1D4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1CE0();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1DB0()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F2E8);
  __swift_project_value_buffer(v2, qword_27CA3F2E8);
  sub_214CCF614("paintbrush.badge.minus", 22, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1E48()
{
  if (qword_27CA341F0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F2E8);
}

uint64_t sub_214CC1EB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1E48();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214CC1F18()
{
  v2 = sub_214CCD764();
  __swift_allocate_value_buffer(v2, qword_27CA3F300);
  __swift_project_value_buffer(v2, qword_27CA3F300);
  sub_214CCF614("text.line.2.summary", 19, 1);
  v0 = sub_214CBEF54();
  MEMORY[0x277D82BE0](*v0);
  return sub_214CCD734();
}

uint64_t sub_214CC1FB0()
{
  if (qword_27CA341F8 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCD764();
  return __swift_project_value_buffer(v0, qword_27CA3F300);
}

uint64_t sub_214CC201C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214CC1FB0();
  v1 = sub_214CCD764();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_280C7EFC0 == -1)
  {
    if (qword_280C7EFC8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_280C7EFC8)
    {
      return _availability_version_check();
    }
  }

  if (qword_280C7EFB8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals_0 < v11;
    if (_MergedGlobals_0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_280C7EFAC > a3)
      {
        return 1;
      }

      if (dword_280C7EFAC >= a3)
      {
        return dword_280C7EFB0 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals_0 < a2;
  if (_MergedGlobals_0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_280C7EFC8;
  if (qword_280C7EFC8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280C7EFC8 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21605F0A0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals_0, &dword_280C7EFAC, &dword_280C7EFB0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void __getMCCSecretAgentControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMCCSecretAgentControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MUIGenericAvatarProvider.m" lineNumber:26 description:{@"Unable to find class %s", "MCCSecretAgentController"}];

  __break(1u);
}

void __getMCCSecretAgentControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *icloudMCCKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MUIGenericAvatarProvider.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getPKMapsIconForMerchantCategorySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PassKitUIFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MUIGenericAvatarProvider.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void MUICGRectFromNSDictionary_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = [a1 objectForKeyedSubscript:a2];
  v5 = [v4 description];
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&dword_214A5E000, a3, OS_LOG_TYPE_ERROR, "ERROR converting dictionary keys/values to CGRect, %@", &v6, 0xCu);
}

void signpostEndRunInterval_cold_1(void *a1)
{
  v1 = a1;
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    a1 = a1[4];
  }

  v2 = [a1 phraseKind];
  v3 = v2;
  v4 = signpostLog(v2);
  if (v3)
  {
    if (v1)
    {
      v5 = v1[4];
    }

    else
    {
      v5 = 0;
    }

    [v5 signpostID];
    OUTLINED_FUNCTION_5_0();
    if (!(!v8 & v7))
    {
      v9 = v6;
      if (os_signpost_enabled(v4))
      {
        OUTLINED_FUNCTION_9();
        v10 = "com.apple.mail.search.suggestion.zkw.run";
LABEL_14:
        _os_signpost_emit_with_name_impl(&dword_214A5E000, v4, OS_SIGNPOST_INTERVAL_END, v9, v10, "cancelled=%d", v13, 8u);
      }
    }
  }

  else
  {
    if (v1)
    {
      v11 = v1[4];
    }

    else
    {
      v11 = 0;
    }

    [v11 signpostID];
    OUTLINED_FUNCTION_5_0();
    if (!(!v8 & v7))
    {
      v9 = v12;
      if (os_signpost_enabled(v4))
      {
        OUTLINED_FUNCTION_9();
        v10 = "com.apple.mail.search.suggestion.ayt.run";
        goto LABEL_14;
      }
    }
  }
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x282123648](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}