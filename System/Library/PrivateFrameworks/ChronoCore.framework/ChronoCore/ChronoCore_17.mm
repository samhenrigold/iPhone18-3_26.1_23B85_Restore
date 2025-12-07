uint64_t sub_224BBB398()
{
  v1 = v0;
  v2 = sub_224DA9AE8();
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DA9BF8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 128), *(v0 + 152));
  sub_224DA9BE8();
  v11 = sub_224DAD4C8();
  v35 = v5;
  v36 = v2;
  v12 = v34;
  (*(v7 + 8))(v10, v6);
  v13 = *(v11 + 16);
  if (v13)
  {
    v32 = v0;
    v37 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v13, 0);
    v14 = v36;
    v15 = v37;
    v16 = v12 + 16;
    v17 = *(v12 + 2);
    v18 = v12[80];
    v31 = v11;
    v19 = v11 + ((v18 + 32) & ~v18);
    v33 = *(v12 + 9);
    v34 = v17;
    v20 = (v12 + 8);
    do
    {
      v21 = v35;
      v22 = v16;
      (v34)(v35, v19, v14);
      v23 = sub_224DA9AD8();
      v14 = v36;
      v24 = v23;
      v26 = v25;
      (*v20)(v21, v36);
      v37 = v15;
      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_224A3DFD8((v27 > 1), v28 + 1, 1);
        v14 = v36;
        v15 = v37;
      }

      *(v15 + 16) = v28 + 1;
      v29 = v15 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v19 += v33;
      --v13;
      v16 = v22;
    }

    while (v13);

    v1 = v32;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  sub_224C9516C(v15, 43200.0);
}

double sub_224BBB7C4()
{
  v1 = v0;
  v191 = sub_224DAB0B8();
  v224 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v2);
  v190 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v189 = &v178 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v200 = &v178 - v9;
  v10 = sub_224DAAF28();
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v206 = &v178 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v205 = &v178 - v15;
  v201 = sub_224DA9908();
  v210 = *(v201 - 8);
  v17 = MEMORY[0x28223BE20](v201, v16);
  v19 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v178 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v208 = &v178 - v25;
  v222 = sub_224DAAF48();
  v26 = *(v222 - 8);
  v28 = MEMORY[0x28223BE20](v222, v27);
  v30 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v178 - v33;
  v36 = MEMORY[0x28223BE20](v32, v35);
  v219 = &v178 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v214 = &v178 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B58, &qword_224DB9C28);
  v42 = MEMORY[0x28223BE20](v40 - 8, v41);
  v217 = &v178 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v218 = &v178 - v45;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v46 = sub_224DAABB8();
  v47 = 0;
  v187 = v34;
  v182 = v30;
  v204 = 0;
  v194 = v23;
  v179 = v19;
  v57 = v46;
  v58 = __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  v59 = *v58;
  v60 = *(*v58 + 24);
  os_unfair_lock_lock(*(v60 + 16));
  swift_beginAccess();
  v61 = *(v60 + 16);
  v188 = *(v59 + 32);

  os_unfair_lock_unlock(v61);
  v63 = 0;
  v207 = v57;
  v64 = v57 + 64;
  v65 = 1 << *(v57 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v57 + 64);
  v199 = (v65 + 63) >> 6;
  v68 = (v26 + 16);
  v209 = (v210 + 16);
  v223 = (v26 + 32);
  v213 = (v210 + 32);
  v220 = 0x8000000224DC4450;
  v212 = v26;
  v215 = (v210 + 8);
  v216 = (v26 + 8);
  v203 = (v210 + 56);
  v198 = (v210 + 48);
  v186 = *MEMORY[0x277D46828];
  v185 = v224 + 13;
  v184 = v224 + 1;
  *&v62 = 136446210;
  v180 = v62;
  *(&v69 + 1) = 2;
  v183 = xmmword_224DB3100;
  *&v69 = 136446466;
  v181 = v69;
  v195 = v1;
  v70 = v201;
  v71 = v222;
  v73 = v218;
  v72 = v219;
  v74 = v214;
  v75 = v217;
  v211 = v64;
  v221 = v68;
  while (v67)
  {
    v76 = v63;
LABEL_21:
    v224 = ((v67 - 1) & v67);
    v79 = __clz(__rbit64(v67)) | (v76 << 6);
    v80 = v207;
    v81 = v212;
    (*(v212 + 16))(v74, *(v207 + 48) + *(v212 + 72) * v79, v71);
    v82 = *(v80 + 56);
    v83 = v71;
    v84 = v210;
    v85 = v208;
    (*(v210 + 16))(v208, v82 + *(v210 + 72) * v79, v70);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
    v87 = v74;
    v88 = *(v86 + 48);
    v89 = *(v81 + 32);
    v75 = v217;
    v89(v217, v87, v83);
    v90 = v85;
    v91 = v70;
    (*(v84 + 32))(v75 + v88, v90, v70);
    (*(*(v86 - 8) + 56))(v75, 0, 1, v86);
    v73 = v218;
    v72 = v219;
LABEL_22:
    sub_224A44E4C(v75, v73, &qword_27D6F4B58, &qword_224DB9C28);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
    if ((*(*(v92 - 8) + 48))(v73, 1, v92) == 1)
    {

      return result;
    }

    v47 = *(v92 + 48);
    v71 = v222;
    (*v223)(v72, v73, v222);
    if (sub_224DAAF08() == 0xD000000000000016 && v220 == v93)
    {
    }

    else
    {
      v94 = sub_224DAFD88();

      if ((v94 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v95 = v205;
    sub_224DAAF38();
    v96 = v206;
    (*v203)(v206, 1, 1, v91);
    v97 = MEMORY[0x22AA59280](v95, v96);
    sub_224ACFD2C(v96);
    sub_224ACFD2C(v95);
    if ((v97 & 1) == 0)
    {
LABEL_9:
      (*v216)(v72, v71);
      v74 = v214;
      v70 = v91;
      goto LABEL_10;
    }

    sub_224DAAEF8();
    v98 = v200;
    sub_224DA9888();

    v99 = (*v198)(v98, 1, v91);
    v202 = v47;
    if (v99 == 1)
    {
      sub_224A3311C(v98, &unk_27D6F5630, &unk_224DB34C0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v100 = sub_224DAB258();
      v101 = __swift_project_value_buffer(v100, qword_281365120);
      v102 = *v221;
      v103 = v187;
      (*v221)(v187, v72, v71);
      v193 = v101;
      v104 = sub_224DAB228();
      v105 = sub_224DAF288();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = v102;
        v107 = v103;
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v225[0] = v109;
        *v108 = v180;
        sub_224BC03E8(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v110 = sub_224DAFD28();
        v112 = v111;
        v113 = v107;
        v102 = v106;
        v72 = v219;
        v197 = *v216;
        v197(v113, v71);
        v114 = sub_224A33F74(v110, v112, v225);

        *(v108 + 4) = v114;
        _os_log_impl(&dword_224A2F000, v104, v105, "Deleting replicator record with malformed ID: %{public}s", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v109);
        v115 = v109;
        v116 = v195;
        MEMORY[0x22AA5EED0](v115, -1, -1);
        MEMORY[0x22AA5EED0](v108, -1, -1);

        v117 = v212;
      }

      else
      {

        v197 = *v216;
        v197(v103, v71);
        v117 = v212;
        v116 = v195;
      }

      v192 = v102;
      v155 = v116[5];
      v196 = v116[8];
      __swift_project_boxed_opaque_existential_1(v116 + 2, v155);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v156 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v157 = swift_allocObject();
      *(v157 + 16) = v183;
      v102((v157 + v156), v72, v71);
      v158 = v190;
      v159 = v191;
      (v185->isa)(v190, v186, v191);
      v160 = v204;
      sub_224DAABF8();
      if (v160)
      {
        (v184->isa)(v158, v159);

        v161 = v182;
        v71 = v222;
        v192(v182, v72, v222);
        v162 = v160;
        v163 = sub_224DAB228();
        v164 = sub_224DAF288();

        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v204 = swift_slowAlloc();
          v225[0] = v204;
          *v165 = v181;
          sub_224BC03E8(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
          v166 = sub_224DAFD28();
          v167 = v161;
          v169 = v168;
          v170 = v197;
          v197(v167, v71);
          v171 = sub_224A33F74(v166, v169, v225);

          *(v165 + 4) = v171;
          *(v165 + 12) = 2114;
          v172 = v160;
          v173 = _swift_stdlib_bridgeErrorToNSError();
          *(v165 + 14) = v173;
          v174 = v196;
          *v196 = v173;
          _os_log_impl(&dword_224A2F000, v163, v164, "Failed to delete replicator record for unexpected record %{public}s: %{public}@", v165, 0x16u);
          sub_224A3311C(v174, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v174, -1, -1);
          v175 = v204;
          __swift_destroy_boxed_opaque_existential_1(v204);
          MEMORY[0x22AA5EED0](v175, -1, -1);
          MEMORY[0x22AA5EED0](v165, -1, -1);
        }

        else
        {

          v170 = v197;
          v197(v161, v71);
        }

        v176 = v219;
        v170(v219, v71);
        v204 = 0;
        v70 = v201;
        v72 = v176;
      }

      else
      {
        v204 = 0;

        (v184->isa)(v158, v159);
        v71 = v222;
        v197(v72, v222);
        v70 = v201;
      }

      v74 = v214;
      v75 = v217;
      v73 = v218;
    }

    else
    {
      v119 = v194;
      (*v213)(v194, v98, v91);
      v120 = v188;
      if (*(v188 + 16) && (v121 = sub_224A438E8(v119), (v122 & 1) != 0))
      {
        v123 = v121;
        v124 = *(v120 + 56);
        v125 = sub_224DAD9C8();
        v126 = *(v125 - 8);
        v127 = v126;
        v128 = v124 + *(v126 + 72) * v123;
        v129 = v189;
        (*(v126 + 16))(v189, v128, v125);
        v70 = v201;
        (*v215)(v119, v201);
        v71 = v222;
        (*v216)(v72, v222);
        (*(v127 + 56))(v129, 0, 1, v125);
        v73 = v218;
        sub_224A3311C(v129, &qword_27D6F3BD8, &qword_224DB9C20);
      }

      else
      {
        v130 = sub_224DAD9C8();
        v131 = v189;
        (*(*(v130 - 8) + 56))(v189, 1, 1, v130);
        sub_224A3311C(v131, &qword_27D6F3BD8, &qword_224DB9C20);
        v132 = v195[5];
        v133 = v195[8];
        v134 = __swift_project_boxed_opaque_existential_1(v195 + 2, v132);
        v225[3] = v132;
        v225[4] = v133;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v225);
        (*(*(v132 - 8) + 16))(boxed_opaque_existential_1, v134, v132);
        v136 = v204;
        sub_224BBEDC0(v119, v225);
        v204 = v136;
        if (v136)
        {
          __swift_destroy_boxed_opaque_existential_1(v225);
          v70 = v201;
          v137 = v179;
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v138 = sub_224DAB258();
          __swift_project_value_buffer(v138, qword_281365120);
          v139 = v194;
          (*v209)(v137, v194, v70);
          v140 = v204;
          v141 = v204;
          v142 = sub_224DAB228();
          v143 = sub_224DAF288();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = v137;
            v145 = swift_slowAlloc();
            v146 = swift_slowAlloc();
            v197 = swift_slowAlloc();
            v225[0] = v197;
            *v145 = v181;
            sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            LODWORD(v196) = v143;
            v147 = sub_224DAFD28();
            v149 = v148;
            v150 = *v215;
            (*v215)(v144, v201);
            v151 = sub_224A33F74(v147, v149, v225);
            v73 = v218;

            *(v145 + 4) = v151;
            *(v145 + 12) = 2114;
            v152 = v140;
            v153 = _swift_stdlib_bridgeErrorToNSError();
            *(v145 + 14) = v153;
            *v146 = v153;
            _os_log_impl(&dword_224A2F000, v142, v196, "Failed to delete replicator record for subscription %{public}s: %{public}@", v145, 0x16u);
            sub_224A3311C(v146, &unk_27D6F69F0, &unk_224DB3900);
            v70 = v201;
            MEMORY[0x22AA5EED0](v146, -1, -1);
            v154 = v197;
            __swift_destroy_boxed_opaque_existential_1(v197);
            MEMORY[0x22AA5EED0](v154, -1, -1);
            MEMORY[0x22AA5EED0](v145, -1, -1);

            v150(v194, v70);
          }

          else
          {

            v177 = *v215;
            (*v215)(v137, v70);
            v177(v139, v70);
          }

          v72 = v219;
          v71 = v222;
          (*v216)(v219, v222);
          v204 = 0;
          v74 = v214;
          v75 = v217;
          goto LABEL_54;
        }

        v70 = v201;
        (*v215)(v119, v201);
        v71 = v222;
        (*v216)(v72, v222);
        __swift_destroy_boxed_opaque_existential_1(v225);
      }

      v74 = v214;
    }

LABEL_54:
    v47 = v202;
LABEL_10:
    (*v215)(v47 + v73, v70);
    v64 = v211;
    v67 = v224;
  }

  if (v199 <= v63 + 1)
  {
    v77 = v63 + 1;
  }

  else
  {
    v77 = v199;
  }

  v78 = v77 - 1;
  while (1)
  {
    v76 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v76 >= v199)
    {
      v91 = v70;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3890, &unk_224DB9C30);
      (*(*(v118 - 8) + 56))(v75, 1, 1, v118);
      v224 = 0;
      v63 = v78;
      goto LABEL_22;
    }

    v67 = *(v64 + 8 * v76);
    ++v63;
    if (v67)
    {
      v63 = v76;
      goto LABEL_21;
    }
  }

  __break(1u);
  swift_once();
  v48 = sub_224DAB258();
  __swift_project_value_buffer(v48, qword_281365120);
  v49 = v47;
  v224 = sub_224DAB228();
  v50 = sub_224DAF288();

  if (os_log_type_enabled(v224, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138543362;
    v53 = v47;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v51 + 4) = v54;
    *v52 = v54;
    _os_log_impl(&dword_224A2F000, v224, v50, "Failed to fetch remote activity subscription records from replicator: %{public}@", v51, 0xCu);
    sub_224A3311C(v52, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v52, -1, -1);
    MEMORY[0x22AA5EED0](v51, -1, -1);

    v55 = v224;
  }

  else
  {

    v55 = v47;
  }

  return result;
}

double sub_224BBCEA4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281365120);
  v8 = sub_224DAB228();
  v9 = sub_224DAF2A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_224A2F000, v8, v9, "Observing changes made to activity subcriptions for source device", v10, 2u);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  v11 = sub_224DAF128();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = v2;

  sub_224D8E744(0, 0, v6, &unk_224DB9BD8, v12);

  return result;
}

uint64_t sub_224BBD094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_224DAAB18();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v4[8] = swift_task_alloc();
  v6 = sub_224DA9908();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_224DAAF48();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = sub_224DAAA98();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[23] = v10;
  v4[24] = *(v10 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224BBD394, 0, 0);
}

uint64_t sub_224BBD394()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  sub_224DAAB98();
  sub_224DAF158();
  (*(v2 + 8))(v1, v3);
  v0[26] = 0;
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_224BBD4D0;
  v5 = v0[23];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_224BBD4D0()
{

  return MEMORY[0x2822009F8](sub_224BBD5CC, 0, 0);
}

uint64_t sub_224BBD5CC()
{
  v78 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[18];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v5 = *(v3 + 72);
      v6 = v0[26];
      v72 = v5;
      do
      {
        sub_224B5533C(v4, v0[19]);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v8 = v0[19];
        if (EnumCaseMultiPayload == 1)
        {
          v9 = v0[9];
          v10 = v0[10];
          v11 = v0[8];
          (*(v0[13] + 32))(v0[16], v8, v0[12]);
          sub_224DAAEF8();
          sub_224DA9888();

          v12 = (*(v10 + 48))(v11, 1, v9);
          v13 = v0[8];
          if (v12 == 1)
          {
            (*(v0[13] + 8))(v0[16], v0[12]);
            sub_224A3311C(v13, &unk_27D6F5630, &unk_224DB34C0);
          }

          else
          {
            v75 = v6;
            (*(v0[10] + 32))(v0[11], v13, v0[9]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v14 = v0[15];
            v15 = v0[16];
            v17 = v0[12];
            v16 = v0[13];
            v18 = sub_224DAB258();
            __swift_project_value_buffer(v18, qword_281365120);
            (*(v16 + 16))(v14, v15, v17);
            v19 = sub_224DAB228();
            v20 = sub_224DAF2A8();
            v21 = os_log_type_enabled(v19, v20);
            v22 = v0[15];
            v24 = v0[12];
            v23 = v0[13];
            if (v21)
            {
              v25 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v77[0] = v70;
              *v25 = 136446210;
              sub_224BC03E8(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v68 = v20;
              v26 = sub_224DAFD28();
              v28 = v27;
              v73 = *(v23 + 8);
              v73(v22, v24);
              v29 = sub_224A33F74(v26, v28, v77);

              *(v25 + 4) = v29;
              _os_log_impl(&dword_224A2F000, v19, v68, "Deleting activity subscription for record ID %{public}s", v25, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v70);
              MEMORY[0x22AA5EED0](v70, -1, -1);
              MEMORY[0x22AA5EED0](v25, -1, -1);
            }

            else
            {

              v73 = *(v23 + 8);
              v73(v22, v24);
            }

            v54 = v0[16];
            v55 = v0[12];
            v57 = v0[10];
            v56 = v0[11];
            v58 = v0[9];
            __swift_project_boxed_opaque_existential_1((v0[3] + 72), *(v0[3] + 96));
            sub_224C96790(v56);
            (*(v57 + 8))(v56, v58);
            v73(v54, v55);
            v5 = v72;
            v6 = v75;
          }
        }

        else
        {
          v30 = v0[7];
          (*(v0[5] + 32))(v30, v8, v0[4]);
          sub_224BBDDFC(v30);
          if (v6)
          {
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v31 = v0[6];
            v32 = v0[7];
            v33 = v0[4];
            v34 = v0[5];
            v35 = sub_224DAB258();
            __swift_project_value_buffer(v35, qword_281365120);
            (*(v34 + 16))(v31, v32, v33);
            v36 = v6;
            v37 = sub_224DAB228();
            v38 = sub_224DAF288();

            if (os_log_type_enabled(v37, v38))
            {
              v39 = v0[14];
              v66 = v0[13];
              v40 = v0[12];
              v71 = v0[7];
              v63 = v0[6];
              v74 = v0[4];
              v76 = v0[5];
              v41 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v77[0] = v69;
              *v41 = 136446466;
              v64 = v38;
              sub_224DAAAF8();
              sub_224BC03E8(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v42 = sub_224DAFD28();
              v44 = v43;
              v45 = v39;
              v5 = v72;
              (*(v66 + 8))(v45, v40);
              v67 = *(v76 + 8);
              v67(v63, v74);
              v46 = sub_224A33F74(v42, v44, v77);

              *(v41 + 4) = v46;
              *(v41 + 12) = 2114;
              v47 = v6;
              v48 = _swift_stdlib_bridgeErrorToNSError();
              *(v41 + 14) = v48;
              *v65 = v48;
              _os_log_impl(&dword_224A2F000, v37, v64, "Failed to handle subscription update for %{public}s: %{public}@", v41, 0x16u);
              sub_224A3311C(v65, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v65, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v69);
              MEMORY[0x22AA5EED0](v69, -1, -1);
              MEMORY[0x22AA5EED0](v41, -1, -1);

              v67(v71, v74);
            }

            else
            {
              v49 = v0[6];
              v50 = v0[7];
              v51 = v0[4];
              v52 = v0[5];

              v53 = *(v52 + 8);
              v53(v49, v51);
              v53(v50, v51);
            }

            v6 = 0;
          }

          else
          {
            (*(v0[5] + 8))(v0[7], v0[4]);
          }
        }

        v4 += v5;
        --v2;
      }

      while (v2);
    }

    else
    {
      v6 = v0[26];
    }

    v0[26] = v6;
    v61 = swift_task_alloc();
    v0[27] = v61;
    *v61 = v0;
    v61[1] = sub_224BBD4D0;
    v62 = v0[23];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v62);
  }

  else
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v59 = v0[1];

    return v59();
  }
}

uint64_t sub_224BBDDFC(uint64_t *a1)
{
  v111 = sub_224DAAFC8();
  v103 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v2);
  v102 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_224DAD9C8();
  v99 = *(v101 - 8);
  v5 = MEMORY[0x28223BE20](v101, v4);
  v100 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v98 = &v96 - v8;
  v9 = sub_224DAAB18();
  v109 = *(v9 - 8);
  v110 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v108 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B30, &unk_224DB9BF0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v113 = &v96 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v116 = (&v96 - v17);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B38, &unk_224DB9C00);
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v18);
  v114 = &v96 - v19;
  v20 = sub_224DAAF28();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v28 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v96 - v30;
  v32 = sub_224DAAF48();
  v33 = *(v32 - 8);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v106 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v96 - v38;
  v40 = sub_224DA9908();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v42);
  v119 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a1;
  sub_224DAAAF8();
  sub_224DAAF38();
  v44 = *(v33 + 8);
  v107 = v32;
  v104 = v44;
  v105 = v33 + 8;
  v44(v39, v32);
  v45 = *(v41 + 48);
  v46 = 1;
  if (v45(v23, 1, v40) != 1)
  {
    (*(v41 + 32))(v28, v23, v40);
    v46 = 0;
  }

  (*(v41 + 56))(v28, v46, 1, v40);
  sub_224A44E4C(v28, v31, &unk_27D6F5630, &unk_224DB34C0);
  if (v45(v31, 1, v40) == 1)
  {
    return sub_224A3311C(v31, &unk_27D6F5630, &unk_224DB34C0);
  }

  (*(v41 + 32))(v119, v31, v40);
  __swift_project_boxed_opaque_existential_1(v118 + 2, v118[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
  *(swift_allocObject() + 16) = xmmword_224DB3100;
  sub_224DAAAF8();
  v48 = sub_224DA9688();
  v49 = v116;
  (*(*(v48 - 8) + 56))(v116, 1, 1, v48);
  v50 = v120;
  v51 = sub_224DAAC08();
  if (v50)
  {

    sub_224A3311C(v49, &unk_27D6F4680, &unk_224DB4610);
    return (*(v41 + 8))(v119, v40);
  }

  v96 = v41;
  v97 = v40;
  v52 = v51;
  sub_224A3311C(v49, &unk_27D6F4680, &unk_224DB4610);

  v53 = v113;
  sub_224D5D3A0(v52, v113);

  if ((*(v112 + 48))(v53, 1, v115) == 1)
  {
    (*(v96 + 8))(v119, v97);
    return sub_224A3311C(v53, &qword_27D6F4B30, &unk_224DB9BF0);
  }

  v120 = 0;
  sub_224A44E4C(v53, v114, &qword_27D6F4B38, &unk_224DB9C00);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v54 = sub_224DAB258();
  __swift_project_value_buffer(v54, qword_281365120);
  v55 = v108;
  v56 = v109;
  v57 = v110;
  (*(v109 + 16))(v108, v117, v110);
  v58 = sub_224DAB228();
  v59 = sub_224DAF2A8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v116 = v60;
    v117 = swift_slowAlloc();
    v121 = v117;
    *v60 = 136446210;
    v61 = v106;
    sub_224DAAAF8();
    sub_224BC03E8(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
    v62 = v107;
    v63 = sub_224DAFD28();
    v65 = v64;
    v104(v61, v62);
    (*(v56 + 8))(v55, v57);
    v66 = sub_224A33F74(v63, v65, &v121);

    v67 = v116;
    *(v116 + 1) = v66;
    v68 = v67;
    _os_log_impl(&dword_224A2F000, v58, v59, "Updating activity subscription for record ID %{public}s", v67, 0xCu);
    v69 = v117;
    __swift_destroy_boxed_opaque_existential_1(v117);
    MEMORY[0x22AA5EED0](v69, -1, -1);
    MEMORY[0x22AA5EED0](v68, -1, -1);
  }

  else
  {

    (*(v56 + 8))(v55, v57);
  }

  v70 = v114;
  v71 = v111;
  v72 = v118[5];
  v73 = __swift_project_boxed_opaque_existential_1(v118 + 2, v72);
  v117 = &v96;
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v73, v73);
  v76 = &v96 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v74 + 16))(v76);
  if (qword_27D6F2CB0 != -1)
  {
    swift_once();
  }

  v77 = sub_224DAAB88();
  __swift_project_value_buffer(v77, qword_27D6F4B18);
  v78 = sub_224DAAEB8();
  if (v79)
  {
    goto LABEL_22;
  }

  v80 = v78;
  v81 = sub_224DAAFD8();
  if (!*(v81 + 16) || (v82 = sub_224B31510(v80), (v83 & 1) == 0))
  {

LABEL_22:
    type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError(0);
    sub_224BC03E8(&qword_27D6F4B40, type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError, &unk_224DB9C9C);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_23;
  }

  (*(v103 + 16))(v102, *(v81 + 56) + *(v103 + 72) * v82, v71);

  v84 = sub_224DAAFA8();
  v86 = v85;
  v87 = MEMORY[0x277CF9D80];
  sub_224BC03E8(&qword_27D6F4B48, MEMORY[0x277CF9D80], MEMORY[0x277CF9D90]);
  sub_224BC03E8(&qword_27D6F4B50, v87, MEMORY[0x277CF9D88]);
  v88 = v100;
  v115 = v84;
  v116 = v86;
  v89 = v101;
  v90 = v120;
  sub_224DAB098();
  if (v90)
  {
    sub_224A78024(v115, v116);
    (*(v103 + 8))(v102, v111);
    v70 = v114;
LABEL_23:
    v91 = v119;
    (*(v74 + 8))(v76, v72);
    sub_224A3311C(v70, &qword_27D6F4B38, &unk_224DB9C00);
    return (*(v96 + 8))(v91, v97);
  }

  sub_224A78024(v115, v116);
  v92 = v98;
  v93 = v119;
  v120 = 0;
  sub_224D2EE84(v98);
  v94 = *(v99 + 8);
  v94(v88, v89);
  (*(v103 + 8))(v102, v111);
  (*(v74 + 8))(v76, v72);
  __swift_project_boxed_opaque_existential_1(v118 + 9, v118[12]);
  v95 = sub_224C942D8(v92);
  (v94)(v92, v89, v95);
  sub_224A3311C(v114, &qword_27D6F4B38, &unk_224DB9C00);
  return (*(v96 + 8))(v93, v97);
}

uint64_t sub_224BBEC00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224BBD094(a1, v4, v5, v6);
}

uint64_t type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError(uint64_t a1)
{
  result = qword_27D6F4B78;
  if (!qword_27D6F4B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BBED0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224BB9ADC(a1, v4, v5, v6);
}

uint64_t sub_224BBEDC0(uint64_t a1, void *a2)
{
  v38 = a2;
  v44 = sub_224DAB0B8();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAAF28();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAAF48();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DA9908();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v39 = v12;
  v43 = v3;
  v18 = sub_224DAB258();
  __swift_project_value_buffer(v18, qword_281365120);
  (*(v14 + 16))(v17, a1, v13);
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = a1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v45 = v23;
    *v22 = 136446210;
    sub_224BC03E8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v24 = sub_224DAFD28();
    v26 = v25;
    (*(v14 + 8))(v17, v13);
    v27 = sub_224A33F74(v24, v26, &v45);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_224A2F000, v19, v20, "Deleting subscription to remote activity: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x22AA5EED0](v23, -1, -1);
    MEMORY[0x22AA5EED0](v22, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  sub_224DA9898();
  (*(v14 + 56))(v37, 1, 1, v13);
  v28 = v39;
  sub_224DAAEE8();
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
  v29 = v40;
  v30 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_224DB3100;
  v32 = v41;
  (*(v29 + 16))(v31 + v30, v28, v41);
  v34 = v42;
  v33 = v43;
  (*(v43 + 104))(v42, *MEMORY[0x277D46828], v44);
  sub_224DAABF8();

  (*(v33 + 8))(v34, v44);
  return (*(v29 + 8))(v28, v32);
}

uint64_t sub_224BBF304(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_224BBF370(uint64_t a1, void *a2, void *a3)
{
  v143 = a3;
  v127 = a2;
  v4 = sub_224DAB0B8();
  v132 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v130 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_224DAAC58();
  v131 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v7);
  v129 = (&v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = sub_224DAD9C8();
  v9 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v10);
  v126 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v124 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v125 = &v118 - v17;
  v135 = sub_224DAB018();
  v128 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v18);
  v137 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v20 - 8, v21);
  *&v138 = &v118 - v22;
  v23 = sub_224DAAFC8();
  v140 = *(v23 - 8);
  v141 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v139 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_224DAAF28();
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DAAF48();
  v145 = *(v30 - 8);
  v146 = v30;
  v32 = MEMORY[0x28223BE20](v30, v31);
  v134 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v148 = &v118 - v35;
  v36 = sub_224DAD918();
  MEMORY[0x28223BE20](v36 - 8, v37);
  v39 = &v118 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_224DA9908();
  v41 = *(v40 - 1);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v133 = &v118 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v142 = &v118 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v51 = &v118 - v50;
  MEMORY[0x28223BE20](v49, v52);
  v54 = &v118 - v53;
  v149 = a1;
  sub_224DAD968();
  if ((*(v41 + 48))(v39, 1, v40) == 1)
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v55 = sub_224DAB258();
    __swift_project_value_buffer(v55, qword_281365120);
    v56 = sub_224DAB228();
    v57 = sub_224DAF2A8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_224A2F000, v56, v57, "Can't create a remote subscription to a locally-owned activity", v58, 2u);
      MEMORY[0x22AA5EED0](v58, -1, -1);
    }

    type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError(0);
    sub_224BC03E8(&qword_27D6F4B40, type metadata accessor for RemoteActivitySubscriptionReplicator.RemoteActivitySubscriptionReplicatorError, &unk_224DB9C9C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v120 = v9;
    v121 = v4;
    (*(v41 + 32))(v54, v39, v40);
    sub_224DAD988();
    sub_224DA9898();
    v123 = *(v41 + 8);
    v123(v51, v40);
    v122 = v41;
    (*(v41 + 56))(v29, 1, 1, v40);
    sub_224DAAEE8();
    v143 = __swift_project_boxed_opaque_existential_1(v143, v143[3]);
    sub_224DAAF08();
    v60 = MEMORY[0x277CF9D80];
    sub_224BC03E8(&qword_27D6F4B48, MEMORY[0x277CF9D80], MEMORY[0x277CF9D90]);
    sub_224BC03E8(&qword_27D6F4B50, v60, MEMORY[0x277CF9D88]);
    v61 = v144;
    v62 = sub_224DAAB38();
    if (v61)
    {

      (*(v145 + 8))(v148, v146);
      return (v123)(v54, v40);
    }

    else
    {
      v65 = v64;
      v118 = v41 + 8;
      v119 = v54;
      v143 = v40;
      v66 = v62;
      v67 = v63;

      v68 = sub_224DA9688();
      (*(*(v68 - 8) + 56))(v138, 1, 1, v68);
      sub_224A77FD0(v66, v67);
      v69 = v139;
      sub_224DAAFB8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
      v70 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
      v71 = (*(*v70 + 80) + 32) & ~*(*v70 + 80);
      v72 = swift_allocObject();
      v138 = xmmword_224DB3100;
      *(v72 + 16) = xmmword_224DB3100;
      v144 = 0;
      v73 = (v72 + v71);
      v74 = v70[14];
      *v73 = v65;
      v76 = v140;
      v75 = v141;
      (*(v140 + 16))(&v73[v74], v69, v141);
      sub_224DA06F0(v72);
      swift_setDeallocating();
      sub_224A3311C(v73, &unk_27D6F6FE0, &unk_224DB9C50);
      v77 = v147;
      swift_deallocClassInstance();
      sub_224A78024(v66, v67);
      (*(v76 + 8))(v69, v75);
      v78 = v142;
      v79 = v144;
      sub_224DAAE48();
      if (v79)
      {

        (*(v145 + 8))(v148, v146);
        return (v123)(v119, v143);
      }

      else
      {
        v144 = 0;
        v80 = v77;
        (*(v145 + 16))(v134, v148, v146);
        v141 = *(v122 + 16);
        v141(v133, v78, v143);
        v81 = v124;
        sub_224DAD948();
        v82 = sub_224DA9878();
        v83 = *(v82 - 8);
        if ((*(v83 + 48))(v81, 1, v82) == 1)
        {
          sub_224A3311C(v81, &qword_27D6F32B0, &qword_224DB3EA0);
          v84 = 1;
          v85 = v137;
          v86 = v80;
          v87 = v120;
          v88 = v125;
        }

        else
        {
          v89 = v125;
          sub_224DA9768();
          v88 = v89;
          (*(v83 + 8))(v81, v82);
          v84 = 0;
          v85 = v137;
          v86 = v80;
          v87 = v120;
        }

        (*(v83 + 56))(v88, v84, 1, v82);
        sub_224DAAF68();
        v90 = v126;
        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v91 = sub_224DAB258();
        __swift_project_value_buffer(v91, qword_281365120);
        (*(v87 + 16))(v90, v149, v86);
        v92 = sub_224DAB228();
        v93 = v87;
        v94 = sub_224DAF2A8();
        if (os_log_type_enabled(v92, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v150 = v96;
          *v95 = 136446210;
          sub_224BC03E8(&qword_27D6F4B70, MEMORY[0x277CF9D80], MEMORY[0x277CF9D98]);
          v97 = sub_224DAFD28();
          v98 = v90;
          v100 = v99;
          (*(v93 + 8))(v98, v86);
          v101 = sub_224A33F74(v97, v100, &v150);

          *(v95 + 4) = v101;
          _os_log_impl(&dword_224A2F000, v92, v94, "Replicating subscription to remote activity: %{public}s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v96);
          v102 = v96;
          v85 = v137;
          MEMORY[0x22AA5EED0](v102, -1, -1);
          MEMORY[0x22AA5EED0](v95, -1, -1);
        }

        else
        {

          (*(v93 + 8))(v90, v86);
        }

        v103 = v135;
        v104 = v128;
        v105 = v127[4];
        v147 = v127[3];
        v149 = v105;
        __swift_project_boxed_opaque_existential_1(v127, v147);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3550, &qword_224DB3B00);
        v106 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v107 = swift_allocObject();
        *(v107 + 16) = v138;
        (*(v104 + 16))(v107 + v106, v85, v103);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
        v108 = (*(v122 + 80) + 32) & ~*(v122 + 80);
        v109 = swift_allocObject();
        *(v109 + 16) = v138;
        v110 = v143;
        v141(v109 + v108, v119, v143);
        v111 = v129;
        *v129 = v109;
        v112 = v131;
        (*(v131 + 104))(v111, *MEMORY[0x277D46558], v136);
        v113 = v132;
        v114 = v130;
        v115 = v121;
        (*(v132 + 104))(v130, *MEMORY[0x277D46828], v121);
        v116 = v144;
        sub_224DAABD8();
        v144 = v116;

        (*(v113 + 8))(v114, v115);
        (*(v112 + 8))(v111, v136);
        (*(v104 + 8))(v137, v135);
        v117 = v123;
        v123(v142, v110);
        (*(v145 + 8))(v148, v146);
        return v117(v119, v110);
      }
    }
  }
}

uint64_t sub_224BC03E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224BC0430(uint64_t a1)
{
  result = sub_224DAAF48();
  if (v2 <= 0x3F)
  {
    result = sub_224DAAC58();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_224BC05D8()
{
  type metadata accessor for BootSessionChecker(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC10ChronoCore18BootSessionChecker__currentBootSessionUUID;
  v2 = sub_224DA9908();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_224DAB4D8();
  swift_allocObject();

  v3 = sub_224DAB4C8();

  v4 = sub_224BC1A94(v0, v3);

  qword_2813651B8 = v4;
}

uint64_t sub_224BC06B0()
{
  v1 = v0;
  v2 = sub_224DAF3C8();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v16 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAF318();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_224DAB848();
  MEMORY[0x28223BE20](v7 - 8, v8);
  swift_beginAccess();
  sub_224A3796C(v0 + 32, &v19, &qword_27D6F4B88, &qword_224DB9E88);
  if (v20)
  {
    sub_224A36F98(&v19, v21);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = v22;
    v11 = v23;
    __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    (*(v11 + 16))(sub_224BC1D48, v9, v10, v11);
    sub_224AC319C();
    sub_224DAB818();
    *&v19 = MEMORY[0x277D84F90];
    sub_224BC1D50(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
    sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
    sub_224DAF788();
    (*(v17 + 104))(v16, *MEMORY[0x277D85268], v18);
    v12 = sub_224DAF418();
    v13 = *(v1 + 24);
    *(v1 + 24) = v12;
    v14 = v12;

    __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_224DAB4A8();

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    result = sub_224A3311C(&v19, &qword_27D6F4B88, &qword_224DB9E88);
    __break(1u);
  }

  return result;
}

uint64_t sub_224BC0A20(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DAB4F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224DAB508();
    sub_224BC0C38(v6);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_224BC0B2C()
{
  swift_beginAccess();
  sub_224A3796C(v0 + 32, &v3, &qword_27D6F4B88, &qword_224DB9E88);
  if (*(&v4 + 1))
  {
    sub_224A3317C(&v3, v2);
    sub_224A3311C(&v3, &qword_27D6F4B88, &qword_224DB9E88);
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_224DAB4B8();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_224A3311C(&v3, &qword_27D6F4B88, &qword_224DB9E88);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_224A838C0(&v3, v0 + 32, &qword_27D6F4B88, &qword_224DB9E88);
  swift_endAccess();
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;
}

uint64_t sub_224BC0C38(uint64_t a1)
{
  v19[1] = a1;
  v2 = sub_224DAB4F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB8C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_224A3796C(v1 + 32, v20, &qword_27D6F4B88, &qword_224DB9E88);
  v12 = v21;
  result = sub_224A3311C(v20, &qword_27D6F4B88, &qword_224DB9E88);
  if (!v12)
  {
    return result;
  }

  result = sub_224BC1C84();
  if ((result & 1) == 0)
  {
    v14 = *(v1 + 24);
    if (v14)
    {
      *v11 = v14;
      (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
      v15 = v14;
      v16 = sub_224DAB8F8();
      result = (*(v8 + 8))(v11, v7);
      if (v16)
      {
        goto LABEL_5;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_5:
  if (*(v1 + 72) == 1)
  {
    *(v1 + 72) = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277CD8F78], v2);
    v17 = sub_224DAB4E8();
    result = (*(v3 + 8))(v6, v2);
    if ((v17 & 1) == 0)
    {
      return result;
    }

    sub_224BC0B2C();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CD8F78], v2);
    v18 = sub_224DAB4E8();
    result = (*(v3 + 8))(v6, v2);
    if ((v18 & 1) == 0)
    {
      return result;
    }

    sub_224BC0B2C();
    sub_224BC0F0C();
  }

  __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
  return sub_224BC157C();
}

double sub_224BC0F0C()
{
  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281364DF0);
  v1 = sub_224DAB228();
  v2 = sub_224DAF2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224A2F000, v1, v2, "NetworkEnabledAfterBootNotification: detected network up, notifying", v3, 2u);
    MEMORY[0x22AA5EED0](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000, MEMORY[0x277CBCE18]);
  sub_224DAB398();

  return result;
}

uint64_t sub_224BC105C()
{

  sub_224A3311C(v0 + 32, &qword_27D6F4B88, &qword_224DB9E88);
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_224BC10E0()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v37 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v37 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v37 - v24;
  sub_224DABCD8();
  v41 = *(v2 + 48);
  if (v41(v22, 1, v1) == 1)
  {
    sub_224A3311C(v22, &unk_27D6F5630, &unk_224DB34C0);
    v26 = 0;
  }

  else
  {
    v27 = *(v2 + 32);
    v39 = v2 + 32;
    v40 = v6;
    v38 = v27;
    v27(v9, v22, v1);
    (*(v2 + 16))(v18, v9, v1);
    v37 = *(v2 + 56);
    v37(v18, 0, 1, v1);
    v28 = OBJC_IVAR____TtC10ChronoCore18BootSessionChecker__currentBootSessionUUID;
    swift_beginAccess();
    sub_224A838C0(v18, v0 + v28, &unk_27D6F5630, &unk_224DB34C0);
    swift_endAccess();
    v29 = [objc_opt_self() standardUserDefaults];
    v30 = sub_224DAEDE8();
    v31 = [v29 stringForKey_];

    if (v31)
    {
      sub_224DAEE18();

      sub_224DA9888();
    }

    else
    {
      v37(v25, 1, 1, v1);
    }

    sub_224A3796C(v25, v14, &unk_27D6F5630, &unk_224DB34C0);
    v32 = v41(v14, 1, v1);
    v33 = v40;
    if (v32 == 1)
    {
      (*(v2 + 8))(v9, v1);
      sub_224A3311C(v25, &unk_27D6F5630, &unk_224DB34C0);
      sub_224A3311C(v14, &unk_27D6F5630, &unk_224DB34C0);
      v26 = 1;
    }

    else
    {
      v38(v40, v14, v1);
      sub_224BC1D50(&qword_281351A10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v34 = sub_224DAEDD8();
      v35 = *(v2 + 8);
      v35(v33, v1);
      v35(v9, v1);
      sub_224A3311C(v25, &unk_27D6F5630, &unk_224DB34C0);
      v26 = v34 ^ 1;
    }
  }

  return v26 & 1;
}

uint64_t sub_224BC157C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v15 - v3;
  v5 = sub_224DA9908();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10ChronoCore18BootSessionChecker__currentBootSessionUUID;
  swift_beginAccess();
  sub_224A3796C(v0 + v10, v4, &unk_27D6F5630, &unk_224DB34C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_224A3311C(v4, &unk_27D6F5630, &unk_224DB34C0);
  }

  (*(v6 + 32))(v9, v4, v5);
  v12 = [objc_opt_self() standardUserDefaults];
  sub_224DA9898();
  v13 = sub_224DAEDE8();

  v14 = sub_224DAEDE8();
  [v12 setObject:v13 forKey:v14];

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_224BC17B4()
{
  sub_224A3311C(v0 + OBJC_IVAR____TtC10ChronoCore18BootSessionChecker__currentBootSessionUUID, &unk_27D6F5630, &unk_224DB34C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BootSessionChecker(uint64_t a1)
{
  result = qword_28135A1F8;
  if (!qword_28135A1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224BC187C(uint64_t a1)
{
  sub_224BC190C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_224BC190C(uint64_t a1)
{
  if (!qword_2813519F8)
  {
    sub_224DA9908();
    v1 = sub_224DAF728();
    if (!v2)
    {
      atomic_store(v1, &qword_2813519F8);
    }
  }
}

uint64_t sub_224BC1964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = type metadata accessor for BootSessionChecker(0);
  v9[4] = &off_28382DE98;
  v9[0] = a1;
  v8[3] = sub_224DAB4D8();
  v8[4] = &off_28382DE68;
  v8[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  swift_allocObject();
  *(a3 + 16) = sub_224DAB358();
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 1;
  sub_224A3317C(v9, a3 + 80);
  sub_224A3317C(v8, v7);
  swift_beginAccess();
  sub_224A838C0(v7, a3 + 32, &qword_27D6F4B88, &qword_224DB9E88);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((a3 + 80), *(a3 + 104));
  if (sub_224BC10E0())
  {
    sub_224BC06B0();
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  return a3;
}

uint64_t sub_224BC1A94(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v20 = type metadata accessor for BootSessionChecker(0);
  v21 = &off_28382DE98;
  v18 = &off_28382DE68;
  v19[0] = a1;
  v17 = v4;
  v16[0] = a2;
  type metadata accessor for NetworkEnabledAfterBootNotification();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  MEMORY[0x28223BE20](v6, v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  MEMORY[0x28223BE20](v10, v10);
  v12 = (v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_224BC1964(*v8, *v12, v5);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14;
}

uint64_t sub_224BC1C84()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_224DAECE8();
  if (*(v2 + 16))
  {
    sub_224A3A40C(0xD000000000000011, 0x8000000224DC9810);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_224BC1D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224BC1D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v23 = a3;
  v24 = a4;
  v21 = a1;
  v22 = a2;
  v20 = sub_224DAF3C8();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAF318();
  MEMORY[0x28223BE20](v11, v12);
  v13 = sub_224DAB848();
  MEMORY[0x28223BE20](v13 - 8, v14);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7E8();
  v25 = MEMORY[0x277D84F90];
  sub_224BC4B28(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224AC3240();
  sub_224DAF788();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v20);
  *(v5 + 24) = sub_224DAF418();
  sub_224DAA968();
  swift_allocObject();
  v15 = sub_224DAA958();
  v16 = MEMORY[0x277D84F98];
  *(v5 + 64) = v15;
  *(v5 + 72) = v16;
  *(v5 + 80) = v16;
  *(v5 + 16) = a5;
  v17 = v22;
  *(v5 + 32) = v21;
  *(v5 + 40) = v17;
  v18 = v24;
  *(v5 + 48) = v23;
  *(v5 + 56) = v18;
  return v5;
}

void sub_224BC2038(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = aBlock - v9;
  v11 = *(v2 + 24);
  (*(v6 + 16))(aBlock - v9, a1, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  (*(v6 + 32))(v13 + v12, v10, v5);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_224BC2C20;
  *(v14 + 24) = v13;
  aBlock[4] = sub_224A8A838;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A9B6F8;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  dispatch_sync(v11, v15);
  _Block_release(v15);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }
}

void sub_224BC2280(uint64_t a1, void *a2)
{
  v3 = v2;
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v30[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v30[-1] - v12;
  v14 = sub_224DAB8C8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = (&v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + 24);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_224DAB8F8();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    swift_beginAccess();
    v21 = *(v3 + 72);
    if (*(v21 + 16) && (v22 = sub_224A683FC(a1), (v23 & 1) != 0))
    {
      v24 = *(*(v21 + 56) + 8 * v22);
    }

    else
    {
      v24 = 0;
    }

    swift_endAccess();
    v25 = *(v10 + 16);
    v25(v13, a1, v9);
    swift_beginAccess();
    sub_224B080E8(0, v13);
    swift_endAccess();
    v25(v13, a1, v9);
    v26 = sub_224DA9878();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    swift_beginAccess();
    sub_224B08344(v8, v13);
    swift_endAccess();
    sub_224BC41F4(a1, v29);
    if (v24)
    {
      v27 = *(v24 + 16);
      if (v27)
      {
        v28 = v24 + 32;
        do
        {
          sub_224A3317C(v28, v30);
          __swift_project_boxed_opaque_existential_1(v30, v30[3]);
          sub_224DAE1F8();
          __swift_destroy_boxed_opaque_existential_1(v30);
          v28 += 40;
          --v27;
        }

        while (v27);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_224BC25F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - v6;
  v8 = *(v1 + 24);
  (*(v4 + 16))(aBlock - v6, a1, v3);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  (*(v4 + 32))(v10 + v9, v7, v3);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_224BC4AB8;
  *(v11 + 24) = v10;
  aBlock[4] = sub_224BC4B74;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A9B6F8;
  aBlock[3] = &block_descriptor_14;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

void sub_224BC281C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - v11;
  v13 = sub_224DAB8C8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 24);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_224DAB8F8();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    swift_beginAccess();
    v20 = *(v2 + 72);
    if (*(v20 + 16) && (v21 = sub_224A683FC(a1), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);
      swift_endAccess();
      v24 = *(v23 + 16);
      if (v24)
      {
        v29 = v7;
        v30 = a1;
        v25 = v23 + 32;

        do
        {
          sub_224A3317C(v25, v31);
          __swift_project_boxed_opaque_existential_1(v31, v31[3]);
          sub_224DAE1F8();
          __swift_destroy_boxed_opaque_existential_1(v31);
          v25 += 40;
          --v24;
        }

        while (v24);

        v7 = v29;
        a1 = v30;
      }

      v26 = *(v9 + 16);
      v26(v12, a1, v8);
      swift_beginAccess();
      sub_224B080E8(0, v12);
      swift_endAccess();
      v26(v12, a1, v8);
      v27 = sub_224DA9878();
      (*(*(v27 - 8) + 56))(v7, 1, 1, v27);
      swift_beginAccess();
      sub_224B08344(v7, v12);
      swift_endAccess();
      (*(v2 + 48))(a1);
      sub_224BC3248();
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224BC2B9C()
{

  return swift_deallocClassInstance();
}

void sub_224BC2C20()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_224BC2280(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_224BC2CBC(char *a1@<X8>)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B90, &qword_224DB9F00);
  MEMORY[0x28223BE20](v67, v3);
  v5 = &v58 - v4;
  v70 = sub_224DA9878();
  v6 = *(v70 - 8);
  v8 = MEMORY[0x28223BE20](v70, v7);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v58 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v58 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v60 = &v58 - v19;
  v20 = sub_224DAB8C8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + 24);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_224DAB8F8();
  (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v58 = v13;
    v59 = a1;
    v65 = v5;
    swift_beginAccess();
    v27 = *(v1 + 80);

    sub_224DA9748();
    v28 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v27 + 64);
    v32 = (v29 + 63) >> 6;
    v68 = (v6 + 32);
    v69 = v27;
    v61 = (v6 + 8);
    v62 = v6 + 16;

    v33 = 0;
    v34 = v17;
    v63 = v17;
    v64 = v6;
    while (v31)
    {
LABEL_12:
      v38 = __clz(__rbit64(v31)) | (v33 << 6);
      v39 = v69;
      v40 = *(v69 + 48);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v42 = v65;
      (*(*(v41 - 8) + 16))(v65, v40 + *(*(v41 - 8) + 72) * v38, v41);
      v43 = *(v39 + 56) + *(v6 + 72) * v38;
      v44 = *(v67 + 48);
      v45 = *(v6 + 16);
      v46 = v70;
      v45(v42 + v44, v43, v70);
      sub_224BC4B28(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v47 = v63;
      if (sub_224DAEDB8())
      {
        (*v61)(v47, v46);
        v48 = v42 + v44;
        v49 = v66;
        v45(v66, v48, v46);
        v36 = v49;
        sub_224A3311C(v42, &qword_27D6F4B90, &qword_224DB9F00);
        v35 = *v68;
      }

      else
      {
        sub_224A3311C(v42, &qword_27D6F4B90, &qword_224DB9F00);
        v35 = *v68;
        v36 = v66;
        (*v68)(v66, v47, v46);
      }

      v34 = v47;
      v31 &= v31 - 1;
      v35(v47, v36, v70);
      v6 = v64;
    }

    while (1)
    {
      v37 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v37 >= v32)
      {
        break;
      }

      v31 = *(v28 + 8 * v37);
      ++v33;
      if (v31)
      {
        v33 = v37;
        goto LABEL_12;
      }
    }

    v50 = *v68;
    v51 = v60;
    v52 = v70;
    (*v68)(v60, v34, v70);

    v53 = v58;
    sub_224DA9748();
    v54 = sub_224DA97E8();
    v55 = *v61;
    (*v61)(v53, v52);
    if (v54)
    {
      v55(v51, v70);
      v56 = 1;
      v57 = v59;
    }

    else
    {
      v57 = v59;
      v50(v59, v51, v70);
      v56 = 0;
    }

    (*(v6 + 56))(v57, v56, 1, v70);
  }

  else
  {
LABEL_19:
    __break(1u);
  }
}

void sub_224BC3248()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v44 - v4;
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v44 - v16;
  v18 = sub_224DAB8C8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v1 + 24);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v49 = v23;
  LOBYTE(v23) = sub_224DAB8F8();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = *(v1 + 64);
  sub_224DAA948();
  sub_224BC2CBC(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_224A3311C(v5, &qword_27D6F32B0, &qword_224DB3EA0);
    if (qword_2813516C8 == -1)
    {
LABEL_4:
      v25 = sub_224DAB258();
      __swift_project_value_buffer(v25, qword_281365120);
      v26 = sub_224DAB228();
      v27 = sub_224DAF2A8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_224A2F000, v26, v27, "Not starting snapshot assertion expiration timer", v28, 2u);
        MEMORY[0x22AA5EED0](v28, -1, -1);
      }

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  (*(v7 + 32))(v17, v5, v6);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAB258();
  __swift_project_value_buffer(v29, qword_281365120);
  v30 = *(v7 + 16);
  v48 = v17;
  v30(v14, v17, v6);
  v31 = sub_224DAB228();
  v32 = sub_224DAF2A8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v45 = v33;
    v46 = swift_slowAlloc();
    v51 = v46;
    *v33 = 136446210;
    sub_224BC4B28(&qword_27D6F32B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v34 = sub_224DAFD28();
    v47 = v24;
    v36 = v35;
    v37 = *(v7 + 8);
    v37(v14, v6);
    v38 = sub_224A33F74(v34, v36, &v51);

    v39 = v45;
    *(v45 + 1) = v38;
    v40 = v39;
    _os_log_impl(&dword_224A2F000, v31, v32, "Snapshot assertion expiration timer will fire at %{public}s", v39, 0xCu);
    v41 = v46;
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x22AA5EED0](v41, -1, -1);
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  else
  {

    v37 = *(v7 + 8);
    v37(v14, v6);
  }

  v42 = v50;
  sub_224DA9808();
  v43 = v48;
  sub_224DA9758();
  v37(v42, v6);

  sub_224DAA938();

  v37(v43, v6);
}

double sub_224BC37F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v77 = &v73 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v88 = *(v5 - 1);
  MEMORY[0x28223BE20](v5, v6);
  v76 = &v73 - v7;
  v8 = sub_224DA9878();
  v80 = *(v8 - 8);
  v81 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v82 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v89 = &v73 - v13;
  v14 = sub_224DAB8C8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = (&v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v0 + 24);
  *v18 = v19;
  v20 = *MEMORY[0x277D85200];
  v21 = v15 + 104;
  v87 = *(v15 + 104);
  v87(v18, v20, v14);
  v22 = v19;
  LOBYTE(v19) = sub_224DAB8F8();
  v25 = *(v15 + 8);
  v24 = v15 + 8;
  v23 = v25;
  v25(v18, v14);
  if ((v19 & 1) == 0)
  {
    goto LABEL_28;
  }

  v85 = v22;
  *v18 = v22;
  v86 = v20;
  v87(v18, v20, v14);
  v26 = sub_224DAB8F8();
  v79 = v24;
  v84 = v23;
  v23(v18, v14);
  if ((v26 & 1) == 0)
  {
    goto LABEL_29;
  }

  v83 = v21;
  v78 = v14;
  v27 = v82;
  sub_224DA9808();
  v28 = v89;
  sub_224DA9768();
  v29 = v81;
  v30 = *(v80 + 1);
  v30(v27, v81);
  v31 = swift_beginAccess();
  v32 = *(v1 + 80);
  MEMORY[0x28223BE20](v31, v33);
  *(&v73 - 2) = v28;

  v35 = sub_224BA066C(sub_224BC4A98, (&v73 - 4), v32, v34);

  v36 = v35[2];
  if (v36)
  {
    v37 = sub_224A6DE18(v35[2], 0);
    v38 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v74 = v37;
    v39 = sub_224B2F73C(v91, &v37[v38], v36, v35);
    sub_224A3B7E4(v91[0]);
    if (v39 == v36)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v74 = MEMORY[0x277D84F90];
LABEL_7:
  v30(v89, v29);
  v14 = v78;
  if (qword_2813516C8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v40 = sub_224DAB258();
    __swift_project_value_buffer(v40, qword_281365120);
    v41 = v74;

    v42 = sub_224DAB228();
    v43 = sub_224DAF2A8();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v76;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v91[0] = v89;
      *v46 = 136446210;
      v47 = MEMORY[0x22AA5D380](v41, v5);
      v49 = sub_224A33F74(v47, v48, v91);
      LODWORD(v82) = v43;
      v50 = v49;

      *(v46 + 4) = v50;
      _os_log_impl(&dword_224A2F000, v42, v82, "Invalidating expired snapshots from hosts: %{public}s", v46, 0xCu);
      v51 = v89;
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x22AA5EED0](v51, -1, -1);
      MEMORY[0x22AA5EED0](v46, -1, -1);
    }

    v52 = v86;
    v82 = *(v41 + 2);
    if (!v82)
    {
      break;
    }

    v53 = v41;
    v54 = 0;
    v81 = *(v88 + 16);
    v80 = &v53[(*(v88 + 80) + 32) & ~*(v88 + 80)];
    v55 = *(v88 + 72);
    v88 += 16;
    v89 = v55;
    v56 = (v88 - 8);
    v75 = v5;
    while (1)
    {
      v57 = v5;
      v81(v45, &v80[v89 * v54], v5);
      v5 = v85;
      *v18 = v85;
      v87(v18, v52, v14);
      v58 = v5;
      v59 = sub_224DAB8F8();
      v84(v18, v14);
      if ((v59 & 1) == 0)
      {
        break;
      }

      swift_beginAccess();
      v60 = *(v1 + 72);
      if (*(v60 + 16) && (v61 = sub_224A683FC(v45), (v62 & 1) != 0))
      {
        v63 = *(*(v60 + 56) + 8 * v61);
        swift_endAccess();
        v64 = *(v63 + 16);
        v5 = v57;
        if (v64)
        {
          v65 = v63 + 32;

          do
          {
            sub_224A3317C(v65, v91);
            __swift_project_boxed_opaque_existential_1(v91, v91[3]);
            sub_224DAE1F8();
            __swift_destroy_boxed_opaque_existential_1(v91);
            v65 += 40;
            --v64;
          }

          while (v64);

          v5 = v75;
          v45 = v76;
        }

        swift_beginAccess();
        v66 = sub_224A683FC(v45);
        v14 = v78;
        if (v67)
        {
          v68 = v66;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = *(v1 + 72);
          v90 = v70;
          *(v1 + 72) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_224B27B50();
            v70 = v90;
          }

          (*v56)(*(v70 + 48) + v68 * v89, v5);

          sub_224AA3CE4(v68, v70);
          *(v1 + 72) = v70;
        }

        swift_endAccess();
        swift_beginAccess();
        v71 = v77;
        sub_224B0D688(v45, v77);
        sub_224A3311C(v71, &qword_27D6F32B0, &qword_224DB3EA0);
        swift_endAccess();
        (*(v1 + 48))(v45);
        sub_224BC3248();
      }

      else
      {
        swift_endAccess();
        v5 = v57;
      }

      ++v54;
      (*v56)(v45, v5);
      v52 = v86;
      if (v54 == v82)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_26:

  return result;
}

BOOL sub_224BC405C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B90, &qword_224DB9F00);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = *(v6 + 56);
  v12 = sub_224DA9878();
  (*(*(v12 - 8) + 16))(&v9[v11], a2, v12);
  sub_224BC4B28(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v13 = sub_224DAEDB8();
  sub_224A3311C(v9, &qword_27D6F4B90, &qword_224DB9F00);
  return (v13 & 1) == 0;
}

void sub_224BC41F4(uint64_t a1, void *a2)
{
  v3 = v2;
  v71 = a1;
  v56 = sub_224DA9878();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v5);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v54 = &v52 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v57 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v10);
  v52 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v52 - v14;
  v69 = sub_224DAC268();
  v16 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAB8C8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v3 + 24);
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_224DAB8F8();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    goto LABEL_37;
  }

  swift_beginAccess();
  if (*(*(v3 + 72) + 16) && (sub_224A683FC(v71), (v27 & 1) != 0))
  {
    swift_endAccess();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    v28 = [a2 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v20 = sub_224DAF008();

    if (v20 >> 62)
    {
      goto LABEL_38;
    }

    v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v60 = v3;
    v61 = v20;
    if (v29)
    {
      v30 = 0;
      v63 = v20 & 0xC000000000000001;
      v59 = v20 & 0xFFFFFFFFFFFFFF8;
      v58 = v20 + 32;
      v66 = (v57 + 56);
      v67 = (v57 + 16);
      v68 = (v16 + 1);
      v16 = MEMORY[0x277D84F90];
      v62 = v29;
      while (1)
      {
        if (v63)
        {
          v31 = MEMORY[0x22AA5DCC0](v30, v61);
          v32 = __OFADD__(v30, 1);
          v33 = v30 + 1;
          if (v32)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v30 >= *(v59 + 16))
          {
            goto LABEL_36;
          }

          v31 = *(v58 + 8 * v30);
          v32 = __OFADD__(v30, 1);
          v33 = v30 + 1;
          if (v32)
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            v29 = sub_224DAF838();
            goto LABEL_6;
          }
        }

        v64 = v31;
        v20 = [v31 widgets];
        sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
        v34 = sub_224DAF008();

        v65 = v33;
        if (v34 >> 62)
        {
          v35 = sub_224DAF838();
          if (!v35)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v35)
          {
            goto LABEL_8;
          }
        }

        if (v35 < 1)
        {
          goto LABEL_35;
        }

        v36 = 0;
        v37 = *(v60 + 32);
        v20 = *(v60 + 40);
        v72 = v34 & 0xC000000000000001;
        v73 = v37;
        v74 = v34;
        do
        {
          if (v72)
          {
            v38 = MEMORY[0x22AA5DCC0](v36, v34);
          }

          else
          {
            v38 = *(v34 + 8 * v36 + 32);
          }

          v39 = v38;
          v40 = [v38 widget];
          v3 = [v39 metrics];
          v41 = v70;
          (*v67)(v15, v71, v70);
          (*v66)(v15, 0, 1, v41);
          sub_224DAC228();
          v73(&v75, v19);
          if (v76)
          {
            sub_224A39D14(&v75, v77);
            sub_224A3317C(v77, &v75);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_224AD97A8(0, v16[2] + 1, 1, v16);
            }

            v34 = v74;
            v3 = v16[2];
            v42 = v16[3];
            if (v3 >= v42 >> 1)
            {
              v16 = sub_224AD97A8((v42 > 1), v3 + 1, 1, v16);
            }

            __swift_destroy_boxed_opaque_existential_1(v77);
            (*v68)(v19, v69);
            v16[2] = v3 + 1;
            sub_224A39D14(&v75, &v16[5 * v3 + 4]);
          }

          else
          {
            (*v68)(v19, v69);

            sub_224A3311C(&v75, &qword_27D6F3AE8, &unk_224DB9600);
            v34 = v74;
          }

          ++v36;
        }

        while (v35 != v36);
LABEL_8:

        v30 = v65;
        if (v65 == v62)
        {
          goto LABEL_33;
        }
      }
    }

    v16 = MEMORY[0x277D84F90];
LABEL_33:

    v43 = v60;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v75 = *(v43 + 72);
    *(v43 + 72) = 0x8000000000000000;
    v45 = v71;
    sub_224B21378(v16, v71, isUniquelyReferenced_nonNull_native);
    *(v43 + 72) = v75;
    swift_endAccess();
    v46 = v52;
    (*(v57 + 16))(v52, v45, v70);
    v47 = v53;
    sub_224DA9808();
    v48 = v54;
    sub_224DA9768();
    v49 = v55;
    v50 = v47;
    v51 = v56;
    (*(v55 + 8))(v50, v56);
    (*(v49 + 56))(v48, 0, 1, v51);
    swift_beginAccess();
    sub_224B08344(v48, v46);
    swift_endAccess();
    sub_224BC3248();
  }
}

uint64_t sub_224BC4B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_224BC4B7C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v2, v25);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject widgets];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v7 = sub_224DAF008();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_224DAF838();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v9;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_224DAF838();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v30 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v32)
          {
            goto LABEL_43;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_224BC6838();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4040, &qword_224DB8D20);
              v18 = sub_224A6996C(v31, i, v7);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v30;
          if (v32 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v30;
      if (v32 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

void sub_224BC4EEC(void *a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  MEMORY[0x28223BE20](v43, v3);
  v42 = &v39 - v4;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 32))(v44, 768, v5, v6);
  if (!*(&v45 + 1))
  {
    sub_224A3311C(v44, &qword_27D6F50E0, &qword_224DB41A0);
    goto LABEL_27;
  }

  v46[0] = v44[0];
  v46[1] = v44[1];
  v46[2] = v45;
  v7 = sub_224A86CAC();
  if (!v7)
  {
    sub_224A699F0(v46);
LABEL_27:
    *(v1 + 16) = MEMORY[0x277D84F90];
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v8 = v7;
  v39 = a1;
  v40 = v1;
  v9 = v7 + 8;
  v10 = 1 << *(v7 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7[8];
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v41 = v14;
  while (v12)
  {
LABEL_12:
    v18 = __clz(__rbit64(v12)) | (v15 << 6);
    v19 = v8[6];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v21 = v42;
    (*(*(v20 - 8) + 16))(v42, v19 + *(*(v20 - 8) + 72) * v18, v20);
    v22 = *(v8[7] + 8 * v18);
    *(v21 + *(v43 + 48)) = v22;
    v23 = [v22 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v24 = sub_224DAF008();

    v25 = sub_224BC4B7C(v24);

    MEMORY[0x28223BE20](v26, v27);
    *(&v39 - 2) = v21;
    sub_224D40D40(sub_224BC6818, (&v39 - 4), v25);
    v29 = v28;

    sub_224A3311C(v21, &qword_27D6F38A8, &unk_224DB4650);
    v30 = *(v29 + 16);
    v31 = v16[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      goto LABEL_30;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v32 > v16[3] >> 1)
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      v16 = sub_224AD93E4(isUniquelyReferenced_nonNull_native, v34, 1, v16);
    }

    v12 &= v12 - 1;
    if (*(v29 + 16))
    {
      v35 = (v16[3] >> 1) - v16[2];
      sub_224DAC268();
      if (v35 < v30)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      v8 = v41;
      if (v30)
      {
        v36 = v16[2];
        v37 = __OFADD__(v36, v30);
        v38 = v36 + v30;
        if (v37)
        {
          goto LABEL_33;
        }

        v16[2] = v38;
      }
    }

    else
    {

      v8 = v41;
      if (v30)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      sub_224A699F0(v46);

      a1 = v39;
      *(v40 + 16) = v16;
      goto LABEL_28;
    }

    v12 = v9[v17];
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_224BC5300(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *a1;
  v9 = [v8 widget];
  v10 = [v8 metrics];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  return sub_224DAC228();
}

void sub_224BC5468(uint64_t a1, uint64_t a2)
{
  v20 = *(a1 + 16);
  if (v20)
  {
    v2 = *(a1 + 16);
    v3 = (a1 + 32);
    v4 = qword_27D6F7210;
    do
    {
      v21 = *v3;
      v12 = swift_unknownObjectRetain();
      sub_224BC5758(v12, *(&v21 + 1));
      if (qword_27D6F2D08 != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, v4);
      swift_unknownObjectRetain();
      v14 = sub_224DAB228();
      v15 = sub_224DAF2A8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v14, v15))
      {
        v5 = swift_slowAlloc();
        v6 = v4;
        v7 = swift_slowAlloc();
        v22 = v7;
        *v5 = 136315138;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
        v8 = sub_224DAEE28();
        v10 = sub_224A33F74(v8, v9, &v22);

        *(v5 + 4) = v10;
        _os_log_impl(&dword_224A2F000, v14, v15, "Timeline filename migration of %s completed.", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
        v11 = v7;
        v4 = v6;
        MEMORY[0x22AA5EED0](v11, -1, -1);
        MEMORY[0x22AA5EED0](v5, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  if (qword_27D6F2D08 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_27D6F7210);

  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v20;

    _os_log_impl(&dword_224A2F000, v17, v18, "Timeline filename migration of %ld cache manager(s) completed.", v19, 0xCu);
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  else
  {
  }
}

void sub_224BC5758(void *a1, uint64_t a2)
{
  v133 = a2;
  v3 = sub_224DA9688();
  v140 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v144 = &v126 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v126 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v126 - v16;
  v148 = type metadata accessor for TimelineFilenameMigrator.Action(0);
  MEMORY[0x28223BE20](v148, v18);
  v20 = (&v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v147 = type metadata accessor for TimelineFilenameMigrator.Result(0);
  v135 = *(v147 - 8);
  v22 = MEMORY[0x28223BE20](v147, v21);
  v24 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v126 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v126 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v139 = &v126 - v34;
  if (qword_27D6F2D08 != -1)
  {
    swift_once();
  }

  v137 = v24;
  v141 = v17;
  v150 = v3;
  v35 = sub_224DAB258();
  v36 = __swift_project_value_buffer(v35, qword_27D6F7210);
  swift_unknownObjectRetain();
  v149 = v36;
  v37 = sub_224DAB228();
  v38 = sub_224DAF278();
  swift_unknownObjectRelease();
  v39 = os_log_type_enabled(v37, v38);
  v138 = v7;
  v142 = v28;
  v143 = v14;
  v146 = v20;
  v151 = v32;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 136315138;
    v152 = a1;
    v42 = v133;
    v153 = v133;
    v154 = v41;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
    v43 = sub_224DAEE28();
    v45 = sub_224A33F74(v43, v44, &v154);
    v46 = v142;

    *(v40 + 4) = v45;
    v32 = v151;
    _os_log_impl(&dword_224A2F000, v37, v38, "Timeline migration starting for %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v47 = v41;
    v14 = v143;
    MEMORY[0x22AA5EED0](v47, -1, -1);
    v48 = v40;
    v20 = v146;
    MEMORY[0x22AA5EED0](v48, -1, -1);
  }

  else
  {

    v42 = v133;
    v46 = v28;
  }

  v49 = *(v145 + 2);
  type metadata accessor for TimelineFilenameMigrator();
  inited = swift_initStackObject();
  inited[2] = v49;
  inited[3] = a1;
  inited[4] = v42;
  swift_unknownObjectRetain();

  v131 = inited;
  v51 = sub_224BA49EC();
  v127 = a1;
  v53 = *(v51 + 16);
  if (v53)
  {
    v54 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v126 = v51;
    v55 = v51 + v54;
    v136 = (v140 + 4);
    v145 = v135[9];
    v135 = (v140 + 2);
    v134 = (v140 + 1);
    *&v52 = 136315650;
    v130 = v52;
    *&v52 = 136315394;
    v129 = v52;
    *&v52 = 136315138;
    v128 = v52;
    v56 = v139;
    do
    {
      sub_224BC670C(v55, v56, type metadata accessor for TimelineFilenameMigrator.Result);
      sub_224BC670C(v56 + *(v147 + 20), v20, type metadata accessor for TimelineFilenameMigrator.Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v58 = *v20;
          v59 = v137;
          sub_224BC670C(v56, v137, type metadata accessor for TimelineFilenameMigrator.Result);
          v60 = v58;
          v61 = sub_224DAB228();
          v62 = sub_224DAF288();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v140 = swift_slowAlloc();
            v152 = v140;
            *v63 = v129;
            sub_224DAC268();
            sub_224BC67D0(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
            v65 = sub_224DAFD28();
            v67 = v66;
            sub_224BC6774(v59);
            v68 = sub_224A33F74(v65, v67, &v152);

            *(v63 + 4) = v68;
            *(v63 + 12) = 2112;
            if (v58)
            {
              v69 = v58;
              v70 = _swift_stdlib_bridgeErrorToNSError();
              v71 = v70;
            }

            else
            {
              v70 = 0;
              v71 = 0;
            }

            v46 = v142;
            *(v63 + 14) = v70;
            *v64 = v71;
            _os_log_impl(&dword_224A2F000, v61, v62, "Timeline migration failed to migrate %s - %@", v63, 0x16u);
            sub_224A3311C(v64, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v64, -1, -1);
            v115 = v140;
            __swift_destroy_boxed_opaque_existential_1(v140);
            MEMORY[0x22AA5EED0](v115, -1, -1);
            MEMORY[0x22AA5EED0](v63, -1, -1);

            v56 = v139;
            sub_224BC6774(v139);
            v14 = v143;
            v20 = v146;
          }

          else
          {

            sub_224BC6774(v59);
            sub_224BC6774(v56);
            v20 = v146;
            v46 = v142;
          }

          v32 = v151;
        }

        else
        {
          sub_224BC670C(v56, v32, type metadata accessor for TimelineFilenameMigrator.Result);
          v103 = v56;
          v104 = sub_224DAB228();
          v105 = sub_224DAF278();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v152 = v107;
            *v106 = v128;
            sub_224DAC268();
            sub_224BC67D0(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
            v108 = sub_224DAFD28();
            v110 = v109;
            sub_224BC6774(v151);
            v111 = sub_224A33F74(v108, v110, &v152);
            v32 = v151;

            *(v106 + 4) = v111;
            _os_log_impl(&dword_224A2F000, v104, v105, "Timeline migration skipped %s", v106, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v107);
            v112 = v107;
            v46 = v142;
            MEMORY[0x22AA5EED0](v112, -1, -1);
            v113 = v106;
            v20 = v146;
            MEMORY[0x22AA5EED0](v113, -1, -1);
          }

          else
          {

            sub_224BC6774(v32);
          }

          sub_224BC6774(v103);
          v14 = v143;
          v56 = v103;
        }
      }

      else
      {
        v140 = v53;
        v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A20, &qword_224DB9F80) + 48);
        v73 = *v136;
        v74 = v14;
        v75 = v46;
        v76 = v141;
        v77 = v150;
        (*v136)(v141, v20, v150);
        v78 = v20 + v72;
        v79 = v77;
        v73(v74, v78, v77);
        sub_224BC670C(v56, v75, type metadata accessor for TimelineFilenameMigrator.Result);
        v80 = *v135;
        (*v135)(v144, v76, v77);
        v81 = v75;
        v14 = v74;
        v82 = v138;
        v80(v138, v74, v79);
        v83 = sub_224DAB228();
        v84 = sub_224DAF278();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v152 = v132;
          *v85 = v130;
          sub_224DAC268();
          sub_224BC67D0(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
          v86 = sub_224DAFD28();
          v88 = v87;
          sub_224BC6774(v81);
          v89 = sub_224A33F74(v86, v88, &v152);

          *(v85 + 4) = v89;
          *(v85 + 12) = 2080;
          sub_224BC67D0(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v90 = sub_224DAFD28();
          v92 = v91;
          v93 = *v134;
          (*v134)(v144, v150);
          v94 = sub_224A33F74(v90, v92, &v152);
          v95 = v142;
          v96 = v138;

          *(v85 + 14) = v94;
          *(v85 + 22) = 2080;
          v97 = sub_224DAFD28();
          v99 = v98;
          v100 = v96;
          v46 = v95;
          v93(v100, v150);
          v101 = sub_224A33F74(v97, v99, &v152);
          v14 = v143;

          *(v85 + 24) = v101;
          _os_log_impl(&dword_224A2F000, v83, v84, "Timeline migration moved %s from %s to %s", v85, 0x20u);
          v102 = v132;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v102, -1, -1);
          MEMORY[0x22AA5EED0](v85, -1, -1);

          v93(v14, v150);
          v93(v141, v150);
          v56 = v139;
          sub_224BC6774(v139);
          v20 = v146;
          v32 = v151;
        }

        else
        {

          v114 = *v134;
          (*v134)(v82, v79);
          v114(v144, v79);
          sub_224BC6774(v81);
          v114(v14, v79);
          v114(v141, v79);
          v56 = v139;
          sub_224BC6774(v139);
          v20 = v146;
          v32 = v151;
          v46 = v81;
        }

        v53 = v140;
      }

      v55 += v145;
      v53 = (v53 - 1);
    }

    while (v53);
  }

  v116 = v127;
  swift_unknownObjectRetain();
  v117 = sub_224DAB228();
  v118 = sub_224DAF278();
  swift_unknownObjectRelease();
  v119 = os_log_type_enabled(v117, v118);
  v120 = v133;
  if (v119)
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v153 = v120;
    v154 = v122;
    *v121 = 136315138;
    v152 = v116;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
    v123 = sub_224DAEE28();
    v125 = sub_224A33F74(v123, v124, &v154);

    *(v121 + 4) = v125;
    _os_log_impl(&dword_224A2F000, v117, v118, "Timeline migration finished for %s", v121, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v122);
    MEMORY[0x22AA5EED0](v122, -1, -1);
    MEMORY[0x22AA5EED0](v121, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_224BC670C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224BC6774(uint64_t a1)
{
  v2 = type metadata accessor for TimelineFilenameMigrator.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224BC67D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_224BC6838()
{
  result = qword_281350B68;
  if (!qword_281350B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4040, &qword_224DB8D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350B68);
  }

  return result;
}

uint64_t sub_224BC689C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F4BA0);
  __swift_project_value_buffer(v0, qword_27D6F4BA0);
  return sub_224DAB238();
}

void sub_224BC692C(void *a1)
{
  [*v1 setDispatchQueue_];
}

void sub_224BC69C4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v9 = *v7;
  if (a1)
  {
    v11[4] = a1;
    v11[5] = a2;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_224A39F40;
    v11[3] = a6;
    v10 = _Block_copy(v11);
  }

  else
  {
    v10 = 0;
  }

  [v9 *a7];
  _Block_release(v10);
}

void sub_224BC6A98(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v9 = *v7;
  if (a1)
  {
    v11[4] = a1;
    v11[5] = a2;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_224A3837C;
    v11[3] = a6;
    v10 = _Block_copy(v11);
  }

  else
  {
    v10 = 0;
  }

  [v9 *a7];
  _Block_release(v10);
}

void sub_224BC6B44(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *v3;
  if (a1)
  {
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_224BC6BF0;
    v6[3] = &block_descriptor_38;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v4 setPersonChangedHandler_];
  _Block_release(v5);
}

void sub_224BC6BF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_224BC6C64(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v4 = *v3;
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_224BC6D2C;
    v6[3] = &block_descriptor_35_0;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
    v4 = *v3;
  }

  [v4 activateWithCompletion_];
  _Block_release(v5);
}

void sub_224BC6D2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_224BC6FDC@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D441C8]) init];
  result = sub_224A3B79C(0, &qword_27D6F4BE8, 0x277D441C8);
  a1[3] = result;
  a1[4] = &off_28382DFC8;
  *a1 = v2;
  return result;
}

void sub_224BC7098(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, double a6)
{
  v54 = sub_224DAB7B8();
  MEMORY[0x28223BE20](v54, v11);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_224DAB898();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v13);
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_224DA9878();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v15);
  v63 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HandlerItem(0);
  v61 = *(v17 - 8);
  v18 = *(v61 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v53 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v52 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v52 - v26;
  swift_beginAccess();
  v28 = a1[5];

  v62 = a2;
  LOBYTE(a2) = sub_224A3A53C(a2, a3, v28);

  if ((a2 & 1) == 0)
  {
    sub_224DA98F8();
    v33 = &v27[*(v17 + 20)];
    *v33 = a4;
    *(v33 + 1) = a5;
    swift_beginAccess();
    v34 = a1[4];
    v35 = *(v34 + 16);

    v36 = MEMORY[0x277D84F90];
    if (v35)
    {

      v37 = sub_224A3A40C(v62, a3);
      if (v38)
      {
        v36 = *(*(v34 + 56) + 8 * v37);
      }
    }

    sub_224BCA114(v27, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_224AD97CC(0, v36[2] + 1, 1, v36);
    }

    v41 = v36[2];
    v40 = v36[3];
    if (v41 >= v40 >> 1)
    {
      v36 = sub_224AD97CC((v40 > 1), v41 + 1, 1, v36);
    }

    v36[2] = v41 + 1;
    v42 = *(v61 + 80);
    sub_224B832A4(v24, v36 + ((v42 + 32) & ~v42) + *(v61 + 72) * v41);
    swift_beginAccess();

    v43 = swift_isUniquelyReferenced_nonNull_native();
    v64 = a1[4];
    a1[4] = 0x8000000000000000;
    v44 = v62;
    sub_224B215CC(v36, v62, a3, v43);

    a1[4] = v64;
    swift_endAccess();
    sub_224DA97A8();
    v45 = a1[6];
    sub_224DA97D8();
    v47 = ceil(v46);
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v47 > -9.22337204e18)
    {
      if (v47 < 9.22337204e18)
      {
        v61 = v45;
        v48 = v55;
        sub_224DAB888();
        v49 = v52;
        v50 = v53;
        sub_224BCA114(v52, v53);
        v51 = swift_allocObject();
        v51[2] = a1;
        v51[3] = v44;
        v51[4] = a3;
        sub_224B832A4(v50, v51 + ((v42 + 40) & ~v42));
        v67 = sub_224BCA178;
        v68 = v51;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_224A39F40;
        v66 = &block_descriptor_23;
        _Block_copy(aBlock);
        v64 = MEMORY[0x277D84F90];
        sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        sub_224DAF788();
        sub_224DAB8B8();
        swift_allocObject();
        sub_224DAB8A8();

        sub_224DAF328();

        (*(v57 + 8))(v48, v58);
        swift_beginAccess();
        sub_224BCA1E0((a1 + 7), aBlock);
        if (v66)
        {
          (*(v59 + 8))(v63, v60);
          sub_224BCA250(v49);
          sub_224A3311C(aBlock, &qword_27D6F4BC8, &qword_224DBA048);
        }

        else
        {
          sub_224A3311C(aBlock, &qword_27D6F4BC8, &qword_224DBA048);
          sub_224BC825C();
          (*(v59 + 8))(v63, v60);
          sub_224BCA250(v49);
        }

        return;
      }

LABEL_23:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_27D6F2CC0 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAB258();
  __swift_project_value_buffer(v29, qword_27D6F4BA0);
  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_224A2F000, v30, v31, "Device was already discovered.", v32, 2u);
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

  a4(1);
}

void sub_224BC78A8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BE0, qword_224DBA060);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v58 - v10;
  v12 = type metadata accessor for HandlerItem(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(a1 + 32);
  if (*(v17 + 16))
  {

    v18 = sub_224A3A40C(a2, a3);
    if ((v19 & 1) == 0)
    {

      return;
    }

    v20 = *(v17 + 56);
    v66 = a2;
    v21 = *(v20 + 8 * v18);

    v65 = v13;
    MEMORY[0x28223BE20](v22, v23);
    *(&v58 - 2) = a4;
    v24 = sub_224BC7E84(sub_224BCA684, (&v58 - 4), v21);
    v26 = v25;
    v27 = v66;

    if (v26)
    {
      return;
    }

    if (qword_27D6F2CC0 != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_27D6F4BA0);
    sub_224BCA114(a4, v16);

    v29 = sub_224DAB228();
    v30 = sub_224DAF2A8();

    v31 = os_log_type_enabled(v29, v30);
    v63 = v24;
    v64 = a4;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v68[0] = v62;
      *v32 = 136446723;
      v61 = v29;
      v33 = sub_224DA9898();
      v35 = sub_224A3D19C(8, v33, v34);
      v59 = v36;
      v38 = v37;
      v60 = v30;
      v40 = v39;

      v41 = v35;
      v27 = v66;
      v42 = MEMORY[0x22AA5D1C0](v41, v59, v38, v40);
      v44 = v43;

      sub_224BCA250(v16);
      v45 = sub_224A33F74(v42, v44, v68);

      *(v32 + 4) = v45;
      *(v32 + 12) = 2160;
      *(v32 + 14) = 1752392040;
      *(v32 + 22) = 2081;
      *(v32 + 24) = sub_224A33F74(v27, a3, v68);
      v46 = v61;
      _os_log_impl(&dword_224A2F000, v61, v60, "[%{public}s] Timed out waiting for discovery of %{private,mask.hash}s; assuming not present.", v32, 0x20u);
      v47 = v62;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v47, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    else
    {

      sub_224BCA250(v16);
    }

    v48 = sub_224BC7048(v68);
    v49 = sub_224BC7F70(v67, v27, a3);
    if (*v50)
    {
      sub_224B82D20(v63, v11);
      (v49)(v67, 0);
      (v48)(v68, 0);
      v51 = 0;
    }

    else
    {
      (v49)(v67, 0);
      (v48)(v68, 0);
      v51 = 1;
    }

    (*(v65 + 56))(v11, v51, 1, v12);
    sub_224A3311C(v11, &qword_27D6F4BE0, qword_224DBA060);
    v52 = *(a1 + 32);
    v53 = v64;
    if (!*(v52 + 16))
    {
      goto LABEL_18;
    }

    v54 = sub_224A3A40C(v27, a3);
    if (v55)
    {
      v56 = *(*(v52 + 56) + 8 * v54);

      v57 = *(v56 + 16);

      if (v57)
      {
LABEL_18:
        (*(v53 + *(v12 + 20)))(0);
        sub_224BC7FF8();
        return;
      }

      swift_beginAccess();
      sub_224B0D854(v27, a3);
      swift_endAccess();
    }

    goto LABEL_18;
  }
}

uint64_t sub_224BC7E00(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 16)
  {
    v8 = a1(i, a2);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_224BC7E84(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for HandlerItem(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void (*sub_224BC7F70(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_224BCA3A4(v6, a2, a3);
  return sub_224BCA9EC;
}

void sub_224BC7FF8()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = *(v1 + 48);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  if (!*(*(v1 + 32) + 16))
  {
    swift_beginAccess();
    sub_224BCA1E0(v1 + 56, v15);
    v13 = v16;
    sub_224A3311C(v15, &qword_27D6F4BC8, &qword_224DBA048);
    if (v13)
    {
      sub_224BC9D7C();
      return;
    }
  }

  if (qword_27D6F2CC0 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_27D6F4BA0);

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = *(*(v1 + 32) + 16);

    _os_log_impl(&dword_224A2F000, v10, v11, "Not invalidating People client due to deviceSubscriptions = %{public}ld", v12, 0xCu);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  else
  {
  }
}

void sub_224BC825C()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[6];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();
  sub_224BCA1E0((v1 + 7), v57);
  v10 = v58;
  sub_224A3311C(v57, &qword_27D6F4BC8, &qword_224DBA048);
  if (v10)
  {
    if (qword_27D6F2CC0 == -1)
    {
LABEL_4:
      v11 = sub_224DAB258();
      __swift_project_value_buffer(v11, qword_27D6F4BA0);
      v12 = sub_224DAB228();
      v13 = sub_224DAF288();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_224A2F000, v12, v13, "Attempted to start People client, but we've already initialized", v14, 2u);
        MEMORY[0x22AA5EED0](v14, -1, -1);
      }

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (qword_27D6F2CC0 != -1)
  {
    swift_once();
  }

  v15 = sub_224DAB258();
  __swift_project_value_buffer(v15, qword_27D6F4BA0);
  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_224A2F000, v16, v17, "Starting up RPPeopleDiscovery...", v18, 2u);
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  v19 = v1[2];

  v19(v57, v20);

  swift_beginAccess();
  sub_224BCA2AC(v57, (v1 + 7));
  swift_endAccess();
  sub_224BCA1E0((v1 + 7), &v55);
  if (v56)
  {
    sub_224A36F98(&v55, v57);
    v21 = v58;
    v22 = v59;
    __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    (*(v22 + 16))(1, v21, v22);
    v23 = v58;
    v24 = v59;
    __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    (*(v24 + 40))(v8, v23, v24);
    v25 = v58;
    v26 = v59;
    __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    (*(v26 + 64))(0xFFFFFFFFLL, v25, v26);
    v27 = v58;
    v28 = v59;
    __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    (*(v28 + 88))(4, v27, v28);
    v29 = v58;
    v30 = v59;
    __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v31 = *(v30 + 136);

    v31(sub_224BCA31C, v1, v29, v30);
    v32 = v58;
    v33 = v59;
    __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v34 = *(v33 + 112);

    v34(sub_224BCA354, v1, v32, v33);
    v35 = v58;
    v36 = v59;
    __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v37 = *(v36 + 184);

    v37(sub_224BCA38C, v1, v35, v36);
    v38 = v58;
    v39 = v59;
    __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v40 = *(v39 + 160);

    v40(sub_224BCA394, v1, v38, v39);
    v41 = v58;
    v42 = v59;
    __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v43 = *(v42 + 208);

    v43(sub_224BCA39C, v1, v41, v42);
    v44 = v58;
    v45 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (*(v45 + 224))(sub_224BC9B2C, 0, v44, v45);
    sub_224A3317C(v57, &v55);
    swift_beginAccess();
    sub_224BCA2AC(&v55, (v1 + 7));
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    sub_224A3311C(&v55, &qword_27D6F4BC8, &qword_224DBA048);

    v46 = sub_224DAB228();
    v47 = sub_224DAF288();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v55 = v49;
      *v48 = 136446210;
      v50 = v1[3];
      v57[0] = v1[2];
      v57[1] = v50;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BD0, &unk_224DBA050);
      v51 = sub_224DAEE28();
      v53 = sub_224A33F74(v51, v52, &v55);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_224A2F000, v46, v47, "Failed to initialize people discovery client %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x22AA5EED0](v49, -1, -1);
      MEMORY[0x22AA5EED0](v48, -1, -1);
    }
  }
}

uint64_t sub_224BC8980()
{

  sub_224A3311C(v0 + 56, &qword_27D6F4BC8, &qword_224DBA048);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandlerItem(uint64_t a1)
{
  result = qword_27D6F4BB8;
  if (!qword_27D6F4BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BC8A80(uint64_t a1)
{
  result = sub_224DA9908();
  if (v2 <= 0x3F)
  {
    result = sub_224BC8B04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_224BC8B04()
{
  result = qword_2813507B8;
  if (!qword_2813507B8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2813507B8);
  }

  return result;
}

uint64_t sub_224BC8B54(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HandlerItem(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v71 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v70 = &v60 - v10;
  v11 = sub_224DAB8C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v2[6];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_224DAB8F8();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_32;
  }

  swift_beginAccess();
  v2[5] = MEMORY[0x277D84FA0];

  v18 = [a1 devices];
  sub_224A3B79C(0, &qword_27D6F4BD8, 0x277D44178);
  v19 = sub_224DAF008();

  v60 = v19;
  if (v19 >> 62)
  {
LABEL_33:
    v20 = sub_224DAF838();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v70;
  v21 = v71;
  swift_beginAccess();
  if (v20)
  {
    v24 = 0;
    v66 = v60 & 0xC000000000000001;
    v65 = v60 & 0xFFFFFFFFFFFFFF8;
    v64 = v60 + 32;
    *&v23 = 136446723;
    v68 = v23;
    v62 = v2;
    v69 = v4;
    v61 = v20;
    while (1)
    {
      if (v66)
      {
        v26 = MEMORY[0x22AA5DCC0](v24, v60);
      }

      else
      {
        if (v24 >= *(v65 + 16))
        {
          goto LABEL_31;
        }

        v26 = *(v64 + 8 * v24);
      }

      v25 = v26;
      if (__OFADD__(v24++, 1))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v28 = [v26 idsDeviceIdentifier];
      if (v28)
      {
        break;
      }

LABEL_8:

      if (v24 == v20)
      {
      }
    }

    v67 = v25;
    v29 = v28;
    v30 = sub_224DAEE18();
    v32 = v31;

    v33 = v32;
    swift_beginAccess();

    sub_224ADAF60(&v78, v30, v32);
    swift_endAccess();

    v34 = v2[4];
    if (*(v34 + 16))
    {

      v35 = sub_224A3A40C(v30, v33);
      if (v36)
      {
        v63 = v24;
        v2 = *(*(v34 + 56) + 8 * v35);

        v75 = v2[2];
        if (v75)
        {
          v37 = 0;
          v72 = v33;
          v76 = v30;
          while (v37 < v2[2])
          {
            sub_224BCA114(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v37, v22);
            if (qword_27D6F2CC0 != -1)
            {
              swift_once();
            }

            v38 = sub_224DAB258();
            __swift_project_value_buffer(v38, qword_27D6F4BA0);
            sub_224BCA114(v22, v21);

            v39 = sub_224DAB228();
            v40 = sub_224DAF2A8();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v77[0] = v74;
              *v41 = v68;
              v73 = v40;
              sub_224DA9898();
              v42 = v5;
              sub_224DAEE98();
              v43 = sub_224DAEF28();
              v45 = v44;
              v46 = v2;
              v48 = v47;
              v50 = v49;

              v51 = v45;
              v5 = v42;
              v21 = v71;
              v52 = v48;
              v2 = v46;
              v53 = MEMORY[0x22AA5D1C0](v43, v51, v52, v50);
              v55 = v54;

              sub_224BCA250(v21);
              v56 = sub_224A33F74(v53, v55, v77);
              v22 = v70;

              *(v41 + 4) = v56;
              v33 = v72;
              *(v41 + 12) = 2160;
              *(v41 + 14) = 1752392040;
              *(v41 + 22) = 2081;
              *(v41 + 24) = sub_224A33F74(v76, v33, v77);
              _os_log_impl(&dword_224A2F000, v39, v73, "[%{public}s] Found %{private,mask.hash}s.", v41, 0x20u);
              v57 = v74;
              swift_arrayDestroy();
              MEMORY[0x22AA5EED0](v57, -1, -1);
              v58 = v41;
              v4 = v69;
              MEMORY[0x22AA5EED0](v58, -1, -1);
            }

            else
            {

              sub_224BCA250(v21);
            }

            ++v37;
            (*(v22 + *(v4 + 20)))(1);
            sub_224BCA250(v22);
            v30 = v76;
            if (v75 == v37)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_26:

        v2 = v62;
        swift_beginAccess();
        sub_224B08588(0, v30, v33);
        swift_endAccess();
        v20 = v61;
        v24 = v63;
        goto LABEL_7;
      }
    }

LABEL_7:
    sub_224BC7FF8();
    v25 = v67;
    goto LABEL_8;
  }
}

void sub_224BC929C(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  v6 = sub_224DAB8C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 48);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_224DAB8F8();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_27D6F2CC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_224DAB258();
  __swift_project_value_buffer(v13, qword_27D6F4BA0);
  v14 = sub_224DAB228();
  v15 = a2();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_224A2F000, v14, v15, a3, v16, 2u);
    MEMORY[0x22AA5EED0](v16, -1, -1);
  }
}

uint64_t sub_224BC9464(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAB8C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 48);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_224DAB8F8();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_27D6F2CC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_27D6F4BA0);
  v11 = sub_224DAB228();
  v12 = sub_224DAF2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_224A2F000, v11, v12, "RPPeopleDiscovery lost person", v13, 2u);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  swift_beginAccess();
  *(a2 + 40) = MEMORY[0x277D84FA0];
}

uint64_t sub_224BC9650(void *a1, uint64_t a2)
{
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 48);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_224DAB8F8();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_27D6F2CC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_27D6F4BA0);
  v12 = a1;
  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138477827;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_224A2F000, v13, v14, "RPPeopleDiscovery found %{private}@", v15, 0xCu);
    sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  return sub_224BC8B54(v12);
}

uint64_t sub_224BC987C(void *a1, int a2, uint64_t a3)
{
  v6 = sub_224DAB8C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a3 + 48);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_224DAB8F8();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_27D6F2CC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_224DAB258();
  __swift_project_value_buffer(v13, qword_27D6F4BA0);
  v14 = a1;
  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v17 = 138478083;
    *(v17 + 4) = v14;
    *v18 = v14;
    *(v17 + 12) = 2082;
    v25[1] = a2;
    type metadata accessor for RPPersonChangeFlags(0);
    v20 = v14;
    v21 = sub_224DAEE28();
    v23 = sub_224A33F74(v21, v22, &v26);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_224A2F000, v15, v16, "RPPeopleDiscovery changed %{private}@: %{public}s", v17, 0x16u);
    sub_224A3311C(v18, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x22AA5EED0](v19, -1, -1);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  return sub_224BC8B54(v14);
}

void sub_224BC9B2C(NSObject *a1)
{
  if (!a1)
  {
    if (qword_27D6F2CC0 != -1)
    {
      swift_once();
    }

    v10 = sub_224DAB258();
    __swift_project_value_buffer(v10, qword_27D6F4BA0);
    oslog = sub_224DAB228();
    v11 = sub_224DAF2A8();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_224A2F000, oslog, v11, "Successfully activated RPPeopleDiscovery", v12, 2u);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (qword_27D6F2CC0 != -1)
  {
    swift_once();
  }

  v3 = sub_224DAB258();
  __swift_project_value_buffer(v3, qword_27D6F4BA0);
  v4 = a1;
  oslog = sub_224DAB228();
  v5 = sub_224DAF288();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_224A2F000, oslog, v5, "Failed to activate RPPeopleDiscovery with error: %{public}@", v6, 0xCu);
    sub_224A3311C(v7, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

void sub_224BC9D7C()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 48);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();
  *(v1 + 40) = MEMORY[0x277D84FA0];

  swift_beginAccess();
  sub_224BCA1E0(v1 + 56, &v23);
  v9 = *(&v24 + 1);
  sub_224A3311C(&v23, &qword_27D6F4BC8, &qword_224DBA048);
  if (v9)
  {
    if (qword_27D6F2CC0 == -1)
    {
LABEL_4:
      v10 = sub_224DAB258();
      __swift_project_value_buffer(v10, qword_27D6F4BA0);
      v11 = sub_224DAB228();
      v12 = sub_224DAF2A8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_224A2F000, v11, v12, "Invalidating People client", v13, 2u);
        MEMORY[0x22AA5EED0](v13, -1, -1);
      }

      sub_224BCA1E0(v1 + 56, &v23);
      if (*(&v24 + 1))
      {
        sub_224A3317C(&v23, v20);
        sub_224A3311C(&v23, &qword_27D6F4BC8, &qword_224DBA048);
        v14 = v21;
        v15 = v22;
        __swift_project_boxed_opaque_existential_1(v20, v21);
        (*(v15 + 232))(v14, v15);
        __swift_destroy_boxed_opaque_existential_1(v20);
      }

      else
      {
        sub_224A3311C(&v23, &qword_27D6F4BC8, &qword_224DBA048);
      }

      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      swift_beginAccess();
      sub_224BCA2AC(&v23, v1 + 56);
      swift_endAccess();
      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  if (qword_27D6F2CC0 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_27D6F4BA0);
  v17 = sub_224DAB228();
  v18 = sub_224DAF288();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_224A2F000, v17, v18, "Attempted to invalidate People client, but the client is nil", v19, 2u);
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }
}

uint64_t sub_224BCA114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandlerItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_224BCA178()
{
  v1 = *(type metadata accessor for HandlerItem(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_224BC78A8(v2, v3, v4, v5);
}

uint64_t sub_224BCA1E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BC8, &qword_224DBA048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BCA250(uint64_t a1)
{
  v2 = type metadata accessor for HandlerItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224BCA2AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BC8, &qword_224DBA048);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*sub_224BCA3A4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_224BCA65C(v7);
  v7[9] = sub_224BCA450(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_224BCA9F0;
}

void (*sub_224BCA450(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_224A3A40C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_224B27B74();
      v13 = v21;
      goto LABEL_11;
    }

    sub_224B130B8(v18, a4 & 1);
    v13 = sub_224A3A40C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_224BCA5A8;
}

void sub_224BCA5A8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_224B24668(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_224BCA6B4(*(v7 + 48) + 16 * v6);
    sub_224A9C790(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_224BCA65C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_224BCA9D4;
}

uint64_t sub_224BCA708(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v3 = sub_224DAF318();
  MEMORY[0x28223BE20](v3, v4);
  v5 = sub_224DAF3C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAB848();
  MEMORY[0x28223BE20](v10 - 8, v11);
  *(v2 + 16) = sub_224BC6FDC;
  *(v2 + 24) = 0;
  v12 = MEMORY[0x277D84F90];
  v13 = sub_224DA1ACC(MEMORY[0x277D84F90]);
  v14 = MEMORY[0x277D84FA0];
  *(v2 + 32) = v13;
  *(v2 + 40) = v14;
  v17 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB828();
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v5);
  v20 = v12;
  sub_224A80DE0(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  *(v2 + 48) = sub_224DAF418();
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  v15 = v19;
  *(v2 + 16) = v18;
  *(v2 + 24) = v15;

  return v2;
}

uint64_t sub_224BCAA30()
{
  sub_224A3311C(v0 + 16, &qword_27D6F4900, &unk_224DB8640);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void *sub_224BCAAA4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v472 = a5;
  v427 = a4;
  v466 = a1;
  v437 = sub_224DA9908();
  v418 = *(v437 - 8);
  MEMORY[0x28223BE20](v437, v14);
  v436 = &v408 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4440, &unk_224DBA100);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v465 = &v408 - v18;
  v467 = sub_224DAD738();
  v471 = *(v467 - 8);
  MEMORY[0x28223BE20](v467, v19);
  v463 = &v408 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v464 = &v408 - v23;
  v24 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v426 = &v408 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v29 = MEMORY[0x28223BE20](v27 - 8, v28);
  v423 = &v408 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v408 - v32;
  v34 = sub_224DA9878();
  v429 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34, v35);
  v461 = &v408 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v447 = &v408 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v469 = &v408 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v468 = &v408 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v417 = &v408 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v424 = &v408 - v52;
  v54 = MEMORY[0x28223BE20](v51, v53);
  v445 = &v408 - v55;
  v57 = MEMORY[0x28223BE20](v54, v56);
  v446 = &v408 - v58;
  v60 = MEMORY[0x28223BE20](v57, v59);
  v462 = &v408 - v61;
  v63 = MEMORY[0x28223BE20](v60, v62);
  v65 = &v408 - v64;
  v67 = MEMORY[0x28223BE20](v63, v66);
  v458 = &v408 - v68;
  MEMORY[0x28223BE20](v67, v69);
  v459 = &v408 - v70;
  v485[3] = sub_224A3B79C(0, &qword_281350AF8, 0x277D06A28);
  v485[4] = &off_28382DDA0;
  v485[0] = a7;
  v71 = a9;
  v484[3] = sub_224A3B79C(0, &qword_2813508D8, 0x277D06A50);
  v484[4] = &off_283829AE8;
  v484[0] = a8;
  v482 = type metadata accessor for DuetWidgetConfigurationManager();
  v483 = &off_2838320A0;
  v481 = v466;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext_assertOnSchedulingFallback) = 0;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activationBlockIsCompleted) = 0;
  v72 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock;
  type metadata accessor for UnfairLock();
  v73 = swift_allocObject();
  v74 = swift_slowAlloc();
  *(a9 + v72) = v73;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier) = 0;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity) = 0;
  *v74 = 0;
  *(v73 + 16) = v74;
  v75 = a3;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity) = 0;
  v76 = (a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_completedRateLimitIdentifier);
  *v76 = 0;
  v76[1] = 0;
  sub_224A3317C(&v481, a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__duetConfigurationManager);
  sub_224A3317C(v485, a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
  sub_224A3317C(v484, a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler);
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity) = a2;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__queue) = a3;
  v77 = (a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__startHandler);
  *v77 = v472;
  v77[1] = a6;
  v78 = a2;
  sub_224A3796C(v427, a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__remoteDeviceProvider, &qword_27D6F5590, &qword_224DBEC00);
  v79 = *(a2 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name);
  v80 = *(a2 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name + 8);
  v422 = v79;
  v421 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration;
  sub_224A45A60(v78 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, v33);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v420 = *(v81 - 8);
  v82 = (*(v420 + 48))(v33, 1, v81);
  v428 = v80;
  v456 = v81;
  v425 = a6;
  v455 = v75;
  if (v82 == 1)
  {

    v83 = v75;

    sub_224DA9868();
    v84 = v78;
  }

  else
  {
    v85 = v33;
    v86 = v462;
    v87 = *(v429 + 32);
    v87(v462, v85, v34);
    v88 = v86;
    v84 = v78;
    v87(v65, v88, v34);

    v89 = v75;
  }

  v90 = v458;
  sub_224DA9768();
  v91 = v429;
  v92 = v459;
  (*(v429 + 32))(v459, v65, v34);
  v93 = *(v91 + 16);
  v93(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext_startAfter, v92, v34);
  v470 = v34;
  v450 = v91 + 16;
  v453 = v93;
  v93(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext_startBefore, v90, v34);
  v94 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingOptions;
  v95 = *(v84 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingOptions);
  v96 = v84;
  v97 = sub_224DAE8B8();
  v98 = *(v97 - 8);
  v99 = *(v98 + 56);
  v100 = v426;
  v99(v426, 4, 5, v97);
  LODWORD(v466) = sub_224D41D20(v100, v95);
  sub_224BCDD44(v100, type metadata accessor for ExtensionTask.SchedulingOption);
  v101 = *(v96 + v94);
  v99(v100, 1, 5, v97);
  LODWORD(v472) = sub_224D41D20(v100, v101);
  sub_224BCDD44(v100, type metadata accessor for ExtensionTask.SchedulingOption);
  v102 = *(v96 + v94);
  v99(v100, 2, 5, v97);
  v452 = sub_224D41D20(v100, v102);
  sub_224BCDD44(v100, type metadata accessor for ExtensionTask.SchedulingOption);
  v416 = v94;
  v103 = *(v96 + v94);
  (*(v98 + 104))(v100, *MEMORY[0x277CE3D20], v97);
  v415 = v97;
  v414 = v98 + 56;
  v413 = v99;
  v99(v100, 0, 5, v97);
  v104 = sub_224D41D20(v100, v103);
  sub_224BCDD44(v100, type metadata accessor for ExtensionTask.SchedulingOption);
  v105 = MEMORY[0x277D06AA8];
  if ((v472 & 1) == 0)
  {
    v105 = MEMORY[0x277D06AB8];
  }

  v449 = v104;
  if (v104)
  {
    v105 = MEMORY[0x277D06AB0];
  }

  v419 = *v105;
  v106 = sub_224A45AC4(v96 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel);
  if (qword_2813515F0 != -1)
  {
    goto LABEL_113;
  }

  while (1)
  {
    v107 = sub_224DAB258();
    v108 = __swift_project_value_buffer(v107, qword_281364F88);

    v109 = v106;
    v451 = v108;
    v110 = sub_224DAB228();
    v111 = sub_224DAF2A8();

    v112 = os_log_type_enabled(v110, v111);
    v462 = v71;
    v460 = v96;
    v457 = v109;
    if (v112)
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v472 = swift_slowAlloc();
      aBlock = v472;
      *v113 = 136446466;
      v473 = sub_224DA98E8();
      sub_224A3F6A4();
      v115 = sub_224DAEF18();
      v117 = sub_224A3D19C(8, v115, v116);
      v119 = v118;
      v121 = v120;
      v123 = v122;

      v124 = v117;
      v125 = v457;
      v126 = v459;
      v127 = MEMORY[0x22AA5D1C0](v124, v119, v121, v123);
      v129 = v128;

      v130 = sub_224A33F74(v127, v129, &aBlock);

      *(v113 + 4) = v130;
      *(v113 + 12) = 2114;
      *(v113 + 14) = v125;
      *v114 = v125;
      v131 = v125;
      _os_log_impl(&dword_224A2F000, v110, v111, "[%{public}s]: required data protection level: %{public}@", v113, 0x16u);
      sub_224A3311C(v114, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v114, -1, -1);
      v132 = v472;
      __swift_destroy_boxed_opaque_existential_1(v472);
      v71 = v462;
      MEMORY[0x22AA5EED0](v132, -1, -1);
      MEMORY[0x22AA5EED0](v113, -1, -1);

      v133 = v467;
      v134 = v471;
    }

    else
    {

      v133 = v467;
      v134 = v471;
      v126 = v459;
    }

    v135 = __swift_project_boxed_opaque_existential_1(&v481, v482);
    v136 = *v135;
    v137 = *(*v135 + 40);
    v138 = swift_allocObject();
    *(v138 + 16) = sub_224BCDD3C;
    *(v138 + 24) = v136;
    v479 = sub_224A8A838;
    v480 = v138;
    aBlock = MEMORY[0x277D85DD0];
    v476 = 1107296256;
    v477 = sub_224A9B6F8;
    v478 = &block_descriptor_24;
    v139 = _Block_copy(&aBlock);
    v140 = v137;

    dispatch_sync(v140, v139);

    _Block_release(v139);
    LOBYTE(v139) = swift_isEscapingClosureAtFileLocation();

    if (v139)
    {
      break;
    }

    v141 = v464;
    sub_224A3796C(v460 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_containingAppIdentifier, v464, &unk_27D6F5060, &qword_224DB5620);
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    v143 = *(v142 - 8);
    if ((*(v143 + 48))(v141, 1, v142) == 1)
    {
      sub_224A3311C(v141, &unk_27D6F5060, &qword_224DB5620);
      v454 = 0xE700000000000000;
      v448 = 0x6E776F6E6B6E75;
    }

    else
    {
      v448 = sub_224DA9FE8();
      v454 = v144;
      (*(v143 + 8))(v141, v142);
    }

    v145 = v470;
    v146 = v456;
    v147 = v465;
    v148 = v460;
    sub_224A3796C(v460 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, v465, &unk_27D6F4440, &unk_224DBA100);
    if ((v134[6])(v147, 1, v133) == 1)
    {
      sub_224A3311C(v147, &unk_27D6F4440, &unk_224DBA100);
      v96 = 0;
      goto LABEL_55;
    }

    v149 = v463;
    (v134[4])(v463, v147, v133);
    v465 = *(v148 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_budgetedDeviceIdentifiers);
    if (!v465)
    {
      goto LABEL_23;
    }

    if (v466)
    {
      v150 = v423;
      (*(v420 + 56))(v423, 1, 1, v456);
      v151 = v460;
      v152 = sub_224A45CAC(v460 + v421, v150);
      sub_224BCDD44(v150, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      v153 = MEMORY[0x277D06A60];
      if (v152)
      {
        v154 = *(v151 + v416);
        v155 = v426;
        v413(v426, 3, 5, v415);
        v156 = sub_224D41D20(v155, v154);
        sub_224BCDD44(v155, type metadata accessor for ExtensionTask.SchedulingOption);
        v157 = *v153;
        v453(v446, v126, v145);
        if (v156)
        {
          v158 = v445;
          sub_224DA9768();
          goto LABEL_48;
        }

        v225 = v453;
      }

      else
      {
        v157 = *MEMORY[0x277D06A60];
        v225 = v453;
        v453(v446, v126, v145);
      }

      v158 = v445;
      v225(v445, v458, v145);
LABEL_48:
      v226 = sub_224DAEDE8();
      v227 = v446;
      v228 = sub_224DA9778();
      v229 = sub_224DA9778();
      v230 = [objc_opt_self() activityWithName:v226 priority:v419 duration:v157 startingAfter:v228 startingBefore:v229];

      v231 = *(v429 + 8);
      v231(v158, v145);
      v231(v227, v145);
      v232 = MEMORY[0x277D06AB0];
      if ((v449 & 1) == 0)
      {
        v232 = MEMORY[0x277D06AB8];
      }

      [v230 setSchedulingPriority_];
      [v230 setHandlerQueue_];
      [v230 setFileProtection_];
      [v230 setRequiresNetwork_];
      v233 = swift_allocObject();
      swift_weakInit();
      v479 = sub_224BCDDC4;
      v480 = v233;
      aBlock = MEMORY[0x277D85DD0];
      v476 = 1107296256;
      v477 = sub_224C6F8A4;
      v478 = &block_descriptor_28_1;
      v234 = _Block_copy(&aBlock);

      [v230 setStartHandler_];
      _Block_release(v234);

      v235 = v230;
      v236 = sub_224DAB228();
      v237 = sub_224DAF2A8();

      if (os_log_type_enabled(v236, v237))
      {
        v238 = swift_slowAlloc();
        v466 = swift_slowAlloc();
        aBlock = v466;
        *v238 = 136446466;
        v239 = v418;
        v240 = *(v418 + 16);
        v241 = *(v71 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
        v472 = v235;
        v242 = v436;
        v243 = v437;
        v240(v436, v241, v437);
        LODWORD(v465) = v237;
        v473 = sub_224DA98E8();
        sub_224A3F6A4();
        v244 = sub_224DAEF18();
        v246 = sub_224A3D19C(8, v244, v245);
        v248 = v247;
        v250 = v249;
        v252 = v251;

        v253 = MEMORY[0x22AA5D1C0](v246, v248, v250, v252);
        v255 = v254;
        v126 = v459;

        v256 = v242;
        v235 = v472;
        (*(v239 + 8))(v256, v243);
        v257 = sub_224A33F74(v253, v255, &aBlock);

        *(v238 + 4) = v257;
        *(v238 + 12) = 2082;
        v258 = [v235 name];
        v259 = sub_224DAEE18();
        v261 = v260;

        v262 = v259;
        v71 = v462;
        v263 = sub_224A33F74(v262, v261, &aBlock);

        *(v238 + 14) = v263;
        _os_log_impl(&dword_224A2F000, v236, v465, "[%{public}s]: Scheduled DAS standard refresh; name: %{public}s", v238, 0x16u);
        v264 = v466;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v264, -1, -1);
        MEMORY[0x22AA5EED0](v238, -1, -1);

        v471[1](v463, v467);
      }

      else
      {

        v134[1](v463, v467);
      }

      v265 = *(v71 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
      *(v71 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity) = v235;

      v96 = 1;
LABEL_54:
      v146 = v456;
      v148 = v460;
LABEL_55:
      if (*(v148 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers) && (v412 = *(v148 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers), (v266 = *(v148 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitedDeviceIdentifiers)) != 0) && (v267 = v412, (v411 = *(v412 + 16)) != 0))
      {
        v268 = *(v266 + 2);
        if (v268)
        {
          v443 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
          v442 = (v71 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler);
          v433 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity;
          v269 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier;
          v444 = (v429 + 8);
          v432 = (v418 + 16);
          v431 = (v418 + 8);
          v435 = v266;

          v270 = v435;
          v271 = 0;
          v434 = -v268;
          v272 = v435 + 40;
          v409 = (v267 + 40);
          *&v273 = 136446466;
          v430 = v273;
          v441 = v269;
          v408 = v435 + 40;
          while (2)
          {
            v106 = &v272[16 * v271];
            v276 = v271 + 1;
            while (1)
            {
              if ((v276 - 1) >= *(v270 + 2))
              {
LABEL_111:
                __break(1u);
                goto LABEL_112;
              }

              v447 = v276;
              v277 = *(v106 - 8);
              v461 = *v106;
              if (!v461)
              {
                v438 = 0;
                v280 = 0;
                goto LABEL_72;
              }

              v278 = sub_224C6FFE0(v277);
              if (v279)
              {
                break;
              }

              v276 = v447 + 1;
              v106 += 16;
              v270 = v435;
              if (&v447[v434 + 1] == 1)
              {

                goto LABEL_96;
              }
            }

            v438 = v278;
            v280 = v279;
LABEL_72:
            swift_beginAccess();
            v410 = &v447[v434];
            v281 = v409;
            v282 = v411;
            v446 = v277;
            v445 = v280;
            do
            {
              v465 = v282;
              v286 = *(v281 - 1);
              v285 = *v281;
              v463 = v281;

              sub_224DA9898();
              v287 = v470;
              v288 = v453;
              v453(v468, v126, v470);
              v288(v469, v458, v287);

              v289 = sub_224DAEDE8();

              v467 = v286;
              v471 = v285;
              v290 = sub_224DAEDE8();
              v291 = v71;
              if (v280)
              {
                v292 = sub_224DAEDE8();
              }

              else
              {
                v292 = 0;
              }

              v293 = objc_allocWithZone(MEMORY[0x277D06A48]);
              v294 = sub_224DAEDE8();
              v295 = v468;
              v296 = sub_224DA9778();
              v297 = v469;
              v298 = sub_224DA9778();
              v472 = [v293 initWithIdentifier:v289 withBudgetIdentifier:0 withRateLimitConfigurationName:v290 withRemoteDeviceIdentifier:v292 withAppIdentifier:v294 refreshAfter:v296 refreshBefore:v298];

              v299 = *v444;
              v300 = v470;
              (*v444)(v297, v470);
              v440 = v299;
              v299(v295, v300);
              v301 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v302 = v442[3];
              v303 = v442[4];
              __swift_project_boxed_opaque_existential_1(v442, v302);
              v304 = swift_allocObject();
              v71 = v291;
              swift_weakInit();
              v305 = swift_allocObject();
              *(v305 + 16) = v301;
              *(v305 + 24) = v304;
              v306 = *(v303 + 16);

              v307 = v306(v472, sub_224BCDDAC, v305, v302, v303);

              swift_beginAccess();
              v464 = v301;
              swift_unknownObjectWeakAssign();
              v308 = MEMORY[0x277D06AB0];
              if ((v449 & 1) == 0)
              {
                v308 = MEMORY[0x277D06AB8];
              }

              v309 = *v308;
              v310 = v307;
              [v310 setSchedulingPriority_];
              [v310 setHandlerQueue_];
              [v310 setFileProtection_];
              v466 = v310;
              [v310 setRequiresNetwork_];

              v311 = v471;

              v312 = sub_224DAB228();
              v313 = sub_224DAF2A8();

              if (os_log_type_enabled(v312, v313))
              {
                v314 = swift_slowAlloc();
                *&v439 = swift_slowAlloc();
                aBlock = v439;
                *v314 = v430;
                v315 = v436;
                v316 = v437;
                (*v432)(v436, *(&v433->isa + v71) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, v437);
                v474 = sub_224DA98E8();
                sub_224A3F6A4();
                v317 = sub_224DAEF18();
                v319 = sub_224A3D19C(8, v317, v318);
                v321 = v320;
                v323 = v322;
                v325 = v324;

                v326 = v319;
                v71 = v462;
                v327 = MEMORY[0x22AA5D1C0](v326, v321, v323, v325);
                v329 = v328;

                (*v431)(v315, v316);
                v330 = sub_224A33F74(v327, v329, &aBlock);

                *(v314 + 4) = v330;
                v311 = v471;
                *(v314 + 12) = 2082;
                v331 = v467;
                *(v314 + 14) = sub_224A33F74(v467, v311, &aBlock);
                _os_log_impl(&dword_224A2F000, v312, v313, "[%{public}s]: Scheduled DAS rate limited refresh; identifier: %{public}s", v314, 0x16u);
                v332 = v439;
                swift_arrayDestroy();
                MEMORY[0x22AA5EED0](v332, -1, -1);
                MEMORY[0x22AA5EED0](v314, -1, -1);

                v146 = v456;
                v333 = v441;
              }

              else
              {

                v146 = v456;
                v333 = v441;
                v331 = v467;
              }

              v126 = v459;
              v280 = v445;
              if (!*&v333[v71])
              {
                *&v333[v71] = MEMORY[0x277D84F98];
              }

              aBlock = sub_224DAA038();
              v476 = v334;
              MEMORY[0x22AA5D210](14906, 0xE200000000000000);
              MEMORY[0x22AA5D210](v331, v311);

              v106 = aBlock;
              v335 = v476;
              swift_beginAccess();
              if (*&v333[v71])
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v474 = *&v333[v71];
                v337 = v474;
                *&v333[v71] = 0x8000000000000000;
                v338 = sub_224A3A40C(v106, v335);
                v340 = v337[2];
                v341 = (v339 & 1) == 0;
                v342 = __OFADD__(v340, v341);
                v343 = v340 + v341;
                v96 = v466;
                if (v342)
                {
                  __break(1u);
                  goto LABEL_111;
                }

                v344 = v339;
                if (v337[3] >= v343)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v349 = v338;
                    sub_224B256F0();
                    v338 = v349;
                    v146 = v456;
                  }
                }

                else
                {
                  sub_224B0FBEC(v343, isUniquelyReferenced_nonNull_native);
                  v338 = sub_224A3A40C(v106, v335);
                  if ((v344 & 1) != (v345 & 1))
                  {
                    goto LABEL_115;
                  }
                }

                v346 = v474;
                if (v344)
                {
                  v347 = v474[7];
                  v348 = *(v347 + 8 * v338);
                  *(v347 + 8 * v338) = v96;
                }

                else
                {
                  sub_224B24668(v338, v106, v335, v96, v474);
                }

                v71 = v462;
                *&v333[v462] = v346;
                swift_endAccess();

                v284 = v465;
                v283 = v472;
              }

              else
              {
                swift_endAccess();

                v96 = v466;
                v283 = v466;
                v284 = v465;
              }

              v281 = v463 + 16;
              v282 = v284 - 1;
            }

            while (v282);

            v96 = 1;
            v148 = v460;
            v270 = v435;
            v271 = v447;
            v272 = v408;
            if (v410)
            {
              continue;
            }

            break;
          }

          sub_224A3311C(v427, &qword_27D6F5590, &qword_224DBEC00);
          v406 = v470;
          v407 = v440;
          v440(v458, v470);
          v407(v126, v406);
LABEL_62:
          __swift_destroy_boxed_opaque_existential_1(v484);
          __swift_destroy_boxed_opaque_existential_1(v485);
LABEL_108:
          __swift_destroy_boxed_opaque_existential_1(&v481);
          return v71;
        }

LABEL_96:

        if ((v96 & 1) == 0)
        {
LABEL_97:
          v350 = v423;
          (*(v420 + 56))(v423, 1, 1, v146);
          v351 = sub_224A45CAC(v148 + v421, v350);
          sub_224BCDD44(v350, type metadata accessor for ExtensionTask.SchedulingConfiguration);
          if (v351)
          {
            v352 = *(v148 + v416);
            v353 = v426;
            v413(v426, 3, 5, v415);
            v354 = sub_224D41D20(v353, v352);
            sub_224BCDD44(v353, type metadata accessor for ExtensionTask.SchedulingOption);
            v355 = *MEMORY[0x277D06A60];
            v356 = v470;
            v453(v424, v126, v470);
            v357 = v417;
            if (v354)
            {
              sub_224DA9768();
            }

            else
            {
              v453(v417, v458, v356);
            }
          }

          else
          {
            v355 = *MEMORY[0x277D06A60];
            v356 = v470;
            v358 = v453;
            v453(v424, v126, v470);
            v357 = v417;
            v358(v417, v458, v356);
          }

          v359 = sub_224DAEDE8();

          v360 = v424;
          v361 = sub_224DA9778();
          v362 = sub_224DA9778();
          v363 = [objc_opt_self() activityWithName:v359 priority:v419 duration:v355 startingAfter:v361 startingBefore:v362];

          v364 = *(v429 + 8);
          (v364)(v357, v356);
          (v364)(v360, v356);
          v365 = MEMORY[0x277D06AB0];
          if ((v449 & 1) == 0)
          {
            v365 = MEMORY[0x277D06AB8];
          }

          [v363 setSchedulingPriority_];
          v366 = v455;
          [v363 setHandlerQueue_];
          v367 = v457;
          [v363 setFileProtection_];
          [v363 setRequiresNetwork_];
          v368 = swift_allocObject();
          swift_weakInit();
          v479 = sub_224BCDDA4;
          v480 = v368;
          aBlock = MEMORY[0x277D85DD0];
          v476 = 1107296256;
          v477 = sub_224C6F8A4;
          v478 = &block_descriptor_11;
          v369 = _Block_copy(&aBlock);

          [v363 setStartHandler_];
          _Block_release(v369);

          v370 = v363;
          v371 = sub_224DAB228();
          v372 = sub_224DAF2A8();

          if (os_log_type_enabled(v371, v372))
          {
            v373 = swift_slowAlloc();
            v469 = swift_slowAlloc();
            aBlock = v469;
            *v373 = 136446466;
            v374 = v418;
            v375 = *(v418 + 16);
            v376 = *(v71 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
            v471 = v364;
            v377 = v436;
            v472 = v370;
            v378 = v437;
            v375(v436, v376, v437);
            v468 = v371;
            v474 = sub_224DA98E8();
            sub_224A3F6A4();
            v379 = sub_224DAEF18();
            v381 = sub_224A3D19C(8, v379, v380);
            LODWORD(v467) = v372;
            v383 = v382;
            v385 = v384;
            v387 = v386;

            v388 = MEMORY[0x22AA5D1C0](v381, v383, v385, v387);
            v390 = v389;

            v391 = v378;
            v370 = v472;
            (*(v374 + 8))(v377, v391);
            v392 = sub_224A33F74(v388, v390, &aBlock);

            *(v373 + 4) = v392;
            *(v373 + 12) = 2082;
            v393 = [v370 name];
            v394 = sub_224DAEE18();
            v396 = v395;

            v397 = v394;
            v71 = v462;
            v398 = sub_224A33F74(v397, v396, &aBlock);

            *(v373 + 14) = v398;
            v399 = v468;
            _os_log_impl(&dword_224A2F000, v468, v467, "[%{public}s]: Scheduled DAS standard refresh; name: %{public}s", v373, 0x16u);
            v400 = v469;
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v400, -1, -1);
            MEMORY[0x22AA5EED0](v373, -1, -1);

            sub_224A3311C(v427, &qword_27D6F5590, &qword_224DBEC00);
            v401 = v470;
            v364 = v471;
            (v471)(v458, v470);
            v402 = v459;
            v403 = v401;
          }

          else
          {

            sub_224A3311C(v427, &qword_27D6F5590, &qword_224DBEC00);
            (v364)(v458, v356);
            v402 = v459;
            v403 = v356;
          }

          (v364)(v402, v403);
          __swift_destroy_boxed_opaque_existential_1(v484);
          __swift_destroy_boxed_opaque_existential_1(v485);
          v404 = *(v71 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
          *(v71 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity) = v370;

          goto LABEL_108;
        }
      }

      else
      {

        if ((v96 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      sub_224A3311C(v427, &qword_27D6F5590, &qword_224DBEC00);
      v274 = *(v429 + 8);
      v275 = v470;
      v274(v458, v470);
      v274(v126, v275);
      goto LABEL_62;
    }

    v106 = *(v465 + 16);
    if (!v106)
    {
LABEL_23:
      v134[1](v149, v133);
      v96 = 0;
      goto LABEL_54;
    }

    v464 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
    v446 = (v71 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler);
    v442 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity;
    v445 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity;
    v444 = (v429 + 8);
    v441 = (v418 + 16);
    v440 = (v418 + 8);

    v160 = 0;
    v96 = 0;
    v472 = -v106;
    v161 = v159 + 40;
    *&v162 = 136446466;
    v439 = v162;
    v163 = v159;
    v443 = v159 + 40;
LABEL_26:
    v71 = v161 + 16 * v160++;
    while ((v160 - 1) < *(v163 + 16))
    {
      if (!*v71)
      {
        v106 = 0;
LABEL_33:
        sub_224DA9898();
        sub_224DAD6F8();
        v166 = v470;
        v167 = v453;
        v453(v447, v459, v470);
        v167(v461, v458, v166);
        v168 = sub_224DAEDE8();

        v169 = sub_224DAEDE8();

        if (v106)
        {
          v170 = sub_224DAEDE8();
        }

        else
        {
          v170 = 0;
        }

        v171 = objc_allocWithZone(MEMORY[0x277D06A48]);
        v172 = sub_224DAEDE8();
        v173 = v447;
        v174 = sub_224DA9778();
        v175 = v461;
        v176 = sub_224DA9778();
        v466 = [v171 initWithIdentifier:v168 withBudgetIdentifier:v169 withRateLimitConfigurationName:0 withRemoteDeviceIdentifier:v170 withAppIdentifier:v172 refreshAfter:v174 refreshBefore:v176];

        v177 = *v444;
        v178 = v470;
        (*v444)(v175, v470);
        v177(v173, v178);
        v179 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v180 = *(v446 + 3);
        v181 = *(v446 + 4);
        __swift_project_boxed_opaque_existential_1(v446, v180);
        v182 = swift_allocObject();
        v71 = v462;
        swift_weakInit();
        v183 = swift_allocObject();
        *(v183 + 16) = v179;
        *(v183 + 24) = v182;
        v184 = *(v181 + 16);

        v185 = v181;
        v186 = v179;
        v187 = v184(v466, sub_224BCDDAC, v183, v180, v185);

        swift_beginAccess();
        swift_unknownObjectWeakAssign();
        v188 = MEMORY[0x277D06AB0];
        if ((v449 & 1) == 0)
        {
          v188 = MEMORY[0x277D06AB8];
        }

        v189 = *v188;
        v190 = v187;
        [v190 setSchedulingPriority_];
        [v190 setHandlerQueue_];
        [v190 setFileProtection_];
        [v190 setRequiresNetwork_];

        v191 = v190;
        v192 = sub_224DAB228();
        v193 = sub_224DAF2A8();

        v194 = os_log_type_enabled(v192, v193);
        v149 = v463;
        if (v194)
        {
          v195 = swift_slowAlloc();
          v434 = swift_slowAlloc();
          aBlock = v434;
          *v195 = v439;
          v196 = *v441;
          v197 = *(v442 + v71) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
          v438 = v186;
          v198 = v436;
          v435 = v187;
          v199 = v437;
          v196(v436, v197, v437);
          v433 = v192;
          v473 = sub_224DA98E8();
          sub_224A3F6A4();
          v200 = sub_224DAEF18();
          v202 = sub_224A3D19C(8, v200, v201);
          v431 = v191;
          v203 = v202;
          LODWORD(v432) = v193;
          v205 = v204;
          v207 = v206;
          v209 = v208;

          v210 = v207;
          v71 = v462;
          v211 = MEMORY[0x22AA5D1C0](v203, v205, v210, v209);
          v213 = v212;

          v214 = v199;
          v187 = v435;
          (*v440)(v198, v214);
          v215 = sub_224A33F74(v211, v213, &aBlock);

          *(v195 + 4) = v215;
          *(v195 + 12) = 2082;
          v216 = v431;
          v217 = [v431 name];
          v218 = sub_224DAEE18();
          v220 = v219;

          v221 = sub_224A33F74(v218, v220, &aBlock);

          *(v195 + 14) = v221;
          v222 = v433;
          _os_log_impl(&dword_224A2F000, v433, v432, "[%{public}s]: Scheduled DAS budgeted refresh; name: %{public}s", v195, 0x16u);
          v223 = v434;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v223, -1, -1);
          MEMORY[0x22AA5EED0](v195, -1, -1);
        }

        else
        {
        }

        v134 = v471;
        v163 = v465;
        v106 = v472 + v160;
        v224 = *&v445[v71];
        *&v445[v71] = v187;

        v96 = 1;
        v161 = v443;
        if (!v106)
        {
          v134[1](v149, v467);

          goto LABEL_43;
        }

        goto LABEL_26;
      }

      v164 = *(v71 - 8);

      sub_224C6FFE0(v164);
      v106 = v165;

      if (v106)
      {
        goto LABEL_33;
      }

      ++v160;
      v71 += 16;
      if (v472 + v160 == 1)
      {
        v134[1](v149, v467);

        v71 = v462;
LABEL_43:
        v126 = v459;
        goto LABEL_54;
      }
    }

LABEL_112:
    __break(1u);
LABEL_113:
    swift_once();
  }

  __break(1u);
LABEL_115:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224BCDD44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224BCDECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C10, &qword_224DBA330);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BDBF38();
  sub_224DAFF08();
  v15 = 0;
  sub_224DAFCC8();
  if (!v5)
  {
    v14 = 1;
    sub_224DAFCC8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224BCE060()
{
  if (*v0)
  {
    return 0x4964616F6C796170;
  }

  else
  {
    return 0x7974697669746361;
  }
}

uint64_t sub_224BCE0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974697669746361 && a2 == 0xEA00000000004449;
  if (v6 || (sub_224DAFD88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4964616F6C796170 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_224DAFD88();

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

uint64_t sub_224BCE190(uint64_t a1)
{
  v2 = sub_224BDBF38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224BCE1CC(uint64_t a1)
{
  v2 = sub_224BDBF38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224BCE208@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_224BDBD54(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_224BCE258()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {

    v1 = sub_224DAC068();

    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t sub_224BCE2D4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {

    v1 = sub_224DAC0E8();

    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_224BCE350()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C48, &unk_224DBA3B0);
    sub_224A33088(&qword_281350F90, &qword_27D6F4C48, &unk_224DBA3B0, MEMORY[0x277CBCE20]);
    v1 = sub_224DAB3A8();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_224BCE414()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F57A0, &qword_224DBA428);
    sub_224A33088(&qword_281350F78, &qword_27D6F57A0, &qword_224DBA428, MEMORY[0x277CBCE20]);
    v1 = sub_224DAB3A8();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_224BCE4F4@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v89 = a1;
  v87 = a3;
  v83 = sub_224DAE7A8();
  v86 = *(v83 - 8);
  v5 = MEMORY[0x28223BE20](v83, v4);
  v80 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v79 = &v70 - v8;
  v9 = sub_224DAE5C8();
  MEMORY[0x28223BE20](v9 - 8, v10);
  KeyPath = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  *&v90 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v12);
  *&v74 = &v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v76 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v71 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v88 = &v70 - v19;
  v20 = sub_224DAE4F8();
  v84 = *(v20 - 8);
  v85 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_224DAB728();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v70 - v31;
  v33 = a2[27];
  v72 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 24, v33);
  v34 = sub_224DABCA8();
  sub_224DADA58();

  v35 = v88;
  __swift_project_boxed_opaque_existential_1(v92, v93);
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(v92);
  v81 = v25;
  v82 = v24;
  v36 = *(v25 + 16);
  v78 = v32;
  v36(v29, v32, v24);
  v37 = v23;
  sub_224DAE4D8();
  sub_224DAE7B8();
  v38 = sub_224DAE7C8();
  v39 = *(*(v38 - 8) + 56);
  v39(v35, 0, 1, v38);
  v40 = v74;
  sub_224DAC8D8();
  v41 = v75;
  sub_224DAA1F8();
  v43 = v42;
  (*(v90 + 8))(v40, v41);
  if (v43)
  {
    sub_224A3796C(v72 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_archiveVersionProvider, v92, &unk_27D6F57B0, qword_224DB7B48);
    if (v93)
    {
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v44 = v71;
      sub_224DAD4E8();

      sub_224A3311C(v35, &qword_27D6F48C0, &qword_224DB8220);
      __swift_destroy_boxed_opaque_existential_1(v92);
    }

    else
    {
      sub_224A3311C(v35, &qword_27D6F48C0, &qword_224DB8220);

      sub_224A3311C(v92, &unk_27D6F57B0, qword_224DB7B48);
      v44 = v71;
      v39(v71, 1, 1, v38);
    }

    sub_224A44E4C(v44, v35, &qword_27D6F48C0, &qword_224DB8220);
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC0, &qword_224DBFAC0);
  v45 = swift_allocObject();
  v90 = xmmword_224DB3100;
  *(v45 + 16) = xmmword_224DB3100;
  *(v45 + 32) = v43 != 0;
  sub_224DAE4B8();
  swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v90;
  *(v46 + 32) = v43 != 0;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC8, &qword_224DBA5D0);
  v47 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v90;
  sub_224A3796C(v35, v48 + v47, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE4B8();
  swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = v90;
  *(v49 + 32) = v43 != 0;
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAB518();
  v73 = v37;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AF0, &qword_224DB3D80);
  sub_224DAE588();
  v50 = swift_allocObject();
  v74 = xmmword_224DB30F0;
  *(v50 + 16) = xmmword_224DB30F0;
  sub_224DAE5B8();
  sub_224DAE568();
  sub_224DAE5B8();
  sub_224DAE568();
  sub_224DAE4B8();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
  v76 = 2 * *(*(sub_224DAB558() - 8) + 72);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_224DB8BC0;
  v92[0] = MEMORY[0x277D84F90];
  sub_224A43A4C(&qword_281350ED8, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
  sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500, MEMORY[0x277D83970]);
  sub_224DAF788();
  v51 = swift_allocObject();
  *(v51 + 16) = v90;
  sub_224DAB548();
  v92[0] = v51;
  v52 = v73;
  sub_224DAF788();
  v53 = swift_allocObject();
  *(v53 + 16) = v90;
  sub_224DAB538();
  v92[0] = v53;
  sub_224DAF788();
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAE4B8();
  v54 = v79;
  sub_224DAC8E8();
  v55 = v86;
  v56 = v80;
  v57 = v83;
  (*(v86 + 104))(v80, *MEMORY[0x277CE3CB0], v83);
  sub_224A43A4C(&qword_281350C48, MEMORY[0x277CE3CC0], MEMORY[0x277CE3CC8]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v58 = *(v55 + 8);
  v58(v56, v57);
  v58(v54, v57);
  if (v92[0] == v91)
  {
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CD8, &qword_224DBA670);
    v59 = sub_224DAEBA8();
    v60 = *(v59 - 8);
    v61 = *(v60 + 72);
    v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = v74;
    v64 = v63 + v62;
    v65 = *(v60 + 104);
    v65(v64, *MEMORY[0x277CE3E98], v59);
    v65(v64 + v61, *MEMORY[0x277CE3EA0], v59);
    sub_224DAE4B8();
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CD0, &qword_224DBA638);
  *(swift_allocObject() + 16) = v90;
  sub_224DAC8E8();
  sub_224DAE4B8();
  sub_224A3311C(v88, &qword_27D6F48C0, &qword_224DB8220);
  (*(v81 + 8))(v78, v82);
  v67 = v84;
  v66 = v85;
  v68 = v87;
  (*(v84 + 32))(v87, v52, v85);
  return (*(v67 + 56))(v68, 0, 1, v66);
}

uint64_t sub_224BCF21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_224BCF2EC@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v64 = a1;
  v71 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v61 = &v55 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v68 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v60 = &v55 - v13;
  v14 = sub_224DAE5C8();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = sub_224DAE4F8();
  v69 = *(v16 - 8);
  v70 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v72 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB728();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v55 - v26;
  v28 = a2[27];
  v55 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 24, v28);
  v29 = sub_224DABCA8();
  sub_224DADA58();

  __swift_project_boxed_opaque_existential_1(v74, v75);
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(v74);
  v65 = v27;
  v66 = v20;
  v30 = *(v20 + 16);
  v67 = v19;
  v30(v24, v27, v19);
  sub_224DAE4D8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA8, &unk_224DBFB90);
  v31 = sub_224DAB528();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  v73 = xmmword_224DB3100;
  *(v34 + 16) = xmmword_224DB3100;
  (*(v32 + 104))(v34 + v33, *MEMORY[0x277CDF3C0], v31);
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AF0, &qword_224DB3D80);
  sub_224DAE588();
  *(swift_allocObject() + 16) = xmmword_224DB30F0;
  sub_224DAE5B8();
  sub_224DAE568();
  sub_224DAE5B8();
  sub_224DAE568();
  sub_224DAE4B8();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
  v58 = 2 * *(*(sub_224DAB558() - 8) + 72);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_224DB8BC0;
  v74[0] = MEMORY[0x277D84F90];
  sub_224A43A4C(&qword_281350ED8, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
  sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500, MEMORY[0x277D83970]);
  sub_224DAF788();
  v35 = swift_allocObject();
  *(v35 + 16) = v73;
  sub_224DAB548();
  v74[0] = v35;
  sub_224DAF788();
  v36 = v72;
  v37 = swift_allocObject();
  *(v37 + 16) = v73;
  sub_224DAB538();
  v74[0] = v37;
  v38 = v60;
  sub_224DAF788();
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAE4B8();
  sub_224DAE7B8();
  v39 = sub_224DAE7C8();
  v40 = *(*(v39 - 8) + 56);
  v40(v38, 0, 1, v39);
  v41 = v61;
  sub_224DAC8D8();
  v42 = v62;
  sub_224DAA1F8();
  v44 = v43;
  (*(v63 + 8))(v41, v42);
  if (v44)
  {
    sub_224A3796C(v55 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_archiveVersionProvider, v74, &unk_27D6F57B0, qword_224DB7B48);
    if (v75)
    {
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v45 = v56;
      sub_224DAD4E8();

      sub_224A3311C(v38, &qword_27D6F48C0, &qword_224DB8220);
      __swift_destroy_boxed_opaque_existential_1(v74);
    }

    else
    {
      sub_224A3311C(v38, &qword_27D6F48C0, &qword_224DB8220);

      sub_224A3311C(v74, &unk_27D6F57B0, qword_224DB7B48);
      v45 = v56;
      v40(v56, 1, 1, v39);
    }

    sub_224A44E4C(v45, v38, &qword_27D6F48C0, &qword_224DB8220);
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC0, &qword_224DBFAC0);
  v46 = swift_allocObject();
  *(v46 + 16) = v73;
  *(v46 + 32) = v44 != 0;
  sub_224DAE4B8();
  swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = v73;
  *(v47 + 32) = v44 != 0;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC8, &qword_224DBA5D0);
  v48 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v73;
  sub_224A3796C(v38, v49 + v48, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE4B8();
  swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v73;
  *(v50 + 32) = v44 != 0;
  sub_224DAE4B8();
  sub_224A3311C(v38, &qword_27D6F48C0, &qword_224DB8220);
  (*(v66 + 8))(v65, v67);
  v52 = v69;
  v51 = v70;
  v53 = v71;
  (*(v69 + 32))(v71, v36, v70);
  return (*(v52 + 56))(v53, 0, 1, v51);
}

void sub_224BCFDA4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = *(v2 + 16);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v11 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v5 = v2 + 32;
      do
      {
        sub_224A3317C(v5, v10);
        __swift_project_boxed_opaque_existential_1(v10, v10[3]);
        sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v10);
        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v5 += 40;
        --v3;
      }

      while (v3);
      v4 = v11;
    }

    sub_224BD9E7C(v4);
    v9 = MEMORY[0x28223BE20](v6, v7);
    LOBYTE(v10[0]) = 1;
    MEMORY[0x28223BE20](v9, v8);

    sub_224DAC128();

    if (v10[0])
    {
      __break(1u);
    }

    else
    {
    }
  }
}

double sub_224BCFF80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224BCFFE0(a1);
  }

  return result;
}

uint64_t sub_224BCFFE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v35 - v6;
  v8 = sub_224DAF3B8();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v45 = &v35 - v14;
  v15 = sub_224DABCC8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v40 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v21 = *(v16 + 16);
  v46 = &v35 - v22;
  v39 = v21;
  v21();

  v43 = a1;
  v23 = sub_224DAC168();

  if (v23 && (v24 = sub_224D5D590(v23), , v24))
  {
    sub_224DABF78();

    v38 = v12;
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v37 = sub_224DAD178();
    v48 = v37;
    sub_224DAF378();
    v47 = *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_receiveQueue);
    v25 = v47;
    v26 = sub_224DAF358();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    v36 = v25;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
    sub_224B67CF4();
    sub_224DAB468();
    sub_224A3311C(v7, &qword_27D6F5090, &qword_224DB5C30);

    (*(v41 + 8))(v11, v42);

    __swift_destroy_boxed_opaque_existential_1(v49);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v40;
    (v39)(v40, v43, v15);
    v29 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    (*(v16 + 32))(v30 + v29, v28, v15);
    sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450, MEMORY[0x277CBCCF8]);
    v31 = v38;
    v32 = v45;
    v33 = sub_224DAB488();

    (*(v44 + 8))(v32, v31);
  }

  else
  {
    v33 = 0;
  }

  swift_beginAccess();
  sub_224B086A0(v33, v46);
  return swift_endAccess();
}

double sub_224BD0538(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_224B3E18C(a1);
    swift_endAccess();
  }

  return result;
}

void sub_224BD05CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224BD9E7C(a1);
    v7 = MEMORY[0x28223BE20](v4, v5);
    MEMORY[0x28223BE20](v7, v6);

    sub_224DAC128();

    __break(1u);
  }
}

void sub_224BD070C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_224DABCC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DABCA8();
  v10 = [v9 isRemote];

  if ((v10 & 1) == 0)
  {
    sub_224DABC78();
    v11 = sub_224DAC888();

    if (v11)
    {
      v19 = v11;
      v12 = swift_allocObject();
      swift_weakInit();
      v17 = *(v5 + 16);
      v18 = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v17(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
      v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      (*(v5 + 32))(v14 + v13, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C98, &qword_224DBA448);
      sub_224A33088(&qword_281351168, &qword_27D6F4C98, &qword_224DBA448, MEMORY[0x277CBCD90]);
      v15 = sub_224DAB488();

      v17(v8, a1, v4);
    }

    else
    {
      v15 = 0;
      (*(v5 + 16))(v8, a1, v4);
    }

    swift_beginAccess();
    sub_224B086A0(v15, v8);
    swift_endAccess();
  }
}

void sub_224BD0998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v54 = a1;
  v55 = a2;
  v3 = sub_224DACB98();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v56 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v48 - v8;
  v10 = sub_224DA9A38();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DA9878();
  v52 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v49 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D0, &qword_224DB8238);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v48 - v23;
  v25 = sub_224DA9A88();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v54, v24, &qword_27D6F48D0, &qword_224DB8238);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v30 = &qword_27D6F48D0;
    v31 = &qword_224DB8238;
    v32 = v24;
LABEL_5:
    sub_224A3311C(v32, v30, v31);
    v35 = v56;
    v34 = v57;
LABEL_6:
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_224DBA130;
    *(v36 + 32) = 0xEE006465676E6168;
    *v35 = v36;
    v37 = MEMORY[0x277CF9B90];
    goto LABEL_7;
  }

  (*(v26 + 32))(v29, v24, v25);
  sub_224DA9A68();
  sub_224DA9A28();
  (*(v50 + 8))(v13, v51);
  v33 = v52;
  if ((*(v52 + 48))(v9, 1, v14) == 1)
  {
    (*(v26 + 8))(v29, v25);
    v30 = &qword_27D6F32B0;
    v31 = &qword_224DB3EA0;
    v32 = v9;
    goto LABEL_5;
  }

  (*(v33 + 32))(v20, v9, v14);
  v45 = v49;
  sub_224DA9808();
  v46 = sub_224DA9798();
  v47 = *(v33 + 8);
  v47(v45, v14);
  v47(v20, v14);
  (*(v26 + 8))(v29, v25);
  v35 = v56;
  v34 = v57;
  if ((v46 & 1) == 0)
  {
    goto LABEL_6;
  }

  v37 = MEMORY[0x277CF9BE8];
LABEL_7:
  v38 = v58;
  (*(v34 + 104))(v35, *v37, v58);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    (*(v34 + 8))(v35, v38);
    return;
  }

  v41 = MEMORY[0x28223BE20](Strong, v40);
  v42 = v53;
  *(&v48 - 4) = v41;
  *(&v48 - 3) = v42;
  *(&v48 - 2) = v35;
  v59 = 1;
  MEMORY[0x28223BE20](v41, v43);
  *(&v48 - 4) = &v59;
  *(&v48 - 3) = sub_224B7A900;
  *(&v48 - 2) = v44;

  sub_224DAC128();

  if ((v59 & 1) == 0)
  {

    goto LABEL_10;
  }

  __break(1u);
}

double sub_224BD0F88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224BD0FF0();
    sub_224BD1960();
  }

  return result;
}

void sub_224BD0FF0()
{
  v92 = sub_224DAD9C8();
  v84 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v1);
  v79 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_224DA9908();
  v83 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v3);
  v90 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C60, &unk_224DBA3D0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v82 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v81 = &v69 - v10;
  v89 = sub_224DAE7A8();
  v87 = *(v89 - 1);
  MEMORY[0x28223BE20](v89, v11);
  v80 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_224DAEB68();
  v78 = *(v86 - 1);
  MEMORY[0x28223BE20](v86, v13);
  v76 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_224DAC918();
  v15 = *(v77 - 8);
  v17 = MEMORY[0x28223BE20](v77, v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v69 - v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v72 = *(v85 - 1);
  MEMORY[0x28223BE20](v85, v23);
  v25 = &v69 - v24;
  v71 = sub_224DABCC8();
  v26 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v27);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = (v0 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore);
  sub_224BBF304(v0 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore, v93);
  v74 = v94;
  v75 = v95;
  v73 = __swift_project_boxed_opaque_existential_1(v93, v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  MEMORY[0x22AA5ABC0]();
  v70 = sub_224DABC78();
  v31 = v30;
  (*(v26 + 8))(v29, v71);
  sub_224DAA1B8();
  v32 = v22;
  sub_224DAC838();
  v33 = v76;
  sub_224DAC8F8();
  v34 = *(v15 + 8);
  v35 = v32;
  v36 = v77;
  v34(v35, v77);
  sub_224DAC838();
  v37 = v80;
  sub_224DAC8E8();
  v34(v19, v36);
  v38 = v82;
  v39 = v37;
  v40 = sub_224D2F580(v70, v31, v25, v33, v37, v74, v75);

  (*(v87 + 8))(v39, v89);
  (*(v78 + 8))(v33, v86);
  v41 = v81;
  (*(v72 + 8))(v25, v85);
  __swift_destroy_boxed_opaque_existential_1(v93);
  v42 = 0;
  v43 = v40[8];
  v75 = v40 + 8;
  v80 = v40;
  v44 = 1 << *(v40 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v47 = (v44 + 63) >> 6;
  v78 = v83 + 16;
  v77 = v84 + 16;
  v89 = (v83 + 32);
  v76 = (v84 + 32);
  v86 = (v83 + 8);
  v87 = v47;
  v85 = (v84 + 8);
  if ((v45 & v43) != 0)
  {
    while (1)
    {
      v48 = v42;
LABEL_12:
      v51 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v52 = v51 | (v48 << 6);
      v53 = v80;
      v54 = v83;
      v55 = v90;
      v56 = v91;
      (*(v83 + 16))(v90, *(v80 + 6) + *(v83 + 72) * v52, v91);
      v57 = v84;
      v58 = *(v53 + 7) + *(v84 + 72) * v52;
      v59 = v79;
      v60 = v92;
      (*(v84 + 16))(v79, v58, v92);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      v62 = *(v61 + 48);
      v63 = *(v54 + 32);
      v38 = v82;
      v63(v82, v55, v56);
      (*(v57 + 32))(v38 + v62, v59, v60);
      (*(*(v61 - 8) + 56))(v38, 0, 1, v61);
      v50 = v48;
      v41 = v81;
LABEL_13:
      sub_224A44E4C(v38, v41, &qword_27D6F4C60, &unk_224DBA3D0);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      if ((*(*(v64 - 8) + 48))(v41, 1, v64) == 1)
      {
        break;
      }

      v65 = *(v64 + 48);
      v66 = v90;
      v67 = v91;
      (*v89)(v90, v41, v91);
      __swift_project_boxed_opaque_existential_1(v88, v88[3]);
      sub_224C96790(v66);
      (*v86)(v66, v67);
      (*v85)(v41 + v65, v92);
      v42 = v50;
      v47 = v87;
      if (!v46)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v47 <= v42 + 1)
    {
      v49 = v42 + 1;
    }

    else
    {
      v49 = v47;
    }

    v50 = v49 - 1;
    while (1)
    {
      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v48 >= v47)
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
        (*(*(v68 - 8) + 56))(v38, 1, 1, v68);
        v46 = 0;
        goto LABEL_13;
      }

      v46 = v75[v48];
      ++v42;
      if (v46)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224BD1960()
{
  v1 = v0;
  v2 = sub_224DAB258();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAC918();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_224DABCC8();
  MEMORY[0x28223BE20](v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v22 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v23 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v20 - v15;
  MEMORY[0x22AA5ABC0](v14);
  v21 = v9;
  sub_224DAC838();
  v17 = MEMORY[0x277CF9880];
  sub_224A43A4C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
  sub_224A43A4C(&unk_281350EB0, v17, MEMORY[0x277CF9888]);
  v18 = MEMORY[0x277CF9A98];
  sub_224A43A4C(&qword_281350D60, MEMORY[0x277CF9A98], MEMORY[0x277CF9AB0]);
  sub_224A43A4C(&qword_281350D70, v18, MEMORY[0x277CF9AA0]);
  sub_224DAC848();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_224DAD248();
  return (*(v22 + 8))(v16, v21);
}

void sub_224BD1F1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v3 = sub_224B3E18C(a1);
    swift_endAccess();

    if (v3)
    {

      sub_224DAB328();
    }
  }
}

uint64_t sub_224BD1FCC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v40 = &v35 - v4;
  v5 = sub_224DAEC58();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C88, &qword_224DBA438);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v35 - v10;
  v12 = sub_224DAC918();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DABCC8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v37 = v5;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C90, &qword_224DBA440);
    MEMORY[0x22AA5BB00](v24);

    v25 = sub_224DAC168();

    if (!v25)
    {

      (*(v18 + 8))(v21, v17);
      (*(v13 + 56))(v11, 1, 1, v12);
      return sub_224A3311C(v11, &qword_27D6F4C88, &qword_224DBA438);
    }

    sub_224D5D5F8(v25, v11);

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      (*(v18 + 8))(v21, v17);

      return sub_224A3311C(v11, &qword_27D6F4C88, &qword_224DBA438);
    }

    (*(v13 + 32))(v16, v11, v12);
    __swift_project_boxed_opaque_existential_1((v23 + 16), *(v23 + 40));
    sub_224DACEB8();
    v26 = v40;
    v27 = v39;
    v28 = v37;
    (*(v39 + 56))(v40, 0, 1, v37);
    v29 = *(v27 + 32);
    v30 = v38;
    v29(v38, v26, v28);
    v36 = sub_224DABC78();
    v32 = v31;
    v40 = v31;
    v33 = sub_224DAEC48();
    v41 = v36;
    v42 = v32;
    v43 = v33;
    v44 = v34;

    sub_224DAB348();

    (*(v39 + 8))(v30, v37);
    (*(v13 + 8))(v16, v12);
    (*(v18 + 8))(v21, v17);
  }

  return result;
}

uint64_t sub_224BD2518(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAB258();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C80, &qword_224DBA430);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v31 - v10;
  v12 = sub_224DA9C68();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_224A3796C(a1, v11, &qword_27D6F4C80, &qword_224DBA430);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      return sub_224A3311C(v11, &qword_27D6F4C80, &qword_224DBA430);
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      v19 = sub_224DA9C58();
      *(v18 + 144) = v19;
      v35 = v19;

      sub_224DAB348();

      (*(v4 + 16))(v7, v18 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v3);

      v20 = sub_224DAB228();
      v21 = sub_224DAF2A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v34 = v3;
        v23 = v22;
        v24 = swift_slowAlloc();
        v33 = v4;
        v25 = v24;
        v35 = v24;
        *v23 = 136315138;
        v26 = sub_224DA9C78();
        v28 = sub_224A33F74(v26, v27, &v35);
        v32 = v20;
        v29 = v28;

        *(v23 + 4) = v29;
        v30 = v32;
        _os_log_impl(&dword_224A2F000, v32, v21, "Got subscription preference update to %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x22AA5EED0](v25, -1, -1);
        MEMORY[0x22AA5EED0](v23, -1, -1);

        (*(v33 + 8))(v7, v34);
      }

      else
      {

        (*(v4 + 8))(v7, v3);
      }

      return (*(v13 + 8))(v16, v12);
    }
  }

  return result;
}

char *sub_224BD28E8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[34];
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_224DAF838();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      sub_224DAB328();

      ++v4;
    }

    while (v5 != v3);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);

  __swift_destroy_boxed_opaque_existential_1(v0 + 37);

  v6 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger;
  v7 = sub_224DAB258();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_signposter;
  v9 = sub_224DAB218();
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_dataProtectionMonitor));

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore));

  sub_224A3311C(v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_archiveVersionProvider, &unk_27D6F57B0, qword_224DB7B48);
  return v1;
}

uint64_t sub_224BD2BA0()
{
  sub_224BD28E8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileActivityService(uint64_t a1)
{
  result = qword_281358508;
  if (!qword_281358508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BD2C4C(uint64_t a1)
{
  result = sub_224DAB258();
  if (v2 <= 0x3F)
  {
    result = sub_224DAB218();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_224BD2DC8()
{
  v1 = v0;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v2);
  v91 = &v84 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v90 = &v84 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C50, &unk_224DBA3C0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v7);
  v84 = &v84 - v8;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C58, &qword_224DC1AF0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v9);
  v87 = &v84 - v10;
  v111 = sub_224DAD9C8();
  v11 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v12);
  v110 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_224DA9908();
  v14 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v15);
  v102 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C60, &unk_224DBA3D0);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v84 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v84 - v27;
  v29 = sub_224DAF128();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v1;

  sub_224D8E744(0, 0, v28, &unk_224DBA3E8, v30);

  v108 = v1;
  v31 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore), *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore + 24));
  v32 = *v31;
  v33 = *(*v31 + 24);
  os_unfair_lock_lock(*(v33 + 16));
  swift_beginAccess();
  v34 = *(v32 + 32);
  v35 = v21;
  v36 = *(v33 + 16);

  os_unfair_lock_unlock(v36);
  v37 = 0;
  v38 = *(v34 + 64);
  v94 = v34 + 64;
  v105 = v34;
  v39 = 1 << *(v34 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v42 = (v39 + 63) >> 6;
  v98 = v14 + 16;
  v97 = v11 + 16;
  v96 = v14 + 32;
  v43 = (v11 + 32);
  v103 = v14;
  v104 = v11;
  v106 = (v14 + 8);
  v107 = (v11 + 8);
  v100 = v24;
  v101 = v35;
  v99 = v42;
  v95 = (v11 + 32);
  if ((v40 & v38) != 0)
  {
    while (1)
    {
      v44 = v37;
LABEL_12:
      v47 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v48 = v47 | (v44 << 6);
      v49 = v105;
      v51 = v102;
      v50 = v103;
      v52 = v109;
      (*(v103 + 16))(v102, *(v105 + 48) + *(v103 + 72) * v48, v109);
      v53 = *(v49 + 56);
      v54 = v104;
      v55 = v110;
      v56 = v111;
      v104[2](v110, v53 + v104[9] * v48, v111);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      v58 = *(v57 + 48);
      v59 = *(v50 + 32);
      v35 = v101;
      v59(v101, v51, v52);
      v60 = v55;
      v43 = v95;
      (v54)[4]((v35 + v58), v60, v56);
      (*(*(v57 - 8) + 56))(v35, 0, 1, v57);
      v46 = v44;
      v42 = v99;
      v24 = v100;
LABEL_13:
      sub_224A44E4C(v35, v24, &qword_27D6F4C60, &unk_224DBA3D0);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      if ((*(*(v61 - 8) + 48))(v24, 1, v61) == 1)
      {
        break;
      }

      v62 = v110;
      v63 = v111;
      (*v43)(v110, &v24[*(v61 + 48)], v111);
      sub_224BD4290(v62);
      (*v107)(v62, v63);
      (*v106)(v24, v109);
      v37 = v46;
      if (!v41)
      {
        goto LABEL_5;
      }
    }

    v65 = v108;
    __swift_project_boxed_opaque_existential_1((v108 + 296), *(v108 + 320));
    v112 = sub_224DAC688();
    __swift_project_boxed_opaque_existential_1((v65 + 296), *(v65 + 320));
    v113 = sub_224DAC6A8();
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
    v111 = MEMORY[0x277CBCD90];
    v110 = sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, MEMORY[0x277CBCD90]);
    v66 = v84;
    sub_224DAB428();

    v112 = *(v65 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_receiveQueue);
    v67 = v112;
    v68 = sub_224DAF358();
    v69 = *(v68 - 8);
    v106 = *(v69 + 56);
    v107 = (v69 + 56);
    v70 = v90;
    (v106)(v90, 1, 1, v68);
    v105 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_281351310, &qword_27D6F4C50, &unk_224DBA3C0, MEMORY[0x277CBCD48]);
    sub_224B67CF4();
    v104 = v67;
    v71 = v87;
    v72 = v86;
    sub_224DAB448();
    sub_224A3311C(v70, &qword_27D6F5090, &qword_224DB5C30);
    (*(v85 + 8))(v66, v72);
    swift_allocObject();
    swift_weakInit();
    v73 = MEMORY[0x277CBCD60];
    sub_224A33088(&qword_2813511C8, &qword_27D6F4C58, &qword_224DC1AF0, MEMORY[0x277CBCD60]);
    v74 = v89;
    sub_224DAB488();

    (*(v88 + 8))(v71, v74);
    swift_beginAccess();
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
    sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400, MEMORY[0x277D83990]);
    sub_224DAB318();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1((v65 + 296), *(v65 + 320));
    v112 = sub_224DAC698();
    v75 = v104;
    v113 = v104;
    (v106)(v70, 1, 1, v68);
    v76 = v91;
    sub_224DAB448();
    sub_224A3311C(v70, &qword_27D6F5090, &qword_224DB5C30);

    swift_allocObject();
    swift_weakInit();
    sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020, v73);
    v77 = v93;
    sub_224DAB488();

    (*(v92 + 8))(v76, v77);
    swift_beginAccess();
    sub_224DAB318();
    swift_endAccess();

    v78 = *(v65 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_dataProtectionMonitor + 24);
    v79 = __swift_project_boxed_opaque_existential_1((v65 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_dataProtectionMonitor), v78);
    v80 = *(v78 - 8);
    MEMORY[0x28223BE20](v79, v79);
    v82 = &v84 - v81;
    (*(v80 + 16))(&v84 - v81);
    v83 = sub_224DAD6D8();
    (*(v80 + 8))(v82, v78);
    v112 = v83;
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5490, &unk_224DBA408);
    sub_224A33088(&qword_281351078, &unk_27D6F5490, &unk_224DBA408, v111);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB318();
    swift_endAccess();
  }

  else
  {
LABEL_5:
    if (v42 <= v37 + 1)
    {
      v45 = v37 + 1;
    }

    else
    {
      v45 = v42;
    }

    v46 = v45 - 1;
    while (1)
    {
      v44 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v44 >= v42)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
        (*(*(v64 - 8) + 56))(v35, 1, 1, v64);
        v41 = 0;
        goto LABEL_13;
      }

      v41 = *(v94 + 8 * v44);
      ++v37;
      if (v41)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224BD3C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224DAD9C8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B60, &qword_224DBB460);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B68, &unk_224DB9C40);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224BD3E0C, 0, 0);
}

uint64_t sub_224BD3E0C()
{
  v2 = v0[8];
  v1 = v0[9];
  v13 = v0[7];
  v3 = (v0[2] + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore);
  v4 = v3[3];
  v5 = __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v8 = off_283831820;
  type metadata accessor for RemoteActivitySubscriptionCache();
  v8();
  (*(v6 + 8))(v7, v4);
  sub_224DAF158();
  (*(v2 + 8))(v1, v13);

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_224BD3FEC;
  v10 = v0[10];
  v11 = v0[6];

  return MEMORY[0x2822003E8](v11, 0, 0, v10);
}

uint64_t sub_224BD3FEC()
{

  return MEMORY[0x2822009F8](sub_224BD40E8, 0, 0);
}

uint64_t sub_224BD40E8()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[5];
    (*(v3 + 32))(v6, v1, v2);
    sub_224BD4290(v6);
    (*(v3 + 8))(v6, v2);
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v7[1] = sub_224BD3FEC;
    v8 = v0[10];
    v9 = v0[6];

    return MEMORY[0x2822003E8](v9, 0, 0, v8);
  }
}

uint64_t sub_224BD4290(uint64_t a1)
{
  v2 = sub_224DAD9C8();
  v3 = *(v2 - 8);
  v230 = v2;
  v231 = v3;
  v5 = MEMORY[0x28223BE20](v2, v4);
  v224 = v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v225 = v186 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v193 = v186 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v195 = v186 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = v186 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v211 = v186 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v210 = v186 - v24;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205, v25);
  v201 = v186 - v26;
  v203 = sub_224DAC918();
  v202 = *(v203 - 8);
  v28 = MEMORY[0x28223BE20](v203, v27);
  v199 = v186 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v207 = v186 - v31;
  v200 = sub_224DABCC8();
  v208 = *(v200 - 8);
  v33 = MEMORY[0x28223BE20](v200, v32);
  v206 = v186 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v216 = v186 - v36;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v222 = *(v219 - 8);
  v38 = MEMORY[0x28223BE20](v219, v37);
  v209 = v186 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v215 = v186 - v41;
  v218 = sub_224DAE7A8();
  v217 = *(v218 - 8);
  v43 = MEMORY[0x28223BE20](v218, v42);
  v198 = v186 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v221 = v186 - v46;
  v214 = sub_224DAEB68();
  v213 = *(v214 - 8);
  v48 = MEMORY[0x28223BE20](v214, v47);
  v197 = v186 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v50);
  v220 = v186 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D8, &unk_224DB8240);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v223 = v186 - v54;
  v55 = sub_224DA9908();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v57);
  v59 = v186 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  MEMORY[0x28223BE20](v60 - 8, v61);
  v63 = v186 - v62;
  v232 = sub_224DAB258();
  v64 = *(v232 - 8);
  v66 = MEMORY[0x28223BE20](v232, v65);
  v227 = (v186 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = MEMORY[0x28223BE20](v66, v68);
  v226 = v186 - v70;
  v72 = MEMORY[0x28223BE20](v69, v71);
  v194 = v186 - v73;
  v75 = MEMORY[0x28223BE20](v72, v74);
  v196 = v186 - v76;
  v78 = MEMORY[0x28223BE20](v75, v77);
  v212 = v186 - v79;
  MEMORY[0x28223BE20](v78, v80);
  v82 = v186 - v81;
  v83 = sub_224DAD918();
  MEMORY[0x28223BE20](v83 - 8, v84);
  v86 = v186 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = a1;
  sub_224DAD968();
  v87 = v56;
  if ((*(v56 + 48))(v86, 1, v55) != 1)
  {
    return sub_224BDC090(v86, MEMORY[0x277CF9D58]);
  }

  v186[1] = v19;
  v88 = *(v64 + 16);
  v187 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger;
  v89 = v229;
  v189 = v64 + 16;
  v188 = v88;
  v88(v82, v229 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v232);
  v90 = sub_224DAB228();
  v91 = sub_224DAF2A8();
  v92 = os_log_type_enabled(v90, v91);
  v190 = v55;
  if (v92)
  {
    v93 = v64;
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&dword_224A2F000, v90, v91, "Remote activity subscription changed; updating entries", v94, 2u);
    v95 = v94;
    v64 = v93;
    v55 = v190;
    MEMORY[0x22AA5EED0](v95, -1, -1);
  }

  v96 = *(v64 + 8);
  v192 = v64 + 8;
  v191 = v96;
  v96(v82, v232);
  sub_224BBF304(v89 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore, &v233);
  v97 = v234;
  v98 = v235;
  __swift_project_boxed_opaque_existential_1(&v233, v234);
  v99 = v59;
  v100 = v228;
  sub_224DAD988();
  sub_224D2F410(v99, v97, v98, v63);
  v101 = *(v87 + 8);
  v186[2] = v87 + 8;
  v101(v99, v55);
  v102 = v230;
  LODWORD(v97) = (*(v231 + 48))(v63, 1, v230);
  sub_224A3311C(v63, &qword_27D6F3BD8, &qword_224DB9C20);
  __swift_destroy_boxed_opaque_existential_1(&v233);
  if (v97 != 1)
  {
    v227 = v101;

    v118 = sub_224DAC878();

    v119 = sub_224DAD938();
    if (*(v118 + 16))
    {
      v121 = sub_224A3A40C(v119, v120);
      v123 = v122;

      v105 = v225;
      if (v123)
      {
        v124 = *(v118 + 56);
        v125 = sub_224DA9AE8();
        v126 = *(v125 - 8);
        v127 = v126;
        v128 = v124 + *(v126 + 72) * v121;
        v129 = v223;
        (*(v126 + 16))(v223, v128, v125);

        (*(v127 + 56))(v129, 0, 1, v125);
        sub_224A3311C(v129, &qword_27D6F48D8, &unk_224DB8240);
        v130 = sub_224DAD938();
        v132 = v131;
        v133 = v220;
        sub_224DAD9B8();
        v134 = v221;
        sub_224DAD9A8();
        v135 = v215;
        sub_224DAD958();
        v136 = v216;
        sub_224BD7040(v130, v132, v216);

        (*(v213 + 16))(v197, v133, v214);
        (*(v217 + 16))(v198, v134, v218);
        v148 = v222;
        (*(v222 + 16))(v209, v135, v219);
        v149 = v207;
        sub_224DAC908();
        v150 = v200;
        (*(v208 + 16))(v206, v136, v200);
        v151 = v202;
        v152 = v203;
        (*(v202 + 16))(v199, v149, v203);
        v153 = MEMORY[0x277CF9880];
        v226 = sub_224A43A4C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
        sub_224A43A4C(&unk_281350EB0, v153, MEMORY[0x277CF9888]);
        v154 = MEMORY[0x277CF9A98];
        sub_224A43A4C(&qword_281350D60, MEMORY[0x277CF9A98], MEMORY[0x277CF9AB0]);
        sub_224A43A4C(&qword_281350D70, v154, MEMORY[0x277CF9AA0]);
        v155 = v201;
        sub_224DAC848();
        sub_224BD746C(v155, 1);
        v157 = v156;
        (*(v204 + 8))(v155, v205);
        (*(v151 + 8))(v207, v152);
        (*(v208 + 8))(v216, v150);
        (*(v148 + 8))(v215, v219);
        (*(v217 + 8))(v221, v218);
        (*(v213 + 8))(v220, v214);
        v102 = v230;
        if (v157)
        {
          v158 = v229;
          v159 = *(v229 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock);

          os_unfair_lock_lock(v159 + 4);
          v160 = v228;
          sub_224DAD988();
          swift_beginAccess();

          sub_224B088C8(v161, v99);
          swift_endAccess();
          os_unfair_lock_unlock(v159 + 4);

          v162 = v158 + v187;
          v163 = v196;
          v188(v196, v162, v232);
          v164 = v195;
          (*(v231 + 16))(v195, v160, v102);
          v165 = sub_224DAB228();
          v166 = v102;
          v167 = sub_224DAF2A8();
          if (os_log_type_enabled(v165, v167))
          {
            v168 = swift_slowAlloc();
            v169 = v99;
            v170 = swift_slowAlloc();
            v233 = v170;
            *v168 = 136446210;
            sub_224DAD988();
            sub_224A43A4C(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v171 = v190;
            v172 = sub_224DAFD28();
            v174 = v173;
            v227(v169, v171);
            (*(v231 + 8))(v164, v230);
            v175 = sub_224A33F74(v172, v174, &v233);

            *(v168 + 4) = v175;
            _os_log_impl(&dword_224A2F000, v165, v167, "Created entry for remote activity subscription %{public}s", v168, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v170);
            MEMORY[0x22AA5EED0](v170, -1, -1);
            MEMORY[0x22AA5EED0](v168, -1, -1);

            v116 = v196;
          }

          else
          {

            (*(v231 + 8))(v164, v166);
            v116 = v163;
          }

          return v191(v116, v232);
        }

        v104 = v194;
        v188(v194, v229 + v187, v232);
        v105 = v193;
        (*(v231 + 16))(v193, v228, v102);
        v106 = sub_224DAB228();
        v176 = sub_224DAF288();
        if (os_log_type_enabled(v106, v176))
        {
          v177 = swift_slowAlloc();
          v178 = v99;
          v179 = v102;
          v180 = swift_slowAlloc();
          v233 = v180;
          *v177 = 136446210;
          sub_224DAD988();
          sub_224A43A4C(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v181 = v190;
          v182 = sub_224DAFD28();
          v184 = v183;
          v227(v178, v181);
          (*(v231 + 8))(v105, v179);
          v185 = sub_224A33F74(v182, v184, &v233);

          *(v177 + 4) = v185;
          _os_log_impl(&dword_224A2F000, v106, v176, "Failed to create an entry for remote subscription %{public}s", v177, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v180);
          MEMORY[0x22AA5EED0](v180, -1, -1);
          MEMORY[0x22AA5EED0](v177, -1, -1);

          v116 = v194;
          return v191(v116, v232);
        }

        goto LABEL_20;
      }
    }

    else
    {

      v105 = v225;
    }

    v137 = sub_224DA9AE8();
    v138 = v223;
    (*(*(v137 - 8) + 56))(v223, 1, 1, v137);
    sub_224A3311C(v138, &qword_27D6F48D8, &unk_224DB8240);
    v104 = v226;
    v188(v226, v89 + v187, v232);
    (*(v231 + 16))(v105, v100, v102);
    v106 = sub_224DAB228();
    v139 = sub_224DAF288();
    if (os_log_type_enabled(v106, v139))
    {
      v140 = swift_slowAlloc();
      v141 = v99;
      v142 = swift_slowAlloc();
      v233 = v142;
      *v140 = 136446210;
      sub_224DAD988();
      sub_224A43A4C(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v143 = v190;
      v144 = sub_224DAFD28();
      v146 = v145;
      v227(v141, v143);
      (*(v231 + 8))(v105, v102);
      v147 = sub_224A33F74(v144, v146, &v233);

      *(v140 + 4) = v147;
      _os_log_impl(&dword_224A2F000, v106, v139, "Failed to create an entry for remote subscription %{public}s as activity does not exist", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v142);
      MEMORY[0x22AA5EED0](v142, -1, -1);
      MEMORY[0x22AA5EED0](v140, -1, -1);

      v116 = v226;
      return v191(v116, v232);
    }

LABEL_20:

    (*(v231 + 8))(v105, v102);
    v116 = v104;
    return v191(v116, v232);
  }

  v103 = *(v89 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock);

  os_unfair_lock_lock(v103 + 4);
  sub_224DAD988();
  swift_beginAccess();
  sub_224B088C8(0, v99);
  swift_endAccess();
  os_unfair_lock_unlock(v103 + 4);

  v104 = v227;
  v188(v227, v89 + v187, v232);
  v105 = v224;
  (*(v231 + 16))(v224, v100, v102);
  v106 = sub_224DAB228();
  v107 = sub_224DAF2A8();
  if (!os_log_type_enabled(v106, v107))
  {
    goto LABEL_20;
  }

  v108 = swift_slowAlloc();
  v109 = swift_slowAlloc();
  v233 = v109;
  *v108 = 136446210;
  sub_224DAD988();
  sub_224A43A4C(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v110 = v101;
  v111 = v190;
  v112 = sub_224DAFD28();
  v114 = v113;
  v110(v99, v111);
  (*(v231 + 8))(v105, v230);
  v115 = sub_224A33F74(v112, v114, &v233);

  *(v108 + 4) = v115;
  _os_log_impl(&dword_224A2F000, v106, v107, "Removed entry for remote activity subscription %{public}s", v108, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v109);
  MEMORY[0x22AA5EED0](v109, -1, -1);
  MEMORY[0x22AA5EED0](v108, -1, -1);

  v116 = v227;
  return v191(v116, v232);
}

void sub_224BD5FB0(uint64_t *a1, uint64_t a2)
{
  v3 = sub_224DACB98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(v8 + 16);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      v21 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v13 = v8 + 32;
      do
      {
        sub_224A3317C(v13, v20);
        __swift_project_boxed_opaque_existential_1(v20, v20[3]);
        sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v13 += 40;
        --v11;
      }

      while (v11);
      v12 = v21;
    }

    (*(v4 + 104))(v7, *MEMORY[0x277CF9B98], v3);
    sub_224BD9E7C(v12);
    v16 = MEMORY[0x28223BE20](v14, v15);
    *(&v19 - 4) = v10;
    *(&v19 - 3) = v16;
    *(&v19 - 2) = v7;
    LOBYTE(v20[0]) = 1;
    MEMORY[0x28223BE20](v16, v17);
    *(&v19 - 4) = v20;
    *(&v19 - 3) = sub_224BDC0F0;
    *(&v19 - 2) = v18;

    sub_224DAC128();

    if (v20[0])
    {
      __break(1u);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }
}

void sub_224BD6254(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v81 = &v54 - v5;
  v82 = sub_224DAC918();
  v76 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v6);
  v75 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C70, &qword_224DBA418);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v54 - v14;
  v16 = sub_224DABCC8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v56 = *(v21 + 16);
  if (!v56)
  {
    goto LABEL_31;
  }

  v22 = v21;
  v23 = 0;
  v57 = v21 + 32;
  v64 = (v17 + 8);
  v72 = v76 + 16;
  v73 = v15;
  v71 = v76 + 32;
  v80 = "Reloading all content: ";
  v79 = (v76 + 8);
  v74 = v12;
  v62 = v16;
  v61 = v17;
  v60 = v20;
  v55 = v21;
  v59 = v17 + 16;
  while (1)
  {
    if (v23 >= *(v22 + 16))
    {
LABEL_34:
      __break(1u);
      return;
    }

    v58 = v23;
    sub_224A3317C(v57 + 40 * v23, v83);

    v25 = sub_224DAC108();

    v68 = *(v25 + 16);
    if (v68)
    {
      break;
    }

LABEL_4:

    v24 = v58 + 1;
    __swift_destroy_boxed_opaque_existential_1(v83);
    v23 = v24;
    v22 = v55;
    if (v24 == v56)
    {
      goto LABEL_31;
    }
  }

  v67 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v26 = 0;
  v66 = v25 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v65 = v25;
  while (1)
  {
    if (v26 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v27 = *(v17 + 72);
    v69 = v26;
    (*(v17 + 16))(v20, v66 + v27 * v26, v16);
    v28 = sub_224DABCA8();
    __swift_project_boxed_opaque_existential_1(v83, v83[3]);
    v29 = sub_224DAE338();
    v30 = sub_224DAF6A8();

    if (v30)
    {

      v31 = sub_224DAC168();

      if (v31)
      {
        break;
      }
    }

LABEL_9:
    v26 = v69 + 1;
    (*v64)(v20, v16);
    v25 = v65;
    if (v26 == v68)
    {
      goto LABEL_4;
    }
  }

  v32 = 0;
  v78 = v31;
  v33 = *(v31 + 64);
  v70 = v31 + 64;
  v34 = 1 << *(v31 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & v33;
  v37 = (v34 + 63) >> 6;
  v77 = v37;
  if ((v35 & v33) != 0)
  {
    while (1)
    {
      v38 = v32;
LABEL_25:
      v41 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v42 = v41 | (v38 << 6);
      v43 = v78;
      v45 = v75;
      v44 = v76;
      v46 = v82;
      (*(v76 + 16))(v75, *(v78 + 48) + *(v76 + 72) * v42, v82);
      v47 = *(*(v43 + 56) + 8 * v42);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
      v49 = *(v48 + 48);
      v50 = *(v44 + 32);
      v12 = v74;
      v50(v74, v45, v46);
      *&v12[v49] = v47;
      (*(*(v48 - 8) + 56))(v12, 0, 1, v48);

      v40 = v38;
      v15 = v73;
      v37 = v77;
LABEL_26:
      sub_224A44E4C(v12, v15, &qword_27D6F4C70, &qword_224DBA418);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
      if ((*(*(v51 - 8) + 48))(v15, 1, v51) == 1)
      {
        break;
      }

      v52 = sub_224DAEC58();
      (*(*(v52 - 8) + 56))(v81, 1, 1, v52);
      sub_224DABFC8();
      sub_224DABF58();

      (*v79)(v15, v82);
      v32 = v40;
      if (!v36)
      {
        goto LABEL_18;
      }
    }

    v16 = v62;
    v17 = v61;
    v20 = v60;
    goto LABEL_9;
  }

LABEL_18:
  if (v37 <= v32 + 1)
  {
    v39 = v32 + 1;
  }

  else
  {
    v39 = v37;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v38 >= v37)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
      (*(*(v53 - 8) + 56))(v12, 1, 1, v53);
      v36 = 0;
      goto LABEL_26;
    }

    v36 = *(v70 + 8 * v38);
    ++v32;
    if (v36)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_31:
}

void sub_224BD69EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v75 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v74 = &v51 - v6;
  v7 = sub_224DAC918();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v65 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v51 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BF8, &qword_224DBA320);
  v16 = MEMORY[0x28223BE20](v70, v15);
  v63 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v71 = &v51 - v19;

  v20 = sub_224DAC008();

  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;
  v61 = (v1 + 16);
  v62 = v8 + 16;
  v60 = v1 + 8;
  v52 = v8;
  v66 = v1;
  v58 = v1 + 32;
  v59 = (v8 + 8);
  v55 = v20;

  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v54 = v21;
  v53 = v25;
  v64 = v14;
  v28 = v65;
  while (v24)
  {
LABEL_11:
    v56 = v26;
    v57 = v24;
    v30 = __clz(__rbit64(v24)) | (v26 << 6);
    v31 = v55;
    v32 = *(v55 + 48);
    v33 = sub_224DABCC8();
    v34 = *(v33 - 8);
    v35 = *(v34 + 16);
    v36 = v32 + *(v34 + 72) * v30;
    v37 = v71;
    v69 = v33;
    v35(v71, v36);
    v38 = *(*(v31 + 56) + 8 * v30);
    *(v37 + *(v70 + 48)) = v38;
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = (v38 + ((*(v52 + 80) + 32) & ~*(v52 + 80)));
      v41 = *(v52 + 72);
      v67 = *(v52 + 16);
      v68 = v41;

      do
      {
        v73 = v39;
        v42 = v67;
        v67(v14, v40, v7);
        sub_224A3796C(v71, v63, &qword_27D6F4BF8, &qword_224DBA320);

        v42(v28, v14, v7);
        v43 = MEMORY[0x277CF9880];
        v44 = sub_224A43A4C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
        v45 = v74;
        v72 = v44;
        sub_224A43A4C(&unk_281350EB0, v43, MEMORY[0x277CF9888]);
        v46 = MEMORY[0x277CF9A98];
        sub_224A43A4C(&qword_281350D60, MEMORY[0x277CF9A98], MEMORY[0x277CF9AB0]);
        sub_224A43A4C(&qword_281350D70, v46, MEMORY[0x277CF9AA0]);
        v47 = v75;
        sub_224DAC848();
        (*v61)(v47, v45, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_224AD97F4(0, v27[2] + 1, 1, v27);
        }

        v49 = v27[2];
        v48 = v27[3];
        v14 = v64;
        if (v49 >= v48 >> 1)
        {
          v27 = sub_224AD97F4((v48 > 1), v49 + 1, 1, v27);
        }

        v50 = v66;
        (*(v66 + 8))(v74, v0);
        (*v59)(v14, v7);
        v27[2] = v49 + 1;
        (*(v50 + 32))(v27 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49, v75, v0);
        v40 += v68;
        v39 = v73 - 1;
      }

      while (v73 != 1);
    }

    else
    {
    }

    v24 = (v57 - 1) & v57;
    sub_224A3311C(v71, &qword_27D6F4BF8, &qword_224DBA320);
    v21 = v54;
    v25 = v53;
    v26 = v56;
  }

  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v29);
    ++v26;
    if (v24)
    {
      v26 = v29;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_224BD7040(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D8, &unk_224DB8240);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v37 = &v33 - v9;
  v10 = sub_224DA9AE8();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAB258();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 16);
  v40 = v3;
  v18(v17, v3 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v13);

  v19 = sub_224DAB228();
  v20 = sub_224DAF278();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = a2;
    v22 = a1;
    v23 = v21;
    v24 = swift_slowAlloc();
    v33 = v4;
    v25 = v24;
    v41 = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_224A33F74(v22, v36, &v41);
    _os_log_impl(&dword_224A2F000, v19, v20, "Looking for target for %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    v26 = v23;
    a1 = v22;
    a2 = v36;
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  (*(v14 + 8))(v17, v13);

  v27 = v37;
  sub_224DAC868();

  v29 = v38;
  v28 = v39;
  if ((*(v38 + 48))(v27, 1, v39) == 1)
  {
    sub_224A3311C(v27, &qword_27D6F48D8, &unk_224DB8240);
    v30 = sub_224DABFE8();
    sub_224A43A4C(&qword_27D6F4C18, MEMORY[0x277CF9938], MEMORY[0x277CF9940]);
    swift_allocError();
    *v31 = a1;
    v31[1] = a2;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277CF9928], v30);
    swift_willThrow();
  }

  else
  {
    v32 = v34;
    (*(v29 + 32))(v34, v27, v28);
    sub_224BD7B68(v35);
    (*(v29 + 8))(v32, v28);
  }
}

void sub_224BD746C(uint64_t a1, int a2)
{
  v23 = a2;
  v4 = sub_224DAC918();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DABCC8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_224DAC148();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  MEMORY[0x22AA5ABC0]();
  if (*(v13 + 16) && (v14 = sub_224B0B978(v12), (v15 & 1) != 0))
  {
    v20 = v2;
    v16 = *(*(v13 + 56) + 8 * v14);
    v17 = *(v9 + 8);

    v17(v12, v8);

    sub_224DAC838();
    if (*(v16 + 16))
    {
      sub_224B0B8A4(v7);
      if (v18)
      {
        v19 = *(v21 + 8);

        v19(v7, v22);

        return;
      }
    }

    (*(v21 + 8))(v7, v22);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  if (v23)
  {
    sub_224BD822C(a1);
  }
}

uint64_t sub_224BD770C(uint64_t a1)
{
  v1 = sub_224DABD68();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v28 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v28 - v19;

  sub_224DAC118();

  (*(v2 + 104))(v17, *MEMORY[0x277CF98B0], v1);
  (*(v2 + 56))(v17, 0, 1, v1);
  v21 = *(v6 + 56);
  sub_224A3796C(v20, v9, &qword_27D6F4C30, &unk_224DBB310);
  sub_224A3796C(v17, &v9[v21], &qword_27D6F4C30, &unk_224DBB310);
  v22 = *(v2 + 48);
  if (v22(v9, 1, v1) != 1)
  {
    sub_224A3796C(v9, v29, &qword_27D6F4C30, &unk_224DBB310);
    if (v22(&v9[v21], 1, v1) != 1)
    {
      v24 = v28;
      (*(v2 + 32))(v28, &v9[v21], v1);
      sub_224A43A4C(&unk_281350E90, MEMORY[0x277CF98C8], MEMORY[0x277CF98D0]);
      v25 = v29;
      v23 = sub_224DAEDD8();
      v26 = *(v2 + 8);
      v26(v24, v1);
      sub_224A3311C(v17, &qword_27D6F4C30, &unk_224DBB310);
      sub_224A3311C(v20, &qword_27D6F4C30, &unk_224DBB310);
      v26(v25, v1);
      sub_224A3311C(v9, &qword_27D6F4C30, &unk_224DBB310);
      return v23 & 1;
    }

    sub_224A3311C(v17, &qword_27D6F4C30, &unk_224DBB310);
    sub_224A3311C(v20, &qword_27D6F4C30, &unk_224DBB310);
    (*(v2 + 8))(v29, v1);
    goto LABEL_6;
  }

  sub_224A3311C(v17, &qword_27D6F4C30, &unk_224DBB310);
  sub_224A3311C(v20, &qword_27D6F4C30, &unk_224DBB310);
  if (v22(&v9[v21], 1, v1) != 1)
  {
LABEL_6:
    sub_224A3311C(v9, &qword_27D6F4C28, qword_224DBA340);
    v23 = 0;
    return v23 & 1;
  }

  sub_224A3311C(v9, &qword_27D6F4C30, &unk_224DBB310);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_224BD7B68@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v42 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_224DA9B38();
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v10);
  v47 = &v42 - v11;
  v12 = sub_224DA9C18();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DA9C38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA9A98();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_224BDC090(v15, MEMORY[0x277CB9790]);
    v21 = sub_224DABFE8();
    sub_224A43A4C(&qword_27D6F4C18, MEMORY[0x277CF9938], MEMORY[0x277CF9940]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CF9920], v21);
    return swift_willThrow();
  }

  v43 = v17;
  v44 = v16;
  (*(v17 + 32))(v20, v15, v16);
  sub_224DA9AC8();
  if (v24)
  {
    sub_224DAF538();
    sub_224DA9C28();
    sub_224DA9FF8();
    sub_224DA9C28();
    sub_224DA9FF8();
    (*(v50 + 56))(v4, 0, 1, v51);
    v25 = sub_224DAF508();
    v27 = v43;
    v26 = v44;
LABEL_5:
    v28 = v25;
    sub_224DA9AA8();
    sub_224DA9AD8();
    sub_224DABC98();

    return (*(v27 + 8))(v20, v26);
  }

  sub_224DA9C28();
  v29 = v47;
  sub_224DA9FF8();
  v30 = v46;
  __swift_project_boxed_opaque_existential_1((v46 + 232), *(v46 + 256));
  v31 = sub_224DADA08();
  v32 = v49;
  if (v31)
  {
    sub_224DA9AA8();
    v33 = sub_224DACFC8();

    (*(v45 + 8))(v32, v7);
    if (v33)
    {
      v34 = [v33 extensionIdentity];

      (*(v50 + 8))(v29, v51);
      v25 = v34;
      v27 = v43;
      v26 = v44;
      goto LABEL_5;
    }
  }

  __swift_project_boxed_opaque_existential_1((v30 + 232), *(v30 + 256));
  if (sub_224DADA08())
  {
    v35 = sub_224DACFD8();
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v36 = sub_224DABFE8();
  sub_224A43A4C(&qword_27D6F4C18, MEMORY[0x277CF9938], MEMORY[0x277CF9940]);
  swift_allocError();
  v38 = v37;
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C20, &qword_224DBA338) + 48);
  v41 = v43;
  v40 = v44;
  (*(v43 + 16))(v38, v20, v44);
  *(v38 + v39) = v35;
  (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277CF9930], v36);
  swift_willThrow();
  (*(v50 + 8))(v29, v51);
  return (*(v41 + 8))(v20, v40);
}

void sub_224BD822C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_224DAC918();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DABCC8();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  MEMORY[0x22AA5ABC0]();
  sub_224DAC838();

  v13 = sub_224DAC148();

  v14 = *(v13 + 16);
  v24 = v5;
  if (v14)
  {
    v15 = sub_224B0B978(v12);
    if (v16)
    {
      v17 = *(*(v13 + 56) + 8 * v15);

      if (*(v17 + 16))
      {
        sub_224B0B8A4(v8);
        if (v18)
        {

LABEL_9:
          (*(v26 + 8))(v8, v5);
          (*(v9 + 8))(v12, v25);
          return;
        }
      }
    }
  }

  sub_224DAD288();

  sub_224DAC8B8();

  v21 = MEMORY[0x28223BE20](v19, v20);
  *(&v24 - 4) = v12;
  *(&v24 - 3) = v8;
  *(&v24 - 2) = v3;
  *(&v24 - 1) = a1;
  v28 = 0;
  MEMORY[0x28223BE20](v21, v22);
  *(&v24 - 4) = &v28;
  *(&v24 - 3) = sub_224BDBF8C;
  *(&v24 - 2) = v23;

  sub_224DAC128();
  if (!v2)
  {

    if (v28)
    {
      __swift_destroy_boxed_opaque_existential_1(v27);
      v5 = v24;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_224BD8598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v74 = a6;
  v73 = a5;
  v63 = a4;
  v59 = sub_224DACB98();
  v70 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v9);
  v71 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACB08();
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v69 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DACB28();
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DACC88();
  v66 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v72 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v22);
  v58 = &v49 - v23;
  v62 = sub_224DAB258();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v24);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a3;
  v28 = a1;
  result = sub_224DAD208();
  v30 = v75;
  if (!v75)
  {
    v52 = v21;
    v53 = v17;
    v54 = v18;
    v55 = v27;
    v56 = a2;
    v57 = v28;
    v31 = v60;
    v32 = v62;
    (*(v60 + 16))(v26, v63 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v62);
    v33 = v58;
    v34 = v61;
    (*(v72 + 16))(v58, v73, v61);
    v35 = sub_224DAB228();
    v36 = sub_224DAF2A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v51 = v36;
      v38 = v37;
      v50 = swift_slowAlloc();
      v75 = v50;
      *v38 = 136446210;
      sub_224A33088(&qword_281350D78, &unk_27D6F4670, &unk_224DC0820, MEMORY[0x277CF9A90]);
      v39 = sub_224DAFD28();
      v41 = v40;
      (*(v72 + 8))(v33, v34);
      v42 = sub_224A33F74(v39, v41, &v75);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_224A2F000, v35, v51, "%{public}s Creating entry", v38, 0xCu);
      v43 = v50;
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    else
    {

      (*(v72 + 8))(v33, v34);
    }

    (*(v31 + 8))(v26, v32);
    v45 = v70;
    v44 = v71;
    v46 = v59;
    v47 = v69;
    v30 = sub_224BD8C04(v73);
    v75 = v30;
    sub_224DAD1F8();
    (*(v64 + 104))(v53, *MEMORY[0x277CF9B50], v65);
    (*(v67 + 104))(v47, *MEMORY[0x277CF9B40], v68);
    (*(v45 + 104))(v44, *MEMORY[0x277CF9BF0], v46);
    sub_224DACC28();
    v48 = v52;
    sub_224DACC18();
    sub_224DAD218();
    result = (*(v66 + 8))(v48, v54);
  }

  *v74 = v30;
  return result;
}

uint64_t sub_224BD8C04(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v45 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v43 = &v37 - v9;
  v47 = sub_224DABCC8();
  v10 = *(v47 - 8);
  v12 = MEMORY[0x28223BE20](v47, v11);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v37 - v19;
  v48 = sub_224DAE918();
  v21 = *(v48 - 8);
  v23 = MEMORY[0x28223BE20](v48, v22);
  v40 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v46 = &v37 - v26;
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v42 = v7;
  v44 = a1;
  MEMORY[0x22AA5ABC0](v7);
  sub_224DACE98();
  v38 = *(v10 + 8);
  v38(v16, v47);
  v27 = v48;
  (*(v21 + 56))(v20, 0, 1, v48);
  (*(v21 + 32))(v46, v20, v27);
  v28 = v39;
  v29 = v42;
  v30 = v44;
  MEMORY[0x22AA5ABC0](v42);
  __swift_project_boxed_opaque_existential_1(v2 + 24, v2[27]);
  v31 = sub_224DABCA8();
  sub_224DADA58();

  v38(v28, v47);
  sub_224DABFD8();
  (*(v41 + 16))(v43, v30, v29);
  v32 = sub_224DAEC58();
  (*(*(v32 - 8) + 56))(v45, 1, 1, v32);
  v33 = v46;
  v34 = v48;
  (*(v21 + 16))(v40, v46, v48);
  sub_224A3317C(v50, v49);
  v35 = sub_224DABF88();
  __swift_destroy_boxed_opaque_existential_1(v50);
  (*(v21 + 8))(v33, v34);
  return v35;
}

uint64_t sub_224BD9138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a1;
  v83 = a2;
  v6 = sub_224DACB08();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v80 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_224DACB28();
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v75 = &v58[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_224DACC88();
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v74 = &v58[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_224DACB98();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v71 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v58[-v21];
  v23 = sub_224DABCC8();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v58[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_224DAB258();
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v58[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = v33;
  v68 = v32;
  (*(v33 + 16))(v31, v83 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger);
  v34 = *(v24 + 16);
  v63 = a3;
  v34(v27, a3, v23);
  v64 = v16;
  v35 = *(v16 + 16);
  v36 = v22;
  v37 = v22;
  v38 = a4;
  v83 = v15;
  v69 = v35;
  v70 = v16 + 16;
  v35(v37, a4, v15);
  v65 = v31;
  v39 = sub_224DAB228();
  v40 = sub_224DAF2A8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v60 = v39;
    v42 = v41;
    v61 = swift_slowAlloc();
    v81 = v61;
    *v42 = 136446466;
    sub_224A43A4C(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
    v59 = v40;
    v43 = sub_224DAFD28();
    v62 = a4;
    v45 = v44;
    (*(v24 + 8))(v27, v23);
    v46 = sub_224A33F74(v43, v45, &v81);
    v38 = v62;

    *(v42 + 4) = v46;
    *(v42 + 12) = 2082;
    sub_224A43A4C(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
    v47 = v83;
    v48 = sub_224DAFD28();
    v50 = v49;
    (*(v64 + 8))(v36, v47);
    v51 = sub_224A33F74(v48, v50, &v81);

    *(v42 + 14) = v51;
    v52 = v60;
    _os_log_impl(&dword_224A2F000, v60, v59, "%{public}s Reloading all content: %{public}s", v42, 0x16u);
    v53 = v61;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v53, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {

    (*(v64 + 8))(v36, v83);
    (*(v24 + 8))(v27, v23);
  }

  (*(v67 + 8))(v65, v68);
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_224DAF938();

  v81 = 0xD000000000000017;
  v82 = 0x8000000224DC9EB0;
  sub_224A43A4C(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
  v54 = v83;
  v55 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v55);

  sub_224DAD1E8();

  (*(v72 + 104))(v75, *MEMORY[0x277CF9B50], v73);
  (*(v78 + 104))(v80, *MEMORY[0x277CF9B40], v79);
  v69(v71, v38, v54);
  sub_224DACC28();
  v56 = v74;
  sub_224DACC18();
  sub_224DAD218();
  return (*(v76 + 8))(v56, v77);
}