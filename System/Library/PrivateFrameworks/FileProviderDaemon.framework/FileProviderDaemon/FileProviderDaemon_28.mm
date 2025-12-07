void *sub_1CF3408A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, BOOL *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v58 - v12;
  v14 = sub_1CF9E5D98();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v22 = v58 - v21;
  if (a3 <= 3u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        *a4 = [a1 unsignedLongAtIndex_];
        type metadata accessor for SyncState(0);
        return swift_storeEnumTagMultiPayload();
      }

      v23 = v19;
      v24 = [a1 stringAtIndex_];
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26 = v25;

      sub_1CF9E5D08();
      v26, v27, v28, v29, v30, v31, v32, v33;
      if ((*(v15 + 48))(v13, 1, v23) != 1)
      {
        v43 = *(v15 + 32);
        v43(v22, v13, v23);
        v43(a4, v22, v23);
        type metadata accessor for SyncState(0);
        return swift_storeEnumTagMultiPayload();
      }

      v10 = v13;
LABEL_27:
      sub_1CF0156A8(v10);
      sub_1CF24CD3C();
      swift_allocError();
      *v54 = 0u;
      *(v54 + 16) = 0u;
      *(v54 + 32) = 0u;
      *(v54 + 48) = 9;
      return swift_willThrow();
    }

    if (a3 != 2)
    {
      v40 = [a1 isNullAtIndex_];
      if (v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = [a1 unsignedLongLongAtIndex_];
      }

      *a4 = v41;
      a4[8] = v40;
      type metadata accessor for SyncState(0);
      return swift_storeEnumTagMultiPayload();
    }

    v34 = v19;
    if ([a1 isNullAtIndex_])
    {
      (*(v15 + 56))(a4, 1, 1, v34);
    }

    else
    {
      v44 = [a1 stringAtIndex_];
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v46 = v45;

      sub_1CF9E5D08();
      v46, v47, v48, v49, v50, v51, v52, v53;
      if ((*(v15 + 48))(v10, 1, v34) == 1)
      {
        goto LABEL_27;
      }

      v57 = *(v15 + 32);
      v57(v17, v10, v34);
      v57(a4, v17, v34);
      (*(v15 + 56))(a4, 0, 1, v34);
    }

LABEL_37:
    type metadata accessor for SyncState(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (a3 <= 5u)
  {
    v35 = v58[1];
    if (a3 == 4)
    {
      if ([a1 isNullAtIndex_])
      {
        if (qword_1EDEA5AD8 != -1)
        {
          swift_once();
        }

        v36 = qword_1EDEBB820;
        v37 = *algn_1EDEBB828;
        v38 = *algn_1EDEBB828;
        v39 = v36;
      }

      else
      {
        result = sub_1CF1E05D8(a2);
        if (v35)
        {
          return result;
        }

        v36 = result;
        v37 = v56;
      }

      *a4 = v36;
      *(a4 + 1) = v37;
      type metadata accessor for SyncState(0);
    }

    else
    {
      if ([a1 isNullAtIndex_])
      {
        v42 = 0;
      }

      else
      {
        v42 = [a1 integerAtIndex_];
        if (v42)
        {
          v42 = [objc_opt_self() domainVersionWithVersion_];
        }
      }

      *a4 = v42;
      type metadata accessor for SyncState(0);
    }
  }

  else
  {
    if (a3 != 6)
    {
      if (a3 == 7)
      {
        *a4 = [a1 integerAtIndex_] == 1;
      }

      else
      {
        *a4 = [a1 integerAtIndex_];
      }

      goto LABEL_37;
    }

    *a4 = [a1 integerAtIndex_];
    type metadata accessor for SyncState(0);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1CF340EAC(unsigned __int8 a1@<W0>, uint64_t a2@<X3>, BOOL *a3@<X8>)
{
  v9[16] = a1;
  v6 = (*(a2 + 24))(sub_1CF342B70, v9);
  if (!v3)
  {
    v7 = v6;
    if ([v6 next])
    {
      sub_1CF3408A8(v7, 0, a1, a3);
    }

    else
    {
      sub_1CF24CD3C();
      swift_allocError();
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 9;
      swift_willThrow();
    }
  }
}

uint64_t sub_1CF340F94(uint64_t a1, unsigned __int8 a2)
{
  sub_1CF9E7948();
  0xE000000000000000, v3, v4, v5, v6, v7, v8, v9;
  v10 = 0xE700000000000000;
  if (a2 <= 3u)
  {
    v18 = 0x646975755F6264;
    v19 = 0xEE00646975755F6DLL;
    v20 = 0x61657274735F7366;
    if (a2 != 2)
    {
      v20 = 0xD000000000000012;
      v19 = 0x80000001CFA40D50;
    }

    if (a2)
    {
      v18 = 0xD000000000000012;
      v10 = 0x80000001CFA40D70;
    }

    if (a2 <= 1u)
    {
      v16 = v18;
    }

    else
    {
      v16 = v20;
    }

    if (a2 <= 1u)
    {
      v17 = v10;
    }

    else
    {
      v17 = v19;
    }
  }

  else
  {
    v11 = 0xED00007367616C66;
    v12 = 0x5F65727574616566;
    v13 = 0x80000001CFA40D10;
    if (a2 != 7)
    {
      v13 = 0x80000001CFA40CF0;
    }

    if (a2 != 6)
    {
      v12 = 0xD000000000000010;
      v11 = v13;
    }

    v14 = 0x80000001CFA40D30;
    v15 = 0xD000000000000014;
    if (a2 != 4)
    {
      v15 = 0x765F6E69616D6F64;
      v14 = 0xEE006E6F69737265;
    }

    if (a2 <= 5u)
    {
      v16 = v15;
    }

    else
    {
      v16 = v12;
    }

    if (a2 <= 5u)
    {
      v17 = v14;
    }

    else
    {
      v17 = v11;
    }
  }

  MEMORY[0x1D3868CC0](v16, v17);
  v17, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA40D90);
  return 0x205443454C4553;
}

void sub_1CF341164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a3;
  v7 = sub_1CF9E6118();
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v79 - v11;
  v13 = type metadata accessor for SyncState(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v79 - v17);
  sub_1CF04ED74(a1, &v79 - v17);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1CF04EDD8(v18);
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CF04ED74(a1, v15);
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E7298();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v86 = a1;
      v38 = v37;
      v39 = swift_slowAlloc();
      v85 = a2;
      v40 = v39;
      v90 = v39;
      *v38 = 136315138;
      v41 = sub_1CF04CC80();
      v42 = a4;
      v44 = v43;
      sub_1CF04EDD8(v15);
      v45 = sub_1CEFD0DF0(v41, v44, &v90);
      v46 = v44;
      a4 = v42;
      v46, v47, v48, v49, v50, v51, v52, v53;
      *(v38 + 4) = v45;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "🔑  updating %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      a1 = v86;
      MEMORY[0x1D386CDC0](v38, -1, -1);
    }

    else
    {

      sub_1CF04EDD8(v15);
    }

    v54 = (*(v88 + 8))(v9, v89);
    goto LABEL_21;
  }

  v86 = a1;
  v19 = *v18;
  if (!swift_weakLoadStrong())
  {
    __break(1u);
    goto LABEL_24;
  }

  v20 = sub_1CF04F1A0();

  v21 = sub_1CF04217C(v19, v20);

  if ((v21 & 1) == 0)
  {

    return;
  }

  v22 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v23 = v19;

  v24 = sub_1CF9E6108();
  v25 = sub_1CF9E7298();
  if (os_log_type_enabled(v24, v25))
  {
    v82 = v25;
    v85 = a2;
    v26 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v90 = v81;
    v84 = v26;
    *v26 = 136315394;
    Strong = swift_weakLoadStrong();

    v83 = v23;

    if (!Strong)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v80 = v24;
    v28 = sub_1CF04F1A0();

    if (v28)
    {
      v29 = 0x3E6C696E3CLL;
      v30 = [v28 description];

      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v33 = v32;
    }

    else
    {
      v33 = 0xE500000000000000;
      v29 = 0x3E6C696E3CLL;
      v31 = 0x3E6C696E3CLL;
    }

    v55 = sub_1CEFD0DF0(v31, v33, &v90);
    v33, v56, v57, v58, v59, v60, v61, v62;
    v63 = v84;
    *(v84 + 1) = v55;
    *(v63 + 6) = 2080;
    if (v19)
    {
      v23 = v83;
      v64 = [v83 description];
      v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v66 = v65;
    }

    else
    {
      v66 = 0xE500000000000000;
      v23 = v83;
    }

    v67 = sub_1CEFD0DF0(v29, v66, &v90);
    v66, v68, v69, v70, v71, v72, v73, v74;
    v75 = v84;
    *(v84 + 14) = v67;
    v76 = v80;
    _os_log_impl(&dword_1CEFC7000, v80, v82, "🌍  domain version updated %s -> %s", v75, 0x16u);
    v77 = v81;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v77, -1, -1);
    MEMORY[0x1D386CDC0](v75, -1, -1);
  }

  else
  {
  }

  (*(v88 + 8))(v12, v89);
  if (!swift_weakLoadStrong())
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1CF5DC770(v19);

  a1 = v86;
LABEL_21:
  v78 = MEMORY[0x1EEE9AC00](v54);
  *(&v79 - 2) = a1;
  (*(a4 + 32))(sub_1CF342B14, v78);
}

unint64_t sub_1CF341748(void *a1)
{
  sub_1CF9E7948();
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
  v9 = sub_1CF04DC74();
  if (v9 <= 3)
  {
    v17 = 0xE700000000000000;
    v18 = 0x646975755F6264;
    v19 = 0xEE00646975755F6DLL;
    v20 = 0x61657274735F7366;
    if (v9 != 2)
    {
      v20 = 0xD000000000000012;
      v19 = 0x80000001CFA40D50;
    }

    if (v9)
    {
      v18 = 0xD000000000000012;
      v17 = 0x80000001CFA40D70;
    }

    if (v9 <= 1)
    {
      v15 = v18;
    }

    else
    {
      v15 = v20;
    }

    if (v9 <= 1)
    {
      v16 = v17;
    }

    else
    {
      v16 = v19;
    }
  }

  else
  {
    v10 = 0xED00007367616C66;
    v11 = 0x5F65727574616566;
    v12 = 0x80000001CFA40D10;
    if (v9 != 7)
    {
      v12 = 0x80000001CFA40CF0;
    }

    if (v9 != 6)
    {
      v11 = 0xD000000000000010;
      v10 = v12;
    }

    v13 = 0x80000001CFA40D30;
    v14 = 0xD000000000000014;
    if (v9 != 4)
    {
      v14 = 0x765F6E69616D6F64;
      v13 = 0xEE006E6F69737265;
    }

    if (v9 <= 5)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    if (v9 <= 5)
    {
      v16 = v13;
    }

    else
    {
      v16 = v10;
    }
  }

  MEMORY[0x1D3868CC0](v15, v16);
  v16, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v28 = sub_1CF04DD90(a1);
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  return 0xD000000000000018;
}

uint64_t sub_1CF3419C0(void *a1, void *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000098, 0x80000001CFA408E0);
  v4 = [a2 UUIDString];
  if (!v4)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v6 = v5;
    v4 = sub_1CF9E6888();
    v6, v7, v8, v9, v10, v11, v12, v13;
  }

  v14 = [a1 bindStringParameter_];

  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA40980);
  return v26;
}

void sub_1CF341B50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v255 - v8;
  v10 = sub_1CF9E5D98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v255 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v255 - v16;
  v18 = (*(a4 + 24))(sub_1CF342774, 0, a3, a4, v15);
  v260 = v9;
  v261 = v11;
  v258 = v13;
  v262 = v17;
  v263 = v18;
  if ([v18 next])
  {
    v19 = (*(a4 + 72))(a3, a4);
    [v19 unsignedIntValue];

    v20 = [v263 unsignedLongAtIndex_];
    if ([v263 isNullAtIndex_])
    {
      goto LABEL_27;
    }

    v259 = a2;
    if (!swift_dynamicCastMetatype())
    {
      sub_1CF9E5688();
      swift_allocObject();
      sub_1CF9E5678();
      v21 = [v263 dataAtIndex_];
      v22 = sub_1CF9E5B88();
      v24 = v23;

      sub_1CF342AD0(&qword_1EDEAECB8, MEMORY[0x1E69695D0]);
      sub_1CF9E5668();
      sub_1CEFE4714(v22, v24);

      v26 = v259[4];
      v256 = v259[3];
      v257 = v26;
      v255 = __swift_project_boxed_opaque_existential_1(v259, v256);
      v267[0] = 0;
      v267[1] = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA40BB0);
      v27 = sub_1CF3B0B48();
      v29 = v28;
      MEMORY[0x1D3868CC0](v27);
      v29, v30, v31, v32, v33, v34, v35, v36;
      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      v265 = 114;
      v266 = 0xE100000000000000;
      v264 = v20;
      v37 = sub_1CF9E7F98();
      v39 = v38;
      MEMORY[0x1D3868CC0](v37);
      v39, v40, v41, v42, v43, v44, v45, v46;
      v47 = v266;
      MEMORY[0x1D3868CC0](v265, v266);
      v47, v48, v49, v50, v51, v52, v53, v54;
      MEMORY[0x1D3868CC0](0x3D4449555520, 0xE600000000000000);
      v55 = sub_1CF342AD0(&qword_1EDEAECB0, MEMORY[0x1E69695E0]);
      v56 = sub_1CF9E7F98();
      v58 = v57;
      MEMORY[0x1D3868CC0](v56);
      v58, v59, v60, v61, v62, v63, v64, v65;
      v66 = v267[1];
      sub_1CF4FB2BC(v267[0], v267[1], v256, v257);
      v66, v67, v68, v69, v70, v71, v72, v73;
      v74 = v10;
      if ([v263 isNullAtIndex_])
      {
        v75 = v260;
        v76 = v261;
        (*(v261 + 56))(v260, 1, 1, v10);
        sub_1CF0156A8(v75);
LABEL_13:
        if (([v263 isNullAtIndex_] & 1) == 0)
        {
          v120 = sub_1CF1E05D8(4);
          v122 = v121;
          v123 = v259[3];
          v124 = v259[4];
          __swift_project_boxed_opaque_existential_1(v259, v123);
          strcpy(v267, "+ FP anchor: ");
          HIWORD(v267[1]) = -4864;
          v125 = sub_1CF04D35C(v120, v122);
          v127 = v126;
          MEMORY[0x1D3868CC0](v125);
          v127, v128, v129, v130, v131, v132, v133, v134;
          v135 = v267[1];
          sub_1CF4FB2BC(v267[0], v267[1], v123, v124);
          v135, v136, v137, v138, v139, v140, v141, v142;

          v76 = v261;
        }

        v143 = v259;
        v144 = v259[3];
        v145 = v259[4];
        __swift_project_boxed_opaque_existential_1(v259, v144);
        v267[0] = 0;
        v267[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v267[1], v146, v147, v148, v149, v150, v151, v152;
        v267[0] = 0xD000000000000012;
        v267[1] = 0x80000001CFA40C10;
        v265 = [v263 unsignedLongAtIndex_];
        v153 = sub_1CF9E7F98();
        v155 = v154;
        MEMORY[0x1D3868CC0](v153);
        v155, v156, v157, v158, v159, v160, v161, v162;
        v163 = v267[1];
        sub_1CF4FB2BC(v267[0], v267[1], v144, v145);
        v163, v164, v165, v166, v167, v168, v169, v170;
        v171 = v143[3];
        v172 = v143[4];
        __swift_project_boxed_opaque_existential_1(v143, v171);
        v267[0] = 0;
        v267[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v267[1], v173, v174, v175, v176, v177, v178, v179;
        v267[0] = 0xD000000000000011;
        v267[1] = 0x80000001CFA40C30;
        v180 = sub_1CF7F48D8([v263 integerAtIndex_]);
        v182 = v181;
        MEMORY[0x1D3868CC0](v180);
        v182, v183, v184, v185, v186, v187, v188, v189;
        v190 = v267[1];
        sub_1CF4FB2BC(v267[0], v267[1], v171, v172);
        v190, v191, v192, v193, v194, v195, v196, v197;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v199 = *(Strong + 88);

          v200 = v143[3];
          v201 = v143[4];
          __swift_project_boxed_opaque_existential_1(v143, v200);
          if (v199)
          {
            v267[0] = 0;
            v267[1] = 0xE000000000000000;
            sub_1CF9E7948();
            v267[1], v202, v203, v204, v205, v206, v207, v208;
            v267[0] = 0xD000000000000014;
            v267[1] = 0x80000001CFA40C90;
            v209 = [v263 integerAtIndex_];
            v210 = v209 == 1;
            if (v209 == 1)
            {
              v211 = 0xD000000000000019;
            }

            else
            {
              v211 = 0x676E696E6E7572;
            }

            if (v210)
            {
              v212 = 0x80000001CFA40CB0;
            }

            else
            {
              v212 = 0xE700000000000000;
            }

            MEMORY[0x1D3868CC0](v211, v212);
            v212, v213, v214, v215, v216, v217, v218, v219;
            v220 = v267[1];
            sub_1CF4FB2BC(v267[0], v267[1], v200, v201);
            v220, v221, v222, v223, v224, v225, v226, v227;
          }

          else
          {
            sub_1CF4FB2BC(0xD00000000000001ALL, 0x80000001CFA40C50, v200, v201);
          }

          v228 = v259[3];
          v229 = v259[4];
          __swift_project_boxed_opaque_existential_1(v259, v228);
          v267[0] = 0;
          v267[1] = 0xE000000000000000;
          sub_1CF9E7948();
          v267[1], v230, v231, v232, v233, v234, v235, v236;
          v267[0] = 0xD000000000000014;
          v267[1] = 0x80000001CFA40C70;
          v265 = [v263 unsignedLongAtIndex_];
          v237 = sub_1CF9E7F98();
          v239 = v238;
          MEMORY[0x1D3868CC0](v237);
          v239, v240, v241, v242, v243, v244, v245, v246;
          v247 = v267[1];
          sub_1CF4FB2BC(v267[0], v267[1], v228, v229);
          v247, v248, v249, v250, v251, v252, v253, v254;

          (*(v76 + 8))(v262, v74);
          return;
        }

        __break(1u);
LABEL_27:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if ([v263 isNullAtIndex_])
      {
        goto LABEL_27;
      }

      v257 = v55;
      if (!swift_dynamicCastMetatype())
      {
        swift_allocObject();
        sub_1CF9E5678();
        v77 = [v263 dataAtIndex_];
        v78 = sub_1CF9E5B88();
        v80 = v79;

        v81 = v260;
        sub_1CF9E5668();
        sub_1CEFE4714(v78, v80);

        v76 = v261;
        (*(v261 + 56))(v81, 0, 1, v10);
        v82 = v258;
        (*(v76 + 32))(v258, v81, v74);
        v83 = v259[3];
        v84 = v259[4];
        __swift_project_boxed_opaque_existential_1(v259, v83);
        v267[0] = 0;
        v267[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v267[1], v85, v86, v87, v88, v89, v90, v91;
        v267[0] = 0xD000000000000010;
        v267[1] = 0x80000001CFA40BD0;
        v92 = sub_1CF9E7F98();
        v94 = v93;
        MEMORY[0x1D3868CC0](v92);
        v94, v95, v96, v97, v98, v99, v100, v101;
        MEMORY[0x1D3868CC0](0x496D616572745320, 0xEA00000000003D44);
        v265 = [v263 unsignedLongAtIndex_];
        v102 = sub_1CF9E7F98();
        v104 = v103;
        MEMORY[0x1D3868CC0](v102);
        v104, v105, v106, v107, v108, v109, v110, v111;
        v112 = v267[1];
        sub_1CF4FB2BC(v267[0], v267[1], v83, v84);
        v112, v113, v114, v115, v116, v117, v118, v119;
        (*(v76 + 8))(v82, v74);
        goto LABEL_13;
      }
    }

    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  v25 = v263;
}

void sub_1CF34286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v11 = *(a7 + 32);
  v12 = (v11)(sub_1CF3419A4, 0, a4, a7);
  if (!v7)
  {
    v13 = MEMORY[0x1EEE9AC00](v12);
    v11(sub_1CF342AC8, v13);
  }
}

uint64_t sub_1CF342AD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CF9E5D98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CF342B78()
{
  v1 = 0x208FB8EFB696E2;
  if (*v0 != 1)
  {
    v1 = 0x20919B9FF0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 548638690;
  }
}

unint64_t sub_1CF342BC8(uint64_t a1)
{
  if (a1 <= 15)
  {
    v7 = 0x20746E65746E6F63;
    v8 = 0x7220746365726964;
    if (a1 != 8)
    {
      v8 = 0;
    }

    if (a1 != 4)
    {
      v7 = v8;
    }

    v9 = 0x676E696E6E6970;
    v10 = 0x74616C7563657073;
    if (a1 != 2)
    {
      v10 = 0;
    }

    if (a1 != 1)
    {
      v9 = v10;
    }

    if (a1 <= 3)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x74616C7563657073;
    v2 = 0xD00000000000001ALL;
    v3 = 0xD000000000000013;
    if (a1 != 256)
    {
      v3 = 0;
    }

    if (a1 != 128)
    {
      v2 = v3;
    }

    if (a1 != 64)
    {
      v1 = v2;
    }

    v4 = 0xD00000000000001ALL;
    v5 = 0xD000000000000027;
    if (a1 != 32)
    {
      v5 = 0;
    }

    if (a1 != 16)
    {
      v4 = v5;
    }

    if (a1 <= 63)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }
}

void sub_1CF342D64(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v71 - v5;
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(v2, v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    sub_1CF4FB2BC(0xD000000000000016, 0x80000001CFA42140, v11, v12);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1CF9E7948();
    v73, v15, v16, v17, v18, v19, v20, v21;
    v72 = 0xD000000000000013;
    v73 = 0x80000001CFA421A0;
    sub_1CF355F5C(&unk_1EDEAECD0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v22 = sub_1CF9E7F98();
    v24 = v23;
    MEMORY[0x1D3868CC0](v22);
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32 = v73;
    sub_1CF4FB2BC(v72, v73, v13, v14);
    v32, v33, v34, v35, v36, v37, v38, v39;
    (*(v8 + 8))(v10, v7);
  }

  v40 = v2 + *(type metadata accessor for FPDownloadSchedulerFastPassState(0) + 20);
  if (*(v40 + 8))
  {
    v41 = a1[3];
    v42 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v41);
    sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA42160, v41, v42);
  }

  else
  {
    v43 = *v40;
    v44 = a1[3];
    v45 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v44);
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1CF9E7948();
    v73, v46, v47, v48, v49, v50, v51, v52;
    v72 = 0xD000000000000017;
    v73 = 0x80000001CFA42180;
    v71[1] = v43;
    v53 = sub_1CF9E7F98();
    v55 = v54;
    MEMORY[0x1D3868CC0](v53);
    v55, v56, v57, v58, v59, v60, v61, v62;
    v63 = v73;
    sub_1CF4FB2BC(v72, v73, v44, v45);
    v63, v64, v65, v66, v67, v68, v69, v70;
  }
}

uint64_t sub_1CF343100(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7D8, &qword_1CFA031C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF355E48();
  sub_1CF9E82A8();
  v8[15] = 0;
  sub_1CF9E5CF8();
  sub_1CF355F5C(&qword_1EDEAB3D0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1CF9E7E68();
  if (!v1)
  {
    type metadata accessor for FPDownloadSchedulerFastPassState(0);
    v8[14] = 1;
    sub_1CF9E7E58();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CF3432C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v21 = &v19 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7C0, &qword_1CFA031B8);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v19 - v6;
  v8 = type metadata accessor for FPDownloadSchedulerFastPassState(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5CF8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = &v11[*(v9 + 28)];
  *v13 = 0;
  v13[8] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF355E48();
  sub_1CF9E8298();
  if (!v2)
  {
    v14 = v20;
    v24 = 0;
    sub_1CF355F5C(&unk_1EDEAB3A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1CF9E7CF8();
    sub_1CEFE4804(v21, v11);
    v23 = 1;
    v16 = sub_1CF9E7CD8();
    v18 = v17;
    (*(v14 + 8))(v7, v22);
    *v13 = v16;
    v13[8] = v18 & 1;
    sub_1CF355EF8(v11, v19);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF355E9C(v11);
}

uint64_t sub_1CF3435D4()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x747361467473616CLL;
  }
}

void sub_1CF343620(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v12 = 0xEF6E755273736150;
  v13 = a1 == 0x747361467473616CLL && a2 == 0xEF6E755273736150;
  if (v13 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v12, a4, a5, a6, a7, a8, a9;
    v14 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CFA43110 == a2)
  {
    a2, 0x80000001CFA43110, a4, a5, a6, a7, a8, a9;
    v14 = 1;
  }

  else
  {
    v15 = sub_1CF9E8048();
    a2, v16, v17, v18, v19, v20, v21, v22;
    if (v15)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  *a3 = v14;
}

uint64_t sub_1CF34370C(uint64_t a1)
{
  v2 = sub_1CF355E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF343748(uint64_t a1)
{
  v2 = sub_1CF355E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF3437B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5CF8();
  result = (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

id sub_1CF343834()
{
  result = sub_1CF343854();
  qword_1EDEBBC10 = result;
  return result;
}

id sub_1CF343854()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E478]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  [v2 setScheduleAfter_];
  v3 = v2;
  [v3 setPriority_];
  [v3 setRequiresExternalPower_];
  [v3 setRequiresInexpensiveNetworkConnectivity_];
  v4 = objc_allocWithZone(MEMORY[0x1E698E468]);
  v5 = sub_1CF9E6888();
  v6 = [v4 initWithIdentifier_];

  v7 = v6;
  [v7 setRequiresInexpensiveNetworkConnectivity_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CFA00250;
  *(v8 + 32) = sub_1CF9E7088();
  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v9 = sub_1CF9E6D28();
  v8, v10, v11, v12, v13, v14, v15, v16;
  [v7 setFeatureCodes_];

  v17 = sub_1CF9E6D28();
  [v7 setProcessingTaskIdentifiers_];

  v18 = [objc_allocWithZone(FPDSharedSystemSchedulerWithFastPass) initWithTaskRequest:v3 fastPassTaskRequest:v7 options:1];
  return v18;
}

id sub_1CF343A70(uint64_t a1)
{
  v1 = *(a1 + 40);

  v2 = sub_1CF9E6888();
  v1, v3, v4, v5, v6, v7, v8, v9;

  return v2;
}

uint64_t sub_1CF343B0C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  return v3;
}

uint64_t sub_1CF343C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1CF9E62A8();
}

uint64_t sub_1CF343D10(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  sub_1CF9E6278();
  return swift_endAccess();
}

id sub_1CF343D80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = qword_1EDEBBB00;
  swift_beginAccess();
  sub_1CEFCCBDC(a1 + v5, v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v4, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_1CF9E5C48();
    (*(v7 + 8))(v4, v6);
    v9 = v10;
  }

  return v9;
}

double sub_1CF343ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    sub_1CF9E5CB8();
    v8 = sub_1CF9E5CF8();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1CF9E5CF8();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = qword_1EDEBBB00;
  swift_beginAccess();

  sub_1CEFE4804(v7, a1 + v10);
  swift_endAccess();

  return result;
}

void sub_1CF344058(int64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  if (v5)
  {
    v6 = v3;
    v10 = *v3;
    v11 = v3[3];

    v13 = v5(v12);
    sub_1CEFF7124(v5, v11);
    if (v13)
    {
      v24 = a3;
      v14 = *(*(*(v13 + 40) + 16) + 144);
      v15 = qword_1EDEBBAD0;
      *(v6 + qword_1EDEBBAD0) = v14;
      swift_retain_n();

      if (!v14 || (v16 = sub_1CF1C1F58(), , *(v6 + qword_1EDEBBB08) = v16 & 1, !*(v6 + qword_1EDEBBB18)) || (, sub_1CF35CCBC(v16 & 1, a1, a2, v24), , !v4))
      {
        v17 = *(v6 + v15);
        if (v17)
        {
          v18 = swift_allocObject();
          swift_weakInit();
          v19 = swift_allocObject();
          swift_weakInit();

          v20 = swift_allocObject();
          *(v20 + 2) = v10[10];
          *(v20 + 3) = v10[11];
          *(v20 + 4) = a2;
          *(v20 + 5) = v10[12];
          *(v20 + 6) = v10[13];
          *(v20 + 7) = v24;
          *(v20 + 8) = v18;
          *(v20 + 9) = v19;
          v21 = (v17 + qword_1EDEBB6D0);
          v22 = *(v17 + qword_1EDEBB6D0);
          v23 = *(v17 + qword_1EDEBB6D0 + 8);
          *v21 = sub_1CF35648C;
          v21[1] = v20;

          sub_1CEFF7124(v22, v23);
        }
      }
    }
  }
}

double sub_1CF34429C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v14 = a1 & 1;
      *(v13 + qword_1EDEBBB08) = a1 & 1;
      v15 = swift_allocObject();
      *(v15 + 16) = a6;
      *(v15 + 24) = a9;
      *(v15 + 32) = v13;
      *(v15 + 40) = v14;

      sub_1CF92DE44("speculativeDiskManagementActivation(with:)", 42, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF3564C0, v15);
    }
  }

  return result;
}

void sub_1CF3443E4(void *a1, uint64_t a2, char a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
  if (*(a2 + qword_1EDEBBB18))
  {
    v8 = v7;

    sub_1CF35CCBC(a3 & 1, v8, v5, v6);
  }
}

void sub_1CF344470(int64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v147 = a3;
  v143 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE30, &unk_1CFA03240);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v137 = &v119 - v9;
  v142 = sub_1CF9E7378();
  v146 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C50F0, &qword_1CFA00850);
  v144 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v119 - v11;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF800, &unk_1CFA03250);
  v136 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v145 = &v119 - v12;
  v134 = sub_1CF9E5CF8();
  v135 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v133 = &v119 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v119 - v21;
  v23 = v3[2];
  if (!v23 || (v24 = v3[3], v25 = , v26 = v23(v25), v27 = v23, v28 = v26, sub_1CEFF7124(v27, v24), !v28))
  {
LABEL_43:
    sub_1CF511798("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLBackgroundDownloader.swift", 142, 2, 229);
  }

  sub_1CF344058(a1, a2, v147);
  if (v4)
  {
LABEL_4:

    return;
  }

  if (*(v5 + qword_1EDEAC820))
  {

    sub_1CF1A7030();
  }

  v29 = sub_1CF033B88();
  v131 = a2;
  v132 = v28;
  v129 = a1;
  v130 = 0;
  if ((v29 & 0x1000) == 0 && (sub_1CF033B88() & 0x20000) == 0 || (v30 = (v5 + qword_1EDEBBAD8), v31 = *(v5 + qword_1EDEBBAD8 + 80), v31 < 1))
  {

    goto LABEL_13;
  }

  v32 = *(v143 + 96);
  aBlock = *(v143 + 80);
  v149 = v32;
  v128 = type metadata accessor for BackgroundDownloaderPacer(0, &aBlock);
  v33 = v30[14];
  v34 = v30[11];
  v35 = v30[12];
  v127 = v30[16];
  v36 = v132;
  swift_retain_n();
  v37 = sub_1CF364798();
  v38 = sub_1CF3590E8(v36, v35, v33, v31, v34, v127, v37);
  v39 = qword_1EDEBBB18;
  *(v5 + qword_1EDEBBB18) = v38;

  v40 = v130;
  sub_1CF35A3F4(v129, v131, v147);

  if (!v40)
  {
    v100 = sub_1CF033B88();
    v101 = *(v5 + v39);
    v130 = 0;
    if ((v100 & 0x40000) != 0)
    {
      v109 = v134;
      if (v101)
      {
        v110 = v101 + *(*v101 + 136);
        swift_beginAccess();
        v111 = type metadata accessor for BackgroundDownloaderPacerState(0);
        sub_1CEFCCBDC(v110 + *(v111 + 36), v22, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        if ((*(v135 + 48))(v22, 1, v109) != 1)
        {
          sub_1CEFCCC44(v22, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          goto LABEL_13;
        }
      }

      else
      {
        (*(v135 + 56))(v22, 1, 1, v134);
      }

      sub_1CEFCCC44(v22, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v112 = *(v5 + v39);
      if (v112)
      {

        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v114 = v113;
        (*(v135 + 8))(v14, v109);
        v115 = v114 * 1000000000.0;
        if (COERCE__INT64(fabs(v114 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (v115 <= -9.22337204e18)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (v115 >= 9.22337204e18)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v116 = v133;
        sub_1CF9E5C88();
        (*(v135 + 56))(v116, 0, 1, v109);
        v117 = &v112[*(*v112 + 136)];
        swift_beginAccess();
        v118 = type metadata accessor for BackgroundDownloaderPacerState(0);
        sub_1CEFE4804(v116, &v117[*(v118 + 36)]);
        swift_endAccess();
        v112[72] = 1;
      }
    }

    else
    {
      v102 = v134;
      if (v101)
      {
        v103 = v101 + *(*v101 + 136);
        swift_beginAccess();
        v104 = type metadata accessor for BackgroundDownloaderPacerState(0);
        sub_1CEFCCBDC(v103 + *(v104 + 36), v17, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        if ((*(v135 + 48))(v17, 1, v102) != 1)
        {
          sub_1CEFCCC44(v17, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v105 = *(v5 + v39);
          if (v105)
          {
            v106 = v133;
            (*(v135 + 56))(v133, 1, 1, v102);
            v107 = &v105[*(*v105 + 136)];
            swift_beginAccess();
            v108 = *(v104 + 36);

            sub_1CEFE4804(v106, &v107[v108]);
            swift_endAccess();
            v105[72] = 1;
          }

          goto LABEL_13;
        }
      }

      else
      {
        (*(v135 + 56))(v17, 1, 1, v134);
      }

      sub_1CEFCCC44(v17, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }

LABEL_13:
    sub_1CF343AEC();
    v41 = v140;
    sub_1CF9E7348();
    v42 = sub_1CF042F4C();
    *&aBlock = v42;
    v128 = sub_1CF9E7338();
    v43 = *(v128 - 8);
    v127 = *(v43 + 56);
    v133 = (v43 + 56);
    v44 = v137;
    v127(v137, 1, 1, v128);
    v125 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
    v124 = sub_1CEFCCCEC(&unk_1EDEAB6F0, &qword_1EC4C50F0, &qword_1CFA00850, MEMORY[0x1E695C068]);
    v126 = sub_1CF356374();
    v45 = v42;
    v46 = v139;
    v47 = v138;
    sub_1CF9E62D8();
    sub_1CEFCCC44(v44, &unk_1EC4BEE30, &unk_1CFA03240);

    v123 = *(v146 + 8);
    v146 += 8;
    v123(v41, v142);
    v122 = *(v144 + 8);
    v144 += 8;
    v122(v47, v46);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    v50 = v143;
    v120 = *(v143 + 80);
    v49[2] = v120;
    v134 = v50[11];
    v51 = v131;
    v49[3] = v134;
    v49[4] = v51;
    v135 = v50[12];
    v49[5] = v135;
    v143 = v50[13];
    v52 = v147;
    v49[6] = v143;
    v49[7] = v52;
    v49[8] = v48;
    v121 = sub_1CEFCCCEC(&qword_1EDEA3980, &qword_1EC4BF800, &unk_1CFA03250, MEMORY[0x1E695BE50]);
    v53 = v141;
    v54 = v145;
    v55 = sub_1CF9E62F8();

    v136 = *(v136 + 8);
    (v136)(v54, v53);
    *(v5 + qword_1EDEBBAC8) = v55;

    sub_1CF343D04();
    v56 = v140;
    sub_1CF9E7368();
    v57 = sub_1CF042F4C();

    *&aBlock = v57;
    v127(v44, 1, 1, v128);
    v58 = v139;
    v59 = v131;
    sub_1CF9E62D8();
    sub_1CEFCCC44(v44, &unk_1EC4BEE30, &unk_1CFA03240);

    v123(v56, v142);
    v60 = v147;
    v122(v47, v58);
    v61 = v120;
    v62 = swift_allocObject();
    swift_weakInit();
    v63 = swift_allocObject();
    v64 = v134;
    v63[2] = v61;
    v63[3] = v64;
    v65 = v135;
    v63[4] = v59;
    v63[5] = v65;
    v63[6] = v143;
    v63[7] = v60;
    v63[8] = v62;
    v66 = v141;
    v67 = v145;
    v68 = sub_1CF9E62F8();

    v69 = v67;
    v70 = v59;
    (v136)(v69, v66);
    v71 = v132;
    *(v5 + qword_1EDEAC7F0) = v68;

    v72 = *(v5 + qword_1EDEBBAF8);
    if (v72)
    {
      v73 = *(*(*(*(v71 + 32) + 16) + 136) + 24);

      v74 = sub_1CF9E6888();
      v73, v75, v76, v77, v78, v79, v80, v81;
      v82 = swift_allocObject();
      swift_weakInit();
      v83 = swift_allocObject();
      v84 = v134;
      v83[2] = v61;
      v83[3] = v84;
      v85 = v135;
      v83[4] = v70;
      v83[5] = v85;
      v83[6] = v143;
      v83[7] = v60;
      v83[8] = v82;
      v150 = sub_1CF356428;
      v151 = v83;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v149 = sub_1CF0892D0;
      *(&v149 + 1) = &block_descriptor_38;
      v86 = _Block_copy(&aBlock);

      [v72 registerKey:v74 notificationsUpdatesHandlers:v86];
      _Block_release(v86);
    }

    v87 = *(v60 + 8);
    v88 = v129;
    v89 = v130;
    v90 = (*(v87 + 24))(sub_1CF3569A8, 0, v70, v87);
    if (v89)
    {
      goto LABEL_4;
    }

    v91 = v90;
    [v90 next];
    v92 = [v91 longAtIndex_];
    v93 = sub_1CF5DA5A8(8u);
    v95 = *(v93 + 16);
    v94 = *(v93 + 24);
    v96 = __OFSUB__(v94, v95);
    v97 = v94 - v95;
    if (!v96)
    {
      if (v97 < v92)
      {
        *(v93 + 24) = v92;
      }

      *(v93 + 16) = v92;

      v99 = v131;
      if (v92 >= 1)
      {
        sub_1CF35230C(v88, v131, v87, v98);
      }

      sub_1CF345EAC(v88, v99, v87);
      sub_1CF346598();

      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_40;
  }
}

double sub_1CF3454F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 16);
    if (v10 && (v11 = *(Strong + 24), v12 = , v13 = v10(v12), v14 = sub_1CEFF7124(v10, v11), v13))
    {
      MEMORY[0x1EEE9AC00](v14);
      sub_1CF3C87A8(sub_1CF356464);
    }

    else
    {
    }
  }

  return result;
}

void sub_1CF34562C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CF345EAC(v5, v3, *(v4 + 8));
    if (v2)
    {
    }
  }
}

double sub_1CF3456D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 16);
    if (v4 && (v5 = *(Strong + 24), v6 = , v7 = v4(v6), v8 = sub_1CEFF7124(v4, v5), v7))
    {
      MEMORY[0x1EEE9AC00](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06D0, &qword_1CFA05AE0);
      sub_1CF3C87A8(sub_1CF35643C);
    }

    else
    {
    }
  }

  return result;
}

void sub_1CF345818(void *a1@<X0>, BOOL *a3@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1CF352CBC(v6, v4, *(v5 + 8));
  }

  *a3 = Strong == 0;
}

double sub_1CF3458B8(char a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CF345984(a1 & 1);
  }

  return result;
}

double sub_1CF345918()
{
  v1 = qword_1EDEBBB18;
  if (*(v0 + qword_1EDEBBB18))
  {

    sub_1CF35A528(v2);
  }

  *(v0 + v1) = 0;

  return result;
}

double sub_1CF345984(char a1)
{
  v2 = v1;
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v2 + qword_1EDEBBAF0) ^ 1) & a1;
  *(v2 + qword_1EDEBBAF0) = a1;
  v9 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v10 = sub_1CF9E6108();
  v11 = sub_1CF9E7288();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_1CEFC7000, v10, v11, "⏰ update CacheDeleteCacheable: %{BOOL}d", v12, 8u);
    MEMORY[0x1D386CDC0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v14 = *(v2 + 16);
    if (v14)
    {
      v15 = *(v2 + 24);

      v17 = v14(v16);
      sub_1CEFF7124(v14, v15);
      if (v17)
      {

        sub_1CF92DE44("updateCacheDeleteCacheable(_:)", 30, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF356358, v2);
      }
    }
  }

  return result;
}

void sub_1CF345BB4(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF34A458(v2);
  if (v1)
  {
  }
}

double sub_1CF345C3C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);

  return result;
}

id sub_1CF345C98()
{
  if (*(v0 + qword_1EDEBBAE8))
  {
    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    return sub_1CF06779C(sub_1CF356350, v0);
  }

  else
  {
    *(v0 + qword_1EDEBBAE8) = 1;
    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1EDEBBC10;

    return [v2 addWatcher_];
  }
}

double sub_1CF345D84(uint64_t a1)
{
  if (*(a1 + qword_1EDEBBB18))
  {

    sub_1CF3625E4(1uLL);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 24);

    v6 = v3(v5);
    sub_1CEFF7124(v3, v4);
    if (v6)
    {
      sub_1CF058CE4();
    }
  }

  return result;
}

id sub_1CF345E30()
{
  v1 = qword_1EDEBBAE8;
  if (*(v0 + qword_1EDEBBAE8) == 1)
  {
    if (qword_1EDEAD4D8 != -1)
    {
      swift_once();
    }

    result = [qword_1EDEBBC10 removeWatcher_];
    *(v0 + v1) = 0;
  }

  return result;
}

void sub_1CF345EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))(sub_1CF345F40, 0, a2);
  if (!v3)
  {
    v5 = v4;
    if ([v4 next])
    {
      sub_1CF345C98();
    }

    else
    {
      sub_1CF345E30();
    }
  }
}

uint64_t sub_1CF345F40()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA42FB0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA42FF0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA42F90);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x200A0A30203D2120, 0xEF312054494D494CLL);
  return 0;
}

void sub_1CF3460B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v25 = a3;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v5 + 16);
  if (v12)
  {
    v24 = a2;
    v13 = *(v5 + 24);

    v15 = v12(v14);
    sub_1CEFF7124(v12, v13);
    if (v15)
    {
      v16 = sub_1CF042F4C();
      *v11 = v16;
      (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
      v17 = v16;
      LOBYTE(v16) = sub_1CF9E64D8();
      (*(v9 + 8))(v11, v8);
      if (v16)
      {
        v18 = v25;
        v19 = v24;
        v20 = (*(*(v25 + 8) + 24))(sub_1CF3462E8, 0, v24);
        if (v4)
        {
        }

        else
        {
          v21 = v20;
          if ([v20 next])
          {
            do
            {
              v22 = objc_autoreleasePoolPush();
              sub_1CF3463FC(v21, v5, a1, v19, v18);
              objc_autoreleasePoolPop(v22);
            }

            while (([v21 next] & 1) != 0);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1CF3462E8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA423A0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA42F90);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF3463FC(void *a1, uint64_t a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5)
{
  v15 = a5;
  v13 = a3;
  v14 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v13 - v9;
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v11 + 16))(a1, 0, AssociatedTypeWitness, v11);
  if (!v5)
  {
    sub_1CF3488CC(v10, v13, v14, v15);
    return (*(v8 + 8))(v10, AssociatedTypeWitness);
  }

  return result;
}

double sub_1CF346598()
{
  v1 = v0;
  v2 = sub_1CF9E63A8();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CF9E6448();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E6388();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_1CF9E6498();
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v26 - v14;
  v16 = *(v0 + 16);
  if (v16)
  {
    v17 = *(v0 + 24);

    v19 = v16(v18);
    sub_1CEFF7124(v16, v17);
    if (v19)
    {
      v27 = sub_1CF042F4C();
      sub_1CF9E6478();
      *v8 = *(v1 + qword_1EDEBBAD8 + 104);
      (*(v6 + 104))(v8, *MEMORY[0x1E69E7F28], v5);
      MEMORY[0x1D3868740](v11, v8);
      (*(v6 + 8))(v8, v5);
      v26 = *(v9 + 8);
      v26(v11, v34);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v1;
      aBlock[4] = sub_1CF356304;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CEFCA444;
      aBlock[3] = &block_descriptor_15;
      v21 = _Block_copy(aBlock);

      v22 = v28;
      sub_1CF9E63F8();
      v35 = MEMORY[0x1E69E7CC0];
      sub_1CF355F5C(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v23 = v30;
      v24 = v33;
      sub_1CF9E77B8();
      v25 = v27;
      MEMORY[0x1D38695B0](v15, v22, v23, v21);
      _Block_release(v21);

      (*(v32 + 8))(v23, v24);
      (*(v29 + 8))(v22, v31);
      v26(v15, v34);
    }
  }

  return result;
}

void sub_1CF346A84(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v3);
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  v4 = sub_1CEFCB1A0(sub_1CF0BA898, 0);
  if (v4 == 2 || (v4 & 1) != 0)
  {
    sub_1CF59896C("scheduleCancellationOfSpeculativeSetDownloads()", 0x2FuLL, 2, sub_1CF35630C, a2, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7CA8]);
  }
}

uint64_t sub_1CF346D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA41BA0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000064, 0x80000001CFA41BD0);
  return 0;
}

uint64_t sub_1CF346E30()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000079, 0x80000001CFA413C0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000044, 0x80000001CFA41B50);
  return 0;
}

uint64_t sub_1CF346F08()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001A5, 0x80000001CFA41900);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF346FB8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D1, 0x80000001CFA41820);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF347068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA416A0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000131, 0x80000001CFA416E0);
  return 0;
}

uint64_t sub_1CF3471D4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000079, 0x80000001CFA413C0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD0000000000000A4, 0x80000001CFA41440);
  return 0;
}

uint64_t sub_1CF347298(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 24);

    result = v3(v7);
    if (result)
    {
      sub_1CEFF7124(v3, v6);
      sub_1CF47F85C();

      sub_1CF9E7948();
      0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
      MEMORY[0x1D3868CC0](v5, a2);
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v15 = sub_1CF4876D8(0xD00000000000002ELL, 0x80000001CFA42F30);

      0x80000001CFA42F30, v16, v17, v18, v19, v20, v21, v22;
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3473AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  result = (v6)(sub_1CF3569B0, 0, a2, a3);
  if (!v3)
  {
    (v6)(sub_1CF34759C, 0, a2, a3);
    v8 = (v6)(sub_1CF3569B4, 0, a2, a3);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v10 = v6(sub_1CF3562E0, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v12 = v6(sub_1CF3562EC, v11);
    v13 = MEMORY[0x1EEE9AC00](v12);
    return v6(sub_1CF3562F8, v13);
  }

  return result;
}

uint64_t sub_1CF3475B8(uint64_t a1, void *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000CBLL, 0x80000001CFA42E10);
  v2 = sub_1CF3558D8();
  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](0xD0000000000000D0, 0x80000001CFA428E0);
  v12 = sub_1CF35563C();
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0x444E450A3BLL, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF347718(uint64_t a1, void *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001A1, 0x80000001CFA42AF0);
  v2 = sub_1CF347298(0x695F70662E77656ELL, 0xE900000000000064);
  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA42CA0);
  v12 = sub_1CF347298(0x695F70662E77656ELL, 0xE900000000000064);
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA42D00);
  v22 = sub_1CF3558D8();
  v24 = v23;
  MEMORY[0x1D3868CC0](v22);
  v24, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](0xD000000000000093, 0x80000001CFA42D40);
  v32 = sub_1CF9E7F98();
  v34 = v33;
  MEMORY[0x1D3868CC0](v32);
  v34, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA42DE0);
  v42 = sub_1CF35563C();
  v44 = v43;
  MEMORY[0x1D3868CC0](v42);
  v44, v45, v46, v47, v48, v49, v50, v51;
  MEMORY[0x1D3868CC0](0x444E450A3BLL, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF347960(uint64_t a1, void *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000B3, 0x80000001CFA42820);
  v2 = sub_1CF3558D8();
  v4 = v3;
  MEMORY[0x1D3868CC0](v2);
  v4, v5, v6, v7, v8, v9, v10, v11;
  MEMORY[0x1D3868CC0](0xD0000000000000D0, 0x80000001CFA428E0);
  v12 = sub_1CF35563C();
  v14 = v13;
  MEMORY[0x1D3868CC0](v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0x444E450A3BLL, 0xE500000000000000);
  return 0;
}

void sub_1CF347AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a4;
  v94 = a8;
  v95 = a6;
  v96 = a7;
  v89 = a5;
  v86 = a2;
  v82 = *v8;
  v83 = a3;
  v10 = v82[12];
  v92 = v8;
  v84 = v82[10];
  v85 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v79[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v79[-v16];
  v18 = sub_1CF9E6118();
  v87 = *(v18 - 8);
  v88 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v79[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v22 = *(v12 + 16);
  v93 = a1;
  v22(v17, a1, AssociatedTypeWitness);
  v23 = sub_1CF9E6108();
  v24 = sub_1CF9E7288();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v80 = v24;
    v26 = v25;
    v81 = swift_slowAlloc();
    v97 = v81;
    *v26 = 136446466;
    v22(v14, v17, AssociatedTypeWitness);
    v27 = *(v12 + 8);
    v27(v17, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v28 = v23;
    v29 = sub_1CF9E7F98();
    v31 = v30;
    v27(v14, AssociatedTypeWitness);
    v32 = sub_1CEFD0DF0(v29, v31, &v97);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v26 + 4) = v32;
    *(v26 + 12) = 2082;
    v40 = sub_1CF7F5068(v86);
    v42 = v41;
    v43 = sub_1CEFD0DF0(v40, v41, &v97);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v26 + 14) = v43;
    _os_log_impl(&dword_1CEFC7000, v28, v80, "⏰  scheduling background download <i:%{public}s reason:%{public}s>", v26, 0x16u);
    v51 = v81;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v51, -1, -1);
    MEMORY[0x1D386CDC0](v26, -1, -1);
  }

  else
  {
    (*(v12 + 8))(v17, AssociatedTypeWitness);
  }

  (*(v87 + 8))(v20, v88);
  v52 = sub_1CF9E5278();
  v53 = (v90 | v89) < 0 || v52 == v90;
  v54 = v53;
  if (v53)
  {
    v55 = 0;
  }

  else
  {
    v55 = v89;
  }

  if (v53)
  {
    v56 = 0;
  }

  else
  {
    v56 = v90;
  }

  v57 = MEMORY[0x1EEE9AC00](v52);
  v59 = v93;
  v58 = v94;
  *&v79[-64] = v96;
  *&v79[-56] = v58;
  v60 = v91;
  v61 = v92;
  *&v79[-48] = v59;
  *&v79[-40] = v61;
  *&v79[-32] = v56;
  v79[-24] = v54;
  *&v79[-16] = v55;
  v79[-8] = v54;
  v62 = *(v58 + 8);
  v63 = (*(v62 + 24))(sub_1CF356224, v57);
  if (!v60)
  {
    v64 = v63;
    v65 = [v63 next];
    v91 = v79;
    if (v65)
    {
      v66 = MEMORY[0x1EEE9AC00](v65);
      v67 = v95;
      v68 = v96;
      v69 = v94;
      *&v79[-80] = v96;
      *&v79[-72] = v69;
      v70 = v93;
      *&v79[-64] = v86;
      *&v79[-56] = v70;
      *&v79[-48] = v61;
      *&v79[-40] = v56;
      v79[-32] = v54;
      *&v79[-24] = v55;
      v79[-16] = v54;
      (*(v69 + 32))(sub_1CF3562A4, v66);
      sub_1CF353998(v67, v68, v62);
    }

    else
    {
      v71 = MEMORY[0x1EEE9AC00](v65);
      v72 = v82;
      v73 = v82[11];
      *&v79[-112] = v84;
      *&v79[-104] = v73;
      v74 = v96;
      v75 = v85;
      *&v79[-96] = v96;
      *&v79[-88] = v75;
      v76 = v94;
      v77 = v95;
      *&v79[-80] = v72[13];
      *&v79[-72] = v76;
      *&v79[-64] = v93;
      *&v79[-56] = v56;
      v79[-48] = v54;
      *&v79[-40] = v55;
      v79[-32] = v54;
      v78 = v86;
      *&v79[-24] = v83;
      *&v79[-16] = v78;
      (*(v76 + 32))(sub_1CF356260, v71);
      sub_1CF353998(v77, v74, v62);
      sub_1CF345C98();
    }
  }
}

uint64_t sub_1CF3480F0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA427E0);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  v12 = *(v11 + 32);
  v13 = swift_checkMetadataState();
  v14 = v12(a1, v13, v11);
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0x2020200A444E4120, 0xEF20202020202020);
  v24 = sub_1CF355B94(a1, a4, a5 & 1, a6, a7 & 1);
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  return 0;
}

uint64_t sub_1CF348294(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v48[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v49 = 0;
  v50 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA42770);
  v48[3] = MEMORY[0x1E69E6530];
  v48[0] = a2;
  v13 = sub_1CEFF8EA0(v48);
  v15 = v14;
  sub_1CEFCCC44(v48, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v15)
  {
    MEMORY[0x1D3868CC0](v13, v15);
    v15, v16, v17, v18, v19, v20, v21, v22;
    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    swift_getAssociatedTypeWitness();
    v23 = *(swift_getAssociatedConformanceWitness() + 8);
    v24 = *(v23 + 32);
    v25 = swift_checkMetadataState();
    v26 = v24(a1, v25, v23);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    MEMORY[0x1D3868CC0](0x2020200A444E4120, 0xED00002020202020);
    v36 = sub_1CF355B94(a1, a5, a6 & 1, a7, a8 & 1);
    v38 = v37;
    MEMORY[0x1D3868CC0](v36);
    v38, v39, v40, v41, v42, v43, v44, v45;
    return v49;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF348514(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v86[0] = 0;
  v86[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v88 = 0;
  v89 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA427B0);
  swift_getAssociatedTypeWitness();
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = *(v15 + 32);
  v17 = swift_checkMetadataState();
  v18 = v16(a1, v17, v15);
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v28 = 0;
  if ((a4 & 1) == 0)
  {
    v28 = sub_1CF9E7088();
  }

  v29 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v31;

  MEMORY[0x1D3868CC0](v30, v32);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  if (a6)
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_1CF9E7088();
  }

  v41 = [a1 bindObjectParameter_];
  swift_unknownObjectRelease();
  v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v44 = v43;

  MEMORY[0x1D3868CC0](v42, v44);
  v44, v45, v46, v47, v48, v49, v50, v51;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020);
  v52 = MEMORY[0x1E69E6530];
  v87 = MEMORY[0x1E69E6530];
  v86[0] = a7;
  v53 = sub_1CEFF8EA0(v86);
  v55 = v54;
  sub_1CEFCCC44(v86, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v55 && (MEMORY[0x1D3868CC0](v53, v55), v55, v56, v57, v58, v59, v60, v61, v62, MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020), v86[0] = 0, v63 = sub_1CF9E7F98(), v65 = v64, MEMORY[0x1D3868CC0](v63), v65, v66, v67, v68, v69, v70, v71, v72, MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEF20202020202020), v87 = v52, v86[0] = a8, v73 = sub_1CEFF8EA0(v86), v75 = v74, sub_1CEFCCC44(v86, &unk_1EC4BEC50, &qword_1CF9FB4B0), v75))
  {
    MEMORY[0x1D3868CC0](v73, v75);
    v75, v76, v77, v78, v79, v80, v81, v82;
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

void sub_1CF3488CC(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v53 = a1;
  v6 = *v4;
  v7 = sub_1CF9E5CF8();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v6[10];
  v10 = v6[11];
  v11 = v6[12];
  v12 = v6[13];
  v54 = v9;
  v55 = v10;
  v48 = v12;
  v49 = v10;
  v56 = v11;
  v57 = v12;
  v13 = type metadata accessor for ConcreteDatabase.MaterializationRequest(255, &v54);
  v14 = sub_1CF9E75D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - v16;
  v18 = v4[2];
  if (v18)
  {
    v19 = v4[3];

    v21 = v18(v20);
    v22 = v18;
    v23 = v21;
    sub_1CEFF7124(v22, v19);
    if (v23)
    {
      v44 = v5;
      v24 = qword_1EDEBBC70;
      swift_beginAccess();
      v25 = *(v23 + v24);
      v43 = v23;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();

      v26 = v53;
      sub_1CF9E6728();
      v25, v27, v28, v29, v30, v31, v32, v33;
      if ((*(*(v13 - 8) + 48))(v17, 1, v13) == 1)
      {
        (*(v15 + 8))(v17, v14);
        v54 = v9;
        v55 = v49;
        v56 = v11;
        v57 = v48;
        type metadata accessor for ConcreteJobResult(0, &v54);
        v34 = sub_1CF056580();
        v36 = v51;
        v35 = v52;
        v37 = v44;
        v38 = v50;
        sub_1CF56512C(v26, v43, v34, v50, v51, *(v52 + 8));
        if (v37)
        {
LABEL_9:

          return;
        }

        v39 = v45;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v41 = v40;
        (*(v46 + 8))(v39, v47);
        v42 = v41 * 1000000000.0;
        if (COERCE__INT64(fabs(v41 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v42 > -9.22337204e18)
        {
          if (v42 < 9.22337204e18)
          {
            sub_1CF521850(v34, v42, v38, v36, v35);
            goto LABEL_9;
          }

          goto LABEL_14;
        }

        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      (*(v15 + 8))(v17, v14);
    }
  }
}

void (*sub_1CF348CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *, void)
{
  v6 = v5;
  v128 = a3;
  v115 = a2;
  v10 = *v5;
  v11 = v10[12];
  v12 = v10[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v107 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v94 - v15;
  v114 = sub_1CF9E6118();
  v113 = *(v114 - 8);
  v16 = MEMORY[0x1EEE9AC00](v114);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v116 = v12;
  v120 = v12;
  v19 = v10[11];
  v121 = v19;
  v122 = a4;
  v108 = v11;
  v123 = v11;
  v20 = v10[13];
  v124 = v20;
  v125 = a5;
  v117 = a1;
  v126 = a1;
  v109 = a5;
  v21 = *(a5 + 8);
  v22 = *(v21 + 24);
  v23 = v128;
  v24 = v118;
  v25 = v22(sub_1CF3569D0, v119, a4, v21, v16);
  if (v24)
  {
    return v23;
  }

  v105 = v20;
  v106 = v19;
  v102 = v22;
  v103 = v21 + 24;
  v104 = v21;
  v99 = v6;
  *&v118 = 0;
  v27 = v25;
  [v27 next];
  v28 = [v27 longAtIndex_];

  if (v28 < 1)
  {
    v23 = 0;
LABEL_7:

    return v23;
  }

  v101 = v27;
  v98 = v28;
  v100 = a4;
  v29 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v30 = v111;
  v31 = *(v111 + 16);
  v32 = v110;
  v33 = AssociatedTypeWitness;
  v31(v110, v117, AssociatedTypeWitness);
  v34 = sub_1CF9E6108();
  v35 = sub_1CF9E7288();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v95 = v36;
    v97 = swift_slowAlloc();
    v127 = v97;
    *v36 = 136446466;
    v96 = v35;
    v37 = v107;
    v31(v107, v32, v33);
    v38 = *(v30 + 8);
    v38(v32, v33);
    v39 = v108;
    swift_getAssociatedConformanceWitness();
    v40 = sub_1CF9E7F98();
    v41 = v33;
    v43 = v42;
    v38(v37, v41);
    v44 = sub_1CEFD0DF0(v40, v43, &v127);
    v43, v45, v46, v47, v48, v49, v50, v51;
    v52 = v95;
    *(v95 + 1) = v44;
    *(v52 + 6) = 2082;
    v53 = v115;
    v54 = sub_1CF7F5068(v115);
    v56 = v55;
    v57 = sub_1CEFD0DF0(v54, v55, &v127);
    v56, v58, v59, v60, v61, v62, v63, v64;
    *(v52 + 14) = v57;
    _os_log_impl(&dword_1CEFC7000, v34, v96, "⏰  unscheduling background download <i:%{public}s reason:%{public}s>", v52, 0x16u);
    v65 = v97;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v65, -1, -1);
    MEMORY[0x1D386CDC0](v52, -1, -1);

    v66 = (*(v113 + 8))(v18, v114);
    v67 = v100;
    v68 = v109;
  }

  else
  {
    (*(v30 + 8))(v32, v33);

    v66 = (*(v113 + 8))(v18, v114);
    v67 = v100;
    v68 = v109;
    v39 = v108;
    v53 = v115;
  }

  v70 = v117;
  v69 = v118;
  v71 = v128;
  if ((v53 & 0xFFFFFFFFFFFFFE3FLL) != 0)
  {
    v72 = v116;
  }

  else
  {
    v77 = MEMORY[0x1EEE9AC00](v66);
    v72 = v116;
    *(&v94 - 8) = v116;
    *(&v94 - 7) = v78;
    *(&v94 - 6) = v67;
    *(&v94 - 5) = v39;
    *(&v94 - 4) = v79;
    *(&v94 - 3) = v68;
    *(&v94 - 2) = v70;
    v23 = v71;
    v80 = v102(sub_1CF35620C, v77);
    if (v69)
    {
      goto LABEL_12;
    }

    v92 = v80;

    v93 = [v92 next];
    if (v93 && ((v66 = [v92 longAtIndex_], v66 == 128) || v66 == 64) && (v66 = objc_msgSend(v92, sel_next), (v66 & 1) == 0))
    {
      sub_1CF3488CC(v70, v71, v67, v68);
      v101 = v92;
    }

    else
    {
      v101 = v92;
    }
  }

  v73 = MEMORY[0x1EEE9AC00](v66);
  *(&v94 - 8) = v72;
  *(&v94 - 7) = v74;
  *(&v94 - 6) = v67;
  *(&v94 - 5) = v39;
  *(&v94 - 4) = v75;
  *(&v94 - 3) = v68;
  *(&v94 - 2) = v76;
  *(&v94 - 1) = v70;
  v23 = v71;
  (*(v68 + 32))(sub_1CF3561D4, v73);
  if (v69)
  {
LABEL_12:

    return v23;
  }

  v81 = (*(v68 + 24))(v67, v68);
  if (v81 < 1)
  {
LABEL_18:
    if (v115 == 16)
    {
      sub_1CF3503BC(v70, v71, v67, v68);
    }

    v87 = MEMORY[0x1EEE9AC00](v81);
    v88 = v106;
    *(&v94 - 8) = v72;
    *(&v94 - 7) = v88;
    *(&v94 - 6) = v67;
    *(&v94 - 5) = v39;
    *(&v94 - 4) = v89;
    *(&v94 - 3) = v68;
    *(&v94 - 2) = v70;
    v91 = v90(sub_1CF356208, v87);
    *&v118 = 0;
    v27 = v91;

    [v27 next];
    [v27 longAtIndex_];

    v23 = v98;
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v81);
  *&v82 = v72;
  *(&v82 + 1) = v106;
  v118 = v82;
  *&v83 = v39;
  *(&v83 + 1) = v105;
  v116 = v83;
  *(&v94 - 2) = v82;
  *(&v94 - 1) = v83;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v85 = v116;
  *(&v94 - 2) = v118;
  *(&v94 - 1) = v85;
  swift_getKeyPath();
  result = sub_1CF9E6288();
  if (!__OFADD__(*v86, 1))
  {
    ++*v86;
    result(&v127, 0);

    v67 = v100;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF34973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA42200);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA40340);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  return 0;
}

uint64_t sub_1CF3498B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v34 = 0;
  v35 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA42730);
  v33[3] = MEMORY[0x1E69E6530];
  v33[0] = a2;
  v9 = sub_1CEFF8EA0(v33);
  v11 = v10;
  sub_1CEFCCC44(v33, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v11)
  {
    MEMORY[0x1D3868CC0](v9, v11);
    v11, v12, v13, v14, v15, v16, v17, v18;
    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    swift_getAssociatedTypeWitness();
    v19 = *(swift_getAssociatedConformanceWitness() + 8);
    v20 = *(v19 + 32);
    v21 = swift_checkMetadataState();
    v22 = v20(a1, v21, v19);
    v24 = v23;
    MEMORY[0x1D3868CC0](v22);
    v24, v25, v26, v27, v28, v29, v30, v31;
    return v34;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF349AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA426F0);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

void sub_1CF349BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6[2];
  if (v7)
  {
    v13 = *v6;
    v30[1] = a2;
    v14 = v6[3];

    v16 = v7(v15);
    sub_1CEFF7124(v7, v14);
    if (v16)
    {
      v17 = sub_1CF5DA5A8(8u);
      v18 = *(v17 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        v30[0] = v30;
        *(v17 + 16) = v20;
        MEMORY[0x1EEE9AC00](v17);
        v21 = *(v13 + 96);
        v23[1] = *(v13 + 80);
        v24 = a5;
        v25 = v21;
        v26 = a6;
        v27 = a1;
        v28 = a3;
        v29 = a4;
        v22 = *(a6 + 32);

        v22(sub_1CF356174, v23, a5, a6);
      }
    }
  }
}

uint64_t sub_1CF349D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA425D0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v21 = *(v20 + 32);
  v22 = swift_checkMetadataState();
  v23 = v21(a1, v22, v20);
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0x20444E4120, 0xE500000000000000);
  v33 = a3(a1);
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  return 0;
}

uint64_t sub_1CF349EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD0000000000000A7, 0x80000001CFA41CD0);
  v9 = sub_1CF9E7F98();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA41D80);
  v19 = sub_1CF9E7F98();
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA41FB0);
  v29 = sub_1CF9E7F98();
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA41FE0);
  MEMORY[0x1D3868CC0](a4, a5);
  return 0;
}

uint64_t sub_1CF34A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x5443454C45532020, 0xE900000000000020);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD0000000000000E8, 0x80000001CFA41E10);
  v9 = sub_1CF9E7F98();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA41F00);
  v19 = sub_1CF9E7F98();
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA41F20);
  v29 = sub_1CF9E7F98();
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA41F40);
  v39 = sub_1CF9E7F98();
  v41 = v40;
  MEMORY[0x1D3868CC0](v39);
  v41, v42, v43, v44, v45, v46, v47, v48;
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA41F70);
  MEMORY[0x1D3868CC0](a4, a5);
  return 0;
}

uint64_t sub_1CF34A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](0xD0000000000000A7, 0x80000001CFA41CD0);
  v9 = sub_1CF9E7F98();
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA41D80);
  v19 = sub_1CF9E7F98();
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA41DA0);
  v29 = sub_1CF9E7F98();
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA41DE0);
  MEMORY[0x1D3868CC0](a4, a5);
  return 0;
}

void *sub_1CF34A458(uint64_t a1)
{
  if (qword_1EDEAD4D8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  MEMORY[0x1EEE9AC00](a1);
  v10[2] = v2;
  v10[3] = v3;
  v10[4] = v1;
  v10[5] = v4;
  v5 = sub_1CF0674E8(sub_1CF356124, v10);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void sub_1CF34A548(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = sub_1CF9E6118();
  v132 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = qword_1EDEBBB18;
  if (*(a1 + qword_1EDEBBB18))
  {

    sub_1CF3625E4(1uLL);
  }

  if (fpfs_supports_bgst_improvements() && *(a1 + qword_1EDEBBAE0) != 2)
  {
    goto LABEL_48;
  }

  v126 = a5;
  v127 = v5;
  v14 = a1[2];
  v125 = v11;
  if (!v14)
  {
    v130 = 0;
    v131 = 0xE000000000000000;
    goto LABEL_35;
  }

  v15 = a1[3];

  v17 = v14(v16);
  sub_1CEFF7124(v14, v15);
  if (!v17)
  {
LABEL_17:
    v28 = a1[2];
    v130 = 0;
    v131 = 0xE000000000000000;
    if (v28)
    {
      v29 = a1[3];

      v31 = v28(v30);
      sub_1CEFF7124(v28, v29);
      if (v31)
      {
        v128 = 0;
        v129 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA426B0);

        v32 = sub_1CF04590C();
        v33 = (v32 & 1) == 0;
        if (v32)
        {
          v34 = 1702195828;
        }

        else
        {
          v34 = 0x65736C6166;
        }

        if (v33)
        {
          v35 = 0xE500000000000000;
        }

        else
        {
          v35 = 0xE400000000000000;
        }

        MEMORY[0x1D3868CC0](v34, v35);
        v35, v36, v37, v38, v39, v40, v41, v42;
        MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA426D0);
        v43 = sub_1CF058C1C();
        v44 = (v43 & 1) == 0;
        if (v43)
        {
          v45 = 0xD000000000000019;
        }

        else
        {
          v45 = 0x676E696E6E7572;
        }

        if (v44)
        {
          v46 = 0xE700000000000000;
        }

        else
        {
          v46 = 0x80000001CFA40CB0;
        }

        MEMORY[0x1D3868CC0](v45, v46);
        v46, v47, v48, v49, v50, v51, v52, v53;
        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        v54 = v129;
        MEMORY[0x1D3868CC0](v128, v129);
        v54, v55, v56, v57, v58, v59, v60, v61;
        LOBYTE(v54) = sub_1CF04590C();

        if ((v54 & 1) != 0 && *(a1 + v124))
        {

          sub_1CF3625E4(2uLL);
        }

        goto LABEL_36;
      }
    }

LABEL_35:
    MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA42670);
LABEL_36:
    v128 = 0;
    v129 = 0xE000000000000000;
    sub_1CF9E7948();
    v129, v62, v63, v64, v65, v66, v67, v68;
    v69 = qword_1EDEBBAF0;
    v70 = *(a1 + qword_1EDEBBAF0);
    v128 = 0xD000000000000018;
    v129 = 0x80000001CFA42690;
    if (v70)
    {
      v71 = 1702195828;
    }

    else
    {
      v71 = 0x65736C6166;
    }

    if (v70)
    {
      v72 = 0xE400000000000000;
    }

    else
    {
      v72 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v71, v72);
    v72, v73, v74, v75, v76, v77, v78, v79;
    v80 = v129;
    MEMORY[0x1D3868CC0](v128, v129);
    v80, v81, v82, v83, v84, v85, v86, v87;
    v88 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v90 = v130;
    v89 = v131;

    v91 = sub_1CF9E6108();
    v92 = sub_1CF9E7288();
    v89, v93, v94, v95, v96, v97, v98, v99;
    if (os_log_type_enabled(v91, v92))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v128 = v101;
      *v100 = 136446210;
      v102 = sub_1CEFD0DF0(v90, v89, &v128);
      v89, v103, v104, v105, v106, v107, v108, v109;
      *(v100 + 4) = v102;
      _os_log_impl(&dword_1CEFC7000, v91, v92, "🔮 Background downloader not running: %{public}s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x1D386CDC0](v101, -1, -1);
      MEMORY[0x1D386CDC0](v100, -1, -1);
    }

    else
    {

      v89, v110, v111, v112, v113, v114, v115, v116;
    }

    (*(v132 + 8))(v13, v125);
    a5 = v126;
    if ((*(a1 + v69) & 1) == 0 && *(a1 + v124))
    {

      sub_1CF3625E4(4uLL);
    }

LABEL_48:
    *a5 = 0;
    return;
  }

  if ((sub_1CF04590C() & 1) != 0 || *(a1 + qword_1EDEBBAF0) != 1)
  {

    goto LABEL_16;
  }

  v18 = sub_1CF058C1C();

  if (v18)
  {
LABEL_16:

    goto LABEL_17;
  }

  v19 = sub_1CF5DA5A8(8u);
  v21 = *(v19 + 16);
  v20 = *(v19 + 24);
  v22 = __OFSUB__(v20, v21);
  v23 = v20 - v21;
  if (v22)
  {
LABEL_61:
    __break(1u);
    return;
  }

  if (v23 < 1)
  {

    *v126 = 0;
    return;
  }

  v24 = v19;
  v25 = *(a4 + 8);
  v132 = *(v25 + 24);

  v26 = v127;
  v27 = (v132)(sub_1CF34AC54, 0, a3, v25);
  if (v26)
  {

    return;
  }

  v117 = v27;
  v130 = 0;
  if ([v27 next])
  {
    while (1)
    {
      v119 = *(v24 + 16);
      v118 = *(v24 + 24);
      v22 = __OFSUB__(v118, v119);
      v120 = v118 - v119;
      if (v22)
      {
        break;
      }

      if (v120 >= 1)
      {
        v121 = objc_autoreleasePoolPush();
        sub_1CF34AD70(v117, v17, a2, a1, &v130, a3, a4, &v128);
        objc_autoreleasePoolPop(v121);
        if ([v117 next])
        {
          continue;
        }
      }

      v122 = v130;
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_61;
  }

  v122 = 0;
LABEL_56:
  v123 = sub_1CF3521C0(v122, a2, a3, a4);
  if (fpfs_supports_bgst_improvements())
  {
    if (v123)
    {
      *(a1 + qword_1EDEBBAE0) = 3;
    }
  }

  *v126 = v123;
}

uint64_t sub_1CF34AC54()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005ELL, 0x80000001CFA42090);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA420F0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA42110);
  return 0;
}

void sub_1CF34AD70(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void (*a6)(void, void), uint64_t a7, uint64_t a8)
{
  *&v173 = a8;
  v167 = a7;
  v169 = a6;
  v147 = a5;
  v158 = a4;
  v170 = a3;
  *&v171 = a1;
  v9 = *a2;
  v152 = sub_1CF9E6118();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v155 = &v136[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = sub_1CF9E5CF8();
  v157 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v136[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v146 = sub_1CF9E6448();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v136[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v9[330];
  v160 = v9[332];
  v159 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v143 = sub_1CF9E75D8();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v153 = &v136[-v15];
  v150 = AssociatedTypeWitness;
  v149 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v148 = &v136[-v17];
  v18 = v9[329];
  v168 = a2;
  v19 = v9[331];
  v21 = type metadata accessor for SnapshotItem(255, v18, v19, v20);
  v22 = sub_1CF9E75D8();
  v165 = *(v22 - 1);
  v166 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v164 = &v136[-v23];
  v162 = v21;
  v161 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v136[-v25];
  v27 = swift_getAssociatedTypeWitness();
  v163 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v136[-v28];
  v30 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v31 = v171;
  v32 = v172;
  v30();
  v33 = v173;
  if (v32)
  {
    goto LABEL_17;
  }

  v34 = v164;
  v172 = 0;
  v36 = v165;
  v35 = v166;
  v139 = v18;
  v140 = v19;
  v138 = v26;
  *&v171 = v29;
  v141 = v27;
  v137 = [v31 intAtIndex_];
  if ([v31 isNullAtIndex_])
  {
    v37 = -1;
  }

  else
  {
    v37 = [v31 longAtIndex_];
  }

  v38 = v35;
  v39 = v34;
  v40 = v36;
  if ([v31 isNullAtIndex_])
  {
    v41 = -1;
  }

  else
  {
    v41 = [v31 longAtIndex_];
  }

  v42 = v171;
  v43 = v172;
  v44 = v167;
  v45 = *(v167 + 8);
  (*(*v168[4] + 240))(v171, 1, v170, v169, v45);
  v172 = v43;
  if (v43)
  {
LABEL_16:
    (*(v163 + 8))(v42, v141);
    v32 = v172;
    v33 = v173;
LABEL_17:
    *v33 = v32;
    return;
  }

  v166 = v41;
  v46 = v37;
  v47 = v161;
  v48 = v162;
  if ((*(v161 + 48))(v39, 1, v162) == 1)
  {
    v49 = (*(v40 + 8))(v39, v38);
LABEL_15:
    v58 = v160;
    v59 = MEMORY[0x1EEE9AC00](v49);
    v60 = v139;
    v61 = v159;
    *&v136[-64] = v139;
    *&v136[-56] = v61;
    v62 = v140;
    *&v136[-48] = v169;
    *&v136[-40] = v62;
    *&v136[-32] = v58;
    *&v136[-24] = v44;
    *&v135 = v42;
    v63 = v172;
    v64 = (*(v44 + 32))(sub_1CF356144, v59);
    v172 = v63;
    if (v63)
    {
      goto LABEL_16;
    }

    MEMORY[0x1EEE9AC00](v64);
    *&v65 = v60;
    *(&v65 + 1) = v61;
    v173 = v65;
    *&v66 = v62;
    *(&v66 + 1) = v58;
    v171 = v66;
    *&v136[-32] = v65;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v68 = v171;
    *&v136[-32] = v173;
    v135 = v68;
    swift_getKeyPath();
    v69 = sub_1CF9E6288();
    if (!__OFADD__(*v70, 1))
    {
      ++*v70;
      v69(&v177, 0);

      v71 = v141;
      v72 = v163;
LABEL_20:
      (*(v72 + 8))(v42, v71);
      return;
    }

    __break(1u);
    goto LABEL_91;
  }

  v165 = v45;
  v50 = v138;
  (*(v47 + 32))(v138, v39, v48);
  WitnessTable = swift_getWitnessTable();
  v52 = sub_1CF937C7C(v48, WitnessTable);
  if ((v52 & 1) == 0)
  {
    v49 = (*(v47 + 8))(v50, v48);
    goto LABEL_15;
  }

  MEMORY[0x1EEE9AC00](v52);
  v54 = v169;
  v53 = v170;
  *&v136[-48] = v169;
  *&v136[-40] = v44;
  v55 = v166;
  *&v136[-32] = v46;
  *&v136[-24] = v55;
  *&v135 = v158;
  v56 = v172;
  sub_1CF349BB8(v42, v53, sub_1CF35615C, &v136[-64], v54, v44);
  v57 = v165;
  if (v56)
  {
    v172 = v56;
    (*(v161 + 8))(v138, v162);
    goto LABEL_16;
  }

  v164 = v137;
  if (v46 < 0)
  {
    v76 = v169;
    v77 = v170;
    v78 = v154;
    v79 = v160;
    v80 = v159;
    v81 = v139;
    goto LABEL_30;
  }

  v73 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  v74 = [objc_opt_self() requestForSelf];
  [v74 setRequestedExtent_];
  v75 = v153;
  (*(*v168[2] + 160))(v42, v170, v169, v57);
  v172 = 0;
  v166 = v73;
  v82 = v149;
  v83 = v150;
  if ((*(v149 + 48))(v75, 1, v150) == 1)
  {
    (*(v142 + 8))(v75, v143);
    type metadata accessor for NSFileProviderError(0);
    v174 = -1005;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF355F5C(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v84 = v177;
    swift_willThrow();

LABEL_26:
    v85 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v86 = v84;
    v87 = sub_1CF9E6108();
    v88 = sub_1CF9E72A8();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      swift_getErrorValue();
      v91 = Error.prettyDescription.getter(v175, v176);
      *(v89 + 4) = v91;
      *v90 = v91;
      _os_log_impl(&dword_1CEFC7000, v87, v88, "⏰ BRM Materialization failed with %@, falling back to full materialization", v89, 0xCu);
      sub_1CEFCCC44(v90, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v90, -1, -1);
      v92 = v89;
      v42 = v171;
      MEMORY[0x1D386CDC0](v92, -1, -1);
    }

    else
    {
    }

    v76 = v169;
    v77 = v170;
    v78 = v154;
    (*(v151 + 8))(v155, v152);
    v80 = v159;
    v81 = v139;
    v79 = v160;
LABEL_30:
    *&v93 = v81;
    *(&v93 + 1) = v80;
    *&v94 = v140;
    *(&v94 + 1) = v79;
    v178 = v94;
    v177 = v93;
    type metadata accessor for ConcreteJobResult(0, &v177);
    v95 = sub_1CF056580();
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v97 = v96;
    v98 = *(v157 + 8);
    v157 += 8;
    v98(v78, v156);
    v99 = v97 * 1000000000.0;
    if (COERCE__INT64(fabs(v97 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if (v99 <= -9.22337204e18)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v99 >= 9.22337204e18)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if ((v164 & 0x2C) != 0)
    {
      v100 = 0x1000000;
LABEL_52:
      sub_1CF5666D4(v42, 0, v99, v100, v168, 0, v95, v77, v76, v165);
      v172 = 0;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v122 = v121;
      v98(v78, v156);
      v123 = v122 * 1000000000.0;
      if (COERCE__INT64(fabs(v122 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      if (v123 <= -9.22337204e18)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v124 = v138;
      v125 = v172;
      if (v123 >= 9.22337204e18)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      sub_1CF521850(v95, v123, v77, v76, v167);
      v172 = v125;
      if (v125)
      {
        (*(v161 + 8))(v124, v162);

        goto LABEL_16;
      }

      (*(v161 + 8))(v124, v162);

      v71 = v141;
      v72 = v163;
LABEL_60:
      if (!__OFADD__(*v147, 1))
      {
        ++*v147;
        goto LABEL_20;
      }

      goto LABEL_97;
    }

    if ((v164 & 0x10) != 0)
    {
      if ((v164 & 0x80) != 0)
      {
        v100 = 0x200401000000;
      }

      else
      {
        if ((v164 & 0x140) == 0)
        {
          v100 = 0x401000000;
          if ((v164 & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        v100 = 0x4401000000;
      }
    }

    else if ((v164 & 0x80) != 0)
    {
      v100 = 0x200001000000;
    }

    else
    {
      if ((v164 & 0x140) == 0)
      {
        v100 = 0x1000000;
        if ((v164 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      v100 = 0x4001000000;
    }

    if ((v164 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_51:
    v100 |= 0x10000000000uLL;
    goto LABEL_52;
  }

  v101 = v148;
  (*(v82 + 32))(v148, v75, v83);
  sub_1CEFD57E0(255, &qword_1EDEA3730, off_1E83BC670);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v103 = swift_allocBox();
  v105 = v104;
  v106 = *(TupleTypeMetadata2 + 48);
  v107 = v83;
  (*(v82 + 16))(v104, v101, v83);
  *(v105 + v106) = v74;
  v158 = v74;
  v108 = v144;
  sub_1CF9E63E8();
  v109 = v166;
  v110 = sub_1CF599234(v42, v103 | 0x2000000000000004, 0, v166, v108, v170, nullsub_1, 0, v169, v165);
  (*(v145 + 8))(v108, v146);
  if ((v110 - 1) > 1u)
  {
    (*(v82 + 8))(v148, v107);
    v71 = v141;
    v72 = v163;
LABEL_59:

    (*(v161 + 8))(v138, v162);
    goto LABEL_60;
  }

  v146 = v103;
  *&v111 = v139;
  *(&v111 + 1) = v159;
  *&v112 = v140;
  *(&v112 + 1) = v160;
  v178 = v112;
  v177 = v111;
  type metadata accessor for ConcreteJobResult(0, &v177);
  v113 = sub_1CF056580();
  v153 = sub_1CF056580();
  v114 = v154;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v116 = v115;
  v145 = *(v157 + 8);
  (v145)(v114, v156);
  v117 = v116 * 1000000000.0;
  if (COERCE__INT64(fabs(v116 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v118 = v168;
  if (v117 <= -9.22337204e18)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v117 >= 9.22337204e18)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v119 = v117;
  if ((v164 & 0x2C) != 0)
  {
    v120 = 0x1000000;
    goto LABEL_77;
  }

  if ((v164 & 0x10) != 0)
  {
    if ((v164 & 0x80) != 0)
    {
      v120 = 0x200401000000;
    }

    else
    {
      if ((v164 & 0x140) == 0)
      {
        v120 = 0x401000000;
        if ((v164 & 1) == 0)
        {
          goto LABEL_77;
        }

LABEL_76:
        v120 |= 0x10000000000uLL;
        goto LABEL_77;
      }

      v120 = 0x4401000000;
    }

LABEL_75:
    if ((v164 & 1) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  if ((v164 & 0x80) != 0)
  {
    v120 = 0x200001000000;
    goto LABEL_75;
  }

  if ((v164 & 0x140) != 0)
  {
    v120 = 0x4001000000;
    goto LABEL_75;
  }

  v120 = 0x1000000;
  if (v164)
  {
    goto LABEL_76;
  }

LABEL_77:

  v126 = v119;
  v127 = v172;
  sub_1CF5666D4(v42, 0, v126, v120, v118, v113, v153, v170, v169, v165);
  if (v127)
  {

    (*(v149 + 8))(v148, v150);
    v84 = v127;
    goto LABEL_26;
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v129 = v128;
  v130 = v156;
  (v145)(v114, v156);
  v131 = v129 * 1000000000.0;
  if (COERCE__INT64(fabs(v129 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v131 <= -9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v131 >= 9.22337204e18)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_1CF521850(v113, v131, v170, v169, v167);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v133 = v132;
  (v145)(v114, v130);
  v134 = v133 * 1000000000.0;
  if (COERCE__INT64(fabs(v133 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v134 <= -9.22337204e18)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v134 < 9.22337204e18)
  {
    sub_1CF521850(v153, v134, v170, v169, v167);
    v172 = 0;
    (*(v149 + 8))(v148, v150);

    v71 = v141;
    v72 = v163;
    v42 = v171;
    v109 = v166;
    goto LABEL_59;
  }

LABEL_106:
  __break(1u);
}

uint64_t sub_1CF34C44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA42630);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

void sub_1CF34C564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v209 = a4;
  v210 = a5;
  v211 = a3;
  v198 = a2;
  v208 = a1;
  v6 = *v5;
  v202 = sub_1CF9E6118();
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v199 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v195 = &v181 - v9;
  v10 = v6[13];
  v11 = v6[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v212 = v5;
  v13 = v6[12];
  v14 = v6[10];
  v15 = swift_getAssociatedTypeWitness();
  v16 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  *&v214 = AssociatedTypeWitness;
  *(&v214 + 1) = v15;
  v196 = v15;
  *&v215 = AssociatedConformanceWitness;
  *(&v215 + 1) = v18;
  v187 = type metadata accessor for ThrottlingKey(255, &v214);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v186 = (&v181 - v19);
  v193 = sub_1CF9E75D8();
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v189 = &v181 - v20;
  v191 = AssociatedTypeWitness;
  v194 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v21);
  v190 = &v181 - v22;
  v206 = v14;
  *&v214 = v14;
  *(&v214 + 1) = v11;
  v204 = v11;
  v207 = v13;
  *&v215 = v13;
  *(&v215 + 1) = v16;
  v205 = v16;
  v23 = type metadata accessor for ItemReconciliation(255, &v214);
  v24 = sub_1CF9E75D8();
  v197 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v181 - v25;
  v203 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v200 = &v181 - v28;
  v29 = sub_1CF9E64A8();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v212[2];
  if (v33)
  {
    v185 = v24;
    v184 = v18;
    v34 = v212[3];

    v36 = v33(v35);
    sub_1CEFF7124(v33, v34);
    if (v36)
    {
      v37 = sub_1CF042F4C();
      *v32 = v37;
      (*(v30 + 104))(v32, *MEMORY[0x1E69E8020], v29);
      v38 = v37;
      LOBYTE(v37) = sub_1CF9E64D8();
      (*(v30 + 8))(v32, v29);
      if ((v37 & 1) == 0)
      {
        __break(1u);
        goto LABEL_80;
      }

      v39 = sub_1CF5DA5A8(8u);
      v40 = v39;
      v41 = v208;
      v42 = *(v208 + 136);
      v43 = v218;
      v44 = v209;
      if ((v42 & 0x1000000) != 0)
      {
        v45 = v39[2];
        v46 = __OFSUB__(v45, 1);
        v47 = v45 - 1;
        if (v46)
        {
          __break(1u);
        }

        else
        {
          v39[2] = v47;
          v48 = v39[3];
          if (v48 == v39[4])
          {
            goto LABEL_9;
          }

          v46 = __OFSUB__(v48, 1);
          v49 = v48 - 1;
          if (!v46)
          {
            v39[3] = v49;
            goto LABEL_9;
          }
        }

        __break(1u);
        goto LABEL_84;
      }

LABEL_9:
      v50 = *(v41 + 112);
      if (v50 == 3)
      {
LABEL_13:
        v181 = v23;
        v53 = v41;
        v54 = v44;
        v55 = *(*v41 + 576);
        v56 = *(v210 + 8);

        sub_1CF68DDB0(v53 + v55, v211, v54, v56, v26);
        v218 = v43;
        if (v43)
        {

          return;
        }

        v182 = v36;
        v81 = v54;
        v183 = v40;

        v82 = v203;
        v83 = v181;
        if ((*(v203 + 48))(v26, 1, v181) == 1)
        {

          v84 = (*(v197 + 8))(v26, v185);
          v85 = 1;
          v18 = v210;
          v44 = v81;
LABEL_24:
          v86 = MEMORY[0x1EEE9AC00](v84);
          *(&v181 - 6) = v44;
          *(&v181 - 5) = v18;
          *(&v181 - 32) = v87;
          v88 = v208;
          *(&v181 - 3) = v198;
          *(&v181 - 2) = v88;
          v89 = v218;
          (*(v18 + 32))(sub_1CF356114, v86);
          if (v89)
          {
            goto LABEL_18;
          }

          if ((*(v18 + 24))(v44, v18) < 1)
          {
            goto LABEL_59;
          }

          LODWORD(v218) = v85;
          v110 = fpfs_current_or_default_log();
          v111 = v195;
          sub_1CF9E6128();

          v112 = sub_1CF9E6108();
          v113 = sub_1CF9E7288();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            *&v214 = v115;
            *v114 = 136315138;
            v116 = sub_1CF9E7F98();
            v118 = v117;

            v119 = sub_1CEFD0DF0(v116, v118, &v214);
            v118, v120, v121, v122, v123, v124, v125, v126;
            *(v114 + 4) = v119;
            _os_log_impl(&dword_1CEFC7000, v112, v113, "⏰  throttling background download <i:%s>", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v115);
            MEMORY[0x1D386CDC0](v115, -1, -1);
            MEMORY[0x1D386CDC0](v114, -1, -1);

            v127 = (*(v201 + 8))(v195, v202);
          }

          else
          {

            v127 = (*(v201 + 8))(v111, v202);
          }

          if (v218)
          {
            sub_1CF345C98();
LABEL_59:

LABEL_62:

            return;
          }

          MEMORY[0x1EEE9AC00](v127);
          v132 = v206;
          v133 = v204;
          *(&v181 - 4) = v206;
          *(&v181 - 3) = v133;
          v134 = v207;
          v135 = v205;
          *(&v181 - 2) = v207;
          *(&v181 - 1) = v135;
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v181 - 4) = v132;
          *(&v181 - 3) = v133;
          *(&v181 - 2) = v134;
          *(&v181 - 1) = v135;
          v137 = swift_getKeyPath();
          v138 = sub_1CF9E6288();
          if (!__OFADD__(*v139, 1))
          {
            ++*v139;
            v138(&v214, 0);

            v183 = v137;
            goto LABEL_62;
          }

LABEL_87:
          __break(1u);
          return;
        }

        v90 = v200;
        (*(v82 + 32))(v200, v26, v83);
        v58 = v211;
        v44 = v54;
        v91 = v218;
        v92 = sub_1CF35441C(v90, v182, v211, v54, v56);
        if (v91)
        {

          (*(v82 + 8))(v90, v83);
          return;
        }

        v218 = 0;
        if (v92)
        {
          v18 = v210;
          v128 = v182;
          v129 = v181;
          if ((*(v208 + 140) & 0x40) == 0)
          {

            v84 = (*(v82 + 8))(v200, v129);
LABEL_65:
            v85 = 0;
            goto LABEL_24;
          }

          v199 = v56;
          v140 = v189;
          (*(v192 + 16))(v189, &v200[*(v181 + 52)], v193);
          v141 = v191;
          if ((*(v194 + 48))(v140, 1) == 1)
          {

            (*(v82 + 8))(v200, v129);
            v84 = (*(v192 + 8))(v140, v193);
            goto LABEL_65;
          }

          v148 = v190;
          (*(v194 + 32))();
          v149 = v128[3];

          v150 = v218;
          v151 = (*(*v149 + 376))(v148, 23, 0, 1, v58, v44, v199);
          v218 = v150;
          if (v150)
          {

            (*(v194 + 8))(v190, v141);
            (*(v203 + 8))(v200, v181);
            return;
          }

          v152 = v151;

          v153 = v152;
          *&v214 = v152;
          v154 = TupleTypeMetadata2;
          sub_1CF9E6E58();
          swift_getWitnessTable();
          if (sub_1CF9E7128())
          {
            v153, v155, v156, v157, v158, v159, v160, v161;
            (*(v194 + 8))(v190, v191);
            v84 = (*(v203 + 8))(v200, v181);
LABEL_81:
            v85 = 0;
            v44 = v209;
            goto LABEL_24;
          }

          v33 = v186;
          sub_1CF9E6EA8();
          v153, v162, v163, v164, v165, v166, v167, v168;
          v169 = v33 + *(v154 + 48);
          v170 = *(v169 + 5);
          v171 = *(v169 + 8);
          v172 = v170;

          v171, v173, v174, v175, v176, v177, v178, v179;
          if (v170)
          {
            (*(*(v187 - 8) + 8))(v33);
            v44 = v209;
            v180 = v181;
            if (*(v212 + qword_1EDEBBB18))
            {

              sub_1CF362660(v170);
            }

            (*(v194 + 8))(v190, v191);
            v84 = (*(v203 + 8))(v200, v180);
            goto LABEL_65;
          }

LABEL_80:
          (*(v194 + 8))(v190, v191);
          (*(v203 + 8))(v200, v181);
          v84 = (*(*(v187 - 8) + 8))(v33, v187);
          goto LABEL_81;
        }

        v36 = v182;

        v131 = *(v208 + 136);
        v18 = v210;
        if (v131 & 0x10000000000) == 0 && (v200[*(v181 + 80)] & 2) != 0 || (v131 & 0x400000000) != 0 && (v200[*(v181 + 80)])
        {
          v57 = (*(v82 + 8))(v200);
        }

        else
        {
          if ((v131 & 0x200000000000) == 0)
          {
            v84 = (*(v82 + 8))(v200, v181);
LABEL_72:
            v85 = 1;
            goto LABEL_24;
          }

          v142 = v181;
          v143 = type metadata accessor for ItemReconciliationHalf(0, v206, v207, v130);
          v144 = v200;
          v145 = &v200[*(v143 + 68)];
          v146 = *(v145 + 1);
          v214 = *v145;
          v215 = v146;
          v147 = *(v145 + 3);
          v216 = *(v145 + 2);
          v217 = v147;
          sub_1CEFCCBDC(&v214, v213, &unk_1EC4BF260, &unk_1CFA01B60);
          v57 = (*(v82 + 8))(v144, v142);
          if (*(&v215 + 1) >> 60 != 11)
          {
            v84 = sub_1CEFCCC44(&v214, &unk_1EC4BF260, &unk_1CFA01B60);
            goto LABEL_72;
          }
        }

        v43 = v218;
        v40 = v183;
        v41 = v208;
        goto LABEL_17;
      }

      if (v50 == 4)
      {
        v51 = *(v41 + 96);
        v52 = *(v41 + 104);
        if (!(v51 ^ 1 | v52))
        {
          if ((v42 & 0x4000000000) != 0)
          {
            v58 = v211;
            v18 = v210;
            if (*(v212 + qword_1EDEBBB18))
            {

              sub_1CF35AA68(1);

              v44 = v209;
            }

            else
            {
            }
          }

          else
          {

            v18 = v210;
            v58 = v211;
          }

          if ((*(v41 + 141) & 0x20) != 0 && *(v212 + qword_1EDEBBB18))
          {

            sub_1CF35AA68(2);
          }

          goto LABEL_17;
        }

        if (!(v51 | v52))
        {
          goto LABEL_13;
        }
      }

      v18 = v210;
      v58 = v211;
LABEL_17:
      v59 = MEMORY[0x1EEE9AC00](v57);
      *(&v181 - 4) = v44;
      *(&v181 - 3) = v18;
      *(&v181 - 2) = v41;
      (*(v18 + 32))(sub_1CF356108, v59);
      if (v43)
      {
LABEL_18:

        return;
      }

      v60 = (*(v18 + 24))(v44, v18);
      v183 = v40;
      if (v60 >= 1)
      {
        v61 = fpfs_current_or_default_log();
        v62 = v199;
        sub_1CF9E6128();

        v63 = sub_1CF9E6108();
        v64 = sub_1CF9E7288();
        v65 = os_log_type_enabled(v63, v64);
        v182 = v36;
        if (v65)
        {
          v66 = swift_slowAlloc();
          v67 = v62;
          v68 = swift_slowAlloc();
          *&v214 = v68;
          *v66 = 136315138;
          v69 = sub_1CF9E7F98();
          v71 = v70;

          v72 = sub_1CEFD0DF0(v69, v71, &v214);
          v71, v73, v74, v75, v76, v77, v78, v79;
          *(v66 + 4) = v72;
          _os_log_impl(&dword_1CEFC7000, v63, v64, "⏰  finished background download <i:%s>", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v68);
          MEMORY[0x1D386CDC0](v68, -1, -1);
          MEMORY[0x1D386CDC0](v66, -1, -1);

          v80 = (*(v201 + 8))(v67, v202);
        }

        else
        {

          v80 = (*(v201 + 8))(v62, v202);
        }

        MEMORY[0x1EEE9AC00](v80);
        v93 = v206;
        v94 = v204;
        *(&v181 - 4) = v206;
        *(&v181 - 3) = v94;
        v95 = v207;
        v96 = v205;
        *(&v181 - 2) = v207;
        *(&v181 - 1) = v96;
        v97 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v97);
        *(&v181 - 4) = v93;
        *(&v181 - 3) = v94;
        *(&v181 - 2) = v95;
        *(&v181 - 1) = v96;
        swift_getKeyPath();
        v98 = sub_1CF9E6288();
        if (__OFADD__(*v99, 1))
        {
          goto LABEL_85;
        }

        ++*v99;
        v98(&v214, 0);

        v44 = v209;
        v18 = v210;
        v58 = v211;
        v40 = v183;
      }

      v101 = v40[2];
      v100 = v40[3];
      v46 = __OFSUB__(v100, v101);
      v102 = v100 - v101;
      if (!v46)
      {
        if (v102 < 1)
        {
LABEL_37:
          sub_1CF353B48(v58, v44, *(v18 + 8));

          return;
        }

        MEMORY[0x1EEE9AC00](v60);
        v103 = v206;
        v104 = v204;
        *(&v181 - 4) = v206;
        *(&v181 - 3) = v104;
        v105 = v207;
        v106 = v205;
        *(&v181 - 2) = v207;
        *(&v181 - 1) = v106;
        v107 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v107);
        *(&v181 - 4) = v103;
        *(&v181 - 3) = v104;
        *(&v181 - 2) = v105;
        *(&v181 - 1) = v106;
        swift_getKeyPath();
        v108 = sub_1CF9E6288();
        if (!__OFADD__(*v109, 1))
        {
          ++*v109;
          v108(&v214, 0);

          v44 = v209;
          v18 = v210;
          v58 = v211;
          goto LABEL_37;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }
  }
}

uint64_t sub_1CF34DBF4(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t *a4)
{
  v42[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v44 = 0;
  v45 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA425D0);
  v7 = MEMORY[0x1E69E6530];
  v43 = MEMORY[0x1E69E6530];
  v42[0] = a2;
  v8 = sub_1CEFF8EA0(v42);
  v10 = v9;
  sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v10 && (MEMORY[0x1D3868CC0](v8, v10), v10, v11, v12, v13, v14, v15, v16, v17, MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA42600), v43 = v7, v42[0] = a3, v18 = sub_1CEFF8EA0(v42), v20 = v19, sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0), v20))
  {
    MEMORY[0x1D3868CC0](v18, v20);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
    swift_getAssociatedTypeWitness();
    v28 = *(swift_getAssociatedConformanceWitness() + 8);
    v29 = *(v28 + 32);
    v30 = swift_checkMetadataState();
    v31 = v29(a1, v30, v28);
    v33 = v32;
    MEMORY[0x1D3868CC0](v31);
    v33, v34, v35, v36, v37, v38, v39, v40;
    return v44;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF34DE98(uint64_t a1, uint64_t *a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA42630);
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 8);
  v4 = *(v3 + 32);
  v5 = swift_checkMetadataState();
  v6 = v4(a1, v5, v3);
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  return 0;
}

void sub_1CF34DFE8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4, uint64_t a5)
{
  v46 = a4;
  v44 = a1;
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 96);
  v11 = *(*v5 + 104);
  v42 = *(*v5 + 88);
  v43 = v9;
  v45[0] = v9;
  v45[1] = v42;
  v40 = v11;
  v41 = v10;
  v45[2] = v10;
  v45[3] = v11;
  v12 = type metadata accessor for ItemReconciliation(255, v45);
  v13 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  v21 = v5[2];
  if (v21)
  {
    v36 = v18;
    v37 = a5;
    v38 = v20;
    v39 = v17;
    v35 = v5;
    v22 = v5[3];

    v24 = v21(v23);
    sub_1CEFF7124(v21, v22);
    if (v24)
    {
      a2(v24);
      if (v6)
      {
      }

      else
      {
        v25 = v39;
        if ((*(v39 + 48))(v15, 1, v12) == 1)
        {

          (*(v36 + 8))(v15, v13);
        }

        else
        {
          v26 = v38;
          (*(v25 + 32))(v38, v15, v12);
          v27 = v46;
          v28 = sub_1CF35441C(v26, v24, v44, v46, *(v37 + 8));
          if ((v28 & 1) == 0)
          {
            v29 = MEMORY[0x1EEE9AC00](v28);
            v30 = v42;
            *(&v35 - 8) = v43;
            *(&v35 - 7) = v30;
            v31 = v40;
            v32 = v41;
            *(&v35 - 6) = v27;
            *(&v35 - 5) = v32;
            v33 = v37;
            v34 = v38;
            *(&v35 - 4) = v31;
            *(&v35 - 3) = v33;
            *(&v35 - 2) = v34;
            (*(v33 + 32))(sub_1CF3560F0, v29);
            if ((*(v33 + 24))(v27, v33))
            {
              sub_1CF345C98();
            }
          }

          (*(v39 + 8))(v38, v12);
        }
      }
    }
  }
}

uint64_t sub_1CF34E3E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA425D0);
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = Optional<A>.encode(_:)(a1, v17, *(AssociatedConformanceWitness + 8));
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0x61747320444E4120, 0xED0000203D206574);
  v29 = sub_1CF9E7F98();
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  return 0;
}

uint64_t sub_1CF34E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA42200);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

uint64_t sub_1CF34E6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA42200);
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0x61747320444E4120, 0xED0000203D206574);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  return 0;
}

uint64_t sub_1CF34E82C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  if ([qword_1EDEBBC10 preventRunning])
  {
    v8 = 0;
  }

  else if (*(v3 + qword_1EDEBBB18) && (sub_1CF35A168() & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1;
    v9 = (*(a3 + 24))(sub_1CF34E940, 0, a2, a3);
    if (!v4)
    {
      v10 = v9;
      v8 = [v9 next];
    }
  }

  return v8 & 1;
}

uint64_t sub_1CF34E940()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA423A0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x7461747320524F20, 0xEC000000203D2065);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

void sub_1CF34EA34(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 104);
  v46 = *(*v4 + 96);
  v47 = v6;
  v53 = v6;
  v54 = v7;
  v55 = v46;
  v56 = v8;
  v9 = type metadata accessor for PersistenceTrigger(0, &v53);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v42 = &v41 - v19;
  v48 = a1;
  v49 = v10;
  v20 = *(v10 + 16);
  v20(v17, a1, v9, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 22)
  {
    if (EnumCaseMultiPayload == 14)
    {
      v22 = v44;
      v41 = v9;
      (v20)(v44, v17, v9);
      v23 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v25 = v22;
      v26 = AssociatedTypeWitness;
      v27 = swift_getAssociatedConformanceWitness();
      v53 = v23;
      v54 = v26;
      v55 = AssociatedConformanceWitness;
      v56 = v27;
      v28 = type metadata accessor for ReconciliationID(255, &v53);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v25[*(swift_getTupleTypeMetadata2() + 48)];
        v30 = v29 > 0x17;
        v31 = (1 << v29) & 0x800042;
        if (!v30 && v31 != 0)
        {
          v34 = v42;
          v33 = v43;
          (*(v43 + 32))(v42, v25, v26);
          v35 = (*(v49 + 8))(v17, v41);
          MEMORY[0x1EEE9AC00](v35);
          v37 = v51;
          v36 = v52;
          *(&v41 - 4) = v51;
          *(&v41 - 3) = v36;
          v38 = v50;
          *(&v41 - 2) = v34;
          *(&v41 - 1) = v38;
          v39 = v57;
          sub_1CF34DFE8(v38, sub_1CF3560D0, (&v41 - 6), v37, v36);
          if (v39)
          {
            (*(v33 + 8))(v34, v26);
            return;
          }

          (*(v33 + 8))(v34, v26);
          goto LABEL_15;
        }

        (*(v43 + 8))(v25, v26);
      }

      else
      {
        (*(*(v28 - 8) + 8))(v25, v28);
      }

      v9 = v41;
    }

    goto LABEL_14;
  }

  (v20)(v12, v17, v9);
  if ((*v12 & 0x8000000000000000) == 0 || (v53 = v7, v54 = v47, v55 = v8, v56 = v46, type metadata accessor for DiskImport.DiskImportFinished(0, &v53), !swift_dynamicCastClass()))
  {

LABEL_14:
    (*(v49 + 8))(v17, v9);
    v37 = v51;
    v36 = v52;
    v38 = v50;
    goto LABEL_15;
  }

  v38 = v50;
  v37 = v51;
  v36 = v52;
  v40 = v57;
  sub_1CF34A458(v50);
  if (v40)
  {

    (*(v49 + 8))(v17, v9);
    return;
  }

  (*(v49 + 8))(v17, v9);
LABEL_15:
  if (*(v4 + qword_1EDEBBB18))
  {

    sub_1CF35FFA8(v48, v38, v37, v36);
  }
}

void *sub_1CF34EFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v26 = a6;
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 104);
  v9 = *(*a1 + 96);
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v10 = type metadata accessor for ItemReconciliation(255, &v31);
  v11 = sub_1CF9E75D8();
  v25 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = v35;
  result = sub_1CF68E230(v28, v29, v30, *(v27 + 8), &v25 - v12);
  if (!v14)
  {
    v16 = v11;
    v30 = v9;
    v17 = v7;
    v18 = v6;
    v19 = v25;
    v20 = v26;
    v35 = 0;
    v21 = *(v10 - 8);
    if ((*(v21 + 48))(v13, 1, v10) == 1)
    {
      (*(v19 + 8))(v13, v16);
      v31 = v17;
      v32 = v18;
      v33 = v30;
      v34 = v8;
      v23 = type metadata accessor for ItemReconciliation(0, &v31);
      v24 = 1;
    }

    else
    {
      sub_1CF07EE34(v10, v22, v20);
      (*(v21 + 8))(v13, v10);
      v31 = v17;
      v32 = v18;
      v33 = v30;
      v34 = v8;
      v23 = type metadata accessor for ItemReconciliation(0, &v31);
      v24 = 0;
    }

    return (*(*(v23 - 8) + 56))(v20, v24, 1);
  }

  return result;
}

void sub_1CF34F270(uint64_t a1, void *a2, void (*a3)(uint64_t (*)(), _BYTE *, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v12 = type metadata accessor for FPDownloadSchedulerFastPassState(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a5;
  v22 = a6;
  v23 = a2;
  v24 = v6;
  a3(sub_1CF3560C4, v20, v13);
  v16 = *(v6 + qword_1EDEAC820);
  if (v16)
  {
    v17 = *(*v16 + 136);
    swift_beginAccess();
    sub_1CF355EF8(v16 + v17, v15);
    sub_1CF342D64(a2);
    sub_1CF355E9C(v15);
  }

  v18 = (*(a6 + 24))(sub_1CF34F8C4, 0, a5, a6);
  if ([v18 next])
  {
    do
    {
      v19 = objc_autoreleasePoolPush();
      sub_1CF34F8E0(v18, a2, v11[10], v11[11], a5, v11[12]);
      objc_autoreleasePoolPop(v19);
    }

    while (([v18 next] & 1) != 0);
  }
}

void sub_1CF34F50C(void *a1, void *a2)
{
  v4 = *a2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  *&v81[0] = 0xD000000000000015;
  *(&v81[0] + 1) = 0x80000001CFA42550;
  if (*(a2 + qword_1EDEBBAF0))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(a2 + qword_1EDEBBAF0))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v14, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;
  sub_1CF4FB2BC(*&v81[0], *(&v81[0] + 1), v5, v6);
  *(&v81[0] + 1), v23, v24, v25, v26, v27, v28, v29;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1CF9E7948();
  0xE000000000000000, v32, v33, v34, v35, v36, v37, v38;
  *&v81[0] = 0xD000000000000014;
  *(&v81[0] + 1) = 0x80000001CFA42570;
  if (qword_1EDEAD4D8 != -1)
  {
    swift_once();
  }

  v39 = [qword_1EDEBBC10 description];
  v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v42 = v41;

  MEMORY[0x1D3868CC0](v40, v42);
  v42, v43, v44, v45, v46, v47, v48, v49;
  sub_1CF4FB2BC(*&v81[0], *(&v81[0] + 1), v30, v31);
  *(&v81[0] + 1), v50, v51, v52, v53, v54, v55, v56;
  v57 = *(a2 + qword_1EDEBBB18);
  if (v57)
  {
    v58 = a1[3];
    v59 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v58);
    *&v81[0] = 0;
    *(&v81[0] + 1) = 0xE000000000000000;

    sub_1CF9E7948();
    v83 = v81[0];
    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA425B0);
    v82 = v57;
    v60 = *(v4 + 96);
    v81[0] = *(v4 + 80);
    v81[1] = v60;
    type metadata accessor for BackgroundDownloaderPacer(0, v81);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v61 = *(&v83 + 1);
    sub_1CF4FB2BC(v83, *(&v83 + 1), v58, v59);

    v61, v62, v63, v64, v65, v66, v67, v68;
  }

  v69 = *(a2 + qword_1EDEBBAD0);
  if (v69)
  {
    v70 = a1[3];
    v71 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v70);
    *&v81[0] = 0;
    *(&v81[0] + 1) = 0xE000000000000000;

    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA42590);
    *&v83 = v69;
    type metadata accessor for SpeculativeDownloadsDiskManagement(0, *(v4 + 88), *(v4 + 104), v72);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v73 = *(&v81[0] + 1);
    sub_1CF4FB2BC(*&v81[0], *(&v81[0] + 1), v70, v71);

    v73, v74, v75, v76, v77, v78, v79, v80;
  }
}

uint64_t sub_1CF34F8E0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v48 - v9;
  v11 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v12 = a1;
  result = v11();
  if (!v6)
  {
    v14 = v54;
    v15 = v51;
    v50 = 0;
    v16 = [v12 longAtIndex_];
    if (v16 > 2)
    {
      sub_1CF1DA5D8();
      swift_allocError();
      *v22 = 0;
      swift_willThrow();
      return (*(v15 + 8))(v10, AssociatedTypeWitness);
    }

    else
    {
      v17 = v16;
      v18 = [v12 longAtIndex_];
      v19 = v14[3];
      v49 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v19);
      v52 = 0;
      v53 = 0xE000000000000000;
      if (v17)
      {
        if (v17 == 1)
        {
          v20 = 0x208FB8EFB696E2;
        }

        else
        {
          v20 = 0x20919B9FF0;
        }

        if (v17 == 1)
        {
          v21 = 0xA700000000000000;
        }

        else
        {
          v21 = 0xA500000000000000;
        }
      }

      else
      {
        v21 = 0xA400000000000000;
        v20 = 548638690;
      }

      MEMORY[0x1D3868CC0](v20, v21);
      v21, v23, v24, v25, v26, v27, v28, v29;
      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v30 = sub_1CF7F5068(v18);
      v32 = v31;
      MEMORY[0x1D3868CC0](v30);
      v32, v33, v34, v35, v36, v37, v38, v39;
      v40 = v53;
      sub_1CF4FB2BC(v52, v53, v19, v49);
      v40, v41, v42, v43, v44, v45, v46, v47;
      return (*(v15 + 8))(v10, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_1CF34FBA4(uint64_t a1, uint64_t a2)
{
  v14[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v15 = 0;
  v16 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA42010);
  v14[3] = MEMORY[0x1E69E6530];
  v14[0] = a2;
  v3 = sub_1CEFF8EA0(v14);
  v5 = v4;
  sub_1CEFCCC44(v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v5)
  {
    MEMORY[0x1D3868CC0](v3, v5);
    v5, v6, v7, v8, v9, v10, v11, v12;
    MEMORY[0x1D3868CC0](0x30203D212029, 0xE600000000000000);
    return v15;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF34FCD8(void (*a1)(char *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[1] = a2;
  v16 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v15 - v11;
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v13 + 16))(a3, 0, AssociatedTypeWitness, v13);
  if (!v7)
  {
    v16(v12);
    return (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF34FE4C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007CLL, 0x80000001CFA412F0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x30203D212029, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF34FEFC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007ELL, 0x80000001CFA41250);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA412D0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA410D0);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF35005C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000090, 0x80000001CFA41110);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA411B0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA411D0);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA411F0);
  v30 = sub_1CF9E7F98();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA41210);
  v40 = sub_1CF9E7F98();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF350244()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007ELL, 0x80000001CFA41030);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA410B0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000034, 0x80000001CFA410D0);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x444E450A3B29, 0xE600000000000000);
  return 0;
}

void sub_1CF3503BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  v20 = *(v4 + 16);
  if (v20)
  {
    v29 = v19;
    v30 = v17;
    v32 = v16;
    v33 = a3;
    v31 = v4;
    v21 = *(v4 + 24);

    v23 = v20(v22);
    sub_1CEFF7124(v20, v21);
    if (v23)
    {
      v28 = v14;
      v24 = *(**(v23 + 16) + 160);
      v25 = *(v34 + 8);

      v24(a1, a2, v33, v25);

      if (v6)
      {
      }

      else
      {
        v26 = v28;
        if ((*(v28 + 48))(v13, 1, AssociatedTypeWitness) == 1)
        {

          (*(v30 + 8))(v13, v32);
        }

        else
        {
          v27 = v29;
          (*(v26 + 32))(v29, v13, AssociatedTypeWitness);
          if (*(v31 + qword_1EDEBBAD0))
          {

            sub_1CF1C43CC();
          }

          (*(v26 + 8))(v27, AssociatedTypeWitness);
        }
      }
    }
  }
}

void sub_1CF3506B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v128 = a1;
  v7 = v6;
  v126 = a4;
  v127 = a6;
  v11 = *v6;
  v12 = *(*v6 + 96);
  v13 = *(*v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v124 = (&v114 - v15);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v114 - v18;
  v20 = v7[2];
  if (!v20)
  {
    return;
  }

  v120 = v19;
  v121 = a2;
  v117 = v17;
  v118 = v16;
  v119 = AssociatedTypeWitness;
  v21 = v7[3];

  v23 = v20(v22);
  sub_1CEFF7124(v20, v21);
  if (!v23)
  {
    return;
  }

  v123 = a5;
  v24 = *(v7 + qword_1EDEBBAD0);
  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = sub_1CF5DA5A8(8u);
  v27 = *(v25 + 16);
  v26 = *(v25 + 24);
  v28 = __OFSUB__(v26, v27);
  v29 = v26 - v27;
  if (v28)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  if (v29 < 1)
  {
LABEL_8:

    return;
  }

  v30 = v25;
  v31 = *(v127 + 8);
  v115 = *(v31 + 24);

  v116 = v23;

  v32 = a3;
  v33 = v30;
  v34 = v129;
  v35 = (v115)(v32, v126, v123, v31);
  v129 = v34;
  if (v34)
  {
  }

  else
  {
    v36 = v35;
    v126 = v24;
    v115 = v33;
    v135 = sub_1CF9E65E8();
    v133 = 0;
    v134 = 0;
    if ([v36 next])
    {
      v37 = v127;
      do
      {
        v38 = objc_autoreleasePoolPush();
        v39 = v129;
        sub_1CF350EA8(v36, &v135, &v133, &v134, v13, *(v11 + 88), v123, v12, *(v11 + 104), v37, &v132);
        v129 = v39;
        if (v39)
        {

          v129 = v132;
          objc_autoreleasePoolPop(v38);

          v97 = v135;
LABEL_33:
          v97, v90, v91, v92, v93, v94, v95, v96;
          return;
        }

        objc_autoreleasePoolPop(v38);
      }

      while (([v36 next] & 1) != 0);
      if (v134 < 1)
      {
        goto LABEL_31;
      }

      v114 = v36;
      v40 = sub_1CF033B88();

      if ((v40 & 0x40000) == 0 || (v41 = [objc_opt_self() defaultStore], v42 = objc_msgSend(v41, sel_useCacheDeleteWhenReachingLowerBound), v41, v42))
      {
        v43 = v133;
        v44 = swift_allocObject();
        v44[2] = v123;
        v44[3] = v37;
        v44[4] = v116;

        sub_1CF1C2B1C(v43, sub_1CF35607C, v44);
      }

      v132 = v128;
      v131 = 0;
      v45 = v135;

      v46 = TupleTypeMetadata2;
      if (sub_1CF9E6DF8())
      {
        v36 = 0;
        v54 = (v118 + 16);
        v55 = (v122 + 32);
        v56 = (v122 + 8);
        while (1)
        {
          v57 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v57)
          {
            (*(v118 + 16))(v120, v45 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v36, v46);
            v58 = (v36 + 1);
            if (__OFADD__(v36, 1))
            {
              goto LABEL_30;
            }
          }

          else
          {
            v82 = sub_1CF9E7998();
            if (v117 != 8)
            {
              goto LABEL_43;
            }

            v130 = v82;
            v46 = TupleTypeMetadata2;
            (*v54)(v120, &v130, TupleTypeMetadata2);
            swift_unknownObjectRelease();
            v58 = (v36 + 1);
            if (__OFADD__(v36, 1))
            {
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }
          }

          v59 = *&v120[*(v46 + 48)];
          (*v55)(v124);
          v68 = *(v115 + 16);
          v67 = *(v115 + 24);
          v28 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v28)
          {
            goto LABEL_42;
          }

          if (v69 < 1)
          {
            v45, v60, v61, v62, v63, v64, v65, v66;
            (*v56)(v124, v119);
            v37 = v127;
            goto LABEL_36;
          }

          v70 = objc_autoreleasePoolPush();
          v71 = v59;
          v72 = v124;
          v73 = v129;
          sub_1CF351120(v116, v71, v7, v124, v121, &v131, v126, &v132, v123, v127, &v130);
          v129 = v73;
          if (v73)
          {
            break;
          }

          objc_autoreleasePoolPop(v70);
          (*v56)(v72, v119);
          v46 = TupleTypeMetadata2;
          v81 = sub_1CF9E6DF8();
          ++v36;
          v37 = v127;
          if (v58 == v81)
          {
            goto LABEL_34;
          }
        }

        v45, v74, v75, v76, v77, v78, v79, v80;
        v129 = v130;
        objc_autoreleasePoolPop(v70);

        (*v56)(v72, v119);
        v97 = v45;
        goto LABEL_33;
      }

LABEL_34:
      v45, v47, v48, v49, v50, v51, v52, v53;
LABEL_36:
      if (v131 == 1)
      {
        v105 = swift_allocObject();
        v105[2] = v123;
        v105[3] = v37;
        v105[4] = v7;

        sub_1CF92DE44("startSpeculativeBackgroundDownloads(currentDownloadsCount:with:matching:)", 73, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF35605C, v105);
        v45, v106, v107, v108, v109, v110, v111, v112;
      }

      else
      {
        v45, v98, v99, v100, v101, v102, v103, v104;
      }

      v113 = v114;
    }

    else
    {
LABEL_31:

      v135, v83, v84, v85, v86, v87, v88, v89;
    }
  }
}

uint64_t sub_1CF350EA8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v28 = a4;
  v30 = a2;
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v28 - v14;
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v19 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v20 = a1;
  v21 = v32;
  result = v19();
  if (v21)
  {
    *a11 = v21;
    return result;
  }

  v23 = v28;
  v32 = 0;
  v24 = [v20 longAtIndex_];
  v25 = [v20 longLongAtIndex_];
  v26 = *(TupleTypeMetadata2 + 48);
  v27 = v29;
  (*(v29 + 16))(v15, v18, AssociatedTypeWitness);
  *&v15[v26] = v24;
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  result = (*(v27 + 8))(v18, AssociatedTypeWitness);
  if (__OFADD__(*v31, v25))
  {
    __break(1u);
    goto LABEL_8;
  }

  *v31 += v25;
  if (__OFADD__(*v23, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  ++*v23;
  return result;
}

void (*sub_1CF351120(void **a1, uint64_t a2, void *a3, void *a4, uint64_t a5, _BYTE *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, void *a11))(uint64_t *, void)
{
  v138 = a8;
  v155 = a7;
  v139 = a6;
  v166 = a4;
  v167 = a5;
  v163 = a3;
  v165 = a10;
  v168 = a9;
  v13 = *a1;
  v143 = sub_1CF9E5CF8();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v144 = (&v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v13[329];
  v149 = v13[331];
  v148 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v150 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v147 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v146 = &v136 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v140 = &v136 - v20;
  v21 = sub_1CF9E6118();
  v152 = *(v21 - 8);
  v153 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v154 = (&v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v145 = &v136 - v24;
  v25 = v13[330];
  v26 = v13[332];
  v28 = type metadata accessor for SnapshotItem(255, v25, v26, v27);
  v29 = sub_1CF9E75D8();
  v156 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v136 - v30;
  v158 = v28;
  v159 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v157 = &v136 - v33;
  v141 = v25;
  v34 = swift_getAssociatedTypeWitness();
  v35 = sub_1CF9E75D8();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v136 - v37;
  v162 = v34;
  v161 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v160 = &v136 - v40;
  if ((sub_1CF033B88() & 0x40000) != 0 && a2 == 16)
  {
    v41 = v164;
    result = sub_1CF348CFC(v166, 16, v167, v168, v165);
    if (!v41)
    {
      return result;
    }

LABEL_6:
    *a11 = v41;
    return result;
  }

  v137 = v26;
  v43 = *(v165 + 8);
  v41 = v164;
  result = (*(*a1[2] + 160))(v166, v167, v168, v43);
  if (v41)
  {
    goto LABEL_6;
  }

  v136 = v43;
  v164 = 0;
  v44 = v162;
  v45 = v161;
  if ((*(v161 + 48))(v38, 1, v162) == 1)
  {
    return (*(v36 + 8))(v38, v35);
  }

  v46 = v160;
  (*(v45 + 32))(v160, v38, v44);
  v47 = v164;
  (*(*a1[5] + 240))(v46, 1, v167, v168, v136);
  v164 = v47;
  if (v47)
  {
    v48 = (v45 + 8);
LABEL_11:
    v49 = v162;
LABEL_12:
    result = (*v48)(v46, v49);
    v41 = v164;
    goto LABEL_6;
  }

  v51 = v158;
  v50 = v159;
  if ((*(v159 + 48))(v31, 1, v158) == 1)
  {
    (*(v45 + 8))(v46, v162);
    return (*(v156 + 8))(v31, v29);
  }

  v52 = v157;
  (*(v50 + 32))(v157, v31, v51);
  if (a2 == 64 && *(v163 + qword_1EDEBBB18))
  {

    if ((sub_1CF364F00(v52) & 1) == 0)
    {
      v100 = fpfs_current_or_default_log();
      v101 = v145;
      sub_1CF9E6128();
      v102 = v150;
      v103 = *(v150 + 16);
      v104 = v140;
      v105 = AssociatedTypeWitness;
      (v103)(v140, v166, AssociatedTypeWitness);
      v106 = sub_1CF9E6108();
      LODWORD(v156) = sub_1CF9E7288();
      if (os_log_type_enabled(v106, v156))
      {
        v107 = swift_slowAlloc();
        v144 = v103;
        v108 = v107;
        v147 = v107;
        v155 = swift_slowAlloc();
        *&v169[0] = v155;
        *v108 = 136446210;
        v154 = v106;
        v109 = v146;
        v144(v146, v104, v105);
        v110 = *(v102 + 8);
        v110(v104, v105);
        swift_getAssociatedConformanceWitness();
        v111 = sub_1CF9E7F98();
        v113 = v112;
        v110(v109, v105);
        v114 = sub_1CEFD0DF0(v111, v113, v169);
        v113, v115, v116, v117, v118, v119, v120, v121;
        v122 = v147;
        *(v147 + 4) = v114;
        v123 = v154;
        _os_log_impl(&dword_1CEFC7000, v154, v156, "🔮  unscheduling download of item %{public}s not in the speculative set anymore", v122, 0xCu);
        v124 = v155;
        __swift_destroy_boxed_opaque_existential_1(v155);
        MEMORY[0x1D386CDC0](v124, -1, -1);
        MEMORY[0x1D386CDC0](v122, -1, -1);

        (*(v152 + 8))(v145, v153);
      }

      else
      {
        (*(v102 + 8))(v104, v105);

        (*(v152 + 8))(v101, v153);
      }

      v46 = v160;
      v125 = v164;
      sub_1CF348CFC(v166, 64, v167, v168, v165);
      v164 = v125;
      v126 = v157;
      if (!v125)
      {

        (*(v159 + 8))(v126, v51);
        result = (*(v161 + 8))(v46, v162);
        *v139 = 1;
        return result;
      }

      (*(v159 + 8))(v126, v51);
      goto LABEL_38;
    }
  }

  v53 = v52 + *(v51 + 48);
  v54 = type metadata accessor for ItemMetadata(0);
  v55 = sub_1CF1C3FAC(*(v53 + *(v54 + 104)));
  if (v55)
  {
    MEMORY[0x1EEE9AC00](v55);
    v57 = v167;
    v58 = v168;
    v60 = v165;
    v59 = v166;
    *(&v136 - 4) = v168;
    *(&v136 - 3) = v60;
    v61 = v164;
    v135 = v163;
    sub_1CF349BB8(v59, v57, sub_1CF3560A8, (&v136 - 6), v58, v60);
    v164 = v61;
    if (v61)
    {
      (*(v159 + 8))(v157, v51);
LABEL_38:
      v48 = (v161 + 8);
      goto LABEL_11;
    }

    *&v90 = v148;
    *(&v90 + 1) = v141;
    *&v91 = v149;
    *(&v91 + 1) = v137;
    v169[1] = v91;
    v169[0] = v90;
    type metadata accessor for ConcreteJobResult(0, v169);
    v163 = sub_1CF056580();
    v92 = v144;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v94 = v93;
    v95 = v143;
    v156 = *(v142 + 8);
    result = (v156)(v92, v143);
    v96 = v94 * 1000000000.0;
    if (COERCE__INT64(fabs(v94 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v96 > -9.22337204e18)
    {
      v97 = v164;
      v98 = v162;
      if (v96 < 9.22337204e18)
      {
        if ((a2 & 0x2C) != 0)
        {
          v99 = 0x1000000;
          goto LABEL_51;
        }

        if ((a2 & 0x10) != 0)
        {
          if ((a2 & 0x80) != 0)
          {
            v99 = 0x200401000000;
          }

          else
          {
            if ((a2 & 0x140) == 0)
            {
              v99 = 0x401000000;
              if ((a2 & 1) == 0)
              {
                goto LABEL_51;
              }

              goto LABEL_50;
            }

            v99 = 0x4401000000;
          }
        }

        else
        {
          if ((a2 & 0x80) == 0)
          {
            if ((a2 & 0x140) != 0)
            {
              v99 = 0x4001000000;
              goto LABEL_49;
            }

            v99 = 0x1000000;
            if ((a2 & 1) == 0)
            {
LABEL_51:
              v127 = v163;
              sub_1CF5666D4(v166, 0, v96, v99, a1, 0, v163, v167, v168, v136);
              v164 = v97;
              if (v97)
              {

                (*(v159 + 8))(v157, v51);
                v48 = (v161 + 8);
                v49 = v98;
                goto LABEL_12;
              }

              v128 = v144;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v130 = v129;
              result = (v156)(v128, v95);
              v131 = v130 * 1000000000.0;
              if (COERCE__INT64(fabs(v130 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v131 > -9.22337204e18)
                {
                  v132 = v164;
                  v133 = v161;
                  if (v131 < 9.22337204e18)
                  {
                    sub_1CF521850(v127, v131, v167, v168, v165);
                    v134 = (v159 + 8);
                    v48 = (v133 + 8);
                    v164 = v132;
                    if (v132)
                    {

                      (*v134)(v157, v51);
                      goto LABEL_11;
                    }

                    sub_1CF1C41D8();

                    (*v134)(v157, v51);
                    result = (*v48)(v46, v162);
                    if (!__OFADD__(*v138, 1))
                    {
                      ++*v138;
                      return result;
                    }

LABEL_70:
                    __break(1u);
                    return result;
                  }

LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }

LABEL_68:
                __break(1u);
                goto LABEL_69;
              }

LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

LABEL_50:
            v99 |= 0x10000000000uLL;
            goto LABEL_51;
          }

          v99 = 0x200001000000;
        }

LABEL_49:
        if ((a2 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    __break(1u);
    goto LABEL_66;
  }

  v62 = v56;
  v63 = fpfs_current_or_default_log();
  v64 = v154;
  sub_1CF9E6128();
  v65 = v150;
  v66 = *(v150 + 16);
  v67 = v147;
  v68 = AssociatedTypeWitness;
  v66(v147, v166, AssociatedTypeWitness);
  v69 = sub_1CF9E6108();
  LODWORD(v168) = sub_1CF9E7298();
  if (os_log_type_enabled(v69, v168))
  {
    v70 = swift_slowAlloc();
    v167 = v62;
    v71 = v70;
    v166 = swift_slowAlloc();
    *&v169[0] = v166;
    *v71 = 136315138;
    v72 = v146;
    v66(v146, v67, v68);
    v73 = *(v65 + 8);
    v73(v67, v68);
    swift_getAssociatedConformanceWitness();
    v74 = v51;
    v75 = sub_1CF9E7F98();
    v77 = v76;
    v73(v72, v68);
    v78 = v75;
    v51 = v74;
    v79 = sub_1CEFD0DF0(v78, v77, v169);
    v77, v80, v81, v82, v83, v84, v85, v86;
    *(v71 + 4) = v79;
    _os_log_impl(&dword_1CEFC7000, v69, v168, "💾 download for file %s won't be scheduled due to disk management concerns", v71, 0xCu);
    v87 = v166;
    __swift_destroy_boxed_opaque_existential_1(v166);
    MEMORY[0x1D386CDC0](v87, -1, -1);
    v88 = v71;
    v62 = v167;
    MEMORY[0x1D386CDC0](v88, -1, -1);

    (*(v152 + 8))(v154, v153);
  }

  else
  {
    (*(v65 + 8))(v67, v68);

    (*(v152 + 8))(v64, v153);
  }

  v89 = v160;
  if (*(v163 + qword_1EDEBBB18))
  {

    sub_1CF3625E4(v62);
  }

  (*(v159 + 8))(v157, v51);
  return (*(v161 + 8))(v89, v162);
}

void sub_1CF352144(void *a1, uint64_t a2)
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

uint64_t sub_1CF3521C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000022;
  v9[3] = 0x80000001CFA42420;
  v9[4] = 0;
  v9[5] = 0xE000000000000000;

  sub_1CF3506B0(a1, a2, sub_1CF356004, v9, a3, a4);
  v11 = v10;

  if (!v4)
  {
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000022;
    v12[3] = 0x80000001CFA42420;
    v12[4] = 0;
    v12[5] = 0xE000000000000000;

    sub_1CF3506B0(v11, a2, sub_1CF355FF8, v12, a3, a4);
    a4 = v13;
  }

  return a4;
}

void sub_1CF35230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v73 = a3;
  v75 = a2;
  v76 = a1;
  v7 = type metadata accessor for SnapshotItem(255, *(*v4 + 88), *(*v4 + 104), a4);
  v8 = sub_1CF9E75D8();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v47 - v9;
  v71 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v47 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v47 - v14;
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v47 - v16;
  v17 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = v4[2];
  if (v21)
  {
    v60 = v18;
    v61 = AssociatedTypeWitness;
    v67 = v20;
    v22 = v4[3];

    v24 = v21(v23);
    sub_1CEFF7124(v21, v22);
    v74 = v24;
    if (v24)
    {
      v25 = v73;
      v26 = (*(v73 + 24))(sub_1CF352B98, 0, v75, v73);
      if (v5)
      {
      }

      else
      {
        v27 = v26;
        v59 = qword_1EDEBBAD0;
        if ([v26 next])
        {
          v51 = v7;
          v58 = *(swift_getAssociatedConformanceWitness() + 8);
          v56 = *(v58 + 16);
          v57 = v58 + 16;
          v54 = (v66 + 48);
          v53 = (v66 + 32);
          v50 = (v71 + 48);
          v48 = (v71 + 32);
          v47 = (v71 + 8);
          v52 = (v66 + 8);
          v28 = v61;
          ++v60;
          v29 = v75;
          v30 = v76;
          v31 = v67;
          v55 = v17;
          v49 = v27;
          while (1)
          {
            v66 = v27;
            v56();
            v71 = 0;
            v33 = v28;
            v34 = v25;
            v35 = *(**(v74 + 16) + 160);

            v36 = v70;
            v37 = v34;
            v38 = v71;
            v35(v31, v30, v29, v37);
            v71 = v38;
            if (v38)
            {

              (*v60)(v67, v55);
              return;
            }

            v39 = v33;
            if ((*v54)(v36, 1, v33) == 1)
            {

              (*v60)(v67, v55);
              (*(v64 + 8))(v36, v65);
              return;
            }

            v40 = v72;
            (*v53)(v72, v36, v39);
            v41 = *(v74 + 40);

            v42 = v69;
            v29 = v75;
            v25 = v73;
            v43 = v71;
            (*(*v41 + 240))(v40, 1, v76, v75, v73);
            v28 = v39;
            if (v43)
            {

              (*v52)(v72, v39);
              (*v60)(v67, v55);
              return;
            }

            v44 = v51;
            if ((*v50)(v42, 1, v51) == 1)
            {
              break;
            }

            v45 = v68;
            (*v48)();
            type metadata accessor for ItemMetadata(0);
            v46 = v72;
            if (*(v6 + v59))
            {

              sub_1CF1C41D8();
            }

            (*v47)(v45, v44);
            (*v52)(v46, v28);
            v31 = v67;
            (*v60)(v67, v55);
            v32 = [v66 next];
            v27 = v49;
            v30 = v76;
            if ((v32 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          (*v52)(v72, v28);
          (*v60)(v67, v55);
          (*(v62 + 8))(v42, v63);
        }

        else
        {
LABEL_14:
        }
      }
    }
  }
}

uint64_t sub_1CF352B98()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA423A0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA423E0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA42400);
  return 0;
}

void sub_1CF352CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22[2] = v7;
    v13 = *(v4 + 16);
    if (v13 && (v22[1] = v6, v22[3] = Strong, v14 = *(v4 + 24), v15 = , v16 = v13(v15), v17 = v13, v18 = v16, sub_1CEFF7124(v17, v14), v18))
    {
      if (*(v4 + qword_1EDEBBB08))
      {
        v22[0] = v18;
        v19 = sub_1CF042F4C();
        *v11 = v19;
        (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
        v20 = v19;
        LOBYTE(v19) = sub_1CF9E64D8();
        (*(v9 + 8))(v11, v8);
        if (v19)
        {
          v21 = (*(a3 + 24))(sub_1CF353198, 0, v23, a3);
          if ([v21 next])
          {
            sub_1CF7AA71C([v21 longAtIndex_], objc_msgSend(v21, sel_longLongAtIndex_, 1));

            swift_unknownObjectRelease();
          }

          else
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_1CF7AA71C(0, 0);
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1CF7AA71C(0, 0);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1CF353198()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D5, 0x80000001CFA422A0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA42380);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

uint64_t sub_1CF3532F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  LOBYTE(a3) = a3(v4);

  return a3 & 1;
}

id sub_1CF353330(id result)
{
  if (*(v1 + qword_1EDEBBAE0) == 1)
  {
    v2 = result;
    [result setResources_];
    result = [v2 setNetworkDownloadSize_];
    *(v1 + qword_1EDEBBAE0) = 3;
  }

  return result;
}

double sub_1CF3533A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1CF353330(v3);

  return result;
}

void sub_1CF3533F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v63 = a1;
  v5 = *v3;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v3[2];
  if (v12)
  {
    v61 = a2;
    v13 = v3[3];

    v15 = v12(v14);
    sub_1CEFF7124(v12, v13);
    if (v15)
    {
      v16 = sub_1CF042F4C();
      *v11 = v16;
      (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
      v17 = v16;
      LOBYTE(v16) = sub_1CF9E64D8();
      (*(v9 + 8))(v11, v8);
      if (v16)
      {
        v18 = sub_1CF5DA5A8(8u);
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = v19 - v20;
        if (!__OFSUB__(v19, v20))
        {
          if (v21 < 1)
          {

            return;
          }

          v58 = v6;
          v59 = v7;
          v23 = v5[10];
          v22 = v5[11];
          v24 = v5[12];
          v25 = v5[13];
          v60 = v18;

          v26 = sub_1CF3547C0(0xD000000000000010, 0x80000001CFA42280, v21, 0);
          v28 = sub_1CF354898(v21, v63, v26, v27, v23, v22, v61, v24, v25, v62);
          v54 = "nd_downloader\n WHERE state = ";
          v55 = v22;
          v56 = v23;
          v57 = v24;
          if (v28 >= v21)
          {
            goto LABEL_12;
          }

          v51 = v29;
          v52 = v28;
          v30 = v21 - v28;
          if (!__OFSUB__(v21, v28))
          {
            v31 = v55;
            v33 = v56;
            v32 = v57;
            v53 = sub_1CF354988(0xD000000000000010, v54 | 0x8000000000000000, v30, 0);
            v35 = v34;

            v36 = v35;

            v37 = sub_1CF354898(v30, v63, v53, v35, v33, v31, v61, v32, v25, v62);
            v39 = v38;
            v53 = v36;

            if (!__OFADD__(v52, v37))
            {
              v40 = __OFADD__(v51, v39);
              v41 = v51 + v39;
              v43 = v56;
              v42 = v57;
              v44 = v55;
              if (!v40)
              {
                if (v37 >= v30)
                {
                  goto LABEL_12;
                }

                v51 = v41;
                v52 += v37;
                v40 = __OFSUB__(v30, v37);
                v45 = v30 - v37;
                if (!v40)
                {
                  v54 = sub_1CF354A60(0xD000000000000010, v54 | 0x8000000000000000, v45, 0);
                  v47 = v46;

                  v48 = sub_1CF354898(v45, v63, v54, v47, v43, v44, v61, v42, v25, v62);
                  v50 = v49;

                  if (!__OFADD__(v52, v48))
                  {
                    if (!__OFADD__(v51, v50))
                    {
                      return;
                    }

                    __break(1u);
LABEL_12:

                    return;
                  }

LABEL_28:
                  __break(1u);
                  return;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_24;
    }
  }
}

void sub_1CF353998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (fpfs_supports_bgst_improvements())
  {
    if (*(v3 + qword_1EDEBBAE0) <= 1uLL)
    {
      v11 = a3;
      v12 = v3;
      sub_1CF3533F4(a1, a2, v11);
      *(v3 + qword_1EDEAC808) = v13;
      if (v14 >= 1)
      {
        v15 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v16 = sub_1CF9E6108();
        v17 = sub_1CF9E7288();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1CEFC7000, v16, v17, "⏰ background download prepared to download", v18, 2u);
          MEMORY[0x1D386CDC0](v18, -1, -1);
        }

        (*(v8 + 8))(v10, v7);
        *(v12 + qword_1EDEBBAE0) = 1;
        sub_1CF345C98();
      }
    }
  }
}

void sub_1CF353B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (fpfs_supports_bgst_improvements())
  {
    v19 = v3;
    v12 = (*(a3 + 24))(sub_1CF3569A8, 0, a2, a3);
    if (!v4)
    {
      v13 = v12;
      [v12 next];
      if (![v13 longAtIndex_])
      {
        v14 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v15 = sub_1CF9E6108();
        HIDWORD(v17) = sub_1CF9E7288();
        v18 = v15;
        if (os_log_type_enabled(v15, BYTE4(v17)))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1CEFC7000, v18, BYTE4(v17), "⏰ background download return to pending state", v16, 2u);
          MEMORY[0x1D386CDC0](v16, -1, -1);
        }

        (*(v9 + 8))(v11, v8);
        *(v19 + qword_1EDEBBAE0) = 0;
        sub_1CF345E30();
        sub_1CF353998(a1, a2, a3);
      }
    }
  }
}

uint64_t sub_1CF353D60()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA42240);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  return 0;
}

uint64_t *sub_1CF353DF8()
{
  sub_1CEFF7124(*(v0 + 16), *(v0 + 24));
  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;
  v8 = qword_1EDEAC810;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);

  v10(v0 + qword_1EDEAC7F8, v9);

  *(v0 + qword_1EDEBBAC0), v11, v12, v13, v14, v15, v16, v17;

  v18 = *(v0 + qword_1EDEBBAD8 + 112);
  v23[6] = *(v0 + qword_1EDEBBAD8 + 96);
  v23[7] = v18;
  v23[8] = *(v0 + qword_1EDEBBAD8 + 128);
  v19 = *(v0 + qword_1EDEBBAD8 + 48);
  v23[2] = *(v0 + qword_1EDEBBAD8 + 32);
  v23[3] = v19;
  v20 = *(v0 + qword_1EDEBBAD8 + 80);
  v23[4] = *(v0 + qword_1EDEBBAD8 + 64);
  v23[5] = v20;
  v21 = *(v0 + qword_1EDEBBAD8 + 16);
  v23[0] = *(v0 + qword_1EDEBBAD8);
  v23[1] = v21;
  sub_1CF338754(v23);
  sub_1CF02B994(v0 + qword_1EDEBBB10);
  sub_1CEFCCC44(v0 + qword_1EDEBBB00, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

  return v0;
}

uint64_t sub_1CF353F88()
{
  sub_1CF353DF8();

  return swift_deallocClassInstance();
}

void sub_1CF35414C(uint64_t a1)
{
  sub_1CF3543C8(319, &qword_1EDEAEE00, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1CF1A694C(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for FPDownloadSchedulerFastPassState(uint64_t a1)
{
  result = qword_1EDEA4A20;
  if (!qword_1EDEA4A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CF354328(uint64_t a1)
{
  sub_1CF1A694C(319);
  if (v1 <= 0x3F)
  {
    sub_1CF3543C8(319, &qword_1EDEA3740, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CF3543C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CF35441C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v36 = a1;
  v6 = *a2;
  v7 = *(*a2 + 104);
  v8 = *(*a2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  *&v18 = *(v6 + 96);
  *&v19 = *(v6 + 80);
  *(&v19 + 1) = v8;
  *(&v18 + 1) = v7;
  v21 = v20;
  v37[0] = v19;
  v37[1] = v18;
  v22 = type metadata accessor for ItemReconciliation(0, v37);
  (*(v11 + 16))(v13, v36 + *(v22 + 52), v21);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v13, v21);
    LOBYTE(v23) = 0;
  }

  else
  {
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    v23 = *a2[3] + 368;
    v24 = *v23;
    v26 = v33;
    v25 = v34;
    v27 = v35;
    v28 = v38;
    v29 = (*v23)(23, v17, 0, 0, v33, v34, v35);
    if (v28)
    {
      (*(v14 + 8))(v17, AssociatedTypeWitness);
    }

    else if (v29 & 1) != 0 || (v31 = v24(6, v17, 0, 0, v26, v25, v27), (v31))
    {
      (*(v14 + 8))(v17, AssociatedTypeWitness);
      LOBYTE(v23) = 1;
    }

    else
    {
      v32 = v24(1, v17, 0, 0, v26, v25, v27);
      LOBYTE(v23) = v32;
      (*(v14 + 8))(v17, AssociatedTypeWitness);
    }
  }

  return v23 & 1;
}

uint64_t (*sub_1CF3547C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1)
{
  if (a4)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v8 = sub_1CF9E7F98();
    v10 = v9;
    MEMORY[0x1D3868CC0](v8);
    v10, v11, v12, v13, v14, v15, v16, v17;
    v6 = 0x2054494D494CLL;
    v7 = 0xE600000000000000;
  }

  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v6;
  v18[5] = v7;

  return sub_1CF356050;
}

uint64_t sub_1CF354898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = (*(a10 + 24))(a3, a4, a7);
  if (v10)
  {
    return v11;
  }

  v14 = v13;
  if (![v13 next])
  {
    v11 = 0;
LABEL_10:

    return v11;
  }

  v11 = 0;
  v15 = 0;
  v16 = a1 & ~(a1 >> 63);
  while (1)
  {
    if (v16 == v11)
    {
      v11 = v16;
      goto LABEL_10;
    }

    result = [v14 longLongAtIndex_];
    v18 = __OFADD__(v15, result);
    v15 += result;
    if (v18)
    {
      break;
    }

    ++v11;
    if (([v14 next] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1CF354988(uint64_t a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1)
{
  if (a4)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v8 = sub_1CF9E7F98();
    v10 = v9;
    MEMORY[0x1D3868CC0](v8);
    v10, v11, v12, v13, v14, v15, v16, v17;
    v6 = 0x2054494D494CLL;
    v7 = 0xE600000000000000;
  }

  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v6;
  v18[5] = v7;

  return sub_1CF356004;
}

uint64_t (*sub_1CF354A60(uint64_t a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1)
{
  if (a4)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v8 = sub_1CF9E7F98();
    v10 = v9;
    MEMORY[0x1D3868CC0](v8);
    v10, v11, v12, v13, v14, v15, v16, v17;
    v6 = 0x2054494D494CLL;
    v7 = 0xE600000000000000;
  }

  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v6;
  v18[5] = v7;

  return sub_1CF355FF8;
}

void sub_1CF354B6C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a1;
  v17 = (*(a10 + 24))(sub_1CF355FA4, v21, a7, a10);
  if (!v10)
  {
    v18 = v17;
    if ([v17 next])
    {
      v20 = a3;
      v23 = a4;
      do
      {
        v19 = objc_autoreleasePoolPush();
        sub_1CF34FCD8(v20, v23, v18, a5, a6, a7, a8);
        objc_autoreleasePoolPop(v19);
      }

      while (([v18 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF354CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v13[7] = a8;
  v13[8] = a1;
  result = (*(a8 + 24))(a9, v13, a5, a8);
  if (v9)
  {
    return result;
  }

  v11 = result;
  if (![result next])
  {

    return 0;
  }

  v12 = [v11 longAtIndex_];

  if ((v12 & 0x2C) != 0)
  {
    return 0x1000000;
  }

  if ((v12 & 0x10) != 0)
  {
    if ((v12 & 0x80) != 0)
    {
      result = 0x200401000000;
    }

    else
    {
      if ((v12 & 0x140) == 0)
      {
        result = 0x401000000;
        if (v12)
        {
          return result | 0x10000000000;
        }

        return result;
      }

      result = 0x4401000000;
    }
  }

  else if ((v12 & 0x80) != 0)
  {
    result = 0x200001000000;
  }

  else
  {
    if ((v12 & 0x140) == 0)
    {
      result = 0x1000000;
      if (v12)
      {
        return result | 0x10000000000;
      }

      return result;
    }

    result = 0x4001000000;
  }

  if (v12)
  {
    return result | 0x10000000000;
  }

  return result;
}

double sub_1CF354E14()
{
  if (*(v0 + qword_1EDEBBB18))
  {

    sub_1CF3625E4(1uLL);
  }

  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 24);

    v5 = v2(v4);
    sub_1CEFF7124(v2, v3);
    if (v5)
    {
      sub_1CF058CE4();
    }
  }

  return result;
}

double sub_1CF354EC0()
{
  if (*(v0 + qword_1EDEBBB18))
  {

    sub_1CF3625E4(1uLL);
  }

  return sub_1CF346598();
}

uint64_t sub_1CF354F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[7] = a7;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v10 = *(a7 + 32);
  result = v10(sub_1CF355E18, v12, a4, a7);
  if (!v7)
  {
    return v10(sub_1CF3569AC, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF354FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF346E30, 0, a4, a7, a5, a6);
  if (!v7)
  {
    (v10)(sub_1CF346EEC, 0, a4, a7);
    (v10)(sub_1CF346F08, 0, a4, a7);
    return (v10)(sub_1CF346FB8, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF3550D4(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A2, 0x80000001CFA42A40);
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1CF680C9C(0, v2, 0);
    v3 = v40;
    v4 = (a1 + 32);
    v5 = *(v40 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *(v40 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1CF680C9C((v8 > 1), v5 + 1, 1);
      }

      *(v40 + 16) = v5 + 1;
      *(v40 + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v9 = sub_1CF9E6C18();
  v11 = v10;
  v3, v10, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](v9, v11);
  v11, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v3, v25, v26, v27, v28, v29, v30, v31;
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v32, v33, v34, v35, v36, v37, v38;
  return 0;
}

uint64_t sub_1CF3552CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  *(inited + 32) = xmmword_1CFA02F50;
  v1 = sub_1CF3550D4(inited);
  swift_setDeallocating();
  return v1;
}

uint64_t sub_1CF355370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[7] = a7;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v10 = *(a7 + 32);
  result = v10(sub_1CF355E00, v12, a4, a7);
  if (!v7)
  {
    v10(sub_1CF347180, 0, a4, a7);
    v10(sub_1CF34719C, 0, a4, a7);
    v10(sub_1CF3471B8, 0, a4, a7);
    v10(sub_1CF3569AC, 0, a4, a7);
    return v10(sub_1CF3471D4, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF3554E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFA02F60;
  *(inited + 32) = xmmword_1CFA02F70;
  *(inited + 48) = xmmword_1CFA02F80;
  *(inited + 64) = 1003;
  v1 = sub_1CF3550D4(inited);
  swift_setDeallocating();
  return v1;
}

uint64_t sub_1CF355598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = 501;
  v1 = sub_1CF3550D4(inited);
  swift_setDeallocating();
  return v1;
}

uint64_t sub_1CF35563C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA429C0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x444E41202020200ALL, 0xE900000000000020);
  v10 = sub_1CF3554E0();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0x2820524F20200A29, 0xE800000000000000);
  v20 = sub_1CF3552CC();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA429E0);
  v30 = sub_1CF9E7F98();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0x20200A2930203D20, 0xEC0000002820524FLL);
  v40 = sub_1CF355598();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA429E0);
  v50 = sub_1CF9E7F98();
  v52 = v51;
  MEMORY[0x1D3868CC0](v50);
  v52, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA42A10);
  v60 = sub_1CF9E7F98();
  v62 = v61;
  MEMORY[0x1D3868CC0](v60);
  v62, v63, v64, v65, v66, v67, v68, v69;
  MEMORY[0x1D3868CC0](0x292930203D20, 0xE600000000000000);
  return 0;
}

uint64_t sub_1CF3558D8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x20200A4553414328, 0xEE0028204E454857);
  v0 = sub_1CF355598();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA429E0);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0x4854202930203D20, 0xEF202020200A4E45);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xA45534C4520200ALL, 0xEC00000020202020);
  v30 = sub_1CF9E7F98();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0x29444E450ALL, 0xE500000000000000);
  return 0;
}

uint64_t sub_1CF355AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF3569B0, 0, a4, a7, a5, a6);
  if (!v7)
  {
    return (v10)(sub_1CF3569B4, 0, a4, a7);
  }

  return result;
}

unint64_t sub_1CF355B94(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a3 & 1) != 0 || (a5)
  {
    return 0xD000000000000031;
  }

  sub_1CF9E7948();
  0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
  v16 = [a1 bindLongParameter_];
  v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v18;

  MEMORY[0x1D3868CC0](v17, v19);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA42500);
  v27 = [a1 bindLongParameter_];
  v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v30 = v29;

  MEMORY[0x1D3868CC0](v28, v30);
  v30, v31, v32, v33, v34, v35, v36, v37;
  return 0xD000000000000012;
}

uint64_t sub_1CF355D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF34FEFC, 0, a4, a7, a5, a6);
  if (!v7)
  {
    (v10)(sub_1CF35005C, 0, a4, a7);
    return (v10)(sub_1CF350244, 0, a4, a7);
  }

  return result;
}

unint64_t sub_1CF355E48()
{
  result = qword_1EC4BF7C8;
  if (!qword_1EC4BF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF7C8);
  }

  return result;
}

uint64_t sub_1CF355E9C(uint64_t a1)
{
  v2 = type metadata accessor for FPDownloadSchedulerFastPassState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF355EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FPDownloadSchedulerFastPassState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF355F5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1CF35607C(uint64_t result)
{
  if (result)
  {
    return sub_1CF058CE4();
  }

  return result;
}

void sub_1CF35630C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);
  sub_1CF3460B0(v3, v1, v2);
}

unint64_t sub_1CF356374()
{
  result = qword_1EDEAB610;
  if (!qword_1EDEAB610)
  {
    sub_1CEFD57E0(255, &qword_1EDEAED70, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB610);
  }

  return result;
}

unint64_t sub_1CF356504()
{
  result = qword_1EC4BF808;
  if (!qword_1EC4BF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF808);
  }

  return result;
}

unint64_t sub_1CF35655C()
{
  result = qword_1EC4BF810;
  if (!qword_1EC4BF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF810);
  }

  return result;
}

unint64_t sub_1CF3565F8()
{
  result = qword_1EC4BF828;
  if (!qword_1EC4BF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF828);
  }

  return result;
}

unint64_t sub_1CF356650()
{
  result = qword_1EC4BF830;
  if (!qword_1EC4BF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF830);
  }

  return result;
}

unint64_t sub_1CF3566D0()
{
  result = qword_1EC4BF840;
  if (!qword_1EC4BF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF840);
  }

  return result;
}

unint64_t sub_1CF356724()
{
  result = qword_1EC4BF848;
  if (!qword_1EC4BF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF848);
  }

  return result;
}

uint64_t sub_1CF3567A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF3567E0()
{
  result = qword_1EC4BF850;
  if (!qword_1EC4BF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF850);
  }

  return result;
}

unint64_t sub_1CF356834()
{
  result = qword_1EC4BF858;
  if (!qword_1EC4BF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF858);
  }

  return result;
}

unint64_t sub_1CF35688C()
{
  result = qword_1EC4BF860;
  if (!qword_1EC4BF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF860);
  }

  return result;
}

unint64_t sub_1CF3568E4()
{
  result = qword_1EC4BF868;
  if (!qword_1EC4BF868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF868);
  }

  return result;
}

unint64_t sub_1CF35693C()
{
  result = qword_1EC4BF870;
  if (!qword_1EC4BF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF870);
  }

  return result;
}

uint64_t sub_1CF3569D8(unsigned __int8 a1)
{
  sub_1CF9E81D8();
  v2 = 0xE700000000000000;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  if (a1 != 4)
  {
    v4 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xE900000000000074;
  if (a1 != 1)
  {
    v5 = 0xEC000000746E6574;
  }

  if (a1)
  {
    v2 = v5;
  }

  if (a1 <= 2u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  sub_1CF9E69C8();
  v6, v7, v8, v9, v10, v11, v12, v13;
  return sub_1CF9E8228();
}

void sub_1CF356AF8(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0xE600000000000000;
  if (v2 != 4)
  {
    v5 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  v6 = 0xE900000000000074;
  if (v2 != 1)
  {
    v6 = 0xEC000000746E6574;
  }

  if (*v1)
  {
    v3 = v6;
  }

  if (*v1 <= 2u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  sub_1CF9E69C8();

  v7, v8, v9, v10, v11, v12, v13, v14;
}

unint64_t sub_1CF356BF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF358884(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1CF356C24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64695F656C6966;
  v5 = 0xE800000000000000;
  v6 = 0x6E6F697461636F6CLL;
  v7 = 0xE600000000000000;
  v8 = 0x6874676E656CLL;
  if (v2 != 4)
  {
    v8 = 0x7367616C66;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6E756F635F6E6567;
  if (v2 != 1)
  {
    v10 = 0x6E6F635F74736574;
    v9 = 0xEC000000746E6574;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1CF356CF8()
{
  v1 = *v0;
  v2 = 0x64695F656C6966;
  v3 = 0x6E6F697461636F6CLL;
  v4 = 0x6874676E656CLL;
  if (v1 != 4)
  {
    v4 = 0x7367616C66;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E756F635F6E6567;
  if (v1 != 1)
  {
    v5 = 0x6E6F635F74736574;
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

uint64_t sub_1CF356DB8(unsigned __int8 a1, id a2)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      if (*(v2 + 48))
      {
        v5 = -1;
      }

      else
      {
        v5 = *(v2 + 32);
      }
    }

    else
    {
      if (a1 != 4)
      {
        v6 = [a2 bindUnsignedLongParameter_];
        goto LABEL_19;
      }

      if (*(v2 + 48))
      {
        v5 = -1;
      }

      else
      {
        v5 = *(v2 + 40);
      }
    }

    v6 = [a2 bindLongParameter_];
LABEL_19:
    v8 = v6;
    goto LABEL_23;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      if (*(v2 + 12))
      {
        v4 = 0;
      }

      else
      {
        v4 = sub_1CF9E8258();
      }
    }

    else if (*(v2 + 24) >> 60 == 15)
    {
      v4 = 0;
    }

    else
    {
      v4 = sub_1CF9E5B48();
    }

    v8 = [a2 bindObjectParameter_];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_1CF9E8268();
    v8 = [a2 bindObjectParameter_];
  }

LABEL_23:
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v9;
}

void sub_1CF356F54(id a1@<X1>, unsigned __int8 a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 > 2u)
  {
    if (a2 == 3 || a2 == 4)
    {
      v8 = [a1 longLongAtIndex_];
      v9 = MEMORY[0x1E69E7360];
    }

    else
    {
      if ([a1 isNullAtIndex_])
      {
LABEL_13:
        *a4 = 0u;
        *(a4 + 16) = 0u;
        return;
      }

      v8 = [a1 unsignedIntegerAtIndex_];
      v9 = MEMORY[0x1E69E6810];
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (([a1 isNullAtIndex_] & 1) == 0)
        {
          v7 = [a1 unsignedIntAtIndex_];
          *(a4 + 24) = MEMORY[0x1E69E7668];
          *a4 = v7;
          return;
        }
      }

      else if (([a1 isNullAtIndex_] & 1) == 0)
      {
        v11 = [a1 dataAtIndex_];
        v12 = sub_1CF9E5B88();
        v14 = v13;

        *(a4 + 24) = MEMORY[0x1E6969080];
        *a4 = v12;
        *(a4 + 8) = v14;
        return;
      }

      goto LABEL_13;
    }

    v8 = [a1 unsignedLongLongAtIndex_];
    v9 = MEMORY[0x1E69E76D8];
  }

  *(a4 + 24) = v9;
  *a4 = v8;
}

uint64_t sub_1CF3570D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v21 = 2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A0, &unk_1CFA03A10);
  result = sub_1CF0230B4(&v21, v7, a1, v7, a2);
  if (!v3)
  {
    v21 = 3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4F0, &unk_1CF9FEF40);
    sub_1CF0230B4(&v21, v9, a1, v9, a2);
    if (v19)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v10 = v18;
      v21 = 4;
      sub_1CF0230B4(&v21, v9, a1, v9, a2);
      if (v19 != 1)
      {
        v20 = 0;
        v11 = v18;
LABEL_7:
        v21 = 5;
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9A0, &qword_1CF9FEF38);
        sub_1CF0230B4(&v21, v12, a1, v12, a2);
        v17 = v11;
        if (v19)
        {
          v13 = 0;
        }

        else
        {
          v13 = v18;
        }

        v21 = 1;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE480, &qword_1CF9FEF30);
        result = sub_1CF0230B4(&v21, v14, a1, v14, a2);
        v16 = v13;
        if (BYTE4(v18))
        {
          v15 = 0;
        }

        else
        {
          v15 = v18;
        }

        if (v19 >> 60 == 15)
        {
          v21 = 0;
          result = sub_1CF0230B4(&v21, MEMORY[0x1E69E76D8], a1, MEMORY[0x1E69E76D8], a2);
          *a3 = v18;
          *(a3 + 8) = v15;
          *(a3 + 12) = BYTE4(v18);
          *(a3 + 16) = xmmword_1CF9F4E20;
        }

        else
        {
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 12) = 1;
          *(a3 + 16) = v18;
          *(a3 + 24) = v19;
        }

        *(a3 + 32) = v10;
        *(a3 + 40) = v17;
        *(a3 + 48) = v20;
        *(a3 + 56) = v16;
        return result;
      }

      v10 = 0;
      v11 = 0;
    }

    v20 = 1;
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1CF3573DC(uint64_t a1)
{
  result = sub_1CF357404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF357404()
{
  result = qword_1EC4BF880;
  if (!qword_1EC4BF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BF880);
  }

  return result;
}

unint64_t sub_1CF3574F8()
{
  result = qword_1EDEADD18;
  if (!qword_1EDEADD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEADD18);
  }

  return result;
}

unint64_t sub_1CF357550()
{
  result = qword_1EDEAC2A8;
  if (!qword_1EDEAC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC2A8);
  }

  return result;
}

uint64_t sub_1CF3575E8(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 3)
    {
      v19 = 0x5F746E65746E6F63;
      if (a1 <= 0xC2u)
      {
        if (a1 != 193)
        {
          v19 = 0xD000000000000014;
        }

        if (a1 == 192)
        {
          return 0xD000000000000010;
        }

        else
        {
          return v19;
        }
      }

      else
      {
        v20 = 0x765F6E69616D6F64;
        if (a1 == 197)
        {
          v20 = 0xD000000000000012;
        }

        if (a1 == 195)
        {
          v19 = 0xD000000000000013;
        }

        if (a1 <= 0xC4u)
        {
          return v19;
        }

        else
        {
          return v20;
        }
      }
    }

    else if (a1 > 0x83u)
    {
      v25 = 0xD00000000000001FLL;
      if (a1 != 134)
      {
        v25 = 0x656C69665F736676;
      }

      v26 = 0x5F746E65746E6F63;
      if (a1 != 132)
      {
        v26 = 0xD000000000000012;
      }

      if (a1 <= 0x85u)
      {
        return v26;
      }

      else
      {
        return v25;
      }
    }

    else
    {
      v23 = 25705;
      v24 = 0x5F64657461647075;
      if (a1 != 130)
      {
        v24 = 0xD000000000000016;
      }

      if (a1 != 128)
      {
        v23 = 0x6E6F6974656C6564;
      }

      if (a1 <= 0x81u)
      {
        return v23;
      }

      else
      {
        return v24;
      }
    }
  }

  else
  {
    if (a1 >> 6)
    {
      v34 = 0x696C756465686373;
      v22 = a1 & 0x3F;
      if ((a1 & 0x3F) != 0)
      {
        if (v22 == 1)
        {
          v17 = 0xD000000000000010;
        }

        else
        {
          v17 = 0xD000000000000012;
        }

        if (v22 == 1)
        {
          v18 = 0x80000001CFA2C3F0;
        }

        else
        {
          v18 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v18 = 0xE500000000000000;
        v17 = 0x6574617473;
      }
    }

    else
    {
      sub_1CF9E7948();
      0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
      v34 = 0xD000000000000011;
      v9 = 0xE700000000000000;
      v10 = 0x64695F656C6966;
      v11 = 0xE800000000000000;
      v12 = 0x6E6F697461636F6CLL;
      v13 = 0xE600000000000000;
      v14 = 0x6874676E656CLL;
      if (a1 != 4)
      {
        v14 = 0x7367616C66;
        v13 = 0xE500000000000000;
      }

      if (a1 != 3)
      {
        v12 = v14;
        v11 = v13;
      }

      v15 = 0xE900000000000074;
      v16 = 0x6E756F635F6E6567;
      if (a1 != 1)
      {
        v16 = 0x6E6F635F74736574;
        v15 = 0xEC000000746E6574;
      }

      if (a1)
      {
        v10 = v16;
        v9 = v15;
      }

      if (a1 <= 2u)
      {
        v17 = v10;
      }

      else
      {
        v17 = v12;
      }

      if (a1 <= 2u)
      {
        v18 = v9;
      }

      else
      {
        v18 = v11;
      }
    }

    MEMORY[0x1D3868CC0](v17, v18);
    v18, v27, v28, v29, v30, v31, v32, v33;
    return v34;
  }
}

void *sub_1CF357A30(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
  sub_1CEFCCCEC(&qword_1EC4BF898, &qword_1EC4BE190, &qword_1CFA038F0, MEMORY[0x1E69E6328]);
  sub_1CF9E6E08();
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCastMetatype())
  {
    sub_1CF9E6E08();
  }

  else
  {
    sub_1CF9E6E18();
  }

  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  if (swift_dynamicCastMetatype())
  {
    sub_1CF9E6E08();
  }

  else
  {
    sub_1CF9E6E18();
  }

  v5 = sub_1CF1CB300();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE168, &unk_1CF9FCA90);
  v7 = sub_1CEFCCCEC(&qword_1EC4BF890, &qword_1EC4BE168, &unk_1CF9FCA90, MEMORY[0x1E69E6340]);
  sub_1CF054A5C(sub_1CF358CAC, 0, v6, &type metadata for ItemReconciliationHalfSQLFields, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  v5, v9, v10, v11, v12, v13, v14, v15;
  sub_1CF9E6E08();
  v16 = sub_1CF03D7E8();
  v24 = *(v16 + 2);
  v44 = v16;
  if (v24)
  {
    v25 = (v16 + 32);
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v28 = *v25++;
      v27 = v28;
      if (!v28)
      {
        break;
      }

      if (v27 == 1)
      {
        v29 = 0x80000001CFA2C3F0;
        goto LABEL_15;
      }

      0x80000001CFA2C410, v17, v18, v19, v20, v21, v22, v23;
LABEL_10:
      if (!--v24)
      {
        goto LABEL_21;
      }
    }

    v29 = 0xE500000000000000;
LABEL_15:
    v30 = sub_1CF9E8048();
    v29, v31, v32, v33, v34, v35, v36, v37;
    if ((v30 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CF680BAC(0, *(v26 + 16) + 1, 1);
      }

      v39 = *(v26 + 16);
      v38 = *(v26 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1CF680BAC((v38 > 1), v39 + 1, 1);
      }

      *(v26 + 16) = v39 + 1;
      *(v26 + v39 + 32) = v27;
    }

    goto LABEL_10;
  }

LABEL_21:
  v44, v17, v18, v19, v20, v21, v22, v23;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE170, qword_1CFA03A20);
  v41 = sub_1CEFCCCEC(&qword_1EC4BE2D0, &qword_1EC4BE170, qword_1CFA03A20, MEMORY[0x1E69E6340]);
  sub_1CF054A5C(sub_1CEFEF01C, 0, v40, &type metadata for ItemReconciliationHalfSQLFields, MEMORY[0x1E69E73E0], v41, MEMORY[0x1E69E7410], v42);

  sub_1CF9E6E08();
  return &unk_1F4BEB178;
}

void *sub_1CF357F30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1CF357A30(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1CF357F60(unsigned int a1)
{
  v1 = (a1 >> 4) & 3;
  if (v1 <= 1)
  {
    if (v1)
    {
      v17 = 6254694;
      LOBYTE(a1) = a1 & 0xCF;
    }

    else
    {
      v17 = 6255462;
    }

    v3 = sub_1CF3575E8(a1);
    v4 = v5;
LABEL_14:
    MEMORY[0x1D3868CC0](v3, v5);
    v4, v6, v7, v8, v9, v10, v11, v12;
    return v17;
  }

  if (v1 == 2)
  {
    v17 = 0x696C756465686373;
    v2 = (a1 & 1) == 0;
    if (a1)
    {
      v3 = 0x6D617473656D6974;
    }

    else
    {
      v3 = 0x797469726F697270;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE900000000000070;
    }

    v5 = v4;
    goto LABEL_14;
  }

  if (a1 <= 0x32u)
  {
    v16 = 0x6E6964696C6C6F63;
    if (a1 != 49)
    {
      v16 = 0x5F73695F6D657469;
    }

    if (a1 == 48)
    {
      return 1684957547;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    v14 = 0xD000000000000015;
    if (a1 != 53)
    {
      v14 = 0xD000000000000013;
    }

    v15 = 0xD000000000000020;
    if (a1 == 51)
    {
      v15 = 0x6168635F7473616CLL;
    }

    if (a1 <= 0x34u)
    {
      return v15;
    }

    else
    {
      return v14;
    }
  }
}

uint64_t sub_1CF358160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_1CF9E81D8();
  a3(v7, v5);
  return sub_1CF9E8228();
}

uint64_t sub_1CF3581C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ItemReconciliationHalf(0, a1, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1CF01E0C4(v6, WitnessTable);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
  v44 = MEMORY[0x1E69E6340];
  v10 = sub_1CEFCCCEC(&unk_1EC4BF8A0, &qword_1EC4BE190, &qword_1CFA038F0, MEMORY[0x1E69E6340]);
  v12 = sub_1CF054A5C(sub_1CF358CAC, 0, v9, &type metadata for ItemReconciliationSQLFields, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  v8, v13, v14, v15, v16, v17, v18, v19;
  v45 = v12;
  v21 = type metadata accessor for ItemReconciliationHalf(0, a2, a4, v20);
  v22 = swift_getWitnessTable();
  v23 = sub_1CF01E0C4(v21, v22);
  v24 = MEMORY[0x1E69E6328];
  sub_1CEFCCCEC(&qword_1EC4BF898, &qword_1EC4BE190, &qword_1CFA038F0, MEMORY[0x1E69E6328]);
  sub_1CF9E6B88();
  v23, v25, v26, v27, v28, v29, v30, v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE188, &qword_1CFA03800);
  sub_1CEFCCCEC(&unk_1EDEA37B0, &qword_1EC4BE188, &qword_1CFA03800, v24);
  sub_1CF9E6E08();
  sub_1CF9E6E08();
  v32 = sub_1CF1CB510();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE178, &unk_1CF9FCAA0);
  v34 = sub_1CEFCCCEC(&qword_1EC4BE2C8, &qword_1EC4BE178, &unk_1CF9FCAA0, v44);
  sub_1CF054A5C(sub_1CF023FE0, 0, v33, &type metadata for ItemReconciliationSQLFields, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v35);
  v32, v36, v37, v38, v39, v40, v41, v42;
  sub_1CF9E6E08();
  return v45;
}

unsigned __int8 *sub_1CF3584B4@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 0xC6)
  {
    v3 = 56;
  }

  else
  {
    v3 = v2 | 0x10;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1CF3584D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF3581C0(a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  return result;
}

unint64_t sub_1CF358534()
{
  result = qword_1EDEAC2B8;
  if (!qword_1EDEAC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC2B8);
  }

  return result;
}

uint64_t sub_1CF358588(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF358638()
{
  result = qword_1EDEABF20;
  if (!qword_1EDEABF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEABF20);
  }

  return result;
}

unint64_t sub_1CF35868C()
{
  result = qword_1EDEABF30;
  if (!qword_1EDEABF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEABF30);
  }

  return result;
}

unint64_t sub_1CF3586E4()
{
  result = qword_1EDEABF28;
  if (!qword_1EDEABF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEABF28);
  }

  return result;
}

uint64_t sub_1CF358738(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CF3587A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF3587DC()
{
  result = qword_1EDEADD10;
  if (!qword_1EDEADD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEADD10);
  }

  return result;
}

unint64_t sub_1CF358830()
{
  result = qword_1EDEADD20;
  if (!qword_1EDEADD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEADD20);
  }

  return result;
}

unint64_t sub_1CF358884(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E7C78();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF3588D0(uint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v4 = a1;
  }

  *(v4 + 16) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for ItemReconciliationHalfSQLFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1D)
  {
    goto LABEL_17;
  }

  if (a2 + 227 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 227) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 227;
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

      return (*a1 | (v4 << 8)) - 227;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 227;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ItemReconciliationHalfSQLFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 227 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 227) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1D)
  {
    v4 = 0;
  }

  if (a2 > 0x1C)
  {
    v5 = ((a2 - 29) >> 8) + 1;
    *result = a2 - 29;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF358A64(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 & 7 | (8 * (v1 >> 6))) - 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_1CF358A98(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = ((a2 - 2) & 7 | (((a2 - 2) >> 3) << 6)) ^ 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemReconciliationSQLFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 5)
  {
    goto LABEL_17;
  }

  if (a2 + 251 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 251) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 251;
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

      return (*a1 | (v4 << 8)) - 251;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 251;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 4 | (*a1 >> 4) & 3) ^ 7;
  if (v6 >= 4)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ItemReconciliationSQLFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 251 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 251) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 5)
  {
    v4 = 0;
  }

  if (a2 > 4)
  {
    v5 = ((a2 - 5) >> 8) + 1;
    *result = a2 - 5;
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
    *result = (16 * ((3 * a2) & 3)) | 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CF358C34(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = (v1 >> 4) & 3;
  v3 = (v1 & 7 | (8 * (v1 >> 6))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_1CF358C68(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xC7 | (16 * a2);
  }

  else
  {
    *result = (8 * (a2 - 3)) & 0xC0 | (a2 - 3) & 7 | 0x30;
  }

  return result;
}

void sub_1CF358D60(uint64_t result, void *a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return;
  }

  for (i = (result + 40); ; i += 2)
  {
    v13 = *i;
    v14 = sub_1CF9E6958();
    v16 = v15;
    swift_beginAccess();
    v17 = *a2;
    v18 = *(*a2 + 16);

    if (v18)
    {
      v19 = sub_1CEFE4328(v14, v16);
      if (v20)
      {
        v21 = *(*(v17 + 56) + 8 * v19);
        swift_endAccess();
        v22 = *a3;
        if (*a3 <= v21)
        {
          v22 = v21;
        }

        v72 = v22;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *a2;
        v74 = *a2;
        *a2 = 0x8000000000000000;
        v25 = v14;
        v26 = sub_1CEFE4328(v14, v16);
        v34 = *(v24 + 16);
        v35 = (v27 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_34;
        }

        v38 = v27;
        if (*(v24 + 24) >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = v3;
            v65 = v16;
            v66 = v13;
            v67 = v26;
            sub_1CF7D012C();
            v26 = v67;
            v13 = v66;
            v16 = v65;
            v3 = v64;
            v62 = v74;
            if (v38)
            {
              goto LABEL_24;
            }

            goto LABEL_28;
          }
        }

        else
        {
          sub_1CF7C55FC(v37, isUniquelyReferenced_nonNull_native);
          v26 = sub_1CEFE4328(v25, v16);
          if ((v38 & 1) != (v27 & 1))
          {
            goto LABEL_36;
          }
        }

        v62 = v74;
        if (v38)
        {
LABEL_24:
          *(v62[7] + 8 * v26) = v72;
          v16, v27, v28, v29, v30, v31, v32, v33;
LABEL_30:
          *a2 = v62;
          swift_endAccess();
          goto LABEL_5;
        }

LABEL_28:
        v62[(v26 >> 6) + 8] |= 1 << v26;
        v68 = (v62[6] + 16 * v26);
        *v68 = v25;
        v68[1] = v16;
        *(v62[7] + 8 * v26) = v72;
        v69 = v62[2];
        v36 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v36)
        {
          goto LABEL_35;
        }

        v62[2] = v70;
        goto LABEL_30;
      }
    }

    v73 = v3;
    v39 = v13;
    swift_endAccess();
    v40 = *a3;
    swift_beginAccess();
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v42 = *a2;
    v75 = *a2;
    *a2 = 0x8000000000000000;
    v43 = v16;
    v44 = v14;
    v45 = v43;
    v46 = sub_1CEFE4328(v14, v43);
    v54 = *(v42 + 16);
    v55 = (v47 & 1) == 0;
    v36 = __OFADD__(v54, v55);
    v56 = v54 + v55;
    if (v36)
    {
      break;
    }

    v57 = v47;
    if (*(v42 + 24) < v56)
    {
      sub_1CF7C55FC(v56, v41);
      v46 = sub_1CEFE4328(v44, v45);
      if ((v57 & 1) != (v47 & 1))
      {
        goto LABEL_36;
      }

LABEL_19:
      v58 = v75;
      if ((v57 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_3;
    }

    if (v41)
    {
      goto LABEL_19;
    }

    v63 = v46;
    sub_1CF7D012C();
    v46 = v63;
    v58 = v75;
    if ((v57 & 1) == 0)
    {
LABEL_20:
      v58[(v46 >> 6) + 8] |= 1 << v46;
      v59 = (v58[6] + 16 * v46);
      *v59 = v44;
      v59[1] = v45;
      *(v58[7] + 8 * v46) = v40;
      v60 = v58[2];
      v36 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v36)
      {
        goto LABEL_33;
      }

      v58[2] = v61;
      goto LABEL_4;
    }

LABEL_3:
    *(v58[7] + 8 * v46) = v40;
    v45, v47, v48, v49, v50, v51, v52, v53;
LABEL_4:
    *a2 = v58;
    swift_endAccess();
    v13 = v39;
    v3 = v73;
LABEL_5:
    v13, v6, v7, v8, v9, v10, v11, v12;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_1CF9E8108();
  __break(1u);
}

uint64_t sub_1CF359224(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001BLL;
    if (a1 == 8)
    {
      v5 = 0x776F44796C696164;
    }

    if (a1 == 7)
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a1 <= 6u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x666552736465656ELL;
    v2 = 0xD00000000000001ALL;
    if (a1 != 3)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 == 2)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = v2;
    }

    if (a1)
    {
      v1 = 0x726665527473616CLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1CF359398(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF9C8, &unk_1CFA03F60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF3644D4();
  sub_1CF9E82A8();
  LOBYTE(v15) = 0;
  sub_1CF9E7EC8();
  if (!v2)
  {
    v9 = *(v3 + 16);
    v15 = *(v3 + 8);
    v16 = v9;
    v18 = 1;
    sub_1CF1C5234();
    sub_1CF9E7E68();
    LOBYTE(v15) = 2;
    sub_1CF9E7EE8();
    v10 = *(v3 + 40);
    v15 = *(v3 + 32);
    v16 = v10;
    v18 = 3;
    sub_1CF9E7E68();
    v11 = *(v3 + 56);
    v12 = *(v3 + 57);
    v15 = *(v3 + 48);
    v16 = v11;
    v17 = v12;
    v18 = 4;
    sub_1CF36466C();
    sub_1CF9E7E68();
    v13 = type metadata accessor for BackgroundDownloaderPacerState(0);
    LOBYTE(v15) = 5;
    sub_1CF9E5CF8();
    sub_1CF364624(&qword_1EDEAB3D0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CF9E7E68();
    v15 = *(v3 + v13[10]);
    v18 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF970, qword_1CFA03BE0);
    sub_1CF3646C0(&qword_1EDEA3878, sub_1CF364744, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    sub_1CF9E7E68();
    LOBYTE(v15) = 7;
    sub_1CF9E7E68();
    v15 = *(v3 + v13[12]);
    v18 = 8;
    sub_1CEFD57E0(0, &qword_1EDEA3550, off_1E83BC5C8);
    sub_1CF3645D0(&qword_1EDEA3568, &protocol conformance descriptor for FPDDailyTelemetryCounter);
    sub_1CF9E7E68();
    v15 = *(v3 + v13[13]);
    v18 = 9;
    type metadata accessor for SpeculativeDownloadsPreventReasonsTelem();
    sub_1CF364624(&qword_1EDEA48C0, type metadata accessor for SpeculativeDownloadsPreventReasonsTelem, &protocol conformance descriptor for FPDDailyTelemetryCounter);
    sub_1CF9E7E68();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CF359820@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v35 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF9C0, &qword_1CFA03F58);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v35 - v6;
  v8 = type metadata accessor for BackgroundDownloaderPacerState(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 1;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *(v11 + 3) = 0;
  v41 = v11 + 24;
  *(v11 + 4) = 0;
  v11[40] = 1;
  *(v11 + 6) = 0;
  *(v11 + 28) = 256;
  v12 = v9[11];
  v13 = sub_1CF9E5CF8();
  v14 = *(*(v13 - 8) + 56);
  v40 = v12;
  v14(&v11[v12], 1, 1, v13);
  v39 = v9[12];
  *&v11[v39] = 0;
  v15 = v9[13];
  v14(&v11[v15], 1, 1, v13);
  v16 = v9[14];
  *&v11[v16] = 0;
  v17 = v9[15];
  v47 = v11;
  *&v11[v17] = 0;
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  sub_1CF3644D4();
  v45 = v7;
  v18 = v46;
  sub_1CF9E8298();
  if (v18)
  {
    v24 = v47;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v34 = v24;
  }

  else
  {
    v46 = v15;
    v19 = v43;
    v20 = v44;
    v35 = v17;
    v36 = v16;
    v22 = v41;
    v21 = v42;
    LOBYTE(v49) = 0;
    v23 = sub_1CF9E7D58();
    v26 = v47;
    *v47 = v23 & 1;
    v52 = 1;
    sub_1CF1C51E0();
    sub_1CF9E7CF8();
    v27 = v50;
    *(v26 + 1) = v49;
    v26[16] = v27;
    LOBYTE(v49) = 2;
    *v22 = sub_1CF9E7D78();
    v52 = 3;
    sub_1CF9E7CF8();
    v28 = v50;
    *(v26 + 4) = v49;
    v26[40] = v28;
    v52 = 4;
    sub_1CF364528();
    sub_1CF9E7CF8();
    v29 = v50;
    v30 = v51;
    *(v26 + 6) = v49;
    v26[56] = v29;
    v26[57] = v30;
    LOBYTE(v49) = 5;
    sub_1CF364624(&unk_1EDEAB3A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1CF9E7CF8();
    sub_1CEFE4804(v19, &v26[v40]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF970, qword_1CFA03BE0);
    v52 = 6;
    sub_1CF3646C0(&unk_1EDEA3868, sub_1CF36457C, MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1CF9E7CF8();
    v31 = v38;
    *&v26[v39] = v49;
    LOBYTE(v49) = 7;
    sub_1CF9E7CF8();
    sub_1CEFE4804(v31, &v26[v46]);
    sub_1CEFD57E0(0, &qword_1EDEA3550, off_1E83BC5C8);
    v52 = 8;
    sub_1CF3645D0(&unk_1EDEA3558, &protocol conformance descriptor for FPDDailyTelemetryCounter);
    sub_1CF9E7CF8();
    *&v26[v36] = v49;
    type metadata accessor for SpeculativeDownloadsPreventReasonsTelem();
    v52 = 9;
    sub_1CF364624(&unk_1EDEA48B0, type metadata accessor for SpeculativeDownloadsPreventReasonsTelem, &protocol conformance descriptor for FPDDailyTelemetryCounter);
    v32 = v45;
    sub_1CF9E7CF8();
    (*(v21 + 8))(v32, v20);
    v33 = v47;
    *&v47[v35] = v49;
    sub_1CF3649E8(v33, v37, type metadata accessor for BackgroundDownloaderPacerState);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v34 = v33;
  }

  return sub_1CF364A50(v34, type metadata accessor for BackgroundDownloaderPacerState);
}

uint64_t sub_1CF359F00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF36543C(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF359F34(uint64_t a1)
{
  v2 = sub_1CF3644D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}