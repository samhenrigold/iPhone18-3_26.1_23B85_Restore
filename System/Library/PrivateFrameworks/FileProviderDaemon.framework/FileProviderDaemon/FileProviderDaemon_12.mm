void sub_1CF1AF818(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, NSObject *a4)
{
  v5 = v4;
  v146 = a3;
  v147 = a4;
  v159[1] = *MEMORY[0x1E69E9840];
  v156 = sub_1CF9E5A58();
  v153 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v144 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v141 - v10;
  v154 = sub_1CF9E6118();
  v11 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v13 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v141 - v16;
  v18 = [v5 log];
  v149 = fpfs_adopt_log();

  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v20 = v5;
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E72C8();

  a2, v23, v24, v25, v26, v27, v28, v29;
  v30 = os_log_type_enabled(v21, v22);
  v150 = a2;
  v152 = a1;
  v148 = v11;
  v145 = v13;
  if (v30)
  {
    v31 = a1;
    v32 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    aBlock[0] = v142;
    *v32 = 136446466;
    *(v32 + 4) = sub_1CEFD0DF0(v31, a2, aBlock);
    *(v32 + 12) = 2080;
    v33 = [v20 providerDomainID];
    v143 = v20;
    v34 = v33;
    v35 = [v33 fp_obfuscatedProviderDomainID];

    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v38 = v37;

    v39 = v36;
    v40 = v156;
    v20 = v143;
    v41 = sub_1CEFD0DF0(v39, v38, aBlock);
    v42 = v154;
    v38, v43, v44, v45, v46, v47, v48, v49;
    *(v32 + 14) = v41;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "♻️  %{public}s all files for %s", v32, 0x16u);
    v50 = v142;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v50, -1, -1);
    v51 = v148;
    MEMORY[0x1D386CDC0](v32, -1, -1);

    v52 = *(v51 + 8);
    v52(v17, v42);
  }

  else
  {

    v52 = *(v11 + 8);
    v52(v17, v154);
    v40 = v156;
  }

  v159[0] = 0;
  v53 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v54 = [v20 purposeIdentifier];
  if (!v54)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v56 = v55;
    v54 = sub_1CF9E6888();
    v56, v57, v58, v59, v60, v61, v62, v63;
  }

  [v53 setPurposeIdentifier_];

  v64 = [v20 rootURLs];
  v65 = sub_1CF9E6D48();

  v73 = v152;
  if (!*v65->tree)
  {
    v65, v66, v67, v68, v69, v70, v71, v72;

    v126 = 0;
    v83 = 0;
LABEL_13:
    v127 = v149;
    v128 = fpfs_adopt_log();

    sub_1CEFF7124(v126, v83);
    return;
  }

  v143 = v52;
  v74 = *(v153 + 16);
  v74(v155, v65 + ((*(v153 + 80) + 32) & ~*(v153 + 80)), v40);
  v65, v75, v76, v77, v78, v79, v80, v81;
  v82 = sub_1CF9E5928();
  v83 = swift_allocObject();
  v84 = v150;
  v83[2] = v73;
  v83[3] = v84;
  v85 = v147;
  v83[4] = v146;
  v83[5] = v85;
  v83[6] = v53;
  v83[7] = v159;
  v86 = swift_allocObject();
  v86[2] = sub_1CF1B810C;
  v86[3] = v83;
  aBlock[4] = sub_1CF1B811C;
  aBlock[5] = v86;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF2FCAB8;
  aBlock[3] = &block_descriptor_27_0;
  v87 = _Block_copy(aBlock);

  v88 = v53;

  aBlock[0] = 0;
  [v88 coordinateWritingItemAtURL:v82 options:0x10000 error:aBlock byAccessor:v87];
  _Block_release(v87);

  v89 = aBlock[0];
  LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

  if (v82)
  {
    __break(1u);
  }

  if (v89)
  {
    v151 = v88;
    v90 = fpfs_current_or_default_log();
    v91 = v145;
    sub_1CF9E6128();
    v92 = v144;
    v93 = v156;
    v74(v144, v155, v156);
    v94 = v150;

    v95 = v89;
    v96 = sub_1CF9E6108();
    v97 = sub_1CF9E72B8();

    v94, v98, v99, v100, v101, v102, v103, v104;
    if (os_log_type_enabled(v96, v97))
    {
      LODWORD(v146) = v97;
      v147 = v96;
      v105 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      aBlock[0] = v142;
      *v105 = 136446722;
      *(v105 + 4) = sub_1CEFD0DF0(v152, v94, aBlock);
      *(v105 + 12) = 2080;
      v106 = sub_1CF9E5928();
      v107 = v95;
      v108 = v92;
      v109 = [v106 fp_shortDescription];

      v110 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v111 = v93;
      v113 = v112;

      v153 = *(v153 + 8);
      (v153)(v108, v111);
      v114 = sub_1CEFD0DF0(v110, v113, aBlock);
      v113, v115, v116, v117, v118, v119, v120, v121;
      *(v105 + 14) = v114;
      *(v105 + 22) = 2112;
      v157 = v107;
      sub_1CF1B7E64();
      sub_1CF00BB30(&qword_1EC4BE010, sub_1CF1B7E64, MEMORY[0x1E6969F58]);
      v122 = v107;
      v123 = v107;
      v124 = sub_1CF9E7FB8();
      if (v124)
      {
        v125 = v124;
      }

      else
      {
        v125 = swift_allocError();
        *v133 = v123;
      }

      v134 = sub_1CF9E57E8();

      v135 = [v134 fp_prettyDescription];
      *(v105 + 24) = v135;
      v136 = v141;
      *v141 = v135;
      v137 = v147;
      _os_log_impl(&dword_1CEFC7000, v147, v146, "cannot get coordination to %{public}s %s: %@", v105, 0x20u);
      sub_1CEFCCC44(v136, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v136, -1, -1);
      v138 = v142;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v138, -1, -1);
      MEMORY[0x1D386CDC0](v105, -1, -1);

      v143(v145, v154);
      v95 = v122;
      v93 = v156;
      v132 = v153;
    }

    else
    {

      v132 = *(v153 + 8);
      v132(v92, v93);
      v143(v91, v154);
    }

    swift_willThrow();

    v132(v155, v93);
    goto LABEL_21;
  }

  v129 = v159[0];
  v130 = v156;
  if (!v159[0])
  {
    (*(v153 + 8))(v155, v156);

    v126 = sub_1CF1B810C;
    goto LABEL_13;
  }

  swift_willThrow();
  v131 = v129;

  (*(v153 + 8))(v155, v130);
LABEL_21:

  v139 = v149;
  v140 = fpfs_adopt_log();
}

uint64_t sub_1CF1B02DC(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v64 = a6;
  v65 = a5;
  v66 = a4;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = sub_1CF9E6118();
  v69 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v21 = *(v11 + 16);
  v67 = a1;
  v59 = v21;
  v60 = v11 + 16;
  v21(v15, a1, v10);

  v22 = sub_1CF9E6108();
  v23 = sub_1CF9E7288();
  a3, v24, v25, v26, v27, v28, v29, v30;
  v58 = v23;
  v31 = os_log_type_enabled(v22, v23);
  v57 = a2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v63 = v16;
    v33 = v32;
    v56 = swift_slowAlloc();
    v70[0] = v56;
    *v33 = 136446466;
    *(v33 + 4) = sub_1CEFD0DF0(a2, a3, v70);
    *(v33 + 12) = 2080;
    v55 = v22;
    v34 = sub_1CF9E5928();
    v35 = v11;
    v36 = v10;
    v37 = [v34 fp_shortDescription];

    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = v39;

    v61 = *(v35 + 8);
    v61(v15, v36);
    v41 = sub_1CEFD0DF0(v38, v40, v70);
    v42 = v69;
    v40, v43, v44, v45, v46, v47, v48, v49;
    *(v33 + 14) = v41;
    v50 = v55;
    _os_log_impl(&dword_1CEFC7000, v55, v58, "%{public}s path %s", v33, 0x16u);
    v51 = v56;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v51, -1, -1);
    v52 = v33;
    v16 = v63;
    MEMORY[0x1D386CDC0](v52, -1, -1);

    v53 = v42;
  }

  else
  {

    v61 = *(v11 + 8);
    v61(v15, v10);
    v53 = v69;
  }

  (*(v53 + 8))(v19, v16);
  return v66(v67, v64);
}

void sub_1CF1B0944()
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v27 - v10;
  v31[0] = 0;
  v12 = [v0 moveAwaySyncRootAndReturnError_];
  v13 = v31[0];
  if (v12)
  {
    v30 = v1;
    v14 = v12;
    sub_1CF9E59D8();
    v15 = v13;

    if (qword_1EDEA70C8 != -1)
    {
      swift_once();
    }

    v29 = qword_1EDEA70D0;
    sub_1CF9E5988();
    if (qword_1EDEA70E0 != -1)
    {
      swift_once();
    }

    v16 = fpfs_current_log();
    (*(v3 + 16))(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v2);
    v17 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v19 = swift_allocObject();
    v28 = v7;
    v20 = v29;
    *(v19 + 16) = v29;
    (*(v3 + 32))(v19 + v18, v17, v2);
    v21 = v20;
    sub_1CF01001C(v16, "purgeAsync(at:)", 15, 2, sub_1CF1B80A8, v19);

    v22 = *(v3 + 8);
    v22(v28, v2);
    v22(v11, v2);
  }

  else
  {
    v23 = v31[0];
    v24 = sub_1CF9E57F8();

    swift_willThrow();
    v25 = v24;
    LODWORD(v31[0]) = sub_1CF9E5328();
    sub_1CF196978();
    v26 = sub_1CF9E5658();

    if (v26)
    {
    }
  }
}

void sub_1CF1B0CB0(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v208 = a2;
  v221 = *MEMORY[0x1E69E9840];
  v205 = sub_1CF9E5248();
  v6 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v204 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v194 = &v190 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v197 = &v190 - v12;
  v207 = sub_1CF9E5A58();
  v13 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v193 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v203 = &v190 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v202 = &v190 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v195 = &v190 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v214 = &v190 - v22;
  v196 = a4;
  v216 = swift_projectBox();
  v23 = [objc_opt_self() defaultManager];
  sub_1CF9E5A18();
  v25 = v24;
  sub_1CF9E6978();
  v25, v26, v27, v28, v29, v30, v31, v32;
  fpfs_recursive_prune_fault();

  v209 = a1;
  sub_1CF9E5A18();
  v34 = v33;
  v35 = sub_1CF9E6888();
  v34, v36, v37, v38, v39, v40, v41, v42;
  LOBYTE(v34) = [v23 fileExistsAtPath_];

  if (v34)
  {
    v191 = v9;
    if (qword_1EDEA70C8 != -1)
    {
      swift_once();
    }

    v192 = v8;
    _s18FileProviderDaemon17ConcreteFPDPurgerC31prepareDomainForSyncRootRemoval3urly10Foundation3URLV_tF_0(v209);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v43 = (v13 + 16);
    v215 = (v13 + 8);
    v201 = (v6 + 8);
    v200 = *MEMORY[0x1E696A250];
    v199 = (v13 + 40);
    v211 = 2;
    v206 = v23;
    for (i = (v13 + 16); ; v43 = i)
    {
      v44 = sub_1CF9E5928();
      v45 = *v43;
      v46 = v214;
      v47 = v207;
      v45(v214, v216, v207);
      v48 = sub_1CF9E5928();
      v49 = *v215;
      (*v215)(v46, v47);
      [v208 itemAtURL:v44 willMoveToURL:v48];

      v50 = v49;
      v51 = v45;
      v52 = v47;
      v53 = sub_1CF9E5928();
      v51(v46, v216, v47);
      v54 = sub_1CF9E5928();
      v213 = v50;
      v50(v46, v47);
      v218[0] = 0;
      v55 = v206;
      LODWORD(v46) = [v206 moveItemAtURL:v53 toURL:v54 error:v218];

      if (v46)
      {
        v126 = v218[0];
        v127 = sub_1CF9E5928();
        v128 = v216;
        swift_beginAccess();
        v129 = v214;
        v51(v214, v128, v52);
        v130 = sub_1CF9E5928();
        v213(v129, v52);
        [v208 itemAtURL:v127 didMoveToURL:v130];

        return;
      }

      v56 = v218[0];
      v57 = sub_1CF9E57F8();

      swift_willThrow();
      v58 = v57;
      v59 = v204;
      sub_1CF9E50F8();
      sub_1CF00BB30(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
      v60 = v205;
      v61 = sub_1CF9E5658();

      (*v201)(v59, v60);
      v198 = v51;
      if (v61)
      {
        break;
      }

      v218[0] = v57;
      v62 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF1B7E64();
      if (!swift_dynamicCast())
      {
        goto LABEL_17;
      }

      v217 = v220;
      if ([v220 code] != 516)
      {
LABEL_16:

LABEL_17:
        swift_willThrow();

        v217 = v57;
        return;
      }

      v63 = [v217 domain];
      v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v66 = v65;

      v68 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v74 = v67;
      if (v64 == v68 && v66 == v67)
      {
        v66, v67, v68, v69, v70, v71, v72, v73;
        v74, v75, v76, v77, v78, v79, v80, v81;
      }

      else
      {
        v82 = sub_1CF9E8048();
        v66, v83, v84, v85, v86, v87, v88, v89;
        v74, v90, v91, v92, v93, v94, v95, v96;
        if ((v82 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v97 = v214;
      v51(v214, v216, v52);
      sub_1CF9E58E8();
      v99 = v98;
      v100 = v52;
      v101 = v213;
      v213(v97, v52);
      v102 = sub_1CF9E6888();
      v99, v103, v104, v105, v106, v107, v108, v109;
      v110 = v211;
      v111 = [v102 fp:v211 bouncedNameWithIndex:?];

      v210 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v113 = v112;

      v114 = v203;
      v115 = v216;
      v51(v203, v216, v100);
      v116 = v202;
      sub_1CF9E5988();
      v101(v114, v100);
      sub_1CF9E5968();
      v113, v117, v118, v119, v120, v121, v122, v123;
      v101(v116, v100);
      v124 = v97;
      v125 = v100;
      (*v199)(v115, v124, v100);
      if (v110 == 500)
      {
        v169 = fpfs_current_or_default_log();
        v170 = v194;
        sub_1CF9E6128();
        v171 = v193;
        v198(v193, v209, v100);
        v172 = sub_1CF9E6108();
        v173 = sub_1CF9E72A8();
        if (os_log_type_enabled(v172, v173))
        {
          v174 = v170;
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v219 = v176;
          *v175 = 136315138;
          sub_1CF00BB30(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v177 = sub_1CF9E7F98();
          v178 = v125;
          v180 = v179;
          v213(v171, v178);
          v181 = sub_1CEFD0DF0(v177, v180, &v219);
          v180, v182, v183, v184, v185, v186, v187, v188;
          *(v175 + 4) = v181;
          _os_log_impl(&dword_1CEFC7000, v172, v173, "preserve Domain Folder directory %s, reached max bounce number", v175, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v176);
          MEMORY[0x1D386CDC0](v176, -1, -1);
          MEMORY[0x1D386CDC0](v175, -1, -1);

          (*(v191 + 8))(v174, v192);
        }

        else
        {

          v213(v171, v100);
          (*(v191 + 8))(v170, v192);
        }

        v189 = v206;
        swift_willThrow();

        return;
      }

      v211 = v110 + 1;
      v217 = 0;
    }

    v131 = fpfs_current_or_default_log();
    v132 = v197;
    sub_1CF9E6128();
    v133 = v195;
    v51(v195, v209, v52);

    v134 = sub_1CF9E6108();
    v135 = sub_1CF9E72A8();

    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v220 = v217;
      *v136 = 136446466;
      v137 = sub_1CF9E5928();
      v138 = [v137 fp_shortDescription];
      LODWORD(v211) = v135;
      v139 = v138;

      v140 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v141 = v133;
      v143 = v142;

      v213(v141, v52);
      v144 = sub_1CEFD0DF0(v140, v143, &v220);
      v143, v145, v146, v147, v148, v149, v150, v151;
      *(v136 + 4) = v144;
      *(v136 + 12) = 2082;
      v152 = v216;
      swift_beginAccess();
      v153 = v134;
      v154 = v214;
      v198(v214, v152, v52);
      v155 = sub_1CF9E5928();
      v156 = [v155 &selRef_fp_errorWithPOSIXCode_];

      v157 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v159 = v158;

      v213(v154, v52);
      v160 = sub_1CEFD0DF0(v157, v159, &v220);
      v159, v161, v162, v163, v164, v165, v166, v167;
      *(v136 + 14) = v160;
      _os_log_impl(&dword_1CEFC7000, v153, v211, "Domain syncroot URL %{public}s or destination URL %{public}s is invalid, did not move anything...", v136, 0x16u);
      v168 = v217;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v168, -1, -1);
      MEMORY[0x1D386CDC0](v136, -1, -1);

      (*(v191 + 8))(v197, v192);
    }

    else
    {

      v213(v133, v52);
      (*(v191 + 8))(v132, v192);
    }

    v217 = 0;
  }

  else
  {
  }
}

uint64_t sub_1CF1B1BF4@<X0>(_DWORD *a2@<X8>)
{
  sub_1CF9E5A18();
  v4 = v3;
  result = sub_1CF9E5578();
  if (result == 2)
  {
    __break(1u);
  }

  else
  {
    sub_1CF9E6978();
    v4, v6, v7, v8, v9, v10, v11, v12;
    v13 = fpfs_recursive_unlinkat();

    *a2 = v13;
  }

  return result;
}

void sub_1CF1B1DE4(void *a1, void *a2, uint64_t a3)
{
  v322[1] = *MEMORY[0x1E69E9840];
  v289 = sub_1CF9E5248();
  v288 = *(v289 - 8);
  MEMORY[0x1EEE9AC00](v289);
  v287 = &v279 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_1CF9E5A58();
  v297 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  *&v285 = &v279 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v292 = &v279 - v9;
  v284 = sub_1CF9E53C8();
  v283 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v282 = &v279 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v298 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v286 = &v279 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v299 = &v279 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v281 = &v279 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v291 = &v279 - v18;
  v304 = sub_1CF9E5CF8();
  v311 = *(v304 - 1);
  MEMORY[0x1EEE9AC00](v304);
  v296 = &v279 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v294 = &v279 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v295 = &v279 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v310 = (&v279 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v308 = (&v279 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v293 = &v279 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v305 = &v279 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v306 = &v279 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v307 = &v279 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v279 - v37;
  v39 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v279 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v302 = &v279 - v43;
  v44 = sub_1CF9E5928();
  v45 = sub_1CF9E5928();
  v290 = a2;
  [a2 itemAtURL:v44 willMoveToURL:v45];

  v46 = [objc_opt_self() defaultManager];
  v309 = a1;
  v47 = sub_1CF9E5928();
  v303 = a3;
  v48 = sub_1CF9E5928();
  aBlock = 0;
  LODWORD(a1) = [v46 moveItemAtURL:v47 toURL:v48 error:&aBlock];

  v49 = aBlock;
  if (!a1)
  {
    v71 = v11;
    v72 = aBlock;
    v73 = sub_1CF9E57F8();

    swift_willThrow();
    aBlock = v73;
    v74 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF1B7E64();
    if (swift_dynamicCast())
    {
      v75 = v322[0];
      v76 = [v322[0] code];
      v77 = v287;
      sub_1CF9E50F8();
      v78 = sub_1CF9E5238();
      (*(v288 + 8))(v77, v289);
      if (v76 == v78)
      {
        v79 = [v75 domain];
        v80 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v82 = v81;

        v84 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v90 = v83;
        if (v80 == v84 && v82 == v83)
        {
          v82, v83, v84, v85, v86, v87, v88, v89;
          v90, v91, v92, v93, v94, v95, v96, v97;
LABEL_33:

          v200 = fpfs_current_or_default_log();
          v201 = v286;
          sub_1CF9E6128();
          v202 = v297;
          v203 = v285;
          v204 = v300;
          (*(v297 + 16))(v285, v309, v300);
          v205 = v75;
          v206 = sub_1CF9E6108();
          v207 = sub_1CF9E72A8();

          if (os_log_type_enabled(v206, v207))
          {
            LODWORD(v310) = v207;
            v311 = v206;
            v289 = v71;
            v208 = v203;
            v209 = swift_slowAlloc();
            v308 = swift_slowAlloc();
            v309 = swift_slowAlloc();
            v321 = v309;
            *v209 = 136446466;
            v210 = sub_1CF9E5928();
            v211 = [v210 fp_shortDescription];

            v212 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v214 = v213;

            (*(v202 + 8))(v208, v204);
            v215 = sub_1CEFD0DF0(v212, v214, &v321);
            v214, v216, v217, v218, v219, v220, v221, v222;
            *(v209 + 4) = v215;
            *(v209 + 12) = 2112;
            v314 = v205;
            sub_1CF00BB30(&qword_1EC4BE010, sub_1CF1B7E64, MEMORY[0x1E6969F58]);
            v223 = v205;
            v224 = sub_1CF9E7FB8();
            if (v224)
            {
              v225 = v224;
            }

            else
            {
              v225 = swift_allocError();
              *v227 = v223;
            }

            v228 = v311;
            v229 = sub_1CF9E57E8();

            v230 = [v229 fp_prettyDescription];
            *(v209 + 14) = v230;
            v231 = v308;
            *v308 = v230;
            _os_log_impl(&dword_1CEFC7000, v228, v310, "Failed to move away domain syncroot %{public}s error: %@", v209, 0x16u);
            sub_1CEFCCC44(v231, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v231, -1, -1);
            v232 = v309;
            __swift_destroy_boxed_opaque_existential_1(v309);
            MEMORY[0x1D386CDC0](v232, -1, -1);
            MEMORY[0x1D386CDC0](v209, -1, -1);

            (*(v298 + 8))(v286, v289);
          }

          else
          {

            (*(v202 + 8))(v203, v204);
            (*(v298 + 8))(v201, v71);
          }

          return;
        }

        v185 = sub_1CF9E8048();
        v82, v186, v187, v188, v189, v190, v191, v192;
        v90, v193, v194, v195, v196, v197, v198, v199;
        if (v185)
        {
          goto LABEL_33;
        }
      }
    }

    swift_willThrow();
    return;
  }

  v289 = v11;
  isa = v311[7].isa;
  v51 = v38;
  v280 = v38;
  v52 = v304;
  isa(v38, 1, 1, v304);
  v53 = v307;
  isa(v307, 1, 1, v52);
  v54 = v306;
  isa(v306, 1, 1, v52);
  v55 = v51;
  v56 = v305;
  sub_1CF06EAD4(v55, v305);
  v57 = v53;
  v58 = v293;
  sub_1CF06EAD4(v57, v293);
  sub_1CF06EAD4(v54, v308);
  v59 = &v41[v39[14]];
  *v59 = 0;
  *(v59 + 1) = 0;
  v287 = v59;
  v41[v39[17]] = 2;
  v288 = v39[23];
  v41[v288] = 6;
  v279 = v39[30];
  isa(&v41[v279], 1, 1, v52);
  v286 = &v41[v39[34]];
  v285 = xmmword_1CF9F4E20;
  *v286 = xmmword_1CF9F4E20;
  v60 = &v41[v39[37]];
  v61 = &v41[v39[38]];
  *v61 = 0;
  *(v61 + 1) = 0;
  v62 = v49;
  fpfs_supports_vfs_ignore_permissions_iopolicy();
  *v41 = 1;
  v41[v39[20]] = 0;
  v41[v39[28]] = 0;
  v41[v39[29]] = 0;
  *&v41[v39[26]] = 0;
  *&v41[v39[27]] = 0;
  *(v41 + 1) = 0;
  v41[8] = 1;
  *v60 = 0;
  v60[4] = 1;
  *(v41 + 5) = 493;
  v63 = v310;
  sub_1CF06EAD4(v56, v310);
  v64 = v311;
  v65 = v311[6].isa;
  v66 = v65(v63, 1, v52);
  v67 = v64;
  v68 = v58;
  if (v66 == 1)
  {
    v69 = v294;
    sub_1CF9E5C88();
    v70 = v304;
    if (v65(v310, 1, v304) != 1)
    {
      sub_1CEFCCC44(v310, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v98 = v64[4].isa;
    v69 = v294;
    v70 = v304;
    v98(v294, v310, v304);
  }

  v99 = &v41[v39[7]];
  v310 = v67[4].isa;
  (v310)(v99, v69, v70);
  v100 = v295;
  sub_1CF06EAD4(v68, v295);
  v101 = v65(v100, 1, v70);
  v102 = v65;
  v103 = v70;
  v311 = v67 + 4;
  if (v101 == 1)
  {
    v104 = v296;
    v304 = v102;
    sub_1CF9E5C88();
    sub_1CEFCCC44(v68, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v305, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v306, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v307, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v280, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v105 = (v304)(v100, 1, v103) == 1;
    v106 = v100;
    v107 = v310;
    v108 = v103;
    if (!v105)
    {
      sub_1CEFCCC44(v106, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v108 = v103;
    }
  }

  else
  {
    sub_1CEFCCC44(v68, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v305, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v306, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v307, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v280, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v109 = v296;
    v110 = v100;
    v107 = v310;
    (v310)(v296, v110, v70);
    v104 = v109;
    v108 = v103;
  }

  v111 = v39[31];
  v112 = &v41[v39[32]];
  v113 = v39[33];
  v114 = &v41[v39[35]];
  v107(&v41[v39[8]], v104, v108);
  v41[v39[9]] = 0;
  v41[v39[10]] = 0;
  v41[v39[13]] = 0;
  *&v41[v39[19]] = 0;
  v41[v39[21]] = 0;
  v41[v39[15]] = 0;
  v41[v39[16]] = 0;
  v41[v39[11]] = 0;
  v41[v39[12]] = 0;
  v41[v39[18]] = 0;
  sub_1CEFE4804(v308, &v41[v279]);
  *&v41[v111] = 0;
  *v112 = 0;
  v112[8] = 1;
  *&v41[v113] = 0;
  v115 = v287;
  *(v287 + 1), v116, v117, v118, v119, v120, v121, v122;
  *v115 = 0;
  v115[1] = 0;
  v123 = v286;
  sub_1CEFE48D8(*v286, *(v286 + 1));
  *v123 = v285;
  *v114 = 0;
  v114[8] = 1;
  v41[v39[36]] = 0;
  v41[v39[24]] = 0;
  v41[v39[25]] = 0;
  v41[v39[22]] = 0;
  v41[v288] = 6;
  v124 = v302;
  sub_1CF1B7EB0(v41, v302, type metadata accessor for ItemMetadata);
  v125 = sub_1CF9E5A18();
  v127 = v126;
  MEMORY[0x1EEE9AC00](v125);
  v277 = v124;
  LODWORD(v321) = 0;
  BYTE4(v321) = 1;
  v322[0] = 0;
  v128 = swift_allocObject();
  v128[2] = &v321;
  v128[3] = sub_1CF1B7F18;
  v128[4] = &v279 - 4;
  v128[5] = v322;
  v129 = swift_allocObject();
  *(v129 + 16) = sub_1CF1B7F70;
  *(v129 + 24) = v128;
  v319 = sub_1CF005DC8;
  v320 = v129;
  aBlock = MEMORY[0x1E69E9820];
  v316 = 1107296256;
  v317 = sub_1CF005DF8;
  v318 = &block_descriptor_15;
  v130 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v131 = fpfs_openat();

  _Block_release(v130);

  LOBYTE(v123) = swift_isEscapingClosureAtFileLocation();

  if (v123)
  {
    __break(1u);
  }

  v140 = v322[0];
  if (v322[0])
  {
    swift_willThrow();
    v301 = 0;
    v148 = v298;
    v149 = v292;
    v150 = v291;
LABEL_18:
    v127, v141, v142, v143, v144, v145, v146, v147;
    v151 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v152 = v140;
    v153 = sub_1CF9E6108();
    v154 = sub_1CF9E72A8();

    if (os_log_type_enabled(v153, v154))
    {
      v155 = swift_slowAlloc();
      v156 = v148;
      v157 = swift_slowAlloc();
      *v155 = 138412290;
      swift_getErrorValue();
      v158 = Error.prettyDescription.getter(v312, v313);
      *(v155 + 4) = v158;
      *v157 = v158;
      _os_log_impl(&dword_1CEFC7000, v153, v154, "Failed to mark syncroot as dataless, error: %@", v155, 0xCu);
      sub_1CEFCCC44(v157, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v159 = v157;
      v148 = v156;
      MEMORY[0x1D386CDC0](v159, -1, -1);
      MEMORY[0x1D386CDC0](v155, -1, -1);
    }

    else
    {
    }

    v160 = v300;
    v161 = v299;
    (*(v148 + 8))(v150, v289);
    v162 = v297;
    goto LABEL_25;
  }

  v148 = v298;
  v149 = v292;
  v150 = v291;
  if (v131 < 0)
  {
    if (MEMORY[0x1D38683F0](v132))
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        v140 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v226 = sub_1CF9E6138();
        if ((v226 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v226;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF00BB30(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v233 = v282;
        v234 = v284;
        sub_1CF9E57D8();
        v140 = sub_1CF9E53A8();
        (*(v283 + 8))(v233, v234);
      }

      swift_willThrow();
      v301 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v162 = v297;
    if ((v321 & 0x100000000) == 0)
    {
      v127, v133, v134, v135, v136, v137, v138, v139;
      v160 = v300;
      v161 = v299;
LABEL_25:
      v163 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      (*(v162 + 16))(v149, v309, v160);
      v164 = sub_1CF9E6108();
      v165 = sub_1CF9E7288();
      if (os_log_type_enabled(v164, v165))
      {
        v166 = v149;
        v167 = swift_slowAlloc();
        v311 = swift_slowAlloc();
        aBlock = v311;
        *v167 = 136315138;
        v168 = sub_1CF9E5928();
        v169 = v148;
        v170 = [v168 fp_shortDescription];

        v171 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v173 = v172;

        (*(v162 + 8))(v166, v300);
        v174 = sub_1CEFD0DF0(v171, v173, &aBlock);
        v173, v175, v176, v177, v178, v179, v180, v181;
        *(v167 + 4) = v174;
        _os_log_impl(&dword_1CEFC7000, v164, v165, "Marked the syncroot dataless, url: %s", v167, 0xCu);
        v182 = v311;
        __swift_destroy_boxed_opaque_existential_1(v311);
        MEMORY[0x1D386CDC0](v182, -1, -1);
        MEMORY[0x1D386CDC0](v167, -1, -1);

        (*(v169 + 8))(v299, v289);
      }

      else
      {

        (*(v162 + 8))(v149, v160);
        (*(v148 + 8))(v161, v289);
      }

      v183 = sub_1CF9E5928();
      v184 = sub_1CF9E5928();
      [v290 itemAtURL:v183 didMoveToURL:v184];

      sub_1CF1B802C(v302, type metadata accessor for ItemMetadata);
      return;
    }

    __break(1u);
  }

  aBlock = 0;
  v316 = 0xE000000000000000;
  sub_1CF9E7948();
  v316, v235, v236, v237, v238, v239, v240, v241;
  aBlock = 0xD00000000000001ALL;
  v316 = 0x80000001CFA2DF30;
  LODWORD(v314) = v131;
  v242 = sub_1CF9E7F98();
  v244 = v243;
  MEMORY[0x1D3868CC0](v242);
  v244, v245, v246, v247, v248, v249, v250, v251;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v252 = aBlock;
  v253 = v316;
  v254 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v255 = sub_1CF9E6108();
  v256 = sub_1CF9E72B8();
  v253, v257, v258, v259, v260, v261, v262, v263;
  if (os_log_type_enabled(v255, v256))
  {
    v264 = swift_slowAlloc();
    v265 = swift_slowAlloc();
    aBlock = v265;
    *v264 = 136315650;
    v266 = sub_1CF9E7988();
    v268 = v267;
    v269 = sub_1CEFD0DF0(v266, v267, &aBlock);
    v268, v270, v271, v272, v273, v274, v275, v276;
    *(v264 + 4) = v269;
    *(v264 + 12) = 2048;
    *(v264 + 14) = 315;
    *(v264 + 22) = 2080;
    *(v264 + 24) = sub_1CEFD0DF0(v252, v253, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v255, v256, "[ASSERT] ‼️  %s:%lu: %s", v264, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v265, -1, -1);
    MEMORY[0x1D386CDC0](v264, -1, -1);
  }

  (*(v298 + 8))(v281, v289);
  v278 = 0;
  v277 = 315;
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF1B3740@<X0>(_DWORD *a3@<X8>)
{
  result = fpfs_set_dataless_cmpfs_attrs();
  *a3 = result;
  return result;
}

void sub_1CF1B394C()
{
  v1 = [v0 volume];
  if (([v1 isDefaultVolumeForCurrentPersona] & 1) == 0 && FPFeatureFlagEbihilIsEnabled() && (objc_msgSend(v0, sel_removeEbihilSymlinkFromDefaultLocation) & 1) == 0)
  {
    [v1 removeBrokenEbihilLinksFromRoot];
  }
}

uint64_t sub_1CF1B3A1C()
{
  v1 = v0;
  v84[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v75[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v75[-v12];
  result = [v1 getDefaultRootExposureSymlinkURL];
  if (result)
  {
    v80 = v3;
    v81 = v2;
    v15 = result;
    sub_1CF9E59D8();

    sub_1CF9E5A18();
    v17 = v16;
    v18 = [v1 providerDomainID];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;

    sub_1CF9E6978();
    v17, v21, v22, v23, v24, v25, v26, v27;
    sub_1CF9E6978();
    v20, v28, v29, v30, v31, v32, v33, v34;
    LODWORD(v17) = fpfs_root_exposure_symlink_xattr_is_equal();

    if (v17)
    {
      v35 = [objc_opt_self() defaultManager];
      v36 = sub_1CF9E5928();
      v84[0] = 0;
      v37 = [v35 removeItemAtURL:v36 error:v84];

      if (v37)
      {
        v38 = *(v7 + 8);
        v39 = v84[0];
        v38(v13, v6);
        return 1;
      }

      v40 = v84[0];
      v41 = sub_1CF9E57F8();

      swift_willThrow();
      v42 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      (*(v7 + 16))(v9, v13, v6);
      v43 = v41;
      v44 = sub_1CF9E6108();
      v45 = sub_1CF9E72A8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v84[0] = v79;
        *v46 = 136315394;
        v77 = v44;
        sub_1CF9E5A18();
        v48 = v47;
        v49 = sub_1CF9E6888();
        v48, v50, v51, v52, v53, v54, v55, v56;
        v57 = [v49 fp_prettyPath];

        v58 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v76 = v45;
        v60 = v59;

        v61 = *(v7 + 8);
        v61(v9, v6);
        v62 = sub_1CEFD0DF0(v58, v60, v84);
        v60, v63, v64, v65, v66, v67, v68, v69;
        *(v46 + 4) = v62;
        *(v46 + 12) = 2112;
        swift_getErrorValue();
        v70 = Error.prettyDescription.getter(v82, v83);
        *(v46 + 14) = v70;
        v71 = v77;
        v72 = v78;
        *v78 = v70;
        _os_log_impl(&dword_1CEFC7000, v71, v76, "Failed to remove %s domain link, with error %@", v46, 0x16u);
        sub_1CEFCCC44(v72, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v72, -1, -1);
        v73 = v79;
        __swift_destroy_boxed_opaque_existential_1(v79);
        MEMORY[0x1D386CDC0](v73, -1, -1);
        MEMORY[0x1D386CDC0](v46, -1, -1);

        (*(v80 + 8))(v5, v81);
        v61(v13, v6);
      }

      else
      {

        v74 = *(v7 + 8);
        v74(v9, v6);
        (*(v80 + 8))(v5, v81);
        v74(v13, v6);
      }
    }

    else
    {
      (*(v7 + 8))(v13, v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1CF1B3FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = v67 - v5;
  v6 = sub_1CF9E5868();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v73 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v75 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v71 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v67 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = v67 - v16;
  v18 = [v1 volume];
  v19 = [v18 root];

  v72 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;

  v22 = [v2 rootURLs];
  v23 = sub_1CF9E6D48();

  if (*v23->tree)
  {
    (*(v75 + 16))(v13, v23 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), v9);
    v23, v31, v32, v33, v34, v35, v36, v37;
    v38 = *(v75 + 32);
    v67[1] = v21;
    v68 = v17;
    v38(v17, v13, v9);
    v39 = *MEMORY[0x1E6968F58];
    v69 = a1;
    v40 = v7;
    v41 = v7;
    v42 = v6;
    v43 = *(v40 + 104);
    v44 = v73;
    v43(v73, v39, v42);
    v70 = *(v75 + 56);
    v70(v74, 1, 1, v9);
    v45 = v71;
    sub_1CF9E5A38();
    v46 = sub_1CF9E58E8();
    v48 = v47;
    v76 = v46;
    v77 = v47;
    v43(v44, *MEMORY[0x1E6968F68], v42);
    sub_1CEFE4E68();
    v49 = v69;
    sub_1CF9E5A48();
    (*(v41 + 8))(v44, v42);
    v50 = *(v75 + 8);
    v75 += 8;
    v50(v45, v9);
    v50(v68, v9);
    v48, v51, v52, v53, v54, v55, v56, v57;
    return (v70)(v49, 0, 1, v9);
  }

  else
  {
    v23, v24, v25, v26, v27, v28, v29, v30;
    v21, v59, v60, v61, v62, v63, v64, v65;
    v66 = *(v75 + 56);

    return v66(a1, 1, 1, v9);
  }
}

void sub_1CF1B4554()
{
  v1 = v0;
  v106[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v102 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v95 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v90 - v5;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v90 - v11;
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v90 - v15;
  v17 = [v0 volume];
  v106[0] = 0;
  v18 = [v17 supportPathForDomain:v1 failIfNotExisting:1 error:v106];

  v19 = v106[0];
  if (v18)
  {
    v97 = v9;
    v100 = v2;
    sub_1CF9E59D8();
    v20 = v19;

    v21 = sub_1CF9E5928();
    v96 = v1;
    [v1 unregisterFromSpaceForceWithUrl_];

    v22 = fpfs_current_or_default_log();
    v23 = v101;
    sub_1CF9E6128();
    v24 = *(v7 + 16);
    v99 = v16;
    v93 = v24;
    v94 = (v7 + 16);
    (v24)(v12, v16, v6);
    v25 = sub_1CF9E6108();
    v26 = v6;
    v27 = sub_1CF9E7288();
    v28 = os_log_type_enabled(v25, v27);
    v29 = v7;
    v98 = v7;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v106[0] = v92;
      *v30 = 136315138;
      v91 = v26;
      v31 = sub_1CF9E5928();
      v32 = [v31 fp_shortDescription];

      v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v35 = v34;

      v36 = *(v29 + 8);
      v37 = v12;
      v38 = v91;
      v36(v37, v91);
      v39 = sub_1CEFD0DF0(v33, v35, v106);
      v35, v40, v41, v42, v43, v44, v45, v46;
      *(v30 + 4) = v39;
      _os_log_impl(&dword_1CEFC7000, v25, v27, "removing support path %s", v30, 0xCu);
      v47 = v92;
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x1D386CDC0](v47, -1, -1);
      MEMORY[0x1D386CDC0](v30, -1, -1);

      v48 = *(v102 + 8);
      v48(v23, v100);
      v49 = v38;
    }

    else
    {

      v36 = *(v7 + 8);
      v36(v12, v26);
      v48 = *(v102 + 8);
      v48(v23, v100);
      v49 = v26;
    }

    v52 = v99;
    v53 = sub_1CF9E5928();
    v106[0] = 0;
    v54 = [v96 forceRecursiveRemoveAt:v53 error:v106];

    v55 = v97;
    if (v54)
    {
      v56 = v106[0];
      v36(v52, v49);
    }

    else
    {
      v57 = v106[0];
      v58 = sub_1CF9E57F8();

      swift_willThrow();
      v59 = v58;
      LODWORD(v106[0]) = sub_1CF9E5328();
      sub_1CF196978();
      v60 = sub_1CF9E5658();
      v103 = v58;

      if (v60)
      {
        v36(v52, v49);

        v103 = 0;
      }

      else
      {
        v61 = fpfs_current_or_default_log();
        v62 = v95;
        sub_1CF9E6128();
        (v93)(v55, v52, v49);
        v63 = v103;
        v64 = v103;
        v65 = sub_1CF9E6108();
        v66 = sub_1CF9E72B8();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          LODWORD(v96) = v66;
          v68 = v67;
          v94 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v106[0] = v101;
          *v68 = 136315394;
          v93 = v65;
          v69 = sub_1CF9E5928();
          v70 = [v69 fp_shortDescription];

          v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v72 = v55;
          v73 = v49;
          v75 = v74;

          v36(v72, v73);
          v76 = sub_1CEFD0DF0(v71, v75, v106);
          v77 = v75;
          v49 = v73;
          v77, v78, v79, v80, v81, v82, v83, v84;
          *(v68 + 4) = v76;
          *(v68 + 12) = 2112;
          swift_getErrorValue();
          v85 = Error.prettyDescription.getter(v104, v105);
          *(v68 + 14) = v85;
          v86 = v93;
          v87 = v94;
          *v94 = v85;
          _os_log_impl(&dword_1CEFC7000, v86, v96, "removal of %s failed: %@", v68, 0x16u);
          sub_1CEFCCC44(v87, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v87, -1, -1);
          v88 = v101;
          __swift_destroy_boxed_opaque_existential_1(v101);
          MEMORY[0x1D386CDC0](v88, -1, -1);
          MEMORY[0x1D386CDC0](v68, -1, -1);

          v89 = v95;
        }

        else
        {

          v36(v55, v49);
          v89 = v62;
        }

        v48(v89, v100);
        swift_willThrow();
        v36(v99, v49);
      }
    }
  }

  else
  {
    v50 = v106[0];
    v51 = sub_1CF9E57F8();

    v103 = v51;
    swift_willThrow();
  }
}

uint64_t sub_1CF1B4D18(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  a4();

  return 1;
}

void sub_1CF1B4D9C()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v94[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v94[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94[-v12];
  if (FPFeatureFlagSpaceAttributionIsEnabled())
  {
    v106 = v2;
    v107 = v1;
    v109 = [objc_allocWithZone(MEMORY[0x1E69D3980]) init];
    v14 = [v0 rootURLs];
    v15 = sub_1CF9E6D48();

    if (*v15->tree)
    {
      v104 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v23 = *(v6 + 16);
      v108 = *(v6 + 80);
      v103 = (v108 + 32) & ~v108;
      v23(v13, v15 + v103, v5);
      v15, v24, v25, v26, v27, v28, v29, v30;
      v31 = [v0 provider];
      if (v31)
      {
        v32 = v31;
        v102 = v6;
        v100 = ~v108;
        v33 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v105 = v13;
        v101 = v6 + 16;
        v23(v10, v13, v5);
        v34 = v32;
        v35 = sub_1CF9E6108();
        v36 = sub_1CF9E7288();

        v37 = v23;
        if (os_log_type_enabled(v35, v36))
        {
          v38 = swift_slowAlloc();
          v97 = v23;
          v39 = v38;
          v96 = swift_slowAlloc();
          aBlock[0] = v96;
          *v39 = 136315394;
          sub_1CF00BB30(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v95 = v36;
          v40 = sub_1CF9E7F98();
          v42 = v41;
          v43 = v102;
          v44 = *(v102 + 8);
          v98 = (v102 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v99 = v44;
          v44(v10, v5);
          v45 = sub_1CEFD0DF0(v40, v42, aBlock);
          v42, v46, v47, v48, v49, v50, v51, v52;
          *(v39 + 4) = v45;
          *(v39 + 12) = 2080;
          v53 = [v34 identifier];
          v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v56 = v55;

          v57 = sub_1CEFD0DF0(v54, v56, aBlock);
          v56, v58, v59, v60, v61, v62, v63, v64;
          *(v39 + 14) = v57;
          _os_log_impl(&dword_1CEFC7000, v35, v95, "Domain Backend: Space Attribution unregistration for path %s and bundle %s", v39, 0x16u);
          v65 = v96;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v65, -1, -1);
          v66 = v39;
          v37 = v97;
          MEMORY[0x1D386CDC0](v66, -1, -1);
        }

        else
        {

          v43 = v102;
          v68 = *(v102 + 8);
          v98 = (v102 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v99 = v68;
          v68(v10, v5);
        }

        v106[1](v4, v107);
        v69 = v34;
        v70 = dispatch_group_create();
        dispatch_group_enter(v70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v71 = v43;
        v72 = v103;
        v73 = v108;
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1CF9FA450;
        v75 = v74 + v72;
        v76 = v105;
        v37(v75, v105, v5);
        v107 = sub_1CF9E6D28();
        v74, v77, v78, v79, v80, v81, v82, v83;
        v106 = [v69 identifier];
        v84 = v69;
        v85 = v104;
        v37(v104, v76, v5);
        v86 = (v73 + 16) & v100;
        v87 = (v7 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        (*(v71 + 32))(v88 + v86, v85, v5);
        *(v88 + v87) = v84;
        *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v70;
        aBlock[4] = sub_1CF1B7DA0;
        aBlock[5] = v88;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CF00A468;
        aBlock[3] = &block_descriptor_2;
        v89 = _Block_copy(aBlock);
        v90 = v84;
        v91 = v70;

        v93 = v106;
        v92 = v107;
        [v109 unregisterURLs:v107 forBundleID:v106 completionHandler:v89];
        _Block_release(v89);

        sub_1CF9E72F8();
        v99(v105, v5);
      }

      else
      {
        (*(v6 + 8))(v13, v5);
      }
    }

    else
    {
      v15, v16, v17, v18, v19, v20, v21, v22;
      v67 = v109;
    }
  }
}

void sub_1CF1B547C(void *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v86[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v86[-v13];
  v15 = sub_1CF9E6118();
  v91 = *(v15 - 8);
  v92 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v86[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86[-v19];
  if (a1)
  {
    v90 = a4;
    v21 = a1;
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v9 + 16))(v14, a2, v8);
    v23 = a1;
    v24 = a3;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72B8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v95 = v89;
      *v27 = 136315650;
      sub_1CF00BB30(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v87 = v26;
      v28 = sub_1CF9E7F98();
      v30 = v29;
      (*(v9 + 8))(v14, v8);
      v31 = sub_1CEFD0DF0(v28, v30, &v95);
      v30, v32, v33, v34, v35, v36, v37, v38;
      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v39 = [v24 identifier];
      v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v42 = v41;

      v43 = sub_1CEFD0DF0(v40, v42, &v95);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v27 + 14) = v43;
      *(v27 + 22) = 2112;
      swift_getErrorValue();
      v51 = Error.prettyDescription.getter(v93, v94);
      *(v27 + 24) = v51;
      v52 = v88;
      *v88 = v51;
      _os_log_impl(&dword_1CEFC7000, v25, v87, "Domain Backend: Path %s for bundle %s Space Attribution unregistration error: %@", v27, 0x20u);
      sub_1CEFCCC44(v52, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v52, -1, -1);
      v53 = v89;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v53, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    (*(v91 + 8))(v20, v92);
    a4 = v90;
  }

  else
  {
    v54 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v9 + 16))(v11, a2, v8);
    v55 = a3;
    v56 = sub_1CF9E6108();
    v57 = sub_1CF9E7288();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      LODWORD(v89) = v57;
      v59 = v58;
      v90 = swift_slowAlloc();
      v95 = v90;
      *v59 = 136315394;
      sub_1CF00BB30(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v60 = sub_1CF9E7F98();
      v61 = a4;
      v63 = v62;
      (*(v9 + 8))(v11, v8);
      v64 = sub_1CEFD0DF0(v60, v63, &v95);
      v65 = v63;
      a4 = v61;
      v65, v66, v67, v68, v69, v70, v71, v72;
      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      v73 = [v55 identifier];
      v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v76 = v75;

      v77 = sub_1CEFD0DF0(v74, v76, &v95);
      v76, v78, v79, v80, v81, v82, v83, v84;
      *(v59 + 14) = v77;
      _os_log_impl(&dword_1CEFC7000, v56, v89, "Path %s was unregistered from Space Attribution with bundle %s", v59, 0x16u);
      v85 = v90;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v85, -1, -1);
      MEMORY[0x1D386CDC0](v59, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    (*(v91 + 8))(v17, v92);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1CF1B5BF8@<X0>(_DWORD *a2@<X8>)
{
  sub_1CF9E5A18();
  v4 = v3;
  sub_1CF9E5A18();
  v6 = v5;
  v7 = sub_1CF9E6978();
  v4, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_1CF9E6978();
  v6, v16, v17, v18, v19, v20, v21, v22;
  LODWORD(v6) = MEMORY[0x1D386BA20](4294967294, v7 + 32, 4294967294, v15 + 32, 4);

  *a2 = v6;
  return result;
}

uint64_t sub_1CF1B5D54(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1CF1B5DC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1CF1B5DD8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = v7;
  v9 = sub_1CEFD0DF0(v6, v7, a3);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a1;
  *v17 = v9;
  *a1 = v17 + 1;
}

void sub_1CF1B5E5C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_1CF1B5EF0(uint64_t a1)
{
  v136 = *MEMORY[0x1E69E9840];
  v121 = sub_1CF9E5D98();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v125 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v113 - v7;
  v132 = sub_1CF9E5A58();
  v126 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v117 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v113 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v113 - v12;
  v128 = sub_1CF9E6118();
  v131 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v118 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v113 - v16;
  v17 = sub_1CF9E5648();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v22 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v23 = v22;
  sub_1CEFF8A84(inited);
  v25 = v24;
  swift_setDeallocating();
  sub_1CF1B802C(inited + 32, type metadata accessor for URLResourceKey);
  sub_1CF9E58A8();
  if (v1)
  {
    v25, v26, v27, v28, v29, v30, v31, v32;
    v122 = 0;
    v34 = fpfs_current_or_default_log();
    v35 = v130;
    sub_1CF9E6128();
    v36 = v126;
    v37 = *(v126 + 16);
    v123 = a1;
    v37(v13, a1, v132);
    v38 = v1;
    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E72A8();

    v41 = os_log_type_enabled(v39, v40);
    v124 = v1;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v135 = v115;
      *v42 = 136315394;
      v43 = sub_1CF9E5928();
      v44 = [v43 fp_shortDescription];

      v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v47 = v46;

      v116 = *(v36 + 8);
      v116(v13, v132);
      v48 = sub_1CEFD0DF0(v45, v47, &v135);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v42 + 4) = v48;
      *(v42 + 12) = 2112;
      swift_getErrorValue();
      v56 = Error.prettyDescription.getter(v133, v134);
      *(v42 + 14) = v56;
      v57 = v114;
      *v114 = v56;
      _os_log_impl(&dword_1CEFC7000, v39, v40, "Can't unlink %s: %@", v42, 0x16u);
      sub_1CEFCCC44(v57, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v57, -1, -1);
      v58 = v115;
      __swift_destroy_boxed_opaque_existential_1(v115);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v42, -1, -1);

      v59 = v130;
      v60 = *(v131 + 8);
    }

    else
    {

      v116 = *(v36 + 8);
      v116(v13, v132);
      v60 = *(v131 + 8);
      v59 = v35;
    }

    v61 = v128;
    v60(v59, v128);
    v62 = v36;
    v63 = v125;
    v64 = [objc_opt_self() fp_secureTempDirectory];
    v65 = v129;
    v66 = v127;
    if (v64)
    {
      v67 = v64;
      sub_1CF9E59D8();

      v68 = 0;
    }

    else
    {
      v68 = 1;
    }

    v69 = v132;
    (*(v62 + 56))(v63, v68, 1, v132);
    sub_1CF007D78(v63, v66);
    if ((*(v62 + 48))(v66, 1, v69) == 1)
    {
      sub_1CEFCCC44(v66, &unk_1EC4BE310, qword_1CF9FCBE0);
      v70 = fpfs_current_or_default_log();
      v71 = v118;
      sub_1CF9E6128();
      v72 = sub_1CF9E6108();
      v73 = sub_1CF9E72A8();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1CEFC7000, v72, v73, "Couldn't get tmp URL for fallback for forceRecursiveRemove", v74, 2u);
        MEMORY[0x1D386CDC0](v74, -1, -1);
      }

      else
      {
      }

      v60(v71, v61);
    }

    else
    {
      v75 = v62;
      v76 = v119;
      sub_1CF9E5D88();
      sub_1CF9E5D18();
      v78 = v77;
      (*(v120 + 8))(v76, v121);
      v79 = v117;
      sub_1CF9E5968();
      v78, v80, v81, v82, v83, v84, v85, v86;
      v87 = v66;
      v88 = v132;
      v89 = v116;
      v116(v87, v132);
      (*(v75 + 32))(v65, v79, v88);
      v90 = [objc_opt_self() defaultManager];
      sub_1CF9E5A18();
      v92 = v91;
      v93 = sub_1CF9E6888();
      v92, v94, v95, v96, v97, v98, v99, v100;
      sub_1CF9E5A18();
      v102 = v101;
      v103 = sub_1CF9E6888();
      v102, v104, v105, v106, v107, v108, v109, v110;
      v135 = 0;
      LODWORD(v102) = [v90 moveItemAtPath:v93 toPath:v103 error:&v135];

      if (v102)
      {
        v111 = v135;
        v89(v65, v132);
      }

      else
      {
        v112 = v135;
        sub_1CF9E57F8();

        swift_willThrow();
        v89(v65, v132);
      }
    }
  }

  else
  {
    v25, v26, v27, v28, v29, v30, v31, v32;
    MEMORY[0x1EEE9AC00](v33);
    *(&v113 - 2) = a1;
    *(&v113 - 1) = v20;
    sub_1CEFE1894(sub_1CF1B808C);
    (*(v18 + 8))(v20, v17);
  }
}

void sub_1CF1B68F0()
{
  v1 = v0;
  v221 = sub_1CF9E5D98();
  v242 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v220 = &v202 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v224 = &v202 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE008, &unk_1CFA04210);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v202 - v6;
  v223 = type metadata accessor for VFSDetachedRootBookmark(0);
  v239 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v214 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1CF9E53C8();
  v226 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v210 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v231 = *(v10 - 8);
  v232 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v212 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v234 = &v202 - v13;
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v219 = &v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v206 = &v202 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v205 = &v202 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v213 = &v202 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v241 = &v202 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v230 = &v202 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v237 = &v202 - v28;
  *&v30 = MEMORY[0x1EEE9AC00](v29).n128_u64[0];
  v32 = &v202 - v31;
  v33 = v1;
  v34 = [v1 rootURLs];
  v35 = sub_1CF9E6D48();

  if (*v35->tree)
  {
    v222 = v7;
    v43 = *(v15 + 16);
    v44 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v238 = v32;
    v235 = v43;
    v236 = v15 + 16;
    v43(v32, v35 + v44, v14);
    v35, v45, v46, v47, v48, v49, v50, v51;
    v52 = [v33 rootURLs];
    v53 = v14;
    v54 = sub_1CF9E6D48();

    v63 = *v54->tree;
    v64 = v15;
    if (v63 >= 2)
    {
      v203 = v54;
      v229 = v54 + v44;
      v243 = (v15 + 8);
      ++v231;
      v217 = (v239 + 56);
      v218 = (v15 + 56);
      v216 = (v242 + 8);
      v65 = *MEMORY[0x1E696AA08];
      v208 = (v226 + 8);
      v209 = v65;
      v66 = 1;
      *&v62 = 136315394;
      v215 = v62;
      *(&v67 + 1) = 2;
      v207 = xmmword_1CF9FA450;
      *&v67 = 136315650;
      v204 = v67;
      v68 = v53;
      v69 = v237;
      v70 = v238;
      v71 = v241;
      v72 = v230;
      v227 = v63;
      v228 = v64;
      v233 = v68;
      while (v66 < v63)
      {
        v84 = *(v64 + 72);
        v239 = v66;
        v85 = v235;
        v235(v69, &v229[v84 * v66], v68);
        v86 = fpfs_current_or_default_log();
        v87 = v234;
        sub_1CF9E6128();
        v85(v72, v69, v68);
        v85(v71, v70, v68);
        v88 = v72;
        v89 = sub_1CF9E6108();
        v90 = v87;
        v91 = sub_1CF9E7288();
        if (os_log_type_enabled(v89, v91))
        {
          v92 = swift_slowAlloc();
          v226 = swift_slowAlloc();
          *v248 = v226;
          *v92 = v215;
          v225 = v91;
          v93 = sub_1CF9E5928();
          v94 = [v93 fp_shortDescription];

          v95 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v97 = v96;

          v98 = *v243;
          v99 = v88;
          v100 = v233;
          (*v243)(v99, v233);
          v101 = sub_1CEFD0DF0(v95, v97, v248);
          v97, v102, v103, v104, v105, v106, v107, v108;
          *(v92 + 4) = v101;
          *(v92 + 12) = 2080;
          v109 = sub_1CF9E5928();
          v110 = [v109 fp_shortDescription];

          v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v113 = v112;

          v242 = v98;
          (v98)(v241, v100);
          v114 = sub_1CEFD0DF0(v111, v113, v248);
          v115 = v113;
          v70 = v238;
          v115, v116, v117, v118, v119, v120, v121, v122;
          *(v92 + 14) = v114;
          _os_log_impl(&dword_1CEFC7000, v89, v225, "relocating %s into %s", v92, 0x16u);
          v123 = v226;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v123, -1, -1);
          v124 = v92;
          v71 = v241;
          MEMORY[0x1D386CDC0](v124, -1, -1);

          v125 = *v231;
          (*v231)(v234, v232);
          v68 = v233;
        }

        else
        {

          v126 = *v243;
          v127 = v233;
          (*v243)(v71, v233);
          v242 = v126;
          (v126)(v88, v127);
          v125 = *v231;
          (*v231)(v90, v232);
          v68 = v127;
        }

        sub_1CF9E5A18();
        v129 = v128;
        sub_1CF9E6978();
        v129, v130, v131, v132, v133, v134, v135, v136;
        v137 = openat_s();

        if (v137 < 0)
        {
          v142 = MEMORY[0x1D38683F0](v138);
          memset(v248, 0, 40);
          v248[40] = 19;
          if (!v142 || (v143 = sub_1CF9E6138(), (v143 & 0x100000000) != 0))
          {
            sub_1CEFDB034();
            v149 = swift_allocError();
            v151 = *&v248[25];
            v152 = *&v248[16];
            *v153 = *v248;
            v153[1] = v152;
            *(v153 + 25) = v151;
          }

          else
          {
            LODWORD(v246) = v143;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
            inited = swift_initStackObject();
            *(inited + 16) = v207;
            *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            *(inited + 40) = v145;
            *(inited + 72) = &type metadata for VFSFileError;
            v146 = swift_allocObject();
            *(inited + 48) = v146;
            sub_1CF19A730(v248, v146 + 16);
            sub_1CF4E04E8(inited);
            swift_setDeallocating();
            sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
            sub_1CF00BB30(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
            v148 = v210;
            v147 = v211;
            sub_1CF9E57D8();
            v149 = sub_1CF9E53A8();
            v150 = v148;
            v71 = v241;
            (*v208)(v150, v147);
            sub_1CF1969CC(v248);
          }

          v64 = v228;
          swift_willThrow();

          v240 = 0;
          v69 = v237;
          v72 = v230;
          v75 = v239;
        }

        else
        {
          v139 = v224;
          v235(v224, v70, v68);
          (*v218)(v139, 0, 1, v68);
          v140 = v222;
          v141 = v240;
          sub_1CF36C8E0(v137, v139, v222);
          if (v141)
          {

            (*v217)(v140, 1, 1, v223);
            sub_1CEFCCC44(v140, &qword_1EC4BE008, &unk_1CFA04210);
            v64 = v228;
            v169 = v220;
            sub_1CF9E5D88();
            sub_1CF9E5D18();
            v171 = v170;
            (*v216)(v169, v221);
            v172 = v219;
            sub_1CF9E5968();
            v171, v173, v174, v175, v176, v177, v178, v179;
            MEMORY[0x1EEE9AC00](v180);
            v69 = v237;
            sub_1CEFE1894(sub_1CF1B7D84);
            v240 = 0;
            (v242)(v172, v68);
          }

          else
          {
            v226 = v125;
            v154 = v223;
            (*v217)(v140, 0, 1, v223);
            v155 = v214;
            sub_1CF1B7EB0(v140, v214, type metadata accessor for VFSDetachedRootBookmark);
            v156 = (v155 + *(v154 + 20));
            v158 = *v156;
            v157 = v156[1];
            *v248 = v158;
            *&v248[8] = v157;
            v246 = 47;
            v247 = 0xE100000000000000;
            v244 = 58;
            v245 = 0xE100000000000000;
            sub_1CEFE4E68();
            sub_1CF9E7668();
            v160 = v159;
            v161 = v213;
            sub_1CF9E5958();
            v160, v162, v163, v164, v165, v166, v167, v168;
            v69 = v237;
            sub_1CF7A41CC();
            v240 = 0;
            (v242)(v161, v68);
            sub_1CF1B802C(v155, type metadata accessor for VFSDetachedRootBookmark);
            v64 = v228;
          }

          v71 = v241;
          v181 = fpfs_clear_acl();
          v70 = v238;
          v75 = v239;
          if (v181 < 0)
          {
            v182 = MEMORY[0x1D38683F0]();
            *v248 = 8;
            memset(&v248[8], 0, 32);
            v248[40] = 19;
            if (!v182 || (v183 = sub_1CF9E6138(), (v183 & 0x100000000) != 0))
            {
              sub_1CEFDB034();
              v189 = swift_allocError();
              sub_1CF19A730(v248, v192);
            }

            else
            {
              LODWORD(v246) = v183;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
              v184 = swift_initStackObject();
              *(v184 + 16) = v207;
              *(v184 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              *(v184 + 40) = v185;
              *(v184 + 72) = &type metadata for VFSFileError;
              v186 = swift_allocObject();
              *(v184 + 48) = v186;
              sub_1CF19A730(v248, v186 + 16);
              sub_1CF4E04E8(v184);
              swift_setDeallocating();
              sub_1CEFCCC44(v184 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
              sub_1CF00BB30(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
              v188 = v210;
              v187 = v211;
              v71 = v241;
              sub_1CF9E57D8();
              v189 = sub_1CF9E53A8();
              v190 = v188;
              v191 = v187;
              v69 = v237;
              v70 = v238;
              (*v208)(v190, v191);
            }

            sub_1CF1969CC(v248);
            swift_willThrow();

            v240 = 0;
            v75 = v239;
          }

          if ((fpfs_fset_syncroot() & 0x80000000) != 0)
          {
            v193 = MEMORY[0x1D38683F0]();
            *v248 = 0;
            v248[40] = 6;
            if (!v193 || (v194 = sub_1CF9E6138(), (v194 & 0x100000000) != 0))
            {
              sub_1CEFDB034();
              v73 = swift_allocError();
              sub_1CF19A730(v248, v74);
            }

            else
            {
              LODWORD(v246) = v194;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
              v195 = swift_initStackObject();
              *(v195 + 16) = v207;
              *(v195 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              *(v195 + 40) = v196;
              *(v195 + 72) = &type metadata for VFSFileError;
              v197 = swift_allocObject();
              *(v195 + 48) = v197;
              sub_1CF19A730(v248, v197 + 16);
              sub_1CF4E04E8(v195);
              swift_setDeallocating();
              sub_1CEFCCC44(v195 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
              sub_1CF00BB30(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
              v199 = v210;
              v198 = v211;
              v71 = v241;
              sub_1CF9E57D8();
              v73 = sub_1CF9E53A8();
              v200 = v199;
              v201 = v198;
              v69 = v237;
              v70 = v238;
              (*v208)(v200, v201);
            }

            sub_1CF1969CC(v248);
            swift_willThrow();

            v240 = 0;
            v75 = v239;
          }

          close(v137);
          v72 = v230;
        }

        v66 = v75 + 1;
        v76 = v242;
        (v242)(v69, v68);
        v63 = v227;
        if (v227 == v66)
        {
          v203, v77, v78, v79, v80, v81, v82, v83;
          v76(v70, v68);
          return;
        }
      }

      __break(1u);
    }

    else
    {
      v54, v55, v56, v57, v58, v59, v60, v61;
      (*(v15 + 8))(v238, v53);
    }
  }

  else
  {
    v35, v36, v37, v38, v39, v40, v41, v42;
  }
}

void sub_1CF1B7DA0(void *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF1B547C(a1, v1 + v4, v6, v7);
}

unint64_t sub_1CF1B7E64()
{
  result = qword_1EDEA3440;
  if (!qword_1EDEA3440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEA3440);
  }

  return result;
}

uint64_t sub_1CF1B7EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF1B7F18@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1CEFE1894(sub_1CF1B7F7C);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1CF1B7F7C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1CEFE528C(v8);
  v6[12] = v8[12];
  v6[13] = v8[13];
  v6[14] = v8[14];
  v7 = v9;
  v6[8] = v8[8];
  v6[9] = v8[9];
  v6[10] = v8[10];
  v6[11] = v8[11];
  v6[4] = v8[4];
  v6[5] = v8[5];
  v6[6] = v8[6];
  v6[7] = v8[7];
  v6[0] = v8[0];
  v6[1] = v8[1];
  v6[2] = v8[2];
  v6[3] = v8[3];
  result = sub_1CF1AB7D4(v6, v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1B802C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF1B80A8()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1CF7433B8(v2, v3);
}

unint64_t sub_1CF1B8150()
{
  result = qword_1EC4BEC30;
  if (!qword_1EC4BEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEC30);
  }

  return result;
}

uint64_t sub_1CF1B81A4(uint64_t a1)
{
  v2 = sub_1CF1B8528();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF1B81E0(uint64_t a1)
{
  v2 = sub_1CF1B8528();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1CF1B821C(unint64_t a1)
{
  if ((a1 >> 60) - 8 > 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 40) = v13;
    sub_1CF1B857C(a1);
    v14 = sub_1CF9E6948();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v14;
    *(inited + 56) = v15;
    v11 = sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CF1B8600(inited + 32);
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    sub_1CF1B8150();
    v3 = swift_allocError();
    *v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1CF9FA440;
    *(v5 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v5 + 40) = v6;
    sub_1CF1B857C(v2);
    sub_1CF1B857C(a1);
    v7 = sub_1CF9E6948();
    *(v5 + 72) = MEMORY[0x1E69E6158];
    *(v5 + 48) = v7;
    *(v5 + 56) = v8;
    *(v5 + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v5 + 88) = v9;
    swift_getErrorValue();
    *(v5 + 120) = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 96));
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_0);
    v11 = sub_1CF4E04E8(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_arrayDestroy();
  }

  return v11;
}

uint64_t sub_1CF1B846C()
{
  v1 = *v0 >> 60;
  if (v1 > 5)
  {
    if (v1 > 8)
    {
      if (v1 == 9)
      {
        return -2;
      }

      else if (v1 == 10)
      {
        return -3;
      }

      else
      {
        return *(&unk_1CF9FBFD8 + ((*v0 + 0x5000000000000000) & 0xFFFFFFFFFFFFFFF8));
      }
    }

    else
    {
      v6 = 13;
      if (v1 != 7)
      {
        v6 = -1;
      }

      if (v1 == 6)
      {
        return 11;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v2 = 5;
    v3 = 6;
    if (v1 != 4)
    {
      v3 = 7;
    }

    if (v1 != 3)
    {
      v2 = v3;
    }

    v4 = 1;
    if (v1 != 1)
    {
      v4 = 2;
    }

    if (!v1)
    {
      v4 = *v0 >> 60;
    }

    if (v1 <= 2)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1CF1B8528()
{
  result = qword_1EC4BE020[0];
  if (!qword_1EC4BE020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4BE020);
  }

  return result;
}

unint64_t sub_1CF1B857C(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 4)
  {
    if (v1 <= 1)
    {
      if (v1 > 1)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3 || v1 == 4)
    {
    }
  }

  else
  {
    if (v1 <= 7)
    {
      if (v1 != 5 && v1 != 6 && v1 != 7)
      {
        return result;
      }
    }

    if (v1 == 8 || v1 == 9 || v1 == 10)
    {
    }
  }

  return result;
}

uint64_t sub_1CF1B8600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon11VFSFileTreeC18ItemNotFoundReasonO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 0xA)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 11;
  }
}

uint64_t sub_1CF1B8684(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x75 && *(a1 + 8))
  {
    return (*a1 + 117);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x74)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1CF1B86D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x74)
  {
    *result = a2 - 117;
    if (a3 >= 0x75)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x75)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1CF1B8734(void *result, uint64_t a2)
{
  if (a2 < 0xB)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 11)) | 0xB000000000000000;
  }

  return result;
}

uint64_t sub_1CF1B8798(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CF9E65D8();
  sub_1CF9E65E8();
  return v2;
}

uint64_t sub_1CF1B87DC(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E6728();
  v9 = v23;
  if (v23)
  {
    v10 = *(v6 + 16);
    v10(v8, a2, v5);
    v22 = sub_1CF9E6DF8();
    v23 = 0;
    sub_1CF9E6708();
    sub_1CF9E6738();
    sub_1CF656CD8(v5, v5);
    swift_allocObject();
    v11 = sub_1CF9E6D68();
    v10(v12, a2, v5);
    v13 = sub_1CF045898(v11, v5);
    sub_1CF9E6DD8();
    v13, v14, v15, v16, v17, v18, v19, v20;
    v10(a1, a2, v5);
  }

  else
  {
    sub_1CF9E6EA8();
  }

  return v9;
}

uint64_t sub_1CF1B89D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OrderedSet(0, v8, v9, v9);
  sub_1CF1B87DC(v7, a1, v10);
  return (*(v5 + 8))(v7, a3);
}

uint64_t sub_1CF1B8AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  sub_1CF9E6728();
  if (v32)
  {
    return (*(v6 + 56))(a3, 1, 1, v5);
  }

  v24 = v8;
  v26 = v14;
  v27 = a3;
  v16 = v31;
  sub_1CF9E6EA8();
  sub_1CF9E6E58();
  sub_1CF9E6E28();
  v17 = *(v6 + 8);
  v30 = v6 + 8;
  v17(v11, v5);
  sub_1CF9E6708();
  v25 = v3;
  sub_1CF9E6658();
  result = sub_1CF9E6DF8();
  if (result < v16)
  {
    __break(1u);
  }

  else
  {
    v28 = v6;
    if (v16 == result)
    {
LABEL_8:
      v21 = v27;
      v22 = v28;
      (*(v28 + 32))(v27, v26, v5);
      return (*(v22 + 56))(v21, 0, 1, v5);
    }

    if (v16 < result)
    {
      v18 = (v28 + 16);
      v19 = v24;
      v29 = v17;
      do
      {
        v20 = result;
        sub_1CF9E6EA8();
        (*v18)(v19, v11, v5);
        v31 = v16;
        v32 = 0;
        sub_1CF9E6738();
        v29(v11, v5);
        result = v20;
        ++v16;
      }

      while (v20 != v16);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1B8DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E81D8();
  sub_1CF9E6E68();
  return sub_1CF9E8228();
}

void *sub_1CF1B8E24@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_1CF1B8E3C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_1CF1B8E78(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  sub_1CF1B8770(v6, v4, *(v2 + 8), *(a2 + 16), *(a2 + 24));
  return sub_1CF9E8228();
}

void sub_1CF1B8EC0(_TtC18FileProviderDaemon8FSTester *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_1CF1B9600(a1, *(a2 + 16), *(a2 + 24));
  v7 = v6;
  a1, v6, v8, v9, v10, v11, v12, v13;
  *a3 = v5;
  a3[1] = v7;
}

uint64_t sub_1CF1B8F0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF1B8DAC(a1, *(v2 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t (*sub_1CF1B8F3C(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_1CF1B9010(v7, *a2, *v3, v3[1], *(a3 + 16));
  return sub_1CF1B8FC8;
}

void sub_1CF1B8FC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_1CF1B9010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v6 = *(a5 - 8);
  *a1 = a5;
  a1[1] = v6;
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  sub_1CF9E6EA8();
  return sub_1CF1B90E4;
}

void sub_1CF1B90E4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1CF1B9140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1CF9E67A8();
}

uint64_t sub_1CF1B91BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_1CF9E6798();
}

uint64_t sub_1CF1B9240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1CF9E67B8();
}

void *sub_1CF1B9330@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1CF1B9348(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_1CF1B9378@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1CF1B9388(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1CF1B93E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1CF1B95FC(v1, a1, WitnessTable);
  *v1, v5, v6, v7, v8, v9, v10, v11;
  v1[1], v12, v13, v14, v15, v16, v17, v18;
  return v4;
}

uint64_t sub_1CF1B944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1CF9E67F8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF1B9530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1CF9E67F8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1CF9E71A8();
  result = sub_1CF9E67F8();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF1B9600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CF9E65D8();
  sub_1CF9E65E8();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E6BE8();
  return v4;
}

uint64_t sub_1CF1B96FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1CF1B98B0(uint64_t a1)
{
  v2 = sub_1CF9E53C8();
  v108 = *(v2 - 8);
  v109 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1CF9E5A58();
  v111 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6118();
  v112 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v107 - v10;
  v110 = a1;
  sub_1CF9E5A18();
  v13 = v12;
  v124 = 0;
  v125 = 256;
  v123 = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = &v124;
  *(v14 + 24) = sub_1CF1BA18C;
  *(v14 + 32) = 0;
  *(v14 + 40) = &v123;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF1C09E8;
  *(v15 + 24) = v14;
  v121 = sub_1CF005DC8;
  v122 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v118 = 1107296256;
  v119 = sub_1CF005DF8;
  v120 = &block_descriptor_21;
  v16 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v17 = fpfs_openat();

  _Block_release(v16);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = v123;
  if (v123)
  {
LABEL_3:
    swift_willThrow();
    v13, v27, v28, v29, v30, v31, v32, v33;
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v35 = v111;
    v36 = v113;
    (*(v111 + 16))(v6, v110, v113);
    v37 = v26;
    v38 = sub_1CF9E6108();
    v39 = sub_1CF9E72A8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock = v41;
      *v40 = 136315394;
      v42 = sub_1CF9E5928();
      v43 = [v42 fp_shortDescription];
      v110 = v7;
      v44 = v43;

      v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v109 = v11;
      v47 = v46;

      (*(v35 + 8))(v6, v113);
      v48 = sub_1CEFD0DF0(v45, v47, &aBlock);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v40 + 4) = v48;
      *(v40 + 12) = 2112;
      swift_getErrorValue();
      v56 = Error.prettyDescription.getter(v115, v116);
      *(v40 + 14) = v56;
      v57 = v108;
      *v108 = v56;
      _os_log_impl(&dword_1CEFC7000, v38, v39, "Failed to open %s: %@", v40, 0x16u);
      sub_1CF19CAB0(v57);
      MEMORY[0x1D386CDC0](v57, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1D386CDC0](v41, -1, -1);
      MEMORY[0x1D386CDC0](v40, -1, -1);

      (*(v112 + 8))(v109, v110);
    }

    else
    {

      (*(v35 + 8))(v6, v36);
      (*(v112 + 8))(v11, v7);
    }

    v58 = 0;
    v59 = 1;
    goto LABEL_10;
  }

  if ((v17 & 0x80000000) == 0)
  {
    if ((v125 & 0x100) == 0)
    {
      v58 = v124;
      v60 = v125;
      v13, v19, v20, v21, v22, v23, v24, v25;
      v59 = v60 & 1;
LABEL_10:
      LOBYTE(aBlock) = v59;
      return v58 | (v59 << 32);
    }

    goto LABEL_19;
  }

  if (MEMORY[0x1D38683F0](v18))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      v26 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v62 = sub_1CF9E6138();
      if ((v62 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v62;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF1C0A8C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v63 = v109;
      sub_1CF9E57D8();
      v26 = sub_1CF9E53A8();
      (*(v108 + 8))(v4, v63);
    }

    goto LABEL_3;
  }

LABEL_20:
  v64 = v7;
  aBlock = 0;
  v118 = 0xE000000000000000;
  sub_1CF9E7948();
  v118, v65, v66, v67, v68, v69, v70, v71;
  aBlock = 0xD00000000000001ALL;
  v118 = 0x80000001CFA2DF30;
  v114 = v17;
  v72 = sub_1CF9E7F98();
  v74 = v73;
  MEMORY[0x1D3868CC0](v72);
  v74, v75, v76, v77, v78, v79, v80, v81;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v82 = aBlock;
  v83 = v118;
  v84 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v85 = sub_1CF9E6108();
  v86 = sub_1CF9E72B8();
  v83, v87, v88, v89, v90, v91, v92, v93;
  if (os_log_type_enabled(v85, v86))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    aBlock = v95;
    *v94 = 136315650;
    v96 = sub_1CF9E7988();
    v98 = v97;
    v99 = sub_1CEFD0DF0(v96, v97, &aBlock);
    v98, v100, v101, v102, v103, v104, v105, v106;
    *(v94 + 4) = v99;
    *(v94 + 12) = 2048;
    *(v94 + 14) = 315;
    *(v94 + 22) = 2080;
    *(v94 + 24) = sub_1CEFD0DF0(v82, v83, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v85, v86, "[ASSERT] ‼️  %s:%lu: %s", v94, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v95, -1, -1);
    MEMORY[0x1D386CDC0](v94, -1, -1);
  }

  (*(v112 + 8))(v107, v64);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF1BA18C@<X0>(uint64_t a2@<X8>)
{
  result = fpfs_track_document();
  *a2 = 0;
  *(a2 + 4) = 0;
  return result;
}

_BYTE *sub_1CF1BA200(_BYTE *a1)
{
  v2 = v1;
  v208 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5A58();
  v198 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v187 = &v183[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v189 = &v183[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v193 = &v183[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v190 = &v183[-v11];
  v196 = sub_1CF9E6118();
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v188 = &v183[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v191 = &v183[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v194 = &v183[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v192 = &v183[-v18];
  v1[2] = 1;
  v1[3] = [objc_allocWithZone(MEMORY[0x1E69E5930]) init];
  v1[4] = 0x6D5F70756B636162;
  v1[5] = 0xEF74736566696E61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC330;
  v20 = *MEMORY[0x1E695DA88];
  *(inited + 32) = *MEMORY[0x1E695DA88];
  v21 = *MEMORY[0x1E695E2F0];
  if (!*MEMORY[0x1E695E2F0])
  {
    goto LABEL_35;
  }

  v22 = OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_resourceValuesToFetch;
  v23 = *MEMORY[0x1E695DAB8];
  *(inited + 40) = v21;
  *(inited + 48) = v23;
  v24 = inited;
  v25 = v20;
  v26 = v21;
  v27 = v23;
  *(v24 + 56) = sub_1CF9E6888();
  v28 = sub_1CF8E4440(v24);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  *(v1 + v22) = v28;
  v29 = *(v198 + 16);
  v29(v1 + OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_url, a1, v4);
  v30 = v1[3];
  v31 = sub_1CF9E5928();
  aBlock[0] = 0;
  LODWORD(v30) = [v30 openAtURL:v31 withFlags:3145734 error:aBlock];

  v32 = a1;
  v33 = v4;
  if (!v30)
  {
    v43 = v29;
    v44 = aBlock[0];
    v45 = sub_1CF9E57F8();

    swift_willThrow();
    v46 = fpfs_current_or_default_log();
    v47 = v194;
    sub_1CF9E6128();
    v48 = v193;
    v43(v193, v32, v33);
    v49 = v47;
    v50 = v45;
    v51 = sub_1CF9E6108();
    v52 = v33;
    v53 = sub_1CF9E72A8();

    if (os_log_type_enabled(v51, v53))
    {
      v54 = swift_slowAlloc();
      v188 = v2;
      v55 = v54;
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      aBlock[0] = v192;
      *v55 = 136315394;
      LODWORD(v190) = v53;
      v33 = v52;
      v56 = sub_1CF9E5928();
      v57 = [v56 fp_shortDescription];
      v197 = v45;
      v58 = v32;
      v59 = v57;

      v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v62 = v61;

      v63 = v48;
      v64 = *(v198 + 8);
      (v64)(v63, v33);
      v65 = sub_1CEFD0DF0(v60, v62, aBlock);
      v62, v66, v67, v68, v69, v70, v71, v72;
      *(v55 + 4) = v65;
      v32 = v58;
      *(v55 + 12) = 2112;
      swift_getErrorValue();
      v73 = Error.prettyDescription.getter(v205, v206);
      *(v55 + 14) = v73;
      v74 = v191;
      *v191 = v73;
      _os_log_impl(&dword_1CEFC7000, v51, v190, "Failed to open database %s: %@", v55, 0x16u);
      sub_1CF19CAB0(v74);
      MEMORY[0x1D386CDC0](v74, -1, -1);
      v75 = v192;
      __swift_destroy_boxed_opaque_existential_1(v192);
      MEMORY[0x1D386CDC0](v75, -1, -1);
      v76 = v55;
      v2 = v188;
      MEMORY[0x1D386CDC0](v76, -1, -1);

      (*(v195 + 8))(v194, v196);
      swift_willThrow();
    }

    else
    {

      v82 = v48;
      v64 = *(v198 + 8);
      (v64)(v82, v52);
      (*(v195 + 8))(v49, v196);
      swift_willThrow();
      v33 = v52;
    }

    goto LABEL_28;
  }

  v34 = *(v2 + 3);
  v35 = aBlock[0];
  v36 = [v34 setupPragmas];
  v37 = *(v2 + 3);
  if (v36)
  {
    v38 = v29;
    v39 = [v37 userVersion];
    v40 = [v39 integerValue];

    if (v40 > 0)
    {
      v41 = 0;
      v42 = 0;
LABEL_14:
      [*(v2 + 3) useBatchingWithDelay:1000 changeCount:0.5];
      (*(v198 + 8))(v32, v33);
      sub_1CEFF7124(v41, v42);
      return v2;
    }

    v192 = v33;
    v83 = *(v2 + 3);
    v84 = swift_allocObject();
    v84[2] = sub_1CF1C0B20;
    v84[3] = v2;
    aBlock[4] = sub_1CEFE7610;
    aBlock[5] = v84;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFE7548;
    aBlock[3] = &block_descriptor_112;
    v85 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v86 = [v83 executeSwift:v85 error:aBlock];
    _Block_release(v85);
    v87 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (v86)
      {
        [*(v2 + 3) setUserVersion_];
        v41 = sub_1CF1C0B20;
        v42 = v2;
        v33 = v192;
        goto LABEL_14;
      }

      v156 = sub_1CF9E57F8();

      swift_willThrow();
      v157 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v158 = v187;
      v38(v187, v32, v192);
      v159 = v156;
      v160 = sub_1CF9E6108();
      v161 = sub_1CF9E72A8();
      v197 = v156;

      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        aBlock[0] = v193;
        *v162 = 136315394;
        v163 = sub_1CF9E5928();
        v194 = v32;
        v164 = v163;
        v165 = [v163 fp_shortDescription];

        v166 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v168 = v167;

        v190 = *(v198 + 8);
        v169 = v158;
        v170 = v192;
        (v190)(v169, v192);
        v171 = sub_1CEFD0DF0(v166, v168, aBlock);
        v168, v172, v173, v174, v175, v176, v177, v178;
        *(v162 + 4) = v171;
        v32 = v194;
        *(v162 + 12) = 2112;
        swift_getErrorValue();
        v179 = Error.prettyDescription.getter(v199, v200);
        *(v162 + 14) = v179;
        v180 = v191;
        *v191 = v179;
        _os_log_impl(&dword_1CEFC7000, v160, v161, "Failed to create table %s: %@", v162, 0x16u);
        sub_1CF19CAB0(v180);
        MEMORY[0x1D386CDC0](v180, -1, -1);
        v181 = v193;
        __swift_destroy_boxed_opaque_existential_1(v193);
        MEMORY[0x1D386CDC0](v181, -1, -1);
        MEMORY[0x1D386CDC0](v162, -1, -1);

        (*(v195 + 8))(v188, v196);
        swift_willThrow();
        v154 = sub_1CF1C0B20;
        v155 = v2;
        v33 = v170;
        v64 = v190;
      }

      else
      {

        v182 = *(v198 + 8);
        v33 = v192;
        (v182)(v158, v192);
        (*(v195 + 8))(v188, v196);
        swift_willThrow();
        v154 = sub_1CF1C0B20;
        v155 = v2;
        v64 = v182;
      }

LABEL_29:

      (v64)(v32, v33);
      sub_1CEFF7124(v154, v155);
      return v2;
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  v188 = v2;
  v77 = [v37 lastError];
  if (v77)
  {
    swift_getErrorValue();
    v78 = v201;
    v79 = v202;
    v80 = v77;
    v81 = Error.prettyDescription.getter(v78, v79);
  }

  else
  {
    sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
    v81 = sub_1CF9E7598();
  }

  v89 = fpfs_current_or_default_log();
  v90 = v192;
  sub_1CF9E6128();
  v91 = v190;
  v194 = v32;
  v29(v190, v32, v33);
  v92 = v81;
  v93 = sub_1CF9E6108();
  v94 = sub_1CF9E72A8();

  v95 = os_log_type_enabled(v93, v94);
  v197 = v77;
  v186 = v29;
  v193 = v92;
  if (v95)
  {
    v96 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    aBlock[0] = v187;
    *v96 = 136315394;
    v184 = v94;
    v97 = sub_1CF9E5928();
    v98 = v91;
    v99 = [v97 fp_shortDescription];

    v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v102 = v101;

    v64 = *(v198 + 8);
    (v64)(v98, v33);
    v103 = sub_1CEFD0DF0(v100, v102, aBlock);
    v102, v104, v105, v106, v107, v108, v109, v110;
    *(v96 + 4) = v103;
    *(v96 + 12) = 2112;
    *(v96 + 14) = v92;
    v111 = v185;
    *v185 = v92;
    v112 = v92;
    _os_log_impl(&dword_1CEFC7000, v93, v184, "Failed to set up pragmas %s: %@", v96, 0x16u);
    sub_1CF19CAB0(v111);
    MEMORY[0x1D386CDC0](v111, -1, -1);
    v113 = v187;
    __swift_destroy_boxed_opaque_existential_1(v187);
    MEMORY[0x1D386CDC0](v113, -1, -1);
    v114 = v96;
    v77 = v197;
    MEMORY[0x1D386CDC0](v114, -1, -1);

    v115 = *(v195 + 8);
    (v115)(v192, v196);
  }

  else
  {

    v116 = v91;
    v64 = *(v198 + 8);
    (v64)(v116, v33);
    v115 = *(v195 + 8);
    (v115)(v90, v196);
  }

  v2 = v188;
  v117 = *(v188 + 3);
  aBlock[0] = 0;
  v118 = [v117 close_];
  v119 = v191;
  if (v118)
  {
    v120 = aBlock[0];
    v32 = v194;
  }

  else
  {
    v187 = v115;
    v190 = v64;
    v121 = aBlock[0];
    v122 = sub_1CF9E57F8();

    swift_willThrow();
    v123 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v124 = v189;
    v32 = v194;
    (v186)(v189, v194, v33);
    v125 = v122;
    v126 = v119;
    v127 = sub_1CF9E6108();
    v128 = sub_1CF9E72A8();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v192 = v33;
      v130 = v129;
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      aBlock[0] = v186;
      *v130 = 136315394;
      v131 = sub_1CF9E5928();
      v132 = [v131 fp_shortDescription];

      v133 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v135 = v134;

      v136 = v124;
      v64 = v190;
      (v190)(v136, v192);
      v137 = sub_1CEFD0DF0(v133, v135, aBlock);
      v138 = v135;
      v2 = v188;
      v138, v139, v140, v141, v142, v143, v144, v145;
      *(v130 + 4) = v137;
      v32 = v194;
      *(v130 + 12) = 2112;
      swift_getErrorValue();
      v146 = Error.prettyDescription.getter(v203, v204);
      *(v130 + 14) = v146;
      v147 = v185;
      *v185 = v146;
      _os_log_impl(&dword_1CEFC7000, v127, v128, "Failed to close database %s: %@", v130, 0x16u);
      sub_1CF19CAB0(v147);
      MEMORY[0x1D386CDC0](v147, -1, -1);
      v148 = v186;
      __swift_destroy_boxed_opaque_existential_1(v186);
      MEMORY[0x1D386CDC0](v148, -1, -1);
      v149 = v130;
      v33 = v192;
      MEMORY[0x1D386CDC0](v149, -1, -1);

      v150 = v191;
    }

    else
    {

      v151 = v124;
      v64 = v190;
      (v190)(v151, v33);
      v150 = v126;
    }

    (v187)(v150, v196);
    v77 = v197;
  }

  v152 = v193;
  if (v77 || (result = FPNotPermittedWriteError()) != 0)
  {
    swift_willThrow();

LABEL_28:
    v154 = 0;
    v155 = 0;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1BB478(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x5420455441455243, 0xED000020454C4241);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD0000000000000A2, 0x80000001CFA2E450);
  return 0;
}

uint64_t sub_1CF1BB514()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = *(v2 + 16);
  v37 = OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_url;
  v9(&v36 - v7, v0 + OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_url, v1, v6);
  v10 = *(v0 + 24);
  v11 = [v10 serialQueue];
  if (!v11)
  {
    v18 = *(v2 + 8);
    v18(v8, v1);

    v21 = 0;
    v14 = 0;
    goto LABEL_5;
  }

  v12 = v11;
  (v9)(v4, v8, v1);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  (*(v2 + 32))(v14 + v13, v4, v1);
  v15 = swift_allocObject();
  v36 = sub_1CF1C0A1C;
  *(v15 + 16) = sub_1CF1C0A1C;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1CEFFD054;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_40_0;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  dispatch_sync(v12, v16);
  _Block_release(v16);

  v18 = *(v2 + 8);
  v18(v8, v1);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v21 = v36;
LABEL_5:

    *(v0 + 40), v22, v23, v24, v25, v26, v27, v28;
    v18((v0 + v37), v1);
    *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17SQLBackupManifest_resourceValuesToFetch), v29, v30, v31, v32, v33, v34, v35;
    sub_1CEFF7124(v21, v14);
    return v0;
  }

  __break(1u);
  return result;
}

id sub_1CF1BB840(void *a1, uint64_t a2)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48[0] = 0;
  v13 = [a1 close_];
  v14 = v48[0];
  if (v13)
  {

    return v14;
  }

  else
  {
    v45 = v48[0];
    v16 = v48[0];
    v17 = sub_1CF9E57F8();

    swift_willThrow();
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v5 + 16))(v7, a2, v4);
    v19 = v17;
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v45 = v9;
      v23 = v22;
      v42 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48[0] = v44;
      *v23 = 136315394;
      v41 = v21;
      v24 = sub_1CF9E5928();
      v25 = [v24 fp_shortDescription];

      v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v43 = v8;
      v28 = v27;

      (*(v5 + 8))(v7, v4);
      v29 = sub_1CEFD0DF0(v26, v28, v48);
      v28, v30, v31, v32, v33, v34, v35, v36;
      *(v23 + 4) = v29;
      *(v23 + 12) = 2112;
      swift_getErrorValue();
      v37 = Error.prettyDescription.getter(v46, v47);
      *(v23 + 14) = v37;
      v38 = v42;
      *v42 = v37;
      _os_log_impl(&dword_1CEFC7000, v20, v41, "Can't close database %s: %@", v23, 0x16u);
      sub_1CF19CAB0(v38);
      MEMORY[0x1D386CDC0](v38, -1, -1);
      v39 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1D386CDC0](v39, -1, -1);
      MEMORY[0x1D386CDC0](v23, -1, -1);

      return v45[1](v12, v43);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return v9[1](v12, v8);
    }
  }
}

uint64_t sub_1CF1BBC64()
{
  sub_1CF1BB514();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SQLBackupManifest(uint64_t a1)
{
  result = qword_1EC4BE0A8;
  if (!qword_1EC4BE0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF1BBD10(uint64_t a1)
{
  result = sub_1CF9E5A58();
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

uint64_t sub_1CF1BBDD4(uint64_t a1)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v1;
  v38 = a1;
  result = sub_1CF1E8034(1, sub_1CF1C09F4, v36);
  if (v2)
  {
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v10 = v2;
    v11 = sub_1CF9E6108();
    v12 = sub_1CF9E72A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v35 = v4;
      v14 = v13;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v41 = v34;
      *v14 = 136315394;
      v15 = sub_1CF9E5928();
      v16 = [v15 fp_shortDescription];

      v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = v5;
      v20 = v19;

      v21 = sub_1CEFD0DF0(v17, v20, &v41);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v14 + 4) = v21;
      *(v14 + 12) = 2112;
      swift_getErrorValue();
      v29 = Error.prettyDescription.getter(v39, v40);
      *(v14 + 14) = v29;
      v30 = v33;
      *v33 = v29;
      _os_log_impl(&dword_1CEFC7000, v11, v12, "Can't insert into the database %s: %@", v14, 0x16u);
      sub_1CF19CAB0(v30);
      MEMORY[0x1D386CDC0](v30, -1, -1);
      v31 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1D386CDC0](v31, -1, -1);
      MEMORY[0x1D386CDC0](v14, -1, -1);

      (*(v18 + 8))(v7, v35);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF1BC0B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v42 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E6118();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = *(a3 + 16);
  *(v10 + 24) = *a3;
  *(v10 + 40) = v11;
  *(v10 + 56) = *(a3 + 32);
  v12 = swift_allocObject();
  v12[2] = sub_1CF1C0A10;
  v12[3] = v10;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_31;
  v13 = _Block_copy(aBlock);

  sub_1CF1C098C(a3, v45);

  aBlock[0] = 0;
  v14 = [a1 executeSwift:v13 error:aBlock];
  _Block_release(v13);
  v15 = aBlock[0];
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  if (v14)
  {

    *v42 = 1;
  }

  else
  {
    v17 = sub_1CF9E57F8();

    swift_willThrow();
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v19 = v17;
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v22 = 136315394;
      v23 = sub_1CF9E5928();
      v24 = [v23 fp_shortDescription];

      v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v27 = v26;

      v28 = sub_1CEFD0DF0(v25, v27, aBlock);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v22 + 4) = v28;
      *(v22 + 12) = 2112;
      swift_getErrorValue();
      v36 = Error.prettyDescription.getter(v43, v44);
      *(v22 + 14) = v36;
      v37 = v39;
      *v39 = v36;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "Failed to insert into %s: %@", v22, 0x16u);
      sub_1CF19CAB0(v37);
      MEMORY[0x1D386CDC0](v37, -1, -1);
      v38 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1D386CDC0](v38, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    (*(v40 + 8))(v9, v41);
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF1BC4F8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD00000000000006DLL, 0x80000001CFA2E110);
  v6 = sub_1CF9E6888();
  v7 = [a1 bindStringParameter_];

  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEA00000000002020);
  v18 = [a1 bindLongParameter_];
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;

  MEMORY[0x1D3868CC0](v19, v21);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEA00000000002020);
  v29 = sub_1CF1DF1A8(*(a3 + 24), *(a3 + 32));
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEA00000000002020);
  v39 = [a1 bindUnsignedIntegerParameter_];
  v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v42 = v41;

  MEMORY[0x1D3868CC0](v40, v42);
  v42, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA2E180);
  return 0;
}

NSObject *sub_1CF1BC728()
{
  result = [*(v0 + 24) serialQueue];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1CF1C0ADC;
    *(v3 + 24) = v0;
    v5[4] = sub_1CF1C0B54;
    v5[5] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1CEFFD02C;
    v5[3] = &block_descriptor_67;
    v4 = _Block_copy(v5);

    dispatch_sync(v2, v4);

    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1CF1BC87C(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - v6;
  v8 = *(a1 + 24);
  v9 = swift_allocObject();
  v9[2] = sub_1CF1C0AE4;
  v9[3] = a1;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_74;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v8 executeSwift:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v11)
  {
    v68 = v3;
    v14 = sub_1CF9E57F8();

    swift_willThrow();
    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v16 = v14;
    v17 = sub_1CF9E6108();
    v18 = sub_1CF9E72A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v69 = v2;
      v20 = v19;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock[0] = v67;
      *v20 = 136315394;
      v21 = sub_1CF9E5928();
      v22 = [v21 fp_shortDescription];

      v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = v24;

      v26 = sub_1CEFD0DF0(v23, v25, aBlock);
      v25, v27, v28, v29, v30, v31, v32, v33;
      *(v20 + 4) = v26;
      *(v20 + 12) = 2112;
      swift_getErrorValue();
      v34 = Error.prettyDescription.getter(v71, v72);
      *(v20 + 14) = v34;
      v35 = v66;
      *v66 = v34;
      _os_log_impl(&dword_1CEFC7000, v17, v18, "Could not create a unique index %s: %@", v20, 0x16u);
      sub_1CF19CAB0(v35);
      MEMORY[0x1D386CDC0](v35, -1, -1);
      v36 = v67;
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x1D386CDC0](v36, -1, -1);
      v37 = v20;
      v2 = v69;
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    else
    {
    }

    v3 = v68;
    (v68[1])(v7, v2);
  }

  [v8 makeNextFlushFullSync];
  [v8 flush];
  aBlock[0] = 0;
  if ([v8 close_])
  {
    v38 = aBlock[0];
  }

  else
  {
    v39 = aBlock[0];
    v40 = sub_1CF9E57F8();

    swift_willThrow();
    v41 = fpfs_current_or_default_log();
    v42 = v70;
    sub_1CF9E6128();

    v43 = v40;
    v44 = sub_1CF9E6108();
    v45 = sub_1CF9E72A8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      *v46 = 136315394;
      v48 = sub_1CF9E5928();
      v49 = [v48 fp_shortDescription];
      v69 = v2;
      v50 = v49;

      v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v52 = v3;
      v54 = v53;

      v55 = sub_1CEFD0DF0(v51, v54, aBlock);
      v54, v56, v57, v58, v59, v60, v61, v62;
      *(v46 + 4) = v55;
      *(v46 + 12) = 2112;
      swift_getErrorValue();
      v63 = Error.prettyDescription.getter(v73, v74);
      *(v46 + 14) = v63;
      *v47 = v63;
      _os_log_impl(&dword_1CEFC7000, v44, v45, "Can't close database %s: %@", v46, 0x16u);
      sub_1CF19CAB0(v47);
      MEMORY[0x1D386CDC0](v47, -1, -1);
      v64 = v68;
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1D386CDC0](v64, -1, -1);
      MEMORY[0x1D386CDC0](v46, -1, -1);

      (v52[1])(v70, v69);
    }

    else
    {

      (v3[1])(v42, v2);
    }
  }
}

uint64_t sub_1CF1BCEF0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA2E2C0);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA2E300);
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1BCF8C(void *a1, uint64_t *a2, uint64_t a3)
{
  v300 = a1;
  v331[4] = *MEMORY[0x1E69E9840];
  v310 = sub_1CF9E5248();
  v309 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310);
  v308 = &v299 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_1CF9E53C8();
  v313 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v312 = &v299 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_1CF9E6118();
  v320 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v304 = &v299 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v303 = &v299 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v306 = &v299 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v311 = (&v299 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v317 = &v299 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v316 = &v299 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v299 = &v299 - v18;
  v318 = sub_1CF9E5648();
  v315 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318);
  v20 = &v299 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v299 - v22;
  v323 = sub_1CF9E5A58();
  v322 = *(v323 - 8);
  MEMORY[0x1EEE9AC00](v323);
  v302 = &v299 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v301 = &v299 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v305 = &v299 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v307 = &v299 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v299 - v32;
  v34 = sub_1CF9E6888();
  v35 = a2;
  v37 = *a2;
  v36 = a2[1];
  v38 = sub_1CF9E6888();
  v39 = [v34 stringByAppendingPathComponent_];

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v41 = v40;

  sub_1CF9E58C8();
  v324 = v33;
  v42 = v321;
  sub_1CF9E58A8();
  if (!v42)
  {
    v309 = 0;
    v310 = v36;
    v80 = v317;
    v81 = v316;
    v311 = v35;
    v82 = v315;
    (*(v315 + 32))(v23, v20, v318);
    result = sub_1CF9E5568();
    v90 = *MEMORY[0x1E695E2F0];
    if (!*MEMORY[0x1E695E2F0])
    {
      __break(1u);
      return result;
    }

    v91 = result;
    v41, v83, v84, v85, v86, v87, v88, v89;
    v99 = v322;
    if (*v91->tree)
    {
      v100 = v90;
      v101 = sub_1CEFE863C(v100);
      if (v102)
      {
        v321 = v23;
        sub_1CEFD1104(*v91[1].tester + 32 * v101, v331);
        v91, v103, v104, v105, v106, v107, v108, v109;

        sub_1CEFD1104(v331, aBlock);
        sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
        if (swift_dynamicCast())
        {
          v110 = v328;
          v308 = [v328 integerValue];

          v111 = v311;
          v112 = v82;
          if (v311[4])
          {
            v307 = 0;
            LODWORD(v113) = 1;
          }

          else
          {
            v307 = sub_1CF1B98B0(v324);
            v113 = HIDWORD(v307) & 1;
          }

          v229 = sub_1CF9E6888();
          v237 = sub_1CF9E5568();
          v238 = *v237->tree;
          v317 = v229;
          if (v238 && (v239 = sub_1CEFE863C(v229), (v230 & 1) != 0))
          {
            sub_1CEFD1104(*v237[1].tester + 32 * v239, &v330);
            v237, v240, v241, v242, v243, v244, v245, v246;
            sub_1CEFD1104(&v330, aBlock);
            if (swift_dynamicCast())
            {
              v247 = v328;
              LODWORD(v316) = [v328 unsignedIntValue];

              v248 = fpfs_current_or_default_log();
              v249 = v299;
              sub_1CF9E6128();
              v250 = v310;

              v251 = sub_1CF9E6108();
              v252 = sub_1CF9E7298();
              sub_1CF1C090C(v111);
              if (os_log_type_enabled(v251, v252))
              {
                v253 = swift_slowAlloc();
                v314 = v37;
                v254 = v253;
                v255 = swift_slowAlloc();
                aBlock[0] = v255;
                *v254 = 134218754;
                v256 = v308;
                *(v254 + 4) = v308;
                *(v254 + 12) = 1024;
                v257 = v307;
                if (v113)
                {
                  v258 = 0;
                }

                else
                {
                  v258 = v307;
                }

                *(v254 + 14) = v258;
                *(v254 + 18) = 1024;
                *(v254 + 20) = v316;
                *(v254 + 24) = 2082;
                *(v254 + 26) = sub_1CEFD0DF0(v314, v250, aBlock);
                _os_log_impl(&dword_1CEFC7000, v251, v252, "Updating %ld %u %u into database for %{public}s", v254, 0x22u);
                __swift_destroy_boxed_opaque_existential_1(v255);
                v259 = v255;
                v111 = v311;
                MEMORY[0x1D386CDC0](v259, -1, -1);
                MEMORY[0x1D386CDC0](v254, -1, -1);

                v260 = v249;
                v261 = v256;
                (*(v320 + 8))(v260, v319);
                v262 = v300;
              }

              else
              {

                (*(v320 + 8))(v249, v319);
                v262 = v300;
                v257 = v307;
                v261 = v308;
              }

              v289 = swift_allocObject();
              *(v289 + 16) = v325;
              *(v289 + 24) = v261;
              *(v289 + 32) = v257;
              *(v289 + 36) = v113;
              *(v289 + 40) = v316;
              v290 = *(v111 + 16);
              *(v289 + 48) = *v111;
              *(v289 + 64) = v290;
              *(v289 + 80) = *(v111 + 32);
              v291 = swift_allocObject();
              v291[2] = sub_1CF1C0960;
              v291[3] = v289;
              aBlock[4] = sub_1CEFE75B8;
              aBlock[5] = v291;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1CEFE7548;
              aBlock[3] = &block_descriptor_3;
              v292 = _Block_copy(aBlock);
              sub_1CF1C098C(v111, &v328);

              aBlock[0] = 0;
              v293 = [v262 executeSwift:v292 error:aBlock];
              _Block_release(v292);
              v294 = aBlock[0];
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                __break(1u);
              }

              v296 = v322;
              v297 = v318;
              v298 = v317;
              if (v293)
              {
              }

              else
              {
                sub_1CF9E57F8();

                swift_willThrow();
              }

              __swift_destroy_boxed_opaque_existential_1(&v330);
              __swift_destroy_boxed_opaque_existential_1(v331);
              (*(v315 + 8))(v321, v297);
              (*(v296 + 8))(v324, v323);
            }

            v263 = v112;
            __swift_destroy_boxed_opaque_existential_1(&v330);
          }

          else
          {
            v237, v230, v231, v232, v233, v234, v235, v236;
            v263 = v112;
          }

          v264 = fpfs_current_or_default_log();
          v265 = v81;
          sub_1CF9E6128();

          v266 = sub_1CF9E6108();
          v267 = sub_1CF9E72A8();

          v268 = os_log_type_enabled(v266, v267);
          v99 = v322;
          if (v268)
          {
            v269 = swift_slowAlloc();
            v270 = swift_slowAlloc();
            aBlock[0] = v270;
            *v269 = 136315138;
            v271 = sub_1CF9E5928();
            v272 = [v271 fp_shortDescription];

            v273 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v275 = v274;

            v276 = v263;
            v277 = sub_1CEFD0DF0(v273, v275, aBlock);
            v275, v278, v279, v280, v281, v282, v283, v284;
            *(v269 + 4) = v277;
            _os_log_impl(&dword_1CEFC7000, v266, v267, "Failed to get the gen count for %s", v269, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v270);
            MEMORY[0x1D386CDC0](v270, -1, -1);
            MEMORY[0x1D386CDC0](v269, -1, -1);

            (*(v320 + 8))(v316, v319);
            v285 = v321;
            v286 = v314;
            v287 = v313;
          }

          else
          {

            (*(v320 + 8))(v265, v319);
            v285 = v321;
            v286 = v314;
            v287 = v313;
            v276 = v263;
          }

          LODWORD(aBlock[0]) = 2;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF1C0A8C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v288 = v312;
          sub_1CF9E57D8();
          sub_1CF9E53A8();
          (*(v287 + 8))(v288, v286);
          swift_willThrow();

          __swift_destroy_boxed_opaque_existential_1(v331);
          (*(v276 + 8))(v285, v318);
          return (*(v99 + 8))(v324, v323);
        }

        __swift_destroy_boxed_opaque_existential_1(v331);
        v23 = v321;
LABEL_20:
        v173 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v174 = sub_1CF9E6108();
        v175 = sub_1CF9E72A8();

        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v321 = v23;
          v177 = v176;
          v178 = swift_slowAlloc();
          aBlock[0] = v178;
          *v177 = 136315138;
          v179 = sub_1CF9E5928();
          v180 = [v179 fp_shortDescription];

          v181 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v183 = v182;

          v184 = sub_1CEFD0DF0(v181, v183, aBlock);
          v183, v185, v186, v187, v188, v189, v190, v191;
          *(v177 + 4) = v184;
          _os_log_impl(&dword_1CEFC7000, v174, v175, "Failed to get canonical path for %s", v177, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v178);
          MEMORY[0x1D386CDC0](v178, -1, -1);
          v192 = v177;
          v23 = v321;
          MEMORY[0x1D386CDC0](v192, -1, -1);

          (*(v320 + 8))(v317, v319);
        }

        else
        {

          (*(v320 + 8))(v80, v319);
        }

        v193 = v313;
        v194 = v312;
        LODWORD(aBlock[0]) = 2;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF1C0A8C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v195 = v314;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v193 + 8))(v194, v195);
        swift_willThrow();
        (*(v82 + 8))(v23, v318);
        return (*(v99 + 8))(v324, v323);
      }
    }

    v91, v92, v93, v94, v95, v96, v97, v98;
    goto LABEL_20;
  }

  v41, v43, v44, v45, v46, v47, v48, v49;
  v50 = v42;
  LODWORD(aBlock[0]) = sub_1CF9E5328();
  sub_1CF196978();
  v51 = sub_1CF9E5658();

  if (v51)
  {

    v52 = fpfs_current_or_default_log();
    v53 = v311;
    sub_1CF9E6128();
    v54 = v322;
    v55 = v307;
    v56 = v324;
    v57 = v323;
    (*(v322 + 16))(v307, v324, v323);
    v58 = sub_1CF9E6108();
    v59 = sub_1CF9E72A8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v325 = swift_slowAlloc();
      aBlock[0] = v325;
      *v60 = 136315138;
      v61 = sub_1CF9E5928();
      v62 = [v61 fp_shortDescription];

      v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v64 = v54;
      v66 = v65;

      v67 = *(v64 + 8);
      v68 = v55;
      v69 = v323;
      v67(v68, v323);
      v70 = sub_1CEFD0DF0(v63, v66, aBlock);
      v66, v71, v72, v73, v74, v75, v76, v77;
      *(v60 + 4) = v70;
      _os_log_impl(&dword_1CEFC7000, v58, v59, "Failed to populate new columns. ENOENT %s does not exist.", v60, 0xCu);
      v78 = v325;
      __swift_destroy_boxed_opaque_existential_1(v325);
      MEMORY[0x1D386CDC0](v78, -1, -1);
      MEMORY[0x1D386CDC0](v60, -1, -1);

      (*(v320 + 8))(v53, v319);
      return (v67)(v324, v69);
    }

    v143 = *(v54 + 8);
    v143(v55, v57);
    (*(v320 + 8))(v53, v319);
    return (v143)(v56, v57);
  }

  v114 = v42;
  v115 = v308;
  sub_1CF9E50F8();
  sub_1CF1C0A8C(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
  v116 = v310;
  v117 = sub_1CF9E5658();

  v118 = *(v309 + 8);
  v118(v115, v116);
  if (v117)
  {

    v119 = fpfs_current_or_default_log();
    v120 = v306;
    sub_1CF9E6128();
    v121 = v322;
    v122 = v305;
    v56 = v324;
    v57 = v323;
    (*(v322 + 16))(v305, v324, v323);
    v123 = sub_1CF9E6108();
    v124 = sub_1CF9E72A8();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v325 = swift_slowAlloc();
      aBlock[0] = v325;
      *v125 = 136315138;
      v126 = sub_1CF9E5928();
      v127 = [v126 fp_shortDescription];

      v128 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v130 = v129;

      v131 = *(v121 + 8);
      v132 = v122;
      v133 = v323;
      v131(v132, v323);
      v134 = sub_1CEFD0DF0(v128, v130, aBlock);
      v130, v135, v136, v137, v138, v139, v140, v141;
      *(v125 + 4) = v134;
      _os_log_impl(&dword_1CEFC7000, v123, v124, "Failed to populate new columns. fileNoSuchFile %s does not exist.", v125, 0xCu);
      v142 = v325;
      __swift_destroy_boxed_opaque_existential_1(v325);
      MEMORY[0x1D386CDC0](v142, -1, -1);
      MEMORY[0x1D386CDC0](v125, -1, -1);

      (*(v320 + 8))(v120, v319);
      return (v131)(v324, v133);
    }

    v143 = *(v121 + 8);
    v143(v122, v57);
    (*(v320 + 8))(v120, v319);
    return (v143)(v56, v57);
  }

  v144 = v42;
  sub_1CF9E5118();
  v145 = sub_1CF9E5658();

  v118(v115, v116);
  if (v145)
  {

    v146 = fpfs_current_or_default_log();
    v147 = v303;
    sub_1CF9E6128();
    v148 = v322;
    v149 = v301;
    v150 = v324;
    v151 = v323;
    (*(v322 + 16))(v301, v324, v323);
    v152 = sub_1CF9E6108();
    v153 = sub_1CF9E72A8();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      aBlock[0] = v155;
      *v154 = 136315138;
      v156 = sub_1CF9E5928();
      v157 = v149;
      v158 = [v156 fp_shortDescription];

      v159 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v161 = v160;

      v162 = *(v148 + 8);
      v163 = v157;
      v164 = v323;
      v162(v163, v323);
      v165 = sub_1CEFD0DF0(v159, v161, aBlock);
      v161, v166, v167, v168, v169, v170, v171, v172;
      *(v154 + 4) = v165;
      _os_log_impl(&dword_1CEFC7000, v152, v153, "Failed to populate new columns. fileReadNoSuchFile %s does not exist.", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v155);
      MEMORY[0x1D386CDC0](v155, -1, -1);
      MEMORY[0x1D386CDC0](v154, -1, -1);

      (*(v320 + 8))(v303, v319);
      return (v162)(v324, v164);
    }

    else
    {

      v227 = *(v148 + 8);
      v227(v149, v151);
      (*(v320 + 8))(v147, v319);
      return (v227)(v150, v151);
    }
  }

  else
  {
    v196 = fpfs_current_or_default_log();
    v197 = v304;
    sub_1CF9E6128();
    v198 = v322;
    v199 = v302;
    v200 = v324;
    v201 = v323;
    (*(v322 + 16))(v302, v324, v323);
    v202 = v42;
    v203 = sub_1CF9E6108();
    v204 = sub_1CF9E72A8();

    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      v321 = swift_slowAlloc();
      v325 = swift_slowAlloc();
      aBlock[0] = v325;
      *v205 = 136315394;
      v206 = sub_1CF9E5928();
      v207 = v199;
      v208 = [v206 fp_shortDescription];

      v209 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v210 = v198;
      v212 = v211;

      v213 = *(v210 + 8);
      v214 = v207;
      v215 = v323;
      v213(v214, v323);
      v216 = sub_1CEFD0DF0(v209, v212, aBlock);
      v212, v217, v218, v219, v220, v221, v222, v223;
      *(v205 + 4) = v216;
      *(v205 + 12) = 2112;
      swift_getErrorValue();
      v224 = Error.prettyDescription.getter(v326, v327);
      *(v205 + 14) = v224;
      v225 = v321;
      *v321 = v224;
      _os_log_impl(&dword_1CEFC7000, v203, v204, "Failed to populate new columns for %s: %@", v205, 0x16u);
      sub_1CF19CAB0(v225);
      MEMORY[0x1D386CDC0](v225, -1, -1);
      v226 = v325;
      __swift_destroy_boxed_opaque_existential_1(v325);
      MEMORY[0x1D386CDC0](v226, -1, -1);
      MEMORY[0x1D386CDC0](v205, -1, -1);

      (*(v320 + 8))(v304, v319);
      swift_willThrow();
      return (v213)(v324, v215);
    }

    else
    {

      v228 = *(v198 + 8);
      v228(v199, v201);
      (*(v320 + 8))(v197, v319);
      swift_willThrow();
      return (v228)(v200, v201);
    }
  }
}

uint64_t sub_1CF1BEAD0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA2E090);
  v11 = [a1 bindLongParameter_];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA2E0B0);
  v22 = sub_1CF074C58(a4 | ((HIDWORD(a4) & 1) << 32));
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA2E0D0);
  v32 = [a1 bindUnsignedIntegerParameter_];
  v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v35 = v34;

  MEMORY[0x1D3868CC0](v33, v35);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA2E0F0);
  v43 = sub_1CF9E6888();
  v44 = [a1 bindStringParameter_];

  v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v47 = v46;

  MEMORY[0x1D3868CC0](v45, v47);
  v47, v48, v49, v50, v51, v52, v53, v54;
  return 0;
}

void sub_1CF1BED00(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = swift_allocObject();
  v8[2] = sub_1CF1C0B18;
  v8[3] = a2;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_105;
  v9 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v39 = a1;
  v10 = [a1 fetchSwift:v9 error:aBlock];
  _Block_release(v9);
  v11 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v10)
  {
    v37 = a4;
    if ([v10 next])
    {
      v13 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      v38 = v10;
      while (1)
      {
        v14 = v10;
        v15 = [v14 stringAtIndex_];
        v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v18 = v17;

        v19 = [v14 v13[469]];
        v20 = [v14 isNullAtIndex_];
        v21 = (v20 & 1) != 0 ? 0 : [v14 v13[469]];
        v22 = [v14 unsignedIntAtIndex_];

        v42[0] = v16;
        v42[1] = v18;
        v42[2] = v19;
        v42[3] = v21;
        v43 = v20;
        v44 = v22;
        sub_1CF1BCF8C(v39, v42, a3);
        if (v4)
        {
          break;
        }

        v18, v23, v24, v25, v26, v27, v28, v29;
        v10 = v38;
        v13 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
        if (([v14 next] & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v18, v30, v31, v32, v33, v34, v35, v36;
    }

    else
    {
LABEL_10:

      *v37 = 1;
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }
}

uint64_t sub_1CF1BF004(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  strcpy(v11, "SELECT *\nFROM ");
  HIBYTE(v11[1]) = -18;
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA2E430);
  return v11[0];
}

uint64_t sub_1CF1BF09C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v41 = a3;
  v56 = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E6118();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF1C0B08;
  *(v10 + 24) = a2;
  v54 = sub_1CEFE7610;
  v55 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1CEFE7548;
  v53 = &block_descriptor_91;
  v11 = _Block_copy(&aBlock);
  v45 = a2;

  aBlock = 0;
  v12 = [a1 executeSwift:v11 error:&aBlock];
  _Block_release(v11);
  v13 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (!v12)
  {
    v22 = sub_1CF9E57F8();

    swift_willThrow();
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v24 = v22;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_getErrorValue();
      v29 = Error.prettyDescription.getter(v48, v49);
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "Failed to create file_id_gen_count_index: %@", v27, 0xCu);
      sub_1CF19CAB0(v28);
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    v30 = 0;
    v31 = 0;
    goto LABEL_12;
  }

  v15 = swift_allocObject();
  v16 = v45;
  *(v15 + 16) = sub_1CF1C0B10;
  *(v15 + 24) = v16;
  v54 = sub_1CEFE7610;
  v55 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1CEFE7548;
  v53 = &block_descriptor_98;
  v17 = _Block_copy(&aBlock);

  aBlock = 0;
  v18 = [a1 executeSwift:v17 error:&aBlock];
  _Block_release(v17);
  v19 = aBlock;
  v20 = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_14:
    __break(1u);
  }

  if (v18)
  {

    *v41 = 1;
    return result;
  }

  v32 = sub_1CF9E57F8();

  swift_willThrow();
  v33 = fpfs_current_or_default_log();
  v34 = v42;
  sub_1CF9E6128();
  v35 = v32;
  v36 = sub_1CF9E6108();
  v37 = sub_1CF9E72A8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    swift_getErrorValue();
    v40 = Error.prettyDescription.getter(v46, v47);
    *(v38 + 4) = v40;
    *v39 = v40;
    _os_log_impl(&dword_1CEFC7000, v36, v37, "Failed to create doc_id_index: %@", v38, 0xCu);
    sub_1CF19CAB0(v39);
    MEMORY[0x1D386CDC0](v39, -1, -1);
    MEMORY[0x1D386CDC0](v38, -1, -1);
  }

  v30 = sub_1CF1C0B10;
  v9 = v34;
  v31 = v16;
LABEL_12:
  (*(v43 + 8))(v9, v44);
  swift_willThrow();

  return sub_1CEFF7124(v30, v31);
}

uint64_t sub_1CF1BF66C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA2E3D0);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA2E410);
  return 0;
}

uint64_t sub_1CF1BF708(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA2E3A0);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0x2964695F636F6428, 0xE800000000000000);
  return 0;
}

unint64_t sub_1CF1BF798@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6[2] = a1;
  v7 = a2;
  result = sub_1CF7F1200(sub_1CF1C0AEC, v6);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 4) = BYTE4(result) & 1;
  }

  return result;
}

unint64_t sub_1CF1BF7F8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA2E280);
  v13 = [a1 bindUnsignedIntegerParameter_];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  MEMORY[0x1D3868CC0](v14, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return 0xD000000000000017;
}

void *sub_1CF1BF8E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v9[3] = a2;
  v9[2] = a1;
  result = sub_1CF7F145C(sub_1CF1C0B00, v9);
  if (!v3)
  {
    if (v7)
    {
      v8 = a2;
    }

    else
    {
      v8 = result;
    }

    *a3 = v8;
  }

  return result;
}

unint64_t sub_1CF1BF94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA2E2A0);
  v12 = sub_1CF074ABC(a3, 0);
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  return 0xD000000000000018;
}

void sub_1CF1BFA14(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v29 = a5;
  v27 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v28 = sub_1CF9E6118();
  v8 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  v12[2] = sub_1CF1C0AF8;
  v12[3] = v11;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_84;
  v13 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v14 = [a1 fetchSwift:v13 error:aBlock];
  _Block_release(v13);
  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v14)
  {
    if (![v14 next] || (objc_msgSend(v14, sel_isNullAtIndex_, 0) & 1) != 0 || (objc_msgSend(v14, sel_isNullAtIndex_, 1) & 1) != 0 || (objc_msgSend(v14, sel_isNullAtIndex_, 2) & 1) != 0)
    {
      v17 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v18 = sub_1CF9E6108();
      v19 = sub_1CF9E72A8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134217984;
        *(v20 + 4) = a3;
        _os_log_impl(&dword_1CEFC7000, v18, v19, "Failed to find new fileID for %llu", v20, 0xCu);
        MEMORY[0x1D386CDC0](v20, -1, -1);
      }

      (*(v8 + 8))(v10, v28);

      v21 = v29;
      *v29 = a3;
      *(v21 + 2) = 0;
      *(v21 + 12) = 0;
    }

    else
    {
      v22 = [v14 unsignedLongLongAtIndex_];
      v23 = [v14 unsignedIntAtIndex_];
      v24 = [v14 unsignedIntAtIndex_];

      v25 = v29;
      *v29 = v22;
      if (v24 == v27)
      {
        *(v25 + 2) = v23;
      }

      else
      {
        *(v25 + 2) = 0;
      }

      *(v25 + 12) = 1;
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }
}

uint64_t sub_1CF1BFE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA2E340);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA2E2A0);
  v5 = sub_1CF074ABC(a3, 0);
  v7 = v6;
  MEMORY[0x1D3868CC0](v5);
  v7, v8, v9, v10, v11, v12, v13, v14;
  return 0;
}

void sub_1CF1BFED0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1CF9E5268();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  v12[2] = sub_1CF1C0AD4;
  v12[3] = v11;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_60;
  v13 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v14 = [a1 fetchSwift:v13 error:aBlock];
  _Block_release(v13);
  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v14)
  {
    if ([v14 next])
    {
      if (![v14 isNullAtIndex_])
      {
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_14;
        }

        v17 = [v14 stringAtIndex_];
        v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v20 = v19;

        if (![v14 isNullAtIndex_])
        {
          if (!swift_dynamicCastMetatype())
          {
            v21 = [v14 unsignedIntAtIndex_];

            v22 = v24;
            *v24 = v18;
            v22[1] = v20;
            *(v22 + 4) = v21;
            return;
          }

LABEL_14:
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
        }
      }

      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
    }

    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF1C0A8C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v23 + 8))(v10, v8);
    swift_willThrow();
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }
}

uint64_t sub_1CF1C031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA2E250);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA2E2A0);
  v5 = sub_1CF074ABC(a3, 0);
  v7 = v6;
  MEMORY[0x1D3868CC0](v5);
  v7, v8, v9, v10, v11, v12, v13, v14;
  return 0;
}

void sub_1CF1C03E8(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v24 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1CF9E5268();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  v12[2] = sub_1CF1C0A80;
  v12[3] = v11;
  aBlock[4] = sub_1CEFE7610;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_50;
  v13 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v14 = [a1 fetchSwift:v13 error:aBlock];
  _Block_release(v13);
  v15 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v14)
  {
    if ([v14 next])
    {
      if (![v14 isNullAtIndex_])
      {
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_14;
        }

        v17 = [v14 stringAtIndex_];
        v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v20 = v19;

        if (![v14 isNullAtIndex_])
        {
          if (!swift_dynamicCastMetatype())
          {
            v21 = [v14 unsignedIntAtIndex_];

            v22 = v24;
            *v24 = v18;
            v22[1] = v20;
            *(v22 + 4) = v21;
            return;
          }

LABEL_14:
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
        }
      }

      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
    }

    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF1C0A8C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v23 + 8))(v10, v8);
    swift_willThrow();
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }
}

uint64_t sub_1CF1C0838(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA2E250);
  MEMORY[0x1D3868CC0](*(a2 + 32), *(a2 + 40));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA2E280);
  v5 = sub_1CF074C58(a3);
  v7 = v6;
  MEMORY[0x1D3868CC0](v5);
  v7, v8, v9, v10, v11, v12, v13, v14;
  return 0;
}

id sub_1CF1C0A1C()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1CF1BB840(v2, v3);
}

uint64_t sub_1CF1C0A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF1C0B84(uint64_t a1)
{
  result = sub_1CF9E6498();
  if (v2 <= 0x3F)
  {
    result = sub_1CF9E6388();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1CF1C0CE4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0D0, &qword_1CF9FC5B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1C518C();
  sub_1CF9E82A8();
  LOBYTE(v12) = 0;
  sub_1CF9E7EC8();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    v11 = 1;
    sub_1CF1C5234();
    sub_1CF9E7E68();
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    v11 = 2;
    sub_1CF9E7E68();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1CF1C0EB0()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x677275507473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7964656572476E69;
  }
}

uint64_t sub_1CF1C0F28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF1C4E2C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1C0F50(uint64_t a1)
{
  v2 = sub_1CF1C518C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1C0F8C(uint64_t a1)
{
  v2 = sub_1CF1C518C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1CF1C0FC8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1CF1C4F5C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

void sub_1CF1C1028(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t sub_1CF1C1050()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  v2 = v0[13];
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

uint64_t sub_1CF1C1160()
{
  v6 = 0;
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF1C12B0(v0, &v6);
  v2 = objc_sync_exit(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

uint64_t sub_1CF1C12B0(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = v41 - v6;
  v53 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = sub_1CF9E75D8();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - v12;
  v14 = qword_1EDEA4990;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v41[2] = v5 + 32;
  v41[3] = v5 + 16;
  v50 += 4;
  v51 = TupleTypeMetadata2 - 8;
  v46 = v5;
  v48 = v15;
  v49 = (v5 + 8);

  v22 = 0;
  v47 = a2;
  v43 = v10;
  v44 = TupleTypeMetadata2;
  v42 = v13;
  if (v19)
  {
    while (1)
    {
      v23 = v22;
LABEL_12:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v23 << 6);
      v28 = v48;
      v29 = v45;
      v30 = v46;
      v31 = v53;
      (*(v46 + 16))(v45, *(v48 + 48) + *(v46 + 72) * v27, v53);
      v32 = *(*(v28 + 56) + 8 * v27);
      v33 = *(v44 + 48);
      v34 = *(v30 + 32);
      v10 = v43;
      v35 = v29;
      TupleTypeMetadata2 = v44;
      v34(v43, v35, v31);
      v36 = 0;
      *&v10[v33] = v32;
      v25 = v23;
      a2 = v47;
      v13 = v42;
LABEL_13:
      v37 = *(TupleTypeMetadata2 - 8);
      (*(v37 + 56))(v10, v36, 1, TupleTypeMetadata2);
      (*v50)(v13, v10, v52);
      result = (*(v37 + 48))(v13, 1, TupleTypeMetadata2);
      if (result == 1)
      {
      }

      v38 = *&v13[*(TupleTypeMetadata2 + 48)];
      v39 = __OFADD__(*a2, v38);
      v40 = *a2 + v38;
      if (v39)
      {
        goto LABEL_20;
      }

      *a2 = v40;
      result = (*v49)(v13, v53);
      v22 = v25;
      if (!v19)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v20 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v20;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        v19 = 0;
        v36 = 1;
        goto LABEL_13;
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF1C16D0()
{
  v33 = *v0;
  v1 = sub_1CF9E6448();
  v34 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E73D8();
  v32 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EDEBB758;
  if (*(v0 + qword_1EDEBB758 + 8))
  {
    v11 = qword_1EDEBB760;
  }

  v12 = *(v0 + v11);
  result = swift_beginAccess();
  if (*(v0 + 80) == 1 && (v0[12] & 1) == 0)
  {
    v14 = v0[11];
    v15 = v14 + v12;
    if (__OFADD__(v14, v12))
    {
      __break(1u);
    }

    else
    {
      v16 = v0;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v18 = v17;
      result = (*(v8 + 8))(v10, v7);
      v19 = v18 * 1000000000.0;
      if (COERCE__INT64(fabs(v18 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v19 > -9.22337204e18)
        {
          if (v19 < 9.22337204e18)
          {
            if (v15 <= v19)
            {
              return result;
            }

            v31 = v15;
            v20 = v19;
            sub_1CF1C1C54();
            v21 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
            v30[0] = *(v0 + qword_1EDEA4968);
            v30[1] = v21;
            v35 = MEMORY[0x1E69E7CC0];
            sub_1CF1C52F4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
            sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
            sub_1CF9E77B8();
            v22 = sub_1CF9E73E8();
            (*(v32 + 8))(v6, v4);
            *(v16 + qword_1EDEBB6C0) = v22;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            ObjectType = swift_getObjectType();
            v24 = swift_allocObject();
            swift_weakInit();
            v25 = swift_allocObject();
            v26 = v33;
            v25[2] = *(v33 + 248);
            v25[3] = *(v26 + 256);
            v25[4] = v24;

            sub_1CF042F9C();
            sub_1CEFD5828(0, v3, sub_1CF1C533C, v25, ObjectType);

            (*(v34 + 8))(v3, v1);

            v27 = v31 - v20;
            if (!__OFSUB__(v31, v20))
            {
              v28 = dispatch_time(0x8000000000000000, 0);
              v29 = dispatch_time(v28, v27);
              sub_1CF4FBB4C(v29);
              sub_1CF9E7428();
              return swift_unknownObjectRelease();
            }

LABEL_17:
            __break(1u);
            return result;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1CF1C1BB8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_1CF1C1C54();
    v3 = *(v2 + qword_1EDEBB6D0);
    if (v3)
    {
      v4 = *(v2 + qword_1EDEBB6D0 + 8);

      v3(1);
      sub_1CEFF7124(v3, v4);
    }
  }

  return result;
}

uint64_t sub_1CF1C1C54()
{
  v1 = qword_1EDEBB6C0;
  if (*(v0 + qword_1EDEBB6C0))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*(v0 + v1))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
    }
  }

  *(v0 + v1) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF1C1CFC()
{
  v1 = v0;
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF1C260C(0);
  if (v7)
  {
    v8 = (v0 + 80);
    swift_beginAccess();
    return *v8;
  }

  v10 = v6;
  v11 = sub_1CF1C1160();
  v8 = (v1 + 80);
  result = swift_beginAccess();
  v12 = v10 - v11;
  v13 = __OFSUB__(v10, v11);
  if (*(v1 + 80) == 1)
  {
    if (!v13)
    {
      if (v12 < *(v1 + qword_1EDEBB6E8))
      {
        *(v1 + 80) = 0;
        *(v1 + 72) = 1;
        sub_1CF7F20A0();
        v14 = v1 + qword_1EDEBB6D0;
        v15 = *(v1 + qword_1EDEBB6D0);
        if (v15)
        {
          v16 = *(v14 + 8);

          v15(0);
          sub_1CEFF7124(v15, v16);
        }
      }

      return *v8;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v13)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v1 + qword_1EDEBB6E0) >= v12)
  {
    return *v8;
  }

  *(v1 + 80) = 1;
  *(v1 + 72) = 1;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v18 = v17;
  result = (*(v3 + 8))(v5, v2);
  v19 = v18 * 1000000000.0;
  if (COERCE__INT64(fabs(v18 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v19 < 9.22337204e18)
  {
    *(v1 + 88) = v19;
    *(v1 + 96) = 0;
    *(v1 + 72) = 1;
    sub_1CF7F20A0();
    sub_1CF1C16D0();
    return *v8;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1CF1C1F58()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = sub_1CF1C1CFC();
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2 & 1;
}

id sub_1CF1C2044(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001CFA2E990;
  v4 = *(v1 + qword_1EDEA4970 + 8);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 48) = *(v1 + qword_1EDEA4970);
  *(inited + 56) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CFA2E9B0;
  v6 = MEMORY[0x1E69E72F0];
  *(inited + 96) = 1;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000015;
  v7 = 5457241;
  if (a1)
  {
    v7 = 20302;
  }

  v8 = 0xE300000000000000;
  if (a1)
  {
    v8 = 0xE200000000000000;
  }

  *(inited + 168) = v5;
  *(inited + 136) = 0x80000001CFA2EA30;
  *(inited + 144) = v7;
  *(inited + 152) = v8;

  v9 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v10 = sub_1CF9E6618();
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = CacheDeleteCopyPurgeableSpaceWithInfo();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_1CF9E6628();
  }

  else
  {
  }

  return 0;
}

id sub_1CF1C2358()
{
  v1 = v0;
  v2 = sub_1CF9E6498();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  if ((*(v0 + qword_1EDEBB708 + 8) & 1) == 0)
  {
    return *(v0 + qword_1EDEBB708);
  }

  v12 = qword_1EDEA4988;
  swift_beginAccess();
  (*(v3 + 16))(v11, v0 + v12, v2);
  sub_1CF9E6488();
  sub_1CF9E6478();
  v13 = sub_1CF9E6468();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  v15 = sub_1CF1C2044((v13 & 1) == 0);
  if (v16)
  {
    v14(v11, v2);
    return 0;
  }

  else
  {
    v18 = v15;
    sub_1CF9E6478();
    v14(v11, v2);
    swift_beginAccess();
    (*(v3 + 40))(v1 + v12, v8, v2);
    swift_endAccess();
    return v18;
  }
}

uint64_t sub_1CF1C25D8()
{
  if (*(v0 + qword_1EDEBB740 + 8) == 1)
  {
    return *(v0 + 144);
  }

  else
  {
    return *(v0 + qword_1EDEBB740);
  }
}

uint64_t sub_1CF1C260C(char a1)
{
  v2 = v1;
  v4 = sub_1CF9E6498();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = v2 + qword_1EDEBB708;
  if (*(v2 + qword_1EDEBB708 + 8) == 1)
  {
    v15 = qword_1EDEA4980;
    swift_beginAccess();
    v16 = *(v5 + 16);
    v26 = v15;
    v16(v13, v2 + v15, v4);
    sub_1CF9E6488();
    sub_1CF9E6478();
    v17 = sub_1CF9E6468();
    v18 = *(v5 + 8);
    v18(v7, v4);
    v18(v10, v4);
    if (a1 & 1) == 0 || (v17)
    {
      v19 = [*(v2 + 120) freeSize];
      if (v19)
      {
        v20 = v19;
        v21 = (v2 + qword_1EDEBB740);
        if (*(v2 + qword_1EDEBB740 + 8) == 1)
        {
          if (*(v2 + 152))
          {
            v18(v13, v4);

LABEL_14:
            v14 = v2 + 128;
            return *v14;
          }

          v21 = (v2 + 144);
        }

        v22 = *v21;
        *(v2 + 128) = [v19 longLongValue];
        *(v2 + 136) = 0;
        if (v22 < [v20 longLongValue])
        {
          *(v2 + 128) = v22;
          *(v2 + 136) = 0;
        }

        sub_1CF9E6478();

        v18(v13, v4);
        v23 = v26;
        swift_beginAccess();
        (*(v5 + 40))(v2 + v23, v10, v4);
        swift_endAccess();
        goto LABEL_14;
      }
    }

    v18(v13, v4);
    goto LABEL_14;
  }

  return *v14;
}

uint64_t sub_1CF1C28EC(uint64_t a1)
{
  v3 = sub_1CF9E5CF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF1C1050();
  v9 = v8;
  result = sub_1CF1C1160();
  v11 = result + a1;
  if (__OFADD__(result, a1))
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = sub_1CF1C2358();
  if (v13)
  {
    return 0;
  }

  if (__OFSUB__(result, v11))
  {
    goto LABEL_26;
  }

  v14 = qword_1EDEBB6E8;
  if (result - v11 >= *(v1 + qword_1EDEBB6E8) || v12 == 0)
  {
    return 0;
  }

  v16 = result;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v18 = v17;
  result = (*(v4 + 8))(v6, v3);
  v19 = v18 * 1000000000.0;
  if (COERCE__INT64(fabs(v18 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v9)
  {
    goto LABEL_17;
  }

  v20 = v19;
  if (v7 >= v19)
  {
    goto LABEL_17;
  }

  v21 = __OFSUB__(v20, v7);
  v22 = v20 - v7;
  if (v21)
  {
    goto LABEL_30;
  }

  v23 = *(v1 + qword_1EDEBB768);
  v21 = __OFSUB__(v23, v22);
  v24 = v23 - v22;
  if (v21)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v24 > 0)
  {
    return 0;
  }

LABEL_17:
  result = sub_1CF1C1F58();
  if ((result & 1) == 0)
  {
    goto LABEL_22;
  }

  v25 = *(v1 + v14);
  v21 = __OFADD__(v25, a1);
  v26 = v25 + a1;
  if (v21)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!__OFSUB__(v26, v16))
  {
    return 1;
  }

  __break(1u);
LABEL_22:
  v27 = *(v1 + qword_1EDEBB6E0);
  v21 = __OFADD__(v27, a1);
  v28 = v27 + a1;
  if (v21)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!__OFSUB__(v28, v16))
  {
    return 1;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1CF1C2B1C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = sub_1CF9E63A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6448();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1CF1C3DF8())
  {
    return a2(0);
  }

  v20 = *(v3 + qword_1EDEA4968);
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_1CF1C52D4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1CF1C52F4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v19 = v11;
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v14, v10, v17);
  _Block_release(v17);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v19);
}

void sub_1CF1C2E14(char *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1CF1C28EC(a2) & 1) != 0 && (v13 = qword_1EDEBB6F0, (a1[qword_1EDEBB6F0] & 1) == 0))
  {
    v14 = v12;
    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E7298();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v45 = a4;
      v19 = v13;
      v20 = v18;
      *v18 = 134217984;
      *(v18 + 4) = v14;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "💾 calling CD to purge: %lld", v18, 0xCu);
      v21 = v20;
      v13 = v19;
      a4 = v45;
      MEMORY[0x1D386CDC0](v21, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v22 = *&a1[qword_1EDEBB6F8];
    if (v22)
    {
      v23 = *&a1[qword_1EDEBB6F8 + 8];

      v24 = v22(v14);
      v25 = *&a1[qword_1EDEBB700];
      if (v25)
      {
        v26 = *&a1[qword_1EDEBB700 + 8];

        v25(v14);
        sub_1CEFF7124(v25, v26);
      }

      if (v24)
      {
        v27 = objc_sync_enter(a1);
        if (v27)
        {
          MEMORY[0x1EEE9AC00](v27);
          *(&v44 - 2) = a1;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v44 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

        sub_1CF1C3C64(a1);
        v28 = objc_sync_exit(a1);
        if (v28)
        {
          MEMORY[0x1EEE9AC00](v28);
          *(&v44 - 2) = a1;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v44 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }
      }

      sub_1CF1C1CFC();
      a3(v24 & 1);
      sub_1CEFF7124(v22, v23);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FC3C0;
      *(inited + 32) = 0xD000000000000013;
      *(inited + 40) = 0x80000001CFA2E990;
      v30 = *&a1[qword_1EDEA4970 + 8];
      v31 = MEMORY[0x1E69E6158];
      *(inited + 48) = *&a1[qword_1EDEA4970];
      *(inited + 56) = v30;
      *(inited + 72) = v31;
      *(inited + 80) = 0xD000000000000014;
      *(inited + 88) = 0x80000001CFA2E9B0;
      v32 = MEMORY[0x1E69E72F0];
      *(inited + 96) = 1;
      *(inited + 120) = v32;
      *(inited + 128) = 0xD000000000000013;
      *(inited + 168) = MEMORY[0x1E69E7360];
      *(inited + 136) = 0x80000001CFA2E9D0;
      *(inited + 144) = v14;

      v33 = sub_1CF4E04E8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_arrayDestroy();
      a1[v13] = 1;
      v34 = sub_1CF9E6618();
      v33, v35, v36, v37, v38, v39, v40, v41;
      v42 = swift_allocObject();
      v42[2] = a1;
      v42[3] = a3;
      v42[4] = a4;
      aBlock[4] = sub_1CF1C52E0;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF02C158;
      aBlock[3] = &block_descriptor_13;
      v43 = _Block_copy(aBlock);

      CacheDeletePurgeSpaceWithInfo();
      _Block_release(v43);
    }
  }

  else
  {
    a3(0);
  }
}

uint64_t sub_1CF1C3390(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v84 = a4;
  v85 = a3;
  v83 = a2;
  v4 = sub_1CF9E63A8();
  v82 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6448();
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v80 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - v18;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (aBlock[0] = 0, sub_1CF9E6628(), (v27 = aBlock[0]) == 0))
  {
    v51 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E72A8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1CEFC7000, v52, v53, "💾 No results returned by CacheDeletePurgeSpaceWithInfo", v54, 2u);
      MEMORY[0x1D386CDC0](v54, -1, -1);
    }

    (*(v11 + 8))(v19, v10);
    goto LABEL_11;
  }

  if (*(aBlock[0] + 16))
  {
    v28 = sub_1CEFE4328(0xD000000000000012, 0x80000001CFA2EA10);
    if (v20)
    {
      sub_1CEFD1104(*v27[1].tester + 32 * v28, aBlock);
      if (swift_dynamicCast())
      {
        v27, v20, v21, v22, v23, v24, v25, v26;
        v30 = v86;
        v29 = v87;
        v31 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v32 = sub_1CF9E6108();
        v33 = sub_1CF9E72A8();
        v29, v34, v35, v36, v37, v38, v39, v40;
        if (os_log_type_enabled(v32, v33))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock[0] = v42;
          *v41 = 136315138;
          v43 = sub_1CEFD0DF0(v30, v29, aBlock);
          v29, v44, v45, v46, v47, v48, v49, v50;
          *(v41 + 4) = v43;
          _os_log_impl(&dword_1CEFC7000, v32, v33, "💾 CD failed while purging with: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          MEMORY[0x1D386CDC0](v42, -1, -1);
          MEMORY[0x1D386CDC0](v41, -1, -1);
        }

        else
        {

          v29, v73, v74, v75, v76, v77, v78, v79;
        }

        (*(v11 + 8))(v16, v10);
LABEL_11:
        v55 = 0;
        goto LABEL_21;
      }
    }
  }

  if (!*v27->tree || (v56 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA2E9D0), (v20 & 1) == 0))
  {
    v27, v20, v21, v22, v23, v24, v25, v26;
    goto LABEL_17;
  }

  sub_1CEFD1104(*v27[1].tester + 32 * v56, aBlock);
  v27, v57, v58, v59, v60, v61, v62, v63;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v64 = 0;
    goto LABEL_18;
  }

  v64 = v86;
LABEL_18:
  v65 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v66 = sub_1CF9E6108();
  v67 = sub_1CF9E7298();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 134217984;
    *(v68 + 4) = v64;
    _os_log_impl(&dword_1CEFC7000, v66, v67, "💾 CD was able to purge: %lld bytes", v68, 0xCu);
    MEMORY[0x1D386CDC0](v68, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v69 = v83;
  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  *(v70 + 24) = v64;
  aBlock[4] = sub_1CF1C52EC;
  aBlock[5] = v70;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_22;
  v71 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v86 = MEMORY[0x1E69E7CC0];
  sub_1CF1C52F4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v9, v6, v71);
  _Block_release(v71);
  (*(v82 + 8))(v6, v4);
  (*(v80 + 8))(v9, v81);

  v55 = 1;
LABEL_21:
  sub_1CF1C1CFC();
  return v85(v55);
}

uint64_t sub_1CF1C3AAC(char *a1, uint64_t a2)
{
  v4 = objc_sync_enter(a1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v10 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF1C3C64(a1);
  result = objc_sync_exit(a1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v10 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  a1[qword_1EDEBB6F0] = 0;
  v6 = &a1[qword_1EDEBB700];
  v7 = *&a1[qword_1EDEBB700];
  if (v7)
  {
    v8 = *(v6 + 1);

    v7(a2);

    return sub_1CEFF7124(v7, v8);
  }

  return result;
}

void sub_1CF1C3C64(uint64_t a1)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  v8 = v7 * 1000000000.0;
  if (COERCE__INT64(fabs(v7 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    v9 = v8;
    swift_beginAccess();
    *(a1 + 104) = v9;
    *(a1 + 112) = 0;
    *(a1 + 72) = 1;
    sub_1CF7F20A0();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1CF1C3DD0()
{
  v1 = qword_1EDEBB758;
  if (*(v0 + qword_1EDEBB758 + 8))
  {
    v1 = qword_1EDEBB760;
  }

  return *(v0 + v1);
}

uint64_t sub_1CF1C3DF8()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 96))
  {
    return 0;
  }

  v5 = *(v0 + 88);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v7 = v6;
  result = (*(v2 + 8))(v4, v1);
  v9 = v7 * 1000000000.0;
  if (COERCE__INT64(fabs(v7 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  if (v5 >= v9)
  {
    return 0;
  }

  v11 = __OFSUB__(v10, v5);
  v12 = v10 - v5;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = qword_1EDEBB758;
  if (*(v0 + qword_1EDEBB758 + 8))
  {
    v13 = qword_1EDEBB760;
  }

  v14 = *(v0 + v13);
  v11 = __OFSUB__(v14, v12);
  v15 = v14 - v12;
  if (!v11)
  {
    return v15 > 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1CF1C3FAC(uint64_t a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF1C410C(v1, a1, &v8);
  v4 = objc_sync_exit(v1);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v7 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v8;
}

uint64_t sub_1CF1C410C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1CF1C1F58();
  if ((result & 1) == 0)
  {
    v7 = 0;
    v8 = 128;
    goto LABEL_12;
  }

  result = sub_1CF1C3DF8();
  if (result)
  {
    v7 = 0;
    v8 = 256;
LABEL_12:
    *a3 = v7;
    *(a3 + 8) = v8;
    return result;
  }

  result = sub_1CF1C260C(1);
  if (v9)
  {
LABEL_11:
    v7 = 0;
    v8 = 0;
    goto LABEL_12;
  }

  v10 = result;
  result = sub_1CF1C1160();
  v11 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (v11 >= v10)
    {
      goto LABEL_11;
    }

    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (*(a1 + qword_1EDEBB6E8) < v13)
      {
        v8 = 0;
        v7 = 1;
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF1C4228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v8 + 16))(v10 - v7, a2, AssociatedTypeWitness, v6);
  v10[4] = a3;
  v11 = 0;
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E6708();
  sub_1CF9E6738();
  return swift_endAccess();
}

void sub_1CF1C4418(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v20 - v8;
  v10 = (a1 + qword_1EDEBB708);
  if (*(a1 + qword_1EDEBB708 + 8))
  {
    goto LABEL_5;
  }

  v26 = v2;
  v21 = *v10;
  v11 = qword_1EDEA4990;
  swift_beginAccess();
  v12 = *(a1 + v11);
  swift_getAssociatedConformanceWitness();

  sub_1CF9E6728();
  v12, v13, v14, v15, v16, v17, v18, v19;
  if (v23 == 1)
  {
    goto LABEL_5;
  }

  if (!__OFSUB__(v21, v22))
  {
    *v10 = v21 - v22;
    *(v10 + 8) = 0;
LABEL_5:
    (*(v6 + 16))(v9, a2, AssociatedTypeWitness, v7);
    v24 = 0;
    v25 = 1;
    swift_beginAccess();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E6708();
    sub_1CF9E6738();
    swift_endAccess();
    return;
  }

  __break(1u);
}

uint64_t sub_1CF1C4680()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF1C47CC(v0, &v6);
  v2 = objc_sync_exit(v0);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v4, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v6;
}

void sub_1CF1C47CC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CF9E7948();
  0xE000000000000000, v4, v5, v6, v7, v8, v9, v10;
  swift_beginAccess();
  if (*(a1 + 80))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(a1 + 80))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v11, v12);
  v12, v13, v14, v15, v16, v17, v18, v19;
  if ((*(a1 + 112) & 1) == 0)
  {
    sub_1CF9E7948();
    0xE000000000000000, v20, v21, v22, v23, v24, v25, v26;
    sub_1CF064F48();
    v27 = sub_1CF9E7F98();
    v29 = v28;
    MEMORY[0x1D3868CC0](v27);
    v29, v30, v31, v32, v33, v34, v35, v36;
    MEMORY[0x1D3868CC0](0x7275507473616C20, 0xEF3A657461446567);
    0xEF3A657461446567, v37, v38, v39, v40, v41, v42, v43;
  }

  if (*(a1 + 96))
  {
    goto LABEL_14;
  }

  v44 = qword_1EDEBB758;
  if (*(a1 + qword_1EDEBB758 + 8))
  {
    v44 = qword_1EDEBB760;
  }

  if (!__OFADD__(*(a1 + 88), *(a1 + v44)))
  {
    sub_1CF9E7948();
    0xE000000000000000, v45, v46, v47, v48, v49, v50, v51;
    sub_1CF064F48();
    v52 = sub_1CF9E7F98();
    v54 = v53;
    MEMORY[0x1D3868CC0](v52);
    v54, v55, v56, v57, v58, v59, v60, v61;
    MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA2E960);
    0x80000001CFA2E960, v62, v63, v64, v65, v66, v67, v68;
LABEL_14:
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    *a2 = 0x64656572476E693CLL;
    a2[1] = 0xEF3A657461745379;
    return;
  }

  __break(1u);
}

uint64_t sub_1CF1C4A10()
{
  v1 = qword_1EDEA4980;
  v2 = sub_1CF9E6498();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + qword_1EDEA4988, v2);
  *(v0 + qword_1EDEA4970 + 8), v4, v5, v6, v7, v8, v9, v10;

  *(v0 + qword_1EDEA4990), v11, v12, v13, v14, v15, v16, v17;
  swift_unknownObjectRelease();
  sub_1CEFF7124(*(v0 + qword_1EDEBB6D0), *(v0 + qword_1EDEBB6D0 + 8));
  v18 = qword_1EDEBB6D8;
  v19 = sub_1CF9E6388();
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  sub_1CEFF7124(*(v0 + qword_1EDEBB700), *(v0 + qword_1EDEBB700 + 8));
  v20 = *(v0 + qword_1EDEBB6F8);
  v21 = *(v0 + qword_1EDEBB6F8 + 8);

  return sub_1CEFF7124(v20, v21);
}

uint64_t sub_1CF1C4B70()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 64), v1, v2, v3, v4, v5, v6, v7;

  v8 = qword_1EDEA4980;
  v9 = sub_1CF9E6498();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + qword_1EDEA4988, v9);
  *(v0 + qword_1EDEA4970 + 8), v11, v12, v13, v14, v15, v16, v17;

  *(v0 + qword_1EDEA4990), v18, v19, v20, v21, v22, v23, v24;
  swift_unknownObjectRelease();
  sub_1CEFF7124(*(v0 + qword_1EDEBB6D0), *(v0 + qword_1EDEBB6D0 + 8));
  v25 = qword_1EDEBB6D8;
  v26 = sub_1CF9E6388();
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  sub_1CEFF7124(*(v0 + qword_1EDEBB700), *(v0 + qword_1EDEBB700 + 8));
  sub_1CEFF7124(*(v0 + qword_1EDEBB6F8), *(v0 + qword_1EDEBB6F8 + 8));
  return v0;
}

uint64_t sub_1CF1C4CD8()
{
  sub_1CF1C4B70();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CF1C4D5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CF1C4DB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1CF1C4E2C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = 0xED00006574617453;
  v11 = a1 == 0x7964656572476E69 && a2 == 0xED00006574617453;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0x80000001CFA2EA70;
    if (a1 == 0xD000000000000019 && 0x80000001CFA2EA70 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x677275507473616CLL && a2 == 0xED00006574614465)
    {
      0xED00006574614465, 0xED00006574614465, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v14 = sub_1CF9E8048();
      a2, v15, v16, v17, v18, v19, v20, v21;
      if (v14)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1CF1C4F5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0B8, &qword_1CF9FC5B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1C518C();
  sub_1CF9E8298();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v15) = 0;
  v9 = sub_1CF9E7D58();
  v18 = 1;
  sub_1CF1C51E0();
  sub_1CF9E7CF8();
  v14 = v15;
  v17 = v16;
  v18 = 2;
  sub_1CF9E7CF8();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v16;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9 & 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v17;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return result;
}

unint64_t sub_1CF1C518C()
{
  result = qword_1EC4BE0C0;
  if (!qword_1EC4BE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE0C0);
  }

  return result;
}

unint64_t sub_1CF1C51E0()
{
  result = qword_1EDEA8330;
  if (!qword_1EDEA8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8330);
  }

  return result;
}

unint64_t sub_1CF1C5234()
{
  result = qword_1EDEA8340;
  if (!qword_1EDEA8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8340);
  }

  return result;
}

uint64_t sub_1CF1C52F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CF1C535C()
{
  result = qword_1EC4BE0F8;
  if (!qword_1EC4BE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE0F8);
  }

  return result;
}

unint64_t sub_1CF1C53B4()
{
  result = qword_1EC4BE100;
  if (!qword_1EC4BE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE100);
  }

  return result;
}

unint64_t sub_1CF1C540C()
{
  result = qword_1EC4BE108;
  if (!qword_1EC4BE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE108);
  }

  return result;
}

uint64_t sub_1CF1C54B4()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x64657070617277;
  }
}

void sub_1CF1C54E8(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v12 = a1 == 0x64657070617277 && a2 == 0xE700000000000000;
  if (v12 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {
    0xE400000000000000, a2, a4, a5, a6, a7, a8, a9;
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

uint64_t sub_1CF1C55D0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1CF1C55EC(uint64_t a1)
{
  v2 = sub_1CF1C5FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1C5628(uint64_t a1)
{
  v2 = sub_1CF1C5FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1CF1C5670()
{
  result = sub_1CF4E0A94(MEMORY[0x1E69E7CC0]);
  off_1EDEAB9A0 = result;
  return result;
}

uint64_t sub_1CF1C5698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE128, &qword_1CF9FC958);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v31 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1C5FEC();
  sub_1CF9E82A8();
  swift_getObjectType();
  v12 = *(a4 + 24);
  swift_unknownObjectRetain();
  v12(a3, a4);
  v14 = v13;
  v33 = 1;
  v15 = v31[0];
  sub_1CF9E7EB8();
  if (v15)
  {
    swift_unknownObjectRelease();
    v14, v23, v24, v25, v26, v27, v28, v29;
  }

  else
  {
    v14, v16, v17, v18, v19, v20, v21, v22;
    v31[1] = a2;
    v32 = 0;
    sub_1CF9E7F08();
    swift_unknownObjectRelease();
  }

  return (*(v9 + 8))(v11, v8);
}

char *sub_1CF1C5870(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE110, &qword_1CF9FC740);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v45 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1C5FEC();
  sub_1CF9E8298();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v9;
  }

  LOBYTE(v48) = 1;
  v10 = sub_1CF9E7D48();
  v47 = v11;
  v46 = v10;
  if (qword_1EDEAE1F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_lock_lock(&dword_1EDEAE1F8);
  swift_endAccess();
  if (qword_1EDEAB998 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1EDEAB9A0 + 2) && (sub_1CEFE4328(v46, v47), (v12 & 1) != 0))
  {
    swift_endAccess();
    v13 = swift_dynamicCastMetatype();
  }

  else
  {
    swift_endAccess();
    v13 = 0;
  }

  swift_beginAccess();
  os_unfair_lock_unlock(&dword_1EDEAE1F8);
  swift_endAccess();
  if (v13)
  {
    v47, v14, v15, v16, v17, v18, v19, v20;
    v21 = v9;
    v9 = (*(v50 + 32))(v9, a2);
    (*(v7 + 8))(v21, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v9;
  }

  v48 = 0;
  v49 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x7473696765726E75, 0xED00002064657265);
  v23 = sub_1CF9E82E8();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0x206570797420, 0xE600000000000000);
  v34 = v46;
  v33 = v47;
  MEMORY[0x1D3868CC0](v46, v47);
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA2EAC0);
  v35 = sub_1CF9E82E8();
  v37 = v36;
  MEMORY[0x1D3868CC0](v35);
  v37, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA2EB00);
  MEMORY[0x1D3868CC0](v34, v33);
  MEMORY[0x1D3868CC0](0x29666C65732ELL, 0xE600000000000000);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

char *sub_1CF1C5C9C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = sub_1CF1C5870(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_1CF1C5D34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE110, &qword_1CF9FC740);
  sub_1CF1C5E3C(&qword_1EDEAE408, &unk_1CFA18F1C);
  result = sub_1CF9E7D88();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1CF1C5DD4(uint64_t a1)
{
  *(a1 + 8) = sub_1CF1C5E3C(&qword_1EDEAE408, &unk_1CFA18F1C);
  result = sub_1CF1C5E3C(&qword_1EDEAE410, &unk_1CFA18EF4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CF1C5E3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Continuation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF1C5E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1CF1C5EE8()
{
  result = qword_1EDEA55B0;
  if (!qword_1EDEA55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA55B0);
  }

  return result;
}

unint64_t sub_1CF1C5F40()
{
  result = qword_1EDEA55B8;
  if (!qword_1EDEA55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA55B8);
  }

  return result;
}

unint64_t sub_1CF1C5F98()
{
  result = qword_1EC4BE120;
  if (!qword_1EC4BE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE120);
  }

  return result;
}

unint64_t sub_1CF1C5FEC()
{
  result = qword_1EDEA55C0;
  if (!qword_1EDEA55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA55C0);
  }

  return result;
}

id sub_1CF1C6040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v7 = result;
    v8 = v3;
    if (![v7 integerValue])
    {
      sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
      v12 = sub_1CF9E7548();
LABEL_14:
      v14 = v12;

      return v14;
    }

    [v7 doubleValue];
    if (a1 < 2)
    {
LABEL_19:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree+DiagnosticCollection.swift", 144, 2, 15);
    }

    v10 = log(v9);
    v11 = v10 / log(a1);
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {

      return 0;
    }

    if (v11 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v11 < 9.22337204e18)
    {
      if (!__OFSUB__(a2, 1))
      {
        if (a2 - 1 >= (v11 & ~(v11 >> 63)))
        {
          v13 = v11 & ~(v11 >> 63);
        }

        else
        {
          v13 = a2 - 1;
        }

        v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        goto LABEL_14;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return result;
}

void sub_1CF1C61B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = v3;
  sub_1CF9E5C98();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v7 integerValue];
  v12 = __OFSUB__(v10, v11);
  v13 = v10 - v11;
  if (v12)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1CF1C6040(a2, a3);

    return;
  }

  v12 = __OFSUB__(0, v13);
  v15 = -v13;
  if (v12)
  {
    goto LABEL_18;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v17 = sub_1CF1C6040(a2, a3);

  if (v17)
  {
    v18 = [v17 integerValue];
    if (!__OFADD__(v18, 1))
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

      return;
    }

    goto LABEL_19;
  }
}

void sub_1CF1C6358(int a1, char *a2, uint64_t a3, void (*a4)(void *, uint64_t), void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = a3;
  v54 = *MEMORY[0x1E69E9840];
  0, a2, a3, a4, a5, a6, a7, a8;
  v12 = objc_sync_enter(a2);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v43 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v42, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v13 = objc_sync_exit(a2);
  if (v13)
  {
    MEMORY[0x1EEE9AC00](v13);
    v43 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, v42, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v48 = 0;
  v49 = 0;
  v50 = a1;
  v52 = 0;
  v51 = 0;
  v53 = 0;
  v44 = -1;
  v14 = fpfs_openfdbyhandle();
  if ((v14 & 0x80000000) != 0)
  {
    v16 = MEMORY[0x1D38683F0]();
    LODWORD(v46[0]) = 0;
    BYTE4(v46[0]) = 1;
    v47 = 0;
    v32 = sub_1CF19BBE4(v16, v46);
    sub_1CF1969CC(v46);
    swift_willThrow();
    v33 = v32;
    LODWORD(v46[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();

    0, v34, v35, v36, v37, v38, v39, v40;
    v41 = v32;
    a4(v32, 1);
  }

  else
  {
    v15 = v14;
    sub_1CF1C68C4(v14, a2, v9 & 1, &v45);
    close(v15);
    0, v17, v18, v19, v20, v21, v22, v23;
    v24 = v45;
    a4(v45, 0);
    v24, v25, v26, v27, v28, v29, v30, v31;
  }
}

void sub_1CF1C6610(uint64_t a1, char *a2, uint64_t a3, void (*a4)(void *, uint64_t), void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = a3;
  v51 = *MEMORY[0x1E69E9840];
  0, a2, a3, a4, a5, a6, a7, a8;
  v12 = objc_sync_enter(a2);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v43 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v42, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v13 = objc_sync_exit(a2);
  if (v13)
  {
    MEMORY[0x1EEE9AC00](v13);
    v43 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v42, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v48 = a1;
  v49 = 0u;
  v50 = 0u;
  v44 = -1;
  v14 = fpfs_openfdbyhandle();
  if ((v14 & 0x80000000) != 0)
  {
    v16 = MEMORY[0x1D38683F0]();
    LODWORD(v46[0]) = 0;
    BYTE4(v46[0]) = 1;
    v47 = 0;
    v32 = sub_1CF19BBE4(v16, v46);
    sub_1CF1969CC(v46);
    swift_willThrow();
    v33 = v32;
    LODWORD(v46[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();

    0, v34, v35, v36, v37, v38, v39, v40;
    v41 = v32;
    a4(v32, 1);
  }

  else
  {
    v15 = v14;
    sub_1CF1C68C4(v14, a2, v9 & 1, &v45);
    close(v15);
    0, v17, v18, v19, v20, v21, v22, v23;
    v24 = v45;
    a4(v45, 0);
    v24, v25, v26, v27, v28, v29, v30, v31;
  }
}

void sub_1CF1C68C4(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_sync_enter(a2);
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12);
    v31[-2] = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v31[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v31[0] = a4;
  v13 = a2[20];

  v14 = objc_sync_exit(a2);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v31[-2] = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v31[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  (*(v9 + 16))(v11, v13 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v8);

  v15 = objc_allocWithZone(FPDiagnosticCollector);
  v16 = sub_1CF9E5928();
  (*(v9 + 8))(v11, v8);
  v17 = [v15 initWithFD:a1 trashURL:v16 isExternalQuery:a3 & 1];

  v32[0] = 0;
  if ([v17 collectDiagnosticDiskAttributesWithError_])
  {
    v18 = v32[0];
    v19 = [v17 diagnostic];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for FPDiagnosticAttributeKey(0);
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      sub_1CF01C3E4(&qword_1EC4BD678, type metadata accessor for FPDiagnosticAttributeKey, &unk_1CF9F9B24);
      v21 = sub_1CF9E6638();

      v22 = sub_1CF1C6C98(v21);
      v21, v23, v24, v25, v26, v27, v28, v29;

      *v31[0] = v22;
      return;
    }

    type metadata accessor for NSFileProviderError(0);
    v31[1] = -1005;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF01C3E4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
  }

  else
  {
    v30 = v32[0];
    sub_1CF9E57F8();
  }

  swift_willThrow();
}

id sub_1CF1C6C98(uint64_t a1)
{
  v2 = v1;
  v286 = sub_1CF9E6118();
  v4 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v6 = &v245 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v245 - v12;
  sub_1CF9E5CE8();
  (*(v8 + 16))(v10, v13, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v16 = *(v8 + 32);
  v289 = v15;
  v16(v15 + v14, v10, v7);
  v17 = *MEMORY[0x1E6967028];
  v18 = *(a1 + 16);

  v283 = v6;
  v284 = a1;
  v288 = v2;
  v248 = v7;
  v247 = v8;
  v246 = v13;
  v287 = v4;
  if (!v18)
  {
    v19 = v17;
LABEL_6:
    v282 = 0;
    v26 = v289;
    goto LABEL_7;
  }

  v19 = v17;
  v20 = sub_1CEFE863C(v17);
  if ((v21 & 1) == 0)
  {
    goto LABEL_6;
  }

  v22 = *(*(a1 + 56) + 8 * v20);
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
    goto LABEL_6;
  }

  v24 = v23;
  v25 = v22;
  v26 = v289;
  v282 = v24;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE130, &qword_1CF9FC970);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1CF9FC960;
  *&v279 = *MEMORY[0x1E6967088];
  *(v27 + 32) = v279;
  v285 = (v27 + 32);
  *(v27 + 40) = sub_1CF1C846C;
  *(v27 + 48) = 0;
  v272 = *MEMORY[0x1E6967098];
  *(v27 + 56) = v272;
  *(v27 + 64) = sub_1CF1C846C;
  v28 = *MEMORY[0x1E6967090];
  *(v27 + 72) = 0;
  *(v27 + 80) = v28;
  v275 = v28;
  *(v27 + 88) = sub_1CF1C846C;
  *(v27 + 96) = 0;
  v276 = *MEMORY[0x1E6967080];
  *(v27 + 104) = v276;
  *(v27 + 112) = sub_1CF1C8478;
  *(v27 + 120) = 0;
  v274 = *MEMORY[0x1E6967050];
  *(v27 + 128) = v274;
  *(v27 + 136) = sub_1CF1C846C;
  *(v27 + 144) = 0;
  v29 = *MEMORY[0x1E6966FE8];
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1CF1C8600;
  *(v30 + 24) = v26;
  v278 = v29;
  *(v27 + 152) = v29;
  *(v27 + 160) = sub_1CF1C8674;
  *(v27 + 168) = v30;
  v263 = *MEMORY[0x1E6966FF0];
  *(v27 + 176) = v263;
  *(v27 + 184) = sub_1CF1C8478;
  *(v27 + 192) = 0;
  v31 = *MEMORY[0x1E6967058];
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1CF1C8600;
  *(v32 + 24) = v26;
  v265 = v31;
  *(v27 + 200) = v31;
  *(v27 + 208) = sub_1CF1C86B0;
  *(v27 + 216) = v32;
  v33 = *MEMORY[0x1E6967020];
  *(v27 + 224) = *MEMORY[0x1E6967020];
  *(v27 + 232) = sub_1CF1C846C;
  v34 = *MEMORY[0x1E6967078];
  *(v27 + 240) = 0;
  *(v27 + 248) = v34;
  v251 = v34;
  *(v27 + 256) = sub_1CF1C8480;
  *(v27 + 264) = 0;
  v35 = *MEMORY[0x1E6966FE0];
  *(v27 + 272) = *MEMORY[0x1E6966FE0];
  *(v27 + 280) = sub_1CF1C846C;
  *(v27 + 288) = 0;
  *(v27 + 296) = v19;
  v36 = v19;
  *(v27 + 304) = sub_1CF050EC0;
  *(v27 + 312) = 0;
  v256 = *MEMORY[0x1E6967010];
  *(v27 + 320) = v256;
  *(v27 + 328) = sub_1CF1C846C;
  v37 = *MEMORY[0x1E6967040];
  *(v27 + 336) = 0;
  *(v27 + 344) = v37;
  v260 = v37;
  v38 = MEMORY[0x1E6967018];
  *(v27 + 352) = sub_1CF1C84AC;
  *(v27 + 360) = 0;
  v39 = *v38;
  *(v27 + 368) = *v38;
  *(v27 + 376) = sub_1CF1C846C;
  v40 = *MEMORY[0x1E6967000];
  *(v27 + 384) = 0;
  *(v27 + 392) = v40;
  v252 = v40;
  v41 = MEMORY[0x1E6967030];
  *(v27 + 400) = sub_1CF1C846C;
  *(v27 + 408) = 0;
  v250 = *v41;
  *(v27 + 416) = v250;
  *(v27 + 424) = sub_1CF1C8478;
  v42 = *MEMORY[0x1E6967048];
  *(v27 + 432) = 0;
  *(v27 + 440) = v42;
  v255 = v42;
  *(v27 + 448) = sub_1CF1C84D8;
  *(v27 + 456) = 0;
  v249 = *MEMORY[0x1E6967068];
  *(v27 + 464) = v249;
  *(v27 + 472) = sub_1CF1C84D8;
  v43 = *MEMORY[0x1E6967070];
  *(v27 + 480) = 0;
  *(v27 + 488) = v43;
  v254 = v43;
  *(v27 + 496) = sub_1CF1C84D8;
  *(v27 + 504) = 0;
  v258 = *MEMORY[0x1E6967008];
  *(v27 + 512) = v258;
  *(v27 + 520) = sub_1CF1C8504;
  *(v27 + 528) = 0;
  v253 = *MEMORY[0x1E6967038];
  *(v27 + 536) = v253;
  *(v27 + 544) = sub_1CF1C8478;
  *(v27 + 552) = 0;
  v44 = *MEMORY[0x1E6966FF8];
  v45 = swift_allocObject();
  v46 = v288;
  *(v45 + 16) = sub_1CF1C866C;
  *(v45 + 24) = v46;
  v259 = v44;
  *(v27 + 560) = v44;
  *(v27 + 568) = sub_1CF1C86B0;
  *(v27 + 576) = v45;
  v47 = *MEMORY[0x1E6967060];
  *(v27 + 584) = *MEMORY[0x1E6967060];
  *(v27 + 592) = sub_1CF1C84AC;
  *(v27 + 600) = 0;
  v48 = *MEMORY[0x1E6966F98];
  *(v27 + 608) = *MEMORY[0x1E6966F98];
  *(v27 + 616) = sub_1CF1C8504;
  *(v27 + 624) = 0;
  v257 = *MEMORY[0x1E6966F80];
  *(v27 + 632) = v257;
  *(v27 + 640) = sub_1CF1C8478;
  *(v27 + 648) = 0;
  v261 = *MEMORY[0x1E6966FB8];
  *(v27 + 656) = v261;
  *(v27 + 664) = sub_1CF1C846C;
  *(v27 + 672) = 0;
  v262 = *MEMORY[0x1E6966FA8];
  *(v27 + 680) = v262;
  *(v27 + 688) = sub_1CF1C8504;
  *(v27 + 696) = 0;
  v264 = *MEMORY[0x1E6966FA0];
  *(v27 + 704) = v264;
  *(v27 + 712) = sub_1CF1C8504;
  *(v27 + 720) = 0;
  v267 = *MEMORY[0x1E6966F78];
  *(v27 + 728) = v267;
  *(v27 + 736) = sub_1CF1C856C;
  *(v27 + 744) = 0;
  v266 = *MEMORY[0x1E6966FB0];
  *(v27 + 752) = v266;
  *(v27 + 760) = sub_1CF1C846C;
  *(v27 + 768) = 0;
  v268 = *MEMORY[0x1E6966F90];
  *(v27 + 776) = v268;
  *(v27 + 784) = sub_1CF1C846C;
  *(v27 + 792) = 0;
  v269 = *MEMORY[0x1E6966F88];
  *(v27 + 800) = v269;
  *(v27 + 808) = sub_1CF1C846C;
  *(v27 + 816) = 0;
  v270 = *MEMORY[0x1E6966F70];
  *(v27 + 824) = v270;
  *(v27 + 832) = sub_1CF1C846C;
  *(v27 + 840) = 0;
  v271 = *MEMORY[0x1E69670C8];
  *(v27 + 848) = v271;
  *(v27 + 856) = sub_1CF1C8478;
  *(v27 + 864) = 0;
  v273 = *MEMORY[0x1E69670B8];
  *(v27 + 872) = v273;
  *(v27 + 880) = sub_1CF1C8478;
  *(v27 + 888) = 0;
  v277 = *MEMORY[0x1E69670C0];
  *(v27 + 896) = v277;
  *(v27 + 904) = sub_1CF1C8478;
  *(v27 + 912) = 0;
  v280 = *MEMORY[0x1E69670B0];
  *(v27 + 920) = v280;
  *(v27 + 928) = sub_1CF1C8478;
  *(v27 + 936) = 0;
  v49 = *MEMORY[0x1E69670A8];
  *(v27 + 944) = *MEMORY[0x1E69670A8];
  *(v27 + 952) = sub_1CF1C8504;
  *(v27 + 960) = 0;
  v50 = *MEMORY[0x1E69670A0];
  *(v27 + 968) = *MEMORY[0x1E69670A0];
  *(v27 + 976) = sub_1CF1C846C;
  *(v27 + 984) = 0;
  v281 = *MEMORY[0x1E6966FC8];
  *(v27 + 992) = v281;
  *(v27 + 1000) = sub_1CF1C846C;
  *(v27 + 1008) = 0;
  v290 = *MEMORY[0x1E6966FD0];
  v51 = v282;
  if (v282)
  {
    swift_retain_n();
    v52 = v279;
    v53 = v272;
    v54 = v275;
    v55 = v276;
    v56 = v274;
    v57 = v278;
    v58 = v263;
    v59 = v265;
    v60 = v33;
    v61 = v251;
    v62 = v35;
    v63 = v36;
    v64 = v256;
    v65 = v260;
    v66 = v39;
    v67 = v252;
    v68 = v250;
    v69 = v255;
    v70 = v249;
    v71 = v254;
    v72 = v258;
    v73 = v253;
    v74 = v259;
    v75 = v288;

    v76 = v47;
    v77 = v48;
    v78 = v257;
    v79 = v261;
    v80 = v262;
    v81 = v264;
    v82 = v267;
    v83 = v266;
    v84 = v268;
    v85 = v269;
    v86 = v270;
    v87 = v271;
    v88 = v273;
    v89 = v277;
    v90 = v280;
    v91 = v49;
    v92 = v50;
    v93 = v281;
    v94 = v290;
    v95 = v290;
    v96 = [v51 unsignedLongLongValue];
    v51 = swift_allocObject();
    v51[2] = v96;
    v97 = sub_1CF1C86A8;
  }

  else
  {
    swift_retain_n();
    v98 = v279;
    v99 = v272;
    v100 = v275;
    v101 = v276;
    v102 = v274;
    v103 = v278;
    v104 = v263;
    v105 = v265;
    v106 = v33;
    v107 = v251;
    v108 = v35;
    v109 = v36;
    v110 = v256;
    v111 = v260;
    v112 = v39;
    v113 = v252;
    v114 = v250;
    v115 = v255;
    v116 = v249;
    v117 = v254;
    v118 = v258;
    v119 = v253;
    v120 = v259;
    v75 = v288;

    v121 = v47;
    v122 = v48;
    v123 = v257;
    v124 = v261;
    v125 = v262;
    v126 = v264;
    v127 = v267;
    v128 = v266;
    v129 = v268;
    v130 = v269;
    v131 = v270;
    v132 = v271;
    v133 = v273;
    v134 = v277;
    v135 = v280;
    v136 = v49;
    v137 = v50;
    v138 = v281;
    v94 = v290;
    v139 = v290;
    v97 = sub_1CF1C7F54;
  }

  v140 = v97;
  v141 = swift_allocObject();
  *(v141 + 16) = v140;
  *(v141 + 24) = v51;
  *(v27 + 1016) = v94;
  *(v27 + 1024) = sub_1CF1C86B0;
  *(v27 + 1032) = v141;
  v290 = *MEMORY[0x1E6966FC0];
  v142 = v290;
  v143 = swift_allocObject();
  v144 = v289;
  *(v143 + 16) = sub_1CF1C8600;
  *(v143 + 24) = v144;
  *(v27 + 1040) = v142;
  *(v27 + 1048) = sub_1CF1C86B0;
  *(v27 + 1056) = v143;
  v281 = *MEMORY[0x1E6966FD8];
  v145 = v281;
  v146 = swift_allocObject();
  *(v146 + 16) = sub_1CF1C866C;
  *(v146 + 24) = v75;
  *(v27 + 1064) = v145;
  *(v27 + 1072) = sub_1CF1C86B0;
  *(v27 + 1080) = v146;
  v280 = *MEMORY[0x1E6966E40];
  *(v27 + 1088) = v280;
  *(v27 + 1096) = sub_1CF1C8504;
  *(v27 + 1104) = 0;
  *&v279 = *MEMORY[0x1E6966E58];
  *(v27 + 1112) = v279;
  *(v27 + 1120) = sub_1CF1C846C;
  *(v27 + 1128) = 0;
  v147 = *MEMORY[0x1E6966E48];
  *(v27 + 1136) = *MEMORY[0x1E6966E48];
  *(v27 + 1144) = sub_1CF1C846C;
  *(v27 + 1152) = 0;
  v148 = *MEMORY[0x1E6966E60];
  *(v27 + 1160) = *MEMORY[0x1E6966E60];
  *(v27 + 1168) = sub_1CF1C846C;
  *(v27 + 1176) = 0;
  v149 = *MEMORY[0x1E6966E50];
  *(v27 + 1184) = *MEMORY[0x1E6966E50];
  *(v27 + 1192) = sub_1CF1C8478;
  *(v27 + 1200) = 0;
  v150 = *MEMORY[0x1E6966F58];
  *(v27 + 1208) = *MEMORY[0x1E6966F58];
  *(v27 + 1216) = sub_1CF1C846C;
  *(v27 + 1224) = 0;
  v151 = *MEMORY[0x1E6966F50];
  *(v27 + 1232) = *MEMORY[0x1E6966F50];
  *(v27 + 1240) = sub_1CF1C846C;
  *(v27 + 1248) = 0;
  v152 = *MEMORY[0x1E6966F48];
  *(v27 + 1256) = *MEMORY[0x1E6966F48];
  *(v27 + 1264) = sub_1CF1C846C;
  *(v27 + 1272) = 0;
  v153 = *MEMORY[0x1E6966F68];
  *(v27 + 1280) = *MEMORY[0x1E6966F68];
  *(v27 + 1288) = sub_1CF1C846C;
  *(v27 + 1296) = 0;
  v154 = *MEMORY[0x1E6966F60];
  *(v27 + 1304) = *MEMORY[0x1E6966F60];
  *(v27 + 1312) = sub_1CF1C846C;
  *(v27 + 1320) = 0;

  v155 = v290;
  v156 = v281;
  v157 = v280;
  v158 = v279;
  v159 = v147;
  v160 = v148;
  v161 = v149;
  v162 = v150;
  v163 = v151;
  v164 = v152;
  v165 = v153;
  v166 = v154;
  v290 = sub_1CF4E0B90(v27);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE138, &qword_1CF9FC978);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v167 = v284;
  v168 = (v284 + 64);
  v169 = 1 << *(v284 + 32);
  v170 = -1;
  if (v169 < 64)
  {
    v170 = ~(-1 << v169);
  }

  v171 = v170 & *(v284 + 64);
  v172 = (v169 + 63) >> 6;
  v285 = (v287 + 8);

  v173 = 0;
  v278 = MEMORY[0x1E69E7CC8];
  *&v174 = 136315138;
  v279 = v174;
  v175 = v283;
  v287 = v172;
  v280 = v168;
  while (1)
  {
    v176 = v173;
    if (!v171)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v173 = v176;
LABEL_18:
      v177 = __clz(__rbit64(v171));
      v171 &= v171 - 1;
      v178 = (v173 << 9) | (8 * v177);
      v179 = *(*(v167 + 56) + v178);
      v180 = *v290->tree;
      v181 = *(*(v167 + 48) + v178);
      v182 = v179;
      if (v180)
      {
        v183 = sub_1CEFE863C(v181);
        if (v184)
        {
          break;
        }
      }

      v185 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v186 = v181;
      v187 = sub_1CF9E6108();
      v188 = sub_1CF9E72B8();

      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        v281 = v182;
        v190 = v189;
        v191 = swift_slowAlloc();
        v292 = v191;
        *v190 = v279;
        v192 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v194 = v193;
        v195 = sub_1CEFD0DF0(v192, v193, &v292);
        v168 = v280;
        v194, v196, v197, v198, v199, v200, v201, v202;
        *(v190 + 4) = v195;
        v167 = v284;
        _os_log_impl(&dword_1CEFC7000, v187, v188, "Ignoring entry %s in telemetry: unknown entry", v190, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v191);
        v203 = v191;
        v175 = v283;
        MEMORY[0x1D386CDC0](v203, -1, -1);
        MEMORY[0x1D386CDC0](v190, -1, -1);
      }

      else
      {
      }

      (*v285)(v175, v286);
      v176 = v173;
      v172 = v287;
      if (!v171)
      {
LABEL_15:
        while (1)
        {
          v173 = v176 + 1;
          if (__OFADD__(v176, 1))
          {
            break;
          }

          if (v173 >= v172)
          {
            (*(v247 + 8))(v246, v248);

            v290, v237, v238, v239, v240, v241, v242, v243;

            return v278;
          }

          v171 = *(v168 + v173);
          ++v176;
          if (v171)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_40;
      }
    }

    v204 = *(*v290[1].tester + 16 * v183);
    v292 = v182;

    v204(&v291, &v292);

    v205 = v291;
    if (!v291)
    {

      continue;
    }

    v281 = v182;
    v206 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v208 = v207;
    v209 = v205;
    v210 = v208;
    v277 = v209;
    v211 = v278;
    LODWORD(v276) = swift_isUniquelyReferenced_nonNull_native();
    v292 = v211;
    v212 = v206;
    v220 = sub_1CEFE4328(v206, v210);
    v221 = v211[2];
    v222 = (v213 & 1) == 0;
    v223 = v221 + v222;
    if (__OFADD__(v221, v222))
    {
      break;
    }

    if (v211[3] >= v223)
    {
      if (v276)
      {
        if (v213)
        {
          goto LABEL_34;
        }
      }

      else
      {
        LODWORD(v278) = v213;
        sub_1CF7CF818();
        v213 = v278;
        if (v278)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      LODWORD(v278) = v213;
      sub_1CF7C3E7C(v223, v276);
      v224 = sub_1CEFE4328(v212, v210);
      v226 = v225 & 1;
      v213 = v278;
      if ((v278 & 1) != v226)
      {
        goto LABEL_42;
      }

      v220 = v224;
      if (v278)
      {
LABEL_34:
        v210, v213, v214, v215, v216, v217, v218, v219;
        v278 = v292;
        v227 = v292[7];
        v228 = *(v227 + 8 * v220);
        v229 = v277;
        *(v227 + 8 * v220) = v277;

        v172 = v287;
        continue;
      }
    }

    v230 = v210;
    v231 = v292;
    v292[(v220 >> 6) + 8] |= 1 << v220;
    v232 = (v231[6] + 16 * v220);
    *v232 = v212;
    v232[1] = v230;
    v233 = v277;
    *(v231[7] + 8 * v220) = v277;

    v234 = v231[2];
    v235 = __OFADD__(v234, 1);
    v236 = v234 + 1;
    if (v235)
    {
      goto LABEL_41;
    }

    v278 = v231;
    v231[2] = v236;
    v172 = v287;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

char *sub_1CF1C7F5C(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = a1;
    if (![v3 integerValue])
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      goto LABEL_7;
    }

    v5 = sub_1CF1C6040(16, 10);
    if (v5)
    {
      v6 = v5;
      result = [v5 integerValue];
      if (!__OFADD__(result, 1))
      {
        v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

        v4 = v6;
LABEL_7:

        return v7;
      }

      __break(1u);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1CF1C8040(uint64_t a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = [result integerValue];
    if (v2 == getuid())
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }

    else if (v2)
    {
      v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      if (v2 > 999)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      return [v3 initWithInteger_];
    }

    else
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }
  }

  return result;
}

id sub_1CF1C80F4(uint64_t a1, void *a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = [result unsignedLongLongValue];
    v5 = objc_sync_enter(a2);
    if (!v5)
    {
      v6 = a2[20];

      v7 = objc_sync_exit(a2);
      if (v7)
      {
        goto LABEL_18;
      }

      v8 = *(v6 + 24);

      if (v4 == v8)
      {
        v9 = 0;
        return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      }

      v5 = objc_sync_enter(a2);
      if (!v5)
      {
        v10 = a2[20];

        v7 = objc_sync_exit(a2);
        if (!v7)
        {
          v11 = *(v10 + 32);

          v19 = *v11->tree;
          v20 = 32;
          v9 = 2;
          while (v19)
          {
            v21 = *(&v11->super.isa + v20);
            v20 += 8;
            --v19;
            if (v21 == v4)
            {
              v9 = 1;
              break;
            }
          }

          v11, v12, v13, v14, v15, v16, v17, v18;
          return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        }

LABEL_18:
        MEMORY[0x1EEE9AC00](v7);
        v23 = a2;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v22, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }
    }

    MEMORY[0x1EEE9AC00](v5);
    v23 = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v22, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  return result;
}

id sub_1CF1C8340(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = a1;
  if ([v3 integerValue] == 128)
  {

    v5 = v4;
    return v4;
  }

  sub_1CF5174A4(2);
  v8 = v7;

  return v8;
}

id sub_1CF1C83CC(uint64_t a1, id a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = [result unsignedLongLongValue];
    if (v4 == a2)
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }

    else
    {
      v5 = v4;
      v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      if (v5 <= a2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      return [v6 initWithInteger_];
    }
  }

  return result;
}

id sub_1CF1C846C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

id sub_1CF1C8480@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1CF1C8040(*a1);
  *a2 = result;
  return result;
}

id sub_1CF1C84AC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_1CF1C8340(*a1);
  *a2 = result;
  return result;
}

char *sub_1CF1C84D8@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  result = sub_1CF1C7F5C(*a1);
  *a2 = result;
  return result;
}

void sub_1CF1C850C(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    sub_1CF5174A4(a2);
  }

  *a3 = v5;
}

void sub_1CF1C856C(uint64_t *a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 fp_obfuscatedFilename];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v6 = v5;

    v7 = sub_1CF9E6888();
    v6, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
}

uint64_t sub_1CF1C8674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1CF1C86B8()
{
  result = qword_1EDEACB58;
  if (!qword_1EDEACB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB58);
  }

  return result;
}

void sub_1CF1C8750(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  if (*(a1 + 24))
  {
    sub_1CEFE9EB8(a1, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1CF1D154C(v22, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v7, v8, v9, v10, v11, v12, v13;
    *v3 = v21;
  }

  else
  {
    sub_1CEFCCC44(a1, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    sub_1CF1CE4A0(a2, a3, v22);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_1CEFCCC44(v22, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

void sub_1CF1C8820(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_1CF1D262C(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1CF7CF818, sub_1CF7C3E7C);
    a3, v9, v10, v11, v12, v13, v14, v15;
    *v3 = v34;
  }

  else
  {
    v16 = sub_1CEFE4328(a2, a3);
    v18 = v17;
    a3, v17, v19, v20, v21, v22, v23, v24;
    if (v18)
    {
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v4;
      v35 = *v4;
      if (!v25)
      {
        sub_1CF7CF818();
        v33 = v35;
      }

      *(*(v33 + 48) + 16 * v16 + 8), v26, v27, v28, v29, v30, v31, v32;

      sub_1CF1CF7C8(v16, v33);
      *v4 = v33;
    }
  }
}

void sub_1CF1C8940(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1CEFE9EB8(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1CF1D3EE0(v6, a2, isUniquelyReferenced_nonNull_native, sub_1CEFE863C, sub_1CF7CF82C, sub_1CF7C3E90, type metadata accessor for FPDiagnosticAttributeKey);

    *v2 = v5;
  }

  else
  {
    sub_1CEFCCC44(a1, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    sub_1CF1CE5F4(a2, v6);

    sub_1CEFCCC44(v6, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

void sub_1CF1C8A44(uint64_t a1, uint64_t a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v4;
    sub_1CF1D19D0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    a4, v11, v12, v13, v14, v15, v16, v17;
    *v4 = v43;
  }

  else
  {
    v18 = sub_1CEFE4328(a3, a4);
    v20 = v19;
    a4, v19, v21, v22, v23, v24, v25, v26;
    if (v20)
    {
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v5;
      v44 = *v5;
      if (!v27)
      {
        sub_1CF7CF854();
        v35 = v44;
      }

      *(*(v35 + 48) + 16 * v18 + 8), v28, v29, v30, v31, v32, v33, v34;
      *(*(v35 + 56) + 16 * v18 + 8), v36, v37, v38, v39, v40, v41, v42;
      sub_1CF1CED38(v18, v35);
      *v5 = v35;
    }
  }
}

uint64_t sub_1CF1C8B4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1E8, &unk_1CF9FCBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for SyncState(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1CEFCCC44(a1, &qword_1EC4BE1E8, &unk_1CF9FCBD0);
    v14 = sub_1CF7BF4F4(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7CFBE4();
        v18 = v22;
      }

      sub_1CF04DC10(*(v18 + 56) + *(v10 + 72) * v16, v8);
      sub_1CF1CF0B0(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1CEFCCC44(v8, &qword_1EC4BE1E8, &unk_1CF9FCBD0);
  }

  else
  {
    sub_1CF04DC10(a1, v13);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1CF1D1C7C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

void sub_1CF1C8D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1CF1D1F60(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    v9 = sub_1CF7BF2C0(a2, a3);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_1CF7CFFA8();
        v13 = v15;
      }

      sub_1CF1CF5D4(v11, v13);
      *v4 = v13;
    }
  }
}

void sub_1CF1C8E7C(uint64_t a1, char a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1CEFE4328(a3, a4);
    v10 = v9;
    a4, v9, v11, v12, v13, v14, v15, v16;
    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v5;
      v35 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D012C();
        v25 = v35;
      }

      *(*(v25 + 48) + 16 * v8 + 8), v18, v19, v20, v21, v22, v23, v24;
      sub_1CF1CF7C8(v8, v25);
      *v5 = v25;
    }
  }

  else
  {
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v4;
    sub_1CF1D2C88(a1, a3, a4, v27, sub_1CF7D012C, sub_1CF7C55FC);
    a4, v28, v29, v30, v31, v32, v33, v34;
    *v4 = v36;
  }
}

void sub_1CF1C8FC0(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_1CEFCCC44(a1, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF1CE7C0(a2, a3, v9);
    a3, v15, v16, v17, v18, v19, v20, v21;
    sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v3;
    sub_1CF1D22C8(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v23, v24, v25, v26, v27, v28, v29;
    *v3 = v31;
  }
}

void sub_1CF1C9218(uint64_t a1, void *a2, void (*a3)(void), void (*a4)(uint64_t, void), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1CF1D2958(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);

    *v5 = v18;
  }

  else
  {
    v12 = sub_1CEFE863C(a2);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v19 = *v6;
      if (!v15)
      {
        a5();
        v16 = v19;
      }

      sub_1CF1D0310(v14, v16);

      *v6 = v16;
    }

    else
    {
    }
  }
}

void sub_1CF1C9370(uint64_t a1, void *a2, void (*a3)(void), void (*a4)(uint64_t, void), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1CF1D2E34(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);

    *v5 = v18;
  }

  else
  {
    v12 = sub_1CEFE863C(a2);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v19 = *v6;
      if (!v15)
      {
        a5();
        v16 = v19;
      }

      sub_1CF1D0310(v14, v16);
      *v6 = v16;
    }

    else
    {
    }
  }
}

void sub_1CF1C9498(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v4 = v3;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v3;
    sub_1CF1D3310(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    a3, v27, v28, v29, v30, v31, v32, v33;
    *v3 = v35;
  }

  else
  {
    v6 = sub_1CEFE4328(a2, a3);
    v8 = v7;
    a3, v7, v9, v10, v11, v12, v13, v14;
    if (v8)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v4;
      v34 = *v4;
      if (!v15)
      {
        sub_1CF7D1C90();
        v23 = v34;
      }

      *(*(v23 + 48) + 16 * v6 + 8), v16, v17, v18, v19, v20, v21, v22;

      sub_1CF1CF7C8(v6, v23);
      *v4 = v23;
    }
  }
}

uint64_t sub_1CF1C959C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0510, &unk_1CFA16940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  if ((*(v12 + 48))(a1, 1, v11, v13) == 1)
  {
    sub_1CEFCCC44(a1, &unk_1EC4C0510, &unk_1CFA16940);
    v16 = sub_1CF7BF2C0(a2, a3);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v24 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D2684();
        v20 = v24;
      }

      sub_1CEFE55D0(*(v20 + 56) + *(v12 + 72) * v18, v10, &qword_1EC4BE1C8, &qword_1CFA058F0);
      sub_1CF1D0D74(v18, v20, &qword_1EC4BE1C8, &qword_1CFA058F0);
      *v4 = v20;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_1CEFCCC44(v10, &unk_1EC4C0510, &unk_1CFA16940);
  }

  else
  {
    sub_1CEFE55D0(a1, v15, &qword_1EC4BE1C8, &qword_1CFA058F0);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    result = sub_1CF1D46B8(v15, a2, a3, v21, sub_1CF7D2684, sub_1CF7CA828, &qword_1EC4BE1C8, &qword_1CFA058F0);
    *v4 = v24;
  }

  return result;
}