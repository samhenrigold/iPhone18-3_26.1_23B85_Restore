uint64_t GraphEntityRanker.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  v2 = sub_22F73F9B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GraphEntityRanker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  v2 = sub_22F73F9B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22F319078(void *a1)
{
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3728, &qword_22F785C18);
  MEMORY[0x28223BE20](v175);
  v174 = &v154[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v172 = &v154[-v4];
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3730, &qword_22F785C20);
  MEMORY[0x28223BE20](v173);
  v166 = &v154[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v171 = &v154[-v7];
  v8 = sub_22F73F270();
  v176 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v179 = &v154[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v189 = sub_22F73F990();
  v191 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v197 = &v154[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v195 = sub_22F73F9B0();
  v199 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v188 = &v154[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v12 - 8);
  v168 = &v154[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v177 = &v154[-v15];
  MEMORY[0x28223BE20](v16);
  v180 = &v154[-v17];
  MEMORY[0x28223BE20](v18);
  v186 = &v154[-v19];
  MEMORY[0x28223BE20](v20);
  v22 = &v154[-v21];
  MEMORY[0x28223BE20](v23);
  v25 = &v154[-v24];
  MEMORY[0x28223BE20](v26);
  v28 = &v154[-v27];
  v29 = sub_22F73F690();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v167 = &v154[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v178 = &v154[-v33];
  MEMORY[0x28223BE20](v34);
  v181 = &v154[-v35];
  MEMORY[0x28223BE20](v36);
  v190 = &v154[-v37];
  MEMORY[0x28223BE20](v38);
  v200 = &v154[-v39];
  MEMORY[0x28223BE20](v40);
  v42 = &v154[-v41];
  v163 = v43;
  *&v45 = MEMORY[0x28223BE20](v44).n128_u64[0];
  v198 = &v154[-v46];
  v47 = [a1 birthdayDate];
  v164 = a1;
  v162 = v42;
  if (v47)
  {
    v48 = v47;
    sub_22F73F640();

    v49 = v30[4];
    v49(v25, v42, v29);
    v50 = v30[7];
    v50(v25, 0, 1, v29);
    v49(v28, v25, v29);
    v51 = v30;
    v50(v28, 0, 1, v29);
    v52 = (v30 + 6);
    v53 = v30[6];
    v54 = v52 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  }

  else
  {
    v182 = v8;
    v55 = v30;
    v56 = v30[7];
    v57 = 1;
    v56(v25, 1, 1, v29);
    v58 = [a1 potentialBirthdayDate];
    if (v58)
    {
      v59 = v58;
      sub_22F73F640();

      v57 = 0;
    }

    v56(v22, v57, 1, v29);
    sub_22F1207AC(v22, v28, &qword_27DAB0920, &qword_22F770B20);
    v51 = v30;
    v53 = v30[6];
    v54 = (v55 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v53(v25, 1, v29) != 1)
    {
      sub_22F120ADC(v25, &qword_27DAB0920, &qword_22F770B20);
    }

    v8 = v182;
  }

  v61 = v197;
  v60 = v198;
  if (v53(v28, 1, v29) == 1)
  {
    v62 = v28;
    return sub_22F120ADC(v62, &qword_27DAB0920, &qword_22F770B20);
  }

  v182 = v8;
  v63 = v51[4];
  v170 = v51 + 4;
  v169 = v63;
  v63(v60, v28, v29);
  sub_22F73F680();
  v161 = v51;
  v64 = v196;
  v65 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  v183 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  swift_beginAccess();
  v194 = v29;
  v66 = v199;
  v67 = v199 + 16;
  v193 = *(v199 + 16);
  v68 = v64 + v65;
  v69 = v188;
  v185 = v53;
  v184 = v54;
  v70 = v195;
  v193(v188, v68, v195);
  v71 = *MEMORY[0x277CC9988];
  v72 = v191;
  v73 = v191 + 104;
  v187 = *(v191 + 104);
  v155 = v71;
  v74 = v189;
  v187(v61);
  v156 = sub_22F73F9A0();
  v75 = *(v72 + 8);
  v75(v61, v74);
  v192 = *(v66 + 8);
  v192(v69, v70);
  v165 = v67;
  v193(v69, v196 + v183, v70);
  v157 = *MEMORY[0x277CC9940];
  v160 = v73;
  v187(v61);
  v76 = v186;
  sub_22F73F940();
  v77 = v74;
  v158 = v75;
  v159 = v72 + 8;
  v75(v61, v74);
  v199 = v66 + 8;
  v192(v69, v70);
  if (v185(v76, 1, v194) == 1)
  {
    v78 = v161[1];
    v79 = v194;
    v78(v200, v194);
    v78(v198, v79);
    v62 = v76;
    return sub_22F120ADC(v62, &qword_27DAB0920, &qword_22F770B20);
  }

  v80 = v194;
  v169(v190, v76, v194);
  v81 = v195;
  v82 = v196;
  v83 = v69;
  v193(v69, v196 + v183, v195);
  v84 = v197;
  v85 = v187;
  (v187)(v197, v157, v77);
  v86 = v180;
  sub_22F73F940();
  v87 = v86;
  v158(v84, v77);
  v192(v83, v81);
  if (v185(v86, 1, v80) == 1)
  {
    v88 = v86;
    v89 = v161[1];
    v90 = v194;
    v89(v190, v194);
    v89(v200, v90);
    v89(v198, v90);
    v62 = v88;
    return sub_22F120ADC(v62, &qword_27DAB0920, &qword_22F770B20);
  }

  v91 = v85;
  v169(v181, v87, v194);
  v92 = v183;
  v193(v83, v82 + v183, v195);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
  v93 = v82;
  v94 = v77;
  v95 = *(v191 + 72);
  v96 = (*(v191 + 80) + 32) & ~*(v191 + 80);
  v97 = v91;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_22F770DF0;
  v99 = v98 + v96;
  v97(v99, *MEMORY[0x277CC9998], v94);
  v97(v99 + v95, *MEMORY[0x277CC9968], v94);
  sub_22F3D97CC(v98);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v100 = v179;
  sub_22F73F860();

  v101 = v195;
  v192(v83, v195);
  sub_22F73F200();
  v193(v83, v93 + v92, v101);
  v102 = v197;
  (v187)(v197, *MEMORY[0x277CC9980], v94);
  sub_22F73F9A0();
  v103 = v158;
  v158(v102, v94);
  v192(v83, v101);
  sub_22F73F1E0();
  v193(v83, v196 + v92, v101);
  v104 = v200;
  v105 = v197;
  (v187)(v197, *MEMORY[0x277CC99A0], v94);
  sub_22F73F9A0();
  v103(v105, v94);
  v106 = v192;
  v192(v83, v101);
  sub_22F73F230();
  sub_22F73F970();
  v107 = v177;
  sub_22F73F920();
  v106(v83, v101);
  v108 = v194;
  if (v185(v107, 1, v194) == 1)
  {
    (*(v176 + 8))(v100, v182);
    v109 = v161[1];
    v109(v181, v108);
    v109(v190, v108);
    v109(v104, v108);
    v109(v198, v108);
LABEL_16:
    v62 = v107;
    return sub_22F120ADC(v62, &qword_27DAB0920, &qword_22F770B20);
  }

  v169(v178, v107, v108);
  v111 = sub_22F173D18();
  v112 = v190;
  v113 = v181;
  v191 = v111;
  result = sub_22F740DD0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v114 = v161;
  v115 = v161 + 2;
  v116 = v161[2];
  v117 = v172;
  (v116)(v172, v112, v108);
  v118 = v175;
  v119 = v117 + *(v175 + 48);
  v186 = v115;
  v180 = v116;
  (v116)(v119, v113, v108);
  v120 = v174;
  sub_22F322BBC(v117, v174);
  v121 = *(v118 + 48);
  v122 = v171;
  v123 = v169;
  v169(v171, v120, v108);
  v124 = v114[1];
  (v124)(&v120[v121], v108);
  sub_22F1207AC(v117, v120, &qword_27DAB3728, &qword_22F785C18);
  v123(v122 + *(v173 + 36), &v120[*(v118 + 48)], v108);
  v125 = v124;
  (v124)(v120, v108);
  v126 = v178;
  if ((sub_22F740DC0() & 1) == 0)
  {
    sub_22F120ADC(v122, &unk_27DAB3730, &qword_22F785C20);
    v128 = v179;
    goto LABEL_25;
  }

  v127 = sub_22F740DD0();
  sub_22F120ADC(v122, &unk_27DAB3730, &qword_22F785C20);
  v128 = v179;
  if ((v127 & 1) == 0)
  {
LABEL_25:
    (v124)(v126, v108);
    (*(v176 + 8))(v128, v182);
    (v124)(v181, v108);
    (v124)(v190, v108);
    (v124)(v200, v108);
    return (v124)(v198, v108);
  }

  sub_22F73F600();
  v129 = v190;
  v130 = v200;
  result = sub_22F740DD0();
  if ((result & 1) == 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v131 = v180;
  (v180)(v117, v129, v108);
  v132 = v175;
  v131(v117 + *(v175 + 48), v130, v108);
  v133 = v174;
  sub_22F322BBC(v117, v174);
  v171 = *(v132 + 48);
  v134 = v166;
  v135 = v169;
  v169(v166, v133, v108);
  (v124)(v133 + v171, v108);
  sub_22F1207AC(v117, v133, &qword_27DAB3728, &qword_22F785C18);
  v135(v134 + *(v173 + 36), v133 + *(v132 + 48), v108);
  (v124)(v133, v108);
  v136 = sub_22F740DC0();
  v137 = v126;
  v177 = v125;
  if (v136)
  {
    sub_22F740DD0();
  }

  sub_22F120ADC(v134, &unk_27DAB3730, &qword_22F785C20);
  v107 = v168;
  v138 = v158;
  v139 = v200;
  v140 = v188;
  v141 = v195;
  v193(v188, v196 + v183, v195);
  v142 = v197;
  v143 = v189;
  (v187)(v197, v155, v189);
  sub_22F73F940();
  v138(v142, v143);
  v192(v140, v141);
  if (v185(v107, 1, v108) == 1)
  {
    v144 = v177;
    (v177)(v137, v108);
    (*(v176 + 8))(v179, v182);
    v144(v181, v108);
    v144(v190, v108);
    v144(v139, v108);
    v144(v198, v108);
    goto LABEL_16;
  }

  v145 = v167;
  v146 = v169;
  v169(v167, v107, v108);
  v147 = swift_allocObject();
  *(v147 + 16) = 0;
  v148 = v162;
  (v180)(v162, v145, v108);
  v149 = (*(v161 + 80) + 16) & ~*(v161 + 80);
  v150 = (v163 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
  v151 = swift_allocObject();
  v146(v151 + v149, v148, v108);
  *(v151 + v150) = v147;
  aBlock[4] = sub_22F322C2C;
  aBlock[5] = v151;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F31AA18;
  aBlock[3] = &block_descriptor_169;
  v152 = _Block_copy(aBlock);

  [v164 enumerateMomentEdgesAndNodesUsingBlock_];
  _Block_release(v152);
  v153 = v177;
  (v177)(v167, v108);
  v153(v178, v108);
  (*(v176 + 8))(v179, v182);
  v153(v181, v108);
  v153(v190, v108);
  v153(v200, v108);
  v153(v198, v108);
  swift_beginAccess();
}

void sub_22F31A8E0(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 localEndDate];
  sub_22F73F640();

  v14 = sub_22F73F5C0();
  (*(v9 + 8))(v12, v8);
  if (v14)
  {
    swift_beginAccess();
    *(a5 + 16) = 1;
    *a3 = 1;
  }
}

void sub_22F31AA18(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(v9, v8, a4);
}

void sub_22F31AAAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char **a8)
{
  v14 = [a1 name];
  if (v14)
  {
    v15 = v14;
    v16 = sub_22F740E20();
    v18 = v17;

    v19 = [a1 numberOfMomentNodes] / a3;
    if (v19 <= 0.0)
    {
    }

    else
    {
      if (*(a4 + 24) > 0.0)
      {
        sub_22F319078(a1);
        v19 = v19 + v20;
      }

      sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v21);
      v23 = [a1 localIdentifier];
      v24 = [ObjCClassFromMetadata uuidFromLocalIdentifier_];

      if (v24)
      {
        v25 = sub_22F740E20();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      v31 = *a8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_22F13FB00(0, *(v31 + 2) + 1, 1, v31);
        *a8 = v31;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        v31 = sub_22F13FB00((v33 > 1), v34 + 1, 1, v31);
        *a8 = v31;
      }

      *(v31 + 2) = v34 + 1;
      v35 = &v31[64 * v34];
      v35[32] = 0;
      *(v35 + 33) = *v37;
      *(v35 + 9) = *&v37[3];
      *(v35 + 5) = v16;
      *(v35 + 6) = v18;
      *(v35 + 7) = v25;
      *(v35 + 8) = v27;
      *(v35 + 9) = v19;
      *(v35 + 10) = a6;
      *(v35 + 11) = a7;
    }
  }

  else
  {
    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v28 = sub_22F740B90();
    __swift_project_value_buffer(v28, qword_2810B4CE0);
    oslog = sub_22F740B70();
    v29 = sub_22F7415E0();
    if (os_log_type_enabled(oslog, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22F0FC000, oslog, v29, "GraphEntityRanker: Supposedly named person has no name", v30, 2u);
      MEMORY[0x2319033A0](v30, -1, -1);
    }
  }
}

uint64_t sub_22F31ADC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  result = [a1 numberOfMomentNodes];
  v12 = result / a3;
  if (v12 > 0.0)
  {
    v13 = [a1 localIdentifier];
    if (!v13)
    {
      sub_22F740E20();
      v13 = sub_22F740DF0();
    }

    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v15 = [swift_getObjCClassFromMetadata(v14) uuidFromLocalIdentifier_];

    if (v15)
    {
      v16 = sub_22F740E20();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = [a1 name];
    v20 = sub_22F740E20();
    v22 = v21;

    v23 = *a6;

    result = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v23;
    if ((result & 1) == 0)
    {
      result = sub_22F13FB00(0, *(v23 + 16) + 1, 1, v23);
      v23 = result;
      *a6 = result;
    }

    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_22F13FB00((v24 > 1), v25 + 1, 1, v23);
      v23 = result;
      *a6 = result;
    }

    *(v23 + 16) = v25 + 1;
    v26 = v23 + (v25 << 6);
    *(v26 + 32) = 1;
    *(v26 + 33) = *v27;
    *(v26 + 36) = *&v27[3];
    *(v26 + 40) = v20;
    *(v26 + 48) = v22;
    *(v26 + 56) = v16;
    *(v26 + 64) = v18;
    *(v26 + 72) = v12;
    *(v26 + 80) = a4;
    *(v26 + 88) = a5;
  }

  return result;
}

void sub_22F31AFA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6, char **a7, char **a8)
{
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v72 = a6;
  v73 = a3;
  v15 = a1;
  v16 = [v14 name];
  v17 = sub_22F740E20();
  v19 = v18;

  v20 = [v14 locationMask];
  if ((v20 & 0x10) != 0)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {

      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v64 = sub_22F740B90();
      __swift_project_value_buffer(v64, qword_2810B4CE0);
      osloga = sub_22F740B70();
      v65 = sub_22F7415E0();
      if (!os_log_type_enabled(osloga, v65))
      {
        goto LABEL_45;
      }

      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "GraphEntityRanker: Could not process city node";
      goto LABEL_44;
    }

    v22 = v21;
    v23 = v15;
    v24 = [v22 collection];
    v70 = a7;
    v25 = a5;
    v26 = v15;
    v27 = [v24 numberOfMomentNodes];

    v28 = v27;
    v15 = v26;
    a5 = v25;
    a7 = v70;
    v29 = v28 / a3;
    if (v29 > 0.0)
    {
      v30 = *v72;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v72 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_22F13FB00(0, *(v30 + 2) + 1, 1, v30);
        *v72 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        *v72 = sub_22F13FB00((v32 > 1), v33 + 1, 1, v30);
      }

      v34 = *v72;
      *(v34 + 2) = v33 + 1;
      v35 = &v34[64 * v33];
      v35[32] = 2;
      *(v35 + 5) = v17;
      *(v35 + 6) = v19;
      goto LABEL_27;
    }
  }

  v71 = v19;
  if ((v20 & 0x40) != 0)
  {
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (!v36)
    {

      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v68 = sub_22F740B90();
      __swift_project_value_buffer(v68, qword_2810B4CE0);
      osloga = sub_22F740B70();
      v65 = sub_22F7415E0();
      if (!os_log_type_enabled(osloga, v65))
      {
        goto LABEL_45;
      }

      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "GraphEntityRanker: Could not process state node";
      goto LABEL_44;
    }

    v37 = v36;
    v38 = v15;
    v39 = [v37 collection];
    v40 = a7;
    v41 = a5;
    v42 = v15;
    v43 = [v39 numberOfMomentNodes];

    v44 = v43;
    v15 = v42;
    a5 = v41;
    v29 = v44 / v73;
    if (v29 > 0.0)
    {
      v45 = *v40;

      v46 = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v45;
      if ((v46 & 1) == 0)
      {
        v45 = sub_22F13FB00(0, *(v45 + 2) + 1, 1, v45);
        *v40 = v45;
      }

      v48 = *(v45 + 2);
      v47 = *(v45 + 3);
      if (v48 >= v47 >> 1)
      {
        *v40 = sub_22F13FB00((v47 > 1), v48 + 1, 1, v45);
      }

      v49 = *v40;
      *(v49 + 2) = v48 + 1;
      v35 = &v49[64 * v48];
      v50 = 3;
LABEL_26:
      v35[32] = v50;
      *(v35 + 5) = v17;
      *(v35 + 6) = v71;
LABEL_27:
      *(v35 + 7) = 0;
      *(v35 + 8) = 0;
      *(v35 + 9) = v29;
      *(v35 + 10) = a4;
      *(v35 + 11) = a5;
      return;
    }
  }

  if ((v20 & 0x80) == 0)
  {
LABEL_29:

    return;
  }

  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  if (v51)
  {
    v52 = v51;
    v53 = v15;
    v54 = [v52 collection];
    v55 = a5;
    v56 = v15;
    v57 = [v54 numberOfMomentNodes];

    v58 = v57;
    v15 = v56;
    v29 = v58 / v73;
    if (v29 > 0.0)
    {
      a5 = v55;
      v59 = *a8;

      v60 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v59;
      if ((v60 & 1) == 0)
      {
        v59 = sub_22F13FB00(0, *(v59 + 2) + 1, 1, v59);
        *a8 = v59;
      }

      v62 = *(v59 + 2);
      v61 = *(v59 + 3);
      if (v62 >= v61 >> 1)
      {
        *a8 = sub_22F13FB00((v61 > 1), v62 + 1, 1, v59);
      }

      v63 = *a8;
      *(v63 + 2) = v62 + 1;
      v35 = &v63[64 * v62];
      v50 = 4;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v69 = sub_22F740B90();
  __swift_project_value_buffer(v69, qword_2810B4CE0);
  osloga = sub_22F740B70();
  v65 = sub_22F7415E0();
  if (os_log_type_enabled(osloga, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "GraphEntityRanker: Could not process country node";
LABEL_44:
    _os_log_impl(&dword_22F0FC000, osloga, v65, v67, v66, 2u);
    MEMORY[0x2319033A0](v66, -1, -1);
  }

LABEL_45:
}

void sub_22F31B658(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = [a1 sceneNode];
  v14 = [v13 sceneName];
  v15 = sub_22F740E20();
  v17 = v16;

  if ([a2 nodeRefForExtendedSceneClassId_] && PFSceneTaxonomyNodeIsIndexed())
  {
    v82 = [a1 momentNode];
    v18 = [v13 sceneIdentifier];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    sub_22F132770(v18, v15, v17, isUniquelyReferenced_nonNull_native);
    *(a3 + 16) = v84;
    swift_endAccess();
    v20 = [v13 localizedName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_22F740E20();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    swift_beginAccess();

    sub_22F1216C0(v22, v24, v15, v17);
    swift_endAccess();
    v25 = [v82 localIdentifier];
    v26 = sub_22F740E20();
    v28 = v27;

    swift_beginAccess();
    v29 = *(a5 + 16);
    v80 = a8;
    if (*(v29 + 16))
    {
      v30 = sub_22F1229E8(v26, v28);
      v32 = v31;

      if (v32)
      {
        v33 = *(*(v29 + 56) + 8 * v30);

LABEL_14:
        swift_endAccess();
        v34 = [a1 numberOfSearchConfidenceAssets];
        v35 = swift_isUniquelyReferenced_nonNull_native();
        sub_22F131078(v34, v15, v17, v35);
        v36 = v33;
        v37 = [v82 localIdentifier];
        v38 = sub_22F740E20();
        v40 = v39;

        swift_beginAccess();
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v85 = *(a5 + 16);
        v42 = 0x8000000000000000;
        *(a5 + 16) = 0x8000000000000000;
        sub_22F132748(v36, v38, v40, v41);

        *(a5 + 16) = v85;
        swift_endAccess();
        swift_beginAccess();
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v44 = *(a6 + 16);
        v86 = v44;
        *(a6 + 16) = 0x8000000000000000;
        v45 = sub_22F1229E8(v15, v17);
        v47 = v44[2];
        v48 = (v46 & 1) == 0;
        v49 = __OFADD__(v47, v48);
        v50 = v47 + v48;
        if (v49)
        {
          __break(1u);
          goto LABEL_42;
        }

        v36 = v46;
        if (v44[3] >= v50)
        {
          v42 = v80;
          a5 = a7;
          v40 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
          if (v43)
          {
            goto LABEL_19;
          }

          goto LABEL_47;
        }

        sub_22F125704(v50, v43);
        v45 = sub_22F1229E8(v15, v17);
        v42 = v80;
        a5 = a7;
        v40 = 0x278899000;
        if ((v36 & 1) == (v51 & 1))
        {
          goto LABEL_19;
        }

LABEL_34:
        v45 = sub_22F7420C0();
        __break(1u);
LABEL_35:
        if ((v40 & 1) == 0)
        {
          v40 = v45;
          sub_22F1341B0();
          v45 = v40;
        }

LABEL_37:
        *(v80 + 16) = v86;
        if ((v42 & 1) == 0)
        {
          v42 = v45;
          sub_22F1534CC();

          v45 = v42;
        }

        v75 = v86[7];
        v76 = *(v75 + 8 * v45);
        v49 = __OFADD__(v76, v36);
        v77 = v76 + v36;
        if (!v49)
        {
          *(v75 + 8 * v45) = v77;
          swift_endAccess();

          return;
        }

        while (1)
        {
          __break(1u);
LABEL_47:
          v78 = v45;
          sub_22F1341B0();
          v45 = v78;
LABEL_19:
          *(a6 + 16) = v86;
          if ((v36 & 1) == 0)
          {
            v36 = v45;
            sub_22F1534CC();

            v45 = v36;
          }

          v52 = v86[7];
          v53 = *(v52 + 8 * v45);
          v49 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v49)
          {
            break;
          }

          *(v52 + 8 * v45) = v54;
          swift_endAccess();
          v36 = [a1 *(v40 + 480)];
          swift_beginAccess();
          a6 = swift_isUniquelyReferenced_nonNull_native();
          v55 = *(a5 + 16);
          v86 = v55;
          *(a5 + 16) = 0x8000000000000000;
          v45 = sub_22F1229E8(v15, v17);
          v57 = v55[2];
          v58 = (v56 & 1) == 0;
          v49 = __OFADD__(v57, v58);
          v59 = v57 + v58;
          if (v49)
          {
            goto LABEL_43;
          }

          v60 = v56;
          if (v55[3] >= v59)
          {
            if ((a6 & 1) == 0)
            {
              v79 = v45;
              sub_22F1341B0();
              v45 = v79;
              v40 = 0x278899000;
            }
          }

          else
          {
            sub_22F125704(v59, a6);
            v45 = sub_22F1229E8(v15, v17);
            if ((v60 & 1) != (v61 & 1))
            {
              goto LABEL_34;
            }
          }

          *(a5 + 16) = v55;
          if ((v60 & 1) == 0)
          {
            v62 = v45;
            sub_22F1534CC();

            v45 = v62;
          }

          v63 = v55[7];
          v64 = *(v63 + 8 * v45);
          v49 = __OFADD__(v64, v36);
          v65 = v64 + v36;
          if (v49)
          {
            goto LABEL_44;
          }

          *(v63 + 8 * v45) = v65;
          swift_endAccess();

          v66 = [v82 localIdentifier];
          v17 = sub_22F740E20();
          v68 = v67;

          v36 = [a1 *(v40 + 480)];
          swift_beginAccess();
          v40 = swift_isUniquelyReferenced_nonNull_native();
          v69 = *(v42 + 16);
          v86 = v69;
          *(v42 + 16) = 0x8000000000000000;
          v45 = sub_22F1229E8(v17, v68);
          v71 = v69[2];
          v72 = (v70 & 1) == 0;
          v49 = __OFADD__(v71, v72);
          v73 = v71 + v72;
          if (!v49)
          {
            v42 = v70;
            if (v69[3] >= v73)
            {
              goto LABEL_35;
            }

            sub_22F125704(v73, v40);
            v45 = sub_22F1229E8(v17, v68);
            if ((v42 & 1) != (v74 & 1))
            {
              goto LABEL_34;
            }

            goto LABEL_37;
          }

LABEL_45:
          __break(1u);
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
    }

    v33 = sub_22F14F1C0(MEMORY[0x277D84F90]);
    goto LABEL_14;
  }
}

uint64_t sub_22F31BD4C(int a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = [a2 meaningNodes];
  v10 = [v9 parentMeaningNodes];
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22F322BB0;
  *(v12 + 24) = v11;
  v17[4] = sub_22F26B650;
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F322D74;
  v17[3] = &block_descriptor_160;
  v13 = _Block_copy(v17);
  v14 = v10;
  v15 = a5;

  [v9 enumerateUsingBlock_];

  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

void sub_22F31BEF8(void *a1, int a2, id a3, uint64_t *a4, void *a5, void *a6)
{
  if ([a3 containsNode_])
  {
    return;
  }

  v10 = [a1 label];
  if (!v10)
  {
    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v18 = sub_22F740B90();
    __swift_project_value_buffer(v18, qword_2810B4CE0);
    v19 = a1;
    v45 = sub_22F740B70();
    v20 = sub_22F7415E0();

    if (os_log_type_enabled(v45, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&dword_22F0FC000, v45, v20, "GraphEntityRanker: MeaningNode %@ has nil label", v21, 0xCu);
      sub_22F120ADC(v22, &qword_27DAB07D0, &qword_22F779400);
      MEMORY[0x2319033A0](v22, -1, -1);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    goto LABEL_34;
  }

  v11 = v10;
  v12 = sub_22F740E20();
  v14 = v13;
  if (v12 != sub_22F740E20() || v14 != v15)
  {
    v17 = sub_22F742040();
    v45 = v11;

    if (v17)
    {

LABEL_34:

      return;
    }

    v24 = identifierForMeaningLabel(v45);

    if (!v24)
    {

      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v35 = sub_22F740B90();
      __swift_project_value_buffer(v35, qword_2810B4CE0);

      v45 = sub_22F740B70();
      v36 = sub_22F7415E0();

      if (os_log_type_enabled(v45, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v47 = v38;
        *v37 = 136315138;
        v39 = sub_22F145F20(v12, v14, &v47);

        *(v37 + 4) = v39;
        v40 = "GraphEntityRanker: MeaningLabel %s has no associated identifier defined";
LABEL_32:
        _os_log_impl(&dword_22F0FC000, v45, v36, v40, v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x2319033A0](v38, -1, -1);
        MEMORY[0x2319033A0](v37, -1, -1);

        return;
      }

LABEL_33:

      goto LABEL_34;
    }

    v25 = sub_22F740E20();
    v27 = v26;

    v28 = localizationKeyForMeaningLabel(v45);
    if (v28)
    {
      v46 = sub_22F740E20();
      v30 = v29;
      v31 = [a1 localizedName];
      if (!v31)
      {

        if (qword_2810A9400 != -1)
        {
          swift_once();
        }

        v43 = sub_22F740B90();
        __swift_project_value_buffer(v43, qword_2810B4CE0);

        v45 = sub_22F740B70();
        v36 = sub_22F7415E0();

        if (os_log_type_enabled(v45, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v47 = v38;
          *v37 = 136315138;
          v44 = sub_22F145F20(v12, v14, &v47);

          *(v37 + 4) = v44;
          v40 = "GraphEntityRanker: MeaningLabel %s has no associated localized name";
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      v32 = v31;

      v14 = sub_22F740E20();
      v12 = v33;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *a4;
      *a4 = 0x8000000000000000;
      sub_22F132944(v14, v12, v25, v27, v46, v30, isUniquelyReferenced_nonNull_native);

      *a4 = v47;
      [a5 addObject_];

      if (!__OFADD__(*a6, 1))
      {
        ++*a6;
        return;
      }

      __break(1u);
    }

    else
    {

      if (qword_2810A9400 == -1)
      {
        goto LABEL_26;
      }
    }

    swift_once();
LABEL_26:
    v41 = sub_22F740B90();
    __swift_project_value_buffer(v41, qword_2810B4CE0);

    v45 = sub_22F740B70();
    v36 = sub_22F7415E0();

    if (os_log_type_enabled(v45, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47 = v38;
      *v37 = 136315138;
      v42 = sub_22F145F20(v12, v14, &v47);

      *(v37 + 4) = v42;
      v40 = "GraphEntityRanker: MeaningLabel %s has no associated localization key defined";
      goto LABEL_32;
    }

    goto LABEL_33;
  }
}

unint64_t sub_22F31C598(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a5 + 16))
  {
    result = sub_22F1235AC(result);
    if (v8)
    {
      v9 = (*(a5 + 56) + 16 * result);
      v10 = *v9;
      v11 = v9[1];
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(a6 + 16);
      *(a6 + 16) = 0x8000000000000000;
      sub_22F12FF10(v10, v11, isUniquelyReferenced_nonNull_native, 1.0);

      *(a6 + 16) = v13;
      return swift_endAccess();
    }
  }

  return result;
}

double sub_22F31C650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = sub_22F740E20();
  v8 = v7;
  v9 = sub_22F741420();

  v5(a2, v6, v8, v9);

  return result;
}

void sub_22F31C6FC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a6 + 16))
  {
    v10 = sub_22F1235AC(a1);
    if (v11)
    {
      v12 = (*(a6 + 56) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      swift_beginAccess();
      v15 = *(a7 + 16);
      v16 = *(v15 + 16);

      if (v16 && (v17 = sub_22F1229E8(v14, v13), (v18 & 1) != 0))
      {
        v19 = *(*(v15 + 56) + 8 * v17);
        swift_endAccess();
        if (vabdd_f64(v19, a2) < 1.0e-10)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *(a7 + 16);
          *(a7 + 16) = 0x8000000000000000;
          sub_22F12FF10(v14, v13, isUniquelyReferenced_nonNull_native, 0.5);

          *(a7 + 16) = v21;
          swift_endAccess();
          return;
        }
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

void sub_22F31C830(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char **a6)
{
  v11 = [a1 name];
  if (!v11)
  {
    sub_22F740E20();

    sub_22F740E20();
    v11 = sub_22F740DF0();
  }

  v12 = sub_22F740E20();
  v14 = v13;
  v15 = identifierForSeasonLabel(v11);

  if (!v15)
  {

    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v33 = sub_22F740B90();
    __swift_project_value_buffer(v33, qword_2810B4CE0);
    osloga = sub_22F740B70();
    v34 = sub_22F7415E0();
    if (!os_log_type_enabled(osloga, v34))
    {
      goto LABEL_25;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "GraphEntityRanker: scoredSeasonEntities() unexpectedly encountered nil identifier.";
    goto LABEL_24;
  }

  v16 = sub_22F740E20();
  v18 = v17;

  v19 = [a1 localizedName];
  if (v19)
  {
    v20 = v19;
    oslog = sub_22F740E20();
    v22 = v21;

    swift_beginAccess();
    v23 = *a3;
    if (*(v23 + 16) && (v24 = sub_22F1229E8(v12, v14), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();

      v27 = *a6;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_22F13FB00(0, *(v27 + 2) + 1, 1, v27);
        *a6 = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_22F13FB00((v29 > 1), v30 + 1, 1, v27);
        *a6 = v27;
      }

      *(v27 + 2) = v30 + 1;
      v31 = &v27[64 * v30];
      v31[32] = 7;
      v32 = *(v46 + 3);
      *(v31 + 33) = v46[0];
      *(v31 + 9) = v32;
      *(v31 + 5) = oslog;
      *(v31 + 6) = v22;
      *(v31 + 7) = v16;
      *(v31 + 8) = v18;
      *(v31 + 9) = v26;
      *(v31 + 10) = a4;
      *(v31 + 11) = a5;
    }

    else
    {
      swift_endAccess();

      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v37 = sub_22F740B90();
      __swift_project_value_buffer(v37, qword_2810B4CE0);

      v38 = sub_22F740B70();
      v39 = sub_22F7415E0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46[0] = v41;
        *v40 = 136315138;
        v42 = sub_22F145F20(v12, v14, v46);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_22F0FC000, v38, v39, "GraphEntityRanker: scoredSeasonEntries() no score for %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x2319033A0](v41, -1, -1);
        MEMORY[0x2319033A0](v40, -1, -1);
      }

      else
      {
      }
    }

    return;
  }

  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v43 = sub_22F740B90();
  __swift_project_value_buffer(v43, qword_2810B4CE0);
  osloga = sub_22F740B70();
  v34 = sub_22F7415E0();
  if (os_log_type_enabled(osloga, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "GraphEntityRanker: scoredSeasonEntities() unexpectedly encountered nil localized season name.";
LABEL_24:
    _os_log_impl(&dword_22F0FC000, osloga, v34, v36, v35, 2u);
    MEMORY[0x2319033A0](v35, -1, -1);
  }

LABEL_25:
}

uint64_t sub_22F31CD14(void *a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  v9 = [a1 collection];
  v10 = [v9 momentNodes];

  v11 = [v10 numberOfAssets];
  if (!__OFADD__(*a3, v11))
  {
    *a3 += v11;
    v12 = [a1 name];
    v13 = sub_22F740E20();
    v15 = v14;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *a4;
    *a4 = 0x8000000000000000;
    sub_22F131078(v11, v13, v15, isUniquelyReferenced_nonNull_native);

    *a4 = v87;

    v81 = a1;
    v17 = [a1 preciseLocalizedCategoryNames];
    v18 = sub_22F741420();

    v19 = 0;
    v20 = 0;
    v22 = v18 + 56;
    v21 = *(v18 + 56);
    v82 = v18;
    v23 = 1 << *(v18 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v84 = v11;
    if ((v24 & v21) == 0)
    {
LABEL_6:
      while (1)
      {
        v27 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v27 >= v26)
        {
          v80 = v19;

          v49 = [v81 performers];
          v50 = sub_22F741420();

          v51 = 0;
          v52 = 0;
          v86 = v50;
          v53 = 1 << *(v50 + 32);
          v54 = -1;
          if (v53 < 64)
          {
            v54 = ~(-1 << v53);
          }

          v55 = v50 + 56;
          v56 = v54 & *(v50 + 56);
          for (i = (v53 + 63) >> 6; v56; v52 = v58)
          {
            v58 = v52;
LABEL_29:
            v59 = (*(v86 + 48) + ((v58 << 10) | (16 * __clz(__rbit64(v56)))));
            v61 = *v59;
            v60 = v59[1];

            sub_22F107E14(v51, 0);
            v62 = swift_isUniquelyReferenced_nonNull_native();
            v63 = *a6;
            *a6 = 0x8000000000000000;
            v65 = sub_22F1229E8(v61, v60);
            v66 = v63[2];
            v67 = (v64 & 1) == 0;
            v68 = v66 + v67;
            if (__OFADD__(v66, v67))
            {
              goto LABEL_49;
            }

            v69 = v64;
            if (v63[3] >= v68)
            {
              if ((v62 & 1) == 0)
              {
                sub_22F1341B0();
              }
            }

            else
            {
              sub_22F125704(v68, v62);
              v70 = sub_22F1229E8(v61, v60);
              if ((v69 & 1) != (v71 & 1))
              {
                goto LABEL_54;
              }

              v65 = v70;
            }

            *a6 = v63;

            v72 = *a6;
            if (v69)
            {
            }

            else
            {
              v72[(v65 >> 6) + 8] |= 1 << v65;
              v73 = (v72[6] + 16 * v65);
              *v73 = v61;
              v73[1] = v60;
              *(v72[7] + 8 * v65) = 0;
              v74 = v72[2];
              v44 = __OFADD__(v74, 1);
              v75 = v74 + 1;
              if (v44)
              {
                goto LABEL_52;
              }

              v72[2] = v75;
            }

            v76 = v72[7];
            v77 = *(v76 + 8 * v65);
            v44 = __OFADD__(v77, v84);
            v78 = v77 + v84;
            if (v44)
            {
              goto LABEL_50;
            }

            v56 &= v56 - 1;
            *(v76 + 8 * v65) = v78;
            v51 = sub_22F1C39C4;
          }

          while (1)
          {
            v58 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              break;
            }

            if (v58 >= i)
            {

              sub_22F107E14(v80, 0);

              return sub_22F107E14(v51, 0);
            }

            v56 = *(v55 + 8 * v58);
            ++v52;
            if (v56)
            {
              goto LABEL_29;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v25 = *(v22 + 8 * v27);
        ++v20;
        if (v25)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_46;
    }

    while (1)
    {
      v27 = v20;
LABEL_9:
      v28 = (*(v82 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v25)))));
      v30 = *v28;
      v29 = v28[1];

      sub_22F107E14(v19, 0);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v32 = *a5;
      *a5 = 0x8000000000000000;
      v34 = sub_22F1229E8(v30, v29);
      v35 = v32[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        break;
      }

      v38 = v33;
      if (v32[3] >= v37)
      {
        if ((v31 & 1) == 0)
        {
          sub_22F1341B0();
        }
      }

      else
      {
        sub_22F125704(v37, v31);
        v39 = sub_22F1229E8(v30, v29);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_54;
        }

        v34 = v39;
      }

      *a5 = v32;

      v41 = *a5;
      if (v38)
      {
      }

      else
      {
        v41[(v34 >> 6) + 8] |= 1 << v34;
        v42 = (v41[6] + 16 * v34);
        *v42 = v30;
        v42[1] = v29;
        *(v41[7] + 8 * v34) = 0;
        v43 = v41[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_51;
        }

        v41[2] = v45;
      }

      v46 = v41[7];
      v47 = *(v46 + 8 * v34);
      v44 = __OFADD__(v47, v84);
      v48 = v47 + v84;
      if (v44)
      {
        goto LABEL_48;
      }

      v25 &= v25 - 1;
      *(v46 + 8 * v34) = v48;
      v19 = sub_22F1C39C4;
      v20 = v27;
      if (!v25)
      {
        goto LABEL_6;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  __break(1u);
LABEL_54:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F31D2D0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = a3;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v15 << 6);
      v19 = *(*(a1 + 56) + 8 * v18) / v14;
      if (v19 > 0.0)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_6;
      }
    }

    v21 = (*(a1 + 48) + 16 * v18);
    v27 = *v21;
    v28 = v21[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_22F13FB00(0, *(v16 + 2) + 1, 1, v16);
    }

    v23 = *(v16 + 2);
    v22 = *(v16 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v26 = sub_22F13FB00((v22 > 1), v23 + 1, 1, v16);
      v24 = v23 + 1;
      v16 = v26;
    }

    *(v16 + 2) = v24;
    v25 = &v16[64 * v23];
    v25[32] = v8;
    *(v25 + 33) = *v29;
    *(v25 + 9) = *&v29[3];
    *(v25 + 5) = v27;
    *(v25 + 6) = v28;
    *(v25 + 7) = 0;
    *(v25 + 8) = 0;
    *(v25 + 9) = v19;
    *(v25 + 10) = a4;
    *(v25 + 11) = a5;
  }

  while (v12);
LABEL_6:
  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v20);
    ++v15;
    if (v12)
    {
      v15 = v20;
      goto LABEL_4;
    }
  }

  __break(1u);
}

double sub_22F31D490(void *a1)
{
  v1 = [a1 name];
  v2 = sub_22F740E20();
  v4 = v3;

  sub_22F10BBDC(&v6, v2, v4);

  return result;
}

void sub_22F31D50C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_22F73F690();
  sub_22F741180();
  v5 = a2;
  v4();
}

double sub_22F31D59C(void *a1, double a2, uint64_t a3, uint64_t *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, char **a9)
{
  v16 = [a1 name];
  v17 = sub_22F740E20();
  v19 = v18;

  v20 = [a1 localizedName];
  if (v20)
  {
    v21 = v20;
    v32 = a6;
    v33 = sub_22F740E20();
    v23 = v22;

    if ([a1 numberOfMomentNodes] >= 1)
    {
      v24 = *a4;

      v25 = sub_22F15E910(v17, v19, v24);

      if (v25)
      {
        a2 = [a1 numberOfMomentNodes] / a5;
        *v32 = 1;
      }

      v26 = *a9;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a9 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_22F13FB00(0, *(v26 + 2) + 1, 1, v26);
        *a9 = v26;
      }

      v30 = *(v26 + 2);
      v29 = *(v26 + 3);
      if (v30 >= v29 >> 1)
      {
        v26 = sub_22F13FB00((v29 > 1), v30 + 1, 1, v26);
        *a9 = v26;
      }

      *(v26 + 2) = v30 + 1;
      v31 = &v26[64 * v30];
      v31[32] = 11;
      *(v31 + 33) = *v35;
      *(v31 + 9) = *&v35[3];
      *(v31 + 5) = v33;
      *(v31 + 6) = v23;
      *(v31 + 7) = 0;
      *(v31 + 8) = 0;
      *(v31 + 9) = a2;
      *(v31 + 10) = a7;
      *(v31 + 11) = a8;
      return result;
    }
  }

  return result;
}

void sub_22F31D7C8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if ([a1 isTrip])
  {
    type metadata accessor for TripTitleGenerator();
    v9 = [a1 collection];
    v10 = [v9 tripFeatureNodes];
    v11 = [v9 momentNodes];
    v12 = static TripTitleGenerator.title(for:momentNodes:locationHelper:)(v10, v11, a3);
    v14 = v13;

    v15 = v12;
    v16 = [a1 collection];
    v17 = [v16 momentNodes];

    v18 = [v17 numberOfAssets];
    if (__OFADD__(*a4, v18))
    {
      __break(1u);
    }

    else
    {
      *a4 += v18;
      v19 = *a5;
      v20 = *(*a5 + 16);
      if (v20)
      {
        v21 = sub_22F1229E8(v15, v14);
        if (v22)
        {
          v20 = *(*(v19 + 56) + 8 * v21);
        }

        else
        {
          v20 = 0;
        }
      }

      if (v18 <= v20)
      {
        v18 = v20;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *a5;
      *a5 = 0x8000000000000000;
      sub_22F131078(v18, v15, v14, isUniquelyReferenced_nonNull_native);

      *a5 = v24;
    }
  }
}

uint64_t sub_22F31DB54(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = [a1 collection];
  v9 = [v8 momentNodes];

  v10 = [v9 numberOfAssets];
  v60 = v10;
  if (__OFADD__(*a3, v10))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  *a3 += v10;
  v11 = [a1 name];
  v12 = sub_22F740E20();
  v14 = v13;

  v15 = *a4;
  if (*(*a4 + 16))
  {
    v16 = sub_22F1229E8(v12, v14);
    v18 = v17;

    if (v18)
    {
      v19 = *(*(v15 + 56) + 8 * v16);
      goto LABEL_7;
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_7:
  v20 = [a1 name];
  v21 = sub_22F740E20();
  v23 = v22;

  if (v10 <= v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = v10;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *a4;
  *a4 = 0x8000000000000000;
  sub_22F131078(v24, v21, v23, isUniquelyReferenced_nonNull_native);

  *a4 = v62;

  v26 = [a1 businessCategories];
  v27 = sub_22F741420();

  v28 = 0;
  v29 = 0;
  v31 = v27 + 56;
  v30 = *(v27 + 56);
  v59 = v27;
  v32 = 1 << *(v27 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v30;
  v35 = (v32 + 63) >> 6;
  if ((v33 & v30) != 0)
  {
    while (1)
    {
      v36 = v29;
LABEL_17:
      v37 = (*(v59 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v34)))));
      v39 = *v37;
      v38 = v37[1];

      sub_22F107E14(v28, 0);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v41 = *a5;
      *a5 = 0x8000000000000000;
      v43 = sub_22F1229E8(v39, v38);
      v44 = v41[2];
      v45 = (v42 & 1) == 0;
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        break;
      }

      v47 = v42;
      if (v41[3] >= v46)
      {
        if ((v40 & 1) == 0)
        {
          sub_22F1341B0();
        }
      }

      else
      {
        sub_22F125704(v46, v40);
        v48 = sub_22F1229E8(v39, v38);
        if ((v47 & 1) != (v49 & 1))
        {
          goto LABEL_38;
        }

        v43 = v48;
      }

      *a5 = v41;

      v50 = *a5;
      if (v47)
      {
      }

      else
      {
        v50[(v43 >> 6) + 8] |= 1 << v43;
        v51 = (v50[6] + 16 * v43);
        *v51 = v39;
        v51[1] = v38;
        *(v50[7] + 8 * v43) = 0;
        v52 = v50[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_36;
        }

        v50[2] = v54;
      }

      v55 = v50[7];
      v56 = *(v55 + 8 * v43);
      v53 = __OFADD__(v56, v60);
      v57 = v56 + v60;
      if (v53)
      {
        goto LABEL_35;
      }

      v34 &= v34 - 1;
      *(v55 + 8 * v43) = v57;
      v28 = sub_22F1C39C4;
      v29 = v36;
      if (!v34)
      {
        goto LABEL_14;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  while (1)
  {
LABEL_14:
    v36 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v36 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v36);
    ++v29;
    if (v34)
    {
      goto LABEL_17;
    }
  }

  return sub_22F107E14(v28, 0);
}

void sub_22F31DF48(void *a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6)
{
  if ([a1 isHome])
  {
    v11 = [a1 collection];
    v39 = [v11 preciseAddressNodes];

    v12 = [v39 momentNodes];
    v13 = [v12 count];

    v14 = v13 / a3;
    if (v14 > 0.0)
    {
      v15 = *a4;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_22F13FB00(0, *(v15 + 2) + 1, 1, v15);
        *a4 = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      v19 = v39;
      if (v18 >= v17 >> 1)
      {
        *a4 = sub_22F13FB00((v17 > 1), v18 + 1, 1, v15);
        v19 = v39;
      }

      v20 = *a4;
      *(v20 + 2) = v18 + 1;
      v21 = &v20[64 * v18];
      v21[32] = 15;
      *(v21 + 5) = 1701670728;
      *(v21 + 6) = 0xE400000000000000;
LABEL_15:
      *(v21 + 7) = 0;
      *(v21 + 8) = 0;
      *(v21 + 9) = v14;
      *(v21 + 10) = a5;
      *(v21 + 11) = a6;
      return;
    }
  }

  else
  {
    v22 = [a1 localizedName];
    if (v22)
    {
      v23 = v22;
      v24 = sub_22F740E20();
      v26 = v25;

      v27 = [a1 collection];
      v39 = [v27 preciseAddressNodes];

      v28 = [v39 momentNodes];
      v29 = [v28 count];

      v14 = v29 / a3;
      if (v14 > 0.0)
      {
        v30 = *a4;

        v31 = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v30;
        if ((v31 & 1) == 0)
        {
          v30 = sub_22F13FB00(0, *(v30 + 2) + 1, 1, v30);
          *a4 = v30;
        }

        v33 = *(v30 + 2);
        v32 = *(v30 + 3);
        v34 = v39;
        if (v33 >= v32 >> 1)
        {
          *a4 = sub_22F13FB00((v32 > 1), v33 + 1, 1, v30);
          v34 = v39;
        }

        v35 = *a4;
        *(v35 + 2) = v33 + 1;
        v21 = &v35[64 * v33];
        v21[32] = 16;
        *(v21 + 5) = v24;
        *(v21 + 6) = v26;
        goto LABEL_15;
      }
    }

    else
    {
      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v36 = sub_22F740B90();
      __swift_project_value_buffer(v36, qword_2810B4CE0);
      v39 = sub_22F740B70();
      v37 = sub_22F7415E0();
      if (os_log_type_enabled(v39, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_22F0FC000, v39, v37, "GraphEntityRanker: Work node does not have a localized name", v38, 2u);
        MEMORY[0x2319033A0](v38, -1, -1);
      }
    }
  }
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22F31E338(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = a1 + 32;
  v37 = a1 + 32;
  do
  {
    v42 = v8;
    v10 = (v9 + 32 * v7);
    for (i = v7; ; ++i)
    {
      if (i >= v6)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        return;
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_30;
      }

      sub_22F13A100(v10, v46);
      if (!swift_dynamicCast())
      {
        if (qword_2810A9400 != -1)
        {
          swift_once();
        }

        v16 = sub_22F740B90();
        __swift_project_value_buffer(v16, qword_2810B4CE0);
        v17 = sub_22F740B70();
        v18 = sub_22F7415E0();
        if (!os_log_type_enabled(v17, v18))
        {
          goto LABEL_5;
        }

        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = v18;
        v21 = v17;
        v22 = "GraphEntityRanker: Unexpectedly encountered nil localization key.";
        goto LABEL_4;
      }

      v12 = *a2;
      if (!*(*a2 + 16))
      {

        goto LABEL_17;
      }

      v13 = sub_22F1229E8(v44, v45);
      v15 = v14;

      if (v15)
      {
        break;
      }

LABEL_17:
      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v23 = sub_22F740B90();
      __swift_project_value_buffer(v23, qword_2810B4CE0);
      v17 = sub_22F740B70();
      v24 = sub_22F7415E0();
      if (!os_log_type_enabled(v17, v24))
      {
        goto LABEL_5;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = v24;
      v21 = v17;
      v22 = "GraphEntityRanker: Unexpectedly encountered nil meaning label or identifier.";
LABEL_4:
      _os_log_impl(&dword_22F0FC000, v21, v20, v22, v19, 2u);
      MEMORY[0x2319033A0](v19, -1, -1);
LABEL_5:

      v10 += 4;
      if (v7 == v6)
      {
        return;
      }
    }

    v25 = (*(v12 + 56) + 32 * v13);
    v26 = v25[1];
    v36 = *v25;
    v28 = v25[2];
    v27 = v25[3];
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);

    v29 = [a3 countForObject_];
    swift_unknownObjectRelease();
    v30 = *a4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_22F13FB00(0, *(v42 + 2) + 1, 1, v42);
    }

    v33 = *(v42 + 2);
    v32 = *(v42 + 3);
    if (v33 >= v32 >> 1)
    {
      v42 = sub_22F13FB00((v32 > 1), v33 + 1, 1, v42);
    }

    v8 = v42;
    *(v42 + 2) = v33 + 1;
    v34 = &v42[64 * v33];
    v34[32] = 6;
    v35 = *(v46 + 3);
    *(v34 + 33) = v46[0];
    *(v34 + 9) = v35;
    *(v34 + 5) = v36;
    *(v34 + 6) = v26;
    *(v34 + 7) = v28;
    *(v34 + 8) = v27;
    *(v34 + 9) = v29 / v30;
    *(v34 + 10) = a5;
    *(v34 + 11) = a6;
    v9 = v37;
  }

  while (v7 != v6);
}

uint64_t sub_22F31E70C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = *(a1 + 80);
    v50 = *(a1 + 64);
    v51 = v4;
    v5 = *(a1 + 48);
    v49[0] = *(a1 + 32);
    v49[1] = v5;
    v7 = *(&v51 + 1);
    v6 = v51;
    v8 = *(&v50 + 1);
    v9 = *(&v5 + 1);
    v10 = v50;
    v11 = *(&v49[0] + 1);
    v12 = v5;
    v13 = v49[0];
    result = sub_22F3229A4(v49, v43);
    v43[0] = v13;
    v44 = v11;
    v45 = __PAIR128__(v9, v12);
    v46 = v10;
    v47 = v8;
    v48 = __PAIR128__(v7, v6);
    v36 = a1;
    if (v1 == 1)
    {
LABEL_3:
      v16 = v8;
    }

    else
    {
      v27 = a1 + 32;
      v28 = 1;
      while (2)
      {
        v29 = (v27 + (v28 << 6));
        while (1)
        {
          if (v28 >= v1)
          {
            __break(1u);
LABEL_22:
            __break(1u);
            return result;
          }

          v30 = v29[1];
          v39 = *v29;
          v40 = v30;
          v31 = v29[3];
          v41 = v29[2];
          v42 = v31;
          v32 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_22;
          }

          v16 = *(&v41 + 1);
          if (v8 < *(&v41 + 1))
          {
            break;
          }

          v43[0] = v13;
          v44 = v11;
          *&v45 = v12;
          *(&v45 + 1) = v9;
          v46 = v10;
          v47 = v8;
          ++v28;
          v29 += 4;
          *&v48 = v6;
          *(&v48 + 1) = v7;
          if (v32 == v1)
          {
            goto LABEL_3;
          }
        }

        v33 = v27;
        sub_22F3229A4(&v39, v38);
        result = sub_22F322A00(v43);
        v27 = v33;
        v7 = *(&v42 + 1);
        v6 = v42;
        v9 = *(&v40 + 1);
        v10 = v41;
        v11 = *(&v39 + 1);
        v12 = v40;
        v13 = v39;
        v43[0] = v39;
        v44 = *(&v39 + 1);
        v45 = v40;
        v46 = v41;
        v47 = v16;
        v8 = v16;
        v28 = v32;
        v48 = v42;
        if (v32 != v1)
        {
          continue;
        }

        break;
      }
    }

    sub_22F322A00(v43);
    if (v16 <= 0.0)
    {
      return MEMORY[0x277D84F90];
    }

    else
    {
      *&v39 = v3;
      sub_22F146C14(0, v1, 0);
      v2 = v39;
      v17 = v36 + 48;
      do
      {
        v18 = *(v17 - 16);
        v19 = *v17;
        v20 = *(v17 + 16);
        v34 = *(v17 + 8);
        v35 = *(v17 - 8);
        v21 = *(v17 + 24);
        v22 = *(v17 + 40);
        v37 = *(v17 + 32);
        v24 = *(v2 + 16);
        v23 = *(v2 + 24);
        *&v39 = v2;

        if (v24 >= v23 >> 1)
        {
          sub_22F146C14((v23 > 1), v24 + 1, 1);
          v2 = v39;
        }

        *(v2 + 16) = v24 + 1;
        v25 = v2 + (v24 << 6);
        *(v25 + 32) = v18;
        v26 = *(v38 + 3);
        *(v25 + 33) = v38[0];
        *(v25 + 36) = v26;
        *(v25 + 40) = v35;
        *(v25 + 48) = v19;
        *(v25 + 56) = v34;
        *(v25 + 64) = v20;
        *(v25 + 72) = v21 / v16;
        v17 += 64;
        *(v25 + 80) = v37;
        *(v25 + 88) = v22;
        --v1;
      }

      while (v1);
    }
  }

  return v2;
}

uint64_t sub_22F31E980(void *a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v6 = qword_2810B4DF0;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphMeaningEntities", 24, 2u, v7, 0, v6, v28);
  sub_22F741690();
  if (v2)
  {
    sub_22F1B2BBC(0);

    return v3;
  }

  v25 = v5;
  v8 = [a1 localeIdentifier];
  v24 = sub_22F740E20();
  v10 = v9;

  v11 = [objc_opt_self() momentNodesInGraph_];
  v12 = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
  v29 = 0;
  v27 = sub_22F14FEE8(MEMORY[0x277D84F90]);
  v13 = swift_allocObject();
  v13[2] = &v27;
  v13[3] = v12;
  v13[4] = &v29;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22F322BA4;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22F15A3B8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107F34;
  aBlock[3] = &block_descriptor_151;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [v11 enumerateIdentifiersAsCollectionsWithBlock_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v19 = [v16 allObjects];
    v20 = sub_22F741180();

    v21 = v16;

    sub_22F31E338(v20, &v27, v21, &v29, v24, v10);
    v3 = v22;

    swift_bridgeObjectRelease_n();
    if ((v25 & 1) == 0)
    {
      v23 = sub_22F31E70C(v3);

      v3 = v23;
    }

    sub_22F7416A0();

    sub_22F1B2BBC(0);

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_22F31ED48(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  v225 = *(a2 + 16);
  LOBYTE(v7) = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    goto LABEL_164;
  }

  while (1)
  {
    v8 = qword_2810B4DF0;
    *&v9 = CACurrentMediaTime();
    sub_22F1B560C("rankGraphSceneEntities", 22, 2u, v9, 0, v8, v239);
    sub_22F741690();
    if (v3)
    {
      sub_22F1B2BBC(0);
    }

    v228 = v6;
    v201 = v7;
    v10 = [a1 localeIdentifier];
    v193 = sub_22F740E20();
    v202 = v11;

    v12 = swift_allocObject();
    v13 = MEMORY[0x277D84F98];
    v14 = v12;
    *(v12 + 16) = MEMORY[0x277D84F98];
    v209 = v12;
    v210 = v12 + 16;
    v208 = swift_allocObject();
    *(v208 + 16) = v13;
    v222 = v208 + 16;
    v207 = swift_allocObject();
    *(v207 + 16) = v13;
    v213 = v207 + 16;
    v206 = swift_allocObject();
    *(v206 + 16) = v13;
    v194 = v206 + 16;
    v15 = [objc_allocWithZone(MEMORY[0x277D3B4C8]) init];
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    v203 = v16 + 16;
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    v197 = v17 + 16;
    v18 = [objc_opt_self() momentNodesInGraph_];
    sub_22F120634(0, &qword_2810A8FE8, off_27887B390);
    v219 = v18;
    v200 = [swift_getObjCClassFromMetadata(v19) nodesInGraph_];
    v205 = [objc_opt_self() edgesFromNodes:v18 toNodes:v200];
    v20 = swift_allocObject();
    v20[2] = v15;
    v20[3] = v16;
    v20[4] = v17;
    v20[5] = v206;
    v20[6] = v14;
    v20[7] = v208;
    v20[8] = v207;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_22F322B24;
    *(v21 + 24) = v20;
    v236 = sub_22F250854;
    v237 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v233 = 1107296256;
    v234 = sub_22F107E24;
    v235 = &block_descriptor_133;
    v22 = _Block_copy(&aBlock);
    v216 = v15;

    [v205 enumerateUsingBlock_];
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    sub_22F120634(0, &qword_2810A8F40, off_27887AD68);
    v199 = [swift_getObjCClassFromMetadata(v23) nodesInGraph_];
    v204 = [objc_opt_self() edgesFromNodes:v18 toNodes:v199];
    v24 = swift_allocObject();
    v24[2] = v216;
    v24[3] = v16;
    v24[4] = v17;
    v24[5] = v206;
    v24[6] = v209;
    v24[7] = v208;
    v24[8] = v207;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_22F322D70;
    *(v25 + 24) = v24;
    v236 = sub_22F26B650;
    v237 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v233 = 1107296256;
    v234 = sub_22F322D74;
    v235 = &block_descriptor_142;
    v26 = _Block_copy(&aBlock);
    v198 = v216;

    [v204 enumerateUsingBlock_];
    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      goto LABEL_166;
    }

    v27 = MEMORY[0x277D84F90];
    v217 = sub_22F150008(MEMORY[0x277D84F90]);
    v3 = v207 + 16;
    swift_beginAccess();
    a1 = (*v213 + 64);
    v28 = 1 << *(*v213 + 32);
    v29 = v28 < 64 ? ~(-1 << v28) : -1;
    v7 = v29 & *(*v213 + 64);
    v30 = (v28 + 63) >> 6;

    v32 = 0;
    v6 = 0;
LABEL_11:
    if (v7)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v36 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_158;
      }

      if (v36 >= v30)
      {
        break;
      }

      v7 = *(a1 + v36);
      ++v6;
      if (v7)
      {
        v6 = v36;
LABEL_10:
        v33 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v34 = v33 | (v6 << 6);
        v35 = *(*(v31 + 56) + 8 * v34);
        if (v35 >= v228)
        {
          v185 = v32 + 1;
          if (!__OFADD__(v32, 1))
          {
            v183 = v31;
            v37 = (*(v31 + 48) + 16 * v34);
            v38 = v37[1];
            v189 = *v37;

            v186 = sub_22F14E214(v27);
            swift_beginAccess();
            v39 = *v194;
            v184 = v38;
            if (*(*v194 + 16) && (v40 = sub_22F1229E8(v189, v38), (v41 & 1) != 0))
            {
              v42 = *(*(v39 + 56) + 8 * v40);
            }

            else
            {
              v42 = sub_22F14F1C0(v27);
            }

            swift_endAccess();
            v43 = 0;
            v44 = v42 + 64;
            v45 = 1 << *(v42 + 32);
            if (v45 < 64)
            {
              v46 = ~(-1 << v45);
            }

            else
            {
              v46 = -1;
            }

            v3 = v46 & *(v42 + 64);
            v47 = (v45 + 63) >> 6;
            v48 = v35;
            v214 = v42 + 64;
            v192 = v47;
            v220 = v42;
            if (!v3)
            {
LABEL_25:
              while (1)
              {
                v49 = v43 + 1;
                if (__OFADD__(v43, 1))
                {
                  goto LABEL_163;
                }

                if (v49 >= v47)
                {

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  aBlock = v217;
                  v3 = v184;
                  sub_22F132720(v186, v189, v184, isUniquelyReferenced_nonNull_native);

                  v217 = aBlock;
                  v27 = MEMORY[0x277D84F90];
                  v32 = v185;
                  v31 = v183;
                  goto LABEL_11;
                }

                v3 = *(v44 + 8 * v49);
                ++v43;
                if (v3)
                {
                  v43 = v49;
                  break;
                }
              }
            }

            while (2)
            {
              v50 = __clz(__rbit64(v3));
              v3 &= v3 - 1;
              v51 = v50 | (v43 << 6);
              v52 = (*(v42 + 48) + 16 * v51);
              v54 = *v52;
              v53 = v52[1];
              v190 = *(*(v42 + 56) + 8 * v51);
              swift_beginAccess();
              v55 = *v222;
              v56 = *(*v222 + 16);

              v191 = v54;
              if (v56 && (v57 = sub_22F1229E8(v54, v53), (v58 & 1) != 0))
              {
                v59 = *(*(v55 + 56) + 8 * v57);
                swift_endAccess();
                if (v59 >= v225)
                {
LABEL_32:
                  v182 = swift_isUniquelyReferenced_nonNull_native();
                  aBlock = v186;
                  v61 = sub_22F1229E8(v54, v53);
                  v62 = *(v186 + 16);
                  v63 = (v60 & 1) == 0;
                  v64 = v62 + v63;
                  if (__OFADD__(v62, v63))
                  {
                    goto LABEL_172;
                  }

                  if (*(v186 + 24) >= v64)
                  {
                    v42 = v220;
                    if ((v182 & 1) == 0)
                    {
                      v188 = v60;
                      sub_22F1341D8();
                      v60 = v188;
                      v42 = v220;
                    }
                  }

                  else
                  {
                    v187 = v60;
                    sub_22F12572C(v64, v182);
                    v65 = sub_22F1229E8(v191, v53);
                    v67 = v66 & 1;
                    v60 = v187;
                    if ((v187 & 1) != v67)
                    {
                      goto LABEL_174;
                    }

                    v61 = v65;
                    v42 = v220;
                  }

                  v68 = v190 / v48;
                  if (v60)
                  {

                    v186 = aBlock;
                    *(aBlock[7] + 8 * v61) = v68;
                  }

                  else
                  {
                    v69 = aBlock;
                    aBlock[(v61 >> 6) + 8] |= 1 << v61;
                    v70 = (v69[6] + 16 * v61);
                    *v70 = v191;
                    v70[1] = v53;
                    *(v69[7] + 8 * v61) = v68;
                    v71 = v69[2];
                    v72 = __OFADD__(v71, 1);
                    v73 = v71 + 1;
                    if (v72)
                    {
                      goto LABEL_173;
                    }

                    v186 = v69;
                    v69[2] = v73;
                  }

                  goto LABEL_38;
                }
              }

              else
              {
                swift_endAccess();
                if (v225 <= 0)
                {
                  goto LABEL_32;
                }
              }

              v42 = v220;
LABEL_38:
              v44 = v214;
              v47 = v192;
              if (!v3)
              {
                goto LABEL_25;
              }

              continue;
            }
          }

LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        goto LABEL_11;
      }
    }

    v75 = sub_22F14E214(MEMORY[0x277D84F90]);
    v3 = v210;
    swift_beginAccess();
    v76 = *v210;
    v6 = *v210 + 64;
    v77 = 1 << *(*v210 + 32);
    v78 = -1;
    if (v77 < 64)
    {
      v78 = ~(-1 << v77);
    }

    v79 = v78 & *(*v210 + 64);
    v80 = (v77 + 63) >> 6;
    v81 = v32;
    v82 = v75;

    v83 = 0;
LABEL_50:
    v229 = v82;
    while (v79)
    {
LABEL_58:
      v85 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v86 = v85 | (v83 << 6);
      v87 = (*(v76 + 48) + 16 * v86);
      v3 = *v87;
      a1 = v87[1];
      v7 = *(*(v76 + 56) + 8 * v86);
      swift_beginAccess();
      v88 = *v222;
      v89 = *(*v222 + 16);

      if (v89 && (v90 = sub_22F1229E8(v3, a1), (v91 & 1) != 0))
      {
        v92 = *(*(v88 + 56) + 8 * v90);
        swift_endAccess();
        if (v92 >= v225)
        {
LABEL_61:
          v93 = log(v81 / v7);
          v7 = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v229;
          v94 = sub_22F1229E8(v3, a1);
          v96 = v229[2];
          v97 = (v95 & 1) == 0;
          v72 = __OFADD__(v96, v97);
          v98 = v96 + v97;
          if (v72)
          {
            goto LABEL_170;
          }

          if (v229[3] < v98)
          {
            v230 = v95;
            sub_22F12572C(v98, v7);
            v94 = sub_22F1229E8(v3, a1);
            v100 = v99 & 1;
            v95 = v230;
            if ((v230 & 1) != v100)
            {
LABEL_174:
              result = sub_22F7420C0();
              __break(1u);
              return result;
            }

LABEL_66:
            if (v95)
            {
              goto LABEL_67;
            }

LABEL_69:
            v82 = aBlock;
            aBlock[(v94 >> 6) + 8] |= 1 << v94;
            v101 = (v82[6] + 16 * v94);
            *v101 = v3;
            v101[1] = a1;
            *(v82[7] + 8 * v94) = v93;
            v102 = v82[2];
            v72 = __OFADD__(v102, 1);
            v103 = v102 + 1;
            if (!v72)
            {
              v82[2] = v103;
              goto LABEL_50;
            }

LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          if (v7)
          {
            goto LABEL_66;
          }

          v231 = v94;
          LOBYTE(v7) = v95;
          sub_22F1341D8();
          v94 = v231;
          if ((v7 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_67:
          v3 = v94;

          v82 = aBlock;
          *(aBlock[7] + 8 * v3) = v93;
          goto LABEL_50;
        }
      }

      else
      {
        swift_endAccess();
        if (v225 <= 0)
        {
          goto LABEL_61;
        }
      }

      v82 = v229;
    }

    while (1)
    {
      v84 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_159;
      }

      if (v84 >= v80)
      {
        break;
      }

      v79 = *(v6 + 8 * v84);
      ++v83;
      if (v79)
      {
        v83 = v84;
        goto LABEL_58;
      }
    }

    v225 = sub_22F14E214(MEMORY[0x277D84F90]);
    v104 = 0;
    v105 = v217 + 64;
    v106 = 1 << *(v217 + 32);
    v107 = v106 < 64 ? ~(-1 << v106) : -1;
    v108 = v107 & *(v217 + 64);
    v109 = (v106 + 63) >> 6;
    v211 = v109;
LABEL_76:
    v110 = v219;
    if (!v108)
    {
      break;
    }

    v7 = v104;
LABEL_81:
    v111 = *(*(v217 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v108)))));
    v108 &= v108 - 1;
    v112 = v111 + 64;
    v113 = 1 << *(v111 + 32);
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    else
    {
      v114 = -1;
    }

    v6 = v114 & *(v111 + 64);
    v115 = (v113 + 63) >> 6;
    v221 = v111;

    v116 = 0;
    while (v6)
    {
LABEL_92:
      v118 = __clz(__rbit64(v6)) | (v116 << 6);
      v119 = (*(v221 + 48) + 16 * v118);
      v120 = *v119;
      a1 = v119[1];
      v121 = *(*(v221 + 56) + 8 * v118);
      v122 = v82[2];

      v123 = 0.0;
      v223 = v120;
      if (v122)
      {
        v124 = sub_22F1229E8(v120, a1);
        v82 = v229;
        if (v125)
        {
          v123 = *(v229[7] + 8 * v124);
        }
      }

      v3 = v82;
      v6 &= v6 - 1;
      v126 = v121 * v123;
      if (*(v225 + 16) && (v127 = sub_22F1229E8(v223, a1), v3 = v229, (v128 & 1) != 0))
      {
        if (*(*(v225 + 56) + 8 * v127) < v126)
        {
          goto LABEL_98;
        }

LABEL_86:

        v82 = v3;
      }

      else
      {
        if (v126 <= 0.0)
        {
          goto LABEL_86;
        }

LABEL_98:
        v195 = swift_isUniquelyReferenced_nonNull_native();
        v3 = v223;
        aBlock = v225;
        v129 = sub_22F1229E8(v223, a1);
        v131 = *(v225 + 16);
        v132 = (v130 & 1) == 0;
        v72 = __OFADD__(v131, v132);
        v133 = v131 + v132;
        if (v72)
        {
          goto LABEL_167;
        }

        if (*(v225 + 24) >= v133)
        {
          v82 = v229;
          if (v195)
          {
            if ((v130 & 1) == 0)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v196 = v129;
            v227 = v130;
            sub_22F1341D8();
            v82 = v229;
            v129 = v196;
            if ((v227 & 1) == 0)
            {
              goto LABEL_102;
            }
          }

LABEL_106:
          v3 = v129;

          v225 = aBlock;
          *(aBlock[7] + 8 * v3) = v126;
        }

        else
        {
          v226 = v130;
          sub_22F12572C(v133, v195);
          v129 = sub_22F1229E8(v223, a1);
          if ((v226 & 1) != (v134 & 1))
          {
            goto LABEL_174;
          }

          v82 = v229;
          if (v226)
          {
            goto LABEL_106;
          }

LABEL_102:
          v135 = aBlock;
          aBlock[(v129 >> 6) + 8] |= 1 << v129;
          v136 = (v135[6] + 16 * v129);
          *v136 = v223;
          v136[1] = a1;
          *(v135[7] + 8 * v129) = v126;
          v137 = v135[2];
          v72 = __OFADD__(v137, 1);
          v138 = v137 + 1;
          if (v72)
          {
            goto LABEL_168;
          }

          v225 = v135;
          v135[2] = v138;
        }
      }
    }

    while (1)
    {
      v117 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      if (v117 >= v115)
      {

        v104 = v7;
        v109 = v211;
        v105 = v217 + 64;
        goto LABEL_76;
      }

      v6 = *(v112 + 8 * v117);
      ++v116;
      if (v6)
      {
        v116 = v117;
        goto LABEL_92;
      }
    }

    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_once();
  }

  while (1)
  {
    v7 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      goto LABEL_160;
    }

    if (v7 >= v109)
    {
      break;
    }

    v108 = *(v105 + 8 * v7);
    ++v104;
    if (v108)
    {
      goto LABEL_81;
    }
  }

  v139 = [objc_opt_self() suggestableSceneNames];
  v3 = sub_22F741420();

  v140 = 0;
  v238 = MEMORY[0x277D84FA0];
  v141 = 1 << *(v3 + 32);
  v142 = -1;
  if (v141 < 64)
  {
    v142 = ~(-1 << v141);
  }

  v6 = v3 + 56;
  v7 = v142 & *(v3 + 56);
  v143 = (v141 + 63) >> 6;
  if (v7)
  {
    goto LABEL_117;
  }

  while (1)
  {
    v144 = v140 + 1;
    if (__OFADD__(v140, 1))
    {
      goto LABEL_161;
    }

    if (v144 >= v143)
    {
      break;
    }

    v7 = *(v6 + 8 * v144);
    ++v140;
    if (v7)
    {
      v140 = v144;
      do
      {
LABEL_117:
        v7 &= v7 - 1;
        v145 = sub_22F740EA0();
        sub_22F10BBDC(&aBlock, v145, v146);
      }

      while (v7);
      continue;
    }
  }

  v7 = v225 + 64;
  v147 = 1 << *(v225 + 32);
  if (v147 < 64)
  {
    v148 = ~(-1 << v147);
  }

  else
  {
    v148 = -1;
  }

  v6 = v148 & *(v225 + 64);
  v149 = (v147 + 63) >> 6;

  v3 = 0;
  v224 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v6)
    {
LABEL_128:
      v152 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v153 = v152 | (v3 << 6);
      v154 = *(*(v150 + 56) + 8 * v153);
      if (v154 <= 0.0)
      {
        continue;
      }

      v155 = *(v150 + 48) + 16 * v153;
      a1 = *v155;
      v156 = *(v155 + 8);
      swift_beginAccess();
      v157 = *v203;
      v158 = *(*v203 + 16);

      if (!v158 || (v159 = sub_22F1229E8(a1, v156), (v160 & 1) == 0))
      {
        swift_endAccess();
        goto LABEL_135;
      }

      v161 = *(*(v157 + 56) + 8 * v159);
      swift_endAccess();
      swift_beginAccess();
      v162 = *v197;
      if (!*(*v197 + 16) || (v163 = sub_22F1229E8(a1, v156), (v164 & 1) == 0))
      {
        swift_endAccess();
        v110 = v219;
LABEL_135:

        v150 = v225;
        continue;
      }

      v165 = (*(v162 + 56) + 16 * v163);
      v166 = v165[1];
      v215 = *v165;
      swift_endAccess();
      v167 = v238;
      v212 = v166;
      if (*(v238 + 16))
      {
        sub_22F742170();

        sub_22F740D60();
        v168 = sub_22F7421D0();
        v169 = -1 << *(v167 + 32);
        v170 = v168 & ~v169;
        if ((*(v167 + 56 + ((v170 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v170))
        {
          v218 = ~v169;
          while (1)
          {
            v171 = *(v167 + 48) + 16 * v170;
            v172 = *v171 == a1 && *(v171 + 8) == v156;
            if (v172 || (sub_22F742040() & 1) != 0)
            {
              break;
            }

            v170 = (v170 + 1) & v218;
            if (((*(v167 + 56 + ((v170 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v170) & 1) == 0)
            {
              goto LABEL_147;
            }
          }

          v154 = v5 + v154;
          goto LABEL_149;
        }
      }

      else
      {
      }

LABEL_147:

LABEL_149:
      aBlock = v161;
      v173 = sub_22F742010();
      v175 = v174;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v224 = sub_22F13FB00(0, *(v224 + 2) + 1, 1, v224);
      }

      v110 = v219;
      v150 = v225;
      v177 = *(v224 + 2);
      v176 = *(v224 + 3);
      a1 = (v177 + 1);
      if (v177 >= v176 >> 1)
      {
        v224 = sub_22F13FB00((v176 > 1), v177 + 1, 1, v224);
        v150 = v225;
      }

      *(v224 + 2) = a1;
      v178 = &v224[64 * v177];
      v178[32] = 5;
      v179 = *(&aBlock + 3);
      *(v178 + 33) = aBlock;
      *(v178 + 9) = v179;
      *(v178 + 5) = v215;
      *(v178 + 6) = v212;
      *(v178 + 7) = v173;
      *(v178 + 8) = v175;
      *(v178 + 9) = v154;
      *(v178 + 10) = v193;
      *(v178 + 11) = v202;
      continue;
    }

    break;
  }

  while (1)
  {
    v151 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_162;
    }

    if (v151 >= v149)
    {
      break;
    }

    v6 = *(v7 + 8 * v151);
    ++v3;
    if (v6)
    {
      v3 = v151;
      goto LABEL_128;
    }
  }

  if ((v201 & 1) == 0)
  {
    v180 = sub_22F31E70C(v224);

    v224 = v180;
  }

  sub_22F7416A0();

  sub_22F1B2BBC(0);

  return v224;
}

uint64_t sub_22F320284(void *a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v6 = qword_2810B4DF0;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphPublicEventEntities", 28, 2u, v7, 0, v6, v38);
  sub_22F741690();
  if (v2)
  {
    sub_22F1B2BBC(0);

    return v3;
  }

  v8 = [a1 localeIdentifier];
  v9 = sub_22F740E20();
  v11 = v10;

  sub_22F120634(0, &qword_2810A8F80, off_27887B300);
  v13 = [swift_getObjCClassFromMetadata(v12) nodesInGraph_];
  v39 = 0;
  v14 = MEMORY[0x277D84F90];
  v37 = sub_22F14F1C0(MEMORY[0x277D84F90]);
  v36 = sub_22F14F1C0(v14);
  v35 = sub_22F14F1C0(v14);
  v15 = swift_allocObject();
  v15[2] = &v39;
  v15[3] = &v37;
  v15[4] = &v36;
  v15[5] = &v35;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22F322A98;
  *(v16 + 24) = v15;
  aBlock[4] = sub_22F250854;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_80;
  v17 = _Block_copy(aBlock);

  [v13 enumerateUsingBlock_];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    LOBYTE(aBlock[0]) = 8;
    v19 = v39;

    sub_22F31D2D0(v20, aBlock, v19, v9, v11);
    v22 = v21;

    LOBYTE(aBlock[0]) = 9;
    v23 = v39;

    sub_22F31D2D0(v24, aBlock, v23, v9, v11);
    v26 = v25;

    LOBYTE(aBlock[0]) = 10;
    v27 = v39;

    sub_22F31D2D0(v28, aBlock, v27, v9, v11);
    v30 = v29;

    if ((v5 & 1) == 0)
    {
      v31 = sub_22F31E70C(v22);

      v32 = sub_22F31E70C(v26);

      v33 = sub_22F31E70C(v30);

      v30 = v33;
      v26 = v32;
      v22 = v31;
    }

    sub_22F7416A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB36F8, &unk_22F785BE0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_22F7707D0;
    *(v3 + 32) = v22;
    *(v3 + 40) = v26;
    *(v3 + 48) = v30;

    sub_22F1B2BBC(0);

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_22F32071C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v73 = a4;
  v79 = a3;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v74 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3700, &qword_22F785BF0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - v15;
  v17 = sub_22F73F760();
  v80 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v76 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22F73F7C0();
  v77 = *(v19 - 8);
  v78 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v22 = qword_2810B4DF0;
  *&v23 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphHolidayEntities", 24, 2u, v23, 0, v22, v89);
  sub_22F741690();
  if (v5)
  {
    sub_22F1B2BBC(0);

LABEL_14:

    return v16;
  }

  v71 = a5;
  v24 = [a1 localeIdentifier];
  v70 = sub_22F740E20();
  v26 = v25;

  v27 = [objc_opt_self() currentLocale];
  sub_22F73F740();

  sub_22F73F770();
  v28 = v80;
  if ((*(v80 + 48))(v16, 1, v17) == 1)
  {

    sub_22F120ADC(v16, &qword_27DAB3700, &qword_22F785BF0);
    (*(v77 + 8))(v21, v78);
    sub_22F1B2BBC(0);

    v16 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v64 = v26;
  v65 = v10;
  v66 = v9;
  v29 = *(v28 + 32);
  v62 = v17;
  v29(v76, v16, v17);
  result = sub_22F73F700();
  v67 = result;
  v68 = v31;
  v63 = 10 * v79;
  if ((v79 * 10) >> 64 != (10 * v79) >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  v32 = objc_allocWithZone(MEMORY[0x277D276D8]);
  v33 = sub_22F73F730();
  v69 = [v32 initWithLocale_];

  sub_22F120634(0, &qword_2810A8FA8, off_27887AE20);
  v35 = [swift_getObjCClassFromMetadata(v34) nodesInGraph_];
  v36 = objc_opt_self();
  v37 = sub_22F73F5B0();
  v38 = [v36 dateByAddingWeeksOfYear:-1 toDate:v37];

  sub_22F73F640();
  v39 = sub_22F73F5B0();
  v40 = [v36 dateByAddingWeeksOfYear:4 toDate:v39];

  sub_22F73F640();
  v90 = MEMORY[0x277D84FA0];
  v73 = v35;
  v41 = [v35 holidayNames];
  sub_22F741420();

  v42 = sub_22F741410();

  v43 = sub_22F73F5B0();
  v44 = sub_22F73F5B0();
  v45 = sub_22F740DF0();

  v46 = swift_allocObject();
  *(v46 + 16) = &v90;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_22F322A54;
  *(v47 + 24) = v46;
  v68 = v46;
  v87 = sub_22F322A5C;
  v88 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_22F31D50C;
  v86 = &block_descriptor_62_0;
  v48 = _Block_copy(&aBlock);

  [v69 enumerateEventRulesWithNames:v42 betweenLocalDate:v43 andLocalDate:v44 supportedCountryCode:v45 usingBlock:v48];

  _Block_release(v48);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v49 = 1.0 / v63;
  v82 = MEMORY[0x277D84F90];
  v81 = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = &v90;
  *(v50 + 32) = v79;
  *(v50 + 40) = &v81;
  v51 = v64;
  *(v50 + 48) = v70;
  *(v50 + 56) = v51;
  *(v50 + 64) = &v82;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_22F322A84;
  *(v52 + 24) = v50;
  v87 = sub_22F26B650;
  v88 = v52;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_22F322D74;
  v86 = &block_descriptor_71;
  v53 = _Block_copy(&aBlock);

  v54 = v73;
  [v73 enumerateUsingBlock_];
  _Block_release(v53);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  v55 = v66;
  v56 = v65;
  if ((v53 & 1) == 0)
  {
    v57 = v62;
    if ((v72 & 1) == 0 && v81 == 1)
    {

      v59 = sub_22F31E70C(v58);
      v54 = v73;

      v82 = v59;
    }

    sub_22F7416A0();

    v60 = *(v56 + 8);
    v60(v74, v55);
    v60(v75, v55);
    (*(v80 + 8))(v76, v57);
    (*(v77 + 8))(v21, v78);
    v16 = v82;

    sub_22F1B2BBC(0);

    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
  return result;
}

char *sub_22F3211F0(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  LOBYTE(v7) = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
LABEL_52:
    swift_once();
  }

  v8 = qword_2810B4DF0;
  *&v9 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphTripEntities", 21, 2u, v9, 0, v8, v105);
  sub_22F741690();
  if (v4)
  {
    sub_22F1B2BBC(0);
  }

  v84 = v5;
  v11 = [a1 localeIdentifier];
  v83 = sub_22F740E20();
  v87 = v12;

  sub_22F120634(0, &qword_2810A8F38, off_27887ADC8);
  v14 = [swift_getObjCClassFromMetadata(v13) nodesInGraph_];
  v104 = 0;
  v103 = sub_22F14F1C0(MEMORY[0x277D84F90]);
  v15 = [objc_allocWithZone(PGGraphLocationHelper) initWithGraph_];
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &v104;
  v16[4] = &v103;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22F322998;
  *(v17 + 24) = v16;
  *&v101 = sub_22F26B650;
  *(&v101 + 1) = v17;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v100 = sub_22F322D74;
  *(&v100 + 1) = &block_descriptor_53;
  v18 = _Block_copy(&aBlock);
  v85 = v15;

  v86 = v14;
  [v14 enumerateUsingBlock_];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_54;
  }

  v4 = v104;
  if (v104 < 1)
  {

    if (qword_2810A9400 == -1)
    {
LABEL_25:
      v50 = sub_22F740B90();
      __swift_project_value_buffer(v50, qword_2810B4CE0);
      v51 = sub_22F740B70();
      v52 = sub_22F7415E0();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_22F0FC000, v51, v52, "GraphEntityRanker: totalNumberOfMomentAssets is 0 when ranking trip entities", v53, 2u);
        MEMORY[0x2319033A0](v53, -1, -1);
      }

      sub_22F1B2BBC(0);

      return MEMORY[0x277D84F90];
    }

LABEL_54:
    swift_once();
    goto LABEL_25;
  }

  v20 = v103;
  v21 = v103 + 64;
  v22 = 1 << *(v103 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  a1 = v23 & *(v103 + 64);
  v24 = (v22 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v5 = 0;
  v25 = MEMORY[0x277D84F90];
  while (a1)
  {
LABEL_9:
    v26 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v27 = v26 | (v5 << 6);
    v28 = *(*(v20 + 56) + 8 * v27) / v4;
    if (v28 > 0.0)
    {
      v30 = (*(v20 + 48) + 16 * v27);
      v81 = *v30;
      v31 = v30[1];

      v32 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_22F13FB00(0, *(v25 + 16) + 1, 1, v25);
      }

      v25 = v32;
      v33 = *(v32 + 2);
      v34 = *(v25 + 24);
      v35 = v33 + 1;
      if (v33 >= v34 >> 1)
      {
        v38 = sub_22F13FB00((v34 > 1), v33 + 1, 1, v25);
        v35 = v33 + 1;
        v25 = v38;
      }

      *(v25 + 16) = v35;
      v36 = v25 + (v33 << 6);
      *(v36 + 32) = 12;
      v37 = aBlock;
      *(v36 + 36) = *(&aBlock + 3);
      *(v36 + 33) = v37;
      *(v36 + 40) = v81;
      *(v36 + 48) = v31;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      *(v36 + 72) = v28;
      *(v36 + 80) = v83;
      *(v36 + 88) = v87;
      v4 = v104;
    }
  }

  while (1)
  {
    v29 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v29 >= v24)
    {
      break;
    }

    a1 = *(v21 + 8 * v29);
    ++v5;
    if (a1)
    {
      v5 = v29;
      goto LABEL_9;
    }
  }

  if (v7)
  {
    v39 = *(v25 + 16);
    if (v39)
    {
      goto LABEL_22;
    }

LABEL_29:

    sub_22F7416A0();

    sub_22F1B2BBC(0);

    return v25;
  }

  v54 = sub_22F31E70C(v25);

  v25 = v54;
  v39 = *(v54 + 16);
  if (!v39)
  {
    goto LABEL_29;
  }

LABEL_22:
  v40 = *(v25 + 32);
  v41 = *(v25 + 48);
  v42 = *(v25 + 80);
  v101 = *(v25 + 64);
  v102 = v42;
  aBlock = v40;
  v100 = v41;
  v5 = *(&v42 + 1);
  a1 = v42;
  v43 = *(&v101 + 1);
  v44 = *(&v41 + 1);
  v45 = v101;
  v7 = *(&v40 + 1);
  v4 = v41;
  v46 = v40;
  v82 = v39;

  sub_22F3229A4(&aBlock, v93);
  v47 = v82;
  v93[0] = v46;
  v94 = v7;
  v95 = __PAIR128__(v44, v4);
  v96 = v45;
  v97 = v43;
  v98 = __PAIR128__(v5, a1);
  v48 = v82 - 1;
  if (v82 != 1)
  {
    v55 = v25 + 32;
    v56 = 1;
    v49 = v25;
LABEL_31:
    v57 = v43;
    v58 = (v55 + (v56 << 6));
    v59 = v56;
    while (v59 < *(v49 + 16))
    {
      v60 = *v58;
      v61 = v58[1];
      v62 = v58[3];
      v91 = v58[2];
      v92 = v62;
      v89 = v60;
      v90 = v61;
      v56 = v59 + 1;
      v43 = *(&v91 + 1);
      if (v57 < *(&v91 + 1))
      {
        v63 = v49;
        v64 = v48;
        v65 = v55;
        sub_22F3229A4(&v89, v88);
        sub_22F322A00(v93);
        v55 = v65;
        v48 = v64;
        v47 = v82;
        v49 = v63;
        v5 = *(&v92 + 1);
        a1 = v92;
        v44 = *(&v90 + 1);
        v45 = v91;
        v7 = *(&v89 + 1);
        v4 = v90;
        v46 = v89;
        v93[0] = v89;
        v94 = *(&v89 + 1);
        v95 = v90;
        v96 = v91;
        v97 = v43;
        v98 = v92;
        if (v48 != v59)
        {
          goto LABEL_31;
        }

        goto LABEL_37;
      }

      v93[0] = v46;
      v94 = v7;
      *&v95 = v4;
      *(&v95 + 1) = v44;
      v96 = v45;
      v97 = v57;
      v58 += 4;
      ++v59;
      *&v98 = a1;
      *(&v98 + 1) = v5;
      if (v47 == v56)
      {
        v43 = v57;
        goto LABEL_37;
      }
    }

    goto LABEL_51;
  }

  v49 = v25;
LABEL_37:
  v66 = v49;

  sub_22F322A00(v93);
  v67 = *(v84 + OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_bundle);
  v68 = sub_22F740DF0();
  v69 = sub_22F740DF0();
  v70 = sub_22F740DF0();
  v71 = [v67 localizedStringForKey:v68 value:v69 table:v70];

  v72 = sub_22F740E20();
  v74 = v73;

  v75 = v72 == 0x6E756F6620746F4ELL && v74 == 0xE900000000000064;
  if (v75 || (sub_22F742040() & 1) != 0)
  {
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_22F13FB00(0, *(v66 + 2) + 1, 1, v66);
    }

    v76 = v66;
    v78 = *(v66 + 2);
    v77 = *(v66 + 3);
    if (v78 >= v77 >> 1)
    {
      v76 = sub_22F13FB00((v77 > 1), v78 + 1, 1, v66);
    }

    *(v76 + 2) = v78 + 1;
    v66 = v76;
    v79 = &v76[64 * v78];
    v79[32] = 12;
    v80 = *(&v89 + 3);
    *(v79 + 33) = v89;
    *(v79 + 9) = v80;
    *(v79 + 5) = v72;
    *(v79 + 6) = v74;
    *(v79 + 7) = 0;
    *(v79 + 8) = 0;
    *(v79 + 9) = v43;
    *(v79 + 10) = v83;
    *(v79 + 11) = v87;
  }

  sub_22F7416A0();

  sub_22F1B2BBC(0);

  return v66;
}

unint64_t sub_22F321BD8(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v6 = qword_2810B4DF0;
    *&v7 = CACurrentMediaTime();
    sub_22F1B560C("rankGraphBusinessEntities", 25, 2u, v7, 0, v6, v78);
    sub_22F741690();
    if (v3)
    {
      sub_22F1B2BBC(0);

      goto LABEL_42;
    }

    v8 = [a1 localeIdentifier];
    v9 = sub_22F740E20();
    v11 = v10;

    sub_22F120634(0, &qword_2810A8F98, off_27887AC80);
    v13 = [swift_getObjCClassFromMetadata(v12) nodesInGraph_];
    v77 = 0;
    v14 = MEMORY[0x277D84F90];
    v76 = sub_22F14F1C0(MEMORY[0x277D84F90]);
    v75 = sub_22F14F1C0(v14);
    a1 = swift_allocObject();
    a1[2] = &v77;
    a1[3] = &v76;
    a1[4] = &v75;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_22F32298C;
    *(v15 + 24) = a1;
    aBlock[4] = sub_22F26B650;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F322D74;
    aBlock[3] = &block_descriptor_44;
    v16 = _Block_copy(aBlock);

    [v13 enumerateUsingBlock_];
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
      goto LABEL_47;
    }

    v17 = v77;
    if (v77 < 1)
    {
      break;
    }

    v69 = v9;
    v73 = v11;
    v70 = v5;
    v71 = v13;
    v18 = v76;
    v19 = v76 + 64;
    v20 = 1 << *(v76 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v5 = v21 & *(v76 + 64);
    v22 = (v20 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v23 = 0;
    v72 = MEMORY[0x277D84F90];
    while (v5)
    {
LABEL_9:
      v24 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v25 = v24 | (v23 << 6);
      v26 = *(*(v18 + 56) + 8 * v25) / v17;
      if (v26 > 0.0)
      {
        v28 = (*(v18 + 48) + 16 * v25);
        v66 = v28[1];
        v67 = *v28;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_22F13FB00(0, *(v72 + 2) + 1, 1, v72);
        }

        v30 = *(v72 + 2);
        v29 = *(v72 + 3);
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v34 = sub_22F13FB00((v29 > 1), v30 + 1, 1, v72);
          v31 = v30 + 1;
          v72 = v34;
        }

        *(v72 + 2) = v31;
        v32 = &v72[64 * v30];
        v32[32] = 13;
        v33 = aBlock[0];
        *(v32 + 9) = *(aBlock + 3);
        *(v32 + 33) = v33;
        *(v32 + 5) = v67;
        *(v32 + 6) = v66;
        *(v32 + 7) = 0;
        *(v32 + 8) = 0;
        *(v32 + 9) = v26;
        *(v32 + 10) = v69;
        *(v32 + 11) = v73;
        v17 = v77;
      }
    }

    while (1)
    {
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v27 >= v22)
      {
        break;
      }

      v5 = *(v19 + 8 * v27);
      ++v23;
      if (v5)
      {
        v23 = v27;
        goto LABEL_9;
      }
    }

    v35 = v75;
    v36 = v75 + 64;
    v37 = 1 << *(v75 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v75 + 64);
    v40 = (v37 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v5 = 0;
    v41 = MEMORY[0x277D84F90];
    while (v39)
    {
LABEL_23:
      v42 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v43 = v42 | (v5 << 6);
      v44 = *(*(v35 + 56) + 8 * v43) / v77;
      if (v44 > 0.0)
      {
        v46 = (*(v35 + 48) + 16 * v43);
        v47 = v46[1];
        v68 = *v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_22F13FB00(0, *(v41 + 2) + 1, 1, v41);
        }

        v49 = *(v41 + 2);
        v48 = *(v41 + 3);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          v65 = v49 + 1;
          v53 = v41;
          v54 = *(v41 + 2);
          v55 = sub_22F13FB00((v48 > 1), v49 + 1, 1, v53);
          v50 = v65;
          v49 = v54;
          v41 = v55;
        }

        *(v41 + 2) = v50;
        v51 = &v41[64 * v49];
        v51[32] = 14;
        v52 = *(aBlock + 3);
        *(v51 + 33) = aBlock[0];
        *(v51 + 9) = v52;
        *(v51 + 5) = v68;
        *(v51 + 6) = v47;
        *(v51 + 7) = 0;
        *(v51 + 8) = 0;
        *(v51 + 9) = v44;
        *(v51 + 10) = v69;
        *(v51 + 11) = v73;
      }
    }

    while (1)
    {
      v45 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v45 >= v40)
      {

        if (v70)
        {
          v56 = v71;
          v57 = v72;
        }

        else
        {
          v62 = sub_22F31E70C(v72);

          v63 = sub_22F31E70C(v41);

          v41 = v63;
          v57 = v62;
          v56 = v71;
        }

        sub_22F7416A0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB36F8, &unk_22F785BE0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_22F770DF0;
        *(v5 + 32) = v57;
        *(v5 + 40) = v41;

        sub_22F1B2BBC(0);

        goto LABEL_42;
      }

      v39 = *(v36 + 8 * v45);
      ++v5;
      if (v39)
      {
        v5 = v45;
        goto LABEL_23;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  if (qword_2810A9400 == -1)
  {
    goto LABEL_37;
  }

LABEL_47:
  swift_once();
LABEL_37:
  v58 = sub_22F740B90();
  __swift_project_value_buffer(v58, qword_2810B4CE0);
  v59 = sub_22F740B70();
  v60 = sub_22F7415E0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_22F0FC000, v59, v60, "GraphEntityRanker: totalNumberOfMomentAssets is 0 when ranking business entities", v61, 2u);
    MEMORY[0x2319033A0](v61, -1, -1);
  }

  sub_22F1B2BBC(0);

  v5 = MEMORY[0x277D84F90];
LABEL_42:

  return v5;
}

uint64_t sub_22F3223D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v7 = qword_2810B4DF0;
  *&v8 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphLocationEntities", 25, 2u, v8, 0, v7, v30);
  sub_22F741690();
  if (v3)
  {
    sub_22F1B2BBC(0);

    return a3;
  }

  v9 = [a1 localeIdentifier];
  v10 = sub_22F740E20();
  v12 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB36F0, &qword_22F785BD8);
  v14 = [swift_getObjCClassFromMetadata(v13) nodesInGraph_];
  v28 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = v10;
  v15[4] = v12;
  v15[5] = &v29;
  v15[6] = &v28;
  v15[7] = &v27;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22F32297C;
  *(v16 + 24) = v15;
  v26[4] = sub_22F250854;
  v26[5] = v16;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_22F107E24;
  v26[3] = &block_descriptor_35_0;
  v17 = _Block_copy(v26);

  [v14 enumerateNodesUsingBlock_];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    if ((v6 & 1) == 0)
    {

      v20 = sub_22F31E70C(v19);

      v29 = v20;

      v22 = sub_22F31E70C(v21);

      v28 = v22;

      v24 = sub_22F31E70C(v23);

      v27 = v24;
    }

    sub_22F7416A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB36F8, &unk_22F785BE0);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_22F7707D0;
    v25 = v28;
    *(a3 + 32) = v29;
    *(a3 + 40) = v25;
    *(a3 + 48) = v27;

    sub_22F1B2BBC(0);

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for GraphEntityRanker(uint64_t a1)
{
  result = qword_2810AC450;
  if (!qword_2810AC450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F322808(uint64_t a1)
{
  result = sub_22F73F9B0();
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

uint64_t sub_22F3228D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22F322924(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t objectdestroy_85Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_126Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F322BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3728, &qword_22F785C18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22F322C2C(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = *(sub_22F73F690() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22F31A8E0(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_22F322D7C()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_2810B4F18);
  v1 = __swift_project_value_buffer(v0, qword_2810B4F18);
  if (qword_2810A9BB0 != -1)
  {
    swift_once();
  }

  sub_22F1B3158(v1);
}

uint64_t sub_22F322F98()
{
  v1 = OBJC_IVAR___PGSocialGroupPersistenceActions_socialGroupsSkippedBecauseNoCommonAssets;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

uint64_t sub_22F32302C()
{
  v1 = OBJC_IVAR___PGSocialGroupPersistenceActions_newAutomaticSocialGroupMembersAndOrders;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

void sub_22F3230C0()
{
  v1 = OBJC_IVAR___PGSocialGroupPersistenceActions_currentAutomaticSocialGroupsToModifyAndOrders;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = (v5 + 16 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *v7;
        v4 = v8 + 1;
        v10 = *(v7 - 1);
        if ([v10 automaticOrder] != v9)
        {
          break;
        }

        v7 += 2;
        ++v8;
        if (v3 == v4)
        {
          goto LABEL_13;
        }
      }

      v14 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22F146C34(0, *(v6 + 16) + 1, 1);
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22F146C34((v11 > 1), v12 + 1, 1);
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v5 = v14;
    }

    while (v3 - 1 != v8);
  }

LABEL_13:
}

uint64_t sub_22F323270()
{
  v1 = *(v0 + OBJC_IVAR___PGSocialGroupPersistenceActions_outdatedAutomaticSocialGroupsToDelete);
  if ((v1 & 0xC000000000000001) != 0)
  {
    return sub_22F741A00();
  }

  else
  {
    return *(v1 + 16);
  }
}

id SocialGroupsPromoter.SocialGroupPersistenceActions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SocialGroupsPromoter.SocialGroupPersistenceActions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialGroupsPromoter.SocialGroupPersistenceActions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *static SocialGroupsPromoter.promoteSocialGroups(in:photoLibrary:maxNumberOfElectedSocialGroups:progressReporter:persistGroups:)(void *a1, void *a2, char **a3, uint64_t a4, char a5)
{
  v10 = sub_22F7416B0();
  v39 = v11;
  sub_22F741690();
  if (v5)
  {
  }

  else
  {
    v35 = a3;
    if (qword_2810A9BB0 != -1)
    {
      swift_once();
    }

    v34 = a5;
    v12 = qword_2810B4E80;
    *&v13 = CACurrentMediaTime();
    sub_22F1B560C("SocialGroupPromotion", 20, 2u, v13, 0, v12, v38);
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v14 = sub_22F740B90();
    __swift_project_value_buffer(v14, qword_2810B4F18);
    v15 = sub_22F740B70();
    v16 = sub_22F7415D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22F0FC000, v15, v16, "Starting social group promotion...", v17, 2u);
      MEMORY[0x2319033A0](v17, -1, -1);
    }

    v18 = type metadata accessor for SocialGroupsElector();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR___PGSocialGroupsElector_graph] = a1;
    *&v19[OBJC_IVAR___PGSocialGroupsElector_photoLibrary] = a2;
    v37.receiver = v19;
    v37.super_class = v18;
    v20 = a1;
    v21 = a2;
    v22 = objc_msgSendSuper2(&v37, sel_init);
    v23 = SocialGroupsElector.electSocialGroups(maxNumberOfElectedSocialGroups:progressReporter:)(v35, v10);

    v24 = sub_22F740B70();
    v25 = sub_22F7415D0();
    if (os_log_type_enabled(v24, v25))
    {
      v36 = v21;
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      if (v23 >> 62)
      {
        v27 = sub_22F741A00();
      }

      else
      {
        v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v26 + 4) = v27;

      _os_log_impl(&dword_22F0FC000, v24, v25, "Elected %ld groups to promote into Photos database", v26, 0xCu);
      MEMORY[0x2319033A0](v26, -1, -1);

      v21 = v36;
    }

    else
    {
    }

    sub_22F741690();
    static SocialGroupsPromoter.promote(_:in:photoLibrary:progressReporter:persistGroups:)(v23, v20, v21, v39, v34 & 1);
    a1 = v29;

    v30 = sub_22F740B70();
    v31 = sub_22F7415D0();
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22F0FC000, v30, v31, "Finished social group promotion", v33, 2u);
      MEMORY[0x2319033A0](v33, -1, -1);
    }

    sub_22F741690();
    sub_22F1B2BBC(0);
  }

  return a1;
}

void static SocialGroupsPromoter.promote(_:in:photoLibrary:progressReporter:persistGroups:)(unint64_t a1, void *a2, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a4, char a5)
{
  v9 = a1;
  v10 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= 1)
    {
      goto LABEL_3;
    }

LABEL_55:
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v77 = sub_22F740B90();
    __swift_project_value_buffer(v77, qword_2810B4F18);
    v78 = sub_22F740B70();
    v79 = sub_22F7415E0();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_22F0FC000, v78, v79, "No elected social groups passed into promote method, returning...", v80, 2u);
      MEMORY[0x2319033A0](v80, -1, -1);
    }

    sub_22F741690();
    if (!v6)
    {
      v81 = type metadata accessor for SocialGroupsPromoter.SocialGroupPersistenceActions();
      v82 = objc_allocWithZone(v81);
      v83 = MEMORY[0x277D84F90];
      *&v82[OBJC_IVAR___PGSocialGroupPersistenceActions_socialGroupsSkippedBecauseNoCommonAssets] = MEMORY[0x277D84F90];
      *&v82[OBJC_IVAR___PGSocialGroupPersistenceActions_newAutomaticSocialGroupMembersAndOrders] = v83;
      *&v82[OBJC_IVAR___PGSocialGroupPersistenceActions_currentAutomaticSocialGroupsToModifyAndOrders] = v83;
      *&v82[OBJC_IVAR___PGSocialGroupPersistenceActions_outdatedAutomaticSocialGroupsToDelete] = MEMORY[0x277D84FA0];
      v108.receiver = v82;
      v108.super_class = v81;
      objc_msgSendSuper2(&v108, sel_init);
    }

    return;
  }

  while (2)
  {
    v75 = a5;
    v76 = sub_22F741A00();
    a5 = v75;
    v11 = v76;
    if (v76 < 1)
    {
      goto LABEL_55;
    }

LABEL_3:
    v94 = a5;
    v95 = v5;
    sub_22F741690();
    if (!v6)
    {
      v93 = a2;
      v100 = isUniquelyReferenced_nonNull_native;
      *v107 = MEMORY[0x277D84F90];
      sub_22F741BD0();
      v12 = &OBJC_IVAR___PGElectedSocialGroup_socialGroup;
      v102 = v9 & 0xC000000000000001;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = 0;
        do
        {
          v14 = v13 + 1;
          v15 = *(MEMORY[0x2319016F0]() + OBJC_IVAR___PGElectedSocialGroup_socialGroup);
          swift_unknownObjectRelease();
          sub_22F741BA0();
          sub_22F741BE0();
          sub_22F741BF0();
          sub_22F741BB0();
          v13 = v14;
        }

        while (v11 != v14);
      }

      else
      {
        v16 = (v9 + 32);
        do
        {
          v17 = *v16++;
          v18 = *(v17 + OBJC_IVAR___PGElectedSocialGroup_socialGroup);
          sub_22F741BA0();
          sub_22F741BE0();
          sub_22F741BF0();
          sub_22F741BB0();
          --v11;
        }

        while (v11);
      }

      v19 = sub_22F32B11C(*v107, a2);

      v6 = 0;
      sub_22F741690();
      v99 = v19;
      if (v10)
      {
        v20 = sub_22F741A00();
        v21 = v19;
        v22 = isUniquelyReferenced_nonNull_native;
        if (v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v21 = v19;
        v22 = isUniquelyReferenced_nonNull_native;
        if (v20)
        {
LABEL_12:
          if (v20 < 1)
          {
            __break(1u);
            goto LABEL_71;
          }

          a2 = 0;
          v23 = MEMORY[0x277D84F90];
          v24 = MEMORY[0x277D84F98];
          v101 = v9;
          v98 = v20;
          while (1)
          {
            v25 = v102 ? MEMORY[0x2319016F0](a2, v9) : *(v9 + 8 * a2 + 32);
            v26 = v25;
            v106 = objc_autoreleasePoolPush();
            v105 = *&v26[OBJC_IVAR___PGElectedSocialGroup_socialGroup];
            v27 = sub_22F32B718(v105, v21, v22);
            if (v27)
            {
              break;
            }

            v9 = v101;
LABEL_15:
            a2 = a2 + 1;
            objc_autoreleasePoolPop(v106);

            if (v20 == a2)
            {
              goto LABEL_44;
            }
          }

          v9 = v27;
          v29 = v28;
          v104 = v24;
          if (qword_2810AA918 != -1)
          {
            swift_once();
          }

          v30 = sub_22F740B90();
          __swift_project_value_buffer(v30, qword_2810B4F18);

          v31 = sub_22F740B70();
          v32 = sub_22F7415C0();

          if (os_log_type_enabled(v31, v32))
          {
            v96 = v26;
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *v107 = v34;
            *v33 = 134218242;
            v97 = v23;
            if (v9 >> 62)
            {
              v35 = sub_22F741A00();
            }

            else
            {
              v35 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v33 + 4) = v35;

            *(v33 + 12) = 2080;
            v36 = MEMORY[0x231900D40](v29, MEMORY[0x277D837D0]);
            v38 = v37;

            v39 = sub_22F145F20(v36, v38, v107);

            *(v33 + 14) = v39;
            _os_log_impl(&dword_22F0FC000, v31, v32, "Elected group to persist has %ld members in it: %s", v33, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v34);
            MEMORY[0x2319033A0](v34, -1, -1);
            MEMORY[0x2319033A0](v33, -1, -1);

            v26 = v96;
            v23 = v97;
          }

          else
          {
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_22F13FE74(0, v23[2] + 1, 1, v23);
          }

          v41 = v23[2];
          v40 = v23[3];
          v42 = v26;
          if (v41 >= v40 >> 1)
          {
            v23 = sub_22F13FE74((v40 > 1), v41 + 1, 1, v23);
          }

          v23[2] = v41 + 1;
          v43 = v23;
          v23[v41 + 4] = v9;
          v10 = sub_22F152B5C(v9);

          v44 = v105;
          v5 = v104;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v107 = v104;
          v45 = sub_22F123618(v10);
          v47 = *(v104 + 16);
          v48 = (v46 & 1) == 0;
          v49 = __OFADD__(v47, v48);
          v50 = v47 + v48;
          if (v49)
          {
            __break(1u);
            continue;
          }

          v51 = v46;
          if (*(v104 + 24) >= v50)
          {
            v9 = v101;
            v21 = v99;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v56 = v45;
              sub_22F137E84();
              v21 = v99;
              v45 = v56;
            }

            v23 = v43;
            v24 = *v107;
            if ((v51 & 1) == 0)
            {
LABEL_35:
              sub_22F1534C8();
LABEL_40:
              v20 = v98;
              v26 = v42;
              v22 = v100;
              goto LABEL_15;
            }
          }

          else
          {
            sub_22F12C32C(v50, isUniquelyReferenced_nonNull_native);
            v52 = *v107;
            v45 = sub_22F123618(v10);
            v9 = v101;
            if ((v51 & 1) != (v53 & 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3760, &unk_22F785C30);
              sub_22F7420C0();
              __break(1u);
              objc_autoreleasePoolPop(v52);
              __break(1u);
              return;
            }

            v23 = v43;
            v21 = v99;
            v24 = *v107;
            if ((v51 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v54 = *(v24 + 56);
          v55 = *(v54 + 8 * v45);
          *(v54 + 8 * v45) = v44;

          goto LABEL_40;
        }
      }

      v24 = MEMORY[0x277D84F98];
      v23 = MEMORY[0x277D84F90];
LABEL_44:
      v104 = v24;

      sub_22F741690();
      v57 = sub_22F7416E0();
      v59 = v58;
      v61 = v60;
      v12 = v62;

      sub_22F3246DC(v23, v22);
      v9 = v63;
      v106 = v59;
      sub_22F741690();
      if (v94)
      {
        v105 = v61;
        if (qword_2810AA918 != -1)
        {
          goto LABEL_72;
        }

        while (1)
        {
          v64 = sub_22F740B90();
          __swift_project_value_buffer(v64, qword_2810B4F18);
          v65 = sub_22F740B70();
          v66 = sub_22F7415C0();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&dword_22F0FC000, v65, v66, "Updating the social group nodes of currently persisted groups...", v67, 2u);
            MEMORY[0x2319033A0](v67, -1, -1);
          }

          sub_22F741690();
          v103 = v12;
          v12 = sub_22F32AFB4(v22);
          v68 = OBJC_IVAR___PGSocialGroupPersistenceActions_currentAutomaticSocialGroupsToModifyAndOrders;
          swift_beginAccess();
          v69 = *(v9 + v68);
          v22 = *(v69 + 16);

          if (!v22)
          {
            break;
          }

          v70 = 0;
          v71 = 0.0;
          v72 = 32;
          while (v70 < *(v69 + 16))
          {
            v73 = *(v69 + v72);
            v74 = objc_autoreleasePoolPush();
            sub_22F326E4C(v73, v12, v95, v104, v93);
            objc_autoreleasePoolPop(v74);
            v71 = 1.0 / v22 + v71;
            sub_22F741690();
            ++v70;

            v72 += 16;
            if (v22 == v70)
            {
              goto LABEL_52;
            }
          }

LABEL_71:
          __break(1u);
LABEL_72:
          swift_once();
        }

LABEL_52:

        sub_22F741690();

        v84 = sub_22F740B70();
        v85 = sub_22F7415C0();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_22F0FC000, v84, v85, "Updated social group nodes of currently persisted groups!", v86, 2u);
          MEMORY[0x2319033A0](v86, -1, -1);
        }

        sub_22F741690();
        v87 = sub_22F740B70();
        v88 = sub_22F7415C0();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_22F0FC000, v87, v88, "Persisting groups into database...", v89, 2u);
          MEMORY[0x2319033A0](v89, -1, -1);
        }

        sub_22F325394(v9, v100, v93, v104, v103);
        v90 = sub_22F740B70();
        v91 = sub_22F7415C0();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_22F0FC000, v90, v91, "Persisted groups!", v92, 2u);
          MEMORY[0x2319033A0](v92, -1, -1);
        }

        v12 = v103;
        v61 = v105;
      }

      sub_22F741690();
    }

    break;
  }
}

void sub_22F3246DC(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  if (qword_2810AA918 == -1)
  {
    goto LABEL_2;
  }

LABEL_78:
  swift_once();
LABEL_2:
  v8 = sub_22F740B90();
  __swift_project_value_buffer(v8, qword_2810B4F18);
  v9 = sub_22F740B70();
  v10 = sub_22F7415C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22F0FC000, v9, v10, "Generating persistence actions...", v11, 2u);
    MEMORY[0x2319033A0](v11, -1, -1);
  }

  sub_22F741690();
  if (v4)
  {
    return;
  }

  v4 = 0;
  v12 = [a2 librarySpecificFetchOptions];
  v13 = [objc_opt_self() fetchSocialGroupsWithOptions_];
  sub_22F741690();
  v100 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = MEMORY[0x277D84F98];
  v15 = sub_22F32AFB4(a2);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v5;
  v16[4] = v14;
  aBlock[4] = sub_22F2A081C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F1D4AD0;
  aBlock[3] = &block_descriptor_63;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  v99 = v13;
  [v13 enumerateObjectsUsingBlock_];

  _Block_release(v17);
  swift_beginAccess();
  v5 = *(v14 + 16);

  v121 = MEMORY[0x277D84FA0];
  v19 = v5 + 64;
  v20 = 1 << v5[32];
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v5 + 8);
  a2 = ((v20 + 63) >> 6);
  v112 = v5;

  v23 = 0;
  if (v22)
  {
    while (2)
    {
      v24 = v23;
LABEL_14:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v5 = *(*(v112 + 7) + ((v24 << 9) | (8 * v25)));
      if ([v5 socialGroupVerifiedType] == 2)
      {
        sub_22F10F1E0(&v119, v5);

        v23 = v24;
        if (v22)
        {
          continue;
        }
      }

      else
      {

        v23 = v24;
        if (v22)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    if (v24 >= a2)
    {
      break;
    }

    v22 = *&v19[8 * v24];
    ++v23;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  v26 = v112;

  sub_22F741690();
  v111 = *(a1 + 16);
  if (!v111)
  {

    v103 = MEMORY[0x277D84F90];
    v115 = MEMORY[0x277D84F90];
LABEL_72:
    sub_22F741690();
    v92 = v121;
    v93 = type metadata accessor for SocialGroupsPromoter.SocialGroupPersistenceActions();
    v94 = objc_allocWithZone(v93);
    *&v94[OBJC_IVAR___PGSocialGroupPersistenceActions_socialGroupsSkippedBecauseNoCommonAssets] = MEMORY[0x277D84F90];
    *&v94[OBJC_IVAR___PGSocialGroupPersistenceActions_newAutomaticSocialGroupMembersAndOrders] = v115;
    *&v94[OBJC_IVAR___PGSocialGroupPersistenceActions_currentAutomaticSocialGroupsToModifyAndOrders] = v103;
    *&v94[OBJC_IVAR___PGSocialGroupPersistenceActions_outdatedAutomaticSocialGroupsToDelete] = v92;
    v118.receiver = v94;
    v118.super_class = v93;
    objc_msgSendSuper2(&v118, sel_init);
    sub_22F741690();
    v95 = sub_22F740B70();
    v96 = sub_22F7415C0();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_22F0FC000, v95, v96, "Finished generating persistence actions", v97, 2u);
      MEMORY[0x2319033A0](v97, -1, -1);
    }

    return;
  }

  v27 = 0;
  v110 = a1 + 32;
  v28 = 1;
  v103 = MEMORY[0x277D84F90];
  v115 = MEMORY[0x277D84F90];
  while (2)
  {
    v114 = v27;
    v31 = *(v110 + 8 * v27);

    v33 = _s11PhotosGraph20SocialGroupsPromoterC15socialGroupHash3forSSSaySo8PHPersonCG_tFZ_0(v32);
    if (*(v26 + 2))
    {
      v35 = sub_22F1229E8(v33, v34);
      v37 = v36;

      if (v37)
      {
        v38 = *(*(v26 + 7) + 8 * v35);
        if ([v38 socialGroupVerifiedType] == 2)
        {
          v39 = v38;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_22F13FD40(0, v103[2] + 1, 1, v103);
          }

          v41 = v103[2];
          v40 = v103[3];
          if (v41 >= v40 >> 1)
          {
            v103 = sub_22F13FD40((v40 > 1), v41 + 1, 1, v103);
          }

          v103[2] = v41 + 1;
          v42 = &v103[2 * v41];
          v42[4] = v39;
          v42[5] = v28;
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_81;
          }

          v43 = v39;
          v44 = sub_22F740B70();
          v45 = sub_22F7415C0();

          if (os_log_type_enabled(v44, v45))
          {
            buf = v45;
            v108 = v44;
            v46 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v119 = v101;
            *v46 = 136315650;
            v47 = [v43 localIdentifier];
            v48 = sub_22F740E20();
            v50 = v49;

            v51 = sub_22F145F20(v48, v50, &v119);

            *(v46 + 4) = v51;
            v104 = v46;
            *(v46 + 12) = 2080;
            if (v31 >> 62)
            {
              v52 = sub_22F741A00();
              if (!v52)
              {
                goto LABEL_66;
              }

LABEL_33:
              v98 = v43;
              v116 = MEMORY[0x277D84F90];
              sub_22F146454(0, v52 & ~(v52 >> 63), 0);
              if (v52 < 0)
              {
                goto LABEL_82;
              }

              v53 = 0;
              v54 = v116;
              v55 = v28;
              v56 = v52;
              do
              {
                if ((v31 & 0xC000000000000001) != 0)
                {
                  v57 = MEMORY[0x2319016F0](v53, v31);
                }

                else
                {
                  v57 = *(v31 + 8 * v53 + 32);
                }

                v58 = v57;
                v59 = [v57 localIdentifier];
                v60 = sub_22F740E20();
                v62 = v61;

                v64 = *(v116 + 16);
                v63 = *(v116 + 24);
                if (v64 >= v63 >> 1)
                {
                  sub_22F146454((v63 > 1), v64 + 1, 1);
                }

                ++v53;
                *(v116 + 16) = v64 + 1;
                v65 = v116 + 16 * v64;
                *(v65 + 32) = v60;
                *(v65 + 40) = v62;
              }

              while (v56 != v53);
              v28 = v55;

              v26 = v112;
              v43 = v98;
            }

            else
            {
              v52 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v52)
              {
                goto LABEL_33;
              }

LABEL_66:

              v54 = MEMORY[0x277D84F90];
            }

            v88 = MEMORY[0x231900D40](v54, MEMORY[0x277D837D0]);
            v90 = v89;

            v91 = sub_22F145F20(v88, v90, &v119);

            *(v104 + 14) = v91;
            *(v104 + 11) = 2048;
            *(v104 + 3) = v28;
            v44 = v108;
            _os_log_impl(&dword_22F0FC000, v108, buf, "Current social group %s with members %s will have automatic order %ld", v104, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v101, -1, -1);
            MEMORY[0x2319033A0](v104, -1, -1);
          }

          else
          {
          }

          v38 = sub_22F164DE0(v43);
        }

        else
        {
        }

        v29 = v114;
LABEL_21:
        v27 = v29 + 1;
        if (v27 == v111)
        {

          goto LABEL_72;
        }

        continue;
      }
    }

    else
    {
    }

    break;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v115 = sub_22F13FC0C(0, v115[2] + 1, 1, v115);
  }

  v67 = v115[2];
  v66 = v115[3];
  if (v67 >= v66 >> 1)
  {
    v115 = sub_22F13FC0C((v66 > 1), v67 + 1, 1, v115);
  }

  v115[2] = v67 + 1;
  v68 = &v115[2 * v67];
  v68[4] = v31;
  v68[5] = v28;

  v69 = sub_22F740B70();
  v70 = sub_22F7415C0();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    bufa = v71;
    v119 = v105;
    *v71 = 136315394;
    if (v31 >> 62)
    {
      v72 = sub_22F741A00();
    }

    else
    {
      v72 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v109 = v70;
    log = v69;
    if (v72)
    {
      v102 = v28;
      v117 = MEMORY[0x277D84F90];
      sub_22F146454(0, v72 & ~(v72 >> 63), 0);
      if (v72 < 0)
      {
        goto LABEL_80;
      }

      v73 = 0;
      v74 = v117;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v75 = MEMORY[0x2319016F0](v73, v31);
        }

        else
        {
          v75 = *(v31 + 8 * v73 + 32);
        }

        v76 = v75;
        v77 = [v75 localIdentifier];
        v78 = sub_22F740E20();
        v80 = v79;

        v82 = *(v117 + 16);
        v81 = *(v117 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_22F146454((v81 > 1), v82 + 1, 1);
        }

        ++v73;
        *(v117 + 16) = v82 + 1;
        v83 = v117 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v80;
      }

      while (v72 != v73);

      v28 = v102;
    }

    else
    {

      v74 = MEMORY[0x277D84F90];
    }

    v84 = MEMORY[0x231900D40](v74, MEMORY[0x277D837D0]);
    v86 = v85;

    v87 = sub_22F145F20(v84, v86, &v119);

    *(bufa + 4) = v87;
    *(bufa + 6) = 2048;
    *(bufa + 14) = v28;
    _os_log_impl(&dword_22F0FC000, log, v109, "New social group with members %s will have automatic order %ld", bufa, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x2319033A0](v105, -1, -1);
    MEMORY[0x2319033A0](bufa, -1, -1);

    v26 = v112;
  }

  else
  {
  }

  v29 = v114;
  v30 = __OFADD__(v28++, 1);
  if (!v30)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

char *sub_22F325394(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v231 = a1;
  v255 = *MEMORY[0x277D85DE8];
  v13 = sub_22F73F470();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v218 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741690();
  v233 = v6;
  if (v6)
  {
    return v231;
  }

  v242 = a3;
  v226 = a4;
  v243 = v8;
  v218 = a5;
  v221 = v14;
  v219 = v13;
  v17 = OBJC_IVAR___PGSocialGroupPersistenceActions_socialGroupsSkippedBecauseNoCommonAssets;
  v18 = v231;
  swift_beginAccess();
  v223 = v17;

  v20 = sub_22F152AC0(v19);

  v248 = v20;
  v21 = [objc_opt_self() graphServicesURLWithPhotoLibrary_];
  sub_22F73F430();

  v22 = objc_allocWithZone(PGCurationManager);
  v220 = v16;
  p_aBlock = sub_22F73F3F0();
  v241 = [v22 initWithPhotoLibrary:a2 cacheURL:p_aBlock];

  v240 = [objc_allocWithZone(MEMORY[0x277D3C790]) initWithPhotoLibrary_];
  v24 = OBJC_IVAR___PGSocialGroupPersistenceActions_newAutomaticSocialGroupMembersAndOrders;
  swift_beginAccess();
  v222 = v24;
  v25 = *&v18[v24];
  v26 = *(v25 + 16);
  v227 = a2;
  v238 = v26;
  if (v26)
  {
    v237 = (v25 + 32);
    v236 = &v251;

    v28 = 0;
    v234 = MEMORY[0x277D84F98];
    v7 = 1107296256;
    *&v29 = 136315394;
    v232 = v29;
    v30 = v242;
    v31 = v233;
    v235 = v27;
    while (1)
    {
      if (v28 >= v27[2].isa)
      {
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v245 = v28;
      v40 = &v237[4 * v28];
      v41 = *v40;
      v42 = v40[1];

      sub_22F32C610(v43, v30, a2);
      v45 = _s11PhotosGraph19SocialGroupCurationC14selectKeyAsset3for15containedAssets15curationManager0L7ContextSo7PHAssetCSgSaySo8PHPersonCG_SayAJGSo010PGCurationM0CSo011CLSCurationN0CtFZ_0(v41, v44, v241, v240);

      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      v47 = (v46 + 16);
      v48 = swift_allocObject();
      v48[2] = v41;
      v48[3] = v46;
      v239 = v42;
      v48[4] = v42;
      v48[5] = v45;
      v48[6] = v243;
      v253 = sub_22F32CBF0;
      v254 = v48;
      aBlock = MEMORY[0x277D85DD0];
      v250 = 1107296256;
      v251 = sub_22F327D80;
      v252 = &block_descriptor_42;
      v14 = _Block_copy(&aBlock);
      v244 = v45;

      aBlock = 0;
      v49 = [a2 performChangesAndWait:v14 error:&aBlock];
      _Block_release(v14);
      v50 = aBlock;
      if (v49)
      {
        swift_beginAccess();
        if (*v47)
        {
          v14 = *v47;
          v51 = v50;
          v52 = v234;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v52;
          p_aBlock = &aBlock;
          sub_22F132B10(v14, v41, isUniquelyReferenced_nonNull_native);

          v234 = aBlock;
        }

        else
        {
          v72 = qword_2810AA918;
          v73 = v50;
          if (v72 != -1)
          {
            swift_once();
          }

          v74 = sub_22F740B90();
          __swift_project_value_buffer(v74, qword_2810B4F18);

          p_aBlock = sub_22F740B70();
          v75 = sub_22F7415E0();

          if (os_log_type_enabled(p_aBlock, v75))
          {
            LODWORD(v229) = v75;
            v76 = swift_slowAlloc();
            v225 = swift_slowAlloc();
            aBlock = v225;
            v228 = v76;
            *v76 = v232;
            if (v41 >> 62)
            {
              v77 = sub_22F741A00();
            }

            else
            {
              v77 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *&v230 = p_aBlock;
            if (v77)
            {
              v247 = MEMORY[0x277D84F90];
              p_aBlock = &v247;
              sub_22F146454(0, v77 & ~(v77 >> 63), 0);
              if (v77 < 0)
              {
                goto LABEL_148;
              }

              *&v224 = v46;
              v233 = v31;
              v78 = 0;
              v79 = v247;
              do
              {
                if ((v41 & 0xC000000000000001) != 0)
                {
                  v80 = MEMORY[0x2319016F0](v78, v41);
                }

                else
                {
                  v80 = *(v41 + 8 * v78 + 32);
                }

                v81 = v80;
                v82 = [v81 localIdentifier];
                v83 = sub_22F740E20();
                v14 = v84;

                v247 = v79;
                v86 = v79[2];
                v85 = v79[3];
                if (v86 >= v85 >> 1)
                {
                  sub_22F146454((v85 > 1), v86 + 1, 1);
                  v79 = v247;
                }

                ++v78;
                v79[2] = v86 + 1;
                v87 = &v79[2 * v86];
                v87[4] = v83;
                v87[5] = v14;
              }

              while (v77 != v78);

              a2 = v227;
              v31 = v233;
            }

            else
            {

              v79 = MEMORY[0x277D84F90];
            }

            v88 = MEMORY[0x231900D40](v79, MEMORY[0x277D837D0]);
            v90 = v89;

            v91 = sub_22F145F20(v88, v90, &aBlock);

            p_aBlock = v228;
            *(v228 + 1) = v91;
            *(p_aBlock + 12) = 2048;
            *(p_aBlock + 14) = v239;
            v92 = v230;
            _os_log_impl(&dword_22F0FC000, v230, v229, "Couldn't get social group placeholder after persisting social group with members %s and automatic order %ld", p_aBlock, 0x16u);
            v93 = v225;
            __swift_destroy_boxed_opaque_existential_0(v225);
            MEMORY[0x2319033A0](v93, -1, -1);
            MEMORY[0x2319033A0](p_aBlock, -1, -1);
          }

          else
          {
          }
        }

        goto LABEL_6;
      }

      v54 = aBlock;
      v14 = sub_22F73F370();

      swift_willThrow();

      if (qword_2810AA918 != -1)
      {
        swift_once();
      }

      v55 = sub_22F740B90();
      __swift_project_value_buffer(v55, qword_2810B4F18);

      v56 = v14;
      v57 = sub_22F740B70();
      v58 = sub_22F7415E0();

      if (os_log_type_enabled(v57, v58))
      {
        break;
      }

LABEL_5:

      p_aBlock = &v248;
      sub_22F10F204(&aBlock, v41);

      v31 = 0;
LABEL_6:
      v30 = v242;
      v27 = v235;
      v28 = v245 + 1;
      if ((v245 + 1) == v238)
      {
        v233 = v31;

        v20 = v248;
        goto LABEL_49;
      }
    }

    v59 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    aBlock = v239;
    *v59 = v232;
    if (v41 >> 62)
    {
      v60 = sub_22F741A00();
      if (v60)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v60 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v60)
      {
LABEL_16:
        v247 = MEMORY[0x277D84F90];
        p_aBlock = &v247;
        sub_22F146454(0, v60 & ~(v60 >> 63), 0);
        if (v60 < 0)
        {
          goto LABEL_147;
        }

        v228 = v59;
        LODWORD(v229) = v58;
        *&v230 = v57;
        v233 = v14;
        v61 = 0;
        v62 = v247;
        do
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v63 = MEMORY[0x2319016F0](v61, v41);
          }

          else
          {
            v63 = *(v41 + 8 * v61 + 32);
          }

          v64 = v63;
          v65 = [v64 localIdentifier];
          v66 = sub_22F740E20();
          v68 = v67;

          v247 = v62;
          v70 = v62[2];
          v69 = v62[3];
          if (v70 >= v69 >> 1)
          {
            sub_22F146454((v69 > 1), v70 + 1, 1);
            v62 = v247;
          }

          ++v61;
          v62[2] = v70 + 1;
          v71 = &v62[2 * v70];
          v71[4] = v66;
          v71[5] = v68;
        }

        while (v60 != v61);
        a2 = v227;
        v14 = v233;
        v57 = v230;
        LOBYTE(v58) = v229;
        v59 = v228;
        goto LABEL_4;
      }
    }

    v62 = MEMORY[0x277D84F90];
LABEL_4:
    v32 = MEMORY[0x231900D40](v62, MEMORY[0x277D837D0]);
    v34 = v33;

    v35 = sub_22F145F20(v32, v34, &aBlock);

    *(v59 + 4) = v35;
    *(v59 + 12) = 2080;
    swift_getErrorValue();
    v36 = sub_22F7420F0();
    v38 = sub_22F145F20(v36, v37, &aBlock);

    *(v59 + 14) = v38;
    _os_log_impl(&dword_22F0FC000, v57, v58, "Error persisting social group with members %s: %s", v59, 0x16u);
    v39 = v239;
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v39, -1, -1);
    MEMORY[0x2319033A0](v59, -1, -1);
    goto LABEL_5;
  }

  v234 = MEMORY[0x277D84F98];
LABEL_49:
  p_aBlock = *(v20 + 16);
  v94 = MEMORY[0x277D84F90];
  v238 = v20;
  if (p_aBlock)
  {
    v95 = sub_22F10B59C(p_aBlock, 0);
    v96 = sub_22F11C3E0(&aBlock, v95 + 4, p_aBlock, v20);
    v97 = aBlock;
    v14 = v250;

    sub_22F0FF590(v97);
    if (v96 != p_aBlock)
    {
      goto LABEL_149;
    }

    v98 = v223;
    v99 = v233;
    v94 = MEMORY[0x277D84F90];
  }

  else
  {
    v95 = MEMORY[0x277D84F90];
    v98 = v223;
    v99 = v233;
  }

  v100 = v231;
  *&v231[v98] = v95;

  v101 = v222;

  v103 = v99;
  sub_22F32ADA8(v102, &v248);
  v105 = v104;

  *&v100[v101] = v105;

  v106 = swift_allocObject();
  v107 = v243;
  *(v106 + 16) = v100;
  *(v106 + 24) = v107;
  v253 = sub_22F32CC00;
  v254 = v106;
  aBlock = MEMORY[0x277D85DD0];
  v7 = 1107296256;
  v250 = 1107296256;
  v251 = sub_22F327D80;
  v252 = &block_descriptor_48_0;
  v108 = _Block_copy(&aBlock);
  v109 = v100;

  aBlock = 0;
  LODWORD(v105) = [a2 performChangesAndWait:v108 error:&aBlock];
  _Block_release(v108);
  if (!v105)
  {
    v169 = aBlock;

    v170 = sub_22F73F370();

    v233 = v170;
    swift_willThrow();

    v221[1](v220, v219);
LABEL_140:

    return v231;
  }

  v229 = v109;
  v228 = v103;
  v14 = v234 + 8;
  v110 = 1 << *(v234 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & v234[8];
  p_aBlock = (v110 + 63) >> 6;
  v113 = aBlock;
  v114 = 0;
  *&v115 = 136315394;
  v230 = v115;
  *&v115 = 138412546;
  v224 = v115;
  v237 = v14;
  v239 = p_aBlock;
  while (1)
  {
    if (!v112)
    {
      while (1)
      {
        v116 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          goto LABEL_145;
        }

        if (v116 >= p_aBlock)
        {
          break;
        }

        v112 = *&v14[2 * v116];
        ++v114;
        if (v112)
        {
          v114 = v116;
          goto LABEL_64;
        }
      }

      p_aBlock = *&v229[OBJC_IVAR___PGSocialGroupPersistenceActions_outdatedAutomaticSocialGroupsToDelete];
      if ((p_aBlock & 0xC000000000000001) == 0)
      {
        v188 = *(p_aBlock + 32);
        v189 = v188 & 0x3F;
        v245 = ((1 << v188) + 63) >> 6;
        v14 = (8 * v245);

        if (v189 <= 0xD)
        {
          goto LABEL_115;
        }

        goto LABEL_151;
      }

      v171 = MEMORY[0x277D84FA0];
      aBlock = MEMORY[0x277D84FA0];

      sub_22F7419C0();
      v172 = sub_22F741A40();
      if (v172)
      {
        v173 = v172;
        v14 = sub_22F120634(0, &unk_2810A91B0, 0x277CD99D0);
        v174 = v173;
        v171 = MEMORY[0x277D84FA0];
        do
        {
          v246 = v174;
          swift_dynamicCast();
          v175 = [v247 socialGroupVerifiedType];
          v176 = v247;
          if (v175 == 2)
          {
            v177 = *(v171 + 16);
            if (*(v171 + 24) <= v177)
            {
              sub_22F112518(v177 + 1);
            }

            v171 = aBlock;
            p_aBlock = v176;
            v178 = sub_22F741800();
            v179 = v171 + 56;
            v180 = -1 << *(v171 + 32);
            v181 = v178 & ~v180;
            v182 = v181 >> 6;
            if (((-1 << v181) & ~*(v171 + 56 + 8 * (v181 >> 6))) != 0)
            {
              v183 = __clz(__rbit64((-1 << v181) & ~*(v171 + 56 + 8 * (v181 >> 6)))) | v181 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v184 = 0;
              v185 = (63 - v180) >> 6;
              do
              {
                if (++v182 == v185 && (v184 & 1) != 0)
                {
                  goto LABEL_144;
                }

                v186 = v182 == v185;
                if (v182 == v185)
                {
                  v182 = 0;
                }

                v184 |= v186;
                v187 = *(v179 + 8 * v182);
              }

              while (v187 == -1);
              v183 = __clz(__rbit64(~v187)) + (v182 << 6);
            }

            *(v179 + ((v183 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v183;
            *(*(v171 + 48) + 8 * v183) = v176;
            ++*(v171 + 16);
          }

          else
          {
          }

          v174 = sub_22F741A40();
        }

        while (v174);
      }

      goto LABEL_130;
    }

LABEL_64:
    v244 = ((v112 - 1) & v112);
    v117 = (v114 << 9) | (8 * __clz(__rbit64(v112)));
    v118 = *(v234[6] + v117);
    v119 = *(v234[7] + v117);
    swift_bridgeObjectRetain_n();
    v120 = v119;
    v121 = sub_22F152B5C(v118);

    if (*(v226 + 16))
    {
      v122 = sub_22F123618(v121);
      v124 = v123;

      if (v124)
      {

        v125 = *(*(v226 + 56) + 8 * v122);
        [v125 updatePropertiesWithPersistedSocialGroup:v120 graph:v242];
        if (qword_2810AA918 != -1)
        {
          swift_once();
        }

        v126 = sub_22F740B90();
        __swift_project_value_buffer(v126, qword_2810B4F18);
        v127 = v125;
        v128 = sub_22F740B70();
        v129 = sub_22F7415D0();

        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          aBlock = v236;
          *v130 = v224;
          *(v130 + 4) = v127;
          v235 = v131;
          v131->isa = v127;
          *(v130 + 12) = 2080;
          v245 = v127;
          v132 = [v245 persistedUUID];
          if (v132)
          {
            v133 = v132;
            v134 = sub_22F740E20();
            v136 = v135;
          }

          else
          {
            v134 = 0;
            v136 = 0xE000000000000000;
          }

          v160 = sub_22F145F20(v134, v136, &aBlock);

          *(v130 + 14) = v160;
          _os_log_impl(&dword_22F0FC000, v128, v129, "Social group node %@ has persisted UUID %s", v130, 0x16u);
          v161 = v235;
          sub_22F2A87F0(v235);
          MEMORY[0x2319033A0](v161, -1, -1);
          v162 = v236;
          __swift_destroy_boxed_opaque_existential_0(v236);
          MEMORY[0x2319033A0](v162, -1, -1);
          MEMORY[0x2319033A0](v130, -1, -1);

          v94 = MEMORY[0x277D84F90];
        }

        else
        {
        }

        goto LABEL_92;
      }
    }

    else
    {
    }

    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v137 = sub_22F740B90();
    __swift_project_value_buffer(v137, qword_2810B4F18);

    v138 = v120;
    v139 = sub_22F740B70();
    v140 = sub_22F7415E0();

    if (!os_log_type_enabled(v139, v140))
    {

      goto LABEL_58;
    }

    LODWORD(v233) = v140;
    v235 = v139;
    v14 = swift_slowAlloc();
    *&v232 = swift_slowAlloc();
    aBlock = v232;
    *v14 = v230;
    v236 = v138;
    v141 = [v138 localIdentifier];
    v142 = sub_22F740E20();
    v144 = v143;

    v145 = sub_22F145F20(v142, v144, &aBlock);

    *(v14 + 1) = v145;
    *(v14 + 6) = 2080;
    if (v118 >> 62)
    {
      break;
    }

    v146 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v146)
    {
      goto LABEL_77;
    }

LABEL_90:

    v148 = v94;
LABEL_91:
    v163 = MEMORY[0x231900D40](v148, MEMORY[0x277D837D0]);
    v165 = v164;

    v166 = sub_22F145F20(v163, v165, &aBlock);

    *(v14 + 14) = v166;
    v167 = v235;
    _os_log_impl(&dword_22F0FC000, v235, v233, "Couldn't find social group node for persisted social group %s with members %s", v14, 0x16u);
    v168 = v232;
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v168, -1, -1);
    MEMORY[0x2319033A0](v14, -1, -1);

LABEL_92:
    v14 = v237;
LABEL_58:
    p_aBlock = v239;
    v112 = v244;
  }

  v146 = sub_22F741A00();
  if (!v146)
  {
    goto LABEL_90;
  }

LABEL_77:
  v225 = v14;
  v247 = v94;
  p_aBlock = &v247;
  sub_22F146454(0, v146 & ~(v146 >> 63), 0);
  if ((v146 & 0x8000000000000000) == 0)
  {
    v147 = 0;
    v148 = v247;
    v245 = v118 & 0xC000000000000001;
    v149 = v118;
    v150 = v146;
    do
    {
      if (v245)
      {
        v151 = MEMORY[0x2319016F0](v147, v118);
      }

      else
      {
        v151 = *(v118 + 8 * v147 + 32);
      }

      v152 = v151;
      v153 = [v152 localIdentifier];
      v154 = sub_22F740E20();
      v156 = v155;

      v247 = v148;
      v158 = v148[2];
      v157 = v148[3];
      if (v158 >= v157 >> 1)
      {
        sub_22F146454((v157 > 1), v158 + 1, 1);
        v148 = v247;
      }

      ++v147;
      v148[2] = v158 + 1;
      v159 = &v148[2 * v158];
      v159[4] = v154;
      v159[5] = v156;
      v118 = v149;
    }

    while (v150 != v147);

    v94 = MEMORY[0x277D84F90];
    v14 = v225;
    goto LABEL_91;
  }

  while (1)
  {
    __break(1u);
LABEL_151:
    v214 = p_aBlock;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_115:
    v244 = &v218;
    MEMORY[0x28223BE20](v190);
    v191 = &v218 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v191, v14);
    v14 = 0;
    v192 = 0;
    v193 = 1 << *(p_aBlock + 32);
    v194 = -1;
    if (v193 < 64)
    {
      v194 = ~(-1 << v193);
    }

    v195 = v194 & *(p_aBlock + 56);
    v196 = (v193 + 63) >> 6;
    while (v195)
    {
      v197 = __clz(__rbit64(v195));
      v195 &= v195 - 1;
LABEL_125:
      v200 = v197 | (v192 << 6);
      if ([*(*(p_aBlock + 48) + 8 * v200) socialGroupVerifiedType] == 2)
      {
        *&v191[(v200 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v200;
        v201 = __OFADD__(v14, 1);
        v14 = (v14 + 1);
        if (v201)
        {
          __break(1u);
LABEL_129:
          v171 = sub_22F1B9878(v191, v245, v14, p_aBlock);
          goto LABEL_130;
        }
      }
    }

    v198 = v192;
    while (1)
    {
      v192 = v198 + 1;
      if (__OFADD__(v198, 1))
      {
        break;
      }

      if (v192 >= v196)
      {
        goto LABEL_129;
      }

      v199 = *(p_aBlock + 56 + 8 * v192);
      ++v198;
      if (v199)
      {
        v197 = __clz(__rbit64(v199));
        v195 = (v199 - 1) & v199;
        goto LABEL_125;
      }
    }

LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
  }

  v215 = swift_slowAlloc();
  v216 = v228;
  v217 = sub_22F329CE4(v215, v245, v214, sub_22F32826C, 0);
  v228 = v216;
  if (v216)
  {

    result = MEMORY[0x2319033A0](v215, -1, -1);
    __break(1u);
    return result;
  }

  v171 = v217;

  MEMORY[0x2319033A0](v215, -1, -1);
LABEL_130:
  v202 = v219;
  v203 = v227;
  v204 = v243;
  v205 = v228;
  if ((v171 & 0xC000000000000001) != 0)
  {
    if (sub_22F741A00() >= 1)
    {
      goto LABEL_132;
    }

LABEL_135:
  }

  else
  {
    if (*(v171 + 16) < 1)
    {
      goto LABEL_135;
    }

LABEL_132:
    v206 = swift_allocObject();
    *(v206 + 16) = v171;
    *(v206 + 24) = v204;
    v253 = sub_22F32CC08;
    v254 = v206;
    aBlock = MEMORY[0x277D85DD0];
    v250 = v7;
    v251 = sub_22F327D80;
    v252 = &block_descriptor_54_0;
    v207 = _Block_copy(&aBlock);

    aBlock = 0;
    v208 = [v203 performChangesAndWait:v207 error:&aBlock];
    _Block_release(v207);
    if (!v208)
    {
      v210 = aBlock;
      v211 = sub_22F73F370();

      v233 = v211;
      swift_willThrow();

      v221[1](v220, v202);
      goto LABEL_140;
    }

    v209 = aBlock;
  }

  sub_22F741690();
  if (v205)
  {
    v233 = v205;
    v221[1](v220, v202);
  }

  else
  {
    v221[1](v220, v202);
    v213 = v229;
  }

  return v231;
}

void sub_22F326E4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_opt_self() fetchPersonsInSocialGroup:a1 option:a2];
  v9 = [v8 fetchedObjects];

  if (!v9)
  {
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4F18);
    v37 = a1;
    v20 = sub_22F740B70();
    v38 = sub_22F7415E0();
    if (os_log_type_enabled(v20, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v77 = v40;
      *v39 = 136315138;
      v41 = [v37 uuid];

      if (!v41)
      {
        goto LABEL_41;
      }

      v42 = sub_22F740E20();
      v44 = v43;

      v45 = sub_22F145F20(v42, v44, &v77);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_22F0FC000, v20, v38, "Unable to fetch members for social group %s!", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x2319033A0](v40, -1, -1);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    else
    {
    }

LABEL_33:

    return;
  }

  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v10 = sub_22F741180();

  v12 = sub_22F152B5C(v11);

  if (!*(a4 + 16))
  {

LABEL_16:
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v46 = sub_22F740B90();
    __swift_project_value_buffer(v46, qword_2810B4F18);

    v47 = a1;
    v48 = sub_22F740B70();
    v49 = sub_22F7415E0();

    if (!os_log_type_enabled(v48, v49))
    {

LABEL_39:

      return;
    }

    v50 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v77 = v74;
    *v50 = 136315394;
    v51 = [v47 localIdentifier];
    v52 = sub_22F740E20();
    v54 = v53;

    v55 = sub_22F145F20(v52, v54, &v77);

    *(v50 + 4) = v55;
    buf = v50;
    *(v50 + 12) = 2080;
    if (v10 >> 62)
    {
      v56 = sub_22F741A00();
      if (v56)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v56 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v56)
      {
LABEL_21:
        v73 = v48;
        v76 = MEMORY[0x277D84F90];
        sub_22F146454(0, v56 & ~(v56 >> 63), 0);
        if ((v56 & 0x8000000000000000) == 0)
        {
          v57 = 0;
          v58 = v76;
          do
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v59 = MEMORY[0x2319016F0](v57, v10);
            }

            else
            {
              v59 = *(v10 + 8 * v57 + 32);
            }

            v60 = v59;
            v61 = [v60 localIdentifier];
            v62 = sub_22F740E20();
            v64 = v63;

            v66 = *(v76 + 16);
            v65 = *(v76 + 24);
            if (v66 >= v65 >> 1)
            {
              sub_22F146454((v65 > 1), v66 + 1, 1);
            }

            ++v57;
            *(v76 + 16) = v66 + 1;
            v67 = v76 + 16 * v66;
            *(v67 + 32) = v62;
            *(v67 + 40) = v64;
          }

          while (v56 != v57);

          v48 = v73;
          goto LABEL_38;
        }

        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    v58 = MEMORY[0x277D84F90];
LABEL_38:
    v69 = MEMORY[0x231900D40](v58, MEMORY[0x277D837D0]);
    v71 = v70;

    v72 = sub_22F145F20(v69, v71, &v77);

    *(buf + 14) = v72;
    _os_log_impl(&dword_22F0FC000, v48, v49, "Couldn't find social group node for persisted social group %s with members %s", buf, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v74, -1, -1);
    MEMORY[0x2319033A0](buf, -1, -1);
    goto LABEL_39;
  }

  v13 = sub_22F123618(v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(*(a4 + 56) + 8 * v13);
  [v16 updatePropertiesWithPersistedSocialGroup:a1 graph:a5];
  if (qword_2810AA918 != -1)
  {
    swift_once();
  }

  v17 = sub_22F740B90();
  __swift_project_value_buffer(v17, qword_2810B4F18);
  v18 = v16;
  v19 = a1;
  v20 = sub_22F740B70();
  v21 = sub_22F7415D0();

  if (!os_log_type_enabled(v20, v21))
  {

    goto LABEL_33;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v77 = v24;
  *v22 = 138412802;
  *(v22 + 4) = v18;
  *v23 = v18;
  *(v22 + 12) = 2080;
  v25 = v18;
  v26 = [v19 uuid];

  if (!v26)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v27 = sub_22F740E20();
  v29 = v28;

  v30 = sub_22F145F20(v27, v29, &v77);

  *(v22 + 14) = v30;
  *(v22 + 22) = 2080;
  v31 = [v25 persistedUUID];
  if (v31)
  {
    v32 = v31;
    v33 = sub_22F740E20();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  v68 = sub_22F145F20(v33, v35, &v77);

  *(v22 + 24) = v68;
  _os_log_impl(&dword_22F0FC000, v20, v21, "Social group node %@ of current group %s has persisted UUID %s", v22, 0x20u);
  sub_22F2A87F0(v23);
  MEMORY[0x2319033A0](v23, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x2319033A0](v24, -1, -1);
  MEMORY[0x2319033A0](v22, -1, -1);
}

void sub_22F327618(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_opt_self();

  sub_22F152B5C(v9);

  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  sub_22F11FA28(&qword_2810A8E90, &qword_2810A8EA0, 0x277CD9938);
  v10 = sub_22F741410();

  v11 = [v8 creationRequestForSocialGroupWithMembers:v10 userAction:0];

  v12 = [v11 placeholderForCreatedSocialGroup];
  swift_beginAccess();
  v13 = *(a2 + 16);
  *(a2 + 16) = v12;

  [v11 setOrder_];
  if (a4)
  {
    v14 = a4;
    [v11 setKeyAsset_];
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v15 = sub_22F740B90();
    __swift_project_value_buffer(v15, qword_2810B4F18);

    v16 = sub_22F740B70();
    v17 = sub_22F7415D0();

    if (os_log_type_enabled(v16, v17))
    {
      v77 = v11;
      v79 = a3;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v83 = v19;
      *v18 = 136315394;
      if (a1 >> 62)
      {
        v20 = sub_22F741A00();
      }

      else
      {
        v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 = MEMORY[0x277D84F90];
      v75 = v19;
      if (v20)
      {
        v81 = MEMORY[0x277D84F90];
        sub_22F146454(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          goto LABEL_45;
        }

        v71 = v17;
        v72 = v16;
        v21 = v81;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v22 = 0;
          do
          {
            MEMORY[0x2319016F0](v22, a1);
            v23 = [swift_unknownObjectRetain() localIdentifier];
            v24 = sub_22F740E20();
            v26 = v25;
            swift_unknownObjectRelease_n();

            v28 = *(v81 + 16);
            v27 = *(v81 + 24);
            if (v28 >= v27 >> 1)
            {
              sub_22F146454((v27 > 1), v28 + 1, 1);
            }

            ++v22;
            *(v81 + 16) = v28 + 1;
            v29 = v81 + 16 * v28;
            *(v29 + 32) = v24;
            *(v29 + 40) = v26;
          }

          while (v20 != v22);
        }

        else
        {
          v30 = (a1 + 32);
          do
          {
            v31 = *v30;
            v32 = [v31 localIdentifier];
            v33 = sub_22F740E20();
            v35 = v34;

            v37 = *(v81 + 16);
            v36 = *(v81 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_22F146454((v36 > 1), v37 + 1, 1);
            }

            *(v81 + 16) = v37 + 1;
            v38 = v81 + 16 * v37;
            *(v38 + 32) = v33;
            *(v38 + 40) = v35;
            ++v30;
            --v20;
          }

          while (v20);
        }

        v16 = v72;
        v17 = v71;
      }

      v39 = MEMORY[0x231900D40](v21, MEMORY[0x277D837D0]);
      v41 = v40;

      v42 = sub_22F145F20(v39, v41, &v83);

      *(v18 + 4) = v42;
      *(v18 + 12) = 2048;
      a3 = v79;
      *(v18 + 14) = v79;
      _os_log_impl(&dword_22F0FC000, v16, v17, "Key Asset set for social group with members %s and automatic order %ld", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x2319033A0](v75, -1, -1);
      MEMORY[0x2319033A0](v18, -1, -1);

      v11 = v77;
    }

    else
    {
    }
  }

  if (qword_2810AA918 != -1)
  {
    swift_once();
  }

  v43 = sub_22F740B90();
  __swift_project_value_buffer(v43, qword_2810B4F18);

  v44 = sub_22F740B70();
  v45 = sub_22F7415D0();

  if (!os_log_type_enabled(v44, v45))
  {
    goto LABEL_41;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v83 = v47;
  *v46 = 136315394;
  if (a1 >> 62)
  {
    v48 = sub_22F741A00();
  }

  else
  {
    v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = MEMORY[0x277D84F90];
  v76 = v47;
  if (!v48)
  {
LABEL_40:
    v67 = MEMORY[0x231900D40](v49, MEMORY[0x277D837D0]);
    v69 = v68;

    v70 = sub_22F145F20(v67, v69, &v83);

    *(v46 + 4) = v70;
    *(v46 + 12) = 2048;
    *(v46 + 14) = a3;
    _os_log_impl(&dword_22F0FC000, v44, v45, "Persisting social group with members %s and automatic order %ld", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x2319033A0](v76, -1, -1);
    MEMORY[0x2319033A0](v46, -1, -1);
LABEL_41:

    return;
  }

  v82 = MEMORY[0x277D84F90];
  sub_22F146454(0, v48 & ~(v48 >> 63), 0);
  if ((v48 & 0x8000000000000000) == 0)
  {
    v73 = v45;
    v74 = v44;
    v78 = v11;
    v80 = a3;
    v49 = v82;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v50 = 0;
      do
      {
        MEMORY[0x2319016F0](v50, a1);
        v51 = [swift_unknownObjectRetain() localIdentifier];
        v52 = sub_22F740E20();
        v54 = v53;
        swift_unknownObjectRelease_n();

        v56 = *(v82 + 16);
        v55 = *(v82 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_22F146454((v55 > 1), v56 + 1, 1);
        }

        ++v50;
        *(v82 + 16) = v56 + 1;
        v57 = v82 + 16 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v54;
      }

      while (v48 != v50);
    }

    else
    {
      v58 = (a1 + 32);
      do
      {
        v59 = *v58;
        v60 = [v59 localIdentifier];
        v61 = sub_22F740E20();
        v63 = v62;

        v65 = *(v82 + 16);
        v64 = *(v82 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_22F146454((v64 > 1), v65 + 1, 1);
        }

        *(v82 + 16) = v65 + 1;
        v66 = v82 + 16 * v65;
        *(v66 + 32) = v61;
        *(v66 + 40) = v63;
        ++v58;
        --v48;
      }

      while (v48);
    }

    v11 = v78;
    a3 = v80;
    v44 = v74;
    v45 = v73;
    goto LABEL_40;
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_22F327D80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_22F327DC4(uint64_t a1)
{
  v2 = OBJC_IVAR___PGSocialGroupPersistenceActions_currentAutomaticSocialGroupsToModifyAndOrders;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {

    v5 = 0;
    v6 = (v3 + 40);
    v39 = v3;
    v40 = v4;
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v7 = *v6;
      v8 = *(v6 - 1);
      if (v7 == [v8 automaticOrder])
      {
        if (qword_2810AA918 != -1)
        {
          swift_once();
        }

        v9 = sub_22F740B90();
        __swift_project_value_buffer(v9, qword_2810B4F18);
        v10 = v8;
        v11 = sub_22F740B70();
        v12 = sub_22F7415D0();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v41 = v14;
          *v13 = 134218242;
          *(v13 + 4) = v7;
          *(v13 + 12) = 2080;
          v15 = [v10 localIdentifier];
          v16 = sub_22F740E20();
          v18 = v17;

          v19 = sub_22F145F20(v16, v18, &v41);

          *(v13 + 14) = v19;
          v4 = v40;
          _os_log_impl(&dword_22F0FC000, v11, v12, "Skipping setting automatic order %ld for social group %s since its automatic order is already set to that", v13, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x2319033A0](v14, -1, -1);
          v20 = v13;
          v3 = v39;
          MEMORY[0x2319033A0](v20, -1, -1);
LABEL_22:

          goto LABEL_4;
        }
      }

      else
      {
        v21 = [objc_opt_self() changeRequestForSocialGroup:v8 userAction:0];
        if (!v21)
        {
          if (qword_2810AA918 != -1)
          {
            swift_once();
          }

          v33 = sub_22F740B90();
          __swift_project_value_buffer(v33, qword_2810B4F18);
          v34 = sub_22F740B70();
          v35 = sub_22F7415E0();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_22F0FC000, v34, v35, "Couldn't create change request for current automatic social group!", v36, 2u);
            v37 = v36;
            v4 = v40;
            MEMORY[0x2319033A0](v37, -1, -1);
          }

          goto LABEL_4;
        }

        v10 = v21;
        [v21 setOrder_];
        if (qword_2810AA918 != -1)
        {
          swift_once();
        }

        v22 = sub_22F740B90();
        __swift_project_value_buffer(v22, qword_2810B4F18);
        v23 = v8;
        v11 = sub_22F740B70();
        v24 = sub_22F7415D0();

        if (!os_log_type_enabled(v11, v24))
        {

          goto LABEL_22;
        }

        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v41 = v26;
        *v25 = 134218242;
        *(v25 + 4) = v7;
        *(v25 + 12) = 2080;
        v27 = [v23 localIdentifier];
        v38 = v23;
        v28 = sub_22F740E20();
        v30 = v29;

        v31 = sub_22F145F20(v28, v30, &v41);
        v4 = v40;

        *(v25 + 14) = v31;
        _os_log_impl(&dword_22F0FC000, v11, v24, "Setting automatic order %ld for social group %s", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x2319033A0](v26, -1, -1);
        v32 = v25;
        v3 = v39;
        MEMORY[0x2319033A0](v32, -1, -1);
      }

LABEL_4:
      ++v5;
      v6 += 2;
      if (v4 == v5)
      {

        return;
      }
    }
  }
}

void sub_22F3282A8(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_22F120634(0, &unk_2810A91B0, 0x277CD99D0);
  sub_22F11FA28(&qword_2810A91A8, &unk_2810A91B0, 0x277CD99D0);
  v3 = sub_22F741410();
  [v2 deleteSocialGroups_];

  if (qword_2810AA918 != -1)
  {
    swift_once();
  }

  v4 = sub_22F740B90();
  __swift_project_value_buffer(v4, qword_2810B4F18);

  oslog = sub_22F740B70();
  v5 = sub_22F7415D0();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_22F741A00();
    }

    else
    {
      v7 = *(a1 + 16);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&dword_22F0FC000, oslog, v5, "Deleted %ld outdated graph social groups", v6, 0xCu);
    MEMORY[0x2319033A0](v6, -1, -1);
  }

  else
  {
  }
}

void sub_22F328488(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_autoreleasePoolPush();
  v10 = [objc_opt_self() fetchPersonsInSocialGroup:a1 option:a4];
  v11 = [v10 fetchedObjects];

  if (v11)
  {
    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v12 = sub_22F741180();

    v13 = _s11PhotosGraph20SocialGroupsPromoterC15socialGroupHash3forSSSaySo8PHPersonCG_tFZ_0(v12);
    v15 = v14;

    swift_beginAccess();
    v16 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(a6 + 16);
    *(a6 + 16) = 0x8000000000000000;
    sub_22F132CA8(v16, v13, v15, isUniquelyReferenced_nonNull_native);

    *(a6 + 16) = v29;
    swift_endAccess();
LABEL_10:
    objc_autoreleasePoolPop(v9);
    return;
  }

  if (qword_2810AA918 != -1)
  {
    swift_once();
  }

  v18 = sub_22F740B90();
  __swift_project_value_buffer(v18, qword_2810B4F18);
  v19 = a1;
  v20 = sub_22F740B70();
  v21 = sub_22F7415E0();
  if (!os_log_type_enabled(v20, v21))
  {

    goto LABEL_9;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v30[0] = v23;
  *v22 = 136315138;
  v24 = [v19 uuid];

  if (v24)
  {
    v25 = sub_22F740E20();
    v27 = v26;

    v28 = sub_22F145F20(v25, v27, v30);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_22F0FC000, v20, v21, "Unable to fetch members for social group %s!", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x2319033A0](v23, -1, -1);
    MEMORY[0x2319033A0](v22, -1, -1);
LABEL_9:

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t static SocialGroupsPromoter.ingestUserVerifiedSocialGroups(from:into:progressReporter:)(unint64_t a1, void *a2)
{
  sub_22F741690();
  if (v2)
  {
    return a1;
  }

  v53 = a2;
  v52 = sub_22F32AFB4(a1);
  v6 = [a1 librarySpecificFetchOptions];
  [v6 setSocialGroupContext_];
  v51 = v6;
  v7 = [objc_opt_self() fetchSocialGroupsWithOptions_];
  v8 = [v7 fetchedObjects];

  if (!v8)
  {
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v32 = sub_22F740B90();
    __swift_project_value_buffer(v32, qword_2810B4F18);
    v33 = sub_22F740B70();
    v34 = sub_22F7415E0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22F0FC000, v33, v34, "Unable to fetch user-verified social groups!", v35, 2u);
      MEMORY[0x2319033A0](v35, -1, -1);
    }

    sub_22F32C240();
    a1 = swift_allocError();
    *v36 = 0;
    swift_willThrow();

    return a1;
  }

  sub_22F120634(0, &unk_2810A91B0, 0x277CD99D0);
  v54 = sub_22F741180();

  v9 = [a2 socialGroupNodesSortedByImportance];
  sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
  v10 = sub_22F741180();

  if (v10 >> 62)
  {
LABEL_36:
    v11 = sub_22F741A00();
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_37:
    v13 = MEMORY[0x277D84F98];
LABEL_38:

    sub_22F1444CC(v37);
    v39 = v38;
    v64 = v38;
    a1 = v54;
    if (v54 >> 62)
    {
      goto LABEL_59;
    }

    for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {

      v41 = v52;
      v42 = v53;
      if (!i)
      {
        break;
      }

      v39 = 0;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v60 = a1 & 0xC000000000000001;
      a1 = MEMORY[0x277D84F90];
      v56 = v41;
      v53 = i;
      while (1)
      {
        if (v60)
        {
          v44 = MEMORY[0x2319016F0](v39, v54);
        }

        else
        {
          if (v39 >= *(v58 + 16))
          {
            goto LABEL_58;
          }

          v44 = *(v54 + 8 * v39 + 32);
        }

        v45 = v44;
        v46 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v63 = v44;
        sub_22F328E40(&v63, v41, v42, v13, &v61);

        v47 = v62;
        if (v62)
        {
          v48 = v61;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_22F13E1A8(0, *(a1 + 16) + 1, 1, a1);
          }

          v50 = *(a1 + 16);
          v49 = *(a1 + 24);
          if (v50 >= v49 >> 1)
          {
            a1 = sub_22F13E1A8((v49 > 1), v50 + 1, 1, a1);
          }

          *(a1 + 16) = v50 + 1;
          v43 = a1 + 16 * v50;
          *(v43 + 32) = v48;
          *(v43 + 40) = v47;
          v41 = v56;
          i = v53;
        }

        ++v39;
        if (v46 == i)
        {
          v39 = v64;
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }

    a1 = MEMORY[0x277D84F90];
LABEL_56:

    swift_bridgeObjectRelease_n();
    sub_22F329D74(v39, v42);
    sub_22F741690();

    return a1;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_37;
  }

LABEL_6:
  v12 = 0;
  v57 = v10 & 0xFFFFFFFFFFFFFF8;
  v59 = v10 & 0xC000000000000001;
  v13 = MEMORY[0x277D84F98];
  v55 = v10;
  while (1)
  {
    if (v59)
    {
      v16 = MEMORY[0x2319016F0](v12, v10);
    }

    else
    {
      if (v12 >= *(v57 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(v10 + 8 * v12 + 32);
    }

    v17 = v16;
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v10 = [v16 sortedMemberNodes];
    if (!v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
      sub_22F741180();
      v10 = sub_22F741160();
    }

    v19 = [objc_opt_self() identifierForMemberNodes_];

    v20 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v13;
    v23 = sub_22F13A8F4(v19);
    v24 = v13[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_34;
    }

    v10 = v22;
    if (v13[3] < v26)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v13 = v61;
      if (v22)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_22F137FE8();
      v13 = v61;
      if (v10)
      {
LABEL_7:
        v14 = v13[7];
        v15 = *(v14 + 8 * v23);
        *(v14 + 8 * v23) = v20;

        goto LABEL_8;
      }
    }

LABEL_22:
    v13[(v23 >> 6) + 8] |= 1 << v23;
    *(v13[6] + 8 * v23) = v19;
    *(v13[7] + 8 * v23) = v20;

    v29 = v13[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_35;
    }

    v13[2] = v31;
LABEL_8:
    ++v12;
    v10 = v55;
    if (v18 == v11)
    {
      goto LABEL_38;
    }
  }

  sub_22F12C5C0(v26, isUniquelyReferenced_nonNull_native);
  v27 = sub_22F13A8F4(v19);
  if ((v10 & 1) == (v28 & 1))
  {
    v23 = v27;
    v13 = v61;
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F328E40(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v9 = [objc_opt_self() fetchPersonsInSocialGroup:*a1 option:a2];
  v10 = [v9 fetchedObjects];

  if (!v10)
  {
    if (qword_2810AA918 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  v89 = a4;
  v87 = a5;
  v88 = v8;
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v8 = sub_22F741180();

  if (!(v8 >> 62))
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_20:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v11 = sub_22F741A00();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_4:
  v90 = MEMORY[0x277D84F90];
  sub_22F146454(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
LABEL_60:
    swift_once();
LABEL_14:
    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4F18);
    v24 = v8;
    v25 = sub_22F740B70();
    v26 = sub_22F7415E0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v90 = v28;
      *v27 = 136315138;
      v29 = [v24 uuid];

      if (!v29)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return;
      }

      v30 = sub_22F740E20();
      v32 = v31;

      v33 = sub_22F145F20(v30, v32, &v90);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_22F0FC000, v25, v26, "Unable to fetch members for social group %s!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x2319033A0](v28, -1, -1);
      MEMORY[0x2319033A0](v27, -1, -1);
    }

    else
    {
    }

    sub_22F32C240();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    return;
  }

  v86 = a3;
  v12 = 0;
  v13 = v90;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2319016F0](v12, v8);
    }

    else
    {
      v14 = *(v8 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = [v14 localIdentifier];
    v17 = sub_22F740E20();
    v19 = v18;

    v90 = v13;
    v21 = *(v13 + 16);
    v20 = *(v13 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_22F146454((v20 > 1), v21 + 1, 1);
      v13 = v90;
    }

    ++v12;
    *(v13 + 16) = v21 + 1;
    v22 = v13 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
  }

  while (v11 != v12);

  a3 = v86;
LABEL_21:
  v35 = sub_22F1515F8(v13);

  v36 = objc_opt_self();
  v37 = sub_22F741410();
  v38 = [v36 memberNodesForLocalIdentifiers:v37 inGraph:a3];

  if ([v38 count] != *(v35 + 16))
  {
    v58 = [v38 localIdentifiers];
    v59 = sub_22F741420();

    if (*(v59 + 16) <= *(v35 + 16) >> 3)
    {
      v90 = v35;
      sub_22F3E7FB8(v59);

      v60 = v35;
    }

    else
    {
      v60 = sub_22F1E999C(v59, v35);
    }

    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v61 = sub_22F740B90();
    __swift_project_value_buffer(v61, qword_2810B4F18);

    v62 = sub_22F740B70();
    v63 = sub_22F7415E0();

    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_42;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v91 = v65;
    *v64 = 136315138;
    v66 = *(v60 + 16);
    if (v66)
    {
      v67 = sub_22F10B348(*(v60 + 16), 0);
      v68 = sub_22F11A438(&v90, v67 + 4, v66, v60);
      sub_22F0FF590(v90);
      if (v68 != v66)
      {
        __break(1u);
LABEL_42:

LABEL_45:

        sub_22F32C240();
        swift_allocError();
        *v73 = 1;
        swift_willThrow();

        return;
      }
    }

    else
    {

      v67 = MEMORY[0x277D84F90];
    }

    v69 = MEMORY[0x231900D40](v67, MEMORY[0x277D837D0]);
    v71 = v70;

    v72 = sub_22F145F20(v69, v71, &v91);

    *(v64 + 4) = v72;
    _os_log_impl(&dword_22F0FC000, v62, v63, "Graph missing member nodes for localIdentifiers %s, skipping social group ingest", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x2319033A0](v65, -1, -1);
    MEMORY[0x2319033A0](v64, -1, -1);
    goto LABEL_45;
  }

  v39 = [v38 array];
  if (!v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
    sub_22F741180();
    v39 = sub_22F741160();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
  v40 = sub_22F741180();
  v41 = [objc_opt_self() identifierForMemberNodes_];

  if (*(v89 + 16))
  {
    v42 = sub_22F13A8F4(v41);
    if (v43)
    {
      v44 = a3;
      v45 = *(*(v89 + 56) + 8 * v42);
      if ([v45 isUserVerified])
      {

        if ([v88 automaticOrder])
        {
          if (qword_2810AA918 != -1)
          {
            swift_once();
          }

          v46 = sub_22F740B90();
          __swift_project_value_buffer(v46, qword_2810B4F18);
          v47 = v88;
          v48 = sub_22F740B70();
          v49 = sub_22F7415C0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v90 = v51;
            *v50 = 136315138;
            v52 = [v47 uuid];

            if (v52)
            {
              v53 = sub_22F740E20();
              v55 = v54;

              v56 = sub_22F145F20(v53, v55, &v90);

              *(v50 + 4) = v56;
              v57 = "Not Updating moments for the user-verified social group %s as it was a graph verified social group before.";
LABEL_56:
              _os_log_impl(&dword_22F0FC000, v48, v49, v57, v50, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v51);
              MEMORY[0x2319033A0](v51, -1, -1);
              MEMORY[0x2319033A0](v50, -1, -1);
LABEL_58:

              *v87 = 0;
              v87[1] = 0;
              return;
            }

            goto LABEL_62;
          }
        }

        else
        {
          v79 = [objc_allocWithZone(MEMORY[0x277D22C50]) init];
          v90 = v79;
          sub_22F32A170(&v90, v45, v88, v44, 0);
          [v44 executeGraphChangeRequest_];

          if (qword_2810AA918 != -1)
          {
            swift_once();
          }

          v80 = sub_22F740B90();
          __swift_project_value_buffer(v80, qword_2810B4F18);
          v47 = v88;
          v48 = sub_22F740B70();
          v49 = sub_22F7415C0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v90 = v51;
            *v50 = 136315138;
            v81 = [v47 uuid];

            if (v81)
            {
              v82 = sub_22F740E20();
              v84 = v83;

              v85 = sub_22F145F20(v82, v84, &v90);

              *(v50 + 4) = v85;
              v57 = "Updating moments for already-ingested user-verified social group %s";
              goto LABEL_56;
            }

            goto LABEL_63;
          }
        }

        goto LABEL_58;
      }

      a3 = v44;
    }
  }

  sub_22F32AB90(v88, v40, a3);

  v74 = [v88 uuid];
  if (v74)
  {
    v75 = v74;
    v76 = sub_22F740E20();
    v78 = v77;
  }

  else
  {

    v76 = 0;
    v78 = 0;
  }

  *v87 = v76;
  v87[1] = v78;
}

uint64_t sub_22F329A08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 localIdentifier];
  v6 = sub_22F740E20();
  v8 = v7;

  swift_beginAccess();
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_22F13E1A8(0, *(v9 + 2) + 1, 1, v9);
    *(a4 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_22F13E1A8((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  *(a4 + 16) = v9;
  return swift_endAccess();
}

void sub_22F329AFC(uint64_t a1, int a2, id a3, uint64_t a4, id *a5)
{
  if (([a3 containsNode_] & 1) == 0)
  {
    v8 = [objc_allocWithZone(PGGraphSocialGroupEdge) initFromMomentNode:a1 toSocialGroupNode:a4];
    [*a5 addEdge_];
  }
}

void sub_22F329BAC(void *a1, uint64_t a2, id *a3)
{
  v5 = *a3;
  v6 = [v5 identifierSetByAddingIdentifier_];

  v7 = *a3;
  *a3 = v6;
}

id SocialGroupsPromoter.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SocialGroupsPromoter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_22F329CE4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_22F35F6E8(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_22F329D74(uint64_t a1, void *a2)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB37E0, &qword_22F785D78);
  v35 = sub_22F16BC6C(&qword_2810A9238, &unk_27DAB37E0, &qword_22F785D78, MEMORY[0x277D83B68]);
  v33[0] = a1;
  v4 = objc_allocWithZone(MEMORY[0x277D22C50]);

  v5 = [v4 init];
  v6 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v30[-1] - v8);
  (*(v10 + 16))(&v30[-1] - v8, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  v12 = *v9;
  if ((*v9 & 0xC000000000000001) != 0)
  {
    sub_22F7419C0();
    sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
    sub_22F11FA28(&unk_2810A9040, &unk_2810A9050, off_27887B3D8);
    sub_22F741470();
    v12 = v36;
    v13 = v37;
    v15 = v38;
    v14 = v39;
    v16 = v40;
  }

  else
  {
    v14 = 0;
    v17 = -1;
    v18 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v17 = ~(-1 << v19);
    }

    v16 = v17 & *(v12 + 56);
  }

  *boxed_opaque_existential_1 = v12;
  boxed_opaque_existential_1[1] = v13;
  boxed_opaque_existential_1[2] = v15;
  boxed_opaque_existential_1[3] = v14;
  boxed_opaque_existential_1[4] = v16;
  __swift_mutable_project_boxed_opaque_existential_1(v30, AssociatedTypeWitness);
  sub_22F7418A0();
  for (i = v29; v29; i = v29)
  {
    v21 = [i allEdges];
    sub_22F120634(0, &unk_27DAB0680, 0x277D22C10);
    v22 = a2;
    sub_22F11FA28(&unk_27DAB37F0, &unk_27DAB0680, 0x277D22C10);
    v23 = sub_22F741420();

    sub_22F10A440(v23);

    v24 = objc_allocWithZone(PGGraphEdgeCollection);
    v25 = sub_22F741410();

    v26 = v24;
    a2 = v22;
    v27 = [v26 initWithSet:v25 graph:v22];

    [v5 removeEdges_];
    [v5 removeNode_];

    __swift_mutable_project_boxed_opaque_existential_1(v30, AssociatedTypeWitness);
    sub_22F7418A0();
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
  [a2 executeGraphChangeRequest_];

  return __swift_destroy_boxed_opaque_existential_0(v33);
}

void sub_22F32A170(unint64_t a1, id a2, void *a3, void *a4, char a5)
{
  v5 = a4;
  if (a5)
  {
    v8 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph_];
  }

  else
  {
    v9 = [a2 collection];
    v8 = [v9 momentNodes];
  }

  v71 = v8;
  v10 = [a3 photoLibrary];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 librarySpecificFetchOptions];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22F771340;
    *(v13 + 32) = sub_22F740E20();
    *(v13 + 40) = v14;
    v15 = sub_22F741160();

    [v12 setFetchPropertySets_];

    v16 = objc_opt_self();
    v17 = v12;
    v18 = [v16 fetchExclusiveAssetsForSocialGroup:a3 options:v17];
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D84F90];
    *(v19 + 16) = MEMORY[0x277D84F90];
    if (v18)
    {
      v82 = sub_22F32C608;
      v83 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v79 = 1107296256;
      v80 = sub_22F334418;
      v81 = &block_descriptor_33;
      v21 = _Block_copy(&aBlock);
      v22 = v18;

      [v22 enumerateObjectsUsingBlock_];
      _Block_release(v21);
    }

    sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v23);
    swift_beginAccess();

    sub_22F161EB4(v25);

    v26 = sub_22F741160();

    v76 = ObjCClassFromMetadata;
    v27 = [ObjCClassFromMetadata fetchMomentsForAssetsWithLocalIdentifiers:v26 options:v17];

    if (!v27)
    {
      goto LABEL_40;
    }

    v28 = [v27 fetchedObjects];

    v73 = a1;
    v74 = v5;
    v70 = v17;
    v69 = v18;
    if (v28)
    {
      v29 = sub_22F741180();

      if (v29 >> 62)
      {
        goto LABEL_29;
      }

      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        while (1)
        {
          aBlock = v20;
          sub_22F146454(0, v30 & ~(v30 >> 63), 0);
          if (v30 < 0)
          {
            break;
          }

          a1 = 0;
          v31 = aBlock;
          v32 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
          while (1)
          {
            v33 = (a1 + 1);
            if (__OFADD__(a1, 1))
            {
              break;
            }

            if ((v29 & 0xC000000000000001) != 0)
            {
              v34 = MEMORY[0x2319016F0](a1, v29);
            }

            else
            {
              if (a1 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v34 = *(v29 + 8 * a1 + 32);
              swift_unknownObjectRetain();
            }

            if ([v34 respondsToSelector_])
            {
              v35 = [v34 v32[339]];
              sub_22F740E20();

              v36 = sub_22F740DF0();
            }

            else
            {
              v36 = 0;
            }

            v37 = [v76 uuidFromLocalIdentifier_];

            if (!v37)
            {
              goto LABEL_38;
            }

            v38 = sub_22F740E20();
            v5 = v39;
            swift_unknownObjectRelease();

            aBlock = v31;
            v41 = *(v31 + 16);
            v40 = *(v31 + 24);
            v20 = v41 + 1;
            if (v41 >= v40 >> 1)
            {
              sub_22F146454((v40 > 1), v41 + 1, 1);
              v31 = aBlock;
            }

            *(v31 + 16) = v20;
            v42 = v31 + 16 * v41;
            *(v42 + 32) = v38;
            *(v42 + 40) = v5;
            ++a1;
            v32 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
            if (v33 == v30)
            {

              a1 = v73;
              v5 = v74;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          v30 = sub_22F741A00();
          if (!v30)
          {
            goto LABEL_30;
          }
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_30:

      v31 = MEMORY[0x277D84F90];
LABEL_31:
      sub_22F1515F8(v31);
    }

    v43 = objc_opt_self();
    v44 = sub_22F741410();

    v45 = [v43 momentNodesForUUIDs:v44 inGraph:v5];

    v46 = swift_allocObject();
    v46[2] = v71;
    v46[3] = a2;
    v46[4] = a1;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_22F32C5DC;
    *(v47 + 24) = v46;
    v82 = sub_22F250854;
    v83 = v47;
    aBlock = MEMORY[0x277D85DD0];
    v79 = 1107296256;
    v80 = sub_22F107E24;
    v81 = &block_descriptor_30;
    v48 = _Block_copy(&aBlock);
    v75 = v71;
    v49 = a2;

    [v45 enumerateUsingBlock_];
    _Block_release(v48);
    LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

    if (v48)
    {
      __break(1u);
    }

    else
    {
      v50 = [v75 collectionBySubtracting_];

      v77 = [objc_allocWithZone(MEMORY[0x277D22BB0]) init];
      v51 = swift_allocObject();
      *(v51 + 16) = &v77;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_22F32C600;
      *(v52 + 24) = v51;
      v82 = sub_22F2D4D54;
      v83 = v52;
      aBlock = MEMORY[0x277D85DD0];
      v79 = 1107296256;
      v53 = v50;
      v80 = sub_22F107E24;
      v81 = &block_descriptor_30_1;
      v54 = _Block_copy(&aBlock);

      [v50 enumerateUsingBlock_];
      _Block_release(v54);
      LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

      if ((v54 & 1) == 0)
      {
        v55 = [v49 identifier];
        v56 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
        v57 = v77;
        v58 = objc_opt_self();
        v59 = v57;
        v60 = [v58 any];
        v61 = [v74 edgeIdentifiersOfType:1 betweenNodesForIdentifiers:v56 andNodesForIdentifiers:v59 matchingFilter:v60];

        v62 = [v74 edgesForIdentifiers_];
        sub_22F120634(0, &unk_27DAB0680, 0x277D22C10);
        sub_22F11FA28(&unk_27DAB37F0, &unk_27DAB0680, 0x277D22C10);
        v63 = sub_22F741420();

        v64 = *v73;
        sub_22F10A440(v63);

        v65 = objc_allocWithZone(PGGraphEdgeCollection);
        v66 = sub_22F741410();

        v67 = [v65 initWithSet:v66 graph:v74];

        [v64 removeEdges_];
        v68 = v77;

        return;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_22F32AB90(void *a1, unint64_t a2, void *a3)
{
  v16 = [objc_allocWithZone(MEMORY[0x277D22C50]) init];
  v4 = objc_opt_self();
  v5 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
  v6 = sub_22F741160();
  v7 = [v4 identifierForMemberNodes_];

  v15 = [objc_allocWithZone(PGGraphSocialGroupNode) initWithSocialGroupIdentifier:v7 importance:1 isUserVerified:1.0];
  [v5 addNode_];

  if (a2 >> 62)
  {
    v8 = sub_22F741A00();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v9 = 0;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2319016F0](v9, a2);
    }

    else
    {
      v10 = *(a2 + 8 * v9 + 32);
    }

    v11 = v10;
    ++v9;
    v12 = [objc_allocWithZone(PGGraphBelongsToEdge) initFromMemberNode:v10 toSocialGroupNode:v15 importance:1.0];
    [v5 addEdge_];
  }

  while (v8 != v9);
LABEL_10:
  sub_22F32A170(&v16, v15, a1, a3, 1);
  [a3 executeGraphChangeRequest_];
  [v15 updatePropertiesWithPersistedSocialGroup:a1 graph:a3];
}

void sub_22F32ADA8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v20 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = v3;
      v23 = v4;
      while (1)
      {
        if (v5 >= v2)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v6 = (v20 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a2;
        if (!*(*a2 + 16))
        {
          break;
        }

        v22 = v6[1];
        sub_22F742170();

        sub_22F2594CC(v24, v7);
        v10 = sub_22F7421D0();
        v11 = -1 << *(v9 + 32);
        v12 = v10 & ~v11;
        if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
LABEL_14:

          v8 = v22;
          v4 = v23;
          goto LABEL_15;
        }

        v13 = ~v11;
        while (1)
        {

          v15 = sub_22F17B5C0(v14, v7);

          if (v15)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v5 = v3;
        v4 = v23;
        if (v3 == v2)
        {
          return;
        }
      }

LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22F146C74(0, *(v4 + 16) + 1, 1);
        v4 = v25;
      }

      v18 = *(v4 + 16);
      v17 = *(v4 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22F146C74((v17 > 1), v18 + 1, 1);
        v4 = v25;
      }

      *(v4 + 16) = v18 + 1;
      v19 = v4 + 16 * v18;
      *(v19 + 32) = v7;
      *(v19 + 40) = v8;
    }

    while (v3 != v2);
  }
}

id sub_22F32AFB4(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F771350;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  *(v2 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v3 = sub_22F741160();

  [v1 setIncludedDetectionTypes_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771340;
  *(v4 + 32) = sub_22F740E20();
  *(v4 + 40) = v5;
  v6 = sub_22F741160();

  [v1 setFetchPropertySets_];

  return v1;
}

uint64_t sub_22F32B11C(uint64_t a1, id a2)
{
  v3 = [a2 meNodeWithFallbackInferredMeNode];
  if (v3 && (v4 = v3, v5 = [v3 localIdentifier], v4, v5))
  {
    v63 = sub_22F740E20();
    v7 = v6;
  }

  else
  {
    v63 = 0;
    v7 = 0;
  }

  sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
  v8 = sub_22F741160();
  v9 = [a2 fetchMemberNodesBySocialGroupNodeForSocialGroupNodes_];

  sub_22F120634(0, &qword_2810A8F18, off_27887B3D0);
  sub_22F11FA28(&unk_2810A9040, &unk_2810A9050, off_27887B3D8);
  v10 = sub_22F740CA0();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = sub_22F741CA0();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v10 = v11 | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(v10 + 32);
    v12 = v10 + 64;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v10 + 64);
  }

  v64 = v7;
  v18 = 0;
  v19 = (v13 + 64) >> 6;
  v65 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v10 < 0)
    {
      v26 = sub_22F741D10();
      if (!v26 || (v28 = v27, v67 = v26, swift_dynamicCast(), v24 = v66, v67 = v28, swift_dynamicCast(), v25 = v66, !v24))
      {
LABEL_45:
        sub_22F0FF590(v10);

        return v65;
      }

      goto LABEL_22;
    }

    v20 = v18;
    v21 = v14;
    if (!v14)
    {
      break;
    }

LABEL_18:
    v14 = (v21 - 1) & v21;
    v22 = (v18 << 9) | (8 * __clz(__rbit64(v21)));
    v23 = *(*(v10 + 56) + v22);
    v24 = *(*(v10 + 48) + v22);
    v25 = v23;
    if (!v24)
    {
      goto LABEL_45;
    }

LABEL_22:
    v29 = [v24 UUID];
    if (v29)
    {
      v34 = v29;
      v61 = sub_22F740E20();
      v62 = v35;

      v36 = [v25 localIdentifiers];
      v37 = sub_22F741420();

      v67 = v37;
      if (v64)
      {

        sub_22F10BBDC(&v66, v63, v64);

        v37 = v67;
      }

      v38 = *(v37 + 16);
      if (v38)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
        v39 = swift_allocObject();
        v40 = _swift_stdlib_malloc_size(v39);
        v41 = v40 - 32;
        if (v40 < 32)
        {
          v41 = v40 - 17;
        }

        v39[2] = v38;
        v39[3] = 2 * (v41 >> 4);
        v42 = sub_22F11A438(&v66, v39 + 4, v38, v37);
        sub_22F0FF590(v66);
        if (v42 != v38)
        {
          goto LABEL_48;
        }

        v60 = v39;
      }

      else
      {

        v60 = MEMORY[0x277D84F90];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v65;
      v44 = sub_22F1229E8(v61, v62);
      v46 = *(v65 + 16);
      v47 = (v45 & 1) == 0;
      v48 = __OFADD__(v46, v47);
      v49 = v46 + v47;
      if (v48)
      {
        goto LABEL_47;
      }

      v50 = v45;
      if (*(v65 + 24) >= v49)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_40;
        }

        v54 = v44;
        sub_22F135844();
        v44 = v54;
        v52 = v60;
        if ((v50 & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_41:
        v53 = v44;

        v65 = v66;
        *(v66[7] + 8 * v53) = v52;
      }

      else
      {
        sub_22F127C90(v49, isUniquelyReferenced_nonNull_native);
        v44 = sub_22F1229E8(v61, v62);
        if ((v50 & 1) != (v51 & 1))
        {
          goto LABEL_50;
        }

LABEL_40:
        v52 = v60;
        if (v50)
        {
          goto LABEL_41;
        }

LABEL_43:
        v55 = v66;
        v66[(v44 >> 6) + 8] |= 1 << v44;
        v56 = (v55[6] + 16 * v44);
        *v56 = v61;
        v56[1] = v62;
        *(v55[7] + 8 * v44) = v52;

        v57 = v55[2];
        v48 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v48)
        {
          goto LABEL_49;
        }

        v65 = v55;
        v55[2] = v58;
      }
    }

    else
    {
      if (qword_2810AA918 != -1)
      {
        swift_once();
      }

      v30 = sub_22F740B90();
      __swift_project_value_buffer(v30, qword_2810B4F18);
      v31 = sub_22F740B70();
      v32 = sub_22F7415E0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22F0FC000, v31, v32, "Unable to get UUID for social group node!", v33, 2u);
        MEMORY[0x2319033A0](v33, -1, -1);
      }
    }
  }

  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v19)
    {
      goto LABEL_45;
    }

    v21 = *(v12 + 8 * v18);
    ++v20;
    if (v21)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

char *sub_22F32B718(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 UUID];
  if (!v5)
  {
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v28 = sub_22F740B90();
    __swift_project_value_buffer(v28, qword_2810B4F18);
    v23 = sub_22F740B70();
    v29 = sub_22F7415E0();
    if (!os_log_type_enabled(v23, v29))
    {
      goto LABEL_19;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22F0FC000, v23, v29, "Unable to get UUID for social group node!", v25, 2u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = sub_22F740E20();
  v9 = v8;

  if (!*(a2 + 16) || (v10 = sub_22F1229E8(v7, v9), (v11 & 1) == 0))
  {
    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v22 = sub_22F740B90();
    __swift_project_value_buffer(v22, qword_2810B4F18);

    v23 = sub_22F740B70();
    v24 = sub_22F7415E0();

    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_19;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v72 = v26;
    *v25 = 136315138;
    v27 = sub_22F145F20(v7, v9, &v72);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_22F0FC000, v23, v24, "Unable to get person local identifiers for members in social group node %s!", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x2319033A0](v26, -1, -1);
LABEL_17:
    MEMORY[0x2319033A0](v25, -1, -1);
LABEL_19:

    return 0;
  }

  v12 = *(*(a2 + 56) + 8 * v10);
  v13 = *(v12 + 16);
  if (v13 <= 1)
  {
    v14 = qword_2810AA918;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_22F740B90();
    __swift_project_value_buffer(v15, qword_2810B4F18);

    v16 = sub_22F740B70();
    v17 = sub_22F7415E0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v72 = v19;
      *v18 = 136315394;
      v20 = sub_22F145F20(v7, v9, &v72);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2048;
      v21 = *(v12 + 16);

      *(v18 + 14) = v21;

      _os_log_impl(&dword_22F0FC000, v16, v17, "Social group with UUID %s in the graph only has %ld members, skipping!", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x2319033A0](v19, -1, -1);
      MEMORY[0x2319033A0](v18, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  v32 = sub_22F32AFB4(a3);
  v33 = objc_opt_self();
  v34 = sub_22F741160();
  v35 = [v33 fetchPersonsWithLocalIdentifiers:v34 options:v32];

  v36 = [v35 fetchedObjects];
  if (!v36)
  {

    if (qword_2810AA918 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4F18);

    v39 = sub_22F740B70();
    v40 = sub_22F7415E0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v72 = v42;
      *v41 = 136315138;
      v43 = sub_22F145F20(v7, v9, &v72);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_22F0FC000, v39, v40, "Couldn't fetch members for social group with UUID %s in the graph!", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x2319033A0](v42, -1, -1);
      MEMORY[0x2319033A0](v41, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v30 = sub_22F741180();

  if (v30 >> 62)
  {
    v37 = sub_22F741A00();
    if (v13 == v37)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v37 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 == v37)
    {
LABEL_25:

      return v30;
    }
  }

  if (qword_2810AA918 != -1)
  {
    swift_once();
  }

  v44 = sub_22F740B90();
  __swift_project_value_buffer(v44, qword_2810B4F18);

  v45 = sub_22F740B70();
  v46 = sub_22F7415E0();

  if (!os_log_type_enabled(v45, v46))
  {

LABEL_49:

    return v30;
  }

  v70 = v46;
  v47 = swift_slowAlloc();
  v68 = swift_slowAlloc();
  v72 = v68;
  *v47 = 136315650;
  v48 = sub_22F145F20(v7, v9, &v72);

  *(v47 + 4) = v48;
  *(v47 + 12) = 2080;
  v49 = MEMORY[0x231900D40](v12, MEMORY[0x277D837D0]);
  v51 = sub_22F145F20(v49, v50, &v72);

  *(v47 + 14) = v51;
  buf = v47;
  *(v47 + 22) = 2080;
  v52 = MEMORY[0x277D84F90];
  if (!v37)
  {
LABEL_48:
    v63 = MEMORY[0x231900D40](v52, MEMORY[0x277D837D0]);
    v65 = v64;

    v66 = sub_22F145F20(v63, v65, &v72);

    *(buf + 3) = v66;
    _os_log_impl(&dword_22F0FC000, v45, v70, "Social group with UUID %s in the graph has outdated person node localIdentifiers %s, vs fetched person UUIDs %s", buf, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v68, -1, -1);
    MEMORY[0x2319033A0](buf, -1, -1);
    goto LABEL_49;
  }

  v67 = v45;
  v71 = MEMORY[0x277D84F90];
  result = sub_22F146454(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    v52 = v71;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x2319016F0](v53, v30);
      }

      else
      {
        v54 = *(v30 + 8 * v53 + 32);
      }

      v55 = v54;
      v56 = [v54 localIdentifier];
      v57 = sub_22F740E20();
      v59 = v58;

      v61 = *(v71 + 16);
      v60 = *(v71 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_22F146454((v60 > 1), v61 + 1, 1);
      }

      ++v53;
      *(v71 + 16) = v61 + 1;
      v62 = v71 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
    }

    while (v37 != v53);
    v45 = v67;
    goto LABEL_48;
  }

  __break(1u);
  return result;
}

uint64_t _s11PhotosGraph20SocialGroupsPromoterC15socialGroupHash3forSSSaySo8PHPersonCG_tFZ_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_15:
      v18 = v3;

      sub_22F1AB0EC(&v18);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F16BC6C(&qword_2810A92E0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277D83958]);
      v16 = sub_22F740DA0();

      return v16;
    }

    v18 = MEMORY[0x277D84F90];
    sub_22F146454(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v4 = 0;
    v3 = v18;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2319016F0](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 uuid];
      if (!v8)
      {
        goto LABEL_20;
      }

      v9 = v8;
      v10 = sub_22F740E20();
      v12 = v11;

      v18 = v3;
      v14 = *(v3 + 2);
      v13 = *(v3 + 3);
      if (v14 >= v13 >> 1)
      {
        sub_22F146454((v13 > 1), v14 + 1, 1);
        v3 = v18;
      }

      *(v3 + 2) = v14 + 1;
      v15 = &v3[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      ++v4;
      if (v5 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:
  __break(1u);

  __break(1u);
  return result;
}