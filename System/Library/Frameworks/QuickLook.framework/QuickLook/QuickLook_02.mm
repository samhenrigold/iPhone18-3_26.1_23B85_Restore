unint64_t sub_23A7C9418()
{
  result = qword_27DFA9450;
  if (!qword_27DFA9450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFA9450);
  }

  return result;
}

unint64_t sub_23A7C9464()
{
  result = qword_27DFA9E68;
  if (!qword_27DFA9E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9E68);
  }

  return result;
}

uint64_t sub_23A7C94B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9E70, &unk_23A7FE5E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall QLPreviewController.loadView()()
{
  v11 = [objc_allocWithZone(type metadata accessor for QLPreviewControllerView()) init];
  swift_unknownObjectWeakAssign();
  v1 = sub_23A7EE814();
  [v11 setAccessibilityIdentifier_];

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    [v11 setFrame_];
    [v11 setAutoresizingMask_];
  }

  [v0 setView_];
}

id sub_23A7C97E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLPreviewControllerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23A7C9828(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = sub_23A7EE234();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v19 = Strong;
  v20 = [Strong internalCurrentPreviewItem];
  if (!v20)
  {

LABEL_8:
    v32 = type metadata accessor for QLPreviewControllerView();
    v43.receiver = v5;
    v43.super_class = v32;
    objc_msgSendSuper2(&v43, sel__intelligenceCollectContentIn_collector_, a1, a2, a3, a4, a5);
    return;
  }

  v21 = v20;
  v41 = a1;
  v40 = swift_allocBox();
  v23 = v22;
  v24 = sub_23A7EE374();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v25 = [v21 previewItemContentType];
  if (v25)
  {
    v26 = v25;
    sub_23A7EE844();

    sub_23A7EE384();
    sub_23A7CBEA8(v17, v23);
  }

  v27 = [v21 previewItemTitle];
  if (v27)
  {
    v28 = v27;
    v29 = sub_23A7EE844();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  (*(v12 + 104))(v14, *MEMORY[0x277D74648], v11);
  v33 = v41;
  v34 = sub_23A7EE174();
  (*(v12 + 8))(v14, v11);
  v35 = swift_allocObject();
  v35[2] = v40;
  v35[3] = v21;
  v35[4] = v34;
  v35[5] = v33;
  v35[6] = v29;
  v35[7] = v31;
  v35[8] = v19;
  aBlock[4] = sub_23A7CBE7C;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7A0EA0;
  aBlock[3] = &block_descriptor_8;
  v36 = _Block_copy(aBlock);

  v37 = v21;

  v38 = v33;
  v39 = v19;

  [v37 prepareShareableURL_];
  _Block_release(v36);
}

id sub_23A7C9C04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v169 = a7;
  v194 = a6;
  v178 = a5;
  v184 = a4;
  v196 = a3;
  v191 = a2;
  v165 = sub_23A7EE2D4();
  v164 = *(v165 - 8);
  v8 = MEMORY[0x28223BE20](v165);
  v163 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v162 = &v158 - v10;
  v168 = sub_23A7EE2B4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E88, &qword_23A7FE620);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v175 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v174 = &v158 - v15;
  v16 = sub_23A7EE1B4();
  MEMORY[0x28223BE20](v16 - 8);
  v176 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_23A7EE304();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v185 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23A7EE234();
  v195 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v158 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23A7EDF64();
  v192 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v160 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v170 = &v158 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v188 = &v158 - v28;
  v159 = v29;
  MEMORY[0x28223BE20](v27);
  v193 = &v158 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v182 = &v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v173 = &v158 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v177 = &v158 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v158 - v38;
  v40 = sub_23A7EE374();
  v41 = *(v40 - 1);
  v42 = MEMORY[0x28223BE20](v40);
  v183 = &v158 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v172 = &v158 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v158 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v158 - v49;
  v161 = a1;
  v51 = swift_projectBox();
  swift_beginAccess();
  v190 = v51;
  sub_23A7A8D38(v51, v39, &unk_27DFA94C0, &unk_23A7FD330);
  v52 = *(v41 + 48);
  v189 = (v41 + 48);
  v53 = v52;
  v54 = v52(v39, 1, v40);
  v187 = v41;
  v186 = v48;
  if (v54 == 1)
  {
    sub_23A7CBF18(v39);
    v55 = v194;
    v56 = v19;
    v57 = v195;
  }

  else
  {
    (*(v41 + 32))(v50, v39, v40);
    sub_23A7EE334();
    LODWORD(v179) = sub_23A7EE364();
    v171 = v22;
    v58 = *(v41 + 8);
    v58(v48, v40);
    v58(v50, v40);
    v56 = v19;
    v57 = v195;
    v55 = v194;
    v22 = v171;
    if (v179)
    {
      goto LABEL_32;
    }
  }

  v59 = [v191 shareableURL];
  if (!v59)
  {
LABEL_14:
    if (v55)
    {
      v92 = v190;
      swift_beginAccess();
      v93 = v182;
      sub_23A7A8D38(v92, v182, &unk_27DFA94C0, &unk_23A7FD330);
      if (v53(v93, 1, v40) != 1)
      {
        v179 = v56;
        v188 = v21;
        v94 = v187;
        v95 = v183;
        (*(v187 + 32))(v183, v93, v40);

        v96 = v186;
        sub_23A7EE354();
        v97 = sub_23A7EE364();
        v98 = *(v94 + 8);
        (v98)(v96, v40);
        if (v97)
        {
          v99 = v173;
          (*(v94 + 16))(v173, v95, v40);
          (*(v94 + 56))(v99, 0, 1, v40);
          v100 = sub_23A7EDFA4();
          v101 = *(*(v100 - 8) + 56);
          v101(v174, 1, 1, v100);
          v191 = v40;
          v101(v175, 1, 1, v100);
          sub_23A7EE194();
          v102 = v188;
          sub_23A7EE204();
          v103 = v179;
          (*(v57 + 104))(v102, *MEMORY[0x277D74620], v179);
          sub_23A7EE224();
          (*(v57 + 8))(v102, v103);
          return (v98)(v183, v191);
        }

        v192 = v94 + 8;
        v193 = v98;
        sub_23A7EE184();
        __swift_project_boxed_opaque_existential_0(v197, v198);
        v120 = v185;
        v121 = v183;
        sub_23A7EE2C4();
        v122 = sub_23A7EE2F4();
        (*(v180 + 8))(v120, v181);
        __swift_destroy_boxed_opaque_existential_0(v197);
        if (v122)
        {
          v123 = v173;
          (*(v94 + 16))(v173, v121, v40);
          (*(v94 + 56))(v123, 0, 1, v40);
          v124 = sub_23A7EDFA4();
          v125 = *(*(v124 - 8) + 56);
          v125(v174, 1, 1, v124);
          v125(v175, 1, 1, v124);
          v126 = v176;
          sub_23A7EE194();
          v127 = v188;
          MEMORY[0x23EE8B700](v178, v55, v126);
          v128 = v179;
          (*(v57 + 104))(v127, *MEMORY[0x277D74688], v179);
          sub_23A7EE224();
          (*(v57 + 8))(v127, v128);
          return (v193)(v121, v40);
        }

        (v193)(v121, v40);

        goto LABEL_28;
      }

      sub_23A7CBF18(v93);
    }

LABEL_32:
    (*(v57 + 104))(v21, *MEMORY[0x277D74648], v56);
    sub_23A7EE224();
    return (*(v57 + 8))(v21, v56);
  }

  v179 = v56;
  v60 = v188;
  v61 = v59;
  sub_23A7EDF44();

  v63 = v192;
  v62 = v193;
  v171 = *(v192 + 32);
  v171(v193, v60, v22);
  if ((sub_23A7EDF04() & 1) == 0)
  {
    (*(v63 + 8))(v62, v22);
    v56 = v179;
    goto LABEL_14;
  }

  v188 = v21;
  v64 = v190;
  swift_beginAccess();
  v65 = v64;
  v66 = v177;
  sub_23A7A8D38(v65, v177, &unk_27DFA94C0, &unk_23A7FD330);
  if (v53(v66, 1, v40) == 1)
  {
    v67 = v22;
    sub_23A7CBF18(v66);
    goto LABEL_8;
  }

  v104 = v40;
  v105 = v22;
  v106 = v104;
  v107 = v187;
  v108 = v172;
  (*(v187 + 32))(v172, v66, v104);
  v109 = v186;
  sub_23A7EE354();
  v110 = sub_23A7EE364();
  v111 = *(v107 + 8);
  v189 = (v107 + 8);
  v183 = v111;
  (v111)(v109, v106);
  if (v110)
  {
    sub_23A7EE184();
    v112 = v188;
    __swift_project_boxed_opaque_existential_0(v197, v198);
    sub_23A7EE2C4();
    v113 = *(v192 + 16);
    v171 = v105;
    v113(v170, v193, v105);
    v114 = v173;
    (*(v107 + 16))(v173, v108, v106);
    v115 = *(v107 + 56);
    v191 = v106;
    v115(v114, 0, 1, v106);
    v116 = sub_23A7EDFA4();
    v117 = *(*(v116 - 8) + 56);
    v117(v174, 1, 1, v116);
    v117(v175, 1, 1, v116);

    sub_23A7EE194();
    sub_23A7EE1F4();
    __swift_destroy_boxed_opaque_existential_0(v197);
    v118 = v195;
    v119 = v179;
    (*(v195 + 104))(v112, *MEMORY[0x277D74620], v179);
    sub_23A7EE224();
    (*(v118 + 8))(v112, v119);
LABEL_26:
    (v183)(v172, v191);
    return (*(v192 + 8))(v193, v171);
  }

  sub_23A7EE184();
  __swift_project_boxed_opaque_existential_0(v197, v198);
  v129 = v185;
  sub_23A7EE2C4();
  v130 = sub_23A7EE2F4();
  (*(v180 + 8))(v129, v181);
  __swift_destroy_boxed_opaque_existential_0(v197);
  if (v130)
  {
    sub_23A7EE184();
    v131 = v188;
    __swift_project_boxed_opaque_existential_0(v197, v198);
    sub_23A7EE2C4();
    v132 = *(v192 + 16);
    v171 = v105;
    v132(v170, v193, v105);
    v133 = v187;
    v134 = v173;
    (*(v187 + 16))(v173, v108, v106);
    v135 = *(v133 + 56);
    v191 = v106;
    v135(v134, 0, 1, v106);
    v136 = sub_23A7EDFA4();
    v137 = *(*(v136 - 8) + 56);
    v137(v174, 1, 1, v136);
    v137(v175, 1, 1, v136);

    sub_23A7EE194();
    v138 = v166;
    sub_23A7EE284();
    __swift_destroy_boxed_opaque_existential_0(v197);
    v139 = v167;
    v140 = v168;
    (*(v167 + 16))(v131, v138, v168);
    v141 = v195;
    v142 = v179;
    (*(v195 + 104))(v131, *MEMORY[0x277D74688], v179);
    sub_23A7EE224();
    (*(v141 + 8))(v131, v142);
    (*(v139 + 8))(v138, v140);
    goto LABEL_26;
  }

  v143 = v106;
  (v183)(v108, v106);
  v57 = v195;
  v67 = v105;
  v40 = v143;
LABEL_8:
  sub_23A7EE184();
  __swift_project_boxed_opaque_existential_0(v197, v198);
  v68 = v185;
  sub_23A7EE2C4();
  v69 = v186;
  sub_23A7EE334();
  v70 = sub_23A7EE2F4();
  (*(v187 + 8))(v69, v40);
  v71 = *(v180 + 8);
  v71(v68, v181);
  __swift_destroy_boxed_opaque_existential_0(v197);
  if ((v70 & 1) == 0)
  {
    (*(v192 + 8))(v193, v67);
LABEL_28:
    v21 = v188;
    v56 = v179;
    goto LABEL_32;
  }

  v72 = [v169 printer];
  v56 = v179;
  if (!v72)
  {
LABEL_31:
    (*(v192 + 8))(v193, v67);
    v21 = v188;
    goto LABEL_32;
  }

  v73 = v72;
  v74 = [objc_allocWithZone(QLPreviewPrinter) initWithPreviewPrinter_];
  if (!v74)
  {
    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v189 = v74;
  sub_23A7EE184();
  __swift_project_boxed_opaque_existential_0(v197, v198);
  v75 = v185;
  sub_23A7EE2C4();
  v76 = v162;
  sub_23A7EE2E4();
  v71(v75, v181);
  v77 = v164;
  v78 = v163;
  v79 = v165;
  (*(v164 + 104))(v163, *MEMORY[0x277D74820], v165);
  sub_23A7CBF80();
  v80 = sub_23A7EE804();
  v81 = *(v77 + 8);
  v81(v78, v79);
  v81(v76, v79);
  __swift_destroy_boxed_opaque_existential_0(v197);
  v82 = v192;
  v83 = *(v192 + 16);
  if (v80)
  {
    v84 = v193;
    v83(v170, v193, v67);
    v85 = v190;
    swift_beginAccess();
    sub_23A7A8D38(v85, v173, &unk_27DFA94C0, &unk_23A7FD330);
    v86 = sub_23A7EDFA4();
    v87 = *(*(v86 - 8) + 56);
    v87(v174, 1, 1, v86);
    v87(v175, 1, 1, v86);

    sub_23A7EE194();
    v88 = v188;
    sub_23A7EE274();
    v89 = v195;
    v90 = v179;
    (*(v195 + 104))(v88, *MEMORY[0x277D74688], v179);
    sub_23A7EE224();

    swift_unknownObjectRelease();
    (*(v89 + 8))(v88, v90);
    return (*(v82 + 8))(v84, v67);
  }

  else
  {
    v144 = v160;
    v83(v160, v193, v67);
    v145 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v146 = (v159 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
    v147 = swift_allocObject();
    v148 = v161;
    *(v147 + 16) = v196;
    *(v147 + 24) = v148;
    v171((v147 + v145), v144, v67);
    v149 = (v147 + v146);
    v150 = v194;
    *v149 = v178;
    v149[1] = v150;

    v151 = v189;
    swift_unknownObjectRetain();

    v152 = v151;
    swift_unknownObjectRetain();
    result = [v169 view];
    if (result)
    {
      v153 = result;
      v154 = [result window];

      v155 = [v154 windowScene];
      v156 = v191;
      v197[0] = v191;
      v197[1] = v73;
      v197[2] = v152;
      swift_unknownObjectWeakInit();
      v157 = v156;

      v199 = sub_23A7CBFD8;
      v200 = v147;
      sub_23A7C4BDC(v197);
      swift_unknownObjectRelease_n();

      sub_23A7A8CE4(v197);
      return (*(v82 + 8))(v193, v67);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_23A7CB444(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v72 = a6;
  v68 = a4;
  v78 = a2;
  v74 = a1;
  v63 = sub_23A7EE234();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DFA9E98, &qword_23A7FE628);
  MEMORY[0x28223BE20](v7 - 8);
  v60 = v57 - v8;
  v9 = sub_23A7EE1C4();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_23A7EDF64();
  v79 = *(v73 - 8);
  v11 = MEMORY[0x28223BE20](v73);
  v57[1] = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v57 - v13;
  v59 = sub_23A7EE2B4();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v70 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9E88, &qword_23A7FE620);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v57 - v23;
  v25 = sub_23A7EE1B4();
  v76 = *(v25 - 8);
  v77 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v64 = v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v57 - v29;
  MEMORY[0x28223BE20](v28);
  v80 = v57 - v31;
  v65 = _s12GeneratedPDFVMa(0);
  MEMORY[0x28223BE20](v65);
  v75 = v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94F8, &unk_23A7FE630);
  MEMORY[0x28223BE20](v33);
  v35 = (v57 - v34);
  v36 = swift_projectBox();
  sub_23A7A8D38(v74, v35, &qword_27DFA94F8, &unk_23A7FE630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = *v35;
    v38 = *v35;
    sub_23A7EE214();

    return;
  }

  v39 = v75;
  sub_23A7A8DA0(v35, v75);
  swift_beginAccess();
  sub_23A7A8D38(v36, v24, &unk_27DFA94C0, &unk_23A7FD330);
  v40 = sub_23A7EDFA4();
  v41 = *(*(v40 - 8) + 56);
  v41(v21, 1, 1, v40);
  v41(v19, 1, 1, v40);
  sub_23A7EE194();
  sub_23A7EE1A4();
  v42 = *(v76 + 8);
  v74 = v76 + 8;
  v68 = v42;
  v42(v30, v77);
  v43 = *(v79 + 16);
  v79 += 16;
  v57[0] = v43;
  v43(v14, v39, v73);
  (*(v66 + 104))(v69, *MEMORY[0x277D74490], v67);
  v44 = sub_23A7EE374();
  (*(*(v44 - 8) + 56))(v24, 1, 1, v44);
  v41(v21, 1, 1, v40);
  v41(v19, 1, 1, v40);

  sub_23A7EE194();
  sub_23A7EE1E4();
  swift_allocObject();
  sub_23A7EE1D4();
  v45 = v77;
  (*(v76 + 16))(v30, v80, v77);
  v46 = v70;
  sub_23A7EE294();
  v47 = v45;
  v48 = v75;
  v49 = *(v75 + *(v65 + 24));
  if (__OFADD__(v49, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v49 + 1 < v49)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v50 = v60;
  sub_23A7EE244();
  v51 = sub_23A7EE254();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_23A7EE264();
  v52 = v58;
  v53 = v61;
  v54 = v59;
  (*(v58 + 16))(v61, v46, v59);
  v55 = v62;
  v56 = v63;
  (*(v62 + 104))(v53, *MEMORY[0x277D74688], v63);
  sub_23A7EE224();
  (*(v55 + 8))(v53, v56);
  (*(v52 + 8))(v46, v54);
  v68(v80, v47);
  sub_23A7A8E18(v48);
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_23A7CBEA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7CBF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A7CBF80()
{
  result = qword_27DFA9E90;
  if (!qword_27DFA9E90)
  {
    sub_23A7EE2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9E90);
  }

  return result;
}

void sub_23A7CBFD8(uint64_t a1)
{
  v3 = *(sub_23A7EDF64() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_23A7CB444(a1, v5, v6, (v1 + v4), v8, v9);
}

uint64_t QLAccessoryAppExtensionScene.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x726F737365636361;
  a3[1] = 0xE900000000000079;
  a3[2] = result;
  a3[3] = a2;
  return result;
}

uint64_t QLAccessoryAppExtensionScene.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  type metadata accessor for QLAccessoryAppExtensionSceneProxy(0);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A7EE044();
  v6 = swift_allocObject();
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(v6 + 16) = v8;
  *(v6 + 24) = v7;
  *(v6 + 32) = v3;
  v9 = *(v1 + 1);
  *(v6 + 40) = v9;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  v10 = v9;
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2821169D0](v3, v10, sub_23A7CC338, v6, sub_23A7CC3E0, v5, v8, v7);
}

uint64_t sub_23A7CC1F4@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  v12(v9);
  v13 = *(v5 + 16);
  v13(v11, v8, a2);
  v14 = *(v5 + 8);
  v14(v8, a2);
  v13(a3, v11, a2);
  return (v14)(v11, a2);
}

uint64_t sub_23A7CC34C(id a1, uint64_t a2)
{
  if (qword_27DFA8D28 != -1)
  {
    swift_once();
  }

  [a1 setExportedInterface_];
  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

uint64_t sub_23A7CC3E8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A7CC46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23A7CC4C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel, &unk_23A7FE218);
  sub_23A7EE014();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_23A7A3D7C(v4, v5);
}

double sub_23A7CC570(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel, &unk_23A7FE218);
  sub_23A7EE004();

  return result;
}

uint64_t sub_23A7CC640()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA9F20);
  __swift_project_value_buffer(v0, qword_27DFA9F20);
  return sub_23A7EE3A4();
}

uint64_t sub_23A7CC6C0()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  return *(v0 + 16);
}

void sub_23A7CC760(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
    sub_23A7EE004();
  }
}

uint64_t sub_23A7CC870()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  return *(v0 + 17);
}

void sub_23A7CC910(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
    sub_23A7EE004();
  }
}

void *sub_23A7CCA20()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_23A7CCACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v4 = *(v3 + 24);
  *a2 = v4;
  return v4;
}

double sub_23A7CCB78(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE004();

  return result;
}

uint64_t sub_23A7CCC44()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  return swift_unknownObjectRetain();
}

uint64_t sub_23A7CCCE8(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

double sub_23A7CCD24()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  return result;
}

double sub_23A7CCDC8(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
    sub_23A7EE004();
  }

  return result;
}

double sub_23A7CCEFC()
{
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  return result;
}

double sub_23A7CCFA0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  *a2 = *(v3 + 48);

  return result;
}

double sub_23A7CD078(uint64_t a1)
{
  if (*(v1 + 48) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
    sub_23A7EE004();
  }

  return result;
}

uint64_t sub_23A7CD1AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v3 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel__process;
  swift_beginAccess();
  return sub_23A7D10BC(v5 + v3, a1);
}

uint64_t sub_23A7CD274@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v4 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel__process;
  swift_beginAccess();
  return sub_23A7D10BC(v3 + v4, a2);
}

uint64_t sub_23A7CD33C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_23A7D10BC(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE004();

  return sub_23A7D0C04(v6);
}

uint64_t sub_23A7CD46C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel__process;
  swift_beginAccess();
  sub_23A7D104C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_23A7CD4D8()
{
  *(v0 + 16) = 256;
  type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel(0);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_23A7EE044();
  *(v0 + 40) = v1;
  type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_23A7EE044();
  *(v0 + 48) = v2;
  v3 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel__process;
  v4 = sub_23A7EE154();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  sub_23A7EE0B4();
  sub_23A7EE044();
  return v0;
}

uint64_t sub_23A7CD5E4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_23A7EE0F4();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_23A7EE124();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = sub_23A7EE164();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = sub_23A7EE0C4();
  v2[26] = v6;
  v2[27] = *(v6 - 8);
  v2[28] = swift_task_alloc();
  v7 = sub_23A7EE0D4();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7CD844, 0, 0);
}

uint64_t sub_23A7CD844()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v0[33] = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel_quickLookUIExtensionPointQuery;
  sub_23A7EE0E4();
  (*(v4 + 16))(v2, v1, v3);
  sub_23A7D112C(&unk_27DFA9F90, MEMORY[0x277CC5D98], MEMORY[0x277CC5DA0]);
  sub_23A7EEAC4();
  v5 = sub_23A7D112C(&qword_27DFA97D0, MEMORY[0x277CC5D88], MEMORY[0x277CC5D90]);
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_23A7CD9BC;
  v7 = v0[26];

  return MEMORY[0x282200308](v0 + 11, v7, v5);
}

uint64_t sub_23A7CD9BC()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    (*(v2[27] + 8))(v2[28], v2[26]);
    v3 = sub_23A7CDEA8;
  }

  else
  {
    v3 = sub_23A7CDAE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A7CDAE8()
{
  v1 = v0[11];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  if (!v1)
  {
    (*(v3 + 8))(v2, v4);
LABEL_8:
    v19 = v0[33];
    v21 = v0[15];
    v20 = v0[16];
    v24 = v0 + 13;
    v23 = v0[13];
    v22 = v24[1];
    sub_23A7EECD4();

    (*(v21 + 16))(v20, v23 + v19, v22);
    v25 = sub_23A7EE8B4();
    MEMORY[0x23EE8BD70](v25);

    MEMORY[0x23EE8BD70](39, 0xE100000000000000);
    return sub_23A7EED64();
  }

  (*(v3 + 8))(v2, v4);
  if (!*(v1 + 16))
  {

    goto LABEL_8;
  }

  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  v27 = v0[20];
  v28 = v0[18];
  v29 = v0[17];
  v30 = v0[19];
  v10 = *(v8 + 16);
  v10(v6, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v9);

  (*(v8 + 32))(v5, v6, v9);
  v10(v7, v5, v9);
  swift_allocObject();
  swift_weakInit();
  sub_23A7EE104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FA0, &qword_23A7FD328);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23A7FE710;
  v12 = sub_23A7EE814();
  v13 = sub_23A7EE814();
  v14 = [objc_opt_self() attributeWithDomain:v12 name:v13];

  *(inited + 32) = v14;
  v15 = sub_23A7EE114();
  sub_23A7D0C90(inited);
  v15(v0 + 7, 0);
  (*(v28 + 16))(v30, v27, v29);
  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = sub_23A7CDFA4;
  v17 = v0[19];
  v18 = v0[12];

  return MEMORY[0x282116960](v18, v17);
}

uint64_t sub_23A7CDEA8()
{
  (*(v0[30] + 8))(v0[32], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23A7CDFA4()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_23A7CE1EC;
  }

  else
  {
    v2 = sub_23A7CE0B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A7CE0B8()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[21];
  (*(v0[18] + 8))(v0[20], v0[17]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A7CE1EC()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[18] + 8))(v0[20], v0[17]);
  (*(v3 + 8))(v1, v2);
  (*(v0[30] + 8))(v0[32], v0[29]);

  v4 = v0[1];

  return v4();
}

double sub_23A7CE320(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    aBlock[4] = sub_23A7D122C;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A7A0EA0;
    aBlock[3] = &block_descriptor_9;
    v4 = _Block_copy(aBlock);

    QLRunInMainThread();
    _Block_release(v4);
  }

  return result;
}

uint64_t sub_23A7CE42C()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810);
  v1[8] = swift_task_alloc();
  v2 = sub_23A7EE154();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[13] = v3;
  v1[14] = sub_23A7EEA34();
  v1[15] = sub_23A7EEA24();
  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_23A7CE59C;

  return sub_23A7CD5E4(v3);
}

uint64_t sub_23A7CE59C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = sub_23A7EE9E4();
  if (v0)
  {
    v5 = sub_23A7CF22C;
  }

  else
  {
    *(v2 + 144) = v3;
    *(v2 + 152) = v4;
    v5 = sub_23A7CE700;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23A7CE700()
{
  v11 = v0[13];
  v12 = v0[12];
  v1 = v0[10];
  v10 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v1 + 16);
  v0[20] = v4;
  v0[21] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4(v3);
  (*(v1 + 56))(v3, 0, 1, v10);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v0[22] = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel___observationRegistrar;
  v0[2] = v2;
  v0[23] = sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE004();

  sub_23A7D0C04(v3);
  (v4)(v12, v11, v10);
  v6 = swift_allocObject();
  v0[24] = v6;
  swift_weakInit();

  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_23A7CE958;
  v8 = v0[12];

  return sub_23A7A3DFC(v8, 0x7972616D697270, 0xE700000000000000, sub_23A7D0C6C, v6);
}

uint64_t sub_23A7CE958(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = v2;

  if (v2)
  {
    v5 = v4[18];
    v6 = v4[19];
    v7 = sub_23A7CEE84;
  }

  else
  {

    v5 = v4[18];
    v6 = v4[19];
    v7 = sub_23A7CEAA4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7CEAA4()
{
  v1 = v0[27];
  v2 = v0[26];
  v13 = v0[20];
  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[13];
  v3 = v0[7];
  swift_getKeyPath();
  v0[3] = v3;
  sub_23A7EE014();

  v4 = *(v3 + 40);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v1;
  v0[4] = v4;
  sub_23A7D112C(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel, &unk_23A7FD038);

  sub_23A7EE004();

  v13(v10, v12, v11);
  v6 = swift_allocObject();
  v0[29] = v6;
  swift_weakInit();

  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_23A7CED30;
  v8 = v0[11];

  return sub_23A7C4548(v8, 0x726F737365636361, 0xE900000000000079, sub_23A7D1028, v6);
}

uint64_t sub_23A7CED30(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 248) = v2;

  if (v2)
  {
    v7 = v6[18];
    v8 = v6[19];
    v9 = sub_23A7CF150;
  }

  else
  {

    v6[32] = a2;
    v6[33] = a1;
    v7 = v6[18];
    v8 = v6[19];
    v9 = sub_23A7CEF44;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23A7CEE84()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A7CEF44()
{
  v1 = v0[32];
  v2 = v0[33];
  v10 = v0[13];
  v3 = v0[10];
  v9 = v0[9];
  v4 = v0[7];

  swift_getKeyPath();
  v0[5] = v4;
  sub_23A7EE014();

  v5 = *(v4 + 48);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v1;
  v0[6] = v5;
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel, &unk_23A7FE218);

  sub_23A7EE004();

  (*(v3 + 8))(v10, v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A7CF150()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23A7CF22C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A7CF2C0(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v3 = [objc_opt_self() sharedInstance];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setRemoteObserver_];
  }

  if (qword_27DFA8D68 != -1)
  {
    swift_once();
  }

  v5 = sub_23A7EE3B4();
  __swift_project_value_buffer(v5, qword_27DFA9F20);
  v6 = sub_23A7EE394();
  v7 = sub_23A7EEB14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23A714000, v6, v7, a2, v8, 2u);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }
}

void sub_23A7CF408(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
    sub_23A7EE014();

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7D112C(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel, &unk_23A7FD038);
    sub_23A7EE004();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
    sub_23A7EE014();

    v3 = swift_getKeyPath();
    MEMORY[0x28223BE20](v3);
    sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel, &unk_23A7FE218);
    sub_23A7EE004();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v4 = [objc_opt_self() sharedInstance];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 setRemoteObserver_];
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 17))
    {
      v7 = swift_getKeyPath();
      MEMORY[0x28223BE20](v7);
      sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
      sub_23A7EE004();
    }

    else
    {
      *(Strong + 17) = 0;
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = swift_getKeyPath();
    MEMORY[0x28223BE20](v8);
    sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
    sub_23A7EE004();
  }
}

uint64_t sub_23A7CF97C()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v2 = *(v1 + 40);
  swift_getKeyPath();
  v0[3] = v2;
  sub_23A7D112C(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel, &unk_23A7FD038);

  sub_23A7EE014();

  v3 = *(v2 + 16);
  v0[5] = v3;
  v4 = *(v2 + 24);
  v0[6] = v4;
  sub_23A7A3D7C(v3, v4);

  if (v3)
  {

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_23A7CFBB4;

    return sub_23A7E9E84();
  }

  else
  {
    sub_23A7D0B74();
    swift_allocError();
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23A7CFBB4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_23A7D13F4;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_23A7D13D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A7CFD18()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v2 = *(v1 + 48);
  swift_getKeyPath();
  v0[3] = v2;
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel, &unk_23A7FE218);

  sub_23A7EE014();

  v3 = *(v2 + 16);
  v0[5] = v3;
  v4 = *(v2 + 24);
  v0[6] = v4;
  sub_23A7A3D7C(v3, v4);

  if (v3)
  {

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_23A7CFF50;

    return sub_23A7EA368();
  }

  else
  {
    sub_23A7D0B74();
    swift_allocError();
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23A7CFF50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_23A7D0104;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_23A7D0094;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A7D0094()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_23A7D0104()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7D0170()
{
  v1[3] = v0;
  v1[4] = sub_23A7EEA34();
  v1[5] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_23A7D020C, v3, v2);
}

uint64_t sub_23A7D020C()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  v0[8] = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel___observationRegistrar;
  v0[9] = sub_23A7D112C(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v2 = *(v1 + 40);
  swift_getKeyPath();
  v0[2] = v2;
  sub_23A7D112C(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel, &unk_23A7FD038);

  sub_23A7EE014();

  v3 = *(v2 + 16);
  v0[10] = v3;
  v4 = *(v2 + 24);
  v0[11] = v4;
  sub_23A7A3D7C(v3, v4);

  if (v3)
  {
    v0[12] = sub_23A7EEA24();
    v5 = sub_23A7EE9E4();
    v7 = v6;
    v8 = sub_23A7D0518;
LABEL_5:

    return MEMORY[0x2822009F8](v8, v5, v7);
  }

  v9 = v0[3];
  swift_getKeyPath();
  v0[2] = v9;
  sub_23A7EE014();

  v10 = *(v9 + 48);
  swift_getKeyPath();
  v0[2] = v10;
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel, &unk_23A7FE218);

  sub_23A7EE014();

  v11 = *(v10 + 16);
  v0[13] = v11;
  v12 = *(v10 + 24);
  v0[14] = v12;
  sub_23A7A3D7C(v11, v12);

  if (v11)
  {
    v0[15] = sub_23A7EEA24();
    v5 = sub_23A7EE9E4();
    v7 = v13;
    v8 = sub_23A7D0780;
    goto LABEL_5;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_23A7D0518()
{
  v1 = v0[11];

  __swift_project_boxed_opaque_existential_0((v1 + 24), *(v1 + 48));
  sub_23A7EEB84();
  [*(v1 + 64) invalidate];
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;

  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_23A7D05C8, v3, v4);
}

uint64_t sub_23A7D05C8()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_23A7EE014();

  v2 = *(v1 + 48);
  swift_getKeyPath();
  v0[2] = v2;
  sub_23A7D112C(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel, &unk_23A7FE218);

  sub_23A7EE014();

  v3 = *(v2 + 16);
  v0[13] = v3;
  v4 = *(v2 + 24);
  v0[14] = v4;
  sub_23A7A3D7C(v3, v4);

  if (v3)
  {
    v0[15] = sub_23A7EEA24();
    v6 = sub_23A7EE9E4();

    return MEMORY[0x2822009F8](sub_23A7D0780, v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23A7D0780()
{
  v1 = v0[14];

  __swift_project_boxed_opaque_existential_0((v1 + 24), *(v1 + 48));
  sub_23A7EEB84();
  [*(v1 + 64) invalidate];
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;

  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_23A7D0830, v3, v4);
}

uint64_t sub_23A7D0830()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7D0890()
{
  swift_unknownObjectRelease();

  sub_23A7D0C04(v0 + OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel__process);
  v1 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel_quickLookUIExtensionPointQuery;
  v2 = sub_23A7EE0F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9QuickLook21QLHostRemoteViewModel___observationRegistrar;
  v4 = sub_23A7EE054();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for QLHostRemoteViewModel(uint64_t a1)
{
  result = qword_27DFA9F58;
  if (!qword_27DFA9F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A7D09F0(uint64_t a1)
{
  sub_23A7D0B1C(319);
  if (v1 <= 0x3F)
  {
    sub_23A7EE0F4();
    if (v2 <= 0x3F)
    {
      sub_23A7EE054();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23A7D0B1C(uint64_t a1)
{
  if (!qword_27DFA9778)
  {
    sub_23A7EE154();
    v1 = sub_23A7EEC34();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFA9778);
    }
  }
}

unint64_t sub_23A7D0B74()
{
  result = qword_27DFA9F78;
  if (!qword_27DFA9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9F78);
  }

  return result;
}

uint64_t sub_23A7D0C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A7D0C90(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23A7EEC84();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_23A7EEC84();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_23A7D0D80(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_23A7D0E20(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_23A7D0D80(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23A7EEC84();
LABEL_9:
  result = sub_23A7EECF4();
  *v2 = result;
  return result;
}

uint64_t sub_23A7D0E20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23A7EEC84();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23A7EEC84();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23A7D11C8();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FB0, &qword_23A7FE8C0);
            v9 = sub_23A7D0FA0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23A7D117C();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_23A7D0FA0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EE8C140](a2, a3);
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
    return sub_23A7D1020;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A7D104C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7D10BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7D112C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23A7D117C()
{
  result = qword_27DFA9FA8;
  if (!qword_27DFA9FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFA9FA8);
  }

  return result;
}

unint64_t sub_23A7D11C8()
{
  result = qword_27DFA9FB8;
  if (!qword_27DFA9FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9FB0, &qword_23A7FE8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9FB8);
  }

  return result;
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_23A7D1274()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;
}

void sub_23A7D12B0()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

void sub_23A7D12EC()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

unint64_t sub_23A7D133C()
{
  result = qword_27DFA9FC0;
  if (!qword_27DFA9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9FC0);
  }

  return result;
}

void sub_23A7D13F8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23A7EDEE4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_23A7D1468(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  *a2 = *(v3 + 16);
}

void sub_23A7D1538(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  *a2 = *(v3 + 17);
}

uint64_t sub_23A7D1608@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  *a2 = *(v3 + 32);
  return swift_unknownObjectRetain();
}

double sub_23A7D16B4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE004();

  return result;
}

uint64_t sub_23A7D1780()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA9FD0);
  __swift_project_value_buffer(v0, qword_27DFA9FD0);
  return sub_23A7EE3A4();
}

id sub_23A7D1800()
{
  v1 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___accessoryViewController;
  v2 = *(v0 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___accessoryViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___accessoryViewController);
  }

  else
  {
    v4 = sub_23A7D1864(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23A7D1864(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  v3 = *(a1 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v4 = *(v3 + 48);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9F70, type metadata accessor for QLHostAccessoryViewControllerWrapperViewModel, &unk_23A7FE218);

  sub_23A7EE014();

  v5 = *(v4 + 16);
  sub_23A7A3D7C(v5, *(v4 + 24));

  if (v5)
  {

    sub_23A7EEBF4();
    type metadata accessor for QLHostPlaceholderUIView();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v2 setPlaceholderView_];
  }

  else
  {
    sub_23A7EEBF4();
  }

  return v2;
}

uint64_t sub_23A7D1AF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  return *(v1 + 17);
}

uint64_t sub_23A7D1C98@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  swift_beginAccess();
  sub_23A7A8D38(v1 + v9, v8, &qword_27DFA9FF8, &qword_23A7FEA58);
  v10 = sub_23A7EDFE4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_23A7A8E74(v8, &qword_27DFA9FF8, &qword_23A7FEA58);
  sub_23A7EDFD4();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_23A7D1E84(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_23A7D1E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7D207C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_23A7EDFE4();
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  swift_beginAccess();
  sub_23A7D1E84(v5, v1 + v8);
  return swift_endAccess();
}

uint64_t sub_23A7D21A4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_23A7EDFE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  v11 = *a2;
  (*(v8 + 32))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  swift_beginAccess();
  sub_23A7D1E84(v6, v11 + v12);
  return swift_endAccess();
}

void (*sub_23A7D2338(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = sub_23A7EDFE4();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_23A7D1C98(v10);
  return sub_23A7D2458;
}

void sub_23A7D2458(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  v7 = *(*a1 + 48);
  if (a2)
  {
    (*(v3 + 16))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
    swift_beginAccess();
    sub_23A7D1E84(v5, v7 + v8);
    swift_endAccess();
    (*(v3 + 8))(v4, v6);
  }

  else
  {
    (*(v3 + 32))(v2[7], v2[10], v2[8]);
    (*(v3 + 56))(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
    swift_beginAccess();
    sub_23A7D1E84(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

id sub_23A7D25D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel;
  type metadata accessor for QLHostRemoteViewModel(0);
  swift_allocObject();
  *&v3[v7] = sub_23A7CD4D8();
  *&v3[OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___accessoryViewController] = 0;
  v8 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  v9 = sub_23A7EDFE4();
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  if (a2)
  {
    v10 = sub_23A7EE814();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for QLRemoteUIHostViewController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

uint64_t type metadata accessor for QLRemoteUIHostViewController(uint64_t a1)
{
  result = qword_27DFAA0B0;
  if (!qword_27DFAA0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id QLRemoteUIHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLRemoteUIHostViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static QLRemoteUIHostViewController.remotePreviewCollection()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23A7A1FDC;

  return sub_23A7E40BC();
}

void sub_23A7D2A4C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    [v2 setRemoteObserver_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23A7D2AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_23A7D2C98(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_23A7EEA34();
  *(v1 + 24) = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D2D30, v3, v2);
}

uint64_t sub_23A7D2D30()
{
  v1 = v0[2];

  v0[4] = _Block_copy(v1);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_23A7D2DE4;

  return sub_23A7E40BC();
}

uint64_t sub_23A7D2DE4(void *a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v4 = *(v6 + 8);

  return v4();
}

Swift::Void __swiftcall QLRemoteUIHostViewController.toggleDebugView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  swift_getKeyPath();
  sub_23A7EE034();

  *(v1 + 16) = (*(v1 + 16) & 1) == 0;
  swift_getKeyPath();
  sub_23A7EE024();
}

uint64_t sub_23A7D30B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 232) = a5;
  *(v5 + 160) = a4;
  sub_23A7EEA34();
  *(v5 + 168) = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  *(v5 + 176) = v7;
  *(v5 + 184) = v6;

  return MEMORY[0x2822009F8](sub_23A7D3154, v7, v6);
}

uint64_t sub_23A7D3154()
{
  v1 = *(v0[20] + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  v0[18] = v1;
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v2 = *(v1 + 40);
  swift_getKeyPath();
  v0[19] = v2;
  sub_23A7E7880(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel, &unk_23A7FD038);

  sub_23A7EE014();

  v3 = *(v2 + 16);
  v0[24] = v3;
  v4 = *(v2 + 24);
  v0[25] = v4;
  sub_23A7A3D7C(v3, v4);

  if (v3)
  {
    v5 = swift_task_alloc();
    v0[26] = v5;
    *v5 = v0;
    v5[1] = sub_23A7D336C;

    return sub_23A7E9E84();
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23A7D336C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_23A7D3770;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_23A7D3494;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A7D3494()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23A7D35B8;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23A79AB70;
  *(v0 + 104) = &block_descriptor_476;
  *(v0 + 112) = v3;
  [v1 setAllowInteractiveTransitions:v2 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23A7D35B8()
{

  return MEMORY[0x2822009F8](sub_23A7D3698, 0, 0);
}

uint64_t sub_23A7D3698()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_23A7D3710, v1, v2);
}

uint64_t sub_23A7D3710()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7D3770()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_23A7D37DC, v1, v2);
}

uint64_t sub_23A7D37DC()
{

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  if (v6)
  {
    v8 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 67109378;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 10) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to set allowInteractiveTransitions to %{BOOL}d. Error: %@", v9, 0x12u);
    sub_23A7A8E74(v10, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

void __swiftcall QLRemoteUIHostViewController.accessoryView()(UIView *__return_ptr retstr)
{
  v1 = sub_23A7D1800();
  v2 = [v1 view];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_23A7D3ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_23A7EEA34();
  v6[6] = sub_23A7EEA24();
  v6[7] = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_23A7D3B68, v8, v7);
}

uint64_t sub_23A7D3B68()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D3C04;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D3C04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_23A7D3E54;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_23A7D3D2C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D3D2C()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D3DB0, v1, v0);
}

uint64_t sub_23A7D3DB0()
{
  v1 = *(v0 + 96);

  v2 = sub_23A7EE814();
  [v1 setHostApplicationBundleIdentifier_];

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A7D3E54()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E7B28, v1, v0);
}

double QLRemoteUIHostViewController.configure(withNumberOfItems:currentPreviewItemIndex:itemProvider:stateManager:fullScreen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v29 = &unk_284D81A48;
  v15 = swift_dynamicCastObjCProtocolConditional();
  if (v15)
  {
    v16 = v15;
    v27 = a1;
    v17 = *&v6[OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel];
    KeyPath = swift_getKeyPath();
    v25 = &v25;
    MEMORY[0x28223BE20](KeyPath);
    v26 = a2;
    *(&v25 - 2) = v17;
    *(&v25 - 1) = v16;
    v28 = v17;
    sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
    swift_unknownObjectRetain();
    a1 = v27;
    sub_23A7EE004();
    a2 = v26;

    swift_unknownObjectRelease();
  }

  sub_23A7EEA44();
  v19 = sub_23A7EEA64();
  (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  sub_23A7EEA34();
  swift_unknownObjectRetain();
  v20 = v6;
  swift_unknownObjectRetain();
  v21 = sub_23A7EEA24();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  *(v22 + 32) = v20;
  *(v22 + 40) = a1;
  *(v22 + 48) = a2;
  *(v22 + 56) = a3;
  *(v22 + 64) = a4;
  *(v22 + 72) = a5 & 1;
  sub_23A7B9D94(0, 0, v14, &unk_23A7FEAD8, v22);

  return result;
}

uint64_t sub_23A7D41B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  *(v8 + 56) = sub_23A7EEA34();
  *(v8 + 64) = sub_23A7EEA24();
  *(v8 + 72) = sub_23A7EEA24();
  v10 = sub_23A7EE9E4();
  *(v8 + 80) = v10;
  *(v8 + 88) = v9;

  return MEMORY[0x2822009F8](sub_23A7D4270, v10, v9);
}

uint64_t sub_23A7D4270()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D430C;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D430C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_23A7D4568;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_23A7D4434;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D4434()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D44B8, v1, v0);
}

uint64_t sub_23A7D44B8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  [v1 configureWithNumberOfItems:v6 currentPreviewItemIndex:v5 itemProvider:v4 stateManager:v3 fullScreen:v2];
  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23A7D4568()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E7B1C, v1, v0);
}

double QLRemoteUIHostViewController.configure(withNumberOfItems:currentPreviewItemIndex:itemProvider:stateManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  v27 = &unk_284D81A48;
  v12 = swift_dynamicCastObjCProtocolConditional();
  if (v12)
  {
    v13 = v12;
    v14 = a3;
    v15 = a1;
    v16 = *&v4[OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel];
    KeyPath = swift_getKeyPath();
    v24[1] = v24;
    v25 = a2;
    MEMORY[0x28223BE20](KeyPath);
    v24[-2] = v16;
    v24[-1] = v13;
    v26 = v16;
    sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
    swift_unknownObjectRetain();
    a1 = v15;
    a3 = v14;
    sub_23A7EE004();

    swift_unknownObjectRelease();
    a2 = v25;
  }

  sub_23A7EEA44();
  v18 = sub_23A7EEA64();
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  sub_23A7EEA34();
  swift_unknownObjectRetain();
  v19 = v4;
  swift_unknownObjectRetain();
  v20 = sub_23A7EEA24();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v19;
  v21[5] = a1;
  v21[6] = a2;
  v21[7] = a3;
  v21[8] = a4;
  sub_23A7B9D94(0, 0, v11, &unk_23A7FEB18, v21);

  return result;
}

uint64_t sub_23A7D4928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = sub_23A7EEA34();
  v8[8] = sub_23A7EEA24();
  v8[9] = sub_23A7EEA24();
  v10 = sub_23A7EE9E4();
  v8[10] = v10;
  v8[11] = v9;

  return MEMORY[0x2822009F8](sub_23A7D49D8, v10, v9);
}

uint64_t sub_23A7D49D8()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D4A74;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D4A74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_23A7D4568;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_23A7D4B9C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D4B9C()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D4C20, v1, v0);
}

uint64_t sub_23A7D4C20()
{
  v1 = v0[14];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];

  [v1 configureWithNumberOfItems:v5 currentPreviewItemIndex:v4 itemProvider:v3 stateManager:v2];
  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_23A7D4D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = sub_23A7EEA34();
  *(v6 + 40) = sub_23A7EEA24();
  *(v6 + 48) = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return MEMORY[0x2822009F8](sub_23A7D4E34, v8, v7);
}

uint64_t sub_23A7D4E34()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D4ED0;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D4ED0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_23A7D5114;
  }

  else
  {
    v4[11] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_23A7D4FF8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D4FF8()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D507C, v1, v0);
}

uint64_t sub_23A7D507C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 24);

  [v1 setCurrentPreviewItemIndex:v3 animated:v2];
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A7D5114()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E7B24, v1, v0);
}

uint64_t sub_23A7D51EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = sub_23A7EEA34();
  *(v5 + 32) = sub_23A7EEA24();
  *(v5 + 40) = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_23A7D5298, v7, v6);
}

uint64_t sub_23A7D5298()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D5334;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D5334(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7D5568;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7D545C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D545C()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D54E0, v1, v0);
}

uint64_t sub_23A7D54E0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  [v1 hostApplicationDidEnterBackground_];
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A7D5568()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E7B20, v1, v0);
}

uint64_t sub_23A7D5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_23A7EEA34();
  v4[4] = sub_23A7EEA24();
  v4[5] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23A7D56FC, v6, v5);
}

uint64_t sub_23A7D56FC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D5798;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D5798(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7D5568;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7D58C0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D58C0()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D5944, v1, v0);
}

uint64_t sub_23A7D5944()
{
  v1 = *(v0 + 80);

  [v1 hostApplicationDidBecomeActive];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t QLRemoteUIHostViewController.toolbarButtons(for:)(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = sub_23A7EEA34();
  v2[23] = sub_23A7EEA24();
  v2[24] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();
  v2[25] = v4;
  v2[26] = v3;

  return MEMORY[0x2822009F8](sub_23A7D5AA0, v4, v3);
}

uint64_t sub_23A7D5AA0()
{
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D5B3C;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D5B3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_23A7D5F9C;
  }

  else
  {
    v4[29] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = sub_23A7D5C64;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D5C64()
{

  v2 = sub_23A7EE9E4();
  *(v0 + 240) = v2;
  *(v0 + 248) = v1;

  return MEMORY[0x2822009F8](sub_23A7D5CE8, v2, v1);
}

uint64_t sub_23A7D5CE8()
{
  v1 = v0[29];
  v2 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A7D5E14;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8F90, &qword_23A7FEB60);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79A290;
  v0[13] = &block_descriptor_10;
  v0[14] = v3;
  [v1 toolbarButtonsForTraitCollection:v2 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7D5E14()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_23A7D5F1C, v2, v1);
}

uint64_t sub_23A7D5F1C()
{

  v1 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_23A7D5F9C()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D6020, v1, v0);
}

uint64_t sub_23A7D6020()
{

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to get toolbar buttons: %@", v7, 0xCu);
    sub_23A7A8E74(v8, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  v11 = *(v0 + 224);

  v12 = *(v0 + 8);
  v13 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];

  return v12(v13, v14);
}

uint64_t sub_23A7D6354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23A7EEA34();
  v3[5] = sub_23A7EEA24();
  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D63F0, v5, v4);
}

uint64_t sub_23A7D63F0()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23A7D64B4;
  v7 = v0[2];

  return QLRemoteUIHostViewController.toolbarButtons(for:)(v7);
}

uint64_t sub_23A7D64B4(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 16);
  v10 = *v2;

  sub_23A7A3798(0, &qword_27DFAA0D0, 0x277D43FB0);
  v6 = sub_23A7EE994();
  v7 = sub_23A7EE994();
  (v3)[2](v3, v6, v7);

  _Block_release(v3);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t QLRemoteUIHostViewController.toolbarButtonPressed(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = sub_23A7EEA34();
  v3[23] = sub_23A7EEA24();
  v5 = sub_23A7EE9E4();
  v3[24] = v5;
  v3[25] = v4;

  return MEMORY[0x2822009F8](sub_23A7D6718, v5, v4);
}

uint64_t sub_23A7D6718()
{
  v13 = v0;
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = sub_23A7EE3B4();
  v0[26] = __swift_project_value_buffer(v1, qword_27DFA9FD0);

  v2 = sub_23A7EE394();
  v3 = sub_23A7EEB14();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_23A797A74(0xD000000000000025, 0x800000023A80AE30, &v12);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_23A797A74(v5, v4, &v12);
    _os_log_impl(&dword_23A714000, v2, v3, "Calling %s on the service (%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE8D760](v7, -1, -1);
    MEMORY[0x23EE8D760](v6, -1, -1);
  }

  v8 = *(v0[21] + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  v0[18] = v8;
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  if (*(v8 + 17) == 1)
  {
    v0[27] = sub_23A7EEA24();
    v9 = swift_task_alloc();
    v0[28] = v9;
    *v9 = v0;
    v9[1] = sub_23A7D69EC;

    return sub_23A7CF95C();
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_23A7D69EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_23A7EE9E4();
    v7 = v6;
    v8 = sub_23A7D6E78;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_23A7EE9E4();
    v7 = v9;
    v8 = sub_23A7D6B6C;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_23A7D6B6C()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return MEMORY[0x2822009F8](sub_23A7D6BD0, v1, v2);
}

uint64_t sub_23A7D6BD0()
{
  v1 = v0[30];
  v2 = sub_23A7EE814();
  v0[31] = v2;
  v0[2] = v0;
  v0[3] = sub_23A7D6D00;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79AB70;
  v0[13] = &block_descriptor_40_0;
  v0[14] = v3;
  [v1 toolbarButtonPressedWithIdentifier:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7D6D00()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_23A7D6E08, v2, v1);
}

uint64_t sub_23A7D6E08()
{
  v1 = *(v0 + 248);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A7D6E78()
{

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return MEMORY[0x2822009F8](sub_23A7D6EDC, v1, v2);
}

uint64_t sub_23A7D6EDC()
{
  v1 = *(v0 + 232);

  v2 = v1;
  v3 = sub_23A7EE394();
  v4 = sub_23A7EEB34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 232);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23A714000, v3, v4, "Failed to inform toolbar button has been pressed: %@", v7, 0xCu);
    sub_23A7A8E74(v8, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23A7D71CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23A7EEA34();
  v3[5] = sub_23A7EEA24();
  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D7268, v5, v4);
}

uint64_t sub_23A7D7268()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_23A7EE844();
  v5 = v4;
  v0[7] = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_23A7D7344;

  return QLRemoteUIHostViewController.toolbarButtonPressed(withIdentifier:)(v3, v5);
}

uint64_t sub_23A7D7344()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t QLRemoteUIHostViewController.shouldDisplayLockActivity()()
{
  v1[18] = v0;
  v1[19] = sub_23A7EEA34();
  v1[20] = sub_23A7EEA24();
  v1[21] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_23A7D7548, v3, v2);
}

uint64_t sub_23A7D7548()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D75E4;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D75E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_23A7D7A28;
  }

  else
  {
    v4[26] = a1;
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_23A7D770C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D770C()
{

  v2 = sub_23A7EE9E4();
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;

  return MEMORY[0x2822009F8](sub_23A7D7790, v2, v1);
}

uint64_t sub_23A7D7790()
{
  v1 = v0[26];
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_23A7D78AC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8F98, &qword_23A7FEB80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79B37C;
  v0[13] = &block_descriptor_44;
  v0[14] = v2;
  [v1 shouldDisplayLockActivityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7D78AC()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_23A7D79B4, v2, v1);
}

uint64_t sub_23A7D79B4()
{

  v1 = *(v0 + 232);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23A7D7A28()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D7AAC, v1, v0);
}

uint64_t sub_23A7D7AAC()
{

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 200);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to know if current preview can be locked: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_23A7D7DD0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23A7EEA34();
  v2[4] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D7E68, v4, v3);
}

uint64_t sub_23A7D7E68()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_23A7D7F18;

  return QLRemoteUIHostViewController.shouldDisplayLockActivity()();
}

uint64_t sub_23A7D7F18(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_23A7D8094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_23A7EEA34();
  v4[4] = sub_23A7EEA24();
  v4[5] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23A7D813C, v6, v5);
}

uint64_t sub_23A7D813C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D81D8;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D81D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7D5568;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7D8300;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D8300()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D8384, v1, v0);
}

uint64_t sub_23A7D8384()
{
  v1 = *(v0 + 80);

  [v1 requestLockForCurrentItem];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t QLRemoteUIHostViewController.keyCommands()()
{
  v1[19] = v0;
  v1[20] = sub_23A7EEA34();
  v1[21] = sub_23A7EEA24();
  v1[22] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_23A7D84E0, v3, v2);
}

uint64_t sub_23A7D84E0()
{
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D857C;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D857C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_23A7D89C0;
  }

  else
  {
    v4[27] = a1;
    v5 = v4[23];
    v6 = v4[24];
    v7 = sub_23A7D86A4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D86A4()
{

  v2 = sub_23A7EE9E4();
  *(v0 + 224) = v2;
  *(v0 + 232) = v1;

  return MEMORY[0x2822009F8](sub_23A7D8728, v2, v1);
}

uint64_t sub_23A7D8728()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A7D8844;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA090, &qword_23A7FEBA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79BD54;
  v0[13] = &block_descriptor_52;
  v0[14] = v2;
  [v1 keyCommandsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7D8844()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_23A7D894C, v2, v1);
}

uint64_t sub_23A7D894C()
{

  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23A7D89C0()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D8A44, v1, v0);
}

uint64_t sub_23A7D8A44()
{

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 208);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to get key commands: %@", v7, 0xCu);
    sub_23A7A8E74(v8, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  v11 = *(v0 + 208);

  v12 = *(v0 + 8);
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

uint64_t sub_23A7D8D60(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23A7EEA34();
  v2[4] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D8DF8, v4, v3);
}

uint64_t sub_23A7D8DF8()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_23A7D8EA8;

  return QLRemoteUIHostViewController.keyCommands()();
}

uint64_t sub_23A7D8EA8(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v7 = *v1;

  sub_23A7A3798(0, &qword_27DFA8FD8, 0x277D43F80);
  v4 = sub_23A7EE994();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_23A7D9058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_23A7EEA34();
  v5[5] = sub_23A7EEA24();
  v5[6] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x2822009F8](sub_23A7D9100, v7, v6);
}

uint64_t sub_23A7D9100()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D919C;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D919C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_23A7D5114;
  }

  else
  {
    v4[11] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_23A7D92C4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D92C4()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D9348, v1, v0);
}

uint64_t sub_23A7D9348()
{
  v1 = v0[11];
  v2 = v0[3];

  [v1 keyCommandWasPerformed_];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

double QLRemoteUIHostViewController.setAppearance(_:animated:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  sub_23A7EEA44();
  v8 = sub_23A7EEA64();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_23A7EEA34();
  v9 = v2;
  v10 = a1;
  v11 = sub_23A7EEA24();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = a2;
  sub_23A7B9D94(0, 0, v7, &unk_23A7FEBC0, v12);

  return result;
}

uint64_t sub_23A7D954C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = sub_23A7EEA34();
  *(v6 + 40) = sub_23A7EEA24();
  *(v6 + 48) = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return MEMORY[0x2822009F8](sub_23A7D95F8, v8, v7);
}

uint64_t sub_23A7D95F8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D9694;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D9694(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_23A7D5114;
  }

  else
  {
    v4[11] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_23A7D97BC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D97BC()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D9840, v1, v0);
}

uint64_t sub_23A7D9840()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 24);

  [v1 setAppearance:v3 animated:v2];
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

Swift::Void __swiftcall QLRemoteUIHostViewController.notifyFirstTimeAppearance(with:)(__C::QLPreviewControllerFirstTimeAppearanceActions with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_23A7EEA44();
  v6 = sub_23A7EEA64();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_23A7EEA34();
  v7 = v1;
  v8 = sub_23A7EEA24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2].rawValue = v8;
  v9[3].rawValue = v10;
  v9[4].rawValue = v7;
  v9[5].rawValue = with.rawValue;
  sub_23A7B9D94(0, 0, v5, &unk_23A7FEBD0, v9);
}

uint64_t sub_23A7D9B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_23A7EEA34();
  v5[5] = sub_23A7EEA24();
  v5[6] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x2822009F8](sub_23A7D9C1C, v7, v6);
}

uint64_t sub_23A7D9C1C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23A7D9CB8;

  return sub_23A7CF95C();
}

uint64_t sub_23A7D9CB8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_23A7D5114;
  }

  else
  {
    v4[11] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_23A7D9DE0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7D9DE0()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7D9E64, v1, v0);
}

uint64_t sub_23A7D9E64()
{
  v1 = v0[11];
  v2 = v0[3];

  [v1 notifyFirstTimeAppearanceWithActions_];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall QLRemoteUIHostViewController.notifyStateRestorationUserInfo(_:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_23A7EEA44();
  v6 = sub_23A7EEA64();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_23A7EEA34();

  v7 = v1;
  v8 = sub_23A7EEA24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = rawValue;
  sub_23A7B9D94(0, 0, v5, &unk_23A7FEBE0, v9);
}

uint64_t sub_23A7DA174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = sub_23A7EEA34();
  v5[8] = sub_23A7EEA24();
  v5[9] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  v5[10] = v7;
  v5[11] = v6;

  return MEMORY[0x2822009F8](sub_23A7DA21C, v7, v6);
}

uint64_t sub_23A7DA21C()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DA2B8;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DA2B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v4[13] = v1;

  v5 = v3[11];
  v6 = v3[10];
  if (v1)
  {
    v7 = sub_23A7DA538;
  }

  else
  {
    v7 = sub_23A7DA3FC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23A7DA3FC()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DA480, v1, v0);
}

uint64_t sub_23A7DA480()
{
  v1 = *(v0 + 48);

  if (v1)
  {
    v1 = sub_23A7EE7C4();
  }

  [*(v0 + 24) notifyStateRestorationUserInfo_];

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A7DA538()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DA5BC, v1, v0);
}

uint64_t sub_23A7DA5BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7DA7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_23A7EEA34();
  v6[6] = sub_23A7EEA24();
  v6[7] = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_23A7DA860, v8, v7);
}

uint64_t sub_23A7DA860()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DA8FC;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DA8FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_23A7D3E54;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_23A7DAA24;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DAA24()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DAAA8, v1, v0);
}

uint64_t sub_23A7DAAA8()
{
  v1 = v0[12];
  v3 = v0[3];
  v2 = v0[4];

  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  [v1 previewItemDisplayState:sub_23A7EEDF4() wasAppliedToItemAtIndex:v2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t QLRemoteUIHostViewController.startTransition(withSourceViewProvider:transitionController:presenting:useInteractiveTransition:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 152) = a2;
  *(v5 + 160) = v4;
  *(v5 + 249) = a4;
  *(v5 + 248) = a3;
  *(v5 + 144) = a1;
  *(v5 + 168) = sub_23A7EEA34();
  *(v5 + 176) = sub_23A7EEA24();
  *(v5 + 184) = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  *(v5 + 192) = v7;
  *(v5 + 200) = v6;

  return MEMORY[0x2822009F8](sub_23A7DAC34, v7, v6);
}

uint64_t sub_23A7DAC34()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DACD0;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DACD0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_23A7DB130;
  }

  else
  {
    v4[28] = a1;
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_23A7DADF8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DADF8()
{

  v2 = sub_23A7EE9E4();
  *(v0 + 232) = v2;
  *(v0 + 240) = v1;

  return MEMORY[0x2822009F8](sub_23A7DAE7C, v2, v1);
}

uint64_t sub_23A7DAE7C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 249);
  v3 = *(v0 + 248);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23A7DAFBC;
  v6 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23A79AB70;
  *(v0 + 104) = &block_descriptor_76;
  *(v0 + 112) = v6;
  [v1 startTransitionWithSourceViewProvider:v5 transitionController:v4 presenting:v3 useInteractiveTransition:v2 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23A7DAFBC()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_23A7DB0C4, v2, v1);
}

uint64_t sub_23A7DB0C4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7DB130()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DB1B4, v1, v0);
}

uint64_t sub_23A7DB1B4()
{

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to start transition: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23A7DB50C(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 73) = a4;
  *(v6 + 72) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_23A7EEA34();
  *(v6 + 48) = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DB5B0, v8, v7);
}

uint64_t sub_23A7DB5B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  *(v0 + 56) = _Block_copy(v2);
  v4 = v3;
  swift_unknownObjectRetain();
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_23A7DB688;
  v7 = *(v0 + 73);
  v8 = *(v0 + 72);
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);

  return QLRemoteUIHostViewController.startTransition(withSourceViewProvider:transitionController:presenting:useInteractiveTransition:)(v10, v9, v8, v7);
}

uint64_t sub_23A7DB688()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 16);
  v6 = *v0;

  swift_unknownObjectRelease();
  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_23A7DB830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = sub_23A7EEA34();
  *(v5 + 32) = sub_23A7EEA24();
  *(v5 + 40) = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_23A7DB8DC, v7, v6);
}

uint64_t sub_23A7DB8DC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DB978;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DB978(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7DBBAC;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7DBAA0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DBAA0()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DBB24, v1, v0);
}

uint64_t sub_23A7DBB24()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  [v1 tearDownTransition_];
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A7DBBAC()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DBC30, v1, v0);
}

uint64_t sub_23A7DBC30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7DBCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_23A7EEA34();
  v6[6] = sub_23A7EEA24();
  v6[7] = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_23A7DBDA8, v8, v7);
}

uint64_t sub_23A7DBDA8()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DBE44;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DBE44(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_23A7DC094;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_23A7DBF6C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DBF6C()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DBFF0, v1, v0);
}

uint64_t sub_23A7DBFF0()
{
  v1 = *(v0 + 96);

  v2 = sub_23A7EE814();
  [v1 setLoadingString_];

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A7DC094()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DC118, v1, v0);
}

uint64_t sub_23A7DC118()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_23A7DC1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  sub_23A7EEA44();
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_23A7EEA34();
  v14 = v5;

  v15 = sub_23A7EEA24();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = a1;
  v16[6] = a2;
  a5(0, 0, v12, a4, v16);

  return result;
}

uint64_t sub_23A7DC338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_23A7EEA34();
  v6[6] = sub_23A7EEA24();
  v6[7] = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_23A7DC3E4, v8, v7);
}

uint64_t sub_23A7DC3E4()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DC480;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DC480(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_23A7DC6CC;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_23A7DC5A8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DC5A8()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DC62C, v1, v0);
}

uint64_t sub_23A7DC62C()
{
  v1 = *(v0 + 96);

  v2 = sub_23A7EE814();
  [v1 overrideParentApplicationDisplayIdentifierWithIdentifier_];

  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A7DC6CC()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DC750, v1, v0);
}

uint64_t sub_23A7DC750()
{

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to override parent application display identifier: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_23A7DC930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, char *, uint64_t, void *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = sub_23A7EE844();
  v14 = v13;
  v15 = a1;
  sub_23A7EEA44();
  v16 = sub_23A7EEA64();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  sub_23A7EEA34();
  v17 = v15;
  v18 = sub_23A7EEA24();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v19[5] = v12;
  v19[6] = v14;
  a6(0, 0, v11, a5, v19);
}

uint64_t QLRemoteUIHostViewController.preparePreviewCollectionForInvalidation()()
{
  v1[18] = v0;
  v1[19] = sub_23A7EEA34();
  v1[20] = sub_23A7EEA24();
  v1[21] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_23A7DCB40, v3, v2);
}

uint64_t sub_23A7DCB40()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DCBDC;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DCBDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_23A7DCFA4;
  }

  else
  {
    v4[26] = a1;
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_23A7DCD04;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DCD04()
{

  v2 = sub_23A7EE9E4();
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;

  return MEMORY[0x2822009F8](sub_23A7DCD88, v2, v1);
}

uint64_t sub_23A7DCD88()
{
  v1 = v0[26];
  v0[2] = v0;
  v0[3] = sub_23A7DCE9C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79AB70;
  v0[13] = &block_descriptor_92_0;
  v0[14] = v2;
  [v1 preparePreviewCollectionForInvalidationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7DCE9C()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_23A7E7B08, v2, v1);
}

uint64_t sub_23A7DCFA4()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DD028, v1, v0);
}

uint64_t sub_23A7DD028()
{

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 200);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to prepare preview collection for invalidation: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23A7DD348(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23A7EEA34();
  v2[4] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DD3E0, v4, v3);
}

uint64_t sub_23A7DD3E0()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_23A7E7B0C;

  return QLRemoteUIHostViewController.preparePreviewCollectionForInvalidation()();
}

uint64_t QLRemoteUIHostViewController.invalidateService()()
{
  v1[18] = v0;
  v1[19] = sub_23A7EEA34();
  v1[20] = sub_23A7EEA24();
  v1[21] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_23A7DD538, v3, v2);
}

uint64_t sub_23A7DD538()
{
  v0[24] = *(v0[18] + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_23A7DD5D8;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DD5D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_23A7DDBBC;
  }

  else
  {
    v4[27] = a1;
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_23A7DD700;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DD700()
{

  v2 = sub_23A7EE9E4();
  *(v0 + 224) = v2;
  *(v0 + 232) = v1;

  return MEMORY[0x2822009F8](sub_23A7DD784, v2, v1);
}

uint64_t sub_23A7DD784()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[3] = sub_23A7DD898;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79AB70;
  v0[13] = &block_descriptor_96_0;
  v0[14] = v2;
  [v1 invalidateServiceWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7DD898()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_23A7DD9A0, v2, v1);
}

uint64_t sub_23A7DD9A0()
{
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DDA30;

  return sub_23A7D0170();
}

uint64_t sub_23A7DDA30()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x2822009F8](sub_23A7DDB50, v3, v2);
}

uint64_t sub_23A7DDB50()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7DDBBC()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DDC40, v1, v0);
}

uint64_t sub_23A7DDC40()
{

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 208);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to invalidate service: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23A7DDF60(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23A7EEA34();
  v2[4] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DDFF8, v4, v3);
}

uint64_t sub_23A7DDFF8()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_23A7DE0A8;

  return QLRemoteUIHostViewController.invalidateService()();
}

uint64_t sub_23A7DE0A8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

double sub_23A7DE200(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_23A7EEA44();
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_23A7EEA34();
  v12 = v4;
  v13 = sub_23A7EEA24();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v12;
  *(v14 + 40) = a1;
  *(v14 + 48) = a2;
  sub_23A7B9D94(0, 0, v10, a4, v14);

  return result;
}

uint64_t sub_23A7DE33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = sub_23A7EEA34();
  *(v6 + 40) = sub_23A7EEA24();
  *(v6 + 48) = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return MEMORY[0x2822009F8](sub_23A7DE3E8, v8, v7);
}

uint64_t sub_23A7DE3E8()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DE484;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DE484(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_23A7DE6C8;
  }

  else
  {
    v4[11] = a1;
    v5 = v4[7];
    v6 = v4[8];
    v7 = sub_23A7DE5AC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DE5AC()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DE630, v1, v0);
}

uint64_t sub_23A7DE630()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 24);

  [v1 hostViewControlerTransitionToState:v3 animated:v2];
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A7DE6C8()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DE74C, v1, v0);
}

uint64_t sub_23A7DE74C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A7DE7D0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = a1;
  sub_23A7EEA44();
  v14 = sub_23A7EEA64();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_23A7EEA34();
  v15 = v13;
  v16 = sub_23A7EEA24();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v15;
  *(v17 + 40) = a3;
  *(v17 + 48) = a4;
  sub_23A7B9D94(0, 0, v12, a6, v17);
}

double sub_23A7DE93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  sub_23A7EEA44();
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_23A79842C(a1, v17);
  sub_23A7EEA34();
  v12 = v4;
  v13 = sub_23A7EEA24();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v12;
  sub_23A7A8AB8(v17, (v14 + 40));
  *(v14 + 72) = a2;
  sub_23A7B9D94(0, 0, v10, a4, v14);

  return result;
}

uint64_t sub_23A7DEA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_23A7EEA34();
  v6[6] = sub_23A7EEA24();
  v6[7] = sub_23A7EEA24();
  v8 = sub_23A7EE9E4();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_23A7DEB44, v8, v7);
}

uint64_t sub_23A7DEB44()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DEBE0;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DEBE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_23A7D3E54;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_23A7DED08;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DED08()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DED8C, v1, v0);
}

uint64_t sub_23A7DED8C()
{
  v1 = v0[12];
  v3 = v0[3];
  v2 = v0[4];

  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  [v1 setPreviewItemDisplayState:sub_23A7EEDF4() onItemAtIndex:v2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_23A7DEE64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v19 - v10;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_23A7EEC44();
  swift_unknownObjectRelease();
  sub_23A7EEA44();
  v13 = sub_23A7EEA64();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_23A79842C(v20, v19);
  sub_23A7EEA34();
  v14 = v12;
  v15 = sub_23A7EEA24();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v14;
  sub_23A7A8AB8(v19, (v16 + 40));
  *(v16 + 72) = a4;
  sub_23A7B9D94(0, 0, v11, a6, v16);

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t QLRemoteUIHostViewController.prepareForActionSheetPresentation()()
{
  v1[18] = v0;
  v1[19] = sub_23A7EEA34();
  v1[20] = sub_23A7EEA24();
  v1[21] = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_23A7DF098, v3, v2);
}

uint64_t sub_23A7DF098()
{
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DF134;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DF134(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_23A7DF568;
  }

  else
  {
    v4[26] = a1;
    v5 = v4[22];
    v6 = v4[23];
    v7 = sub_23A7DF25C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DF25C()
{

  v2 = sub_23A7EE9E4();
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;

  return MEMORY[0x2822009F8](sub_23A7DF2E0, v2, v1);
}

uint64_t sub_23A7DF2E0()
{
  v1 = v0[26];
  v0[2] = v0;
  v0[3] = sub_23A7DF3F4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A79AB70;
  v0[13] = &block_descriptor_109;
  v0[14] = v2;
  [v1 prepareForActionSheetPresentationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A7DF3F4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_23A7DF4FC, v2, v1);
}

uint64_t sub_23A7DF4FC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7DF568()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DF5EC, v1, v0);
}

uint64_t sub_23A7DF5EC()
{

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 200);
  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 200);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to prepare for action sheet presentation: %@", v8, 0xCu);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23A7DF90C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23A7EEA34();
  v2[4] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DF9A4, v4, v3);
}

uint64_t sub_23A7DF9A4()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_23A7DFA54;

  return QLRemoteUIHostViewController.prepareForActionSheetPresentation()();
}

uint64_t sub_23A7DFA54()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 40);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_23A7DFBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_23A7EEA34();
  v4[4] = sub_23A7EEA24();
  v4[5] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23A7DFC78, v6, v5);
}

uint64_t sub_23A7DFC78()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_23A7DFD14;

  return sub_23A7CF95C();
}

uint64_t sub_23A7DFD14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7D5568;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7DFE3C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7DFE3C()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7DFEC0, v1, v0);
}

uint64_t sub_23A7DFEC0()
{
  v1 = *(v0 + 80);

  [v1 actionSheetDidDismiss];
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

double sub_23A7DFFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, char *, uint64_t, void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_23A7EEA44();
  v9 = sub_23A7EEA64();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_23A7EEA34();
  v10 = v3;
  v11 = sub_23A7EEA24();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  a3(0, 0, v8, a2, v12);

  return result;
}

uint64_t sub_23A7E00E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = sub_23A7EEA34();
  v4[5] = sub_23A7EEA24();
  v4[6] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_23A7E0188, v6, v5);
}

uint64_t sub_23A7E0188()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E0224;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E0224(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);
  if (v1)
  {
    v7 = sub_23A7E0498;
  }

  else
  {
    v7 = sub_23A7E0368;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23A7E0368()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E03EC, v1, v0);
}

uint64_t sub_23A7E03EC()
{
  v1 = *(v0 + 80);

  v2 = [v1 respondsToSelector_];
  if (v2)
  {
    [*(v0 + 80) documentMenuActionWillBegin];
  }

  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  *v3 = (v2 & 1) == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A7E0498()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E051C, v1, v0);
}

uint64_t sub_23A7E051C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A7E05B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = a1;
  sub_23A7EEA44();
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  sub_23A7EEA34();
  v13 = v11;
  v14 = sub_23A7EEA24();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  a5(0, 0, v10, a4, v15);
}

double sub_23A7E0730(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  sub_23A7EEA44();
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_23A7EEA34();
  v12 = v4;
  v13 = a1;
  v14 = sub_23A7EEA24();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = v13;
  a4(0, 0, v10, a3, v15);

  return result;
}

uint64_t sub_23A7E0874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = sub_23A7EEA34();
  v5[6] = sub_23A7EEA24();
  v5[7] = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_23A7E0920, v7, v6);
}

uint64_t sub_23A7E0920()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E09BC;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E09BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v5 = *(v3 + 72);
  v6 = *(v3 + 64);
  if (v1)
  {
    v7 = sub_23A7E0C34;
  }

  else
  {
    v7 = sub_23A7E0B00;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23A7E0B00()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E0B84, v1, v0);
}

uint64_t sub_23A7E0B84()
{
  v1 = *(v0 + 88);

  v2 = [v1 respondsToSelector_];
  if (v2)
  {
    [*(v0 + 88) hostViewControllerBackgroundColorChanged_];
  }

  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  *v3 = (v2 & 1) == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A7E0C34()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E0CB8, v1, v0);
}

uint64_t sub_23A7E0CB8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A7E0D50(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, char *, uint64_t, void *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = a3;
  v14 = a1;
  sub_23A7EEA44();
  v15 = sub_23A7EEA64();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  sub_23A7EEA34();
  v16 = v13;
  v17 = v14;
  v18 = sub_23A7EEA24();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v19[5] = v16;
  a6(0, 0, v12, a5, v19);
}

double QLRemoteUIHostViewController.saveIntoPhotoLibraryMedia(with:previewItemType:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  sub_23A7EEA44();
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A7EEA34();

  v13 = a1;
  sub_23A7B7C24(a3, a4);
  v14 = sub_23A7EEA24();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;

  sub_23A7AF7B0(0, 0, v10, &unk_23A7FECA0, v15);

  return result;
}

uint64_t sub_23A7E104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v8[12] = sub_23A7EEA34();
  v8[13] = sub_23A7EEA24();
  v10 = sub_23A7EE9E4();
  v8[14] = v10;
  v8[15] = v9;

  return MEMORY[0x2822009F8](sub_23A7E10F0, v10, v9);
}

uint64_t sub_23A7E10F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v0[17] = sub_23A7EEA24();
    v3 = sub_23A7EE9E4();
    v0[18] = v3;
    v0[19] = v2;

    return MEMORY[0x2822009F8](sub_23A7E11DC, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23A7E11DC()
{
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E1278;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E1278(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_23A7E1768;
  }

  else
  {
    v7 = sub_23A7E13BC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23A7E13BC()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_23A7E1420, v1, v2);
}

uint64_t sub_23A7E1420(uint64_t a1)
{
  v2 = v1[21];
  v4 = v1[8];
  v3 = v1[9];
  v5 = sub_23A7EEA24();
  v1[23] = v5;
  v6 = swift_task_alloc();
  v1[24] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v7 = swift_task_alloc();
  v1[25] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA0D8, &qword_23A7FEF38);
  *v7 = v1;
  v7[1] = sub_23A7E154C;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v1 + 5, v5, v9, 0xD000000000000042, 0x800000023A80B1D0, sub_23A7E77D0, v6, v8);
}

uint64_t sub_23A7E154C()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_23A7E16AC, v3, v2);
}

uint64_t sub_23A7E16AC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 48);
  v3 = *(v0 + 128);
  if (v1)
  {
    (*(v0 + 80))(*(v0 + 40), *(v0 + 48));
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A7E1768()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x2822009F8](sub_23A7E17CC, v1, v2);
}

uint64_t sub_23A7E17CC()
{
  v1 = v0[10];

  v2 = v0[22];
  v3 = v0[16];
  if (v1)
  {
    v4 = v0[10];
    v5 = v2;
    v4(0, v2);
  }

  else
  {
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_23A7E1884(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA0E0, &qword_23A7FEF40);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &aBlock - v10;
  if ([a2 respondsToSelector_])
  {
    (*(v9 + 16))(v11, a1, v8);
    v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v13 = swift_allocObject();
    (*(v9 + 32))(v13 + v12, v11, v8);
    v20 = sub_23A7E77DC;
    v21 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_23A79FD28;
    v19 = &block_descriptor_416;
    v14 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [a2 saveIntoPhotoLibraryMediaWithURLWrapper:a3 previewItemType:a4 completionHandler:v14];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(aBlock) = 0;
    v17 = 0;
    return sub_23A7EEA04();
  }
}

uint64_t sub_23A7E1A94(char a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA0E0, &qword_23A7FEF40);
  return sub_23A7EEA04();
}

double sub_23A7E1BF8(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_23A7EEA44();
  v11 = sub_23A7EEA64();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_23A7EEA34();
  v12 = v4;
  v13 = sub_23A7EEA24();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v12;
  *(v14 + 40) = a1;
  a4(0, 0, v10, a3, v14);

  return result;
}

uint64_t sub_23A7E1D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 16) = a4;
  *(v5 + 24) = sub_23A7EEA34();
  *(v5 + 32) = sub_23A7EEA24();
  *(v5 + 40) = sub_23A7EEA24();
  v7 = sub_23A7EE9E4();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_23A7E1DE4, v7, v6);
}

uint64_t sub_23A7E1DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E1E80;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E1E80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7D5568;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_23A7E1FA8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7E1FA8()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E202C, v1, v0);
}

uint64_t sub_23A7E202C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  [v1 setIsContentManaged_];
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

void sub_23A7E20E8(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, char *, uint64_t, uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = a1;
  sub_23A7EEA44();
  v14 = sub_23A7EEA64();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  sub_23A7EEA34();
  v15 = v13;
  v16 = sub_23A7EEA24();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = v15;
  *(v17 + 40) = a3;
  a6(0, 0, v12, a5, v17);
}

uint64_t QLRemoteUIHostViewController.saveCurrentPreviewEditsSynchronously(_:)(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 248) = a1;
  *(v2 + 168) = sub_23A7EEA34();
  *(v2 + 176) = sub_23A7EEA24();
  *(v2 + 184) = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();
  *(v2 + 192) = v4;
  *(v2 + 200) = v3;

  return MEMORY[0x2822009F8](sub_23A7E22E4, v4, v3);
}

uint64_t sub_23A7E22E4()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E2380;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E2380(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_23A7E27D0;
  }

  else
  {
    v4[28] = a1;
    v5 = v4[24];
    v6 = v4[25];
    v7 = sub_23A7E24A8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7E24A8()
{

  v2 = sub_23A7EE9E4();
  *(v0 + 232) = v2;
  *(v0 + 240) = v1;

  return MEMORY[0x2822009F8](sub_23A7E252C, v2, v1);
}

uint64_t sub_23A7E252C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 248);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_23A7E2658;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FA0, &qword_23A7FECC0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23A7A04E0;
  *(v0 + 104) = &block_descriptor_136;
  *(v0 + 112) = v3;
  [v1 saveCurrentPreviewEditsSynchronously:v2 withCompletionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23A7E2658()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_23A7E2760, v2, v1);
}

uint64_t sub_23A7E2760()
{
  swift_unknownObjectRelease();

  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_23A7E27D0()
{

  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E2854, v1, v0);
}

void sub_23A7E2854()
{
  v20 = v0;

  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 248);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    if (v7)
    {
      v11 = 0x6F7268636E797361;
    }

    else
    {
      v11 = 0x6E6F7268636E7973;
    }

    if (v7)
    {
      v12 = 0xEE00796C73756F6ELL;
    }

    else
    {
      v12 = 0xED0000796C73756FLL;
    }

    v13 = sub_23A797A74(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to save current preview edits %s: %@", v8, 0x16u);
    sub_23A7A8E74(v9, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v8, -1, -1);
  }

  v16 = *(v0 + 216);
  v17 = sub_23A7EDED4();

  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = *(v0 + 8);

    v18(v17, 0);
  }
}

uint64_t sub_23A7E2C40(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 56) = a1;
  sub_23A7EEA34();
  *(v3 + 32) = sub_23A7EEA24();
  v5 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E2CDC, v5, v4);
}

uint64_t sub_23A7E2CDC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  *(v0 + 40) = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_23A7E2D94;
  v5 = *(v0 + 56);

  return QLRemoteUIHostViewController.saveCurrentPreviewEditsSynchronously(_:)(v5);
}

uint64_t sub_23A7E2D94(uint64_t a1, void *a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 24);
  v9 = *v2;

  (v5)[2](v5, a1, a2);
  _Block_release(v5);

  v7 = *(v9 + 8);

  return v7();
}

void sub_23A7E2EE8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  if (*(v1 + 17) == 1)
  {
    type metadata accessor for QLHostRemoteViewModel(0);

    sub_23A7EE6E4();
    v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA0F0, &unk_23A7FF000));

    v3 = sub_23A7EE564();
    sub_23A7E3718(v3);
  }

  else
  {
    sub_23A7E3088(v1);
    swift_getKeyPath();
    sub_23A7EE014();

    v4 = *(v1 + 32);
    if (v4)
    {
      [v4 remoteViewControllerWasInvalidated];
    }
  }
}

void sub_23A7E3088(uint64_t a1)
{
  v2 = [objc_allocWithZone(QLErrorItemViewController) init];
  swift_getKeyPath();
  v10[0] = a1;
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [v3 currentItem];
    v5 = [v4 createPreviewContext];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v2;
  v10[4] = sub_23A7E7A90;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23A7E3B78;
  v10[3] = &block_descriptor_504;
  v8 = _Block_copy(v10);
  v9 = v2;

  [v9 loadPreviewControllerWithContents:v4 context:v5 completionHandler:v8];
  _Block_release(v8);

  swift_unknownObjectRelease();
}

double sub_23A7E3284(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_23A7EEA64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_23A7EEA34();
  v6 = sub_23A7EEA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = Strong;
  sub_23A7AF7B0(0, 0, v3, &unk_23A7FEFF8, v7);

  return result;
}

uint64_t sub_23A7E33C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_23A7EEA34();
  *(v4 + 24) = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7E345C, v6, v5);
}

uint64_t sub_23A7E345C()
{
  v1 = *(v0 + 16);

  if (v1)
  {
    v2 = *(v0 + 16);
    sub_23A7E3540();
    *(swift_task_alloc() + 16) = v2;
    *(swift_task_alloc() + 16) = v2;
    sub_23A7EDFF4();
  }

  v3 = *(v0 + 8);

  return v3();
}

id sub_23A7E3540()
{
  v1 = [v0 childViewControllers];
  sub_23A7A3798(0, &qword_27DFA8FE0, 0x277D75D28);
  v2 = sub_23A7EE9A4();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

LABEL_14:
  v3 = sub_23A7EEC84();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EE8C140](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v5 willMoveToParentViewController_];
    result = [v6 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_23A7E36BC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_23A7E3718(a3);
  }
}

void sub_23A7E3718(void *a1)
{
  v34 = [a1 view];
  if (!v34)
  {
    goto LABEL_15;
  }

  v3 = [objc_opt_self() clearColor];
  [v34 setBackgroundColor_];

  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addChildViewController_];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FA0, &qword_23A7FD328);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23A7FD2F0;
  v7 = [v34 topAnchor];
  v8 = [v1 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = [v34 bottomAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 bottomAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  v17 = [v34 leadingAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  v22 = [v34 trailingAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    sub_23A7EECD4();

    v29 = a1;
    v30 = [v29 description];
    v31 = sub_23A7EE844();
    v33 = v32;

    MEMORY[0x23EE8BD70](v31, v33);

    sub_23A7EED64();
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v24 trailingAnchor];

  v27 = [v22 constraintEqualToAnchor_];
  *(v6 + 56) = v27;
  sub_23A7A3798(0, &qword_27DFA95B0, 0x277CCAAD0);
  v28 = sub_23A7EE994();

  [v25 activateConstraints_];

  [a1 didMoveToParentViewController_];
}

void sub_23A7E3B80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_23A7E3BF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23A7A3828;

  return v6();
}

uint64_t sub_23A7E3CD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23A7A3240;

  return v7();
}

uint64_t sub_23A7E3DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_23A7A8D38(a3, v23 - v10, &qword_27DFA8FD0, &qword_23A7FDBC0);
  v12 = sub_23A7EEA64();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23A7A8E74(v11, &qword_27DFA8FD0, &qword_23A7FDBC0);
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

  sub_23A7EEA54();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23A7EE9E4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23A7EE8C4() + 32;
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

    sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);

    return v21;
  }

LABEL_8:
  sub_23A7A8E74(a3, &qword_27DFA8FD0, &qword_23A7FDBC0);
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

uint64_t sub_23A7E40BC()
{
  v0[14] = sub_23A7EEA34();
  v0[15] = sub_23A7EEA24();
  v2 = sub_23A7EE9E4();
  v0[16] = v2;
  v0[17] = v1;

  return MEMORY[0x2822009F8](sub_23A7E4154, v2, v1);
}

uint64_t sub_23A7E4154()
{
  type metadata accessor for QLRemoteUIHostViewController(0);
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel;
  v0[18] = v1;
  v0[19] = v2;
  v0[20] = *&v1[v2];

  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_23A7E421C;

  return sub_23A7CE42C();
}

uint64_t sub_23A7E421C()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = v2[16];
    v4 = v2[17];
    v5 = sub_23A7E57E0;
  }

  else
  {

    v2[23] = sub_23A7EEA24();
    v6 = sub_23A7EE9E4();
    v4 = v7;
    v2[24] = v6;
    v2[25] = v7;
    v5 = sub_23A7E437C;
    v3 = v6;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23A7E437C()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E4410;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E4410(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 216) = a1;
  *(v4 + 224) = v1;

  v5 = *(v3 + 200);
  v6 = *(v3 + 192);
  if (v1)
  {
    v7 = sub_23A7E4858;
  }

  else
  {
    v7 = sub_23A7E4554;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23A7E4554()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_23A7E45B8, v1, v2);
}

uint64_t sub_23A7E45B8()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v4 = v1;
    [*(v0 + 216) setNotificationCenter_];

    swift_unknownObjectRelease();
    *(v0 + 232) = sub_23A7EEA24();
    v5 = sub_23A7EE9E4();
    v3 = v6;
    *(v0 + 240) = v5;
    *(v0 + 248) = v6;
    v1 = sub_23A7E469C;
    v2 = v5;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23A7E469C()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E4730;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E4730(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = v4[30];
    v6 = v4[31];
    v7 = sub_23A7E4DC0;
  }

  else
  {
    v4[34] = a1;
    v5 = v4[30];
    v6 = v4[31];
    v7 = sub_23A7E4A68;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7E4858()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_23A7E48BC, v1, v2);
}

uint64_t sub_23A7E48BC()
{

  v1 = v0[28];
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to create remote preview collection: %@", v6, 0xCu);
    sub_23A7A8E74(v7, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v7, -1, -1);
    MEMORY[0x23EE8D760](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];
  v11 = v0[18];

  return v10(v11);
}

uint64_t sub_23A7E4A68()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_23A7E4ACC, v1, v2);
}

uint64_t sub_23A7E4ACC()
{
  v1 = v0[34];
  v0[6] = sub_23A7D2A4C;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_23A7D2AC4;
  v0[5] = &block_descriptor_482;
  v2 = _Block_copy(v0 + 2);
  [v1 getNetworkObserverWithCompletionBlock_];
  _Block_release(v2);
  swift_unknownObjectRelease();
  v0[35] = sub_23A7EEA24();
  v4 = sub_23A7EE9E4();
  v0[36] = v4;
  v0[37] = v3;

  return MEMORY[0x2822009F8](sub_23A7E4BE8, v4, v3);
}

uint64_t sub_23A7E4BE8()
{
  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E4C7C;

  return sub_23A7CFCF8();
}

uint64_t sub_23A7E4C7C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 312) = a1;
  *(v4 + 320) = v1;

  v5 = *(v3 + 296);
  v6 = *(v3 + 288);
  if (v1)
  {
    v7 = sub_23A7E5220;
  }

  else
  {
    v7 = sub_23A7E4FD0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23A7E4DC0()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_23A7E4E24, v1, v2);
}

uint64_t sub_23A7E4E24()
{

  v1 = v0[33];
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to create remote preview collection: %@", v6, 0xCu);
    sub_23A7A8E74(v7, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v7, -1, -1);
    MEMORY[0x23EE8D760](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];
  v11 = v0[18];

  return v10(v11);
}

uint64_t sub_23A7E4FD0()
{

  v0[41] = sub_23A7EEA24();
  v2 = sub_23A7EE9E4();
  v0[42] = v2;
  v0[43] = v1;

  return MEMORY[0x2822009F8](sub_23A7E5064, v2, v1);
}

uint64_t sub_23A7E5064()
{
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E50F8;

  return sub_23A7CF95C();
}

uint64_t sub_23A7E50F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = v4[42];
    v6 = v4[43];
    v7 = sub_23A7E55C4;
  }

  else
  {
    v4[46] = a1;
    v5 = v4[42];
    v6 = v4[43];
    v7 = sub_23A7E5430;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_23A7E5220()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_23A7E5284, v1, v2);
}

uint64_t sub_23A7E5284()
{

  v1 = v0[40];
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to create remote preview collection: %@", v6, 0xCu);
    sub_23A7A8E74(v7, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v7, -1, -1);
    MEMORY[0x23EE8D760](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];
  v11 = v0[18];

  return v10(v11);
}

uint64_t sub_23A7E5430()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_23A7E5494, v1, v2);
}

uint64_t sub_23A7E5494()
{
  v1 = v0[46];
  v2 = v0[39];

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v0[12] = sub_23A7E78C8;
  v0[13] = v3;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_23A7D2B24;
  v0[11] = &block_descriptor_490;
  v4 = _Block_copy(v0 + 8);
  swift_unknownObjectRetain();

  [v1 getPreviewCollectionUUIDWithCompletionHandlerWithCompletionHandler_];
  _Block_release(v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = v0[1];
  v6 = v0[18];

  return v5(v6);
}

uint64_t sub_23A7E55C4()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_23A7E5628, v1, v2);
}

uint64_t sub_23A7E5628()
{

  swift_unknownObjectRelease();
  v1 = v0[45];
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to create remote preview collection: %@", v6, 0xCu);
    sub_23A7A8E74(v7, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v7, -1, -1);
    MEMORY[0x23EE8D760](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];
  v11 = v0[18];

  return v10(v11);
}

uint64_t sub_23A7E57E0()
{

  v1 = v0[22];
  if (qword_27DFA8D70 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA9FD0);
  v3 = v1;
  v4 = sub_23A7EE394();
  v5 = sub_23A7EEB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_23A714000, v4, v5, "Failed to create remote preview collection: %@", v6, 0xCu);
    sub_23A7A8E74(v7, &unk_27DFAA070, &qword_23A7FCCF8);
    MEMORY[0x23EE8D760](v7, -1, -1);
    MEMORY[0x23EE8D760](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];
  v11 = v0[18];

  return v10(v11);
}

uint64_t sub_23A7E5998(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7D30B8(a1, v4, v5, v6, v7);
}

uint64_t sub_23A7E5A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7D3ABC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E5B24(uint64_t a1)
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
  v11[1] = sub_23A7A3828;

  return sub_23A7D41B4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_12Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23A7E5C8C(uint64_t a1)
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
  v11[1] = sub_23A7A3828;

  return sub_23A7D4928(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23A7E5D68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7D4D88(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E5E30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7D51EC(a1, v4, v5, v6, v7);
}

uint64_t sub_23A7E5EF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A7A3828;

  return sub_23A7D5654(a1, v4, v5, v6);
}

uint64_t sub_23A7E5FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A7A3828;

  return sub_23A7D8094(a1, v4, v5, v6);
}

uint64_t sub_23A7E6074(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7D9058(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7E6134(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7D954C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E61FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7D9B74(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7E62BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7DA174(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7E637C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[9];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7DA7B4(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_23A7E6444(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7DB830(a1, v4, v5, v6, v7);
}

uint64_t sub_23A7E6508(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7DBCFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E65D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7DC338(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E6698(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3828;

  return sub_23A7DE33C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E6760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[9];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7DEA98(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_23A7E6828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A7A3828;

  return sub_23A7DFBD0(a1, v4, v5, v6);
}

uint64_t sub_23A7E68DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A7A3828;

  return sub_23A7E00E0(a1, v4, v5, v6);
}

uint64_t sub_23A7E6990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7E0874(a1, v4, v5, v7, v6);
}

uint64_t sub_23A7E6A50(uint64_t a1)
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
  v11[1] = sub_23A7A3828;

  return sub_23A7E104C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23A7E6B2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7E1D38(a1, v4, v5, v6, v7);
}

void sub_23A7E6BF8(uint64_t a1)
{
  sub_23A7E6D88(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23A7E6D88(uint64_t a1)
{
  if (!qword_27DFAA0C0)
  {
    sub_23A7EDFE4();
    v1 = sub_23A7EEC34();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFAA0C0);
    }
  }
}

uint64_t sub_23A7E6DE0()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A7A3828;

  return sub_23A7E2C40(v2, v4, v3);
}

uint64_t sub_23A7E6E94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A7A3828;

  return sub_23A7B1D24(a1, v4);
}

uint64_t sub_23A7E6F4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7DF90C(v2, v3);
}

uint64_t sub_23A7E6FF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23A7A3240;

  return sub_23A7DE33C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23A7E70C0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7DDF60(v2, v3);
}

uint64_t sub_23A7E716C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7DD348(v2, v3);
}

uint64_t sub_23A7E7218()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23A7A3828;

  return sub_23A7DB50C(v2, v3, v4, v5, v7, v6);
}

uint64_t objectdestroy_70Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_66Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_54Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23A7E73D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7D8D60(v2, v3);
}

uint64_t sub_23A7E7480()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A7D7DD0(v2, v3);
}

uint64_t sub_23A7E752C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A7A3828;

  return sub_23A7D71CC(v2, v3, v4);
}

uint64_t objectdestroy_336Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A7E7628()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A7A3828;

  return sub_23A7D6354(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23A7E7724()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A7A3828;

  return sub_23A7D2C98(v2);
}

uint64_t sub_23A7E77DC(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA0E0, &qword_23A7FEF40);

  return sub_23A7E1A94(a1, a2);
}

double block_copy_helper_414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_23A7E7880(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_23A7E78C8(id result)
{
  if (result)
  {
    return [*(v1 + 16) configureAsAccessoryViewContainerForPreviewCollectionWithPreviewCollectionUUID_];
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23A7E7938(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23A7A3240;

  return sub_23A7E33C4(a1, v4, v5, v6);
}

double (*sub_23A7E79EC())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_23A7E78E4;
}

uint64_t objectdestroy_191Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_23A7E7B30(void *a1)
{
  v2 = sub_23A7EE404();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = a1;
  sub_23A7EE3F4();
  v4[3] = sub_23A7EE414();
  v4[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_23A7EE424();
  sub_23A7EEC04();
}

void sub_23A7E7BE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9448, &qword_23A7FD320);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = a1;
  sub_23A7EE3D4();
  v6 = sub_23A7EE3E4();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  sub_23A7EEC14();
}

uint64_t static QLAppExtensionSceneBuilder.buildBlock<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  result = (*(v7 + 32))(v11 + v10, v9, a2);
  *a4 = sub_23A7E7E18;
  a4[1] = v11;
  return result;
}

uint64_t static QLAppExtensionSceneBuilder.buildBlock<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v24 = a5;
  v25 = a6;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18);
  (*(v11 + 16))(v14, a2, a4);
  v19 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v20 = (v17 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a3;
  *(v21 + 3) = a4;
  v22 = v25;
  *(v21 + 4) = v24;
  *(v21 + 5) = v22;
  (*(v16 + 32))(v21 + v19, v18, a3);
  result = (*(v11 + 32))(v21 + v20, v14, a4);
  *a7 = sub_23A7E8054;
  a7[1] = v21;
  return result;
}

uint64_t sub_23A7E8054@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = *(*(v1[2] - 8) + 80);
  return sub_23A7E80F0(v1 + ((v3 + 48) & ~v3), v1 + ((((v3 + 48) & ~v3) + *(*(v1[2] - 8) + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80)), v1[2], v2, *(v1[4] + 8), *(v1[5] + 8), a1);
}

uint64_t sub_23A7E80F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v22 = a7;
  v23 = a6;
  v20 = a5;
  v21 = a2;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA218, &qword_23A7FF1D0);
  sub_23A7EE0A4();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23A7FD280;
  (*(v15 + 16))(v17, a1, a3);
  sub_23A7EE094();
  (*(v10 + 16))(v13, v21, a4);
  result = sub_23A7EE094();
  *v22 = v18;
  return result;
}

uint64_t QLAppExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v19[1] = a3;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v10 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  v13 = *(v7 + 16);
  v13(v19 - v11, v4, a1);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  (*(v7 + 32))(v15 + v14, v12, a1);
  v13(v10, v4, a1);
  sub_23A7B9830(v10, a1, &v20, a2, v16);
  v19[2] = v20;
  swift_getAssociatedTypeWitness();
  type metadata accessor for QLGlobalAppExtensionConfiguration(0, a1, a2, v17);
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  return sub_23A7EE074();
}

uint64_t objectdestroyTm_2()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A7E861C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_23A7E86BC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_23A7E86FC(a1);
  return v2;
}

uint64_t *sub_23A7E86FC(uint64_t a1)
{
  v3 = *v1;
  sub_23A7EE3A4();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 104), a1);
  return v1;
}

uint64_t sub_23A7E87C8(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v78 - v6;
  sub_23A7E861C(v78 - v6);
  v8 = *(v3 + 88);
  v9 = (*(v8 + 16))(v4, v8);
  (*(v5 + 8))(v7, v4);
  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  v10 = objc_opt_self();
  v11 = [v10 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v12 = [v10 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 resume];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = v8;
  v14[4] = v13;
  v83 = sub_23A7E955C;
  v84 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = sub_23A7A0EA0;
  v82 = &block_descriptor_11;
  v15 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = v8;
  v17[4] = v16;
  v83 = sub_23A7E9678;
  v84 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = sub_23A7A0EA0;
  v82 = &block_descriptor_19;
  v18 = _Block_copy(&aBlock);

  [a1 setInterruptionHandler_];
  _Block_release(v18);
  v19 = [a1 exportedInterface];
  if (v19)
  {
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_23A7FD280;
    v22 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
    *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
    *(v21 + 32) = v22;
    v23 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
    *(v21 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9790, &unk_23A7FF020);
    *(v21 + 64) = v23;
    v24 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v25 = sub_23A7EE994();

    v26 = [v24 initWithArray_];

    aBlock = 0;
    result = sub_23A7EEAE4();
    if (!aBlock)
    {
      __break(1u);
      goto LABEL_24;
    }

    v28 = sub_23A7EEAD4();

    [v20 setClasses:v28 forSelector:sel_openWithSessionUUID_items_selectedIndex_bundleID_configuration_completionHandler_ argumentIndex:1 ofReply:0];
  }

  v29 = [a1 exportedInterface];
  if (!v29)
  {
    goto LABEL_7;
  }

  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_23A7FD280;
  v32 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
  *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
  *(v31 + 32) = v32;
  v33 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
  *(v31 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9790, &unk_23A7FF020);
  *(v31 + 64) = v33;
  v34 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v35 = sub_23A7EE994();

  v36 = [v34 initWithArray_];

  aBlock = 0;
  result = sub_23A7EEAE4();
  if (!aBlock)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v37 = sub_23A7EEAD4();

  [v30 setClasses:v37 forSelector:sel_updateContentsWithSessionUUID_items_selectedIndex_completionHandler_ argumentIndex:1 ofReply:0];

LABEL_7:
  v38 = [a1 exportedInterface];
  if (!v38)
  {
    goto LABEL_10;
  }

  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_23A7FD270;
  v41 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
  *(v40 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
  *(v40 + 32) = v41;
  v42 = type metadata accessor for PreviewApplication.RestorationItem(0);
  *(v40 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9798, &unk_23A7FD830);
  *(v40 + 64) = v42;
  v43 = sub_23A7A3798(0, &qword_27DFA97A0, 0x277CBEBC0);
  *(v40 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97A8, &qword_23A7FF030);
  *(v40 + 96) = v43;
  v44 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v45 = sub_23A7EE994();

  v46 = [v44 initWithArray_];

  aBlock = 0;
  result = sub_23A7EEAE4();
  if (!aBlock)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v47 = sub_23A7EEAD4();

  [v39 setClasses:v47 forSelector:sel_restoreWithItems_targetAppBundleIdentifier_sessionUUID_completionHandler_ argumentIndex:0 ofReply:0];

LABEL_10:
  v48 = [a1 exportedInterface];
  if (!v48)
  {
    goto LABEL_13;
  }

  v49 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_23A7FD270;
  v51 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
  *(v50 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
  *(v50 + 32) = v51;
  v52 = type metadata accessor for PreviewApplication.RestorationItem(0);
  *(v50 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9798, &unk_23A7FD830);
  *(v50 + 64) = v52;
  v53 = sub_23A7A3798(0, &qword_27DFA97A0, 0x277CBEBC0);
  *(v50 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97A8, &qword_23A7FF030);
  *(v50 + 96) = v53;
  v54 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v55 = sub_23A7EE994();

  v56 = [v54 initWithArray_];

  aBlock = 0;
  result = sub_23A7EEAE4();
  if (!aBlock)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v57 = sub_23A7EEAD4();

  [v49 setClasses:v57 forSelector:sel_restoreSandboxAccessWithItems_targetAppBundleIdentifier_sessionUUID_completionHandler_ argumentIndex:0 ofReply:0];

LABEL_13:
  v58 = [a1 remoteObjectInterface];
  if (!v58)
  {
    goto LABEL_16;
  }

  v59 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_23A7FD280;
  v61 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
  *(v60 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
  *(v60 + 32) = v61;
  v62 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
  *(v60 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9790, &unk_23A7FF020);
  *(v60 + 64) = v62;
  v63 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v64 = sub_23A7EE994();

  v65 = [v63 initWithArray_];

  aBlock = 0;
  result = sub_23A7EEAE4();
  if (!aBlock)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v66 = sub_23A7EEAD4();

  [v59 setClasses:v66 forSelector:sel_didRestoreWithItems_sessionUUID_ argumentIndex:0 ofReply:0];

LABEL_16:
  v67 = [a1 remoteObjectInterface];
  if (v67)
  {
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_23A7FD280;
    v70 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
    *(v69 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
    *(v69 + 32) = v70;
    v71 = sub_23A7A3798(0, &qword_27DFA97B0, 0x277CBEA90);
    *(v69 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97B8, &unk_23A7FD840);
    *(v69 + 64) = v71;
    v72 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v73 = sub_23A7EE994();

    v74 = [v72 initWithArray_];

    aBlock = 0;
    result = sub_23A7EEAE4();
    if (aBlock)
    {

      v75 = sub_23A7EEAD4();

      [v68 setClasses:v75 forSelector:sel_didRestoreWithSandboxWrapperData_error_sessionUUID_ argumentIndex:0 ofReply:0];

      goto LABEL_19;
    }

LABEL_28:
    __break(1u);
    return result;
  }

LABEL_19:
  v76 = [a1 remoteObjectProxy];
  sub_23A7EEC44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA0F8, &qword_23A7FF038);
  if (swift_dynamicCast())
  {
    v77 = v78[1];
  }

  else
  {
    v77 = 0;
  }

  swift_beginAccess();
  (*(v8 + 32))(v77, v4, v8);
  swift_endAccess();
  return 1;
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_23A7E959C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_23A7EE394();
    v6 = sub_23A7EEB34();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_23A714000, v5, v6, a4, v7, 2u);
      MEMORY[0x23EE8D760](v7, -1, -1);
    }
  }
}

uint64_t *QuickLookPreviewConfiguration.deinit()
{
  v1 = *v0;
  v2 = qword_27DFAA100;
  v3 = sub_23A7EE3B4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t QuickLookPreviewConfiguration.__deallocating_deinit()
{
  QuickLookPreviewConfiguration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t QuickLookPreviewAppExtension.configuration.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QuickLookPreviewConfiguration(0, a1, v6, v7);
  (*(v3 + 16))(v5, v1, a1);
  v8 = swift_allocObject();
  sub_23A7E86FC(v5);
  return v8;
}

uint64_t sub_23A7E9918(uint64_t a1)
{
  result = sub_23A7EE3B4();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_23A7E9A8C()
{
  result = qword_27DFAA188;
  if (!qword_27DFAA188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DFAA190, &qword_23A7FF110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAA188);
  }

  return result;
}

uint64_t sub_23A7E9AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23A7E9B70(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for QLHostDebugView(uint64_t a1)
{
  result = qword_27DFAA228;
  if (!qword_27DFAA228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A7E9C28(uint64_t a1)
{
  sub_23A7E9C94(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A7E9C94(uint64_t a1)
{
  if (!qword_27DFAA238)
  {
    type metadata accessor for QLHostRemoteViewModel(255);
    v1 = sub_23A7EE764();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFAA238);
    }
  }
}

uint64_t sub_23A7E9D08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7ED328(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel, &unk_23A7FD038);
  sub_23A7EE014();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  *a2 = v4;
  a2[1] = v5;
  return sub_23A7A3D7C(v4, v5);
}

double sub_23A7E9DB4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23A7ED328(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel, &unk_23A7FD038);
  sub_23A7EE004();

  return result;
}

uint64_t sub_23A7E9E84()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23A7E9F10;

  return sub_23A7A4A7C();
}

uint64_t sub_23A7E9F10(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_23A7EA044, 0, 0);
  }
}

uint64_t sub_23A7EA044()
{
  v1 = v0[4];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2B8, &qword_23A7FF338);
  *v4 = v0;
  v4[1] = sub_23A7EA16C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000023A80C4E0, sub_23A7ED63C, v3, v5);
}

uint64_t sub_23A7EA16C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_23A7EA2F4;
  }

  else
  {

    v2 = sub_23A7EA288;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A7EA288()
{
  v1 = v0[4];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_23A7EA2F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A7EA368()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23A7EA3F4;

  return sub_23A7A5044();
}

uint64_t sub_23A7EA3F4(uint64_t a1)
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

    return MEMORY[0x2822009F8](sub_23A7EA528, 0, 0);
  }
}

uint64_t sub_23A7EA528()
{
  v1 = v0[4];
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2D0, &qword_23A7FF370);
  *v4 = v0;
  v4[1] = sub_23A7EA650;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000023A80C4E0, sub_23A7ED984, v3, v5);
}

uint64_t sub_23A7EA650()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_23A7EDAEC;
  }

  else
  {

    v2 = sub_23A7EDAE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23A7EA76C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_23A7EA7D4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2C0, &qword_23A7FF340);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  (*(v7 + 16))(&v17 - v8, a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_23A7ED644;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7EA76C;
  aBlock[3] = &block_descriptor_12;
  v12 = _Block_copy(aBlock);

  v13 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_23A7EEC44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2B8, &qword_23A7FF338);
  if (swift_dynamicCast() && (v14 = v18) != 0)
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      v17 = v14;
      sub_23A7EEA04();
    }
  }

  else
  {
    swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      sub_23A7ED670();
      v15 = swift_allocError();
      *v16 = 1;
      v17 = v15;
      sub_23A7EE9F4();
    }
  }
}

void sub_23A7EAAB8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2D8, &qword_23A7FF378);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - v8;
  (*(v7 + 16))(v17 - v8, a1, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_23A7EDA4C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7EA76C;
  aBlock[3] = &block_descriptor_63;
  v12 = _Block_copy(aBlock);

  v13 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_23A7EEC44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2D0, &qword_23A7FF370);
  if (swift_dynamicCast())
  {
    v14 = v17[1];
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      v17[0] = v14;
      sub_23A7EEA04();
    }
  }

  else
  {
    swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      sub_23A7ED670();
      v15 = swift_allocError();
      *v16 = 1;
      v17[0] = v15;
      sub_23A7EE9F4();
    }
  }
}

void sub_23A7EAD98(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    v9 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_23A7EE9F4();
  }
}

double sub_23A7EAE3C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7ED328(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  *a2 = *(v3 + 40);

  return result;
}

uint64_t sub_23A7EAF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA248, &qword_23A7FF250);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  *v10 = sub_23A7EE524();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA250, &qword_23A7FF258);
  sub_23A7EB08C(a1, &v10[*(v11 + 44)]);
  v12 = sub_23A7EE624();
  v13 = &v10[*(v5 + 44)];
  *v13 = v12;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 1;
  sub_23A7A8D38(v10, v8, &qword_27DFAA248, &qword_23A7FF250);
  *a2 = 0;
  *(a2 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA258, &qword_23A7FF260);
  sub_23A7A8D38(v8, a2 + *(v14 + 48), &qword_27DFAA248, &qword_23A7FF250);
  sub_23A7A8E74(v10, &qword_27DFAA248, &qword_23A7FF250);
  return sub_23A7A8E74(v8, &qword_27DFAA248, &qword_23A7FF250);
}

uint64_t sub_23A7EB08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for QLHostDebugView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA260, &qword_23A7FF268);
  v98 = *(v84 - 8);
  v7 = MEMORY[0x28223BE20](v84);
  v82 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v77 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v77 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA268, &qword_23A7FF270);
  v13 = MEMORY[0x28223BE20](v97);
  v87 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v86 = &v77 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v85 = &v77 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v80 = &v77 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v83 = &v77 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v78 = &v77 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v81 = &v77 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v77 - v28;
  MEMORY[0x28223BE20](v27);
  v96 = &v77 - v30;
  sub_23A7ED13C(a1, v6);
  v31 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v95 = v5;
  v32 = swift_allocObject();
  sub_23A7AC5F4(v6, v32 + v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA270, &qword_23A7FF278);
  v93 = sub_23A7ED1B8();
  v94 = v33;
  sub_23A7EE704();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  sub_23A7EE724();
  v34 = v99;
  swift_getKeyPath();
  v99 = v34;
  v91 = sub_23A7ED328(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v35 = *(v34 + 40);

  swift_getKeyPath();
  v99 = v35;
  v90 = sub_23A7ED328(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel, &unk_23A7FD038);
  sub_23A7EE014();

  v37 = *(v35 + 16);
  v36 = *(v35 + 24);
  sub_23A7A3D7C(v37, v36);

  if (v37)
  {
    sub_23A7A3DBC(v37, v36);
  }

  v38 = v37 != 0;
  KeyPath = swift_getKeyPath();
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  v41 = *(v98 + 32);
  v42 = v12;
  v43 = v84;
  v98 += 32;
  v89 = v41;
  v41(v29, v42, v84);
  v44 = v96;
  v45 = &v29[*(v97 + 36)];
  *v45 = KeyPath;
  v45[1] = sub_23A7ED370;
  v45[2] = v40;
  sub_23A7ED388(v29, v44);
  sub_23A7ED13C(a1, v6);
  v46 = swift_allocObject();
  sub_23A7AC5F4(v6, v46 + v31);
  v47 = v79;
  sub_23A7EE704();
  sub_23A7EE724();
  v48 = v99;
  swift_getKeyPath();
  v99 = v48;
  sub_23A7EE014();

  v49 = *(v48 + 40);

  swift_getKeyPath();
  v99 = v49;
  sub_23A7EE014();

  v51 = *(v49 + 16);
  v50 = *(v49 + 24);
  sub_23A7A3D7C(v51, v50);

  if (v51)
  {
    sub_23A7A3DBC(v51, v50);
  }

  v52 = v51 == 0;
  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  *(v54 + 16) = v52;
  v55 = v78;
  v89(v78, v47, v43);
  v56 = (v55 + *(v97 + 36));
  *v56 = v53;
  v56[1] = sub_23A7EDAF4;
  v56[2] = v54;
  v57 = v81;
  sub_23A7ED388(v55, v81);
  sub_23A7ED13C(a1, v6);
  v58 = swift_allocObject();
  sub_23A7AC5F4(v6, v58 + v31);
  v59 = v82;
  sub_23A7EE704();
  sub_23A7EE724();
  v60 = v99;
  swift_getKeyPath();
  v99 = v60;
  sub_23A7EE014();

  v61 = *(v60 + 40);

  swift_getKeyPath();
  v99 = v61;
  sub_23A7EE014();

  v62 = *(v61 + 16);
  v63 = *(v61 + 24);
  sub_23A7A3D7C(v62, v63);

  if (v62)
  {
    sub_23A7A3DBC(v62, v63);
  }

  v64 = v62 == 0;
  v65 = swift_getKeyPath();
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  v67 = v80;
  v89(v80, v59, v43);
  v68 = (v67 + *(v97 + 36));
  *v68 = v65;
  v68[1] = sub_23A7EDAF4;
  v68[2] = v66;
  v69 = v83;
  sub_23A7ED388(v67, v83);
  v70 = v96;
  v71 = v85;
  sub_23A7A8D38(v96, v85, &qword_27DFAA268, &qword_23A7FF270);
  v72 = v86;
  sub_23A7A8D38(v57, v86, &qword_27DFAA268, &qword_23A7FF270);
  v73 = v87;
  sub_23A7A8D38(v69, v87, &qword_27DFAA268, &qword_23A7FF270);
  v74 = v88;
  sub_23A7A8D38(v71, v88, &qword_27DFAA268, &qword_23A7FF270);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2B0, &qword_23A7FF318);
  sub_23A7A8D38(v72, v74 + *(v75 + 48), &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8D38(v73, v74 + *(v75 + 64), &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8E74(v69, &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8E74(v57, &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8E74(v70, &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8E74(v73, &qword_27DFAA268, &qword_23A7FF270);
  sub_23A7A8E74(v72, &qword_27DFAA268, &qword_23A7FF270);
  return sub_23A7A8E74(v71, &qword_27DFAA268, &qword_23A7FF270);
}

double sub_23A7EBA98(uint64_t a1)
{
  v2 = type metadata accessor for QLHostDebugView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_23A7EEA64();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_23A7ED13C(a1, v5);
  sub_23A7EEA34();
  v10 = sub_23A7EEA24();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_23A7AC5F4(v5, v12 + v11);
  sub_23A7B9D94(0, 0, v8, &unk_23A7FF360, v12);

  return result;
}

uint64_t sub_23A7EBC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_23A7EEA34();
  v4[4] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_23A7EBCE8, v6, v5);
}

uint64_t sub_23A7EBCE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  sub_23A7EE724();
  v0[7] = v0[2];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_23A7EBD9C;

  return sub_23A7CE42C();
}

uint64_t sub_23A7EBD9C()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_23A7EBF1C;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_23A7EBEB8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23A7EBEB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7EBF1C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_23A7EBFCC(uint64_t a1)
{
  v2 = type metadata accessor for QLHostDebugView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_23A7EEA44();
  v9 = sub_23A7EEA64();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_23A7ED13C(a1, v5);
  sub_23A7EEA34();
  v10 = sub_23A7EEA24();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_23A7AC5F4(v5, v12 + v11);
  sub_23A7AF7B0(0, 0, v8, &unk_23A7FF350, v12);

  return result;
}

uint64_t sub_23A7EC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_23A7EEA34();
  v4[5] = sub_23A7EEA24();
  v6 = sub_23A7EE9E4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_23A7EC228, v6, v5);
}

uint64_t sub_23A7EC228()
{
  v0[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  sub_23A7EE724();
  v1 = v0[2];
  swift_getKeyPath();
  v0[2] = v1;
  v0[9] = sub_23A7ED328(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v2 = *(v1 + 40);

  swift_getKeyPath();
  v0[2] = v2;
  v0[10] = sub_23A7ED328(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel, &unk_23A7FD038);
  sub_23A7EE014();

  v3 = *(v2 + 16);
  v0[11] = v3;
  v4 = *(v2 + 24);
  v0[12] = v4;
  sub_23A7A3D7C(v3, v4);

  if (v3)
  {
    v0[13] = sub_23A7EEA24();
    v6 = sub_23A7EE9E4();

    return MEMORY[0x2822009F8](sub_23A7EC530, v6, v5);
  }

  else
  {

    sub_23A7EE724();
    v7 = v0[2];
    swift_getKeyPath();
    v0[2] = v7;
    sub_23A7EE014();

    v8 = *(v7 + 40);

    swift_getKeyPath();
    v9 = swift_task_alloc();
    v9[3] = 0;
    v9[4] = 0;
    v9[2] = v8;
    v0[2] = v8;
    sub_23A7EE004();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_23A7EC530()
{
  v1 = v0[12];

  __swift_project_boxed_opaque_existential_0((v1 + 24), *(v1 + 48));
  sub_23A7EEB84();
  [*(v1 + 64) invalidate];
  v2 = *(v1 + 64);
  *(v1 + 64) = 0;

  v3 = v0[6];
  v4 = v0[7];

  return MEMORY[0x2822009F8](sub_23A7EC5E0, v3, v4);
}

uint64_t sub_23A7EC5E0()
{

  sub_23A7EE724();
  v1 = *(v0 + 16);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_23A7EE014();

  v2 = *(v1 + 40);

  swift_getKeyPath();
  v3 = swift_task_alloc();
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = v2;
  *(v0 + 16) = v2;
  sub_23A7EE004();

  v4 = *(v0 + 8);

  return v4();
}

void sub_23A7EC77C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  sub_23A7EE724();
  v3 = v12;
  swift_getKeyPath();
  v12 = v3;
  sub_23A7ED328(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  sub_23A7EE014();

  v4 = *(v3 + 40);

  swift_getKeyPath();
  v12 = v4;
  sub_23A7ED328(&qword_27DFA9E50, type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel, &unk_23A7FD038);
  sub_23A7EE014();

  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  sub_23A7A3D7C(v5, v6);

  if (v5)
  {
    v7 = sub_23A7EEA64();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    sub_23A7EEA34();

    v8 = sub_23A7EEA24();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v5;
    v9[5] = v6;
    sub_23A7B9D94(0, 0, v2, &unk_23A7FF328, v9);
  }

  else
  {
    sub_23A7EED64();
    __break(1u);
  }
}

uint64_t sub_23A7ECA30()
{
  v0[2] = sub_23A7EEA34();
  v0[3] = sub_23A7EEA24();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_23A7ECAF4;

  return sub_23A7E9E84();
}

uint64_t sub_23A7ECAF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_23A7EE9E4();
    v7 = v6;
    v8 = sub_23A7ECF2C;
    v9 = v5;
    v10 = v7;
  }

  else
  {
    *(v4 + 48) = a1;
    v8 = sub_23A7ECC44;
    v9 = 0;
    v10 = 0;
  }

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23A7ECC44()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_23A7ECD2C;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0x29286873617263, 0xE700000000000000, sub_23A7ED634, v2, v4);
}

uint64_t sub_23A7ECD2C()
{

  return MEMORY[0x2822009F8](sub_23A7ECE44, 0, 0);
}

uint64_t sub_23A7ECE44()
{
  swift_unknownObjectRelease();
  v1 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7ECEC8, v1, v0);
}

uint64_t sub_23A7ECEC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7ECF2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A7ECFD0@<X0>(uint64_t a3@<X8>)
{
  sub_23A7EE534();
  sub_23A7EE6D4();
  v4 = sub_23A7EE624();
  v5 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA288, &qword_23A7FF280) + 36);
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA270, &qword_23A7FF278) + 36);
  sub_23A7EE774();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA2A8, &qword_23A7FF290);
  v8 = *(v7 + 52);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_23A7EE544();
  result = (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
  *(v6 + *(v7 + 56)) = 256;
  return result;
}

uint64_t sub_23A7ED0E8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_23A7EE554();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA240, &qword_23A7FF248);
  return sub_23A7EAF14(v2, a2 + *(v4 + 44));
}

uint64_t sub_23A7ED13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QLHostDebugView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23A7ED1B8()
{
  result = qword_27DFAA278;
  if (!qword_27DFAA278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAA270, &qword_23A7FF278);
    sub_23A7ED270();
    sub_23A7AA790(&qword_27DFAA2A0, &qword_27DFAA2A8, &qword_23A7FF290, MEMORY[0x277CE08B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAA278);
  }

  return result;
}

unint64_t sub_23A7ED270()
{
  result = qword_27DFAA280;
  if (!qword_27DFAA280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAA288, &qword_23A7FF280);
    sub_23A7AA790(&qword_27DFAA290, &qword_27DFAA298, &qword_23A7FF288, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAA280);
  }

  return result;
}

uint64_t sub_23A7ED328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23A7ED388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA268, &qword_23A7FF270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(type metadata accessor for QLHostDebugView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A7ED500(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for QLHostDebugView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_23A7ED574()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23A7A3240;

  return sub_23A7ECA30();
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_23A7ED670()
{
  result = qword_27DFAA2C8;
  if (!qword_27DFAA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAA2C8);
  }

  return result;
}

uint64_t sub_23A7ED6C4(uint64_t a1)
{
  v4 = *(type metadata accessor for QLHostDebugView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3240;

  return sub_23A7EC18C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(type metadata accessor for QLHostDebugView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A7ED894(uint64_t a1)
{
  v4 = *(type metadata accessor for QLHostDebugView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7EBC50(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_41Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

double gotLoadHelper_x8__DDDetectionControllerDidDismissActionNotification(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsUI))
  {
    return dlopenHelper_DataDetectorsUI(result);
  }

  return result;
}

double gotLoadHelper_x8__DDDetectionControllerWillPresentActionNotification(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsUI))
  {
    return dlopenHelper_DataDetectorsUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PFImageMetadata(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosFormats))
  {
    return dlopenHelper_PhotosFormats(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PFMetadata(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosFormats))
  {
    return dlopenHelper_PhotosFormats(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PFVideoComplement(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosFormats))
  {
    return dlopenHelper_PhotosFormats(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PHAssetCreationRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Photos))
  {
    return dlopenHelper_Photos(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PHLivePhoto(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Photos))
  {
    return dlopenHelper_Photos(result);
  }

  return result;
}

void gotLoadHelper_x24__OBJC_CLASS___PHLivePhoto(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_Photos))
  {
    dlopenHelper_Photos(a1);
  }
}

void gotLoadHelper_x23__OBJC_CLASS___PHLivePhotoView(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUI))
  {
    dlopenHelper_PhotosUI(a1);
  }
}

void gotLoadHelper_x20__OBJC_CLASS___PHPhotoLibrary(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_Photos))
  {
    dlopenHelper_Photos(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___PHPlaceholderView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PUFilmstripView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PUTouchingGestureRecognizer(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PUUISaveToCameraRollActivity(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PUVideoComplementItemSource(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PXSimpleVideoScrubberControllerTarget(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUICore))
  {
    return dlopenHelper_PhotosUICore(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PXVideoScrubberController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUICore))
  {
    return dlopenHelper_PhotosUICore(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___STBlockingViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ScreenTimeUI))
  {
    return dlopenHelper_ScreenTimeUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___TUDialRequest(double result)
{
  if (!atomic_load(&dlopenHelperFlag_TelephonyUtilities))
  {
    return dlopenHelper_TelephonyUtilities(result);
  }

  return result;
}

double dlopenHelper_Photos(double a1)
{
  dlopen("/System/Library/Frameworks/Photos.framework/Photos", 0);
  atomic_store(1u, &dlopenHelperFlag_Photos);
  return a1;
}

double dlopenHelper_PhotosUI(double a1)
{
  dlopen("/System/Library/Frameworks/PhotosUI.framework/PhotosUI", 0);
  atomic_store(1u, &dlopenHelperFlag_PhotosUI);
  return a1;
}

double dlopenHelper_DataDetectorsUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DataDetectorsUI.framework/DataDetectorsUI", 0);
  atomic_store(1u, &dlopenHelperFlag_DataDetectorsUI);
  return a1;
}

double dlopenHelper_PhotosFormats(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PhotosFormats.framework/PhotosFormats", 0);
  atomic_store(1u, &dlopenHelperFlag_PhotosFormats);
  return a1;
}

double dlopenHelper_PhotosUICore(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PhotosUICore.framework/PhotosUICore", 0);
  atomic_store(1u, &dlopenHelperFlag_PhotosUICore);
  return a1;
}

double dlopenHelper_PhotosUIPrivate(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PhotosUIPrivate.framework/PhotosUIPrivate", 0);
  atomic_store(1u, &dlopenHelperFlag_PhotosUIPrivate);
  return a1;
}

double dlopenHelper_ScreenTimeUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ScreenTimeUI.framework/ScreenTimeUI", 0);
  atomic_store(1u, &dlopenHelperFlag_ScreenTimeUI);
  return a1;
}

double dlopenHelper_TelephonyUtilities(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/TelephonyUtilities.framework/TelephonyUtilities", 0);
  atomic_store(1u, &dlopenHelperFlag_TelephonyUtilities);
  return a1;
}