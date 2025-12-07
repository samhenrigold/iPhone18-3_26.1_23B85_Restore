unint64_t sub_1B4BBE2DC()
{
  result = qword_1EB8ABDF8;
  if (!qword_1EB8ABDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDF8);
  }

  return result;
}

unint64_t sub_1B4BBE334()
{
  result = qword_1EB8ABE00;
  if (!qword_1EB8ABE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABE00);
  }

  return result;
}

uint64_t sub_1B4BBE388(uint64_t a1, uint64_t a2)
{
  v2[110] = a2;
  v2[109] = a1;
  v3 = type metadata accessor for PerfectWeekRingStatusFact(0);
  v2[111] = v3;
  v2[112] = *(v3 - 8);
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v4 = sub_1B4D1777C();
  v2[116] = v4;
  v2[117] = *(v4 - 8);
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v5 = type metadata accessor for RingProgressType(0);
  v2[123] = v5;
  v2[124] = *(v5 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v6 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v2[131] = v6;
  v2[132] = *(v6 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050);
  v2[138] = swift_task_alloc();
  v2[139] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BBE6B0, 0, 0);
}

uint64_t sub_1B4BBE6B0()
{
  v226 = v0;
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 872);
  v4 = type metadata accessor for ActivitySummaryContext(0);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  *(v0 + 856) = &type metadata for PerfectWeekRingStatusFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE08, &unk_1B4D39058);
  *&v216 = sub_1B4D181CC();
  *(&v216 + 1) = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);

  v8 = v0;
  (*(v6 + 8))(v216, *(&v216 + 1), v4, v4, v5, v6);

  sub_1B4974FBC(v1, v2, &qword_1EB8AA5C8, &qword_1B4D39050);
  v9 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1056);
  v13 = *(v0 + 1048);
  if (v9 == 1)
  {
    sub_1B4975024(*(v0 + 1104), &qword_1EB8AA5C8, &qword_1B4D39050);
    (*(v12 + 56))(v11, 1, 1, v13);
  }

  else
  {
    sub_1B4974FBC(*(v0 + 1104), *(v0 + 1088), &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4BC02C4(v10, type metadata accessor for ActivitySummaryContext);
    v14 = *(v12 + 48);
    if (v14(v11, 1, v13) != 1)
    {
      v21 = *(v0 + 1096);
      v22 = *(v0 + 1056);
      v23 = *(v0 + 1048);
      sub_1B4BBFECC(*(v0 + 1088), v21, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v22 + 56))(v21, 0, 1, v23);
      goto LABEL_7;
    }
  }

  v15 = *(v0 + 1096);
  v16 = *(v0 + 1088);
  v17 = *(v0 + 1056);
  v18 = *(v0 + 1048);
  v19 = *(v0 + 880);
  v20 = type metadata accessor for WorkoutState(0);
  sub_1B4974FBC(v19 + *(v20 + 128), v15, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v14 = *(v17 + 48);
  if (v14(v16, 1, v18) != 1)
  {
    sub_1B4975024(*(v0 + 1088), &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_7:
  v25 = v3[3];
  v24 = v3[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 872), v25);
  *(v0 + 864) = &type metadata for PerfectWeekRingStatusFactGenerator.QueryIdentifier;
  *&v216 = sub_1B4D181CC();
  *(&v216 + 1) = v26;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000017, 0x80000001B4D4E5E0);

  (*(v24 + 8))(v216, *(&v216 + 1), &type metadata for RingsProperties, &type metadata for RingsProperties, v25, v24);

  v27 = *(v0 + 848);
  if (!v27)
  {
LABEL_13:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v35 = sub_1B4D17F6C();
    __swift_project_value_buffer(v35, qword_1EDC36F00);
    v36 = sub_1B4D17F5C();
    v37 = sub_1B4D1873C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v216 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_1B49558AC(0xD000000000000022, 0x80000001B4D38F10, &v216);
      _os_log_impl(&dword_1B4953000, v36, v37, "%s No ring closure streak found.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1B8C7DDA0](v39, -1, -1);
      MEMORY[0x1B8C7DDA0](v38, -1, -1);
    }

    v40 = v8[139];
    sub_1B4975024(v8[137], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4975024(v40, &qword_1EB8AA5C8, &qword_1B4D39050);
    v196 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v28 = *(v0 + 1080);
  v29 = *(v0 + 1048);
  sub_1B4974FBC(*(v0 + 1096), v28, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v30 = v14(v28, 1, v29);
  v31 = *(v0 + 1080);
  if (v30 == 1)
  {

    v32 = &qword_1EB8A6C98;
    v33 = &unk_1B4D2F3F0;
LABEL_10:
    sub_1B4975024(v31, v32, v33);
    goto LABEL_13;
  }

  v34 = *(v0 + 1072);
  sub_1B4BBFECC(*(v0 + 1080), v34, type metadata accessor for HKActivitySummaryRepresentable);
  if ((*(v34 + 25) & 1) != 0 || (sub_1B4C025D0(0, 0, 0, v27, &v198), v31 = v0 + 152, v43 = v205, v44 = v204, v45 = v205, *(v0 + 248) = v204, *(v0 + 264) = v43, v46 = v201, v47 = v200, v48 = v201, *(v0 + 184) = v200, *(v0 + 200) = v46, v49 = v203, v51 = v202, v50 = v203, *(v0 + 216) = v202, *(v0 + 232) = v49, v52 = v199, v54 = v198, v53 = v199, *(v0 + 152) = v198, *(v0 + 168) = v52, *(v0 + 112) = v44, *(v0 + 128) = v45, *(v0 + 48) = v47, *(v0 + 64) = v48, *(v0 + 80) = v51, *(v0 + 96) = v50, v55 = v206, *(v0 + 280) = v206, *(v0 + 144) = v55, *(v0 + 16) = v54, *(v0 + 32) = v53, sub_1B496F52C(v0 + 16) == 1))
  {
    sub_1B4BC02C4(*(v0 + 1072), type metadata accessor for HKActivitySummaryRepresentable);

    goto LABEL_13;
  }

  sub_1B4C02EE0(0, 0, 0, v27, &v207);
  v56 = v212;
  v58 = v213;
  v57 = v214;
  *(v0 + 520) = v213;
  *(v0 + 536) = v57;
  v59 = v208;
  v61 = v209;
  v60 = v210;
  *(v0 + 456) = v209;
  *(v0 + 472) = v60;
  v62 = v210;
  v64 = v211;
  v63 = v212;
  *(v0 + 488) = v211;
  *(v0 + 504) = v63;
  v65 = v208;
  v66 = v207;
  *(v0 + 424) = v207;
  *(v0 + 440) = v65;
  v67 = v214;
  *(v0 + 384) = v58;
  *(v0 + 400) = v67;
  *(v0 + 320) = v61;
  *(v0 + 336) = v62;
  *(v0 + 352) = v64;
  *(v0 + 368) = v56;
  v68 = v215;
  *(v0 + 552) = v215;
  *(v0 + 416) = v68;
  *(v0 + 288) = v66;
  *(v0 + 304) = v59;
  if (sub_1B496F52C(v0 + 288) == 1)
  {
    sub_1B4BC02C4(*(v0 + 1072), type metadata accessor for HKActivitySummaryRepresentable);

    v32 = &qword_1EB8A79B8;
    v33 = &qword_1B4D1F320;
    goto LABEL_10;
  }

  sub_1B4C01CC8(0, 0, 0, v27, &v216);

  v69 = v223;
  v70 = v222;
  v71 = v223;
  *(v0 + 792) = v222;
  *(v0 + 808) = v69;
  v72 = v219;
  v73 = v218;
  v74 = v219;
  *(v0 + 728) = v218;
  *(v0 + 744) = v72;
  v75 = v221;
  v77 = v220;
  v76 = v221;
  *(v0 + 760) = v220;
  *(v0 + 776) = v75;
  v78 = v217;
  v80 = v216;
  v79 = v217;
  *(v0 + 696) = v216;
  *(v0 + 712) = v78;
  *(v0 + 656) = v70;
  *(v0 + 672) = v71;
  *(v0 + 592) = v73;
  *(v0 + 608) = v74;
  *(v0 + 624) = v77;
  *(v0 + 640) = v76;
  v81 = v224;
  *(v0 + 824) = v224;
  *(v0 + 688) = v81;
  *(v0 + 560) = v80;
  *(v0 + 576) = v79;
  v82 = sub_1B496F52C(v0 + 560);
  v83 = *(v0 + 1072);
  if (v82 == 1)
  {
    sub_1B4BC02C4(v83, type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4975024(v0 + 424, &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024(v0 + 152, &qword_1EB8A79B8, &qword_1B4D1F320);
    goto LABEL_13;
  }

  v84 = *(v0 + 1064);
  v85 = *(v0 + 992);
  v86 = v8[123];
  v87 = v8[122];
  sub_1B4BC025C(v83, v8[133], type metadata accessor for HKActivitySummaryRepresentable);
  LOBYTE(v225[0]) = 3;
  sub_1B4B05EF8(v84, v225, v87);
  v88 = *(v85 + 48);
  v89 = v88(v87, 1, v86);
  v90 = v8[134];
  if (v89 == 1)
  {
    v91 = v8[122];
    sub_1B4BC02C4(v8[134], type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 87), &qword_1EB8A79B8, &qword_1B4D1F320);
    v92 = v91;
LABEL_32:
    sub_1B4975024(v92, &qword_1EB8AA5C0, &unk_1B4D39040);
    goto LABEL_13;
  }

  v93 = v8[133];
  v94 = v8[123];
  v95 = v8[121];
  sub_1B4BBFECC(v8[122], v8[130], type metadata accessor for RingProgressType);
  sub_1B4BC025C(v90, v93, type metadata accessor for HKActivitySummaryRepresentable);
  LOBYTE(v225[0]) = 0;
  sub_1B4B05EF8(v93, v225, v95);
  v96 = v88(v95, 1, v94);
  v97 = v8[134];
  if (v96 == 1)
  {
    v98 = v8[130];
    v99 = v8[121];
    sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 87), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4BC02C4(v98, type metadata accessor for RingProgressType);
    sub_1B4BC02C4(v97, type metadata accessor for HKActivitySummaryRepresentable);
    v92 = v99;
    goto LABEL_32;
  }

  v100 = v8[133];
  v101 = v8[123];
  v102 = v8[120];
  sub_1B4BBFECC(v8[121], v8[129], type metadata accessor for RingProgressType);
  sub_1B4BC025C(v97, v100, type metadata accessor for HKActivitySummaryRepresentable);
  LOBYTE(v225[0]) = 1;
  sub_1B4B05EF8(v100, v225, v102);
  v103 = v88(v102, 1, v101);
  v104 = v8[134];
  if (v103 == 1)
  {
    v105 = v8[130];
    v106 = v8[129];
    v107 = v8[120];
    sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024(v31, &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 87), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4BC02C4(v106, type metadata accessor for RingProgressType);
    sub_1B4BC02C4(v105, type metadata accessor for RingProgressType);
    sub_1B4BC02C4(v104, type metadata accessor for HKActivitySummaryRepresentable);
    v92 = v107;
    goto LABEL_32;
  }

  v108 = (v8 + 87);
  v189 = (v8 + 19);
  v193 = (v8 + 53);
  v109 = v8[131];
  sub_1B4BBFECC(v8[120], v8[128], type metadata accessor for RingProgressType);
  v185 = *(v104 + *(v109 + 76));
  v225[0] = *v104;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v110 = v8[118];
  v111 = sub_1B4D1796C();
  __swift_project_value_buffer(v111, qword_1EDC3CE48);
  CacheIndex.date(for:)(v110);
  v182 = v8[130];
  v112 = v8[127];
  v113 = v8;
  v114 = v8[119];
  v115 = v113[118];
  v116 = v113[117];
  v188 = v113;
  v117 = v113[116];
  v118 = sub_1B4D178CC();
  v119 = sub_1B4D1771C();
  v120 = [v118 hk:v119 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  v121 = *(v116 + 8);
  v121(v115, v117);
  v122 = sub_1B4D1771C();
  v123 = sub_1B4D178CC();
  v197 = _HKCacheIndexFromDate();

  v121(v114, v117);
  sub_1B4BC025C(v182, v112, type metadata accessor for RingProgressType);
  v124 = sub_1B4A612D4();
  if (v125 & 1) != 0 || (v126 = *&v124, v127 = sub_1B4A61B14(), (v128))
  {
    sub_1B4975024(v108, &qword_1EB8A79B8, &qword_1B4D1F320);
    v129 = 0;
  }

  else
  {
    v175 = *&v127;
    v176 = COERCE_DOUBLE(sub_1B4A61EE8());
    v178 = v177;
    sub_1B4975024(v108, &qword_1EB8A79B8, &qword_1B4D1F320);
    v129 = 0;
    if ((v178 & 1) == 0 && v126 >= 1.0 && v175 >= 1.0)
    {
      v129 = v176 >= 1.0;
    }
  }

  v130 = v188[129];
  v131 = v188[127];
  v132 = v188[126];
  v181 = v188[125];
  v183 = v188[128];
  v133 = v188[115];
  v134 = v188[114];
  v135 = v188[113];
  v136 = v188[111];
  v180 = v188[77];
  v184 = v188[78];
  v179 = v188[76];
  *v133 = v179;
  sub_1B4BBFECC(v131, v133 + v136[5], type metadata accessor for RingProgressType);
  v137 = v185 & 1;
  *(v133 + v136[6]) = v185 & 1;
  *(v133 + v136[7]) = v129;
  v138 = v130;
  v139 = v132;
  sub_1B4BC025C(v138, v132, type metadata accessor for RingProgressType);
  v140 = COERCE_DOUBLE(sub_1B4A612D4());
  LOBYTE(v133) = v141;
  sub_1B4975024(v189, &qword_1EB8A79B8, &qword_1B4D1F320);
  LOBYTE(v140) = (v140 >= 1.0) & ~v133;
  v142 = v188[8];
  v186 = v188[9];
  v190 = v188[10];
  *v134 = v142;
  sub_1B4BBFECC(v139, v134 + v136[5], type metadata accessor for RingProgressType);
  *(v134 + v136[6]) = v137;
  *(v134 + v136[7]) = LOBYTE(v140);
  sub_1B4BC025C(v183, v181, type metadata accessor for RingProgressType);
  v143 = COERCE_DOUBLE(sub_1B4A61B14());
  LOBYTE(v140) = v144;
  sub_1B4975024(v193, &qword_1EB8A79B8, &qword_1B4D1F320);
  LOBYTE(v140) = (v143 >= 1.0) & ~LOBYTE(v140);
  v145 = v188[42];
  v194 = v188[43];
  v146 = v188[44];
  *v135 = v145;
  sub_1B4BBFECC(v181, v135 + v136[5], type metadata accessor for RingProgressType);
  *(v135 + v136[6]) = v137;
  *(v135 + v136[7]) = LOBYTE(v140);
  if (v184 != v197 || v180 || v179 < 2)
  {
    if (v190 != v197 || v186 || v142 < 2)
    {
      v192 = v188[139];
      v187 = v188[137];
      v164 = v188[134];
      v165 = v188[130];
      v166 = v188[129];
      v167 = v188[128];
      v168 = v188[115];
      v169 = v188[114];
      v170 = v188[113];
      if (v146 != v197 || v194 || v145 < 2)
      {
        sub_1B4BC02C4(v188[113], type metadata accessor for PerfectWeekRingStatusFact);
        sub_1B4BC02C4(v169, type metadata accessor for PerfectWeekRingStatusFact);
        sub_1B4BC02C4(v168, type metadata accessor for PerfectWeekRingStatusFact);
        sub_1B4BC02C4(v167, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v166, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v165, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v164, type metadata accessor for HKActivitySummaryRepresentable);
        sub_1B4975024(v187, &qword_1EB8A6C98, &unk_1B4D2F3F0);
        sub_1B4975024(v192, &qword_1EB8AA5C8, &qword_1B4D39050);
        v196 = MEMORY[0x1E69E7CC0];
        v8 = v188;
      }

      else
      {
        v171 = v188[112];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE10, &qword_1B4D39068);
        v172 = (*(v171 + 80) + 32) & ~*(v171 + 80);
        v173 = swift_allocObject();
        *(v173 + 16) = xmmword_1B4D1A800;
        v196 = v173;
        sub_1B4BBFECC(v170, v173 + v172, type metadata accessor for PerfectWeekRingStatusFact);
        sub_1B4BC02C4(v169, type metadata accessor for PerfectWeekRingStatusFact);
        v174 = v168;
        v8 = v188;
        sub_1B4BC02C4(v174, type metadata accessor for PerfectWeekRingStatusFact);
        sub_1B4BC02C4(v167, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v166, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v165, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v164, type metadata accessor for HKActivitySummaryRepresentable);
        sub_1B4975024(v187, &qword_1EB8A6C98, &unk_1B4D2F3F0);
        sub_1B4975024(v192, &qword_1EB8AA5C8, &qword_1B4D39050);
      }

      goto LABEL_18;
    }

    v147 = v188;
    v191 = v188[137];
    v195 = v188[139];
    v148 = v188[134];
    v149 = v188[130];
    v150 = v188[129];
    v151 = v188[128];
    v152 = v188[115];
    v153 = v188[114];
    v154 = v188[113];
    v160 = v188[112];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE10, &qword_1B4D39068);
    v161 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_1B4D1A800;
    v196 = v162;
    v158 = v162 + v161;
    v159 = v153;
  }

  else
  {
    v147 = v188;
    v191 = v188[137];
    v195 = v188[139];
    v148 = v188[134];
    v149 = v188[130];
    v150 = v188[129];
    v151 = v188[128];
    v152 = v188[115];
    v153 = v188[114];
    v154 = v188[113];
    v155 = v188[112];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE10, &qword_1B4D39068);
    v156 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v157 = swift_allocObject();
    *(v157 + 16) = xmmword_1B4D1A800;
    v196 = v157;
    v158 = v157 + v156;
    v159 = v152;
  }

  sub_1B4BC025C(v159, v158, type metadata accessor for PerfectWeekRingStatusFact);
  sub_1B4BC02C4(v154, type metadata accessor for PerfectWeekRingStatusFact);
  v163 = v153;
  v8 = v147;
  sub_1B4BC02C4(v163, type metadata accessor for PerfectWeekRingStatusFact);
  sub_1B4BC02C4(v152, type metadata accessor for PerfectWeekRingStatusFact);
  sub_1B4BC02C4(v151, type metadata accessor for RingProgressType);
  sub_1B4BC02C4(v150, type metadata accessor for RingProgressType);
  sub_1B4BC02C4(v149, type metadata accessor for RingProgressType);
  sub_1B4BC02C4(v148, type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4975024(v191, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  sub_1B4975024(v195, &qword_1EB8AA5C8, &qword_1B4D39050);
LABEL_18:

  v41 = v8[1];

  return v41(v196);
}

uint64_t sub_1B4BBFECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4BBFF34(uint64_t a1, unsigned __int8 *a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = *(type metadata accessor for WorkoutState(0) + 36);
  v9 = sub_1B4D1777C();
  v10 = *(*(v9 - 8) + 16);
  v24 = v8;
  v25 = a1;
  v10(v6, a1 + v8, v9);
  type metadata accessor for DateRangeDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for RingsPropertiesQuery(0);
  v12 = &v6[v11[5]];
  v13 = MEMORY[0x1E69E7CC0];
  *v12 = MEMORY[0x1E69E7CC0];
  *(v12 + 1) = v13;
  *(v12 + 2) = v13;
  *&v6[v11[6]] = v13;
  *&v6[v11[7]] = &unk_1F2CB97B8;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE18, &qword_1B4D39070);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE20, &qword_1B4D39078);
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v17 = swift_allocObject();
  if (v7)
  {
    *(v17 + 16) = xmmword_1B4D1A800;
    v18 = *(v14 + 48);
    *(v17 + v16) = 0;
    sub_1B4BC025C(v6, v17 + v16 + v18, type metadata accessor for FitnessContextQueryDescriptor);
    v19 = sub_1B4C9720C(v17);
    swift_setDeallocating();
    sub_1B4975024(v17 + v16, &qword_1EB8ABE20, &qword_1B4D39078);
  }

  else
  {
    *(v17 + 16) = xmmword_1B4D1AA70;
    v20 = *(v14 + 48);
    *(v17 + v16) = 0;
    sub_1B4BC025C(v6, v17 + v16 + v20, type metadata accessor for FitnessContextQueryDescriptor);
    v21 = (v17 + v16 + v15);
    v22 = *(v14 + 48);
    *v21 = 1;
    v10(&v21[v22], v25 + v24, v9);
    swift_storeEnumTagMultiPayload();
    v19 = sub_1B4C9720C(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  sub_1B4BC02C4(v6, type metadata accessor for FitnessContextQueryDescriptor);
  return v19;
}

uint64_t sub_1B4BC025C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BC02C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B4BC0348()
{
  result = qword_1EB8ABE28;
  if (!qword_1EB8ABE28)
  {
    type metadata accessor for WorkoutVoiceGreatestElevationGainFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABE28);
  }

  return result;
}

unint64_t sub_1B4BC03A4()
{
  result = qword_1EB8ABE30;
  if (!qword_1EB8ABE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABE30);
  }

  return result;
}

uint64_t sub_1B4BC03FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BC049C, 0, 0);
}

uint64_t sub_1B4BC049C()
{
  v1 = v0[5];
  sub_1B49BFE58(v0[3], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4BA4908;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4BC54B0(v6, v4, v5);
}

unint64_t sub_1B4BC05AC(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor(0);
  v75 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v74 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = v65 - v8;
  v9 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4D1777C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WorkoutState(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49BFE58(a1, v18, type metadata accessor for WorkoutState);
  v19 = sub_1B4CAC70C(v18);
  v20 = *(v19 + 2);
  v21 = 32;
  while (v20)
  {
    v22 = *&v19[v21];
    v21 += 8;
    --v20;
    if (v22 == 10)
    {
      v70 = v4;

      v23 = *(v16 + 36);
      v72 = v13;
      v24 = *(v13 + 16);
      v65[0] = v24;
      v24(v15, &v18[v23], v12);
      v24(v11, v15, v12);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1B4D1A800;
      v26 = *&v18[*(v16 + 24)];
      sub_1B49BFEC0(v18, type metadata accessor for WorkoutState);
      v27 = [v26 effectiveTypeIdentifier];

      *(v25 + 32) = v27;
      v28 = *(v9 + 20);
      v29 = v9;
      v30 = v12;
      v31 = v15;
      v32 = v11;
      v33 = &v11[v28];
      v34 = MEMORY[0x1E69E7CC0];
      *v33 = MEMORY[0x1E69E7CC0];
      *(v33 + 1) = v34;
      *(v33 + 2) = v34;
      *(v33 + 3) = v25;
      *(v33 + 4) = v34;
      *(v33 + 5) = v34;
      *(v32 + *(v29 + 24)) = v34;
      v68 = v29;
      *(v32 + *(v29 + 28)) = &unk_1F2CB9880;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE38, &qword_1B4D390F0);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8ABE40, &qword_1B4D390F8);
      v36 = *(*(v35 - 8) + 72);
      v37 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1B4D1AA70;
      v66 = v38;
      v67 = v35;
      v39 = (v38 + v37);
      v40 = *(v35 + 48);
      *v39 = 0;
      sub_1B49BFE58(v32, &v39[v40], type metadata accessor for WorkoutPropertiesQuery);
      v65[1] = type metadata accessor for FitnessContextQueryDescriptor(0);
      swift_storeEnumTagMultiPayload();
      v41 = &v39[v36];
      *v41 = 1;
      v42 = v76;
      v69 = v31;
      v73 = v30;
      (v65[0])(v76, v31, v30);
      swift_storeEnumTagMultiPayload();
      v43 = v75;
      (*(v75 + 56))(v42, 0, 1, v2);
      v44 = v42;
      v45 = v74;
      sub_1B49BFDE8(v44, v74);
      v46 = *(v43 + 48);
      v47 = v46(v45, 1, v2);
      v71 = v32;
      if (v47 == 1)
      {
        v48 = v70;
        sub_1B49BFE58(v32, v70, type metadata accessor for DateRangeDescriptor);
        if (v46(v45, 1, v2) != 1)
        {
          sub_1B4975024(v45, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v48 = v70;
        sub_1B4993450(v45, v70);
      }

      v55 = &v41[*(v67 + 48)];
      v57 = *v33;
      v56 = *(v33 + 1);
      v58 = *(v33 + 2);
      v59 = *(v33 + 3);
      v60 = *(v33 + 4);
      v61 = *(v33 + 5);
      sub_1B49BFE58(v48, v55, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v48, type metadata accessor for DateRangeDescriptor);
      v62 = v68;
      v63 = (v55 + *(v68 + 20));
      *v63 = v57;
      v63[1] = v56;
      v63[2] = v58;
      v63[3] = v59;
      v63[4] = v60;
      v63[5] = v61;
      *(v55 + *(v62 + 24)) = MEMORY[0x1E69E7CC0];
      *(v55 + *(v62 + 28)) = &unk_1F2CB9880;
      sub_1B4975024(v76, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v64 = sub_1B4C982A0(v66);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v71, type metadata accessor for WorkoutPropertiesQuery);
      (*(v72 + 8))(v69, v73);
      return v64;
    }
  }

  sub_1B49BFEC0(v18, type metadata accessor for WorkoutState);
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v49 = sub_1B4D17F6C();
  __swift_project_value_buffer(v49, qword_1EDC36F00);
  v50 = sub_1B4D17F5C();
  v51 = sub_1B4D1873C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v77 = v53;
    *v52 = 136315138;
    *(v52 + 4) = sub_1B49558AC(0xD000000000000025, 0x80000001B4D62B40, &v77);
    _os_log_impl(&dword_1B4953000, v50, v51, "%s does not support this workout state", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1B8C7DDA0](v53, -1, -1);
    MEMORY[0x1B8C7DDA0](v52, -1, -1);
  }

  return sub_1B4C982A0(MEMORY[0x1E69E7CC0]);
}

uint64_t static FitnessPlusStatisticsPropertyGenerator.from(_:for:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_1B4D1746C();
  v8 = sub_1B4D1880C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v26 = *a2;
  sub_1B4BC1064(a1, &v26, v11);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v21 = 1;
    v22 = v25;
  }

  else
  {
    (*(v12 + 32))(v18, v11, v7);
    (*(v12 + 16))(v15, v18, v7);
    v22 = v25;
    StatisticsPropertyValue.init(measurement:)(v15, a3, v25);
    (*(v12 + 8))(v18, v7);
    v21 = 0;
  }

  v23 = type metadata accessor for StatisticsPropertyValue(0, a3, v19, v20);
  return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
}

uint64_t sub_1B4BC1064@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = *a2;
  if (v14 == 2)
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    (*(v27 + 64))(v26, v27);
    v28 = sub_1B4D1746C();
LABEL_14:
    if (swift_dynamicCast())
    {
      v31 = a4;
      v32 = 0;
    }

    else
    {
      v31 = a4;
      v32 = 1;
    }

    return (*(*(v28 - 8) + 56))(v31, v32, 1, v28);
  }

  if (v14 == 1)
  {
    v21 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v21);
    (*(v22 + 72))(v21, v22);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    if ((*(*(v23 - 8) + 48))(v10, 1, v23) == 1)
    {
      v18 = &qword_1EB8A6CA8;
      v19 = &unk_1B4D1C2B0;
      v20 = v10;
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (!*a2)
  {
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    (*(v16 + 80))(v15, v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1)
    {
      v18 = &qword_1EB8A6CC8;
      v19 = &unk_1B4D464B0;
      v20 = v13;
LABEL_8:
      sub_1B4975024(v20, v18, v19);
      v24 = sub_1B4D1746C();
      return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
    }

LABEL_13:
    v28 = sub_1B4D1746C();
    goto LABEL_14;
  }

  v29 = sub_1B4D1746C();
  v30 = *(*(v29 - 8) + 56);

  return v30(a4, 1, 1, v29);
}

uint64_t sub_1B4BC147C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t MaxPropertyValue.init(_:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B4D1746C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1741C();
  v10 = *(a1 + 1);
  v11 = *(a1 + 2);

  MaxPropertyValue.init(value:identifier:)(v8, v10, v11, a2, a3);
  return sub_1B4BC15BC(a1);
}

uint64_t sub_1B4BC15BC(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MaxPropertyValue.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  sub_1B4BC17C8(&qword_1EB8A6DE0, &protocol conformance descriptor for Apple_Fitness_Intelligence_MaxPropertyValue);
  return sub_1B4D17DAC();
}

void sub_1B4BC16BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 + *(type metadata accessor for MaxPropertyValue(0, a3, a3, a4) + 28));
  v7 = *v5;
  v6 = v5[1];

  a1[1] = v7;
  a1[2] = v6;
  sub_1B4D1746C();
  sub_1B4D1742C();
  *a1 = v8;
}

uint64_t sub_1B4BC17C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FitnessPlusTrainerIdentifiers.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  result = sub_1B4BC188C(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1B4BC188C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FitnessPlusTrainerIdentifiers.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  sub_1B4BC1A48(&qword_1EB8A9560, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC197C(uint64_t *a1, uint64_t a2)
{

  *a1 = a2;
  return result;
}

uint64_t sub_1B4BC1A48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BC1A8C()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  sub_1B4BC1A48(&qword_1EB8A9560, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC1B20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  result = sub_1B4BC188C(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1B4BC1B6C(uint64_t *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

double QueryMetrics.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1B4BC1C24(a1);
  result = v3 + v4;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v3 + v4;
  return result;
}

uint64_t sub_1B4BC1C24(uint64_t a1)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  (*(*(Metrics - 8) + 8))(a1, Metrics);
  return a1;
}

uint64_t QueryMetrics.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  sub_1B4BC1F38(&qword_1EB8A6750, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC1D34(uint64_t result, char a2, double a3, double a4)
{
  *result = a3;
  *(result + 8) = a4;
  *(result + 16) = a2;
  return result;
}

__n128 sub_1B4BC1D40(__n128 *a1)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1B4BC1D54(uint64_t a1)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  MEMORY[0x1EEE9AC00](Metrics);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(v1 + 16);
  v7 = *(v1 + 3);
  v10 = *v1;
  v11 = v5;
  v12 = v7;
  v8 = sub_1B4BC2084();
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BC1F38(&qword_1EB8A6750, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
    Metrics = sub_1B4D17D6C();
    sub_1B4BC1C24(v6);
  }

  return Metrics;
}

double sub_1B4BC1E84@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B25488(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    result = v9;
    *a3 = v7;
    *(a3 + 16) = v6;
    *(a3 + 24) = result;
  }

  return result;
}

uint64_t sub_1B4BC1F38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BC1F7C()
{
  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  sub_1B4BC1F38(&qword_1EB8A6750, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
  return sub_1B4D17DAC();
}

double sub_1B4BC2030@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1B4BC1C24(a1);
  result = v3 + v4;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v3 + v4;
  return result;
}

unint64_t sub_1B4BC2084()
{
  result = qword_1EB8ABEC8;
  if (!qword_1EB8ABEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABEC8);
  }

  return result;
}

FitnessIntelligence::FitnessPlusPropertyKind_optional __swiftcall FitnessPlusPropertyKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FitnessPlusPropertyKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6B726F5774736562;
  v3 = 0x547942746E756F63;
  if (v1 != 4)
  {
    v3 = 0x756F436C61746F74;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (*v0)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

FitnessIntelligence::FitnessPlusMetricProperty_optional __swiftcall FitnessPlusMetricProperty.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FitnessPlusMetricProperty.rawValue.getter()
{
  v1 = 0x736569726F6C6163;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1B4BC2304(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x736569726F6C6163;
  if (v2 != 1)
  {
    v4 = 0x6E6F697461727564;
    v3 = 0xE800000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000001B4D4C140;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1B4BC2368(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x736569726F6C6163;
  v3 = *a1;
  v4 = 0x6E6F697461727564;
  if (v3 == 1)
  {
    v4 = 0x736569726F6C6163;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0x80000001B4D4C140;
  }

  if (*a2 != 1)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x80000001B4D4C140;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4BC2464()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BC250C(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BC25A0(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4BC2664()
{
  result = qword_1EB8ABED0;
  if (!qword_1EB8ABED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABED0);
  }

  return result;
}

unint64_t sub_1B4BC26F8()
{
  result = qword_1EB8ABEE8;
  if (!qword_1EB8ABEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABEE8);
  }

  return result;
}

uint64_t sub_1B4BC2754(uint64_t a1)
{
  sub_1B4D1820C();
}

void sub_1B4BC2880(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000074756FLL;
  v4 = 0x6B726F5774736562;
  v5 = 0xEE0072656E696172;
  v6 = 0x547942746E756F63;
  if (v2 != 4)
  {
    v6 = 0x756F436C61746F74;
    v5 = 0xEA0000000000746ELL;
  }

  if (v2 != 3)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001B4D48B40;
  v8 = 0xD00000000000001ALL;
  v9 = 0x80000001B4D48B80;
  if (v2 != 1)
  {
    v9 = 0x80000001B4D48BA0;
  }

  if (*v1)
  {
    v8 = 0xD000000000000012;
    v7 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1B4BC2968(void *a1)
{
  a1[1] = sub_1B4BC29A0();
  a1[2] = sub_1B4BC29F4();
  result = sub_1B4BC2A48();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4BC29A0()
{
  result = qword_1EB8ABEF0;
  if (!qword_1EB8ABEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABEF0);
  }

  return result;
}

unint64_t sub_1B4BC29F4()
{
  result = qword_1EB8ABEF8;
  if (!qword_1EB8ABEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABEF8);
  }

  return result;
}

unint64_t sub_1B4BC2A48()
{
  result = qword_1EB8ABF00;
  if (!qword_1EB8ABF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF00);
  }

  return result;
}

uint64_t sub_1B4BC2B00()
{
  *(&v22 + 1) = &type metadata for FitnessIntelligenceFeatures;
  v23 = sub_1B4BC2EE4();
  v0 = 1;
  LOBYTE(v21) = 1;
  v1 = sub_1B4D179FC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  if (v1)
  {
    return v0;
  }

  if (qword_1EB8A6488 != -1)
  {
    swift_once();
  }

  if (byte_1EB8AC690 != 1)
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1B4D1817C();
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B4D17F6C();
    __swift_project_value_buffer(v8, qword_1EDC3CED0);
    v9 = sub_1B4D17F5C();
    v10 = sub_1B4D1871C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B4953000, v9, v10, "Failed to create notification settings user defaults", v11, 2u);
      MEMORY[0x1B8C7DDA0](v11, -1, -1);
    }

    return 0;
  }

  v5 = sub_1B4D1817C();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_1B4D188AC();
    swift_unknownObjectRelease();
    sub_1B4BC2F38(&v21);
    v7 = sub_1B4D1817C();
    v0 = [v4 BOOLForKey_];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    sub_1B4BC2F38(&v21);
    *&v21 = 0;
    MEMORY[0x1B8C7DDC0](&v21, 8);
    v13 = v21;
    v0 = (v21 & 0x20000) == 0;
    v14 = sub_1B4D1817C();
    [v4 setBool:v0 forKey:v14];

    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v15 = sub_1B4D17F6C();
    __swift_project_value_buffer(v15, qword_1EDC3CED0);
    v16 = sub_1B4D17F5C();
    v17 = sub_1B4D1873C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = (*&v13 & 0x20000) == 0;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v21 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1B49558AC(0xD000000000000013, 0x80000001B4D62B70, &v21);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v18;
      _os_log_impl(&dword_1B4953000, v16, v17, "No existing value for %s. Randomly set to %{BOOL}d and saved.", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1B8C7DDA0](v20, -1, -1);
      MEMORY[0x1B8C7DDA0](v19, -1, -1);
    }
  }

  return v0;
}

unint64_t sub_1B4BC2EE4()
{
  result = qword_1EB8ABF18;
  if (!qword_1EB8ABF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF18);
  }

  return result;
}

uint64_t sub_1B4BC2F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4BC2FB4()
{
  result = qword_1EB8ABF20;
  if (!qword_1EB8ABF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF20);
  }

  return result;
}

unint64_t sub_1B4BC3008(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutState(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4992854(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD18, &qword_1B4D394C0);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD20, &unk_1B4D388B0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B4D1A800;
  v9 = *(v3 + 44);
  v10 = sub_1B4D1777C();
  (*(*(v10 - 8) + 16))(v8 + v7, &v5[v9], v10);
  sub_1B49AA7C0(v5);
  type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v11 = sub_1B4C96AD0(v8);
  swift_setDeallocating();
  sub_1B4975024(v8 + v7, &qword_1EB8ABD20, &unk_1B4D388B0);
  swift_deallocClassInstance();
  return v11;
}

uint64_t sub_1B4BC31C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BC3268, 0, 0);
}

uint64_t sub_1B4BC3268()
{
  v1 = v0[5];
  sub_1B4992854(v0[3], v1);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4BA4908;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4BB82E0(v6, v4, v5);
}

uint64_t FitnessPlusProperties.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v55 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v76 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v55 - v12;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  v16 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v79 = (&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v55 - v20;
  v21 = *(a1 + 16);
  v22 = *(v21 + 16);
  if (v22)
  {
    v56 = a2;
    v57 = v19;
    v89 = MEMORY[0x1E69E7CC0];
    v58 = v22;
    v65 = v21;
    result = sub_1B4BCED1C(0, v22, 0);
    v24 = 0;
    v25 = v65;
    v64 = v65 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v26 = v89;
    v63 = (v14 + 48);
    v61 = (v76 + 12);
    v60 = v8;
    v76 = v13;
    v62 = v10;
    v59 = v16;
    while (v24 < *(v25 + 16))
    {
      v27 = v8;
      v75 = v26;
      v28 = v78;
      sub_1B4BC408C(v64 + *(v16 + 72) * v24, v78);
      v29 = v28;
      v30 = v79;
      sub_1B4BC408C(v29, v79);
      v31 = v30[1];
      v74 = *v30;
      v73 = v31;
      v32 = v67;
      sub_1B4974FBC(v30 + *(v77 + 28), v67, &qword_1EB8A7DC8, &qword_1B4D202B8);
      v33 = *v63;
      if ((*v63)(v32, 1, v13) == 1)
      {
        v34 = v66;
        sub_1B4D17BBC();
        v35 = (v34 + v13[5]);
        *v35 = 0;
        v35[1] = 0;
        v36 = (v34 + v13[6]);
        *v36 = 0;
        v36[1] = 0;
        v37 = v34 + v13[7];
        *v37 = 0;
        *(v37 + 8) = 1;
        v38 = (v34 + v13[8]);
        *v38 = 0;
        v38[1] = 0;
        v39 = v76[9];
        v40 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
        (*(*(v40 - 8) + 56))(v34 + v39, 1, 1, v40);
        if (v33(v32, 1, v76) != 1)
        {
          sub_1B4975024(v32, &qword_1EB8A7DC8, &qword_1B4D202B8);
        }
      }

      else
      {
        v34 = v66;
        sub_1B4BC4228(v32, v66, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      }

      FitnessPlusPropertyDimensions.init(_:)(v34, &v80);
      if (v2)
      {
        sub_1B4BC40F0(v79, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
        sub_1B4BC40F0(v78, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
        sub_1B4BC40F0(v57, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      }

      v72 = v80;
      v71 = BYTE1(v80);
      v68 = *(&v80 + 1);
      v70 = v81;
      v69 = v82;
      v41 = v83;
      sub_1B4974FBC(v79 + *(v77 + 32), v7, &qword_1EB8A7DB8, &unk_1B4D27B10);
      v42 = *v61;
      if ((*v61)(v7, 1, v8) == 1)
      {
        v43 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
        v44 = v62;
        (*(*(v43 - 8) + 56))(v62, 1, 1, v43);
        sub_1B4D17BBC();
        if (v42(v7, 1, v27) != 1)
        {
          sub_1B4975024(v7, &qword_1EB8A7DB8, &unk_1B4D27B10);
        }
      }

      else
      {
        v44 = v62;
        sub_1B4BC4228(v7, v62, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
      }

      static FitnessPlusPropertySerialization.from(_:)(v44, &v80);
      sub_1B4BC40F0(v79, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
      sub_1B4BC40F0(v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
      sub_1B496F398(&v80, v87);
      *&v84 = v74;
      *(&v84 + 1) = v73;
      LOBYTE(v85) = v72;
      BYTE1(v85) = v71;
      *(&v85 + 1) = v68;
      LOBYTE(v86) = v70;
      BYTE1(v86) = v69;
      *(&v86 + 1) = v41;
      result = sub_1B4BC40F0(v78, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
      v26 = v75;
      v89 = v75;
      v46 = *(v75 + 16);
      v45 = *(v75 + 24);
      if (v46 >= v45 >> 1)
      {
        result = sub_1B4BCED1C((v45 > 1), v46 + 1, 1);
        v26 = v89;
      }

      ++v24;
      *(v26 + 16) = v46 + 1;
      v47 = v26 + 88 * v46;
      v48 = v85;
      *(v47 + 32) = v84;
      *(v47 + 48) = v48;
      v49 = v86;
      v50 = v87[0];
      v51 = v87[1];
      *(v47 + 112) = v88;
      *(v47 + 80) = v50;
      *(v47 + 96) = v51;
      *(v47 + 64) = v49;
      v8 = v60;
      v13 = v76;
      v16 = v59;
      v25 = v65;
      if (v58 == v24)
      {
        v52 = v26;
        v19 = v57;
        a2 = v56;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v53 = *v19;
    v54 = v19[1];
    result = sub_1B4BC40F0(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    *a2 = v53;
    a2[1] = v54;
    a2[2] = v52;
  }

  return result;
}

uint64_t FitnessPlusProperties.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  sub_1B4BC41E0(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC3CA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  *a1 = a2;
  a1[1] = a3;
  v29 = a3;
  v12 = *(a4 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v25 = a1;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF6FC(0, v12, 0);
    v13 = v46;
    v14 = a4 + 32;
    while (1)
    {
      v31 = v5;
      v30 = v12;
      sub_1B4B9C8D4(v14, v39);
      v15 = v40;
      v16 = v41;
      v17 = v42;
      v18 = v43;
      v19 = v44;
      v20 = sub_1B497558C(&v45, &v38);
      v32[0] = v28;
      v32[1] = v29;
      v33 = v15;
      v34 = v16;
      v35 = v17;
      v36 = v18;
      v37 = v19;
      MEMORY[0x1EEE9AC00](v20);
      *(&v25 - 2) = v32;
      sub_1B4BC41E0(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);

      v21 = v31;
      sub_1B4D17DAC();
      v5 = v21;
      if (v21)
      {
        break;
      }

      sub_1B4B9C930(v39);
      sub_1B4B9C930(v32);
      v46 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B4BCF6FC((v22 > 1), v23 + 1, 1);
        v13 = v46;
      }

      *(v13 + 16) = v23 + 1;
      sub_1B4BC4228(v11, v13 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
      v14 += 88;
      v12 = v30 - 1;
      if (v30 == 1)
      {
        a1 = v25;
        goto LABEL_9;
      }
    }

    sub_1B4B9C930(v39);
    sub_1B4B9C930(v32);
  }

  else
  {
LABEL_9:

    a1[2] = v13;
  }

  return result;
}

uint64_t sub_1B4BC3FBC()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  sub_1B4BC41E0(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC408C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BC40F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BC41E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4BC4228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BC42A8(char a1)
{
  result = 0x6B726F5774736542;
  switch(a1)
  {
    case 1:
      v3 = 1735290700;
      goto LABEL_21;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 7:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x75444B3574736542;
      break;
    case 5:
      result = 0x444B303174736542;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 8:
      v3 = 1953718598;
LABEL_21:
      result = v3 | 0x74736500000000;
      break;
    case 9:
      result = 0x726F577473726946;
      break;
    case 10:
      result = 0x74756F6B726F5737;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x5265766F4D77654ELL;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x74636566726550;
      break;
    case 17:
    case 18:
      result = 0xD00000000000001CLL;
      break;
    case 19:
      result = 0xD000000000000023;
      break;
    case 20:
      result = 0xD000000000000020;
      break;
    case 21:
      result = 0xD000000000000028;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t static WorkoutVoiceGreatestElevationGainFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BC4C04(v3, v1, v2);
}

uint64_t static WorkoutVoiceGreatestElevationGainFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4BC54B0(a1, a3, a4);
}

uint64_t sub_1B4BC4670()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  __swift_allocate_value_buffer(v0, qword_1EB8F3B10);
  __swift_project_value_buffer(v0, qword_1EB8F3B10);
  v1 = [objc_opt_self() feet];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  return sub_1B4D1741C();
}

uint64_t WorkoutVoiceGreatestElevationGainFact.QueryIdentifier.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutVoiceGreatestElevationGainFact.QueryIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1B4BC47C4@<X0>(char *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

id WorkoutVoiceGreatestElevationGainFact.makePrompt(promptFormatter:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - v4;
  v6 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  FIUnitManager.userMeasurementUnitForElevation()(v7);
  v9 = v8;
  sub_1B4D1745C();
  v10 = sub_1B4D12160();
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v11 = sub_1B4D1878C();
  v13 = v12;

  (*(v3 + 8))(v5, v2);
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v15 = result;
    v16 = sub_1B4D1818C();
    v18 = v17;

    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD00000000000002ELL, 0x80000001B4D62D80);
    MEMORY[0x1B8C7C620](v16, v18);

    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE900000000000020);
    v19 = *(v1 + *(v6 + 24));
    v20 = 0xE800000000000000;
    v21 = 0x7961642073696874;
    v22 = 0xEA00000000006874;
    v23 = 0x6E6F6D2073696874;
    v24 = 0xE900000000000072;
    v25 = 0x6165792073696874;
    if (v19 != 3)
    {
      v25 = 1919252069;
      v24 = 0xE400000000000000;
    }

    if (v19 != 2)
    {
      v23 = v25;
      v22 = v24;
    }

    if (*(v1 + *(v6 + 24)))
    {
      v21 = 0x6565772073696874;
      v20 = 0xE90000000000006BLL;
    }

    if (*(v1 + *(v6 + 24)) <= 1u)
    {
      v26 = v21;
    }

    else
    {
      v26 = v23;
    }

    if (*(v1 + *(v6 + 24)) <= 1u)
    {
      v27 = v20;
    }

    else
    {
      v27 = v22;
    }

    MEMORY[0x1B8C7C620](v26, v27);

    MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D624B0);
    MEMORY[0x1B8C7C620](v11, v13);

    return v28[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4BC4B00(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BC4C04(v3, v1, v2);
}

uint64_t sub_1B4BC4B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DD034;

  return sub_1B4BC54B0(a1, a3, a4);
}

unint64_t sub_1B4BC4C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor(0);
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v81 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = v70 - v12;
  v84 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v84);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4D1777C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v23, a1, a2, v21);
  v24 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(v23, v24, a2, a3);
  v26 = *(v25 + 16);
  v27 = 32;
  while (v26)
  {
    v28 = *(v25 + v27);
    v27 += 8;
    --v26;
    if (v28 == 10)
    {
      v73 = v8;
      v79 = v19;

      v29 = v15;
      v30 = v18;
      v31 = v23;
      (*(a3 + 80))(a2, a3);
      v76 = v16;
      v70[0] = *(v16 + 16);
      (v70[0])(v14, v30, v29);
      v32 = v83;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1B4D1A800;
      v34 = *(a3 + 56);
      v78 = v31;
      v80 = a2;
      v35 = v34(a2, a3);
      v36 = [v35 effectiveTypeIdentifier];

      *(v33 + 32) = v36;
      v37 = v84;
      v38 = &v14[*(v84 + 20)];
      v39 = MEMORY[0x1E69E7CC0];
      *v38 = MEMORY[0x1E69E7CC0];
      *(v38 + 1) = v39;
      *(v38 + 2) = v39;
      *(v38 + 3) = v33;
      *(v38 + 4) = v39;
      *(v38 + 5) = v39;
      *&v14[*(v37 + 24)] = v39;
      *&v14[*(v37 + 28)] = &unk_1F2CBD0F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE38, &qword_1B4D390F0);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8ABE40, &qword_1B4D390F8);
      v41 = *(*(v40 - 8) + 72);
      v42 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1B4D1AA70;
      v71 = v43;
      v72 = v40;
      v44 = (v43 + v42);
      v45 = *(v40 + 48);
      *v44 = 0;
      sub_1B49BFE58(v14, &v44[v45], type metadata accessor for WorkoutPropertiesQuery);
      v70[1] = type metadata accessor for FitnessContextQueryDescriptor(0);
      swift_storeEnumTagMultiPayload();
      v46 = &v44[v41];
      *v46 = 1;
      v47 = v85;
      v74 = v30;
      v77 = v29;
      (v70[0])(v85, v30, v29);
      swift_storeEnumTagMultiPayload();
      v48 = v82;
      (*(v82 + 56))(v47, 0, 1, v32);
      v49 = v47;
      v50 = v81;
      sub_1B4974FBC(v49, v81, &qword_1EB8A67A8, &qword_1B4D1E060);
      v51 = *(v48 + 48);
      v52 = v51(v50, 1, v32);
      v75 = v14;
      if (v52 == 1)
      {
        v53 = v73;
        sub_1B49BFE58(v14, v73, type metadata accessor for DateRangeDescriptor);
        if (v51(v50, 1, v32) != 1)
        {
          sub_1B4975024(v50, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v53 = v73;
        sub_1B4BC6CC4(v50, v73, type metadata accessor for DateRangeDescriptor);
      }

      v60 = &v46[*(v72 + 48)];
      v62 = *v38;
      v61 = *(v38 + 1);
      v63 = *(v38 + 2);
      v64 = *(v38 + 3);
      v65 = *(v38 + 4);
      v66 = *(v38 + 5);
      sub_1B49BFE58(v53, v60, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v53, type metadata accessor for DateRangeDescriptor);
      v67 = v84;
      v68 = (v60 + *(v84 + 20));
      *v68 = v62;
      v68[1] = v61;
      v68[2] = v63;
      v68[3] = v64;
      v68[4] = v65;
      v68[5] = v66;
      *(v60 + *(v67 + 24)) = MEMORY[0x1E69E7CC0];
      *(v60 + *(v67 + 28)) = &unk_1F2CBD0F0;
      sub_1B4975024(v85, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v59 = sub_1B4C982A0(v71);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v75, type metadata accessor for WorkoutPropertiesQuery);
      (*(v76 + 8))(v74, v77);
      v19 = v79;
      a2 = v80;
      v23 = v78;
      goto LABEL_14;
    }
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v54 = sub_1B4D17F6C();
  __swift_project_value_buffer(v54, qword_1EDC36F00);
  v55 = sub_1B4D17F5C();
  v56 = sub_1B4D1873C();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v86 = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_1B49558AC(0xD000000000000025, 0x80000001B4D62B40, &v86);
    _os_log_impl(&dword_1B4953000, v55, v56, "%s does not support this workout state", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x1B8C7DDA0](v58, -1, -1);
    MEMORY[0x1B8C7DDA0](v57, -1, -1);
  }

  v59 = sub_1B4C982A0(MEMORY[0x1E69E7CC0]);
LABEL_14:
  (*(v19 + 8))(v23, a2);
  return v59;
}

uint64_t sub_1B4BC54B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[321] = a3;
  v3[320] = a2;
  v3[319] = a1;
  v4 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact(0);
  v3[322] = v4;
  v3[323] = *(v4 - 8);
  v3[324] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABF50, &qword_1B4D395F8);
  v3[325] = v5;
  v3[326] = *(v5 - 8);
  v3[327] = swift_task_alloc();
  v3[328] = swift_task_alloc();
  v6 = sub_1B4D1777C();
  v3[329] = v6;
  v3[330] = *(v6 - 8);
  v3[331] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v3[332] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3[333] = v7;
  v3[334] = *(v7 - 8);
  v3[335] = swift_task_alloc();
  v3[336] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v3[337] = swift_task_alloc();
  v3[338] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutState(0);
  v3[339] = v8;
  v3[340] = *(v8 - 8);
  v3[341] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BC5794, 0, 0);
}

uint64_t sub_1B4BC5794()
{
  v119 = v0;
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2712);
  v3 = *(v0 + 2704);
  sub_1B4974FBC(*(v0 + 2560), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1B4975024(*(v0 + 2704), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_15:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v30 = sub_1B4D17F6C();
    __swift_project_value_buffer(v30, qword_1EDC36F00);
    v31 = sub_1B4D17F5C();
    v32 = sub_1B4D1873C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      __dst[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1B49558AC(0xD000000000000025, 0x80000001B4D62B40, __dst);
      _os_log_impl(&dword_1B4953000, v31, v32, "Context or snapshots don't exist for %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1B8C7DDA0](v34, -1, -1);
      MEMORY[0x1B8C7DDA0](v33, -1, -1);
    }

LABEL_20:
    v116 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v115 = v4;
  v5 = *(v0 + 2552);
  sub_1B4BC6CC4(*(v0 + 2704), *(v0 + 2728), type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 2536) = &type metadata for WorkoutVoiceGreatestElevationGainFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABF58, &qword_1B4D39600);
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v7 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = *(v0 + 2504);
  if (!v9)
  {
    v22 = *(v0 + 2728);
LABEL_14:
    sub_1B49BFEC0(v22, type metadata accessor for WorkoutState);
    goto LABEL_15;
  }

  v10 = *(v0 + 2488);
  v114 = *(v0 + 2496);
  v12 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2552), v12);
  *(v0 + 2544) = &type metadata for WorkoutVoiceGreatestElevationGainFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v13;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D4BED0);

  (*(v11 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v12, v11);

  v14 = *(v0 + 2528);
  v15 = *(v0 + 2728);
  if (!v14)
  {
    sub_1B49BFEC0(v15, type metadata accessor for WorkoutState);

    goto LABEL_15;
  }

  v16 = *(v0 + 2512);
  v17 = *(v0 + 2520);
  v18 = *(v0 + 2672);
  v19 = *(v0 + 2664);
  v20 = *(v0 + 2656);
  sub_1B4974FBC(v15 + *(*(v0 + 2712) + 104), v20, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v18 + 48))(v20, 1, v19) == 1)
  {
    v21 = *(v0 + 2656);
    sub_1B49BFEC0(*(v0 + 2728), type metadata accessor for WorkoutState);

    sub_1B4975024(v21, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    goto LABEL_15;
  }

  v112 = v17;
  v113 = v16;
  (*(*(v0 + 2672) + 32))(*(v0 + 2688), *(v0 + 2656), *(v0 + 2664));
  v23 = [objc_opt_self() feet];
  sub_1B4D1745C();

  if (qword_1EB8A6448 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 2680);
  v25 = *(v0 + 2672);
  v26 = *(v0 + 2664);
  __swift_project_value_buffer(v26, qword_1EB8F3B10);
  sub_1B49A2254();
  v27 = sub_1B4D1810C();
  v28 = *(v25 + 8);
  v28(v24, v26);
  if ((v27 & 1) == 0)
  {
    v29 = *(v0 + 2728);
    v28(*(v0 + 2688), *(v0 + 2664));

    v22 = v29;
    goto LABEL_14;
  }

  *(v0 + 2376) = 0u;
  *(v0 + 2392) = 0u;
  *(v0 + 2360) = 0u;
  sub_1B4CE3B10((v0 + 2360), v14, __dst);
  v111 = v28;
  if (LOBYTE(__dst[1]))
  {
    v37 = 0;
  }

  else
  {
    v37 = __dst[0];
  }

  sub_1B4CE3B10((v0 + 2360), v9, __dst);
  if (LOBYTE(__dst[1]))
  {
    v38 = 0;
  }

  else
  {
    v38 = __dst[0];
  }

  v39 = MEMORY[0x1E69E7CC0];
  if (v37 >= 20)
  {
    v39 = sub_1B4A1E07C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    if (v41 >= v40 >> 1)
    {
      v39 = sub_1B4A1E07C((v40 > 1), v41 + 1, 1, v39);
    }

    *(v39 + 2) = v41 + 1;
    v39[v41 + 32] = 4;
  }

  if (v38 >= 10)
  {
    v42 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_1B4A1E07C(0, *(v42 + 2) + 1, 1, v42);
    }

    v43 = v42;
    v45 = *(v42 + 2);
    v44 = *(v42 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_1B4A1E07C((v44 > 1), v45 + 1, 1, v42);
    }

    v110 = v43;
    *(v43 + 2) = v45 + 1;
    v43[v45 + 32] = 3;
  }

  else
  {
    if (!*(v39 + 2))
    {

      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v74 = sub_1B4D17F6C();
      __swift_project_value_buffer(v74, qword_1EDC36F00);
      v75 = sub_1B4D17F5C();
      v76 = sub_1B4D1873C();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        __dst[0] = v78;
        *v77 = 136315650;
        *(v77 + 4) = sub_1B49558AC(0xD000000000000025, 0x80000001B4D62B40, __dst);
        *(v77 + 12) = 2048;
        *(v77 + 14) = v37;
        *(v77 + 22) = 2048;
        *(v77 + 24) = v38;
        _os_log_impl(&dword_1B4953000, v75, v76, "didn't meet min workouts requirement for %s. Number for ever %ld, this year %ld", v77, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        MEMORY[0x1B8C7DDA0](v78, -1, -1);
        MEMORY[0x1B8C7DDA0](v77, -1, -1);
      }

      v79 = *(v0 + 2728);
      v111(*(v0 + 2688), *(v0 + 2664));
      sub_1B49BFEC0(v79, type metadata accessor for WorkoutState);
      goto LABEL_20;
    }

    v110 = v39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1B4D1A800;
  *(v46 + 32) = sub_1B4D1779C();
  v104 = v46 + 32;
  v109 = v46;
  *(v46 + 40) = v47;
  sub_1B4D1770C();
  v48 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v107 = *(v0 + 2712);
  v108 = *(v0 + 2728);
  v49 = *(v0 + 2640);
  v105 = *(v0 + 2632);
  v106 = *(v0 + 2648);
  v50 = sub_1B4D1796C();
  __swift_project_value_buffer(v50, qword_1EDC3CE48);
  v51 = sub_1B4D178CC();
  v52 = _HKCacheIndexFromDate();

  (*(v49 + 8))(v106, v105);
  sub_1B496F4FC((v0 + 2232));
  *(v0 + 2104) = v52;
  *(v0 + 2112) = v113;
  *(v0 + 2120) = v112;
  *(v0 + 2128) = v14;
  *(v0 + 2136) = v10;
  *(v0 + 2144) = v114;
  *(v0 + 2152) = v9;
  *(v0 + 2160) = v52;
  *(v0 + 2168) = v52;
  v53 = MEMORY[0x1E69E7CC0];
  *(v0 + 2176) = MEMORY[0x1E69E7CC0];
  *(v0 + 2184) = v52;
  *(v0 + 2192) = v52;
  *(v0 + 2200) = v53;
  *(v0 + 2208) = v52;
  *(v0 + 2216) = v52;
  *(v0 + 2224) = v53;
  nullsub_1();
  sub_1B496F4FC((v0 + 1976));
  v54 = *(v0 + 2056);
  *(v0 + 1128) = *(v0 + 2040);
  *(v0 + 1144) = v54;
  v55 = *(v0 + 2088);
  *(v0 + 1160) = *(v0 + 2072);
  *(v0 + 1176) = v55;
  v56 = *(v0 + 1992);
  *(v0 + 1064) = *(v0 + 1976);
  *(v0 + 1080) = v56;
  v57 = *(v0 + 2024);
  *(v0 + 1096) = *(v0 + 2008);
  *(v0 + 1112) = v57;
  v58 = *(v0 + 2232);
  v59 = *(v0 + 2248);
  v60 = *(v0 + 2280);
  *(v0 + 840) = *(v0 + 2264);
  *(v0 + 856) = v60;
  *(v0 + 808) = v58;
  *(v0 + 824) = v59;
  v61 = *(v0 + 2296);
  v62 = *(v0 + 2312);
  v63 = *(v0 + 2344);
  *(v0 + 904) = *(v0 + 2328);
  *(v0 + 920) = v63;
  *(v0 + 872) = v61;
  *(v0 + 888) = v62;
  v64 = *(v0 + 2104);
  v65 = *(v0 + 2120);
  v66 = *(v0 + 2152);
  *(v0 + 968) = *(v0 + 2136);
  *(v0 + 984) = v66;
  *(v0 + 936) = v64;
  *(v0 + 952) = v65;
  v67 = *(v0 + 2168);
  v68 = *(v0 + 2184);
  v69 = *(v0 + 2216);
  *(v0 + 1032) = *(v0 + 2200);
  *(v0 + 1048) = v69;
  *(v0 + 1000) = v67;
  *(v0 + 1016) = v68;
  *(v0 + 800) = v52;
  *(v0 + 2432) = v107;
  *(v0 + 2440) = &protocol witness table for WorkoutState;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2408));
  sub_1B49BFE58(v108, boxed_opaque_existential_1, type metadata accessor for WorkoutState);
  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v0 + 2408, __dst, __src);
  v71 = *(v0 + 2712);
  v72 = *(v0 + 2696);
  v73 = *(v0 + 2568);
  sub_1B4975024(v0 + 2408, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 408), __src, 0x188uLL);
  sub_1B4974FBC(v73, v72, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if (v115(v72, 1, v71) == 1)
  {
    sub_1B4975024(*(v0 + 2696), &qword_1EB8A6A98, &unk_1B4D1CBE0);
    *(v0 + 2448) = 0u;
    *(v0 + 2464) = 0u;
    *(v0 + 2480) = 0;
  }

  else
  {
    v80 = *(v0 + 2696);
    *(v0 + 2472) = *(v0 + 2712);
    *(v0 + 2480) = &protocol witness table for WorkoutState;
    v81 = __swift_allocate_boxed_opaque_existential_1((v0 + 2448));
    sub_1B4BC6CC4(v80, v81, type metadata accessor for WorkoutState);
  }

  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v0 + 2448, __dst, __src);
  v82 = *(v0 + 2728);
  v83 = *(v0 + 2712);
  sub_1B4B68220(v0 + 800);
  sub_1B4975024(v0 + 2448, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 1584), __src, 0x188uLL);
  v84 = [*(v82 + *(v83 + 24)) effectiveTypeIdentifier];
  memcpy((v0 + 1192), (v0 + 1584), 0x188uLL);
  nullsub_1();
  memcpy((v0 + 16), (v0 + 1192), 0x188uLL);
  v85 = vdupq_n_s64(v84);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8B20, v85), vceqq_s64(unk_1F2CB8B30, v85)))) & 1) != 0 || qword_1F2CB8B40 == v84 || qword_1F2CB8B48 == v84)
  {
    v89 = *(v0 + 2608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABF60, &qword_1B4D39608);
    v90 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v91 = swift_allocObject();
    sub_1B4C90D6C(v109, v110, v84, 18, (v0 + 408), (v0 + 16), (v91 + v90));
    v92 = *(v0 + 2624);
    v93 = *(v0 + 2616);
    v94 = *(v0 + 2584);
    v95 = *(v0 + 2576);

    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);

    sub_1B4974FBC(v91 + v90, v92, &qword_1EB8ABF50, &qword_1B4D395F8);
    sub_1B4BC6C54(v92, v93);
    v96 = (*(v94 + 48))(v93, 1, v95);
    v97 = *(v0 + 2616);
    if (v96 == 1)
    {
      sub_1B4975024(v97, &qword_1EB8ABF50, &qword_1B4D395F8);
      v88 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1B4BC6CC4(v97, *(v0 + 2592), type metadata accessor for WorkoutVoiceGreatestElevationGainFact);
      v98 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_1B4A1E1D4(0, v98[2] + 1, 1, v98);
      }

      v100 = v98[2];
      v99 = v98[3];
      v101 = v98;
      if (v100 >= v99 >> 1)
      {
        v101 = sub_1B4A1E1D4((v99 > 1), v100 + 1, 1, v98);
      }

      v102 = *(v0 + 2592);
      v103 = *(v0 + 2584);
      v101[2] = v100 + 1;
      v88 = v101;
      sub_1B4BC6CC4(v102, v101 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v100, type metadata accessor for WorkoutVoiceGreatestElevationGainFact);
    }

    v111(*(v0 + 2688), *(v0 + 2664));
    swift_setDeallocating();
    sub_1B4975024(v91 + v90, &qword_1EB8ABF50, &qword_1B4D395F8);
    swift_deallocClassInstance();
  }

  else
  {
    v86 = *(v0 + 2688);
    v87 = *(v0 + 2664);
    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);

    swift_setDeallocating();
    sub_1B497CBA8(v104);
    swift_deallocClassInstance();
    v111(v86, v87);
    v88 = MEMORY[0x1E69E7CC0];
  }

  v116 = v88;
  sub_1B49BFEC0(*(v0 + 2728), type metadata accessor for WorkoutState);
LABEL_21:

  v35 = *(v0 + 8);

  return v35(v116);
}

unint64_t sub_1B4BC6A68()
{
  result = qword_1EB8ABF28;
  if (!qword_1EB8ABF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF28);
  }

  return result;
}

unint64_t sub_1B4BC6ABC(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BC6AEC();
  result = sub_1B4BC6B40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BC6AEC()
{
  result = qword_1EB8ABF30;
  if (!qword_1EB8ABF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF30);
  }

  return result;
}

unint64_t sub_1B4BC6B40()
{
  result = qword_1EB8ABF38;
  if (!qword_1EB8ABF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF38);
  }

  return result;
}

uint64_t sub_1B4BC6B98(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BC6C00(&qword_1EB8ABF40, &protocol conformance descriptor for WorkoutVoiceGreatestElevationGainFact);
  result = sub_1B4BC6C00(&qword_1EB8ABF48, &protocol conformance descriptor for WorkoutVoiceGreatestElevationGainFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4BC6C00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutVoiceGreatestElevationGainFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BC6C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABF50, &qword_1B4D395F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BC6CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t WorkoutVoiceTranscript.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    v22[0] = a2;
    v22[1] = v2;
    v23 = a1;
    v27 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCEFBC(0, v10, 0);
    v12 = 0;
    v13 = v27;
    v14 = *(v6 + 80);
    v25 = v6;
    v26 = v9 + ((v14 + 32) & ~v14);
    v24 = v9;
    while (v12 < *(v9 + 16))
    {
      sub_1B4BC756C(v26 + *(v6 + 72) * v12, v8);
      v15 = sub_1B4D18B1C();
      if (v15)
      {
        if (v15 != 1)
        {
          sub_1B4BC75D0();
          swift_allocError();
          swift_willThrow();
          sub_1B4BC7624(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
          sub_1B4BC7624(v23, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
        }

        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v8 + 2);
      v18 = *(v8 + 3);

      result = sub_1B4BC7624(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
      v27 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1B4BCEFBC((v19 > 1), v20 + 1, 1);
        v13 = v27;
      }

      *(v13 + 16) = v20 + 1;
      v21 = v13 + 24 * v20;
      *(v21 + 32) = v16;
      ++v12;
      *(v21 + 40) = v17;
      *(v21 + 48) = v18;
      v9 = v24;
      v6 = v25;
      if (v10 == v12)
      {
        result = sub_1B4BC7624(v23, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
        *v22[0] = v13;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4BC7624(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
    *a2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t WorkoutVoiceTranscript.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript(0);
  sub_1B4BC780C(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC7078(void *a1, uint64_t a2)
{
  v20 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  v4 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v18 = a1;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF71C(0, v7, 0);
    v8 = v21;
    v9 = sub_1B4BC780C(&qword_1EB8A8828, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);
    v19 = v9;
    v10 = (a2 + 48);
    do
    {
      v11 = *v10;
      MEMORY[0x1EEE9AC00](v9);
      *(&v17 - 32) = v12;
      *(&v17 - 3) = v13;
      *(&v17 - 2) = v11;

      sub_1B4D17DAC();

      v21 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B4BCF71C((v14 > 1), v15 + 1, 1);
        v8 = v21;
      }

      *(v8 + 16) = v15 + 1;
      v9 = sub_1B4BC7854(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15);
      v10 += 3;
      --v7;
    }

    while (v7);
    a1 = v18;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_1B4BC72A0(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = 1919251317;
  }

  else
  {
    v7 = 0x6E61747369737361;
  }

  if (a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE900000000000074;
  }

  *a1 = v7;
  a1[1] = v8;

  a1[2] = a3;
  a1[3] = a4;
  return result;
}

uint64_t *sub_1B4BC7334(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v7 = sub_1B4BC7798();
  v8 = &v11;
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4BC780C(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
    v8 = sub_1B4D17D6C();
    sub_1B4BC7624(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
  }

  return v8;
}

uint64_t sub_1B4BC7478@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B256C4(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4BC74AC()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript(0);
  sub_1B4BC780C(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC756C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4BC75D0()
{
  result = qword_1EB8ABF68;
  if (!qword_1EB8ABF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF68);
  }

  return result;
}

uint64_t sub_1B4BC7624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B4BC7744()
{
  result = qword_1EB8ABF70;
  if (!qword_1EB8ABF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF70);
  }

  return result;
}

unint64_t sub_1B4BC7798()
{
  result = qword_1EB8ABF78;
  if (!qword_1EB8ABF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF78);
  }

  return result;
}

uint64_t sub_1B4BC780C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4BC7854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t static WorkoutVoiceFastestRecordFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BC8C78(v3, v1, v2);
}

uint64_t static WorkoutVoiceFastestRecordFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4BC9510(a1, a3, a4, v9);
}

void sub_1B4BC79D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4D1742C();
  v2 = v1;
  if (v1 >= 1.0)
  {
    v4 = [*(v0 + 16) numberFormatter];
    v5 = v4;
    if (v2 >= 100.0)
    {
      if (v4)
      {
        [v4 setMaximumFractionDigits_];
        goto LABEL_9;
      }

LABEL_14:
      __break(1u);
      return;
    }

    if (v4)
    {
      [v4 setMaximumFractionDigits_];
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = [*(v0 + 16) numberFormatter];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v3;
  [v3 setMaximumFractionDigits_];
LABEL_9:
}

uint64_t WorkoutVoiceFastestRecordFact.QueryIdentifier.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutVoiceFastestRecordFact.QueryIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1B4BC7B7C@<X0>(char *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

id WorkoutVoiceFastestRecordFact.makePrompt(promptFormatter:)(uint64_t a1)
{
  v87 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v80 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v80 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v80 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v80 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v80 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = *v1;
  if (v25 != 19)
  {
LABEL_4:
    if ((v25 & 0xFC) == 0x10)
    {
      return 0;
    }

    v27 = v1;
    v28 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
    sub_1B4974FBC(&v1[v28[6]], v9, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v30 = v88;
    v29 = v89;
    if (v88[6](v9, 1, v89) == 1)
    {
      v31 = &qword_1EB8A6CC0;
      v32 = &unk_1B4D1BC00;
      v33 = v9;
LABEL_13:
      sub_1B4975024(v33, v31, v32);
      return 0;
    }

    v44 = v84;
    v30[4](v84, v9, v29);
    sub_1B4974FBC(&v1[v28[5]], v4, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v46 = v85;
    v45 = v86;
    if ((*(v85 + 48))(v4, 1, v86) == 1)
    {
      (v30[1])(v44, v29);
      v31 = &qword_1EB8A6C90;
      v32 = &unk_1B4D1BBD0;
      v33 = v4;
      goto LABEL_13;
    }

    v59 = v83;
    (*(v46 + 32))(v83, v4, v45);
    sub_1B4D1232C();
    sub_1B4BC79D0();
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v60 = sub_1B4D1878C();
    v62 = v61;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    sub_1B4D18F8C();
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v64 = sub_1B4BCA7BC(v63);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v65 = sub_1B4D15F5C(v59, v64);
    v67 = v66;

    v90 = 0;
    v91 = 0xE000000000000000;
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD000000000000013, 0x80000001B4D62DB0);
    MEMORY[0x1B8C7C620](v60, v62);

    MEMORY[0x1B8C7C620](0x2061206E6920, 0xE600000000000000);
    [*&v27[v28[9]] effectiveTypeIdentifier];
    result = FILocalizedNameForIndoorAgnosticActivityType();
    if (result)
    {
      v68 = result;
      v69 = sub_1B4D1818C();
      v71 = v70;

      MEMORY[0x1B8C7C620](v69, v71);

      MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE900000000000020);
      v72 = v27[v28[8]];
      if (v72 <= 1)
      {
        v74 = v85;
        v73 = v86;
        v76 = v88;
        v75 = v89;
        if (v72)
        {
          v77 = 0x6565772073696874;
          v78 = 0xE90000000000006BLL;
        }

        else
        {
          v77 = 0x7961642073696874;
          v78 = 0xE800000000000000;
        }
      }

      else
      {
        v74 = v85;
        v73 = v86;
        v76 = v88;
        v75 = v89;
        if (v72 == 2)
        {
          v77 = 0x6E6F6D2073696874;
          v78 = 0xEA00000000006874;
        }

        else if (v72 == 3)
        {
          v77 = 0x6165792073696874;
          v78 = 0xE900000000000072;
        }

        else
        {
          v78 = 0xE400000000000000;
          v77 = 1919252069;
        }
      }

      MEMORY[0x1B8C7C620](v77, v78);

      MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D62DD0);
      MEMORY[0x1B8C7C620](v65, v67);

      v79 = v90;
      (*(v74 + 8))(v83, v73);
      (v76[1])(v84, v75);
      return v79;
    }

    goto LABEL_40;
  }

  v81 = v13;
  v82 = &v80 - v24;
  v26 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  sub_1B4974FBC(&v1[v26[7]], v18, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1B4975024(v18, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    LOBYTE(v25) = *v1;
    goto LABEL_4;
  }

  v89 = v20;
  v34 = *(v20 + 32);
  v35 = v82;
  v34(v82, v18, v19);
  v36 = v26[9];
  v88 = v1;
  v37 = *&v1[v36];
  if (FIPaceFormatForWorkoutActivityType() == 4)
  {
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D1742C();
    (*(v89 + 8))(v22, v19);
    v38 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v39 = sub_1B4D13D94(v15, v37, 1);
    v41 = v40;
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_1B4D1896C();

    v90 = 0xD000000000000010;
    v91 = 0x80000001B4D62DF0;
    MEMORY[0x1B8C7C620](v39, v41);

    v43 = v90;
    v42 = v91;
    (*(v81 + 8))(v15, v12);
  }

  else
  {
    v48 = sub_1B4D13AE8(v35, v37, 2);
    v50 = v49;
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_1B4D1896C();

    v90 = 0x7020612068746977;
    v91 = 0xEF20666F20656361;
    MEMORY[0x1B8C7C620](v48, v50);

    v43 = v90;
    v42 = v91;
  }

  v90 = 0;
  v91 = 0xE000000000000000;
  sub_1B4D1896C();

  v90 = 0xD000000000000013;
  v91 = 0x80000001B4D62DB0;
  [v37 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  v51 = v88;
  if (result)
  {
    v52 = result;
    v53 = sub_1B4D1818C();
    v55 = v54;

    MEMORY[0x1B8C7C620](v53, v55);

    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE900000000000020);
    v56 = *(v51 + v26[8]);
    if (v56 <= 1)
    {
      if (*(v51 + v26[8]))
      {
        v57 = 0x6565772073696874;
        v58 = 0xE90000000000006BLL;
      }

      else
      {
        v57 = 0x7961642073696874;
        v58 = 0xE800000000000000;
      }
    }

    else if (v56 == 2)
    {
      v57 = 0x6E6F6D2073696874;
      v58 = 0xEA00000000006874;
    }

    else if (v56 == 3)
    {
      v57 = 0x6165792073696874;
      v58 = 0xE900000000000072;
    }

    else
    {
      v58 = 0xE400000000000000;
      v57 = 1919252069;
    }

    MEMORY[0x1B8C7C620](v57, v58);

    MEMORY[0x1B8C7C620](8236, 0xE200000000000000);
    MEMORY[0x1B8C7C620](v43, v42);

    v79 = v90;
    (*(v89 + 8))(v82, v19);
    return v79;
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1B4BC8820(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BC8C78(v3, v1, v2);
}

uint64_t sub_1B4BC8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DD034;

  return sub_1B4BC9510(a1, a3, a4, v9);
}

uint64_t sub_1B4BC8924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-v7];
  v9 = type metadata accessor for WorkoutState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4BCAE38(a1, v11, type metadata accessor for WorkoutState);
  sub_1B4974FBC(&v11[*(v9 + 60)], v4, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B49BFEC0(v11, type metadata accessor for WorkoutState);
    sub_1B4975024(v4, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v6 + 32))(v8, v4, v5);
  v13 = *&v11[*(v9 + 24)];
  sub_1B49BFEC0(v11, type metadata accessor for WorkoutState);
  v14 = [v13 effectiveTypeIdentifier];

  if (v14 == 13)
  {
    MEMORY[0x1EEE9AC00](v15);
    v16 = &v19[-32];
    *&v19[-16] = v8;
    v17 = &unk_1F2CB8CB8;
  }

  else
  {
    if (v14 != 37 && v14 != 71)
    {
      (*(v6 + 8))(v8, v5);
      return MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1EEE9AC00](v15);
    v16 = &v19[-32];
    *&v19[-16] = v8;
    v17 = &unk_1F2CB8CE8;
  }

  v18 = sub_1B499E6A4(sub_1B4BCAE18, v16, v17);
  (*(v6 + 8))(v8, v5);
  return v18;
}

unint64_t sub_1B4BC8C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor(0);
  v75 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v66 - v12);
  v78 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1B4D1777C();
  v15 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a1, a2, v20);
  v23 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(v22, v23, a2, a3);
  v25 = *(v24 + 16);
  v26 = 32;
  while (v25)
  {
    v27 = *(v24 + v26);
    v26 += 8;
    --v25;
    if (v27 == 8)
    {
      v72 = v18;

      v28 = *(a3 + 80);
      v77 = v17;
      v29 = v22;
      v28(a2, a3);
      v69 = *(v15 + 16);
      v70 = v15;
      v30 = v13;
      v32 = v79;
      v31 = v80;
      v69(v79, v77, v80);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1B4D1A800;
      v34 = *(a3 + 56);
      v71 = v29;
      v73 = a2;
      v35 = v34(a2, a3);
      v36 = [v35 effectiveTypeIdentifier];

      *(v33 + 32) = v36;
      v37 = v78;
      v38 = (v32 + *(v78 + 20));
      v39 = MEMORY[0x1E69E7CC0];
      *v38 = MEMORY[0x1E69E7CC0];
      v38[1] = v39;
      v38[2] = v39;
      v38[3] = v33;
      v38[4] = v39;
      v38[5] = v39;
      *(v32 + *(v37 + 24)) = v39;
      *(v32 + *(v37 + 28)) = &unk_1F2CBCFD0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFC8, &qword_1B4D39838);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFD0, &qword_1B4D39840);
      v40 = (*(*(v74 - 8) + 80) + 32) & ~*(*(v74 - 8) + 80);
      v67 = *(*(v74 - 8) + 72);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1B4D1AA70;
      v68 = v41;
      v42 = v41 + v40;
      *(v41 + v40) = 0;
      v69(v30, v77, v31);
      swift_storeEnumTagMultiPayload();
      v43 = v75;
      (*(v75 + 56))(v30, 0, 1, v6);
      v69 = v30;
      sub_1B4974FBC(v30, v10, &qword_1EB8A67A8, &qword_1B4D1E060);
      v44 = *(v43 + 48);
      if (v44(v10, 1, v6) == 1)
      {
        v45 = v32;
        v46 = v76;
        sub_1B4BCAE38(v45, v76, type metadata accessor for DateRangeDescriptor);
        if (v44(v10, 1, v6) != 1)
        {
          sub_1B4975024(v10, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v46 = v76;
        sub_1B4BCAEA0(v10, v76, type metadata accessor for DateRangeDescriptor);
      }

      v53 = v42 + *(v74 + 48);
      v55 = *v38;
      v54 = v38[1];
      v56 = v38[2];
      v57 = v38[3];
      v59 = v38[4];
      v58 = v38[5];
      sub_1B4BCAE38(v46, v53, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v46, type metadata accessor for DateRangeDescriptor);
      v60 = v78;
      v61 = (v53 + *(v78 + 20));
      *v61 = v55;
      v61[1] = v54;
      v61[2] = v56;
      v61[3] = v57;
      v61[4] = v59;
      v61[5] = v58;
      *(v53 + *(v60 + 24)) = MEMORY[0x1E69E7CC0];
      *(v53 + *(v60 + 28)) = &unk_1F2CBCFD0;
      sub_1B4975024(v69, &qword_1EB8A67A8, &qword_1B4D1E060);
      type metadata accessor for FitnessContextQueryDescriptor(0);
      swift_storeEnumTagMultiPayload();
      v62 = (v42 + v67);
      v63 = *(v74 + 48);
      *v62 = 1;
      v64 = v79;
      sub_1B4BCAE38(v79, &v62[v63], type metadata accessor for WorkoutPropertiesQuery);
      swift_storeEnumTagMultiPayload();
      v52 = sub_1B4C97980(v68);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v64, type metadata accessor for WorkoutPropertiesQuery);
      (*(v70 + 8))(v77, v80);
      v18 = v72;
      a2 = v73;
      v22 = v71;
      goto LABEL_14;
    }
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v47 = sub_1B4D17F6C();
  __swift_project_value_buffer(v47, qword_1EDC36F00);
  v48 = sub_1B4D17F5C();
  v49 = sub_1B4D1873C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v81 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_1B49558AC(0xD00000000000001DLL, 0x80000001B4D62E10, &v81);
    _os_log_impl(&dword_1B4953000, v48, v49, "%s does not support this workout state", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x1B8C7DDA0](v51, -1, -1);
    MEMORY[0x1B8C7DDA0](v50, -1, -1);
  }

  v52 = sub_1B4C97980(MEMORY[0x1E69E7CC0]);
LABEL_14:
  (*(v18 + 8))(v22, a2);
  return v52;
}

uint64_t sub_1B4BC9510(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4[315] = a3;
  v4[314] = a2;
  v4[313] = a1;
  v5 = type metadata accessor for WorkoutVoiceFastestRecordFact(0);
  v4[316] = v5;
  v4[317] = *(v5 - 8);
  v4[318] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFB0, &qword_1B4D39820);
  v4[319] = v6;
  v4[320] = *(v6 - 8);
  v4[321] = swift_task_alloc();
  v4[322] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4[323] = v7;
  v4[324] = *(v7 - 8);
  v4[325] = swift_task_alloc();
  v4[326] = swift_task_alloc();
  v8 = sub_1B4D1777C();
  v4[327] = v8;
  v4[328] = *(v8 - 8);
  v4[329] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[330] = swift_task_alloc();
  v4[331] = swift_task_alloc();
  v9 = type metadata accessor for WorkoutState(0);
  v4[332] = v9;
  v4[333] = *(v9 - 8);
  v4[334] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BC97BC, 0, 0);
}

uint64_t sub_1B4BC97BC()
{
  v132 = v0;
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2656);
  v3 = *(v0 + 2648);
  sub_1B4974FBC(*(v0 + 2512), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1B4975024(*(v0 + 2648), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_14:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v51 = sub_1B4D17F6C();
    __swift_project_value_buffer(v51, qword_1EDC36F00);
    v52 = sub_1B4D17F5C();
    v53 = sub_1B4D1873C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      __dst[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_1B49558AC(0xD00000000000001DLL, 0x80000001B4D62E10, __dst);
      _os_log_impl(&dword_1B4953000, v52, v53, "Context or snapshots don't exist for %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x1B8C7DDA0](v55, -1, -1);
      MEMORY[0x1B8C7DDA0](v54, -1, -1);
    }

    v56 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v127 = v4;
  v5 = *(v0 + 2504);
  sub_1B4BCAEA0(*(v0 + 2648), *(v0 + 2672), type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 2488) = &type metadata for WorkoutVoiceFastestRecordFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFB8, &qword_1B4D39828);
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v7 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = *(v0 + 2456);
  if (!v9)
  {
    sub_1B49BFEC0(*(v0 + 2672), type metadata accessor for WorkoutState);
    goto LABEL_14;
  }

  v10 = *(v0 + 2440);
  v11 = *(v0 + 2448);
  v13 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2504), v13);
  *(v0 + 2496) = &type metadata for WorkoutVoiceFastestRecordFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v14;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D4BED0);

  (*(v12 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v13, v12);

  v15 = *(v0 + 2480);
  v16 = *(v0 + 2672);
  if (!v15)
  {
    sub_1B49BFEC0(v16, type metadata accessor for WorkoutState);
LABEL_13:

    goto LABEL_14;
  }

  v125 = v11;
  v17 = (v0 + 1976);
  v18 = (v0 + 2104);
  v19 = (v0 + 2232);
  v20 = *(v0 + 2464);
  v124 = *(v0 + 2472);
  v21 = sub_1B4CAC70C(v16);
  v22 = *(v21 + 2);
  v23 = 32;
  do
  {
    if (!v22)
    {
      v50 = *(v0 + 2672);

      sub_1B49BFEC0(v50, type metadata accessor for WorkoutState);

      goto LABEL_13;
    }

    v24 = *&v21[v23];
    v23 += 8;
    --v22;
  }

  while (v24 != 8);
  v119 = v20;
  v121 = v15;
  v123 = v10;
  v110 = (v0 + 2400);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B4D1A800;
  *(v25 + 32) = sub_1B4D1779C();
  *(v25 + 40) = v26;
  v120 = v25;
  sub_1B4D1770C();
  v27 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v115 = *(v0 + 2672);
    v117 = *(v0 + 2656);
    v28 = *(v0 + 2624);
    v111 = *(v0 + 2616);
    v113 = *(v0 + 2632);
    v29 = sub_1B4D1796C();
    __swift_project_value_buffer(v29, qword_1EDC3CE48);
    v30 = sub_1B4D178CC();
    v31 = _HKCacheIndexFromDate();

    (*(v28 + 8))(v113, v111);
    sub_1B496F4FC(v19);
    *(v0 + 2104) = v31;
    *(v0 + 2112) = v119;
    *(v0 + 2120) = v124;
    *(v0 + 2128) = v121;
    *(v0 + 2136) = v123;
    *(v0 + 2144) = v125;
    *(v0 + 2152) = v9;
    *(v0 + 2160) = v31;
    *(v0 + 2168) = v31;
    v32 = MEMORY[0x1E69E7CC0];
    *(v0 + 2176) = MEMORY[0x1E69E7CC0];
    *(v0 + 2184) = v31;
    *(v0 + 2192) = v31;
    *(v0 + 2200) = v32;
    *(v0 + 2208) = v31;
    *(v0 + 2216) = v31;
    *(v0 + 2224) = v32;
    nullsub_1();
    sub_1B496F4FC(v17);
    v33 = *(v17 + 5);
    *(v0 + 1128) = *(v17 + 4);
    *(v0 + 1144) = v33;
    v34 = *(v17 + 7);
    *(v0 + 1160) = *(v17 + 6);
    *(v0 + 1176) = v34;
    v35 = *(v17 + 1);
    *(v0 + 1064) = *v17;
    *(v0 + 1080) = v35;
    v36 = *(v17 + 3);
    *(v0 + 1096) = *(v17 + 2);
    *(v0 + 1112) = v36;
    v37 = *v19;
    v38 = *(v19 + 1);
    v39 = *(v19 + 3);
    *(v0 + 840) = *(v19 + 2);
    *(v0 + 856) = v39;
    *(v0 + 808) = v37;
    *(v0 + 824) = v38;
    v40 = *(v19 + 4);
    v41 = *(v19 + 5);
    v42 = *(v19 + 7);
    *(v0 + 904) = *(v19 + 6);
    *(v0 + 920) = v42;
    *(v0 + 872) = v40;
    *(v0 + 888) = v41;
    v43 = *v18;
    v44 = v18[1];
    v45 = v18[3];
    *(v0 + 968) = v18[2];
    *(v0 + 984) = v45;
    *(v0 + 936) = v43;
    *(v0 + 952) = v44;
    v46 = v18[4];
    v47 = v18[5];
    v48 = v18[7];
    *(v0 + 1032) = v18[6];
    *(v0 + 1048) = v48;
    *(v0 + 1000) = v46;
    *(v0 + 1016) = v47;
    *(v0 + 800) = v31;
    *(v0 + 2384) = v117;
    *(v0 + 2392) = &protocol witness table for WorkoutState;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2360));
    sub_1B4BCAE38(v115, boxed_opaque_existential_1, type metadata accessor for WorkoutState);
    memcpy(__dst, (v0 + 800), sizeof(__dst));
    static LegacySnapshot.make(from:snapshot:)(v0 + 2360, __dst, __src);
    v59 = *(v0 + 2656);
    v60 = *(v0 + 2640);
    v61 = *(v0 + 2520);
    sub_1B4975024(v0 + 2360, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
    memcpy((v0 + 408), __src, 0x188uLL);
    sub_1B4974FBC(v61, v60, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v62 = v127(v60, 1, v59);
    if (v62 == 1)
    {
      sub_1B4975024(*(v0 + 2640), &qword_1EB8A6A98, &unk_1B4D1CBE0);
      v63 = v0 + 2400;
      *v110 = 0u;
      *(v0 + 2416) = 0u;
      *(v0 + 2432) = 0;
    }

    else
    {
      v64 = *(v0 + 2640);
      *(v0 + 2424) = *(v0 + 2656);
      *(v0 + 2432) = &protocol witness table for WorkoutState;
      v63 = v0 + 2400;
      v65 = __swift_allocate_boxed_opaque_existential_1(v110);
      sub_1B4BCAEA0(v64, v65, type metadata accessor for WorkoutState);
    }

    memcpy(__dst, (v0 + 800), sizeof(__dst));
    static LegacySnapshot.make(from:snapshot:)(v63, __dst, __src);
    v66 = *(v0 + 2672);
    v119 = 0;
    v67 = *(v0 + 2656);
    sub_1B4B68220(v0 + 800);
    sub_1B4975024(v63, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
    memcpy((v0 + 1192), __src, 0x188uLL);
    v118 = *(v66 + *(v67 + 24));
    v68 = sub_1B4BC8924(v66);
    v19 = *(v68 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v69 = (v68 + 32);
      v122 = (*(v0 + 2592) + 8);
      v123 = objc_opt_self();
      do
      {
        v126 = v9;
        v70 = *(v0 + 2608);
        v71 = *(v0 + 2600);
        v72 = *(v0 + 2584);
        v73 = *v69;
        v127 = (v69 + 1);
        LOBYTE(v131) = *v69;
        DistanceReference.rawValue.getter();
        v74 = [v123 kilometers];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        sub_1B4D1741C();
        sub_1B4BCAD44();
        v75 = sub_1B4D1816C();
        v76 = *v122;
        (*v122)(v71, v72);
        v76(v70, v72);
        if (v75 & 1) != 0 || (v77 = *(v0 + 2608), v78 = *(v0 + 2600), v79 = *(v0 + 2584), LOBYTE(v131) = v73, DistanceReference.rawValue.getter(), v80 = [v123 kilometers], sub_1B4D1741C(), v81 = sub_1B4D1816C(), v76(v78, v79), v76(v77, v79), (v81))
        {
          v9 = v126;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B4A1E0B8(0, *(v126 + 2) + 1, 1, v126);
          }

          ++v69;
          v83 = *(v9 + 2);
          v82 = *(v9 + 3);
          if (v83 >= v82 >> 1)
          {
            v9 = sub_1B4A1E0B8((v82 > 1), v83 + 1, 1, v9);
          }

          *(v9 + 2) = v83 + 1;
          v9[v83 + 32] = v73;
        }

        else
        {
          v9 = v126;
          ++v69;
        }

        v19 = (v19 - 1);
      }

      while (v19);
    }

    v18 = MEMORY[0x1E69E7CC0];
    v131 = MEMORY[0x1E69E7CC0];
    v124 = *(v9 + 2);
    if (!v124)
    {
      break;
    }

    v121 = *(v0 + 2560);
    v84 = *(v0 + 2536);
    memcpy((v0 + 1584), (v0 + 1192), 0x188uLL);
    nullsub_1();
    memcpy((v0 + 16), (v0 + 1584), 0x188uLL);
    v85 = 0;
    v86 = v9 + 32;
    v112 = v84;
    v114 = (v84 + 48);
    v17 = &qword_1EB8ABFB0;
    v27 = &qword_1B4D39820;
    v87 = v118;
    v125 = v9;
    v116 = v9 + 32;
    while (v85 < *(v9 + 2))
    {
      v88 = v27;
      v89 = v17;
      v128 = v85;
      v90 = v85[v86];
      v91 = [v87 effectiveTypeIdentifier];
      v92 = v91;
      v93 = &unk_1F2CB8C68;
      if ((v90 - 16) <= 2)
      {
        v93 = *(&off_1E7C118E0 + (v90 - 16));
      }

      v127 = (v128 + 1);
      v94 = v93[2];
      v95 = 4;
      do
      {
        if (!v94)
        {

          v19 = v18;
          v17 = v89;
          v27 = v88;
          goto LABEL_39;
        }

        v96 = v93[v95++];
        --v94;
      }

      while (v96 != v91);
      v97 = v87;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFC0, &qword_1B4D39830);
      v98 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v99 = swift_allocObject();
      v123 = v97;
      sub_1B4C8FB08(v120, &unk_1F2CB8D18, v92, v90, (v0 + 408), (v0 + 16), v123, (v99 + v98));
      v119 = 0;
      v100 = *(v0 + 2576);
      v101 = *(v0 + 2568);
      v102 = *(v0 + 2528);
      v17 = v89;
      v103 = v89;
      v27 = v88;
      sub_1B4974FBC(v99 + v98, v100, v103, v88);
      sub_1B4BCADA8(v100, v101);
      v104 = (*v114)(v101, 1, v102);
      v105 = *(v0 + 2568);
      if (v104 == 1)
      {
        sub_1B4975024(v105, v17, v88);
        v19 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1B4BCAEA0(v105, *(v0 + 2544), type metadata accessor for WorkoutVoiceFastestRecordFact);
        v19 = MEMORY[0x1E69E7CC0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1B4A1E090(0, *(MEMORY[0x1E69E7CC0] + 16) + 1, 1, MEMORY[0x1E69E7CC0]);
        }

        v107 = v19[2];
        v106 = v19[3];
        if (v107 >= v106 >> 1)
        {
          v19 = sub_1B4A1E090((v106 > 1), v107 + 1, 1, v19);
        }

        v108 = *(v0 + 2544);
        v19[2] = v107 + 1;
        sub_1B4BCAEA0(v108, v19 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v107, type metadata accessor for WorkoutVoiceFastestRecordFact);
      }

      v87 = v118;
      swift_setDeallocating();
      sub_1B4975024(v99 + v98, v17, v88);
      swift_deallocClassInstance();

      v9 = v125;
      v18 = MEMORY[0x1E69E7CC0];
      v86 = v116;
LABEL_39:
      sub_1B4997A48(v19);
      v85 = v127;
      if (v127 == v124)
      {

        sub_1B4B68220(v0 + 408);
        v56 = v131;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
  }

  sub_1B4B68220(v0 + 408);
  v56 = MEMORY[0x1E69E7CC0];
LABEL_56:
  v109 = *(v0 + 2672);

  sub_1B4B68220(v0 + 1192);
  sub_1B49BFEC0(v109, type metadata accessor for WorkoutState);
LABEL_19:

  v57 = *(v0 + 8);

  return v57(v56);
}

uint64_t sub_1B4BCA7BC(uint64_t a1)
{
  v2 = sub_1B4D18F8C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7058, &qword_1B4D1CCA8);
    v9 = sub_1B4D1892C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_1B4BCACFC(&qword_1EB8A7060, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v15 = sub_1B4D1807C();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v17 * v13, v2);
          sub_1B4BCACFC(&qword_1EB8A7068, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
          v23 = sub_1B4D1816C();
          v24 = *v14;
          (*v14)(v5, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1B4BCAAE4()
{
  result = qword_1EB8ABF80;
  if (!qword_1EB8ABF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF80);
  }

  return result;
}

unint64_t sub_1B4BCAB38(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BCAB68();
  result = sub_1B4BCABBC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BCAB68()
{
  result = qword_1EB8ABF88;
  if (!qword_1EB8ABF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF88);
  }

  return result;
}

unint64_t sub_1B4BCABBC()
{
  result = qword_1EB8ABF90;
  if (!qword_1EB8ABF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF90);
  }

  return result;
}

unint64_t sub_1B4BCAC14()
{
  result = qword_1EB8ABF98;
  if (!qword_1EB8ABF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF98);
  }

  return result;
}

uint64_t sub_1B4BCAC68(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BCACFC(&qword_1EB8ABFA0, type metadata accessor for WorkoutVoiceFastestRecordFact, &protocol conformance descriptor for WorkoutVoiceFastestRecordFact);
  result = sub_1B4BCACFC(&qword_1EB8ABFA8, type metadata accessor for WorkoutVoiceFastestRecordFact, &protocol conformance descriptor for WorkoutVoiceFastestRecordFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4BCACFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4BCAD44()
{
  result = qword_1EDC3CB38;
  if (!qword_1EDC3CB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CB38);
  }

  return result;
}

uint64_t sub_1B4BCADA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFB0, &qword_1B4D39820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BCAE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BCAEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t DateRangeDescriptor.analyticsKey.getter()
{
  v1 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B94680(v0, v3);
  v4 = 0x646F547261466F73;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
      v4 = 0x6968547261466F73;
      break;
    case 4u:
      v4 = 0x6B6565577473616CLL;
      break;
    case 5u:
      v4 = 0x746E6F4D7473616CLL;
      break;
    case 6u:
      v4 = 0x726165597473616CLL;
      break;
    case 7u:
      v4 = 0xD000000000000010;
      break;
    case 8u:
      v4 = 0xD000000000000011;
      break;
    case 9u:
      v4 = 0xD000000000000010;
      break;
    case 0xAu:
      v4 = 0x726968547473616CLL;
      break;
    case 0xBu:
      v4 = 0x747869537473616CLL;
      break;
    case 0xCu:
      v4 = 0x656E694E7473616CLL;
      break;
    case 0xDu:
      v4 = 0x577869537473616CLL;
      break;
    case 0xEu:
      v4 = 0x72756F467473616CLL;
      break;
    case 0xFu:
      v4 = 0x656D69546C6C61;
      break;
    default:
      break;
  }

  v5 = sub_1B4D1777C();
  (*(*(v5 - 8) + 8))(v3, v5);
  return v4;
}

uint64_t type metadata accessor for DateRangeDescriptor(uint64_t a1)
{
  result = qword_1EDC3CEF8;
  if (!qword_1EDC3CEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DateRangeDescriptor.dateInterval()@<X0>(uint64_t a1@<X8>)
{
  v286 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v265 = &v239 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v263 = &v239 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v262 = &v239 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v261 = &v239 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v260 = &v239 - v10;
  v288 = sub_1B4D1796C();
  v282 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v264 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v258 = &v239 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v257 = &v239 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v256 = &v239 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v255 = &v239 - v19;
  v287 = sub_1B4D1794C();
  v283 = *(v287 - 8);
  MEMORY[0x1EEE9AC00](v287);
  v259 = &v239 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v275 = &v239 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v274 = &v239 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v273 = &v239 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v272 = &v239 - v28;
  v291 = sub_1B4D1777C();
  v292 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291);
  v245 = &v239 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v254 = &v239 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v244 = &v239 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v276 = &v239 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v243 = &v239 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v281 = &v239 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v242 = &v239 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v280 = &v239 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v241 = &v239 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v279 = &v239 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v240 = &v239 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v278 = &v239 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v269 = &v239 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v252 = &v239 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v253 = &v239 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v268 = &v239 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v249 = &v239 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v250 = &v239 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v271 = &v239 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v251 = &v239 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v267 = &v239 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v247 = &v239 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v248 = &v239 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v266 = &v239 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v239 - v77;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v239 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v270 = &v239 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v246 = &v239 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v239 - v87;
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v239 - v90;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v239 - v93;
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v239 - v96;
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v239 - v99;
  MEMORY[0x1EEE9AC00](v101);
  v277 = &v239 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v284 = &v239 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v285 = &v239 - v106;
  v107 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v239 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B94680(v289, v109);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v177 = v292;
      v178 = v285;
      v179 = v291;
      (*(v292 + 32))(v285, v109, v291);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v180 = sub_1B4D178CC();
      v181 = sub_1B4D1771C();
      v182 = v178;
      v183 = [v180 hk:v181 startOfFitnessWeekBeforeDate:?];

      v184 = v284;
      sub_1B4D1775C();

      v185 = *(v177 + 16);
      v185(v277, v184, v179);
      v185(v100, v182, v179);
      v115 = v286;
      sub_1B4D174CC();
      v186 = *(v177 + 8);
      v186(v184, v179);
      v186(v182, v179);
      goto LABEL_37;
    case 2u:
      v168 = v292;
      v169 = v291;
      (*(v292 + 32))(v97, v109, v291);
      v170 = v290;
      Date.beginningOfMonth()(v94);
      if (v170)
      {
        return (*(v168 + 8))(v97, v169);
      }

      v220 = *(v168 + 16);
      v220(v285, v94, v169);
      v220(v284, v97, v169);
      v221 = v286;
      sub_1B4D174CC();
      v222 = *(v168 + 8);
      v222(v94, v169);
      v222(v97, v169);
      v223 = sub_1B4D174EC();
      return (*(*(v223 - 8) + 56))(v221, 0, 1, v223);
    case 3u:
      v172 = v292;
      v173 = v291;
      (*(v292 + 32))(v91, v109, v291);
      v174 = v290;
      Date.beginningOfYear()(v88);
      if (v174)
      {
        return (*(v172 + 8))(v91, v173);
      }

      v224 = *(v172 + 16);
      v224(v285, v88, v173);
      v224(v284, v91, v173);
      v150 = v286;
      sub_1B4D174CC();
      v225 = *(v172 + 8);
      v225(v88, v173);
      v225(v91, v173);
      goto LABEL_74;
    case 4u:
      v141 = v292;
      v142 = v246;
      v134 = v291;
      (*(v292 + 32))(v246, v109, v291);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v143 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v144 = v290;
      Date.endOfLastWeek(calendar:)(v143, v270);
      if (v144)
      {
        return (*(v141 + 8))(v142, v134);
      }

      v145 = sub_1B4D178CC();
      v146 = sub_1B4D1771C();
      v147 = [v145 hk:v146 startOfFitnessWeekBeforeDate:?];

      v148 = v285;
      sub_1B4D1775C();

      v149 = *(v141 + 16);
      v149(v284, v148, v134);
      v149(v277, v270, v134);
      v150 = v286;
      sub_1B4D174CC();
      v151 = *(v141 + 8);
      v151(v148, v134);
      v152 = v270;
      goto LABEL_66;
    case 5u:
      (*(v292 + 32))(v81, v109, v291);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v188 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v189 = v290;
      Date.endOfLastMonth(calendar:)(v188, v78);
      v190 = v266;
      if (v189)
      {
        return (*(v292 + 8))(v81, v291);
      }

      Date.beginningOfMonth()(v266);
      v232 = v292;
      v233 = *(v292 + 16);
      v234 = v190;
      v235 = v291;
      v233(v285, v234, v291);
      v233(v284, v78, v235);
      v150 = v286;
      sub_1B4D174CC();
      v236 = *(v232 + 8);
      v236(v266, v235);
      v236(v78, v235);
      v236(v81, v235);
      goto LABEL_74;
    case 6u:
      v159 = v292;
      v160 = v248;
      v161 = v291;
      (*(v292 + 32))(v248, v109, v291);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v197 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v163 = v247;
      v198 = v290;
      Date.endOfLastYear(calendar:)(v197, v247);
      v199 = v267;
      if (v198)
      {
        return (*(v159 + 8))(v160, v161);
      }

      Date.beginningOfYear()(v267);
      v200 = *(v159 + 16);
      v200(v285, v199, v161);
      v200(v284, v163, v161);
      v150 = v286;
      sub_1B4D174CC();
      v167 = *(v159 + 8);
      v167(v267, v161);
      goto LABEL_73;
    case 7u:
      v141 = v292;
      v142 = v251;
      v134 = v291;
      (*(v292 + 32))(v251, v109, v291);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v175 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v176 = v290;
      Date.thisDayLastWeek(calendar:)(v175, v271);
      if (v176)
      {
        return (*(v141 + 8))(v142, v134);
      }

      v226 = sub_1B4D178CC();
      v227 = sub_1B4D1771C();
      v228 = [v226 hk:v227 startOfFitnessWeekBeforeDate:?];

      v229 = v285;
      sub_1B4D1775C();

      v230 = *(v141 + 16);
      v230(v284, v229, v134);
      v230(v277, v271, v134);
      v150 = v286;
      sub_1B4D174CC();
      v151 = *(v141 + 8);
      v151(v229, v134);
      v152 = v271;
      goto LABEL_66;
    case 8u:
      v159 = v292;
      v160 = v250;
      v161 = v291;
      (*(v292 + 32))(v250, v109, v291);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v207 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v163 = v249;
      v208 = v290;
      Date.thisDayLastMonth(calendar:)(v207, v249);
      v209 = v268;
      if (v208)
      {
        return (*(v159 + 8))(v160, v161);
      }

      Date.beginningOfMonth()(v268);
      v237 = *(v159 + 16);
      v237(v285, v209, v161);
      v237(v284, v163, v161);
      v150 = v286;
      sub_1B4D174CC();
      v167 = *(v159 + 8);
      v167(v268, v161);
      goto LABEL_73;
    case 9u:
      v159 = v292;
      v160 = v253;
      v161 = v291;
      (*(v292 + 32))(v253, v109, v291);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v162 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v163 = v252;
      v164 = v290;
      Date.thisDayLastYear(calendar:)(v162, v252);
      v165 = v269;
      if (v164)
      {
        return (*(v159 + 8))(v160, v161);
      }

      Date.beginningOfYear()(v269);
      v166 = *(v159 + 16);
      v166(v285, v165, v161);
      v166(v284, v163, v161);
      v150 = v286;
      sub_1B4D174CC();
      v167 = *(v159 + 8);
      v167(v269, v161);
LABEL_73:
      v167(v163, v161);
      v167(v160, v161);
      goto LABEL_74;
    case 0xAu:
      v133 = v292;
      v134 = v291;
      v289 = *(v292 + 32);
      v289(v278, v109, v291);
      v201 = v283;
      (*(v283 + 104))(v272, *MEMORY[0x1E6969A48], v287);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v202 = v288;
      v203 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v204 = v282;
      v205 = v255;
      (*(v282 + 16))(v255, v203, v202);
      v206 = v260;
      sub_1B4D1790C();
      if ((*(v133 + 48))(v206, 1, v134) == 1)
      {
        sub_1B4975024(v206, &qword_1EB8A6790, &qword_1B4D1BBC0);
        sub_1B4B15124();
        swift_allocError();
        swift_willThrow();
        (*(v204 + 8))(v205, v202);
        (*(v201 + 8))(v272, v287);
        return (*(v133 + 8))(v278, v134);
      }

      (*(v204 + 8))(v205, v202);
      (*(v201 + 8))(v272, v287);
      v217 = v240;
      v289(v240, v206, v134);
      v218 = *(v133 + 16);
      v218(v285, v217, v134);
      v219 = v284;
      v142 = v278;
      goto LABEL_65;
    case 0xBu:
      v133 = v292;
      v134 = v291;
      v289 = *(v292 + 32);
      v289(v279, v109, v291);
      v135 = v283;
      (*(v283 + 104))(v273, *MEMORY[0x1E6969A48], v287);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v136 = v288;
      v137 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v138 = v282;
      v139 = v256;
      (*(v282 + 16))(v256, v137, v136);
      v140 = v261;
      sub_1B4D1790C();
      if ((*(v133 + 48))(v140, 1, v134) == 1)
      {
        sub_1B4975024(v140, &qword_1EB8A6790, &qword_1B4D1BBC0);
        sub_1B4B15124();
        swift_allocError();
        swift_willThrow();
        (*(v138 + 8))(v139, v136);
        (*(v135 + 8))(v273, v287);
        return (*(v133 + 8))(v279, v134);
      }

      (*(v138 + 8))(v139, v136);
      (*(v135 + 8))(v273, v287);
      v217 = v241;
      v289(v241, v140, v134);
      v218 = *(v133 + 16);
      v218(v285, v217, v134);
      v219 = v284;
      v142 = v279;
      goto LABEL_65;
    case 0xCu:
      v133 = v292;
      v134 = v291;
      v289 = *(v292 + 32);
      v289(v280, v109, v291);
      v153 = v283;
      (*(v283 + 104))(v274, *MEMORY[0x1E6969A48], v287);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v154 = v288;
      v155 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v156 = v282;
      v157 = v257;
      (*(v282 + 16))(v257, v155, v154);
      v158 = v262;
      sub_1B4D1790C();
      if ((*(v133 + 48))(v158, 1, v134) == 1)
      {
        sub_1B4975024(v158, &qword_1EB8A6790, &qword_1B4D1BBC0);
        sub_1B4B15124();
        swift_allocError();
        swift_willThrow();
        (*(v156 + 8))(v157, v154);
        (*(v153 + 8))(v274, v287);
        return (*(v133 + 8))(v280, v134);
      }

      (*(v156 + 8))(v157, v154);
      (*(v153 + 8))(v274, v287);
      v217 = v242;
      v289(v242, v158, v134);
      v218 = *(v133 + 16);
      v218(v285, v217, v134);
      v219 = v284;
      v142 = v280;
      goto LABEL_65;
    case 0xDu:
      v133 = v292;
      v134 = v291;
      v289 = *(v292 + 32);
      v289(v281, v109, v291);
      v191 = v283;
      (*(v283 + 104))(v275, *MEMORY[0x1E6969A48], v287);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v192 = v288;
      v193 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v194 = v282;
      v195 = v258;
      (*(v282 + 16))(v258, v193, v192);
      v196 = v263;
      sub_1B4D1790C();
      if ((*(v133 + 48))(v196, 1, v134) == 1)
      {
        sub_1B4975024(v196, &qword_1EB8A6790, &qword_1B4D1BBC0);
        sub_1B4B15124();
        swift_allocError();
        swift_willThrow();
        (*(v194 + 8))(v195, v192);
        (*(v191 + 8))(v275, v287);
        return (*(v133 + 8))(v281, v134);
      }

      (*(v194 + 8))(v195, v192);
      (*(v191 + 8))(v275, v287);
      v217 = v243;
      v289(v243, v196, v134);
      v218 = *(v133 + 16);
      v218(v285, v217, v134);
      v219 = v284;
      v142 = v281;
LABEL_65:
      v218(v219, v142, v134);
      v150 = v286;
      sub_1B4D174CC();
      v151 = *(v133 + 8);
      v152 = v217;
LABEL_66:
      v151(v152, v134);
      v151(v142, v134);
      goto LABEL_74;
    case 0xEu:
      v289 = *(v292 + 32);
      v289(v276, v109, v291);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v117 = v288;
      v118 = __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v119 = sub_1B4D178CC();
      v120 = sub_1B4D1771C();
      v121 = [v119 hk:v120 startOfFitnessWeekBeforeDate:?];

      v122 = v254;
      sub_1B4D1775C();

      v123 = v283;
      v124 = v259;
      v125 = v287;
      (*(v283 + 104))(v259, *MEMORY[0x1E6969A10], v287);
      v126 = v282;
      v127 = *(v282 + 16);
      v128 = v264;
      v281 = v118;
      v127(v264, v118, v117);
      v129 = v265;
      sub_1B4D1790C();
      if ((*(v292 + 48))(v129, 1, v291) == 1)
      {
        sub_1B4975024(v129, &qword_1EB8A6790, &qword_1B4D1BBC0);
        sub_1B4B15124();
        swift_allocError();
        swift_willThrow();
        (*(v126 + 8))(v128, v117);
        (*(v123 + 8))(v124, v125);
        v130 = *(v292 + 8);
        v131 = v291;
        v130(v122, v291);
        return (v130)(v276, v131);
      }

      else
      {
        v210 = v117;
        v211 = v290;
        (*(v126 + 8))(v128, v210);
        (*(v123 + 8))(v124, v125);
        v212 = *(v292 + 8);
        v213 = v291;
        v212(v122, v291);
        v214 = v244;
        v289(v244, v129, v213);
        v215 = v245;
        v216 = v276;
        Date.endOfLastWeek(calendar:)(v281, v245);
        if (v211)
        {
          v212(v214, v213);
          return (v212)(v216, v213);
        }

        else
        {
          v231 = *(v292 + 16);
          v231(v285, v214, v213);
          v231(v284, v215, v213);
          v150 = v286;
          sub_1B4D174CC();
          v212(v215, v213);
          v212(v214, v213);
          v212(v276, v213);
LABEL_74:
          v238 = sub_1B4D174EC();
          return (*(*(v238 - 8) + 56))(v150, 0, 1, v238);
        }
      }

    case 0xFu:
      v171 = sub_1B4D174EC();
      (*(*(v171 - 8) + 56))(v286, 1, 1, v171);
      return (*(v292 + 8))(v109, v291);
    default:
      v110 = v292;
      v111 = v285;
      v112 = v291;
      (*(v292 + 32))(v285, v109, v291);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v288, qword_1EDC3CE48);
      v113 = v284;
      sub_1B4D1782C();
      v114 = *(v110 + 16);
      v114(v277, v113, v112);
      v114(v100, v111, v112);
      v115 = v286;
      sub_1B4D174CC();
      v116 = *(v110 + 8);
      v116(v113, v112);
      v116(v111, v112);
LABEL_37:
      v187 = sub_1B4D174EC();
      return (*(*(v187 - 8) + 56))(v115, 0, 1, v187);
  }
}

uint64_t DateRangeDescriptor.hash(into:)(uint64_t a1)
{
  v2 = sub_1B4D1777C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B94680(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1B8C7D290](EnumCaseMultiPayload);
  sub_1B4BCE39C(&qword_1EB8A72A8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1B4D1808C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DateRangeDescriptor.hashValue.getter()
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BCD6D8()
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BCD71C(uint64_t a1)
{
  sub_1B4D18E8C();
  DateRangeDescriptor.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t _s19FitnessIntelligence19DateRangeDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v3 = sub_1B4D1777C();
  v4 = *(v3 - 8);
  v138 = v3;
  v139 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v126 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v125 = &v111 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v111 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v122 = &v111 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v111 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v111 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v111 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v111 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v115 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v114 = &v111 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v113 = &v111 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v112 = &v111 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v111 = &v111 - v35;
  v36 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v36);
  v136 = &v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v135 = &v111 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v134 = &v111 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v133 = &v111 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v132 = &v111 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v131 = &v111 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v130 = &v111 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v129 = &v111 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v128 = &v111 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v127 = &v111 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v111 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v111 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v111 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v111 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v111 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v111 - v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE0, &qword_1B4D39918);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v76 = &v111 - v75;
  v78 = *(v77 + 56);
  sub_1B4B94680(a1, &v111 - v75);
  v79 = v78;
  sub_1B4B94680(v137, &v76[v78]);
  v80 = v76;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B4B94680(v76, v70);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v100 = v138;
        v99 = v139;
        v101 = v112;
        (*(v139 + 32))(v112, &v76[v79], v138);
        v88 = sub_1B4D1774C();
        v102 = *(v99 + 8);
        v102(v101, v100);
        v102(v70, v100);
        goto LABEL_35;
      }

      v58 = v70;
      goto LABEL_43;
    case 2u:
      sub_1B4B94680(v76, v67);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v91 = v138;
        v90 = v139;
        v92 = v113;
        (*(v139 + 32))(v113, &v76[v79], v138);
        v88 = sub_1B4D1774C();
        v93 = *(v90 + 8);
        v93(v92, v91);
        v93(v67, v91);
        goto LABEL_35;
      }

      v58 = v67;
      goto LABEL_43;
    case 3u:
      sub_1B4B94680(v76, v64);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v95 = v138;
        v94 = v139;
        v96 = v114;
        (*(v139 + 32))(v114, &v76[v79], v138);
        v88 = sub_1B4D1774C();
        v97 = *(v94 + 8);
        v97(v96, v95);
        v97(v64, v95);
        goto LABEL_35;
      }

      v58 = v64;
      goto LABEL_43;
    case 4u:
      sub_1B4B94680(v76, v61);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_39;
      }

      v86 = v138;
      v85 = v139;
      v87 = v115;
      (*(v139 + 32))(v115, &v76[v79], v138);
      v88 = sub_1B4D1774C();
      v89 = *(v85 + 8);
      v89(v87, v86);
      goto LABEL_38;
    case 5u:
      sub_1B4B94680(v76, v58);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_43;
      }

      v81 = v139;
      v82 = *(v139 + 32);
      v83 = &v76[v79];
      v98 = &v140;
      goto LABEL_30;
    case 6u:
      v58 = v127;
      sub_1B4B94680(v76, v127);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_43;
      }

      v81 = v139;
      v82 = *(v139 + 32);
      v83 = &v76[v79];
      v98 = &v141;
      goto LABEL_30;
    case 7u:
      v58 = v128;
      sub_1B4B94680(v76, v128);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_43;
      }

      v81 = v139;
      v82 = *(v139 + 32);
      v83 = &v76[v79];
      v98 = &v142;
LABEL_30:
      v84 = *(v98 - 32);
      goto LABEL_33;
    case 8u:
      v61 = v129;
      sub_1B4B94680(v76, v129);
      if (swift_getEnumCaseMultiPayload() != 8)
      {
LABEL_39:
        v58 = v61;
        goto LABEL_43;
      }

      v86 = v138;
      v104 = v139;
      v105 = v119;
      (*(v139 + 32))(v119, &v76[v79], v138);
      v88 = sub_1B4D1774C();
      v89 = *(v104 + 8);
      v89(v105, v86);
LABEL_38:
      v103 = v61;
LABEL_34:
      v89(v103, v86);
      goto LABEL_35;
    case 9u:
      v58 = v130;
      sub_1B4B94680(v76, v130);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_43;
      }

      v81 = v139;
      v82 = *(v139 + 32);
      v83 = &v76[v79];
      v84 = v120;
      goto LABEL_33;
    case 0xAu:
      v58 = v131;
      sub_1B4B94680(v76, v131);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_43;
      }

      v81 = v139;
      v82 = *(v139 + 32);
      v83 = &v76[v79];
      v84 = v121;
      goto LABEL_33;
    case 0xBu:
      v58 = v132;
      sub_1B4B94680(v76, v132);
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_43;
      }

      v81 = v139;
      v82 = *(v139 + 32);
      v83 = &v76[v79];
      v84 = v122;
      goto LABEL_33;
    case 0xCu:
      v58 = v133;
      sub_1B4B94680(v76, v133);
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_43;
      }

      v81 = v139;
      v82 = *(v139 + 32);
      v83 = &v76[v79];
      v84 = v123;
      goto LABEL_33;
    case 0xDu:
      v58 = v134;
      sub_1B4B94680(v76, v134);
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_43;
      }

      v81 = v139;
      v82 = *(v139 + 32);
      v83 = &v76[v79];
      v84 = v124;
      goto LABEL_33;
    case 0xEu:
      v58 = v135;
      sub_1B4B94680(v76, v135);
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_43;
      }

      v81 = v139;
      v82 = *(v139 + 32);
      v83 = &v76[v79];
      v84 = v125;
      goto LABEL_33;
    case 0xFu:
      v58 = v136;
      sub_1B4B94680(v76, v136);
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_43;
      }

      v81 = v139;
      v82 = *(v139 + 32);
      v83 = &v76[v79];
      v84 = v126;
LABEL_33:
      v86 = v138;
      v82(v84, v83, v138);
      v88 = sub_1B4D1774C();
      v89 = *(v81 + 8);
      v89(v84, v86);
      v103 = v58;
      goto LABEL_34;
    default:
      sub_1B4B94680(v76, v73);
      if (swift_getEnumCaseMultiPayload())
      {
        v58 = v73;
LABEL_43:
        (*(v139 + 8))(v58, v138);
        sub_1B4975024(v76, &qword_1EB8ABFE0, &qword_1B4D39918);
        v88 = 0;
      }

      else
      {
        v108 = v138;
        v107 = v139;
        v109 = v111;
        (*(v139 + 32))(v111, &v76[v79], v138);
        v88 = sub_1B4D1774C();
        v110 = *(v107 + 8);
        v110(v109, v108);
        v110(v73, v108);
LABEL_35:
        sub_1B49CA284(v80);
      }

      return v88 & 1;
  }
}

uint64_t sub_1B4BCE39C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B4BCE3E4(uint64_t a1)
{
  sub_1B4BCE49C(319, &qword_1EDC3CE60);
  if (v1 <= 0x3F)
  {
    sub_1B4BCE49C(319, &qword_1EDC3CE70);
    if (v2 <= 0x3F)
    {
      sub_1B4BCE49C(319, &qword_1EDC3CE68);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B4BCE49C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B4D1777C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t RingsProperties.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = *(a1 + 16);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v27 = a2;
    v28 = v8;
    v32 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCEB88(0, v12, 0);
    v15 = 0;
    v13 = v32;
    v29 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v15 < *(v11 + 16))
    {
      sub_1B4BCEBA8(v29 + *(v5 + 72) * v15, v10);
      v16 = v30;
      sub_1B4BCEBA8(v10, v30);
      RingsPropertyRecord.init(_:)(v16, v31);
      if (v2)
      {
        sub_1B4BCEC0C(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
        sub_1B4BCEC0C(v28, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
      }

      v17 = v11;
      v18 = v5;
      result = sub_1B4BCEC0C(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
      v32 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1B4BCEB88((v19 > 1), v20 + 1, 1);
        v13 = v32;
      }

      ++v15;
      *(v13 + 16) = v20 + 1;
      v21 = (v13 + (v20 << 6));
      v22 = v31[0];
      v23 = v31[1];
      v24 = v31[3];
      v21[4] = v31[2];
      v21[5] = v24;
      v21[2] = v22;
      v21[3] = v23;
      v5 = v18;
      v11 = v17;
      if (v12 == v15)
      {
        a2 = v27;
        v8 = v28;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v25 = *v8;
    v26 = v8[1];
    result = sub_1B4BCEC0C(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    *a2 = v25;
    a2[1] = v26;
    a2[2] = v13;
  }

  return result;
}

uint64_t RingsProperties.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  sub_1B4BCF87C(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BCE814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v25 = a3;
  *a1 = a2;
  a1[1] = a3;
  v12 = *(a4 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v21 = a1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF73C(0, v12, 0);
    v13 = v34;
    v14 = a4 + 32;
    while (1)
    {
      sub_1B4B6F2FC(v14, v30);
      v15 = v31;
      v16 = v32;
      v17 = sub_1B497558C(&v33, &v29);
      v26[0] = v24;
      v26[1] = v25;
      v27 = v15;
      v28 = v16;
      MEMORY[0x1EEE9AC00](v17);
      *(&v21 - 2) = v26;
      sub_1B4BCF87C(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyRecord);
      sub_1B4D17DAC();
      if (v4)
      {
        break;
      }

      sub_1B4B6F358(v30);
      sub_1B4B6F358(v26);
      v34 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF73C((v18 > 1), v19 + 1, 1);
        v13 = v34;
      }

      *(v13 + 16) = v19 + 1;
      sub_1B4BCF8C4(v11, v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19);
      v14 += 64;
      if (!--v12)
      {
        a1 = v21;
        goto LABEL_9;
      }
    }

    sub_1B4B6F358(v30);
    sub_1B4B6F358(v26);
  }

  else
  {
LABEL_9:

    a1[2] = v13;
  }

  return result;
}

uint64_t sub_1B4BCEA98()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  sub_1B4BCF87C(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);
  return sub_1B4D17DAC();
}

char *sub_1B4BCEB68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD68A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEB88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6994(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B4BCEBA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BCEC0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1B4BCECFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6AA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCED1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCED3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6CF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCED5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6D18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCED7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6D40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCED9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6D68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEDBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEDDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6EC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEDFC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6EEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEE1C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD6FFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEE3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEE5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD720C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEE7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEE9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEEBC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEEDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD745C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEEFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEF1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD74A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEF3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD74CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEF5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD74F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEF7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEF9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEFBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD755C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCEFDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD767C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCEFFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7690(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF01C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD76B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF03C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD76DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF05C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7704(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF07C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD772C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF09C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7874(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF0BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD79A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF0DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD79CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF0FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD79F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF11C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7B00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF13C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF15C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7D48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF17C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7E4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF19C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7E74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF1BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF1DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7FCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF1FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF21C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD801C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF23C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF25C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8064(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF27C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8088(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF29C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD80AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF2BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD7754(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF2DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD80C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF2FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD80E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF31C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD80F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF33C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD810C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF35C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD821C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF37C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF39C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF3BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF3DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD83BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF3FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD83E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF41C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF43C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD854C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF45C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8658(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF47C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8680(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF49C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD86A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF4BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD86D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF4DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD86F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF4FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8720(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF51C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF53C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF55C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8798(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF57C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD87C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF59C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD87E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF5BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD891C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF5DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8B28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF5FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF61C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF63C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF65C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8E6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF67C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8E94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF69C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8EBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF6BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD8EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF6DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD9050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF6FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD9078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF71C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD90A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF73C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD90C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF75C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD90F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF77C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD9118(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF79C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD9140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4BCF7BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD9260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF7DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD9360(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF7FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD9494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF81C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD94BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF83C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD95F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4BCF85C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4CD9614(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B4BCF87C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4BCF8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ActivityAchievementAward.init(_:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v80 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v75 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v75 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7048, &qword_1B4D1CC00);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v75 - v24;
  v26 = sub_1B4D175FC();
  v82 = *(v26 - 8);
  v83 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v84 = &v75 - v29;
  v30 = sub_1B4D1796C();
  v31 = *(*(v30 - 8) + 56);
  v78 = v25;
  v31(v25, 1, 1, v30);
  v32 = sub_1B4D179BC();
  v33 = *(*(v32 - 8) + 56);
  v79 = v22;
  v33(v22, 1, 1, v32);
  v85 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v34 = v85[8];
  v35 = a1;
  sub_1B4BD15DC(a1 + v34, v9);
  v36 = *(v11 + 48);
  if (v36(v9, 1, v10) == 1)
  {
    *v19 = 0;
    *(v19 + 2) = 0;
    sub_1B4D17BBC();
    if (v36(v9, 1, v10) != 1)
    {
      sub_1B4BD164C(v9);
    }
  }

  else
  {
    sub_1B4BD1990(v9, v19, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  }

  sub_1B4BD1930(v19, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v37 = v77;
  sub_1B4BD15DC(v35 + v34, v77);
  if (v36(v37, 1, v10) == 1)
  {
    *v16 = 0;
    *(v16 + 2) = 0;
    sub_1B4D17BBC();
    if (v36(v37, 1, v10) != 1)
    {
      sub_1B4BD164C(v37);
    }
  }

  else
  {
    sub_1B4BD1990(v37, v16, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  }

  sub_1B4BD1930(v16, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v38 = v35;
  v39 = v35 + v34;
  v40 = v80;
  sub_1B4BD15DC(v39, v80);
  if (v36(v40, 1, v10) == 1)
  {
    *v13 = 0;
    *(v13 + 2) = 0;
    sub_1B4D17BBC();
    v41 = v36(v40, 1, v10);
    v42 = v82;
    if (v41 != 1)
    {
      sub_1B4BD164C(v40);
    }
  }

  else
  {
    sub_1B4BD1990(v40, v13, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
    v42 = v82;
  }

  sub_1B4BD1930(v13, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v43 = v84;
  sub_1B4D175DC();
  v44 = v85;
  v45 = (v35 + v85[9]);
  if (v45[1])
  {
    v46 = 0;
    v47 = v83;
    v48 = v81;
  }

  else
  {
    v46 = *(v35 + v85[10] + 8);
    v47 = v83;
    v48 = v81;
    if (v46)
    {
      v49 = *v45;

      v50 = sub_1B4D1817C();

      v51 = [objc_opt_self() unitFromString_];

      v46 = [objc_opt_self() quantityWithUnit:v51 doubleValue:v49];
    }
  }

  v52 = v38 + v44[11];
  if (*(v52 + 8))
  {
    v53 = 0;
  }

  else
  {
    v53 = *(v38 + v44[12] + 8);
    if (v53)
    {
      v54 = *v52;

      v55 = sub_1B4D1817C();

      v56 = [objc_opt_self() unitFromString_];

      v53 = [objc_opt_self() quantityWithUnit:v56 doubleValue:v54];
      v43 = v84;
    }
  }

  v57 = *v38;
  v58 = *(v38 + 8);
  (*(v42 + 16))(v48, v43, v47);
  if (*(v38 + 24) == 1)
  {
    v59 = *(v38 + 16);
    v83 = v46;
    v84 = v53;
    v60 = v48;
    v61 = v38;
    LODWORD(v82) = v59 != 0;
    v62 = v43;
    v63 = *(v42 + 8);

    v63(v62, v47);
    v64 = *(v38 + 28);
    v65 = (v38 + v85[13]);
    v67 = *v65;
    v66 = v65[1];

    sub_1B4BD1930(v61, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
    v68 = v76;
    *v76 = v57;
    *(v68 + 1) = v58;
    v69 = type metadata accessor for ActivityAchievementAward(0);
    result = (*(v42 + 32))(&v68[v69[5]], v60, v47);
    v68[v69[6]] = v82;
    *&v68[v69[7]] = v64;
    v71 = v84;
    *&v68[v69[8]] = v83;
    *&v68[v69[9]] = v71;
    v72 = &v68[v69[10]];
    *v72 = v67;
    *(v72 + 1) = v66;
  }

  else
  {
    sub_1B4BD16B4();
    swift_allocError();
    *v73 = 0;
    swift_willThrow();

    v74 = *(v42 + 8);
    v74(v48, v47);
    v74(v43, v47);
    return sub_1B4BD1930(v38, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
  }

  return result;
}

uint64_t ActivityAchievementAward.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4BD1A18(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.Award);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD0310(uint64_t a1, uint64_t *a2, double a3)
{
  v57 = a1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActivityAchievementAward(0);
  v9 = sub_1B4D1759C();
  if (v10 & 1) != 0 || (v11 = v9, v12 = sub_1B4D175AC(), (v13) || (v14 = v12, v15 = sub_1B4D1757C(), (v16))
  {
    sub_1B4BD16B4();
    swift_allocError();
    *v17 = 1;
    return swift_willThrow();
  }

  else
  {
    v19 = a2[1];
    v54 = *a2;
    v55 = v15;
    v20 = v57;

    v56 = &v54;
    *v20 = v54;
    *(v20 + 8) = v19;
    MEMORY[0x1EEE9AC00](v21);
    *(&v54 - 4) = v11;
    *(&v54 - 3) = v14;
    *(&v54 - 2) = v55;
    sub_1B4BD1A18(&qword_1EB8AC020, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
    sub_1B4D17DAC();
    v22 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
    v23 = *(v22 + 32);
    sub_1B4BD164C(v20 + v23);
    sub_1B4BD1990(v7, v20 + v23, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
    v24 = v20 + v23;
    v25 = v20;
    result = (*(v5 + 56))(v24, 0, 1, v4);
    *(v20 + 16) = *(a2 + v8[6]);
    *(v20 + 24) = 1;
    v26 = *(a2 + v8[7]);
    if (HIDWORD(v26))
    {
      __break(1u);
    }

    else
    {
      *(v20 + 28) = v26;
      v27 = *(a2 + v8[8]);
      v28 = 0x1FA925000;
      v29 = v22;
      if (v27)
      {
        v30 = v27;
        [v30 _value];
        v31 = v25 + *(v22 + 36);
        *v31 = v32;
        *(v31 + 8) = 0;
        v33 = [v30 _unit];
        v34 = [v33 unitString];

        v35 = sub_1B4D1818C();
        v37 = v36;

        v25 = v57;
        v38 = (v25 + v29[10]);

        v28 = 0x1FA925000uLL;
        *v38 = v35;
        v38[1] = v37;
      }

      v39 = *(a2 + v8[9]);
      if (v39)
      {
        v40 = v28;
        v41 = v39;
        [v41 (v40 + 2168)];
        v42 = v25 + v29[11];
        *v42 = v43;
        *(v42 + 8) = 0;
        v44 = [v41 _unit];
        v45 = [v44 unitString];

        v46 = sub_1B4D1818C();
        v48 = v47;

        v25 = v57;
        v49 = (v25 + v29[12]);

        *v49 = v46;
        v49[1] = v48;
      }

      v50 = (a2 + v8[10]);
      v51 = v50[1];
      if (v51)
      {
        v52 = *v50;
        v53 = (v25 + v29[13]);

        *v53 = v52;
        v53[1] = v51;
      }
    }
  }

  return result;
}

_DWORD *sub_1B4BD070C(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *result = a2;
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result[1] = a3;
  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a4 <= 0x7FFFFFFF)
  {
    result[2] = a4;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B4BD077C(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4BD1A18(&qword_1EB8AC018, type metadata accessor for ActivityAchievementAward, &protocol conformance descriptor for ActivityAchievementAward);
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4BD1A18(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.Award);
    v1 = sub_1B4D17D6C();
    sub_1B4BD1930(v6, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
  }

  return v1;
}

uint64_t sub_1B4BD08FC()
{
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4BD1A18(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.Award);
  return sub_1B4D17DAC();
}

uint64_t AwardsContext.init(_:)@<X0>(double *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for ActivityAchievementAward(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4D1777C();
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v48 = &v44 - v24;
  sub_1B4D176CC();
  v47 = v22;
  sub_1B4D176CC();
  v25 = *a1;
  v26 = *(*a1 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v51 = a1;
  v45 = a2;
  v46 = v17;
  if (v26)
  {
    v56 = MEMORY[0x1E69E7CC0];
    v52 = v26;
    v54 = v25;
    result = sub_1B4BCED5C(0, v26, 0);
    v29 = 0;
    v27 = v56;
    v30 = v54;
    v53 = v54 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v29 < *(v30 + 16))
    {
      sub_1B4BD18C8(v53 + *(v6 + 72) * v29, v10, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      v31 = v55;
      sub_1B4BD18C8(v10, v55, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      ActivityAchievementAward.init(_:)(v31, v14);
      if (v2)
      {
        sub_1B4BD1930(v10, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
        v34 = v50;
        v35 = *(v49 + 8);
        v35(v47, v50);
        v35(v48, v34);
        sub_1B4BD1930(v51, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
      }

      sub_1B4BD1930(v10, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      v56 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1B4BCED5C((v32 > 1), v33 + 1, 1);
        v27 = v56;
      }

      ++v29;
      *(v27 + 16) = v33 + 1;
      result = sub_1B4BD1990(v14, v27 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v33, type metadata accessor for ActivityAchievementAward);
      v30 = v54;
      if (v52 == v29)
      {
        v17 = v46;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v37 = v48;
    v36 = v49;
    v38 = *(v49 + 16);
    v39 = v50;
    v38(v44, v48, v50);
    v40 = v17;
    v41 = v47;
    v38(v40, v47, v39);
    type metadata accessor for AwardsContext(0);
    v42 = v45;
    sub_1B4D174CC();
    v43 = *(v36 + 8);
    v43(v41, v39);
    v43(v37, v39);
    result = sub_1B4BD1930(v51, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    *v42 = v27;
  }

  return result;
}

uint64_t AwardsContext.protobuf()(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  sub_1B4BD1A18(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD0F40(double *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityAchievementAward(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4D1777C();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(*a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v31 = a2;
    v32 = a1;
    v42 = MEMORY[0x1E69E7CC0];
    result = sub_1B4BCF75C(0, v14, 0);
    v17 = 0;
    v15 = v42;
    v37 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v18 = v33;
    while (v17 < *(v13 + 16))
    {
      v19 = sub_1B4BD18C8(v37 + *(v7 + 72) * v17, v18, type metadata accessor for ActivityAchievementAward);
      MEMORY[0x1EEE9AC00](v19);
      *(&v31 - 2) = v18;
      sub_1B4BD1A18(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.Award);
      sub_1B4D17DAC();
      if (v3)
      {
        sub_1B4BD1930(v18, type metadata accessor for ActivityAchievementAward);
      }

      v40 = 0;
      v20 = v13;
      v21 = v7;
      sub_1B4BD1930(v18, type metadata accessor for ActivityAchievementAward);
      v42 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B4BCF75C((v22 > 1), v23 + 1, 1);
        v18 = v33;
        v15 = v42;
      }

      ++v17;
      *(v15 + 16) = v23 + 1;
      result = sub_1B4BD1990(v41, v15 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v23, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      v7 = v21;
      v13 = v20;
      v3 = v40;
      if (v14 == v17)
      {
        a1 = v32;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = v2;
LABEL_11:

    *a1 = v15;
    type metadata accessor for AwardsContext(0);
    v24 = v34;
    sub_1B4D174DC();
    sub_1B4D176DC();
    v26 = v25;
    v27 = v36;
    v28 = *(v35 + 8);
    v28(v24, v36);
    *(a1 + 1) = v26;
    sub_1B4D174BC();
    sub_1B4D176DC();
    v30 = v29;
    result = (v28)(v24, v27);
    *(a1 + 2) = v30;
  }

  return result;
}

uint64_t sub_1B4BD139C(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4BD1A18(&qword_1EB8AC010, type metadata accessor for AwardsContext, &protocol conformance descriptor for AwardsContext);
  (*(v8 + 32))(a1, v8);
  if (!v3)
  {
    sub_1B4BD1A18(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext);
    v2 = sub_1B4D17D6C();
    sub_1B4BD1930(v7, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  }

  return v2;
}

uint64_t sub_1B4BD151C(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  sub_1B4BD1A18(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD15DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BD164C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4BD16B4()
{
  result = qword_1EB8ABFF0;
  if (!qword_1EB8ABFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABFF0);
  }

  return result;
}

unint64_t sub_1B4BD1874()
{
  result = qword_1EB8AC008;
  if (!qword_1EB8AC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC008);
  }

  return result;
}

uint64_t sub_1B4BD18C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BD1930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BD1990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BD1A18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HighestDailyStepCountAnniversaryFact.init(stepCount:dateEarned:yearsAgoEarned:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for HighestDailyStepCountAnniversaryFact(0);
  v8 = *(v7 + 20);
  v9 = sub_1B4D1777C();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t type metadata accessor for HighestDailyStepCountAnniversaryFact(uint64_t a1)
{
  result = qword_1EB8AC040;
  if (!qword_1EB8AC040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static HighestDailyStepCountAnniversaryFact.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for HighestDailyStepCountAnniversaryFact(0);
  return (sub_1B4D1774C() & 1) != 0 && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
}

uint64_t sub_1B4BD1BF0()
{
  v1 = 0x6E72614565746164;
  if (*v0 != 1)
  {
    v1 = 0x6F67417372616579;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E756F4370657473;
  }
}

uint64_t sub_1B4BD1C60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4BD25B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4BD1C88(uint64_t a1)
{
  v2 = sub_1B4BD1ED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BD1CC4(uint64_t a1)
{
  v2 = sub_1B4BD1ED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HighestDailyStepCountAnniversaryFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC028, &qword_1B4D39A90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BD1ED4();
  sub_1B4D18EFC();
  v8[15] = 0;
  sub_1B4D18CEC();
  if (!v1)
  {
    type metadata accessor for HighestDailyStepCountAnniversaryFact(0);
    v8[14] = 1;
    sub_1B4D1777C();
    sub_1B49B1198(&qword_1EDC37820, MEMORY[0x1E6969538]);
    sub_1B4D18D0C();
    v8[13] = 2;
    sub_1B4D18CEC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B4BD1ED4()
{
  result = qword_1EB8AC030;
  if (!qword_1EB8AC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC030);
  }

  return result;
}

uint64_t HighestDailyStepCountAnniversaryFact.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1B4D1777C();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC038, &qword_1B4D39A98);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for HighestDailyStepCountAnniversaryFact(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BD1ED4();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = a1;
  v13 = v24;
  v12 = v25;
  v14 = v26;
  v30 = 0;
  v15 = sub_1B4D18BEC();
  v21 = v11;
  *v11 = v15;
  v29 = 1;
  sub_1B49B1198(&qword_1EB8A6FB8, MEMORY[0x1E6969558]);
  sub_1B4D18C0C();
  v16 = *(v12 + 32);
  v17 = v21;
  v20 = *(v9 + 20);
  v16(v21 + v20, v6, v14);
  v28 = 2;
  v18 = sub_1B4D18BEC();
  (*(v13 + 8))(v8, v27);
  *(v17 + *(v9 + 24)) = v18;
  sub_1B4BD2288(v17, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return sub_1B4BD22EC(v17);
}

uint64_t sub_1B4BD2288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighestDailyStepCountAnniversaryFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BD22EC(uint64_t a1)
{
  v2 = type metadata accessor for HighestDailyStepCountAnniversaryFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1B4BD2378(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_1B4D1774C())
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  return 0;
}

uint64_t sub_1B4BD241C(uint64_t a1)
{
  result = sub_1B4D1777C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4BD24AC()
{
  result = qword_1EB8AC050;
  if (!qword_1EB8AC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC050);
  }

  return result;
}

unint64_t sub_1B4BD2504()
{
  result = qword_1EB8AC058;
  if (!qword_1EB8AC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC058);
  }

  return result;
}

unint64_t sub_1B4BD255C()
{
  result = qword_1EB8AC060;
  if (!qword_1EB8AC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC060);
  }

  return result;
}

uint64_t sub_1B4BD25B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E756F4370657473 && a2 == 0xE900000000000074;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E72614565746164 && a2 == 0xEA00000000006465 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F67417372616579 && a2 == 0xEE0064656E726145)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

FitnessIntelligence::AnnounceUtteranceSource_optional __swiftcall AnnounceUtteranceSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AnnounceUtteranceSource.rawValue.getter()
{
  v1 = 0x6F6E6E4169726973;
  if (*v0 != 1)
  {
    v1 = 0x6D6165727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746365726964;
  }
}

uint64_t sub_1B4BD27A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6E6E4169726973;
  v4 = 0xEC00000065636E75;
  if (v2 != 1)
  {
    v3 = 0x6D6165727473;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746365726964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6F6E6E4169726973;
  v8 = 0xEC00000065636E75;
  if (*a2 != 1)
  {
    v7 = 0x6D6165727473;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746365726964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

unint64_t sub_1B4BD28B4()
{
  result = qword_1EB8AC068;
  if (!qword_1EB8AC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC068);
  }

  return result;
}

uint64_t sub_1B4BD2908()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BD29AC(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BD2A3C(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4BD2AE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEC00000065636E75;
  v5 = 0x6F6E6E4169726973;
  if (v2 != 1)
  {
    v5 = 0x6D6165727473;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746365726964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1B4BD2C08()
{
  result = qword_1EB8AC070;
  if (!qword_1EB8AC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC070);
  }

  return result;
}

uint64_t WorkoutProperties.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v69 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v88 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v69 - v13;
  v79 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v87 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  MEMORY[0x1EEE9AC00](v89);
  v16 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v69 - v19;
  v20 = *a1;
  v83 = a1[1];
  v84 = v20;
  v21 = a1[2];
  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v69 = a2;
  v70 = a1;
  if (!v22)
  {
    result = MEMORY[0x1E69E7CC0];
    v55 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v55)
    {
LABEL_27:

      result = sub_1B4BD3A2C(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      v58 = MEMORY[0x1E69E7CC0];
LABEL_28:
      v68 = v83;
      *a2 = v84;
      a2[1] = v68;
      a2[2] = v58;
      return result;
    }

LABEL_19:
    *&v96[0] = v23;
    v56 = result;
    sub_1B4BCECFC(0, v55, 0);
    v88 = v56;
    v57 = v56 + 32;
    v58 = *&v96[0];
    for (i = v55 - 1; ; --i)
    {
      sub_1B498ADFC(v57, &v90);
      v97 = v91;
      v98 = v92;
      v99 = v93;
      v100 = v94;
      sub_1B496F398(&v95, &v105 + 8);
      *&v101 = v84;
      *(&v101 + 1) = v83;
      v102 = v97;
      v103 = v98;
      v104 = v99;
      *&v105 = v100;
      *&v96[0] = v58;
      v61 = *(v58 + 16);
      v60 = *(v58 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1B4BCECFC((v60 > 1), v61 + 1, 1);
        v58 = *&v96[0];
      }

      *(v58 + 16) = v61 + 1;
      v62 = (v58 + 112 * v61);
      v63 = v101;
      v64 = v103;
      v62[3] = v102;
      v62[4] = v64;
      v62[2] = v63;
      v65 = v104;
      v66 = v105;
      v67 = v107;
      v62[7] = v106;
      v62[8] = v67;
      v62[5] = v65;
      v62[6] = v66;
      if (!i)
      {
        break;
      }

      v57 += 112;
    }

    sub_1B4BD3A2C(v70, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);

    a2 = v69;
    goto LABEL_28;
  }

  v24 = v8;
  v25 = v18;
  v75 = v9;
  v80 = v24;
  v108 = MEMORY[0x1E69E7CC0];
  v86 = v22;
  result = sub_1B4BCECFC(0, v22, 0);
  v27 = v79;
  if (*(v21 + 16))
  {
    v28 = 0;
    result = v108;
    v29 = v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v76 = (v87 + 48);
    v81 = (v88 + 48);
    v71 = *(v25 + 72);
    v72 = v21;
    v73 = v86 - 1;
    v74 = v11;
    while (1)
    {
      v87 = v3;
      v88 = result;
      v82 = v29;
      v30 = v109;
      sub_1B4BD39C8(v29, v109);
      sub_1B4BD39C8(v30, v16);
      v31 = *v16;
      v85 = v16[1];
      v86 = v31;
      v32 = v78;
      sub_1B4974FBC(v16 + *(v89 + 28), v78, &qword_1EB8A7CE8, &qword_1B4D201A0);
      v33 = *v76;
      if ((*v76)(v32, 1, v27) == 1)
      {
        v34 = v77;
        sub_1B4D17BBC();
        v35 = (v34 + v27[5]);
        *v35 = 0;
        v35[1] = 0;
        v36 = (v34 + v27[6]);
        *v36 = 0;
        v36[1] = 0;
        v37 = v34 + v27[7];
        *v37 = 0;
        *(v37 + 8) = 1;
        v38 = v34 + v27[8];
        *v38 = 0;
        *(v38 + 8) = 1;
        v39 = (v34 + v27[9]);
        *v39 = 0;
        v39[1] = 0;
        v40 = (v34 + v27[10]);
        *v40 = 0;
        v40[1] = 0;
        if (v33(v32, 1, v27) != 1)
        {
          sub_1B4975024(v32, &qword_1EB8A7CE8, &qword_1B4D201A0);
        }
      }

      else
      {
        v34 = v77;
        sub_1B4BD3B80(v32, v77, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      }

      v41 = v87;
      WorkoutPropertyDimensions.init(_:)(v34, &v90);
      v3 = v41;
      if (v41)
      {
        sub_1B4BD3A2C(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
        sub_1B4BD3A2C(v109, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
        sub_1B4BD3A2C(v70, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      }

      v97 = v90;
      v98 = v91;
      v99 = v92;
      v100 = v93;
      v42 = v80;
      sub_1B4974FBC(v16 + *(v89 + 32), v80, &qword_1EB8A7CD8, &unk_1B4D20190);
      v43 = *v81;
      v44 = v75;
      if ((*v81)(v42, 1, v75) == 1)
      {
        v45 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
        v46 = v74;
        (*(*(v45 - 8) + 56))(v74, 1, 1, v45);
        sub_1B4D17BBC();
        if (v43(v42, 1, v44) != 1)
        {
          sub_1B4975024(v80, &qword_1EB8A7CD8, &unk_1B4D20190);
        }
      }

      else
      {
        v46 = v74;
        sub_1B4BD3B80(v42, v74, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
      }

      sub_1B4BEEFE8(v46, v96);
      v27 = v79;
      sub_1B4BD3A2C(v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
      sub_1B4BD3A2C(v46, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
      sub_1B496F398(v96, &v105 + 8);
      *&v101 = v86;
      *(&v101 + 1) = v85;
      v102 = v97;
      v103 = v98;
      v104 = v99;
      *&v105 = v100;
      sub_1B4BD3A2C(v109, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
      result = v88;
      v108 = v88;
      v48 = *(v88 + 16);
      v47 = *(v88 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1B4BCECFC((v47 > 1), v48 + 1, 1);
        result = v108;
      }

      *(result + 16) = v48 + 1;
      v49 = (result + 112 * v48);
      v50 = v101;
      v51 = v103;
      v49[3] = v102;
      v49[4] = v51;
      v49[2] = v50;
      v52 = v104;
      v53 = v105;
      v54 = v107;
      v49[7] = v106;
      v49[8] = v54;
      v49[5] = v52;
      v49[6] = v53;
      if (v73 == v28)
      {
        break;
      }

      v29 = v82 + v71;
      if (++v28 >= *(v72 + 16))
      {
        goto LABEL_29;
      }
    }

    a2 = v69;
    a1 = v70;
    v23 = MEMORY[0x1E69E7CC0];
    v55 = *(result + 16);
    if (!v55)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t WorkoutProperties.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  sub_1B4BD3B38(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD3610(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v25 = a3;
  *a1 = a2;
  a1[1] = a3;
  v12 = *(a4 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v21 = a1;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF77C(0, v12, 0);
    v13 = v40;
    v14 = a4 + 32;
    v41 = v12 - 1;
    while (1)
    {
      sub_1B498ADFC(v14, v33);
      v36 = v33[1];
      v37 = v33[2];
      v38 = v33[3];
      v39 = v34;
      v15 = sub_1B497558C(&v35, &v32);
      v27[0] = v24;
      v27[1] = v25;
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      MEMORY[0x1EEE9AC00](v15);
      *(&v21 - 2) = v27;
      sub_1B498B0D4(&v36, &v26);
      sub_1B4BD3B38(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
      sub_1B4D17DAC();
      if (v4)
      {
        sub_1B498AE58(v33);
        sub_1B498AE58(v27);
      }

      v16 = v11;
      sub_1B498AE58(v33);
      sub_1B498AE58(v27);
      v40 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B4BCF77C((v17 > 1), v18 + 1, 1);
        v13 = v40;
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18;
      v11 = v16;
      sub_1B4BD3B80(v16, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
      if (!v41)
      {
        break;
      }

      --v41;
      v14 += 112;
    }

    a1 = v21;
  }

  a1[2] = v13;
  return result;
}

uint64_t sub_1B4BD38F8()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  sub_1B4BD3B38(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BD39C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BD3A2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BD3B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4BD3B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t static WorkoutVoiceLongestDistanceFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BD53CC(v3, v1, v2);
}

uint64_t static WorkoutVoiceLongestDistanceFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4BD6434(a1, a3, a4);
}

uint64_t WorkoutVoiceLongestDistanceFact.QueryIdentifier.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutVoiceLongestDistanceFact.QueryIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000019;
  v2 = 0xD000000000000015;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_1B4BD3DE0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BD3E90(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BD3F2C(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B4BD3FE4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000019;
  v3 = "e of <distance_milestone>.";
  v4 = "lastSixWeeksWorkoutProperties";
  v5 = 0xD000000000000015;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v4 = "ness_plus_modality> workout.";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001ALL;
    v3 = "rmatted_average_duration>.";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

double sub_1B4BD4054@<D0>(char *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v10 = *a1;
  v11 = [objc_opt_self() meters];
  v12 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  v13 = *(a4 + *(type metadata accessor for WorkoutState(0) + 24));
  *a5 = 17;
  a5[v12[6]] = v10;
  *&a5[v12[7]] = v13;
  v14 = &a5[v12[8]];
  *v14 = a2;
  v14[1] = a3;
  (*(*(v12 - 1) + 56))(a5, 0, 1, v12);
  v15 = v13;

  return result;
}

id WorkoutVoiceLongestDistanceFact.makePrompt(promptFormatter:)()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  v3 = *(v0 + v2[7]);
  v4 = sub_1B4D133E8(v0 + v2[5], v3, 0, 1);
  v6 = v5;
  [v3 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v8 = result;
    v9 = sub_1B4D1818C();
    v11 = v10;

    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0xD000000000000031, 0x80000001B4D62E30);
    MEMORY[0x1B8C7C620](v9, v11);

    MEMORY[0x1B8C7C620](0x74756F6B726F7720, 0xE900000000000020);
    v12 = *(v1 + v2[6]);
    if (v12 <= 1)
    {
      if (*(v1 + v2[6]))
      {
        v13 = 0xE90000000000006BLL;
        v14 = 0x6565772073696874;
      }

      else
      {
        v13 = 0xE800000000000000;
        v14 = 0x7961642073696874;
      }
    }

    else if (v12 == 2)
    {
      v13 = 0xEA00000000006874;
      v14 = 0x6E6F6D2073696874;
    }

    else if (v12 == 3)
    {
      v13 = 0xE900000000000072;
      v14 = 0x6165792073696874;
    }

    else
    {
      v13 = 0xE400000000000000;
      v14 = 1919252069;
    }

    MEMORY[0x1B8C7C620](v14, v13);

    MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D62E70);
    MEMORY[0x1B8C7C620](v4, v6);

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4BD43BC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BD53CC(v3, v1, v2);
}

uint64_t sub_1B4BD43FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DD034;

  return sub_1B4BD6434(a1, a3, a4);
}

uint64_t sub_1B4BD44C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, void (*a7)(uint64_t *, uint64_t *, uint64_t, uint64_t, uint64_t, double)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v106 = a8;
  v121 = a6;
  v123 = a5;
  v111 = a1;
  v113 = a9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v104 - v16;
  if (*(a2 + 16))
  {
    v17 = *(a2 + 16);
    v105 = a7;
    v18 = (a2 + 32);
    v107 = (v14 + 8);
    *&v15 = 136315394;
    v117 = v15;
    *&v15 = 136316418;
    v112 = v15;
    v120 = a3;
    v122 = a4;
    for (i = v17; i; --i)
    {
      v20 = *v18;
      v125 = v18 + 1;
      memcpy(v128, v123, sizeof(v128));
      LOBYTE(v126) = v20;
      v127 = a4;
      *&result = COERCE_DOUBLE(sub_1B4C91D08(v128, &v126, &v127, a3));
      if (v9)
      {
        return result;
      }

      v24 = v23;
      if (v23)
      {
        v25 = *&result;
        v26 = v22;
        memcpy(v129, v121, 0x188uLL);
        if (sub_1B4B6D850(v129) == 1)
        {
        }

        else
        {
          memcpy(v128, v129, sizeof(v128));
          LOBYTE(v126) = v20;
          v127 = a4;
          v27 = COERCE_DOUBLE(sub_1B4C91D08(v128, &v126, &v127, a3));
          v30 = v29;
          v124 = i;
          if (!v29)
          {

            if (qword_1EDC36EF8 != -1)
            {
              swift_once();
            }

            v45 = sub_1B4D17F6C();
            __swift_project_value_buffer(v45, qword_1EDC36F00);
            v38 = sub_1B4D17F5C();
            v46 = sub_1B4D1870C();
            if (!os_log_type_enabled(v38, v46))
            {

              goto LABEL_114;
            }

            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v126 = v42;
            *v41 = v117;
            if (v122 > 0x11u)
            {
              if (v122 == 18)
              {
                v47 = 0xE90000000000006ELL;
                v48 = 0x6F69746176656C65;
                goto LABEL_99;
              }

              if (v122 == 19)
              {
                v47 = 0xE400000000000000;
                v48 = 1701011824;
                goto LABEL_99;
              }
            }

            else
            {
              if (v122 == 16)
              {
                v47 = 0xE800000000000000;
                v48 = 0x736569726F6C6163;
                goto LABEL_99;
              }

              if (v122 == 17)
              {
                v47 = 0xE800000000000000;
                v48 = 0x65636E6174736964;
LABEL_99:
                v95 = sub_1B49558AC(v48, v47, &v126);

                *(v41 + 4) = v95;
                *(v41 + 12) = 2080;
                v96 = 0xE90000000000006BLL;
                v97 = 0xE900000000000072;
                v98 = 0x6165792073696874;
                if (v20 != 3)
                {
                  v98 = 1919252069;
                  v97 = 0xE400000000000000;
                }

                if (v20 == 2)
                {
                  v98 = 0x6E6F6D2073696874;
                  v97 = 0xEA00000000006874;
                }

                v99 = 0x7961642073696874;
                if (v20)
                {
                  v99 = 0x6565772073696874;
                }

                else
                {
                  v96 = 0xE800000000000000;
                }

                if (v20 <= 1)
                {
                  v100 = v99;
                }

                else
                {
                  v100 = v98;
                }

                if (v20 <= 1)
                {
                  v101 = v96;
                }

                else
                {
                  v101 = v97;
                }

                v102 = sub_1B49558AC(v100, v101, &v126);

                *(v41 + 14) = v102;
                v77 = v46;
                v78 = v38;
                v79 = "factType %s no value in previous snapshot timescale %s";
                goto LABEL_113;
              }
            }

            v128[0] = 0x2874736574736166;
            v128[1] = 0xE800000000000000;
            v127 = v122;
            DistanceReference.rawValue.getter();
            sub_1B4BD7738();
            v94 = sub_1B4D18D5C();
            MEMORY[0x1B8C7C620](v94);

            (*v107)(v115, v116);
            MEMORY[0x1B8C7C620](41, 0xE100000000000000);
            v48 = v128[0];
            v47 = v128[1];
            goto LABEL_99;
          }

          v118 = v27;
          v119 = v28;
          if (v28 == v26 && v29 == v24 || (sub_1B4D18DCC() & 1) != 0 || v118 == v25)
          {
            if (qword_1EDC36EF8 != -1)
            {
              swift_once();
            }

            v31 = sub_1B4D17F6C();
            __swift_project_value_buffer(v31, qword_1EDC36F00);

            v32 = sub_1B4D17F5C();
            v33 = sub_1B4D1870C();

            LODWORD(v114) = v33;
            if (os_log_type_enabled(v32, v33))
            {
              v34 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v110 = v32;
              v126 = v109;
              *v34 = v112;
              v108 = v34;
              if (v122 > 0x11u)
              {
                if (v122 == 18)
                {
                  v35 = 0xE90000000000006ELL;
                  v36 = 0x6F69746176656C65;
                  goto LABEL_86;
                }

                if (v122 == 19)
                {
                  v35 = 0xE400000000000000;
                  v36 = 1701011824;
                  goto LABEL_86;
                }
              }

              else
              {
                if (v122 == 16)
                {
                  v35 = 0xE800000000000000;
                  v36 = 0x736569726F6C6163;
                  goto LABEL_86;
                }

                if (v122 == 17)
                {
                  v35 = 0xE800000000000000;
                  v36 = 0x65636E6174736964;
LABEL_86:
                  v84 = sub_1B49558AC(v36, v35, &v126);

                  v85 = v108;
                  *(v108 + 4) = v84;
                  *(v85 + 12) = 2048;
                  v86 = v119;
                  *(v85 + 14) = v118;
                  *(v85 + 22) = 2048;
                  *(v85 + 24) = v25;
                  *(v85 + 32) = 2080;
                  v87 = sub_1B49558AC(v86, v30, &v126);

                  *(v85 + 34) = v87;
                  *(v85 + 42) = 2080;
                  v88 = sub_1B49558AC(v26, v24, &v126);

                  *(v85 + 44) = v88;
                  *(v85 + 52) = 2080;
                  if (v20 <= 1)
                  {
                    LOBYTE(a4) = v122;
                    if (v20)
                    {
                      v90 = 0x6565772073696874;
                      v89 = 0xE90000000000006BLL;
                    }

                    else
                    {
                      v89 = 0xE800000000000000;
                      v90 = 0x7961642073696874;
                    }
                  }

                  else
                  {
                    LOBYTE(a4) = v122;
                    if (v20 == 2)
                    {
                      v89 = 0xEA00000000006874;
                      v90 = 0x6E6F6D2073696874;
                    }

                    else if (v20 == 3)
                    {
                      v89 = 0xE900000000000072;
                      v90 = 0x6165792073696874;
                    }

                    else
                    {
                      v89 = 0xE400000000000000;
                      v90 = 1919252069;
                    }
                  }

                  v91 = sub_1B49558AC(v90, v89, &v126);

                  *(v85 + 54) = v91;
                  v92 = v110;
                  _os_log_impl(&dword_1B4953000, v110, v114, "factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v85, 0x3Eu);
                  v93 = v109;
                  swift_arrayDestroy();
                  MEMORY[0x1B8C7DDA0](v93, -1, -1);
                  MEMORY[0x1B8C7DDA0](v85, -1, -1);

                  a3 = v120;
                  i = v124;
                  goto LABEL_4;
                }
              }

              v128[0] = 0x2874736574736166;
              v128[1] = 0xE800000000000000;
              v127 = v122;
              v81 = v115;
              DistanceReference.rawValue.getter();
              sub_1B4BD7738();
              v82 = sub_1B4D18D5C();
              v104 = v83;
              MEMORY[0x1B8C7C620](v82);

              (*v107)(v81, v116);
              MEMORY[0x1B8C7C620](41, 0xE100000000000000);
              v36 = v128[0];
              v35 = v128[1];
              goto LABEL_86;
            }

            LOBYTE(a4) = v122;
            i = v124;
            a3 = v120;
          }

          else
          {
            if (qword_1EDC36EF8 != -1)
            {
              swift_once();
            }

            v49 = sub_1B4D17F6C();
            __swift_project_value_buffer(v49, qword_1EDC36F00);

            v114 = sub_1B4D17F5C();
            v50 = sub_1B4D1873C();

            LODWORD(v110) = v50;
            v51 = v50;
            v52 = v114;
            if (os_log_type_enabled(v114, v51))
            {
              v53 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v128[0] = v109;
              *v53 = v112;
              LOBYTE(v126) = v122;
              v54 = WorkoutRecordFactType.description.getter();
              v108 = sub_1B49558AC(v54, v55, v128);

              *(v53 + 4) = v108;
              *(v53 + 12) = 2048;
              v56 = v119;
              *(v53 + 14) = v118;
              *(v53 + 22) = 2048;
              *(v53 + 24) = v25;
              *(v53 + 32) = 2080;
              v57 = sub_1B49558AC(v56, v30, v128);

              *(v53 + 34) = v57;
              *(v53 + 42) = 2080;
              *(v53 + 44) = sub_1B49558AC(v26, v24, v128);
              *(v53 + 52) = 2080;
              v58 = 0xE90000000000006BLL;
              v59 = 0xE900000000000072;
              v60 = 0x6165792073696874;
              if (v20 != 3)
              {
                v60 = 1919252069;
                v59 = 0xE400000000000000;
              }

              if (v20 == 2)
              {
                v60 = 0x6E6F6D2073696874;
                v59 = 0xEA00000000006874;
              }

              v61 = 0x7961642073696874;
              if (v20)
              {
                v61 = 0x6565772073696874;
              }

              else
              {
                v58 = 0xE800000000000000;
              }

              if (v20 <= 1)
              {
                v62 = v61;
              }

              else
              {
                v62 = v60;
              }

              if (v20 <= 1)
              {
                v63 = v58;
              }

              else
              {
                v63 = v59;
              }

              v64 = sub_1B49558AC(v62, v63, v128);

              *(v53 + 54) = v64;
              v65 = v114;
              _os_log_impl(&dword_1B4953000, v114, v110, "[NEW RECORD] factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v53, 0x3Eu);
              v66 = v109;
              swift_arrayDestroy();
              MEMORY[0x1B8C7DDA0](v66, -1, -1);
              MEMORY[0x1B8C7DDA0](v53, -1, -1);

              a3 = v120;
            }

            else
            {
            }

            v128[0] = v26;
            v128[1] = v24;
            MEMORY[0x1EEE9AC00](v67);
            *(&v104 - 2) = v128;
            v80 = sub_1B49B1748(sub_1B4AE535C, (&v104 - 4), v111);
            LOBYTE(a4) = v122;
            if (v80)
            {
              LOBYTE(v128[0]) = v122;
              LOBYTE(v126) = v20;
              v105(v128, &v126, a3, v26, v24, v25);
              *&result = COERCE_DOUBLE();
              return result;
            }

            i = v124;
          }
        }
      }

      else
      {
        v124 = i;
        if (qword_1EDC36EF8 != -1)
        {
          swift_once();
        }

        v37 = sub_1B4D17F6C();
        __swift_project_value_buffer(v37, qword_1EDC36F00);
        v38 = sub_1B4D17F5C();
        v39 = sub_1B4D1870C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = a4;
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v126 = v42;
          *v41 = v117;
          if (v40 > 0x11u)
          {
            if (v40 == 18)
            {
              v43 = 0xE90000000000006ELL;
              v44 = 0x6F69746176656C65;
            }

            else
            {
              if (v40 != 19)
              {
                goto LABEL_57;
              }

              v43 = 0xE400000000000000;
              v44 = 1701011824;
            }
          }

          else if (v40 == 16)
          {
            v43 = 0xE800000000000000;
            v44 = 0x736569726F6C6163;
          }

          else
          {
            if (v40 == 17)
            {
              v43 = 0xE800000000000000;
              v44 = 0x65636E6174736964;
              goto LABEL_60;
            }

LABEL_57:
            v128[0] = 0x2874736574736166;
            v128[1] = 0xE800000000000000;
            v127 = v122;
            DistanceReference.rawValue.getter();
            sub_1B4BD7738();
            v68 = sub_1B4D18D5C();
            MEMORY[0x1B8C7C620](v68);

            (*v107)(v115, v116);
            MEMORY[0x1B8C7C620](41, 0xE100000000000000);
            v44 = v128[0];
            v43 = v128[1];
          }

LABEL_60:
          v69 = sub_1B49558AC(v44, v43, &v126);

          *(v41 + 4) = v69;
          *(v41 + 12) = 2080;
          v70 = 0xE90000000000006BLL;
          v71 = 0xE900000000000072;
          v72 = 0x6165792073696874;
          if (v20 != 3)
          {
            v72 = 1919252069;
            v71 = 0xE400000000000000;
          }

          if (v20 == 2)
          {
            v72 = 0x6E6F6D2073696874;
            v71 = 0xEA00000000006874;
          }

          v73 = 0x7961642073696874;
          if (v20)
          {
            v73 = 0x6565772073696874;
          }

          else
          {
            v70 = 0xE800000000000000;
          }

          if (v20 <= 1)
          {
            v74 = v73;
          }

          else
          {
            v74 = v72;
          }

          if (v20 <= 1)
          {
            v75 = v70;
          }

          else
          {
            v75 = v71;
          }

          v76 = sub_1B49558AC(v74, v75, &v126);

          *(v41 + 14) = v76;
          v77 = v39;
          v78 = v38;
          v79 = "factType %s no value in current snapshot timescale %s";
LABEL_113:
          _os_log_impl(&dword_1B4953000, v78, v77, v79, v41, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B8C7DDA0](v42, -1, -1);
          MEMORY[0x1B8C7DDA0](v41, -1, -1);

          a3 = v120;
LABEL_114:
          LOBYTE(a4) = v122;
          i = v124;
          goto LABEL_4;
        }

        i = v124;
      }

LABEL_4:
      v18 = v125;
    }
  }

  v103 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  *&result = COERCE_DOUBLE((*(*(v103 - 8) + 56))(v113, 1, 1, v103));
  return result;
}

unint64_t sub_1B4BD53CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateRangeDescriptor(0);
  v160 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v144 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v130 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v140 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v139 = &v130 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v143 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v141 = &v130 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v154 = &v130 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v130 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v130 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v138 = &v130 - v30;
  MEMORY[0x1EEE9AC00](v31);
  Descriptor = &v130 - v32;
  v158 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v158);
  v34 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1B4D1777C();
  v155 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a2 - 8);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v40, a1, a2, v38);
  v41 = sub_1B498AFB8(0, &qword_1EB8A6C80, 0x1E699C9F8);
  sub_1B49A79FC(v40, v41, a2, a3);
  v43 = *(v42 + 16);
  v44 = 32;
  while (v43)
  {
    v45 = *(v42 + v44);
    v44 += 8;
    --v43;
    if (v45 == 1)
    {
      v131 = v25;
      v136 = v28;
      v137 = v18;
      v134 = v36;

      v46 = *(a3 + 80);
      v152 = v6;
      v47 = v159;
      v46(a2, a3);
      v49 = v155 + 16;
      v48 = *(v155 + 16);
      v48(v34, v47, v161);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1B4D1A800;
      v51 = (*(a3 + 56))(a2, a3);
      v52 = [v51 effectiveTypeIdentifier];

      *(v50 + 32) = v52;
      v53 = v158;
      v54 = v34;
      v55 = &v34[*(v158 + 20)];
      v56 = MEMORY[0x1E69E7CC0];
      *v55 = MEMORY[0x1E69E7CC0];
      *(v55 + 1) = v56;
      *(v55 + 2) = v56;
      *(v55 + 3) = v50;
      *(v55 + 4) = v56;
      *(v55 + 5) = v56;
      *(v54 + *(v53 + 24)) = v56;
      *(v54 + *(v53 + 28)) = &unk_1F2CBD090;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCC0, &qword_1B4D38750);
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCC8, &unk_1B4D38758);
      v57 = (*(*(v157 - 8) + 80) + 32) & ~*(*(v157 - 8) + 80);
      v148 = *(*(v157 - 8) + 72);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1B4D1B2D0;
      v132 = v58;
      v156 = v58 + v57;
      *(v58 + v57) = 0;
      v60 = v152;
      v59 = Descriptor;
      v61 = v160;
      v150 = v48;
      v151 = v49;
      v48(Descriptor, v47, v161);
      swift_storeEnumTagMultiPayload();
      v146 = *(v61 + 56);
      v147 = v61 + 56;
      v146(v59, 0, 1, v60);
      v62 = v138;
      sub_1B4974FBC(v59, v138, &qword_1EB8A67A8, &qword_1B4D1E060);
      v63 = *(v61 + 48);
      v64 = v63(v62, 1, v60);
      v160 = v61 + 48;
      v149 = v63;
      v135 = a2;
      v133 = v40;
      v145 = v54;
      if (v64 == 1)
      {
        v65 = v139;
        sub_1B4B58794(v54, v139, type metadata accessor for DateRangeDescriptor);
        if (v63(v62, 1, v60) != 1)
        {
          sub_1B4975024(v62, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v65 = v139;
        sub_1B4BD779C(v62, v139, type metadata accessor for DateRangeDescriptor);
      }

      v72 = v156;
      v73 = v156 + *(v157 + 48);
      v74 = *v55;
      v75 = *(v55 + 1);
      v77 = *(v55 + 2);
      v76 = *(v55 + 3);
      v79 = *(v55 + 4);
      v78 = *(v55 + 5);
      sub_1B4B58794(v65, v73, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v65, type metadata accessor for DateRangeDescriptor);
      v80 = v158;
      v81 = (v73 + *(v158 + 20));
      *v81 = v74;
      v81[1] = v75;
      v81[2] = v77;
      v81[3] = v76;
      v81[4] = v79;
      v81[5] = v78;
      *(v73 + *(v80 + 24)) = MEMORY[0x1E69E7CC0];
      *(v73 + *(v80 + 28)) = &unk_1F2CBD090;
      sub_1B4975024(Descriptor, &qword_1EB8A67A8, &qword_1B4D1E060);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      swift_storeEnumTagMultiPayload();
      v82 = v72 + v148;
      *(v72 + v148) = 1;
      v83 = v136;
      v150(v136, v159, v161);
      v84 = v152;
      swift_storeEnumTagMultiPayload();
      v146(v83, 0, 1, v84);
      v85 = v83;
      v86 = v131;
      sub_1B4974FBC(v85, v131, &qword_1EB8A67A8, &qword_1B4D1E060);
      v87 = v149;
      if (v149(v86, 1, v84) == 1)
      {
        v88 = v140;
        sub_1B4B58794(v145, v140, type metadata accessor for DateRangeDescriptor);
        if (v87(v86, 1, v84) != 1)
        {
          sub_1B4975024(v86, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v88 = v140;
        sub_1B4BD779C(v86, v140, type metadata accessor for DateRangeDescriptor);
      }

      v89 = v82 + *(v157 + 48);
      v90 = *v55;
      v91 = *(v55 + 1);
      v92 = *(v55 + 2);
      v93 = *(v55 + 3);
      v94 = *(v55 + 4);
      v95 = *(v55 + 5);
      sub_1B4B58794(v88, v89, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v88, type metadata accessor for DateRangeDescriptor);
      v96 = v158;
      v97 = (v89 + *(v158 + 20));
      *v97 = v90;
      v97[1] = v91;
      v97[2] = v92;
      v97[3] = v93;
      v97[4] = v94;
      v97[5] = v95;
      *(v89 + *(v96 + 24)) = MEMORY[0x1E69E7CC0];
      *(v89 + *(v96 + 28)) = &unk_1F2CBD090;
      sub_1B4975024(v136, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v98 = (v156 + 2 * v148);
      *v98 = 2;
      v99 = v154;
      v150(v154, v159, v161);
      swift_storeEnumTagMultiPayload();
      v146(v99, 0, 1, v84);
      v100 = v99;
      v101 = v141;
      sub_1B4974FBC(v100, v141, &qword_1EB8A67A8, &qword_1B4D1E060);
      v102 = v149;
      if (v149(v101, 1, v84) == 1)
      {
        v103 = v142;
        sub_1B4B58794(v145, v142, type metadata accessor for DateRangeDescriptor);
        if (v102(v101, 1, v84) != 1)
        {
          sub_1B4975024(v101, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v103 = v142;
        sub_1B4BD779C(v101, v142, type metadata accessor for DateRangeDescriptor);
      }

      v104 = &v98[*(v157 + 48)];
      v105 = *v55;
      v106 = *(v55 + 1);
      v107 = *(v55 + 2);
      v108 = *(v55 + 3);
      v109 = *(v55 + 4);
      v110 = *(v55 + 5);
      sub_1B4B58794(v103, v104, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v103, type metadata accessor for DateRangeDescriptor);
      v111 = v158;
      v112 = (v104 + *(v158 + 20));
      *v112 = v105;
      v112[1] = v106;
      v112[2] = v107;
      v112[3] = v108;
      v112[4] = v109;
      v112[5] = v110;
      *(v104 + *(v111 + 24)) = MEMORY[0x1E69E7CC0];
      *(v104 + *(v111 + 28)) = &unk_1F2CBD090;
      sub_1B4975024(v154, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v113 = (v156 + 3 * v148);
      *v113 = 3;
      v114 = v137;
      v150(v137, v159, v161);
      swift_storeEnumTagMultiPayload();
      v146(v114, 0, 1, v84);
      v115 = v114;
      v116 = v143;
      sub_1B4974FBC(v115, v143, &qword_1EB8A67A8, &qword_1B4D1E060);
      v117 = v149;
      if (v149(v116, 1, v84) == 1)
      {
        v118 = v144;
        sub_1B4B58794(v145, v144, type metadata accessor for DateRangeDescriptor);
        v119 = v117(v116, 1, v84);
        v40 = v133;
        if (v119 != 1)
        {
          sub_1B4975024(v116, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v118 = v144;
        sub_1B4BD779C(v116, v144, type metadata accessor for DateRangeDescriptor);
        v40 = v133;
      }

      v120 = &v113[*(v157 + 48)];
      v121 = *v55;
      v122 = *(v55 + 1);
      v123 = *(v55 + 2);
      v124 = *(v55 + 3);
      v125 = *(v55 + 4);
      v126 = *(v55 + 5);
      sub_1B4B58794(v118, v120, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v118, type metadata accessor for DateRangeDescriptor);
      v127 = v158;
      v128 = (v120 + *(v158 + 20));
      *v128 = v121;
      v128[1] = v122;
      v128[2] = v123;
      v128[3] = v124;
      v128[4] = v125;
      v128[5] = v126;
      *(v120 + *(v127 + 24)) = MEMORY[0x1E69E7CC0];
      *(v120 + *(v127 + 28)) = &unk_1F2CBD090;
      sub_1B4975024(v137, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v71 = sub_1B4C97B64(v132);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v145, type metadata accessor for WorkoutPropertiesQuery);
      (*(v155 + 8))(v159, v161);
      a2 = v135;
      v36 = v134;
      goto LABEL_26;
    }
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v66 = sub_1B4D17F6C();
  __swift_project_value_buffer(v66, qword_1EDC36F00);
  v67 = sub_1B4D17F5C();
  v68 = sub_1B4D1873C();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v162 = v70;
    *v69 = 136315138;
    *(v69 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D62970, &v162);
    _os_log_impl(&dword_1B4953000, v67, v68, "%s does not support this workout state", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x1B8C7DDA0](v70, -1, -1);
    MEMORY[0x1B8C7DDA0](v69, -1, -1);
  }

  v71 = sub_1B4C97B64(MEMORY[0x1E69E7CC0]);
LABEL_26:
  (*(v36 + 8))(v40, a2);
  return v71;
}

uint64_t sub_1B4BD6434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[323] = a3;
  v3[322] = a2;
  v3[321] = a1;
  v4 = type metadata accessor for WorkoutVoiceLongestDistanceFact(0);
  v3[324] = v4;
  v3[325] = *(v4 - 8);
  v3[326] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC0A0, &qword_1B4D39EC8);
  v3[327] = v5;
  v3[328] = *(v5 - 8);
  v3[329] = swift_task_alloc();
  v3[330] = swift_task_alloc();
  v6 = sub_1B4D1777C();
  v3[331] = v6;
  v3[332] = *(v6 - 8);
  v3[333] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v3[334] = swift_task_alloc();
  v3[335] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutState(0);
  v3[336] = v7;
  v3[337] = *(v7 - 8);
  v3[338] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BD666C, 0, 0);
}

uint64_t sub_1B4BD666C()
{
  v104 = v0;
  v1 = *(v0 + 2696);
  v2 = *(v0 + 2688);
  v3 = *(v0 + 2680);
  sub_1B4974FBC(*(v0 + 2576), v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    sub_1B4975024(*(v0 + 2680), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_22:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v53 = sub_1B4D17F6C();
    __swift_project_value_buffer(v53, qword_1EDC36F00);
    v54 = sub_1B4D17F5C();
    v55 = sub_1B4D1873C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      __dst[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D62970, __dst);
      _os_log_impl(&dword_1B4953000, v54, v55, "Context or snapshots don't exist for %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x1B8C7DDA0](v57, -1, -1);
      MEMORY[0x1B8C7DDA0](v56, -1, -1);
    }

    v58 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v5 = *(v0 + 2568);
  sub_1B4BD779C(*(v0 + 2680), *(v0 + 2704), type metadata accessor for WorkoutState);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 2536) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67F8, &qword_1B4D1AB10);
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v8;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4E570);

  (*(v7 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v6, v7);

  v9 = *(v0 + 2456);
  if (!v9)
  {
    v51 = *(v0 + 2704);
LABEL_21:
    sub_1B49BFEC0(v51, type metadata accessor for WorkoutState);
    goto LABEL_22;
  }

  v101 = *(v0 + 2440);
  v100 = *(v0 + 2448);
  v10 = v5[3];
  v11 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2568), v10);
  *(v0 + 2544) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v12;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4E0D0);

  (*(v11 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v10, v11);

  v13 = *(v0 + 2480);
  if (!v13)
  {
    v52 = *(v0 + 2704);
LABEL_20:

    v51 = v52;
    goto LABEL_21;
  }

  v99 = *(v0 + 2464);
  v98 = *(v0 + 2472);
  v14 = v5[3];
  v15 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2568), v14);
  *(v0 + 2552) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v16;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AB10);

  (*(v15 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v14, v15);

  v17 = *(v0 + 2504);
  if (!v17)
  {
    v52 = *(v0 + 2704);
LABEL_19:

    goto LABEL_20;
  }

  v18 = *(v0 + 2488);
  v97 = *(v0 + 2496);
  v20 = v5[3];
  v19 = v5[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 2568), v20);
  *(v0 + 2560) = &type metadata for WorkoutVoiceLongestDistanceFact.QueryIdentifier;
  __dst[0] = sub_1B4D181CC();
  __dst[1] = v21;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000015, 0x80000001B4D4BED0);

  (*(v19 + 8))(__dst[0], __dst[1], &type metadata for WorkoutProperties, &type metadata for WorkoutProperties, v20, v19);

  v22 = *(v0 + 2528);
  if (!v22)
  {
    v52 = *(v0 + 2704);
LABEL_18:

    goto LABEL_19;
  }

  v23 = *(v0 + 2512);
  v96 = *(v0 + 2520);
  v24 = sub_1B4CAC70C(*(v0 + 2704));
  v25 = *(v24 + 2);
  v26 = 32;
  do
  {
    if (!v25)
    {
      v52 = *(v0 + 2704);

      goto LABEL_18;
    }

    v27 = *&v24[v26];
    v26 += 8;
    --v25;
  }

  while (v27 != 1);
  v93 = v23;
  v94 = v22;
  v87 = (v0 + 2400);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B8, &unk_1B4D1AAE0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B4D1A800;
  *(v28 + 32) = sub_1B4D1779C();
  *(v28 + 40) = v29;
  v95 = v28;
  sub_1B4D1770C();
  v90 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v91 = *(v0 + 2688);
  v92 = *(v0 + 2704);
  v30 = *(v0 + 2656);
  v88 = *(v0 + 2648);
  v89 = *(v0 + 2664);
  v31 = sub_1B4D1796C();
  __swift_project_value_buffer(v31, qword_1EDC3CE48);
  v32 = sub_1B4D178CC();
  v33 = _HKCacheIndexFromDate();

  (*(v30 + 8))(v89, v88);
  sub_1B496F4FC((v0 + 2232));
  *(v0 + 2104) = v33;
  *(v0 + 2112) = v93;
  *(v0 + 2120) = v96;
  *(v0 + 2128) = v94;
  *(v0 + 2136) = v18;
  *(v0 + 2144) = v97;
  *(v0 + 2152) = v17;
  *(v0 + 2160) = v99;
  *(v0 + 2168) = v98;
  *(v0 + 2176) = v13;
  *(v0 + 2184) = v101;
  *(v0 + 2192) = v100;
  *(v0 + 2200) = v9;
  *(v0 + 2208) = v33;
  *(v0 + 2216) = v33;
  *(v0 + 2224) = MEMORY[0x1E69E7CC0];
  nullsub_1();
  sub_1B496F4FC((v0 + 1976));
  v34 = *(v0 + 2056);
  *(v0 + 1128) = *(v0 + 2040);
  *(v0 + 1144) = v34;
  v35 = *(v0 + 2088);
  *(v0 + 1160) = *(v0 + 2072);
  *(v0 + 1176) = v35;
  v36 = *(v0 + 1992);
  *(v0 + 1064) = *(v0 + 1976);
  *(v0 + 1080) = v36;
  v37 = *(v0 + 2024);
  *(v0 + 1096) = *(v0 + 2008);
  *(v0 + 1112) = v37;
  v38 = *(v0 + 2232);
  v39 = *(v0 + 2248);
  v40 = *(v0 + 2280);
  *(v0 + 840) = *(v0 + 2264);
  *(v0 + 856) = v40;
  *(v0 + 808) = v38;
  *(v0 + 824) = v39;
  v41 = *(v0 + 2296);
  v42 = *(v0 + 2312);
  v43 = *(v0 + 2344);
  *(v0 + 904) = *(v0 + 2328);
  *(v0 + 920) = v43;
  *(v0 + 872) = v41;
  *(v0 + 888) = v42;
  v44 = *(v0 + 2104);
  v45 = *(v0 + 2120);
  v46 = *(v0 + 2152);
  *(v0 + 968) = *(v0 + 2136);
  *(v0 + 984) = v46;
  *(v0 + 936) = v44;
  *(v0 + 952) = v45;
  v47 = *(v0 + 2168);
  v48 = *(v0 + 2184);
  v49 = *(v0 + 2216);
  *(v0 + 1032) = *(v0 + 2200);
  *(v0 + 1048) = v49;
  *(v0 + 1000) = v47;
  *(v0 + 1016) = v48;
  *(v0 + 800) = v33;
  *(v0 + 2384) = v91;
  *(v0 + 2392) = &protocol witness table for WorkoutState;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2360));
  sub_1B4B58794(v92, boxed_opaque_existential_1, type metadata accessor for WorkoutState);
  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v0 + 2360, __dst, __src);
  v61 = *(v0 + 2688);
  v62 = *(v0 + 2672);
  v63 = *(v0 + 2584);
  sub_1B4975024(v0 + 2360, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 408), __src, 0x188uLL);
  sub_1B4974FBC(v63, v62, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v64 = v4(v62, 1, v61);
  if (v64 == 1)
  {
    sub_1B4975024(*(v0 + 2672), &qword_1EB8A6A98, &unk_1B4D1CBE0);
    v65 = v0 + 2400;
    *v87 = 0u;
    *(v0 + 2416) = 0u;
    *(v0 + 2432) = 0;
  }

  else
  {
    v66 = *(v0 + 2672);
    *(v0 + 2424) = *(v0 + 2688);
    *(v0 + 2432) = &protocol witness table for WorkoutState;
    v65 = v0 + 2400;
    v67 = __swift_allocate_boxed_opaque_existential_1(v87);
    sub_1B4BD779C(v66, v67, type metadata accessor for WorkoutState);
  }

  memcpy(__dst, (v0 + 800), 0x188uLL);
  static LegacySnapshot.make(from:snapshot:)(v65, __dst, __src);
  v68 = *(v0 + 2704);
  v69 = *(v0 + 2688);
  sub_1B4B68220(v0 + 800);
  sub_1B4975024(v65, &qword_1EB8A9BC8, &qword_1B4D2B4D0);
  memcpy((v0 + 1584), __src, 0x188uLL);
  v70 = [*(v68 + *(v69 + 24)) effectiveTypeIdentifier];
  memcpy((v0 + 1192), (v0 + 1584), 0x188uLL);
  nullsub_1();
  memcpy((v0 + 16), (v0 + 1192), 0x188uLL);
  v71 = swift_task_alloc();
  *(v71 + 16) = v68;
  v72 = vdupq_n_s64(v70);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_1F2CB8AC8, v72), vceqq_s64(unk_1F2CB8AD8, v72)))) & 1) != 0 || qword_1F2CB8AE8 == v70 || unk_1F2CB8AF0 == v70 || qword_1F2CB8AF8 == v70)
  {
    v73 = *(v0 + 2624);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC0A8, &unk_1B4D39ED0);
    v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v75 = swift_allocObject();
    sub_1B4BD44C0(v95, &unk_1F2CB8D40, v70, 17, (v0 + 408), (v0 + 16), sub_1B4BD76C0, v71, v75 + v74);
    v76 = *(v0 + 2640);
    v77 = *(v0 + 2632);
    v78 = *(v0 + 2600);
    v79 = *(v0 + 2592);

    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);
    sub_1B4974FBC(v75 + v74, v76, &qword_1EB8AC0A0, &qword_1B4D39EC8);
    sub_1B4BD76C8(v76, v77);
    v80 = (*(v78 + 48))(v77, 1, v79);
    v81 = *(v0 + 2632);
    if (v80 == 1)
    {
      sub_1B4975024(v81, &qword_1EB8AC0A0, &qword_1B4D39EC8);
      v58 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1B4BD779C(v81, *(v0 + 2608), type metadata accessor for WorkoutVoiceLongestDistanceFact);
      v58 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1B4A1E1AC(0, v58[2] + 1, 1, v58);
      }

      v83 = v58[2];
      v82 = v58[3];
      if (v83 >= v82 >> 1)
      {
        v58 = sub_1B4A1E1AC((v82 > 1), v83 + 1, 1, v58);
      }

      v84 = *(v0 + 2608);
      v85 = *(v0 + 2600);
      v58[2] = v83 + 1;
      sub_1B4BD779C(v84, v58 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v83, type metadata accessor for WorkoutVoiceLongestDistanceFact);
    }

    swift_setDeallocating();
    sub_1B4975024(v75 + v74, &qword_1EB8AC0A0, &qword_1B4D39EC8);
    swift_deallocClassInstance();
  }

  else
  {

    sub_1B4B68220(v0 + 1584);
    sub_1B4B68220(v0 + 408);
    v58 = MEMORY[0x1E69E7CC0];
  }

  v86 = *(v0 + 2704);

  sub_1B49BFEC0(v86, type metadata accessor for WorkoutState);
LABEL_27:

  v59 = *(v0 + 8);

  return v59(v58);
}

unint64_t sub_1B4BD74D4()
{
  result = qword_1EB8AC078;
  if (!qword_1EB8AC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC078);
  }

  return result;
}

unint64_t sub_1B4BD7528(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BD7558();
  result = sub_1B4BD75AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BD7558()
{
  result = qword_1EB8AC080;
  if (!qword_1EB8AC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC080);
  }

  return result;
}

unint64_t sub_1B4BD75AC()
{
  result = qword_1EB8AC088;
  if (!qword_1EB8AC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC088);
  }

  return result;
}

uint64_t sub_1B4BD7604(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BD766C(&qword_1EB8AC090, &protocol conformance descriptor for WorkoutVoiceLongestDistanceFact);
  result = sub_1B4BD766C(&qword_1EB8AC098, &protocol conformance descriptor for WorkoutVoiceLongestDistanceFact);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4BD766C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutVoiceLongestDistanceFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BD76C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC0A0, &qword_1B4D39EC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4BD7738()
{
  result = qword_1EB8AB2C8;
  if (!qword_1EB8AB2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB2C8);
  }

  return result;
}

uint64_t sub_1B4BD779C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

FitnessIntelligence::DeviceInferenceAvailability::UnavailableReason_optional __swiftcall DeviceInferenceAvailability.UnavailableReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DeviceInferenceAvailability.UnavailableReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C62616E45746F6ELL;
  v3 = 0xD000000000000018;
  v4 = 0x5364696C61766E69;
  if (v1 != 4)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7964616552746F6ELL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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