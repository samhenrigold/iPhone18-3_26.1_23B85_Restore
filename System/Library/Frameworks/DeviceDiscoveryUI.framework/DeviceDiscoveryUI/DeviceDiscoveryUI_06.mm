uint64_t sub_2380F7494@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v107 = a4;
  v108 = a5;
  v105 = a3;
  v106 = a6;
  v6 = sub_238153D7C();
  MEMORY[0x28223BE20](v6 - 8);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC928, &qword_23815C900);
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v99 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC930, &qword_23815C908);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v112 = &v99 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC938, &qword_23815C910) - 8;
  v11 = MEMORY[0x28223BE20](v114);
  v116 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v99 - v14;
  MEMORY[0x28223BE20](v13);
  v117 = &v99 - v16;
  sub_238153D6C();
  sub_238153D5C();
  sub_238153D4C();
  sub_238153D5C();
  sub_238153D9C();
  v17 = sub_23815436C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  KeyPath = swift_getKeyPath();
  v25 = sub_23815416C();
  v26 = swift_getKeyPath();
  LOBYTE(v129) = v21 & 1;
  *&v135 = v17;
  *(&v135 + 1) = v19;
  LOBYTE(v136) = v21 & 1;
  *(&v136 + 1) = v23;
  *&v137 = KeyPath;
  BYTE8(v137) = 0;
  *&v138 = v26;
  *(&v138 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC940, &qword_23815C978);
  sub_2380F9B10();
  v27 = v111;
  sub_23815457C();
  v199[0] = v135;
  v199[1] = v136;
  v199[2] = v137;
  v199[3] = v138;
  sub_238071284(v199, &qword_27DEEC940, &qword_23815C978);
  sub_2381548EC();
  sub_238153A8C();
  v28 = v112;
  (*(v113 + 32))(v112, v27, v115);
  v29 = (v28 + *(v9 + 44));
  v30 = v190;
  v29[4] = v189;
  v29[5] = v30;
  v29[6] = v191;
  v31 = v186;
  *v29 = v185;
  v29[1] = v31;
  v32 = v188;
  v29[2] = v187;
  v29[3] = v32;
  LOBYTE(v17) = sub_23815410C();
  sub_23815377C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_23807121C(v28, v15, &qword_27DEEC930, &qword_23815C908);
  v41 = &v15[*(v114 + 44)];
  *v41 = v17;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_23807121C(v15, v117, &qword_27DEEC938, &qword_23815C910);
  *&v135 = sub_23807CB28(103);
  *(&v135 + 1) = v42;
  sub_2380704A0();
  v43 = MEMORY[0x277D837D0];
  v44 = sub_23815438C();
  v113 = v45;
  v114 = v44;
  LOBYTE(v17) = v46;
  v115 = v47;
  v111 = swift_getKeyPath();
  v112 = sub_2381542CC();
  v110 = swift_getKeyPath();
  v109 = v17 & 1;
  v184 = v17 & 1;
  sub_2381548EC();
  sub_238153A8C();
  v48 = sub_238154C8C();
  v49 = sub_238154C8C();
  v50 = DDUILocalizedString();

  sub_238154CCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_238158810;
  v53 = (*(v105 + 80) + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
  v54 = v53[1];
  if (v54)
  {
    v55 = *v53;
    sub_2380F9130(0, v51);

    v56 = sub_2380F3278(v55, v54);
    if (v56)
    {
      v58 = v56;
      v59 = [v56 localizedName];
      v54 = sub_238154CCC();
      v57 = v60;
    }

    else
    {
      v54 = 0;
      v57 = 0xE000000000000000;
    }

    v43 = MEMORY[0x277D837D0];
  }

  else
  {
    v57 = 0xE000000000000000;
  }

  *(v52 + 56) = v43;
  v61 = sub_2380F1440();
  *(v52 + 32) = v54;
  *(v52 + 40) = v57;
  *(v52 + 96) = v43;
  *(v52 + 104) = v61;
  v62 = v107;
  *(v52 + 64) = v61;
  *(v52 + 72) = v62;
  *(v52 + 80) = v108;

  v63 = sub_238154C9C();
  v65 = v64;

  *&v135 = v63;
  *(&v135 + 1) = v65;
  v66 = sub_23815438C();
  v101 = v67;
  v102 = v66;
  v68 = v67;
  LOBYTE(v63) = v69;
  v108 = v70;
  v105 = swift_getKeyPath();
  v107 = sub_23815419C();
  v104 = swift_getKeyPath();
  v71 = v63 & 1;
  v171 = v63 & 1;
  v72 = sub_23815463C();
  v73 = swift_getKeyPath();
  v100 = v73;
  v103 = sub_23815411C();
  v172 = 1;
  sub_2381548EC();
  sub_238153A8C();
  *&v174[55] = v195;
  *&v174[71] = v196;
  *&v174[87] = v197;
  *&v174[103] = v198;
  *&v174[7] = v192;
  *&v174[23] = v193;
  *&v174[39] = v194;
  v74 = v116;
  sub_2380712E4(v117, v116, &qword_27DEEC938, &qword_23815C910);
  v75 = v74;
  v76 = v106;
  sub_2380712E4(v75, v106, &qword_27DEEC938, &qword_23815C910);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC950, &qword_23815C9B0);
  v78 = (v76 + *(v77 + 48));
  *&v118 = v114;
  *(&v118 + 1) = v113;
  LOBYTE(v119) = v109;
  *(&v119 + 1) = *v183;
  DWORD1(v119) = *&v183[3];
  *(&v119 + 1) = v115;
  *&v120 = v111;
  BYTE8(v120) = 0;
  *(&v120 + 9) = *v182;
  HIDWORD(v120) = *&v182[3];
  *&v121 = v110;
  *(&v121 + 1) = v112;
  v122 = v175;
  v123 = v176;
  v127 = v180;
  v128 = v181;
  v126 = v179;
  v124 = v177;
  v125 = v178;
  v79 = v119;
  *v78 = v118;
  v78[1] = v79;
  v80 = v120;
  v81 = v121;
  v82 = v123;
  v78[4] = v122;
  v78[5] = v82;
  v78[2] = v80;
  v78[3] = v81;
  v83 = v124;
  v84 = v125;
  v85 = v128;
  v78[9] = v127;
  v78[10] = v85;
  v86 = v126;
  v78[7] = v84;
  v78[8] = v86;
  v78[6] = v83;
  v87 = (v76 + *(v77 + 64));
  *&v129 = v66;
  *(&v129 + 1) = v68;
  LOBYTE(v130) = v71;
  *(&v130 + 1) = *v170;
  DWORD1(v130) = *&v170[3];
  v89 = v104;
  v88 = v105;
  *(&v130 + 1) = v108;
  *&v131 = v105;
  BYTE8(v131) = 0;
  *(&v131 + 9) = *v169;
  HIDWORD(v131) = *&v169[3];
  *&v132 = v104;
  *(&v132 + 1) = v107;
  *&v133 = v73;
  *(&v133 + 1) = v72;
  v90 = v103;
  LOBYTE(v134[0]) = v103;
  *(v134 + 1) = *v173;
  DWORD1(v134[0]) = *&v173[3];
  *(&v134[1] + 8) = 0u;
  *(v134 + 8) = 0u;
  BYTE8(v134[2]) = 1;
  *(&v134[6] + 9) = *&v174[64];
  *(&v134[7] + 9) = *&v174[80];
  *(&v134[8] + 9) = *&v174[96];
  *(&v134[9] + 1) = *&v174[111];
  *(&v134[2] + 9) = *v174;
  *(&v134[3] + 9) = *&v174[16];
  *(&v134[4] + 9) = *&v174[32];
  *(&v134[5] + 9) = *&v174[48];
  v91 = v130;
  *v87 = v129;
  v87[1] = v91;
  v92 = v132;
  v87[2] = v131;
  v87[3] = v92;
  v93 = v134[0];
  v87[4] = v133;
  v87[5] = v93;
  v94 = v134[4];
  v87[8] = v134[3];
  v87[9] = v94;
  v95 = v134[2];
  v87[6] = v134[1];
  v87[7] = v95;
  v96 = v134[9];
  v87[13] = v134[8];
  v87[14] = v96;
  v97 = v134[7];
  v87[11] = v134[6];
  v87[12] = v97;
  v87[10] = v134[5];
  sub_2380712E4(&v118, &v135, &qword_27DEEC958, &qword_23815C9B8);
  sub_2380712E4(&v129, &v135, &qword_27DEEC960, &qword_23815C9C0);
  sub_238071284(v117, &qword_27DEEC938, &qword_23815C910);
  v143 = 0u;
  v144 = 0u;
  v150 = *&v174[64];
  v151 = *&v174[80];
  *v152 = *&v174[96];
  v146 = *v174;
  v147 = *&v174[16];
  v148 = *&v174[32];
  *&v135 = v102;
  *(&v135 + 1) = v101;
  LOBYTE(v136) = v71;
  *(&v136 + 1) = *v170;
  DWORD1(v136) = *&v170[3];
  *(&v136 + 1) = v108;
  *&v137 = v88;
  BYTE8(v137) = 0;
  *(&v137 + 9) = *v169;
  HIDWORD(v137) = *&v169[3];
  *&v138 = v89;
  *(&v138 + 1) = v107;
  v139 = v100;
  v140 = v72;
  v141 = v90;
  *v142 = *v173;
  *&v142[3] = *&v173[3];
  v145 = 1;
  *&v152[15] = *&v174[111];
  v149 = *&v174[48];
  sub_238071284(&v135, &qword_27DEEC960, &qword_23815C9C0);
  v153[0] = v114;
  v153[1] = v113;
  v154 = v109;
  *v155 = *v183;
  *&v155[3] = *&v183[3];
  v156 = v115;
  v157 = v111;
  v158 = 0;
  *v159 = *v182;
  *&v159[3] = *&v182[3];
  v160 = v110;
  v161 = v112;
  v166 = v179;
  v167 = v180;
  v168 = v181;
  v162 = v175;
  v163 = v176;
  v164 = v177;
  v165 = v178;
  sub_238071284(v153, &qword_27DEEC958, &qword_23815C9B8);
  return sub_238071284(v116, &qword_27DEEC938, &qword_23815C910);
}

uint64_t sub_2380F804C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8B0, &qword_23815C868);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8B8, &qword_23815C870);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v30 - v9;
  *a2 = sub_238153DEC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v30[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8C0, &unk_23815C878) + 44);
  v11 = *(a1 + 80);
  v12 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
  swift_beginAccess();
  v13 = *(*(v11 + v12) + 16);
  v34[11] = 0;
  v34[12] = v13;
  v30[0] = swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = *(a1 + 80);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  sub_2380F8DF4(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF00, &qword_238158FE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8C8, &qword_23815C8A8);
  sub_238087E84();
  sub_2380711D4(&qword_27DEEC8D0, &qword_27DEEC8C8, &qword_23815C8A8, MEMORY[0x277CE14C0]);
  sub_23815480C();
  v17 = sub_2380F9A50();
  sub_2381544BC();
  (*(v31 + 8))(v6, v4);
  v34[0] = v4;
  v34[1] = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v32;
  sub_23815443C();
  (*(v33 + 8))(v10, v18);
  LODWORD(v6) = sub_238153EFC();
  LOBYTE(v18) = sub_2381540FC();
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC880, &qword_23815C848) + 36);
  *v19 = v6;
  *(v19 + 4) = v18;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC868, &qword_23815C840) + 36));
  v21 = *(sub_238153A7C() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_238153DDC();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #20.0 }

  *v20 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80);
  *&v20[*(result + 36)] = 256;
  return result;
}

uint64_t sub_2380F8450@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8E0, &unk_23815C8B0);
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8E8, &qword_23815FDD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *a1;
  v16 = *(a2 + 80);
  v17 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
  result = swift_beginAccess();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = *(v16 + v17);
  if (v15 >= *(v19 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = v19 + 48 * v15;
  v21 = *(v20 + 40);
  v42 = *(v20 + 32);
  v43 = v6;
  v22 = objc_opt_self();

  v23 = [v22 avatarImageRender];
  v24 = [v23 placeholderImageForSize:40.0 scale:{40.0, 5.0}];
  v25 = sub_23815466C();

  v26 = *(*(v16 + v17) + 16) - 1;
  v27 = 1;
  v28 = v44;
  if (v15 != v26)
  {
    sub_2381547EC();
    v29 = sub_23815412C();
    sub_23815377C();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0) + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39 = sub_23815414C();
    v40 = &v8[*(v28 + 36)];
    *v40 = v39;
    *(v40 + 8) = 0u;
    *(v40 + 24) = 0u;
    v40[40] = 1;
    sub_23807121C(v8, v14, &qword_27DEEC8E0, &unk_23815C8B0);
    v27 = 0;
  }

  (*(v43 + 56))(v14, v27, 1, v28);
  sub_2380712E4(v14, v12, &qword_27DEEC8E8, &qword_23815FDD0);
  *a3 = v42;
  a3[1] = v21;
  a3[2] = v25;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F8, &qword_23815C8C8);
  sub_2380712E4(v12, a3 + *(v41 + 48), &qword_27DEEC8E8, &qword_23815FDD0);

  sub_238071284(v14, &qword_27DEEC8E8, &qword_23815FDD0);
  sub_238071284(v12, &qword_27DEEC8E8, &qword_23815FDD0);
}

uint64_t sub_2380F87D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23807CB28(a1);
  sub_2380704A0();
  v3 = sub_23815438C();
  v5 = v4;
  v7 = v6;
  sub_23815419C();
  sub_2381541AC();

  v8 = sub_23815435C();
  v10 = v9;
  v12 = v11;

  sub_238070490(v3, v5, v7 & 1);

  sub_23815463C();
  v13 = sub_23815431C();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_238070490(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_238070430(v13, v15, v17 & 1);

  sub_238070490(v13, v15, v17 & 1);
}

uint64_t sub_2380F8944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  sub_238154F8C();
  v4[25] = sub_238154F7C();
  v6 = sub_238154F3C();
  v4[26] = v6;
  v4[27] = v5;

  return MEMORY[0x2822009F8](sub_2380F89DC, v6, v5);
}

uint64_t sub_2380F89DC()
{
  v14 = v0;
  if (qword_27DEEA0B8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEC6B0);
  sub_2380F8DF4(v1, (v0 + 2));
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  sub_2380F9CE8(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_238085EAC(*(v5 + 32), *(v5 + 40), &v13);
    _os_log_impl(&dword_238060000, v3, v4, "Attempting to set app setting to enabled for %s", v6, 0xCu);
    v8 = __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2383EA8A0](v7, -1, -1, v8);
    MEMORY[0x2383EA8A0](v6, -1, -1);
  }

  v9 = v0[24];
  v10 = v9[6];
  v0[28] = v10;
  v0[29] = v9[4];
  v0[30] = v9[5];
  v11 = (*v10 + 160) & 0xFFFFFFFFFFFFLL | 0x25F0000000000000;
  v0[31] = *(*v10 + 160);
  v0[32] = v11;

  return MEMORY[0x2822009F8](sub_2380F8B94, v10, 0);
}

uint64_t sub_2380F8B94()
{
  v1 = *(v0 + 192);
  (*(v0 + 248))(0, *(v0 + 232), *(v0 + 240));
  v2 = *v1;
  *(v0 + 120) = v1[1];
  *(v0 + 104) = v2;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *(v0 + 184) = *(v1 + 10);
  *(v0 + 168) = v5;
  *(v0 + 152) = v4;
  *(v0 + 136) = v3;
  v6 = swift_task_alloc();
  *(v0 + 264) = v6;
  *v6 = v0;
  v6[1] = sub_2380F8C64;

  return sub_2380F5504();
}

uint64_t sub_2380F8C64()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_2380F8D84, v3, v2);
}

uint64_t sub_2380F8D84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2380F8E2C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_238088780;

  return sub_2380F529C(v0 + 16);
}

unint64_t sub_2380F8EC0()
{
  result = qword_27DEEC6F8;
  if (!qword_27DEEC6F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC6D0, &qword_23815C620);
    v4[0] = sub_2380F8F7C();
    v4[1] = sub_2380F90E8(&qword_27DEED860, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC6F8);
  }

  return result;
}

unint64_t sub_2380F8F7C()
{
  result = qword_27DEEC700;
  if (!qword_27DEEC700)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC708, &qword_23815C650);
    v4[0] = sub_2380F9008();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC700);
  }

  return result;
}

unint64_t sub_2380F9008()
{
  result = qword_27DEEC710;
  if (!qword_27DEEC710)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC718, &qword_23815C658);
    v4[0] = sub_2380F9094();
    v4[1] = MEMORY[0x277CE0880];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC710);
  }

  return result;
}

unint64_t sub_2380F9094()
{
  result = qword_27DEEC720;
  if (!qword_27DEEC720)
  {
    result = swift_getWitnessTable(aAJ, &type metadata for WiFiAwarePermissionView, v0, v1);
    atomic_store(result, &qword_27DEEC720);
  }

  return result;
}

uint64_t sub_2380F90E8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2380F9130(uint64_t a1, uint64_t a2)
{
  result = qword_27DEEC728;
  if (!qword_27DEEC728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEC728);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2380F91BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2380F9204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2380F926C()
{
  result = qword_27DEEC738;
  if (!qword_27DEEC738)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC740, &qword_23815C728);
    v4[0] = sub_2380711D4(&qword_27DEEC6F0, &qword_27DEEC6E0, &qword_23815C630, MEMORY[0x277CDDB50]);
    v4[1] = sub_2380F8EC0();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEEC738);
  }

  return result;
}

uint64_t sub_2380F936C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7, v1);
}

unint64_t sub_2380F93B4()
{
  result = qword_27DEEC7C8;
  if (!qword_27DEEC7C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC780, &qword_23815C768);
    v4[0] = sub_2380F9440();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC7C8);
  }

  return result;
}

unint64_t sub_2380F9440()
{
  result = qword_27DEEC7D0;
  if (!qword_27DEEC7D0)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC7D8, &qword_23815C7F8);
    v4[0] = sub_2380F94D8();
    v4[1] = sub_2380F9590();
    v4[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v4);
    atomic_store(result, &qword_27DEEC7D0);
  }

  return result;
}

unint64_t sub_2380F94D8()
{
  result = qword_27DEEC7E0;
  if (!qword_27DEEC7E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC7E8, &qword_23815C800);
    v4[0] = sub_2380711D4(&qword_27DEEC7F0, &qword_27DEEC7F8, &qword_23815C808, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC7E0);
  }

  return result;
}

unint64_t sub_2380F9590()
{
  result = qword_27DEEC800;
  if (!qword_27DEEC800)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC808, &qword_23815C810);
    v4[0] = sub_2380F9614();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27DEEC800);
  }

  return result;
}

unint64_t sub_2380F9614()
{
  result = qword_27DEEC810;
  if (!qword_27DEEC810)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC818, &qword_23815C818);
    v4[0] = sub_2380F96CC();
    v4[1] = sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC810);
  }

  return result;
}

unint64_t sub_2380F96CC()
{
  result = qword_27DEEC820;
  if (!qword_27DEEC820)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC828, &qword_23815C820);
    v4[0] = sub_2380F9784();
    v4[1] = sub_2380711D4(&qword_27DEEB230, &qword_27DEEB238, &qword_2381596B0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC820);
  }

  return result;
}

unint64_t sub_2380F9784()
{
  result = qword_27DEEC830;
  if (!qword_27DEEC830)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC838, &qword_23815C828);
    v4[0] = sub_2380711D4(&qword_27DEEC840, &qword_27DEEC848, &qword_23815C830, MEMORY[0x277CE1198]);
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC830);
  }

  return result;
}

unint64_t sub_2380F984C()
{
  result = qword_27DEEC870;
  if (!qword_27DEEC870)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC868, &qword_23815C840);
    v4[0] = sub_2380F9904();
    v4[1] = sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC870);
  }

  return result;
}

unint64_t sub_2380F9904()
{
  result = qword_27DEEC878;
  if (!qword_27DEEC878)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC880, &qword_23815C848);
    v4[0] = sub_2380711D4(&qword_27DEEC888, &qword_27DEEC890, &unk_23815C850, MEMORY[0x277CE1198]);
    v4[1] = sub_2380711D4(&qword_27DEEC898, &qword_27DEEC8A0, &unk_23815FBD0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC878);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7, v1);
}

unint64_t sub_2380F9A50()
{
  result = qword_27DEEC8D8;
  if (!qword_27DEEC8D8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC8B0, &qword_23815C868);
    v4[0] = sub_2380711D4(&qword_27DEEC8D0, &qword_27DEEC8C8, &qword_23815C8A8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27DEEC8D8);
  }

  return result;
}

unint64_t sub_2380F9B10()
{
  result = qword_27DEEC948;
  if (!qword_27DEEC948)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC940, &qword_23815C978);
    v4[0] = sub_23807B920();
    v4[1] = sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEEC948);
  }

  return result;
}

uint64_t sub_2380F9BD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 120, 7, v1);
}

uint64_t sub_2380F9C38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238087150;

  return sub_2380F8944(a1, v4, v5, v1 + 32);
}

uint64_t sub_2380F9D3C()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEC9B0);
  __swift_project_value_buffer(v0, qword_27DEEC9B0);
  sub_238154DEC();
  return sub_23815292C();
}

uint64_t sub_2380F9DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2381534FC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_23815351C();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2380F9ED4, 0, 0);
}

uint64_t sub_2380F9ED4()
{
  if (qword_27DEEA0C8 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  v0[9] = __swift_project_value_buffer(v1, qword_27DEEC9B0);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "start boop browser", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  v8 = DDUINearFieldPublicKeyFromIdentity();
  v9 = sub_23815275C();
  v11 = v10;

  v0[10] = v9;
  v0[11] = v11;
  (*(v6 + 104))(v5, *MEMORY[0x277D54B38], v7);
  sub_238085D80(v9, v11);
  sub_23815350C();
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_2380FA0D0;
  v13 = v0[8];

  return MEMORY[0x2821B5F28](v13);
}

uint64_t sub_2380FA0D0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2380FA298;
  }

  else
  {
    v2 = sub_2380FA1E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2380FA1E4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  sub_2380FA854();
  v6 = sub_238085CA0(v2, v1);
  (*(v4 + 8))(v3, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2380FA298()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_238085CA0(v0[10], v0[11]);
  (*(v4 + 8))(v2, v3, v5);
  v6 = v1;
  v7 = sub_23815291C();
  v8 = sub_2381550DC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_238060000, v7, v8, "start boop browser failed: %@", v11, 0xCu);
    sub_238071284(v12, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v12, -1, -1);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2380FA450()
{
  if (qword_27DEEA0C8 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_27DEEC9B0);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "stop boop browser", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_2380FA5C0;

  return MEMORY[0x2821B5F18](0xD000000000000015, 0x80000002381629C0);
}

uint64_t sub_2380FA5C0()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2380FA6F4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2380FA6F4()
{
  v1 = *(v0 + 40);
  v2 = v1;
  v3 = sub_23815291C();
  v4 = sub_2381550DC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_238060000, v3, v4, "stop boop browser failed: %@", v7, 0xCu);
    sub_238071284(v8, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v8, -1, -1);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

double sub_2380FA854()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_238154FBC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = *(v0 + 40);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_238154F8C();

  v8 = sub_238154F7C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  v9[5] = v7;

  *(v1 + 48) = sub_2380D2A4C(0, 0, v4, &unk_23815CAD8, v9);

  return result;
}

uint64_t sub_2380FA9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECA20, &unk_23815CAE0);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[12] = v7;
  v5[13] = sub_238154F8C();
  v5[14] = sub_238154F7C();
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_2380FAAF8;

  return MEMORY[0x2821B5F38](v7);
}

uint64_t sub_2380FAAF8()
{
  v2 = *v1;
  v2[16] = v0;

  v4 = sub_238154F3C();
  v2[17] = v4;
  v2[18] = v3;
  if (v0)
  {
    v5 = sub_2380FB374;
  }

  else
  {
    v5 = sub_2380FAC58;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2380FAC58()
{
  v0[6] = sub_2381533BC();
  swift_beginAccess();
  v0[19] = sub_238154F7C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA30, &qword_23815CAF0);
  v2 = sub_2380FC4B4();
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_2380FAD58;

  return MEMORY[0x282200308](v0 + 7, v1, v2);
}

uint64_t sub_2380FAD58()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_238154F3C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2380FB0D4;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_238154F3C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2380FAEF0;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_2380FAEF0()
{

  v0[22] = v0[7];
  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x2822009F8](sub_2380FAF5C, v1, v2);
}

uint64_t sub_2380FAF5C()
{
  v1 = v0[22];
  if (v1)
  {
    if (swift_weakLoadStrong())
    {
      sub_2380FB550(v1);
    }

    v0[19] = sub_238154F7C();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA30, &qword_23815CAF0);
    v3 = sub_2380FC4B4();
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_2380FAD58;

    return MEMORY[0x282200308](v0 + 7, v2, v3);
  }

  else
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[10];

    (*(v6 + 8))(v5, v7);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2380FB0D4()
{
  v0[8] = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  swift_willThrowTypedImpl();

  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x2822009F8](sub_2380FB170, v1, v2);
}

uint64_t sub_2380FB170()
{
  v19 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);
  v4 = v0[21];
  if (qword_27DEEA0C8 != -1)
  {
    swift_once();
  }

  v5 = sub_23815293C();
  __swift_project_value_buffer(v5, qword_27DEEC9B0);
  v6 = v4;
  v7 = sub_23815291C();
  v8 = sub_2381550DC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v0[5] = v4;
    v11 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
    v12 = sub_238154D2C();
    v14 = sub_238085EAC(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_238060000, v7, v8, "error registering for updates to nearby sharing interactions: %s", v9, 0xCu);
    v15 = __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2383EA8A0](v10, -1, -1, v15);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_2380FB374()
{
  v16 = v0;

  v1 = v0[16];
  if (qword_27DEEA0C8 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEC9B0);
  v3 = v1;
  v4 = sub_23815291C();
  v5 = sub_2381550DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v0[5] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
    v9 = sub_238154D2C();
    v11 = sub_238085EAC(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_238060000, v4, v5, "error registering for updates to nearby sharing interactions: %s", v6, 0xCu);
    v12 = __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2383EA8A0](v7, -1, -1, v12);
    MEMORY[0x2383EA8A0](v6, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

void sub_2380FB550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  MEMORY[0x28223BE20](v2 - 8);
  v92 = &v88 - v3;
  v4 = sub_2381527EC();
  v96 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v89 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v88 - v7;
  v9 = sub_23815347C();
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v101 = (&v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v102 = (&v88 - v12);
  v13 = sub_2381534CC();
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2381534BC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F8, &unk_23815CAC0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v88 - v21;
  if (qword_27DEEA0C8 != -1)
  {
    swift_once();
  }

  v23 = sub_23815293C();
  v24 = __swift_project_value_buffer(v23, qword_27DEEC9B0);

  v91 = v24;
  v25 = sub_23815291C();
  v26 = sub_2381550FC();

  v27 = os_log_type_enabled(v25, v26);
  v97 = v19;
  v98 = v4;
  v93 = v8;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v90 = v16;
    v29 = v28;
    v30 = swift_slowAlloc();
    v106[0] = v30;
    *v29 = 136315138;
    v31 = sub_2381534EC();
    v32 = MEMORY[0x2383E9520](a1, v31);
    v34 = v17;
    v35 = sub_238085EAC(v32, v33, v106);

    *(v29 + 4) = v35;
    v17 = v34;
    _os_log_impl(&dword_238060000, v25, v26, "nearby sharing interactions changed: %s", v29, 0xCu);
    v36 = __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2383EA8A0](v30, -1, -1, v36);
    v37 = v29;
    v16 = v90;
    MEMORY[0x2383EA8A0](v37, -1, -1);
  }

  if (*(a1 + 16))
  {
    v38 = sub_2381534EC();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v22, a1 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v38);
    (*(v39 + 56))(v22, 0, 1, v38);
    v40 = OBJC_IVAR____TtC17DeviceDiscoveryUI11BoopBrowser_currentNearbySharingInteraction;
    v41 = v103;
    swift_beginAccess();
    sub_2380FC2AC(v22, v41 + v40);
    swift_endAccess();
    sub_2381534DC();
    v43 = v99;
    v42 = v100;
    if ((*(v99 + 88))(v15, v100) != *MEMORY[0x277D54B28])
    {
      (*(v43 + 8))(v15, v42);
      return;
    }

    (*(v43 + 96))(v15, v42);
    v44 = v97;
    (*(v17 + 32))(v97, v15, v16);
    sub_23815349C();
    v46 = v94;
    v45 = v95;
    (*(v94 + 104))(v101, *MEMORY[0x277D54B18], v95);
    sub_2380FC31C();
    sub_238154EAC();
    sub_238154EAC();
    if (v106[0] == v104 && v106[1] == v105)
    {
      v47 = *(v46 + 8);
      v47(v101, v45);
      v47(v102, v45);

      v48 = v98;
      v49 = v96;
    }

    else
    {
      v50 = sub_2381555CC();
      v51 = *(v46 + 8);
      v51(v101, v45);
      v51(v102, v45);

      v48 = v98;
      v49 = v96;
      if ((v50 & 1) == 0)
      {
LABEL_20:
        (*(v17 + 8))(v44, v16);
        return;
      }
    }

    v52 = v92;
    sub_23815348C();
    if ((*(v49 + 48))(v52, 1, v48) == 1)
    {
      sub_238071284(v52, &qword_27DEEC9F0, &qword_23815A090);
      v53 = sub_23815291C();
      v54 = sub_2381550DC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_238060000, v53, v54, "bonjourListenerUUID is nil", v55, 2u);
        MEMORY[0x2383EA8A0](v55, -1, -1);
      }

      goto LABEL_20;
    }

    v56 = v93;
    (*(v49 + 32))(v93, v52, v48);
    v57 = sub_2381534AC();
    if (v58 >> 60 == 15)
    {
      v59 = sub_23815291C();
      v60 = sub_2381550DC();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_238060000, v59, v60, "publicKey is missing", v61, 2u);
        MEMORY[0x2383EA8A0](v61, -1, -1);
      }

      (*(v49 + 8))(v93, v48);
      goto LABEL_20;
    }

    v62 = v57;
    v63 = v58;
    sub_23815279C();
    v64 = sub_238154D3C();

    bonjour_service = nw_endpoint_create_bonjour_service((v64 + 32), "_asquic._udp", "local");

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE40, &qword_23815AF60);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_238157F20;
    *(v66 + 32) = v62;
    *(v66 + 40) = v63;
    sub_238085D80(v62, v63);
    v67 = sub_238154ECC();

    v102 = bonjour_service;
    nw_endpoint_set_public_keys();

    v68 = v89;
    (*(v49 + 16))(v89, v56, v48);
    sub_238085D80(v62, v63);
    v69 = sub_23815291C();
    v70 = v49;
    v71 = sub_2381550FC();
    sub_238087244(v62, v63);
    if (os_log_type_enabled(v69, v71))
    {
      v72 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v90 = v16;
      v101 = v73;
      v106[0] = v73;
      *v72 = 136315394;
      v74 = sub_23815279C();
      v75 = v17;
      v77 = v76;
      v78 = v68;
      v79 = *(v70 + 8);
      v79(v78, v98);
      v80 = sub_238085EAC(v74, v77, v106);
      v17 = v75;

      *(v72 + 4) = v80;
      *(v72 + 12) = 2112;
      v81 = sub_23815274C();
      *(v72 + 14) = v81;
      v82 = v100;
      *v100 = v81;
      _os_log_impl(&dword_238060000, v69, v71, "creating bonjour endpoint with UUID:%s, publicKey:%@", v72, 0x16u);
      sub_238071284(v82, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v82, -1, -1);
      v83 = v101;
      v84 = __swift_destroy_boxed_opaque_existential_1(v101);
      v16 = v90;
      MEMORY[0x2383EA8A0](v83, -1, -1, v84);
      v85 = v72;
      v48 = v98;
      MEMORY[0x2383EA8A0](v85, -1, -1);
    }

    else
    {

      v86 = v68;
      v79 = *(v70 + 8);
      v79(v86, v48);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2380AEB18(v102);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v87 = sub_238087244(v62, v63);
    (v79)(v93, v48, v87);
    (*(v17 + 8))(v97, v16);
  }
}

uint64_t sub_2380FC0B0()
{
  sub_2380FC518(v0 + 16);
  swift_unknownObjectRelease();

  sub_238071284(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI11BoopBrowser_currentNearbySharingInteraction, &qword_27DEEC9F8, &unk_23815CAC0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoopBrowser(uint64_t a1)
{
  result = qword_27DEEC9D8;
  if (!qword_27DEEC9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2380FC198(uint64_t a1)
{
  sub_2380FC254(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2380FC254(uint64_t a1)
{
  if (!qword_27DEEC9E8)
  {
    sub_2381534EC();
    v1 = sub_23815530C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEEC9E8);
    }
  }
}

uint64_t sub_2380FC2AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F8, &unk_23815CAC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2380FC31C()
{
  result = qword_27DEECA00;
  if (!qword_27DEECA00)
  {
    v3 = sub_23815347C();
    result = swift_getWitnessTable(MEMORY[0x277D54B20], v3, v0, v1);
    atomic_store(result, &qword_27DEECA00);
  }

  return result;
}

uint64_t sub_2380FC374()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

uint64_t sub_2380FC3AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7, v1);
}

uint64_t sub_2380FC3F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238087150;

  return sub_2380FA9C8(a1, v4, v5, v7, v6);
}

unint64_t sub_2380FC4B4()
{
  result = qword_27DEECA38;
  if (!qword_27DEECA38)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA30, &qword_23815CAF0);
    result = swift_getWitnessTable(MEMORY[0x277D54AF0], v3, v0, v1);
    atomic_store(result, &qword_27DEECA38);
  }

  return result;
}

uint64_t sub_2380FC540(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[32])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2380FC584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonLayout(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2380FC6C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAC0, &qword_23815CE30);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v29 = &v27 - v5;
  v6 = sub_238153FBC();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAC8, &qword_23815CE38);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAD0, &qword_23815CE40);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  sub_23815388C();
  sub_238153FAC();
  sub_2380711D4(&qword_27DEECAD8, &qword_27DEECAC8, &qword_23815CE38, MEMORY[0x277CDD7F8]);
  sub_2380FEE44(&qword_27DEECAE0, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  sub_2381543BC();
  (*(v28 + 8))(v8, v6);
  (*(v10 + 8))(v12, v9);
  v20 = v29;
  sub_2381540BC();
  v21 = *(v14 + 16);
  v21(v17, v19, v13);
  v22 = v30;
  sub_2380FE79C(v20, v30);
  v23 = v32;
  v21(v32, v17, v13);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAE8, &qword_23815CE48);
  sub_2380FE79C(v22, &v23[*(v24 + 48)]);
  sub_238071284(v20, &qword_27DEECAC0, &qword_23815CE30);
  v25 = *(v14 + 8);
  v25(v19, v13);
  sub_238071284(v22, &qword_27DEECAC0, &qword_23815CE30);
  return (v25)(v17, v13);
}

uint64_t sub_2380FCAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_238153D1C();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAB8, &qword_23815CE28);
  return sub_2380FC6C4(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_2380FCB38@<X0>(int a1@<W1>, uint64_t a2@<X8>, double a4@<D1>)
{
  v93 = a1;
  v95 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC1A0, &qword_23815B930);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v78 - v7;
  v80 = sub_238153F6C();
  v8 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA50, &qword_23815CD28);
  MEMORY[0x28223BE20](v79);
  v12 = &v78 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA58, &qword_23815CD30);
  MEMORY[0x28223BE20](v81);
  v14 = &v78 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA60, &qword_23815CD38);
  MEMORY[0x28223BE20](v82);
  v16 = &v78 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA68, &qword_23815CD40);
  MEMORY[0x28223BE20](v84);
  v85 = &v78 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA70, &qword_23815CD48);
  MEMORY[0x28223BE20](v83);
  v89 = &v78 - v18;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA78, &qword_23815CD50);
  MEMORY[0x28223BE20](v87);
  v88 = &v78 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA80, &qword_23815CD58);
  MEMORY[0x28223BE20](v86);
  v91 = &v78 - v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA88, &unk_23815CD60);
  MEMORY[0x28223BE20](v90);
  v92 = &v78 - v21;
  sub_238153F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238158810;
  v23 = sub_23815412C();
  *(inited + 32) = v23;
  v24 = sub_23815414C();
  *(inited + 33) = v24;
  v25 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v23)
  {
    v25 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v24)
  {
    v25 = sub_23815413C();
  }

  v26 = v89;
  sub_23815377C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  (*(v8 + 32))(v12, v10, v80);
  v35 = &v12[*(v79 + 36)];
  *v35 = v25;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v12, v14, &qword_27DEECA50, &qword_23815CD28);
  v36 = &v14[*(v81 + 36)];
  v37 = v101;
  *(v36 + 4) = v100;
  *(v36 + 5) = v37;
  *(v36 + 6) = v102;
  v38 = v97;
  *v36 = v96;
  *(v36 + 1) = v38;
  v39 = v99;
  *(v36 + 2) = v98;
  *(v36 + 3) = v39;
  v40 = sub_2381545FC();
  v41 = sub_2381540FC();
  sub_23807121C(v14, v16, &qword_27DEECA58, &qword_23815CD30);
  v42 = &v16[*(v82 + 36)];
  *v42 = v40;
  v42[8] = v41;
  v43 = v93;
  if (v93 && v93 == 1)
  {
    v44 = sub_2381545AC();
  }

  else
  {
    v44 = sub_2381545DC();
  }

  v45 = v44;
  KeyPath = swift_getKeyPath();
  v47 = v85;
  sub_23807121C(v16, v85, &qword_27DEECA60, &qword_23815CD38);
  v48 = (v47 + *(v84 + 36));
  *v48 = KeyPath;
  v48[1] = v45;
  v49 = (v26 + *(v83 + 36));
  v50 = *(sub_238153A7C() + 20);
  v51 = *MEMORY[0x277CE0118];
  v52 = sub_238153DDC();
  (*(*(v52 - 8) + 104))(v49 + v50, v51, v52);
  *v49 = a4;
  v49[1] = a4;
  *(v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)) = 256;
  sub_23807121C(v47, v26, &qword_27DEECA68, &qword_23815CD40);
  if (v43 > 1u)
  {
    sub_23815421C();
  }

  else
  {
    sub_23815420C();
  }

  v53 = *MEMORY[0x277CE0990];
  v54 = sub_2381541CC();
  v55 = *(v54 - 8);
  v56 = v94;
  (*(v55 + 104))(v94, v53, v54);
  (*(v55 + 56))(v56, 0, 1, v54);
  v57 = sub_23815422C();
  sub_238071284(v56, &qword_27DEEC1A0, &qword_23815B930);
  v58 = swift_getKeyPath();
  v59 = v88;
  sub_23807121C(v26, v88, &qword_27DEECA70, &qword_23815CD48);
  v60 = (v59 + *(v87 + 36));
  *v60 = v58;
  v60[1] = v57;
  v61 = swift_getKeyPath();
  v62 = v91;
  sub_23807121C(v59, v91, &qword_27DEECA78, &qword_23815CD50);
  v63 = v62 + *(v86 + 36);
  *v63 = v61;
  *(v63 + 8) = 1;
  if (sub_238153F8C())
  {
    v64 = 0.9;
  }

  else
  {
    v64 = 1.0;
  }

  sub_2381549DC();
  v66 = v65;
  v68 = v67;
  v69 = v62;
  v70 = v92;
  sub_23807121C(v69, v92, &qword_27DEECA80, &qword_23815CD58);
  v71 = v70 + *(v90 + 36);
  *v71 = v64;
  *(v71 + 8) = v64;
  *(v71 + 16) = v66;
  *(v71 + 24) = v68;
  v72 = sub_23815495C();
  v73 = sub_238153F8C();
  v74 = v70;
  v75 = v95;
  sub_23807121C(v74, v95, &qword_27DEECA88, &unk_23815CD60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECA90, &qword_23815CE08);
  v77 = v75 + *(result + 36);
  *v77 = v72;
  *(v77 + 8) = v73 & 1;
  return result;
}

uint64_t (*sub_2380FD618(uint64_t *a1))()
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
  *(v2 + 32) = sub_23815375C();
  return sub_2380FD6A0;
}

void sub_2380FD6A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2380FD6EC@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_238153F2C();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = sub_238153F4C();
  v27 = *(v8 - 8);
  v9 = v27;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_238153F5C();
  sub_238153F3C();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v16(v5, v7, v1);
  v17 = v28;
  v15(v28, v12, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAB0, &qword_23815CE20) + 48)];
  v19 = v25;
  v16(v18, v5, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v5, v22);
  return (v23)(v12, v8);
}

uint64_t sub_2380FD97C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_238153D1C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAA8, &qword_23815CE18);
  return sub_2380FD6EC((a2 + *(v3 + 44)));
}

unint64_t sub_2380FD9D8()
{
  result = qword_27DEECA40;
  if (!qword_27DEECA40)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE02C0], MEMORY[0x277CE02C8], v0, v1);
    atomic_store(result, &qword_27DEECA40);
  }

  return result;
}

unint64_t sub_2380FDA30()
{
  result = qword_27DEECA48;
  if (!qword_27DEECA48)
  {
    result = swift_getWitnessTable("%5\vJز", &type metadata for ButtonLayout, v0, v1);
    atomic_store(result, &qword_27DEECA48);
  }

  return result;
}

char *sub_2380FDAB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2380FDC8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2380FDAD8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2380FDD98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2380FDAF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2380FDEA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2380FDB18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2380FDFB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2380FDB38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2380FE18C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2380FDB58(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8C0, &qword_238158110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8B0, &unk_238158100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2380FDC8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECB70, &unk_23815CEE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2380FDD98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAF0, &qword_23815CE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2380FDEA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACC8, &qword_238158830);
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

void *sub_2380FDFB4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBE48, &qword_23815AF68);
  v10 = *(sub_2381526CC() - 8);
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
  v15 = *(sub_2381526CC() - 8);
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

char *sub_2380FE18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAA0, &qword_23815CE10);
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

void *sub_2380FE290(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v28 = sub_23815395C();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815399C();
  sub_2380FEE44(&qword_27DEECA98, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  v8 = sub_23815506C();
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = v8;
    v34 = MEMORY[0x277D84F90];
    sub_2380FDB38(0, v8 & ~(v8 >> 63), 0);
    v9 = v34;
    result = sub_23815505C();
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v27 = (v5 + 16);
    v12 = (v5 + 8);
    v26 = a4 & 1;
    do
    {
      v13 = sub_2381550AC();
      v14 = v28;
      (*v27)(v7);
      v13(v33, 0);
      v33[0] = v31 & 1;
      v32 = v26;
      sub_23815393C();
      v16 = v15;
      (*v12)(v7, v14);
      v34 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2380FDB38((v17 > 1), v18 + 1, 1);
        v9 = v34;
      }

      *(v9 + 16) = v18 + 1;
      *(v9 + 8 * v18 + 32) = v16;
      sub_23815509C();
      --v10;
    }

    while (v10);
  }

  v19 = *(v9 + 16);
  if (v19)
  {
    v20 = *(v9 + 32);
    v21 = v19 - 1;
    if (v21)
    {
      v22 = (v9 + 40);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v20 < v23)
        {
          v20 = v24;
        }

        --v21;
      }

      while (v21);
    }
  }
}

uint64_t sub_2380FE558(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = sub_23815395C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23815399C();
  sub_2380FEE44(&qword_27DEECA98, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  sub_23815505C();
  sub_23815508C();
  result = sub_23815507C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    if (result)
    {
      v18 = 0;
      v19 = (v13 + 8);
      do
      {
        sub_2381539AC();
        if (a7)
        {
          v22.origin.x = a1;
          v22.origin.y = a2;
          v22.size.width = a3;
          v22.size.height = a4;
          CGRectGetMidX(v22);
        }

        ++v18;
        sub_2381549CC();
        LOBYTE(v21) = 0;
        LOBYTE(v20) = 0;
        sub_23815394C();
        result = (*v19)(v15, v12);
      }

      while (v17 != v18);
    }
  }

  return result;
}

uint64_t sub_2380FE79C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECAC0, &qword_23815CE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2380FE820()
{
  result = qword_27DEECAF8;
  if (!qword_27DEECAF8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA90, &qword_23815CE08);
    v4[0] = sub_2380FE8D8();
    v4[1] = sub_2380711D4(&unk_27DEEAB50, &qword_27DEEA450, &qword_238157AA0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEECAF8);
  }

  return result;
}

unint64_t sub_2380FE8D8()
{
  result = qword_27DEECB00;
  if (!qword_27DEECB00)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA88, &unk_23815CD60);
    v4[0] = sub_2380FE964();
    v4[1] = MEMORY[0x277CDF690];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEECB00);
  }

  return result;
}

unint64_t sub_2380FE964()
{
  result = qword_27DEECB08;
  if (!qword_27DEECB08)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA80, &qword_23815CD58);
    v4[0] = sub_2380FEA1C();
    v4[1] = sub_2380711D4(&unk_27DEEAB30, &unk_27DEED150, &qword_238158400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEECB08);
  }

  return result;
}

unint64_t sub_2380FEA1C()
{
  result = qword_27DEECB10;
  if (!qword_27DEECB10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA78, &qword_23815CD50);
    v4[0] = sub_2380FEAD4();
    v4[1] = sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEECB10);
  }

  return result;
}

unint64_t sub_2380FEAD4()
{
  result = qword_27DEECB18;
  if (!qword_27DEECB18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA70, &qword_23815CD48);
    v4[0] = sub_2380FEB8C();
    v4[1] = sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEECB18);
  }

  return result;
}

unint64_t sub_2380FEB8C()
{
  result = qword_27DEECB20;
  if (!qword_27DEECB20)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA68, &qword_23815CD40);
    v4[0] = sub_2380FEC44();
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEECB20);
  }

  return result;
}

unint64_t sub_2380FEC44()
{
  result = qword_27DEECB28;
  if (!qword_27DEECB28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA60, &qword_23815CD38);
    v4[0] = sub_2380FECFC();
    v4[1] = sub_2380711D4(&qword_27DEEB230, &qword_27DEEB238, &qword_2381596B0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEECB28);
  }

  return result;
}

unint64_t sub_2380FECFC()
{
  result = qword_27DEECB30;
  if (!qword_27DEECB30)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA58, &qword_23815CD30);
    v4[0] = sub_2380FED88();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEECB30);
  }

  return result;
}

unint64_t sub_2380FED88()
{
  result = qword_27DEECB38;
  if (!qword_27DEECB38)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECA50, &qword_23815CD28);
    v4[0] = sub_2380FEE44(&qword_27DEECB40, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEECB38);
  }

  return result;
}

uint64_t sub_2380FEE44(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2380FEF18()
{
  result = qword_27DEECB68;
  if (!qword_27DEECB68)
  {
    result = swift_getWitnessTable(byte_23815CEB8, &type metadata for BoopButtonStyle.Style, v0, v1);
    atomic_store(result, &qword_27DEECB68);
  }

  return result;
}

id sub_2380FEF6C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = sub_238154C8C();
  if (qword_27DEEA0D8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC00, &unk_23815B5A0);
  v7 = sub_238154ECC();
  v23[0] = 0;
  v8 = [v3 unifiedContactWithIdentifier:v6 keysToFetch:v7 error:v23];

  v9 = v23[0];
  if (!v8)
  {
    v10 = v9;
    v11 = sub_23815266C();

    swift_willThrow();
    if (qword_27DEEA0D0 != -1)
    {
      swift_once();
    }

    v12 = sub_23815293C();
    __swift_project_value_buffer(v12, qword_27DEECB80);

    v13 = v11;
    v14 = sub_23815291C();
    v15 = sub_2381550DC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_238085EAC(a1, a2, v23);
      *(v16 + 12) = 2112;
      v19 = v11;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_238060000, v14, v15, "Unable to fetch contact with identifier: %s with error: %@", v16, 0x16u);
      sub_2380FF408(v17);
      MEMORY[0x2383EA8A0](v17, -1, -1);
      v21 = __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2383EA8A0](v18, -1, -1, v21);
      MEMORY[0x2383EA8A0](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v8;
}

uint64_t sub_2380FF220()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEECB80);
  v1 = __swift_project_value_buffer(v0, qword_27DEECB80);
  if (qword_27DEEA038 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF3198);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2380FF2E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23815CEF0;
  v1 = *MEMORY[0x277CBD000];
  v2 = *MEMORY[0x277CBCFF8];
  *(v0 + 32) = *MEMORY[0x277CBD000];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CBCFC0];
  v4 = *MEMORY[0x277CBD098];
  *(v0 + 48) = *MEMORY[0x277CBCFC0];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CBD028];
  v6 = *MEMORY[0x277CBD158];
  *(v0 + 64) = *MEMORY[0x277CBD028];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CBD170];
  *(v0 + 80) = *MEMORY[0x277CBD170];
  v8 = objc_opt_self();
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  result = [v8 descriptorForRequiredKeys];
  *(v0 + 88) = result;
  qword_27DEECB98 = v0;
  return result;
}

uint64_t sub_2380FF408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECA10, &qword_2381588F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2380FF470()
{
  v0 = sub_238154C8C();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_27DEF3270 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2380FF528(uint64_t a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECDE0, &unk_23815D000);
  swift_getOpaqueTypeConformance2();
  sub_2380FFAAC();
  sub_2380FFB00(&qword_27DEECC18, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_2380FFB00(&qword_27DEECC20, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
  sub_2380FFB00(&unk_27DEECE10, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  return sub_23815298C();
}

uint64_t DDDeviceAdvertiserViewConfiguration.serviceIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

DeviceDiscoveryUI::DDDeviceAdvertiserViewConfiguration_optional __swiftcall DDDeviceAdvertiserViewConfiguration.init(scene:)(UIScene *scene)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECC50, &qword_23815CF00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC08, qword_23815D020);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  sub_23815521C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_238071284(v6, &unk_27DEECC50, &qword_23815CF00);
    if (qword_27DEEA048 != -1)
    {
      swift_once();
    }

    v11 = sub_23815293C();
    __swift_project_value_buffer(v11, qword_27DEF31C8);
    v12 = sub_23815291C();
    v13 = sub_2381550DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_238060000, v12, v13, "Unable to get hostStorage", v14, 2u);
      MEMORY[0x2383EA8A0](v14, -1, -1);
    }

LABEL_14:
    *v3 = 0;
    v3[1] = 0;
    goto LABEL_15;
  }

  (*(v8 + 32))(v10, v6, v7);
  swift_getOpaqueTypeConformance2();
  sub_2380FFAAC();
  sub_2380FFB00(&qword_27DEECC18, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_2380FFB00(&qword_27DEECC20, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
  sub_2380FFB00(&unk_27DEECE10, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  sub_23815296C();
  v18 = v25;
  if (!v25)
  {
    if (qword_27DEEA048 != -1)
    {
      swift_once();
    }

    v20 = sub_23815293C();
    __swift_project_value_buffer(v20, qword_27DEF31C8);
    v21 = sub_23815291C();
    v22 = sub_2381550DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_238060000, v21, v22, "Unable to get browseDescriptor from hostStorage", v23, 2u);
      MEMORY[0x2383EA8A0](v23, -1, -1);
    }

    v15 = (*(v8 + 8))(v10, v7);
    goto LABEL_14;
  }

  v19 = v24;
  (*(v8 + 8))(v10, v7);

  *v3 = v19;
  v3[1] = v18;
LABEL_15:
  result.value.serviceIdentifier._object = v16;
  result.value.serviceIdentifier._countAndFlagsBits = v15;
  result.is_nil = v17;
  return result;
}

unint64_t sub_2380FFAAC()
{
  result = qword_27DEECC10;
  if (!qword_27DEECC10)
  {
    result = swift_getWitnessTable(byte_23815CFC4, &type metadata for DDDeviceAdvertiserViewSettings.ServiceIdentifier, v0, v1);
    atomic_store(result, &qword_27DEECC10);
  }

  return result;
}

uint64_t sub_2380FFB00(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DEECE00, &qword_23815AD70);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2380FFB90(uint64_t a1, int a2)
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

uint64_t sub_2380FFBD8(uint64_t result, int a2, int a3)
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

uint64_t sub_2380FFC44(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC28, &qword_23815CFF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECDE0, &unk_23815D000);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  sub_2381551EC();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_238071284(v7, &qword_27DEECC28, &qword_23815CFF8);
  }

  v13 = (*(v9 + 32))(v11, v7, v8);
  MEMORY[0x28223BE20](v13);
  *(&v22 - 4) = v11;
  *(&v22 - 3) = a2;
  *(&v22 - 2) = a3;
  swift_getOpaqueTypeConformance2();
  sub_23815297C();
  if (qword_27DEEA048 != -1)
  {
    swift_once();
  }

  v14 = sub_23815293C();
  __swift_project_value_buffer(v14, qword_27DEF31C8);

  v15 = sub_23815291C();
  v16 = sub_2381550FC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315138;
    if (a3)
    {
      v19 = a3;
    }

    else
    {
      a2 = 0x676E697373696D3CLL;
      v19 = 0xE90000000000003ELL;
    }

    v20 = sub_238085EAC(a2, v19, &v23);

    *(v17 + 4) = v20;
    _os_log_impl(&dword_238060000, v15, v16, "updated service identifier to %s", v17, 0xCu);
    v21 = __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2383EA8A0](v18, -1, -1, v21);
    MEMORY[0x2383EA8A0](v17, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2380FFFA8()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEECC30);
  v1 = __swift_project_value_buffer(v0, qword_27DEECC30);
  if (qword_27DEEA048 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF31C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2381000B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v24 = a6;
  v25 = a7;
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC48, &unk_23815D010);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  v26 = a2;
  v27 = a3;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECDE0, &unk_23815D000);
  swift_getOpaqueTypeConformance2();
  sub_2381033B0();
  sub_2380FFB00(&qword_27DEECC18, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
  sub_2380FFB00(&qword_27DEECC20, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
  sub_2380FFB00(&unk_27DEECE10, MEMORY[0x277D837E0], MEMORY[0x277D84F48]);
  v23 = v13;
  sub_23815298C();
  if (a4)
  {
    v14 = sub_23815275C();
  }

  else
  {
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  v26 = v14;
  v27 = v15;
  sub_238102250();
  v16 = MEMORY[0x277D84F58];
  v21[1] = sub_238102128(&unk_27DEECCA0, sub_238102080, MEMORY[0x277D84F58]);
  v17 = MEMORY[0x277D84F40];
  sub_238102128(&qword_27DEECCB8, sub_2381020D4, MEMORY[0x277D84F40]);
  v18 = MEMORY[0x277D84F48];
  sub_238102128(&qword_27DEECCC8, sub_2381021A0, MEMORY[0x277D84F48]);
  sub_23815298C();
  sub_238103404(v22, v12);
  v19 = type metadata accessor for HashableDescriptor(0);
  (*(*(v19 - 8) + 56))(v12, 0, 1, v19);
  sub_238101EF4();
  sub_238101F90(&qword_27DEECC68, &qword_27DEECC70, protocol conformance descriptor for HashableDescriptor, v16);
  sub_238101F90(&qword_27DEECC78, &qword_27DEECC80, protocol conformance descriptor for HashableDescriptor, v17);
  sub_238101F90(&qword_27DEECC88, &qword_27DEECC90, protocol conformance descriptor for HashableDescriptor, v18);
  sub_23815298C();
  v26 = v24;
  v27 = v25;
  sub_238085D80(v24, v25);
  sub_23810202C();
  return sub_23815298C();
}

id DDDeviceDiscoveryViewSettingsSwift.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DDDeviceDiscoveryViewSettingsSwift(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t DDDeviceDiscoveryViewConfiguration.serviceString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DDDeviceDiscoveryViewConfiguration.publicKey.getter()
{
  v1 = *(v0 + 16);
  sub_2380E6764(v1, *(v0 + 24));
  return v1;
}

uint64_t DDDeviceDiscoveryViewConfiguration.browseDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DDDeviceDiscoveryViewConfiguration(0) + 24);
  v4 = sub_238152E1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double DDDeviceDiscoveryViewConfiguration.browseParameters.getter()
{
  type metadata accessor for DDDeviceDiscoveryViewConfiguration(0);

  return result;
}

uint64_t DDDeviceDiscoveryViewConfiguration.init(scene:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238152E1C();
  v5 = *(v4 - 8);
  v82 = v4;
  v83 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v79 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC48, &unk_23815D010);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v73 - v10;
  v12 = type metadata accessor for HashableDescriptor(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v80 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECC50, &qword_23815CF00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC08, qword_23815D020);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v73 - v20;
  v22 = type metadata accessor for DDDeviceDiscoveryViewConfiguration(0);
  v84 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v78 = v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a1;
  sub_23815521C();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_238071284(v17, &unk_27DEECC50, &qword_23815CF00);
    if (qword_27DEEA048 != -1)
    {
      swift_once();
    }

    v24 = sub_23815293C();
    __swift_project_value_buffer(v24, qword_27DEF31C8);
    v25 = sub_23815291C();
    v26 = sub_2381550DC();
    v27 = v22;
    if (os_log_type_enabled(v25, v26))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_238060000, v25, v26, "Unable to get hostStorage", v28, 2u);
      MEMORY[0x2383EA8A0](v28, -1, -1);
    }

    v29 = 1;
    return (*(v84 + 56))(a2, v29, 1, v27);
  }

  v77 = v22;
  v74 = v19;
  v75 = a2;
  (*(v19 + 32))(v21, v17, v18);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_238101EF4();
  sub_238101F90(&qword_27DEECC68, &qword_27DEECC70, protocol conformance descriptor for HashableDescriptor, MEMORY[0x277D84F58]);
  sub_238101F90(&qword_27DEECC78, &qword_27DEECC80, protocol conformance descriptor for HashableDescriptor, MEMORY[0x277D84F40]);
  sub_238101F90(&qword_27DEECC88, &qword_27DEECC90, protocol conformance descriptor for HashableDescriptor, MEMORY[0x277D84F48]);
  v76 = v21;
  v73[2] = OpaqueTypeConformance2;
  sub_23815296C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238071284(v11, &qword_27DEECC48, &unk_23815D010);
    if (qword_27DEEA048 != -1)
    {
      swift_once();
    }

    v31 = sub_23815293C();
    __swift_project_value_buffer(v31, qword_27DEF31C8);
    v32 = sub_23815291C();
    v33 = sub_2381550DC();
    v34 = os_log_type_enabled(v32, v33);
    a2 = v75;
    v35 = v76;
    v27 = v77;
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_238060000, v32, v33, "Unable to get browseDescriptor from hostStorage", v36, 2u);
      MEMORY[0x2383EA8A0](v36, -1, -1);
    }

    (*(v74 + 8))(v35, v18);
    v29 = 1;
    return (*(v84 + 56))(a2, v29, 1, v27);
  }

  v37 = v80;
  sub_2381022A4(v11, v80, type metadata accessor for HashableDescriptor);
  v38 = v82;
  v39 = *(v83 + 16);
  v40 = v81;
  v39(v81, v37, v82);
  if (qword_27DEEA048 != -1)
  {
    swift_once();
  }

  v41 = sub_23815293C();
  v42 = __swift_project_value_buffer(v41, qword_27DEF31C8);
  v43 = v79;
  v39(v79, v40, v38);
  v73[1] = v42;
  v44 = sub_23815291C();
  v45 = sub_2381550FC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v73[0] = v41;
    v48 = v47;
    v86 = v47;
    *v46 = 136315138;
    v49 = [sub_238152D6C() description];
    swift_unknownObjectRelease();
    v50 = sub_238154CCC();
    v52 = v51;

    v53 = *(v83 + 8);
    v53(v43, v38);
    v54 = sub_238085EAC(v50, v52, &v86);

    *(v46 + 4) = v54;
    _os_log_impl(&dword_238060000, v44, v45, "Got browseDescriptor: %s", v46, 0xCu);
    v55 = __swift_destroy_boxed_opaque_existential_1(v48);
    v56 = v48;
    v41 = v73[0];
    MEMORY[0x2383EA8A0](v56, -1, -1, v55);
    MEMORY[0x2383EA8A0](v46, -1, -1);
  }

  else
  {

    v53 = *(v83 + 8);
    v53(v43, v38);
  }

  v27 = v77;
  sub_23810202C();
  sub_238102128(&unk_27DEECCA0, sub_238102080, MEMORY[0x277D84F58]);
  sub_238102128(&qword_27DEECCB8, sub_2381020D4, MEMORY[0x277D84F40]);
  sub_238102128(&qword_27DEECCC8, sub_2381021A0, MEMORY[0x277D84F48]);
  v57 = v76;
  sub_23815296C();
  v79 = v87;
  if (v87 >> 60 == 15)
  {
    v58 = sub_23815291C();
    v59 = sub_2381550DC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_238060000, v58, v59, "Unable to get parametersData from hostStorage", v60, 2u);
      MEMORY[0x2383EA8A0](v60, -1, -1);
    }

    v53(v81, v82);
    sub_2381021F4(v80);
    (*(v74 + 8))(v57, v18);
    v29 = 1;
    a2 = v75;
    return (*(v84 + 56))(a2, v29, 1, v27);
  }

  v77 = v86;
  sub_238102250();
  sub_23815296C();
  v61 = v87;
  if (v87 >> 60 == 15)
  {
    if (qword_27DEEA0E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v41, qword_27DEECC30);
    v62 = sub_23815291C();
    v63 = sub_2381550DC();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_238060000, v62, v63, "Did not get publicKey from hostStorage, boop will fail", v64, 2u);
      v65 = 0;
      v61 = 0xF000000000000000;
LABEL_31:
      v67 = v77;
      MEMORY[0x2383EA8A0](v64, -1, -1);
      v68 = v79;
      goto LABEL_34;
    }

    v65 = 0;
    v61 = 0xF000000000000000;
  }

  else
  {
    v65 = v86;
    if (qword_27DEEA0E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v41, qword_27DEECC30);
    v62 = sub_23815291C();
    v66 = sub_2381550FC();
    if (os_log_type_enabled(v62, v66))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_238060000, v62, v66, "Successfully got publicKey from hostStorage", v64, 2u);
      goto LABEL_31;
    }
  }

  v68 = v79;
  v67 = v77;
LABEL_34:

  MEMORY[0x28223BE20](v69);
  v73[-2] = v67;
  v73[-1] = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECD40, &qword_23815B938);
  sub_23815273C();
  result = nw_parameters_create_from_dictionary();
  if (result)
  {
    sub_238152CEC();
    v71 = sub_238152CFC();
    sub_238087244(v67, v68);
    swift_unknownObjectRelease();

    sub_2381021F4(v80);
    (*(v74 + 8))(v57, v18);
    v72 = v78;
    *v78 = 0;
    *(v72 + 1) = 0;
    *(v72 + 2) = v65;
    *(v72 + 3) = v61;
    (*(v83 + 32))(&v72[*(v27 + 24)], v81, v82);
    *&v72[*(v27 + 28)] = v71;
    a2 = v75;
    sub_2381022A4(v72, v75, type metadata accessor for DDDeviceDiscoveryViewConfiguration);
    v29 = 0;
    return (*(v84 + 56))(a2, v29, 1, v27);
  }

  __break(1u);
  return result;
}

uint64_t sub_238101488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC48, &unk_23815D010);
  __swift_allocate_value_buffer(v0, qword_27DEF3278);
  v1 = __swift_project_value_buffer(v0, qword_27DEF3278);
  v2 = type metadata accessor for HashableDescriptor(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_238101528@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DEEA0F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC48, &unk_23815D010);
  v3 = __swift_project_value_buffer(v2, qword_27DEF3278);

  return sub_2381029FC(v3, a1);
}

double sub_2381015AC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_23815BDB0;
  return result;
}

uint64_t HashableDescriptor.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238152E1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HashableDescriptor.hashValue.getter()
{
  sub_23815568C();
  v0 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  MEMORY[0x2383E9CD0](v0);
  return sub_2381556BC();
}

uint64_t HashableDescriptor.hash(into:)(uint64_t a1)
{
  v1 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  return MEMORY[0x2383E9CD0](v1);
}

uint64_t sub_238101704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2381555CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2381017AC(uint64_t a1)
{
  v2 = sub_2381023CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2381017E8(uint64_t a1)
{
  v2 = sub_2381023CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HashableDescriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECD48, &qword_23815D040);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381023CC();
  sub_2381556DC();
  sub_238152E1C();
  sub_238101F48(&qword_27DEECD58, MEMORY[0x277CD90E0], MEMORY[0x277CD90E8]);
  sub_23815557C();
  return (*(v3 + 8))(v5, v2);
}

void HashableDescriptor.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_238152E1C();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECD60, &qword_23815D048);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for HashableDescriptor(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381023CC();
  sub_2381556CC();
  if (!v2)
  {
    v12 = v15;
    v13 = v17;
    sub_238101F48(&qword_27DEECD68, MEMORY[0x277CD90E0], MEMORY[0x277CD90F0]);
    sub_23815556C();
    (*(v16 + 8))(v8, v6);
    (*(v12 + 32))(v11, v18, v4);
    sub_2381022A4(v11, v13, type metadata accessor for HashableDescriptor);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238101C38()
{
  sub_23815568C();
  v0 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  MEMORY[0x2383E9CD0](v0);
  return sub_2381556BC();
}

uint64_t sub_238101CA4(uint64_t a1)
{
  v1 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  return MEMORY[0x2383E9CD0](v1);
}

uint64_t sub_238101CF8(uint64_t a1)
{
  sub_23815568C();
  v1 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  MEMORY[0x2383E9CD0](v1);
  return sub_2381556BC();
}

uint64_t sub_238101D7C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECD48, &qword_23815D040);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2381023CC();
  sub_2381556DC();
  sub_238152E1C();
  sub_238101F48(&qword_27DEECD58, MEMORY[0x277CD90E0], MEMORY[0x277CD90E8]);
  sub_23815557C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_238101EF4()
{
  result = qword_27DEECC60;
  if (!qword_27DEECC60)
  {
    result = swift_getWitnessTable(asc_23815D39C, &type metadata for DDDeviceDiscoveryViewSettings.BrowseDescriptor, v0, v1);
    atomic_store(result, &qword_27DEECC60);
  }

  return result;
}

uint64_t sub_238101F48(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238101F90(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECC48, &unk_23815D010);
    v10 = sub_238101F48(a2, type metadata accessor for HashableDescriptor, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23810202C()
{
  result = qword_27DEECC98;
  if (!qword_27DEECC98)
  {
    result = swift_getWitnessTable(asc_23815D36C, &type metadata for DDDeviceDiscoveryViewSettings.BrowseParameters, v0, v1);
    atomic_store(result, &qword_27DEECC98);
  }

  return result;
}

unint64_t sub_238102080()
{
  result = qword_27DEECCB0;
  if (!qword_27DEECCB0)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9348], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27DEECCB0);
  }

  return result;
}

unint64_t sub_2381020D4()
{
  result = qword_27DEECCC0;
  if (!qword_27DEECCC0)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9320], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27DEECCC0);
  }

  return result;
}

uint64_t sub_238102128(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEADE8, &qword_238158E00);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2381021A0()
{
  result = qword_27DEECCD0;
  if (!qword_27DEECCD0)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9328], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27DEECCD0);
  }

  return result;
}

uint64_t sub_2381021F4(uint64_t a1)
{
  v2 = type metadata accessor for HashableDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238102250()
{
  result = qword_27DEECCD8;
  if (!qword_27DEECCD8)
  {
    result = swift_getWitnessTable(byte_23815D33C, &type metadata for DDDeviceDiscoveryViewSettings.PublicKey, v0, v1);
    atomic_store(result, &qword_27DEECCD8);
  }

  return result;
}

uint64_t sub_2381022A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL _s17DeviceDiscoveryUI18HashableDescriptorV2eeoiySbAC_ACtFZ_0()
{
  sub_23815568C();
  v0 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  MEMORY[0x2383E9CD0](v0);
  v1 = sub_2381556BC();
  sub_23815568C();
  v2 = [sub_238152D6C() hash];
  swift_unknownObjectRelease();
  MEMORY[0x2383E9CD0](v2);
  return v1 == sub_2381556BC();
}

unint64_t sub_2381023CC()
{
  result = qword_27DEECD50;
  if (!qword_27DEECD50)
  {
    result = swift_getWitnessTable(asc_23815D2EC, &type metadata for HashableDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DEECD50);
  }

  return result;
}

uint64_t sub_238102494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238152E1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_238102568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238152E1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_238102624(uint64_t a1)
{
  sub_2381026F8(319, &qword_27DEED710, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2381026F8(319, &unk_27DEECD90, MEMORY[0x277CC9318]);
    if (v2 <= 0x3F)
    {
      sub_238152E1C();
      if (v3 <= 0x3F)
      {
        sub_238152CEC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2381026F8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23815530C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_238102758(uint64_t a1, uint64_t a2)
{
  v4 = sub_238152E1C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2381027D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_238152E1C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_238102848(uint64_t a1)
{
  result = sub_238152E1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2381028F8()
{
  result = qword_27DEECDB8;
  if (!qword_27DEECDB8)
  {
    result = swift_getWitnessTable(byte_23815D2C4, &type metadata for HashableDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DEECDB8);
  }

  return result;
}

unint64_t sub_238102950()
{
  result = qword_27DEECDC0;
  if (!qword_27DEECDC0)
  {
    result = swift_getWitnessTable(aM, &type metadata for HashableDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DEECDC0);
  }

  return result;
}

unint64_t sub_2381029A8()
{
  result = qword_27DEECDC8;
  if (!qword_27DEECDC8)
  {
    result = swift_getWitnessTable(asc_23815D25C, &type metadata for HashableDescriptor.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DEECDC8);
  }

  return result;
}

uint64_t sub_2381029FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC48, &unk_23815D010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_DWORD *sub_238102A6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, unint64_t a6)
{
  v84 = a3;
  v85 = a6;
  v88 = a4;
  v86 = a2;
  v7 = type metadata accessor for HashableDescriptor(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECDD0, &unk_23815D3D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v79 - v11;
  v13 = sub_238152E1C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v87 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECC28, &qword_23815CFF8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v79 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECDE0, &unk_23815D000);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - v21;
  sub_2381551EC();
  v23 = *(v20 + 48);
  v89 = v19;
  if (v23(v18, 1, v19) == 1)
  {
    return sub_238071284(v18, &qword_27DEECC28, &qword_23815CFF8);
  }

  (*(v20 + 32))(v22, v18, v89);
  swift_unknownObjectRetain();
  sub_238152E2C();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v79 = v20;
    v29 = v87;
    (*(v14 + 32))(v87, v12, v13);
    v30 = *(v14 + 16);
    v83 = v13;
    v30(v9, v29, v13);
    result = nw_parameters_copy_dictionary();
    if (result)
    {
      v31 = getDataFromXPC(_:)(result);
      v33 = v32;
      v34 = swift_unknownObjectRelease();
      MEMORY[0x28223BE20](v34);
      v35 = v86;
      *(&v79 - 8) = v22;
      *(&v79 - 7) = v35;
      v36 = v84;
      v37 = v88;
      *(&v79 - 6) = v84;
      *(&v79 - 5) = v37;
      *(&v79 - 4) = v9;
      *(&v79 - 3) = v31;
      v80 = v31;
      v85 = v33;
      *(&v79 - 2) = v33;
      swift_getOpaqueTypeConformance2();
      sub_23815297C();
      if (qword_27DEEA048 != -1)
      {
        swift_once();
      }

      v38 = sub_23815293C();
      __swift_project_value_buffer(v38, qword_27DEF31C8);

      v39 = sub_23815291C();
      v40 = sub_2381550FC();

      v41 = os_log_type_enabled(v39, v40);
      v81 = v9;
      v82 = v22;
      if (v41)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v90 = v43;
        *v42 = 136315138;
        if (v36)
        {
          v44 = v86;
        }

        else
        {
          v44 = 0x676E697373696D3CLL;
        }

        if (v36)
        {
          v45 = v36;
        }

        else
        {
          v45 = 0xE90000000000003ELL;
        }

        v46 = sub_238085EAC(v44, v45, &v90);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_238060000, v39, v40, "Updated service identifier to %s", v42, 0xCu);
        v47 = __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x2383EA8A0](v43, -1, -1, v47);
        MEMORY[0x2383EA8A0](v42, -1, -1);
      }

      v48 = v88;
      v49 = v88;
      v50 = sub_23815291C();
      v51 = sub_2381550FC();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        *(v52 + 4) = v49;
        *v53 = v48;
        v54 = v49;
        _os_log_impl(&dword_238060000, v50, v51, "Updated public key to %@", v52, 0xCu);
        sub_238071284(v53, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v53, -1, -1);
        MEMORY[0x2383EA8A0](v52, -1, -1);
      }

      v55 = a5;
      swift_unknownObjectRetain();
      v56 = sub_23815291C();
      v57 = sub_2381550FC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v90 = v59;
        *v58 = 136315138;
        v60 = [v55 description];
        v61 = sub_238154CCC();
        v63 = v62;

        v64 = sub_238085EAC(v61, v63, &v90);

        *(v58 + 4) = v64;
        _os_log_impl(&dword_238060000, v56, v57, "Updated browse descriptor to %s", v58, 0xCu);
        v65 = __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x2383EA8A0](v59, -1, -1, v65);
        MEMORY[0x2383EA8A0](v58, -1, -1);
      }

      v67 = v81;
      v66 = v82;
      v68 = v83;
      v69 = v80;
      v70 = v85;
      sub_238085D80(v80, v85);
      v71 = sub_23815291C();
      v72 = sub_2381550FC();
      if (!os_log_type_enabled(v71, v72))
      {
        sub_238085CA0(v69, v70);
        sub_238085CA0(v69, v70);

LABEL_37:
        (*(v14 + 8))(v87, v68);
        sub_2381021F4(v67);
        return (*(v79 + 8))(v66, v89);
      }

      result = swift_slowAlloc();
      *result = 134217984;
      v73 = v70 >> 62;
      if ((v70 >> 62) > 1)
      {
        if (v73 != 2)
        {
          v74 = 0;
          goto LABEL_36;
        }

        v76 = *(v69 + 16);
        v75 = *(v69 + 24);
        v77 = __OFSUB__(v75, v76);
        v74 = v75 - v76;
        if (!v77)
        {
          goto LABEL_36;
        }

        __break(1u);
      }

      else if (!v73)
      {
        v74 = BYTE6(v70);
LABEL_36:
        *(result + 1) = v74;
        v78 = result;
        sub_238085CA0(v69, v70);
        _os_log_impl(&dword_238060000, v71, v72, "Updated browse params with data of length %ld", v78, 0xCu);
        MEMORY[0x2383EA8A0](v78, -1, -1);

        sub_238085CA0(v69, v70);
        v68 = v83;
        goto LABEL_37;
      }

      LODWORD(v74) = HIDWORD(v69) - v69;
      if (!__OFSUB__(HIDWORD(v69), v69))
      {
        v74 = v74;
        goto LABEL_36;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_238071284(v12, &unk_27DEECDD0, &unk_23815D3D0);
  if (qword_27DEEA0E8 != -1)
  {
    swift_once();
  }

  v25 = sub_23815293C();
  __swift_project_value_buffer(v25, qword_27DEECC30);
  v26 = sub_23815291C();
  v27 = sub_2381550DC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_238060000, v26, v27, "Unable to create nwDescriptor", v28, 2u);
    MEMORY[0x2383EA8A0](v28, -1, -1);
  }

  return (*(v20 + 8))(v22, v89);
}

unint64_t sub_2381033B0()
{
  result = qword_27DEECDF0;
  if (!qword_27DEECDF0)
  {
    result = swift_getWitnessTable(aJx, &type metadata for DDDeviceDiscoveryViewSettings.ServiceIdentifier, v0, v1);
    atomic_store(result, &qword_27DEECDF0);
  }

  return result;
}

uint64_t sub_238103404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HashableDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238103484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23815538C();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_238105DD8(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_238152EBC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

double sub_238103568()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_238152A9C();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_238152A9C();
  v3 = sub_2381043B4();
  v4 = OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser;
  *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser] = v3;

  if (*&v2[v4])
  {

    sub_238152E7C();
  }

  return result;
}

uint64_t sub_238103664()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_238152A9C();
  if (*&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser])
  {

    sub_238152ECC();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_238152A9C();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_238152A9C();
}

void sub_238103770(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v3 = sub_238154D0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_238152BAC();
  v11 = *(v10 - 8);
  v41 = v10;
  v42 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v38 = v2;

  sub_238103484(v20, v9);

  v21 = sub_238152EBC();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v9, 1, v21) == 1)
  {
    sub_238105BC0(v9);
    if (qword_27DEEA0F8 != -1)
    {
      swift_once();
    }

    v23 = sub_23815293C();
    __swift_project_value_buffer(v23, qword_27DEECE20);
    v24 = sub_23815291C();
    v25 = sub_2381550DC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_238060000, v24, v25, "Pairing attempt with no found endpoints", v26, 2u);
      MEMORY[0x2383EA8A0](v26, -1, -1);
    }
  }

  else
  {
    sub_238152EAC();
    (*(v22 + 8))(v9, v21);
    v27 = v41;
    (*(v42 + 32))(v19, v17, v41);
    sub_238154CFC();
    v28 = sub_238154CDC();
    v30 = v29;
    (*(v4 + 8))(v6, v3);
    if (v30 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      sub_238085D80(v28, v30);
      sub_238152B2C();
      sub_238152CEC();
      sub_238152CAC();
      v31 = v42;
      (*(v42 + 16))(v14, v19, v27);
      sub_238152C6C();
      swift_allocObject();

      v32 = sub_238152C2C();
      v33 = swift_allocObject();
      v34 = v38;
      *(v33 + 16) = v38;
      *(v33 + 24) = v32;
      v35 = v34;

      sub_238086B74(sub_238105C68, v33);
      sub_238152C1C();

      sub_238152C4C();

      v36 = sub_238087244(v28, v30);
      (*(v31 + 8))(v19, v27, v36);
    }
  }
}

uint64_t sub_238103C2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

uint64_t sub_238103CA0()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEECE20);
  __swift_project_value_buffer(v0, qword_27DEECE20);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

id sub_238103CFC()
{
  result = [objc_allocWithZone(type metadata accessor for _DDPinPairingManager(0)) init];
  qword_27DEF3290 = result;
  return result;
}

void sub_238103D30(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_238103DB0(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_238152A9C();
}

void sub_238103E20(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_238103EA0(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_238152A9C();
}

id sub_238103F10()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_23815516C();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23815513C();
  MEMORY[0x28223BE20](v26);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238154A2C();
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECE88, &qword_23815D600);
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser;
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_browser] = 0;
  v15 = OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager__isSearching;
  LOBYTE(v32) = 0;
  sub_238152A5C();
  v16 = *(v11 + 32);
  v16(&v1[v15], v13, v10);
  v17 = OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager__pairingAvailable;
  LOBYTE(v32) = 0;
  sub_238152A5C();
  v16(&v1[v17], v13, v10);
  v18 = OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager__pairingState;
  LOBYTE(v32) = 0;
  sub_238152A5C();
  (*(v7 + 32))(&v1[v18], v9, v23);
  *&v1[v14] = 0;

  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_currentResults] = MEMORY[0x277D84FA0];
  v19 = &v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier];
  *v19 = 0;
  *(v19 + 1) = 0xE000000000000000;
  sub_2380D0AA8(0, v20);
  sub_238154A1C();
  v32 = MEMORY[0x277D84F90];
  sub_238105B24(&unk_27DEECFA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBA60, &qword_23815A710);
  sub_238105B6C(&unk_27DEECFB0, &unk_27DEEBA60, &qword_23815A710);
  sub_23815537C();
  (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_queue] = sub_23815519C();
  v31.receiver = v1;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t sub_2381043B4()
{
  v0 = sub_238152E1C();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = v24 - v4;
  v6 = sub_238152D5C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECE90, &qword_23815D608);
  v13 = sub_238152D0C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_238157F20;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x277CD8E60], v13);
  sub_238152D4C();
  v17 = v24[1];
  (*(v7 + 16))(v10, v12, v6);

  sub_238152D7C();
  sub_238152CEC();
  sub_238152CAC();
  sub_238152C8C();
  v19 = v25;
  v18 = v26;
  (*(v25 + 16))(v3, v5, v26);
  sub_238152EDC();
  swift_allocObject();

  v20 = sub_238152E5C();
  sub_238086B74(sub_2381050A8, 0);
  sub_238152E3C();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v22 = v17;
  sub_238086B74(sub_238105A84, v21);
  sub_238152E4C();

  (*(v19 + 8))(v5, v18);
  (*(v7 + 8))(v12, v6);

  return v20;
}

uint64_t sub_238104778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v4 = sub_2381549FC();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238154A2C();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238152C3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380D0AA8(0, v14);
  v24 = sub_23815517C();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v13, a1, v10);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v11 + 32))(v18 + v16, v13, v10);
  *(v18 + v17) = v23;
  aBlock[4] = sub_238105D48;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238106D10;
  aBlock[3] = &block_descriptor_36;
  v19 = _Block_copy(aBlock);

  sub_238154A0C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_238105B24(&qword_27DEEBC88, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_238105B6C(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0);
  sub_23815537C();
  v20 = v24;
  MEMORY[0x2383E97C0](0, v9, v6, v19);
  _Block_release(v19);

  (*(v27 + 8))(v6, v4);
  return (*(v25 + 8))(v9, v26);
}

void sub_238104B4C(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_238152C3C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v45 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v51 = v9;
    if (qword_27DEEA0F8 != -1)
    {
      swift_once();
    }

    v17 = sub_23815293C();
    v18 = __swift_project_value_buffer(v17, qword_27DEECE20);
    v19 = *(v6 + 16);
    v50 = a2;
    v52 = v19;
    v19(v14, a2, v5);
    v49 = v18;
    v20 = sub_23815291C();
    v21 = sub_2381550FC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v48 = v6;
      v23 = v22;
      v24 = swift_slowAlloc();
      v47 = a3;
      v25 = v24;
      v53 = v24;
      *v23 = 136315138;
      v52(v12, v14, v5);
      v26 = sub_238154D2C();
      v46 = v16;
      v28 = v27;
      v29 = *(v48 + 8);
      v29(v14, v5);
      v30 = sub_238085EAC(v26, v28, &v53);
      v16 = v46;

      *(v23 + 4) = v30;
      _os_log_impl(&dword_238060000, v20, v21, "Pairing connection state changed to %s", v23, 0xCu);
      v31 = __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x2383EA8A0](v25, -1, -1, v31);
      v32 = v23;
      v6 = v48;
      MEMORY[0x2383EA8A0](v32, -1, -1);
    }

    else
    {

      v29 = *(v6 + 8);
      v29(v14, v5);
    }

    v33 = v51;
    v52(v51, v50, v5);
    v34 = (*(v6 + 88))(v33, v5);
    if (v34 == *MEMORY[0x277CD8DE8])
    {
      v35 = sub_23815291C();
      v36 = sub_2381550FC();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_238060000, v35, v36, "Pairing failed", v37, 2u);
        MEMORY[0x2383EA8A0](v37, -1, -1);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v53) = 2;
      v38 = v16;
      sub_238152A9C();
      sub_238152C5C();

      goto LABEL_13;
    }

    if (v34 == *MEMORY[0x277CD8DE0])
    {

LABEL_13:
      v29(v33, v5);
      return;
    }

    if (v34 == *MEMORY[0x277CD8DD8] || v34 == *MEMORY[0x277CD8DF8])
    {

      return;
    }

    if (v34 != *MEMORY[0x277CD8DD0])
    {
      v43 = *MEMORY[0x277CD8DF0];
      v44 = v34;

      if (v44 == v43)
      {
        return;
      }

      goto LABEL_13;
    }

    v39 = sub_23815291C();
    v40 = sub_2381550FC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_238060000, v39, v40, "Pairing succeeded", v41, 2u);
      MEMORY[0x2383EA8A0](v41, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v53) = 1;
    v42 = v16;
    sub_238152A9C();
    sub_238152C5C();
  }
}

void sub_2381050A8(uint64_t a1)
{
  v2 = sub_238152E6C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  if (qword_27DEEA0F8 != -1)
  {
    swift_once();
  }

  v9 = sub_23815293C();
  __swift_project_value_buffer(v9, qword_27DEECE20);
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v11 = sub_23815291C();
  v12 = sub_2381550FC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    v10(v6, v8, v2);
    v15 = sub_238154D2C();
    v17 = v16;
    (*(v3 + 8))(v8, v2);
    v18 = sub_238085EAC(v15, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_238060000, v11, v12, "Pairing manager browser state changed to %s", v13, 0xCu);
    v19 = __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2383EA8A0](v14, -1, -1, v19);
    MEMORY[0x2383EA8A0](v13, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_238105318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2381549FC();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_238154A2C();
  v7 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380D0AA8(0, v10);
  v11 = sub_23815517C();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_238105B04;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238106D10;
  aBlock[3] = &block_descriptor_4;
  v14 = _Block_copy(aBlock);

  sub_238154A0C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_238105B24(&qword_27DEEBC88, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_238105B6C(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0);
  sub_23815537C();
  MEMORY[0x2383E97C0](0, v9, v6, v14);
  _Block_release(v14);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

char *sub_238105614(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_27DEEA0F8 != -1)
    {
      swift_once();
    }

    v5 = sub_23815293C();
    __swift_project_value_buffer(v5, qword_27DEECE20);

    v6 = sub_23815291C();
    v7 = sub_2381550FC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = *(a2 + 16);

      _os_log_impl(&dword_238060000, v6, v7, "Pairing manager browser found %ld devices", v8, 0xCu);
      MEMORY[0x2383EA8A0](v8, -1, -1);
    }

    else
    {
    }

    *&v4[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_currentResults] = a2;
  }

  return result;
}

uint64_t type metadata accessor for _DDPinPairingManager(uint64_t a1)
{
  result = qword_27DEECE70;
  if (!qword_27DEECE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238105908(uint64_t a1)
{
  sub_2380CAE70(319, &qword_27DEEB898, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_2380CAE70(319, &qword_27DEECE80, &type metadata for DDPairingState);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_238105A4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

uint64_t sub_238105A8C()
{
  MEMORY[0x2383EA980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

uint64_t sub_238105AC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7, v1);
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_238105B24(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238105B6C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238105BC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238105C28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7, v1);
}

uint64_t sub_238105C70()
{
  v1 = sub_238152C3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7, v6);
}

void sub_238105D48()
{
  v1 = *(sub_238152C3C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_238104B4C(v3, (v0 + v2), v4);
}

uint64_t sub_238105DD8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_238152EBC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_238105EA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238105EE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_238105F60@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECE98, &qword_23815D6A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_238153DEC();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECEA0, &qword_23815D6B0);
  sub_2381060A8(v1, &v5[*(v6 + 44)]);
  sub_2381548DC();
  sub_238153A8C();
  sub_2381069F0(v5, a1);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECEA8, &unk_23815D6B8) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_2381060A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v76 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v90 = &v72[-v6];
  v7 = sub_238153D7C();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v82 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  sub_238153D6C();
  sub_238153D5C();
  v83 = a1;

  sub_238153D4C();

  sub_238153D5C();
  sub_238153D9C();
  v10 = sub_23815436C();
  v12 = v11;
  v14 = v13;
  sub_2381542CC();
  v15 = sub_23815435C();
  v17 = v16;
  v19 = v18;

  sub_238070490(v10, v12, v14 & 1);

  sub_23815421C();
  v20 = sub_2381542FC();
  v87 = v21;
  v88 = v20;
  LOBYTE(v10) = v22;
  v89 = v23;
  sub_238070490(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v86 = sub_2381540EC();
  sub_23815377C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v84 = v10 & 1;
  v136 = v10 & 1;
  v132 = 0;
  sub_238153D6C();
  sub_238153D5C();
  sub_238153D4C();
  sub_238153D5C();
  sub_238153D9C();
  v32 = sub_23815436C();
  v34 = v33;
  v36 = v35;
  sub_23815417C();
  v37 = sub_23815435C();
  v39 = v38;
  v41 = v40;

  sub_238070490(v32, v34, v36 & 1);

  sub_2381545CC();
  v42 = sub_23815431C();
  v74 = v42;
  v75 = v43;
  v82 = v44;
  LOBYTE(v17) = v45;

  sub_238070490(v37, v39, v41 & 1);

  v80 = swift_getKeyPath();
  v81 = sub_2381540EC();
  sub_23815377C();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  LOBYTE(v118[0]) = v17 & 1;
  v73 = v17 & 1;
  LOBYTE(v104[0]) = 0;

  v54 = v90;
  sub_23815474C();
  v56 = v78;
  v55 = v79;
  v83 = *(v78 + 16);
  v57 = v76;
  (v83)(v76, v54, v79);
  v58 = v77;
  *v77 = 0;
  *(v58 + 8) = 1;
  *&v94 = v88;
  *(&v94 + 1) = v87;
  LOBYTE(v95) = v84;
  *(&v95 + 1) = *v135;
  DWORD1(v95) = *&v135[3];
  *(&v95 + 1) = v89;
  *&v96 = KeyPath;
  BYTE8(v96) = 1;
  *(&v96 + 9) = *v134;
  HIDWORD(v96) = *&v134[3];
  LOBYTE(v97) = v86;
  DWORD1(v97) = *&v133[3];
  *(&v97 + 1) = *v133;
  *(&v97 + 1) = v25;
  *&v98[0] = v27;
  *(&v98[0] + 1) = v29;
  *&v98[1] = v31;
  BYTE8(v98[1]) = 0;
  v59 = v95;
  *(v58 + 1) = v94;
  *(v58 + 2) = v59;
  v60 = v96;
  v61 = v97;
  v62 = v98[0];
  *(v58 + 89) = *(v98 + 9);
  *(v58 + 4) = v61;
  *(v58 + 5) = v62;
  *(v58 + 3) = v60;
  *&v99 = v42;
  *(&v99 + 1) = v82;
  LOBYTE(v100) = v17 & 1;
  DWORD1(v100) = *(v93 + 3);
  *(&v100 + 1) = v93[0];
  v63 = v75;
  *(&v100 + 1) = v75;
  *&v101 = v80;
  BYTE8(v101) = 1;
  HIDWORD(v101) = *&v92[3];
  *(&v101 + 9) = *v92;
  LOBYTE(v102) = v81;
  DWORD1(v102) = *&v91[3];
  *(&v102 + 1) = *v91;
  *(&v102 + 1) = v47;
  *&v103[0] = v49;
  *(&v103[0] + 1) = v51;
  *&v103[1] = v53;
  BYTE8(v103[1]) = 0;
  v64 = v100;
  *(v58 + 7) = v99;
  *(v58 + 8) = v64;
  v65 = v101;
  v66 = v102;
  v67 = v103[0];
  *(v58 + 185) = *(v103 + 9);
  *(v58 + 10) = v66;
  *(v58 + 11) = v67;
  *(v58 + 9) = v65;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECEB0, qword_23815D6F8);
  (v83)(v58 + *(v68 + 80), v57, v55);
  v69 = v58 + *(v68 + 96);
  *v69 = 0;
  v69[8] = 1;
  sub_238106B08(&v94, v118);
  sub_238106B08(&v99, v118);
  v70 = *(v56 + 8);
  v70(v90, v55);
  v70(v57, v55);
  v104[0] = v74;
  v104[1] = v82;
  v105 = v73;
  *v106 = v93[0];
  *&v106[3] = *(v93 + 3);
  v107 = v63;
  v108 = v80;
  v109 = 1;
  *v110 = *v92;
  *&v110[3] = *&v92[3];
  v111 = v81;
  *&v112[3] = *&v91[3];
  *v112 = *v91;
  v113 = v47;
  v114 = v49;
  v115 = v51;
  v116 = v53;
  v117 = 0;
  sub_238106B78(v104);
  v118[0] = v88;
  v118[1] = v87;
  v119 = v84;
  *v120 = *v135;
  *&v120[3] = *&v135[3];
  v121 = v89;
  v122 = KeyPath;
  v123 = 1;
  *v124 = *v134;
  *&v124[3] = *&v134[3];
  v125 = v86;
  *v126 = *v133;
  *&v126[3] = *&v133[3];
  v127 = v25;
  v128 = v27;
  v129 = v29;
  v130 = v31;
  v131 = 0;
  return sub_238106B78(v118);
}

uint64_t sub_238106870@<X0>(uint64_t a1@<X8>)
{
  sub_238153D8C();
  v2 = sub_23815436C();
  v4 = v3;
  v6 = v5;
  sub_23815419C();
  v7 = sub_23815435C();
  v9 = v8;
  v11 = v10;

  sub_238070490(v2, v4, v6 & 1);

  sub_2381545BC();
  v12 = sub_23815431C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_238070490(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_2381069F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECE98, &qword_23815D6A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238106A60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238153C0C();
  *a1 = result;
  return result;
}

uint64_t sub_238106A8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_238153C0C();
  *a1 = result;
  return result;
}

uint64_t sub_238106B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB768, &qword_238159FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238106B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB768, &qword_238159FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_238106BE4()
{
  result = qword_27DEECEB8;
  if (!qword_27DEECEB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECEA8, &unk_23815D6B8);
    v4[0] = sub_238106C70();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEECEB8);
  }

  return result;
}

unint64_t sub_238106C70()
{
  result = qword_27DEECEC0;
  if (!qword_27DEECEC0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECE98, &qword_23815D6A8);
    result = swift_getWitnessTable(MEMORY[0x277CE1198], v3, v0, v1);
    atomic_store(result, &qword_27DEECEC0);
  }

  return result;
}

double sub_238106D10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_238106D54(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_238106DD4(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_238152A9C();
}

uint64_t sub_238106E44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

uint64_t sub_238106ECC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v3;
}

void sub_238106F38(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_238106FB8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_238152A9C();
}

char *sub_238107038()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_23815516C();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_23815513C();
  MEMORY[0x28223BE20](v49);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238154A2C();
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECF90, &unk_23815D800);
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC190, &qword_23815B890);
  v10 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager__isSearching;
  LOBYTE(v55) = 0;
  sub_238152A5C();
  v18 = *(v14 + 32);
  v18(&v1[v17], v16, v13);
  v19 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager__isNFCEnabled;
  LOBYTE(v55) = 0;
  sub_238152A5C();
  v18(&v1[v19], v16, v13);
  v20 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager__nearbyDeviceCount;
  v55 = 0;
  sub_238152A5C();
  (*(v10 + 32))(&v1[v20], v12, v44);
  v21 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager__sharingName;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_238152A5C();
  v22 = v46;
  v23 = *(v45 + 32);
  v23(&v1[v21], v9, v46);
  v24 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager__pinString;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_238152A5C();
  v23(&v1[v24], v9, v22);
  sub_2380D0AA8(0, v25);
  sub_238154A1C();
  v55 = MEMORY[0x277D84F90];
  sub_238105B24(&unk_27DEECFA0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBA60, &qword_23815A710);
  sub_238105B6C(&unk_27DEECFB0, &unk_27DEEBA60, &qword_23815A710);
  sub_23815537C();
  (*(v51 + 104))(v50, *MEMORY[0x277D85260], v52);
  sub_23815519C();
  v26 = objc_allocWithZone(sub_23815341C());
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager_airDropController] = sub_23815340C();
  v54.receiver = v1;
  v54.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v54, sel_init);
  v28 = OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager_airDropController;
  v29 = *&v27[OBJC_IVAR____TtC17DeviceDiscoveryUI22_DDAskToAirDropManager_airDropController];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = v27;
  v31 = v29;

  sub_2381533DC();

  v32 = *&v27[v28];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v32;

  sub_2381533FC();

  v34 = [objc_opt_self() currentDevice];
  v35 = [v34 userInterfaceIdiom];

  if (!v35)
  {
    v36 = [objc_opt_self() sharedHardwareManagerWithNoUI];
    [v36 registerEventListener_];

    sub_23810784C(v37, v38);
  }

  v39 = sub_238108470();
  v41 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v39;
  v56 = v41;
  v42 = v30;
  sub_238152A9C();
  return v42;
}

uint64_t sub_238107730(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_238152A9C();
  }

  return result;
}

uint64_t sub_2381077B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2381533EC();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_238152A9C();
  }

  return result;
}

uint64_t sub_23810784C(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v3 = [objc_opt_self() sharedHardwareManagerWithNoUI];

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  return sub_238152A9C();
}

uint64_t sub_238107958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_2381549FC();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_238154A2C();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238107A74, 0, 0);
}

uint64_t sub_238107A74()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_238107B14;

  return MEMORY[0x2821B6110]();
}

uint64_t sub_238107B14(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_238107EC0;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_238107C48;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_238107C48(uint64_t a1, uint64_t a2)
{
  v4 = v2[18];
  v3 = v2[19];
  v5 = v2[15];
  v15 = v2[14];
  v16 = v2[13];
  v6 = v2[10];
  v13 = v2[12];
  v14 = v2[11];
  sub_2380D0AA8(0, a2);
  v12 = sub_23815517C();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v3;
  v8[4] = v4;
  v2[6] = sub_238108528;
  v2[7] = v8;
  v2[2] = MEMORY[0x277D85DD0];
  v2[3] = 1107296256;
  v2[4] = sub_238106D10;
  v2[5] = &block_descriptor_5;
  v9 = _Block_copy(v2 + 2);

  sub_238154A0C();
  v2[8] = MEMORY[0x277D84F90];
  sub_238105B24(&qword_27DEEBC88, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_238105B6C(&qword_27DEEBC90, &qword_27DEECFC0, &qword_23815ABE0);
  sub_23815537C();
  MEMORY[0x2383E97C0](0, v5, v13, v9);
  _Block_release(v9);

  (*(v14 + 8))(v13, v6);
  (*(v15 + 8))(v5, v16);

  v10 = v2[1];

  return v10();
}

uint64_t sub_238107EC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238107F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_238152A9C();
  }

  return result;
}

uint64_t type metadata accessor for _DDAskToAirDropManager(uint64_t a1)
{
  result = qword_27DEECF08;
  if (!qword_27DEECF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23810819C(uint64_t a1)
{
  sub_2380CAE70(319, &qword_27DEEB898, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_2380CAE70(319, &qword_27DEECF20, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_2380CAE70(319, &qword_27DEECF28, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_238108328(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_2381083A8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_238152A9C();
}

uint64_t sub_238108428()
{
  MEMORY[0x2383EA980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

uint64_t sub_238108470()
{
  result = arc4random_uniform(0xDBBA1u);
  if (result < 0xFFFE7961)
  {
    return sub_23815559C();
  }

  __break(1u);
  return result;
}

uint64_t sub_2381084E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7, v1);
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t static DDDevicePickerViewController.isSupported(_:using:)()
{
  v0 = sub_238154B2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_238130894())
  {
    v4 = sub_238154B1C();
    (*(v1 + 104))(v3, *MEMORY[0x277CE3920], v0);
    v5 = sub_2380BC6D8(v3, v4);

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

id DDDevicePickerViewController.init(browseDescriptor:parameters:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_238130894();
  if ((v4 & 1) != 0 && (sub_2380BDBF0(v4, v5) & 1) == 0)
  {
    result = sub_2381554EC();
    __break(1u);
  }

  else
  {
    v6 = sub_238152D6C();
    if (a2)
    {

      v7 = sub_238152CCC();
    }

    else
    {
      v7 = MEMORY[0x2383EA0E0]();
    }

    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBrowseDescriptor:v6 parameters:v7];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v9 = sub_238152E1C();
    (*(*(v9 - 8) + 8))(a1, v9);
    return v8;
  }

  return result;
}

id DDDevicePickerViewController.init(browseDescriptor:parameters:access:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_238152D6C();
  if (a2)
  {

    v5 = sub_238152CCC();
  }

  else
  {
    v5 = MEMORY[0x2383EA0E0]();
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBrowseDescriptor:v4 parameters:v5];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = sub_238152E1C();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t DDDevicePickerViewController.endpoint.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_238154F8C();
  v2[4] = sub_238154F7C();
  v4 = sub_238154F3C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_238108944, v4, v3);
}

uint64_t sub_238108944()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = sub_238152BAC();
  *v4 = v0;
  v4[1] = sub_238108A48;
  v6 = v0[2];

  return MEMORY[0x2821B6160](v6, 0x746E696F70646E65, 0xE800000000000000, sub_238109B80, v2, v5);
}

uint64_t sub_238108A48()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_238109CC4;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_238109CC8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_238108B64(uint64_t a1, void *a2)
{
  v10 = sub_238109C94;
  v11 = a1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_238108FE4;
  v9 = &block_descriptor_23_0;
  v4 = _Block_copy(&v6);

  [a2 setDevicePickerCompletionHandler_];
  _Block_release(v4);
  v10 = sub_238109CB0;
  v11 = a1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_238106D10;
  v9 = &block_descriptor_26;
  v5 = _Block_copy(&v6);

  [a2 setDevicePickerCanceledHandler_];
  _Block_release(v5);
}

void sub_238108CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_238152BAC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  if (a2)
  {
    sub_238152D2C();
    sub_238109C4C(&qword_27DEECFD0, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v14 = swift_allocError();
    swift_unknownObjectRetain();
    sub_238152D3C();
LABEL_3:
    sub_23815342C();

    return;
  }

  if (!a1)
  {
    v17 = sub_238152D2C();
    sub_238109C4C(&qword_27DEECFD0, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v14 = swift_allocError();
    *v18 = 22;
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277CD8FB0], v17);
    goto LABEL_3;
  }

  *v8 = a1;
  (*(v5 + 104))(v8, *MEMORY[0x277CD8AF8], v4);
  swift_unknownObjectRetain_n();
  v15 = nw_endpoint_copy_public_keys();
  if (v15)
  {
    v16 = v15;
    sub_238154EDC();
  }

  sub_238152B1C();
  v19 = *(v5 + 32);
  v19(v11, v8, v4);
  v19(v13, v11, v4);
  sub_23815343C();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v13, v4);
}

uint64_t sub_238108FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t DDDevicePickerViewController.browserResult.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_238154F8C();
  v2[4] = sub_238154F7C();
  v4 = sub_238154F3C();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_2381090F8, v4, v3);
}

uint64_t sub_2381090F8()
{
  v1 = v0[3];
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  *v4 = v0;
  v4[1] = sub_238109214;
  v6 = v0[2];

  return MEMORY[0x2821B6160](v6, 0x52726573776F7262, 0xED0000746C757365, sub_238109B88, v2, v5);
}

uint64_t sub_238109214()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_238109394;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_238109330;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_238109330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238109394()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_238109404(uint64_t a1, void *a2)
{
  v10 = sub_238109C10;
  v11 = a1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_2381099AC;
  v9 = &block_descriptor_6;
  v4 = _Block_copy(&v6);

  [a2 setDevicePickerDataCompletionHandler_];
  _Block_release(v4);
  v10 = sub_238109C30;
  v11 = a1;
  v6 = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v8 = sub_238106D10;
  v9 = &block_descriptor_20_0;
  v5 = _Block_copy(&v6);

  [a2 setDevicePickerCanceledHandler_];
  _Block_release(v5);
}

void sub_238109560(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-v7];
  v9 = sub_238152EBC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    sub_238152D2C();
    sub_238109C4C(&qword_27DEECFD0, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v14 = swift_allocError();
    swift_unknownObjectRetain();
    sub_238152D3C();
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      v17 = v11;
      sub_23815253C();
      swift_allocObject();
      sub_238085D80(a1, a2);
      sub_23815252C();
      sub_238109C4C(&qword_27DEECFD8, MEMORY[0x277CD9168], MEMORY[0x277CD9188]);
      sub_23815251C();

      (*(v10 + 16))(v8, v13, v17);
      (*(v10 + 56))(v8, 0, 1, v17);
      sub_23815343C();
      sub_238087244(a1, a2);
      sub_238105BC0(v8);
      (*(v10 + 8))(v13, v17);
      return;
    }

    v15 = sub_238152D2C();
    sub_238109C4C(&qword_27DEECFD0, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
    v14 = swift_allocError();
    *v16 = 22;
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277CD8FB0], v15);
  }

  sub_23815342C();
}

double sub_2381099AC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_23815275C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  swift_unknownObjectRetain();
  v5(v4, v8, a3);
  swift_unknownObjectRelease();
  sub_238087244(v4, v8);

  return result;
}

void sub_238109A5C()
{
  v0 = sub_238152D2C();
  sub_238109C4C(&qword_27DEECFD0, MEMORY[0x277CD8FC0], MEMORY[0x277CD8FD0]);
  v1 = swift_allocError();
  *v2 = 89;
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277CD8FB0], v0);
  sub_23815342C();
}

uint64_t sub_238109B48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

unint64_t sub_238109BBC()
{
  result = qword_27DEECFC8;
  if (!qword_27DEECFC8)
  {
    result = swift_getWitnessTable(asc_23815D9A0, &type metadata for DDDevicePairingAccess.Resolved, v0, v1);
    atomic_store(result, &qword_27DEECFC8);
  }

  return result;
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_238109C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238109CF8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_238153D1C();
  v62 = 1;
  sub_23810A0D0(&v49);
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v67 = v53;
  v68 = v54;
  v69 = v55;
  v70 = v56;
  v63 = v49;
  v64 = v50;
  v65 = v51;
  v66 = v52;
  v75[8] = v57;
  v75[9] = v58;
  v75[10] = v59;
  v75[4] = v53;
  v75[5] = v54;
  v75[6] = v55;
  v75[7] = v56;
  v75[0] = v49;
  v75[1] = v50;
  v74 = v60;
  v76 = v60;
  v75[2] = v51;
  v75[3] = v52;
  sub_2380712E4(&v63, v48, &qword_27DEECFE0, &qword_23815DA68);
  sub_238071284(v75, &qword_27DEECFE0, &qword_23815DA68);
  *(&v61[8] + 7) = v71;
  *(&v61[9] + 7) = v72;
  *(&v61[10] + 7) = v73;
  *(&v61[4] + 7) = v67;
  *(&v61[5] + 7) = v68;
  *(&v61[6] + 7) = v69;
  *(&v61[7] + 7) = v70;
  *(v61 + 7) = v63;
  *(&v61[1] + 7) = v64;
  *(&v61[2] + 7) = v65;
  *(&v61[11] + 7) = v74;
  *(&v61[3] + 7) = v66;
  v4 = v62;
  v5 = sub_2381540FC();
  sub_23815377C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v48[0] = 0;
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFE8, &unk_23815DA70) + 36));
  v15 = *(sub_238153A7C() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_238153DDC();
  (*(*(v17 - 8) + 104))(&v14->i8[v15], v16, v17);
  *v14 = vdupq_n_s64(0x4049000000000000uLL);
  sub_2381545CC();
  v18 = sub_23815460C();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA488, &qword_238157B08);
  *(v14->i64 + *(v19 + 52)) = v18;
  *(v14->i16 + *(v19 + 56)) = 256;
  v20 = sub_2381548DC();
  v22 = v21;
  v23 = (v14->i64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFF0, &qword_23815DA80) + 36));
  *v23 = v20;
  v23[1] = v22;
  v24 = v61[2];
  *(a2 + 65) = v61[3];
  *(a2 + 49) = v24;
  v25 = v61[0];
  *(a2 + 33) = v61[1];
  *(a2 + 17) = v25;
  v26 = v61[6];
  *(a2 + 129) = v61[7];
  *(a2 + 113) = v26;
  v27 = v61[4];
  *(a2 + 97) = v61[5];
  *(a2 + 81) = v27;
  *(a2 + 192) = *(&v61[10] + 15);
  *(a2 + 177) = v61[10];
  v28 = v61[8];
  *(a2 + 161) = v61[9];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 145) = v28;
  *(a2 + 208) = v5;
  *(a2 + 209) = v49;
  *(a2 + 212) = *(&v49 + 3);
  *(a2 + 216) = v7;
  *(a2 + 224) = v9;
  *(a2 + 232) = v11;
  *(a2 + 240) = v13;
  *(a2 + 248) = 0;
  LOBYTE(v3) = sub_2381540EC();
  sub_23815377C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFF8, &qword_23815DA88) + 36);
  *v37 = v3;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  LOBYTE(v3) = sub_23815411C();
  sub_23815377C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED000, &qword_23815DA90);
  v47 = a2 + *(result + 36);
  *v47 = v3;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  return result;
}

uint64_t sub_23810A0D0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23815468C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2381548DC();
  v23 = v8;
  v24 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v9 = sub_2381546CC();
  (*(v4 + 8))(v6, v3);
  sub_2381548DC();
  sub_2381538EC();
  LOBYTE(v52[0]) = 1;
  *&v37[3] = *&v37[27];
  *&v37[11] = *&v37[35];
  *&v37[19] = *&v37[43];
  LOBYTE(v6) = sub_2381540FC();
  v10 = sub_238153DFC();
  LOBYTE(v52[0]) = 1;
  sub_23810A44C(v38);
  *&v36[7] = v38[0];
  *&v36[23] = v38[1];
  *&v36[39] = v38[2];
  *&v36[55] = v39;
  v11 = v52[0];
  *&v40 = v7;
  v12 = v23;
  *(&v40 + 1) = v23;
  v41 = v9;
  v42 = 0;
  LOWORD(v43[0]) = 1;
  *&v43[3] = *&v37[23];
  *(&v43[2] + 2) = *&v37[16];
  *(&v43[1] + 2) = *&v37[8];
  *(v43 + 2) = *v37;
  BYTE8(v43[3]) = v6;
  *(&v43[3] + 9) = 256;
  v25 = v40;
  v26 = v9;
  *(v29 + 11) = *(&v43[2] + 11);
  v27 = v43[0];
  v28 = v43[1];
  v44[0] = v10;
  v44[1] = 0;
  v45[0] = v52[0];
  v13 = *&v36[16];
  *&v45[1] = *v36;
  *&v45[64] = *(&v39 + 1);
  *&v45[49] = *&v36[48];
  v15 = *&v36[32];
  v14 = *&v36[48];
  *&v45[33] = *&v36[32];
  v16 = *v36;
  *&v45[17] = *&v36[16];
  v29[0] = v43[2];
  v30 = v10;
  v31 = *v45;
  v33 = *&v45[32];
  v34 = *&v45[48];
  v32 = *&v45[16];
  v17 = v43[1];
  *(a2 + 32) = v43[0];
  *(a2 + 48) = v17;
  v18 = v26;
  *a2 = v25;
  *(a2 + 16) = v18;
  v19 = v31;
  *(a2 + 96) = v30;
  *(a2 + 112) = v19;
  v20 = v29[1];
  *(a2 + 64) = v29[0];
  *(a2 + 80) = v20;
  v21 = v34;
  *(a2 + 144) = v33;
  *(a2 + 160) = v21;
  *(a2 + 128) = v32;
  v35 = *&v45[64];
  *(a2 + 176) = *&v45[64];
  v46[0] = v10;
  v46[1] = 0;
  v47 = v11;
  v49 = v13;
  v50 = v15;
  *v51 = v14;
  *&v51[15] = *&v36[63];
  v48 = v16;
  sub_2380712E4(&v40, v52, &qword_27DEED008, &qword_23815DA98);
  sub_2380712E4(v44, v52, &qword_27DEEC998, &qword_23815DAA0);
  sub_238071284(v46, &qword_27DEEC998, &qword_23815DAA0);
  v52[0] = v24;
  v52[1] = v12;
  v52[2] = v9;
  v52[3] = 0;
  v53 = 1;
  v54 = *v37;
  v55 = *&v37[8];
  *v56 = *&v37[16];
  *&v56[14] = *&v37[23];
  v57 = v6;
  v58 = 256;
  return sub_238071284(v52, &qword_27DEED008, &qword_23815DA98);
}

uint64_t sub_23810A44C@<X0>(uint64_t a2@<X8>)
{
  sub_2380704A0();

  v3 = sub_23815438C();
  v5 = v4;
  v7 = v6;
  sub_2381542CC();
  v8 = sub_23815435C();
  v10 = v9;
  v12 = v11;

  sub_238070490(v3, v5, v7 & 1);

  sub_23815461C();
  v13 = sub_23815431C();
  v34 = v14;
  v35 = v13;
  v33 = v15;
  v36 = v16;

  sub_238070490(v8, v10, v12 & 1);

  v17 = sub_23815438C();
  v19 = v18;
  LOBYTE(v10) = v20;
  sub_2381542BC();
  v21 = sub_23815435C();
  v23 = v22;
  LOBYTE(v5) = v24;

  sub_238070490(v17, v19, v10 & 1);

  sub_23815463C();
  v25 = sub_23815431C();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_238070490(v21, v23, v5 & 1);

  *a2 = v35;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v29 & 1;
  *(a2 + 56) = v31;
  sub_238070430(v35, v34, v33 & 1);

  sub_238070430(v25, v27, v29 & 1);

  sub_238070490(v25, v27, v29 & 1);

  sub_238070490(v35, v34, v33 & 1);
}

uint64_t sub_23810A77C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23810A800()
{
  result = qword_27DEED020;
  if (!qword_27DEED020)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECFE8, &unk_23815DA70);
    v4[0] = sub_23810A8B8();
    v4[1] = sub_2380711D4(&qword_27DEED048, &qword_27DEECFF0, &qword_23815DA80, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED020);
  }

  return result;
}

unint64_t sub_23810A8B8()
{
  result = qword_27DEED028;
  if (!qword_27DEED028)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED030, &qword_23815DAA8);
    v4[0] = sub_2380711D4(&qword_27DEED038, &qword_27DEED040, &unk_23815DAB0, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED028);
  }

  return result;
}

double sub_23810A970@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v90 = a3;
  v70 = a2;
  v72 = a4;
  v89 = a1;
  v4 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED100, &qword_23815DCA8);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v71 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED108, &qword_23815DCB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v81 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v69 - v9;
  v10 = sub_23815426C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v77 = v4;
  if (v4 == 7)
  {
    sub_23815467C();
  }

  v80 = v14;
  v95 = sub_23810BE90(v89, v90);
  v96 = v15;
  sub_2380704A0();
  v16 = sub_23815438C();
  v18 = v17;
  v20 = v19;
  sub_23815423C();
  sub_2381541DC();
  sub_23815425C();

  (*(v11 + 104))(v13, *MEMORY[0x277CE0A10], v10);
  sub_23815429C();

  (*(v11 + 8))(v13, v10);
  v21 = sub_23815435C();
  v23 = v22;
  v25 = v24;

  sub_238070490(v16, v18, v20 & 1);

  LODWORD(v95) = sub_238153EEC();
  v86 = sub_23815432C();
  v85 = v26;
  LOBYTE(v18) = v27;
  v87 = v28;
  sub_238070490(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v83 = swift_getKeyPath();
  v82 = v18 & 1;
  v95 = sub_23810BF58(v89, v90);
  v96 = v29;
  v30 = sub_23815438C();
  v32 = v31;
  LOBYTE(v18) = v33;
  sub_23815417C();
  v34 = sub_23815435C();
  v36 = v35;
  LOBYTE(v23) = v37;

  sub_238070490(v30, v32, v18 & 1);

  LODWORD(v95) = sub_238153F0C();
  v75 = sub_23815432C();
  v74 = v38;
  v40 = v39;
  v76 = v41;
  sub_238070490(v34, v36, v23 & 1);

  v73 = swift_getKeyPath();
  v42 = 1;
  if (v77 > 3)
  {
    if (v77 > 5)
    {
      v43 = v88;
      v44 = v79;
      if (v77 != 6)
      {
        goto LABEL_15;
      }

      v45 = v40;
      v46 = 31;
      goto LABEL_14;
    }

    v45 = v40;
    v47 = v77 == 4;
    v48 = 21;
    v49 = 25;
    goto LABEL_10;
  }

  if (v77 > 1)
  {
    v45 = v40;
    v47 = v77 == 2;
    v48 = 17;
    v49 = 13;
LABEL_10:
    if (v47)
    {
      v46 = v48;
    }

    else
    {
      v46 = v49;
    }

    v43 = v88;
    v44 = v79;
    goto LABEL_14;
  }

  v43 = v88;
  v44 = v79;
  if (v77)
  {
    v45 = v40;
    v46 = 9;
LABEL_14:
    v50 = sub_23807CB28(v46);
    v52 = v51;
    v53 = swift_allocObject();
    *(v53 + 16) = v89;
    *(v53 + 24) = v70;
    *(v53 + 32) = v90;
    MEMORY[0x28223BE20](v53);
    *(&v69 - 2) = v50;
    *(&v69 - 1) = v52;
    v55 = v54;
    v56 = v71;
    sub_23815474C();

    v57 = sub_23815410C();
    v58 = v56 + *(v44 + 36);
    *v58 = v57;
    *(v58 + 8) = 0u;
    *(v58 + 24) = 0u;
    *(v58 + 40) = 1;
    sub_23810C028(v56, v43);
    v42 = 0;
    v40 = v45;
  }

LABEL_15:
  (*(v78 + 56))(v43, v42, 1, v44);
  v59 = v81;
  sub_2380712E4(v43, v81, &unk_27DEED108, &qword_23815DCB0);
  v60 = v72;
  *v72 = v80;
  *&v91 = v86;
  *(&v91 + 1) = v85;
  LOBYTE(v92) = v82;
  *(&v92 + 1) = *v106;
  DWORD1(v92) = *&v106[3];
  *(&v92 + 1) = v87;
  *&v93 = KeyPath;
  BYTE8(v93) = 1;
  *(&v93 + 9) = *v105;
  HIDWORD(v93) = *&v105[3];
  *&v94 = v83;
  *(&v94 + 1) = 0x3FE3333333333333;
  v61 = v91;
  v62 = v92;
  v63 = v93;
  *(v60 + 7) = v94;
  *(v60 + 5) = v63;
  *(v60 + 3) = v62;
  *(v60 + 1) = v61;
  v64 = v75;
  v65 = v74;
  v60[9] = v75;
  v60[10] = v65;
  *(v60 + 88) = v40 & 1;
  v66 = v73;
  v60[12] = v76;
  v60[13] = v66;
  *(v60 + 112) = 1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED118, &qword_23815DCE8);
  sub_2380712E4(v59, v60 + *(v67 + 80), &unk_27DEED108, &qword_23815DCB0);

  sub_2380712E4(&v91, &v95, &qword_27DEED120, &qword_23815DCF0);
  sub_238070430(v64, v65, v40 & 1);

  sub_238071284(v88, &unk_27DEED108, &qword_23815DCB0);
  sub_238071284(v59, &unk_27DEED108, &qword_23815DCB0);
  sub_238070490(v64, v65, v40 & 1);

  v95 = v86;
  v96 = v85;
  v97 = v82;
  *v98 = *v106;
  *&v98[3] = *&v106[3];
  v99 = v87;
  v100 = KeyPath;
  v101 = 1;
  *v102 = *v105;
  *&v102[3] = *&v105[3];
  v103 = v83;
  v104 = 0x3FE3333333333333;
  sub_238071284(&v95, &qword_27DEED120, &qword_23815DCF0);

  return result;
}

double sub_23810B268(uint64_t a1, uint64_t a2)
{
  sub_23815494C();
  sub_23815398C();

  return result;
}

uint64_t sub_23810B2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23815426C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[2] = a1;
  v23[3] = a2;
  sub_2380704A0();

  v10 = sub_23815438C();
  v12 = v11;
  v14 = v13;
  sub_23815419C();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0A10], v6);
  sub_23815429C();

  (*(v7 + 8))(v9, v6);
  v15 = sub_23815435C();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_238070490(v10, v12, v14 & 1);

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  return result;
}

uint64_t sub_23810B48C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

uint64_t sub_23810B500@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 1);
  v5 = v2[16];
  v6 = *v2;
  *a2 = sub_238153DEC();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED0F0, &qword_23815DC68);
  sub_23810A970(v6, v4, v5, (a2 + *(v7 + 44)));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED0F8, &qword_23815DCA0);
  v10 = a2 + *(result + 36);
  *v10 = KeyPath;
  *(v10 + 8) = 1;
  return result;
}

char *sub_23810B5A8()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED128, &qword_23815DCF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC17DeviceDiscoveryUI29_DDWirelessSettingsController__viewType;
  v12 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED0E0, &qword_23815DAE0);
  sub_238152A5C();
  (*(v3 + 32))(&v0[v6], v5, v2);
  v7 = [objc_allocWithZone(MEMORY[0x277D54D00]) init];
  *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI29_DDWirelessSettingsController_controller] = v7;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, sel_init);
  [*&v8[OBJC_IVAR____TtC17DeviceDiscoveryUI29_DDWirelessSettingsController_controller] setDelegate_];
  return v8;
}

void *sub_23810B730(void *result)
{
  if (result)
  {
    v2 = result;
    [result isWifiEnabled];
    [v2 isBluetoothEnabled];
    [v2 isWirelessAccessPointEnabled];
    [v2 deviceSupportsWAPI];
    if ([v2 isAirDropMDMRestricted])
    {
      SFIsClassroomEnabled();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    return sub_238152A9C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23810B944(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC17DeviceDiscoveryUI29_DDWirelessSettingsController_controller];
  [v2 setWifiEnabled_];
  [v2 setBluetoothEnabled_];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  return sub_238152A9C();
}

uint64_t type metadata accessor for _DDWirelessSettingsController(uint64_t a1)
{
  result = qword_27DEED0C8;
  if (!qword_27DEED0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23810BACC(uint64_t a1)
{
  sub_23810BB6C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23810BB6C(uint64_t a1)
{
  if (!qword_27DEED0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED0E0, &qword_23815DAE0);
    v1 = sub_238152AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEED0D8);
    }
  }
}

uint64_t sub_23810BBD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23810BC18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _DDNoContentView.ViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _DDNoContentView.ViewType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23810BDBC()
{
  result = qword_27DEED0E8;
  if (!qword_27DEED0E8)
  {
    result = swift_getWitnessTable(asc_23815DB6C, &type metadata for _DDNoContentView.ViewType, v0, v1);
    atomic_store(result, &qword_27DEED0E8);
  }

  return result;
}

uint64_t sub_23810BE90(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2)
  {
    v2 = 34;
  }

  else
  {
    v2 = 33;
  }

  if (a1 == 6)
  {
    v3 = 29;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 4)
  {
    v4 = 18;
  }

  else
  {
    v4 = 22;
  }

  if (a1 <= 5u)
  {
    v3 = v4;
  }

  if (a1 == 2)
  {
    v5 = 14;
  }

  else
  {
    v5 = 10;
  }

  if (a2 < 2u)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if (a1)
  {
    v7 = 6;
  }

  else
  {
    v7 = v6;
  }

  if (a1 > 1u)
  {
    v7 = v5;
  }

  if (a1 <= 3u)
  {
    return sub_23807CB28(v7);
  }

  else
  {
    return sub_23807CB28(v3);
  }
}

uint64_t sub_23810BF58(unsigned __int8 a1, char a2)
{
  if (a1 == 6)
  {
    v2 = 30;
  }

  else
  {
    v2 = 35;
  }

  if (a2)
  {
    v3 = 20;
  }

  else
  {
    v3 = 19;
  }

  if (a2)
  {
    v4 = 24;
  }

  else
  {
    v4 = 23;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  if (a2)
  {
    v5 = 16;
  }

  else
  {
    v5 = 15;
  }

  if (a2)
  {
    v6 = 12;
  }

  else
  {
    v6 = 11;
  }

  if (a1 != 2)
  {
    v5 = v6;
  }

  if (a2)
  {
    v7 = 8;
  }

  else
  {
    v7 = 7;
  }

  if (a1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 5;
  }

  if (a1 > 1u)
  {
    v8 = v5;
  }

  if (a1 <= 3u)
  {
    return sub_23807CB28(v8);
  }

  else
  {
    return sub_23807CB28(v2);
  }
}

uint64_t sub_23810BFD8()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7, v1);
}

uint64_t sub_23810C028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED100, &qword_23815DCA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23810C0B8()
{
  result = qword_27DEED130;
  if (!qword_27DEED130)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED0F8, &qword_23815DCA0);
    v4[0] = sub_2380711D4(&qword_27DEED138, &unk_27DEED140, &qword_23815DD00, MEMORY[0x277CE1198]);
    v4[1] = sub_2380711D4(&unk_27DEEAB30, &unk_27DEED150, &qword_238158400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED130);
  }

  return result;
}

uint64_t sub_23810C19C()
{
  v1 = sub_23815459C();
  MEMORY[0x28223BE20](v1);
  if (*(v0 + 8) && (*(v0 + 8) == 1 || *v0 > 2))
  {
    v4 = [objc_opt_self() systemGray2Color];
    sub_23815465C();
    v5 = sub_23815460C();

    return v5;
  }

  else
  {
    (*(v3 + 104))(&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
    return sub_23815464C();
  }
}

uint64_t sub_23810C384()
{
  v1 = sub_23815459C();
  MEMORY[0x28223BE20](v1);
  if (*(v0 + 8) && (*(v0 + 8) == 1 || *v0 > 2))
  {
    v5 = [objc_opt_self() labelColor];

    return sub_23815465C();
  }

  else
  {
    (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
    return sub_23815464C();
  }
}

uint64_t AirDropUIButtonStyle.init(style:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t AirDropUIButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v242 = a1;
  v247 = a2;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED160, &qword_23815DDA0);
  MEMORY[0x28223BE20](v204);
  v207 = &v195 - v3;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED168, &qword_23815DDA8);
  MEMORY[0x28223BE20](v205);
  v209 = &v195 - v4;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED170, &qword_23815DDB0);
  v5 = MEMORY[0x28223BE20](v246);
  v208 = &v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v210 = &v195 - v7;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED178, &qword_23815DDB8);
  MEMORY[0x28223BE20](v201);
  v203 = &v195 - v8;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED180, &qword_23815DDC0);
  MEMORY[0x28223BE20](v196);
  v195 = &v195 - v9;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED188, &qword_23815DDC8);
  v10 = MEMORY[0x28223BE20](v233);
  v202 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v206 = &v195 - v12;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED190, &qword_23815DDD0);
  MEMORY[0x28223BE20](v231);
  v232 = &v195 - v13;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED198, &qword_23815DDD8);
  MEMORY[0x28223BE20](v240);
  v234 = &v195 - v14;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1A0, &qword_23815DDE0);
  MEMORY[0x28223BE20](v224);
  v225 = &v195 - v15;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1A8, &qword_23815DDE8);
  MEMORY[0x28223BE20](v228);
  v227 = &v195 - v16;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1B0, &qword_23815DDF0);
  v17 = MEMORY[0x28223BE20](v230);
  v226 = &v195 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v229 = &v195 - v19;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1B8, &qword_23815DDF8);
  MEMORY[0x28223BE20](v241);
  v21 = &v195 - v20;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1C0, &qword_23815DE00);
  MEMORY[0x28223BE20](v235);
  v213 = &v195 - v22;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1C8, &qword_23815DE08);
  MEMORY[0x28223BE20](v212);
  v214 = &v195 - v23;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1D0, &qword_23815DE10);
  MEMORY[0x28223BE20](v211);
  v216 = &v195 - v24;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1D8, &qword_23815DE18);
  MEMORY[0x28223BE20](v215);
  v218 = &v195 - v25;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1E0, &qword_23815DE20);
  v26 = MEMORY[0x28223BE20](v223);
  v217 = &v195 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v219 = &v195 - v28;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1E8, &qword_23815DE28);
  MEMORY[0x28223BE20](v244);
  v245 = &v195 - v29;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1F0, &qword_23815DE30);
  MEMORY[0x28223BE20](v236);
  v238 = &v195 - v30;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED1F8, &qword_23815DE38);
  MEMORY[0x28223BE20](v220);
  v221 = &v195 - v31;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED200, &qword_23815DE40);
  MEMORY[0x28223BE20](v237);
  v222 = &v195 - v32;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED208, &qword_23815DE48);
  MEMORY[0x28223BE20](v243);
  v239 = &v195 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED210, &qword_23815DE50);
  MEMORY[0x28223BE20](v34);
  v36 = &v195 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED218, &qword_23815DE58);
  MEMORY[0x28223BE20](v37);
  v39 = &v195 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED220, &qword_23815DE60);
  MEMORY[0x28223BE20](v40);
  v197 = &v195 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED228, &qword_23815DE68);
  MEMORY[0x28223BE20](v42);
  v199 = &v195 - v43;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED230, &qword_23815DE70);
  MEMORY[0x28223BE20](v198);
  v200 = &v195 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED238, &qword_23815DE78);
  v46 = MEMORY[0x28223BE20](v45);
  v47 = MEMORY[0x28223BE20](v46);
  v50 = *v2;
  v51 = *(v2 + 8);
  if (v51 < 2)
  {
    v52 = v242;
    sub_238153F7C();
    v53 = sub_23815423C();
    KeyPath = swift_getKeyPath();
    v55 = &v21[*(v241 + 36)];
    *v55 = KeyPath;
    v55[1] = v53;
    sub_23810F1D8();
    v56 = v225;
    sub_2381544EC();
    sub_238071284(v21, &qword_27DEED1B8, &qword_23815DDF8);
    v57 = sub_2381540FC();
    v58 = v56 + *(v235 + 36);
    *v58 = v57;
    __asm { FMOV            V0.2D, #16.0 }

    *(v58 + 8) = _Q0;
    *(v58 + 24) = xmmword_23815DD90;
    *(v58 + 40) = 0;
    sub_2381548DC();
    sub_2381538EC();
    v64 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED300, &qword_23815DEF8) + 36));
    v65 = v251;
    *v64 = v250;
    v64[1] = v65;
    v64[2] = v252;
    v66 = v56 + *(v224 + 36);
    v67 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier(0) + 20);
    v68 = sub_238153F9C();
    (*(*(v68 - 8) + 16))(v66 + v67, v52, v68);
    *v66 = v50;
    *(v66 + 8) = v51;
    if (sub_238153F8C())
    {
      v248 = v50;
      v249 = v51;
      v69 = sub_23810C19C();
    }

    else
    {
      v248 = v50;
      v249 = v51;
      v69 = sub_23810C384();
    }

    v91 = v69;
    v92 = v232;
    v93 = v230;
    v94 = swift_getKeyPath();
    v95 = v227;
    sub_23807121C(v56, v227, &qword_27DEED1A0, &qword_23815DDE0);
    v96 = (v95 + *(v228 + 36));
    *v96 = v94;
    v96[1] = v91;
    v97 = v95;
    v98 = v226;
    sub_23807121C(v97, v226, &qword_27DEED1A8, &qword_23815DDE8);
    *(v98 + *(v93 + 36)) = 256;
    v99 = &qword_27DEED1B0;
    v100 = &qword_23815DDF0;
    v101 = v229;
    sub_23807121C(v98, v229, &qword_27DEED1B0, &qword_23815DDF0);
    sub_2380712E4(v101, v92, &qword_27DEED1B0, &qword_23815DDF0);
    swift_storeEnumTagMultiPayload();
    sub_23810F34C();
    sub_23810F574();
    v102 = v234;
    sub_238153ECC();
    v103 = &qword_27DEED198;
    v104 = &qword_23815DDD8;
    sub_2380712E4(v102, v238, &qword_27DEED198, &qword_23815DDD8);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    sub_23810EA70();
    sub_23810F2C0();
    v144 = v239;
    sub_238153ECC();
    sub_238071284(v102, v103, v104);
    sub_2380712E4(v144, v245, &qword_27DEED208, &qword_23815DE48);
    swift_storeEnumTagMultiPayload();
    sub_23810E9E4();
    sub_23810F850();
LABEL_18:
    sub_238153ECC();
    sub_238071284(v144, &qword_27DEED208, &qword_23815DE48);
    return sub_238071284(v101, v99, v100);
  }

  v70 = v241;
  if (v50 > 2)
  {
    v105 = v242;
    if (v50 == 3)
    {
      v235 = v49;
      v241 = &v195 - v48;
      v106 = v47;
      sub_238153F7C();
      *&v36[*(v34 + 36)] = sub_238153EEC();
      sub_23810ED90();
      sub_2381544EC();
      sub_238071284(v36, &qword_27DEED210, &qword_23815DE50);
      v107 = sub_2381540FC();
      sub_23815377C();
      v108 = &v39[*(v37 + 36)];
      *v108 = v107;
      *(v108 + 1) = v109;
      *(v108 + 2) = v110;
      *(v108 + 3) = v111;
      *(v108 + 4) = v112;
      v108[40] = 0;
      sub_2381548DC();
      sub_238153A8C();
      v113 = v197;
      sub_23807121C(v39, v197, &qword_27DEED218, &qword_23815DE58);
      v114 = (v113 + *(v40 + 36));
      v115 = v255;
      v114[4] = v254;
      v114[5] = v115;
      v114[6] = v256;
      v116 = v251;
      *v114 = v250;
      v114[1] = v116;
      v117 = v253;
      v114[2] = v252;
      v114[3] = v117;
      v118 = v199;
      v119 = &v199[*(v42 + 36)];
      v120 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier(0) + 20);
      v121 = sub_238153F9C();
      (*(*(v121 - 8) + 16))(&v119[v120], v105, v121);
      *v119 = 3;
      v119[8] = 2;
      sub_23807121C(v113, v118, &qword_27DEED220, &qword_23815DE60);
      v122 = sub_238153F8C();
      v123 = v245;
      v248 = 3;
      v249 = 2;
      if (v122)
      {
        v124 = sub_23810C19C();
      }

      else
      {
        v124 = sub_23810C384();
      }

      v173 = v124;
      v174 = swift_getKeyPath();
      v175 = v200;
      sub_23807121C(v118, v200, &qword_27DEED228, &qword_23815DE68);
      v176 = (v175 + *(v198 + 36));
      *v176 = v174;
      v176[1] = v173;
      v177 = v235;
      v178 = (v235 + *(v106 + 36));
      v179 = *(sub_238153A7C() + 20);
      v180 = *MEMORY[0x277CE0118];
      v181 = sub_238153DDC();
      (*(*(v181 - 8) + 104))(&v178[v179], v180, v181);
      __asm { FMOV            V0.2D, #12.0 }

      *v178 = _Q0;
      *&v178[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)] = 256;
      sub_23807121C(v175, v177, &qword_27DEED230, &qword_23815DE70);
      v99 = &qword_27DEED238;
      v100 = &qword_23815DE78;
      v101 = v241;
      sub_23807121C(v177, v241, &qword_27DEED238, &qword_23815DE78);
      sub_2380712E4(v101, v221, &qword_27DEED238, &qword_23815DE78);
      swift_storeEnumTagMultiPayload();
      sub_23810EAFC();
      sub_23810EEC0();
      v183 = v222;
      sub_238153ECC();
      sub_2380712E4(v183, v238, &qword_27DEED200, &qword_23815DE40);
      swift_storeEnumTagMultiPayload();
      sub_23810EA70();
      sub_23810F2C0();
      v144 = v239;
      sub_238153ECC();
      sub_238071284(v183, &qword_27DEED200, &qword_23815DE40);
      sub_2380712E4(v144, v123, &qword_27DEED208, &qword_23815DE48);
      swift_storeEnumTagMultiPayload();
      sub_23810E9E4();
      sub_23810F850();
      goto LABEL_18;
    }

    v146 = v207;
    sub_238153F7C();
    v147 = sub_2381542CC();
    v148 = swift_getKeyPath();
    v149 = &v146[*(v70 + 36)];
    *v149 = v148;
    v149[1] = v147;
    LODWORD(v147) = sub_238153EEC();
    *&v146[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED240, &qword_23815DEB0) + 36)] = v147;
    LOBYTE(v147) = sub_2381540FC();
    v150 = &v146[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED248, &qword_23815DEB8) + 36)];
    *v150 = v147;
    __asm { FMOV            V0.2D, #9.0 }

    *(v150 + 8) = _Q0;
    *(v150 + 24) = xmmword_23815DD70;
    v150[40] = 0;
    v152 = &v146[*(v204 + 36)];
    v153 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier(0) + 20);
    v154 = sub_238153F9C();
    (*(*(v154 - 8) + 16))(&v152[v153], v105, v154);
    *v152 = 4;
    v152[8] = 2;
    v155 = sub_238153F8C();
    v156 = v246;
    v157 = v245;
    *&v250 = 4;
    BYTE8(v250) = 2;
    if (v155)
    {
      v158 = sub_23810C19C();
    }

    else
    {
      v158 = sub_23810C384();
    }

    v184 = v158;
    v185 = swift_getKeyPath();
    v186 = v146;
    v187 = v209;
    sub_23807121C(v186, v209, &qword_27DEED160, &qword_23815DDA0);
    v188 = (v187 + *(v205 + 36));
    *v188 = v185;
    v188[1] = v184;
    v189 = v208;
    v190 = &v208[*(v156 + 36)];
    v191 = *(sub_238153A7C() + 20);
    v192 = *MEMORY[0x277CE0118];
    v193 = sub_238153DDC();
    (*(*(v193 - 8) + 104))(&v190[v191], v192, v193);
    __asm { FMOV            V0.2D, #12.0 }

    *v190 = _Q0;
    *&v190[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC338, &qword_23815BC80) + 36)] = 256;
    sub_23807121C(v187, v189, &qword_27DEED168, &qword_23815DDA8);
    v168 = &qword_27DEED170;
    v169 = &qword_23815DDB0;
    v170 = v210;
    sub_23807121C(v189, v210, &qword_27DEED170, &qword_23815DDB0);
    sub_2380712E4(v170, v157, &qword_27DEED170, &qword_23815DDB0);
    swift_storeEnumTagMultiPayload();
    sub_23810E9E4();
    sub_23810F850();
    sub_238153ECC();
  }

  else
  {
    v71 = v242;
    if (v50 < 2)
    {
      sub_238153F7C();
      v72 = sub_23815424C();
      v73 = swift_getKeyPath();
      v74 = &v21[*(v70 + 36)];
      *v74 = v73;
      v74[1] = v72;
      sub_23810F1D8();
      v75 = v213;
      sub_2381544EC();
      sub_238071284(v21, &qword_27DEED1B8, &qword_23815DDF8);
      LOBYTE(v72) = sub_2381540FC();
      sub_23815377C();
      v76 = v75 + *(v235 + 36);
      *v76 = v72;
      *(v76 + 8) = v77;
      *(v76 + 16) = v78;
      *(v76 + 24) = v79;
      *(v76 + 32) = v80;
      *(v76 + 40) = 0;
      sub_2381548DC();
      sub_238153A8C();
      v81 = v214;
      sub_23807121C(v75, v214, &qword_27DEED1C0, &qword_23815DE00);
      v82 = (v81 + *(v212 + 36));
      v83 = v255;
      v82[4] = v254;
      v82[5] = v83;
      v82[6] = v256;
      v84 = v251;
      *v82 = v250;
      v82[1] = v84;
      v85 = v253;
      v82[2] = v252;
      v82[3] = v85;
      v86 = v216;
      v87 = &v216[*(v211 + 36)];
      v88 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier(0) + 20);
      v89 = sub_238153F9C();
      (*(*(v89 - 8) + 16))(&v87[v88], v71, v89);
      *v87 = v50;
      v87[8] = 2;
      sub_23807121C(v81, v86, &qword_27DEED1C8, &qword_23815DE08);
      if (sub_238153F8C())
      {
        v248 = v50;
        v249 = 2;
        v90 = sub_23810C19C();
      }

      else
      {
        v248 = v50;
        v249 = 2;
        v90 = sub_23810C384();
      }

      v135 = v90;
      v136 = swift_getKeyPath();
      v137 = v86;
      v138 = v218;
      sub_23807121C(v137, v218, &qword_27DEED1D0, &qword_23815DE10);
      v139 = (v138 + *(v215 + 36));
      *v139 = v136;
      v139[1] = v135;
      v140 = v217;
      v141 = &v217[*(v223 + 36)];
      v142 = *MEMORY[0x277CE0118];
      v143 = sub_238153DDC();
      (*(*(v143 - 8) + 104))(v141, v142, v143);
      *&v141[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED2D0, &qword_23815DEF0) + 36)] = 256;
      sub_23807121C(v138, v140, &qword_27DEED1D8, &qword_23815DE18);
      v99 = &qword_27DEED1E0;
      v100 = &qword_23815DE20;
      v101 = v219;
      sub_23807121C(v140, v219, &qword_27DEED1E0, &qword_23815DE20);
      sub_2380712E4(v101, v221, &qword_27DEED1E0, &qword_23815DE20);
      swift_storeEnumTagMultiPayload();
      sub_23810EAFC();
      sub_23810EEC0();
      v102 = v222;
      sub_238153ECC();
      v103 = &qword_27DEED200;
      v104 = &qword_23815DE40;
      sub_2380712E4(v102, v238, &qword_27DEED200, &qword_23815DE40);
      goto LABEL_17;
    }

    v125 = v203;
    sub_238153F7C();
    v126 = sub_2381542CC();
    v127 = swift_getKeyPath();
    v128 = (v125 + *(v70 + 36));
    *v128 = v127;
    v128[1] = v126;
    LOBYTE(v126) = sub_2381540FC();
    v129 = v125 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED338, &qword_23815DF08) + 36);
    *v129 = v126;
    __asm { FMOV            V0.2D, #10.0 }

    *(v129 + 8) = _Q0;
    *(v129 + 24) = xmmword_23815DD80;
    *(v129 + 40) = 0;
    v131 = v125 + *(v201 + 36);
    v132 = *(type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier(0) + 20);
    v133 = sub_238153F9C();
    (*(*(v133 - 8) + 16))(v131 + v132, v71, v133);
    *v131 = 2;
    *(v131 + 8) = 2;
    if (sub_238153F8C())
    {
      *&v250 = 2;
      BYTE8(v250) = 2;
      v134 = sub_23810C19C();
    }

    else
    {
      *&v250 = 2;
      BYTE8(v250) = 2;
      v134 = sub_23810C384();
    }

    v159 = v134;
    v160 = v245;
    v161 = v233;
    v162 = v232;
    v163 = v196;
    v164 = v195;
    v165 = swift_getKeyPath();
    sub_23807121C(v125, v164, &qword_27DEED178, &qword_23815DDB8);
    v166 = (v164 + *(v163 + 36));
    *v166 = v165;
    v166[1] = v159;
    v167 = v202;
    sub_23807121C(v164, v202, &qword_27DEED180, &qword_23815DDC0);
    *(v167 + *(v161 + 36)) = 256;
    v168 = &qword_27DEED188;
    v169 = &qword_23815DDC8;
    v170 = v206;
    sub_23807121C(v167, v206, &qword_27DEED188, &qword_23815DDC8);
    sub_2380712E4(v170, v162, &qword_27DEED188, &qword_23815DDC8);
    swift_storeEnumTagMultiPayload();
    sub_23810F34C();
    sub_23810F574();
    v171 = v234;
    sub_238153ECC();
    sub_2380712E4(v171, v238, &qword_27DEED198, &qword_23815DDD8);
    swift_storeEnumTagMultiPayload();
    sub_23810EA70();
    sub_23810F2C0();
    v172 = v239;
    sub_238153ECC();
    sub_238071284(v171, &qword_27DEED198, &qword_23815DDD8);
    sub_2380712E4(v172, v160, &qword_27DEED208, &qword_23815DE48);
    swift_storeEnumTagMultiPayload();
    sub_23810E9E4();
    sub_23810F850();
    sub_238153ECC();
    sub_238071284(v172, &qword_27DEED208, &qword_23815DE48);
  }

  return sub_238071284(v170, v168, v169);
}

uint64_t sub_23810E26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED388, &qword_23815E038);
  v3 = MEMORY[0x28223BE20](v34);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED390, &qword_23815E040);
  MEMORY[0x28223BE20](v33);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED398, &qword_23815E048);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = *v2;
  v14 = *(v2 + 8);
  type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier(0);
  if ((sub_238153F8C() & 1) == 0 && (v14 == 1 || v14 == 2 && (v13 - 3) <= 1))
  {
    v15 = sub_2381540FC();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED3A0, &qword_23815E050);
    (*(*(v16 - 8) + 16))(v12, v32, v16);
    v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED3B8, &qword_23815E058) + 36)] = v15;
    KeyPath = swift_getKeyPath();
    v18 = &v12[*(v10 + 36)];
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED3E0, &unk_23815E068) + 28);
    v20 = sub_23815488C();
    (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
    *v18 = KeyPath;
    v21 = &qword_27DEED398;
    v22 = &qword_23815E048;
    sub_2380712E4(v12, v9, &qword_27DEED398, &qword_23815E048);
    swift_storeEnumTagMultiPayload();
    sub_23810FED8();
    sub_238110074();
    sub_238153ECC();
    v23 = v12;
  }

  else
  {
    v24 = *v2;
    v25 = *(v2 + 8);
    if (sub_238153F8C())
    {
      v36 = v24;
      v37 = v25;
      v26 = sub_23810C384();
    }

    else
    {
      v36 = v24;
      v37 = v25;
      v26 = sub_23810C19C();
    }

    v27 = v26;
    v28 = sub_2381540FC();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED3A0, &qword_23815E050);
    (*(*(v29 - 8) + 16))(v5, v32, v29);
    v30 = &v5[*(v34 + 36)];
    *v30 = v27;
    v30[8] = v28;
    v21 = &qword_27DEED388;
    v22 = &qword_23815E038;
    sub_23807121C(v5, v7, &qword_27DEED388, &qword_23815E038);
    sub_2380712E4(v7, v9, &qword_27DEED388, &qword_23815E038);
    swift_storeEnumTagMultiPayload();
    sub_23810FED8();
    sub_238110074();
    sub_238153ECC();
    v23 = v7;
  }

  return sub_238071284(v23, v21, v22);
}

uint64_t sub_23810E678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED3F0, &qword_23815E0A8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2380712E4(a1, &v5 - v3, &qword_27DEED3F0, &qword_23815E0A8);
  return sub_238153BCC();
}

uint64_t sub_23810E74C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238153C4C();
  *a1 = result;
  return result;
}

uint64_t sub_23810E7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238153B4C();
  *a1 = result;
  return result;
}

BOOL _s17DeviceDiscoveryUI20AirDropUIButtonStyleV0G0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      return v4 == 1 && v2 == v3;
    }

    if (*&v2 <= 1)
    {
      if (v2 == 0.0)
      {
        return v4 == 2 && v3 == 0.0;
      }

      else
      {
        return v4 == 2 && *&v3 == 1;
      }
    }

    else if (*&v2 == 2)
    {
      return v4 == 2 && *&v3 == 2;
    }

    else
    {
      if (*&v2 == 3)
      {
        return v4 == 2 && *&v3 == 3;
      }

      return v4 == 2 && *&v3 == 4;
    }
  }

  else
  {
    return !*(a2 + 8) && v2 == v3;
  }
}

uint64_t sub_23810E8E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238153C4C();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier(uint64_t a1)
{
  result = qword_27DEED378;
  if (!qword_27DEED378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23810E98C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238153B4C();
  *a1 = result;
  return result;
}

unint64_t sub_23810E9E4()
{
  result = qword_27DEED250;
  if (!qword_27DEED250)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED208, &qword_23815DE48);
    v4[0] = sub_23810EA70();
    v4[1] = sub_23810F2C0();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEED250);
  }

  return result;
}

unint64_t sub_23810EA70()
{
  result = qword_27DEED258;
  if (!qword_27DEED258)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED200, &qword_23815DE40);
    v4[0] = sub_23810EAFC();
    v4[1] = sub_23810EEC0();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEED258);
  }

  return result;
}

unint64_t sub_23810EAFC()
{
  result = qword_27DEED260;
  if (!qword_27DEED260)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED238, &qword_23815DE78);
    v4[0] = sub_23810EBB4();
    v4[1] = sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED260);
  }

  return result;
}

unint64_t sub_23810EBB4()
{
  result = qword_27DEED268;
  if (!qword_27DEED268)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED230, &qword_23815DE70);
    v4[0] = sub_23810F710(&qword_27DEED270, &qword_27DEED228, &qword_23815DE68, sub_23810EC98);
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED268);
  }

  return result;
}

unint64_t sub_23810ECC8()
{
  result = qword_27DEED280;
  if (!qword_27DEED280)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED218, &qword_23815DE58);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED210, &qword_23815DE50);
    v4[3] = sub_23810ED90();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED280);
  }

  return result;
}

unint64_t sub_23810ED90()
{
  result = qword_27DEED288;
  if (!qword_27DEED288)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED210, &qword_23815DE50);
    v4[0] = sub_23810EE78(&qword_27DEECB40, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    v4[1] = sub_2380711D4(&qword_27DEEBEE0, &qword_27DEEBEE8, &qword_23815B088, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED288);
  }

  return result;
}

uint64_t sub_23810EE78(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23810EEC0()
{
  result = qword_27DEED298;
  if (!qword_27DEED298)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1E0, &qword_23815DE20);
    v4[0] = sub_23810EF78();
    v4[1] = sub_2380711D4(&qword_27DEED2C8, &qword_27DEED2D0, &qword_23815DEF0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED298);
  }

  return result;
}

unint64_t sub_23810EF78()
{
  result = qword_27DEED2A0;
  if (!qword_27DEED2A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1D8, &qword_23815DE18);
    v4[0] = sub_23810F710(&qword_27DEED2A8, &qword_27DEED1D0, &qword_23815DE10, sub_23810F05C);
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED2A0);
  }

  return result;
}

uint64_t sub_23810F08C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23810F110()
{
  result = qword_27DEED2B8;
  if (!qword_27DEED2B8)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1C0, &qword_23815DE00);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1B8, &qword_23815DDF8);
    v4[3] = sub_23810F1D8();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED2B8);
  }

  return result;
}

unint64_t sub_23810F1D8()
{
  result = qword_27DEED2C0;
  if (!qword_27DEED2C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1B8, &qword_23815DDF8);
    v4[0] = sub_23810EE78(&qword_27DEECB40, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    v4[1] = sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED2C0);
  }

  return result;
}

unint64_t sub_23810F2C0()
{
  result = qword_27DEED2D8;
  if (!qword_27DEED2D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED198, &qword_23815DDD8);
    v4[0] = sub_23810F34C();
    v4[1] = sub_23810F574();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEED2D8);
  }

  return result;
}

unint64_t sub_23810F34C()
{
  result = qword_27DEED2E0;
  if (!qword_27DEED2E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1B0, &qword_23815DDF0);
    v4[0] = sub_23810F404();
    v4[1] = sub_2380711D4(&qword_27DEED308, &qword_27DEED310, &qword_23815DF00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED2E0);
  }

  return result;
}

unint64_t sub_23810F404()
{
  result = qword_27DEED2E8;
  if (!qword_27DEED2E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED1A8, &qword_23815DDE8);
    v4[0] = sub_23810F710(&qword_27DEED2F0, &qword_27DEED1A0, &qword_23815DDE0, sub_23810F4E8);
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED2E8);
  }

  return result;
}

unint64_t sub_23810F4E8()
{
  result = qword_27DEED2F8;
  if (!qword_27DEED2F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED300, &qword_23815DEF8);
    v4[0] = sub_23810F110();
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED2F8);
  }

  return result;
}

unint64_t sub_23810F574()
{
  result = qword_27DEED318;
  if (!qword_27DEED318)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED188, &qword_23815DDC8);
    v4[0] = sub_23810F62C();
    v4[1] = sub_2380711D4(&qword_27DEED308, &qword_27DEED310, &qword_23815DF00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED318);
  }

  return result;
}

unint64_t sub_23810F62C()
{
  result = qword_27DEED320;
  if (!qword_27DEED320)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED180, &qword_23815DDC0);
    v4[0] = sub_23810F710(&qword_27DEED328, &qword_27DEED178, &qword_23815DDB8, sub_23810F7C4);
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED320);
  }

  return result;
}

uint64_t sub_23810F710(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = sub_23810EE78(&qword_27DEED290, type metadata accessor for AirDropUIButtonStyle.BackgroundStyleModifier, byte_23815DFE8);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23810F7C4()
{
  result = qword_27DEED330;
  if (!qword_27DEED330)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED338, &qword_23815DF08);
    v4[0] = sub_23810F1D8();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED330);
  }

  return result;
}

unint64_t sub_23810F850()
{
  result = qword_27DEED340;
  if (!qword_27DEED340)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED170, &qword_23815DDB0);
    v4[0] = sub_23810F908();
    v4[1] = sub_2380711D4(&qword_27DEEC850, &qword_27DEEC338, &qword_23815BC80, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED340);
  }

  return result;
}

unint64_t sub_23810F908()
{
  result = qword_27DEED348;
  if (!qword_27DEED348)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED168, &qword_23815DDA8);
    v4[0] = sub_23810F710(&qword_27DEED350, &qword_27DEED160, &qword_23815DDA0, sub_23810F9EC);
    v4[1] = sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED348);
  }

  return result;
}

unint64_t sub_23810F9EC()
{
  result = qword_27DEED358;
  if (!qword_27DEED358)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED248, &qword_23815DEB8);
    v4[0] = sub_23810FA78();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED358);
  }

  return result;
}

unint64_t sub_23810FA78()
{
  result = qword_27DEED360;
  if (!qword_27DEED360)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED240, &qword_23815DEB0);
    v4[0] = sub_23810F1D8();
    v4[1] = sub_2380711D4(&qword_27DEEBEE0, &qword_27DEEBEE8, &qword_23815B088, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED360);
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

uint64_t sub_23810FB74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23810FBC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23810FC04(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_23810FC1C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_23810FC48()
{
  result = qword_27DEED368;
  if (!qword_27DEED368)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED370, &qword_23815DFC8);
    v4[0] = sub_23810E9E4();
    v4[1] = sub_23810F850();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEED368);
  }

  return result;
}

uint64_t sub_23810FCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 8);
    if (v4 > 2)
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
    v8 = sub_238153F9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23810FDA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_238153F9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23810FE40(uint64_t a1)
{
  result = sub_238153F9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23810FED8()
{
  result = qword_27DEED3A8;
  if (!qword_27DEED3A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED398, &qword_23815E048);
    v4[0] = sub_23810FF90();
    v4[1] = sub_2380711D4(&qword_27DEED3D8, &qword_27DEED3E0, &unk_23815E068, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED3A8);
  }

  return result;
}

unint64_t sub_23810FF90()
{
  result = qword_27DEED3B0;
  if (!qword_27DEED3B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED3B8, &qword_23815E058);
    v4[0] = sub_2380711D4(&qword_27DEED3C0, &qword_27DEED3A0, &qword_23815E050, MEMORY[0x277CE04B0]);
    v4[1] = sub_2380711D4(&qword_27DEED3C8, &qword_27DEED3D0, &qword_23815E060, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED3B0);
  }

  return result;
}

unint64_t sub_238110074()
{
  result = qword_27DEED3E8;
  if (!qword_27DEED3E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED388, &qword_23815E038);
    v4[0] = sub_2380711D4(&qword_27DEED3C0, &qword_27DEED3A0, &qword_23815E050, MEMORY[0x277CE04B0]);
    v4[1] = sub_2380711D4(&qword_27DEEB230, &qword_27DEEB238, &qword_2381596B0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED3E8);
  }

  return result;
}

unint64_t sub_238110184()
{
  result = qword_27DEED3F8;
  if (!qword_27DEED3F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED400, &unk_23815E0B0);
    v4[0] = sub_23810FED8();
    v4[1] = sub_238110074();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEED3F8);
  }

  return result;
}

void sub_238110218(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void *sub_2381102A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData + 8) >> 60 == 15)
  {
    v8 = sub_238153DEC();
    sub_238110874(a1, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v20, __src, sizeof(v20));
    sub_2380712E4(__dst, v22, &qword_27DEED420, &qword_23815E2B0);
    sub_238071284(v20, &qword_27DEED420, &qword_23815E2B0);
    memcpy(&v18[7], __dst, 0x130uLL);
    sub_2381548DC();
    sub_238153A8C();
    v9 = sub_2381540FC();
    sub_2381545CC();
    v10 = sub_23815462C();

    v11 = sub_2381540FC();
    v22[0] = v8;
    LOBYTE(v22[1]) = 1;
    memcpy(&v22[1] + 1, v18, 0x137uLL);
    *(&v22[24] + 8) = v21[4];
    *(&v22[25] + 8) = v21[5];
    *(&v22[26] + 8) = v21[6];
    *(&v22[20] + 8) = v21[0];
    *(&v22[21] + 8) = v21[1];
    *(&v22[22] + 8) = v21[2];
    *(&v22[23] + 8) = v21[3];
    BYTE8(v22[27]) = v9;
    *&v22[28] = v10;
    BYTE8(v22[28]) = v11;
    sub_238111328(v22);
    memcpy(v17, v22, sizeof(v17));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED480, &qword_23815E2E8);
    sub_23815472C();
    v16 = __src[0];
    v12 = *&__src[1];
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v22[0] = v16;
    *&v22[1] = v12;
    *(&v22[1] + 1) = sub_238111614;
    v22[2] = v13;
    *&v22[3] = 0;
    sub_238111620(v22);
    memcpy(v17, v22, sizeof(v17));

    v14 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED428, &qword_23815E2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED430, &qword_23815E2C0);
  sub_238111334();
  sub_238111414();
  sub_238153ECC();
  return memcpy(a4, __src, 0x1CAuLL);
}

void sub_238110594(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  if (*(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData + 8) >> 60 == 15 || (v7 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterConfiguration, !*(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterConfiguration)))
  {
    aBlock = a2;
    v22 = a3;
    v27 = 0;
    swift_retain_n();

    v20 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED480, &qword_23815E2E8);
    sub_23815471C();
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
    v12 = objc_allocWithZone(MEMORY[0x277D3EA90]);

    v13 = a2;

    v14 = [v12 initWithTitleString:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:v8 personalPoster:{v9, v10, v11, v8, v9, v10, v11}];
    v15 = *(a1 + v7);
    if (v15)
    {
      v16 = v14;
      v17 = [objc_allocWithZone(MEMORY[0x277D3EB08]) initWithConfiguration:v15 context:v14];
      v18 = swift_allocObject();
      *(v18 + 16) = sub_238111670;
      *(v18 + 24) = v6;
      v25 = sub_2381116B4;
      v26 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_238110218;
      v24 = &block_descriptor_7;
      v19 = _Block_copy(&aBlock);

      [v17 snapshotWithOptions:2 forScreen:0 completionBlock:v19];

      _Block_release(v19);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_238110820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED480, &qword_23815E2E8);
  return sub_23815471C();
}

uint64_t sub_238110874@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_2381548DC();
  sub_2381538EC();
  v6 = v38;
  v32 = v40;
  v33 = v36;
  v31 = v41;
  v49 = 1;
  v48 = v37;
  v47 = v39;
  v7 = sub_238153D1C();
  v34[0] = 1;
  sub_238110BC4(a1, &v67);
  v56 = *&v68[80];
  v57 = *&v68[96];
  v58 = *&v68[112];
  v52 = *&v68[16];
  v53 = *&v68[32];
  v54 = *&v68[48];
  v55 = *&v68[64];
  v50 = v67;
  v51 = *v68;
  v60[6] = *&v68[80];
  v60[7] = *&v68[96];
  v60[8] = *&v68[112];
  v60[2] = *&v68[16];
  v60[3] = *&v68[32];
  v60[4] = *&v68[48];
  v60[5] = *&v68[64];
  v59 = v68[128];
  v61 = v68[128];
  v60[0] = v67;
  v60[1] = *v68;
  sub_2380712E4(&v50, &v65, &qword_27DEED488, &qword_23815E2F0);
  sub_238071284(v60, &qword_27DEED488, &qword_23815E2F0);
  *&v35[103] = v56;
  *&v35[119] = v57;
  *&v35[135] = v58;
  *&v35[39] = v52;
  *&v35[55] = v53;
  *&v35[71] = v54;
  *&v35[87] = v55;
  *&v35[7] = v50;
  v35[151] = v59;
  *&v35[23] = v51;
  sub_2381548DC();
  sub_2381538EC();
  v65 = v7;
  v66[0] = 1;
  *&v66[17] = *&v35[16];
  v9 = *v35;
  v8 = *&v35[16];
  *&v66[1] = *v35;
  *&v66[81] = *&v35[80];
  v11 = *&v35[64];
  v10 = *&v35[80];
  *&v66[65] = *&v35[64];
  *&v66[49] = *&v35[48];
  v13 = *&v35[32];
  v12 = *&v35[48];
  *&v66[33] = *&v35[32];
  v14 = *&v35[144];
  *&v66[145] = *&v35[144];
  v15 = *&v35[112];
  *&v66[129] = *&v35[128];
  v16 = *&v35[128];
  *&v66[113] = *&v35[112];
  v17 = *&v35[96];
  *&v66[97] = *&v35[96];
  v18 = *&v66[128];
  *(a4 + 192) = *&v66[112];
  *(a4 + 208) = v18;
  *(a4 + 217) = *&v66[137];
  v19 = *&v66[64];
  *(a4 + 128) = *&v66[48];
  *(a4 + 144) = v19;
  v20 = *&v66[96];
  *(a4 + 160) = *&v66[80];
  *(a4 + 176) = v20;
  v21 = *v66;
  *(a4 + 64) = v65;
  *(a4 + 80) = v21;
  v22 = *&v66[32];
  *(a4 + 96) = *&v66[16];
  *(a4 + 112) = v22;
  *(a4 + 288) = v46;
  *&v68[97] = v17;
  *&v68[113] = v15;
  v69 = v16;
  *&v68[33] = v13;
  *&v68[49] = v12;
  v23 = v42;
  v24 = v43;
  v25 = v44;
  v26 = v45;
  v64 = 1;
  v63 = v43;
  v62 = v45;
  v27 = v49;
  v28 = v48;
  v29 = v47;
  *a4 = 0;
  *(a4 + 8) = v27;
  *(a4 + 16) = v33;
  *(a4 + 24) = v28;
  *(a4 + 32) = v6;
  *(a4 + 40) = v29;
  *(a4 + 48) = v32;
  *(a4 + 56) = v31;
  *(a4 + 240) = 0;
  *(a4 + 248) = 1;
  *(a4 + 256) = v23;
  *(a4 + 264) = v24;
  *(a4 + 272) = v25;
  *(a4 + 280) = v26;
  v67 = v7;
  v68[0] = 1;
  v70 = v14;
  *&v68[65] = v11;
  *&v68[81] = v10;
  *&v68[1] = v9;
  *&v68[17] = v8;
  sub_2380712E4(&v65, v34, &qword_27DEED490, &qword_23815E2F8);
  return sub_238071284(&v67, &qword_27DEED490, &qword_23815E2F8);
}

uint64_t sub_238110BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_contact);
  sub_2381548DC();
  sub_238153A8C();
  v13 = 1;
  *v21 = v3;
  *&v21[72] = v18;
  *&v21[56] = v17;
  *&v21[104] = v20;
  *&v21[88] = v19;
  *&v21[24] = v15;
  *&v21[8] = v14;
  *&v21[40] = v16;
  *&v12[71] = *&v21[64];
  *&v12[87] = *&v21[80];
  *&v12[103] = *&v21[96];
  *&v12[119] = *(&v20 + 1);
  *&v12[7] = *v21;
  *&v12[23] = *&v21[16];
  *&v12[39] = *&v21[32];
  *&v12[55] = *&v21[48];
  v11[120] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = *v12;
  v5 = *&v12[16];
  v6 = *&v12[32];
  *(a2 + 57) = *&v12[48];
  *(a2 + 41) = v6;
  *(a2 + 25) = v5;
  *(a2 + 9) = v4;
  v7 = *&v12[64];
  v8 = *&v12[80];
  v9 = *&v12[96];
  *(a2 + 120) = *&v12[111];
  *(a2 + 105) = v9;
  *(a2 + 89) = v8;
  *(a2 + 73) = v7;
  *(a2 + 136) = 0;
  *(a2 + 144) = 1;
  v22 = v3;
  v23 = v14;
  v24 = v15;
  v28 = v19;
  v29 = v20;
  v26 = v17;
  v27 = v18;
  v25 = v16;
  sub_2380712E4(v21, v11, &qword_27DEED498, &qword_23815E300);
  return sub_238071284(&v22, &qword_27DEED498, &qword_23815E300);
}

uint64_t sub_238110DB0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_238110E18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_238110E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_238110F00(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED410, &unk_23815E2A0);
  sub_238153FEC();
  v4 = *(v7 + 16);

  v5 = [v4 view];

  sub_23811117C(a1, v3);
  return v5;
}

void sub_238110FA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ContactAvatarView.Coordinator(a1, a2);
  v4 = swift_allocObject();
  v5 = [objc_opt_self() defaultSettings];
  v6 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) initWithSettings_];

  *(v4 + 16) = v6;
  *a3 = v4;
}

uint64_t sub_238111034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2381112D4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_238111098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2381112D4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2381110FC(uint64_t a1)
{
  sub_2381112D4();
  sub_238153E9C();
  __break(1u);
}

unint64_t sub_238111128()
{
  result = qword_27DEED408;
  if (!qword_27DEED408)
  {
    result = swift_getWitnessTable(byte_23815E1BC, &type metadata for ContactAvatarView, v0, v1);
    atomic_store(result, &qword_27DEED408);
  }

  return result;
}

void sub_23811117C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED410, &unk_23815E2A0);
  sub_238153FEC();
  v3 = *(v9 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2381590E0;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = [objc_opt_self() emptyContact];
  }

  *(v5 + 32) = v6;
  sub_238111288(0, v4);
  v7 = a2;
  v8 = sub_238154ECC();

  [v3 setContacts_];
}

unint64_t sub_238111288(uint64_t a1, uint64_t a2)
{
  result = qword_27DEEE300;
  if (!qword_27DEEE300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEE300);
  }

  return result;
}

unint64_t sub_2381112D4()
{
  result = qword_27DEED418;
  if (!qword_27DEED418)
  {
    result = swift_getWitnessTable(aJl, &type metadata for ContactAvatarView, v0, v1);
    atomic_store(result, &qword_27DEED418);
  }

  return result;
}

unint64_t sub_238111334()
{
  result = qword_27DEED438;
  if (!qword_27DEED438)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED428, &qword_23815E2B8);
    v4[0] = sub_2381113C0();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED438);
  }

  return result;
}

unint64_t sub_2381113C0()
{
  result = qword_27DEED440;
  if (!qword_27DEED440)
  {
    result = swift_getWitnessTable(aAjJ, &type metadata for PosterSnapshotImageView, v0, v1);
    atomic_store(result, &qword_27DEED440);
  }

  return result;
}

unint64_t sub_238111414()
{
  result = qword_27DEED448;
  if (!qword_27DEED448)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED430, &qword_23815E2C0);
    v4[0] = sub_2381114CC();
    v4[1] = sub_2380711D4(&qword_27DEEB270, &qword_27DEEB278, &qword_23815E2E0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED448);
  }

  return result;
}

unint64_t sub_2381114CC()
{
  result = qword_27DEED450;
  if (!qword_27DEED450)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED458, &qword_23815E2C8);
    v4[0] = sub_238111558();
    v4[1] = MEMORY[0x277CE06C0];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED450);
  }

  return result;
}

unint64_t sub_238111558()
{
  result = qword_27DEED460;
  if (!qword_27DEED460)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED468, &qword_23815E2D0);
    v4[0] = sub_2380711D4(&qword_27DEED470, &qword_27DEED478, &qword_23815E2D8, MEMORY[0x277CE1198]);
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED460);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7, v1);
}

uint64_t sub_23811167C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7, v1);
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_2381116D8()
{
  result = qword_27DEED4A0;
  if (!qword_27DEED4A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED4A8, &qword_23815E308);
    v4[0] = sub_238111334();
    v4[1] = sub_238111414();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27DEED4A0);
  }

  return result;
}

double sub_238111768@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

void sub_23811187C(const char *a1, char a2)
{
  v5 = v2;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEED4B0);
  v7 = sub_23815291C();
  v8 = sub_2381550FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238060000, v7, v8, a1, v9, 2u);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) = a2;
  sub_238113068();
  v10 = *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
  *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 1;
  sub_23811D4D4(v10);
  sub_23811249C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A9C();
  sub_23811201C(v11);
}

void sub_238111A30()
{
  v1 = v0;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED4B0);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "User selected cancel", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) = 0;
  sub_238113068();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A9C();
  sub_23811201C(v6);
}

uint64_t sub_238111BEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}