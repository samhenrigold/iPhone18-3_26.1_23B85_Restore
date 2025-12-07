unint64_t sub_1CF712BE8(__n128 a1)
{
  result = qword_1EDEA3950;
  if (!qword_1EDEA3950)
  {
    sub_1CF9E65C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3950);
  }

  return result;
}

unint64_t sub_1CF712C40()
{
  result = qword_1EDEA3948;
  if (!qword_1EDEA3948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3948);
  }

  return result;
}

unint64_t sub_1CF712C94()
{
  result = qword_1EDEAB3D8;
  if (!qword_1EDEAB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB3D8);
  }

  return result;
}

void *sub_1CF712CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1CF712480(sub_1CF712D50, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t type metadata accessor for ReadOnlyWharf(uint64_t a1)
{
  result = qword_1EDEA82F8;
  if (!qword_1EDEA82F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF713060(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v58 = a4;
  v55 = a3;
  v56 = a2;
  v54 = a1;
  v57 = HIDWORD(a3);
  v4 = sub_1CF9E7388();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E7318();
  v50 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v49 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = v40 - v9;
  v48 = sub_1CF9E6448();
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = v40 - v12;
  v13 = sub_1CF9E5A58();
  v43 = *(v13 - 8);
  v14 = v43;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v40 - v18;
  v20 = [objc_opt_self() fp_insecureTempDirectoryIgnoringPersona];
  v44 = v19;
  sub_1CF9E59D8();

  type metadata accessor for ReadOnlyWharf(0);
  v21 = swift_allocObject();
  v22 = *(v14 + 16);
  v42 = v16;
  v41 = v13;
  v22(v16, v19, v13);
  *(v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource) = 0;
  *(v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_invalidated) = 0;
  *(v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_activated) = 0;
  *(v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  *(v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_disableGarbageCollection) = 0;
  v23 = v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
  *v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  *(v23 + 8) = MEMORY[0x1E69E7CC0];
  *(v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource) = 0;
  *(v21 + 16) = 0x4F52236672616877;
  *(v21 + 24) = 0xE800000000000000;
  v25 = v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  swift_beginAccess();
  *(v25 + 12) = -1;
  v22((v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root), v16, v13);
  v40[1] = sub_1CF701F40();
  v40[0] = "fpck should not use the wharf";
  v26 = v59;
  sub_1CF9E63E8();
  v60 = v24;
  sub_1CF713674();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF4F0754();
  v27 = v47;
  sub_1CF9E77B8();
  v28 = v45;
  v29 = v26;
  v30 = v48;
  (*(v45 + 16))(v46, v29, v48);
  v31 = v50;
  (*(v50 + 16))(v49, v27, v6);
  (*(v52 + 104))(v51, *MEMORY[0x1E69E8098], v53);
  v32 = sub_1CF9E73B8();
  (*(v31 + 8))(v27, v6);
  (*(v28 + 8))(v59, v30);
  v33 = *(v43 + 8);
  v34 = v41;
  v33(v42, v41);
  v33(v44, v34);
  *(v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deferredWQ) = v32;
  v35 = v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v36 = v55;
  v37 = v56;
  *v35 = v54;
  *(v35 + 8) = v37;
  *(v35 + 16) = v36;
  *(v35 + 20) = v57;
  v38 = v58;
  *(v35 + 24) = v58 & 1;
  *(v35 + 25) = BYTE1(v38) & 1;
  *(v35 + 26) = BYTE2(v38) & 1;
  *(v21 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_reporter) = 0;
  return v21;
}

unint64_t sub_1CF713674()
{
  result = qword_1EDEAED80;
  if (!qword_1EDEAED80)
  {
    sub_1CF9E7318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAED80);
  }

  return result;
}

void sub_1CF7136CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v161 = a6;
  v162 = a5;
  v192 = a4;
  v191 = a3;
  v138 = a2;
  v136 = a1;
  v184 = sub_1CF9E6388();
  v195 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v183 = (&v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v182 = &v132 - v9;
  v174 = sub_1CF9E6498();
  v188 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v181 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v159 = &v132 - v12;
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  MEMORY[0x1EEE9AC00](updated);
  v163 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v167 = &v132 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v132 = (&v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v164 = (&v132 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v156 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v168 = &v132 - v23;
  v178 = sub_1CF9E63D8();
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v155 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v170 = &v132 - v26;
  v179 = sub_1CF9E6448();
  v194 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v157 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v172 = &v132 - v29;
  v30 = sub_1CF9E73D8();
  v193 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v133 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v158 = &v132 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v160 = &v132 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v189 = &v132 - v40;
  v176 = type metadata accessor for VFSItem(0);
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v185 = &v132 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v6;
  v42 = *(v6 + 16);
  v43 = dispatch_group_create();
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v44 = swift_allocBox();
  v187 = v16;
  v45 = *(v16 + 56);
  v171 = v46;
  v180 = v15;
  v151 = v16 + 56;
  v150 = v45;
  v45(v46, 1, 1, v15);
  dispatch_group_enter(v43);
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  *(v47 + 24) = v43;
  v169 = v47;
  v48 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v186 = v42;
  v49 = *(v42 + 216);
  v197 = MEMORY[0x1E69E7CC0];
  v50 = sub_1CF725648(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v173 = v44;

  v190 = v43;
  v51 = v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v53 = v178;
  v54 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v145 = v52;
  v55 = v168;
  v144 = v54;
  v148 = v50;
  sub_1CF9E77B8();
  v152 = v48;
  v56 = sub_1CF9E73E8();

  v57 = v177;
  v58 = *(v193 + 8);
  v153 = v32;
  v154 = v30;
  v193 += 8;
  v143 = v58;
  v58(v32, v30);
  qos_class_self();
  sub_1CF9E63B8();
  v59 = *(v57 + 48);
  v60 = v59(v55, 1, v53);
  v147 = v57 + 48;
  v146 = v59;
  if (v60 == 1)
  {
    (*(v57 + 104))(v170, *MEMORY[0x1E69E7FA0], v53);
    if (v59(v55, 1, v53) != 1)
    {
      sub_1CEFCCC44(v55, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v57 + 32))(v170, v55, v53);
  }

  ObjectType = swift_getObjectType();
  v170 = ObjectType;
  v62 = v172;
  sub_1CF9E6428();
  v63 = swift_allocObject();
  v64 = v191;
  *(v63 + 16) = v186;
  *(v63 + 24) = v64;
  *(v63 + 32) = v192;
  *(v63 + 40) = 0u;
  *(v63 + 56) = 0u;
  *(v63 + 72) = 0u;
  *(v63 + 88) = 0u;
  *(v63 + 104) = 0u;
  *(v63 + 120) = 0u;
  *(v63 + 136) = 0;
  *(v63 + 144) = 2049;
  *(v63 + 152) = v56;
  *(v63 + 160) = sub_1CF50EBA0;
  *(v63 + 168) = v169;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v62, sub_1CF72A328, v63, ObjectType);

  v65 = *(v194 + 8);
  v194 += 8;
  v142 = v65;
  v65(v62, v179);
  v66 = v181;
  sub_1CF9E6478();
  v67 = v195;
  v68 = (v195 + 104);
  v69 = *(v195 + 104);
  v70 = v182;
  v141 = *MEMORY[0x1E69E7F40];
  v71 = v184;
  (v69)(v182);
  v72 = v183;
  *v183 = 0;
  v140 = *MEMORY[0x1E69E7F28];
  v172 = v68;
  v168 = v69;
  (v69)(v72);
  MEMORY[0x1D3869770](v66, v70, v72, v170);
  v73 = *(v67 + 8);
  v73(v72, v71);
  v195 = v67 + 8;
  v73(v70, v71);
  v74 = v188 + 8;
  v75 = v174;
  v139 = *(v188 + 1);
  v139(v66, v174);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v76 = v190;
  sub_1CF9E72F8();
  v77 = v171;
  swift_beginAccess();
  v78 = v187 + 48;
  v79 = v180;
  v170 = *(v187 + 48);
  v80 = (v170)(v77, 1, v180);
  v81 = v189;
  if (v80)
  {

    v82 = v175;
    v83 = v176;
    (*(v175 + 56))(v81, 1, 1, v176);

    v84 = v185;
  }

  else
  {
    v85 = v164;
    sub_1CEFCCBDC(v77, v164, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v84 = v185;
    v83 = v176;
    v82 = v175;
    if (EnumCaseMultiPayload == 1)
    {
      v196 = *v85;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      return;
    }

    v87 = v85;
    v81 = v189;
    sub_1CEFE55D0(v87, v189, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v190 = *(v82 + 48);
  if ((v190)(v81, 1, v83) == 1)
  {
    sub_1CEFCCC44(v81, &unk_1EC4BEC00, &unk_1CF9FCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    swift_allocError();
    *v88 = v191;
    *(v88 + 8) = v192;
    *(v88 + 16) = 0u;
    *(v88 + 32) = 0u;
    *(v88 + 48) = 0u;
    *(v88 + 64) = 0u;
    *(v88 + 80) = 0u;
    *(v88 + 96) = 0u;
    *(v88 + 112) = 0u;
    sub_1CF2A8DE0(v88);
    swift_willThrow();
    return;
  }

  sub_1CEFE4D30(v81, v84, type metadata accessor for VFSItem);
  v89 = v166;
  sub_1CF50BCA0(v84, v167);
  if (v89)
  {
    v91 = v84;
    goto LABEL_15;
  }

  v173 = v73;
  v90 = objc_autoreleasePoolPush();
  v162(v84);
  v164 = 0;
  objc_autoreleasePoolPop(v90);
  v92 = dispatch_group_create();
  v93 = swift_allocBox();
  v95 = v94;
  v150(v94, 1, 1, v79);
  dispatch_group_enter(v92);
  v96 = swift_allocObject();
  *(v96 + 16) = v93;
  *(v96 + 24) = v92;
  v171 = v96;
  v97 = *(v186 + 216);
  v196 = MEMORY[0x1E69E7CC0];
  v169 = v93;

  v166 = v92;
  v188 = v97;
  v98 = v153;
  v99 = v154;
  sub_1CF9E77B8();
  v189 = sub_1CF9E73E8();

  v143(v98, v99);
  qos_class_self();
  v100 = v156;
  sub_1CF9E63B8();
  v101 = v178;
  v102 = v146;
  v103 = v146(v100, 1, v178);
  v165 = v95;
  if (v103 == 1)
  {
    v187 = v78;
    v188 = v74;
    (*(v177 + 104))(v155, *MEMORY[0x1E69E7FA0], v101);
    if (v102(v100, 1, v101) != 1)
    {
      sub_1CEFCCC44(v100, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    v187 = v78;
    v188 = v74;
    (*(v177 + 32))(v155, v100, v101);
  }

  v104 = v189;
  v105 = swift_getObjectType();
  v106 = v157;
  sub_1CF9E6428();
  v107 = swift_allocObject();
  v108 = v191;
  *(v107 + 16) = v186;
  *(v107 + 24) = v108;
  *(v107 + 32) = v192;
  *(v107 + 40) = 0u;
  *(v107 + 56) = 0u;
  *(v107 + 72) = 0u;
  *(v107 + 88) = 0u;
  *(v107 + 104) = 0u;
  *(v107 + 120) = 0u;
  *(v107 + 136) = 0;
  *(v107 + 144) = 2049;
  *(v107 + 152) = v104;
  *(v107 + 160) = sub_1CF50EBA0;
  *(v107 + 168) = v171;

  swift_unknownObjectRetain();

  v193 = v105;
  sub_1CEFD5828(0, v106, sub_1CF72A328, v107, v105);

  v142(v106, v179);
  v109 = v181;
  sub_1CF9E6478();
  v110 = v182;
  v111 = v184;
  v112 = v168;
  (v168)(v182, v141, v184);
  v113 = v183;
  *v183 = 0;
  v112(v113, v140, v111);
  MEMORY[0x1D3869770](v109, v110, v113, v105);
  v114 = v173;
  v173(v113, v111);
  v114(v110, v111);
  v139(v109, v75);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v115 = v166;
  sub_1CF9E72F8();
  v116 = v165;
  swift_beginAccess();
  if (!(v170)(v116, 1, v180))
  {
    v122 = v116;
    v123 = v132;
    sub_1CEFCCBDC(v122, v132, &unk_1EC4BF310, &unk_1CF9FDB30);
    v124 = swift_getEnumCaseMultiPayload();
    v119 = v159;
    v120 = v163;
    v125 = v185;
    v121 = v158;
    if (v124 != 1)
    {

      v117 = v160;
      sub_1CEFE55D0(v123, v160, &unk_1EC4BEC00, &unk_1CF9FCB60);

      v118 = v176;
      goto LABEL_25;
    }

    v198 = *v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFE522C(v120, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFCCC44(v167, &qword_1EC4C1330, &unk_1CFA13480);

    v91 = v125;
LABEL_15:
    sub_1CEFE522C(v91, type metadata accessor for VFSItem);
    return;
  }

  v117 = v160;
  v118 = v176;
  (*(v175 + 56))(v160, 1, 1, v176);

  v119 = v159;
  v120 = v163;
  v121 = v158;
LABEL_25:
  sub_1CEFE4FF4(v120, v136, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  v126 = v167;
  sub_1CEFCCBDC(v167, v119, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v134 + 56))(v119, 0, 1, v135);
  sub_1CEFCCBDC(v117, v121, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v127 = v133;
  sub_1CEFCCBDC(v117, v133, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v190)(v127, 1, v118) == 1)
  {
    sub_1CEFCCC44(v127, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v128 = v185;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v129 = qword_1EDEABDE8;
    sub_1CEFCCC44(v160, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v120, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFCCC44(v126, &qword_1EC4C1330, &unk_1CFA13480);
  }

  else
  {
    v128 = v185;
    sub_1CF717E1C(v185);
    sub_1CEFCCC44(v117, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v120, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFCCC44(v126, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE522C(v127, type metadata accessor for VFSItem);
    v129 = v198;
  }

  v130 = v138;
  sub_1CEFE55D0(v119, v138, &qword_1EC4C1310, &qword_1CFA08AC8);
  v131 = updated;
  sub_1CEFE55D0(v121, v130 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v130 + *(v131 + 24)) = v129;
  sub_1CEFE522C(v128, type metadata accessor for VFSItem);
}

void sub_1CF714E9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v162 = a6;
  v163 = a5;
  v192 = a4;
  v191 = a3;
  v140 = a2;
  v139 = a1;
  v185 = sub_1CF9E6388();
  v196 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v184 = (&v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v183 = &v134 - v9;
  v176 = sub_1CF9E6498();
  v189 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v182 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v159 = &v134 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1390, &unk_1CFA13500);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v164 = &v134 - v14;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v168 = &v134 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v135 = (&v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v165 = (&v134 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v157 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v170 = &v134 - v24;
  v180 = sub_1CF9E63D8();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v156 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v171 = &v134 - v27;
  v181 = sub_1CF9E6448();
  v195 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v158 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v173 = &v134 - v30;
  v31 = sub_1CF9E73D8();
  v194 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v136 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v161 = &v134 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v160 = &v134 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v169 = &v134 - v41;
  v178 = type metadata accessor for VFSItem(0);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v186 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v6;
  isa = v6[2].isa;
  v44 = dispatch_group_create();
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v45 = swift_allocBox();
  v188 = v17;
  v46 = *(v17 + 56);
  v172 = v47;
  v175 = v16;
  v152 = v17 + 56;
  v151 = v46;
  v46(v47, 1, 1, v16);
  dispatch_group_enter(v44);
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  *(v48 + 24) = v44;
  v193 = v48;
  v49 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v187 = isa;
  v50 = *(isa + 27);
  v198 = MEMORY[0x1E69E7CC0];
  v51 = sub_1CF725648(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v174 = v45;

  v190 = v44;
  v52 = v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v54 = v180;
  v55 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v146 = v53;
  v56 = v170;
  v145 = v55;
  v149 = v51;
  sub_1CF9E77B8();
  v153 = v49;
  v57 = sub_1CF9E73E8();

  v58 = v179;
  v59 = *(v194 + 8);
  v154 = v33;
  v155 = v31;
  v194 += 8;
  v144 = v59;
  v59(v33, v31);
  qos_class_self();
  sub_1CF9E63B8();
  v60 = *(v58 + 48);
  v61 = v60(v56, 1, v54);
  v148 = v58 + 48;
  v147 = v60;
  if (v61 == 1)
  {
    (*(v58 + 104))(v171, *MEMORY[0x1E69E7FA0], v54);
    if (v60(v56, 1, v54) != 1)
    {
      sub_1CEFCCC44(v56, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v58 + 32))(v171, v56, v54);
  }

  ObjectType = swift_getObjectType();
  v63 = v173;
  sub_1CF9E6428();
  v64 = swift_allocObject();
  v65 = v191;
  *(v64 + 16) = v187;
  *(v64 + 24) = v65;
  *(v64 + 32) = v192;
  *(v64 + 40) = 0u;
  *(v64 + 56) = 0u;
  *(v64 + 72) = 0u;
  *(v64 + 88) = 0u;
  *(v64 + 104) = 0u;
  *(v64 + 120) = 0u;
  *(v64 + 136) = 0;
  *(v64 + 144) = 2049;
  *(v64 + 152) = v57;
  *(v64 + 160) = sub_1CF50EBA0;
  *(v64 + 168) = v193;

  swift_unknownObjectRetain();

  v66 = ObjectType;
  sub_1CEFD5828(0, v63, sub_1CF72A328, v64, ObjectType);

  v67 = *(v195 + 8);
  v195 += 8;
  v171 = v67;
  (v67)(v63, v181);
  v68 = v182;
  sub_1CF9E6478();
  v69 = v196;
  v70 = v196 + 104;
  v71 = *(v196 + 104);
  v72 = v183;
  LODWORD(v170) = *MEMORY[0x1E69E7F40];
  v73 = v185;
  (v71)(v183);
  v74 = v184;
  *v184 = 0;
  v142 = *MEMORY[0x1E69E7F28];
  v173 = v71;
  (v71)(v74);
  MEMORY[0x1D3869770](v68, v72, v74, v66);
  v75 = *(v69 + 8);
  v75(v74, v73);
  v196 = v69 + 8;
  v143 = v75;
  v75(v72, v73);
  v76 = v189 + 8;
  v77 = v176;
  v141 = *(v189 + 1);
  v141(v68, v176);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v78 = v190;
  sub_1CF9E72F8();
  v79 = v172;
  swift_beginAccess();
  v80 = v188 + 48;
  v81 = v175;
  v193 = *(v188 + 48);
  if (v193(v79, 1, v175))
  {
    v172 = v70;

    v82 = v177;
    v83 = v169;
    v84 = v178;
    (*(v177 + 56))(v169, 1, 1, v178);

    v85 = v186;
  }

  else
  {
    v86 = v165;
    sub_1CEFCCBDC(v79, v165, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v85 = v186;
    v84 = v178;
    v82 = v177;
    if (EnumCaseMultiPayload == 1)
    {
      v197 = *v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      return;
    }

    v172 = v70;

    v83 = v169;
    sub_1CEFE55D0(v86, v169, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v88 = *(v82 + 48);
  if ((v88)(v83, 1, v84) == 1)
  {
    sub_1CEFCCC44(v83, &unk_1EC4BEC00, &unk_1CF9FCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    swift_allocError();
    *v89 = v191;
    *(v89 + 8) = v192;
    *(v89 + 16) = 0u;
    *(v89 + 32) = 0u;
    *(v89 + 48) = 0u;
    *(v89 + 64) = 0u;
    *(v89 + 80) = 0u;
    *(v89 + 96) = 0u;
    *(v89 + 112) = 0u;
    sub_1CF2A8DE0(v89);
    swift_willThrow();
    return;
  }

  v190 = v88;
  sub_1CEFE4D30(v83, v85, type metadata accessor for VFSItem);
  v90 = v167;
  sub_1CF50BCA0(v85, v168);
  if (v90)
  {
    v92 = v85;
    goto LABEL_15;
  }

  v91 = objc_autoreleasePoolPush();
  v163(v85);
  v163 = 0;
  objc_autoreleasePoolPop(v91);
  v93 = dispatch_group_create();
  v94 = swift_allocBox();
  v165 = v95;
  v151(v95, 1, 1, v81);
  dispatch_group_enter(v93);
  v96 = swift_allocObject();
  *(v96 + 16) = v94;
  *(v96 + 24) = v93;
  v174 = v96;
  v97 = *(v187 + 27);
  v197 = MEMORY[0x1E69E7CC0];
  v167 = v94;

  v166 = v93;
  v189 = v97;
  v98 = v154;
  v99 = v155;
  sub_1CF9E77B8();
  v169 = sub_1CF9E73E8();

  v144(v98, v99);
  qos_class_self();
  v100 = v157;
  sub_1CF9E63B8();
  v101 = v180;
  v102 = v147;
  if (v147(v100, 1, v180) == 1)
  {
    v188 = v80;
    v189 = v76;
    (*(v179 + 104))(v156, *MEMORY[0x1E69E7FA0], v101);
    if (v102(v100, 1, v101) != 1)
    {
      sub_1CEFCCC44(v100, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    v188 = v80;
    v189 = v76;
    (*(v179 + 32))(v156, v100, v101);
  }

  v103 = v169;
  v104 = swift_getObjectType();
  v194 = v104;
  v105 = v158;
  sub_1CF9E6428();
  v106 = swift_allocObject();
  v107 = v191;
  *(v106 + 16) = v187;
  *(v106 + 24) = v107;
  *(v106 + 32) = v192;
  *(v106 + 40) = 0u;
  *(v106 + 56) = 0u;
  *(v106 + 72) = 0u;
  *(v106 + 88) = 0u;
  *(v106 + 104) = 0u;
  *(v106 + 120) = 0u;
  *(v106 + 136) = 0;
  *(v106 + 144) = 2049;
  *(v106 + 152) = v103;
  *(v106 + 160) = sub_1CF50EBA0;
  *(v106 + 168) = v174;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v105, sub_1CF72A328, v106, v104);

  (v171)(v105, v181);
  v108 = v182;
  sub_1CF9E6478();
  v109 = v183;
  v110 = v185;
  v111 = v173;
  (v173)(v183, v170, v185);
  v112 = v184;
  *v184 = 0;
  v111(v112, v142, v110);
  MEMORY[0x1D3869770](v108, v109, v112, v194);
  v113 = v143;
  v143(v112, v110);
  v113(v109, v110);
  v141(v108, v77);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v114 = v166;
  sub_1CF9E72F8();
  v115 = v165;
  swift_beginAccess();
  if (!v193(v115, 1, v81))
  {
    v122 = v115;
    v123 = v135;
    sub_1CEFCCBDC(v122, v135, &unk_1EC4BF310, &unk_1CF9FDB30);
    v124 = swift_getEnumCaseMultiPayload();
    v118 = v159;
    v119 = v168;
    v120 = v164;
    v121 = v161;
    if (v124 != 1)
    {

      v116 = v160;
      sub_1CEFE55D0(v123, v160, &unk_1EC4BEC00, &unk_1CF9FCB60);

      v117 = v178;
      goto LABEL_25;
    }

    v125 = v168;
    v199 = *v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v120, &unk_1EC4C1390, &unk_1CFA13500);
    sub_1CEFCCC44(v125, &qword_1EC4C1330, &unk_1CFA13480);

    v92 = v186;
LABEL_15:
    sub_1CEFE522C(v92, type metadata accessor for VFSItem);
    return;
  }

  v116 = v160;
  v117 = v178;
  (*(v177 + 56))(v160, 1, 1, v178);

  v118 = v159;
  v119 = v168;
  v120 = v164;
  v121 = v161;
LABEL_25:
  sub_1CEFCCBDC(v120, v139, &unk_1EC4C1390, &unk_1CFA13500);
  sub_1CEFCCBDC(v119, v118, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v137 + 56))(v118, 0, 1, v138);
  sub_1CEFCCBDC(v116, v121, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v126 = v116;
  v127 = v116;
  v128 = v136;
  sub_1CEFCCBDC(v126, v136, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v190)(v128, 1, v117) == 1)
  {
    sub_1CEFCCC44(v128, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v129 = qword_1EDEABDE8;
    sub_1CEFCCC44(v160, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v120, &unk_1EC4C1390, &unk_1CFA13500);
    sub_1CEFCCC44(v119, &qword_1EC4C1330, &unk_1CFA13480);
  }

  else
  {
    sub_1CF717E1C(v186);
    sub_1CEFCCC44(v127, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v120, &unk_1EC4C1390, &unk_1CFA13500);
    sub_1CEFCCC44(v119, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE522C(v128, type metadata accessor for VFSItem);
    v129 = v199;
  }

  v130 = v161;
  v131 = v118;
  v132 = v140;
  sub_1CEFE55D0(v131, v140, &qword_1EC4C1310, &qword_1CFA08AC8);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  sub_1CEFE55D0(v130, v132 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v132 + *(updated + 24)) = v129;
  sub_1CEFE522C(v186, type metadata accessor for VFSItem);
}

void sub_1CF716664(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v160 = a6;
  v161 = a5;
  v192 = a4;
  v191 = a3;
  v137 = a2;
  v136 = a1;
  v184 = sub_1CF9E6388();
  v195 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v183 = (&v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v182 = &v132 - v9;
  v181 = sub_1CF9E6498();
  v188 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v180 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v159 = &v132 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v162 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v166 = &v132 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v133 = (&v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v163 = (&v132 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v154 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v168 = &v132 - v24;
  v178 = sub_1CF9E63D8();
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v153 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v170 = &v132 - v27;
  v179 = sub_1CF9E6448();
  v194 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v155 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v172 = &v132 - v30;
  v31 = sub_1CF9E73D8();
  v193 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v156 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v157 = &v132 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v158 = &v132 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v189 = &v132 - v41;
  v176 = type metadata accessor for VFSItem(0);
  v175 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v185 = &v132 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v6;
  v43 = *(v6 + 16);
  v44 = dispatch_group_create();
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v45 = swift_allocBox();
  v187 = v17;
  v46 = *(v17 + 56);
  v171 = v47;
  v174 = v16;
  v149 = v17 + 56;
  v148 = v46;
  v46(v47, 1, 1, v16);
  dispatch_group_enter(v44);
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  *(v48 + 24) = v44;
  v169 = v48;
  v49 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v186 = v43;
  v50 = *(v43 + 216);
  v197 = MEMORY[0x1E69E7CC0];
  v51 = sub_1CF725648(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v173 = v45;

  v190 = v44;
  v52 = v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v54 = v178;
  v55 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v144 = v53;
  v143 = v55;
  v146 = v51;
  sub_1CF9E77B8();
  v150 = v49;
  v56 = sub_1CF9E73E8();

  v57 = v177;
  v58 = *(v193 + 8);
  v151 = v33;
  v152 = v31;
  v59 = v31;
  v60 = v168;
  v193 += 8;
  v142 = v58;
  v58(v33, v59);
  qos_class_self();
  sub_1CF9E63B8();
  v61 = *(v57 + 48);
  v62 = v61(v60, 1, v54);
  v145 = v61;
  v167 = v57 + 48;
  if (v62 == 1)
  {
    (*(v57 + 104))(v170, *MEMORY[0x1E69E7FA0], v54);
    if (v61(v60, 1, v54) != 1)
    {
      sub_1CEFCCC44(v60, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v57 + 32))(v170, v60, v54);
  }

  ObjectType = swift_getObjectType();
  v170 = ObjectType;
  v64 = v172;
  sub_1CF9E6428();
  v65 = swift_allocObject();
  v66 = v191;
  *(v65 + 16) = v186;
  *(v65 + 24) = v66;
  *(v65 + 32) = v192;
  *(v65 + 40) = 0u;
  *(v65 + 56) = 0u;
  *(v65 + 72) = 0u;
  *(v65 + 88) = 0u;
  *(v65 + 104) = 0u;
  *(v65 + 120) = 0u;
  *(v65 + 136) = 0;
  *(v65 + 144) = 2049;
  *(v65 + 152) = v56;
  *(v65 + 160) = sub_1CF50EBA0;
  *(v65 + 168) = v169;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v64, sub_1CF72A328, v65, ObjectType);

  v67 = *(v194 + 8);
  v194 += 8;
  v141 = v67;
  v67(v64, v179);
  v68 = v180;
  sub_1CF9E6478();
  v69 = v195;
  v71 = (v195 + 104);
  v70 = *(v195 + 104);
  v72 = v182;
  v140 = *MEMORY[0x1E69E7F40];
  v73 = v184;
  (v70)(v182);
  v74 = v183;
  *v183 = 0;
  v139 = *MEMORY[0x1E69E7F28];
  v172 = v71;
  v168 = v70;
  (v70)(v74);
  MEMORY[0x1D3869770](v68, v72, v74, v170);
  v75 = *(v69 + 8);
  v75(v74, v73);
  v195 = v69 + 8;
  v75(v72, v73);
  v76 = v188 + 8;
  v138 = *(v188 + 1);
  v138(v68, v181);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v77 = v190;
  sub_1CF9E72F8();
  v78 = v171;
  swift_beginAccess();
  v79 = v187 + 48;
  v80 = v174;
  v170 = *(v187 + 48);
  v81 = (v170)(v78, 1, v174);
  v82 = v189;
  if (v81)
  {
    v171 = v75;

    v83 = v175;
    v84 = v176;
    (*(v175 + 56))(v82, 1, 1, v176);

    v85 = v185;
  }

  else
  {
    v86 = v163;
    sub_1CEFCCBDC(v78, v163, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v85 = v185;
    v84 = v176;
    v83 = v175;
    if (EnumCaseMultiPayload == 1)
    {
      v196 = *v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      return;
    }

    v171 = v75;

    v82 = v189;
    sub_1CEFE55D0(v86, v189, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  v88 = *(v83 + 48);
  if ((v88)(v82, 1, v84) == 1)
  {
    sub_1CEFCCC44(v82, &unk_1EC4BEC00, &unk_1CF9FCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    swift_allocError();
    *v89 = v191;
    *(v89 + 8) = v192;
    *(v89 + 16) = 0u;
    *(v89 + 32) = 0u;
    *(v89 + 48) = 0u;
    *(v89 + 64) = 0u;
    *(v89 + 80) = 0u;
    *(v89 + 96) = 0u;
    *(v89 + 112) = 0u;
    sub_1CF2A8DE0(v89);
    swift_willThrow();
    return;
  }

  v190 = v88;
  sub_1CEFE4D30(v82, v85, type metadata accessor for VFSItem);
  v90 = v165;
  sub_1CF50BCA0(v85, v166);
  if (v90)
  {
    v92 = v85;
    goto LABEL_15;
  }

  v91 = objc_autoreleasePoolPush();
  v161(v85);
  v164 = 0;
  objc_autoreleasePoolPop(v91);
  v93 = dispatch_group_create();
  v94 = swift_allocBox();
  v169 = v95;
  v148(v95, 1, 1, v80);
  dispatch_group_enter(v93);
  v96 = swift_allocObject();
  *(v96 + 16) = v94;
  *(v96 + 24) = v93;
  v189 = v96;
  v97 = *(v186 + 216);
  v196 = MEMORY[0x1E69E7CC0];
  v173 = v94;

  v165 = v93;
  v188 = v97;
  v98 = v151;
  v99 = v152;
  sub_1CF9E77B8();
  v100 = sub_1CF9E73E8();

  v142(v98, v99);
  qos_class_self();
  v101 = v154;
  sub_1CF9E63B8();
  v102 = v178;
  v103 = v145;
  if (v145(v101, 1, v178) == 1)
  {
    v187 = v79;
    v188 = v76;
    (*(v177 + 104))(v153, *MEMORY[0x1E69E7FA0], v102);
    if (v103(v101, 1, v102) != 1)
    {
      sub_1CEFCCC44(v101, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    v187 = v79;
    v188 = v76;
    (*(v177 + 32))(v153, v101, v102);
  }

  v104 = swift_getObjectType();
  v193 = v104;
  v105 = v155;
  sub_1CF9E6428();
  v106 = swift_allocObject();
  v107 = v191;
  *(v106 + 16) = v186;
  *(v106 + 24) = v107;
  *(v106 + 32) = v192;
  *(v106 + 40) = 0u;
  *(v106 + 56) = 0u;
  *(v106 + 72) = 0u;
  *(v106 + 88) = 0u;
  *(v106 + 104) = 0u;
  *(v106 + 120) = 0u;
  *(v106 + 136) = 0;
  *(v106 + 144) = 2049;
  *(v106 + 152) = v100;
  *(v106 + 160) = sub_1CF50EBA0;
  *(v106 + 168) = v189;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v105, sub_1CF72A328, v106, v104);

  v141(v105, v179);
  v108 = v180;
  sub_1CF9E6478();
  v109 = v182;
  v110 = v184;
  v111 = v168;
  (v168)(v182, v140, v184);
  v112 = v183;
  *v183 = 0;
  v111(v112, v139, v110);
  MEMORY[0x1D3869770](v108, v109, v112, v193);
  v113 = v171;
  v171(v112, v110);
  v113(v109, v110);
  v138(v108, v181);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v114 = v165;
  sub_1CF9E72F8();
  v115 = v169;
  swift_beginAccess();
  if (!(v170)(v115, 1, v80))
  {
    v122 = v115;
    v123 = v133;
    sub_1CEFCCBDC(v122, v133, &unk_1EC4BF310, &unk_1CF9FDB30);
    v124 = swift_getEnumCaseMultiPayload();
    v118 = v159;
    v125 = v166;
    v119 = v162;
    v120 = v157;
    v121 = v156;
    v116 = v158;
    if (v124 != 1)
    {

      sub_1CEFE55D0(v123, v116, &unk_1EC4BEC00, &unk_1CF9FCB60);

      v117 = v176;
      goto LABEL_25;
    }

    v198 = *v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v119, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFCCC44(v125, &qword_1EC4C1330, &unk_1CFA13480);

    v92 = v185;
LABEL_15:
    sub_1CEFE522C(v92, type metadata accessor for VFSItem);
    return;
  }

  v116 = v158;
  v117 = v176;
  (*(v175 + 56))(v158, 1, 1, v176);

  v118 = v159;
  v119 = v162;
  v120 = v157;
  v121 = v156;
LABEL_25:
  sub_1CEFCCBDC(v119, v136, &qword_1EC4C1330, &unk_1CFA13480);
  sub_1CEFCCBDC(v166, v118, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v134 + 56))(v118, 0, 1, v135);
  sub_1CEFCCBDC(v116, v120, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFCCBDC(v116, v121, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v190)(v121, 1, v117) == 1)
  {
    v126 = v166;
    v127 = v120;
    sub_1CEFCCC44(v121, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v128 = qword_1EDEABDE8;
    sub_1CEFCCC44(v158, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v119, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFCCC44(v126, &qword_1EC4C1330, &unk_1CFA13480);
    v129 = v185;
  }

  else
  {
    v127 = v120;
    v129 = v185;
    sub_1CF717E1C(v185);
    sub_1CEFCCC44(v116, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v119, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFCCC44(v166, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE522C(v121, type metadata accessor for VFSItem);
    v128 = v198;
  }

  v130 = v137;
  sub_1CEFE55D0(v159, v137, &qword_1EC4C1310, &qword_1CFA08AC8);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  sub_1CEFE55D0(v127, v130 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v130 + *(updated + 24)) = v128;
  sub_1CEFE522C(v129, type metadata accessor for VFSItem);
}

void sub_1CF717E1C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v855 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v852 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v852 - v11;
  v860 = *(v2 + 16);
  LODWORD(v858) = *(v2 + 24);
  v13 = *(v2 + 32);
  v856 = *(v2 + 40);
  v14 = v856;
  v857 = v13;
  v15 = type metadata accessor for VFSItem(0);
  v16 = *(v15 + 28);
  v859 = v15;
  sub_1CEFE4FF4(v2 + v16, &v12[*(v7 + 48)], type metadata accessor for ItemMetadata);
  *v12 = v860;
  v12[8] = v858;
  *(v12 + 2) = v857;
  *(v12 + 3) = v14;
  v860 = *(v4 + 16);
  LODWORD(v858) = *(v4 + 24);
  v17 = *(v4 + 40);
  v857 = *(v4 + 32);
  sub_1CEFE4FF4(v4 + *(v15 + 28), &v9[*(v7 + 48)], type metadata accessor for ItemMetadata);
  *v9 = v860;
  v9[8] = v858;
  *(v9 + 2) = v857;
  *(v9 + 3) = v17;

  sub_1CF71F5B8(v9, 0, 0, &v1485);
  sub_1CEFCCC44(v9, &unk_1EC4BFD90, &unk_1CFA134F0);
  sub_1CEFCCC44(v12, &unk_1EC4BFD90, &unk_1CFA134F0);
  v18 = v859;
  v19 = (v2 + *(v859 + 36));
  v20 = *v19;
  v21 = *(v19 + 2);
  v22 = v19[2];
  v23 = *(v19 + 24);
  v24 = *(v2 + 16);
  v25 = *(v2 + 24);
  v27 = *(v2 + 32);
  v26 = *(v2 + 40);
  v860 = v2;
  LOBYTE(v1459[0]) = v23;
  v1486 = v20;
  v1487 = v21;
  v1489 = v23;
  v857 = v22;
  v1488 = v22;
  v1490 = 0;
  v1492 = v25;
  v1491 = v24;
  v1493 = v27;
  v1494 = v26;
  v1495 = 0;
  v1496 = 0;
  v1497 = 0;

  sub_1CEFCCC44(&v1486, &unk_1EC4BE330, &unk_1CF9FF010);
  v28 = (v4 + *(v18 + 36));
  v29 = *v28;
  v30 = *(v28 + 2);
  v31 = v28[2];
  v32 = *(v28 + 24);
  v33 = *(v4 + 16);
  v34 = *(v4 + 24);
  v36 = *(v4 + 32);
  v35 = *(v4 + 40);
  v858 = v4;
  LOBYTE(v1443) = v32;
  v1498 = v29;
  v1499 = v30;
  v1501 = v32;
  v856 = v31;
  v1500 = v31;
  v1502 = 0;
  v1503 = v33;
  v1504 = v34;
  v1505 = v36;
  v1506 = v35;
  v1507 = 0;
  v1508 = 0;
  v1509 = 0;

  sub_1CEFCCC44(&v1498, &unk_1EC4BE330, &unk_1CF9FF010);
  v854 = v29;
  v149 = v20 == v29;
  v37 = v30;
  if (!v149 || v21 != v30)
  {
    goto LABEL_11;
  }

  if (v23)
  {
    if (v32)
    {
      goto LABEL_12;
    }

LABEL_11:
    v1485 |= 8uLL;
    goto LABEL_12;
  }

  if (v857 == v856)
  {
    v38 = v32;
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
    goto LABEL_11;
  }

LABEL_12:
  v39 = *(v860 + 16);
  v40 = *(v860 + 40);
  v853 = *(v860 + 32);
  LOBYTE(v1459[0]) = v23;
  v1461 = v20;
  v1462 = v21;
  v1464 = v23;
  v1463 = v857;
  v1465 = 0;
  v1467 = *(v860 + 24);
  v41 = v1467;
  v1466 = v39;
  v1468 = v853;
  v1469 = v40;
  v1470 = 0;
  v1472 = 0;
  v1471 = 0;
  swift_bridgeObjectRetain_n();
  sub_1CEFCCC44(&v1461, &unk_1EC4BE330, &unk_1CF9FF010);
  v42 = *(v858 + 16);
  v43 = *(v858 + 32);
  v44 = *(v858 + 40);
  LOBYTE(v1443) = v32;
  v1473 = v854;
  v1474 = v37;
  v1476 = v32;
  v1475 = v856;
  v1477 = 0;
  v1479 = *(v858 + 24);
  v45 = v1479;
  v1478 = v42;
  v1480 = v43;
  v1481 = v44;
  v1482 = 0;
  v1484 = 0;
  v1483 = 0;
  swift_bridgeObjectRetain_n();
  sub_1CEFCCC44(&v1473, &unk_1EC4BE330, &unk_1CF9FF010);
  v46 = sub_1CF443664(v39, v41, v853, v40, v42, v45, v43, v44);
  v40, v47, v48, v49, v50, v51, v52, v53;
  v44, v54, v55, v56, v57, v58, v59, v60;
  if ((v46 & 1) == 0)
  {
    v1485 |= 0x20000000000uLL;
  }

  v61 = v860 + *(v859 + 32);
  v62 = *(v61 + 48);
  v1445 = *(v61 + 32);
  v1446 = v62;
  v63 = *(v61 + 112);
  v1449 = *(v61 + 96);
  v1450 = v63;
  v64 = *(v61 + 80);
  v1447 = *(v61 + 64);
  v1448 = v64;
  v65 = *(v61 + 176);
  v1453 = *(v61 + 160);
  v1454 = v65;
  v66 = *(v61 + 144);
  v1451 = *(v61 + 128);
  v1452 = v66;
  v1458 = *(v61 + 240);
  v67 = *(v61 + 224);
  v1456 = *(v61 + 208);
  v1457 = v67;
  v1455 = *(v61 + 192);
  v68 = *(v61 + 16);
  v1443 = *v61;
  v1444 = v68;
  v69 = (v858 + *(v859 + 32));
  v70 = v69[13];
  v1459[12] = v69[12];
  v1459[13] = v70;
  v1459[14] = v69[14];
  v1460 = *(v69 + 30);
  v71 = v69[9];
  v1459[8] = v69[8];
  v1459[9] = v71;
  v72 = v69[11];
  v1459[10] = v69[10];
  v1459[11] = v72;
  v73 = v69[5];
  v1459[4] = v69[4];
  v1459[5] = v73;
  v74 = v69[7];
  v1459[6] = v69[6];
  v1459[7] = v74;
  v75 = v69[1];
  v1459[0] = *v69;
  v1459[1] = v75;
  v76 = v69[3];
  v1459[2] = v69[2];
  v1459[3] = v76;
  enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1459);
  v78 = *&v1459[0];
  v1441[12] = v1455;
  v1441[13] = v1456;
  v1441[14] = v1457;
  v1442 = v1458;
  v1441[8] = v1451;
  v1441[9] = v1452;
  v1441[10] = v1453;
  v1441[11] = v1454;
  v1441[4] = v1447;
  v1441[5] = v1448;
  v1441[6] = v1449;
  v1441[7] = v1450;
  v1441[0] = v1443;
  v1441[1] = v1444;
  v1441[2] = v1445;
  v1441[3] = v1446;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1441) == 1)
  {
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      goto LABEL_23;
    }

LABEL_22:
    v1485 |= 0x40000uLL;
    goto LABEL_23;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
  {
    v79 = 0;
  }

  else
  {
    v79 = v78;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1 || *&v1441[0] != v79)
  {
    goto LABEL_22;
  }

LABEL_23:
  v80 = *(v61 + 208);
  v1435 = *(v61 + 192);
  v1436 = v80;
  v1437 = *(v61 + 224);
  v81 = *(v61 + 144);
  v1431 = *(v61 + 128);
  v1432 = v81;
  v82 = *(v61 + 176);
  v1433 = *(v61 + 160);
  v1434 = v82;
  v83 = *(v61 + 80);
  v1427 = *(v61 + 64);
  v1428 = v83;
  v84 = *(v61 + 112);
  v1429 = *(v61 + 96);
  v1430 = v84;
  v85 = *(v61 + 16);
  v1423 = *v61;
  v1424 = v85;
  v86 = *(v61 + 48);
  v1425 = *(v61 + 32);
  v1426 = v86;
  v87 = v69[13];
  v1439[12] = v69[12];
  v1439[13] = v87;
  v1439[14] = v69[14];
  v88 = v69[9];
  v1439[8] = v69[8];
  v1439[9] = v88;
  v89 = v69[11];
  v1439[10] = v69[10];
  v1439[11] = v89;
  v90 = v69[5];
  v1439[4] = v69[4];
  v1439[5] = v90;
  v91 = v69[7];
  v1439[6] = v69[6];
  v1439[7] = v91;
  v92 = v69[1];
  v1439[0] = *v69;
  v1439[1] = v92;
  v93 = v69[3];
  v1439[2] = v69[2];
  v1438 = *(v61 + 240);
  v1440 = *(v69 + 30);
  v1439[3] = v93;
  v94 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1439);
  v95 = BYTE8(v1439[0]);
  v1421[12] = v1435;
  v1421[13] = v1436;
  v1421[14] = v1437;
  v1422 = v1438;
  v1421[8] = v1431;
  v1421[9] = v1432;
  v1421[10] = v1433;
  v1421[11] = v1434;
  v1421[4] = v1427;
  v1421[5] = v1428;
  v1421[6] = v1429;
  v1421[7] = v1430;
  v1421[0] = v1423;
  v1421[1] = v1424;
  v1421[2] = v1425;
  v1421[3] = v1426;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1421) == 1)
  {
    if (v94 == 1)
    {
      goto LABEL_29;
    }

LABEL_28:
    v1485 |= 0x80000uLL;
    goto LABEL_29;
  }

  if (v94 == 1 || ((v95 ^ BYTE8(v1421[0])) & 1) != 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v96 = *(v61 + 208);
  v1415 = *(v61 + 192);
  v1416 = v96;
  v1417 = *(v61 + 224);
  v97 = *(v61 + 144);
  v1411 = *(v61 + 128);
  v1412 = v97;
  v98 = *(v61 + 176);
  v1413 = *(v61 + 160);
  v1414 = v98;
  v99 = *(v61 + 80);
  v1407 = *(v61 + 64);
  v1408 = v99;
  v100 = *(v61 + 112);
  v1409 = *(v61 + 96);
  v1410 = v100;
  v101 = *(v61 + 16);
  v1403 = *v61;
  v1404 = v101;
  v102 = *(v61 + 48);
  v1405 = *(v61 + 32);
  v1406 = v102;
  v103 = v69[13];
  v1419[12] = v69[12];
  v1419[13] = v103;
  v1419[14] = v69[14];
  v104 = v69[9];
  v1419[8] = v69[8];
  v1419[9] = v104;
  v105 = v69[11];
  v1419[10] = v69[10];
  v1419[11] = v105;
  v106 = v69[5];
  v1419[4] = v69[4];
  v1419[5] = v106;
  v107 = v69[7];
  v1419[6] = v69[6];
  v1419[7] = v107;
  v108 = v69[1];
  v1419[0] = *v69;
  v1419[1] = v108;
  v109 = v69[3];
  v1419[2] = v69[2];
  v1418 = *(v61 + 240);
  v1420 = *(v69 + 30);
  v1419[3] = v109;
  v110 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1419);
  v111 = BYTE9(v1419[0]);
  v1401[12] = v1415;
  v1401[13] = v1416;
  v1401[14] = v1417;
  v1402 = v1418;
  v1401[8] = v1411;
  v1401[9] = v1412;
  v1401[10] = v1413;
  v1401[11] = v1414;
  v1401[4] = v1407;
  v1401[5] = v1408;
  v1401[6] = v1409;
  v1401[7] = v1410;
  v1401[0] = v1403;
  v1401[1] = v1404;
  v1401[2] = v1405;
  v1401[3] = v1406;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1401) != 1)
  {
    if (v110 != 1 && ((v111 ^ BYTE9(v1401[0])) & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v110 != 1)
  {
LABEL_34:
    v1485 |= 0x100000uLL;
  }

LABEL_35:
  v112 = *(v61 + 208);
  v1397 = *(v61 + 192);
  v1398 = v112;
  v1399 = *(v61 + 224);
  v113 = *(v61 + 144);
  v1393 = *(v61 + 128);
  v1394 = v113;
  v114 = *(v61 + 176);
  v1395 = *(v61 + 160);
  v1396 = v114;
  v115 = *(v61 + 80);
  v1389 = *(v61 + 64);
  v1390 = v115;
  v116 = *(v61 + 112);
  v1391 = *(v61 + 96);
  v1392 = v116;
  v117 = *(v61 + 16);
  v1385 = *v61;
  v1386 = v117;
  v118 = *(v61 + 48);
  v1387 = *(v61 + 32);
  v1400 = *(v61 + 240);
  v1388 = v118;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1385) == 1)
  {
    v119 = 0;
  }

  else
  {
    v119 = v1386;
    v120 = v1386;
  }

  v121 = v69[13];
  v1381 = v69[12];
  v1382 = v121;
  v1383 = v69[14];
  v122 = v69[9];
  v1377 = v69[8];
  v1378 = v122;
  v123 = v69[11];
  v1379 = v69[10];
  v1380 = v123;
  v124 = v69[5];
  v1373 = v69[4];
  v1374 = v124;
  v125 = v69[7];
  v1375 = v69[6];
  v1376 = v125;
  v126 = v69[1];
  v1369 = *v69;
  v1370 = v126;
  v127 = v69[3];
  v1371 = v69[2];
  v1384 = *(v69 + 30);
  v1372 = v127;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1369) == 1)
  {
    if (!v119)
    {

      goto LABEL_49;
    }

    v128 = sub_1CF9E57E8();
LABEL_45:

    goto LABEL_48;
  }

  v129 = v1370;
  v130 = v1370;
  if (!v119)
  {

    if (!v129)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v128 = sub_1CF9E57E8();
  if (!v129)
  {
    goto LABEL_45;
  }

  v131 = v128;
  v132 = sub_1CF9E57E8();
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  v133 = sub_1CF9E7568();

  if ((v133 & 1) == 0)
  {
LABEL_48:
    v1485 |= 0x200000uLL;
  }

LABEL_49:
  v134 = *(v61 + 208);
  v1365 = *(v61 + 192);
  v1366 = v134;
  v1367 = *(v61 + 224);
  v135 = *(v61 + 144);
  v1361 = *(v61 + 128);
  v1362 = v135;
  v136 = *(v61 + 176);
  v1363 = *(v61 + 160);
  v1364 = v136;
  v137 = *(v61 + 80);
  v1357 = *(v61 + 64);
  v1358 = v137;
  v138 = *(v61 + 112);
  v1359 = *(v61 + 96);
  v1360 = v138;
  v139 = *(v61 + 16);
  v1353 = *v61;
  v1354 = v139;
  v140 = *(v61 + 48);
  v1355 = *(v61 + 32);
  v1368 = *(v61 + 240);
  v1356 = v140;
  v141 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1353);
  v142 = v69[13];
  v1349 = v69[12];
  v1350 = v142;
  v1351 = v69[14];
  v143 = v69[9];
  v1345 = v69[8];
  v1346 = v143;
  v144 = v69[11];
  v1347 = v69[10];
  v1348 = v144;
  v145 = v69[5];
  v1341 = v69[4];
  v1342 = v145;
  v146 = v69[7];
  v1343 = v69[6];
  v1344 = v146;
  v147 = v69[1];
  v1337 = *v69;
  v1338 = v147;
  v148 = v69[3];
  v1339 = v69[2];
  v149 = v141 == 1 || *(&v1354 + 1) == 0;
  v150 = !v149;
  v1352 = *(v69 + 30);
  v1340 = v148;
  v152 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1337) == 1 || *(&v1338 + 1) == 0;
  if (v150 == v152)
  {
    v1485 |= 0x400000uLL;
  }

  v153 = *(v61 + 208);
  v1318 = *(v61 + 192);
  v1319 = v153;
  v1320 = *(v61 + 224);
  v154 = *(v61 + 144);
  v1314 = *(v61 + 128);
  v1315 = v154;
  v155 = *(v61 + 176);
  v1316 = *(v61 + 160);
  v1317 = v155;
  v156 = *(v61 + 80);
  v1310 = *(v61 + 64);
  v1311 = v156;
  v157 = *(v61 + 112);
  v1312 = *(v61 + 96);
  v1313 = v157;
  v158 = *(v61 + 16);
  v1306 = *v61;
  v1307 = v158;
  v159 = *(v61 + 48);
  v1308 = *(v61 + 32);
  v1309 = v159;
  v160 = v69[13];
  v1333 = v69[12];
  v1334 = v160;
  v1335 = v69[14];
  v161 = v69[9];
  v1329 = v69[8];
  v1330 = v161;
  v162 = v69[11];
  v1331 = v69[10];
  v1332 = v162;
  v163 = v69[5];
  v1325 = v69[4];
  v1326 = v163;
  v164 = v69[7];
  v1327 = v69[6];
  v1328 = v164;
  v165 = v69[1];
  v1322[0] = *v69;
  v1322[1] = v165;
  v166 = v69[3];
  v1323 = v69[2];
  v1321 = *(v61 + 240);
  v1336 = *(v69 + 30);
  v1324 = v166;
  v167 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1322);
  v168 = v1323;
  v1302 = v1318;
  v1303 = v1319;
  v1304 = v1320;
  v1305 = v1321;
  v1298 = v1314;
  v1299 = v1315;
  v1300 = v1316;
  v1301 = v1317;
  v1294 = v1310;
  v1295 = v1311;
  v1296 = v1312;
  v1297 = v1313;
  v1291[0] = v1306;
  v1291[1] = v1307;
  v1292 = v1308;
  v1293 = v1309;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1291) == 1)
  {
    if (v167 == 1)
    {
      goto LABEL_69;
    }

LABEL_68:
    v1485 |= 0x1000000uLL;
    goto LABEL_69;
  }

  if (v167 == 1 || ((v168 ^ v1292) & 1) != 0)
  {
    goto LABEL_68;
  }

LABEL_69:
  v169 = *(v61 + 208);
  v1272 = *(v61 + 192);
  v1273 = v169;
  v1274 = *(v61 + 224);
  v1275 = *(v61 + 240);
  v170 = *(v61 + 144);
  v1268 = *(v61 + 128);
  v1269 = v170;
  v171 = *(v61 + 176);
  v1270 = *(v61 + 160);
  v1271 = v171;
  v172 = *(v61 + 80);
  v1264 = *(v61 + 64);
  v1265 = v172;
  v173 = *(v61 + 112);
  v1266 = *(v61 + 96);
  v1267 = v173;
  v174 = *(v61 + 16);
  v1260 = *v61;
  v1261 = v174;
  v175 = *(v61 + 48);
  v1262 = *(v61 + 32);
  v1263 = v175;
  v176 = v69[13];
  v1287 = v69[12];
  v1288 = v176;
  v1289 = v69[14];
  v1290 = *(v69 + 30);
  v177 = v69[9];
  v1283 = v69[8];
  v1284 = v177;
  v178 = v69[11];
  v1285 = v69[10];
  v1286 = v178;
  v179 = v69[5];
  v1279 = v69[4];
  v1280 = v179;
  v180 = v69[7];
  v1281 = v69[6];
  v1282 = v180;
  v181 = v69[1];
  v1276[0] = *v69;
  v1276[1] = v181;
  v182 = v69[3];
  v1277 = v69[2];
  v1278 = v182;
  v183 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1276);
  v184 = BYTE1(v1277);
  v1256 = v1272;
  v1257 = v1273;
  v1258 = v1274;
  v1259 = v1275;
  v1252 = v1268;
  v1253 = v1269;
  v1254 = v1270;
  v1255 = v1271;
  v1248 = v1264;
  v1249 = v1265;
  v1250 = v1266;
  v1251 = v1267;
  v1245[0] = v1260;
  v1245[1] = v1261;
  v1246 = v1262;
  v1247 = v1263;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1245) == 1)
  {
    if (v183 == 1)
    {
      goto LABEL_75;
    }

LABEL_74:
    v1485 |= 0x2000000uLL;
    goto LABEL_75;
  }

  if (v183 == 1 || ((v184 ^ BYTE1(v1246)) & 1) != 0)
  {
    goto LABEL_74;
  }

LABEL_75:
  v185 = *(v61 + 208);
  v1226 = *(v61 + 192);
  v1227 = v185;
  v1228 = *(v61 + 224);
  v186 = *(v61 + 144);
  v1222 = *(v61 + 128);
  v1223 = v186;
  v187 = *(v61 + 176);
  v1224 = *(v61 + 160);
  v1225 = v187;
  v188 = *(v61 + 80);
  v1218 = *(v61 + 64);
  v1219 = v188;
  v189 = *(v61 + 112);
  v1220 = *(v61 + 96);
  v1221 = v189;
  v190 = *(v61 + 16);
  v1214 = *v61;
  v1215 = v190;
  v191 = *(v61 + 48);
  v1216 = *(v61 + 32);
  v1217 = v191;
  v192 = v69[13];
  v1241 = v69[12];
  v1242 = v192;
  v1243 = v69[14];
  v193 = v69[9];
  v1237 = v69[8];
  v1238 = v193;
  v194 = v69[11];
  v1239 = v69[10];
  v1240 = v194;
  v195 = v69[5];
  v1233 = v69[4];
  v1234 = v195;
  v196 = v69[7];
  v1235 = v69[6];
  v1236 = v196;
  v197 = v69[1];
  v1230[0] = *v69;
  v1230[1] = v197;
  v198 = v69[3];
  v1231 = v69[2];
  v1229 = *(v61 + 240);
  v1244 = *(v69 + 30);
  v1232 = v198;
  v199 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1230);
  v200 = BYTE2(v1231);
  v1210 = v1226;
  v1211 = v1227;
  v1212 = v1228;
  v1213 = v1229;
  v1206 = v1222;
  v1207 = v1223;
  v1208 = v1224;
  v1209 = v1225;
  v1202 = v1218;
  v1203 = v1219;
  v1204 = v1220;
  v1205 = v1221;
  v1199[0] = v1214;
  v1199[1] = v1215;
  v1200 = v1216;
  v1201 = v1217;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1199) != 1)
  {
    if (v199 != 1 && ((v200 ^ BYTE2(v1200)) & 1) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (v199 != 1)
  {
LABEL_80:
    v1485 |= 0x4000000uLL;
  }

LABEL_81:
  v201 = *(v61 + 208);
  v1195 = *(v61 + 192);
  v1196 = v201;
  v1197 = *(v61 + 224);
  v202 = *(v61 + 144);
  v1191 = *(v61 + 128);
  v1192 = v202;
  v203 = *(v61 + 176);
  v1193 = *(v61 + 160);
  v1194 = v203;
  v204 = *(v61 + 80);
  v1187 = *(v61 + 64);
  v1188 = v204;
  v205 = *(v61 + 112);
  v1189 = *(v61 + 96);
  v1190 = v205;
  v206 = *(v61 + 16);
  v1184[0] = *v61;
  v1184[1] = v206;
  v207 = *(v61 + 48);
  v1185 = *(v61 + 32);
  v1198 = *(v61 + 240);
  v1186 = v207;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1184) == 1)
  {
    v208 = 0;
    v209 = 0;
  }

  else
  {
    v208 = *(&v1185 + 1);
    v209 = v1186;
  }

  v210 = v69[13];
  v1180 = v69[12];
  v1181 = v210;
  v1182 = v69[14];
  v211 = v69[9];
  v1176 = v69[8];
  v1177 = v211;
  v212 = v69[11];
  v1178 = v69[10];
  v1179 = v212;
  v213 = v69[5];
  v1172 = v69[4];
  v1173 = v213;
  v214 = v69[7];
  v1174 = v69[6];
  v1175 = v214;
  v215 = v69[1];
  v1169[0] = *v69;
  v1169[1] = v215;
  v216 = v69[3];
  v1170 = v69[2];
  v1183 = *(v69 + 30);
  v1171 = v216;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1169) == 1)
  {
    if (!v209)
    {
      goto LABEL_96;
    }

    goto LABEL_92;
  }

  v224 = *(&v1170 + 1);
  v225 = v1171;

  if (!v209)
  {
    if (!v225)
    {
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  if (!v225)
  {
LABEL_92:
    v225 = v209;
LABEL_94:
    v225, v217, v218, v219, v220, v221, v222, v223;
LABEL_95:
    v1485 |= 0x8000000uLL;
    goto LABEL_96;
  }

  if (v208 == v224 && v209 == v225)
  {
    v209, v217, v218, v219, v220, v221, v222, v223;
    v225, v226, v227, v228, v229, v230, v231, v232;
    goto LABEL_96;
  }

  v606 = sub_1CF9E8048();
  v209, v607, v608, v609, v610, v611, v612, v613;
  v225, v614, v615, v616, v617, v618, v619, v620;
  if ((v606 & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_96:
  v233 = *(v61 + 208);
  v1165 = *(v61 + 192);
  v1166 = v233;
  v1167 = *(v61 + 224);
  v234 = *(v61 + 144);
  v1161 = *(v61 + 128);
  v1162 = v234;
  v235 = *(v61 + 176);
  v1163 = *(v61 + 160);
  v1164 = v235;
  v236 = *(v61 + 80);
  v1157 = *(v61 + 64);
  v1158 = v236;
  v237 = *(v61 + 112);
  v1159 = *(v61 + 96);
  v1160 = v237;
  v238 = *(v61 + 16);
  v1155[0] = *v61;
  v1155[1] = v238;
  v239 = *(v61 + 48);
  v1155[2] = *(v61 + 32);
  v1168 = *(v61 + 240);
  v1156 = v239;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1155) == 1)
  {
    v240 = 0;
    v241 = 0;
  }

  else
  {
    v240 = *(&v1156 + 1);
    v241 = v1157;
  }

  v242 = v69[13];
  v1151 = v69[12];
  v1152 = v242;
  v1153 = v69[14];
  v243 = v69[9];
  v1147 = v69[8];
  v1148 = v243;
  v244 = v69[11];
  v1149 = v69[10];
  v1150 = v244;
  v245 = v69[5];
  v1143 = v69[4];
  v1144 = v245;
  v246 = v69[7];
  v1145 = v69[6];
  v1146 = v246;
  v247 = v69[1];
  v1141[0] = *v69;
  v1141[1] = v247;
  v248 = v69[3];
  v1141[2] = v69[2];
  v1154 = *(v69 + 30);
  v1142 = v248;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1141) == 1)
  {
    if (!v241)
    {
      goto LABEL_111;
    }

    goto LABEL_107;
  }

  v256 = *(&v1142 + 1);
  v257 = v1143;

  if (!v241)
  {
    if (!v257)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  if (!v257)
  {
LABEL_107:
    v257 = v241;
LABEL_109:
    v257, v249, v250, v251, v252, v253, v254, v255;
LABEL_110:
    v1485 |= 0x10000000uLL;
    goto LABEL_111;
  }

  if (v240 == v256 && v241 == v257)
  {
    v241, v249, v250, v251, v252, v253, v254, v255;
    v257, v258, v259, v260, v261, v262, v263, v264;
    goto LABEL_111;
  }

  v621 = sub_1CF9E8048();
  v241, v622, v623, v624, v625, v626, v627, v628;
  v257, v629, v630, v631, v632, v633, v634, v635;
  if ((v621 & 1) == 0)
  {
    goto LABEL_110;
  }

LABEL_111:
  v265 = *(v61 + 208);
  v1124 = *(v61 + 192);
  v1125 = v265;
  v1126 = *(v61 + 224);
  v266 = *(v61 + 144);
  v1120 = *(v61 + 128);
  v1121 = v266;
  v267 = *(v61 + 176);
  v1122 = *(v61 + 160);
  v1123 = v267;
  v268 = *(v61 + 80);
  v1116 = *(v61 + 64);
  v1117 = v268;
  v269 = *(v61 + 112);
  v1118 = *(v61 + 96);
  v1119 = v269;
  v270 = *(v61 + 16);
  v1112 = *v61;
  v1113 = v270;
  v271 = *(v61 + 48);
  v1114 = *(v61 + 32);
  v1115 = v271;
  v272 = v69[13];
  v1137 = v69[12];
  v1138 = v272;
  v1139 = v69[14];
  v273 = v69[9];
  v1133 = v69[8];
  v1134 = v273;
  v274 = v69[11];
  v1135 = v69[10];
  v1136 = v274;
  v275 = v69[5];
  v1129 = v69[4];
  v1130 = v275;
  v276 = v69[7];
  v1131 = v69[6];
  v1132 = v276;
  v277 = v69[1];
  v1128[0] = *v69;
  v1128[1] = v277;
  v278 = v69[3];
  v1128[2] = v69[2];
  v1127 = *(v61 + 240);
  v1140 = *(v69 + 30);
  v1128[3] = v278;
  v279 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1128);
  v280 = BYTE8(v1129);
  v1108 = v1124;
  v1109 = v1125;
  v1110 = v1126;
  v1111 = v1127;
  v1104 = v1120;
  v1105 = v1121;
  v1106 = v1122;
  v1107 = v1123;
  v1100 = v1116;
  v1101 = v1117;
  v1102 = v1118;
  v1103 = v1119;
  v1099[0] = v1112;
  v1099[1] = v1113;
  v1099[2] = v1114;
  v1099[3] = v1115;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1099) != 1)
  {
    if (v279 != 1 && ((v280 ^ BYTE8(v1100)) & 1) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

  if (v279 != 1)
  {
LABEL_116:
    v1485 |= 0x20000000uLL;
  }

LABEL_117:
  v281 = *(v61 + 208);
  v1095 = *(v61 + 192);
  v1096 = v281;
  v1097 = *(v61 + 224);
  v282 = *(v61 + 144);
  v1091 = *(v61 + 128);
  v1092 = v282;
  v283 = *(v61 + 176);
  v1093 = *(v61 + 160);
  v1094 = v283;
  v284 = *(v61 + 80);
  v1087[4] = *(v61 + 64);
  v1088 = v284;
  v285 = *(v61 + 112);
  v1089 = *(v61 + 96);
  v1090 = v285;
  v286 = *(v61 + 16);
  v1087[0] = *v61;
  v1087[1] = v286;
  v287 = *(v61 + 48);
  v1087[2] = *(v61 + 32);
  v1098 = *(v61 + 240);
  v1087[3] = v287;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1087) == 1)
  {
    v288 = 0;
    v289 = 0;
  }

  else
  {
    v289 = *(&v1088 + 1);
    v288 = v1088;
  }

  v290 = v69[13];
  v1083 = v69[12];
  v1084 = v290;
  v1085 = v69[14];
  v291 = v69[9];
  v1079 = v69[8];
  v1080 = v291;
  v292 = v69[11];
  v1081 = v69[10];
  v1082 = v292;
  v293 = v69[5];
  v1075[4] = v69[4];
  v1076 = v293;
  v294 = v69[7];
  v1077 = v69[6];
  v1078 = v294;
  v295 = v69[1];
  v1075[0] = *v69;
  v1075[1] = v295;
  v296 = v69[3];
  v1075[2] = v69[2];
  v1086 = *(v69 + 30);
  v1075[3] = v296;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1075) == 1)
  {
    if (!v289)
    {
      goto LABEL_132;
    }

    goto LABEL_128;
  }

  v304 = *(&v1076 + 1);
  v305 = v1076;

  if (!v289)
  {
    if (!v304)
    {
      goto LABEL_132;
    }

    goto LABEL_130;
  }

  if (!v304)
  {
LABEL_128:
    v304 = v289;
LABEL_130:
    v304, v297, v298, v299, v300, v301, v302, v303;
LABEL_131:
    v1485 |= 0x40000000uLL;
    goto LABEL_132;
  }

  if (v288 == v305 && v289 == v304)
  {
    v289, v297, v298, v299, v300, v301, v302, v303;
    v304, v306, v307, v308, v309, v310, v311, v312;
    goto LABEL_132;
  }

  v636 = sub_1CF9E8048();
  v289, v637, v638, v639, v640, v641, v642, v643;
  v304, v644, v645, v646, v647, v648, v649, v650;
  if ((v636 & 1) == 0)
  {
    goto LABEL_131;
  }

LABEL_132:
  v313 = *(v61 + 208);
  v1060 = *(v61 + 192);
  v1061 = v313;
  v1062 = *(v61 + 224);
  v314 = *(v61 + 144);
  v1056 = *(v61 + 128);
  v1057 = v314;
  v315 = *(v61 + 176);
  v1058 = *(v61 + 160);
  v1059 = v315;
  v316 = *(v61 + 80);
  v1052 = *(v61 + 64);
  v1053 = v316;
  v317 = *(v61 + 112);
  v1054 = *(v61 + 96);
  v1055 = v317;
  v318 = *(v61 + 16);
  v1048 = *v61;
  v1049 = v318;
  v319 = *(v61 + 48);
  v1050 = *(v61 + 32);
  v1051 = v319;
  v320 = v69[13];
  v1071 = v69[12];
  v1072 = v320;
  v1073 = v69[14];
  v321 = v69[9];
  v1067 = v69[8];
  v1068 = v321;
  v322 = v69[11];
  v1069 = v69[10];
  v1070 = v322;
  v323 = v69[5];
  v1064[4] = v69[4];
  v1064[5] = v323;
  v324 = v69[7];
  v1065 = v69[6];
  v1066 = v324;
  v325 = v69[1];
  v1064[0] = *v69;
  v1064[1] = v325;
  v326 = v69[3];
  v1064[2] = v69[2];
  v1063 = *(v61 + 240);
  v1074 = *(v69 + 30);
  v1064[3] = v326;
  v327 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1064);
  v328 = BYTE8(v1065);
  v1044 = v1060;
  v1045 = v1061;
  v1046 = v1062;
  v1047 = v1063;
  v1040 = v1056;
  v1041 = v1057;
  v1042 = v1058;
  v1043 = v1059;
  v1037[4] = v1052;
  v1037[5] = v1053;
  v1038 = v1054;
  v1039 = v1055;
  v1037[0] = v1048;
  v1037[1] = v1049;
  v1037[2] = v1050;
  v1037[3] = v1051;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1037) == 1)
  {
    if (v327 == 1)
    {
      goto LABEL_138;
    }

LABEL_137:
    v1485 |= 0x80000000uLL;
    goto LABEL_138;
  }

  if (v327 == 1 || ((v328 ^ BYTE8(v1038)) & 1) != 0)
  {
    goto LABEL_137;
  }

LABEL_138:
  v329 = *(v61 + 208);
  v1022 = *(v61 + 192);
  v1023 = v329;
  v1024 = *(v61 + 224);
  v1025 = *(v61 + 240);
  v330 = *(v61 + 144);
  v1018 = *(v61 + 128);
  v1019 = v330;
  v331 = *(v61 + 176);
  v1020 = *(v61 + 160);
  v1021 = v331;
  v332 = *(v61 + 80);
  v1014 = *(v61 + 64);
  v1015 = v332;
  v333 = *(v61 + 112);
  v1016 = *(v61 + 96);
  v1017 = v333;
  v334 = *(v61 + 16);
  v1010 = *v61;
  v1011 = v334;
  v335 = *(v61 + 48);
  v1012 = *(v61 + 32);
  v1013 = v335;
  v336 = v69[13];
  v1033 = v69[12];
  v1034 = v336;
  v1035 = v69[14];
  v1036 = *(v69 + 30);
  v337 = v69[9];
  v1029 = v69[8];
  v1030 = v337;
  v338 = v69[11];
  v1031 = v69[10];
  v1032 = v338;
  v339 = v69[5];
  v1026[4] = v69[4];
  v1026[5] = v339;
  v340 = v69[7];
  v1027 = v69[6];
  v1028 = v340;
  v341 = v69[1];
  v1026[0] = *v69;
  v1026[1] = v341;
  v342 = v69[3];
  v1026[2] = v69[2];
  v1026[3] = v342;
  v343 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1026);
  v1006 = v1022;
  v1007 = v1023;
  v1008 = v1024;
  v1002 = v1018;
  v1003 = v1019;
  v1004 = v1020;
  v1005 = v1021;
  v999[4] = v1014;
  v999[5] = v1015;
  v1000 = v1016;
  v1001 = v1017;
  v999[0] = v1010;
  v999[1] = v1011;
  v999[2] = v1012;
  v344 = BYTE9(v1027);
  v1009 = v1025;
  v999[3] = v1013;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v999) != 1)
  {
    if (v343 != 1 && ((v344 ^ BYTE9(v1000)) & 1) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

  if (v343 != 1)
  {
LABEL_143:
    v1485 |= 0x100000000uLL;
  }

LABEL_144:
  v345 = *(v61 + 208);
  v995 = *(v61 + 192);
  v996 = v345;
  v997 = *(v61 + 224);
  v346 = *(v61 + 144);
  v991 = *(v61 + 128);
  v992 = v346;
  v347 = *(v61 + 176);
  v993 = *(v61 + 160);
  v994 = v347;
  v348 = *(v61 + 80);
  v989[4] = *(v61 + 64);
  v989[5] = v348;
  v349 = *(v61 + 112);
  v989[6] = *(v61 + 96);
  v990 = v349;
  v350 = *(v61 + 16);
  v989[0] = *v61;
  v989[1] = v350;
  v351 = *(v61 + 48);
  v989[2] = *(v61 + 32);
  v998 = *(v61 + 240);
  v989[3] = v351;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v989) == 1)
  {
    v352 = 0;
    v353 = 0;
  }

  else
  {
    v353 = *(&v990 + 1);
    v352 = v990;
  }

  v354 = v69[13];
  v985 = v69[12];
  v986 = v354;
  v987 = v69[14];
  v355 = v69[9];
  v981 = v69[8];
  v982 = v355;
  v356 = v69[11];
  v983 = v69[10];
  v984 = v356;
  v357 = v69[5];
  v979[4] = v69[4];
  v979[5] = v357;
  v358 = v69[7];
  v979[6] = v69[6];
  v980 = v358;
  v359 = v69[1];
  v979[0] = *v69;
  v979[1] = v359;
  v360 = v69[3];
  v979[2] = v69[2];
  v988 = *(v69 + 30);
  v979[3] = v360;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v979) == 1)
  {
    if (!v353)
    {
      goto LABEL_159;
    }

    goto LABEL_155;
  }

  v368 = *(&v980 + 1);
  v369 = v980;

  if (!v353)
  {
    if (!v368)
    {
      goto LABEL_159;
    }

    goto LABEL_157;
  }

  if (!v368)
  {
LABEL_155:
    v368 = v353;
LABEL_157:
    v368, v361, v362, v363, v364, v365, v366, v367;
LABEL_158:
    v1485 |= 0x200000000uLL;
    goto LABEL_159;
  }

  if (v352 == v369 && v353 == v368)
  {
    v353, v361, v362, v363, v364, v365, v366, v367;
    v368, v370, v371, v372, v373, v374, v375, v376;
    goto LABEL_159;
  }

  v651 = sub_1CF9E8048();
  v353, v652, v653, v654, v655, v656, v657, v658;
  v368, v659, v660, v661, v662, v663, v664, v665;
  if ((v651 & 1) == 0)
  {
    goto LABEL_158;
  }

LABEL_159:
  v377 = *(v61 + 208);
  v975 = *(v61 + 192);
  v976 = v377;
  v977 = *(v61 + 224);
  v378 = *(v61 + 144);
  v971 = *(v61 + 128);
  v972 = v378;
  v379 = *(v61 + 176);
  v973 = *(v61 + 160);
  v974 = v379;
  v380 = *(v61 + 80);
  v970[4] = *(v61 + 64);
  v970[5] = v380;
  v381 = *(v61 + 112);
  v970[6] = *(v61 + 96);
  v970[7] = v381;
  v382 = *(v61 + 16);
  v970[0] = *v61;
  v970[1] = v382;
  v383 = *(v61 + 48);
  v970[2] = *(v61 + 32);
  v978 = *(v61 + 240);
  v970[3] = v383;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v970) == 1)
  {
    v384 = 0;
    v385 = 0;
  }

  else
  {
    v385 = *(&v971 + 1);
    v384 = v971;
  }

  v386 = v69[13];
  v966 = v69[12];
  v967 = v386;
  v968 = v69[14];
  v387 = v69[9];
  v962 = v69[8];
  v963 = v387;
  v388 = v69[11];
  v964 = v69[10];
  v965 = v388;
  v389 = v69[5];
  v961[4] = v69[4];
  v961[5] = v389;
  v390 = v69[7];
  v961[6] = v69[6];
  v961[7] = v390;
  v391 = v69[1];
  v961[0] = *v69;
  v961[1] = v391;
  v392 = v69[3];
  v961[2] = v69[2];
  v969 = *(v69 + 30);
  v961[3] = v392;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v961) == 1)
  {
    if (!v385)
    {
      goto LABEL_174;
    }

    goto LABEL_170;
  }

  v400 = *(&v962 + 1);
  v401 = v962;

  if (!v385)
  {
    if (!v400)
    {
      goto LABEL_174;
    }

    goto LABEL_172;
  }

  if (!v400)
  {
LABEL_170:
    v400 = v385;
LABEL_172:
    v400, v393, v394, v395, v396, v397, v398, v399;
LABEL_173:
    v1485 |= 0x400000000uLL;
    goto LABEL_174;
  }

  if (v384 == v401 && v385 == v400)
  {
    v385, v393, v394, v395, v396, v397, v398, v399;
    v400, v402, v403, v404, v405, v406, v407, v408;
    goto LABEL_174;
  }

  v666 = sub_1CF9E8048();
  v385, v667, v668, v669, v670, v671, v672, v673;
  v400, v674, v675, v676, v677, v678, v679, v680;
  if ((v666 & 1) == 0)
  {
    goto LABEL_173;
  }

LABEL_174:
  v409 = *(v61 + 208);
  v957 = *(v61 + 192);
  v958 = v409;
  v959 = *(v61 + 224);
  v410 = *(v61 + 144);
  v953[8] = *(v61 + 128);
  v954 = v410;
  v411 = *(v61 + 176);
  v955 = *(v61 + 160);
  v956 = v411;
  v412 = *(v61 + 80);
  v953[4] = *(v61 + 64);
  v953[5] = v412;
  v413 = *(v61 + 112);
  v953[6] = *(v61 + 96);
  v953[7] = v413;
  v414 = *(v61 + 16);
  v953[0] = *v61;
  v953[1] = v414;
  v415 = *(v61 + 48);
  v953[2] = *(v61 + 32);
  v960 = *(v61 + 240);
  v953[3] = v415;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v953) == 1)
  {
    v416 = 0;
    v417 = 0;
  }

  else
  {
    v417 = *(&v954 + 1);
    v416 = v954;
  }

  v418 = v69[13];
  v949 = v69[12];
  v950 = v418;
  v951 = v69[14];
  v419 = v69[9];
  v945[8] = v69[8];
  v946 = v419;
  v420 = v69[11];
  v947 = v69[10];
  v948 = v420;
  v421 = v69[5];
  v945[4] = v69[4];
  v945[5] = v421;
  v422 = v69[7];
  v945[6] = v69[6];
  v945[7] = v422;
  v423 = v69[1];
  v945[0] = *v69;
  v945[1] = v423;
  v424 = v69[3];
  v945[2] = v69[2];
  v952 = *(v69 + 30);
  v945[3] = v424;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v945) == 1)
  {
    if (!v417)
    {
      goto LABEL_189;
    }

    goto LABEL_185;
  }

  v432 = *(&v946 + 1);
  v433 = v946;

  if (!v417)
  {
    if (!v432)
    {
      goto LABEL_189;
    }

    goto LABEL_187;
  }

  if (!v432)
  {
LABEL_185:
    v432 = v417;
LABEL_187:
    v432, v425, v426, v427, v428, v429, v430, v431;
LABEL_188:
    v1485 |= 0x800000000uLL;
    goto LABEL_189;
  }

  if (v416 == v433 && v417 == v432)
  {
    v417, v425, v426, v427, v428, v429, v430, v431;
    v432, v434, v435, v436, v437, v438, v439, v440;
    goto LABEL_189;
  }

  v681 = sub_1CF9E8048();
  v417, v682, v683, v684, v685, v686, v687, v688;
  v432, v689, v690, v691, v692, v693, v694, v695;
  if ((v681 & 1) == 0)
  {
    goto LABEL_188;
  }

LABEL_189:
  v441 = *(v61 + 208);
  v941 = *(v61 + 192);
  v942 = v441;
  v943 = *(v61 + 224);
  v442 = *(v61 + 144);
  v938[8] = *(v61 + 128);
  v938[9] = v442;
  v443 = *(v61 + 176);
  v939 = *(v61 + 160);
  v940 = v443;
  v444 = *(v61 + 80);
  v938[4] = *(v61 + 64);
  v938[5] = v444;
  v445 = *(v61 + 112);
  v938[6] = *(v61 + 96);
  v938[7] = v445;
  v446 = *(v61 + 16);
  v938[0] = *v61;
  v938[1] = v446;
  v447 = *(v61 + 48);
  v938[2] = *(v61 + 32);
  v944 = *(v61 + 240);
  v938[3] = v447;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v938) == 1)
  {
    v448 = 0;
    v449 = 0;
  }

  else
  {
    v449 = *(&v939 + 1);
    v448 = v939;
  }

  v450 = v69[13];
  v934 = v69[12];
  v935 = v450;
  v936 = v69[14];
  v451 = v69[9];
  v931[8] = v69[8];
  v931[9] = v451;
  v452 = v69[11];
  v932 = v69[10];
  v933 = v452;
  v453 = v69[5];
  v931[4] = v69[4];
  v931[5] = v453;
  v454 = v69[7];
  v931[6] = v69[6];
  v931[7] = v454;
  v455 = v69[1];
  v931[0] = *v69;
  v931[1] = v455;
  v456 = v69[3];
  v931[2] = v69[2];
  v937 = *(v69 + 30);
  v931[3] = v456;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v931) == 1)
  {
    if (v449)
    {
      v464 = 0;
LABEL_201:
      v449, v457, v458, v459, v460, v461, v462, v463;
      v464, v492, v493, v494, v495, v496, v497, v498;
LABEL_202:
      v1485 |= 0x1000000000uLL;
      goto LABEL_205;
    }

    goto LABEL_203;
  }

  v464 = *(&v932 + 1);
  v465 = v932;

  if (!v449)
  {
    if (v464)
    {
      goto LABEL_201;
    }

LABEL_203:
    v491 = 0;
    goto LABEL_204;
  }

  if (!v464)
  {
    goto LABEL_201;
  }

  *&v925[0] = v448;
  *(&v925[0] + 1) = v449;

  v466 = sub_1CF662E90();
  v468 = v467;
  v909 = __PAIR128__(v464, v465);
  v470 = sub_1CF662E90();
  v476 = v469;
  if (v466 == v470 && v468 == v469)
  {
    v469, v469, v470, v471, v472, v473, v474, v475;
    v468, v477, v478, v479, v480, v481, v482, v483;
    v449, v484, v485, v486, v487, v488, v489, v490;
    swift_bridgeObjectRelease_n();
    v491 = v449;
LABEL_204:
    v491, v457, v458, v459, v460, v461, v462, v463;
    goto LABEL_205;
  }

  v696 = sub_1CF9E8048();
  v476, v697, v698, v699, v700, v701, v702, v703;
  v468, v704, v705, v706, v707, v708, v709, v710;
  v449, v711, v712, v713, v714, v715, v716, v717;
  swift_bridgeObjectRelease_n();
  v449, v718, v719, v720, v721, v722, v723, v724;
  if ((v696 & 1) == 0)
  {
    goto LABEL_202;
  }

LABEL_205:
  v499 = *(v61 + 208);
  v921 = *(v61 + 192);
  v922 = v499;
  v923 = *(v61 + 224);
  v500 = *(v61 + 144);
  v917 = *(v61 + 128);
  v918 = v500;
  v501 = *(v61 + 176);
  v919 = *(v61 + 160);
  v920 = v501;
  v502 = *(v61 + 80);
  v913 = *(v61 + 64);
  v914 = v502;
  v503 = *(v61 + 112);
  v915 = *(v61 + 96);
  v916 = v503;
  v504 = *(v61 + 16);
  v909 = *v61;
  v910 = v504;
  v505 = *(v61 + 48);
  v911 = *(v61 + 32);
  v912 = v505;
  v506 = v69[13];
  v927 = v69[12];
  v928 = v506;
  v929 = v69[14];
  v507 = v69[9];
  v925[8] = v69[8];
  v925[9] = v507;
  v508 = v69[11];
  v925[10] = v69[10];
  v926 = v508;
  v509 = v69[5];
  v925[4] = v69[4];
  v925[5] = v509;
  v510 = v69[7];
  v925[6] = v69[6];
  v925[7] = v510;
  v511 = v69[1];
  v925[0] = *v69;
  v925[1] = v511;
  v512 = v69[3];
  v925[2] = v69[2];
  v924 = *(v61 + 240);
  v930 = *(v69 + 30);
  v925[3] = v512;
  v513 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v925);
  v514 = v926;
  v905 = v921;
  v906 = v922;
  v907 = v923;
  v908 = v924;
  v903[8] = v917;
  v903[9] = v918;
  v903[10] = v919;
  v904 = v920;
  v903[4] = v913;
  v903[5] = v914;
  v903[6] = v915;
  v903[7] = v916;
  v903[0] = v909;
  v903[1] = v910;
  v903[2] = v911;
  v903[3] = v912;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v903) != 1)
  {
    if (v513 != 1 && ((v514 ^ v904) & 1) == 0)
    {
      goto LABEL_211;
    }

    goto LABEL_210;
  }

  if (v513 != 1)
  {
LABEL_210:
    v1485 |= 0x2000000000uLL;
  }

LABEL_211:
  v515 = *(v61 + 208);
  v899 = *(v61 + 192);
  v900 = v515;
  v901 = *(v61 + 224);
  v516 = *(v61 + 144);
  v897[8] = *(v61 + 128);
  v897[9] = v516;
  v517 = *(v61 + 176);
  v897[10] = *(v61 + 160);
  v898 = v517;
  v518 = *(v61 + 80);
  v897[4] = *(v61 + 64);
  v897[5] = v518;
  v519 = *(v61 + 112);
  v897[6] = *(v61 + 96);
  v897[7] = v519;
  v520 = *(v61 + 16);
  v897[0] = *v61;
  v897[1] = v520;
  v521 = *(v61 + 48);
  v897[2] = *(v61 + 32);
  v902 = *(v61 + 240);
  v897[3] = v521;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v897) == 1)
  {
    v522 = 0;
  }

  else
  {
    v522 = *(&v898 + 1);
  }

  v523 = v69[13];
  v893 = v69[12];
  v894 = v523;
  v895 = v69[14];
  v524 = v69[9];
  v891[8] = v69[8];
  v891[9] = v524;
  v525 = v69[11];
  v891[10] = v69[10];
  v892 = v525;
  v526 = v69[5];
  v891[4] = v69[4];
  v891[5] = v526;
  v527 = v69[7];
  v891[6] = v69[6];
  v891[7] = v527;
  v528 = v69[1];
  v891[0] = *v69;
  v891[1] = v528;
  v529 = v69[3];
  v891[2] = v69[2];
  v896 = *(v69 + 30);
  v891[3] = v529;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v891) == 1)
  {
    if (!v522)
    {
      goto LABEL_225;
    }

    goto LABEL_221;
  }

  v537 = *(&v892 + 1);

  if (!v522)
  {
    if (!v537)
    {
      goto LABEL_225;
    }

    goto LABEL_223;
  }

  if (!v537)
  {
LABEL_221:
    v537 = v522;
LABEL_223:
    v537, v530, v531, v532, v533, v534, v535, v536;
    goto LABEL_224;
  }

  v538 = sub_1CF6BEA0C(v522, v537);
  v522, v539, v540, v541, v542, v543, v544, v545;
  v537, v546, v547, v548, v549, v550, v551, v552;
  if ((v538 & 1) == 0)
  {
LABEL_224:
    v1485 |= 0x4000000000uLL;
  }

LABEL_225:
  v553 = *(v61 + 208);
  v887 = *(v61 + 192);
  v888 = v553;
  v889 = *(v61 + 224);
  v554 = *(v61 + 144);
  v886[8] = *(v61 + 128);
  v886[9] = v554;
  v555 = *(v61 + 176);
  v886[10] = *(v61 + 160);
  v886[11] = v555;
  v556 = *(v61 + 80);
  v886[4] = *(v61 + 64);
  v886[5] = v556;
  v557 = *(v61 + 112);
  v886[6] = *(v61 + 96);
  v886[7] = v557;
  v558 = *(v61 + 16);
  v886[0] = *v61;
  v886[1] = v558;
  v559 = *(v61 + 48);
  v886[2] = *(v61 + 32);
  v890 = *(v61 + 240);
  v886[3] = v559;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v886) == 1)
  {
    v560 = 0;
    v561 = 0;
  }

  else
  {
    v561 = *(&v887 + 1);
    v560 = v887;
    sub_1CF075D00(v887, *(&v887 + 1));
  }

  v562 = v69[13];
  v882 = v69[12];
  v883 = v562;
  v884 = v69[14];
  v563 = v69[9];
  v881[8] = v69[8];
  v881[9] = v563;
  v564 = v69[11];
  v881[10] = v69[10];
  v881[11] = v564;
  v565 = v69[5];
  v881[4] = v69[4];
  v881[5] = v565;
  v566 = v69[7];
  v881[6] = v69[6];
  v881[7] = v566;
  v567 = v69[1];
  v881[0] = *v69;
  v881[1] = v567;
  v568 = v69[3];
  v881[2] = v69[2];
  v885 = *(v69 + 30);
  v881[3] = v568;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v881) == 1)
  {
    if (!v560)
    {
      goto LABEL_256;
    }

    goto LABEL_253;
  }

  v575 = v882;
  sub_1CF075D00(v882, *(&v882 + 1));
  if (!v560)
  {
    if (!v575)
    {
      goto LABEL_256;
    }

    v605 = *(&v575 + 1);
    v604 = v575;
    goto LABEL_254;
  }

  if (!v575)
  {
LABEL_253:
    v604 = v560;
    v605 = v561;
LABEL_254:
    sub_1CF24CCFC(v604, v605, v569, v570, v571, v572, v573, v574);
    goto LABEL_255;
  }

  if ((sub_1CF6BEA0C(v560, v575) & 1) == 0)
  {
    *(&v575 + 1), v576, v577, v578, v579, v580, v581, v582;
    v575, v725, v726, v727, v728, v729, v730, v731;
    goto LABEL_253;
  }

  v583 = sub_1CF6BEA0C(v561, *(&v575 + 1));
  *(&v575 + 1), v584, v585, v586, v587, v588, v589, v590;
  v575, v591, v592, v593, v594, v595, v596, v597;
  sub_1CF24CCFC(v560, v561, v598, v599, v600, v601, v602, v603);
  if ((v583 & 1) == 0)
  {
LABEL_255:
    v1485 |= 0x8000000000uLL;
  }

LABEL_256:
  v732 = *(v61 + 208);
  v877[12] = *(v61 + 192);
  v878 = v732;
  v879 = *(v61 + 224);
  v733 = *(v61 + 144);
  v877[8] = *(v61 + 128);
  v877[9] = v733;
  v734 = *(v61 + 176);
  v877[10] = *(v61 + 160);
  v877[11] = v734;
  v735 = *(v61 + 80);
  v877[4] = *(v61 + 64);
  v877[5] = v735;
  v736 = *(v61 + 112);
  v877[6] = *(v61 + 96);
  v877[7] = v736;
  v737 = *(v61 + 16);
  v877[0] = *v61;
  v877[1] = v737;
  v738 = *(v61 + 48);
  v877[2] = *(v61 + 32);
  v880 = *(v61 + 240);
  v877[3] = v738;
  v739 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v877);
  v740 = v69[13];
  v873[12] = v69[12];
  v874 = v740;
  v875 = v69[14];
  v741 = v69[9];
  v873[8] = v69[8];
  v873[9] = v741;
  v742 = v69[11];
  v873[10] = v69[10];
  v873[11] = v742;
  v743 = v69[5];
  v873[4] = v69[4];
  v873[5] = v743;
  v744 = v69[7];
  v873[6] = v69[6];
  v873[7] = v744;
  v745 = v69[1];
  v873[0] = *v69;
  v873[1] = v745;
  v746 = v69[3];
  v873[2] = v69[2];
  v747 = v878;
  v876 = *(v69 + 30);
  v873[3] = v746;
  v748 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v873);
  if (v739 == 1)
  {
    if (v748 == 1)
    {
      goto LABEL_262;
    }

    goto LABEL_261;
  }

  if (v748 == 1 || v747 != v874)
  {
LABEL_261:
    v1485 |= 0x2000000000000uLL;
  }

LABEL_262:
  v749 = *(v61 + 208);
  v870[12] = *(v61 + 192);
  v870[13] = v749;
  v871 = *(v61 + 224);
  v872 = *(v61 + 240);
  v750 = *(v61 + 144);
  v870[8] = *(v61 + 128);
  v870[9] = v750;
  v751 = *(v61 + 176);
  v870[10] = *(v61 + 160);
  v870[11] = v751;
  v752 = *(v61 + 80);
  v870[4] = *(v61 + 64);
  v870[5] = v752;
  v753 = *(v61 + 112);
  v870[6] = *(v61 + 96);
  v870[7] = v753;
  v754 = *(v61 + 16);
  v870[0] = *v61;
  v870[1] = v754;
  v755 = *(v61 + 48);
  v870[2] = *(v61 + 32);
  v870[3] = v755;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v870) == 1 || (v756 = v871) == 0)
  {
    v758 = 0;
  }

  else
  {

    v758 = sub_1CF93CD44(v757);
    v756, v759, v760, v761, v762, v763, v764, v765;
  }

  v766 = v69[13];
  v867[12] = v69[12];
  v867[13] = v766;
  v868 = v69[14];
  v869 = *(v69 + 30);
  v767 = v69[9];
  v867[8] = v69[8];
  v867[9] = v767;
  v768 = v69[11];
  v867[10] = v69[10];
  v867[11] = v768;
  v769 = v69[5];
  v867[4] = v69[4];
  v867[5] = v769;
  v770 = v69[7];
  v867[6] = v69[6];
  v867[7] = v770;
  v771 = v69[1];
  v867[0] = *v69;
  v867[1] = v771;
  v772 = v69[3];
  v867[2] = v69[2];
  v867[3] = v772;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v867) == 1 || (v780 = v868) == 0)
  {
    v782 = 0;
    if (!v758)
    {
LABEL_269:
      if (!v782)
      {
        goto LABEL_278;
      }

      goto LABEL_276;
    }
  }

  else
  {

    v782 = sub_1CF93CD44(v781);
    v780, v783, v784, v785, v786, v787, v788, v789;
    if (!v758)
    {
      goto LABEL_269;
    }
  }

  if (!v782)
  {
    v782 = v758;
LABEL_276:
    v782, v773, v774, v775, v776, v777, v778, v779;
    goto LABEL_277;
  }

  v790 = sub_1CF6BF228(v758, v782);
  v758, v791, v792, v793, v794, v795, v796, v797;
  v782, v798, v799, v800, v801, v802, v803, v804;
  if ((v790 & 1) == 0)
  {
LABEL_277:
    v1485 |= 0x4000000000000uLL;
  }

LABEL_278:
  v805 = *(v61 + 208);
  v864[12] = *(v61 + 192);
  v864[13] = v805;
  v865 = *(v61 + 224);
  v866 = *(v61 + 240);
  v806 = *(v61 + 144);
  v864[8] = *(v61 + 128);
  v864[9] = v806;
  v807 = *(v61 + 176);
  v864[10] = *(v61 + 160);
  v864[11] = v807;
  v808 = *(v61 + 80);
  v864[4] = *(v61 + 64);
  v864[5] = v808;
  v809 = *(v61 + 112);
  v864[6] = *(v61 + 96);
  v864[7] = v809;
  v810 = *(v61 + 16);
  v864[0] = *v61;
  v864[1] = v810;
  v811 = *(v61 + 48);
  v864[2] = *(v61 + 32);
  v864[3] = v811;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v864) == 1)
  {
    v812 = 0;
    v813 = 0;
  }

  else
  {
    v812 = *(&v865 + 1);
    v813 = v866;
  }

  v814 = v69[13];
  v861[12] = v69[12];
  v861[13] = v814;
  v862 = v69[14];
  v863 = *(v69 + 30);
  v815 = v69[9];
  v861[8] = v69[8];
  v861[9] = v815;
  v816 = v69[11];
  v861[10] = v69[10];
  v861[11] = v816;
  v817 = v69[5];
  v861[4] = v69[4];
  v861[5] = v817;
  v818 = v69[7];
  v861[6] = v69[6];
  v861[7] = v818;
  v819 = v69[1];
  v861[0] = *v69;
  v861[1] = v819;
  v820 = v69[3];
  v861[2] = v69[2];
  v861[3] = v820;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v861) == 1)
  {
    if (!v813)
    {
      goto LABEL_293;
    }

    goto LABEL_289;
  }

  v829 = *(&v862 + 1);
  v828 = v863;

  if (v813)
  {
    if (!v828)
    {
LABEL_289:
      v828 = v813;
LABEL_291:
      v828, v821, v822, v823, v824, v825, v826, v827;
LABEL_292:
      v1485 |= 0x8000000000000uLL;
      goto LABEL_293;
    }

    if (v812 != v829 || v813 != v828)
    {
      v837 = sub_1CF9E8048();
      v813, v838, v839, v840, v841, v842, v843, v844;
      v828, v845, v846, v847, v848, v849, v850, v851;
      if (v837)
      {
        goto LABEL_293;
      }

      goto LABEL_292;
    }

    v813, v821, v822, v823, v824, v825, v826, v827;
    v828, v830, v831, v832, v833, v834, v835, v836;
  }

  else if (v828)
  {
    goto LABEL_291;
  }

LABEL_293:
  *v855 = v1485;
}

void sub_1CF71A708(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v826 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v822 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v822 - v11);
  v13 = v2[1];
  v14 = v2[11];
  v825 = v2[10];
  v823 = v13;
  v824 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  sub_1CEFE4FF4(v2 + *(v15 + 48), v12 + *(v7 + 48), type metadata accessor for ItemMetadata);
  v16 = v825;
  *v12 = v13;
  v12[1] = v16;
  v12[2] = v14;
  v17 = v4[1];
  v18 = v4[11];
  v825 = v4[10];
  sub_1CEFE4FF4(v4 + *(v15 + 48), v9 + *(v7 + 48), type metadata accessor for ItemMetadata);
  v19 = v825;
  *v9 = v17;
  *(v9 + 8) = v19;
  *(v9 + 16) = v18;
  v825 = v15;
  v20 = *(v4 + *(v15 + 64));
  v21 = v823;

  v22 = v17;
  v23 = v2;

  sub_1CF71FAAC(v9, v20, 0, v1427);
  sub_1CEFCCC44(v9, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  sub_1CEFCCC44(v12, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v24 = v2[2];
  v25 = v2[3];
  v26 = v4[2];
  v27 = v4[3];
  sub_1CEFE42D4(v23[2], v23[3]);
  sub_1CEFE42D4(v26, v27);
  LOBYTE(v9) = sub_1CF328660(v24, v25, v26, v27);
  sub_1CEFE4714(v26, v27);
  sub_1CEFE4714(v24, v25);
  if ((v9 & 1) == 0)
  {
    v1427[0] |= 8uLL;
  }

  v28 = v23[5];
  v29 = v23[6];
  v30 = v4[5];
  v31 = v4[6];
  sub_1CEFE42D4(v28, v29);
  sub_1CEFE42D4(v30, v31);
  v32 = sub_1CF328660(v28, v29, v30, v31);
  sub_1CEFE4714(v30, v31);
  sub_1CEFE4714(v28, v29);
  if (!v32)
  {
    v1427[0] |= 0x20000000000uLL;
  }

  v33 = *(v825 + 52);
  v34 = v23 + v33;
  v35 = *(v23 + v33 + 208);
  v1421 = *(v23 + v33 + 192);
  v1422 = v35;
  v1423 = *(v23 + v33 + 224);
  v1424 = *(v23 + v33 + 240);
  v36 = *(v23 + v33 + 144);
  v1417 = *(v23 + v33 + 128);
  v1418 = v36;
  v37 = *(v23 + v33 + 176);
  v1419 = *(v23 + v33 + 160);
  v1420 = v37;
  v38 = *(v23 + v33 + 80);
  v1413 = *(v23 + v33 + 64);
  v1414 = v38;
  v39 = *(v23 + v33 + 112);
  v1415 = *(v23 + v33 + 96);
  v1416 = v39;
  v40 = *(v23 + v33 + 16);
  v1409 = *(v23 + v33);
  v1410 = v40;
  v41 = *(v23 + v33 + 48);
  v1411 = *(v23 + v33 + 32);
  v1412 = v41;
  v42 = v4 + v33;
  v43 = *(v4 + v33 + 208);
  v1425[12] = *(v4 + v33 + 192);
  v1425[13] = v43;
  v1425[14] = *(v4 + v33 + 224);
  v1426 = *(v4 + v33 + 240);
  v44 = *(v4 + v33 + 144);
  v1425[8] = *(v4 + v33 + 128);
  v1425[9] = v44;
  v45 = *(v4 + v33 + 176);
  v1425[10] = *(v4 + v33 + 160);
  v1425[11] = v45;
  v46 = *(v4 + v33 + 80);
  v1425[4] = *(v4 + v33 + 64);
  v1425[5] = v46;
  v47 = *(v4 + v33 + 112);
  v1425[6] = *(v4 + v33 + 96);
  v1425[7] = v47;
  v48 = *(v4 + v33 + 16);
  v1425[0] = *(v4 + v33);
  v1425[1] = v48;
  v49 = *(v4 + v33 + 48);
  v1425[2] = *(v4 + v33 + 32);
  v1425[3] = v49;
  enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1425);
  v51 = *&v1425[0];
  v1407[12] = v1421;
  v1407[13] = v1422;
  v1407[14] = v1423;
  v1408 = v1424;
  v1407[8] = v1417;
  v1407[9] = v1418;
  v1407[10] = v1419;
  v1407[11] = v1420;
  v1407[4] = v1413;
  v1407[5] = v1414;
  v1407[6] = v1415;
  v1407[7] = v1416;
  v1407[0] = v1409;
  v1407[1] = v1410;
  v1407[2] = v1411;
  v1407[3] = v1412;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1407) == 1)
  {
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      goto LABEL_14;
    }

LABEL_13:
    v1427[0] |= 0x40000uLL;
    goto LABEL_14;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = v51;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1 || *&v1407[0] != v52)
  {
    goto LABEL_13;
  }

LABEL_14:
  v53 = *(v34 + 13);
  v1401 = *(v34 + 12);
  v1402 = v53;
  v1403 = *(v34 + 14);
  v54 = *(v34 + 9);
  v1397 = *(v34 + 8);
  v1398 = v54;
  v55 = *(v34 + 11);
  v1399 = *(v34 + 10);
  v1400 = v55;
  v56 = *(v34 + 5);
  v1393 = *(v34 + 4);
  v1394 = v56;
  v57 = *(v34 + 7);
  v1395 = *(v34 + 6);
  v1396 = v57;
  v58 = *(v34 + 1);
  v1389 = *v34;
  v1390 = v58;
  v59 = *(v34 + 3);
  v1391 = *(v34 + 2);
  v1392 = v59;
  v60 = *(v42 + 13);
  v1405[12] = *(v42 + 12);
  v1405[13] = v60;
  v1405[14] = *(v42 + 14);
  v61 = *(v42 + 9);
  v1405[8] = *(v42 + 8);
  v1405[9] = v61;
  v62 = *(v42 + 11);
  v1405[10] = *(v42 + 10);
  v1405[11] = v62;
  v63 = *(v42 + 5);
  v1405[4] = *(v42 + 4);
  v1405[5] = v63;
  v64 = *(v42 + 7);
  v1405[6] = *(v42 + 6);
  v1405[7] = v64;
  v65 = *(v42 + 1);
  v1405[0] = *v42;
  v1405[1] = v65;
  v66 = *(v42 + 3);
  v1405[2] = *(v42 + 2);
  v1404 = *(v34 + 30);
  v1406 = *(v42 + 30);
  v1405[3] = v66;
  v67 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1405);
  v68 = BYTE8(v1405[0]);
  v1387[12] = v1401;
  v1387[13] = v1402;
  v1387[14] = v1403;
  v1388 = v1404;
  v1387[8] = v1397;
  v1387[9] = v1398;
  v1387[10] = v1399;
  v1387[11] = v1400;
  v1387[4] = v1393;
  v1387[5] = v1394;
  v1387[6] = v1395;
  v1387[7] = v1396;
  v1387[0] = v1389;
  v1387[1] = v1390;
  v1387[2] = v1391;
  v1387[3] = v1392;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1387) == 1)
  {
    if (v67 == 1)
    {
      goto LABEL_20;
    }

LABEL_19:
    v1427[0] |= 0x80000uLL;
    goto LABEL_20;
  }

  if (v67 == 1 || ((v68 ^ BYTE8(v1387[0])) & 1) != 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v69 = *(v34 + 13);
  v1381 = *(v34 + 12);
  v1382 = v69;
  v1383 = *(v34 + 14);
  v70 = *(v34 + 9);
  v1377 = *(v34 + 8);
  v1378 = v70;
  v71 = *(v34 + 11);
  v1379 = *(v34 + 10);
  v1380 = v71;
  v72 = *(v34 + 5);
  v1373 = *(v34 + 4);
  v1374 = v72;
  v73 = *(v34 + 7);
  v1375 = *(v34 + 6);
  v1376 = v73;
  v74 = *(v34 + 1);
  v1369 = *v34;
  v1370 = v74;
  v75 = *(v34 + 3);
  v1371 = *(v34 + 2);
  v1372 = v75;
  v76 = *(v42 + 13);
  v1385[12] = *(v42 + 12);
  v1385[13] = v76;
  v1385[14] = *(v42 + 14);
  v77 = *(v42 + 9);
  v1385[8] = *(v42 + 8);
  v1385[9] = v77;
  v78 = *(v42 + 11);
  v1385[10] = *(v42 + 10);
  v1385[11] = v78;
  v79 = *(v42 + 5);
  v1385[4] = *(v42 + 4);
  v1385[5] = v79;
  v80 = *(v42 + 7);
  v1385[6] = *(v42 + 6);
  v1385[7] = v80;
  v81 = *(v42 + 1);
  v1385[0] = *v42;
  v1385[1] = v81;
  v82 = *(v42 + 3);
  v1385[2] = *(v42 + 2);
  v1384 = *(v34 + 30);
  v1386 = *(v42 + 30);
  v1385[3] = v82;
  v83 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1385);
  v84 = BYTE9(v1385[0]);
  v1367[12] = v1381;
  v1367[13] = v1382;
  v1367[14] = v1383;
  v1368 = v1384;
  v1367[8] = v1377;
  v1367[9] = v1378;
  v1367[10] = v1379;
  v1367[11] = v1380;
  v1367[4] = v1373;
  v1367[5] = v1374;
  v1367[6] = v1375;
  v1367[7] = v1376;
  v1367[0] = v1369;
  v1367[1] = v1370;
  v1367[2] = v1371;
  v1367[3] = v1372;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1367) != 1)
  {
    if (v83 != 1 && ((v84 ^ BYTE9(v1367[0])) & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v83 != 1)
  {
LABEL_25:
    v1427[0] |= 0x100000uLL;
  }

LABEL_26:
  v85 = *(v34 + 13);
  v1363 = *(v34 + 12);
  v1364 = v85;
  v1365 = *(v34 + 14);
  v86 = *(v34 + 9);
  v1359 = *(v34 + 8);
  v1360 = v86;
  v87 = *(v34 + 11);
  v1361 = *(v34 + 10);
  v1362 = v87;
  v88 = *(v34 + 5);
  v1355 = *(v34 + 4);
  v1356 = v88;
  v89 = *(v34 + 7);
  v1357 = *(v34 + 6);
  v1358 = v89;
  v90 = *(v34 + 1);
  v1351 = *v34;
  v1352 = v90;
  v91 = *(v34 + 3);
  v1353 = *(v34 + 2);
  v1366 = *(v34 + 30);
  v1354 = v91;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1351) == 1)
  {
    v92 = 0;
  }

  else
  {
    v92 = v1352;
    v93 = v1352;
  }

  v94 = *(v42 + 13);
  v1347 = *(v42 + 12);
  v1348 = v94;
  v1349 = *(v42 + 14);
  v95 = *(v42 + 9);
  v1343 = *(v42 + 8);
  v1344 = v95;
  v96 = *(v42 + 11);
  v1345 = *(v42 + 10);
  v1346 = v96;
  v97 = *(v42 + 5);
  v1339 = *(v42 + 4);
  v1340 = v97;
  v98 = *(v42 + 7);
  v1341 = *(v42 + 6);
  v1342 = v98;
  v99 = *(v42 + 1);
  v1335 = *v42;
  v1336 = v99;
  v100 = *(v42 + 3);
  v1337 = *(v42 + 2);
  v1350 = *(v42 + 30);
  v1338 = v100;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1335) == 1)
  {
    v101 = 0;
  }

  else
  {
    v101 = v1336;
    v102 = v1336;
  }

  v103 = errorsAreDifferent(error:otherError:)(v92, v101);

  if (v103)
  {
    v1427[0] |= 0x200000uLL;
  }

  v104 = *(v34 + 13);
  v1331 = *(v34 + 12);
  v1332 = v104;
  v1333 = *(v34 + 14);
  v105 = *(v34 + 9);
  v1327 = *(v34 + 8);
  v1328 = v105;
  v106 = *(v34 + 11);
  v1329 = *(v34 + 10);
  v1330 = v106;
  v107 = *(v34 + 5);
  v1323 = *(v34 + 4);
  v1324 = v107;
  v108 = *(v34 + 7);
  v1325 = *(v34 + 6);
  v1326 = v108;
  v109 = *(v34 + 1);
  v1319 = *v34;
  v1320 = v109;
  v110 = *(v34 + 3);
  v1321 = *(v34 + 2);
  v1334 = *(v34 + 30);
  v1322 = v110;
  v111 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1319);
  v112 = *(v42 + 13);
  v1315 = *(v42 + 12);
  v1316 = v112;
  v1317 = *(v42 + 14);
  v113 = *(v42 + 9);
  v1311 = *(v42 + 8);
  v1312 = v113;
  v114 = *(v42 + 11);
  v1313 = *(v42 + 10);
  v1314 = v114;
  v115 = *(v42 + 5);
  v1307 = *(v42 + 4);
  v1308 = v115;
  v116 = *(v42 + 7);
  v1309 = *(v42 + 6);
  v1310 = v116;
  v117 = *(v42 + 1);
  v1303 = *v42;
  v1304 = v117;
  v118 = *(v42 + 3);
  v1305 = *(v42 + 2);
  v120 = v111 != 1 && *(&v1320 + 1) != 0;
  v1318 = *(v42 + 30);
  v1306 = v118;
  v122 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1303) == 1 || *(&v1304 + 1) == 0;
  if (v120 == v122)
  {
    v1427[0] |= 0x400000uLL;
  }

  v123 = *(v34 + 13);
  v1284 = *(v34 + 12);
  v1285 = v123;
  v1286 = *(v34 + 14);
  v124 = *(v34 + 9);
  v1280 = *(v34 + 8);
  v1281 = v124;
  v125 = *(v34 + 11);
  v1282 = *(v34 + 10);
  v1283 = v125;
  v126 = *(v34 + 5);
  v1276 = *(v34 + 4);
  v1277 = v126;
  v127 = *(v34 + 7);
  v1278 = *(v34 + 6);
  v1279 = v127;
  v128 = *(v34 + 1);
  v1272 = *v34;
  v1273 = v128;
  v129 = *(v34 + 3);
  v1274 = *(v34 + 2);
  v1275 = v129;
  v130 = *(v42 + 13);
  v1299 = *(v42 + 12);
  v1300 = v130;
  v1301 = *(v42 + 14);
  v131 = *(v42 + 9);
  v1295 = *(v42 + 8);
  v1296 = v131;
  v132 = *(v42 + 11);
  v1297 = *(v42 + 10);
  v1298 = v132;
  v133 = *(v42 + 5);
  v1291 = *(v42 + 4);
  v1292 = v133;
  v134 = *(v42 + 7);
  v1293 = *(v42 + 6);
  v1294 = v134;
  v135 = *(v42 + 1);
  v1288[0] = *v42;
  v1288[1] = v135;
  v136 = *(v42 + 3);
  v1289 = *(v42 + 2);
  v1287 = *(v34 + 30);
  v1302 = *(v42 + 30);
  v1290 = v136;
  v137 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1288);
  v138 = v1289;
  v1268 = v1284;
  v1269 = v1285;
  v1270 = v1286;
  v1271 = v1287;
  v1264 = v1280;
  v1265 = v1281;
  v1266 = v1282;
  v1267 = v1283;
  v1260 = v1276;
  v1261 = v1277;
  v1262 = v1278;
  v1263 = v1279;
  v1257[0] = v1272;
  v1257[1] = v1273;
  v1258 = v1274;
  v1259 = v1275;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1257) == 1)
  {
    if (v137 == 1)
    {
      goto LABEL_54;
    }

LABEL_53:
    v1427[0] |= 0x1000000uLL;
    goto LABEL_54;
  }

  if (v137 == 1 || ((v138 ^ v1258) & 1) != 0)
  {
    goto LABEL_53;
  }

LABEL_54:
  v139 = *(v34 + 13);
  v1238 = *(v34 + 12);
  v1239 = v139;
  v1240 = *(v34 + 14);
  v1241 = *(v34 + 30);
  v140 = *(v34 + 9);
  v1234 = *(v34 + 8);
  v1235 = v140;
  v141 = *(v34 + 11);
  v1236 = *(v34 + 10);
  v1237 = v141;
  v142 = *(v34 + 5);
  v1230 = *(v34 + 4);
  v1231 = v142;
  v143 = *(v34 + 7);
  v1232 = *(v34 + 6);
  v1233 = v143;
  v144 = *(v34 + 1);
  v1226 = *v34;
  v1227 = v144;
  v145 = *(v34 + 3);
  v1228 = *(v34 + 2);
  v1229 = v145;
  v146 = *(v42 + 13);
  v1253 = *(v42 + 12);
  v1254 = v146;
  v1255 = *(v42 + 14);
  v1256 = *(v42 + 30);
  v147 = *(v42 + 9);
  v1249 = *(v42 + 8);
  v1250 = v147;
  v148 = *(v42 + 11);
  v1251 = *(v42 + 10);
  v1252 = v148;
  v149 = *(v42 + 5);
  v1245 = *(v42 + 4);
  v1246 = v149;
  v150 = *(v42 + 7);
  v1247 = *(v42 + 6);
  v1248 = v150;
  v151 = *(v42 + 1);
  v1242[0] = *v42;
  v1242[1] = v151;
  v152 = *(v42 + 3);
  v1243 = *(v42 + 2);
  v1244 = v152;
  v153 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1242);
  v154 = BYTE1(v1243);
  v1222 = v1238;
  v1223 = v1239;
  v1224 = v1240;
  v1225 = v1241;
  v1218 = v1234;
  v1219 = v1235;
  v1220 = v1236;
  v1221 = v1237;
  v1214 = v1230;
  v1215 = v1231;
  v1216 = v1232;
  v1217 = v1233;
  v1211[0] = v1226;
  v1211[1] = v1227;
  v1212 = v1228;
  v1213 = v1229;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1211) == 1)
  {
    if (v153 == 1)
    {
      goto LABEL_60;
    }

LABEL_59:
    v1427[0] |= 0x2000000uLL;
    goto LABEL_60;
  }

  if (v153 == 1 || ((v154 ^ BYTE1(v1212)) & 1) != 0)
  {
    goto LABEL_59;
  }

LABEL_60:
  v155 = *(v34 + 13);
  v1192 = *(v34 + 12);
  v1193 = v155;
  v1194 = *(v34 + 14);
  v156 = *(v34 + 9);
  v1188 = *(v34 + 8);
  v1189 = v156;
  v157 = *(v34 + 11);
  v1190 = *(v34 + 10);
  v1191 = v157;
  v158 = *(v34 + 5);
  v1184 = *(v34 + 4);
  v1185 = v158;
  v159 = *(v34 + 7);
  v1186 = *(v34 + 6);
  v1187 = v159;
  v160 = *(v34 + 1);
  v1180 = *v34;
  v1181 = v160;
  v161 = *(v34 + 3);
  v1182 = *(v34 + 2);
  v1183 = v161;
  v162 = *(v42 + 13);
  v1207 = *(v42 + 12);
  v1208 = v162;
  v1209 = *(v42 + 14);
  v163 = *(v42 + 9);
  v1203 = *(v42 + 8);
  v1204 = v163;
  v164 = *(v42 + 11);
  v1205 = *(v42 + 10);
  v1206 = v164;
  v165 = *(v42 + 5);
  v1199 = *(v42 + 4);
  v1200 = v165;
  v166 = *(v42 + 7);
  v1201 = *(v42 + 6);
  v1202 = v166;
  v167 = *(v42 + 1);
  v1196[0] = *v42;
  v1196[1] = v167;
  v168 = *(v42 + 3);
  v1197 = *(v42 + 2);
  v1195 = *(v34 + 30);
  v1210 = *(v42 + 30);
  v1198 = v168;
  v169 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1196);
  v170 = BYTE2(v1197);
  v1176 = v1192;
  v1177 = v1193;
  v1178 = v1194;
  v1179 = v1195;
  v1172 = v1188;
  v1173 = v1189;
  v1174 = v1190;
  v1175 = v1191;
  v1168 = v1184;
  v1169 = v1185;
  v1170 = v1186;
  v1171 = v1187;
  v1165[0] = v1180;
  v1165[1] = v1181;
  v1166 = v1182;
  v1167 = v1183;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1165) != 1)
  {
    if (v169 != 1 && ((v170 ^ BYTE2(v1166)) & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (v169 != 1)
  {
LABEL_65:
    v1427[0] |= 0x4000000uLL;
  }

LABEL_66:
  v171 = *(v34 + 13);
  v1161 = *(v34 + 12);
  v1162 = v171;
  v1163 = *(v34 + 14);
  v172 = *(v34 + 9);
  v1157 = *(v34 + 8);
  v1158 = v172;
  v173 = *(v34 + 11);
  v1159 = *(v34 + 10);
  v1160 = v173;
  v174 = *(v34 + 5);
  v1153 = *(v34 + 4);
  v1154 = v174;
  v175 = *(v34 + 7);
  v1155 = *(v34 + 6);
  v1156 = v175;
  v176 = *(v34 + 1);
  v1150[0] = *v34;
  v1150[1] = v176;
  v177 = *(v34 + 3);
  v1151 = *(v34 + 2);
  v1164 = *(v34 + 30);
  v1152 = v177;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1150) == 1)
  {
    v178 = 0;
    v179 = 0;
  }

  else
  {
    v178 = *(&v1151 + 1);
    v179 = v1152;
  }

  v180 = *(v42 + 13);
  v1146 = *(v42 + 12);
  v1147 = v180;
  v1148 = *(v42 + 14);
  v181 = *(v42 + 9);
  v1142 = *(v42 + 8);
  v1143 = v181;
  v182 = *(v42 + 11);
  v1144 = *(v42 + 10);
  v1145 = v182;
  v183 = *(v42 + 5);
  v1138 = *(v42 + 4);
  v1139 = v183;
  v184 = *(v42 + 7);
  v1140 = *(v42 + 6);
  v1141 = v184;
  v185 = *(v42 + 1);
  v1135[0] = *v42;
  v1135[1] = v185;
  v186 = *(v42 + 3);
  v1136 = *(v42 + 2);
  v1149 = *(v42 + 30);
  v1137 = v186;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1135) == 1)
  {
    if (!v179)
    {
      goto LABEL_81;
    }

    goto LABEL_77;
  }

  v194 = *(&v1136 + 1);
  v195 = v1137;

  if (!v179)
  {
    if (!v195)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  if (!v195)
  {
LABEL_77:
    v195 = v179;
LABEL_79:
    v195, v187, v188, v189, v190, v191, v192, v193;
LABEL_80:
    v1427[0] |= 0x8000000uLL;
    goto LABEL_81;
  }

  if (v178 == v194 && v179 == v195)
  {
    v179, v187, v188, v189, v190, v191, v192, v193;
    v195, v196, v197, v198, v199, v200, v201, v202;
    goto LABEL_81;
  }

  v576 = sub_1CF9E8048();
  v179, v577, v578, v579, v580, v581, v582, v583;
  v195, v584, v585, v586, v587, v588, v589, v590;
  if ((v576 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_81:
  v203 = *(v34 + 13);
  v1131 = *(v34 + 12);
  v1132 = v203;
  v1133 = *(v34 + 14);
  v204 = *(v34 + 9);
  v1127 = *(v34 + 8);
  v1128 = v204;
  v205 = *(v34 + 11);
  v1129 = *(v34 + 10);
  v1130 = v205;
  v206 = *(v34 + 5);
  v1123 = *(v34 + 4);
  v1124 = v206;
  v207 = *(v34 + 7);
  v1125 = *(v34 + 6);
  v1126 = v207;
  v208 = *(v34 + 1);
  v1121[0] = *v34;
  v1121[1] = v208;
  v209 = *(v34 + 3);
  v1121[2] = *(v34 + 2);
  v1134 = *(v34 + 30);
  v1122 = v209;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1121) == 1)
  {
    v210 = 0;
    v211 = 0;
  }

  else
  {
    v210 = *(&v1122 + 1);
    v211 = v1123;
  }

  v212 = *(v42 + 13);
  v1117 = *(v42 + 12);
  v1118 = v212;
  v1119 = *(v42 + 14);
  v213 = *(v42 + 9);
  v1113 = *(v42 + 8);
  v1114 = v213;
  v214 = *(v42 + 11);
  v1115 = *(v42 + 10);
  v1116 = v214;
  v215 = *(v42 + 5);
  v1109 = *(v42 + 4);
  v1110 = v215;
  v216 = *(v42 + 7);
  v1111 = *(v42 + 6);
  v1112 = v216;
  v217 = *(v42 + 1);
  v1107[0] = *v42;
  v1107[1] = v217;
  v218 = *(v42 + 3);
  v1107[2] = *(v42 + 2);
  v1120 = *(v42 + 30);
  v1108 = v218;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1107) == 1)
  {
    if (!v211)
    {
      goto LABEL_96;
    }

    goto LABEL_92;
  }

  v226 = *(&v1108 + 1);
  v227 = v1109;

  if (!v211)
  {
    if (!v227)
    {
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  if (!v227)
  {
LABEL_92:
    v227 = v211;
LABEL_94:
    v227, v219, v220, v221, v222, v223, v224, v225;
LABEL_95:
    v1427[0] |= 0x10000000uLL;
    goto LABEL_96;
  }

  if (v210 == v226 && v211 == v227)
  {
    v211, v219, v220, v221, v222, v223, v224, v225;
    v227, v228, v229, v230, v231, v232, v233, v234;
    goto LABEL_96;
  }

  v591 = sub_1CF9E8048();
  v211, v592, v593, v594, v595, v596, v597, v598;
  v227, v599, v600, v601, v602, v603, v604, v605;
  if ((v591 & 1) == 0)
  {
    goto LABEL_95;
  }

LABEL_96:
  v235 = *(v34 + 13);
  v1090 = *(v34 + 12);
  v1091 = v235;
  v1092 = *(v34 + 14);
  v236 = *(v34 + 9);
  v1086 = *(v34 + 8);
  v1087 = v236;
  v237 = *(v34 + 11);
  v1088 = *(v34 + 10);
  v1089 = v237;
  v238 = *(v34 + 5);
  v1082 = *(v34 + 4);
  v1083 = v238;
  v239 = *(v34 + 7);
  v1084 = *(v34 + 6);
  v1085 = v239;
  v240 = *(v34 + 1);
  v1078 = *v34;
  v1079 = v240;
  v241 = *(v34 + 3);
  v1080 = *(v34 + 2);
  v1081 = v241;
  v242 = *(v42 + 13);
  v1103 = *(v42 + 12);
  v1104 = v242;
  v1105 = *(v42 + 14);
  v243 = *(v42 + 9);
  v1099 = *(v42 + 8);
  v1100 = v243;
  v244 = *(v42 + 11);
  v1101 = *(v42 + 10);
  v1102 = v244;
  v245 = *(v42 + 5);
  v1095 = *(v42 + 4);
  v1096 = v245;
  v246 = *(v42 + 7);
  v1097 = *(v42 + 6);
  v1098 = v246;
  v247 = *(v42 + 1);
  v1094[0] = *v42;
  v1094[1] = v247;
  v248 = *(v42 + 3);
  v1094[2] = *(v42 + 2);
  v1093 = *(v34 + 30);
  v1106 = *(v42 + 30);
  v1094[3] = v248;
  v249 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1094);
  v250 = BYTE8(v1095);
  v1074 = v1090;
  v1075 = v1091;
  v1076 = v1092;
  v1077 = v1093;
  v1070 = v1086;
  v1071 = v1087;
  v1072 = v1088;
  v1073 = v1089;
  v1066 = v1082;
  v1067 = v1083;
  v1068 = v1084;
  v1069 = v1085;
  v1065[0] = v1078;
  v1065[1] = v1079;
  v1065[2] = v1080;
  v1065[3] = v1081;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1065) != 1)
  {
    if (v249 != 1 && ((v250 ^ BYTE8(v1066)) & 1) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_101;
  }

  if (v249 != 1)
  {
LABEL_101:
    v1427[0] |= 0x20000000uLL;
  }

LABEL_102:
  v251 = *(v34 + 13);
  v1061 = *(v34 + 12);
  v1062 = v251;
  v1063 = *(v34 + 14);
  v252 = *(v34 + 9);
  v1057 = *(v34 + 8);
  v1058 = v252;
  v253 = *(v34 + 11);
  v1059 = *(v34 + 10);
  v1060 = v253;
  v254 = *(v34 + 5);
  v1053[4] = *(v34 + 4);
  v1054 = v254;
  v255 = *(v34 + 7);
  v1055 = *(v34 + 6);
  v1056 = v255;
  v256 = *(v34 + 1);
  v1053[0] = *v34;
  v1053[1] = v256;
  v257 = *(v34 + 3);
  v1053[2] = *(v34 + 2);
  v1064 = *(v34 + 30);
  v1053[3] = v257;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1053) == 1)
  {
    v258 = 0;
    v259 = 0;
  }

  else
  {
    v259 = *(&v1054 + 1);
    v258 = v1054;
  }

  v260 = *(v42 + 13);
  v1049 = *(v42 + 12);
  v1050 = v260;
  v1051 = *(v42 + 14);
  v261 = *(v42 + 9);
  v1045 = *(v42 + 8);
  v1046 = v261;
  v262 = *(v42 + 11);
  v1047 = *(v42 + 10);
  v1048 = v262;
  v263 = *(v42 + 5);
  v1041[4] = *(v42 + 4);
  v1042 = v263;
  v264 = *(v42 + 7);
  v1043 = *(v42 + 6);
  v1044 = v264;
  v265 = *(v42 + 1);
  v1041[0] = *v42;
  v1041[1] = v265;
  v266 = *(v42 + 3);
  v1041[2] = *(v42 + 2);
  v1052 = *(v42 + 30);
  v1041[3] = v266;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1041) == 1)
  {
    if (!v259)
    {
      goto LABEL_117;
    }

    goto LABEL_113;
  }

  v274 = *(&v1042 + 1);
  v275 = v1042;

  if (!v259)
  {
    if (!v274)
    {
      goto LABEL_117;
    }

    goto LABEL_115;
  }

  if (!v274)
  {
LABEL_113:
    v274 = v259;
LABEL_115:
    v274, v267, v268, v269, v270, v271, v272, v273;
LABEL_116:
    v1427[0] |= 0x40000000uLL;
    goto LABEL_117;
  }

  if (v258 == v275 && v259 == v274)
  {
    v259, v267, v268, v269, v270, v271, v272, v273;
    v274, v276, v277, v278, v279, v280, v281, v282;
    goto LABEL_117;
  }

  v606 = sub_1CF9E8048();
  v259, v607, v608, v609, v610, v611, v612, v613;
  v274, v614, v615, v616, v617, v618, v619, v620;
  if ((v606 & 1) == 0)
  {
    goto LABEL_116;
  }

LABEL_117:
  v283 = *(v34 + 13);
  v1026 = *(v34 + 12);
  v1027 = v283;
  v1028 = *(v34 + 14);
  v284 = *(v34 + 9);
  v1022 = *(v34 + 8);
  v1023 = v284;
  v285 = *(v34 + 11);
  v1024 = *(v34 + 10);
  v1025 = v285;
  v286 = *(v34 + 5);
  v1018 = *(v34 + 4);
  v1019 = v286;
  v287 = *(v34 + 7);
  v1020 = *(v34 + 6);
  v1021 = v287;
  v288 = *(v34 + 1);
  v1014 = *v34;
  v1015 = v288;
  v289 = *(v34 + 3);
  v1016 = *(v34 + 2);
  v1017 = v289;
  v290 = *(v42 + 13);
  v1037 = *(v42 + 12);
  v1038 = v290;
  v1039 = *(v42 + 14);
  v291 = *(v42 + 9);
  v1033 = *(v42 + 8);
  v1034 = v291;
  v292 = *(v42 + 11);
  v1035 = *(v42 + 10);
  v1036 = v292;
  v293 = *(v42 + 5);
  v1030[4] = *(v42 + 4);
  v1030[5] = v293;
  v294 = *(v42 + 7);
  v1031 = *(v42 + 6);
  v1032 = v294;
  v295 = *(v42 + 1);
  v1030[0] = *v42;
  v1030[1] = v295;
  v296 = *(v42 + 3);
  v1030[2] = *(v42 + 2);
  v1029 = *(v34 + 30);
  v1040 = *(v42 + 30);
  v1030[3] = v296;
  v297 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1030);
  v298 = BYTE8(v1031);
  v1010 = v1026;
  v1011 = v1027;
  v1012 = v1028;
  v1013 = v1029;
  v1006 = v1022;
  v1007 = v1023;
  v1008 = v1024;
  v1009 = v1025;
  v1003[4] = v1018;
  v1003[5] = v1019;
  v1004 = v1020;
  v1005 = v1021;
  v1003[0] = v1014;
  v1003[1] = v1015;
  v1003[2] = v1016;
  v1003[3] = v1017;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1003) == 1)
  {
    if (v297 == 1)
    {
      goto LABEL_123;
    }

LABEL_122:
    v1427[0] |= 0x80000000uLL;
    goto LABEL_123;
  }

  if (v297 == 1 || ((v298 ^ BYTE8(v1004)) & 1) != 0)
  {
    goto LABEL_122;
  }

LABEL_123:
  v299 = *(v34 + 13);
  v988 = *(v34 + 12);
  v989 = v299;
  v990 = *(v34 + 14);
  v991 = *(v34 + 30);
  v300 = *(v34 + 9);
  v984 = *(v34 + 8);
  v985 = v300;
  v301 = *(v34 + 11);
  v986 = *(v34 + 10);
  v987 = v301;
  v302 = *(v34 + 5);
  v980 = *(v34 + 4);
  v981 = v302;
  v303 = *(v34 + 7);
  v982 = *(v34 + 6);
  v983 = v303;
  v304 = *(v34 + 1);
  v976 = *v34;
  v977 = v304;
  v305 = *(v34 + 3);
  v978 = *(v34 + 2);
  v979 = v305;
  v306 = *(v42 + 13);
  v999 = *(v42 + 12);
  v1000 = v306;
  v1001 = *(v42 + 14);
  v1002 = *(v42 + 30);
  v307 = *(v42 + 9);
  v995 = *(v42 + 8);
  v996 = v307;
  v308 = *(v42 + 11);
  v997 = *(v42 + 10);
  v998 = v308;
  v309 = *(v42 + 5);
  v992[4] = *(v42 + 4);
  v992[5] = v309;
  v310 = *(v42 + 7);
  v993 = *(v42 + 6);
  v994 = v310;
  v311 = *(v42 + 1);
  v992[0] = *v42;
  v992[1] = v311;
  v312 = *(v42 + 3);
  v992[2] = *(v42 + 2);
  v992[3] = v312;
  v313 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v992);
  v972 = v988;
  v973 = v989;
  v974 = v990;
  v968 = v984;
  v969 = v985;
  v970 = v986;
  v971 = v987;
  v965[4] = v980;
  v965[5] = v981;
  v966 = v982;
  v967 = v983;
  v965[0] = v976;
  v965[1] = v977;
  v965[2] = v978;
  v314 = BYTE9(v993);
  v975 = v991;
  v965[3] = v979;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v965) != 1)
  {
    if (v313 != 1 && ((v314 ^ BYTE9(v966)) & 1) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_128;
  }

  if (v313 != 1)
  {
LABEL_128:
    v1427[0] |= 0x100000000uLL;
  }

LABEL_129:
  v315 = *(v34 + 13);
  v961 = *(v34 + 12);
  v962 = v315;
  v963 = *(v34 + 14);
  v316 = *(v34 + 9);
  v957 = *(v34 + 8);
  v958 = v316;
  v317 = *(v34 + 11);
  v959 = *(v34 + 10);
  v960 = v317;
  v318 = *(v34 + 5);
  v955[4] = *(v34 + 4);
  v955[5] = v318;
  v319 = *(v34 + 7);
  v955[6] = *(v34 + 6);
  v956 = v319;
  v320 = *(v34 + 1);
  v955[0] = *v34;
  v955[1] = v320;
  v321 = *(v34 + 3);
  v955[2] = *(v34 + 2);
  v964 = *(v34 + 30);
  v955[3] = v321;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v955) == 1)
  {
    v322 = 0;
    v323 = 0;
  }

  else
  {
    v323 = *(&v956 + 1);
    v322 = v956;
  }

  v324 = *(v42 + 13);
  v951 = *(v42 + 12);
  v952 = v324;
  v953 = *(v42 + 14);
  v325 = *(v42 + 9);
  v947 = *(v42 + 8);
  v948 = v325;
  v326 = *(v42 + 11);
  v949 = *(v42 + 10);
  v950 = v326;
  v327 = *(v42 + 5);
  v945[4] = *(v42 + 4);
  v945[5] = v327;
  v328 = *(v42 + 7);
  v945[6] = *(v42 + 6);
  v946 = v328;
  v329 = *(v42 + 1);
  v945[0] = *v42;
  v945[1] = v329;
  v330 = *(v42 + 3);
  v945[2] = *(v42 + 2);
  v954 = *(v42 + 30);
  v945[3] = v330;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v945) == 1)
  {
    if (!v323)
    {
      goto LABEL_144;
    }

    goto LABEL_140;
  }

  v338 = *(&v946 + 1);
  v339 = v946;

  if (!v323)
  {
    if (!v338)
    {
      goto LABEL_144;
    }

    goto LABEL_142;
  }

  if (!v338)
  {
LABEL_140:
    v338 = v323;
LABEL_142:
    v338, v331, v332, v333, v334, v335, v336, v337;
LABEL_143:
    v1427[0] |= 0x200000000uLL;
    goto LABEL_144;
  }

  if (v322 == v339 && v323 == v338)
  {
    v323, v331, v332, v333, v334, v335, v336, v337;
    v338, v340, v341, v342, v343, v344, v345, v346;
    goto LABEL_144;
  }

  v621 = sub_1CF9E8048();
  v323, v622, v623, v624, v625, v626, v627, v628;
  v338, v629, v630, v631, v632, v633, v634, v635;
  if ((v621 & 1) == 0)
  {
    goto LABEL_143;
  }

LABEL_144:
  v347 = *(v34 + 13);
  v941 = *(v34 + 12);
  v942 = v347;
  v943 = *(v34 + 14);
  v348 = *(v34 + 9);
  v937 = *(v34 + 8);
  v938 = v348;
  v349 = *(v34 + 11);
  v939 = *(v34 + 10);
  v940 = v349;
  v350 = *(v34 + 5);
  v936[4] = *(v34 + 4);
  v936[5] = v350;
  v351 = *(v34 + 7);
  v936[6] = *(v34 + 6);
  v936[7] = v351;
  v352 = *(v34 + 1);
  v936[0] = *v34;
  v936[1] = v352;
  v353 = *(v34 + 3);
  v936[2] = *(v34 + 2);
  v944 = *(v34 + 30);
  v936[3] = v353;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v936) == 1)
  {
    v354 = 0;
    v355 = 0;
  }

  else
  {
    v355 = *(&v937 + 1);
    v354 = v937;
  }

  v356 = *(v42 + 13);
  v932 = *(v42 + 12);
  v933 = v356;
  v934 = *(v42 + 14);
  v357 = *(v42 + 9);
  v928 = *(v42 + 8);
  v929 = v357;
  v358 = *(v42 + 11);
  v930 = *(v42 + 10);
  v931 = v358;
  v359 = *(v42 + 5);
  v927[4] = *(v42 + 4);
  v927[5] = v359;
  v360 = *(v42 + 7);
  v927[6] = *(v42 + 6);
  v927[7] = v360;
  v361 = *(v42 + 1);
  v927[0] = *v42;
  v927[1] = v361;
  v362 = *(v42 + 3);
  v927[2] = *(v42 + 2);
  v935 = *(v42 + 30);
  v927[3] = v362;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v927) == 1)
  {
    if (!v355)
    {
      goto LABEL_159;
    }

    goto LABEL_155;
  }

  v370 = *(&v928 + 1);
  v371 = v928;

  if (!v355)
  {
    if (!v370)
    {
      goto LABEL_159;
    }

    goto LABEL_157;
  }

  if (!v370)
  {
LABEL_155:
    v370 = v355;
LABEL_157:
    v370, v363, v364, v365, v366, v367, v368, v369;
LABEL_158:
    v1427[0] |= 0x400000000uLL;
    goto LABEL_159;
  }

  if (v354 == v371 && v355 == v370)
  {
    v355, v363, v364, v365, v366, v367, v368, v369;
    v370, v372, v373, v374, v375, v376, v377, v378;
    goto LABEL_159;
  }

  v636 = sub_1CF9E8048();
  v355, v637, v638, v639, v640, v641, v642, v643;
  v370, v644, v645, v646, v647, v648, v649, v650;
  if ((v636 & 1) == 0)
  {
    goto LABEL_158;
  }

LABEL_159:
  v379 = *(v34 + 13);
  v923 = *(v34 + 12);
  v924 = v379;
  v925 = *(v34 + 14);
  v380 = *(v34 + 9);
  v919[8] = *(v34 + 8);
  v920 = v380;
  v381 = *(v34 + 11);
  v921 = *(v34 + 10);
  v922 = v381;
  v382 = *(v34 + 5);
  v919[4] = *(v34 + 4);
  v919[5] = v382;
  v383 = *(v34 + 7);
  v919[6] = *(v34 + 6);
  v919[7] = v383;
  v384 = *(v34 + 1);
  v919[0] = *v34;
  v919[1] = v384;
  v385 = *(v34 + 3);
  v919[2] = *(v34 + 2);
  v926 = *(v34 + 30);
  v919[3] = v385;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v919) == 1)
  {
    v386 = 0;
    v387 = 0;
  }

  else
  {
    v387 = *(&v920 + 1);
    v386 = v920;
  }

  v388 = *(v42 + 13);
  v915 = *(v42 + 12);
  v916 = v388;
  v917 = *(v42 + 14);
  v389 = *(v42 + 9);
  v911[8] = *(v42 + 8);
  v912 = v389;
  v390 = *(v42 + 11);
  v913 = *(v42 + 10);
  v914 = v390;
  v391 = *(v42 + 5);
  v911[4] = *(v42 + 4);
  v911[5] = v391;
  v392 = *(v42 + 7);
  v911[6] = *(v42 + 6);
  v911[7] = v392;
  v393 = *(v42 + 1);
  v911[0] = *v42;
  v911[1] = v393;
  v394 = *(v42 + 3);
  v911[2] = *(v42 + 2);
  v918 = *(v42 + 30);
  v911[3] = v394;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v911) == 1)
  {
    if (!v387)
    {
      goto LABEL_174;
    }

    goto LABEL_170;
  }

  v402 = *(&v912 + 1);
  v403 = v912;

  if (!v387)
  {
    if (!v402)
    {
      goto LABEL_174;
    }

    goto LABEL_172;
  }

  if (!v402)
  {
LABEL_170:
    v402 = v387;
LABEL_172:
    v402, v395, v396, v397, v398, v399, v400, v401;
LABEL_173:
    v1427[0] |= 0x800000000uLL;
    goto LABEL_174;
  }

  if (v386 == v403 && v387 == v402)
  {
    v387, v395, v396, v397, v398, v399, v400, v401;
    v402, v404, v405, v406, v407, v408, v409, v410;
    goto LABEL_174;
  }

  v651 = sub_1CF9E8048();
  v387, v652, v653, v654, v655, v656, v657, v658;
  v402, v659, v660, v661, v662, v663, v664, v665;
  if ((v651 & 1) == 0)
  {
    goto LABEL_173;
  }

LABEL_174:
  v411 = *(v34 + 13);
  v907 = *(v34 + 12);
  v908 = v411;
  v909 = *(v34 + 14);
  v412 = *(v34 + 9);
  v904[8] = *(v34 + 8);
  v904[9] = v412;
  v413 = *(v34 + 11);
  v905 = *(v34 + 10);
  v906 = v413;
  v414 = *(v34 + 5);
  v904[4] = *(v34 + 4);
  v904[5] = v414;
  v415 = *(v34 + 7);
  v904[6] = *(v34 + 6);
  v904[7] = v415;
  v416 = *(v34 + 1);
  v904[0] = *v34;
  v904[1] = v416;
  v417 = *(v34 + 3);
  v904[2] = *(v34 + 2);
  v910 = *(v34 + 30);
  v904[3] = v417;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v904) == 1)
  {
    v418 = 0;
    v419 = 0;
  }

  else
  {
    v419 = *(&v905 + 1);
    v418 = v905;
  }

  v420 = *(v42 + 13);
  v900 = *(v42 + 12);
  v901 = v420;
  v902 = *(v42 + 14);
  v421 = *(v42 + 9);
  v897[8] = *(v42 + 8);
  v897[9] = v421;
  v422 = *(v42 + 11);
  v898 = *(v42 + 10);
  v899 = v422;
  v423 = *(v42 + 5);
  v897[4] = *(v42 + 4);
  v897[5] = v423;
  v424 = *(v42 + 7);
  v897[6] = *(v42 + 6);
  v897[7] = v424;
  v425 = *(v42 + 1);
  v897[0] = *v42;
  v897[1] = v425;
  v426 = *(v42 + 3);
  v897[2] = *(v42 + 2);
  v903 = *(v42 + 30);
  v897[3] = v426;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v897) == 1)
  {
    if (v419)
    {
      v434 = 0;
LABEL_186:
      v419, v427, v428, v429, v430, v431, v432, v433;
      v434, v462, v463, v464, v465, v466, v467, v468;
LABEL_187:
      v1427[0] |= 0x1000000000uLL;
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  v434 = *(&v898 + 1);
  v435 = v898;

  if (!v419)
  {
    if (v434)
    {
      goto LABEL_186;
    }

LABEL_188:
    v461 = 0;
    goto LABEL_189;
  }

  if (!v434)
  {
    goto LABEL_186;
  }

  *&v891[0] = v418;
  *(&v891[0] + 1) = v419;

  v436 = sub_1CF662E90();
  v438 = v437;
  v875 = __PAIR128__(v434, v435);
  v440 = sub_1CF662E90();
  v446 = v439;
  if (v436 == v440 && v438 == v439)
  {
    v439, v439, v440, v441, v442, v443, v444, v445;
    v438, v447, v448, v449, v450, v451, v452, v453;
    v419, v454, v455, v456, v457, v458, v459, v460;
    swift_bridgeObjectRelease_n();
    v461 = v419;
LABEL_189:
    v461, v427, v428, v429, v430, v431, v432, v433;
    goto LABEL_190;
  }

  v666 = sub_1CF9E8048();
  v446, v667, v668, v669, v670, v671, v672, v673;
  v438, v674, v675, v676, v677, v678, v679, v680;
  v419, v681, v682, v683, v684, v685, v686, v687;
  swift_bridgeObjectRelease_n();
  v419, v688, v689, v690, v691, v692, v693, v694;
  if ((v666 & 1) == 0)
  {
    goto LABEL_187;
  }

LABEL_190:
  v469 = *(v34 + 13);
  v887 = *(v34 + 12);
  v888 = v469;
  v889 = *(v34 + 14);
  v470 = *(v34 + 9);
  v883 = *(v34 + 8);
  v884 = v470;
  v471 = *(v34 + 11);
  v885 = *(v34 + 10);
  v886 = v471;
  v472 = *(v34 + 5);
  v879 = *(v34 + 4);
  v880 = v472;
  v473 = *(v34 + 7);
  v881 = *(v34 + 6);
  v882 = v473;
  v474 = *(v34 + 1);
  v875 = *v34;
  v876 = v474;
  v475 = *(v34 + 3);
  v877 = *(v34 + 2);
  v878 = v475;
  v476 = *(v42 + 13);
  v893 = *(v42 + 12);
  v894 = v476;
  v895 = *(v42 + 14);
  v477 = *(v42 + 9);
  v891[8] = *(v42 + 8);
  v891[9] = v477;
  v478 = *(v42 + 11);
  v891[10] = *(v42 + 10);
  v892 = v478;
  v479 = *(v42 + 5);
  v891[4] = *(v42 + 4);
  v891[5] = v479;
  v480 = *(v42 + 7);
  v891[6] = *(v42 + 6);
  v891[7] = v480;
  v481 = *(v42 + 1);
  v891[0] = *v42;
  v891[1] = v481;
  v482 = *(v42 + 3);
  v891[2] = *(v42 + 2);
  v890 = *(v34 + 30);
  v896 = *(v42 + 30);
  v891[3] = v482;
  v483 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v891);
  v484 = v892;
  v871 = v887;
  v872 = v888;
  v873 = v889;
  v874 = v890;
  v869[8] = v883;
  v869[9] = v884;
  v869[10] = v885;
  v870 = v886;
  v869[4] = v879;
  v869[5] = v880;
  v869[6] = v881;
  v869[7] = v882;
  v869[0] = v875;
  v869[1] = v876;
  v869[2] = v877;
  v869[3] = v878;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v869) != 1)
  {
    if (v483 != 1 && ((v484 ^ v870) & 1) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_195;
  }

  if (v483 != 1)
  {
LABEL_195:
    v1427[0] |= 0x2000000000uLL;
  }

LABEL_196:
  v485 = *(v34 + 13);
  v865 = *(v34 + 12);
  v866 = v485;
  v867 = *(v34 + 14);
  v486 = *(v34 + 9);
  v863[8] = *(v34 + 8);
  v863[9] = v486;
  v487 = *(v34 + 11);
  v863[10] = *(v34 + 10);
  v864 = v487;
  v488 = *(v34 + 5);
  v863[4] = *(v34 + 4);
  v863[5] = v488;
  v489 = *(v34 + 7);
  v863[6] = *(v34 + 6);
  v863[7] = v489;
  v490 = *(v34 + 1);
  v863[0] = *v34;
  v863[1] = v490;
  v491 = *(v34 + 3);
  v863[2] = *(v34 + 2);
  v868 = *(v34 + 30);
  v863[3] = v491;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v863) == 1)
  {
    v492 = 0;
  }

  else
  {
    v492 = *(&v864 + 1);
  }

  v493 = *(v42 + 13);
  v859 = *(v42 + 12);
  v860 = v493;
  v861 = *(v42 + 14);
  v494 = *(v42 + 9);
  v857[8] = *(v42 + 8);
  v857[9] = v494;
  v495 = *(v42 + 11);
  v857[10] = *(v42 + 10);
  v858 = v495;
  v496 = *(v42 + 5);
  v857[4] = *(v42 + 4);
  v857[5] = v496;
  v497 = *(v42 + 7);
  v857[6] = *(v42 + 6);
  v857[7] = v497;
  v498 = *(v42 + 1);
  v857[0] = *v42;
  v857[1] = v498;
  v499 = *(v42 + 3);
  v857[2] = *(v42 + 2);
  v862 = *(v42 + 30);
  v857[3] = v499;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v857) == 1)
  {
    if (!v492)
    {
      goto LABEL_210;
    }

    goto LABEL_206;
  }

  v507 = *(&v858 + 1);

  if (!v492)
  {
    if (!v507)
    {
      goto LABEL_210;
    }

    goto LABEL_208;
  }

  if (!v507)
  {
LABEL_206:
    v507 = v492;
LABEL_208:
    v507, v500, v501, v502, v503, v504, v505, v506;
    goto LABEL_209;
  }

  v508 = sub_1CF6BEA0C(v492, v507);
  v492, v509, v510, v511, v512, v513, v514, v515;
  v507, v516, v517, v518, v519, v520, v521, v522;
  if ((v508 & 1) == 0)
  {
LABEL_209:
    v1427[0] |= 0x4000000000uLL;
  }

LABEL_210:
  v523 = *(v34 + 13);
  v853 = *(v34 + 12);
  v854 = v523;
  v855 = *(v34 + 14);
  v524 = *(v34 + 9);
  v852[8] = *(v34 + 8);
  v852[9] = v524;
  v525 = *(v34 + 11);
  v852[10] = *(v34 + 10);
  v852[11] = v525;
  v526 = *(v34 + 5);
  v852[4] = *(v34 + 4);
  v852[5] = v526;
  v527 = *(v34 + 7);
  v852[6] = *(v34 + 6);
  v852[7] = v527;
  v528 = *(v34 + 1);
  v852[0] = *v34;
  v852[1] = v528;
  v529 = *(v34 + 3);
  v852[2] = *(v34 + 2);
  v856 = *(v34 + 30);
  v852[3] = v529;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v852) == 1)
  {
    v530 = 0;
    v531 = 0;
  }

  else
  {
    v531 = *(&v853 + 1);
    v530 = v853;
    sub_1CF075D00(v853, *(&v853 + 1));
  }

  v532 = *(v42 + 13);
  v848 = *(v42 + 12);
  v849 = v532;
  v850 = *(v42 + 14);
  v533 = *(v42 + 9);
  v847[8] = *(v42 + 8);
  v847[9] = v533;
  v534 = *(v42 + 11);
  v847[10] = *(v42 + 10);
  v847[11] = v534;
  v535 = *(v42 + 5);
  v847[4] = *(v42 + 4);
  v847[5] = v535;
  v536 = *(v42 + 7);
  v847[6] = *(v42 + 6);
  v847[7] = v536;
  v537 = *(v42 + 1);
  v847[0] = *v42;
  v847[1] = v537;
  v538 = *(v42 + 3);
  v847[2] = *(v42 + 2);
  v851 = *(v42 + 30);
  v847[3] = v538;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v847) == 1)
  {
    if (!v530)
    {
      goto LABEL_241;
    }

    goto LABEL_238;
  }

  v545 = v848;
  sub_1CF075D00(v848, *(&v848 + 1));
  if (!v530)
  {
    if (!v545)
    {
      goto LABEL_241;
    }

    v575 = *(&v545 + 1);
    v574 = v545;
    goto LABEL_239;
  }

  if (!v545)
  {
LABEL_238:
    v574 = v530;
    v575 = v531;
LABEL_239:
    sub_1CF24CCFC(v574, v575, v539, v540, v541, v542, v543, v544);
    goto LABEL_240;
  }

  if ((sub_1CF6BEA0C(v530, v545) & 1) == 0)
  {
    *(&v545 + 1), v546, v547, v548, v549, v550, v551, v552;
    v545, v695, v696, v697, v698, v699, v700, v701;
    goto LABEL_238;
  }

  v553 = sub_1CF6BEA0C(v531, *(&v545 + 1));
  *(&v545 + 1), v554, v555, v556, v557, v558, v559, v560;
  v545, v561, v562, v563, v564, v565, v566, v567;
  sub_1CF24CCFC(v530, v531, v568, v569, v570, v571, v572, v573);
  if ((v553 & 1) == 0)
  {
LABEL_240:
    v1427[0] |= 0x8000000000uLL;
  }

LABEL_241:
  v702 = *(v34 + 13);
  v843[12] = *(v34 + 12);
  v844 = v702;
  v845 = *(v34 + 14);
  v703 = *(v34 + 9);
  v843[8] = *(v34 + 8);
  v843[9] = v703;
  v704 = *(v34 + 11);
  v843[10] = *(v34 + 10);
  v843[11] = v704;
  v705 = *(v34 + 5);
  v843[4] = *(v34 + 4);
  v843[5] = v705;
  v706 = *(v34 + 7);
  v843[6] = *(v34 + 6);
  v843[7] = v706;
  v707 = *(v34 + 1);
  v843[0] = *v34;
  v843[1] = v707;
  v708 = *(v34 + 3);
  v843[2] = *(v34 + 2);
  v846 = *(v34 + 30);
  v843[3] = v708;
  v709 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v843);
  v710 = *(v42 + 13);
  v839[12] = *(v42 + 12);
  v840 = v710;
  v841 = *(v42 + 14);
  v711 = *(v42 + 9);
  v839[8] = *(v42 + 8);
  v839[9] = v711;
  v712 = *(v42 + 11);
  v839[10] = *(v42 + 10);
  v839[11] = v712;
  v713 = *(v42 + 5);
  v839[4] = *(v42 + 4);
  v839[5] = v713;
  v714 = *(v42 + 7);
  v839[6] = *(v42 + 6);
  v839[7] = v714;
  v715 = *(v42 + 1);
  v839[0] = *v42;
  v839[1] = v715;
  v716 = *(v42 + 3);
  v839[2] = *(v42 + 2);
  v717 = v844;
  v842 = *(v42 + 30);
  v839[3] = v716;
  v718 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v839);
  if (v709 == 1)
  {
    if (v718 == 1)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  if (v718 == 1 || v717 != v840)
  {
LABEL_246:
    v1427[0] |= 0x2000000000000uLL;
  }

LABEL_247:
  v719 = *(v34 + 13);
  v836[12] = *(v34 + 12);
  v836[13] = v719;
  v837 = *(v34 + 14);
  v838 = *(v34 + 30);
  v720 = *(v34 + 9);
  v836[8] = *(v34 + 8);
  v836[9] = v720;
  v721 = *(v34 + 11);
  v836[10] = *(v34 + 10);
  v836[11] = v721;
  v722 = *(v34 + 5);
  v836[4] = *(v34 + 4);
  v836[5] = v722;
  v723 = *(v34 + 7);
  v836[6] = *(v34 + 6);
  v836[7] = v723;
  v724 = *(v34 + 1);
  v836[0] = *v34;
  v836[1] = v724;
  v725 = *(v34 + 3);
  v836[2] = *(v34 + 2);
  v836[3] = v725;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v836) == 1 || (v726 = v837) == 0)
  {
    v728 = 0;
  }

  else
  {

    v728 = sub_1CF93CD44(v727);
    v726, v729, v730, v731, v732, v733, v734, v735;
  }

  v736 = *(v42 + 13);
  v833[12] = *(v42 + 12);
  v833[13] = v736;
  v834 = *(v42 + 14);
  v835 = *(v42 + 30);
  v737 = *(v42 + 9);
  v833[8] = *(v42 + 8);
  v833[9] = v737;
  v738 = *(v42 + 11);
  v833[10] = *(v42 + 10);
  v833[11] = v738;
  v739 = *(v42 + 5);
  v833[4] = *(v42 + 4);
  v833[5] = v739;
  v740 = *(v42 + 7);
  v833[6] = *(v42 + 6);
  v833[7] = v740;
  v741 = *(v42 + 1);
  v833[0] = *v42;
  v833[1] = v741;
  v742 = *(v42 + 3);
  v833[2] = *(v42 + 2);
  v833[3] = v742;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v833) == 1 || (v750 = v834) == 0)
  {
    v752 = 0;
    if (!v728)
    {
LABEL_254:
      if (!v752)
      {
        goto LABEL_263;
      }

      goto LABEL_261;
    }
  }

  else
  {

    v752 = sub_1CF93CD44(v751);
    v750, v753, v754, v755, v756, v757, v758, v759;
    if (!v728)
    {
      goto LABEL_254;
    }
  }

  if (!v752)
  {
    v752 = v728;
LABEL_261:
    v752, v743, v744, v745, v746, v747, v748, v749;
    goto LABEL_262;
  }

  v760 = sub_1CF6BF228(v728, v752);
  v728, v761, v762, v763, v764, v765, v766, v767;
  v752, v768, v769, v770, v771, v772, v773, v774;
  if ((v760 & 1) == 0)
  {
LABEL_262:
    v1427[0] |= 0x4000000000000uLL;
  }

LABEL_263:
  v775 = *(v34 + 13);
  v830[12] = *(v34 + 12);
  v830[13] = v775;
  v831 = *(v34 + 14);
  v832 = *(v34 + 30);
  v776 = *(v34 + 9);
  v830[8] = *(v34 + 8);
  v830[9] = v776;
  v777 = *(v34 + 11);
  v830[10] = *(v34 + 10);
  v830[11] = v777;
  v778 = *(v34 + 5);
  v830[4] = *(v34 + 4);
  v830[5] = v778;
  v779 = *(v34 + 7);
  v830[6] = *(v34 + 6);
  v830[7] = v779;
  v780 = *(v34 + 1);
  v830[0] = *v34;
  v830[1] = v780;
  v781 = *(v34 + 3);
  v830[2] = *(v34 + 2);
  v830[3] = v781;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v830) == 1)
  {
    v782 = 0;
    v783 = 0;
  }

  else
  {
    v782 = *(&v831 + 1);
    v783 = v832;
  }

  v784 = *(v42 + 13);
  v827[12] = *(v42 + 12);
  v827[13] = v784;
  v828 = *(v42 + 14);
  v829 = *(v42 + 30);
  v785 = *(v42 + 9);
  v827[8] = *(v42 + 8);
  v827[9] = v785;
  v786 = *(v42 + 11);
  v827[10] = *(v42 + 10);
  v827[11] = v786;
  v787 = *(v42 + 5);
  v827[4] = *(v42 + 4);
  v827[5] = v787;
  v788 = *(v42 + 7);
  v827[6] = *(v42 + 6);
  v827[7] = v788;
  v789 = *(v42 + 1);
  v827[0] = *v42;
  v827[1] = v789;
  v790 = *(v42 + 3);
  v827[2] = *(v42 + 2);
  v827[3] = v790;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v827) == 1)
  {
    if (!v783)
    {
      goto LABEL_278;
    }

    goto LABEL_274;
  }

  v799 = *(&v828 + 1);
  v798 = v829;

  if (v783)
  {
    if (!v798)
    {
LABEL_274:
      v798 = v783;
LABEL_276:
      v798, v791, v792, v793, v794, v795, v796, v797;
LABEL_277:
      v1427[0] |= 0x8000000000000uLL;
      goto LABEL_278;
    }

    if (v782 != v799 || v783 != v798)
    {
      v807 = sub_1CF9E8048();
      v783, v808, v809, v810, v811, v812, v813, v814;
      v798, v815, v816, v817, v818, v819, v820, v821;
      if (v807)
      {
        goto LABEL_278;
      }

      goto LABEL_277;
    }

    v783, v791, v792, v793, v794, v795, v796, v797;
    v798, v800, v801, v802, v803, v804, v805, v806;
  }

  else if (v798)
  {
    goto LABEL_276;
  }

LABEL_278:
  *v826 = v1427[0];
}

void sub_1CF71CDC8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v836 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v832 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v832 - v11;
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v15 = *(v2 + 136);
  v834 = *(v2 + 128);
  v835 = v13;
  v833 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  sub_1CEFE4FF4(v2 + *(v16 + 48), &v12[*(v7 + 48)], type metadata accessor for ItemMetadata);
  v17 = v834;
  *v12 = v835;
  v12[8] = v14;
  *(v12 + 2) = v17;
  *(v12 + 3) = v15;
  v18 = *(v4 + 16);
  LODWORD(v835) = *(v4 + 24);
  v19 = *(v4 + 136);
  v834 = *(v4 + 128);
  sub_1CEFE4FF4(v4 + *(v16 + 48), &v9[*(v7 + 48)], type metadata accessor for ItemMetadata);
  *v9 = v18;
  v9[8] = v835;
  *(v9 + 2) = v834;
  *(v9 + 3) = v19;
  v835 = v16;
  v20 = *(v4 + *(v16 + 64));

  sub_1CF71F5B8(v9, v20, 0, v1437);
  sub_1CEFCCC44(v9, &unk_1EC4BFD90, &unk_1CFA134F0);
  sub_1CEFCCC44(v12, &unk_1EC4BFD90, &unk_1CFA134F0);
  if (*(v2 + 32) != *(v4 + 32) || *(v2 + 40) != *(v4 + 40))
  {
    goto LABEL_9;
  }

  v21 = *(v4 + 56);
  if (*(v2 + 56))
  {
    if (*(v4 + 56))
    {
      goto LABEL_10;
    }

LABEL_9:
    v1437[0] |= 8uLL;
    goto LABEL_10;
  }

  if (*(v2 + 48) != *(v4 + 48))
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_9;
  }

LABEL_10:
  v22 = *(v2 + 72);
  v23 = *(v2 + 96);
  v24 = *(v4 + 72);
  v25 = *(v4 + 88);
  v26 = *(v4 + 96);
  v833 = *(v2 + 88);
  v834 = v25;
  v27 = *(v4 + 80);
  v28 = *(v2 + 80);

  LOBYTE(v22) = sub_1CF443664(v22, v28, v833, v23, v24, v27, v834, v26);
  v23, v29, v30, v31, v32, v33, v34, v35;
  v26, v36, v37, v38, v39, v40, v41, v42;
  if ((v22 & 1) == 0)
  {
    v1437[0] |= 0x20000000000uLL;
  }

  v43 = *(v835 + 52);
  v44 = v2 + v43;
  v45 = *(v2 + v43 + 208);
  v1431 = *(v2 + v43 + 192);
  v1432 = v45;
  v1433 = *(v2 + v43 + 224);
  v1434 = *(v2 + v43 + 240);
  v46 = *(v2 + v43 + 144);
  v1427 = *(v2 + v43 + 128);
  v1428 = v46;
  v47 = *(v2 + v43 + 176);
  v1429 = *(v2 + v43 + 160);
  v1430 = v47;
  v48 = *(v2 + v43 + 80);
  v1423 = *(v2 + v43 + 64);
  v1424 = v48;
  v49 = *(v2 + v43 + 112);
  v1425 = *(v2 + v43 + 96);
  v1426 = v49;
  v50 = *(v2 + v43 + 16);
  v1419 = *(v2 + v43);
  v1420 = v50;
  v51 = *(v2 + v43 + 48);
  v1421 = *(v2 + v43 + 32);
  v1422 = v51;
  v52 = (v4 + v43);
  v53 = *(v4 + v43 + 208);
  v1435[12] = *(v4 + v43 + 192);
  v1435[13] = v53;
  v1435[14] = *(v4 + v43 + 224);
  v1436 = *(v4 + v43 + 240);
  v54 = *(v4 + v43 + 144);
  v1435[8] = *(v4 + v43 + 128);
  v1435[9] = v54;
  v55 = *(v4 + v43 + 176);
  v1435[10] = *(v4 + v43 + 160);
  v1435[11] = v55;
  v56 = *(v4 + v43 + 80);
  v1435[4] = *(v4 + v43 + 64);
  v1435[5] = v56;
  v57 = *(v4 + v43 + 112);
  v1435[6] = *(v4 + v43 + 96);
  v1435[7] = v57;
  v58 = *(v4 + v43 + 16);
  v1435[0] = *(v4 + v43);
  v1435[1] = v58;
  v59 = *(v4 + v43 + 48);
  v1435[2] = *(v4 + v43 + 32);
  v1435[3] = v59;
  enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1435);
  v61 = *&v1435[0];
  v1417[12] = v1431;
  v1417[13] = v1432;
  v1417[14] = v1433;
  v1418 = v1434;
  v1417[8] = v1427;
  v1417[9] = v1428;
  v1417[10] = v1429;
  v1417[11] = v1430;
  v1417[4] = v1423;
  v1417[5] = v1424;
  v1417[6] = v1425;
  v1417[7] = v1426;
  v1417[0] = v1419;
  v1417[1] = v1420;
  v1417[2] = v1421;
  v1417[3] = v1422;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1417) == 1)
  {
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
    {
      goto LABEL_21;
    }

LABEL_20:
    v1437[0] |= 0x40000uLL;
    goto LABEL_21;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
  {
    v62 = 0;
  }

  else
  {
    v62 = v61;
  }

  if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1 || *&v1417[0] != v62)
  {
    goto LABEL_20;
  }

LABEL_21:
  v63 = *(v44 + 208);
  v1411 = *(v44 + 192);
  v1412 = v63;
  v1413 = *(v44 + 224);
  v64 = *(v44 + 144);
  v1407 = *(v44 + 128);
  v1408 = v64;
  v65 = *(v44 + 176);
  v1409 = *(v44 + 160);
  v1410 = v65;
  v66 = *(v44 + 80);
  v1403 = *(v44 + 64);
  v1404 = v66;
  v67 = *(v44 + 112);
  v1405 = *(v44 + 96);
  v1406 = v67;
  v68 = *(v44 + 16);
  v1399 = *v44;
  v1400 = v68;
  v69 = *(v44 + 48);
  v1401 = *(v44 + 32);
  v1402 = v69;
  v70 = v52[13];
  v1415[12] = v52[12];
  v1415[13] = v70;
  v1415[14] = v52[14];
  v71 = v52[9];
  v1415[8] = v52[8];
  v1415[9] = v71;
  v72 = v52[11];
  v1415[10] = v52[10];
  v1415[11] = v72;
  v73 = v52[5];
  v1415[4] = v52[4];
  v1415[5] = v73;
  v74 = v52[7];
  v1415[6] = v52[6];
  v1415[7] = v74;
  v75 = v52[1];
  v1415[0] = *v52;
  v1415[1] = v75;
  v76 = v52[3];
  v1415[2] = v52[2];
  v1414 = *(v44 + 240);
  v1416 = *(v52 + 30);
  v1415[3] = v76;
  v77 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1415);
  v78 = BYTE8(v1415[0]);
  v1397[12] = v1411;
  v1397[13] = v1412;
  v1397[14] = v1413;
  v1398 = v1414;
  v1397[8] = v1407;
  v1397[9] = v1408;
  v1397[10] = v1409;
  v1397[11] = v1410;
  v1397[4] = v1403;
  v1397[5] = v1404;
  v1397[6] = v1405;
  v1397[7] = v1406;
  v1397[0] = v1399;
  v1397[1] = v1400;
  v1397[2] = v1401;
  v1397[3] = v1402;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1397) == 1)
  {
    if (v77 == 1)
    {
      goto LABEL_27;
    }

LABEL_26:
    v1437[0] |= 0x80000uLL;
    goto LABEL_27;
  }

  if (v77 == 1 || ((v78 ^ BYTE8(v1397[0])) & 1) != 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  v79 = *(v44 + 208);
  v1391 = *(v44 + 192);
  v1392 = v79;
  v1393 = *(v44 + 224);
  v80 = *(v44 + 144);
  v1387 = *(v44 + 128);
  v1388 = v80;
  v81 = *(v44 + 176);
  v1389 = *(v44 + 160);
  v1390 = v81;
  v82 = *(v44 + 80);
  v1383 = *(v44 + 64);
  v1384 = v82;
  v83 = *(v44 + 112);
  v1385 = *(v44 + 96);
  v1386 = v83;
  v84 = *(v44 + 16);
  v1379 = *v44;
  v1380 = v84;
  v85 = *(v44 + 48);
  v1381 = *(v44 + 32);
  v1382 = v85;
  v86 = v52[13];
  v1395[12] = v52[12];
  v1395[13] = v86;
  v1395[14] = v52[14];
  v87 = v52[9];
  v1395[8] = v52[8];
  v1395[9] = v87;
  v88 = v52[11];
  v1395[10] = v52[10];
  v1395[11] = v88;
  v89 = v52[5];
  v1395[4] = v52[4];
  v1395[5] = v89;
  v90 = v52[7];
  v1395[6] = v52[6];
  v1395[7] = v90;
  v91 = v52[1];
  v1395[0] = *v52;
  v1395[1] = v91;
  v92 = v52[3];
  v1395[2] = v52[2];
  v1394 = *(v44 + 240);
  v1396 = *(v52 + 30);
  v1395[3] = v92;
  v93 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1395);
  v94 = BYTE9(v1395[0]);
  v1377[12] = v1391;
  v1377[13] = v1392;
  v1377[14] = v1393;
  v1378 = v1394;
  v1377[8] = v1387;
  v1377[9] = v1388;
  v1377[10] = v1389;
  v1377[11] = v1390;
  v1377[4] = v1383;
  v1377[5] = v1384;
  v1377[6] = v1385;
  v1377[7] = v1386;
  v1377[0] = v1379;
  v1377[1] = v1380;
  v1377[2] = v1381;
  v1377[3] = v1382;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1377) != 1)
  {
    if (v93 != 1 && ((v94 ^ BYTE9(v1377[0])) & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v93 != 1)
  {
LABEL_32:
    v1437[0] |= 0x100000uLL;
  }

LABEL_33:
  v95 = *(v44 + 208);
  v1373 = *(v44 + 192);
  v1374 = v95;
  v1375 = *(v44 + 224);
  v96 = *(v44 + 144);
  v1369 = *(v44 + 128);
  v1370 = v96;
  v97 = *(v44 + 176);
  v1371 = *(v44 + 160);
  v1372 = v97;
  v98 = *(v44 + 80);
  v1365 = *(v44 + 64);
  v1366 = v98;
  v99 = *(v44 + 112);
  v1367 = *(v44 + 96);
  v1368 = v99;
  v100 = *(v44 + 16);
  v1361 = *v44;
  v1362 = v100;
  v101 = *(v44 + 48);
  v1363 = *(v44 + 32);
  v1376 = *(v44 + 240);
  v1364 = v101;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1361) == 1)
  {
    v102 = 0;
  }

  else
  {
    v102 = v1362;
    v103 = v1362;
  }

  v104 = v52[13];
  v1357 = v52[12];
  v1358 = v104;
  v1359 = v52[14];
  v105 = v52[9];
  v1353 = v52[8];
  v1354 = v105;
  v106 = v52[11];
  v1355 = v52[10];
  v1356 = v106;
  v107 = v52[5];
  v1349 = v52[4];
  v1350 = v107;
  v108 = v52[7];
  v1351 = v52[6];
  v1352 = v108;
  v109 = v52[1];
  v1345 = *v52;
  v1346 = v109;
  v110 = v52[3];
  v1347 = v52[2];
  v1360 = *(v52 + 30);
  v1348 = v110;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1345) == 1)
  {
    v111 = 0;
  }

  else
  {
    v111 = v1346;
    v112 = v1346;
  }

  v113 = errorsAreDifferent(error:otherError:)(v102, v111);

  if (v113)
  {
    v1437[0] |= 0x200000uLL;
  }

  v114 = *(v44 + 208);
  v1341 = *(v44 + 192);
  v1342 = v114;
  v1343 = *(v44 + 224);
  v115 = *(v44 + 144);
  v1337 = *(v44 + 128);
  v1338 = v115;
  v116 = *(v44 + 176);
  v1339 = *(v44 + 160);
  v1340 = v116;
  v117 = *(v44 + 80);
  v1333 = *(v44 + 64);
  v1334 = v117;
  v118 = *(v44 + 112);
  v1335 = *(v44 + 96);
  v1336 = v118;
  v119 = *(v44 + 16);
  v1329 = *v44;
  v1330 = v119;
  v120 = *(v44 + 48);
  v1331 = *(v44 + 32);
  v1344 = *(v44 + 240);
  v1332 = v120;
  v121 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1329);
  v122 = v52[13];
  v1325 = v52[12];
  v1326 = v122;
  v1327 = v52[14];
  v123 = v52[9];
  v1321 = v52[8];
  v1322 = v123;
  v124 = v52[11];
  v1323 = v52[10];
  v1324 = v124;
  v125 = v52[5];
  v1317 = v52[4];
  v1318 = v125;
  v126 = v52[7];
  v1319 = v52[6];
  v1320 = v126;
  v127 = v52[1];
  v1313 = *v52;
  v1314 = v127;
  v128 = v52[3];
  v1315 = v52[2];
  v130 = v121 != 1 && *(&v1330 + 1) != 0;
  v1328 = *(v52 + 30);
  v1316 = v128;
  v132 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v1313) == 1 || *(&v1314 + 1) == 0;
  if (v130 == v132)
  {
    v1437[0] |= 0x400000uLL;
  }

  v133 = *(v44 + 208);
  v1294 = *(v44 + 192);
  v1295 = v133;
  v1296 = *(v44 + 224);
  v134 = *(v44 + 144);
  v1290 = *(v44 + 128);
  v1291 = v134;
  v135 = *(v44 + 176);
  v1292 = *(v44 + 160);
  v1293 = v135;
  v136 = *(v44 + 80);
  v1286 = *(v44 + 64);
  v1287 = v136;
  v137 = *(v44 + 112);
  v1288 = *(v44 + 96);
  v1289 = v137;
  v138 = *(v44 + 16);
  v1282 = *v44;
  v1283 = v138;
  v139 = *(v44 + 48);
  v1284 = *(v44 + 32);
  v1285 = v139;
  v140 = v52[13];
  v1309 = v52[12];
  v1310 = v140;
  v1311 = v52[14];
  v141 = v52[9];
  v1305 = v52[8];
  v1306 = v141;
  v142 = v52[11];
  v1307 = v52[10];
  v1308 = v142;
  v143 = v52[5];
  v1301 = v52[4];
  v1302 = v143;
  v144 = v52[7];
  v1303 = v52[6];
  v1304 = v144;
  v145 = v52[1];
  v1298[0] = *v52;
  v1298[1] = v145;
  v146 = v52[3];
  v1299 = v52[2];
  v1297 = *(v44 + 240);
  v1312 = *(v52 + 30);
  v1300 = v146;
  v147 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1298);
  v148 = v1299;
  v1278 = v1294;
  v1279 = v1295;
  v1280 = v1296;
  v1281 = v1297;
  v1274 = v1290;
  v1275 = v1291;
  v1276 = v1292;
  v1277 = v1293;
  v1270 = v1286;
  v1271 = v1287;
  v1272 = v1288;
  v1273 = v1289;
  v1267[0] = v1282;
  v1267[1] = v1283;
  v1268 = v1284;
  v1269 = v1285;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1267) == 1)
  {
    if (v147 == 1)
    {
      goto LABEL_61;
    }

LABEL_60:
    v1437[0] |= 0x1000000uLL;
    goto LABEL_61;
  }

  if (v147 == 1 || ((v148 ^ v1268) & 1) != 0)
  {
    goto LABEL_60;
  }

LABEL_61:
  v149 = *(v44 + 208);
  v1248 = *(v44 + 192);
  v1249 = v149;
  v1250 = *(v44 + 224);
  v1251 = *(v44 + 240);
  v150 = *(v44 + 144);
  v1244 = *(v44 + 128);
  v1245 = v150;
  v151 = *(v44 + 176);
  v1246 = *(v44 + 160);
  v1247 = v151;
  v152 = *(v44 + 80);
  v1240 = *(v44 + 64);
  v1241 = v152;
  v153 = *(v44 + 112);
  v1242 = *(v44 + 96);
  v1243 = v153;
  v154 = *(v44 + 16);
  v1236 = *v44;
  v1237 = v154;
  v155 = *(v44 + 48);
  v1238 = *(v44 + 32);
  v1239 = v155;
  v156 = v52[13];
  v1263 = v52[12];
  v1264 = v156;
  v1265 = v52[14];
  v1266 = *(v52 + 30);
  v157 = v52[9];
  v1259 = v52[8];
  v1260 = v157;
  v158 = v52[11];
  v1261 = v52[10];
  v1262 = v158;
  v159 = v52[5];
  v1255 = v52[4];
  v1256 = v159;
  v160 = v52[7];
  v1257 = v52[6];
  v1258 = v160;
  v161 = v52[1];
  v1252[0] = *v52;
  v1252[1] = v161;
  v162 = v52[3];
  v1253 = v52[2];
  v1254 = v162;
  v163 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1252);
  v164 = BYTE1(v1253);
  v1232 = v1248;
  v1233 = v1249;
  v1234 = v1250;
  v1235 = v1251;
  v1228 = v1244;
  v1229 = v1245;
  v1230 = v1246;
  v1231 = v1247;
  v1224 = v1240;
  v1225 = v1241;
  v1226 = v1242;
  v1227 = v1243;
  v1221[0] = v1236;
  v1221[1] = v1237;
  v1222 = v1238;
  v1223 = v1239;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1221) == 1)
  {
    if (v163 == 1)
    {
      goto LABEL_67;
    }

LABEL_66:
    v1437[0] |= 0x2000000uLL;
    goto LABEL_67;
  }

  if (v163 == 1 || ((v164 ^ BYTE1(v1222)) & 1) != 0)
  {
    goto LABEL_66;
  }

LABEL_67:
  v165 = *(v44 + 208);
  v1202 = *(v44 + 192);
  v1203 = v165;
  v1204 = *(v44 + 224);
  v166 = *(v44 + 144);
  v1198 = *(v44 + 128);
  v1199 = v166;
  v167 = *(v44 + 176);
  v1200 = *(v44 + 160);
  v1201 = v167;
  v168 = *(v44 + 80);
  v1194 = *(v44 + 64);
  v1195 = v168;
  v169 = *(v44 + 112);
  v1196 = *(v44 + 96);
  v1197 = v169;
  v170 = *(v44 + 16);
  v1190 = *v44;
  v1191 = v170;
  v171 = *(v44 + 48);
  v1192 = *(v44 + 32);
  v1193 = v171;
  v172 = v52[13];
  v1217 = v52[12];
  v1218 = v172;
  v1219 = v52[14];
  v173 = v52[9];
  v1213 = v52[8];
  v1214 = v173;
  v174 = v52[11];
  v1215 = v52[10];
  v1216 = v174;
  v175 = v52[5];
  v1209 = v52[4];
  v1210 = v175;
  v176 = v52[7];
  v1211 = v52[6];
  v1212 = v176;
  v177 = v52[1];
  v1206[0] = *v52;
  v1206[1] = v177;
  v178 = v52[3];
  v1207 = v52[2];
  v1205 = *(v44 + 240);
  v1220 = *(v52 + 30);
  v1208 = v178;
  v179 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1206);
  v180 = BYTE2(v1207);
  v1186 = v1202;
  v1187 = v1203;
  v1188 = v1204;
  v1189 = v1205;
  v1182 = v1198;
  v1183 = v1199;
  v1184 = v1200;
  v1185 = v1201;
  v1178 = v1194;
  v1179 = v1195;
  v1180 = v1196;
  v1181 = v1197;
  v1175[0] = v1190;
  v1175[1] = v1191;
  v1176 = v1192;
  v1177 = v1193;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1175) != 1)
  {
    if (v179 != 1 && ((v180 ^ BYTE2(v1176)) & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (v179 != 1)
  {
LABEL_72:
    v1437[0] |= 0x4000000uLL;
  }

LABEL_73:
  v181 = *(v44 + 208);
  v1171 = *(v44 + 192);
  v1172 = v181;
  v1173 = *(v44 + 224);
  v182 = *(v44 + 144);
  v1167 = *(v44 + 128);
  v1168 = v182;
  v183 = *(v44 + 176);
  v1169 = *(v44 + 160);
  v1170 = v183;
  v184 = *(v44 + 80);
  v1163 = *(v44 + 64);
  v1164 = v184;
  v185 = *(v44 + 112);
  v1165 = *(v44 + 96);
  v1166 = v185;
  v186 = *(v44 + 16);
  v1160[0] = *v44;
  v1160[1] = v186;
  v187 = *(v44 + 48);
  v1161 = *(v44 + 32);
  v1174 = *(v44 + 240);
  v1162 = v187;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1160) == 1)
  {
    v188 = 0;
    v189 = 0;
  }

  else
  {
    v188 = *(&v1161 + 1);
    v189 = v1162;
  }

  v190 = v52[13];
  v1156 = v52[12];
  v1157 = v190;
  v1158 = v52[14];
  v191 = v52[9];
  v1152 = v52[8];
  v1153 = v191;
  v192 = v52[11];
  v1154 = v52[10];
  v1155 = v192;
  v193 = v52[5];
  v1148 = v52[4];
  v1149 = v193;
  v194 = v52[7];
  v1150 = v52[6];
  v1151 = v194;
  v195 = v52[1];
  v1145[0] = *v52;
  v1145[1] = v195;
  v196 = v52[3];
  v1146 = v52[2];
  v1159 = *(v52 + 30);
  v1147 = v196;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1145) == 1)
  {
    if (!v189)
    {
      goto LABEL_88;
    }

    goto LABEL_84;
  }

  v204 = *(&v1146 + 1);
  v205 = v1147;

  if (!v189)
  {
    if (!v205)
    {
      goto LABEL_88;
    }

    goto LABEL_86;
  }

  if (!v205)
  {
LABEL_84:
    v205 = v189;
LABEL_86:
    v205, v197, v198, v199, v200, v201, v202, v203;
LABEL_87:
    v1437[0] |= 0x8000000uLL;
    goto LABEL_88;
  }

  if (v188 == v204 && v189 == v205)
  {
    v189, v197, v198, v199, v200, v201, v202, v203;
    v205, v206, v207, v208, v209, v210, v211, v212;
    goto LABEL_88;
  }

  v586 = sub_1CF9E8048();
  v189, v587, v588, v589, v590, v591, v592, v593;
  v205, v594, v595, v596, v597, v598, v599, v600;
  if ((v586 & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_88:
  v213 = *(v44 + 208);
  v1141 = *(v44 + 192);
  v1142 = v213;
  v1143 = *(v44 + 224);
  v214 = *(v44 + 144);
  v1137 = *(v44 + 128);
  v1138 = v214;
  v215 = *(v44 + 176);
  v1139 = *(v44 + 160);
  v1140 = v215;
  v216 = *(v44 + 80);
  v1133 = *(v44 + 64);
  v1134 = v216;
  v217 = *(v44 + 112);
  v1135 = *(v44 + 96);
  v1136 = v217;
  v218 = *(v44 + 16);
  v1131[0] = *v44;
  v1131[1] = v218;
  v219 = *(v44 + 48);
  v1131[2] = *(v44 + 32);
  v1144 = *(v44 + 240);
  v1132 = v219;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1131) == 1)
  {
    v220 = 0;
    v221 = 0;
  }

  else
  {
    v220 = *(&v1132 + 1);
    v221 = v1133;
  }

  v222 = v52[13];
  v1127 = v52[12];
  v1128 = v222;
  v1129 = v52[14];
  v223 = v52[9];
  v1123 = v52[8];
  v1124 = v223;
  v224 = v52[11];
  v1125 = v52[10];
  v1126 = v224;
  v225 = v52[5];
  v1119 = v52[4];
  v1120 = v225;
  v226 = v52[7];
  v1121 = v52[6];
  v1122 = v226;
  v227 = v52[1];
  v1117[0] = *v52;
  v1117[1] = v227;
  v228 = v52[3];
  v1117[2] = v52[2];
  v1130 = *(v52 + 30);
  v1118 = v228;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1117) == 1)
  {
    if (!v221)
    {
      goto LABEL_103;
    }

    goto LABEL_99;
  }

  v236 = *(&v1118 + 1);
  v237 = v1119;

  if (!v221)
  {
    if (!v237)
    {
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  if (!v237)
  {
LABEL_99:
    v237 = v221;
LABEL_101:
    v237, v229, v230, v231, v232, v233, v234, v235;
LABEL_102:
    v1437[0] |= 0x10000000uLL;
    goto LABEL_103;
  }

  if (v220 == v236 && v221 == v237)
  {
    v221, v229, v230, v231, v232, v233, v234, v235;
    v237, v238, v239, v240, v241, v242, v243, v244;
    goto LABEL_103;
  }

  v601 = sub_1CF9E8048();
  v221, v602, v603, v604, v605, v606, v607, v608;
  v237, v609, v610, v611, v612, v613, v614, v615;
  if ((v601 & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_103:
  v245 = *(v44 + 208);
  v1100 = *(v44 + 192);
  v1101 = v245;
  v1102 = *(v44 + 224);
  v246 = *(v44 + 144);
  v1096 = *(v44 + 128);
  v1097 = v246;
  v247 = *(v44 + 176);
  v1098 = *(v44 + 160);
  v1099 = v247;
  v248 = *(v44 + 80);
  v1092 = *(v44 + 64);
  v1093 = v248;
  v249 = *(v44 + 112);
  v1094 = *(v44 + 96);
  v1095 = v249;
  v250 = *(v44 + 16);
  v1088 = *v44;
  v1089 = v250;
  v251 = *(v44 + 48);
  v1090 = *(v44 + 32);
  v1091 = v251;
  v252 = v52[13];
  v1113 = v52[12];
  v1114 = v252;
  v1115 = v52[14];
  v253 = v52[9];
  v1109 = v52[8];
  v1110 = v253;
  v254 = v52[11];
  v1111 = v52[10];
  v1112 = v254;
  v255 = v52[5];
  v1105 = v52[4];
  v1106 = v255;
  v256 = v52[7];
  v1107 = v52[6];
  v1108 = v256;
  v257 = v52[1];
  v1104[0] = *v52;
  v1104[1] = v257;
  v258 = v52[3];
  v1104[2] = v52[2];
  v1103 = *(v44 + 240);
  v1116 = *(v52 + 30);
  v1104[3] = v258;
  v259 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1104);
  v260 = BYTE8(v1105);
  v1084 = v1100;
  v1085 = v1101;
  v1086 = v1102;
  v1087 = v1103;
  v1080 = v1096;
  v1081 = v1097;
  v1082 = v1098;
  v1083 = v1099;
  v1076 = v1092;
  v1077 = v1093;
  v1078 = v1094;
  v1079 = v1095;
  v1075[0] = v1088;
  v1075[1] = v1089;
  v1075[2] = v1090;
  v1075[3] = v1091;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1075) != 1)
  {
    if (v259 != 1 && ((v260 ^ BYTE8(v1076)) & 1) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

  if (v259 != 1)
  {
LABEL_108:
    v1437[0] |= 0x20000000uLL;
  }

LABEL_109:
  v261 = *(v44 + 208);
  v1071 = *(v44 + 192);
  v1072 = v261;
  v1073 = *(v44 + 224);
  v262 = *(v44 + 144);
  v1067 = *(v44 + 128);
  v1068 = v262;
  v263 = *(v44 + 176);
  v1069 = *(v44 + 160);
  v1070 = v263;
  v264 = *(v44 + 80);
  v1063[4] = *(v44 + 64);
  v1064 = v264;
  v265 = *(v44 + 112);
  v1065 = *(v44 + 96);
  v1066 = v265;
  v266 = *(v44 + 16);
  v1063[0] = *v44;
  v1063[1] = v266;
  v267 = *(v44 + 48);
  v1063[2] = *(v44 + 32);
  v1074 = *(v44 + 240);
  v1063[3] = v267;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1063) == 1)
  {
    v268 = 0;
    v269 = 0;
  }

  else
  {
    v269 = *(&v1064 + 1);
    v268 = v1064;
  }

  v270 = v52[13];
  v1059 = v52[12];
  v1060 = v270;
  v1061 = v52[14];
  v271 = v52[9];
  v1055 = v52[8];
  v1056 = v271;
  v272 = v52[11];
  v1057 = v52[10];
  v1058 = v272;
  v273 = v52[5];
  v1051[4] = v52[4];
  v1052 = v273;
  v274 = v52[7];
  v1053 = v52[6];
  v1054 = v274;
  v275 = v52[1];
  v1051[0] = *v52;
  v1051[1] = v275;
  v276 = v52[3];
  v1051[2] = v52[2];
  v1062 = *(v52 + 30);
  v1051[3] = v276;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1051) == 1)
  {
    if (!v269)
    {
      goto LABEL_124;
    }

    goto LABEL_120;
  }

  v284 = *(&v1052 + 1);
  v285 = v1052;

  if (!v269)
  {
    if (!v284)
    {
      goto LABEL_124;
    }

    goto LABEL_122;
  }

  if (!v284)
  {
LABEL_120:
    v284 = v269;
LABEL_122:
    v284, v277, v278, v279, v280, v281, v282, v283;
LABEL_123:
    v1437[0] |= 0x40000000uLL;
    goto LABEL_124;
  }

  if (v268 == v285 && v269 == v284)
  {
    v269, v277, v278, v279, v280, v281, v282, v283;
    v284, v286, v287, v288, v289, v290, v291, v292;
    goto LABEL_124;
  }

  v616 = sub_1CF9E8048();
  v269, v617, v618, v619, v620, v621, v622, v623;
  v284, v624, v625, v626, v627, v628, v629, v630;
  if ((v616 & 1) == 0)
  {
    goto LABEL_123;
  }

LABEL_124:
  v293 = *(v44 + 208);
  v1036 = *(v44 + 192);
  v1037 = v293;
  v1038 = *(v44 + 224);
  v294 = *(v44 + 144);
  v1032 = *(v44 + 128);
  v1033 = v294;
  v295 = *(v44 + 176);
  v1034 = *(v44 + 160);
  v1035 = v295;
  v296 = *(v44 + 80);
  v1028 = *(v44 + 64);
  v1029 = v296;
  v297 = *(v44 + 112);
  v1030 = *(v44 + 96);
  v1031 = v297;
  v298 = *(v44 + 16);
  v1024 = *v44;
  v1025 = v298;
  v299 = *(v44 + 48);
  v1026 = *(v44 + 32);
  v1027 = v299;
  v300 = v52[13];
  v1047 = v52[12];
  v1048 = v300;
  v1049 = v52[14];
  v301 = v52[9];
  v1043 = v52[8];
  v1044 = v301;
  v302 = v52[11];
  v1045 = v52[10];
  v1046 = v302;
  v303 = v52[5];
  v1040[4] = v52[4];
  v1040[5] = v303;
  v304 = v52[7];
  v1041 = v52[6];
  v1042 = v304;
  v305 = v52[1];
  v1040[0] = *v52;
  v1040[1] = v305;
  v306 = v52[3];
  v1040[2] = v52[2];
  v1039 = *(v44 + 240);
  v1050 = *(v52 + 30);
  v1040[3] = v306;
  v307 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1040);
  v308 = BYTE8(v1041);
  v1020 = v1036;
  v1021 = v1037;
  v1022 = v1038;
  v1023 = v1039;
  v1016 = v1032;
  v1017 = v1033;
  v1018 = v1034;
  v1019 = v1035;
  v1013[4] = v1028;
  v1013[5] = v1029;
  v1014 = v1030;
  v1015 = v1031;
  v1013[0] = v1024;
  v1013[1] = v1025;
  v1013[2] = v1026;
  v1013[3] = v1027;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1013) == 1)
  {
    if (v307 == 1)
    {
      goto LABEL_130;
    }

LABEL_129:
    v1437[0] |= 0x80000000uLL;
    goto LABEL_130;
  }

  if (v307 == 1 || ((v308 ^ BYTE8(v1014)) & 1) != 0)
  {
    goto LABEL_129;
  }

LABEL_130:
  v309 = *(v44 + 208);
  v998 = *(v44 + 192);
  v999 = v309;
  v1000 = *(v44 + 224);
  v1001 = *(v44 + 240);
  v310 = *(v44 + 144);
  v994 = *(v44 + 128);
  v995 = v310;
  v311 = *(v44 + 176);
  v996 = *(v44 + 160);
  v997 = v311;
  v312 = *(v44 + 80);
  v990 = *(v44 + 64);
  v991 = v312;
  v313 = *(v44 + 112);
  v992 = *(v44 + 96);
  v993 = v313;
  v314 = *(v44 + 16);
  v986 = *v44;
  v987 = v314;
  v315 = *(v44 + 48);
  v988 = *(v44 + 32);
  v989 = v315;
  v316 = v52[13];
  v1009 = v52[12];
  v1010 = v316;
  v1011 = v52[14];
  v1012 = *(v52 + 30);
  v317 = v52[9];
  v1005 = v52[8];
  v1006 = v317;
  v318 = v52[11];
  v1007 = v52[10];
  v1008 = v318;
  v319 = v52[5];
  v1002[4] = v52[4];
  v1002[5] = v319;
  v320 = v52[7];
  v1003 = v52[6];
  v1004 = v320;
  v321 = v52[1];
  v1002[0] = *v52;
  v1002[1] = v321;
  v322 = v52[3];
  v1002[2] = v52[2];
  v1002[3] = v322;
  v323 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v1002);
  v982 = v998;
  v983 = v999;
  v984 = v1000;
  v978 = v994;
  v979 = v995;
  v980 = v996;
  v981 = v997;
  v975[4] = v990;
  v975[5] = v991;
  v976 = v992;
  v977 = v993;
  v975[0] = v986;
  v975[1] = v987;
  v975[2] = v988;
  v324 = BYTE9(v1003);
  v985 = v1001;
  v975[3] = v989;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v975) != 1)
  {
    if (v323 != 1 && ((v324 ^ BYTE9(v976)) & 1) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  if (v323 != 1)
  {
LABEL_135:
    v1437[0] |= 0x100000000uLL;
  }

LABEL_136:
  v325 = *(v44 + 208);
  v971 = *(v44 + 192);
  v972 = v325;
  v973 = *(v44 + 224);
  v326 = *(v44 + 144);
  v967 = *(v44 + 128);
  v968 = v326;
  v327 = *(v44 + 176);
  v969 = *(v44 + 160);
  v970 = v327;
  v328 = *(v44 + 80);
  v965[4] = *(v44 + 64);
  v965[5] = v328;
  v329 = *(v44 + 112);
  v965[6] = *(v44 + 96);
  v966 = v329;
  v330 = *(v44 + 16);
  v965[0] = *v44;
  v965[1] = v330;
  v331 = *(v44 + 48);
  v965[2] = *(v44 + 32);
  v974 = *(v44 + 240);
  v965[3] = v331;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v965) == 1)
  {
    v332 = 0;
    v333 = 0;
  }

  else
  {
    v333 = *(&v966 + 1);
    v332 = v966;
  }

  v334 = v52[13];
  v961 = v52[12];
  v962 = v334;
  v963 = v52[14];
  v335 = v52[9];
  v957 = v52[8];
  v958 = v335;
  v336 = v52[11];
  v959 = v52[10];
  v960 = v336;
  v337 = v52[5];
  v955[4] = v52[4];
  v955[5] = v337;
  v338 = v52[7];
  v955[6] = v52[6];
  v956 = v338;
  v339 = v52[1];
  v955[0] = *v52;
  v955[1] = v339;
  v340 = v52[3];
  v955[2] = v52[2];
  v964 = *(v52 + 30);
  v955[3] = v340;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v955) == 1)
  {
    if (!v333)
    {
      goto LABEL_151;
    }

    goto LABEL_147;
  }

  v348 = *(&v956 + 1);
  v349 = v956;

  if (!v333)
  {
    if (!v348)
    {
      goto LABEL_151;
    }

    goto LABEL_149;
  }

  if (!v348)
  {
LABEL_147:
    v348 = v333;
LABEL_149:
    v348, v341, v342, v343, v344, v345, v346, v347;
LABEL_150:
    v1437[0] |= 0x200000000uLL;
    goto LABEL_151;
  }

  if (v332 == v349 && v333 == v348)
  {
    v333, v341, v342, v343, v344, v345, v346, v347;
    v348, v350, v351, v352, v353, v354, v355, v356;
    goto LABEL_151;
  }

  v631 = sub_1CF9E8048();
  v333, v632, v633, v634, v635, v636, v637, v638;
  v348, v639, v640, v641, v642, v643, v644, v645;
  if ((v631 & 1) == 0)
  {
    goto LABEL_150;
  }

LABEL_151:
  v357 = *(v44 + 208);
  v951 = *(v44 + 192);
  v952 = v357;
  v953 = *(v44 + 224);
  v358 = *(v44 + 144);
  v947 = *(v44 + 128);
  v948 = v358;
  v359 = *(v44 + 176);
  v949 = *(v44 + 160);
  v950 = v359;
  v360 = *(v44 + 80);
  v946[4] = *(v44 + 64);
  v946[5] = v360;
  v361 = *(v44 + 112);
  v946[6] = *(v44 + 96);
  v946[7] = v361;
  v362 = *(v44 + 16);
  v946[0] = *v44;
  v946[1] = v362;
  v363 = *(v44 + 48);
  v946[2] = *(v44 + 32);
  v954 = *(v44 + 240);
  v946[3] = v363;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v946) == 1)
  {
    v364 = 0;
    v365 = 0;
  }

  else
  {
    v365 = *(&v947 + 1);
    v364 = v947;
  }

  v366 = v52[13];
  v942 = v52[12];
  v943 = v366;
  v944 = v52[14];
  v367 = v52[9];
  v938 = v52[8];
  v939 = v367;
  v368 = v52[11];
  v940 = v52[10];
  v941 = v368;
  v369 = v52[5];
  v937[4] = v52[4];
  v937[5] = v369;
  v370 = v52[7];
  v937[6] = v52[6];
  v937[7] = v370;
  v371 = v52[1];
  v937[0] = *v52;
  v937[1] = v371;
  v372 = v52[3];
  v937[2] = v52[2];
  v945 = *(v52 + 30);
  v937[3] = v372;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v937) == 1)
  {
    if (!v365)
    {
      goto LABEL_166;
    }

    goto LABEL_162;
  }

  v380 = *(&v938 + 1);
  v381 = v938;

  if (!v365)
  {
    if (!v380)
    {
      goto LABEL_166;
    }

    goto LABEL_164;
  }

  if (!v380)
  {
LABEL_162:
    v380 = v365;
LABEL_164:
    v380, v373, v374, v375, v376, v377, v378, v379;
LABEL_165:
    v1437[0] |= 0x400000000uLL;
    goto LABEL_166;
  }

  if (v364 == v381 && v365 == v380)
  {
    v365, v373, v374, v375, v376, v377, v378, v379;
    v380, v382, v383, v384, v385, v386, v387, v388;
    goto LABEL_166;
  }

  v646 = sub_1CF9E8048();
  v365, v647, v648, v649, v650, v651, v652, v653;
  v380, v654, v655, v656, v657, v658, v659, v660;
  if ((v646 & 1) == 0)
  {
    goto LABEL_165;
  }

LABEL_166:
  v389 = *(v44 + 208);
  v933 = *(v44 + 192);
  v934 = v389;
  v935 = *(v44 + 224);
  v390 = *(v44 + 144);
  v929[8] = *(v44 + 128);
  v930 = v390;
  v391 = *(v44 + 176);
  v931 = *(v44 + 160);
  v932 = v391;
  v392 = *(v44 + 80);
  v929[4] = *(v44 + 64);
  v929[5] = v392;
  v393 = *(v44 + 112);
  v929[6] = *(v44 + 96);
  v929[7] = v393;
  v394 = *(v44 + 16);
  v929[0] = *v44;
  v929[1] = v394;
  v395 = *(v44 + 48);
  v929[2] = *(v44 + 32);
  v936 = *(v44 + 240);
  v929[3] = v395;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v929) == 1)
  {
    v396 = 0;
    v397 = 0;
  }

  else
  {
    v397 = *(&v930 + 1);
    v396 = v930;
  }

  v398 = v52[13];
  v925 = v52[12];
  v926 = v398;
  v927 = v52[14];
  v399 = v52[9];
  v921[8] = v52[8];
  v922 = v399;
  v400 = v52[11];
  v923 = v52[10];
  v924 = v400;
  v401 = v52[5];
  v921[4] = v52[4];
  v921[5] = v401;
  v402 = v52[7];
  v921[6] = v52[6];
  v921[7] = v402;
  v403 = v52[1];
  v921[0] = *v52;
  v921[1] = v403;
  v404 = v52[3];
  v921[2] = v52[2];
  v928 = *(v52 + 30);
  v921[3] = v404;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v921) == 1)
  {
    if (!v397)
    {
      goto LABEL_181;
    }

    goto LABEL_177;
  }

  v412 = *(&v922 + 1);
  v413 = v922;

  if (!v397)
  {
    if (!v412)
    {
      goto LABEL_181;
    }

    goto LABEL_179;
  }

  if (!v412)
  {
LABEL_177:
    v412 = v397;
LABEL_179:
    v412, v405, v406, v407, v408, v409, v410, v411;
LABEL_180:
    v1437[0] |= 0x800000000uLL;
    goto LABEL_181;
  }

  if (v396 == v413 && v397 == v412)
  {
    v397, v405, v406, v407, v408, v409, v410, v411;
    v412, v414, v415, v416, v417, v418, v419, v420;
    goto LABEL_181;
  }

  v661 = sub_1CF9E8048();
  v397, v662, v663, v664, v665, v666, v667, v668;
  v412, v669, v670, v671, v672, v673, v674, v675;
  if ((v661 & 1) == 0)
  {
    goto LABEL_180;
  }

LABEL_181:
  v421 = *(v44 + 208);
  v917 = *(v44 + 192);
  v918 = v421;
  v919 = *(v44 + 224);
  v422 = *(v44 + 144);
  v914[8] = *(v44 + 128);
  v914[9] = v422;
  v423 = *(v44 + 176);
  v915 = *(v44 + 160);
  v916 = v423;
  v424 = *(v44 + 80);
  v914[4] = *(v44 + 64);
  v914[5] = v424;
  v425 = *(v44 + 112);
  v914[6] = *(v44 + 96);
  v914[7] = v425;
  v426 = *(v44 + 16);
  v914[0] = *v44;
  v914[1] = v426;
  v427 = *(v44 + 48);
  v914[2] = *(v44 + 32);
  v920 = *(v44 + 240);
  v914[3] = v427;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v914) == 1)
  {
    v428 = 0;
    v429 = 0;
  }

  else
  {
    v429 = *(&v915 + 1);
    v428 = v915;
  }

  v430 = v52[13];
  v910 = v52[12];
  v911 = v430;
  v912 = v52[14];
  v431 = v52[9];
  v907[8] = v52[8];
  v907[9] = v431;
  v432 = v52[11];
  v908 = v52[10];
  v909 = v432;
  v433 = v52[5];
  v907[4] = v52[4];
  v907[5] = v433;
  v434 = v52[7];
  v907[6] = v52[6];
  v907[7] = v434;
  v435 = v52[1];
  v907[0] = *v52;
  v907[1] = v435;
  v436 = v52[3];
  v907[2] = v52[2];
  v913 = *(v52 + 30);
  v907[3] = v436;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v907) == 1)
  {
    if (v429)
    {
      v444 = 0;
LABEL_193:
      v429, v437, v438, v439, v440, v441, v442, v443;
      v444, v472, v473, v474, v475, v476, v477, v478;
LABEL_194:
      v1437[0] |= 0x1000000000uLL;
      goto LABEL_197;
    }

    goto LABEL_195;
  }

  v444 = *(&v908 + 1);
  v445 = v908;

  if (!v429)
  {
    if (v444)
    {
      goto LABEL_193;
    }

LABEL_195:
    v471 = 0;
    goto LABEL_196;
  }

  if (!v444)
  {
    goto LABEL_193;
  }

  *&v901[0] = v428;
  *(&v901[0] + 1) = v429;

  v446 = sub_1CF662E90();
  v448 = v447;
  v885 = __PAIR128__(v444, v445);
  v450 = sub_1CF662E90();
  v456 = v449;
  if (v446 == v450 && v448 == v449)
  {
    v449, v449, v450, v451, v452, v453, v454, v455;
    v448, v457, v458, v459, v460, v461, v462, v463;
    v429, v464, v465, v466, v467, v468, v469, v470;
    swift_bridgeObjectRelease_n();
    v471 = v429;
LABEL_196:
    v471, v437, v438, v439, v440, v441, v442, v443;
    goto LABEL_197;
  }

  v676 = sub_1CF9E8048();
  v456, v677, v678, v679, v680, v681, v682, v683;
  v448, v684, v685, v686, v687, v688, v689, v690;
  v429, v691, v692, v693, v694, v695, v696, v697;
  swift_bridgeObjectRelease_n();
  v429, v698, v699, v700, v701, v702, v703, v704;
  if ((v676 & 1) == 0)
  {
    goto LABEL_194;
  }

LABEL_197:
  v479 = *(v44 + 208);
  v897 = *(v44 + 192);
  v898 = v479;
  v899 = *(v44 + 224);
  v480 = *(v44 + 144);
  v893 = *(v44 + 128);
  v894 = v480;
  v481 = *(v44 + 176);
  v895 = *(v44 + 160);
  v896 = v481;
  v482 = *(v44 + 80);
  v889 = *(v44 + 64);
  v890 = v482;
  v483 = *(v44 + 112);
  v891 = *(v44 + 96);
  v892 = v483;
  v484 = *(v44 + 16);
  v885 = *v44;
  v886 = v484;
  v485 = *(v44 + 48);
  v887 = *(v44 + 32);
  v888 = v485;
  v486 = v52[13];
  v903 = v52[12];
  v904 = v486;
  v905 = v52[14];
  v487 = v52[9];
  v901[8] = v52[8];
  v901[9] = v487;
  v488 = v52[11];
  v901[10] = v52[10];
  v902 = v488;
  v489 = v52[5];
  v901[4] = v52[4];
  v901[5] = v489;
  v490 = v52[7];
  v901[6] = v52[6];
  v901[7] = v490;
  v491 = v52[1];
  v901[0] = *v52;
  v901[1] = v491;
  v492 = v52[3];
  v901[2] = v52[2];
  v900 = *(v44 + 240);
  v906 = *(v52 + 30);
  v901[3] = v492;
  v493 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v901);
  v494 = v902;
  v881 = v897;
  v882 = v898;
  v883 = v899;
  v884 = v900;
  v879[8] = v893;
  v879[9] = v894;
  v879[10] = v895;
  v880 = v896;
  v879[4] = v889;
  v879[5] = v890;
  v879[6] = v891;
  v879[7] = v892;
  v879[0] = v885;
  v879[1] = v886;
  v879[2] = v887;
  v879[3] = v888;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v879) != 1)
  {
    if (v493 != 1 && ((v494 ^ v880) & 1) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_202;
  }

  if (v493 != 1)
  {
LABEL_202:
    v1437[0] |= 0x2000000000uLL;
  }

LABEL_203:
  v495 = *(v44 + 208);
  v875 = *(v44 + 192);
  v876 = v495;
  v877 = *(v44 + 224);
  v496 = *(v44 + 144);
  v873[8] = *(v44 + 128);
  v873[9] = v496;
  v497 = *(v44 + 176);
  v873[10] = *(v44 + 160);
  v874 = v497;
  v498 = *(v44 + 80);
  v873[4] = *(v44 + 64);
  v873[5] = v498;
  v499 = *(v44 + 112);
  v873[6] = *(v44 + 96);
  v873[7] = v499;
  v500 = *(v44 + 16);
  v873[0] = *v44;
  v873[1] = v500;
  v501 = *(v44 + 48);
  v873[2] = *(v44 + 32);
  v878 = *(v44 + 240);
  v873[3] = v501;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v873) == 1)
  {
    v502 = 0;
  }

  else
  {
    v502 = *(&v874 + 1);
  }

  v503 = v52[13];
  v869 = v52[12];
  v870 = v503;
  v871 = v52[14];
  v504 = v52[9];
  v867[8] = v52[8];
  v867[9] = v504;
  v505 = v52[11];
  v867[10] = v52[10];
  v868 = v505;
  v506 = v52[5];
  v867[4] = v52[4];
  v867[5] = v506;
  v507 = v52[7];
  v867[6] = v52[6];
  v867[7] = v507;
  v508 = v52[1];
  v867[0] = *v52;
  v867[1] = v508;
  v509 = v52[3];
  v867[2] = v52[2];
  v872 = *(v52 + 30);
  v867[3] = v509;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v867) == 1)
  {
    if (!v502)
    {
      goto LABEL_217;
    }

    goto LABEL_213;
  }

  v517 = *(&v868 + 1);

  if (!v502)
  {
    if (!v517)
    {
      goto LABEL_217;
    }

    goto LABEL_215;
  }

  if (!v517)
  {
LABEL_213:
    v517 = v502;
LABEL_215:
    v517, v510, v511, v512, v513, v514, v515, v516;
    goto LABEL_216;
  }

  v518 = sub_1CF6BEA0C(v502, v517);
  v502, v519, v520, v521, v522, v523, v524, v525;
  v517, v526, v527, v528, v529, v530, v531, v532;
  if ((v518 & 1) == 0)
  {
LABEL_216:
    v1437[0] |= 0x4000000000uLL;
  }

LABEL_217:
  v533 = *(v44 + 208);
  v863 = *(v44 + 192);
  v864 = v533;
  v865 = *(v44 + 224);
  v534 = *(v44 + 144);
  v862[8] = *(v44 + 128);
  v862[9] = v534;
  v535 = *(v44 + 176);
  v862[10] = *(v44 + 160);
  v862[11] = v535;
  v536 = *(v44 + 80);
  v862[4] = *(v44 + 64);
  v862[5] = v536;
  v537 = *(v44 + 112);
  v862[6] = *(v44 + 96);
  v862[7] = v537;
  v538 = *(v44 + 16);
  v862[0] = *v44;
  v862[1] = v538;
  v539 = *(v44 + 48);
  v862[2] = *(v44 + 32);
  v866 = *(v44 + 240);
  v862[3] = v539;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v862) == 1)
  {
    v540 = 0;
    v541 = 0;
  }

  else
  {
    v541 = *(&v863 + 1);
    v540 = v863;
    sub_1CF075D00(v863, *(&v863 + 1));
  }

  v542 = v52[13];
  v858 = v52[12];
  v859 = v542;
  v860 = v52[14];
  v543 = v52[9];
  v857[8] = v52[8];
  v857[9] = v543;
  v544 = v52[11];
  v857[10] = v52[10];
  v857[11] = v544;
  v545 = v52[5];
  v857[4] = v52[4];
  v857[5] = v545;
  v546 = v52[7];
  v857[6] = v52[6];
  v857[7] = v546;
  v547 = v52[1];
  v857[0] = *v52;
  v857[1] = v547;
  v548 = v52[3];
  v857[2] = v52[2];
  v861 = *(v52 + 30);
  v857[3] = v548;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v857) == 1)
  {
    if (!v540)
    {
      goto LABEL_248;
    }

    goto LABEL_245;
  }

  v555 = v858;
  sub_1CF075D00(v858, *(&v858 + 1));
  if (!v540)
  {
    if (!v555)
    {
      goto LABEL_248;
    }

    v585 = *(&v555 + 1);
    v584 = v555;
    goto LABEL_246;
  }

  if (!v555)
  {
LABEL_245:
    v584 = v540;
    v585 = v541;
LABEL_246:
    sub_1CF24CCFC(v584, v585, v549, v550, v551, v552, v553, v554);
    goto LABEL_247;
  }

  if ((sub_1CF6BEA0C(v540, v555) & 1) == 0)
  {
    *(&v555 + 1), v556, v557, v558, v559, v560, v561, v562;
    v555, v705, v706, v707, v708, v709, v710, v711;
    goto LABEL_245;
  }

  v563 = sub_1CF6BEA0C(v541, *(&v555 + 1));
  *(&v555 + 1), v564, v565, v566, v567, v568, v569, v570;
  v555, v571, v572, v573, v574, v575, v576, v577;
  sub_1CF24CCFC(v540, v541, v578, v579, v580, v581, v582, v583);
  if ((v563 & 1) == 0)
  {
LABEL_247:
    v1437[0] |= 0x8000000000uLL;
  }

LABEL_248:
  v712 = *(v44 + 208);
  v853[12] = *(v44 + 192);
  v854 = v712;
  v855 = *(v44 + 224);
  v713 = *(v44 + 144);
  v853[8] = *(v44 + 128);
  v853[9] = v713;
  v714 = *(v44 + 176);
  v853[10] = *(v44 + 160);
  v853[11] = v714;
  v715 = *(v44 + 80);
  v853[4] = *(v44 + 64);
  v853[5] = v715;
  v716 = *(v44 + 112);
  v853[6] = *(v44 + 96);
  v853[7] = v716;
  v717 = *(v44 + 16);
  v853[0] = *v44;
  v853[1] = v717;
  v718 = *(v44 + 48);
  v853[2] = *(v44 + 32);
  v856 = *(v44 + 240);
  v853[3] = v718;
  v719 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v853);
  v720 = v52[13];
  v849[12] = v52[12];
  v850 = v720;
  v851 = v52[14];
  v721 = v52[9];
  v849[8] = v52[8];
  v849[9] = v721;
  v722 = v52[11];
  v849[10] = v52[10];
  v849[11] = v722;
  v723 = v52[5];
  v849[4] = v52[4];
  v849[5] = v723;
  v724 = v52[7];
  v849[6] = v52[6];
  v849[7] = v724;
  v725 = v52[1];
  v849[0] = *v52;
  v849[1] = v725;
  v726 = v52[3];
  v849[2] = v52[2];
  v727 = v854;
  v852 = *(v52 + 30);
  v849[3] = v726;
  v728 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v849);
  if (v719 == 1)
  {
    if (v728 == 1)
    {
      goto LABEL_254;
    }

    goto LABEL_253;
  }

  if (v728 == 1 || v727 != v850)
  {
LABEL_253:
    v1437[0] |= 0x2000000000000uLL;
  }

LABEL_254:
  v729 = *(v44 + 208);
  v846[12] = *(v44 + 192);
  v846[13] = v729;
  v847 = *(v44 + 224);
  v848 = *(v44 + 240);
  v730 = *(v44 + 144);
  v846[8] = *(v44 + 128);
  v846[9] = v730;
  v731 = *(v44 + 176);
  v846[10] = *(v44 + 160);
  v846[11] = v731;
  v732 = *(v44 + 80);
  v846[4] = *(v44 + 64);
  v846[5] = v732;
  v733 = *(v44 + 112);
  v846[6] = *(v44 + 96);
  v846[7] = v733;
  v734 = *(v44 + 16);
  v846[0] = *v44;
  v846[1] = v734;
  v735 = *(v44 + 48);
  v846[2] = *(v44 + 32);
  v846[3] = v735;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v846) == 1 || (v736 = v847) == 0)
  {
    v738 = 0;
  }

  else
  {

    v738 = sub_1CF93CD44(v737);
    v736, v739, v740, v741, v742, v743, v744, v745;
  }

  v746 = v52[13];
  v843[12] = v52[12];
  v843[13] = v746;
  v844 = v52[14];
  v845 = *(v52 + 30);
  v747 = v52[9];
  v843[8] = v52[8];
  v843[9] = v747;
  v748 = v52[11];
  v843[10] = v52[10];
  v843[11] = v748;
  v749 = v52[5];
  v843[4] = v52[4];
  v843[5] = v749;
  v750 = v52[7];
  v843[6] = v52[6];
  v843[7] = v750;
  v751 = v52[1];
  v843[0] = *v52;
  v843[1] = v751;
  v752 = v52[3];
  v843[2] = v52[2];
  v843[3] = v752;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v843) == 1 || (v760 = v844) == 0)
  {
    v762 = 0;
    if (!v738)
    {
LABEL_261:
      if (!v762)
      {
        goto LABEL_270;
      }

      goto LABEL_268;
    }
  }

  else
  {

    v762 = sub_1CF93CD44(v761);
    v760, v763, v764, v765, v766, v767, v768, v769;
    if (!v738)
    {
      goto LABEL_261;
    }
  }

  if (!v762)
  {
    v762 = v738;
LABEL_268:
    v762, v753, v754, v755, v756, v757, v758, v759;
    goto LABEL_269;
  }

  v770 = sub_1CF6BF228(v738, v762);
  v738, v771, v772, v773, v774, v775, v776, v777;
  v762, v778, v779, v780, v781, v782, v783, v784;
  if ((v770 & 1) == 0)
  {
LABEL_269:
    v1437[0] |= 0x4000000000000uLL;
  }

LABEL_270:
  v785 = *(v44 + 208);
  v840[12] = *(v44 + 192);
  v840[13] = v785;
  v841 = *(v44 + 224);
  v842 = *(v44 + 240);
  v786 = *(v44 + 144);
  v840[8] = *(v44 + 128);
  v840[9] = v786;
  v787 = *(v44 + 176);
  v840[10] = *(v44 + 160);
  v840[11] = v787;
  v788 = *(v44 + 80);
  v840[4] = *(v44 + 64);
  v840[5] = v788;
  v789 = *(v44 + 112);
  v840[6] = *(v44 + 96);
  v840[7] = v789;
  v790 = *(v44 + 16);
  v840[0] = *v44;
  v840[1] = v790;
  v791 = *(v44 + 48);
  v840[2] = *(v44 + 32);
  v840[3] = v791;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v840) == 1)
  {
    v792 = 0;
    v793 = 0;
  }

  else
  {
    v792 = *(&v841 + 1);
    v793 = v842;
  }

  v794 = v52[13];
  v837[12] = v52[12];
  v837[13] = v794;
  v838 = v52[14];
  v839 = *(v52 + 30);
  v795 = v52[9];
  v837[8] = v52[8];
  v837[9] = v795;
  v796 = v52[11];
  v837[10] = v52[10];
  v837[11] = v796;
  v797 = v52[5];
  v837[4] = v52[4];
  v837[5] = v797;
  v798 = v52[7];
  v837[6] = v52[6];
  v837[7] = v798;
  v799 = v52[1];
  v837[0] = *v52;
  v837[1] = v799;
  v800 = v52[3];
  v837[2] = v52[2];
  v837[3] = v800;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v837) == 1)
  {
    if (!v793)
    {
      goto LABEL_285;
    }

    goto LABEL_281;
  }

  v809 = *(&v838 + 1);
  v808 = v839;

  if (v793)
  {
    if (!v808)
    {
LABEL_281:
      v808 = v793;
LABEL_283:
      v808, v801, v802, v803, v804, v805, v806, v807;
LABEL_284:
      v1437[0] |= 0x8000000000000uLL;
      goto LABEL_285;
    }

    if (v792 != v809 || v793 != v808)
    {
      v817 = sub_1CF9E8048();
      v793, v818, v819, v820, v821, v822, v823, v824;
      v808, v825, v826, v827, v828, v829, v830, v831;
      if (v817)
      {
        goto LABEL_285;
      }

      goto LABEL_284;
    }

    v793, v801, v802, v803, v804, v805, v806, v807;
    v808, v810, v811, v812, v813, v814, v815, v816;
  }

  else if (v808)
  {
    goto LABEL_283;
  }

LABEL_285:
  *v836 = v1437[0];
}

void sub_1CF71F490(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  v8 = swift_projectBox();
  sub_1CEFCCBDC(a1, v7, &unk_1EC4BF310, &unk_1CF9FDB30);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  swift_beginAccess();
  sub_1CF72A2A0(v7, v8);
  dispatch_group_leave(a3);
}

void sub_1CF71F5B8(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40);
  v11 = v4 + v10;
  v12 = &a1[v10];
  v230 = a2;
  v231 = a3 & 1;
  sub_1CF6781CC(&a1[v10], &v230, &v232);
  v13 = *v5;
  v14 = *a1;
  v15 = a1[8];
  v229 = a4;
  if (*(v5 + 8))
  {
    if (*(v5 + 8) == 1)
    {
      if (v15 != 1 || v13 != v14)
      {
LABEL_15:
        v232 |= 2uLL;
      }
    }

    else if (v13)
    {
      if (v15 != 2 || v14 != 1)
      {
        goto LABEL_15;
      }
    }

    else if (v15 != 2 || v14)
    {
      goto LABEL_15;
    }
  }

  else if (a1[8] || v13 != v14)
  {
    goto LABEL_15;
  }

  v17 = v5[2];
  v16 = v5[3];
  v19 = *(a1 + 2);
  v18 = *(a1 + 3);
  v20 = sub_1CEFE7394(v17, v16);
  if (v21)
  {
    if (v20 == 12565487 && v21 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v22, v23, v24, v25, v26, v27;
LABEL_21:
      v37 = sub_1CF9E69E8();
      v38 = sub_1CF025150(v37, v17, v16);
      v40 = v39;
      v17 = MEMORY[0x1D3868C10](v38);
      v16 = v41;
      v40, v41, v42, v43, v44, v45, v46, v47;
      goto LABEL_23;
    }

    v28 = v21;
    v29 = sub_1CF9E8048();
    v28, v30, v31, v32, v33, v34, v35, v36;
    if (v29)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  v48 = sub_1CEFE7394(v19, v18);
  if (v49)
  {
    if (v48 == 12565487 && v49 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v50, v51, v52, v53, v54, v55;
      goto LABEL_28;
    }

    v56 = v49;
    v57 = sub_1CF9E8048();
    v56, v58, v59, v60, v61, v62, v63, v64;
    if (v57)
    {
LABEL_28:
      v65 = sub_1CF9E69E8();
      v66 = sub_1CF025150(v65, v19, v18);
      v68 = v67;
      v69 = MEMORY[0x1D3868C10](v66);
      v18 = v70;
      v68, v70, v71, v72, v73, v74, v75, v76;
      if (v17 != v69)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  if (v17 != v19)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v16 == v18)
  {
    v18, v77, v78, v79, v80, v81, v82, v83;
    v16, v84, v85, v86, v87, v88, v89, v90;
    goto LABEL_35;
  }

LABEL_33:
  v91 = sub_1CF9E8048();
  v18, v92, v93, v94, v95, v96, v97, v98;
  v16, v99, v100, v101, v102, v103, v104, v105;
  if ((v91 & 1) == 0)
  {
    v232 |= 1uLL;
  }

LABEL_35:
  v106 = *(type metadata accessor for ItemMetadata(0) + 56);
  if (*(v11 + v106 + 8))
  {
    v107 = *(v11 + v106);
    v108 = *(v11 + v106 + 8);
  }

  else
  {
    v107 = v5[2];
    v108 = v5[3];
  }

  v109 = *&v12[v106 + 8];
  if (v109)
  {
    v110 = *&v12[v106];
    v111 = v109;
  }

  else
  {
    v110 = *(a1 + 2);
    v111 = *(a1 + 3);
  }

  v112 = sub_1CEFE7394(v107, v108);
  if (v113)
  {
    if (v112 == 12565487 && v113 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v114, v115, v116, v117, v118, v119;
LABEL_46:
      v129 = sub_1CF9E69E8();
      v130 = sub_1CF025150(v129, v107, v108);
      v132 = v131;
      v107 = MEMORY[0x1D3868C10](v130);
      v134 = v133;
      v132, v133, v135, v136, v137, v138, v139, v140;
      goto LABEL_48;
    }

    v120 = v113;
    v121 = sub_1CF9E8048();
    v120, v122, v123, v124, v125, v126, v127, v128;
    if (v121)
    {
      goto LABEL_46;
    }
  }

  v134 = v108;
LABEL_48:
  v141 = sub_1CEFE7394(v110, v111);
  if (v142)
  {
    if (v141 == 12565487 && v142 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v143, v144, v145, v146, v147, v148;
      goto LABEL_53;
    }

    v149 = v142;
    v150 = sub_1CF9E8048();
    v149, v151, v152, v153, v154, v155, v156, v157;
    if (v150)
    {
LABEL_53:
      v158 = sub_1CF9E69E8();
      v159 = sub_1CF025150(v158, v110, v111);
      v161 = v160;
      v162 = MEMORY[0x1D3868C10](v159);
      v164 = v163;
      v161, v163, v165, v166, v167, v168, v169, v170;
      if (v107 != v162)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }
  }

  v164 = v111;
  if (v107 != v110)
  {
LABEL_58:
    v200 = sub_1CF9E8048();
    v164, v201, v202, v203, v204, v205, v206, v207;
    v134, v208, v209, v210, v211, v212, v213, v214;
    v108, v215, v216, v217, v218, v219, v220, v221;
    v111, v222, v223, v224, v225, v226, v227, v228;
    v199 = v232 | ((v200 & 1) == 0);
    goto LABEL_59;
  }

LABEL_56:
  if (v134 != v164)
  {
    goto LABEL_58;
  }

  v164, v171, v172, v173, v174, v175, v176, v177;
  v134, v178, v179, v180, v181, v182, v183, v184;
  v108, v185, v186, v187, v188, v189, v190, v191;
  v111, v192, v193, v194, v195, v196, v197, v198;
  v199 = v232;
LABEL_59:
  *v229 = v199;
}

void sub_1CF71FAAC(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) + 40);
  v10 = v4 + v9;
  v11 = &a1[v9];
  v261 = a2;
  v262 = a3 & 1;
  sub_1CF6781CC(&a1[v9], &v261, &v263);
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v16;
  if (v12 == v15 && v14 == v16)
  {
    v14, v16, v17, v18, v19, v20, v21, v22;
    v23, v40, v41, v42, v43, v44, v45, v46;
  }

  else
  {
    v25 = sub_1CF9E8048();
    v14, v26, v27, v28, v29, v30, v31, v32;
    v23, v33, v34, v35, v36, v37, v38, v39;
    if ((v25 & 1) == 0)
    {
      v263 |= 2uLL;
    }
  }

  v48 = *(v5 + 8);
  v47 = *(v5 + 16);
  v50 = *(a1 + 1);
  v49 = *(a1 + 2);
  v51 = sub_1CEFE7394(v48, v47);
  if (v52)
  {
    if (v51 == 12565487 && v52 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v53, v54, v55, v56, v57, v58;
LABEL_13:
      v68 = sub_1CF9E69E8();
      v69 = sub_1CF025150(v68, v48, v47);
      v71 = v70;
      v48 = MEMORY[0x1D3868C10](v69);
      v47 = v72;
      v71, v72, v73, v74, v75, v76, v77, v78;
      goto LABEL_15;
    }

    v59 = v52;
    v60 = sub_1CF9E8048();
    v59, v61, v62, v63, v64, v65, v66, v67;
    if (v60)
    {
      goto LABEL_13;
    }
  }

LABEL_15:
  v79 = sub_1CEFE7394(v50, v49);
  if (v80)
  {
    if (v79 == 12565487 && v80 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v81, v82, v83, v84, v85, v86;
      goto LABEL_20;
    }

    v87 = v80;
    v88 = sub_1CF9E8048();
    v87, v89, v90, v91, v92, v93, v94, v95;
    if (v88)
    {
LABEL_20:
      v96 = sub_1CF9E69E8();
      v97 = sub_1CF025150(v96, v50, v49);
      v99 = v98;
      v100 = MEMORY[0x1D3868C10](v97);
      v49 = v101;
      v99, v101, v102, v103, v104, v105, v106, v107;
      if (v48 != v100)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }
  }

  if (v48 != v50)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (v47 == v49)
  {
    v49, v108, v109, v110, v111, v112, v113, v114;
    v47, v115, v116, v117, v118, v119, v120, v121;
    goto LABEL_27;
  }

LABEL_25:
  v122 = sub_1CF9E8048();
  v49, v123, v124, v125, v126, v127, v128, v129;
  v47, v130, v131, v132, v133, v134, v135, v136;
  if ((v122 & 1) == 0)
  {
    v263 |= 1uLL;
  }

LABEL_27:
  v137 = *(type metadata accessor for ItemMetadata(0) + 56);
  if (*(v10 + v137 + 8))
  {
    v138 = *(v10 + v137);
    v139 = *(v10 + v137 + 8);
  }

  else
  {
    v138 = *(v5 + 8);
    v139 = *(v5 + 16);
  }

  v140 = *&v11[v137 + 8];
  if (v140)
  {
    v141 = *&v11[v137];
    v142 = v140;
  }

  else
  {
    v141 = *(a1 + 1);
    v142 = *(a1 + 2);
  }

  v143 = sub_1CEFE7394(v138, v139);
  if (v144)
  {
    if (v143 == 12565487 && v144 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v145, v146, v147, v148, v149, v150;
LABEL_38:
      v160 = sub_1CF9E69E8();
      v161 = sub_1CF025150(v160, v138, v139);
      v163 = v162;
      v138 = MEMORY[0x1D3868C10](v161);
      v165 = v164;
      v163, v164, v166, v167, v168, v169, v170, v171;
      goto LABEL_40;
    }

    v151 = v144;
    v152 = sub_1CF9E8048();
    v151, v153, v154, v155, v156, v157, v158, v159;
    if (v152)
    {
      goto LABEL_38;
    }
  }

  v165 = v139;
LABEL_40:
  v172 = sub_1CEFE7394(v141, v142);
  if (v173)
  {
    if (v172 == 12565487 && v173 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v174, v175, v176, v177, v178, v179;
      goto LABEL_45;
    }

    v180 = v173;
    v181 = sub_1CF9E8048();
    v180, v182, v183, v184, v185, v186, v187, v188;
    if (v181)
    {
LABEL_45:
      v189 = sub_1CF9E69E8();
      v190 = sub_1CF025150(v189, v141, v142);
      v192 = v191;
      v193 = MEMORY[0x1D3868C10](v190);
      v195 = v194;
      v192, v194, v196, v197, v198, v199, v200, v201;
      if (v138 != v193)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  v195 = v142;
  if (v138 != v141)
  {
LABEL_50:
    v231 = sub_1CF9E8048();
    v195, v232, v233, v234, v235, v236, v237, v238;
    v165, v239, v240, v241, v242, v243, v244, v245;
    v139, v246, v247, v248, v249, v250, v251, v252;
    v142, v253, v254, v255, v256, v257, v258, v259;
    v230 = v263 | ((v231 & 1) == 0);
    goto LABEL_51;
  }

LABEL_48:
  if (v165 != v195)
  {
    goto LABEL_50;
  }

  v195, v202, v203, v204, v205, v206, v207, v208;
  v165, v209, v210, v211, v212, v213, v214, v215;
  v139, v216, v217, v218, v219, v220, v221, v222;
  v142, v223, v224, v225, v226, v227, v228, v229;
  v230 = v263;
LABEL_51:
  *a4 = v230;
}

uint64_t FSTester.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  fpfs_allow_operation();
  fpfs_test_force_ondisk_docid_resolution();
  fpfs_set_vfs_ignore_permissions_iopolicy();
  return v0;
}

uint64_t FSTester.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  fpfs_allow_operation();
  fpfs_test_force_ondisk_docid_resolution();
  fpfs_set_vfs_ignore_permissions_iopolicy();
  return v0;
}

void sub_1CF720020(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void, __n128), uint64_t a7)
{
  v94 = a7;
  v95 = a6;
  v71 = a3;
  v74 = sub_1CF9E6118();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E7388();
  v92 = *(v12 - 8);
  v93 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1CF9E7318();
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v65 - v16;
  v86 = sub_1CF9E6448();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v65 - v19;
  v21 = sub_1CF9E5A58();
  v81 = *(v21 - 8);
  v22 = v81;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v65 - v27;
  v87 = a5 & 1;
  v29 = *(v22 + 16);
  v83 = &v65 - v27;
  v29(&v65 - v27, a4, v21, v26);
  type metadata accessor for DocumentWharfForTesting(0);
  v30 = swift_allocObject();
  v80 = v24;
  v79 = v21;
  (v29)(v24, v28, v21);
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource) = 0;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_invalidated) = 0;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_activated) = 0;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_disableGarbageCollection) = 0;
  v31 = v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
  v32 = MEMORY[0x1E69E7CC0];
  *v31 = 0;
  *(v31 + 1) = v32;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource) = 0;
  v30[2] = a1;
  v30[3] = a2;
  v33 = v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  *(v33 + 2) = 0u;
  *(v33 + 3) = 0u;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  swift_beginAccess();
  *(v33 + 3) = -1;
  v67 = v22 + 16;
  v66 = v29;
  (v29)(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root, v24, v21);
  v78 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v96 = 0;
  v97 = 0xE000000000000000;

  sub_1CF9E7948();
  v97, v34, v35, v36, v37, v38, v39, v40;
  v68 = a1;
  v96 = a1;
  v97 = a2;
  v70 = a2;

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA2F690);
  v77 = v96;
  v76 = v97;
  v41 = v20;
  v75 = v20;
  sub_1CF9E63E8();
  v96 = v32;
  sub_1CF725648(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  v42 = v81;
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, MEMORY[0x1E69E6328]);
  v43 = v85;
  v44 = v88;
  sub_1CF9E77B8();
  v45 = v84;
  v46 = v41;
  v47 = v86;
  (*(v84 + 16))(v82, v46, v86);
  v48 = v90;
  (*(v90 + 16))(v89, v43, v44);
  (*(v92 + 104))(v91, *MEMORY[0x1E69E8098], v93);
  v49 = sub_1CF9E73B8();
  (*(v48 + 8))(v43, v44);
  v50 = v47;
  v51 = v79;
  (*(v45 + 8))(v75, v50);
  v52 = *(v42 + 8);
  v52(v80, v51);
  v52(v83, v51);
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deferredWQ) = v49;
  v53 = v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  *v53 = sub_1CF36581C;
  *(v53 + 1) = 0;
  *(v53 + 4) = v87;
  *(v53 + 5) = 2;
  *(v53 + 12) = 1;
  v53[26] = 1;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_reporter) = 0;

  sub_1CF9BF6A8();
  v54 = v69;
  v55 = sub_1CF9E6888();
  v56 = objc_allocWithZone(type metadata accessor for InternalPathsManager(0));
  v57 = v55;
  v58 = InternalPathsManager.init(providerDomainID:)(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v59 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1CF9FA450;
  v66(v60 + v59, v71, v51);
  type metadata accessor for VFSFileTree(0);
  swift_allocObject();
  v61 = v58;
  v62 = sub_1CF25D1E8(v60, v30, v61, 0, 0, 0, 0, 0, 0, 1u, 0);
  *(v54 + 16) = v62;
  v63 = v62;

  type metadata accessor for InProcessVFSFileTreeTester();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = sub_1CF4E3238(MEMORY[0x1E69E7CC0]);
  *(v54 + 24) = v64;

  v95(0);
}

double sub_1CF720C64()
{
  if (*(v0 + 24))
  {

    sub_1CF9BFA28();
  }

  return result;
}

void sub_1CF720CCC(unint64_t a1, unint64_t a2, unint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5, unint64_t a6, int a7, void *a8, void (*a9)(uint64_t, unint64_t, void *), uint64_t a10)
{
  v293 = a8;
  LODWORD(v277) = a7;
  v292 = a4;
  v291 = a3;
  v310 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v245 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v245 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v21 = *(v20 - 8);
  v313 = v20;
  v314 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v261 = (&v245 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v278 = (&v245 - v24);
  v305 = sub_1CF9E6388();
  v295 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305);
  v304 = (&v245 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v303 = &v245 - v27;
  v302 = sub_1CF9E6498();
  v308 = *(v302 - 8);
  MEMORY[0x1EEE9AC00](v302);
  v301 = &v245 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v268 = &v245 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v245 - v32;
  v299 = sub_1CF9E63D8();
  v306 = *(v299 - 8);
  MEMORY[0x1EEE9AC00](v299);
  v270 = &v245 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v294 = &v245 - v36;
  v300 = sub_1CF9E6448();
  v312 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v271 = &v245 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v245 - v39);
  v298 = sub_1CF9E73D8();
  v311 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298);
  v297 = &v245 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v269 = &v245 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v274 = &v245 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v272 = &v245 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v288 = &v245 - v49;
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  MEMORY[0x1EEE9AC00](updated);
  v51 = &v245 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = type metadata accessor for VFSItem(0);
  v296 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v307 = &v245 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v280 = &v245 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v273 = &v245 - v56;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2948, &unk_1CFA13490);
  MEMORY[0x1EEE9AC00](v267);
  v266 = &v245 - v57;
  if (a1 > 4 || ((0x17u >> a1) & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v276 = a1;
  v263 = v51;
  v264 = v17;
  VFSItemID.init(rawValue:)(v310, &v317);
  LODWORD(v310) = v318;
  if (v318 == 255)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v262 = v16;
  v309 = v317;
  if (a6 >> 60 == 15)
  {
    v58 = 0xF000000000000007;
  }

  else
  {
    sub_1CF9E5688();
    swift_allocObject();
    sub_1CEFE42D4(a5, a6);
    sub_1CF9E5678();
    sub_1CF190978();
    sub_1CF9E5668();

    sub_1CEFE48D8(a5, a6);
    v58 = v317;
  }

  v283 = v33;
  v284 = v40;
  v279 = 0;
  v275 = v19;
  v259 = v15;
  v286 = a10;
  v287 = a9;
  v59 = v290[3];
  if (!v59)
  {
LABEL_44:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/tests/units/FSTester/FSTester.swift", 98, 2, 96);
  }

  v317 = v291;
  v318 = v292;
  v315 = 58;
  v316 = 0xE100000000000000;
  v319 = 47;
  v320 = 0xE100000000000000;
  sub_1CEFE4E68();

  v260 = sub_1CF9E7668();
  v61 = v60;
  [v293 integerValue];
  v62 = v59[2];
  v290 = v59;

  v292 = v61;

  v291 = v58;
  sub_1CF50D18C(v58);
  v63 = dispatch_group_create();
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v64 = swift_allocBox();
  v65 = *(v314 + 56);
  v282 = v66;
  v257 = v314 + 56;
  v256 = v65;
  v65(v66, 1, 1, v313);
  dispatch_group_enter(v63);
  v67 = swift_allocObject();
  *(v67 + 16) = v64;
  *(v67 + 24) = v63;
  v68 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v293 = v62;
  v69 = v62[27];
  v317 = MEMORY[0x1E69E7CC0];
  v70 = sub_1CF725648(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v285 = v64;

  v281 = v63;
  v71 = v69;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v73 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v74 = v297;
  v251 = v72;
  v250 = v73;
  v75 = v298;
  v254 = v70;
  sub_1CF9E77B8();
  v258 = v68;
  v76 = sub_1CF9E73E8();

  v77 = *(v311 + 8);
  v311 += 8;
  v249 = v77;
  v77(v74, v75);
  qos_class_self();
  v78 = v283;
  sub_1CF9E63B8();
  v79 = v306;
  v80 = v306 + 48;
  v81 = *(v306 + 48);
  v82 = v299;
  v83 = v81(v78, 1, v299);
  v253 = v80;
  v252 = v81;
  if (v83 == 1)
  {
    (*(v79 + 104))(v294, *MEMORY[0x1E69E7FA0], v82);
    v84 = v81(v78, 1, v82);
    v85 = v312;
    v86 = v310;
    v87 = v309;
    v88 = v284;
    if (v84 != 1)
    {
      sub_1CEFCCC44(v78, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v79 + 32))(v294, v78, v82);
    v85 = v312;
    v86 = v310;
    v87 = v309;
    v88 = v284;
  }

  ObjectType = swift_getObjectType();
  sub_1CF9E6428();
  v90 = swift_allocObject();
  *(v90 + 16) = v293;
  *(v90 + 24) = v87;
  *(v90 + 32) = v86;
  *(v90 + 40) = 0u;
  *(v90 + 56) = 0u;
  *(v90 + 72) = 0u;
  *(v90 + 88) = 0u;
  *(v90 + 104) = 0u;
  *(v90 + 120) = 0u;
  *(v90 + 136) = 0;
  *(v90 + 144) = 2049;
  *(v90 + 152) = v76;
  *(v90 + 160) = sub_1CF50E07C;
  *(v90 + 168) = v67;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v88, sub_1CEFD5D08, v90, ObjectType);

  v91 = *(v85 + 8);
  v312 = v85 + 8;
  v284 = v91;
  v91(v88, v300);
  v92 = v301;
  sub_1CF9E6478();
  v93 = *MEMORY[0x1E69E7F40];
  v94 = v295;
  v95 = v295[13];
  v248 = (v295 + 13);
  v96 = v303;
  LODWORD(v283) = v93;
  v97 = v305;
  (v95)(v303);
  v98 = v304;
  *v304 = 0;
  v247 = *MEMORY[0x1E69E7F28];
  v294 = v95;
  (v95)(v98);
  MEMORY[0x1D3869770](v92, v96, v98, ObjectType);
  v99 = v94[1];
  (v99)(v98, v97);
  v295 = v99;
  (v99)(v96, v97);
  v100 = v308 + 8;
  v101 = *(v308 + 8);
  v101(v92, v302);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v102 = v281;
  sub_1CF9E72F8();
  v103 = v282;
  swift_beginAccess();
  v104 = *(v314 + 48);
  v314 += 48;
  if (v104(v103, 1, v313))
  {

    v105 = v296;
    v106 = v288;
    v107 = v289;
    (*(v296 + 56))(v288, 1, 1, v289);

    v108 = v307;
  }

  else
  {
    v109 = v103;
    v110 = v278;
    sub_1CEFCCBDC(v109, v278, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v108 = v307;
    v105 = v296;
    if (EnumCaseMultiPayload == 1)
    {
      v112 = *v110;
      v315 = *v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();
      v113 = v292;
      v292, v114, v115, v116, v117, v118, v119, v120;

      v121 = v291;
      sub_1CF4EB118(v291);
      v129 = v113;
LABEL_19:
      v129, v122, v123, v124, v125, v126, v127, v128;
      sub_1CF4EB118(v121);
      v142 = v287;
LABEL_23:

LABEL_24:
      v162 = v112;
      v142(0, 0xF000000000000000, v112);

      return;
    }

    v106 = v288;
    sub_1CEFE55D0(v110, v288, &unk_1EC4BEC00, &unk_1CF9FCB60);

    v107 = v289;
  }

  v130 = *(v105 + 48);
  v131 = v130(v106, 1, v107);
  v112 = v279;
  if (v131 == 1)
  {
    sub_1CEFCCC44(v106, &unk_1EC4BEC00, &unk_1CF9FCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v132 = swift_allocError();
    *v133 = v309;
    *(v133 + 8) = v310;
    *(v133 + 16) = 0u;
    *(v133 + 32) = 0u;
    *(v133 + 48) = 0u;
    *(v133 + 64) = 0u;
    *(v133 + 80) = 0u;
    *(v133 + 96) = 0u;
    *(v133 + 112) = 0u;
    sub_1CF2A8DE0(v133);
    swift_willThrow();
    v112 = v132;
    v134 = v292;
    v292, v135, v136, v137, v138, v139, v140, v141;

    v121 = v291;
    sub_1CF4EB118(v291);
    v129 = v134;
    goto LABEL_19;
  }

  v143 = v280;
  sub_1CEFE4D30(v106, v280, type metadata accessor for VFSItem);
  v144 = v290;
  sub_1CF50BCA0(v143, v275);
  if (v112)
  {
    sub_1CEFE522C(v143, type metadata accessor for VFSItem);
    v145 = v292;
    v292, v146, v147, v148, v149, v150, v151, v152;

    v153 = v291;
    sub_1CF4EB118(v291);
    v145, v154, v155, v156, v157, v158, v159, v160;
    sub_1CF4EB118(v153);
    v142 = v287;
    goto LABEL_23;
  }

  v285 = v104;
  v161 = 0x300020100uLL >> (8 * v276);
  v288 = objc_autoreleasePoolPush();
  sub_1CF4FECC4(v143, v144, v309, v310, v260, v292, v161, v291, v108, v277 & 1);
  v277 = v130;
  v279 = 0;
  objc_autoreleasePoolPop(v288);
  v163 = dispatch_group_create();
  v164 = swift_allocBox();
  v281 = v165;
  v256(v165, 1, 1, v313);
  dispatch_group_enter(v163);
  v166 = swift_allocObject();
  *(v166 + 16) = v164;
  *(v166 + 24) = v163;
  v278 = v166;
  v167 = *(v293 + 27);
  v315 = MEMORY[0x1E69E7CC0];
  v288 = v164;

  v282 = v163;
  v168 = v167;
  v169 = v297;
  v170 = v298;
  sub_1CF9E77B8();
  v171 = sub_1CF9E73E8();

  v249(v169, v170);
  qos_class_self();
  v172 = v268;
  sub_1CF9E63B8();
  v173 = v299;
  v174 = v252;
  v175 = v252(v172, 1, v299);
  v308 = v100;
  v246 = v101;
  if (v175 == 1)
  {
    (*(v306 + 104))(v270, *MEMORY[0x1E69E7FA0], v173);
    v176 = v174(v172, 1, v173);
    v177 = v271;
    if (v176 != 1)
    {
      sub_1CEFCCC44(v172, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v306 + 32))(v270, v172, v173);
    v177 = v271;
  }

  v178 = swift_getObjectType();
  v312 = v178;
  sub_1CF9E6428();
  v179 = swift_allocObject();
  v180 = v309;
  *(v179 + 16) = v293;
  *(v179 + 24) = v180;
  *(v179 + 32) = v310;
  *(v179 + 40) = 0u;
  *(v179 + 56) = 0u;
  *(v179 + 72) = 0u;
  *(v179 + 88) = 0u;
  *(v179 + 104) = 0u;
  *(v179 + 120) = 0u;
  *(v179 + 136) = 0;
  *(v179 + 144) = 2049;
  *(v179 + 152) = v171;
  *(v179 + 160) = sub_1CF50EBA0;
  *(v179 + 168) = v278;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v177, sub_1CF72A328, v179, v178);

  v284(v177, v300);
  v181 = v301;
  sub_1CF9E6478();
  v182 = v303;
  v183 = v305;
  v184 = v294;
  (v294)(v303, v283, v305);
  v185 = v304;
  *v304 = 0;
  (v184)(v185, v247, v183);
  MEMORY[0x1D3869770](v181, v182, v185, v312);
  v186 = v295;
  (v295)(v185, v183);
  v186(v182, v183);
  v246(v181, v302);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v187 = v282;
  sub_1CF9E72F8();
  v188 = v281;
  swift_beginAccess();
  if (v285(v188, 1, v313))
  {

    v189 = v272;
    v190 = v289;
    (*(v296 + 56))(v272, 1, 1, v289);

    v142 = v287;
    v191 = v259;
    v192 = v275;
    v193 = v274;
    v194 = v269;
  }

  else
  {
    v195 = v188;
    v196 = v261;
    sub_1CEFCCBDC(v195, v261, &unk_1EC4BF310, &unk_1CF9FDB30);
    v197 = swift_getEnumCaseMultiPayload();
    v142 = v287;
    v198 = v259;
    v192 = v275;
    v193 = v274;
    v199 = v292;
    v194 = v269;
    if (v197 == 1)
    {
      v200 = v275;
      v112 = *v196;
      v319 = *v196;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      sub_1CEFE522C(v307, type metadata accessor for VFSItem);
      sub_1CEFCCC44(v200, &qword_1EC4C1330, &unk_1CFA13480);

      sub_1CEFE522C(v280, type metadata accessor for VFSItem);
      v199, v201, v202, v203, v204, v205, v206, v207;

      v208 = v291;
      sub_1CF4EB118(v291);
      v199, v209, v210, v211, v212, v213, v214, v215;
      sub_1CF4EB118(v208);
      goto LABEL_23;
    }

    v189 = v272;
    sub_1CEFE55D0(v196, v272, &unk_1EC4BEC00, &unk_1CF9FCB60);

    v190 = v289;
    v191 = v198;
  }

  v216 = v307;
  sub_1CEFE4FF4(v307, v273, type metadata accessor for VFSItem);
  sub_1CEFCCBDC(v192, v191, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v264 + 56))(v191, 0, 1, v262);
  sub_1CEFCCBDC(v189, v193, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFCCBDC(v189, v194, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (v277(v194, 1, v190) == 1)
  {
    sub_1CEFCCC44(v194, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v217 = v291;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v218 = qword_1EDEABDE8;
    sub_1CEFCCC44(v272, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v307, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v192, &qword_1EC4C1330, &unk_1CFA13480);
    v219 = v280;
  }

  else
  {
    v220 = v194;
    v219 = v280;
    sub_1CF717E1C(v280);
    sub_1CEFCCC44(v189, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v216, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v192, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE522C(v220, type metadata accessor for VFSItem);
    v218 = v319;
    v217 = v291;
  }

  v221 = v292;
  v222 = v274;
  v223 = *(v267 + 48);
  v224 = v263;
  sub_1CEFE55D0(v259, v263, &qword_1EC4C1310, &qword_1CFA08AC8);
  v225 = updated;
  sub_1CEFE55D0(v222, v224 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v224 + *(v225 + 24)) = v218;
  sub_1CEFE522C(v219, type metadata accessor for VFSItem);
  v221, v226, v227, v228, v229, v230, v231, v232;

  sub_1CF4EB118(v217);

  v221, v233, v234, v235, v236, v237, v238, v239;
  v240 = v266;
  sub_1CEFE4D30(v273, v266, type metadata accessor for VFSItem);
  sub_1CEFE4D30(v224, v240 + v223, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  sub_1CF9E56C8();
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem, &unk_1CF9FFB4C);
  v112 = v279;
  v241 = sub_1CF9E56A8();
  if (v112)
  {
    sub_1CEFCCC44(v240, &qword_1EC4C2948, &unk_1CFA13490);

    sub_1CF4EB118(v217);
    goto LABEL_24;
  }

  v243 = v241;
  v244 = v242;

  v142(v243, v244, 0);
  sub_1CF4EB118(v217);
  sub_1CEFE4714(v243, v244);
  sub_1CEFCCC44(v240, &qword_1EC4C2948, &unk_1CFA13490);
}

void sub_1CF722C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, int a6, void (*a7)(uint64_t, unint64_t, uint64_t, void), uint64_t a8)
{
  v82 = a8;
  v83 = a7;
  v79 = a6;
  v76 = a5;
  v78 = a4;
  *&v81 = a3;
  v8 = type metadata accessor for VFSItem(0);
  v77 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2958, &qword_1CFA134A0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  v15 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  v18 = v80;
  v19 = v78;
  v75 = v15;
  v71 = updated;
  v20 = v79;
  v21 = v77;
  v72 = v8;
  v73 = v17;
  v70 = v10;
  v74 = v13;
  v22 = v92;
  v23 = v93;
  v25 = v94;
  v24 = v95;
  v26 = v96;
  v27 = v81;
  if (v81)
  {
    v81 = v92;
    VFSItemID.init(rawValue:)([v27 integerValue], &v92);
    v22 = v81;
    v28 = v92;
    v29 = BYTE8(v92);
  }

  else
  {
    v28 = 0;
    v29 = -1;
  }

  v30 = v21;
  if (!*(v18 + 24))
  {
    goto LABEL_14;
  }

  v92 = v22;
  v93 = v23;
  v94 = v25;
  v95 = v24;
  v96 = v26;
  v90 = v28;
  v91 = v29;
  v31 = v75;
  if (v76)
  {
    v88 = v19;
    v89 = v76;
    v86 = 58;
    v87 = 0xE100000000000000;
    v84 = 47;
    v85 = 0xE100000000000000;
    sub_1CEFE4E68();

    v32 = sub_1CF9E7668();
  }

  else
  {

    v32 = 0;
    v33 = 0;
  }

  v34 = v83;
  v88 = v32;
  v89 = v33;
  v35 = sub_1CF5028E0(&v92, &v90, &v88, v20 & 1);
  v36 = v89;

  v36, v37, v38, v39, v40, v41, v42, v43;
  v24, v44, v45, v46, v47, v48, v49, v50;
  if (!*v35->tree)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v51 = v35 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v52 = v73;
  sub_1CEFE4FF4(v51, v73, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  v35, v53, v54, v55, v56, v57, v58, v59;
  v60 = *(v71 + 20);
  v61 = *(v52 + *(v71 + 24));
  v62 = *(v11 + 48);
  v63 = *(v11 + 64);
  v64 = v74;
  sub_1CEFCCBDC(v52, v74, &qword_1EC4C1310, &qword_1CFA08AC8);
  sub_1CEFCCBDC(v52 + v60, v64 + v62, &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v64 + v63) = v61;
  if ((*(v30 + 48))(v64 + v62, 1, v72) == 1)
  {
    v34(0, 0xF000000000000000, v61, 0);
  }

  else
  {
    v65 = v70;
    sub_1CEFE4D30(v64 + v62, v70, type metadata accessor for VFSItem);
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem, &unk_1CF9FFB4C);
    v66 = sub_1CF9E56A8();
    v68 = v67;

    v34(v66, v68, v61, 0);
    sub_1CEFE4714(v66, v68);
    sub_1CEFE522C(v65, type metadata accessor for VFSItem);
  }

  sub_1CEFE522C(v52, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  sub_1CEFCCC44(v64, &qword_1EC4C1310, &qword_1CFA08AC8);
}

void sub_1CF7233C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t, unint64_t, void, void *), uint64_t a7)
{
  v94 = a7;
  v95 = a6;
  v90 = a3;
  *&v93 = a2;
  *&v92 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v80 - v12;
  v91 = type metadata accessor for VFSItem(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v86 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  MEMORY[0x1EEE9AC00](updated);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CEFE42D4(a4, a5);
  sub_1CF9E5678();
  sub_1CF190978();
  sub_1CF9E5668();
  v83 = v19;
  v81 = v22;
  v84 = v16;
  v26 = v91;
  v82 = v25;

  sub_1CEFE4714(a4, a5);
  v27 = v97;
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  v29 = v90;
  if ((v90 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v30 = v89;
  if (v90 > 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = *v88->tester;
  if (!v31)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  *&v28 = v98;
  v32 = v99;
  v33 = v100;
  v96 = v100;
  v92 = v28;
  v93 = v97;

  sub_1CF263024(&v96, &v97, 2049, v30);
  v88 = v31;
  v80 = v32;
  v99, v36, v37, v38, v39, v40, v41, v42;
  v43 = v87 + 48;
  v44 = *(v87 + 48);
  if (v44(v30, 1, v26) != 1)
  {
    v87 = v43;
    v58 = v86;
    v59 = sub_1CEFE4D30(v30, v86, type metadata accessor for VFSItem);
    MEMORY[0x1EEE9AC00](v59);
    *(&v80 - 4) = v88;
    *(&v80 - 3) = v58;
    *(&v80 - 2) = v27;
    *(&v80 - 8) = v29;
    v60 = v83;
    v61 = v84;
    sub_1CF7136CC(v83, v84, v62, v63, sub_1CF725630, (&v80 - 6));

    v64 = v60;
    v65 = v81;
    sub_1CEFE4D30(v64, v81, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v61, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v58, type metadata accessor for VFSItem);
    v66 = v82;
    sub_1CEFE4D30(v65, v82, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    v67 = updated;
    v68 = v66 + *(updated + 20);
    v69 = v85;
    sub_1CEFCCBDC(v68, v85, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v44(v69, 1, v26) != 1)
    {
      v80, v70, v71, v72, v73, v74, v75, v76;
      sub_1CF9E56C8();
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem, &unk_1CF9FFB4C);
      v77 = sub_1CF9E56A8();
      v79 = v78;

      sub_1CEFE522C(v69, type metadata accessor for VFSItem);
      v95(v77, v79, *(v66 + *(v67 + 24)), 0);

      sub_1CEFE4714(v77, v79);
      sub_1CEFE522C(v66, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      return;
    }

    goto LABEL_20;
  }

  sub_1CEFCCC44(v30, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v45 = (v33 - 1) < 2 || v92 == 0;
  v46 = v45;
  if (v45)
  {
    v47 = v93;
  }

  else
  {
    v47 = v92;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  v48 = swift_allocError();
  *v49 = v47;
  *(v49 + 8) = v46;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *(v49 + 64) = 0u;
  *(v49 + 80) = 0u;
  *(v49 + 96) = 0u;
  *(v49 + 112) = 0u;
  sub_1CF2A8DE0(v49);
  swift_willThrow();
  v50 = v48;
  v80, v51, v52, v53, v54, v55, v56, v57;

  v34 = v95;
  v35 = v50;
  v34(0, 0xF000000000000000, 0, v50);
}