uint64_t sub_20B59784C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0, qword_20C1510D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5978DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20B59793C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v70 = a2;
  v71 = a3;
  v69 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v74 = &v66 - v7;
  v72 = v8;
  MEMORY[0x28223BE20](v9);
  v75 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765DA0, &qword_20C14FCD8);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  v16 = type metadata accessor for ButtonAction.ActionType(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v67 = (&v66 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = (&v66 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8, &unk_20C14FB80);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v66 - v26;
  v28 = sub_20C135AE4();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v27, v69, v28);
  (*(v29 + 56))(v27, 0, 1, v28);
  v30 = v16;
  v31 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutDetail;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v3 + v31, &qword_27C7620C8, &unk_20C14FB80);
  swift_endAccess();
  v32 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_marketingOffer;
  swift_beginAccess();
  sub_20B5DF33C(v70, v3 + v32);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarks) = v71;

  v33 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_inProgressButtonActions;
  swift_beginAccess();
  v34 = *(v3 + v33);
  *v24 = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v78 = v24;

  sub_20B6B713C(sub_20B5DF5A4, v34, v15);

  v35 = *(v17 + 48);
  v71 = v17 + 48;
  LODWORD(v34) = v35(v15, 1, v30);
  sub_20B520158(v15, &qword_27C765DA0, &qword_20C14FCD8);
  sub_20B5DF274(v24, type metadata accessor for ButtonAction.ActionType);
  if (v34 == 1)
  {
    v36 = *(v3 + v33);
    v37 = v67;
    *v67 = MEMORY[0x277D84FA0];
    v38 = swift_storeEnumTagMultiPayload();
    v70 = &v66;
    MEMORY[0x28223BE20](v38);
    *(&v66 - 2) = v37;

    v39 = v30;
    v40 = v68;
    sub_20B6B713C(sub_20B5DF5A4, v36, v68);

    v41 = v35(v40, 1, v39) != 1;
    sub_20B520158(v40, &qword_27C765DA0, &qword_20C14FCD8);
    sub_20B5DF274(v37, type metadata accessor for ButtonAction.ActionType);
  }

  else
  {
    v41 = 1;
  }

  v42 = MEMORY[0x277D84FA0];
  *v19 = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v43 = swift_beginAccess();
  v44 = *(v3 + v33);
  MEMORY[0x28223BE20](v43);
  *(&v66 - 2) = v19;

  v45 = sub_20BEE0D74(sub_20B5DF5A4, (&v66 - 4), v44);
  sub_20B5ADF04(v45);
  sub_20B5DF274(v19, type metadata accessor for ButtonAction.ActionType);
  swift_endAccess();

  *v19 = v42;
  swift_storeEnumTagMultiPayload();
  v46 = swift_beginAccess();
  v47 = *(v3 + v33);
  MEMORY[0x28223BE20](v46);
  *(&v66 - 2) = v19;

  v48 = sub_20BEE0D74(sub_20B5DF5A4, (&v66 - 4), v47);
  sub_20B5ADF04(v48);
  sub_20B5DF274(v19, type metadata accessor for ButtonAction.ActionType);
  swift_endAccess();

  v49 = v74;
  sub_20B59935C(v74);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = v41;
  *(v51 + 24) = v50;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_20B5DF3AC;
  *(v52 + 24) = v51;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_20B5DF3B8;
  *(v53 + 24) = v52;
  v55 = v76;
  v54 = v77;
  v56 = v73;
  (*(v76 + 16))(v73, v49, v77);
  v57 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v58 = (v72 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  (*(v55 + 32))(v59 + v57, v56, v54);
  v60 = (v59 + v58);
  *v60 = sub_20B5DF3D4;
  v60[1] = v53;
  v61 = v75;
  sub_20C137C94();
  v62 = *(v55 + 8);
  v62(v49, v54);
  v63 = sub_20C137CB4();
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v63(sub_20B5DF6DC, v64);

  return (v62)(v61, v54);
}

uint64_t sub_20B598218(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v4 = -127;
    }

    else
    {
      v4 = 0;
    }

    sub_20B598280(v4);
  }

  return result;
}

uint64_t sub_20B598280(int a1)
{
  v2 = v1;
  v134 = a1;
  v3 = sub_20C13C554();
  v136 = *(v3 - 8);
  v137 = v3;
  MEMORY[0x28223BE20](v3);
  v135 = (&v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_20C138094();
  v138 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v151 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765DA0, &qword_20C14FCD8);
  MEMORY[0x28223BE20](v7 - 8);
  v150 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v149 = &v127 - v10;
  v152 = type metadata accessor for ButtonAction(0);
  v143 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v139 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v155 = &v127 - v13;
  MEMORY[0x28223BE20](v14);
  v153 = &v127 - v15;
  MEMORY[0x28223BE20](v16);
  v154 = &v127 - v17;
  v18 = sub_20C1344C4();
  v141 = *(v18 - 8);
  v142 = v18;
  MEMORY[0x28223BE20](v18);
  v140 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v127 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8, &unk_20C14FB80);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v127 - v24;
  v26 = sub_20C135AE4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v30, v25, &qword_27C7620C8, &unk_20C14FB80);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    return sub_20B520158(v25, &qword_27C7620C8, &unk_20C14FB80);
  }

  v129 = v27;
  v130 = v26;
  (*(v27 + 32))(v29, v25, v26);
  v145 = v22;
  sub_20C135AA4();
  v32 = (v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder + 24));
  sub_20C135A44();
  v156 = v2;
  v33 = sub_20C138544();

  v34 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v128 = v33;
  v35 = [v33 length];
  v36 = *MEMORY[0x277D740A8];
  v37 = [objc_opt_self() preferredFontForTextStyle_];
  v133 = v34;
  [v34 addAttribute:v36 value:v37 range:{0, v35}];

  v38 = v32[3];
  v131 = v32;
  __swift_project_boxed_opaque_existential_1(v32, v38);
  v144 = v29;
  sub_20C1359C4();
  v132 = sub_20C138544();
  v39 = v156;

  v40 = sub_20B59A098(v145);
  v41 = v40[2];
  v42 = &OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dependencies;
  if (v41)
  {
    *&v169[0] = MEMORY[0x277D84F90];
    sub_20BB5DA24(0, v41, 0);
    v43 = *&v169[0];
    v44 = v143;
    v45 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v127 = v40;
    v147 = v45;
    v148 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_inProgressButtonActions;
    v46 = v40 + v45;
    swift_beginAccess();
    v146 = *(v44 + 72);
    v48 = v152;
    v47 = v153;
    do
    {
      v153 = v43;
      v49 = sub_20B5DF20C(v46, v47, type metadata accessor for ButtonAction);
      v50 = *(v39 + v148);
      MEMORY[0x28223BE20](v49);
      *(&v127 - 2) = v51;

      v52 = v47;
      v53 = v149;
      sub_20B6B713C(sub_20B5D9870, v50, v149);

      v54 = type metadata accessor for ButtonAction.ActionType(0);
      v55 = (*(*(v54 - 8) + 48))(v53, 1, v54);
      sub_20B520158(v53, &qword_27C765DA0, &qword_20C14FCD8);
      if (v55 == 1)
      {
        sub_20B5D9970(v52, v154, type metadata accessor for ButtonAction);
      }

      else
      {
        sub_20B5DF274(v52, type metadata accessor for ButtonAction);
        v56 = v154;
        *(v154 + *(v48 + 28)) = 0;
        swift_storeEnumTagMultiPayload();
        v56[1] = 0u;
        v56[2] = 0u;
        *v56 = 0u;
      }

      v47 = v52;
      v43 = v153;
      *&v169[0] = v153;
      v58 = *(v153 + 16);
      v57 = *(v153 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_20BB5DA24((v57 > 1), v58 + 1, 1);
        v43 = *&v169[0];
      }

      *(v43 + 16) = v58 + 1;
      v59 = v146;
      sub_20B5D9970(v154, v43 + v147 + v58 * v146, type metadata accessor for ButtonAction);
      v46 += v59;
      --v41;
      v39 = v156;
    }

    while (v41);

    v42 = &OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dependencies;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v171 = v43;
  v60 = sub_20B59AB58();
  v61 = *(v60 + 16);
  if (v61)
  {
    *&v169[0] = MEMORY[0x277D84F90];
    sub_20BB5DA24(0, v61, 0);
    v62 = v42[31];
    v63 = v143;
    v64 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v147 = v60;
    v149 = v64;
    v65 = v60 + v64;
    v153 = v62;
    v154 = *&v169[0];
    swift_beginAccess();
    v148 = *(v63 + 72);
    v66 = v152;
    v67 = v139;
    v68 = v150;
    do
    {
      v69 = sub_20B5DF20C(v65, v67, type metadata accessor for ButtonAction);
      v70 = *(v39 + v153);
      MEMORY[0x28223BE20](v69);
      *(&v127 - 2) = v71;

      sub_20B6B713C(sub_20B5DF5A4, v70, v68);

      v72 = type metadata accessor for ButtonAction.ActionType(0);
      v73 = (*(*(v72 - 8) + 48))(v68, 1, v72);
      sub_20B520158(v68, &qword_27C765DA0, &qword_20C14FCD8);
      if (v73 == 1)
      {
        sub_20B5D9970(v67, v155, type metadata accessor for ButtonAction);
      }

      else
      {
        sub_20B5DF274(v67, type metadata accessor for ButtonAction);
        v74 = v155;
        *(v155 + *(v66 + 28)) = 0;
        swift_storeEnumTagMultiPayload();
        v74[1] = 0u;
        v74[2] = 0u;
        *v74 = 0u;
      }

      v75 = v154;
      *&v169[0] = v154;
      v77 = *(v154 + 16);
      v76 = *(v154 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_20BB5DA24((v76 > 1), v77 + 1, 1);
        v67 = v139;
        v75 = *&v169[0];
      }

      *(v75 + 16) = v77 + 1;
      v154 = v75;
      v78 = v148;
      sub_20B5D9970(v155, v75 + v149 + v77 * v148, type metadata accessor for ButtonAction);
      v65 += v78;
      --v61;
      v39 = v156;
    }

    while (v61);

    v79 = v154;
  }

  else
  {

    v79 = MEMORY[0x277D84F90];
  }

  sub_20B8D9064(v79);
  __swift_project_boxed_opaque_existential_1(v131, v131[3]);
  sub_20C1359E4();
  v80 = sub_20C138544();

  v81 = v171;
  v82 = sub_20C1359C4();
  v83 = *(v82 + 16);
  if (v83)
  {
    v153 = v81;
    v154 = v80;
    *&v169[0] = MEMORY[0x277D84F90];
    sub_20B526D44(0, v83, 0);
    v84 = *&v169[0];
    v85 = *(v138 + 80);
    v152 = v82;
    v86 = v82 + ((v85 + 32) & ~v85);
    v155 = *(v138 + 72);
    do
    {
      v87 = v151;
      sub_20B5DF20C(v86, v151, MEMORY[0x277D53BC8]);
      v88 = MediaTag.accessibilityIdentifier.getter();
      v90 = v89;
      sub_20B5DF274(v87, MEMORY[0x277D53BC8]);
      *&v169[0] = v84;
      v92 = *(v84 + 16);
      v91 = *(v84 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_20B526D44((v91 > 1), v92 + 1, 1);
        v84 = *&v169[0];
      }

      *(v84 + 16) = v92 + 1;
      v93 = v84 + 16 * v92;
      *(v93 + 32) = v88;
      *(v93 + 40) = v90;
      v86 += v155;
      --v83;
    }

    while (v83);

    v81 = v153;
    v80 = v154;
  }

  else
  {

    v84 = MEMORY[0x277D84F90];
  }

  v94 = swift_allocObject();
  v95 = v133;
  *(v94 + 16) = v80;
  *(v94 + 24) = v95;
  v96 = v132;
  *(v94 + 32) = v132;
  *(v94 + 40) = v81;
  v97 = v94 | 0x1000000000000001;
  *(v94 + 48) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_20C14F980;
  *(v98 + 32) = v97;
  *&v169[0] = 0;
  *(&v169[0] + 1) = 0xE000000000000000;
  v155 = v96;
  v99 = v95;

  sub_20C13DC94();

  *&v169[0] = 0x5F74756F6B726F77;
  *(&v169[0] + 1) = 0xE800000000000000;
  v100 = v140;
  sub_20C135AA4();
  v101 = sub_20C134324();
  v103 = v102;
  v104 = v142;
  v154 = *(v141 + 8);
  (v154)(v100, v142);
  MEMORY[0x20F2F4230](v101, v103);

  MEMORY[0x20F2F4230](0x7265646165685FLL, 0xE700000000000000);
  v160 = 0uLL;
  LOBYTE(v161) = 1;
  *(&v161 + 1) = *v159;
  DWORD1(v161) = *&v159[3];
  *(&v161 + 1) = 0;
  *&v162 = 0;
  WORD4(v162) = 128;
  *(&v162 + 10) = *&v157[7];
  HIWORD(v162) = v158;
  v163 = 0uLL;
  v164 = v169[0];
  v165 = 0uLL;
  LOBYTE(v166) = 0;
  *(&v166 + 1) = *v157;
  DWORD1(v166) = *&v157[3];
  *(&v166 + 1) = v98;
  *&v167[0] = MEMORY[0x277D84F90];
  *(v167 + 8) = 0u;
  *(&v167[1] + 8) = 0u;
  *(&v167[2] + 1) = 0;
  v168 = 2;
  nullsub_1();
  v105 = v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row;
  v106 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 144);
  v169[8] = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 128);
  v169[9] = v106;
  v170 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 160);
  v107 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 80);
  v169[4] = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 64);
  v169[5] = v107;
  v108 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 112);
  v169[6] = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 96);
  v169[7] = v108;
  v109 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 16);
  v169[0] = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row);
  v169[1] = v109;
  v110 = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 48);
  v169[2] = *(v156 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 32);
  v169[3] = v110;
  v111 = v167[0];
  v112 = v167[2];
  *(v105 + 128) = v167[1];
  *(v105 + 144) = v112;
  *(v105 + 160) = v168;
  v113 = v165;
  *(v105 + 64) = v164;
  *(v105 + 80) = v113;
  *(v105 + 96) = v166;
  *(v105 + 112) = v111;
  v114 = v161;
  *v105 = v160;
  *(v105 + 16) = v114;
  v115 = v163;
  *(v105 + 32) = v162;
  *(v105 + 48) = v115;
  sub_20B520158(v169, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_42;
  }

  v117 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {

    swift_unknownObjectRelease();
LABEL_42:

    (v154)(v145, v104);
    return (*(v129 + 8))(v144, v130);
  }

  sub_20B61D140(v156, Strong);
  if (!v119)
  {
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
LABEL_41:
    v104 = v142;
    goto LABEL_42;
  }

  v121 = v119;
  v152 = v118;
  v153 = v120;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v122 = sub_20C13D374();
  v123 = v135;
  v124 = v136;
  *v135 = v122;
  v125 = v137;
  (*(v124 + 104))(v123, *MEMORY[0x277D85200], v137);
  v126 = sub_20C13C584();
  result = (*(v124 + 8))(v123, v125);
  if (v126)
  {
    if ((v134 & 0x80) != 0)
    {
      sub_20C10AB60(v156, v152, v134 & 1, v117);
    }

    else
    {
      sub_20B620870(v152, v121, v153, v156, v134 & 1, v117);
    }

    swift_unknownObjectRelease();

    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t sub_20B59935C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_20C1344C4();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623E0, &unk_20C14FE70);
  v53 = *(v55 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v9;
  MEMORY[0x28223BE20](v10);
  v56 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8, &unk_20C14FB80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = sub_20C135AE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v19, v14, &qword_27C7620C8, &unk_20C14FB80);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20B520158(v14, &qword_27C7620C8, &unk_20C14FB80);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v45 = v15;
    v46 = v16;
    v21 = *(v16 + 32);
    v43 = v5;
    v44 = v18;
    v21(v18, v14, v15);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_archivedSessionClient), *(v2 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_archivedSessionClient + 24));
    v22 = v47;
    sub_20C135AA4();
    sub_20C134324();
    (*(v48 + 8))(v22, v49);
    v23 = v52;
    sub_20C139B74();

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_20B5DF1B8;
    *(v25 + 24) = v24;
    v26 = v53;
    v27 = v50;
    v28 = v55;
    (*(v53 + 16))(v50, v23, v55);
    v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v30 = (v43 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v29, v27, v28);
    v32 = (v31 + v30);
    *v32 = sub_20B5DF1D4;
    v32[1] = v25;
    v33 = v56;
    sub_20C137C94();
    (*(v26 + 8))(v23, v28);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20B599B3C;
    *(v34 + 24) = 0;
    v36 = v57;
    v35 = v58;
    v37 = v54;
    (*(v57 + 16))(v54, v33, v58);
    v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v39 = (v51 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    (*(v36 + 32))(v40 + v38, v37, v35);
    v41 = (v40 + v39);
    *v41 = sub_20B5DF204;
    v41[1] = v34;
    sub_20C137C94();
    (*(v36 + 8))(v33, v35);
    return (*(v46 + 8))(v44, v45);
  }
}

uint64_t sub_20B5999B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0, &unk_20C14FE60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_20C134D54();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_resumableSession;
    swift_beginAccess();
    sub_20B5DF2D4(v5, v7 + v10, &unk_27C7623D0, &unk_20C14FE60);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20B599B3C()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "No resumable session found", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20B599C80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  sub_20B59935C(v6);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B5DF19C;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B5DF6A0;
  *(v17 + 24) = v16;
  (*(v1 + 16))(v3, v6, v0);
  v18 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v19 = (v2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v1 + 32))(v20 + v18, v3, v0);
  v21 = (v20 + v19);
  *v21 = sub_20B5DF4E8;
  v21[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  sub_20C137C94();
  (*(v1 + 8))(v6, v0);
  v22 = v26;
  v23 = sub_20C137CB4();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v23(sub_20B5DF6DC, v24);

  return (*(v27 + 8))(v10, v22);
}

void *sub_20B59A098(uint64_t a1)
{
  v2 = v1;
  v90 = a1;
  v84 = type metadata accessor for ButtonAction(0);
  v88 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v77 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = v74 - v5;
  MEMORY[0x28223BE20](v6);
  v86 = (v74 - v7);
  MEMORY[0x28223BE20](v8);
  v85 = v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330, &qword_20C1875B0);
  v82 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v87 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = v74 - v13;
  MEMORY[0x28223BE20](v14);
  v89 = v74 - v15;
  v16 = sub_20C13BB84();
  v80 = *(v16 - 8);
  v81 = v16;
  MEMORY[0x28223BE20](v16);
  v79 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutSessionRequest(0);
  MEMORY[0x28223BE20](started);
  v91 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0, &unk_20C14FE60);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v74 - v20;
  v22 = sub_20C134734();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = v74 - v27;
  v29 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_marketingOffer;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v29, v28, &unk_27C768660, &unk_20C152F60);
  v30 = sub_20C018E84(v28);
  sub_20B520158(v28, &unk_27C768660, &unk_20C152F60);
  if (!*(v30 + 16))
  {
    v75 = v30;
    v31 = v90;
    v74[1] = sub_20C134324();
    sub_20C134484();
    v32 = sub_20C1346F4();
    (*(v23 + 8))(v25, v22);
    v33 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_resumableSession;
    swift_beginAccess();
    sub_20B52F9E8(v2 + v33, v21, &unk_27C7623D0, &unk_20C14FE60);
    v34 = sub_20C1344C4();
    v35 = v91;
    (*(*(v34 - 8) + 16))(v91, v31, v34);
    swift_storeEnumTagMultiPayload();
    v36 = v79;
    sub_20C13B4A4();
    sub_20C13BB64();
    (v80[1])(v36, v81);
    v37 = v89;
    v81 = v21;
    sub_20C01C180(v32, v21, v35, v89);

    v38 = *(v88 + 48);
    v39 = v84;
    v40 = v38(v37, 1, v84);
    MEMORY[0x28223BE20](v40);
    v74[-4] = v2;
    LOBYTE(v74[-3]) = v41;
    v74[-2] = v35;
    v80 = sub_20B613FF8(sub_20B5DF10C, &v74[-6], v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A70, &qword_20C169E10);
    v42 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v43 = swift_allocObject();
    sub_20B52F9E8(v37, v43 + v42, &qword_27C770330, &qword_20C1875B0);
    v44 = v83;
    sub_20B52F9E8(v43 + v42, v83, &qword_27C770330, &qword_20C1875B0);
    v45 = v44;
    v46 = v87;
    sub_20B5DF134(v45, v87, &qword_27C770330, &qword_20C1875B0);
    v47 = v38(v46, 1, v39);
    v48 = v2;
    v49 = v88;
    if (v47 == 1)
    {
      sub_20B520158(v87, &qword_27C770330, &qword_20C1875B0);
      v50 = MEMORY[0x277D84F90];
      v51 = v81;
    }

    else
    {
      sub_20B5D9970(v87, v85, type metadata accessor for ButtonAction);
      v50 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_20BC05920(0, v50[2] + 1, 1, v50);
      }

      v53 = v50[2];
      v52 = v50[3];
      v51 = v81;
      if (v53 >= v52 >> 1)
      {
        v50 = sub_20BC05920((v52 > 1), v53 + 1, 1, v50);
      }

      v50[2] = v53 + 1;
      sub_20B5D9970(v85, v50 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v53, type metadata accessor for ButtonAction);
    }

    swift_setDeallocating();
    sub_20B520158(v43 + v42, &qword_27C770330, &qword_20C1875B0);
    swift_deallocClassInstance();
    v92 = v50;
    sub_20B8D9064(v80);
    sub_20B520158(v51, &unk_27C7623D0, &unk_20C14FE60);
    v54 = v92;
    sub_20B520158(v89, &qword_27C770330, &qword_20C1875B0);
    sub_20B5DF274(v91, type metadata accessor for StartWorkoutSessionRequest);
    v55 = v54[2];
    if (v55 < 2)
    {
    }

    else
    {
      type metadata accessor for ButtonAction.ActionType(0);
      v56 = v86;
      swift_storeEnumTagMultiPayload();
      v56[1] = 0u;
      v56[2] = 0u;
      *v56 = 0u;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_20BC05920(0, v55 + 1, 1, v54);
      }

      v58 = v54[2];
      v57 = v54[3];
      if (v58 >= v57 >> 1)
      {
        v54 = sub_20BC05920((v57 > 1), v58 + 1, 1, v54);
      }

      v54[2] = v58 + 1;
      v59 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v60 = *(v49 + 72);
      sub_20B5D9970(v86, v54 + v59 + v60 * v58, type metadata accessor for ButtonAction);
      __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v48 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
      v61 = sub_20C138D34();
      v63 = v62;
      v64 = v76;
      v65 = &v76[*(v39 + 28)];
      *v65 = 0;
      *(v65 + 1) = 0;
      *(v65 + 2) = v54;
      v66 = v64;
      swift_storeEnumTagMultiPayload();
      *v66 = 0u;
      *(v66 + 16) = 0u;
      *(v66 + 32) = v61;
      *(v66 + 40) = v63;
      v67 = v77;
      sub_20B5DF20C(v66, v77, type metadata accessor for ButtonAction);
      v68 = v75;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_20BC05920(0, v68[2] + 1, 1, v68);
      }

      v70 = v68[2];
      v69 = v68[3];
      v71 = v68;
      if (v70 >= v69 >> 1)
      {
        v71 = sub_20BC05920((v69 > 1), v70 + 1, 1, v68);
      }

      sub_20B5DF274(v66, type metadata accessor for ButtonAction);
      v71[2] = v70 + 1;
      sub_20B5D9970(v67, v71 + v59 + v70 * v60, type metadata accessor for ButtonAction);
      v54 = v71;
    }

    v92 = v54;
    v72 = sub_20B59AF08(v90);
    sub_20B8D9064(v72);
    return v92;
  }

  return v30;
}

uint64_t sub_20B59AB58()
{
  v1 = type metadata accessor for ButtonAction(0);
  v23 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_20C134284();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134444();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &unk_27C7623C0, &unk_20C14FE50);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200, &unk_20C1639C0) + 48)];
    (*(v11 + 16))(v6, v13, v10);
    *v15 = sub_20C134324();
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
    v17 = sub_20C138D34();
    v19 = v18;
    sub_20B5DF20C(v6, &v3[*(v1 + 28)], type metadata accessor for ButtonAction.ActionType);
    *v3 = 0u;
    *(v3 + 1) = 0u;
    *(v3 + 4) = v17;
    *(v3 + 5) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v20 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_20C14F980;
    sub_20B5D9970(v3, v21 + v20, type metadata accessor for ButtonAction);
    sub_20B5DF274(v6, type metadata accessor for ButtonAction.ActionType);
    (*(v11 + 8))(v13, v10);
    return v21;
  }
}

uint64_t sub_20B59AF08(uint64_t a1)
{
  v52 = a1;
  *&v56 = type metadata accessor for ButtonAction(0);
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v58 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C132E94();
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C138034();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_20C136F94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v20 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_remoteBrowsingSource), *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_remoteBrowsingSource + 24));
  sub_20C13B174();
  v21 = sub_20C136C64();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) == 1)
  {
    sub_20B520158(v9, &qword_27C768690, &unk_20C14FD90);
    return MEMORY[0x277D84F90];
  }

  sub_20C1369E4();
  (*(v22 + 8))(v9, v21);
  (*(v11 + 32))(v19, v16, v10);
  sub_20C136F24();
  sub_20B5DF0C4(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
  v23 = sub_20C13DA74();
  v26 = *(v11 + 8);
  v24 = v11 + 8;
  v25 = v26;
  v26(v13, v10);
  if ((v23 & 1) == 0)
  {
    v25(v19, v10);
    return MEMORY[0x277D84F90];
  }

  v50 = v24;
  v27 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarks;
  if (*(*(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarks) + 16))
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
    v28 = sub_20C138D34();
    v30 = v29;
    v31 = *(v20 + v27);
    v32 = v58;
    *&v58[*(v56 + 28)] = v31;
    type metadata accessor for ButtonAction.ActionType(0);
    swift_storeEnumTagMultiPayload();
    *v32 = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 32) = v28;
    *(v32 + 40) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v33 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_20C14F980;
    sub_20B5D9970(v32, v34 + v33, type metadata accessor for ButtonAction);
  }

  else
  {
    sub_20C134324();
    sub_20C132E84();
    v36 = v55;
    sub_20C138014();
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer + 24));
    v37 = sub_20C138D34();
    v51 = v38;
    v52 = v37;
    v49 = *(v56 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
    v39 = v53;
    v40 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v41 = swift_allocObject();
    v56 = xmmword_20C14F980;
    *(v41 + 16) = xmmword_20C14F980;
    v42 = v54;
    (*(v39 + 16))(v41 + v40, v36, v54);
    v43 = sub_20BE8BBF4(v41);
    swift_setDeallocating();
    v44 = *(v39 + 8);
    v44(v41 + v40, v42);
    swift_deallocClassInstance();
    v45 = v58;
    *&v58[v49] = v43;
    type metadata accessor for ButtonAction.ActionType(0);
    swift_storeEnumTagMultiPayload();
    *v45 = 0u;
    *(v45 + 16) = 0u;
    v46 = v51;
    *(v45 + 32) = v52;
    *(v45 + 40) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
    v47 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v56;
    sub_20B5D9970(v45, v34 + v47, type metadata accessor for ButtonAction);
    v44(v55, v42);
  }

  v25(v19, v10);
  return v34;
}

uint64_t sub_20B59B61C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_archivedSessionClient));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_catalogClient));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_remoteBrowsingSource));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_storefrontLocalizer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_mediaTagStringBuilder));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutPlanClient));

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutDetail, &qword_27C7620C8, &unk_20C14FB80);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_resumableSession, &unk_27C7623D0, &unk_20C14FE60);
  v8 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_calendar;
  v9 = sub_20C133154();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_marketingOffer, &unk_27C768660, &unk_20C152F60);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_config, &qword_27C761800, &qword_20C14FDA0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_serviceSubscription, &unk_27C762390, &unk_20C15EC90);

  return v0;
}

uint64_t sub_20B59B8F0()
{
  sub_20B59B61C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVCatalogWorkoutDetailHeaderShelf(uint64_t a1)
{
  result = qword_27C762110;
  if (!qword_27C762110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B59B99C(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B59BCA4(319, &qword_27C762120, MEMORY[0x277D51E68]);
    if (v2 <= 0x3F)
    {
      sub_20B59BCA4(319, &qword_27C762128, MEMORY[0x277D51098]);
      if (v3 <= 0x3F)
      {
        sub_20C133154();
        if (v4 <= 0x3F)
        {
          sub_20B59BCA4(319, &qword_281103B50, MEMORY[0x277D540B0]);
          if (v5 <= 0x3F)
          {
            sub_20B59BCA4(319, &qword_281103BF0, MEMORY[0x277D50560]);
            if (v6 <= 0x3F)
            {
              sub_20B59BCA4(319, &qword_27C762130, MEMORY[0x277D51C40]);
              if (v7 <= 0x3F)
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

void sub_20B59BCA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20B59BCF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762330, &unk_20C169E00);
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v51 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v51 - v10;
  v11 = sub_20C13C554();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C14F980;
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *(v15 + 32) = v16 | 0x1000000000000001;
  v64 = 0uLL;
  LOBYTE(v65) = 1;
  *(&v65 + 1) = 0;
  *&v66 = 0;
  WORD4(v66) = 128;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  LOBYTE(v70) = 0;
  *(&v70 + 1) = v15;
  *&v71[0] = MEMORY[0x277D84F90];
  *(v71 + 8) = 0u;
  *(&v71[1] + 8) = 0u;
  *(&v71[2] + 1) = 0;
  v72 = 2;
  nullsub_1();
  v17 = v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row;
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 144);
  v73[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 128);
  v73[9] = v18;
  v74 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 160);
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 80);
  v73[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 64);
  v73[5] = v19;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 112);
  v73[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 96);
  v73[7] = v20;
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 16);
  v73[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row);
  v73[1] = v21;
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 48);
  v73[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 32);
  v73[3] = v22;
  v23 = v71[2];
  *(v17 + 128) = v71[1];
  *(v17 + 144) = v23;
  *(v17 + 160) = v72;
  v24 = v69;
  *(v17 + 64) = v68;
  *(v17 + 80) = v24;
  v25 = v71[0];
  *(v17 + 96) = v70;
  *(v17 + 112) = v25;
  v26 = v65;
  *v17 = v64;
  *(v17 + 16) = v26;
  v27 = v67;
  *(v17 + 32) = v66;
  *(v17 + 48) = v27;
  sub_20B520158(v73, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v29 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    sub_20B59FD70(v8);
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = sub_20B5DF584;
    *(v36 + 24) = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_20B5D9CB0;
    *(v37 + 24) = v36;
    v38 = v55;
    v39 = v56;
    (*(v4 + 16))(v55, v8, v56);
    v40 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v41 = (v5 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    (*(v4 + 32))(v42 + v40, v38, v39);
    v43 = (v42 + v41);
    *v43 = sub_20B5D9CCC;
    v43[1] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
    v44 = v57;
    sub_20C137C94();
    (*(v4 + 8))(v8, v39);
    v45 = v59;
    v46 = sub_20C137CB4();
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    v46(sub_20B52347C, v47);

    (*(v58 + 8))(v44, v45);
    swift_getObjectType();
    sub_20C13AEC4();
    swift_allocObject();
    swift_weakInit();

    sub_20C13A7A4();

    __swift_destroy_boxed_opaque_existential_1(v63);

    v48 = v60;
    sub_20C13B6E4();
    swift_allocObject();
    swift_weakInit();
    sub_20B5D9D0C();
    v49 = v62;
    v50 = sub_20C13C1C4();

    (*(v61 + 8))(v48, v49);
    *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_multiUserEligibilitySubscription) = v50;
  }

  sub_20B61D140(v1, Strong);
  if (!v31)
  {
    sub_20C0C2D50(0);
    goto LABEL_7;
  }

  v52 = v30;
  v53 = v32;
  v54 = v31;
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  *v14 = sub_20C13D374();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v33 = sub_20C13C584();
  result = (*(v12 + 8))(v14, v11);
  if (v33)
  {
    sub_20B620870(v52, v54, v53, v1, 1, v29);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_20B59C4E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DEBEC;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B5DF4C4;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DEC34;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5DF4C8;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5DF4B0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5DEC7C;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5DF4B4;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5DECC0;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_282295430, sub_20B5DF64C, &unk_282295458, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5DED04;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5DED48;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5DF4B8;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DED60;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

uint64_t sub_20B59E128@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DEA60;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B5DF4C4;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DEAA8;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5DF4C8;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5DF4B0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5DEAF0;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5DF4B4;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5DEB34;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_282294EE0, sub_20B5DF64C, &unk_282294F08, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5DEB78;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5DEBBC;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5DF4B8;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DEBD4;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

uint64_t sub_20B59FD70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5D9DB8;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B58D058;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5D9E28;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5D9E70;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5D9EA0;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5D9EC0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5D9EF0;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5D9F30;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5D9F60;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_282291010, sub_20B5DA038, &unk_282291038, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5D9FA0;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5D9FE0;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5D9FF4;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DA024;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

uint64_t sub_20B5A19B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DA65C;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B5DF4C4;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DA6A4;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5DF4C8;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5DF4B0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5DA6EC;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5DF4B4;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5DA730;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_2822920A0, sub_20B5DF64C, &unk_2822920C8, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5DA774;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5DA7B8;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5DF4B8;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DA7D0;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

uint64_t sub_20B5A35FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DEF04;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B5DF4C4;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DEF4C;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5DF4C8;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5DF4B0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5DEF94;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5DF4B4;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5DEFD8;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_282295ED0, sub_20B5DF64C, &unk_282295EF8, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5DF01C;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5DF060;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5DF4B8;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DF078;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

uint64_t sub_20B5A5244@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v181 = a1;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v198 = *(v179 - 8);
  v178 = *(v198 + 64);
  MEMORY[0x28223BE20](v179);
  v192 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v177 = &v175 - v5;
  v189 = sub_20C13B894();
  v188 = *(v189 - 1);
  MEMORY[0x28223BE20](v189);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v206 = *(v190 - 8);
  v186 = v206[8];
  MEMORY[0x28223BE20](v190);
  v195 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v176 = &v175 - v9;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v211 = *(v212 - 1);
  v209 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v208 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v204 = &v175 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30, &unk_20C14D9D0);
  v13 = *(v203 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v203);
  MEMORY[0x28223BE20](v15);
  v17 = &v175 - v16;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v214 = *(v194 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v194);
  v180 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v191 = &v175 - v20;
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v207 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v205 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v210 = &v175 - v28;
  MEMORY[0x28223BE20](v29);
  v196 = &v175 - v30;
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v199 = &v175 - v34;
  v35 = sub_20C13BB84();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v213 = 0x800000020C192FE0;
  sub_20C13BB64();
  (*(v36 + 8))(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860, &unk_20C14FD70);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v219, v219[3]);
  sub_20C1398E4();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20B5DED78;
  *(v39 + 24) = v2;
  v40 = v17;
  v41 = v17;
  v42 = v203;
  (*(v13 + 16))(&v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v203);
  v43 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v44 = swift_allocObject();
  (*(v13 + 32))(v44 + v43, &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20B5DF4C4;
  v45[1] = v39;

  sub_20C137C94();
  (*(v13 + 8))(v41, v42);
  __swift_project_boxed_opaque_existential_1(v215, v215[3]);
  v46 = v204;
  sub_20C1392E4();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DEDC0;
  *(v47 + 24) = v2;
  v193 = v2;
  v48 = v211;
  v49 = v208;
  v50 = v46;
  v51 = v212;
  (*(v211 + 16))(v208, v46, v212);
  v52 = v48;
  v53 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v54 = (v209 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v55 + v53;
  v57 = v51;
  (*(v52 + 32))(v56, v49, v51);
  v58 = (v55 + v54);
  *v58 = sub_20B5DF4C8;
  v58[1] = v47;

  v59 = v196;
  sub_20C137C94();
  (*(v52 + 8))(v50, v57);
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000029;
  v60[3] = v213;
  v60[4] = 46;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_20B5DF5EC;
  *(v61 + 24) = v60;
  v62 = v214;
  v203 = *(v214 + 16);
  v209 = v214 + 16;
  v63 = v210;
  v64 = v194;
  (v203)(v210, v59, v194);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v208 = *(v62 + 80);
  v67 = v18 + v66;
  v68 = v66;
  v204 = v66;
  v69 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v202 = *(v65 + 32);
  v211 = v65 + 32;
  v202(v70 + v68, v63, v64);
  v71 = (v70 + v69);
  *v71 = sub_20B5DF4B0;
  v71[1] = v61;
  sub_20C137C94();
  v212 = *(v65 + 8);
  v214 = v65 + 8;
  (v212)(v59, v64);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  v72 = v188;
  v73 = v187;
  v74 = v189;
  (*(v188 + 104))(v187, *MEMORY[0x277D4FA68], v189);
  v75 = v176;
  sub_20C13B8F4();
  (*(v72 + 8))(v73, v74);
  v76 = swift_allocObject();
  v77 = v193;
  *(v76 + 16) = sub_20B5DEE08;
  *(v76 + 24) = v77;
  v78 = v206;
  v79 = v206[2];
  v188 = (v206 + 2);
  v189 = v79;
  v80 = v195;
  v81 = v190;
  (v79)(v195, v75, v190);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v187 = *(v78 + 80);
  v185 = v83;
  v84 = (v186 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v182 = v84;
  v85 = swift_allocObject();
  v184 = v82[4];
  v186 = v82 + 4;
  v184(v85 + v83, v80, v81);
  v86 = (v85 + v84);
  *v86 = sub_20B5DF4B4;
  v86[1] = v76;

  v87 = v210;
  sub_20C137C94();
  v88 = v82[1];
  v206 = v82 + 1;
  v183 = v88;
  v89 = v75;
  v88(v75, v81);
  v90 = swift_allocObject();
  v90[2] = 0xD000000000000029;
  v90[3] = v213;
  v90[4] = 50;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_20B5DF5EC;
  *(v91 + 24) = v90;
  v92 = v205;
  v93 = v194;
  (v203)(v205, v87, v194);
  v201 = v69;
  v94 = swift_allocObject();
  v95 = v204;
  v202(&v204[v94], v92, v93);
  v96 = (v94 + v69);
  *v96 = sub_20B5DF4B0;
  v96[1] = v91;
  sub_20C137C94();
  (v212)(v87, v93);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_20C13B954();
  v97 = swift_allocObject();
  *(v97 + 16) = sub_20B5DEE4C;
  *(v97 + 24) = v77;
  v98 = v195;
  v99 = v81;
  (v189)(v195, v89, v81);
  v100 = v182;
  v101 = swift_allocObject();
  v184(v101 + v185, v98, v99);
  v102 = (v101 + v100);
  *v102 = sub_20B5DF4B4;
  v102[1] = v97;

  v103 = v205;
  sub_20C137C94();
  v183(v89, v99);
  v104 = swift_allocObject();
  v104[2] = 0xD000000000000029;
  v104[3] = v213;
  v104[4] = 54;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20B5DF5EC;
  *(v105 + 24) = v104;
  v106 = v207;
  v107 = v203;
  (v203)(v207, v103, v93);
  v108 = v201;
  v109 = swift_allocObject();
  v110 = v202;
  v202(&v95[v109], v106, v93);
  v111 = (v109 + v108);
  *v111 = sub_20B5DF4B0;
  v111[1] = v105;
  sub_20C137C94();
  (v212)(v103, v93);
  v112 = v193;
  sub_20B5AE25C(&v220, &v216, &unk_282295980, sub_20B5DF64C, &unk_2822959A8, sub_20B5DF64C, v89);
  v113 = swift_allocObject();
  *(v113 + 16) = sub_20B5DEE90;
  *(v113 + 24) = v112;
  v114 = v195;
  v115 = v190;
  (v189)(v195, v89, v190);
  v116 = v182;
  v117 = swift_allocObject();
  v184(v117 + v185, v114, v115);
  v118 = (v117 + v116);
  *v118 = sub_20B5DF4B4;
  v118[1] = v113;
  v119 = v112;

  v120 = v207;
  sub_20C137C94();
  v183(v89, v115);
  v121 = swift_allocObject();
  v121[2] = 0xD000000000000029;
  v121[3] = v213;
  v121[4] = 61;
  v122 = swift_allocObject();
  *(v122 + 16) = sub_20B5DF5EC;
  *(v122 + 24) = v121;
  v123 = v197;
  v107(v197, v120, v93);
  v124 = v201;
  v125 = swift_allocObject();
  v110(&v204[v125], v123, v93);
  v126 = (v125 + v124);
  *v126 = sub_20B5DF4B0;
  v126[1] = v122;
  sub_20C137C94();
  (v212)(v120, v93);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v127 = v177;
  sub_20C139D74();
  v128 = swift_allocObject();
  *(v128 + 16) = sub_20B5DEED4;
  *(v128 + 24) = v119;
  v129 = v198;
  v130 = *(v198 + 16);
  v195 = (v198 + 16);
  v206 = v130;
  v131 = v192;
  v132 = v179;
  (v130)(v192, v127, v179);
  v133 = (*(v129 + 80) + 16) & ~*(v129 + 80);
  v190 = *(v129 + 80);
  v188 = v133;
  v134 = (v178 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = v134;
  v135 = swift_allocObject();
  v187 = *(v129 + 32);
  v189 = (v129 + 32);
  (v187)(v135 + v133, v131, v132);
  v136 = (v135 + v134);
  *v136 = sub_20B5DF4B8;
  v136[1] = v128;

  v137 = v197;
  sub_20C137C94();
  v138 = *(v129 + 8);
  v198 = v129 + 8;
  v139 = v127;
  v138(v127, v132);
  v140 = swift_allocObject();
  v140[2] = 0xD000000000000029;
  v140[3] = v213;
  v140[4] = 65;
  v141 = swift_allocObject();
  *(v141 + 16) = sub_20B5DF5EC;
  *(v141 + 24) = v140;
  v142 = v191;
  v143 = v194;
  (v203)(v191, v137, v194);
  v144 = v201;
  v145 = swift_allocObject();
  v202(&v204[v145], v142, v143);
  v146 = (v145 + v144);
  *v146 = sub_20B5DF4B0;
  v146[1] = v141;
  sub_20C137C94();
  (v212)(v137, v143);
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  sub_20C139D64();
  v147 = swift_allocObject();
  v148 = v193;
  *(v147 + 16) = sub_20B5DEEEC;
  *(v147 + 24) = v148;
  v149 = v192;
  v150 = v139;
  (v206)(v192, v139, v132);
  v151 = v186;
  v152 = swift_allocObject();
  (v187)(v152 + v188, v149, v132);
  v153 = (v151 + v152);
  *v153 = sub_20B5DF4B8;
  v153[1] = v147;

  v154 = v191;
  sub_20C137C94();
  v138(v150, v132);
  v155 = swift_allocObject();
  v155[2] = 0xD000000000000029;
  v155[3] = v213;
  v155[4] = 69;
  v156 = swift_allocObject();
  *(v156 + 16) = sub_20B5DF5EC;
  *(v156 + 24) = v155;
  v157 = v180;
  v158 = v203;
  (v203)(v180, v154, v143);
  v159 = v201;
  v160 = v208;
  v161 = swift_allocObject();
  v202(&v204[v161], v157, v143);
  v162 = (v161 + v159);
  *v162 = sub_20B5DF4B0;
  v162[1] = v156;
  v163 = v197;
  sub_20C137C94();
  v164 = v214;
  (v212)(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v165 = *(v164 + 64);
  v166 = swift_allocObject();
  *(v166 + 16) = xmmword_20C14F990;
  v167 = v166 + ((v160 + 32) & ~v160);
  v158(v167, v199, v143);
  v158(v167 + v165, v200, v143);
  v158(v167 + 2 * v165, v210, v143);
  v168 = v196;
  v158(v167 + 3 * v165, v196, v143);
  v169 = v207;
  v158(v167 + 4 * v165, v207, v143);
  v158(v167 + 5 * v165, v163, v143);
  v170 = v167 + 6 * v165;
  v171 = v205;
  v158(v170, v205, v143);
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  v172 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v173 = v212;
  (v212)(v163, v143);
  v173(v169, v143);
  v173(v171, v143);
  v173(v210, v143);
  v173(v168, v143);
  v173(v200, v143);
  v173(v199, v143);
  __swift_destroy_boxed_opaque_existential_1(&v216);
  __swift_destroy_boxed_opaque_existential_1(v215);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  __swift_destroy_boxed_opaque_existential_1(v219);
  return __swift_destroy_boxed_opaque_existential_1(&v220);
}

BOOL sub_20B5A6E8C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B598280(1);
  }

  return Strong == 0;
}

uint64_t sub_20B5A6EF0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B599C80();
  }

  return result;
}

uint64_t sub_20B5A6F48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B598280(1);
  }

  return result;
}

void sub_20B5A8768(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(char *, char *), void (*a20)(uint64_t, char *, uint64_t, __n128), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (*a25)(uint64_t, char *, uint64_t, __n128), void *a26, void (*a27)(uint64_t, char *, uint64_t), uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v686 = a8;
  v780 = a9;
  v771 = a4;
  v772 = a7;
  v774 = a5;
  v775 = a6;
  v776 = a3;
  v773 = a2;
  v781 = a1;
  v623 = a52;
  v621 = a51;
  v617 = a50;
  v613 = a49;
  v631 = a48;
  v630 = a47;
  v628 = a46;
  v626 = a45;
  v624 = a44;
  v618 = a43;
  v612 = a42;
  v609 = a41;
  v619 = a40;
  v616 = a39;
  v614 = a38;
  v611 = a37;
  v688 = a36;
  v629 = a35;
  v627 = a34;
  v625 = a33;
  v622 = a32;
  v620 = a31;
  v615 = a30;
  v610 = a29;
  v608 = a28;
  v639 = a27;
  v743 = a26;
  v760 = a25;
  v641 = a24;
  v640 = a23;
  v684 = a22;
  v679 = a21;
  v681 = a20;
  v698 = a19;
  v685 = a18;
  v683 = a17;
  v682 = a16;
  v676 = a15;
  v680 = a14;
  v675 = a13;
  v678 = a12;
  v674 = a11;
  v677 = a10;
  v693 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v692 = *(v693 - 8);
  MEMORY[0x28223BE20](v693);
  v690 = &v603 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v689 = v52;
  MEMORY[0x28223BE20](v53);
  v691 = &v603 - v54;
  v697 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v696 = *(v697 - 8);
  MEMORY[0x28223BE20](v697);
  v695 = &v603 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v694 = v55;
  MEMORY[0x28223BE20](v56);
  v747 = &v603 - v57;
  v759 = sub_20C1344C4();
  v748 = *(v759 - 8);
  MEMORY[0x28223BE20](v759);
  v757 = &v603 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v687 = v58;
  MEMORY[0x28223BE20](v59);
  v758 = &v603 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0, &unk_20C14FCE0);
  MEMORY[0x28223BE20](v61 - 8);
  v634 = &v603 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v637 = &v603 - v64;
  MEMORY[0x28223BE20](v65);
  v635 = &v603 - v66;
  MEMORY[0x28223BE20](v67);
  v638 = &v603 - v68;
  MEMORY[0x28223BE20](v69);
  v633 = &v603 - v70;
  MEMORY[0x28223BE20](v71);
  v636 = &v603 - v72;
  MEMORY[0x28223BE20](v73);
  v632 = &v603 - v74;
  v671 = sub_20C134284();
  v670 = *(v671 - 8);
  MEMORY[0x28223BE20](v671);
  v669 = &v603 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20C132C14();
  v77 = *(v76 - 8);
  v769 = v76;
  v770 = v77;
  MEMORY[0x28223BE20](v76);
  v750 = &v603 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v700 = sub_20C138894();
  v699 = *(v700 - 8);
  MEMORY[0x28223BE20](v700);
  v604 = &v603 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v668 = &v603 - v81;
  v82 = sub_20C137254();
  v764 = *(v82 - 8);
  v765 = v82;
  MEMORY[0x28223BE20](v82);
  v763 = &v603 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v762 = &v603 - v85;
  v756 = v86;
  MEMORY[0x28223BE20](v87);
  v761 = &v603 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v744 = *(v89 - 8);
  MEMORY[0x28223BE20](v89 - 8);
  v746 = &v603 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v755 = &v603 - v92;
  v745 = v93;
  MEMORY[0x28223BE20](v94);
  v754 = &v603 - v95;
  started = type metadata accessor for StartWorkoutSessionRequest(0);
  MEMORY[0x28223BE20](started);
  v673 = &v603 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v672 = &v603 - v98;
  MEMORY[0x28223BE20](v99);
  v753 = &v603 - v100;
  MEMORY[0x28223BE20](v101);
  v752 = &v603 - v102;
  v741 = sub_20C133954();
  v740 = *(v741 - 8);
  MEMORY[0x28223BE20](v741);
  v749 = &v603 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v739 = sub_20C134014();
  v738 = *(v739 - 8);
  MEMORY[0x28223BE20](v739);
  v737 = &v603 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50, &unk_20C14FB70);
  v652 = *(v105 - 8);
  v106 = *(v652 + 64);
  MEMORY[0x28223BE20](v105 - 8);
  v666 = &v603 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v660 = &v603 - v108;
  MEMORY[0x28223BE20](v109);
  v662 = &v603 - v110;
  MEMORY[0x28223BE20](v111);
  v651 = &v603 - v112;
  MEMORY[0x28223BE20](v113);
  v664 = &v603 - v114;
  MEMORY[0x28223BE20](v115);
  v657 = &v603 - v116;
  MEMORY[0x28223BE20](v117);
  v655 = &v603 - v118;
  MEMORY[0x28223BE20](v119);
  v654 = &v603 - v120;
  MEMORY[0x28223BE20](v121);
  v650 = &v603 - v122;
  v123 = sub_20C1352E4();
  v124 = *(v123 - 8);
  v767 = v123;
  v768 = v124;
  MEMORY[0x28223BE20](v123);
  v667 = &v603 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v126);
  v661 = &v603 - v127;
  MEMORY[0x28223BE20](v128);
  v663 = &v603 - v129;
  MEMORY[0x28223BE20](v130);
  v665 = &v603 - v131;
  MEMORY[0x28223BE20](v132);
  v659 = &v603 - v133;
  MEMORY[0x28223BE20](v134);
  v658 = &v603 - v135;
  MEMORY[0x28223BE20](v136);
  v656 = &v603 - v137;
  MEMORY[0x28223BE20](v138);
  v653 = &v603 - v139;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  v649 = *(v140 - 8);
  v141 = *(v649 + 64);
  MEMORY[0x28223BE20](v140 - 8);
  v734 = &v603 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v142);
  v731 = &v603 - v143;
  MEMORY[0x28223BE20](v144);
  v732 = &v603 - v145;
  MEMORY[0x28223BE20](v146);
  v647 = &v603 - v147;
  MEMORY[0x28223BE20](v148);
  v733 = &v603 - v149;
  MEMORY[0x28223BE20](v150);
  v730 = &v603 - v151;
  MEMORY[0x28223BE20](v152);
  v729 = &v603 - v153;
  MEMORY[0x28223BE20](v154);
  v728 = &v603 - v155;
  MEMORY[0x28223BE20](v156);
  v727 = &v603 - v157;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v158 - 8);
  v726 = &v603 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v160);
  v723 = &v603 - v161;
  MEMORY[0x28223BE20](v162);
  v724 = &v603 - v163;
  MEMORY[0x28223BE20](v164);
  v725 = &v603 - v165;
  MEMORY[0x28223BE20](v166);
  v722 = &v603 - v167;
  MEMORY[0x28223BE20](v168);
  v721 = &v603 - v169;
  MEMORY[0x28223BE20](v170);
  v720 = &v603 - v171;
  MEMORY[0x28223BE20](v172);
  v719 = &v603 - v173;
  v174 = sub_20C134F24();
  v175 = *(v174 - 8);
  v777 = v174;
  v778 = v175;
  MEMORY[0x28223BE20](v174);
  v718 = &v603 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v177);
  v715 = &v603 - v178;
  MEMORY[0x28223BE20](v179);
  v716 = &v603 - v180;
  MEMORY[0x28223BE20](v181);
  v717 = &v603 - v182;
  MEMORY[0x28223BE20](v183);
  v714 = &v603 - v184;
  MEMORY[0x28223BE20](v185);
  v713 = &v603 - v186;
  MEMORY[0x28223BE20](v187);
  v712 = &v603 - v188;
  MEMORY[0x28223BE20](v189);
  v710 = &v603 - v190;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v191 - 8);
  v711 = &v603 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v193);
  v707 = &v603 - v194;
  MEMORY[0x28223BE20](v195);
  v708 = &v603 - v196;
  MEMORY[0x28223BE20](v197);
  v709 = &v603 - v198;
  MEMORY[0x28223BE20](v199);
  v706 = &v603 - v200;
  MEMORY[0x28223BE20](v201);
  v705 = &v603 - v202;
  MEMORY[0x28223BE20](v203);
  v704 = &v603 - v204;
  MEMORY[0x28223BE20](v205);
  v703 = &v603 - v206;
  v766 = type metadata accessor for ShelfMetricAction(0);
  v751 = *(v766 - 8);
  MEMORY[0x28223BE20](v766);
  v606 = &v603 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v208);
  v607 = &v603 - v209;
  MEMORY[0x28223BE20](v210);
  v605 = &v603 - v211;
  MEMORY[0x28223BE20](v212);
  v736 = &v603 - v213;
  MEMORY[0x28223BE20](v214);
  v646 = &v603 - v215;
  MEMORY[0x28223BE20](v216);
  v648 = &v603 - v217;
  MEMORY[0x28223BE20](v218);
  v735 = &v603 - v219;
  MEMORY[0x28223BE20](v220);
  v643 = &v603 - v221;
  MEMORY[0x28223BE20](v222);
  v645 = &v603 - v223;
  MEMORY[0x28223BE20](v224);
  v644 = &v603 - v225;
  MEMORY[0x28223BE20](v226);
  v642 = &v603 - v227;
  v702 = sub_20C138B94();
  v701 = *(v702 - 8);
  MEMORY[0x28223BE20](v702);
  v229 = &v603 - ((v228 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v230);
  v232 = &v603 - v231;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v233 - 8);
  v235 = &v603 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v236);
  v238 = &v603 - v237;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0, &unk_20C14FD00);
  MEMORY[0x28223BE20](v239 - 8);
  v241 = &v603 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v242);
  v244 = &v603 - v243;
  v245 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v245);
  v247 = &v603 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for ButtonAction(0);
  sub_20B5DF20C(&v781[*(v248 + 28)], v247, type metadata accessor for ButtonAction.ActionType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
      v343 = *(v342 + 64);
      sub_20B5DF134(&v247[*(v342 + 48)], v244, &qword_27C7622F0, &unk_20C14FD00);
      sub_20B5DF134(&v247[v343], v238, &unk_27C768660, &unk_20C152F60);
      sub_20B52F9E8(v244, v241, &qword_27C7622F0, &unk_20C14FD00);
      v344 = v701;
      v345 = v702;
      if ((*(v701 + 48))(v241, 1, v702) == 1)
      {
        sub_20B520158(v241, &qword_27C7622F0, &unk_20C14FD00);
      }

      else
      {
        (*(v344 + 32))(v232, v241, v345);
        sub_20B52F9E8(v238, v235, &unk_27C768660, &unk_20C152F60);
        v503 = v699;
        v504 = v700;
        if ((*(v699 + 48))(v235, 1, v700) != 1)
        {
          v602 = v604;
          (*(v503 + 32))(v604, v235, v504);
          v698(v232, v602);
          (*(v503 + 8))(v602, v504);
          (*(v344 + 8))(v232, v345);
          sub_20B520158(v238, &unk_27C768660, &unk_20C152F60);
          v339 = &qword_27C7622F0;
          v340 = &unk_20C14FD00;
          v341 = v244;
          goto LABEL_21;
        }

        (*(v344 + 8))(v232, v345);
        sub_20B520158(v235, &unk_27C768660, &unk_20C152F60);
      }

      sub_20B5D9900();
      v505 = swift_allocError();
      *(swift_allocObject() + 16) = v505;
      v506 = v505;
      sub_20C137CA4();
      sub_20B520158(v238, &unk_27C768660, &unk_20C152F60);
      sub_20B520158(v244, &qword_27C7622F0, &unk_20C14FD00);

      return;
    case 2u:
      v301 = *v247;
      v302 = sub_20C136664();
      (*(*(v302 - 8) + 56))(v703, 1, 1, v302);
      (*(v778 + 104))(v710, *MEMORY[0x277D513C0], v777);
      (*(v770 + 56))(v719, 1, 1, v769);
      sub_20B52F9E8(v771, v727, &unk_27C7621D0, &unk_20C14D9B0);
      v303 = v650;
      sub_20B52F9E8(v772, v650, &unk_27C765D50, &unk_20C14FB70);
      v305 = v767;
      v304 = v768;
      v306 = *(v768 + 48);
      v307 = v306(v303, 1, v767);
      v781 = v301;
      if (v307 == 1)
      {
        v308 = v653;
        (*(v304 + 104))(v653, *MEMORY[0x277D51768], v305);
        v309 = v306(v303, 1, v305);
        v310 = v779;
        v312 = v775;
        v311 = v776;
        v313 = v773;
        if (v309 != 1)
        {
          sub_20B520158(v303, &unk_27C765D50, &unk_20C14FB70);
        }
      }

      else
      {
        v308 = v653;
        (*(v304 + 32))(v653, v303, v305);
        v310 = v779;
        v312 = v775;
        v311 = v776;
        v313 = v773;
      }

      v485 = v766;
      v486 = *(v766 + 44);
      v487 = sub_20C136E94();
      v488 = v642;
      (*(*(v487 - 8) + 56))(&v642[v486], 1, 1, v487);
      v489 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v703, v488, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v778 + 32))(v488 + v485[5], v710, v777);
      sub_20B5DF134(v719, v488 + v485[6], &unk_27C7617F0, &unk_20C151A10);
      v490 = (v488 + v485[7]);
      *v490 = v313;
      v490[1] = v311;
      sub_20B5DF134(v727, v488 + v485[8], &unk_27C7621D0, &unk_20C14D9B0);
      v491 = (v488 + v485[9]);
      *v491 = v774;
      v491[1] = v312;
      (*(v304 + 32))(v488 + v485[10], v308, v305);
      *(v488 + v485[12]) = v489;
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        (v760)(v310, v488, Strong);
        swift_unknownObjectRelease();
      }

      __swift_project_boxed_opaque_existential_1((v310 + *v743), *(v310 + *v743 + 24));
      sub_20C13A1E4();
      goto LABEL_65;
    case 3u:
      (*(v738 + 32))(v737, v247, v739);
      v314 = sub_20C136664();
      (*(*(v314 - 8) + 56))(v704, 1, 1, v314);
      (*(v778 + 104))(v712, *MEMORY[0x277D51488], v777);
      (*(v770 + 56))(v720, 1, 1, v769);
      sub_20B52F9E8(v771, v728, &unk_27C7621D0, &unk_20C14D9B0);
      v315 = v654;
      sub_20B52F9E8(v772, v654, &unk_27C765D50, &unk_20C14FB70);
      v317 = v767;
      v316 = v768;
      v318 = *(v768 + 48);
      if (v318(v315, 1, v767) == 1)
      {
        v319 = v656;
        (*(v316 + 104))(v656, *MEMORY[0x277D51778], v317);
        v272 = v318(v315, 1, v317) == 1;
        v320 = v779;
        v321 = v315;
        v323 = v775;
        v322 = v776;
        v324 = v773;
        v325 = v766;
        if (!v272)
        {
          sub_20B520158(v321, &unk_27C765D50, &unk_20C14FB70);
        }
      }

      else
      {
        v319 = v656;
        (*(v316 + 32))(v656, v315, v317);
        v320 = v779;
        v323 = v775;
        v322 = v776;
        v324 = v773;
        v325 = v766;
      }

      v493 = v325[11];
      v494 = sub_20C136E94();
      v495 = v644;
      (*(*(v494 - 8) + 56))(&v644[v493], 1, 1, v494);
      v496 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v704, v495, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v778 + 32))(v495 + v325[5], v712, v777);
      sub_20B5DF134(v720, v495 + v325[6], &unk_27C7617F0, &unk_20C151A10);
      v497 = (v495 + v325[7]);
      *v497 = v324;
      v497[1] = v322;
      sub_20B5DF134(v728, v495 + v325[8], &unk_27C7621D0, &unk_20C14D9B0);
      v498 = (v495 + v325[9]);
      *v498 = v774;
      v498[1] = v323;
      (*(v316 + 32))(v495 + v325[10], v319, v317);
      *(v495 + v325[12]) = v496;
      v499 = swift_unknownObjectWeakLoadStrong();
      if (v499)
      {
        v500 = v499;
        v501 = v632;
        sub_20B5DF20C(v495, v632, type metadata accessor for ShelfMetricAction);
        (*(v751 + 56))(v501, 0, 1, v325);

        v502 = v737;
        sub_20B5D7324(v320, v737, v501, v500, v639);
        swift_unknownObjectRelease();
        sub_20B520158(v501, &unk_27C7622D0, &unk_20C14FCE0);
      }

      else
      {

        v502 = v737;
      }

      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      sub_20B5DF274(v495, type metadata accessor for ShelfMetricAction);
      (*(v738 + 8))(v502, v739);
      return;
    case 4u:
      (*(v740 + 32))(v749, v247, v741);
      v266 = sub_20C136664();
      (*(*(v266 - 8) + 56))(v705, 1, 1, v266);
      (*(v778 + 104))(v713, *MEMORY[0x277D51488], v777);
      (*(v770 + 56))(v721, 1, 1, v769);
      sub_20B52F9E8(v771, v729, &unk_27C7621D0, &unk_20C14D9B0);
      v267 = v655;
      sub_20B52F9E8(v772, v655, &unk_27C765D50, &unk_20C14FB70);
      v269 = v767;
      v268 = v768;
      v270 = *(v768 + 48);
      if (v270(v267, 1, v767) == 1)
      {
        v271 = v658;
        (*(v268 + 104))(v658, *MEMORY[0x277D51778], v269);
        v272 = v270(v267, 1, v269) == 1;
        v273 = v779;
        v274 = v267;
        v276 = v775;
        v275 = v776;
        v277 = v773;
        v278 = v766;
        if (!v272)
        {
          sub_20B520158(v274, &unk_27C765D50, &unk_20C14FB70);
        }
      }

      else
      {
        v271 = v658;
        (*(v268 + 32))(v658, v267, v269);
        v273 = v779;
        v276 = v775;
        v275 = v776;
        v277 = v773;
        v278 = v766;
      }

      v459 = v278[11];
      v460 = sub_20C136E94();
      v461 = v645;
      (*(*(v460 - 8) + 56))(&v645[v459], 1, 1, v460);
      v462 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v705, v461, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v778 + 32))(v461 + v278[5], v713, v777);
      sub_20B5DF134(v721, v461 + v278[6], &unk_27C7617F0, &unk_20C151A10);
      v463 = (v461 + v278[7]);
      *v463 = v277;
      v463[1] = v275;
      sub_20B5DF134(v729, v461 + v278[8], &unk_27C7621D0, &unk_20C14D9B0);
      v464 = (v461 + v278[9]);
      *v464 = v774;
      v464[1] = v276;
      (*(v268 + 32))(v461 + v278[10], v271, v269);
      *(v461 + v278[12]) = v462;
      v465 = swift_unknownObjectWeakLoadStrong();
      if (v465)
      {
        v466 = v465;
        v467 = v273;
        v468 = v636;
        sub_20B5DF20C(v461, v636, type metadata accessor for ShelfMetricAction);
        v469 = v751;
        (*(v751 + 56))(v468, 0, 1, v278);
        v470 = v633;
        sub_20B52F9E8(v468, v633, &unk_27C7622D0, &unk_20C14FCE0);
        if ((*(v469 + 48))(v470, 1, v278) == 1)
        {

          sub_20B520158(v470, &unk_27C7622D0, &unk_20C14FCE0);
        }

        else
        {
          v589 = v605;
          sub_20B5D9970(v470, v605, type metadata accessor for ShelfMetricAction);

          (v760)(v467, v589, v466);
          sub_20B5DF274(v589, type metadata accessor for ShelfMetricAction);
        }

        v590 = v466 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v591 = *(v590 + 8);
          ObjectType = swift_getObjectType();
          (*(v591 + 48))(v466, v749, ObjectType, v591);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        sub_20B520158(v468, &unk_27C7622D0, &unk_20C14FCE0);
      }

      else
      {
      }

      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      sub_20B5DF274(v461, type metadata accessor for ShelfMetricAction);
      (*(v740 + 8))(v749, v741);
      return;
    case 5u:
    case 0xEu:
      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      return;
    case 6u:
      v346 = *v247;
      v347 = sub_20C136664();
      (*(*(v347 - 8) + 56))(v706, 1, 1, v347);
      (*(v778 + 104))(v714, *MEMORY[0x277D51440], v777);
      (*(v770 + 56))(v722, 1, 1, v769);
      sub_20B52F9E8(v771, v730, &unk_27C7621D0, &unk_20C14D9B0);
      v348 = v657;
      sub_20B52F9E8(v772, v657, &unk_27C765D50, &unk_20C14FB70);
      v350 = v767;
      v349 = v768;
      v351 = *(v768 + 48);
      v352 = v351(v348, 1, v767);
      v781 = v346;
      if (v352 == 1)
      {
        v353 = v659;
        (*(v349 + 104))(v659, *MEMORY[0x277D51768], v350);
        v354 = v351(v348, 1, v350);
        v355 = v779;
        v357 = v775;
        v356 = v776;
        v358 = v773;
        if (v354 != 1)
        {
          sub_20B520158(v348, &unk_27C765D50, &unk_20C14FB70);
        }
      }

      else
      {
        v353 = v659;
        (*(v349 + 32))(v659, v348, v350);
        v355 = v779;
        v357 = v775;
        v356 = v776;
        v358 = v773;
      }

      v507 = v766;
      v508 = *(v766 + 44);
      v509 = sub_20C136E94();
      v488 = v643;
      (*(*(v509 - 8) + 56))(&v643[v508], 1, 1, v509);
      v510 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v706, v488, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v778 + 32))(v488 + v507[5], v714, v777);
      sub_20B5DF134(v722, v488 + v507[6], &unk_27C7617F0, &unk_20C151A10);
      v511 = (v488 + v507[7]);
      *v511 = v358;
      v511[1] = v356;
      sub_20B5DF134(v730, v488 + v507[8], &unk_27C7621D0, &unk_20C14D9B0);
      v512 = (v488 + v507[9]);
      *v512 = v774;
      v512[1] = v357;
      (*(v349 + 32))(v488 + v507[10], v353, v350);
      *(v488 + v507[12]) = v510;
      v513 = swift_unknownObjectWeakLoadStrong();

      if (v513)
      {
        (v760)(v355, v488, v513);
        swift_unknownObjectRelease();
      }

      __swift_project_boxed_opaque_existential_1((v355 + *v743), *(v355 + *v743 + 24));
      sub_20C13A1F4();
LABEL_65:

      v457 = type metadata accessor for ShelfMetricAction;
      v514 = v488;
      goto LABEL_98;
    case 7u:
      v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0, &unk_20C169DE0);
      v360 = *&v247[v359[12]];
      v361 = v359[16];
      v362 = v359[20];
      sub_20B5D9970(v247, v752, type metadata accessor for StartWorkoutSessionRequest);
      sub_20B5DF134(&v247[v361], v754, &qword_27C76A410, &unk_20C14FBC0);
      v363 = *(v764 + 32);
      v762 = (v764 + 32);
      v781 = v363;
      (v363)(v761, &v247[v362], v765);
      v364 = sub_20C136664();
      (*(*(v364 - 8) + 56))(v709, 1, 1, v364);
      (*(v778 + 104))(v717, *MEMORY[0x277D51448], v777);
      (*(v770 + 56))(v725, 1, 1, v769);
      sub_20B52F9E8(v771, v733, &unk_27C7621D0, &unk_20C14D9B0);
      v365 = v664;
      sub_20B52F9E8(v772, v664, &unk_27C765D50, &unk_20C14FB70);
      v367 = v767;
      v366 = v768;
      v368 = *(v768 + 48);
      if (v368(v365, 1, v767) == 1)
      {
        v369 = v665;
        (*(v366 + 104))(v665, *MEMORY[0x277D51768], v367);
        v370 = v368(v365, 1, v367);
        v371 = v779;
        v373 = v775;
        v372 = v776;
        v374 = v773;
        if (v370 != 1)
        {
          sub_20B520158(v365, &unk_27C765D50, &unk_20C14FB70);
        }
      }

      else
      {
        v369 = v665;
        (*(v366 + 32))(v665, v365, v367);
        v371 = v779;
        v373 = v775;
        v372 = v776;
        v374 = v773;
      }

      v515 = v766;
      v516 = *(v766 + 44);
      v517 = sub_20C136E94();
      v518 = v735;
      (*(*(v517 - 8) + 56))(v735 + v516, 1, 1, v517);
      v519 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v709, v518, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v778 + 32))(v518 + v515[5], v717, v777);
      sub_20B5DF134(v725, v518 + v515[6], &unk_27C7617F0, &unk_20C151A10);
      v520 = (v518 + v515[7]);
      *v520 = v374;
      v520[1] = v372;
      sub_20B5DF134(v733, v518 + v515[8], &unk_27C7621D0, &unk_20C14D9B0);
      v521 = (v518 + v515[9]);
      *v521 = v774;
      v521[1] = v373;
      (*(v366 + 32))(v518 + v515[10], v369, v367);
      *(v518 + v515[12]) = v519;
      v522 = swift_unknownObjectWeakLoadStrong();

      if (v522)
      {
        (v760)(v371, v518, v522);
        swift_unknownObjectRelease();
      }

      sub_20C13CA04();
      sub_20C13A334();
      swift_allocObject();
      v523 = sub_20C13A314();
      v524 = v672;
      sub_20B5DF20C(v752, v672, type metadata accessor for StartWorkoutSessionRequest);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v778 = v523;
      if (EnumCaseMultiPayload == 1)
      {
        __swift_project_boxed_opaque_existential_1((v779 + *v688), *(v779 + *v688 + 24));
        v526 = v691;
        sub_20C13A0B4();

        v527 = v763;
        v528 = v764;
        v529 = v765;
        (*(v764 + 16))(v763, v761, v765);
        v530 = v746;
        sub_20B52F9E8(v754, v746, &qword_27C76A410, &unk_20C14FBC0);
        v531 = (*(v528 + 80) + 24) & ~*(v528 + 80);
        v532 = (v756 + v531 + 7) & 0xFFFFFFFFFFFFFFF8;
        v533 = (v532 + 15) & 0xFFFFFFFFFFFFFFF8;
        v534 = (*(v744 + 80) + v533 + 8) & ~*(v744 + 80);
        v535 = swift_allocObject();
        *(v535 + 16) = v778;
        (v781)(v535 + v531, v527, v529);
        *(v535 + v532) = v779;
        *(v535 + v533) = v360;
        sub_20B5DF134(v530, v535 + v534, &qword_27C76A410, &unk_20C14FBC0);
        v536 = v692;
        v537 = v690;
        v538 = v693;
        (*(v692 + 16))(v690, v526, v693);
        v539 = (*(v536 + 80) + 16) & ~*(v536 + 80);
        v540 = (v689 + v539 + 7) & 0xFFFFFFFFFFFFFFF8;
        v541 = swift_allocObject();
        (*(v536 + 32))(v541 + v539, v537, v538);
        v542 = (v541 + v540);
        *v542 = v616;
        v542[1] = v535;

        sub_20C137C94();
        (*(v536 + 8))(v526, v538);
        sub_20B5DF274(v735, type metadata accessor for ShelfMetricAction);
        (*(v528 + 8))(v761, v765);
      }

      else
      {
        v543 = v748;
        v777 = *(v748 + 32);
        v544 = v758;
        v545 = v759;
        v777(v758, v524, v759);
        v775 = v543 + 32;
        v546 = sub_20C13A324();
        v770 = v547;
        v772 = *(v543 + 16);
        v772(v757, v544, v545);
        v548 = v764;
        v771 = *(v764 + 16);
        v771(v763, v761, v765);
        v549 = *(v543 + 80);
        v550 = (v549 + 32) & ~v549;
        v773 = *(v548 + 80);
        v774 = v687 + v773;
        v551 = (v687 + v773 + v550) & ~v773;
        v776 = v549 | v773 | 7;
        v552 = swift_allocObject();
        v553 = v770;
        *(v552 + 16) = v546;
        *(v552 + 24) = v553;
        v554 = v757;
        v555 = v759;
        v777((v552 + v550), v757, v759);
        v556 = v763;
        v557 = v765;
        (v781)(v552 + v551, v763, v765);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
        sub_20C137C94();
        v558 = v554;
        v559 = v555;
        v772(v558, v758, v555);
        v771(v556, v761, v557);
        v560 = v746;
        sub_20B52F9E8(v754, v746, &qword_27C76A410, &unk_20C14FBC0);
        v561 = (v549 + 24) & ~v549;
        v562 = (v774 + v561) & ~v773;
        v563 = (v756 + v562 + 7) & 0xFFFFFFFFFFFFFFF8;
        v564 = (v563 + 15) & 0xFFFFFFFFFFFFFFF8;
        v565 = (v564 + *(v744 + 80) + 8) & ~*(v744 + 80);
        v566 = swift_allocObject();
        *(v566 + 16) = v779;
        v777((v566 + v561), v757, v559);
        v567 = v557;
        (v781)(v566 + v562, v763, v557);
        *(v566 + v563) = v778;
        *(v566 + v564) = v360;
        sub_20B5DF134(v560, v566 + v565, &qword_27C76A410, &unk_20C14FBC0);
        v568 = swift_allocObject();
        *(v568 + 16) = v622;
        *(v568 + 24) = v566;
        v569 = v696;
        v570 = v695;
        v571 = v747;
        v572 = v697;
        (*(v696 + 16))(v695, v747, v697);
        v573 = (*(v569 + 80) + 16) & ~*(v569 + 80);
        v574 = (v694 + v573 + 7) & 0xFFFFFFFFFFFFFFF8;
        v575 = swift_allocObject();
        (*(v569 + 32))(v575 + v573, v570, v572);
        v576 = (v575 + v574);
        *v576 = v627;
        v576[1] = v568;

        sub_20C137C94();
        (*(v569 + 8))(v571, v572);
        (*(v748 + 8))(v758, v759);
        sub_20B5DF274(v735, type metadata accessor for ShelfMetricAction);
        (*(v764 + 8))(v761, v567);
      }

      sub_20B520158(v754, &qword_27C76A410, &unk_20C14FBC0);
      v457 = type metadata accessor for StartWorkoutSessionRequest;
      v458 = &v782;
      goto LABEL_73;
    case 8u:
      v326 = *(v247 + 1);
      v781 = *v247;
      v327 = *(v247 + 2);
      v328 = v647;
      sub_20B52F9E8(v771, v647, &unk_27C7621D0, &unk_20C14D9B0);
      v329 = v651;
      sub_20B52F9E8(v772, v651, &unk_27C765D50, &unk_20C14FB70);
      v330 = (*(v649 + 80) + 48) & ~*(v649 + 80);
      v331 = (v141 + v330 + 7) & 0xFFFFFFFFFFFFFFF8;
      v332 = (*(v652 + 80) + v331 + 16) & ~*(v652 + 80);
      v333 = swift_allocObject();
      v333[2] = v327;
      v334 = v773;
      v333[3] = v779;
      v333[4] = v334;
      v333[5] = v776;
      sub_20B5DF134(v328, v333 + v330, &unk_27C7621D0, &unk_20C14D9B0);
      v335 = (v333 + v331);
      v336 = v775;
      *v335 = v774;
      v335[1] = v336;
      sub_20B5DF134(v329, v333 + v332, &unk_27C765D50, &unk_20C14FB70);
      v337 = (v333 + ((v106 + v332 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v337 = v781;
      v337[1] = v326;

      sub_20C137C94();
      return;
    case 9u:
      v375 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0) + 48);
      v376 = v701;
      v377 = v702;
      (*(v701 + 32))(v229, v247, v702);
      v378 = v699;
      v379 = &v247[v375];
      v380 = v668;
      v381 = v700;
      (*(v699 + 32))(v668, v379, v700);
      v698(v229, v380);
      (*(v378 + 8))(v380, v381);
      (*(v376 + 8))(v229, v377);
      return;
    case 0xAu:
      v294 = &v247[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200, &unk_20C1639C0) + 48)];
      v295 = *v294;
      v296 = v294[1];
      v297 = v670;
      v298 = v669;
      v299 = v247;
      v300 = v671;
      (*(v670 + 32))(v669, v299, v671);
      sub_20B5BAD10(v298, v295, v296, v681);

      (*(v297 + 8))(v298, v300);
      return;
    case 0xBu:
      sub_20B5BB098(*v247, v247[1]);
      return;
    case 0xCu:
      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
      v250 = *(v249 + 48);
      v251 = *(v249 + 64);
      sub_20B5D9970(v247, v753, type metadata accessor for StartWorkoutSessionRequest);
      sub_20B5DF134(&v247[v250], v755, &qword_27C76A410, &unk_20C14FBC0);
      v252 = (v764 + 32);
      v253 = *(v764 + 32);
      (v253)(v762, &v247[v251], v765);
      v254 = sub_20C136664();
      (*(*(v254 - 8) + 56))(v711, 1, 1, v254);
      (*(v778 + 104))(v718, *MEMORY[0x277D513F8], v777);
      (*(v770 + 56))(v726, 1, 1, v769);
      sub_20B52F9E8(v771, v734, &unk_27C7621D0, &unk_20C14D9B0);
      v255 = v666;
      sub_20B52F9E8(v772, v666, &unk_27C765D50, &unk_20C14FB70);
      v257 = v767;
      v256 = v768;
      v258 = *(v768 + 48);
      v259 = v258(v255, 1, v767);
      v761 = v252;
      v781 = v253;
      if (v259 == 1)
      {
        v260 = v667;
        (*(v256 + 104))(v667, *MEMORY[0x277D51768], v257);
        v261 = v258(v255, 1, v257);
        v262 = v779;
        v264 = v775;
        v263 = v776;
        v265 = v773;
        if (v261 != 1)
        {
          sub_20B520158(v255, &unk_27C765D50, &unk_20C14FB70);
        }
      }

      else
      {
        v260 = v667;
        (*(v256 + 32))(v667, v255, v257);
        v262 = v779;
        v264 = v775;
        v263 = v776;
        v265 = v773;
      }

      v395 = v766;
      v396 = *(v766 + 44);
      v397 = sub_20C136E94();
      v398 = v736;
      (*(*(v397 - 8) + 56))(v736 + v396, 1, 1, v397);
      v399 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v711, v398, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v778 + 32))(v398 + v395[5], v718, v777);
      sub_20B5DF134(v726, v398 + v395[6], &unk_27C7617F0, &unk_20C151A10);
      v400 = (v398 + v395[7]);
      *v400 = v265;
      v400[1] = v263;
      sub_20B5DF134(v734, v398 + v395[8], &unk_27C7621D0, &unk_20C14D9B0);
      v401 = (v398 + v395[9]);
      *v401 = v774;
      v401[1] = v264;
      (*(v256 + 32))(v398 + v395[10], v260, v257);
      *(v398 + v395[12]) = v399;
      v402 = swift_unknownObjectWeakLoadStrong();

      if (v402)
      {
        (v760)(v262, v398, v402);
        swift_unknownObjectRelease();
      }

      sub_20C13CA04();
      sub_20C13A334();
      swift_allocObject();
      v403 = sub_20C13A314();
      v404 = v673;
      sub_20B5DF20C(v753, v673, type metadata accessor for StartWorkoutSessionRequest);
      v405 = swift_getEnumCaseMultiPayload();
      v778 = v403;
      if (v405 == 1)
      {
        __swift_project_boxed_opaque_existential_1((v779 + *v688), *(v779 + *v688 + 24));
        v406 = v691;
        sub_20C13A0B4();

        v407 = v763;
        v408 = v764;
        v409 = v765;
        (*(v764 + 16))(v763, v762, v765);
        v410 = v746;
        sub_20B52F9E8(v755, v746, &qword_27C76A410, &unk_20C14FBC0);
        v411 = (*(v408 + 80) + 24) & ~*(v408 + 80);
        v412 = (v756 + v411 + 7) & 0xFFFFFFFFFFFFFFF8;
        v413 = (v412 + 15) & 0xFFFFFFFFFFFFFFF8;
        v414 = (*(v744 + 80) + v413 + 8) & ~*(v744 + 80);
        v415 = swift_allocObject();
        *(v415 + 16) = v778;
        (v781)(v415 + v411, v407, v409);
        *(v415 + v412) = v779;
        *(v415 + v413) = 0;
        sub_20B5DF134(v410, v415 + v414, &qword_27C76A410, &unk_20C14FBC0);
        v416 = v692;
        v417 = v690;
        v418 = v693;
        (*(v692 + 16))(v690, v406, v693);
        v419 = (*(v416 + 80) + 16) & ~*(v416 + 80);
        v420 = (v689 + v419 + 7) & 0xFFFFFFFFFFFFFFF8;
        v421 = swift_allocObject();
        (*(v416 + 32))(v421 + v419, v417, v418);
        v422 = (v421 + v420);
        *v422 = v621;
        v422[1] = v415;

        sub_20C137C94();
        (*(v416 + 8))(v406, v418);
        sub_20B5DF274(v736, type metadata accessor for ShelfMetricAction);
        (*(v408 + 8))(v762, v765);
      }

      else
      {
        v423 = v748;
        v777 = *(v748 + 32);
        v424 = v758;
        v425 = v759;
        v777(v758, v404, v759);
        v775 = v423 + 32;
        v426 = sub_20C13A324();
        v770 = v427;
        v772 = *(v423 + 16);
        v772(v757, v424, v425);
        v428 = v764;
        v771 = *(v764 + 16);
        v771(v763, v762, v765);
        v429 = *(v423 + 80);
        v430 = (v429 + 32) & ~v429;
        v773 = *(v428 + 80);
        v774 = v687 + v773;
        v431 = (v687 + v773 + v430) & ~v773;
        v776 = v429 | v773 | 7;
        v432 = swift_allocObject();
        v433 = v770;
        *(v432 + 16) = v426;
        *(v432 + 24) = v433;
        v434 = v757;
        v435 = v759;
        v777((v432 + v430), v757, v759);
        v436 = v763;
        v437 = v765;
        (v781)(v432 + v431, v763, v765);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
        sub_20C137C94();
        v438 = v434;
        v439 = v435;
        v772(v438, v758, v435);
        v771(v436, v762, v437);
        v440 = v746;
        sub_20B52F9E8(v755, v746, &qword_27C76A410, &unk_20C14FBC0);
        v441 = (v429 + 24) & ~v429;
        v442 = (v774 + v441) & ~v773;
        v443 = (v756 + v442 + 7) & 0xFFFFFFFFFFFFFFF8;
        v444 = (v443 + 15) & 0xFFFFFFFFFFFFFFF8;
        v445 = (v444 + *(v744 + 80) + 8) & ~*(v744 + 80);
        v446 = swift_allocObject();
        *(v446 + 16) = v779;
        v777((v446 + v441), v757, v439);
        v447 = v437;
        (v781)(v446 + v442, v763, v437);
        *(v446 + v443) = v778;
        *(v446 + v444) = 0;
        sub_20B5DF134(v440, v446 + v445, &qword_27C76A410, &unk_20C14FBC0);
        v448 = swift_allocObject();
        *(v448 + 16) = v626;
        *(v448 + 24) = v446;
        v449 = v696;
        v450 = v695;
        v451 = v747;
        v452 = v697;
        (*(v696 + 16))(v695, v747, v697);
        v453 = (*(v449 + 80) + 16) & ~*(v449 + 80);
        v454 = (v694 + v453 + 7) & 0xFFFFFFFFFFFFFFF8;
        v455 = swift_allocObject();
        (*(v449 + 32))(v455 + v453, v450, v452);
        v456 = (v455 + v454);
        *v456 = v630;
        v456[1] = v448;

        sub_20C137C94();
        (*(v449 + 8))(v451, v452);
        (*(v748 + 8))(v758, v759);
        sub_20B5DF274(v736, type metadata accessor for ShelfMetricAction);
        (*(v764 + 8))(v762, v447);
      }

      sub_20B520158(v755, &qword_27C76A410, &unk_20C14FBC0);
      v457 = type metadata accessor for StartWorkoutSessionRequest;
      v458 = &v783;
LABEL_73:
      v514 = *(v458 - 32);
      goto LABEL_98;
    case 0xDu:
      v279 = *(v247 + 1);
      v765 = *v247;
      v781 = v279;
      v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210, &unk_20C169DF0);
      v282 = v769;
      v281 = v770;
      (*(v770 + 32))(v750, &v247[*(v280 + 48)], v769);
      v283 = sub_20C136664();
      (*(*(v283 - 8) + 56))(v708, 1, 1, v283);
      (*(v778 + 104))(v716, *MEMORY[0x277D513F8], v777);
      (*(v281 + 56))(v724, 1, 1, v282);
      sub_20B52F9E8(v771, v732, &unk_27C7621D0, &unk_20C14D9B0);
      v284 = v662;
      sub_20B52F9E8(v772, v662, &unk_27C765D50, &unk_20C14FB70);
      v286 = v767;
      v285 = v768;
      v287 = *(v768 + 48);
      if (v287(v284, 1, v767) == 1)
      {
        v288 = v663;
        (*(v285 + 104))(v663, *MEMORY[0x277D51760], v286);
        v289 = v287(v284, 1, v286);
        v290 = v779;
        v292 = v775;
        v291 = v776;
        v293 = v773;
        if (v289 != 1)
        {
          sub_20B520158(v284, &unk_27C765D50, &unk_20C14FB70);
        }
      }

      else
      {
        v288 = v663;
        (*(v285 + 32))(v663, v284, v286);
        v290 = v779;
        v292 = v775;
        v291 = v776;
        v293 = v773;
      }

      v471 = v766;
      v472 = *(v766 + 44);
      v473 = sub_20C136E94();
      v474 = v648;
      (*(*(v473 - 8) + 56))(&v648[v472], 1, 1, v473);
      v475 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v708, v474, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v778 + 32))(v474 + v471[5], v716, v777);
      sub_20B5DF134(v724, v474 + v471[6], &unk_27C7617F0, &unk_20C151A10);
      v476 = (v474 + v471[7]);
      *v476 = v293;
      v476[1] = v291;
      sub_20B5DF134(v732, v474 + v471[8], &unk_27C7621D0, &unk_20C14D9B0);
      v477 = (v474 + v471[9]);
      *v477 = v774;
      v477[1] = v292;
      (*(v285 + 32))(v474 + v471[10], v288, v286);
      *(v474 + v471[12]) = v475;
      v478 = swift_unknownObjectWeakLoadStrong();
      if (v478)
      {
        v479 = v478;
        v480 = v638;
        sub_20B5DF20C(v474, v638, type metadata accessor for ShelfMetricAction);
        v481 = v751;
        (*(v751 + 56))(v480, 0, 1, v471);
        v482 = v635;
        sub_20B52F9E8(v480, v635, &unk_27C7622D0, &unk_20C14FCE0);
        v483 = (*(v481 + 48))(v482, 1, v471);
        v484 = v781;
        if (v483 == 1)
        {

          sub_20B520158(v482, &unk_27C7622D0, &unk_20C14FCE0);
        }

        else
        {
          v593 = v482;
          v594 = v607;
          sub_20B5D9970(v593, v607, type metadata accessor for ShelfMetricAction);

          (v760)(v290, v594, v479);
          sub_20B5DF274(v594, type metadata accessor for ShelfMetricAction);
        }

        v595 = v479 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v596 = *(v595 + 8);
          v597 = swift_getObjectType();
          (*(v596 + 72))(v479, v750, v765, v484, v597, v596);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();

        sub_20B520158(v480, &unk_27C7622D0, &unk_20C14FCE0);
      }

      else
      {
      }

      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      sub_20B5DF274(v474, type metadata accessor for ShelfMetricAction);
      (*(v770 + 8))(v750, v769);
      return;
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x13u:
      sub_20B5D9900();
      v394 = swift_allocError();
      *(swift_allocObject() + 16) = v394;
      sub_20C137CA4();
      return;
    case 0x12u:
      v382 = sub_20C136664();
      (*(*(v382 - 8) + 56))(v707, 1, 1, v382);
      (*(v778 + 104))(v715, *MEMORY[0x277D51488], v777);
      (*(v770 + 56))(v723, 1, 1, v769);
      sub_20B52F9E8(v771, v731, &unk_27C7621D0, &unk_20C14D9B0);
      v383 = v660;
      sub_20B52F9E8(v772, v660, &unk_27C765D50, &unk_20C14FB70);
      v385 = v767;
      v384 = v768;
      v386 = *(v768 + 48);
      if (v386(v383, 1, v767) == 1)
      {
        v387 = v661;
        (*(v384 + 104))(v661, *MEMORY[0x277D51768], v385);
        v272 = v386(v383, 1, v385) == 1;
        v388 = v779;
        v389 = v383;
        v391 = v775;
        v390 = v776;
        v392 = v773;
        v393 = v766;
        if (!v272)
        {
          sub_20B520158(v389, &unk_27C765D50, &unk_20C14FB70);
        }
      }

      else
      {
        v387 = v661;
        (*(v384 + 32))(v661, v383, v385);
        v388 = v779;
        v391 = v775;
        v390 = v776;
        v392 = v773;
        v393 = v766;
      }

      v577 = v393[11];
      v578 = sub_20C136E94();
      v579 = v646;
      (*(*(v578 - 8) + 56))(&v646[v577], 1, 1, v578);
      v580 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      sub_20B5DF134(v707, v579, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v778 + 32))(v579 + v393[5], v715, v777);
      sub_20B5DF134(v723, v579 + v393[6], &unk_27C7617F0, &unk_20C151A10);
      v581 = (v579 + v393[7]);
      *v581 = v392;
      v581[1] = v390;
      sub_20B5DF134(v731, v579 + v393[8], &unk_27C7621D0, &unk_20C14D9B0);
      v582 = (v579 + v393[9]);
      *v582 = v774;
      v582[1] = v391;
      (*(v384 + 32))(v579 + v393[10], v387, v385);
      *(v579 + v393[12]) = v580;
      v583 = swift_unknownObjectWeakLoadStrong();
      if (v583)
      {
        v584 = v583;
        v585 = v388;
        v586 = v637;
        sub_20B5DF20C(v579, v637, type metadata accessor for ShelfMetricAction);
        v587 = v751;
        (*(v751 + 56))(v586, 0, 1, v393);
        v588 = v634;
        sub_20B52F9E8(v586, v634, &unk_27C7622D0, &unk_20C14FCE0);
        if ((*(v587 + 48))(v588, 1, v393) == 1)
        {

          sub_20B520158(v588, &unk_27C7622D0, &unk_20C14FCE0);
        }

        else
        {
          v598 = v606;
          sub_20B5D9970(v588, v606, type metadata accessor for ShelfMetricAction);

          (v760)(v585, v598, v584);
          sub_20B5DF274(v598, type metadata accessor for ShelfMetricAction);
        }

        v599 = v584 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v600 = *(v599 + 8);
          v601 = swift_getObjectType();
          (*(v600 + 264))(v584, v601, v600);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        sub_20B520158(v586, &unk_27C7622D0, &unk_20C14FCE0);
      }

      else
      {
      }

      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      v457 = type metadata accessor for ShelfMetricAction;
      v514 = v579;
LABEL_98:
      sub_20B5DF274(v514, v457);
      break;
    default:
      sub_20B5D9900();
      v338 = swift_allocError();
      *(swift_allocObject() + 16) = v338;
      sub_20C137CA4();
      v339 = &unk_27C762300;
      v340 = &unk_20C151350;
      v341 = v247;
LABEL_21:
      sub_20B520158(v341, v339, v340);
      break;
  }
}

uint64_t sub_20B5AD914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a2 + *(type metadata accessor for ButtonAction(0) + 28);
  v8 = MEMORY[0x277D84FA0];
  *v6 = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v9 = sub_20BF3C25C(v6);
  sub_20B5DF274(v6, type metadata accessor for ButtonAction.ActionType);
  if ((v9 & 1) == 0)
  {
    *v6 = v8;
    swift_storeEnumTagMultiPayload();
    v10 = sub_20BF3C25C(v6);
    sub_20B5DF274(v6, type metadata accessor for ButtonAction.ActionType);
    if ((v10 & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v12 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_inProgressButtonActions;
        v13 = Strong;
        v14 = swift_beginAccess();
        v15 = *(v13 + v12);
        MEMORY[0x28223BE20](v14);
        *&v18[-16] = v7;

        v16 = sub_20BEE0D74(sub_20B5D9870, &v18[-32], v15);
        sub_20B5ADF04(v16);
        swift_endAccess();
      }
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B598280(129);
  }

  return result;
}

uint64_t sub_20B5ADB30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20B5ADBC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

__n128 sub_20B5ADC0C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_row + 32);
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

uint64_t sub_20B5ADD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_20B5ADE04;

  return MEMORY[0x2821AF798](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_20B5ADE04(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_20B5ADF04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765DA0, &qword_20C14FCD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for ButtonAction.ActionType(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_20B5DF20C(*(a1 + 48) + *(v6 + 72) * (v15 | (v14 << 6)), v8, type metadata accessor for ButtonAction.ActionType);
    sub_20B6CB364(v8, v4);
    sub_20B520158(v4, &qword_27C765DA0, &qword_20C14FCD8);
    sub_20B5DF274(v8, type metadata accessor for ButtonAction.ActionType);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(a1 + 56 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_20B5AE108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = (a5)(0, v13);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = *a6;
  swift_beginAccess();
  sub_20B5DF2D4(v15, a2 + v18, a3, a4);
  return swift_endAccess();
}

void sub_20B5AE25C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a5;
  v41 = a6;
  v46 = a3;
  v47 = a4;
  v39 = a1;
  v48 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370, &qword_20C153BB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_20C135334();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C135D54();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v38 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v37 - v17;
  v19 = sub_20C136C64();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C13BB84();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v24 + 8))(v26, v23);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20C13B174();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_20B520158(v18, &qword_27C768690, &unk_20C14FD90);
    v27 = sub_20C13B8A4();
    sub_20B5DF0C4(&qword_27C762380, MEMORY[0x277D4FA88], MEMORY[0x277D4FA90]);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D4FA70], v27);
    *(swift_allocObject() + 16) = v28;
    sub_20B51C88C(0, &qword_27C7683B0, 0x277CB8F30);
    sub_20C137CA4();
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    sub_20C136C24();
    sub_20C135314();
    (*(v42 + 8))(v13, v43);
    v31 = v44;
    v30 = v45;
    if ((*(v44 + 48))(v10, 1, v45) == 1)
    {
      sub_20B520158(v10, &unk_27C762370, &qword_20C153BB0);
      v32 = sub_20C13B8A4();
      sub_20B5DF0C4(&qword_27C762380, MEMORY[0x277D4FA88], MEMORY[0x277D4FA90]);
      v33 = swift_allocError();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D4FA70], v32);
      *(swift_allocObject() + 16) = v33;
      v35 = v33;
      sub_20B51C88C(0, &qword_27C7683B0, 0x277CB8F30);
      sub_20C137CA4();
      (*(v20 + 8))(v22, v19);
    }

    else
    {
      v36 = v38;
      (*(v31 + 32))(v38, v10, v30);
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      sub_20C13B934();
      (*(v31 + 8))(v36, v30);
      (*(v20 + 8))(v22, v19);
    }
  }
}

void sub_20B5AE8D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FAC4(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5D9BFC;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FAC4(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5AF744(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FD0C(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DA43C;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FD0C(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B05BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FD24(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DA89C;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FD24(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B1434(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FD90(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DA63C;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FD90(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B22AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FDA8(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DA99C;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FDA8(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B3124(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FDC0(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DCFEC;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FDC0(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B3F9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FE2C(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DD0EC;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FE2C(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B4E14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FD54(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DD294;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FD54(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B5C8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FE44(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DD1C0;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FE44(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

void sub_20B5B6B04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a3;
  v5 = sub_20C138894();
  v125 = *(v5 - 8);
  v126 = v5;
  MEMORY[0x28223BE20](v5);
  v121 = v6;
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C138B94();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v118 = v7;
  v129 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v127 = *(v8 - 8);
  v128 = v8;
  MEMORY[0x28223BE20](v8);
  v123 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v9;
  MEMORY[0x28223BE20](v10);
  v131 = &v114 - v11;
  v12 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v12);
  v117 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v114 - v15;
  v17 = sub_20C132C14();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C1388B4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v114 - v25);
  v27 = sub_20C136E94();
  v136 = *(v27 - 8);
  v137 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a2;
  sub_20C138814();
  v138 = v29;
  sub_20C136DF4();
  v132 = a1;
  sub_20C138B74();
  v30 = (*(v21 + 88))(v26, v20);
  if (v30 != *MEMORY[0x277D540C8])
  {
    v58 = v139;
    if (v30 != *MEMORY[0x277D540D0])
    {
      sub_20C13DFE4();
      __break(1u);
      return;
    }

    (*(v21 + 96))(v26, v20);
    v60 = v134;
    v59 = v135;
    v61 = v19;
    (*(v134 + 32))(v19, v26, v135);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v63 = Strong;
      v116 = *(v58 + 24);
      v64 = sub_20C136664();
      v65 = v117;
      (*(*(v64 - 8) + 56))(v117, 1, 1, v64);
      v66 = v12[5];
      v67 = *MEMORY[0x277D51398];
      v68 = sub_20C134F24();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = v12[6];
      (*(v60 + 16))(v65 + v69, v61, v59);
      (*(v60 + 56))(v65 + v69, 0, 1, v59);
      v114 = sub_20C1349D4();
      v71 = v70;
      v72 = v12[8];
      v73 = sub_20C135ED4();
      (*(*(v73 - 8) + 56))(v65 + v72, 1, 1, v73);
      v74 = sub_20C134A04();
      v76 = v75;
      v115 = v61;
      v77 = v12[10];
      v78 = *MEMORY[0x277D51768];
      v79 = sub_20C1352E4();
      (*(*(v79 - 8) + 104))(v65 + v77, v78, v79);
      v80 = v12[11];
      v82 = v136;
      v81 = v137;
      (*(v136 + 16))(v65 + v80, v138, v137);
      (*(v82 + 56))(v65 + v80, 0, 1, v81);
      v83 = sub_20B6B29D4(MEMORY[0x277D84F90]);
      v84 = (v65 + v12[7]);
      *v84 = v114;
      v84[1] = v71;
      v85 = (v65 + v12[9]);
      *v85 = v74;
      v85[1] = v76;
      *(v65 + v12[12]) = v83;
      sub_20BF9FE50(v139, v65, v63);
      swift_getObjectType();
      sub_20C13D234();
      v86 = v120;
      v87 = *(v120 + 16);
      v88 = v132;
      v132 = v63;
      v89 = v124;
      v87(v129, v88, v124);
      v91 = v125;
      v90 = v126;
      (*(v125 + 16))(v130, v122, v126);
      v92 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v93 = (v118 + *(v91 + 80) + v92) & ~*(v91 + 80);
      v94 = (v121 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
      v95 = swift_allocObject();
      (*(v86 + 32))(v95 + v92, v129, v89);
      (*(v91 + 32))(v95 + v93, v130, v90);
      v96 = (v95 + v94);
      v97 = v131;
      v98 = v116;
      *v96 = v132;
      v96[1] = v98;
      *(v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v100 = v127;
      v99 = v128;
      v101 = v123;
      (*(v127 + 16))(v123, v97, v128);
      v102 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v103 = (v119 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      (*(v100 + 32))(v104 + v102, v101, v99);
      v105 = (v104 + v103);
      *v105 = sub_20B5DE428;
      v105[1] = v95;

      sub_20C137C94();
      (*(v100 + 8))(v97, v99);
      sub_20B5DF274(v65, type metadata accessor for ShelfMetricAction);
      (*(v134 + 8))(v115, v135);
      (*(v136 + 8))(v138, v137);
      return;
    }

    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v109 = 11;
    *(swift_allocObject() + 16) = v106;
    v110 = v106;
    sub_20C137CA4();
    (*(v60 + 8))(v19, v59);
LABEL_10:
    (*(v136 + 8))(v138, v137);

    return;
  }

  (*(v21 + 96))(v26, v20);
  v31 = *v26;
  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
    sub_20B5D9BA8();
    v106 = swift_allocError();
    *v107 = 11;
    *(swift_allocObject() + 16) = v106;
    v108 = v106;
    sub_20C137CA4();

    goto LABEL_10;
  }

  v33 = v32;
  v34 = sub_20C136664();
  (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
  v131 = v31;
  v35 = v12[5];
  v36 = *MEMORY[0x277D513C8];
  v37 = sub_20C134F24();
  (*(*(v37 - 8) + 104))(&v16[v35], v36, v37);
  (*(v134 + 56))(&v16[v12[6]], 1, 1, v135);
  sub_20C138B74();
  v38 = sub_20C1388A4();
  v40 = v39;
  (*(v21 + 8))(v23, v20);
  v41 = v12[8];
  v42 = sub_20C135ED4();
  (*(*(v42 - 8) + 56))(&v16[v41], 1, 1, v42);
  v43 = sub_20C134A04();
  v45 = v44;
  v46 = v12[10];
  v47 = *MEMORY[0x277D51768];
  v48 = sub_20C1352E4();
  (*(*(v48 - 8) + 104))(&v16[v46], v47, v48);
  v49 = v12[11];
  v51 = v136;
  v50 = v137;
  (*(v136 + 16))(&v16[v49], v138, v137);
  (*(v51 + 56))(&v16[v49], 0, 1, v50);
  v52 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v53 = &v16[v12[7]];
  *v53 = v38;
  v53[1] = v40;
  v54 = &v16[v12[9]];
  *v54 = v43;
  v54[1] = v45;
  *&v16[v12[12]] = v52;
  sub_20BF9FE50(v139, v16, v33);
  v140[3] = sub_20B51C88C(0, &unk_27C769A50, 0x277CEE438);
  v140[4] = &off_2822D7AE8;
  v140[0] = v131;
  v55 = v33 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    ObjectType = swift_getObjectType();
    (*(v56 + 304))(v33, v140, ObjectType, v56);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  else
  {
    sub_20B5D9BA8();
    v111 = swift_allocError();
    *v112 = 11;
    *(swift_allocObject() + 16) = v111;
    v113 = v111;
    sub_20C137CA4();
    swift_unknownObjectRelease();
    sub_20B5DF274(v16, type metadata accessor for ShelfMetricAction);
    (*(v51 + 8))(v138, v50);
  }

  __swift_destroy_boxed_opaque_existential_1(v140);
}

uint64_t sub_20B5B797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t))
{
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = a7;
  v39 = a8;
  v40 = a9;
  v41 = a13;
  v42 = v21;

  sub_20B5E6864(a14, v34, a3);
  v23 = v22;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    type metadata accessor for DefaultPageAlertPresenter();
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    swift_unknownObjectWeakInit();
    v27 = MEMORY[0x277D84F90];
    *(v26 + 32) = v23;
    *(v26 + 40) = v27;
    *(v26 + 48) = a10;
    *(v26 + 56) = a11;
    *(v26 + 64) = 0;
    *(v26 + 72) = 0;
    *(v26 + 80) = 1;
    *(v26 + 88) = 0;
    v28 = v25 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      ObjectType = swift_getObjectType();
      v31 = *(v29 + 224);

      v31(v25, v26, &off_2822DD358, ObjectType, v29);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

int *sub_20B5B7B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v61 = a5;
  v62 = a8;
  v69 = a7;
  v70 = a4;
  v60 = a2;
  v72 = a9;
  v71 = a15;
  v64 = a14;
  v65 = a3;
  v58 = a13;
  v67 = a6;
  v68 = a11;
  v66 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50, &unk_20C14FB70);
  v63 = *(v16 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v52[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  v59 = *(v20 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v57 = &v52[-v22];
  v23 = type metadata accessor for ButtonAction(0);
  v24 = v23 - 8;
  v56 = *(v23 - 8);
  v25 = *(v56 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v52[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B5DF20C(a1 + *(v24 + 36), v28, type metadata accessor for ButtonAction.ActionType);
  if (swift_getEnumCaseMultiPayload() == 14)
  {
    v29 = *(a1 + 32);
    v54 = *(a1 + 40);
    v55 = v29;

    v53 = 2;
  }

  else
  {
    if (*(a1 + 40))
    {
      v30 = *(a1 + 32);
      v31 = *(a1 + 40);
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    v54 = v31;
    v55 = v30;

    sub_20B5DF274(v28, type metadata accessor for ButtonAction.ActionType);
    v53 = 0;
  }

  v58 = swift_allocObject();
  swift_weakInit();
  v32 = &v52[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B5DF20C(a1, v32, type metadata accessor for ButtonAction);
  v33 = v57;
  sub_20B52F9E8(v61, v57, &unk_27C7621D0, &unk_20C14D9B0);
  sub_20B52F9E8(v62, v19, &unk_27C765D50, &unk_20C14FB70);
  v34 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v35 = (v25 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v59 + 80);
  v62 = v19;
  v37 = (v36 + v35 + 16) & ~v36;
  v38 = (v21 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v63 + 80) + v38 + 16) & ~*(v63 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v58;
  sub_20B5D9970(v32, v40 + v34, type metadata accessor for ButtonAction);
  v41 = (v40 + v35);
  v42 = v70;
  *v41 = v65;
  v41[1] = v42;
  sub_20B5DF134(v33, v40 + v37, &unk_27C7621D0, &unk_20C14D9B0);
  v43 = (v40 + v38);
  v44 = v69;
  *v43 = v67;
  v43[1] = v44;
  sub_20B5DF134(v62, v40 + v39, &unk_27C765D50, &unk_20C14FB70);
  v45 = (v40 + ((v17 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v46 = v68;
  *v45 = v66;
  v45[1] = v46;

  v47 = v72;
  sub_20C132ED4();
  result = type metadata accessor for PageAlertAction(0);
  v49 = (v47 + result[6]);
  v50 = v54;
  *v49 = v55;
  v49[1] = v50;
  *(v47 + result[5]) = v53;
  v51 = (v47 + result[7]);
  *v51 = v71;
  v51[1] = v40;
  return result;
}

uint64_t sub_20B5B8014(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282290750, v19, sub_20B5DF58C, &unk_282290728, sub_20B5DF58C, &unk_2822906D8, sub_20B5DF58C, &unk_2822905C0, sub_20B5DF58C, &unk_282290598, sub_20B5D99D8, sub_20B5AE8D0, sub_20BF9FAC4, &unk_282290570, sub_20B5D9954, &unk_282290700, sub_20B5DF58C, sub_20BF9FAC4, &OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarkClient, sub_20BF9FAC4, &unk_282290638, sub_20B5DF630, &unk_282290660, &unk_282290688, sub_20B5DF508, &unk_2822906B0, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_catalogClient, &unk_2822905E8, &unk_282290610, sub_20B5DF634, sub_20B5DF638, &unk_2822904D0, sub_20B5DF630, &unk_2822904F8, &unk_282290520, sub_20B5DF508, &unk_282290548, sub_20B5D98D0, sub_20B5D98D8, &unk_282290480, &unk_2822904A8, sub_20B5D9890, sub_20B5D98A8);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5D9BA4;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B8490(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282291330, v19, sub_20B5DF58C, &unk_282291308, sub_20B5DF58C, &unk_2822912B8, sub_20B5DF58C, &unk_2822911A0, sub_20B5DF58C, &unk_282291178, sub_20B5DA068, sub_20B5AF744, sub_20BF9FD0C, &unk_282291150, sub_20B5DF58C, &unk_2822912E0, sub_20B5DF58C, sub_20BF9FD0C, &OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_bookmarkClient, sub_20BF9FD0C, &unk_282291218, sub_20B5DF630, &unk_282291240, &unk_282291268, sub_20B5DF508, &unk_282291290, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI25ScheduledWorkoutPlanShelf_catalogClient, &unk_2822911C8, &unk_2822911F0, sub_20B5DF664, sub_20B5DF638, &unk_2822910B0, sub_20B5DF630, &unk_2822910D8, &unk_282291100, sub_20B5DF508, &unk_282291128, sub_20B5DF4AC, sub_20B5DF63C, &unk_282291060, &unk_282291088, sub_20B5DA050, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B8910(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_2822923C0, v19, sub_20B5DF58C, &unk_282292398, sub_20B5DF58C, &unk_282292348, sub_20B5DF58C, &unk_282292230, sub_20B5DF58C, &unk_282292208, sub_20B5DA800, sub_20B5B05BC, sub_20BF9FD24, &unk_2822921E0, sub_20B5DF58C, &unk_282292370, sub_20B5DF58C, sub_20BF9FD24, &OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_bookmarkClient, sub_20BF9FD24, &unk_2822922A8, sub_20B5DF630, &unk_2822922D0, &unk_2822922F8, sub_20B5DF508, &unk_282292320, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI22WorkoutPlanBannerShelf_catalogClient, &unk_282292258, &unk_282292280, sub_20B5DF680, sub_20B5DF638, &unk_282292140, sub_20B5DF630, &unk_282292168, &unk_282292190, sub_20B5DF508, &unk_2822921B8, sub_20B5DF4AC, sub_20B5DF63C, &unk_2822920F0, &unk_282292118, sub_20B5DA7E8, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B8D90(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_2822918D0, v19, sub_20B5DF58C, &unk_2822918A8, sub_20B5DF58C, &unk_282291858, sub_20B5DF58C, &unk_282291740, sub_20B5DF58C, &unk_282291718, sub_20B5DA5A0, sub_20B5B1434, sub_20BF9FD90, &unk_2822916F0, sub_20B5DF58C, &unk_282291880, sub_20B5DF58C, sub_20BF9FD90, &OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_bookmarkClient, sub_20BF9FD90, &unk_2822917B8, sub_20B5DF630, &unk_2822917E0, &unk_282291808, sub_20B5DF508, &unk_282291830, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI39TVCatalogEditorialCollectionHeaderShelf_catalogClient, &unk_282291768, &unk_282291790, sub_20B5DF674, sub_20B5DF638, &unk_282291650, sub_20B5DF630, &unk_282291678, &unk_2822916A0, sub_20B5DF508, &unk_2822916C8, sub_20B5DF4AC, sub_20B5DF63C, &unk_282291600, &unk_282291628, sub_20B5DA588, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B9210(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282292960, v19, sub_20B5DF58C, &unk_282292938, sub_20B5DF58C, &unk_2822928E8, sub_20B5DF58C, &unk_2822927D0, sub_20B5DF58C, &unk_2822927A8, sub_20B5DA900, sub_20B5B22AC, sub_20BF9FDA8, &unk_282292780, sub_20B5DF58C, &unk_282292910, sub_20B5DF58C, sub_20BF9FDA8, &OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_bookmarkClient, sub_20BF9FDA8, &unk_282292848, sub_20B5DF630, &unk_282292870, &unk_282292898, sub_20B5DF508, &unk_2822928C0, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI24TVUpNextQueueHeaderShelf_catalogClient, &unk_2822927F8, &unk_282292820, sub_20B5DF684, sub_20B5DF638, &unk_2822926E0, sub_20B5DF630, &unk_282292708, &unk_282292730, sub_20B5DA8D4, &unk_282292758, sub_20B5DF4AC, sub_20B5DF63C, &unk_282292690, &unk_2822926B8, sub_20B5DA8BC, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B9690(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282293090, v19, sub_20B5DF58C, &unk_282293068, sub_20B5DF58C, &unk_282293018, sub_20B5DF58C, &unk_282292F00, sub_20B5DF58C, &unk_282292ED8, sub_20B5DCF50, sub_20B5B3124, sub_20BF9FDC0, &unk_282292EB0, sub_20B5DF58C, &unk_282293040, sub_20B5DF58C, sub_20BF9FDC0, &OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_bookmarkClient, sub_20BF9FDC0, &unk_282292F78, sub_20B5DF630, &unk_282292FA0, &unk_282292FC8, sub_20B5DF538, &unk_282292FF0, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_catalogClient, &unk_282292F28, &unk_282292F50, sub_20B5DF688, sub_20B5DF638, &unk_282292E10, sub_20B5DF630, &unk_282292E38, &unk_282292E60, sub_20B5DCF24, &unk_282292E88, sub_20B5DF4AC, sub_20B5DF63C, &unk_282292DC0, &unk_282292DE8, sub_20B5DCF0C, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B9B10(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282293630, v19, sub_20B5DF58C, &unk_282293608, sub_20B5DF58C, &unk_2822935B8, sub_20B5DF58C, &unk_2822934A0, sub_20B5DF58C, &unk_282293478, sub_20B5DD050, sub_20B5B3F9C, sub_20BF9FE2C, &unk_282293450, sub_20B5DF58C, &unk_2822935E0, sub_20B5DF58C, sub_20BF9FE2C, &OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_bookmarkClient, sub_20BF9FE2C, &unk_282293518, sub_20B5DF630, &unk_282293540, &unk_282293568, sub_20B5DF538, &unk_282293590, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI13ShowcaseShelf_catalogClient, &unk_2822934C8, &unk_2822934F0, sub_20B5DF68C, sub_20B5DF638, &unk_2822933B0, sub_20B5DF630, &unk_2822933D8, &unk_282293400, sub_20B5DF538, &unk_282293428, sub_20B5DF4AC, sub_20B5DF63C, &unk_282293360, &unk_282293388, sub_20B5DD038, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5B9F90(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282294170, v19, sub_20B5DF58C, &unk_282294148, sub_20B5DF58C, &unk_2822940F8, sub_20B5DF58C, &unk_282293FE0, sub_20B5DF58C, &unk_282293FB8, sub_20B5DD1F8, sub_20B5B4E14, sub_20BF9FD54, &unk_282293F90, sub_20B5DF58C, &unk_282294120, sub_20B5DF58C, sub_20BF9FD54, &OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_bookmarkClient, sub_20BF9FD54, &unk_282294058, sub_20B5DF630, &unk_282294080, &unk_2822940A8, sub_20B5DF538, &unk_2822940D0, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_catalogClient, &unk_282294008, &unk_282294030, sub_20B5DF694, sub_20B5DF638, &unk_282293EF0, sub_20B5DF630, &unk_282293F18, &unk_282293F40, sub_20B5DF538, &unk_282293F68, sub_20B5DF4AC, sub_20B5DF63C, &unk_282293EA0, &unk_282293EC8, sub_20B5DD1E0, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5BA410(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282293BD0, v19, sub_20B5DF58C, &unk_282293BA8, sub_20B5DF58C, &unk_282293B58, sub_20B5DF58C, &unk_282293A40, sub_20B5DF58C, &unk_282293A18, sub_20B5DD124, sub_20B5B5C8C, sub_20BF9FE44, &unk_2822939F0, sub_20B5DF58C, &unk_282293B80, sub_20B5DF58C, sub_20BF9FE44, &OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_bookmarkClient, sub_20BF9FE44, &unk_282293AB8, sub_20B5DF630, &unk_282293AE0, &unk_282293B08, sub_20B5DF538, &unk_282293B30, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_catalogClient, &unk_282293A68, &unk_282293A90, sub_20B5DF690, sub_20B5DF638, &unk_282293950, sub_20B5DF630, &unk_282293978, &unk_2822939A0, sub_20B5DF538, &unk_2822939C8, sub_20B5DF4AC, sub_20B5DF63C, &unk_282293900, &unk_282293928, sub_20B5DD10C, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5BA890(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), uint64_t a7, uint64_t a8, void (*a9)(char *, char *, uint64_t), uint64_t a10, uint64_t a11)
{
  v26 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = a10;
    sub_20B5A8768(a3, a4, a5, a6, a7, v26, a9, &unk_282294710, v19, sub_20B5DF58C, &unk_2822946E8, sub_20B5DF58C, &unk_282294698, sub_20B5DF58C, &unk_282294580, sub_20B5DF58C, &unk_282294558, sub_20B5DD514, sub_20B5B6B04, sub_20BF9FE50, &unk_282294530, sub_20B5DF58C, &unk_2822946C0, sub_20B5DF58C, sub_20BF9FE50, &OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_bookmarkClient, sub_20BF9FE50, &unk_2822945F8, sub_20B5DF630, &unk_282294620, &unk_282294648, sub_20B5DF538, &unk_282294670, sub_20B5DF4AC, sub_20B5DF63C, &OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_catalogClient, &unk_2822945A8, &unk_2822945D0, sub_20B5DF698, sub_20B5DF638, &unk_282294490, sub_20B5DF630, &unk_2822944B8, &unk_2822944E0, sub_20B5DF538, &unk_282294508, sub_20B5DF4AC, sub_20B5DF63C, &unk_282294440, &unk_282294468, sub_20B5DD2B4, sub_20B5DF638);

    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 24) = a11;

    v22 = sub_20C137CB4();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B5DF620;
    *(v23 + 24) = v21;

    v22(sub_20B5DF6DC, v23);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_20B5BAD10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, char *, uint64_t, __n128))
{
  v38 = a4;
  v5 = v4;
  v9 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 80))(v13, a1, a2, a3, ObjectType, v15);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v17 = sub_20C136664();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = v9[5];
  v19 = *MEMORY[0x277D513F8];
  v20 = sub_20C134F24();
  (*(*(v20 - 8) + 104))(&v11[v18], v19, v20);
  v21 = v9[6];
  v22 = sub_20C132C14();
  (*(*(v22 - 8) + 56))(&v11[v21], 1, 1, v22);
  v23 = v9[8];
  v24 = *MEMORY[0x277D52388];
  v25 = sub_20C135ED4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(&v11[v23], v24, v25);
  (*(v26 + 56))(&v11[v23], 0, 1, v25);
  v27 = v9[10];
  v28 = *MEMORY[0x277D51768];
  v29 = sub_20C1352E4();
  (*(*(v29 - 8) + 104))(&v11[v27], v28, v29);
  v30 = v9[11];
  v31 = sub_20C136E94();
  (*(*(v31 - 8) + 56))(&v11[v30], 1, 1, v31);
  v32 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v33 = &v11[v9[7]];
  *v33 = a2;
  *(v33 + 1) = a3;
  v34 = &v11[v9[9]];
  *v34 = 0;
  *(v34 + 1) = 0;
  *&v11[v9[12]] = v32;
  v35 = swift_unknownObjectWeakLoadStrong();

  if (v35)
  {
    (v38)(v5, v11, v35);
    swift_unknownObjectRelease();
  }

  _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  return sub_20B5DF274(v11, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20B5BB098(char a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!Strong)
    {
      goto LABEL_10;
    }

    v5 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_9;
    }

    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 280))(ObjectType, v6);
    goto LABEL_8;
  }

  if (!Strong)
  {
    goto LABEL_10;
  }

  v8 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    v10 = swift_getObjectType();
    (*(v9 + 288))(a2 & 1, v10, v9);
LABEL_8:
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20B5BB198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v13 = type metadata accessor for WorkoutSessionConfiguration(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_20C1344C4();
    (*(*(v18 - 8) + 16))(v15, a3, v18);
    v19 = v13[5];
    v20 = sub_20C137254();
    (*(*(v20 - 8) + 16))(&v15[v19], a4, v20);
    *&v15[v13[7]] = a5;
    sub_20C13A484();
    swift_storeEnumTagMultiPayload();
    sub_20B52F9E8(a1, &v15[v13[9]], &unk_27C7622A0, &unk_20C14FCB0);
    v21 = v13[10];
    v22 = sub_20C134A44();
    (*(*(v22 - 8) + 56))(&v15[v21], 1, 1, v22);
    sub_20B52F9E8(a6, &v15[v13[12]], &qword_27C76A410, &unk_20C14FBC0);
    v15[v13[6]] = 1;
    *&v15[v13[8]] = a7;
    v23 = &v15[v13[11]];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v15[v13[13]];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = v17 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v25 + 8);
      ObjectType = swift_getObjectType();
      v28 = *(v26 + 112);

      v28(v17, v15, ObjectType, v26);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    return sub_20B5DF274(v15, type metadata accessor for WorkoutSessionConfiguration);
  }

  return result;
}

uint64_t sub_20B5BB444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410, &unk_20C14FBC0);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410, &unk_20C14FBC0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF520;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5D9C44;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5D9C74;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BBD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410, &unk_20C14FBC0);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410, &unk_20C14FBC0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF520;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BC674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410, &unk_20C14FBC0);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410, &unk_20C14FBC0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF520;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BCF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410, &unk_20C14FBC0);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410, &unk_20C14FBC0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF520;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BD8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410, &unk_20C14FBC0);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410, &unk_20C14FBC0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DA9BC;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BE1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410, &unk_20C14FBC0);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410, &unk_20C14FBC0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DD00C;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BEAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410, &unk_20C14FBC0);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410, &unk_20C14FBC0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF550;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BF3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410, &unk_20C14FBC0);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410, &unk_20C14FBC0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF550;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5BFD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410, &unk_20C14FBC0);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410, &unk_20C14FBC0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF550;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}

uint64_t sub_20B5C061C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v88 = a5;
  v97 = a4;
  v93 = a3;
  v74 = a2;
  v72 = a1;
  v91 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  v86 = *(v8 - 8);
  v89 = *(v86 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v68 - v9;
  v79 = sub_20C135AE4();
  v96 = *(v79 - 8);
  v81 = *(v96 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137254();
  v92 = v11;
  v98 = *(v11 - 8);
  v94 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C1344C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642A0, &unk_20C155DE0);
  v78 = *(v82 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v68 - v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v87 = *(v90 - 8);
  v85 = *(v87 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v80 = &v68 - v26;
  v73 = sub_20C13A324();
  v68 = v27;
  v70 = v20;
  sub_20C135AA4();
  (*(v15 + 16))(v17, v20, v14);
  v28 = v98;
  v71 = *(v98 + 16);
  v71(v13, v93, v11);
  v29 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v30 = *(v28 + 80);
  v31 = swift_allocObject();
  v32 = v68;
  *(v31 + 16) = v73;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v29, v17, v14);
  v33 = *(v28 + 32);
  v98 = v28 + 32;
  v73 = v33;
  v34 = v31 + ((v16 + v30 + v29) & ~v30);
  v69 = v13;
  v35 = v92;
  v33(v34, v13, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0, &unk_20C14FCB0);
  sub_20C137C94();
  (*(v15 + 8))(v70, v14);
  v36 = v96;
  v37 = v75;
  v38 = v79;
  (*(v96 + 16))(v75, v72, v79);
  v71(v13, v93, v35);
  v39 = v83;
  sub_20B52F9E8(v88, v83, &qword_27C76A410, &unk_20C14FBC0);
  v40 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v41 = (v81 + v30 + v40) & ~v30;
  v42 = (v94 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v86 + 80) + v43 + 8) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v96;
  *(v45 + 16) = v97;
  (*(v46 + 32))(v45 + v40, v37, v38);
  v73(v45 + v41, v69, v92);
  *(v45 + v42) = v74;
  *(v45 + v43) = a7;
  sub_20B5DF134(v39, v45 + v44, &qword_27C76A410, &unk_20C14FBC0);
  v47 = swift_allocObject();
  *(v47 + 16) = sub_20B5DF550;
  *(v47 + 24) = v45;
  v48 = v78;
  v49 = v76;
  v50 = v95;
  v51 = v82;
  (*(v78 + 16))(v76, v95, v82);
  v52 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = (v77 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v48 + 32))(v54 + v52, v49, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B5DF4BC;
  v55[1] = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v56 = v80;
  sub_20C137C94();
  (*(v48 + 8))(v50, v51);
  v57 = swift_allocObject();
  *(v57 + 16) = nullsub_1;
  *(v57 + 24) = 0;
  v58 = v87;
  v59 = v84;
  v60 = v56;
  v61 = v90;
  (*(v87 + 16))(v84, v56, v90);
  v62 = v58;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v62 + 32))(v65 + v63, v59, v61);
  v66 = (v65 + v64);
  *v66 = sub_20B5DF4C0;
  v66[1] = v57;
  sub_20C137C94();
  return (*(v62 + 8))(v60, v61);
}