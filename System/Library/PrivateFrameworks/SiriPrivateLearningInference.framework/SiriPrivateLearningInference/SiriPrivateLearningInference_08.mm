unint64_t sub_222BD11CC()
{
  result = qword_27D026628;
  if (!qword_27D026628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026628);
  }

  return result;
}

uint64_t sub_222BD1220()
{
  type metadata accessor for MediaSuggestionOutcomeExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026640, &qword_222C9DB70);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D026630 = 91;
  *algn_27D026638 = 0xE100000000000000;
  return result;
}

uint64_t sub_222BD12C4(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026648, &qword_222C9DB78);
  MEMORY[0x28223BE20](v3 - 8);
  v105 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v113 = v88 - v6;
  MEMORY[0x28223BE20](v7);
  v107 = v88 - v8;
  v9 = type metadata accessor for MediaPlayClassification(0);
  v109 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v96 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = v88 - v12;
  MEMORY[0x28223BE20](v13);
  v95 = v88 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v106 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v98 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v97 = v88 - v17;
  MEMORY[0x28223BE20](v18);
  v99 = v88 - v19;
  MEMORY[0x28223BE20](v20);
  v104 = v88 - v21;
  MEMORY[0x28223BE20](v22);
  v92 = v88 - v23;
  v24 = type metadata accessor for FeaturisedTurn(0);
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v27 = v88 - v26;
  MEMORY[0x28223BE20](v28);
  v111 = v88 - v30;
  v31 = *(a1 + 16);
  v32 = MEMORY[0x277D84F90];
  v100 = v33;
  v110 = v29;
  if (v31)
  {
    v34 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v35 = *(v29 + 72);
    v36 = a1 + v34;
    v37 = v27;
    v38 = v111;
    do
    {
      sub_222BD43C8(v36, v38, type metadata accessor for FeaturisedTurn);
      if (sub_222B42A18(*(v38 + *(v24 + 24))))
      {

        sub_222BD4490(v38, v27, type metadata accessor for FeaturisedTurn);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v118 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, v32[2] + 1, 1);
          v32 = v118;
        }

        v41 = v32[2];
        v40 = v32[3];
        v42 = v32;
        if (v41 >= v40 >> 1)
        {
          sub_222B4C3D4((v40 > 1), v41 + 1, 1);
          v42 = v118;
        }

        v42[2] = v41 + 1;
        v43 = v42 + v34 + v41 * v35;
        v27 = v37;
        sub_222BD4490(v37, v43, type metadata accessor for FeaturisedTurn);
        v32 = v42;
        v38 = v111;
      }

      else
      {
        sub_222BD4430(v38, type metadata accessor for FeaturisedTurn);
      }

      v36 += v35;
      --v31;
    }

    while (v31);
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_49:
    swift_once();
  }

  v44 = sub_222C9431C();
  __swift_project_value_buffer(v44, qword_280FE2340);

  v45 = sub_222C942FC();
  v46 = sub_222C94A3C();
  v47 = os_log_type_enabled(v45, v46);
  v48 = v93;
  v49 = v99;
  if (v47)
  {
    v50 = v32;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v118 = v52;
    *v51 = 136315394;
    v53 = MEMORY[0x277D84F90];
    if (qword_27D024710 != -1)
    {
      swift_once();
    }

    *(v51 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, &v118);
    *(v51 + 12) = 2048;
    *(v51 + 14) = v50[2];

    _os_log_impl(&dword_222B39000, v45, v46, "%s Found %ld turns with PIMS suggestions reported.", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x223DCA8C0](v52, -1, -1);
    v54 = v51;
    v32 = v50;
    MEMORY[0x223DCA8C0](v54, -1, -1);
  }

  else
  {

    v53 = MEMORY[0x277D84F90];
  }

  v121 = v53;
  v91 = v32[2];
  if (!v91)
  {

    return v121;
  }

  v55 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v88[1] = v32;
  v90 = v32 + v55;
  v56 = *(v48 + 16);
  v101 = v48 + 32;
  v89 = *(v110 + 72);
  v57 = (v109 + 7);
  v111 = (v106 + 56);
  v110 = v106 + 48;
  v58 = (v109 + 6);

  v59 = 0;
  v109 = v58;
  v32 = &unk_222C990C0;
  v102 = v58 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v103 = v9;
  v60 = v100;
  v106 = v56;
  while (2)
  {
    v94 = v59;
    sub_222BD43C8(&v90[v89 * v59], v60, type metadata accessor for FeaturisedTurn);

    v64 = 0;
    v65 = v112;
    while (1)
    {
      if (v64 == v56)
      {
        v120 = 0;
        v64 = v56;
        v118 = 0u;
        v119 = 0u;
      }

      else
      {
        if (v64 >= v56)
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        sub_222B43E3C(v101 + 40 * v64, &v118);
        if (__OFADD__(v64++, 1))
        {
          goto LABEL_48;
        }
      }

      v116[0] = v118;
      v116[1] = v119;
      v117 = v120;
      if (*(&v119 + 1))
      {
        sub_222B405A0(v116, &v115);
        sub_222B43E3C(&v115, v114);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
        v67 = v113;
        v68 = swift_dynamicCast();
        (*v57)(v67, v68 ^ 1u, 1, v9);
        __swift_destroy_boxed_opaque_existential_0Tm(&v115);
        v69 = *v111;
        (*v111)(v67, 0, 1, v65);
      }

      else
      {
        v69 = *v111;
        (*v111)(v113, 1, 1, v65);
      }

      v70 = *v110;
      if ((*v110)(v113, 1, v65) == 1)
      {
        v71 = v49;
        sub_222B4FCD4(v113, &qword_27D026648, &qword_222C9DB78);
        v72 = 1;
        goto LABEL_36;
      }

      sub_222B723A4(v113, v49, &qword_27D0257D8, &unk_222C990C0);
      if ((*v109)(v49, 1, v9) != 1)
      {
        break;
      }

      sub_222B4FCD4(v49, &qword_27D0257D8, &unk_222C990C0);
LABEL_23:
      v56 = v106;
    }

    v71 = v49;
    sub_222B723A4(v49, v107, &qword_27D0257D8, &unk_222C990C0);
    v72 = 0;
LABEL_36:
    v73 = v107;
    v74 = v112;
    v69(v107, v72, 1, v112);
    v75 = v105;
    sub_222B723A4(v73, v105, &qword_27D026648, &qword_222C9DB78);
    if (v70(v75, 1, v74) == 1)
    {
      v76 = *v57;
      v77 = v104;
      v9 = v103;
      (*v57)(v104, 1, 1, v103);
      v49 = v71;
      v32 = &unk_222C990C0;
      v78 = (*v109)(v77, 1, v9);
    }

    else
    {
      v79 = v97;
      v32 = &unk_222C990C0;
      sub_222B723A4(v75, v97, &qword_27D0257D8, &unk_222C990C0);
      v80 = v98;
      sub_222B4FC6C(v79, v98, &qword_27D0257D8, &unk_222C990C0);
      v81 = *v109;
      v9 = v103;
      result = (*v109)(v80, 1, v103);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v77 = v104;
      sub_222BD4490(v80, v104, type metadata accessor for MediaPlayClassification);
      sub_222B4FCD4(v79, &qword_27D0257D8, &unk_222C990C0);
      v76 = *v57;
      (*v57)(v77, 0, 1, v9);
      v49 = v99;
      v78 = v81(v77, 1, v9);
    }

    if (v78 == 1)
    {
      sub_222B4FCD4(v77, &qword_27D0257D8, &unk_222C990C0);

      v61 = v92;
      v62 = v92;
      v63 = 1;
      goto LABEL_20;
    }

    v83 = v108;
    sub_222BD4490(v77, v108, type metadata accessor for MediaPlayClassification);
    v65 = v112;
    if ((*(v83 + 8) & 1) == 0 || (v84 = v95, sub_222BD4490(v108, v95, type metadata accessor for MediaPlayClassification), v85 = v84, v86 = v96, sub_222BD4490(v85, v96, type metadata accessor for MediaPlayClassification), v87 = sub_222C9362C(), v83 = v86, v65 = v112, (v87 & 1) == 0))
    {
      sub_222BD4430(v83, type metadata accessor for MediaPlayClassification);
      goto LABEL_23;
    }

    v61 = v92;
    sub_222BD4490(v96, v92, type metadata accessor for MediaPlayClassification);
    v62 = v61;
    v63 = 0;
LABEL_20:
    v76(v62, v63, 1, v9);
    v59 = v94 + 1;
    v60 = v100;
    v94 = sub_222BD205C(v100, v61);
    sub_222B4FCD4(v61, &qword_27D0257D8, &unk_222C990C0);
    sub_222BD4430(v60, type metadata accessor for FeaturisedTurn);
    sub_222B49A6C(v94);
    v56 = v106;
    if (v59 != v91)
    {
      continue;
    }

    break;
  }

  return v121;
}

uint64_t sub_222BD205C(uint64_t a1, uint64_t a2)
{
  v134 = a2;
  v3 = type metadata accessor for FeaturisedTurn(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v129 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  MEMORY[0x28223BE20](v132);
  v133 = &v128 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v128 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v10 - 8);
  v130 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = &v128 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v128 - v15;
  v138 = sub_222C9367C();
  v140 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v131 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v128 = &v128 - v19;
  MEMORY[0x28223BE20](v20);
  v136 = &v128 - v21;
  MEMORY[0x28223BE20](v22);
  v139 = &v128 - v23;
  v142 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v24 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v145 = &v128 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v128 - v29;
  v31 = *(v4 + 32);
  v137 = a1;
  v32 = sub_222B42A18(*(a1 + v31));
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v35 = *(v34 + 16);
  v143 = v24;
  v144 = v16;
  if (v35)
  {
    v36 = 0;
    while (v36 < *(v34 + 16))
    {
      v37 = v9;
      v38 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v39 = *(v24 + 72);
      sub_222BD43C8(v34 + v38 + v39 * v36, v30, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      if (*v30 == 3)
      {
        sub_222BD4490(v30, v145, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v146[0] = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4CAF0(0, *(v33 + 16) + 1, 1);
          v33 = v146[0];
        }

        v42 = *(v33 + 16);
        v41 = *(v33 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_222B4CAF0((v41 > 1), v42 + 1, 1);
          v33 = v146[0];
        }

        *(v33 + 16) = v42 + 1;
        sub_222BD4490(v145, v33 + v38 + v42 * v39, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
        v24 = v143;
        v16 = v144;
      }

      else
      {
        sub_222BD4430(v30, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      }

      ++v36;
      v9 = v37;
      if (v35 == v36)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_67;
  }

LABEL_15:

  if (*(v33 + 16))
  {
    v43 = v33 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v44 = v140;
    v45 = v140[2];
    v46 = v136;
    v47 = v138;
    v45(v136, v43 + *(v142 + 28), v138);
    v136 = v44[4];
    (v136)(v139, v46, v47);
    v48 = v137;
    v49 = isSiriPlayMedia(_:)(v137);
    v145 = v33;
    if (!v49)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v61 = sub_222C9431C();
      __swift_project_value_buffer(v61, qword_280FE2340);
      v62 = v131;
      v63 = v138;
      v45(v131, v139, v138);
      v64 = sub_222C942FC();
      v65 = sub_222C94A3C();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v146[0] = v67;
        *v66 = 136315394;
        if (qword_27D024710 != -1)
        {
          swift_once();
        }

        *(v66 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, v146);
        *(v66 + 12) = 2080;
        sub_222B7BB84(&qword_280FE0298, MEMORY[0x277CC9628]);
        v63 = v138;
        v68 = sub_222C9517C();
        v69 = v62;
        v71 = v70;
        v72 = v140[1];
        v72(v69, v63);
        v73 = sub_222B437C0(v68, v71, v146);

        *(v66 + 14) = v73;
        _os_log_impl(&dword_222B39000, v64, v65, "%s Turn with PLUS ID %s does not have a play media task type. Marking all suggestion outcomes as unknown.", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v67, -1, -1);
        MEMORY[0x223DCA8C0](v66, -1, -1);
      }

      else
      {

        v72 = v44[1];
        v72(v62, v63);
      }

      v80 = sub_222BD32F0(v145, 2, 0);

      MEMORY[0x28223BE20](v81);
      v82 = v139;
      *(&v128 - 2) = v139;
      sub_222C63158(sub_222BD3D44, (&v128 - 4), v80);
      v60 = v83;

      v72(v82, v63);
      return v60;
    }

    v45(v16, v48, v47);
    v50 = v16;
    v51 = v44[7];
    v51(v50, 0, 1, v47);
    sub_222B4FC6C(v134, v9, &qword_27D0257D8, &unk_222C990C0);
    v52 = type metadata accessor for MediaPlayClassification(0);
    if ((*(*(v52 - 8) + 48))(v9, 1, v52) == 1)
    {
      sub_222B4FCD4(v9, &qword_27D0257D8, &unk_222C990C0);
      v53 = 1;
      v54 = v135;
    }

    else
    {
      v54 = v135;
      v45(v135, &v9[*(v52 + 32)], v47);
      sub_222BD4430(v9, type metadata accessor for MediaPlayClassification);
      v53 = 0;
    }

    v51(v54, v53, 1, v47);
    v74 = v133;
    v75 = *(v132 + 48);
    v76 = v144;
    sub_222B4FC6C(v144, v133, &unk_27D026290, &qword_222C96B40);
    v132 = v75;
    sub_222B4FC6C(v54, v74 + v75, &unk_27D026290, &qword_222C96B40);
    v77 = v140[6];
    if (v77(v74, 1, v47) == 1)
    {
      sub_222B4FCD4(v54, &unk_27D026290, &qword_222C96B40);
      sub_222B4FCD4(v76, &unk_27D026290, &qword_222C96B40);
      v78 = v47;
      if (v77(v74 + v132, 1, v47) == 1)
      {
        sub_222B4FCD4(v74, &unk_27D026290, &qword_222C96B40);
        v79 = v145;
LABEL_48:
        v98 = sub_222BD3D64(v79, v134);
        v99 = v98;
        v100 = *(v79 + 16);
        if (v100)
        {
          v144 = v98;
          v146[0] = MEMORY[0x277D84F90];
          sub_222B4C418(0, v100, 0);
          v101 = v146[0];
          v102 = *(v143 + 72);
          do
          {
            v103 = v141;
            sub_222BD43C8(v43, v141, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
            v104 = sub_222C9360C();
            v106 = v105;
            sub_222BD4430(v103, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
            v146[0] = v101;
            v108 = *(v101 + 16);
            v107 = *(v101 + 24);
            if (v108 >= v107 >> 1)
            {
              sub_222B4C418((v107 > 1), v108 + 1, 1);
              v101 = v146[0];
            }

            *(v101 + 16) = v108 + 1;
            v109 = v101 + 16 * v108;
            *(v109 + 32) = v104;
            *(v109 + 40) = v106;
            v43 += v102;
            --v100;
          }

          while (v100);

          v99 = v144;
        }

        else
        {

          v101 = MEMORY[0x277D84F90];
        }

        v110 = v129;
        v111 = v137;
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v112 = sub_222C9431C();
        __swift_project_value_buffer(v112, qword_280FE2340);
        sub_222BD43C8(v111, v110, type metadata accessor for FeaturisedTurn);

        v113 = sub_222C942FC();
        v114 = sub_222C94A3C();
        if (os_log_type_enabled(v113, v114))
        {
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          v146[0] = v116;
          *v115 = 136315906;
          if (qword_27D024710 != -1)
          {
            swift_once();
          }

          *(v115 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, v146);
          *(v115 + 12) = 2048;
          if (v99 >> 62)
          {
            v117 = sub_222C94C6C();
          }

          else
          {
            v117 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v115 + 14) = v117;

          *(v115 + 22) = 2048;
          *(v115 + 24) = *(v101 + 16);

          *(v115 + 32) = 2080;
          sub_222B7BB84(&qword_280FE0298, MEMORY[0x277CC9628]);
          v118 = sub_222C9517C();
          v119 = v110;
          v120 = v118;
          v122 = v121;
          sub_222BD4430(v119, type metadata accessor for FeaturisedTurn);
          v123 = sub_222B437C0(v120, v122, v146);

          *(v115 + 34) = v123;
          _os_log_impl(&dword_222B39000, v113, v114, "%s Generated outcomes for %ld/%ld suggestions in Turn id=%s", v115, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v116, -1, -1);
          MEMORY[0x223DCA8C0](v115, -1, -1);
        }

        else
        {

          sub_222BD4430(v110, type metadata accessor for FeaturisedTurn);
        }

        sub_222BD34A8(v99, v101);

        MEMORY[0x28223BE20](v124);
        v125 = v139;
        *(&v128 - 2) = v139;
        sub_222C63158(sub_222BD44F8, (&v128 - 4), v99);
        v60 = v126;

        (v140[1])(v125, v78);
        return v60;
      }
    }

    else
    {
      v84 = v130;
      sub_222B4FC6C(v74, v130, &unk_27D026290, &qword_222C96B40);
      v85 = v132;
      v78 = v47;
      if (v77(v74 + v132, 1, v47) != 1)
      {
        v95 = v128;
        (v136)(v128, v74 + v85, v47);
        sub_222B7BB84(&qword_280FE02A0, MEMORY[0x277CC9610]);
        v96 = sub_222C9447C();
        v97 = v140[1];
        v97(v95, v78);
        sub_222B4FCD4(v135, &unk_27D026290, &qword_222C96B40);
        sub_222B4FCD4(v144, &unk_27D026290, &qword_222C96B40);
        v97(v84, v78);
        sub_222B4FCD4(v74, &unk_27D026290, &qword_222C96B40);
        v79 = v145;
        if (v96)
        {
          goto LABEL_48;
        }

LABEL_40:
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v86 = sub_222C9431C();
        __swift_project_value_buffer(v86, qword_280FE2340);
        v87 = sub_222C942FC();
        v88 = sub_222C94A4C();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v146[0] = v90;
          *v89 = 136315138;
          if (qword_27D024710 != -1)
          {
            swift_once();
          }

          *(v89 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, v146);
          _os_log_impl(&dword_222B39000, v87, v88, "%s Suggestion was made on a turn that did not have a playback event. Marking as inconclusive", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v90);
          MEMORY[0x223DCA8C0](v90, -1, -1);
          MEMORY[0x223DCA8C0](v89, -1, -1);
        }

        v91 = sub_222BD32F0(v145, 15, 2);

        MEMORY[0x28223BE20](v92);
        v93 = v139;
        *(&v128 - 2) = v139;
        sub_222C63158(sub_222BD44F8, (&v128 - 4), v91);
        v60 = v94;

        (v140[1])(v93, v78);
        return v60;
      }

      sub_222B4FCD4(v135, &unk_27D026290, &qword_222C96B40);
      sub_222B4FCD4(v144, &unk_27D026290, &qword_222C96B40);
      (v140[1])(v84, v47);
    }

    sub_222B4FCD4(v74, &qword_27D025290, &unk_222C97C30);
    goto LABEL_40;
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_67:
    swift_once();
  }

  v55 = sub_222C9431C();
  __swift_project_value_buffer(v55, qword_280FE2340);
  v56 = sub_222C942FC();
  v57 = sub_222C94A4C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v146[0] = v59;
    *v58 = 136315138;
    if (qword_27D024710 != -1)
    {
      swift_once();
    }

    *(v58 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, v146);
    _os_log_impl(&dword_222B39000, v56, v57, "%s Missing PLUS Id for turn with PICS suggestions. SELF logs cannot be emitted for these suggestions.", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    MEMORY[0x223DCA8C0](v59, -1, -1);
    MEMORY[0x223DCA8C0](v58, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_222BD32F0(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v20) = a3;
  v3 = a2;
  v5 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v6 + 20);
    v13 = *(v6 + 24);
    v14 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = *(v7 + 72);
    do
    {
      sub_222BD43C8(v14, v9, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v16 = sub_222C783B8(HIDWORD(v20));
      v17 = sub_222C786C4(&v9[v12], &v9[v13], v3, v16);

      v18 = sub_222BD4430(v9, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      if (v17)
      {
        MEMORY[0x223DC94A0](v18);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_222C9475C();
        }

        sub_222C947AC();
        v10 = v21;
      }

      v14 += v15;
      --v11;
    }

    while (v11);
  }

  return v10;
}

uint64_t sub_222BD34A8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v76.n128_u64[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v73 - v7;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v79 = a1 & 0xFFFFFFFFFFFFFF8;
  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v77 = v2;
  if (!v9)
  {
LABEL_32:
    v78 = MEMORY[0x277D84F98];
    goto LABEL_33;
  }

LABEL_3:
  v10 = 0;
  v78 = MEMORY[0x277D84F98];
  do
  {
    v3 = v10;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223DC9B30](v3, a1, v6);
      }

      else
      {
        if (v3 >= *(v79 + 16))
        {
          goto LABEL_30;
        }

        v11 = *(a1 + 8 * v3 + 32);
      }

      v12 = v11;
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v79 = a1 & 0xFFFFFFFFFFFFFF8;
        v9 = sub_222C94C6C();
        v77 = v3;
        if (!v9)
        {
          goto LABEL_32;
        }

        goto LABEL_3;
      }

      v13 = [v11 suggestionLinkId];
      if (v13)
      {
        break;
      }

LABEL_6:
      ++v3;
      if (v10 == v9)
      {
        v3 = v77;
        goto LABEL_33;
      }
    }

    v14 = v13;
    sub_222C94A1C();

    v15 = sub_222C9367C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v8, 1, v15) == 1)
    {

      sub_222B4FCD4(v8, &unk_27D026290, &qword_222C96B40);
      goto LABEL_6;
    }

    v17 = sub_222C9360C();
    v19 = v18;
    (*(v16 + 8))(v8, v15);
    v20 = v19;
    v74 = [v12 suggestionOutcome];
    v21 = v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v21;
    v75.n128_u64[0] = v17;
    v24 = sub_222B8C9DC(v17, v20);
    v25 = *(v21 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }

    if (*(v21 + 24) >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v23 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v30 = v23;
        sub_222B9432C();
        if ((v30 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_22:

      v78 = v81;
      *(v81[7] + 4 * v24) = v74;

      goto LABEL_26;
    }

    LODWORD(v78) = v23;
    sub_222B90F94(v27, isUniquelyReferenced_nonNull_native);
    v28 = sub_222B8C9DC(v75.n128_i64[0], v20);
    if ((v78 & 1) != (v29 & 1))
    {
      goto LABEL_52;
    }

    v24 = v28;
    if (v78)
    {
      goto LABEL_22;
    }

LABEL_24:
    v31 = v20;
    v32 = v81;
    v81[(v24 >> 6) + 8] |= 1 << v24;
    v33 = (v32[6] + 16 * v24);
    *v33 = v75.n128_u64[0];
    v33[1] = v31;
    *(v32[7] + 4 * v24) = v74;

    v34 = v32[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_51;
    }

    v78 = v32;
    v32[2] = v36;
LABEL_26:
    v3 = v77;
  }

  while (v10 != v9);
LABEL_33:
  v37 = *(v76.n128_u64[0] + 16);
  if (v37)
  {
    v38 = (v76.n128_u64[0] + 40);
    v39 = &unk_280FDF000;
    v6.n128_u64[0] = 136315394;
    v76 = v6;
    v6.n128_u64[0] = 136315650;
    v75 = v6;
    v40 = v78;
    do
    {
      v42 = *(v38 - 1);
      v41 = *v38;
      v43 = *(v40 + 16);

      if (v43 && (v44 = sub_222B8C9DC(v42, v41), (v45 & 1) != 0))
      {
        LODWORD(v79) = *(*(v40 + 56) + 4 * v44);
        if (v39[463] != -1)
        {
          swift_once();
        }

        v46 = sub_222C9431C();
        __swift_project_value_buffer(v46, qword_280FE2340);

        v47 = sub_222C942FC();
        v48 = sub_222C94A3C();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v80 = v3;
          v81 = v50;
          *v49 = v75.n128_u32[0];
          type metadata accessor for MediaSuggestionOutcomeExtractor();

          v51 = sub_222C944EC();
          v53 = sub_222B437C0(v51, v52, &v81);

          *(v49 + 4) = v53;
          *(v49 + 12) = 2080;
          v54 = sub_222B437C0(v42, v41, &v81);

          *(v49 + 14) = v54;
          *(v49 + 22) = 2080;
          v55 = @"PLUSSUGGESTIONOUTCOME_UNKNOWN";
          v56 = @"PLUSSUGGESTIONOUTCOME_UNKNOWN";
          if (v79 <= 0xF)
          {
            v56 = off_2784BBDF0[v79];
            v55 = off_2784BBE70[v79];
          }

          v57 = v56;
          v58 = v55;
          v59 = sub_222C9449C();
          v61 = v60;

          v62 = sub_222B437C0(v59, v61, &v81);

          *(v49 + 24) = v62;
          _os_log_impl(&dword_222B39000, v47, v48, "[%s] Suggestion Id=%s, Outcome=%s", v49, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v50, -1, -1);
          MEMORY[0x223DCA8C0](v49, -1, -1);

          v3 = v77;
          v40 = v78;
          v39 = &unk_280FDF000;
          goto LABEL_36;
        }
      }

      else
      {
        if (v39[463] != -1)
        {
          swift_once();
        }

        v63 = sub_222C9431C();
        __swift_project_value_buffer(v63, qword_280FE2340);

        v47 = sub_222C942FC();
        v64 = sub_222C94A4C();

        if (os_log_type_enabled(v47, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v80 = v3;
          v81 = v66;
          *v65 = v76.n128_u32[0];
          type metadata accessor for MediaSuggestionOutcomeExtractor();

          v67 = sub_222C944EC();
          v69 = sub_222B437C0(v67, v68, &v81);
          v40 = v78;

          *(v65 + 4) = v69;
          *(v65 + 12) = 2080;
          v70 = sub_222B437C0(v42, v41, &v81);

          *(v65 + 14) = v70;
          v3 = v77;
          _os_log_impl(&dword_222B39000, v47, v64, "[%s] Missing outcome for Suggestion Id=%s. SELF messages will not be emitted.", v65, 0x16u);
          swift_arrayDestroy();
          v71 = v66;
          v39 = &unk_280FDF000;
          MEMORY[0x223DCA8C0](v71, -1, -1);
          MEMORY[0x223DCA8C0](v65, -1, -1);

          goto LABEL_36;
        }
      }

LABEL_36:
      v38 += 2;
      --v37;
    }

    while (v37);
  }
}

id sub_222BD3C40@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CB0, &unk_222CA5330) + 48);
  v7 = sub_222C9367C();
  (*(*(v7 - 8) + 16))(a3, a2, v7);
  *(a3 + v6) = v5;
  return v5;
}

uint64_t sub_222BD3D64(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v46 - v4;
  v5 = type metadata accessor for MediaPlayClassification(0);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = *(a1 + 16);
  v52 = a1;
  if (v14)
  {
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = *(v11 + 72);
    v17 = a1 + v15;
    v18 = MEMORY[0x277D84F90];
    do
    {
      sub_222BD43C8(v17, v13, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      if (v13[*(v7 + 32)] == 2)
      {
        sub_222BD4490(v13, v9, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4CAF0(0, *(v18 + 16) + 1, 1);
          v18 = v53;
        }

        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_222B4CAF0((v20 > 1), v21 + 1, 1);
          v18 = v53;
        }

        *(v18 + 16) = v21 + 1;
        sub_222BD4490(v9, v18 + v15 + v21 * v16, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      }

      else
      {
        sub_222BD4430(v13, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      }

      v17 += v16;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v22 = *(v18 + 16);

  if (v22 != 1)
  {
    v33 = v52;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v34 = sub_222C9431C();
    __swift_project_value_buffer(v34, qword_280FE2340);
    v35 = sub_222C942FC();
    v36 = sub_222C94A3C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53 = v38;
      *v37 = 136315138;
      if (qword_27D024710 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, &v53);
      _os_log_impl(&dword_222B39000, v35, v36, "%s Either found zero surfaced suggestions, or multiple surfaced suggestions. Marking all suggestions as unknown outcomes.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x223DCA8C0](v38, -1, -1);
      MEMORY[0x223DCA8C0](v37, -1, -1);
    }

    v31 = v33;
    v32 = 0;
    return sub_222BD32F0(v31, 2, v32);
  }

  v23 = v51;
  sub_222B4FC6C(v50, v51, &qword_27D0257D8, &unk_222C990C0);
  v24 = (*(v48 + 48))(v23, 1, v49);
  v25 = v52;
  if (v24 == 1)
  {
    sub_222B4FCD4(v23, &qword_27D0257D8, &unk_222C990C0);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v26 = sub_222C9431C();
    __swift_project_value_buffer(v26, qword_280FE2340);
    v27 = sub_222C942FC();
    v28 = sub_222C94A3C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v53 = v30;
      *v29 = 136315138;
      if (qword_27D024710 != -1)
      {
        swift_once();
      }

      *(v29 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, &v53);
      _os_log_impl(&dword_222B39000, v27, v28, "%s PIMS surfaced a suggestion but no MediaPlayClassification was generated. Marking all suggestions as unknown.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x223DCA8C0](v30, -1, -1);
      MEMORY[0x223DCA8C0](v29, -1, -1);
    }

    v31 = v25;
    v32 = 2;
    return sub_222BD32F0(v31, 2, v32);
  }

  v40 = v23;
  v41 = v47;
  sub_222BD4490(v40, v47, type metadata accessor for MediaPlayClassification);
  if (*(v41 + 8) == 1)
  {
    if (sub_222BCB8C4())
    {
      v42 = v25;
      v43 = 13;
      v44 = 1;
    }

    else
    {
      v42 = v25;
      v43 = 14;
      v44 = 3;
    }
  }

  else
  {
    v42 = v25;
    v43 = 12;
    v44 = 2;
  }

  v45 = sub_222BD32F0(v42, v43, v44);
  sub_222BD4430(v41, type metadata accessor for MediaPlayClassification);
  return v45;
}

uint64_t sub_222BD43C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BD4430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222BD4490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BD4510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026760, qword_222C9DCF0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D026650 = 91;
  *algn_27D026658 = 0xE100000000000000;
  return result;
}

uint64_t FeaturisedNowPlayingEventStream.events(since:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026660, &qword_222C9DB88);
  v3[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026668, &qword_222C9DB90);
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  type metadata accessor for EventStreamContext(0);
  v3[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026670, &qword_222C9DB98);
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222BD4774, 0, 0);
}

uint64_t sub_222BD4774()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_222BD4C98();
  sub_222C93E2C();
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v20 = v2;
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v21 = *(v0 + 88);
  v22 = *(v0 + 80);
  v23 = *(v0 + 64);
  v25 = *(v0 + 128);
  v19 = *(v0 + 56);
  v5 = *(v0 + 24);
  v24 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026680, &qword_222C9DBA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222C96900;
  v7 = type metadata accessor for CommonBiomeEventFeatureExtractor();
  v8 = swift_allocObject();
  *(v6 + 56) = v7;
  *(v6 + 64) = sub_222BD7900(&qword_27D026688, type metadata accessor for CommonBiomeEventFeatureExtractor, &protocol conformance descriptor for CommonBiomeEventFeatureExtractor);
  *(v6 + 32) = v8;
  v9 = type metadata accessor for NowPlayingFeatureExtractor(0);
  swift_allocObject();
  v10 = sub_222C9417C();
  *(v6 + 96) = v9;
  *(v6 + 104) = sub_222BD7900(&qword_27D026440, type metadata accessor for NowPlayingFeatureExtractor, MEMORY[0x277D5FCC8]);
  *(v6 + 72) = v10;
  sub_222BD4CE4(v5, v4);
  (*(v2 + 16))(v25, v1, v24);
  *(swift_allocObject() + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026690, &unk_222C9FFE0);
  sub_222B61940(&qword_27D026698, &qword_27D026670, &qword_222C9DB98, MEMORY[0x277D5FB48]);
  sub_222C94EDC();
  sub_222B61940(&qword_27D0266A0, &qword_27D026660, &qword_222C9DB88, MEMORY[0x277D85990]);
  sub_222C9516C();
  sub_222BD57BC(v4, v3 + *(v19 + 52));
  sub_222B4FC6C(v3, v21, &qword_27D026668, &qword_222C9DB90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266A8, &qword_222C9DBC8);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B0, &qword_222C9DBD0);
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_222B4FC6C(v21, v22, &qword_27D026668, &qword_222C9DB90);
  v15 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  sub_222BD5D90(v22, v16 + v15);

  sub_222C948BC();
  sub_222B4FCD4(v21, &qword_27D026668, &qword_222C9DB90);
  sub_222B4FCD4(v3, &qword_27D026668, &qword_222C9DB90);
  sub_222BD5EF0(v4);
  (*(v20 + 8))(v1, v24);

  v17 = *(v0 + 8);

  return v17();
}

unint64_t sub_222BD4C98()
{
  result = qword_27D026678;
  if (!qword_27D026678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D026678);
  }

  return result;
}

uint64_t sub_222BD4CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_222C935EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v46 - v8;
  MEMORY[0x28223BE20](v9);
  v53 = &v46 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = *(v4 + 16);
  v54 = a1;
  v56 = v21;
  (v21)(&v46 - v19, a1, v3, v18);
  sub_222C935DC();
  LOBYTE(a1) = sub_222C9356C();
  v22 = *(v4 + 8);
  v22(v16, v3);
  if (a1)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v23 = sub_222C9431C();
    __swift_project_value_buffer(v23, qword_280FE2340);
    v56(v13, v54, v3);
    v24 = sub_222C942FC();
    v49 = sub_222C94A4C();
    v25 = os_log_type_enabled(v24, v49);
    v50 = v4;
    v51 = v6;
    if (v25)
    {
      v47 = v24;
      v48 = v22;
      v26 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = v46;
      *v26 = 136315650;
      if (qword_27D024718 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_222B437C0(qword_27D026650, *algn_27D026658, &v57);
      *(v26 + 12) = 2080;
      sub_222BD7900(&qword_27D026758, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v27 = sub_222C9517C();
      v29 = v28;
      v30 = v13;
      v31 = v48;
      v48(v30, v3);
      v32 = sub_222B437C0(v27, v29, &v57);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2080;
      sub_222C935DC();
      v33 = sub_222C9517C();
      v35 = v34;
      v31(v16, v3);
      v36 = sub_222B437C0(v33, v35, &v57);

      *(v26 + 24) = v36;
      v37 = v47;
      _os_log_impl(&dword_222B39000, v47, v49, "%s Start date (%s) is greater than now (%s), setting start date to now", v26, 0x20u);
      v38 = v46;
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v38, -1, -1);
      MEMORY[0x223DCA8C0](v26, -1, -1);
    }

    else
    {

      v22(v13, v3);
      v31 = v22;
    }

    v39 = v52;
    sub_222C935DC();
    sub_222BD7900(&qword_27D025A18, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v40 = v54;
    v41 = sub_222C9446C();
    v42 = v31;
    v31(v20, v3);
    v43 = v53;
    if (v41)
    {
      v44 = *(v50 + 32);
      v44(v53, v39, v3);
    }

    else
    {
      v42(v39, v3);
      v56(v43, v40, v3);
      v44 = *(v50 + 32);
    }

    v22 = v42;
    v44(v20, v43, v3);
  }

  v56(v16, v20, v3);
  sub_222C935DC();
  sub_222C9328C();
  return (v22)(v20, v3);
}

uint64_t sub_222BD5274(uint64_t a1, void *a2, uint64_t a3)
{
  v3[8] = a1;
  v3[9] = a3;
  v3[10] = *a2;
  return MEMORY[0x2822009F8](sub_222BD529C, 0, 0);
}

void *sub_222BD529C()
{
  v1 = v0[9];
  v17 = MEMORY[0x223DCA1C0]();
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_19:
    v15 = v0[8];
    objc_autoreleasePoolPop(v17);
    *v15 = v3;
    v16 = v0[1];

    return v16();
  }

  v3 = MEMORY[0x277D84F90];
  v4 = v0[9] + 32;
  while (1)
  {
    v6 = v0[10];
    sub_222B43E3C(v4, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[7] = v6;
    v7 = sub_222C93E3C();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v8 = *(v7 + 16);
    v9 = v3[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= v3[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_222B4A108(result, v11, 1, v3);
      v3 = result;
      if (*(v7 + 16))
      {
LABEL_14:
        if ((v3[3] >> 1) - v3[2] < v8)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = v3[2];
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_25;
          }

          v3[2] = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_23;
    }

LABEL_4:
    v4 += 40;
    if (!--v2)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_222BD5480(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222B503AC;

  return sub_222BD5274(a1, a2, v6);
}

uint64_t sub_222BD5530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_222B41FD0(a1);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = result;
  v7 = v5;
  v8 = sub_222B41FE8(a1);
  if (!v9)
  {

LABEL_15:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = v8;
  v11 = v9;
  v25 = MEMORY[0x277D84FA0];
  v12 = *(a1 + 16);

  if (v12)
  {
    v19 = v10;
    v20 = v6;
    v13 = MEMORY[0x277D84F90];
    v14 = a1 + 32;
    do
    {
      sub_222B43E3C(v14, v23);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      *&v21 = swift_allocObject();
      sub_222B43E3C(v23, v21 + 16);
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0Tm(&v21);
      if (sub_222B69F7C(&v21, DynamicType))
      {
        sub_222B405A0(v23, &v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C5C0(0, *(v13 + 16) + 1, 1);
          v13 = v24;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_222B4C5C0((v17 > 1), v18 + 1, 1);
          v13 = v24;
        }

        *(v13 + 16) = v18 + 1;
        sub_222B405A0(&v21, v13 + 40 * v18 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
      }

      v14 += 40;
      --v12;
    }

    while (v12);
    v6 = v20;
    v10 = v19;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_222BD5754(uint64_t a1, uint64_t *a2)
{
  sub_222BD5530(*a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_222BD57BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventStreamContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BD5820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222B503AC;

  return FeaturisedNowPlayingEventStream.events(since:)(a1, a2);
}

uint64_t sub_222BD58C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266A8, &qword_222C9DBC8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222BD5980, 0, 0);
}

uint64_t sub_222BD5980()
{
  v2 = v0[14];
  v1 = v0[15];
  swift_beginAccess();
  sub_222B3D6C4(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B0, &qword_222C9DBD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_222B3D734(v2);
  if (v1 == 1)
  {
    v6 = v0[15];
    v7 = v0[13];
    sub_222BD7010(v7);
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_222B3D79C(v7, v6);
  }

  v8 = v0[15];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[16] = v12;
    *v12 = v0;
    v12[1] = sub_222BD5BC8;
    v13 = v0[11];

    return sub_222BD7278(v13);
  }
}

uint64_t sub_222BD5BC8()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222BD5D18, 0, 0);
  }

  else
  {
    swift_endAccess();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_222BD5D18()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222BD5D90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026668, &qword_222C9DB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BD5E00(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026668, &qword_222C9DB90) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222B503AC;

  return sub_222BD58C8(a1, v6, v1 + v5);
}

uint64_t sub_222BD5EF0(uint64_t a1)
{
  v2 = type metadata accessor for EventStreamContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BD5F4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_222BD5F94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222BD5FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C0, &qword_222C9DC78);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C8, &qword_222C9DC80);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222BD610C, 0, 0);
}

uint64_t sub_222BD610C()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_222B4FC6C(v1, v2, &qword_27D0266C8, &qword_222C9DC80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266D0, &qword_222C9DC88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_222B4FCD4(v2, &qword_27D0266C8, &qword_222C9DC80);
  if (v1 == 1)
  {
    v6 = v0[18];
    v7 = v0[16];
    (*(v0[14] + 16))(v0[15], v0[12], v0[13]);
    sub_222B61940(&qword_27D0266D8, &qword_27D0266C0, &qword_222C9DC78, MEMORY[0x277D859A0]);
    sub_222C9487C();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_222BD6FA8(v7, v6, &qword_27D0266C8, &qword_222C9DC80);
  }

  v8 = v0[18];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = sub_222B61940(&qword_27D0266E0, &qword_27D0266D0, &qword_222C9DC88, MEMORY[0x277D85998]);
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_222BD6414;
    v14 = v0[11];

    return MEMORY[0x282200308](v14, v3, v12);
  }
}

uint64_t sub_222BD6414()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222BD7948, 0, 0);
  }

  else
  {
    swift_endAccess();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_222BD6570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026710, &qword_222C9DCB8);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026718, &unk_222C9DCC0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222BD6690, 0, 0);
}

uint64_t sub_222BD6690()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_222B4FC6C(v1, v2, &qword_27D026718, &unk_222C9DCC0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026720, &qword_222C9FB60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_222B4FCD4(v2, &qword_27D026718, &unk_222C9DCC0);
  if (v1 == 1)
  {
    v6 = v0[18];
    v7 = v0[16];
    (*(v0[14] + 16))(v0[15], v0[12], v0[13]);
    sub_222B61940(&qword_27D026728, &qword_27D026710, &qword_222C9DCB8, MEMORY[0x277D5FB48]);
    sub_222C9487C();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_222BD6FA8(v7, v6, &qword_27D026718, &unk_222C9DCC0);
  }

  v8 = v0[18];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = sub_222B61940(&qword_27D026730, &qword_27D026720, &qword_222C9FB60, MEMORY[0x277D5FB40]);
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_222BD6998;
    v14 = v0[11];

    return MEMORY[0x282200308](v14, v3, v12);
  }
}

uint64_t sub_222BD6998()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222BD6AF4, 0, 0);
  }

  else
  {
    swift_endAccess();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_222BD6AF4()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_222BD6B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266E8, &qword_222C9DC98);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266F0, &qword_222C9DCA0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222BD6CA0, 0, 0);
}

uint64_t sub_222BD6CA0()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_222B4FC6C(v1, v2, &qword_27D0266F0, &qword_222C9DCA0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266F8, &qword_222C9DCA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_222B4FCD4(v2, &qword_27D0266F0, &qword_222C9DCA0);
  if (v1 == 1)
  {
    v6 = v0[18];
    v7 = v0[16];
    (*(v0[14] + 16))(v0[15], v0[12], v0[13]);
    sub_222B61940(&qword_27D026700, &qword_27D0266E8, &qword_222C9DC98, MEMORY[0x277D85A00]);
    sub_222C9487C();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_222BD6FA8(v7, v6, &qword_27D0266F0, &qword_222C9DCA0);
  }

  v8 = v0[18];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = sub_222B61940(&qword_27D026708, &qword_27D0266F8, &qword_222C9DCA8, MEMORY[0x277D859F8]);
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_222BD6414;
    v14 = v0[11];

    return MEMORY[0x282200308](v14, v3, v12);
  }
}

uint64_t sub_222BD6FA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_222BD7010@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B8, &qword_222C9DBE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = type metadata accessor for EventStreamContext(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026668, &qword_222C9DB90);
  sub_222BD57BC(v1 + *(v10 + 52), v9);
  type metadata accessor for NowPlayingStreamStateMachine(0);
  v11 = swift_allocObject();
  v12 = v11 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  v13 = v11 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit;
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v11 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState) = 3;
  *(v11 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = 0;
  *(v11 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_lastPlayTimestamp) = 0;
  sub_222BD789C(v9, v11 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_context);
  (*(v4 + 16))(v6, v1, v3);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B0, &qword_222C9DBD0);
  sub_222B61940(&qword_27D026748, &qword_27D0266B8, &qword_222C9DBE0, MEMORY[0x277D859D8]);
  sub_222C9487C();
  v15 = *(v14 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026750, &unk_222C9DCE0);
  swift_allocObject();
  result = sub_222C9426C();
  *(a1 + v15) = result;
  *(a1 + *(v14 + 60)) = 0;
  *a1 = v11;
  return result;
}

uint64_t sub_222BD7278(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_222BD7298, 0, 0);
}

uint64_t sub_222BD7298()
{
  v1 = *(v0 + 184);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B0, &qword_222C9DBD0);
  *(v0 + 192) = v2;
  *(v0 + 200) = *(v1 + *(v2 + 56));
  if ((sub_222C9424C() & 1) == 0)
  {
    sub_222C9421C();
    goto LABEL_5;
  }

  v3 = *(v0 + 184);
  v4 = *(*(v0 + 192) + 60);
  *(v0 + 224) = v4;
  if (*(v3 + v4))
  {
    v5 = *(v0 + 176);
    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
LABEL_5:
    v6 = *(v0 + 8);

    return v6();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026738, &qword_222C9DCD8);
  v9 = sub_222B61940(&qword_27D026740, &qword_27D026738, &qword_222C9DCD8, MEMORY[0x277D859D0]);
  v10 = swift_task_alloc();
  *(v0 + 208) = v10;
  *v10 = v0;
  v10[1] = sub_222BD743C;

  return MEMORY[0x282200308](v0 + 56, v8, v9);
}

uint64_t sub_222BD743C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_222BD7884;
  }

  else
  {
    v2 = sub_222BD7550;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222BD7550()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  if (!v2)
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 184);
    sub_222B5EE44(v1, 0, *(v0 + 72), *(v0 + 80), *(v0 + 88));
    *(v20 + v19) = 1;
    v5 = sub_222BCFF2C();
    v21 = v5;
    v22 = *(v5 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = (v5 + 64);
      while (v23 < *(v21 + 16))
      {
        ++v23;
        v25 = *(v24 - 1);
        v26 = *v24;
        v27 = *(v24 - 3);
        v28 = *(v24 - 2);
        *(v0 + 96) = *(v24 - 4);
        *(v0 + 104) = v27;
        *(v0 + 112) = v28;
        *(v0 + 120) = v25;
        *(v0 + 128) = v26;

        sub_222C9422C();

        v24 += 5;
        if (v22 == v23)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_22;
    }

LABEL_13:

    goto LABEL_14;
  }

  v3 = *(v0 + 72);
  v4 = *(v0 + 88);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  sub_222BCFA8C((v0 + 16));
  v8 = v5;
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v5 + 64);
    while (v10 < *(v8 + 16))
    {
      ++v10;
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = *(v11 - 3);
      v15 = *(v11 - 2);
      *(v0 + 136) = *(v11 - 4);
      *(v0 + 144) = v14;
      *(v0 + 152) = v15;
      *(v0 + 160) = v12;
      *(v0 + 168) = v13;

      sub_222C9422C();

      v11 += 5;
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return MEMORY[0x282200308](v5, v6, v7);
  }

LABEL_6:

  if ((sub_222C9424C() & 1) == 0)
  {
LABEL_14:
    sub_222C9421C();
    goto LABEL_15;
  }

  v16 = *(v0 + 184);
  v17 = *(*(v0 + 192) + 60);
  *(v0 + 224) = v17;
  if ((*(v16 + v17) & 1) == 0)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026738, &qword_222C9DCD8);
    v32 = sub_222B61940(&qword_27D026740, &qword_27D026738, &qword_222C9DCD8, MEMORY[0x277D859D0]);
    v33 = swift_task_alloc();
    *(v0 + 208) = v33;
    *v33 = v0;
    v33[1] = sub_222BD743C;
    v5 = v0 + 56;
    v6 = v31;
    v7 = v32;

    return MEMORY[0x282200308](v5, v6, v7);
  }

  v18 = *(v0 + 176);
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
LABEL_15:
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_222BD789C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventStreamContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BD7900(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PartialRepetitionMetadata.__allocating_init(session:successClassification:comparisons:firstTurn:secondTurn:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = sub_222BD7DDC(a1, v13, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v14;
}

uint64_t PartialRepetitionMetadata.init(session:successClassification:comparisons:firstTurn:secondTurn:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_222BD7CCC(a1, v16, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v18;
}

uint64_t PartialRepetitionMetadata.deinit()
{
  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_session, type metadata accessor for FeaturisedSession);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_successClassification));

  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_firstTurn, type metadata accessor for FeaturisedTurn);
  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_secondTurn, type metadata accessor for FeaturisedTurn);
  return v0;
}

uint64_t PartialRepetitionMetadata.__deallocating_deinit()
{
  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_session, type metadata accessor for FeaturisedSession);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_successClassification));

  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_firstTurn, type metadata accessor for FeaturisedTurn);
  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_secondTurn, type metadata accessor for FeaturisedTurn);

  return swift_deallocClassInstance();
}

char *PartialRepetitionDefinition.generator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for PartialRepetitionInferenceGroundTruthGenerator(0, a1, a2, a4);
  result = sub_222C46A24(v4, v7, v8, v9);
  a3[3] = v6;
  a3[4] = &protocol witness table for PartialRepetitionInferenceGroundTruthGenerator<A>;
  *a3 = result;
  return result;
}

uint64_t sub_222BD7CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (a6 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_successClassification);
  v15[3] = a7;
  v15[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  sub_222B6544C(a1, a6 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_session, type metadata accessor for FeaturisedSession);
  *(a6 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_comparisons) = a3;
  sub_222B6544C(a4, a6 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_firstTurn, type metadata accessor for FeaturisedTurn);
  sub_222B6544C(a5, a6 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_secondTurn, type metadata accessor for FeaturisedTurn);
  return a6;
}

uint64_t sub_222BD7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PartialRepetitionMetadata(0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a2, a7);
  return sub_222BD7CCC(a1, v17, a3, a4, a5, v18, a7, a8);
}

uint64_t sub_222BD7EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PartialRepetitionMetadata(uint64_t a1)
{
  result = qword_27D026768;
  if (!qword_27D026768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222BD80DC(uint64_t a1)
{
  result = type metadata accessor for FeaturisedSession(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeaturisedTurn(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_222BD81F4()
{
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t sub_222BD8260(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t sub_222BD82B0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_222C94FDC();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_222BD8338@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_222C94FDC();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_222BD8390(uint64_t a1)
{
  v2 = sub_222BD8700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BD83CC(uint64_t a1)
{
  v2 = sub_222BD8700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactCollection.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026778, &qword_222C9DDE0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BD8700();
  sub_222C9535C();
  if (!v2)
  {
    v14 = v5;
    sub_222C94FEC();
    v12 = v7;
    v13 = v4;
    v8 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v26, v27);
    while ((sub_222C951CC() & 1) == 0)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      sub_222BD8754();
      sub_222C951BC();
      v28[6] = v22;
      v28[7] = v23;
      v28[8] = v24;
      v28[9] = v25;
      v28[2] = v18;
      v28[3] = v19;
      v28[4] = v20;
      v28[5] = v21;
      v28[0] = v16;
      v28[1] = v17;
      sub_222BD87A8();
      v9 = sub_222BD8D30(v28);
      MEMORY[0x223DC94A0](v9);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      sub_222C947AC();
      v8 = v29;
      __swift_project_boxed_opaque_existential_1(v26, v27);
    }

    (*(v14 + 8))(v12, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    *v15 = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_222BD8700()
{
  result = qword_27D026780;
  if (!qword_27D026780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026780);
  }

  return result;
}

unint64_t sub_222BD8754()
{
  result = qword_27D026788;
  if (!qword_27D026788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026788);
  }

  return result;
}

id sub_222BD87A8()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CBDB38]);

  v3 = sub_222C9448C();

  v4 = [v2 initWithIdentifier_];

  if (v0[3])
  {
    v5 = sub_222C9448C();
    [v4 setNamePrefix_];
  }

  if (v1[5])
  {
    v6 = sub_222C9448C();
    [v4 setGivenName_];
  }

  if (v1[7])
  {
    v7 = sub_222C9448C();
    [v4 setMiddleName_];
  }

  if (v1[9])
  {
    v8 = sub_222C9448C();
    [v4 setFamilyName_];
  }

  if (v1[11])
  {
    v9 = sub_222C9448C();
    [v4 setPreviousFamilyName_];
  }

  if (v1[13])
  {
    v10 = sub_222C9448C();
    [v4 setNameSuffix_];
  }

  if (v1[15])
  {
    v11 = sub_222C9448C();
    [v4 setNickname_];
  }

  if (v1[17])
  {
    v12 = sub_222C9448C();
    [v4 setOrganizationName_];
  }

  v36 = v4;
  v13 = v1[18];
  v14 = *(v13 + 16);
  if (v14)
  {
    v35 = v1;
    sub_222C94E1C();
    v15 = v13 + 72;
    do
    {
      v16 = objc_allocWithZone(MEMORY[0x277CBDAB0]);
      swift_bridgeObjectRetain_n();

      v17 = sub_222C9448C();
      v18 = [v16 initWithName_];

      v19 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v20 = sub_222C9448C();

      v21 = sub_222C9448C();

      [v19 initWithIdentifier:v20 label:v21 value:v18];

      sub_222C94DEC();
      sub_222C94E2C();
      sub_222C94E3C();
      sub_222C94DFC();
      v15 += 48;
      --v14;
    }

    while (v14);
    v1 = v35;
    v22 = v36;
  }

  else
  {
    v22 = v36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026808, &qword_222C9E0E0);
  v23 = sub_222C9470C();

  [v22 setContactRelations_];

  v24 = v1[19];
  v25 = *(v24 + 16);
  if (v25)
  {
    sub_222C94E1C();
    v26 = v24 + 72;
    do
    {
      v27 = objc_allocWithZone(MEMORY[0x277CBDB70]);
      swift_bridgeObjectRetain_n();

      v28 = sub_222C9448C();
      v29 = [v27 initWithStringValue_];

      v30 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v31 = sub_222C9448C();

      v32 = sub_222C9448C();

      [v30 initWithIdentifier:v31 label:v32 value:v29];

      sub_222C94DEC();
      sub_222C94E2C();
      sub_222C94E3C();
      sub_222C94DFC();
      v26 += 48;
      --v25;
    }

    while (v25);
  }

  v33 = sub_222C9470C();

  [v36 setPhoneNumbers_];

  return v36;
}

char *ContactCollection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026790, &qword_222C9DDE8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BD8700();
  sub_222C9536C();
  v26 = v6;
  sub_222C950AC();
  if (v7 >> 62)
  {
    v8 = sub_222C94C6C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
LABEL_13:
    v29 = v9;
    __swift_mutable_project_boxed_opaque_existential_1(v27, v27[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026798, &qword_222C9DDF0);
    sub_222BDA058();
    sub_222BDA0BC();
    sub_222C951DC();
    (*(v4 + 8))(v26, v3);

    return __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  v29 = MEMORY[0x277D84F90];
  result = sub_222B4CBB4(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v24 = v4;
    v25 = v3;
    v11 = 0;
    v9 = v29;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223DC9B30](v11, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      v13 = v12;
      sub_222BD9940(v12, v28);

      v29 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_222B4CBB4((v14 > 1), v15 + 1, 1);
        v9 = v29;
      }

      ++v11;
      *(v9 + 16) = v15 + 1;
      v16 = (v9 + 160 * v15);
      v17 = v28[1];
      v16[2] = v28[0];
      v16[3] = v17;
      v18 = v28[2];
      v19 = v28[3];
      v20 = v28[5];
      v16[6] = v28[4];
      v16[7] = v20;
      v16[4] = v18;
      v16[5] = v19;
      v21 = v28[6];
      v22 = v28[7];
      v23 = v28[9];
      v16[10] = v28[8];
      v16[11] = v23;
      v16[8] = v21;
      v16[9] = v22;
    }

    while (v8 != v11);
    v3 = v25;
    v4 = v24;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_222BD905C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6D614E6E65766967;
    v7 = 0x614E656C6464696DLL;
    if (a1 != 3)
    {
      v7 = 0x614E796C696D6166;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x66657250656D616ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6F6974616C6572;
    if (a1 != 9)
    {
      v1 = 0x6D754E656E6F6870;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000012;
    v3 = 0x66667553656D616ELL;
    if (a1 != 6)
    {
      v3 = 0x656D616E6B63696ELL;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_222BD91D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0267F0, &qword_222C9E0D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BDADEC();
  sub_222C9536C();
  LOBYTE(v11) = 0;
  sub_222C950CC();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_222C950CC();
    LOBYTE(v11) = 2;
    sub_222C950CC();
    LOBYTE(v11) = 3;
    sub_222C950CC();
    LOBYTE(v11) = 4;
    sub_222C950CC();
    LOBYTE(v11) = 5;
    sub_222C950CC();
    LOBYTE(v11) = 6;
    sub_222C950CC();
    LOBYTE(v11) = 7;
    sub_222C950CC();
    LOBYTE(v11) = 8;
    sub_222C950CC();
    v11 = *(v3 + 144);
    HIBYTE(v10) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0267D8, &qword_222C9E0D0);
    sub_222BDAECC(&qword_27D0267F8, sub_222BDAF44, MEMORY[0x277D83948]);
    sub_222C9512C();
    v11 = *(v3 + 152);
    HIBYTE(v10) = 10;
    sub_222C9512C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_222BD94F4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026838, &qword_222C9E298);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BDB60C();
  sub_222C9536C();
  v8[15] = 0;
  sub_222C950EC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_222C950CC();
  v8[13] = 2;
  sub_222C950EC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_222BD969C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222BDA324(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222BD96D0(uint64_t a1)
{
  v2 = sub_222BDADEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BD970C(uint64_t a1)
{
  v2 = sub_222BDADEC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_222BD9748@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_222BDA6CC(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_222BD97BC()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_222BD9814@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_222BDB2A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_222BD983C(uint64_t a1)
{
  v2 = sub_222BDB60C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BD9878(uint64_t a1)
{
  v2 = sub_222BDB60C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_222BD98B4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_222BDB3C0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_222BD9940@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  v3 = [a1 identifier];
  v4 = sub_222C9449C();
  v107 = v5;
  v108 = v4;

  v6 = [v2 namePrefix];
  v7 = sub_222C9449C();
  v105 = v8;
  v106 = v7;

  v9 = [v2 givenName];
  v10 = sub_222C9449C();
  v103 = v11;
  v104 = v10;

  v12 = [v2 middleName];
  v13 = sub_222C9449C();
  v101 = v14;
  v102 = v13;

  v15 = [v2 familyName];
  v16 = sub_222C9449C();
  v99 = v17;
  v100 = v16;

  v18 = [v2 previousFamilyName];
  v19 = sub_222C9449C();
  v97 = v20;
  v98 = v19;

  v21 = [v2 nameSuffix];
  v22 = sub_222C9449C();
  v95 = v23;
  v96 = v22;

  v24 = [v2 nickname];
  v25 = sub_222C9449C();
  v93 = v26;
  v94 = v25;

  v27 = [v2 organizationName];
  v28 = sub_222C9449C();
  v91 = v29;
  v92 = v28;

  v30 = [v2 contactRelations];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026808, &qword_222C9E0E0);
  v32 = sub_222C9471C();

  if (v32 >> 62)
  {
    v33 = sub_222C94C6C();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v127[0] = MEMORY[0x277D84F90];
    result = sub_222B4CBD4(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v88 = v31;
    v89 = v2;
    v36 = 0;
    v37 = v127[0];
    v110 = v32 & 0xC000000000000001;
    v112 = v33;
    v114 = v32;
    do
    {
      v38 = v37;
      if (v110)
      {
        v39 = MEMORY[0x223DC9B30](v36, v32);
      }

      else
      {
        v39 = *(v32 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = [v39 identifier];
      v42 = sub_222C9449C();
      v44 = v43;

      v45 = [v40 label];
      if (v45)
      {
        v46 = v45;
        v47 = sub_222C9449C();
        v49 = v48;
      }

      else
      {
        v47 = 0;
        v49 = 0;
      }

      v50 = [v40 value];
      v51 = [v50 name];

      v52 = sub_222C9449C();
      v54 = v53;

      v37 = v38;
      v127[0] = v38;
      v55 = *(v38 + 16);
      v56 = *(v37 + 24);
      if (v55 >= v56 >> 1)
      {
        sub_222B4CBD4((v56 > 1), v55 + 1, 1);
        v37 = v127[0];
      }

      ++v36;
      *(v37 + 16) = v55 + 1;
      v57 = (v37 + 48 * v55);
      v57[4] = v42;
      v57[5] = v44;
      v57[6] = v47;
      v57[7] = v49;
      v57[8] = v52;
      v57[9] = v54;
      v32 = v114;
    }

    while (v112 != v36);
    v90 = v37;

    v2 = v89;
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    v90 = MEMORY[0x277D84F90];
  }

  v58 = [v2 phoneNumbers];
  v59 = sub_222C9471C();

  if (!(v59 >> 62))
  {
    v60 = v59;
    v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_19;
    }

LABEL_33:

    *&v117 = v108;
    *(&v117 + 1) = v107;
    *&v118 = v106;
    *(&v118 + 1) = v105;
    *&v119 = v104;
    *(&v119 + 1) = v103;
    *&v120 = v102;
    *(&v120 + 1) = v101;
    *&v121 = v100;
    *(&v121 + 1) = v99;
    *&v122 = v98;
    *(&v122 + 1) = v97;
    *&v123 = v96;
    *(&v123 + 1) = v95;
    *&v124 = v94;
    *(&v124 + 1) = v93;
    *&v125 = v92;
    *(&v125 + 1) = v91;
    *&v126 = v90;
    *(&v126 + 1) = v34;
    v127[0] = v108;
    v127[1] = v107;
    v127[2] = v106;
    v127[3] = v105;
    v127[4] = v104;
    v127[5] = v103;
    v127[6] = v102;
    v127[7] = v101;
    v127[8] = v100;
    v127[9] = v99;
    v127[10] = v98;
    v127[11] = v97;
    v127[12] = v96;
    v127[13] = v95;
    v127[14] = v94;
    v127[15] = v93;
    v127[16] = v92;
    v127[17] = v91;
    v127[18] = v90;
    v127[19] = v34;
    sub_222BDAE94(&v117, &v116);
    result = sub_222BD8D30(v127);
    v83 = v124;
    a2[6] = v123;
    a2[7] = v83;
    v84 = v126;
    a2[8] = v125;
    a2[9] = v84;
    v85 = v120;
    a2[2] = v119;
    a2[3] = v85;
    v86 = v122;
    a2[4] = v121;
    a2[5] = v86;
    v87 = v118;
    *a2 = v117;
    a2[1] = v87;
    return result;
  }

  v60 = v59;
  v61 = sub_222C94C6C();
  if (!v61)
  {
    goto LABEL_33;
  }

LABEL_19:
  v127[0] = v34;
  result = sub_222B4CBD4(0, v61 & ~(v61 >> 63), 0);
  if ((v61 & 0x8000000000000000) == 0)
  {
    v62 = 0;
    v34 = v127[0];
    v63 = v60;
    v111 = v60 & 0xC000000000000001;
    v113 = v61;
    v115 = v60;
    do
    {
      if (v111)
      {
        v64 = MEMORY[0x223DC9B30](v62, v63);
      }

      else
      {
        v64 = *(v63 + 8 * v62 + 32);
      }

      v65 = v64;
      v66 = [v64 identifier];
      v67 = sub_222C9449C();
      v69 = v68;

      v70 = [v65 label];
      if (v70)
      {
        v71 = v70;
        v72 = sub_222C9449C();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0;
      }

      v75 = [v65 value];
      v76 = [v75 stringValue];

      v77 = sub_222C9449C();
      v79 = v78;

      v127[0] = v34;
      v81 = *(v34 + 16);
      v80 = *(v34 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_222B4CBD4((v80 > 1), v81 + 1, 1);
        v34 = v127[0];
      }

      ++v62;
      *(v34 + 16) = v81 + 1;
      v82 = (v34 + 48 * v81);
      v82[4] = v67;
      v82[5] = v69;
      v82[6] = v72;
      v82[7] = v74;
      v82[8] = v77;
      v82[9] = v79;
      v63 = v115;
    }

    while (v113 != v62);
    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_222BDA058()
{
  result = qword_27D0267A0;
  if (!qword_27D0267A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026798, &qword_222C9DDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267A0);
  }

  return result;
}

unint64_t sub_222BDA0BC()
{
  result = qword_27D0267A8;
  if (!qword_27D0267A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267A8);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_222BDA14C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222BDA194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222BDA220()
{
  result = qword_27D0267B0;
  if (!qword_27D0267B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267B0);
  }

  return result;
}

unint64_t sub_222BDA278()
{
  result = qword_27D0267B8;
  if (!qword_27D0267B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267B8);
  }

  return result;
}

unint64_t sub_222BDA2D0()
{
  result = qword_27D0267C0;
  if (!qword_27D0267C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267C0);
  }

  return result;
}

uint64_t sub_222BDA324(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000222CAB910 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869 || (sub_222C951FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222CAB930 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xE900000000000073 || (sub_222C951FC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562)
  {

    return 10;
  }

  else
  {
    v5 = sub_222C951FC();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_222BDA6CC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0267C8, &qword_222C9E0C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  v9 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_222BDADEC();
  sub_222C9535C();
  if (v2)
  {
    v58 = v2;
    v53 = 0;
    v54 = 0;
    v51 = 0;
    v52 = 0;
    v55 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
    v49 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v50 = MEMORY[0x277D84F90];
LABEL_4:
    v17 = MEMORY[0x277D84F90];
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    *&v70 = v16;
    *(&v70 + 1) = v15;
    *&v71 = v14;
    *(&v71 + 1) = v13;
    *&v72 = v12;
    *(&v72 + 1) = v11;
    v73 = v10;
    v74 = v49;
    v75 = v57;
    v76 = v56;
    v77 = v55;
    v78 = v52;
    v79 = v54;
    v80 = v51;
    v81 = v53;
    v82 = v50;
    v83 = v17;
    return sub_222BD8D30(&v70);
  }

  LOBYTE(v70) = 0;
  *&v47 = sub_222C9501C();
  *(&v47 + 1) = v19;
  LOBYTE(v70) = 1;
  *&v46 = sub_222C9501C();
  *(&v46 + 1) = v20;
  LOBYTE(v70) = 2;
  *&v45 = sub_222C9501C();
  *(&v45 + 1) = v21;
  LOBYTE(v70) = 3;
  v44 = sub_222C9501C();
  v49 = v22;
  LOBYTE(v70) = 4;
  *&v57 = sub_222C9501C();
  *(&v57 + 1) = v23;
  LOBYTE(v70) = 5;
  *&v56 = sub_222C9501C();
  *(&v56 + 1) = v24;
  LOBYTE(v70) = 6;
  *&v55 = sub_222C9501C();
  *(&v55 + 1) = v25;
  LOBYTE(v70) = 7;
  v52 = sub_222C9501C();
  v54 = v26;
  LOBYTE(v70) = 8;
  v27 = sub_222C9501C();
  v58 = 0;
  v43 = a2;
  v51 = v27;
  v53 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0267D8, &qword_222C9E0D0);
  LOBYTE(v59) = 9;
  sub_222BDAECC(&qword_27D0267E0, sub_222BDAE40, MEMORY[0x277D83978]);
  v29 = v58;
  sub_222C9507C();
  v58 = v29;
  if (v29)
  {
    (*(v6 + 8))(v8, v5);
    v50 = MEMORY[0x277D84F90];
    v15 = *(&v47 + 1);
    v16 = v47;
    v13 = *(&v46 + 1);
    v14 = v46;
    v11 = *(&v45 + 1);
    v12 = v45;
    v10 = v44;
    goto LABEL_4;
  }

  v50 = v70;
  v69 = 10;
  sub_222C9507C();
  v58 = 0;
  (*(v6 + 8))(v8, v5);
  v42 = v84;
  v30 = v47;
  v59 = v47;
  v31 = v46;
  v60 = v46;
  v32 = v45;
  v61 = v45;
  v33 = v44;
  v34 = v49;
  *&v62 = v44;
  *(&v62 + 1) = v49;
  v63 = v57;
  v64 = v56;
  v65 = v55;
  *&v66 = v52;
  *(&v66 + 1) = v54;
  *&v67 = v51;
  *(&v67 + 1) = v53;
  *&v68 = v50;
  *(&v68 + 1) = v84;
  sub_222BDAE94(&v59, &v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  v70 = v30;
  v71 = v31;
  v72 = v32;
  v73 = v33;
  v74 = v34;
  v75 = v57;
  v76 = v56;
  v77 = v55;
  v78 = v52;
  v79 = v54;
  v80 = v51;
  v81 = v53;
  v82 = v50;
  v83 = v42;
  result = sub_222BD8D30(&v70);
  v35 = v66;
  v36 = v43;
  v43[6] = v65;
  v36[7] = v35;
  v37 = v68;
  v36[8] = v67;
  v36[9] = v37;
  v38 = v62;
  v36[2] = v61;
  v36[3] = v38;
  v39 = v64;
  v36[4] = v63;
  v36[5] = v39;
  v40 = v60;
  *v36 = v59;
  v36[1] = v40;
  return result;
}

unint64_t sub_222BDADEC()
{
  result = qword_27D0267D0;
  if (!qword_27D0267D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267D0);
  }

  return result;
}

unint64_t sub_222BDAE40()
{
  result = qword_27D0267E8;
  if (!qword_27D0267E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267E8);
  }

  return result;
}

uint64_t sub_222BDAECC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0267D8, &qword_222C9E0D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222BDAF44()
{
  result = qword_27D026800;
  if (!qword_27D026800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactCollection.CodableContact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContactCollection.CodableContact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_222BDB0FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_222BDB144(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_222BDB1A4()
{
  result = qword_27D026810;
  if (!qword_27D026810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026810);
  }

  return result;
}

unint64_t sub_222BDB1FC()
{
  result = qword_27D026818;
  if (!qword_27D026818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026818);
  }

  return result;
}

unint64_t sub_222BDB254()
{
  result = qword_27D026820;
  if (!qword_27D026820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026820);
  }

  return result;
}

uint64_t sub_222BDB2A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222BDB3C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026828, &qword_222C9E290);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BDB60C();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  v9 = sub_222C9503C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_222C9501C();
  v21 = v12;
  v23 = 2;
  v13 = sub_222C9503C();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_222BDB60C()
{
  result = qword_27D026830;
  if (!qword_27D026830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026830);
  }

  return result;
}

unint64_t sub_222BDB674()
{
  result = qword_27D026840;
  if (!qword_27D026840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026840);
  }

  return result;
}

unint64_t sub_222BDB6CC()
{
  result = qword_27D026848;
  if (!qword_27D026848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026848);
  }

  return result;
}

unint64_t sub_222BDB724()
{
  result = qword_27D026850;
  if (!qword_27D026850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026850);
  }

  return result;
}

void *sub_222BDB778(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026870, &qword_222C9E450);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for PhoneCallGroundTruth(0);
  MEMORY[0x28223BE20](v10);
  v28 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v27 = &v24 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = a3 + 32;
  v24 = v13;
  v18 = (v13 + 48);
  v19 = MEMORY[0x277D84F90];
  v25 = v10;
  v26 = a2;
  while (1)
  {
    a1(v17, v14);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_222B4FCD4(v9, &qword_27D026870, &qword_222C9E450);
    }

    else
    {
      v20 = v27;
      sub_222BDE870(v9, v27, type metadata accessor for PhoneCallGroundTruth);
      sub_222BDE870(v20, v28, type metadata accessor for PhoneCallGroundTruth);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_222B4A0E0(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_222B4A0E0((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_222BDE870(v28, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for PhoneCallGroundTruth);
      v10 = v25;
    }

    v17 += 88;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_222BDBA3C(void (*a1)(__int128 *), uint64_t a2)
{
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026878, &qword_222C9E458);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  sub_222C94E9C();
  sub_222C94FBC();
  v13 = v25;
  if (v25)
  {
    v14 = v26;
    v21 = v7;
    v15 = (v7 + 48);
    v16 = MEMORY[0x277D84F90];
    v22 = a2;
    while (1)
    {
      v24 = v13;
      v25 = v13;
      v26 = v14;
      v27(&v25);
      if (v2)
      {
        break;
      }

      swift_unknownObjectRelease();
      if ((*v15)(v6, 1, v23) == 1)
      {
        sub_222B4FCD4(v6, &qword_27D026878, &qword_222C9E458);
      }

      else
      {
        sub_222BDE7B0(v6, v12);
        sub_222BDE7B0(v12, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_222B4A2F0(0, v16[2] + 1, 1, v16);
        }

        v18 = v16[2];
        v17 = v16[3];
        if (v18 >= v17 >> 1)
        {
          v16 = sub_222B4A2F0((v17 > 1), v18 + 1, 1, v16);
        }

        v16[2] = v18 + 1;
        sub_222BDE7B0(v9, v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18);
      }

      sub_222C94FBC();
      v13 = v25;
      v14 = v26;
      if (!v25)
      {
        goto LABEL_13;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_13:
  }

  return v16;
}

char *sub_222BDBD24(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 64);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    v10 = *(v6 - 3);
    v11 = *(v6 - 2);
    v28[0] = *(v6 - 4);
    v28[1] = v10;
    v28[2] = v11;
    v28[3] = v8;
    v28[4] = v9;

    a1(&v23, v28);
    if (v4)
    {
      break;
    }

    v13 = v23;
    v12 = v24;
    v14 = v25;
    v15 = v26;
    if (v25)
    {
      v29 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_222B4A47C(0, *(v7 + 2) + 1, 1, v7);
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      v18 = v7;
      if (v17 >= v16 >> 1)
      {
        v18 = sub_222B4A47C((v16 > 1), v17 + 1, 1, v7);
      }

      *(v18 + 2) = v17 + 1;
      v7 = v18;
      v19 = &v18[40 * v17];
      v19[32] = v13 & 1;
      *(v19 + 5) = v12;
      *(v19 + 6) = v14;
      v20 = v29;
      *(v19 + 7) = v15;
      *(v19 + 8) = v20;
    }

    else
    {
      sub_222BDE820(v23, v24, 0, v26, v27);
    }

    v6 += 5;
    if (!--v5)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_222BDBEE4(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  (a1)(v16, a3 + 32, a2);
  while (!v3)
  {
    if (v17)
    {
      v13 = v16[0];
      v14 = v16[1];
      v15 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_222B4A59C(0, v6[2] + 1, 1, v6);
      }

      v10 = v6[2];
      v9 = v6[3];
      if (v10 >= v9 >> 1)
      {
        v6 = sub_222B4A59C((v9 > 1), v10 + 1, 1, v6);
      }

      v6[2] = v10 + 1;
      v11 = &v6[6 * v10];
      v11[3] = v14;
      v11[4] = v15;
      v11[2] = v13;
    }

    else
    {
      sub_222B4FCD4(v16, &qword_27D026860, &qword_222C9E440);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    (a1)(v16, v7, v8);
  }

  return v6;
}

void *sub_222BDC068(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C30, &qword_222C96A08);
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      MEMORY[0x223DC94A0](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      sub_222C947AC();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

void *sub_222BDC1F4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F40, &qword_222C9B790);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_222C9367C() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_222B4FCD4(v9, &qword_27D025F40, &qword_222C9B790);
    }

    else
    {
      v20 = v28;
      sub_222BDE870(v9, v28, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      sub_222BDE870(v20, v30, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_222B4B074(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_222B4B074((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_222BDE870(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_222BDC510(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025EA8, &qword_222C9B2A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_222C9367C() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_222B4FCD4(v9, &qword_27D025EA8, &qword_222C9B2A0);
    }

    else
    {
      v20 = v28;
      sub_222BDE870(v9, v28, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      sub_222BDE870(v20, v30, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_222B4B09C(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_222B4B09C((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_222BDE870(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_222BDC82C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  if (v6)
  {
    v9 = 0;
    do
    {
      v14 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v16, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v14;
        }

        if (v16)
        {
          break;
        }

        if (v9 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x223DC94A0](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      sub_222C947AC();
      result = v17;
    }

    while (v9 != v6);
  }

  return result;
}

void *sub_222BDC9B8(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026868, &qword_222C9E448);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for MessagesGroundTruth(0);
  MEMORY[0x28223BE20](v10);
  v28 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v27 = &v24 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = a3 + 32;
  v24 = v13;
  v18 = (v13 + 48);
  v19 = MEMORY[0x277D84F90];
  v25 = v10;
  v26 = a2;
  while (1)
  {
    a1(v17, v14);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_222B4FCD4(v9, &qword_27D026868, &qword_222C9E448);
    }

    else
    {
      v20 = v27;
      sub_222BDE870(v9, v27, type metadata accessor for MessagesGroundTruth);
      sub_222BDE870(v20, v28, type metadata accessor for MessagesGroundTruth);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_222B4B42C(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_222B4B42C((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_222BDE870(v28, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for MessagesGroundTruth);
      v10 = v25;
    }

    v17 += 88;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t PLUSContactSuggesterRuntimeLogHelper.__allocating_init(logTarget:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_222BDE50C(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

uint64_t PLUSContactSuggesterRuntimeLogHelper.init(logTarget:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_222BDE46C(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

void sub_222BDCDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D59C78]) init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D59C90]) init];
  if (!v7)
  {

LABEL_9:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v15 = sub_222C9431C();
    __swift_project_value_buffer(v15, qword_280FE2340);
    v22 = sub_222C942FC();
    v16 = sub_222C94A4C();
    if (os_log_type_enabled(v22, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_222B39000, v22, v16, "Failed to create SELF message templates", v17, 2u);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    goto LABEL_18;
  }

  v22 = v7;
  sub_222C936BC();
  v8 = sub_222C937FC();
  v9 = sub_222C2DCC0(v8);
  v11 = v10;

  if (v9)
  {
    [v22 setUsoPersonQuery:v9];
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = MEMORY[0x277D84FA0];
    }

    v13 = sub_222C2E330(v12);

    [v22 setDomain:v13];
    [v6 setStartedOrChanged_];
    sub_222BA1904(v6, a3);
    sub_222BA1CBC(v11, a3);

    v14 = v9;
    goto LABEL_19;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v18 = sub_222C9431C();
  __swift_project_value_buffer(v18, qword_280FE2340);
  v19 = sub_222C942FC();
  v20 = sub_222C94A4C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_222B39000, v19, v20, "Failed to convert USOPerson entity to SELF message", v21, 2u);
    MEMORY[0x223DCA8C0](v21, -1, -1);
  }

LABEL_18:
  v14 = v22;
LABEL_19:
}

void sub_222BDD098(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D59C78]) init];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D59C88]) init];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x28223BE20](v6);
      v19[2] = a2;
      v8 = sub_222BDC82C(sub_222BDE5F8, v19, a1, type metadata accessor for PlusContactSuggestion);
      if (v8 >> 62)
      {
        v9 = sub_222C94C6C();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = *(a1 + 16);
      if (v9 != v10)
      {
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v11 = sub_222C9431C();
        __swift_project_value_buffer(v11, qword_280FE2340);
        v12 = sub_222C942FC();
        v13 = sub_222C94A4C();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_222B39000, v12, v13, "Failed to convert all of the matching suggestions to SELF messages. Emitting a partial result.", v14, 2u);
          MEMORY[0x223DCA8C0](v14, -1, -1);
        }
      }

      sub_222BDE62C();
      v15 = sub_222C9470C();

      [v7 setResults_];

      [v7 setHasMatchingResults_];
      [v5 setEnded_];
      sub_222BA1904(v5, a2);

      return;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v16 = sub_222C9431C();
  __swift_project_value_buffer(v16, qword_280FE2340);
  v20 = sub_222C942FC();
  v17 = sub_222C94A4C();
  if (os_log_type_enabled(v20, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_222B39000, v20, v17, "Failed to create SELF message templates", v18, 2u);
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }
}

void sub_222BDD3D4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59C78]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D59C80]) init];
    if (v4)
    {
      oslog = v4;
      [v4 setReason:3];
      [v3 setFailed_];
      sub_222BA1904(v3, a1);

      goto LABEL_9;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v5 = sub_222C9431C();
  __swift_project_value_buffer(v5, qword_280FE2340);
  oslog = sub_222C942FC();
  v6 = sub_222C94A4C();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_222B39000, oslog, v6, "Failed to create SELF message templates", v7, 2u);
    MEMORY[0x223DCA8C0](v7, -1, -1);
  }

LABEL_9:
}

void sub_222BDD544(char a1, char a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D59C98]) init];
  if (v6)
  {
    v10 = v6;
    [v6 setIsForcePromptUsed:a2 & 1];
    [v10 setIsPlusContactSuggesterEnabled:a1 & 1];
    sub_222BA1910(v10, a3);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v7 = sub_222C9431C();
    __swift_project_value_buffer(v7, qword_280FE2340);
    v10 = sub_222C942FC();
    v8 = sub_222C94A4C();
    if (os_log_type_enabled(v10, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_222B39000, v10, v8, "Failed to create SELF message templates", v9, 2u);
      MEMORY[0x223DCA8C0](v9, -1, -1);
    }
  }
}

void sub_222BDD698(NSObject *a1, int a2, int a3, uint64_t a4)
{
  v51 = a2;
  v52 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v45[-v11];
  v13 = sub_222C9367C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v45[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v45[-v21];
  MEMORY[0x28223BE20](v23);
  v50 = &v45[-v24];
  v25 = [objc_allocWithZone(MEMORY[0x277D59CA0]) init];
  if (v25)
  {
    v46 = a3;
    v48 = v25;
    v49 = v4;
    v26 = a4;
    v27 = *(v14 + 16);
    v47 = v26;
    v27(v22);
    (v27)(v19, v52, v13);
    (v27)(v16, v22, v13);
    sub_222C9360C();
    sub_222C42B54(v16, v9);
    v28 = *(v14 + 8);
    v28(v19, v13);
    v28(v22, v13);
    v29 = *(v14 + 48);
    if (v29(v9, 1, v13))
    {
      sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
      v30 = 1;
    }

    else
    {
      (*(v14 + 32))(v12, v9, v13);
      v30 = 0;
    }

    (*(v14 + 56))(v12, v30, 1, v13);
    if (v29(v12, 1, v13) == 1)
    {
      sub_222B4FCD4(v12, &unk_27D026290, &qword_222C96B40);
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v35 = sub_222C9431C();
      __swift_project_value_buffer(v35, qword_280FE2340);
      v36 = sub_222C942FC();
      v37 = sub_222C94A3C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_222B39000, v36, v37, "Failed to create a combined UUID for the suggestionId and plusId", v38, 2u);
        MEMORY[0x223DCA8C0](v38, -1, -1);
      }
    }

    else
    {
      v39 = v50;
      (*(v14 + 32))(v50, v12, v13);
      v40 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v41 = sub_222C9361C();
      v42 = [v40 initWithNSUUID_];

      v43 = v28;
      v44 = v48;
      [v48 setSuggestionId_];

      [v44 setIsDuplicateSuggestion_];
      [v44 setIsSuggestionPresentInModelOutput_];
      sub_222BA1AD4(v44, v47);

      v43(v39, v13);
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v31 = sub_222C9431C();
    __swift_project_value_buffer(v31, qword_280FE2340);
    v52 = sub_222C942FC();
    v32 = sub_222C94A4C();
    if (os_log_type_enabled(v52, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_222B39000, v52, v32, "Failed to create SELF message templates", v33, 2u);
      MEMORY[0x223DCA8C0](v33, -1, -1);
    }

    v34 = v52;
  }
}

void static PLUSContactSuggesterRuntimeLogHelper.derivePlusLoggingId(requestId:)()
{
  v0 = objc_opt_self();
  v1 = sub_222C9361C();
  v2 = [v0 derivedIdentifierForComponent:19 fromSourceIdentifier:v1];

  sub_222C9363C();
}

uint64_t sub_222BDDCD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = sub_222C9361C();
  v10 = [v8 derivedIdentifierForComponent:19 fromSourceIdentifier:v9];

  sub_222C9363C();
  v11 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    if (v13)
    {
      v14 = v13;
      v15 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v15)
      {
        v16 = v15;
        [v15 setComponent_];
        v17 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v31 = v2;
        v18 = a1;
        v19 = v17;
        v20 = sub_222C9361C();
        v21 = [v19 initWithNSUUID_];

        [v16 setUuid_];
        [v14 setComponent:1];
        v22 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v23 = sub_222C9361C();
        v24 = v22;
        a1 = v18;
        v25 = [v24 initWithNSUUID_];

        [v14 setUuid:v25];
        [v12 setSource:v16];
        [v12 setTarget:v14];
        __swift_project_boxed_opaque_existential_1((*(v31 + 16) + 16), *(*(v31 + 16) + 40));
        sub_222C93F3C();

        goto LABEL_12;
      }
    }

    else
    {
      v14 = v12;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v26 = sub_222C9431C();
  __swift_project_value_buffer(v26, qword_280FE2340);
  v14 = sub_222C942FC();
  v27 = sub_222C94A4C();
  if (os_log_type_enabled(v14, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_222B39000, v14, v27, "Failed to create RequestLink SELF message templates. Skipping Emission.", v28, 2u);
    MEMORY[0x223DCA8C0](v28, -1, -1);
  }

LABEL_12:

  return (*(v5 + 32))(a1, v7, v4);
}

uint64_t PLUSContactSuggesterRuntimeLogHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222BDE0AC(uint64_t a1)
{
  sub_222C9403C();
  type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
  v1 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v2 = swift_allocObject();
  result = sub_222B505F4(&v4, v2 + 16);
  *(v1 + 16) = v2;
  qword_27D026858 = v1;
  return result;
}

void static PLUSContactSuggesterRuntimeLogHelpers.logPlusContactSuggesterQuery(queryPerson:plusId:)(uint64_t a1, uint64_t a2)
{
  if (qword_27D024720 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  sub_222BDCDBC(a1, 0, a2);
}

void static PLUSContactSuggesterRuntimeLogHelpers.logPlusContactSuggesterResult(matchingSuggestions:plusId:)(uint64_t a1, uint64_t a2)
{
  if (qword_27D024720 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  sub_222BDD098(a1, a2);
}

void static PLUSContactSuggesterRuntimeLogHelpers.logPlusContactSuggesterFailure(plusId:)(uint64_t a1)
{
  if (qword_27D024720 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_222BDD3D4(a1);
}

void static PLUSContactSuggesterRuntimeLogHelpers.logPlusContactSuggesterRequestMetadata(isPlusSuggesterEnabled:isForcePromptUsed:plusId:)(char a1, char a2, uint64_t a3)
{
  if (qword_27D024720 != -1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a3;
    swift_once();
    a1 = v3;
    a2 = v4;
    a3 = v5;
  }

  sub_222BDD544(a1 & 1, a2 & 1, a3);
}

void static PLUSContactSuggesterRuntimeLogHelpers.logPlusContactSuggesterSuggestionMetadata(suggestionId:isDuplicateSuggestion:isSuggestionPresentInModelOutput:plusId:)(NSObject *a1, char a2, char a3, uint64_t a4)
{
  if (qword_27D024720 != -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a4;
    v7 = a3;
    swift_once();
    a2 = v5;
    a1 = v4;
    a3 = v7;
    a4 = v6;
  }

  sub_222BDD698(a1, a2 & 1, a3 & 1, a4);
}

void static PLUSContactSuggesterRuntimeLogHelpers.derivePlusLoggingId(requestId:)()
{
  v0 = objc_opt_self();
  v1 = sub_222C9361C();
  v2 = [v0 derivedIdentifierForComponent:19 fromSourceIdentifier:v1];

  sub_222C9363C();
}

uint64_t static PLUSContactSuggesterRuntimeLogHelpers.logPlusRequestLink(requestId:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D024720 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_222BDDCD0(a1);
}

uint64_t sub_222BDE46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for SELFEventLogEmitters();
  v8 = swift_allocObject();
  sub_222B505F4(&v10, v8 + 16);
  *(a2 + 16) = v8;
  return a2;
}

uint64_t sub_222BDE50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_222BDE46C(v9, v10, a3, a4);
}

NSObject *sub_222BDE5F8@<X0>(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  result = sub_222C2E5DC(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_222BDE62C()
{
  result = qword_280FDB758;
  if (!qword_280FDB758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FDB758);
  }

  return result;
}

uint64_t sub_222BDE7B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_222BDE820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_222BDE870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CoreAnalyticsLogHelper.__allocating_init(logLevel:)(char *a1)
{
  v2 = sub_222C93B9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  (*(v3 + 104))(v5, *MEMORY[0x277D5FAC0], v2);
  v7 = sub_222C93B8C();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    sub_222C93B4C();
  }

  v8(a1, v2);
  return v6;
}

uint64_t CoreAnalyticsLogHelper.init(logLevel:)(char *a1)
{
  v2 = v1;
  v4 = sub_222C93B9C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D5FAC0], v4, v6);
  v9 = sub_222C93B8C();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    sub_222C93B4C();
  }

  v10(a1, v4);
  return v2;
}

unint64_t sub_222BDEBC8()
{
  result = qword_280FDF410[0];
  if (!qword_280FDF410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FDF410);
  }

  return result;
}

uint64_t sub_222BDEC34(char a1)
{
  if (qword_280FDF1F0 != -1)
  {
    swift_once();
  }

  v5 = &type metadata for PIMSProcessingState;
  v6 = sub_222BDEBC8();
  v3[0] = 0xD000000000000013;
  v3[1] = 0x8000000222CAB9A0;
  v4 = a1;
  sub_222C93B5C();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_222BDEDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v50 = a6;
  v52 = a3;
  v51 = a1;
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a4[1];
  v49 = *a4;
  v16 = a4[3];
  v48 = a4[2];
  v47 = v16;
  v17 = *a5;
  v18 = a5[1];
  v20 = a5[2];
  v19 = a5[3];
  sub_222B43E3C(a2, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
  if (swift_dynamicCast())
  {
    v46 = a7;

    v45 = v17;
    v43 = v18;
    v44 = v20;
    sub_222B44C10(v17, v18, v50, v55);
    v21 = v55[0];
    v22 = v55[1];
    v23 = v55[2];
    v24 = v55[3];
    (*(v12 + 16))(v14, v51, v11);
    if (v15)
    {
      v25 = v47;

      sub_222B450E8(v21, v22, v23, v24);
      v21 = v49;
      v23 = v48;
      v24 = v25;
    }

    else
    {
      v15 = v22;
    }

    v37 = v46;
    (*(v12 + 32))(v46, v14, v11);
    v38 = type metadata accessor for MessagesGroundTruth(0);
    *(v37 + v38[5]) = 0;
    *(v37 + v38[6]) = v52;
    v39 = (v37 + v38[7]);
    *v39 = v21;
    v39[1] = v15;
    v39[2] = v23;
    v39[3] = v24;
    v40 = (v37 + v38[8]);
    v41 = v43;
    *v40 = v45;
    v40[1] = v41;
    v40[2] = v44;
    v40[3] = v19;
    (*(*(v38 - 1) + 56))(v37, 0, 1, v38);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v26 = sub_222C9431C();
    __swift_project_value_buffer(v26, qword_280FE2340);
    sub_222B45038(a2, v55);
    v27 = sub_222C942FC();
    v28 = sub_222C94A4C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v54 = v30;
      *v29 = 136315138;
      sub_222B45038(v55, v53);
      v31 = sub_222C944EC();
      v33 = v32;
      sub_222B45094(v55);
      v34 = sub_222B437C0(v31, v33, &v54);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_222B39000, v27, v28, "Failed to derive ground truth type from followup event for classification=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x223DCA8C0](v30, -1, -1);
      MEMORY[0x223DCA8C0](v29, -1, -1);
    }

    else
    {

      sub_222B45094(v55);
    }

    v35 = type metadata accessor for MessagesGroundTruth(0);
    return (*(*(v35 - 8) + 56))(a7, 1, 1, v35);
  }
}

uint64_t sub_222BDF2AC(uint64_t a1, uint64_t a2)
{
  result = sub_222BDF374(&qword_27D026880, a2, type metadata accessor for MessagesInAppFollowupGroundTruthGenerator, &protocol conformance descriptor for MessagesInAppFollowupGroundTruthGenerator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222BDF374(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

SiriPrivateLearningInference::MediaReferenceSourceApp_optional __swiftcall MediaReferenceSourceApp.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

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

  *v2 = v5;
  return result;
}

uint64_t MediaReferenceSourceApp.rawValue.getter()
{
  if (*v0)
  {
    return 0x656E696665646E75;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

unint64_t sub_222BDF4C0()
{
  result = qword_27D026888;
  if (!qword_27D026888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026888);
  }

  return result;
}

uint64_t sub_222BDF514()
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BDF5A8(uint64_t a1)
{
  sub_222C9452C();
}

uint64_t sub_222BDF628(uint64_t a1)
{
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BDF6B8@<X0>(char *a2@<X8>)
{
  v3 = sub_222C94FDC();

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

void sub_222BDF718(uint64_t *a1@<X8>)
{
  v2 = 0x6C7070612E6D6F63;
  if (*v1)
  {
    v2 = 0x656E696665646E75;
  }

  v3 = 0xEF636973754D2E65;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222BDF818(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E696665646E75;
  }

  else
  {
    v3 = 0x6C7070612E6D6F63;
  }

  if (v2)
  {
    v4 = 0xEF636973754D2E65;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x656E696665646E75;
  }

  else
  {
    v5 = 0x6C7070612E6D6F63;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xEF636973754D2E65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222C951FC();
  }

  return v8 & 1;
}

unint64_t sub_222BDF8E0()
{
  result = qword_27D026890;
  if (!qword_27D026890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026890);
  }

  return result;
}

uint64_t Turn.getTimestamp()@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_222C935EC();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Turn.deviceDynamicContextEvent.getter();
  if (v8 && (v9 = v8, v10 = [v8 deviceDynamicContext], v9, v10))
  {
    [v10 timeIntervalSince1970];

    sub_222C935AC();
    v11 = *(v19 + 56);

    return v11(a1, 0, 1, v5);
  }

  else
  {
    sub_222C941BC();
    if ((*(v19 + 48))(v4, 1, v5) == 1)
    {
      sub_222BA2994(v4);
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v13 = sub_222C9431C();
      __swift_project_value_buffer(v13, qword_280FE2340);
      v14 = sub_222C942FC();
      v15 = sub_222C94A3C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_222B39000, v14, v15, "Could not extract a timestamp from the device context", v16, 2u);
        MEMORY[0x223DCA8C0](v16, -1, -1);
      }

      return (*(v19 + 56))(a1, 1, 1, v5);
    }

    else
    {
      v17 = *(v19 + 32);
      v17(v7, v4, v5);
      v17(a1, v7, v5);
      return (*(v19 + 56))(a1, 0, 1, v5);
    }
  }
}

void *Turn.deviceDynamicContextEvent.getter()
{
  v0 = sub_222C941CC();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222C94C6C())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC9B30](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = sub_222C942EC();

      if (v7)
      {
        v8 = [v7 deviceDynamicContext];
        if (v8)
        {
          v9 = v8;
          swift_bridgeObjectRelease_n();

          return v7;
        }
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_15:
  swift_bridgeObjectRelease_n();
  return 0;
}

uint64_t PICSStoreCoreData.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_222BE3CC0(a1, a2, 0);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

id sub_222BDFE58()
{
  result = sub_222BDFE78();
  qword_280FDFA10 = result;
  return result;
}

id sub_222BDFE78()
{
  v0 = sub_222C934DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PICSStoreCoreData();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_222C9448C();
  v7 = sub_222C9448C();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  if (!v8 || (sub_222C9348C(), v8, v9 = objc_allocWithZone(MEMORY[0x277CBE450]), v10 = sub_222C9346C(), v11 = [v9 initWithContentsOfURL_], v10, (*(v1 + 8))(v3, v0), (result = v11) == 0))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);
    v14 = sub_222C942FC();
    v15 = sub_222C94A4C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222B39000, v14, v15, "PICSStoreCoreData: Error loading data base model from bundle", v16, 2u);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_222BE00E8(uint64_t a1)
{
  v40[2] = *MEMORY[0x277D85DE8];
  v2 = sub_222C93E6C();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222C934DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = *(v5 + 16);
  v5 += 16;
  v38 = a1;
  v12(&v33 - v10, a1, v4, v9);
  v39 = objc_opt_self();
  v13 = (v5 - 8);
  v14 = (v5 + 16);
  do
  {
    sub_222C9347C();
    v15 = *v13;
    (*v13)(v11, v4);
    (*v14)(v11, v7, v4);
    v16 = v13;
    v17 = [v39 defaultManager];
    sub_222C934AC();
    v18 = sub_222C9448C();

    v19 = [v17 fileExistsAtPath_];

    v13 = v16;
  }

  while (!v19);
  v20 = v39;
  v34 = v4;
  v22 = v35;
  v21 = v36;
  v23 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x277D5FB50], v37);
  v24 = sub_222C93C8C();
  (*(v21 + 8))(v22, v23);
  if (v24)
  {
    v25 = [v20 defaultManager];
    v26 = sub_222C9346C();
    v40[0] = 0;
    v27 = [v25 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:v40];

    v28 = v34;
    if (v27)
    {
      v29 = v40[0];
      return (v15)(v11, v28);
    }

    v32 = v40[0];
    sub_222C9342C();
  }

  else
  {
    v40[0] = 0;
    v40[1] = 0xE000000000000000;
    sub_222C94D1C();
    MEMORY[0x223DC9330](0xD00000000000003ELL, 0x8000000222CABC80);
    v31 = sub_222C934AC();
    MEMORY[0x223DC9330](v31);

    sub_222C93C7C();
    sub_222BE4BF0(&qword_27D0268C8, MEMORY[0x277D5FB08], MEMORY[0x277D5FB10]);
    swift_allocError();
    sub_222C93C6C();
    v28 = v34;
  }

  swift_willThrow();
  return (v15)(v11, v28);
}

void sub_222BE0530(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = sub_222C9431C();
    __swift_project_value_buffer(v6, qword_280FE2340);
    v7 = a2;
    v8 = a1;
    v9 = sub_222C942FC();
    v10 = sub_222C94A4C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v11 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0268D0, &qword_222CA62F0);
      v14 = sub_222C94B4C();
      v16 = sub_222B437C0(v14, v15, &v18);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v17 = v8;
      _os_log_impl(&dword_222B39000, v9, v10, "PICSStoreCoreData: Unable to load persistent stores: %s : %@", v11, 0x16u);
      sub_222B4FCD4(v12, &qword_27D025F70, &unk_222C9E7C0);
      MEMORY[0x223DCA8C0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);
    }
  }
}

id sub_222BE0728()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v17[0] = 0;
  v2 = [v1 save_];
  if (v2)
  {
    v3 = v17[0];
  }

  else
  {
    v4 = v17[0];
    v5 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = sub_222C9431C();
    __swift_project_value_buffer(v6, qword_280FE2340);
    v7 = v5;
    v8 = sub_222C942FC();
    v9 = sub_222C94A4C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17[0] = v11;
      *v10 = 136315138;
      v12 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v13 = sub_222C944EC();
      v15 = sub_222B437C0(v13, v14, v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222B39000, v8, v9, "PICSStoreCoreData: Unresolved error in saveChanges error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x223DCA8C0](v11, -1, -1);
      MEMORY[0x223DCA8C0](v10, -1, -1);
    }

    else
    {
    }
  }

  return v2;
}

id sub_222BE0950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for PlusContactSuggestionCoreDataRecord();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  LOBYTE(a2) = sub_222BE09E4(a2, v6);

  if (a2)
  {
    result = sub_222BE0728();
  }

  else
  {
    result = 0;
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_222BE09E4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ThinContactGroundTruth(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222BE4808(a1);
  v12 = v11 >> 60;
  if (v11 >> 60 != 15)
  {
    v65 = v7;
    v13 = v11;
    v14 = v10;
    v15 = sub_222C9361C();
    [a2 setId_];

    v16 = type metadata accessor for PlusContactSuggestion(0);
    sub_222C93F8C();
    [a2 setTimestamp_];
    v71 = v16;
    sub_222C9377C();
    if (v17)
    {
      v18 = sub_222C9448C();
    }

    else
    {
      v18 = 0;
    }

    [a2 setFullName_];

    v19 = sub_222C9376C();
    v68 = v12;
    if (v19)
    {
      sub_222C939BC();
      v21 = v20;

      if (v21)
      {
        v19 = sub_222C9448C();
      }

      else
      {
        v19 = 0;
      }
    }

    [a2 setHandleLabel_];

    v66 = v13;
    v67 = v14;
    v22 = sub_222C934FC();
    [a2 setUsoPersonQuery_];

    v23 = v71[6];
    v70 = a1;
    v24 = *(a1 + v23 + 24);
    v25 = *(v3 + 24);
    type metadata accessor for PlusContactReferenceCoreDataRecord();
    v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    v27 = [v26 initWithContext_];
    v28 = sub_222C9448C();
    [v27 setContactId_];

    if (v24)
    {
      v29 = sub_222C9448C();
    }

    else
    {
      v29 = 0;
    }

    [v27 setContactLabel_];

    [a2 setInferredContactReference_];
    v30 = [a2 inferredContactReference];
    if (v30)
    {
      v31 = v30;
      [v30 setContactSuggestion_];
    }

    v69 = a2;
    v32 = *(v70 + v71[7]);
    v33 = MEMORY[0x277D84F90];
    v73 = MEMORY[0x277D84F90];
    v34 = *(v32 + 16);
    if (v34)
    {
      v35 = v32 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      v36 = *(v65 + 72);
      v37 = MEMORY[0x277D84F90];
      do
      {
        sub_222BE4C38(v35, v9, type metadata accessor for ThinContactGroundTruth);
        v38 = sub_222BF9A84(v25);
        v39 = sub_222BE4CA0(v9, type metadata accessor for ThinContactGroundTruth);
        if (v38)
        {
          MEMORY[0x223DC94A0](v39);
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222C9475C();
          }

          sub_222C947AC();
          v37 = v73;
        }

        v35 += v36;
        --v34;
      }

      while (v34);
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    sub_222C67384(v37);

    v40 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v41 = sub_222C9470C();

    v42 = [v40 initWithArray_];

    v43 = v69;
    [v69 setContributingGroundTruth_];

    v44 = *(v70 + v71[9]);
    v73 = v33;
    v45 = 1 << *(v44 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v44 + 56);
    v48 = (v45 + 63) >> 6;

    v50 = 0;
    if (v47)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        return result;
      }

      if (v51 >= v48)
      {
        break;
      }

      v47 = *(v44 + 56 + 8 * v51);
      ++v50;
      if (v47)
      {
        v50 = v51;
        do
        {
LABEL_29:
          v72 = *(*(v44 + 48) + (__clz(__rbit64(v47)) | (v50 << 6)));
          sub_222BF9E2C(v25);
          MEMORY[0x223DC94A0]();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222C9475C();
            v43 = v69;
          }

          v47 &= v47 - 1;
          result = sub_222C947AC();
          v33 = v73;
        }

        while (v47);
      }
    }

    sub_222C6739C(v33);

    v52 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v53 = sub_222C9470C();

    v54 = [v52 initWithArray_];

    [v43 setTags_];
    v55 = v70;
    v56 = v71;
    [v43 setScore_];
    v57 = sub_222C72EC4(*(v55 + v56[11]));
    if (v58 >> 60 == 15)
    {
      v59 = 0;
    }

    else
    {
      v60 = v57;
      v61 = v58;
      v59 = sub_222C934FC();
      sub_222B803AC(v60, v61);
    }

    v62 = v67;
    v12 = v68;
    v63 = v66;
    [v43 setScoreHistory_];
    sub_222B803AC(v62, v63);
  }

  return v12 < 0xF;
}

void sub_222BE1094(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_222BE2934();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for PlusContactSuggestionCoreDataRecord();
    v8 = *(a1 + 24);
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v10 = sub_222BE09E4(a2, v9);

    if (v10)
    {
      [v8 deleteObject_];
      v11 = sub_222BE0728();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11 & 1;
}

uint64_t sub_222BE1164()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222BE43D8;
  *(v2 + 24) = v0;
  v5[4] = sub_222BE43DC;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_222BE12C8;
  v5[3] = &block_descriptor;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_222BE12F0()
{
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_222C9448C();
  v3 = [v1 initWithEntityName_];

  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_222C9448C();
  v6 = [v4 initWithEntityName_];

  v7 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v8 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v9 = *(v0 + 24);
  v34[0] = 0;
  v10 = [v9 executeRequest:v7 error:v34];
  v11 = v34[0];
  if (v10 && (v12 = v10, v13 = v34[0], v12, v34[0] = 0, v14 = [v9 executeRequest:v8 error:v34], v11 = v34[0], v14))
  {
    v15 = v14;
    v16 = v34[0];

    if (sub_222BE0728())
    {
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v29 = sub_222C9431C();
      __swift_project_value_buffer(v29, qword_280FE2340);
      v30 = sub_222C942FC();
      v31 = sub_222C94A4C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_222B39000, v30, v31, "PICSStoreCoreData: Cannot reset store, failed to save", v32, 2u);
        MEMORY[0x223DCA8C0](v32, -1, -1);
      }
    }
  }

  else
  {
    v17 = v11;
    v18 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);
    v20 = v18;
    v21 = sub_222C942FC();
    v22 = sub_222C94A4C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v3;
      v24 = swift_slowAlloc();
      v34[0] = v24;
      *v23 = 136315138;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v26 = sub_222C944EC();
      v28 = sub_222B437C0(v26, v27, v34);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_222B39000, v21, v22, "PICSStoreCoreData: Cannot reset store, error=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x223DCA8C0](v24, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    else
    {
    }
  }
}

void *sub_222BE173C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v39 - v1;
  v3 = type metadata accessor for PlusContactSuggestion(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_222C9448C();
  v9 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222C9BAE0;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_222C9448C();
  v13 = [v11 initWithKey:v12 ascending:0];

  *(v10 + 32) = v13;
  sub_222B505A8(0, &qword_280FDB778, 0x277CCAC98);
  v14 = sub_222C9470C();

  [v9 setSortDescriptors_];

  type metadata accessor for PlusContactSuggestionCoreDataRecord();
  v15 = sub_222C94B2C();
  v27 = v15;
  v41 = v3;
  if (v15 >> 62)
  {
    v28 = sub_222C94C6C();
  }

  else
  {
    v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v41;
  v39 = v9;
  if (v28)
  {
    v30 = 0;
    v42 = v6;
    v43 = v27 & 0xC000000000000001;
    v40 = v4;
    v31 = (v4 + 48);
    v26 = MEMORY[0x277D84F90];
    v32 = v28;
    while (1)
    {
      if (v43)
      {
        v33 = MEMORY[0x223DC9B30](v30, v27);
      }

      else
      {
        if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v33 = *(v27 + 8 * v30 + 32);
      }

      v34 = v33;
      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      sub_222BFA3A0(v2);

      if ((*v31)(v2, 1, v29) == 1)
      {
        sub_222B4FCD4(v2, &qword_27D025A88, &unk_222C9A0C0);
      }

      else
      {
        sub_222BB8DB4(v2, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_222B4ACA4(0, v26[2] + 1, 1, v26);
        }

        v37 = v26[2];
        v36 = v26[3];
        if (v37 >= v36 >> 1)
        {
          v26 = sub_222B4ACA4((v36 > 1), v37 + 1, 1, v26);
        }

        v26[2] = v37 + 1;
        sub_222BB8DB4(v42, v26 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v37);
        v29 = v41;
      }

      ++v30;
      if (v35 == v32)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    swift_once();
    v16 = sub_222C9431C();
    __swift_project_value_buffer(v16, qword_280FE2340);
    v17 = v29;
    v18 = sub_222C942FC();
    v19 = sub_222C94A4C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44 = v29;
      v45 = v21;
      *v20 = 136315138;
      v22 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v23 = sub_222C944EC();
      v25 = sub_222B437C0(v23, v24, &v45);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_222B39000, v18, v19, "PICSStoreCoreData: Unresolved error in readAll error=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x223DCA8C0](v21, -1, -1);
      MEMORY[0x223DCA8C0](v20, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
LABEL_23:
  }

  return v26;
}

uint64_t sub_222BE1CA4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_222C94B1C();
  return v4;
}

char *sub_222BE1CFC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  type metadata accessor for PlusContactReferenceCoreDataRecord();
  v3 = sub_222C94B2C();
  v15 = v3;
  v16 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    v17 = sub_222C94C6C();
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_26:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_7:
  v18 = 0;
  v14 = MEMORY[0x277D84F90];
  while (2)
  {
    v19 = v18;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x223DC9B30](v19, v15);
      }

      else
      {
        if (v19 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        v20 = *(v15 + 8 * v19 + 32);
      }

      v21 = v20;
      v18 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        swift_once();
        v4 = sub_222C9431C();
        __swift_project_value_buffer(v4, qword_280FE2340);
        v5 = v17;
        v6 = sub_222C942FC();
        v7 = sub_222C94A4C();

        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v34 = v9;
          *v8 = 136315138;
          v38 = v17;
          v10 = v17;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
          v11 = sub_222C944EC();
          v13 = sub_222B437C0(v11, v12, &v34);

          *(v8 + 4) = v13;
          _os_log_impl(&dword_222B39000, v6, v7, "PICSStoreCoreData: Unresolved error in AllContactReferences error=%s", v8, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v9);
          MEMORY[0x223DCA8C0](v9, -1, -1);
          MEMORY[0x223DCA8C0](v8, -1, -1);
        }

        return MEMORY[0x277D84F90];
      }

      sub_222BFB850(&v34);

      v22 = v35;
      if (v35)
      {
        break;
      }

      sub_222B450E8(v34, 0, v36, v37);
      ++v19;
      if (v18 == v17)
      {
        goto LABEL_27;
      }
    }

    v32 = v36;
    v33 = v34;
    v31 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_222B4B1F8(0, *(v14 + 2) + 1, 1, v14);
    }

    v24 = *(v14 + 2);
    v23 = *(v14 + 3);
    v25 = v31;
    v26 = v32;
    v27 = v33;
    if (v24 >= v23 >> 1)
    {
      v29 = sub_222B4B1F8((v23 > 1), v24 + 1, 1, v14);
      v25 = v31;
      v26 = v32;
      v14 = v29;
      v27 = v33;
    }

    *(v14 + 2) = v24 + 1;
    v28 = &v14[32 * v24];
    *(v28 + 4) = v27;
    *(v28 + 5) = v22;
    *(v28 + 6) = v26;
    *(v28 + 7) = v25;
    if (v18 != v17)
    {
      continue;
    }

    break;
  }

LABEL_27:

  return v14;
}

uint64_t sub_222BE205C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026898, &qword_222C9E700);
  sub_222C94B1C();
  return v2;
}

void *sub_222BE20D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v56 = type metadata accessor for PlusContactSuggestion(0);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_222C9448C();
  v9 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222C9BAE0;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_222C9448C();
  v13 = [v11 initWithKey:v12 ascending:0];

  *(v10 + 32) = v13;
  sub_222B505A8(0, &qword_280FDB778, 0x277CCAC98);
  v14 = sub_222C9470C();

  [v9 setSortDescriptors_];

  v15 = sub_222C0AFD4(a1);
  if (!v16)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v37 = sub_222C9431C();
    __swift_project_value_buffer(v37, qword_280FE2340);
    v38 = sub_222C942FC();
    v39 = sub_222C94A3C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_222B39000, v38, v39, "PICSStoreCoreData: Unable to extract name from USO query. Skipping search.", v40, 2u);
      MEMORY[0x223DCA8C0](v40, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v17 = v15;
  v18 = v16;
  v52 = v1;
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);

    v20 = sub_222C942FC();
    v21 = sub_222C94A3C();

    v22 = os_log_type_enabled(v20, v21);
    v51 = v17;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v17;
      v26 = v24;
      v57 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_222B437C0(v25, v18, &v57);
      _os_log_impl(&dword_222B39000, v20, v21, "PICSStoreCoreData: Searching for PICS with fullName==%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x223DCA8C0](v26, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    v27 = sub_222C9376C();
    v53 = v5;
    if (v27 && (v28 = sub_222C939BC(), v30 = v29, , v30))
    {
      sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_222C96900;
      v32 = MEMORY[0x277D837D0];
      *(v31 + 56) = MEMORY[0x277D837D0];
      v33 = sub_222B9A614();
      *(v31 + 32) = v51;
      *(v31 + 40) = v18;
      *(v31 + 96) = v32;
      *(v31 + 104) = v33;
      *(v31 + 64) = v33;
      *(v31 + 72) = v28;
      *(v31 + 80) = v30;
      v5 = v53;
    }

    else
    {
      sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_222C97C40;
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = sub_222B9A614();
      *(v34 + 32) = v51;
      *(v34 + 40) = v18;
    }

    v35 = sub_222C949EC();
    [v9 setPredicate_];

    type metadata accessor for PlusContactSuggestionCoreDataRecord();
    v36 = sub_222C94B2C();
    v41 = v36;
    if (v36 >> 62)
    {
      break;
    }

    v42 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = v9;
    if (!v42)
    {
      goto LABEL_35;
    }

LABEL_17:
    v18 = 0;
    v9 = (v41 & 0xFFFFFFFFFFFFFF8);
    v43 = (v54 + 48);
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x223DC9B30](v18, v41);
      }

      else
      {
        if (v18 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v44 = *(v41 + 8 * v18 + 32);
      }

      v45 = v44;
      v46 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      sub_222BFA3A0(v5);

      if ((*v43)(v5, 1, v56) == 1)
      {
        sub_222B4FCD4(v5, &qword_27D025A88, &unk_222C9A0C0);
      }

      else
      {
        sub_222BB8DB4(v5, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_222B4ACA4(0, v17[2] + 1, 1, v17);
        }

        v48 = v17[2];
        v47 = v17[3];
        if (v48 >= v47 >> 1)
        {
          v17 = sub_222B4ACA4((v47 > 1), v48 + 1, 1, v17);
        }

        v17[2] = v48 + 1;
        sub_222BB8DB4(v55, v17 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v48);
        v5 = v53;
      }

      ++v18;
      if (v46 == v42)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v42 = sub_222C94C6C();
  v52 = v9;
  if (v42)
  {
    goto LABEL_17;
  }

LABEL_35:
  v17 = MEMORY[0x277D84F90];
LABEL_36:

  return v17;
}

unint64_t sub_222BE2934()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222C97C40;
  v4 = sub_222C9361C();
  *(v3 + 56) = sub_222B505A8(0, &qword_27D0268B0, 0x277CCAD78);
  *(v3 + 64) = sub_222BE47A0();
  *(v3 + 32) = v4;
  v5 = sub_222C949EC();
  [v2 setPredicate_];

  type metadata accessor for PlusContactSuggestionCoreDataRecord();
  result = sub_222C94B2C();
  if (result >> 62)
  {
    v9 = result;
    v10 = sub_222C94C6C();
    result = v9;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223DC9B30](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_6:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

void sub_222BE2D08(char *a1@<X8>)
{
  v2 = sub_222BE2934();
  if (v2)
  {
    v3 = v2;
    sub_222BFA3A0(a1);
  }

  else
  {
    v4 = type metadata accessor for PlusContactSuggestion(0);
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t sub_222BE2E04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_222C9448C();
  v8 = [v6 initWithEntityName_];

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222C97C40;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_222B9A614();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_222C949EC();
  [v8 setPredicate_];

  v11 = *(v3 + 24);
  type metadata accessor for PlusContactReferenceCoreDataRecord();
  v12 = sub_222C94B2C();
  v13 = v12;
  v14 = v12 >> 62;
  if (v12 >> 62)
  {
    v15 = sub_222C94C6C();
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_14;
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x223DC9B30](i, v13);
    }

    else
    {
      v17 = *(v13 + 8 * i + 32);
    }

    v18 = v17;
    [v11 deleteObject_];
  }

LABEL_10:
  if (sub_222BE0728())
  {
    if (v14)
    {
      v19 = sub_222C94C6C();
    }

    else
    {
      v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v19;
  }

  if (qword_280FDFE78 != -1)
  {
    goto LABEL_20;
  }

LABEL_14:
  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);
  v21 = sub_222C942FC();
  v22 = sub_222C94A4C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_222B39000, v21, v22, "Failed to save changes after deleting records.", v23, 2u);
    MEMORY[0x223DCA8C0](v23, -1, -1);
  }

  return 0;
}

void sub_222BE32D4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_222BE2934();
  if (v4)
  {
    v5 = v4;
    [*(a1 + 24) deleteObject_];
    v6 = sub_222BE0728();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6 & 1;
}

uint64_t sub_222BE3348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_222BE451C;
  *(v8 + 24) = v7;
  v11[4] = sub_222BE50C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_222BE12C8;
  v11[3] = &block_descriptor_10;
  v9 = _Block_copy(v11);

  [v6 performBlockAndWait_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_222BE34C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_222C935EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222BE4D00();
  if (!v7)
  {
    type metadata accessor for PlusContactSuggestionStoreUpdateRecord();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  }

  v8 = v7;
  v9 = sub_222C9448C();
  [v8 setSource_];

  sub_222C935DC();
  v10 = sub_222C9355C();
  (*(v4 + 8))(v6, v3);
  [v8 setTimestamp_];

  if ((sub_222BE0728() & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v11 = sub_222C9431C();
    __swift_project_value_buffer(v11, qword_280FE2340);
    v12 = sub_222C942FC();
    v13 = sub_222C94A4C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_222B39000, v12, v13, "Failed to persist store update record to CoreData", v14, 2u);
      MEMORY[0x223DCA8C0](v14, -1, -1);
    }
  }
}

void sub_222BE3748(uint64_t *a2@<X8>)
{
  v3 = sub_222BE4D00();
  if (v3)
  {
    v4 = v3;
    sub_222BFB9B8(a2);
  }

  else
  {
    v5 = type metadata accessor for ContactSuggestionStoreUpdate(0);
    (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

uint64_t PICSStoreCoreData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222BE38F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_222C94B1C();
  return v6;
}

uint64_t sub_222BE3958(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026898, &qword_222C9E700);
  sub_222C94B1C();
  return v2;
}

uint64_t PICSStoreCoreDataWithMigrations.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_222BE3CC0(a1, a2, 1);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
  }

  else
  {
    type metadata accessor for PICSStoreCoreData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t sub_222BE3C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222BE3CC0(a1, a2, a3);

  if (v4)
  {
    *(v3 + 16) = v4;
    *(v3 + 24) = [v4 newBackgroundContext];
  }

  else
  {
    type metadata accessor for PICSStoreCoreData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

id sub_222BE3CC0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_222C934DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-v8];
  MEMORY[0x28223BE20](v10);
  v12 = &v30[-v11];
  v13 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
  [v13 setShouldInferMappingModelAutomatically_];
  [v13 setShouldMigrateStoreAutomatically_];
  if (qword_280FDFA08 != -1)
  {
    swift_once();
  }

  v14 = qword_280FDFA10;
  if (!qword_280FDFA10)
  {

    return 0;
  }

  v32 = v13;
  v15 = v5;
  v16 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v17 = v14;
  v18 = sub_222C9448C();
  v31 = v17;
  v19 = [v16 initWithName:v18 managedObjectModel:v17];

  if (a2)
  {
    sub_222C9345C();
    sub_222C9347C();
    sub_222BE00E8(v9);
    v20 = *(v6 + 8);
    v20(v9, v15);
    v21 = sub_222C9346C();
    [v32 setURL_];

    v20(v12, v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_222C9BAE0;
  v23 = v32;
  *(v22 + 32) = v32;
  sub_222B505A8(0, &qword_280FDB760, 0x277CBE4E0);
  v24 = v23;
  v25 = sub_222C9470C();

  [v19 setPersistentStoreDescriptions_];

  v26 = swift_allocObject();
  *(v26 + 16) = 1;
  v27 = (v26 + 16);
  aBlock[4] = sub_222BE5004;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222C72E38;
  aBlock[3] = &block_descriptor_73;
  v28 = _Block_copy(aBlock);

  [v19 loadPersistentStoresWithCompletionHandler_];

  _Block_release(v28);
  swift_beginAccess();
  LOBYTE(v24) = *v27;

  if ((v24 & 1) == 0)
  {

    return 0;
  }

  return v19;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_222BE441C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222BE173C();
  *a1 = result;
  return result;
}

char *sub_222BE444C@<X0>(char **a1@<X8>)
{
  result = sub_222BE1CFC();
  *a1 = result;
  return result;
}

void *sub_222BE447C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222BE20D4(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_222BE44D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222BE2E04(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

unint64_t sub_222BE47A0()
{
  result = qword_27D0268B8;
  if (!qword_27D0268B8)
  {
    sub_222B505A8(255, &qword_27D0268B0, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0268B8);
  }

  return result;
}

uint64_t sub_222BE4808(uint64_t a1)
{
  v1 = type metadata accessor for PlusContactSuggestion(0);
  MEMORY[0x28223BE20](v1);
  v2 = sub_222C931FC();
  MEMORY[0x28223BE20](v2 - 8);
  sub_222C9323C();
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  sub_222C9378C();
  sub_222BE4BF0(&qword_27D025A98, MEMORY[0x277D5E850], MEMORY[0x277D5E450]);

  v3 = sub_222C9321C();

  return v3;
}

uint64_t sub_222BE4BF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222BE4C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BE4CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_222BE4D00()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  v22[0] = 0;
  v3 = [v2 execute_];
  v4 = v22[0];
  if (!v3)
  {
    v11 = v22[0];
    v5 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v5 = v3;
  type metadata accessor for PlusContactSuggestionStoreUpdateRecord();
  v6 = sub_222C9471C();
  v7 = v4;

  if (v6 >> 62)
  {
    if (sub_222C94C6C())
    {
      goto LABEL_4;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DC9B30](0, v6);
      goto LABEL_7;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v6 + 32);
LABEL_7:
      v9 = v8;

      return v9;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_9:
    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = v5;
    v14 = sub_222C942FC();
    v15 = sub_222C94A4C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      v18 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v19 = sub_222C944EC();
      v21 = sub_222B437C0(v19, v20, v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_222B39000, v14, v15, "Failed to load store update record. error=%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x223DCA8C0](v17, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return 0;
}

uint64_t sub_222BE5100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222BE5168(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_222C94B5C();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v44 - v11;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = sub_222C9338C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - v21;
  v23 = sub_222C947BC();
  if (v23 < 2)
  {
    goto LABEL_6;
  }

  v48 = v15;
  v50 = v18;
  v56 = a1;
  MEMORY[0x28223BE20](v23);
  *(&v44 - 2) = a2;
  *(&v44 - 1) = a3;
  v47 = a3;
  swift_getKeyPath();
  sub_222C9339C();
  sub_222C947FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v24 = sub_222C9463C();
  (*(v20 + 8))(v22, v19);
  v55 = v24;
  swift_getWitnessTable();
  sub_222C9444C();
  v25 = v57;
  v26 = v58;
  v27 = v59;
  v49 = v56;
  sub_222C94C0C();
  swift_getWitnessTable();
  v28 = v54;
  sub_222C9443C();
  v29 = v12;
  v30 = *(v12 + 48);
  if (v30(v28, 1, a2) == 1)
  {
    (*(v52 + 8))(v54, v53);
    swift_unknownObjectRelease();
LABEL_6:

    return a1;
  }

  v45 = a1;
  v46 = v29;
  v31 = v54;
  v54 = *(v29 + 32);
  (v54)(v50, v31, a2);
  v56 = v49;
  v57 = v25;
  v58 = v26;
  v59 = v27;
  swift_getWitnessTable();
  v32 = v51;
  sub_222C949CC();
  if (v30(v32, 1, a2) == 1)
  {
    (*(v46 + 8))(v50, a2);
    (*(v52 + 8))(v32, v53);
    swift_unknownObjectRelease();
    a1 = v45;
    goto LABEL_6;
  }

  v34 = v46;
  v35 = v48;
  (v54)(v48, v32, a2);
  v36 = v47;
  v37 = *(v47 + 96);
  v38 = v50;
  v39 = v37(a2, v47);
  if (v39 - v37(a2, v36) >= a4)
  {
    sub_222B51F4C(a2, a2);
    swift_allocObject();
    v41 = sub_222C9473C();
    (*(v34 + 16))(v42, v38, a2);
    a1 = sub_222B5065C(v41, a2);
    swift_unknownObjectRelease();
    v43 = *(v34 + 8);
    v43(v35, a2);
    v43(v38, a2);
  }

  else
  {
    a1 = sub_222C9477C();
    swift_unknownObjectRelease();
    v40 = *(v34 + 8);
    v40(v35, a2);
    v40(v38, a2);
  }

  return a1;
}

uint64_t sub_222BE5784()
{
  type metadata accessor for CascadeLearnedEntityDonator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026958, &qword_222C9E908);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDDC88 = 91;
  unk_280FDDC90 = 0xE100000000000000;
  return result;
}

uint64_t sub_222BE5848()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 32);
  *(v0 + 121) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 80) = v5;
    *(v0 + 88) = v7;
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = *(*(v6 + 48) + v9);
    v11 = *(*(v6 + 56) + 8 * v9);
    *(v0 + 96) = v11;
    v12 = qword_280FDFE78;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);

    v14 = sub_222C942FC();
    v15 = sub_222C94A3C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *(v0 + 64) = v17;
      *v16 = 136315394;
      if (qword_280FDDC80 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, (v0 + 64));
      *(v16 + 12) = 2080;
      if (v10)
      {
        v18 = 0xD000000000000010;
      }

      else
      {
        v18 = 0xD000000000000012;
      }

      if (v10)
      {
        v19 = "siriLearnedContact";
      }

      else
      {
        v19 = "picsRuntimeInSiriVocab";
      }

      v20 = sub_222B437C0(v18, v19 | 0x8000000000000000, (v0 + 64));

      *(v16 + 14) = v20;
      _os_log_impl(&dword_222B39000, v14, v15, "%s Donating candidates with the type: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v17, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    v21 = MEMORY[0x277D84F90];
    *(v0 + 56) = MEMORY[0x277D84F90];
    v22 = *(v11 + 16);
    if (v22)
    {
      v23 = v11 + 32;
      do
      {
        sub_222B43E3C(v23, v0 + 16);
        v24 = *(v0 + 40);
        v25 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
        v26 = (*(v25 + 8))(v24, v25);
        v27 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        if (v26)
        {
          MEMORY[0x223DC94A0](v27);
          if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222C9475C();
          }

          sub_222C947AC();
          v21 = *(v0 + 56);
        }

        v23 += 40;
        --v22;
      }

      while (v22);
    }

    *(v0 + 104) = v21;
    *(v0 + 120) = v10;
    v28 = swift_task_alloc();
    *(v0 + 112) = v28;
    *v28 = v0;
    v28[1] = sub_222BE5C40;

    return sub_222BE6244(v21, (v0 + 120));
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_222BE5C40()
{

  return MEMORY[0x2822009F8](sub_222BE5D74, 0, 0);
}

uint64_t sub_222BE5D74()
{
  v3 = *(v1 + 88);
  v4 = (*(v1 + 80) - 1) & *(v1 + 80);
  if (v4)
  {
    v5 = *(v1 + 72);
LABEL_7:
    *(v1 + 80) = v4;
    *(v1 + 88) = v3;
    v7 = __clz(__rbit64(v4)) | (v3 << 6);
    v2 = *(*(v5 + 48) + v7);
    v0 = *(*(v5 + 56) + 8 * v7);
    *(v1 + 96) = v0;
    v8 = qword_280FDFE78;

    if (v8 != -1)
    {
LABEL_32:
      swift_once();
    }

    v9 = sub_222C9431C();
    __swift_project_value_buffer(v9, qword_280FE2340);

    v10 = sub_222C942FC();
    v11 = sub_222C94A3C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *(v1 + 64) = v13;
      *v12 = 136315394;
      if (qword_280FDDC80 != -1)
      {
        swift_once();
      }

      *(v12 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, (v1 + 64));
      *(v12 + 12) = 2080;
      if (v2)
      {
        v14 = 0xD000000000000010;
      }

      else
      {
        v14 = 0xD000000000000012;
      }

      if (v2)
      {
        v15 = "siriLearnedContact";
      }

      else
      {
        v15 = "picsRuntimeInSiriVocab";
      }

      v16 = sub_222B437C0(v14, v15 | 0x8000000000000000, (v1 + 64));

      *(v12 + 14) = v16;
      _os_log_impl(&dword_222B39000, v10, v11, "%s Donating candidates with the type: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v12, -1, -1);
    }

    v17 = MEMORY[0x277D84F90];
    *(v1 + 56) = MEMORY[0x277D84F90];
    v18 = *(v0 + 16);
    if (v18)
    {
      v19 = v0 + 32;
      do
      {
        sub_222B43E3C(v19, v1 + 16);
        v20 = *(v1 + 40);
        v21 = *(v1 + 48);
        __swift_project_boxed_opaque_existential_1((v1 + 16), v20);
        v22 = (*(v21 + 8))(v20, v21);
        v23 = __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
        if (v22)
        {
          MEMORY[0x223DC94A0](v23);
          if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_222C9475C();
          }

          sub_222C947AC();
          v17 = *(v1 + 56);
        }

        v19 += 40;
        --v18;
      }

      while (v18);
    }

    *(v1 + 104) = v17;
    *(v1 + 120) = v2;
    v24 = swift_task_alloc();
    *(v1 + 112) = v24;
    *v24 = v1;
    v24[1] = sub_222BE5C40;

    return sub_222BE6244(v17, (v1 + 120));
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      v5 = *(v1 + 72);
      if (v6 >= (((1 << *(v1 + 121)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v26 = *(v1 + 8);

    return v26();
  }
}

uint64_t sub_222BE6154(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_222BE6244(uint64_t a1, _BYTE *a2)
{
  *(v2 + 152) = a1;
  *(v2 + 176) = *a2;

  return MEMORY[0x2822009F8](sub_222BE62DC, 0, 0);
}

uint64_t sub_222BE62DC()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = v0 + 80;
  v4 = *(v1 + 176);
  v5 = objc_opt_self();
  sub_222BE7258();
  v6 = sub_222C9470C();
  *(v1 + 160) = v6;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_222BE6478;
  v7 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026960, &unk_222C9E910);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_222BE6154;
  *(v1 + 104) = &block_descriptor_0;
  *(v1 + 112) = v7;
  if (v4)
  {
    v8 = 62158;
  }

  else
  {
    v8 = 53601;
  }

  [v5 fullSetDonationWithItemType:v8 descriptors:v6 completion:v3];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_222BE6478()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_222BE6DAC;
  }

  else
  {
    v2 = sub_222BE65B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_222BE65B4()
{
  v54 = v0;
  v53[1] = *MEMORY[0x277D85DE8];
  v52 = *(v0 + 144);

  if (qword_280FDFE78 == -1)
  {
    goto LABEL_2;
  }

LABEL_65:
  swift_once();
LABEL_2:
  v51 = sub_222C9431C();
  __swift_project_value_buffer(v51, qword_280FE2340);

  v1 = sub_222C942FC();
  v2 = sub_222C94A3C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v53[0] = v4;
    *v3 = 136315650;
    if (qword_280FDDC80 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 152);
    *(v3 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, v53);
    *(v3 + 12) = 2048;
    if (v5 >> 62)
    {
      v6 = sub_222C94C6C();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = *(v0 + 176);
    *(v3 + 14) = v6;

    *(v3 + 22) = 2080;
    if (v7)
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xD000000000000012;
    }

    if (v7)
    {
      v9 = "siriLearnedContact";
    }

    else
    {
      v9 = "picsRuntimeInSiriVocab";
    }

    v10 = sub_222B437C0(v8, v9 | 0x8000000000000000, v53);

    *(v3 + 24) = v10;
    _os_log_impl(&dword_222B39000, v1, v2, "%s Begin registering %ld %s entities.", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v4, -1, -1);
    MEMORY[0x223DCA8C0](v3, -1, -1);
  }

  else
  {
    v5 = *(v0 + 152);
  }

  v11 = 0;
  v12 = *(v0 + 152);
  v13 = v5 & 0xFFFFFFFFFFFFFF8;
  v14 = v5 & 0xC000000000000001;
  v15 = v12 + 32;
  v16 = v12 >> 62;
  if (v12 >> 62)
  {
    while (v11 != sub_222C94C6C())
    {
LABEL_19:
      if (v14)
      {
        v17 = MEMORY[0x223DC9B30](v11, *(v0 + 152));
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_64;
        }

        v17 = *(v15 + 8 * v11);
      }

      v18 = v17;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      *(v0 + 80) = 0;
      v19 = [v52 registerItem:v17 error:v0 + 80];
      v20 = *(v0 + 80);
      if (!v19)
      {
        v30 = v20;
        v31 = sub_222C9342C();

        swift_willThrow();
        goto LABEL_35;
      }

      v21 = v20;

      ++v11;
      if (!v16)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    if (v11 != *(v13 + 16))
    {
      goto LABEL_19;
    }
  }

  *(v0 + 80) = 0;
  v22 = [v52 finish_];
  v23 = *(v0 + 80);
  if (v22)
  {

    v24 = v23;
    v25 = sub_222C942FC();
    v26 = sub_222C94A3C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v53[0] = v28;
      *v27 = 136315650;
      if (qword_280FDDC80 != -1)
      {
        swift_once();
      }

      *(v27 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, v53);
      *(v27 + 12) = 2048;
      if (v16)
      {
        v29 = sub_222C94C6C();
      }

      else
      {
        v29 = *(v13 + 16);
      }

      v45 = *(v0 + 176);
      *(v27 + 14) = v29;

      *(v27 + 22) = 2080;
      if (v45)
      {
        v46 = 0xD000000000000010;
      }

      else
      {
        v46 = 0xD000000000000012;
      }

      if (v45)
      {
        v47 = "siriLearnedContact";
      }

      else
      {
        v47 = "picsRuntimeInSiriVocab";
      }

      v48 = sub_222B437C0(v46, v47 | 0x8000000000000000, v53);

      *(v27 + 24) = v48;
      _os_log_impl(&dword_222B39000, v25, v26, "%s Finished registering %ld %s entities.", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v28, -1, -1);
      MEMORY[0x223DCA8C0](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v32 = v23;
    v31 = sub_222C9342C();

    swift_willThrow();
LABEL_35:

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v51, qword_280FE2340);
    v33 = v31;
    v34 = sub_222C942FC();
    v35 = sub_222C94A4C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53[0] = v38;
      *v36 = 136315650;
      if (qword_280FDDC80 != -1)
      {
        swift_once();
      }

      v39 = *(v0 + 176);
      *(v36 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, v53);
      *(v36 + 12) = 2080;
      if (v39)
      {
        v40 = 0xD000000000000010;
      }

      else
      {
        v40 = 0xD000000000000012;
      }

      if (v39)
      {
        v41 = "siriLearnedContact";
      }

      else
      {
        v41 = "picsRuntimeInSiriVocab";
      }

      v42 = sub_222B437C0(v40, v41 | 0x8000000000000000, v53);

      *(v36 + 14) = v42;
      *(v36 + 22) = 2112;
      v43 = v31;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 24) = v44;
      *v37 = v44;
      _os_log_impl(&dword_222B39000, v34, v35, "%s Error occured during donating %s %@", v36, 0x20u);
      sub_222BE7324(v37);
      MEMORY[0x223DCA8C0](v37, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v38, -1, -1);
      MEMORY[0x223DCA8C0](v36, -1, -1);
    }

    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    *(v0 + 104) = &type metadata for PIMSFatalError;
    *(v0 + 112) = sub_222BE72D0();
    strcpy((v0 + 80), "PIMSFatalError");
    *(v0 + 95) = -18;
    *(v0 + 96) = 9;
    sub_222C93B5C();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  }

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_222BE6DAC(uint64_t a1)
{
  v20 = v1;
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 168);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v4 = sub_222C9431C();
  __swift_project_value_buffer(v4, qword_280FE2340);
  v5 = v3;
  v6 = sub_222C942FC();
  v7 = sub_222C94A4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v8 = 136315650;
    if (qword_280FDDC80 != -1)
    {
      swift_once();
    }

    v11 = *(v1 + 176);
    *(v8 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, v19);
    *(v8 + 12) = 2080;
    if (v11)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v12 = 0xD000000000000012;
    }

    if (v11)
    {
      v13 = "siriLearnedContact";
    }

    else
    {
      v13 = "picsRuntimeInSiriVocab";
    }

    v14 = sub_222B437C0(v12, v13 | 0x8000000000000000, v19);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2112;
    v15 = v3;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&dword_222B39000, v6, v7, "%s Error occured during donating %s %@", v8, 0x20u);
    sub_222BE7324(v9);
    MEMORY[0x223DCA8C0](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v10, -1, -1);
    MEMORY[0x223DCA8C0](v8, -1, -1);
  }

  if (qword_280FDF1F0 != -1)
  {
    swift_once();
  }

  *(v1 + 104) = &type metadata for PIMSFatalError;
  *(v1 + 112) = sub_222BE72D0();
  strcpy((v1 + 80), "PIMSFatalError");
  *(v1 + 95) = -18;
  *(v1 + 96) = 9;
  sub_222C93B5C();

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 80));
  v17 = *(v1 + 8);

  return v17();
}

uint64_t dispatch thunk of CascadeLearnedEntityDonator.donateSuggestions(donationCandidates:)(uint64_t a1)
{
  v6 = (*(*v1 + 88) + **(*v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222B503AC;

  return v6(a1);
}

unint64_t sub_222BE7258()
{
  result = qword_280FDB780;
  if (!qword_280FDB780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FDB780);
  }

  return result;
}

unint64_t sub_222BE72D0()
{
  result = qword_280FDFD28[0];
  if (!qword_280FDFD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FDFD28);
  }

  return result;
}

uint64_t sub_222BE7324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F70, &unk_222C9E7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BE738C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v38 = a6;
  v49 = a5;
  v40 = a2;
  v43 = type metadata accessor for FeaturisedTurn(0);
  v9 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v37 - v14;
  v37 = v9;
  v41 = (v9 + 48);
  v42 = (v9 + 56);
  v48 = a1;

  v46 = a3;

  v47 = 0;
  while (1)
  {
    v25 = v47;
    v26 = *(v48 + 16);
    if (v47 == v26)
    {
      v27 = 1;
      v28 = v44;
      v29 = v45;
      goto LABEL_15;
    }

    v28 = v44;
    v29 = v45;
    if (v47 >= v26)
    {
      break;
    }

    sub_222B97E94(v48 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v47, v44, type metadata accessor for FeaturisedTurn);
    v27 = 0;
    ++v25;
LABEL_15:
    v30 = v43;
    (*v42)(v28, v27, 1, v43);
    sub_222B723A4(v28, v29, &qword_27D0253C8, &unk_222C98400);
    if ((*v41)(v29, 1, v30) == 1)
    {

      v36 = v38;
      v38[4] = 0;
      *v36 = 0u;
      *(v36 + 1) = 0u;
      return result;
    }

    v47 = v25;
    v31 = v29;
    v32 = v39;
    sub_222B97FB4(v31, v39, type metadata accessor for FeaturisedTurn);
    v40(&v50, v32);
    sub_222B77D34(v32, type metadata accessor for FeaturisedTurn);
    v33 = v50;

    v34 = v33;
    if (v33)
    {
      v16 = (v33 + 64);
      v17 = -1;
      while (1)
      {
        ++v17;
        v18 = *(v34 + 16);
        if (v17 == v18)
        {
          break;
        }

        if (v17 >= v18)
        {
          __break(1u);
          goto LABEL_22;
        }

        v20 = *(v16 - 4);
        v19 = *(v16 - 3);
        v21 = *(v16 - 2);
        v22 = *(v16 - 1);
        v23 = *v16;
        if (v20 == a4 && v19 == v49)
        {
          v20 = a4;
LABEL_19:

          v35 = v38;
          *v38 = v20;
          v35[1] = v19;
          v35[2] = v21;
          v35[3] = v22;
          v35[4] = v23;
          return result;
        }

        v16 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_222BE772C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C38, &unk_222C9A650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  v1 = type metadata accessor for MediaPlayClassifier();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257C8, &qword_222C99050);
  v3 = sub_222C944EC();
  MEMORY[0x223DC9330](v3);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v2 + 16) = 91;
  *(v2 + 24) = 0xE100000000000000;
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for MediaPlayClassifier;
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_222BE7834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-v5 - 8];
  v7 = type metadata accessor for MediaPlayClassification(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_222B43E3C(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_222B97FB4(v6, v10, type metadata accessor for MediaPlayClassification);
    if ((sub_222BCB8C4() & 1) != 0 && v10[8] == 1)
    {
      sub_222B97FB4(v10, a2, type metadata accessor for MediaPlayClassification);
      v13 = 0;
    }

    else
    {
      sub_222B77D34(v10, type metadata accessor for MediaPlayClassification);
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
    v12(v6, 1, 1, v7);
    sub_222B4FCD4(v6, &qword_27D0257D8, &unk_222C990C0);
  }

  return (v12)(a2, v13, 1, v7);
}

uint64_t sub_222BE7A68(uint64_t a1)
{
  if (*(a1 + 24) == 0xD000000000000011 && 0x8000000222CA87C0 == *(a1 + 32))
  {
    return 1;
  }

  else
  {
    return sub_222C951FC();
  }
}

uint64_t sub_222BE7AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a3;
  v42 = type metadata accessor for FeaturisedTurn(0);
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - v10;
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v35 = v5;
  v38 = (v5 + 48);
  v39 = (v5 + 56);
  v44 = a1;

  v43 = 0;
  while (1)
  {
    v23 = v43;
    v24 = *(v44 + 16);
    if (v43 == v24)
    {
      v25 = 1;
      v27 = v41;
      v26 = v42;
      v28 = v40;
      goto LABEL_15;
    }

    v27 = v41;
    v26 = v42;
    v28 = v40;
    if (v43 >= v24)
    {
      break;
    }

    sub_222B97E94(v44 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v43, v40, type metadata accessor for FeaturisedTurn);
    v25 = 0;
    ++v23;
LABEL_15:
    (*v39)(v28, v25, 1, v26);
    sub_222B723A4(v28, v27, &qword_27D0253C8, &unk_222C98400);
    if ((*v38)(v27, 1, v26) == 1)
    {

      v33 = v36;
      *(v36 + 24) = 0;
      v33[1] = 0u;
      v33[2] = 0u;
      *v33 = 0u;
      return result;
    }

    v43 = v23;
    v29 = v27;
    v30 = v37;
    sub_222B97FB4(v29, v37, type metadata accessor for FeaturisedTurn);
    v31 = *(v30 + *(v26 + 28));

    sub_222B77D34(v30, type metadata accessor for FeaturisedTurn);

    v32 = v31;
    if (v31)
    {
      v14 = (v31 + 64);
      v15 = -1;
      while (1)
      {
        ++v15;
        v16 = *(v32 + 16);
        if (v15 == v16)
        {
          break;
        }

        if (v15 >= v16)
        {
          __break(1u);
          goto LABEL_22;
        }

        v17 = *(v14 - 4);
        v18 = *(v14 - 3);
        v19 = *(v14 - 2);
        v20 = *(v14 - 1);
        v21 = *v14;
        if (v17 == v11 && v18 == v12)
        {
          v17 = v11;
LABEL_19:

          v45[0] = v17;
          v45[1] = v18;
          v45[2] = v19;
          v45[3] = v20;
          v45[4] = v21;
          extractMediaReference(event:)(v45, v36);
        }

        v14 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_222BE7E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v103 = a2;
  v102 = a1;
  v107 = a5;
  v116 = sub_222C9367C();
  v117 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v123 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v109 = &v100 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  MEMORY[0x28223BE20](v12 - 8);
  v105 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v104 = &v100 - v15;
  MEMORY[0x28223BE20](v16);
  v111 = (&v100 - v17);
  MEMORY[0x28223BE20](v18);
  v106 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v100 - v24;
  v26 = type metadata accessor for MediaPlayClassification(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v125 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v100 - v30;
  MEMORY[0x28223BE20](v32);
  v115 = &v100 - v33;
  MEMORY[0x28223BE20](v34);
  v112 = &v100 - v35;
  MEMORY[0x28223BE20](v36);
  v108 = &v100 - v37;
  v38 = a3[1];
  v129 = *a3;
  v130 = v38;
  v131 = a3[2];
  v132 = *(a3 + 24);
  v113 = a4;
  v39 = *(a4 + 24);
  v40 = *(v39 + 16);
  v114 = v6;

  v119 = v26;
  v124 = v40;
  if (v40)
  {
    v41 = 0;
    v42 = v39 + 32;
    v43 = (v27 + 56);
    v118 = v27 + 48;
    v44 = MEMORY[0x277D84F90];
    v122 = v22;
    v121 = v27;
    v120 = v39;
    while (v41 < *(v39 + 16))
    {
      sub_222B43E3C(v42, v126);
      sub_222B43E3C(v126, &v127);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v45 = swift_dynamicCast();
      v46 = *v43;
      if (v45)
      {
        v46(v22, 0, 1, v26);
        sub_222B97FB4(v22, v31, type metadata accessor for MediaPlayClassification);
        if (sub_222BCB8C4())
        {
          if (v31[8] == 1)
          {
            sub_222B97FB4(v31, v25, type metadata accessor for MediaPlayClassification);
            v47 = 0;
          }

          else
          {
            sub_222B77D34(v31, type metadata accessor for MediaPlayClassification);
            v47 = 1;
          }

          v26 = v119;
        }

        else
        {
          sub_222B77D34(v31, type metadata accessor for MediaPlayClassification);
          v47 = 1;
        }
      }

      else
      {
        v47 = 1;
        v46(v22, 1, 1, v26);
        sub_222B4FCD4(v22, &qword_27D0257D8, &unk_222C990C0);
      }

      v46(v25, v47, 1, v26);
      __swift_destroy_boxed_opaque_existential_0Tm(v126);
      if ((*v118)(v25, 1, v26) == 1)
      {
        sub_222B4FCD4(v25, &qword_27D0257D8, &unk_222C990C0);
        v22 = v122;
        v27 = v121;
      }

      else
      {
        v48 = v115;
        sub_222B97FB4(v25, v115, type metadata accessor for MediaPlayClassification);
        sub_222B97FB4(v48, v125, type metadata accessor for MediaPlayClassification);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v122;
        v27 = v121;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = sub_222B4A278(0, v44[2] + 1, 1, v44);
        }

        v51 = v44[2];
        v50 = v44[3];
        if (v51 >= v50 >> 1)
        {
          v44 = sub_222B4A278((v50 > 1), v51 + 1, 1, v44);
        }

        v44[2] = v51 + 1;
        sub_222B97FB4(v125, v44 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 9) * v51, type metadata accessor for MediaPlayClassification);
        v26 = v119;
      }

      ++v41;
      v42 += 40;
      v39 = v120;
      if (v124 == v41)
      {
        goto LABEL_21;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_21:

  if (!v44[2])
  {

    v75 = type metadata accessor for MediaFeedbackGroundTruth(0);
    return (*(*(v75 - 8) + 56))(v107, 1, 1, v75);
  }

  v52 = v112;
  sub_222B97E94(v44 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v112, type metadata accessor for MediaPlayClassification);

  v53 = v52;
  v54 = v108;
  sub_222B97FB4(v53, v108, type metadata accessor for MediaPlayClassification);
  v55 = *(v113 + 16);
  v126[3] = v26;
  v126[4] = &protocol witness table for MediaPlayClassification;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v126);
  sub_222B97E94(v54, boxed_opaque_existential_1, type metadata accessor for MediaPlayClassification);
  sub_222B43E3C(v126, &v127);
  v57 = *(v55 + 16);
  v58 = v117;
  v125 = v117 + 16;

  v115 = v57;
  if (v57)
  {
    v124 = v58 + 8;
    v59 = 0;
    v110 = type metadata accessor for FeaturisedTurn(0);
    v60 = *(v110 - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v101 = v55;
    v62 = v55 + v61;
    v63 = *(v60 + 72);
    v64 = v109;
    v113 = v62;
    v114 = v63;
LABEL_24:
    v121 = (v62 + v63 * v59);
    v65 = *(__swift_project_boxed_opaque_existential_1(&v127, v128) + *(v26 + 36));
    v122 = *(v65 + 16);
    v118 = v65;

    v66 = 0;
    do
    {
      if (v122 == v66)
      {

        ++v59;
        v26 = v119;
        v63 = v114;
        v62 = v113;
        if (v59 != v115)
        {
          goto LABEL_24;
        }

        v55 = v101;
        v58 = v117;
        goto LABEL_31;
      }

      if (v66 >= *(v118 + 16))
      {
        goto LABEL_55;
      }

      v67 = v117;
      v68 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v69 = *(v117 + 72);
      v70 = *(v117 + 16);
      v71 = v116;
      v70(v64, v118 + v68 + v69 * v66++, v116);
      v72 = sub_222BE8EA8(&qword_280FE02A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v73 = sub_222C9447C();
      v74 = *(v67 + 8);
      v74(v64, v71);
    }

    while ((v73 & 1) == 0);
    v120 = v72;
    v121 = v70;
    v122 = v69;
    v112 = v68;

    v58 = v117;
    v109 = (v117 + 48);
    v77 = v116;
LABEL_33:
    v78 = v119;
    if (v59 < v115)
    {
      v79 = v111;
      sub_222B421FC(*(v113 + v114 * v59 + *(v110 + 24)), v111);
      v80 = (*v109)(v79, 1, v77);
      sub_222B4FCD4(v79, &unk_27D026290, &qword_222C96B40);
      if (v80 == 1)
      {
        if (!__OFADD__(v59++, 1))
        {
          while (v59 != v115)
          {
            if (v59 >= v115)
            {
              goto LABEL_56;
            }

            v82 = v77;
            v118 = v59;
            v83 = *(__swift_project_boxed_opaque_existential_1(&v127, v128) + *(v78 + 36));
            v84 = *(v83 + 16);

            v85 = (v83 + v112);
            v86 = -1;
            while (v86 - v84 != -1)
            {
              if (++v86 >= *(v83 + 16))
              {
                __break(1u);
                goto LABEL_54;
              }

              v87 = &v122[v85];
              v88 = v123;
              (v121)(v123);
              v89 = sub_222C9447C();
              v74(v88, v82);
              v85 = v87;
              if (v89)
              {

                v77 = v82;
                v58 = v117;
                v59 = v118;
                goto LABEL_33;
              }
            }

            v59 = v118 + 1;
            v77 = v82;
            v58 = v117;
            v78 = v119;
            if (__OFADD__(v118, 1))
            {
              goto LABEL_45;
            }
          }

          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
      }

      v115 = v59;
LABEL_47:
      v55 = v101;
      goto LABEL_48;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_31:
  v77 = v116;
LABEL_48:
  v90 = *(v55 + 16);
  v91 = 1;
  v92 = v106;
  v93 = v105;
  v94 = v104;
  if (v115 == v90)
  {
LABEL_52:
    (*(v58 + 56))(v92, v91, 1, v77);

    __swift_destroy_boxed_opaque_existential_0Tm(&v127);
    sub_222B77D34(v108, type metadata accessor for MediaPlayClassification);
    __swift_destroy_boxed_opaque_existential_0Tm(v126);
    v96 = v107;
    (*(v58 + 16))(v107, v102, v77);
    v97 = type metadata accessor for MediaFeedbackGroundTruth(0);
    *(v96 + v97[5]) = 1;
    *(v96 + v97[6]) = v103;
    v98 = v96 + v97[7];
    v99 = v130;
    *v98 = v129;
    *(v98 + 16) = v99;
    *(v98 + 32) = v131;
    *(v98 + 48) = v132;
    sub_222B723A4(v92, v96 + v97[8], &unk_27D026290, &qword_222C96B40);
    (*(*(v97 - 1) + 56))(v96, 0, 1, v97);
    sub_222B554C0(&v129, v126);
  }

  if (v115 >= v90)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v95 = type metadata accessor for FeaturisedTurn(0);
  sub_222B421FC(*(v55 + ((*(*(v95 - 8) + 80) + 32) & ~*(*(v95 - 8) + 80)) + *(*(v95 - 8) + 72) * v115 + *(v95 + 24)), v94);
  sub_222B5551C(v94, v93);
  if ((*(v58 + 48))(v93, 1, v77) != 1)
  {
    (*(v58 + 32))(v92, v93, v77);
    sub_222B4FCD4(v94, &unk_27D026290, &qword_222C96B40);
    v91 = 0;
    goto LABEL_52;
  }

LABEL_59:
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v127);
  __break(1u);
  return result;
}

double sub_222BE8D20@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  sub_222BE738C(a1, sub_222C0B5A0, 0, v5, v6, &v13);
  v7 = v14;
  if (v14)
  {
    v9 = v16;
    v8 = v17;
    v10 = v15;
    v11 = v13;
    extractMediaReference(event:)(&v13, a3);

    sub_222B5EE44(v11, v7, v10, v9, v8);
  }

  else
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_222BE8E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_222BED3E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_222BE8EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PlayMediaFeature.PrimaryMediaItem.__allocating_init(value:)(_OWORD *a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.PrimaryMediaItemMetadata.__allocating_init(value:)(__int128 *a1)
{
  swift_allocObject();
  return sub_222C93EDC();
}

{
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t PlayMediaFeature.EventOrigin.__allocating_init(value:)(char *a1)
{
  swift_allocObject();
  return sub_222C93EEC();
}

{
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t PlayMediaItemMetadata.init(ampConfidenceLevel:ampConfidenceScore:isLibraryContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4;
  return result;
}

uint64_t MediaItem.init(id:mediaType:title:artist:isManualPlay:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 56) = a8;
  return result;
}

uint64_t PlayMediaFeature.PrimaryMediaItem.init(value:)(_OWORD *a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.PrimaryMediaItemMetadata.init(value:)(__int128 *a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.PrimaryMediaItemMetadata.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t PlayMediaFeature.EventOrigin.init(value:)(char *a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t PlayMediaFeature.PrimaryMediaItemSubItemIdentifiers.init(value:)(uint64_t a1)
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222BE94F4(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BE955C(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BE95F4(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BE965C(uint64_t *a1, uint64_t (*a2)(void))
{
  a2(0);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t MediaItem.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MediaItem.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MediaItem.artist.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

SiriPrivateLearningInference::PlayMediaEventOrigin_optional __swiftcall PlayMediaEventOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

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

  *v2 = v5;
  return result;
}

uint64_t PlayMediaEventOrigin.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C506C61756E616DLL;
  }

  else
  {
    return 0x6769725469726973;
  }
}

uint64_t sub_222BE9954(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C506C61756E616DLL;
  }

  else
  {
    v3 = 0x6769725469726973;
  }

  if (v2)
  {
    v4 = 0xEB00000000726567;
  }

  else
  {
    v4 = 0xEA00000000007961;
  }

  if (*a2)
  {
    v5 = 0x6C506C61756E616DLL;
  }

  else
  {
    v5 = 0x6769725469726973;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007961;
  }

  else
  {
    v6 = 0xEB00000000726567;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222C951FC();
  }

  return v8 & 1;
}