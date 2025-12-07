void sub_20BDA45C8(uint64_t a1, uint64_t a2)
{
  v66 = sub_20C134E04();
  v4 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_20C1333E4();
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763F18, &unk_20C155F30);
  MEMORY[0x28223BE20](v70);
  v9 = &v50 - v8;
  v10 = type metadata accessor for WorkoutPlanPreference(0);
  MEMORY[0x28223BE20](v10);
  v71 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v50 - v13;
  MEMORY[0x28223BE20](v14);
  v67 = &v50 - v15;
  MEMORY[0x28223BE20](v16);
  v73 = &v50 - v17;
  MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v22 = 0;
  v23 = a1 + 56;
  v24 = 1 << *(a1 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(a1 + 56);
  v27 = (v24 + 63) >> 6;
  v69 = a2 + 56;
  v58 = (v6 + 32);
  v63 = (v4 + 8);
  v64 = (v6 + 8);
  v57 = (v4 + 32);
  v54 = a1;
  v53 = v19;
  v68 = a2;
  v52 = v21;
  v51 = a1 + 56;
  v50 = v27;
  if (!v26)
  {
    goto LABEL_8;
  }

  do
  {
    v28 = __clz(__rbit64(v26));
    v55 = (v26 - 1) & v26;
LABEL_13:
    v56 = v22;
    v31 = *(v19 + 72);
    sub_20BDAAE68(*(a1 + 48) + v31 * (v28 | (v22 << 6)), v21, type metadata accessor for WorkoutPlanPreference);
    sub_20BDAAED0(v21, v73, type metadata accessor for WorkoutPlanPreference);
    sub_20C13E164();
    sub_20BBC6470(v74);
    v32 = sub_20C13E1B4();
    v33 = -1 << *(a2 + 32);
    v34 = v32 & ~v33;
    v35 = v67;
    if (((*(v69 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
LABEL_29:
      sub_20BDAAE08(v73, type metadata accessor for WorkoutPlanPreference);
      return;
    }

    v36 = ~v33;
    v62 = v31;
    v61 = ~v33;
    while (1)
    {
      sub_20BDAAE68(*(a2 + 48) + v34 * v31, v35, type metadata accessor for WorkoutPlanPreference);
      v37 = *(v70 + 48);
      sub_20BDAAE68(v35, v9, type metadata accessor for WorkoutPlanPreference);
      sub_20BDAAE68(v73, &v9[v37], type metadata accessor for WorkoutPlanPreference);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_20BDAAE68(v9, v71, type metadata accessor for WorkoutPlanPreference);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = v60;
        v39 = v71;
        v40 = v66;
        (*v57)(v60, &v9[v37], v66);
        v41 = MEMORY[0x20F2EC550](v39, v38);
        v42 = *v63;
        v43 = v38;
        v35 = v67;
        (*v63)(v43, v40);
        sub_20BDAAE08(v35, type metadata accessor for WorkoutPlanPreference);
        v42(v39, v40);
        if (v41)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      sub_20BDAAE08(v35, type metadata accessor for WorkoutPlanPreference);
      (*v63)(v71, v66);
LABEL_16:
      sub_20B520158(v9, &qword_27C763F18, &unk_20C155F30);
      a2 = v68;
LABEL_17:
      v34 = (v34 + 1) & v36;
      if (((*(v69 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_20BDAAE68(v9, v72, type metadata accessor for WorkoutPlanPreference);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20BDAAE08(v35, type metadata accessor for WorkoutPlanPreference);
      (*v64)(v72, v65);
      goto LABEL_16;
    }

    v44 = v59;
    v45 = v65;
    (*v58)(v59, &v9[v37], v65);
    v46 = v72;
    v47 = sub_20C1333C4();
    v48 = *v64;
    v49 = v44;
    v35 = v67;
    (*v64)(v49, v45);
    sub_20BDAAE08(v35, type metadata accessor for WorkoutPlanPreference);
    v48(v46, v45);
    if ((v47 & 1) == 0)
    {
LABEL_24:
      sub_20BDAAE08(v9, type metadata accessor for WorkoutPlanPreference);
      a2 = v68;
      v31 = v62;
      v36 = v61;
      goto LABEL_17;
    }

LABEL_26:
    sub_20BDAAE08(v9, type metadata accessor for WorkoutPlanPreference);
    sub_20BDAAE08(v73, type metadata accessor for WorkoutPlanPreference);
    a2 = v68;
    a1 = v54;
    v19 = v53;
    v21 = v52;
    v22 = v56;
    v23 = v51;
    v27 = v50;
    v26 = v55;
  }

  while (v55);
LABEL_8:
  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= v27)
    {
      return;
    }

    v30 = *(v23 + 8 * v22);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v55 = (v30 - 1) & v30;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_20BDA4D9C(__int128 *a1)
{
  v159 = a1;
  v140 = sub_20C132C14();
  v138 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v137 = &v120 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_20C134284();
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v132 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C135C54();
  v155 = *(v3 - 8);
  v156 = v3;
  MEMORY[0x28223BE20](v3);
  v147 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C1344C4();
  v145 = *(v5 - 8);
  v146 = v5;
  MEMORY[0x28223BE20](v5);
  v144 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C137254();
  v157 = *(v7 - 8);
  v158 = v7;
  MEMORY[0x28223BE20](v7);
  v142 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v143 = &v120 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  MEMORY[0x28223BE20](v11 - 8);
  v131 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v141 = &v120 - v14;
  MEMORY[0x28223BE20](v15);
  v130 = &v120 - v16;
  MEMORY[0x28223BE20](v17);
  v139 = &v120 - v18;
  started = type metadata accessor for StartWorkoutSessionRequest(0);
  MEMORY[0x28223BE20](started);
  v129 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v135 = &v120 - v21;
  MEMORY[0x28223BE20](v22);
  v128 = &v120 - v23;
  MEMORY[0x28223BE20](v24);
  v133 = &v120 - v25;
  v126 = sub_20C133954();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_20C134014();
  v122 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v28 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C138894();
  v153 = *(v29 - 8);
  v154 = v29;
  MEMORY[0x28223BE20](v29);
  v149 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C138B94();
  v150 = *(v31 - 8);
  v151 = v31;
  MEMORY[0x28223BE20](v31);
  v148 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v33 - 8);
  v123 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v127 = &v120 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0, &unk_20C14FD00);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v120 - v41;
  v43 = sub_20C135814();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v120 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v120 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = &v120 - v51;
  v53 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v53);
  v55 = (&v120 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20BDAAE68(v160, v55, type metadata accessor for ButtonAction.ActionType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
      v86 = *(v85 + 64);
      sub_20B5DF134(v55 + *(v85 + 48), v42, &qword_27C7622F0, &unk_20C14FD00);
      v87 = v127;
      sub_20B5DF134(v55 + v86, v127, &unk_27C768660, &unk_20C152F60);
      MEMORY[0x20F2F58E0](3);
      sub_20C13E184();
      sub_20B52F9E8(v42, v39, &qword_27C7622F0, &unk_20C14FD00);
      v89 = v150;
      v88 = v151;
      if ((*(v150 + 48))(v39, 1, v151) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        v115 = v148;
        (*(v89 + 32))(v148, v39, v88);
        sub_20C13E184();
        sub_20BDA65F4(&qword_27C76EE40, MEMORY[0x277D54150], MEMORY[0x277D54158]);
        sub_20C13C7C4();
        (*(v89 + 8))(v115, v88);
      }

      v117 = v153;
      v116 = v154;
      v118 = v123;
      sub_20B52F9E8(v87, v123, &unk_27C768660, &unk_20C152F60);
      if ((*(v117 + 48))(v118, 1, v116) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        v119 = v149;
        (*(v117 + 32))(v149, v118, v116);
        sub_20C13E184();
        sub_20BDA65F4(&qword_27C767EC0, MEMORY[0x277D540B0], MEMORY[0x277D540B8]);
        sub_20C13C7C4();
        (*(v117 + 8))(v119, v116);
      }

      sub_20B520158(v87, &unk_27C768660, &unk_20C152F60);
      sub_20B520158(v42, &qword_27C7622F0, &unk_20C14FD00);
      return;
    case 2u:
      v76 = *v55;
      v77 = 4;
      goto LABEL_22;
    case 3u:
      v78 = v122;
      v79 = v121;
      (*(v122 + 32))(v28, v55, v121);
      MEMORY[0x20F2F58E0](5);
      sub_20BDA65F4(&qword_27C7681C0, MEMORY[0x277D504F8], MEMORY[0x277D50500]);
      sub_20C13C7C4();
      (*(v78 + 8))(v28, v79);
      return;
    case 4u:
      v57 = v125;
      v58 = v124;
      v59 = v126;
      (*(v125 + 32))(v124, v55, v126);
      MEMORY[0x20F2F58E0](6);
      sub_20BDA65F4(&qword_27C767540, MEMORY[0x277D50180], MEMORY[0x277D50188]);
      sub_20C13C7C4();
      (*(v57 + 8))(v58, v59);
      return;
    case 5u:
      v90 = *v55;
      MEMORY[0x20F2F58E0](7);
      MEMORY[0x20F2F58E0](v90);
      return;
    case 6u:
      v76 = *v55;
      v77 = 8;
LABEL_22:
      v95 = v159;
      MEMORY[0x20F2F58E0](v77);
      sub_20BBA80A0(v95, v76);
      goto LABEL_47;
    case 7u:
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0, &unk_20C169DE0);
      v81 = *(v55 + v80[12]);
      v82 = v80[16];
      v83 = v80[20];
      v63 = v133;
      sub_20BDAAED0(v55, v133, type metadata accessor for StartWorkoutSessionRequest);
      v64 = v139;
      sub_20B5DF134(v55 + v82, v139, &qword_27C76A410, &unk_20C14FBC0);
      v66 = v157;
      v65 = v158;
      v67 = v143;
      (*(v157 + 32))(v143, v55 + v83, v158);
      MEMORY[0x20F2F58E0](10);
      v84 = v128;
      sub_20BDAAE68(v63, v128, type metadata accessor for StartWorkoutSessionRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        MEMORY[0x20F2F58E0](1);
        sub_20C13CA64();
      }

      else
      {
        v110 = v144;
        v109 = v145;
        v111 = v146;
        (*(v145 + 32))(v144, v84, v146);
        MEMORY[0x20F2F58E0](0);
        sub_20BDA65F4(&qword_27C76EE30, MEMORY[0x277D50820], MEMORY[0x277D50828]);
        sub_20C13C7C4();
        (*(v109 + 8))(v110, v111);
      }

      v106 = v155;
      v105 = v156;
      v112 = 0.0;
      if (v81 != 0.0)
      {
        v112 = v81;
      }

      MEMORY[0x20F2F5910](*&v112);
      v107 = v64;
      v108 = &v161;
      goto LABEL_35;
    case 8u:
      v99 = v55[1];
      v100 = v55[2];
      v101 = v159;
      MEMORY[0x20F2F58E0](12);
      sub_20C13E184();
      if (v99)
      {
        sub_20C13CA64();
      }

      sub_20BDA75A4(v101, v100);
LABEL_47:

      return;
    case 9u:
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0) + 48);
      v71 = v150;
      v70 = v151;
      v72 = v148;
      (*(v150 + 32))(v148, v55, v151);
      v74 = v153;
      v73 = v154;
      v75 = v149;
      (*(v153 + 32))(v149, v55 + v69, v154);
      MEMORY[0x20F2F58E0](13);
      sub_20BDA65F4(&qword_27C76EE40, MEMORY[0x277D54150], MEMORY[0x277D54158]);
      sub_20C13C7C4();
      sub_20BDA65F4(&qword_27C767EC0, MEMORY[0x277D540B0], MEMORY[0x277D540B8]);
      sub_20C13C7C4();
      (*(v74 + 8))(v75, v73);
      (*(v71 + 8))(v72, v70);
      return;
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200, &unk_20C1639C0);
      v96 = v134;
      v97 = v132;
      v98 = v136;
      (*(v134 + 32))(v132, v55, v136);
      MEMORY[0x20F2F58E0](14);
      sub_20BDA65F4(&qword_27C76EE38, MEMORY[0x277D50760], MEMORY[0x277D50768]);
      sub_20C13C7C4();
      sub_20C13CA64();

      (*(v96 + 8))(v97, v98);
      return;
    case 0xBu:
      MEMORY[0x20F2F58E0](15);
      sub_20C13E184();
      sub_20C13E184();
      return;
    case 0xCu:
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
      v61 = *(v60 + 48);
      v62 = *(v60 + 64);
      v63 = v135;
      sub_20BDAAED0(v55, v135, type metadata accessor for StartWorkoutSessionRequest);
      v64 = v141;
      sub_20B5DF134(v55 + v61, v141, &qword_27C76A410, &unk_20C14FBC0);
      v66 = v157;
      v65 = v158;
      v67 = v142;
      (*(v157 + 32))(v142, v55 + v62, v158);
      MEMORY[0x20F2F58E0](17);
      v68 = v129;
      sub_20BDAAE68(v63, v129, type metadata accessor for StartWorkoutSessionRequest);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        MEMORY[0x20F2F58E0](1);
        sub_20C13CA64();
      }

      else
      {
        v103 = v144;
        v102 = v145;
        v104 = v146;
        (*(v145 + 32))(v144, v68, v146);
        MEMORY[0x20F2F58E0](0);
        sub_20BDA65F4(&qword_27C76EE30, MEMORY[0x277D50820], MEMORY[0x277D50828]);
        sub_20C13C7C4();
        (*(v102 + 8))(v103, v104);
      }

      v106 = v155;
      v105 = v156;
      v107 = v64;
      v108 = &v162;
LABEL_35:
      v113 = *(v108 - 32);
      sub_20B52F9E8(v107, v113, &qword_27C76A410, &unk_20C14FBC0);
      if ((*(v106 + 48))(v113, 1, v105) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        v114 = v147;
        (*(v106 + 32))(v147, v113, v105);
        sub_20C13E184();
        sub_20BDA65F4(&qword_27C762F50, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
        sub_20C13C7C4();
        (*(v106 + 8))(v114, v105);
      }

      sub_20BDA65F4(&qword_27C76EE28, MEMORY[0x277D531E0], MEMORY[0x277D531E8]);
      sub_20C13C7C4();
      (*(v66 + 8))(v67, v65);
      sub_20B520158(v64, &qword_27C76A410, &unk_20C14FBC0);
      sub_20BDAAE08(v63, type metadata accessor for StartWorkoutSessionRequest);
      return;
    case 0xDu:
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210, &unk_20C169DF0);
      v92 = v138;
      v93 = v137;
      v94 = v140;
      (*(v138 + 32))(v137, v55 + *(v91 + 48), v140);
      MEMORY[0x20F2F58E0](19);
      sub_20C13CA64();

      sub_20BDA65F4(&qword_27C762CB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_20C13C7C4();
      (*(v92 + 8))(v93, v94);
      return;
    case 0xEu:
      v56 = 0;
      goto LABEL_28;
    case 0xFu:
      v56 = 2;
      goto LABEL_28;
    case 0x10u:
      v56 = 9;
      goto LABEL_28;
    case 0x11u:
      v56 = 11;
      goto LABEL_28;
    case 0x12u:
      v56 = 16;
      goto LABEL_28;
    case 0x13u:
      v56 = 18;
LABEL_28:
      MEMORY[0x20F2F58E0](v56);
      break;
    default:
      sub_20B5DF134(v55, v52, &unk_27C762300, &unk_20C151350);
      MEMORY[0x20F2F58E0](1);
      sub_20B52F9E8(v52, v49, &unk_27C762300, &unk_20C151350);
      if ((*(v44 + 48))(v49, 1, v43) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        (*(v44 + 32))(v46, v49, v43);
        sub_20C13E184();
        sub_20BDA65F4(&qword_27C7681C8, MEMORY[0x277D51CF0], MEMORY[0x277D51CF8]);
        sub_20C13C7C4();
        (*(v44 + 8))(v46, v43);
      }

      sub_20B520158(v52, &unk_27C762300, &unk_20C151350);
      break;
  }
}

void sub_20BDA647C(__int128 *a1)
{
  if (v1[1])
  {
    sub_20C13E184();
    sub_20C13CA64();
    if (v1[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_20C13E184();
    if (v1[5])
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_20C13E184();
    goto LABEL_8;
  }

  sub_20C13E184();
  if (!v1[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_20C13E184();
  sub_20C13CA64();
  if (!v1[5])
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_20C13E184();
  sub_20C13CA64();
LABEL_8:
  type metadata accessor for ButtonAction(0);
  sub_20BDA4D9C(a1);
}

uint64_t sub_20BDA65F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BDA6654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_20C13E164();
  a3(v5);
  return sub_20C13E1B4();
}

uint64_t sub_20BDA66B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_20C13E164();
  a4(v6);
  return sub_20C13E1B4();
}

uint64_t sub_20BDA6744(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfItemX(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v12, v9);
  if (v12)
  {
    v14 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v22 = *(v5 + 72);
    do
    {
      sub_20BDAAE68(v14, v11, type metadata accessor for ShelfItemX);
      sub_20BDAAE68(v11, v7, type metadata accessor for ShelfItemX);
      v15 = *v7;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0, &unk_20C1719B0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 64);
      MEMORY[0x20F2F58E0](0);
      sub_20BBA7D74(a1, v15);

      v19 = sub_20C135214();
      sub_20BDA65F4(&qword_27C762F80, MEMORY[0x277D51640], MEMORY[0x277D51648]);
      sub_20C13C7C4();
      (*(*(v19 - 8) + 8))(v7 + v17, v19);
      v20 = sub_20C133954();
      sub_20BDA65F4(&qword_27C767540, MEMORY[0x277D50180], MEMORY[0x277D50188]);
      sub_20C13C7C4();
      (*(*(v20 - 8) + 8))(v7 + v18, v20);
      result = sub_20BDAAE08(v11, type metadata accessor for ShelfItemX);
      v14 += v22;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_20BDA69E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DatePickerItem(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v8, v5);
  if (v8)
  {
    v10 = *(v3 + 24);
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_20BDAAE68(v11, v7, type metadata accessor for DatePickerItem);
      sub_20C133594();
      sub_20BDA65F4(&qword_27C763118, MEMORY[0x277D4FFA8], MEMORY[0x277D4FFB0]);
      sub_20C13C7C4();
      sub_20C13CA64();
      MEMORY[0x20F2F58E0](v7[v10]);
      result = sub_20BDAAE08(v7, type metadata accessor for DatePickerItem);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_20BDA6B7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = v5;

      sub_20C13CA64();
      if (v5)
      {
        sub_20C13E184();
        v8 = v7;
        sub_20C13D604();

        if (v6 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_20C13E184();
        if (v6 < 0)
        {
LABEL_9:
          MEMORY[0x20F2F58E0](1);
          goto LABEL_4;
        }
      }

      MEMORY[0x20F2F58E0](0);
LABEL_4:
      sub_20C13CA64();
      v4 += 32;

      --v3;
    }

    while (v3);
  }
}

void sub_20BDA6D0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v4 = a2 + 56;
    do
    {
      v4 += 32;
      sub_20C13E184();

      sub_20C13CA64();
      sub_20C134744();
      sub_20C13CA64();

      --v3;
    }

    while (v3);
  }
}

void sub_20BDA6DB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v4 = a2 + 41;
    do
    {
      v5 = *(v4 - 9);
      v6 = *(v4 - 1);
      v4 += 16;
      v7 = v5;
      sub_20C13D604();
      MEMORY[0x20F2F58E0](v6);
      v8 = sub_20C137F94();
      MEMORY[0x20F2F58E0](v8);

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_20BDA6E4C(__int128 *a1, uint64_t a2)
{
  v39 = type metadata accessor for ButtonAction(0);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_20C137C24();
  v6 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v35 - v9;
  v10 = type metadata accessor for RootShowcaseItem(0);
  v11 = *(v10 - 1);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v15, v12);
  v47 = v15;
  if (v15)
  {
    v17 = v10[9];
    v45 = &v14[v10[10]];
    v46 = v17;
    v18 = *(v11 + 80);
    v19 = v10[11];
    v43 = v10[12];
    v44 = v19;
    v20 = 0;
    v42 = a2 + ((v18 + 32) & ~v18);
    v41 = *(v11 + 72);
    v40 = (v6 + 48);
    v36 = (v6 + 32);
    v35 = (v6 + 8);
    do
    {
      v50 = v20;
      sub_20BDAAE68(v42 + v41 * v20, v14, type metadata accessor for RootShowcaseItem);
      sub_20C13CA64();
      sub_20C13CA64();

      v21 = v14[40];
      v51 = *(v14 + 24);
      v52 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00, &unk_20C152DE0);
      sub_20B654574();
      sub_20C133BE4();
      v22 = *(v14 + 7);
      if (v22 == 1)
      {
        sub_20C13E184();
        v23 = v49;
        goto LABEL_20;
      }

      v24 = *(v14 + 9);
      v25 = *(v14 + 10);
      v26 = *(v14 + 44);
      sub_20C13E184();
      if (v22)
      {
        sub_20C13E184();
        sub_20C13CA64();
        if (v24)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_20C13E184();
        if (v24)
        {
LABEL_8:
          sub_20C13E184();
          sub_20C13CA64();
          if ((v26 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_9;
        }
      }

      sub_20C13E184();
      if ((v26 & 1) == 0)
      {
LABEL_12:
        sub_20C13E184();
        MEMORY[0x20F2F58E0](v25);
        goto LABEL_13;
      }

LABEL_9:
      sub_20C13E184();
LABEL_13:
      v23 = v49;
      if (v26 >> 8 == 2)
      {
        v27 = 0;
      }

      else if (v26 >> 8 == 3)
      {
        v27 = 2;
      }

      else
      {
        MEMORY[0x20F2F58E0](1);
        v27 = (v26 >> 8) & 1;
      }

      MEMORY[0x20F2F58E0](v27);
LABEL_20:
      v28 = *(v14 + 7);
      v53 = *(v14 + 6);
      v54 = v28;
      v55 = *(v14 + 8);
      sub_20B653898(a1);
      v29 = v48;
      sub_20B52F9E8(&v14[v46], v48, &unk_27C766680, &unk_20C14F920);
      if ((*v40)(v29, 1, v23) == 1)
      {
        sub_20C13E184();
      }

      else
      {
        v30 = v37;
        (*v36)(v37, v29, v23);
        sub_20C13E184();
        sub_20BDA65F4(&qword_27C762F08, MEMORY[0x277D53A78], MEMORY[0x277D53A88]);
        sub_20C13C7C4();
        (*v35)(v30, v23);
      }

      if (*(v45 + 1))
      {
        sub_20C13E184();
        sub_20C13CA64();
      }

      else
      {
        sub_20C13E184();
      }

      v31 = *&v14[v44];
      v32 = *(v31 + 16);
      MEMORY[0x20F2F58E0](v32);
      if (v32)
      {
        v33 = v31 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
        v34 = *(v38 + 72);
        do
        {
          sub_20BDAAE68(v33, v5, type metadata accessor for ButtonAction);
          if (v5[1])
          {
            sub_20C13E184();
            sub_20C13CA64();
            if (!v5[3])
            {
              goto LABEL_28;
            }
          }

          else
          {
            sub_20C13E184();
            if (!v5[3])
            {
LABEL_28:
              sub_20C13E184();
              if (!v5[5])
              {
                goto LABEL_36;
              }

              goto LABEL_29;
            }
          }

          sub_20C13E184();
          sub_20C13CA64();
          if (!v5[5])
          {
LABEL_36:
            sub_20C13E184();
            goto LABEL_30;
          }

LABEL_29:
          sub_20C13E184();
          sub_20C13CA64();
LABEL_30:
          sub_20BDA4D9C(a1);
          sub_20BDAAE08(v5, type metadata accessor for ButtonAction);
          v33 += v34;
          --v32;
        }

        while (v32);
      }

      v20 = v50 + 1;
      sub_20C135184();
      sub_20C13CA64();

      result = sub_20BDAAE08(v14, type metadata accessor for RootShowcaseItem);
    }

    while (v20 != v47);
  }

  return result;
}

uint64_t sub_20BDA75A4(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAction(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v9, v6);
  if (v9)
  {
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_20BDAAE68(v11, v8, type metadata accessor for ButtonAction);
      if (v8[1])
      {
        sub_20C13E184();
        sub_20C13CA64();
        if (v8[3])
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_20C13E184();
        if (v8[3])
        {
LABEL_7:
          sub_20C13E184();
          sub_20C13CA64();
          if (!v8[5])
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_20C13E184();
      if (!v8[5])
      {
LABEL_11:
        sub_20C13E184();
        goto LABEL_4;
      }

LABEL_3:
      sub_20C13E184();
      sub_20C13CA64();
LABEL_4:
      sub_20BDA4D9C(a1);
      result = sub_20BDAAE08(v8, type metadata accessor for ButtonAction);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_20BDA779C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MetadataEntry(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v8, v5);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    while (1)
    {
      sub_20BDAAE68(v10, v7, type metadata accessor for MetadataEntry);
      sub_20C13D604();
      v12 = *(v7 + 1);
      if (!(v12 >> 62))
      {
        break;
      }

      if (v12 >> 62 == 1)
      {
        v13 = 2;
        goto LABEL_9;
      }

      if (v12 == 0x8000000000000000 && *(v7 + 1) == 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = 3;
      }

      MEMORY[0x20F2F58E0](v15);
      if (!*(v7 + 5))
      {
LABEL_18:
        sub_20C13E184();
        goto LABEL_4;
      }

LABEL_3:
      sub_20C13E184();
      sub_20C13CA64();
LABEL_4:
      sub_20C132EE4();
      sub_20BDA65F4(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_20C13C7C4();
      result = sub_20BDAAE08(v7, type metadata accessor for MetadataEntry);
      v10 += v11;
      if (!--v8)
      {
        return result;
      }
    }

    v13 = 1;
LABEL_9:
    MEMORY[0x20F2F58E0](v13);
    MEMORY[0x20F2F58E0](v12 & 1);
    sub_20C13CA64();
    if (!*(v7 + 5))
    {
      goto LABEL_18;
    }

    goto LABEL_3;
  }

  return result;
}

void sub_20BDA79E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v4 = a2 + 72;
    do
    {
      MEMORY[0x20F2F58E0](*(v4 - 40));
      sub_20C13E184();

      sub_20C13CA64();
      sub_20C13CA64();

      v4 += 48;
      --v3;
    }

    while (v3);
  }
}

void sub_20BDA7A9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *v4;
      MEMORY[0x20F2F58E0](0);
      if (v5)
      {
        sub_20C13E184();

        sub_20C13CA64();
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_20C13E184();

        if (!v6)
        {
LABEL_9:
          sub_20C13E184();
          goto LABEL_4;
        }
      }

      sub_20C13E184();
      sub_20C13CA64();
LABEL_4:

      v4 += 4;

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_20BDA7B8C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageAlertAction(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x20F2F58E0](v8, v5);
  if (v8)
  {
    v10 = *(v3 + 20);
    v11 = &v7[*(v3 + 24)];
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_20BDAAE68(v12, v7, type metadata accessor for PageAlertAction);
      sub_20C132EE4();
      sub_20BDA65F4(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_20C13C7C4();
      MEMORY[0x20F2F58E0](v7[v10]);
      if (*(v11 + 1))
      {
        sub_20C13E184();
        sub_20C13CA64();
      }

      else
      {
        sub_20C13E184();
      }

      result = sub_20BDAAE08(v7, type metadata accessor for PageAlertAction);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_20BDA7D60(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      v4 += 2;
      sub_20C13E184();
      if (v5)
      {

        sub_20C13CA64();
      }

      --v3;
    }

    while (v3);
  }
}

void sub_20BDA7DFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x20F2F58E0](v3);
  if (v3)
  {
    v4 = a2 + 48;
    do
    {
      v5 = *(v4 + 16);
      v6 = *(v4 + 24);
      v7 = *(v4 + 32);
      v9 = *(v4 + 40);
      MEMORY[0x20F2F58E0](*(v4 - 16));
      sub_20C13E184();
      sub_20C13E184();

      sub_20C13CA64();
      MEMORY[0x20F2F58E0](v5);
      MEMORY[0x20F2F58E0](v6);
      MEMORY[0x20F2F58E0](v7);
      MEMORY[0x20F2F58E0](v9);
      v8 = sub_20C137F94();
      MEMORY[0x20F2F58E0](v8);

      v4 += 64;
      --v3;
    }

    while (v3);
  }
}

void sub_20BDA7EF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_20C13DB34();
    MEMORY[0x20F2F58E0](v8);
    v3 = sub_20C13DB34();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x20F2F58E0](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x20F2F5430](i, a2);
      sub_20C13D604();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_20C13D604();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_20BDA7FE0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8 || (a1[2] != a2[2] || v7 != v8) && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = a1[5];
  v10 = a2[5];
  if (v9)
  {
    if (v10 && (a1[4] == a2[4] && v9 == v10 || (sub_20C13DFF4() & 1) != 0))
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_22:
  v11 = *(type metadata accessor for ButtonAction(0) + 28);

  return sub_20BDA80E4(a1 + v11, a2 + v11);
}

uint64_t sub_20BDA80E4(uint64_t a1, uint64_t a2)
{
  v373 = a1;
  v374 = a2;
  v2 = sub_20C132C14();
  v359 = *(v2 - 8);
  v360 = v2;
  MEMORY[0x28223BE20](v2);
  v333 = &v306 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v358 = &v306 - v5;
  v6 = sub_20C134284();
  v356 = *(v6 - 8);
  v357 = v6;
  MEMORY[0x28223BE20](v6);
  v332 = &v306 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_20C135C54();
  v327 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v313 = &v306 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EDF8, &qword_20C17EB00);
  MEMORY[0x28223BE20](v326);
  v321 = &v306 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v316 = &v306 - v11;
  v12 = sub_20C137254();
  v371 = *(v12 - 8);
  v372 = v12;
  MEMORY[0x28223BE20](v12);
  v338 = &v306 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v363 = &v306 - v15;
  MEMORY[0x28223BE20](v16);
  v334 = &v306 - v17;
  MEMORY[0x28223BE20](v18);
  v364 = &v306 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410, &unk_20C14FBC0);
  MEMORY[0x28223BE20](v20 - 8);
  v315 = &v306 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v337 = &v306 - v23;
  MEMORY[0x28223BE20](v24);
  v367 = &v306 - v25;
  MEMORY[0x28223BE20](v26);
  v310 = &v306 - v27;
  MEMORY[0x28223BE20](v28);
  v343 = &v306 - v29;
  MEMORY[0x28223BE20](v30);
  v362 = &v306 - v31;
  started = type metadata accessor for StartWorkoutSessionRequest(0);
  MEMORY[0x28223BE20](started - 8);
  v340 = &v306 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v335 = &v306 - v35;
  v355 = sub_20C133954();
  v354 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v331 = &v306 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = sub_20C134014();
  v352 = *(v353 - 8);
  MEMORY[0x28223BE20](v353);
  v329 = &v306 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = sub_20C138894();
  v366 = *(v368 - 8);
  MEMORY[0x28223BE20](v368);
  v330 = &v306 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v361 = &v306 - v40;
  MEMORY[0x28223BE20](v41);
  v307 = &v306 - v42;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE00, &qword_20C17D018);
  MEMORY[0x28223BE20](v312);
  v320 = &v306 - v43;
  v44 = sub_20C138B94();
  v369 = *(v44 - 8);
  v370 = v44;
  MEMORY[0x28223BE20](v44);
  v339 = &v306 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v309 = &v306 - v47;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE08, &qword_20C17D020);
  MEMORY[0x28223BE20](v318);
  v319 = &v306 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v49 - 8);
  v308 = &v306 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v341 = &v306 - v52;
  MEMORY[0x28223BE20](v53);
  v342 = &v306 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0, &unk_20C14FD00);
  MEMORY[0x28223BE20](v55 - 8);
  v314 = &v306 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v336 = &v306 - v58;
  MEMORY[0x28223BE20](v59);
  v365 = &v306 - v60;
  v325 = sub_20C135814();
  v324 = *(v325 - 8);
  MEMORY[0x28223BE20](v325);
  v311 = &v306 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300, &unk_20C151350);
  MEMORY[0x28223BE20](v62 - 8);
  v317 = &v306 - v63;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768160, &qword_20C165268);
  MEMORY[0x28223BE20](v322);
  v323 = &v306 - v64;
  v65 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v65);
  v348 = &v306 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v351 = &v306 - v68;
  MEMORY[0x28223BE20](v69);
  v346 = &v306 - v70;
  MEMORY[0x28223BE20](v71);
  v347 = &v306 - v72;
  MEMORY[0x28223BE20](v73);
  v349 = &v306 - v74;
  MEMORY[0x28223BE20](v75);
  v344 = (&v306 - v76);
  MEMORY[0x28223BE20](v77);
  v350 = &v306 - v78;
  MEMORY[0x28223BE20](v79);
  v81 = (&v306 - v80);
  MEMORY[0x28223BE20](v82);
  v84 = &v306 - v83;
  MEMORY[0x28223BE20](v85);
  v345 = &v306 - v86;
  MEMORY[0x28223BE20](v87);
  v89 = &v306 - v88;
  MEMORY[0x28223BE20](v90);
  v92 = (&v306 - v91);
  MEMORY[0x28223BE20](v93);
  v95 = &v306 - v94;
  MEMORY[0x28223BE20](v96);
  v98 = &v306 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE10, &qword_20C17D028);
  MEMORY[0x28223BE20](v99 - 8);
  v101 = &v306 - v100;
  v103 = &v306 + *(v102 + 56) - v100;
  sub_20BDAAE68(v373, &v306 - v100, type metadata accessor for ButtonAction.ActionType);
  v104 = v374;
  v374 = v103;
  sub_20BDAAE68(v104, v103, type metadata accessor for ButtonAction.ActionType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v306 = v101;
      sub_20BDAAE68(v101, v95, type metadata accessor for ButtonAction.ActionType);
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
      v187 = *(v186 + 48);
      v188 = *(v186 + 64);
      v189 = v374;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_20B520158(&v95[v188], &unk_27C768660, &unk_20C152F60);
        sub_20B520158(&v95[v187], &qword_27C7622F0, &unk_20C14FD00);
        goto LABEL_72;
      }

      v190 = *v95;
      v191 = *v189;
      sub_20B5DF134(&v95[v187], v365, &qword_27C7622F0, &unk_20C14FD00);
      v192 = &v95[v188];
      v193 = v342;
      sub_20B5DF134(v192, v342, &unk_27C768660, &unk_20C152F60);
      v194 = &v189[v187];
      v195 = v336;
      sub_20B5DF134(v194, v336, &qword_27C7622F0, &unk_20C14FD00);
      v196 = &v189[v188];
      v197 = v341;
      sub_20B5DF134(v196, v341, &unk_27C768660, &unk_20C152F60);
      if (v190 != v191)
      {
        sub_20B520158(v197, &unk_27C768660, &unk_20C152F60);
        sub_20B520158(v195, &qword_27C7622F0, &unk_20C14FD00);
        sub_20B520158(v193, &unk_27C768660, &unk_20C152F60);
        sub_20B520158(v365, &qword_27C7622F0, &unk_20C14FD00);
        goto LABEL_102;
      }

      v245 = *(v318 + 48);
      v246 = v365;
      v247 = v319;
      sub_20B52F9E8(v365, v319, &qword_27C7622F0, &unk_20C14FD00);
      sub_20B52F9E8(v195, v247 + v245, &qword_27C7622F0, &unk_20C14FD00);
      v248 = v370;
      v249 = *(v369 + 48);
      v250 = v249(v247, 1, v370);
      v101 = v306;
      v251 = v368;
      if (v250 == 1)
      {
        v252 = v249(v247 + v245, 1, v248);
        v253 = v320;
        if (v252 == 1)
        {
          sub_20B520158(v247, &qword_27C7622F0, &unk_20C14FD00);
          goto LABEL_126;
        }

        goto LABEL_105;
      }

      v262 = v314;
      sub_20B52F9E8(v247, v314, &qword_27C7622F0, &unk_20C14FD00);
      v263 = v249(v247 + v245, 1, v248);
      v253 = v320;
      if (v263 == 1)
      {
        (*(v369 + 8))(v262, v248);
LABEL_105:
        sub_20B520158(v247, &qword_27C76EE08, &qword_20C17D020);
LABEL_106:
        sub_20B520158(v341, &unk_27C768660, &unk_20C152F60);
        sub_20B520158(v336, &qword_27C7622F0, &unk_20C14FD00);
        sub_20B520158(v342, &unk_27C768660, &unk_20C152F60);
        sub_20B520158(v246, &qword_27C7622F0, &unk_20C14FD00);
        goto LABEL_117;
      }

      v282 = v262;
      v283 = v369;
      v284 = v247 + v245;
      v285 = v309;
      (*(v369 + 32))(v309, v284, v248);
      sub_20BDA65F4(&qword_27C76EE20, MEMORY[0x277D54150], MEMORY[0x277D54160]);
      v286 = sub_20C13C894();
      v287 = *(v283 + 8);
      v287(v285, v248);
      v288 = v282;
      v251 = v368;
      v287(v288, v248);
      sub_20B520158(v247, &qword_27C7622F0, &unk_20C14FD00);
      if ((v286 & 1) == 0)
      {
        goto LABEL_106;
      }

LABEL_126:
      v289 = *(v312 + 48);
      v290 = v342;
      sub_20B52F9E8(v342, v253, &unk_27C768660, &unk_20C152F60);
      v291 = v341;
      sub_20B52F9E8(v341, v253 + v289, &unk_27C768660, &unk_20C152F60);
      v292 = *(v366 + 48);
      if (v292(v253, 1, v251) == 1)
      {
        sub_20B520158(v291, &unk_27C768660, &unk_20C152F60);
        sub_20B520158(v336, &qword_27C7622F0, &unk_20C14FD00);
        sub_20B520158(v290, &unk_27C768660, &unk_20C152F60);
        sub_20B520158(v365, &qword_27C7622F0, &unk_20C14FD00);
        if (v292(v253 + v289, 1, v251) == 1)
        {
          sub_20B520158(v253, &unk_27C768660, &unk_20C152F60);
LABEL_57:
          v224 = v306;
          goto LABEL_66;
        }

        goto LABEL_131;
      }

      v293 = v308;
      sub_20B52F9E8(v253, v308, &unk_27C768660, &unk_20C152F60);
      if (v292(v253 + v289, 1, v251) == 1)
      {
        sub_20B520158(v341, &unk_27C768660, &unk_20C152F60);
        sub_20B520158(v336, &qword_27C7622F0, &unk_20C14FD00);
        sub_20B520158(v342, &unk_27C768660, &unk_20C152F60);
        sub_20B520158(v365, &qword_27C7622F0, &unk_20C14FD00);
        (*(v366 + 8))(v293, v251);
LABEL_131:
        sub_20B520158(v253, &qword_27C76EE00, &qword_20C17D018);
        v224 = v306;
LABEL_132:
        sub_20BDAAE08(v224, type metadata accessor for ButtonAction.ActionType);
        goto LABEL_77;
      }

      v302 = v366;
      v303 = v307;
      (*(v366 + 32))(v307, v253 + v289, v251);
      sub_20BDA65F4(&qword_27C76EE18, MEMORY[0x277D540B0], MEMORY[0x277D540C0]);
      v304 = sub_20C13C894();
      v305 = *(v302 + 8);
      v305(v303, v251);
      sub_20B520158(v341, &unk_27C768660, &unk_20C152F60);
      sub_20B520158(v336, &qword_27C7622F0, &unk_20C14FD00);
      sub_20B520158(v342, &unk_27C768660, &unk_20C152F60);
      sub_20B520158(v365, &qword_27C7622F0, &unk_20C14FD00);
      v305(v293, v251);
      sub_20B520158(v253, &unk_27C768660, &unk_20C152F60);
      v224 = v306;
      if ((v304 & 1) == 0)
      {
        goto LABEL_132;
      }

LABEL_66:
      sub_20BDAAE08(v224, type metadata accessor for ButtonAction.ActionType);
      v156 = 1;
      return v156 & 1;
    case 2u:
      sub_20BDAAE68(v101, v92, type metadata accessor for ButtonAction.ActionType);
      v158 = *v92;
      v159 = v374;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_22;
      }

      goto LABEL_49;
    case 3u:
      sub_20BDAAE68(v101, v89, type metadata accessor for ButtonAction.ActionType);
      v161 = v374;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v111 = v352;
        v112 = v329;
        v113 = v353;
        (*(v352 + 32))(v329, v161, v353);
        v114 = MEMORY[0x20F2EB730](v89, v112);
        goto LABEL_27;
      }

      (*(v352 + 8))(v89, v353);
      goto LABEL_76;
    case 4u:
      v89 = v345;
      sub_20BDAAE68(v101, v345, type metadata accessor for ButtonAction.ActionType);
      v110 = v374;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v354 + 8))(v89, v355);
        goto LABEL_76;
      }

      v111 = v354;
      v112 = v331;
      v113 = v355;
      (*(v354 + 32))(v331, v110, v355);
      v114 = MEMORY[0x20F2EAFF0](v89, v112);
LABEL_27:
      v156 = v114;
      v162 = *(v111 + 8);
      v162(v112, v113);
      v162(v89, v113);
      goto LABEL_28;
    case 5u:
      sub_20BDAAE68(v101, v84, type metadata accessor for ButtonAction.ActionType);
      v198 = v374;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_76;
      }

      v109 = *v84 ^ *v198;
      goto LABEL_43;
    case 6u:
      sub_20BDAAE68(v101, v81, type metadata accessor for ButtonAction.ActionType);
      v158 = *v81;
      v159 = v374;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
LABEL_22:
        sub_20BDA4218(v158, *v159);
        v156 = v160;

        goto LABEL_28;
      }

LABEL_49:

      goto LABEL_76;
    case 7u:
      v115 = v350;
      sub_20BDAAE68(v101, v350, type metadata accessor for ButtonAction.ActionType);
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0, &unk_20C169DE0);
      v164 = v163[12];
      v165 = *(v115 + v164);
      v117 = v163[16];
      v118 = v163[20];
      v166 = v374;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_35;
      }

      v306 = v101;
      v167 = *(v166 + v164);
      v168 = v335;
      sub_20BDAAED0(v166, v335, type metadata accessor for StartWorkoutSessionRequest);
      sub_20B5DF134(v115 + v117, v362, &qword_27C76A410, &unk_20C14FBC0);
      v169 = v371;
      v170 = v372;
      v171 = *(v371 + 32);
      v171(v364, v115 + v118, v372);
      v172 = v166 + v117;
      v173 = v166;
      v174 = v343;
      sub_20B5DF134(v172, v343, &qword_27C76A410, &unk_20C14FBC0);
      v175 = v173 + v118;
      v128 = v168;
      v176 = v334;
      v171(v334, v175, v170);
      LOBYTE(v171) = sub_20C0782AC(v115, v168);
      sub_20BDAAE08(v115, type metadata accessor for StartWorkoutSessionRequest);
      if ((v171 & 1) == 0)
      {
        v243 = *(v169 + 8);
        v243(v176, v170);
        sub_20B520158(v174, &qword_27C76A410, &unk_20C14FBC0);
        v243(v364, v170);
        v244 = v362;
        goto LABEL_101;
      }

      v177 = v364;
      v178 = v306;
      if (v165 != v167)
      {
        v267 = *(v169 + 8);
        v267(v176, v170);
        sub_20B520158(v343, &qword_27C76A410, &unk_20C14FBC0);
        v267(v177, v170);
        sub_20B520158(v362, &qword_27C76A410, &unk_20C14FBC0);
        v268 = v128;
LABEL_122:
        sub_20BDAAE08(v268, type metadata accessor for StartWorkoutSessionRequest);
        sub_20BDAAE08(v178, type metadata accessor for ButtonAction.ActionType);
        goto LABEL_77;
      }

      v179 = *(v326 + 48);
      v180 = v362;
      v181 = v316;
      sub_20B52F9E8(v362, v316, &qword_27C76A410, &unk_20C14FBC0);
      sub_20B52F9E8(v343, v181 + v179, &qword_27C76A410, &unk_20C14FBC0);
      v182 = v327;
      v183 = *(v327 + 48);
      v184 = v328;
      if (v183(v181, 1, v328) == 1)
      {
        if (v183(v181 + v179, 1, v184) == 1)
        {
          sub_20B520158(v181, &qword_27C76A410, &unk_20C14FBC0);
          v185 = v343;
LABEL_134:
          v298 = v177;
          v299 = v334;
          v156 = MEMORY[0x20F2EE970](v177, v334);
          v300 = *(v169 + 8);
          v301 = v372;
          v300(v299, v372);
          sub_20B520158(v185, &qword_27C76A410, &unk_20C14FBC0);
          v300(v298, v301);
          sub_20B520158(v180, &qword_27C76A410, &unk_20C14FBC0);
          sub_20BDAAE08(v335, type metadata accessor for StartWorkoutSessionRequest);
          sub_20BDAAE08(v178, type metadata accessor for ButtonAction.ActionType);
          return v156 & 1;
        }
      }

      else
      {
        v273 = v310;
        sub_20B52F9E8(v181, v310, &qword_27C76A410, &unk_20C14FBC0);
        if (v183(v181 + v179, 1, v184) != 1)
        {
          v294 = v181 + v179;
          v295 = v313;
          (*(v182 + 32))(v313, v294, v184);
          sub_20BDA65F4(&qword_27C7640F0, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
          v296 = sub_20C13C894();
          v297 = *(v182 + 8);
          v297(v295, v184);
          v297(v273, v184);
          sub_20B520158(v181, &qword_27C76A410, &unk_20C14FBC0);
          v185 = v343;
          v178 = v306;
          if (v296)
          {
            goto LABEL_134;
          }

          goto LABEL_121;
        }

        (*(v182 + 8))(v273, v184);
        v178 = v306;
      }

      sub_20B520158(v181, &qword_27C76EDF8, &qword_20C17EB00);
      v185 = v343;
LABEL_121:
      v274 = *(v169 + 8);
      v275 = v372;
      v274(v334, v372);
      sub_20B520158(v185, &qword_27C76A410, &unk_20C14FBC0);
      v274(v177, v275);
      sub_20B520158(v180, &qword_27C76A410, &unk_20C14FBC0);
      v268 = v335;
      goto LABEL_122;
    case 8u:
      v225 = v101;
      v226 = v344;
      sub_20BDAAE68(v101, v344, type metadata accessor for ButtonAction.ActionType);
      v228 = *v226;
      v227 = v226[1];
      v229 = v226[2];
      v230 = v374;
      if (swift_getEnumCaseMultiPayload() != 8)
      {

        v101 = v225;
        goto LABEL_76;
      }

      v232 = v230[1];
      v231 = v230[2];
      if (v227)
      {
        if (v232)
        {
          if (v228 == *v230 && v227 == v232)
          {

LABEL_112:
            v156 = sub_20BB808A4(v229, v231);

            sub_20BDAAE08(v225, type metadata accessor for ButtonAction.ActionType);
            return v156 & 1;
          }

          v266 = sub_20C13DFF4();

          if (v266)
          {
            goto LABEL_112;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v232)
        {
          goto LABEL_112;
        }
      }

      sub_20BDAAE08(v225, type metadata accessor for ButtonAction.ActionType);
      goto LABEL_77;
    case 9u:
      v141 = v349;
      sub_20BDAAE68(v101, v349, type metadata accessor for ButtonAction.ActionType);
      v142 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0) + 48);
      v143 = v374;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        (*(v366 + 8))(v141 + v142, v368);
        v234 = v369;
        v233 = v370;
        goto LABEL_74;
      }

      v144 = v369;
      v145 = v339;
      (*(v369 + 32))(v339, v143, v370);
      v146 = v366;
      v147 = *(v366 + 32);
      v148 = v368;
      v147(v361, v141 + v142, v368);
      v149 = v143 + v142;
      v150 = v330;
      v147(v330, v149, v148);
      v151 = MEMORY[0x20F2F02B0](v141, v145);
      v152 = *(v144 + 8);
      v153 = v141;
      v154 = v370;
      v152(v153, v370);
      if ((v151 & 1) == 0)
      {
        v242 = *(v146 + 8);
        v242(v150, v148);
        v242(v361, v148);
        v152(v145, v154);
        goto LABEL_117;
      }

      v155 = v361;
      v156 = MEMORY[0x20F2EFFB0](v361, v150);
      v157 = *(v146 + 8);
      v157(v150, v148);
      v157(v155, v148);
      v152(v339, v154);
LABEL_28:
      sub_20BDAAE08(v101, type metadata accessor for ButtonAction.ActionType);
      return v156 & 1;
    case 0xAu:
      v141 = v347;
      sub_20BDAAE68(v101, v347, type metadata accessor for ButtonAction.ActionType);
      v213 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200, &unk_20C1639C0) + 48);
      v215 = *(v141 + v213);
      v214 = *(v141 + v213 + 8);
      v216 = v374;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        v234 = v356;
        v233 = v357;
LABEL_74:
        (*(v234 + 8))(v141, v233);
        goto LABEL_76;
      }

      v306 = v101;
      v218 = *(v216 + v213);
      v217 = *(v216 + v213 + 8);
      v220 = v356;
      v219 = v357;
      v221 = v332;
      (*(v356 + 32))(v332, v216, v357);
      v222 = MEMORY[0x20F2EB9E0](v141, v221);
      v223 = *(v220 + 8);
      v223(v141, v219);
      if ((v222 & 1) == 0)
      {
        v223(v221, v219);

        goto LABEL_102;
      }

      if (v215 == v218 && v214 == v217)
      {

        v223(v221, v219);
        goto LABEL_57;
      }

      v265 = sub_20C13DFF4();

      v223(v221, v219);
      v224 = v306;
      if (v265)
      {
        goto LABEL_66;
      }

      goto LABEL_132;
    case 0xBu:
      v106 = v346;
      sub_20BDAAE68(v101, v346, type metadata accessor for ButtonAction.ActionType);
      v107 = v106[1];
      v108 = v374;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_76;
      }

      if (*v106 != *v108)
      {
        goto LABEL_117;
      }

      v109 = v107 ^ v108[1];
LABEL_43:
      sub_20BDAAE08(v101, type metadata accessor for ButtonAction.ActionType);
      v156 = v109 ^ 1;
      return v156 & 1;
    case 0xCu:
      v115 = v351;
      sub_20BDAAE68(v101, v351, type metadata accessor for ButtonAction.ActionType);
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
      v117 = *(v116 + 48);
      v118 = *(v116 + 64);
      v119 = v374;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
LABEL_35:
        (*(v371 + 8))(v115 + v118, v372);
        sub_20B520158(v115 + v117, &qword_27C76A410, &unk_20C14FBC0);
        sub_20BDAAE08(v115, type metadata accessor for StartWorkoutSessionRequest);
        goto LABEL_76;
      }

      v306 = v101;
      v120 = v340;
      sub_20BDAAED0(v119, v340, type metadata accessor for StartWorkoutSessionRequest);
      sub_20B5DF134(v115 + v117, v367, &qword_27C76A410, &unk_20C14FBC0);
      v121 = v371;
      v122 = v372;
      v123 = *(v371 + 32);
      v123(v363, v115 + v118, v372);
      v124 = v119 + v117;
      v125 = v119;
      v126 = v337;
      sub_20B5DF134(v124, v337, &qword_27C76A410, &unk_20C14FBC0);
      v127 = v125 + v118;
      v128 = v120;
      v129 = v338;
      v123(v338, v127, v122);
      LOBYTE(v120) = sub_20C0782AC(v115, v120);
      sub_20BDAAE08(v115, type metadata accessor for StartWorkoutSessionRequest);
      if ((v120 & 1) == 0)
      {
        v241 = *(v121 + 8);
        v241(v129, v122);
        sub_20B520158(v126, &qword_27C76A410, &unk_20C14FBC0);
        v241(v363, v122);
LABEL_100:
        v244 = v367;
LABEL_101:
        sub_20B520158(v244, &qword_27C76A410, &unk_20C14FBC0);
        sub_20BDAAE08(v128, type metadata accessor for StartWorkoutSessionRequest);
LABEL_102:
        sub_20BDAAE08(v306, type metadata accessor for ButtonAction.ActionType);
        goto LABEL_77;
      }

      v130 = v363;
      v131 = v121;
      v132 = *(v326 + 48);
      v133 = v321;
      sub_20B52F9E8(v367, v321, &qword_27C76A410, &unk_20C14FBC0);
      sub_20B52F9E8(v126, v133 + v132, &qword_27C76A410, &unk_20C14FBC0);
      v134 = v327;
      v135 = *(v327 + 48);
      v136 = v328;
      if (v135(v133, 1, v328) == 1)
      {
        v137 = v135(v133 + v132, 1, v136);
        v138 = v338;
        v128 = v340;
        if (v137 == 1)
        {
          sub_20B520158(v133, &qword_27C76A410, &unk_20C14FBC0);
          v139 = v337;
          v140 = v130;
LABEL_124:
          v279 = MEMORY[0x20F2EE970](v140, v138);
          v280 = v138;
          v156 = v279;
          v281 = *(v131 + 8);
          v281(v280, v122);
          sub_20B520158(v139, &qword_27C76A410, &unk_20C14FBC0);
          v281(v140, v122);
          sub_20B520158(v367, &qword_27C76A410, &unk_20C14FBC0);
          sub_20BDAAE08(v128, type metadata accessor for StartWorkoutSessionRequest);
          sub_20BDAAE08(v306, type metadata accessor for ButtonAction.ActionType);
          return v156 & 1;
        }
      }

      else
      {
        v258 = v315;
        sub_20B52F9E8(v133, v315, &qword_27C76A410, &unk_20C14FBC0);
        v259 = v135(v133 + v132, 1, v136);
        v260 = v340;
        if (v259 != 1)
        {
          v276 = v133 + v132;
          v277 = v313;
          (*(v134 + 32))(v313, v276, v136);
          sub_20BDA65F4(&qword_27C7640F0, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
          LODWORD(v374) = sub_20C13C894();
          v278 = *(v134 + 8);
          v278(v277, v136);
          v278(v258, v136);
          sub_20B520158(v133, &qword_27C76A410, &unk_20C14FBC0);
          v138 = v338;
          v139 = v337;
          v140 = v130;
          v128 = v260;
          if (v374)
          {
            goto LABEL_124;
          }

          goto LABEL_99;
        }

        (*(v134 + 8))(v258, v136);
        v138 = v338;
        v128 = v260;
      }

      sub_20B520158(v133, &qword_27C76EDF8, &qword_20C17EB00);
      v139 = v337;
      v140 = v130;
LABEL_99:
      v261 = *(v131 + 8);
      v261(v138, v122);
      sub_20B520158(v139, &qword_27C76A410, &unk_20C14FBC0);
      v261(v140, v122);
      goto LABEL_100;
    case 0xDu:
      v306 = v101;
      v199 = v348;
      sub_20BDAAE68(v101, v348, type metadata accessor for ButtonAction.ActionType);
      v201 = *v199;
      v200 = *(v199 + 1);
      v202 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210, &unk_20C169DF0) + 48);
      v203 = v374;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        (*(v359 + 8))(&v199[v202], v360);

LABEL_72:
        v101 = v306;
LABEL_76:
        sub_20B520158(v101, &qword_27C76EE10, &qword_20C17D028);
        goto LABEL_77;
      }

      v205 = *v203;
      v204 = v203[1];
      v206 = v359;
      v207 = *(v359 + 32);
      v208 = &v199[v202];
      v209 = v360;
      v207(v358, v208, v360);
      v210 = v203 + v202;
      v211 = v333;
      v207(v333, v210, v209);
      if (v201 == v205 && v200 == v204)
      {

        v212 = v306;
LABEL_89:
        v255 = v358;
        v156 = sub_20C132B84();
        v256 = *(v206 + 8);
        v256(v211, v209);
        v256(v255, v209);
        sub_20BDAAE08(v212, type metadata accessor for ButtonAction.ActionType);
        return v156 & 1;
      }

      v254 = sub_20C13DFF4();

      v212 = v306;
      if (v254)
      {
        goto LABEL_89;
      }

      v264 = *(v206 + 8);
      v264(v211, v209);
      v264(v358, v209);
      sub_20BDAAE08(v212, type metadata accessor for ButtonAction.ActionType);
      goto LABEL_77;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_76;
      }

      goto LABEL_65;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_65;
      }

      goto LABEL_76;
    default:
      sub_20BDAAE68(v101, v98, type metadata accessor for ButtonAction.ActionType);
      v105 = v374;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_20B520158(v98, &unk_27C762300, &unk_20C151350);
        goto LABEL_76;
      }

      v236 = *(v322 + 48);
      v237 = v323;
      sub_20B5DF134(v98, v323, &unk_27C762300, &unk_20C151350);
      sub_20B5DF134(v105, v237 + v236, &unk_27C762300, &unk_20C151350);
      v238 = v324;
      v239 = *(v324 + 48);
      v240 = v325;
      if (v239(v237, 1, v325) == 1)
      {
        if (v239(v237 + v236, 1, v240) == 1)
        {
          sub_20B520158(v237, &unk_27C762300, &unk_20C151350);
LABEL_65:
          v224 = v101;
          goto LABEL_66;
        }
      }

      else
      {
        v257 = v317;
        sub_20B52F9E8(v237, v317, &unk_27C762300, &unk_20C151350);
        if (v239(v237 + v236, 1, v240) != 1)
        {
          v269 = v237 + v236;
          v270 = v311;
          (*(v238 + 32))(v311, v269, v240);
          sub_20BDA65F4(&qword_27C768188, MEMORY[0x277D51CF0], MEMORY[0x277D51D00]);
          v271 = sub_20C13C894();
          v272 = *(v238 + 8);
          v272(v270, v240);
          v272(v257, v240);
          sub_20B520158(v237, &unk_27C762300, &unk_20C151350);
          if (v271)
          {
            goto LABEL_65;
          }

LABEL_117:
          sub_20BDAAE08(v101, type metadata accessor for ButtonAction.ActionType);
LABEL_77:
          v156 = 0;
          return v156 & 1;
        }

        (*(v238 + 8))(v257, v240);
      }

      sub_20B520158(v237, &qword_27C768160, &qword_20C165268);
      goto LABEL_117;
  }
}

uint64_t sub_20BDAAE08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BDAAE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BDAAED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_20BDAAF4C(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v106 = a4;
  v103 = a1;
  v104 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
  MEMORY[0x28223BE20](v7);
  v9 = &v95 - v8;
  v108 = sub_20C133244();
  v105 = *(v108 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v95 - v15;
  MEMORY[0x28223BE20](v17);
  v21 = &v95 - v20;
  v22 = 0;
  v23 = (a2 >> 57) & 0x78 | a2 & 7;
  if (v23 <= 29)
  {
    if (v23 == 28)
    {
      if (((*((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) >> 57) & 0x78 | *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) & 7) == 0x20)
      {
        v98 = v5;
        v101 = v18;
        v102 = v19;
        v29 = swift_projectBox();
        sub_20B52F9E8(v29, v9, &unk_27C772250, &unk_20C150590);
        v30 = &v9[*(v7 + 64)];
        v31 = *(v30 + 1);
        v103 = *v30;
        v99 = *(v30 + 2);
        v100 = v31;

        v32 = v102;

        sub_20B6222E8(*&v9[*(v7 + 80)], *&v9[*(v7 + 80) + 8], *&v9[*(v7 + 80) + 16], *&v9[*(v7 + 80) + 24]);

        v33 = *(v32 + 32);
        v34 = v9;
        v35 = v101;
        v33(v16, v34);

        v36 = sub_20C133FF4();
        if (v38 == -1)
        {
          (*(v32 + 8))(v16, v35);
        }

        else
        {
          v39 = v32;
          if (v38)
          {
            v40 = sub_20C138104();
            v41 = sub_20C138104();
            v43 = (v32 + 16);
            v42 = *(v39 + 16);
            v103 = v42;
            v97 = v33;
            if (v40 == v41)
            {
              v99 = 0;
              v100 = 0;
            }

            else
            {
              (v103)(v13, v16, v35);
              v78 = (*(v39 + 80) + 24) & ~*(v39 + 80);
              v79 = swift_allocObject();
              v96 = v43;
              v80 = v98;
              v79[2] = v98;
              v100 = v79;
              (v33)(v79 + v78, v13, v35);
              v81 = v80;
              v42 = v103;
              v99 = sub_20BDC75B8;
            }

            v82 = v35;
            (v42)(v13, v16, v35);
            sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8], MEMORY[0x277D50500]);
            sub_20C13DC04();
            v83 = type metadata accessor for ContextMenuItemIdentifier();
            v84 = objc_allocWithZone(v83);
            sub_20B51D968(v111, v84 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
            v110.receiver = v84;
            v110.super_class = v83;
            v96 = objc_msgSendSuper2(&v110, sel_init);
            sub_20B51D9C4(v111);
            v95 = sub_20B51C88C(0, &qword_27C768D70, 0x277D753B0);
            v85 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (v103)(v13, v16, v82);
            v86 = v105;
            (*(v105 + 16))(v107, v104, v108);
            v87 = (*(v102 + 80) + 24) & ~*(v102 + 80);
            v88 = (v12 + *(v86 + 80) + v87) & ~*(v86 + 80);
            v89 = (v10 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
            v90 = swift_allocObject();
            *(v90 + 16) = v85;
            v91 = v13;
            v92 = v101;
            v97(v90 + v87, v91, v101);
            (*(v86 + 32))(v90 + v88, v107, v108);
            v93 = v106;
            *(v90 + v89) = v106;
            *(v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
            v94 = v93;

            v22 = sub_20B9DE930(v96, v99, v100, sub_20BDC75C4, v90);
            (*(v102 + 8))(v16, v92);
            goto LABEL_22;
          }

          sub_20B584078(v36, v37, v38);
          (*(v32 + 8))(v16, v35);
        }
      }

      return 0;
    }
  }

  else
  {
    v24 = v23 - 31;
    if (v24 > 0x2E)
    {
      v25 = v19;
      v26 = v18;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0, &unk_20C151840);
      v27 = swift_projectBox() + *(v44 + 48);
      goto LABEL_13;
    }

    if (((1 << v24) & 0x77FFFFFFFFFDLL) == 0)
    {
      v25 = v19;
      v26 = v18;
      v27 = swift_projectBox();
LABEL_13:
      v45 = *(v25 + 16);
      v45(v21, v27, v26);
      v46 = sub_20C133FF4();
      if (v48 != -1)
      {
        if (v48)
        {
          v49 = sub_20C138104();
          v50 = sub_20C138104();
          v102 = v25;
          if (v49 == v50)
          {
            v99 = 0;
            v100 = 0;
          }

          else
          {
            v51 = v26;
            v45(v13, v21, v26);
            v52 = v25;
            v53 = *(v25 + 80);
            v54 = v45;
            v55 = (v53 + 24) & ~v53;
            v56 = swift_allocObject();
            v56[2] = v5;
            v57 = *(v52 + 32);
            v100 = v56;
            v58 = v56 + v55;
            v45 = v54;
            v26 = v51;
            v57(v58, v13, v51);
            v59 = v5;
            v99 = sub_20BDC8CFC;
          }

          v60 = v26;
          v45(v13, v21, v26);
          sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8], MEMORY[0x277D50500]);
          v101 = v26;
          sub_20C13DC04();
          v61 = type metadata accessor for ContextMenuItemIdentifier();
          v62 = v45;
          v63 = objc_allocWithZone(v61);
          sub_20B51D968(v111, v63 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
          v109.receiver = v63;
          v109.super_class = v61;
          v98 = objc_msgSendSuper2(&v109, sel_init);
          sub_20B51D9C4(v111);
          v97 = sub_20B51C88C(0, &qword_27C768D70, 0x277D753B0);
          v64 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v62(v13, v21, v60);
          v65 = v105;
          (*(v105 + 16))(v107, v104, v108);
          v66 = v102;
          v67 = (*(v102 + 80) + 24) & ~*(v102 + 80);
          v68 = (v12 + *(v65 + 80) + v67) & ~*(v65 + 80);
          v69 = (v10 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
          v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
          v71 = swift_allocObject();
          *(v71 + 16) = v64;
          v72 = v13;
          v73 = v101;
          (*(v66 + 32))(v71 + v67, v72, v101);
          (*(v65 + 32))(v71 + v68, v107, v108);
          v74 = v106;
          *(v71 + v69) = v106;
          v75 = v103;
          *(v71 + v70) = v103;

          v76 = v74;
          v77 = v75;
          v22 = sub_20B9DE930(v98, v99, v100, sub_20BDC8D58, v71);
          (*(v66 + 8))(v21, v73);
LABEL_22:

          return v22;
        }

        sub_20B584078(v46, v47, v48);
      }

      (*(v25 + 8))(v21, v26);
      return 0;
    }
  }

  return v22;
}

id sub_20BDAB948(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v106 = a4;
  v103 = a1;
  v104 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
  MEMORY[0x28223BE20](v7);
  v9 = &v95 - v8;
  v108 = sub_20C133244();
  v105 = *(v108 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v95 - v15;
  MEMORY[0x28223BE20](v17);
  v21 = &v95 - v20;
  v22 = 0;
  v23 = (a2 >> 57) & 0x78 | a2 & 7;
  if (v23 <= 29)
  {
    if (v23 == 28)
    {
      if (((*((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) >> 57) & 0x78 | *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) & 7) == 0x20)
      {
        v98 = v5;
        v101 = v18;
        v102 = v19;
        v29 = swift_projectBox();
        sub_20B52F9E8(v29, v9, &unk_27C772250, &unk_20C150590);
        v30 = &v9[*(v7 + 64)];
        v31 = *(v30 + 1);
        v103 = *v30;
        v99 = *(v30 + 2);
        v100 = v31;

        v32 = v102;

        sub_20B6222E8(*&v9[*(v7 + 80)], *&v9[*(v7 + 80) + 8], *&v9[*(v7 + 80) + 16], *&v9[*(v7 + 80) + 24]);

        v33 = *(v32 + 32);
        v34 = v9;
        v35 = v101;
        v33(v16, v34);

        v36 = sub_20C133FF4();
        if (v38 == -1)
        {
          (*(v32 + 8))(v16, v35);
        }

        else
        {
          v39 = v32;
          if (v38)
          {
            v40 = sub_20C138104();
            v41 = sub_20C138104();
            v43 = (v32 + 16);
            v42 = *(v39 + 16);
            v103 = v42;
            v97 = v33;
            if (v40 == v41)
            {
              v99 = 0;
              v100 = 0;
            }

            else
            {
              (v103)(v13, v16, v35);
              v78 = (*(v39 + 80) + 24) & ~*(v39 + 80);
              v79 = swift_allocObject();
              v96 = v43;
              v80 = v98;
              v79[2] = v98;
              v100 = v79;
              (v33)(v79 + v78, v13, v35);
              v81 = v80;
              v42 = v103;
              v99 = sub_20BDC6DAC;
            }

            v82 = v35;
            (v42)(v13, v16, v35);
            sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8], MEMORY[0x277D50500]);
            sub_20C13DC04();
            v83 = type metadata accessor for ContextMenuItemIdentifier();
            v84 = objc_allocWithZone(v83);
            sub_20B51D968(v111, v84 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
            v110.receiver = v84;
            v110.super_class = v83;
            v96 = objc_msgSendSuper2(&v110, sel_init);
            sub_20B51D9C4(v111);
            v95 = sub_20B51C88C(0, &qword_27C768D70, 0x277D753B0);
            v85 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (v103)(v13, v16, v82);
            v86 = v105;
            (*(v105 + 16))(v107, v104, v108);
            v87 = (*(v102 + 80) + 24) & ~*(v102 + 80);
            v88 = (v12 + *(v86 + 80) + v87) & ~*(v86 + 80);
            v89 = (v10 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
            v90 = swift_allocObject();
            *(v90 + 16) = v85;
            v91 = v13;
            v92 = v101;
            v97(v90 + v87, v91, v101);
            (*(v86 + 32))(v90 + v88, v107, v108);
            v93 = v106;
            *(v90 + v89) = v106;
            *(v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
            v94 = v93;

            v22 = sub_20B9DE930(v96, v99, v100, sub_20BDC6DB8, v90);
            (*(v102 + 8))(v16, v92);
            goto LABEL_22;
          }

          sub_20B584078(v36, v37, v38);
          (*(v32 + 8))(v16, v35);
        }
      }

      return 0;
    }
  }

  else
  {
    v24 = v23 - 31;
    if (v24 > 0x2E)
    {
      v25 = v19;
      v26 = v18;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0, &unk_20C151840);
      v27 = swift_projectBox() + *(v44 + 48);
      goto LABEL_13;
    }

    if (((1 << v24) & 0x77FFFFFFFFFDLL) == 0)
    {
      v25 = v19;
      v26 = v18;
      v27 = swift_projectBox();
LABEL_13:
      v45 = *(v25 + 16);
      v45(v21, v27, v26);
      v46 = sub_20C133FF4();
      if (v48 != -1)
      {
        if (v48)
        {
          v49 = sub_20C138104();
          v50 = sub_20C138104();
          v102 = v25;
          if (v49 == v50)
          {
            v99 = 0;
            v100 = 0;
          }

          else
          {
            v51 = v26;
            v45(v13, v21, v26);
            v52 = v25;
            v53 = *(v25 + 80);
            v54 = v45;
            v55 = (v53 + 24) & ~v53;
            v56 = swift_allocObject();
            v56[2] = v5;
            v57 = *(v52 + 32);
            v100 = v56;
            v58 = v56 + v55;
            v45 = v54;
            v26 = v51;
            v57(v58, v13, v51);
            v59 = v5;
            v99 = sub_20BDC8CF8;
          }

          v60 = v26;
          v45(v13, v21, v26);
          sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8], MEMORY[0x277D50500]);
          v101 = v26;
          sub_20C13DC04();
          v61 = type metadata accessor for ContextMenuItemIdentifier();
          v62 = v45;
          v63 = objc_allocWithZone(v61);
          sub_20B51D968(v111, v63 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
          v109.receiver = v63;
          v109.super_class = v61;
          v98 = objc_msgSendSuper2(&v109, sel_init);
          sub_20B51D9C4(v111);
          v97 = sub_20B51C88C(0, &qword_27C768D70, 0x277D753B0);
          v64 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v62(v13, v21, v60);
          v65 = v105;
          (*(v105 + 16))(v107, v104, v108);
          v66 = v102;
          v67 = (*(v102 + 80) + 24) & ~*(v102 + 80);
          v68 = (v12 + *(v65 + 80) + v67) & ~*(v65 + 80);
          v69 = (v10 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
          v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
          v71 = swift_allocObject();
          *(v71 + 16) = v64;
          v72 = v13;
          v73 = v101;
          (*(v66 + 32))(v71 + v67, v72, v101);
          (*(v65 + 32))(v71 + v68, v107, v108);
          v74 = v106;
          *(v71 + v69) = v106;
          v75 = v103;
          *(v71 + v70) = v103;

          v76 = v74;
          v77 = v75;
          v22 = sub_20B9DE930(v98, v99, v100, sub_20BDC8D44, v71);
          (*(v66 + 8))(v21, v73);
LABEL_22:

          return v22;
        }

        sub_20B584078(v46, v47, v48);
      }

      (*(v25 + 8))(v21, v26);
      return 0;
    }
  }

  return v22;
}

id sub_20BDAC344(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v106 = a4;
  v103 = a1;
  v104 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
  MEMORY[0x28223BE20](v7);
  v9 = &v95 - v8;
  v108 = sub_20C133244();
  v105 = *(v108 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v108);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v95 - v15;
  MEMORY[0x28223BE20](v17);
  v21 = &v95 - v20;
  v22 = 0;
  v23 = (a2 >> 57) & 0x78 | a2 & 7;
  if (v23 <= 29)
  {
    if (v23 == 28)
    {
      if (((*((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) >> 57) & 0x78 | *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) & 7) == 0x20)
      {
        v98 = v5;
        v101 = v18;
        v102 = v19;
        v29 = swift_projectBox();
        sub_20B52F9E8(v29, v9, &unk_27C772250, &unk_20C150590);
        v30 = &v9[*(v7 + 64)];
        v31 = *(v30 + 1);
        v103 = *v30;
        v99 = *(v30 + 2);
        v100 = v31;

        v32 = v102;

        sub_20B6222E8(*&v9[*(v7 + 80)], *&v9[*(v7 + 80) + 8], *&v9[*(v7 + 80) + 16], *&v9[*(v7 + 80) + 24]);

        v33 = *(v32 + 32);
        v34 = v9;
        v35 = v101;
        v33(v16, v34);

        v36 = sub_20C133FF4();
        if (v38 == -1)
        {
          (*(v32 + 8))(v16, v35);
        }

        else
        {
          v39 = v32;
          if (v38)
          {
            v40 = sub_20C138104();
            v41 = sub_20C138104();
            v43 = (v32 + 16);
            v42 = *(v39 + 16);
            v103 = v42;
            v97 = v33;
            if (v40 == v41)
            {
              v99 = 0;
              v100 = 0;
            }

            else
            {
              (v103)(v13, v16, v35);
              v78 = (*(v39 + 80) + 24) & ~*(v39 + 80);
              v79 = swift_allocObject();
              v96 = v43;
              v80 = v98;
              v79[2] = v98;
              v100 = v79;
              (v33)(v79 + v78, v13, v35);
              v81 = v80;
              v42 = v103;
              v99 = sub_20BDC6658;
            }

            v82 = v35;
            (v42)(v13, v16, v35);
            sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8], MEMORY[0x277D50500]);
            sub_20C13DC04();
            v83 = type metadata accessor for ContextMenuItemIdentifier();
            v84 = objc_allocWithZone(v83);
            sub_20B51D968(v111, v84 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
            v110.receiver = v84;
            v110.super_class = v83;
            v96 = objc_msgSendSuper2(&v110, sel_init);
            sub_20B51D9C4(v111);
            v95 = sub_20B51C88C(0, &qword_27C768D70, 0x277D753B0);
            v85 = swift_allocObject();
            swift_unknownObjectWeakInit();
            (v103)(v13, v16, v82);
            v86 = v105;
            (*(v105 + 16))(v107, v104, v108);
            v87 = (*(v102 + 80) + 24) & ~*(v102 + 80);
            v88 = (v12 + *(v86 + 80) + v87) & ~*(v86 + 80);
            v89 = (v10 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
            v90 = swift_allocObject();
            *(v90 + 16) = v85;
            v91 = v13;
            v92 = v101;
            v97(v90 + v87, v91, v101);
            (*(v86 + 32))(v90 + v88, v107, v108);
            v93 = v106;
            *(v90 + v89) = v106;
            *(v90 + ((v89 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0;
            v94 = v93;

            v22 = sub_20B9DE930(v96, v99, v100, sub_20BDC6664, v90);
            (*(v102 + 8))(v16, v92);
            goto LABEL_22;
          }

          sub_20B584078(v36, v37, v38);
          (*(v32 + 8))(v16, v35);
        }
      }

      return 0;
    }
  }

  else
  {
    v24 = v23 - 31;
    if (v24 > 0x2E)
    {
      v25 = v19;
      v26 = v18;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0, &unk_20C151840);
      v27 = swift_projectBox() + *(v44 + 48);
      goto LABEL_13;
    }

    if (((1 << v24) & 0x77FFFFFFFFFDLL) == 0)
    {
      v25 = v19;
      v26 = v18;
      v27 = swift_projectBox();
LABEL_13:
      v45 = *(v25 + 16);
      v45(v21, v27, v26);
      v46 = sub_20C133FF4();
      if (v48 != -1)
      {
        if (v48)
        {
          v49 = sub_20C138104();
          v50 = sub_20C138104();
          v102 = v25;
          if (v49 == v50)
          {
            v99 = 0;
            v100 = 0;
          }

          else
          {
            v51 = v26;
            v45(v13, v21, v26);
            v52 = v25;
            v53 = *(v25 + 80);
            v54 = v45;
            v55 = (v53 + 24) & ~v53;
            v56 = swift_allocObject();
            v56[2] = v5;
            v57 = *(v52 + 32);
            v100 = v56;
            v58 = v56 + v55;
            v45 = v54;
            v26 = v51;
            v57(v58, v13, v51);
            v59 = v5;
            v99 = sub_20BDC8CF4;
          }

          v60 = v26;
          v45(v13, v21, v26);
          sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8], MEMORY[0x277D50500]);
          v101 = v26;
          sub_20C13DC04();
          v61 = type metadata accessor for ContextMenuItemIdentifier();
          v62 = v45;
          v63 = objc_allocWithZone(v61);
          sub_20B51D968(v111, v63 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
          v109.receiver = v63;
          v109.super_class = v61;
          v98 = objc_msgSendSuper2(&v109, sel_init);
          sub_20B51D9C4(v111);
          v97 = sub_20B51C88C(0, &qword_27C768D70, 0x277D753B0);
          v64 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v62(v13, v21, v60);
          v65 = v105;
          (*(v105 + 16))(v107, v104, v108);
          v66 = v102;
          v67 = (*(v102 + 80) + 24) & ~*(v102 + 80);
          v68 = (v12 + *(v65 + 80) + v67) & ~*(v65 + 80);
          v69 = (v10 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
          v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
          v71 = swift_allocObject();
          *(v71 + 16) = v64;
          v72 = v13;
          v73 = v101;
          (*(v66 + 32))(v71 + v67, v72, v101);
          (*(v65 + 32))(v71 + v68, v107, v108);
          v74 = v106;
          *(v71 + v69) = v106;
          v75 = v103;
          *(v71 + v70) = v103;

          v76 = v74;
          v77 = v75;
          v22 = sub_20B9DE930(v98, v99, v100, sub_20BDC8D38, v71);
          (*(v66 + 8))(v21, v73);
LABEL_22:

          return v22;
        }

        sub_20B584078(v46, v47, v48);
      }

      (*(v25 + 8))(v21, v26);
      return 0;
    }
  }

  return v22;
}

id sub_20BDACD40(void *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = a6;
  v49 = a7;
  v46 = a4;
  v47 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_20C134014();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - v21;
  v23 = 0;
  v24 = (a2 >> 57) & 0x78 | a2 & 7;
  if (v24 <= 29)
  {
    if (v24 == 28)
    {
      if (((*((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) >> 57) & 0x78 | *((a2 & 0xFFFFFFFFFFFFFF8) + 0x20) & 7) != 0x20)
      {
        return 0;
      }

      v42 = v8;
      v45 = v20;
      v29 = swift_projectBox();
      sub_20B52F9E8(v29, v14, &unk_27C772250, &unk_20C150590);
      v30 = &v14[*(v12 + 64)];
      v31 = *v30;
      v43 = *(v30 + 1);
      v44 = v31;
      v32 = *(v30 + 2);

      sub_20B6222E8(*&v14[*(v12 + 80)], *&v14[*(v12 + 80) + 8], *&v14[*(v12 + 80) + 16], *&v14[*(v12 + 80) + 24]);

      v33 = v45;
      (*(v16 + 32))(v18, v14);

      v34 = sub_20C133FF4();
      if (v36 == -1)
      {
        (*(v16 + 8))(v18, v33);
        return 0;
      }

      v37 = (v16 + 8);
      if ((v36 & 1) == 0)
      {
        sub_20B584078(v34, v35, v36);
        (*v37)(v18, v33);
        return 0;
      }

      v23 = sub_20BDAD5F4(v18, a3, v46, 0, v47, v48, v49);
      (*v37)(v18, v33);
    }
  }

  else
  {
    v25 = v24 - 31;
    if (v25 > 0x2E)
    {
      v26 = v20;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0, &unk_20C151840);
      v27 = swift_projectBox() + *(v38 + 48);
      goto LABEL_12;
    }

    if (((1 << v25) & 0x77FFFFFFFFFDLL) == 0)
    {
      v26 = v20;
      v27 = swift_projectBox();
LABEL_12:
      (*(v16 + 16))(v22, v27, v26);
      v39 = sub_20C133FF4();
      if (v41 != -1)
      {
        if (v41)
        {
          v23 = sub_20BDAD5F4(v22, a3, v46, a1, v47, v48, v49);
          (*(v16 + 8))(v22, v26);
          return v23;
        }

        sub_20B584078(v39, v40, v41);
      }

      (*(v16 + 8))(v22, v26);
      return 0;
    }
  }

  return v23;
}

id sub_20BDAD180(void *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  WitnessTable = swift_getWitnessTable();

  return sub_20BDACD40(a1, a2, a3, a4, a5, WitnessTable, a6);
}

uint64_t sub_20BDAD214(uint64_t a1, void *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_20BDC5150(a2, a3, WitnessTable);
}

uint64_t sub_20BDAD280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20B51F1D8(a1, v8);
  type metadata accessor for ContextMenuItemIdentifier();
  if (swift_dynamicCast())
  {
    sub_20C13DBD4();

    v3 = sub_20C134014();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a2, v4 ^ 1u, 1, v3);
  }

  else
  {
    v6 = sub_20C134014();
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

double sub_20BDAD46C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_20BDC558C, v4);

  return result;
}

void sub_20BDAD500(uint64_t a1, uint64_t a2)
{
  sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
  v3 = sub_20C13CC54();
  (*(a2 + 16))(a2, v3);
}

id sub_20BDAD5F4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a7;
  v56 = a4;
  v57 = a3;
  v54 = a2;
  v51 = sub_20C133244();
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v52 = v11;
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C134014();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v60 = a5;
  v61 = v7;
  v65[0] = v7;
  v16 = *(a6 + 48);
  v58 = a6;
  v16(a5, a6, v15);
  v17 = sub_20C138104();
  v18 = sub_20C138104();
  v19 = 0;
  v59 = 0;
  v63 = v13;
  v20 = *(v13 + 16);
  if (v17 != v18)
  {
    v20(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
    v21 = v63;
    v22 = (*(v63 + 80) + 48) & ~*(v63 + 80);
    v23 = swift_allocObject();
    v24 = v58;
    v23[2] = v60;
    v23[3] = v24;
    v25 = a1;
    v26 = v61;
    v23[4] = v62;
    v23[5] = v26;
    v27 = *(v21 + 32);
    v59 = v23;
    v27(v23 + v22, &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
    a1 = v25;
    swift_unknownObjectRetain();
    v19 = sub_20BDC5334;
  }

  v50 = v19;
  v20(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  sub_20BDC6A24(&qword_27C7681C0, MEMORY[0x277D504F8], MEMORY[0x277D50500]);
  v46 = v12;
  sub_20C13DC04();
  v28 = type metadata accessor for ContextMenuItemIdentifier();
  v29 = objc_allocWithZone(v28);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v29;
  sub_20B51D968(v65, v29 + OBJC_IVAR____TtC9SeymourUI25ContextMenuItemIdentifier_item);
  v64.receiver = v30;
  v64.super_class = v28;
  v49 = objc_msgSendSuper2(&v64, sel_init);
  sub_20B51D9C4(v65);
  v48 = sub_20B51C88C(0, &qword_27C768D70, 0x277D753B0);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20(&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v32 = v53;
  v33 = v55;
  v34 = v51;
  (*(v53 + 16))(v55, v54, v51);
  v35 = v63;
  v36 = (*(v63 + 80) + 48) & ~*(v63 + 80);
  v37 = (v14 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = (v52 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v58;
  *(v39 + 2) = v60;
  *(v39 + 3) = v40;
  *(v39 + 4) = v62;
  *(v39 + 5) = v31;
  (*(v35 + 32))(&v39[v36], v47, v46);
  (*(v32 + 32))(&v39[v37], v33, v34);
  v41 = v56;
  v42 = v57;
  *&v39[v38] = v57;
  *&v39[(v38 + 15) & 0xFFFFFFFFFFFFFFF8] = v41;
  v43 = v41;
  v44 = v42;
  return sub_20B9DE930(v49, v50, v59, sub_20BDC53BC, v39);
}

uint64_t sub_20BDADA70()
{
  v21 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20C133E94();
  v8 = v7;
  v10 = v9;
  v25 = 1;
  v22 = v6;
  v23 = v7;
  v11 = v9 & 1;
  v24 = v9 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v6, v8, v11);
    *v5 = sub_20C133E44();
    v5[1] = v12;
  }

  else
  {
    v25 = 2;
    v22 = v6;
    v23 = v8;
    v24 = v11;
    if (sub_20C133C14() & 1) != 0 || (v25 = 4, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()) || (v25 = 7, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()))
    {
      sub_20B583F4C(v6, v8, v10 & 1);
      *v5 = sub_20C133E44();
      v5[1] = v13;
    }

    else
    {
      v25 = 8;
      v22 = v6;
      v23 = v8;
      v24 = v10 & 1;
      v14 = sub_20C133C14();
      result = sub_20B583F4C(v6, v8, v10 & 1);
      if ((v14 & 1) == 0)
      {
        return result;
      }

      *v5 = sub_20C133E44();
      v5[1] = v16;
      type metadata accessor for WorkoutNavigationResource(0);
      swift_storeEnumTagMultiPayload();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_20BDC6590(v5, v3, type metadata accessor for NavigationResource);
  v3[v1[5]] = 1;
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  v3[v1[7]] = 0;
  v3[v1[8]] = 0;
  *&v3[v1[9]] = 0;
  swift_getObjectType();
  v17 = v20;
  sub_20BDC6590(v3, v20, type metadata accessor for NavigationRequest);
  sub_20BDC6A24(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
  sub_20C13A764();
  sub_20BDC65F8(v17, type metadata accessor for NavigationRequested);
  sub_20BDC65F8(v3, type metadata accessor for NavigationRequest);
  return sub_20BDC65F8(v5, type metadata accessor for NavigationResource);
}

uint64_t sub_20BDADEE4()
{
  v21 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20C133E94();
  v8 = v7;
  v10 = v9;
  v25 = 1;
  v22 = v6;
  v23 = v7;
  v11 = v9 & 1;
  v24 = v9 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v6, v8, v11);
    *v5 = sub_20C133E44();
    v5[1] = v12;
  }

  else
  {
    v25 = 2;
    v22 = v6;
    v23 = v8;
    v24 = v11;
    if (sub_20C133C14() & 1) != 0 || (v25 = 4, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()) || (v25 = 7, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()))
    {
      sub_20B583F4C(v6, v8, v10 & 1);
      *v5 = sub_20C133E44();
      v5[1] = v13;
    }

    else
    {
      v25 = 8;
      v22 = v6;
      v23 = v8;
      v24 = v10 & 1;
      v14 = sub_20C133C14();
      result = sub_20B583F4C(v6, v8, v10 & 1);
      if ((v14 & 1) == 0)
      {
        return result;
      }

      *v5 = sub_20C133E44();
      v5[1] = v16;
      type metadata accessor for WorkoutNavigationResource(0);
      swift_storeEnumTagMultiPayload();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_20BDC6590(v5, v3, type metadata accessor for NavigationResource);
  v3[v1[5]] = 1;
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  v3[v1[7]] = 0;
  v3[v1[8]] = 0;
  *&v3[v1[9]] = 0;
  swift_getObjectType();
  v17 = v20;
  sub_20BDC6590(v3, v20, type metadata accessor for NavigationRequest);
  sub_20BDC6A24(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
  sub_20C13A764();
  sub_20BDC65F8(v17, type metadata accessor for NavigationRequested);
  sub_20BDC65F8(v3, type metadata accessor for NavigationRequest);
  return sub_20BDC65F8(v5, type metadata accessor for NavigationResource);
}

uint64_t sub_20BDAE358()
{
  v21 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_20C133E94();
  v8 = v7;
  v10 = v9;
  v25 = 1;
  v22 = v6;
  v23 = v7;
  v11 = v9 & 1;
  v24 = v9 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v6, v8, v11);
    *v5 = sub_20C133E44();
    v5[1] = v12;
  }

  else
  {
    v25 = 2;
    v22 = v6;
    v23 = v8;
    v24 = v11;
    if (sub_20C133C14() & 1) != 0 || (v25 = 4, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()) || (v25 = 7, v22 = v6, v23 = v8, v24 = v10 & 1, (sub_20C133C14()))
    {
      sub_20B583F4C(v6, v8, v10 & 1);
      *v5 = sub_20C133E44();
      v5[1] = v13;
    }

    else
    {
      v25 = 8;
      v22 = v6;
      v23 = v8;
      v24 = v10 & 1;
      v14 = sub_20C133C14();
      result = sub_20B583F4C(v6, v8, v10 & 1);
      if ((v14 & 1) == 0)
      {
        return result;
      }

      *v5 = sub_20C133E44();
      v5[1] = v16;
      type metadata accessor for WorkoutNavigationResource(0);
      swift_storeEnumTagMultiPayload();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_20BDC6590(v5, v3, type metadata accessor for NavigationResource);
  v3[v1[5]] = 1;
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  v3[v1[7]] = 0;
  v3[v1[8]] = 0;
  *&v3[v1[9]] = 0;
  swift_getObjectType();
  v17 = v20;
  sub_20BDC6590(v3, v20, type metadata accessor for NavigationRequest);
  sub_20BDC6A24(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
  sub_20C13A764();
  sub_20BDC65F8(v17, type metadata accessor for NavigationRequested);
  sub_20BDC65F8(v3, type metadata accessor for NavigationRequest);
  return sub_20BDC65F8(v5, type metadata accessor for NavigationResource);
}

uint64_t sub_20BDAE7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v3 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v23);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_20C133E94();
  v10 = v9;
  v12 = v11;
  v30 = 1;
  v27 = v8;
  v28 = v9;
  v13 = v11 & 1;
  v29 = v11 & 1;
  sub_20B852060();
  sub_20B8520B4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v8, v10, v13);
    *v7 = sub_20C133E44();
    v7[1] = v14;
  }

  else
  {
    v30 = 2;
    v27 = v8;
    v28 = v10;
    v29 = v13;
    if (sub_20C133C14() & 1) != 0 || (v30 = 4, v27 = v8, v28 = v10, v29 = v12 & 1, (sub_20C133C14()) || (v30 = 7, v27 = v8, v28 = v10, v29 = v12 & 1, (sub_20C133C14()))
    {
      sub_20B583F4C(v8, v10, v12 & 1);
      *v7 = sub_20C133E44();
      v7[1] = v15;
    }

    else
    {
      v30 = 8;
      v27 = v8;
      v28 = v10;
      v29 = v12 & 1;
      v16 = sub_20C133C14();
      result = sub_20B583F4C(v8, v10, v12 & 1);
      if ((v16 & 1) == 0)
      {
        return result;
      }

      *v7 = sub_20C133E44();
      v7[1] = v18;
      type metadata accessor for WorkoutNavigationResource(0);
      swift_storeEnumTagMultiPayload();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_20BDC6590(v7, v5, type metadata accessor for NavigationResource);
  v5[v3[5]] = 1;
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  v5[v3[7]] = 0;
  v5[v3[8]] = 0;
  *&v5[v3[9]] = 0;
  v27 = v24;
  (*(v25 + 32))(v26, v25);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 336);
  v21 = swift_checkMetadataState();
  v20(v5, v21, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  sub_20BDC65F8(v5, type metadata accessor for NavigationRequest);
  return sub_20BDC65F8(v7, type metadata accessor for NavigationResource);
}

id sub_20BDAEBF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_20C134014();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *a3);
  (*(v11 + 16))(v9, a2, v7);

  LODWORD(a2) = sub_20C1380F4();
  v12 = objc_allocWithZone(type metadata accessor for CatalogLockupPreviewProvider(0));
  v13 = sub_20BCA5398(v10, v9, a2);

  return v13;
}

id sub_20BDAED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C134014();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = a1;
  v13 = (*(a4 + 40))(a3, a4, v10);
  (*(v9 + 16))(v12, a2, v8);
  LODWORD(a1) = sub_20C1380F4();
  v14 = objc_allocWithZone(type metadata accessor for CatalogLockupPreviewProvider(0));
  v15 = sub_20BCA5398(v13, v12, a1);

  return v15;
}

uint64_t sub_20BDAEE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v13 = Strong;
  v14 = a7(a3, a4, a5, a6);

  return v14;
}

uint64_t sub_20BDAEEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v15 = sub_20BDB04D8(a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_20BDAEF9C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v55 = a2;
  v54 = sub_20C134014();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = v9;
  v52 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20BDB09BC(a1);
  v11 = sub_20BDB1998(a1);
  v56 = a1;
  v12 = sub_20BDB31B0(a1);
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  v14 = 0;
  if (v13 && v4)
  {
    v15 = v13;
    v49 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    v50 = a4;
    __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer], *&v4[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 24]);
    v45 = a3;
    v53 = v4;
    v48 = v4;
    v47 = sub_20C138D34();
    v46 = v16;
    v17 = sub_20C13C914();
    v44[1] = [objc_opt_self() systemImageNamed_];

    v18 = swift_allocObject();
    *(v18 + 24) = v15;
    swift_unknownObjectWeakInit();
    v19 = v52;
    v20 = v54;
    (*(v8 + 16))(v52, v56, v54);
    v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v22 = (v51 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    (*(v8 + 32))(v23 + v21, v19, v20);
    v24 = v45;
    *(v23 + v22) = v45;
    v25 = v24;
    a4 = v50;
    v26 = sub_20C13D624();
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20C14F580;
    *(v27 + 32) = v26;
    v14 = sub_20C13D554();
  }

  if (a4)
  {
    v28 = a4;
    v29 = sub_20BDB44B0(v56, v55, v28);

    v30 = v29;
  }

  else
  {
    v29 = 0;
  }

  v58[4] = 0;
  v58[5] = v10;
  v58[6] = v11;
  v58[7] = v12;
  v58[8] = v14;
  v58[9] = v29;
  v31 = v12;
  v32 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90];
  v33 = v11;
  v34 = v14;
  v35 = v10;
  v36 = v33;
  v37 = v31;
  v38 = 0;
LABEL_8:
  if (v38 <= 6)
  {
    v39 = 6;
  }

  else
  {
    v39 = v38;
  }

  while (v38 != 6)
  {
    if (v39 == v38)
    {
      __break(1u);
LABEL_22:
      if (sub_20C13DB34())
      {
        sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

        sub_20C13DE34();

        goto LABEL_20;
      }

      goto LABEL_24;
    }

    v40 = v58[v38++ + 4];
    if (v40)
    {
      v41 = v40;
      MEMORY[0x20F2F43B0]();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v32 = v57;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE58, &unk_20C17D090);
  swift_arrayDestroy();
  if (v32 >> 62)
  {
    goto LABEL_22;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
LABEL_20:

    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    v42 = sub_20C13D554();

    return v42;
  }

LABEL_24:

  return 0;
}

uint64_t sub_20BDAF5A0(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v51 = sub_20C134014();
  v10 = *(v51 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v51);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider];
  v62 = type metadata accessor for TVWorkoutPlanDetailPageDataProvider(0);
  v63 = &off_2822EA050;
  v61[0] = v13;
  __swift_project_boxed_opaque_existential_1(v61, v62);

  v14 = sub_20BE1BB60(a1);
  v58 = a4;
  v52 = a3;
  v50 = v11;
  if (v14 >> 62)
  {
LABEL_23:
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
  }

  v59 = sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
  v57 = sub_20C13D554();
  v53 = v57;
  __swift_destroy_boxed_opaque_existential_1(v61);
  v56 = sub_20BDB0D80(a1);
  v55 = sub_20BDB1FC4(a1);
  v54 = sub_20BDB3558(a1);
  swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (!v15)
  {
    v29 = 0;
    v30 = v58;
    if (v58)
    {
      goto LABEL_5;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v16 = v15;
  v48 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer], *&v5[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer + 24]);
  v49 = a2;
  v45 = v5;
  v47 = sub_20C138D34();
  v46 = v17;
  v18 = sub_20C13C914();
  v19 = [objc_opt_self() systemImageNamed_];

  v20 = swift_allocObject();
  *(v20 + 24) = v16;
  swift_unknownObjectWeakInit();
  v21 = v51;
  (v10[2])(v12, a1, v51);
  v22 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v23 = (v50 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  (v10[4])(v24 + v22, v12, v21);
  v25 = v52;
  *(v24 + v23) = v52;
  v26 = v25;
  a2 = v49;
  v27 = sub_20C13D624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14F580;
  *(v28 + 32) = v27;
  v29 = sub_20C13D554();

  v30 = v58;
  if (!v58)
  {
    goto LABEL_7;
  }

LABEL_5:
  v31 = v30;
  v5 = sub_20BDB473C(a1, a2, v31);

  v32 = v5;
LABEL_8:
  v33 = v56;
  v60[4] = v57;
  v60[5] = v56;
  v35 = v54;
  v34 = v55;
  v60[6] = v55;
  v60[7] = v54;
  v60[8] = v29;
  v60[9] = v5;
  a1 = MEMORY[0x277D84F90];
  v61[0] = MEMORY[0x277D84F90];
  v10 = v29;
  v36 = v33;
  v37 = v34;
  v38 = v35;
  v12 = 0;
  a2 = 6;
LABEL_9:
  if (v12 <= 6)
  {
    v39 = 6;
  }

  else
  {
    v39 = v12;
  }

  while (v12 != 6)
  {
    if (v39 == v12)
    {
      __break(1u);
      goto LABEL_23;
    }

    v40 = v60[v12++ + 4];
    if (v40)
    {
      v41 = v40;
      MEMORY[0x20F2F43B0]();
      if (*((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v58 = *((v61[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      a1 = v61[0];
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE58, &unk_20C17D090);
  swift_arrayDestroy();
  if (a1 >> 62)
  {
    if (sub_20C13DB34())
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      sub_20C13DE34();

      goto LABEL_21;
    }

LABEL_26:

    return 0;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

  sub_20C13E004();
  sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
LABEL_21:

  v42 = sub_20C13D554();

  return v42;
}

uint64_t sub_20BDAFCD4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = sub_20C134014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *&v4[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider];
  type metadata accessor for PlaylistDetailDataProvider(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE48, &qword_20C17D080);
  v12 = swift_dynamicCast();
  v53 = v10;
  if (v12)
  {
    sub_20B51C710(v60, v63);
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    if (sub_20BE1BB60(a1) >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    }

    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    v58 = sub_20C13D554();
    v13 = v58;
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    sub_20B520158(v60, &qword_27C76EE50, &qword_20C17D088);
    v58 = 0;
  }

  v57 = sub_20BDB1144(a1);
  v56 = sub_20BDB25F0(a1);
  v55 = sub_20BDB3900(a1);
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  v54 = a1;
  if (v14)
  {
    v15 = v14;
    v49 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer], *&v4[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer + 24]);
    v50 = a4;
    v51 = a2;
    v16 = v4;
    v47[0] = v11;
    v48 = v16;
    v47[2] = sub_20C138D34();
    v47[1] = v17;
    v18 = sub_20C13C914();
    v19 = [objc_opt_self() systemImageNamed_];

    v20 = swift_allocObject();
    *(v20 + 24) = v15;
    swift_unknownObjectWeakInit();
    v21 = v53;
    v22 = v52;
    (*(v53 + 16))(v52, a1, v9);
    v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v24 = (v47[0] + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    a2 = v51;
    (*(v21 + 32))(v25 + v23, v22, v9);
    *(v25 + v24) = a3;
    v26 = a3;
    a4 = v50;
    v27 = sub_20C13D624();
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C14F580;
    *(v28 + 32) = v27;
    v29 = sub_20C13D554();

    if (a4)
    {
LABEL_8:
      v30 = a4;
      v31 = sub_20BDB49C8(v54, a2, v30);

      v32 = v31;
      goto LABEL_11;
    }
  }

  else
  {
    v29 = 0;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  v31 = 0;
LABEL_11:
  v33 = v57;
  v59[4] = v58;
  v59[5] = v57;
  v34 = v56;
  v35 = v55;
  v59[6] = v56;
  v59[7] = v55;
  v59[8] = v29;
  v59[9] = v31;
  v36 = MEMORY[0x277D84F90];
  v63[0] = MEMORY[0x277D84F90];
  v37 = v29;
  v38 = v33;
  v39 = v34;
  v40 = v35;
  v41 = 0;
LABEL_12:
  if (v41 <= 6)
  {
    v42 = 6;
  }

  else
  {
    v42 = v41;
  }

  while (v41 != 6)
  {
    if (v42 == v41)
    {
      __break(1u);
LABEL_26:
      if (sub_20C13DB34())
      {
        sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

        sub_20C13DE34();

        goto LABEL_24;
      }

      goto LABEL_28;
    }

    v43 = v59[v41++ + 4];
    if (v43)
    {
      v44 = v43;
      MEMORY[0x20F2F43B0]();
      if (*((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v57 = *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v36 = v63[0];
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE58, &unk_20C17D090);
  swift_arrayDestroy();
  if (v36 >> 62)
  {
    goto LABEL_26;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
LABEL_24:

    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    v45 = sub_20C13D554();

    return v45;
  }

LABEL_28:

  return 0;
}

uint64_t sub_20BDB04D8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v40 = (*(a6 + 32))(a5, a6);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE48, &qword_20C17D080);
  v33 = a3;
  if (swift_dynamicCast())
  {
    sub_20B51C710(v38, v41);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    if (sub_20BE1BB60(a1) >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
    }

    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    v36 = sub_20C13D554();
    v13 = v36;
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    sub_20B520158(v38, &qword_27C76EE50, &qword_20C17D088);
    v36 = 0;
  }

  v14 = sub_20BDB1508(a1, a5, a6, a7);
  v15 = sub_20BDB2C1C(a1, a5, a6, a7);
  v16 = sub_20BDB3CA8(a1, a5, a6, a7);
  v17 = a2;
  v18 = sub_20BDB4144(a1, a2, v33, a5, a6);
  if (a4)
  {
    v19 = a4;
    v20 = a7;
    v21 = v19;
    v22 = sub_20BDB4C54(a1, v17, v19, a5, a6, v20);

    v23 = v22;
  }

  else
  {
    v22 = 0;
  }

  v37[4] = v36;
  v37[5] = v14;
  v37[6] = v15;
  v37[7] = v16;
  v37[8] = v18;
  v37[9] = v22;
  v24 = MEMORY[0x277D84F90];
  v41[0] = MEMORY[0x277D84F90];
  v25 = v18;
  v35 = v14;
  v26 = v15;
  v27 = v16;
  v28 = 0;
LABEL_10:
  if (v28 <= 6)
  {
    v29 = 6;
  }

  else
  {
    v29 = v28;
  }

  while (v28 != 6)
  {
    if (v29 == v28)
    {
      __break(1u);
LABEL_24:
      if (sub_20C13DB34())
      {
        sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

        sub_20C13DE34();

        goto LABEL_22;
      }

      goto LABEL_26;
    }

    v30 = v37[v28++ + 4];
    if (v30)
    {
      MEMORY[0x20F2F43B0](v30);
      if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v24 = v41[0];
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE58, &unk_20C17D090);
  swift_arrayDestroy();
  if (v24 >> 62)
  {
    goto LABEL_24;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
LABEL_22:

    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    v31 = sub_20C13D554();

    return v31;
  }

LABEL_26:

  return 0;
}

uint64_t sub_20BDB09BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  if (v12)
  {
    v25 = v10;
    v13 = sub_20C138104();
    if (v13 == sub_20C138104())
    {
      sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider) + 280, aBlock);
      __swift_project_boxed_opaque_existential_1(aBlock, v27);
      sub_20C13B184();
      v14 = sub_20C135174();
      v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
      sub_20B520158(v9, &unk_27C76BC00, &unk_20C1500B0);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if (v15 == 1)
      {
        return 0;
      }
    }

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    (*(v5 + 32))(v20 + v19, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v20 + v19 + v6) = v25;
    v28 = sub_20BDC831C;
    v29 = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    v27 = &block_descriptor_706;
    v21 = _Block_copy(aBlock);

    v22 = [v17 elementWithUncachedProvider_];
    _Block_release(v21);
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C14F580;
    *(v23 + 32) = v22;
    return sub_20C13D554();
  }

  else
  {
    sub_20B584078(v10, v11, v12);
    return 0;
  }
}

uint64_t sub_20BDB0D80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  if (v12)
  {
    v25 = v10;
    v13 = sub_20C138104();
    if (v13 == sub_20C138104())
    {
      sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider) + 344, aBlock);
      __swift_project_boxed_opaque_existential_1(aBlock, v27);
      sub_20C13B184();
      v14 = sub_20C135174();
      v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
      sub_20B520158(v9, &unk_27C76BC00, &unk_20C1500B0);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if (v15 == 1)
      {
        return 0;
      }
    }

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    (*(v5 + 32))(v20 + v19, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v20 + v19 + v6) = v25;
    v28 = sub_20BDC737C;
    v29 = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    v27 = &block_descriptor_515;
    v21 = _Block_copy(aBlock);

    v22 = [v17 elementWithUncachedProvider_];
    _Block_release(v21);
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C14F580;
    *(v23 + 32) = v22;
    return sub_20C13D554();
  }

  else
  {
    sub_20B584078(v10, v11, v12);
    return 0;
  }
}

uint64_t sub_20BDB1144(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  if (v12)
  {
    v25 = v10;
    v13 = sub_20C138104();
    if (v13 == sub_20C138104())
    {
      sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + 312, aBlock);
      __swift_project_boxed_opaque_existential_1(aBlock, v27);
      sub_20C13B184();
      v14 = sub_20C135174();
      v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
      sub_20B520158(v9, &unk_27C76BC00, &unk_20C1500B0);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if (v15 == 1)
      {
        return 0;
      }
    }

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    (*(v5 + 32))(v20 + v19, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v20 + v19 + v6) = v25;
    v28 = sub_20BDC6C90;
    v29 = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    v27 = &block_descriptor_324;
    v21 = _Block_copy(aBlock);

    v22 = [v17 elementWithUncachedProvider_];
    _Block_release(v21);
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C14F580;
    *(v23 + 32) = v22;
    return sub_20C13D554();
  }

  else
  {
    sub_20B584078(v10, v11, v12);
    return 0;
  }
}

uint64_t sub_20BDB1508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C134014();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_20C133FF4();
  if (v16 == -1)
  {
    return 0;
  }

  if (v16)
  {
    v38 = a4;
    v39 = v14;
    v17 = v40;
    aBlock[0] = v40;
    (*(a3 + 48))(a2, a3);
    v18 = sub_20C138104();
    if (v18 == sub_20C138104())
    {
      v41 = v17;
      (*(a3 + 32))(a2, a3);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v36 = v9;
      v37 = a2;
      v20 = AssociatedConformanceWitness;
      v35 = *(AssociatedConformanceWitness + 56);
      v21 = swift_checkMetadataState();
      v22 = v20;
      a2 = v37;
      v35(aBlock, v21, v22);
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_1(aBlock, v43);
      v9 = v36;
      sub_20C13B184();
      v23 = sub_20C135174();
      v24 = (*(*(v23 - 8) + 48))(v13, 1, v23);
      sub_20B520158(v13, &unk_27C76BC00, &unk_20C1500B0);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if (v24 == 1)
      {
        return 0;
      }
    }

    v26 = objc_opt_self();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v28 = a2;
    v29 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v30 = swift_allocObject();
    *(v30 + 2) = v28;
    *(v30 + 3) = a3;
    *(v30 + 4) = v38;
    *(v30 + 5) = v27;
    (*(v9 + 32))(&v30[v29], &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v30[v29 + v10] = v39;
    v44 = sub_20BDC5E1C;
    v45 = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    v43 = &block_descriptor_135_0;
    v31 = _Block_copy(aBlock);

    v32 = [v26 elementWithUncachedProvider_];
    _Block_release(v31);
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_20C14F580;
    *(v33 + 32) = v32;
    return sub_20C13D554();
  }

  else
  {
    sub_20B584078(v14, v15, v16);
    return 0;
  }
}

uint64_t sub_20BDB1998(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v38 - v5;
  v7 = sub_20C136F94();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v13 = sub_20C134014();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v38 - v16;
  v18 = sub_20C133FF4();
  if (v20 == -1)
  {
    return 0;
  }

  if ((v20 & 1) == 0)
  {
    sub_20B584078(v18, v19, v20);
    return 0;
  }

  v42 = v18;
  if (sub_20C134B74())
  {
    return 0;
  }

  v41 = a1;
  v22 = sub_20C138104();
  if (v22 == sub_20C138104())
  {
    v23 = *(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider);
    v38[1] = v2;
    v39 = v23;
    sub_20B51CC64(v23 + 280, aBlock);
    v40 = v47;
    __swift_project_boxed_opaque_existential_1(aBlock, v46);
    sub_20C13B184();
    v24 = sub_20C135174();
    v25 = (*(*(v24 - 8) + 48))(v17, 1, v24);
    sub_20B520158(v17, &unk_27C76BC00, &unk_20C1500B0);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v25 == 1)
    {
      return 0;
    }

    sub_20C136F34();
    __swift_project_boxed_opaque_existential_1((v39 + 280), *(v39 + 304));
    sub_20C13B174();
    v26 = sub_20C136C64();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v6, 1, v26) == 1)
    {
      (*(v43 + 8))(v12, v7);
      sub_20B520158(v6, &qword_27C768690, &unk_20C14FD90);
      return 0;
    }

    sub_20C1369E4();
    (*(v27 + 8))(v6, v26);
    sub_20BDC6A24(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
    v28 = sub_20C13DA74();
    v29 = *(v43 + 8);
    v29(v9, v7);
    v29(v12, v7);
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = objc_opt_self();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v44;
  (*(v44 + 16))(v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v13);
  v33 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  (*(v32 + 32))(v34 + v33, v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  *(v34 + v33 + v14) = v42;
  v47 = sub_20BDC7D24;
  v48 = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v46 = &block_descriptor_655;
  v35 = _Block_copy(aBlock);

  v36 = [v30 elementWithUncachedProvider_];
  _Block_release(v35);
  sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_20C14F580;
  *(v37 + 32) = v36;
  return sub_20C13D554();
}

uint64_t sub_20BDB1FC4(uint64_t a1)
{
  v2 = sub_20C134014();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_20C136F94();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_20C133FF4();
  if (v18 == -1)
  {
    return 0;
  }

  if ((v18 & 1) == 0)
  {
    sub_20B584078(v16, v17, v18);
    return 0;
  }

  v41 = v16;
  if ((sub_20C134B74() & 1) == 0)
  {
    v40 = v2;
    v19 = v44;
    v20 = sub_20C138104();
    if (v20 != sub_20C138104())
    {
      goto LABEL_12;
    }

    v38 = *(v19 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider);
    sub_20B51CC64(v38 + 344, aBlock);
    v39 = v47;
    __swift_project_boxed_opaque_existential_1(aBlock, v46);
    sub_20C13B184();
    v21 = sub_20C135174();
    v22 = (*(*(v21 - 8) + 48))(v15, 1, v21);
    sub_20B520158(v15, &unk_27C76BC00, &unk_20C1500B0);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v22 != 1)
    {
      sub_20C136F34();
      __swift_project_boxed_opaque_existential_1((v38 + 344), *(v38 + 368));
      sub_20C13B174();
      v23 = sub_20C136C64();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v6, 1, v23) == 1)
      {
        (*(v42 + 8))(v12, v7);
        sub_20B520158(v6, &qword_27C768690, &unk_20C14FD90);
        return 0;
      }

      sub_20C1369E4();
      (*(v24 + 8))(v6, v23);
      sub_20BDC6A24(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
      v26 = sub_20C13DA74();
      v27 = *(v42 + 8);
      v27(v9, v7);
      v27(v12, v7);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

LABEL_12:
      v28 = objc_opt_self();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v43;
      v31 = v40;
      (*(v43 + 16))(&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v40);
      v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v29;
      (*(v30 + 32))(v33 + v32, &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
      *(v33 + v32 + v3) = v41;
      v47 = sub_20BDC717C;
      v48 = v33;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20BDAD46C;
      v46 = &block_descriptor_464;
      v34 = _Block_copy(aBlock);

      v35 = [v28 elementWithUncachedProvider_];
      _Block_release(v34);
      sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_20C14F580;
      *(v36 + 32) = v35;
      return sub_20C13D554();
    }
  }

  return 0;
}

uint64_t sub_20BDB25F0(uint64_t a1)
{
  v2 = sub_20C134014();
  v43 = *(v2 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_20C136F94();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_20C133FF4();
  if (v18 == -1)
  {
    return 0;
  }

  if ((v18 & 1) == 0)
  {
    sub_20B584078(v16, v17, v18);
    return 0;
  }

  v41 = v16;
  if ((sub_20C134B74() & 1) == 0)
  {
    v40 = v2;
    v19 = v44;
    v20 = sub_20C138104();
    if (v20 != sub_20C138104())
    {
      goto LABEL_12;
    }

    v38 = *(v19 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider);
    sub_20B51CC64(v38 + 312, aBlock);
    v39 = v47;
    __swift_project_boxed_opaque_existential_1(aBlock, v46);
    sub_20C13B184();
    v21 = sub_20C135174();
    v22 = (*(*(v21 - 8) + 48))(v15, 1, v21);
    sub_20B520158(v15, &unk_27C76BC00, &unk_20C1500B0);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v22 != 1)
    {
      sub_20C136F34();
      __swift_project_boxed_opaque_existential_1((v38 + 312), *(v38 + 336));
      sub_20C13B174();
      v23 = sub_20C136C64();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v6, 1, v23) == 1)
      {
        (*(v42 + 8))(v12, v7);
        sub_20B520158(v6, &qword_27C768690, &unk_20C14FD90);
        return 0;
      }

      sub_20C1369E4();
      (*(v24 + 8))(v6, v23);
      sub_20BDC6A24(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
      v26 = sub_20C13DA74();
      v27 = *(v42 + 8);
      v27(v9, v7);
      v27(v12, v7);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

LABEL_12:
      v28 = objc_opt_self();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v43;
      v31 = v40;
      (*(v43 + 16))(&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v40);
      v32 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v29;
      (*(v30 + 32))(v33 + v32, &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
      *(v33 + v32 + v3) = v41;
      v47 = sub_20BDC6A0C;
      v48 = v33;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20BDAD46C;
      v46 = &block_descriptor_273;
      v34 = _Block_copy(aBlock);

      v35 = [v28 elementWithUncachedProvider_];
      _Block_release(v34);
      sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_20C14F580;
      *(v36 + 32) = v35;
      return sub_20C13D554();
    }
  }

  return 0;
}

uint64_t sub_20BDB2C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_20C134014();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_20C136F94();
  v49 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - v16;
  v50 = a1;
  v18 = sub_20C133FF4();
  if (v20 == -1)
  {
    return 0;
  }

  if ((v20 & 1) == 0)
  {
    sub_20B584078(v18, v19, v20);
    return 0;
  }

  v48 = v18;
  if (sub_20C134B74())
  {
    return 0;
  }

  aBlock[0] = v5;
  v22 = *(a3 + 48);
  v23 = a2;
  v24 = a3;
  v46 = a4;
  v47 = v23;
  v22(v23, a3);
  v25 = sub_20C138104();
  if (v25 == sub_20C138104())
  {
    v41 = v5;
    v53 = v5;
    v43 = *(a3 + 32);
    v44 = a3 + 32;
    v43(v47, a3);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v45 = *(AssociatedConformanceWitness + 56);
    v40 = swift_checkMetadataState();
    v42 = AssociatedConformanceWitness;
    v45(aBlock, v40, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(aBlock, v55);
    sub_20C13B184();
    v27 = sub_20C135174();
    v28 = (*(*(v27 - 8) + 48))(v17, 1, v27);
    sub_20B520158(v17, &unk_27C76BC00, &unk_20C1500B0);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v28 == 1)
    {
      return 0;
    }

    aBlock[0] = v41;
    v43(v47, v24);
    sub_20C136F34();
    v29 = (*(v42 + 344))(v14, v40);
    swift_unknownObjectRelease();
    (v49)[1](v14, v12);
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v49 = objc_opt_self();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v51;
  v32 = v52;
  (*(v51 + 16))(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v52);
  v33 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 2) = v47;
  *(v34 + 3) = v24;
  *(v34 + 4) = v35;
  *(v34 + 5) = v30;
  (*(v31 + 32))(&v34[v33], &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  v34[v33 + v11] = v48;
  v56 = sub_20BDC58AC;
  v57 = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v55 = &block_descriptor_84_1;
  v36 = _Block_copy(aBlock);

  v37 = [v49 elementWithUncachedProvider_];
  _Block_release(v36);
  sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C14F580;
  *(v38 + 32) = v37;
  return sub_20C13D554();
}

uint64_t sub_20BDB31B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = aBlock - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  sub_20B584078(v10, v11, v12);
  v13 = sub_20C138104();
  if (v13 == sub_20C138104())
  {
    sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider) + 280, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v25);
    sub_20C13B184();
    v14 = sub_20C135174();
    v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
    sub_20B520158(v9, &unk_27C76BC00, &unk_20C1500B0);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v15 == 1)
    {
      return 0;
    }
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v5 + 32))(v20 + v19, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v26 = sub_20BDC7B80;
  v27 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v25 = &block_descriptor_612;
  v21 = _Block_copy(aBlock);

  v22 = [v17 elementWithUncachedProvider_];
  _Block_release(v21);
  sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F580;
  *(v23 + 32) = v22;
  return sub_20C13D554();
}

uint64_t sub_20BDB3558(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = aBlock - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  sub_20B584078(v10, v11, v12);
  v13 = sub_20C138104();
  if (v13 == sub_20C138104())
  {
    sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider) + 344, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v25);
    sub_20C13B184();
    v14 = sub_20C135174();
    v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
    sub_20B520158(v9, &unk_27C76BC00, &unk_20C1500B0);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v15 == 1)
    {
      return 0;
    }
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v5 + 32))(v20 + v19, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v26 = sub_20BDC6FA0;
  v27 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v25 = &block_descriptor_421;
  v21 = _Block_copy(aBlock);

  v22 = [v17 elementWithUncachedProvider_];
  _Block_release(v21);
  sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F580;
  *(v23 + 32) = v22;
  return sub_20C13D554();
}

uint64_t sub_20BDB3900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = aBlock - v8;
  v10 = sub_20C133FF4();
  if (v12 == -1)
  {
    return 0;
  }

  sub_20B584078(v10, v11, v12);
  v13 = sub_20C138104();
  if (v13 == sub_20C138104())
  {
    sub_20B51CC64(*(v2 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + 312, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v25);
    sub_20C13B184();
    v14 = sub_20C135174();
    v15 = (*(*(v14 - 8) + 48))(v9, 1, v14);
    sub_20B520158(v9, &unk_27C76BC00, &unk_20C1500B0);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v15 == 1)
    {
      return 0;
    }
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v5 + 32))(v20 + v19, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v26 = sub_20BDC6900;
  v27 = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v25 = &block_descriptor_232;
  v21 = _Block_copy(aBlock);

  v22 = [v17 elementWithUncachedProvider_];
  _Block_release(v21);
  sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F580;
  *(v23 + 32) = v22;
  return sub_20C13D554();
}

uint64_t sub_20BDB3CA8(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v5 = v4;
  v10 = sub_20C134014();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = v12;
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_20C133FF4();
  if (v19 == -1)
  {
    return 0;
  }

  v45 = v10;
  sub_20B584078(v17, v18, v19);
  aBlock[0] = v4;
  (*(a3 + 48))(a2, a3);
  v20 = sub_20C138104();
  if (v20 == sub_20C138104())
  {
    v47 = v5;
    (*(a3 + 32))(a2, a3);
    swift_getAssociatedTypeWitness();
    v44 = a4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = v5;
    v43 = a3;
    v22 = a1;
    v23 = AssociatedConformanceWitness;
    v24 = v11;
    v25 = v13;
    v26 = a2;
    v27 = *(AssociatedConformanceWitness + 56);
    v28 = swift_checkMetadataState();
    v29 = v23;
    a1 = v22;
    a3 = v43;
    v27(aBlock, v28, v29);
    a2 = v26;
    v13 = v25;
    v11 = v24;
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(aBlock, v49);
    a4 = v44;
    sub_20C13B184();
    v30 = sub_20C135174();
    v31 = (*(*(v30 - 8) + 48))(v16, 1, v30);
    sub_20B520158(v16, &unk_27C76BC00, &unk_20C1500B0);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    if (v31 == 1)
    {
      return 0;
    }
  }

  v44 = objc_opt_self();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v45;
  (*(v11 + 16))(v13, a1, v45);
  v35 = v13;
  v36 = a2;
  v37 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = v36;
  *(v38 + 3) = a3;
  *(v38 + 4) = a4;
  *(v38 + 5) = v33;
  (*(v11 + 32))(&v38[v37], v35, v34);
  v50 = sub_20BDC5740;
  v51 = v38;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BDAD46C;
  v49 = &block_descriptor_61_1;
  v39 = _Block_copy(aBlock);

  v40 = [v44 elementWithUncachedProvider_];
  _Block_release(v39);
  sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C14F580;
  *(v41 + 32) = v40;
  return sub_20C13D554();
}

uint64_t sub_20BDB4144(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_20C134014();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  result = 0;
  if (v14)
  {
    if (v6)
    {
      v33 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
      v34[5] = v6;
      v29 = v11;
      v30 = a1;
      v16 = *(a5 + 56);
      swift_unknownObjectRetain();
      v32 = a3;
      v16(v34, a4, a5);
      __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      v31 = sub_20C138D34();
      v17 = sub_20C13C914();
      v18 = [objc_opt_self() systemImageNamed_];

      v19 = swift_allocObject();
      *(v19 + 24) = v14;
      swift_unknownObjectWeakInit();
      v20 = v29;
      (*(v12 + 16))(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v29);
      v21 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v19;
      (*(v12 + 32))(v22 + v21, &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
      v23 = v32;
      *(v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
      v24 = v23;
      v25 = sub_20C13D624();
      __swift_destroy_boxed_opaque_existential_1(v34);
      sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_20C14F580;
      *(v26 + 32) = v25;
      v27 = sub_20C13D554();
      swift_unknownObjectRelease();
      return v27;
    }
  }

  return result;
}

uint64_t sub_20BDB44B0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  result = 0;
  if (*(v3 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_platform) == 3)
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a3;
    (*(v7 + 32))(v13 + v12, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    aBlock[4] = sub_20BDC79B8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    aBlock[3] = &block_descriptor_567;
    v14 = _Block_copy(aBlock);
    v15 = a3;

    v16 = [v10 elementWithUncachedProvider_];
    _Block_release(v14);
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C14F580;
    *(v17 + 32) = v16;
    return sub_20C13D554();
  }

  return result;
}

uint64_t sub_20BDB473C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  result = 0;
  if (*(v3 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_platform) == 3)
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a3;
    (*(v7 + 32))(v13 + v12, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    aBlock[4] = sub_20BDC6DD0;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    aBlock[3] = &block_descriptor_376;
    v14 = _Block_copy(aBlock);
    v15 = a3;

    v16 = [v10 elementWithUncachedProvider_];
    _Block_release(v14);
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C14F580;
    *(v17 + 32) = v16;
    return sub_20C13D554();
  }

  return result;
}

uint64_t sub_20BDB49C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  result = 0;
  if (*(v3 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_platform) == 3)
  {
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = a3;
    (*(v7 + 32))(v13 + v12, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    aBlock[4] = sub_20BDC68AC;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    aBlock[3] = &block_descriptor_187;
    v14 = _Block_copy(aBlock);
    v15 = a3;

    v16 = [v10 elementWithUncachedProvider_];
    _Block_release(v14);
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C14F580;
    *(v17 + 32) = v16;
    return sub_20C13D554();
  }

  return result;
}

uint64_t sub_20BDB4C54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v11 = sub_20C133244();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v28 = v6;
  v15 = (*(a5 + 48))(a4, a5, v14);
  result = 0;
  if (v15 == 3)
  {
    v25 = objc_opt_self();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
    v18 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = a4;
    *(v19 + 3) = a5;
    *(v19 + 4) = v26;
    *(v19 + 5) = v17;
    *(v19 + 6) = a3;
    (*(v12 + 32))(&v19[v18], &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    aBlock[4] = sub_20BDC54EC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BDAD46C;
    aBlock[3] = &block_descriptor_129;
    v20 = _Block_copy(aBlock);
    v21 = a3;

    v22 = [v25 elementWithUncachedProvider_];
    _Block_release(v20);
    sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C14F580;
    *(v23 + 32) = v22;
    return sub_20C13D554();
  }

  return result;
}

void *sub_20BDB4F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB61CC(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC84C4;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

void *sub_20BDB53B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB6594(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC7394;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

void *sub_20BDB5858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB695C(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC6CA8;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

uint64_t sub_20BDB5CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a6;
  v58 = a8;
  v53 = a5;
  v48 = a4;
  v54 = a2;
  v52 = a1;
  v9 = sub_20C134014();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v11 = *(v56 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v56);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v55 = &v44 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = a7;
    v47 = v15;
    v19 = v15;
    v20 = v9;
    sub_20BDB6D28(v57, a7, v19);
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v22 = v49;
    v23 = *(v49 + 16);
    v24 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v12;
    v23(v24, v48, v20);
    v25 = *(v22 + 80);
    v48 = v16;
    v26 = (v25 + 48) & ~v25;
    v27 = v26 + v10;
    v28 = v54;
    v29 = swift_allocObject();
    v30 = v46;
    *(v29 + 2) = v57;
    *(v29 + 3) = v30;
    *(v29 + 4) = v58;
    *(v29 + 5) = v21;
    (*(v22 + 32))(&v29[v26], v24, v20);
    v29[v27] = v53;
    v31 = &v29[v27 & 0xFFFFFFFFFFFFFFF8];
    *(v31 + 1) = v52;
    *(v31 + 2) = v28;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20BDC5FE0;
    *(v32 + 24) = v29;
    v33 = v51;
    v34 = v47;
    v35 = v56;
    (*(v11 + 16))(v51, v47, v56);
    v36 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v37 = (v45 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (*(v11 + 32))(v38 + v36, v33, v35);
    v39 = (v38 + v37);
    *v39 = sub_20B5DF4B8;
    v39[1] = v32;

    v40 = v55;
    sub_20C137C94();
    (*(v11 + 8))(v34, v35);
    v41 = v48;
    v42 = sub_20C137CB4();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    v42(sub_20B5DF6DC, v43);

    return (*(v50 + 8))(v40, v41);
  }

  return result;
}

uint64_t sub_20BDB61CC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - v10;
  v11 = off_28228F330[0];
  type metadata accessor for WorkoutPlanWeekdayDetailPageDataProvider(0);
  v11();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20BDC3488;
  *(v12 + 24) = 0;
  v13 = v28;
  (*(v1 + 16))(v3, v6, v28);
  v14 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v15 = (v2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v1 + 32))(v16 + v14, v3, v13);
  v17 = (v16 + v15);
  *v17 = sub_20BDC8CEC;
  v17[1] = v12;
  v18 = v27;
  sub_20C137C94();
  (*(v1 + 8))(v6, v13);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20BDC3574;
  *(v19 + 24) = 0;
  v21 = v29;
  v20 = v30;
  (*(v7 + 16))(v29, v18, v30);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BDC8CF0;
  v24[1] = v19;
  sub_20C137C94();
  return (*(v7 + 8))(v18, v20);
}

uint64_t sub_20BDB6594@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - v10;
  v11 = off_2822EA148[0];
  type metadata accessor for TVWorkoutPlanDetailPageDataProvider(0);
  v11();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20BDC3488;
  *(v12 + 24) = 0;
  v13 = v28;
  (*(v1 + 16))(v3, v6, v28);
  v14 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v15 = (v2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v1 + 32))(v16 + v14, v3, v13);
  v17 = (v16 + v15);
  *v17 = sub_20BDC8CEC;
  v17[1] = v12;
  v18 = v27;
  sub_20C137C94();
  (*(v1 + 8))(v6, v13);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20BDC3574;
  *(v19 + 24) = 0;
  v21 = v29;
  v20 = v30;
  (*(v7 + 16))(v29, v18, v30);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BDC8CF0;
  v24[1] = v19;
  sub_20C137C94();
  return (*(v7 + 8))(v18, v20);
}

uint64_t sub_20BDB695C@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v26 = &v26 - v12;
  __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_subscriptionCache), *(*(v1 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_subscriptionCache + 24));
  sub_20C1392F4();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20BDC3488;
  *(v13 + 24) = 0;
  (*(v3 + 16))(v5, v8, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = (v4 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v14, v5, v2);
  v17 = (v16 + v15);
  *v17 = sub_20BDC8CEC;
  v17[1] = v13;
  v18 = v26;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20BDC3574;
  *(v19 + 24) = 0;
  v21 = v27;
  v20 = v28;
  (*(v9 + 16))(v27, v18, v28);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BDC8CF0;
  v24[1] = v19;
  sub_20C137C94();
  return (*(v9 + 8))(v18, v20);
}

uint64_t sub_20BDB6D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v12 = *(v40 - 8);
  v38 = *(v12 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v36 = &v35 - v16;
  v42 = v3;
  (*(a2 + 32))(a1, a2, v15);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = *(AssociatedConformanceWitness + 232);
  v19 = swift_checkMetadataState();
  v18(v19, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20BDC3488;
  *(v20 + 24) = 0;
  v21 = v37;
  (*(v6 + 16))(v8, v11, v37);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v8, v21);
  v24 = (v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BDC56C8;
  v24[1] = v20;
  v25 = v36;
  sub_20C137C94();
  (*(v6 + 8))(v11, v21);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_20BDC3574;
  *(v26 + 24) = 0;
  v28 = v39;
  v27 = v40;
  v29 = v25;
  (*(v12 + 16))(v39, v25, v40);
  v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v31 = (v38 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v12 + 32))(v32 + v30, v28, v27);
  v33 = (v32 + v31);
  *v33 = sub_20BDC56F8;
  v33[1] = v26;
  sub_20C137C94();
  return (*(v12 + 8))(v29, v27);
}

void sub_20BDB7168(char a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if ((a1 & 1) != 0 && (v6 = a4, swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v9 = Strong;
    v10 = sub_20BEA5B80();
    MEMORY[0x28223BE20](v10);
    LOBYTE(v16) = v6;
    v17 = v9;
    v18 = a3;
    v19 = sub_20B622D24(sub_20BDC8670, v15, v10);

    v11 = sub_20BEA5B80();
    MEMORY[0x28223BE20](v11);
    v16 = v9;
    v17 = a3;
    LOBYTE(v18) = v6;
    v12 = sub_20B622D24(sub_20BDC86EC, v15, v11);

    v20 = v19;
    sub_20B8DAD68(v12);

    v13 = v20;
    if (v20 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      v14 = sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v14 = v13;
    }

    a5(v14);
  }

  else
  {
    (a5)(MEMORY[0x277D84F90], a2, a3, a4);
  }
}

void sub_20BDB73B0(char a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, __n128), uint64_t a6, uint64_t a7, uint64_t (*a8)(void *), void *(*a9)(uint64_t *__return_ptr, unint64_t), void *(*a10)(uint64_t *__return_ptr, unint64_t))
{
  if ((a1 & 1) != 0 && (v13 = a4, swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v29 = a6;
    v30 = a5;
    v28 = a10;
    v16 = Strong;
    v17 = a8(a3);
    MEMORY[0x28223BE20](v17);
    LOBYTE(v25) = v13;
    v26 = v16;
    v27 = a3;
    v18 = sub_20B622D24(a9, v24, v17);

    v19 = a8(a3);
    MEMORY[0x28223BE20](v19);
    v25 = v16;
    v26 = a3;
    LOBYTE(v27) = v13;
    v20 = sub_20B622D24(v28, v24, v19);

    v31 = v18;
    sub_20B8DAD68(v20);

    v21 = v31;
    if (v31 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      v22 = sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v22 = v21;
    }

    v23 = v30;

    (v23)(v22);
  }

  else
  {
    (a5)(MEMORY[0x277D84F90], a2, a3, a4, a5, a6, a7, a8);
  }
}

void *sub_20BDB75E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *(a4 + 32);
  v21(a3, a4);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 296);
  v16 = v9;
  v15 = swift_checkMetadataState();
  v10 = v9(a1, v15, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a2;
  v34 = v19;
  v35 = a1;
  v18 = sub_20B622D24(sub_20BDC60EC, v29, v10);

  v36 = v19;
  v21(a3, a4);
  v11 = v16(a1, v15, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = v19;
  v27 = a1;
  v28 = a2;
  v12 = sub_20B622D24(sub_20BDC6148, v22, v11);

  v36 = v18;
  sub_20B8DAD68(v12);
  return v36;
}

uint64_t sub_20BDB77EC(uint64_t a1, unsigned __int8 a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v42 = a7;
  v40 = a6;
  v33 = a5;
  v36 = a4;
  v41 = sub_20C137254();
  v10 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v37 = v11;
  v39 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20C134014();
  v12 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v13;
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v15 = sub_20C1371C4();
  v16 = &a3[*v33];
  v30 = a3;
  __swift_project_boxed_opaque_existential_1(v16, *(v16 + 3));
  v17 = sub_20C138D34();
  v32 = v18;
  v33 = v17;

  v31 = CatalogMediaType.startWorkoutActionImage(activityType:)(v15, a2);
  v29 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  v19 = v35;
  (*(v12 + 16))(v14, v36, v35);
  v20 = v39;
  v21 = v41;
  (*(v10 + 16))(v39, v38, v41);
  v22 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v23 = (v34 + *(v10 + 80) + v22) & ~*(v10 + 80);
  v24 = swift_allocObject();
  v25 = v12;
  v26 = v30;
  *(v24 + 16) = v30;
  (*(v25 + 32))(v24 + v22, v14, v19);
  (*(v10 + 32))(v24 + v23, v20, v21);
  v27 = v26;
  return sub_20C13D624();
}

uint64_t sub_20BDB7B70@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v46 = a5;
  v43 = a7;
  v37 = a4;
  v45 = a8;
  v44 = sub_20C137254();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = v12;
  v41 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C134014();
  v13 = *(v38 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v15 = sub_20C1371C4();
  v47[7] = a3;
  (*(a6 + 56))(v47, v46, a6);
  v31 = a6;
  v32 = a3;
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  v16 = sub_20C138D34();
  v34 = v17;
  v35 = v16;

  __swift_destroy_boxed_opaque_existential_1(v47);
  v33 = CatalogMediaType.startWorkoutActionImage(activityType:)(v15, a2);
  v30 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  v18 = v36;
  v19 = v38;
  (*(v13 + 16))(v36, v37, v38);
  v21 = v41;
  v20 = v42;
  v22 = v44;
  (*(v42 + 16))(v41, v40, v44);
  v23 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v24 = (v14 + *(v20 + 80) + v23) & ~*(v20 + 80);
  v25 = swift_allocObject();
  v26 = v31;
  *(v25 + 2) = v46;
  *(v25 + 3) = v26;
  v27 = v13;
  v28 = v32;
  *(v25 + 4) = v43;
  *(v25 + 5) = v28;
  (*(v27 + 32))(&v25[v23], v18, v19);
  (*(v20 + 32))(&v25[v24], v21, v22);
  swift_unknownObjectRetain();
  result = sub_20C13D624();
  *v45 = result;
  return result;
}

double sub_20BDB7F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 32))(a5, a6);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 304);
  v10 = swift_checkMetadataState();
  v9(a3, a4, v10, AssociatedConformanceWitness, 0.0);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BDB8050(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  LODWORD(v48) = a4;
  v59 = sub_20C137254();
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = v7;
  v58 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_20C134014();
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v49 = v8;
  v56 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134D54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  MEMORY[0x28223BE20](v12);
  v61 = v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0, &unk_20C14FE60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v43 - v18;
  v60 = a2;
  v51 = a3;
  v20 = sub_20C133E44();
  v22 = v21;
  v52 = a1;
  v23 = sub_20C1371C4();
  sub_20BEA1EC4(v20, v22, v23, v19);

  sub_20B52F9E8(v19, v16, &unk_27C7623D0, &unk_20C14FE60);
  v24 = *(v10 + 48);
  v62 = v9;
  if (v24(v16, 1, v9) == 1)
  {
    sub_20B520158(v19, &unk_27C7623D0, &unk_20C14FE60);
    sub_20B520158(v16, &unk_27C7623D0, &unk_20C14FE60);
    return 0;
  }

  else
  {
    v46 = v19;
    v44 = *(v10 + 32);
    v45 = v10 + 32;
    v44(v61, v16, v62);
    v26 = v52;
    v27 = sub_20C1371C4();
    v28 = v48;
    v29 = v27;
    __swift_project_boxed_opaque_existential_1(&v60[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer], *&v60[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 24]);
    v30 = sub_20C138D34();
    v43[2] = v31;
    v43[3] = v30;

    v48 = CatalogMediaType.startWorkoutActionImage(activityType:)(v29, v28);
    v43[1] = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    v32 = v53;
    (*(v53 + 16))(v56, v51, v57);
    v33 = v55;
    (*(v55 + 16))(v58, v26, v59);
    v34 = v50;
    (*(v10 + 16))(v50, v61, v62);
    v35 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v36 = (v49 + *(v33 + 80) + v35) & ~*(v33 + 80);
    v37 = (v54 + *(v10 + 80) + v36) & ~*(v10 + 80);
    v38 = swift_allocObject();
    v39 = v60;
    *(v38 + 16) = v60;
    (*(v32 + 32))(v38 + v35, v56, v57);
    (*(v33 + 32))(v38 + v36, v58, v59);
    v40 = v62;
    v44((v38 + v37), v34, v62);
    v41 = v39;
    v42 = sub_20C13D624();
    (*(v10 + 8))(v61, v40);
    sub_20B520158(v46, &unk_27C7623D0, &unk_20C14FE60);
    return v42;
  }
}

uint64_t sub_20BDB867C(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  LODWORD(v48) = a4;
  v59 = sub_20C137254();
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = v7;
  v58 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_20C134014();
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v49 = v8;
  v56 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134D54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  MEMORY[0x28223BE20](v12);
  v61 = v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0, &unk_20C14FE60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v43 - v18;
  v60 = a2;
  v51 = a3;
  v20 = sub_20C133E44();
  v22 = v21;
  v52 = a1;
  v23 = sub_20C1371C4();
  sub_20BEA1ED0(v20, v22, v23, v19);

  sub_20B52F9E8(v19, v16, &unk_27C7623D0, &unk_20C14FE60);
  v24 = *(v10 + 48);
  v62 = v9;
  if (v24(v16, 1, v9) == 1)
  {
    sub_20B520158(v19, &unk_27C7623D0, &unk_20C14FE60);
    sub_20B520158(v16, &unk_27C7623D0, &unk_20C14FE60);
    return 0;
  }

  else
  {
    v46 = v19;
    v44 = *(v10 + 32);
    v45 = v10 + 32;
    v44(v61, v16, v62);
    v26 = v52;
    v27 = sub_20C1371C4();
    v28 = v48;
    v29 = v27;
    __swift_project_boxed_opaque_existential_1(&v60[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer], *&v60[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer + 24]);
    v30 = sub_20C138D34();
    v43[2] = v31;
    v43[3] = v30;

    v48 = CatalogMediaType.startWorkoutActionImage(activityType:)(v29, v28);
    v43[1] = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    v32 = v53;
    (*(v53 + 16))(v56, v51, v57);
    v33 = v55;
    (*(v55 + 16))(v58, v26, v59);
    v34 = v50;
    (*(v10 + 16))(v50, v61, v62);
    v35 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v36 = (v49 + *(v33 + 80) + v35) & ~*(v33 + 80);
    v37 = (v54 + *(v10 + 80) + v36) & ~*(v10 + 80);
    v38 = swift_allocObject();
    v39 = v60;
    *(v38 + 16) = v60;
    (*(v32 + 32))(v38 + v35, v56, v57);
    (*(v33 + 32))(v38 + v36, v58, v59);
    v40 = v62;
    v44((v38 + v37), v34, v62);
    v41 = v39;
    v42 = sub_20C13D624();
    (*(v10 + 8))(v61, v40);
    sub_20B520158(v46, &unk_27C7623D0, &unk_20C14FE60);
    return v42;
  }
}

uint64_t sub_20BDB8CA8(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  LODWORD(v48) = a4;
  v59 = sub_20C137254();
  v55 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = v7;
  v58 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_20C134014();
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v49 = v8;
  v56 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134D54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v11;
  MEMORY[0x28223BE20](v12);
  v61 = v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0, &unk_20C14FE60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v43 - v18;
  v60 = a2;
  v51 = a3;
  v20 = sub_20C133E44();
  v22 = v21;
  v52 = a1;
  v23 = sub_20C1371C4();
  sub_20BEA1EDC(v20, v22, v23, v19);

  sub_20B52F9E8(v19, v16, &unk_27C7623D0, &unk_20C14FE60);
  v24 = *(v10 + 48);
  v62 = v9;
  if (v24(v16, 1, v9) == 1)
  {
    sub_20B520158(v19, &unk_27C7623D0, &unk_20C14FE60);
    sub_20B520158(v16, &unk_27C7623D0, &unk_20C14FE60);
    return 0;
  }

  else
  {
    v46 = v19;
    v44 = *(v10 + 32);
    v45 = v10 + 32;
    v44(v61, v16, v62);
    v26 = v52;
    v27 = sub_20C1371C4();
    v28 = v48;
    v29 = v27;
    __swift_project_boxed_opaque_existential_1(&v60[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer], *&v60[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer + 24]);
    v30 = sub_20C138D34();
    v43[2] = v31;
    v43[3] = v30;

    v48 = CatalogMediaType.startWorkoutActionImage(activityType:)(v29, v28);
    v43[1] = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    v32 = v53;
    (*(v53 + 16))(v56, v51, v57);
    v33 = v55;
    (*(v55 + 16))(v58, v26, v59);
    v34 = v50;
    (*(v10 + 16))(v50, v61, v62);
    v35 = (*(v32 + 80) + 24) & ~*(v32 + 80);
    v36 = (v49 + *(v33 + 80) + v35) & ~*(v33 + 80);
    v37 = (v54 + *(v10 + 80) + v36) & ~*(v10 + 80);
    v38 = swift_allocObject();
    v39 = v60;
    *(v38 + 16) = v60;
    (*(v32 + 32))(v38 + v35, v56, v57);
    (*(v33 + 32))(v38 + v36, v58, v59);
    v40 = v62;
    v44((v38 + v37), v34, v62);
    v41 = v39;
    v42 = sub_20C13D624();
    (*(v10 + 8))(v61, v40);
    sub_20B520158(v46, &unk_27C7623D0, &unk_20C14FE60);
    return v42;
  }
}

uint64_t sub_20BDB92D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v62 = a7;
  LODWORD(v55) = a4;
  v73 = a8;
  v71 = sub_20C137254();
  v61 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v59 = v13;
  v68 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_20C134014();
  v60 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v56 = v14;
  v65 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C134D54();
  v64 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v57 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v15;
  MEMORY[0x28223BE20](v16);
  v75 = v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0, &unk_20C14FE60);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v51 - v23;
  v72 = a2;
  v76[0] = a2;
  (*(a6 + 32))(a5, a6, v22);
  v58 = a3;
  v63 = sub_20C133E44();
  v26 = v25;
  v66 = a1;
  v27 = sub_20C1371C4();
  swift_getAssociatedTypeWitness();
  v69 = a5;
  v70 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = *(AssociatedConformanceWitness + 264);
  v30 = swift_checkMetadataState();
  v29(v63, v26, v27, v30, AssociatedConformanceWitness);
  v31 = v74;
  swift_unknownObjectRelease();
  v32 = v64;

  sub_20B52F9E8(v24, v20, &unk_27C7623D0, &unk_20C14FE60);
  if ((*(v32 + 48))(v20, 1, v31) == 1)
  {
    sub_20B520158(v24, &unk_27C7623D0, &unk_20C14FE60);
    result = sub_20B520158(v20, &unk_27C7623D0, &unk_20C14FE60);
    v34 = 0;
  }

  else
  {
    v63 = v24;
    v35 = *(v32 + 32);
    v53 = v32 + 32;
    v52 = v35;
    v35(v75, v20, v31);
    v36 = sub_20C1371C4();
    v37 = v55;
    v38 = v36;
    v76[7] = v72;
    (*(v70 + 56))(v76, v69);
    __swift_project_boxed_opaque_existential_1(v76, v76[3]);
    v51[2] = sub_20C138D34();
    v51[1] = v39;

    __swift_destroy_boxed_opaque_existential_1(v76);
    v55 = CatalogMediaType.startWorkoutActionImage(activityType:)(v38, v37);
    v51[0] = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    v40 = v60;
    (*(v60 + 16))(v65, v58, v67);
    v41 = v61;
    (*(v61 + 16))(v68, v66, v71);
    v42 = v57;
    (*(v32 + 16))(v57, v75, v31);
    v43 = (*(v40 + 80) + 48) & ~*(v40 + 80);
    v44 = (v56 + *(v41 + 80) + v43) & ~*(v41 + 80);
    v45 = (v59 + *(v32 + 80) + v44) & ~*(v32 + 80);
    v46 = swift_allocObject();
    v47 = v70;
    *(v46 + 2) = v69;
    *(v46 + 3) = v47;
    v48 = v72;
    *(v46 + 4) = v62;
    *(v46 + 5) = v48;
    (*(v40 + 32))(&v46[v43], v65, v67);
    (*(v41 + 32))(&v46[v44], v68, v71);
    v49 = v42;
    v50 = v74;
    v52(&v46[v45], v49, v74);
    swift_unknownObjectRetain();
    v34 = sub_20C13D624();
    (*(v32 + 8))(v75, v50);
    result = sub_20B520158(v63, &unk_27C7623D0, &unk_20C14FE60);
  }

  *v73 = v34;
  return result;
}

void sub_20BDB9A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 32))(a6, a7);
  sub_20C134D44();
  v10 = v9;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 304);
  v13 = swift_checkMetadataState();
  v12(a3, a4, v13, AssociatedConformanceWitness, v10);
  swift_unknownObjectRelease();
}

void *sub_20BDB9B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB61CC(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC7D3C;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

void *sub_20BDBA008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB6594(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC7194;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

void *sub_20BDBA4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a5;
  v41 = a4;
  v45 = a2;
  v43 = a1;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v40 = *(v47 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v46 = &v38 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v12;
    sub_20BDB695C(v12);

    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v5);
    v20 = *(v6 + 80);
    v39 = v13;
    v21 = v45;
    v22 = (v20 + 24) & ~v20;
    v23 = v22 + v7;
    v41 = v14;
    v24 = swift_allocObject();
    *(v24 + 16) = v18;
    (*(v6 + 32))(v24 + v22, v8, v5);
    *(v24 + v23) = v44;
    v25 = v24 + (v23 & 0xFFFFFFFFFFFFFFF8);
    *(v25 + 8) = v43;
    *(v25 + 16) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BDC6A6C;
    *(v26 + 24) = v24;
    v27 = v40;
    v28 = v42;
    v29 = v38;
    v30 = v47;
    (*(v40 + 16))(v42, v38, v47);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    (*(v27 + 32))(v32 + v31, v28, v30);
    v33 = (v32 + ((v9 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v33 = sub_20B5DF4B8;
    v33[1] = v26;

    v34 = v46;
    sub_20C137C94();
    (*(v27 + 8))(v29, v30);
    v35 = v39;
    v36 = sub_20C137CB4();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    v36(sub_20B5DF6DC, v37);

    return (*(v41 + 8))(v34, v35);
  }

  return result;
}

uint64_t sub_20BDBA948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a6;
  v58 = a8;
  v53 = a5;
  v48 = a4;
  v54 = a2;
  v52 = a1;
  v9 = sub_20C134014();
  v49 = *(v9 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v11 = *(v56 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v56);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v55 = &v44 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v46 = a7;
    v47 = v15;
    v19 = v15;
    v20 = v9;
    sub_20BDB6D28(v57, a7, v19);
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v22 = v49;
    v23 = *(v49 + 16);
    v24 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v12;
    v23(v24, v48, v20);
    v25 = *(v22 + 80);
    v48 = v16;
    v26 = (v25 + 48) & ~v25;
    v27 = v26 + v10;
    v28 = v54;
    v29 = swift_allocObject();
    v30 = v46;
    *(v29 + 2) = v57;
    *(v29 + 3) = v30;
    *(v29 + 4) = v58;
    *(v29 + 5) = v21;
    (*(v22 + 32))(&v29[v26], v24, v20);
    v29[v27] = v53;
    v31 = &v29[v27 & 0xFFFFFFFFFFFFFFF8];
    *(v31 + 1) = v52;
    *(v31 + 2) = v28;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20BDC58C4;
    *(v32 + 24) = v29;
    v33 = v51;
    v34 = v47;
    v35 = v56;
    (*(v11 + 16))(v51, v47, v56);
    v36 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v37 = (v45 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (*(v11 + 32))(v38 + v36, v33, v35);
    v39 = (v38 + v37);
    *v39 = sub_20B5DF4B8;
    v39[1] = v32;

    v40 = v55;
    sub_20C137C94();
    (*(v11 + 8))(v34, v35);
    v41 = v48;
    v42 = sub_20C137CB4();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    v42(sub_20B5DF6DC, v43);

    return (*(v50 + 8))(v40, v41);
  }

  return result;
}

void sub_20BDBAE1C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if ((a1 & 1) != 0 && (v6 = a4, swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v9 = Strong;
    v10 = sub_20BDBB230(a3, v6);

    if (v10 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      v11 = sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v11 = v10;
    }

    a5(v11);
  }

  else
  {
    (a5)(MEMORY[0x277D84F90], a2, a3, a4);
  }
}

void sub_20BDBAF64(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  if ((a1 & 1) != 0 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v12 = Strong;
    v13 = a7(a3, a4);

    if (v13 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      v14 = sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v14 = v13;
    }

    a5(v14);
  }

  else
  {
    (a5)(MEMORY[0x277D84F90], a2, a3, a4, a5, a6, a7);
  }
}

void sub_20BDBB0BC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*a1 == 1 && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v15 = a10(a3, a4, a7, a8, a9);
    swift_unknownObjectRelease();
    if (v15 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      v16 = sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v16 = v15;
    }

    a5(v16);
  }

  else
  {
    a5(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_20BDBB230(uint64_t a1, int a2)
{
  v51 = a2;
  v4 = sub_20C134014();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = v5;
  v54 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C134B14();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = MEMORY[0x277D84F90];
  v58 = a1;
  v59 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider);
  v11 = sub_20C133E44();
  v13 = v12;
  v57 = v10;
  v52 = OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_upNextQueueItems;
  v14 = *(v10 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_upNextQueueItems);
  v15 = v14[2];
  v60 = v7 + 16;
  v61 = v15;
  v16 = (v7 + 8);

  v17 = 0;
  while (v61 != v17)
  {
    if (v17 >= v14[2])
    {
      __break(1u);
      goto LABEL_19;
    }

    (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v6);
    if (sub_20C134AB4() == v11 && v19 == v13)
    {

      (*v16)(v9, v6);
LABEL_8:

      v61 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
      v6 = v59;
      __swift_project_boxed_opaque_existential_1((v59 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer), *(v59 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 24));
      sub_20C138D34();
      v20 = sub_20C13C914();
      v21 = [objc_opt_self() smm:v20 systemImageNamed:?];

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = v54;
      v24 = v55;
      v25 = v56;
      (*(v55 + 16))(v54, v58, v56);
      v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      (*(v24 + 32))(v27 + v26, v23, v25);
      v48 = sub_20BDC7E34;
      v49 = v27;
      v46 = 2;
      v47 = 0;
      v45 = 0;
      v14 = sub_20C13D624();
      MEMORY[0x20F2F43B0]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_9:
        sub_20C13CCE4();

        goto LABEL_11;
      }

LABEL_19:
      sub_20C13CCA4();
      goto LABEL_9;
    }

    ++v17;
    v18 = sub_20C13DFF4();

    (*v16)(v9, v6);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v28 = v58;
  v29 = sub_20BEA5B80();
  MEMORY[0x28223BE20](v29);
  LOBYTE(v47) = v51;
  v6 = v59;
  v48 = v59;
  v49 = v28;
  v30 = sub_20B622D24(sub_20BDC7F68, &v45, v29);

  sub_20B8DAD68(v30);
LABEL_11:
  swift_getObjectType();
  v31 = swift_conformsToProtocol2();
  if (v31)
  {
    if (v6)
    {
      v32 = *(*(v57 + v52) + 16);
      if (v32)
      {
        v33 = v31;
        sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
        __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer), *(v6 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
        v34 = swift_allocObject();
        v35 = MEMORY[0x277D83B88];
        *(v34 + 16) = xmmword_20C14F980;
        v36 = MEMORY[0x277D83C10];
        *(v34 + 56) = v35;
        *(v34 + 64) = v36;
        *(v34 + 32) = v32;
        v37 = v6;
        sub_20C138D24();

        v38 = sub_20C13C914();
        v39 = [objc_opt_self() smm:v38 systemImageNamed:?];

        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = swift_allocObject();
        v41[2] = v40;
        v41[3] = v37;
        v41[4] = v33;
        v42 = v37;
        v45 = 0;
        v46 = 0;
        v48 = sub_20BDC7F2C;
        v49 = v41;
        v47 = 0;
        v43 = sub_20C13D624();
        MEMORY[0x20F2F43B0]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();
      }
    }
  }

  return v62;
}

uint64_t sub_20BDBB988(uint64_t a1, int a2)
{
  v51 = a2;
  v4 = sub_20C134014();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = v5;
  v54 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C134B14();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = MEMORY[0x277D84F90];
  v58 = a1;
  v59 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider);
  v11 = sub_20C133E44();
  v13 = v12;
  v57 = v10;
  v52 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_upNextQueueItems;
  v14 = *(v10 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_upNextQueueItems);
  v15 = v14[2];
  v60 = v7 + 16;
  v61 = v15;
  v16 = (v7 + 8);

  v17 = 0;
  while (v61 != v17)
  {
    if (v17 >= v14[2])
    {
      __break(1u);
      goto LABEL_19;
    }

    (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v6);
    if (sub_20C134AB4() == v11 && v19 == v13)
    {

      (*v16)(v9, v6);
LABEL_8:

      v61 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
      v6 = v59;
      __swift_project_boxed_opaque_existential_1((v59 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer), *(v59 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer + 24));
      sub_20C138D34();
      v20 = sub_20C13C914();
      v21 = [objc_opt_self() smm:v20 systemImageNamed:?];

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = v54;
      v24 = v55;
      v25 = v56;
      (*(v55 + 16))(v54, v58, v56);
      v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      (*(v24 + 32))(v27 + v26, v23, v25);
      v48 = sub_20BDC7278;
      v49 = v27;
      v46 = 2;
      v47 = 0;
      v45 = 0;
      v14 = sub_20C13D624();
      MEMORY[0x20F2F43B0]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_9:
        sub_20C13CCE4();

        goto LABEL_11;
      }

LABEL_19:
      sub_20C13CCA4();
      goto LABEL_9;
    }

    ++v17;
    v18 = sub_20C13DFF4();

    (*v16)(v9, v6);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v28 = v58;
  v29 = sub_20BEA5DF4();
  MEMORY[0x28223BE20](v29);
  LOBYTE(v47) = v51;
  v6 = v59;
  v48 = v59;
  v49 = v28;
  v30 = sub_20B622D24(sub_20BDC72E0, &v45, v29);

  sub_20B8DAD68(v30);
LABEL_11:
  swift_getObjectType();
  v31 = swift_conformsToProtocol2();
  if (v31)
  {
    if (v6)
    {
      v32 = *(*(v57 + v52) + 16);
      if (v32)
      {
        v33 = v31;
        sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
        __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer), *(v6 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer + 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
        v34 = swift_allocObject();
        v35 = MEMORY[0x277D83B88];
        *(v34 + 16) = xmmword_20C14F980;
        v36 = MEMORY[0x277D83C10];
        *(v34 + 56) = v35;
        *(v34 + 64) = v36;
        *(v34 + 32) = v32;
        v37 = v6;
        sub_20C138D24();

        v38 = sub_20C13C914();
        v39 = [objc_opt_self() smm:v38 systemImageNamed:?];

        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = swift_allocObject();
        v41[2] = v40;
        v41[3] = v37;
        v41[4] = v33;
        v42 = v37;
        v45 = 0;
        v46 = 0;
        v48 = sub_20BDC72A4;
        v49 = v41;
        v47 = 0;
        v43 = sub_20C13D624();
        MEMORY[0x20F2F43B0]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();
      }
    }
  }

  return v62;
}

uint64_t sub_20BDBC0E0(uint64_t a1, int a2)
{
  v51 = a2;
  v4 = sub_20C134014();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = v5;
  v54 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C134B14();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = MEMORY[0x277D84F90];
  v58 = a1;
  v59 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider);
  v11 = sub_20C133E44();
  v13 = v12;
  v57 = v10;
  v52 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueItems;
  v14 = *(v10 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueItems);
  v15 = v14[2];
  v60 = v7 + 16;
  v61 = v15;
  v16 = (v7 + 8);

  v17 = 0;
  while (v61 != v17)
  {
    if (v17 >= v14[2])
    {
      __break(1u);
      goto LABEL_19;
    }

    (*(v7 + 16))(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v6);
    if (sub_20C134AB4() == v11 && v19 == v13)
    {

      (*v16)(v9, v6);
LABEL_8:

      v61 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
      v6 = v59;
      __swift_project_boxed_opaque_existential_1((v59 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer), *(v59 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer + 24));
      sub_20C138D34();
      v20 = sub_20C13C914();
      v21 = [objc_opt_self() smm:v20 systemImageNamed:?];

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = v54;
      v24 = v55;
      v25 = v56;
      (*(v55 + 16))(v54, v58, v56);
      v26 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      (*(v24 + 32))(v27 + v26, v23, v25);
      v48 = sub_20BDC6A98;
      v49 = v27;
      v46 = 2;
      v47 = 0;
      v45 = 0;
      v14 = sub_20C13D624();
      MEMORY[0x20F2F43B0]();
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_9:
        sub_20C13CCE4();

        goto LABEL_11;
      }

LABEL_19:
      sub_20C13CCA4();
      goto LABEL_9;
    }

    ++v17;
    v18 = sub_20C13DFF4();

    (*v16)(v9, v6);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  v28 = v58;
  v29 = sub_20BEA6068();
  MEMORY[0x28223BE20](v29);
  LOBYTE(v47) = v51;
  v6 = v59;
  v48 = v59;
  v49 = v28;
  v30 = sub_20B622D24(sub_20BDC6B00, &v45, v29);

  sub_20B8DAD68(v30);
LABEL_11:
  swift_getObjectType();
  v31 = swift_conformsToProtocol2();
  if (v31)
  {
    if (v6)
    {
      v32 = *(*(v57 + v52) + 16);
      if (v32)
      {
        v33 = v31;
        sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
        __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer), *(v6 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer + 24));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
        v34 = swift_allocObject();
        v35 = MEMORY[0x277D83B88];
        *(v34 + 16) = xmmword_20C14F980;
        v36 = MEMORY[0x277D83C10];
        *(v34 + 56) = v35;
        *(v34 + 64) = v36;
        *(v34 + 32) = v32;
        v37 = v6;
        sub_20C138D24();

        v38 = sub_20C13C914();
        v39 = [objc_opt_self() smm:v38 systemImageNamed:?];

        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = swift_allocObject();
        v41[2] = v40;
        v41[3] = v37;
        v41[4] = v33;
        v42 = v37;
        v45 = 0;
        v46 = 0;
        v48 = sub_20BDC6AC4;
        v49 = v41;
        v47 = 0;
        v43 = sub_20C13D624();
        MEMORY[0x20F2F43B0]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20C13CCA4();
        }

        sub_20C13CCE4();
      }
    }
  }

  return v62;
}

uint64_t sub_20BDBC838(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  LODWORD(v61) = a2;
  v9 = sub_20C134014();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v62 = v11;
  v63 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = MEMORY[0x277D84F90];
  v12 = v5;
  v71[0] = v5;
  v70 = *(a4 + 32);
  v70(a3, a4, v10);
  v68 = a1;
  v13 = sub_20C133E44();
  v15 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v67 = AssociatedConformanceWitness;
  LOBYTE(v13) = sub_20BEAAC4C(v13, v15, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  swift_unknownObjectRelease();

  v66 = v18;
  if (v13)
  {
    v59[3] = a4 + 32;
    v60 = AssociatedTypeWitness;
    v59[2] = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    v73 = v12;
    (*(a4 + 56))(v71, a3, a4);
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v59[1] = sub_20C138D34();
    v59[0] = v19;
    v20 = sub_20C13C914();
    v21 = [objc_opt_self() smm:v20 systemImageNamed:?];

    v22 = swift_allocObject();
    v61 = v12;
    swift_unknownObjectWeakInit();
    v23 = v63;
    v24 = v64;
    v25 = v65;
    (*(v64 + 16))(v63, v68, v65);
    v26 = (*(v24 + 80) + 48) & ~*(v24 + 80);
    v27 = swift_allocObject();
    v62 = a3;
    *(v27 + 2) = a3;
    *(v27 + 3) = a4;
    v68 = a4;
    *(v27 + 4) = v69;
    *(v27 + 5) = v22;
    (*(v24 + 32))(&v27[v26], v23, v25);
    v56 = sub_20BDC5A70;
    v57 = v27;
    v54 = 2;
    v55 = 0;
    v53 = 0;
    v28 = sub_20C13D624();
    __swift_destroy_boxed_opaque_existential_1(v71);
    v29 = v28;
    MEMORY[0x20F2F43B0]();
    if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();

    AssociatedTypeWitness = v60;
    v12 = v61;
    a3 = v62;
    v30 = v70;
    a4 = v68;
  }

  else
  {
    v71[0] = v12;
    (v70)(a3, a4);
    v31 = v68;
    v32 = (*(v18 + 296))(v68, AssociatedTypeWitness, v18);
    v33 = swift_unknownObjectRelease();
    MEMORY[0x28223BE20](v33);
    v53 = a3;
    v54 = a4;
    v55 = v69;
    LOBYTE(v56) = v61;
    v57 = v12;
    v58 = v31;
    v34 = sub_20B622D24(sub_20BDC58F0, &v59[-8], v32);

    sub_20B8DAD68(v34);
    v30 = v70;
  }

  ObjectType = swift_getObjectType();
  v36 = sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v37 = dynamic_cast_existential_1_superclass_conditional(v12, ObjectType, v36, &protocol descriptor for UpNextQueuePresenting);
  if (v37)
  {
    v39 = v37;
    v40 = v38;
    v71[0] = v12;
    swift_unknownObjectRetain();
    v30(a3, a4);
    v41 = sub_20BEAAE38(AssociatedTypeWitness, v67, v66);
    swift_unknownObjectRelease();
    if (v41 >= 1)
    {
      v70 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
      v73 = v12;
      (*(a4 + 56))(v71, a3, a4);
      v68 = a4;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_20C14F980;
      v43 = MEMORY[0x277D83C10];
      *(v42 + 56) = MEMORY[0x277D83B88];
      *(v42 + 64) = v43;
      *(v42 + 32) = v41;
      sub_20C138D24();

      v44 = sub_20C13C914();
      v45 = [objc_opt_self() smm:v44 systemImageNamed:?];

      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      v49 = v68;
      v48 = v69;
      v47[2] = a3;
      v47[3] = v49;
      v47[4] = v48;
      v47[5] = v46;
      v47[6] = v39;
      v47[7] = v40;
      swift_unknownObjectRetain();
      v53 = 0;
      v54 = 0;
      v56 = sub_20BDC598C;
      v57 = v47;
      v55 = 0;
      v50 = sub_20C13D624();
      __swift_destroy_boxed_opaque_existential_1(v71);
      v51 = v50;
      MEMORY[0x20F2F43B0]();
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
    }

    swift_unknownObjectRelease();
  }

  return v74;
}

void *sub_20BDBCFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v8;
    v12 = result;

    sub_20BEA415C(a3, v10);

    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20BDC8194;
    *(v18 + 24) = v16;

    v17(sub_20B5DF6DC, v18);

    return (*(v20 + 8))(v10, v7);
  }

  return result;
}

void *sub_20BDBD2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v8;
    v12 = result;

    sub_20BEA4718(a3, v10);

    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20BDC735C;
    *(v18 + 24) = v16;

    v17(sub_20B5DF6DC, v18);

    return (*(v20 + 8))(v10, v7);
  }

  return result;
}

void *sub_20BDBD5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = v8;
    v12 = result;

    sub_20BEA4CD4(a3, v10);

    v13 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
    v17 = sub_20C137CB4();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20BDC6C70;
    *(v18 + 24) = v16;

    v17(sub_20B5DF6DC, v18);

    return (*(v20 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_20BDBD8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a3;
  v9 = sub_20C134014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v40 = &v33 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41[0] = result;
    v16 = *(a5 + 32);
    v37 = v13;
    v16(a4, a5);
    swift_unknownObjectRelease();
    swift_getAssociatedTypeWitness();
    v36 = v12;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = a6;
    v33 = v9;
    v18 = *(AssociatedConformanceWitness + 280);
    v19 = swift_checkMetadataState();
    v34 = a5;
    v20 = v38;
    v18(v38, v19, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v22 = v39;
    v23 = v20;
    v24 = v33;
    (*(v10 + 16))(v39, v23, v33);
    v25 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v26 = swift_allocObject();
    v28 = v34;
    v27 = v35;
    *(v26 + 2) = a4;
    *(v26 + 3) = v28;
    *(v26 + 4) = v27;
    (*(v10 + 32))(&v26[v25], v22, v24);
    *&v26[(v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = v21;
    v29 = v36;
    v30 = v40;
    v31 = sub_20C137CB4();
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20BDC5B08;
    *(v32 + 24) = v26;

    v31(sub_20B5DF6DC, v32);

    return (*(v37 + 8))(v30, v29);
  }

  return result;
}

double sub_20BDBDC7C(uint64_t a1, void *a2)
{
  v4 = sub_20C134B94();
  v6 = v5;
  if (v4 != sub_20C134B94() || v6 != v7)
  {
    sub_20C13DFF4();
  }

  v9 = [objc_allocWithZone(SMUBulletinInfo) init];
  v10 = sub_20C13C914();
  [v9 setImageSymbolName_];

  __swift_project_boxed_opaque_existential_1((v2 + *a2), *(v2 + *a2 + 24));
  sub_20C138D34();

  v11 = sub_20C13C914();

  [v9 setTitle_];

  [objc_msgSend(objc_opt_self() sharedBulletinService)];

  swift_unknownObjectRelease();
  return result;
}

double sub_20BDBDE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134B94();
  v8 = v7;
  if (v6 != sub_20C134B94() || v8 != v9)
  {
    sub_20C13DFF4();
  }

  v11 = [objc_allocWithZone(SMUBulletinInfo) init];
  v12 = sub_20C13C914();
  [v11 setImageSymbolName_];

  v15[5] = v3;
  (*(a3 + 56))(v15, a2, a3);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_20C138D34();

  v13 = sub_20C13C914();

  __swift_destroy_boxed_opaque_existential_1(v15);
  [v11 setTitle_];

  [objc_msgSend(objc_opt_self() sharedBulletinService)];
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BDBE088(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v26 = a6;
  v27 = a4;
  v24 = a5;
  v23[1] = a3;
  v25 = sub_20C134014();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C1371C4();
  __swift_project_boxed_opaque_existential_1((a3 + *v24), *(a3 + *v24 + 24));
  v13 = sub_20C138D34();
  v23[3] = v14;
  v24 = v13;

  v23[2] = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  v15 = sub_20C13C914();
  v16 = [objc_opt_self() smm:v15 systemImageNamed:?];

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v25;
  (*(v9 + 16))(v11, v27, v25);
  v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  (*(v9 + 32))(v21 + v19, v11, v18);
  *(v21 + v20) = v12;
  return sub_20C13D624();
}

uint64_t sub_20BDBE338@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v35 = a7;
  v33 = a3;
  v34 = a6;
  v25 = a4;
  v32 = sub_20C134014();
  v10 = *(v32 - 8);
  v30 = *(v10 + 64);
  MEMORY[0x28223BE20](v32);
  v29 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C1371C4();
  v36[6] = a2;
  v26 = a5;
  (*(a5 + 56))(v36, a4, a5);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v12 = sub_20C138D34();
  v27 = v13;
  v28 = v12;

  __swift_destroy_boxed_opaque_existential_1(v36);
  sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  v14 = sub_20C13C914();
  v15 = [objc_opt_self() smm:v14 systemImageNamed:?];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v29;
  v18 = v32;
  (*(v10 + 16))(v29, v33, v32);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = (v30 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 2) = v25;
  *(v21 + 3) = v22;
  *(v21 + 4) = v34;
  *(v21 + 5) = v16;
  (*(v10 + 32))(&v21[v19], v17, v18);
  *&v21[v20] = v31;
  result = sub_20C13D624();
  *v35 = result;
  return result;
}

void *sub_20BDBE648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C134014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = v9;
    v23 = v10;
    v14 = result;

    sub_20BEA2488(a3, a4, v12);

    v15 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    (*(v7 + 32))(v18 + v17, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v19 = v22;
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_20BDC80D8;
    *(v21 + 24) = v18;

    v20(sub_20B5DF6DC, v21);

    return (*(v23 + 8))(v12, v19);
  }

  return result;
}

void *sub_20BDBE94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C134014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = v9;
    v23 = v10;
    v14 = result;

    sub_20BEA2B88(a3, a4, v12);

    v15 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    (*(v7 + 32))(v18 + v17, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v19 = v22;
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_20BDC733C;
    *(v21 + 24) = v18;

    v20(sub_20B5DF6DC, v21);

    return (*(v23 + 8))(v12, v19);
  }

  return result;
}

void *sub_20BDBEC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C134014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = v9;
    v23 = v10;
    v14 = result;

    sub_20BEA3288(a3, a4, v12);

    v15 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v7 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    (*(v7 + 32))(v18 + v17, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    v19 = v22;
    v20 = sub_20C137CB4();
    v21 = swift_allocObject();
    *(v21 + 16) = sub_20BDC6B5C;
    *(v21 + 24) = v18;

    v20(sub_20B5DF6DC, v21);

    return (*(v23 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_20BDBEF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a4;
  v39 = a3;
  v41 = sub_20C134014();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v42[0] = result;
    v17 = *(a6 + 32);
    v37 = v13;
    v17(a5, a6);
    swift_unknownObjectRelease();
    swift_getAssociatedTypeWitness();
    v36 = v12;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v33 = a5;
    v34 = a7;
    v19 = *(AssociatedConformanceWitness + 272);
    v20 = swift_checkMetadataState();
    v35 = v15;
    v21 = v39;
    v19(v39, v38, v20, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    v22 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v24 = v40;
    v23 = v41;
    (*(v10 + 16))(v40, v21, v41);
    v25 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v26 = swift_allocObject();
    v27 = v34;
    *(v26 + 2) = v33;
    *(v26 + 3) = a6;
    *(v26 + 4) = v27;
    (*(v10 + 32))(&v26[v25], v24, v23);
    *&v26[(v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8] = v22;
    v29 = v35;
    v28 = v36;
    v30 = sub_20C137CB4();
    v31 = swift_allocObject();
    *(v31 + 16) = sub_20BDC5C80;
    *(v31 + 24) = v26;

    v30(sub_20B5DF6DC, v31);

    return (*(v37 + 8))(v29, v28);
  }

  return result;
}

double sub_20BDBF2FC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_20C133FF4();
  if (v14 != -1)
  {
    v16 = v12;
    v17 = v13;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C00, &unk_20C15E820);
    sub_20C133BD4();
    sub_20B584078(v16, v17, v18);
    if (v19 != 4)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        a8(v19, a5, a6, a7);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

double sub_20BDBF40C(uint64_t a1, void *a2)
{
  v4 = sub_20C134B94();
  v6 = v5;
  if (v4 != sub_20C134B94() || v6 != v7)
  {
    sub_20C13DFF4();
  }

  v9 = [objc_allocWithZone(SMUBulletinInfo) init];
  v10 = sub_20C13C914();
  [v9 setImageSymbolName_];

  __swift_project_boxed_opaque_existential_1((v2 + *a2), *(v2 + *a2 + 24));
  sub_20C138D34();

  v11 = sub_20C13C914();

  [v9 setTitle_];

  [objc_msgSend(objc_opt_self() sharedBulletinService)];

  swift_unknownObjectRelease();
  return result;
}

double sub_20BDBF5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134B94();
  v8 = v7;
  if (v6 != sub_20C134B94() || v8 != v9)
  {
    sub_20C13DFF4();
  }

  v11 = [objc_allocWithZone(SMUBulletinInfo) init];
  v12 = sub_20C13C914();
  [v11 setImageSymbolName_];

  v15[5] = v3;
  (*(a3 + 56))(v15, a2, a3);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_20C138D34();

  v13 = sub_20C13C914();

  __swift_destroy_boxed_opaque_existential_1(v15);
  [v11 setTitle_];

  [objc_msgSend(objc_opt_self() sharedBulletinService)];
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BDBF818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *, char *, uint64_t, unint64_t, char *))
{
  v23 = a6;
  v25 = a3;
  v26 = a4;
  v24 = sub_20C135ED4();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1352E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C134F24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;

    (*(v14 + 104))(v16, *MEMORY[0x277D51488], v13);
    (*(v10 + 104))(v12, *MEMORY[0x277D51768], v9);
    v19 = v24;
    (*(v6 + 104))(v8, *MEMORY[0x277D523D8], v24);
    v23(v16, v12, 0x6361745377656956, 0xE90000000000006BLL, v8);

    (*(v6 + 8))(v8, v19);
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
  }

  v20 = v25;
  ObjectType = swift_getObjectType();
  v27 = v20;
  return sub_20B683148(ObjectType, v26);
}

uint64_t sub_20BDBFB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(a6 + 32))(a5, a6);
    swift_unknownObjectRelease();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = *(AssociatedConformanceWitness + 288);
    v11 = swift_checkMetadataState();
    v10(v11, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }

  ObjectType = swift_getObjectType();
  return sub_20B683148(ObjectType, a4);
}

void *sub_20BDBFC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a2;
  v38 = a1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v39 = &v34 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v34 = v11;
    sub_20BDB61CC(v11);

    v16 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v4);
    v18 = *(v5 + 80);
    v35 = v12;
    v19 = v36;
    v20 = (v18 + 24) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    (*(v5 + 32))(v21 + v20, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v38;
    v22[1] = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20BDC7C74;
    *(v23 + 24) = v21;
    v24 = v37;
    v25 = v34;
    v26 = v40;
    (*(v7 + 16))(v37, v34, v40);
    v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v28 = swift_allocObject();
    (*(v7 + 32))(v28 + v27, v24, v26);
    v29 = (v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_20B5DF4B8;
    v29[1] = v23;

    v30 = v39;
    sub_20C137C94();
    (*(v7 + 8))(v25, v26);
    v31 = v35;
    v32 = sub_20C137CB4();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v32(sub_20B5DF6DC, v33);

    return (*(v41 + 8))(v30, v31);
  }

  return result;
}

void *sub_20BDC00DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a2;
  v38 = a1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v39 = &v34 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v34 = v11;
    sub_20BDB6594(v11);

    v16 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v4);
    v18 = *(v5 + 80);
    v35 = v12;
    v19 = v36;
    v20 = (v18 + 24) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    (*(v5 + 32))(v21 + v20, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v38;
    v22[1] = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20BDC7050;
    *(v23 + 24) = v21;
    v24 = v37;
    v25 = v34;
    v26 = v40;
    (*(v7 + 16))(v37, v34, v40);
    v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v28 = swift_allocObject();
    (*(v7 + 32))(v28 + v27, v24, v26);
    v29 = (v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_20B5DF4B8;
    v29[1] = v23;

    v30 = v39;
    sub_20C137C94();
    (*(v7 + 8))(v25, v26);
    v31 = v35;
    v32 = sub_20C137CB4();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v32(sub_20B5DF6DC, v33);

    return (*(v41 + 8))(v30, v31);
  }

  return result;
}

void *sub_20BDC0564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a2;
  v38 = a1;
  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v39 = &v34 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v34 = v11;
    sub_20BDB695C(v11);

    v16 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v5 + 16))(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v4);
    v18 = *(v5 + 80);
    v35 = v12;
    v19 = v36;
    v20 = (v18 + 24) & ~v18;
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    (*(v5 + 32))(v21 + v20, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v38;
    v22[1] = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20BDC6918;
    *(v23 + 24) = v21;
    v24 = v37;
    v25 = v34;
    v26 = v40;
    (*(v7 + 16))(v37, v34, v40);
    v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v28 = swift_allocObject();
    (*(v7 + 32))(v28 + v27, v24, v26);
    v29 = (v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_20B5DF4B8;
    v29[1] = v23;

    v30 = v39;
    sub_20C137C94();
    (*(v7 + 8))(v25, v26);
    v31 = v35;
    v32 = sub_20C137CB4();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v32(sub_20B5DF6DC, v33);

    return (*(v41 + 8))(v30, v31);
  }

  return result;
}

uint64_t sub_20BDC09EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v45 = a5;
  v43 = a4;
  v47 = a1;
  v48 = a2;
  v8 = sub_20C134014();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v44 = *(v50 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v49 = &v41 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = a6;
    v42 = v14;
    v18 = v14;
    v19 = v8;
    v20 = v45;
    sub_20BDB6D28(v45, a6, v18);
    swift_unknownObjectRelease();
    v21 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v22 = v19;
    (*(v9 + 16))(&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v43, v19);
    v23 = *(v9 + 80);
    v43 = v15;
    v24 = v48;
    v25 = (v23 + 48) & ~v23;
    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 2) = v20;
    *(v26 + 3) = v27;
    *(v26 + 4) = v52;
    *(v26 + 5) = v21;
    (*(v9 + 32))(&v26[v25], &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
    v28 = &v26[(v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v28 = v47;
    v28[1] = v24;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_20BDC57E0;
    *(v29 + 24) = v26;
    v30 = v44;
    v31 = v46;
    v32 = v42;
    v33 = v50;
    (*(v44 + 16))(v46, v42, v50);
    v34 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v35 = swift_allocObject();
    (*(v30 + 32))(v35 + v34, v31, v33);
    v36 = (v35 + ((v11 + v34 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v36 = sub_20B5DF4B8;
    v36[1] = v29;

    v37 = v49;
    sub_20C137C94();
    (*(v30 + 8))(v32, v33);
    v38 = v43;
    v39 = sub_20C137CB4();
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    v39(sub_20B5DF6DC, v40);

    return (*(v51 + 8))(v37, v38);
  }

  return result;
}

void sub_20BDC0EB4(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if ((a1 & 1) != 0 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v7 = Strong;
    v8 = sub_20BDC3770(*(Strong + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_dataProvider), a3, (Strong + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer), *(Strong + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_platform));

    if (v8 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      v9 = sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v9 = v8;
    }

    a4(v9);
  }

  else
  {
    (a4)(MEMORY[0x277D84F90], a2, a3);
  }
}

void sub_20BDC1024(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void *a6, void *a7, void *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, void))
{
  if ((a1 & 1) != 0 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v15 = *(Strong + *a7);
    v16 = Strong;
    v17 = a9(v15, a3, Strong + *a8, *(Strong + *a6));

    if (v17 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      v18 = sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v18 = v17;
    }

    a4(v18);
  }

  else
  {
    (a4)(MEMORY[0x277D84F90], a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_20BDC1198(_BYTE *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1 == 1 && (swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    v12 = sub_20BDC1304(a3, a6, a7);
    swift_unknownObjectRelease();
    if (v12 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      v13 = sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v13 = v12;
    }

    a4(v13);
  }

  else
  {
    a4(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_20BDC1304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(a3 + 48))(a2, a3);
  v16 = v3;
  v8 = (*(a3 + 32))(a2, a3);
  v15 = v3;
  (*(a3 + 56))(v14, a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = sub_20B654CB0(v8, a1, v14, v7, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v12;
}

double sub_20BDC1464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_20C134F24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(a2 + 24);
    v14 = Strong;
    ObjectType = swift_getObjectType();
    v16 = v14;
    (*(v8 + 104))(v10, *MEMORY[0x277D51418], v7);
    (*(v13 + 56))(a3, v10, a4, 1, ObjectType, v13);
    (*(v8 + 8))(v10, v7);
    swift_unknownObjectRelease();
  }

  return result;
}

void *sub_20BDC15D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v49 = a1;
  v50 = a2;
  v46 = sub_20C133244();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = &v40 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v43 = v11;
    sub_20BDB61CC(v11);

    v41 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v46;
    (*(v5 + 16))(v19, v45, v46);
    v21 = *(v5 + 80);
    v44 = v12;
    v45 = v13;
    v42 = v8;
    v22 = v50;
    v23 = (v21 + 24) & ~v21;
    v24 = v47;
    v40 = v7;
    v25 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v41;
    (*(v5 + 32))(v26 + v23, v19, v20);
    *(v26 + v25) = v18;
    v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v49;
    v27[1] = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BDC7AC4;
    *(v28 + 24) = v26;
    v29 = v48;
    v30 = v43;
    v31 = v40;
    (*(v24 + 16))(v48, v43, v40);
    v32 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v33 = (v42 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v24 + 32))(v34 + v32, v29, v31);
    v35 = (v34 + v33);
    *v35 = sub_20B5DF4B8;
    v35[1] = v28;

    v36 = v51;
    sub_20C137C94();
    (*(v24 + 8))(v30, v31);
    v37 = v44;
    v38 = sub_20C137CB4();
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    v38(sub_20B5DF6DC, v39);

    return (*(v45 + 8))(v36, v37);
  }

  return result;
}

void *sub_20BDC1AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v49 = a1;
  v50 = a2;
  v46 = sub_20C133244();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = &v40 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v43 = v11;
    sub_20BDB6594(v11);

    v41 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v46;
    (*(v5 + 16))(v19, v45, v46);
    v21 = *(v5 + 80);
    v44 = v12;
    v45 = v13;
    v42 = v8;
    v22 = v50;
    v23 = (v21 + 24) & ~v21;
    v24 = v47;
    v40 = v7;
    v25 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v41;
    (*(v5 + 32))(v26 + v23, v19, v20);
    *(v26 + v25) = v18;
    v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v49;
    v27[1] = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BDC6E80;
    *(v28 + 24) = v26;
    v29 = v48;
    v30 = v43;
    v31 = v40;
    (*(v24 + 16))(v48, v43, v40);
    v32 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v33 = (v42 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v24 + 32))(v34 + v32, v29, v31);
    v35 = (v34 + v33);
    *v35 = sub_20B5DF4B8;
    v35[1] = v28;

    v36 = v51;
    sub_20C137C94();
    (*(v24 + 8))(v30, v31);
    v37 = v44;
    v38 = sub_20C137CB4();
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    v38(sub_20B5DF6DC, v39);

    return (*(v45 + 8))(v36, v37);
  }

  return result;
}

void *sub_20BDC1F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v49 = a1;
  v50 = a2;
  v46 = sub_20C133244();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = &v40 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v43 = v11;
    sub_20BDB695C(v11);

    v41 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v46;
    (*(v5 + 16))(v19, v45, v46);
    v21 = *(v5 + 80);
    v44 = v12;
    v45 = v13;
    v42 = v8;
    v22 = v50;
    v23 = (v21 + 24) & ~v21;
    v24 = v47;
    v40 = v7;
    v25 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v41;
    (*(v5 + 32))(v26 + v23, v19, v20);
    *(v26 + v25) = v18;
    v27 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v49;
    v27[1] = v22;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_20BDC68C4;
    *(v28 + 24) = v26;
    v29 = v48;
    v30 = v43;
    v31 = v40;
    (*(v24 + 16))(v48, v43, v40);
    v32 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v33 = (v42 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    (*(v24 + 32))(v34 + v32, v29, v31);
    v35 = (v34 + v33);
    *v35 = sub_20B5DF4B8;
    v35[1] = v28;

    v36 = v51;
    sub_20C137C94();
    (*(v24 + 8))(v30, v31);
    v37 = v44;
    v38 = sub_20C137CB4();
    v39 = swift_allocObject();
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    v38(sub_20B5DF6DC, v39);

    return (*(v45 + 8))(v36, v37);
  }

  return result;
}

uint64_t sub_20BDC2460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a7;
  v62 = a8;
  v52 = a4;
  v53 = a5;
  v58 = a1;
  v59 = a2;
  v9 = sub_20C133244();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCB0, &unk_20C14FD40);
  v56 = *(v11 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v60 = &v46 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v50 = a6;
    v51 = v15;
    sub_20BDB6D28(a6, v61, v15);
    swift_unknownObjectRelease();
    v48 = swift_allocObject();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = v54;
    v22 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = v55;
    (*(v54 + 16))(v22, v53, v55);
    v24 = *(v21 + 80);
    v52 = v16;
    v25 = (v24 + 48) & ~v24;
    v47 = v11;
    v26 = v56;
    v49 = v12;
    v27 = v59;
    v28 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = v17;
    v29 = swift_allocObject();
    v30 = v61;
    v31 = v62;
    *(v29 + 2) = v50;
    *(v29 + 3) = v30;
    v32 = v48;
    *(v29 + 4) = v31;
    *(v29 + 5) = v32;
    (*(v21 + 32))(&v29[v25], v22, v23);
    *&v29[v28] = v20;
    v33 = &v29[(v28 + 15) & 0xFFFFFFFFFFFFFFF8];
    *v33 = v58;
    v33[1] = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20BDC5594;
    *(v34 + 24) = v29;
    v35 = v57;
    v36 = v51;
    v37 = v47;
    (*(v26 + 16))(v57, v51, v47);
    v38 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v39 = (v49 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    (*(v26 + 32))(v40 + v38, v35, v37);
    v41 = (v40 + v39);
    *v41 = sub_20B5D9FF4;
    v41[1] = v34;

    v42 = v60;
    sub_20C137C94();
    (*(v26 + 8))(v36, v37);
    v43 = v52;
    v44 = sub_20C137CB4();
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    v44(sub_20B52347C, v45);

    return (*(v53 + 8))(v42, v43);
  }

  return result;
}

void sub_20BDC2968(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v28 = a3;
  v7 = sub_20C133244();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 || (swift_beginAccess(), (v12 = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    (a5)(MEMORY[0x277D84F90], v10);
  }

  else
  {
    v13 = v12;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v27 = a5;
    v15 = Strong;
    v26[3] = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    v16 = *&v13[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 24];
    v17 = *&v13[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer + 32];
    __swift_project_boxed_opaque_existential_1(&v13[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanWeekdayDetailViewController_storefrontLocalizer], v16);
    v18 = sub_20B5E107C(0xD000000000000020, 0x800000020C1942E0, v16, v17);
    v26[1] = v19;
    v26[2] = v18;
    v20 = sub_20C13C914();
    v26[0] = [objc_opt_self() systemImageNamed_];

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v8 + 16))(v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v7);
    v22 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    (*(v8 + 32))(v23 + v22, v11, v7);
    v24 = sub_20C13D624();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_20C14F580;
    *(v25 + 32) = v24;

    v27(v25);
  }
}

void sub_20BDC2C88(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v35 = a8;
  v36 = a5;
  v34 = a3;
  v12 = sub_20C133244();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v16 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 || (swift_beginAccess(), (v17 = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    (v36)(MEMORY[0x277D84F90], v15);
  }

  else
  {
    v18 = v17;
    v33[3] = a9;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v33[4] = a6;
    v20 = Strong;
    v33[2] = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    v21 = &v18[*a7];
    v22 = *(v21 + 3);
    v23 = *(v21 + 4);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v24 = sub_20B5E107C(0xD000000000000020, 0x800000020C1942E0, v22, v23);
    v33[0] = v25;
    v33[1] = v24;
    v26 = sub_20C13C914();
    v27 = [objc_opt_self() systemImageNamed_];

    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v13 + 16))(v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v12);
    v29 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    (*(v13 + 32))(v30 + v29, v16, v12);
    v31 = sub_20C13D624();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_20C14F580;
    *(v32 + 32) = v31;

    v36(v32);
  }
}

void sub_20BDC2FA0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, __n128), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((*a1 & 1) != 0 || (swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
  {
    (a5)(MEMORY[0x277D84F90], a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_20BDC313C(a3, Strong, a7, a8);
    v15 = v14;
    swift_unknownObjectRelease();

    if (v15 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

      v16 = sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
      v16 = v15;
    }

    (a5)(v16);
  }
}

double sub_20BDC313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C133244();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v21[1] = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  v25 = v4;
  (*(a4 + 56))(v22, a3, a4);
  v11 = v23;
  v12 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_20B5E107C(0xD000000000000020, 0x800000020C1942E0, v11, v12);
  v13 = sub_20C13C914();
  v14 = [objc_opt_self() systemImageNamed_];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  (*(v9 + 32))(v17 + v16, v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v18 = sub_20C13D624();
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v19 = swift_allocObject();
  *&result = 1;
  *(v19 + 16) = xmmword_20C14F580;
  *(v19 + 32) = v18;
  return result;
}

void sub_20BDC33EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v5 = sub_20C1331B4();
    [v3 collectionView:v4 didSelectItemAtIndexPath:v5];
  }
}

uint64_t sub_20BDC3488@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_20C132E94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132E84();
  v6 = sub_20C135704();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6 & 1;
  return result;
}

uint64_t sub_20BDC36D4(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;

  return sub_20C137C94();
}

uint64_t sub_20BDC3770(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v63 = a1;
  v64 = a2;
  v58 = a4;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v66 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v59 = sub_20C138D34();
  v57 = v9;
  v10 = sub_20C13C914();
  v65 = objc_opt_self();
  v11 = [v65 smm:v10 systemImageNamed:?];

  v12 = swift_allocObject();
  *(v12 + 24) = &off_28228F3A8;
  *(v12 + 32) = &off_28228F248;
  swift_unknownObjectWeakInit();
  v13 = *(v6 + 16);
  v61 = v6 + 16;
  v62 = v13;
  v14 = v64;
  v13(v8, v64, v5);
  v69 = *(v6 + 80);
  v15 = (v69 + 24) & ~v69;
  v60 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = *(v6 + 32);
  v67 = v6 + 32;
  v68 = v17;
  v17(v16 + v15, v8, v5);
  v59 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v18 = sub_20C138D34();
  v56 = v19;
  v57 = v18;
  v20 = sub_20C13C914();
  v55 = [v65 smm:v20 systemImageNamed:?];

  v21 = swift_allocObject();
  *(v21 + 24) = &off_28228F3A8;
  *(v21 + 32) = &off_28228F248;
  swift_unknownObjectWeakInit();
  v22 = v62;
  v62(v8, v14, v5);
  v23 = v60;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v25 = v5;
  v68(v24 + v23, v8, v5);
  v57 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v56 = sub_20C138D34();
  v26 = sub_20C13C914();
  v27 = [v65 systemImageNamed_];

  v28 = swift_allocObject();
  *(v28 + 24) = &off_28228F3A8;
  *(v28 + 32) = &off_28228F248;
  swift_unknownObjectWeakInit();
  v29 = v64;
  v22(v8, v64, v5);
  v30 = v60;
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v68(v31 + v30, v8, v5);
  v56 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_20C138D34();
  v32 = sub_20C13C914();
  v33 = [v65 systemImageNamed_];

  v34 = swift_allocObject();
  *(v34 + 24) = &off_28228F3A8;
  *(v34 + 32) = &off_28228F248;
  swift_unknownObjectWeakInit();
  v62(v8, v29, v5);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v68(v35 + v30, v8, v25);
  v36 = sub_20C13D624();
  v37 = sub_20C133E44();
  v39 = sub_20BEA9314(v37, v38);

  if (v58 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v40 = swift_allocObject();
    v41 = v40;
    *(v40 + 16) = xmmword_20C14F580;
    if (v39)
    {
      *(v40 + 32) = v57;
      v42 = v59;
LABEL_12:

      v53 = v56;
      goto LABEL_13;
    }

    *(v40 + 32) = v59;
LABEL_11:
    v42 = v57;
    goto LABEL_12;
  }

  v43 = sub_20C133E44();
  v45 = sub_20BEB1778(v43, v44);
  v47 = v46;
  v48 = ~v46;

  v49 = sub_20C133FF4();
  sub_20B584078(v49, v50, v51);
  if (v48 && (v47 & 1) != 0 && ((1 << v45) & 0x1DD) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F580;
    *(v41 + 32) = v36;

    v36 = v56;
    v53 = v57;
    goto LABEL_13;
  }

  if ((v39 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F580;
    *(v41 + 32) = v59;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C151490;
  v52 = v56;
  *(v41 + 32) = v57;
  *(v41 + 40) = v52;
  v53 = v59;
LABEL_13:

  return v41;
}

uint64_t sub_20BDC4010(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v63 = a1;
  v64 = a2;
  v58 = a4;
  v5 = sub_20C134014();
  v6 = *(v5 - 8);
  v66 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v59 = sub_20C138D34();
  v57 = v9;
  v10 = sub_20C13C914();
  v65 = objc_opt_self();
  v11 = [v65 smm:v10 systemImageNamed:?];

  v12 = swift_allocObject();
  *(v12 + 24) = &off_2822EA1C0;
  *(v12 + 32) = &off_2822EA060;
  swift_unknownObjectWeakInit();
  v13 = *(v6 + 16);
  v61 = v6 + 16;
  v62 = v13;
  v14 = v64;
  v13(v8, v64, v5);
  v69 = *(v6 + 80);
  v15 = (v69 + 24) & ~v69;
  v60 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = *(v6 + 32);
  v67 = v6 + 32;
  v68 = v17;
  v17(v16 + v15, v8, v5);
  v59 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v18 = sub_20C138D34();
  v56 = v19;
  v57 = v18;
  v20 = sub_20C13C914();
  v55 = [v65 smm:v20 systemImageNamed:?];

  v21 = swift_allocObject();
  *(v21 + 24) = &off_2822EA1C0;
  *(v21 + 32) = &off_2822EA060;
  swift_unknownObjectWeakInit();
  v22 = v62;
  v62(v8, v14, v5);
  v23 = v60;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v25 = v5;
  v68(v24 + v23, v8, v5);
  v57 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v56 = sub_20C138D34();
  v26 = sub_20C13C914();
  v27 = [v65 systemImageNamed_];

  v28 = swift_allocObject();
  *(v28 + 24) = &off_2822EA1C0;
  *(v28 + 32) = &off_2822EA060;
  swift_unknownObjectWeakInit();
  v29 = v64;
  v22(v8, v64, v5);
  v30 = v60;
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  v68(v31 + v30, v8, v5);
  v56 = sub_20C13D624();
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_20C138D34();
  v32 = sub_20C13C914();
  v33 = [v65 systemImageNamed_];

  v34 = swift_allocObject();
  *(v34 + 24) = &off_2822EA1C0;
  *(v34 + 32) = &off_2822EA060;
  swift_unknownObjectWeakInit();
  v62(v8, v29, v5);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v68(v35 + v30, v8, v25);
  v36 = sub_20C13D624();
  v37 = sub_20C133E44();
  v39 = sub_20BEA9320(v37, v38);

  if (v58 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v40 = swift_allocObject();
    v41 = v40;
    *(v40 + 16) = xmmword_20C14F580;
    if (v39)
    {
      *(v40 + 32) = v57;
      v42 = v59;
LABEL_12:

      v53 = v56;
      goto LABEL_13;
    }

    *(v40 + 32) = v59;
LABEL_11:
    v42 = v57;
    goto LABEL_12;
  }

  v43 = sub_20C133E44();
  v45 = sub_20BEB1784(v43, v44);
  v47 = v46;
  v48 = ~v46;

  v49 = sub_20C133FF4();
  sub_20B584078(v49, v50, v51);
  if (v48 && (v47 & 1) != 0 && ((1 << v45) & 0x1DD) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F580;
    *(v41 + 32) = v36;

    v36 = v56;
    v53 = v57;
    goto LABEL_13;
  }

  if ((v39 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F580;
    *(v41 + 32) = v59;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C151490;
  v52 = v56;
  *(v41 + 32) = v57;
  *(v41 + 40) = v52;
  v53 = v59;
LABEL_13:

  return v41;
}