uint64_t sub_1CF5A5DDC(char a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  *(v1 + qword_1EDEADAA8) = a1 & 1;
  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

id sub_1CF5A5ED0()
{
  if (qword_1EDEACC50 != -1)
  {
    swift_once();
  }

  result = [qword_1EDEBBB28 removeWatcher_];
  *(v0 + qword_1EDEBBCE0) = 0;
  return result;
}

void sub_1CF5A5F38()
{
  if ((*(v0 + qword_1EDEBBCE0) & 1) == 0)
  {
    v2 = (*(**(v0 + 24) + 584))();
    if (!v1 && (v2 & 1) != 0)
    {
      sub_1CF5A1C50();
    }
  }
}

void sub_1CF5A5FB0()
{
  if (*(v0 + qword_1EDEBBCE0) == 1 && !*(v0 + qword_1EDEADA98))
  {
    v2 = (*(**(v0 + 24) + 584))();
    if (!v1 && (v2 & 1) == 0)
    {
      sub_1CF5A5ED0();
    }
  }
}

id sub_1CF5A6054(const char **a1)
{
  if (qword_1EDEACD48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *a1;
  v3 = qword_1EDEBBBF8;

  return [v3 v2];
}

void sub_1CF5A60D0(_BOOL4 a1, _BOOL4 a2, char a3)
{
  v5 = a2;
  if (a1 == 2)
  {
    v6 = *(v3 + 200) == 0;
  }

  else
  {
    v6 = a1;
  }

  if (a2 == 2)
  {
    os_unfair_lock_lock((v3 + 208));
    v5 = *(v3 + 216) == 0;
    os_unfair_lock_unlock((v3 + 208));
  }

  if (a3 == 2)
  {
    v7 = v3 + qword_1EDEBBC20;
    os_unfair_lock_lock((v3 + qword_1EDEBBC20));
    v8 = *(v7 + 96);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7068();
    sub_1CF9E6708();
    os_unfair_lock_unlock(v7);
    if (v8)
    {
      return;
    }

    v9 = v3 + qword_1EDEBBC28;
    os_unfair_lock_lock((v3 + qword_1EDEBBC28));
    a3 = *(v9 + 96) == 0;
    os_unfair_lock_unlock(v9);
  }

  if (v6 && v5 && (a3 & 1) != 0)
  {
    v10 = *(*v3 + 2512);

    v10();
  }
}

double sub_1CF5A632C(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v3 = *v2;
  v4 = *(*v2 + 640);
  v25 = *(*v2 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  *&result = MEMORY[0x1EEE9AC00](v9 - 8).n128_u64[0];
  v12 = &v22 - v11;
  v13 = *(v2 + qword_1EDEBBC98);
  if (v13)
  {

    v14 = sub_1CF9E57E8();
    v23 = v14;
    type metadata accessor for FPCK(0);
    sub_1CF6C4380(v14, 6, 89, 0, 0);
    v16 = v15;
    v17 = sub_1CF9E6F08();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    (*(v6 + 16))(v8, v24, AssociatedTypeWitness);
    v18 = v4;
    v19 = (*(v6 + 80) + 80) & ~*(v6 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    v21 = v25;
    *(v20 + 4) = *(v3 + 616);
    *(v20 + 5) = v21;
    *(v20 + 6) = *(v3 + 632);
    *(v20 + 7) = v18;
    *(v20 + 8) = v13;
    *(v20 + 9) = v16;
    (*(v6 + 32))(&v20[v19], v8, AssociatedTypeWitness);
    sub_1CF81241C(0, 0, v12, &unk_1CFA0CD68, v20);
  }

  return result;
}

uint64_t sub_1CF5A65F4(_TtC18FileProviderDaemon8FSTester *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v167 = a5;
  *&v166 = a4;
  *&v164 = a3;
  v158 = a2;
  v176 = a1;
  v8 = *(*v5 + 624);
  v9 = *(*v5 + 632);
  v10 = *(*v5 + 640);
  *&v197 = *(*v5 + 616);
  v7 = v197;
  *(&v197 + 1) = v8;
  *&v198 = v9;
  *(&v198 + 1) = v10;
  v11 = type metadata accessor for ConcreteDatabase.MaterializationRequest(0, &v197);
  v174 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v173 = &v153 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v160 = *(v14 - 8);
  v161 = v14;
  MEMORY[0x1EEE9AC00](v14);
  *&v163 = &v153 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v169 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v168 = &v153 - v17;
  *&v178 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v162 = &v153 - v21;
  v155 = v9;
  v157 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v159 = v10;
  v156 = v8;
  v23 = swift_getAssociatedConformanceWitness();
  *&v197 = AssociatedTypeWitness;
  *(&v197 + 1) = v16;
  *&v177 = v16;
  *&v198 = AssociatedConformanceWitness;
  *(&v198 + 1) = v23;
  v24 = type metadata accessor for ReconciliationID(0, &v197);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v153 - v26;
  v28 = sub_1CF9E75D8();
  v171 = *(v28 - 8);
  v172 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v165 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v170 = &v153 - v31;
  v32 = qword_1EDEBBC70;
  swift_beginAccess();
  v33 = *(v6 + v32);
  v34 = *(AssociatedConformanceWitness + 40);

  v175 = v11;
  LOBYTE(v11) = MEMORY[0x1D3868960](v35, AssociatedTypeWitness, v11, v34);
  v33, v36, v37, v38, v39, v40, v41, v42;
  v43 = 0;
  if ((v11 & 1) == 0)
  {
    (*(v25 + 16))(v27, v176, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v168;
      (*(v169 + 32))(v168, v27, v177);
      v45 = v163;
      (*(**(v6 + 16) + 152))(v44, v164, v166, v167);
      v46 = v178;
      v66 = (*(v178 + 48))(v45, 1, AssociatedTypeWitness);
      if (v66 == 1)
      {
        (*(v169 + 8))(v168, v177);
        (*(v160 + 8))(v45, v161);
        return 0;
      }

      v98 = v154;
      (*(v46 + 32))(v154, v45, AssociatedTypeWitness);
      v99 = *(v6 + v32);

      v50 = v170;
      v51 = v175;
      sub_1CF9E6728();
      v99, v100, v101, v102, v103, v104, v105, v106;
      (*(v46 + 8))(v98, AssociatedTypeWitness);
      (*(v169 + 8))(v168, v177);
    }

    else
    {
      v47 = v178;
      v48 = v162;
      (*(v178 + 32))(v162, v27, AssociatedTypeWitness);
      v49 = *(v6 + v32);

      v50 = v170;
      v51 = v175;
      sub_1CF9E6728();
      v49, v52, v53, v54, v55, v56, v57, v58;
      (*(v47 + 8))(v48, AssociatedTypeWitness);
    }

    v60 = v171;
    v59 = v172;
    v61 = v165;
    (*(v171 + 16))(v165, v50, v172);
    v62 = v174;
    v63 = (*(v174 + 48))(v61, 1, v51);
    v64 = v173;
    if (v63 == 1)
    {
      v65 = *(v60 + 8);
      v65(v50, v59);
      v65(v61, v59);
      return 0;
    }

    (*(v62 + 32))(v173, v61, v51);
    if (*v64)
    {
      (*(v60 + 8))(v50, v59);
      (*(v62 + 8))(v64, v51);
      return 0;
    }

    v165 = 0;
    *&v192 = *&v64[*(v51 + 56)];
    v69 = v156;
    v68 = v157;
    *&v197 = v157;
    *(&v197 + 1) = v156;
    v70 = v155;
    *&v198 = v155;
    *(&v198 + 1) = v159;
    *&v197 = type metadata accessor for UserRequest(255, &v197);
    *(&v197 + 1) = &type metadata for MaterializationRequestOptions;
    *&v198 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
    *(&v198 + 1) = sub_1CF9E6448();
    *&v199 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    swift_getTupleTypeMetadata();
    v71 = sub_1CF9E6708();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1D3868E50](&v197, v71, WitnessTable);
    v73 = v197;
    v196 = v197;
    v74 = swift_allocObject();
    v74[2] = v68;
    v74[3] = v69;
    v74[4] = v166;
    v74[5] = v70;
    v75 = v167;
    v74[6] = v159;
    v74[7] = v75;
    sub_1CF9E7978();
    sub_1CEFD57E0(0, &qword_1EDEA3730, off_1E83BC670);
    swift_getWitnessTable();
    sub_1CF9E7C28();
    v73, v76, v77, v78, v79, v80, v81, v82;

    v192 = v187;
    v193 = v188;
    v194 = v189;
    v195 = v190;
    v83 = swift_allocObject();
    v84 = v158;
    *(v83 + 16) = v158 & 1;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C1BF0, &qword_1CFA0CD58);
    *&v178 = v71;
    sub_1CF9E7AC8();
    swift_getWitnessTable();
    v85 = sub_1CF9E7B98();
    swift_getWitnessTable();
    *&v177 = v85;
    sub_1CF9E7AC8();
    swift_getWitnessTable();
    sub_1CF9E7C48();

    v86 = v197;
    v87 = v198;
    v88 = v199;
    v89 = v200;
    v90 = v201;
    if (v84)
    {
      swift_getWitnessTable();
      sub_1CF9E7B98();
      v176 = v86;
      v182 = swift_getWitnessTable();
      v181 = swift_getWitnessTable();
      v180 = swift_getWitnessTable();
      v179 = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1CF9E7118();
      (*(v171 + 8))(v170, v172);
      (*(v174 + 8))(v173, v175);
      v43 = v187;

      v176, v91, v92, v93, v94, v95, v96, v97;
    }

    else
    {
      v187 = v197;
      v159 = *(&v197 + 1);
      v160 = *(&v198 + 1);
      v188 = v198;
      v189 = v199;
      v161 = *(&v199 + 1);
      v162 = *(&v200 + 1);
      v190 = v200;
      v191 = v201;

      v176 = v87;

      v169 = v88;

      v168 = v89;

      v107 = v90;

      swift_getWitnessTable();
      sub_1CF9E7B98();
      sub_1CF9E7B88();
      v166 = v198;
      v167 = v197;
      v187 = v197;
      v188 = v198;
      v163 = v200;
      v164 = v199;
      v189 = v199;
      v190 = v200;
      v191 = v201;
      v186 = swift_getWitnessTable();
      v185 = swift_getWitnessTable();
      v184 = swift_getWitnessTable();
      v183 = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1CF9E7118();
      v43 = v192;

      v167, v108, v109, v110, v111, v112, v113, v114;
      if (v43)
      {

        v86, v115, v116, v117, v118, v119, v120, v121;
        (*(v171 + 8))(v170, v172);
        (*(v174 + 8))(v173, v175);
      }

      else
      {
        *&v187 = v86;
        *(&v187 + 1) = v159;
        *&v188 = v176;
        *(&v188 + 1) = v160;
        *&v189 = v169;
        *(&v189 + 1) = v161;
        *&v190 = v168;
        *(&v190 + 1) = v162;
        v191 = v107;

        sub_1CF9E7B88();
        v177 = v198;
        v178 = v197;
        v187 = v197;
        v188 = v198;
        v166 = v200;
        v167 = v199;
        v189 = v199;
        v190 = v200;
        v191 = v201;
        sub_1CF9E7118();
        v43 = v192;
        v122 = v175;
        v124 = v170;
        v123 = v171;
        if (v192)
        {
          (*(v171 + 8))(v170, v172);

          v86, v125, v126, v127, v128, v129, v130, v131;
          (*(v174 + 8))(v173, v122);

          v178, v132, v133, v134, v135, v136, v137, v138;
        }

        else
        {

          v178, v139, v140, v141, v142, v143, v144, v145;
          *&v197 = v86;
          *(&v197 + 1) = v159;
          *&v198 = v176;
          *(&v198 + 1) = v160;
          *&v199 = v169;
          *(&v199 + 1) = v161;
          *&v200 = v168;
          *(&v200 + 1) = v162;
          v201 = v107;
          swift_getWitnessTable();
          sub_1CF9E6BB8();
          (*(v123 + 8))(v124, v172);
          (*(v174 + 8))(v173, v122);

          v86, v146, v147, v148, v149, v150, v151, v152;
          return v187;
        }
      }
    }
  }

  return v43;
}

double sub_1CF5A7698(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1 & 1;
  *(v3 + 24) = v1;

  sub_1CF92DE44("updateSchedulingState(_:)", 25, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF5DFB50, v3);

  return result;
}

void sub_1CF5A7760(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1CF9E6118();
  v116 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v20 = &v111 - v19;
  v21 = 0x64616F6C6E776F64;
  if ((a3 & 1) == 0)
  {
    v21 = 0x64616F6C7075;
  }

  v115 = v21;
  if (a3)
  {
    v22 = 0xE800000000000000;
  }

  else
  {
    v22 = 0xE600000000000000;
  }

  if (a1 <= 0)
  {
    if (!(a1 | a2))
    {
LABEL_8:
      if (a1 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  else if (a2 > 0)
  {
    goto LABEL_8;
  }

  if (*(v4 + 89) == 1)
  {
    v117 = 0;
    v118 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x1000000000000016, 0x80000001CFA54640);
    MEMORY[0x1D3868CC0](v115, v22);
    MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA54690);
    v101 = sub_1CF7A5C88();
    v103 = v102;
    MEMORY[0x1D3868CC0](v101);
    v103, v104, v105, v106, v107, v108, v109, v110;
    goto LABEL_24;
  }

  v23 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v24 = sub_1CF9E6108();
  v25 = sub_1CF9E72A8();
  v22, v26, v27, v28, v29, v30, v31, v32;
  v113 = v25;
  if (os_log_type_enabled(v24, v25))
  {
    v33 = swift_slowAlloc();
    v114 = a2;
    v34 = v33;
    v111 = swift_slowAlloc();
    v117 = v111;
    *v34 = 136315394;
    *(v34 + 4) = sub_1CEFD0DF0(v115, v22, &v117);
    *(v34 + 12) = 2080;
    v35 = sub_1CF7A5C88();
    v112 = v4;
    v36 = a1;
    v37 = v8;
    v39 = v38;
    v40 = sub_1CEFD0DF0(v35, v38, &v117);
    v41 = v39;
    v8 = v37;
    a1 = v36;
    v4 = v112;
    v41, v42, v43, v44, v45, v46, v47, v48;
    *(v34 + 14) = v40;
    _os_log_impl(&dword_1CEFC7000, v24, v113, "🤯 [GlobalProgress] %s counter in unexpected state: %s", v34, 0x16u);
    v49 = v111;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v49, -1, -1);
    v50 = v34;
    a2 = v114;
    MEMORY[0x1D386CDC0](v50, -1, -1);
  }

  (*(v116 + 8))(v20, v8);
  if ((a1 & 0x8000000000000000) == 0)
  {
LABEL_15:
    if ((a2 & 0x8000000000000000) == 0)
    {
      v22, v12, v13, v14, v15, v16, v17, v18;
      return;
    }
  }

LABEL_17:
  if (*(v4 + 89) == 1)
  {
    v117 = 0;
    v118 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x1000000000000016, 0x80000001CFA54640);
    MEMORY[0x1D3868CC0](v115, v22);
    MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA54660);
    v91 = sub_1CF7A5C88();
    v93 = v92;
    MEMORY[0x1D3868CC0](v91);
    v93, v94, v95, v96, v97, v98, v99, v100;
LABEL_24:
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  v51 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v52 = sub_1CF9E6108();
  v53 = sub_1CF9E72A8();
  v22, v54, v55, v56, v57, v58, v59, v60;
  if (os_log_type_enabled(v52, v53))
  {
    v61 = swift_slowAlloc();
    v114 = v10;
    v62 = v61;
    v63 = swift_slowAlloc();
    v117 = v63;
    *v62 = 136315394;
    v64 = v8;
    v65 = sub_1CEFD0DF0(v115, v22, &v117);
    v22, v66, v67, v68, v69, v70, v71, v72;
    *(v62 + 4) = v65;
    *(v62 + 12) = 2080;
    v73 = sub_1CF7A5C88();
    v75 = v74;
    v76 = sub_1CEFD0DF0(v73, v74, &v117);
    v75, v77, v78, v79, v80, v81, v82, v83;
    *(v62 + 14) = v76;
    _os_log_impl(&dword_1CEFC7000, v52, v53, "🤯 [GlobalProgress] %s counter in unexpected negative counter: %s", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v63, -1, -1);
    MEMORY[0x1D386CDC0](v62, -1, -1);

    (*(v116 + 8))(v114, v64);
  }

  else
  {

    v22, v84, v85, v86, v87, v88, v89, v90;
    (*(v116 + 8))(v10, v8);
  }
}

BOOL sub_1CF5A7CE8(uint64_t a1)
{
  v2 = *v1;
  if ((*(v1 + 82) & 8) != 0)
  {
    return 1;
  }

  v4 = *(v2 + 632);
  v10[0] = *(v2 + 616);
  v10[1] = v4;
  type metadata accessor for SQLJobRegistry(0, v10);
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return 1;
  }

  v6 = *(*(v5 + 32) + qword_1EDEBBB18);
  if (!v6)
  {
    return 1;
  }

  v7 = *(v6 + qword_1EDEBB7B0);
  return a1 > 0 && v7 >= a1;
}

uint64_t sub_1CF5A7DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a1;
  v84 = a4;
  v85 = a5;
  v83 = a3;
  v8 = *(*v5 + 624);
  v9 = *(*v5 + 632);
  v10 = *(*v5 + 640);
  v90[0] = *(*v5 + 616);
  v7 = v90[0];
  v90[1] = v8;
  v73 = v8;
  v90[2] = v9;
  v90[3] = v10;
  v72 = v10;
  v11 = type metadata accessor for ItemReconciliation(255, v90);
  v12 = sub_1CF9E75D8();
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v69 - v13;
  v78 = v11;
  v80 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v69 - v15;
  v74 = v9;
  v75 = v7;
  v17 = type metadata accessor for SnapshotItem(255, v7, v9, v16);
  v18 = sub_1CF9E75D8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  v24 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v91 = &v69 - v29;
  v30 = *(v19 + 16);
  v32 = v31;
  v30(v23, a2, v28);
  v33 = *(v24 + 48);
  if (v33(v23, 1, v17) == 1)
  {
    return (*(v19 + 8))(v23, v32);
  }

  v71 = v19;
  v70 = *(v24 + 32);
  v70(v91, v23, v17);
  v35 = v87;
  (v30)(v87, v88, v32);
  if (v33(v35, 1, v17) == 1)
  {
    (*(v24 + 8))(v91, v17);
    return (*(v71 + 8))(v35, v32);
  }

  v36 = v86;
  v70(v86, v35, v17);
  v37 = v82;
  v38 = v81;
  v39 = v91;
  v40 = v89;
  sub_1CF68DDB0(v91, v83, v84, v85, v82);
  if (v40)
  {
    goto LABEL_6;
  }

  v42 = v80;
  v43 = v78;
  if ((*(v80 + 48))(v37, 1, v78) == 1)
  {
    v44 = *(v24 + 8);
    v44(v86, v17);
    v44(v39, v17);
    return (*(v76 + 8))(v37, v77);
  }

  (*(v42 + 32))(v79, v37, v43);
  v48 = sub_1CF086A0C(v43, v45, v46, v47);
  v49 = *(v17 + 48);
  v50 = &v86[v49];
  v51 = type metadata accessor for ItemMetadata(0);
  v53 = *(v51 + 68);
  v54 = v50[v53];
  if (v54 == 2 || (v54 & 1) == 0)
  {
    v55 = *(v91 + v49 + v53);
    if (v55 != 2 && (v55 & 1) != 0)
    {
      if (v48 == 2 || (v48 & 1) != 0)
      {
        v64 = v51;
        v39 = v91;
        v65 = (*(**(v38 + 24) + 224))(v91, v83, v84, v85);
        v68 = v65;
        v51 = v64;
        v42 = v80;
        if ((v68 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v39 = v91;
      }

      sub_1CF5A2DA4(0, *&v50[*(v51 + 104)], 0, 1);
LABEL_18:
      (*(v42 + 8))(v79, v43);
      v41 = *(v24 + 8);
      v41(v86, v17);
      return (v41)(v39, v17);
    }
  }

  LODWORD(v88) = v48;
  v89 = 0;
  v56 = *(v51 + 104);
  v57 = *&v50[v56];
  v39 = v91;
  v58 = *(v91 + v49 + v56);
  if (v57 != v58)
  {
    v59 = type metadata accessor for ItemReconciliationHalf(0, v75, v74, v52);
    v61 = v79;
    if ((v79[*(v59 + 76)] & 4) != 0)
    {
      v39 = v91;
    }

    else
    {
      v62 = &v79[*(v43 + 52)];
      if ((v62[*(type metadata accessor for ItemReconciliationHalf(0, v73, v72, v60) + 76)] & 4) != 0)
      {
        v39 = v91;
        v61 = v79;
      }

      else
      {
        if (v88 == 2 || (v88 & 1) != 0)
        {
          v39 = v91;
          v66 = v89;
          v67 = (*(**(v38 + 24) + 232))(v91, v83, v84, v85);
          v89 = v66;
          v61 = v79;
          if (v66)
          {
            (*(v80 + 8))(v79, v43);
            v36 = v86;
LABEL_6:
            v41 = *(v24 + 8);
            v41(v36, v17);
            return (v41)(v39, v17);
          }

          if ((v67 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v39 = v91;
          v61 = v79;
        }

        sub_1CF5A2DA4(0, v58, 1, 1);
        sub_1CF5A2DA4(0, v57, 0, 1);
      }
    }

LABEL_29:
    (*(v80 + 8))(v61, v43);
    goto LABEL_30;
  }

  (*(v80 + 8))(v79, v43);
LABEL_30:
  v63 = *(v24 + 8);
  v63(v86, v17);
  return (v63)(v39, v17);
}

uint64_t sub_1CF5A85A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v207 = a4;
  v208 = a5;
  v206 = a3;
  v195 = a1;
  v7 = *v5;
  v8 = sub_1CF9E6118();
  v197 = *(v8 - 8);
  v198 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v199 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v187 = &v160 - v11;
  v12 = v7[77];
  v13 = v7[79];
  v15 = type metadata accessor for SnapshotItem(255, v12, v13, v14);
  v167 = sub_1CF9E75D8();
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v174 = &v160 - v16;
  v169 = v15;
  v168 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v165 = &v160 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v182 = sub_1CF9E75D8();
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v180 = &v160 - v20;
  v184 = AssociatedTypeWitness;
  v183 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v173 = &v160 - v22;
  v200 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v200);
  v186 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v7[78];
  v25 = v7[80];
  *&v209 = v24;
  *(&v209 + 1) = v12;
  *&v210 = v25;
  *(&v210 + 1) = v13;
  v202 = type metadata accessor for ItemReconciliation(255, &v209);
  v26 = sub_1CF9E75D8();
  v193 = *(v26 - 8);
  v194 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v205 = &v160 - v27;
  v176 = v12;
  *&v28 = v12;
  *(&v28 + 1) = v24;
  v175 = v13;
  *&v29 = v13;
  *(&v29 + 1) = v25;
  v210 = v29;
  v209 = v28;
  v30 = type metadata accessor for ItemReconciliation(0, &v209);
  v203 = *(v30 - 8);
  v204 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v172 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v177 = &v160 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v192 = &v160 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v201 = &v160 - v37;
  v171 = v24;
  v170 = v25;
  v39 = type metadata accessor for SnapshotItem(255, v24, v25, v38);
  v40 = sub_1CF9E75D8();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v191 = &v160 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v160 - v44;
  v46 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v179 = &v160 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v190 = &v160 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v178 = &v160 - v52;
  v54 = MEMORY[0x1EEE9AC00](v53);
  v56 = &v160 - v55;
  v189 = *(v41 + 16);
  v189(v45, a2, v40, v54);
  v188 = *(v46 + 48);
  if (v188(v45, 1, v39) == 1)
  {
    return (*(v41 + 8))(v45, v40);
  }

  v164 = v40;
  v185 = v46;
  v58 = *(v46 + 32);
  v196 = v39;
  v58(v56, v45);
  v163 = v5;
  v59 = v205;
  v60 = v211;
  sub_1CF68E230(v56, v206, v207, v208, v205);
  v211 = v60;
  if (v60)
  {
    goto LABEL_4;
  }

  v161 = v58;
  v64 = v202;
  v65 = *(v202 - 8);
  v66 = (*(v65 + 48))(v59, 1, v202);
  v162 = v56;
  if (v66 != 1)
  {
    v91 = v192;
    sub_1CF07EE34(v64, v67, v192);
    (*(v65 + 8))(v59, v64);
    v92 = v201;
    v93 = v91;
    v56 = v162;
    (*(v203 + 32))(v201, v93, v204);
    v94 = v196;
    v205 = *&v56[v196[12] + *(v200 + 104)];
    v95 = v191;
    v96 = v164;
    (v189)(v191, v195, v164);
    if (v188(v95, 1, v94) == 1)
    {
      (*(v41 + 8))(v95, v96);
      v97 = v181;
      v98 = v180;
      v99 = v182;
      (*(v181 + 16))(v180, v92, v182);
      v100 = v183;
      v101 = v184;
      v102 = (*(v183 + 48))(v98, 1, v184);
      v103 = v163;
      if (v102 == 1)
      {
        (*(v97 + 8))(v98, v99);
        v104 = v211;
        v106 = v203;
        v105 = v204;
        v107 = v187;
LABEL_13:
        v108 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v109 = *(v106 + 16);
        v110 = v177;
        v111 = v201;
        v109(v177, v201, v105);
        v112 = sub_1CF9E6108();
        LODWORD(v208) = sub_1CF9E72A8();
        if (os_log_type_enabled(v112, v208))
        {
          v113 = swift_slowAlloc();
          v211 = v104;
          v114 = v113;
          v115 = swift_slowAlloc();
          *&v209 = v115;
          *v114 = 136315138;
          v116 = v172;
          v109(v172, v110, v105);
          v117 = *(v106 + 8);
          v117(v110, v105);
          v118 = sub_1CF082CB0(v105);
          v120 = v119;
          v117(v116, v105);
          v121 = sub_1CEFD0DF0(v118, v120, &v209);
          v120, v122, v123, v124, v125, v126, v127, v128;
          *(v114 + 4) = v121;
          _os_log_impl(&dword_1CEFC7000, v112, v208, "couldn't find FS snap for download job update: %s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v115);
          MEMORY[0x1D386CDC0](v115, -1, -1);
          MEMORY[0x1D386CDC0](v114, -1, -1);

          (*(v197 + 8))(v187, v198);
          v117(v201, v105);
        }

        else
        {
          v151 = *(v106 + 8);
          v151(v110, v105);

          (*(v197 + 8))(v107, v198);
          v151(v111, v105);
        }

        v62 = *(v185 + 8);
        v63 = v162;
        goto LABEL_31;
      }

      v146 = v173;
      (*(v100 + 32))(v173, v98, v101);
      v147 = v100;
      v148 = v174;
      v149 = v211;
      (*(*v103[4] + 240))(v146, 1, v206, v207, v208);
      v150 = v101;
      v104 = v149;
      v106 = v203;
      v105 = v204;
      v107 = v187;
      if (v149)
      {
        (*(v147 + 8))(v146, v150);
        (*(v106 + 8))(v201, v105);
LABEL_4:
        v61 = v196;
LABEL_5:
        v62 = *(v185 + 8);
        v63 = v56;
        return v62(v63, v61);
      }

      (*(v147 + 8))(v146, v150);
      v152 = v168;
      v153 = v169;
      v154 = (*(v168 + 48))(v148, 1, v169);
      v133 = v201;
      if (v154 == 1)
      {
        (*(v166 + 8))(v148, v167);
        goto LABEL_13;
      }

      v155 = v148;
      v130 = v56;
      v156 = v165;
      (*(v152 + 32))(v165, v155, v153);
      v157 = &v156[*(v153 + 48)];
      v158 = v153;
      v132 = v186;
      sub_1CF043498(v157, v186, type metadata accessor for ItemMetadata);
      (*(v152 + 8))(v156, v158);
    }

    else
    {
      v130 = v56;
      v131 = v178;
      v161(v178, v95, v94);
      v132 = v186;
      sub_1CF043498(&v131[v94[12]], v186, type metadata accessor for ItemMetadata);
      (*(v185 + 8))(v131, v94);
      v104 = v211;
      v106 = v203;
      v105 = v204;
      v133 = v92;
    }

    v134 = *(v132 + *(v200 + 104));
    sub_1CF043504(v132, type metadata accessor for ItemMetadata);
    v138 = v205;
    if (v134 != v205)
    {
      v139 = sub_1CF086A0C(v105, v135, v136, v137);
      if ((*(v133 + *(type metadata accessor for ItemReconciliationHalf(0, v176, v175, v140) + 76)) & 4) == 0)
      {
        v142 = v105;
        v143 = v104;
        v144 = v133 + *(v142 + 52);
        if ((*(v144 + *(type metadata accessor for ItemReconciliationHalf(0, v171, v170, v141) + 76)) & 4) != 0)
        {
          v105 = v204;
        }

        else
        {
          v145 = v143;
          if (v139)
          {
            v105 = v204;
          }

          else
          {
            v159 = sub_1CF5D8DFC(v133, v206, v207, v208);
            v105 = v204;
            if (v145)
            {
              (*(v106 + 8))(v133, v204);
              v61 = v196;
              v56 = v130;
              goto LABEL_5;
            }

            if (!v159)
            {
              goto LABEL_30;
            }
          }

          sub_1CF5A2DA4(1, v138, 1, 0);
          sub_1CF5A2DA4(1, v134, 0, 0);
        }
      }
    }

LABEL_30:
    (*(v106 + 8))(v133, v105);
    v62 = *(v185 + 8);
    v63 = v130;
LABEL_31:
    v61 = v196;
    return v62(v63, v61);
  }

  (*(v193 + 8))(v59, v194);
  v68 = fpfs_current_or_default_log();
  v69 = v199;
  sub_1CF9E6128();
  v70 = v185;
  v71 = *(v185 + 16);
  v72 = v190;
  v73 = v196;
  v71(v190, v56, v196);
  v74 = sub_1CF9E6108();
  v75 = sub_1CF9E72A8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    *&v209 = v208;
    *v76 = 136315138;
    v77 = v179;
    v71(v179, v72, v73);
    v78 = *(v70 + 8);
    v78(v72, v73);
    v79 = sub_1CF06FB20(v73);
    v81 = v80;
    v78(v77, v73);
    v82 = sub_1CEFD0DF0(v79, v81, &v209);
    v81, v83, v84, v85, v86, v87, v88, v89;
    *(v76 + 4) = v82;
    _os_log_impl(&dword_1CEFC7000, v74, v75, "Couldn't find RT entry in updateDownloadJob: %s", v76, 0xCu);
    v90 = v208;
    __swift_destroy_boxed_opaque_existential_1(v208);
    MEMORY[0x1D386CDC0](v90, -1, -1);
    MEMORY[0x1D386CDC0](v76, -1, -1);

    (*(v197 + 8))(v199, v198);
    return (v78)(v162, v73);
  }

  else
  {
    v129 = *(v70 + 8);
    v129(v72, v73);

    (*(v197 + 8))(v69, v198);
    return (v129)(v162, v73);
  }
}

void (*sub_1CF5A9774(void (*a1)(void, void, void), unint64_t a2, unint64_t a3, void (*a4)(__int128 *, id), uint64_t a5))(__int128 *, void)
{
  v124 = a4;
  v125 = a5;
  v119 = a3;
  v120 = a2;
  v115 = a1;
  v6 = *(*v5 + 624);
  v7 = *(*v5 + 616);
  v8 = *(*v5 + 640);
  v9 = *(*v5 + 632);
  *&v126 = v6;
  *(&v126 + 1) = v7;
  v113 = v7;
  *&v127 = v8;
  *(&v127 + 1) = v9;
  v112 = v9;
  *&v126 = type metadata accessor for UserRequest(255, &v126);
  *(&v126 + 1) = &type metadata for NSecTimestamp;
  *&v127 = sub_1CF9E6448();
  *(&v127 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v102 = *(TupleTypeMetadata - 8);
  v10 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = v101 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v110 = v101 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v105 = v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v101 - v16;
  v116 = sub_1CF9E63D8();
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v104 = v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v108 = v101 - v20;
  v123 = sub_1CF9E6448();
  v117 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v103 = v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v107 = v101 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v25 = (v101 - v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v111 = v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v109 = v101 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v121 = v101 - v31;
  v32 = sub_1CF9E64A8();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = (v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v5 + 64);
  *v36 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x1E69E8020], v32, v34);
  v38 = v37;
  LOBYTE(v37) = sub_1CF9E64D8();
  result = (*(v33 + 8))(v36, v32);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v5 + 152) == 1)
  {
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    v40 = FPDomainUnavailableError();
    v124(&v126, v40);

    return sub_1CEFCCC44(&v126, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v41 = qword_1EC4EBD70;
  swift_beginAccess();
  v101[1] = v41;
  v42 = *(v5 + v41);

  *&v126 = v6;
  *(&v126 + 1) = v113;
  *&v127 = v8;
  *(&v127 + 1) = v112;
  *&v126 = type metadata accessor for UserRequest(255, &v126);
  *(&v126 + 1) = &type metadata for NSecTimestamp;
  *&v127 = v123;
  *(&v127 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v43 = swift_getTupleTypeMetadata();
  v44 = sub_1CF9E6E58();
  v45 = *(swift_getAssociatedConformanceWitness() + 40);
  v46 = v115;
  v113 = v44;
  v112 = v45;
  sub_1CF9E6728();
  v42, v47, v48, v49, v50, v51, v52, v53;
  if (!v129)
  {
    (*(v122 + 16))(v111, v46, AssociatedTypeWitness);
    v122 = v43;
    sub_1CF9E7FA8();
    swift_allocObject();
    v121 = sub_1CF9E6D68();
    v66 = v65;
    qos_class_self();
    v67 = v105;
    sub_1CF9E63B8();
    v68 = v114;
    v69 = *(v114 + 48);
    v70 = v116;
    if (v69(v67, 1, v116) == 1)
    {
      (*(v68 + 104))(v104, *MEMORY[0x1E69E7FA0], v70);
      if (v69(v67, 1, v70) != 1)
      {
        sub_1CEFCCC44(v67, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v68 + 32))(v104, v67, v70);
    }

    v89 = v103;
    sub_1CF9E6428();
    v90 = TupleTypeMetadata;
    v91 = *(TupleTypeMetadata + 64);
    v92 = *(v117 + 32);
    v93 = v106;
    v94 = v89;
    v95 = v123;
    v92(&v106[v91], v94, v123);
    v96 = v119;
    v97 = v120;
    *v66 = v120;
    v66[1] = v96;
    v92(v66 + *(v90 + 64), &v93[v91], v95);
    v98 = (v66 + *(v90 + 80));
    v99 = swift_allocObject();
    v100 = v125;
    *(v99 + 16) = v124;
    *(v99 + 24) = v100;
    *v98 = sub_1CF5E14E4;
    v98[1] = v99;
    v129 = sub_1CF045898(v121, v122);
    swift_beginAccess();

    sub_1CEFD09A0(v97);
    sub_1CF9E6708();
    sub_1CF9E6738();
    return swift_endAccess();
  }

  v129, v54, v55, v56, v57, v58, v59, v60;
  v115 = *(v122 + 16);
  v115(v121, v46, AssociatedTypeWitness);
  qos_class_self();
  sub_1CF9E63B8();
  v61 = v114;
  v62 = *(v114 + 48);
  v63 = v116;
  v64 = v62(v17, 1, v116);
  v101[0] = AssociatedTypeWitness;
  if (v64 == 1)
  {
    (*(v61 + 104))(v108, *MEMORY[0x1E69E7FA0], v63);
    if (v62(v17, 1, v63) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v61 + 32))(v108, v17, v63);
  }

  v71 = v107;
  sub_1CF9E6428();
  v72 = TupleTypeMetadata;
  v73 = *(TupleTypeMetadata + 64);
  v74 = *(v117 + 32);
  v75 = v110;
  v76 = v71;
  v77 = v123;
  v74(&v110[v73], v76, v123);
  v78 = v119;
  v79 = v120;
  *v25 = v120;
  v25[1] = v78;
  v74(v25 + *(v72 + 64), &v75[v73], v77);
  v80 = (v25 + *(v72 + 80));
  v81 = swift_allocObject();
  v82 = v125;
  *(v81 + 16) = v124;
  *(v81 + 24) = v82;
  *v80 = sub_1CF5E14E4;
  v80[1] = v81;
  swift_beginAccess();
  v83 = v109;
  v84 = v121;
  v85 = v101[0];
  v115(v109, v121, v101[0]);

  sub_1CEFD09A0(v79);
  sub_1CF9E66E8();
  result = sub_1CF9E66F8();
  if (!*v86)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v87 = result;
  sub_1CF9E6E18();
  v87(&v126, 0);
  v88 = *(v122 + 8);
  v88(v83, v85);
  v88(v84, v85);
  return swift_endAccess();
}

void sub_1CF5AA338(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5)
{
  v404 = a5;
  v403 = a4;
  v406 = a3;
  v436 = a2;
  v7 = *v5;
  v394 = sub_1CF9E5CF8();
  v393 = *(v394 - 8);
  MEMORY[0x1EEE9AC00](v394);
  v391 = &v370 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v7[77];
  v10 = v7[78];
  v11 = v7[79];
  v12 = v7[80];
  v454 = v9;
  v455 = v10;
  v456 = v11;
  v457 = v12;
  v432 = type metadata accessor for ConcreteDatabase.MaterializationRequest(255, &v454);
  v419 = sub_1CF9E75D8();
  v418 = *(v419 - 8);
  MEMORY[0x1EEE9AC00](v419);
  v392 = &v370 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v405 = &v370 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v409 = &v370 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v401 = &v370 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v411 = (&v370 - v21);
  v416 = sub_1CF9E6118();
  v420 = *(v416 - 8);
  MEMORY[0x1EEE9AC00](v416);
  v389 = &v370 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v390 = &v370 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v399 = &v370 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v398 = &v370 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v396 = &v370 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v442 = &v370 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v400 = &v370 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v402 = &v370 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v412 = &v370 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v417 = &v370 - v40;
  v454 = v9;
  v455 = v10;
  v440 = v10;
  v456 = v11;
  v457 = v12;
  v443 = v12;
  v454 = type metadata accessor for UserRequest(255, &v454);
  v455 = &type metadata for MaterializationRequestOptions;
  v435 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v456 = v435;
  v424 = sub_1CF9E6448();
  v457 = v424;
  v458 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *&v447 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v429 = &v370 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v439 = &v370 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v425 = (&v370 - v46);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v387 = &v370 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  i = &v370 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v410 = &v370 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v370 - v55;
  v450 = TupleTypeMetadata;
  v448 = sub_1CF9E75D8();
  v426 = *(v448 - 8);
  MEMORY[0x1EEE9AC00](v448);
  v385 = &v370 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v438 = &v370 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v422 = &v370 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v386 = &v370 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v388 = &v370 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v437 = (&v370 - v67);
  MEMORY[0x1EEE9AC00](v68);
  v428 = (&v370 - v69);
  MEMORY[0x1EEE9AC00](v70);
  v427 = (&v370 - v71);
  v73 = MEMORY[0x1EEE9AC00](v72);
  *&v430 = &v370 - v74;
  v433 = v48;
  v77 = *(v48 + 16);
  v76 = v48 + 16;
  v75 = v77;
  v423 = a1;
  (v77)(v56, a1, AssociatedTypeWitness, v73);
  v415 = v5;
  v446 = sub_1CF5A5660(v453);
  v444 = v11;
  v441 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = *(AssociatedConformanceWitness + 40);
  v434 = AssociatedTypeWitness;
  v80 = v432;
  v81 = sub_1CF9E6708();
  *&v449 = v56;
  v445 = sub_1CF9E6718();
  v82 = *(v80 - 8);
  v83 = *(v82 + 48);
  v421 = v84;
  if ((v83)(v84, 1))
  {
    v445(v452, 0);
    (*(v433 + 8))(v449, v434);
    (v446)(v453, 0);
    v85 = v430;
    (*(v447 + 56))(v430, 1, 1, v450);
    v86 = v448;
    v87 = v426;
LABEL_6:
    (*(v87 + 8))(v85, v86);
    return;
  }

  v384 = AssociatedConformanceWitness;
  v395 = v79;
  v380 = v82;
  v379 = v75;
  v381 = v76;
  v397 = v81;
  v382 = v83;
  v383 = v82 + 48;
  v451 = v436;
  v454 = v441;
  v455 = v440;
  v456 = v444;
  v457 = v443;
  v454 = type metadata accessor for UserRequest(255, &v454);
  v455 = &type metadata for MaterializationRequestOptions;
  v456 = v435;
  v457 = v424;
  v458 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
  v424 = swift_getTupleTypeMetadata();
  v88 = sub_1CF9E6708();
  v89 = v422;
  v375 = v88;
  sub_1CF9E6658();
  v445(v452, 0);
  v90 = v433 + 8;
  v91 = v434;
  v378 = *(v433 + 8);
  v378(v449, v434);
  (v446)(v453, 0);
  v92 = v447;
  v93 = *(v447 + 48);
  v94 = 1;
  v95 = v450;
  v446 = (v447 + 48);
  v445 = v93;
  if ((v93)(v89, 1, v450) != 1)
  {
    v96 = v90;
    v97 = *(v95 + 20);
    v435 = *(v95 + 24);
    v449 = *v89;
    v436 = *(v89 + 2);
    v98 = sub_1CF9E6448();
    v99 = *(*(v98 - 8) + 32);
    v100 = v425;
    v99(v425 + v97, &v89[v97], v98);
    v101 = swift_allocObject();
    *(v101 + 16) = *&v89[v435];
    v102 = *(v450 + 20);
    v103 = v427;
    v104 = (v427 + *(v450 + 24));
    *v427 = v449;
    *(v103 + 2) = v436;
    v105 = v100 + v97;
    v90 = v96;
    v99(v103 + v102, v105, v98);
    v91 = v434;
    v95 = v450;
    v94 = 0;
    *v104 = sub_1CF5E14AC;
    v104[1] = v101;
  }

  v106 = *(v92 + 56);
  v107 = v427;
  v436 = v92 + 56;
  v435 = v106;
  v106(v427, v94, 1, v95);
  v87 = v426;
  v108 = *(v426 + 32);
  v85 = v430;
  v109 = v107;
  v86 = v448;
  v422 = (v426 + 32);
  v421 = v108;
  v108(v430, v109, v448);
  if ((v445)(v85, 1, v95) == 1)
  {
    goto LABEL_6;
  }

  v433 = v90;
  v110 = *v85;

  v111 = *(v95 + 20);
  v112 = (v85 + *(v95 + 24));
  v114 = *v112;
  v113 = v112[1];
  v427 = v114;
  v377 = v113;
  v115 = sub_1CF9E6448();
  v372 = *(v115 - 8);
  v116 = *(v372 + 8);
  *&v449 = v115;
  v414 = v372 + 8;
  v413 = v116;
  v116(v85 + v111);
  v117 = [objc_allocWithZone(FPLoggerScope) init];
  v118 = fpfs_current_or_default_log();
  v119 = v417;
  sub_1CF9E6128();
  v120 = v410;
  v121 = v379;
  v379(v410, v423, v91);
  sub_1CEFD09A0(v110);
  sub_1CEFD09A0(v110);
  v122 = v117;
  v123 = sub_1CF9E6108();
  v124 = sub_1CF9E7298();

  LODWORD(v430) = v124;
  v125 = os_log_type_enabled(v123, v124);
  v408 = v110;
  v376 = v122;
  if (v125)
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v373 = v127;
    v374 = swift_slowAlloc();
    v454 = v374;
    *v126 = 138412802;
    v128 = [v122 enter];
    *(v126 + 4) = v128;
    *v127 = v128;
    *(v126 + 12) = 2080;
    v129 = i;
    v121(i, v120, v91);
    v130 = v378;
    v378(v120, v91);
    v131 = v123;
    v132 = sub_1CF9E7F98();
    v134 = v133;
    v130(v129, v91);
    v135 = sub_1CEFD0DF0(v132, v134, &v454);
    v134, v136, v137, v138, v139, v140, v141, v142;
    *(v126 + 14) = v135;
    *(v126 + 22) = 2080;
    v143 = sub_1CF665B0C(v110, v441, v440, v444, v443);
    v145 = v144;
    sub_1CF5DE5B8(v110);
    sub_1CF5DE5B8(v110);
    v146 = sub_1CEFD0DF0(v143, v145, &v454);
    v145, v147, v148, v149, v150, v151, v152, v153;
    *(v126 + 24) = v146;
    _os_log_impl(&dword_1CEFC7000, v131, v430, "%@ 🛑  cancelling request for %s: %s", v126, 0x20u);
    v154 = v373;
    sub_1CEFCCC44(v373, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v154, -1, -1);
    v155 = v374;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v155, -1, -1);
    MEMORY[0x1D386CDC0](v126, -1, -1);

    v156 = *(v420 + 8);
    v157 = v417;
  }

  else
  {
    v158 = sub_1CF5DE5B8(v110);
    (v378)(v120, v91, v158);
    sub_1CF5DE5B8(v110);

    v156 = *(v420 + 8);
    v157 = v119;
  }

  v159 = v416;
  v156(v157, v416);
  v160 = v442;
  v161 = v415;
  v162 = v412;
  v163 = *(v415 + 82);
  v374 = v156;
  if ((v163 & 0x20) != 0)
  {
    v166 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v167 = sub_1CF9E6108();
    v168 = sub_1CF9E7298();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = v156;
      v170 = swift_slowAlloc();
      *v170 = 0;
      _os_log_impl(&dword_1CEFC7000, v167, v168, "CancelRequest waiting for flush", v170, 2u);
      v171 = v170;
      v156 = v169;
      v162 = v412;
      MEMORY[0x1D386CDC0](v171, -1, -1);
    }

    v156(v162, v159);
    v172 = swift_allocObject();
    v173 = v427;
    v174 = v377;
    *(v172 + 16) = v427;
    *(v172 + 24) = v174;
    v175 = swift_allocObject();
    *(v175 + 16) = v173;
    *(v175 + 24) = v174;
    v176 = *(*v161 + 456);
    swift_retain_n();
    v176("cancelRequest(for:progress:with:)", 33, 2, 0, 0, 0, sub_1CF552D44, v172, sub_1CF5DE65C, v175);
  }

  else
  {
    sub_1CF4810BC();
    v164 = swift_allocError();
    *v165 = 0;
    v427();
  }

  v177 = qword_1EDEBBC70;
  swift_beginAccess();
  v373 = v177;
  v178 = *(v161 + v177);

  v179 = v411;
  v180 = v432;
  sub_1CF9E6728();
  v178, v181, v182, v183, v184, v185, v186, v187;
  v188 = v382(v179, 1, v180);
  v189 = v408;
  v190 = v419;
  if (v188)
  {
    v371 = *(v418 + 8);
    v371(v179, v419);
LABEL_25:
    v213 = v441;
    v214 = v440;
    v215 = sub_1CF6656D8(v189, v441, v440, v444, v443);
    if (v215 && (v216 = v215, v217 = [v215 selectedForMaterialization], v216, (v217 & 1) == 0))
    {
      v293 = v159;
      v294 = fpfs_current_or_default_log();
      v295 = v402;
      sub_1CF9E6128();
      v296 = v376;
      v297 = sub_1CF9E6108();
      v298 = sub_1CF9E7298();

      if (os_log_type_enabled(v297, v298))
      {
        goto LABEL_71;
      }
    }

    else
    {
      v218 = sub_1CF6656D8(v189, v213, v214, v444, v443);
      if (!v218 || (v219 = v218, v220 = [v218 requestedExtent], v219, v220 != -1))
      {
        v192 = v444;
        v221 = v443;
        v222 = sub_1CF6656D8(v189, v213, v214, v444, v443);
        if (!v222)
        {
          goto LABEL_111;
        }

        v223 = v222;
        v224 = [v222 requestedExtent];

        v225 = sub_1CF6656D8(v189, v213, v214, v192, v221);
        v226 = v409;
        v227 = v439;
        if (!v225)
        {
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          v371(v192, v419);
          goto LABEL_117;
        }

        v228 = v225;
        [v225 requestedExtent];
        v230 = v229;

        v384 = &v224[v230];
        v231 = v382;
        v192 = v380;
        if (!__OFADD__(v224, v230))
        {
          v232 = *(v373 + v415);

          v233 = v432;
          sub_1CF9E6728();
          v232, v234, v235, v236, v237, v238, v239, v240;
          v241 = v405;
          (*(v418 + 16))(v405, v226, v419);
          if (v231(v241, 1, v233) != 1)
          {
            v242 = *(v241 + *(v233 + 56));
            v243 = *(v192 + 1);

            v380 = v192 + 8;
            v370 = v243;
            v243(v241, v233);
            v192 = 0;
            v245 = (v242 + 64);
            v244 = *(v242 + 64);
            v395 = v242;
            v246 = 1 << *(v242 + 32);
            v247 = -1;
            if (v246 < 64)
            {
              v247 = ~(-1 << v246);
            }

            v248 = v247 & v244;
            v412 = v429 + 8;
            v249 = (v246 + 63) >> 6;
            v427 = (v447 + 16);
            v424 = (v372 + 32);
            v411 = (v447 + 8);
            v250 = v450;
            v251 = v449;
            v252 = v438;
            v410 = v245;
            for (i = v249; ; v249 = i)
            {
              if (!v248)
              {
                if (v249 <= (v192 + 1))
                {
                  v254 = v192 + 1;
                }

                else
                {
                  v254 = v249;
                }

                v255 = v254 - 1;
                while (1)
                {
                  v253 = (v192 + 1);
                  if (__OFADD__(v192, 1))
                  {
                    break;
                  }

                  if (v253 >= v249)
                  {
                    v248 = 0;
                    v257 = 1;
                    v192 = v255;
                    goto LABEL_49;
                  }

                  v248 = *&v245[8 * v253];
                  ++v192;
                  if (v248)
                  {
                    v192 = v253;
                    goto LABEL_48;
                  }
                }

                __break(1u);
                goto LABEL_96;
              }

              v253 = v192;
LABEL_48:
              v256 = __clz(__rbit64(v248));
              v248 &= v248 - 1;
              (*(v447 + 16))(v252, *(v395 + 56) + *(v447 + 72) * (v256 | (v253 << 6)), v250);
              v257 = 0;
LABEL_49:
              v258 = 1;
              (v435)(v252, v257, 1, v250);
              if ((v445)(v252, 1, v250) != 1)
              {
                v259 = *(v250 + 20);
                v260 = *(v250 + 24);
                v261 = v438;
                v430 = *v438;
                v417 = *(v438 + 2);
                v262 = *v424;
                v263 = v425;
                (*v424)(v425 + v259, &v438[v259], v251);
                v264 = swift_allocObject();
                *(v264 + 16) = *&v261[v260];
                v265 = *(v450 + 20);
                v266 = v437;
                v267 = (v437 + *(v450 + 24));
                *v437 = v430;
                *(v266 + 2) = v417;
                v250 = v450;
                v268 = v263 + v259;
                v160 = v442;
                (v262)(v266 + v265, v268, v449);
                v227 = v439;
                v258 = 0;
                *v267 = sub_1CF5E14AC;
                v267[1] = v264;
                v251 = v449;
              }

              v269 = v437;
              (v435)(v437, v258, 1, v250);
              v270 = v428;
              v421(v428, v269, v448);
              if ((v445)(v270, 1, v250) == 1)
              {
                v371(v409, v419);

                v206 = v416;
                v189 = v408;
                goto LABEL_68;
              }

              v271 = v270[1];
              v272 = v270[2];
              v273 = *(v250 + 20);
              v274 = *(v250 + 24);
              v275 = *(v270 + v274);
              v276 = *(v270 + v274 + 8);
              v277 = (v227 + v274);
              v402 = *v270;
              *v227 = v402;
              *(v227 + 8) = v271;
              v401 = v271;
              *(v227 + 16) = v272;
              v278 = *v424;
              v400 = v273;
              v396 = v278;
              (v278)(&v273[v227], &v273[v270], v251);
              v399 = v275;
              *v277 = v275;
              v277[1] = v276;
              v398 = v276;
              v279 = v429;
              v405 = *v427;
              (v405)(v429, v227, v250);
              v280 = *v279;

              *&v430 = *(v250 + 20);

              v281 = v441;
              v241 = v440;
              v282 = v279;
              v283 = v444;
              v284 = v443;
              v285 = sub_1CF6656D8(v280, v441, v440, v444, v443);
              v286 = sub_1CF5DE5B8(v280);
              if (v285)
              {
                v287 = [v285 requestedExtent];
                v417 = v288;

                v413(v282 + v430, v449);
                v289 = sub_1CF6656D8(v408, v281, v241, v283, v284);
                if (!v289)
                {
                  goto LABEL_110;
                }

                v290 = v289;
                v291 = [v289 requestedExtent];

                v292 = v287 < v291;
                v160 = v442;
                v227 = v439;
                v241 = v397;
                v251 = v449;
                if (v292)
                {
                  goto LABEL_61;
                }

                if (__OFADD__(v287, v417))
                {
                  __break(1u);
                  goto LABEL_102;
                }

                if (v384 < &v417[v287])
                {
LABEL_61:
                  v454 = v441;
                  v455 = v440;
                  v456 = v444;
                  v457 = v443;
                  type metadata accessor for ConcreteJobResult(0, &v454);
                  v299 = sub_1CF056580();
                  v300 = v415;
                  swift_beginAccess();
                  v192 = v392;
                  v301 = v423;
                  sub_1CF9E6658();
                  swift_endAccess();
                  v302 = v432;
                  if (v382(v192, 1, v432) == 1)
                  {
                    goto LABEL_114;
                  }

                  v303 = *v192;
                  v370(v192, v302);
                  v304 = v431;
                  v305 = v404;
                  v306 = v403;
                  if (v303)
                  {
                    goto LABEL_117;
                  }

                  sub_1CF56512C(v301, v300, v299, v406, v403, *(v404 + 8));
                  v192 = v304;
                  if (v304)
                  {

                    v371(v409, v419);
                    (*v411)(v439, v450);
                    v307 = fpfs_current_or_default_log();
                    v308 = v390;
                    sub_1CF9E6128();
                    v309 = v376;
                    v310 = sub_1CF9E6108();
                    v311 = sub_1CF9E7298();

                    if (os_log_type_enabled(v310, v311))
                    {
                      v312 = swift_slowAlloc();
                      v313 = swift_slowAlloc();
                      *v312 = 138412290;
                      v314 = [v309 leave];
                      *(v312 + 4) = v314;
                      *v313 = v314;
                      _os_log_impl(&dword_1CEFC7000, v310, v311, "%@", v312, 0xCu);
                      sub_1CEFCCC44(v313, &qword_1EC4BE350, &unk_1CF9FC3B0);
                      MEMORY[0x1D386CDC0](v313, -1, -1);
                      MEMORY[0x1D386CDC0](v312, -1, -1);
                    }

                    v374(v308, v416);
                    v189 = v408;
                    goto LABEL_94;
                  }

                  v330 = v391;
                  sub_1CF9E5CE8();
                  sub_1CF9E5C98();
                  v332 = v331;
                  (*(v393 + 8))(v330, v394);
                  v333 = v332 * 1000000000.0;
                  if (COERCE__INT64(fabs(v332 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_106;
                  }

                  if (v333 > -9.22337204e18)
                  {
                    if (v333 >= 9.22337204e18)
                    {
                      goto LABEL_108;
                    }

                    sub_1CF521850(v299, v333, v406, v306, v305);
                    v431 = 0;
                    v346 = v425;
                    v192 = v450;
                    (v405)(v425, v439, v450);
                    sub_1CF5DE5B8(*v346);
                    v347 = *(v192 + 20);
                    *&v447 = v346[2];

                    v413(v346 + v347, v251);
                    v251 = v387;
                    v241 = v434;
                    v379(v387, v301, v434);
                    v250 = sub_1CF5A5660(&v454);
                    v227 = sub_1CF9E6718();
                    if (v382(v348, 1, v432))
                    {
                      (v227)(v453, 0);
                      v378(v251, v241);
                      (v250)(&v454, 0);
                      v349 = v388;
                      (v435)(v388, 1, 1, v192);
                      v160 = v442;
                      v350 = v192;
                      v351 = v439;
                      v352 = v425;
                      v353 = v448;
LABEL_99:
                      (*(v426 + 8))(v349, v353);
                      v365 = sub_1CF53499C(v423, v402, v401, &v400[v351], v399, v398);
                      (v405)(v352, v351, v350);
                      sub_1CF5DE5B8(*v352);
                      v366 = v352[2];
                      v367 = *(v350 + 20);

                      v413(v352 + v367, v449);
                      v368 = [v366 totalUnitCount];
                      v369 = v351;
                      v192 = v431;
                      v206 = v416;
                      v189 = v408;
                      if (__OFADD__(v368, 1))
                      {
                        goto LABEL_109;
                      }

                      [v366 setTotalUnitCount_];
                      [v366 addChild:v365 withPendingUnitCount:1];

                      v371(v409, v419);
                      (*v411)(v369, v350);
                      goto LABEL_68;
                    }

LABEL_96:
                    v451 = v447;
                    v354 = v385;
                    sub_1CF9E6658();
                    (v227)(v453, 0);
                    v378(v251, v241);
                    (v250)(&v454, 0);
                    v355 = 1;
                    v356 = (v445)(v354, 1, v192);
                    v350 = v192;
                    v352 = v425;
                    v357 = v386;
                    if (v356 != 1)
                    {
                      v358 = *(v192 + 20);
                      v359 = *(v192 + 24);
                      v447 = *v354;
                      v446 = *(v354 + 2);
                      v360 = v396;
                      (v396)(v425 + v358, &v354[v358], v449);
                      v361 = swift_allocObject();
                      *(v361 + 16) = *&v354[v359];
                      v362 = *(v450 + 20);
                      v363 = &v357[*(v450 + 24)];
                      *v357 = v447;
                      *(v357 + 2) = v446;
                      v360(&v357[v362], v352 + v358, v449);
                      v355 = 0;
                      *v363 = sub_1CF5E14AC;
                      v363[1] = v361;
                      v350 = v450;
                    }

                    (v435)(v357, v355, 1, v350);
                    v349 = v388;
                    v364 = v448;
                    v421(v388, v357, v448);
                    v353 = v364;
                    v160 = v442;
                    v351 = v439;
                    goto LABEL_99;
                  }

LABEL_107:
                  __break(1u);
LABEL_108:
                  __break(1u);
LABEL_109:
                  __break(1u);
LABEL_110:
                  __break(1u);
LABEL_111:
                  __break(1u);
                  goto LABEL_112;
                }
              }

              else
              {
                v251 = v449;
                v413(v282 + v430, v449);
                v160 = v442;
                v227 = v439;
              }

              v250 = v450;
              (*v411)(v227, v450);
              v252 = v438;
              v245 = v410;
            }
          }

          goto LABEL_113;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v293 = v159;
      v325 = fpfs_current_or_default_log();
      v295 = v400;
      sub_1CF9E6128();
      v296 = v376;
      v297 = sub_1CF9E6108();
      v298 = sub_1CF9E7298();

      if (os_log_type_enabled(v297, v298))
      {
LABEL_71:
        v326 = v189;
        v327 = swift_slowAlloc();
        v328 = swift_slowAlloc();
        *v327 = 138412290;
        v329 = [v296 leave];
        *(v327 + 4) = v329;
        *v328 = v329;
        _os_log_impl(&dword_1CEFC7000, v297, v298, "%@", v327, 0xCu);
        sub_1CEFCCC44(v328, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v328, -1, -1);
        MEMORY[0x1D386CDC0](v327, -1, -1);

        v374(v295, v293);

        sub_1CF5DE5B8(v326);
        return;
      }
    }

    v374(v295, v293);

    sub_1CF5DE5B8(v189);
    return;
  }

  v191 = *(v179 + *(v180 + 56));
  v192 = *(v418 + 8);

  v371 = v192;
  (v192)(v179, v190);
  v193 = MEMORY[0x1D3868960](v191, MEMORY[0x1E69E5FE0], v424, MEMORY[0x1E69E5FE8]);
  v191, v194, v195, v196, v197, v198, v199, v200;
  if ((v193 & 1) == 0)
  {
    goto LABEL_25;
  }

  v454 = v441;
  v455 = v440;
  v456 = v444;
  v457 = v443;
  type metadata accessor for ConcreteJobResult(0, &v454);
  v201 = sub_1CF056580();
  swift_beginAccess();
  v202 = v401;
  sub_1CF9E6658();
  swift_endAccess();
  if (v382(v202, 1, v180) == 1)
  {
    v371(v202, v419);
LABEL_117:
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  v203 = *v202;
  (*(v380 + 1))(v202, v180);
  if (v203 > 1)
  {
    v204 = v394;
    v205 = v393;
    v206 = v416;
    if (v203 == 2)
    {
      goto LABEL_82;
    }

    if (v203 == 3)
    {
      goto LABEL_22;
    }

LABEL_79:
    v334 = v431;
    sub_1CF56512C(v423, v161, v201, v406, v403, *(v404 + 8));
    v431 = v334;
    if (v334)
    {

      v335 = fpfs_current_or_default_log();
      v209 = v396;
      sub_1CF9E6128();
      v210 = v376;
      v211 = sub_1CF9E6108();
      v212 = sub_1CF9E7298();

      if (os_log_type_enabled(v211, v212))
      {
        goto LABEL_87;
      }

      goto LABEL_93;
    }

    goto LABEL_82;
  }

  v204 = v394;
  v205 = v393;
  v206 = v416;
  if (!v203)
  {
    goto LABEL_79;
  }

LABEL_22:
  v207 = v431;
  sub_1CF56B9CC(v423, v161, v201, v406, v403, *(v404 + 8));
  v431 = v207;
  if (v207)
  {

    v208 = fpfs_current_or_default_log();
    v209 = v398;
    sub_1CF9E6128();
    v210 = v376;
    v211 = sub_1CF9E6108();
    v212 = sub_1CF9E7298();

    if (os_log_type_enabled(v211, v212))
    {
      goto LABEL_87;
    }

    goto LABEL_93;
  }

LABEL_82:
  v336 = v391;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v338 = v337;
  (*(v205 + 8))(v336, v204);
  v339 = v338 * 1000000000.0;
  if (COERCE__INT64(fabs(v338 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v340 = v431;
  if (v339 <= -9.22337204e18)
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v339 >= 9.22337204e18)
  {
    goto LABEL_105;
  }

  sub_1CF521850(v201, v339, v406, v403, v404);
  if (v340)
  {

    v341 = fpfs_current_or_default_log();
    v209 = v399;
    sub_1CF9E6128();
    v210 = v376;
    v211 = sub_1CF9E6108();
    v212 = sub_1CF9E7298();

    if (os_log_type_enabled(v211, v212))
    {
LABEL_87:
      v342 = swift_slowAlloc();
      v343 = swift_slowAlloc();
      *v342 = 138412290;
      v344 = [v210 leave];
      *(v342 + 4) = v344;
      *v343 = v344;
      _os_log_impl(&dword_1CEFC7000, v211, v212, "%@", v342, 0xCu);
      sub_1CEFCCC44(v343, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v343, -1, -1);
      v345 = v342;
      v189 = v408;
      MEMORY[0x1D386CDC0](v345, -1, -1);

      v374(v209, v416);
LABEL_94:

      sub_1CF5DE5B8(v189);
      return;
    }

LABEL_93:

    v374(v209, v416);
    goto LABEL_94;
  }

LABEL_68:
  v315 = v376;
  v316 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v317 = v315;
  v318 = sub_1CF9E6108();
  v319 = sub_1CF9E7298();

  if (os_log_type_enabled(v318, v319))
  {
    v320 = v206;
    v321 = v189;
    v322 = swift_slowAlloc();
    v323 = swift_slowAlloc();
    *v322 = 138412290;
    v324 = [v317 leave];
    *(v322 + 4) = v324;
    *v323 = v324;
    _os_log_impl(&dword_1CEFC7000, v318, v319, "%@", v322, 0xCu);
    sub_1CEFCCC44(v323, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v323, -1, -1);
    MEMORY[0x1D386CDC0](v322, -1, -1);

    v374(v160, v320);

    sub_1CF5DE5B8(v321);
  }

  else
  {

    v374(v160, v206);

    sub_1CF5DE5B8(v189);
  }
}

uint64_t sub_1CF5AD73C(uint64_t (*a1)(uint64_t a1), unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *, __n128), uint64_t a7, void (*a8)(void, void), uint64_t a9)
{
  v29 = a5;
  v24 = a8;
  v25 = a7;
  v26 = a6;
  v27 = a2;
  v28 = a3;
  v23 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = sub_1CF9E63D8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  qos_class_self();
  sub_1CF9E63B8();
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, *MEMORY[0x1E69E7FA0], v12);
    if (v20(v11, 1, v12) != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  sub_1CF9E6428();
  v21 = sub_1CF5D2970(1, v23, v27, 0, v28, v19, 0, v29, v26, v25, v24, a9);
  (*(v17 + 8))(v19, v16);
  return v21;
}

void sub_1CF5AD9F8(_TtC18FileProviderDaemon8FSTester *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v185 = a2;
  v186 = a3;
  v184 = a1;
  v5 = *v3;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v187 = v6;
  v188 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v180 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v177 = &v171 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v179 = &v171 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v178 = &v171 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v182 = &v171 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v176 = &v171 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v183 = &v171 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v181 = &v171 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v171 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v171 - v27;
  v29 = sub_1CF9E64A8();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v4[8];
  *v33 = v34;
  (*(v30 + 104))(v33, *MEMORY[0x1E69E8020], v29, v31);
  v35 = v34;
  LOBYTE(v34) = sub_1CF9E64D8();
  (*(v30 + 8))(v33, v29);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  if ((v4[10] & 0x40) == 0)
  {
    if ((fp_task_tracker_is_cancelled(v4[21][2]) & 1) != 0 || *(v4 + 152) == 1)
    {
      sub_1CF2CA194();
      swift_allocError();
      swift_willThrow();
      return;
    }

    v171 = v25;
    v36 = v4 + qword_1EDEBBC20;
    os_unfair_lock_lock((v4 + qword_1EDEBBC20));
    v37 = v5[77];
    v38 = v5[78];
    v39 = v5[79];
    v40 = v5[80];
    sub_1CF5D818C((v36 + 8), v37, v185, v39, v195);
    v175 = type metadata accessor for FileTreeChangeAggregator(255, v37, v39, v41);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7068();
    sub_1CF9E6708();
    os_unfair_lock_unlock(v36);
    v33 = v4 + qword_1EDEBBC28;
    os_unfair_lock_lock((v4 + qword_1EDEBBC28));
    v42 = *(v33 + 56);
    v191 = *(v33 + 40);
    v192 = v42;
    v43 = *(v33 + 88);
    v193 = *(v33 + 72);
    v194 = v43;
    v44 = *(v33 + 24);
    v189 = *(v33 + 8);
    v190 = v44;
    sub_1CF5B543C(v38, v40, v206);
    v46 = v206[3];
    *(v33 + 40) = v206[2];
    *(v33 + 56) = v46;
    v47 = v206[5];
    *(v33 + 72) = v206[4];
    *(v33 + 88) = v47;
    v48 = v206[1];
    *(v33 + 8) = v206[0];
    *(v33 + 24) = v48;
    if (v207)
    {
      goto LABEL_63;
    }

    v174 = type metadata accessor for FileTreeChangeAggregator(0, v38, v40, v45);
    os_unfair_lock_unlock(v33);
    v201 = v191;
    v202 = v192;
    v203 = v193;
    v204 = v194;
    v199 = v189;
    v200 = v190;
    v49 = [objc_allocWithZone(FPLoggerScope) init];
    v50 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v51 = v49;
    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E7298();
    v172 = v51;

    v54 = os_log_type_enabled(v52, v53);
    v55 = v184;
    v56 = v171;
    if (v54)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = [v172 enter];
      *(v57 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&dword_1CEFC7000, v52, v53, "%@ 👁  processing ingestion", v57, 0xCu);
      sub_1CEFCCC44(v58, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v57, -1, -1);
    }

    v61 = v188 + 8;
    v60 = *(v188 + 8);
    v60(v28, v187);
    v62 = sub_1CF5A08AC(v175);
    v188 = v61;
    v173 = v60;
    if (v62)
    {
      v63 = v207;
      v64 = v186;
      v5 = v187;
      v65 = v185;
    }

    else
    {
      v66 = [objc_allocWithZone(FPLoggerScope) init];
      v67 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v68 = v66;
      v69 = sub_1CF9E6108();
      v70 = sub_1CF9E7288();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        v73 = [v68 enter];
        *(v71 + 4) = v73;
        *v72 = v73;
        _os_log_impl(&dword_1CEFC7000, v69, v70, "%@ 👁  processing FS tree changes", v71, 0xCu);
        sub_1CEFCCC44(v72, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v74 = v72;
        v60 = v173;
        MEMORY[0x1D386CDC0](v74, -1, -1);
        MEMORY[0x1D386CDC0](v71, -1, -1);
      }

      v60(v56, v187);
      v75 = v55;
      v65 = v185;
      v64 = v186;
      v76 = v207;
      sub_1CF5B3E48(v4, v75, v175, v185, v186);
      v63 = v76;
      if (v76)
      {
        v77 = fpfs_current_or_default_log();
        v78 = v178;
        sub_1CF9E6128();
        v79 = v68;
        v80 = sub_1CF9E6108();
        v81 = sub_1CF9E7288();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *v82 = 138412290;
          v84 = [v79 leave];
          *(v82 + 4) = v84;
          *v83 = v84;
          _os_log_impl(&dword_1CEFC7000, v80, v81, "%@", v82, 0xCu);
          sub_1CEFCCC44(v83, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v83, -1, -1);
          MEMORY[0x1D386CDC0](v82, -1, -1);
        }

        v85 = v187;
        v86 = v173;
        v173(v78, v187);

        v87 = fpfs_current_or_default_log();
        v88 = v179;
        sub_1CF9E6128();
        v89 = v172;
        v90 = sub_1CF9E6108();
        v91 = sub_1CF9E7298();

        if (!os_log_type_enabled(v90, v91))
        {

          v86(v88, v85);
          goto LABEL_57;
        }

        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 138412290;
        v94 = [v89 leave];
        *(v92 + 4) = v94;
        *v93 = v94;
        _os_log_impl(&dword_1CEFC7000, v90, v91, "%@", v92, 0xCu);
        sub_1CEFCCC44(v93, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v93, -1, -1);
        MEMORY[0x1D386CDC0](v92, -1, -1);

        v95 = v88;
        v96 = v187;
LABEL_30:
        v86(v95, v96);
LABEL_57:

        (*(*(v174 - 8) + 8))(&v199);
        (*(*(v175 - 8) + 8))(v195);
        return;
      }

      v97 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v98 = v68;
      v99 = sub_1CF9E6108();
      v100 = sub_1CF9E7288();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 138412290;
        v103 = [v98 leave];
        *(v101 + 4) = v103;
        *v102 = v103;
        _os_log_impl(&dword_1CEFC7000, v99, v100, "%@", v101, 0xCu);
        sub_1CEFCCC44(v102, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v104 = v102;
        v60 = v173;
        MEMORY[0x1D386CDC0](v104, -1, -1);
        v105 = v101;
        v64 = v186;
        MEMORY[0x1D386CDC0](v105, -1, -1);
      }

      v5 = v187;
      v60(v181, v187);
    }

    if ((sub_1CF5A08AC(v174) & 1) == 0)
    {
      v106 = [objc_allocWithZone(FPLoggerScope) init];
      v107 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v108 = v106;
      v109 = sub_1CF9E6108();
      v110 = sub_1CF9E7288();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = v5;
        v113 = swift_slowAlloc();
        *v111 = 138412290;
        v114 = [v108 enter];
        *(v111 + 4) = v114;
        *v113 = v114;
        _os_log_impl(&dword_1CEFC7000, v109, v110, "%@ 👁  processing FP tree changes", v111, 0xCu);
        sub_1CEFCCC44(v113, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v115 = v113;
        v5 = v112;
        v65 = v185;
        MEMORY[0x1D386CDC0](v115, -1, -1);
        MEMORY[0x1D386CDC0](v111, -1, -1);
      }

      v173(v183, v5);
      v116 = sub_1CF057B28();
      sub_1CF5B3E48(v116, v184, v174, v65, v186);
      if (v63)
      {

        v117 = fpfs_current_or_default_log();
        v118 = v177;
        sub_1CF9E6128();
        v119 = v108;
        v120 = sub_1CF9E6108();
        v121 = sub_1CF9E7288();

        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v123 = v5;
          v124 = swift_slowAlloc();
          *v122 = 138412290;
          v125 = [v119 leave];
          *(v122 + 4) = v125;
          *v124 = v125;
          _os_log_impl(&dword_1CEFC7000, v120, v121, "%@", v122, 0xCu);
          sub_1CEFCCC44(v124, &qword_1EC4BE350, &unk_1CF9FC3B0);
          v126 = v124;
          v5 = v123;
          MEMORY[0x1D386CDC0](v126, -1, -1);
          MEMORY[0x1D386CDC0](v122, -1, -1);
        }

        v127 = v118;
        v86 = v173;
        v173(v127, v5);

        v128 = fpfs_current_or_default_log();
        v129 = v180;
        sub_1CF9E6128();
        v89 = v172;
        v130 = sub_1CF9E6108();
        v131 = sub_1CF9E7298();

        if (!os_log_type_enabled(v130, v131))
        {

          v86(v129, v5);
          goto LABEL_57;
        }

        v132 = swift_slowAlloc();
        v133 = v5;
        v134 = swift_slowAlloc();
        *v132 = 138412290;
        v135 = [v89 leave];
        *(v132 + 4) = v135;
        *v134 = v135;
        _os_log_impl(&dword_1CEFC7000, v130, v131, "%@", v132, 0xCu);
        sub_1CEFCCC44(v134, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v134, -1, -1);
        MEMORY[0x1D386CDC0](v132, -1, -1);

        v95 = v180;
        v96 = v133;
        goto LABEL_30;
      }

      v136 = fpfs_current_or_default_log();
      v137 = v176;
      sub_1CF9E6128();
      v138 = v108;
      v139 = sub_1CF9E6108();
      v140 = sub_1CF9E7288();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = v5;
        v143 = swift_slowAlloc();
        *v141 = 138412290;
        v144 = [v138 leave];
        *(v141 + 4) = v144;
        *v143 = v144;
        _os_log_impl(&dword_1CEFC7000, v139, v140, "%@", v141, 0xCu);
        sub_1CEFCCC44(v143, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v145 = v143;
        v5 = v142;
        v65 = v185;
        MEMORY[0x1D386CDC0](v145, -1, -1);
        v146 = v141;
        v137 = v176;
        MEMORY[0x1D386CDC0](v146, -1, -1);
      }

      v173(v137, v5);
      v64 = v186;
    }

    if ((sub_1CF5A08AC(v175) & 1) == 0 || (sub_1CF5A08AC(v174) & 1) == 0)
    {
      sub_1CF5A60D0(2, 2, 1);
    }

    if (*(v4[20] + 48) == 1)
    {
      v147 = swift_allocObject();
      *(v147 + 16) = v65;
      *(v147 + 24) = v64;
      v5 = v64;
      v148 = v195[3];
      *(v147 + 64) = v195[2];
      *(v147 + 80) = v148;
      v149 = v197;
      *(v147 + 96) = v196;
      *(v147 + 112) = v149;
      v150 = v195[1];
      *(v147 + 32) = v195[0];
      *(v147 + 48) = v150;
      *(v147 + 128) = v4;
      v151 = (*v4)[56];
      (*(*(v175 - 8) + 16))(v206, v195);

      v151("processPendingIngestion(with:)", 30, 2, 0, 1, nullsub_1, 0, sub_1CF5DF158, v147);

LABEL_46:
      if (*(v4[20] + 49) == 1)
      {
        v155 = swift_allocObject();
        *(v155 + 16) = v65;
        *(v155 + 24) = v5;
        v156 = v202;
        *(v155 + 64) = v201;
        *(v155 + 80) = v156;
        v157 = v204;
        *(v155 + 96) = v203;
        *(v155 + 112) = v157;
        v158 = v200;
        *(v155 + 32) = v199;
        *(v155 + 48) = v158;
        *(v155 + 128) = v4;
        v159 = (*v4)[56];

        (*(*(v174 - 8) + 16))(v206, &v199);
        v159("processPendingIngestion(with:)", 30, 2, 1, 1, nullsub_1, 0, sub_1CF5DF118, v155);

LABEL_54:
        v163 = v187;
        v164 = fpfs_current_or_default_log();
        v165 = v182;
        sub_1CF9E6128();
        v89 = v172;
        v166 = sub_1CF9E6108();
        v167 = sub_1CF9E7298();

        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          *v168 = 138412290;
          v170 = [v89 leave];
          *(v168 + 4) = v170;
          *v169 = v170;
          _os_log_impl(&dword_1CEFC7000, v166, v167, "%@", v168, 0xCu);
          sub_1CEFCCC44(v169, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v169, -1, -1);
          MEMORY[0x1D386CDC0](v168, -1, -1);
        }

        v173(v165, v163);
        goto LABEL_57;
      }

      v207 = v63;
      v160 = *(&v203 + 1);
      v205 = *(&v203 + 1);
      v33 = *(*(&v203 + 1) + 16);

      if (!v33)
      {
LABEL_53:
        sub_1CEFCCC44(&v205, &unk_1EC4C1B90, &unk_1CFA168F0);
        goto LABEL_54;
      }

      v161 = 0;
      while (v161 < *(v160 + 16))
      {
        v162 = swift_allocObject();
        *(v162 + 16) = *(v160 + 32 + 16 * v161);

        v5 = objc_autoreleasePoolPush();
        ((*v4)[313])(sub_1CF5E14AC, v162);
        if (v207)
        {
          goto LABEL_62;
        }

        ++v161;
        objc_autoreleasePoolPop(v5);

        if (v33 == v161)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_61;
    }

    v207 = v63;
    v152 = *(&v196 + 1);
    v198 = *(&v196 + 1);
    v33 = *(*(&v196 + 1) + 16);

    if (!v33)
    {
LABEL_45:
      sub_1CEFCCC44(&v198, &unk_1EC4C1B90, &unk_1CFA168F0);
      v63 = v207;
      v65 = v185;
      v5 = v186;
      goto LABEL_46;
    }

    v153 = 0;
    while (v153 < *(v152 + 16))
    {
      v154 = swift_allocObject();
      *(v154 + 16) = *(v152 + 32 + 16 * v153);

      v5 = objc_autoreleasePoolPush();
      ((*v4)[313])(sub_1CF5E14AC, v154);
      if (v207)
      {
        goto LABEL_62;
      }

      ++v153;
      objc_autoreleasePoolPop(v5);

      if (v33 == v153)
      {
        goto LABEL_45;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    objc_autoreleasePoolPop(v5);
    __break(1u);
LABEL_63:
    os_unfair_lock_unlock(v33);
    __break(1u);
  }
}

uint64_t sub_1CF5AEFB4()
{
  sub_1CF47FADC(v0, &v12);
  result = v18;
  if (v18 > 4u)
  {
    if (v18 <= 6u)
    {
      if (v18 == 5)
      {
        sub_1CF47FB38(&v12);
        return 7;
      }

      else
      {
        sub_1CF47FB38(&v12);
        return 8;
      }
    }

    else
    {
      v9 = v12;
      if (v18 == 7)
      {
        v14, v1, v2, v3, v4, v5, v6, v7;
        if (v9)
        {
          return 10;
        }

        else
        {
          return 9;
        }
      }

      else if (v18 == 8)
      {
        sub_1CF47FB38(&v12);
        return 117049988;
      }

      else if (v16 | v17 | v12 | v15 | v14 | v13)
      {
        v10 = v16 | v17 | v15 | v14 | v13;
        if (v12 != 1 || v10)
        {
          if (v12 != 2 || v10)
          {
            if (v10)
            {
              v11 = 0;
            }

            else
            {
              v11 = v12 == 3;
            }

            if (v11)
            {
              return 112600553;
            }

            else
            {
              return 11;
            }
          }

          else
          {
            return 111342181;
          }
        }

        else
        {
          return 105155714;
        }
      }

      else
      {
        return 4;
      }
    }
  }

  else if (v18 <= 1u)
  {
    if (v18)
    {
      sub_1CF47FB38(&v12);
      return 1;
    }
  }

  else if (v18 == 2)
  {
    sub_1CF47FB38(&v12);
    return 2;
  }

  else if (v18 == 3)
  {
    return 3;
  }

  else
  {
    v17, v1, v2, v3, v4, v5, v6, v7;
    sub_1CEFCCC44(&v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return 5;
  }

  return result;
}

unint64_t sub_1CF5AF148()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v2;
  sub_1CF47FADC(v0, &v23);
  v3 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  sub_1CF47FADC(v0, &v23);
  if (v25 - 1 > 1)
  {
    sub_1CF47FB38(&v23);
  }

  else
  {
    v6 = v23;
    v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v9 = v8;
    swift_getErrorValue();
    v24 = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
    sub_1CEFE9EB8(&v23, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1CF1D154C(v20, v7, v9, isUniquelyReferenced_nonNull_native);

    v9, v12, v13, v14, v15, v16, v17, v18;
  }

  return v5;
}

uint64_t sub_1CF5AF324(uint64_t a1)
{
  v2 = sub_1CF5E1458();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF5AF360(uint64_t a1)
{
  v2 = sub_1CF5E1458();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1CF5AF39C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF5DA524(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CF5AF3C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_1CF9E75D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  v9 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + *(a1 + 40));
  if (!v14)
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA464B0);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7FE8();
    return v21;
  }

  (*(v6 + 16))(v8, v2 + *(a1 + 36), v5, v11);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    v15 = *(v6 + 8);

    v15(v8, v5);
    v21 = 0;
    v22 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x616863206D657469, 0xED0000206465676ELL);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7FE8();

    return v21;
  }

  (*(v9 + 32))(v13, v8, v4);
  v21 = 0;
  v22 = 0xE000000000000000;

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x616863206D657469, 0xED0000206465676ELL);
  v17 = *(a1 + 24);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x3A73656C7572202CLL, 0xE900000000000020);
  v20[1] = v14;
  type metadata accessor for JobLockAggregator(0, v4, v17, v18);
  swift_getWitnessTable();
  sub_1CF9E7FE8();

  v19 = v21;
  (*(v9 + 8))(v13, v4);
  return v19;
}

uint64_t sub_1CF5AF7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1CF9E75D8();
  type metadata accessor for JobLockAggregator(255, v7, v6, v10);
  sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = *(TupleTypeMetadata3 + 48);
  v13 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, v3, AssociatedTypeWitness);
  (*(*(v9 - 8) + 16))(a2 + v12, v3 + *(a1 + 36), v9);
  *(a2 + v13) = *(v3 + *(a1 + 40));
  type metadata accessor for FileTreeWriter.FileTreeChange(0, v7, v6, v14);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF5AF91C(unsigned __int8 a1)
{
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF5AF980(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF0BA820(v3, *v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF5AF9C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(v5 + 16);
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for FileTreeChangeAggregator.Change(0, v9, v8, v10);
  swift_getAssociatedConformanceWitness();
  v22[5] = v7;
  sub_1CF9E66B8();
  v11 = *(v6 + 88);
  v12 = *(v6 + 104);

  v22[0] = v9;
  v22[1] = v11;
  v22[2] = v8;
  v22[3] = v12;
  type metadata accessor for TestingOperation(0, v22);
  swift_getWitnessTable();
  v13 = sub_1CF9E6B88();
  v7, v14, v15, v16, v17, v18, v19, v20;
  return v13;
}

char *sub_1CF5AFB4C@<X0>(char *a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, void (*a4)(void, void, void, void)@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v98 = a4;
  v99 = a5;
  v96 = a6;
  v97 = a3;
  v95 = *a2;
  v8 = v95[12];
  v94 = v95[10];
  v9 = type metadata accessor for FileTreeChangeAggregator.Change(0, v94, v8, a4);
  v93 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v83 - v13;
  v15 = sub_1CF9E6118();
  v92 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v9 + 36);
  v19 = v104;
  result = sub_1CF614EB4(a1, (v18 + a1), *&a1[*(v9 + 40)], a2, v97, v98, v99);
  if (!v19)
  {
    v90 = v11;
    v91 = v18;
    v28 = v93;
    v97 = v15;
    v98 = v8;
    v104 = a1;
    v99 = 0;
    if (v23 == 2)
    {
      v29 = v17;
      v30 = v22;
      v31 = v21;
      v32 = result;
      v33 = fpfs_current_or_default_log();
      v34 = v29;
      sub_1CF9E6128();
      v35 = v14;
      v36 = v14;
      v37 = v9;
      v85 = *(v28 + 16);
      v85(v36, v104, v9);

      v87 = v34;
      v38 = sub_1CF9E6108();
      v39 = sub_1CF9E7298();
      v88 = v30;
      v89 = v32;
      v91 = v31;
      sub_1CF5DFDEC(v32, v31, v30, 2, v40, v41, v42, v43);
      v86 = v39;
      if (os_log_type_enabled(v38, v39))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v100 = v45;
        *v44 = 136315394;
        v84 = v38;
        v46 = v90;
        v85(v90, v35, v37);
        v47 = *(v28 + 8);
        v47(v35, v37);
        v48 = sub_1CF5AF3C8(v37);
        v50 = v49;
        v47(v46, v37);
        v51 = sub_1CEFD0DF0(v48, v50, &v100);
        v50, v52, v53, v54, v55, v56, v57, v58;
        v59 = v44;
        *(v44 + 4) = v51;
        *(v44 + 12) = 2080;
        v60 = v89;
        v61 = v91;
        v62 = sub_1CEFD0DF0(v89, v91, &v100);
        sub_1CF5DFDEC(v60, v61, v88, 2, v63, v64, v65, v66);
        *(v59 + 14) = v62;
        v38 = v84;
        _os_log_impl(&dword_1CEFC7000, v84, v86, "fetch metadata for pending event: %s, reason: %s", v59, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v45, -1, -1);
        MEMORY[0x1D386CDC0](v59, -1, -1);
      }

      else
      {
        (*(v28 + 8))(v35, v37);
        sub_1CF5DFDEC(v89, v91, v88, 2, v76, v77, v78, v79);
      }

      (*(v92 + 8))(v87, v97);
      v68 = v94;
      v80 = v95;
      v67 = v98;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v72 = v96;
      (*(*(AssociatedTypeWitness - 8) + 16))(v96, v104, AssociatedTypeWitness);
      v74 = v80[11];
      v75 = v80[13];
      v100 = v68;
      v101 = v74;
      v102 = v67;
      v103 = v75;
      type metadata accessor for DirectionalTestingOperation(0, &v100);
    }

    else
    {
      sub_1CF5DFDEC(result, v21, v22, v23, v24, v25, v26, v27);
      v67 = v98;
      v68 = v94;
      v69 = swift_getAssociatedTypeWitness();
      v70 = sub_1CF9E75D8();
      v71 = *(swift_getTupleTypeMetadata2() + 48);
      v72 = v96;
      v73 = v104;
      (*(*(v69 - 8) + 16))(v96, v104, v69);
      (*(*(v70 - 8) + 16))(v72 + v71, v91 + v73, v70);
      v74 = v95[11];
      v75 = v95[13];
      v100 = v68;
      v101 = v74;
      v102 = v67;
      v103 = v75;
      type metadata accessor for DirectionalTestingOperation(0, &v100);
    }

    swift_storeEnumTagMultiPayload();
    v100 = v68;
    v101 = v74;
    v102 = v67;
    v103 = v75;
    type metadata accessor for TestingOperation(0, &v100);
    swift_storeEnumTagMultiPayload();
    v100 = v68;
    v101 = v74;
    v102 = v67;
    v103 = v75;
    v82 = type metadata accessor for TestingOperation(0, &v100);
    return (*(*(v82 - 8) + 56))(v72, 0, 1, v82);
  }

  return result;
}

void sub_1CF5B01A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v586 = a5;
  v589 = a4;
  v587 = a2;
  v9 = *a1;
  v10 = type metadata accessor for SyncState(0);
  v533 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v527 = &v526 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v588 = a1;
  v12 = *(v9 + 88);
  v13 = v9;
  v532 = a3;
  v14 = *(a3 + 24);
  v16 = *(v13 + 104);
  p_isa = *(a3 + 16);
  v15 = p_isa;
  v604 = v12;
  v605 = v14;
  v606 = v16;
  v536 = type metadata accessor for PersistenceTrigger(0, &p_isa);
  v535 = *(v536 - 8);
  MEMORY[0x1EEE9AC00](v536);
  v534 = &v526 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v556 = sub_1CF9E75D8();
  v538 = *(v556 - 8);
  MEMORY[0x1EEE9AC00](v556);
  v560 = &v526 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v555 = &v526 - v21;
  v23 = type metadata accessor for SnapshotItem(255, v15, v14, v22);
  v543 = sub_1CF9E75D8();
  v542 = *(v543 - 8);
  MEMORY[0x1EEE9AC00](v543);
  v547 = &v526 - v24;
  v545 = v23;
  v541 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v544 = &v526 - v26;
  p_isa = v15;
  v604 = v12;
  v582 = v12;
  v605 = v14;
  v606 = v16;
  v583 = v16;
  v549 = type metadata accessor for ReconciliationMutation(0, &p_isa);
  v540 = *(v549 - 8);
  MEMORY[0x1EEE9AC00](v549);
  v550 = &v526 - v27;
  v546 = sub_1CF9E75D8();
  v539 = *(v546 - 8);
  MEMORY[0x1EEE9AC00](v546);
  v548 = &v526 - v28;
  v593 = swift_getTupleTypeMetadata2();
  v573 = sub_1CF9E75D8();
  v591 = *(v573 - 8);
  MEMORY[0x1EEE9AC00](v573);
  v580 = (&v526 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v572 = &v526 - v31;
  v596 = sub_1CF9E5CF8();
  v594 = *(v596 - 8);
  MEMORY[0x1EEE9AC00](v596);
  v595 = &v526 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v575 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v33);
  v554 = &v526 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v561 = &v526 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v559 = &v526 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v590 = &v526 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v526 - v42);
  MEMORY[0x1EEE9AC00](v44);
  v574 = &v526 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v599 = (&v526 - v47);
  v577 = sub_1CF9E6118();
  v592 = *(v577 - 8);
  MEMORY[0x1EEE9AC00](v577);
  v49 = &v526 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v526 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v537 = &v526 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v530 = &v526 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v529 = &v526 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v553 = &v526 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = (&v526 - v62);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v526 - v65;
  v581 = v14;
  v68 = type metadata accessor for FileTreeWriter.FileTreeChange(0, v15, v14, v67);
  MEMORY[0x1EEE9AC00](v68);
  v565 = &v526 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v526 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v77 = v552;
  v78 = &v526 - v74;
  v551 = v588[4];
  v79 = *(v552 + 32);
  v601 = AssociatedTypeWitness;
  v584 = v15;
  v566 = v80;
  v600 = v43;
  v578 = v63;
  v531 = v49;
  v528 = v52;
  if (v79 == 2)
  {
    v81 = v593;
    goto LABEL_3;
  }

  v147 = *(v552 + 40);
  v148 = *(v552 + 48);
  LODWORD(v597) = v79;
  *v78 = v79 & 1;
  v571 = v147;
  *(v78 + 1) = v147;
  LODWORD(v570) = v148;
  v78[16] = v148 & 1;
  v149 = &v526 - v74;
  v150 = v75;
  v151 = v76;
  swift_storeEnumTagMultiPayload();
  v152 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v153 = *(v151 + 16);
  v585 = v149;
  v153(v72, v149, v150);
  v154 = sub_1CF9E6108();
  v155 = sub_1CF9E72A8();
  v156 = os_log_type_enabled(v154, v155);
  v598 = v5;
  v579 = v151;
  if (v156)
  {
    v157 = swift_slowAlloc();
    v576 = swift_slowAlloc();
    p_isa = v576;
    *v157 = 136446210;
    LODWORD(v569) = v155;
    v158 = v565;
    v153(v565, v72, v150);
    v159 = *(v151 + 8);
    v159(v72, v150);
    v160 = sub_1CF06AB58(v150);
    v162 = v161;
    v159(v158, v150);
    v163 = sub_1CEFD0DF0(v160, v162, &p_isa);
    v162, v164, v165, v166, v167, v168, v169, v170;
    *(v157 + 4) = v163;
    _os_log_impl(&dword_1CEFC7000, v154, v569, "%{public}s", v157, 0xCu);
    v171 = v576;
    __swift_destroy_boxed_opaque_existential_1(v576);
    MEMORY[0x1D386CDC0](v171, -1, -1);
    MEMORY[0x1D386CDC0](v157, -1, -1);
  }

  else
  {
    v159 = *(v151 + 8);
    v159(v72, v150);
  }

  (*(v592 + 8))(v66, v577);
  v230 = v594;
  v576 = v159;
  if ((v597 & 1) == 0)
  {
    p_isa = v584;
    v604 = v582;
    v605 = v581;
    v606 = v583;
    type metadata accessor for Ingestion.FetchItemMetadata(0, &p_isa);
    sub_1CF046AB4();
    v252 = v595;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v254 = v253;
    v255 = v230[1];
    v255(v252, v596);
    v256 = v254 * 1000000000.0;
    if (COERCE__INT64(fabs(v254 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    if (v256 <= -9.22337204e18)
    {
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    if (v256 >= 9.22337204e18)
    {
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    v257 = v574;
    v258 = sub_1CF656F5C(v574, 0, v256, 0x8000);
    v259 = *(v575 + 8);
    v259(v257, v601);
    v260 = v595;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v262 = v261;
    v255(v260, v596);
    v263 = v262 * 1000000000.0;
    if (COERCE__INT64(fabs(v262 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    if (v263 <= -9.22337204e18)
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    if (v263 >= 9.22337204e18)
    {
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v264 = v598;
    sub_1CF5215C0(v258, v263, v587, v589, v586);
    v6 = v264;
    if (v264)
    {
      goto LABEL_122;
    }

    sub_1CF685B34();
    v265 = v595;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v267 = v266;
    v255(v265, v596);
    v268 = v267 * 1000000000.0;
    if (COERCE__INT64(fabs(v267 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

    if (v268 <= -9.22337204e18)
    {
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    if (v268 >= 9.22337204e18)
    {
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    v269 = v574;
    v270 = sub_1CF656F5C(v574, 0, v268, 0x8000);
    v259(v269, v601);
    v271 = v595;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v273 = v272;
    v255(v271, v596);
    v274 = v273 * 1000000000.0;
    if (COERCE__INT64(fabs(v273 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    v275 = v552;
    v81 = v593;
    v63 = v578;
    if (v274 <= -9.22337204e18)
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    if (v274 >= 9.22337204e18)
    {
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    sub_1CF5215C0(v270, v274, v587, v589, v586);

    v277 = v551;
    goto LABEL_127;
  }

  v231 = v588[3];
  sub_1CF046AB4();
  v232 = v584;
  v233 = v582;
  p_isa = v584;
  v604 = v582;
  v234 = v581;
  v235 = v583;
  v605 = v581;
  v606 = v583;
  type metadata accessor for ItemJob(255, &p_isa);
  MetatypeMetadata = swift_getMetatypeMetadata();
  sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
  swift_allocObject();
  v237 = sub_1CF9E6D68();
  v238 = v232;
  v239 = v237;
  p_isa = v238;
  v604 = v233;
  v605 = v234;
  v606 = v235;
  v240 = v599;
  *v241 = type metadata accessor for Ingestion.DeferredRescan(0, &p_isa);
  v242 = sub_1CF045898(v239, MetatypeMetadata);
  v243 = v598;
  v244 = (*(*v231 + 312))(v240, v242, v587, v589, *(v586 + 8));
  if (v243)
  {
    v242, v245, v246, v247, v248, v249, v250, v251;
    (*(v575 + 8))(v240, v601);
LABEL_123:
    v227 = v585;
    v228 = v566;
    v229 = &v608;
    goto LABEL_124;
  }

  v598 = 0;
  v335 = *(v575 + 8);
  v336 = v244;
  v335(v240, v601);
  v242, v337, v338, v339, v340, v341, v342, v343;
  p_isa = &v336->super.isa;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7118();
  v344 = v602;
  v336, v345, v346, v347, v348, v349, v350, v351;
  if (v344)
  {
    v353 = *(v344 + 96);
    v352 = *(v344 + 104);
    v354 = *(v344 + 112);
    sub_1CF03C530(v353, v352, *(v344 + 112));

    if (v354 != 3)
    {
      v63 = v578;
      if (v354 == 4)
      {
        sub_1CF03D7A8(v353, v352, 4u);
        if (!(v353 & 0xFFFFFFFFFFFFFFFELL | v352))
        {
          goto LABEL_115;
        }
      }

      else
      {
        sub_1CF03D7A8(v353, v352, v354);
      }

      (v576)(v585, v566);
      return;
    }

    sub_1CF03D7A8(v353, v352, 3u);
  }

  v63 = v578;
LABEL_115:
  sub_1CF046AB4();
  v403 = v595;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v405 = v404;
  v406 = v230[1];
  v406(v403, v596);
  v407 = v405 * 1000000000.0;
  if (COERCE__INT64(fabs(v405 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  if (v407 <= -9.22337204e18)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  if (v407 >= 9.22337204e18)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v408 = v574;
  sub_1CF656F44(v574, 0, v407, 0x8000);
  v335(v408, v601);
  v409 = sub_1CF052548(0x20000);

  v410 = v595;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v412 = v411;
  v406(v410, v596);
  v413 = v412 * 1000000000.0;
  if (COERCE__INT64(fabs(v412 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  v414 = v598;
  v275 = v552;
  v81 = v593;
  if (v413 <= -9.22337204e18)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v413 >= 9.22337204e18)
  {
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  sub_1CF5215C0(v409, v413, v587, v589, v586);
  v6 = v414;
  if (v414)
  {
LABEL_122:

    goto LABEL_123;
  }

  v277 = v551;
  v415 = *(**(v551 + 16) + 920);

  v415(v416);

LABEL_127:
  v417 = (*(**(v277 + 16) + 440))(v276);
  v418 = sub_1CF953FB8(v571, v570 & 1);
  sub_1CF5DD734(v417, v418, *(v277 + 32));

  v419 = v579;
  (v576)(v585, v566);
  v76 = v419;
  AssociatedTypeWitness = v601;
  v77 = v275;
LABEL_3:
  v82 = *(v77 + 56);
  v83 = *(v82 + 64);
  v558 = v82 + 64;
  v84 = 1 << *(v82 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & v83;
  v557 = (v84 + 63) >> 6;
  v571 = (v81 - 8);
  v585 = (v575 + 16);
  v597 = (v575 + 32);
  v570 = (v591 + 32);
  v599 = (v575 + 8);
  v576 = (v592 + 8);
  v563 = (v76 + 8);
  ++v594;
  v567 = v82;

  v87 = 0;
  *&v88 = 136446210;
  v562 = v88;
  v89 = v580;
  while (2)
  {
    v90 = v590;
    if (v86)
    {
      v598 = v6;
      v91 = v87;
      goto LABEL_15;
    }

    if (v557 <= v87 + 1)
    {
      v92 = v87 + 1;
    }

    else
    {
      v92 = v557;
    }

    do
    {
      v91 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        __break(1u);
LABEL_111:
        v381 = fpfs_current_or_default_log();
        v382 = v530;
        sub_1CF9E6128();
        v383 = sub_1CF9E6108();
        v384 = sub_1CF9E7298();
        v385 = os_log_type_enabled(v383, v384);
        v357 = v588;
        if (v385)
        {
          v386 = swift_slowAlloc();
          v600 = swift_slowAlloc();
          p_isa = v600;
          *v386 = v562;
          v387 = v357;
          v388 = v565;
          v389 = v566;
          swift_storeEnumTagMultiPayload();
          v390 = sub_1CF06AB58(v389);
          v392 = v391;
          v393 = v388;
          v357 = v387;
          (*v563)(v393, v389);
          v394 = sub_1CEFD0DF0(v390, v392, &p_isa);
          v392, v395, v396, v397, v398, v399, v400, v401;
          *(v386 + 4) = v394;
          _os_log_impl(&dword_1CEFC7000, v383, v384, "discarded %{public}s", v386, 0xCu);
          v402 = v600;
          __swift_destroy_boxed_opaque_existential_1(v600);
          v86 = v586;
          MEMORY[0x1D386CDC0](v402, -1, -1);
          MEMORY[0x1D386CDC0](v386, -1, -1);

          (*v576)(v530, v577);
        }

        else
        {

          (*v576)(v382, v577);
        }

        v358 = v537;
        v422 = *(**(v551 + 16) + 920);

        v422(v423);

LABEL_134:
        v424 = *(v552 + 65);
        if (v424 == 2)
        {
          v445 = fpfs_current_or_default_log();
          v446 = v528;
          sub_1CF9E6128();
          v447 = sub_1CF9E6108();
          v448 = sub_1CF9E7298();
          if (os_log_type_enabled(v447, v448))
          {
            v449 = swift_slowAlloc();
            v598 = v449;
            v600 = swift_slowAlloc();
            p_isa = v600;
            *v449 = v562;
            v450 = v357;
            v451 = v565;
            v452 = v566;
            swift_storeEnumTagMultiPayload();
            v453 = sub_1CF06AB58(v452);
            v455 = v454;
            v456 = v451;
            v357 = v450;
            (*v563)(v456, v452);
            v457 = sub_1CEFD0DF0(v453, v455, &p_isa);
            v455, v458, v459, v460, v461, v462, v463, v464;
            v465 = v598;
            *(v598 + 1) = v457;
            v466 = v465;
            _os_log_impl(&dword_1CEFC7000, v447, v448, "discarded %{public}s", v465, 0xCu);
            v467 = v600;
            __swift_destroy_boxed_opaque_existential_1(v600);
            v86 = v586;
            MEMORY[0x1D386CDC0](v467, -1, -1);
            MEMORY[0x1D386CDC0](v466, -1, -1);
          }

          v355 = (*v576)(v446, v577);
        }

        else if (v424 == 1)
        {
          v425 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v426 = sub_1CF9E6108();
          v427 = sub_1CF9E7298();
          if (os_log_type_enabled(v426, v427))
          {
            v428 = swift_slowAlloc();
            v600 = swift_slowAlloc();
            p_isa = v600;
            *v428 = v562;
            v429 = v357;
            v430 = v565;
            v431 = v566;
            swift_storeEnumTagMultiPayload();
            v432 = sub_1CF06AB58(v431);
            v434 = v433;
            v435 = v430;
            v357 = v429;
            (*v563)(v435, v431);
            v436 = sub_1CEFD0DF0(v432, v434, &p_isa);
            v434, v437, v438, v439, v440, v441, v442, v443;
            *(v428 + 4) = v436;
            _os_log_impl(&dword_1CEFC7000, v426, v427, "%{public}s", v428, 0xCu);
            v444 = v600;
            __swift_destroy_boxed_opaque_existential_1(v600);
            v86 = v586;
            MEMORY[0x1D386CDC0](v444, -1, -1);
            MEMORY[0x1D386CDC0](v428, -1, -1);

            (*v576)(v537, v577);
          }

          else
          {

            (*v576)(v358, v577);
          }

          v468 = v534;
          *v534 = 0;
          v469 = v536;
          swift_storeEnumTagMultiPayload();
          (*(*v357 + 312))(v468);
          v355 = (*(v535 + 8))(v468, v469);
        }

        if (*(v552 + 66))
        {
          v470 = fpfs_current_or_default_log();
          v471 = v531;
          sub_1CF9E6128();
          v472 = sub_1CF9E6108();
          v473 = sub_1CF9E7298();
          if (os_log_type_enabled(v472, v473))
          {
            v474 = swift_slowAlloc();
            v600 = swift_slowAlloc();
            p_isa = v600;
            *v474 = v562;
            v475 = v565;
            v476 = v566;
            swift_storeEnumTagMultiPayload();
            v477 = sub_1CF06AB58(v476);
            v479 = v478;
            v480 = v476;
            v357 = v588;
            (*v563)(v475, v480);
            v481 = v477;
            v86 = v586;
            v482 = sub_1CEFD0DF0(v481, v479, &p_isa);
            v479, v483, v484, v485, v486, v487, v488, v489;
            *(v474 + 4) = v482;
            _os_log_impl(&dword_1CEFC7000, v472, v473, "%{public}s", v474, 0xCu);
            v490 = v600;
            __swift_destroy_boxed_opaque_existential_1(v600);
            MEMORY[0x1D386CDC0](v490, -1, -1);
            MEMORY[0x1D386CDC0](v474, -1, -1);
          }

          (*v576)(v471, v577);
          p_isa = v584;
          v604 = v582;
          v605 = v581;
          v606 = v583;
          type metadata accessor for Ingestion.FetchEventStream(0, &p_isa);
          sub_1CF046AB4();
          v491 = v595;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v493 = v492;
          v494 = *v594;
          (*v594)(v491, v596);
          v495 = v493 * 1000000000.0;
          if (COERCE__INT64(fabs(v493 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v495 <= -9.22337204e18)
          {
LABEL_206:
            __break(1u);
            goto LABEL_207;
          }

          if (v495 >= 9.22337204e18)
          {
LABEL_207:
            __break(1u);
            goto LABEL_208;
          }

          v496 = v574;
          v497 = sub_1CF0523F0(v574, 0x2000000000000000, v495, 0);
          (*v599)(v496, v601);
          v498 = v595;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v500 = v499;
          v494(v498, v596);
          v501 = v500 * 1000000000.0;
          if (COERCE__INT64(fabs(v500 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_208:
            __break(1u);
            goto LABEL_209;
          }

          if (v501 <= -9.22337204e18)
          {
LABEL_209:
            __break(1u);
            goto LABEL_210;
          }

          if (v501 >= 9.22337204e18)
          {
LABEL_210:
            __break(1u);
            return;
          }

          sub_1CF5215C0(v497, v501, v587, v589, v86);

          if (v6)
          {
            return;
          }
        }

        v502 = *(v551 + 32);
        v503 = (*(*v357 + 192))(v355);
        if (v502)
        {
          v504 = *(v503 + 49);

          if (v504)
          {
LABEL_158:
            v507 = swift_allocObject();
            *(v507 + 16) = v589;
            *(v507 + 24) = v86;
            v508 = v552;
            v509 = *(v552 + 48);
            *(v507 + 64) = *(v552 + 32);
            *(v507 + 80) = v509;
            v510 = v508[5];
            *(v507 + 96) = v508[4];
            *(v507 + 112) = v510;
            v511 = v508[1];
            *(v507 + 32) = *v508;
            *(v507 + 48) = v511;
            *(v507 + 128) = v357;
            v512 = *(*v357 + 448);
            (*(*(v532 - 8) + 16))(&p_isa);

            v512("processStreamEvent(db:with:)", 28, 2, v502, 1, nullsub_1, 0, sub_1CF5DF228, v507);
LABEL_169:

            return;
          }
        }

        else
        {
          v506 = *(v503 + 48);

          if (v506)
          {
            goto LABEL_158;
          }
        }

        if (((*(*v357 + 152))(v505) & 4) == 0)
        {
          goto LABEL_158;
        }

        v513 = *(v552 + 24);
        v516 = *(v513 + 64);
        v515 = v513 + 64;
        v514 = v516;
        v517 = 1 << *(*(v552 + 24) + 32);
        v518 = -1;
        if (v517 < 64)
        {
          v518 = ~(-1 << v517);
        }

        v519 = v518 & v514;
        v520 = (v517 + 63) >> 6;
        v521 = *(v552 + 24);

        v522 = 0;
        for (i = v527; v519; v522 = v523)
        {
          v523 = v522;
LABEL_166:
          sub_1CF043498(*(v521 + 56) + *(v533 + 72) * (__clz(__rbit64(v519)) | (v523 << 6)), i, type metadata accessor for SyncState);
          v524 = v588[7];
          ObjectType = swift_getObjectType();
          (*(v524 + 8))(i, v587, v589, v586, ObjectType, v524);
          if (v6)
          {
            goto LABEL_177;
          }

          v519 &= v519 - 1;
          sub_1CF043504(i, type metadata accessor for SyncState);
        }

        while (1)
        {
          v523 = v522 + 1;
          if (__OFADD__(v522, 1))
          {
            break;
          }

          if (v523 >= v520)
          {
            goto LABEL_169;
          }

          v519 = *(v515 + 8 * v523);
          ++v522;
          if (v519)
          {
            goto LABEL_166;
          }
        }

LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      if (v91 >= v557)
      {
        v592 = v92 - 1;
        v598 = v6;
        v86 = 0;
        v103 = 1;
        v98 = v585;
        goto LABEL_16;
      }

      v86 = *(v558 + 8 * v91);
      ++v87;
    }

    while (!v86);
    v598 = v6;
LABEL_15:
    v93 = __clz(__rbit64(v86));
    v86 &= v86 - 1;
    v94 = v93 | (v91 << 6);
    v95 = v567;
    v96 = v575;
    v97 = v574;
    v98 = v585;
    (*(v575 + 16))(v574, *(v567 + 48) + *(v575 + 72) * v94, AssociatedTypeWitness);
    v99 = *(v95 + 56) + 16 * v94;
    v100 = *v99;
    LOBYTE(v95) = *(v99 + 8);
    v101 = v580 + *(v81 + 48);
    v102 = *(v96 + 32);
    v89 = v580;
    v102(v580, v97, AssociatedTypeWitness);
    v103 = 0;
    *v101 = v100;
    v101[8] = v95;
    v81 = v593;
    v592 = v91;
    v90 = v590;
    v63 = v578;
LABEL_16:
    v104 = *(v81 - 8);
    (*(v104 + 56))(v89, v103, 1, v81);
    v105 = v572;
    (*v570)(v572, v89, v573);
    if ((*(v104 + 48))(v105, 1, v81) == 1)
    {

      v172 = *(v552 + 80);
      v173 = *(v172 + 16);
      v174 = v584;
      if (v173)
      {
        v175 = (v172 + 32);
        v591 = (v575 + 48);
        v580 = (v540 + 8);
        v573 = v541 + 48;
        v572 = (v541 + 32);
        v570 = (v541 + 8);
        v571 = (v542 + 8);
        v578 = (v539 + 8);
        v568 = xmmword_1CFA00210;
        v176 = TupleTypeMetadata2;
        v177 = v548;
        v6 = v598;
        v178 = v588;
        while (1)
        {
          v180 = *v175;
          v179 = v175 + 1;
          p_isa = v174;
          v604 = v582;
          v605 = v581;
          v606 = v583;
          type metadata accessor for ConcreteJobResult(0, &p_isa);
          v600 = sub_1CF056580();
          v181 = *(v586 + 8);
          (*(*v178[2] + 568))(v180, v587, v589, v181);
          if (v6)
          {
            goto LABEL_169;
          }

          v593 = v179;
          v182 = v601;
          if ((*v591)(v177, 1, v601) == 1)
          {

            (*v578)(v177, v546);
            goto LABEL_34;
          }

          v590 = v173;
          (*v597)(v559, v177, v182);
          v183 = v584;
          p_isa = v584;
          v604 = v582;
          v184 = v581;
          v605 = v581;
          v606 = v583;
          v592 = type metadata accessor for JobResult(0, &p_isa);
          v598 = 0;
          v185 = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v187 = swift_getAssociatedConformanceWitness();
          p_isa = v182;
          v604 = v185;
          v605 = AssociatedConformanceWitness;
          v606 = v187;
          v188 = type metadata accessor for ReconciliationID(255, &p_isa);
          type metadata accessor for ReconciliationSideMutation(255, v183, v184, v189);
          v190 = swift_getTupleTypeMetadata2();
          v191 = v550;
          v192 = &v550[*(v190 + 48)];
          v193 = *v585;
          (*v585)(v550, v559, v182);
          v579 = v188;
          swift_storeEnumTagMultiPayload();
          *v192 = 0;
          *(v192 + 1) = 0;
          *(v192 + 2) = 0;
          *(v192 + 3) = 0xB000000000000000;
          *(v192 + 2) = 0u;
          *(v192 + 3) = 0u;
          *(v192 + 32) = 257;
          v194 = v587;
          swift_storeEnumTagMultiPayload();
          v195 = v549;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v600, v191);
          v196 = *v580;
          (*v580)(v191, v195);
          v197 = v547;
          v198 = v598;
          (*(*v551 + 240))(v559, 1, v194, v589, v181);
          v6 = v198;
          if (v198)
          {

            (*v599)(v559, v601);
            return;
          }

          v199 = v545;
          if ((*v573)(v197, 1, v545) == 1)
          {
            (*v571)(v197, v543);
            v176 = TupleTypeMetadata2;
          }

          else
          {
            v598 = v193;
            v200 = v544;
            (*v572)(v544, v197, v199);
            WitnessTable = swift_getWitnessTable();
            v202 = sub_1CF937C7C(v199, WitnessTable);
            v176 = TupleTypeMetadata2;
            if (v202)
            {
              v569 = v196;
              v203 = (*(*v588 + 552))();
              v205 = v584;
              v206 = v582;
              if (v203)
              {
                sub_1CF06D940(v199, WitnessTable, &p_isa);
                if (p_isa - 1 >= 2)
                {
                  p_isa = v205;
                  v604 = v206;
                  v605 = v581;
                  v606 = v583;
                  type metadata accessor for RemoteVersion.CleanRemoteVersions(0, &p_isa);
                  v207 = v595;
                  sub_1CF9E5CE8();
                  sub_1CF9E5C98();
                  v209 = v208;
                  (*v594)(v207, v596);
                  v210 = v209 * 1000000000.0;
                  if (COERCE__INT64(fabs(v209 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_202;
                  }

                  if (v210 <= -9.22337204e18)
                  {
                    goto LABEL_203;
                  }

                  v211 = v600;
                  if (v210 >= 9.22337204e18)
                  {
                    goto LABEL_204;
                  }

                  v212 = sub_1CF989304(v559, 0, v210, 2);
                  sub_1CF803A0C(v211, v212);
                }
              }

              type metadata accessor for ReconciliationSideMutation(255, v206, v583, v204);
              v213 = *(swift_getTupleTypeMetadata2() + 48);
              (v598)(v550, v559, v601);
              swift_storeEnumTagMultiPayload();
              v214 = v595;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v216 = v215;
              (*v594)(v214, v596);
              v217 = v216 * 1000000000.0;
              if (COERCE__INT64(fabs(v216 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_187;
              }

              if (v217 <= -9.22337204e18)
              {
                goto LABEL_188;
              }

              v218 = v544;
              if (v217 >= 9.22337204e18)
              {
                goto LABEL_189;
              }

              v219 = v550;
              v220 = &v550[v213];
              *v220 = v568;
              *(v220 + 2) = v217;
              swift_storeEnumTagMultiPayload();
              v221 = v549;
              swift_storeEnumTagMultiPayload();
              v222 = v600;
              sub_1CF06EB44(v600, v219);
              v569(v219, v221);
              (*v570)(v218, v199);
              v194 = v587;
              v173 = v590;
              goto LABEL_53;
            }

            (*v570)(v200, v199);
            v194 = v587;
          }

          v173 = v590;
          v222 = v600;
LABEL_53:
          v223 = v595;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v225 = v224;
          (*v594)(v223, v596);
          v226 = v225 * 1000000000.0;
          v177 = v548;
          if (COERCE__INT64(fabs(v225 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
            goto LABEL_180;
          }

          if (v226 <= -9.22337204e18)
          {
            goto LABEL_178;
          }

          if (v226 >= 9.22337204e18)
          {
            goto LABEL_179;
          }

          sub_1CF521850(v222, v226, v194, v589, v586);
          (*v599)(v559, v601);

          v178 = v588;
LABEL_34:
          --v173;
          v174 = v584;
          v175 = v593;
          if (!v173)
          {
            goto LABEL_78;
          }
        }
      }

      v176 = TupleTypeMetadata2;
      v6 = v598;
LABEL_78:
      v278 = *(v552 + 8);
      v279 = *(v278 + 64);
      v572 = (v278 + 64);
      v280 = 1 << *(v278 + 32);
      v281 = -1;
      if (v280 < 64)
      {
        v281 = ~(-1 << v280);
      }

      v282 = v281 & v279;
      v571 = ((v280 + 63) >> 6);
      v592 = v176 - 8;
      v591 = (v538 + 32);
      v590 = (v589 - 8);
      v573 = v278;

      v283 = 0;
      v86 = v586;
      while (1)
      {
        v284 = v560;
        if (!v282)
        {
          if (v571 <= v283 + 1)
          {
            v285 = (v283 + 1);
          }

          else
          {
            v285 = v571;
          }

          v286 = v285 - 1;
          while (1)
          {
            i = v283 + 1;
            if (__OFADD__(v283, 1))
            {
              break;
            }

            if (i >= v571)
            {
              v282 = 0;
              v296 = 1;
              goto LABEL_91;
            }

            v282 = *&v572[8 * i];
            ++v283;
            if (v282)
            {
              goto LABEL_90;
            }
          }

          __break(1u);
          goto LABEL_171;
        }

        i = v283;
LABEL_90:
        v287 = __clz(__rbit64(v282));
        v282 &= v282 - 1;
        v288 = v287 | (i << 6);
        v289 = v573;
        v290 = v575;
        v291 = v574;
        v292 = v601;
        (*(v575 + 16))(v574, *(v573 + 48) + *(v575 + 72) * v288, v601);
        LOBYTE(v288) = *(*(v289 + 56) + v288);
        v293 = *(TupleTypeMetadata2 + 48);
        v294 = *(v290 + 32);
        v284 = v560;
        v295 = v291;
        v176 = TupleTypeMetadata2;
        v294(v560, v295, v292);
        v296 = 0;
        v284[v293] = v288;
        v286 = i;
LABEL_91:
        v297 = *(v176 - 8);
        (*(v297 + 56))(v284, v296, 1, v176);
        v298 = v555;
        (*v591)(v555, v284, v556);
        if ((*(v297 + 48))(v298, 1, v176) == 1)
        {
          break;
        }

        v593 = v286;
        v299 = v6;
        LODWORD(v600) = v298[*(v176 + 48)];
        v300 = v561;
        v301 = v601;
        (*v597)(v561, v298, v601);
        v302 = fpfs_current_or_default_log();
        v303 = v553;
        sub_1CF9E6128();
        v304 = *v585;
        v305 = v554;
        (*v585)(v554, v300, v301);
        v306 = sub_1CF9E6108();
        v307 = sub_1CF9E7298();
        if (os_log_type_enabled(v306, v307))
        {
          v308 = swift_slowAlloc();
          v598 = v299;
          v309 = v308;
          v579 = v308;
          v580 = swift_slowAlloc();
          p_isa = v580;
          *v309 = v562;
          v310 = v305;
          v311 = *(swift_getTupleTypeMetadata2() + 48);
          LODWORD(v578) = v307;
          v312 = v565;
          v304(v565, v310, v301);
          v312[v311] = v600;
          v313 = v566;
          swift_storeEnumTagMultiPayload();
          v314 = *v599;
          (*v599)(v310, v301);
          v315 = sub_1CF06AB58(v313);
          v317 = v316;
          (*v563)(v312, v313);
          v318 = sub_1CEFD0DF0(v315, v317, &p_isa);
          v86 = v586;
          v317, v319, v320, v321, v322, v323, v324, v325;
          v326 = v579;
          *(v579 + 4) = v318;
          v327 = v326;
          _os_log_impl(&dword_1CEFC7000, v306, v578, "%{public}s", v326, 0xCu);
          v328 = v580;
          __swift_destroy_boxed_opaque_existential_1(v580);
          v329 = v328;
          v330 = v589;
          MEMORY[0x1D386CDC0](v329, -1, -1);
          v331 = v327;
          v332 = v598;
          MEMORY[0x1D386CDC0](v331, -1, -1);

          (*v576)(v303, v577);
        }

        else
        {
          v314 = *v599;
          (*v599)(v305, v301);

          (*v576)(v303, v577);
          v332 = v299;
          v86 = v586;
          v330 = v589;
        }

        LOBYTE(v602) = v600;
        v606 = v330;
        v607 = v86;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&p_isa);
        (*(*(v330 - 8) + 16))(boxed_opaque_existential_0, v587, v330);
        v334 = v561;
        sub_1CF617584(v561, &v602, v588, &p_isa);
        v6 = v332;
        v176 = TupleTypeMetadata2;
        if (v332)
        {

          v314(v334, v601);
          __swift_destroy_boxed_opaque_existential_1(&p_isa);
          return;
        }

        v314(v334, v601);
        __swift_destroy_boxed_opaque_existential_1(&p_isa);
        v283 = v593;
      }

      v356 = *(v552 + 64);
      if (v356 == 2)
      {
        goto LABEL_111;
      }

      v357 = v588;
      v358 = v537;
      if (v356 == 1)
      {
        v359 = fpfs_current_or_default_log();
        v360 = v529;
        sub_1CF9E6128();
        v361 = sub_1CF9E6108();
        v362 = sub_1CF9E7298();
        if (os_log_type_enabled(v361, v362))
        {
          v363 = swift_slowAlloc();
          v600 = swift_slowAlloc();
          p_isa = v600;
          *v363 = v562;
          v364 = v357;
          v365 = v565;
          v366 = v566;
          swift_storeEnumTagMultiPayload();
          v367 = sub_1CF06AB58(v366);
          v369 = v368;
          v370 = v365;
          v357 = v364;
          (*v563)(v370, v366);
          v371 = sub_1CEFD0DF0(v367, v369, &p_isa);
          v372 = v369;
          v358 = v537;
          v372, v373, v374, v375, v376, v377, v378, v379;
          *(v363 + 4) = v371;
          _os_log_impl(&dword_1CEFC7000, v361, v362, "%{public}s", v363, 0xCu);
          v380 = v600;
          __swift_destroy_boxed_opaque_existential_1(v600);
          v86 = v586;
          MEMORY[0x1D386CDC0](v380, -1, -1);
          MEMORY[0x1D386CDC0](v363, -1, -1);

          (*v576)(v529, v577);
        }

        else
        {

          (*v576)(v360, v577);
        }

        v420 = v534;
        *v534 = 0;
        v421 = v536;
        swift_storeEnumTagMultiPayload();
        (*(*v357 + 312))(v420);
        v355 = (*(v535 + 8))(v420, v421);
      }

      goto LABEL_134;
    }

    v106 = &v105[*(v81 + 48)];
    v591 = *v106;
    LODWORD(v579) = v106[8];
    v107 = v600;
    v108 = v601;
    (*v597)(v600, v105, v601);
    v109 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v110 = *v98;
    (*v98)(v90, v107, v108);
    v111 = v63;
    v112 = sub_1CF9E6108();
    v113 = sub_1CF9E7298();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *&v568 = v114;
      v569 = swift_slowAlloc();
      p_isa = v569;
      *v114 = v562;
      v115 = swift_getTupleTypeMetadata2();
      v116 = v565;
      v117 = &v565[*(v115 + 48)];
      v110(v565, v90, v108);
      *v117 = v591;
      v117[8] = v579;
      v118 = v566;
      swift_storeEnumTagMultiPayload();
      v591 = *v599;
      v591(v90, v108);
      v119 = sub_1CF06AB58(v118);
      v121 = v120;
      (*v563)(v116, v118);
      v122 = v119;
      v89 = v580;
      v123 = sub_1CEFD0DF0(v122, v121, &p_isa);
      v121, v124, v125, v126, v127, v128, v129, v130;
      v131 = v568;
      *(v568 + 4) = v123;
      v132 = v131;
      _os_log_impl(&dword_1CEFC7000, v112, v113, "%{public}s", v131, 0xCu);
      v133 = v569;
      __swift_destroy_boxed_opaque_existential_1(v569);
      v6 = v598;
      MEMORY[0x1D386CDC0](v133, -1, -1);
      v134 = v132;
      v135 = v584;
      MEMORY[0x1D386CDC0](v134, -1, -1);

      v63 = v578;
      (*v576)(v578, v577);
    }

    else
    {
      v591 = *v599;
      v591(v90, v108);

      (*v576)(v111, v577);
      v6 = v598;
      v63 = v111;
      v135 = v584;
    }

    p_isa = v135;
    v604 = v582;
    v605 = v581;
    v606 = v583;
    i = type metadata accessor for Ingestion.FetchItemMetadata(0, &p_isa);
    v137 = v595;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v139 = v138;
    v140 = *v594;
    (*v594)(v137, v596);
    v141 = v139 * 1000000000.0;
    v142 = v586;
    v81 = v593;
    if (COERCE__INT64(fabs(v139 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    if (v141 <= -9.22337204e18)
    {
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    if (v141 >= 9.22337204e18)
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    i = sub_1CF656F5C(v600, 0, v141, 0x8000);
    v143 = v595;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v145 = v144;
    v140(v143, v596);
    v146 = v145 * 1000000000.0;
    if (COERCE__INT64(fabs(v145 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    if (v146 <= -9.22337204e18)
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    if (v146 >= 9.22337204e18)
    {
LABEL_176:
      __break(1u);
LABEL_177:

      sub_1CF043504(i, type metadata accessor for SyncState);
      return;
    }

    sub_1CF5215C0(i, v146, v587, v589, v142);
    if (!v6)
    {
      AssociatedTypeWitness = v601;
      v591(v600, v601);

      v87 = v592;
      continue;
    }

    break;
  }

  v227 = v600;
  v228 = v601;
  v229 = &v609;
LABEL_124:
  (*(v229 - 32))(v227, v228);
}

void sub_1CF5B3C40(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v28 = a3;
  v6 = type metadata accessor for SyncState(0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 24);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = 1 << *(*(a2 + 24) + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v29 = *(a2 + 24);

  v16 = 0;
  v17 = v25;
  while (v14)
  {
    v31 = v4;
    v18 = v16;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    sub_1CF043498(*(v29 + 56) + *(v26 + 72) * (v19 | (v18 << 6)), v17, type metadata accessor for SyncState);
    v20 = *(v28 + 56);
    ObjectType = swift_getObjectType();
    v22 = v27[3];
    v21 = v27[4];
    v23 = __swift_project_boxed_opaque_existential_1(v27, v22);
    v24 = v31;
    (*(v20 + 8))(v17, v23, v22, v21, ObjectType, v20);
    v4 = v24;
    sub_1CF043504(v17, type metadata accessor for SyncState);
    if (v24)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_11;
    }

    v14 = *(v10 + 8 * v18);
    ++v16;
    if (v14)
    {
      v31 = v4;
      v16 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1CF5B3E48(void (*a1)(char *, uint64_t), _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v33 = a4;
  v34 = a5;
  v31 = a1;
  v32 = a2;
  v25 = a3;
  v8 = type metadata accessor for FileTreeChangeAggregator.Change(0, *(a3 + 16), *(a3 + 24), a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v24 - v13;
  v26 = v5;
  v14 = *(v5 + 16);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v27 = v9 + 32;
  v28 = v9 + 16;
  v30 = (v9 + 8);
  v35 = v14;

  v20 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      v22 = v29;
      (*(v9 + 16))(v29, *(v35 + 56) + *(v9 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v8);
      (*(v9 + 32))(v11, v22, v8);
      v23 = objc_autoreleasePoolPush();
      sub_1CF5B40CC(v11, v31, v32, v33, v34, &v36);
      if (v7)
      {
        break;
      }

      v7 = 0;
      v18 &= v18 - 1;
      objc_autoreleasePoolPop(v23);
      (*v30)(v11, v8);
      v20 = v21;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    objc_autoreleasePoolPop(v23);

    (*v30)(v11, v8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        sub_1CF5B01A0(v31, v32, v25, v33, v34);
        return;
      }

      v18 = *(v15 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1CF5B40CC(uint64_t a1, void (*a2)(char *, uint64_t), _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v38 = a6;
  v39 = a5;
  v43 = a3;
  v40 = a4;
  v41 = a1;
  v7 = *a2;
  v8 = *a2;
  v9 = sub_1CF9E5CF8();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v8 + 88);
  v12 = (v8 + 104);
  v13 = *(v7 + 80);
  v14 = *(v7 + 96);
  v16 = type metadata accessor for FileTreeWriter.FileTreeChange(0, v13, v14, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v34 - v18);
  *&v20 = v13;
  *(&v20 + 1) = *v11;
  *&v21 = v14;
  *(&v21 + 1) = *v12;
  v22 = v39;
  v44[0] = v20;
  v44[1] = v21;
  type metadata accessor for ConcreteJobResult(0, v44);
  v23 = sub_1CF056580();
  v24 = v14;
  v25 = v40;
  v27 = type metadata accessor for FileTreeChangeAggregator.Change(0, v13, v24, v26);
  sub_1CF5AF7A8(v27, v19);
  v28 = v42;
  sub_1CF6180A8(v19, 0, v23, a2, v43, v25, v22);
  if (v28)
  {

    (*(v17 + 8))(v19, v16);
    *v38 = v28;
    return;
  }

  (*(v17 + 8))(v19, v16);
  v29 = v35;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v31 = v30;
  (*(v36 + 8))(v29, v37);
  v32 = v31 * 1000000000.0;
  if (COERCE__INT64(fabs(v31 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v32 < 9.22337204e18)
  {
    v33 = v43;
    sub_1CF521850(v23, v32, v43, v25, v22);
    (*(*a2 + 576))(v33, v25, v22);

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1CF5B4444(uint64_t a1, void (*a2)(char *, uint64_t), NSObject *a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, uint64_t a6)
{
  v99 = a1;
  v87 = a5;
  v88 = a6;
  v85 = a3;
  v8 = *a2;
  v93 = sub_1CF9E5CF8();
  v95 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 16);
  v90 = sub_1CF9E75D8();
  v81 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v77 = &v75 - v11;
  v12 = *(a4 + 24);
  type metadata accessor for SnapshotItem(255, v10, v12, v13);
  v76 = sub_1CF9E75D8();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v75 - v14;
  v16 = type metadata accessor for FileTreeChangeAggregator.Change(255, v10, v12, v15);
  v84 = sub_1CF9E75D8();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v89 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v75 - v19;
  v92 = v16;
  v91 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v75 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  v97 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v75 - v26;
  v27 = *(v8 + 88);
  v86 = a2;
  v28 = *(v8 + 104);
  v101 = v10;
  v102 = v27;
  v103 = v12;
  v104 = v28;
  v29 = type metadata accessor for DirectionalTestingOperation(0, &v101);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v75 - v31;
  v101 = v10;
  v102 = v27;
  v103 = v12;
  v104 = v28;
  type metadata accessor for ConcreteJobResult(0, &v101);
  v100 = sub_1CF056580();
  (*(v30 + 16))(v32, v99, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v34 = v97;
      v99 = *(swift_getTupleTypeMetadata2() + 48);
      v35 = v96;
      v36 = v82;
      (*(v96 + 32))(v82, v32, v34);
      swift_getAssociatedConformanceWitness();
      v37 = v92;
      sub_1CF9E6708();
      v38 = v80;
      sub_1CF9E6658();
      v39 = v91;
      if ((*(v91 + 48))(v38, 1, v37) == 1)
      {
        (*(v35 + 8))(v36, v34);

        (*(v83 + 8))(v38, v84);
        (*(v81 + 8))(&v32[v99], v90);
        return;
      }

      v49 = v78;
      v47 = v93;
      (*(v39 + 32))(v78, v38, v37);
      v50 = &v49[*(v37 + 36)];
      v51 = v77;
      (*(v81 + 16))(v77, v50, v90);
      sub_1CF06B4E0(v51, v10, v12, v79);
      v52 = v94;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v54 = v53;
      (*(v95 + 8))(v52, v47);
      v55 = v54 * 1000000000.0;
      if (COERCE__INT64(fabs(v54 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_26;
      }

      v56 = v98;
      v45 = v87;
      v44 = v88;
      v46 = v85;
      v57 = v82;
      if (v55 <= -9.22337204e18)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v58 = v79;
      if (v55 >= 9.22337204e18)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1CF611904(v79, v82, 0, 0, 1, v86, 0x2000000000000000, v55, 2048, v100, v85, v87, v88);
      if (v56)
      {

        (*(v75 + 8))(v58, v76);
        (*(v91 + 8))(v78, v92);
        (*(v96 + 8))(v57, v97);
        (*(v81 + 8))(&v32[v99], v90);
        return;
      }

      (*(v75 + 8))(v58, v76);
      (*(v91 + 8))(v78, v92);
      (*(v96 + 8))(v57, v97);
      (*(v81 + 8))(&v32[v99], v90);
    }

    else
    {
      (*(v30 + 8))(v32, v29);
      v45 = v87;
      v44 = v88;
      v46 = v85;
      v47 = v93;
    }

    v48 = v100;
LABEL_18:
    v71 = v94;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v73 = v72;
    (*(v95 + 8))(v71, v47);
    v74 = v73 * 1000000000.0;
    if (COERCE__INT64(fabs(v73 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v74 > -9.22337204e18)
    {
      if (v74 < 9.22337204e18)
      {
        sub_1CF521850(v48, v74, v46, v45, v44);

        return;
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v99 = v28;
  v41 = v96;
  v40 = v97;
  (*(v96 + 32))(v24, v32, v97);
  swift_getAssociatedConformanceWitness();
  v42 = v92;
  sub_1CF9E6708();
  v43 = v89;
  sub_1CF9E6658();
  if ((*(v91 + 48))(v43, 1, v42) == 1)
  {
    (*(v41 + 8))(v24, v40);

    (*(v83 + 8))(v89, v84);
    return;
  }

  (*(v83 + 8))(v89, v84);
  v101 = v10;
  v102 = v27;
  v59 = v99;
  v103 = v12;
  v104 = v99;
  type metadata accessor for Ingestion.FetchItemMetadata(0, &v101);
  v60 = v94;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v62 = v61;
  v63 = v60;
  v64 = v93;
  (*(v95 + 8))(v63);
  v65 = v62 * 1000000000.0;
  if (COERCE__INT64(fabs(v62 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v65 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v65 < 9.22337204e18)
  {
    v66 = v24;
    v47 = v64;
    v67 = sub_1CF656F5C(v66, 0x2000000000000000, v65, 2048);
    v69 = *(v67 + 96);
    v68 = *(v67 + 104);
    *(v67 + 96) = 0;
    *(v67 + 104) = 0;
    v70 = *(v67 + 112);
    *(v67 + 112) = 1;

    sub_1CF03D7A8(v69, v68, v70);

    v101 = v10;
    v102 = v27;
    v103 = v12;
    v104 = v59;
    type metadata accessor for JobResult(0, &v101);
    v48 = v100;
    sub_1CF803A0C(v100, v67);

    (*(v96 + 8))(v66, v97);
    v45 = v87;
    v44 = v88;
    v46 = v85;
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
}

void sub_1CF5B501C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v31 = type metadata accessor for FileTreeChangeAggregator.Change(0, a3, a4, a4);
  MEMORY[0x1EEE9AC00](v31);
  v29 = v28 - v6;
  v30 = v5;
  v7 = *(a2 + 16);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v28[2] = v5 + 8;
  v28[3] = v5 + 16;
  v33 = v7;

  v13 = 0;
  v14 = v30;
  while (v11)
  {
    v15 = v13;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v29;
    v18 = v31;
    (*(v14 + 16))(v29, *(v33 + 56) + *(v14 + 72) * (v16 | (v15 << 6)), v31);
    v19 = v32[3];
    v37 = v32[4];
    v34 = __swift_project_boxed_opaque_existential_1(v32, v19);
    v35 = 0;
    v36 = 0xE000000000000000;
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    (*(v14 + 8))(v17, v18);
    v20 = v36;
    sub_1CF4FB2BC(v35, v36, v19, v37);
    v20, v21, v22, v23, v24, v25, v26, v27;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1CF5B5250(void *a1, uint64_t a2)
{
  v31 = a1;
  v3 = type metadata accessor for SyncState(0);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a2 + 24);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(a2 + 24) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v32 = *(a2 + 24);

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_9:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v29;
    sub_1CF043498(*(v32 + 56) + *(v30 + 72) * (v15 | (v14 << 6)), v29, type metadata accessor for SyncState);
    v17 = v31[3];
    v33 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v17);
    v18 = sub_1CF04CC80();
    v20 = v19;
    sub_1CF043504(v16, type metadata accessor for SyncState);
    sub_1CF4FB2BC(v18, v20, v17, v33);
    v20, v21, v22, v23, v24, v25, v26, v27;
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

    v11 = *(v7 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1CF5B543C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 40);
  v8 = sub_1CF9E7068();
  v9 = MEMORY[0x1E69E76D8];
  swift_getTupleTypeMetadata2();
  v10 = sub_1CF9E6DA8();
  v11 = sub_1CF04F294(v10, v9, v8, MEMORY[0x1E69E76E8]);
  v10, v12, v13, v14, v15, v16, v17, v18;
  swift_getTupleTypeMetadata2();
  v19 = sub_1CF9E6DA8();
  v20 = sub_1CF04F294(v19, AssociatedTypeWitness, &type metadata for FileItemKind, v7);
  v19, v21, v22, v23, v24, v25, v26, v27;
  v29 = type metadata accessor for FileTreeChangeAggregator.Change(255, a1, a2, v28);
  swift_getTupleTypeMetadata2();
  v30 = sub_1CF9E6DA8();
  v31 = sub_1CF04F294(v30, AssociatedTypeWitness, v29, v7);
  v30, v32, v33, v34, v35, v36, v37, v38;
  v39 = MEMORY[0x1E69E7CC0];
  v40 = sub_1CF03AD00(MEMORY[0x1E69E7CC0]);
  swift_getTupleTypeMetadata2();
  v41 = sub_1CF9E6DA8();
  v42 = sub_1CF04F294(v41, AssociatedTypeWitness, &type metadata for StreamResetReason, v7);
  v41, v43, v44, v45, v46, v47, v48, v49;
  *a3 = v11;
  *(a3 + 8) = v20;
  *(a3 + 16) = v31;
  *(a3 + 24) = v40;
  *&result = 2;
  *(a3 + 32) = xmmword_1CF9FD950;
  *(a3 + 48) = 0;
  *(a3 + 56) = v42;
  *(a3 + 64) = 0;
  *(a3 + 66) = 0;
  *(a3 + 72) = v39;
  *(a3 + 80) = v39;
  *(a3 + 88) = 0;
  return result;
}

void sub_1CF5B565C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E490]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setInterval_];
  [v3 setRequiresExternalPower_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:1];

  qword_1EDEBBD10 = v4;
}

void sub_1CF5B5740()
{
  v0 = objc_allocWithZone(FPDSharedSystemScheduler);
  v1 = sub_1CF9E6888();
  v4[4] = sub_1CF5B583C;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1CF5D9124;
  v4[3] = &block_descriptor_223_1;
  v2 = _Block_copy(v4);
  v3 = [v0 initWithLabel:v1 options:2 taskRequestBuilder:v2];

  _Block_release(v2);

  qword_1EDEBBBF8 = v3;
}

id sub_1CF5B583C()
{
  v0 = sub_1CF9E5E38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = sub_1CF9E5CF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(MEMORY[0x1E698E478]);
  v15 = sub_1CF9E6888();
  v16 = [v14 initWithIdentifier_];

  sub_1CF9E5CE8();
  sub_1CF9E5E08();
  sub_1CF5B5C00(v13, v9);
  (*(v1 + 8))(v3, v0);
  sub_1CEFCCBDC(v9, v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CF8DEF70(0.0, 3600.0);
    v18 = v17 + 86400.0;
  }

  else
  {
    sub_1CF9E5C28();
    v18 = v19;
    (*(v11 + 8))(v6, v10);
  }

  v20 = v16;
  [v20 setPriority_];
  [v20 setScheduleAfter_];
  [v20 setTrySchedulingBefore_];
  if (qword_1EDEAB628 != -1)
  {
    swift_once();
  }

  v22 = dword_1EDEBBA40 != 3 && dword_1EDEBBA40 != 9;
  [v20 setRequiresExternalPower_];
  [v20 setRequiresInexpensiveNetworkConnectivity_];

  sub_1CEFCCC44(v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (*(v11 + 8))(v13, v10);
  return v20;
}

uint64_t sub_1CF5B5C00@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v37 = a1;
  v36 = a3;
  v35 = sub_1CF9E5DD8();
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CF9E5DE8();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5DC8();
  v29 = *(v7 - 8);
  v8 = v29;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B80, &qword_1CFA0CD08);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B88, &unk_1CFA0CD10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  v17 = sub_1CF9E5518();
  v30 = *(v17 - 8);
  v31 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E5E38();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = sub_1CF9E5E48();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_1CF9E5508();
  v22 = *(v8 + 104);
  v23 = v7;
  v22(v10, *MEMORY[0x1E69698D0], v7);
  v24 = v33;
  (*(v4 + 104))(v6, *MEMORY[0x1E69699C8], v33);
  v25 = v32;
  v27 = v34;
  v26 = v35;
  (*(v32 + 104))(v34, *MEMORY[0x1E6969998], v35);
  sub_1CF9E5E18();
  (*(v25 + 8))(v27, v26);
  (*(v4 + 8))(v6, v24);
  (*(v29 + 8))(v10, v23);
  return (*(v30 + 8))(v19, v31);
}

uint64_t sub_1CF5B60F8()
{
  sub_1CF9E7948();
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0x6144746573657220, 0xEB000000003D6574);
  type metadata accessor for DBCounters(0);
  v17 = sub_1CF9E5C08();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  return 0x756F436873756C66;
}

uint64_t sub_1CF5B61E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F60, &unk_1CFA00830);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CF9FA440;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FA440;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0x756F436873756C66;
  *(v2 + 40) = 0xEA0000000000746ELL;
  v4 = *v0;
  *(v2 + 88) = MEMORY[0x1E69E76D8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  *(v1 + 56) = v5;
  *(v1 + 32) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CF9FA440;
  *(v6 + 56) = v3;
  *(v6 + 32) = 0x7461447465736572;
  *(v6 + 40) = 0xE900000000000065;
  v7 = *(type metadata accessor for DBCounters(0) + 20);
  v8 = sub_1CF9E5CF8();
  *(v6 + 88) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v6 + 64));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, &v0[v7], v8);
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  return v1;
}

uint64_t sub_1CF5B6360(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1A88, &qword_1CFA0CC80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF5DC71C();
  sub_1CF9E82A8();
  v8[15] = 0;
  sub_1CF9E7F68();
  if (!v1)
  {
    type metadata accessor for DBCounters(0);
    v8[14] = 1;
    sub_1CF9E5CF8();
    sub_1CF5DFB70(&qword_1EDEAB3D0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CF9E7F08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CF5B6518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1CF9E5CF8();
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1A70, &qword_1CFA0CC78);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for DBCounters(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0;
  v12 = *(v11 + 28);
  sub_1CF9E5CC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF5DC71C();
  sub_1CF9E8298();
  if (!v2)
  {
    v19 = v12;
    v13 = v22;
    v14 = v23;
    v26 = 0;
    v15 = v24;
    *v10 = sub_1CF9E7DE8();
    v25 = 1;
    sub_1CF5DFB70(&unk_1EDEAB3A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v18 = v5;
    sub_1CF9E7D88();
    (*(v13 + 8))(v7, v15);
    (*(v20 + 40))(v10 + v19, v18, v14);
    sub_1CF043498(v10, v21, type metadata accessor for DBCounters);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF043504(v10, type metadata accessor for DBCounters);
}

uint64_t sub_1CF5B6838()
{
  if (*v0)
  {
    return 0x7461447465736572;
  }

  else
  {
    return 0x756F436873756C66;
  }
}

void sub_1CF5B687C(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v12 = a1 == 0x756F436873756C66 && a2 == 0xEA0000000000746ELL;
  if (v12 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x7461447465736572 && a2 == 0xE900000000000065)
  {
    0xE900000000000065, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CF5B6968(uint64_t a1)
{
  v2 = sub_1CF5DC71C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B69A4(uint64_t a1)
{
  v2 = sub_1CF5DC71C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B6A1C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x7865646E496C6C61;
    v3 = 0x49676E6968746F6ELL;
    if (a1 != 2)
    {
      v3 = 0x7865646E49746F6ELL;
    }

    if (!a1)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v5 = sub_1CF9E7F98();
    v7 = v6;
    MEMORY[0x1D3868CC0](v5);
    v7, v8, v9, v10, v11, v12, v13, v14;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return 0x28726F68636E61;
  }
}

uint64_t sub_1CF5B6B34(void *a1, uint64_t a2, int a3)
{
  v38 = a2;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B00, &qword_1CFA0CCC0);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B08, &qword_1CFA0CCC8);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B10, &qword_1CFA0CCD0);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B18, &qword_1CFA0CCD8);
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v25 = &v24 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B20, &qword_1CFA0CCE0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B28, &qword_1CFA0CCE8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF5DE324();
  sub_1CF9E82A8();
  if (v37)
  {
    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v42 = 3;
        sub_1CF5DE3CC();
        v20 = v31;
        sub_1CF9E7E18();
        v22 = v32;
        v21 = v33;
      }

      else
      {
        v43 = 4;
        sub_1CF5DE378();
        v20 = v34;
        sub_1CF9E7E18();
        v22 = v35;
        v21 = v36;
      }
    }

    else if (v38)
    {
      v41 = 2;
      sub_1CF5DE420();
      v20 = v28;
      sub_1CF9E7E18();
      v22 = v29;
      v21 = v30;
    }

    else
    {
      v40 = 1;
      sub_1CF5DE474();
      v20 = v25;
      sub_1CF9E7E18();
      v22 = v26;
      v21 = v27;
    }

    (*(v22 + 8))(v20, v21);
    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    v39 = 0;
    sub_1CF5DE4C8();
    sub_1CF9E7E18();
    sub_1CF9E7EE8();
    (*(v13 + 8))(v15, v12);
    return (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_1CF5B7074(uint64_t a1)
{
  v2 = sub_1CF5DE420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B70B0(uint64_t a1)
{
  v2 = sub_1CF5DE420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CF5B70F8(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v20 = 0;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    v20 = v12 ^ 1;
  }

  *a3 = v20 & 1;
}

uint64_t sub_1CF5B7178(uint64_t a1)
{
  v2 = sub_1CF5DE4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B71B4(uint64_t a1)
{
  v2 = sub_1CF5DE4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B71F0()
{
  v1 = *v0;
  v2 = 0x726F68636E61;
  v3 = 0x7865646E496C6C61;
  v4 = 0x49676E6968746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x7865646E49746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
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

uint64_t sub_1CF5B72A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF5DD8DC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF5B72C8(uint64_t a1)
{
  v2 = sub_1CF5DE324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B7304(uint64_t a1)
{
  v2 = sub_1CF5DE324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B7340(uint64_t a1)
{
  v2 = sub_1CF5DE378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B737C(uint64_t a1)
{
  v2 = sub_1CF5DE378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B73B8(uint64_t a1)
{
  v2 = sub_1CF5DE3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B73F4(uint64_t a1)
{
  v2 = sub_1CF5DE3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B7430(uint64_t a1)
{
  v2 = sub_1CF5DE474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B746C(uint64_t a1)
{
  v2 = sub_1CF5DE474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B74A8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1CF5DDA9C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1CF5B74FC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 == 2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v3 > 2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v3 == 1)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (!v2)
  {
    v7 = v6;
  }

  if (v2 <= 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v8;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 8);
  }
}

void sub_1CF5B7558()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 90);

    v1(v3);

    sub_1CEFF7124(v1, v2);
  }
}

uint64_t sub_1CF5B75CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[24];
  v6 = *(v4 + 632);
  v8[0] = *(v4 + 616);
  v8[1] = v6;
  type metadata accessor for FSOrFPJob(0, v8);
  *&v8[0] = v5;
  sub_1CF9E66B8();

  swift_getWitnessTable();
  result = sub_1CF9E78C8();
  *a2 = result;
  return result;
}

uint64_t sub_1CF5B76D4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  *a8 = a1;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v11 = type metadata accessor for ConcreteDatabase.MaterializationRequest(0, v15);
  v12 = *(v11 + 52);
  v13 = sub_1CF9E6448();
  result = (*(*(v13 - 8) + 32))(&a8[v12], a2, v13);
  *&a8[*(v11 + 56)] = a3;
  return result;
}

id sub_1CF5B7778()
{
  sub_1CF5DC874();
  v1 = v0;

  v2 = sub_1CF9E6888();
  v1, v3, v4, v5, v6, v7, v8, v9;

  return v2;
}

id sub_1CF5B77D8(id result, uint64_t a2)
{
  if (result)
  {
    if (qword_1EDEADB60 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDEBBD10;

    return [v3 markWatcherDone_];
  }

  return result;
}

void sub_1CF5B7854(void *a1, void *a2)
{
  v5 = *(*a2 + 624);
  v6 = *(*a2 + 632);
  v7 = *(*a2 + 640);
  v113 = *(*a2 + 616);
  v4 = v113;
  v114 = v5;
  v106 = v5;
  v115 = v6;
  v116 = v7;
  v104 = v7;
  v8 = type metadata accessor for PersistenceTrigger(0, &v113);
  v110 = *(v8 - 8);
  v111 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v109 = v89 - v9;
  v103 = sub_1CF9E5CF8();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v6;
  v107 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v108 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v89 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = a2[2];
  v24 = v112;
  v25 = (*(*v23 + 240))(v22, v21, *(v20 + 8));
  if (!v24)
  {
    v97 = v19;
    v94 = v13;
    v95 = v16;
    v98 = a2;
    v96 = AssociatedTypeWitness;
    v26 = v111;
    v112 = 0;
    if (v25)
    {
LABEL_3:
      v28 = v109;
      v27 = v110;
      swift_storeEnumTagMultiPayload();
      sub_1CF042D98(v28);
      (*(v27 + 8))(v28, v26);
      return;
    }

    v29 = a1;
    v31 = a1[3];
    v30 = a1[4];
    v32 = __swift_project_boxed_opaque_existential_1(a1, v31);
    v33 = v112;
    v34 = (*(*v23 + 248))(v32, v31, *(v30 + 8));
    if (!v33)
    {
      v112 = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_3;
      }

      v93 = a1[3];
      v92 = a1[4];
      v91 = __swift_project_boxed_opaque_existential_1(a1, v93);
      v35 = v98[4];
      v90 = v98[3];
      v89[0] = v35;
      sub_1CF046AB4();
      v37 = v106;
      v36 = v107;
      v113 = v107;
      v114 = v106;
      v39 = v104;
      v38 = v105;
      v115 = v105;
      v116 = v104;
      v89[1] = type metadata accessor for ItemJob(255, &v113);
      MetatypeMetadata = swift_getMetatypeMetadata();
      sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      swift_allocObject();
      v41 = sub_1CF9E6D68();
      v113 = v36;
      v114 = v37;
      v42 = v97;
      v115 = v38;
      v116 = v39;
      *v43 = type metadata accessor for DiskImport.ContinueDiskImport(0, &v113);
      v44 = sub_1CF045898(v41, MetatypeMetadata);
      v45 = v112;
      v46 = (*(*v90 + 312))(v42, v44, v91, v93, *(v92 + 8));
      v112 = v45;
      if (v45)
      {
        (*(v108 + 8))(v42, v96);
        v44, v47, v48, v49, v50, v51, v52, v53;
        return;
      }

      v54 = *(v108 + 8);
      v55 = v46;
      v54(v42, v96);
      v44, v56, v57, v58, v59, v60, v61, v62;
      v113 = v55;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      v63 = sub_1CF9E7128();
      v55, v64, v65, v66, v67, v68, v69, v70;
      if ((v63 & 1) == 0)
      {
        goto LABEL_3;
      }

      v71 = fpfs_current_or_default_log();
      v72 = v94;
      sub_1CF9E6128();
      v73 = sub_1CF9E6108();
      v74 = sub_1CF9E72B8();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_1CEFC7000, v73, v74, "👽  missing continue-disk-import job, adding a new one", v75, 2u);
        MEMORY[0x1D386CDC0](v75, -1, -1);
      }

      (*(v99 + 8))(v72, v100);
      v76 = v29[3];
      v108 = v29[4];
      v107 = __swift_project_boxed_opaque_existential_1(v29, v76);
      sub_1CF046AB4();
      v77 = v102;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v79 = v78;
      v80 = *(v101 + 8);
      v80(v77, v103);
      v81 = v79 * 1000000000.0;
      if (COERCE__INT64(fabs(v79 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v81 > -9.22337204e18)
      {
        v82 = v95;
        if (v81 < 9.22337204e18)
        {
          v83 = sub_1CF559420();
          v54(v82, v96);
          v84 = v102;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v86 = v85;
          v80(v84, v103);
          v87 = v86 * 1000000000.0;
          if (COERCE__INT64(fabs(v86 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v88 = v112;
            if (v87 > -9.22337204e18)
            {
              if (v87 < 9.22337204e18)
              {
                sub_1CF5215C0(v83, v87, v107, v76, v108);

                if (!v88)
                {
                  v112 = 0;
                  goto LABEL_3;
                }

                return;
              }

LABEL_25:
              __break(1u);
              return;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

uint64_t sub_1CF5B805C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 632);
  v8[0] = *(*a2 + 616);
  v8[1] = v2;
  v3 = type metadata accessor for PersistenceTrigger(0, v8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  swift_storeEnumTagMultiPayload();
  sub_1CF042D98(v6);
  return (*(v4 + 8))(v6, v3);
}

id sub_1CF5B817C(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(**(a2 + 24) + 488))(v6, v4, v5);
  if (!v2)
  {
    if (qword_1EDEAC220 != -1)
    {
      swift_once();
    }

    result = [qword_1EDEBBA80 removeWatcher_];
    *(a2 + qword_1EDEBBC40) = 0;
  }

  return result;
}

uint64_t sub_1CF5B8260(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 632);
  v8[0] = *(*a2 + 616);
  v8[1] = v2;
  v3 = type metadata accessor for PersistenceTrigger(0, v8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  *(v8 - v5) = &unk_1F4BEF0B0;
  swift_storeEnumTagMultiPayload();
  sub_1CF042D98(v6);
  return (*(v4 + 8))(v6, v3);
}

double sub_1CF5B838C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1CF5A5720(v3);

  return result;
}

void sub_1CF5B83E0(uint64_t *a1@<X0>, uint64_t a2@<X1>, _TtC18FileProviderDaemon8FSTester *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  swift_beginAccess();
  v11 = a1[24];
  v29 = a2;
  v30 = a3;

  v12 = *(v10 + 632);
  v28[0] = *(v10 + 616);
  v28[1] = v12;
  type metadata accessor for FSOrFPJob(0, v28);
  sub_1CF9E6728();
  a3, v13, v14, v15, v16, v17, v18, v19;
  v11, v20, v21, v22, v23, v24, v25, v26;
  v27 = *&v28[0];
  if ((~*&v28[0] & 0xF000000000000007) == 0)
  {

    v27 = a4;
  }

  *a5 = v27;
}

uint64_t sub_1CF5B84FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v101 = a6;
  v112 = a5;
  v109 = a3;
  v110 = a4;
  v111 = a2;
  v7 = *(*a2 + 632);
  v119[0] = *(*a2 + 616);
  v119[1] = v7;
  v8 = type metadata accessor for PersistenceTrigger(0, v119);
  v106 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v97 - v11;
  v12 = sub_1CF9E6118();
  v114 = *(v12 - 8);
  v115 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v97 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v97 - v17;
  v18 = sub_1CF9E6068();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v97 - v25;
  v27 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v27);
  v120 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDEBBE40;
  (*(v19 + 56))(v26, 1, 1, v18);
  *&v119[0] = 0;
  *(&v119[0] + 1) = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2072656767697274, 0xE800000000000000);
  v118 = a1;
  sub_1CF9E7FD8();
  v103 = *(&v119[0] + 1);
  v104 = *&v119[0];
  sub_1CEFCCBDC(v26, v23, &unk_1EC4BED20, &unk_1CFA00700);
  v30 = *(v19 + 48);
  v31 = v30(v23, 1, v18);
  v107 = v8;
  if (v31 == 1)
  {
    v32 = v29;
    v33 = v108;
    sub_1CF9E6048();
    v34 = v33;
    if (v30(v23, 1, v18) != 1)
    {
      sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v34 = v108;
    (*(v19 + 32))(v108, v23, v18);
  }

  v35 = v120;
  (*(v19 + 16))(v120, v34, v18);
  *(v35 + *(v27 + 20)) = v29;
  v36 = v35 + *(v27 + 24);
  *v36 = "SQLDB: React to trigger";
  *(v36 + 8) = 23;
  *(v36 + 16) = 2;
  v37 = v29;
  v38 = v34;
  v39 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1CF9FA450;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  *(v40 + 64) = sub_1CEFD51C4();
  v41 = v103;
  *(v40 + 32) = v104;
  *(v40 + 40) = v41;
  v108 = v37;
  sub_1CF9E6028(v39, &dword_1CEFC7000, v37, "SQLDB: React to trigger", 23, 2, v35, "%s", 2);
  v40, v42, v43, v44, v45, v46, v47, v48;
  (*(v19 + 8))(v38, v18);
  sub_1CEFCCC44(v26, &unk_1EC4BED20, &unk_1CFA00700);
  v49 = [objc_allocWithZone(FPLoggerScope) init];
  v50 = fpfs_current_or_default_log();
  v51 = v117;
  sub_1CF9E6128();
  v52 = v105;
  v53 = v106;
  v54 = *(v106 + 16);
  v55 = v107;
  v54(v105, v118, v107);
  v56 = v49;
  v57 = sub_1CF9E6108();
  v58 = sub_1CF9E7288();

  v59 = os_log_type_enabled(v57, v58);
  v104 = v56;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v99 = v58;
    v61 = v60;
    v98 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    *&v119[0] = v103;
    *v61 = 138412546;
    v62 = [v56 enter];
    *(v61 + 4) = v62;
    v63 = v98;
    *v98 = v62;
    *(v61 + 12) = 2082;
    v54(v100, v52, v55);
    v64 = sub_1CF9E6948();
    v66 = v65;
    (*(v53 + 8))(v52, v55);
    v67 = sub_1CEFD0DF0(v64, v66, v119);
    v66, v68, v69, v70, v71, v72, v73, v74;
    *(v61 + 14) = v67;
    _os_log_impl(&dword_1CEFC7000, v57, v99, "%@  💡 trigger: %{public}s", v61, 0x16u);
    sub_1CEFCCC44(v63, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v63, -1, -1);
    v75 = v103;
    __swift_destroy_boxed_opaque_existential_1(v103);
    MEMORY[0x1D386CDC0](v75, -1, -1);
    MEMORY[0x1D386CDC0](v61, -1, -1);

    v76 = *(v114 + 8);
    v77 = v117;
  }

  else
  {

    (*(v53 + 8))(v52, v55);
    v76 = *(v114 + 8);
    v77 = v51;
  }

  v78 = v115;
  v76(v77, v115);
  v79 = v113;
  (*(*v111 + 2592))(v118, v109, v110, v112);
  if (v79)
  {
    v80 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v81 = v104;
    v82 = sub_1CF9E6108();
    v83 = sub_1CF9E7288();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      v86 = [v81 leave];
      *(v84 + 4) = v86;
      *v85 = v86;
      _os_log_impl(&dword_1CEFC7000, v82, v83, "%@", v84, 0xCu);
      sub_1CEFCCC44(v85, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v85, -1, -1);
      MEMORY[0x1D386CDC0](v84, -1, -1);
    }

    v76(v116, v78);
    sub_1CF9E7458();
    v87 = v120;
    sub_1CF9E6038();
    result = sub_1CF043504(v87, type metadata accessor for Signpost);
    *v101 = v79;
  }

  else
  {
    v89 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v90 = v104;
    v91 = sub_1CF9E6108();
    v92 = sub_1CF9E7288();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      v95 = [v90 leave];
      *(v93 + 4) = v95;
      *v94 = v95;
      _os_log_impl(&dword_1CEFC7000, v91, v92, "%@", v93, 0xCu);
      sub_1CEFCCC44(v94, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v94, -1, -1);
      MEMORY[0x1D386CDC0](v93, -1, -1);
    }

    v76(v102, v78);
    sub_1CF9E7458();
    v96 = v120;
    sub_1CF9E6038();
    return sub_1CF043504(v96, type metadata accessor for Signpost);
  }

  return result;
}

uint64_t sub_1CF5B901C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v50 = a1;
  v55 = sub_1CF9E6118();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = sub_1CF9E64A8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v6 + 64);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19, v21);
  v25 = v24;
  LOBYTE(v24) = sub_1CF9E64D8();
  result = (*(v20 + 8))(v23, v19);
  if (v24)
  {
    if (sub_1CF03BB04())
    {
      v27 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v28 = sub_1CF9E6108();
      v29 = sub_1CF9E7298();
      if (!os_log_type_enabled(v28, v29))
      {
LABEL_10:
        v8 = v18;
        goto LABEL_11;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "🚀  scheduler not stable: jobs are running";
    }

    else
    {
      v32 = *(v6 + 24);
      if ((*(*v32 + 200))())
      {
        v33 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v28 = sub_1CF9E6108();
        v34 = sub_1CF9E7298();
        if (!os_log_type_enabled(v28, v34))
        {
          v8 = v15;
          goto LABEL_11;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1CEFC7000, v28, v34, "🚀  scheduler not stable: some throttles are still active", v30, 2u);
        v18 = v15;
        goto LABEL_9;
      }

      v37 = v51;
      v36 = v52;
      v38 = v53;
      v39 = (*(*v32 + 192))(v50 & 1, v51, v52, v53);
      if (v5)
      {
        return v35 & 1;
      }

      if (v39)
      {
        v40 = fpfs_current_or_default_log();
        v18 = v49;
        sub_1CF9E6128();
        v28 = sub_1CF9E6108();
        v29 = sub_1CF9E7298();
        if (!os_log_type_enabled(v28, v29))
        {
          goto LABEL_10;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "🚀  scheduler not stable: some jobs are still pending execution";
      }

      else
      {
        v41 = (*(**(v6 + 16) + 304))(v37, v36, v38);
        if ((v41 & 1) == 0)
        {

          v43 = sub_1CF529F40();

          if ((v43 & 1) == 0)
          {

            v44 = sub_1CF529F40();

            if ((v44 & 1) == 0)
            {
              v35 = 1;
              return v35 & 1;
            }
          }

          v45 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v28 = sub_1CF9E6108();
          v46 = sub_1CF9E7298();
          if (!os_log_type_enabled(v28, v46))
          {
LABEL_11:

            (*(v54 + 8))(v8, v55);
            v35 = 0;
            return v35 & 1;
          }

          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_1CEFC7000, v28, v46, "🚀  scheduler not stable: some ingestions are being deferred", v30, 2u);
          v18 = v8;
          goto LABEL_9;
        }

        v42 = fpfs_current_or_default_log();
        v18 = v48;
        sub_1CF9E6128();
        v28 = sub_1CF9E6108();
        v29 = sub_1CF9E7298();
        if (!os_log_type_enabled(v28, v29))
        {
          goto LABEL_10;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "🚀  scheduler not stable: some reconciliations are pending scheduling";
      }
    }

    _os_log_impl(&dword_1CEFC7000, v28, v29, v31, v30, 2u);
LABEL_9:
    MEMORY[0x1D386CDC0](v30, -1, -1);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF5B95DC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E72C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v44 = v11;
    v19 = v18;
    *v18 = 134217984;
    v45 = a3;
    v46 = a4;
    v47 = a6;
    v48 = v49;
    v42 = type metadata accessor for UserRequest(255, &v45);
    type metadata accessor for FPStabilizationMode(255);
    v43 = v17;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    swift_getTupleTypeMetadata3();
    *(v19 + 1) = sub_1CF9E6DF8();
    a2, v20, v21, v22, v23, v24, v25, v26;
    _os_log_impl(&dword_1CEFC7000, v16, v43, "🚀  job scheduler is stable and flushed, calling %ld stabilization waiters", v19, 0xCu);
    v27 = v19;
    v11 = v44;
    MEMORY[0x1D386CDC0](v27, -1, -1);
  }

  else
  {

    a2, v28, v29, v30, v31, v32, v33, v34;
  }

  (*(v12 + 8))(v14, v11);
  v45 = a3;
  v46 = a4;
  v47 = a6;
  v48 = v49;
  type metadata accessor for UserRequest(255, &v45);
  type metadata accessor for FPStabilizationMode(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
  swift_getTupleTypeMetadata3();
  result = sub_1CF9E6DF8();
  if (result)
  {
    v36 = 0;
    for (i = a2[1].tester; ; i += 32)
    {
      v38 = sub_1CF9E6DC8();
      result = sub_1CF9E6D78();
      if ((v38 & 1) == 0)
      {
        break;
      }

      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_11;
      }

      v40 = *(i - 1);
      v41 = *(i - 3);
      v45 = 0;
      sub_1CEFD09A0(v41);

      v40(&v45);
      sub_1CF5DE5B8(v41);

      result = sub_1CF9E6DF8();
      ++v36;
      if (v39 == result)
      {
        return result;
      }
    }

    result = sub_1CF9E7998();
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5B991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a7;
  v17[3] = a8;
  type metadata accessor for UserRequest(255, v17);
  type metadata accessor for FPStabilizationMode(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
  swift_getTupleTypeMetadata3();
  result = sub_1CF9E6DF8();
  if (result)
  {
    v11 = 0;
    for (i = a3 + 56; ; i += 32)
    {
      v13 = sub_1CF9E6DC8();
      result = sub_1CF9E6D78();
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_8;
      }

      v15 = *(i - 8);
      v16 = *(i - 24);
      v17[0] = a2;
      sub_1CEFD09A0(v16);

      v15(v17);
      sub_1CF5DE5B8(v16);

      result = sub_1CF9E6DF8();
      ++v11;
      if (v14 == result)
      {
        return result;
      }
    }

    result = sub_1CF9E7998();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5B9A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a2;
  v35 = a4;
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E72C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = a5;
    v20 = a7;
    v21 = a8;
    v22 = v19;
    *v19 = 134217984;
    *(v19 + 4) = v33;
    _os_log_impl(&dword_1CEFC7000, v17, v18, "🚀  job scheduler is stable and flushed, calling %ld stabilization waiters with no noBackgroundWork", v19, 0xCu);
    v23 = v22;
    a8 = v21;
    a7 = v20;
    a5 = v32;
    MEMORY[0x1D386CDC0](v23, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v34[0] = v35;
  v34[1] = a5;
  v34[2] = a7;
  v34[3] = a8;
  type metadata accessor for UserRequest(255, v34);
  type metadata accessor for FPStabilizationMode(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
  swift_getTupleTypeMetadata3();
  result = sub_1CF9E6DF8();
  if (result)
  {
    v25 = 0;
    for (i = a3 + 56; ; i += 32)
    {
      v27 = sub_1CF9E6DC8();
      result = sub_1CF9E6D78();
      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_10;
      }

      v29 = *(i - 8);
      v30 = *(i - 24);
      v34[0] = 0;
      sub_1CEFD09A0(v30);

      v29(v34);
      sub_1CF5DE5B8(v30);

      result = sub_1CF9E6DF8();
      ++v25;
      if (v28 == result)
      {
        return result;
      }
    }

    result = sub_1CF9E7998();
    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5B9D80(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  (*(*a1[2] + 528))(a2, a3, v7);
  (*(*a1[4] + 688))(a2, a3, v7);
  return (*(*a1[5] + 688))(a2, a3, v7);
}

uint64_t sub_1CF5B9E88(void *a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
    return sub_1CF5A62B4(v7, v5, v6);
  }

  return result;
}

uint64_t sub_1CF5B9F38(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_1CF9E7458();
  type metadata accessor for Signpost(0);
  sub_1CF9E6038();
  a3(v6, a1);
  return sub_1CEFCCC44(v6, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5B9FE8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, char *a10, char *a11, uint64_t a12)
{
  v98 = a8;
  LODWORD(v105) = a7;
  v15 = sub_1CF9E6068();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v106 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v103 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v94 - v21;
  v23 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v23);
  v109 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v25 = *(v23 + 24);
  v26 = *(a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = *(a1 + v25 + 16);
  v97 = *(a1 + *(v23 + 20));
  v96 = v26;
  v95 = v27;
  v94[3] = v28;
  v99 = a1;
  v29 = sub_1CF9E6038();
  v30 = a2(v29);
  v108 = a4;
  v110 = *(a4 + 80);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v107 = a9;
  v102 = qword_1EDEBBE40;
  (*(v16 + 56))(v22, 1, 1, v15);
  *&v111 = 0;
  *(&v111 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&v111 + 1), v31, v32, v33, v34, v35, v36, v37;
  strcpy(&v111, "async batch ");
  BYTE13(v111) = 0;
  HIWORD(v111) = -5120;
  v38 = sub_1CF9E7988();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](0x467265746661203ALL, 0xED00003D6873756CLL);
  v104 = v30;
  if (v30)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v30)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v48, v49);
  v49, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](4424054777695860000, 0xE800000000000000);
  if ((v110 & 4) != 0)
  {
    v57 = 1702195828;
  }

  else
  {
    v57 = 0x65736C6166;
  }

  if ((v110 & 4) != 0)
  {
    v58 = 0xE400000000000000;
  }

  else
  {
    v58 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v57, v58);
  v58, v59, v60, v61, v62, v63, v64, v65;
  v100 = *(&v111 + 1);
  v101 = v111;
  v105 = v22;
  v66 = v103;
  sub_1CEFCCBDC(v22, v103, &unk_1EC4BED20, &unk_1CFA00700);
  v67 = *(v16 + 48);
  if (v67(v66, 1, v15) == 1)
  {
    v68 = v102;
    v69 = v102;
    v70 = v106;
    sub_1CF9E6048();
    v71 = v67(v66, 1, v15);
    v72 = v109;
    if (v71 != 1)
    {
      sub_1CEFCCC44(v66, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v70 = v106;
    (*(v16 + 32))(v106, v66, v15);
    v72 = v109;
    v68 = v102;
  }

  v103 = a12;
  v109 = a11;
  v106 = a10;
  v73 = (v110 & 4) == 0;
  (*(v16 + 16))(v72, v70, v15);
  *(v72 + *(v23 + 20)) = v68;
  v74 = v72 + *(v23 + 24);
  *v74 = "DB queue";
  *(v74 + 8) = 8;
  *(v74 + 16) = 2;
  v75 = v68;
  v76 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1CF9FA450;
  *(v77 + 56) = MEMORY[0x1E69E6158];
  *(v77 + 64) = sub_1CEFD51C4();
  v78 = v100;
  *(v77 + 32) = v101;
  *(v77 + 40) = v78;
  v93 = v77;
  LOBYTE(v92) = 2;
  sub_1CF9E6028(v76, &dword_1CEFC7000, v75, "DB queue", 8, 2, v72, "%s", 2);
  v77, v79, v80, v81, v82, v83, v84, v85;
  (*(v16 + 8))(v70, v15);
  v86 = sub_1CEFCCC44(v105, &unk_1EC4BED20, &unk_1CFA00700);
  if (v104 & v73)
  {
    (*(*v108 + 448))("asyncBatch(function:side:afterNextDurableFlush:onCancel:updateBlock:)", 69, 2, v98 & 1, 0, v107, v106, v109, v103);
  }

  else
  {
    v112 = 0;
    v87 = MEMORY[0x1EEE9AC00](v86);
    v88 = v108;
    v89 = v103;
    *&v94[-16] = v109;
    *&v94[-14] = v89;
    *&v94[-12] = v88;
    *&v94[-10] = &v112;
    v91 = v99;
    v92 = v107;
    v93 = v106;
    (*(*v88 + 2528))(&v111, sub_1CF5DFA18, v87);
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF043504(v72, type metadata accessor for Signpost);
}

uint64_t sub_1CF5BA7AC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, void (*a7)(_BYTE *, uint64_t))
{
  a2();
  if (v7)
  {
    *a5 = 1;
    sub_1CF1A91AC(a1, v15);
    sub_1CF9E7458();
    type metadata accessor for Signpost(0);
    sub_1CF9E6038();
    a7(v15, v7);
    sub_1CEFCCC44(v15, &unk_1EC4C1B30, &qword_1CFA05300);
    return swift_willThrow();
  }

  else
  {
    v11 = a1[3];
    v12 = a1[4];
    v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
    return sub_1CF5A62B4(v13, v11, v12);
  }
}

uint64_t sub_1CF5BA8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 192) = a6;
  *(v7 + 200) = a7;
  *(v7 + 176) = a4;
  *(v7 + 184) = a5;
  v8 = *a4;
  v25 = *(*a4 + 96);
  v26 = *(*a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 208) = AssociatedTypeWitness;
  v24 = v8[11];
  v10 = swift_getAssociatedTypeWitness();
  *(v7 + 216) = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v7 + 224) = AssociatedConformanceWitness;
  v12 = swift_getAssociatedConformanceWitness();
  *(v7 + 232) = v12;
  *(v7 + 80) = AssociatedTypeWitness;
  *(v7 + 88) = v10;
  *(v7 + 96) = AssociatedConformanceWitness;
  *(v7 + 104) = v12;
  v13 = type metadata accessor for CodepathTriggeringDiagnostics(0, v7 + 80);
  *(v7 + 240) = v13;
  *(v7 + 248) = *(v13 - 8);
  *(v7 + 256) = swift_task_alloc();
  v14 = v8[13];
  v15 = v8[14];
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *&v19 = v26;
  *(&v19 + 1) = v24;
  *&v20 = v25;
  *(&v20 + 1) = v14;
  *(v7 + 32) = v20;
  *(v7 + 16) = v19;
  *(v7 + 48) = v15;
  *(v7 + 56) = WitnessTable;
  *(v7 + 64) = v17;
  *(v7 + 72) = v18;
  type metadata accessor for FPDiagnosticsManager(0, v7 + 16);
  swift_getWitnessTable();
  v22 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF5BAB9C, v22, v21);
}

uint64_t sub_1CF5BAB9C()
{
  *(v0 + 264) = sub_1CF2C1E04();

  return MEMORY[0x1EEE6DFA0](sub_1CF5BAC08, 0, 0);
}

void sub_1CF5BAC08(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(*(v8 + 184) + 16);
  *(v8 + 272) = v9;
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      if (v10 >= v9)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v11 = *(v8 + 184) + 32 * v10;
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);
      v14 = *(v11 + 48);
      v45 = *(v11 + 56);
      v42 = *(v11 + 57);
      v43 = *(v11 + 58);
      v15 = __OFADD__(v10++, 1);
      *(v8 + 280) = v10;
      if (v15)
      {
        goto LABEL_35;
      }

      v16 = *(*(v8 + 264) + 16);
      if (v16)
      {
        break;
      }

LABEL_4:
      if (v10 == v9)
      {
        goto LABEL_28;
      }
    }

    v41 = v10;
    v17 = 0;
    while (1)
    {
      v18 = *(v8 + 264) + v17;
      a2 = *(v18 + 40);
      v19 = *(v18 + 48);
      v20 = *(v18 + 56);
      v21 = *(v18 + 57);
      v22 = *(v18 + 58);
      v23 = *(v18 + 32) == v13 && a2 == v12;
      if (v23 || (sub_1CF9E8048()) && v19 == v14)
      {
        v24 = v20 == 6 || v20 == v45;
        if (v24 && (v21 == 89 || v42 != 89 && qword_1CFA0D698[v21] == qword_1CFA0D698[v42]) && (v22 == 2 || !((v43 == 2) | (v22 ^ v43) & 1)))
        {
          break;
        }
      }

      v17 += 32;
      if (!--v16)
      {
        v9 = *(v8 + 272);
        v10 = v41;
        goto LABEL_4;
      }
    }

    v26 = *(v8 + 256);
    v27 = *(v8 + 232);
    v29 = *(v8 + 216);
    v28 = *(v8 + 224);
    v30 = *(v8 + 208);
    v44 = *(v8 + 200);
    v31 = *(v8 + 192);
    *(v8 + 112) = v30;
    *(v8 + 120) = v29;
    *(v8 + 128) = v28;
    *(v8 + 136) = v27;
    v32 = v8;
    v33 = type metadata accessor for ReconciliationID(255, v8 + 112);
    sub_1CF9E7FA8();
    v34 = *(v33 - 8);
    swift_allocObject();
    v35 = sub_1CF9E6D68();
    (*(v34 + 16))(v36, v31, v33);
    v37 = sub_1CF045898(v35, v33);
    v32[36] = v37;
    v32[18] = v30;
    v32[19] = v29;
    v32[20] = v28;
    v32[21] = v27;
    v38 = type metadata accessor for ThrottlingKey(0, (v32 + 18));
    (*(*(v38 - 8) + 16))(v26, v44, v38);
    swift_storeEnumTagMultiPayload();
    v39 = swift_task_alloc();
    v32[37] = v39;
    *v39 = v32;
    v39[1] = sub_1CF5BAF8C;
    v40 = v32[32];

    sub_1CF2C2264(v37, v40);
  }

  else
  {
LABEL_28:
    *(v8 + 264), a2, a3, a4, a5, a6, a7, a8;

    v25 = *(v8 + 8);

    v25();
  }
}

uint64_t sub_1CF5BAF8C()
{
  v2 = *v1;
  v2[38] = v0;

  v3 = v2[36];
  if (v0)
  {
    v4 = v2[33];
    (*(v2[31] + 8))(v2[32], v2[30]);
    v4, v5, v6, v7, v8, v9, v10, v11;
    v3, v12, v13, v14, v15, v16, v17, v18;
    v19 = sub_1CF5BB1A4;
  }

  else
  {
    (*(v2[31] + 8))(v2[32], v2[30]);
    v3, v20, v21, v22, v23, v24, v25, v26;
    v19 = sub_1CF5BB104;
  }

  return MEMORY[0x1EEE6DFA0](v19, 0, 0);
}

uint64_t sub_1CF5BB104(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = *(v8 + 272);
  v9 = *(v8 + 280);
  if (v9 == v10)
  {
LABEL_5:
    *(v8 + 264), a2, a3, a4, a5, a6, a7, a8;

    v12 = *(v8 + 8);

    return v12();
  }

  else
  {
    while (v9 < v10)
    {
      v11 = v9 + 1;
      *(v8 + 280) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_9;
      }

      ++v9;
      if (v11 == v10)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5BB1A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF5BB208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  *(v6 + 144) = a4;
  v7 = *a4;
  v24 = *(*a4 + 96);
  v25 = *(*a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 168) = AssociatedTypeWitness;
  v23 = v7[11];
  v9 = swift_getAssociatedTypeWitness();
  *(v6 + 176) = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v6 + 184) = AssociatedConformanceWitness;
  v11 = swift_getAssociatedConformanceWitness();
  *(v6 + 192) = v11;
  *(v6 + 80) = AssociatedTypeWitness;
  *(v6 + 88) = v9;
  *(v6 + 96) = AssociatedConformanceWitness;
  *(v6 + 104) = v11;
  v12 = type metadata accessor for CodepathTriggeringDiagnostics(0, v6 + 80);
  *(v6 + 200) = v12;
  *(v6 + 208) = *(v12 - 8);
  *(v6 + 216) = swift_task_alloc();
  v13 = v7[13];
  v14 = v7[14];
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *&v18 = v25;
  *(&v18 + 1) = v23;
  *&v19 = v24;
  *(&v19 + 1) = v13;
  *(v6 + 32) = v19;
  *(v6 + 16) = v18;
  *(v6 + 48) = v14;
  *(v6 + 56) = WitnessTable;
  *(v6 + 64) = v16;
  *(v6 + 72) = v17;
  type metadata accessor for FPDiagnosticsManager(0, v6 + 16);
  swift_getWitnessTable();
  v21 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF5BB4D8, v21, v20);
}

uint64_t sub_1CF5BB4D8()
{
  *(v0 + 224) = sub_1CF2C1E04();

  return MEMORY[0x1EEE6DFA0](sub_1CF5BB544, 0, 0);
}

void sub_1CF5BB544(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(*(v8 + 152) + 16);
  *(v8 + 232) = v9;
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      if (v10 >= v9)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      v11 = *(v8 + 152) + 32 * v10;
      v13 = *(v11 + 32);
      v12 = *(v11 + 40);
      v14 = *(v11 + 48);
      v40 = *(v11 + 56);
      v38 = *(v11 + 57);
      v39 = *(v11 + 58);
      v15 = __OFADD__(v10++, 1);
      *(v8 + 240) = v10;
      if (v15)
      {
        goto LABEL_35;
      }

      v16 = *(*(v8 + 224) + 16);
      if (v16)
      {
        break;
      }

LABEL_4:
      if (v10 == v9)
      {
        goto LABEL_28;
      }
    }

    v37 = v10;
    v17 = 0;
    while (1)
    {
      v18 = *(v8 + 224) + v17;
      a2 = *(v18 + 40);
      v19 = *(v18 + 48);
      v20 = *(v18 + 56);
      v21 = *(v18 + 57);
      v22 = *(v18 + 58);
      v23 = *(v18 + 32) == v13 && a2 == v12;
      if (v23 || (sub_1CF9E8048()) && v19 == v14)
      {
        v24 = v20 == 6 || v20 == v40;
        if (v24 && (v21 == 89 || v38 != 89 && qword_1CFA0D698[v21] == qword_1CFA0D698[v38]) && (v22 == 2 || !((v39 == 2) | (v22 ^ v39) & 1)))
        {
          break;
        }
      }

      v17 += 32;
      if (!--v16)
      {
        v9 = *(v8 + 232);
        v10 = v37;
        goto LABEL_4;
      }
    }

    v26 = *(v8 + 216);
    v27 = *(v8 + 192);
    v28 = *(v8 + 160);
    *(v8 + 112) = *(v8 + 168);
    v29 = *(v8 + 176);
    *(v8 + 120) = v29;
    v30 = v29;
    *(v8 + 136) = v27;
    v31 = type metadata accessor for ReconciliationID(255, v8 + 112);
    sub_1CF9E7FA8();
    swift_allocObject();

    v32 = sub_1CF9E6D68();
    (*(*(v30 - 8) + 16))(v33, v28, v30);
    swift_storeEnumTagMultiPayload();
    v34 = sub_1CF045898(v32, v31);
    *(v8 + 248) = v34;
    *v26 = v13;
    *(v26 + 8) = v12;
    *(v26 + 16) = v14;
    *(v26 + 24) = v40;
    *(v26 + 25) = v38;
    *(v26 + 26) = v39;
    swift_storeEnumTagMultiPayload();
    v35 = swift_task_alloc();
    *(v8 + 256) = v35;
    *v35 = v8;
    v35[1] = sub_1CF5BB8DC;
    v36 = *(v8 + 216);

    sub_1CF2C2264(v34, v36);
  }

  else
  {
LABEL_28:
    *(v8 + 224), a2, a3, a4, a5, a6, a7, a8;

    v25 = *(v8 + 8);

    v25();
  }
}

uint64_t sub_1CF5BB8DC()
{
  v2 = *v1;
  v2[33] = v0;

  v3 = v2[31];
  if (v0)
  {
    v4 = v2[28];
    (*(v2[26] + 8))(v2[27], v2[25]);
    v4, v5, v6, v7, v8, v9, v10, v11;
    v3, v12, v13, v14, v15, v16, v17, v18;
    v19 = sub_1CF5BBAF4;
  }

  else
  {
    (*(v2[26] + 8))(v2[27], v2[25]);
    v3, v20, v21, v22, v23, v24, v25, v26;
    v19 = sub_1CF5BBA54;
  }

  return MEMORY[0x1EEE6DFA0](v19, 0, 0);
}

uint64_t sub_1CF5BBA54(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = *(v8 + 232);
  v9 = *(v8 + 240);
  if (v9 == v10)
  {
LABEL_5:
    *(v8 + 224), a2, a3, a4, a5, a6, a7, a8;

    v12 = *(v8 + 8);

    return v12();
  }

  else
  {
    while (v9 < v10)
    {
      v11 = v9 + 1;
      *(v8 + 240) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_9;
      }

      ++v9;
      if (v11 == v10)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5BBAF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF5BBB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v38 = a4;
  v39 = a5;
  v36 = a2;
  v37 = a3;
  v40 = a6;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v41 = type metadata accessor for UserRequest(255, &v41);
  v42 = &type metadata for MaterializationRequestOptions;
  v43 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v44 = sub_1CF9E6448();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v34 - v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v34 - v16);
  (*(v9 + 16))(&v34 - v16, a1, TupleTypeMetadata2, v15);
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = v17 + v18;
  *v13 = *v17;
  v20 = v13 + v18;
  v21 = *(TupleTypeMetadata + 80);
  v34 = *(TupleTypeMetadata + 96);
  *v20 = *v19;
  *(v20 + 2) = *(v19 + 2);
  v22 = *(TupleTypeMetadata + 80);
  v23 = sub_1CF9E6448();
  v24 = *(v23 - 8);
  (*(v24 + 32))(&v20[v22], &v19[v21], v23);
  v25 = &v20[*(TupleTypeMetadata + 96)];
  v26 = swift_allocObject();
  *(v26 + 16) = *&v19[v34];
  *v25 = sub_1CF5E14AC;
  v25[1] = v26;
  v27 = v35;
  (*(v9 + 32))(v35, v13, TupleTypeMetadata2);
  v28 = &v27[*(TupleTypeMetadata2 + 48)];
  v29 = *v28;

  v30 = *(TupleTypeMetadata + 80);

  v31 = sub_1CF6656D8(v29, v36, v37, v38, v39);
  v32 = sub_1CF5DE5B8(v29);
  *v40 = v31;
  return (*(v24 + 8))(&v28[v30], v23, v32);
}

BOOL sub_1CF5BBEB8(id *a1, void **a2)
{
  v2 = *a2;
  [*a1 requestedExtent];
  v4 = v3;
  [v2 requestedExtent];
  return v4 < v5;
}

void sub_1CF5BBF10(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v402 = a6;
  v407 = a5;
  v373 = a4;
  v374 = a3;
  LODWORD(v412) = a2;
  v397 = a1;
  v8 = *v6;
  v9 = *(*v6 + 632);
  v10 = *(*v6 + 616);
  *&v422 = swift_getAssociatedTypeWitness();
  *(&v422 + 1) = swift_getAssociatedTypeWitness();
  *&v423 = swift_getAssociatedConformanceWitness();
  *(&v423 + 1) = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for FileItemVersion(255, &v422);
  v357 = sub_1CF9E75D8();
  v356 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357);
  v363 = &v352 - v12;
  v362 = v11;
  v361 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v358 = &v352 - v14;
  v15 = *(v8 + 640);
  v16 = *(v8 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v360 = sub_1CF9E75D8();
  v359 = *(v360 - 1);
  MEMORY[0x1EEE9AC00](v360);
  v372 = &v352 - v18;
  v385 = AssociatedTypeWitness;
  v364 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v382 = (&v352 - v20);
  v391 = swift_getAssociatedTypeWitness();
  v377 = *(v391 - 8);
  v355 = *(v377 + 64);
  MEMORY[0x1EEE9AC00](v391);
  v378 = &v352 - v21;
  *&v22 = v10;
  v420 = v16;
  *(&v22 + 1) = v16;
  *&v23 = v9;
  v24 = v9;
  v418 = v15;
  *(&v23 + 1) = v15;
  v413 = v23;
  v414 = v22;
  v422 = v22;
  v423 = v23;
  *&v422 = type metadata accessor for UserRequest(255, &v422);
  *(&v422 + 1) = &type metadata for MaterializationRequestOptions;
  *&v423 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  *(&v423 + 1) = sub_1CF9E6448();
  v424 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v416 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v381 = &v352 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v379 = (&v352 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v400 = &v352 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v403 = &v352 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v370 = &v352 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v389 = &v352 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v398 = &v352 - v38;
  MEMORY[0x1EEE9AC00](v39);
  *&v404 = &v352 - v40;
  MEMORY[0x1EEE9AC00](v41);
  *&v411 = &v352 - v42;
  v371 = v43;
  MEMORY[0x1EEE9AC00](v44);
  v408 = &v352 - v45;
  v421 = v46;
  v417 = sub_1CF9E75D8();
  v365 = *(v417 - 8);
  MEMORY[0x1EEE9AC00](v417);
  *&v384 = &v352 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  *&v406 = &v352 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v396 = &v352 - v51;
  MEMORY[0x1EEE9AC00](v52);
  *&v410 = &v352 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v383 = (&v352 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v380 = &v352 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v405 = &v352 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v399 = &v352 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v394 = (&v352 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v393 = &v352 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v409 = &v352 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v401 = &v352 - v69;
  v422 = v414;
  v423 = v413;
  v70 = type metadata accessor for ConcreteDatabase.MaterializationRequest(255, &v422);
  v376 = sub_1CF9E75D8();
  v375 = *(v376 - 1);
  MEMORY[0x1EEE9AC00](v376);
  v368 = &v352 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v352 - v73;
  v395 = *(v70 - 8);
  v75 = *(v395 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v354 = &v352 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v387 = &v352 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v366 = &v352 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v352 - v82;
  v84 = swift_allocObject();
  v85 = v402;
  v84[2] = v407;
  v84[3] = v85;
  v84[4] = v7;
  v86 = qword_1EDEBBC70;
  swift_beginAccess();
  v367 = v86;
  v87 = *&v7[v86];
  v419 = v24;
  v415 = v10;
  v88 = *(swift_getAssociatedConformanceWitness() + 40);
  v388 = v7;

  sub_1CF9E6728();
  v89 = v87;
  v90 = v395;
  v89, v91, v92, v93, v94, v95, v96, v97;
  v98 = *(v90 + 48);
  v390 = v70;
  if (v98(v74, 1, v70) == 1)
  {

    (*(v375 + 8))(v74, v376);
    return;
  }

  v376 = v88;
  v369 = v84;
  v99 = v412;
  v102 = *(v90 + 32);
  v100 = (v90 + 32);
  v101 = v102;
  v102(v83, v74, v390);
  v386 = v83;
  if (v99 != 5)
  {
    if (v99 == 4)
    {
      if (!v374)
      {
        v103 = *&v83[*(v390 + 56)];
        v422 = v414;
        v423 = v413;
        type metadata accessor for UserRequest(255, &v422);
        v104 = *(v103 + 8);
        v380 = v103 + 64;
        v105 = 1 << v103[32];
        v106 = -1;
        if (v105 < 64)
        {
          v106 = ~(-1 << v105);
        }

        v107 = v106 & v104;
        v387 = (v404 + 8);
        v379 = ((v105 + 63) >> 6);
        v108 = v416 + 56;
        *&v413 = v416 + 16;
        *&v414 = v416 + 48;
        v403 = (v365 + 32);
        v400 = (v416 + 8);
        v399 = v103;

        v109 = 0;
        v110 = v421;
        v111 = v411;
        v112 = v410;
        v412 = v108;
        while (v107)
        {
          v113 = v109;
LABEL_20:
          v116 = __clz(__rbit64(v107));
          v107 &= v107 - 1;
          (*(v416 + 16))(v112, *(v399 + 7) + *(v416 + 72) * (v116 | (v113 << 6)), v110);
          v117 = 0;
LABEL_21:
          v118 = *v108;
          v119 = 1;
          (*v108)(v112, v117, 1, v110);
          v120 = *v414;
          if ((*v414)(v112, 1, v110) != 1)
          {
            v121 = *(v110 + 20);
            v381 = *(v110 + 24);
            v122 = v410;
            v384 = *v410;
            v383 = *(v410 + 16);
            v123 = sub_1CF9E6448();
            v124 = *(v123 - 8);
            v405 = v118;
            v125 = *(v124 + 32);
            v126 = v408;
            v125(&v408[v121], v122 + v121, v123);
            v127 = swift_allocObject();
            *&v406 = v120;
            v128 = v127;
            *(v127 + 16) = *&v381[v122];
            v129 = *(v421 + 20);
            v130 = v409;
            v131 = (v409 + *(v421 + 24));
            *v409 = v384;
            *(v130 + 16) = v383;
            v132 = &v126[v121];
            v111 = v411;
            v125((v130 + v129), v132, v123);
            v118 = v405;
            v110 = v421;
            v119 = 0;
            *v131 = sub_1CF5E14AC;
            v131[1] = v128;
            v120 = v406;
          }

          v133 = v409;
          (v118)(v409, v119, 1, v110);
          v134 = *v403;
          v135 = v401;
          (*v403)(v401, v133, v417);
          if (v120(v135, 1, v110) == 1)
          {
            *&v404 = v134;
            *&v406 = v120;
            v218 = v399;

            (*(v377 + 16))(v378, v397, v391);
            (*(v395 + 56))(v368, 1, 1, v390);
            swift_beginAccess();
            sub_1CF9E6708();
            sub_1CF9E6738();
            swift_endAccess();
            v219 = 1 << v218[32];
            v220 = -1;
            if (v219 < 64)
            {
              v220 = ~(-1 << v219);
            }

            v221 = v220 & *(v218 + 8);
            v381 = v408 + 8;
            v379 = v389 + 8;
            v375 = (v219 + 63) >> 6;
            v383 = (v364 + 48);
            v378 = (v364 + 32);
            v377 = v416 + 32;
            v376 = (v364 + 8);

            v222 = 0;
            v83 = v386;
            v223 = v398;
            v224 = v396;
            v405 = v118;
            while (v221)
            {
              v226 = v222;
LABEL_77:
              v229 = __clz(__rbit64(v221));
              v221 &= v221 - 1;
              (*(v416 + 16))(v224, *(v399 + 7) + *(v416 + 72) * (v229 | (v226 << 6)), v110);
              v230 = 0;
LABEL_78:
              v231 = 1;
              (v118)(v224, v230, 1, v110);
              if ((v406)(v224, 1, v110) != 1)
              {
                v232 = *(v110 + 20);
                v409 = *(v110 + 24);
                v233 = v396;
                v411 = *v396;
                *&v410 = *(v396 + 2);
                v234 = sub_1CF9E6448();
                v235 = *(*(v234 - 8) + 32);
                v236 = v408;
                v235(&v408[v232], &v233[v232], v234);
                v237 = swift_allocObject();
                *(v237 + 16) = *&v233[v409];
                v238 = *(v421 + 20);
                v239 = v394;
                v240 = (v394 + *(v421 + 24));
                *v394 = v411;
                *(v239 + 2) = v410;
                v241 = &v236[v232];
                v223 = v398;
                v83 = v386;
                v235(v239 + v238, v241, v234);
                v118 = v405;
                v110 = v421;
                v231 = 0;
                *v240 = sub_1CF5E14AC;
                v240[1] = v237;
              }

              v242 = v394;
              (v118)(v394, v231, 1, v110);
              v243 = v393;
              (v404)(v393, v242, v417);
              if ((v406)(v243, 1, v110) == 1)
              {

                goto LABEL_33;
              }

              v244 = v243;
              v245 = *v243;
              v246 = *(v243 + 1);
              v247 = *(v244 + 2);
              v248 = *(v110 + 20);
              v249 = *(v110 + 24);
              v250 = *&v244[v249];
              v251 = *&v244[v249 + 8];
              v252 = &v223[v249];
              *v223 = v245;
              *(v223 + 1) = v246;
              *(v223 + 2) = v247;
              v253 = sub_1CF9E6448();
              *&v410 = *(v253 - 8);
              v254 = *(v410 + 32);
              *&v411 = v253;
              v254(&v223[v248], &v244[v248]);
              *v252 = v250;
              v252[1] = v251;
              if (v246)
              {
                v255 = v372;
                v256 = v392;
                (*(**(v388 + 2) + 160))(v397, v373, v407, v402);
                v392 = v256;
                if (v256)
                {

                  (*v400)(v398, v421);
                  v328 = *(v395 + 8);
                  goto LABEL_123;
                }

                v257 = v385;
                if ((*v383)(v255, 1, v385) == 1)
                {
                  (*(v359 + 1))(v255, v360);
                  sub_1CF5CFBB8(v250, v251, 0, v388);

                  (*v400)(v398, v421);
                  goto LABEL_125;
                }

                (*v378)(v382, v255, v257);
                v409 = *(v416 + 16);
                v258 = v408;
                v110 = v421;
                (v409)(v408, v398, v421);
                v259 = *v258;

                v401 = *(v110 + 20);

                v260 = v415;
                v261 = v419;
                v262 = v418;
                v387 = sub_1CF6651BC(v259);
                v263 = sub_1CF5DE5B8(v259);
                v264 = v389;
                (v409)(v389, v398, v110, v263);
                v265 = *v264;

                v391 = *(v110 + 20);

                sub_1CF66523C(v265, v260, v420, v261, v262);
                *&v384 = v266;
                v267 = sub_1CF5DE5B8(v265);
                v268 = v370;
                v223 = v398;
                (v409)(v370, v398, v110, v267);
                v269 = v416;
                v270 = (*(v416 + 80) + 80) & ~*(v416 + 80);
                v271 = swift_allocObject();
                *(v271 + 2) = v260;
                v272 = v369;
                v273 = v407;
                *(v271 + 3) = v420;
                *(v271 + 4) = v273;
                v274 = v418;
                *(v271 + 5) = v419;
                *(v271 + 6) = v274;
                *(v271 + 7) = v402;
                *(v271 + 8) = sub_1CF5DE770;
                *(v271 + 9) = v272;
                (*(v269 + 32))(&v271[v270], v268, v110);

                v275 = v382;
                v276 = v387;
                sub_1CF5A9774(v382, v387, v384, sub_1CF5DE99C, v271);

                v277 = sub_1CF5DE5B8(v276);
                (*v376)(v275, v385, v277);
                v278 = *(v410 + 8);
                v279 = v411;
                v278(&v389[v391], v411);
                v278(&v408[v401], v279);
              }

              else
              {
                v225.n128_f64[0] = sub_1CF5CFBB8(v250, v251, 0, v388);
                v110 = v421;
              }

              (*v400)(v223, v110, v225);
              v83 = v386;
              v224 = v396;
              v118 = v405;
            }

            if (v375 <= v222 + 1)
            {
              v227 = v222 + 1;
            }

            else
            {
              v227 = v375;
            }

            v228 = v227 - 1;
            while (1)
            {
              v226 = v222 + 1;
              if (__OFADD__(v222, 1))
              {
                break;
              }

              if (v226 >= v375)
              {
                v221 = 0;
                v230 = 1;
                v222 = v228;
                goto LABEL_78;
              }

              v221 = *&v380[8 * v226];
              ++v222;
              if (v221)
              {
                v222 = v226;
                goto LABEL_77;
              }
            }

            __break(1u);
            goto LABEL_133;
          }

          v136 = *(v135 + 16);
          v137 = *(v110 + 20);
          v138 = *(v110 + 24);
          *v111 = *v135;
          *(v111 + 16) = v136;
          v139 = sub_1CF9E6448();
          v140 = v135;
          v103 = v139;
          v141 = *(v139 - 8);
          v142 = *(v141 + 32);
          v406 = *(v140 + v138);
          v142(v111 + v137, v140 + v137, v139);
          *(v111 + v138) = v406;
          v143 = v404;
          (*v413)(v404, v111, v110);
          v144 = v143;
          v145 = *v143;

          v146 = *(v110 + 20);

          v75 = sub_1CF6656D8(v145, v415, v420, v419, v418);
          v147 = sub_1CF5DE5B8(v145);
          if (v75)
          {
            (*(v141 + 8))(v144 + v146, v103, v147);
            v148 = [v75 selectedForMaterialization];
            v108 = v412;
            if (v148)
            {
              v103 = [v75 requestedExtent];

              v111 = v411;
              (*v400)(v411, v110);
              v112 = v410;
              if (v103 != -1)
              {

LABEL_125:
                v169 = *(v395 + 8);
                v170 = v386;
                goto LABEL_35;
              }
            }

            else
            {
              v111 = v411;
              (*v400)(v411, v110);

              v112 = v410;
            }
          }

          else
          {
            v75 = v411;
            (*v400)(v411, v110);
            (*(v141 + 8))(v144 + v146, v103);
            v111 = v75;
            v112 = v410;
            v108 = v412;
          }
        }

        if (v379 <= v109 + 1)
        {
          v114 = (v109 + 1);
        }

        else
        {
          v114 = v379;
        }

        v115 = v114 - 1;
        while (1)
        {
          v113 = v109 + 1;
          if (__OFADD__(v109, 1))
          {
            break;
          }

          if (v113 >= v379)
          {
            v107 = 0;
            v117 = 1;
            v109 = v115;
            goto LABEL_21;
          }

          v107 = *&v380[8 * v113];
          ++v109;
          if (v107)
          {
            v109 = v113;
            goto LABEL_20;
          }
        }

LABEL_129:
        __break(1u);
LABEL_130:
        v392 = v112;
        (*(v395 + 8))(v111, v390);
        (*(v108 + 32))(v358, v110, v75);
        if (v399 < v385)
        {
LABEL_135:
          __break(1u);
          return;
        }

        v335 = *(v103 + 2);
        v336 = v354;
        v359(v354, v386, v390);
        v360(v378, v397, v391);
        v337 = (v370 + 88) & v352;
        v338 = &v353[v337] & 0xFFFFFFFFFFFFFFF8;
        v339 = (v338 + 23) & 0xFFFFFFFFFFFFFFF8;
        v340 = v377;
        v341 = (v339 + *(v377 + 80) + 8) & ~*(v377 + 80);
        v342 = swift_allocObject();
        v343 = v420;
        *(v342 + 2) = v415;
        *(v342 + 3) = v343;
        v345 = v418;
        v344 = v419;
        *(v342 + 4) = v407;
        *(v342 + 5) = v344;
        v346 = v402;
        *(v342 + 6) = v345;
        *(v342 + 7) = v346;
        *(v342 + 8) = v388;
        *(v342 + 9) = sub_1CF5DE77C;
        *(v342 + 10) = v367;
        v371(&v342[v337], v336, v390);
        v347 = &v342[v338];
        v348 = v369;
        *v347 = sub_1CF5DE770;
        v347[1] = v348;
        *&v342[v339] = 0;
        v83 = v386;
        (*(v340 + 32))(&v342[v341], v378, v391);
        v349 = *(*v335 + 800);

        v350 = 0;
        v351 = v358;
        v349(v397, v358, v385, v399, sub_1CF5DE848, v342);

        (*(v361 + 8))(v351, v362);
        goto LABEL_34;
      }

LABEL_33:

LABEL_34:
      v169 = *(v395 + 8);
      v170 = v83;
LABEL_35:
      v169(v170, v390);
      return;
    }

    if (*v83 != v99)
    {
      goto LABEL_33;
    }
  }

  v149 = *(v377 + 16);
  v364 = v377 + 16;
  v360 = v149;
  v149(v378, v397, v391);
  v150 = v395;
  v151 = v390;
  (*(v395 + 56))(v368, 1, 1, v390);
  v372 = v100;
  v371 = v101;
  v152 = v388;
  swift_beginAccess();
  sub_1CF9E6708();
  sub_1CF9E6738();
  swift_endAccess();
  v153 = (v150 + 16);
  v154 = *(v150 + 16);
  v155 = v366;
  v154(v366, v386, v151);
  v154(v387, v155, v151);
  v156 = v153[64];
  v157 = (v156 + 64) & ~v156;
  v370 = v156;
  v158 = v75 + 7;
  v368 = (v156 | 7);
  v159 = swift_allocObject();
  v160 = v420;
  *(v159 + 2) = v415;
  *(v159 + 3) = v160;
  v161 = v418;
  v162 = v419;
  *(v159 + 4) = v407;
  *(v159 + 5) = v162;
  *(v159 + 6) = v161;
  v112 = v402;
  *(v159 + 7) = v402;
  v163 = v151;
  v111 = v159;
  v371(&v159[v157], v155, v163);
  *(v111 + (&v158[v157] & 0xFFFFFFFFFFFFFFF8)) = v152;
  v164 = v374;
  if (v374)
  {

    v165 = v387;
    sub_1CF5D00A8(v164, v387, v152, v407, v112);

    v166 = *(v395 + 8);
    v167 = v165;
    v168 = v390;
    v166(v167, v390);
    v166(v386, v168);
    return;
  }

  v353 = v158;
  v359 = v154;
  v366 = v153;
  v367 = v111;
  v352 = ~v370;
  v171 = *&v386[*(v390 + 56)];
  v422 = v414;
  v423 = v413;
  type metadata accessor for UserRequest(255, &v422);
  v172 = *(v171 + 8);
  v382 = v171 + 64;
  v173 = 1 << v171[32];
  v174 = -1;
  if (v173 < 64)
  {
    v174 = ~(-1 << v173);
  }

  v108 = v174 & v172;
  v385 = v400 + 8;
  v375 = (v173 + 63) >> 6;
  *&v414 = v416 + 56;
  v409 = v416 + 16;
  *&v413 = v416 + 48;
  v396 = (v365 + 32);
  v394 = (v416 + 8);

  v389 = v171;

  v175 = 0;
  v110 = v421;
  v75 = v403;
  do
  {
    while (1)
    {
      while (1)
      {
        if (v108)
        {
          v176 = v175;
          v103 = v406;
          goto LABEL_51;
        }

        v177 = v375 <= v175 + 1 ? v175 + 1 : v375;
        v178 = v177 - 1;
        v103 = v406;
        do
        {
          v176 = v175 + 1;
          if (__OFADD__(v175, 1))
          {
            __break(1u);
            goto LABEL_129;
          }

          if (v176 >= v375)
          {
            v108 = 0;
            v180 = 1;
            v175 = v178;
            goto LABEL_52;
          }

          v108 = v382[v176];
          ++v175;
        }

        while (!v108);
        v175 = v176;
LABEL_51:
        v179 = __clz(__rbit64(v108));
        v108 &= v108 - 1;
        (*(v416 + 16))(v103, *(v389 + 7) + *(v416 + 72) * (v179 | (v176 << 6)), v110);
        v180 = 0;
LABEL_52:
        v181 = 1;
        v412 = *v414;
        v412(v103, v180, 1, v110);
        *&v411 = *v413;
        if ((v411)(v103, 1, v110) != 1)
        {
          v182 = *(v110 + 20);
          v401 = *(v110 + 24);
          v183 = v406;
          v410 = *v406;
          *&v404 = *(v406 + 16);
          v184 = sub_1CF9E6448();
          v185 = *(*(v184 - 8) + 32);
          v186 = v408;
          v185(&v408[v182], v183 + v182, v184);
          v187 = swift_allocObject();
          *(v187 + 16) = *(v183 + v401);
          v188 = *(v421 + 20);
          v189 = v405;
          v190 = &v405[*(v421 + 24)];
          *v405 = v410;
          *(v189 + 2) = v404;
          v191 = &v186[v182];
          v75 = v403;
          v185(&v189[v188], v191, v184);
          v181 = 0;
          *v190 = sub_1CF5E14AC;
          v190[1] = v187;
          v110 = v421;
        }

        v192 = v405;
        v412(v405, v181, 1, v110);
        v193 = v399;
        v393 = *v396;
        (v393)(v399, v192, v417);
        if ((v411)(v193, 1, v110) == 1)
        {

          v214 = v387;
          sub_1CF5D00A8(0, v387, v388, v407, v402);

          v215 = *(v395 + 8);
          v216 = v214;
          v217 = v390;
          v215(v216, v390);
          v215(v386, v217);
          return;
        }

        v194 = *(v193 + 2);
        v195 = *(v110 + 20);
        v196 = v193;
        v197 = *(v110 + 24);
        *v75 = *v196;
        *(v75 + 2) = v194;
        v198 = sub_1CF9E6448();
        v199 = *(v198 - 8);
        v200 = *(v199 + 32);
        v404 = *(v196 + v197);
        *&v410 = v198;
        v401 = v199 + 32;
        v398 = v200;
        (v200)(&v75[v195], v196 + v195);
        *&v75[v197] = v404;
        v201 = v400;
        *&v404 = *v409;
        (v404)(v400, v75, v110);
        v111 = v75;
        v202 = *v201;

        v112 = *(v110 + 20);

        v203 = v110;
        v204 = sub_1CF6656D8(v202, v415, v420, v419, v418);
        v205 = sub_1CF5DE5B8(v202);
        if (v204)
        {
          break;
        }

        (*v394)(v111, v203);
        (*(v199 + 8))(v201 + v112, v410);
        v110 = v203;
        v75 = v111;
      }

      v208 = *(v199 + 8);
      v207 = v199 + 8;
      v206 = v208;
      (v208)(v201 + v112, v410, v205);
      if ([v204 selectedForMaterialization])
      {
        break;
      }

      v75 = v403;
      v213 = v421;
      (*v394)(v403, v421);

      v110 = v213;
    }

    v112 = v207;
    v376 = v206;
    v209 = [v204 requestedExtent];

    v210 = *v394;
    v211 = v403;
    v110 = v421;
    (*v394)(v403, v421);
    v212 = v209 + 1 == 0;
    v75 = v211;
  }

  while (v212);
  v405 = v210;
  v280 = v389;

  v281 = 1 << v280[32];
  v282 = -1;
  if (v281 < 64)
  {
    v283 = ~(-1 << v281);
  }

  else
  {
    v283 = -1;
  }

  v284 = v283 & *(v280 + 8);
  v403 = v381 + 8;
  v375 = (v281 + 63) >> 6;

  v285 = 0;
  v286 = -1;
  v287 = v407;
  v288 = v382;
  v289 = v404;
  v374 = v112;
LABEL_91:
  v385 = v286;
  v399 = v282;
  while (1)
  {
    if (!v284)
    {
      if (v375 <= v285 + 1)
      {
        v293 = v285 + 1;
      }

      else
      {
        v293 = v375;
      }

      v294 = v293 - 1;
      v291 = v421;
      v111 = v387;
      v292 = v384;
      while (1)
      {
        v290 = v285 + 1;
        if (__OFADD__(v285, 1))
        {
          break;
        }

        if (v290 >= v375)
        {
          v284 = 0;
          v296 = 1;
          v285 = v294;
          goto LABEL_104;
        }

        v284 = v288[v290];
        ++v285;
        if (v284)
        {
          v285 = v290;
          goto LABEL_103;
        }
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v290 = v285;
    v291 = v421;
    v111 = v387;
    v292 = v384;
LABEL_103:
    v295 = __clz(__rbit64(v284));
    v284 &= v284 - 1;
    v289(v292, *(v389 + 7) + *(v416 + 72) * (v295 | (v290 << 6)), v291);
    v296 = 0;
LABEL_104:
    v297 = 1;
    v412(v292, v296, 1, v291);
    if ((v411)(v292, 1, v291) != 1)
    {
      v298 = *(v291 + 20);
      v299 = *(v291 + 24);
      v300 = v384;
      v406 = *v384;
      v400 = *(v384 + 16);
      v301 = v410;
      v302 = v398;
      (v398)(&v408[v298], v384 + v298, v410);
      v303 = swift_allocObject();
      *(v303 + 16) = *(v300 + v299);
      v304 = *(v291 + 20);
      v305 = v383;
      v306 = (v383 + *(v291 + 24));
      *v383 = v406;
      v305[2] = v400;
      v111 = v387;
      v307 = v301;
      v289 = v404;
      (v302)(v305 + v304, &v408[v298], v307);
      v297 = 0;
      *v306 = sub_1CF5E14AC;
      v306[1] = v303;
      v287 = v407;
    }

    v308 = v383;
    v412(v383, v297, 1, v291);
    v309 = v380;
    (v393)(v380, v308, v417);
    if ((v411)(v309, 1, v291) == 1)
    {
      break;
    }

    v310 = *(v309 + 2);
    v311 = *(v291 + 20);
    v312 = *(v291 + 24);
    v313 = v379;
    *v379 = *v309;
    *(v313 + 2) = v310;
    v406 = *&v309[v312];
    v314 = v410;
    (v398)(v313 + v311, &v309[v311], v410);
    *(v313 + v312) = v406;
    v315 = v313;
    v316 = v381;
    v289(v381, v315, v291);
    v317 = *v316;

    *&v406 = *(v291 + 20);

    v318 = sub_1CF6656D8(v317, v415, v420, v419, v418);
    v319 = sub_1CF5DE5B8(v317);
    if (v318)
    {
      v320 = [v318 requestedExtent];
      v321 = v291;
      v323 = v322;

      v324 = v321;
      v325 = v410;
      (v405)(v315, v324);
      v376(&v316[v406], v325);
      v287 = v407;
      v288 = v382;
      v282 = v399;
      if (v323 != -1)
      {
        if (__OFADD__(v320, v323))
        {
          goto LABEL_134;
        }

        if (v320 >= v385)
        {
          v286 = v385;
        }

        else
        {
          v286 = v320;
        }

        if (v385 == -1)
        {
          v286 = v320;
        }

        if (&v320[v323] > v399)
        {
          v282 = &v320[v323];
        }

        goto LABEL_91;
      }
    }

    else
    {
      (v405)(v315, v291);
      v376(&v316[v406], v314);
      v287 = v407;
      v288 = v382;
    }
  }

  v103 = *(v388 + 4);
  v110 = v363;
  v326 = v402;
  v327 = v392;
  (*(*v103 + 656))(v397, v373, v287, v402);
  if (v327)
  {
    v392 = v327;
    v328 = *(v395 + 8);
    v328(v111, v390);

LABEL_123:
    v328(v386, v390);
  }

  else
  {
    v112 = 0;
    v108 = v361;
    v75 = v362;
    if ((*(v361 + 48))(v110, 1, v362) != 1)
    {
      goto LABEL_130;
    }

    (*(v356 + 8))(v110, v357);
    type metadata accessor for NSFileProviderError(0);
    v425 = -1005;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    v329 = v287;
    v330 = v326;
    sub_1CF5DFB70(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v331 = v422;
    sub_1CF5D00A8(v422, v111, v388, v329, v330);

    v332 = *(v395 + 8);
    v333 = v111;
    v334 = v390;
    v332(v333, v390);
    v332(v386, v334);
  }
}

void sub_1CF5BEE74(NSObject *a1, _TtC18FileProviderDaemon8FSTester *a2, void (**a3)(void), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v370 = a5;
  v371 = a4;
  v369 = a3;
  v372 = a2;
  v376 = a1;
  isa = v5->super.isa;
  v373 = sub_1CF9E6118();
  *&v389 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373);
  v386 = (&v344 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v381 = &v344 - v10;
  v11 = isa[77];
  v12 = isa[78];
  v13 = isa[79];
  v14 = isa[80];
  *&v400 = v11;
  *(&v400 + 1) = v12;
  *&v401 = v13;
  *(&v401 + 1) = v14;
  *&v400 = type metadata accessor for UserRequest(255, &v400);
  *(&v400 + 1) = &type metadata for NSecTimestamp;
  WitnessTable = sub_1CF9E6448();
  *&v401 = WitnessTable;
  *(&v401 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v353 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v378 = &v344 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v391 = &v344 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v367 = &v344 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v392 = &v344 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v385 = (&v344 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v362 = &v344 - v26;
  v345 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v351 = &v344 - v29;
  v397 = v30;
  v375 = sub_1CF9E75D8();
  *&v388 = *(v375 - 8);
  MEMORY[0x1EEE9AC00](v375);
  v396 = (&v344 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v393 = (&v344 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v390 = &v344 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v379 = (&v344 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v382 = &v344 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v368 = &v344 - v41;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v361 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v377 = &v344 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v383 = &v344 - v44;
  v350 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v384 = &v344 - v47;
  v357 = v11;
  *&v400 = v11;
  *(&v400 + 1) = v12;
  v354 = v12;
  v356 = v13;
  *&v401 = v13;
  *(&v401 + 1) = v14;
  v355 = v14;
  v48 = type metadata accessor for ItemReconciliation(255, &v400);
  v49 = sub_1CF9E75D8();
  v380 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v344 - v50;
  v387 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v344 - v53;
  v55 = sub_1CF9E64A8();
  v56 = *(v55 - 8);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = (&v344 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v366 = v6;
  v60 = v6[2].super.isa;
  *v59 = v60;
  (*(v56 + 104))(v59, *MEMORY[0x1E69E8020], v55, v57);
  v61 = v60;
  LOBYTE(v60) = sub_1CF9E64D8();
  (*(v56 + 8))(v59, v55);
  if ((v60 & 1) == 0)
  {
    goto LABEL_68;
  }

  v62 = v372;
  if (v372)
  {
    *&v403 = v372;
    v63 = v372;
    v64 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
    v65 = swift_dynamicCast();
    v69 = v376;
    v70 = v397;
    v71 = v366;
    if (v65)
    {
      if (v402)
      {
        sub_1CF48183C(v400, *(&v400 + 1), v401, *(&v401 + 1), 1, v66, v67, v68);
        v72 = v347;
        sub_1CF68DDB0(v69, v369, v371, *(v370 + 8), v51);

        if (v72)
        {
          return;
        }

        v73 = v387;
        v74 = (*(v387 + 48))(v51, 1, v48);
        v347 = 0;
        if (v74 != 1)
        {
          (*(v73 + 32))(v54, v51, v48);
          v75 = v356;
          v341 = &v54[*(type metadata accessor for ItemReconciliationHalf(0, v357, v356, v340) + 64)];
          if (v341[16])
          {
            (*(v73 + 8))(v54, v48);
            return;
          }

          v342 = *v341;
          (*(v73 + 8))(v54, v48);
          if ((v342 & 0x100) == 0)
          {
            return;
          }

          goto LABEL_12;
        }

        (v380)[1](v51, v49);
        goto LABEL_11;
      }

      sub_1CF48183C(v400, *(&v400 + 1), v401, *(&v401 + 1), 0, v66, v67, v68);
    }

LABEL_11:
    v75 = v356;
    goto LABEL_12;
  }

  v75 = v356;
  v70 = v397;
  v71 = v366;
LABEL_12:
  v76 = qword_1EC4EBD78;
  swift_beginAccess();
  v77 = *(&v71->super.isa + v76);

  *&v400 = v357;
  *(&v400 + 1) = v354;
  *&v401 = v75;
  *(&v401 + 1) = v355;
  *&v400 = type metadata accessor for UserRequest(255, &v400);
  *(&v400 + 1) = &type metadata for NSecTimestamp;
  *&v401 = WitnessTable;
  *(&v401 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v374 = swift_getTupleTypeMetadata();
  sub_1CF9E6E58();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1CF9E6728();
  v77, v78, v79, v80, v81, v82, v83, v84;
  v85 = v403;
  if (!v403)
  {
    return;
  }

  v86 = swift_allocObject();
  v346 = v86;
  *(v86 + 16) = v85;
  v87 = (v86 + 16);
  v88 = v372;
  if (v372)
  {
    WitnessTable = v86 + 16;

    v89 = v85;
  }

  else
  {
    v110 = v354;
    *&v400 = v357;
    *(&v400 + 1) = v354;
    *&v401 = v356;
    *(&v401 + 1) = v355;
    type metadata accessor for ConcreteDatabase(0, &v400);

    v111 = v347;
    sub_1CF5C5B28(v376, v366, v369, v371, v370, &v400);
    if (v111 || (v347 = 0, (v400 & 1) == 0))
    {
      v85, v113, v114, v115, v116, v117, v118, v119;

      return;
    }

    MEMORY[0x1EEE9AC00](v112);
    *(&v344 - 12) = v357;
    *(&v344 - 11) = v110;
    v221 = v356;
    *(&v344 - 10) = v371;
    *(&v344 - 9) = v221;
    *(&v344 - 8) = v355;
    *(&v344 - 7) = v222;
    *(&v344 - 48) = 1;
    *(&v344 - 5) = v223;
    *(&v344 - 32) = v224;
    *(&v344 - 3) = v225;
    LOBYTE(v343) = v226;
    swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    v227 = v347;
    sub_1CF9E6848();
    v347 = v227;
    v228 = v400;
    (*(v361 + 16))(v384, v376, AssociatedTypeWitness);
    if (v228 < 0)
    {
      goto LABEL_69;
    }

    *&v400 = sub_1CF9E6E98();
    *(&v400 + 1) = v229;
    *&v401 = v230;
    *(&v401 + 1) = v231;
    v387 = sub_1CF9E7778();
    v380 = swift_getWitnessTable();
    *&v403 = sub_1CF9E6E88();
    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    *&v403 = v228;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B58, &unk_1CFA0CCF8);
    sub_1CEFCCCEC(&unk_1EC4C1B60, &qword_1EC4C1B58, &unk_1CFA0CCF8, MEMORY[0x1E69E6D18]);
    sub_1CF9E6838();
    v403 = v400;
    v404 = v401;
    v232 = sub_1CF9E6E88();
    v233 = *v87;
    *v87 = v232;
    v233, v234, v235, v236, v237, v238, v239, v240;
    WitnessTable = v87;
    v89 = *v87;
    v70 = v397;
    v88 = v372;
  }

  v90 = sub_1CF9E6DF8();
  v89, v91, v92, v93, v94, v95, v96, v97;
  v98 = sub_1CF9E6DF8();
  v85, v99, v100, v101, v102, v103, v104, v105;
  if (v90 == v98)
  {
    (*(v361 + 16))(v384, v376, AssociatedTypeWitness);
    *&v403 = 0;
    swift_beginAccess();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
  }

  if (v88)
  {
    swift_getErrorValue();
    v380 = Error.prettyDescription.getter(v398, v399);
    v106 = v371;
    v107 = v385;
    v108 = AssociatedTypeWitness;
    v109 = v383;
LABEL_23:
    v349 = v107 + 1;
    v122 = (v353 + 16);
    v123 = *WitnessTable;
    v350 = (v353 + 32);
    v391 = (v353 + 56);
    v390 = (v353 + 48);
    v365 = (v388 + 32);
    v364 = (v361 + 16);
    v378 = v353 + 8;
    v362 = (v361 + 8);
    v361 = v389 + 8;
    v363 = (v106 - 8);

    v124 = 0;
    *&v125 = 136315650;
    v348 = v125;
    v366 = v123;
    v379 = v122;
    while (1)
    {
      if (v124 == sub_1CF9E6DF8())
      {
        *&v389 = v124;
        v134 = 1;
      }

      else
      {
        v135 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v135)
        {
          v136 = v123 + ((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v124;
          v137 = v351;
          (*(v353 + 16))(v351, v136, v70);
        }

        else
        {
          v213 = sub_1CF9E7998();
          if (v345 != 8)
          {
            goto LABEL_70;
          }

          *&v400 = v213;
          v137 = v351;
          (*v122)(v351, &v400, v70);
          swift_unknownObjectRelease();
        }

        (*v350)(v393, v137, v70);
        v138 = __OFADD__(v124, 1);
        v139 = v124 + 1;
        if (v138)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          return;
        }

        *&v389 = v139;
        v134 = 0;
      }

      v140 = *v391;
      v141 = 1;
      v142 = v393;
      (*v391)(v393, v134, 1, v70);
      v143 = *v390;
      if ((*v390)(v142, 1, v70) != 1)
      {
        v144 = *(v397 + 64);
        *&v388 = *(v397 + 80);
        v145 = v393;
        v146 = *v393;
        WitnessTable = v393[1];
        v396 = v146;
        v147 = sub_1CF9E6448();
        v148 = *(*(v147 - 8) + 32);
        v149 = v385;
        v148(v385 + v144, &v145[v144], v147);
        v150 = swift_allocObject();
        *(v150 + 16) = *&v145[v388];
        v151 = *(v397 + 64);
        v152 = v382;
        v153 = &v382[*(v397 + 80)];
        v154 = WitnessTable;
        *v382 = v396;
        *(v152 + 1) = v154;
        v155 = v149 + v144;
        v108 = AssociatedTypeWitness;
        v70 = v397;
        v148(&v152[v151], v155, v147);
        v122 = v379;
        v141 = 0;
        *v153 = sub_1CF5DEE90;
        v153[1] = v150;
        v109 = v383;
      }

      v156 = v382;
      v140(v382, v141, 1, v70);
      v157 = v368;
      (*v365)(v368, v156, v375);
      if (v143(v157, 1, v70) == 1)
      {

        v366, v214, v215, v216, v217, v218, v219, v220;
        goto LABEL_40;
      }

      v158 = *(v70 + 64);
      v159 = *(v70 + 80);
      v160 = *v157;
      v161 = v157;
      v162 = v392;
      *v392 = v160;
      v163 = sub_1CF9E6448();
      WitnessTable = *(v163 - 8);
      v164 = *(WitnessTable + 32);
      v388 = *&v161[v159];
      v396 = v163;
      v164(&v162[v158], &v161[v158]);
      *&v162[v159] = v388;
      v165 = fpfs_current_or_default_log();
      v166 = v381;
      sub_1CF9E6128();
      v167 = v122;
      v168 = *v364;
      (*v364)(v109, v376, v108);
      v169 = v367;
      v387 = *v167;
      (v387)(v367, v162, v70);
      v170 = v380;
      v171 = v108;
      v172 = sub_1CF9E6108();
      v173 = sub_1CF9E7288();
      v377 = v170;

      v386 = v172;
      v174 = os_log_type_enabled(v172, v173);
      *&v388 = v378 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v174)
      {
        v175 = v169;
        v176 = swift_slowAlloc();
        v359 = swift_slowAlloc();
        v360 = swift_slowAlloc();
        *&v400 = v360;
        *v176 = v348;
        v168(v384, v109, v171);
        LODWORD(v358) = v173;
        v177 = *v362;
        (*v362)(v109, v171);
        v178 = sub_1CF9E7F98();
        v180 = v179;
        v177(v384, v171);
        v181 = sub_1CEFD0DF0(v178, v180, &v400);
        v180, v182, v183, v184, v185, v186, v187, v188;
        *(v176 + 4) = v181;
        *(v176 + 12) = 2080;
        v127 = v385;
        v189 = v175;
        v190 = v175;
        v70 = v397;
        v191 = v379;
        v192 = v387;
        (v387)(v385, v190, v397);
        v193 = *v127;
        v194 = *(v70 + 64);

        (*(WitnessTable + 8))(v127 + v194, v396);
        v195 = *v378;
        (*v378)(v189, v70);
        v196 = sub_1CF665B0C(v193, v357, v354, v356, v355);
        v198 = v197;
        sub_1CF5DE5B8(v193);
        v199 = sub_1CEFD0DF0(v196, v198, &v400);
        v200 = v198;
        v126 = v195;
        v200, v201, v202, v203, v204, v205, v206, v207;
        *(v176 + 14) = v199;
        *(v176 + 22) = 2112;
        v208 = v377;
        *(v176 + 24) = v377;
        v209 = v359;
        *v359 = v380;
        v210 = v208;
        v211 = v386;
        _os_log_impl(&dword_1CEFC7000, v386, v358, "propagation <fs:%s reason:%s> completed: %@", v176, 0x20u);
        sub_1CEFCCC44(v209, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v209, -1, -1);
        v212 = v360;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v212, -1, -1);
        MEMORY[0x1D386CDC0](v176, -1, -1);

        (*v361)(v381, v373);
        v122 = v191;
        v128 = v192;
      }

      else
      {
        v126 = *v378;
        v70 = v397;
        (*v378)(v169, v397);
        (*v362)(v109, v171);

        (*v361)(v166, v373);
        v127 = v385;
        v122 = v379;
        v128 = v387;
      }

      v129 = v392;
      v128(v127, v392, v70);
      sub_1CF5DE5B8(*v127);
      v130 = *(v70 + 64);
      v131 = *(v127 + *(v70 + 80));
      v132 = v371;
      *(&v401 + 1) = v371;
      v402 = v370;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v400);
      (*(*(v132 - 8) + 16))(boxed_opaque_existential_0, v369, v132);
      v131(&v400, v372);

      v126(v129, v70);
      sub_1CEFCCC44(&v400, &unk_1EC4C1B30, &qword_1CFA05300);
      (*(WitnessTable + 8))(v127 + v130, v396);
      v108 = AssociatedTypeWitness;
      v109 = v383;
      v123 = v366;
      v124 = v389;
    }
  }

  sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
  v120 = sub_1CF9E7598();
  v121 = v366[2].tree[2];
  v107 = v385;
  v108 = AssociatedTypeWitness;
  v109 = v383;
  v380 = v120;
  if ((v121 & 0x20) == 0)
  {
    v106 = v371;
    goto LABEL_23;
  }

  v359 = v385 + 1;
  v387 = v353 + 16;
  v241 = *WitnessTable;
  v360 = (v353 + 32);
  WitnessTable = v353 + 56;
  v393 = (v353 + 48);
  v369 = (v388 + 32);
  *&v388 = v361 + 16;
  v368 = (v353 + 8);
  v367 = (v361 + 8);
  v365 = (v389 + 8);

  v242 = 0;
  *&v243 = 136315394;
  v358 = v243;
  v244 = v386;
  v245 = v391;
  v372 = v241;
  while (1)
  {
    v247 = v244;
    if (v242 == sub_1CF9E6DF8())
    {
      v392 = v242;
      v248 = 1;
      v249 = v388;
    }

    else
    {
      v250 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      v249 = v388;
      if (v250)
      {
        v251 = v241 + ((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v242;
        v252 = v362;
        (*(v353 + 16))(v362, v251, v70);
      }

      else
      {
        v321 = sub_1CF9E7998();
        if (v345 != 8)
        {
          goto LABEL_71;
        }

        *&v400 = v321;
        v252 = v362;
        (*v387)(v362, &v400, v70);
        swift_unknownObjectRelease();
      }

      (*v360)(v396, v252, v70);
      v138 = __OFADD__(v242, 1);
      v253 = (v242 + 1);
      if (v138)
      {
        goto LABEL_67;
      }

      v392 = v253;
      v248 = 0;
    }

    v254 = v396;
    v255 = *WitnessTable;
    v256 = 1;
    (*WitnessTable)(v396, v248, 1, v70);
    v257 = *v393;
    if ((*v393)(v254, 1, v70) != 1)
    {
      v258 = *(v397 + 64);
      v382 = *(v397 + 80);
      v259 = v396;
      v260 = v396[1];
      *&v389 = *v396;
      v383 = v260;
      v261 = sub_1CF9E6448();
      v262 = *(*(v261 - 8) + 32);
      v263 = v385;
      v262(v385 + v258, &v259[v258], v261);
      v264 = swift_allocObject();
      *(v264 + 16) = *&v382[v259];
      v265 = *(v397 + 64);
      v266 = v390;
      v267 = &v390[*(v397 + 80)];
      v268 = v383;
      *v390 = v389;
      *(v266 + 1) = v268;
      v269 = v263 + v258;
      v108 = AssociatedTypeWitness;
      v70 = v397;
      v262(&v266[v265], v269, v261);
      v245 = v391;
      v256 = 0;
      *v267 = sub_1CF5E14E0;
      v267[1] = v264;
      v249 = v388;
      v247 = v386;
    }

    (v255)(v390, v256, 1, v70);
    v270 = v379;
    (*v369)();
    if (v257(v270, 1, v70) == 1)
    {
      break;
    }

    v278 = *(v70 + 64);
    v279 = *(v70 + 80);
    *v245 = *v270;
    v280 = sub_1CF9E6448();
    v382 = *(v280 - 8);
    v281 = *(v382 + 4);
    v389 = *(v270 + v279);
    v383 = v280;
    v281(&v245[v278], v270 + v278);
    *&v245[v279] = v389;
    v282 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v283 = *v249;
    v284 = v377;
    v283(v377, v376, v108);
    v285 = v378;
    v381 = *v387;
    (v381)(v378, v245, v70);
    v286 = sub_1CF9E6108();
    v287 = sub_1CF9E7288();
    LODWORD(v389) = v287;
    if (os_log_type_enabled(v286, v287))
    {
      v288 = swift_slowAlloc();
      v364 = swift_slowAlloc();
      *&v400 = v364;
      *v288 = v358;
      v289 = v384;
      v283(v384, v284, v108);
      v290 = *v367;
      (*v367)(v284, AssociatedTypeWitness);
      v291 = sub_1CF9E7F98();
      v363 = v286;
      v293 = v292;
      v290(v289, AssociatedTypeWitness);
      v108 = AssociatedTypeWitness;
      v294 = v291;
      v244 = v386;
      v295 = sub_1CEFD0DF0(v294, v293, &v400);
      v293, v296, v297, v298, v299, v300, v301, v302;
      *(v288 + 4) = v295;
      *(v288 + 12) = 2080;
      v303 = v385;
      (v381)(v385, v285, v397);
      v304 = *v303;
      v305 = *(v397 + 64);

      (*(v382 + 1))(v303 + v305, v383);
      v306 = *v368;
      (*v368)(v285, v397);
      v307 = sub_1CF665B0C(v304, v357, v354, v356, v355);
      v309 = v308;
      sub_1CF5DE5B8(v304);
      v310 = sub_1CEFD0DF0(v307, v309, &v400);
      v309, v311, v312, v313, v314, v315, v316, v317;
      *(v288 + 14) = v310;
      v318 = v363;
      _os_log_impl(&dword_1CEFC7000, v363, v389, "propagation <fs:%s reason:%s> completed, waiting for flush", v288, 0x16u);
      v319 = v364;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v319, -1, -1);
      v320 = v288;
      v70 = v397;
      MEMORY[0x1D386CDC0](v320, -1, -1);

      (*v365)(v244, v373);
      v245 = v391;
      v306(v391, v70);
      v241 = v372;
      v242 = v392;
    }

    else
    {
      v246 = *v368;
      (*v368)(v285, v70);
      (*v367)(v284, v108);

      (*v365)(v247, v373);
      v245 = v391;
      v246(v391, v70);
      v241 = v372;
      v242 = v392;
      v244 = v247;
    }
  }

  v372, v271, v272, v273, v274, v275, v276, v277;
  v322 = swift_allocObject();
  v323 = v357;
  v324 = v354;
  v322[2] = v357;
  v322[3] = v324;
  v325 = v371;
  v326 = v108;
  v327 = v356;
  v322[4] = v371;
  v322[5] = v327;
  v328 = v355;
  v329 = v370;
  v322[6] = v355;
  v322[7] = v329;
  v322[8] = v346;
  v330 = v361;
  (*(v361 + 16))(v384, v376, v326);
  v331 = (*(v330 + 80) + 72) & ~*(v330 + 80);
  v332 = (v350 + v331 + 7) & 0xFFFFFFFFFFFFFFF8;
  v333 = swift_allocObject();
  v334 = v324;
  v335 = v333;
  v333[2] = v323;
  v333[3] = v334;
  v333[4] = v325;
  v333[5] = v327;
  v336 = v370;
  v333[6] = v328;
  v333[7] = v336;
  v333[8] = v346;
  (*(v330 + 32))(v333 + v331, v384, AssociatedTypeWitness);
  v337 = v366;
  *(v335 + v332) = 0;
  v338 = *(v337->super.isa + 57);

  v339 = 0;

  v338("itemDidPropagate(id:error:with:)", 32, 2, 0, 0, 0, sub_1CF5DEE98, v322, sub_1CF5DEEB0, v335);

LABEL_40:
}