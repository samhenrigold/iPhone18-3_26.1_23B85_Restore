void sub_254519938(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_25454BCF4();
    sub_2544AECF0();
    v4 = sub_25454B274();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = v8 & 1;
  }

  else
  {

    v4 = 0;
    v6 = 0;
    v11 = 0;
    v10 = 0;
  }

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v11;
  a2[3] = v10;
}

unint64_t sub_254519A54()
{
  result = qword_27F5FCB78;
  if (!qword_27F5FCB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCB70, &unk_254550EE0);
    sub_2544AE1F0(&qword_27F5FCB80, &qword_27F5FCB88, &qword_254550EF0, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCB78);
  }

  return result;
}

uint64_t sub_254519B04()
{
  v1 = sub_254549AB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10[-v6];
  shouldShowWalletKeyUWBApproachAngle = WalletKeyUWBApproachAngleSection._shouldShowWalletKeyUWBApproachAngleSection()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  sub_25454B7A4();
  sub_2545499E4();
  (*(v2 + 8))(v4, v1);
  v10[16] = shouldShowWalletKeyUWBApproachAngle;
  v11 = v7;
  v12 = v0;
  sub_254519938(shouldShowWalletKeyUWBApproachAngle, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB70, &unk_254550EE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC1A8, &qword_25454FD90);
  sub_254519A54();
  sub_254505794();
  sub_25454B9B4();
  return sub_2544AE150(v7, &qword_27F5FC620, &qword_2545503B0);
}

uint64_t sub_254519D08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25454AA94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBA8, &qword_254550F38);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  sub_2544AE240(v1 + *(v10 + 40), v9, &qword_27F5FCBA8, &qword_254550F38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25454A454();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_25454BF84();
    v13 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t WalletKeyUWBApproachAngleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBC0, &qword_254550F48);
  sub_2545210D4();
  sub_25454A724();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBE0, &qword_254550F88) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBE8, &qword_254550F90) + 28);
  v5 = *MEMORY[0x277CDFA88];
  v6 = sub_25454A6E4();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBF0, &qword_254550F98);
  *(a1 + *(result + 36)) = 0;
  return result;
}

double sub_25451A03C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBD0, &qword_254550F50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v15 - 2) = a1;
  sub_25454AF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCC70, &qword_2545510C8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCC78, &qword_2545510D0);
  v10 = sub_254521B00();
  v15 = v9;
  v16 = v10;
  swift_getOpaqueTypeConformance2();
  sub_25454A3C4();
  v15 = sub_25454BCF4();
  v16 = v11;
  sub_2544AE1F0(&qword_27F5FCBD8, &qword_27F5FCBD0, &qword_254550F50, MEMORY[0x277CDD6E0]);
  sub_2544AECF0();
  sub_25454B3B4();

  (*(v5 + 8))(v7, v4);
  v12 = sub_25454AF14();

  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBC0, &qword_254550F48) + 36);
  *v13 = v12;
  result = 0.0;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 1;
  return result;
}

double sub_25451A304(uint64_t a1)
{
  v2 = sub_25454AAC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCC78, &qword_2545510D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v8 = sub_25454AC14();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCA8, &qword_2545510E8);
  sub_25451A5A8(a1, &v8[*(v9 + 44)]);
  v10 = &v8[*(v6 + 36)];
  v11 = *(sub_25454A744() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_25454ABA4();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #10.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCA0, &qword_2545510E0) + 36)] = 256;
  (*(v3 + 104))(v5, *MEMORY[0x277CDDDC0], v2);
  sub_254521B00();
  sub_25454B4E4();
  (*(v3 + 8))(v5, v2);
  sub_2544AE150(v8, &qword_27F5FCC78, &qword_2545510D0);

  return result;
}

void sub_25451A5A8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCB0, &qword_2545510F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v96 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v76 - v7;
  sub_25454BE14();
  v86 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v95 = sub_25454AB14();
  LOBYTE(v141) = 1;
  sub_25451AFE4(a1, v194);
  *&v193[7] = v194[0];
  *&v193[23] = v194[1];
  *&v193[39] = v194[2];
  v193[55] = v195;
  v94 = v141;
  *v8 = sub_25454AB04();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCB8, &unk_2545510F8);
  sub_25451B400(a1, &v8[*(v9 + 44)]);
  v10 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v11 = (a1 + *(v10 + 24));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v141) = v12;
  v142 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v14 = (a1 + *(v10 + 32));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v141) = v15;
  v142 = v16;
  sub_25454B7A4();
  v17 = sub_25454BCF4();
  v19 = v18;

  v141 = v17;
  v142 = v19;
  sub_2544AECF0();
  v20 = sub_25454B274();
  v92 = v21;
  v93 = v20;
  LOBYTE(v10) = v22;
  v91 = v23;
  sub_25454BA64();
  sub_25454A784();
  LODWORD(v10) = v10 & 1;
  v191 = v10;
  v85 = v8;
  v84 = v10;
  KeyPath = swift_getKeyPath();
  v87 = sub_25454B134();
  v24 = swift_getKeyPath();
  v83 = v24;
  v90 = sub_25454AF14();
  sub_25454A394();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v192 = 0;
  v141 = sub_25454BCF4();
  v142 = v33;
  v34 = sub_25454B274();
  v81 = v35;
  v82 = v34;
  LOBYTE(v17) = v36;
  v89 = v37;
  sub_25454BA64();
  sub_25454A784();
  v189 = v17 & 1;
  v76 = v17 & 1;
  v80 = swift_getKeyPath();
  *(&v79 + 1) = sub_25454B124();
  *&v79 = swift_getKeyPath();
  v78 = sub_25454B644();
  v38 = sub_25454AF14();
  v39 = v38;
  v77 = v38;
  sub_25454A394();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v190 = 0;
  v48 = v96;
  sub_2544AE240(v8, v96, &qword_27F5FCCB0, &qword_2545510F0);
  v111[0] = v95;
  v111[1] = 0;
  LOBYTE(v112[0]) = v94;
  *(v112 + 1) = *v193;
  *(&v112[1] + 1) = *&v193[16];
  *(&v112[2] + 1) = *&v193[32];
  *(&v112[3] + 1) = *&v193[48];
  v49 = v112[0];
  *a2 = v95;
  a2[1] = v49;
  v50 = v112[2];
  a2[2] = v112[1];
  a2[3] = v50;
  *(a2 + 57) = *(&v112[2] + 9);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCC0, &qword_254551168);
  sub_2544AE240(v48, a2 + v51[12], &qword_27F5FCCB0, &qword_2545510F0);
  v52 = (a2 + v51[16]);
  *&v113 = v93;
  *(&v113 + 1) = v92;
  LOBYTE(v114) = v10;
  *(&v114 + 1) = v91;
  v119 = v108;
  v120 = v109;
  v121 = v110;
  v118 = v107;
  v117 = v106;
  v115 = v104;
  v116 = v105;
  *&v122 = KeyPath;
  BYTE8(v122) = 0;
  *&v123 = v24;
  *(&v123 + 1) = v87;
  LOBYTE(v124) = v90;
  *(&v124 + 1) = v26;
  *&v125[0] = v28;
  *(&v125[0] + 1) = v30;
  *&v125[1] = v32;
  BYTE8(v125[1]) = 0;
  v53 = v107;
  v52[4] = v106;
  v52[5] = v53;
  v54 = v116;
  v52[2] = v115;
  v52[3] = v54;
  v55 = v122;
  v52[8] = v121;
  v52[9] = v55;
  v56 = v120;
  v52[6] = v119;
  v52[7] = v56;
  v57 = v114;
  *v52 = v113;
  v52[1] = v57;
  *(v52 + 201) = *(v125 + 9);
  v58 = v125[0];
  v59 = v123;
  v52[11] = v124;
  v52[12] = v58;
  v52[10] = v59;
  v60 = a2 + v51[20];
  v61 = v81;
  v62 = v82;
  *&v126 = v82;
  *(&v126 + 1) = v81;
  LOBYTE(v127) = v17 & 1;
  *(&v127 + 1) = v89;
  v132 = v101;
  v133 = v102;
  v134 = v103;
  v128 = v97;
  v129 = v98;
  v131 = v100;
  v130 = v99;
  v64 = *(&v79 + 1);
  v63 = v80;
  *&v135 = v80;
  BYTE8(v135) = 0;
  v65 = a2;
  v66 = v78;
  v67 = v79;
  v136 = v79;
  *&v137 = v78;
  BYTE8(v137) = v39;
  *&v138 = v41;
  *(&v138 + 1) = v43;
  *&v139 = v45;
  *(&v139 + 1) = v47;
  v140 = 0;
  v60[224] = 0;
  v68 = v127;
  *v60 = v126;
  *(v60 + 1) = v68;
  v69 = v131;
  *(v60 + 4) = v130;
  *(v60 + 5) = v69;
  v70 = v135;
  *(v60 + 8) = v134;
  *(v60 + 9) = v70;
  v71 = v133;
  *(v60 + 6) = v132;
  *(v60 + 7) = v71;
  v72 = v129;
  *(v60 + 2) = v128;
  *(v60 + 3) = v72;
  v73 = v139;
  *(v60 + 12) = v138;
  *(v60 + 13) = v73;
  v74 = v137;
  *(v60 + 10) = v136;
  *(v60 + 11) = v74;
  v75 = v65 + v51[24];
  *v75 = 0;
  v75[8] = 1;
  sub_2544AE240(v111, &v141, &qword_27F5FCCC8, &qword_254551170);
  sub_2544AE240(&v113, &v141, &qword_27F5FCCD0, &qword_254551178);
  sub_2544AE240(&v126, &v141, &qword_27F5FCCD8, &qword_254551180);
  sub_2544AE150(v85, &qword_27F5FCCB0, &qword_2545510F0);
  v141 = v62;
  v142 = v61;
  v143 = v76;
  v149 = v101;
  v150 = v102;
  v151 = v103;
  v145 = v97;
  v146 = v98;
  v147 = v99;
  v148 = v100;
  v144 = v89;
  v152 = v63;
  v153 = 0;
  v154 = v67;
  v155 = v64;
  v156 = v66;
  v157 = v77;
  v158 = v41;
  v159 = v43;
  v160 = v45;
  v161 = v47;
  v162 = 0;
  sub_2544AE150(&v141, &qword_27F5FCCD8, &qword_254551180);
  v163[0] = v93;
  v163[1] = v92;
  v164 = v84;
  v165 = v91;
  v170 = v108;
  v171 = v109;
  v172 = v110;
  v166 = v104;
  v167 = v105;
  v169 = v107;
  v168 = v106;
  v173 = KeyPath;
  v174 = 0;
  v175 = v83;
  v176 = v87;
  v177 = v90;
  v178 = v26;
  v179 = v28;
  v180 = v30;
  v181 = v32;
  v182 = 0;
  sub_2544AE150(v163, &qword_27F5FCCD0, &qword_254551178);
  sub_2544AE150(v96, &qword_27F5FCCB0, &qword_2545510F0);
  v183[0] = v95;
  v183[1] = 0;
  v184 = v94;
  v185 = *v193;
  v186 = *&v193[16];
  v187 = *&v193[32];
  v188 = *&v193[48];
  sub_2544AE150(v183, &qword_27F5FCCC8, &qword_254551170);
}

double sub_25451AFE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = sub_25454B714();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25454A454();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v25 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v11 = a1 + *(v10 + 24);
  v12 = *v11;
  v13 = *(v11 + 8);
  v27 = v12;
  v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v14 = v30;
  v15 = a1 + *(v10 + 32);
  v16 = *v15;
  v17 = *(v15 + 8);
  v27 = v16;
  v28 = v17;
  sub_25454B7A4();
  LOBYTE(v10) = v30;
  sub_254519D08(v9);
  WalletKeyUWBApproachAngleView._getImageName(left:right:colorScheme:)(v14, v10, v9);
  (*(v7 + 8))(v9, v24);
  type metadata accessor for _BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_25454B774();
  v20 = v26;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v26);
  v21 = sub_25454B764();

  (*(v4 + 8))(v6, v20);
  v27 = 1;
  LOBYTE(v30) = 1;
  v29 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v21;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;

  return result;
}

Swift::String __swiftcall WalletKeyUWBApproachAngleView._getImageName(left:right:)(Swift::Bool left, Swift::Bool right)
{
  v4 = sub_25454A454();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254519D08(v7);
  v8 = WalletKeyUWBApproachAngleView._getImageName(left:right:colorScheme:)(left, right, v7);
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

double sub_25451B400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCE0, &qword_254551188);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCE8, &qword_254551190);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v33 = &v30 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_25454BE14();
  v32 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v20 = sub_25454AC14();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCF0, &qword_254551198);
  sub_25451B7D0(a1, &v20[*(v21 + 44)]);
  *v9 = sub_25454AC14();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCCF8, &qword_2545511A0);
  sub_25451E318(&v9[*(v22 + 44)]);
  *v18 = sub_25454AC14();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_25451E9C0(a1, &v18[*(v21 + 44)]);
  v23 = v33;
  sub_2544AE240(v20, v33, &qword_27F5FCCE8, &qword_254551190);
  sub_2544AE240(v9, v7, &qword_27F5FCCE0, &qword_254551188);
  sub_2544AE240(v18, v13, &qword_27F5FCCE8, &qword_254551190);
  *a2 = 0;
  v31 = v9;
  *(a2 + 8) = 1;
  v24 = v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD00, &qword_2545511A8);
  sub_2544AE240(v23, a2 + v25[12], &qword_27F5FCCE8, &qword_254551190);
  v26 = a2 + v25[16];
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_2544AE240(v24, a2 + v25[20], &qword_27F5FCCE0, &qword_254551188);
  v27 = a2 + v25[24];
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_2544AE240(v13, a2 + v25[28], &qword_27F5FCCE8, &qword_254551190);
  v28 = a2 + v25[32];
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_2544AE150(v18, &qword_27F5FCCE8, &qword_254551190);
  sub_2544AE150(v31, &qword_27F5FCCE0, &qword_254551188);
  sub_2544AE150(v20, &qword_27F5FCCE8, &qword_254551190);
  sub_2544AE150(v13, &qword_27F5FCCE8, &qword_254551190);
  sub_2544AE150(v24, &qword_27F5FCCE0, &qword_254551188);
  sub_2544AE150(v23, &qword_27F5FCCE8, &qword_254551190);

  return result;
}

double sub_25451B7D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v71 = a2;
  v72 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v72);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD08, &qword_2545511B0);
  MEMORY[0x28223BE20](v58);
  v5 = &v56 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD10, &qword_2545511B8);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v56 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD18, &qword_2545511C0);
  MEMORY[0x28223BE20](v59);
  v64 = &v56 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD20, &qword_2545511C8);
  MEMORY[0x28223BE20](v63);
  v67 = &v56 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD28, &qword_2545511D0);
  v9 = MEMORY[0x28223BE20](v66);
  v70 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v56 - v12;
  MEMORY[0x28223BE20](v11);
  v68 = &v56 - v13;
  sub_25454BE14();
  v69 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = v73;
  sub_254521C60(v73, &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  v17 = sub_254521CC8(&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  MEMORY[0x28223BE20](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD30, &qword_2545511D8);
  sub_254521D4C();
  sub_25454B7F4();
  sub_254521C60(v14, &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  sub_254521CC8(&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15);
  v19 = &v5[*(v58 + 36)];
  *v19 = sub_2545223B4;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  v20 = (v14 + *(v72 + 24));
  v57 = *v20;
  v56 = *(v20 + 1);
  LOBYTE(v77) = v57;
  *(&v77 + 1) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  LOBYTE(v77) = v75;
  sub_254521C60(v14, &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  sub_254521CC8(&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v15);
  sub_254521FFC();
  v22 = v60;
  sub_25454B574();

  sub_2544AE150(v5, &qword_27F5FCD08, &qword_2545511B0);
  sub_25454BA54();
  sub_25454A784();
  v23 = v64;
  (*(v61 + 32))(v64, v22, v62);
  v24 = (v23 + *(v59 + 36));
  v25 = v82;
  v24[4] = v81;
  v24[5] = v25;
  v24[6] = v83;
  v26 = v78;
  *v24 = v77;
  v24[1] = v26;
  v27 = v80;
  v24[2] = v79;
  v24[3] = v27;
  LOBYTE(v75) = v57;
  v76 = v56;
  sub_25454B7A4();
  if (v74 == 1)
  {
    v28 = sub_25454B684();
  }

  else
  {
    v29 = [objc_opt_self() systemGray2Color];
    v28 = sub_25454B5F4();
  }

  v30 = v28;
  KeyPath = swift_getKeyPath();
  v32 = v67;
  sub_2544B14E8(v23, v67, &qword_27F5FCD18, &qword_2545511C0);
  v33 = (v32 + *(v63 + 36));
  *v33 = KeyPath;
  v33[1] = v30;
  LOBYTE(KeyPath) = *(v73 + *(v72 + 20));
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = (KeyPath & 1) == 0;
  v36 = v65;
  sub_2544B14E8(v32, v65, &qword_27F5FCD20, &qword_2545511C8);
  v37 = (v36 + *(v66 + 36));
  *v37 = v34;
  v37[1] = sub_254522860;
  v37[2] = v35;
  v38 = v68;
  sub_2544B14E8(v36, v68, &qword_27F5FCD28, &qword_2545511D0);
  v75 = sub_25454BCF4();
  v76 = v39;
  sub_2544AECF0();
  v40 = sub_25454B274();
  v42 = v41;
  v44 = v43;
  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  v45 = sub_25454B194();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_2544C9C64(v40, v42, v44 & 1);

  v52 = v70;
  sub_2544AE240(v38, v70, &qword_27F5FCD28, &qword_2545511D0);
  v53 = v71;
  sub_2544AE240(v52, v71, &qword_27F5FCD28, &qword_2545511D0);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD58, &unk_254551248) + 48);
  *v54 = v45;
  *(v54 + 8) = v47;
  *(v54 + 16) = v49 & 1;
  *(v54 + 24) = v51;
  sub_2544A8F00(v45, v47, v49 & 1);

  sub_2544AE150(v38, &qword_27F5FCD28, &qword_2545511D0);
  sub_2544C9C64(v45, v47, v49 & 1);

  sub_2544AE150(v52, &qword_27F5FCD28, &qword_2545511D0);

  return result;
}

double sub_25451C0D0(uint64_t a1)
{
  v2 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v33 - v6;
  sub_25454BE14();
  v8 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = (a1 + *(v2 + 24));
  v11 = *(v9 + 1);
  v37 = *v9;
  v10 = v37;
  v38 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v12 = (a1 + *(v2 + 28));
  v13 = *v12;
  v14 = *(v12 + 1);
  v37 = v13;
  v38 = v14;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
  sub_25454B7B4();
  v37 = v10;
  v38 = v11;

  sub_25454B7A4();
  LOBYTE(v35[0]) = v10;
  v35[1] = v11;
  v34 = (v36 & 1) == 0;
  sub_25454B7B4();

  if (qword_27F5FACE8 != -1)
  {
    swift_once();
  }

  v15 = sub_25454A2E4();
  __swift_project_value_buffer(v15, qword_27F5FD428);
  sub_254521C60(a1, v7);
  sub_254521C60(a1, v5);
  v16 = sub_25454A2C4();
  v17 = sub_25454BF94();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35[0] = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, v35);
    v33[0] = v8;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, v35);
    *(v18 + 22) = 1024;
    v20 = &v7[*(v2 + 24)];
    v21 = *v20;
    v22 = *(v20 + 1);
    v37 = v21;
    v38 = v22;
    sub_25454B7A4();
    v23 = v36;
    sub_254522280(v7);
    *(v18 + 24) = v23;
    *(v18 + 28) = 2080;
    v24 = &v5[*(v2 + 28)];
    v25 = *v24;
    v26 = *(v24 + 1);
    v37 = v25;
    v38 = v26;
    sub_25454B7A4();
    v27 = 1702195828;
    if ((v36 & 1) == 0)
    {
      v27 = 0x65736C6166;
    }

    v28 = 0xE500000000000000;
    if (v36)
    {
      v28 = 0xE400000000000000;
    }

    if (v36 == 2)
    {
      v29 = 7104878;
    }

    else
    {
      v29 = v27;
    }

    if (v36 == 2)
    {
      v30 = 0xE300000000000000;
    }

    else
    {
      v30 = v28;
    }

    sub_254522280(v5);
    v31 = sub_254502AAC(v29, v30, v35);

    *(v18 + 30) = v31;
    _os_log_impl(&dword_2544A5000, v16, v17, "<%s: %s> User tapped left button. includeLeft = %{BOOL}d | prevIncludeLeft %s", v18, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v19, -1, -1);
    MEMORY[0x259C0FDF0](v18, -1, -1);
  }

  else
  {
    sub_254522280(v7);

    sub_254522280(v5);
  }

  return result;
}

void sub_25451C504(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25454B714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 + *(type metadata accessor for WalletKeyUWBApproachAngleView(0) + 24));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v19) = v9;
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  sub_25454B704();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v11 = sub_25454B764();

  (*(v5 + 8))(v7, v4);
  sub_25454BA54();
  sub_25454A544();
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
}

double sub_25451C760(uint64_t a1)
{
  v62 = a1;
  v60 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v1 = MEMORY[0x28223BE20](v60);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v58 = &v56 - v3;
  v4 = sub_254549EA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB98, &qword_254550EF8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_254549E54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v59 = &v56 - v21;
  sub_25454BE14();
  v63 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);
  v22 = v62;
  sub_25454B7A4();
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_2544AE150(v10, &qword_27F5FC620, &qword_2545503B0);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_6:
    sub_2544AE150(v13, &qword_27F5FCB98, &qword_254550EF8);
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v23 = sub_25454A2E4();
    __swift_project_value_buffer(v23, qword_27F5FD440);
    v24 = v61;
    sub_254521C60(v22, v61);
    v25 = sub_25454A2C4();
    v26 = sub_25454BF94();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v67 = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v67);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v67);
      *(v27 + 22) = 1024;
      v29 = &v24[*(v60 + 24)];
      v30 = *v29;
      v31 = *(v29 + 1);
      v65 = v30;
      v66 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
      sub_25454B7A4();
      v32 = v64;
      sub_254522280(v24);
      *(v27 + 24) = v32;
      _os_log_impl(&dword_2544A5000, v25, v26, "<%s: %s> Appearing without updating approach angle. includeLeft = %{BOOL}d", v27, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v28, -1, -1);
      MEMORY[0x259C0FDF0](v27, -1, -1);
    }

    else
    {
      sub_254522280(v24);
    }

    return result;
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_2544AE150(v10, &qword_27F5FC620, &qword_2545503B0);
  sub_254549E64();
  (*(v5 + 8))(v7, v4);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_6;
  }

  v34 = v59;
  (*(v15 + 32))(v59, v13, v14);
  sub_254549E44();
  sub_254521084(&qword_27F5FCBB8, MEMORY[0x277D166C0], MEMORY[0x277D166D0]);
  v35 = sub_25454C0B4();
  v61 = *(v15 + 8);
  (v61)(v20, v14);
  v36 = v22 + *(v60 + 24);
  v37 = *v36;
  v38 = *(v36 + 8);
  v65 = v37;
  v66 = v38;
  LOBYTE(v67) = v35 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v39 = sub_25454A2E4();
  __swift_project_value_buffer(v39, qword_27F5FD440);
  v40 = v58;
  sub_254521C60(v22, v58);
  v41 = v57;
  (*(v15 + 16))(v57, v34, v14);
  v42 = sub_25454A2C4();
  v43 = sub_25454BF94();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v67 = v45;
    *v44 = 136315906;
    *(v44 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v67);
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v67);
    *(v44 + 22) = 1024;
    v46 = v40 + *(v60 + 24);
    v47 = *v46;
    v48 = *(v46 + 8);
    v65 = v47;
    v66 = v48;
    sub_25454B7A4();
    v49 = v64;
    sub_254522280(v40);
    *(v44 + 24) = v49;
    *(v44 + 28) = 2080;
    v50 = sub_254549E24();
    v52 = v51;
    v53 = v61;
    (v61)(v41, v14);
    v54 = sub_254502AAC(v50, v52, &v67);

    *(v44 + 30) = v54;
    _os_log_impl(&dword_2544A5000, v42, v43, "<%s: %s> On Appear setting  includeLeft %{BOOL}d from Matter %s", v44, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v45, -1, -1);
    MEMORY[0x259C0FDF0](v44, -1, -1);

    (v53)(v59, v14);
  }

  else
  {
    sub_254522280(v40);

    v55 = v61;
    (v61)(v41, v14);
    (v55)(v34, v14);
  }

  return result;
}

uint64_t sub_25451D060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[11] = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_25454BE14();
  v4[14] = sub_25454BE04();
  v6 = sub_25454BDB4();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x2822009F8](sub_25451D134, v6, v5);
}

uint64_t sub_25451D134()
{
  v42 = v0;
  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = sub_25454A2E4();
  __swift_project_value_buffer(v4, qword_27F5FD440);
  sub_254521C60(v3, v1);
  sub_254521C60(v3, v2);
  v5 = sub_25454A2C4();
  v6 = sub_25454BF94();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  if (v7)
  {
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v12 = v41;
    *v11 = 136315906;
    *(v11 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v41);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v41);
    *(v11 + 22) = 2080;
    v13 = v9 + *(v10 + 28);
    v14 = *v13;
    v15 = *(v13 + 8);
    *(v0 + 48) = v14;
    *(v0 + 56) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
    sub_25454B7A4();
    v16 = *(v0 + 146);
    v17 = 1702195828;
    if ((v16 & 1) == 0)
    {
      v17 = 0x65736C6166;
    }

    v18 = 0xE500000000000000;
    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    if (v16 == 2)
    {
      v19 = 7104878;
    }

    else
    {
      v19 = v17;
    }

    if (v16 == 2)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = v18;
    }

    sub_254522280(v9);
    v21 = sub_254502AAC(v19, v20, &v41);

    *(v11 + 24) = v21;
    *(v11 + 32) = 1024;
    v22 = v8 + *(v10 + 24);
    v23 = *v22;
    v24 = *(v22 + 8);
    *(v0 + 64) = v23;
    *(v0 + 72) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7A4();
    LODWORD(v21) = *(v0 + 147);
    sub_254522280(v8);
    *(v11 + 34) = v21;
    _os_log_impl(&dword_2544A5000, v5, v6, "<%s: %s> Changing from prevIncludeLeft %s to includeLeft %{BOOL}d", v11, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v12, -1, -1);
    MEMORY[0x259C0FDF0](v11, -1, -1);
  }

  else
  {
    sub_254522280(*(v0 + 96));

    sub_254522280(v9);
  }

  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = (v26 + *(v25 + 28));
  v28 = *v27;
  v29 = *(v27 + 1);
  *(v0 + 16) = v28;
  *(v0 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
  sub_25454B7A4();
  v30 = *(v0 + 144);
  v31 = (v26 + *(v25 + 24));
  v32 = *v31;
  v33 = *(v31 + 1);
  *(v0 + 32) = v32;
  *(v0 + 40) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  if (v30 == 2 || ((*(v0 + 145) ^ v30) & 1) != 0)
  {
    v40 = swift_task_alloc();
    *(v0 + 136) = v40;
    *v40 = v0;
    v40[1] = sub_25451D63C;

    return sub_25451D75C();
  }

  else
  {

    v34 = sub_25454A2C4();
    v35 = sub_25454BF94();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v41);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v41);
      _os_log_impl(&dword_2544A5000, v34, v35, "<%s: %s> Not updating matter because the value for includeLeft did NOT change", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v37, -1, -1);
      MEMORY[0x259C0FDF0](v36, -1, -1);
    }

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_25451D63C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_254522858, v3, v2);
}

uint64_t sub_25451D75C()
{
  v1[16] = v0;
  v2 = sub_254549EA4();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = sub_254549E54();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  sub_25454BE14();
  v1[30] = sub_25454BE04();
  v5 = sub_25454BDB4();
  v1[31] = v5;
  v1[32] = v4;

  return MEMORY[0x2822009F8](sub_25451D944, v5, v4);
}

uint64_t sub_25451D944()
{
  v58 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 128);
  sub_254549E34();
  v3 = (v2 + *(v1 + 32));
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  if (*(v0 + 272) == 1)
  {
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    sub_254549E14();
    v12 = MEMORY[0x277D166C0];
    sub_254521084(&qword_27F5FCD68, MEMORY[0x277D166C0], MEMORY[0x277D166C8]);
    sub_25454BD94();
    sub_254521084(&qword_27F5FCD70, v12, MEMORY[0x277D166D8]);
    sub_25454C584();
    (*(v11 + 16))(v9, v8, v10);
    sub_254521084(&qword_27F5FCBB8, v12, MEMORY[0x277D166D0]);
    sub_25454C0C4();
    (*(v11 + 8))(v8, v10);
    (*(v11 + 40))(v6, v7, v10);
  }

  v13 = *(v0 + 168);
  v14 = (*(v0 + 128) + *(v13 + 24));
  v15 = *v14;
  v16 = *(v14 + 1);
  *(v0 + 80) = v15;
  *(v0 + 88) = v16;
  sub_25454B7A4();
  if (*(v0 + 273) == 1)
  {
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v55 = v13;
    v20 = *(v0 + 208);
    v19 = *(v0 + 216);
    v21 = *(v0 + 192);
    v22 = *(v0 + 200);
    sub_254549E44();
    v23 = MEMORY[0x277D166C0];
    sub_254521084(&qword_27F5FCD68, MEMORY[0x277D166C0], MEMORY[0x277D166C8]);
    sub_25454BD94();
    sub_254521084(&qword_27F5FCD70, v23, MEMORY[0x277D166D8]);
    sub_25454C584();
    (*(v22 + 16))(v20, v19, v21);
    sub_254521084(&qword_27F5FCBB8, v23, MEMORY[0x277D166D0]);
    sub_25454C0C4();
    v24 = v19;
    v13 = v55;
    (*(v22 + 8))(v24, v21);
    (*(v22 + 40))(v17, v18, v21);
  }

  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 176);
  v25 = *(v0 + 184);
  v27 = *(v0 + 128);
  v28 = sub_25454A2E4();
  __swift_project_value_buffer(v28, qword_27F5FD440);
  sub_254521C60(v27, v25);
  sub_254521C60(v27, v26);
  v29 = sub_25454A2C4();
  v30 = sub_25454BF94();
  if (os_log_type_enabled(v29, v30))
  {
    v32 = *(v0 + 176);
    v31 = *(v0 + 184);
    v33 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v56;
    *v33 = 136316162;
    *(v33 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v57);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_254502AAC(0xD000000000000016, 0x80000002545568B0, &v57);
    *(v33 + 22) = 1024;
    v34 = v31 + *(v13 + 24);
    v35 = *v34;
    v36 = *(v34 + 8);
    *(v0 + 96) = v35;
    *(v0 + 104) = v36;
    sub_25454B7A4();
    v37 = *(v0 + 274);
    sub_254522280(v31);
    *(v33 + 24) = v37;
    *(v33 + 28) = 1024;
    v38 = v32 + *(v1 + 32);
    v39 = *v38;
    v40 = *(v38 + 8);
    *(v0 + 112) = v39;
    *(v0 + 120) = v40;
    sub_25454B7A4();
    v41 = *(v0 + 275);
    sub_254522280(v32);
    *(v33 + 30) = v41;
    *(v33 + 34) = 2080;
    swift_beginAccess();
    v42 = sub_254549E24();
    v44 = sub_254502AAC(v42, v43, &v57);

    *(v33 + 36) = v44;
    _os_log_impl(&dword_2544A5000, v29, v30, "<%s: %s> left = %{BOOL}d | right = %{BOOL}d | newAngle = %s", v33, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v56, -1, -1);
    MEMORY[0x259C0FDF0](v33, -1, -1);
  }

  else
  {
    v45 = *(v0 + 184);
    sub_254522280(*(v0 + 176));
    sub_254522280(v45);
  }

  v46 = *(v0 + 160);
  v47 = *(v0 + 136);
  v48 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);
  sub_25454B7A4();
  v49 = (*(v48 + 48))(v46, 1, v47);
  v50 = *(v0 + 160);
  if (v49)
  {

    sub_2544AE150(v50, &qword_27F5FC620, &qword_2545503B0);
    (*(*(v0 + 200) + 8))(*(v0 + 232), *(v0 + 192));

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    (*(*(v0 + 144) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 136));
    sub_2544AE150(v50, &qword_27F5FC620, &qword_2545503B0);
    swift_beginAccess();
    v53 = swift_task_alloc();
    *(v0 + 264) = v53;
    *v53 = v0;
    v53[1] = sub_25451E0B4;
    v54 = *(v0 + 232);

    return MEMORY[0x282170648](v54);
  }
}

uint64_t sub_25451E0B4()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 256);
  v6 = *(v1 + 248);

  return MEMORY[0x2822009F8](sub_25451E238, v6, v5);
}

uint64_t sub_25451E238()
{

  (*(v0[25] + 8))(v0[29], v0[24]);

  v1 = v0[1];

  return v1();
}

double sub_25451E318@<D0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD78, &qword_254551278);
  v36 = *(v37 - 8);
  v1 = MEMORY[0x28223BE20](v37);
  v34 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = v33 - v3;
  v5 = sub_25454B714();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  v33[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25454B704();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v33[0] = sub_25454B764();

  (*(v6 + 8))(v8, v5);
  sub_25454BA54();
  sub_25454A544();
  v43 = v69;
  v9 = v70;
  v44 = v71;
  v10 = v72;
  v46 = v73;
  v45 = v74;
  sub_25454B684();
  v42 = sub_25454B694();

  v50 = v9;
  v48 = v10;
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = 1;
  v39 = v50;
  v40 = v48;
  v57 = sub_25454BCF4();
  v58 = v11;
  sub_2544AECF0();
  v12 = sub_25454B274();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = swift_getKeyPath();
  v57 = v12;
  v58 = v14;
  v59 = v16 & 1;
  v61 = v18;
  v62 = v19;
  LOBYTE(v63) = 1;
  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD80, &unk_254551280);
  sub_2545222DC();
  sub_25454B2D4();
  sub_2544C9C64(v12, v14, v16 & 1);

  v20 = v36;
  v21 = *(v36 + 16);
  v22 = v34;
  v23 = v37;
  v21(v34, v4, v37);
  v24 = v33[0];
  *&v51 = v33[0];
  *(&v51 + 1) = v43;
  LOBYTE(v52) = v39;
  *(&v52 + 1) = *v49;
  DWORD1(v52) = *&v49[3];
  *(&v52 + 1) = v44;
  LOBYTE(v53) = v40;
  *(&v53 + 1) = *v47;
  DWORD1(v53) = *&v47[3];
  *(&v53 + 1) = v46;
  *&v54 = v45;
  *(&v54 + 1) = v42;
  *&v55 = KeyPath;
  *(&v55 + 1) = sub_254522860;
  v56 = v38;
  v25 = v53;
  v26 = v54;
  v27 = v55;
  v28 = v35;
  *(v35 + 80) = v38;
  *(v28 + 3) = v26;
  *(v28 + 4) = v27;
  v29 = v51;
  *(v28 + 1) = v52;
  *(v28 + 2) = v25;
  *v28 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD90, &qword_254551290);
  v21(&v28[*(v30 + 48)], v22, v23);
  sub_2544AE240(&v51, &v57, &qword_27F5FCD98, &qword_254551298);
  v31 = *(v20 + 8);
  v31(v4, v23);
  v31(v22, v23);
  v57 = v24;
  v58 = v43;
  v59 = v39;
  *v60 = *v49;
  *&v60[3] = *&v49[3];
  v61 = v44;
  LOBYTE(v62) = v40;
  *(&v62 + 1) = *v47;
  HIDWORD(v62) = *&v47[3];
  v63 = v46;
  v64 = v45;
  v65 = v42;
  v66 = KeyPath;
  v67 = sub_254522860;
  v68 = v38;
  sub_2544AE150(&v57, &qword_27F5FCD98, &qword_254551298);

  return result;
}

double sub_25451E9C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v71 = a2;
  v72 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v2 = *(v72 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v72);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD08, &qword_2545511B0);
  MEMORY[0x28223BE20](v58);
  v5 = &v56 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD10, &qword_2545511B8);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v56 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD18, &qword_2545511C0);
  MEMORY[0x28223BE20](v59);
  v64 = &v56 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD20, &qword_2545511C8);
  MEMORY[0x28223BE20](v63);
  v67 = &v56 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD28, &qword_2545511D0);
  v9 = MEMORY[0x28223BE20](v66);
  v70 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v65 = &v56 - v12;
  MEMORY[0x28223BE20](v11);
  v68 = &v56 - v13;
  sub_25454BE14();
  v69 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = v73;
  sub_254521C60(v73, &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v16 = swift_allocObject();
  v17 = sub_254521CC8(&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  MEMORY[0x28223BE20](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD30, &qword_2545511D8);
  sub_254521D4C();
  sub_25454B7F4();
  sub_254521C60(v14, &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  sub_254521CC8(&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15);
  v19 = &v5[*(v58 + 36)];
  *v19 = sub_254521FC0;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  v20 = (v14 + *(v72 + 32));
  v57 = *v20;
  v56 = *(v20 + 1);
  LOBYTE(v77) = v57;
  *(&v77 + 1) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  LOBYTE(v77) = v75;
  sub_254521C60(v14, &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  sub_254521CC8(&v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v15);
  sub_254521FFC();
  v22 = v60;
  sub_25454B574();

  sub_2544AE150(v5, &qword_27F5FCD08, &qword_2545511B0);
  sub_25454BA54();
  sub_25454A784();
  v23 = v64;
  (*(v61 + 32))(v64, v22, v62);
  v24 = (v23 + *(v59 + 36));
  v25 = v82;
  v24[4] = v81;
  v24[5] = v25;
  v24[6] = v83;
  v26 = v78;
  *v24 = v77;
  v24[1] = v26;
  v27 = v80;
  v24[2] = v79;
  v24[3] = v27;
  LOBYTE(v75) = v57;
  v76 = v56;
  sub_25454B7A4();
  if (v74 == 1)
  {
    v28 = sub_25454B684();
  }

  else
  {
    v29 = [objc_opt_self() systemGray2Color];
    v28 = sub_25454B5F4();
  }

  v30 = v28;
  KeyPath = swift_getKeyPath();
  v32 = v67;
  sub_2544B14E8(v23, v67, &qword_27F5FCD18, &qword_2545511C0);
  v33 = (v32 + *(v63 + 36));
  *v33 = KeyPath;
  v33[1] = v30;
  LOBYTE(KeyPath) = *(v73 + *(v72 + 20));
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = (KeyPath & 1) == 0;
  v36 = v65;
  sub_2544B14E8(v32, v65, &qword_27F5FCD20, &qword_2545511C8);
  v37 = (v36 + *(v66 + 36));
  *v37 = v34;
  v37[1] = sub_254522174;
  v37[2] = v35;
  v38 = v68;
  sub_2544B14E8(v36, v68, &qword_27F5FCD28, &qword_2545511D0);
  v75 = sub_25454BCF4();
  v76 = v39;
  sub_2544AECF0();
  v40 = sub_25454B274();
  v42 = v41;
  v44 = v43;
  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  v45 = sub_25454B194();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_2544C9C64(v40, v42, v44 & 1);

  v52 = v70;
  sub_2544AE240(v38, v70, &qword_27F5FCD28, &qword_2545511D0);
  v53 = v71;
  sub_2544AE240(v52, v71, &qword_27F5FCD28, &qword_2545511D0);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD58, &unk_254551248) + 48);
  *v54 = v45;
  *(v54 + 8) = v47;
  *(v54 + 16) = v49 & 1;
  *(v54 + 24) = v51;
  sub_2544A8F00(v45, v47, v49 & 1);

  sub_2544AE150(v38, &qword_27F5FCD28, &qword_2545511D0);
  sub_2544C9C64(v45, v47, v49 & 1);

  sub_2544AE150(v52, &qword_27F5FCD28, &qword_2545511D0);

  return result;
}

double sub_25451F2C0(uint64_t a1)
{
  v2 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v33 - v6;
  sub_25454BE14();
  v8 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = (a1 + *(v2 + 32));
  v11 = *(v9 + 1);
  v37 = *v9;
  v10 = v37;
  v38 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  v12 = (a1 + *(v2 + 36));
  v13 = *v12;
  v14 = *(v12 + 1);
  v37 = v13;
  v38 = v14;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
  sub_25454B7B4();
  v37 = v10;
  v38 = v11;

  sub_25454B7A4();
  LOBYTE(v35[0]) = v10;
  v35[1] = v11;
  v34 = (v36 & 1) == 0;
  sub_25454B7B4();

  if (qword_27F5FACE8 != -1)
  {
    swift_once();
  }

  v15 = sub_25454A2E4();
  __swift_project_value_buffer(v15, qword_27F5FD428);
  sub_254521C60(a1, v7);
  sub_254521C60(a1, v5);
  v16 = sub_25454A2C4();
  v17 = sub_25454BF94();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35[0] = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, v35);
    v33[0] = v8;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, v35);
    *(v18 + 22) = 1024;
    v20 = &v7[*(v2 + 32)];
    v21 = *v20;
    v22 = *(v20 + 1);
    v37 = v21;
    v38 = v22;
    sub_25454B7A4();
    v23 = v36;
    sub_254522280(v7);
    *(v18 + 24) = v23;
    *(v18 + 28) = 2080;
    v24 = &v5[*(v2 + 36)];
    v25 = *v24;
    v26 = *(v24 + 1);
    v37 = v25;
    v38 = v26;
    sub_25454B7A4();
    v27 = 1702195828;
    if ((v36 & 1) == 0)
    {
      v27 = 0x65736C6166;
    }

    v28 = 0xE500000000000000;
    if (v36)
    {
      v28 = 0xE400000000000000;
    }

    if (v36 == 2)
    {
      v29 = 7104878;
    }

    else
    {
      v29 = v27;
    }

    if (v36 == 2)
    {
      v30 = 0xE300000000000000;
    }

    else
    {
      v30 = v28;
    }

    sub_254522280(v5);
    v31 = sub_254502AAC(v29, v30, v35);

    *(v18 + 30) = v31;
    _os_log_impl(&dword_2544A5000, v16, v17, "<%s: %s> User tapped right button. includeRight = %{BOOL}d | prevIncludeRight %s", v18, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v19, -1, -1);
    MEMORY[0x259C0FDF0](v18, -1, -1);
  }

  else
  {
    sub_254522280(v7);

    sub_254522280(v5);
  }

  return result;
}

void sub_25451F6F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25454B714();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 + *(type metadata accessor for WalletKeyUWBApproachAngleView(0) + 32));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v19) = v9;
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  sub_25454B704();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v11 = sub_25454B764();

  (*(v5 + 8))(v7, v4);
  sub_25454BA54();
  sub_25454A544();
  v12 = v19;
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v17 = v24;

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
}

double sub_25451F950(uint64_t a1)
{
  v62 = a1;
  v60 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v1 = MEMORY[0x28223BE20](v60);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v58 = &v56 - v3;
  v4 = sub_254549EA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC620, &qword_2545503B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB98, &qword_254550EF8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_254549E54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v59 = &v56 - v21;
  sub_25454BE14();
  v63 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);
  v22 = v62;
  sub_25454B7A4();
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_2544AE150(v10, &qword_27F5FC620, &qword_2545503B0);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_6:
    sub_2544AE150(v13, &qword_27F5FCB98, &qword_254550EF8);
    if (qword_27F5FACF0 != -1)
    {
      swift_once();
    }

    v23 = sub_25454A2E4();
    __swift_project_value_buffer(v23, qword_27F5FD440);
    v24 = v61;
    sub_254521C60(v22, v61);
    v25 = sub_25454A2C4();
    v26 = sub_25454BF94();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v67 = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v67);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v67);
      *(v27 + 22) = 1024;
      v29 = &v24[*(v60 + 32)];
      v30 = *v29;
      v31 = *(v29 + 1);
      v65 = v30;
      v66 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
      sub_25454B7A4();
      v32 = v64;
      sub_254522280(v24);
      *(v27 + 24) = v32;
      _os_log_impl(&dword_2544A5000, v25, v26, "<%s: %s> Appearing without updating approach angle. includeRight = %{BOOL}d", v27, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v28, -1, -1);
      MEMORY[0x259C0FDF0](v27, -1, -1);
    }

    else
    {
      sub_254522280(v24);
    }

    return result;
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_2544AE150(v10, &qword_27F5FC620, &qword_2545503B0);
  sub_254549E64();
  (*(v5 + 8))(v7, v4);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_6;
  }

  v34 = v59;
  (*(v15 + 32))(v59, v13, v14);
  sub_254549E14();
  sub_254521084(&qword_27F5FCBB8, MEMORY[0x277D166C0], MEMORY[0x277D166D0]);
  v35 = sub_25454C0B4();
  v61 = *(v15 + 8);
  (v61)(v20, v14);
  v36 = v22 + *(v60 + 32);
  v37 = *v36;
  v38 = *(v36 + 8);
  v65 = v37;
  v66 = v38;
  LOBYTE(v67) = v35 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7B4();
  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v39 = sub_25454A2E4();
  __swift_project_value_buffer(v39, qword_27F5FD440);
  v40 = v58;
  sub_254521C60(v22, v58);
  v41 = v57;
  (*(v15 + 16))(v57, v34, v14);
  v42 = sub_25454A2C4();
  v43 = sub_25454BF94();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v67 = v45;
    *v44 = 136315906;
    *(v44 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v67);
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v67);
    *(v44 + 22) = 1024;
    v46 = v40 + *(v60 + 32);
    v47 = *v46;
    v48 = *(v46 + 8);
    v65 = v47;
    v66 = v48;
    sub_25454B7A4();
    v49 = v64;
    sub_254522280(v40);
    *(v44 + 24) = v49;
    *(v44 + 28) = 2080;
    v50 = sub_254549E24();
    v52 = v51;
    v53 = v61;
    (v61)(v41, v14);
    v54 = sub_254502AAC(v50, v52, &v67);

    *(v44 + 30) = v54;
    _os_log_impl(&dword_2544A5000, v42, v43, "<%s: %s> On Appear setting  includeRight %{BOOL}d from Matter %s", v44, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v45, -1, -1);
    MEMORY[0x259C0FDF0](v44, -1, -1);

    (v53)(v59, v14);
  }

  else
  {
    sub_254522280(v40);

    v55 = v61;
    (v61)(v41, v14);
    (v55)(v34, v14);
  }

  return result;
}

double sub_254520250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[2] = a3;
  v18 = a4;
  v17[1] = a2;
  v5 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  sub_25454BE14();
  sub_25454BE04();
  v11 = MEMORY[0x277D85700];
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_25454BE44();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_254521C60(a1, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_25454BE04();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v11;
  sub_254521CC8(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_2544B5138(0, 0, v10, v18, v15);

  return result;
}

uint64_t sub_254520470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[11] = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  sub_25454BE14();
  v4[14] = sub_25454BE04();
  v6 = sub_25454BDB4();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x2822009F8](sub_254520544, v6, v5);
}

uint64_t sub_254520544()
{
  v42 = v0;
  if (qword_27F5FACF0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = sub_25454A2E4();
  __swift_project_value_buffer(v4, qword_27F5FD440);
  sub_254521C60(v3, v1);
  sub_254521C60(v3, v2);
  v5 = sub_25454A2C4();
  v6 = sub_25454BF94();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  if (v7)
  {
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v12 = v41;
    *v11 = 136315906;
    *(v11 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v41);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v41);
    *(v11 + 22) = 2080;
    v13 = v9 + *(v10 + 36);
    v14 = *v13;
    v15 = *(v13 + 8);
    *(v0 + 48) = v14;
    *(v0 + 56) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
    sub_25454B7A4();
    v16 = *(v0 + 146);
    v17 = 1702195828;
    if ((v16 & 1) == 0)
    {
      v17 = 0x65736C6166;
    }

    v18 = 0xE500000000000000;
    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    if (v16 == 2)
    {
      v19 = 7104878;
    }

    else
    {
      v19 = v17;
    }

    if (v16 == 2)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = v18;
    }

    sub_254522280(v9);
    v21 = sub_254502AAC(v19, v20, &v41);

    *(v11 + 24) = v21;
    *(v11 + 32) = 1024;
    v22 = v8 + *(v10 + 32);
    v23 = *v22;
    v24 = *(v22 + 8);
    *(v0 + 64) = v23;
    *(v0 + 72) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
    sub_25454B7A4();
    LODWORD(v21) = *(v0 + 147);
    sub_254522280(v8);
    *(v11 + 34) = v21;
    _os_log_impl(&dword_2544A5000, v5, v6, "<%s: %s> Changing from prevIncludeRight %s to includeRight %{BOOL}d", v11, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x259C0FDF0](v12, -1, -1);
    MEMORY[0x259C0FDF0](v11, -1, -1);
  }

  else
  {
    sub_254522280(*(v0 + 96));

    sub_254522280(v9);
  }

  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = (v26 + *(v25 + 36));
  v28 = *v27;
  v29 = *(v27 + 1);
  *(v0 + 16) = v28;
  *(v0 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCD60, &qword_254551268);
  sub_25454B7A4();
  v30 = *(v0 + 144);
  v31 = (v26 + *(v25 + 32));
  v32 = *v31;
  v33 = *(v31 + 1);
  *(v0 + 32) = v32;
  *(v0 + 40) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FADF8, &qword_25454FF70);
  sub_25454B7A4();
  if (v30 == 2 || ((*(v0 + 145) ^ v30) & 1) != 0)
  {
    v40 = swift_task_alloc();
    *(v0 + 136) = v40;
    *v40 = v0;
    v40[1] = sub_254520A4C;

    return sub_25451D75C();
  }

  else
  {

    v34 = sub_25454A2C4();
    v35 = sub_25454BF94();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_254502AAC(0xD00000000000001DLL, 0x8000000254551070, &v41);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_254502AAC(2036625250, 0xE400000000000000, &v41);
      _os_log_impl(&dword_2544A5000, v34, v35, "<%s: %s> Not updating matter because the value for includeRight did NOT change.", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C0FDF0](v37, -1, -1);
      MEMORY[0x259C0FDF0](v36, -1, -1);
    }

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_254520A4C()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_254520B6C, v3, v2);
}

uint64_t sub_254520B6C()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::String __swiftcall WalletKeyUWBApproachAngleView._getFooterString(left:right:)(Swift::Bool left, Swift::Bool right)
{
  v2 = 0xD00000000000002DLL;
  v3 = "oachAngle_Footer_LeftAndFront";
  if (right)
  {
    v2 = 0xD000000000000024;
  }

  else
  {
    v3 = "oachAngle_Footer_RightAndFront";
  }

  v4 = 0xD00000000000002ELL;
  if (right)
  {
    v5 = "oachAngle_Footer_Front";
  }

  else
  {
    v4 = 0xD000000000000026;
    v5 = "tKeyUWBApproachAngleSection()";
  }

  v6 = !left;
  if (left)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = v3;
  }

  v9 = (v8 | 0x8000000000000000);
  result._object = v9;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t WalletKeyUWBApproachAngleView._getImageName(left:right:colorScheme:)(char a1, char a2, uint64_t a3)
{
  v5 = sub_25454A454();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277CDF3C0], v5);
  v9 = sub_25454A444();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v10 = 0x6B7261642DLL;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  if (a1)
  {
    if (a2)
    {
      v12 = "WalletKeyUWB-ApproachAngle-Both";
    }

    else
    {
      v12 = "WalletKeyUWB-ApproachAngle-Left";
    }

    v13 = (v12 - 32) | 0x8000000000000000;
    v16[0] = 0xD00000000000001FLL;
  }

  else
  {
    if (a2)
    {
      v13 = 0x8000000254556780;
      v14 = 0xD000000000000020;
    }

    else
    {
      v13 = 0x8000000254556750;
      v14 = 0xD000000000000026;
    }

    v16[0] = v14;
  }

  v16[1] = v13;
  MEMORY[0x259C0EE40](v10, v11);

  return v16[0];
}

uint64_t sub_254520E04@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBC0, &qword_254550F48);
  sub_2545210D4();
  sub_25454A724();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBE0, &qword_254550F88) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBE8, &qword_254550F90) + 28);
  v5 = *MEMORY[0x277CDFA88];
  v6 = sub_25454A6E4();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBF0, &qword_254550F98);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_254520F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_254521084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2545210D4()
{
  result = qword_27F5FCBC8;
  if (!qword_27F5FCBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCBC0, &qword_254550F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCBD0, &qword_254550F50);
    sub_2544AE1F0(&qword_27F5FCBD8, &qword_27F5FCBD0, &qword_254550F50, MEMORY[0x277CDD6E0]);
    sub_2544AECF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCBC8);
  }

  return result;
}

uint64_t sub_254521294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_254521320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBCD8, &qword_25454F730);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2545213BC(uint64_t a1)
{
  sub_254521858(319, &qword_27F5FBD68, MEMORY[0x277D15E00], MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_254521490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCC08, &unk_254551080);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2545215F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCC08, &unk_254551080);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_254521730(uint64_t a1)
{
  sub_2544AD83C(319, &qword_27F5FCC20, &qword_27F5FC620, &qword_2545503B0);
  if (v1 <= 0x3F)
  {
    sub_2544AD890();
    if (v2 <= 0x3F)
    {
      sub_2544AD83C(319, &qword_27F5FCC28, &qword_27F5FCBA0, &qword_254550F00);
      if (v3 <= 0x3F)
      {
        sub_254521858(319, &qword_27F5FCC30, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_254521858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2545218C0()
{
  result = qword_27F5FCC38;
  if (!qword_27F5FCC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCC40, &qword_2545510B0);
    sub_254519A54();
    sub_254505794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCC38);
  }

  return result;
}

unint64_t sub_25452195C()
{
  result = qword_27F5FCC48;
  if (!qword_27F5FCC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCBF0, &qword_254550F98);
    sub_254521A14();
    sub_2544AE1F0(&qword_27F5FB320, &qword_27F5FB328, &qword_2545510C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCC48);
  }

  return result;
}

unint64_t sub_254521A14()
{
  result = qword_27F5FCC50;
  if (!qword_27F5FCC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCBE0, &qword_254550F88);
    sub_2544AE1F0(&qword_27F5FCC58, &qword_27F5FCC60, &qword_2545510B8, MEMORY[0x277CDDA18]);
    sub_2544AE1F0(&qword_27F5FCC68, &qword_27F5FCBE8, &qword_254550F90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCC50);
  }

  return result;
}

unint64_t sub_254521B00()
{
  result = qword_27F5FCC80;
  if (!qword_27F5FCC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCC78, &qword_2545510D0);
    sub_2544AE1F0(&qword_27F5FCC88, &qword_27F5FCC90, &qword_2545510D8, MEMORY[0x277CE1198]);
    sub_2544AE1F0(&qword_27F5FCC98, &qword_27F5FCCA0, &qword_2545510E0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCC80);
  }

  return result;
}

uint64_t sub_254521BE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454AA24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254521C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254521CC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_254521D4C()
{
  result = qword_27F5FCD38;
  if (!qword_27F5FCD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCD30, &qword_2545511D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCD38);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_254549EA4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);

  v7 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBA8, &qword_254550F38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_25454A454();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_254521FFC()
{
  result = qword_27F5FCD40;
  if (!qword_27F5FCD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCD08, &qword_2545511B0);
    sub_2544AE1F0(&qword_27F5FCD48, &qword_27F5FCD50, &qword_2545511E0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCD40);
  }

  return result;
}

uint64_t sub_2545220B4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C0D910]();
  *a1 = result;
  return result;
}

uint64_t sub_25452210C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454AA24();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254522190(uint64_t a1)
{
  v4 = *(type metadata accessor for WalletKeyUWBApproachAngleView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2544AE3EC;

  return sub_254520470(a1, v6, v7, v1 + v5);
}

uint64_t sub_254522280(uint64_t a1)
{
  v2 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2545222DC()
{
  result = qword_27F5FCD88;
  if (!qword_27F5FCD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCD80, &unk_254551280);
    sub_2544AE1F0(&qword_27F5FC148, &qword_27F5FC150, &qword_25454FD60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCD88);
  }

  return result;
}

uint64_t sub_2545223CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WalletKeyUWBApproachAngleView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroy_48Tm()
{
  v1 = type metadata accessor for WalletKeyUWBApproachAngleView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = sub_254549EA4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBB0, &qword_254550F40);

  v7 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCBA8, &qword_254550F38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_25454A454();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2545226D8(uint64_t a1)
{
  v4 = *(type metadata accessor for WalletKeyUWBApproachAngleView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2544AE660;

  return sub_25451D060(a1, v6, v7, v1 + v5);
}

uint64_t sub_2545227C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCB70, &unk_254550EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t HomeDataError.icon.getter()
{
  v1 = 0x74696B656D6F68;
  v2 = *v0;
  if (v2 - 6 >= 5)
  {
    v3 = 0xD000000000000020;
  }

  else
  {
    v3 = 0x74696B656D6F68;
  }

  v4 = 0x69662E6B636F6C63;
  if (v2 != 2)
  {
    v4 = 0xD000000000000012;
  }

  if (v2 >= 2)
  {
    v1 = v4;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t HomeDataError.secondaryDescription.getter()
{
  result = 0;
  if (((1 << *v0) & 0x7F3) == 0)
  {
    return sub_25454BCF4();
  }

  return result;
}

_BYTE *HomeDataErrorView.init(error:foregroundStyle:descriptionStyle:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_254522B0C@<X0>(void *a1@<X8>)
{
  v73 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE30, &qword_254551518);
  v68 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v55 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE38, &qword_254551520);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v59 = (&v55 - v9);
  MEMORY[0x28223BE20](v8);
  v60 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE40, &qword_254551528);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v71 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE48, &qword_254551538);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v76 = &v55 - v23;
  v24 = *v1;
  v58 = *(v1 + 1);
  v25 = v1[16];
  if (v25 == 1)
  {
    v26 = 0x4022000000000000;
  }

  else
  {
    v26 = 0;
  }

  sub_25454BA54();
  v74 = v26;
  LODWORD(v75) = v25 != 1;
  sub_25454A544();
  v82 = 1;
  v81 = v84;
  v80 = v86;
  v72 = v14;
  v70 = v2;
  v69 = v22;
  v67 = v84;
  v66 = v86;
  v65 = v83;
  v64 = v85;
  v63 = v87;
  v62 = v88;
  v27 = sub_25454B704();
  v28 = sub_25454AE34();
  sub_25454B084();
  v29 = sub_25454B044();
  (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
  v30 = sub_25454B0A4();
  sub_2544AE150(v18, &qword_27F5FB370, &qword_254551530);
  KeyPath = swift_getKeyPath();
  v95 = v27;
  v96 = v28;
  v97 = KeyPath;
  v98 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE50, &qword_254551570);
  sub_254525210();
  sub_25454B4C4();

  if (v25)
  {
    sub_25454BA54();
    sub_25454A544();
    v57 = v89;
    v32 = v91;
    v33 = v93;
    v56 = v94;
    LOBYTE(v95) = 1;
    v79 = v90;
    v78 = v92;
    if (v25 == 1)
    {
      v34 = sub_25454AC24();
    }

    else
    {
      v34 = sub_25454AC14();
    }

    v36 = v59;
    *v59 = v34;
    *(v36 + 8) = 0;
    *(v36 + 16) = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE80, &qword_254551590);
    sub_254523460(v24, v25, v36 + *(v37 + 44));
    v38 = v60;
    sub_2544B14E8(v36, v60, &qword_27F5FCE38, &qword_254551520);
    LOBYTE(v36) = v95;
    v39 = v79;
    v40 = v78;
    v41 = v61;
    sub_2544AE240(v38, v61, &qword_27F5FCE38, &qword_254551520);
    *v4 = 0;
    v4[8] = v36;
    *(v4 + 2) = v57;
    v4[24] = v39;
    *(v4 + 4) = v32;
    v4[40] = v40;
    v42 = v56;
    *(v4 + 6) = v33;
    *(v4 + 7) = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE88, &qword_254551598);
    sub_2544AE240(v41, &v4[*(v43 + 48)], &qword_27F5FCE38, &qword_254551520);
    sub_2544AE150(v38, &qword_27F5FCE38, &qword_254551520);
    sub_2544AE150(v41, &qword_27F5FCE38, &qword_254551520);
    v35 = v71;
    sub_2544B14E8(v4, v71, &qword_27F5FCE30, &qword_254551518);
    (*(v68 + 56))(v35, 0, 1, v70);
  }

  else
  {
    v35 = v71;
    (*(v68 + 56))(v71, 1, 1, v70);
  }

  sub_25454BA54();
  sub_25454A544();
  v75 = v95;
  v44 = v96;
  v74 = v97;
  v45 = v98;
  v71 = v99;
  v70 = v100;
  v79 = 1;
  v78 = v96;
  v77 = v98;
  v46 = v76;
  v47 = v69;
  sub_2544AE240(v76, v69, &qword_27F5FCE48, &qword_254551538);
  v48 = v72;
  sub_2544AE240(v35, v72, &qword_27F5FCE40, &qword_254551528);
  v49 = v73;
  *v73 = 0;
  *(v49 + 8) = 1;
  v49[2] = v65;
  *(v49 + 24) = v67;
  v49[4] = v64;
  *(v49 + 40) = v66;
  v50 = v62;
  v49[6] = v63;
  v49[7] = v50;
  v49[8] = 0xBFF0000000000000;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE90, &qword_2545515A0);
  sub_2544AE240(v47, v49 + v51[12], &qword_27F5FCE48, &qword_254551538);
  sub_2544AE240(v48, v49 + v51[16], &qword_27F5FCE40, &qword_254551528);
  v52 = v49 + v51[20];
  *v52 = 0;
  v52[8] = 1;
  *(v52 + 2) = v75;
  v52[24] = v44;
  *(v52 + 4) = v74;
  v52[40] = v45;
  v53 = v70;
  *(v52 + 6) = v71;
  *(v52 + 7) = v53;
  *(v52 + 8) = 0xBFF0000000000000;
  sub_2544AE150(v35, &qword_27F5FCE40, &qword_254551528);
  sub_2544AE150(v46, &qword_27F5FCE48, &qword_254551538);
  sub_2544AE150(v48, &qword_27F5FCE40, &qword_254551528);
  return sub_2544AE150(v47, &qword_27F5FCE48, &qword_254551538);
}

void sub_254523460(int a1@<W0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v137 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE98, &qword_2545515A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v136 = v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v133 = v115 - v8;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEA0, &unk_2545515B0);
  v9 = MEMORY[0x28223BE20](v151);
  v150 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v147 = v115 - v11;
  v12 = sub_25454A6D4();
  v155 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v153 = v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v152 = v115 - v15;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEA8, &qword_254554640);
  MEMORY[0x28223BE20](v145);
  v144 = v115 - v16;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEB0, &qword_2545515C0);
  v154 = *(v149 - 8);
  v17 = MEMORY[0x28223BE20](v149);
  v126 = v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v143 = v115 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEB8, &qword_2545515C8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v125 = v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v142 = v115 - v23;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEC0, &qword_2545515D0);
  v132 = *(v148 - 8);
  v24 = MEMORY[0x28223BE20](v148);
  v124 = v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v123 = v115 - v27;
  MEMORY[0x28223BE20](v26);
  v141 = v115 - v28;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEC8, &qword_2545515D8);
  v29 = MEMORY[0x28223BE20](v140);
  v135 = v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v139 = v115 - v32;
  MEMORY[0x28223BE20](v31);
  v146 = v115 - v33;
  sub_25454BE14();
  v134 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  LOBYTE(v165[0]) = a1;
  HomeDataError.description.getter();
  LODWORD(v165[0]) = sub_25454AE34();
  v34 = sub_25454B1E4();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v127 = a2;
  v41 = a2;
  KeyPath = swift_getKeyPath();
  sub_25454B134();
  sub_25454B084();
  v43 = sub_25454B0D4();
  v138 = a1;
  v44 = v43;

  v45 = swift_getKeyPath();
  v166 = v38 & 1;
  *&v161 = v34;
  *(&v161 + 1) = v36;
  LOBYTE(v162) = v38 & 1;
  *(&v162 + 1) = v40;
  *&v163 = KeyPath;
  v129 = a2 != 1;
  BYTE8(v163) = a2 != 1;
  *&v164 = v45;
  *(&v164 + 1) = v44;
  v46 = *MEMORY[0x277CDF9F8];
  v47 = v155;
  v48 = v155 + 104;
  v49 = *(v155 + 104);
  v50 = v152;
  v49(v152, *MEMORY[0x277CDF9F8], v12);
  v51 = *MEMORY[0x277CDF988];
  v52 = v153;
  v49(v153, *MEMORY[0x277CDF988], v12);
  v128 = sub_254525428();
  if (sub_25454BC34())
  {
    v119 = v51;
    v120 = v46;
    v121 = v49;
    v122 = v48;
    v131 = v41 != 1;
    v130 = v41 == 1;
    v53 = *(v47 + 32);
    v54 = v147;
    v53(v147, v50, v12);
    v55 = v151;
    v53((v54 + *(v151 + 48)), v52, v12);
    v56 = v150;
    sub_2544AE240(v54, v150, &qword_27F5FCEA0, &unk_2545515B0);
    v57 = *(v55 + 48);
    v58 = v144;
    v53(v144, v56, v12);
    v59 = *(v47 + 8);
    v59(v56 + v57, v12);
    sub_254525480(v54, v56);
    v60 = *(v55 + 48);
    v61 = v145;
    v62 = v58 + *(v145 + 36);
    v117 = v53;
    v115[2] = v47 + 32;
    v53(v62, (v56 + v60), v12);
    v118 = v12;
    v155 = v47 + 8;
    v116 = v59;
    v59(v56, v12);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCED8, &qword_254551610);
    v64 = sub_2545254F0();
    v65 = sub_2544AE1F0(&qword_27F5FCEE8, &qword_27F5FCEA8, &qword_254554640, MEMORY[0x277D83660]);
    v66 = v143;
    sub_25454B384();
    sub_2544AE150(v58, &qword_27F5FCEA8, &qword_254554640);
    v165[0] = v161;
    v165[1] = v162;
    v165[2] = v163;
    v165[3] = v164;
    sub_2544AE150(v165, &qword_27F5FCED8, &qword_254551610);
    v115[1] = v63;
    *&v161 = v63;
    *(&v161 + 1) = v61;
    *&v162 = v64;
    *(&v162 + 1) = v65;
    v115[0] = v65;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = v142;
    v69 = v149;
    sub_25454B4C4();
    v70 = v154 + 8;
    v143 = *(v154 + 8);
    (v143)(v66, v69);
    v71 = 2 * v130;
    v72 = swift_getKeyPath();
    v73 = v68;
    v74 = v141;
    sub_2544B14E8(v73, v141, &qword_27F5FCEB8, &qword_2545515C8);
    v75 = v148;
    v76 = v74 + *(v148 + 36);
    *v76 = v72;
    *(v76 + 8) = v71;
    *(v76 + 16) = v131;
    v77 = v139;
    sub_2544B14E8(v74, v139, &qword_27F5FCEC0, &qword_2545515D0);
    *(v77 + *(v140 + 36)) = 0x3FF0000000000000;
    v78 = v146;
    sub_2544B14E8(v77, v146, &qword_27F5FCEC8, &qword_2545515D8);
    if (((1 << v138) & 0x7F3) != 0)
    {
      v79 = v133;
      (*(v132 + 56))(v133, 1, 1, v75);
LABEL_6:
      v80 = v135;
      sub_2544AE240(v78, v135, &qword_27F5FCEC8, &qword_2545515D8);
      v81 = v136;
      sub_2544AE240(v79, v136, &qword_27F5FCE98, &qword_2545515A8);
      v82 = v137;
      sub_2544AE240(v80, v137, &qword_27F5FCEC8, &qword_2545515D8);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEF0, &qword_254551648);
      sub_2544AE240(v81, v82 + *(v83 + 48), &qword_27F5FCE98, &qword_2545515A8);
      sub_2544AE150(v79, &qword_27F5FCE98, &qword_2545515A8);
      sub_2544AE150(v78, &qword_27F5FCEC8, &qword_2545515D8);
      sub_2544AE150(v81, &qword_27F5FCE98, &qword_2545515A8);
      sub_2544AE150(v80, &qword_27F5FCEC8, &qword_2545515D8);

      return;
    }

    v142 = v64;
    v154 = v70;
    v141 = OpaqueTypeConformance2;
    sub_25454BCF4();
    LODWORD(v161) = sub_25454AE44();
    v84 = sub_25454B1E4();
    v86 = v85;
    v88 = v87;
    v90 = v89;

    v91 = swift_getKeyPath();
    v92 = sub_25454B104();
    v93 = swift_getKeyPath();
    v160 = v88 & 1;
    *&v156 = v84;
    *(&v156 + 1) = v86;
    LOBYTE(v157) = v88 & 1;
    *(&v157 + 1) = v90;
    *&v158 = v91;
    BYTE8(v158) = v129;
    *&v159 = v93;
    *(&v159 + 1) = v92;
    v94 = v152;
    v95 = v118;
    v96 = v121;
    v121(v152, v120, v118);
    v97 = v153;
    v96(v153, v119, v95);
    if (sub_25454BC34())
    {
      LODWORD(v140) = v127 != 1;
      v139 = v127 == 1;
      v98 = v147;
      v99 = v117;
      v117(v147, v94, v95);
      v100 = v151;
      v99(v98 + *(v151 + 48), v97, v95);
      v101 = v150;
      sub_2544AE240(v98, v150, &qword_27F5FCEA0, &unk_2545515B0);
      v102 = *(v100 + 48);
      v103 = v144;
      v99(v144, v101, v95);
      v104 = v116;
      v116(v101 + v102, v95);
      sub_254525480(v98, v101);
      v99(v103 + *(v145 + 36), (v101 + *(v100 + 48)), v95);
      v104(v101, v95);
      v105 = v126;
      sub_25454B384();
      sub_2544AE150(v103, &qword_27F5FCEA8, &qword_254554640);
      v161 = v156;
      v162 = v157;
      v163 = v158;
      v164 = v159;
      sub_2544AE150(&v161, &qword_27F5FCED8, &qword_254551610);
      v106 = v125;
      v107 = v149;
      sub_25454B4C4();
      (v143)(v105, v107);
      v108 = swift_getKeyPath();
      v109 = v106;
      v110 = v124;
      sub_2544B14E8(v109, v124, &qword_27F5FCEB8, &qword_2545515C8);
      v111 = v148;
      v112 = v110 + *(v148 + 36);
      v113 = v139;
      *v112 = v108;
      *(v112 + 8) = v113;
      *(v112 + 16) = v140;
      v114 = v123;
      sub_2544B14E8(v110, v123, &qword_27F5FCEC0, &qword_2545515D0);
      v79 = v133;
      sub_2544B14E8(v114, v133, &qword_27F5FCEC0, &qword_2545515D0);
      (*(v132 + 56))(v79, 0, 1, v111);
      v78 = v146;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t HomeDataErrorView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  sub_254524534(*v1, v3, v1[16], a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCDA8, &qword_2545512B0) + 36)) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCDB0, &qword_2545512B8) + 36)) = v3;
}

double sub_254524534@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v26 = a2;
  v25 = a1;
  v29 = a4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE10, &qword_2545514F8);
  MEMORY[0x28223BE20](v28);
  v6 = &v24[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE18, &qword_254551500);
  MEMORY[0x28223BE20](v7);
  v9 = &v24[-v8];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE00, &qword_2545514F0);
  MEMORY[0x28223BE20](v27);
  v11 = &v24[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCDF0, &qword_2545514E8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24[-v13];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_25454AB14();
  if (v4 == 1)
  {
    *v11 = v15;
    *(v11 + 1) = 0;
    v11[16] = 1;
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE28, &qword_254551510) + 44);
    v30 = v25;
    v31 = v26;
    v32 = 1;
    sub_254522B0C(&v11[v16]);

    sub_2544AE240(v11, v9, &qword_27F5FCE00, &qword_2545514F0);
    swift_storeEnumTagMultiPayload();
    v17 = MEMORY[0x277CE1138];
    sub_2544AE1F0(&qword_27F5FCDF8, &qword_27F5FCE00, &qword_2545514F0, MEMORY[0x277CE1138]);
    sub_2544AE1F0(&qword_27F5FCE08, &qword_27F5FCE10, &qword_2545514F8, v17);
    sub_25454AD44();
    v18 = v11;
    v19 = &qword_27F5FCE00;
    v20 = &qword_2545514F0;
  }

  else
  {
    *v6 = v15;
    *(v6 + 1) = 0;
    v6[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCE20, &qword_254551508);
    sub_254524A58(v25, v26, v4, &v6[*(v21 + 44)]);
    sub_2544AE240(v6, v9, &qword_27F5FCE10, &qword_2545514F8);
    swift_storeEnumTagMultiPayload();
    v22 = MEMORY[0x277CE1138];
    sub_2544AE1F0(&qword_27F5FCDF8, &qword_27F5FCE00, &qword_2545514F0, MEMORY[0x277CE1138]);
    sub_2544AE1F0(&qword_27F5FCE08, &qword_27F5FCE10, &qword_2545514F8, v22);
    sub_25454AD44();
    v18 = v6;
    v19 = &qword_27F5FCE10;
    v20 = &qword_2545514F8;
  }

  sub_2544AE150(v18, v19, v20);
  sub_2544B14E8(v14, v29, &qword_27F5FCDF0, &qword_2545514E8);

  return result;
}

unint64_t sub_254524990()
{
  result = qword_27F5FCDB8;
  if (!qword_27F5FCDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDB8);
  }

  return result;
}

unint64_t sub_2545249E8()
{
  result = qword_27F5FCDC0;
  if (!qword_27F5FCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDC0);
  }

  return result;
}

double sub_254524A58@<D0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v18 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEF8, &qword_254551650);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v12 = sub_25454AC14();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF00, &qword_254551658) + 44);
  v19 = a1;
  v20 = a2;
  v21 = v18;
  sub_254522B0C(&v12[v13]);

  sub_2544AE240(v12, v10, &qword_27F5FCEF8, &qword_254551650);
  *a4 = 0;
  *(a4 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF08, &unk_254551660);
  sub_2544AE240(v10, a4 + *(v14 + 48), &qword_27F5FCEF8, &qword_254551650);
  v15 = a4 + *(v14 + 64);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_2544AE150(v12, &qword_27F5FCEF8, &qword_254551650);
  sub_2544AE150(v10, &qword_27F5FCEF8, &qword_254551650);

  return result;
}

uint64_t sub_254524CA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  sub_254524534(*v1, v3, v1[16], a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCDA8, &qword_2545512B0) + 36)) = 0;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCDB0, &qword_2545512B8) + 36)) = v3;
}

uint64_t getEnumTagSinglePayload for HomeDataError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HomeDataError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HomeDataErrorView.DescriptionStyle(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_254524F34()
{
  result = qword_27F5FCDC8;
  if (!qword_27F5FCDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCDB0, &qword_2545512B8);
    sub_254524FEC();
    sub_2544AE1F0(&qword_27F5FB790, &qword_27F5FB798, &qword_25454EB60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDC8);
  }

  return result;
}

unint64_t sub_254524FEC()
{
  result = qword_27F5FCDD0;
  if (!qword_27F5FCDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCDA8, &qword_2545512B0);
    sub_2545250A4();
    sub_2544AE1F0(&qword_27F5FB320, &qword_27F5FB328, &qword_2545510C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDD0);
  }

  return result;
}

unint64_t sub_2545250A4()
{
  result = qword_27F5FCDD8;
  if (!qword_27F5FCDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCDE0, &qword_2545514E0);
    sub_254525128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDD8);
  }

  return result;
}

unint64_t sub_254525128()
{
  result = qword_27F5FCDE8;
  if (!qword_27F5FCDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCDF0, &qword_2545514E8);
    v1 = MEMORY[0x277CE1138];
    sub_2544AE1F0(&qword_27F5FCDF8, &qword_27F5FCE00, &qword_2545514F0, MEMORY[0x277CE1138]);
    sub_2544AE1F0(&qword_27F5FCE08, &qword_27F5FCE10, &qword_2545514F8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCDE8);
  }

  return result;
}

unint64_t sub_254525210()
{
  result = qword_27F5FCE58;
  if (!qword_27F5FCE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCE50, &qword_254551570);
    sub_2545252C8();
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCE58);
  }

  return result;
}

unint64_t sub_2545252C8()
{
  result = qword_27F5FCE60;
  if (!qword_27F5FCE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCE68, &qword_254551578);
    sub_2544AE1F0(&qword_27F5FCE70, &qword_27F5FCE78, &unk_254551580, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCE60);
  }

  return result;
}

uint64_t sub_254525380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454A954();
  *a1 = result;
  return result;
}

uint64_t sub_2545253AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454A954();
  *a1 = result;
  return result;
}

unint64_t sub_254525428()
{
  result = qword_27F5FCED0;
  if (!qword_27F5FCED0)
  {
    sub_25454A6D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCED0);
  }

  return result;
}

uint64_t sub_254525480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEA0, &unk_2545515B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2545254F0()
{
  result = qword_27F5FCEE0;
  if (!qword_27F5FCEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCED8, &qword_254551610);
    sub_2545222DC();
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCEE0);
  }

  return result;
}

Swift::String __swiftcall TextIcon.Unit.formatted()()
{
  v1 = sub_2545491D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2545493C4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  v13 = (v12 + 8);
  v18[1] = *v0;
  sub_2545493A4();
  sub_254525884();
  sub_254549164();
  sub_2545491C4();
  MEMORY[0x259C0C270](v4, v6);
  (*(v2 + 8))(v4, v1);
  v14 = *v13;
  (*v13)(v9, v6);
  sub_2545258D8();
  sub_25454BBB4();
  v14(v11, v6);
  v15 = v18[2];
  v16 = v18[3];
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t sub_254525884()
{
  result = qword_27F5FCF18;
  if (!qword_27F5FCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCF18);
  }

  return result;
}

unint64_t sub_2545258D8()
{
  result = qword_27F5FCF20;
  if (!qword_27F5FCF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCF10, &qword_254551670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCF20);
  }

  return result;
}

uint64_t TextIcon.Unit.description.getter()
{
  if (*(v0 + 8))
  {
    v3 = 0x65686E6572686166;
  }

  else
  {
    v3 = 0x28737569736C6563;
  }

  countAndFlagsBits = TextIcon.Unit.formatted()()._countAndFlagsBits;
  MEMORY[0x259C0EE40](countAndFlagsBits);

  MEMORY[0x259C0EE40](41, 0xE100000000000000);
  return v3;
}

uint64_t static TextIcon.Unit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_254525A80(uint64_t a1)
{
  v2 = sub_2545260CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254525ABC(uint64_t a1)
{
  v2 = sub_2545260CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254525B10()
{
  if (*v0)
  {
    return 0x65686E6572686166;
  }

  else
  {
    return 0x737569736C6563;
  }
}

uint64_t sub_254525B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737569736C6563 && a2 == 0xE700000000000000;
  if (v6 || (sub_25454C334() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65686E6572686166 && a2 == 0xEA00000000007469)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25454C334();

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

uint64_t sub_254525C40(uint64_t a1)
{
  v2 = sub_254526024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254525C7C(uint64_t a1)
{
  v2 = sub_254526024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254525CB8(uint64_t a1)
{
  v2 = sub_254526078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254525CF4(uint64_t a1)
{
  v2 = sub_254526078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextIcon.Unit.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF28, &qword_254551678);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF30, &qword_254551680);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF38, &qword_254551688);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254526024();
  sub_25454C454();
  if (v12)
  {
    v24 = 1;
    sub_254526078();
    v13 = v20;
    sub_25454C294();
    v14 = v22;
    sub_25454C2C4();
    (*(v21 + 8))(v13, v14);
  }

  else
  {
    v23 = 0;
    sub_2545260CC();
    sub_25454C294();
    v15 = v19;
    sub_25454C2C4();
    (*(v18 + 8))(v7, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_254526024()
{
  result = qword_27F5FCF40;
  if (!qword_27F5FCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCF40);
  }

  return result;
}

unint64_t sub_254526078()
{
  result = qword_27F5FCF48;
  if (!qword_27F5FCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCF48);
  }

  return result;
}

unint64_t sub_2545260CC()
{
  result = qword_27F5FCF50;
  if (!qword_27F5FCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCF50);
  }

  return result;
}

uint64_t TextIcon.Unit.hash(into:)()
{
  if ((*v0 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x259C0F4F0](*(v0 + 8));
  return MEMORY[0x259C0F520](v1);
}

uint64_t TextIcon.Unit.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_25454C3E4();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  MEMORY[0x259C0F4F0](v2);
  MEMORY[0x259C0F520](v1);
  return sub_25454C434();
}

uint64_t TextIcon.Unit.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF58, &qword_254551690);
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF60, &qword_254551698);
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF68, &qword_2545516A0);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v23[-v8];
  v10 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_254526024();
  v11 = v29;
  sub_25454C444();
  if (!v11)
  {
    v29 = v7;
    v12 = v27;
    v13 = sub_25454C284();
    if (*(v13 + 16) == 1)
    {
      v14 = v9;
      v15 = v28;
      v24 = *(v13 + 32);
      v31 = 1;
      sub_254526078();
      sub_25454C234();
      sub_25454C264();
      v17 = v16;
      (*(v26 + 8))(v5, v3);
      (*(v29 + 8))(v14, v15);
      swift_unknownObjectRelease();
      *v12 = v17;
      *(v12 + 8) = v24;
    }

    else
    {
      v18 = sub_25454C184();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF70, &qword_2545516A8);
      *v20 = &type metadata for TextIcon.Unit;
      v21 = v28;
      sub_25454C244();
      sub_25454C174();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
      swift_willThrow();
      (*(v29 + 8))(v9, v21);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t sub_25452667C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2545266B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_254526704()
{
  sub_25454C3E4();
  TextIcon.Unit.hash(into:)();
  return sub_25454C434();
}

uint64_t sub_25452675C(uint64_t a1)
{
  sub_25454C3E4();
  TextIcon.Unit.hash(into:)();
  return sub_25454C434();
}

uint64_t TextIcon.Kind.description.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      strcpy(v5, "temperature(");
      BYTE5(v5[1]) = 0;
      HIWORD(v5[1]) = -5120;
    }

    else
    {
      if (v1 != 4)
      {
        return 0x61746E6563726570;
      }

      sub_25454C154();

      v5[0] = 0xD000000000000011;
      v5[1] = 0x8000000254556C30;
    }

    v4 = TextIcon.Unit.description.getter();
    MEMORY[0x259C0EE40](v4);

    MEMORY[0x259C0EE40](41, 0xE100000000000000);
    return v5[0];
  }

  v2 = 0x7265626D756ELL;
  if (v1 != 1)
  {
    v2 = 0x65676E6172;
  }

  if (*(v0 + 16))
  {
    return v2;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_25452692C()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x74617265706D6574;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x61746E6563726570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7265626D756ELL;
  if (v1 != 1)
  {
    v5 = 0x65676E6172;
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

uint64_t sub_2545269E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25452AFCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_254526A1C(uint64_t a1)
{
  v2 = sub_254529710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526A58(uint64_t a1)
{
  v2 = sub_254529710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526A94(uint64_t a1)
{
  v2 = sub_254529908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526AD0(uint64_t a1)
{
  v2 = sub_254529908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526B0C(uint64_t a1)
{
  v2 = sub_254529764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526B48(uint64_t a1)
{
  v2 = sub_254529764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526B84(uint64_t a1)
{
  v2 = sub_2545298B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526BC0(uint64_t a1)
{
  v2 = sub_2545298B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526BFC(uint64_t a1)
{
  v2 = sub_254529860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526C38(uint64_t a1)
{
  v2 = sub_254529860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526C74(uint64_t a1)
{
  v2 = sub_2545297B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526CB0(uint64_t a1)
{
  v2 = sub_2545297B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254526CEC()
{
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](0);
  return sub_25454C434();
}

uint64_t sub_254526D30(uint64_t a1)
{
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](0);
  return sub_25454C434();
}

uint64_t sub_254526D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25454C334();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_254526DF0(uint64_t a1)
{
  v2 = sub_25452995C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254526E2C(uint64_t a1)
{
  v2 = sub_25452995C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextIcon.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF78, &qword_2545516B0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF80, &qword_2545516B8);
  v42 = *(v5 - 8);
  v43 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF88, &qword_2545516C0);
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF90, &qword_2545516C8);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v32 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF98, &qword_2545516D0);
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCFA0, &qword_2545516D8);
  v30 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCFA8, &qword_2545516E0);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v17 = *v1;
  v44 = v1[1];
  v45 = v17;
  v18 = *(v1 + 16);
  v19 = a1[3];
  v20 = a1;
  v22 = &v30 - v21;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  sub_254529710();
  sub_25454C454();
  if (v18 <= 2)
  {
    if (!v18)
    {
      LOBYTE(v48) = 0;
      sub_25452995C();
      v27 = v47;
      sub_25454C294();
      sub_25454C2A4();
      (*(v30 + 8))(v16, v14);
      return (*(v46 + 8))(v22, v27);
    }

    if (v18 == 1)
    {
      LOBYTE(v48) = 1;
      sub_254529908();
      v23 = v47;
      sub_25454C294();
      sub_25454C2C4();
      (*(v31 + 8))(v13, v11);
      return (*(v46 + 8))(v22, v23);
    }

    LOBYTE(v48) = 2;
    sub_2545298B4();
    v24 = v32;
    v23 = v47;
    sub_25454C294();
    v48 = v45;
    v49 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCFE0, &qword_2545516E8);
    sub_254529A04(&qword_27F5FCFE8, MEMORY[0x277D83B90], MEMORY[0x277D83640]);
    v25 = v35;
    sub_25454C2F4();
    v26 = v34;
LABEL_11:
    (*(v26 + 8))(v24, v25);
    return (*(v46 + 8))(v22, v23);
  }

  if (v18 == 3)
  {
    LOBYTE(v48) = 3;
    sub_254529860();
    v24 = v33;
    v23 = v47;
    sub_25454C294();
    v48 = v45;
    LOBYTE(v49) = v44 & 1;
    sub_25452980C();
    v25 = v37;
    sub_25454C2F4();
    v26 = v36;
    goto LABEL_11;
  }

  v23 = v47;
  if (v18 == 4)
  {
    LOBYTE(v48) = 4;
    sub_2545297B8();
    v24 = v39;
    sub_25454C294();
    v48 = v45;
    LOBYTE(v49) = v44 & 1;
    sub_25452980C();
    v25 = v43;
    sub_25454C2F4();
    v26 = v42;
    goto LABEL_11;
  }

  LOBYTE(v48) = 5;
  sub_254529764();
  v29 = v38;
  sub_25454C294();
  (*(v40 + 8))(v29, v41);
  return (*(v46 + 8))(v22, v23);
}

uint64_t TextIcon.Kind.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v6 = 3;
    }

    else
    {
      if (v4 != 4)
      {
        v8 = 5;
        return MEMORY[0x259C0F4F0](v8);
      }

      v6 = 4;
    }

    MEMORY[0x259C0F4F0](v6);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v2 = 0;
    }

    MEMORY[0x259C0F4F0](v3 & 1);
    v5 = v2;
    return MEMORY[0x259C0F520](v5);
  }

  if (*(v1 + 16))
  {
    if (v4 == 1)
    {
      MEMORY[0x259C0F4F0](1);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v2;
      }

      else
      {
        v5 = 0;
      }

      return MEMORY[0x259C0F520](v5);
    }

    MEMORY[0x259C0F4F0](2);
    MEMORY[0x259C0F4F0](v2);
    v8 = v3;
    return MEMORY[0x259C0F4F0](v8);
  }

  MEMORY[0x259C0F4F0](0);

  return sub_25454BD14();
}

uint64_t TextIcon.Kind.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_25454C3E4();
  TextIcon.Kind.hash(into:)(v3);
  return sub_25454C434();
}

uint64_t TextIcon.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD000, &qword_2545516F0);
  v63 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v75 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD008, &qword_2545516F8);
  v5 = *(v4 - 8);
  v69 = v4;
  v70 = v5;
  MEMORY[0x28223BE20](v4);
  v71 = &v57 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD010, &qword_254551700);
  v67 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v74 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD018, &qword_254551708);
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  MEMORY[0x28223BE20](v8);
  v73 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD020, &qword_254551710);
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD028, &qword_254551718);
  v60 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD030, &qword_254551720);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - v19;
  v21 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_254529710();
  v22 = v76;
  sub_25454C444();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(v77);
  }

  v57 = v14;
  v23 = v13;
  v25 = v73;
  v24 = v74;
  v26 = v75;
  v58 = 0;
  v59 = v18;
  v76 = v20;
  v27 = sub_25454C284();
  if (*(v27 + 16) != 1 || (v28 = *(v27 + 32), v28 == 6))
  {
    v37 = sub_25454C184();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF70, &qword_2545516A8);
    *v39 = &type metadata for TextIcon.Kind;
    v40 = v76;
    sub_25454C244();
    sub_25454C174();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v59 + 8))(v40, v17);
LABEL_10:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v77);
  }

  if (*(v27 + 32) > 2u)
  {
    v42 = v72;
    if (v28 == 3)
    {
      LOBYTE(v78) = 3;
      sub_254529860();
      v30 = v76;
      v49 = v58;
      sub_25454C234();
      if (!v49)
      {
        sub_2545299B0();
        v50 = v64;
        sub_25454C274();
        (*(v67 + 8))(v24, v50);
        (*(v59 + 8))(v30, v17);
        goto LABEL_28;
      }
    }

    else
    {
      v74 = v27;
      v30 = v76;
      if (v28 == 4)
      {
        LOBYTE(v78) = 4;
        sub_2545297B8();
        v43 = v71;
        v44 = v58;
        sub_25454C234();
        if (!v44)
        {
          sub_2545299B0();
          v45 = v69;
          sub_25454C274();
          (*(v70 + 8))(v43, v45);
          (*(v59 + 8))(v30, v17);
LABEL_28:
          swift_unknownObjectRelease();
          v36 = v78;
          v35 = v79;
          goto LABEL_30;
        }
      }

      else
      {
        LOBYTE(v78) = 5;
        sub_254529764();
        v52 = v58;
        sub_25454C234();
        v35 = v52;
        if (!v52)
        {
          (*(v63 + 8))(v26, v68);
          (*(v59 + 8))(v30, v17);
          swift_unknownObjectRelease();
          v36 = 0;
          goto LABEL_30;
        }
      }
    }

LABEL_22:
    (*(v59 + 8))(v30, v17);
    goto LABEL_10;
  }

  if (*(v27 + 32))
  {
    v29 = *(v27 + 32);
    if (v29 == 1)
    {
      LOBYTE(v78) = 1;
      sub_254529908();
      v30 = v76;
      v31 = v58;
      sub_25454C234();
      if (!v31)
      {
        v32 = v62;
        sub_25454C264();
        v34 = v33;
        v35 = 0;
        (*(v61 + 8))(v23, v32);
        (*(v59 + 8))(v30, v17);
        swift_unknownObjectRelease();
        v36 = v34;
LABEL_29:
        v42 = v72;
        LOBYTE(v28) = v29;
        goto LABEL_30;
      }
    }

    else
    {
      LOBYTE(v78) = 2;
      sub_2545298B4();
      v30 = v76;
      v51 = v58;
      sub_25454C234();
      if (!v51)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCFE0, &qword_2545516E8);
        sub_254529A04(&qword_27F5FD040, MEMORY[0x277D83BB8], MEMORY[0x277D83668]);
        v54 = v65;
        sub_25454C274();
        v55 = v59;
        (*(v66 + 8))(v25, v54);
        (*(v55 + 8))(v30, v17);
        swift_unknownObjectRelease();
        v36 = v78;
        v35 = v79;
        goto LABEL_29;
      }
    }

    goto LABEL_22;
  }

  LOBYTE(v78) = 0;
  sub_25452995C();
  v46 = v16;
  v47 = v76;
  v48 = v58;
  sub_25454C234();
  if (v48)
  {
    (*(v59 + 8))(v47, v17);
    goto LABEL_10;
  }

  v53 = v57;
  v36 = sub_25454C254();
  v35 = v56;
  (*(v60 + 8))(v46, v53);
  (*(v59 + 8))(v76, v17);
  swift_unknownObjectRelease();
  v42 = v72;
LABEL_30:
  *v42 = v36;
  *(v42 + 8) = v35;
  *(v42 + 16) = v28;
  return __swift_destroy_boxed_opaque_existential_0(v77);
}

uint64_t sub_254528298()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_25454C3E4();
  TextIcon.Kind.hash(into:)(v3);
  return sub_25454C434();
}

uint64_t sub_2545282F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_25454C3E4();
  TextIcon.Kind.hash(into:)(v4);
  return sub_25454C434();
}

uint64_t TextIcon.Configuration.init(value:localizedString:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, double *a4@<X8>, double a5@<D0>)
{
  v10 = sub_254549104();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = *a3;
  v12 = a3[1];
  v13 = *(a3 + 16);
  *a4 = a5;

  sub_2545490F4();
  v14 = type metadata accessor for TextIcon.Configuration(0);
  result = sub_2545490E4();
  v16 = (a4 + *(v14 + 28));
  *v16 = a1;
  v16[1] = a2;
  v17 = a4 + *(v14 + 24);
  *v17 = v11;
  *(v17 + 1) = v12;
  v17[16] = v13;
  return result;
}

uint64_t TextIcon.Configuration.init(value:localizedString:kind:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD048, &qword_254551728);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27[-v9];
  v11 = sub_2545490A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a2;
  v29 = a2[1];
  v30 = v15;
  v28 = *(a2 + 16);
  *a3 = a4;
  v16 = type metadata accessor for TextIcon.Configuration(0);
  v17 = v16[5];
  v18 = sub_2545490D4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a3 + v17, a1, v18);
  sub_254549094();
  sub_254528698(v10);
  (*(v12 + 8))(v14, v11);
  v20 = sub_25454BCB4();
  v22 = v21;
  result = (*(v19 + 8))(a1, v18);
  v24 = (a3 + v16[7]);
  *v24 = v20;
  v24[1] = v22;
  v25 = a3 + v16[6];
  v26 = v29;
  *v25 = v30;
  *(v25 + 1) = v26;
  v25[16] = v28;
  return result;
}

uint64_t sub_254528698@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1B8, &qword_2545526D8);
  v2 = MEMORY[0x28223BE20](v26);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - v5;
  v7 = sub_2545490C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1C0, &qword_2545526E0);
  MEMORY[0x28223BE20](v25);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1C8, &qword_2545526E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v24 - v14;
  v16 = sub_2545490A4();
  v17 = sub_25452B340(&qword_27F5FD1D0, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v27 = v16;
  v18 = v17;
  sub_25454BEF4();
  sub_25452B340(&qword_27F5FD1D8, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  result = sub_25454BC44();
  if (result)
  {
    sub_25454BF24();
    sub_25452B340(&qword_27F5FD1E0, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    result = sub_25454BC34();
    if (result)
    {
      v24[1] = v1;
      v20 = *(v8 + 32);
      v20(v6, v15, v7);
      v24[0] = v18;
      v21 = v26;
      v20(&v6[*(v26 + 48)], v10, v7);
      sub_25452B388(v6, v4);
      v22 = *(v21 + 48);
      v20(v12, v4, v7);
      v23 = *(v8 + 8);
      v23(&v4[v22], v7);
      sub_25452B3F8(v6, v4);
      v20(&v12[*(v25 + 36)], &v4[*(v21 + 48)], v7);
      v23(v4, v7);
      sub_25454BF44();
      return sub_25452B468(v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_254528A74()
{
  v1 = 0x65756C6176;
  v2 = 1684957547;
  if (*v0 != 2)
  {
    v2 = 0x7453656C706D6973;
  }

  if (*v0)
  {
    v1 = 0x657A696C61636F6CLL;
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

uint64_t sub_254528AF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25452B1D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_254528B2C(uint64_t a1)
{
  v2 = sub_254529BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254528B68(uint64_t a1)
{
  v2 = sub_254529BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextIcon.Configuration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD050, &qword_254551730);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254529BF0();
  sub_25454C454();
  LOBYTE(v15) = 0;
  sub_25454C2C4();
  if (!v2)
  {
    v9 = type metadata accessor for TextIcon.Configuration(0);
    LOBYTE(v15) = 1;
    sub_2545490D4();
    sub_25452B340(&qword_27F5FD060, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
    sub_25454C2F4();
    v10 = v3 + *(v9 + 24);
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v17 = v12;
    v14[7] = 2;
    sub_254529C44(v15, v11, v12);
    sub_254529C58();
    sub_25454C2F4();
    sub_254529CAC(v15, v16, v17);
    LOBYTE(v15) = 3;
    sub_25454C2A4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TextIcon.Configuration.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x259C0F520](*&v2);
  v3 = type metadata accessor for TextIcon.Configuration(0);
  sub_2545490D4();
  sub_25452B340(&qword_27F5FD070, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_25454BBF4();
  v4 = v1 + *(v3 + 24);
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = v4[16];
  if (v7 <= 2)
  {
    if (!v7)
    {
      MEMORY[0x259C0F4F0](0);
      sub_25454BD14();
      goto LABEL_21;
    }

    if (v7 == 1)
    {
      MEMORY[0x259C0F4F0](1);
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x259C0F520](v8);
      goto LABEL_21;
    }

    MEMORY[0x259C0F4F0](2);
    MEMORY[0x259C0F4F0](v5);
    v10 = v6;
    goto LABEL_20;
  }

  if (v7 == 3)
  {
    v9 = 3;
  }

  else
  {
    if (v7 != 4)
    {
      v10 = 5;
LABEL_20:
      MEMORY[0x259C0F4F0](v10);
      goto LABEL_21;
    }

    v9 = 4;
  }

  MEMORY[0x259C0F4F0](v9);
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v5 = 0;
  }

  MEMORY[0x259C0F4F0](v6 & 1);
  MEMORY[0x259C0F520](v5);
LABEL_21:

  return sub_25454BD14();
}

uint64_t TextIcon.Configuration.hashValue.getter()
{
  sub_25454C3E4();
  TextIcon.Configuration.hash(into:)(v1);
  return sub_25454C434();
}

uint64_t TextIcon.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_2545490D4();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD078, &qword_254551738);
  v29 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TextIcon.Configuration(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254529BF0();
  v31 = v7;
  v11 = v33;
  sub_25454C444();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v33 = a1;
  v27 = v8;
  v13 = v29;
  v12 = v30;
  LOBYTE(v34) = 0;
  sub_25454C264();
  v14 = v10;
  *v10 = v15;
  LOBYTE(v34) = 1;
  sub_25452B340(&qword_27F5FD080, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  v16 = v5;
  sub_25454C274();
  v17 = v14;
  (*(v12 + 32))(&v14[*(v27 + 20)], v16, v3);
  v36 = 2;
  sub_254529CC0();
  sub_25454C274();
  v18 = v35;
  v19 = v27;
  v20 = v17 + *(v27 + 24);
  *v20 = v34;
  *(v20 + 16) = v18;
  LOBYTE(v34) = 3;
  v21 = sub_25454C254();
  v23 = v22;
  (*(v13 + 8))(v31, v32);
  v24 = (v17 + *(v19 + 28));
  *v24 = v21;
  v24[1] = v23;
  sub_254529D14(v17, v28);
  __swift_destroy_boxed_opaque_existential_0(v33);
  return sub_254529D78(v17);
}

uint64_t sub_2545293D4()
{
  sub_25454C3E4();
  TextIcon.Configuration.hash(into:)(v1);
  return sub_25454C434();
}

uint64_t sub_254529418(uint64_t a1)
{
  sub_25454C3E4();
  TextIcon.Configuration.hash(into:)(v2);
  return sub_25454C434();
}

BOOL _s7HomeUI28TextIconO4KindO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 != 3)
      {
        goto LABEL_29;
      }

      sub_254529CAC(*a1, v2, 3);
      v9 = v6;
      v10 = v5;
      v11 = 3;
    }

    else
    {
      if (v4 != 4)
      {
        if (v7 != 5 || (v5 | v6) != 0)
        {
          goto LABEL_29;
        }

        sub_254529CAC(*a1, v2, 5);
        v14 = 0;
        v15 = 0;
        v16 = 5;
        goto LABEL_41;
      }

      if (v7 != 4)
      {
        goto LABEL_29;
      }

      sub_254529CAC(*a1, v2, 4);
      v9 = v6;
      v10 = v5;
      v11 = 4;
    }

    sub_254529CAC(v9, v10, v11);
    if (v2)
    {
      if ((v5 & (*&v3 == *&v6)) == 0)
      {
        return 0;
      }
    }

    else if (v5 & 1 | (*&v3 != *&v6))
    {
      return 0;
    }

    return 1;
  }

  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {

      goto LABEL_29;
    }

    v17 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v19 = sub_25454C334();
      sub_254529C44(v6, v5, 0);
      sub_254529C44(v3, v2, 0);
      sub_254529CAC(v3, v2, 0);
      sub_254529CAC(v6, v5, 0);
      return v19 & 1;
    }

    sub_254529C44(v17, v2, 0);
    sub_254529C44(v3, v2, 0);
    sub_254529CAC(v3, v2, 0);
    v14 = v3;
    v15 = v2;
    v16 = 0;
LABEL_41:
    sub_254529CAC(v14, v15, v16);
    return 1;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      sub_254529CAC(*a1, v2, 1);
      sub_254529CAC(v6, v5, 1);
      result = 1;
      if (*&v3 == *&v6)
      {
        return result;
      }

      return 0;
    }

    goto LABEL_29;
  }

  if (v7 != 2)
  {
LABEL_29:
    sub_254529C44(v6, v5, v7);
    sub_254529CAC(v3, v2, v4);
    sub_254529CAC(v6, v5, v7);
    return 0;
  }

  sub_254529CAC(*a1, v2, 2);
  sub_254529CAC(v6, v5, 2);
  return v3 == v6 && v2 == v5;
}

unint64_t sub_254529710()
{
  result = qword_27F5FCFB0;
  if (!qword_27F5FCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFB0);
  }

  return result;
}

unint64_t sub_254529764()
{
  result = qword_27F5FCFB8;
  if (!qword_27F5FCFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFB8);
  }

  return result;
}

unint64_t sub_2545297B8()
{
  result = qword_27F5FCFC0;
  if (!qword_27F5FCFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFC0);
  }

  return result;
}

unint64_t sub_25452980C()
{
  result = qword_27F5FCFC8;
  if (!qword_27F5FCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFC8);
  }

  return result;
}

unint64_t sub_254529860()
{
  result = qword_27F5FCFD0;
  if (!qword_27F5FCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFD0);
  }

  return result;
}

unint64_t sub_2545298B4()
{
  result = qword_27F5FCFD8;
  if (!qword_27F5FCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFD8);
  }

  return result;
}

unint64_t sub_254529908()
{
  result = qword_27F5FCFF0;
  if (!qword_27F5FCFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFF0);
  }

  return result;
}

unint64_t sub_25452995C()
{
  result = qword_27F5FCFF8;
  if (!qword_27F5FCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FCFF8);
  }

  return result;
}

unint64_t sub_2545299B0()
{
  result = qword_27F5FD038;
  if (!qword_27F5FD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD038);
  }

  return result;
}

uint64_t sub_254529A04(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCFE0, &qword_2545516E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TextIcon.Configuration(uint64_t a1)
{
  result = qword_27F5FD0A8;
  if (!qword_27F5FD0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s7HomeUI28TextIconO13ConfigurationV2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for TextIcon.Configuration(0);
  if ((sub_2545490B4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5 + 8);
  v7 = *(a1 + v5 + 16);
  v20 = *(a1 + v5);
  v21 = v6;
  v22 = v7;
  v8 = a2 + v5;
  v9 = *(v8 + 1);
  v10 = v8[16];
  v17 = *v8;
  v18 = v9;
  v19 = v10;
  sub_254529C44(v20, v6, v7);
  sub_254529C44(v17, v9, v10);
  v11 = _s7HomeUI28TextIconO4KindO2eeoiySbAE_AEtFZ_0(&v20, &v17);
  sub_254529CAC(v17, v18, v19);
  sub_254529CAC(v20, v21, v22);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v4 + 28);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v13 == *v15 && v14 == v15[1])
  {
    return 1;
  }

  return sub_25454C334();
}

unint64_t sub_254529BF0()
{
  result = qword_27F5FD058;
  if (!qword_27F5FD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD058);
  }

  return result;
}

uint64_t sub_254529C44(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

unint64_t sub_254529C58()
{
  result = qword_27F5FD068;
  if (!qword_27F5FD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD068);
  }

  return result;
}

uint64_t sub_254529CAC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

unint64_t sub_254529CC0()
{
  result = qword_27F5FD088;
  if (!qword_27F5FD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD088);
  }

  return result;
}

uint64_t sub_254529D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextIcon.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254529D78(uint64_t a1)
{
  v2 = type metadata accessor for TextIcon.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_254529DD8()
{
  result = qword_27F5FD090;
  if (!qword_27F5FD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD090);
  }

  return result;
}

unint64_t sub_254529E30()
{
  result = qword_27F5FD098;
  if (!qword_27F5FD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD098);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextIcon.Unit(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextIcon.Unit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7HomeUI28TextIconO4KindO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_254529FC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25452A00C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25452A050(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25452A08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2545490D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25452A164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2545490D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25452A224(uint64_t a1)
{
  result = sub_2545490D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextIcon.Kind.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextIcon.Kind.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25452A4D0()
{
  result = qword_27F5FD0B8;
  if (!qword_27F5FD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0B8);
  }

  return result;
}

unint64_t sub_25452A528()
{
  result = qword_27F5FD0C0;
  if (!qword_27F5FD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0C0);
  }

  return result;
}

unint64_t sub_25452A580()
{
  result = qword_27F5FD0C8;
  if (!qword_27F5FD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0C8);
  }

  return result;
}

unint64_t sub_25452A5D8()
{
  result = qword_27F5FD0D0;
  if (!qword_27F5FD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0D0);
  }

  return result;
}

unint64_t sub_25452A630()
{
  result = qword_27F5FD0D8;
  if (!qword_27F5FD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0D8);
  }

  return result;
}

unint64_t sub_25452A688()
{
  result = qword_27F5FD0E0;
  if (!qword_27F5FD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0E0);
  }

  return result;
}

unint64_t sub_25452A6E0()
{
  result = qword_27F5FD0E8;
  if (!qword_27F5FD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0E8);
  }

  return result;
}

unint64_t sub_25452A738()
{
  result = qword_27F5FD0F0;
  if (!qword_27F5FD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0F0);
  }

  return result;
}

unint64_t sub_25452A790()
{
  result = qword_27F5FD0F8;
  if (!qword_27F5FD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD0F8);
  }

  return result;
}

unint64_t sub_25452A7E8()
{
  result = qword_27F5FD100;
  if (!qword_27F5FD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD100);
  }

  return result;
}

unint64_t sub_25452A840()
{
  result = qword_27F5FD108;
  if (!qword_27F5FD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD108);
  }

  return result;
}

unint64_t sub_25452A898()
{
  result = qword_27F5FD110;
  if (!qword_27F5FD110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD110);
  }

  return result;
}

unint64_t sub_25452A8F0()
{
  result = qword_27F5FD118;
  if (!qword_27F5FD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD118);
  }

  return result;
}

unint64_t sub_25452A948()
{
  result = qword_27F5FD120;
  if (!qword_27F5FD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD120);
  }

  return result;
}

unint64_t sub_25452A9A0()
{
  result = qword_27F5FD128;
  if (!qword_27F5FD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD128);
  }

  return result;
}

unint64_t sub_25452A9F8()
{
  result = qword_27F5FD130;
  if (!qword_27F5FD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD130);
  }

  return result;
}

unint64_t sub_25452AA50()
{
  result = qword_27F5FD138;
  if (!qword_27F5FD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD138);
  }

  return result;
}

unint64_t sub_25452AAA8()
{
  result = qword_27F5FD140;
  if (!qword_27F5FD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD140);
  }

  return result;
}

unint64_t sub_25452AB00()
{
  result = qword_27F5FD148;
  if (!qword_27F5FD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD148);
  }

  return result;
}

unint64_t sub_25452AB58()
{
  result = qword_27F5FD150;
  if (!qword_27F5FD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD150);
  }

  return result;
}

unint64_t sub_25452ABB0()
{
  result = qword_27F5FD158;
  if (!qword_27F5FD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD158);
  }

  return result;
}

unint64_t sub_25452AC08()
{
  result = qword_27F5FD160;
  if (!qword_27F5FD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD160);
  }

  return result;
}

unint64_t sub_25452AC60()
{
  result = qword_27F5FD168;
  if (!qword_27F5FD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD168);
  }

  return result;
}

unint64_t sub_25452ACB8()
{
  result = qword_27F5FD170;
  if (!qword_27F5FD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD170);
  }

  return result;
}

unint64_t sub_25452AD10()
{
  result = qword_27F5FD178;
  if (!qword_27F5FD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD178);
  }

  return result;
}

unint64_t sub_25452AD68()
{
  result = qword_27F5FD180;
  if (!qword_27F5FD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD180);
  }

  return result;
}

unint64_t sub_25452ADC0()
{
  result = qword_27F5FD188;
  if (!qword_27F5FD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD188);
  }

  return result;
}

unint64_t sub_25452AE18()
{
  result = qword_27F5FD190;
  if (!qword_27F5FD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD190);
  }

  return result;
}

unint64_t sub_25452AE70()
{
  result = qword_27F5FD198;
  if (!qword_27F5FD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD198);
  }

  return result;
}

unint64_t sub_25452AEC8()
{
  result = qword_27F5FD1A0;
  if (!qword_27F5FD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD1A0);
  }

  return result;
}

unint64_t sub_25452AF20()
{
  result = qword_27F5FD1A8;
  if (!qword_27F5FD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD1A8);
  }

  return result;
}

unint64_t sub_25452AF78()
{
  result = qword_27F5FD1B0;
  if (!qword_27F5FD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD1B0);
  }

  return result;
}

uint64_t sub_25452AFCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_25454C334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000 || (sub_25454C334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_25454C334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (sub_25454C334() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000254556C50 == a2 || (sub_25454C334() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567)
  {

    return 5;
  }

  else
  {
    v6 = sub_25454C334();

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

uint64_t sub_25452B1D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_25454C334() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEF676E6972745364 || (sub_25454C334() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_25454C334() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453656C706D6973 && a2 == 0xEC000000676E6972)
  {

    return 3;
  }

  else
  {
    v6 = sub_25454C334();

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

uint64_t sub_25452B340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25452B388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1B8, &qword_2545526D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25452B3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1B8, &qword_2545526D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25452B468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1C0, &qword_2545526E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NSUnitTemperature.FormatStyle.description.getter(char a1)
{
  if (a1)
  {
    return 0x72656874616577;
  }

  else
  {
    return 0x7265626D756ELL;
  }
}

uint64_t sub_25452B530()
{
  if (*v0)
  {
    return 0x72656874616577;
  }

  else
  {
    return 0x7265626D756ELL;
  }
}

uint64_t sub_25452B568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
  if (v6 || (sub_25454C334() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656874616577 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25454C334();

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

uint64_t sub_25452B640(uint64_t a1)
{
  v2 = sub_25452BA64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25452B67C(uint64_t a1)
{
  v2 = sub_25452BA64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25452B6B8(uint64_t a1)
{
  v2 = sub_25452BB0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25452B6F4(uint64_t a1)
{
  v2 = sub_25452BB0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25452B730(uint64_t a1)
{
  v2 = sub_25452BAB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25452B76C(uint64_t a1)
{
  v2 = sub_25452BAB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NSUnitTemperature.FormatStyle.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1E8, &qword_2545526F0);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1F0, &qword_2545526F8);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD1F8, &unk_254552700);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25452BA64();
  sub_25454C454();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_25452BAB8();
    sub_25454C294();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_25452BB0C();
    sub_25454C294();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_25452BA64()
{
  result = qword_27F5FD200;
  if (!qword_27F5FD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD200);
  }

  return result;
}

unint64_t sub_25452BAB8()
{
  result = qword_27F5FD208;
  if (!qword_27F5FD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD208);
  }

  return result;
}

unint64_t sub_25452BB0C()
{
  result = qword_27F5FD210;
  if (!qword_27F5FD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD210);
  }

  return result;
}

uint64_t NSUnitTemperature.FormatStyle.hashValue.getter(char a1)
{
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](a1 & 1);
  return sub_25454C434();
}

uint64_t sub_25452BBEC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_25452C7A4(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t NSUnitTemperature.numberFormatStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v19[2] = a1;
  v20 = sub_2545491D4();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2545491B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2545493C4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  sub_2545493A4();
  sub_254525884();
  sub_254549164();
  sub_2545491A4();
  MEMORY[0x259C0C250](v7, v9);
  (*(v5 + 8))(v7, v4);
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_25452CC60();
  v17 = [objc_opt_self() celsius];
  sub_25454C034();

  sub_2545491C4();
  MEMORY[0x259C0C270](v3, v9);
  (*(v1 + 8))(v3, v20);
  return (v16)(v15, v9);
}

uint64_t NSUnitTemperature.attributedStyle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  NSUnitTemperature.numberFormatStyle.getter(&v5 - v2);
  sub_254549144();
  return (*(v1 + 8))(v3, v0);
}

uint64_t NSUnitTemperature.temperatureFormatStyle.getter()
{
  v0 = sub_2545493C4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD220, &qword_254552710);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD228, &qword_254552718);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD230, &qword_254552720);
  MEMORY[0x28223BE20](v5 - 8);
  sub_25452CC60();
  sub_254549044();
  sub_254549184();
  NSUnitTemperature.numberFormatStyle.getter(v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  sub_2545493A4();
  return sub_254549054();
}

uint64_t NSUnitTemperature.temperatureAttributedStyle.getter()
{
  v0 = sub_2545493C4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD220, &qword_254552710);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD228, &qword_254552718);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD230, &qword_254552720);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD238, &qword_254552728);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  sub_25452CC60();
  sub_254549044();
  sub_254549184();
  NSUnitTemperature.numberFormatStyle.getter(v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  sub_2545493A4();
  sub_254549054();
  sub_254549034();
  return (*(v7 + 8))(v9, v6);
}

uint64_t static FormatStyle<>.temperature(_:style:)@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = sub_2545493C4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD220, &qword_254552710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD228, &qword_254552718);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD230, &qword_254552720);
  MEMORY[0x28223BE20](v9 - 8);
  if (a1)
  {
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD238, &qword_254552728);
    a2[4] = sub_2544AE1F0(&qword_27F5FD240, &qword_27F5FD238, &qword_254552728, MEMORY[0x277CC87C0]);
    __swift_allocate_boxed_opaque_existential_0(a2);
    sub_25452CC60();
    sub_254549044();
    sub_254549184();
    NSUnitTemperature.numberFormatStyle.getter(v7);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    sub_2545493A4();
    return sub_254549054();
  }

  else
  {
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF10, &qword_254551670);
    a2[4] = sub_2544AE1F0(&qword_27F5FCF20, &qword_27F5FCF10, &qword_254551670, MEMORY[0x277CC9168]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    return NSUnitTemperature.numberFormatStyle.getter(boxed_opaque_existential_0);
  }
}

uint64_t sub_25452C7A4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD288, &qword_254552AC0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD290, &qword_254552AC8);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD298, &unk_254552AD0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25452BA64();
  v11 = v26;
  sub_25454C444();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_25454C284();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_25452667C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_25454C184();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCF70, &qword_2545516A8);
    *v19 = &type metadata for NSUnitTemperature.FormatStyle;
    sub_25454C244();
    sub_25454C174();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_25452BAB8();
    sub_25454C234();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_25452BB0C();
    sub_25454C234();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v31 & 1;
}

unint64_t sub_25452CC60()
{
  result = qword_27F5FD218;
  if (!qword_27F5FD218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5FD218);
  }

  return result;
}

unint64_t sub_25452CCB0()
{
  result = qword_27F5FD248;
  if (!qword_27F5FD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD248);
  }

  return result;
}

unint64_t sub_25452CD50()
{
  result = qword_27F5FD250;
  if (!qword_27F5FD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD250);
  }

  return result;
}

unint64_t sub_25452CDA8()
{
  result = qword_27F5FD258;
  if (!qword_27F5FD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD258);
  }

  return result;
}

unint64_t sub_25452CE00()
{
  result = qword_27F5FD260;
  if (!qword_27F5FD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD260);
  }

  return result;
}

unint64_t sub_25452CE58()
{
  result = qword_27F5FD268;
  if (!qword_27F5FD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD268);
  }

  return result;
}

unint64_t sub_25452CEB0()
{
  result = qword_27F5FD270;
  if (!qword_27F5FD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD270);
  }

  return result;
}

unint64_t sub_25452CF08()
{
  result = qword_27F5FD278;
  if (!qword_27F5FD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD278);
  }

  return result;
}

unint64_t sub_25452CF60()
{
  result = qword_27F5FD280;
  if (!qword_27F5FD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD280);
  }

  return result;
}

uint64_t sub_25452CFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25452D234();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.roomContainerState.getter()
{
  sub_25452D078();

  return sub_25454AAA4();
}

unint64_t sub_25452D078()
{
  result = qword_27F5FD2A0;
  if (!qword_27F5FD2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD2A0);
  }

  return result;
}

uint64_t (*EnvironmentValues.roomContainerState.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_25452D078();
  sub_25454AAA4();
  return sub_25452D16C;
}

uint64_t RoomContainerState.hashValue.getter()
{
  v1 = *v0;
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](v1);
  return sub_25454C434();
}

unint64_t sub_25452D234()
{
  result = qword_27F5FD2A8;
  if (!qword_27F5FD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD2A8);
  }

  return result;
}

uint64_t sub_25452D288@<X0>(_BYTE *a1@<X8>)
{
  sub_25452D078();
  result = sub_25454AAA4();
  *a1 = v3;
  return result;
}

uint64_t sub_25452D344@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25454AA94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2544AE240(v2, &v14 - v9, &qword_27F5FBC50, &qword_25454F680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25454A584();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_25454BF84();
    v13 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t CloseButton.init(actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for CloseButton(0);
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t CloseButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_2545493C4();
  MEMORY[0x28223BE20](v1 - 8);
  v51 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25454BC64();
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2B0, &unk_254553660);
  v44 = *(v46 - 8);
  v5 = MEMORY[0x28223BE20](v46);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2B8, &qword_254552BF8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v43 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = type metadata accessor for CloseButton(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2C0, &qword_254552C00);
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2C8, &qword_254552C08);
  MEMORY[0x28223BE20](v49);
  v20 = &v41 - v19;
  v21 = sub_25454AB84();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_25452DF50(v45, &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v29 = swift_allocObject();
  sub_25452E0E0(&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v53 = v21;
  v54 = v23;
  v55 = v25 & 1;
  v56 = v27;
  v57 = 0x6B72616D78;
  v58 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2D0, &qword_254552C10);
  v30 = v44;
  sub_2544AE1F0(&qword_27F5FD2D8, &qword_27F5FD2D0, &qword_254552C10, MEMORY[0x277CDEFF0]);
  v31 = v46;
  v32 = v43;
  sub_25454B7F4();

  v59 = sub_25454B654();
  v61 = sub_25454B674();
  sub_254549804();
  (*(v30 + 56))(v12, 0, 1, v31);
  KeyPath = swift_getKeyPath();
  sub_2544AE240(v12, v32, &qword_27F5FD2B8, &qword_254552BF8);
  v34 = 0;
  if ((*(v30 + 48))(v32, 1, v31) != 1)
  {
    v35 = v42;
    (*(v30 + 32))(v42, v32, v31);
    (*(v30 + 16))(v41, v35, v31);
    sub_2544AE1F0(&qword_27F5FD300, &qword_27F5FD2B0, &unk_254553660, MEMORY[0x277D15978]);
    v34 = sub_25454A554();
    (*(v30 + 8))(v35, v31);
  }

  v37 = v47;
  v36 = v48;
  (*(v47 + 16))(v20, v18, v48);
  v38 = &v20[*(v49 + 36)];
  *v38 = KeyPath;
  v38[1] = v34;
  sub_2544AE150(v12, &qword_27F5FD2B8, &qword_254552BF8);
  (*(v37 + 8))(v18, v36);
  sub_25454BC54();
  sub_2545493B4();
  v59 = sub_25454BCA4();
  v60 = v39;
  sub_25452E2A4();
  sub_2544AECF0();
  sub_25454B424();

  return sub_2544AE150(v20, &qword_27F5FD2C8, &qword_254552C08);
}

double sub_25452DC9C(uint64_t a1)
{
  v2 = sub_25454A584();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27F5FACE8 != -1)
  {
    swift_once();
  }

  v6 = sub_25454A2E4();
  __swift_project_value_buffer(v6, qword_27F5FD428);
  v7 = sub_25454A2C4();
  v8 = sub_25454BF94();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2544A5000, v7, v8, "User tapped Close button", v9, 2u);
    MEMORY[0x259C0FDF0](v9, -1, -1);
  }

  v10 = (a1 + *(type metadata accessor for CloseButton(0) + 20));
  if (*v10)
  {
    (*v10)();
  }

  sub_25452D344(v5);
  sub_25454A574();
  (*(v3 + 8))(v5, v2);

  return result;
}

uint64_t type metadata accessor for CloseButton(uint64_t a1)
{
  result = qword_27F5FD308;
  if (!qword_27F5FD308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25452DF50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25452DFB4()
{
  v1 = type metadata accessor for CloseButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBC50, &qword_25454F680);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25454A584();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  if (*(v0 + v3 + *(v1 + 20)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25452E0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_25452E144()
{
  v1 = *(type metadata accessor for CloseButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25452DC9C(v2);
}

uint64_t sub_25452E1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x282130010](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_25452E24C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C0DAA0]();
  *a1 = result;
  return result;
}

unint64_t sub_25452E2A4()
{
  result = qword_27F5FD2E0;
  if (!qword_27F5FD2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD2C8, &qword_254552C08);
    sub_2544AE1F0(&qword_27F5FD2E8, &qword_27F5FD2C0, &qword_254552C00, MEMORY[0x277CDF028]);
    sub_2544AE1F0(&qword_27F5FD2F0, &qword_27F5FD2F8, &qword_254552C48, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD2E0);
  }

  return result;
}

uint64_t sub_25452E3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB68, &qword_25454F588);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25452E4A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBB68, &qword_25454F588);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_25452E564(uint64_t a1)
{
  sub_25452E5E8(319);
  if (v1 <= 0x3F)
  {
    sub_25452E640(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25452E5E8(uint64_t a1)
{
  if (!qword_27F5FBB90)
  {
    sub_25454A584();
    v1 = sub_25454A464();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5FBB90);
    }
  }
}

void sub_25452E640(uint64_t a1)
{
  if (!qword_27F5FBD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FBD80, &qword_25454F7F8);
    v1 = sub_25454C054();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5FBD78);
    }
  }
}

unint64_t sub_25452E6A8()
{
  result = qword_27F5FD318;
  if (!qword_27F5FD318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD320, &qword_254552CB8);
    sub_25452E2A4();
    sub_2544DB604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD318);
  }

  return result;
}

uint64_t TileInfoBearer.resolvedForegroundColor.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_2545498F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  (*(v10 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  if (swift_dynamicCast())
  {
    (*(v5 + 8))(v8, v4);
    if (sub_2545498B4())
    {
      return sub_2545498D4();
    }
  }

  else if (sub_2545498C4())
  {
    return sub_2545498D4();
  }

  return sub_25454B674();
}

uint64_t sub_25452E93C(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return sub_25454B5F4();
}

double Font.lineHeight(in:)()
{
  v0 = sub_25454AF84();
  [v0 lineHeight];
  v2 = v1;

  return v2;
}

uint64_t sub_25452E9CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25454AA94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A0, &qword_25454E640);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25452F644(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25454B0E4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_25454BF84();
    v13 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_25452EBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v24 = a2;
  v2 = sub_25454B0E4();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD340, &qword_254552D80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD348, &qword_254552D88);
  v10 = *(v9 - 8);
  v20 = v9;
  v21 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  type metadata accessor for CenteringBaselineOffsetModifier(0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD350, &unk_254552D90);
  v14 = sub_25452F5E0();
  sub_25454B404();
  v25 = v13;
  v26 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_25454B414();
  (*(v6 + 8))(v8, v5);
  sub_25452E9CC(v4);
  v16 = sub_25454AF84();
  [v16 lineHeight];

  (*(v22 + 8))(v4, v23);
  v25 = v5;
  v26 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  sub_25454B364();
  return (*(v21 + 8))(v12, v17);
}

uint64_t View.lineHeight(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v10 = a1;
  v11 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v6 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v8 = &v10 - v7;
  sub_25454B404();
  v10 = a1;
  v11 = a2;
  swift_getOpaqueTypeConformance2();
  sub_25454B414();
  return (*(v6 + 8))(v8, OpaqueTypeMetadata2);
}

uint64_t View.centeringBaselineOffset(lineHeight:with:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for CenteringBaselineOffsetModifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A0, &qword_25454E640);
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v8 + 20)) = a4;
  *(v10 + *(v8 + 24)) = a1;

  MEMORY[0x259C0E660](v10, a2, v8, a3);
  return sub_25452F17C(v10);
}

uint64_t type metadata accessor for CenteringBaselineOffsetModifier(uint64_t a1)
{
  result = qword_27F5FD330;
  if (!qword_27F5FD330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25452F17C(uint64_t a1)
{
  v2 = type metadata accessor for CenteringBaselineOffsetModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25452F1D8(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25452F270(uint64_t *a1)
{
  type metadata accessor for CenteringBaselineOffsetModifier(255);
  sub_25454A714();
  sub_25452F2DC();
  return swift_getWitnessTable();
}

unint64_t sub_25452F2DC()
{
  result = qword_27F5FD328;
  if (!qword_27F5FD328)
  {
    type metadata accessor for CenteringBaselineOffsetModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD328);
  }

  return result;
}

uint64_t sub_25452F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB610, &unk_254552D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25452F424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB610, &unk_254552D00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_25452F4E8(uint64_t a1)
{
  sub_25452F56C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25452F56C(uint64_t a1)
{
  if (!qword_27F5FB640)
  {
    sub_25454B0E4();
    v1 = sub_25454A464();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5FB640);
    }
  }
}

unint64_t sub_25452F5E0()
{
  result = qword_27F5FD358;
  if (!qword_27F5FD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD350, &unk_254552D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD358);
  }

  return result;
}

uint64_t sub_25452F644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A0, &qword_25454E640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25452F6B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD348, &qword_254552D88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD340, &qword_254552D80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD350, &unk_254552D90);
  sub_25452F5E0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void *sub_25452F798()
{
  type metadata accessor for InterfacePerformanceSignposter();
  v0 = swift_allocObject();
  result = sub_2544D7BF8(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_27F5FD360 = v0;
  return result;
}

uint64_t static InterfacePerformanceSignposter.shared.getter()
{
  if (qword_27F5FACA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25452F83C()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FD368);
  __swift_project_value_buffer(v0, qword_27F5FD368);
  return sub_25454A2D4();
}

uint64_t sub_25452F900()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FD380);
  __swift_project_value_buffer(v0, qword_27F5FD380);
  return sub_25454A2D4();
}

uint64_t sub_25452FA50(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_25454A2E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25454A244();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return sub_25454A224();
}

uint64_t sub_25452FBBC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

double sub_25452FC60(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_25454A214();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = *a1;
  if (a2)
  {
    if (qword_27F5FACC8 != -1)
    {
      swift_once();
    }

    v17 = sub_25454A244();
    __swift_project_value_buffer(v17, qword_27F5FD3B0);
    v18 = off_27977CB00[v16];
    sub_25454A204();
    v19 = sub_25454A234();
    v20 = sub_25454BFD4();
    if ((sub_25454C044() & 1) == 0)
    {
      v10 = v15;
      goto LABEL_12;
    }

    v31 = v6;
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_25454A1F4();
    _os_signpost_emit_with_name_impl(&dword_2544A5000, v19, v20, v22, v18, "", v21, 2u);
    v10 = v15;
    goto LABEL_10;
  }

  if (qword_27F5FACC0 != -1)
  {
    swift_once();
  }

  v23 = sub_25454A244();
  __swift_project_value_buffer(v23, qword_27F5FD398);
  v24 = off_27977CB00[v16];
  sub_25454A204();
  v19 = sub_25454A234();
  v25 = sub_25454BFD4();
  if (sub_25454C044())
  {
    v31 = v6;
    v21 = swift_slowAlloc();
    *v21 = 0;
    v26 = sub_25454A1F4();
    _os_signpost_emit_with_name_impl(&dword_2544A5000, v19, v25, v26, v24, "", v21, 2u);
LABEL_10:
    MEMORY[0x259C0FDF0](v21, -1, -1);
    v6 = v31;
  }

LABEL_12:

  (*(v7 + 16))(v13, v10, v6);
  sub_25454A284();
  swift_allocObject();
  v27 = sub_25454A274();
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_254531684(v27, v16, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v32;
  swift_endAccess();

  return result;
}

const char *InterfacePerformanceSignposter.SignpostType.name.getter()
{
  v1 = *v0;
  v2 = "openClimateCategoryFilter";
  v3 = "launchLivestreamFromHomeFace";
  if (v1 != 5)
  {
    v3 = "launchRoomViewFromHomeFace";
  }

  v4 = "launchHomeAppDashboard";
  if (v1 != 3)
  {
    v4 = "launchHomeAppFromHomeFace";
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = "launchCameraLiveActivityView";
  if (v1 != 1)
  {
    v5 = "launchHomeApp";
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

void sub_254530088(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      sub_25452FC60(&v6, a2 & 1);
      --v2;
    }

    while (v2);
  }
}

double sub_2545300E0(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_25454A254();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v64 - v10;
  v12 = sub_25454A214();
  v68 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v64 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v64 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v64 - v22;
  v24 = *a1;
  if (a2)
  {
    v67 = v24;
    if (qword_27F5FACB8 != -1)
    {
      swift_once();
    }

    v25 = sub_25454A2E4();
    __swift_project_value_buffer(v25, qword_27F5FD380);
    v26 = sub_25454A2C4();
    v27 = sub_25454BF64();
    v28 = os_log_type_enabled(v26, v27);
    v64[1] = v3;
    if (v28)
    {
      v64[0] = v12;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v69[0] = v30;
      *v29 = 136315138;
      v31 = sub_25454C164();
      v33 = sub_254502AAC(v31, v32, v69);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_2544A5000, v26, v27, "Ending x-process signpost: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x259C0FDF0](v30, -1, -1);
      MEMORY[0x259C0FDF0](v29, -1, -1);

      v12 = v64[0];
    }

    else
    {
    }

    v46 = v67;
    sub_25454A204();
    v47 = v68;
    (*(v68 + 16))(v21, v23, v12);
    sub_25454A284();
    swift_allocObject();
    sub_25454A274();
    v50 = *(v47 + 8);
    v49 = v47 + 8;
    v48 = v50;
    v50(v23, v12);
    if (qword_27F5FACC8 != -1)
    {
      swift_once();
    }

    v51 = sub_25454A244();
    __swift_project_value_buffer(v51, qword_27F5FD3B0);
    v52 = off_27977CB00[v46];
    v53 = sub_25454A234();
    sub_25454A264();
    v54 = sub_25454BFC4();
    if (sub_25454C044())
    {
      v68 = v49;

      sub_25454A294();

      v56 = v65;
      v55 = v66;
      if ((*(v65 + 88))(v11, v66) == *MEMORY[0x277D85B00])
      {
        v57 = v12;
        v58 = "[Error] Interval already ended";
      }

      else
      {
        v59 = v56;
        v57 = v12;
        (*(v59 + 8))(v11, v55);
        v58 = "";
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = sub_25454A1F4();
      _os_signpost_emit_with_name_impl(&dword_2544A5000, v53, v54, v61, v52, v58, v60, 2u);
      MEMORY[0x259C0FDF0](v60, -1, -1);
      v12 = v57;
    }

    v48(v18, v12);
    swift_beginAccess();
    sub_254530ADC(v67);
LABEL_25:
    swift_endAccess();

    return result;
  }

  swift_beginAccess();
  if (*(*(v3 + 16) + 16))
  {
    sub_2544DA9C0(v24);
    if (v35)
    {
      v36 = v12;
      v37 = qword_27F5FACC0;

      if (v37 != -1)
      {
        swift_once();
      }

      v38 = sub_25454A244();
      __swift_project_value_buffer(v38, qword_27F5FD398);
      v67 = v24;
      v39 = off_27977CB00[v24];
      v40 = sub_25454A234();
      sub_25454A264();
      v41 = sub_25454BFC4();
      v42 = v36;
      if (sub_25454C044())
      {

        sub_25454A294();

        v44 = v65;
        v43 = v66;
        if ((*(v65 + 88))(v9, v66) == *MEMORY[0x277D85B00])
        {
          v45 = "[Error] Interval already ended";
        }

        else
        {
          (*(v44 + 8))(v9, v43);
          v45 = "";
        }

        v62 = swift_slowAlloc();
        *v62 = 0;
        v63 = sub_25454A1F4();
        _os_signpost_emit_with_name_impl(&dword_2544A5000, v40, v41, v63, v39, v45, v62, 2u);
        MEMORY[0x259C0FDF0](v62, -1, -1);
        v42 = v36;
      }

      (*(v68 + 8))(v15, v42);
      swift_beginAccess();
      sub_254530ADC(v67);
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t InterfacePerformanceSignposter.SignpostType.hashValue.getter()
{
  v1 = *v0;
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](v1);
  return sub_25454C434();
}

uint64_t InterfacePerformanceSignposter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_254530954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2544DA750(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2544D4FB0();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_254549394();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = _s12RegistrationVMa(0);
    v20 = *(v13 - 8);
    sub_2544D76F8(v12 + *(v20 + 72) * v7, a2);
    sub_254530D14(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = _s12RegistrationVMa(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_254530ADC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2544DA9C0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2544D561C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_254531014(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_254530B64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25454C104() + 1) & ~v5;
    do
    {
      sub_25454C3E4();

      sub_25454BD14();
      v9 = sub_25454C434();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_254530D14(int64_t a1, uint64_t a2)
{
  v4 = sub_254549394();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_25454C104();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_254531B60();
      v21 = sub_25454BBE4();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(_s12RegistrationVMa(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_254531014(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25454C104() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_25454C3E4();
      MEMORY[0x259C0F4F0](v9);
      result = sub_25454C434();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2545311A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2544DA948(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2544D3BD8(v16, a4 & 1);
      v11 = sub_2544DA948(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_25454C354();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2544D4CD4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_254531320(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2544DA948(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2544D3E7C(v16, a4 & 1);
      v11 = sub_2544DA948(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_25454C354();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_2544D4E40();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_25453149C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_254549394();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2544DA750(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2544D4FB0();
      goto LABEL_7;
    }

    sub_2544D4124(v17, a3 & 1);
    v24 = sub_2544DA750(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_254531A20(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25454C354();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(_s12RegistrationVMa(0) - 8) + 72) * v14;

  return sub_254531AFC(a1, v22);
}

void sub_254531684(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2544DA9C0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2544D4A44(v14, a3 & 1);
      v9 = sub_2544DA9C0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_25454C354();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_2544D561C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t sub_2545317D4()
{
  result = qword_27F5FD3C8;
  if (!qword_27F5FD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD3C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InterfacePerformanceSignposter.SignpostType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InterfacePerformanceSignposter.SignpostType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_254531A20(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_254549394();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = _s12RegistrationVMa(0);
  result = sub_2544D76F8(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_254531AFC(uint64_t a1, uint64_t a2)
{
  v4 = _s12RegistrationVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_254531B60()
{
  result = qword_27F5FB028;
  if (!qword_27F5FB028)
  {
    sub_254549394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB028);
  }

  return result;
}

id sub_254531C08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver, &protocol conformance descriptor for LocaleUpdateObserver);
  sub_2545494C4();

  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

id sub_254531D00()
{
  swift_getKeyPath();
  sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver, &protocol conformance descriptor for LocaleUpdateObserver);
  sub_2545494C4();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for LocaleUpdateObserver(uint64_t a1)
{
  result = qword_27F5FD400;
  if (!qword_27F5FD400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_254531E40(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  sub_25452CC60();
  v5 = v4;
  v6 = sub_25454C034();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver, &protocol conformance descriptor for LocaleUpdateObserver);
    sub_2545494B4();
  }
}

void sub_254531F90(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
  v5 = a2;
}

uint64_t (*sub_25453200C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC7HomeUI220LocaleUpdateObserver___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver, &protocol conformance descriptor for LocaleUpdateObserver);
  sub_2545494C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_2545494E4();

  v4[7] = sub_254531BB8(v4);
  return sub_254532144;
}

void sub_254532144(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2545494D4();

  free(v1);
}

uint64_t sub_2545321D8()
{
  swift_getKeyPath();
  sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver, &protocol conformance descriptor for LocaleUpdateObserver);
  sub_2545494C4();
}

uint64_t sub_25453227C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver, &protocol conformance descriptor for LocaleUpdateObserver);
  sub_2545494C4();

  *a2 = *(v3 + 24);
}

double sub_254532328(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver, &protocol conformance descriptor for LocaleUpdateObserver);
    sub_2545494B4();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_25454BE94();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 24) = a1;

  return result;
}

uint64_t sub_2545324B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  *(v0 + 16) = sub_254549C34();
  *(v0 + 24) = 0;
  sub_2545494F4();
  v5 = sub_25454BE44();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_25454BE14();

  v7 = sub_25454BE04();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;

  v10 = sub_2544B5138(0, 0, v4, &unk_254552F50, v8);
  sub_254532328(v10);
  return v1;
}

uint64_t sub_25453262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD228, &qword_254552718);
  v4[18] = swift_task_alloc();
  sub_2545493C4();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF40, &qword_254552F60);
  v4[20] = swift_task_alloc();
  v5 = sub_25454BFF4();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = sub_25454BE14();
  v4[25] = sub_25454BE04();
  v7 = sub_25454BDB4();
  v4[26] = v7;
  v4[27] = v6;

  return MEMORY[0x2822009F8](sub_2545327C0, v7, v6);
}

uint64_t sub_2545327C0()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_25454C004();

  sub_25454BFE4();
  swift_beginAccess();
  swift_beginAccess();
  v0[28] = sub_25454BE04();
  v2 = sub_2545337CC(&qword_27F5FAF48, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_254532928;
  v4 = v0[20];
  v5 = v0[21];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t sub_254532928()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_25454BDB4();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_25453301C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_25454BDB4();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_254532AC0;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_254532AC0()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_254532B24, v1, v2);
}

uint64_t sub_254532B24()
{
  v1 = v0[20];
  v2 = sub_254549084();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_25452CC60();
      sub_2545493A4();
      sub_254549194();
      v7 = sub_25454BFB4();
      swift_beginAccess();
      v8 = *(v6 + 16);
      v9 = sub_25454C034();

      if (v9)
      {
        v10 = *(v6 + 16);
        *(v6 + 16) = v7;
      }

      else
      {
        swift_getKeyPath();
        v11 = swift_task_alloc();
        *(v11 + 16) = v6;
        *(v11 + 24) = v7;
        v0[15] = v6;
        sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver, &protocol conformance descriptor for LocaleUpdateObserver);
        sub_2545494B4();
      }
    }

    if (qword_27F5FACD8 != -1)
    {
      swift_once();
    }

    v12 = sub_25454A2E4();
    __swift_project_value_buffer(v12, qword_27F5FD3D8);

    v13 = sub_25454A2C4();
    v14 = sub_25454BF94();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = swift_weakLoadStrong();
      if (v17)
      {
        v18 = v17;
        swift_getKeyPath();
        v0[16] = v18;
        sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver, &protocol conformance descriptor for LocaleUpdateObserver);
        sub_2545494C4();

        swift_beginAccess();
        v19 = *(v18 + 16);

        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v15 + 4) = v19;
      *v16 = v20;
      _os_log_impl(&dword_2544A5000, v13, v14, "Receiving NSLocale change. Drawing temperature UI with locale value: %@", v15, 0xCu);
      sub_2544AE150(v16, &qword_27F5FC420, &qword_25454FFB0);
      MEMORY[0x259C0FDF0](v16, -1, -1);
      MEMORY[0x259C0FDF0](v15, -1, -1);
    }

    v21 = v0[20];

    sub_2544AE150(v21, &qword_27F5FAF40, &qword_254552F60);
    v0[28] = sub_25454BE04();
    v22 = sub_2545337CC(&qword_27F5FAF48, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
    v23 = swift_task_alloc();
    v0[29] = v23;
    *v23 = v0;
    v23[1] = sub_254532928;
    v24 = v0[20];
    v25 = v0[21];

    return MEMORY[0x282200308](v24, v25, v22);
  }
}

uint64_t sub_25453301C()
{
  *(v0 + 112) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF50, &qword_25454D5C0);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t LocaleUpdateObserver.deinit()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC7HomeUI220LocaleUpdateObserver___observationRegistrar;
  sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver, &protocol conformance descriptor for LocaleUpdateObserver);
  sub_2545494C4();

  if (*(v0 + 24))
  {

    sub_25454BEA4();
  }

  v2 = sub_254549504();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t _s7HomeUI220LocaleUpdateObserverCfZ(uint64_t a1)
{
  LocaleUpdateObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t LocaleUpdateObserver.__deallocating_deinit()
{
  sub_25454BE14();
  sub_25454BE04();
  v1 = sub_25454BDB4();
  v3 = v2;

  return MEMORY[0x2822009B0](v0, _s7HomeUI220LocaleUpdateObserverCfZ, v1, v3, 0);
}

uint64_t sub_254533364()
{
  type metadata accessor for LocaleUpdateObserver(0);
  v0 = swift_allocObject();
  result = sub_2545324B0();
  qword_27F5FD3D0 = v0;
  return result;
}

uint64_t static LocaleUpdateObserver.shared.getter()
{
  if (qword_27F5FACD0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_254533400()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FD3D8);
  __swift_project_value_buffer(v0, qword_27F5FD3D8);
  return sub_25454A2D4();
}

uint64_t static LocaleUpdateObserver.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F5FACD8 != -1)
  {
    swift_once();
  }

  v2 = sub_25454A2E4();
  v3 = __swift_project_value_buffer(v2, qword_27F5FD3D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_254533538(uint64_t a1)
{
  result = sub_254549504();
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

void sub_254533664()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_2545336A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2545336D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254533718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2544AE3EC;

  return sub_25453262C(a1, v4, v5, v6);
}

uint64_t sub_2545337CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_254533870()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FD428);
  __swift_project_value_buffer(v0, qword_27F5FD428);
  return sub_25454A2D4();
}

uint64_t sub_254533944(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_25454A2E4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_25454A2D4();
}

uint64_t sub_2545339EC()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FD458);
  __swift_project_value_buffer(v0, qword_27F5FD458);
  return sub_25454A2D4();
}

uint64_t sub_254533A98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_25454A2E4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

HomeUI2::PlatformOS_optional __swiftcall PlatformOS.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25454C224();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PlatformOS.rawValue.getter()
{
  v1 = *v0;
  v2 = 5459817;
  v3 = 0x534F63616DLL;
  v4 = 0x534F726568746FLL;
  if (v1 != 3)
  {
    v4 = 1397716596;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x534F64615069;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_254533C1C()
{
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

uint64_t sub_254533CE8(uint64_t a1)
{
  sub_25454BD14();
}

uint64_t sub_254533DA0(uint64_t a1)
{
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

void sub_254533E74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE500000000000000;
  v6 = 0x534F63616DLL;
  v7 = 0xE700000000000000;
  v8 = 0x534F726568746FLL;
  if (v2 != 3)
  {
    v8 = 1397716596;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x534F64615069;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_254533F08()
{
  result = qword_27F5FD470;
  if (!qword_27F5FD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD470);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatformOS(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PlatformOS(uint64_t result, unsigned int a2, unsigned int a3)
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