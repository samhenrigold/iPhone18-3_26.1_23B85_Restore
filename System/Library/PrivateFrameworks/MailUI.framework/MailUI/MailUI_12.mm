unint64_t sub_214C4D2AC()
{
  v2 = qword_27CA378B8;
  if (!qword_27CA378B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA378B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C4D328()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214A82860;

  return sub_214C4C78C(v7, v5, v6);
}

uint64_t sub_214C4D420(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C4C898(a1, v6, v7, v8);
}

uint64_t sub_214C4D520(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214A80840(a1, v6);
}

double MUILastSeenBucketHelper.lastSelectedDate(for:)()
{
  swift_beginAccess();
  type metadata accessor for MUIBucket(0);
  sub_214CCD254();
  sub_214A69344();
  sub_214CCF3D4();
  swift_endAccess();
  return result;
}

uint64_t MUILastSeenBucketHelper.updateSessionLastSeenDates(for:)(uint64_t a1)
{
  v10 = a1;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v15 = sub_214CCD254();
  v11 = *(v15 - 8);
  v12 = v15 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v13 = &v7 - v8;
  v21 = &v7 - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v14 = &v7 - v9;
  v20 = &v7 - v9;
  v19 = v4;
  v18 = v1;
  MUILastSeenBucketHelper.lastSeenDate(for:)(v4, &v7 - v9);
  MUILastSeenBucketHelper.lastSeenDisplayDate(for:)(v10, v13);
  v5 = MUILastSeenBucketHelper.updateSessionLastSeenDates(for:lastSeenDate:lastSeenDisplayDate:)(v10, v14, v13);
  v17 = *(v11 + 8);
  v16 = v11 + 8;
  v17(v13, v15, v5);
  return (v17)(v14, v15);
}

uint64_t MUILastSeenBucketHelper.unseenPredicates(for:usingCurrentLastSeenDates:)(uint64_t a1, int a2)
{
  v47 = a1;
  v46 = a2;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v48 = sub_214CCD254();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (v49[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v52 = &v22 - v51;
  v53 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v54 = &v22 - v53;
  v55 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v56 = &v22 - v55;
  v64 = &v22 - v55;
  v57 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v58 = &v22 - v57;
  v63 = &v22 - v57;
  v62 = v9;
  v61 = v10 & 1;
  v60 = v2;
  if (v10)
  {
    v11 = MUILastSeenBucketHelper.lastSeenDate(for:)(v47, v54);
    v45 = v49[4];
    v44 = v49 + 4;
    v45(v58, v54, v48, v11);
    v12 = MUILastSeenBucketHelper.lastSeenDisplayDate(for:)(v47, v54);
    v45(v56, v54, v48, v12);
  }

  else
  {
    MUILastSeenBucketHelper.sessionLastSeenDates(for:)(v54, v52, v47);
    v43 = v49[4];
    v42 = v49 + 4;
    v43(v58, v54, v48);
    v43(v56, v52, v48);
  }

  v13 = v54;
  v22 = 0;
  v29 = sub_214B10198();
  v36 = sub_214A7C550();
  v34 = sub_214CD03C4();
  v33 = v14;
  v26 = 0x277D06000uLL;
  v23 = objc_opt_self();
  v28 = v49[2];
  v27 = v49 + 2;
  v28(v13, v58, v48);
  v15 = sub_214CCD1C4();
  v16 = v54;
  v24 = v15;
  v40 = v49[1];
  v39 = v49 + 1;
  v40(v54, v48);
  v25 = [v23 predicateForMessagesNewerThanDate_];
  MEMORY[0x277D82BD8](v24);
  *v33 = v25;
  v30 = objc_opt_self();
  v28(v16, v56, v48);
  v31 = sub_214CCD1C4();
  v40(v54, v48);
  v32 = [v30 predicateForMessagesNewerThanDisplayDate_];
  MEMORY[0x277D82BD8](v31);
  v33[1] = v32;
  sub_214A63280();
  v38 = sub_214C50438(v17);
  v59 = v38;
  v37 = sub_214CD03C4();
  v35 = v18;
  MEMORY[0x277D82BE0](v38);
  *v35 = v38;
  sub_214A63280();
  v41 = v19;
  v20 = MEMORY[0x277D82BD8](v38);
  (v40)(v56, v48, v20);
  v40(v58, v48);
  return v41;
}

Swift::Void __swiftcall MUILastSeenBucketHelper.updateSessionLastSeenDates()()
{
  v12 = v0;
  (MEMORY[0x277D82BE0])();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;

  v3 = swift_allocObject();
  *(v3 + 16) = sub_214C54650;
  *(v3 + 24) = v1;

  v10 = sub_214C54658;
  v11 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v6 = 1107296256;
  v7 = 0;
  v8 = sub_214C52350;
  v9 = &block_descriptor_17;
  v2 = _Block_copy(&aBlock);

  MUIBucketEnumerateAllBuckets(v2);
  _Block_release(v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

Swift::Void __swiftcall MUILastSeenBucketHelper.updateUnseenCountQueries()()
{
  v1 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes);
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  sub_214C5197C(v2);
}

double MUILastSeenBucketHelper.setlastSeenDates(_:for:)(void *a1, uint64_t a2)
{
  v97 = a1;
  v95 = a2;
  v98 = sub_214B4C108;
  v100 = sub_214A7E854;
  v102 = sub_214C56D14;
  v109 = sub_214C56D14;
  v111 = sub_214A662DC;
  v113 = sub_214A662DC;
  v115 = sub_214A7E40C;
  v117 = sub_214A662DC;
  v119 = sub_214A662DC;
  v121 = sub_214B217B4;
  v123 = sub_214A662DC;
  v125 = sub_214A662DC;
  v128 = sub_214B217B4;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v142 = 0;
  v141 = 0;
  v79 = 0;
  v87 = 0;
  v80 = sub_214CCD254();
  v81 = *(v80 - 8);
  v82 = v80 - 8;
  v83 = (*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v80);
  v84 = v43 - v83;
  v85 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43 - v83);
  v86 = v43 - v85;
  v88 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA378D0, &qword_214CF4BC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v87);
  v89 = v43 - v88;
  v94 = sub_214CCDA74();
  v92 = *(v94 - 8);
  v93 = v94 - 8;
  v90 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97);
  v3 = v43 - v90;
  v91 = v43 - v90;
  v147 = v4;
  v146 = v5;
  v145 = v6;
  v7 = sub_214C50524();
  (*(v92 + 16))(v3, v7, v94);
  v96 = 24;
  v108 = 7;
  v8 = swift_allocObject();
  v9 = v97;
  v99 = v8;
  *(v8 + 16) = v95;
  MEMORY[0x277D82BE0](v9);
  v103 = swift_allocObject();
  *(v103 + 16) = v97;
  sub_214B1C228();

  MEMORY[0x277D82BE0](v97);
  v110 = swift_allocObject();
  *(v110 + 16) = v97;
  sub_214B1C228();

  v132 = sub_214CCDA54();
  v133 = sub_214CCFBB4();
  v105 = 17;
  v112 = swift_allocObject();
  *(v112 + 16) = 32;
  v114 = swift_allocObject();
  v106 = 8;
  *(v114 + 16) = 8;
  v107 = 32;
  v10 = swift_allocObject();
  v11 = v99;
  v101 = v10;
  *(v10 + 16) = v98;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v101;
  v116 = v12;
  *(v12 + 16) = v100;
  *(v12 + 24) = v13;
  v118 = swift_allocObject();
  v104 = 64;
  *(v118 + 16) = 64;
  v120 = swift_allocObject();
  *(v120 + 16) = v106;
  v14 = swift_allocObject();
  v15 = v103;
  v122 = v14;
  *(v14 + 16) = v102;
  *(v14 + 24) = v15;
  v124 = swift_allocObject();
  *(v124 + 16) = v104;
  v126 = swift_allocObject();
  *(v126 + 16) = v106;
  v16 = swift_allocObject();
  v17 = v110;
  v129 = v16;
  *(v16 + 16) = v109;
  *(v16 + 24) = v17;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v127 = sub_214CD03C4();
  v130 = v18;

  v19 = v112;
  v20 = v130;
  *v130 = v111;
  v20[1] = v19;

  v21 = v114;
  v22 = v130;
  v130[2] = v113;
  v22[3] = v21;

  v23 = v116;
  v24 = v130;
  v130[4] = v115;
  v24[5] = v23;

  v25 = v118;
  v26 = v130;
  v130[6] = v117;
  v26[7] = v25;

  v27 = v120;
  v28 = v130;
  v130[8] = v119;
  v28[9] = v27;

  v29 = v122;
  v30 = v130;
  v130[10] = v121;
  v30[11] = v29;

  v31 = v124;
  v32 = v130;
  v130[12] = v123;
  v32[13] = v31;

  v33 = v126;
  v34 = v130;
  v130[14] = v125;
  v34[15] = v33;

  v35 = v129;
  v36 = v130;
  v130[16] = v128;
  v36[17] = v35;
  sub_214A63280();

  if (os_log_type_enabled(v132, v133))
  {
    v37 = v79;
    v72 = sub_214CCFF24();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v73 = sub_214A632C4(2, v71, v71);
    v74 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v75 = &v138;
    v138 = v72;
    v76 = &v137;
    v137 = v73;
    v77 = &v136;
    v136 = v74;
    sub_214A6627C(2, &v138);
    sub_214A6627C(3, v75);
    v134 = v111;
    v135 = v112;
    sub_214A66290(&v134, v75, v76, v77);
    v78 = v37;
    if (v37)
    {

      __break(1u);
    }

    else
    {
      v134 = v113;
      v135 = v114;
      sub_214A66290(&v134, &v138, &v137, &v136);
      v70 = 0;
      v134 = v115;
      v135 = v116;
      sub_214A66290(&v134, &v138, &v137, &v136);
      v69 = 0;
      v134 = v117;
      v135 = v118;
      sub_214A66290(&v134, &v138, &v137, &v136);
      v68 = 0;
      v134 = v119;
      v135 = v120;
      sub_214A66290(&v134, &v138, &v137, &v136);
      v67 = 0;
      v134 = v121;
      v135 = v122;
      sub_214A66290(&v134, &v138, &v137, &v136);
      v66 = 0;
      v134 = v123;
      v135 = v124;
      sub_214A66290(&v134, &v138, &v137, &v136);
      v65 = 0;
      v134 = v125;
      v135 = v126;
      sub_214A66290(&v134, &v138, &v137, &v136);
      v64 = 0;
      v134 = v128;
      v135 = v129;
      sub_214A66290(&v134, &v138, &v137, &v136);
      _os_log_impl(&dword_214A5E000, v132, v133, "set last presented dates for bucket %s to %@, %@", v72, 0x20u);
      sub_214A669DC(v73, 2, v71);
      sub_214A669DC(v74, 1, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v38 = MEMORY[0x277D82BD8](v132);
  (*(v92 + 8))(v91, v94, v38);
  *&v39 = MEMORY[0x277D82BE0](v97).n128_u64[0];
  if (v97)
  {
    v63 = v97;
    v60 = v97;
    v61 = [v97 first];
    MEMORY[0x277D82BD8](v60);
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  v59 = v62;
  if (v62)
  {
    v58 = v59;
    v57 = v59;
    v142 = v59;
    *&v40 = MEMORY[0x277D82BE0](v97).n128_u64[0];
    if (v97)
    {
      v56 = v97;
      v53 = v97;
      v54 = [v97 second];
      MEMORY[0x277D82BD8](v53);
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }

    v52 = v55;
    if (v55)
    {
      v51 = v52;
      v50 = v52;
      v141 = v52;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0, &qword_214CF4BC8);
      v44 = &v89[*(v47 + 48)];
      MEMORY[0x277D82BE0](v57);
      sub_214CCD224();
      v46 = *(v81 + 32);
      v45 = v81 + 32;
      v46(v89, v86, v80);
      MEMORY[0x277D82BE0](v50);
      sub_214CCD224();
      v46(v44, v84, v80);
      (*(*(v47 - 8) + 56))(v89, 0, 1);
      v48 = &v140;
      v140 = v95;
      v49 = &v139;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E8, &qword_214CF4BD0);
      sub_214CCF3E4();
      swift_endAccess();
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v50);
      *&result = MEMORY[0x277D82BD8](v57).n128_u64[0];
      return result;
    }

    MEMORY[0x277D82BD8](v57);
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0, &qword_214CF4BC8);
  (*(*(v42 - 8) + 56))(v89, 1);
  v43[0] = &v144;
  v144 = v95;
  v43[1] = &v143;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E8, &qword_214CF4BD0);
  sub_214CCF3E4();
  swift_endAccess();
  return result;
}

Swift::Void __swiftcall MUILastSeenBucketHelper.clearState()()
{
  v48 = 0;
  v59 = 0;
  v37 = 0;
  v45 = sub_214CCDA74();
  v39 = v45;
  v40 = *(v45 - 8);
  v44 = v40;
  v41 = v40;
  v42 = *(v40 + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v0 = v5 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v0;
  v59 = v1;
  v2 = sub_214C50524();
  (*(v44 + 16))(v0, v2, v45);
  v50 = sub_214CCDA54();
  v46 = v50;
  v49 = sub_214CCFBB4();
  v47 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v51 = sub_214CD03C4();
  if (os_log_type_enabled(v50, v49))
  {
    v3 = v37;
    v28 = sub_214CCFF24();
    v24 = v28;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v26 = 0;
    v29 = sub_214A632C4(0, v25, v25);
    v27 = v29;
    v30 = sub_214A632C4(v26, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v55 = v28;
    v54 = v29;
    v53 = v30;
    v31 = 0;
    v32 = &v55;
    sub_214A6627C(0, &v55);
    sub_214A6627C(v31, v32);
    v52 = v51;
    v33 = v5;
    MEMORY[0x28223BE20](v5);
    v34 = &v5[-6];
    v5[-4] = v4;
    v5[-3] = &v54;
    v5[-2] = &v53;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
    sub_214A810E0();
    sub_214CCF764();
    v36 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v46, v47, "Clearing all state", v24, 2u);
      v22 = 0;
      sub_214A669DC(v27, 0, v25);
      sub_214A669DC(v30, v22, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

      v23 = v36;
    }
  }

  else
  {

    v23 = v37;
  }

  (*(v41 + 8))(v43, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37900, &qword_214CF4BE0);
  v18 = 0;
  v5[2] = sub_214CD03C4();
  v16 = type metadata accessor for MUIBucket(v18);
  v5[1] = sub_214CCD254();
  v15 = sub_214A69344();
  v7 = sub_214CCF344();
  v6 = (v38 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSelectedDateByBucket);
  v17 = 33;
  v8 = &v58;
  swift_beginAccess();
  *v6 = v7;

  swift_endAccess();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37908, &unk_214CF4BE8);
  v9 = sub_214CD03C4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0, &qword_214CF4BC8);
  v11 = sub_214CCF344();
  v10 = (v38 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_sessionLastSeenDatesByBucket);
  v12 = &v57;
  swift_beginAccess();
  *v10 = v11;

  swift_endAccess();
  sub_214CD03C4();
  v20 = sub_214CCF344();
  v19 = (v38 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSeenDatesByBucket);
  v21 = &v56;
  swift_beginAccess();
  *v19 = v20;

  swift_endAccess();
}

uint64_t MUILastSeenBucketHelper.updateLastSeenDates(_:forMailboxes:bucket:)(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v60 = a2;
  v59 = a3;
  v52 = "Fatal error";
  v53 = "MailUI/MUILastSeenBucketHelper.swift";
  v54 = sub_214C56D1C;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560, &qword_214CF2350);
  v55 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v56 = &v27 - v55;
  v57 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v27 - v55);
  v58 = &v27 - v57;
  v62 = sub_214CCD254();
  v64 = *(v62 - 8);
  v63 = v62 - 8;
  v65 = v64;
  v66 = *(v64 + 64);
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v68 = &v27 - v67;
  v69 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v70 = &v27 - v69;
  v89 = &v27 - v69;
  v71 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v72 = &v27 - v71;
  v73 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v11);
  v74 = &v27 - v73;
  v88 = &v27 - v73;
  v87 = v13;
  v86 = v14;
  v85 = v15;
  v84 = v3;
  v75 = [v13 first];
  if (v75)
  {
    v50 = v75;
    v49 = v75;
    sub_214CCD224();
    (*(v64 + 32))(v58, v72, v62);
    (*(v64 + 56))(v58, 0, 1, v62);
    v16 = MEMORY[0x277D82BD8](v49);
  }

  else
  {
    (*(v64 + 56))(v58, 1, 1, v62);
  }

  v47 = *(v64 + 48);
  v48 = v64 + 48;
  if (v47(v58, 1, v62, v16) == 1)
  {
    sub_214A871C0(v58);
  }

  else
  {
    v44 = *(v64 + 32);
    v45 = v64 + 32;
    v44(v74, v58, v62);
    v46 = [v61 second];
    if (v46)
    {
      v43 = v46;
      v42 = v46;
      sub_214CCD224();
      v44(v56, v72, v62);
      (*(v64 + 56))(v56, 0, 1, v62);
      v17 = MEMORY[0x277D82BD8](v42);
    }

    else
    {
      (*(v64 + 56))(v56, 1, 1, v62);
    }

    if (v47(v56, 1, v62, v17) != 1)
    {
      v44(v70, v56, v62);
      v28 = *(v51 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 8);
      MEMORY[0x277D82BE0](v28);

      sub_214A63684();
      v27 = sub_214CCF7D4();

      v39 = [v28 mui:v27 inboxExternalURLsFromMailboxes:?];
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      v83 = v39;
      v33 = 7;
      v37 = swift_allocObject();
      v29 = v37 + 16;
      MEMORY[0x277D82BE0](v51);
      swift_unknownObjectWeakInit();
      MEMORY[0x277D82BD8](v51);

      v32 = v65;
      v31 = *(v64 + 16);
      v30 = v64 + 16;
      v31(v72, v74, v62);
      v31(v68, v70, v62);
      v18 = *(v32 + 80);
      v34 = (v18 + 32) & ~v18;
      v35 = (v34 + v66 + v18) & ~v18;
      v19 = swift_allocObject();
      v20 = v59;
      v21 = v34;
      v22 = v72;
      v23 = v44;
      v24 = v62;
      v36 = v19;
      *(v19 + 16) = v37;
      *(v19 + 24) = v20;
      v23(v19 + v21, v22, v24);
      v44((v36 + v35), v68, v62);
      v81 = v54;
      v82 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v77 = 1107296256;
      v78 = 0;
      v79 = sub_214B100BC;
      v80 = &block_descriptor_95;
      v38 = _Block_copy(&aBlock);

      [v39 addSuccessBlock_];
      _Block_release(v38);
      v25 = MEMORY[0x277D82BD8](v39);
      v41 = *(v64 + 8);
      v40 = v64 + 8;
      v41(v70, v62, v25);
      return (v41)(v74, v62);
    }

    sub_214A871C0(v56);
    (*(v64 + 8))(v74, v62);
  }

  sub_214CCF614("Unexpectedly received nil last seen dates", 41, 1);
  result = sub_214CD0204();
  __break(1u);
  return result;
}

Swift::Void __swiftcall MUILastSeenBucketHelper.update(mailboxes:)(Swift::OpaquePointer mailboxes)
{

  v2 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes);
  swift_beginAccess();
  v2->_rawValue = mailboxes._rawValue;

  swift_endAccess();
  v3 = sub_214C52384(mailboxes._rawValue);
  v4 = (v5 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_externalMailboxURLs);
  swift_beginAccess();
  *v4 = v3;

  swift_endAccess();
  MUILastSeenBucketHelper.updateSessionLastSeenDates()();
  sub_214C5197C(mailboxes._rawValue);
}

id sub_214C50438(uint64_t a1)
{
  sub_214A7C550();
  v2 = sub_214CCF7D4();
  v3 = [swift_getObjCClassFromMetadata() orPredicateWithSubpredicates_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t sub_214C504BC()
{
  v2 = sub_214CCDA74();
  __swift_allocate_value_buffer(v2, qword_280C7DC40);
  __swift_project_value_buffer(v2, qword_280C7DC40);
  v0 = type metadata accessor for MUILastSeenBucketHelper(0);
  return static Logger.mailUILogger<A>(for:)(v0, v0);
}

uint64_t sub_214C50524()
{
  if (qword_280C7DC30 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_280C7DC40);
}

uint64_t sub_214C50590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C50524();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214C505FC@<X0>(uint64_t a1@<X8>)
{
  v8 = a1;
  v25 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560, &qword_214CF2350);
  v10 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v11 = v6 - v10;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6 - v10);
  v21 = v6 - v12;
  v22 = sub_214CCD254();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v13 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v14 = v6 - v13;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6 - v13);
  v16 = v6 - v15;
  v25 = v1;
  v17 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper____lazy_storage___defaultDate);
  v18 = &v24;
  swift_beginAccess();
  sub_214A8782C(v17, v21);
  swift_endAccess();
  if ((*(v19 + 48))(v21, 1, v22) == 1)
  {
    sub_214A871C0(v21);
    sub_214C50980();
    v7 = *(v19 + 16);
    v6[2] = (v19 + 16);
    v7(v11, v14, v22);
    (*(v19 + 56))(v11, 0, 1, v22);
    v6[0] = (v9 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper____lazy_storage___defaultDate);
    v6[1] = &v23;
    swift_beginAccess();
    sub_214A87954(v11, v6[0]);
    swift_endAccess();
    v7(v8, v14, v22);
    return (*(v19 + 8))(v14, v22);
  }

  else
  {
    (*(v19 + 32))(v16, v21, v22);
    (*(v19 + 16))(v8, v16, v22);
    return (*(v19 + 8))(v16, v22);
  }
}

uint64_t sub_214C509A4(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560, &qword_214CF2350) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v6 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  v12 = sub_214CCD254();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  (*(v9 + 16))(v6, v11);
  (*(v9 + 56))(v6, 0, 1, v12);
  v7 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper____lazy_storage___defaultDate);
  v8 = &v13;
  swift_beginAccess();
  sub_214A87954(v6, v7);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214C50B60()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C50BC8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C50C4C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_externalMailboxURLs);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C50CB4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_externalMailboxURLs);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C50D38()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueryTokens);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C50DA0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueryTokens);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C50E24()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C50E94(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C50F30()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSeenDatesByBucket);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C50F98(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSeenDatesByBucket);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C5101C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_sessionLastSeenDatesByBucket);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C51084(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_sessionLastSeenDatesByBucket);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C51108()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSelectedDateByBucket);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C51170(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSelectedDateByBucket);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

double sub_214C511F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17 = a4;
  v18 = a1;
  v29 = a2;
  v30 = a3;
  v25 = 0;
  v34 = sub_214C56E38;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v46 = 0;
  v37 = sub_214CCD254();
  v19 = *(v37 - 8);
  v20 = v37 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v22 = v14 - v21;
  v23 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v38 = v14 - v23;
  v24 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v33 = v14 - v24;
  v51 = v14 - v24;
  v50 = v9;
  v48 = v10;
  v49 = v11;
  v47 = v4;
  EMCategoryTypeForBucket(v9);
  sub_214A6E0D8();
  v32 = sub_214CCFF44();
  v46 = v32;
  v26 = (v4 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_externalMailboxURLs);
  v27 = &v45;
  swift_beginAccess();
  v28 = *v26;

  swift_endAccess();
  v44 = v28;
  sub_214CCD194();
  MEMORY[0x277D82BE0](v32);
  MEMORY[0x277D82BE0](v31);
  v35 = &v39;
  v40 = v29;
  v41 = v30;
  v42 = v32;
  v43 = v31;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37918, &qword_214CF4BF8);
  sub_214A87308();
  sub_214CCF744();
  MEMORY[0x277D82BD8](v32);
  v12 = MEMORY[0x277D82BD8](v31);
  v15 = *(v19 + 8);
  v14[1] = v19 + 8;
  v15(v38, v37, v12);
  sub_214A62278(&v44);
  sub_214CCD1A4();
  v16 = sub_214CCD214();
  (v15)(v22, v37);
  if (v16)
  {
    sub_214C505FC(v17);
  }

  else
  {
    (*(v19 + 16))(v17, v33, v37);
  }

  (v15)(v33, v37);
  *&result = MEMORY[0x277D82BD8](v32).n128_u64[0];
  return result;
}

uint64_t sub_214C5163C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = a7;
  v23 = a1;
  v20 = a2;
  v19 = a3;
  v21 = a5;
  v25 = a6;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560, &qword_214CF2350);
  v18 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v29 = &v16 - v18;
  v28 = sub_214CCD254();
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v22 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v21);
  v24 = &v16 - v22;
  v38 = &v16 - v22;
  v37 = v23;
  v36 = v10;
  v34 = v11;
  v35 = a4;
  v33 = v12;
  v32 = v13;
  v11(v9);
  v14 = MEMORY[0x277D82BE0](v25);
  v30 = *(v26 + 48);
  v31 = v26 + 48;
  if ((v30)(v29, 1, v28, v14) == 1)
  {
    sub_214C505FC(v24);
    if (v30(v29, 1, v28) != 1)
    {
      sub_214A871C0(v29);
    }
  }

  else
  {
    (*(v26 + 32))(v24, v29, v28);
  }

  MEMORY[0x277D82BD8](v25);
  if (sub_214CCD1D4())
  {
    (*(v26 + 16))(v17, v24, v28);
  }

  else
  {
    (*(v26 + 16))(v17, v23, v28);
  }

  return (*(v26 + 8))(v24, v28);
}

uint64_t sub_214C5197C(uint64_t a1)
{
  v20 = a1;
  v19 = v1;
  sub_214C51BF0();
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36150, &qword_214CF4620);
  sub_214A7C404();
  if (sub_214CCFA94())
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_5;
  }

  (MEMORY[0x277D82BE0])();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v9;

  v5 = swift_allocObject();
  *(v5 + 16) = sub_214C56E6C;
  *(v5 + 24) = v6;

  v16 = sub_214C54658;
  v17 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = 0;
  v14 = sub_214C52350;
  v15 = &block_descriptor_105;
  v7 = _Block_copy(&aBlock);

  MUIBucketEnumerateAllBuckets(v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v3 = sub_214C56E6C;
    v4 = v6;
LABEL_5:
    sub_214A6B584(v3, v4);
    return sub_214A6B584(0, 0);
  }

  __break(1u);
  return result;
}

double sub_214C51BF0()
{
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37928, &qword_214CF4C00);
  sub_214C56EDC();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37938, &qword_214CF4C08);
    sub_214CD01B4();
    if (!v4)
    {
      break;
    }

    swift_getObjectType();
    [v4 cancel];
    swift_unknownObjectRelease();
  }

  sub_214A62278(v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37940, &qword_214CF4C10);
  sub_214C52618();
  sub_214CCF8B4();
  swift_endAccess();
  v1 = (v3 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries);
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  [v2 removeAllObjects];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

void sub_214C51DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[3] = a1;
  v28[2] = a2;
  v28[1] = a3;
  sub_214A7C550();
  sub_214CD03C4();
  v18 = v3;
  v14 = objc_opt_self();
  *v18 = [v14 predicateForMessagesWithCategoryType_];
  v15 = objc_opt_self();

  sub_214A63684();
  v16 = sub_214CCF7D4();

  v17 = [v15 predicateForMessagesInMailboxes_];
  MEMORY[0x277D82BD8](v16);
  v18[1] = v17;
  sub_214A63280();
  v28[0] = v4;
  MUILastSeenBucketHelper.unseenPredicates(for:usingCurrentLastSeenDates:)(a1, 1);
  sub_214CCF844();

  sub_214B10198();

  v22 = sub_214B101FC(v28[0]);
  MEMORY[0x277D82BE0](v22);
  v27 = v22;
  v21 = *(a3 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 24);

  v23 = v21(v22);
  MEMORY[0x277D82BD8](v22);
  v25 = v23;
  if (v23)
  {
    v26 = v25;
  }

  else
  {
    MEMORY[0x277D82BE0](v27);
    v26 = v27;
  }

  v9 = v26;
  MEMORY[0x277D82BE0](v26);
  v5 = v27;
  v27 = v9;
  MEMORY[0x277D82BD8](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34E10, &unk_214CEDC80);
  v8 = sub_214B71394();
  sub_214A7C860();
  v6 = sub_214CD03C4();
  v24 = sub_214C522CC(v8, v9, v6, v8);
  v10 = (a3 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries);
  swift_beginAccess();
  v12 = *v10;
  MEMORY[0x277D82BE0](*v10);
  swift_endAccess();
  sub_214A69284();
  sub_214A6E0D8();
  v11 = sub_214BD1BBC(v7);
  [v12 setObject:v11 forKey:{v24, MEMORY[0x277D82BE0](v24).n128_f64[0]}];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v13 = *(a3 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration);
  MEMORY[0x277D82BE0](v13);
  [v13 startCountingQuery:v24 includingServerCountsForMailboxScope:0 withObserver:{a3, MEMORY[0x277D82BE0](a3).n128_f64[0]}];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v13);
  swift_unknownObjectRetain();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37928, &qword_214CF4C00);
  sub_214CCF884();
  swift_endAccess();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v27);
  sub_214A62278(v28);
}

uint64_t sub_214C52384(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13[1] = 0;
  v13[2] = a1;
  v15[0] = 0;
  v9 = *(v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 8);
  MEMORY[0x277D82BE0](v9);

  sub_214A63684();
  v8 = sub_214CCF7D4();

  v11 = [v9 mui:v8 inboxExternalURLsFromMailboxes:?];
  MEMORY[0x277D82BD8](v8);
  v13[0] = 0;
  v12 = [v11 result_];
  v10 = v13[0];
  MEMORY[0x277D82BE0](v13[0]);
  v2 = v15[0];
  v15[0] = v10;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v11);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37918, &qword_214CF4BF8);
    MEMORY[0x277D82BE0](v12);
    sub_214A6E46C();
    sub_214CD04A4();
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v12);
    if (v14)
    {
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    sub_214A671E8(v15);
    return v6;
  }

  else
  {
    sub_214CCD154();
    v4 = sub_214CCF2D4();
    sub_214A671E8(v15);
    return v4;
  }
}

uint64_t MUILastSeenBucketHelper.Configuration.messageRepository.getter()
{
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

double MUILastSeenBucketHelper.Configuration.messageRepository.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t MUILastSeenBucketHelper.Configuration.mailboxRepository.getter()
{
  v2 = *(v0 + 8);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double MUILastSeenBucketHelper.Configuration.mailboxRepository.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t MUILastSeenBucketHelper.Configuration.mailboxCategoryStorage.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double MUILastSeenBucketHelper.Configuration.mailboxCategoryStorage.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C528C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_214A68750(a1, v10);
  v6 = v10[0];
  v7 = v10[1];
  v8 = v10[2];
  v4 = v10[3];
  v9 = v10[4];

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v9;
  *a2 = sub_214C5750C;
  a2[1] = v2;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
}

uint64_t sub_214C529B8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_214C529F8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  *(a2 + 24) = sub_214C57500;
  *(a2 + 32) = v2;
}

uint64_t sub_214C52AAC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t MUILastSeenBucketHelper.Configuration.predicateUpdater.getter()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t MUILastSeenBucketHelper.Configuration.predicateUpdater.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_214C52BD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_214A68750(a1, v10);
  v6 = v10[0];
  v7 = v10[1];
  v8 = v10[2];
  v4 = v10[5];
  v9 = v10[6];

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v9;
  *a2 = sub_214C574F4;
  a2[1] = v2;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
}

uint64_t sub_214C52CF4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  *(a2 + 40) = sub_214C574E8;
  *(a2 + 48) = v2;
}

uint64_t sub_214C52DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v5 = a1;
  v4 = a2;
  return a3(&v5, &v4);
}

uint64_t MUILastSeenBucketHelper.Configuration.unseenCountUpdater.getter()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t MUILastSeenBucketHelper.Configuration.unseenCountUpdater.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

id MUILastSeenBucketHelper.__deallocating_deinit()
{
  v3.super_class = swift_getObjectType();
  v5 = v0;
  v1 = sub_214C51BF0();
  v4 = v3;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

uint64_t MUILastSeenBucketHelper.sessionLastSeenDates(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v16 = a2;
  v21 = a3;
  v36 = 0;
  v35 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA378D0, &qword_214CF4BC0);
  v17 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v30 = &v9 - v17;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0, &qword_214CF4BC8);
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v18 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v19 = &v9 - v18;
  v36 = v5;
  v35 = v3;
  v20 = (v3 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_sessionLastSeenDatesByBucket);
  v25 = &v34;
  swift_beginAccess();
  v22 = *v20;
  v24 = &v33;
  v33 = v21;
  v23 = type metadata accessor for MUIBucket(0);
  sub_214A69344();
  sub_214CCF3D4();
  swift_endAccess();
  v6 = MEMORY[0x277D82BE0](v26);
  v31 = *(v27 + 48);
  v32 = v27 + 48;
  if ((v31)(v30, 1, v29, v6) == 1)
  {
    v14 = v19 + *(v29 + 48);
    sub_214C505FC(v19);
    sub_214C505FC(v14);
    if (v31(v30, 1, v29) != 1)
    {
      sub_214A84F00(v30);
    }
  }

  else
  {
    sub_214C56F64(v30, v19);
  }

  MEMORY[0x277D82BD8](v26);
  v10 = v19 + *(v29 + 48);
  v11 = sub_214CCD254();
  v7 = *(v11 - 8);
  v13 = *(v7 + 32);
  v12 = v7 + 32;
  v13(v15, v19);
  return (v13)(v16, v10, v11);
}

double MUILastSeenBucketHelper.updateSessionLastSeenDates(for:lastSeenDate:lastSeenDisplayDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a1;
  v84 = a2;
  v91 = a3;
  v89 = sub_214C57018;
  v101 = sub_214C57018;
  v103 = sub_214B4C108;
  v105 = sub_214A7E854;
  v107 = sub_214A7E768;
  v109 = sub_214A7E854;
  v114 = sub_214A7E768;
  v118 = sub_214A7E854;
  v120 = sub_214A662DC;
  v122 = sub_214A662DC;
  v124 = sub_214A7E40C;
  v126 = sub_214A662DC;
  v128 = sub_214A662DC;
  v130 = sub_214A7E40C;
  v132 = sub_214A662DC;
  v134 = sub_214A662DC;
  v137 = sub_214A7E40C;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v73 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA378D0, &qword_214CF4BC0);
  v74 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v75 = &v54 - v74;
  v76 = 0;
  v98 = sub_214CCD254();
  v86 = *(v98 - 8);
  v87 = v98 - 8;
  v85 = v86;
  v95 = *(v86 + 64);
  v77 = (v95 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v97 = &v54 - v77;
  v82 = sub_214CCDA74();
  v80 = *(v82 - 8);
  v81 = v82 - 8;
  v78 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v83);
  v4 = &v54 - v78;
  v79 = &v54 - v78;
  v153 = v5;
  v152 = v6;
  v151 = v7;
  v150 = v8;
  v9 = sub_214C50524();
  (*(v80 + 16))(v4, v9, v82);
  v116 = 7;
  v10 = swift_allocObject();
  v11 = v84;
  v12 = v86;
  v13 = v98;
  v14 = v10;
  v15 = v97;
  v104 = v14;
  *(v14 + 16) = v83;
  v93 = *(v12 + 16);
  v92 = v12 + 16;
  (v93)(v15, v11, v13);
  v94 = *(v85 + 80);
  v88 = (v94 + 16) & ~v94;
  v90 = swift_allocObject();
  v100 = *(v86 + 32);
  v99 = v86 + 32;
  v100(v90 + v88, v97, v98);

  v115 = 32;
  v16 = swift_allocObject();
  v17 = v90;
  v108 = v16;
  *(v16 + 16) = v89;
  *(v16 + 24) = v17;

  (v93)(v97, v91, v98);
  v96 = (v94 + 16) & ~v94;
  v102 = swift_allocObject();
  v100(v102 + v96, v97, v98);

  v18 = swift_allocObject();
  v19 = v102;
  v117 = v18;
  *(v18 + 16) = v101;
  *(v18 + 24) = v19;

  v141 = sub_214CCDA54();
  v142 = sub_214CCFBB4();
  v112 = 17;
  v121 = swift_allocObject();
  v111 = 32;
  *(v121 + 16) = 32;
  v123 = swift_allocObject();
  v113 = 8;
  *(v123 + 16) = 8;
  v20 = swift_allocObject();
  v21 = v104;
  v106 = v20;
  *(v20 + 16) = v103;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v106;
  v125 = v22;
  *(v22 + 16) = v105;
  *(v22 + 24) = v23;
  v127 = swift_allocObject();
  *(v127 + 16) = v111;
  v129 = swift_allocObject();
  *(v129 + 16) = v113;
  v24 = swift_allocObject();
  v25 = v108;
  v110 = v24;
  *(v24 + 16) = v107;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v110;
  v131 = v26;
  *(v26 + 16) = v109;
  *(v26 + 24) = v27;
  v133 = swift_allocObject();
  *(v133 + 16) = v111;
  v135 = swift_allocObject();
  *(v135 + 16) = v113;
  v28 = swift_allocObject();
  v29 = v117;
  v119 = v28;
  *(v28 + 16) = v114;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v119;
  v138 = v30;
  *(v30 + 16) = v118;
  *(v30 + 24) = v31;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v136 = sub_214CD03C4();
  v139 = v32;

  v33 = v121;
  v34 = v139;
  *v139 = v120;
  v34[1] = v33;

  v35 = v123;
  v36 = v139;
  v139[2] = v122;
  v36[3] = v35;

  v37 = v125;
  v38 = v139;
  v139[4] = v124;
  v38[5] = v37;

  v39 = v127;
  v40 = v139;
  v139[6] = v126;
  v40[7] = v39;

  v41 = v129;
  v42 = v139;
  v139[8] = v128;
  v42[9] = v41;

  v43 = v131;
  v44 = v139;
  v139[10] = v130;
  v44[11] = v43;

  v45 = v133;
  v46 = v139;
  v139[12] = v132;
  v46[13] = v45;

  v47 = v135;
  v48 = v139;
  v139[14] = v134;
  v48[15] = v47;

  v49 = v138;
  v50 = v139;
  v139[16] = v137;
  v50[17] = v49;
  sub_214A63280();

  if (os_log_type_enabled(v141, v142))
  {
    v51 = v73;
    v66 = sub_214CCFF24();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v67 = sub_214A632C4(0, v65, v65);
    v68 = sub_214A632C4(3, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v69 = &v147;
    v147 = v66;
    v70 = &v146;
    v146 = v67;
    v71 = &v145;
    v145 = v68;
    sub_214A6627C(2, &v147);
    sub_214A6627C(3, v69);
    v143 = v120;
    v144 = v121;
    sub_214A66290(&v143, v69, v70, v71);
    v72 = v51;
    if (v51)
    {

      __break(1u);
    }

    else
    {
      v143 = v122;
      v144 = v123;
      sub_214A66290(&v143, &v147, &v146, &v145);
      v64 = 0;
      v143 = v124;
      v144 = v125;
      sub_214A66290(&v143, &v147, &v146, &v145);
      v63 = 0;
      v143 = v126;
      v144 = v127;
      sub_214A66290(&v143, &v147, &v146, &v145);
      v62 = 0;
      v143 = v128;
      v144 = v129;
      sub_214A66290(&v143, &v147, &v146, &v145);
      v61 = 0;
      v143 = v130;
      v144 = v131;
      sub_214A66290(&v143, &v147, &v146, &v145);
      v60 = 0;
      v143 = v132;
      v144 = v133;
      sub_214A66290(&v143, &v147, &v146, &v145);
      v59 = 0;
      v143 = v134;
      v144 = v135;
      sub_214A66290(&v143, &v147, &v146, &v145);
      v58 = 0;
      v143 = v137;
      v144 = v138;
      sub_214A66290(&v143, &v147, &v146, &v145);
      _os_log_impl(&dword_214A5E000, v141, v142, "Updating session last seen dates for bucket %s to %s, %s", v66, 0x20u);
      sub_214A669DC(v67, 0, v65);
      sub_214A669DC(v68, 3, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v52 = MEMORY[0x277D82BD8](v141);
  (*(v80 + 8))(v79, v82, v52);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0, &qword_214CF4BC8);
  v54 = &v75[*(v55 + 48)];
  v93();
  (v93)(v54, v91, v98);
  (*(*(v55 - 8) + 56))(v75, 0, 1);
  v56 = &v149;
  v149 = v83;
  v57 = &v148;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E8, &qword_214CF4BD0);
  sub_214CCF3E4();
  swift_endAccess();
  return result;
}

double MUILastSeenBucketHelper.messageRepository(_:query:countDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v20 = a2;
  v21 = a3;
  v22 = sub_214C5708C;
  ObjectType = swift_getObjectType();
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v25 = 0;
  v29 = sub_214CCF224();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v15 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v28 = &v14 - v15;
  v33 = sub_214CCF254();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v17 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v32 = &v14 - v17;
  v46 = v4;
  v45 = v5;
  v44 = v6;
  v43 = v3;
  sub_214B51A38();
  v35 = sub_214CCFC44();
  v19 = 7;
  v24 = swift_allocObject();
  MEMORY[0x277D82BE0](v18);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BE0](v20);
  v7 = swift_allocObject();
  v8 = v20;
  v9 = v21;
  v10 = v22;
  v11 = v7;
  v12 = ObjectType;
  v11[2] = v24;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = v12;
  v41 = v10;
  v42 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = 0;
  v39 = sub_214A746A8;
  v40 = &block_descriptor_177;
  v34 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v25, v32, v28, v34);
  (*(v26 + 8))(v28, v29);
  (*(v30 + 8))(v32, v33);
  _Block_release(v34);
  *&result = MEMORY[0x277D82BD8](v35).n128_u64[0];
  return result;
}

double sub_214C54A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = a1;
  v95 = a2;
  v93 = a3;
  v94 = 0;
  v82 = sub_214B95D20;
  v83 = sub_214B26858;
  v84 = sub_214B4C108;
  v85 = sub_214A7E854;
  v86 = sub_214A662DC;
  v87 = sub_214A662DC;
  v88 = sub_214A662E4;
  v89 = sub_214A662DC;
  v90 = sub_214A662DC;
  v91 = sub_214A7E40C;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v113 = 0;
  v111 = 0;
  v110 = 0;
  v92 = 0;
  v97 = sub_214CCDA74();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96);
  v101 = v36 - v100;
  v102 = v3 + 16;
  v117 = v3 + 16;
  v116 = v4;
  v115 = v5;
  v103 = &v114;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v81 = Strong;
    v76 = Strong;
    v113 = Strong;
    v77 = (Strong + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries);
    v78 = &v112;
    swift_beginAccess();
    v79 = *v77;
    MEMORY[0x277D82BE0](v79);
    swift_endAccess();
    *&v7 = MEMORY[0x277D82BE0](v95).n128_u64[0];
    v80 = [v79 objectForKey_];
    MEMORY[0x277D82BD8](v95);
    *&v8 = MEMORY[0x277D82BD8](v79).n128_u64[0];
    if (v80)
    {
      v75 = v80;
      v71 = v80;
      v72 = [v80 integerValue];
      MEMORY[0x277D82BD8](v71);
      v73 = v72;
      v74 = 0;
    }

    else
    {
      v73 = 0;
      v74 = 1;
    }

    v70 = v73;
    if (v74 & 1) != 0 || (v69 = v70, v111 = v70, sub_214A706A8(), v68 = v9, (v10))
    {
      *&result = MEMORY[0x277D82BD8](v76).n128_u64[0];
    }

    else
    {
      v67 = v68;
      v11 = v101;
      v47 = v68;
      v110 = v68;
      v12 = sub_214C50524();
      (*(v98 + 16))(v11, v12, v97);
      v46 = 24;
      v53 = 7;
      v48 = swift_allocObject();
      *(v48 + 16) = v93;
      v54 = swift_allocObject();
      *(v54 + 16) = v47;
      v65 = sub_214CCDA54();
      v66 = sub_214CCFBB4();
      v50 = 17;
      v56 = swift_allocObject();
      *(v56 + 16) = 0;
      v57 = swift_allocObject();
      v51 = 8;
      *(v57 + 16) = 8;
      v52 = 32;
      v13 = swift_allocObject();
      v14 = v48;
      v49 = v13;
      *(v13 + 16) = v82;
      *(v13 + 24) = v14;
      v15 = swift_allocObject();
      v16 = v49;
      v58 = v15;
      *(v15 + 16) = v83;
      *(v15 + 24) = v16;
      v59 = swift_allocObject();
      *(v59 + 16) = 32;
      v60 = swift_allocObject();
      *(v60 + 16) = v51;
      v17 = swift_allocObject();
      v18 = v54;
      v55 = v17;
      *(v17 + 16) = v84;
      *(v17 + 24) = v18;
      v19 = swift_allocObject();
      v20 = v55;
      v62 = v19;
      *(v19 + 16) = v85;
      *(v19 + 24) = v20;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
      v61 = sub_214CD03C4();
      v63 = v21;

      v22 = v56;
      v23 = v63;
      *v63 = v86;
      v23[1] = v22;

      v24 = v57;
      v25 = v63;
      v63[2] = v87;
      v25[3] = v24;

      v26 = v58;
      v27 = v63;
      v63[4] = v88;
      v27[5] = v26;

      v28 = v59;
      v29 = v63;
      v63[6] = v89;
      v29[7] = v28;

      v30 = v60;
      v31 = v63;
      v63[8] = v90;
      v31[9] = v30;

      v32 = v62;
      v33 = v63;
      v63[10] = v91;
      v33[11] = v32;
      sub_214A63280();

      if (os_log_type_enabled(v65, v66))
      {
        v34 = v92;
        v38 = sub_214CCFF24();
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
        v39 = sub_214A632C4(0, v37, v37);
        v40 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v42 = &v109;
        v109 = v38;
        v43 = &v108;
        v108 = v39;
        v44 = &v107;
        v107 = v40;
        v41 = 2;
        sub_214A6627C(2, &v109);
        sub_214A6627C(v41, v42);
        v105 = v86;
        v106 = v56;
        sub_214A66290(&v105, v42, v43, v44);
        v45 = v34;
        if (v34)
        {

          __break(1u);
        }

        else
        {
          v105 = v87;
          v106 = v57;
          sub_214A66290(&v105, &v109, &v108, &v107);
          v36[5] = 0;
          v105 = v88;
          v106 = v58;
          sub_214A66290(&v105, &v109, &v108, &v107);
          v36[4] = 0;
          v105 = v89;
          v106 = v59;
          sub_214A66290(&v105, &v109, &v108, &v107);
          v36[3] = 0;
          v105 = v90;
          v106 = v60;
          sub_214A66290(&v105, &v109, &v108, &v107);
          v36[2] = 0;
          v105 = v91;
          v106 = v62;
          sub_214A66290(&v105, &v109, &v108, &v107);
          _os_log_impl(&dword_214A5E000, v65, v66, "Updating unseenCount: %ld for bucket: %s", v38, 0x16u);
          sub_214A669DC(v39, 0, v37);
          sub_214A669DC(v40, 1, MEMORY[0x277D84F70] + 8);
          sub_214CCFF04();
        }
      }

      else
      {
      }

      v35 = MEMORY[0x277D82BD8](v65);
      (*(v98 + 8))(v101, v97, v35);
      v36[0] = *(v76 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 40);
      v36[1] = *(v76 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 48);

      (v36[0])(v93, v47);

      *&result = MEMORY[0x277D82BD8](v76).n128_u64[0];
    }
  }

  return result;
}

double MUILastSeenBucketHelper.categoryCloudStorage(_:didChangeLastSeenDate:lastSeenDisplay:forCategoryType:inMailboxWithExternalURL:originator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a1;
  v16[6] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v19 = sub_214C57104;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v20 = 0;
  v24 = sub_214CCF224();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v16[0] = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v23 = v16 - v16[0];
  v28 = sub_214CCF254();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v17 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v27 = v16 - v17;
  v44 = v7;
  v43 = v8;
  v42 = v9;
  v41 = v10;
  v40 = v11;
  v39 = v12;
  v38 = v6;
  sub_214B51A38();
  v30 = sub_214CCFC44();
  MEMORY[0x277D82BE0](v18);
  v13 = swift_allocObject();
  v14 = v19;
  *(v13 + 16) = v18;
  v36 = v14;
  v37 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = 0;
  v34 = sub_214A746A8;
  v35 = &block_descriptor_183;
  v29 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v20, v27, v23, v29);
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);
  *&result = MEMORY[0x277D82BD8](v30).n128_u64[0];
  return result;
}

uint64_t sub_214C55B1C(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  sub_214C5197C(v3);
}

id sub_214C561D4(void *a1)
{
  *&v1 = MEMORY[0x277D82BE0](a1).n128_u64[0];
  if (a1)
  {
    v4 = [a1 first];
    MEMORY[0x277D82BD8](a1);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

double sub_214C5631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a1;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v72 = 0;
  v70 = 0;
  v67 = 0;
  v66[0] = 0;
  v66[1] = 0;
  v42 = 0;
  v43 = sub_214CCD254();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v47 = v20 - v46;
  v48 = sub_214CCD154();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v52 = v20 - v51;
  v53 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20 - v51);
  v54 = v20 - v53;
  v79 = v20 - v53;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48, &qword_214CF1370) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v61 = v20 - v60;
  v78 = v6;
  v62 = v7 + 16;
  v77 = v7 + 16;
  v76 = v8;
  v75 = v9;
  v74 = v10;
  v63 = &v73;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v41 = Strong;
    v39 = Strong;
    v72 = Strong;
    MEMORY[0x277D82BE0](v59);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37918, &qword_214CF4BF8);
    MEMORY[0x277D82BE0](v59);
    sub_214A6E46C();
    sub_214CD04A4();
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v59);
    if (v71)
    {
      v38 = v71;
    }

    else
    {
      v38 = 0;
    }

    v37 = v38;
    if (v38)
    {
      v36 = v37;
      v32 = v37;
      v70 = v37;
      v35 = &v69;
      v69 = v56;
      v33 = &v68;
      v68 = 0;
      v34 = type metadata accessor for MUIBucket(0);
      sub_214A693C4();
      v12 = sub_214CCF4A4();
      if (v12)
      {
        v31 = 0;
      }

      else
      {
        EMCategoryTypeForBucket(v56);
        sub_214A6E0D8();
        v31 = sub_214CCFF44();
      }

      v30 = v31;
      v67 = v31;

      v65 = v32;
      sub_214C57518();
      sub_214CCFAC4();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37A80, &unk_214CF4CD0);
        sub_214CD01B4();
        if ((*(v49 + 48))(v61, 1, v48) == 1)
        {
          break;
        }

        v13 = v47;
        (*(v49 + 32))(v54, v61, v48);
        v27 = *(v39 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 16);
        v14 = MEMORY[0x277D82BE0](v27);
        v21 = v44[2];
        v20[1] = v44 + 2;
        v21(v13, v57, v43, v14);
        v15 = sub_214CCD1C4();
        v16 = v47;
        v26 = v15;
        v23 = v44[1];
        v22 = v44 + 1;
        v23(v47, v43);
        (v21)(v16, v58, v43);
        v17 = sub_214CCD1C4();
        v18 = v52;
        v25 = v17;
        v23(v47, v43);
        (*(v49 + 16))(v18, v54, v48);
        v24 = sub_214CCD104();
        v29 = *(v49 + 8);
        v28 = v49 + 8;
        v29(v52, v48);
        [v27 setIfNeededLastSeenDate:v26 lastSeenDisplayDate:v25 forCategoryType:v30 inMailboxWithExternalURL:v24 originator:0];
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
        MEMORY[0x277D82BD8](v26);
        v19 = MEMORY[0x277D82BD8](v27);
        (v29)(v54, v48, v19);
      }

      sub_214A62278(v66);
      MEMORY[0x277D82BD8](v30);

      *&result = MEMORY[0x277D82BD8](v39).n128_u64[0];
    }

    else
    {
      *&result = MEMORY[0x277D82BD8](v39).n128_u64[0];
    }
  }

  return result;
}

id sub_214C56BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_214A7C860();
  v6 = sub_214CCF7D4();
  v8 = [v5 initWithTargetClass:ObjCClassFromMetadata predicate:a2 sortDescriptors:?];
  MEMORY[0x277D82BD8](v6);

  MEMORY[0x277D82BD8](a2);
  return v8;
}

unint64_t sub_214C56C94()
{
  v2 = qword_280C7EAE8;
  if (!qword_280C7EAE8)
  {
    sub_214CCD254();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EAE8);
    return WitnessTable;
  }

  return v2;
}

double sub_214C56D1C(uint64_t a1)
{
  v2 = *(sub_214CCD254() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((v3 + *(v2 + 64) + *(v2 + 80)) & ~*(v2 + 80));

  return sub_214C5631C(a1, v4, v5, v1 + v3, v6);
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214C56EDC()
{
  v2 = qword_280C7CEB0;
  if (!qword_280C7CEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37928, &qword_214CF4C00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C56F64(uint64_t a1, uint64_t a2)
{
  v5 = sub_214CCD254();
  v6 = *(*(v5 - 8) + 32);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0, &qword_214CF4BC8);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_214C57018@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_214CCD254();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_214C545B0(v3, a1);
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_181(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_214C571E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214C572F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_214C57518()
{
  v2 = qword_280C7CFA8;
  if (!qword_280C7CFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37918, &qword_214CF4BF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CFA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t MUIMailCleanupTip.tipId.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_tipId);

  return v2;
}

uint64_t MUIMailCleanupTip.title.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_title);

  return v2;
}

uint64_t MUIMailCleanupTip.message.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_message);

  return v2;
}

uint64_t MUIMailCleanupTip.submitButtonLabel.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_submitButtonLabel);

  return v2;
}

char *MUIMailCleanupTip.init(tipId:title:message:submitButtonLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = 0;
  v29 = a1;
  v30 = a2;
  v27 = a3;
  v28 = a4;
  v25 = a5;
  v26 = a6;
  v23 = a7;
  v24 = a8;

  v8 = OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_tipId;
  *OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_tipId = a1;
  *(v8 + 8) = a2;

  v9 = &v31[OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_title];
  *v9 = a3;
  *(v9 + 1) = a4;

  v10 = &v31[OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_message];
  *v10 = a5;
  *(v10 + 1) = a6;

  v11 = &v31[OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_submitButtonLabel];
  *v11 = a7;
  *(v11 + 1) = a8;
  v22.receiver = v31;
  v22.super_class = type metadata accessor for MUIMailCleanupTip();
  v21 = objc_msgSendSuper2(&v22, sel_init);
  MEMORY[0x277D82BE0](v21);
  v31 = v21;

  MEMORY[0x277D82BD8](v31);
  return v21;
}

id MUIMailCleanupTip.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUIMailCleanupTip();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214C57E58()
{
  result = sub_214CCF614("should-always-hide-conversation-summarize", 41, 1);
  qword_280C7C850 = result;
  qword_280C7C858 = v1;
  return result;
}

uint64_t *sub_214C57E9C()
{
  if (qword_280C7C848 != -1)
  {
    swift_once();
  }

  return &qword_280C7C850;
}

uint64_t sub_214C57EFC()
{
  v1 = *sub_214C57E9C();

  return v1;
}

uint64_t sub_214C57F88()
{
  v13 = 0;
  v9 = 0;
  v5 = objc_opt_self();
  sub_214C57E9C();

  v6 = sub_214CCF544();

  v7 = [v5 getValueForKey_];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    sub_214CD0054();
    sub_214B11A4C(v8, &v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    sub_214A69284();
    if (swift_dynamicCast())
    {
      v4 = v8[4];
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  else
  {
    sub_214A7D24C(v12);
    v3 = 0;
  }

  if (v3)
  {
    v9 = v3;
    v1 = [v3 BOOLValue];
    MEMORY[0x277D82BD8](v3);
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_214C5817C()
{
  v2 = *(v0 + OBJC_IVAR___MUIManualSummaryController_underlying);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

id sub_214C581C4(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_214B71394();
  v5 = sub_214CCF7D4();
  v6 = [v3 initWithMessages_sourceViewController_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

id sub_214C5825C(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  type metadata accessor for ManualSummaryController(0);

  MEMORY[0x277D82BE0](a2);
  *OBJC_IVAR___MUIManualSummaryController_underlying = ManualSummaryController.__allocating_init(messages:sourceViewController:)(a1, a2);
  v6.receiver = v9;
  v6.super_class = MUIManualSummaryController;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v5);
  v9 = v5;
  MEMORY[0x277D82BD8](a2);

  MEMORY[0x277D82BD8](v9);
  return v5;
}

double MUIManualSummaryController.summarizeMessage(usingExternalIntelligence:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + OBJC_IVAR___MUIManualSummaryController_underlying);
  MEMORY[0x277D82BE0](v9);

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  sub_214BBD100(a1 & 1, sub_214C58630, v8);

  *&result = MEMORY[0x277D82BD8](v9).n128_u64[0];
  return result;
}

uint64_t sub_214C584D8(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, __n128))
{
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);

  v3.n128_f64[0] = sub_214C589A4(v10, v11, v12);
  if (v12 == 255)
  {
    v7 = 0;
  }

  else
  {
    sub_214BC5A10();
    v4 = swift_allocError();
    *v5 = v10;
    *(v5 + 8) = v11;
    *(v5 + 16) = v12;
    v7 = v4;
  }

  a3(a1, v3);
}

double MUIManualSummaryController.provideFeedback(with:)(uint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR___MUIManualSummaryController_underlying);
  MEMORY[0x277D82BE0](v4);
  sub_214BC3F30(a1);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

unint64_t type metadata accessor for MUIManualSummaryController()
{
  v2 = qword_27CA37AB8;
  if (!qword_27CA37AB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA37AB8);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214C589A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != 255)
  {
    return sub_214BBA9BC(a1, a2, a3);
  }

  return result;
}

uint64_t sub_214C589F0()
{
  v2 = sub_214CCDA74();
  __swift_allocate_value_buffer(v2, qword_27CA37AC0);
  __swift_project_value_buffer(v2, qword_27CA37AC0);
  v0 = type metadata accessor for MUIManualSummaryViewManager();
  return static Logger.mailUILogger<A>(for:)(v0, v0);
}

unint64_t type metadata accessor for MUIManualSummaryViewManager()
{
  v2 = qword_280C7C7B0;
  if (!qword_280C7C7B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C7B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C58ABC()
{
  if (qword_27CA340A0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA37AC0);
}

uint64_t sub_214C58B28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C58ABC();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id sub_214C58C08()
{
  v1 = [v0 summaryView];

  return v1;
}

uint64_t sub_214C58CCC()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryViewManager_didCancelSummarization);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

double sub_214C58D9C(char a1)
{
  v3 = (v1 + OBJC_IVAR___MUIManualSummaryViewManager_didCancelSummarization);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return result;
}

uint64_t sub_214C58E84()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryViewManager_viewModel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C58F64(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryViewManager_viewModel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C59074()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryViewManager_delegate);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_214C59144(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR___MUIManualSummaryViewManager_delegate);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214C59238()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryViewManager_summaryView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C59318(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryViewManager_summaryView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C59428()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryViewManager_onboardingController);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C59508(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryViewManager_onboardingController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214C595A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithViewModel:a1 delegate:a2 summaryView:a3];
  MEMORY[0x277D82BD8](a3);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v6;
}

char *sub_214C59620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v17 = a1;
  v16 = a2;
  v15 = a3;
  *OBJC_IVAR___MUIManualSummaryViewManager_didCancelSummarization = 0;
  *&v18[OBJC_IVAR___MUIManualSummaryViewManager_delegate] = 0;
  *&v18[OBJC_IVAR___MUIManualSummaryViewManager_onboardingController] = 0;
  MEMORY[0x277D82BE0](a1);
  *&v18[OBJC_IVAR___MUIManualSummaryViewManager_viewModel] = a1;
  swift_unknownObjectRetain();
  v10 = &v18[OBJC_IVAR___MUIManualSummaryViewManager_delegate];
  swift_beginAccess();
  *v10 = a2;
  swift_unknownObjectRelease();
  swift_endAccess();
  v12 = &v18[OBJC_IVAR___MUIManualSummaryViewManager_didCancelSummarization];
  swift_beginAccess();
  *v12 = 0;
  swift_endAccess();
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for ManualSummaryView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      MEMORY[0x277D82BD8](a3);
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    MEMORY[0x277D82BE0](v8);
    *&v18[OBJC_IVAR___MUIManualSummaryViewManager_summaryView] = v8;
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    type metadata accessor for ManualSummaryView();
    *&v18[OBJC_IVAR___MUIManualSummaryViewManager_summaryView] = sub_214A61730();
  }

  v14.receiver = v18;
  v14.super_class = MUIManualSummaryViewManager;
  v6 = objc_msgSendSuper2(&v14, sel_init);
  *&v4 = MEMORY[0x277D82BE0](v6).n128_u64[0];
  v18 = v6;
  [v6 configureManualSummaryView];
  MEMORY[0x277D82BD8](a3);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v18);
  return v6;
}

void sub_214C59994()
{
  v2 = [v0 0x1FBC040C8];
  MEMORY[0x277D82BE0](v0);
  v1 = &v2[OBJC_IVAR___MUIManualSummaryView_delegate];
  swift_beginAccess();
  *(v1 + 1) = &protocol witness table for MUIManualSummaryViewManager;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v3 = [v0 0x1FBC040C8];
  ManualSummaryView.viewModel.setter([v0 viewModel]);
  v4 = [v0 delegate];
  if (v4)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_getObjectType();
    [v4 summaryViewManagerDidUpdateSummaryViewSize_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
  }
}

Swift::Void __swiftcall MUIManualSummaryViewManager.resetToInitialStateIfLoading()()
{
  v36 = 0;
  v42 = 0;
  v28 = 0;
  v30 = sub_214CCDA74();
  v31 = *(v30 - 8);
  v32 = v31;
  v0 = MEMORY[0x28223BE20](v29);
  v33 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v2;
  v34 = [v2 viewModel];
  v35 = [v34 state];

  v41[2] = v35;
  v41[1] = 1;
  v37 = type metadata accessor for MUIManualSummaryViewModelState(v36);
  sub_214B04718();
  if (sub_214CD03F4())
  {
    v3 = v33;
    v4 = sub_214C58ABC();
    (*(v32 + 16))(v3, v4, v30);
    v26 = sub_214CCDA54();
    v23 = v26;
    v25 = sub_214CCFBA4();
    v24 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
    v27 = sub_214CD03C4();
    if (os_log_type_enabled(v26, v25))
    {
      v5 = v28;
      v14 = sub_214CCFF24();
      v10 = v14;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
      v12 = 0;
      v15 = sub_214A632C4(0, v11, v11);
      v13 = v15;
      v16 = sub_214A632C4(v12, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v41[0] = v14;
      v40 = v15;
      v39 = v16;
      v17 = 0;
      v18 = v41;
      sub_214A6627C(0, v41);
      sub_214A6627C(v17, v18);
      v38 = v27;
      v19 = v7;
      MEMORY[0x28223BE20](v7);
      v20 = &v7[-6];
      v7[-4] = v6;
      v7[-3] = &v40;
      v7[-2] = &v39;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
      sub_214A810E0();
      sub_214CCF764();
      v22 = v5;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v23, v24, "Will cancel summarization", v10, 2u);
        v8 = 0;
        sub_214A669DC(v13, 0, v11);
        sub_214A669DC(v16, v8, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();

        v9 = v22;
      }
    }

    else
    {

      v9 = v28;
    }

    v7[1] = v9;

    (*(v32 + 8))(v33, v30);
    [v29 setDidCancelSummarization_];
    v7[0] = [v29 viewModel];
    [v7[0] resetToInitialState];

    [v29 refreshSummaryViewModel];
  }
}

Swift::Void __swiftcall MUIManualSummaryViewManager.beginSummarizing(usingExternalIntelligence:)(Swift::Bool usingExternalIntelligence)
{
  ObjectType = swift_getObjectType();
  v31 = usingExternalIntelligence;
  v30 = v1;
  v4 = [v1 0x1FA98D910];
  [v4 updateToLoadingState];
  [v1 refreshSummaryViewModel];
  [v1 setDidCancelSummarization_];
  v5 = [v1 0x1FA98D910];
  v8 = [v5 0x1FCB4BD11];
  MEMORY[0x277D82BD8](v5);
  (MEMORY[0x277D82BE0])();
  v2 = swift_allocObject();
  *(v2 + 16) = usingExternalIntelligence;
  *(v2 + 24) = v1;
  *(v2 + 32) = ObjectType;
  v28 = sub_214C5F704;
  v29 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_214B100BC;
  v27 = &block_descriptor_18;
  v7 = _Block_copy(&aBlock);

  [v8 addSuccessBlock_];
  _Block_release(v7);
  v9 = [v10 0x1FA98D910];
  v15 = [v9 0x1FCB4BD11];
  MEMORY[0x277D82BD8](v9);
  v14 = [objc_opt_self() mainThreadScheduler];
  v12 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  v3 = swift_allocObject();
  *(v3 + 16) = v12;
  *(v3 + 24) = ObjectType;
  v21 = sub_214C5F718;
  v22 = v3;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = 0;
  v19 = sub_214C18604;
  v20 = &block_descriptor_9_1;
  v13 = _Block_copy(&v16);

  [v15 onScheduler:v14 addFailureBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v15);
}

void sub_214C5A444(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v19 = a2 & 1;
  v18 = a3;
  v7 = swift_allocObject();
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](a3);

  v4 = swift_allocObject();
  *(v4 + 16) = v7;
  *(v4 + 24) = a4;
  v16 = sub_214C5FB0C;
  v17 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = 0;
  v14 = sub_214B673A0;
  v15 = &block_descriptor_93;
  v10 = _Block_copy(&aBlock);

  [a1 summarizeMessageUsingExternalIntelligence:a2 & 1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_214C5A5CC(void *a1, void *a2, uint64_t a3)
{
  v142 = a3;
  v145 = a2;
  v144 = a1;
  v143 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v179 = 0;
  v178 = 0;
  v177 = 0;
  v133 = 0;
  v158 = 0;
  v134 = sub_214CCF224();
  v135 = *(v134 - 8);
  v136 = v135;
  MEMORY[0x28223BE20](0);
  v137 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_214CCF254();
  v139 = *(v138 - 8);
  v140 = v139;
  MEMORY[0x28223BE20](v143);
  v141 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_214CCDA74();
  v147 = *(v146 - 8);
  v148 = v147;
  v149 = *(v147 + 64);
  MEMORY[0x28223BE20](v144);
  v151 = (v149 + 15) & 0xFFFFFFFFFFFFFFF0;
  v150 = &v47 - v151;
  MEMORY[0x28223BE20](v5);
  v152 = &v47 - v151;
  v183 = v6;
  v182 = v7;
  v153 = v8 + 16;
  v181 = v8 + 16;
  v154 = &v180;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v155 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v133;
  }

  v132 = v155;
  v130 = v155;
  v179 = v155;
  v178 = 0;
  v177 = 0;
  v9 = [v155 didCancelSummarization];
  if ((v9 & 1) == 0)
  {
    v10 = v144;
    if (v144)
    {
      v129 = v144;
      v126 = v144;
      v158 = v144;
      v127 = [v144 attributedString];
      v128 = [v127 length];

      if (v128 >= 1)
      {
        v157 = v145;
        v125 = v145 == 0;
        if (!v145)
        {
          v121 = [v130 viewModel];
          v120 = [v126 attributedString];
          v11 = [v126 isExternalSummary];
          [v121 updateToCompleteStateWithSummary:v120 isExternalSummary:v11];

          v122 = [v126 requiresConfirmation];
          v178 = v122;

          v123 = v122;
          v124 = v133;
LABEL_29:
          v72 = v124;
          v68 = v123;
          v69 = 0;
          sub_214B51A38();
          v71 = sub_214CCFC44();
          v37 = v144;
          v38 = v130;
          v39 = swift_allocObject();
          v40 = v144;
          v41 = v130;
          *(v39 + 16) = v68 & 1;
          *(v39 + 24) = v40;
          *(v39 + 32) = v41;
          v169 = sub_214C5FBB0;
          v170 = v39;
          aBlock = MEMORY[0x277D85DD0];
          v165 = 1107296256;
          v166 = 0;
          v167 = sub_214A746A8;
          v168 = &block_descriptor_123_0;
          v70 = _Block_copy(&aBlock);

          sub_214BC69C4();
          sub_214BC69DC();
          MEMORY[0x21605DF00](v69, v141, v137, v70);
          (*(v136 + 8))(v137, v134);
          (*(v140 + 8))(v141, v138);
          _Block_release(v70);

          return v72;
        }
      }
    }

    v12 = v152;
    v13 = sub_214C58ABC();
    (*(v148 + 16))(v12, v13, v146);
    v14 = v145;
    v108 = 7;
    v106 = swift_allocObject();
    *(v106 + 16) = v145;
    sub_214B1C228();

    v119 = sub_214CCDA54();
    v101 = v119;
    v118 = sub_214CCFBA4();
    v102 = v118;
    v103 = 17;
    v112 = swift_allocObject();
    v104 = v112;
    *(v112 + 16) = 64;
    v113 = swift_allocObject();
    v105 = v113;
    *(v113 + 16) = 8;
    v107 = 32;
    v15 = swift_allocObject();
    v16 = v106;
    v109 = v15;
    *(v15 + 16) = sub_214C5FB7C;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v109;
    v110 = v17;
    *(v17 + 16) = sub_214BC6628;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v110;
    v116 = v19;
    v111 = v19;
    *(v19 + 16) = sub_214B21624;
    *(v19 + 24) = v20;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
    v114 = sub_214CD03C4();
    v115 = v21;

    v22 = v112;
    v23 = v115;
    *v115 = sub_214A662DC;
    v23[1] = v22;

    v24 = v113;
    v25 = v115;
    v115[2] = sub_214A662DC;
    v25[3] = v24;

    v26 = v115;
    v27 = v116;
    v115[4] = sub_214B217B4;
    v26[5] = v27;
    sub_214A63280();

    if (os_log_type_enabled(v119, v118))
    {
      v28 = v133;
      v94 = sub_214CCFF24();
      v91 = v94;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
      v97 = 1;
      v95 = sub_214A632C4(1, v92, v92);
      v93 = v95;
      v96 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v163 = v94;
      v162 = v95;
      v161 = v96;
      v98 = &v163;
      sub_214A6627C(2, &v163);
      sub_214A6627C(v97, v98);
      v159 = sub_214A662DC;
      v160 = v104;
      sub_214A66290(&v159, v98, &v162, &v161);
      v99 = v28;
      v100 = v28;
      if (v28)
      {
        v89 = 0;

        __break(1u);
      }

      else
      {
        v159 = sub_214A662DC;
        v160 = v105;
        sub_214A66290(&v159, &v163, &v162, &v161);
        v87 = 0;
        v88 = 0;
        v159 = sub_214B217B4;
        v160 = v111;
        sub_214A66290(&v159, &v163, &v162, &v161);
        v85 = 0;
        v86 = 0;
        _os_log_impl(&dword_214A5E000, v101, v102, "Unable to generate summary for mail messages, error: %@", v91, 0xCu);
        sub_214A669DC(v93, 1, v92);
        sub_214A669DC(v96, 0, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();

        v90 = v85;
      }
    }

    else
    {
      v29 = v133;

      v90 = v29;
    }

    v84 = v90;

    (*(v148 + 8))(v152, v146);
    v30 = v145;
    if (v145)
    {
      v83 = v145;
      v80 = v145;
      v81 = sub_214CCD074(v31);

      v82 = v81;
    }

    else
    {
      v82 = 0;
    }

    v78 = v82;
    v79 = [v130 needsToUseExternalIntelligenceErrorFrom_];

    if (v79)
    {
      v77 = [v130 viewModel];
      [v77 resetToInitialState];

      v177 = 1;
    }

    else
    {
      v76 = [v130 viewModel];
      v32 = v145;
      v171 = v145;
      if (v145)
      {
        v172 = v171;
      }

      else
      {
        sub_214BC5A10();
        v75 = 0;
        v34 = swift_allocError();
        v35 = v75;
        v172 = v34;
        *v36 = 3;
        *(v36 + 8) = v35;
        *(v36 + 16) = 2;
        if (v171)
        {
          sub_214C5FB84(&v171);
        }
      }

      v73 = v172;
      v74 = sub_214CCD074(v33);

      [v76 updateToErrorState_];
    }

    v123 = 0;
    v124 = v84;
    goto LABEL_29;
  }

  v42 = v150;
  v43 = sub_214C58ABC();
  (*(v148 + 16))(v42, v43, v146);
  v66 = sub_214CCDA54();
  v63 = v66;
  v65 = sub_214CCFBA4();
  v64 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v67 = sub_214CD03C4();
  if (os_log_type_enabled(v66, v65))
  {
    v44 = v133;
    v54 = sub_214CCFF24();
    v50 = v54;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v52 = 0;
    v55 = sub_214A632C4(0, v51, v51);
    v53 = v55;
    v56 = sub_214A632C4(v52, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v176 = v54;
    v175 = v55;
    v174 = v56;
    v57 = 0;
    v58 = &v176;
    sub_214A6627C(0, &v176);
    sub_214A6627C(v57, v58);
    v173 = v67;
    v59 = &v47;
    MEMORY[0x28223BE20](&v47);
    v60 = &v47 - 6;
    *(&v47 - 4) = v45;
    *(&v47 - 3) = &v175;
    *(&v47 - 2) = &v174;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
    sub_214A810E0();
    sub_214CCF764();
    v62 = v44;
    if (v44)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v63, v64, "Summarization was cancelled, skipping UI update", v50, 2u);
      v48 = 0;
      sub_214A669DC(v53, 0, v51);
      sub_214A669DC(v56, v48, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

      v49 = v62;
    }
  }

  else
  {

    v49 = v133;
  }

  v47 = v49;

  (*(v148 + 8))(v150, v146);
  return v47;
}

id sub_214C5B9AC(void *a1)
{
  v1 = a1;
  v5 = a1;
  if (a1)
  {
    return v5;
  }

  sub_214BC5A10();
  v6 = swift_allocError();
  *v2 = 3;
  *(v2 + 8) = 0;
  *(v2 + 16) = 2;
  if (v5)
  {
    sub_214C5FB84(&v5);
  }

  return v6;
}

void sub_214C5BA48(char a1, void *a2, void *a3)
{
  if (a1)
  {
    *&v3 = MEMORY[0x277D82BE0](a2).n128_u64[0];
    if (a2)
    {
      v5 = [a2 attributedString];
      v6 = [v5 length];
      *&v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
      if (v6 > 0)
      {
        [a3 requestConfirmationToDisplaySummary];
        MEMORY[0x277D82BD8](a2);
        return;
      }

      MEMORY[0x277D82BD8](a2);
    }
  }

  [a3 refreshSummaryViewModel];
}

uint64_t sub_214C5BB70(void *a1, uint64_t a2)
{
  v102 = a2;
  v101 = a1;
  v100 = 0;
  v125 = 0;
  v124 = 0;
  v122 = 0;
  v99 = 0;
  v103 = sub_214CCDA74();
  v104 = *(v103 - 8);
  v105 = v104;
  v106 = *(v104 + 64);
  MEMORY[0x28223BE20](v101);
  v108 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = &v31 - v108;
  MEMORY[0x28223BE20](v2);
  v109 = &v31 - v108;
  v125 = v3;
  v110 = v4 + 16;
  v124 = v4 + 16;
  v111 = &v123;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v112 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v99;
  }

  v98 = v112;
  v5 = v109;
  v74 = v112;
  v122 = v112;
  v6 = sub_214C58ABC();
  v75 = *(v105 + 16);
  v76 = (v105 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v75(v5, v6, v103);
  v7 = v101;
  v84 = 7;
  v82 = swift_allocObject();
  *(v82 + 16) = v101;
  sub_214B1C228();

  v96 = sub_214CCDA54();
  v77 = v96;
  v95 = sub_214CCFBA4();
  v78 = v95;
  v79 = 17;
  v89 = swift_allocObject();
  v80 = v89;
  *(v89 + 16) = 64;
  v90 = swift_allocObject();
  v81 = v90;
  *(v90 + 16) = 8;
  v83 = 32;
  v8 = swift_allocObject();
  v9 = v82;
  v85 = v8;
  *(v8 + 16) = sub_214BC6620;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v85;
  v86 = v10;
  *(v10 + 16) = sub_214BC6628;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v86;
  v93 = v12;
  v87 = v12;
  *(v12 + 16) = sub_214B21624;
  *(v12 + 24) = v13;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v88 = v94;
  v91 = sub_214CD03C4();
  v92 = v14;

  v15 = v89;
  v16 = v92;
  *v92 = sub_214A662DC;
  v16[1] = v15;

  v17 = v90;
  v18 = v92;
  v92[2] = sub_214A662DC;
  v18[3] = v17;

  v19 = v92;
  v20 = v93;
  v92[4] = sub_214B217B4;
  v19[5] = v20;
  sub_214A63280();

  if (os_log_type_enabled(v96, v95))
  {
    v22 = v99;
    v67 = sub_214CCFF24();
    v64 = v67;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v70 = 1;
    v68 = sub_214A632C4(1, v65, v65);
    v66 = v68;
    v69 = sub_214A632C4(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v118[0] = v67;
    v117 = v68;
    v116 = v69;
    v71 = v118;
    sub_214A6627C(2, v118);
    sub_214A6627C(v70, v71);
    v114 = sub_214A662DC;
    v115 = v80;
    sub_214A66290(&v114, v71, &v117, &v116);
    v72 = v22;
    v73 = v22;
    if (v22)
    {
      v62 = 0;

      __break(1u);
    }

    else
    {
      v114 = sub_214A662DC;
      v115 = v81;
      sub_214A66290(&v114, v118, &v117, &v116);
      v60 = 0;
      v61 = 0;
      v114 = sub_214B217B4;
      v115 = v87;
      sub_214A66290(&v114, v118, &v117, &v116);
      v58 = 0;
      v59 = 0;
      _os_log_impl(&dword_214A5E000, v77, v78, "Unable to generate summary: %@", v64, 0xCu);
      sub_214A669DC(v66, 1, v65);
      sub_214A669DC(v69, 0, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

      v63 = v58;
    }
  }

  else
  {
    v23 = v99;

    v63 = v23;
  }

  v55 = v63;

  v56 = *(v105 + 8);
  v57 = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v56(v109, v103);
  if ([v74 didCancelSummarization])
  {
    v26 = v107;
    v27 = sub_214C58ABC();
    v75(v26, v27, v103);
    v51 = sub_214CCDA54();
    v48 = v51;
    v50 = sub_214CCFBA4();
    v49 = v50;
    v52 = sub_214CD03C4();
    if (os_log_type_enabled(v51, v50))
    {
      v28 = v55;
      v39 = sub_214CCFF24();
      v35 = v39;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
      v37 = 0;
      v40 = sub_214A632C4(0, v36, v36);
      v38 = v40;
      v41 = sub_214A632C4(v37, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v121 = v39;
      v120 = v40;
      v119 = v41;
      v42 = 0;
      v43 = &v121;
      sub_214A6627C(0, &v121);
      sub_214A6627C(v42, v43);
      v118[2] = v52;
      v44 = &v31;
      MEMORY[0x28223BE20](&v31);
      v45 = &v31 - 6;
      *(&v31 - 4) = v29;
      *(&v31 - 3) = &v120;
      *(&v31 - 2) = &v119;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
      sub_214A810E0();
      sub_214CCF764();
      v47 = v28;
      if (v28)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v48, v49, "Summarization was cancelled, skipping UI update", v35, 2u);
        v33 = 0;
        sub_214A669DC(v38, 0, v36);
        sub_214A669DC(v41, v33, MEMORY[0x277D84F70] + 8);
        sub_214CCFF04();

        v34 = v47;
      }
    }

    else
    {

      v34 = v55;
    }

    v32 = v34;

    v56(v107, v103);
    return v32;
  }

  else
  {
    v54 = [v74 viewModel];
    v24 = v101;
    v53 = sub_214CCD074(v25);

    [v54 updateToErrorState_];
    [v74 refreshSummaryViewModel];

    return v55;
  }
}

void sub_214C5C8B0()
{
  v1 = [v0 summaryView];
  ManualSummaryView.viewModel.setter([v0 viewModel]);
  v2 = [v0 delegate];
  if (v2)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_getObjectType();
    [v2 summaryViewManagerDidUpdateSummaryViewSize_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
  }
}

uint64_t sub_214C5CABC()
{
  v107 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v47 = 0;
  v104 = sub_214CCDA74();
  v48 = v104;
  v49 = *(v104 - 8);
  v103 = v49;
  v50 = v49;
  v51 = *(v49 + 64);
  v0 = MEMORY[0x28223BE20](v104 - 8);
  v1 = &v32 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v1;
  v137 = v2;
  v76 = 1;
  v54 = sub_214CCF614("Summarize message?", 18, v0);
  v59 = v3;
  v74 = 0x277CCA000uLL;
  v4 = objc_opt_self();
  v75 = 0x1FCB47000uLL;
  v58 = [v4 0x1FCB47FD2];
  v53 = sub_214CCF614("Alert title for when Mail detects a message that is potentially not safe and requires confirmation to display the summary", 121, v76);
  v57 = v5;
  sub_214B1C228();
  v55 = v6;
  v84 = sub_214CCCF54();
  v85 = v7;
  v56 = v7;

  v135 = v84;
  v136 = v85;
  v95 = 0;
  v61 = sub_214CCF614("Mail Summarization isn’t designed to work with this type of content. The summary may not fully reflect the original message.", 126);
  v66 = v8;
  v65 = [objc_opt_self() (v75 + 4050)];
  v60 = sub_214CCF614("Alert message for when Mail detects a message that is potentially not safe and requires confirmation to display the summary", 123, v76);
  v64 = v9;
  sub_214B1C228();
  v62 = v10;
  v86 = sub_214CCCF54();
  v87 = v11;
  v63 = v11;

  v133 = v86;
  v134 = v87;
  v68 = sub_214CCF614("Summarize", 9, v76);
  v73 = v12;
  v72 = [objc_opt_self() (v75 + 4050)];
  v67 = sub_214CCF614("Title for alert action to allow Mail to display the summary of a message which is potentially not safe", 102, v76);
  v71 = v13;
  sub_214B1C228();
  v69 = v14;
  v88 = sub_214CCCF54();
  v89 = v15;
  v70 = v15;

  v131 = v88;
  v132 = v89;
  v78 = sub_214CCF614("Cancel", 6, v76);
  v83 = v16;
  v82 = [objc_opt_self() (v75 + 4050)];
  v77 = sub_214CCF614("Title for alert action to disallow Mail to display the summary of a message which is potentially not safe", 105, v76);
  v81 = v17;
  sub_214B1C228();
  v79 = v18;
  v31 = v81;
  v90 = sub_214CCCF54();
  v91 = v19;
  v80 = v19;

  v129 = v90;
  v130 = v91;

  v102 = sub_214CCF544();

  v101 = sub_214CCF544();

  v100 = sub_214CCF544();

  v20 = v96;
  v92 = 24;
  v93 = 7;
  v21 = swift_allocObject();
  v22 = v95;
  *(v21 + 16) = v96;
  v127 = sub_214C5F788;
  v128 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v94 = 1107296256;
  v123 = 1107296256;
  v124 = v22;
  v125 = sub_214A746A8;
  v126 = &block_descriptor_15_0;
  v99 = _Block_copy(&aBlock);

  v98 = sub_214CCF544();

  v23 = v96;
  v24 = swift_allocObject();
  v25 = v94;
  v26 = v95;
  *(v24 + 16) = v96;
  v120 = sub_214C5F7F4;
  v121 = v24;
  v115 = MEMORY[0x277D85DD0];
  v116 = v25;
  v117 = v26;
  v118 = sub_214A746A8;
  v119 = &block_descriptor_21_0;
  v97 = _Block_copy(&v115);

  [v96 presentAlertWithTitle:v102 message:v101 confirmTitle:v100 confirmActionHandler:v99 cancelTitle:v98 cancelActionHandler:v97];
  _Block_release(v97);

  _Block_release(v99);
  v27 = sub_214C58ABC();
  (*(v103 + 16))(v1, v27, v104);
  v109 = sub_214CCDA54();
  v105 = v109;
  v108 = sub_214CCFBB4();
  v106 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v110 = sub_214CD03C4();
  if (os_log_type_enabled(v109, v108))
  {
    v28 = v47;
    v38 = sub_214CCFF24();
    v34 = v38;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v36 = 0;
    v39 = sub_214A632C4(0, v35, v35);
    v37 = v39;
    v40 = sub_214A632C4(v36, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v114 = v38;
    v113 = v39;
    v112 = v40;
    v41 = 0;
    v42 = &v114;
    sub_214A6627C(0, &v114);
    sub_214A6627C(v41, v42);
    v111 = v110;
    v43 = &v32;
    MEMORY[0x28223BE20](&v32);
    v44 = &v32 - 6;
    *(&v32 - 4) = v29;
    *(&v32 - 3) = &v113;
    v31 = &v112;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
    sub_214A810E0();
    sub_214CCF764();
    v46 = v28;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v105, v106, "Did display summary-confirmation alert", v34, 2u);
      v32 = 0;
      sub_214A669DC(v37, 0, v35);
      sub_214A669DC(v40, v32, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

      v33 = v46;
    }
  }

  else
  {

    v33 = v47;
  }

  (*(v50 + 8))(v52, v48);
}

id sub_214C5D7BC(void *a1)
{
  v2 = [a1 viewModel];
  [v2 resetToInitialState];
  return [a1 refreshSummaryViewModel];
}

double sub_214C5D884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_214C5F860();

  v28 = sub_214C5DCB4(a1, a2, a3, a4, 1);

  if (a10)
  {
    sub_214C5F8C4();

    sub_214B5188C(a11);
    v12 = swift_allocObject();
    *(v12 + 16) = a11;
    *(v12 + 24) = a12;
    v29 = sub_214C5DE90(a9, a10, 1, sub_214C5F928, v12);
    [v28 addAction_];
    MEMORY[0x277D82BD8](v29);
  }

  sub_214C5F8C4();

  sub_214B5188C(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = a7;
  *(v13 + 24) = a8;
  v18 = sub_214C5DE90(a5, a6, 0, sub_214C5F928, v13);
  [v28 addAction_];
  [v28 setPreferredAction_];
  v30 = [v23 delegate];
  if (v30)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_getObjectType();
    v16 = [v30 presentingViewControllerForSummaryViewManager_];
    swift_unknownObjectRelease();
    v17 = v16;
  }

  else
  {
    sub_214A759F4();
    v17 = 0;
  }

  *&v14 = MEMORY[0x277D82BE0](v17).n128_u64[0];
  if (v17)
  {
    [v17 presentViewController:v28 animated:1 completion:{0, v14}];
    MEMORY[0x277D82BD8](v17);
  }

  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *&result = MEMORY[0x277D82BD8](v28).n128_u64[0];
  return result;
}

id sub_214C5DCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = sub_214CCF544();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v7 = sub_214CCF544();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v10 message:v8 preferredStyle:a5];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v10);
  return v6;
}

uint64_t sub_214C5DDF8(uint64_t a1, void (*a2)(uint64_t))
{
  result = sub_214B5188C(a2);
  if (a2)
  {
    a2(result);
  }

  return result;
}

id sub_214C5DE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = sub_214CCF544();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v19 = a4;
    v20 = a5;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = 0;
    v17 = sub_214B100BC;
    v18 = &block_descriptor_65;
    v7 = _Block_copy(&aBlock);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() actionWithTitle:v10 style:a3 handler:v8];
  _Block_release(v8);
  MEMORY[0x277D82BD8](v10);
  return v6;
}

uint64_t MUIManualSummaryViewManager.didSelectFeedbackMenuItem(for:type:)(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v46 = a1;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v45 = 0;
  v57 = 0;
  v49 = sub_214CCDA74();
  v50 = *(v49 - 8);
  v51 = v50;
  v52 = *(v50 + 64);
  v2 = MEMORY[0x28223BE20](v47);
  v53 = &v11 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v3;
  v65 = v4;
  v64 = v5;
  v54 = [v5 viewModel];
  v56 = [v54 summary];
  v55 = v56;

  if (v56)
  {
    v44 = v55;
    v40 = v55;
    v41 = [v55 length];

    v42 = v41;
    v43 = 0;
  }

  else
  {
    v42 = 0;
    v43 = 1;
  }

  v62 = v42;
  v63 = v43 & 1;
  if (v43)
  {
    v39 = 0;
  }

  else
  {
    v39 = v62;
  }

  if (v39 > 0)
  {
    v35 = [v47 viewModel];
    v37 = [v35 summaryControllerFuture];
    v36 = v37;

    v38 = [v37 resultIfAvailable];
    if (v38)
    {
      v34 = v38;
      v32 = v38;
      v57 = v38;

      [v32 provideFeedbackWithType_];
      return v45;
    }
  }

  v6 = v53;
  v7 = sub_214C58ABC();
  (*(v51 + 16))(v6, v7, v49);
  v30 = sub_214CCDA54();
  v27 = v30;
  v29 = sub_214CCFBA4();
  v28 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v31 = sub_214CD03C4();
  if (os_log_type_enabled(v30, v29))
  {
    v8 = v45;
    v18 = sub_214CCFF24();
    v14 = v18;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v16 = 0;
    v19 = sub_214A632C4(0, v15, v15);
    v17 = v19;
    v20 = sub_214A632C4(v16, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v61 = v18;
    v60 = v19;
    v59 = v20;
    v21 = 0;
    v22 = &v61;
    sub_214A6627C(0, &v61);
    sub_214A6627C(v21, v22);
    v58 = v31;
    v23 = &v11;
    MEMORY[0x28223BE20](&v11);
    v24 = &v11 - 6;
    *(&v11 - 4) = v9;
    *(&v11 - 3) = &v60;
    *(&v11 - 2) = &v59;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030, &unk_214CEF740);
    sub_214A810E0();
    sub_214CCF764();
    v26 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v27, v28, "Attempting to provide feedback without a summary", v14, 2u);
      v12 = 0;
      sub_214A669DC(v17, 0, v15);
      sub_214A669DC(v20, v12, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();

      v13 = v26;
    }
  }

  else
  {

    v13 = v45;
  }

  v11 = v13;

  (*(v51 + 8))(v53, v49);
  return v11;
}

double MUIManualSummaryViewManager.didAttemptRestrictedAction(for:reasons:)(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v65 = a2;
  v66 = sub_214A7E9D4;
  v69 = sub_214A7E7C4;
  v73 = sub_214A7E854;
  v75 = sub_214A662DC;
  v77 = sub_214A662DC;
  v80 = sub_214A7E40C;
  v45 = sub_214C5F788;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v46 = 0;
  v52 = 0;
  v47 = sub_214CCF224();
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v51 = &v28 - v50;
  v53 = sub_214CCF254();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v57 = &v28 - v56;
  v64 = sub_214CCDA74();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v60 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v2 = &v28 - v60;
  v61 = &v28 - v60;
  v101 = v3;
  v100 = v4;
  v99 = v5;
  v6 = sub_214C58ABC();
  (*(v62 + 16))(v2, v6, v64);

  v71 = 7;
  v67 = swift_allocObject();
  *(v67 + 16) = v65;

  v70 = 32;
  v7 = swift_allocObject();
  v8 = v67;
  v72 = v7;
  *(v7 + 16) = v66;
  *(v7 + 24) = v8;

  v84 = sub_214CCDA54();
  v85 = sub_214CCFBA4();
  v68 = 17;
  v76 = swift_allocObject();
  *(v76 + 16) = 32;
  v78 = swift_allocObject();
  *(v78 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v72;
  v74 = v9;
  *(v9 + 16) = v69;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v74;
  v81 = v11;
  *(v11 + 16) = v73;
  *(v11 + 24) = v12;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0, &unk_214CEF730);
  v79 = sub_214CD03C4();
  v82 = v13;

  v14 = v76;
  v15 = v82;
  *v82 = v75;
  v15[1] = v14;

  v16 = v78;
  v17 = v82;
  v82[2] = v77;
  v17[3] = v16;

  v18 = v81;
  v19 = v82;
  v82[4] = v80;
  v19[5] = v18;
  sub_214A63280();

  if (os_log_type_enabled(v84, v85))
  {
    v20 = v46;
    v38 = sub_214CCFF24();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540, &unk_214CEE4E0);
    v39 = sub_214A632C4(0, v37, v37);
    v40 = sub_214A632C4(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v41 = &v90;
    v90 = v38;
    v42 = &v89;
    v89 = v39;
    v43 = &v88;
    v88 = v40;
    sub_214A6627C(2, &v90);
    sub_214A6627C(1, v41);
    v86 = v75;
    v87 = v76;
    sub_214A66290(&v86, v41, v42, v43);
    v44 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v86 = v77;
      v87 = v78;
      sub_214A66290(&v86, &v90, &v89, &v88);
      v36 = 0;
      v86 = v80;
      v87 = v81;
      sub_214A66290(&v86, &v90, &v89, &v88);
      _os_log_impl(&dword_214A5E000, v84, v85, "Did attempt restricted action, reasons: %s", v38, 0xCu);
      sub_214A669DC(v39, 0, v37);
      sub_214A669DC(v40, 1, MEMORY[0x277D84F70] + 8);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277D82BD8](v84);
  (*(v62 + 8))(v61, v64, v21);
  v32 = [v58 viewModel];

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37B10, &qword_214CF4D08);
  v29 = v98;
  v98[3] = v22;
  v98[4] = sub_214C5F9BC();
  v98[0] = v65;
  sub_214BC5A10();
  v30 = swift_allocError();
  sub_214BD0E34(v29, v23);
  v31 = sub_214CCD074(v24);

  [v32 updateToErrorState_];
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  v33 = 0;
  sub_214B51A38();
  v35 = sub_214CCFC44();
  MEMORY[0x277D82BE0](v58);
  v25 = swift_allocObject();
  v26 = v45;
  *(v25 + 16) = v58;
  v96 = v26;
  v97 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v92 = 1107296256;
  v93 = 0;
  v94 = sub_214A746A8;
  v95 = &block_descriptor_61;
  v34 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v33, v57, v51, v34);
  (*(v48 + 8))(v51, v47);
  (*(v54 + 8))(v57, v53);
  _Block_release(v34);
  *&result = MEMORY[0x277D82BD8](v35).n128_u64[0];
  return result;
}

double sub_214C5F660(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  [v2 didSelectShowSummaryButtonForSummaryView_];
  (MEMORY[0x277D82BD8])();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t block_copy_helper_7_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_13_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_19_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214C5F860()
{
  v2 = qword_27CA37B00;
  if (!qword_27CA37B00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA37B00);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C5F8C4()
{
  v2 = qword_27CA37B08;
  if (!qword_27CA37B08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA37B08);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C5F934()
{
  v2 = qword_27CA37B18;
  if (!qword_27CA37B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37B10, &qword_214CF4D08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37B18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C5F9BC()
{
  v2 = qword_27CA37B20;
  if (!qword_27CA37B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37B10, &qword_214CF4D08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37B20);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_121_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

double sub_214C5FC28(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = (a3 >> 5) & 7;
  if (v5)
  {
    if (v5 == 1 || v5 == 2 || v5 == 3)
    {
      sub_214CD0554();
      sub_214CD0554();
    }

    else if (v5 == 4)
    {
      MEMORY[0x277D82BE0](a2);
      sub_214CD0554();
      type metadata accessor for MessageListSection(0);
      sub_214B04498();
      sub_214CD0554();
      *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
    }

    else
    {
      sub_214CD0554();
    }
  }

  else
  {
    sub_214CD0554();
    sub_214CD0554();
    sub_214CD0554();
  }

  return result;
}

unint64_t sub_214C60078()
{
  v2 = qword_27CA37B28;
  if (!qword_27CA37B28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37B28);
    return WitnessTable;
  }

  return v2;
}

char *sub_214C60188(uint64_t a1, unsigned __int8 a2)
{
  v7 = sub_214A7A398(a1, a2);
  if (v2)
  {
    goto LABEL_6;
  }

  if (v7 == sub_214CCCE14())
  {
    return [objc_opt_self() failed];
  }

  if (v7 > 0)
  {
LABEL_6:
    type metadata accessor for MUIMessageListSectionDataSourceChange();
    sub_214A6FB64(a1, a2);
    return sub_214A6FA30(a1, a2);
  }

  return [objc_opt_self() skipped];
}

char *static MUIMessageListSectionDataSourceChange.sectionRemoved(_:)(uint64_t a1)
{
  type metadata accessor for MUIMessageListSectionDataSourceChange();
  MEMORY[0x277D82BE0](a1);
  return sub_214A6FA30(a1, 0x80u);
}

uint64_t sub_214C60678(uint64_t a1)
{
  if ((*(a1 + 8) & 0xFE) != 0xFE)
  {
    sub_214A6FB18(*a1, *(a1 + 8));
  }

  if ((*(a1 + 24) & 0xFE) != 0xFE)
  {
    sub_214A6FB18(*(a1 + 16), *(a1 + 24));
  }

  return a1;
}

uint64_t MUIMessageListSectionDataSourceChange.isSectionRemoval.getter()
{
  v3 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_214A6D370(*v3, v5);
  swift_endAccess();
  if ((v5 & 0xFE) == 0xFE)
  {
    goto LABEL_5;
  }

  if (((v5 >> 5) & 7) != 4)
  {
    sub_214A6FB18(v4, v5);
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  MEMORY[0x277D82BD8](v4);
  v2 = 1;
  return v2 & 1;
}

uint64_t sub_214C60878()
{
  v2 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v3 = *v2;
  sub_214A6D370(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

double sub_214C608EC(uint64_t a1, unsigned __int8 a2)
{
  sub_214A6D370(a1, a2);
  v6 = v2 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v3 = *v6;
  v4 = *(v6 + 8);
  *v6 = a1;
  *(v6 + 8) = a2;
  sub_214A70FA8(v3, v4);
  swift_endAccess();
  return sub_214A70FA8(a1, a2);
}

uint64_t MUIMessageListSectionDataSourceChange.debugDescription.getter()
{
  v2 = [v0 ef_publicDescription];
  v3 = sub_214CCF564();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t get_enum_tag_for_layout_string_So37MUIMessageListSectionDataSourceChangeC6MailUIE0F033_F43593081D8AFDF48B015BA201A508BELLO(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 5) & 7;
  if (v1 < 5)
  {
    return v1;
  }

  else
  {
    return *a1 + 5;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_214C60AF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7A && *(a1 + 9))
    {
      v5 = *a1 + 122;
    }

    else
    {
      v2 = (*(a1 + 8) >> 1) & 0x7F;
      v3 = 127 - (((8 * v2) | (v2 >> 4)) & 0x7F);
      if (v3 >= 0x7A)
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

uint64_t sub_214C60C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0x7A)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 123;
    if (a3 >= 0x7B)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 & 0x78) >> 2) - 32 * a2;
    }
  }

  return result;
}

uint64_t sub_214C60DF0(uint64_t result)
{
  v1 = *(result + 8) & 0x1F;
  *result = *result;
  *(result + 8) = v1;
  return result;
}

uint64_t sub_214C60E08(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = (32 * (a2 & 7)) | *(result + 8) & 1;
    *result = *result;
    *(result + 8) = v2;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = -96;
  }

  return result;
}

unint64_t sub_214C60EA4()
{
  v2 = qword_27CA37B38;
  if (!qword_27CA37B38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37B38);
    return WitnessTable;
  }

  return v2;
}

id sub_214C60F20(uint64_t a1)
{
  v5 = *(a1 + 32);

  if (v5(v1))
  {
    sub_214A77084();
    v3 = sub_214CCF304();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_214C60FF8()
{
  result = sub_214CCF614("com.apple.icloud.mail.cleanup", 29, 1);
  qword_27CA3EF90 = result;
  qword_27CA3EF98 = v1;
  return result;
}

uint64_t *sub_214C6103C()
{
  if (qword_27CA340A8 != -1)
  {
    swift_once();
  }

  return &qword_27CA3EF90;
}

Swift::Void __swiftcall MUIMessageListViewController.presentMailCleanupView(mailCleanupTipId:)(Swift::String mailCleanupTipId)
{
  v12 = 0;
  v14 = mailCleanupTipId;
  v13 = v1;
  v4 = [v1 iCloudMailCleanupService];
  if (v4)
  {
    v12 = v4;
    [v4 setProviderDelegate_];

    v3 = sub_214CCF544();

    v10 = nullsub_1;
    v11 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v6 = 1107296256;
    v7 = 0;
    v8 = sub_214A746A8;
    v9 = &block_descriptor_19;
    v2 = _Block_copy(&aBlock);
    [v4 acceptTip:v3 completion:?];
    _Block_release(v2);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }
}

Swift::Void __swiftcall MUIMessageListViewController.dismissMailCleanupTip(mailCleanupTipId:)(Swift::String mailCleanupTipId)
{
  v17 = 0;
  v19 = mailCleanupTipId;
  v18 = v1;
  v9 = [v1 iCloudMailCleanupService];
  if (v9)
  {
    v17 = v9;

    v6 = sub_214CCF544();

    [v9 dismissTip_];
    *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    v3 = sub_214CCF614("CONSENT_TIP", 11, 1, v2);
    v7 = MEMORY[0x21605D8D0](mailCleanupTipId._countAndFlagsBits, mailCleanupTipId._object, v3);

    if (v7)
    {
      sub_214C6103C();

      v5 = sub_214CCF544();

      v15 = sub_214C614BC;
      v16 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v11 = 1107296256;
      v12 = 0;
      v13 = sub_214C60F20;
      v14 = &block_descriptor_3_2;
      v4 = _Block_copy(&aBlock);
      AnalyticsSendEventLazy();
      _Block_release(v4);
      MEMORY[0x277D82BD8](v5);
    }

    MEMORY[0x277D82BD8](v9);
  }
}

uint64_t sub_214C614BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AE8, &qword_214CF2A60);
  sub_214CD03C4();
  v8 = v0;
  *v0 = sub_214CCF614("entry_point", 11, 1);
  v8[1] = v1;
  sub_214AF82CC();
  v2 = sub_214CCF614("1");
  v8[2] = sub_214BC9508(v2, v3);
  v8[3] = sub_214CCF614("event_type", 10, 1);
  v8[4] = v4;
  v5 = sub_214CCF614("3", 1, 1);
  v8[5] = sub_214BC9508(v5, v6);
  sub_214A63280();
  sub_214A77084();
  return sub_214CCF344();
}

Swift::Void __swiftcall MUIMessageListViewController.onAppear(mailCleanupTipId:)(Swift::String mailCleanupTipId)
{
  v3 = [v1 iCloudMailCleanupService];
  if (v3)
  {

    v2 = sub_214CCF544();

    [v3 onAppearTip_];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }
}

double sub_214C6183C(MUIMessageListViewController *self, SEL a2)
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUIMessageListViewController.bucketsViewControllerHeight.getter();
  MEMORY[0x277D82BD8](self);
  return v5;
}

double MUIMessageListViewController.bucketsViewControllerHeight.getter()
{
  v7 = [v0 bucketsViewController];
  if (v7)
  {
    type metadata accessor for BucketsViewController(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      MEMORY[0x277D82BD8](v7);
      v5 = 0;
    }

    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0.0;
  }

  v2 = BucketsViewController.preferredHeight.getter();
  MEMORY[0x277D82BD8](v4);
  return v2;
}

Swift::Void __swiftcall MUIMessageListViewController.refreshBucketsSession()()
{
  v4 = [v0 bucketsViewController];
  if (v4)
  {
    type metadata accessor for BucketsViewController(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      MEMORY[0x277D82BD8](v4);
      v2 = 0;
    }

    v1 = v2;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    BucketsViewController.refreshSession()();
    MEMORY[0x277D82BD8](v1);
  }
}

double sub_214C61B34(uint64_t a1, char a2)
{
  v9 = [v2 bucketsViewController];
  if (v9)
  {
    type metadata accessor for BucketsViewController(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      *&result = MEMORY[0x277D82BD8](v9).n128_u64[0];
      v5 = 0;
    }

    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    BucketsViewController.select(bucket:notifyObserver:)(a1, a2 & 1);
    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  return result;
}

Swift::Void __swiftcall MUIMessageListViewController.updateBucketBar(isHidden:)(Swift::Bool isHidden)
{
  if (isHidden)
  {
    [v2 updateSelectedBucket:0 unseenPredicate:0];
  }

  else
  {
    [v2 _selectBucket_];
    v1 = [v2 unseenPredicate];
    [v2 updateSelectedBucket:1 unseenPredicate:?];
    MEMORY[0x277D82BD8](v1);
  }
}

Swift::Void __swiftcall MUIMessageListViewController.updateUnseenCountQueries()()
{
  v4 = [v0 bucketsViewController];
  if (v4)
  {
    type metadata accessor for BucketsViewController(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      MEMORY[0x277D82BD8](v4);
      v2 = 0;
    }

    v1 = v2;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    BucketsViewController.updateUnseenCountQueries()();
    MEMORY[0x277D82BD8](v1);
  }
}

void MUIMessageListViewController.bucketsViewController(_:didAccept:into:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = 0;
  v24 = a1;
  v25 = a2;
  v23 = a3;
  v22 = a4;
  v20 = a5;
  v21 = a6;

  v17 = a5;
  v18 = a6;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_214A7A88C;
  v16 = &block_descriptor_20;
  v11 = _Block_copy(&aBlock);

  [v8 changeCategoryOfDragItem:a3 toBucket:a4 completion:v11];
  _Block_release(v11);
}

double MUIMessageListViewController.bucketBarConfigurationController(_:isHidden:forMailboxes:)(uint64_t a1, int a2, uint64_t a3)
{
  v13[1] = a1;
  v18 = a2;
  v17 = a3;
  v19 = sub_214C629EC;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v21 = 0;
  v25 = sub_214CCF224();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v13[0] = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v24 = v13 - v13[0];
  v29 = sub_214CCF254();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v14 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v28 = v13 - v14;
  v42 = v4;
  v41 = v5 & 1;
  v40 = v6;
  v39 = v3;
  sub_214B51A38();
  v31 = sub_214CCFC44();
  v16 = 7;
  v20 = swift_allocObject();
  MEMORY[0x277D82BE0](v15);
  swift_unknownObjectUnownedInit();
  MEMORY[0x277D82BD8](v15);

  v7 = swift_allocObject();
  v8 = v18;
  v9 = v19;
  v10 = v7;
  v11 = v20;
  *(v10 + 16) = v17;
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  v37 = v9;
  v38 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = 0;
  v35 = sub_214A746A8;
  v36 = &block_descriptor_6_3;
  v30 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v21, v28, v24, v30);
  (*(v22 + 8))(v24, v25);
  (*(v26 + 8))(v28, v29);
  _Block_release(v30);
  *&result = MEMORY[0x277D82BD8](v31).n128_u64[0];
  return result;
}

void *sub_214C62670(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37BC0, &qword_214CF4F28);
  sub_214C63444();
  result = sub_214CCFA74();
  if (v21)
  {
    swift_getObjectType();
    v14 = [v21 bucketBarConfigurationIdentifier];
    v15 = sub_214CCF564();
    v16 = v4;
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v14);
    result = v15;
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v18)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v12 = [Strong mailboxes];
    sub_214A63684();
    sub_214CCF7E4();
    MEMORY[0x277D82BD8](Strong);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36150, &qword_214CF4620);
    sub_214A7C404();
    sub_214CCFA74();

    if (v20)
    {
      v9 = [v20 bucketBarConfigurationIdentifier];
      sub_214CCF564();
      v10 = v5;
      (MEMORY[0x277D82BD8])();
      MEMORY[0x277D82BD8](v9);
      v6 = MEMORY[0x277D82BD8](v12);
      v11 = v10;
    }

    else
    {
      v6 = MEMORY[0x277D82BD8](v12);
      v11 = 0;
    }

    if (v11)
    {
      v7 = MEMORY[0x21605D8D0](v17, v18, v6);
      if (v7)
      {
        v8 = swift_unknownObjectUnownedLoadStrong();
        [v8 _updateBucketBarIsHidden_];
        MEMORY[0x277D82BD8](v8);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t block_copy_helper_4_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

double MUIMessageListViewController.bucketBarConfigurationControllerRequiresReload(_:)(uint64_t a1)
{
  v12 = a1;
  v13 = sub_214C62F88;
  v34 = 0;
  v33 = 0;
  v15 = 0;
  v19 = sub_214CCF224();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v8 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = &v8 - v8;
  v23 = sub_214CCF254();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v9 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v22 = &v8 - v9;
  v34 = v2;
  v33 = v1;
  sub_214B51A38();
  v25 = sub_214CCFC44();
  v11 = 7;
  v14 = swift_allocObject();
  MEMORY[0x277D82BE0](v10);
  swift_unknownObjectUnownedInit();
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BE0](v12);

  v3 = swift_allocObject();
  v4 = v13;
  v5 = v3;
  v6 = v14;
  *(v5 + 16) = v12;
  *(v5 + 24) = v6;
  v31 = v4;
  v32 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = 0;
  v29 = sub_214A746A8;
  v30 = &block_descriptor_13;
  v24 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v15, v22, v18, v24);
  (*(v16 + 8))(v18, v19);
  (*(v20 + 8))(v22, v23);
  _Block_release(v24);
  *&result = MEMORY[0x277D82BD8](v25).n128_u64[0];
  return result;
}

double sub_214C62E38(void *a1, double a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong mailboxes];
  sub_214A63684();
  sub_214CCF7E4();
  MEMORY[0x277D82BD8](Strong);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37B50, &qword_214CF4EE8);
  sub_214CD01A4();
  v6 = sub_214CCF7D4();

  v7 = [a1 isBucketBarHiddenForMailboxes_];
  MEMORY[0x277D82BD8](v6);
  v8 = swift_unknownObjectUnownedLoadStrong();
  [v8 _updateBucketBarIsHidden_];
  *&result = MEMORY[0x277D82BD8](v8).n128_u64[0];
  return result;
}

id MUIMessageListViewController.bucketsViewController(_:didSelectBucket:unseenPredicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [v4 bucketBarConfigurationController];
  sub_214A6E0D8();
  v8 = v5;
  v7 = [v4 mailboxes];
  sub_214A63684();
  sub_214CCF7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37B50, &qword_214CF4EE8);
  sub_214CD01A4();
  v9 = sub_214CCF7D4();

  [v10 setSelectedBucket:v8 mailboxes:{v9, MEMORY[0x277D82BD8](v7).n128_f64[0]}];
  MEMORY[0x277D82BD8](v9);
  return [v4 updateSelectedBucket:a3 unseenPredicate:{a4, MEMORY[0x277D82BD8](v10).n128_f64[0]}];
}

id MUIMessageListViewController.bucketsViewController(_:didDeselectBucket:)()
{
  v6 = [v0 bucketBarConfigurationController];
  sub_214A6E0D8();
  v4 = v1;
  v3 = [v0 mailboxes];
  sub_214A63684();
  sub_214CCF7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37B50, &qword_214CF4EE8);
  sub_214CD01A4();
  v5 = sub_214CCF7D4();

  [v6 setSelectedBucket:v4 mailboxes:{v5, MEMORY[0x277D82BD8](v3).n128_f64[0]}];
  MEMORY[0x277D82BD8](v5);
  return [v0 updateSelectedBucket:5 unseenPredicate:{0, MEMORY[0x277D82BD8](v6).n128_f64[0]}];
}

id MUIMessageListViewController.bucketsViewController(_:updatedPredicateForFocusedAccounts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 updatedPredicateForFocusedAccounts_];

  return v4;
}

unint64_t sub_214C63444()
{
  v2 = qword_27CA37BC8;
  if (!qword_27CA37BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37BC0, &qword_214CF4F28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37BC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t MUIOnboardingTip.primaryActionTitle.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    v4 = MUILocalizedOnboardingStringPrimaryActionTitle();
    v5 = sub_214CCF564();
    MEMORY[0x277D82BD8](v4);
    return v5;
  }

  else if (a1 == 2)
  {
    v2 = MUILocalizedOnboardingStringBadgeSettingsActionTitle();
    v3 = sub_214CCF564();
    MEMORY[0x277D82BD8](v2);
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t MUIOnboardingTip.primaryAction.getter(uint64_t a1)
{
  if (a1 != 1 && a1 != 2)
  {
    return 0;
  }

  sub_214BD1DB0();
  sub_214B1C228();
  sub_214BD2BD8();
  sub_214A73344();
  return sub_214CCFD84();
}

uint64_t MUIOnboardingTip.secondaryActionTitle.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    v4 = MUILocalizedOnboardingStringPrimarySecondaryActionTitle();
    v5 = sub_214CCF564();
    MEMORY[0x277D82BD8](v4);
    return v5;
  }

  else if (a1 == 2)
  {
    v2 = MUILocalizedOnboardingStringBadgeSettingsSecondaryActionTitle();
    v3 = sub_214CCF564();
    MEMORY[0x277D82BD8](v2);
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t MUIOnboardingTip.secondaryAction.getter(uint64_t a1)
{
  if (a1 != 1 && a1 != 2)
  {
    return 0;
  }

  sub_214BD1DB0();
  sub_214B1C228();
  sub_214BD2BD8();
  sub_214A73344();
  return sub_214CCFD84();
}

uint64_t MUIOnboardingTip.title.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      v12 = MUILocalizedOnboardingStringPrimaryTitle();
      v13 = sub_214CCF564();
      MEMORY[0x277D82BD8](v12);
      return v13;
    case 2:
      v10 = MUILocalizedOnboardingStringBadgeSettingsTitle();
      v11 = sub_214CCF564();
      MEMORY[0x277D82BD8](v10);
      return v11;
    case 3:
      v8 = MUILocalizedOnboardingStringTransactionsTitle();
      v9 = sub_214CCF564();
      MEMORY[0x277D82BD8](v8);
      return v9;
    case 4:
      v6 = MUILocalizedOnboardingStringUpdatesTitle();
      v7 = sub_214CCF564();
      MEMORY[0x277D82BD8](v6);
      return v7;
    case 5:
      v4 = MUILocalizedOnboardingStringPromotionsTitle();
      v5 = sub_214CCF564();
      MEMORY[0x277D82BD8](v4);
      return v5;
    case 6:
      v2 = MUILocalizedOnboardingStringAllMailTitle();
      v3 = sub_214CCF564();
      MEMORY[0x277D82BD8](v2);
      return v3;
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v14;
}

id MUIOnboardingTip.titleColor.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      v2 = [objc_opt_self() labelColor];
      v3 = [v2 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v2);
      return v3;
    case 2:
      return MUIBucket.backgroundColor.getter(5);
    case 3:
      return MUIBucket.backgroundColor.getter(2);
    case 4:
      return MUIBucket.backgroundColor.getter(3);
    case 5:
      return MUIBucket.backgroundColor.getter(4);
    case 6:
      return MUIBucket.backgroundColor.getter(5);
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v4;
}

uint64_t MUIOnboardingTip.message.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      v12 = MUILocalizedOnboardingStringPrimaryMessage();
      v13 = sub_214CCF564();
      MEMORY[0x277D82BD8](v12);
      return v13;
    case 2:
      v10 = MUILocalizedOnboardingStringBadgeSettingsMessage();
      v11 = sub_214CCF564();
      MEMORY[0x277D82BD8](v10);
      return v11;
    case 3:
      v8 = MUILocalizedOnboardingStringTransactionsMessage();
      v9 = sub_214CCF564();
      MEMORY[0x277D82BD8](v8);
      return v9;
    case 4:
      v6 = MUILocalizedOnboardingStringUpdatesMessage();
      v7 = sub_214CCF564();
      MEMORY[0x277D82BD8](v6);
      return v7;
    case 5:
      v4 = MUILocalizedOnboardingStringPromotionsMessage();
      v5 = sub_214CCF564();
      MEMORY[0x277D82BD8](v4);
      return v5;
    case 6:
      v2 = MUILocalizedOnboardingStringAllMailMessage();
      v3 = sub_214CCF564();
      MEMORY[0x277D82BD8](v2);
      return v3;
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v14;
}

id MUIOnboardingTip.subtitleColor.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      v2 = [objc_opt_self() labelColor];
      v3 = [v2 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v2);
      return v3;
    case 2:
      return [objc_opt_self() secondaryLabelColor];
    case 3:
      return MUIBucket.backgroundColor.getter(2);
    case 4:
      return MUIBucket.backgroundColor.getter(3);
    case 5:
      return MUIBucket.backgroundColor.getter(4);
    case 6:
      return [objc_opt_self() secondaryLabelColor];
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v4;
}

BOOL MUIOnboardingTip.preferredLabelVibrancy.getter(uint64_t a1)
{
  type metadata accessor for MUIOnboardingTip(0);
  sub_214B04028();
  return (sub_214CD03F4() & 1) != 0;
}

id MUIOnboardingTip.backgroundColor.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      v13 = MUIBucket.backgroundColor.getter(1);
      if (v13)
      {
        v12 = v13;
      }

      else
      {
        sub_214CD01F4("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "MailUI/MUIOnboardingTip.swift", 29, 2, 221, 0);
        __break(1u);
      }

      v11 = [v12 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v12);
      return v11;
    case 2:
      return [objc_opt_self() secondarySystemBackgroundColor];
    case 3:
      v10 = MUIBucket.backgroundColor.getter(2);
      if (!v10)
      {
        return 0;
      }

      v8 = [v10 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v10);
      return v8;
    case 4:
      v7 = MUIBucket.backgroundColor.getter(3);
      if (!v7)
      {
        return 0;
      }

      v5 = [v7 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v7);
      return v5;
    case 5:
      v4 = MUIBucket.backgroundColor.getter(4);
      if (!v4)
      {
        return 0;
      }

      v2 = [v4 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v4);
      return v2;
    case 6:
      return [objc_opt_self() secondarySystemBackgroundColor];
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      return v14;
  }
}

uint64_t MUIOnboardingTip.information.getter(uint64_t a1)
{
  type metadata accessor for MUIOnboardingTip(0);
  sub_214B04028();
  if ((sub_214CD03F4() & 1) == 0)
  {
    return 0;
  }

  v2 = MUILocalizedOnboardingStringPrimaryInformation();
  v3 = sub_214CCF564();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

Swift::String __swiftcall MUIOnboardingTip.badgeCountInformationLabel(withPrimaryUnreadCount:otherUnreadCount:)(Swift::Int withPrimaryUnreadCount, Swift::Int otherUnreadCount)
{
  v25 = withPrimaryUnreadCount;
  v26 = otherUnreadCount;
  v18 = v2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v22 = 0;
  v17 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v24 = &v17 - v17;
  v19 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v21 = &v17 - v19;
  v39 = v3;
  v38 = v4;
  v37 = v5;
  v20 = 1;
  sub_214CCF614("You have %1$lld in Primary and %2$lld in other categories.", v17, v18);
  sub_214CCF4C4();
  v23 = [objc_opt_self() mui_MailUIBundle];
  sub_214B1CFBC();
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = v20 & 1;
  v28 = sub_214CCF5A4();
  v30 = v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270, &unk_214CF25E0);
  sub_214CD03C4();
  v7 = v25;
  v8 = v26;
  v9 = MEMORY[0x277D83B88];
  v10[3] = MEMORY[0x277D83B88];
  v11 = MEMORY[0x277D83C10];
  v10[4] = MEMORY[0x277D83C10];
  *v10 = v7;
  v10[8] = v9;
  v10[9] = v11;
  v10[5] = v8;
  sub_214A63280();
  v29 = v12;
  v31 = sub_214CCF554();
  v32 = v13;

  v14 = v31;
  v15 = v32;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t MUIOnboardingTip.showActionButtons.getter(uint64_t a1)
{
  type metadata accessor for MUIOnboardingTip(0);
  sub_214B04028();
  if (sub_214CD03F4())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_214CD03F4();
  }

  return v2 & 1;
}

uint64_t MUIOnboardingTip.accessibilityIdentifier.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return sub_214CCF614("", 0, 1);
    case 1:
      v12 = *MEMORY[0x277D25910];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25910]);
      v13 = sub_214CCF564();
      MEMORY[0x277D82BD8](v12);
      return v13;
    case 2:
      v10 = *MEMORY[0x277D25908];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25908]);
      v11 = sub_214CCF564();
      MEMORY[0x277D82BD8](v10);
      return v11;
    case 3:
      v8 = *MEMORY[0x277D25920];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25920]);
      v9 = sub_214CCF564();
      MEMORY[0x277D82BD8](v8);
      return v9;
    case 4:
      v6 = *MEMORY[0x277D25928];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25928]);
      v7 = sub_214CCF564();
      MEMORY[0x277D82BD8](v6);
      return v7;
    case 5:
      v4 = *MEMORY[0x277D25918];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25918]);
      v5 = sub_214CCF564();
      MEMORY[0x277D82BD8](v4);
      return v5;
    case 6:
      v2 = *MEMORY[0x277D25870];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25870]);
      v3 = sub_214CCF564();
      MEMORY[0x277D82BD8](v2);
      return v3;
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v14;
}

void sub_214C64E68()
{
  v6 = MUIOnboardingTipKeyForBucket(1);
  if (v6)
  {
    sub_214CCF564();
    v4 = v0;
    MEMORY[0x277D82BD8](v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v1 = [objc_opt_self() em_userDefaults];
    v3 = v1;
    if (v1)
    {

      v2 = sub_214CCF544();

      [v3 setInteger:1 forKey:v2];
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](v3);
    }
  }
}

double sub_214C65018()
{
  v3 = [objc_opt_self() em_userDefaults];
  if (v3)
  {
    v1 = *MEMORY[0x277D06C68];
    MEMORY[0x277D82BE0](*MEMORY[0x277D06C68]);
    sub_214AFD2F4(v1);
    v2 = sub_214CCF544();
    MEMORY[0x277D82BD8](v1);

    [v3 setInteger:1 forKey:v2];
    MEMORY[0x277D82BD8](v2);
    *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  }

  return result;
}

void sub_214C65114()
{
  v8 = MUIOnboardingTipKeyForBucket(1);
  if (v8)
  {
    sub_214CCF564();
    v6 = v0;
    MEMORY[0x277D82BD8](v8);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v1 = [objc_opt_self() em_userDefaults];
    v5 = v1;
    if (v1)
    {

      v2 = sub_214CCF544();

      [v5 setInteger:1 forKey:v2];
      MEMORY[0x277D82BD8](v2);
      v3 = *MEMORY[0x277D06C50];
      MEMORY[0x277D82BE0](*MEMORY[0x277D06C50]);
      sub_214AFD2F4(v3);
      v4 = sub_214CCF544();
      MEMORY[0x277D82BD8](v3);

      [v5 setBool:0 forKey:v4];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
    }
  }
}

unint64_t sub_214C65354()
{
  v2 = qword_27CA37BD0;
  if (!qword_27CA37BD0)
  {
    type metadata accessor for MUIOnboardingTip(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37BD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t static MUIOpenMailboxQuicklySearchController.filterMailboxes(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v37 = a2;
  v36 = a1;
  v45 = 0;
  v59 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v52 = 0;
  v41 = sub_214CCCE64();
  v38 = *(v41 - 8);
  v40 = v38;
  MEMORY[0x28223BE20](v36);
  v42 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v5;
  v39 = *(v3 + 80);
  v58 = v39;
  v56 = v6;
  v57 = v7;
  v55 = v3;
  v54[1] = v6;
  v54[2] = v7;
  sub_214CCCE44();
  sub_214B075A0();
  v43 = sub_214CCFF74();
  (*(v40 + 8))(v42, v41);
  v54[0] = v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  v44 = v46;
  sub_214B22E9C();
  v8 = sub_214CCF754();
  v47 = 0;
  v48 = v8;
  v31 = v8;
  sub_214A62278(v54);
  v53 = v31;
  sub_214C65A3C();
  v9 = sub_214CD0154();
  v32 = 0;
  v33 = v9;
  v29 = v9;
  v52 = v9;
  v30 = sub_214CCF664();

  if (v30)
  {
    v28 = 1;
  }

  else
  {
    v51 = v36;
    v27 = sub_214CCF8D4();
    swift_getWitnessTable();
    v28 = sub_214CCFA94();
  }

  v26 = v28;

  if (v26)
  {
    v25 = 1;
  }

  else
  {
    v50 = v29;
    sub_214B50C54();
    v25 = sub_214CCFA94();
  }

  v24 = v25;

  if (v24)
  {
    v14 = sub_214CD03C4();
    v15 = v14;

    v17 = v15;
    v18 = v32;
    return v17;
  }

  v10 = v32;

  v49 = v36;

  v19 = &v14;
  MEMORY[0x28223BE20](&v14);
  v20 = &v14 - 4;
  *(&v14 - 2) = v34;
  *(&v14 - 1) = v11;
  v21 = sub_214CCF8D4();
  swift_getWitnessTable();
  v12 = sub_214CD0154();
  v22 = v10;
  v23 = v12;
  if (!v10)
  {
    v16 = v23;

    v17 = v16;
    v18 = v22;
    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_214C65A3C()
{
  v2 = qword_280C7CEC8;
  if (!qword_280C7CEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EC0, &unk_214CEF8F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C65AC4(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = [*a1 displayName];
  v3 = sub_214CCF564();
  v8 = sub_214C65BA0(v3, v4, a3);

  MEMORY[0x277D82BD8](v7);
  return v8 & 1;
}

uint64_t sub_214C65BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v51 = a2;
  v60 = a3;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v87 = 0;
  v86[0] = 0;
  v61 = v85;
  v85[0] = 0;
  v85[1] = 0;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35978, &qword_214CEFD90);
  v49 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v50 = &v15 - v49;
  v57 = sub_214CCCE64();
  v55 = *(v57 - 8);
  v56 = v57 - 8;
  v53 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v58 = &v15 - v53;
  v89 = v5;
  v90 = v6;
  v88 = v7;
  v87 = v3;
  v86[1] = *(v3 + 80);
  v85[2] = v5;
  v85[3] = v6;
  sub_214CCCE44();
  v54 = sub_214B075A0();
  v59 = sub_214CCFF74();
  (*(v55 + 8))(v58, v57);
  v86[0] = v59;

  v84 = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0, &unk_214CEF8F0);
  sub_214B50C54();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37BD8, &qword_214CF4FA0);
    sub_214CD01B4();
    v47 = v82;
    v48 = v83;
    if (!v83)
    {
      break;
    }

    v45 = v47;
    v46 = v48;
    v41 = v48;
    v42 = v47;
    v80 = v47;
    v81 = v48;
    v79 = 0;
    v43 = v86[0];

    v44 = &v76;
    v76 = v43;
    v8 = sub_214B22E9C();
    MEMORY[0x21605D9B0](&v77, v62, v8);
    sub_214A62278(v44);
    v75 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37BE0, &qword_214CF4FA8);
    sub_214CD0244();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA37BE8, &qword_214CF4FB0);
      sub_214CD0254();
      v38 = v72;
      v39 = v73;
      v40 = v74;
      if (!v74)
      {
        break;
      }

      v35 = v38;
      v36 = v39;
      v37 = v40;
      v24 = v40;
      v25 = v38;
      v71 = v38;
      v69 = v39;
      v70 = v40;
      v27 = v68;
      v68[0] = v39;
      v68[1] = v40;
      v28 = v67;
      v67[0] = v42;
      v67[1] = v41;
      v30 = 0;
      type metadata accessor for CompareOptions(0);
      sub_214CD03C4();
      *v9 = 1;
      v9[1] = 8;
      sub_214A63280();
      v26 = v10;
      sub_214B01510();
      sub_214CD0084();
      v29 = v66;
      v11 = *(*(sub_214CCD2D4() - 8) + 56);
      v33 = 1;
      v11(v50, 1);
      v34 = sub_214CCFFF4();
      v31 = v12;
      v32 = v13;
      sub_214B6107C(v50);
      v63 = v34;
      v64 = v31;
      v65 = v32 & 1 & v33;
      v23 = v65 == 0;
      v21 = v25;
      v22 = v24;
      if (!v65)
      {
        v19 = v22;
        v79 = 1;
        sub_214CCF8A4();

        v20 = 1;
        goto LABEL_9;
      }
    }

    v20 = 0;
LABEL_9:
    v17 = v20;
    sub_214A62278(v78);
    v18 = v41;
    if ((v17 & 1) == 0)
    {

      sub_214A62278(v85);
      sub_214A62278(v86);
      v16 = 0;
      return v16 & 1;
    }
  }

  sub_214A62278(v85);
  sub_214A62278(v86);
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_214C6622C(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t *sub_214C663A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a2;
  v27 = a1;
  v28 = a4;
  v29 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    v24 = 0;
  }

  else
  {
    v20 = &v10;
    MEMORY[0x28223BE20](&v10);
    v21 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v19 = i;
      if (i >= v26)
      {
        break;
      }

      v5 = v19;
      *&v21[8 * v19] = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * v19);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v24 = v6;
  }

  v15 = TupleTypeMetadata;
  v17 = *(*(TupleTypeMetadata - 8) + 64);
  v16 = &v10;
  v7.n128_f64[0] = MEMORY[0x28223BE20](&v10);
  v18 = &v10 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    for (j = 0; ; j = v10)
    {
      v12 = j;
      v13 = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v11 = v26 == 1 ? 0 : *(v15 + 16 * v12 + 32);
      (*(*(v13 - 8) + 16))(&v18[v11], *(v27 + 8 * v12), v7);
      v10 = v12 + 1;
      if (v12 + 1 == v26)
      {
        break;
      }
    }
  }

  sub_214CCF204();
  return v16;
}

uint64_t sub_214C66758()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_214C667A4()
{
  v2 = *(v0 + 56);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_214C667E4(uint64_t a1)
{
  swift_unknownObjectRetain();
  *(v1 + 56) = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_214C66840(uint64_t a1, uint64_t a2)
{

  sub_214CCF8D4();
  sub_214CCEFB4();

  return v3;
}

uint64_t sub_214C668C4(uint64_t a1)
{

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFC4();

  return v2;
}

uint64_t sub_214C66970(uint64_t a1, uint64_t a2)
{
  v6[2] = 0;
  v6[4] = a1;
  v6[3] = *(a2 + 16);
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);

  v6[0] = v4;
  v6[1] = v5;

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFD4();
  sub_214C12204(v6);
}

uint64_t sub_214C66A58(uint64_t a1)
{

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFE4();

  return v2;
}

uint64_t sub_214C66B1C()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t sub_214C66B70(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_214C66C00(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_214CCEFB4();

  return v4;
}

uint64_t sub_214C66C98(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C70, &qword_214CF5000);
  sub_214CCEFC4();

  return v2;
}

uint64_t sub_214C66D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = 0;
  v8[5] = a1;
  v8[6] = a2;
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  v8[3] = *(a3 + 16);

  v8[0] = v5;
  v8[1] = v6;
  v8[2] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C70, &qword_214CF5000);
  sub_214CCEFD4();
  sub_214C66E54(v8);
}

uint64_t sub_214C66E8C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C70, &qword_214CF5000);
  sub_214CCEFE4();

  return v2;
}

uint64_t sub_214C66F60()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_214C66FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[10] = a1;
  v3[11] = a2;
  v3[12] = a3;
}

uint64_t sub_214C6706C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  sub_214CCFF34();
  sub_214CCEFB4();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_214C670EC(uint64_t a1)
{
  swift_unknownObjectRetain();

  sub_214CCFF34();
  sub_214CCEFF4();
  sub_214CCEFC4();
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_214C67198(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_214CCFF34();
  sub_214CCEFF4();
  sub_214CCEFD4();
  sub_214C125A8();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_214C67280(uint64_t a1)
{
  swift_unknownObjectRetain();

  sub_214CCFF34();
  sub_214CCEFF4();
  sub_214CCEFE4();
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_214C67344()
{
  v2 = *(v0 + 104);
  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_214C67398(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_214C67424(uint64_t a1)
{

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFC4();

  return v2;
}

uint64_t sub_214C674D0(uint64_t a1, uint64_t a2)
{
  v6[2] = 0;
  v6[4] = a1;
  v6[3] = *(a2 + 16);
  v4 = *(v2 + 120);
  v5 = *(v2 + 128);

  v6[0] = v4;
  v6[1] = v5;

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFD4();
  sub_214C12204(v6);
}

uint64_t sub_214C675B8(uint64_t a1)
{

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFE4();

  return v2;
}

uint64_t sub_214C6767C()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_214C676D0(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t sub_214C67760(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C78, &qword_214CF5008);
  sub_214CCEFB4();
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_214C677F4(uint64_t a1)
{
  v3 = *(v1 + 136);
  MEMORY[0x277D82BE0](v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C80, &qword_214CF5010);
  sub_214CCEFC4();
  MEMORY[0x277D82BD8](v3);

  return v4;
}

double sub_214C678A4(uint64_t a1, uint64_t a2)
{
  v8[3] = 0;
  v8[4] = a1;
  v3 = *(v2 + 136);
  v5 = v3;
  v6 = *(v2 + 144);
  v8[2] = *(a2 + 16);
  MEMORY[0x277D82BE0](v3);

  MEMORY[0x277D82BE0](v5);

  v8[0] = v5;
  v8[1] = v6;
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C80, &qword_214CF5010);
  sub_214CCEFD4();
  sub_214C679A8(v8);
  MEMORY[0x277D82BD8](v5);

  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C679E8(uint64_t a1)
{
  v3 = *(v1 + 136);
  MEMORY[0x277D82BE0](v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C80, &qword_214CF5010);
  sub_214CCEFE4();
  MEMORY[0x277D82BD8](v3);

  return v4;
}

uint64_t sub_214C67AB0()
{
  v2 = *(v0 + 136);
  MEMORY[0x277D82BE0](v2);

  return v2;
}

uint64_t sub_214C67B0C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);

  v3 = *(v2 + 136);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](a1);
}

uint64_t sub_214C67BB0(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C88, &qword_214CF5018);
  sub_214CCE054();

  return v2 & 1;
}

uint64_t sub_214C67C54(char a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C88, &qword_214CF5018);
  sub_214CCE064();
  sub_214AA8B50();
}

uint64_t sub_214C67D20(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C88, &qword_214CF5018);
  sub_214CCE074();

  return v2;
}

uint64_t sub_214C67DDC()
{
  v2 = *(v0 + 152);

  return v2 & 1;
}

uint64_t sub_214C67E3C(char a1, uint64_t a2, char a3)
{

  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
}

void *MUIOpenMailboxQuicklyView.init(delegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, 0xA9uLL);
  __b[22] = a2;
  __b[0] = 0x4077700000000000;
  __b[1] = 0x4085E00000000000;
  __b[2] = 10.0;
  __b[3] = 20.0;
  __b[4] = 15.0;
  sub_214CCF614("Open Mailbox Quickly…", 23, 0);
  v19 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614("Placeholder text for Open Mailbox Quickly search field", 54, 1);
  v18 = v3;
  sub_214B1C228();
  v20 = sub_214CCCF54();
  v21 = v4;

  MEMORY[0x277D82BD8](v19);

  __b[5] = v20;
  __b[6] = v21;
  v5 = sub_214CCF2D4();
  __b[8] = sub_214C66840(v5, a2);
  __b[9] = v6;
  v7 = sub_214CCF614("", 0, 1, v18);
  __b[10] = sub_214C66C00(v7, v8, a2);
  __b[11] = v9;
  __b[12] = v10;
  __b[13] = sub_214C6706C(0, a2);
  __b[14] = v11;
  v12 = sub_214CCF2D4();
  __b[15] = sub_214C66840(v12, a2);
  __b[16] = v13;
  __b[17] = sub_214C67760(0, a2);
  __b[18] = v14;
  LOBYTE(__b[19]) = sub_214CCE084() & 1;
  __b[20] = v15;
  LOBYTE(__b[21]) = v16 & 1;
  swift_unknownObjectRetain();
  __b[7] = a1;
  sub_214C68154(__b, a3);
  swift_unknownObjectRelease();
  return sub_214C68334(__b);
}

uint64_t sub_214C68154(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v3 = *(a1 + 48);

  *(a2 + 48) = v3;
  v4 = *(a1 + 56);
  swift_unknownObjectRetain();
  *(a2 + 56) = v4;
  v5 = *(a1 + 64);

  *(a2 + 64) = v5;
  v6 = *(a1 + 72);

  *(a2 + 72) = v6;
  *(a2 + 80) = *(a1 + 80);
  v7 = *(a1 + 88);

  *(a2 + 88) = v7;
  v8 = *(a1 + 96);

  *(a2 + 96) = v8;
  v9 = *(a1 + 104);
  swift_unknownObjectRetain();
  *(a2 + 104) = v9;
  v10 = *(a1 + 112);

  *(a2 + 112) = v10;
  v11 = *(a1 + 120);

  *(a2 + 120) = v11;
  v12 = *(a1 + 128);

  *(a2 + 128) = v12;
  v13 = *(a1 + 136);
  MEMORY[0x277D82BE0](v13);
  *(a2 + 136) = v13;
  v14 = *(a1 + 144);

  *(a2 + 144) = v14;
  *(a2 + 152) = *(a1 + 152);
  v16 = *(a1 + 160);

  result = a2;
  *(a2 + 160) = v16;
  *(a2 + 168) = *(a1 + 168);
  return result;
}

void *sub_214C68334(void *a1)
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](a1[17]);

  return a1;
}

uint64_t MUIOpenMailboxQuicklyView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v24 = a1;
  v67 = 0;
  v25 = &unk_214CF5498;
  v28 = MEMORY[0x277CE1148];
  v141 = MEMORY[0x277CDFAD8];
  v133 = MEMORY[0x277CE0CA8];
  v33 = MEMORY[0x277D83980];
  v68 = MEMORY[0x277CE14C0];
  v39 = MEMORY[0x277CE1290];
  v76 = MEMORY[0x277CE1198];
  v42 = MEMORY[0x277D84F50];
  v47 = MEMORY[0x277CE0E40];
  v48 = MEMORY[0x277CDDB40];
  v65 = MEMORY[0x277CDE610];
  v79 = MEMORY[0x277CE0FB0];
  v93 = sub_214C6A79C;
  v110 = sub_214C7010C;
  v135 = sub_214C70450;
  v158 = 0;
  v95 = 0;
  v100 = sub_214CCF184();
  v97 = *(v100 - 8);
  v98 = v100 - 8;
  v22 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100);
  v99 = &v21 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C90, &qword_214CF5020);
  v23 = (*(*(v101 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101);
  v104 = &v21 - v23;
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37C98, &unk_214CF5028);
  v70 = 255;
  v52 = sub_214CCF0C4();
  v126 = *(v24 + 16);
  v219 = v126;
  v36 = sub_214CCF8D4();
  v127 = *(v24 + 24);
  v35 = *(v127 + 16);
  v34 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for MailboxView(v70, v126, v127, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v215 = v26;
  v216 = MEMORY[0x277D837D0];
  v217 = WitnessTable;
  v218 = MEMORY[0x277D837E0];
  v27 = sub_214CCF034();
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0, &qword_214CF3540);
  v30 = sub_214CCE2F4();
  v29 = swift_getWitnessTable();
  v81 = sub_214C200FC();
  v213 = v29;
  v214 = v81;
  v3 = swift_getWitnessTable();
  v211 = v30;
  v212 = v3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v31 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0, &qword_214CF5038);
  v32 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8, &qword_214CF5040);
  swift_getTupleTypeMetadata2();
  v38 = sub_214CCF1F4();
  v37 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v206 = v36;
  v207 = AssociatedTypeWitness;
  v208 = v38;
  v209 = v37;
  v210 = AssociatedConformanceWitness;
  v40 = sub_214CCF0F4();
  v205 = swift_getWitnessTable();
  swift_getWitnessTable();
  v41 = sub_214CCF074();
  v43 = sub_214CCE2F4();
  v50 = sub_214CCE2F4();
  v44 = sub_214CCFF34();
  v203 = swift_getWitnessTable();
  v78 = MEMORY[0x277CDF918];
  v204 = MEMORY[0x277CDF918];
  v45 = swift_getWitnessTable();
  v202 = *(v127 + 8);
  v46 = swift_getWitnessTable();
  v198 = v43;
  v199 = v44;
  v200 = v45;
  v201 = v46;
  v88 = swift_getOpaqueTypeMetadata2();
  v194 = v43;
  v195 = v44;
  v196 = v45;
  v197 = v46;
  v134 = 1;
  swift_getOpaqueTypeConformance2();
  v49 = sub_214CCE394();
  swift_getWitnessTable();
  sub_214CCE0A4();
  swift_getTupleTypeMetadata2();
  v51 = sub_214CCF1F4();
  swift_getWitnessTable();
  sub_214CCE1B4();
  sub_214CCE2F4();
  swift_getTupleTypeMetadata2();
  sub_214CCF1F4();
  sub_214CCFF34();
  swift_getTupleTypeMetadata2();
  v54 = sub_214CCF1F4();
  swift_getWitnessTable();
  v55 = sub_214CCF074();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CC0, &unk_214CED590);
  v57 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34C28, &unk_214CED620);
  v59 = sub_214CCE2F4();
  v60 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CD0, &qword_214CF5048);
  v62 = sub_214CCE2F4();
  v56 = swift_getWitnessTable();
  v5 = sub_214B070E8();
  v192 = v56;
  v193 = v5;
  v58 = swift_getWitnessTable();
  v6 = sub_214B07170();
  v190 = v58;
  v191 = v6;
  v188 = swift_getWitnessTable();
  v189 = MEMORY[0x277CDF760];
  v61 = swift_getWitnessTable();
  v7 = sub_214C69780();
  v186 = v61;
  v187 = v7;
  v63 = swift_getWitnessTable();
  v184 = v62;
  v185 = v63;
  v85 = swift_getOpaqueTypeMetadata2();
  v182 = v62;
  v183 = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v180 = v85;
  v181 = OpaqueTypeConformance2;
  v83 = swift_getOpaqueTypeMetadata2();
  v66 = sub_214CCE2F4();
  v178 = v85;
  v179 = OpaqueTypeConformance2;
  v176 = swift_getOpaqueTypeConformance2();
  v177 = v81;
  v8 = swift_getWitnessTable();
  v174 = v66;
  v175 = v8;
  v117 = swift_getOpaqueTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v119 = sub_214CCF1F4();
  swift_getWitnessTable();
  v121 = sub_214CCF074();
  v122 = sub_214CCE2F4();
  v71 = MEMORY[0x277CDFC70];
  v123 = sub_214CCE2F4();
  v112 = sub_214CCE2F4();
  v113 = sub_214CCEF24();
  v72 = (*(*(v113 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v96 = &v21 - v72;
  v114 = sub_214CCE2F4();
  v73 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v105 = &v21 - v73;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CF0, &qword_214CF5050);
  v115 = sub_214CCE2F4();
  v75 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v109 = &v21 - v75;
  v131 = sub_214CCE2F4();
  v77 = (*(*(v131 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v116 = &v21 - v77;
  v172 = swift_getWitnessTable();
  v173 = MEMORY[0x277CDF678];
  v170 = swift_getWitnessTable();
  v80 = MEMORY[0x277CDFC60];
  v171 = MEMORY[0x277CDFC60];
  v168 = swift_getWitnessTable();
  v169 = v78;
  v92 = swift_getWitnessTable();
  v167 = v92;
  v94 = swift_getWitnessTable();
  v165 = v94;
  v166 = v80;
  v102 = swift_getWitnessTable();
  v9 = sub_214C69808();
  v163 = v102;
  v164 = v9;
  v107 = swift_getWitnessTable();
  v161 = v107;
  v162 = v81;
  v132 = swift_getWitnessTable();
  v159 = v131;
  v160 = v132;
  v145 = swift_getOpaqueTypeMetadata2();
  v137 = *(v145 - 8);
  v138 = v145 - 8;
  v82 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v139 = &v21 - v82;
  v146 = sub_214CCE2F4();
  v89 = *(*(v146 - 8) + 64);
  v84 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v144 = &v21 - v84;
  swift_checkMetadataState();
  swift_checkMetadataState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D00, &qword_214CF5058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D08, &qword_214CF5060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D10, &qword_214CF5068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D18, &qword_214CF5070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20, &qword_214CF5078);
  swift_checkMetadataState();
  swift_checkMetadataState();
  v10 = swift_checkMetadataState();
  v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v147 = &v21 - v90;
  v158 = &v21 - v90;
  v128 = v220;
  v129 = 169;
  memcpy(v220, v11, 0xA9uLL);
  memcpy(__dst, v91, sizeof(__dst));
  sub_214C68154(v220, &v157);
  v148 = v126;
  v149 = v127;
  v150 = v128;
  sub_214CCEF14();
  sub_214C68334(v128);
  sub_214B68808();
  sub_214CCED14();
  v120 = sub_214CCE224();
  sub_214AA2AE4(v96, v117, TupleTypeMetadata2, v119, v120);
  sub_214C6FFB8();
  sub_214CCE0E4();
  (*(v97 + 8))(v99, v100);
  v103 = sub_214C6FFD0();
  sub_214B07A68(v114, v101);
  sub_214CCEAC4();
  sub_214C70058(v104);
  sub_214AA2AE4(v105, v117, TupleTypeMetadata2, v119, v120);
  sub_214CCF1D4();
  v108 = sub_214C1FFD4();
  v106 = MEMORY[0x277CE14A8];
  sub_214B28CB0();
  sub_214CCEB74();
  sub_214AA2B38(v109, v117, TupleTypeMetadata2, v119, v120, v121, v122, v123, v112, v113, v114, v115);
  sub_214C68154(v128, &v156);
  v124 = 201;
  v125 = 7;
  v12 = swift_allocObject();
  v13 = v127;
  v14 = v128;
  v15 = v129;
  v111 = v12;
  v12[2] = v126;
  v12[3] = v13;
  memcpy(v12 + 4, v14, v15);
  sub_214B61150();
  sub_214CCEB94();

  sub_214AA2B38(v116, v117, TupleTypeMetadata2, v119, v120, v121, v122, v123, v112, v113, v114, v115);
  sub_214C68154(v128, &v155);
  v16 = swift_allocObject();
  v17 = v127;
  v18 = v128;
  v19 = v129;
  v130 = v16;
  v16[2] = v126;
  v16[3] = v17;
  memcpy(v16 + 4, v18, v19);
  v136 = v130;
  v153 = v131;
  v154 = v132;
  v140 = swift_getOpaqueTypeConformance2();
  sub_214CCEDA4();
  sub_214A6B584(v135, v136);
  (*(v137 + 8))(v139, v145);
  v151 = v140;
  v152 = MEMORY[0x277CE0790];
  v143 = swift_getWitnessTable();
  sub_214B061F0(v144, v146, v147);
  sub_214AA2D38(v144, v145, v146);
  sub_214AA2DEC(v147, v144, v145, v146);
  sub_214B061F0(v144, v146, v142);
  sub_214AA2D38(v144, v145, v146);
  return sub_214AA2D38(v147, v145, v146);
}

unint64_t sub_214C69780()
{
  v2 = qword_27CA37CE8;
  if (!qword_27CA37CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CD0, &qword_214CF5048);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37CE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C69808()
{
  v2 = qword_27CA37CF8;
  if (!qword_27CA37CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CF0, &qword_214CF5050);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37CF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C69890@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a4;
  __src = a1;
  v70 = a2;
  v71 = a3;
  v55 = 0;
  v9[2] = &unk_214CF5498;
  v12 = MEMORY[0x277CE1148];
  v94 = MEMORY[0x277CDFAD8];
  v54 = MEMORY[0x277CE0CA8];
  v17 = MEMORY[0x277D83980];
  v57 = MEMORY[0x277CE14C0];
  v23 = MEMORY[0x277CE1290];
  v75 = MEMORY[0x277CE1198];
  v26 = MEMORY[0x277D84F50];
  v31 = MEMORY[0x277CE0E40];
  v32 = MEMORY[0x277CDDB40];
  v51 = MEMORY[0x277CDE610];
  v72 = sub_214C7AA08;
  v112 = 0;
  v160 = a2;
  v9[0] = v158;
  v9[1] = 169;
  memcpy(v158, a1, 0xA9uLL);
  memcpy(__dst, v158, sizeof(__dst));
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37C98, &unk_214CF5028);
  v56 = 255;
  v36 = sub_214CCF0C4();
  v20 = sub_214CCF8D4();
  v19 = *(v71 + 16);
  v18 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for MailboxView(255, v70, v71, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v154 = v10;
  v155 = MEMORY[0x277D837D0];
  v156 = WitnessTable;
  v157 = MEMORY[0x277D837E0];
  v11 = sub_214CCF034();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0, &qword_214CF3540);
  v14 = sub_214CCE2F4();
  v13 = swift_getWitnessTable();
  v52 = sub_214C200FC();
  v152 = v13;
  v153 = v52;
  v150 = v14;
  v151 = swift_getWitnessTable();
  v88 = 0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v15 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0, &qword_214CF5038);
  v16 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8, &qword_214CF5040);
  swift_getTupleTypeMetadata2();
  v22 = sub_214CCF1F4();
  v21 = swift_getWitnessTable();
  v145 = v20;
  v146 = AssociatedTypeWitness;
  v147 = v22;
  v148 = v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = sub_214CCF0F4();
  v144 = swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = sub_214CCF074();
  v27 = sub_214CCE2F4();
  v34 = sub_214CCE2F4();
  v28 = sub_214CCFF34();
  v142 = swift_getWitnessTable();
  v93 = MEMORY[0x277CDF918];
  v143 = MEMORY[0x277CDF918];
  v29 = swift_getWitnessTable();
  v141 = *(v71 + 8);
  v30 = swift_getWitnessTable();
  v137 = v27;
  v138 = v28;
  v139 = v29;
  v140 = v30;
  v67 = swift_getOpaqueTypeMetadata2();
  v133 = v27;
  v134 = v28;
  v135 = v29;
  v136 = v30;
  v50 = 1;
  swift_getOpaqueTypeConformance2();
  v33 = sub_214CCE394();
  swift_getWitnessTable();
  sub_214CCE0A4();
  swift_getTupleTypeMetadata2();
  v35 = sub_214CCF1F4();
  swift_getWitnessTable();
  sub_214CCE1B4();
  sub_214CCE2F4();
  swift_getTupleTypeMetadata2();
  sub_214CCF1F4();
  sub_214CCFF34();
  swift_getTupleTypeMetadata2();
  v38 = sub_214CCF1F4();
  swift_getWitnessTable();
  v39 = sub_214CCF074();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CC0, &unk_214CED590);
  v41 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34C28, &unk_214CED620);
  v43 = sub_214CCE2F4();
  v44 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CD0, &qword_214CF5048);
  v46 = sub_214CCE2F4();
  v40 = swift_getWitnessTable();
  v131 = v40;
  v132 = sub_214B070E8();
  v42 = swift_getWitnessTable();
  v129 = v42;
  v130 = sub_214B07170();
  v127 = swift_getWitnessTable();
  v128 = MEMORY[0x277CDF760];
  v45 = swift_getWitnessTable();
  v125 = v45;
  v126 = sub_214C69780();
  v47 = swift_getWitnessTable();
  v123 = v46;
  v124 = v47;
  v64 = swift_getOpaqueTypeMetadata2();
  v121 = v46;
  v122 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v119 = v64;
  v120 = OpaqueTypeConformance2;
  v62 = swift_getOpaqueTypeMetadata2();
  v53 = sub_214CCE2F4();
  v117 = v64;
  v118 = OpaqueTypeConformance2;
  v115 = swift_getOpaqueTypeConformance2();
  v116 = v52;
  v113 = v53;
  v114 = swift_getWitnessTable();
  v99 = swift_getOpaqueTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v101 = sub_214CCF1F4();
  v74 = swift_getWitnessTable();
  v103 = sub_214CCF074();
  v58 = (*(*(v103 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v77 = v9 - v58;
  v104 = sub_214CCE2F4();
  v59 = (*(*(v104 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88);
  v83 = v9 - v59;
  v105 = sub_214CCE2F4();
  v61 = (*(*(v105 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88);
  v91 = v9 - v61;
  v98 = sub_214CCE2F4();
  v68 = *(*(v98 - 8) + 64);
  v63 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88);
  v97 = v9 - v63;
  swift_checkMetadataState();
  swift_checkMetadataState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D00, &qword_214CF5058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D08, &qword_214CF5060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D10, &qword_214CF5068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D18, &qword_214CF5070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20, &qword_214CF5078);
  swift_checkMetadataState();
  swift_checkMetadataState();
  swift_checkMetadataState();
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](__src);
  v106 = v9 - v69;
  v112 = v9 - v69;
  sub_214C68154(v5, &v111);
  v73 = v107;
  v107[2] = v70;
  v107[3] = v71;
  v107[4] = __src;
  sub_214B6C2A4();
  v80 = 1;
  v89 = 1;
  sub_214CCF064();
  sub_214C68334(__src);
  v76 = *__src;
  v79 = swift_getWitnessTable();
  sub_214B68808();
  v82 = 0;
  sub_214CCED04();
  v102 = sub_214CCE224();
  sub_214AA2AE4(v77, v99, TupleTypeMetadata2, v101, v102);
  v81 = *(__src + 1);
  v109 = v79;
  v110 = MEMORY[0x277CDF678];
  v87 = swift_getWitnessTable();
  sub_214B68808();
  sub_214CCED14();
  sub_214AA2AE4(v83, v99, TupleTypeMetadata2, v101, v102);
  v85 = sub_214CD03C4();
  v84 = v6;
  *v6 = sub_214CCE8D4();
  v84[1] = sub_214CCE8E4();
  sub_214A63280();
  v86 = v7;
  sub_214C151AC();
  sub_214CD0084();
  v90 = v108;
  v107[8] = v87;
  v107[9] = MEMORY[0x277CDFC60];
  v92 = swift_getWitnessTable();
  sub_214CCED64();
  sub_214AA2AE4(v91, v99, TupleTypeMetadata2, v101, v102);
  v107[6] = v92;
  v107[7] = v93;
  v96 = swift_getWitnessTable();
  sub_214B061F0(v97, v98, v106);
  sub_214AA2AE4(v97, v99, TupleTypeMetadata2, v101, v102);
  sub_214AA4A60(v106, v97, v99, TupleTypeMetadata2, v101, v102, v103, v104, v105, v98);
  sub_214B061F0(v97, v98, v95);
  sub_214AA2AE4(v97, v99, TupleTypeMetadata2, v101, v102);
  return sub_214AA2AE4(v106, v99, TupleTypeMetadata2, v101, v102);
}

uint64_t sub_214C6A7B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v164 = a4;
  __src = a1;
  v127 = a2;
  v128 = a3;
  v149 = 0;
  v34 = &unk_214CF5498;
  v37 = MEMORY[0x277CE1148];
  v75 = MEMORY[0x277CDFAD8];
  v154 = MEMORY[0x277CE0CA8];
  v42 = MEMORY[0x277D83980];
  v62 = MEMORY[0x277CE14C0];
  v49 = MEMORY[0x277CE1290];
  v67 = MEMORY[0x277CE1198];
  v50 = MEMORY[0x277D84F50];
  v54 = MEMORY[0x277CE0E40];
  v56 = MEMORY[0x277CDDB40];
  v72 = MEMORY[0x277CDE610];
  v79 = sub_214C7AA24;
  v103 = sub_214C7AAB8;
  v131 = sub_214C7AAD4;
  v148 = nullsub_1;
  v187 = 0;
  v158 = &v177;
  v177 = 0;
  v178 = 0;
  v235 = a2;
  v32 = v233;
  __n = 169;
  memcpy(v233, a1, 0xA9uLL);
  memcpy(v234, v233, sizeof(v234));
  v156 = 0;
  v135 = sub_214CCE204();
  v106 = *(v135 - 8);
  v107 = v135 - 8;
  v33 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v135);
  v134 = &v31 - v33;
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37C98, &unk_214CF5028);
  v61 = 255;
  v59 = sub_214CCF0C4();
  v45 = sub_214CCF8D4();
  v44 = *(v128 + 16);
  v43 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = type metadata accessor for MailboxView(v61, v127, v128, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v229 = v35;
  v230 = MEMORY[0x277D837D0];
  v231 = WitnessTable;
  v232 = MEMORY[0x277D837E0];
  v36 = sub_214CCF034();
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0, &qword_214CF3540);
  v39 = sub_214CCE2F4();
  v38 = swift_getWitnessTable();
  v74 = sub_214C200FC();
  v227 = v38;
  v228 = v74;
  v5 = swift_getWitnessTable();
  v225 = v39;
  v226 = v5;
  swift_getOpaqueTypeMetadata2();
  v58 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v40 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0, &qword_214CF5038);
  v41 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8, &qword_214CF5040);
  swift_getTupleTypeMetadata2();
  v48 = sub_214CCF1F4();
  v47 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v220 = v45;
  v221 = AssociatedTypeWitness;
  v222 = v48;
  v223 = v47;
  v224 = AssociatedConformanceWitness;
  v117 = sub_214CCF0F4();
  v219 = swift_getWitnessTable();
  swift_getWitnessTable();
  v119 = sub_214CCF074();
  v120 = sub_214CCE2F4();
  v121 = sub_214CCE2F4();
  v51 = sub_214CCFF34();
  v217 = swift_getWitnessTable();
  v218 = MEMORY[0x277CDF918];
  v52 = swift_getWitnessTable();
  v216 = *(v128 + 8);
  v53 = swift_getWitnessTable();
  v212 = v120;
  v213 = v51;
  v214 = v52;
  v215 = v53;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v208 = v120;
  v209 = v51;
  v210 = v52;
  v211 = v53;
  v155 = 1;
  swift_getOpaqueTypeConformance2();
  v57 = sub_214CCE394();
  swift_getWitnessTable();
  v122 = sub_214CCE0A4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_214CCF1F4();
  swift_getWitnessTable();
  v8 = sub_214CCE1B4();
  v9 = sub_214CCE2F4();
  v10 = swift_getTupleTypeMetadata2();
  v11 = sub_214CCF1F4();
  v124 = sub_214CCFF34();
  v108 = swift_getTupleTypeMetadata2();
  v109 = sub_214CCF1F4();
  v81 = swift_getWitnessTable();
  v111 = sub_214CCF074();
  v63 = (*(*(v111 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v111);
  v88 = &v31 - v63;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CC0, &unk_214CED590);
  v112 = sub_214CCE2F4();
  v64 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112);
  v91 = &v31 - v64;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34C28, &unk_214CED620);
  v113 = sub_214CCE2F4();
  v65 = (*(*(v113 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v156);
  v96 = &v31 - v65;
  v114 = sub_214CCE2F4();
  v66 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v102 = &v31 - v66;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CD0, &qword_214CF5048);
  v115 = sub_214CCE2F4();
  v68 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v116 = &v31 - v68;
  v83 = swift_getWitnessTable();
  v12 = sub_214B070E8();
  v206 = v83;
  v207 = v12;
  v90 = swift_getWitnessTable();
  v13 = sub_214B07170();
  v204 = v90;
  v205 = v13;
  v93 = swift_getWitnessTable();
  v202 = v93;
  v203 = MEMORY[0x277CDF760];
  v100 = swift_getWitnessTable();
  v14 = sub_214C69780();
  v200 = v100;
  v201 = v14;
  v104 = swift_getWitnessTable();
  v198 = v115;
  v199 = v104;
  v141 = swift_getOpaqueTypeMetadata2();
  v138 = *(v141 - 8);
  v139 = v141 - 8;
  v69 = (*(v138 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v141);
  v140 = &v31 - v69;
  v196 = v115;
  v197 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v194 = v141;
  v195 = OpaqueTypeConformance2;
  v151 = swift_getOpaqueTypeMetadata2();
  v145 = *(v151 - 8);
  v146 = v151 - 8;
  v71 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v156);
  v147 = &v31 - v71;
  v152 = sub_214CCE2F4();
  v73 = (*(*(v152 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v152);
  v150 = &v31 - v73;
  v192 = v141;
  v193 = v16;
  v143 = swift_getOpaqueTypeConformance2();
  v190 = v143;
  v191 = v74;
  v153 = swift_getWitnessTable();
  v188 = v152;
  v189 = v153;
  v167 = swift_getOpaqueTypeMetadata2();
  v159 = *(v167 - 8);
  v160 = v167 - 8;
  v77 = *(v159 + 64);
  v76 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v167);
  v165 = &v31 - v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D00, &qword_214CF5058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D08, &qword_214CF5060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D10, &qword_214CF5068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D18, &qword_214CF5070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20, &qword_214CF5078);
  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](__src);
  v166 = &v31 - v78;
  v187 = &v31 - v78;
  sub_214C68154(v17, &v186);
  v80 = v170;
  v170[2] = v127;
  v170[3] = v128;
  v170[4] = __src;
  sub_214B6C2A4();
  v157 = 0;
  sub_214CCF064();
  sub_214C68334(__src);
  memcpy(&v185, __src, __n);
  v97 = type metadata accessor for MUIOpenMailboxQuicklyView(v156, v127, v128, v18);
  v19 = sub_214C6F93C();
  v85 = &v184;
  v184 = v19;
  v82 = MEMORY[0x277CE0F78];
  v84 = MEMORY[0x277CE0F60];
  sub_214B07A68(v111, MEMORY[0x277CE0F78]);
  sub_214CCEAC4();
  sub_214A75F80();
  v87 = MEMORY[0x277CDF7A0];
  v86 = MEMORY[0x277CDF798];
  v118 = sub_214CCE224();
  sub_214C7AA40();
  v20 = sub_214CCE224();
  v110 = sub_214CCE224();
  sub_214AA4B98(v88, v117, v118, v119, v120, v121, v122, TupleTypeMetadata2, v7, v20, v8, v9, v10, v11, v124, v108, v109, v110);
  v89 = *(__src + 4);
  sub_214C666A0();
  sub_214CCEB84();
  sub_214AA4D94(v91, v117, v118, v119, v120, v121, v122, TupleTypeMetadata2, v7, v20, v8, v9, v10, v11, v124, v108, v109, v110);
  v94 = *(__src + 4);
  v95 = sub_214C6F9A8(v113);
  v92 = sub_214C6FA68();
  sub_214C6FA68();
  sub_214CCED34();

  sub_214AA4FAC(v96, v117, v118, v119, v120, v121, v122, TupleTypeMetadata2, v7, v20, v8, v9, v10, v11, v124, v108, v109, v110, v111, v112, v113);
  v101 = sub_214CCF1C4();
  memcpy(&v183, __src, __n);
  v98 = sub_214C67424(v97);
  v99 = sub_214CCF854();

  v182[22] = v99;
  sub_214CCEDE4();

  sub_214AA5230(v102, v117, v118, v119, v120, v121, v122, TupleTypeMetadata2, v7, v20, v8, v9, v10, v11, v124, v108, v109, v110, v111, v112, v113);
  sub_214CCE1E4();
  sub_214C68154(__src, v182);
  v125 = 201;
  v126 = 7;
  v21 = swift_allocObject();
  v22 = v128;
  v23 = __src;
  v24 = __n;
  v105 = v21;
  v21[2] = v127;
  v21[3] = v22;
  memcpy(v21 + 4, v23, v24);
  sub_214CCEB04();

  v137 = *(v106 + 8);
  v136 = v106 + 8;
  v137(v134, v135);
  sub_214AA5580(v116, v117, v118, v119, v120, v121, v122, TupleTypeMetadata2, v7, v20, v8, v9, v10, v11, v124, v108, v109, v110, v111, v112, v113);
  sub_214CCE1F4();
  sub_214C68154(__src, &v181);
  v25 = swift_allocObject();
  v26 = v128;
  v27 = __src;
  v28 = __n;
  v133 = v25;
  v25[2] = v127;
  v25[3] = v26;
  memcpy(v25 + 4, v27, v28);
  sub_214CCEB04();

  v137(v134, v135);
  (*(v138 + 8))(v140, v141);
  sub_214CCF1D4();
  v144 = sub_214C1FFD4();
  v142 = MEMORY[0x277CE14A8];
  sub_214B28CB0();
  sub_214CCEB74();
  (*(v145 + 8))(v147, v151);
  sub_214B61150();
  sub_214CCEB94();
  sub_214AA4178(v150, v151);
  v179 = v152;
  v180 = v153;
  v162 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v165, v167, v166);
  v169 = *(v159 + 8);
  v168 = v159 + 8;
  v169(v165, v167);
  v175 = sub_214CCF054();
  v176 = v29 & 1;
  v161 = MEMORY[0x277CE1180];
  v163 = MEMORY[0x277CE1170];
  sub_214B061F0(&v175, MEMORY[0x277CE1180], v158);
  (*(v159 + 16))(v165, v166, v167);
  v174[0] = v165;
  v172 = v177;
  v173 = v178;
  v174[1] = &v172;
  v171[0] = v167;
  v171[1] = v161;
  v170[5] = v162;
  v170[6] = v163;
  sub_214C663A4(v174, 2uLL, v171, v164);
  v169(v165, v167);
  return (v169)(v166, v167);
}

uint64_t sub_214C6BD80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = &v252;
  v176 = &v221;
  v184 = &v220;
  v204 = v217;
  v186 = a3;
  v185 = a2;
  v203 = a1;
  v105 = a4;
  v177 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v263 = a2;
  v4 = *a1;
  v5 = a1[1];
  v254 = a1[2];
  v253 = v5;
  v252 = v4;
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v258 = a1[6];
  v257 = v8;
  v256 = v7;
  v255 = v6;
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  *(v261 + 9) = *(a1 + 153);
  v261[0] = v11;
  v260 = v10;
  v259 = v9;
  v261[4] = v254;
  v261[3] = v253;
  v261[2] = v252;
  v261[8] = v258;
  v261[7] = v257;
  v261[6] = v256;
  v261[5] = v255;
  *(v262 + 9) = *(v261 + 9);
  v262[0] = v11;
  v261[10] = v10;
  v261[9] = v9;
  v116 = *(a3 + 16);
  v115 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v144 = 255;
  v106 = type metadata accessor for MailboxView(255, v185, v186, v12);
  WitnessTable = swift_getWitnessTable();
  v248 = v106;
  v191 = MEMORY[0x277D837D0];
  v249 = MEMORY[0x277D837D0];
  v250 = WitnessTable;
  v251 = MEMORY[0x277D837E0];
  v107 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0, &qword_214CF3540);
  v109 = sub_214CCE2F4();
  v108 = swift_getWitnessTable();
  v14 = sub_214C200FC();
  v246 = v108;
  v247 = v14;
  v125 = MEMORY[0x277CDFAD8];
  v15 = swift_getWitnessTable();
  v244 = v109;
  v245 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v206 = sub_214CCF8D4();
  v142 = MEMORY[0x277CDF928];
  v111 = sub_214CCE2F4();
  v112 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0, &qword_214CF5038);
  v113 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8, &qword_214CF5040);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v119 = sub_214CCF1F4();
  v118 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v239 = v206;
  v240 = AssociatedTypeWitness;
  v241 = v119;
  v242 = v118;
  v243 = AssociatedConformanceWitness;
  v121 = sub_214CCF0F4();
  v120 = v121;
  v138 = MEMORY[0x277CE14C0];
  v238 = swift_getWitnessTable();
  swift_getWitnessTable();
  v124 = sub_214CCF074();
  v122 = v124;
  v127 = sub_214CCE2F4();
  v123 = v127;
  v128 = sub_214CCFF34();
  v236 = swift_getWitnessTable();
  v237 = MEMORY[0x277CDF918];
  v129 = swift_getWitnessTable();
  v235 = *(v186 + 8);
  v130 = swift_getWitnessTable();
  v231 = v127;
  v232 = v128;
  v233 = v129;
  v234 = v130;
  v193 = MEMORY[0x277CE0E40];
  v132 = swift_getOpaqueTypeMetadata2();
  v148 = sub_214CCF0C4();
  v126 = v148;
  v134 = sub_214CCE2F4();
  v131 = v134;
  v227 = v127;
  v228 = v128;
  v229 = v129;
  v230 = v130;
  v194 = 1;
  swift_getOpaqueTypeConformance2();
  v133 = sub_214CCE394();
  swift_getWitnessTable();
  v135 = sub_214CCE0A4();
  v136 = swift_getTupleTypeMetadata2();
  v137 = v136;
  v140 = sub_214CCF1F4();
  v139 = v140;
  v141 = swift_getWitnessTable();
  v154 = sub_214CCE1B4();
  v143 = v154;
  v157 = sub_214CCE2F4();
  v145 = v157;
  v146 = swift_getTupleTypeMetadata2();
  v147 = v146;
  v149 = sub_214CCF1F4();
  v150 = v149;
  v151 = *(v149 - 8);
  v152 = v151;
  v153 = (*(v151 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v155 = v81 - v153;
  v226 = v81 - v153;
  v156 = (*(*(v154 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v158 = v81 - v156;
  v159 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v161 = (v159 + 15) & 0xFFFFFFFFFFFFFFF0;
  v160 = v81 - v161;
  MEMORY[0x28223BE20](v19);
  v162 = v81 - v161;
  v225 = v81 - v161;
  v163 = *(v20 - 8);
  v164 = v163;
  v165 = *(v163 + 64);
  MEMORY[0x28223BE20](v21);
  v167 = (v165 + 15) & 0xFFFFFFFFFFFFFFF0;
  v166 = v81 - v167;
  MEMORY[0x28223BE20](v22);
  v168 = v81 - v167;
  v224 = v81 - v167;
  v169 = sub_214CCFF34();
  v171 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169 - 8);
  v173 = (v171 + 15) & 0xFFFFFFFFFFFFFFF0;
  v170 = v81 - v173;
  MEMORY[0x28223BE20](v81 - v173);
  v172 = v81 - v173;
  MEMORY[0x28223BE20](v23);
  v174 = v81 - v173;
  v223 = v81 - v173;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37F28, qword_214CF53E0);
  v175 = (*(*(v190 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v190 - 8);
  v189 = v81 - v175;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C98, &unk_214CF5028);
  v178 = v200;
  v179 = *(v200 - 8);
  v198 = v179;
  v180 = v179;
  v181 = *(v179 + 64);
  MEMORY[0x28223BE20](v177);
  v199 = v81 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v199;
  MEMORY[0x28223BE20](v24);
  v25 = v184;
  v26 = v203;
  v196 = v81 - v27;
  v183 = v81 - v27;
  v222 = v81 - v27;
  v28 = *v203;
  v29 = *(v203 + 1);
  *(v184 + 13) = *(v203 + 2);
  *(v25 + 12) = v29;
  *(v25 + 11) = v28;
  v30 = v26[3];
  v31 = v26[4];
  v32 = v26[5];
  *(v25 + 17) = v26[6];
  *(v25 + 16) = v32;
  *(v25 + 15) = v31;
  *(v25 + 14) = v30;
  v33 = v26[7];
  v34 = v26[8];
  v35 = v26[9];
  *(v36 + 153) = *(v26 + 153);
  v36[9] = v35;
  v36[8] = v34;
  v36[7] = v33;
  v205 = type metadata accessor for MUIOpenMailboxQuicklyView(v37, v38, v39, v81 - v27);
  sub_214C6D548(v205, v189);
  v40 = v184;
  v41 = v203;
  v42 = v204;
  v43 = v205;
  v44 = *v203;
  v45 = *(v203 + 1);
  *(v204 + 27) = *(v203 + 2);
  v42[26] = v45;
  v42[25] = v44;
  v46 = v41[3];
  v47 = v41[4];
  v48 = v41[5];
  v42[31] = v41[6];
  v42[30] = v48;
  v42[29] = v47;
  v42[28] = v46;
  v49 = v41[7];
  v50 = v41[8];
  v51 = v41[9];
  *(v40 + 153) = *(v41 + 153);
  *(v40 + 9) = v51;
  *(v40 + 8) = v50;
  *(v40 + 7) = v49;
  v219[0] = sub_214C66C98(v43);
  v219[1] = v52;
  sub_214C68154(v203, &v218);
  v53 = swift_allocObject();
  v54 = v186;
  v55 = v203;
  v187 = v53;
  *(v53 + 16) = v185;
  *(v53 + 24) = v54;
  v56 = *v55;
  v57 = v55[1];
  *(v53 + 64) = v55[2];
  *(v53 + 48) = v57;
  *(v53 + 32) = v56;
  v58 = v55[3];
  v59 = v55[4];
  v60 = v55[5];
  *(v53 + 128) = v55[6];
  *(v53 + 112) = v60;
  *(v53 + 96) = v59;
  *(v53 + 80) = v58;
  v61 = v55[7];
  v62 = v55[8];
  v63 = v55[9];
  *(v53 + 185) = *(v55 + 153);
  *(v53 + 176) = v63;
  *(v53 + 160) = v62;
  *(v53 + 144) = v61;
  v195 = sub_214C77C8C();
  v192 = MEMORY[0x277D837F8];
  sub_214B28CB0();
  v188 = v219;
  sub_214CCEDC4();

  sub_214A61B48(v188);
  sub_214AA2F50(v189);
  v217[22] = v190;
  v217[23] = v191;
  v217[24] = v195;
  v217[25] = v192;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v199, v200, v196);
  v201 = *(v198 + 8);
  v202 = (v198 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v201(v199, v200);
  v64 = v203;
  v65 = v204;
  v66 = v205;
  v67 = *v203;
  v68 = *(v203 + 1);
  *(v204 + 2) = *(v203 + 2);
  v65[1] = v68;
  *v65 = v67;
  v69 = v64[3];
  v70 = v64[4];
  v71 = v64[5];
  v65[6] = v64[6];
  v65[5] = v71;
  v65[4] = v70;
  v65[3] = v69;
  v72 = v64[7];
  v73 = v64[8];
  v74 = v64[9];
  *(v65 + 153) = *(v64 + 153);
  v65[9] = v74;
  v65[8] = v73;
  v65[7] = v72;
  v207 = sub_214C67424(v66);
  v216[2] = v207;
  swift_getWitnessTable();
  v208 = sub_214CCFA94();

  if (v208)
  {
    (*(v152 + 56))(v170, 1, 1, v150);
    swift_getWitnessTable();
    sub_214C66600(v170, v150, v172);
    v84 = 0;
    v86 = sub_214CCE224();
    sub_214C7AA40();
    v85 = sub_214CCE224();
    sub_214AA599C(v170, v120, v86, v122, v123, v131, v135, v137, v139, v85, v143, v145, v147, v150);
    v87 = &v78;
    sub_214AA5B04(v172, v174, v120, v86, v122, v123, v131, v135, v137, v139, v85, v143, v145, v147, v150, v169);
  }

  else
  {
    sub_214CCF0B4();
    v96 = sub_214B0C24C();
    sub_214B061F0(v166, v126, v168);
    v103 = *(v164 + 8);
    v102 = v164 + 8;
    v103(v166, v126);
    v88 = sub_214CCE884();
    sub_214C68154(v203, v214);
    v89 = v81;
    MEMORY[0x28223BE20](v88);
    sub_214CCE1A4();
    sub_214C68334(v203);
    v91 = sub_214CD03C4();
    v90 = v75;
    *v75 = sub_214CCE8D4();
    v90[1] = sub_214CCE8B4();
    v90[2] = sub_214CCE8C4();
    sub_214A63280();
    v92 = v76;
    sub_214C151AC();
    sub_214CD0084();
    v93 = v213;
    v95 = swift_getWitnessTable();
    v94 = 0;
    v98 = 1;
    sub_214CCED64();
    v101 = sub_214CCE224();
    sub_214C7AA40();
    v100 = sub_214CCE224();
    sub_214AA6060(v158, v120, v101, v122, v123, v131, v135, v137, v139, v100);
    v212[2] = v95;
    v212[3] = MEMORY[0x277CDF918];
    v97 = swift_getWitnessTable();
    sub_214B061F0(v160, v145, v162);
    v80 = v145;
    v79 = v143;
    sub_214AA6060(v160, v120, v101, v122, v123, v131, v135, v137, v139, v100);
    (*(v164 + 16))(v166, v168, v126);
    v212[0] = v166;
    sub_214AA6124(v162, v160, v120, v101, v122, v123, v131, v135, v137, v139, v100, v143, v145);
    v212[1] = v160;
    v211[0] = v126;
    v211[1] = v145;
    v209 = v96;
    v210 = v97;
    sub_214C663A4(v212, 2uLL, v211, v155);
    v80 = v145;
    sub_214AA6060(v160, v120, v101, v122, v123, v131, v135, v137, v139, v100);
    v103(v166, v126);
    v79 = v150;
    sub_214AA62B4(v155, v170, v120, v101, v122, v123, v131, v135, v137, v139, v100, v143, v145, v147);
    (*(v152 + 56))(v170, 0, v98, v150);
    swift_getWitnessTable();
    sub_214C66600(v170, v150, v172);
    sub_214AA599C(v170, v120, v101, v122, v123, v131, v135, v137, v139, v100, v143, v145, v147, v150);
    v99 = &v78;
    sub_214AA5B04(v172, v174, v120, v101, v122, v123, v131, v135, v137, v139, v100, v143, v145, v147, v150, v169);
    v80 = v150;
    sub_214AA64C4(v155, v120, v101, v122, v123, v131, v135, v137, v139, v100, v143, v145, v147);
    v80 = v145;
    v79 = v143;
    sub_214AA6060(v162, v120, v101, v122, v123, v131, v135, v137, v139, v100);
    v103(v168, v126);
  }

  (*(v180 + 16))(v182, v183, v178);
  v216[0] = v182;
  v81[1] = 0;
  v83 = sub_214CCE224();
  sub_214C7AA40();
  v82 = sub_214CCE224();
  sub_214AA5D94(v174, v172, v120, v83, v122, v123, v131, v135, v137, v139, v82, v143, v145, v147, v150, v169);
  v216[1] = v172;
  v215[0] = v178;
  v215[1] = v169;
  v214[23] = OpaqueTypeConformance2;
  v214[22] = swift_getWitnessTable();
  v214[24] = swift_getWitnessTable();
  sub_214C663A4(v216, 2uLL, v215, v105);
  v79 = v169;
  sub_214AA599C(v172, v120, v83, v122, v123, v131, v135, v137, v139, v82, v143, v145, v147, v150);
  v201(v182, v178);
  v79 = v169;
  sub_214AA599C(v174, v120, v83, v122, v123, v131, v135, v137, v139, v82, v143, v145, v147, v150);
  return (v201)(v183, v178);
}

uint64_t sub_214C6D548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v6 = a1;
  v7 = sub_214C71B38;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D38, &qword_214CF5080);
  v4[0] = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v17 = v4 - v4[0];
  v11 = v20;
  v4[2] = 169;
  memcpy(v20, v2, 0xA9uLL);
  memcpy(__dst, v4[1], sizeof(__dst));
  v5 = *(v6 + 16);
  v19[22] = v5;
  v10 = sub_214CCE454();
  sub_214C68154(v11, v19);
  v8 = v18;
  v18[2] = v5;
  v18[3] = *(v6 + 24);
  v18[4] = v11;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D40, &qword_214CF5088);
  sub_214C71B54();
  v13 = 0;
  v14 = 1;
  sub_214CCF024();
  sub_214C68334(v11);
  v16 = sub_214C71BDC();
  sub_214B09708(v15, v16);
  sub_214CCED64();
  return sub_214AA2F50(v17);
}

void *sub_214C6D6F8(const void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v22 = a1;
  sub_214C68154(a1, v21);
  memcpy(__dst, a1, 0xA9uLL);
  type metadata accessor for MUIOpenMailboxQuicklySearchController(0, a2, a3, v3);
  memcpy(v19, a1, sizeof(v19));
  v13 = type metadata accessor for MUIOpenMailboxQuicklyView(0, a2, a3, v4);
  v9 = sub_214C668C4(v13);
  memcpy(v18, a1, sizeof(v18));
  v8 = sub_214C66C98(v13);
  v10 = static MUIOpenMailboxQuicklySearchController.filterMailboxes(_:with:)(v9, v8, v5);

  sub_214C674D0(v10, v13);
  sub_214C68334(__dst);
  sub_214C68154(a1, v17);
  memcpy(v16, a1, 0xA9uLL);
  memcpy(v15, a1, sizeof(v15));
  sub_214C67424(v13);
  sub_214CCF8D4();
  swift_getWitnessTable();
  sub_214CCFA74();

  sub_214C67198(v14, v13);
  return sub_214C68334(v16);
}

uint64_t sub_214C6D8C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a4;
  __src = a1;
  v56 = a2;
  v57 = a3;
  v21 = 0;
  v12[1] = &unk_214CF5498;
  v15 = MEMORY[0x277CE1148];
  v55 = MEMORY[0x277CDFAD8];
  v18 = MEMORY[0x277CE0CA8];
  v22 = MEMORY[0x277D83980];
  v28 = MEMORY[0x277CE14C0];
  v29 = MEMORY[0x277CE1290];
  v31 = MEMORY[0x277CE1198];
  v32 = MEMORY[0x277D84F50];
  v35 = MEMORY[0x277CE0E40];
  v38 = MEMORY[0x277CDDB40];
  v58 = sub_214C7AB28;
  v63 = MEMORY[0x277CDD6E0];
  v88 = 0;
  v87 = 0;
  v116 = a2;
  v12[0] = v114;
  __n = 169;
  memcpy(v114, a1, 0xA9uLL);
  memcpy(__dst, v114, sizeof(__dst));
  v37 = 255;
  v25 = sub_214CCF8D4();
  v24 = *(v57 + 16);
  v23 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for MailboxView(255, v56, v57, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v110 = v13;
  v111 = MEMORY[0x277D837D0];
  v112 = WitnessTable;
  v113 = MEMORY[0x277D837E0];
  v14 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0, &qword_214CF3540);
  v17 = sub_214CCE2F4();
  v16 = swift_getWitnessTable();
  v108 = v16;
  v109 = sub_214C200FC();
  v106 = v17;
  v107 = swift_getWitnessTable();
  v52 = 0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v19 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0, &qword_214CF5038);
  v20 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8, &qword_214CF5040);
  swift_getTupleTypeMetadata2();
  v27 = sub_214CCF1F4();
  v26 = swift_getWitnessTable();
  v101 = v25;
  v102 = AssociatedTypeWitness;
  v103 = v27;
  v104 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = sub_214CCF0F4();
  v100 = swift_getWitnessTable();
  swift_getWitnessTable();
  v51 = sub_214CCF074();
  v43 = sub_214CCE2F4();
  v33 = sub_214CCFF34();
  v98 = swift_getWitnessTable();
  v99 = MEMORY[0x277CDF918];
  v54 = swift_getWitnessTable();
  v97 = *(v57 + 8);
  v34 = swift_getWitnessTable();
  v93 = v43;
  v94 = v33;
  v95 = v54;
  v96 = v34;
  v36 = swift_getOpaqueTypeMetadata2();
  v89 = v43;
  v90 = v33;
  v91 = v54;
  v92 = v34;
  swift_getOpaqueTypeConformance2();
  v60 = sub_214CCE394();
  v61 = swift_getWitnessTable();
  v72 = sub_214CCE0A4();
  v64 = *(v72 - 8);
  v65 = v72 - 8;
  v42 = *(v64 + 64);
  v40 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v70 = v12 - v40;
  swift_checkMetadataState();
  swift_checkMetadataState();
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v75 = v12 - v44;
  v88 = v12 - v44;
  v80 = swift_checkMetadataState();
  v45 = (*(*(v80 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v53 = v12 - v45;
  v81 = sub_214CCE2F4();
  v47 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v71 = v12 - v47;
  v48 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12 - v47);
  v76 = v12 - v48;
  v87 = v12 - v48;
  memcpy(&v86, v6, v7);
  v9 = type metadata accessor for MUIOpenMailboxQuicklyView(v52, v56, v57, v8);
  sub_214C6E278(v9, v53);
  v49 = sub_214CCF1B4();
  sub_214CCEDF4();

  v77 = swift_checkMetadataState();
  v78 = sub_214CCE224();
  v79 = swift_checkMetadataState();
  sub_214AA30F8(v53, v77, v78);
  v85[22] = v54;
  v85[23] = MEMORY[0x277CE03F0];
  v66 = swift_getWitnessTable();
  sub_214B061F0(v71, v81, v76);
  sub_214AA65F0(v71, v77, v78);
  sub_214C68154(__src, v85);
  v59 = v82;
  v82[2] = v56;
  v82[3] = v57;
  v82[4] = __src;
  v10 = sub_214B1916C();
  sub_214C6664C(v10, v58, v59, v60, v61);
  sub_214C68334(__src);
  v67 = swift_getWitnessTable();
  sub_214B061F0(v70, v72, v75);
  v74 = *(v64 + 8);
  v73 = v64 + 8;
  v74(v70, v72);
  sub_214AA6660(v76, v71, v77, v78, v79, v80, v81);
  v69 = v84;
  v84[0] = v71;
  (*(v64 + 16))(v70, v75, v72);
  v84[1] = v70;
  v83[0] = v81;
  v83[1] = v72;
  v82[6] = v66;
  v82[7] = v67;
  sub_214C663A4(v69, 2uLL, v83, v68);
  v74(v70, v72);
  sub_214AA65F0(v71, v77, v78);
  v74(v75, v72);
  return sub_214AA65F0(v76, v77, v78);
}

uint64_t sub_214C6E278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v6[0] = a1;
  v17 = 0;
  v6[1] = &unk_214CF5498;
  v9 = MEMORY[0x277CE1148];
  v11 = MEMORY[0x277CDFAD8];
  v13 = MEMORY[0x277CE0CA8];
  v18 = MEMORY[0x277D83980];
  v26 = MEMORY[0x277CE14C0];
  v27 = MEMORY[0x277CE1290];
  v33 = sub_214C72984;
  v37 = MEMORY[0x277CE1198];
  v31 = *(a1 + 16);
  v45[36] = v31;
  v24 = 255;
  v21 = sub_214CCF8D4();
  v32 = *(v6[0] + 24);
  v20 = *(v32 + 16);
  v19 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for MailboxView(255, v31, v32, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v45[32] = v7;
  v45[33] = MEMORY[0x277D837D0];
  v45[34] = WitnessTable;
  v45[35] = MEMORY[0x277D837E0];
  v8 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0, &qword_214CF3540);
  v12 = sub_214CCE2F4();
  v10 = swift_getWitnessTable();
  v45[30] = v10;
  v45[31] = sub_214C200FC();
  v45[28] = v12;
  v45[29] = swift_getWitnessTable();
  v40 = 0;
  swift_getOpaqueTypeMetadata2();
  v14 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v15 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0, &qword_214CF5038);
  v16 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8, &qword_214CF5040);
  swift_getTupleTypeMetadata2();
  v25 = sub_214CCF1F4();
  v23 = swift_getWitnessTable();
  v45[23] = v21;
  v45[24] = AssociatedTypeWitness;
  v45[25] = v25;
  v45[26] = v23;
  v45[27] = swift_getAssociatedConformanceWitness();
  v42 = sub_214CCF0F4();
  v45[22] = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v41 = sub_214CCF074();
  v28 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v43 = v6 - v28;
  v36 = v46;
  v30 = 169;
  memcpy(v46, v3, 0xA9uLL);
  memcpy(__dst, v29, sizeof(__dst));
  sub_214C68154(v46, v45);
  v34 = v44;
  v44[2] = v31;
  v44[3] = v32;
  v44[4] = v36;
  sub_214B6C2A4();
  sub_214CCF064();
  sub_214C68334(v36);
  v39 = sub_214CCE8E4();
  swift_getWitnessTable();
  sub_214CCED64();
  v4 = sub_214CCE224();
  return sub_214AA30F8(v43, v42, v4);
}

void sub_214C6E73C(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = 0;
  v32 = 0;
  v55 = a2;
  v54 = a1;
  v12 = sub_214CCF8D4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for MailboxView(255, a2, a3, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v50 = v9;
  v51 = MEMORY[0x277D837D0];
  v52 = WitnessTable;
  v53 = MEMORY[0x277D837E0];
  sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0, &qword_214CF3540);
  v11 = sub_214CCE2F4();
  v10 = swift_getWitnessTable();
  v5 = sub_214C200FC();
  v48 = v10;
  v49 = v5;
  v6 = swift_getWitnessTable();
  v46 = v11;
  v47 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_214CCE2F4();
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0, &qword_214CF5038);
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8, &qword_214CF5040);
  swift_getTupleTypeMetadata2();
  v14 = sub_214CCF1F4();
  v13 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v12;
  v42 = AssociatedTypeWitness;
  v43 = v14;
  v44 = v13;
  v45 = AssociatedConformanceWitness;
  sub_214CCF0F4();
  v40 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_214CCF074();
  v19 = sub_214CCE2F4();
  v20 = sub_214CCFF34();
  v38 = swift_getWitnessTable();
  v39 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v37 = *(a3 + 8);
  v22 = swift_getWitnessTable();
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  swift_getOpaqueTypeMetadata2();
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_214C68154(a1, v30);
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  memcpy(v23 + 4, a1, 0xA9uLL);
  v29[2] = v19;
  v29[3] = v20;
  v29[4] = v21;
  v29[5] = v22;
  swift_getOpaqueTypeConformance2();
  v29[0] = sub_214CCE384();
  v29[1] = v8;
  v27 = sub_214CCE394();
  swift_getWitnessTable();
  sub_214B061F0(v29, v27, &v31);
  sub_214AA8B50();
  v24 = v31;
  v25 = v32;

  v28[0] = v24;
  v28[1] = v25;
  sub_214B061F0(v28, v27, a4);
  sub_214AA8B50();
  sub_214AA8B50();
}

uint64_t sub_214C6ED20@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a5;
  v49 = a1;
  v54 = a2;
  v52 = a3;
  v53 = a4;
  v30 = 0;
  v21[1] = &unk_214CF5498;
  v24 = MEMORY[0x277CE1148];
  v44 = MEMORY[0x277CDFAD8];
  v27 = MEMORY[0x277CE0CA8];
  v31 = MEMORY[0x277D83980];
  v38 = MEMORY[0x277CE14C0];
  v39 = MEMORY[0x277CE1290];
  v43 = MEMORY[0x277CE1198];
  v45 = MEMORY[0x277D84F50];
  v73 = MEMORY[0x277CE0E40];
  v62 = sub_214C7AB60;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v115 = a3;
  v65 = 0;
  v60 = sub_214CCE324();
  v56 = *(v60 - 8);
  v57 = v60 - 8;
  v50 = v56;
  v51 = *(v56 + 64);
  v21[0] = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v59 = v21 - v21[0];
  v41 = 255;
  v34 = sub_214CCF8D4();
  v33 = *(v53 + 16);
  v32 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for MailboxView(v41, v52, v53, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v111 = v22;
  v112 = MEMORY[0x277D837D0];
  v113 = WitnessTable;
  v114 = MEMORY[0x277D837E0];
  v23 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0, &qword_214CF3540);
  v26 = sub_214CCE2F4();
  v25 = swift_getWitnessTable();
  v6 = sub_214C200FC();
  v109 = v25;
  v110 = v6;
  v7 = swift_getWitnessTable();
  v107 = v26;
  v108 = v7;
  swift_getOpaqueTypeMetadata2();
  v40 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v28 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0, &qword_214CF5038);
  v29 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8, &qword_214CF5040);
  swift_getTupleTypeMetadata2();
  v37 = sub_214CCF1F4();
  v36 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v102 = v34;
  v103 = AssociatedTypeWitness;
  v104 = v37;
  v105 = v36;
  v106 = AssociatedConformanceWitness;
  v67 = sub_214CCF0F4();
  v101 = swift_getWitnessTable();
  swift_getWitnessTable();
  v66 = sub_214CCF074();
  v69 = sub_214CCE2F4();
  v42 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v68 = v21 - v42;
  v61 = sub_214CCFF34();
  v99 = swift_getWitnessTable();
  v100 = MEMORY[0x277CDF918];
  v71 = swift_getWitnessTable();
  v98 = *(v53 + 8);
  v72 = swift_getWitnessTable();
  v94 = v69;
  v95 = v61;
  v96 = v71;
  v97 = v72;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  v75 = OpaqueTypeMetadata2 - 8;
  v46 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v78 = v21 - v46;
  v47 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v79 = v21 - v47;
  v93 = v21 - v47;
  v92 = v11;
  v91 = v12;
  v55 = 169;
  memcpy(v90, v12, sizeof(v90));
  v48 = type metadata accessor for MUIOpenMailboxQuicklyView(v65, v52, v53, v13);
  sub_214C6E278(v48, v68);
  memcpy(&v89, v54, v55);
  v14 = sub_214C670EC(v48);
  v64 = &v88;
  v88 = v14;
  sub_214C68154(v54, &v87);
  (*(v56 + 16))(v59, v49, v60);
  v58 = (*(v50 + 80) + 201) & ~*(v50 + 80);
  v15 = swift_allocObject();
  v16 = v53;
  v17 = v54;
  v18 = v55;
  v63 = v15;
  v15[2] = v52;
  v15[3] = v16;
  memcpy(v15 + 4, v17, v18);
  (*(v56 + 32))(v63 + v58, v59, v60);
  v70 = swift_checkMetadataState();
  sub_214B28CB0();
  sub_214CCEDC4();

  sub_214A759F4();
  v19 = sub_214CCE224();
  sub_214AA30F8(v68, v67, v19);
  v83 = v69;
  v84 = v70;
  v85 = v71;
  v86 = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v78, OpaqueTypeMetadata2, v79);
  v82 = *(v74 + 8);
  v81 = v74 + 8;
  v82(v78, OpaqueTypeMetadata2);
  (*(v74 + 16))(v78, v79, OpaqueTypeMetadata2);
  sub_214B061F0(v78, OpaqueTypeMetadata2, v76);
  v82(v78, OpaqueTypeMetadata2);
  return (v82)(v79, OpaqueTypeMetadata2);
}

uint64_t sub_214C6F5E0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v23 = a3;
  v24 = a2;
  v25 = a1;
  v28 = 0;
  v26 = 0;
  v41 = a3;
  v40 = a1;
  v39 = a2;
  v4 = *a1;
  v5 = a1[1];
  v31 = a1[2];
  v30 = v5;
  v29 = v4;
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v35 = a1[6];
  v34 = v8;
  v33 = v7;
  v32 = v6;
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  *(v38 + 9) = *(a1 + 153);
  v38[0] = v11;
  v37 = v10;
  v36 = v9;
  v12 = type metadata accessor for MUIOpenMailboxQuicklyView(0, a3, a4, 0);
  v27 = sub_214C670EC(v12);
  if (!v27)
  {
    return v26;
  }

  v21 = v27;
  v13 = v26;
  v18[0] = v27;
  v28 = v27;
  swift_unknownObjectRetain();
  v18[1] = v18;
  MEMORY[0x28223BE20](v18);
  v18[2] = v17;
  v17[2] = v14;
  v17[3] = v22;
  v17[4] = v24;
  v17[5] = v15;
  v18[3] = MEMORY[0x277D84F78] + 8;
  v18[4] = sub_214C6F918(MEMORY[0x277D84F78] + 8);
  sub_214CCE234();
  v19 = v13;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v19;
}

double sub_214C6F85C(uint64_t a1, id a2, uint64_t a3)
{
  v6[4] = a3;
  v6[3] = a1;
  v6[2] = a2;
  v5 = [a2 identifier];
  v6[0] = sub_214CCF564();
  v6[1] = v3;
  sub_214CCF214();
  sub_214CCE314();
  sub_214A61B48(v6);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t sub_214C6F93C()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  return sub_214CCEE54();
}

uint64_t sub_214C6F9A8(uint64_t a1)
{
  v7 = a1;
  v1 = sub_214CCEE74();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v6 = &v4 - v4;
  (*(v5 + 104))(v2);
  return sub_214CCEEF4();
}

void *sub_214C6FA7C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a2;
  v11 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v5 = type metadata accessor for MUIOpenMailboxQuicklyView(0, a2, a3, v4);
  return sub_214C6FAF4(v5, a4);
}

void *sub_214C6FAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = 0;
  memcpy(__dst, v2, 0xA9uLL);
  v20 = v2;
  v19 = *(a1 + 16);
  memcpy(v18, __dst, sizeof(v18));
  v12 = sub_214C74090(a1);
  if (v3)
  {
    v8 = *MEMORY[0x277CDF128];
    v7 = sub_214CCF164();
    return (*(*(v7 - 8) + 104))(a2, v8);
  }

  else
  {
    v17 = v12;
    if (v12 <= 0)
    {
LABEL_8:
      v9 = *MEMORY[0x277CDF120];
      v6 = sub_214CCF164();
      return (*(*(v6 - 8) + 104))(a2, v9);
    }

    sub_214C68154(__dst, v16);
    result = memcpy(v15, __dst, 0xA9uLL);
    if (!__OFSUB__(v12, 1))
    {
      memcpy(v14, __dst, sizeof(v14));
      sub_214C67424(a1);
      sub_214CCF914();
      sub_214C67198(v13, a1);

      sub_214C68334(v15);
      goto LABEL_8;
    }

    __break(1u);
  }

  return result;
}

void *sub_214C6FCEC@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = a2;
  v11 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v5 = type metadata accessor for MUIOpenMailboxQuicklyView(0, a2, a3, v4);
  return sub_214C6FD64(v5, a4);
}

void *sub_214C6FD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = 0;
  memcpy(__dst, v2, 0xA9uLL);
  v23 = v2;
  v22 = *(a1 + 16);
  memcpy(v21, __dst, sizeof(v21));
  v14 = sub_214C74090(a1);
  if (v3)
  {
    v9 = *MEMORY[0x277CDF128];
    v8 = sub_214CCF164();
    return (*(*(v8 - 8) + 104))(a2, v9);
  }

  else
  {
    v20 = v14;
    memcpy(v19, __dst, sizeof(v19));
    sub_214C67424(a1);
    v11 = sub_214CCF854();

    result = v11;
    if (__OFSUB__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      if (v14 >= v11 - 1)
      {
LABEL_12:
        v10 = *MEMORY[0x277CDF120];
        v7 = sub_214CCF164();
        return (*(*(v7 - 8) + 104))(a2, v10);
      }

      sub_214C68154(__dst, v18);
      result = memcpy(v17, __dst, 0xA9uLL);
      if (!__OFADD__(v14, 1))
      {
        memcpy(v16, __dst, sizeof(v16));
        sub_214C67424(a1);
        sub_214CCF914();
        sub_214C67198(v15, a1);

        sub_214C68334(v17);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_214C6FFD0()
{
  v2 = qword_27CA37D28;
  if (!qword_27CA37D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37C90, &qword_214CF5020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37D28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C70058(uint64_t a1)
{
  v1 = sub_214CCF184();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_214C700B4(uint64_t a1)
{
  v2 = *(a1 + 56);
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v2 closeOpenMailboxQuicklyViewController];
  return swift_unknownObjectRelease();
}

void sub_214C70128(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v55 = a2;
  v54 = a1;
  v4 = *a1;
  v5 = a1[1];
  v52[13] = a1[2];
  v52[12] = v5;
  v52[11] = v4;
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v52[17] = a1[6];
  v52[16] = v8;
  v52[15] = v7;
  v52[14] = v6;
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  *&v53[9] = *(a1 + 153);
  *v53 = v11;
  v52[19] = v10;
  v52[18] = v9;
  v34 = type metadata accessor for MUIOpenMailboxQuicklyView(0, a2, a3, a4);
  sub_214C7046C(v34);
  sub_214C68154(v33, v52);
  v12 = *v33;
  v13 = v33[1];
  v50[2] = v33[2];
  v50[1] = v13;
  v50[0] = v12;
  v14 = v33[3];
  v15 = v33[4];
  v16 = v33[5];
  v50[6] = v33[6];
  v50[5] = v16;
  v50[4] = v15;
  v50[3] = v14;
  v17 = v33[7];
  v18 = v33[8];
  v19 = v33[9];
  *(v51 + 9) = *(v33 + 153);
  v51[0] = v19;
  v50[8] = v18;
  v50[7] = v17;
  v32 = v50;
  sub_214C67C54(1, v34);
  sub_214C68334(v50);
  v20 = *v33;
  v21 = v33[1];
  v41 = v33[2];
  v40 = v21;
  v39 = v20;
  v22 = v33[3];
  v23 = v33[4];
  v24 = v33[5];
  v45 = v33[6];
  v44 = v24;
  v43 = v23;
  v42 = v22;
  v25 = v33[7];
  v26 = v33[8];
  v27 = v33[9];
  *(v48 + 9) = *(v33 + 153);
  v48[0] = v27;
  v47 = v26;
  v46 = v25;
  v49 = sub_214C677F4(v34);
  if (v49)
  {
    v31 = v49;
    v28 = v49;
    sub_214A671E8(&v49);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v30 = 0;
    v29 = 0;
    [v31 selectAll_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A671E8(&v49);
  }
}

double sub_214C7046C(uint64_t a1)
{
  v28 = 0;
  memcpy(__dst, v1, 0xA9uLL);
  v30 = v1;
  v12 = *(a1 + 16);
  v29 = v12;
  v11 = __dst[7];
  swift_unknownObjectRetain();
  swift_getObjectType();
  v10 = [v11 openMailboxQuicklyItems];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D68, &qword_214CF50A8);
  sub_214CCF7E4();
  swift_unknownObjectRelease();
  v13 = sub_214CD0344();
  if (v13)
  {
    v28 = v13;

    MEMORY[0x277D82BD8](v10);
    sub_214C68154(__dst, v27);
    memcpy(v26, __dst, 0xA9uLL);

    sub_214C66970(v13, a1);
    sub_214C68334(v26);
    sub_214C68154(__dst, v25);
    memcpy(v24, __dst, 0xA9uLL);
    type metadata accessor for MUIOpenMailboxQuicklySearchController(0, v12, *(a1 + 24), v2);
    memcpy(v23, __dst, sizeof(v23));
    v7 = sub_214C66C98(a1);
    v8 = static MUIOpenMailboxQuicklySearchController.filterMailboxes(_:with:)(v13, v7, v3);

    sub_214C674D0(v8, a1);
    sub_214C68334(v24);
    sub_214C68154(__dst, v22);
    memcpy(v21, __dst, 0xA9uLL);
    memcpy(v20, __dst, sizeof(v20));
    v18 = sub_214C74090(a1);
    v19 = v4 & 1;
    if (v4)
    {
      memcpy(v17, __dst, sizeof(v17));
      v16 = sub_214C67424(a1);
      sub_214CCF8D4();
      swift_getWitnessTable();
      sub_214CCFA74();

      v6 = v15;
    }

    else
    {
      memcpy(v14, __dst, sizeof(v14));
      v6 = sub_214C670EC(a1);
    }

    sub_214C67198(v6, a1);
    sub_214C68334(v21);
  }

  else
  {

    *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  return result;
}

void sub_214C707CC(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v105 = v197;
  v54 = a4;
  v177 = a1;
  v156 = a2;
  v157 = a3;
  v124 = MEMORY[0x277CDE848];
  v133 = MEMORY[0x277CDEEC0];
  v142 = MEMORY[0x277CDEB78];
  v143 = sub_214C7A584;
  v158 = sub_214C7A620;
  v167 = MEMORY[0x277CDEF38];
  v55 = MEMORY[0x277CDE668];
  v56 = sub_214C7A988;
  v57 = sub_214C721A8;
  v206 = 0;
  v205 = 0;
  v204 = 0;
  v203 = 0;
  v182 = 0;
  v207[3] = a2;
  v137 = 0;
  v58 = sub_214CCE344();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v62 = &v39 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38078, &qword_214CF5560);
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v67 = &v39 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20, &qword_214CF5078);
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v72 = &v39 - v71;
  v73 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v39 - v71);
  v74 = &v39 - v73;
  v75 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v39 - v73);
  v76 = &v39 - v75;
  v206 = &v39 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38080, &qword_214CF5568);
  v78 = (*(*(v77 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v137);
  v79 = &v39 - v78;
  v80 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v81 = &v39 - v80;
  v82 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v83 = &v39 - v82;
  v205 = &v39 - v82;
  v162 = sub_214CCE2A4();
  v159 = *(v162 - 8);
  v160 = v162 - 8;
  v84 = (*(v159 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v137);
  v161 = &v39 - v84;
  v149 = sub_214CCFC94();
  v146 = *(v149 - 8);
  v147 = v149 - 8;
  v85 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v137);
  v148 = &v39 - v85;
  v121 = sub_214CCE554();
  v116 = *(v121 - 8);
  v117 = v121 - 8;
  v86 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121);
  v118 = &v39 - v86;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38088, &qword_214CF5570);
  v112 = *(v115 - 8);
  v113 = v115 - 8;
  v87 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v115);
  v114 = &v39 - v87;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38090, &qword_214CF5578);
  v88 = (*(*(v120 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v120);
  v119 = &v39 - v88;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D18, &qword_214CF5070);
  v128 = *(v131 - 8);
  v129 = v131 - 8;
  v89 = (*(v128 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v131);
  v130 = &v39 - v89;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D10, &qword_214CF5068);
  v134 = *(v140 - 8);
  v135 = v140 - 8;
  v90 = (*(v134 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v140);
  v136 = &v39 - v90;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D08, &qword_214CF5060);
  v150 = *(v153 - 8);
  v151 = v153 - 8;
  v91 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v153);
  v152 = &v39 - v91;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38098, &qword_214CF5580);
  v92 = (*(*(v165 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v165);
  v164 = &v39 - v92;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D00, &qword_214CF5058);
  v171 = *(v174 - 8);
  v172 = v174 - 8;
  v93 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v177);
  v173 = &v39 - v93;
  v94 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v169 = &v39 - v94;
  v204 = &v39 - v94;
  v203 = v12;
  v95 = @"magnifyingglass";
  MEMORY[0x277D82BE0](@"magnifyingglass");
  sub_214CCF564();
  v96 = sub_214CCEF34();
  MEMORY[0x277D82BD8](v95);
  v98 = v201;
  v201[0] = v96;
  v97 = sub_214CCEE94();
  sub_214CCEBF4();

  sub_214A75F80();
  v101 = v200;
  v200[0] = v201[1];
  v200[1] = v201[2];
  v200[2] = v201[3];
  v100 = sub_214CCE974();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA380A0, &qword_214CF5588);
  sub_214C7A100();
  sub_214CCECF4();

  sub_214B0B504();
  v104 = v199;
  v199[0] = v201[4];
  v199[1] = v201[5];
  v199[2] = v201[6];
  v199[3] = v201[7];
  v199[4] = v201[8];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA380C0, &qword_214CF5598);
  v103 = sub_214C7A22C();
  sub_214B061F0(v104, v102, v202);
  sub_214C7A2D4();
  v105[15] = *(v177 + 40);
  sub_214A61AD0(v207, &v198);
  v13 = v177;
  v14 = v105[15];
  v110 = v197;
  *v105 = v14;
  v178 = 169;
  memcpy(v196, v13, sizeof(v196));
  v179 = type metadata accessor for MUIOpenMailboxQuicklyView(v137, v156, v157, v15);
  v16 = sub_214C66E8C(v179);
  v17 = v114;
  v106 = v16;
  v107 = v18;
  v108 = v19;
  v109 = v20;
  v21 = sub_214B075A0();
  sub_214C71C64(v110, v106, v107, v108, v109, MEMORY[0x277D837D0], v21, v17);
  v111 = sub_214CCE974();
  sub_214C7A330();
  sub_214CCECF4();

  (*(v112 + 8))(v114, v115);
  sub_214C71DD4();
  v122 = sub_214C7A3B8();
  v123 = sub_214C7A460(v22);
  sub_214CCEBD4();
  (*(v116 + 8))(v118, v121);
  sub_214C7A4E0(v119);
  memcpy(&v195, v177, v178);
  v126 = sub_214C67D20(v179);
  v127 = v23;
  v125 = v24;
  v194[24] = v120;
  v194[25] = v121;
  v194[26] = v122;
  v194[27] = v123;
  v168 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214CCED44();

  (*(v128 + 8))(v130, v131);
  v194[22] = v131;
  v194[23] = OpaqueTypeConformance2;
  v141 = swift_getOpaqueTypeConformance2();
  v25 = sub_214C666A0();
  sub_214C71DEC(v25 & 1);
  (*(v134 + 8))(v136, v140);
  v139 = [objc_opt_self() defaultCenter];
  v138 = *MEMORY[0x277D770A8];
  MEMORY[0x277D82BE0](v138);
  sub_214CCFCA4();
  MEMORY[0x277D82BD8](v138);
  MEMORY[0x277D82BD8](v139);
  sub_214C68154(v177, v194);
  v154 = 201;
  v155 = 7;
  v26 = swift_allocObject();
  v27 = v157;
  v28 = v177;
  v29 = v178;
  v145 = v26;
  v26[2] = v156;
  v26[3] = v27;
  memcpy(v26 + 4, v28, v29);
  v193[22] = v140;
  v193[23] = v141;
  v144 = swift_getOpaqueTypeConformance2();
  sub_214C7A5A0();
  sub_214CCEE44();

  (*(v146 + 8))(v148, v149);
  (*(v150 + 8))(v152, v153);
  sub_214C68154(v177, v193);
  v30 = swift_allocObject();
  v31 = v157;
  v32 = v177;
  v33 = v178;
  v163 = v30;
  v30[2] = v156;
  v30[3] = v31;
  memcpy(v30 + 4, v32, v33);
  v166 = sub_214C7A63C();
  sub_214C720CC();
  sub_214CCEDD4();
  (*(v159 + 8))(v161, v162);

  sub_214AA45B4(v164);
  v192[22] = v165;
  v192[23] = v166;
  v170 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v173, v174, v169);
  v175 = *(v171 + 8);
  v176 = v171 + 8;
  v175(v173, v174);
  memcpy(v192, v177, v178);
  sub_214C66C98(v179);
  v180 = v34;
  v181 = sub_214CCF664();

  if (v181)
  {
    (*(v69 + 56))(v79, 1, 1, v68);
    v45 = sub_214C7A6C4();
    v38 = sub_214C7A74C();
    v191[3] = v63;
    v191[4] = v58;
    v191[5] = v45;
    v191[6] = v38;
    swift_getOpaqueTypeConformance2();
    sub_214C66600(v79, v68, v81);
    sub_214AA4694(v79);
    sub_214AA4748(v81, v83);
  }

  else
  {
    sub_214C68154(v177, &v187);
    v35 = swift_allocObject();
    v36 = v157;
    v37 = v177;
    v48 = v35;
    v35[2] = v156;
    v35[3] = v36;
    memcpy(v35 + 4, v37, 0xA9uLL);
    sub_214CCF004();
    sub_214C723E4();
    v49 = sub_214C7A6C4();
    v50 = sub_214C7A74C();
    sub_214CCEB24();
    (*(v59 + 8))(v62, v58);
    (*(v64 + 8))(v67, v63);
    v183 = v63;
    v184 = v58;
    v185 = v49;
    v186 = v50;
    v51 = swift_getOpaqueTypeConformance2();
    sub_214B061F0(v74, v68, v76);
    v52 = *(v69 + 8);
    v53 = v69 + 8;
    v52(v74, v68);
    v182 = v74;
    v47 = *(v69 + 16);
    v46 = v69 + 16;
    v47(v72, v76, v68);
    sub_214B061F0(v72, v68, v74);
    v52(v72, v68);
    v47(v79, v74, v68);
    (*(v69 + 56))(v79, 0, 1, v68);
    sub_214C66600(v79, v68, v81);
    sub_214AA4694(v79);
    sub_214AA4748(v81, v83);
    v52(v74, v68);
    v52(v76, v68);
  }

  v44 = v202;
  v43 = v190;
  sub_214C7A7CC(v202, v190);
  v42 = v191;
  v191[0] = v43;
  (*(v171 + 16))(v173, v169, v174);
  v191[1] = v173;
  sub_214AA487C(v83, v81);
  v191[2] = v81;
  v40 = v189;
  v189[0] = v102;
  v189[1] = v174;
  v189[2] = v77;
  v41 = v188;
  v188[0] = v103;
  v188[1] = v170;
  v188[2] = sub_214C7A878();
  sub_214C663A4(v42, 3uLL, v40, v54);
  sub_214AA4694(v81);
  v175(v173, v174);
  sub_214C7A2D4();
  sub_214AA4694(v83);
  v175(v169, v174);
  sub_214C7A2D4();
}

unint64_t sub_214C71B54()
{
  v2 = qword_27CA37D48;
  if (!qword_27CA37D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37D40, &qword_214CF5088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37D48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C71BDC()
{
  v2 = qword_27CA37D50;
  if (!qword_27CA37D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37D38, &qword_214CF5080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37D50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C71C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10[2] = a8;
  v13 = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v14 = a6;
  v10[1] = a7;
  v10[8] = 0;
  v10[7] = nullsub_1;
  v10[9] = nullsub_1;
  v15 = a6;
  v11 = *(a6 - 8);
  v12 = a6 - 8;
  v10[0] = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a2);
  v10[10] = v10 - v10[0];
  (*(v11 + 16))(v8);
  sub_214CCF1E4();
  return (*(v11 + 8))(v13, v14);
}

void *sub_214C71E18(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v17 = a1;
  v16 = a2;
  sub_214C68154(a2, v15);
  memcpy(__dst, a2, 0xA9uLL);
  sub_214CCCE84();
  if (v13[3])
  {
    sub_214C7A9A4();
    if (swift_dynamicCast())
    {
      v7 = v12;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    sub_214A7D24C(v13);
    v8 = 0;
  }

  v5 = type metadata accessor for MUIOpenMailboxQuicklyView(0, a3, a4, v4);
  sub_214C678A4(v8, v5);
  return sub_214C68334(__dst);
}

void *sub_214C71F3C(const void *a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v14 = a2;
  v13 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v8 = type metadata accessor for MUIOpenMailboxQuicklyView(0, a2, a3, v3);
  result = sub_214C670EC(v8);
  v9 = result;
  if (result)
  {
    v11 = result;
    memcpy(v10, a1, sizeof(v10));
    sub_214C7200C(v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_214C7200C(void *a1)
{
  v6 = *(v1 + 56);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = [a1 identifier];
  sub_214CCF564();
  v5 = sub_214CCF544();

  [v6 openMailboxQuicklyDidSelectMailboxWithIdentifier_];
  MEMORY[0x277D82BD8](v5);
  return swift_unknownObjectRelease();
}

void *sub_214C720F0(const void *a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  v13 = a1;
  sub_214C68154(a1, v12);
  memcpy(__dst, a1, 0xA9uLL);
  v10 = sub_214CCF614("");
  v9 = v3;
  v4 = type metadata accessor for MUIOpenMailboxQuicklyView(0, a2, a3, v3);
  sub_214C66D54(v10, v9, v4);
  return sub_214C68334(__dst);
}

void sub_214C721A8(uint64_t a1@<X8>)
{
  MEMORY[0x277D82BE0](@"xmark.circle.fill");
  sub_214CCF564();
  v2 = sub_214CCEF34();
  MEMORY[0x277D82BD8](@"xmark.circle.fill");
  v11[8] = v2;
  v1 = [objc_opt_self() systemGrayColor];
  sub_214CCEE54();
  sub_214CCEBF4();

  sub_214A75F80();
  v11[5] = v11[9];
  v11[6] = v11[10];
  v11[7] = v11[11];
  sub_214CCE984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA380A0, &qword_214CF5588);
  sub_214C7A100();
  sub_214CCECF4();

  sub_214B0B504();
  v11[0] = v11[12];
  v11[1] = v11[13];
  v11[2] = v11[14];
  v11[3] = v11[15];
  v11[4] = v11[16];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA380C0, &qword_214CF5598);
  sub_214C7A22C();
  sub_214B061F0(v11, v9, v12);
  sub_214C7A2D4();
  v3 = v12[0];
  v4 = v12[1];
  v5 = v12[2];
  v6 = v12[3];
  v7 = v12[4];

  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = v7;
  sub_214B061F0(v10, v9, a1);
  sub_214C7A2D4();
  sub_214C7A2D4();
}

uint64_t sub_214C723FC@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v35 = a1;
  v33 = a2;
  v34 = a3;
  v26 = 0;
  v15[1] = &unk_214CF5498;
  v18 = MEMORY[0x277CE1148];
  v20 = MEMORY[0x277CDFAD8];
  v22 = MEMORY[0x277CE0CA8];
  v28 = MEMORY[0x277D83980];
  v37 = MEMORY[0x277CE14C0];
  v39 = sub_214C79C80;
  v47 = MEMORY[0x277CE1290];
  v62 = 0;
  v61 = 0;
  v76 = a2;
  v27 = 255;
  v41 = sub_214CCF8D4();
  v38 = *(v34 + 16);
  v29 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for MailboxView(255, v33, v34, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v72 = v16;
  v73 = MEMORY[0x277D837D0];
  v74 = WitnessTable;
  v75 = MEMORY[0x277D837E0];
  v17 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0, &qword_214CF3540);
  v21 = sub_214CCE2F4();
  v19 = swift_getWitnessTable();
  v70 = v19;
  v71 = sub_214C200FC();
  v68 = v21;
  v69 = swift_getWitnessTable();
  v32 = 0;
  swift_getOpaqueTypeMetadata2();
  v23 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v24 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0, &qword_214CF5038);
  v25 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8, &qword_214CF5040);
  swift_getTupleTypeMetadata2();
  v43 = sub_214CCF1F4();
  v44 = swift_getWitnessTable();
  v63 = v41;
  v64 = AssociatedTypeWitness;
  v65 = v43;
  v66 = v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = sub_214CCF0F4();
  v48 = *(v54 - 8);
  v49 = v54 - 8;
  v30 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v52 = v15 - v30;
  v31 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15 - v30);
  v53 = v15 - v31;
  v62 = v15 - v31;
  v61 = v6;
  v36 = 169;
  memcpy(v60, v6, sizeof(v60));
  v8 = type metadata accessor for MUIOpenMailboxQuicklyView(v32, v33, v34, v7);
  v9 = sub_214C67424(v8);
  v45 = &v59;
  v59 = v9;
  sub_214C68154(v35, &v58);
  v10 = swift_allocObject();
  v11 = v34;
  v12 = v35;
  v13 = v36;
  v40 = v10;
  v10[2] = v33;
  v10[3] = v11;
  memcpy(v10 + 4, v12, v13);
  v46 = swift_getWitnessTable();
  sub_214CCF0E4();
  v57 = v46;
  v51 = swift_getWitnessTable();
  sub_214B061F0(v52, v54, v53);
  v56 = *(v48 + 8);
  v55 = v48 + 8;
  v56(v52, v54);
  (*(v48 + 16))(v52, v53, v54);
  sub_214B061F0(v52, v54, v50);
  v56(v52, v54);
  return (v56)(v53, v54);
}