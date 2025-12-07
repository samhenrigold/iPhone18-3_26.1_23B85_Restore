void sub_1CF39F2D8(unint64_t a1, uint64_t (*a2)(uint64_t a1), void *a3, uint64_t a4, void *a5, void *a6)
{
  v223 = a6;
  v229 = a5;
  v230 = a2;
  v231 = a1;
  v226 = sub_1CF9E6118();
  v225 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v227 = &v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v221 = &v209 - v10;
  v218 = sub_1CF9E63D8();
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v219 = &v209 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_1CF9E6448();
  v222 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v220 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v224 = &v209 - v14;
  v15 = sub_1CF9E5CF8();
  v228 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v209 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v22 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v209 - v23;
  v25 = a3;
  v240 = a3;
  v26 = a4;
  v241 = a4;
  v27 = v231;
  v28 = [v27 longAtIndex_];
  v29 = v232;
  sub_1CEFE9AC4(v28, &v236);
  if (v29)
  {

    return;
  }

  v231 = v22;
  v214 = v21;
  v212 = v17;
  v211 = v15;
  v232 = 0;
  v213 = v24;
  v215 = v25;
  v30 = v26;

  v238 = v236;
  v239 = v237;
  v31 = [v27 intAtIndex_];
  if ([v27 isNullAtIndex_])
  {
    v32 = -1;
    v33 = v20;
    v34 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  }

  else
  {
    v34 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
    v32 = [v27 longAtIndex_];
    v33 = v20;
  }

  v35 = [v27 isNullAtIndex_];
  v36 = v231;
  if (v35)
  {
    v37 = -1;
  }

  else
  {
    v37 = [v27 v34[478]];
  }

  v38 = v230;
  v39 = v232;
  (*(**(v230 + 4) + 240))(&v238, 1, &v240, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
  if (!v39)
  {
    v40 = v214;
    if ((*(v36 + 48))(v33, 1, v214) == 1)
    {
      v41 = &qword_1EC4C1B40;
      v42 = &unk_1CF9FCB70;
LABEL_15:
      v46 = sub_1CEFCCC44(v33, v41, v42);
      MEMORY[0x1EEE9AC00](v46);
      sub_1CF7D5920(sub_1CF480F9C, &v205, v47);
      MEMORY[0x1EEE9AC00](v48);
      v49 = type metadata accessor for VFSItem(0);
      v50 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
      v51 = sub_1CF042F54(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
      v52 = sub_1CF4804D8();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v205 = v49;
      v206 = v50;
      v207 = v51;
      v208 = v52;
      swift_getKeyPath();
      v54 = sub_1CF9E6288();
      if (!__OFADD__(*v55, 1))
      {
        ++*v55;
        v54(&v236, 0);

        return;
      }

      __break(1u);
      goto LABEL_90;
    }

    v43 = v33;
    v33 = v213;
    sub_1CEFE55D0(v43, v213, &unk_1EC4BE360, &qword_1CF9FE650);
    v44 = v33 + v40[12];
    v45 = type metadata accessor for ItemMetadata(0);
    if ((*(v44 + *(v45 + 80)) & 1) == 0)
    {
      v41 = &unk_1EC4BE360;
      v42 = &qword_1CF9FE650;
      goto LABEL_15;
    }

    MEMORY[0x1EEE9AC00](v45);
    v205 = v32;
    v206 = v37;
    v207 = v229;
    sub_1CF39E590(v238, v239, v215, v30, sub_1CF480FAC, (&v209 - 6));
    v231 = v31;
    if (v32 < 0)
    {
      v67 = v30;
      goto LABEL_25;
    }

    v56 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
    v57 = [objc_opt_self() requestForSelf];
    [v57 setRequestedExtent_];
    (*(**(v38 + 2) + 160))(&v236, &v238, &v240, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
    v232 = 0;
    v77 = v236;
    if (!v236)
    {
      type metadata accessor for NSFileProviderError(0);
      v233 = -1005;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF042F54(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      v87 = v236;
      swift_willThrow();

      v58 = v227;
LABEL_20:
      v59 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v60 = v87;
      v61 = sub_1CF9E6108();
      v62 = sub_1CF9E72A8();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        swift_getErrorValue();
        v65 = Error.prettyDescription.getter(v234, v235);
        *(v63 + 4) = v65;
        *v64 = v65;
        _os_log_impl(&dword_1CEFC7000, v61, v62, "⏰ BRM Materialization failed with %@, falling back to full materialization", v63, 0xCu);
        sub_1CEFCCC44(v64, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v66 = v64;
        v38 = v230;
        MEMORY[0x1D386CDC0](v66, -1, -1);
        MEMORY[0x1D386CDC0](v63, -1, -1);
      }

      else
      {
      }

      (*(v225 + 8))(v58, v226);
      v67 = v30;
LABEL_25:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
      inited = swift_initStackObject();
      v69 = MEMORY[0x1E69E7CC0];
      *(inited + 16) = MEMORY[0x1E69E7CC0];
      *(inited + 24) = v69;
      *(inited + 32) = v69;
      *(inited + 40) = v69;
      *(inited + 48) = 0;
      v70 = v212;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v72 = v71;
      v73 = *(v228 + 8);
      v74 = v211;
      v73(v70, v211);
      v75 = v72 * 1000000000.0;
      if (COERCE__INT64(fabs(v72 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v75 <= -9.22337204e18)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (v75 >= 9.22337204e18)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      if ((v231 & 0x2C) != 0)
      {
        v76 = 0x1000000;
LABEL_46:
        v88 = v215;
        sub_1CF3A0978(v238, v239, 0, v75, v76, v38, 0, inited, v215, v67);
        v89 = v212;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v91 = v90;
        v73(v89, v74);
        v92 = v91 * 1000000000.0;
        if (COERCE__INT64(fabs(v91 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        if (v92 <= -9.22337204e18)
        {
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        if (v92 >= 9.22337204e18)
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        sub_1CF7F6588(inited, v92, v88, v67);
        sub_1CEFCCC44(v213, &unk_1EC4BE360, &qword_1CF9FE650);
        swift_setDeallocating();
        *(inited + 16), v93, v94, v95, v96, v97, v98, v99;
        *(inited + 24), v100, v101, v102, v103, v104, v105, v106;
        *(inited + 32), v107, v108, v109, v110, v111, v112, v113;
        *(inited + 40), v114, v115, v116, v117, v118, v119, v120;

        v121 = v223;
LABEL_59:
        if (!__OFADD__(*v121, 1))
        {
          ++*v121;
          return;
        }

        goto LABEL_96;
      }

      if ((v231 & 0x10) != 0)
      {
        if ((v231 & 0x80) != 0)
        {
          v76 = 0x200401000000;
        }

        else
        {
          if ((v231 & 0x140) == 0)
          {
            v76 = 0x401000000;
            if ((v231 & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_45;
          }

          v76 = 0x4401000000;
        }
      }

      else if ((v231 & 0x80) != 0)
      {
        v76 = 0x200001000000;
      }

      else
      {
        if ((v231 & 0x140) == 0)
        {
          v76 = 0x1000000;
          if ((v231 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }

        v76 = 0x4001000000;
      }

      if ((v231 & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_45:
      v76 |= 0x10000000000uLL;
      goto LABEL_46;
    }

    v229 = v56;
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = v57;
    v210 = v77;
    v209 = v57;
    sub_1CF9E63E8();
    v214 = v238;
    v79 = v239;
    qos_class_self();
    v80 = v221;
    sub_1CF9E63B8();
    v81 = v217;
    v82 = *(v217 + 48);
    v83 = v218;
    if (v82(v80, 1, v218) == 1)
    {
      (*(v81 + 104))(v219, *MEMORY[0x1E69E7FA0], v83);
      v84 = v82(v80, 1, v83) == 1;
      v85 = v80;
      v86 = v212;
      if (!v84)
      {
        sub_1CEFCCC44(v85, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v81 + 32))(v219, v80, v83);
      v86 = v212;
    }

    v122 = v220;
    sub_1CF9E6428();
    v123 = v79;
    v124 = v229;
    v125 = v78;
    v126 = sub_1CF5D1668(0, v214, v123, v78 | 0x2000000000000004, 0, v229, v122, 0, v215, v30, v230);
    v127 = *(v222 + 8);
    v128 = v122;
    v129 = v216;
    v127(v128, v216);
    v127(v224, v129);
    if ((v126 - 1) >= 2u)
    {

      goto LABEL_58;
    }

    v224 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
    v130 = swift_allocObject();
    v131 = MEMORY[0x1E69E7CC0];
    v130[2] = MEMORY[0x1E69E7CC0];
    v130[3] = v131;
    v130[4] = v131;
    v130[5] = v131;
    v130[6] = 0;
    v132 = swift_initStackObject();
    *(v132 + 16) = v131;
    *(v132 + 24) = v131;
    *(v132 + 32) = v131;
    *(v132 + 40) = v131;
    *(v132 + 48) = 0;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v134 = v133;
    v222 = *(v228 + 8);
    (v222)(v86, v211);
    v135 = v134 * 1000000000.0;
    if (COERCE__INT64(fabs(v134 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v58 = v227;
    if (v135 <= -9.22337204e18)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v135 >= 9.22337204e18)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v136 = v135;
    if ((v231 & 0x2C) != 0)
    {
      v137 = 0x1000000;
LABEL_76:
      v138 = v238;
      v139 = v239;

      v140 = v136;
      v141 = v232;
      sub_1CF3A0978(v138, v139, 0, v140, v137, v230, v130, v132, v215, v30);
      v87 = v141;
      if (v141)
      {

        swift_setDeallocating();
        *(v132 + 16), v142, v143, v144, v145, v146, v147, v148;
        *(v132 + 24), v149, v150, v151, v152, v153, v154, v155;
        *(v132 + 32), v156, v157, v158, v159, v160, v161, v162;
        *(v132 + 40), v163, v164, v165, v166, v167, v168, v169;

        v38 = v230;
        goto LABEL_20;
      }

      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v171 = v170;
      (v222)(v86, v211);
      v172 = v171 * 1000000000.0;
      if (COERCE__INT64(fabs(v171 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v172 <= -9.22337204e18)
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v172 >= 9.22337204e18)
      {
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      sub_1CF7F6588(v130, v172, v215, v30);
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v174 = v173;
      (v222)(v86, v211);
      v175 = v174 * 1000000000.0;
      if (COERCE__INT64(fabs(v174 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      if (v175 <= -9.22337204e18)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v176 = v229;
      if (v175 >= 9.22337204e18)
      {
LABEL_105:
        __break(1u);
        return;
      }

      sub_1CF7F6588(v132, v175, v215, v30);
      v232 = 0;

      swift_setDeallocating();
      *(v132 + 16), v177, v178, v179, v180, v181, v182, v183;
      *(v132 + 24), v184, v185, v186, v187, v188, v189, v190;
      *(v132 + 32), v191, v192, v193, v194, v195, v196, v197;
      *(v132 + 40), v198, v199, v200, v201, v202, v203, v204;

LABEL_58:
      sub_1CEFCCC44(v213, &unk_1EC4BE360, &qword_1CF9FE650);
      v121 = v223;
      goto LABEL_59;
    }

    if ((v231 & 0x10) != 0)
    {
      if ((v231 & 0x80) != 0)
      {
        v137 = 0x200401000000;
      }

      else
      {
        if ((v231 & 0x140) == 0)
        {
          v137 = 0x401000000;
          if ((v231 & 1) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_75;
        }

        v137 = 0x4401000000;
      }
    }

    else if ((v231 & 0x80) != 0)
    {
      v137 = 0x200001000000;
    }

    else
    {
      if ((v231 & 0x140) == 0)
      {
        v137 = 0x1000000;
        if ((v231 & 1) == 0)
        {
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      v137 = 0x4001000000;
    }

    if ((v231 & 1) == 0)
    {
      goto LABEL_76;
    }

LABEL_75:
    v137 |= 0x10000000000uLL;
    goto LABEL_76;
  }
}

uint64_t sub_1CF3A0888(void *a1, unint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA42630);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  return v18;
}

void sub_1CF3A0978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v17 = a2;
  v75 = a9;
  v76 = a10;
  sub_1CF7EB934(a1, a2, a9, a10, __src);
  if (!v10)
  {
    v77 = 0;
    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1CF08B99C(__dst) == 1)
    {
      memcpy(v72, __src, sizeof(v72));
LABEL_31:
      sub_1CEFCCC44(v72, &unk_1EC4BFC20, &unk_1CFA0A290);
      return;
    }

    v48 = a5;
    memcpy(v72, __src, sizeof(v72));
    v46 = LOBYTE(v72[4]);
    v19 = BYTE1(v72[17]);
    v20 = v72[24];
    v44 = v72[31];
    v43 = LOBYTE(v72[46]);
    v41 = LOBYTE(v72[57]);
    v39 = v72[60];
    v40 = v72[59];
    v42 = v72[64];
    if (a7)
    {
      v47 = a7;
    }

    else
    {

      v47 = a8;
    }

    v45 = v48 | 1;
    if (v19 == 2)
    {
      LOBYTE(v51[0]) = 0;
      *&v55 = a1;
      WORD4(v55) = v17;
      WORD5(v55) = 3;
      BYTE3(v62) = 15;
      v22 = *(*a8 + 136);

      v21 = v22(&v55);
    }

    else
    {
    }

    v38 = (*a6)[19];
    if (((v38)(v21) & 0x20000) == 0 || (v20 & 0xF000000000000000) == 0xB000000000000000 || (v48 & 0x400001000000) != 0)
    {
      if (v46 != 4)
      {
        LOBYTE(v51[0]) = 0;
        *&v55 = a1;
        WORD4(v55) = v17;
        LOWORD(v56) = 5;
        *(&v56 + 1) = a3;
        *&v57 = a4;
        WORD1(v62) = 2572;
        (*(*v47 + 136))(&v55);
      }
    }

    else
    {
      LOBYTE(v51[0]) = 0;
      *&v55 = a1;
      WORD4(v55) = v17;
      LOWORD(v56) = 1029;
      *(&v56 + 1) = a3;
      *&v57 = a4;
      WORD1(v62) = 2572;
      (*(*v47 + 136))(&v55);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
    v23 = swift_allocObject();
    *(v23 + 152) = v17;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 1;
    *(v23 + 56) = 0u;
    *(v23 + 72) = 0u;
    *(v23 + 120) = a3;
    *(v23 + 128) = a4;
    *(v23 + 136) = v45;
    *(v23 + 144) = a1;
    v24 = 2359584;
    v25 = v48;
    if ((v48 & 0x8000) == 0)
    {
      v24 = 262432;
    }

    *(v23 + 88) = 0;
    *(v23 + 96) = v24;
    *(v23 + 104) = 0;
    *(v23 + 112) = 0;
    v26 = *(*a8 + 144);
    v26();

    v27 = v44;
    if (v44)
    {
      v37 = v26;
      v71 = v44;
      v28 = *(*a6[5] + 264);
      v29 = v44;
      v30 = v77;
      v28(&v55, &v71, &v75, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v77 = v30;
      if (v30)
      {

        goto LABEL_31;
      }

      v49[12] = v67;
      v49[13] = v68;
      v49[14] = v69;
      v49[8] = v63;
      v49[9] = v64;
      v49[10] = v65;
      v49[11] = v66;
      v49[4] = v59;
      v49[5] = v60;
      v49[6] = v61;
      v49[7] = v62;
      v49[0] = v55;
      v49[1] = v56;
      v49[2] = v57;
      v49[3] = v58;
      v51[12] = v67;
      v52 = v68;
      v53 = v69;
      v51[8] = v63;
      v51[9] = v64;
      v51[10] = v65;
      v51[11] = v66;
      v51[4] = v59;
      v51[5] = v60;
      v51[6] = v61;
      v51[7] = v62;
      v51[0] = v55;
      v51[1] = v56;
      v50 = v70;
      v54 = v70;
      v51[2] = v57;
      v51[3] = v58;
      if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v51) == 1)
      {

        v27 = 0;
        v26 = v37;
        goto LABEL_27;
      }

      v31 = ((*a6)[75])();
      v32 = sub_1CEFF8538(v52, *(&v52 + 1), 0, v31, v41 == 1, v42 & 1);
      if (v32 == 3 || v32 == 500)
      {
        sub_1CEFCCC44(v49, &qword_1EC4BECF0, &unk_1CF9FEEB0);

        v26 = v37;
LABEL_26:
        v27 = 1;
        goto LABEL_27;
      }

      v34 = v32;
      v35 = v38();
      sub_1CEFCCC44(v49, &qword_1EC4BECF0, &unk_1CF9FEEB0);

      if ((v35 & 0x40000) != 0)
      {
        v27 = 0;
        v25 = v48;
        v26 = v37;
      }

      else
      {
        v36 = v34 == 501;
        v25 = v48;
        v26 = v37;
        if (v36)
        {
          goto LABEL_26;
        }

        v27 = 0;
      }
    }

LABEL_27:
    if (v46 && v43 == 2 && (v27 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFE0, &unk_1CF9FADE0);
      v33 = swift_allocObject();
      *(v33 + 152) = v17;
      *(v33 + 16) = 0u;
      *(v33 + 32) = 0u;
      *(v33 + 48) = 1;
      *(v33 + 56) = 0u;
      *(v33 + 72) = 0u;
      *(v33 + 88) = 0;
      *(v33 + 96) = xmmword_1CF9FEC30;
      *(v33 + 112) = 0;
      *(v33 + 120) = v40;
      *(v33 + 128) = v39;
      *(v33 + 136) = v45;
      *(v33 + 144) = a1;
      if (v25 < 0)
      {
        *(v33 + 96) = 2359552;
        *(v33 + 112) = 0;
      }

      (v26)(v33);
    }

    goto LABEL_31;
  }
}

void sub_1CF3A0FDC(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = *(v3 + 16);
  if (v5)
  {
    v7 = a2;
    v9 = *(v3 + 24);

    v11 = v5(v10);
    sub_1CEFF7124(v5, v9);
    if (v11)
    {
      a3(v19, v11);
      if (v4)
      {

        return;
      }

      memcpy(v18, v19, sizeof(v18));
      if (sub_1CF08B99C(v18) == 1)
      {

        memcpy(v17, v19, sizeof(v17));
        v12 = &unk_1EC4BFC20;
        v13 = &unk_1CFA0A290;
LABEL_10:
        sub_1CEFCCC44(v17, v12, v13);
        return;
      }

      memcpy(v20, v19, sizeof(v20));
      memcpy(v21, v19, 0x208uLL);
      v14 = sub_1CF47F8E0(v21, v11, a1, v7);
      if (v14)
      {

        memcpy(v17, v20, sizeof(v17));
        v12 = &qword_1EC4BFBC0;
        v13 = &unk_1CF9FCAC0;
        goto LABEL_10;
      }

      MEMORY[0x1EEE9AC00](v14);
      v16[2] = v20;
      sub_1CF7D5920(sub_1CF480F20, v16, a1);
      if ([a1 changes])
      {
        v15 = v22;
        if (*(v22 + qword_1EDEBBAE8) == 1)
        {
          if (qword_1EDEAD4D8 != -1)
          {
            swift_once();
          }

          sub_1CF06779C(sub_1CF480F64, v15);
        }

        else
        {
          *(v22 + qword_1EDEBBAE8) = 1;
          if (qword_1EDEAD4D8 != -1)
          {
            swift_once();
          }

          [qword_1EDEBBC10 addWatcher_];
        }
      }

      memcpy(v17, v20, sizeof(v17));
      sub_1CEFCCC44(v17, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    }
  }
}

uint64_t sub_1CF3A1308(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA425D0);
  v4 = sub_1CF9E7F98();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v14 = sub_1CF39BEC8(a1, *a2, *(a2 + 8));
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0x61747320444E4120, 0xED0000203D206574);
  v24 = sub_1CF9E7F98();
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  return 0;
}

void sub_1CF3A1454(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v30 = a1;
  v31 = a2;
  v36 = a2;
  v15 = a3;
  v37 = a3;
  sub_1CEFCCBDC(a1, &v30 - v13, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 22)
  {
    sub_1CEFCCBDC(v14, v8, &qword_1EC4BE710, &qword_1CF9FE5A8);
    if ((*v8 & 0x8000000000000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
      v28 = swift_dynamicCastClass();
      v21 = a3;
      v17 = v31;
      if (v28)
      {
        v34 = v31;
        v35 = v15;
        v29 = v32;
        if (qword_1EDEAD4D8 != -1)
        {
          v28 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v28);
        *(&v30 - 2) = v33;
        *(&v30 - 1) = &v34;
        sub_1CF0674E8(sub_1CF480EC0, (&v30 - 4));

        if (v29)
        {
          sub_1CEFCCC44(v14, &qword_1EC4BE710, &qword_1CF9FE5A8);
          return;
        }
      }

      else
      {
      }

      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 14)
  {
LABEL_11:
    v21 = a3;
    v17 = v31;
    goto LABEL_14;
  }

  sub_1CEFCCBDC(v14, v11, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v17 = v31;
  if (v11[9])
  {
    v18 = v11[10];
    v19 = *v11;
    if (v18 == 1 || v18 == 6 || v18 == 23)
    {
      v38 = *v11;
      v20 = sub_1CEFCCC44(v14, &qword_1EC4BE710, &qword_1CF9FE5A8);
      MEMORY[0x1EEE9AC00](v20);
      *(&v30 - 2) = &v38;
      *(&v30 - 1) = &v36;
      v21 = v15;
      v22 = v32;
      sub_1CF3A0FDC(v17, v15, sub_1CF480EF8);

      if (v22)
      {
        return;
      }

      goto LABEL_15;
    }

    v24 = v11[8];
    v23 = *v11;
    v25 = 1;
  }

  else
  {
    v23 = *v11;
    v24 = v11[8];
    v25 = 0;
  }

  sub_1CEFD0994(v23, v24, v25);
  v21 = v15;
LABEL_14:
  sub_1CEFCCC44(v14, &qword_1EC4BE710, &qword_1CF9FE5A8);
LABEL_15:
  v26 = *(v33 + qword_1EDEBBB18);
  if (v26)
  {
    v27 = *(*(v26 + qword_1EDEBB780) + 80);

    if ((v27 & 0x40000) != 0)
    {
      sub_1CF3A6000(v30, v17, v21);
    }

    else
    {
      sub_1CF3A6A70(v30, v17, v21);
    }
  }
}

void sub_1CF3A1840(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t (*)(), _BYTE *, __n128))
{
  v9 = type metadata accessor for FPDownloadSchedulerFastPassState(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a3;
  v19 = v4;
  a4(sub_1CF4840CC, v17, v10);
  v13 = *(v4 + qword_1EDEAC820);
  if (v13)
  {
    v14 = *(*v13 + 136);
    swift_beginAccess();
    sub_1CEFDA214(v13 + v14, v12, type metadata accessor for FPDownloadSchedulerFastPassState);
    sub_1CF342D64(a3);
    sub_1CEFD5278(v12, type metadata accessor for FPDownloadSchedulerFastPassState);
  }

  v15 = sub_1CF7D5474(sub_1CF34F8C4, 0, a1, a2);
  if ([v15 next])
  {
    do
    {
      v16 = objc_autoreleasePoolPush();
      sub_1CF3A1DFC(v15, a3);
      objc_autoreleasePoolPop(v16);
    }

    while (([v15 next] & 1) != 0);
  }
}

void sub_1CF3A1AA8(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1CF9E7948();
  0xE000000000000000, v6, v7, v8, v9, v10, v11, v12;
  if (*(a2 + qword_1EDEBBAF0))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(a2 + qword_1EDEBBAF0))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v13, v14);
  v14, v15, v16, v17, v18, v19, v20, v21;
  sub_1CF4FB2BC(0xD000000000000015, 0x80000001CFA42550, v4, v5);
  0x80000001CFA42550, v22, v23, v24, v25, v26, v27, v28;
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1CF9E7948();
  0xE000000000000000, v31, v32, v33, v34, v35, v36, v37;
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  v38 = [qword_1EDEBBC10 description];
  v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v41 = v40;

  MEMORY[0x1D3868CC0](v39, v41);
  v41, v42, v43, v44, v45, v46, v47, v48;
  sub_1CF4FB2BC(v108, 0x80000001CFA42570, v29, v30);
  0x80000001CFA42570, v49, v50, v51, v52, v53, v54, v55;
  if (*(a2 + qword_1EDEBBB18))
  {
    v56 = a1[3];
    v57 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v56);

    sub_1CF9E7948();
    0xE000000000000000, v58, v59, v60, v61, v62, v63, v64;
    v65 = sub_1CF3A8440();
    v67 = v66;
    MEMORY[0x1D3868CC0](v65);
    v67, v68, v69, v70, v71, v72, v73, v74;
    sub_1CF4FB2BC(0xD00000000000001DLL, 0x80000001CFA425B0, v56, v57);

    0x80000001CFA425B0, v75, v76, v77, v78, v79, v80, v81;
  }

  if (*(a2 + qword_1EDEBBAD0))
  {
    v82 = a1[3];
    v83 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v82);

    sub_1CF9E7948();
    0xE000000000000000, v84, v85, v86, v87, v88, v89, v90;
    v91 = sub_1CF3878F8();
    v93 = v92;
    MEMORY[0x1D3868CC0](v91);
    v93, v94, v95, v96, v97, v98, v99, v100;
    sub_1CF4FB2BC(0xD00000000000001DLL, 0x80000001CFA42590, v82, v83);

    0x80000001CFA42590, v101, v102, v103, v104, v105, v106, v107;
  }
}

void sub_1CF3A1DFC(void *a1, void *a2)
{
  sub_1CEFE9AC4([a1 longAtIndex_], &v49);
  if (!v2)
  {
    v5 = [a1 longAtIndex_];
    if (v5 >= 3)
    {
      sub_1CF1DA5D8();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
    }

    else
    {
      v6 = v5;
      v7 = [a1 longAtIndex_];
      v8 = a2[3];
      v9 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v8);
      v49 = 0;
      v50 = 0xE000000000000000;
      if (v6)
      {
        if (v6 == 1)
        {
          v10 = 0x208FB8EFB696E2;
        }

        else
        {
          v10 = 0x20919B9FF0;
        }

        if (v6 == 1)
        {
          v11 = 0xA700000000000000;
        }

        else
        {
          v11 = 0xA500000000000000;
        }
      }

      else
      {
        v11 = 0xA400000000000000;
        v10 = 548638690;
      }

      MEMORY[0x1D3868CC0](v10, v11);
      v11, v13, v14, v15, v16, v17, v18, v19;
      v20 = MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      v21 = VFSItemID.description.getter(v20);
      v23 = v22;
      MEMORY[0x1D3868CC0](v21);
      v23, v24, v25, v26, v27, v28, v29, v30;
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v31 = sub_1CF7F5068(v7);
      v33 = v32;
      MEMORY[0x1D3868CC0](v31);
      v33, v34, v35, v36, v37, v38, v39, v40;
      v41 = v50;
      sub_1CF4FB2BC(v49, v50, v8, v9);
      v41, v42, v43, v44, v45, v46, v47, v48;
    }
  }
}

void sub_1CF3A1FD4(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  LODWORD(v254) = a3;
  v253 = a2;
  v258 = a1;
  v236 = sub_1CF9E63D8();
  v235 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v234 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v250 = &v220 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v220 - v15;
  v17 = sub_1CF9E6068();
  v247 = *(v17 - 8);
  v248 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v251 = &v220 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v242 = &v220 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v252 = (&v220 - v22);
  v243 = type metadata accessor for Signpost(0);
  v244 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v249 = &v220 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v246 = &v220 - v25;
  v245 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v220 - v28;
  v241 = sub_1CF9E63A8();
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v220 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CF9E6448();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v238 = &v220 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v237 = &v220 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E5268();
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v220 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v8 + 16);
  if (!v41)
  {
    return;
  }

  v229 = v40;
  v230 = v38;
  v231 = v37;
  v232 = v16;
  v42 = *(v8 + 24);

  v44 = v41(v43);
  v45 = v41;
  v46 = v44;
  sub_1CEFF7124(v45, v42);
  if (!v46)
  {
    return;
  }

  v228 = v29;
  v47 = *(v8 + qword_1EDEBBAD0);
  if (!v47)
  {
    goto LABEL_8;
  }

  v48 = v46[15];
  v50 = *(v48 + 16);
  v49 = *(v48 + 24);
  v51 = __OFSUB__(v49, v50);
  v52 = v49 - v50;
  if (v51)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v52 <= 0)
  {
LABEL_8:

    return;
  }

  v53 = sub_1CF7D55FC(a4, a5, v253, v254);
  if (v6)
  {

    return;
  }

  v54 = v53;
  if (![v53 next])
  {
    v63 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v63, v55, v56, v57, v58, v59, v60, v61;

    return;
  }

  v221 = v32;
  v222 = v31;
  v226 = v47;
  v225 = v48;
  v227 = v46;
  v224 = v8;
  v223 = 0;
  v62 = 0;
  v7 = 0;
  v63 = MEMORY[0x1E69E7CC0];
  v64 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  v233 = v54;
  do
  {
    v65 = objc_autoreleasePoolPush();
    v66 = v54;
    v67 = [v66 v64[478]];
    v255 = v65;
    if (v67 == 0x8000000000000000)
    {
      v69 = 2;
      v68 = 1;
    }

    else
    {
      v68 = v67;
      if (v67)
      {
        if (v67 < 0)
        {
          v68 = -v67;
          if (-v67 >> 32)
          {
            sub_1CF9E51B8();
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CF042F54(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
            v161 = v229;
            v162 = v231;
            sub_1CF9E57D8();
            sub_1CF9E50D8();
            (*(v230 + 8))(v161, v162);
            swift_willThrow();

            objc_autoreleasePoolPop(v65);
            v63, v163, v164, v165, v166, v167, v168, v169;

            return;
          }

          v69 = 0;
        }

        else
        {
          v69 = 1;
        }
      }

      else
      {
        v69 = 2;
      }
    }

    v70 = v64;
    v71 = [v66 v64[478]];
    v256 = v66;
    v72 = [v66 longLongAtIndex_];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_1CF1F8318(0, *v63->tree + 1, 1, v63, v73, v74, v75, v76);
    }

    v77 = v63;
    v78 = *v63->tree;
    v257 = v77;
    v79 = *v77->tester;
    if (v78 >= v79 >> 1)
    {
      v257 = sub_1CF1F8318((v79 > 1), v78 + 1, 1, v257, v73, v74, v75, v76);
    }

    v80 = v257;
    *v257->tree = v78 + 1;
    v81 = v80 + 24 * v78;
    *(v81 + 4) = v68;
    v81[40] = v69;
    *(v81 + 6) = v71;
    v51 = __OFADD__(v7, v72);
    v7 += v72;
    if (v51)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v82 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_60;
    }

    v63 = v80;
    objc_autoreleasePoolPop(v255);
    v83 = [v256 next];
    ++v62;
    v54 = v233;
    v64 = v70;
  }

  while ((v83 & 1) != 0);
  if (v82 <= 0)
  {
    goto LABEL_34;
  }

  v84 = v227;
  v85 = v227[10];

  v86 = v226;
  if ((v85 & 0x40000) == 0 || (v87 = [objc_opt_self() defaultStore], v88 = objc_msgSend(v87, sel_useCacheDeleteWhenReachingLowerBound), v87, v88))
  {
    swift_retain_n();
    if (sub_1CF38773C())
    {
    }

    else
    {
      v89 = swift_allocObject();
      v89[2] = v86;
      v89[3] = v7;
      v89[4] = sub_1CF481010;
      v89[5] = v84;
      v262 = sub_1CF48101C;
      v263 = v89;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v260 = sub_1CEFCA444;
      v261 = &block_descriptor_844;
      v90 = _Block_copy(&aBlock);

      v91 = v238;
      sub_1CF9E63F8();
      v265 = MEMORY[0x1E69E7CC0];
      sub_1CF042F54(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v92 = v239;
      v93 = v241;
      v86 = v226;
      sub_1CF9E77B8();
      MEMORY[0x1D3869630](0, v91, v92, v90);
      v94 = v90;
      v84 = v227;
      _Block_release(v94);
      (*(v240 + 8))(v92, v93);
      (*(v221 + 8))(v91, v222);
    }
  }

  v265 = v258;
  v264 = 0;
  v95 = *v63->tree;

  v103 = v225;
  if (!v95)
  {
    v7 = v223;
LABEL_45:
    v63, v96, v97, v98, v99, v100, v101, v102;
    if (v264 != 1)
    {
      v63, v124, v125, v126, v127, v128, v129, v130;

      v152 = v256;
      goto LABEL_58;
    }

    v258 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      goto LABEL_64;
    }

    goto LABEL_47;
  }

  v104 = 0;
  tree = v63[1].tree;
  v7 = v223;
  v106 = v224;
  while (v104 < v95)
  {
    v108 = *(v103 + 16);
    v107 = *(v103 + 24);
    v51 = __OFSUB__(v107, v108);
    v109 = v107 - v108;
    if (v51)
    {
      goto LABEL_63;
    }

    if (v109 < 1)
    {
      goto LABEL_45;
    }

    v110 = *(tree - 2);
    v111 = v84;
    v112 = *(tree - 8);
    v113 = *tree;
    v114 = objc_autoreleasePoolPush();
    v115 = v106;
    v116 = v114;
    sub_1CF3A34EC(v111, v113, v115, v110, v112, v253, v254, &v264, v86, &v265);
    if (v7)
    {
      v153 = v257;
      v257, v117, v118, v119, v120, v121, v122, v123;
      objc_autoreleasePoolPop(v116);
      v153, v154, v155, v156, v157, v158, v159, v160;

      return;
    }

    ++v104;
    objc_autoreleasePoolPop(v116);
    v63 = v257;
    v95 = *v257->tree;
    tree += 3;
    v106 = v224;
    v84 = v227;
    v103 = v225;
    v86 = v226;
    if (v104 == v95)
    {
      goto LABEL_45;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  swift_once();
LABEL_47:
  v131 = qword_1EDEBBE40;
  v133 = v247;
  v132 = v248;
  v134 = v252;
  (*(v247 + 56))(v252, 1, 1, v248);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v135 = sub_1CF9E7988();
  v137 = v136;
  MEMORY[0x1D3868CC0](v135);
  v137, v138, v139, v140, v141, v142, v143, v144;
  v145 = *(&aBlock + 1);
  v255 = aBlock;
  v146 = v242;
  sub_1CEFCCBDC(v134, v242, &unk_1EC4BED20, &unk_1CFA00700);
  v147 = *(v133 + 48);
  v148 = v147(v146, 1, v132);
  v149 = v228;
  v223 = v7;
  if (v148 == 1)
  {
    v150 = v131;
    v151 = v251;
    sub_1CF9E6048();
    if (v147(v146, 1, v132) != 1)
    {
      sub_1CEFCCC44(v146, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v151 = v251;
    (*(v133 + 32))(v251, v146, v132);
  }

  (*(v133 + 16))(v149, v151, v132);
  v170 = v243;
  *(v149 + *(v243 + 20)) = v131;
  v171 = v149 + *(v170 + 24);
  *v171 = "DB queue wait";
  *(v171 + 8) = 13;
  *(v171 + 16) = 2;
  v172 = v131;
  v173 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v174 = v132;
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_1CF9FA450;
  *(v175 + 56) = MEMORY[0x1E69E6158];
  *(v175 + 64) = sub_1CEFD51C4();
  *(v175 + 32) = v255;
  *(v175 + 40) = v145;
  sub_1CF9E6028(v173, &dword_1CEFC7000, v172, "DB queue wait", 13, 2, v149, "%s", 2);
  v175, v176, v177, v178, v179, v180, v181, v182;
  (*(v133 + 8))(v151, v174);
  sub_1CEFCCC44(v252, &unk_1EC4BED20, &unk_1CFA00700);
  v253 = v227[21];
  v255 = v227[8];
  (*(v221 + 56))(v232, 1, 1, v222);
  v183 = v246;
  sub_1CEFDA214(v149, v246, type metadata accessor for Signpost);
  v184 = (*(v244 + 80) + 16) & ~*(v244 + 80);
  v185 = v149;
  v186 = (v245 + v184 + 7) & 0xFFFFFFFFFFFFFFF8;
  v187 = swift_allocObject();
  v252 = type metadata accessor for Signpost;
  sub_1CEFD9F8C(v183, v187 + v184, type metadata accessor for Signpost);
  v188 = (v187 + v186);
  v254 = nullsub_1;
  *v188 = nullsub_1;
  v188[1] = 0;
  v189 = v249;
  sub_1CEFDA214(v185, v249, type metadata accessor for Signpost);
  v190 = (v186 + 23) & 0xFFFFFFFFFFFFFFF8;
  v191 = (v190 + 15) & 0xFFFFFFFFFFFFFFF8;
  v192 = (v191 + 25) & 0xFFFFFFFFFFFFFFF8;
  v193 = swift_allocObject();
  sub_1CEFD9F8C(v189, v193 + v184, v252);
  v194 = (v193 + v186);
  *v194 = sub_1CF045408;
  v194[1] = 0;
  *(v193 + v190) = v227;
  v195 = v222;
  v196 = v193 + v191;
  *v196 = "startSpeculativeBackgroundDownloads(currentDownloadsCount:with:matching:)";
  *(v196 + 8) = 73;
  *(v196 + 16) = 2;
  v197 = (v193 + v192);
  *v197 = v254;
  v197[1] = 0;
  v198 = (v193 + ((v192 + 23) & 0xFFFFFFFFFFFFFFF8));
  v199 = v224;
  *v198 = sub_1CF480FD8;
  v198[1] = v199;
  v200 = swift_allocObject();
  v200[2] = sub_1CF480FF4;
  v200[3] = v187;
  v201 = v253;
  v200[4] = v253;
  v202 = v221;

  v254 = v187;

  v203 = fpfs_current_log();
  v204 = v201[2];
  v205 = v250;
  sub_1CEFCCBDC(v232, v250, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v202 + 48))(v205, 1, v195) == 1)
  {
    sub_1CEFCCC44(v205, &unk_1EC4BE370, qword_1CFA01B30);
    v206 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v207 = v234;
    sub_1CF9E6438();
    (*(v202 + 8))(v205, v195);
    v206 = sub_1CF9E63C8();
    (*(v235 + 8))(v207, v236);
  }

  v208 = swift_allocObject();
  v208[2] = v203;
  v208[3] = sub_1CF48100C;
  v208[4] = v193;
  v262 = sub_1CEFCA438;
  v263 = v208;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v260 = sub_1CEFCA444;
  v261 = &block_descriptor_835;
  v209 = _Block_copy(&aBlock);
  v210 = v203;

  v262 = sub_1CF2AF9E8;
  v263 = v200;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v260 = sub_1CEFCA444;
  v261 = &block_descriptor_838_0;
  v211 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v204, v255, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v206, v209, v211);
  _Block_release(v211);
  _Block_release(v209);

  sub_1CEFCCC44(v232, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5278(v228, type metadata accessor for Signpost);
  v212 = v258;
  v152 = fpfs_adopt_log();
  v257, v213, v214, v215, v216, v217, v218, v219;

LABEL_58:
}

void sub_1CF3A34EC(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, void *a6, int a7, _BYTE *a8, char *a9, void *a10)
{
  v147 = a8;
  v13 = a5;
  v154 = a3;
  v146 = sub_1CF9E5CF8();
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6118();
  v150 = *(v18 - 8);
  v151 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v149 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v148 = &v142 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v142 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v161 = a4;
  v162 = v13;
  v152 = a6;
  v159 = a6;
  LODWORD(v153) = a7;
  v160 = a7;
  v29 = a1;
  if ((*(a1 + 82) & 4) != 0 && a2 == 16)
  {
    sub_1CF7FEF8C(a4, v13, 16, v152, v153);
    return;
  }

  v30 = v27;
  v143 = &v142 - v26;
  (*(**(a1 + 16) + 160))(&v156, &v161, &v159, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970, v28);
  if (!v10)
  {
    v31 = v156;
    if (v156)
    {
      v158 = v156;
      (*(**(a1 + 40) + 240))(&v158, 1, &v159, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v142 = 0;
      if ((*(v30 + 48))(v24, 1, v25) == 1)
      {

        sub_1CEFCCC44(v24, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        return;
      }

      sub_1CEFE55D0(v24, v143, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v32 = v154;
      if (a2 != 64 || (v33 = *&v154[qword_1EDEBBB18]) == 0)
      {
LABEL_14:
        v34 = a9;
        v35 = v143 + *(v25 + 48);
        v36 = *(v35 + *(type metadata accessor for ItemMetadata(0) + 104));
        v37 = objc_sync_enter(a9);
        if (v37)
        {
LABEL_75:
          MEMORY[0x1EEE9AC00](v37);
          v140 = &v142 - 4;
          v141 = v34;
          goto LABEL_77;
        }

        v38 = objc_sync_enter(a9);
        if (v38)
        {
          MEMORY[0x1EEE9AC00](v38);
          v140 = &v142 - 4;
          v141 = a9;
LABEL_77:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v140, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

        sub_1CF385874();
        v40 = v39;
        v41 = objc_sync_exit(a9);
        if (v41)
        {
          goto LABEL_78;
        }

        if ((v40 & 1) == 0)
        {
          v42 = 128;
          goto LABEL_34;
        }

        if (sub_1CF38773C())
        {
          v42 = 256;
          goto LABEL_34;
        }

        v43 = sub_1CF386068(1);
        if ((v44 & 1) == 0)
        {
          v45 = v43;
          v37 = sub_1CF3850A0();
          v46 = &v36[v37];
          if (__OFADD__(v37, v36))
          {
            __break(1u);
            goto LABEL_67;
          }

          if (v46 < v45)
          {
            v47 = __OFSUB__(v45, v46);
            v48 = v45 - v46;
            if (!v47)
            {
              if (*&a9[qword_1EDEBB6E8] < v48)
              {
                v41 = objc_sync_exit(a9);
                if (v41)
                {
                  goto LABEL_78;
                }

                v49 = v142;
                sub_1CF39E590(v161, v162, v152, v153, sub_1CF3560A8, v32);
                if (v49)
                {
LABEL_41:
                  sub_1CEFCCC44(v143, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

                  return;
                }

                v154 = a9;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DE0, &unk_1CFA05398);
                inited = swift_initStackObject();
                v51 = MEMORY[0x1E69E7CC0];
                *(inited + 16) = MEMORY[0x1E69E7CC0];
                *(inited + 24) = v51;
                *(inited + 32) = v51;
                *(inited + 40) = v51;
                *(inited + 48) = 0;
                v52 = v145;
                sub_1CF9E5CE8();
                sub_1CF9E5C98();
                v54 = v53;
                v55 = *(v144 + 8);
                v34 = (v144 + 8);
                v37 = v55(v52, v146);
                v56 = v54 * 1000000000.0;
                if (COERCE__INT64(fabs(v54 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v56 > -9.22337204e18)
                  {
                    if (v56 < 9.22337204e18)
                    {
                      if ((a2 & 0x2C) != 0)
                      {
                        v57 = 0x1000000;
                      }

                      else
                      {
                        if ((a2 & 0x10) != 0)
                        {
                          if ((a2 & 0x80) != 0)
                          {
                            v57 = 0x200401000000;
                          }

                          else if ((a2 & 0x140) != 0)
                          {
                            v57 = 0x4401000000;
                          }

                          else
                          {
                            v57 = 0x401000000;
                          }
                        }

                        else if ((a2 & 0x80) != 0)
                        {
                          v57 = 0x200001000000;
                        }

                        else if ((a2 & 0x140) != 0)
                        {
                          v57 = 0x4001000000;
                        }

                        else
                        {
                          v57 = 0x1000000;
                        }

                        if (a2)
                        {
                          v57 |= 0x10000000000uLL;
                        }
                      }

                      sub_1CF3A0978(v161, v162, 0, v56, v57, v29, 0, inited, v152, v153);
                      v106 = v145;
                      sub_1CF9E5CE8();
                      sub_1CF9E5C98();
                      v108 = v107;
                      v37 = v55(v106, v146);
                      v109 = v108 * 1000000000.0;
                      if (COERCE__INT64(fabs(v108 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        if (v109 > -9.22337204e18)
                        {
                          if (v109 < 9.22337204e18)
                          {
                            sub_1CF7F6588(inited, v109, v152, v153);
                            v156 = v31;
                            MEMORY[0x1EEE9AC00](v110);
                            v111 = v154;
                            *(&v142 - 4) = v154;
                            *(&v142 - 3) = &v156;
                            v141 = v36;
                            sub_1CF052DA4(v111, sub_1CF481044);
                            swift_setDeallocating();
                            *(inited + 16), v112, v113, v114, v115, v116, v117, v118;
                            *(inited + 24), v119, v120, v121, v122, v123, v124, v125;
                            *(inited + 32), v126, v127, v128, v129, v130, v131, v132;
                            *(inited + 40), v133, v134, v135, v136, v137, v138, v139;

                            sub_1CEFCCC44(v143, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
                            if (!__OFADD__(*a10, 1))
                            {
                              ++*a10;
                              return;
                            }

                            goto LABEL_74;
                          }

LABEL_73:
                          __break(1u);
LABEL_74:
                          __break(1u);
                          goto LABEL_75;
                        }

LABEL_72:
                        __break(1u);
                        goto LABEL_73;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }

LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }

LABEL_68:
                __break(1u);
                goto LABEL_69;
              }

              goto LABEL_33;
            }

LABEL_67:
            __break(1u);
            goto LABEL_68;
          }
        }

LABEL_33:
        v42 = 0;
LABEL_34:
        v41 = objc_sync_exit(a9);
        v58 = v149;
        if (!v41)
        {
          v59 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v60 = v161;
          v61 = v162;
          v62 = sub_1CF9E6108();
          v63 = sub_1CF9E7298();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v153 = v42;
            v65 = v64;
            v66 = v58;
            v67 = swift_slowAlloc();
            v155 = v67;
            v156 = v60;
            *v65 = 136315138;
            v157 = v61;
            v68 = VFSItemID.description.getter(v67);
            v70 = v69;
            v71 = sub_1CEFD0DF0(v68, v69, &v155);
            v70, v72, v73, v74, v75, v76, v77, v78;
            *(v65 + 4) = v71;
            _os_log_impl(&dword_1CEFC7000, v62, v63, "💾 download for file %s won't be scheduled due to disk management concerns", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v67);
            MEMORY[0x1D386CDC0](v67, -1, -1);
            v79 = v65;
            v42 = v153;
            MEMORY[0x1D386CDC0](v79, -1, -1);

            v80 = v66;
            v32 = v154;
            (*(v150 + 8))(v80, v151);
          }

          else
          {

            (*(v150 + 8))(v58, v151);
          }

          v81 = *(v32 + qword_1EDEBBB18);
          if (v81)
          {
            v82 = v81 + *(*v81 + 136);
            swift_beginAccess();
            v83 = *(v82 + *(type metadata accessor for BackgroundDownloaderPacerState(0) + 52));
            if (v83)
            {

              v84 = v83;
              sub_1CF7BEE14(v42);
            }
          }

          goto LABEL_41;
        }

LABEL_78:
        MEMORY[0x1EEE9AC00](v41);
        v141 = a9;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v142 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      if (sub_1CF3A5BD8(v143))
      {

        goto LABEL_14;
      }

      v85 = fpfs_current_or_default_log();
      v86 = v148;
      sub_1CF9E6128();
      v87 = v161;
      v88 = v162;
      v89 = sub_1CF9E6108();
      v90 = sub_1CF9E7288();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v149 = v33;
        v92 = v91;
        v93 = swift_slowAlloc();
        v155 = v93;
        v156 = v87;
        *v92 = 136446210;
        v157 = v88;
        v94 = VFSItemID.description.getter(v93);
        v96 = v95;
        v97 = sub_1CEFD0DF0(v94, v95, &v155);
        v96, v98, v99, v100, v101, v102, v103, v104;
        *(v92 + 4) = v97;
        _os_log_impl(&dword_1CEFC7000, v89, v90, "🔮  unscheduling download of item %{public}s not in the speculative set anymore", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v93);
        MEMORY[0x1D386CDC0](v93, -1, -1);
        MEMORY[0x1D386CDC0](v92, -1, -1);
      }

      (*(v150 + 8))(v86, v151);
      v105 = v142;
      sub_1CF7FEF8C(v161, v162, 64, v152, v153);

      sub_1CEFCCC44(v143, &unk_1EC4BFBD0, &unk_1CF9FCBC0);

      if (!v105)
      {
        *v147 = 1;
      }
    }
  }
}

void sub_1CF3A4210(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  if (*(a2 + qword_1EDEBBB18))
  {
    v6 = v5;

    sub_1CF35DA34(v6, v3, v4);
  }
}

id sub_1CF3A4290(unsigned __int8 a1, id a2)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      return sub_1CF086728(a1 & 0x3F, a2, *(v2 + 144), *(v2 + 152), *(v2 + 160));
    }

    v4 = *(v2 + 192);
    if (v4 >> 60 == 11)
    {
      v5 = [a2 bindObjectParameter_];
      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v6;
    }

    else
    {
      v131 = *(v2 + 168);
      *&v132 = *(v2 + 184);
      *(&v132 + 1) = v4;
      v23 = *(v2 + 216);
      v133 = *(v2 + 200);
      v134 = v23;
      *v135 = v131;
      *&v135[16] = v132;
      *&v135[24] = v4;
      *&v135[32] = v133;
      *&v135[48] = v23;
      v25 = a2;
      sub_1CF1AE1DC(v135, v130);
      v26 = sub_1CF356DB8(a1, v25);
      v130[0] = v131;
      v130[1] = v132;
      v130[2] = v133;
      v130[3] = v134;
      if (v3)
      {
        return sub_1CF1AE25C(v130);
      }

      else
      {
        v44 = v26;
        sub_1CF1AE25C(v130);
        return v44;
      }
    }
  }

  v8 = v135;
  if (a1 >> 6 != 3)
  {
    if (a1 > 0x83u)
    {
      if (a1 > 0x85u)
      {
        if (a1 == 134)
        {
          v43 = [a2 bindBooleanParameter_];
LABEL_64:
          v124 = v43;
LABEL_67:
          v126 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

          return v126;
        }

        v45 = a2;
        v86 = *(v2 + 40);
        v87 = *(v2 + 104);
        v88 = *(v2 + 88);
        v139[2] = *(v2 + 72);
        v139[3] = v88;
        v89 = *(v2 + 120);
        v140 = v87;
        v141 = v89;
        v90 = *(v2 + 56);
        v139[0] = v86;
        v139[1] = v90;
        v91 = v86;
        v92 = *(v2 + 64);
        *&v135[8] = *(v2 + 48);
        *&v135[24] = v92;
        *&v135[40] = *(v2 + 80);
        if (v140)
        {
          v93 = *(v2 + 96);
          *v135 = v86;
          *&v135[56] = v93;
          v136 = v140;
          v137 = *(v2 + 112);
          v138 = *(v2 + 128);
          sub_1CEFCCBDC(v139, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v135, &unk_1EC4BE330, &unk_1CF9FF010);
          *&v131 = v91;
          v54 = sub_1CF9E8028();
        }

        else
        {
          v125 = *(v2 + 96);
          *v135 = v86;
          *&v135[56] = v125;
          v136 = 0;
          v137 = *(v2 + 112);
          v138 = *(v2 + 128);
          sub_1CEFCCBDC(v139, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v135, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v54 = 0;
        }

LABEL_66:
        v124 = [v45 bindObjectParameter_];
        swift_unknownObjectRelease();
        goto LABEL_67;
      }

      if (a1 == 132)
      {
        v22 = v3;
        v27 = *(v2 + 136);
LABEL_43:
        *&v135[24] = MEMORY[0x1E69E6530];
        *v135 = v27;
LABEL_49:
        v84 = sub_1CEFF8EA0(v135);
        v2 = v85;
        sub_1CEFCCC44(v135, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        if (!v2)
        {
          goto LABEL_68;
        }

        return v84;
      }

      v82 = *(v2 + 137);
      v22 = v3;
      if (v82 == 6)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (a1 <= 0x81u)
      {
        v22 = v3;
        if (a1 == 128)
        {
          return sub_1CF39BEC8(a2, *v2, *(v2 + 8));
        }

        v27 = *(v2 + 16);
        goto LABEL_43;
      }

      if (a1 == 130)
      {
        v22 = v3;
        v27 = *(v2 + 24);
        goto LABEL_43;
      }

      v82 = *(v2 + 32);
      v22 = v3;
      if (v82 == 5)
      {
LABEL_47:
        v82 = 0;
        v83 = 0;
        *&v135[8] = 0;
        *&v135[16] = 0;
        goto LABEL_48;
      }
    }

    v83 = MEMORY[0x1E69E6530];
LABEL_48:
    *v135 = v82;
    *&v135[24] = v83;
    goto LABEL_49;
  }

  if (a1 > 0xC2u)
  {
    if (a1 <= 0xC4u)
    {
      v9 = a2;
      if (a1 == 195)
      {
        v10 = *(v2 + 88);
        v154 = *(v2 + 72);
        v155 = v10;
        v11 = *(v2 + 120);
        v156 = *(v2 + 104);
        v157 = v11;
        v12 = *(v2 + 56);
        v153[0] = *(v2 + 40);
        v153[1] = v12;
        v13 = *(&v155 + 1);
        v14 = v156;
        if (v156)
        {
          v15 = *(v2 + 56);
          *v135 = *(v2 + 40);
          *&v135[16] = v15;
          *&v135[32] = *(v2 + 72);
          *&v135[40] = *(&v154 + 1);
          v135[48] = v155;
          *&v135[49] = *(v2 + 89);
          *&v135[52] = *(v2 + 92);
          *&v135[56] = *(&v155 + 1);
          v136 = v156;
          v137 = *(v2 + 112);
          v138 = *(v2 + 128);
          sub_1CEFCCBDC(v153, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);

          sub_1CEFCCC44(v135, &unk_1EC4BE330, &unk_1CF9FF010);
        }

        else
        {
          v106 = *(v2 + 56);
          *v135 = *(v2 + 40);
          *&v135[16] = v106;
          *&v135[32] = *(v2 + 72);
          *&v135[40] = *(&v154 + 1);
          v135[48] = v155;
          *&v135[49] = *(v2 + 89);
          *&v135[52] = *(v2 + 92);
          *&v135[56] = *(&v155 + 1);
          v136 = 0;
          v137 = *(v2 + 112);
          v138 = *(v2 + 128);
          sub_1CEFCCBDC(v153, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v135, &unk_1EC4BECD0, &unk_1CF9FEF80);
          0, v107, v108, v109, v110, v111, v112, v113;
          v13 = 0;
        }

        v114 = sub_1CF074DF4(v13, v14, v16, v17, v18, v19, v20, v21);
        v14, v115, v116, v117, v118, v119, v120, v121;
        return v114;
      }

      else
      {
        v70 = *(v2 + 56);
        v158 = *(v2 + 40);
        v159 = v70;
        v71 = *(v2 + 104);
        v72 = *(v2 + 88);
        v160 = *(v2 + 72);
        v161 = v72;
        v73 = *(v2 + 120);
        v162 = v71;
        v163 = v73;
        v74 = v158;
        v75 = DWORD2(v158);
        v76 = v159;
        v77 = BYTE8(v159);
        if (v71)
        {
          *v135 = v158;
          *&v135[16] = v159;
          v135[24] = BYTE8(v159);
          *&v135[25] = *(v2 + 65);
          *&v135[41] = *(v2 + 81);
          *&v135[56] = *(v2 + 96);
          v136 = v71;
          v137 = *(v2 + 112);
          v138 = *(v2 + 128);
          sub_1CEFCCBDC(&v158, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v135, &unk_1EC4BE330, &unk_1CF9FF010);
          return sub_1CF1DF344(v74, v75, v76, v77 & 1);
        }

        else
        {
          *v135 = v158;
          *&v135[16] = v159;
          v135[24] = BYTE8(v159);
          *&v135[25] = *(v2 + 65);
          *&v135[41] = *(v2 + 81);
          *&v135[56] = *(v2 + 96);
          v136 = 0;
          v137 = *(v2 + 112);
          v138 = *(v2 + 128);
          sub_1CEFCCBDC(&v158, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
          sub_1CEFCCC44(v135, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v122 = [v9 bindObjectParameter_];
          v123 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

          return v123;
        }
      }
    }

    if (a1 == 197)
    {
      v35 = *(v2 + 104);
      v36 = *(v2 + 88);
      v164[2] = *(v2 + 72);
      v164[3] = v36;
      v37 = *(v2 + 120);
      v164[4] = v35;
      v164[5] = v37;
      v38 = *(v2 + 56);
      v164[0] = *(v2 + 40);
      v164[1] = v38;
      v22 = v35;
      if (v35)
      {
        while (1)
        {
          v127 = *(v2 + 56);
          *v135 = *(v2 + 40);
          *&v135[16] = v127;
          v128 = *(v2 + 88);
          *&v135[32] = *(v2 + 72);
          *&v135[48] = v128;
          *(v8 + 72) = *(v2 + 112);
          v129 = *(v2 + 128);
          v136 = v22;
          v138 = v129;
          sub_1CEFCCBDC(v164, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);

          sub_1CEFCCC44(v135, &unk_1EC4BE330, &unk_1CF9FF010);
LABEL_68:
          sub_1CF9E7B68();
          __break(1u);
        }
      }

      v39 = a2;
      v40 = *(v2 + 56);
      *v135 = *(v2 + 40);
      *&v135[16] = v40;
      v41 = *(v2 + 88);
      *&v135[32] = *(v2 + 72);
      *&v135[48] = v41;
      v137 = *(v2 + 112);
      v42 = *(v2 + 128);
      v136 = 0;
      v138 = v42;
      sub_1CEFCCBDC(v164, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v135, &unk_1EC4BECD0, &unk_1CF9FEF80);
      v43 = [v39 bindObjectParameter_];
    }

    else
    {
      v78 = *(v2 + 232);
      if (v78)
      {
        v79 = a2;
        v80 = [v78 version];
        a2 = v79;
        v81 = v80;
      }

      else
      {
        v81 = 0;
      }

      v43 = [a2 bindLongParameter_];
    }

    goto LABEL_64;
  }

  if (a1 == 192)
  {
    v45 = a2;
    v46 = *(v2 + 40);
    v47 = *(v2 + 104);
    v48 = *(v2 + 88);
    v142[2] = *(v2 + 72);
    v142[3] = v48;
    v49 = *(v2 + 120);
    v143 = v47;
    v144 = v49;
    v50 = *(v2 + 56);
    v142[0] = v46;
    v142[1] = v50;
    v51 = DWORD2(v46);
    *v135 = v46;
    *&v135[12] = *(v2 + 52);
    *&v135[28] = *(v2 + 68);
    *&v135[44] = *(v2 + 84);
    if (v143)
    {
      v52 = *(v2 + 100);
      *&v135[8] = DWORD2(v46);
      *&v135[60] = v52;
      v137 = *(v2 + 112);
      v53 = *(v2 + 128);
      v136 = v143;
      v138 = v53;
      sub_1CEFCCBDC(v142, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v135, &unk_1EC4BE330, &unk_1CF9FF010);
      LODWORD(v131) = v51;
      v54 = sub_1CF9E8028();
    }

    else
    {
      v94 = *(v2 + 100);
      *&v135[8] = DWORD2(v46);
      *&v135[60] = v94;
      v137 = *(v2 + 112);
      v95 = *(v2 + 128);
      v136 = 0;
      v138 = v95;
      sub_1CEFCCBDC(v142, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v135, &unk_1EC4BECD0, &unk_1CF9FEF80);
      v54 = 0;
    }

    goto LABEL_66;
  }

  if (a1 == 193)
  {
    v28 = a2;
    v29 = *(v2 + 56);
    v30 = *(v2 + 104);
    v31 = *(v2 + 88);
    v145[2] = *(v2 + 72);
    v145[3] = v31;
    v32 = *(v2 + 120);
    v146 = v30;
    v147 = v32;
    v145[0] = *(v2 + 40);
    v145[1] = v29;
    v33 = BYTE8(v29);
    if (v30)
    {
      *v135 = *(v2 + 40);
      *&v135[16] = v29;
      v135[24] = BYTE8(v29);
      *&v135[25] = *(v2 + 65);
      *&v135[41] = *(v2 + 81);
      *&v135[56] = *(v2 + 96);
      v136 = v146;
      v137 = *(v2 + 112);
      v138 = *(v2 + 128);
      sub_1CEFCCBDC(v145, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v135, &unk_1EC4BE330, &unk_1CF9FF010);
      if ((v33 & 1) == 0)
      {
        v34 = sub_1CF9E81A8();
LABEL_56:
        v96 = [v28 bindObjectParameter_];
        swift_unknownObjectRelease();
        v97 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

        return v97;
      }
    }

    else
    {
      *v135 = *(v2 + 40);
      *&v135[16] = v29;
      v135[24] = BYTE8(v29);
      *&v135[25] = *(v2 + 65);
      *&v135[41] = *(v2 + 81);
      *&v135[56] = *(v2 + 96);
      v136 = 0;
      v137 = *(v2 + 112);
      v138 = *(v2 + 128);
      sub_1CEFCCBDC(v145, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
      sub_1CEFCCC44(v135, &unk_1EC4BECD0, &unk_1CF9FEF80);
    }

    v34 = 0;
    goto LABEL_56;
  }

  v55 = a2;
  v56 = *(v2 + 88);
  v149 = *(v2 + 72);
  v150 = v56;
  v57 = *(v2 + 120);
  v151 = *(v2 + 104);
  v152 = v57;
  v58 = *(v2 + 56);
  v148[0] = *(v2 + 40);
  v148[1] = v58;
  v59 = *(&v149 + 1);
  v60 = v150;
  v61 = v151;
  if (v151)
  {
    v62 = *(v2 + 56);
    *v135 = *(v2 + 40);
    *&v135[16] = v62;
    *&v135[32] = *(v2 + 72);
    *&v135[40] = *(&v149 + 1);
    v135[48] = v150;
    *&v135[49] = *(v2 + 89);
    *&v135[52] = *(v2 + 92);
    *&v135[56] = *(&v150 + 1);
    v136 = v151;
    v137 = *(v2 + 112);
    v138 = *(v2 + 128);
    sub_1CEFCCBDC(v148, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);

    sub_1CEFCCC44(v135, &unk_1EC4BE330, &unk_1CF9FF010);
    v61, v63, v64, v65, v66, v67, v68, v69;
  }

  else
  {
    v98 = *(v2 + 56);
    *v135 = *(v2 + 40);
    *&v135[16] = v98;
    *&v135[32] = *(v2 + 72);
    *&v135[40] = *(&v149 + 1);
    v135[48] = v150;
    *&v135[49] = *(v2 + 89);
    *&v135[52] = *(v2 + 92);
    *&v135[56] = *(&v150 + 1);
    v136 = 0;
    v137 = *(v2 + 112);
    v138 = *(v2 + 128);
    sub_1CEFCCBDC(v148, &v131, &unk_1EC4BECD0, &unk_1CF9FEF80);
    sub_1CEFCCC44(v135, &unk_1EC4BECD0, &unk_1CF9FEF80);
    0, v99, v100, v101, v102, v103, v104, v105;
    v59 = 0;
    v60 = -1;
  }

  return sub_1CF39BEC8(v55, v59, v60);
}

__int128 *sub_1CF3A4FD4(char a1, void *a2)
{
  LOBYTE(v5) = a1;
  v6 = sub_1CF9E6938();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v5 >> 6) <= 1u)
  {
    if (!(v5 >> 6))
    {
      v12 = *(v2 + 19);
      if (v12 >> 60 != 11)
      {
        v92 = v2[8];
        *&v93 = *(v2 + 18);
        *(&v93 + 1) = v12;
        v44 = v2[11];
        v94 = v2[10];
        v95 = v44;
        v96 = v92;
        *&v97[0] = v93;
        *(&v97[0] + 1) = v12;
        v97[1] = v94;
        v97[2] = v44;
        sub_1CF1AE1DC(&v96, &v88);
        v2 = &v92;
        v45 = sub_1CF356DB8(v5, a2);
        if (v3)
        {
          v88 = v92;
          v89 = v93;
          v90 = v94;
          v91 = v95;
          sub_1CF1AE25C(&v88);
        }

        else
        {
          v2 = v45;
          v88 = v92;
          v89 = v93;
          v90 = v94;
          v91 = v95;
          sub_1CF1AE25C(&v88);
        }

        return v2;
      }

      goto LABEL_62;
    }

LABEL_12:
    v27 = sub_1CF086728(v5 & 0x3F, a2, *(v2 + 13), *(v2 + 14), *(v2 + 120));
    if (!v3)
    {
      return v27;
    }

    return v2;
  }

  v13 = &v96;
  if (v5 >> 6 == 3)
  {
    if (v5 <= 0xC2u)
    {
      if (v5 == 192)
      {
        v57 = v2[3];
        v102 = v2[2];
        v103 = v57;
        v58 = v2[5];
        v104 = v2[4];
        v105 = v58;
        v17 = *(&v102 + 1);
        v16 = v102;
        v59 = v103;
        if (v103 != 1)
        {
LABEL_67:
          *&v96 = v16;
          *(&v96 + 1) = v17;
          *(v13 + 24) = *(v2 + 56);
          *(v13 + 40) = *(v2 + 72);
          v85 = *(v2 + 11);
          *&v97[0] = v59;
          *(&v97[2] + 1) = v85;
          sub_1CEFCCBDC(&v102, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v16, v17);
          sub_1CEFCCC44(&v96, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_68;
        }

        v96 = v102;
        *(v97 + 8) = *(v2 + 56);
        *(&v97[1] + 8) = *(v2 + 72);
        v60 = *(v2 + 11);
        *&v97[0] = 1;
        *(&v97[2] + 1) = v60;
        sub_1CEFCCBDC(&v102, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFCCC44(&v96, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v51 = [a2 bindObjectParameter_];
      }

      else if (v5 == 193)
      {
        v47 = v2[3];
        v106 = v2[2];
        v107 = v47;
        v48 = v2[5];
        v108 = v2[4];
        v109 = v48;
        v17 = *(&v106 + 1);
        v16 = v106;
        v49 = v107;
        if (v107 != 1)
        {
LABEL_66:
          *&v96 = v16;
          *(&v96 + 1) = v17;
          *(v13 + 24) = *(v2 + 56);
          *(v13 + 40) = *(v2 + 72);
          v84 = *(v2 + 11);
          *&v97[0] = v49;
          *(&v97[2] + 1) = v84;
          sub_1CEFCCBDC(&v106, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v16, v17);
          sub_1CEFCCC44(&v96, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_67;
        }

        v96 = v106;
        *(v97 + 8) = *(v2 + 56);
        *(&v97[1] + 8) = *(v2 + 72);
        v50 = *(v2 + 11);
        *&v97[0] = 1;
        *(&v97[2] + 1) = v50;
        sub_1CEFCCBDC(&v106, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFCCC44(&v96, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v51 = [a2 bindObjectParameter_];
      }

      else
      {
        v61 = v2[3];
        v110[0] = v2[2];
        v110[1] = v61;
        v62 = v2[5];
        v111 = v2[4];
        v112 = v62;
        v16 = *(&v61 + 1);
        v63 = v61;
        v17 = v111;
        if (v61 != 1)
        {
LABEL_68:
          v96 = v2[2];
          *&v97[0] = v63;
          *(&v97[0] + 1) = v16;
          *(v13 + 40) = *(v2 + 72);
          v86 = *(v2 + 11);
          *&v97[1] = v17;
          *(&v97[2] + 1) = v86;
          sub_1CEFCCBDC(v110, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v16, v17);
          sub_1CEFCCC44(&v96, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_69;
        }

        v96 = v2[2];
        *&v97[0] = 1;
        *(&v97[0] + 1) = *(&v61 + 1);
        *(&v97[1] + 8) = *(v2 + 72);
        v64 = *(v2 + 11);
        *&v97[1] = v111;
        *(&v97[2] + 1) = v64;
        sub_1CEFCCBDC(v110, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFCCC44(&v96, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v51 = [a2 bindObjectParameter_];
      }
    }

    else
    {
      if (v5 <= 0xC4u)
      {
        if (v5 == 195)
        {
          v14 = v2[3];
          v113[0] = v2[2];
          v113[1] = v14;
          v15 = v2[5];
          v114 = v2[4];
          v115 = v15;
          v16 = *(&v14 + 1);
          v17 = v114;
          if (v14 == 1)
          {
            v96 = v2[2];
            *&v97[0] = 1;
            *(&v97[0] + 1) = *(&v14 + 1);
            *(&v97[1] + 8) = *(v2 + 72);
            v18 = *(v2 + 11);
            *&v97[1] = v114;
            *(&v97[2] + 1) = v18;
            v5 = &unk_1CF9FEF20;
            sub_1CEFCCBDC(v113, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
            sub_1CEFCCC44(&v96, &unk_1EC4BF2D0, &unk_1CF9FEF20);
            0, v19, v20, v21, v22, v23, v24, v25;
            v92 = 0u;
            v93 = 0u;
            v2 = sub_1CEFF8EA0(&v92);
            a2 = v26;
            sub_1CEFCCC44(&v92, &unk_1EC4BEC50, &qword_1CF9FB4B0);
            if (a2)
            {
              return v2;
            }

            goto LABEL_11;
          }

          v96 = v2[2];
          v97[0] = v14;
          *(&v97[1] + 8) = *(v2 + 72);
          v83 = *(v2 + 11);
          *&v97[1] = v114;
          *(&v97[2] + 1) = v83;
          sub_1CEFCCBDC(v113, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v16, v17);
          sub_1CEFCCC44(&v96, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_66;
        }

        v65 = v2[3];
        v116 = v2[2];
        v117 = v65;
        v66 = v2[5];
        v118 = v2[4];
        v119 = v66;
        v55 = *(&v116 + 1);
        v54 = v116;
        if (v117 == 1)
        {
          v96 = v116;
          *(v97 + 8) = *(v2 + 56);
          *(&v97[1] + 8) = *(v2 + 72);
          v67 = *(v2 + 11);
          *&v97[0] = 1;
          *(&v97[2] + 1) = v67;
          sub_1CEFCCBDC(&v116, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFCCC44(&v96, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          v51 = [a2 bindObjectParameter_];
          goto LABEL_63;
        }

        v96 = v116;
        *(v97 + 8) = *(v2 + 56);
        *(&v97[1] + 8) = *(v2 + 72);
        v80 = *(v2 + 11);
        *&v97[0] = v117;
        *(&v97[2] + 1) = v80;
        sub_1CEFCCBDC(&v116, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v54, v55);
        sub_1CEFCCC44(&v96, &unk_1EC4BF250, &unk_1CFA01B50);
        sub_1CEFE42D4(v54, v55);
        v78 = sub_1CF9E5B48();
        v79 = [a2 bindObjectParameter_];
        goto LABEL_59;
      }

      if (v5 != 197)
      {
        v68 = *(v2 + 24);
        if (v68)
        {
          v69 = [v68 version];
        }

        else
        {
          v69 = 0;
        }

        v51 = [a2 bindLongParameter_];
        goto LABEL_63;
      }

      v52 = v2[3];
      v120[0] = v2[2];
      v120[1] = v52;
      v53 = v2[5];
      v121 = v2[4];
      v122 = v53;
      v54 = *(&v52 + 1);
      v55 = v121;
      if (v52 != 1)
      {
        v96 = v2[2];
        v97[0] = v52;
        *(&v97[1] + 8) = *(v2 + 72);
        v77 = *(v2 + 11);
        *&v97[1] = v121;
        *(&v97[2] + 1) = v77;
        sub_1CEFCCBDC(v120, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFE42D4(v54, v55);
        sub_1CEFCCC44(&v96, &unk_1EC4BF250, &unk_1CFA01B50);
        sub_1CEFE42D4(v54, v55);
        v78 = sub_1CF9E5B48();
        v79 = [a2 bindObjectParameter_];
LABEL_59:
        v81 = v79;

        v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CEFE4714(v54, v55);
        sub_1CEFE4714(v54, v55);
        return v2;
      }

      v96 = v2[2];
      *&v97[0] = 1;
      *(&v97[0] + 1) = *(&v52 + 1);
      *(&v97[1] + 8) = *(v2 + 72);
      v56 = *(v2 + 11);
      *&v97[1] = v121;
      *(&v97[2] + 1) = v56;
      sub_1CEFCCBDC(v120, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      sub_1CEFCCC44(&v96, &unk_1EC4BF2D0, &unk_1CF9FEF20);
      v51 = [a2 bindObjectParameter_];
    }

LABEL_63:
    v82 = v51;
    v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v2;
  }

  if (v5 > 0x83u)
  {
    if (v5 > 0x85u)
    {
      if (v5 == 134)
      {
        v51 = [a2 bindBooleanParameter_];
      }

      else
      {
        v73 = v2[3];
        v98 = v2[2];
        v99 = v73;
        v74 = v2[5];
        v100 = v2[4];
        v101 = v74;
        v17 = *(&v98 + 1);
        v16 = v98;
        v75 = v99;
        if (v99 != 1)
        {
LABEL_69:
          *&v96 = v16;
          *(&v96 + 1) = v17;
          *(v13 + 24) = *(v2 + 56);
          *(v13 + 40) = *(v2 + 72);
          v87 = *(v2 + 11);
          *&v97[0] = v75;
          *(&v97[2] + 1) = v87;
          sub_1CEFCCBDC(&v98, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
          sub_1CEFE42D4(v16, v17);
          result = sub_1CEFCCC44(&v96, &unk_1EC4BF250, &unk_1CFA01B50);
          __break(1u);
          goto LABEL_70;
        }

        v96 = v98;
        *(v97 + 8) = *(v2 + 56);
        *(&v97[1] + 8) = *(v2 + 72);
        v76 = *(v2 + 11);
        *&v97[0] = 1;
        *(&v97[2] + 1) = v76;
        sub_1CEFCCBDC(&v98, &v92, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        sub_1CEFCCC44(&v96, &unk_1EC4BF2D0, &unk_1CF9FEF20);
        v51 = [a2 bindObjectParameter_];
      }

      goto LABEL_63;
    }

    if (v5 == 132)
    {
      v46 = *(v2 + 96);
LABEL_47:
      *(&v97[0] + 1) = MEMORY[0x1E69E6530];
      *&v96 = v46;
      goto LABEL_53;
    }

    v70 = *(v2 + 97);
    if (v70 != 6)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (v5 > 0x81u)
  {
    if (v5 == 130)
    {
      v46 = *(v2 + 2);
      goto LABEL_47;
    }

    v70 = *(v2 + 24);
    if (v70 != 5)
    {
LABEL_51:
      v71 = MEMORY[0x1E69E6530];
      goto LABEL_52;
    }

LABEL_49:
    v70 = 0;
    v71 = 0;
    *(&v96 + 1) = 0;
    *&v97[0] = 0;
LABEL_52:
    *&v96 = v70;
    *(&v97[0] + 1) = v71;
LABEL_53:
    v2 = sub_1CEFF8EA0(&v96);
    a2 = v72;
    sub_1CEFCCC44(&v96, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (a2)
    {
      return v2;
    }

LABEL_11:
    sub_1CF9E7B68();
    __break(1u);
    goto LABEL_12;
  }

  if (v5 != 128)
  {
    v46 = *(v2 + 1);
    goto LABEL_47;
  }

  v28 = *v2;
  if (!v28)
  {
LABEL_62:
    v51 = [a2 bindObjectParameter_];
    goto LABEL_63;
  }

  v29 = v8;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v31 = v30;
  v123 = v28;
  sub_1CF9E6918();
  v32 = sub_1CF9E68C8();
  v34 = v33;
  v31, v33, v35, v36, v37, v38, v39, v40;
  result = (*(v7 + 8))(v11, v29);
  if (v34 >> 60 != 15)
  {
    v42 = sub_1CF9E5B48();
    sub_1CEFE48D8(v32, v34);
    v43 = [a2 bindObjectParameter_];

    v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    return v2;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_1CF3A5BD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = *(v1 + qword_1EDEBB780);
  if ((*(v16 + 82) & 4) != 0)
  {
    v20 = *(a1 + 80);
    v19 = *(a1 + 88);
    v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
    v22 = type metadata accessor for ItemMetadata(0);
    v23 = *(v21 + *(v22 + 104));
    v24 = *(v22 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v25 = swift_dynamicCastClass();
    if (v25 && *(*(v25 + 32) + qword_1EDEBBB18))
    {

      if (sub_1CF3A8798(v20, v19, v21 + v24))
      {
        if ((*(v16 + 82) & 8) == 0 && (v33 = swift_dynamicCastClass()) != 0 && (v34 = *(*(v33 + 32) + qword_1EDEBBB18)) != 0)
        {
          v35 = *(v34 + qword_1EDEBB7B0);
          v19, v26, v27, v28, v29, v30, v31, v32;

          v37 = v23 > 0 && v35 >= v23;
        }

        else
        {
          v19, v26, v27, v28, v29, v30, v31, v32;

          v37 = 1;
        }

        return v37 & 1;
      }

      v19, v26, v27, v28, v29, v30, v31, v32;
    }

    goto LABEL_19;
  }

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0) + 48);
  v18 = type metadata accessor for ItemMetadata(0);
  sub_1CEFCCBDC(a1 + *(v18 + 120) + v17, v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CEFCCC44(v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_19:
    v37 = 0;
    return v37 & 1;
  }

  (*(v7 + 32))(v15, v5, v6);
  result = sub_1CF9E5CC8();
  if ((*(v1 + qword_1EDEBB798) * -86400) >> 64 == (-86400 * *(v1 + qword_1EDEBB798)) >> 63)
  {
    sub_1CF9E5C38();
    v39 = *(v7 + 8);
    v39(v9, v6);
    sub_1CF042F54(&qword_1EDEAB3B8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v40 = sub_1CF9E67E8();
    v39(v12, v6);
    v39(v15, v6);
    v37 = v40 ^ 1;
    return v37 & 1;
  }

  __break(1u);
  return result;
}

void sub_1CF3A6000(uint64_t a1, void *a2, unsigned int a3)
{
  v82 = a3;
  v81 = a2;
  v89 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v83 = *(v3 - 8);
  v84 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v81 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v81 - v7;
  v9 = sub_1CF9E64A8();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = (&v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v81 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v81 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v81 - v24;
  sub_1CEFCCBDC(v89, &v81 - v24, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 44)
    {
      sub_1CF0335E0();
      goto LABEL_47;
    }

    v27 = v88;
    if (EnumCaseMultiPayload != 22)
    {
      if (EnumCaseMultiPayload != 7)
      {
LABEL_47:
        sub_1CEFCCC44(v25, &qword_1EC4BE710, &qword_1CF9FE5A8);
        return;
      }

      v28 = v25;
      sub_1CEFCCBDC(v25, v22, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
      v30 = *(v29 + 48);
      if ((*&v22[*(v29 + 64)] & 0x40200000000082ALL) == 0)
      {
LABEL_9:
        sub_1CEFCCC44(&v22[v30], &unk_1EC4BFBB0, &qword_1CF9FCB90);
        sub_1CEFCCC44(v22, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v25 = v28;
        goto LABEL_47;
      }

      v31 = *(*&v27[qword_1EDEBB780] + 64);
      v33 = v85;
      v32 = v86;
      *v85 = v31;
      v34 = v87;
      (*(v32 + 104))(v33, *MEMORY[0x1E69E8020], v87);
      v35 = v31;
      LOBYTE(v31) = sub_1CF9E64D8();
      (*(v32 + 8))(v33, v34);
      if (v31)
      {
        v36 = *(*v27 + 136);
        swift_beginAccess();
        if ((v27[v36] & 1) == 0)
        {
          v27[v36] = 1;
          v27[72] = 1;
          sub_1CF802820(v81, v82);
        }

        goto LABEL_9;
      }

      goto LABEL_50;
    }

    sub_1CEFCCBDC(v25, v13, &qword_1EC4BE710, &qword_1CF9FE5A8);
    if ((*v13 & 0x8000000000000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D0, &unk_1CF9FABF0);
      if (swift_dynamicCastClass())
      {

        goto LABEL_20;
      }

LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF70, &unk_1CFA05630);
      if (swift_dynamicCastClass())
      {
        v69 = *(*&v27[qword_1EDEBB780] + 64);
        v71 = v85;
        v70 = v86;
        *v85 = v69;
        v72 = v87;
        (*(v70 + 104))(v71, *MEMORY[0x1E69E8020], v87);
        v73 = v69;
        LOBYTE(v69) = sub_1CF9E64D8();
        (*(v70 + 8))(v71, v72);
        if ((v69 & 1) == 0)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v74 = *(*v27 + 136);
        swift_beginAccess();
        if ((v27[v74] & 1) == 0)
        {
          v27[v74] = 1;
          v27[72] = 1;
          sub_1CF802820(v81, v82);
        }
      }

      goto LABEL_47;
    }

    goto LABEL_29;
  }

  v37 = v83;
  v38 = v84;
  if (EnumCaseMultiPayload == 5)
  {
    sub_1CEFCCBDC(v25, v16, &qword_1EC4BE710, &qword_1CF9FE5A8);
    sub_1CEFD0994(v16[2], *(v16 + 24), *(v16 + 25));
    sub_1CEFD0994(*v16, *(v16 + 8), *(v16 + 9));
    v27 = v88;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 6)
  {
    goto LABEL_47;
  }

  v39 = v5;
  v40 = v25;
  sub_1CEFCCBDC(v25, v19, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
  v42 = *(v41 + 48);
  v43 = *&v19[*(v41 + 64)];
  v44 = *(v37 + 48);
  if (v44(&v19[v42], 1, v38) == 1)
  {
    sub_1CEFCCC44(&v19[v42], &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFCCC44(v19, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v25 = v40;
    goto LABEL_47;
  }

  sub_1CEFE55D0(v19, v8, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v51 = &v19[v42];
  v52 = v39;
  v53 = v8;
  sub_1CEFE55D0(v51, v52, &unk_1EC4BE360, &qword_1CF9FE650);
  v54 = v44(v8, 1, v38);
  v55 = (v52 + *(v38 + 48));
  if (v54 == 1 || *v55 != 1)
  {
    v27 = v88;
    v25 = v40;
    if (!*v55)
    {
      if (v54 != 1 && (v43 & 0x10) != 0)
      {
        v57 = v53;
        v64 = *(*&v88[qword_1EDEBB780] + 64);
        v66 = v85;
        v65 = v86;
        *v85 = v64;
        v67 = v87;
        (*(v65 + 104))(v66, *MEMORY[0x1E69E8020], v87);
        v68 = v64;
        LOBYTE(v64) = sub_1CF9E64D8();
        (*(v65 + 8))(v66, v67);
        if ((v64 & 1) == 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        goto LABEL_44;
      }

      if (v55[*(type metadata accessor for ItemMetadata(0) + 80)] == 1 && (v43 & 0x820) != 0)
      {
        v57 = v53;
        v75 = *(*&v27[qword_1EDEBB780] + 64);
        v77 = v85;
        v76 = v86;
        *v85 = v75;
        v78 = v87;
        (*(v76 + 104))(v77, *MEMORY[0x1E69E8020], v87);
        v79 = v75;
        LOBYTE(v75) = sub_1CF9E64D8();
        (*(v76 + 8))(v77, v78);
        if ((v75 & 1) == 0)
        {
LABEL_52:
          __break(1u);
          return;
        }

        goto LABEL_44;
      }
    }

LABEL_46:
    sub_1CEFCCC44(v52, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v53, &qword_1EC4C1B40, &unk_1CF9FCB70);
    goto LABEL_47;
  }

  v56 = type metadata accessor for ItemMetadata(0);
  v27 = v88;
  v25 = v40;
  if ((v55[*(v56 + 80)] & 1) != 0 || (v43 & 0x10) == 0)
  {
    goto LABEL_46;
  }

  v57 = v53;
  v58 = *(*&v88[qword_1EDEBB780] + 64);
  v60 = v85;
  v59 = v86;
  *v85 = v58;
  v61 = v87;
  (*(v59 + 104))(v60, *MEMORY[0x1E69E8020], v87);
  v62 = v58;
  LOBYTE(v58) = sub_1CF9E64D8();
  (*(v59 + 8))(v60, v61);
  if (v58)
  {
LABEL_44:
    v80 = *(*v27 + 136);
    swift_beginAccess();
    v53 = v57;
    if ((v27[v80] & 1) == 0)
    {
      v27[v80] = 1;
      v27[72] = 1;
      sub_1CF802820(v81, v82);
    }

    goto LABEL_46;
  }

  __break(1u);
LABEL_29:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
  v63 = swift_dynamicCastClass();

  if (!v63)
  {
    goto LABEL_47;
  }

LABEL_20:
  sub_1CEFCCC44(v25, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v45 = *(*&v27[qword_1EDEBB780] + 64);
  v47 = v85;
  v46 = v86;
  *v85 = v45;
  v48 = v87;
  (*(v46 + 104))(v47, *MEMORY[0x1E69E8020], v87);
  v49 = v45;
  LOBYTE(v45) = sub_1CF9E64D8();
  (*(v46 + 8))(v47, v48);
  if ((v45 & 1) == 0)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v50 = *(*v27 + 136);
  swift_beginAccess();
  if ((v27[v50] & 1) == 0)
  {
    v27[v50] = 1;
    v27[72] = 1;
    sub_1CF802820(v81, v82);
  }
}

uint64_t sub_1CF3A6A70(void *a1, void *a2, unsigned int a3)
{
  v188 = a3;
  v187 = a2;
  v203 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v199 = *(v3 - 8);
  v200 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v198 = &v173 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v197 = &v173 - v6;
  v7 = sub_1CF9E5CF8();
  v190 = *(v7 - 8);
  v191 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v175 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v176 = &v173 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v181 = &v173 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v173 - v14;
  v192 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v192);
  v189 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v186 = &v173 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v173 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v179 = &v173 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v185 = &v173 - v26;
  v27 = sub_1CF9E64A8();
  v194 = *(v27 - 8);
  v195 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v182 = &v173 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v180 = &v173 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v178 = &v173 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v184 = &v173 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v193 = &v173 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v196 = &v173 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v173 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v173 - v46);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v173 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v173 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v173 - v55;
  sub_1CEFCCBDC(v203, &v173 - v55, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    v72 = v18;
    v74 = v199;
    v73 = v200;
    v76 = v197;
    v75 = v198;
    v203 = v29;
    if (EnumCaseMultiPayload == 5)
    {
      v80 = v56;
      sub_1CEFCCBDC(v56, v47, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v81 = v201;
      v82 = *(*&v201[qword_1EDEBB780] + 64);
      v83 = v203;
      *v203 = v82;
      v84 = v194;
      v85 = v195;
      (*(v194 + 104))(v83, *MEMORY[0x1E69E8020], v195);
      v86 = v82;
      LOBYTE(v82) = sub_1CF9E64D8();
      result = (*(v84 + 8))(v83, v85);
      v88 = v202;
      if (v82)
      {
        v89 = *(*v81 + 136);
        swift_beginAccess();
        if ((v81[v89] & 1) != 0 || (v81[v89] = 1, v81[72] = 1, sub_1CF802820(v187, v188), !v88))
        {
          v56 = v80;
          sub_1CEFD0994(v47[2], *(v47 + 24), *(v47 + 25));
          sub_1CEFD0994(*v47, *(v47 + 8), *(v47 + 9));
        }

        else
        {
          sub_1CEFD0994(v47[2], *(v47 + 24), *(v47 + 25));
          sub_1CEFD0994(*v47, *(v47 + 8), *(v47 + 9));
          v56 = v80;
        }

        return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }

      __break(1u);
      goto LABEL_90;
    }

    if (EnumCaseMultiPayload != 6)
    {
      return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    v174 = v56;
    sub_1CEFCCBDC(v56, v50, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
    v78 = *(v77 + 48);
    v196 = *&v50[*(v77 + 64)];
    v79 = *(v74 + 48);
    if (v79(&v50[v78], 1, v73) == 1)
    {
      sub_1CEFCCC44(&v50[v78], &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFCCC44(v50, &qword_1EC4C1B40, &unk_1CF9FCB70);
LABEL_46:
      v56 = v174;
      return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    sub_1CEFE55D0(v50, v76, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFE55D0(&v50[v78], v75, &unk_1EC4BE360, &qword_1CF9FE650);
    v90 = v79(v76, 1, v73);
    v91 = (v75 + v73[12]);
    if (v90 == 1 || *v91 != 1)
    {
      if (!*v91)
      {
        sub_1CEFCCBDC(&v91[*(v192 + 120)], v72, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        if ((*(v190 + 48))(v72, 1, v191) != 1)
        {
          sub_1CEFCCC44(v72, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          if (v79(v76, 1, v73) == 1 || (v196 & 0x10) == 0)
          {
            if (v91[*(v192 + 80)] != 1 || (v196 & 0x20) == 0)
            {
              v56 = v174;
LABEL_28:
              sub_1CEFCCC44(v75, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_42:
              sub_1CEFCCC44(v76, &qword_1EC4C1B40, &unk_1CF9FCB70);
              return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
            }

            v92 = v201;
            v159 = *(*&v201[qword_1EDEBB780] + 64);
            v160 = v203;
            *v203 = v159;
            v161 = v194;
            v162 = v195;
            (*(v194 + 104))(v160, *MEMORY[0x1E69E8020], v195);
            v163 = v159;
            LOBYTE(v159) = sub_1CF9E64D8();
            (*(v161 + 8))(v160, v162);
            if ((v159 & 1) == 0)
            {
              __break(1u);
              goto LABEL_81;
            }
          }

          else
          {
            v92 = v201;
            v133 = *(*&v201[qword_1EDEBB780] + 64);
            v134 = v203;
            *v203 = v133;
            v135 = v194;
            v130 = v195;
            (*(v194 + 104))(v134, *MEMORY[0x1E69E8020], v195);
            v136 = v133;
            LOBYTE(v133) = sub_1CF9E64D8();
            (*(v135 + 8))(v134, v130);
            if ((v133 & 1) == 0)
            {
              __break(1u);
              goto LABEL_70;
            }
          }

LABEL_26:
          v98 = *(*v92 + 136);
          swift_beginAccess();
          v56 = v174;
          if ((v92[v98] & 1) == 0)
          {
            v92[v98] = 1;
            v92[72] = 1;
            sub_1CF802820(v187, v188);
          }

          goto LABEL_28;
        }

        sub_1CEFCCC44(v75, &unk_1EC4BE360, &qword_1CF9FE650);
        v111 = &unk_1EC4BEDC0;
        v112 = &unk_1CF9FEEA0;
        v113 = v72;
LABEL_41:
        sub_1CEFCCC44(v113, v111, v112);
        v56 = v174;
        goto LABEL_42;
      }
    }

    else if ((v91[*(v192 + 80)] & 1) == 0 && (v196 & 0x10) != 0)
    {
      v92 = v201;
      v93 = *(*&v201[qword_1EDEBB780] + 64);
      v94 = v203;
      *v203 = v93;
      v95 = v194;
      v96 = v195;
      (*(v194 + 104))(v94, *MEMORY[0x1E69E8020], v195);
      v97 = v93;
      LOBYTE(v93) = sub_1CF9E64D8();
      result = (*(v95 + 8))(v94, v96);
      if ((v93 & 1) == 0)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      goto LABEL_26;
    }

    v111 = &unk_1EC4BE360;
    v112 = &qword_1CF9FE650;
    v113 = v75;
    goto LABEL_41;
  }

  if (EnumCaseMultiPayload == 44)
  {
    sub_1CF0335E0();
    return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  if (EnumCaseMultiPayload == 22)
  {
    sub_1CEFCCBDC(v56, v44, &qword_1EC4BE710, &qword_1CF9FE5A8);
    if ((*v44 & 0x8000000000000000) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
      if (swift_dynamicCastClass())
      {
        v99 = v56;
        v100 = v29;
        v101 = v201;
        v102 = *(*&v201[qword_1EDEBB780] + 64);
        *v100 = v102;
        v104 = v194;
        v103 = v195;
        (*(v194 + 104))(v100, *MEMORY[0x1E69E8020], v195);
        v105 = v102;
        LOBYTE(v102) = sub_1CF9E64D8();
        result = (*(v104 + 8))(v100, v103);
        if (v102)
        {
          v106 = *(*v101 + 136);
          swift_beginAccess();
          if (v101[v106] != 1)
          {
            v101[v106] = 1;
            v101[72] = 1;
            sub_1CF802820(v187, v188);
          }

          v56 = v99;
          return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        goto LABEL_91;
      }
    }

    return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  if (EnumCaseMultiPayload != 7)
  {
    return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  v203 = v29;
  sub_1CEFCCBDC(v56, v53, &qword_1EC4BE710, &qword_1CF9FE5A8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
  v59 = *(v58 + 48);
  v60 = v56;
  v61 = *&v53[*(v58 + 64)];
  v62 = v196;
  sub_1CEFE55D0(v53, v196, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  v63 = &v53[v59];
  v64 = v193;
  sub_1CEFE55D0(v63, v193, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if ((v61 & 0x40200000000002ALL) == 0)
  {
    sub_1CEFCCC44(v64, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v62, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v56 = v60;
    return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  v174 = v60;
  v65 = v184;
  sub_1CEFCCBDC(v62, v184, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v67 = *(*(v66 - 8) + 48);
  if (v67(v65, 1, v66) == 1)
  {
    sub_1CEFCCC44(v65, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v69 = v190;
    v68 = v191;
    v70 = v185;
    (*(v190 + 56))(v185, 1, 1, v191);
    v71 = v186;
  }

  else
  {
    v107 = v189;
    sub_1CEFDA214(v65 + *(v66 + 48), v189, type metadata accessor for ItemMetadata);
    sub_1CEFCCC44(v65, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v70 = v185;
    sub_1CEFCCBDC(v107 + *(v192 + 120), v185, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFD5278(v107, type metadata accessor for ItemMetadata);
    v69 = v190;
    v68 = v191;
    v108 = *(v190 + 48);
    v109 = v108(v70, 1, v191);
    v71 = v186;
    if (v109 != 1)
    {
      goto LABEL_50;
    }
  }

  sub_1CEFCCC44(v70, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v110 = v182;
  sub_1CEFCCBDC(v64, v182, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if (v67(v110, 1, v66) == 1)
  {
    sub_1CEFCCC44(v64, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v196, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v110, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    (*(v69 + 56))(v71, 1, 1, v68);
LABEL_45:
    sub_1CEFCCC44(v71, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    goto LABEL_46;
  }

  v114 = v189;
  sub_1CEFDA214(v110 + *(v66 + 48), v189, type metadata accessor for ItemMetadata);
  sub_1CEFCCC44(v110, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  sub_1CEFCCBDC(v114 + *(v192 + 120), v71, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFD5278(v114, type metadata accessor for ItemMetadata);
  v108 = *(v69 + 48);
  if (v108(v71, 1, v68) == 1)
  {
    sub_1CEFCCC44(v64, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v196, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    goto LABEL_45;
  }

  v70 = v71;
LABEL_50:
  sub_1CEFCCC44(v70, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v115 = v181;
  result = sub_1CF9E5CC8();
  if ((*&v201[qword_1EDEBB798] * -86400) >> 64 != (-86400 * *&v201[qword_1EDEBB798]) >> 63)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  sub_1CF9E5C38();
  v116 = v69;
  v117 = v115;
  v118 = v191;
  v200 = *(v69 + 8);
  (v200)(v117, v191);
  v119 = v178;
  sub_1CEFCCBDC(v196, v178, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if (v67(v119, 1, v66) == 1)
  {
    sub_1CEFCCC44(v119, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v120 = v179;
    (*(v116 + 56))(v179, 1, 1, v118);
    v121 = v180;
LABEL_54:
    sub_1CEFCCC44(v120, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    goto LABEL_55;
  }

  v122 = v189;
  sub_1CEFDA214(v119 + *(v66 + 48), v189, type metadata accessor for ItemMetadata);
  sub_1CEFCCC44(v119, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v120 = v179;
  sub_1CEFCCBDC(v122 + *(v192 + 120), v179, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFD5278(v122, type metadata accessor for ItemMetadata);
  v123 = v108(v120, 1, v118);
  v121 = v180;
  if (v123 == 1)
  {
    goto LABEL_54;
  }

  v129 = v120;
  v130 = v176;
  (*(v190 + 32))(v176, v129, v118);
  sub_1CF042F54(&qword_1EDEAB3B8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if ((sub_1CF9E67E8() & 1) == 0)
  {
LABEL_70:
    v137 = v201;
    v138 = *(*&v201[qword_1EDEBB780] + 64);
    v139 = v203;
    *v203 = v138;
    v141 = v194;
    v140 = v195;
    (*(v194 + 104))(v139, *MEMORY[0x1E69E8020], v195);
    v142 = v138;
    LOBYTE(v138) = sub_1CF9E64D8();
    result = (*(v141 + 8))(v139, v140);
    if (v138)
    {
      v143 = *(*v137 + 136);
      swift_beginAccess();
      v144 = v202;
      v145 = v174;
      if (v137[v143])
      {
        v146 = v191;
        v147 = v183;
      }

      else
      {
        v137[v143] = 1;
        v137[72] = 1;
        sub_1CF802820(v187, v188);
        v147 = v183;
        if (v144)
        {
          v167 = v130;
          v168 = v191;
          v169 = v200;
          (v200)(v167, v191);
          (v169)(v147, v168);
          sub_1CEFCCC44(v193, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v170 = v196;
LABEL_88:
          sub_1CEFCCC44(v170, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v56 = v145;
          return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        v146 = v191;
      }

      v171 = v196;
      v172 = v200;
      (v200)(v176, v146);
      (v172)(v147, v146);
      sub_1CEFCCC44(v193, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v170 = v171;
      goto LABEL_88;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  (v200)(v130, v118);
LABEL_55:
  v124 = v193;
  sub_1CEFCCBDC(v193, v121, &unk_1EC4BFBB0, &qword_1CF9FCB90);
  if (v67(v121, 1, v66) == 1)
  {
    (v200)(v183, v118);
    sub_1CEFCCC44(v124, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v196, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v121, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v125 = v177;
    (*(v190 + 56))(v177, 1, 1, v118);
    v56 = v174;
LABEL_59:
    sub_1CEFCCC44(v125, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  v126 = v189;
  sub_1CEFDA214(v121 + *(v66 + 48), v189, type metadata accessor for ItemMetadata);
  sub_1CEFCCC44(v121, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v125 = v177;
  sub_1CEFCCBDC(v126 + *(v192 + 120), v177, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFD5278(v126, type metadata accessor for ItemMetadata);
  v127 = v190;
  v128 = v108(v125, 1, v118);
  v56 = v174;
  if (v128 == 1)
  {
    (v200)(v183, v118);
    sub_1CEFCCC44(v193, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v196, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    goto LABEL_59;
  }

  v72 = v174;
  v131 = v175;
  (*(v127 + 32))(v175, v125, v118);
  sub_1CF042F54(&qword_1EDEAB3B8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v76 = v183;
  if (sub_1CF9E67E8())
  {
    v132 = v200;
    (v200)(v131, v118);
    (v132)(v76, v118);
    sub_1CEFCCC44(v193, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    sub_1CEFCCC44(v196, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v56 = v72;
    return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  v148 = v201;
  v149 = *(*&v201[qword_1EDEBB780] + 64);
  v150 = v203;
  *v203 = v149;
  v152 = v194;
  v151 = v195;
  (*(v194 + 104))(v150, *MEMORY[0x1E69E8020], v195);
  v153 = v149;
  LOBYTE(v149) = sub_1CF9E64D8();
  result = (*(v152 + 8))(v150, v151);
  if (v149)
  {
    v154 = *(*v148 + 136);
    swift_beginAccess();
    v155 = v202;
    if ((v148[v154] & 1) == 0)
    {
      v148[v154] = 1;
      v148[72] = 1;
      sub_1CF802820(v187, v188);
      if (v155)
      {
        v156 = v191;
        v157 = v200;
        (v200)(v131, v191);
        (v157)(v76, v156);
        sub_1CEFCCC44(v193, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v158 = v196;
LABEL_82:
        sub_1CEFCCC44(v158, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v56 = v72;
        return sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }

LABEL_81:
    v164 = v191;
    v165 = v196;
    v166 = v200;
    (v200)(v175, v191);
    (v166)(v76, v164);
    sub_1CEFCCC44(v193, &unk_1EC4BFBB0, &qword_1CF9FCB90);
    v158 = v165;
    goto LABEL_82;
  }

LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_1CF3A8440()
{
  v1 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  if (*v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v2, v3);
  v3, v4, v5, v6, v7, v8, v9, v10;
  if ((v1[16] & 1) == 0)
  {
    sub_1CF064F48();
    v11 = sub_1CF9E7F98();
    v13 = v12;
    MEMORY[0x1D3868CC0](v11);
    v13, v14, v15, v16, v17, v18, v19, v20;
    MEMORY[0x1D3868CC0](0x3A7473616C20, 0xE600000000000000);
    0xE600000000000000, v21, v22, v23, v24, v25, v26, v27;
  }

  if ((*(v0 + qword_1EDEBB7D8 + 8) & 1) == 0)
  {
    sub_1CF064F48();
    v28 = sub_1CF9E7F98();
    v30 = v29;
    MEMORY[0x1D3868CC0](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    MEMORY[0x1D3868CC0](0x3A7478656E20, 0xE600000000000000);
    0xE600000000000000, v38, v39, v40, v41, v42, v43, v44;
  }

  if ((v1[40] & 1) == 0)
  {
    sub_1CF9E7948();
    0xE000000000000000, v45, v46, v47, v48, v49, v50, v51;
    sub_1CF064F48();
    v52 = sub_1CF9E7F98();
    v54 = v53;
    MEMORY[0x1D3868CC0](v52);
    v54, v55, v56, v57, v58, v59, v60, v61;
    MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA433E0);
    0x80000001CFA433E0, v62, v63, v64, v65, v66, v67, v68;
  }

  sub_1CF9E7948();
  0xE000000000000000, v69, v70, v71, v72, v73, v74, v75;
  v76 = sub_1CF9E7F98();
  v78 = v77;
  MEMORY[0x1D3868CC0](v76);
  v78, v79, v80, v81, v82, v83, v84, v85;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA433A0);
  0x80000001CFA433A0, v86, v87, v88, v89, v90, v91, v92;
  sub_1CF9E7948();
  0xE000000000000000, v93, v94, v95, v96, v97, v98, v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF9E0, &unk_1CFA03F70);
  v100 = sub_1CF9E6948();
  v102 = v101;
  MEMORY[0x1D3868CC0](v100);
  v102, v103, v104, v105, v106, v107, v108, v109;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA433C0);
  0x80000001CFA433C0, v110, v111, v112, v113, v114, v115, v116;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x3A79747269643CLL;
}

uint64_t sub_1CF3A8798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v69 - v9;
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  sub_1CEFCCBDC(a3, v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1CEFCCC44(v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v19 = 0;
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
    v75 = a1;
    v76 = a2;
    v73 = 47;
    v74 = 0xE100000000000000;
    v71 = 58;
    v72 = 0xE100000000000000;
    v67 = sub_1CEFE4E68();
    v68 = v67;
    v66[0] = MEMORY[0x1E69E6158];
    v66[1] = v67;
    sub_1CF9E7668();
    v21 = v20;
    v22 = sub_1CF9E6888();
    v21, v23, v24, v25, v26, v27, v28, v29;
    v30 = [v22 pathExtension];

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v32 = v31;

    v33 = sub_1CF9E6958();
    v35 = v34;
    v32, v34, v36, v37, v38, v39, v40, v41;
    v42 = objc_sync_enter(v4);
    if (v42)
    {
      MEMORY[0x1EEE9AC00](v42);
      v67 = v4;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v66, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v43 = *&v4[qword_1EDEBB7F0];
    if (*v43->tree)
    {

      v44 = sub_1CEFE4328(v33, v35);
      v52 = v45;
      if (v45)
      {
        v53 = *(*v43[1].tester + 8 * v44);
      }

      else
      {
        v53 = 0;
      }

      v43, v45, v46, v47, v48, v49, v50, v51;
    }

    else
    {
      v53 = 0;
      v52 = 0;
    }

    v54 = objc_sync_exit(v4);
    if (v54)
    {
      MEMORY[0x1EEE9AC00](v54);
      v67 = v4;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v66, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v35, v55, v56, v57, v58, v59, v60, v61;
    if ((v52 & (v53 > 0)) != 0)
    {
      if (v53 == 0x7FFFFFFFFFFFFFFFLL)
      {
        (*(v12 + 8))(v18, v11);
        v19 = 1;
      }

      else
      {
        v62 = v69;
        sub_1CF9E5CC8();
        v63 = v70;
        sub_1CF9E5C38();
        v64 = *(v12 + 8);
        v64(v62, v11);
        sub_1CF042F54(&qword_1EDEAB3B8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        LOBYTE(v62) = sub_1CF9E67E8();
        v64(v63, v11);
        v64(v18, v11);
        v19 = v62 ^ 1;
      }
    }

    else
    {
      (*(v12 + 8))(v18, v11);
      v19 = 0;
    }
  }

  return v19 & 1;
}

uint64_t sub_1CF3A8C70(uint64_t a1, void (*a2)(uint64_t (*)(__n128), uint64_t), void (*a3)(uint64_t (*)(__n128), uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 72);
    v7 = *(result + 80);
    a2(v6, v7);

    if (v6)
    {
      v9 = (v6)(v8);
      a3(v6, v7);
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1CF3A8D20(uint64_t a1, uint64_t a2, char a3)
{
  v25 = a2;
  LOBYTE(v26) = a3;
  v5 = *(v3 + 72);
  if (v5)
  {
    v6 = v3;
    v8 = v4;
    v9 = *(v3 + 80);

    v11 = v5(v10);
    sub_1CEFF7124(v5, v9);
    if (v11)
    {
      v12 = *(a1 + 96);
      v13 = *(a1 + 104);
      v14 = *(a1 + 112);
      if (*(a1 + 112))
      {
        if (v14 != 1)
        {
          goto LABEL_23;
        }

        v15 = *(*v11 + 304);

        v15(v16);
LABEL_22:
        sub_1CF03D7A8(v12, v13, v14);
LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          v22 = v21;
          v23 = *(*v11 + 544);

          v23(v22, 1, &v25, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
          if (v8)
          {

LABEL_30:

            return;
          }
        }

        v24 = (*(*v11 + 184))(v21);
        if (v24)
        {
          (*(*v24 + 120))(v11, a1);
        }

        goto LABEL_30;
      }

      if ((v12 & 0x200000) != 0)
      {
        v17 = *(*v11 + 352);

        v17(v18);
        if ((v12 & 0x1000000) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {

        if ((v12 & 0x1000000) == 0)
        {
          goto LABEL_22;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF60, &unk_1CFA05620);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        (*(*v11 + 584))(v19, v20);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C46D0, &unk_1CF9FABF0);
      if (swift_dynamicCastClass() && (*(v6 + 104) & 1) == 0)
      {
        *(v6 + 104) = 1;
        if (qword_1EDEA5A98 != -1)
        {
          swift_once();
        }

        [qword_1EDEBB818 addWatcher_];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF70, &unk_1CFA05630);
      if (swift_dynamicCastClass() && (*(v6 + 104) & 1) == 0)
      {
        *(v6 + 104) = 1;
        if (qword_1EDEA5A98 != -1)
        {
          swift_once();
        }

        [qword_1EDEBB818 addWatcher_];
      }

      goto LABEL_22;
    }
  }
}

void sub_1CF3A90C0(void *a1, void *a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v30 - v9);
  v35 = v3;
  v36 = a1;
  v11 = sub_1CF7D55FC(sub_1CF480D0C, v34, a2, a3);
  if (!v4)
  {
    v12 = v11;
    v41 = 0;
    v13 = [v11 next];
    if (v13)
    {
      v33 = [v12 longAtIndex_];
      if ([v12 isNullAtIndex_])
      {
        v32 = 4;
      }

      else
      {
        v32 = [v12 longAtIndex_];
      }

      v31 = [v12 isNullAtIndex_];
      v30 = [v12 unsignedLongAtIndex_];
      v17 = *(v3 + 16);
      v39 = &type metadata for SQLItemJobID;
      v40 = sub_1CF03E084();
      v18 = v33;
      v37 = v33;
      v38 = v17;
      swift_beginAccess();
      sub_1CEFDA9E0(&v37, (a1 + 7), &unk_1EC4C1BE0, &unk_1CF9FD400);
      v19 = swift_endAccess();
      if (v32 == 2)
      {
        MEMORY[0x1EEE9AC00](v19);
        *(&v30 - 4) = v3;
        *(&v30 - 3) = a1;
        *(&v30 - 2) = v18;
        v20 = v41;
        sub_1CF7D5920(sub_1CF485978, (&v30 - 6), a2);
        if (v20)
        {
          goto LABEL_14;
        }

        goto LABEL_19;
      }

      MEMORY[0x1EEE9AC00](v19);
      v21 = &v30 - 6;
      *(&v30 - 4) = v3;
      *(&v30 - 3) = a1;
      *(&v30 - 2) = v18;
      v22 = v41;
      if (v23 >= 2)
      {
        v24 = sub_1CF480D1C;
      }

      else
      {
        if (v31)
        {
          sub_1CF7D5920(sub_1CF480D34, v21, a2);
          if (!v22)
          {
            if (v30 == 0x8000 && a1[17] != 0x8000)
            {
              v25 = *(v3 + 72);
              if (v25)
              {
                v26 = *(v3 + 80);

                v28 = v25(v27);
                sub_1CEFF7124(v25, v26);
                if (v28)
                {
                  *v10 = a1;
                  swift_storeEnumTagMultiPayload();
                  v29 = *(*v28 + 312);

                  v29(v10);

                  sub_1CEFCCC44(v10, &qword_1EC4BE710, &qword_1CF9FE5A8);
                  return;
                }
              }
            }

            goto LABEL_21;
          }

          goto LABEL_14;
        }

        v24 = sub_1CF480D28;
      }

      sub_1CF7D5920(v24, v21, a2);
      if (v22)
      {
        goto LABEL_14;
      }

LABEL_19:
      if (![a2 changes])
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    MEMORY[0x1EEE9AC00](v13);
    *(&v30 - 2) = v3;
    *(&v30 - 1) = a1;
    v14 = v41;
    sub_1CF7D5920(sub_1CF480D14, (&v30 - 4), a2);
    if (!v14)
    {
      v15 = [a2 lastInsertedRowID];
      v16 = *(v3 + 16);
      v39 = &type metadata for SQLItemJobID;
      v40 = sub_1CF03E084();
      v37 = v15;
      v38 = v16;
      swift_beginAccess();
      sub_1CEFDA9E0(&v37, (a1 + 7), &unk_1EC4C1BE0, &unk_1CF9FD400);
      swift_endAccess();
LABEL_20:
      sub_1CF3A8D20(a1, a2, a3);
LABEL_21:

      return;
    }

LABEL_14:
  }
}

uint64_t sub_1CF3A95B0(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v31 = 0;
  v32 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000004ALL, 0x80000001CFA44EB0);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xEF203D2065707974);
  v6 = qword_1CFA05BE8[sub_1CF388E8C()];
  v30[3] = MEMORY[0x1E69E6530];
  v30[0] = v6;
  v7 = sub_1CEFF8EA0(v30);
  v9 = v8;
  sub_1CEFCCC44(v30, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v9)
  {
    MEMORY[0x1D3868CC0](v7, v9);
    v9, v10, v11, v12, v13, v14, v15, v16;
    MEMORY[0x1D3868CC0](0x65746920444E4120, 0xEF203D2064695F6DLL);
    v17 = *(a3 + 144);
    if (*(a3 + 152))
    {
      if (*(a3 + 152) != 1)
      {
        v17 = (v17 != 0) << 63;
        goto LABEL_8;
      }

      if ((v17 & 0x8000000000000000) == 0)
      {
LABEL_8:
        v18 = [a1 bindLongParameter_];
        v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v21 = v20;

        MEMORY[0x1D3868CC0](v19, v21);
        v21, v22, v23, v24, v25, v26, v27, v28;
        return v31;
      }

      __break(1u);
    }

    v17 = -v17;
    goto LABEL_8;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3A97E8(void *a1, void *a2, uint64_t a3)
{
  v86[0] = 0;
  v86[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v88 = 0;
  v89 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1D3868CC0](a2[3], a2[4]);
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44E30);
  MEMORY[0x1D3868CC0](a2[5], a2[6]);
  MEMORY[0x1D3868CC0](0xD00000000000005DLL, 0x80000001CFA44E50);
  v6 = *(a3 + 144);
  if (!*(a3 + 152))
  {
    goto LABEL_5;
  }

  if (*(a3 + 152) != 1)
  {
    v6 = (v6 != 0) << 63;
    goto LABEL_7;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    v6 = -v6;
  }

LABEL_7:
  v7 = [a1 bindLongParameter_];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v18 = sub_1CF388E8C();
  v19 = MEMORY[0x1E69E6530];
  v20 = qword_1CFA05BE8[v18];
  v87 = MEMORY[0x1E69E6530];
  v86[0] = v20;
  v21 = sub_1CEFF8EA0(v86);
  v23 = v22;
  sub_1CEFCCC44(v86, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v23 && (MEMORY[0x1D3868CC0](v21, v23), v23, v24, v25, v26, v27, v28, v29, v30, MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020), v31 = *(a3 + 96), v32 = *(a3 + 104), v33 = *(a3 + 112), sub_1CF03C530(v31, v32, *(a3 + 112)), v34 = sub_1CF03D7E8(), v35 = sub_1CF03D9EC(v34, v31, v32, v33), v37 = v36, v34, v36, v38, v39, v40, v41, v42, v43, sub_1CF03D7A8(v31, v32, v33), MEMORY[0x1D3868CC0](v35, v37), v37, v44, v45, v46, v47, v48, v49, v50, MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020), v51 = *(a3 + 136), v52 = MEMORY[0x1E69E6810], v87 = MEMORY[0x1E69E6810], v86[0] = v51, v53 = sub_1CEFF8EA0(v86), v55 = v54, sub_1CEFCCC44(v86, &unk_1EC4BEC50, &qword_1CF9FB4B0), v55) && (MEMORY[0x1D3868CC0](v53, v55), v55, v56, v57, v58, v59, v60, v61, v62, MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020), v63 = *(a3 + 128), v87 = v19, v86[0] = v63, v64 = sub_1CEFF8EA0(v86), v66 = v65, sub_1CEFCCC44(v86, &unk_1EC4BEC50, &qword_1CF9FB4B0), v66) && (MEMORY[0x1D3868CC0](v64, v66), v66, v67, v68, v69, v70, v71, v72, v73, MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020), v74 = *(a3 + 120), v87 = v52, v86[0] = v74, v75 = sub_1CEFF8EA0(v86), v77 = v76, sub_1CEFCCC44(v86, &unk_1EC4BEC50, &qword_1CF9FB4B0), v77))
  {
    MEMORY[0x1D3868CC0](v75, v77);
    v77, v78, v79, v80, v81, v82, v83, v84;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v88;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF3A9C24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a3;
  v32 = a1;
  v8 = sub_1CF7D55FC(sub_1CF480CDC, v31, a2, a3);
  if (!v4)
  {
    v9 = v8;
    if ([v8 next])
    {
      v10 = [v9 longAtIndex_];
      v35 = [v9 unsignedLongAtIndex_];
      v11 = [v9 longAtIndex_];
      v12 = [v9 unsignedLongAtIndex_];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(v3 + 64))
        {
          MEMORY[0x1EEE9AC00](v12);
          v13 = &v25;
          v27 = v3;
          v28 = v10;
          v14 = sub_1CF480D04;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v12);
          v13 = v24;
          v25 = v3;
          v26 = a1;
          v27 = v10;
          v14 = sub_1CF480CF8;
        }

        sub_1CF7D5920(v14, v13, a2);
      }

      else
      {
        v30 = v12;
        MEMORY[0x1EEE9AC00](v12);
        v24[1] = 0;
        v25 = 0;
        v24[0] = v3;
        LOBYTE(v26) = 1;
        v27 = v10;
        sub_1CF7D5920(sub_1CF480CE4, &v23, a2);
        v29 = v3;
        v15 = sub_1CF388E8C();
        v16 = *(a1 + 144);
        v17 = *(a1 + 152);
        sub_1CF19F384(v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
        v18 = swift_dynamicCastMetatype();
        if (v18)
        {
          v33 = v16;
          v34 = v17;
          v19 = (*(v18 + 592))(&v33, v30, v11, v35);
          v21 = *(v19 + 96);
          v20 = *(v19 + 104);
          *(v19 + 96) = 0;
          *(v19 + 104) = 0;
          v22 = *(v19 + 112);
          *(v19 + 112) = 0;

          sub_1CF03D7A8(v21, v20, v22);

          swift_beginAccess();
          sub_1CEFCCBDC(a1 + 56, &v33, &unk_1EC4C1BE0, &unk_1CF9FD400);
          swift_beginAccess();
          sub_1CEFDA9E0(&v33, v19 + 56, &unk_1EC4C1BE0, &unk_1CF9FD400);
          swift_endAccess();
          sub_1CF3A8D20(v19, a2, v5);
        }

        else
        {
          LODWORD(v28) = 0;
          v27 = 87;
          sub_1CF9E7B68();
          __break(1u);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1CF3AA00C(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v31 = 0;
  v32 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000005CLL, 0x80000001CFA44CF0);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x742045524548570ALL, 0xEE00203D20657079);
  v6 = qword_1CFA05BE8[sub_1CF388E8C()];
  v30[3] = MEMORY[0x1E69E6530];
  v30[0] = v6;
  v7 = sub_1CEFF8EA0(v30);
  v9 = v8;
  sub_1CEFCCC44(v30, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v9)
  {
    MEMORY[0x1D3868CC0](v7, v9);
    v9, v10, v11, v12, v13, v14, v15, v16;
    MEMORY[0x1D3868CC0](0x65746920444E4120, 0xEF203D2064695F6DLL);
    v17 = *(a3 + 144);
    if (*(a3 + 152))
    {
      if (*(a3 + 152) != 1)
      {
        v17 = (v17 != 0) << 63;
        goto LABEL_8;
      }

      if ((v17 & 0x8000000000000000) == 0)
      {
LABEL_8:
        v18 = [a1 bindLongParameter_];
        v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v21 = v20;

        MEMORY[0x1D3868CC0](v19, v21);
        v21, v22, v23, v24, v25, v26, v27, v28;
        return v31;
      }

      __break(1u);
    }

    v17 = -v17;
    goto LABEL_8;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3AA244(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA44B50);
  if (*(a2 + 16))
  {
    v8 = 20550;
  }

  else
  {
    v8 = 21318;
  }

  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);
  0xE200000000000000, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  if (!a4)
  {
    goto LABEL_8;
  }

  if (a4 != 1)
  {
    a3 = (a3 != 0) << 63;
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    a3 = -a3;
  }

LABEL_10:
  v16 = [a1 bindLongParameter_];
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);
  v19, v20, v21, v22, v23, v24, v25, v26;
  return v28;
}

void sub_1CF3AA380(uint64_t a1, void *a2, unsigned int a3)
{
  v4 = v3;
  v169 = sub_1CF9E6118();
  v167 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v9 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v159 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v159 - v15);
  v172 = a2;
  v175 = a2;
  v171 = a3;
  v176 = a3;
  v17 = *(a1 + 112);
  if (v17 <= 2)
  {
    v170 = v4;
    v18 = *(a1 + 96);
    v19 = *(a1 + 104);
    v168 = a1;
    if (v17)
    {
      if (v17 != 1)
      {
        MEMORY[0x1EEE9AC00](v14);
        v4 = v170;
        v36 = v168;
        *(&v159 - 2) = v170;
        *(&v159 - 1) = v36;
        v22 = v172;
        v59 = v177;
        sub_1CF7D5920(sub_1CF480CC4, (&v159 - 4), v172);
        v177 = v59;
        if (v59)
        {
          return;
        }

        goto LABEL_73;
      }

      v20 = v18;
      if (!v18)
      {
LABEL_5:
        v21 = v168;
        if (sub_1CF388E8C() == 8)
        {
          v22 = v172;
          v23 = v171;
          v4 = v170;
          v24 = v177;
          sub_1CF3AC224(*(v21 + 144), *(v21 + 152), &unk_1F4BED1B8, v172, v171);
          v177 = v24;
          if (v24)
          {
            return;
          }

          v21 = v25;
          v34 = (v25 >> 62);
          if (!(v25 >> 62))
          {
            if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_9:
              v4 = 0;
              v35 = v21 & 0xFFFFFFFFFFFFFF8;
              v165 = (v167 + 8);
              v166 = v21 & 0xC000000000000001;
              v164 = v21 & 0xFFFFFFFFFFFFFF8;
              if (v21 < 0)
              {
                v35 = v21;
              }

              v160 = v35;
              v33.n128_u64[0] = 136315138;
              v161 = v33;
              v162 = v34;
              v163 = v21;
              while (1)
              {
                if (v166)
                {
                  v61 = MEMORY[0x1D3869C30](v4, v21);
                  v62 = (v4 + 1);
                  if (__OFADD__(v4, 1))
                  {
                    goto LABEL_87;
                  }
                }

                else
                {
                  if (v4 >= *(v164 + 16))
                  {
                    goto LABEL_89;
                  }

                  v61 = *(v21 + 8 * v4 + 32);

                  v62 = (v4 + 1);
                  if (__OFADD__(v4, 1))
                  {
LABEL_87:
                    __break(1u);
                    goto LABEL_88;
                  }
                }

                v167 = v62;
                v64 = *(v61 + 96);
                v63 = *(v61 + 104);
                *(v61 + 96) = 0;
                *(v61 + 104) = 0;
                v65 = *(v61 + 112);
                *(v61 + 112) = 4;

                sub_1CF03D7A8(v64, v63, v65);

                v66 = fpfs_current_or_default_log();
                sub_1CF9E6128();

                v67 = sub_1CF9E6108();
                v68 = sub_1CF9E7288();
                if (os_log_type_enabled(v67, v68))
                {
                  v69 = swift_slowAlloc();
                  v70 = swift_slowAlloc();
                  v173 = v70;
                  v71 = v161;
                  *v69 = v161.n128_u32[0];
                  v72 = sub_1CF902D78(v71);
                  v74 = v73;

                  v75 = sub_1CEFD0DF0(v72, v74, &v173);
                  v76 = v74;
                  v21 = v163;
                  v76, v77, v78, v79, v80, v81, v82, v83;
                  *(v69 + 4) = v75;
                  _os_log_impl(&dword_1CEFC7000, v67, v68, "✍️  Cancelling materialize job due to new eviction job: %s", v69, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v70);
                  v84 = v70;
                  v34 = v162;
                  MEMORY[0x1D386CDC0](v84, -1, -1);
                  v85 = v69;
                  v23 = v171;
                  MEMORY[0x1D386CDC0](v85, -1, -1);
                }

                else
                {
                }

                (*v165)(v12, v169);
                v22 = v172;
                v86 = v177;
                sub_1CF3AA380(v61, v172, v23);
                v177 = v86;
                if (v86)
                {
                  v154 = v21;
                  goto LABEL_82;
                }

                if (v34)
                {
                  v60 = sub_1CF9E7818();
                }

                else
                {
                  v60 = *(v164 + 16);
                }

                ++v4;
                if (v167 == v60)
                {
                  v21, v94, v95, v96, v97, v98, v99, v100;
                  v4 = v170;
                  goto LABEL_93;
                }
              }
            }

            goto LABEL_92;
          }

LABEL_91:
          if (sub_1CF9E7818())
          {
            goto LABEL_9;
          }

LABEL_92:
          v21, v26, v27, v28, v29, v30, v31, v32;
LABEL_93:
          v36 = v168;
          v157 = *(v168 + 152);
          v173 = *(v168 + 144);
          v174 = v157;
          MEMORY[0x1EEE9AC00](v155);
          *(&v159 - 2) = v4;
          *(&v159 - 1) = &v173;
          v158 = v177;
          sub_1CF7D5920(sub_1CF485A8C, (&v159 - 4), v22);
          v177 = v158;
          if (!v158)
          {
            goto LABEL_85;
          }

          return;
        }

        v101 = sub_1CF388E8C();
        v23 = v171;
        v22 = v172;
        if (v101 != 7)
        {
          goto LABEL_84;
        }

        v36 = v168;
        v102 = v177;
        sub_1CF3AC224(*(v168 + 144), *(v168 + 152), &unk_1F4BED1E0, v172, v171);
        v177 = v102;
        if (v102)
        {
          return;
        }

        v162 = v103;
        v166 = v103 >> 62;
        if (v103 >> 62)
        {
          v4 = v9;
          if (sub_1CF9E7818())
          {
LABEL_47:
            v12 = 0;
            v34 = v162;
            v112 = v162 & 0xFFFFFFFFFFFFFF8;
            v164 = (v167 + 8);
            v165 = (v162 & 0xC000000000000001);
            v163 = v162 & 0xFFFFFFFFFFFFFF8;
            if (v162 < 0)
            {
              v112 = v162;
            }

            v160 = v112;
            v111.n128_u64[0] = 136315138;
            v161 = v111;
            while (1)
            {
              if (v165)
              {
                v114 = MEMORY[0x1D3869C30](v12, v34);
              }

              else
              {
                if (v12 >= *(v163 + 16))
                {
                  goto LABEL_90;
                }

                v114 = *(&v34[1].super.isa + v12);
              }

              v167 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                break;
              }

              v115 = *(v114 + 96);
              v21 = *(v114 + 104);
              *(v114 + 96) = 0;
              *(v114 + 104) = 0;
              v116 = *(v114 + 112);
              *(v114 + 112) = 4;

              sub_1CF03D7A8(v115, v21, v116);

              v117 = fpfs_current_or_default_log();
              sub_1CF9E6128();

              v118 = sub_1CF9E6108();
              v119 = sub_1CF9E7288();
              if (os_log_type_enabled(v118, v119))
              {
                v21 = swift_slowAlloc();
                v120 = swift_slowAlloc();
                v173 = v120;
                v121 = v161;
                *v21 = v161.n128_u32[0];
                v122 = sub_1CF902D78(v121);
                v124 = v123;

                v125 = sub_1CEFD0DF0(v122, v124, &v173);
                v126 = v124;
                v23 = v171;
                v126, v127, v128, v129, v130, v131, v132, v133;
                *(v21 + 4) = v125;
                _os_log_impl(&dword_1CEFC7000, v118, v119, "✍️  Cancelling eviction job due to new materialize job: %s", v21, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v120);
                v134 = v120;
                v34 = v162;
                MEMORY[0x1D386CDC0](v134, -1, -1);
                MEMORY[0x1D386CDC0](v21, -1, -1);
              }

              else
              {
              }

              (*v164)(v4, v169);
              v22 = v172;
              v135 = v177;
              sub_1CF3AA380(v114, v172, v23);
              v177 = v135;
              if (v135)
              {
                v154 = v34;
LABEL_82:
                v154, v87, v88, v89, v90, v91, v92, v93;

                return;
              }

              if (v166)
              {
                v113 = sub_1CF9E7818();
              }

              else
              {
                v113 = *(v163 + 16);
              }

              ++v12;
              if (v167 == v113)
              {
                v34, v136, v137, v138, v139, v140, v141, v142;
LABEL_84:
                v4 = v170;
                v36 = v168;
LABEL_85:
                v156 = v177;
                sub_1CF3A90C0(v36, v22, v23);
                v177 = v156;
                if (v156)
                {
                  return;
                }

LABEL_73:
                v150 = sub_1CF388E8C();
                if (v150 == 23 || (v150 = sub_1CF388E8C(), v150 == 7))
                {
                  v151 = *(v36 + 152);
                  v173 = *(v36 + 144);
                  v174 = v151;
                  MEMORY[0x1EEE9AC00](v150);
                  *(&v159 - 2) = v4;
                  *(&v159 - 1) = &v173;
                  v152 = v177;
                  sub_1CF7D5920(sub_1CF485A8C, (&v159 - 4), v22);
                  v177 = v152;
                }

                return;
              }
            }

LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }
        }

        else
        {
          v4 = v9;
          if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }
        }

        v162, v104, v105, v106, v107, v108, v109, v110;
        v4 = v170;
        goto LABEL_85;
      }
    }

    else
    {
      v20 = v19;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    v46 = *(*v20 + 88);
    v47 = sub_1CF03C530(v18, v19, v17);
    v48 = v46(v47);
    v50 = v49;
    v52 = v51;
    LODWORD(v46) = v51;
    sub_1CF03D7A8(v18, v19, v17);
    if (v46 == 3 && v48 == 1 && v50 == 0)
    {
      MEMORY[0x1EEE9AC00](v53);
      v57 = &v159 - 4;
      v4 = v170;
      v36 = v168;
      *(&v159 - 2) = v170;
      *(&v159 - 1) = v36;
      v58 = sub_1CF480CD4;
    }

    else
    {
      v56 = sub_1CF1DBCF0(v48, v50, v52);
      MEMORY[0x1EEE9AC00](v56);
      v57 = &v159 - 4;
      v4 = v170;
      v36 = v168;
      *(&v159 - 2) = v170;
      *(&v159 - 1) = v36;
      v58 = sub_1CF480CCC;
    }

    v22 = v172;
    v143 = v171;
    v144 = v177;
    sub_1CF7D5920(v58, v57, v172);
    v177 = v144;
    if (v144)
    {
      return;
    }

    if (![v22 changes])
    {
      v153 = v177;
      sub_1CF3A90C0(v36, v22, v143);
      v177 = v153;
      if (v153)
      {
        return;
      }
    }

    sub_1CF373FB0(v36, v145);
    goto LABEL_73;
  }

  v36 = a1;
  v37 = *(v4 + 72);
  if (v37 && (v38 = *(v4 + 80), v39 = , v40 = v37(v39), sub_1CEFF7124(v37, v38), v40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA50, &unk_1CFA05480);
    v41 = swift_dynamicCastClass();
    v42 = v171;
    if (v41)
    {
      v43 = v41;
      v44 = *(*v40 + 544);

      v45 = v177;
      v44(v43, 0, &v175, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17970);
      v177 = v45;
      if (v45)
      {

        return;
      }
    }

    *v16 = v36;
    swift_storeEnumTagMultiPayload();
    v146 = *(*v40 + 312);

    v146(v16);
    v147 = sub_1CEFCCC44(v16, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v148 = (*(*v40 + 184))(v147);
    if (v148)
    {
      (*(*v148 + 128))(v40, v36);
    }
  }

  else
  {
    v42 = v171;
  }

  v22 = v172;
  v149 = v177;
  sub_1CF3A9C24(v36, v172, v42);
  v177 = v149;
  if (!v149)
  {
    goto LABEL_73;
  }
}

uint64_t sub_1CF3AB010(void *a1, uint64_t a2, uint64_t a3)
{
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v44 = 0;
  v45 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = *(a3 + 96);
  v7 = *(a3 + 104);
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, *(a3 + 112));
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v19 = *(a3 + 144);
  if (!*(a3 + 152))
  {
LABEL_5:
    v19 = -v19;
    goto LABEL_7;
  }

  if (*(a3 + 152) == 1)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_5;
  }

  v19 = (v19 != 0) << 63;
LABEL_7:
  v20 = [a1 bindLongParameter_];
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  MEMORY[0x1D3868CC0](v21, v23);
  v23, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v31 = qword_1CFA05BE8[sub_1CF388E8C()];
  v43[3] = MEMORY[0x1E69E6530];
  v43[0] = v31;
  v32 = sub_1CEFF8EA0(v43);
  v34 = v33;
  sub_1CEFCCC44(v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v34)
  {
    MEMORY[0x1D3868CC0](v32, v34);
    v34, v35, v36, v37, v38, v39, v40, v41;
    return v44;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3AB2D0(void *a1, uint64_t a2, uint64_t a3)
{
  v66[0] = 0;
  v66[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v68 = 0;
  v69 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = *(a3 + 96);
  v7 = *(a3 + 104);
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, *(a3 + 112));
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA42600);
  v19 = *(a3 + 128);
  v20 = MEMORY[0x1E69E6530];
  v67 = MEMORY[0x1E69E6530];
  v66[0] = v19;
  v21 = sub_1CEFF8EA0(v66);
  v23 = v22;
  sub_1CEFCCC44(v66, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v23)
  {
    goto LABEL_11;
  }

  MEMORY[0x1D3868CC0](v21, v23);
  v23, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44B30);
  v31 = *(a3 + 136);
  v67 = MEMORY[0x1E69E6810];
  v66[0] = v31;
  v32 = sub_1CEFF8EA0(v66);
  v34 = v33;
  sub_1CEFCCC44(v66, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v34)
  {
    goto LABEL_11;
  }

  MEMORY[0x1D3868CC0](v32, v34);
  v34, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v42 = *(a3 + 144);
  if (!*(a3 + 152))
  {
LABEL_7:
    v42 = -v42;
    goto LABEL_9;
  }

  if (*(a3 + 152) == 1)
  {
    if ((v42 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_7;
  }

  v42 = (v42 != 0) << 63;
LABEL_9:
  v43 = [a1 bindLongParameter_];
  v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v46 = v45;

  MEMORY[0x1D3868CC0](v44, v46);
  v46, v47, v48, v49, v50, v51, v52, v53;
  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v54 = qword_1CFA05BE8[sub_1CF388E8C()];
  v67 = v20;
  v66[0] = v54;
  v55 = sub_1CEFF8EA0(v66);
  v57 = v56;
  sub_1CEFCCC44(v66, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v57)
  {
    MEMORY[0x1D3868CC0](v55, v57);
    v57, v58, v59, v60, v61, v62, v63, v64;
    return v68;
  }

LABEL_11:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3AB688(void *a1, uint64_t a2, uint64_t a3)
{
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v56 = 0;
  v57 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = *(a3 + 96);
  v7 = *(a3 + 104);
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, *(a3 + 112));
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA44B30);
  v19 = *(a3 + 136);
  v55 = MEMORY[0x1E69E6810];
  v54[0] = v19;
  v20 = sub_1CEFF8EA0(v54);
  v22 = v21;
  sub_1CEFCCC44(v54, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v22)
  {
    goto LABEL_10;
  }

  MEMORY[0x1D3868CC0](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA44410);
  v30 = *(a3 + 144);
  if (!*(a3 + 152))
  {
LABEL_6:
    v30 = -v30;
    goto LABEL_8;
  }

  if (*(a3 + 152) == 1)
  {
    if ((v30 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_6;
  }

  v30 = (v30 != 0) << 63;
LABEL_8:
  v31 = [a1 bindLongParameter_];
  v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v34 = v33;

  MEMORY[0x1D3868CC0](v32, v34);
  v34, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v42 = qword_1CFA05BE8[sub_1CF388E8C()];
  v55 = MEMORY[0x1E69E6530];
  v54[0] = v42;
  v43 = sub_1CEFF8EA0(v54);
  v45 = v44;
  sub_1CEFCCC44(v54, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v45)
  {
    MEMORY[0x1D3868CC0](v43, v45);
    v45, v46, v47, v48, v49, v50, v51, v52;
    return v56;
  }

LABEL_10:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF3AB9D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = [a1 longAtIndex_];
  v47 = [a1 unsignedLongAtIndex_];
  v46 = [a1 longAtIndex_];
  v7 = [a1 unsignedLongAtIndex_];
  v8 = [a1 longAtIndex_];
  v52 = [a1 unsignedLongAtIndex_];
  v9 = sub_1CF043D7C([a1 longAtIndex_]);
  if (v9 == 89)
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
  }

  else
  {
    v11 = v9;
    v43 = v6;
    v44 = v7;
    v45 = a2;
    v12 = sub_1CF03D7E8();
    sub_1CF044430(v12, a1, 9);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v12, v15, v17, v19, v20, v21, v22, v23;
    if (!v3)
    {
      v24 = [a1 stringAtIndex_];
      if (!v24)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v41 = v25;
        v24 = sub_1CF9E6888();
        v41, v26, v27, v28, v29, v30, v31, v32;
      }

      v42 = v2;
      v33 = [a1 unsignedLongAtIndex_];
      sub_1CF1A01B4(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0230, &unk_1CFA05740);
      v34 = swift_dynamicCastMetatype();
      if (v34)
      {
        v48 = v24;
        v35 = (*(v34 + 592))(&v48, v47, v46, v33);
        v36 = *(v35 + 96);
        v37 = *(v35 + 104);
        *(v35 + 96) = v14;
        *(v35 + 104) = v16;
        v38 = *(v35 + 112);
        *(v35 + 112) = v18;

        sub_1CF03C530(v14, v16, v18);
        sub_1CF03D7A8(v36, v37, v38);
        sub_1CF03D7A8(v14, v16, v18);
        v39 = *(v42 + 16);
        v50 = &type metadata for SQLItemJobID;
        v51 = sub_1CF03E084();
        v48 = v43;
        v49 = v39;
        swift_beginAccess();
        sub_1CEFDA9E0(&v48, v35 + 56, &unk_1EC4C1BE0, &unk_1CF9FD400);
        swift_endAccess();

        v40 = v52;
        *v45 = v35;
        *(v45 + 8) = v40;
        *(v45 + 16) = v8;
        *(v45 + 24) = v44;
        *(v45 + 32) = v8 == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        sub_1CF9E7B68();
        __break(1u);
      }
    }
  }
}

void sub_1CF3ABD1C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = [a1 longAtIndex_];
  v44 = [a1 unsignedLongAtIndex_];
  v6 = [a1 longAtIndex_];
  v7 = [a1 unsignedLongAtIndex_];
  v51 = [a1 longAtIndex_];
  v45 = [a1 unsignedLongAtIndex_];
  v8 = sub_1CF043D7C([a1 longAtIndex_]);
  if (v8 == 89)
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  else
  {
    v10 = v8;
    v42 = v6;
    v43 = a2;
    v11 = sub_1CF03D7E8();
    sub_1CF044430(v11, a1, 9);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v11, v14, v16, v18, v19, v20, v21, v22;
    if (!v3)
    {
      v23 = v13;
      v41 = v17;
      sub_1CEFE9AC4([a1 longAtIndex_], &v47);
      v40 = v2;
      v24 = v47;
      v25 = v48;
      v26 = [a1 unsignedLongAtIndex_];
      sub_1CF19F384(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
      v27 = swift_dynamicCastMetatype();
      if (v27)
      {
        v28 = v15;
        v29 = v23;
        v47 = v24;
        v48 = v25;
        v30 = (*(v27 + 592))(&v47, v44, v42, v26);
        v31 = *(v30 + 96);
        v32 = *(v30 + 104);
        *(v30 + 96) = v23;
        *(v30 + 104) = v28;
        v33 = *(v30 + 112);
        *(v30 + 112) = v41;

        sub_1CF03C530(v29, v28, v41);
        sub_1CF03D7A8(v31, v32, v33);
        sub_1CF03D7A8(v29, v28, v41);
        v34 = *(v40 + 16);
        v49 = &type metadata for SQLItemJobID;
        v50 = sub_1CF03E084();
        v47 = v46;
        v48 = v34;
        swift_beginAccess();
        sub_1CEFDA9E0(&v47, v30 + 56, &unk_1EC4C1BE0, &unk_1CF9FD400);
        swift_endAccess();

        v35 = v51;
        v36 = v51 == 0x7FFFFFFFFFFFFFFFLL;
        v37 = v51 == 0x7FFFFFFFFFFFFFFFLL;
        v38 = v45;
        if (v51 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v38 = 0;
          v35 = 0;
        }

        *v43 = v30;
        *(v43 + 8) = v38;
        v39 = v7;
        if (v36)
        {
          v39 = 0;
        }

        *(v43 + 16) = v35;
        *(v43 + 24) = v39;
        *(v43 + 32) = v37;
      }

      else
      {
        sub_1CF9E7B68();
        __break(1u);
      }
    }
  }
}

uint64_t sub_1CF3AC088(uint64_t a1, void *a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t (*a5)(uint64_t))
{
  v10 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A6, 0x80000001CFA44A80);
  MEMORY[0x1D3868CC0](a2[5], a2[6]);
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  v11 = a2[3];
  v12 = a2[4];
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  if (a4)
  {

    MEMORY[0x1D3868CC0](v11, v12);
    MEMORY[0x1D3868CC0](a3, a4);
    a4, v13, v14, v15, v16, v17, v18, v19;
    v20 = 0x2044455845444E49;
    v10 = 0xEB00000000205942;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x1D3868CC0](v20, v10);
  v10, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xE800000000000000);
  v28 = a5(a1);
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  return 0;
}

void sub_1CF3AC224(uint64_t a1, char a2, uint64_t a3, void *a4, unsigned int a5)
{
  v40 = a5;
  v39 = a4;
  v8 = sub_1CF9E6068();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v50 = a2;
  v51 = MEMORY[0x1E69E7CC0];
  v45 = &v49;
  v46 = a3;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v9 + 56))(v17, 1, 1, v8);
  sub_1CEFCCBDC(v17, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(v9 + 48);
  if (v21(v14, 1, v8) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    if (v21(v14, 1, v8) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
  }

  v23 = v43;
  (*(v9 + 16))(v43, v11, v8);
  *(v23 + *(v18 + 20)) = v20;
  v24 = v23 + *(v18 + 24);
  *v24 = "SQLDB: Fetch Jobs";
  *(v24 + 8) = 17;
  *(v24 + 16) = 2;
  v25 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v9 + 8))(v11, v8);
  v26 = sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v26);
  *(&v38 - 5) = 0;
  *(&v38 - 4) = 0;
  v27 = v41;
  *(&v38 - 6) = v42;
  *(&v38 - 3) = sub_1CF480D40;
  *(&v38 - 2) = &v44;
  v28 = sub_1CF7D55FC(sub_1CF485AA4, (&v38 - 8), v39, v40);
  if (v27)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v23, type metadata accessor for Signpost);
    v51, v29, v30, v31, v32, v33, v34, v35;
  }

  else
  {
    v36 = v28;
    if ([v28 next])
    {
      do
      {
        v37 = objc_autoreleasePoolPush();
        sub_1CF3ABD1C(v36, v47);
        sub_1CF47E31C(v47[0], v47[1], v47[2], v47[3], v48, &v51);

        objc_autoreleasePoolPop(v37);
      }

      while (([v36 next] & 1) != 0);
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v23, type metadata accessor for Signpost);
  }
}

uint64_t sub_1CF3AC728(void *a1, unint64_t a2, char a3, _TtC18FileProviderDaemon8FSTester *a4)
{
  sub_1CF9E7948();
  0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
  strcpy(v85, "item_id = ");
  BYTE3(v85[1]) = 0;
  HIDWORD(v85[1]) = -369098752;
  if (!a3)
  {
LABEL_5:
    a2 = -a2;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_5;
  }

  a2 = (a2 != 0) << 63;
LABEL_7:
  v15 = [a1 bindLongParameter_];
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA44A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v26 = sub_1CF9E6C18();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v36, v37, v38, v39, v40, v41, v42;
  v44 = v85[0];
  v43 = v85[1];
  if (a4)
  {
    strcpy(v85, " AND type IN ");
    HIWORD(v85[1]) = -4864;
    *(swift_allocObject() + 16) = a1;

    v45 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8, MEMORY[0x1E69E6CC8]);
    v46 = sub_1CF9E6C18();
    v48 = v47;

    MEMORY[0x1D3868CC0](v46, v48);
    v48, v49, v50, v51, v52, v53, v54, v55;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    a4, v56, v57, v58, v59, v60, v61, v62;
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    0xE100000000000000, v63, v64, v65, v66, v67, v68, v69;

    MEMORY[0x1D3868CC0](v85[0], v85[1]);
    v43, v70, v71, v72, v73, v74, v75, v76;
    v85[1], v77, v78, v79, v80, v81, v82, v83;
  }

  return v44;
}

uint64_t sub_1CF3ACA9C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E6938();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1CF9E7948();
  v63 = v60;
  v64 = v61;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v10 = *(a3 + 96);
  v11 = *(a3 + 104);
  v12 = *(a3 + 112);
  sub_1CF03C530(v10, v11, *(a3 + 112));
  v59 = a1;
  v13 = sub_1CF065BDC(v10, v11, v12, 0x696C756465686373, 0xEB000000005F676ELL);
  v15 = v14;
  sub_1CF03D7A8(v10, v11, v12);
  MEMORY[0x1D3868CC0](v13, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44090);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;
  sub_1CF9E6918();
  v25 = sub_1CF9E68C8();
  v27 = v26;
  v24, v26, v28, v29, v30, v31, v32, v33;
  (*(v7 + 8))(v9, v6);
  if (v27 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v34 = sub_1CF9E5B48();
    sub_1CEFE48D8(v25, v27);
    v35 = [v59 bindObjectParameter_];

    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v38 = v37;

    MEMORY[0x1D3868CC0](v36, v38);
    v38, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
    v46 = qword_1CFA05BE8[sub_1CF387EDC()];
    v62 = MEMORY[0x1E69E6530];
    v60 = v46;
    v47 = sub_1CEFF8EA0(&v60);
    v49 = v48;
    sub_1CEFCCC44(&v60, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v49)
    {
      MEMORY[0x1D3868CC0](v47, v49);
      v49, v50, v51, v52, v53, v54, v55, v56;
      return v63;
    }
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3ACE38(void *a1, uint64_t a2, uint64_t a3)
{
  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v44 = 0;
  v45 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x20455441445055, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1D3868CC0](0x205445532020200ALL, 0xE800000000000000);
  v6 = *(a3 + 96);
  v7 = *(a3 + 104);
  v8 = *(a3 + 112);
  sub_1CF03C530(v6, v7, *(a3 + 112));
  v9 = sub_1CF065BDC(v6, v7, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v6, v7, v8);
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA44090);
  v19 = *(a3 + 144);
  if (!*(a3 + 152))
  {
LABEL_5:
    v19 = -v19;
    goto LABEL_7;
  }

  if (*(a3 + 152) == 1)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_5;
  }

  v19 = (v19 != 0) << 63;
LABEL_7:
  v20 = [a1 bindLongParameter_];
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  MEMORY[0x1D3868CC0](v21, v23);
  v23, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](0x70797420444E4120, 0xEC000000203D2065);
  v31 = qword_1CFA05BE8[sub_1CF388E8C()];
  v43[3] = MEMORY[0x1E69E6530];
  v43[0] = v31;
  v32 = sub_1CEFF8EA0(v43);
  v34 = v33;
  sub_1CEFCCC44(v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v34)
  {
    MEMORY[0x1D3868CC0](v32, v34);
    v34, v35, v36, v37, v38, v39, v40, v41;
    return v44;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF3AD104(uint64_t a1, void *a2, uint64_t a3)
{
  v131 = a2;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDF0, &unk_1CFA054F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v138 = &v106 - v8;
  v122 = sub_1CF9E6068();
  v9 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v127 = &v106 - v15;
  v118 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v118);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 72);
  if (!v18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v19 = *(v3 + 80);

  v21 = v18(v20);
  if (!v21)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    sub_1CF511A20("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLItemJobRegistry.swift", 137, 2, 987);
  }

  v22 = v21;
  sub_1CEFF7124(v18, v19);
  v23 = *(v22 + 32);

  (*(**(v23 + 16) + 96))(&v132, v24);

  v25 = sub_1CF02F42C(v132, v133);
  v33 = *v25->tree;
  if (!v33)
  {
    goto LABEL_40;
  }

  v34 = 0;
  v115 = v25 + 1;
  v114 = (v9 + 56);
  v35 = (v9 + 48);
  v107 = (v9 + 32);
  v112 = (v9 + 16);
  v111 = (v9 + 8);
  v36 = v121;
  v37 = v122;
  v109 = v4;
  v125 = a1;
  v117 = v17;
  v110 = v25;
  v108 = v13;
  v113 = v35;
  v128 = a3;
  while (1)
  {
    if (v34 >= v33)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v120 = &v106;
    v116 = v34;
    v38 = &v115[v34];
    v39 = v38->tester[0];
    v40 = *v38->_anon_8;
    v41 = *v38->tree;
    isa = v38->super.isa;
    v134 = isa;
    v135 = v40;
    v136 = v41;
    v137 = v39;
    MEMORY[0x1EEE9AC00](v40);
    v129 = &v106 - 4;
    *(&v106 - 2) = &v134;
    v42 = qword_1EDEAE980;

    if (v42 != -1)
    {
      swift_once();
    }

    v43 = qword_1EDEBBE40;
    v44 = v127;
    (*v114)(v127, 1, 1, v37);
    sub_1CEFCCBDC(v44, v13, &unk_1EC4BED20, &unk_1CFA00700);
    v45 = *v113;
    if ((*v113)(v13, 1, v37) == 1)
    {
      v46 = v43;
      sub_1CF9E6048();
      v47 = v45(v13, 1, v37);
      v48 = v125;
      if (v47 != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*v107)(v36, v13, v37);
      v48 = v125;
    }

    (*v112)(v17, v36, v37);
    v49 = v118;
    *&v17[*(v118 + 20)] = v43;
    v50 = &v17[*(v49 + 24)];
    *v50 = "SQLDB: Fetch Jobs";
    *(v50 + 1) = 17;
    v50[16] = 2;
    v51 = v43;
    sub_1CF9E7468();
    v119 = v51;
    sub_1CF9E6038();
    (*v111)(v36, v37);
    v52 = sub_1CEFCCC44(v127, &unk_1EC4BED20, &unk_1CFA00700);
    MEMORY[0x1EEE9AC00](v52);
    *(&v106 - 5) = 0;
    *(&v106 - 4) = 0;
    *(&v106 - 6) = v4;
    v53 = v129;
    v54 = v130;
    *(&v106 - 3) = sub_1CF4810A0;
    *(&v106 - 2) = v53;
    v55 = sub_1CF7D55FC(sub_1CF485AA4, (&v106 - 8), v131, a3);
    v130 = v54;
    if (v54)
    {
      goto LABEL_39;
    }

    v56 = v55;
    v57 = [v55 next];
    v124 = v56;
    if (v57)
    {
      break;
    }

LABEL_37:
    v34 = v116 + 1;

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v17, type metadata accessor for Signpost);
    v135, v92, v93, v94, v95, v96, v97, v98;
    v25 = v110;
    v33 = *v110->tree;
    if (v34 == v33)
    {
      goto LABEL_40;
    }
  }

  while (1)
  {
    v58 = objc_autoreleasePoolPush();
    v59 = v130;
    sub_1CF3ABD1C(v56, &v132);
    if (v59)
    {
      break;
    }

    v126 = v58;
    v60 = v132;
    if (*(v132 + 112))
    {
      goto LABEL_47;
    }

    v61 = v138;
    sub_1CEFCCBDC(v48, v138, &qword_1EC4BE710, &qword_1CF9FE5A8);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
    (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
    v63 = *(v4 + 72);
    if (!v63)
    {
      goto LABEL_43;
    }

    v64 = *(v4 + 80);

    v66 = v63(v65);
    if (!v66)
    {
      goto LABEL_44;
    }

    v67 = v66;
    sub_1CEFF7124(v63, v64);
    if (*(v60 + 112))
    {
      sub_1CF50F1DC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/JobRegistry.swift", 113, 2, 894);
    }

    v68 = *(v60 + 96);
    v69 = v68 & isa;
    v129 = *(v60 + 104);

    if (v69)
    {
      v70 = v68;
      do
      {
        v72 = v69 & -v69;
        sub_1CF44058C(v72, v60, v138, v67, v131, a3);
        if (v73)
        {
          v74 = -1;
          if ((v70 & v72) != 0)
          {
            v74 = ~v72;
          }

          v70 &= v74;
          v75 = *(v60 + 96);
          v130 = *(v60 + 104);
          v76 = v129;
          *(v60 + 96) = v70;
          *(v60 + 104) = v76;
          v77 = *(v60 + 112);
          *(v60 + 112) = 0;
          sub_1CF03C530(v68, v76, 0);
          v78 = v75;
          a3 = v128;
          sub_1CF03D7A8(v78, v130, v77);
        }

        v71 = v69 == v72;
        v69 ^= v72;
      }

      while (!v71);
    }

    else
    {
      v70 = v68;
    }

    v79 = v70 == 0;
    if (v70)
    {
      v80 = v129;
    }

    else
    {
      v70 = v129;
      v80 = 0;
    }

    sub_1CEFCCC44(v138, &unk_1EC4BFDF0, &unk_1CFA054F0);

    v81 = *(v60 + 96);
    v82 = *(v60 + 104);
    *(v60 + 96) = v70;
    *(v60 + 104) = v80;
    v83 = *(v60 + 112);
    *(v60 + 112) = v79;
    sub_1CF03D7A8(v81, v82, v83);
    v84 = v131;
    v85 = [v131 assertOnQueue];
    MEMORY[0x1EEE9AC00](v85);
    v4 = v109;
    *(&v106 - 2) = v109;
    *(&v106 - 1) = v60;
    sub_1CF7D5920(sub_1CF4810B4, (&v106 - 4), v84);
    v130 = 0;
    v17 = v117;
    if (*(v60 + 112) == 1)
    {
      v86 = *(v4 + 72);
      v48 = v125;
      v13 = v108;
      if (v86)
      {
        v87 = *(v4 + 80);

        v89 = v86(v88);
        v90 = sub_1CEFF7124(v86, v87);
        if (v89)
        {
          (*(*v89 + 304))(v90);
        }
      }

      v37 = v122;
    }

    else
    {
      v48 = v125;
      v37 = v122;
      v13 = v108;
    }

    objc_autoreleasePoolPop(v126);
    v56 = v124;
    v91 = [v124 next];
    v36 = v121;
    if ((v91 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v130 = v59;
  objc_autoreleasePoolPop(v58);

LABEL_39:
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5278(v17, type metadata accessor for Signpost);
  v110, v99, v100, v101, v102, v103, v104, v105;
  v25 = v135;
LABEL_40:
  v25, v26, v27, v28, v29, v30, v31, v32;
}

void sub_1CF3ADBB0(uint64_t a1, void *a2, uint64_t a3)
{
  v149 = a2;
  v4 = v3;
  v145 = a1;
  v153[3] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDE8, &qword_1CFA054E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v150 = v123 - v7;
  v139 = sub_1CF9E6068();
  v8 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v10 = v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v144 = v123 - v15;
  v134 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v134);
  v17 = v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 72);
  if (!v18)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  v19 = *(v3 + 80);

  v21 = v18(v20);
  if (!v21)
  {
    goto LABEL_52;
  }

  v22 = v21;
  sub_1CEFF7124(v18, v19);
  v23 = *(v22 + 32);

  (*(**(v23 + 16) + 96))(aBlock, v24);

  v25 = aBlock[0];
  v26 = sub_1CF031F0C(aBlock[0]);

  v34 = *v26->tree;
  if (!v34)
  {
LABEL_43:
    v26, v27, v28, v29, v30, v31, v32, v33;
    return;
  }

  v35 = 0;
  v130 = v26 + 1;
  v129 = (v8 + 56);
  v36 = (v8 + 48);
  v123[0] = v8 + 32;
  v127 = (v8 + 16);
  v126 = (v8 + 8);
  v123[1] = v152;
  v37 = v139;
  v142 = v13;
  v124 = v4;
  v133 = v17;
  v132 = v26;
  v125 = v10;
  v128 = v36;
  v146 = a3;
  while (1)
  {
    if (v35 >= v34)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v138 = v123;
    v131 = v35;
    v38 = &v130->super.isa + 3 * v35;
    v39 = v38[1];
    v40 = v38[2];
    v140 = *v38;
    v153[0] = v140;
    v153[1] = v39;
    v153[2] = v40;
    MEMORY[0x1EEE9AC00](v39);
    v147 = &v123[-4];
    v123[-2] = v153;
    v41 = qword_1EDEAE980;
    v137 = v42;

    v136 = v40;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = qword_1EDEBBE40;
    v44 = v144;
    (*v129)(v144, 1, 1, v37);
    sub_1CEFCCBDC(v44, v13, &unk_1EC4BED20, &unk_1CFA00700);
    v45 = *v128;
    if ((*v128)(v13, 1, v37) == 1)
    {
      v46 = v43;
      v47 = v125;
      sub_1CF9E6048();
      v48 = v45(v142, 1, v37);
      v49 = v47;
      v13 = v142;
      if (v48 != 1)
      {
        sub_1CEFCCC44(v142, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v49 = v125;
      (*v123[0])(v125, v13, v37);
    }

    (*v127)(v17, v49, v37);
    v50 = v134;
    *&v17[*(v134 + 20)] = v43;
    v51 = &v17[*(v50 + 24)];
    *v51 = "SQLDB: Fetch Jobs";
    *(v51 + 1) = 17;
    v51[16] = 2;
    v52 = v43;
    sub_1CF9E7468();
    v135 = v52;
    sub_1CF9E6038();
    (*v126)(v49, v37);
    v53 = sub_1CEFCCC44(v144, &unk_1EC4BED20, &unk_1CFA00700);
    MEMORY[0x1EEE9AC00](v53);
    v123[-5] = 0;
    v123[-4] = 0;
    v123[-6] = v4;
    v54 = v147;
    v55 = v148;
    v123[-3] = sub_1CF481064;
    v123[-2] = v54;
    v56 = sub_1CF7D55FC(sub_1CF485AA4, &v123[-8], v149, a3);
    v148 = v55;
    if (v55)
    {
      v120 = v137;
      v121 = v136;
      goto LABEL_42;
    }

    v57 = v56;
    v58 = [v56 next];
    v141 = v57;
    if (v58)
    {
      break;
    }

LABEL_39:
    v98 = v57;
    v35 = v131 + 1;

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5278(v17, type metadata accessor for Signpost);

    v137, v99, v100, v101, v102, v103, v104, v105;
    v34 = *v26->tree;
    if (v35 == v34)
    {
      goto LABEL_43;
    }
  }

  while (1)
  {
    v59 = objc_autoreleasePoolPush();
    v60 = v148;
    sub_1CF3AB9D4(v57, aBlock);
    if (v60)
    {
      v148 = v60;
      v120 = v137;
      v121 = v136;
      goto LABEL_41;
    }

    v61 = aBlock[0];
    if (*(aBlock[0] + 112))
    {
      sub_1CF511A20("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLItemJobRegistry.swift", 137, 2, 987);
    }

    v62 = v150;
    sub_1CEFCCBDC(v145, v150, &unk_1EC4C4E20, &unk_1CFA05350);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    v64 = *(v4 + 72);
    if (!v64)
    {
      goto LABEL_49;
    }

    v65 = *(v4 + 80);

    v67 = v64(v66);
    if (!v67)
    {
      goto LABEL_50;
    }

    v68 = v67;
    sub_1CEFF7124(v64, v65);
    if (*(v61 + 112))
    {
      sub_1CF50F1DC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/JobRegistry.swift", 113, 2, 894);
    }

    v143 = v59;
    v69 = v61[12];
    v70 = v69 & v140;
    v147 = v61[13];

    if (v70)
    {
      v71 = v69;
      do
      {
        v73 = v70 & -v70;
        sub_1CF43D19C(v73, v61, v150, v68, v149, a3);
        if (v74)
        {
          v75 = -1;
          if ((v71 & v73) != 0)
          {
            v75 = ~v73;
          }

          v71 &= v75;
          v76 = v61[12];
          v148 = v61[13];
          v77 = v147;
          v61[12] = v71;
          v61[13] = v77;
          v78 = *(v61 + 112);
          *(v61 + 112) = 0;
          sub_1CF03C530(v69, v77, 0);
          v79 = v76;
          a3 = v146;
          sub_1CF03D7A8(v79, v148, v78);
        }

        v72 = v70 == v73;
        v70 ^= v73;
      }

      while (!v72);
    }

    else
    {
      v71 = v69;
    }

    v148 = 0;
    v80 = v71 == 0;
    if (v71)
    {
      v81 = v147;
    }

    else
    {
      v71 = v147;
      v81 = 0;
    }

    sub_1CEFCCC44(v150, &qword_1EC4BFDE8, &qword_1CFA054E8);

    v82 = v61[12];
    v83 = v61[13];
    v61[12] = v71;
    v61[13] = v81;
    v84 = *(v61 + 112);
    *(v61 + 112) = v80;
    sub_1CF03D7A8(v82, v83, v84);
    v85 = v149;
    v86 = [v149 assertOnQueue];
    MEMORY[0x1EEE9AC00](v86);
    v4 = v124;
    v123[-2] = v124;
    v123[-1] = v61;
    v87 = swift_allocObject();
    *(v87 + 16) = sub_1CF481098;
    *(v87 + 24) = &v123[-4];
    v152[2] = sub_1CEFE7610;
    v152[3] = v87;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v152[0] = sub_1CEFE7548;
    v152[1] = &block_descriptor_882;
    v88 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v89 = [v85 executeSwift:v88 error:aBlock];
    _Block_release(v88);
    v90 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_48;
    }

    if (!v89)
    {
      break;
    }

    v17 = v133;
    if (*(v61 + 112) == 1)
    {
      v92 = *(v4 + 72);
      v13 = v142;
      if (v92)
      {
        v93 = *(v4 + 80);

        v95 = v92(v94);
        v96 = sub_1CEFF7124(v92, v93);
        if (v95)
        {
          (*(*v95 + 304))(v96);
        }
      }

      v37 = v139;
    }

    else
    {
      v37 = v139;
      v13 = v142;
    }

    v57 = v141;

    objc_autoreleasePoolPop(v143);
    v97 = [v57 next];
    v26 = v132;
    if ((v97 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v122 = sub_1CF9E57F8();

  v148 = v122;
  swift_willThrow();

  v17 = v133;
  v26 = v132;
  v120 = v137;
  v121 = v136;
  v59 = v143;
LABEL_41:
  objc_autoreleasePoolPop(v59);

LABEL_42:
  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5278(v17, type metadata accessor for Signpost);

  v120, v106, v107, v108, v109, v110, v111, v112;
  v26, v113, v114, v115, v116, v117, v118, v119;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF3AE84C(void *a1, _TtC18FileProviderDaemon8FSTester *a2, _TtC18FileProviderDaemon8FSTester *a3, void *a4)
{
  v8 = sub_1CF9E6938();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v134 = 0;
    v135 = 0xE000000000000000;
    v12 = a4;
    sub_1CF9E7948();
    v141 = v134;
    v142 = v135;
    MEMORY[0x1D3868CC0](0x2064695F6D657469, 0xEA0000000000203DLL);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;
    sub_1CF9E6918();
    v15 = sub_1CF9E68C8();
    v17 = v16;
    v14, v16, v18, v19, v20, v21, v22, v23;
    (*(v9 + 8))(v11, v8);
    if (v17 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v24 = sub_1CF9E5B48();
      sub_1CEFE48D8(v15, v17);
      v25 = [a1 bindObjectParameter_];

      v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v28 = v27;

      MEMORY[0x1D3868CC0](v26, v28);
      v28, v29, v30, v31, v32, v33, v34, v35;
      MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
      v139 = 40;
      v140 = 0xE100000000000000;
      v36 = swift_allocObject();
      *(v36 + 16) = a1;
      v134 = a3;
      v135 = sub_1CF086B60;
      v136 = 0;
      v137 = sub_1CF24FA9C;
      v138 = v36;

      v37 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
      sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8, MEMORY[0x1E69E6CC8]);
      sub_1CEFE4E68();
      v38 = sub_1CF9E6C18();
      v40 = v39;

      MEMORY[0x1D3868CC0](v38, v40);
      v40, v41, v42, v43, v44, v45, v46, v47;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      a3, v48, v49, v50, v51, v52, v53, v54;
      v55 = v140;
      MEMORY[0x1D3868CC0](v139, v140);
      v55, v56, v57, v58, v59, v60, v61, v62;
      MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA441C0);
      v63 = [v37 bindLongParameter_];
      v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v66 = v65;

      MEMORY[0x1D3868CC0](v64, v66);
      v66, v67, v68, v69, v70, v71, v72, v73;
      MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA44210);
      v137 = MEMORY[0x1E69E6530];
      v134 = a2;
      v74 = sub_1CEFF8EA0(&v134);
      v76 = v75;
      sub_1CEFCCC44(&v134, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (v76)
      {
        MEMORY[0x1D3868CC0](v74, v76);
        v76, v77, v78, v79, v80, v81, v82, v83;
        MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);

        return v141;
      }
    }
  }

  else
  {
    v134 = 0;
    v135 = 0xE000000000000000;
    sub_1CF9E7948();
    v141 = v134;
    v142 = v135;
    MEMORY[0x1D3868CC0](0x204E492065707974, 0xE800000000000000);
    v139 = 40;
    v140 = 0xE100000000000000;
    v84 = swift_allocObject();
    *(v84 + 16) = a1;
    v134 = a3;
    v135 = sub_1CF086B60;
    v136 = 0;
    v137 = sub_1CF24FA9C;
    v138 = v84;

    v85 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8, MEMORY[0x1E69E6CC8]);
    sub_1CEFE4E68();
    v86 = sub_1CF9E6C18();
    v88 = v87;

    MEMORY[0x1D3868CC0](v86, v88);
    v88, v89, v90, v91, v92, v93, v94, v95;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    a3, v96, v97, v98, v99, v100, v101, v102;
    v103 = v140;
    MEMORY[0x1D3868CC0](v139, v140);
    v103, v104, v105, v106, v107, v108, v109, v110;
    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
    v111 = [v85 bindLongParameter_];
    v112 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v114 = v113;

    MEMORY[0x1D3868CC0](v112, v114);
    v114, v115, v116, v117, v118, v119, v120, v121;
    MEMORY[0x1D3868CC0](0xD000000000000058, 0x80000001CFA44160);
    v137 = MEMORY[0x1E69E6530];
    v134 = a2;
    v122 = sub_1CEFF8EA0(&v134);
    v124 = v123;
    sub_1CEFCCC44(&v134, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v124)
    {
      MEMORY[0x1D3868CC0](v122, v124);
      v124, v125, v126, v127, v128, v129, v130, v131;
      MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
      return v141;
    }
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3AEF0C(void *a1, _TtC18FileProviderDaemon8FSTester *a2, _TtC18FileProviderDaemon8FSTester *a3, unint64_t a4, char a5)
{
  if (a5 == -1)
  {
    goto LABEL_6;
  }

  sub_1CF9E7948();
  v115 = 0;
  v116 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2064695F6D657469, 0xEA0000000000203DLL);
  if (a5)
  {
    if (a5 == 1)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_6:
        sub_1CF9E7948();
        v115 = 0;
        v116 = 0xE000000000000000;
        MEMORY[0x1D3868CC0](0x204E492065707974, 0xE800000000000000);
        v113 = 40;
        v114 = 0xE100000000000000;
        v10 = swift_allocObject();
        *(v10 + 16) = a1;
        v108 = a3;
        v109 = sub_1CF086B60;
        v110 = 0;
        v111 = sub_1CF24FA9C;
        v112 = v10;

        v11 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
        sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8, MEMORY[0x1E69E6CC8]);
        sub_1CEFE4E68();
        v12 = sub_1CF9E6C18();
        v14 = v13;

        MEMORY[0x1D3868CC0](v12, v14);
        v14, v15, v16, v17, v18, v19, v20, v21;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);
        a3, v22, v23, v24, v25, v26, v27, v28;
        MEMORY[0x1D3868CC0](v113, v114);
        v114, v29, v30, v31, v32, v33, v34, v35;
        MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
        v36 = [v11 bindLongParameter_];
        v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v39 = v38;

        MEMORY[0x1D3868CC0](v37, v39);
        v39, v40, v41, v42, v43, v44, v45, v46;
        v47 = "\nAND scheduling_state = ";
        v48 = 0xD000000000000058;
        goto LABEL_10;
      }
    }

    else
    {
      a4 = (a4 != 0) << 63;
    }
  }

  else
  {
    a4 = -a4;
  }

  v49 = [a1 bindLongParameter_];
  v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v52 = v51;

  MEMORY[0x1D3868CC0](v50, v52);
  v52, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
  v113 = 40;
  v114 = 0xE100000000000000;
  v60 = swift_allocObject();
  *(v60 + 16) = a1;
  v108 = a3;
  v109 = sub_1CF086B60;
  v110 = 0;
  v111 = sub_1CF24FA9C;
  v112 = v60;

  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
  sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v62 = sub_1CF9E6C18();
  v64 = v63;

  MEMORY[0x1D3868CC0](v62, v64);
  v64, v65, v66, v67, v68, v69, v70, v71;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  a3, v72, v73, v74, v75, v76, v77, v78;
  MEMORY[0x1D3868CC0](v113, v114);
  v114, v79, v80, v81, v82, v83, v84, v85;
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA441C0);
  v86 = [v61 bindLongParameter_];
  v87 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v89 = v88;

  MEMORY[0x1D3868CC0](v87, v89);
  v89, v90, v91, v92, v93, v94, v95, v96;
  v47 = "okup\nAND +scheduling_state = ";
  v48 = 0xD000000000000024;
LABEL_10:
  MEMORY[0x1D3868CC0](v48, v47 | 0x8000000000000000);
  v111 = MEMORY[0x1E69E6530];
  v108 = a2;
  v97 = sub_1CEFF8EA0(&v108);
  v99 = v98;
  sub_1CEFCCC44(&v108, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v99)
  {
    MEMORY[0x1D3868CC0](v97, v99);
    v99, v100, v101, v102, v103, v104, v105, v106;
    MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
    return v115;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3AF498(void *a1, int a2, void *a3)
{
  v189 = a1;
  v198 = a3;
  LODWORD(v190) = a2;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v178 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v178 - v12;
  v14 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v14);
  v179 = v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3[9];
  if (!v16)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v177 = 0;
    v176 = 87;
    v22 = sub_1CF9E7B68();
    __break(1u);
LABEL_36:
    MEMORY[0x1EEE9AC00](v22);
    v176 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v178[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v182 = v3;
  v3 = v3[10];

  v18 = v16(v17);
  if (!v18)
  {
    goto LABEL_34;
  }

  v19 = v18;
  v20 = sub_1CEFF7124(v16, v3);
  v21 = *(*v19 + 216);
  v186 = v19;
  v3 = v21(v20);
  v22 = objc_sync_enter(v3);
  if (v22)
  {
    goto LABEL_36;
  }

  swift_beginAccess();
  v23 = v3[2];

  v24 = objc_sync_exit(v3);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    v176 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v178[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v25 = v188;
  sub_1CF383F1C(v23, sub_1CF066914, 0);
  v27 = v26;
  v188 = v25;
  v23, v28, v29, v30, v31, v32, v33, v34;
  v181 = sub_1CF8E44FC(v27);
  v27, v35, v36, v37, v38, v39, v40, v41;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  (*(v5 + 56))(v13, 1, 1, v4);
  sub_1CEFCCBDC(v13, v10, &unk_1EC4BED20, &unk_1CFA00700);
  v43 = *(v5 + 48);
  if (v43(v10, 1, v4) == 1)
  {
    v44 = v42;
    sub_1CF9E6048();
    if (v43(v10, 1, v4) != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
  }

  v45 = v179;
  (*(v5 + 16))(v179, v7, v4);
  *&v45[*(v14 + 20)] = v42;
  v46 = &v45[*(v14 + 24)];
  *v46 = "SQLDB: Fetch Jobs";
  *(v46 + 1) = 17;
  v46[16] = 2;
  v47 = v42;
  sub_1CF9E7468();
  v178[1] = v47;
  sub_1CF9E6038();
  (*(v5 + 8))(v7, v4);
  v48 = sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v48);
  v178[-5] = 0;
  v178[-4] = 0;
  v49 = v182;
  v178[-6] = v182;
  v178[-3] = sub_1CF381274;
  v176 = 0;
  v50 = v188;
  v51 = sub_1CF7D5474(sub_1CF484148, &v178[-8], v189, v190);
  v52 = v50;
  if (v50)
  {
    goto LABEL_32;
  }

  v53 = v51;
  if (![v51 next])
  {
    goto LABEL_31;
  }

  v180 = v53;
  while (1)
  {
    v54 = objc_autoreleasePoolPush();
    sub_1CF3ABD1C(v53, &v193);
    if (v52)
    {
      break;
    }

    v189 = v54;
    v190 = 0;
    v55 = v193;
    v184 = v195;
    v185 = v194;
    v183 = v196;
    LODWORD(v188) = v197;
    swift_beginAccess();
    sub_1CEFCCBDC(v55 + 56, &v193, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v56 = v196;
    if (!v196)
    {
      sub_1CEFCCC44(&v193, &unk_1EC4C1BE0, &unk_1CF9FD400);
LABEL_21:
      v187 = 2;
      goto LABEL_22;
    }

    v57 = v197;
    v58 = __swift_project_boxed_opaque_existential_1(&v193, v196);
    v59 = *(v56 - 8);
    v60 = MEMORY[0x1EEE9AC00](v58);
    v62 = v178 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v59 + 16))(v62, v60);
    sub_1CEFCCC44(&v193, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v63 = (*(v57 + 16))(v56, v57);
    v65 = v64;
    (*(v59 + 8))(v62, v56);
    v66 = sub_1CEFDB148(v63, v65, v181);
    v65, v67, v68, v69, v70, v71, v72, v73;
    if ((v66 & 1) == 0)
    {
      goto LABEL_21;
    }

    v187 = 0;
LABEL_22:
    if ((*(*v186 + 384))(v55) < 0)
    {

      v105 = v198[3];
      v106 = v198[4];
      __swift_project_boxed_opaque_existential_1(v198, v105);
      v193 = 8224;
      v194 = 0xE200000000000000;
      v108 = sub_1CF902D78(v107);
      v110 = v109;
      MEMORY[0x1D3868CC0](v108);
      v110, v111, v112, v113, v114, v115, v116, v117;
      v118 = sub_1CF9E7988();
      v120 = v119;
      MEMORY[0x1D3868CC0](v118);
      v120, v121, v122, v123, v124, v125, v126, v127;
      v97 = v194;
      sub_1CF4FB2BC(v193, v194, v105, v106);
    }

    else
    {
      v74 = v198[3];
      v75 = v198[4];
      __swift_project_boxed_opaque_existential_1(v198, v74);
      v193 = 8224;
      v194 = 0xE200000000000000;
      v77 = sub_1CF902D78(v76);
      v79 = v78;
      MEMORY[0x1D3868CC0](v77);
      v79, v80, v81, v82, v83, v84, v85, v86;
      v87 = sub_1CF9E7988();
      v89 = v88;
      MEMORY[0x1D3868CC0](v87);
      v89, v90, v91, v92, v93, v94, v95, v96;
      v97 = v194;
      v49 = v182;
      sub_1CF4FB2BC(v193, v194, v74, v75);
    }

    v97, v98, v99, v100, v101, v102, v103, v104;
    if ((v188 & 1) == 0)
    {
      v128 = v198[3];
      v129 = v198[4];
      __swift_project_boxed_opaque_existential_1(v198, v128);
      v193 = 8224;
      v194 = 0xE200000000000000;
      v130 = sub_1CF388E8C();
      v131 = *(v55 + 144);
      v132 = *(v55 + 152);
      v3 = sub_1CF19F384(v130);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
      v133 = swift_dynamicCastMetatype();
      if (!v133)
      {
        goto LABEL_35;
      }

      v191 = v131;
      v192 = v132;
      v134 = (*(v133 + 592))(&v191, v185, v184, v183);
      v136 = *(v134 + 96);
      v135 = *(v134 + 104);
      *(v134 + 96) = 0;
      *(v134 + 104) = 0;
      v137 = *(v134 + 112);
      *(v134 + 112) = 0;

      sub_1CF03D7A8(v136, v135, v137);

      v139 = sub_1CF902D78(v138);
      v141 = v140;
      MEMORY[0x1D3868CC0](v139);
      v141, v142, v143, v144, v145, v146, v147, v148;

      v149 = v194;
      sub_1CF4FB2BC(v193, v194, v128, v129);
      v149, v150, v151, v152, v153, v154, v155, v156;
    }

    if (*(v49 + 104) == 1)
    {
      v157 = v198[3];
      v158 = v198[4];
      __swift_project_boxed_opaque_existential_1(v198, v157);
      v193 = 8224;
      v194 = 0xE200000000000000;
      MEMORY[0x1D3868CC0](v49[11], v49[12]);
      MEMORY[0x1D3868CC0](0x6C75646568637320, 0xEA00000000006465);
      v159 = v194;
      sub_1CF4FB2BC(v193, v194, v157, v158);

      v159, v160, v161, v162, v163, v164, v165, v166;
    }

    else
    {
    }

    v52 = v190;
    v53 = v180;
    objc_autoreleasePoolPop(v189);
    if (([v53 next] & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  objc_autoreleasePoolPop(v54);
LABEL_31:

LABEL_32:
  sub_1CF9E7458();
  v167 = v179;
  sub_1CF9E6038();

  v181, v168, v169, v170, v171, v172, v173, v174;
  return sub_1CEFD5278(v167, type metadata accessor for Signpost);
}

uint64_t sub_1CF3AFFF4(void *a1, int a2, void *a3)
{
  v190 = a1;
  v191 = a3;
  LODWORD(v192) = a2;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v179 - v12;
  v14 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v14);
  v180 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3[9];
  if (!v16)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v178 = 0;
    v177 = 87;
    v22 = sub_1CF9E7B68();
    __break(1u);
LABEL_34:
    MEMORY[0x1EEE9AC00](v22);
    v177 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v179 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v183 = v3;
  v3 = v3[10];

  v18 = v16(v17);
  if (!v18)
  {
    goto LABEL_32;
  }

  v19 = v18;
  v20 = sub_1CEFF7124(v16, v3);
  v21 = *(*v19 + 216);
  v187 = v19;
  v3 = v21(v20);
  v22 = objc_sync_enter(v3);
  if (v22)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v23 = v3[2];

  v24 = objc_sync_exit(v3);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    v177 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v179 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v25 = v189;
  sub_1CF383BB4(v23, sub_1CF066914, 0);
  v27 = v26;
  v189 = v25;
  v23, v28, v29, v30, v31, v32, v33, v34;
  v182 = sub_1CF8E44FC(v27);
  v27, v35, v36, v37, v38, v39, v40, v41;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  (*(v5 + 56))(v13, 1, 1, v4);
  sub_1CEFCCBDC(v13, v10, &unk_1EC4BED20, &unk_1CFA00700);
  v43 = *(v5 + 48);
  if (v43(v10, 1, v4) == 1)
  {
    v44 = v42;
    sub_1CF9E6048();
    if (v43(v10, 1, v4) != 1)
    {
      sub_1CEFCCC44(v10, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
  }

  v45 = v180;
  (*(v5 + 16))(v180, v7, v4);
  *&v45[*(v14 + 20)] = v42;
  v46 = &v45[*(v14 + 24)];
  *v46 = "SQLDB: Fetch Jobs";
  *(v46 + 1) = 17;
  v46[16] = 2;
  v47 = v42;
  sub_1CF9E7468();
  v179 = v47;
  sub_1CF9E6038();
  (*(v5 + 8))(v7, v4);
  v48 = sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v48);
  *(&v179 - 5) = 0;
  *(&v179 - 4) = 0;
  v49 = v183;
  *(&v179 - 6) = v183;
  *(&v179 - 3) = sub_1CF381274;
  v177 = 0;
  v50 = v189;
  v51 = sub_1CF7D5474(sub_1CF485AA4, (&v179 - 8), v190, v192);
  v52 = v50;
  if (!v50)
  {
    v53 = v51;
    if ([v51 next])
    {
      v181 = v53;
      while (1)
      {
        v54 = objc_autoreleasePoolPush();
        sub_1CF3AB9D4(v53, &v193);
        if (v52)
        {
          break;
        }

        v189 = v54;
        v190 = 0;
        v55 = v193;
        v185 = v195;
        v186 = v194;
        v184 = v196;
        v188 = v197;
        swift_beginAccess();
        sub_1CEFCCBDC(v55 + 56, &v193, &unk_1EC4C1BE0, &unk_1CF9FD400);
        v56 = v196;
        v192 = v55;
        if (v196)
        {
          v57 = v197;
          v58 = __swift_project_boxed_opaque_existential_1(&v193, v196);
          v59 = *(v56 - 8);
          v60 = MEMORY[0x1EEE9AC00](v58);
          v62 = &v179 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v59 + 16))(v62, v60);
          sub_1CEFCCC44(&v193, &unk_1EC4C1BE0, &unk_1CF9FD400);
          v63 = (*(v57 + 16))(v56, v57);
          v65 = v64;
          (*(v59 + 8))(v62, v56);
          v55 = v192;
          sub_1CEFDB148(v63, v65, v182);
          v65, v66, v67, v68, v69, v70, v71, v72;
        }

        else
        {
          sub_1CEFCCC44(&v193, &unk_1EC4C1BE0, &unk_1CF9FD400);
        }

        if ((*(*v187 + 384))(v55) < 0)
        {

          v104 = v191[3];
          v105 = v191[4];
          __swift_project_boxed_opaque_existential_1(v191, v104);
          v193 = 8224;
          v194 = 0xE200000000000000;
          v107 = sub_1CF902D78(v106);
          v109 = v108;
          MEMORY[0x1D3868CC0](v107);
          v109, v110, v111, v112, v113, v114, v115, v116;
          v117 = sub_1CF9E7988();
          v119 = v118;
          MEMORY[0x1D3868CC0](v117);
          v119, v120, v121, v122, v123, v124, v125, v126;
          v96 = v194;
          sub_1CF4FB2BC(v193, v194, v104, v105);
        }

        else
        {
          v73 = v191[3];
          v74 = v191[4];
          __swift_project_boxed_opaque_existential_1(v191, v73);
          v193 = 8224;
          v194 = 0xE200000000000000;
          v76 = sub_1CF902D78(v75);
          v78 = v77;
          MEMORY[0x1D3868CC0](v76);
          v78, v79, v80, v81, v82, v83, v84, v85;
          v86 = sub_1CF9E7988();
          v88 = v87;
          MEMORY[0x1D3868CC0](v86);
          v88, v89, v90, v91, v92, v93, v94, v95;
          v96 = v194;
          v49 = v183;
          sub_1CF4FB2BC(v193, v194, v73, v74);
        }

        v96, v97, v98, v99, v100, v101, v102, v103;
        if ((v188 & 1) == 0)
        {
          v127 = v191[3];
          v128 = v191[4];
          __swift_project_boxed_opaque_existential_1(v191, v127);
          v193 = 8224;
          v194 = 0xE200000000000000;
          v129 = v192;
          v130 = sub_1CF387EDC();
          v131 = *(v129 + 144);
          v3 = sub_1CF1A01B4(v130);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0230, &unk_1CFA05740);
          v132 = swift_dynamicCastMetatype();
          if (!v132)
          {
            goto LABEL_33;
          }

          v198 = v131;
          v133 = *(v132 + 592);
          v134 = v131;
          v135 = v133(&v198, v186, v185, v184);
          v137 = *(v135 + 96);
          v136 = *(v135 + 104);
          *(v135 + 96) = 0;
          *(v135 + 104) = 0;
          v138 = *(v135 + 112);
          *(v135 + 112) = 0;

          sub_1CF03D7A8(v137, v136, v138);

          v140 = sub_1CF902D78(v139);
          v142 = v141;
          MEMORY[0x1D3868CC0](v140);
          v142, v143, v144, v145, v146, v147, v148, v149;

          v150 = v194;
          sub_1CF4FB2BC(v193, v194, v127, v128);
          v150, v151, v152, v153, v154, v155, v156, v157;
        }

        if (*(v49 + 104) == 1)
        {
          v158 = v191[3];
          v159 = v191[4];
          __swift_project_boxed_opaque_existential_1(v191, v158);
          v193 = 8224;
          v194 = 0xE200000000000000;
          MEMORY[0x1D3868CC0](v49[11], v49[12]);
          MEMORY[0x1D3868CC0](0x6C75646568637320, 0xEA00000000006465);
          v160 = v194;
          sub_1CF4FB2BC(v193, v194, v158, v159);

          v160, v161, v162, v163, v164, v165, v166, v167;
        }

        else
        {
        }

        v52 = v190;
        v53 = v181;
        objc_autoreleasePoolPop(v189);
        if (([v53 next] & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      objc_autoreleasePoolPop(v54);
    }

LABEL_29:
  }

  sub_1CF9E7458();
  v168 = v180;
  sub_1CF9E6038();

  v182, v169, v170, v171, v172, v173, v174, v175;
  return sub_1CEFD5278(v168, type metadata accessor for Signpost);
}

uint64_t sub_1CF3B0B48()
{
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 118;
}

uint64_t sub_1CF3B0C04()
{
  sub_1CF9E81D8();
  sub_1CF9E8208();
  return sub_1CF9E8228();
}

uint64_t sub_1CF3B0C4C(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF9E8208();
  return sub_1CF9E8228();
}

uint64_t sub_1CF3B0CC8()
{
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  return 114;
}

uint64_t sub_1CF3B0D80@<X0>(uint64_t *a1@<X8>)
{
  result = fpfs_dirsize();
  *a1 = result & ~(result >> 63);
  return result;
}

uint64_t sub_1CF3B0DB4()
{
  v0 = sub_1CF9E64A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1CF042F4C();
  *v3 = v4;
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v5 = v4;
  LOBYTE(v4) = sub_1CF9E64D8();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v7 = *(*(sub_1CF478C28() + 32) + qword_1EDEBBB18);
    if (v7)
    {
      v8 = v7 + *(*v7 + 136);
      swift_beginAccess();
      return *(v8 + 48);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CF3B0F28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB18, &qword_1CFA052A0);
  [a1 setTraced_];
  v9 = sub_1CF9E6888();
  [a1 setLabel_];

  [a1 setStatementCacheMaxCount_];
  v10 = sub_1CF9E5928();
  v13[0] = 0;
  LODWORD(a4) = [a1 openAtURL:v10 withFlags:a4 error:v13];

  if (a4)
  {
    return v13[0];
  }

  v12 = v13[0];
  sub_1CF9E57F8();

  return swift_willThrow();
}

void sub_1CF3B107C(uint64_t a1, NSObject *a2)
{
  v39 = a1;
  v3 = fpfs_current_log();
  v4 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v41 = v5;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v6 = sub_1CF9E7988();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  sub_1CF9E6978();
  v41, v16, v17, v18, v19, v20, v21, v22;
  v23 = __fp_log_fork();

  v46 = 0;
  v47 = v23;
  v48 = 0;
  v30 = v3;
  v31 = &v47;
  v32 = a2;
  v33 = "setUpReadOnlyDatabase(db:queue:)";
  v34 = 32;
  v35 = 2;
  v36 = sub_1CF47FBA8;
  v37 = &v38;
  v49 = 1;
  v24 = swift_allocObject();
  v24[2] = &v49;
  v24[3] = sub_1CF2BA13C;
  v24[4] = &v29;
  v24[5] = &v46;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1CF2BA170;
  *(v25 + 24) = v24;
  v44 = sub_1CF1C0B54;
  v45 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFFD02C;
  v43 = &block_descriptor_45;
  v26 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(a2, v26);
  _Block_release(v26);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  if (v46)
  {
    swift_willThrow();

    v27 = fpfs_adopt_log();

    return;
  }

  if (v49)
  {
    goto LABEL_8;
  }

  v28 = fpfs_adopt_log();
}

uint64_t sub_1CF3B1350(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = &unk_1CF9FA000;
  if ((*(a1 + 82) & 0x20) == 0)
  {
    v4 = 0;
    v5 = 0;
LABEL_3:
    v6 = a2;
    sub_1CF3C0034(v6, 2, &block_descriptor_68, &unk_1F4BFE238, sub_1CF47FBC4, &block_descriptor_74_0);
    v7 = swift_allocObject();
    swift_weakInit();
    v26 = sub_1CF485A98;
    v27 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v23 = v3[140];
    v24 = sub_1CF00A468;
    v25 = &block_descriptor_49_0;
    v8 = _Block_copy(&aBlock);

    [v6 setAutoRollbackHandlerForSwift_];
    _Block_release(v8);

    sub_1CEFF7124(v4, 0);
    return sub_1CEFF7124(v5, 0);
  }

  v26 = sub_1CF485954;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1CEFE7548;
  v25 = &block_descriptor_52_0;
  v10 = _Block_copy(&aBlock);

  aBlock = 0;
  v11 = [a2 executeSwift:v10 error:&aBlock];
  _Block_release(v10);
  v12 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v11)
  {
    sub_1CF9E57F8();

    return swift_willThrow();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF4858D8;
  *(v13 + 24) = 0;
  v26 = sub_1CEFE75B8;
  v27 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1CEFE7548;
  v25 = &block_descriptor_58;
  v14 = _Block_copy(&aBlock);

  aBlock = 0;
  v15 = [a2 executeSwift:v14 error:&aBlock];
  _Block_release(v14);
  v16 = aBlock;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_16;
  }

  if ((v15 & 1) == 0)
  {
    sub_1CF9E57F8();

    return swift_willThrow();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF4858DC;
  *(v18 + 24) = 0;
  v26 = sub_1CEFE7610;
  v27 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1CEFE7548;
  v25 = &block_descriptor_65_0;
  v19 = _Block_copy(&aBlock);

  aBlock = 0;
  v20 = [a2 executeSwift:v19 error:&aBlock];
  _Block_release(v19);
  v21 = aBlock;
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
LABEL_17:
    __break(1u);
  }

  v5 = sub_1CF4858DC;
  if (v20)
  {
    v4 = sub_1CF4858D8;
    v3 = &unk_1CF9FA000;
    goto LABEL_3;
  }

  sub_1CF9E57F8();

  return swift_willThrow();
}

uint64_t sub_1CF3B1830(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v78 - v9;
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v12 = a1;
  v13 = sub_1CF9E6108();
  v14 = sub_1CF9E72A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 67109378;
    *(v15 + 4) = a2;
    *(v15 + 8) = 2112;
    *(v15 + 10) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1CEFC7000, v13, v14, "busy handler called (%d) %@", v15, 0x12u);
    sub_1CEFCCC44(v16, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v16, -1, -1);
    MEMORY[0x1D386CDC0](v15, -1, -1);
  }

  v18 = *(v6 + 8);
  v80 = v5;
  v18(v10, v5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + qword_1EDEBBDB8);

    v21 = v20 >= 1 && v20 <= a2;
  }

  else
  {
    v21 = 0;
  }

  swift_beginAccess();
  v22 = swift_weakLoadStrong();
  if (v22)
  {
    v23 = *(v22 + 32);

    v24 = *(v23 + 16);

    v26 = (*(*v24 + 440))(v25);

    if (v26)
    {
      v83[0] = 0;
      v83[1] = 0xE000000000000000;
      sub_1CF9E7948();
      v83[1], v27, v28, v29, v30, v31, v32, v33;
      strcpy(v83, "busy_handler_");
      HIWORD(v83[1]) = -4864;
      LODWORD(v82) = a2;
      v34 = sub_1CF9E7F98();
      v36 = v35;
      MEMORY[0x1D3868CC0](v34);
      v36, v37, v38, v39, v40, v41, v42, v43;
      MEMORY[0x1D3868CC0](95, 0xE100000000000000);
      if (v21)
      {
        v44 = 1702195828;
      }

      else
      {
        v44 = 0x65736C6166;
      }

      if (v21)
      {
        v45 = 0xE400000000000000;
      }

      else
      {
        v45 = 0xE500000000000000;
      }

      MEMORY[0x1D3868CC0](v44, v45);
      v45, v46, v47, v48, v49, v50, v51, v52;
      v79 = v18;
      v53 = v83[0];
      v54 = v83[1];
      type metadata accessor for PQLSqliteError(0);
      v82 = 5;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF042F54(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError, &unk_1CF9F9DB4);
      sub_1CF9E57D8();
      v55 = v83[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      strcpy(v83, "operationType");
      HIWORD(v83[1]) = -4864;
      v57 = MEMORY[0x1E69E6158];
      sub_1CF9E7898();
      *(inited + 96) = v57;
      *(inited + 72) = v53;
      *(inited + 80) = v54;
      v58 = sub_1CF4E0E00(inited);
      swift_setDeallocating();
      sub_1CEFCCC44(inited + 32, &qword_1EC4C0600, &unk_1CF9FE790);
      v59 = sub_1CF9E6618();
      v58, v60, v61, v62, v63, v64, v65, v66;
      v67 = v55;
      v68 = sub_1CF9E57E8();

      [v26 postReportWithCategory:1 type:1 payload:v59 error:v68];
      v18 = v79;
    }
  }

  swift_beginAccess();
  v69 = swift_weakLoadStrong();
  if (v69 && (v71 = *(v69 + qword_1EDEBBE20), v70 = *(v69 + qword_1EDEBBE20 + 8), sub_1CF03C63C(v71, v70), , v71))
  {
    v72 = v71(a2, v21);
    sub_1CEFF7124(v71, v70);
  }

  else
  {
    if (v21)
    {
      v74 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v75 = sub_1CF9E6108();
      v76 = sub_1CF9E72A8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_1CEFC7000, v75, v76, "cannot recover - exiting fpd", v77, 2u);
        MEMORY[0x1D386CDC0](v77, -1, -1);
      }

      v18(v81, v80);
      exit(1);
    }

    v72 = 1;
    sleep(1u);
  }

  return v72 & 1;
}

uint64_t sub_1CF3B1E88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5 & 1;
}

void sub_1CF3B1EF4(char a1, id a2, uint64_t a3, _BYTE *a4, _BYTE *a5, uint64_t a6, _TtC18FileProviderDaemon8FSTester *a7, uint64_t a8, uint64_t a9)
{
  v40 = a8;
  if ((a1 & 1) == 0)
  {
    v16 = [a2 setSynchronousMode_];
    v36 = a2;
    if ([a2 synchronousMode] != 1)
    {
      sub_1CF50FD90("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLDatabase.swift", 130, 2, 278, sub_1CF47FC94);
    }
  }

  v17 = *(a3 + qword_1EDEBBDB0);
  v18 = qword_1EDEADB48;
  *(a3 + qword_1EDEADB48) = 0;
  v19 = v17;
  sub_1CF3C174C(a6, a7, v19, 2);
  *(a3 + v18) = 1;
  if (v9)
  {
  }

  else
  {
    v38 = a4;
    v39 = a9;
    *a4 = v20 & 1;
    *a5 = HIBYTE(v20) & 1;
    v21 = fpfs_current_log();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v45 = sub_1CF47FC9C;
    v46 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1CF02C158;
    v44 = &block_descriptor_120;
    v24 = _Block_copy(&aBlock);
    v25 = v21;

    [a2 setPreFlushHook_];
    _Block_release(v24);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    *(v27 + 24) = v26;
    v45 = sub_1CF47FCE4;
    v46 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1CF02C158;
    v44 = &block_descriptor_127;
    v28 = _Block_copy(&aBlock);
    v29 = v25;

    [a2 setPostFlushHook_];
    _Block_release(v28);

    MEMORY[0x1EEE9AC00](v30);
    v35[2] = a3;
    v35[3] = v40;
    v36 = v39;
    v37 = v38;
    sub_1CF7FC814("setUpWriteDatabase(db:queue:label:creationReason:fsTree:fpTree:inMemory:)", 0x49uLL, 2, sub_1CF47FCEC, v35);
    v31 = *(a3 + qword_1EDEAE660);
    if (v31)
    {
      swift_willThrow();
      v32 = v31;
    }

    else
    {
      v33 = swift_allocObject();
      swift_weakInit();
      v45 = sub_1CF47FD0C;
      v46 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v43 = sub_1CF00A468;
      v44 = &block_descriptor_131;
      v34 = _Block_copy(&aBlock);

      [a2 setAutoRollbackHandlerForSwift_];
      _Block_release(v34);
    }
  }
}

uint64_t sub_1CF3B234C(void *a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA46320);
  [a1 synchronousMode];
  type metadata accessor for PQLSynchronousMode(0);
  sub_1CF9E7B58();
  return 0;
}

void sub_1CF3B23F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v11 - v4);
  v6 = fpfs_adopt_log();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + qword_1EDEBBDB0);
    swift_storeEnumTagMultiPayload();
    v9 = v8;
    sub_1CF3CDDD4(v5, v9, 2);
    sub_1CEFCCC44(v5, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  v10 = fpfs_adopt_log();
}

void sub_1CF3B2544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = fpfs_adopt_log();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CF03A224();
  }

  v4 = fpfs_adopt_log();
}

void sub_1CF3B25CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void), _BYTE *a5)
{
  v96 = a3;
  v93 = a5;
  v95 = a4;
  v98 = a2;
  v6 = sub_1CF9E5CF8();
  v94 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v85 - v13);
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  swift_storeEnumTagMultiPayload();
  v18 = v17;
  v19 = v97;
  v20 = v98;
  sub_1CF3CFB14(v14, v18, v15, v16);
  sub_1CEFCCC44(v14, &qword_1EC4BE710, &qword_1CF9FE5A8);
  if (!v19)
  {
    v91 = v11;
    v92 = v8;
    v97 = v6;
    v90 = v9;
    v21 = a1[3];
    v22 = a1[4];
    v23 = __swift_project_boxed_opaque_existential_1(a1, v21);
    v24 = *(v20 + 24);
    (*(*v96 + 96))(&v99);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB80, &unk_1CF9FAD90);
    v26 = (*(*v24 + 328))(&v99, v25, 0, v23, v21, *(v22 + 8));
    (*(*v96 + 456))(v26 & 1);
    v28 = a1[3];
    v27 = a1[4];
    v29 = __swift_project_boxed_opaque_existential_1(a1, v28);
    v30 = v95;
    (*(*v95 + 12))(&v99);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEF8, &unk_1CF9FB390);
    v32 = (*(*v24 + 320))(&v99, v31, 0, v29, v28, *(v27 + 8));

    v89 = 0;
    *(v30 + 113) = v32 & 1;
    v33 = (*v96 + 848);
    v34 = *v33;
    v35 = v33;
    v36 = (*v33)();
    v95 = v35;
    if (v36)
    {
      v37 = v91;
      goto LABEL_12;
    }

    v38 = a1[3];
    v39 = a1[4];
    v88 = __swift_project_boxed_opaque_existential_1(a1, v38);
    (*(**(*(v20 + 32) + 16) + 96))(&v99);
    v40 = v92;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v42 = v41;
    v43 = *(v94 + 8);
    v43(v40, v97);
    v44 = v42 * 1000000000.0;
    if (COERCE__INT64(fabs(v42 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v86 = v39;
      v87 = v38;
      if (v44 > -9.22337204e18)
      {
        if (v44 < 9.22337204e18)
        {
          v45 = a1;
          v46 = v20;
          v47 = v44;
          v48 = v99;
          v49 = v100;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB90, &unk_1CFA052F0);
          v50 = swift_allocObject();
          *(v50 + 152) = v49;
          *(v50 + 16) = 0u;
          *(v50 + 32) = 0u;
          *(v50 + 48) = 1;
          *(v50 + 56) = 0u;
          *(v50 + 72) = 0u;
          *(v50 + 88) = 0;
          *(v50 + 96) = xmmword_1CF9FEC30;
          *(v50 + 112) = 0;
          *(v50 + 120) = 0;
          *(v50 + 128) = v47;
          *(v50 + 136) = 0;
          *(v50 + 144) = v48;
          v51 = v92;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v53 = v52;
          v43(v51, v97);
          v54 = v53 * 1000000000.0;
          if (COERCE__INT64(fabs(v53 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v55 = v89;
            if (v54 > -9.22337204e18)
            {
              if (v54 < 9.22337204e18)
              {
                v20 = v46;
                a1 = v45;
                sub_1CF5215C0(v50, v54, v88, v87, v86);

                v37 = v91;
                if (v55)
                {
                  return;
                }

                v89 = 0;
LABEL_12:
                v56 = a1;
                v57 = a1[3];
                v58 = a1[4];
                v59 = __swift_project_boxed_opaque_existential_1(v56, v57);
                v60 = v89;
                v61 = (*(**(v20 + 16) + 272))(v59, v57, *(v58 + 8));
                if (v60)
                {
                  return;
                }

                if (v61)
                {
                  *(*(v20 + 32) + 33) = 0;
LABEL_16:
                  v62 = v93;
                  goto LABEL_17;
                }

                if (v34())
                {
                  goto LABEL_16;
                }

                v69 = v56[3];
                v70 = v56[4];
                v71 = __swift_project_boxed_opaque_existential_1(v56, v69);
                (*(**(*(v20 + 32) + 16) + 96))(&v99);
                v72 = v92;
                sub_1CF9E5CE8();
                sub_1CF9E5C98();
                v74 = v73;
                v75 = *(v94 + 8);
                v75(v72, v97);
                v76 = v74 * 1000000000.0;
                if (COERCE__INT64(fabs(v74 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v76 > -9.22337204e18)
                  {
                    v95 = v71;
                    v96 = v70;
                    if (v76 < 9.22337204e18)
                    {
                      v77 = v76;
                      v78 = v99;
                      v79 = v100;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F8, &qword_1CF9FADC0);
                      v80 = swift_allocObject();
                      *(v80 + 152) = v79;
                      *(v80 + 16) = 0u;
                      *(v80 + 32) = 0u;
                      *(v80 + 48) = 1;
                      *(v80 + 56) = 0u;
                      *(v80 + 72) = 0u;
                      *(v80 + 88) = 0;
                      *(v80 + 96) = xmmword_1CF9FEC30;
                      *(v80 + 112) = 0;
                      *(v80 + 120) = 0;
                      *(v80 + 128) = v77;
                      *(v80 + 136) = 0;
                      *(v80 + 144) = v78;
                      v81 = v92;
                      sub_1CF9E5CE8();
                      sub_1CF9E5C98();
                      v83 = v82;
                      v75(v81, v97);
                      v84 = v83 * 1000000000.0;
                      if (COERCE__INT64(fabs(v83 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        v62 = v93;
                        v37 = v91;
                        if (v84 > -9.22337204e18)
                        {
                          if (v84 < 9.22337204e18)
                          {
                            sub_1CF5215C0(v80, v84, v95, v69, v96);

LABEL_17:
                            v63 = v56[3];
                            v64 = v56[4];
                            v65 = __swift_project_boxed_opaque_existential_1(v56, v63);
                            swift_storeEnumTagMultiPayload();
                            sub_1CF3CFB14(v37, v65, v63, v64);
                            sub_1CEFCCC44(v37, &qword_1EC4BE710, &qword_1CF9FE5A8);
                            if ((*v62 & 1) == 0)
                            {
                              v66 = v56[3];
                              v67 = v56[4];
                              v68 = __swift_project_boxed_opaque_existential_1(v56, v66);
                              sub_1CF3BBE38(v68, v66, v67);
                            }

                            return;
                          }

LABEL_38:
                          __break(1u);
                          return;
                        }

LABEL_37:
                        __break(1u);
                        goto LABEL_38;
                      }

LABEL_36:
                      __break(1u);
                      goto LABEL_37;
                    }

LABEL_35:
                    __break(1u);
                    goto LABEL_36;
                  }

LABEL_34:
                  __break(1u);
                  goto LABEL_35;
                }

LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

double sub_1CF3B2EB4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CF3BBC24(a1);
  }

  return result;
}

double sub_1CF3B2F14(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + qword_1EDEAE660);
    *(Strong + qword_1EDEAE660) = a1;
    v6 = a1;
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF3B3014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), unint64_t a6, uint64_t a7, uint64_t a8)
{
  v352 = a8;
  v335 = a7;
  v334 = a6;
  v346 = a5;
  v341 = a4;
  v347 = a3;
  v357 = a2;
  v359 = a1;
  v309 = sub_1CF9E7388();
  v308 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v307 = &v304 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = sub_1CF9E7488();
  MEMORY[0x1EEE9AC00](v305);
  v306 = &v304 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v313 = &v304 - v12;
  v319 = sub_1CF9E53C8();
  v318 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v317 = &v304 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB18, &qword_1CFA052A0);
  MEMORY[0x1EEE9AC00](v333);
  v353 = &v304 - v14;
  v15 = sub_1CF9E5A58();
  v354 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v344 = &v304 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v348 = &v304 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v304 - v20;
  v338 = sub_1CF9E6118();
  v337 = *(v338 - 8);
  MEMORY[0x1EEE9AC00](v338);
  v311 = &v304 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v304 - v24;
  v26 = (a8 + qword_1EC4EBCD0);
  *v26 = 0;
  v26[1] = 0;
  v350 = v26;
  v27 = (a8 + qword_1EC4EBCD8);
  *v27 = 0;
  v27[1] = 0;
  v351 = v27;
  *(a8 + qword_1EDEBBE28) = 0;
  v316 = qword_1EDEBBE38;
  *(a8 + qword_1EDEBBE38) = 1;
  *(a8 + qword_1EDEBBE10) = 0;
  v28 = qword_1EDEBBDA8;
  v29 = sub_1CF9E5D98();
  v30 = *(*(v29 - 8) + 56);
  v322 = v28;
  v30(a8 + v28, 1, 1, v29);
  v323 = qword_1EC4BFAF0;
  *(a8 + qword_1EC4BFAF0) = MEMORY[0x1E69E7CC0];
  v325 = qword_1EDEAE678;
  *(a8 + qword_1EDEAE678) = 0;
  v328 = qword_1EDEAE660;
  *(a8 + qword_1EDEAE660) = 0;
  *(a8 + qword_1EDEBBDE8) = 0;
  v31 = (a8 + qword_1EDEBBDC8);
  *v31 = 0;
  v31[1] = 0;
  v326 = v31;
  *(a8 + qword_1EDEBBDD0) = 0;
  v32 = (a8 + qword_1EDEBBDC0);
  *v32 = 0;
  v32[1] = 0;
  v324 = v32;
  v33 = (a8 + qword_1EDEBBDD8);
  *v33 = 0;
  v33[1] = 0;
  v327 = v33;
  v34 = (a8 + qword_1EDEBBDF0);
  *v34 = 0;
  v34[1] = 0;
  v329 = v34;
  v35 = (a8 + qword_1EDEBBE20);
  *v35 = 0;
  v35[1] = 0;
  v331 = v35;
  *(a8 + qword_1EDEBBDE0) = 0;
  v36 = qword_1EC4BFAF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB20, &qword_1CFA052A8);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CFA04E00;
  *(v37 + 32) = 0;
  *(v37 + 40) = sub_1CF3BDB8C;
  *(v37 + 48) = 0;
  *(v37 + 56) = 0x10000;
  *(v37 + 64) = 0x10000;
  *(v37 + 72) = sub_1CF3BDC14;
  *(v37 + 80) = 0;
  *(v37 + 88) = 65537;
  *(v37 + 96) = 65537;
  *(v37 + 104) = sub_1CF3BDC9C;
  *(v37 + 112) = 0;
  *(v37 + 120) = 0x20000;
  *(v37 + 128) = 0x20000;
  *(v37 + 136) = sub_1CF3BDD24;
  *(v37 + 144) = 0;
  *(v37 + 152) = 131073;
  *(v37 + 160) = 131073;
  *(v37 + 168) = sub_1CF3BDDAC;
  *(v37 + 176) = 0;
  *(v37 + 184) = 131074;
  *(v37 + 192) = 131074;
  *(v37 + 200) = sub_1CF3BDE34;
  *(v37 + 208) = 0;
  *(v37 + 216) = 131075;
  *(v37 + 224) = 131075;
  *(v37 + 232) = sub_1CF3BDEBC;
  *(v37 + 240) = 0;
  *(v37 + 248) = 131076;
  *(v37 + 256) = 131076;
  *(v37 + 264) = sub_1CF3BDF44;
  *(v37 + 272) = 0;
  *(v37 + 280) = 131077;
  *(v37 + 288) = 131077;
  *(v37 + 296) = sub_1CF3BDFCC;
  *(v37 + 304) = 0;
  *(v37 + 312) = 131078;
  *(v37 + 320) = 131078;
  *(v37 + 328) = sub_1CF3BE054;
  *(v37 + 336) = 0;
  *(v37 + 344) = 131079;
  *(v37 + 352) = 131079;
  *(v37 + 360) = sub_1CF3BE0DC;
  *(v37 + 368) = 0;
  *(v37 + 376) = 131080;
  *(v37 + 384) = 131080;
  *(v37 + 392) = sub_1CF3BE164;
  *(v37 + 400) = 0;
  *(v37 + 408) = 131081;
  *(v37 + 416) = 131081;
  *(v37 + 424) = sub_1CF3BE1EC;
  *(v37 + 432) = 0;
  *(v37 + 440) = 196608;
  *(v37 + 448) = 196608;
  *(v37 + 456) = sub_1CF3BE274;
  *(v37 + 464) = 0;
  *(v37 + 472) = 196609;
  *(v37 + 480) = 196609;
  *(v37 + 488) = sub_1CF3BE2FC;
  *(v37 + 496) = 0;
  *(v37 + 504) = 196610;
  *(v37 + 512) = 196610;
  *(v37 + 520) = sub_1CF3BE384;
  *(v37 + 528) = 0;
  *(v37 + 536) = 196611;
  *(v37 + 544) = 196611;
  *(v37 + 552) = sub_1CF3BE40C;
  *(v37 + 560) = 0;
  *(v37 + 568) = 196612;
  *(v37 + 576) = 196612;
  *(v37 + 584) = sub_1CF3BE494;
  *(v37 + 592) = 0;
  *(v37 + 600) = 196613;
  *(v37 + 608) = 196613;
  *(v37 + 616) = sub_1CF3BE51C;
  *(v37 + 624) = 0;
  *(v37 + 632) = 196614;
  *(v37 + 640) = 196614;
  *(v37 + 648) = sub_1CF3BE5A4;
  *(v37 + 656) = 0;
  *(v37 + 664) = 196615;
  *(v37 + 672) = 196615;
  *(v37 + 680) = sub_1CF3BE62C;
  *(v37 + 688) = 0;
  *(v37 + 696) = 0x40000;
  *(v37 + 704) = 0x40000;
  *(v37 + 712) = sub_1CF3BE6B4;
  *(v37 + 720) = 0;
  *(v37 + 728) = 262145;
  *(v37 + 736) = 262145;
  *(v37 + 744) = sub_1CF3BE73C;
  *(v37 + 752) = 0;
  *(v37 + 760) = 327680;
  *(v37 + 768) = 327680;
  *(v37 + 776) = sub_1CF3BE7C4;
  *(v37 + 784) = 0;
  *(v37 + 792) = 327681;
  *(v37 + 800) = 327681;
  *(v37 + 808) = sub_1CF3BE84C;
  *(v37 + 816) = 0;
  *(v37 + 824) = 327682;
  *(v37 + 832) = 327682;
  *(v37 + 840) = sub_1CF3BE8D4;
  *(v37 + 848) = 0;
  *(v37 + 856) = 327683;
  *(v37 + 864) = 327683;
  *(v37 + 872) = sub_1CF3BE95C;
  *(v37 + 880) = 0;
  *(v37 + 888) = 327684;
  *(v37 + 896) = 327684;
  *(v37 + 904) = sub_1CF3BE9E4;
  *(v37 + 912) = 0;
  *(v37 + 920) = 327685;
  *(v37 + 928) = 327685;
  *(v37 + 936) = sub_1CF3BEA6C;
  *(v37 + 944) = 0;
  *(v37 + 952) = 327686;
  *(v37 + 960) = 327686;
  *(v37 + 968) = sub_1CF3BEAF4;
  *(v37 + 976) = 0;
  *(v37 + 984) = 327687;
  *(v37 + 992) = 327687;
  *(v37 + 1000) = sub_1CF3BEB7C;
  *(v37 + 1008) = 0;
  *(v37 + 1016) = 327688;
  *(v37 + 1024) = 327688;
  *(v37 + 1032) = sub_1CF3BEC04;
  *(v37 + 1040) = 0;
  *(v37 + 1048) = 327689;
  *(v37 + 1056) = 327689;
  *(v37 + 1064) = sub_1CF3BEC8C;
  *(v37 + 1072) = 0;
  *(v37 + 1080) = 327690;
  *(v37 + 1088) = 327690;
  *(v37 + 1096) = sub_1CF3BED14;
  *(v37 + 1104) = 0;
  *(v37 + 1112) = 327691;
  *(v37 + 1120) = 327691;
  *(v37 + 1128) = sub_1CF3BED9C;
  *(v37 + 1136) = 0;
  *(v37 + 1144) = 393216;
  *(v37 + 1152) = 393216;
  *(v37 + 1160) = sub_1CF3BEE24;
  *(v37 + 1168) = 0;
  *(v37 + 1176) = 393217;
  *(v37 + 1184) = 393217;
  *(v37 + 1192) = sub_1CF3BEEAC;
  *(v37 + 1200) = 0;
  *(v37 + 1208) = 393218;
  *(v37 + 1216) = 393218;
  *(v37 + 1224) = sub_1CF3BEF34;
  *(v37 + 1232) = 0;
  *(v37 + 1240) = 393219;
  *(v37 + 1248) = 393219;
  *(v37 + 1256) = sub_1CF3BEFBC;
  *(v37 + 1264) = 0;
  *(v37 + 1272) = 393220;
  *(v37 + 1280) = 393220;
  *(v37 + 1288) = sub_1CF3BF044;
  *(v37 + 1296) = 0;
  *(v37 + 1304) = 393221;
  *(v37 + 1312) = 393221;
  *(v37 + 1320) = sub_1CF3BF0CC;
  *(v37 + 1328) = 0;
  *(v37 + 1336) = 458752;
  *(v37 + 1344) = 458752;
  *(v37 + 1352) = sub_1CF3BF154;
  *(v37 + 1360) = 0;
  *(v37 + 1368) = 458753;
  *(v37 + 1376) = 458753;
  *(v37 + 1384) = sub_1CF3BF1DC;
  *(v37 + 1392) = 0;
  *(v37 + 1400) = 458754;
  *(v37 + 1408) = 458754;
  *(v37 + 1416) = sub_1CF3BF264;
  *(v37 + 1424) = 0;
  *(v37 + 1432) = 458755;
  *(v37 + 1440) = 458755;
  *(v37 + 1448) = sub_1CF3BF2EC;
  *(v37 + 1456) = 0;
  *(v37 + 1464) = 458756;
  *(v37 + 1472) = 458756;
  *(v37 + 1480) = sub_1CF3BF374;
  *(v37 + 1488) = 0;
  *(v37 + 1496) = 0x80000;
  *(v37 + 1504) = 0x80000;
  *(v37 + 1512) = sub_1CF3BF3FC;
  *(v37 + 1520) = 0;
  *(v37 + 1528) = 524289;
  *(v37 + 1536) = 524289;
  *(v37 + 1544) = sub_1CF3BF484;
  *(v37 + 1552) = 0;
  *(v37 + 1560) = 524290;
  *(v37 + 1568) = 524290;
  *(v37 + 1576) = sub_1CF3BF50C;
  *(v37 + 1584) = 0;
  *(v37 + 1592) = 524291;
  *(v37 + 1600) = 524291;
  *(v37 + 1608) = sub_1CF3BF594;
  *(v37 + 1616) = 0;
  *(v37 + 1624) = 590079;
  *(v37 + 1632) = 590079;
  *(v37 + 1640) = sub_1CF3BF61C;
  *(v37 + 1648) = 0;
  *(v37 + 1656) = 590080;
  *(v37 + 1664) = 590080;
  *(v37 + 1672) = sub_1CF3BF6A4;
  *(v37 + 1680) = 0;
  *(v37 + 1688) = 590081;
  *(v37 + 1696) = 590081;
  *(v37 + 1704) = sub_1CF3BF72C;
  *(v37 + 1712) = 0;
  *(v37 + 1720) = 590082;
  *(v37 + 1728) = 590082;
  *(v37 + 1736) = sub_1CF3BF7B4;
  *(v37 + 1744) = 0;
  *(v37 + 1752) = 590084;
  *(v37 + 1760) = 590084;
  *(v37 + 1768) = sub_1CF3BF83C;
  *(v37 + 1776) = 0;
  *(v37 + 1784) = 590085;
  *(v37 + 1792) = 590085;
  *(v37 + 1800) = sub_1CF3BF8C4;
  *(v37 + 1808) = 0;
  *(v37 + 1816) = 590086;
  *(v37 + 1824) = 590086;
  *(v37 + 1832) = sub_1CF3BF94C;
  *(v37 + 1840) = 0;
  *(v37 + 1848) = 590087;
  *(v37 + 1856) = 590087;
  *(v37 + 1864) = sub_1CF3BF9D4;
  *(v37 + 1872) = 0;
  *(v37 + 1880) = 590088;
  *(v37 + 1888) = 590088;
  *(v37 + 1896) = sub_1CF3BFA5C;
  *(v37 + 1904) = 0;
  *(v37 + 1912) = 655615;
  *(v37 + 1920) = 655615;
  *(v37 + 1928) = sub_1CF3BFAE4;
  *(v37 + 1936) = 0;
  *(v37 + 1944) = 655616;
  *(v37 + 1952) = 655616;
  *(v37 + 1960) = sub_1CF3BFB6C;
  *(v37 + 1968) = 0;
  *(v37 + 1976) = 655617;
  *(v37 + 1984) = 655617;
  *(v37 + 1992) = sub_1CF3BFBF4;
  *(v37 + 2000) = 0;
  *(v37 + 2008) = 720896;
  *(v37 + 2016) = 720896;
  *(v37 + 2024) = sub_1CF3BFC7C;
  *(v37 + 2032) = 0;
  *(v37 + 2040) = 720897;
  *(v37 + 2048) = 720897;
  *(v37 + 2056) = sub_1CF3BFD04;
  *(v37 + 2064) = 0;
  *(v37 + 2072) = 720898;
  *(v37 + 2080) = 720898;
  *(v37 + 2088) = sub_1CF3BFD8C;
  *(v37 + 2096) = 0;
  *(v37 + 2104) = 720899;
  *(v37 + 2112) = 720899;
  *(v37 + 2120) = sub_1CF3BFE14;
  *(v37 + 2128) = 0;
  *(v37 + 2136) = 720900;
  *(v37 + 2144) = 720900;
  *(v37 + 2152) = sub_1CF3BFE9C;
  *(v37 + 2160) = 0;
  *(v37 + 2168) = 720901;
  *(v37 + 2176) = 720901;
  *(v37 + 2184) = sub_1CF3BFF24;
  *(v37 + 2192) = 0;
  *(v37 + 2200) = 720902;
  *(v37 + 2208) = 720902;
  *(v37 + 2216) = sub_1CF3BFFAC;
  *(v37 + 2224) = 0;
  *(v37 + 2232) = 720903;
  v38 = sub_1CF4E0CC0(v37);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB28, &unk_1CFA052B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v330 = v36;
  *(a8 + v36) = v38;
  v39 = qword_1EDEBBE18;
  v332 = objc_opt_self();
  v40 = [v332 defaultStore];
  v41 = [v40 sqlDatabaseVacuumBatchSize];

  *(a8 + v39) = v41;
  *(a8 + qword_1EDEBBE08) = 0;
  *(a8 + qword_1EDEBBE00) = 0;
  *(a8 + qword_1EDEBBDF8) = 0;
  v42 = *(v357 + 136);
  v44 = *(v42 + 16);
  v43 = *(v42 + 24);

  v45 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v46 = *(v354 + 16);
  v358 = v15;
  v355 = v46;
  v356 = v354 + 16;
  v46(v21, v359, v15);

  v345 = v25;
  v47 = sub_1CF9E6108();
  v48 = sub_1CF9E72C8();
  v43, v49, v50, v51, v52, v53, v54, v55;
  v56 = os_log_type_enabled(v47, v48);
  v349 = v43;
  v342 = v44;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v343 = swift_slowAlloc();
    aBlock = v343;
    *v57 = 136446466;
    *(v57 + 4) = sub_1CEFD0DF0(v44, v43, &aBlock);
    *(v57 + 12) = 2082;
    v58 = v21;
    v59 = sub_1CF9E5928();
    v60 = [v59 fp_shortDescription];

    v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v63 = v62;

    v64 = *(v354 + 8);
    v65 = (v354 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66 = v58;
    v67 = v358;
    v64(v66, v358);
    v68 = sub_1CEFD0DF0(v61, v63, &aBlock);
    v69 = v63;
    v70 = v64;
    v69, v71, v72, v73, v74, v75, v76, v77;
    *(v57 + 14) = v68;
    _os_log_impl(&dword_1CEFC7000, v47, v48, "opening database %{public}s at %{public}s", v57, 0x16u);
    v78 = v343;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v78, -1, -1);
    MEMORY[0x1D386CDC0](v57, -1, -1);

    v310 = *(v337 + 8);
    v310(v345, v338);
    v79 = v67;
  }

  else
  {

    v70 = *(v354 + 8);
    v65 = (v354 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v79 = v358;
    v70(v21, v358);
    v310 = *(v337 + 8);
    v310(v345, v338);
  }

  v80 = qword_1EC4EBCE0;
  v81 = v352;
  v82 = v355;
  v355((v352 + qword_1EC4EBCE0), v359, v79);
  v354 = v80;
  v83 = v81 + v80;
  v84 = v348;
  v82(v348, v83, v79);
  v85 = sub_1CF9E5888();
  v87 = v86;
  v345 = v65;
  v70(v84, v79);
  v336 = v70;
  if (v85 == 0x656D3A3A656C6966 && v87 == 0xED00003A79726F6DLL)
  {
    0xED00003A79726F6DLL, v88, v89, v90, v91, v92, v93, v94;
    v95 = v349;
    v96 = v346;
LABEL_8:
    v105 = v352;
    v106 = (v352 + qword_1EC4EBCE8);
    *v106 = 0;
    v106[1] = 0;
    v107 = 1;
    goto LABEL_10;
  }

  v97 = sub_1CF9E8048();
  v87, v98, v99, v100, v101, v102, v103, v104;
  v95 = v349;
  v96 = v346;
  if (v97)
  {
    goto LABEL_8;
  }

  v105 = v352;
  v108 = v344;
  v355(v344, v352 + v354, v79);
  v109 = sub_1CF9E5A18();
  v111 = v110;
  v70(v108, v79);
  aBlock = 1818326829;
  aBlock_8 = 0xE400000000000000;
  v360 = v109;
  v361 = v111;
  v360 = sub_1CF9E6B48();
  v361 = v112;
  sub_1CF9E6A28();
  v107 = 0;
  v113 = v361;
  v114 = (v105 + qword_1EC4EBCE8);
  *v114 = v360;
  v114[1] = v113;
LABEL_10:
  v115 = (v105 + qword_1EDEBBDA0);
  *v115 = sub_1CF6CB49C;
  v115[1] = 0;
  v321 = v115;
  *(v105 + qword_1EDEAE650) = (v96 & 4) != 0;
  if ((v96 & 0x20000) != 0)
  {
    v116 = 3;
  }

  else
  {
    v116 = 1;
  }

  v117 = BYTE2(v96) & 2;
  if ((v96 & 0x200) != 0)
  {
    v117 = v116;
  }

  *(v105 + qword_1EDEAE668) = v117;
  v118 = v332;
  v119 = [v332 defaultStore];
  v120 = [v119 sqlDatabaseBusyHandlerRetries];

  *(v105 + qword_1EDEBBDB8) = v120;
  v121 = v350;
  v122 = *v350;
  v123 = v350[1];
  *v350 = 0;
  v121[1] = 0;
  sub_1CF1FD6F8(v122, v123);
  v124 = v351;
  v125 = *v351;
  v126 = v351[1];
  *v351 = 0;
  v124[1] = 0;
  sub_1CF1FD6F8(v125, v126);
  v127 = type metadata accessor for PQLConnectionWithStatistics();
  v128 = [objc_allocWithZone(v127) init];
  v129 = 0;
  v130 = 0;
  v348 = qword_1EDEBBDB0;
  *(v105 + qword_1EDEBBDB0) = v128;
  v131 = v342;
  v312 = v96 | v107;
  if (((v96 | v107) & 1) == 0)
  {
    v130 = [objc_allocWithZone(v127) init];
    if ((v96 & 0x200000) != 0)
    {
      v129 = [objc_allocWithZone(v127) init];
    }

    else
    {
      v129 = 0;
    }
  }

  v343 = v129;
  v344 = v130;
  aBlock = v131;
  aBlock_8 = v95;

  MEMORY[0x1D3868CC0](0x296F722820, 0xE500000000000000);
  v340 = aBlock_8;
  v315 = aBlock;
  aBlock = v131;
  aBlock_8 = v95;

  MEMORY[0x1D3868CC0](0x747361466F722820, 0xE900000000000029);
  v339 = aBlock_8;
  v314 = aBlock;
  v132 = [v118 defaultStore];
  v133 = v131;
  v134 = v96;
  v135 = [v132 sqlDatabaseStatementCacheMaxCount];

  v136 = v135;
  v137 = v353;
  v355(v353, v105 + v354, v358);
  v138 = v333;
  v139 = (v137 + *(v333 + 52));
  v140 = v335;
  *v139 = v334;
  v139[1] = v140;
  *(v137 + v138[14]) = v357;
  *(v137 + v138[15]) = v347;
  *(v137 + v138[16]) = v136;
  *(v137 + v138[17]) = (v134 & 0x200000000) != 0;
  *(v137 + v138[18]) = v107;
  *(v137 + v138[19]) = v134;

  if (errorInjectionThrowOnDBCreationEnabled())
  {

    LODWORD(aBlock) = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF042F54(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v141 = v317;
    v142 = v319;
    sub_1CF9E57D8();
    v143 = sub_1CF9E53A8();
    (*(v318 + 8))(v141, v142);
    swift_willThrow();
LABEL_26:
    v149 = v340;
    v150 = &unk_1EC4EB000;
LABEL_27:
    sub_1CF24CD3C();
    v151 = swift_allocError();
    *v152 = v143;
    *(v152 + 48) = 1;
    swift_willThrow();
    v153 = v143;
    v154 = v143;
    v155 = v151;
    v149, v156, v157, v158, v159, v160, v161, v162;
    v339, v163, v164, v165, v166, v167, v168, v169;

    v95, v170, v171, v172, v173, v174, v175, v176;
    sub_1CEFCCC44(v341, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v177 = v358;
    v178 = v336;
    v336(v359, v358);
    sub_1CEFCCC44(v353, &qword_1EC4BFB18, &qword_1CFA052A0);

    sub_1CF1FD6F8(*v350, v350[1]);
    sub_1CF1FD6F8(*v351, v351[1]);
    sub_1CEFCCC44(v105 + v322, &unk_1EC4BEDE0, qword_1CF9FA390);
    v178(v105 + v354, v177);
    *(v105 + v150[413] + 8), v179, v180, v181, v182, v183, v184, v185;

    *(v105 + v323), v186, v187, v188, v189, v190, v191, v192;
    swift_unknownObjectRelease();

    sub_1CEFF7124(*v326, v326[1]);
    sub_1CEFF7124(*v324, v324[1]);
    sub_1CEFF7124(*v327, v327[1]);
    sub_1CEFF7124(*v329, v329[1]);
    sub_1CEFF7124(*v331, v331[1]);
    *(v105 + v330), v193, v194, v195, v196, v197, v198, v199;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
    swift_deallocPartialClassInstance();
    return v149;
  }

  if (v134)
  {
    v144 = 1;
  }

  else
  {
    v144 = 6;
  }

  v145 = *&v348[v105];
  v146 = v95;
  v147 = v145;
  v148 = v320;
  sub_1CF3B0F28(v145, v133, v146, v144, v137);
  v143 = v148;

  if (v148)
  {

    v95 = v349;
    goto LABEL_26;
  }

  *(v105 + v316) = 0;
  v149 = v340;
  v150 = &unk_1EC4EB000;
  if (v107)
  {
    [*&v348[v105] setShouldUseWALJournalMode_];
  }

  v95 = v349;
  if ((v346 & 1) == 0 && ![*&v348[v105] setupPragmas])
  {

    v143 = [*&v348[v105] lastError];
    if (!v143)
    {
      type metadata accessor for PQLSqliteError(0);
      v360 = 11;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF042F54(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError, &unk_1CF9F9DB4);
      sub_1CF9E57D8();
      v143 = aBlock;
    }

    swift_willThrow();
    goto LABEL_27;
  }

  if (v344)
  {
    if ((v346 & 0x200000) != 0)
    {
      v201 = 1;
    }

    else
    {
      v201 = 65537;
    }

    v202 = v344;
    sub_1CF3B0F28(v202, v315, v149, v201, v353);

    v95 = v349;
  }

  v203 = v347;
  if (v343)
  {
    v204 = v343;
    sub_1CF3B0F28(v204, v314, v339, 1, v353);

    v95 = v349;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_allocObject();
  v205 = v357;

  sub_1CF3E407C(0, v205, &qword_1EC4C0650, &qword_1CFA05A60, sub_1CF1CBB20, sub_1CF208628);
  v356 = v206;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  swift_allocObject();

  sub_1CF3E407C(1, v203, &qword_1EC4C0648, &qword_1CFA05A58, sub_1CF1CC7A8, sub_1CF2080AC);
  v208 = v207;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB60, &qword_1CFA052D8);
  v209 = swift_allocObject();
  v210 = swift_weakInit();
  (*(*v205 + 96))(&aBlock, v210);

  (*(*v203 + 96))(&v360, v211);

  v212 = aBlock;
  v213 = v360;
  v214 = aBlock_8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_allocObject();
  v215 = sub_1CF38B590(v212, v214, v213);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_allocObject();

  v216 = v346;
  v217 = sub_1CF3ED780(v342, v95, v346);
  type metadata accessor for SQLHistoryTable();
  v218 = swift_allocObject();
  strcpy((v218 + 16), "D2DRestoreV2");
  *(v218 + 29) = 0;
  *(v218 + 30) = -5120;
  *(v218 + 32) = MEMORY[0x1E69E7CC0];
  *(v105 + qword_1EDEBBE30) = v218;
  v219 = v313;
  sub_1CEFCCBDC(v341, v313, &qword_1EC4BFB10, &unk_1CFA12AD0);

  v220 = v356;

  v221 = sub_1CF4794AC(v215, v217, v220, v208, v209, v219, v216, v105);
  v357 = v215;
  v149 = v221;

  v355 = v217;
  swift_weakAssign();
  swift_weakAssign();
  isa = v149[2].super.isa;
  v223 = *(&v149->super.isa + qword_1EDEBBDB0);
  v224 = isa;
  sub_1CF47A748(v223, v224, v353, v216 & 1);

  v232 = v339;
  v354 = v208;
  v351 = v209;
  if ((v312 & 1) == 0)
  {
    v240 = v349;
    v233 = &unk_1EC4EB000;
    if ((v346 & 0x200000) != 0)
    {
      v241 = v341;
      if (!v344)
      {
        goto LABEL_53;
      }

      if (v343)
      {
        v352 = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
        aBlock = v342;
        aBlock_8 = v240;
        v242 = v344;

        v350 = v242;
        v243 = v343;
        MEMORY[0x1D3868CC0](0x616261746164203ALL, 0xED00004F52206573);
        v334 = aBlock_8;
        v335 = aBlock;
        aBlock = MEMORY[0x1E69E7CC0];
        v347 = sub_1CF042F54(&unk_1EDEAB5D0, MEMORY[0x1E69E8110], MEMORY[0x1E69E8118]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
        v348 = sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870, MEMORY[0x1E69E6328]);
        sub_1CF9E77B8();
        v244 = *MEMORY[0x1E69E8098];
        v346 = *(v308 + 104);
        v245 = v307;
        (v346)(v307, v244, v309);
        v246 = sub_1CF9E7498();
        v247 = (&v149->super.isa + qword_1EC4EBCD0);
        v249 = *(&v149->super.isa + qword_1EC4EBCD0);
        v248 = *&v149->_anon_8[qword_1EC4EBCD0];
        *v247 = v344;
        v247[1] = v246;
        sub_1CF1FD6F8(v249, v248);
        aBlock = 0;
        aBlock_8 = 0xE000000000000000;
        sub_1CF9E7948();
        aBlock_8, v250, v251, v252, v253, v254, v255, v256;
        aBlock = v342;
        aBlock_8 = v349;

        MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA451A0);
        v335 = aBlock_8;
        v342 = aBlock;
        aBlock = MEMORY[0x1E69E7CC0];
        v240 = v349;
        sub_1CF9E77B8();
        v257 = v244;
        v241 = v341;
        (v346)(v245, v257, v309);
        v233 = &unk_1EC4EB000;
        v258 = sub_1CF9E7498();
        v232 = v339;
        v259 = v258;

        v260 = (&v149->super.isa + qword_1EC4EBCD8);
        v261 = *(&v149->super.isa + qword_1EC4EBCD8);
        v262 = *&v149->_anon_8[qword_1EC4EBCD8];
        *v260 = v343;
        v260[1] = v259;
LABEL_52:
        sub_1CF1FD6F8(v261, v262);
        goto LABEL_53;
      }
    }

    else
    {
      v241 = v341;
      if (!v344)
      {
        goto LABEL_53;
      }
    }

    v263 = v149[2].super.isa;
    v264 = (&v149->super.isa + qword_1EC4EBCD0);
    v265 = *(&v149->super.isa + qword_1EC4EBCD0);
    v266 = *&v149->_anon_8[qword_1EC4EBCD0];
    v267 = v344;
    *v264 = v344;
    v264[1] = v263;
    v268 = v267;
    v269 = v263;
    v270 = v266;
    v232 = v339;
    sub_1CF1FD6F8(v265, v270);
    v271 = (&v149->super.isa + qword_1EC4EBCD8);
    v261 = *(&v149->super.isa + qword_1EC4EBCD8);
    v262 = *&v149->_anon_8[qword_1EC4EBCD8];
    *v271 = 0;
    v271[1] = 0;
    goto LABEL_52;
  }

  v233 = &unk_1EC4EB000;
  v234 = (&v149->super.isa + qword_1EC4EBCD0);
  v235 = *(&v149->super.isa + qword_1EC4EBCD0);
  v236 = *&v149->_anon_8[qword_1EC4EBCD0];
  *v234 = 0;
  v234[1] = 0;
  sub_1CF1FD6F8(v235, v236);
  v237 = (&v149->super.isa + qword_1EC4EBCD8);
  v238 = *(&v149->super.isa + qword_1EC4EBCD8);
  v239 = *&v149->_anon_8[qword_1EC4EBCD8];
  *v237 = 0;
  v237[1] = 0;
  sub_1CF1FD6F8(v238, v239);
  v240 = v349;
  v241 = v341;
LABEL_53:
  v272 = v149 + v233[410];
  v273 = *v272;
  if (*v272)
  {
    v274 = *(v272 + 1);
    v275 = swift_allocObject();
    swift_weakInit();
    v366 = sub_1CF485A94;
    v367 = v275;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v364 = sub_1CF00A468;
    v365 = &block_descriptor_1637;
    v276 = _Block_copy(&aBlock);
    v277 = v273;
    v278 = v274;

    [v277 setAutoRollbackHandlerForSwift_];
    _Block_release(v276);
    sub_1CF3B107C(v277, v278);

    v240 = v349;
    v232 = v339;
  }

  v279 = *(&v149->super.isa + qword_1EC4EBCD8);
  if (v279)
  {
    v280 = *&v149->_anon_8[qword_1EC4EBCD8];
    v281 = swift_allocObject();
    swift_weakInit();
    v366 = sub_1CF485A94;
    v367 = v281;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v364 = sub_1CF00A468;
    v365 = &block_descriptor_1632;
    v282 = _Block_copy(&aBlock);
    v283 = v279;
    v284 = v280;

    [v283 setAutoRollbackHandlerForSwift_];
    _Block_release(v282);
    sub_1CF3B107C(v283, v284);

    v240 = v349;
    v232 = v339;
  }

  v240, v225, v226, v227, v228, v229, v230, v231;
  v340, v285, v286, v287, v288, v289, v290, v291;
  v232, v292, v293, v294, v295, v296, v297, v298;
  v299 = fpfs_current_or_default_log();
  v300 = v311;
  sub_1CF9E6128();
  v301 = sub_1CF9E6108();
  v302 = sub_1CF9E72C8();
  if (os_log_type_enabled(v301, v302))
  {
    v303 = swift_slowAlloc();
    *v303 = 0;
    _os_log_impl(&dword_1CEFC7000, v301, v302, "database is ready", v303, 2u);
    MEMORY[0x1D386CDC0](v303, -1, -1);
  }

  sub_1CEFCCC44(v241, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v336(v359, v358);
  v310(v300, v338);
  sub_1CEFCCC44(v353, &qword_1EC4BFB18, &qword_1CFA052A0);
  return v149;
}

void *sub_1CF3B5EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, void *a8, uint64_t a9, void (*a10)(void *), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v334 = a7;
  v333 = a6;
  v349 = a5;
  v343 = a4;
  v348 = a3;
  v357 = a1;
  v308 = sub_1CF9E7388();
  v307 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v306 = &v303 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_1CF9E7488();
  MEMORY[0x1EEE9AC00](v304);
  v305 = &v303 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v312 = &v303 - v19;
  v318 = sub_1CF9E53C8();
  v317 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318);
  v316 = &v303 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB18, &qword_1CFA052A0);
  MEMORY[0x1EEE9AC00](v332);
  v345 = &v303 - v21;
  v22 = sub_1CF9E5A58();
  v353 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v344 = &v303 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v346 = &v303 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v303 - v27;
  v336 = sub_1CF9E6118();
  v337 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336);
  v310 = &v303 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v354 = &v303 - v31;
  v32 = (a8 + qword_1EC4EBCD0);
  *v32 = 0;
  v32[1] = 0;
  v350 = v32;
  v33 = (a8 + qword_1EC4EBCD8);
  *v33 = 0;
  v33[1] = 0;
  v351 = v33;
  *(a8 + qword_1EDEBBE28) = 0;
  v315 = qword_1EDEBBE38;
  *(a8 + qword_1EDEBBE38) = 1;
  *(a8 + qword_1EDEBBE10) = 0;
  v34 = qword_1EDEBBDA8;
  v35 = sub_1CF9E5D98();
  v36 = *(*(v35 - 8) + 56);
  v321 = v34;
  v36(a8 + v34, 1, 1, v35);
  v322 = qword_1EC4BFAF0;
  *(a8 + qword_1EC4BFAF0) = MEMORY[0x1E69E7CC0];
  v324 = qword_1EDEAE678;
  *(a8 + qword_1EDEAE678) = 0;
  v327 = qword_1EDEAE660;
  *(a8 + qword_1EDEAE660) = 0;
  *(a8 + qword_1EDEBBDE8) = 0;
  v37 = (a8 + qword_1EDEBBDC8);
  *v37 = 0;
  v37[1] = 0;
  v325 = v37;
  *(a8 + qword_1EDEBBDD0) = 0;
  v38 = (a8 + qword_1EDEBBDC0);
  *v38 = 0;
  v38[1] = 0;
  v323 = v38;
  v39 = (a8 + qword_1EDEBBDD8);
  *v39 = 0;
  v39[1] = 0;
  v326 = v39;
  v40 = (a8 + qword_1EDEBBDF0);
  *v40 = 0;
  v40[1] = 0;
  v328 = v40;
  v41 = (a8 + qword_1EDEBBE20);
  *v41 = 0;
  v41[1] = 0;
  v330 = v41;
  *(a8 + qword_1EDEBBDE0) = 0;
  v42 = qword_1EC4BFAF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB20, &qword_1CFA052A8);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1CFA04E00;
  *(v43 + 32) = 0;
  *(v43 + 40) = sub_1CF3BDB8C;
  *(v43 + 48) = 0;
  *(v43 + 56) = 0x10000;
  *(v43 + 64) = 0x10000;
  *(v43 + 72) = sub_1CF3BDC14;
  *(v43 + 80) = 0;
  *(v43 + 88) = 65537;
  *(v43 + 96) = 65537;
  *(v43 + 104) = sub_1CF3BDC9C;
  *(v43 + 112) = 0;
  *(v43 + 120) = 0x20000;
  *(v43 + 128) = 0x20000;
  *(v43 + 136) = sub_1CF3BDD24;
  *(v43 + 144) = 0;
  *(v43 + 152) = 131073;
  *(v43 + 160) = 131073;
  *(v43 + 168) = sub_1CF3BDDAC;
  *(v43 + 176) = 0;
  *(v43 + 184) = 131074;
  *(v43 + 192) = 131074;
  *(v43 + 200) = sub_1CF3BDE34;
  *(v43 + 208) = 0;
  *(v43 + 216) = 131075;
  *(v43 + 224) = 131075;
  *(v43 + 232) = sub_1CF3BDEBC;
  *(v43 + 240) = 0;
  *(v43 + 248) = 131076;
  *(v43 + 256) = 131076;
  *(v43 + 264) = sub_1CF3BDF44;
  *(v43 + 272) = 0;
  *(v43 + 280) = 131077;
  *(v43 + 288) = 131077;
  *(v43 + 296) = sub_1CF3BDFCC;
  *(v43 + 304) = 0;
  *(v43 + 312) = 131078;
  *(v43 + 320) = 131078;
  *(v43 + 328) = sub_1CF3BE054;
  *(v43 + 336) = 0;
  *(v43 + 344) = 131079;
  *(v43 + 352) = 131079;
  *(v43 + 360) = sub_1CF3BE0DC;
  *(v43 + 368) = 0;
  *(v43 + 376) = 131080;
  *(v43 + 384) = 131080;
  *(v43 + 392) = sub_1CF3BE164;
  *(v43 + 400) = 0;
  *(v43 + 408) = 131081;
  *(v43 + 416) = 131081;
  *(v43 + 424) = sub_1CF3BE1EC;
  *(v43 + 432) = 0;
  *(v43 + 440) = 196608;
  *(v43 + 448) = 196608;
  *(v43 + 456) = sub_1CF3BE274;
  *(v43 + 464) = 0;
  *(v43 + 472) = 196609;
  *(v43 + 480) = 196609;
  *(v43 + 488) = sub_1CF3BE2FC;
  *(v43 + 496) = 0;
  *(v43 + 504) = 196610;
  *(v43 + 512) = 196610;
  *(v43 + 520) = sub_1CF3BE384;
  *(v43 + 528) = 0;
  *(v43 + 536) = 196611;
  *(v43 + 544) = 196611;
  *(v43 + 552) = sub_1CF3BE40C;
  *(v43 + 560) = 0;
  *(v43 + 568) = 196612;
  *(v43 + 576) = 196612;
  *(v43 + 584) = sub_1CF3BE494;
  *(v43 + 592) = 0;
  *(v43 + 600) = 196613;
  *(v43 + 608) = 196613;
  *(v43 + 616) = sub_1CF3BE51C;
  *(v43 + 624) = 0;
  *(v43 + 632) = 196614;
  *(v43 + 640) = 196614;
  *(v43 + 648) = sub_1CF3BE5A4;
  *(v43 + 656) = 0;
  *(v43 + 664) = 196615;
  *(v43 + 672) = 196615;
  *(v43 + 680) = sub_1CF3BE62C;
  *(v43 + 688) = 0;
  *(v43 + 696) = 0x40000;
  *(v43 + 704) = 0x40000;
  *(v43 + 712) = sub_1CF3BE6B4;
  *(v43 + 720) = 0;
  *(v43 + 728) = 262145;
  *(v43 + 736) = 262145;
  *(v43 + 744) = sub_1CF3BE73C;
  *(v43 + 752) = 0;
  *(v43 + 760) = 327680;
  *(v43 + 768) = 327680;
  *(v43 + 776) = sub_1CF3BE7C4;
  *(v43 + 784) = 0;
  *(v43 + 792) = 327681;
  *(v43 + 800) = 327681;
  *(v43 + 808) = sub_1CF3BE84C;
  *(v43 + 816) = 0;
  *(v43 + 824) = 327682;
  *(v43 + 832) = 327682;
  *(v43 + 840) = sub_1CF3BE8D4;
  *(v43 + 848) = 0;
  *(v43 + 856) = 327683;
  *(v43 + 864) = 327683;
  *(v43 + 872) = sub_1CF3BE95C;
  *(v43 + 880) = 0;
  *(v43 + 888) = 327684;
  *(v43 + 896) = 327684;
  *(v43 + 904) = sub_1CF3BE9E4;
  *(v43 + 912) = 0;
  *(v43 + 920) = 327685;
  *(v43 + 928) = 327685;
  *(v43 + 936) = sub_1CF3BEA6C;
  *(v43 + 944) = 0;
  *(v43 + 952) = 327686;
  *(v43 + 960) = 327686;
  *(v43 + 968) = sub_1CF3BEAF4;
  *(v43 + 976) = 0;
  *(v43 + 984) = 327687;
  *(v43 + 992) = 327687;
  *(v43 + 1000) = sub_1CF3BEB7C;
  *(v43 + 1008) = 0;
  *(v43 + 1016) = 327688;
  *(v43 + 1024) = 327688;
  *(v43 + 1032) = sub_1CF3BEC04;
  *(v43 + 1040) = 0;
  *(v43 + 1048) = 327689;
  *(v43 + 1056) = 327689;
  *(v43 + 1064) = sub_1CF3BEC8C;
  *(v43 + 1072) = 0;
  *(v43 + 1080) = 327690;
  *(v43 + 1088) = 327690;
  *(v43 + 1096) = sub_1CF3BED14;
  *(v43 + 1104) = 0;
  *(v43 + 1112) = 327691;
  *(v43 + 1120) = 327691;
  *(v43 + 1128) = sub_1CF3BED9C;
  *(v43 + 1136) = 0;
  *(v43 + 1144) = 393216;
  *(v43 + 1152) = 393216;
  *(v43 + 1160) = sub_1CF3BEE24;
  *(v43 + 1168) = 0;
  *(v43 + 1176) = 393217;
  *(v43 + 1184) = 393217;
  *(v43 + 1192) = sub_1CF3BEEAC;
  *(v43 + 1200) = 0;
  *(v43 + 1208) = 393218;
  *(v43 + 1216) = 393218;
  *(v43 + 1224) = sub_1CF3BEF34;
  *(v43 + 1232) = 0;
  *(v43 + 1240) = 393219;
  *(v43 + 1248) = 393219;
  *(v43 + 1256) = sub_1CF3BEFBC;
  *(v43 + 1264) = 0;
  *(v43 + 1272) = 393220;
  *(v43 + 1280) = 393220;
  *(v43 + 1288) = sub_1CF3BF044;
  *(v43 + 1296) = 0;
  *(v43 + 1304) = 393221;
  *(v43 + 1312) = 393221;
  *(v43 + 1320) = sub_1CF3BF0CC;
  *(v43 + 1328) = 0;
  *(v43 + 1336) = 458752;
  *(v43 + 1344) = 458752;
  *(v43 + 1352) = sub_1CF3BF154;
  *(v43 + 1360) = 0;
  *(v43 + 1368) = 458753;
  *(v43 + 1376) = 458753;
  *(v43 + 1384) = sub_1CF3BF1DC;
  *(v43 + 1392) = 0;
  *(v43 + 1400) = 458754;
  *(v43 + 1408) = 458754;
  *(v43 + 1416) = sub_1CF3BF264;
  *(v43 + 1424) = 0;
  *(v43 + 1432) = 458755;
  *(v43 + 1440) = 458755;
  *(v43 + 1448) = sub_1CF3BF2EC;
  *(v43 + 1456) = 0;
  *(v43 + 1464) = 458756;
  *(v43 + 1472) = 458756;
  *(v43 + 1480) = sub_1CF3BF374;
  *(v43 + 1488) = 0;
  *(v43 + 1496) = 0x80000;
  *(v43 + 1504) = 0x80000;
  *(v43 + 1512) = sub_1CF3BF3FC;
  *(v43 + 1520) = 0;
  *(v43 + 1528) = 524289;
  *(v43 + 1536) = 524289;
  *(v43 + 1544) = sub_1CF3BF484;
  *(v43 + 1552) = 0;
  *(v43 + 1560) = 524290;
  *(v43 + 1568) = 524290;
  *(v43 + 1576) = sub_1CF3BF50C;
  *(v43 + 1584) = 0;
  *(v43 + 1592) = 524291;
  *(v43 + 1600) = 524291;
  *(v43 + 1608) = sub_1CF3BF594;
  *(v43 + 1616) = 0;
  *(v43 + 1624) = 590079;
  *(v43 + 1632) = 590079;
  *(v43 + 1640) = sub_1CF3BF61C;
  *(v43 + 1648) = 0;
  *(v43 + 1656) = 590080;
  *(v43 + 1664) = 590080;
  *(v43 + 1672) = sub_1CF3BF6A4;
  *(v43 + 1680) = 0;
  *(v43 + 1688) = 590081;
  *(v43 + 1696) = 590081;
  *(v43 + 1704) = sub_1CF3BF72C;
  *(v43 + 1712) = 0;
  *(v43 + 1720) = 590082;
  *(v43 + 1728) = 590082;
  *(v43 + 1736) = sub_1CF3BF7B4;
  *(v43 + 1744) = 0;
  *(v43 + 1752) = 590084;
  *(v43 + 1760) = 590084;
  *(v43 + 1768) = sub_1CF3BF83C;
  *(v43 + 1776) = 0;
  *(v43 + 1784) = 590085;
  *(v43 + 1792) = 590085;
  *(v43 + 1800) = sub_1CF3BF8C4;
  *(v43 + 1808) = 0;
  *(v43 + 1816) = 590086;
  *(v43 + 1824) = 590086;
  *(v43 + 1832) = sub_1CF3BF94C;
  *(v43 + 1840) = 0;
  *(v43 + 1848) = 590087;
  *(v43 + 1856) = 590087;
  *(v43 + 1864) = sub_1CF3BF9D4;
  *(v43 + 1872) = 0;
  *(v43 + 1880) = 590088;
  *(v43 + 1888) = 590088;
  *(v43 + 1896) = sub_1CF3BFA5C;
  *(v43 + 1904) = 0;
  *(v43 + 1912) = 655615;
  *(v43 + 1920) = 655615;
  *(v43 + 1928) = sub_1CF3BFAE4;
  *(v43 + 1936) = 0;
  *(v43 + 1944) = 655616;
  *(v43 + 1952) = 655616;
  *(v43 + 1960) = sub_1CF3BFB6C;
  *(v43 + 1968) = 0;
  *(v43 + 1976) = 655617;
  *(v43 + 1984) = 655617;
  *(v43 + 1992) = sub_1CF3BFBF4;
  *(v43 + 2000) = 0;
  *(v43 + 2008) = 720896;
  *(v43 + 2016) = 720896;
  *(v43 + 2024) = sub_1CF3BFC7C;
  *(v43 + 2032) = 0;
  *(v43 + 2040) = 720897;
  *(v43 + 2048) = 720897;
  *(v43 + 2056) = sub_1CF3BFD04;
  *(v43 + 2064) = 0;
  *(v43 + 2072) = 720898;
  *(v43 + 2080) = 720898;
  *(v43 + 2088) = sub_1CF3BFD8C;
  *(v43 + 2096) = 0;
  *(v43 + 2104) = 720899;
  *(v43 + 2112) = 720899;
  *(v43 + 2120) = sub_1CF3BFE14;
  *(v43 + 2128) = 0;
  *(v43 + 2136) = 720900;
  *(v43 + 2144) = 720900;
  *(v43 + 2152) = sub_1CF3BFE9C;
  *(v43 + 2160) = 0;
  *(v43 + 2168) = 720901;
  *(v43 + 2176) = 720901;
  *(v43 + 2184) = sub_1CF3BFF24;
  *(v43 + 2192) = 0;
  *(v43 + 2200) = 720902;
  *(v43 + 2208) = 720902;
  *(v43 + 2216) = sub_1CF3BFFAC;
  *(v43 + 2224) = 0;
  *(v43 + 2232) = 720903;
  v44 = sub_1CF4E0CC0(v43);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB28, &unk_1CFA052B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v329 = v42;
  *(a8 + v42) = v44;
  v45 = qword_1EDEBBE18;
  v352 = objc_opt_self();
  v46 = [v352 defaultStore];
  v47 = [v46 sqlDatabaseVacuumBatchSize];

  *(a8 + v45) = v47;
  *(a8 + qword_1EDEBBE08) = 0;
  *(a8 + qword_1EDEBBE00) = 0;
  *(a8 + qword_1EDEBBDF8) = 0;
  v347 = a2;
  v48 = *(a2 + 136);
  v50 = *(v48 + 16);
  v49 = *(v48 + 24);

  v51 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v355 = *(v353 + 16);
  v356 = v353 + 16;
  v355(v28, v357, v22);

  v52 = sub_1CF9E6108();
  v53 = sub_1CF9E72C8();
  v49, v54, v55, v56, v57, v58, v59, v60;
  v61 = os_log_type_enabled(v52, v53);
  v358 = v22;
  v340 = v49;
  v341 = v50;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v339 = swift_slowAlloc();
    aBlock = v339;
    *v62 = 136446466;
    *(v62 + 4) = sub_1CEFD0DF0(v50, v49, &aBlock);
    *(v62 + 12) = 2082;
    v342 = a8;
    v63 = v28;
    v64 = sub_1CF9E5928();
    v65 = [v64 fp_shortDescription];

    v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v68 = v67;

    v69 = *(v353 + 8);
    v70 = (v353 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71 = v63;
    a8 = v342;
    v69(v71, v358);
    v72 = sub_1CEFD0DF0(v66, v68, &aBlock);
    v73 = v68;
    v22 = v358;
    v73, v74, v75, v76, v77, v78, v79, v80;
    *(v62 + 14) = v72;
    _os_log_impl(&dword_1CEFC7000, v52, v53, "opening database %{public}s at %{public}s", v62, 0x16u);
    v81 = v339;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v81, -1, -1);
    MEMORY[0x1D386CDC0](v62, -1, -1);
  }

  else
  {

    v69 = *(v353 + 8);
    v70 = (v353 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69(v28, v22);
  }

  v309 = *(v337 + 8);
  v309(v354, v336);
  v353 = a9;
  v82 = qword_1EC4EBCE0;
  v83 = v22;
  v84 = v22;
  v85 = v355;
  v355(a8 + qword_1EC4EBCE0, v357, v83);
  v354 = v82;
  v86 = a8 + v82;
  v87 = v346;
  v85(v346, v86, v84);
  v88 = sub_1CF9E5888();
  v90 = v89;
  v346 = v69;
  v69(v87, v84);
  v98 = v88 == 0x656D3A3A656C6966;
  v99 = v70;
  if (v98 && v90 == 0xED00003A79726F6DLL)
  {
    0xED00003A79726F6DLL, v91, v92, v93, v94, v95, v96, v97;
    v100 = v341;
LABEL_9:
    v109 = (a8 + qword_1EC4EBCE8);
    *v109 = 0;
    v109[1] = 0;
    v110 = 1;
    goto LABEL_11;
  }

  v101 = sub_1CF9E8048();
  v90, v102, v103, v104, v105, v106, v107, v108;
  v100 = v341;
  if (v101)
  {
    goto LABEL_9;
  }

  v111 = v344;
  v355(v344, &v354[a8], v84);
  v112 = sub_1CF9E5A18();
  v114 = v113;
  (v346)(v111, v84);
  aBlock = 1818326829;
  aBlock_8 = 0xE400000000000000;
  v359 = v112;
  v360 = v114;
  v359 = sub_1CF9E6B48();
  v360 = v115;
  sub_1CF9E6A28();
  v110 = 0;
  v116 = v360;
  v117 = (a8 + qword_1EC4EBCE8);
  *v117 = v359;
  v117[1] = v116;
LABEL_11:
  v118 = (a8 + qword_1EDEBBDA0);
  *v118 = v353;
  v118[1] = 0;
  v320 = v118;
  v119 = v349;
  *(a8 + qword_1EDEAE650) = (v349 & 4) != 0;
  v331 = a10;
  if ((v119 & 0x20000) != 0)
  {
    v120 = 3;
  }

  else
  {
    v120 = 1;
  }

  v121 = BYTE2(v119) & 2;
  if ((v119 & 0x200) != 0)
  {
    v121 = v120;
  }

  *(a8 + qword_1EDEAE668) = v121;
  v122 = [v352 defaultStore];
  v123 = [v122 sqlDatabaseBusyHandlerRetries];

  *(a8 + qword_1EDEBBDB8) = v123;
  v124 = v350;
  v125 = *v350;
  v126 = v350[1];
  *v350 = 0;
  v124[1] = 0;
  sub_1CF1FD6F8(v125, v126);
  v127 = v351;
  v128 = *v351;
  v129 = v351[1];
  *v351 = 0;
  v127[1] = 0;
  sub_1CF1FD6F8(v128, v129);
  v130 = type metadata accessor for PQLConnectionWithStatistics();
  v131 = [objc_allocWithZone(v130) init];
  v132 = 0;
  v133 = 0;
  v353 = qword_1EDEBBDB0;
  *(a8 + qword_1EDEBBDB0) = v131;
  v134 = v340;
  v311 = v119 | v110;
  if (((v119 | v110) & 1) == 0)
  {
    v133 = [objc_allocWithZone(v130) init];
    if ((v119 & 0x200000) != 0)
    {
      v132 = [objc_allocWithZone(v130) init];
    }

    else
    {
      v132 = 0;
    }

    v119 = v349;
  }

  v342 = v132;
  v344 = v133;
  v335 = v99;
  aBlock = v100;
  aBlock_8 = v134;

  MEMORY[0x1D3868CC0](0x296F722820, 0xE500000000000000);
  v338 = aBlock_8;
  v314 = aBlock;
  aBlock = v100;
  aBlock_8 = v134;

  MEMORY[0x1D3868CC0](0x747361466F722820, 0xE900000000000029);
  v339 = aBlock_8;
  v313 = aBlock;
  v135 = [v352 defaultStore];
  v136 = [v135 sqlDatabaseStatementCacheMaxCount];

  v137 = v136;
  v138 = v345;
  v355(v345, &v354[a8], v358);
  v139 = v100;
  v140 = v138;
  v141 = v332;
  v142 = (v138 + *(v332 + 52));
  v143 = v334;
  *v142 = v333;
  v142[1] = v143;
  *(v138 + v141[14]) = v347;
  *(v138 + v141[15]) = v348;
  *(v138 + v141[16]) = v137;
  *(v138 + v141[17]) = (v119 & 0x200000000) != 0;
  *(v138 + v141[18]) = v110;
  *(v138 + v141[19]) = v119;

  if (errorInjectionThrowOnDBCreationEnabled())
  {

    LODWORD(aBlock) = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF042F54(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v144 = v316;
    v145 = v318;
    sub_1CF9E57D8();
    v146 = sub_1CF9E53A8();
    (*(v317 + 8))(v144, v145);
    swift_willThrow();
    v147 = v358;
    v148 = v353;
LABEL_28:
    sub_1CF24CD3C();
    v152 = swift_allocError();
    *v153 = v146;
    *(v153 + 48) = 1;
    v154 = v146;
    v155 = v146;
    v331(v152);
    v338, v156, v157, v158, v159, v160, v161, v162;
    v339, v163, v164, v165, v166, v167, v168, v169;

    v134, v170, v171, v172, v173, v174, v175, v176;
    sub_1CEFCCC44(v343, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v177 = v346;
    (v346)(v357, v147);
    sub_1CEFCCC44(v140, &qword_1EC4BFB18, &qword_1CFA052A0);

    sub_1CF1FD6F8(*v350, v350[1]);
    sub_1CF1FD6F8(*v351, v351[1]);
    sub_1CEFCCC44(a8 + v321, &unk_1EC4BEDE0, qword_1CF9FA390);
    v177(&v354[a8], v147);
    *(a8 + qword_1EC4EBCE8 + 8), v178, v179, v180, v181, v182, v183, v184;

    *(a8 + v322), v185, v186, v187, v188, v189, v190, v191;
    swift_unknownObjectRelease();

    sub_1CEFF7124(*v325, v325[1]);
    sub_1CEFF7124(*v323, v323[1]);
    sub_1CEFF7124(*v326, v326[1]);
    sub_1CEFF7124(*v328, v328[1]);
    sub_1CEFF7124(*v330, v330[1]);
    *(a8 + v329), v192, v193, v194, v195, v196, v197, v198;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
    swift_deallocPartialClassInstance();
    return a8;
  }

  if (v119)
  {
    v149 = 1;
  }

  else
  {
    v149 = 6;
  }

  v148 = v353;
  v150 = *(a8 + v353);
  v151 = v319;
  sub_1CF3B0F28(v150, v139, v134, v149, v140);
  v146 = v151;
  if (v151)
  {

    v147 = v358;
    goto LABEL_28;
  }

  *(a8 + v315) = 0;
  if (v110)
  {
    [*(a8 + v148) setShouldUseWALJournalMode_];
  }

  v148 = v353;
  if ((v349 & 1) == 0 && ![*(a8 + v353) setupPragmas])
  {

    v146 = [*(a8 + v148) lastError];
    v147 = v358;
    if (!v146)
    {
      type metadata accessor for PQLSqliteError(0);
      v359 = 11;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF042F54(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError, &unk_1CF9F9DB4);
      sub_1CF9E57D8();
      v146 = aBlock;
    }

    swift_willThrow();
    goto LABEL_28;
  }

  if (v344)
  {
    if ((v349 & 0x200000) != 0)
    {
      v200 = 1;
    }

    else
    {
      v200 = 65537;
    }

    v201 = v344;
    v202 = v140;
    v203 = v201;
    sub_1CF3B0F28(v201, v314, v338, v200, v202);
  }

  v204 = v347;
  if (v342)
  {
    v205 = v342;
    sub_1CF3B0F28(v205, v313, v339, 1, v345);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_allocObject();

  sub_1CF3E407C(0, v204, &qword_1EC4C0650, &qword_1CFA05A60, sub_1CF1CBB20, sub_1CF208628);
  v356 = v206;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  swift_allocObject();
  v207 = v348;

  sub_1CF3E407C(1, v207, &qword_1EC4C0648, &qword_1CFA05A58, sub_1CF1CC7A8, sub_1CF2080AC);
  v209 = v208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB60, &qword_1CFA052D8);
  v355 = swift_allocObject();
  v210 = swift_weakInit();
  (*(*v204 + 96))(&aBlock, v210);

  (*(*v207 + 96))(&v359, v211);

  v212 = aBlock;
  v213 = v359;
  v214 = aBlock_8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_allocObject();
  v215 = sub_1CF38B590(v212, v214, v213);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_allocObject();

  v216 = sub_1CF3ED780(v341, v134, v349);
  type metadata accessor for SQLHistoryTable();
  v217 = swift_allocObject();
  strcpy((v217 + 16), "D2DRestoreV2");
  *(v217 + 29) = 0;
  *(v217 + 30) = -5120;
  *(v217 + 32) = MEMORY[0x1E69E7CC0];
  *(a8 + qword_1EDEBBE30) = v217;
  v218 = v312;
  sub_1CEFCCBDC(v343, v312, &qword_1EC4BFB10, &unk_1CFA12AD0);

  v219 = v356;

  v220 = v355;

  a8 = sub_1CF4794AC(v215, v216, v219, v209, v220, v218, v349, a8);
  v353 = v215;

  v354 = v209;

  v352 = v216;
  swift_weakAssign();
  swift_weakAssign();
  v221 = a8[8];
  v222 = *(a8 + qword_1EDEBBDB0);
  v223 = v221;
  sub_1CF47A748(v222, v223, v345, v349 & 1);

  v231 = v339;
  v232 = v343;
  if ((v311 & 1) == 0)
  {
    v233 = &unk_1EC4EB000;
    if ((v349 & 0x200000) != 0)
    {
      if (!v344)
      {
        goto LABEL_54;
      }

      if (v342)
      {
        v334 = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
        v240 = v340;
        aBlock = v341;
        aBlock_8 = v340;
        v241 = v344;

        v351 = v241;
        v242 = v342;
        MEMORY[0x1D3868CC0](0x616261746164203ALL, 0xED00004F52206573);
        v330 = aBlock_8;
        v332 = aBlock;
        aBlock = MEMORY[0x1E69E7CC0];
        v349 = sub_1CF042F54(&unk_1EDEAB5D0, MEMORY[0x1E69E8110], MEMORY[0x1E69E8118]);
        v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
        v350 = sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870, MEMORY[0x1E69E6328]);
        sub_1CF9E77B8();
        LODWORD(v347) = *MEMORY[0x1E69E8098];
        v333 = *(v307 + 104);
        v243 = v306;
        v333(v306);
        v244 = sub_1CF9E7498();
        v245 = (a8 + qword_1EC4EBCD0);
        v247 = *(a8 + qword_1EC4EBCD0);
        v246 = *(a8 + qword_1EC4EBCD0 + 8);
        *v245 = v344;
        v245[1] = v244;
        sub_1CF1FD6F8(v247, v246);
        aBlock = 0;
        aBlock_8 = 0xE000000000000000;
        sub_1CF9E7948();
        aBlock_8, v248, v249, v250, v251, v252, v253, v254;
        aBlock = v341;
        aBlock_8 = v240;

        MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA451A0);
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1CF9E77B8();
        (v333)(v243, v347, v308);
        v232 = v343;
        v233 = &unk_1EC4EB000;
        v255 = sub_1CF9E7498();
        v231 = v339;
        v256 = v255;

        v257 = (a8 + qword_1EC4EBCD8);
        v258 = *(a8 + qword_1EC4EBCD8);
        v259 = *(a8 + qword_1EC4EBCD8 + 8);
        *v257 = v342;
        v257[1] = v256;
LABEL_53:
        sub_1CF1FD6F8(v258, v259);
        goto LABEL_54;
      }
    }

    else if (!v344)
    {
      goto LABEL_54;
    }

    v260 = a8[8];
    v261 = (a8 + qword_1EC4EBCD0);
    v262 = *(a8 + qword_1EC4EBCD0);
    v263 = *(a8 + qword_1EC4EBCD0 + 8);
    v264 = v344;
    *v261 = v344;
    v261[1] = v260;
    v265 = v264;
    v266 = v260;
    v267 = v263;
    v231 = v339;
    sub_1CF1FD6F8(v262, v267);
    v268 = (a8 + qword_1EC4EBCD8);
    v258 = *(a8 + qword_1EC4EBCD8);
    v259 = *(a8 + qword_1EC4EBCD8 + 8);
    *v268 = 0;
    v268[1] = 0;
    goto LABEL_53;
  }

  v233 = &unk_1EC4EB000;
  v234 = (a8 + qword_1EC4EBCD0);
  v235 = *(a8 + qword_1EC4EBCD0);
  v236 = *(a8 + qword_1EC4EBCD0 + 8);
  *v234 = 0;
  v234[1] = 0;
  sub_1CF1FD6F8(v235, v236);
  v237 = (a8 + qword_1EC4EBCD8);
  v238 = *(a8 + qword_1EC4EBCD8);
  v239 = *(a8 + qword_1EC4EBCD8 + 8);
  *v237 = 0;
  v237[1] = 0;
  sub_1CF1FD6F8(v238, v239);
LABEL_54:
  v269 = a8 + v233[410];
  v270 = *v269;
  if (*v269)
  {
    v271 = *(v269 + 1);
    v272 = swift_allocObject();
    swift_weakInit();
    v365 = a11;
    v366 = v272;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v363 = sub_1CF00A468;
    v364 = a12;
    v273 = _Block_copy(&aBlock);
    v274 = v270;
    v275 = v271;

    [v274 setAutoRollbackHandlerForSwift_];
    _Block_release(v273);
    sub_1CF3B107C(v274, v275);

    v232 = v343;
    v231 = v339;
  }

  v276 = *(a8 + qword_1EC4EBCD8);
  if (v276)
  {
    v277 = *(a8 + qword_1EC4EBCD8 + 8);
    v278 = swift_allocObject();
    swift_weakInit();
    v365 = a13;
    v366 = v278;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v363 = sub_1CF00A468;
    v364 = a14;
    v279 = _Block_copy(&aBlock);
    v280 = v276;
    v281 = v277;

    [v280 setAutoRollbackHandlerForSwift_];
    _Block_release(v279);
    sub_1CF3B107C(v280, v281);

    v232 = v343;
    v282 = v358;
    v231 = v339;
  }

  else
  {
    v282 = v358;
  }

  v340, v224, v225, v226, v227, v228, v229, v230;
  v338, v283, v284, v285, v286, v287, v288, v289;
  v231, v290, v291, v292, v293, v294, v295, v296;
  v297 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v298 = sub_1CF9E6108();
  v299 = sub_1CF9E72C8();
  v300 = os_log_type_enabled(v298, v299);
  v301 = v336;
  if (v300)
  {
    v302 = swift_slowAlloc();
    *v302 = 0;
    _os_log_impl(&dword_1CEFC7000, v298, v299, "database is ready", v302, 2u);
    MEMORY[0x1D386CDC0](v302, -1, -1);
  }

  sub_1CEFCCC44(v232, &qword_1EC4BFB10, &unk_1CFA12AD0);
  (v346)(v357, v282);
  v309(v310, v301);
  sub_1CEFCCC44(v345, &qword_1EC4BFB18, &qword_1CFA052A0);
  return a8;
}