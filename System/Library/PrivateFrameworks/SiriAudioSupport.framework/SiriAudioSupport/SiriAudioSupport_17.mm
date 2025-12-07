unint64_t sub_2664472A4()
{
  result = qword_2800739C0;
  if (!qword_2800739C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739C0);
  }

  return result;
}

unint64_t sub_2664472F8()
{
  result = qword_2800739D0;
  if (!qword_2800739D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800739D0);
  }

  return result;
}

unint64_t sub_266447344()
{
  result = qword_2800739D8;
  if (!qword_2800739D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739D8);
  }

  return result;
}

unint64_t sub_266447398()
{
  result = qword_2800739E0;
  if (!qword_2800739E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739E0);
  }

  return result;
}

unint64_t sub_2664473EC()
{
  result = qword_2800739E8;
  if (!qword_2800739E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739E8);
  }

  return result;
}

unint64_t sub_266447440()
{
  result = qword_2800739F0;
  if (!qword_2800739F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739F0);
  }

  return result;
}

unint64_t sub_266447494()
{
  result = qword_2800739F8;
  if (!qword_2800739F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739F8);
  }

  return result;
}

unint64_t sub_2664474E8()
{
  result = qword_280073A00;
  if (!qword_280073A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073A00);
  }

  return result;
}

unint64_t sub_26644753C()
{
  result = qword_280073A08;
  if (!qword_280073A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073A08);
  }

  return result;
}

void sub_2664475B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v31 = MEMORY[0x277D84F90];
  v32 = v10;
  v33 = v6;
LABEL_4:
  v12 = v11;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
    v11 = v12;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v5 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    if (*v15 == a2 && v16 == a3)
    {
      v17 = a2;
LABEL_18:

LABEL_20:
      v24 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2663846F4(0, *(v31 + 2) + 1, 1, v31);
      }

      v26 = *(v31 + 2);
      v25 = *(v31 + 3);
      if (v26 >= v25 >> 1)
      {
        v31 = sub_2663846F4((v25 > 1), v26 + 1, 1, v31);
      }

      v27 = v31;
      *(v31 + 2) = v26 + 1;
      v28 = &v27[16 * v26];
      *(v28 + 4) = v17;
      *(v28 + 5) = v16;
      a2 = v24;
      v10 = v32;
      v6 = v33;
      goto LABEL_4;
    }

    v19 = *(*(v5 + 56) + 8 * v14);
    v20 = sub_2664E0D88();
    if (v20)
    {
      goto LABEL_18;
    }

    v21 = v5;
    v34 = &v30;
    v22 = a2;
    v35[0] = a2;
    v35[1] = a3;
    MEMORY[0x28223BE20](v20);
    v29[2] = v35;

    v23 = sub_2662AA720(sub_2662AA7CC, v29, v19);

    if (v23)
    {
      a2 = v22;
      v5 = v21;
      goto LABEL_20;
    }

    v12 = v11;
    a2 = v22;
    v5 = v21;
    v10 = v32;
    v6 = v33;
  }

  while (v9);
  while (1)
  {
LABEL_6:
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v11);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (*(v31 + 2))
  {
  }

  else
  {
  }
}

uint64_t sub_266447850(void *a1, uint64_t a2, NSObject *a3, int a4, void *a5, uint64_t a6)
{
  v183 = a5;
  *&v184 = a6;
  v152 = a4;
  v160 = sub_2664E0038();
  v169 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664E00B8();
  v162 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v164 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_2664DFE08();
  v156 = *(v157 - 8);
  v12 = MEMORY[0x28223BE20](v157);
  v180 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v13;
  MEMORY[0x28223BE20](v12);
  v155 = &v146 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v146 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v174 = (&v146 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = &v146 - v21;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v24 = *(v16 + 16);
  v173 = v23;
  v172 = v16 + 16;
  v171 = v24;
  v24(v22, v23, v15);

  v25 = a1;

  v26 = a1;
  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();

  v29 = os_log_type_enabled(v27, v28);
  v168 = v10;
  v170 = v26;
  v149 = v16;
  *&v182 = a2;
  v185 = a3;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    aBlock = v181;
    *v30 = 67109634;
    *(v30 + 4) = v26 != 0;

    *(v30 + 8) = 1024;
    *(v30 + 10) = a3 != 0;

    *(v30 + 14) = 2080;
    v187 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A78, &qword_2664ED620);
    v31 = sub_2664E0318();
    v33 = sub_2662A320C(v31, v32, &aBlock);

    *(v30 + 16) = v33;
    _os_log_impl(&dword_26629C000, v27, v28, "AppSelectionSignals#rawSignals... intent?:%{BOOL}d, preWarmed?:%{BOOL}d, permitted: %s", v30, 0x18u);
    v34 = v181;
    __swift_destroy_boxed_opaque_existential_1Tm(v181);
    MEMORY[0x266784AD0](v34, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);

    (*(v149 + 8))(v22, v15);
  }

  else
  {

    (*(v16 + 8))(v22, v15);
  }

  v35 = v15;
  v36 = v25;
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D84F90];
  v37[2] = MEMORY[0x277D84F90];
  v154 = swift_allocObject();
  *(v154 + 16) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_266385A94(v38);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v179 = v36;
  v163 = v35;
  v40 = qword_280F91470;
  v191 = type metadata accessor for SiriKitTaskLoggingProvider();
  v192 = &protocol witness table for SiriKitTaskLoggingProvider;
  aBlock = v40;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v167 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000001ELL, 0x80000002664F8EA0, 1, &aBlock);
  v177 = dispatch_group_create();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v161 = v39;
  v181 = v37;
  v41 = qword_280F91D48;
  v42 = v155;
  sub_2664DFDE8();
  v43 = v156;
  v44 = v180;
  v45 = v157;
  (*(v156 + 16))(v180, v42, v157);
  v46 = (*(v43 + 80) + 33) & ~*(v43 + 80);
  v47 = (v178 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = "appSelectionSignalsRawSignals";
  *(v48 + 24) = 29;
  *(v48 + 32) = 2;
  (*(v43 + 32))(v48 + v46, v44, v45);
  v49 = (v48 + v47);
  v50 = v184;
  *v49 = v183;
  v49[1] = v50;

  v51 = sub_2664E0848();
  v52 = MEMORY[0x277D84F90];
  sub_2664DFDC8(v51, &dword_26629C000, v41, "appSelectionSignalsRawSignals", 29, 2, v42, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_266456C10;
  *(v53 + 24) = v48;
  v147 = v53;
  v148 = v48;

  v54 = v177;
  dispatch_group_enter(v177);
  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v180 = qword_280F90760;
  v55 = swift_allocObject();
  v56 = v181;
  v55[2] = v170;
  v55[3] = v56;
  v57 = v161;
  v55[4] = v167;
  v55[5] = v57;
  v55[6] = v54;
  v192 = sub_266456CB8;
  v193 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v189 = 1107296256;
  v153 = &v190;
  v190 = sub_2662A3F90;
  v191 = &block_descriptor_43;
  v58 = _Block_copy(&aBlock);
  *&v184 = v179;

  v59 = v54;
  v60 = v164;
  sub_2664E0068();
  v187 = v52;
  v176 = sub_266456CD0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v177 = sub_2662A5AC8();
  v61 = v159;
  v62 = v160;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v60, v61, v58);
  _Block_release(v58);
  v63 = v169 + 8;
  v158 = *(v169 + 8);
  v158(v61, v62);
  v64 = v162 + 8;
  v178 = *(v162 + 8);
  v178(v60, v168);

  dispatch_group_enter(v59);
  v65 = swift_allocObject();
  v66 = v154;
  *(v65 + 16) = v185;
  *(v65 + 24) = v66;
  v67 = v181;
  *(v65 + 32) = v182;
  *(v65 + 40) = v67;
  *(v65 + 48) = v167;
  *(v65 + 56) = v59;
  *(v65 + 64) = v152 & 1;
  *(v65 + 72) = v170;
  v192 = sub_266456D18;
  v193 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v189 = 1107296256;
  v190 = sub_2662A3F90;
  v191 = &block_descriptor_25;
  v183 = _Block_copy(&aBlock);
  v151 = v184;

  v68 = v59;
  v69 = v164;
  v185 = v68;

  sub_2664E0068();
  v187 = MEMORY[0x277D84F90];
  sub_2664E0A08();
  v70 = v183;
  MEMORY[0x266783800](0, v69, v61, v183);
  v71 = v64;
  v72 = v61;
  v73 = v70;
  v74 = v178;
  v75 = v158;
  _Block_release(v73);
  v75(v61, v62);
  v74(v69, v168);

  v169 = v63;
  if (v170)
  {
    v76 = qword_280F90748;
    v77 = v151;
    if (v76 != -1)
    {
      v145 = v77;
      swift_once();
      v77 = v145;
    }

    v175 = v77;
    v162 = v71;
    v79 = *(qword_280F91CD0 + 16);
    v80 = MEMORY[0x277D84F90];
    v81 = v182;
    v82 = v174;
    v83 = v185;
    if (v79)
    {
      v84 = 0;
      v85 = qword_280F91CD0 + 32;
      v183 = (v182 + 32);
      v165 = (v149 + 8);
      *&v78 = 136446210;
      v150 = v78;
      v86 = v163;
      v166 = qword_280F91CD0 + 32;
      do
      {
        v87 = *(v85 + 16 * v84);
        if (v81)
        {
          v88 = *(*(&v87 + 1) + 8);
          v89 = *(v85 + 16 * v84);
          v90 = *(v81 + 16) + 1;
          v91 = v183;
          while (--v90)
          {
            v92 = *v91;
            v91 += 2;
            if (v92 == v87)
            {
              goto LABEL_23;
            }
          }

          v171(v82, v173, v86);
          v97 = v82;
          v98 = sub_2664DFE18();
          v99 = sub_2664E06C8();
          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            v186 = v101;
            *v100 = v150;
            aBlock = v89;
            v189 = v88;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
            v102 = sub_2664E0318();
            v104 = sub_2662A320C(v102, v103, &v186);

            *(v100 + 4) = v104;
            _os_log_impl(&dword_26629C000, v98, v99, "AppSelectionSignals#permittedApproved skipping non-permitted signal: %{public}s", v100, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v101);
            v105 = v101;
            v86 = v163;
            MEMORY[0x266784AD0](v105, -1, -1);
            MEMORY[0x266784AD0](v100, -1, -1);
          }

          (*v165)(v97, v86);
          v81 = v182;
          v82 = v97;
          v83 = v185;
          v85 = v166;
        }

        else
        {
LABEL_23:
          v184 = *(v85 + 16 * v84);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v187 = v80;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2662FCF84(0, *(v80 + 16) + 1, 1);
            v82 = v174;
            v80 = v187;
          }

          v95 = *(v80 + 16);
          v94 = *(v80 + 24);
          v96 = v184;
          if (v95 >= v94 >> 1)
          {
            sub_2662FCF84((v94 > 1), v95 + 1, 1);
            v96 = v184;
            v82 = v174;
            v80 = v187;
          }

          *(v80 + 16) = v95 + 1;
          *(v80 + 16 * v95 + 32) = v96;
          v83 = v185;
        }

        ++v84;
      }

      while (v84 != v79);
    }

    v166 = v80;
    v106 = *(v80 + 16);
    v107 = v160;
    v108 = v159;
    v109 = v164;
    v110 = v168;
    v111 = v181;
    v112 = v167;
    v113 = v158;
    if (v106)
    {
      v114 = (v166 + 32);
      v174 = &v190;
      do
      {
        v182 = *v114;
        v183 = v114 + 1;
        *&v184 = v106;
        dispatch_group_enter(v83);
        v115 = swift_allocObject();
        *(v115 + 16) = v182;
        v116 = v83;
        v117 = v175;
        *(v115 + 32) = v175;
        *(v115 + 40) = v111;
        *(v115 + 48) = v112;
        *(v115 + 56) = v116;
        v192 = sub_266456D48;
        v193 = v115;
        aBlock = MEMORY[0x277D85DD0];
        v189 = 1107296256;
        v190 = sub_2662A3F90;
        v191 = &block_descriptor_37_0;
        *&v182 = _Block_copy(&aBlock);
        v118 = v117;

        v119 = v185;
        sub_2664E0068();
        v187 = MEMORY[0x277D84F90];
        sub_2664E0A08();
        v120 = v182;
        MEMORY[0x266783800](0, v109, v108, v182);
        v111 = v181;
        v121 = v120;
        v83 = v185;
        _Block_release(v121);
        v113(v108, v107);
        v178(v109, v110);

        v114 = v183;
        v106 = v184 - 1;
      }

      while (v184 != 1);
    }

    if (v152)
    {
      v122 = v146;
      v171(v146, v173, v163);
      v123 = sub_2664DFE18();
      v124 = sub_2664E06C8();
      v125 = os_log_type_enabled(v123, v124);
      v126 = v160;
      v72 = v159;
      v127 = v164;
      v128 = v161;
      if (v125)
      {
        v129 = swift_slowAlloc();
        *v129 = 0;
        _os_log_impl(&dword_26629C000, v123, v124, "Megamodel: Queuing intent dependent megamodel signals", v129, 2u);
        v130 = v129;
        v83 = v185;
        MEMORY[0x266784AD0](v130, -1, -1);
      }

      (*(v149 + 8))(v122, v163);
      dispatch_group_enter(v83);
      v131 = swift_allocObject();
      v132 = v175;
      v131[2] = v128;
      v131[3] = v132;
      v133 = v167;
      v131[4] = v181;
      v131[5] = v133;
      v131[6] = v83;
      v192 = sub_266456D78;
      v193 = v131;
      aBlock = MEMORY[0x277D85DD0];
      v189 = 1107296256;
      v190 = sub_2662A3F90;
      v191 = &block_descriptor_43_0;
      v134 = _Block_copy(&aBlock);
      v135 = v132;

      v136 = v83;
      sub_2664E0068();
      v187 = MEMORY[0x277D84F90];
      v62 = v126;
      v69 = v127;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v127, v72, v134);
      _Block_release(v134);

      v75 = v158;
      v158(v72, v126);
      v178(v69, v168);
    }

    else
    {

      v62 = v160;
      v72 = v159;
      v69 = v164;
      v75 = v158;
    }
  }

  v137 = swift_allocObject();
  v138 = v154;
  v137[2] = v181;
  v137[3] = v138;
  v139 = v170;
  v137[4] = v161;
  v137[5] = v139;
  v140 = v147;
  v137[6] = sub_2662D4304;
  v137[7] = v140;
  v192 = sub_266456D30;
  v193 = v137;
  aBlock = MEMORY[0x277D85DD0];
  v189 = 1107296256;
  v190 = sub_2662A3F90;
  v191 = &block_descriptor_31;
  v141 = _Block_copy(&aBlock);
  v142 = v151;

  sub_2664E0068();
  v187 = MEMORY[0x277D84F90];
  sub_2664E0A08();
  v143 = v185;
  sub_2664E0758();
  _Block_release(v141);

  v75(v72, v62);
  v178(v69, v168);
  (*(v156 + 8))(v155, v157);
}

uint64_t sub_266448E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_26634F35C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_2662A3E98(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_26645429C();
        v16 = v18;
      }

      result = sub_266452FEC(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_266448F8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = sub_2662A3E98(a2, a3);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        sub_26645443C(a5, a6);
        v20 = v22;
      }

      result = sub_266452E3C(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

void sub_2664490A4(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_266318804(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_26634F694(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_2662A9238(a1, &unk_280074250, &unk_2664E3680);
    sub_266407BAC(a2, v6);

    sub_2662A9238(v6, &unk_280074250, &unk_2664E3680);
  }
}

uint64_t sub_266449158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_26634FAB8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2662A3E98(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2664549F4();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_266452E3C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_266449250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A50, &unk_2664ED5F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_2664DF398();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2662A9238(a1, &unk_280073A50, &unk_2664ED5F0);
    sub_266407C4C(a2, a3, v9);

    return sub_2662A9238(v9, &unk_280073A50, &unk_2664ED5F0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_26634FC00(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

void sub_266449428(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  while (v7)
  {
LABEL_10:
    v13 = __clz(__rbit64(v7)) | (v9 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);

    sub_2664475B4(a1, v16, v15);
    v20 = v18;
    v21 = v19;
    v22 = 0.0;
    if (*(v10 + 16))
    {
      v23 = sub_2662A3E98(v18, v19);
      if (v24)
      {
        v22 = *(*(v10 + 56) + 8 * v23);
      }
    }

    v7 &= v7 - 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26634F084(v20, v21, isUniquelyReferenced_nonNull_native, v17 + v22);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_2664495A0(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  while (v7)
  {
LABEL_13:
    v15 = __clz(__rbit64(v7)) | (v9 << 6);
    v16 = (*(a2 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v12 = *(*(a2 + 56) + 8 * v15);

    sub_2664475B4(a1, v18, v17);
    v21 = v19;
    v22 = v20;
    if (*(v10 + 16) && (v23 = sub_2662A3E98(v19, v20), (v24 & 1) != 0))
    {
      v11 = *(*(v10 + 56) + 8 * v23);
    }

    else
    {
      v11 = 1.79769313e308;
    }

    v7 &= v7 - 1;
    if (v12 >= v11)
    {
      v12 = v11;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26634F084(v21, v22, isUniquelyReferenced_nonNull_native, v12);
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_266449720@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v4 + 16))
    {
      sub_2662A5550(v8, &v9);
      __swift_project_boxed_opaque_existential_1(&v9, v10);
      if (swift_getDynamicType() == v6)
      {
        return sub_2662A8618(&v9, a2);
      }

      ++v7;
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v9);
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t AppSelectionSignals.RawSignalResult.recordableResult(start:test:)(uint64_t a1, int a2)
{
  LODWORD(v66) = a2;
  v3 = sub_2664DFE38();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664DE438();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v10 = v2[1];
  v12 = v2[2];
  v13 = v2[3];
  sub_2664DE428();
  sub_2664DE388();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  v16 = sub_2664568A0(v10, v11, v12, v13);
  v17 = sub_266386244(MEMORY[0x277D84F90]);
  v18 = *(v10 + 16);
  v65 = v16;
  if (v18)
  {
    v19 = v10 + 32;
    do
    {
      sub_2662A5550(v19, v71);
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v70[0] = swift_getDynamicType();
      v70[1] = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
      v22 = sub_2664E0318();
      v24 = v23;
      v25 = v72;
      v26 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      if (!v27)
      {
        v39 = sub_2662A3E98(v22, v24);
        v41 = v40;

        if (v41)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70[0] = v17;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_26645443C(&qword_280072FC0, &qword_2664ED6A0);
            v17 = v70[0];
          }

          sub_266452E3C(v39, v17);
        }

        goto LABEL_5;
      }

      v28 = v27;
      v29 = v5;
      v30 = v17;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v70[0] = v30;
      v33 = sub_2662A3E98(v22, v24);
      v34 = *(v30 + 16);
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v5 = v32;
      if (*(v30 + 24) >= v36)
      {
        if (v31)
        {
          v17 = v70[0];
          if ((v32 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_26645443C(&qword_280072FC0, &qword_2664ED6A0);
          v17 = v70[0];
          if ((v5 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_2664513C4(v36, v31, &qword_280072FC0, &qword_2664ED6A0);
        v37 = sub_2662A3E98(v22, v24);
        if ((v5 & 1) != (v38 & 1))
        {
          result = sub_2664E0DD8();
          __break(1u);
          return result;
        }

        v33 = v37;
        v17 = v70[0];
        if ((v5 & 1) == 0)
        {
LABEL_18:
          v17[(v33 >> 6) + 8] |= 1 << v33;
          v43 = (v17[6] + 16 * v33);
          *v43 = v22;
          v43[1] = v24;
          *(v17[7] + 8 * v33) = v28;
          v44 = v17[2];
          v45 = __OFADD__(v44, 1);
          v46 = v44 + 1;
          if (v45)
          {
            goto LABEL_28;
          }

          v17[2] = v46;
          goto LABEL_4;
        }
      }

      v20 = v17[7];
      v21 = *(v20 + 8 * v33);
      *(v20 + 8 * v33) = v28;

LABEL_4:
      v5 = v29;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      v19 += 40;
      --v18;
    }

    while (v18);
  }

  v47 = sub_2663854AC(MEMORY[0x277D84F90]);
  v48 = type metadata accessor for RecordableResult();
  v49 = objc_allocWithZone(v48);
  v50 = &v49[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name];
  *v50 = 0x746C7561666564;
  v50[1] = 0xE700000000000000;
  *&v49[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_version] = 11;
  *&v49[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_timeElapsed] = v15;
  *&v49[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows] = v65;
  *&v49[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info] = v47;
  *&v49[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming] = v17;
  v49[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test] = v66 & 1;
  v69.receiver = v49;
  v69.super_class = v48;

  v33 = objc_msgSendSuper2(&v69, sel_init);
  if (qword_280F914E8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v51 = v68;
  v52 = __swift_project_value_buffer(v68, qword_280F914F0);
  swift_beginAccess();
  v53 = v67;
  (*(v67 + 16))(v5, v52, v51);
  v54 = sub_2664DFE18();
  v55 = sub_2664E06B8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v70[0] = v57;
    *v56 = 134218242;
    *(v56 + 4) = v15;
    *(v56 + 12) = 2080;
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v66 = v5;
    v58 = v53;

    v59 = sub_2664E01D8();
    v61 = v60;

    v62 = sub_2662A320C(v59, v61, v70);

    *(v56 + 14) = v62;
    _os_log_impl(&dword_26629C000, v54, v55, "AppSelectionSignals#RawSignalResult#recordableResult resolved in %fs. Timing: %s", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x266784AD0](v57, -1, -1);
    MEMORY[0x266784AD0](v56, -1, -1);

    (*(v58 + 8))(v66, v51);
  }

  else
  {

    (*(v53 + 8))(v5, v51);
  }

  return v33;
}

uint64_t sub_266449F00()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000013, 0x80000002664ED560, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280F90760 = v8;
  return result;
}

id static AppSelectionSignals.queue.getter()
{
  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v1 = qword_280F90760;

  return v1;
}

uint64_t sub_26644A0F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073AE0, &unk_2664EA260);
  swift_allocObject();
  result = sub_2662ED984(0xD000000000000026, 0x80000002664F8F40, sub_26644A170, 0);
  qword_280F90778 = result;
  return result;
}

uint64_t sub_26644A1B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073AA0, &unk_2664E4F40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664E34D0;
  *(v0 + 32) = &type metadata for IntentMediaSignal;
  *(v0 + 40) = &off_2877EF910;
  *(v0 + 48) = type metadata accessor for SelectedAppSignal();
  *(v0 + 56) = &off_2877E6348;
  *(v0 + 64) = type metadata accessor for PrivateIntentDataSignal();
  *(v0 + 72) = &off_2877F2D80;
  result = type metadata accessor for EntitySearchSignalLocal();
  *(v0 + 80) = result;
  *(v0 + 88) = &off_2877EA2E8;
  qword_280F91CD0 = v0;
  return result;
}

uint64_t sub_26644A254()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728F0, &qword_2664E4F60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664EB480;
  *(v0 + 32) = type metadata accessor for NowPlayingAppSignal();
  *(v0 + 40) = &off_2877EBA40;
  *(v0 + 48) = &type metadata for NowPlayingStateSignal;
  *(v0 + 56) = &off_2877EA5F8;
  *(v0 + 64) = type metadata accessor for ClientContextSignal();
  *(v0 + 72) = &off_2877EEE90;
  *(v0 + 80) = type metadata accessor for LastNowPlayingSignal();
  *(v0 + 88) = &off_2877F4B20;
  *(v0 + 96) = &type metadata for UserContextSignal;
  *(v0 + 104) = &off_2877F2E78;
  result = type metadata accessor for NowPlayingUsageSignal();
  *(v0 + 112) = result;
  *(v0 + 120) = &off_2877F01A8;
  qword_280F91CE0 = v0;
  return result;
}

uint64_t sub_26644A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v42 = a4;
  v43 = a5;
  v40 = a2;
  v41 = a3;
  v6 = sub_2664DE438();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06B8();
  v18 = os_log_type_enabled(v16, v17);
  v44 = a1;
  if (v18)
  {
    v35 = v7;
    v36 = v10;
    v37 = v6;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136446210;
    if (qword_280F90738 != -1)
    {
      swift_once();
    }

    v45 = &type metadata for SupportedMediaSignal;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073420, &qword_2664EAC10);
    v21 = sub_2664E0318();
    v23 = sub_2662A320C(v21, v22, &v46);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_26629C000, v16, v17, "AppSelectionSignals#rawSignals(gathering) computing: %{public}s...", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    MEMORY[0x266784AD0](v19, -1, -1);

    (*(v12 + 8))(v14, v11);
    v10 = v36;
    v6 = v37;
    v7 = v35;
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  sub_2664DE428();
  if (qword_280F90738 != -1)
  {
    swift_once();
  }

  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v24 = v38;
  v25 = v39;
  (*(v38 + 16))(v39, v10, v6);
  v26 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v27 = (v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = v10;
  v29 = swift_allocObject();
  v30 = v41;
  *(v29 + 2) = v40;
  *(v29 + 3) = v30;
  *(v29 + 4) = v42;
  (*(v24 + 32))(&v29[v26], v25, v6);
  v31 = v43;
  *&v29[v27] = v43;

  v32 = v31;
  sub_2663DB714(v44, sub_2664573B4, v29);

  return (*(v24 + 8))(v28, v6);
}

void sub_26644A7B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, NSObject *a6)
{
  v49 = a6;
  v45 = a5;
  v47 = sub_2664DE438();
  v51 = *(v47 - 8);
  v9 = MEMORY[0x28223BE20](v47);
  v44 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v44 - v11;
  v12 = sub_2664DFE38();
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  v18 = v14[2];
  v17 = v14[3];

  sub_2662A98AC();
  v19 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v19;
  v52 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_266384800(0, v19[2] + 1, 1, v19);
    *(a2 + 16) = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_266384800((v21 > 1), v22 + 1, 1, v19);
  }

  v56 = &type metadata for SupportedMediaSignal;
  v57 = &off_2877EEAE8;
  v23 = swift_allocObject();
  *&v55 = v23;
  v23[2] = v15;
  v23[3] = v16;
  v23[4] = v18;
  v23[5] = v17;
  v19[2] = v22 + 1;
  sub_2662A8618(&v55, &v19[5 * v22 + 4]);
  *(a2 + 16) = v19;

  sub_2662AA89C();
  swift_endAccess();

  v24 = __swift_project_boxed_opaque_existential_1(a1, a1[3])[2];
  swift_beginAccess();
  *(a4 + 16) = v24;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = v52;
  v26 = __swift_project_value_buffer(v52, qword_280F914F0);
  swift_beginAccess();
  v27 = v48;
  v28 = v46;
  (*(v48 + 16))(v46, v26, v25);
  v30 = v50;
  v29 = v51;
  v31 = v47;
  (*(v51 + 16))(v50, v45, v47);
  v32 = sub_2664DFE18();
  v33 = sub_2664E06B8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v54 = v45;
    *v34 = 136446466;
    if (qword_280F90738 != -1)
    {
      swift_once();
    }

    v53 = &type metadata for SupportedMediaSignal;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073420, &qword_2664EAC10);
    v35 = sub_2664E0318();
    v37 = sub_2662A320C(v35, v36, &v54);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2048;
    v38 = v44;
    sub_2664DE428();
    v39 = v50;
    sub_2664DE388();
    v41 = v40;
    v42 = *(v51 + 8);
    v42(v38, v31);
    v42(v39, v31);
    *(v34 + 14) = v41;
    _os_log_impl(&dword_26629C000, v32, v33, "AppSelectionSignals#rawSignals(gathering) %{public}s complete in %fs.", v34, 0x16u);
    v43 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v34, -1, -1);

    (*(v27 + 8))(v28, v52);
  }

  else
  {

    (*(v29 + 8))(v30, v31);
    (*(v27 + 8))(v28, v25);
  }

  dispatch_group_leave(v49);
}

void sub_26644AD20(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, void *a8)
{
  v33 = a6;
  v34 = a8;
  LODWORD(v8) = a7;
  v32 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v31 = v8;
    v8 = a2;
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "AppSelectionSignals#rawSignals computing noPrewarmedResults...", v20, 2u);
    v25 = v24;
    a5 = v23;
    a4 = v22;
    a3 = v21;
    a2 = v8;
    LOBYTE(v8) = v31;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  if (v32)
  {
    v26 = v32;
  }

  else
  {
    if (qword_280F90770 != -1)
    {
      swift_once();
    }

    v26 = qword_280F90778;
  }

  v27 = v34;
  v28 = v34;

  v29 = v33;
  sub_26631339C(0x4024000000000000, 0, v26, a2, a3, a4, a5, v29, v8 & 1, v27);
}

void sub_26644B010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, int a7, void *a8)
{
  v111 = a8;
  v116 = a7;
  v138 = a5;
  v137 = a4;
  v132 = sub_2664E0038();
  v115 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_2664E00B8();
  v114 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v127 = (&v110 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = (&v110 - v19);
  v22 = *a1;
  v21 = a1[1];
  v23 = a1[3];
  v134 = a1[2];
  v133 = v23;
  v24 = MEMORY[0x277D84F90];
  v136 = v22;
  v135 = v21;
  v112 = v25;
  if (v22)
  {
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v27 = *(v26 + 16);
  v120 = v14;
  v119 = a3;
  v117 = a6;
  if (v27)
  {
    *&v139 = a2;
    v128 = v20;
    v28 = v15;
    *&v150 = v24;
    v29 = v26;
    sub_2662FD160(0, v27, 0);
    v24 = v150;
    v30 = v29 + 32;
    do
    {
      sub_2662A5550(v30, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v147);
      DynamicType = swift_getDynamicType();
      v32 = v148;
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
      *&v150 = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2662FD160((v33 > 1), v34 + 1, 1);
        v24 = v150;
      }

      *(v24 + 16) = v34 + 1;
      v35 = v24 + 16 * v34;
      *(v35 + 32) = DynamicType;
      *(v35 + 40) = v32;
      v30 += 40;
      --v27;
    }

    while (v27);

    v14 = v120;
    v15 = v28;
    a3 = v119;
    v20 = v128;
    a2 = v139;
  }

  else
  {
  }

  swift_beginAccess();
  *(a2 + 16) = v24;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v37 = *(v15 + 16);
  v124 = v36;
  v123 = v15 + 16;
  v122 = v37;
  v37(v20, v36, v14);

  v38 = sub_2664DFE18();
  v39 = sub_2664E06E8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock = v41;
    *v40 = 136315138;
    swift_beginAccess();
    v42 = *(a2 + 16);

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
    v44 = MEMORY[0x2667834D0](v42, v43);
    v46 = v45;

    v47 = v44;
    v14 = v120;
    v48 = sub_2662A320C(v47, v46, &aBlock);
    a3 = v119;

    *(v40 + 4) = v48;
    _os_log_impl(&dword_26629C000, v38, v39, "AppSelectionSignals#rawSignals prewarmed signals: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v125 = *(v15 + 8);
  v125(v20, v14);
  v113 = v15;
  if (qword_280F90780 != -1)
  {
    swift_once();
  }

  v50 = *(qword_280F91CE0 + 16);
  v51 = MEMORY[0x277D84F90];
  if (v50)
  {
    v52 = 0;
    v53 = qword_280F91CE0 + 32;
    v128 = (a3 + 32);
    v121 = v113 + 8;
    *&v49 = 136446210;
    v118 = v49;
    v126 = v50;
    do
    {
      v54 = *(v53 + 16 * v52);
      if (a3)
      {
        v55 = *(*(&v54 + 1) + 8);
        v56 = *(v53 + 16 * v52);
        v57 = *(a3 + 16) + 1;
        v58 = v128;
        while (--v57)
        {
          v59 = *v58;
          v58 += 2;
          if (v59 == v54)
          {
            goto LABEL_25;
          }
        }

        v64 = v53;
        v65 = v127;
        v122(v127, v124, v14);
        v66 = sub_2664DFE18();
        v67 = sub_2664E06C8();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v140 = v69;
          *v68 = v118;
          aBlock = v56;
          v145 = v55;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
          v70 = sub_2664E0318();
          v72 = sub_2662A320C(v70, v71, &v140);

          *(v68 + 4) = v72;
          _os_log_impl(&dword_26629C000, v66, v67, "AppSelectionSignals#permittedApproved skipping non-permitted signal: %{public}s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v69);
          v73 = v69;
          v14 = v120;
          MEMORY[0x266784AD0](v73, -1, -1);
          v74 = v68;
          a3 = v119;
          MEMORY[0x266784AD0](v74, -1, -1);
        }

        v125(v65, v14);
        v53 = v64;
        v50 = v126;
      }

      else
      {
LABEL_25:
        v139 = *(v53 + 16 * v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v150 = v51;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FD1F0(0, *(v51 + 16) + 1, 1);
          v51 = v150;
        }

        v62 = *(v51 + 16);
        v61 = *(v51 + 24);
        v63 = v139;
        if (v62 >= v61 >> 1)
        {
          sub_2662FD1F0((v61 > 1), v62 + 1, 1);
          v63 = v139;
          v51 = v150;
        }

        *(v51 + 16) = v62 + 1;
        *(v51 + 16 * v62 + 32) = v63;
      }

      v52 = (v52 + 1);
    }

    while (v52 != v50);
  }

  v121 = v51;
  v75 = *(v51 + 16);
  v76 = v117;
  v77 = v136;
  if (v75)
  {
    v78 = (v121 + 32);
    v128 = &v146;
    v127 = (v115 + 8);
    v126 = (v114 + 8);
    while (1)
    {
      v139 = *v78;
      if (!v77)
      {
        break;
      }

      v140 = v77;
      v141 = v135;
      v142 = v134;
      v143 = v133;

      sub_266449720(v139, &v150);

      if (!*(&v151 + 1))
      {
        goto LABEL_40;
      }

      sub_2662A8618(&v150, &aBlock);
      v79 = v137;
      swift_beginAccess();
      v80 = v147;
      v81 = v148;
      v82 = __swift_project_boxed_opaque_existential_1(&aBlock, v147);
      sub_266455630(v82, (v79 + 16), v138, v80, v81);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
LABEL_35:
      ++v78;
      if (!--v75)
      {
        goto LABEL_43;
      }
    }

    v152 = 0;
    v150 = 0u;
    v151 = 0u;
LABEL_40:
    sub_2662A9238(&v150, &unk_280073AB0, &qword_2664EA238);
    dispatch_group_enter(v76);
    if (qword_280F90758 != -1)
    {
      swift_once();
    }

    v83 = swift_allocObject();
    *(v83 + 16) = v139;
    v84 = v138;
    *(v83 + 32) = v137;
    *(v83 + 40) = v84;
    *(v83 + 48) = v76;
    v148 = sub_266456EB8;
    v149 = v83;
    aBlock = MEMORY[0x277D85DD0];
    v145 = 1107296256;
    v146 = sub_2662A3F90;
    v147 = &block_descriptor_70;
    v85 = _Block_copy(&aBlock);

    v86 = v76;
    v87 = v129;
    sub_2664E0068();
    *&v150 = MEMORY[0x277D84F90];
    sub_266456CD0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v88 = v130;
    v89 = v76;
    v90 = v132;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v87, v88, v85);
    _Block_release(v85);
    v91 = v90;
    v76 = v89;
    (*v127)(v88, v91);
    (*v126)(v87, v131);

    v77 = v136;
    goto LABEL_35;
  }

LABEL_43:

  if (v116)
  {
    if (v77)
    {
      v140 = v77;
      v141 = v135;
      v142 = v134;
      v143 = v133;

      sub_266449720(&type metadata for SiriSignalsIndependentSignalBridge, &v150);

      v92 = v120;
      v93 = v112;
      if (*(&v151 + 1))
      {
        sub_2662A8618(&v150, &aBlock);
        v94 = v137;
        swift_beginAccess();
        v95 = v147;
        v96 = v148;
        v97 = __swift_project_boxed_opaque_existential_1(&aBlock, v147);
        sub_266455630(v97, (v94 + 16), v138, v95, v96);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        goto LABEL_53;
      }
    }

    else
    {
      v152 = 0;
      v150 = 0u;
      v151 = 0u;
      v92 = v120;
      v93 = v112;
    }

    sub_2662A9238(&v150, &unk_280073AB0, &qword_2664EA238);
    v122(v93, v124, v92);
    v98 = sub_2664DFE18();
    v99 = sub_2664E06B8();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_26629C000, v98, v99, "Megamodel: Queuing intent independent megamodel signals", v100, 2u);
      MEMORY[0x266784AD0](v100, -1, -1);
    }

    v125(v93, v92);
    dispatch_group_enter(v76);
    if (qword_280F90758 != -1)
    {
      swift_once();
    }

    v101 = swift_allocObject();
    v102 = v111;
    v103 = v137;
    v101[2] = v111;
    v101[3] = v103;
    v101[4] = v138;
    v101[5] = v76;
    v148 = sub_266456EE8;
    v149 = v101;
    aBlock = MEMORY[0x277D85DD0];
    v145 = 1107296256;
    v146 = sub_2662A3F90;
    v147 = &block_descriptor_76;
    v104 = _Block_copy(&aBlock);
    v105 = v102;

    v106 = v76;
    v107 = v129;
    sub_2664E0068();
    *&v150 = MEMORY[0x277D84F90];
    sub_266456CD0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v108 = v130;
    v109 = v132;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v107, v108, v104);
    _Block_release(v104);
    (*(v115 + 8))(v108, v109);
    (*(v114 + 8))(v107, v131);
  }

LABEL_53:
  dispatch_group_leave(v76);
}

uint64_t sub_26644C03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = sub_2664DE438();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v42 = v10;
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v17, v13);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06B8();
  v20 = os_log_type_enabled(v18, v19);
  v47 = a1;
  v48 = a2;
  v49 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v41 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = a2;
    v52 = v23;
    *v22 = 136446210;
    v50 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073AD0, &unk_2664ED660);
    v24 = sub_2664E0318();
    v26 = sub_2662A320C(v24, v25, &v52);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_26629C000, v18, v19, "AppSelectionSignals#rawSignals(signalType) computing: %{public}s...", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x266784AD0](v23, -1, -1);
    v27 = v22;
    v12 = v49;
    v7 = v41;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  sub_2664DE428();
  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v41 = qword_280F90760;
  v28 = v43;
  v29 = v7;
  (*(v8 + 16))(v43, v12, v7);
  v30 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v31 = (v42 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v45;
  *(v32 + 2) = v44;
  *(v32 + 3) = v33;
  v35 = v47;
  v34 = v48;
  *(v32 + 4) = v47;
  *(v32 + 5) = v34;
  (*(v8 + 32))(&v32[v30], v28, v29);
  v36 = v46;
  *&v32[v31] = v46;
  v37 = *(v34 + 16);

  v38 = v36;
  v37(v41, sub_2664572D4, v32, v35, v34);

  return (*(v8 + 8))(v49, v29);
}

uint64_t sub_26644C470(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_280F90270 != -1)
  {
    swift_once();
  }

  sub_2662B8E78(&qword_280F90278, v16);
  if (a1)
  {
    v8 = sub_26636E9A0(1u);
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v13 = a1;

  v14 = a4;
  sub_2662BFF60(v11, v8, v10, 1, sub_266456F44, v12);

  return sub_2663DBE50(v16);
}

uint64_t sub_26644C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v131 = a5;
  v130 = a4;
  v129 = a3;
  v141 = sub_2664DFE08();
  v138 = *(v141 - 8);
  v7 = MEMORY[0x28223BE20](v141);
  v133 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v8;
  MEMORY[0x28223BE20](v7);
  v140 = &v121 - v9;
  v137 = sub_2664DE438();
  v136 = *(v137 - 8);
  v10 = MEMORY[0x28223BE20](v137);
  v135 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v121 - v12;
  v14 = sub_2664DFE38();
  v144 = *(v14 - 8);
  v145 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v128 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v121 - v17;
  v146 = sub_2664DEFE8();
  v139 = *(v146 - 8);
  v19 = MEMORY[0x28223BE20](v146);
  v123 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v121 - v22;
  MEMORY[0x28223BE20](v21);
  v142 = &v121 - v24;
  v25 = *(a1 + 16);
  v143 = v13;
  if (v25)
  {
    v127 = a2;
    v149 = MEMORY[0x277D84F90];
    sub_2662FCF24(0, v25, 0);
    v26 = v149;
    v27 = (a1 + 40);
    do
    {
      v29 = *(v27 - 1);
      v28 = *v27;
      v149 = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);

      if (v31 >= v30 >> 1)
      {
        sub_2662FCF24((v30 > 1), v31 + 1, 1);
        v26 = v149;
      }

      *(v26 + 16) = v31 + 1;
      v32 = v26 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v28;
      v27 += 8;
      --v25;
    }

    while (v25);
    a2 = v127;
  }

  v33 = v139;
  v34 = v142;
  if (a2)
  {
    sub_26636E9A0(0);
  }

  v35 = v146;
  sub_2664DEFC8();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v36 = v145;
  v37 = __swift_project_value_buffer(v145, qword_280F914F0);
  swift_beginAccess();
  v38 = *(v144 + 16);
  v127 = v37;
  v126 = v144 + 16;
  v125 = v38;
  v38(v18, v37, v36);
  v39 = *(v33 + 16);
  v39(v23, v34, v35);
  v40 = sub_2664DFE18();
  v41 = sub_2664E06B8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v33;
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    v44 = *(sub_2664DEFD8() + 16);

    (*(v42 + 8))(v23, v35);
    *(v43 + 4) = v44;
    _os_log_impl(&dword_26629C000, v40, v41, "Megamodel: Collecting signals for %ld candidate bundles", v43, 0xCu);
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  else
  {
    (*(v33 + 8))(v23, v35);
  }

  v45 = *(v144 + 8);
  v144 += 8;
  v124 = v45;
  v45(v18, v145);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073AC0, &qword_2664ED650);
  v46 = swift_allocObject();
  v121 = xmmword_2664E34E0;
  *(v46 + 16) = xmmword_2664E34E0;
  v47 = sub_2664DEDF8();
  v48 = MEMORY[0x277D60258];
  *(v46 + 32) = v47;
  *(v46 + 40) = v48;
  v49 = sub_2664DEF08();
  v50 = MEMORY[0x277D602F0];
  *(v46 + 48) = v49;
  *(v46 + 56) = v50;
  v51 = v142;
  v39(v123, v142, v35);
  sub_2664DEE58();
  swift_allocObject();
  sub_2664DEE48();
  sub_2664DEE28();

  __swift_project_boxed_opaque_existential_1(&v149, v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A80, &qword_2664ED628);
  v52 = swift_allocObject();
  *(v52 + 16) = v121;
  *(v52 + 56) = &type metadata for NowPlayingStateIndependentSignal;
  *(v52 + 64) = sub_266456F50();
  v53 = swift_allocObject();
  *(v52 + 32) = v53;
  v54 = MEMORY[0x277D60350];
  v53[7] = v146;
  v53[8] = v54;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53 + 4);
  v39(boxed_opaque_existential_1, v51, v146);
  v56 = off_280073C48;
  v53[2] = qword_280073C40;
  v53[3] = v56;
  *(v52 + 96) = &type metadata for ForegroundAppRecencyIndependentSignal;
  *(v52 + 104) = sub_2664334A8();
  v57 = swift_allocObject();
  *(v52 + 72) = v57;
  v57[8] = v146;
  v57[9] = v54;
  v58 = __swift_allocate_boxed_opaque_existential_1(v57 + 5);
  v39(v58, v51, v146);
  v59 = qword_280073880;
  v60 = off_280073888;
  v57[2] = 2592000;
  v57[3] = v59;
  v57[4] = v60;

  sub_2664DEEA8();

  __swift_project_boxed_opaque_existential_1(v148, v148[3]);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_2664ED540;
  v62 = sub_2664DEC58();
  v63 = MEMORY[0x277D60248];
  *(v61 + 32) = v62;
  *(v61 + 40) = v63;
  v64 = sub_2664DEE68();
  v65 = MEMORY[0x277D60280];
  *(v61 + 48) = v64;
  *(v61 + 56) = v65;
  v66 = sub_2664DEE78();
  v67 = MEMORY[0x277D60290];
  *(v61 + 64) = v66;
  *(v61 + 72) = v67;
  v68 = sub_2664DEEC8();
  v69 = MEMORY[0x277D602C8];
  *(v61 + 80) = v68;
  *(v61 + 88) = v69;
  v70 = sub_2664DEF38();
  v71 = MEMORY[0x277D60308];
  *(v61 + 96) = v70;
  *(v61 + 104) = v71;
  v72 = sub_2664DEEF8();
  v73 = MEMORY[0x277D602D8];
  *(v61 + 112) = v72;
  *(v61 + 120) = v73;
  v74 = sub_2664DF078();
  v75 = MEMORY[0x277D603A8];
  *(v61 + 128) = v74;
  *(v61 + 136) = v75;
  v76 = sub_2664DEED8();
  v77 = MEMORY[0x277D602D0];
  *(v61 + 144) = v76;
  *(v61 + 152) = v77;
  v78 = sub_2664DEFB8();
  v79 = MEMORY[0x277D60348];
  *(v61 + 160) = v78;
  *(v61 + 168) = v79;
  v80 = sub_2664DEF88();
  v81 = MEMORY[0x277D60328];
  *(v61 + 176) = v80;
  *(v61 + 184) = v81;
  v82 = sub_2664DEE08();
  v83 = MEMORY[0x277D60268];
  *(v61 + 192) = v82;
  *(v61 + 200) = v83;
  v84 = sub_2664DEFA8();
  v85 = MEMORY[0x277D60340];
  *(v61 + 208) = v84;
  *(v61 + 216) = v85;
  v86 = sub_2664DEF18();
  v87 = MEMORY[0x277D602F8];
  *(v61 + 224) = v86;
  *(v61 + 232) = v87;
  v88 = sub_2664DF038();
  v89 = MEMORY[0x277D60398];
  *(v61 + 240) = v88;
  *(v61 + 248) = v89;
  v90 = sub_2664DF008();
  v91 = MEMORY[0x277D60390];
  *(v61 + 256) = v90;
  *(v61 + 264) = v91;
  v92 = sub_2664DEF98();
  v93 = MEMORY[0x277D60338];
  *(v61 + 272) = v92;
  *(v61 + 280) = v93;
  sub_2664DEE98();

  __swift_destroy_boxed_opaque_existential_1Tm(v147);
  __swift_destroy_boxed_opaque_existential_1Tm(v148);
  v94 = v128;
  v125(v128, v127, v145);
  v95 = sub_2664DFE18();
  v96 = sub_2664E06C8();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_26629C000, v95, v96, "Megamodel: Collecting intent independent megamodel signals", v97, 2u);
    MEMORY[0x266784AD0](v97, -1, -1);
  }

  v124(v94, v145);
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v145 = sub_2664DEE88();
  v98 = swift_allocObject();
  v99 = v130;
  v98[2] = v129;
  v98[3] = v99;
  v100 = v131;
  v98[4] = v131;

  v101 = v100;
  sub_2664DE428();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v102 = qword_280F91D48;
  v103 = v140;
  sub_2664DFDE8();
  v104 = v138;
  v105 = v133;
  v106 = v141;
  (*(v138 + 16))(v133, v103, v141);
  v107 = (*(v104 + 80) + 33) & ~*(v104 + 80);
  v108 = (v132 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
  v109 = swift_allocObject();
  *(v109 + 16) = "megamodelSignalCollectionIndependent";
  *(v109 + 24) = 36;
  *(v109 + 32) = 2;
  (*(v104 + 32))(v109 + v107, v105, v106);
  v110 = (v109 + v108);
  *v110 = sub_266456FA4;
  v110[1] = v98;

  v111 = sub_2664E0848();
  sub_2664DFDC8(v111, &dword_26629C000, v102, "megamodelSignalCollectionIndependent", 36, 2, v103, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v112 = swift_allocObject();
  *(v112 + 16) = sub_26645748C;
  *(v112 + 24) = v109;
  v113 = v136;
  v114 = v135;
  v115 = v137;
  (*(v136 + 16))(v135, v143, v137);
  v116 = (*(v113 + 80) + 16) & ~*(v113 + 80);
  v117 = (v134 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
  v118 = swift_allocObject();
  (*(v113 + 32))(v118 + v116, v114, v115);
  v119 = (v118 + v117);
  *v119 = sub_266457490;
  v119[1] = v112;

  sub_2664DECA8();

  (*(v104 + 8))(v140, v141);

  (*(v139 + 8))(v142, v146);
  (*(v113 + 8))(v143, v115);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v149);
}

uint64_t sub_26644D378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v45 = a5;
  v46 = a6;
  v44 = a4;
  v47 = a3;
  v8 = sub_2664DE438();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = v11;
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06B8();
  v21 = os_log_type_enabled(v19, v20);
  v48 = a1;
  v49 = a2;
  v50 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v41 = v8;
    v23 = v22;
    v24 = swift_slowAlloc();
    v52 = a2;
    v53 = v24;
    *v23 = 136446210;
    v51 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A98, &unk_2664ED640);
    v25 = sub_2664E0318();
    v27 = sub_2662A320C(v25, v26, &v53);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_26629C000, v19, v20, "AppSelectionSignals#rawSignals computing: %{public}s...", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x266784AD0](v24, -1, -1);
    v28 = v23;
    v13 = v50;
    v8 = v41;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  sub_2664DE428();
  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v41 = qword_280F90760;
  v29 = v43;
  v30 = v8;
  (*(v9 + 16))(v43, v13, v8);
  v31 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v32 = (v42 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v45;
  *(v33 + 2) = v44;
  *(v33 + 3) = v34;
  v36 = v48;
  v35 = v49;
  *(v33 + 4) = v48;
  *(v33 + 5) = v35;
  (*(v9 + 32))(&v33[v31], v29, v30);
  v37 = v46;
  *&v33[v32] = v46;
  v38 = *(v35 + 16);

  v39 = v37;
  v38(v47, v41, sub_266456E9C, v33, v36, v35);

  return (*(v9 + 8))(v50, v30);
}

void sub_26644D7B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, NSObject *a7, uint64_t *a8, uint64_t *a9, const char *a10)
{
  v45 = a5;
  v46 = a8;
  v50 = a7;
  v48 = a6;
  v44 = a4;
  v13 = sub_2664DE438();
  v49 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v47 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = sub_2664DFE38();
  v19 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = a1[3];
  v22 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_266455630(v24, (a2 + 16), a3, v23, v22);
  swift_endAccess();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  (*(v19 + 16))(v21, v25, v18);
  v26 = v49;
  (*(v49 + 16))(v17, v48, v13);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06B8();
  if (os_log_type_enabled(v27, v28))
  {
    v42 = a10;
    v29 = swift_slowAlloc();
    v43 = v19;
    v48 = v21;
    v30 = v26;
    v31 = v29;
    v32 = swift_slowAlloc();
    *v31 = 136446466;
    v51 = v44;
    v52 = v45;
    v53 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(v46, a9);
    v33 = sub_2664E0318();
    v35 = sub_2662A320C(v33, v34, &v53);
    v46 = v18;
    v36 = v35;

    *(v31 + 4) = v36;
    *(v31 + 12) = 2048;
    v37 = v47;
    sub_2664DE428();
    sub_2664DE388();
    v39 = v38;
    v40 = *(v30 + 8);
    v40(v37, v13);
    v40(v17, v13);
    *(v31 + 14) = v39;
    _os_log_impl(&dword_26629C000, v27, v28, v42, v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266784AD0](v32, -1, -1);
    MEMORY[0x266784AD0](v31, -1, -1);

    (*(v43 + 8))(v48, v46);
  }

  else
  {

    (*(v26 + 8))(v17, v13);
    (*(v19 + 8))(v21, v18);
  }

  dispatch_group_leave(v50);
}

uint64_t sub_26644DBA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v69 = a5;
  v68 = a4;
  v67 = a3;
  v64 = a2;
  v80 = sub_2664DFE08();
  v74 = *(v80 - 8);
  v6 = *(v74 + 64);
  v7 = MEMORY[0x28223BE20](v80);
  v70 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v61 - v8;
  v75 = sub_2664DE438();
  v73 = *(v75 - 8);
  v9 = MEMORY[0x28223BE20](v75);
  v71 = v10;
  v72 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v81 = &v61 - v11;
  v12 = sub_2664DFE38();
  v66 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v65 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DEFE8();
  v77 = *(v14 - 8);
  v78 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v61 - v18;
  swift_beginAccess();
  v19 = *(*(a1 + 16) + 16);
  if (v19)
  {
    v62 = v12;
    v63 = v6;
    sub_26640C820(v19, 0);
    v20 = sub_266410DDC();
    v21 = v82;

    result = sub_2662B793C(v21);
    if (v20 != v19)
    {
      __break(1u);
      return result;
    }

    v6 = v63;
    v12 = v62;
  }

  v23 = v76;
  sub_2664DEFC8();
  (*(v77 + 16))(v17, v23, v78);
  sub_2664DEE58();
  swift_allocObject();
  v24 = sub_2664DEE48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A80, &qword_2664ED628);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2664E34E0;
  v26 = qword_280F91468;

  v27 = v65;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_280F91470;
  *(v25 + 56) = &type metadata for PireneRequestSignal;
  *(v25 + 64) = sub_2662EA8CC();
  v29 = swift_allocObject();
  *(v25 + 32) = v29;
  v29[8] = type metadata accessor for SiriKitTaskLoggingProvider();
  v29[9] = &protocol witness table for SiriKitTaskLoggingProvider;
  v30 = off_280072690;
  v29[2] = qword_280072688;
  v29[3] = v30;
  v31 = v64;
  v29[4] = v64;
  v29[5] = v28;
  v33 = aIscontentfree[0];
  v32 = aIscontentfree[1];
  *(v25 + 96) = &type metadata for FreeMediItemSignal;
  *(v25 + 104) = sub_2663D953C();
  *(v25 + 72) = v33;
  *(v25 + 80) = v32;
  *(v25 + 88) = v31;
  v34 = v31;

  sub_2664DEE38();

  __swift_destroy_boxed_opaque_existential_1Tm(&v82);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  v36 = v66;
  (*(v66 + 16))(v27, v35, v12);
  v37 = sub_2664DFE18();
  v38 = sub_2664E06C8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_26629C000, v37, v38, "Megamodel: Collecting intent dependent megamodel signals", v39, 2u);
    MEMORY[0x266784AD0](v39, -1, -1);
  }

  (*(v36 + 8))(v27, v12);
  v66 = sub_2664DEE18();

  v40 = swift_allocObject();
  v41 = v68;
  v40[2] = v67;
  v40[3] = v41;
  v42 = v69;
  v40[4] = v69;

  v43 = v42;
  sub_2664DE428();
  v69 = v24;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v44 = qword_280F91D48;
  v45 = v79;
  sub_2664DFDE8();
  v46 = v74;
  v47 = v70;
  v48 = v80;
  (*(v74 + 16))(v70, v45, v80);
  v49 = (*(v46 + 80) + 33) & ~*(v46 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = "megamodelSignalCollectionDependent";
  *(v50 + 24) = 34;
  *(v50 + 32) = 2;
  (*(v46 + 32))(v50 + v49, v47, v48);
  v51 = (v50 + ((v6 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v51 = sub_266456D90;
  v51[1] = v40;

  v52 = sub_2664E0848();
  sub_2664DFDC8(v52, &dword_26629C000, v44, "megamodelSignalCollectionDependent", 34, 2, v45, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_266456DB8;
  *(v53 + 24) = v50;
  v54 = v72;
  v55 = v73;
  v56 = v75;
  (*(v73 + 16))(v72, v81, v75);
  v57 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v58 = (v71 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  (*(v55 + 32))(v59 + v57, v54, v56);
  v60 = (v59 + v58);
  *v60 = sub_2662C148C;
  v60[1] = v53;

  sub_2664DECA8();

  (*(v46 + 8))(v79, v80);

  (*(v77 + 8))(v76, v78);
  return (*(v55 + 8))(v81, v56);
}

void sub_26644E4E0(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, const char *a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
  swift_beginAccess();
  sub_266455630(v16, (a2 + 16), a3, v14, *(v15 + 8));
  swift_endAccess();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v17, v10);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, a5, v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  dispatch_group_leave(a4);
}

uint64_t sub_26644E6F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *, __n128), uint64_t a6)
{
  v83 = a5;
  v76 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  swift_beginAccess();

  v16 = sub_2664557EC(v15, a2 + 16);

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v18 = *(v10 + 16);
  v78 = v10 + 16;
  v79 = v17;
  v77 = v18;
  v18(v14, v17, v9);

  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();

  v21 = os_log_type_enabled(v19, v20);
  v81 = a6;
  v82 = v10;
  v80 = a1;
  v85 = v9;
  if (v21)
  {
    v73 = v20;
    v74 = v19;
    v75 = v14;
    v22 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v86 = v72;
    *v22 = 136315394;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    v23 = sub_2664E01D8();
    v25 = v24;

    v26 = sub_2662A320C(v23, v25, &v86);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    isa = v16[2].isa;
    v28 = MEMORY[0x277D84F90];
    if (isa)
    {
      v71 = v22;
      v90[0] = MEMORY[0x277D84F90];
      sub_2662FD160(0, isa, 0);
      v28 = v90[0];
      v29 = v16;
      v30 = &v16[4];
      do
      {
        sub_2662A5550(v30, &v91);
        __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
        DynamicType = swift_getDynamicType();
        v32 = v93;
        __swift_destroy_boxed_opaque_existential_1Tm(&v91);
        v90[0] = v28;
        v34 = *(v28 + 16);
        v33 = *(v28 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_2662FD160((v33 > 1), v34 + 1, 1);
          v28 = v90[0];
        }

        *(v28 + 16) = v34 + 1;
        v35 = v28 + 16 * v34;
        *(v35 + 32) = DynamicType;
        *(v35 + 40) = v32;
        v30 += 40;
        --isa;
      }

      while (isa);
      v42 = v83;
      v9 = v85;
      v16 = v29;
      v22 = v71;
    }

    else
    {
      v42 = v83;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
    v44 = MEMORY[0x2667834D0](v28, v43);
    v46 = v45;

    v47 = sub_2662A320C(v44, v46, &v86);

    *(v22 + 14) = v47;
    v48 = v74;
    _os_log_impl(&dword_26629C000, v74, v73, "AppSelectionSignals#rawSignals applying candidates %s to signals: %{public}s", v22, 0x16u);
    v49 = v72;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);

    v50 = v75;
    v75 = *(v82 + 8);
    v75(v50, v9);
    v36 = v16[2].isa;
    if (!v36)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v75 = *(v10 + 8);
    v75(v14, v9);
    v42 = v83;
    v36 = v16[2].isa;
    if (!v36)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  v74 = v16;
  v37 = &v16[4];
  swift_beginAccess();
  do
  {
    sub_2662A5550(v37, &v91);
    v38 = *(&v92 + 1);
    v39 = v93;
    __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
    v40 = *(v39 + 24);

    v40(v41, v38, v39);

    __swift_destroy_boxed_opaque_existential_1Tm(&v91);
    v37 += 40;
    v36 = (v36 - 1);
  }

  while (v36);

  v42 = v83;
LABEL_17:
  v51 = v80;
  if (v76)
  {
    v52 = qword_280F91468;
    v53 = v76;
    if (v52 != -1)
    {
      swift_once();
    }

    v54 = sub_26632958C(1010);
    swift_beginAccess();

    v55 = sub_26639F100();
    swift_beginAccess();
    v56 = *(v51 + 16);

    sub_2664BF708(v53, v55, v56, &v91);

    if (v54)
    {

      sub_26636B8D0();
    }

    swift_beginAccess();
    v57 = *(v51 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v51 + 16) = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_266384800(0, v57[2] + 1, 1, v57);
      *(v51 + 16) = v57;
    }

    v60 = v57[2];
    v59 = v57[3];
    if (v60 >= v59 >> 1)
    {
      v57 = sub_266384800((v59 > 1), v60 + 1, 1, v57);
    }

    v88 = &type metadata for CompoundSignal;
    v89 = &off_2877F4AB0;
    v61 = swift_allocObject();
    *&v86 = v61;
    v62 = v92;
    *(v61 + 16) = v91;
    *(v61 + 32) = v62;
    *(v61 + 48) = v93;
    *(v61 + 64) = v94;
    v57[2] = v60 + 1;
    sub_2662A8618(&v86, &v57[5 * v60 + 4]);
    *(v51 + 16) = v57;
    swift_endAccess();
  }

  v63 = MEMORY[0x277D84F90];
  v77(v84, v79, v85);
  v64 = sub_2664DFE18();
  v65 = sub_2664E06B8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_26629C000, v64, v65, "AppSelectionSignals#rawSignals completed", v66, 2u);
    MEMORY[0x266784AD0](v66, -1, -1);
  }

  v75(v84, v85);
  swift_beginAccess();

  v67 = sub_26639F100();
  swift_beginAccess();
  v68 = *(v51 + 16);
  *&v86 = v67;
  *(&v86 + 1) = v68;
  v87 = v63;
  v88 = v63;

  (v42)(&v86);
  return sub_2663142F4(v86, *(&v86 + 1), v87, v88);
}

uint64_t sub_26644EF04(uint64_t *a1, void (*a2)(__int128 *))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (*a1)
  {
    v10 = a1[2];
    v9 = a1[3];
    v11 = a1[1];
    *&v17 = v8;
    *(&v17 + 1) = v11;
    *&v18 = v10;
    *(&v18 + 1) = v9;

    a2(&v17);
    return sub_2663142F4(v17, *(&v17 + 1), v18, *(&v18 + 1));
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v7, v13, v4);
    v14 = sub_2664DFE18();
    v15 = sub_2664E06D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26629C000, v14, v15, "AppSelectionSignals#signals received nil raw signals", v16, 2u);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v17 = 0u;
    v18 = 0u;
    return (a2)(&v17);
  }
}

void sub_26644F128(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  if (v6)
  {
    while (1)
    {
      v10 = v8;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a2 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(a2 + 56) + 8 * v11);

      sub_2664475B4(a1, v14, v13);
      v18 = v16;
      v19 = v17;
      v20 = *(v9 + 16);
      if (v20)
      {
        v21 = sub_2662A3E98(v16, v17);
        if (v22)
        {
          v20 = *(*(v9 + 56) + 8 * v21);
        }

        else
        {
          v20 = 0;
        }
      }

      v23 = __OFADD__(v20, v15);
      v24 = v20 + v15;
      if (v23)
      {
        break;
      }

      v6 &= v6 - 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26634F1AC(v24, v18, v19, isUniquelyReferenced_nonNull_native);

      v8 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v10);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_26644F2AC(uint64_t a1, uint64_t a2, void (*a3)(char **), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, NSObject *a8, uint64_t *a9, uint64_t *a10, uint64_t a11)
{
  v134 = a8;
  v133 = a7;
  v132 = a6;
  v140 = a5;
  v137 = a4;
  v138 = a3;
  v130 = a2;
  v119[1] = a11;
  v123 = a10;
  v122 = a9;
  v12 = sub_2664DEEB8();
  v139 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v120 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v121 = v119 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v119 - v17;
  v19 = sub_2664DE438();
  v135 = *(v19 - 8);
  v136 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v124 = v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v125 = v119 - v23;
  MEMORY[0x28223BE20](v22);
  v129 = v119 - v24;
  v25 = sub_2664DFE38();
  v26 = *(v25 - 8);
  v141 = v25;
  v142 = v26;
  v27 = MEMORY[0x28223BE20](v25);
  v127 = v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v131 = v119 - v29;
  v30 = sub_2664DEC98();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v126 = v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v128 = v119 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = v119 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A88, &qword_2664ED630);
  MEMORY[0x28223BE20](v38);
  v40 = v119 - v39;
  sub_2662A7224(a1, v119 - v39, &qword_280073A88, &qword_2664ED630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v139;
    (*(v139 + 32))(v18, v40, v12);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v42 = v141;
    v43 = __swift_project_value_buffer(v141, qword_280F914F0);
    swift_beginAccess();
    v44 = v142;
    v45 = v127;
    (*(v142 + 16))(v127, v43, v42);
    v46 = *(v41 + 16);
    v47 = v121;
    v131 = v18;
    v48 = v45;
    v129 = v46;
    (v46)(v121, v18, v12);
    v50 = v135;
    v49 = v136;
    v51 = v125;
    (*(v135 + 16))(v125, v130, v136);
    v52 = sub_2664DFE18();
    LODWORD(v130) = sub_2664E06D8();
    if (os_log_type_enabled(v52, v130))
    {
      v53 = v12;
      v54 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v145 = v128;
      *v54 = 136446722;
      v55 = v140;
      v144 = v140;
      __swift_instantiateConcreteTypeFromMangledNameV2(v122, v123);
      v56 = sub_2664E0318();
      v57 = v49;
      v59 = sub_2662A320C(v56, v58, &v145);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2082;
      (v129)(v120, v47, v53);
      v60 = sub_2664E0318();
      v62 = v61;
      v63 = *(v139 + 8);
      v63(v47, v53);
      v64 = sub_2662A320C(v60, v62, &v145);

      *(v54 + 14) = v64;
      *(v54 + 22) = 2050;
      v65 = v124;
      sub_2664DE428();
      v66 = v125;
      sub_2664DE388();
      v68 = v67;
      v69 = *(v50 + 8);
      v69(v65, v57);
      v69(v66, v57);
      *(v54 + 24) = v68;
      _os_log_impl(&dword_26629C000, v52, v130, "Megamodel signal collection failed for %{public}s with %{public}s in %{public}f", v54, 0x20u);
      v70 = v128;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v70, -1, -1);
      v71 = v54;
      v12 = v53;
      MEMORY[0x266784AD0](v71, -1, -1);

      (*(v142 + 8))(v127, v141);
    }

    else
    {

      (*(v50 + 8))(v51, v49);
      v63 = *(v139 + 8);
      v63(v47, v12);
      (*(v44 + 8))(v48, v42);
      v55 = v140;
    }

    v72 = v132;
    v114 = MEMORY[0x277D84F90];
    v115 = sub_2663858A8(MEMORY[0x277D84F90]);
    v116 = sub_266386244(v114);
    v148 = v55;
    v149 = v72;
    if (*v133 != -1)
    {
      swift_once();
    }

    v134->isa = sub_26639F100();

    v145 = v115;
    v146 = v116;
    v147 = 0;
    v63(v131, v12);
  }

  else
  {
    (*(v31 + 32))(v37, v40, v30);
    v73 = sub_2664DEC78();
    v74 = sub_2664DEC88();
    sub_2664DEC68();
    v76 = v75;
    v148 = v140;
    v149 = v132;
    if (*v133 != -1)
    {
      swift_once();
    }

    v134->isa = sub_26639F100();

    v145 = v73;
    v146 = v74;
    v147 = v76;
    v78 = v141;
    v77 = v142;
    v79 = v131;
    v80 = v129;
    v81 = v128;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v82 = __swift_project_value_buffer(v78, qword_280F914F0);
    swift_beginAccess();
    (*(v77 + 16))(v79, v82, v78);
    v83 = v135;
    v84 = v80;
    v85 = v136;
    (*(v135 + 16))(v84, v130, v136);
    v86 = *(v31 + 16);
    v86(v81, v37, v30);
    v87 = v126;
    v86(v126, v37, v30);
    v88 = sub_2664DFE18();
    v89 = sub_2664E06C8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v134 = v88;
      v91 = v83;
      v92 = v90;
      v93 = swift_slowAlloc();
      v139 = v93;
      *v92 = 136446978;
      v143 = v140;
      v144 = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(v122, v123);
      v94 = sub_2664E0318();
      LODWORD(v140) = v89;
      v96 = sub_2662A320C(v94, v95, &v144);

      *(v92 + 4) = v96;
      *(v92 + 12) = 2050;
      v97 = v124;
      sub_2664DE428();
      v98 = v129;
      sub_2664DE388();
      v100 = v99;
      v101 = *(v91 + 8);
      v101(v97, v85);
      v101(v98, v85);
      *(v92 + 14) = v100;
      *(v92 + 22) = 2082;
      v102 = v128;
      sub_2664DEC88();
      sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
      v103 = sub_2664E01D8();
      v104 = v142;
      v106 = v105;

      v107 = *(v31 + 8);
      v107(v102, v30);
      v108 = sub_2662A320C(v103, v106, &v144);

      *(v92 + 24) = v108;
      *(v92 + 32) = 2050;
      v109 = v126;
      sub_2664DEC68();
      v111 = v110;
      v107(v109, v30);
      *(v92 + 34) = v111;
      v112 = v134;
      _os_log_impl(&dword_26629C000, v134, v140, "Megamodel signal collection succeeded for %{public}s in %{public}f; breakdown is %{public}s, reported overall time from gatherer is %{public}f", v92, 0x2Au);
      v113 = v139;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v113, -1, -1);
      MEMORY[0x266784AD0](v92, -1, -1);

      (*(v104 + 8))(v131, v141);
      v107(v37, v30);
    }

    else
    {

      v117 = *(v31 + 8);
      v117(v87, v30);
      v117(v128, v30);
      (*(v83 + 8))(v129, v85);
      (*(v142 + 8))(v131, v78);
      v117(v37, v30);
    }
  }

  v138(&v145);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v145);
}

uint64_t sub_26644FFAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B60, &qword_2664E9118);
  v37 = v4;
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + (v21 << 6);
      if (v37)
      {
        v38 = *(v25 + 8);
        v39 = *v25;
        v40 = *(v25 + 24);
        v42 = *(v25 + 32);
        v41 = *(v25 + 48);
        v43 = *(v25 + 56);
        v44 = *(v25 + 40);
      }

      else
      {
        v26 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 48);
        v46 = *(v25 + 32);
        v47 = v28;
        *v45 = v26;
        *&v45[16] = v27;
        v43 = *(&v28 + 1);
        v44 = *(&v46 + 1);
        v41 = v28;
        v42 = v46;
        v39 = v26;
        v40 = *(&v27 + 1);
        v38 = *&v45[8];

        sub_2662C0AE0(v45, v48);
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + (v15 << 6);
      *v17 = v39;
      *(v17 + 8) = v38;
      *(v17 + 24) = v40;
      *(v17 + 32) = v42;
      *(v17 + 40) = v44;
      *(v17 + 48) = v41;
      *(v17 + 56) = v43;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_266450328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
  v33 = v4;
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_266318804(v24, v34);
      }

      else
      {
        sub_2662A01E8(v24, v34);
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_266318804(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2664505E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
  v36 = v4;
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      if (v36)
      {
        v27 = v26[1];
        v37 = *v26;
        v38 = v27;
      }

      else
      {
        sub_2662A7224(v26, &v37, &unk_280074250, &unk_2664E3680);
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v24;
      v16[1] = v25;
      v17 = (*(v7 + 56) + 32 * v15);
      v18 = v38;
      *v17 = v37;
      v17[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2664508BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v33 = v4;
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_266450B74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_2664E0C88();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_266450E14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
  v34 = v4;
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2664510DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F50, &qword_2664ED6B0);
  v37 = v4;
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2664513C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_2664E0C88();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_266451660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A70, &unk_2664ED610);
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_266318804(v21, v31);
      }

      else
      {
        sub_2662A01E8(v21, v31);
        v22 = v20;
      }

      sub_2664E0E68();
      type metadata accessor for CFString(0);
      sub_266456CD0(&qword_2800729F8, type metadata accessor for CFString, &unk_2664E3068);
      sub_2664DF658();
      result = sub_2664E0EB8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_266318804(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_266451940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F58, &qword_2664E9078);
  v32 = v4;
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_2664E0E68();
      sub_2664E0368();

      result = sub_2664E0EB8();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_266451C5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_2664E0C88();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_266451EFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B10, &qword_2664ED698);
  v34 = v4;
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2664521CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - v11;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v47 = v9;
  result = sub_2664E0C88();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_266452550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B00, &qword_2664ED680);
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_266318804(v21, v31);
      }

      else
      {
        sub_2662A01E8(v21, v31);
        v22 = v20;
      }

      sub_2664E0E68();
      sub_2664E0E88();
      if (v20)
      {
        type metadata accessor for CFString(0);
        sub_266456CD0(&qword_2800729F8, type metadata accessor for CFString, &unk_2664E3068);
        sub_2664DF658();
      }

      result = sub_2664E0EB8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_266318804(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_26645284C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A60, &unk_2664ED600);
  result = sub_2664E0C88();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_2664E0E58();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_266452ABC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2664E0A28() + 1) & ~v5;
    do
    {
      sub_2664E0E68();

      sub_2664E0368();
      v12 = sub_2664E0EB8();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + (v3 << 6));
        v19 = (v17 + (v6 << 6));
        if (v3 != v6 || v18 >= v19 + 4)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[3];
          v18[2] = v19[2];
          v18[3] = v11;
          *v18 = v9;
          v18[1] = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_266452C74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2664E0A28() + 1) & ~v5;
    do
    {
      sub_2664E0E68();

      sub_2664E0368();
      v10 = sub_2664E0EB8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_266452E3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2664E0A28() + 1) & ~v5;
    do
    {
      sub_2664E0E68();

      sub_2664E0368();
      v9 = sub_2664E0EB8();

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

uint64_t sub_266452FEC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2664E0A28() + 1) & ~v5;
    do
    {
      sub_2664E0E68();

      sub_2664E0368();
      v9 = sub_2664E0EB8();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

void sub_26645319C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2664E0A28() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_2664E0E68();
      type metadata accessor for CFString(0);
      sub_266456CD0(&qword_2800729F8, type metadata accessor for CFString, &unk_2664E3068);
      v11 = v10;
      sub_2664DF658();
      v12 = sub_2664E0EB8();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_2664533AC(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_2664E0A28() + 1) & ~v6;
    while (1)
    {
      sub_2664E0E68();

      sub_2664E0368();
      v11 = sub_2664E0EB8();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2664535A0(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

_OWORD *sub_2664535F8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_266318804(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_26645367C(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_2664536C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_266453714(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_266318804(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_26645377C(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_2664537DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t sub_266453890(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_2664538FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B60, &qword_2664E9118);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_2662C0AE0(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_266453AC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2662A01E8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_266318804(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_266453C68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_2662A7224(*(v2 + 56) + 32 * v17, v27, &unk_280074250, &unk_2664E3680);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_266453E30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_266453FAC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2664E0C78();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_26645410C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_26645429C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F50, &qword_2664ED6B0);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

id sub_26645443C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2664E0C78();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_266454598()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A70, &unk_2664ED610);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2662A01E8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_266318804(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_266454718()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F58, &qword_2664E9078);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_266454894(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2664E0C78();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void *sub_2664549F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B10, &qword_2664ED698);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_266454B8C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v43 = a1(0);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_2664E0C78();
  v10 = v9;
  if (*(v8 + 16))
  {
    v38 = v6;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v44 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v45 + 32;
    v40 = v45 + 16;
    v41 = v8;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = 16 * v24;
        v26 = *(v8 + 56);
        v27 = (*(v8 + 48) + 16 * v24);
        v28 = *v27;
        v29 = v27[1];
        v30 = v45;
        v31 = *(v45 + 72) * v24;
        v32 = v42;
        v33 = v43;
        (*(v45 + 16))(v42, v26 + v31, v43);
        v34 = v44;
        v35 = (*(v44 + 48) + v25);
        *v35 = v28;
        v35[1] = v29;
        v36 = *(v34 + 56) + v31;
        v8 = v41;
        (*(v30 + 32))(v36, v32, v33);

        v19 = v46;
      }

      while (v46);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v38;
        v10 = v44;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v46 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }
}

id sub_266454E14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B00, &qword_2664ED680);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2662A01E8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_266318804(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_266454F94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A60, &unk_2664ED600);
  v2 = *v0;
  v3 = sub_2664E0C78();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2664550F0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_2662A7224(a1 + 32, &v44, &unk_2800734F0, &unk_2664E3660);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_266318804(v46, v41);
  v9 = *a3;
  v10 = sub_2662A3E98(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_266450328(v15, a2 & 1);
    v10 = sub_2662A3E98(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_2664E0DD8();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_266453AC4();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_266318804(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_2662A7224(v25, &v44, &unk_2800734F0, &unk_2664E3660);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_266318804(v46, v41);
      v29 = *a3;
      v30 = sub_2662A3E98(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_266450328(v34, 1);
        v30 = sub_2662A3E98(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_266318804(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000001BLL, 0x80000002664F4320);
  sub_2664E0C28();
  MEMORY[0x2667833B0](39, 0xE100000000000000);
  sub_2664E0C48();
  __break(1u);
}

uint64_t sub_2664554CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2662A8618(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_266455564(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(v9);
}

uint64_t sub_266455630(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v7 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *(v7 + 16);
  v13(&v19 - v11);
  sub_2662A98AC();
  v14 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266384800(0, v14[2] + 1, 1, v14);
    *a2 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266384800((v16 > 1), v17 + 1, 1, v14);
    *a2 = v14;
  }

  (v13)(v10, v12, a4);
  sub_2664554CC(v17, v10, a2, a4, v20);
  *a2 = v14;
  sub_2662AA89C();
  return (*(v7 + 8))(v12, a4);
}

uint64_t sub_2664557EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  swift_beginAccess();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = v6 + 40 * v5++;
    sub_2662A5550(v10, &v18);
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    DynamicType = swift_getDynamicType();
    v12 = (*a2 + 32);
    v13 = *(*a2 + 16) + 1;
    while (--v13)
    {
      v14 = *v12;
      v12 += 2;
      if (v14 == DynamicType)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v18);
        goto LABEL_6;
      }
    }

    sub_2662A8618(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2662FD220(0, *(v7 + 16) + 1, 1);
      v7 = v20;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_2662FD220((v8 > 1), v9 + 1, 1);
      v7 = v20;
    }

    *(v7 + 16) = v9 + 1;
    sub_2662A8618(v17, v7 + 40 * v9 + 32);
LABEL_6:
    ;
  }

  while (v5 != v4);
  return v7;
}

uint64_t sub_266455964(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v158 = a6;
  v156 = a5;
  v154 = a4;
  v151 = a3;
  v150 = a2;
  v7 = sub_2664DFE38();
  result = MEMORY[0x28223BE20](v7);
  v146 = v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = *(a1 + 16);
  if (!v148)
  {
    return result;
  }

  v12 = 0;
  v152 = 0;
  v149 = a1 + 32;
  v145 = (v9 + 16);
  v144 = (v9 + 8);
  *&v10 = 136446722;
  v143 = v10;
  v147 = v7;
LABEL_6:
  v153 = v12;
  sub_2662A5550(v149 + 40 * v12, &v173);
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  swift_getDynamicType();
  v13 = (*(v175 + 16))();
  v14 = v174;
  v15 = v175;
  __swift_project_boxed_opaque_existential_1(&v173, v174);
  v16 = (*(v15 + 32))(v150, v151, v14, v15);

  v17 = sub_26639F100();
  LOBYTE(v14) = sub_26639C5D0(v13, v17);

  v160 = v16;
  if (v14)
  {
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v19 = v146;
    (*v145)(v146, v18, v7);
    sub_2662A5550(&v173, &v170);

    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      *&v164 = v159;
      *v22 = v143;
      __swift_project_boxed_opaque_existential_1(&v170, *(&v171 + 1));
      *&v167 = swift_getDynamicType();
      *(&v167 + 1) = v172;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
      v23 = sub_2664E0318();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1Tm(&v170);
      v26 = sub_2662A320C(v23, v25, &v164);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      v27 = sub_2664E0618();
      v29 = v28;

      v30 = v27;
      v16 = v160;
      v31 = sub_2662A320C(v30, v29, &v164);

      *(v22 + 14) = v31;
      *(v22 + 22) = 2082;
      v32 = *(v16 + 16);
      if (v32)
      {
        v33 = sub_26640C820(*(v16 + 16), 0);
        v157 = sub_266410DDC();
        v155 = v167;
        v142[1] = v168;

        sub_2662B793C(v155);
        if (v157 != v32)
        {
          goto LABEL_115;
        }

        v16 = v160;
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }

      v34 = MEMORY[0x2667834D0](v33, MEMORY[0x277D837D0]);
      v36 = v35;

      v37 = sub_2662A320C(v34, v36, &v164);

      *(v22 + 24) = v37;
      _os_log_impl(&dword_26629C000, v20, v21, "AppSelectionSignals#asRows expected signal: %{public}s columnKeys: %{public}s to be equal to candidate columns: %{public}s", v22, 0x20u);
      v38 = v159;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v22, -1, -1);

      (*v144)(v146, v7);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v170);
      (*v144)(v19, v7);
    }
  }

  if (!v158)
  {
    v65 = v154;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *v65;
    v161 = *v65;
    v68 = v16;
    v71 = *(v16 + 64);
    v70 = v16 + 64;
    v69 = v71;
    v72 = 1 << *(v68 + 32);
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    else
    {
      v73 = -1;
    }

    v74 = v73 & v69;
    v75 = (v72 + 63) >> 6;

    v76 = 0;
    if (!v74)
    {
      goto LABEL_43;
    }

LABEL_42:
    v79 = v76;
LABEL_51:
    v82 = __clz(__rbit64(v74));
    v74 &= v74 - 1;
    v83 = v82 | (v79 << 6);
    v84 = (*(v160 + 48) + 16 * v83);
    v86 = *v84;
    v85 = v84[1];
    sub_2662A01E8(*(v160 + 56) + 32 * v83, &v164);
    *&v167 = v86;
    *(&v167 + 1) = v85;
    sub_266318804(&v164, &v168);

    while (1)
    {
      v164 = v167;
      v165 = v168;
      v166 = v169;
      v87 = *(&v167 + 1);
      if (!*(&v167 + 1))
      {
        v171 = 0u;
        v172 = 0u;
        v170 = 0u;
LABEL_102:

        *v154 = v67;
        goto LABEL_5;
      }

      v88 = v164;
      sub_2662A01E8(&v165, &v171);
      *&v170 = v88;
      *(&v170 + 1) = v87;

      sub_2662A9238(&v164, &unk_280073B20, &qword_2664ED6A8);
      v89 = *(&v170 + 1);
      if (!*(&v170 + 1))
      {
        goto LABEL_102;
      }

      v90 = isUniquelyReferenced_nonNull_native;
      v91 = v170;
      sub_266318804(&v171, &v167);
      v92 = sub_2662A3E98(v91, v89);
      v94 = v67[2];
      v95 = (v93 & 1) == 0;
      v96 = __OFADD__(v94, v95);
      v97 = v94 + v95;
      if (v96)
      {
        goto LABEL_112;
      }

      v98 = v93;
      if (v67[3] < v97)
      {
        break;
      }

      if (v90)
      {
        goto LABEL_59;
      }

      v103 = v92;
      sub_266453AC4();
      v92 = v103;
      if (v98)
      {
LABEL_41:
        v67 = v161;
        v77 = 32 * v92;
        sub_2662A01E8(v161[7] + 32 * v92, &v164);
        __swift_destroy_boxed_opaque_existential_1Tm(&v167);

        v78 = v67[7];
        __swift_destroy_boxed_opaque_existential_1Tm((v78 + v77));
        sub_266318804(&v164, (v78 + v77));
        isUniquelyReferenced_nonNull_native = 1;
        if (v74)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

LABEL_60:
      v67 = v161;
      v161[(v92 >> 6) + 8] |= 1 << v92;
      v100 = (v67[6] + 16 * v92);
      *v100 = v91;
      v100[1] = v89;
      sub_266318804(&v167, (v67[7] + 32 * v92));
      v101 = v67[2];
      v96 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v96)
      {
        goto LABEL_114;
      }

      v67[2] = v102;
      isUniquelyReferenced_nonNull_native = 1;
      if (v74)
      {
        goto LABEL_42;
      }

LABEL_43:
      if (v75 <= v76 + 1)
      {
        v80 = v76 + 1;
      }

      else
      {
        v80 = v75;
      }

      v81 = v80 - 1;
      while (1)
      {
        v79 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          goto LABEL_105;
        }

        if (v79 >= v75)
        {
          break;
        }

        v74 = *(v70 + 8 * v79);
        ++v76;
        if (v74)
        {
          v76 = v79;
          goto LABEL_51;
        }
      }

      v74 = 0;
      v168 = 0u;
      v169 = 0u;
      v76 = v81;
      v167 = 0u;
    }

    sub_266450328(v97, v90 & 1);
    v92 = sub_2662A3E98(v91, v89);
    if ((v98 & 1) != (v99 & 1))
    {
      goto LABEL_116;
    }

LABEL_59:
    if (v98)
    {
      goto LABEL_41;
    }

    goto LABEL_60;
  }

  v39 = *(v16 + 16);
  if (v39)
  {
    v163 = MEMORY[0x277D84F90];
    sub_2662FD190(0, v39, 0);
    v40 = v163;
    v160 = v16 + 64;
    v41 = sub_2664E0A18();
    v42 = 0;
    v155 = v16 + 72;
    v157 = v39;
    do
    {
      if (v41 < 0 || v41 >= 1 << *(v16 + 32))
      {
        goto LABEL_106;
      }

      v45 = v41 >> 6;
      if ((*(v160 + 8 * (v41 >> 6)) & (1 << v41)) == 0)
      {
        goto LABEL_107;
      }

      v159 = *(v16 + 36);
      v46 = *(v16 + 56);
      v47 = (*(v16 + 48) + 16 * v41);
      v48 = v16;
      v49 = *v47;
      v50 = v47[1];
      sub_2662A01E8(v46 + 32 * v41, &v168);
      *&v164 = v49;
      *(&v164 + 1) = v50;
      sub_266318804(&v168, &v165);
      v161 = v156;
      v162 = v158;

      MEMORY[0x2667833B0](v49, v50);
      v51 = v161;
      v52 = v162;
      sub_2662A01E8(&v165, &v171);
      *&v170 = v51;
      *(&v170 + 1) = v52;
      sub_2662A9238(&v164, &unk_280073B20, &qword_2664ED6A8);
      v163 = v40;
      v54 = *(v40 + 16);
      v53 = *(v40 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2662FD190((v53 > 1), v54 + 1, 1);
        v40 = v163;
      }

      *(v40 + 16) = v54 + 1;
      v55 = (v40 + 48 * v54);
      v56 = v170;
      v57 = v172;
      v55[3] = v171;
      v55[4] = v57;
      v55[2] = v56;
      v43 = 1 << *(v48 + 32);
      if (v41 >= v43)
      {
        goto LABEL_108;
      }

      v58 = *(v160 + 8 * v45);
      if ((v58 & (1 << v41)) == 0)
      {
        goto LABEL_109;
      }

      v16 = v48;
      if (v159 != *(v48 + 36))
      {
        goto LABEL_110;
      }

      v59 = v58 & (-2 << (v41 & 0x3F));
      if (v59)
      {
        v43 = __clz(__rbit64(v59)) | v41 & 0x7FFFFFFFFFFFFFC0;
        v44 = v157;
      }

      else
      {
        v60 = v45 << 6;
        v61 = v45 + 1;
        v62 = (v155 + 8 * v45);
        v44 = v157;
        while (v61 < (v43 + 63) >> 6)
        {
          v64 = *v62++;
          v63 = v64;
          v60 += 64;
          ++v61;
          if (v64)
          {
            sub_26634AE1C(v41, v159, 0);
            v43 = __clz(__rbit64(v63)) + v60;
            goto LABEL_21;
          }
        }

        sub_26634AE1C(v41, v159, 0);
      }

LABEL_21:
      ++v42;
      v41 = v43;
    }

    while (v42 != v44);

    if (*(v40 + 16))
    {
      goto LABEL_67;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_67:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
      v104 = sub_2664E0C98();
      goto LABEL_70;
    }
  }

  v104 = MEMORY[0x277D84F98];
LABEL_70:
  *&v170 = v104;

  v106 = v152;
  sub_2664550F0(v105, 1, &v170);
  v152 = v106;
  if (v106)
  {
    goto LABEL_117;
  }

  v107 = v170;
  v108 = v154;
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v108;
  v161 = *v108;
  v111 = v107 + 64;
  v112 = 1 << *(v107 + 32);
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  else
  {
    v113 = -1;
  }

  v114 = v113 & *(v107 + 64);
  v115 = (v112 + 63) >> 6;
  v160 = v107;

  v116 = 0;
  if (v114)
  {
    while (1)
    {
      v119 = v116;
LABEL_86:
      v122 = __clz(__rbit64(v114));
      v114 &= v114 - 1;
      v123 = v122 | (v119 << 6);
      v124 = (*(v160 + 48) + 16 * v123);
      v126 = *v124;
      v125 = v124[1];
      sub_2662A01E8(*(v160 + 56) + 32 * v123, &v164);
      *&v167 = v126;
      *(&v167 + 1) = v125;
      sub_266318804(&v164, &v168);

LABEL_87:
      v164 = v167;
      v165 = v168;
      v166 = v169;
      v127 = *(&v167 + 1);
      if (!*(&v167 + 1))
      {
        v171 = 0u;
        v172 = 0u;
        v170 = 0u;
LABEL_4:

        *v154 = v110;
LABEL_5:
        v12 = v153 + 1;
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v173);
        v7 = v147;
        if (v12 == v148)
        {
          return result;
        }

        goto LABEL_6;
      }

      v128 = v164;
      sub_2662A01E8(&v165, &v171);
      *&v170 = v128;
      *(&v170 + 1) = v127;

      sub_2662A9238(&v164, &unk_280073B20, &qword_2664ED6A8);
      v129 = *(&v170 + 1);
      if (!*(&v170 + 1))
      {
        goto LABEL_4;
      }

      v130 = v170;
      sub_266318804(&v171, &v167);
      v131 = sub_2662A3E98(v130, v129);
      v133 = v110[2];
      v134 = (v132 & 1) == 0;
      v96 = __OFADD__(v133, v134);
      v135 = v133 + v134;
      if (v96)
      {
        goto LABEL_111;
      }

      v136 = v132;
      if (v110[3] >= v135)
      {
        if (v109)
        {
          goto LABEL_94;
        }

        v141 = v131;
        sub_266453AC4();
        v131 = v141;
        if ((v136 & 1) == 0)
        {
          goto LABEL_95;
        }

LABEL_76:
        v110 = v161;
        v117 = 32 * v131;
        sub_2662A01E8(v161[7] + 32 * v131, &v164);
        __swift_destroy_boxed_opaque_existential_1Tm(&v167);

        v118 = v110[7];
        __swift_destroy_boxed_opaque_existential_1Tm((v118 + v117));
        sub_266318804(&v164, (v118 + v117));
        v109 = 1;
        if (!v114)
        {
          break;
        }
      }

      else
      {
        sub_266450328(v135, v109 & 1);
        v131 = sub_2662A3E98(v130, v129);
        if ((v136 & 1) != (v137 & 1))
        {
          goto LABEL_116;
        }

LABEL_94:
        if (v136)
        {
          goto LABEL_76;
        }

LABEL_95:
        v110 = v161;
        v161[(v131 >> 6) + 8] |= 1 << v131;
        v138 = (v110[6] + 16 * v131);
        *v138 = v130;
        v138[1] = v129;
        sub_266318804(&v167, (v110[7] + 32 * v131));
        v139 = v110[2];
        v96 = __OFADD__(v139, 1);
        v140 = v139 + 1;
        if (v96)
        {
          goto LABEL_113;
        }

        v110[2] = v140;
        v109 = 1;
        if (!v114)
        {
          break;
        }
      }
    }
  }

  if (v115 <= v116 + 1)
  {
    v120 = v116 + 1;
  }

  else
  {
    v120 = v115;
  }

  v121 = v120 - 1;
  while (1)
  {
    v119 = v116 + 1;
    if (__OFADD__(v116, 1))
    {
      break;
    }

    if (v119 >= v115)
    {
      v114 = 0;
      v168 = 0u;
      v169 = 0u;
      v116 = v121;
      v167 = 0u;
      goto LABEL_87;
    }

    v114 = *(v111 + 8 * v119);
    ++v116;
    if (v114)
    {
      v116 = v119;
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
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
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  sub_2664E0DD8();
  __break(1u);
LABEL_117:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_2664568A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  i = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280F914E8 == -1)
  {
    goto LABEL_2;
  }

LABEL_19:
  swift_once();
LABEL_2:
  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(i, v10, v6);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "AppSelectionSignals#asRows building result row for candidates...", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v7 + 8))(i, v6);
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v7 = v15 & *(a2 + 56);
  v6 = (v14 + 63) >> 6;

  v16 = 0;
  for (i = MEMORY[0x277D84F90]; v7; i[v23 + 4] = v21)
  {
LABEL_11:
    v18 = (*(a2 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v7)))));
    v19 = *v18;
    v20 = v18[1];
    v27 = MEMORY[0x277D84F98];

    sub_266455964(a1, v19, v20, &v27, 0, 0);
    sub_266455964(v25, v19, v20, &v27, 0x5F31657370, 0xE500000000000000);
    sub_266455964(v26, v19, v20, &v27, 0x5F32657370, 0xE500000000000000);

    v21 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_266384E1C(0, i[2] + 1, 1, i);
    }

    v23 = i[2];
    v22 = i[3];
    if (v23 >= v22 >> 1)
    {
      i = sub_266384E1C((v22 > 1), v23 + 1, 1, i);
    }

    v7 &= v7 - 1;
    i[2] = v23 + 1;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v17 >= v6)
    {
      break;
    }

    v7 = *(a2 + 56 + 8 * v17);
    ++v16;
    if (v7)
    {
      v16 = v17;
      goto LABEL_11;
    }
  }

  return i;
}

uint64_t sub_266456C10(_OWORD *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_266455564(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_266456CD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266456DBC(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_26644F2AC(a1, v1 + v4, *v5, *(v5 + 8), &type metadata for SiriSignalsDependentSignalBridge, &off_2877F2808, qword_280F912C0, &qword_280F91D18, &qword_280073A90, &qword_2664ED638, sub_26645A89C);
}

uint64_t objectdestroy_72Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_266456F50()
{
  result = qword_280F8F718;
  if (!qword_280F8F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F718);
  }

  return result;
}

uint64_t sub_266456FCC(uint64_t a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2662C3928(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t objectdestroy_57Tm()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_266457114(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_26644F2AC(a1, v1 + v4, *v5, *(v5 + 8), &type metadata for SiriSignalsIndependentSignalBridge, &off_2877F27A0, &qword_280F912B8, &qword_280F91D10, &qword_280073AC8, &qword_2664ED658, sub_26645A85C);
}

uint64_t objectdestroy_60Tm()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2664572F0(void *a1, uint64_t *a2, uint64_t *a3, const char *a4, ...)
{
  v9 = *(sub_2664DE438() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  sub_26644D7B4(a1, v4[2], v4[3], v4[4], v4[5], v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3, a4);
}

void sub_2664573B4(void *a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_26644A7B0(a1, v5, v6, v7, (v1 + v4), v8);
}

uint64_t AppInstalledAs.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

unint64_t sub_266457530()
{
  result = qword_280073B70;
  if (!qword_280073B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073B70);
  }

  return result;
}

BOOL sub_266457594(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xEB000000006F6964;
    v9 = 0x6172706D61732D78;
    switch(*v4)
    {
      case 1:
        v9 = 0x6C70706D61732D78;
        v8 = 0xEE007473696C7961;
        break;
      case 2:
        v9 = 0xD000000000000016;
        v8 = 0x80000002664F1710;
        break;
      case 3:
        v9 = 0x656D706D61732D78;
        v8 = 0xED00006D65746964;
        break;
      case 4:
        v9 = 0xD000000000000014;
        v8 = 0x80000002664F1740;
        break;
      case 5:
        v9 = 0xD000000000000017;
        v8 = 0x80000002664F1760;
        break;
      case 6:
        v9 = 0xD000000000000018;
        v8 = 0x80000002664F1780;
        break;
      case 7:
        v9 = 0xD00000000000001FLL;
        v8 = 0x80000002664F17A0;
        break;
      case 8:
        v9 = 0xD000000000000017;
        v8 = 0x80000002664F17C0;
        break;
      case 9:
        v9 = 0xD000000000000016;
        v8 = 0x80000002664F17E0;
        break;
      case 0xA:
        v9 = 0x2D616964656D2D78;
        v8 = 0xEF7972617262696CLL;
        break;
      case 0xB:
        v9 = 0x6574616572632D78;
        v8 = 0xEF6E6F6974617473;
        break;
      case 0xC:
        v9 = 0xD000000000000011;
        v8 = 0x80000002664F1820;
        break;
      case 0xD:
        v9 = 0xD00000000000001ALL;
        v8 = 0x80000002664F1840;
        break;
      case 0xE:
        v9 = 0xD00000000000001ALL;
        v8 = 0x80000002664F1860;
        break;
      case 0xF:
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v10 = 0x6172706D61732D78;
    v11 = 0xEB000000006F6964;
    switch(a1)
    {
      case 1:
        v11 = 0xEE007473696C7961;
        if (v9 == 0x6C70706D61732D78)
        {
          goto LABEL_50;
        }

        goto LABEL_2;
      case 2:
        v11 = 0x80000002664F1710;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 3:
        v11 = 0xED00006D65746964;
        if (v9 != 0x656D706D61732D78)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 4:
        v11 = 0x80000002664F1740;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 5:
        v11 = 0x80000002664F1760;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 6:
        v11 = 0x80000002664F1780;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 7:
        v11 = 0x80000002664F17A0;
        if (v9 != 0xD00000000000001FLL)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 8:
        v11 = 0x80000002664F17C0;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 9:
        v11 = 0x80000002664F17E0;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 10:
        v10 = 0x2D616964656D2D78;
        v11 = 0xEF7972617262696CLL;
        goto LABEL_49;
      case 11:
        v11 = 0xEF6E6F6974617473;
        if (v9 != 0x6574616572632D78)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 12:
        v11 = 0x80000002664F1820;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 13:
        v11 = 0x80000002664F1840;
        if (v9 != 0xD00000000000001ALL)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 14:
        v11 = 0x80000002664F1860;
        if (v9 != 0xD00000000000001ALL)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      case 15:
        v11 = 0xE700000000000000;
        if (v9 != 0x6E776F6E6B6E75)
        {
          goto LABEL_2;
        }

        goto LABEL_50;
      default:
LABEL_49:
        if (v9 != v10)
        {
          goto LABEL_2;
        }

LABEL_50:
        if (v8 != v11)
        {
LABEL_2:
          v5 = sub_2664E0D88();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

BOOL sub_266457A34(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_2664DEA78();
    ++v2;
    sub_26631E4BC();
  }

  while ((sub_2664E0298() & 1) == 0);
  return v3 != v4;
}

BOOL sub_266457B0C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = a1;
  do
  {
    v25 = v2;
    v6 = v2 - 1;
    if (!v2)
    {
      break;
    }

    v7 = *v3;
    if (v7 > 3)
    {
      if (*v3 > 5u)
      {
        if (v7 == 6)
        {
          v12 = 0x62696C656C6F6877;
          v13 = 0xEC00000079726172;
        }

        else
        {
          v13 = 0xE700000000000000;
          v12 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        if (v7 == 4)
        {
          v12 = 1684630645;
        }

        else
        {
          v12 = 0x6867696C746F7073;
        }

        if (v7 == 4)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE900000000000074;
        }
      }
    }

    else
    {
      if (v7 == 2)
      {
        v8 = 0x72657669746C756DLL;
      }

      else
      {
        v8 = 0x65726F7473;
      }

      if (v7 == 2)
      {
        v9 = 0xEA00000000006573;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      if (*v3)
      {
        v10 = 0x636E797369726973;
      }

      else
      {
        v10 = 0x656369766564;
      }

      if (*v3)
      {
        v11 = 0xE800000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 1u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*v3 <= 1u)
      {
        v13 = v11;
      }

      else
      {
        v13 = v9;
      }
    }

    v14 = 0x62696C656C6F6877;
    if (v4 != 6)
    {
      v14 = 0x6E776F6E6B6E75;
    }

    v15 = 0xEC00000079726172;
    if (v4 != 6)
    {
      v15 = 0xE700000000000000;
    }

    v16 = 0x6867696C746F7073;
    if (v4 == 4)
    {
      v16 = 1684630645;
    }

    v17 = 0xE900000000000074;
    if (v4 == 4)
    {
      v17 = 0xE400000000000000;
    }

    if (v4 <= 5)
    {
      v14 = v16;
      v15 = v17;
    }

    if (v4 == 2)
    {
      v18 = 0x72657669746C756DLL;
    }

    else
    {
      v18 = 0x65726F7473;
    }

    if (v4 == 2)
    {
      v19 = 0xEA00000000006573;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    if (v4)
    {
      v20 = 0x636E797369726973;
    }

    else
    {
      v20 = 0x656369766564;
    }

    if (v4)
    {
      v21 = 0xE800000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    if (v4 <= 1)
    {
      v18 = v20;
      v19 = v21;
    }

    if (v4 <= 3)
    {
      v22 = v18;
    }

    else
    {
      v22 = v14;
    }

    if (v4 <= 3)
    {
      v23 = v19;
    }

    else
    {
      v23 = v15;
    }

    if (v12 == v22 && v13 == v23)
    {

      return v25 != 0;
    }

    v5 = sub_2664E0D88();

    v2 = v6;
    ++v3;
  }

  while ((v5 & 1) == 0);
  return v25 != 0;
}

uint64_t sub_266457D7C(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 40);
    do
    {
      if (*v4)
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *(v4 - 1) == a1)
      {
        return 1;
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return 0;
}

BOOL sub_266457DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v7 = PlaybackCode.rawValue.getter();
    v9 = v8;
    if (v7 == PlaybackCode.rawValue.getter() && v9 == v10)
    {

      return v5 != 0;
    }

    v4 = sub_2664E0D88();

    ++v3;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

Swift::String __swiftcall INIntent.firstPartyResultsBundleIdentifier(internalSearchResults:canUseClassical:)(Swift::OpaquePointer_optional internalSearchResults, Swift::Bool canUseClassical)
{
  LODWORD(v3) = *&internalSearchResults.is_nil;
  rawValue = internalSearchResults.value._rawValue;
  v144 = sub_2664DFE38();
  v5 = *(v144 - 8);
  v6 = MEMORY[0x28223BE20](v144);
  v141 = &v136[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v136[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v142 = &v136[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v138 = &v136[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v136[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v136[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v140 = &v136[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v139 = &v136[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v136[-v26];
  MEMORY[0x28223BE20](v25);
  v29 = &v136[-v28];
  v145[0] = v2;
  sub_26645A344();
  v143 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B78, &qword_2664ED788);
  if (swift_dynamicCast())
  {
    v137 = v3;
    v3 = v10;
    v30 = v20;
    v31 = v27;
    v27 = v5;
    v32 = *(&v148 + 1);
    v33 = v149;
    __swift_project_boxed_opaque_existential_1(&v147, *(&v148 + 1));
    v34 = (*(v33 + 8))(v32, v33);
    if (v34)
    {
      v35 = v34;
      v36 = [v34 mediaType];

      __swift_destroy_boxed_opaque_existential_1Tm(&v147);
      if (v36 == 10)
      {
        if (qword_280F914E8 == -1)
        {
LABEL_5:
          v37 = v144;
          v38 = __swift_project_value_buffer(v144, qword_280F914F0);
          swift_beginAccess();
          v39 = v141;
          (*(v27 + 2))(v141, v38, v37);
          v40 = sub_2664DFE18();
          v41 = sub_2664E06E8();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_26629C000, v40, v41, "INIntent#firstPartyResultsBundleIdentifier preferred bundle was books given mediaType (possibly ignoring AMP search)", v42, 2u);
            MEMORY[0x266784AD0](v42, -1, -1);
          }

          v43 = 0xD000000000000010;
          (*(v27 + 1))(v39, v37);
LABEL_68:
          v58 = 0x80000002664F41C0;
          goto LABEL_69;
        }

LABEL_88:
        swift_once();
        goto LABEL_5;
      }

      LODWORD(v141) = 0;
      v5 = v27;
      v27 = v31;
      v20 = v30;
      v10 = v3;
      LOBYTE(v3) = v137;
      if (!rawValue)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v147);
    v5 = v27;
    v27 = v31;
    v20 = v30;
    v10 = v3;
    LOBYTE(v3) = v137;
  }

  else
  {
    v149 = 0;
    v147 = 0u;
    v148 = 0u;
    sub_2662A9238(&v147, &qword_280073B80, &qword_2664ED790);
  }

  v36 = 0;
  LODWORD(v141) = 1;
  if (!rawValue)
  {
    goto LABEL_25;
  }

LABEL_11:
  if (rawValue >> 62)
  {
    if (!sub_2664E0A68())
    {
      goto LABEL_25;
    }
  }

  else if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

  if ((rawValue & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x266783B70](0, rawValue);
  }

  else
  {
    if (!*((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_88;
    }

    v44 = *(rawValue + 32);
  }

  v45 = v44;
  v46 = [v44 identifier];

  if (v46)
  {
    v47 = sub_2664E02C8();
    v49 = v48;

    static PlaybackItem.Identifier.parse(uri:)(v47, v49, &v147);
    if (!v148)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v105 = v144;
      v106 = __swift_project_value_buffer(v144, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 2))(v20, v106, v105);

      v107 = sub_2664DFE18();
      v108 = sub_2664E06D8();

      v43 = 0x6C7070612E6D6F63;
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v145[0] = v110;
        *v109 = 136315138;
        v111 = sub_2662A320C(v47, v49, v145);

        *(v109 + 4) = v111;
        _os_log_impl(&dword_26629C000, v107, v108, "INIntent#firstPartyResultsBundleIdentifier error parsing identifier into playback item: %s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v110);
        MEMORY[0x266784AD0](v110, -1, -1);
        MEMORY[0x266784AD0](v109, -1, -1);
      }

      else
      {
      }

      (*(v5 + 1))(v20, v105);
      v58 = 0xEF636973754D2E65;
      goto LABEL_69;
    }

    v50 = v147;

    v51 = sub_266457594(v50, &unk_2877E1DC8);

    if (v51)
    {
      v52 = v144;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v53 = __swift_project_value_buffer(v52, qword_280F914F0);
      swift_beginAccess();
      v54 = v140;
      (*(v5 + 2))(v140, v53, v52);
      v55 = sub_2664DFE18();
      v56 = sub_2664E06E8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_26629C000, v55, v56, "INIntent#firstPartyResultsBundleIdentifier using podcasts as scheme of first result was podcasts related", v57, 2u);
        MEMORY[0x266784AD0](v57, -1, -1);
      }

      (*(v5 + 1))(v54, v52);
      v58 = 0x80000002664F2EA0;
      v43 = 0xD000000000000012;
      goto LABEL_69;
    }

    v112 = v3;
    v113 = v29;
    v43 = 0xD000000000000010;
    LOBYTE(v147) = v50;
    v114 = PlaybackItem.Scheme.rawValue.getter();
    v116 = v144;
    if (v114 == 0xD00000000000001ALL && 0x80000002664F1840 == v115)
    {
    }

    else
    {
      v117 = sub_2664E0D88();

      if ((v117 & 1) == 0)
      {
        if (v112)
        {
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v123 = __swift_project_value_buffer(v116, qword_280F914F0);
          swift_beginAccess();
          (*(v5 + 2))(v113, v123, v116);
          v124 = sub_2664DFE18();
          v125 = sub_2664E06E8();
          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            *v126 = 0;
            _os_log_impl(&dword_26629C000, v124, v125, "INIntent#firstPartyResultsBundleIdentifier setting bundle ID to Classical", v126, 2u);
            MEMORY[0x266784AD0](v126, -1, -1);
          }

          (*(v5 + 1))(v113, v116);
          v58 = 0x80000002664F6820;
          v43 = 0xD000000000000019;
        }

        else
        {
          v130 = v27;
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v58 = 0xEF636973754D2E65;
          v43 = 0x6C7070612E6D6F63;
          v131 = __swift_project_value_buffer(v116, qword_280F914F0);
          swift_beginAccess();
          (*(v5 + 2))(v130, v131, v116);
          v132 = sub_2664DFE18();
          v133 = sub_2664E06E8();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            *v134 = 0;
            _os_log_impl(&dword_26629C000, v132, v133, "INIntent#firstPartyResultsBundleIdentifier falling back to music for results-inferred app as scheme", v134, 2u);
            MEMORY[0x266784AD0](v134, -1, -1);
          }

          (*(v5 + 1))(v130, v116);
        }

        goto LABEL_69;
      }
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v118 = __swift_project_value_buffer(v116, qword_280F914F0);
    swift_beginAccess();
    v119 = v139;
    (*(v5 + 2))(v139, v118, v116);
    v120 = sub_2664DFE18();
    v121 = sub_2664E06E8();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_26629C000, v120, v121, "INIntent#firstPartyResultsBundleIdentifier using audiobooks as scheme of first result was audiobooks related", v122, 2u);
      MEMORY[0x266784AD0](v122, -1, -1);
    }

    (*(v5 + 1))(v119, v116);
    goto LABEL_68;
  }

LABEL_25:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v59 = v144;
  v60 = __swift_project_value_buffer(v144, qword_280F914F0);
  swift_beginAccess();
  v61 = *(v5 + 2);
  v61(v17, v60, v59);
  v62 = sub_2664DFE18();
  v63 = sub_2664E06E8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_26629C000, v62, v63, "INIntent#firstPartyResultsBundleIdentifier no playback identifier present, trying to infer app...", v64, 2u);
    MEMORY[0x266784AD0](v64, -1, -1);
  }

  v65 = *(v5 + 1);
  v140 = v5 + 8;
  (v65)(v17, v144);
  v66 = v143;
  v67 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(v143);
  v139 = v65;
  if (v68)
  {
    v43 = v67;
    v58 = v68;
    if (v67 != 0xD000000000000018 || v68 != 0x80000002664F2F20) && (sub_2664E0D88() & 1) == 0 && (_s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(v43, v58))
    {
      v69 = v138;
      v70 = v144;
      v61(v138, v60, v144);
      v71 = v66;

      v72 = sub_2664DFE18();
      v73 = sub_2664E06E8();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v146 = v75;
        *v74 = 136446466;
        v76 = [v71 launchId];
        if (v76)
        {
          v77 = v43;
          v78 = v76;
          v79 = sub_2664E02C8();
          v81 = v80;

          v43 = v77;
        }

        else
        {
          v79 = 0;
          v81 = 0;
        }

        v145[0] = v79;
        v145[1] = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
        v127 = sub_2664E0318();
        v129 = sub_2662A320C(v127, v128, &v146);

        *(v74 + 4) = v129;
        *(v74 + 12) = 2082;
        *(v74 + 14) = sub_2662A320C(v43, v58, &v146);
        _os_log_impl(&dword_26629C000, v72, v73, "INIntent#firstPartyResultsBundleIdentifier defaulting to non-sentinel launchId:%{public}s -- bundle identifier: %{public}s", v74, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v75, -1, -1);
        MEMORY[0x266784AD0](v74, -1, -1);

        (v139)(v138, v144);
        goto LABEL_69;
      }

      v87 = v69;
      v88 = v70;
      goto LABEL_52;
    }
  }

  if (v141)
  {
    v58 = 0xEF636973754D2E65;
    v43 = 0x6C7070612E6D6F63;
    v82 = v60;
    v83 = v144;
    v61(v10, v82, v144);
    v84 = sub_2664DFE18();
    v85 = sub_2664E06E8();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_26629C000, v84, v85, "INIntent#firstPartyResultsBundleIdentifier defaulting to music for intent - no media type present", v86, 2u);
      MEMORY[0x266784AD0](v86, -1, -1);
    }

    v87 = v10;
    v88 = v83;
    goto LABEL_52;
  }

  v89 = vdupq_n_s64(v36);
  v90 = (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2877E1E10, v89), vceqq_s64(unk_2877E1E20, v89)))) & 1 | (qword_2877E1E30 == v36)) == 0;
  if (v90)
  {
    v43 = 0x6C7070612E6D6F63;
  }

  else
  {
    v43 = 0xD000000000000012;
  }

  if (v90)
  {
    v58 = 0xEF636973754D2E65;
  }

  else
  {
    v58 = 0x80000002664F2EA0;
  }

  v91 = v142;
  v92 = v144;
  v61(v142, v60, v144);

  v93 = sub_2664DFE18();
  v94 = sub_2664E06E8();

  if (!os_log_type_enabled(v93, v94))
  {

    v87 = v91;
    v88 = v92;
LABEL_52:
    (v139)(v87, v88);
    goto LABEL_69;
  }

  v95 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v145[0] = v96;
  *v95 = 136315394;
  v97 = v43;
  *(v95 + 4) = sub_2662A320C(v43, v58, v145);
  *(v95 + 12) = 2080;
  v98 = INMediaItemTypeGetName();
  if (!v98)
  {
    __break(1u);
    goto LABEL_90;
  }

  v100 = v98;
  v101 = sub_2664E02C8();
  v103 = v102;

  v104 = sub_2662A320C(v101, v103, v145);

  *(v95 + 14) = v104;
  _os_log_impl(&dword_26629C000, v93, v94, "INIntent#firstPartyResultsBundleIdentifier defaulting to bundle identifier: %s for intent based on media type: %s", v95, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x266784AD0](v96, -1, -1);
  MEMORY[0x266784AD0](v95, -1, -1);

  (v139)(v142, v144);
  v43 = v97;
LABEL_69:
  v98 = v43;
  v99 = v58;
LABEL_90:
  result._object = v99;
  result._countAndFlagsBits = v98;
  return result;
}