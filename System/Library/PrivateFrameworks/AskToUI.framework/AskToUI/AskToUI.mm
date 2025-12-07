uint64_t SendRequestFlowError.hashValue.getter()
{
  v1 = *v0;
  sub_2411ABFF8();
  MEMORY[0x245CDD450](v1);
  return sub_2411AC018();
}

uint64_t sub_24117FF94()
{
  v1 = *v0;
  sub_2411ABFF8();
  MEMORY[0x245CDD450](v1);
  return sub_2411AC018();
}

uint64_t sub_241180008(uint64_t a1)
{
  v2 = *v1;
  sub_2411ABFF8();
  MEMORY[0x245CDD450](v2);
  return sub_2411AC018();
}

id sub_24118005C()
{
  v1 = sub_2411AB728();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {

    return v5;
  }

  else
  {
    v8[0] = *v0;

    sub_2411ABE38();
    v7 = sub_2411AB808();
    sub_2411AB578();

    sub_2411AB718();
    swift_getAtKeyPath();
    sub_2411857B0(v8[0], 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }
}

uint64_t sub_2411801C8@<X0>(void *a1@<X8>)
{
  v3 = sub_2411AB728();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C58, &qword_2411ACBF8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MessageComposeApexEntryView(0);
  sub_241186C60(v1 + *(v10 + 20), v9, &qword_27E533C58, &qword_2411ACBF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2411AB7F8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2411ABE38();
    v13 = sub_2411AB808();
    sub_2411AB578();

    sub_2411AB718();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t MessageComposeApexEntryView.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v2 = *(type metadata accessor for MessageComposeApexEntryView(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C58, &qword_2411ACBF8);

  return MEMORY[0x2821FEBC8](a1 + v2, v3, 0);
}

uint64_t sub_241180450@<X0>(BOOL *a1@<X8>)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24118005C();
  swift_getKeyPath();
  sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v3 = *&v2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent + 8];

  if (v3)
  {
  }

  *a1 = v3 != 0;
  return result;
}

uint64_t sub_24118059C(char *a1)
{
  v1 = *a1;
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v1)
  {
  }

  else
  {
    v3 = sub_24118005C();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
    sub_2411AB458();
  }
}

uint64_t MessageComposeApexEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = type metadata accessor for MessageComposeApexEntryView(0);
  v67 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v80 = v2;
  v77 = v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2411AB378();
  v64 = *(v65 - 1);
  MEMORY[0x28223BE20](v65);
  v4 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2411AB448();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v62 - v10;
  v12 = sub_2411ABCC8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v62 - v17;
  v75 = sub_2411AB388();
  v68 = *(v75 - 8);
  v19 = MEMORY[0x28223BE20](v75);
  v66 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v79 = v62 - v21;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C60, &qword_2411ACC00);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v76 = v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C68, &qword_2411ACC08);
  v72 = *(v23 - 8);
  v73 = v23;
  MEMORY[0x28223BE20](v23);
  v70 = v62 - v24;
  sub_2411ABCB8();
  sub_2411856FC();
  v25 = sub_2411ABE98();
  if (!v25)
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v26 = v25;
  sub_2411AB438();
  (*(v13 + 16))(v16, v18, v12);
  (*(v6 + 16))(v9, v11, v5);
  v27 = [v26 bundleURL];
  v63 = v12;
  v28 = v5;
  v29 = v27;
  sub_2411AB3B8();

  (*(v64 + 104))(v4, *MEMORY[0x277CC9118], v65);
  sub_2411AB398();

  (*(v6 + 8))(v11, v28);
  (*(v13 + 8))(v18, v63);
  v30 = v78;
  v31 = v77;
  sub_241185748(v78, v77);
  sub_2411ABDA8();
  v32 = sub_2411ABD98();
  v33 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v67 = *(v67 + 80);
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  *(v34 + 16) = v32;
  *(v34 + 24) = v35;
  sub_2411857BC(v31, v34 + v33);
  sub_241185748(v30, v31);
  v36 = sub_2411ABD98();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v35;
  sub_2411857BC(v31, v37 + v33);
  v38 = sub_2411AB918();
  v65 = v62;
  v62[2] = v81;
  v62[1] = v82;
  LODWORD(v63) = v83;
  v39 = MEMORY[0x28223BE20](v38);
  MEMORY[0x28223BE20](v39);
  v40 = v68;
  (*(v68 + 16))(v66, v79, v75);
  v41 = sub_2411AB838();
  v43 = v42;
  v45 = v44;
  v62[0] = v46;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C78, &qword_2411ACC10);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C80, &qword_2411ACC18);
  v60 = sub_241186A54(&qword_27E533C88, &qword_27E533C78, &qword_2411ACC10, MEMORY[0x277CE14C0]);
  v61 = sub_241185A88();
  sub_2411AB8B8();
  sub_241185B0C(v41, v43, v45 & 1);

  (*(v40 + 8))(v79, v75);
  v47 = v78;
  v48 = sub_24118005C();
  swift_getKeyPath();
  v81 = v48;
  v79 = sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  LOBYTE(v36) = v48[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose];

  v87 = v36;
  v49 = v77;
  sub_241185748(v47, v77);
  v50 = (v67 + 16) & ~v67;
  v51 = swift_allocObject();
  sub_2411857BC(v49, v51 + v50);
  v81 = MEMORY[0x277CE1428];
  v82 = v64;
  v83 = v66;
  v84 = MEMORY[0x277CE1410];
  v85 = v60;
  v86 = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v70;
  v53 = v71;
  v55 = v76;
  sub_2411AB8C8();

  (*(v69 + 8))(v55, v53);
  v56 = sub_24118005C();
  swift_getKeyPath();
  v81 = v56;
  sub_2411AB468();

  LOBYTE(v55) = v56[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView];

  v87 = v55;
  sub_241185748(v47, v49);
  v57 = swift_allocObject();
  sub_2411857BC(v49, v57 + v50);
  v81 = v53;
  v82 = MEMORY[0x277D839B0];
  v83 = OpaqueTypeConformance2;
  v84 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v58 = v73;
  sub_2411AB8C8();

  return (*(v72 + 8))(v54, v58);
}

uint64_t sub_2411812A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v152 = a1;
  v120 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D68, &qword_2411ACE70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v118 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v119 = &v105 - v5;
  v110 = sub_2411AB6F8();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MessageComposeApexEntryView(0);
  v132 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v134 = v8;
  v151 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_2411AB378();
  v9 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v144 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2411AB448();
  v11 = *(v147 - 8);
  v12 = MEMORY[0x28223BE20](v147);
  v145 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v105 - v14;
  v153 = sub_2411ABCC8();
  v16 = *(v153 - 8);
  v17 = MEMORY[0x28223BE20](v153);
  v135 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v105 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v143 = &v105 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v105 - v24;
  v150 = sub_2411AB388();
  v154 = *(v150 - 8);
  v26 = MEMORY[0x28223BE20](v150);
  v114 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v112 = &v105 - v29;
  MEMORY[0x28223BE20](v28);
  v107 = &v105 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D70, &qword_2411ACE78);
  v32 = *(v31 - 8);
  v140 = v31;
  v141 = v32;
  v33 = MEMORY[0x28223BE20](v31);
  v117 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v142 = &v105 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v139 = &v105 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v149 = &v105 - v40;
  MEMORY[0x28223BE20](v39);
  v106 = &v105 - v41;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D78, &qword_2411ACE80);
  v115 = *(v116 - 8);
  v42 = MEMORY[0x28223BE20](v116);
  v137 = &v105 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v146 = &v105 - v44;
  sub_2411ABDA8();
  v113 = sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2411ABCB8();
  v133 = sub_2411856FC();
  v45 = sub_2411ABE98();
  v111 = v21;
  if (!v45)
  {
    v45 = [objc_opt_self() mainBundle];
  }

  v46 = v45;
  sub_2411AB438();
  v47 = *(v16 + 16);
  v130 = v16 + 16;
  v129 = v47;
  v47(v143, v25, v153);
  v48 = *(v11 + 16);
  v136 = v25;
  v49 = v147;
  v126 = v11 + 16;
  v125 = v48;
  v48(v145, v15, v147);
  v50 = [v46 bundleURL];
  v51 = v144;
  sub_2411AB3B8();

  v52 = *(v9 + 104);
  v124 = *MEMORY[0x277CC9118];
  v138 = v9 + 104;
  v123 = v52;
  v52(v51);
  v53 = v107;
  v54 = v15;
  sub_2411AB398();

  v55 = *(v11 + 8);
  v131 = v11 + 8;
  v122 = v55;
  v55(v15, v49);
  v56 = *(v16 + 8);
  v57 = v136;
  v136 = (v16 + 8);
  v121 = v56;
  v56(v57, v153);
  v58 = v151;
  sub_241185748(v152, v151);
  v59 = (*(v132 + 80) + 16) & ~*(v132 + 80);
  v128 = *(v132 + 80);
  v127 = &v134[v59];
  v60 = swift_allocObject();
  v132 = v59;
  v61 = sub_2411857BC(v58, v60 + v59);
  MEMORY[0x28223BE20](v61);
  *(&v105 - 2) = v53;
  v62 = v106;
  sub_2411AB8F8();
  v63 = *(v154 + 8);
  v154 += 8;
  v134 = v63;
  (v63)(v53, v150);
  v64 = v108;
  sub_2411AB6E8();
  sub_241186A54(&qword_27E533D80, &qword_27E533D70, &qword_2411ACE78, MEMORY[0x277CDF028]);
  v65 = v140;
  sub_2411AB898();
  v109[1](v64, v110);
  v66 = *(v141 + 8);
  v110 = v141 + 8;
  v109 = v66;
  (v66)(v62, v65);
  v67 = v111;
  sub_2411ABCB8();
  v68 = sub_2411ABE98();
  if (!v68)
  {
    v68 = [objc_opt_self() mainBundle];
  }

  v69 = v68;
  sub_2411AB438();
  v70 = v153;
  v129(v143, v67, v153);
  v71 = v147;
  v125(v145, v54, v147);
  v72 = [v69 bundleURL];
  v73 = v144;
  sub_2411AB3B8();

  v123(v73, v124, v148);
  v74 = v112;
  sub_2411AB398();

  v122(v54, v71);
  v121(v67, v70);
  v75 = v151;
  sub_241185748(v152, v151);
  v76 = swift_allocObject();
  v77 = sub_2411857BC(v75, v76 + v132);
  MEMORY[0x28223BE20](v77);
  *(&v105 - 2) = v74;
  sub_2411AB8F8();
  (v134)(v74, v150);
  sub_2411ABCB8();
  v78 = sub_2411ABE98();
  if (!v78)
  {
    v78 = [objc_opt_self() mainBundle];
  }

  v79 = v78;
  sub_2411AB438();
  v80 = v135;
  v81 = v153;
  v129(v143, v135, v153);
  v82 = v147;
  v125(v145, v54, v147);
  v83 = [v79 bundleURL];
  v84 = v144;
  sub_2411AB3B8();

  v123(v84, v124, v148);
  v85 = v114;
  sub_2411AB398();

  v122(v54, v82);
  v121(v80, v81);
  v86 = v119;
  sub_2411AB698();
  v87 = sub_2411AB6A8();
  (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  v88 = v151;
  sub_241185748(v152, v151);
  v89 = swift_allocObject();
  sub_2411857BC(v88, v89 + v132);
  v90 = sub_241186C60(v86, v118, &qword_27E533D68, &qword_2411ACE70);
  MEMORY[0x28223BE20](v90);
  *(&v105 - 2) = v85;
  v91 = v139;
  sub_2411AB8E8();
  sub_241186CE4(v86, &qword_27E533D68, &qword_2411ACE70);
  (v134)(v85, v150);
  v92 = v115;
  v93 = *(v115 + 16);
  v94 = v137;
  v95 = v116;
  v93(v137, v146, v116);
  v96 = *(v141 + 16);
  v97 = v140;
  v96(v142, v149, v140);
  v98 = v117;
  v96(v117, v91, v97);
  v99 = v120;
  v93(v120, v94, v95);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D88, &qword_2411ACE88);
  v101 = v142;
  v96(&v99[*(v100 + 48)], v142, v97);
  v96(&v99[*(v100 + 64)], v98, v97);
  v102 = v109;
  (v109)(v139, v97);
  (v102)(v149, v97);
  v103 = *(v92 + 8);
  v103(v146, v95);
  (v102)(v98, v97);
  (v102)(v101, v97);
  v103(v137, v95);
}

void sub_2411823E0()
{
  v0 = sub_2411ABA38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2411ABDA8();
  v4 = sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_24118005C();
  swift_getKeyPath();
  v20 = v5;
  v6 = sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v7 = *&v5[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask];

  if (v7)
  {
    v19[0] = v6;
    v19[1] = v4;

    v8 = sub_2411ABAA8();
    if (v8)
    {
      v9 = v8;
      sub_2411ABA18();
    }

    sub_2411ABA48();
    v14 = sub_2411ABAE8();
    v15 = sub_2411AB648();

    (*(v1 + 104))(v3, *MEMORY[0x277CEEB70], v0);
    sub_2411865A0(&qword_27E533F70, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
    sub_2411ABC88();

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v10 = sub_2411AB5A8();
    __swift_project_value_buffer(v10, qword_27E535AC0);
    v11 = sub_2411AB588();
    v12 = sub_2411ABE28();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24117E000, v11, v12, "SendFlow (Extension): Didn't log .userDidAcknowledgeAskToApprove checkpoint because messageComposeRequestTask was nil.", v13, 2u);
      MEMORY[0x245CDDA90](v13, -1, -1);
    }
  }

  v16 = sub_24118005C();
  v17 = v16;
  if (v16[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose] == 1)
  {
    v16[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose] = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v19[-2] = v17;
    LOBYTE(v19[-1]) = 1;
    v20 = v17;
    sub_2411AB458();
  }
}

void sub_24118283C()
{
  v0 = sub_2411ABA38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2411ABDA8();
  v4 = sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_24118005C();
  swift_getKeyPath();
  v20 = v5;
  v6 = sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v7 = *&v5[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask];

  if (v7)
  {
    v19[0] = v6;
    v19[1] = v4;

    v8 = sub_2411ABAA8();
    if (v8)
    {
      v9 = v8;
      sub_2411ABA18();
    }

    sub_2411ABA48();
    v14 = sub_2411ABAE8();
    v15 = sub_2411AB648();

    (*(v1 + 104))(v3, *MEMORY[0x277CEEB68], v0);
    sub_2411865A0(&qword_27E533F70, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
    sub_2411ABC88();

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v10 = sub_2411AB5A8();
    __swift_project_value_buffer(v10, qword_27E535AC0);
    v11 = sub_2411AB588();
    v12 = sub_2411ABE28();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24117E000, v11, v12, "SendFlow (Extension): Didn't log .userDidTapAskInPerson checkpoint because messageComposeRequestTask was nil.", v13, 2u);
      MEMORY[0x245CDDA90](v13, -1, -1);
    }
  }

  v16 = sub_24118005C();
  v17 = v16;
  if (v16[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView] == 1)
  {
    v16[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView] = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v19[-2] = v17;
    LOBYTE(v19[-1]) = 1;
    v20 = v17;
    sub_2411AB458();
  }
}

void sub_241182C98()
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_24118005C();
  sub_241187DF4(0, 0);
}

double sub_241182D60@<D0>(uint64_t a1@<X8>)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24118005C();
  swift_getKeyPath();
  *&v9 = v2;
  sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v4 = *&v2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent];
  v3 = *&v2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent + 8];

  if (v3)
  {
    *&v9 = v4;
    *(&v9 + 1) = v3;
    sub_2411869E8(v5, v6, v7);
    sub_2411AB848();
  }

  sub_2411AB7D8();

  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_241182F14(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v8 = *a2;
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v8)
  {
    sub_241182FE0(a5, a6);
  }
}

uint64_t sub_241182FE0(const char *a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_2411AB7F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v9 = sub_2411AB5A8();
  __swift_project_value_buffer(v9, qword_27E535AC0);
  v10 = sub_2411AB588();
  v11 = sub_2411ABE48();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24117E000, v10, v11, a1, v12, 2u);
    MEMORY[0x245CDDA90](v12, -1, -1);
  }

  v13 = sub_2411801C8(v8);
  MEMORY[0x28223BE20](v13);
  *(&v15 - 2) = v4;
  sub_2411AB7E8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2411831B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2411ABA38();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_2411ABDA8();
  v5[7] = sub_2411ABD98();
  v8 = sub_2411ABD48();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_2411832A4, v8, v7);
}

uint64_t sub_2411832A4()
{
  *(v0 + 80) = sub_24118005C();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_241183340;

  return sub_2411880BC();
}

uint64_t sub_241183340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 120) = v3;

  if (v3)
  {
    v6 = *(v5 + 64);
    v7 = *(v5 + 72);
    v8 = sub_241183A2C;
  }

  else
  {

    v6 = *(v5 + 64);
    v7 = *(v5 + 72);
    v8 = sub_241183460;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_241183460()
{
  v1 = v0[14];
  v2 = v0[15];

  v3 = v1;
  v4 = sub_2411ABB88();
  v5 = v0[14];
  if (v2)
  {

    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v6 = sub_2411AB5A8();
    __swift_project_value_buffer(v6, qword_27E535AC0);
    v7 = sub_2411AB588();
    v8 = sub_2411ABE28();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24117E000, v7, v8, "SendFlow (Extension): Didn't log .didFetchPayload metric because requestPayload was nil.", v9, 2u);
      MEMORY[0x245CDDA90](v9, -1, -1);
    }

    v10 = 0;
  }

  else
  {
    v11 = v4;
    v12 = v0[5];
    v13 = v0[6];
    v45 = v0[4];

    sub_2411ABA48();
    v14 = v11;
    v15 = sub_2411ABA78();
    sub_2411ABC98();

    v16 = sub_2411ABA78();
    v17 = sub_2411ABCA8();

    v18 = sub_2411AB648();
    v10 = v11;
    (*(v12 + 104))(v13, *MEMORY[0x277CEEB90], v45);
    sub_2411865A0(&qword_27E533F70, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
    sub_2411ABC88();

    (*(v12 + 8))(v13, v45);
  }

  v19 = v0[12];
  v20 = [objc_allocWithZone(MEMORY[0x277CD6888]) init];
  v21 = sub_24118005C();
  [v20 setMessageComposeDelegate_];

  [v20 _setCanEditRecipients_];
  v22 = v19;
  sub_2411ABB98();
  v23 = sub_2411ABCD8();

  [v20 setMessage:v22 withExtensionBundleIdentifier:v23];

  v24 = sub_2411ABD38();

  [v20 setRecipients_];

  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (!v26)
  {
    [v20 setPreferredPresentationStyle_];
  }

  v27 = v0[3];
  if (v27)
  {
    [v27 presentViewController:v20 animated:1 completion:0];
  }

  if (v10)
  {
    v46 = v0[14];
    v44 = v0[12];
    v29 = v0[5];
    v28 = v0[6];
    v43 = v0[4];
    sub_2411ABA48();
    v30 = sub_2411ABA78();
    sub_2411ABC98();

    v31 = sub_2411ABA78();
    v32 = sub_2411ABCA8();

    v33 = sub_2411AB648();
    (*(v29 + 104))(v28, *MEMORY[0x277CEEBB0], v43);
    sub_2411865A0(&qword_27E533F70, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
    sub_2411ABC88();

    (*(v29 + 8))(v28, v43);
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v34 = sub_2411AB5A8();
    __swift_project_value_buffer(v34, qword_27E535AC0);
    v35 = sub_2411AB588();
    v36 = sub_2411ABE28();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[14];
    v39 = v0[12];
    if (v37)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24117E000, v35, v36, "SendFlow (Extension): Didn't log .didPresentMessageCompose metric because requestPayload was nil.", v40, 2u);
      MEMORY[0x245CDDA90](v40, -1, -1);
    }
  }

  v41 = v0[1];

  return v41();
}

uint64_t sub_241183A2C()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AC0);
  v3 = v1;
  v4 = sub_2411AB588();
  v5 = sub_2411ABE28();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Extension): failed to display Message Compose error %@", v7, 0xCu);
    sub_241186CE4(v8, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v8, -1, -1);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  v11 = *(v0 + 120);

  *(v0 + 128) = sub_24118005C();
  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_241183C14;

  return sub_2411885BC(v11);
}

uint64_t sub_241183C14()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_241183D70, v5, v4);
}

uint64_t sub_241183D70()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241183DE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[2] = a4;
  v20 = a5;
  v19[1] = a3;
  v7 = type metadata accessor for MessageComposeApexEntryView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v19 - v11;
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_2411ABDD8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_241185748(a2, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1;
  v15 = sub_2411ABD98();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = MEMORY[0x277D85700];
  sub_2411857BC(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_241192B80(0, 0, v12, v20, v17);
}

uint64_t sub_241184024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2411ABDA8();
  v5[4] = sub_2411ABD98();
  v7 = sub_2411ABD48();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_2411840BC, v7, v6);
}

uint64_t sub_2411840BC()
{
  v1 = sub_24118005C();
  v2 = sub_241188B30();

  if (v2)
  {

    v3 = [objc_opt_self() viewControllerForNewContact_];
    v4 = sub_24118005C();
    [v3 setDelegate_];

    v5 = sub_24118005C();
    v6 = *&v5[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_contactStore];

    [v3 setContactStore_];
    v7 = sub_24118005C();
    v8 = *&v7[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_downtimeContainerFetcher];

    v9 = [v8 downtimeWhitelistContainer];
    [v3 setParentContainer_];

    v10 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (!v12)
    {
      [v10 setModalPresentationStyle_];
    }

    v13 = v0[3];
    if (v13)
    {
      [v13 presentViewController:v10 animated:1 completion:0];
    }

    v14 = v0[1];

    return v14();
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v16 = sub_2411AB5A8();
    __swift_project_value_buffer(v16, qword_27E535AC0);
    v17 = sub_2411AB588();
    v18 = sub_2411ABE28();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24117E000, v17, v18, "SendFlow (Extension): contact was nil", v19, 2u);
      MEMORY[0x245CDDA90](v19, -1, -1);
    }

    v20 = sub_24118005C();
    v0[7] = v20;
    sub_241186420(v20, v21, v22);
    v23 = swift_allocError();
    v0[8] = v23;
    *v24 = 0;
    v25 = swift_task_alloc();
    v0[9] = v25;
    *v25 = v0;
    v25[1] = sub_241184424;

    return sub_2411885BC(v23);
  }
}

uint64_t sub_241184424()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_241184580, v5, v4);
}

uint64_t sub_241184580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241184608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_2411ABA38();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_2411ABDA8();
  v5[8] = sub_2411ABD98();
  v8 = sub_2411ABD48();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x2822009F8](sub_2411846FC, v8, v7);
}

uint64_t sub_2411846FC()
{
  v18 = v0;
  if (v0[3] == 1)
  {
    v1 = v0[4];
    swift_getKeyPath();
    v0[2] = v1;
    sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
    sub_2411AB468();

    if (*(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask))
    {

      v2 = sub_2411ABAA8();
      if (v2)
      {
        v3 = v2;
        sub_2411ABA18();
      }

      v11 = v0[6];
      v10 = v0[7];
      v12 = v0[5];
      sub_2411ABA48();
      v13 = sub_2411ABAE8();
      v14 = sub_2411AB648();

      (*(v11 + 104))(v10, *MEMORY[0x277CEEBC8], v12);
      sub_2411865A0(&qword_27E533F70, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
      sub_2411ABC88();

      (*(v11 + 8))(v10, v12);
    }

    else
    {
      if (qword_27E533C20 != -1)
      {
        swift_once();
      }

      v5 = sub_2411AB5A8();
      __swift_project_value_buffer(v5, qword_27E535AC0);
      v6 = sub_2411AB588();
      v7 = sub_2411ABE28();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v17 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_24119F950(0xD00000000000002ELL, 0x80000002411AE4D0, &v17);
        _os_log_impl(&dword_24117E000, v6, v7, "%s Didn't log .userDidSendViaMessageCompose checkpoint because messageComposeRequestTask was nil.", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x245CDDA90](v9, -1, -1);
        MEMORY[0x245CDDA90](v8, -1, -1);
      }
    }

    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_241184AF8;

    return sub_24118944C();
  }

  else
  {
    sub_2411ABB78();
    swift_allocObject();
    v0[12] = sub_2411ABB68();
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_241184CDC;

    return MEMORY[0x2821413A8](0);
  }
}

uint64_t sub_241184AF8()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_241184C18, v3, v2);
}

uint64_t sub_241184C18()
{
  v1 = v0[3];
  sub_2411ABB78();
  swift_allocObject();
  v0[12] = sub_2411ABB68();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_241184CDC;

  return MEMORY[0x2821413A8](v1 == 1);
}

uint64_t sub_241184CDC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_2411850A4;
  }

  else
  {
    v5 = sub_241184E18;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_241184E18()
{

  if (v0[3] == 2)
  {
    sub_241186420(v1, v2, v3);
    v4 = swift_allocError();
    *v5 = 1;
  }

  else
  {
    v4 = 0;
  }

  v0[15] = v4;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_241184EF8;

  return sub_2411885BC(v4);
}

uint64_t sub_241184EF8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24118503C, v4, v3);
}

uint64_t sub_24118503C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2411850A4()
{
  v21 = v0;

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AC0);
  v3 = v1;
  v4 = sub_2411AB588();
  v5 = sub_2411ABE28();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_24119F950(0xD00000000000002ELL, 0x80000002411AE4D0, &v20);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_24117E000, v4, v5, "%s Error calling messagesComposeDidFinish: %@", v8, 0x16u);
    sub_241186CE4(v9, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CDDA90](v10, -1, -1);
    MEMORY[0x245CDDA90](v8, -1, -1);
  }

  else
  {
  }

  if (v0[3] == 2)
  {
    sub_241186420(v13, v14, v15);
    v16 = swift_allocError();
    *v17 = 1;
  }

  else
  {
    v16 = 0;
  }

  v0[15] = v16;
  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_241184EF8;

  return sub_2411885BC(v16);
}

void *sub_24118546C@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_241186DA4(a2, a3, a4);
  result = sub_2411AB738();
  *a1 = v6;
  return result;
}

uint64_t sub_2411854BC(id *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  sub_241186DA4(a1, a2, a3);
  v4 = v3;
  return sub_2411AB748();
}

uint64_t type metadata accessor for MessageComposeApexEntryView(uint64_t a1)
{
  result = qword_27E533CB8;
  if (!qword_27E533CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2411855B4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_2411865A0(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  *a4 = *(v6 + *a3);
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

unint64_t sub_2411856FC()
{
  result = qword_27E533C70;
  if (!qword_27E533C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E533C70);
  }

  return result;
}

uint64_t sub_241185748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageComposeApexEntryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2411857B0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2411857BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageComposeApexEntryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241185820@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for MessageComposeApexEntryView(0);

  return sub_241180450(a1);
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for MessageComposeApexEntryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  sub_2411857B0(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C58, &qword_2411ACBF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2411AB7F8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2411859BC(char *a1)
{
  type metadata accessor for MessageComposeApexEntryView(0);

  return sub_24118059C(a1);
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

unint64_t sub_241185A88()
{
  result = qword_27E533C90;
  if (!qword_27E533C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533C80, &qword_2411ACC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533C90);
  }

  return result;
}

uint64_t sub_241185B0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_241185C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E533CA0;
  if (!qword_27E533CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533CA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SendRequestFlowError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SendRequestFlowError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_241185DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E533CA8, &unk_2411ACDB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_241185EC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E533CA8, &unk_2411ACDB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_241185F6C(uint64_t a1)
{
  sub_241186028(319, &qword_27E533CC8, type metadata accessor for SendRequestFlowStore);
  if (v1 <= 0x3F)
  {
    sub_241186028(319, &unk_27E533CD0, MEMORY[0x277CDE530]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_241186028(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2411AB6B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24118607C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533C68, &qword_2411ACC08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533C60, &qword_2411ACC00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533C78, &qword_2411ACC10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533C80, &qword_2411ACC18);
  sub_241186A54(&qword_27E533C88, &qword_27E533C78, &qword_2411ACC10, MEMORY[0x277CE14C0]);
  sub_241185A88();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2411861D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_241186218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2411862D8;

  return sub_241184608(a1, v4, v5, v7, v6);
}

uint64_t sub_2411862D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_2411863CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
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

unint64_t sub_241186420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E533D48;
  if (!qword_27E533D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533D48);
  }

  return result;
}

uint64_t sub_241186474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2411AB388();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_2411AB838();
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;
  return result;
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

uint64_t sub_2411865A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_241186628(uint64_t a1)
{
  v4 = *(type metadata accessor for MessageComposeApexEntryView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_241186E60;

  return sub_241184024(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_35Tm()
{
  v1 = (type metadata accessor for MessageComposeApexEntryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();
  sub_2411857B0(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C58, &qword_2411ACBF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2411AB7F8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

uint64_t sub_2411868C0(uint64_t a1)
{
  v4 = *(type metadata accessor for MessageComposeApexEntryView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_241186E60;

  return sub_2411831B0(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_2411869E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E533D60;
  if (!qword_27E533D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533D60);
  }

  return result;
}

uint64_t sub_241186A54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_241186AB4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MessageComposeApexEntryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_10Tm()
{
  v1 = (type metadata accessor for MessageComposeApexEntryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_2411857B0(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533C58, &qword_2411ACBF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2411AB7F8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_241186C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_241186CE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_241186DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E533D90;
  if (!qword_27E533D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533D90);
  }

  return result;
}

void type metadata accessor for MessageComposeResult()
{
  if (!qword_27E533D98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E533D98);
    }
  }
}

uint64_t MessageComposeExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_2411AB4D8();
}

uint64_t sub_241187008()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t MessageComposeScene.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x2D6567617373656DLL;
  a3[1] = 0xEF65736F706D6F63;
  a3[2] = result;
  a3[3] = a2;
  return result;
}

uint64_t MessageComposeScene.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = swift_allocObject();
  v6 = *(a1 + 24);
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 24) = v6;
  *(v5 + 32) = v3;
  *(v5 + 40) = *(v1 + 1);
  *(v5 + 56) = v4;
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533E00, &qword_2411ACF00);
  sub_2411AB6D8();
  sub_2411876D4();
  swift_getWitnessTable();
  return sub_2411AB4B8();
}

uint64_t sub_241187248@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, char *a5@<X8>)
{
  v25 = a4;
  v26 = a5;
  v24 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533E00, &qword_2411ACF00);
  v9 = sub_2411AB6D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  sub_2411ABDA8();
  v23[1] = sub_2411ABD98();
  sub_2411ABD48();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
  swift_getKeyPath();
  if (qword_27E533C10 != -1)
  {
    swift_once();
  }

  v29 = qword_27E535AB0;
  v17 = qword_27E535AB0;
  v18 = v25;
  sub_2411AB878();

  (*(v24 + 8))(v8, a3);
  v19 = sub_2411876D4();
  v27 = v18;
  v28 = v19;
  swift_getWitnessTable();
  v20 = *(v10 + 16);
  v20(v15, v13, v9);
  v21 = *(v10 + 8);
  v21(v13, v9);
  v20(v26, v15, v9);
  v21(v15, v9);
}

uint64_t sub_241187558()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2411875A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_2411ABDD8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_2411ABDA8();
  v6 = a1;
  v7 = sub_2411ABD98();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_241192B80(0, 0, v4, &unk_2411AD020, v8);

  return 1;
}

unint64_t sub_2411876D4()
{
  result = qword_27E533E08[0];
  if (!qword_27E533E08[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E533E00, &qword_2411ACF00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E533E08);
  }

  return result;
}

uint64_t sub_241187738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2411877B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2411ABDA8();
  *(v4 + 24) = sub_2411ABD98();
  v6 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_241187850, v6, v5);
}

uint64_t sub_241187850()
{

  if (qword_27E533C10 != -1)
  {
    swift_once();
  }

  sub_241189E34(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24118790C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_241187960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2411879A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_241187A0C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241187A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2411862D8;

  return sub_2411877B8(a1, v4, v5, v6);
}

uint64_t sub_241187B38()
{
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v1 = *(v0 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent);

  return v1;
}

uint64_t sub_241187BF4()
{
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();
}

uint64_t sub_241187CF0(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
    sub_2411AB458();
  }

  return result;
}

uint64_t sub_241187DF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v9 = sub_2411AB5A8();
  __swift_project_value_buffer(v9, qword_27E535AC0);
  v10 = sub_2411AB588();
  v11 = sub_2411ABE48();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24117E000, v10, v11, "SendFlow (Extension): user tapped cancel on ask prompt", v12, 2u);
    MEMORY[0x245CDDA90](v12, -1, -1);
  }

  v13 = sub_2411ABDD8();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_2411ABDA8();
  v14 = v3;
  sub_2411927DC(a1, a2);
  v15 = sub_2411ABD98();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = a1;
  v16[6] = a2;
  sub_241192B80(0, 0, v8, &unk_2411AD3C0, v16);
}

uint64_t sub_24118801C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  return *(v2 + *a2);
}

uint64_t sub_2411880BC()
{
  v1[3] = v0;
  sub_2411ABDA8();
  v1[4] = sub_2411ABD98();
  v3 = sub_2411ABD48();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_241188154, v3, v2);
}

uint64_t sub_241188154()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): composing message content", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[3];

  swift_getKeyPath();
  v0[2] = v5;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v6 = *(v5 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
  v0[7] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_241188398;

    return sub_24118A8C8();
  }

  else
  {

    sub_241191650(v9, v10, v11);
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_241188398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = v8[5];
    v10 = v8[6];
    v11 = sub_24118854C;
  }

  else
  {
    v8[10] = a3;
    v8[11] = a2;
    v8[12] = a1;
    v9 = v8[5];
    v10 = v8[6];
    v11 = sub_2411884D4;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2411884D4()
{

  v1 = v0[1];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  return v1(v2, v3, v4);
}

uint64_t sub_24118854C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2411885BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_2411ABDA8();
  v2[5] = sub_2411ABD98();
  v4 = sub_2411ABD48();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_241188658, v4, v3);
}

uint64_t sub_241188658()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  v0[8] = __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): dismiss called", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[3];
  v6 = v0[2];

  v0[9] = sub_2411ABD98();
  v7 = swift_task_alloc();
  v0[10] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_241188820;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_241188820()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_2411889AC;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_241188944;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_241188944()
{

  sub_24118BC94();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2411889AC()
{
  v1 = *(v0 + 96);

  v2 = v1;
  v3 = sub_2411AB588();
  v4 = sub_2411ABE28();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24117E000, v3, v4, "SendFlow (Extension): error sending dismiss message to host %@", v7, 0xCu);
    sub_241186CE4(v8, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v8, -1, -1);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  else
  {
  }

  sub_24118BC94();
  v11 = *(v0 + 8);

  return v11();
}

id sub_241188B30()
{
  v1 = v0;
  v2 = sub_2411ABB28();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FD0, &unk_2411AD390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v52 - v7);
  swift_getKeyPath();
  v60 = v0;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v9 = OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask;
  if (!*(v0 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask))
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v13 = sub_2411AB5A8();
    __swift_project_value_buffer(v13, qword_27E535AC0);
    v14 = sub_2411AB588();
    v15 = sub_2411ABE28();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24117E000, v14, v15, "SendFlow (Extension): question was nil", v16, 2u);
      MEMORY[0x245CDDA90](v16, -1, -1);
    }

    return 0;
  }

  v10 = sub_2411ABAE8();

  v59 = v10;
  sub_2411AB5B8();
  v11 = sub_2411AB608();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_241186CE4(v8, &qword_27E533FD0, &unk_2411AD390);
LABEL_20:
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v26 = sub_2411AB5A8();
    __swift_project_value_buffer(v26, qword_27E535AC0);
    v27 = sub_2411AB588();
    v28 = sub_2411ABE28();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24117E000, v27, v28, "SendFlow (Extension): case let .communication = question.askToTopicMetadata returned nil", v29, 2u);
      MEMORY[0x245CDDA90](v29, -1, -1);
    }

    return 0;
  }

  if ((*(v12 + 88))(v8, v11) != *MEMORY[0x277CEEAD0])
  {
    (*(v12 + 8))(v8, v11);
    goto LABEL_20;
  }

  (*(v12 + 96))(v8, v11);
  v17 = *v8;
  v18 = sub_2411ABB38();
  if (!*(v18 + 16))
  {

    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v31 = sub_2411AB5A8();
    __swift_project_value_buffer(v31, qword_27E535AC0);
    v32 = sub_2411AB588();
    v33 = sub_2411ABE28();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_24117E000, v32, v33, "SendFlow (Extension): handle was nil", v34, 2u);
      MEMORY[0x245CDDA90](v34, -1, -1);
    }

    return 0;
  }

  (*(v3 + 16))(v5, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

  v19 = sub_2411ABB18();
  (*(v3 + 8))(v5, v2);
  v20 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  swift_getKeyPath();
  v60 = v1;
  sub_2411AB468();

  if (!*(v1 + v9) || (, v21 = sub_2411ABAA8(), , !v21) || (v35 = sub_2411ABA28(), v37 = v36, v21, !v37))
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v22 = sub_2411AB5A8();
    __swift_project_value_buffer(v22, qword_27E535AC0);
    v23 = sub_2411AB588();
    v24 = sub_2411ABE28();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24117E000, v23, v24, "SendFlow (Extension): clientBundleIdentifier was nil", v25, 2u);
      MEMORY[0x245CDDA90](v25, -1, -1);
    }

    return 0;
  }

  sub_241192790();

  v38 = sub_24118B718(v35, v37, 1);
  if (v38)
  {
    v58 = v38;
    v40 = [v38 localizedName];
    sub_2411ABCF8();
    v39 = v41;
  }

  else
  {
    v39 = 0;
    v58 = 0;
  }

  v55 = MEMORY[0x245CDCED0]();
  v56 = MEMORY[0x245CDCED0]();
  v57 = v42;
  if (!v39)
  {
  }

  v54 = MEMORY[0x245CDCED0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FE0, &qword_2411AD9C0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2411AD060;
  *(v43 + 32) = v35;
  *(v43 + 40) = v37;
  v53 = objc_allocWithZone(MEMORY[0x277CBDBB0]);
  v44 = sub_2411ABCD8();

  v45 = sub_2411ABCD8();

  v46 = sub_2411ABCD8();

  v47 = sub_2411ABCD8();

  v48 = sub_2411ABD38();

  v49 = [v53 initWithUrlString:0 username:v44 userIdentifier:v45 service:v46 displayname:v47 teamIdentifier:0 bundleIdentifiers:v48];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FE8, &qword_2411AD3A0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2411AD070;
  *(v50 + 32) = [objc_allocWithZone(MEMORY[0x277CBDB20]) initWithLabel:0 value:v49];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E533FF0, &qword_2411AD3A8);
  v51 = sub_2411ABD38();

  [v20 setSocialProfiles_];

  return v20;
}

uint64_t sub_24118944C()
{
  v1[12] = v0;
  sub_2411ABDA8();
  v1[13] = sub_2411ABD98();
  v3 = sub_2411ABD48();
  v1[14] = v3;
  v1[15] = v2;

  return MEMORY[0x2822009F8](sub_2411894E4, v3, v2);
}

uint64_t sub_2411894E4()
{
  v21 = v0;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  v0[16] = __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): marking message as sent.", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[12];

  swift_getKeyPath();
  v0[10] = v5;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v6 = *(v5 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
  if (v6)
  {
    v7 = v0[12];
    v0[17] = *(v6 + 16);
    swift_getKeyPath();
    v0[11] = v7;

    sub_2411AB468();

    v8 = OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__daemonConnectionManager;
    swift_beginAccess();
    sub_2411920FC(v7 + v8, (v0 + 2));
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v9);
    v11 = sub_2411ABA98();
    v0[18] = v11;
    v16 = v11;
    v17 = swift_task_alloc();
    v0[19] = v17;
    *v17 = v0;
    v17[1] = sub_241189A00;

    return MEMORY[0x282141428](v16, v9, v10);
  }

  else
  {

    v12 = sub_2411AB588();
    v13 = sub_2411ABE28();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_24119F950(0xD000000000000013, 0x80000002411AEAE0, &v20);
      _os_log_impl(&dword_24117E000, v12, v13, "SendFlow (Extension): %s messageComposeRequest is nil. This is unexpected.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245CDDA90](v15, -1, -1);
      MEMORY[0x245CDDA90](v14, -1, -1);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_241189A00()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_241189C08;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_241189B1C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_241189B1C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = sub_2411AB588();
  v2 = sub_2411ABE48();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24117E000, v1, v2, "SendFlow (Extension): marked message as sent.", v3, 2u);
    MEMORY[0x245CDDA90](v3, -1, -1);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_241189C08()
{
  v1 = v0[18];

  v2 = v0[20];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v2;
  v4 = sub_2411AB588();
  v5 = sub_2411ABE48();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Extension): failed to mark message as sent: %@", v6, 0xCu);
    sub_241186CE4(v7, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v7, -1, -1);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  else
  {
  }

  v10 = sub_2411AB588();
  v11 = sub_2411ABE48();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24117E000, v10, v11, "SendFlow (Extension): marked message as sent.", v12, 2u);
    MEMORY[0x245CDDA90](v12, -1, -1);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_241189DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_241186DA4(a1, a2, a3);
  sub_2411AB738();
  return v4;
}

id sub_241189E34(void *a1)
{
  v2 = v1;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v3 = sub_2411AB5A8();
  __swift_project_value_buffer(v3, qword_27E535AC0);
  v4 = sub_2411AB588();
  v5 = sub_2411ABE48();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Extension): configuring XPC connection", v6, 2u);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  [a1 setExportedObject_];
  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v9 = [v7 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 activate];
  v10 = *(v2 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection);
  *(v2 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection) = a1;

  return a1;
}

uint64_t sub_241189FF0()
{
  v0 = sub_2411ABC08();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-1] - v5;
  sub_2411ABBF8();
  v12 = &type metadata for KnownClientVerifier;
  v13 = &off_2852EF3E0;
  v7 = objc_allocWithZone(type metadata accessor for SendRequestFlowStore(0));
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  (*(v1 + 16))(v4, v6, v0);
  v8 = sub_241191984(v4, v7);
  (*(v1 + 8))(v6, v0);
  result = __swift_destroy_boxed_opaque_existential_0(v11);
  qword_27E535AB0 = v8;
  return result;
}

uint64_t sub_24118A14C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  *a2 = *(v3 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
}

uint64_t sub_24118A200(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB458();
}

uint64_t sub_24118A2CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v4 = *(v3 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent);
  a2[1] = v4;
}

uint64_t sub_24118A384(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB458();
}

uint64_t sub_24118A454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_24118A4B0(uint64_t a1, uint64_t *a2)
{
  sub_2411920FC(a1, v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  v3[3] = &type metadata for KnownClientVerifier;
  v3[4] = &off_2852EF3E0;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB458();

  __swift_destroy_boxed_opaque_existential_0(v3);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_24118A5CC@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v6 = *a2;
  swift_beginAccess();
  return sub_2411920FC(v3 + v6, a3);
}

uint64_t sub_24118A694@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v7 = *a3;
  swift_beginAccess();
  return sub_2411920FC(v6 + v7, a4);
}

uint64_t sub_24118A760(uint64_t a1, uint64_t *a2)
{
  sub_2411920FC(a1, v3);
  swift_getKeyPath();
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB458();

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_24118A840(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + v5), a2);
  return swift_endAccess();
}

uint64_t sub_24118A8C8()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v1[9] = swift_task_alloc();
  v1[10] = sub_2411ABDA8();
  v1[11] = sub_2411ABD98();
  v3 = sub_2411ABD48();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_24118A99C, v3, v2);
}

uint64_t sub_24118A99C()
{
  v1 = v0[8];
  v2 = *(v1 + 24);
  v0[14] = v2;
  if (v2)
  {
    v3 = qword_27E533C20;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_2411AB5A8();
    v0[15] = __swift_project_value_buffer(v4, qword_27E535AC0);
    v5 = sub_2411AB588();
    v6 = sub_2411ABE48();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24117E000, v5, v6, "SendFlow (Extension): message content fetch in flight", v7, 2u);
      MEMORY[0x245CDDA90](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    v0[16] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F90, &unk_2411AD2D0);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
    *v8 = v0;
    v8[1] = sub_24118AC98;
    v11 = MEMORY[0x277D84950];
    v12 = v0 + 5;
    v13 = v2;
  }

  else
  {
    v14 = v0[9];
    v15 = sub_2411ABDD8();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

    v16 = sub_2411ABD98();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v1;
    v19 = sub_24118FD04(0, 0, v14, &unk_2411AD2C8, v17);
    v0[18] = v19;
    *(v1 + 24) = v19;

    v20 = swift_task_alloc();
    v0[19] = v20;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F90, &unk_2411AD2D0);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
    *v20 = v0;
    v20[1] = sub_24118AEF8;
    v11 = MEMORY[0x277D84950];
    v12 = v0 + 2;
    v13 = v19;
  }

  return MEMORY[0x282200430](v12, v13, v9, v10, v11);
}

uint64_t sub_24118AC98()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_24118B0C8;
  }

  else
  {
    v5 = sub_24118ADD4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24118ADD4()
{

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = sub_2411AB588();
  v5 = sub_2411ABE48();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Extension): message content fetched", v6, 2u);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  else
  {
  }

  v7 = v0[1];

  return v7(v1, v2, v3);
}

uint64_t sub_24118AEF8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_24118B140;
  }

  else
  {
    v5 = sub_24118B034;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24118B034()
{

  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];

  v4 = v0[1];

  return v4(v2, v1, v3);
}

uint64_t sub_24118B0C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24118B140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24118B1B8()
{
  v1[2] = v0;
  sub_2411ABDA8();
  v1[3] = sub_2411ABD98();
  v3 = sub_2411ABD48();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_24118B250, v3, v2);
}

uint64_t sub_24118B250()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  v0[6] = __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): fetching message compose payload...", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  sub_2411ABB78();
  swift_allocObject();
  v0[7] = sub_2411ABB68();
  v5 = sub_2411ABA98();
  v0[8] = v5;
  v6 = v5;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_24118B434;

  return MEMORY[0x2821413A0](v6);
}

uint64_t sub_24118B434(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = sub_24118B6A4;
  }

  else
  {

    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = sub_24118B550;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_24118B550()
{
  v1 = v0[11];

  v2 = sub_2411ABB88();
  v3 = v0[10];
  if (v1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v2;

    v7 = sub_2411AB588();
    v8 = sub_2411ABE48();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24117E000, v7, v8, "SendFlow (Extension): fetched message compose payload", v9, 2u);
      MEMORY[0x245CDDA90](v9, -1, -1);
    }

    v10 = v0[1];

    return v10(v6);
  }
}

uint64_t sub_24118B6A4()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

id sub_24118B718(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2411ABCD8();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_2411AB368();

    swift_willThrow();
  }

  return v5;
}

void sub_24118B800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  sub_2411ABDA8();
  v9 = sub_2411ABD98();
  sub_2411ABD48();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a2 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection);
  if (v13)
  {
    v35 = a1;
    v36 = v9;
    v32 = *(v6 + 16);
    v32(v8, a1, v5);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    v16 = v5;
    v17 = v15;
    v18 = *(v6 + 32);
    v33 = v16;
    v30 = v18;
    (v18)(v15 + v14, v8);
    v43 = sub_241192598;
    v44 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2411A1938;
    v42 = &block_descriptor_81;
    v19 = _Block_copy(&aBlock);
    v34 = v17;

    v20 = v13;

    v31 = v20;
    v21 = [v20 remoteObjectProxyWithErrorHandler_];
    _Block_release(v19);
    sub_2411ABED8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC8, &qword_2411AD380);
    swift_dynamicCast();
    v22 = v38;
    if (v37)
    {
      v23 = sub_2411AB358();
    }

    else
    {
      v23 = 0;
    }

    v26 = v33;
    v32(v8, v35, v33);
    v27 = swift_allocObject();
    v30(v27 + v14, v8, v26);
    v43 = sub_2411926C0;
    v44 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_24118BC50;
    v42 = &block_descriptor_87;
    v28 = _Block_copy(&aBlock);

    [v22 dismissWithPropagatingError:v23 reply:v28];
    _Block_release(v28);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_241191650(isCurrentExecutor, v11, v12);
    v24 = swift_allocError();
    *v25 = 0;
    aBlock = v24;
    sub_2411ABD68();
  }
}

uint64_t sub_24118BC00(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
  return sub_2411ABD68();
}

uint64_t sub_24118BC50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_24118BC94()
{
  v1 = v0;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AC0);
  v3 = sub_2411AB588();
  v4 = sub_2411ABE48();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24117E000, v3, v4, "SendFlow (Extension): invalidating", v5, 2u);
    MEMORY[0x245CDDA90](v5, -1, -1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB458();

  if (*(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose))
  {
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    sub_2411AB458();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose) = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView))
  {
    v8 = swift_getKeyPath();
    MEMORY[0x28223BE20](v8);
    sub_2411AB458();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView) = 0;
  }

  v9 = swift_getKeyPath();
  MEMORY[0x28223BE20](v9);
  sub_2411AB458();

  result = *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

id sub_24118C08C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SendRequestFlowStore(uint64_t a1)
{
  result = qword_27E533EE8;
  if (!qword_27E533EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24118C1F8(uint64_t a1)
{
  result = sub_2411AB4A8();
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

uint64_t sub_24118C2C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_2411ABDA8();
  v3[5] = sub_2411ABD98();
  v5 = sub_2411ABD48();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_24118C364, v5, v4);
}

uint64_t sub_24118C364()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) dismissViewControllerAnimated:1 completion:0];
  if (v1)
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v2 = sub_2411AB5A8();
    *(v0 + 64) = __swift_project_value_buffer(v2, qword_27E535AC0);
    v3 = sub_2411AB588();
    v4 = sub_2411ABE48();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24117E000, v3, v4, "SendFlow (Extension): added a contact via ScreenTime passcode view", v5, 2u);
      MEMORY[0x245CDDA90](v5, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_24118C544;

    return sub_24118CAA8();
  }

  else
  {
    *(v0 + 88) = 0;
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_24118C790;

    return sub_2411885BC(0);
  }
}

uint64_t sub_24118C544()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_24118C91C;
  }

  else
  {
    v5 = sub_24118C680;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24118C680(uint64_t a1)
{
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): delivered default response", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  *(v1 + 88) = 0;
  v5 = swift_task_alloc();
  *(v1 + 96) = v5;
  *v5 = v1;
  v5[1] = sub_24118C790;

  return sub_2411885BC(0);
}

uint64_t sub_24118C790()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24118C8B0, v3, v2);
}

uint64_t sub_24118C8B0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24118C91C()
{
  v1 = v0[10];
  v2 = v1;
  v3 = sub_2411AB588();
  v4 = sub_2411ABE48();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24117E000, v3, v4, "SendFlow (Extension): error delivering default response: %@", v6, 0xCu);
    sub_241186CE4(v7, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v7, -1, -1);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  v10 = v0[10];

  v0[11] = v10;
  v11 = swift_task_alloc();
  v0[12] = v11;
  *v11 = v0;
  v11[1] = sub_24118C790;

  return sub_2411885BC(v10);
}

uint64_t sub_24118CAA8()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v1[6] = swift_task_alloc();
  v1[7] = sub_2411ABDA8();
  v1[8] = sub_2411ABD98();
  v3 = sub_2411ABD48();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x2822009F8](sub_24118CB7C, v3, v2);
}

uint64_t sub_24118CB7C()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[4] = v1;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v2 = *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
  v0[11] = v2;
  if (v2)
  {

    v3 = sub_2411ABAE8();
    v4 = sub_2411AB628();
    v0[12] = v4;

    if (v4)
    {
      v5 = sub_2411ABAA8();
      if (v5)
      {
        v6 = v5;
        v7 = sub_2411ABA18();
        v9 = v8;

        v0[13] = v7;
        v0[14] = v9;
        if (v9)
        {
          v10 = sub_2411AC028();
          v12 = v11;
          v13 = swift_task_alloc();
          v0[15] = v13;
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FA8, &qword_2411AD320);
          *v13 = v0;
          v13[1] = sub_24118CFA8;

          return MEMORY[0x2821372C0](v0 + 2, v10, v12, &unk_2411AD318, 0, v14);
        }
      }

      if (qword_27E533C20 != -1)
      {
        swift_once();
      }

      v19 = sub_2411AB5A8();
      __swift_project_value_buffer(v19, qword_27E535AC0);
      v20 = sub_2411AB588();
      v21 = sub_2411ABE28();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_24117E000, v20, v21, "SendFlow (Extension): could not deliver response. client bundle identifier was nil", v22, 2u);
        MEMORY[0x245CDDA90](v22, -1, -1);
      }

      sub_241191650(v23, v24, v25);
      swift_allocError();
      *v26 = 4;
      swift_willThrow();
    }

    else
    {

      if (qword_27E533C20 != -1)
      {
        swift_once();
      }

      v27 = sub_2411AB5A8();
      __swift_project_value_buffer(v27, qword_27E535AC0);
      v28 = sub_2411AB588();
      v29 = sub_2411ABE28();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_24117E000, v28, v29, "SendFlow (Extension): could not deliver response. default answer choice was nil", v30, 2u);
        MEMORY[0x245CDDA90](v30, -1, -1);
      }

      sub_241191650(v31, v32, v33);
      swift_allocError();
      *v34 = 3;
      swift_willThrow();
    }
  }

  else
  {

    sub_241191650(v15, v16, v17);
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_24118CFA8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_24118D488;
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_24118D0C4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24118D0C4(uint64_t a1)
{
  v2 = v1[13];
  v21 = v1[14];
  v3 = v1[12];
  v4 = v1[6];
  v5 = v1[5];
  sub_2411ABAE8();
  v6 = objc_allocWithZone(sub_2411AB9B8());
  v7 = v3;
  v8 = sub_2411AB9A8();
  v1[17] = v8;
  v9 = sub_2411ABDD8();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = v5;
  v11 = v8;
  v12 = sub_2411ABD98();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  v13[5] = v11;
  v13[6] = v2;
  v13[7] = v21;
  v15 = sub_24118FFB0(0, 0, v4, &unk_2411AD330, v13);
  v1[18] = v15;
  v16 = swift_task_alloc();
  v1[19] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
  *v16 = v1;
  v16[1] = sub_24118D2C8;
  v18 = MEMORY[0x277D84950];
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v17, v15, v19, v17, v18);
}

uint64_t sub_24118D2C8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_24118D504;
  }

  else
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_24118D3E4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24118D3E4()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24118D488()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24118D504()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24118D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_2411ABDA8();
  v6[3] = sub_2411ABD98();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_24118D658;

  return sub_24118C2C8(a5, a6);
}

uint64_t sub_24118D658()
{

  v1 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_24118D794, v1, v0);
}

uint64_t sub_24118D794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24118D9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = sub_2411ABDA8();
  v6[5] = sub_2411ABD98();
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_24118DA80;

  return sub_2411885BC(0);
}

uint64_t sub_24118DA80()
{

  v1 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_24118DBBC, v1, v0);
}

uint64_t sub_24118DBBC()
{
  v1 = *(v0 + 16);

  if (v1)
  {
    (*(v0 + 16))(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

id sub_24118DC30()
{
  if (qword_27E533C10 != -1)
  {
    swift_once();
  }

  v1 = qword_27E535AB0;
  qword_27E535AB8 = qword_27E535AB0;

  return v1;
}

uint64_t sub_24118DC94@<X0>(void *a1@<X8>)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27E533C18 != -1)
  {
    swift_once();
  }

  v2 = qword_27E535AB8;

  *a1 = v2;
  return result;
}

uint64_t sub_24118DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_241192ACC(&qword_27E534008, type metadata accessor for SendRequestFlowStore, MEMORY[0x277D85380]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24118DDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v7[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F58, &qword_2411AD1B8);
  v7[9] = swift_task_alloc();
  v8 = sub_2411ABC78();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v9 = sub_2411ABA38();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = sub_2411ABDA8();
  v7[18] = sub_2411ABD98();
  v11 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_24118DFC8, v11, v10);
}

uint64_t sub_24118DFC8()
{
  v78 = v0;
  v1 = v0[4];

  v2 = *(v1 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection);
  if (v2)
  {
    v3 = qword_27E533C20;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = v0[7];
    v6 = sub_2411AB5A8();
    __swift_project_value_buffer(v6, qword_27E535AC0);
    v7 = v5;
    v8 = sub_2411AB588();
    v9 = sub_2411ABE48();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[7];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v77 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_24119F950(0xD00000000000002ELL, 0x80000002411AE9A0, &v77);
      *(v11 + 12) = 2112;
      *(v11 + 14) = v10;
      *v12 = v10;
      v14 = v10;
      _os_log_impl(&dword_24117E000, v8, v9, "Extension: %s messageComposeRequest: %@", v11, 0x16u);
      sub_241186CE4(v12, &unk_27E533D50, &qword_2411AD1C0);
      MEMORY[0x245CDDA90](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x245CDDA90](v13, -1, -1);
      MEMORY[0x245CDDA90](v11, -1, -1);
    }

    v25 = sub_2411ABBB8();

    v26 = sub_2411ABAA8();
    v75 = v4;
    if (v26)
    {
      v27 = v26;
      sub_2411ABA18();
    }

    v28 = v0[15];
    v29 = v0[16];
    v30 = v0[14];
    v31 = v0[4];
    sub_2411ABA48();
    v76 = v25;
    v32 = sub_2411ABAE8();
    v33 = sub_2411AB648();

    (*(v28 + 104))(v29, *MEMORY[0x277CEEBD8], v30);
    sub_241192ACC(&qword_27E533F70, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
    sub_2411ABC88();

    (*(v28 + 8))(v29, v30);
    v34 = v75;
    sub_2411ABC58();
    swift_getKeyPath();
    v0[2] = v31;
    sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
    sub_2411AB468();

    v74 = v34;
    sub_2411ABC58();
    sub_2411ABC68();
    v36 = v0[11];
    v35 = v0[12];
    v37 = v0[10];
    if (v38)
    {
      v39 = v0[9];
      sub_2411ABC38();
      v72 = *(v36 + 8);
      v72(v35, v37);
      v40 = sub_2411ABC48();
      v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
      sub_241186CE4(v39, &qword_27E533F58, &qword_2411AD1B8);
      if (v41 != 1)
      {
        v47 = v76;
        v54 = sub_2411ABAA8();

        if (v54)
        {

          v55 = sub_2411AB588();
          v56 = sub_2411ABE48();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_24117E000, v55, v56, "SendFlow (Extension): Known client and input clientInfo is not nil. Use input clientInfo...", v57, 2u);
            v47 = v76;
            MEMORY[0x245CDDA90](v57, -1, -1);
          }

          swift_retain_n();
          goto LABEL_28;
        }

LABEL_19:
        v42 = sub_2411AB588();
        v43 = sub_2411ABE48();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_24117E000, v42, v43, "SendFlow (Extension): generating client info...", v44, 2u);
          MEMORY[0x245CDDA90](v44, -1, -1);
        }

        v45 = sub_2411ABB08();
        sub_2411ABAD8();
        sub_2411ABAE8();
        sub_2411ABAB8();
        sub_2411ABAF8();
        swift_allocObject();
        v46 = v45;
        v47 = sub_2411ABAC8();
        v48 = v46;

        v49 = sub_2411AB588();
        v50 = sub_2411ABE48();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          *(v51 + 4) = v48;
          *v52 = v45;
          v53 = v48;
          _os_log_impl(&dword_24117E000, v49, v50, "SendFlow (Extension): Generated client info %@", v51, 0xCu);
          sub_241186CE4(v52, &unk_27E533D50, &qword_2411AD1C0);
          MEMORY[0x245CDDA90](v52, -1, -1);
          MEMORY[0x245CDDA90](v51, -1, -1);
        }

        else
        {
        }

LABEL_28:
        v73 = v0[13];
        v71 = v0[10];
        v69 = v0[8];
        v58 = v0[6];
        v70 = v0[5];
        v59 = v0[4];
        type metadata accessor for MessageComposeRequestTask();
        v60 = swift_allocObject();
        *(v60 + 16) = v47;
        *(v60 + 24) = 0;
        swift_getKeyPath();
        v61 = swift_task_alloc();
        *(v61 + 16) = v59;
        *(v61 + 24) = v60;
        v0[3] = v59;

        sub_2411AB458();

        v62 = sub_2411ABDD8();
        (*(*(v62 - 8) + 56))(v69, 1, 1, v62);
        v63 = v59;

        v64 = sub_2411ABD98();
        v65 = swift_allocObject();
        v66 = MEMORY[0x277D85700];
        v65[2] = v64;
        v65[3] = v66;
        v65[4] = v63;
        v65[5] = v47;
        v65[6] = v76;
        v65[7] = v70;
        v65[8] = v58;
        sub_241192B80(0, 0, v69, &unk_2411AD220, v65);

        v72(v73, v71);
        goto LABEL_29;
      }
    }

    else
    {
      v72 = *(v36 + 8);
      v72(v0[12], v0[10]);
    }

    goto LABEL_19;
  }

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v15 = sub_2411AB5A8();
  __swift_project_value_buffer(v15, qword_27E535AC0);
  v16 = sub_2411AB588();
  v17 = sub_2411ABE28();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24117E000, v16, v17, "SendFlow (Extension): connection is nil.\ntrigger dismiss", v18, 2u);
    MEMORY[0x245CDDA90](v18, -1, -1);
  }

  v19 = v0[5];

  sub_241191650(v20, v21, v22);
  v23 = swift_allocError();
  *v24 = 0;
  v19();

LABEL_29:

  v67 = v0[1];

  return v67();
}

uint64_t sub_24118EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  v8[20] = swift_task_alloc();
  v9 = sub_2411ABA38();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = sub_2411ABDA8();
  v8[25] = sub_2411ABD98();
  v11 = sub_2411ABD48();
  v8[26] = v11;
  v8[27] = v10;

  return MEMORY[0x2822009F8](sub_24118EBF8, v11, v10);
}

uint64_t sub_24118EBF8()
{
  v1 = v0[15];
  swift_getKeyPath();
  v0[10] = v1;
  v0[28] = OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore___observationRegistrar;
  v0[29] = sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v2 = OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__daemonConnectionManager;
  swift_beginAccess();
  sub_2411920FC(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
  v5 = sub_2411ABA98();
  v0[30] = v5;
  v6 = v5;
  v7 = sub_2411ABAB8();
  v8 = swift_task_alloc();
  v0[31] = v8;
  *v8 = v0;
  v8[1] = sub_24118EED4;

  return MEMORY[0x282141438](v6, v7, v3, v4);
}

uint64_t sub_24118EED4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_24118F524;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_24118EFF0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24118EFF0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = sub_2411ABAA8();
  if (v1)
  {
    v2 = v1;
    sub_2411ABA18();
  }

  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  sub_2411ABA48();
  v6 = sub_2411ABAE8();
  v7 = sub_2411AB648();

  v38 = *(v3 + 104);
  v38(v4, *MEMORY[0x277CEEBA8], v5);
  sub_241192ACC(&qword_27E533F70, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
  sub_2411ABC88();

  v8 = *(v3 + 8);
  v8(v4, v5);
  if (sub_2411ABAD8())
  {
    v9 = v0[15];
    v10 = sub_2411ABAE8();
    v11 = sub_241191BA0(v10);
    v13 = v12;
    swift_getKeyPath();
    v14 = swift_task_alloc();
    v14[2] = v9;
    v14[3] = v11;
    v14[4] = v13;
    v0[14] = v9;
    sub_2411AB458();

    v15 = sub_2411ABAA8();
    if (v15)
    {
      v16 = v15;
      sub_2411ABA18();
    }

    v19 = v0[23];
    v20 = v0[21];
    v21 = sub_2411ABAE8();
    v22 = sub_2411AB648();

    v38(v19, *MEMORY[0x277CEEBC0], v20);
    sub_2411ABC88();

    v8(v19, v20);
  }

  else
  {
    v17 = v0[15];
    swift_getKeyPath();
    v18 = swift_task_alloc();
    v18[3] = 0;
    v18[4] = 0;
    v18[2] = v17;
    v0[11] = v17;
    sub_2411AB458();
  }

  v23 = v0[15];
  swift_getKeyPath();
  v0[12] = v23;
  sub_2411AB468();

  v24 = *(v23 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent + 8);
  if (((v24 == 0) ^ *(v23 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose)))
  {
    v25 = v24 == 0;
    v26 = v0[15];
    swift_getKeyPath();
    v27 = swift_task_alloc();
    *(v27 + 16) = v26;
    *(v27 + 24) = v25;
    v0[13] = v26;
    sub_2411AB458();
  }

  else
  {
    *(v23 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose) = v24 == 0;
  }

  v28 = v0[20];
  v29 = v0[18];
  v30 = v0[15];
  v31 = sub_2411ABDD8();
  (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
  v32 = v30;
  v33 = sub_2411ABD98();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v32;
  sub_24118FFB0(0, 0, v28, &unk_2411AD2A8, v34);

  v29(0);

  v36 = v0[1];

  return v36();
}

uint64_t sub_24118F524()
{
  v1 = v0[30];

  v2 = v0[32];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v3 = sub_2411AB5A8();
  __swift_project_value_buffer(v3, qword_27E535AC0);
  v4 = sub_2411AB588();
  v5 = sub_2411ABE48();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Extension): validateCanCompose failed. Skipping message compose...", v6, 2u);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  v7 = v0[18];

  v8 = v2;
  v7(v2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24118F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_2411ABDA8();
  v4[4] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_24118F8D0, v6, v5);
}

uint64_t sub_24118F8D0()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): Prefetching message compose payload...", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[3];

  swift_getKeyPath();
  v0[2] = v5;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v6 = *(v5 + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask);
  v0[7] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_24118FAE4;

    return sub_24118A8C8();
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24118FAE4(void *a1, uint64_t a2, void *a3)
{
  v7 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v8 = *(v7 + 40);
    v9 = *(v7 + 48);
    v10 = sub_24118FC94;
  }

  else
  {

    v8 = *(v7 + 40);
    v9 = *(v7 + 48);
    v10 = sub_24118FC30;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_24118FC30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24118FC94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24118FD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_241191D58(a3, v22 - v9);
  v11 = sub_2411ABDD8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_241186CE4(v10, &qword_27E533D40, &qword_2411ACDE0);
  }

  else
  {
    sub_2411ABDC8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2411ABD48();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2411ABD18() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F90, &unk_2411AD2D0);
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

      sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);

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

  sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F90, &unk_2411AD2D0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24118FFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_241191D58(a3, v22 - v9);
  v11 = sub_2411ABDD8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_241186CE4(v10, &qword_27E533D40, &qword_2411ACDE0);
  }

  else
  {
    sub_2411ABDC8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2411ABD48();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2411ABD18() + 32;

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

      sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);

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

  sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24119024C(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FB0, &qword_2411AD338);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241190318, 0, 0);
}

uint64_t sub_241190318()
{
  v1 = [objc_opt_self() defaultStore];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_24119050C;
    swift_continuation_init();
    v0[17] = v5;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FB8, &qword_2411AD340);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
    sub_2411ABD58();
    (*(v4 + 32))(boxed_opaque_existential_0Tm, v3, v5);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2411908B0;
    v0[13] = &block_descriptor;
    [v2 aa_primaryAppleAccountWithCompletion_];
    (*(v4 + 8))(boxed_opaque_existential_0Tm, v5);
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_24119050C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_2411906EC;
  }

  else
  {
    v2 = sub_24119061C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24119061C()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 appleID];
    if (v2)
    {
      v3 = *(v0 + 152);
      v4 = v2;
      v5 = sub_2411ABCF8();
      v7 = v6;

      *v3 = v5;
      v3[1] = v7;
      goto LABEL_6;
    }
  }

  v8 = *(v0 + 152);
  *v8 = 0;
  v8[1] = 0;
LABEL_6:

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2411906EC()
{
  v1 = v0[23];
  swift_willThrow();

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_2411AB5A8();
  __swift_project_value_buffer(v3, qword_27E535AC0);
  v4 = v2;
  v5 = sub_2411AB588();
  v6 = sub_2411ABE28();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24117E000, v5, v6, "SendFlow (Extension): error fetching primary Apple Account. %@", v9, 0xCu);
    sub_241186CE4(v10, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v10, -1, -1);
    MEMORY[0x245CDDA90](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[19];
  *v13 = 0;
  v13[1] = 0;

  v14 = v0[1];

  return v14();
}

void sub_2411908B0(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FB0, &qword_2411AD338);
    sub_2411ABD68();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FB0, &qword_2411AD338);
    sub_2411ABD78();
  }
}

uint64_t sub_241190958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  sub_2411ABDA8();
  v7[15] = sub_2411ABD98();
  v9 = sub_2411ABD48();
  v7[16] = v9;
  v7[17] = v8;

  return MEMORY[0x2822009F8](sub_2411909F4, v9, v8);
}

uint64_t sub_2411909F4()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): sending default response to client", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[11];

  swift_getKeyPath();
  v0[10] = v5;
  sub_241192ACC(&qword_27E533C98, type metadata accessor for SendRequestFlowStore, &unk_2411AD184);
  sub_2411AB468();

  v6 = OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__daemonConnectionManager;
  swift_beginAccess();
  sub_2411920FC(v5 + v6, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v7);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_241190C04;
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[12];

  return MEMORY[0x282141430](v12, v10, v11, v7, v8);
}

uint64_t sub_241190C04()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_241190DAC;
  }

  else
  {
    v5 = sub_241190D40;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_241190D40()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241190DAC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241190E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FA0, &qword_2411AD2E0);
  v4[4] = swift_task_alloc();
  sub_2411ABDA8();
  v4[5] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_241190EE8, v6, v5);
}

uint64_t sub_241190EE8()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  *(v0 + 64) = __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Extension): composing message content", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_241191038;

  return sub_24118B1B8();
}

uint64_t sub_241191038(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  v5 = *(v3 + 56);
  v6 = *(v3 + 48);
  if (v1)
  {
    v7 = sub_24119137C;
  }

  else
  {
    v7 = sub_24119117C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24119117C()
{
  v1 = v0[11];
  v2 = v0[4];

  v3 = sub_2411ABA78();
  sub_2411ABA68();
  v4 = sub_2411ABBA8();

  v5 = sub_2411AB428();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  ATPayload.newMessage(sessionId:)(v2);
  v7 = v6;
  sub_241186CE4(v2, &qword_27E533FA0, &qword_2411AD2E0);
  if (v1)
  {
    v8 = v0[10];

    v16 = v0[1];
  }

  else
  {
    v9 = sub_2411AB588();
    v10 = sub_2411ABE48();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24117E000, v9, v10, "SendFlow (Extension): composing completed", v11, 2u);
      MEMORY[0x245CDDA90](v11, -1, -1);
    }

    v12 = v0[2];

    *v12 = v7;
    v12[1] = v4;
    v13 = v7;
    v14 = sub_2411ABA58();
    v15 = v0[10];
    v18 = v14;
    v19 = v0[2];

    *(v19 + 16) = v18;

    v16 = v0[1];
  }

  return v16();
}

uint64_t sub_24119137C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2411913E8()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_241191458(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2411914A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2411914EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24119152C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24119157C(uint64_t a1)
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
  v10[1] = sub_2411862D8;

  return sub_24118DDF4(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_241191650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E533F60;
  if (!qword_27E533F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533F60);
  }

  return result;
}

uint64_t sub_2411916F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_241191748(uint64_t a1)
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
  v11[1] = sub_241186E60;

  return sub_24118EAC0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_241191890()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2411918D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241186E60;

  return sub_24118F838(a1, v4, v5, v6);
}

id sub_241191984(uint64_t a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_2411ABC08();
  v18[3] = v5;
  v18[4] = MEMORY[0x277CEED60];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v18);
  (*(*(v5 - 8) + 32))(boxed_opaque_existential_0Tm, a1, v5);
  v17[3] = &type metadata for KnownClientVerifier;
  v17[4] = &off_2852EF3E0;
  *&a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask] = 0;
  v7 = &a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent];
  *v7 = 0;
  v7[1] = 0;
  *&a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_connection] = 0;
  a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showMessageCompose] = 0;
  a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__showScreenTimePasscodeView] = 0;
  sub_2411AB498();
  sub_2411920FC(v17, &a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__connectedClientVerifier]);
  sub_2411920FC(v18, &a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__daemonConnectionManager]);
  v8 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *&a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_contactStore] = v8;
  v9 = objc_opt_self();
  v10 = v8;
  result = [v9 defaultStore];
  if (result)
  {
    v12 = result;
    v13 = [objc_opt_self() defaultCenter];
    v14 = [objc_allocWithZone(MEMORY[0x277CBDAF0]) initWithContactStore:v10 accountStore:v12 notificationCenter:v13];

    *&a2[OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore_downtimeContainerFetcher] = v14;
    v16.receiver = a2;
    v16.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v16, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v18);
    __swift_destroy_boxed_opaque_existential_0(v17);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_241191BA0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F80, &qword_2411AD2B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2411AD060;
  v3 = sub_2411AB658();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_241191D04(v3, v4, v6);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass_];
  sub_2411AB348();

  v10 = sub_2411ABCE8();

  return v10;
}

unint64_t sub_241191D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E533F88;
  if (!qword_27E533F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533F88);
  }

  return result;
}

uint64_t sub_241191D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241191DC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241191E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241186E60;

  return sub_241190E18(a1, v4, v5, v6);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_2411920FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_2411921D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_241192224(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_241186E60;

  return sub_24118D594(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2411922EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24119233C(uint64_t a1)
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
  v10[1] = sub_2411862D8;

  return sub_241190958(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_241192420(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2411924E4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageAlertContent);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_241192530()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC7AskToUI20SendRequestFlowStore__messageComposeRequestTask) = *(v0 + 24);
}

uint64_t sub_241192598(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);

  return sub_24118BC00(a1);
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_77Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_241192790()
{
  result = qword_27E533FD8;
  if (!qword_27E533FD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E533FD8);
  }

  return result;
}

uint64_t sub_2411927DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2411927EC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24119283C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_241186E60;

  return sub_24118D9CC(a1, v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for ExtensionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241192A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E534000;
  if (!qword_27E534000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534000);
  }

  return result;
}

uint64_t sub_241192ACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_241192B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_241191D58(a3, v25 - v10);
  v12 = sub_2411ABDD8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_241186CE4(v11, &qword_27E533D40, &qword_2411ACDE0);
  }

  else
  {
    sub_2411ABDC8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2411ABD48();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2411ABD18() + 32;
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

      sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);

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

  sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);
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

uint64_t sub_241192E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_241191D58(a3, v25 - v10);
  v12 = sub_2411ABDD8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_241186CE4(v11, &qword_27E533D40, &qword_2411ACDE0);
  }

  else
  {
    sub_2411ABDC8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2411ABD48();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2411ABD18() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5340C8, &qword_2411AD720);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);

      return v22;
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

  sub_241186CE4(a3, &qword_27E533D40, &qword_2411ACDE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5340C8, &qword_2411AD720);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2411931A0(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController;
  swift_beginAccess();
  *(v3 + v4) = *a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_24119325C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void static RemoteController.ExtensionIdentity.sendAskToQuestionExtension.getter(void *a1@<X8>)
{
  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x80000002411AEB00;
  a1[2] = 0x2D6567617373656DLL;
  a1[3] = 0xEF65736F706D6F63;
}

id HostSendAskToQuestionFlowCoordinator.__allocating_init(messageComposeRequest:remoteController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  return sub_2411971A0(a1, a2, v7, ObjectType, a3);
}

id HostSendAskToQuestionFlowCoordinator.init(messageComposeRequest:remoteController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_2411971A0(a1, a2, v3, ObjectType, a3);
}

uint64_t sub_241193428()
{
  v1[5] = v0;
  v2 = sub_2411ABA38();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_2411ABDA8();
  v1[9] = sub_2411ABD98();
  v4 = sub_2411ABD48();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_24119351C, v4, v3);
}

uint64_t sub_24119351C()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_state;
  v0[12] = OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_state;
  if (*(v1 + v2))
  {

    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v3 = sub_2411AB5A8();
    __swift_project_value_buffer(v3, qword_27E535AC0);
    v4 = sub_2411AB588();
    v5 = sub_2411ABE48();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Host): tried to load remote view while it is already loading or loaded", v6, 2u);
      MEMORY[0x245CDDA90](v6, -1, -1);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v9 = sub_2411AB5A8();
    v0[13] = __swift_project_value_buffer(v9, qword_27E535AC0);
    v10 = sub_2411AB588();
    v11 = sub_2411ABE48();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24117E000, v10, v11, "SendFlow (Host): loading remote view...", v12, 2u);
      MEMORY[0x245CDDA90](v12, -1, -1);
    }

    v13 = v0[5];

    *(v1 + v2) = 1;
    v14 = (v13 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController);
    swift_beginAccess();
    v0[14] = *v14;
    v15 = v14[1];
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 72);
    swift_unknownObjectRetain();
    v19 = (v17 + *v17);
    v18 = swift_task_alloc();
    v0[15] = v18;
    *v18 = v0;
    v18[1] = sub_241193854;

    return v19(ObjectType, v15);
  }
}

uint64_t sub_241193854()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_241193B6C;
  }

  else
  {
    v5 = sub_241193990;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_241193990()
{

  swift_unknownObjectRelease();
  v1 = sub_2411AB588();
  v2 = sub_2411ABE48();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24117E000, v1, v2, "SendFlow (Host): loaded extension", v3, 2u);
    MEMORY[0x245CDDA90](v3, -1, -1);
  }

  v4 = v0[12];
  v5 = v0[5];

  *(v5 + v4) = 2;
  v6 = sub_2411ABAA8();
  if (v6)
  {
    v7 = v6;
    sub_2411ABA18();
  }

  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[6];
  sub_2411ABA48();
  v11 = sub_2411ABAE8();
  v12 = sub_2411AB648();

  (*(v9 + 104))(v8, *MEMORY[0x277CEEB98], v10);
  sub_241197390();
  sub_2411ABC88();

  (*(v9 + 8))(v8, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_241193B6C()
{
  v1 = *(v0 + 128);

  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_2411AB588();
  v4 = sub_2411ABE28();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24117E000, v3, v4, "SendFlow (Host): Error loading remote view: %@ Calling dismiss...", v6, 0xCu);
    sub_241186CE4(v7, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v7, -1, -1);
    MEMORY[0x245CDDA90](v6, -1, -1);
  }

  v10 = *(v0 + 128);

  v11 = v10;
  sub_241194A90(v10);

  v12 = *(v0 + 8);

  return v12();
}

void sub_241193CF4()
{
  v1 = v0;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AC0);
  v3 = sub_2411AB588();
  v4 = sub_2411ABE48();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24117E000, v3, v4, "SendFlow (Host): Establising xpc connection...", v5, 2u);
    MEMORY[0x245CDDA90](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController;
  swift_beginAccess();
  v7 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 80);
  swift_unknownObjectRetain();
  v10 = v9(ObjectType, v7);
  swift_unknownObjectRelease();
  v11 = *(v1 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection);
  *(v1 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection) = v10;
  v12 = v10;

  [v12 setExportedObject_];
  v13 = sub_24119D714();
  [v12 setExportedInterface_];

  v14 = sub_24119D95C();
  [v12 setRemoteObjectInterface_];

  [v12 activate];
  v15 = sub_2411AB588();
  v16 = sub_2411ABE48();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24117E000, v15, v16, "SendFlow (Host): Establised xpc connection", v17, 2u);
    MEMORY[0x245CDDA90](v17, -1, -1);
  }
}

uint64_t sub_2411940AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_2411ABDA8();
  v2[5] = sub_2411ABD98();
  v4 = sub_2411ABD48();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_241194148, v4, v3);
}

uint64_t sub_241194148()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE28();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlow (Host): sending begin message", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v8 = v0[1];

  v0[4].i64[0] = sub_2411ABD98();
  v5 = swift_task_alloc();
  v0[4].i64[1] = v5;
  v5[1] = vextq_s8(v8, v8, 8uLL);
  v6 = swift_task_alloc();
  v0[5].i64[0] = v6;
  *v6 = v0;
  v6[1] = sub_241194318;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_241194318()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_2411944A0;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_24119443C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24119443C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2411944A0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_241194518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  sub_2411ABDA8();
  v9 = sub_2411ABD98();
  sub_2411ABD48();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection);
  if (v13)
  {
    v30 = v9;
    v27 = *(v6 + 16);
    v28 = a1;
    v27(v8);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    v26 = *(v6 + 32);
    v26(v15 + v14, v8, v5);
    v37 = sub_2411983BC;
    v38 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_2411A1938;
    v36 = &block_descriptor_0;
    v16 = _Block_copy(&aBlock);
    v17 = v13;

    v29 = v17;
    v18 = [v17 remoteObjectProxyWithErrorHandler_];
    _Block_release(v16);
    sub_2411ABED8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5340E0, &qword_2411AD758);
    swift_dynamicCast();
    v19 = v32;
    v22 = sub_2411ABA98();
    (v27)(v8, v28, v5);
    v23 = swift_allocObject();
    v26(v23 + v14, v8, v5);
    v37 = sub_2411983EC;
    v38 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_2411A19A0;
    v36 = &block_descriptor_76;
    v24 = _Block_copy(&aBlock);
    v25 = v22;

    [v19 sendBeginMessageWithMessageComposeRequest:v25 reply:v24];

    _Block_release(v24);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_241198364(isCurrentExecutor, v11, v12);
    v20 = swift_allocError();
    *v21 = 0;
    aBlock = v20;
    sub_2411ABD68();
  }
}

uint64_t sub_24119494C(void *a1)
{
  sub_2411ABDA8();
  sub_2411ABD98();
  sub_2411ABD48();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
  sub_2411ABD68();
}

uint64_t sub_241194A1C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
    return sub_2411ABD68();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370);
    return sub_2411ABD78();
  }
}

uint64_t sub_241194A90(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534028, &unk_2411AD520);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v10 = sub_2411AB5A8();
  __swift_project_value_buffer(v10, qword_27E535AC0);
  v11 = sub_2411AB588();
  v12 = sub_2411ABE48();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24117E000, v11, v12, "SendFlow (Host): dismissing flow", v13, 2u);
    MEMORY[0x245CDDA90](v13, -1, -1);
  }

  v14 = *(v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_dismissBlock);

  v14(v15);

  v16 = v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController;
  swift_beginAccess();
  v17 = *(v16 + 8);
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 64);
  swift_unknownObjectRetain();
  v20 = v19(ObjectType, v17);
  swift_unknownObjectRelease();
  [v20 setDelegate_];

  v21 = *(v16 + 8);
  v22 = swift_getObjectType();
  v23 = *(v21 + 64);
  swift_unknownObjectRetain();
  v24 = v23(v22, v21);
  swift_unknownObjectRelease();
  sub_2411ABE78();

  v25 = sub_2411ABE68();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v9, 1, v25);
  sub_241186CE4(v9, &qword_27E534028, &unk_2411AD520);
  if (v27 != 1)
  {
    v28 = *(v16 + 8);
    v29 = swift_getObjectType();
    v30 = *(v28 + 64);
    swift_unknownObjectRetain();
    v31 = v30(v29, v28);
    swift_unknownObjectRelease();
    (*(v26 + 56))(v7, 1, 1, v25);
    sub_2411ABE88();
  }

  v32 = OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection;
  [*(v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection) invalidate];
  v33 = *(v2 + v32);
  *(v2 + v32) = 0;

  *(v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_state) = 0;
  v34 = *(v2 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_onEnd);

  v34(a1);
}

uint64_t sub_241194E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_2411ABDA8();
  v4[6] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_241194ED0, v6, v5);
}

uint64_t sub_241194ED0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  v0[10] = v5;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;

  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_241195034;

  return sub_241195A80(sub_2411973E8, v4, sub_241197428, v5, sub_241197430, v6);
}

uint64_t sub_241195034()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2411951BC, v3, v2);
}

uint64_t sub_2411951BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24119521C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 64);
  v7 = v6(ObjectType, a2);
  [v7 setModalPresentationStyle_];

  v8 = v6(ObjectType, a2);
  [a3 presentViewController:v8 animated:0 completion:0];
}

void sub_2411952E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController;
    swift_beginAccess();
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 64);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    v8 = [v7 presentingViewController];

    if (v8)
    {
      [v8 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_241195418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  sub_2411ABDA8();
  v4[7] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_2411954B4, v6, v5);
}

uint64_t sub_2411954B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v0 + 2;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  v0[11] = v5;
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;

  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_241195628;

  return sub_241195A80(sub_241197458, v4, sub_241197460, v5, sub_24119858C, v6);
}

uint64_t sub_241195628()
{
  v1 = *v0;

  MEMORY[0x245CDDB60](v1 + 16);
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2411957B4, v3, v2);
}

uint64_t sub_2411957B4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_241195814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2411ABA38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    ObjectType = swift_getObjectType();
    v11 = (*(a2 + 64))(ObjectType, a2);
    [v9 setRootViewController_];

    [v9 makeKeyAndVisible];
    v12 = sub_2411ABAA8();
    if (v12)
    {
      v13 = v12;
      sub_2411ABA18();
    }

    sub_2411ABA48();
    v14 = sub_2411ABAE8();
    v15 = sub_2411AB648();

    (*(v5 + 104))(v7, *MEMORY[0x277CEEBA0], v4);
    sub_241197390();
    sub_2411ABC88();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_241195A20(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setRootViewController_];
  }
}

uint64_t sub_241195A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  sub_2411ABDA8();
  v7[12] = sub_2411ABD98();
  v9 = sub_2411ABD48();
  v7[13] = v9;
  v7[14] = v8;

  return MEMORY[0x2822009F8](sub_241195B24, v9, v8);
}

uint64_t sub_241195B24()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "SendFlowPresenter (Host): Begin presentation...", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];

  v10 = (v6 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_dismissBlock);
  *v10 = v9;
  v10[1] = v7;

  v11 = (v6 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_onEnd);
  *v11 = v8;
  v11[1] = v5;

  v12 = sub_2411AB588();
  v13 = sub_2411ABE48();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24117E000, v12, v13, "SendFlow (Host): running appearance  presentation...", v14, 2u);
    MEMORY[0x245CDDA90](v14, -1, -1);
  }

  v15 = v0[11];
  v16 = v0[5];

  v17 = v15 + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController;
  swift_beginAccess();
  v18 = *(v17 + 8);
  v19 = swift_unknownObjectRetain();
  v16(v19, v18);
  swift_unknownObjectRelease();
  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_241195D84;

  return sub_241193428();
}

uint64_t sub_241195D84()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_241195EA4, v3, v2);
}

uint64_t sub_241195EA4()
{

  v1 = *(v0 + 8);

  return v1();
}

id HostSendAskToQuestionFlowCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HostSendAskToQuestionFlowCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HostSendAskToQuestionFlowCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall HostSendAskToQuestionFlowCoordinator.hostViewControllerDidActivate(_:)(EXHostViewController a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  sub_241193CF4();
  v5 = sub_2411ABDD8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_2411ABDA8();
  v6 = v1;
  v7 = sub_2411ABD98();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_241192B80(0, 0, v4, &unk_2411AD550, v8);
}

uint64_t sub_2411961D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2411ABDA8();
  v4[3] = sub_2411ABD98();
  v6 = sub_2411ABD48();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24119626C, v6, v5);
}

uint64_t sub_24119626C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_messageComposeRequest);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_241196310;

  return sub_2411940AC(v1);
}

uint64_t sub_241196310()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_24119644C;
  }

  else
  {
    v5 = sub_24118D794;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24119644C()
{
  v17 = v0;

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_2411AB5A8();
  __swift_project_value_buffer(v2, qword_27E535AC0);
  v3 = v1;
  v4 = sub_2411AB588();
  v5 = sub_2411ABE28();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_24119F950(0xD000000000000021, 0x80000002411AEC80, &v16);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_24117E000, v4, v5, "SendFlow (Host): Error sending begin message: %s %@", v7, 0x16u);
    sub_241186CE4(v8, &unk_27E533D50, &qword_2411AD1C0);
    MEMORY[0x245CDDA90](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CDDA90](v9, -1, -1);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  v12 = *(v0 + 56);
  v13 = v12;
  sub_241194A90(v12);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t SendAskToPayloadFlowError.hashValue.getter()
{
  v1 = *v0;
  sub_2411ABFF8();
  MEMORY[0x245CDD450](v1);
  return sub_2411AC018();
}

uint64_t sub_241196984(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v11 = sub_2411AB5A8();
  __swift_project_value_buffer(v11, qword_27E535AC0);
  v12 = sub_2411AB588();
  v13 = sub_2411ABE48();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24117E000, v12, v13, "SendFlow (Host): received dismiss message", v14, 2u);
    MEMORY[0x245CDDA90](v14, -1, -1);
  }

  sub_2411ABDB8();
  v15 = sub_2411ABDD8();
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v4;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v17 = v4;
  v18 = a1;

  sub_241192B80(0, 0, v10, &unk_2411AD738, v16);
}

uint64_t sub_241196B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_241196B9C, 0, 0);
}

uint64_t sub_241196B9C()
{
  sub_2411ABDA8();
  *(v0 + 48) = sub_2411ABD98();
  v2 = sub_2411ABD48();

  return MEMORY[0x2822009F8](sub_241196C30, v2, v1);
}

uint64_t sub_241196C30()
{
  v1 = *(v0 + 24);

  sub_241194A90(v1);

  return MEMORY[0x2822009F8](sub_241196CA4, 0, 0);
}

uint64_t sub_241196CA4()
{
  (*(v0 + 32))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241196DA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_241196EA0;

  return v6(a1);
}

uint64_t sub_241196EA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_241196F98(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24119708C;

  return v5(v2 + 32);
}

uint64_t sub_24119708C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

id sub_2411971A0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_state] = 0;
  *&a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection] = 0;
  v10 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_dismissBlock];
  *v10 = nullsub_1;
  v10[1] = 0;
  v11 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_onEnd];
  *v11 = nullsub_1;
  v11[1] = 0;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v12 = sub_2411AB5A8();
  __swift_project_value_buffer(v12, qword_27E535AC0);
  v13 = sub_2411AB588();
  v14 = sub_2411ABE48();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24117E000, v13, v14, "SendFlow (Host): initialized flow coordinator", v15, 2u);
    MEMORY[0x245CDDA90](v15, -1, -1);
  }

  *&a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_messageComposeRequest] = a1;
  v16 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController];
  *v16 = a2;
  v16[1] = a5;
  v21.receiver = a3;
  v21.super_class = type metadata accessor for HostSendAskToQuestionFlowCoordinator();

  swift_unknownObjectRetain();
  v17 = objc_msgSendSuper2(&v21, sel_init);
  v18 = *(a5 + 16);
  v19 = v17;
  v18(v17, a4, a5);

  swift_unknownObjectRelease();
  return v19;
}

unint64_t sub_241197390()
{
  result = qword_27E533F70;
  if (!qword_27E533F70)
  {
    sub_2411ABA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E533F70);
  }

  return result;
}

uint64_t sub_2411973F0()
{
  MEMORY[0x245CDDB60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241197468()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2411974C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_241186E60;

  return sub_2411961D4(a1, v4, v5, v6);
}

uint64_t sub_24119757C(id a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v3 = sub_2411AB5A8();
    __swift_project_value_buffer(v3, qword_27E535AC0);
    v4 = a1;
    v5 = sub_2411AB588();
    v6 = sub_2411ABE28();

    if (!os_log_type_enabled(v5, v6))
    {

      return sub_241194A90(a1);
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24119F950(0xD00000000000002ALL, 0x80000002411AEC50, &v21);
    *(v7 + 12) = 2080;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue);
    (*(v11 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = sub_2411ABD08();
    v14 = sub_24119F950(v12, v13, &v21);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_24117E000, v5, v6, "SendFlow (Host): %s, error: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDDA90](v8, -1, -1);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v15 = sub_2411AB5A8();
    __swift_project_value_buffer(v15, qword_27E535AC0);
    v5 = sub_2411AB588();
    v16 = sub_2411ABE48();
    if (os_log_type_enabled(v5, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_24119F950(0xD00000000000002ALL, 0x80000002411AEC50, &v21);
      _os_log_impl(&dword_24117E000, v5, v16, "SendFlow (Host): %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x245CDDA90](v18, -1, -1);
      MEMORY[0x245CDDA90](v17, -1, -1);
    }
  }

  return sub_241194A90(a1);
}

unint64_t sub_241197904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E534050;
  if (!qword_27E534050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534050);
  }

  return result;
}

uint64_t sub_241197958@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t dispatch thunk of HostSendAskToQuestionFlowCoordinator.loadRemoteView()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_241186E60;

  return v5();
}

uint64_t dispatch thunk of HostSendAskToQuestionFlowCoordinator.showRemoteFlow(presentingViewController:onFlowEnd:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x128);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2411862D8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of HostSendAskToQuestionFlowCoordinator.showRemoteFlowAsRootIn(window:onFlowEnd:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x130);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_241186E60;

  return v11(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for HostSendAskToQuestionFlowCoordinator.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HostSendAskToQuestionFlowCoordinator.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_241197FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E5340C0;
  if (!qword_27E5340C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5340C0);
  }

  return result;
}

uint64_t sub_241198040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241186E60;

  return sub_241196F98(a1, v4);
}

uint64_t sub_2411980F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2411862D8;

  return sub_241196F98(a1, v4);
}

uint64_t sub_2411981B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2411981F8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_241198248(uint64_t a1)
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
  v10[1] = sub_241186E60;

  return sub_241196B78(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_241198364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E5340D8;
  if (!qword_27E5340D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5340D8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241198404(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FC0, &unk_2411AD370) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_241198494(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241186E60;

  return sub_241196DA8(a1, v4);
}

id HostSendAskToQuestionFlowCoordinatorFactory.makeFlowCoordinator(messageComposeRequest:)(uint64_t a1)
{
  type metadata accessor for RemoteController();
  v1 = swift_allocObject();
  v1[8] = 0;
  v1[2] = 0xD00000000000001CLL;
  v1[3] = 0x80000002411AEB00;
  v1[4] = 0x2D6567617373656DLL;
  v1[5] = 0xEF65736F706D6F63;
  v2 = type metadata accessor for HostSendAskToQuestionFlowCoordinator();
  v1[6] = 0;
  v1[7] = 0;
  v3 = objc_allocWithZone(v2);

  return sub_241198664(v4, v1, v3);
}

id sub_241198664(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_state] = 0;
  *&a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_xpcConnection] = 0;
  v6 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_dismissBlock];
  *v6 = nullsub_1;
  v6[1] = 0;
  v7 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_onEnd];
  *v7 = nullsub_1;
  v7[1] = 0;
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v8 = sub_2411AB5A8();
  __swift_project_value_buffer(v8, qword_27E535AC0);
  v9 = sub_2411AB588();
  v10 = sub_2411ABE48();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24117E000, v9, v10, "SendFlow (Host): initialized flow coordinator", v11, 2u);
    MEMORY[0x245CDDA90](v11, -1, -1);
  }

  *&a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_messageComposeRequest] = a1;
  v12 = &a3[OBJC_IVAR____TtC7AskToUI36HostSendAskToQuestionFlowCoordinator_remoteController];
  *v12 = a2;
  v12[1] = &protocol witness table for RemoteController;
  v16.receiver = a3;
  v16.super_class = type metadata accessor for HostSendAskToQuestionFlowCoordinator();

  v13 = objc_msgSendSuper2(&v16, sel_init);
  v14 = sub_2411989B4();
  [v14 setDelegate_];

  return v13;
}

uint64_t getEnumTagSinglePayload for HostSendAskToQuestionFlowCoordinatorFactory(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HostSendAskToQuestionFlowCoordinatorFactory(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 RemoteController.__allocating_init(extensionIdentity:extensionBundleIdentifier:)(__n128 *a1, unint64_t a2, unint64_t a3)
{
  v6 = swift_allocObject();
  result = *a1;
  v8 = a1[1].n128_u64[0];
  v9 = a1[1].n128_u64[1];
  v6[3].n128_u64[1] = a3;
  v6[4].n128_u64[0] = 0;
  v6[1] = result;
  v6[2].n128_u64[0] = v8;
  v6[2].n128_u64[1] = v9;
  v6[3].n128_u64[0] = a2;
  return result;
}

AskToUI::RemoteController::ExtensionIdentity __swiftcall RemoteController.ExtensionIdentity.init(id:sceneID:)(Swift::String id, Swift::String sceneID)
{
  *v2 = id;
  v2[1] = sceneID;
  result.sceneID = sceneID;
  result.id = id;
  return result;
}

id sub_2411989B4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CC5E68]) init];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*sub_241198A2C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_2411989B4();
  return sub_241198A74;
}

void sub_241198A74(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
}

void sub_241198A90(void *a1@<X8>)
{
  v2 = sub_2411989B4();
  v3 = [v2 placeholderView];

  v4 = [v3 backgroundColor];
  *a1 = v4;
}

void sub_241198B04(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_2411989B4();
  v3 = [v2 placeholderView];

  [v3 setBackgroundColor_];
}

id sub_241198B7C()
{
  v0 = sub_2411989B4();
  v1 = [v0 placeholderView];

  v2 = [v1 backgroundColor];
  return v2;
}

void sub_241198BE0(void *a1)
{
  v2 = sub_2411989B4();
  v3 = [v2 placeholderView];

  [v3 setBackgroundColor_];
}

void (*sub_241198C58(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_2411989B4();
  v4 = [v3 placeholderView];

  v5 = [v4 backgroundColor];
  *a1 = v5;
  return sub_241198CE8;
}

void sub_241198CE8(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 8) + 64);
  if (a2)
  {
    v3 = *a1;
    v4 = [v2 placeholderView];
    [v4 setBackgroundColor_];

    v5 = v3;
  }

  else
  {
    v5 = *a1;
    v3 = [*(*(a1 + 8) + 64) placeholderView];
    [v3 setBackgroundColor_];
  }
}

void sub_241198DA0(void *a1@<X8>)
{
  v2 = sub_2411989B4();
  v3 = [v2 delegate];

  *a1 = v3;
}

id sub_241198E00(SEL *a1)
{
  v2 = sub_2411989B4();
  v3 = [v2 *a1];

  return v3;
}

void sub_241198E44(uint64_t a1)
{
  v2 = sub_2411989B4();
  [v2 setDelegate_];
  swift_unknownObjectRelease();
}

uint64_t (*sub_241198EA0(void *a1))()
{
  a1[1] = v1;
  v3 = sub_2411989B4();
  v4 = [v3 delegate];

  *a1 = v4;
  return sub_241198F10;
}

uint64_t sub_241198F10(void *a1)
{
  [*(a1[1] + 64) setDelegate_];

  return swift_unknownObjectRelease();
}

uint64_t RemoteController.init(extensionIdentity:extensionBundleIdentifier:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  *(v3 + 56) = a3;
  *(v3 + 64) = 0;
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = a2;
  return v3;
}

uint64_t sub_241198F78()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534028, &unk_2411AD520);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5340F0, &qword_2411AD810);
  v1[4] = swift_task_alloc();
  v2 = sub_2411AB568();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_2411ABDA8();
  v1[10] = sub_2411ABD98();
  v4 = sub_2411ABD48();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_2411990F4, v4, v3);
}

uint64_t sub_2411990F4()
{
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v1 = sub_2411AB5A8();
  v0[13] = __swift_project_value_buffer(v1, qword_27E535AC0);
  v2 = sub_2411AB588();
  v3 = sub_2411ABE48();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24117E000, v2, v3, "RemoteController: loading extension", v4, 2u);
    MEMORY[0x245CDDA90](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_24119924C;
  v6 = v0[4];

  return sub_241199848(v6);
}

uint64_t sub_24119924C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_2411997A4;
  }

  else
  {
    v5 = sub_241199388;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_241199388()
{
  v44 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = sub_24119ACB4(v0[4]);
    sub_24119AD1C(v4, v5, v6);
    swift_allocError();
    *v7 = 1;
    swift_willThrow();

    v8 = v0[1];
  }

  else
  {
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[5];
    v12 = v0[6];
    (*(v12 + 32))(v9, v0[4], v11);
    v13 = *(v12 + 16);
    v13(v10, v9, v11);
    v14 = sub_2411AB588();
    v15 = sub_2411ABE18();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[8];
    if (v16)
    {
      v18 = v0[6];
      v19 = v0[7];
      v20 = v0[5];
      v21 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v21 = 136315138;
      v13(v19, v17, v20);
      v22 = sub_2411ABD08();
      v41 = v13;
      v24 = v23;
      v42 = *(v18 + 8);
      v42(v17, v20);
      v25 = sub_24119F950(v22, v24, &v43);
      v13 = v41;

      *(v21 + 4) = v25;
      _os_log_impl(&dword_24117E000, v14, v15, "RemoteController: found identity: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x245CDDA90](v40, -1, -1);
      MEMORY[0x245CDDA90](v21, -1, -1);
    }

    else
    {
      v26 = v0[5];
      v27 = v0[6];

      v42 = *(v27 + 8);
      v42(v17, v26);
    }

    v28 = v0[9];
    v29 = v0[7];
    v30 = v0[5];
    v31 = v0[3];
    v32 = sub_2411989B4();
    v13(v29, v28, v30);

    sub_2411ABE58();
    v33 = sub_2411ABE68();
    (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
    sub_2411ABE88();

    v34 = sub_2411AB588();
    v35 = sub_2411ABE18();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_24117E000, v34, v35, "RemoteController: completed configuring remote view...", v36, 2u);
      MEMORY[0x245CDDA90](v36, -1, -1);
    }

    v37 = v0[9];
    v38 = v0[5];

    v42(v37, v38);

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_2411997A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241199848(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534028, &unk_2411AD520);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5340F0, &qword_2411AD810);
  v2[5] = swift_task_alloc();
  v3 = sub_2411AB568();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_2411AB518();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_2411AB538();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = sub_2411ABDA8();
  v2[19] = sub_2411ABD98();
  v7 = sub_2411ABD48();
  v2[20] = v7;
  v2[21] = v6;

  return MEMORY[0x2822009F8](sub_241199A8C, v7, v6);
}

uint64_t sub_241199A8C()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533FE0, &qword_2411AD9C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2411AD060;
  v3 = *(v1 + 24);
  *(v2 + 32) = *(v1 + 16);
  *(v2 + 40) = v3;

  sub_2411AB558();

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v4 = sub_2411AB5A8();
  v0[22] = __swift_project_value_buffer(v4, qword_27E535AC0);
  v5 = sub_2411AB588();
  v6 = sub_2411ABE48();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24117E000, v5, v6, "RemoteController: loaded extension", v7, 2u);
    MEMORY[0x245CDDA90](v7, -1, -1);
  }

  sub_2411AB528();
  v8 = sub_2411ABD98();
  v0[23] = v8;
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_241199D30;
  v10 = MEMORY[0x277D85700];

  return sub_24119A9A0(v8, v10);
}

uint64_t sub_241199D30(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {

    v5 = *(v3 + 160);
    v6 = *(v3 + 168);

    return MEMORY[0x2822009F8](sub_241199E48, v5, v6);
  }

  return result;
}

uint64_t sub_241199E48()
{
  v82 = v0;
  v1 = v0[25];
  if (!v1)
  {
    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];
    (*(v0[13] + 8))(v0[14], v0[12]);

    sub_24119AD1C(v16, v17, v18);
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    (*(v14 + 8))(v13, v15);
    goto LABEL_19;
  }

  v2 = v0[3];
  v3 = *(v1 + 16);
  result = swift_retain_n();
  v78 = v3;
  if (!v3)
  {
LABEL_12:

    v12 = 1;
LABEL_17:
    v24 = v0[6];
    v25 = v0[7];
    v26 = v0[5];
    v27 = *(v25 + 56);
    v27(v26, v12, 1, v24);

    if ((*(v25 + 48))(v26, 1, v24) != 1)
    {
      v39 = v0[11];
      v40 = v0[9];
      v41 = v0[6];
      v42 = v0[7];
      v43 = *(v42 + 32);
      v43(v39, v0[5], v41);
      v80 = *(v42 + 16);
      v80(v40, v39, v41);
      v44 = sub_2411AB588();
      v45 = sub_2411ABE18();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v0[9];
      v79 = v27;
      v77 = v43;
      if (v46)
      {
        v48 = v0[7];
        v49 = v0[8];
        v50 = v0[6];
        v51 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v81 = v76;
        *v51 = 136315138;
        v80(v49, v47, v50);
        v52 = sub_2411ABD08();
        v54 = v53;
        (*(v48 + 8))(v47, v50);
        v55 = sub_24119F950(v52, v54, &v81);

        *(v51 + 4) = v55;
        _os_log_impl(&dword_24117E000, v44, v45, "RemoteController: found identity: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x245CDDA90](v76, -1, -1);
        MEMORY[0x245CDDA90](v51, -1, -1);
      }

      else
      {
        v56 = v0[6];
        v57 = v0[7];

        (*(v57 + 8))(v47, v56);
      }

      v58 = v0[11];
      v59 = v0[8];
      v60 = v0[6];
      v61 = v0[4];
      v62 = sub_2411989B4();
      v80(v59, v58, v60);

      sub_2411ABE58();
      v63 = sub_2411ABE68();
      (*(*(v63 - 8) + 56))(v61, 0, 1, v63);
      sub_2411ABE88();

      v64 = sub_2411AB588();
      v65 = sub_2411ABE18();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_24117E000, v64, v65, "RemoteController: completed configuring remote view...", v66, 2u);
        MEMORY[0x245CDDA90](v66, -1, -1);
      }

      v67 = v0[16];
      v68 = v0[17];
      v69 = v0[14];
      v71 = v0[12];
      v70 = v0[13];
      v72 = v0[11];
      v73 = v0[6];
      v75 = v0[15];
      v74 = v0[2];

      (*(v70 + 8))(v69, v71);
      (*(v67 + 8))(v68, v75);
      v77(v74, v72, v73);
      v79(v74, 0, 1, v73);

      v38 = v0[1];
      goto LABEL_26;
    }

    v29 = v0[16];
    v28 = v0[17];
    v31 = v0[14];
    v30 = v0[15];
    v32 = v0[12];
    v33 = v0[13];
    v34 = sub_24119ACB4(v0[5]);
    sub_24119AD1C(v34, v35, v36);
    swift_allocError();
    *v37 = 0;
    swift_willThrow();
    (*(v33 + 8))(v31, v32);
    (*(v29 + 8))(v28, v30);
LABEL_19:

    v38 = v0[1];
LABEL_26:

    return v38();
  }

  v5 = 0;
  v6 = v0[7];
  while (v5 < *(v1 + 16))
  {
    (*(v6 + 16))(v0[10], v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v0[6]);
    sub_2411ABD98();
    sub_2411ABD48();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    dyld_get_active_platform();
    v7 = *(v2 + 56);
    if (!v7)
    {

LABEL_16:

      v20 = v0[10];
      v22 = v0[6];
      v21 = v0[7];
      v23 = v0[5];

      (*(v21 + 32))(v23, v20, v22);
      v12 = 0;
      goto LABEL_17;
    }

    v8 = v1;
    v9 = *(v2 + 48);
    if (sub_2411AB548() == v9 && v7 == v10)
    {

      goto LABEL_16;
    }

    v11 = sub_2411ABF98();

    if (v11)
    {
      goto LABEL_16;
    }

    ++v5;
    result = (*(v6 + 8))(v0[10], v0[6]);
    v1 = v8;
    if (v78 == v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id sub_24119A5F8()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2411989B4();
  v5[0] = 0;
  v1 = [v0 makeXPCConnectionWithError_];

  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_2411AB368();

    swift_willThrow();
  }

  return v1;
}

uint64_t RemoteController.deinit()
{

  return v0;
}

uint64_t RemoteController.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t (*sub_24119A764(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_241198EA0(v2);
  return sub_24119B544;
}

id sub_24119A7E0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_2411989B4();
  v5 = [v4 *a3];

  return v5;
}

uint64_t (*sub_24119A824(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_241198C58(v2);
  return sub_24119A894;
}

void sub_24119A898(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_24119A8E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2411862D8;

  return sub_241198F78();
}

uint64_t sub_24119A9A0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2411AB518();
  v4 = sub_24119B4EC();
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_24119AA60;

  return MEMORY[0x282200308](v2 + 2, v3, v4);
}

uint64_t sub_24119AA60()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_2411ABD48();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_24119AC0C;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_2411ABD48();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_24119ABF0;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_24119AC0C()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533F98, &unk_2411AD9D0);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_24119ACB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5340F0, &qword_2411AD810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24119AD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E5340F8;
  if (!qword_27E5340F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5340F8);
  }

  return result;
}

id sub_24119AD70@<X0>(void *a1@<X8>)
{
  result = sub_2411989B4();
  *a1 = result;
  return result;
}

void sub_24119AD9C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 64);
  *(*a2 + 64) = *a1;
  v3 = v2;
}

void sub_24119ADF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_2411989B4();
  [v2 setDelegate_];
}

uint64_t dispatch thunk of RemoteControllerProtocol.load()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 72) + **(a2 + 72));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_241186E60;

  return v7(a1, a2);
}

uint64_t dispatch thunk of RemoteController.load()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2411862D8;

  return v4();
}

uint64_t getEnumTagSinglePayload for ExtensionLoadingError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExtensionLoadingError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24119B498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E534100;
  if (!qword_27E534100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534100);
  }

  return result;
}

unint64_t sub_24119B4EC()
{
  result = qword_27E534108;
  if (!qword_27E534108)
  {
    sub_2411AB518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534108);
  }

  return result;
}

uint64_t sub_24119B5C0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_2411ABEF8();
    v5 = v4;
    v6 = sub_2411ABF48();
    v8 = v7;
    v9 = MEMORY[0x245CDD350](v3, v5, v6, v7);
    sub_24119D4B8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_24119D4B8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_2411ABEE8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24119D4C4(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_24119D4B8(v3, v5, v2 != 0);
  return v12;
}

uint64_t FlowKind.hashValue.getter()
{
  sub_2411ABFF8();
  MEMORY[0x245CDD450](0);
  return sub_2411AC018();
}

uint64_t sub_24119B758()
{
  sub_2411ABFF8();
  MEMORY[0x245CDD450](0);
  return sub_2411AC018();
}

uint64_t sub_24119B7C4(uint64_t a1)
{
  sub_2411ABFF8();
  MEMORY[0x245CDD450](0);
  return sub_2411AC018();
}

uint64_t sub_24119B840(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_24119B8A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24119B934;
}

uint64_t SceneBasedSendAskFlowController.__allocating_init(flowCoordinatorFactory:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 120) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  sub_24119B9F4(a1, v2 + 32);
  return v2;
}

uint64_t SceneBasedSendAskFlowController.init(flowCoordinatorFactory:)(__int128 *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 120) = 0;
  *(v1 + 104) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  sub_24119B9F4(a1, v1 + 32);
  return v1;
}

uint64_t sub_24119B9F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24119BA0C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = sub_24119B5C0(v5);

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [v6 info];
  if (!v7)
  {

LABEL_7:
    v14 = 0u;
    v15 = 0u;
LABEL_8:
    result = sub_241186CE4(&v14, &qword_27E534110, &unk_2411ADA30);
    goto LABEL_9;
  }

  v8 = v7;
  sub_2411AB998();
  v9 = [v8 objectForSetting_];

  if (v9)
  {
    sub_2411ABED8();
    swift_unknownObjectRelease();
  }

  else
  {

    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if (result)
  {
    result = sub_24119BB78(v12, *(&v12 + 1));
    v11 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v11 = 1;
LABEL_10:
  *a2 = v11;
  return result;
}

uint64_t sub_24119BB78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_24119BBCC(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E533D40, &qword_2411ACDE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v58 - v7;
  v9 = sub_2411ABA38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2411920FC(a1, &v63);
  swift_beginAccess();
  sub_24119C450(&v63, v3 + 80);
  swift_endAccess();
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (!v15 || (v16 = sub_24119B5C0(v15), , !v16))
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v20 = sub_2411AB5A8();
    __swift_project_value_buffer(v20, qword_27E535AC0);
    v21 = sub_2411AB588();
    v22 = sub_2411ABE28();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_24117E000, v21, v22, "No BSAction in configuration context", v23, 2u);
      MEMORY[0x245CDDA90](v23, -1, -1);
    }

    sub_241198364(v24, v25, v26);
    v27 = swift_allocError();
    *v28 = 2;
    swift_willThrow();
    goto LABEL_22;
  }

  v17 = [v16 info];
  if (v17)
  {
    v18 = v17;
    sub_2411AB998();
    v19 = [v18 objectForSetting_];

    if (v19)
    {
      sub_2411ABED8();
      swift_unknownObjectRelease();
    }

    else
    {
      v61 = 0u;
      v62 = 0u;
    }

    v63 = v61;
    v64 = v62;
    if (*(&v62 + 1))
    {
      if (swift_dynamicCast())
      {
        v59 = a2;
        v29 = v61;
        sub_2411AB318();
        swift_allocObject();
        sub_2411AB308();
        sub_24119CFD0(&qword_27E534120, MEMORY[0x277CEEAF8], MEMORY[0x277CEEB08]);
        v60 = v29;
        sub_2411AB2F8();

        v39 = v63;
        v40 = *(v3 + 120);
        *(v3 + 120) = v63;
        v41 = v39;

        v58[2] = sub_2411ABA48();
        v42 = sub_2411AB968();
        v58[1] = sub_2411ABA18();

        v43 = sub_2411AB988();
        v44 = sub_2411AB648();

        (*(v10 + 104))(v12, *MEMORY[0x277CEEB88], v9);
        sub_24119CFD0(&qword_27E533F70, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
        sub_2411ABC88();

        (*(v10 + 8))(v12, v9);
        sub_2411AB988();
        v45 = v41;
        sub_2411AB968();
        sub_2411ABAF8();
        swift_allocObject();
        v46 = sub_2411ABAC8();
        sub_2411920FC(v3 + 32, &v63);
        v47 = *(&v64 + 1);
        v48 = v65;
        __swift_project_boxed_opaque_existential_1Tm(&v63, *(&v64 + 1));
        v49 = (*(v48 + 8))(v46, v47, v48);
        __swift_destroy_boxed_opaque_existential_0(&v63);
        v50 = *(v3 + 72);
        *(v3 + 72) = v49;
        v51 = v49;

        v52 = sub_2411ABDD8();
        (*(*(v52 - 8) + 56))(v8, 1, 1, v52);
        sub_2411ABDA8();
        v53 = v51;
        v54 = v59;

        v55 = sub_2411ABD98();
        v56 = swift_allocObject();
        v57 = MEMORY[0x277D85700];
        v56[2] = v55;
        v56[3] = v57;
        v56[4] = v53;
        v56[5] = v54;
        v56[6] = v3;
        sub_241192B80(0, 0, v8, &unk_2411ADA50, v56);

        sub_24119BB78(v60, *(&v60 + 1));
        return;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  sub_241186CE4(&v63, &qword_27E534110, &unk_2411ADA30);
LABEL_17:
  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v30 = sub_2411AB5A8();
  __swift_project_value_buffer(v30, qword_27E535AC0);
  v31 = sub_2411AB588();
  v32 = sub_2411ABE28();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_24117E000, v31, v32, "Configuration context had a BSAction, but the send request payload data was nil", v33, 2u);
    MEMORY[0x245CDDA90](v33, -1, -1);
  }

  sub_241198364(v34, v35, v36);
  v27 = swift_allocError();
  *v37 = 3;
  swift_willThrow();

LABEL_22:
  v38 = v27;
  sub_24119CC54(v27);
}

uint64_t sub_24119C450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534118, &qword_2411ADA40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24119C4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_2411ABDA8();
  v6[5] = sub_2411ABD98();
  v8 = sub_2411ABD48();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_24119C55C, v8, v7);
}

uint64_t sub_24119C55C()
{
  v1 = swift_allocObject();
  v0[8] = v1;
  swift_weakInit();
  v2 = swift_allocObject();
  v0[9] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_24119C69C;
  v5 = v0[3];

  return sub_241195418(v5, sub_24119D4B0, v3);
}

uint64_t sub_24119C69C()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24119C820, v3, v2);
}

uint64_t sub_24119C820()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24119C880(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + 72);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = Strong;
    if (v6)
    {
      if (!Strong)
      {
      }

      type metadata accessor for HostSendAskToQuestionFlowCoordinator();
      v9 = v6;
      v10 = sub_2411ABEB8();

      if ((v10 & 1) == 0)
      {
      }
    }

    else if (Strong)
    {
    }

    v11 = *(v5 + 72);
    *(v5 + 72) = 0;

    sub_24119CC54(a1);
  }

  return result;
}

void sub_24119C96C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  sub_2411AB958();
  [v3 setObject:a1 forSetting:sub_2411AB938()];
  v4 = [objc_opt_self() responseWithInfo_];
  swift_beginAccess();
  sub_24119D390(v1 + 80, v18);
  v5 = v19;
  if (v19)
  {
    v6 = v20;
    v7 = __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v8 = *(v5 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v10);
    sub_241186CE4(v18, &qword_27E534118, &qword_2411ADA40);
    v11 = (*(v6 + 8))(v5, v6);
    (*(v8 + 8))(v10, v5);
    if (v11)
    {
      v12 = sub_24119B5C0(v11);

      if (v12)
      {
        [v12 sendResponse:v4];
        v13 = v3;
        v3 = v12;
        goto LABEL_10;
      }
    }
  }

  else
  {
    sub_241186CE4(v18, &qword_27E534118, &qword_2411ADA40);
  }

  if (qword_27E533C20 != -1)
  {
    swift_once();
  }

  v14 = sub_2411AB5A8();
  __swift_project_value_buffer(v14, qword_27E535AC0);
  v13 = sub_2411AB588();
  v15 = sub_2411ABE28();
  if (os_log_type_enabled(v13, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_24117E000, v13, v15, "No BSAction in configuration context", v16, 2u);
    MEMORY[0x245CDDA90](v16, -1, -1);
  }

LABEL_10:
}

uint64_t sub_24119CC54(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 120);
  if (v4)
  {
    v5 = objc_allocWithZone(sub_2411AB958());
    v6 = v4;
    v7 = a1;
    v8 = sub_2411AB948();
    sub_24119C96C(v8);
  }

  else
  {
    if (qword_27E533C20 != -1)
    {
      swift_once();
    }

    v9 = sub_2411AB5A8();
    __swift_project_value_buffer(v9, qword_27E535AC0);
    v8 = sub_2411AB588();
    v10 = sub_2411ABE28();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24117E000, v8, v10, "No Request payload. This is quite unexpected...", v11, 2u);
      MEMORY[0x245CDDA90](v11, -1, -1);
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(a1, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SceneBasedSendAskFlowController.deinit()
{
  sub_24119D130(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  sub_241186CE4(v0 + 80, &qword_27E534118, &qword_2411ADA40);
  return v0;
}

uint64_t SceneBasedSendAskFlowController.__deallocating_deinit()
{
  sub_24119D130(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  sub_241186CE4(v0 + 80, &qword_27E534118, &qword_2411ADA40);

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t (*sub_24119CE9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24119D710;
}

void sub_24119CF30(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_24119CFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24119D018()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24119D068(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2411862D8;

  return sub_24119C4C0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_24119D15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E534128;
  if (!qword_27E534128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E534128);
  }

  return result;
}

uint64_t sub_24119D1B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24119D200(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24119D390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E534118, &qword_2411ADA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24119D400()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24119D438()
{
  MEMORY[0x245CDDB60](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24119D470()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24119D4B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_24119D4C4(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x245CDD380](a1, a2, v7);
      sub_24119D6C4();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24119D6C4();
    if (sub_2411ABF18() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2411ABF28();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_2411ABEA8();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_2411ABEB8();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}