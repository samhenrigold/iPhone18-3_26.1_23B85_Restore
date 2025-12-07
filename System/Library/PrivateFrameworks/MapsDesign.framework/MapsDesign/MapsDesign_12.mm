uint64_t AdvisoryViewModel.init(image:text:showMoreButton:interactionEnabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 25) = a5;
  return result;
}

uint64_t AdvisoryViewModel.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    sub_213F4F8A0();
    v3 = v2;
    sub_213F4F620();
  }

  else
  {
    sub_213F4F8A0();
  }

  sub_213F4F2C0();
  sub_213F4F8A0();
  return sub_213F4F8A0();
}

uint64_t AdvisoryViewModel.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  sub_213F4F8A0();
  if (v1)
  {
    v2 = v1;
    sub_213F4F620();
  }

  sub_213F4F2C0();
  sub_213F4F8A0();
  sub_213F4F8A0();
  return sub_213F4F8C0();
}

uint64_t sub_213F20CC0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_213F4F880();
  AdvisoryViewModel.hash(into:)(v5);
  return sub_213F4F8C0();
}

uint64_t sub_213F20D28(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v4 = *(v1 + 25);
  v7 = *v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_213F4F880();
  AdvisoryViewModel.hash(into:)(v6);
  return sub_213F4F8C0();
}

uint64_t RoutePlanningCellPrimaryActionStyle.axIDString.getter()
{
  v1 = *v0;
  v2 = 1701736270;
  v3 = 0x6F526D6F74737543;
  v4 = 0x7261685365646952;
  if (v1 != 4)
  {
    v4 = 0x747475426F666E49;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 28487;
  if (v1 != 1)
  {
    v5 = 0x7370657453;
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

uint64_t RoutePlanningCellPrimaryActionStyle.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

uint64_t RoutePlanningCellViewModel.routeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213F4CB40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void RoutePlanningCellViewModel.hash(into:)(uint64_t a1)
{
  v3 = sub_213F4CA10();
  v30 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  sub_213F4CB40();
  sub_213F39194(&qword_281188810, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_213F4F1B0();
  v28 = type metadata accessor for RoutePlanningCellViewModel(0);
  v29 = v1;
  v9 = (v1 + *(v28 + 20));
  v10 = *v9;
  v27 = v9[1];
  v11 = *(v10 + 16);
  v31 = a1;
  MEMORY[0x216052C90](v11);
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = *(v30 + 16);
    v14 = v10 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v15 = *(v30 + 72);
    v16 = (v30 + 8);
    do
    {
      v13(v8, v14, v3);
      sub_213F39194(&qword_27C8F9F90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
      sub_213F4F1B0();
      (*v16)(v8, v3);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  v17 = v27;
  v18 = v31;
  MEMORY[0x216052C90](*(v27 + 16));
  v19 = *(v17 + 16);
  if (v19)
  {
    v20 = *(v30 + 16);
    v21 = v17 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v22 = *(v30 + 72);
    v23 = (v30 + 8);
    do
    {
      v20(v6, v21, v3);
      sub_213F39194(&qword_27C8F9F90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
      sub_213F4F1B0();
      (*v23)(v6, v3);
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  v25 = v28;
  v24 = v29;
  sub_213F389D8(v18, *(v29 + *(v28 + 24)), *(v29 + *(v28 + 24) + 8));
  sub_213F389D8(v18, *(v24 + v25[7]), *(v24 + v25[7] + 8));
  MEMORY[0x216052C90](*(v24 + v25[8]));
  sub_213F4F8A0();
  sub_213F4F8A0();
  sub_213F388D8(v18, *(v24 + v25[11]));
}

uint64_t RoutePlanningCellViewModel.hashValue.getter()
{
  sub_213F4F880();
  RoutePlanningCellViewModel.hash(into:)(v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F212A8()
{
  sub_213F4F880();
  RoutePlanningCellViewModel.hash(into:)(v1);
  return sub_213F4F8C0();
}

uint64_t sub_213F212EC(uint64_t a1)
{
  sub_213F4F880();
  RoutePlanningCellViewModel.hash(into:)(v2);
  return sub_213F4F8C0();
}

uint64_t sub_213F2132C@<X0>(uint64_t a1@<X8>)
{
  v203 = a1;
  v178 = sub_213F4D470();
  MEMORY[0x28223BE20](v178);
  v180 = (&v167 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC538, &qword_213F64480);
  MEMORY[0x28223BE20](v2 - 8);
  v177 = (&v167 - v3);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC540, &qword_213F64488);
  MEMORY[0x28223BE20](v176);
  v179 = &v167 - v4;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC548, &qword_213F64490);
  MEMORY[0x28223BE20](v183);
  v184 = &v167 - v5;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC550, &qword_213F64498);
  MEMORY[0x28223BE20](v202);
  v185 = &v167 - v6;
  v174 = sub_213F4EA00();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v171 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC558, &qword_213F644A0);
  MEMORY[0x28223BE20](v172);
  v175 = (&v167 - v8);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC560, &qword_213F644A8);
  MEMORY[0x28223BE20](v181);
  v170 = &v167 - v9;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC568, &qword_213F644B0);
  v10 = MEMORY[0x28223BE20](v186);
  v169 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v168 = &v167 - v12;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC570, &qword_213F644B8);
  MEMORY[0x28223BE20](v201);
  v200 = &v167 - v13;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC578, &qword_213F644C0);
  MEMORY[0x28223BE20](v197);
  v198 = &v167 - v14;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC580, &unk_213F644C8);
  MEMORY[0x28223BE20](v199);
  v187 = &v167 - v15;
  v195 = sub_213F4CEA0();
  v194 = *(v195 - 8);
  v16 = MEMORY[0x28223BE20](v195);
  v192 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v193 = &v167 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v19 - 8);
  v167 = &v167 - v20;
  v189 = sub_213F4D290();
  v188 = *(v189 - 8);
  v21 = MEMORY[0x28223BE20](v189);
  v23 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v167 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v167 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v167 - v30;
  v32 = sub_213F4CB60();
  MEMORY[0x28223BE20](v32 - 8);
  v33 = sub_213F4F210();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v167 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v167 - v38;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC588, &qword_213F644D8);
  MEMORY[0x28223BE20](v190);
  v191 = &v167 - v40;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC590, &qword_213F644E0);
  MEMORY[0x28223BE20](v196);
  v182 = &v167 - v41;
  v42 = type metadata accessor for RoutePlanningCellPrimaryActionLabel(0);
  v43 = *(v204 + *(v42 + 24));
  if (v43 == 5)
  {
    sub_213F4E9F0();
    v58 = v173;
    v59 = v171;
    v60 = v174;
    (*(v173 + 104))(v171, *MEMORY[0x277CE0FE0], v174);
    v61 = sub_213F4EA40();

    (*(v58 + 8))(v59, v60);
    v62 = sub_213F4E1C0();
    KeyPath = swift_getKeyPath();
    v64 = v175;
    v65 = (v175 + *(v172 + 36));
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5B8, &unk_213F644F8) + 28);
    sub_213F4DA70();
    v67 = sub_213F4DA90();
    (*(*(v67 - 8) + 56))(v65 + v66, 0, 1, v67);
    *v65 = swift_getKeyPath();
    *v64 = v61;
    v64[1] = KeyPath;
    v68 = v64;
    v64[2] = v62;
    v69 = v193;
    sub_213EA8894(v193);
    v70 = v194;
    v71 = v192;
    v72 = v195;
    (*(v194 + 104))(v192, *MEMORY[0x277CDF3C0], v195);
    LOBYTE(v61) = sub_213F4CE90();
    v73 = *(v70 + 8);
    v73(v71, v72);
    v73(v69, v72);
    if (v61)
    {
      v74 = sub_213F4E8F0();
    }

    else
    {
      v74 = sub_213F4E8B0();
    }

    v154 = v74;
    v150 = v200;
    v151 = v187;
    v155 = v186;
    v156 = v168;
    v157 = v170;
    v158 = v169;
    sub_213DE2B44(v68, v170, &qword_27C8FC558, &qword_213F644A0);
    *(v157 + *(v181 + 36)) = v154;
    sub_213F4EEE0();
    sub_213F4D0C0();
    sub_213DE2B44(v157, v158, &qword_27C8FC560, &qword_213F644A8);
    v159 = (v158 + *(v155 + 36));
    v160 = v209;
    *v159 = v208;
    v159[1] = v160;
    v159[2] = v210;
    v161 = &qword_27C8FC568;
    v162 = &qword_213F644B0;
    sub_213DE2B44(v158, v156, &qword_27C8FC568, &qword_213F644B0);
    sub_213DE3164(v156, v198, &qword_27C8FC568, &qword_213F644B0);
    swift_storeEnumTagMultiPayload();
    sub_213F3C6EC(&qword_281182ED0, &qword_27C8FC590, &qword_213F644E0, sub_213F3A528);
    v163 = v156;
LABEL_37:
    sub_213F3A5E0();
    sub_213F4DBA0();
    sub_213DE3164(v151, v150, &qword_27C8FC580, &unk_213F644C8);
    swift_storeEnumTagMultiPayload();
    sub_213F3A470();
    sub_213F3C6EC(&qword_27C8FC5C0, &qword_27C8FC550, &qword_213F64498, sub_213F3A300);
    sub_213F4DBA0();
    sub_213DE36FC(v151, &qword_27C8FC580, &unk_213F644C8);
    return sub_213DE36FC(v163, v161, v162);
  }

  v44 = v42;
  v181 = *(v42 + 24);
  if (v43 == 4)
  {
    sub_213F4F200();
    (*(v34 + 16))(v37, v39, v33);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v45 = qword_281182518;
    sub_213F4CB50();
    v46 = sub_213F4F260();
    v48 = v47;
    (*(v34 + 8))(v39, v33);
    *&v208 = v46;
    *(&v208 + 1) = v48;
    sub_213DBC9EC();
    v49 = sub_213F4E310();
    v51 = v50;
    v53 = v52;
    sub_213DBBD08(v31);
    sub_213F4D280();
    v54 = sub_213F4D270();
    v55 = *(v188 + 8);
    v56 = v189;
    v55(v29, v189);
    v55(v31, v56);
    if (v54)
    {
      sub_213F4E0D0();
      v57 = v167;
    }

    else
    {
      v101 = sub_213F4E0F0();
      v57 = v167;
      (*(*(v101 - 8) + 56))(v167, 1, 1, v101);
      sub_213F4E190();
      sub_213DE36FC(v57, &qword_27C8F7668, &qword_213F52190);
    }

    v102 = sub_213F4E2E0();
    v104 = v103;
    v106 = v105;

    sub_213DBCA40(v49, v51, v53 & 1);

    v107 = *MEMORY[0x277CE09A0];
    v108 = sub_213F4E0F0();
    v109 = *(v108 - 8);
    (*(v109 + 104))(v57, v107, v108);
    (*(v109 + 56))(v57, 0, 1, v108);
    v110 = sub_213F4E290();
    v112 = v111;
    LOBYTE(v107) = v113;
    sub_213DBCA40(v102, v104, v106 & 1);

    sub_213DE36FC(v57, &qword_27C8F7668, &qword_213F52190);
    sub_213F4E110();
    v114 = sub_213F4E2A0();
    v116 = v115;
    v118 = v117;
    sub_213DBCA40(v110, v112, v107 & 1);

    v119 = v193;
    sub_213EA8894(v193);
    v120 = v194;
    v121 = v192;
    v122 = v195;
    (*(v194 + 104))(v192, *MEMORY[0x277CDF3C0], v195);
    LOBYTE(v107) = sub_213F4CE90();
    v123 = *(v120 + 8);
    v123(v121, v122);
    v123(v119, v122);
    if (v107)
    {
      v124 = sub_213F4E8B0();
    }

    else
    {
      v124 = sub_213F4E8F0();
    }

    *&v208 = v124;
    v125 = sub_213F4E2B0();
    v127 = v126;
    v129 = v128;
    v131 = v130;
    sub_213DBCA40(v114, v116, v118 & 1);

    v132 = sub_213F4E050();
    sub_213F4CDA0();
    v134 = v133;
    v136 = v135;
    v138 = v137;
    v140 = v139;
    v141 = v129 & 1;
    LOBYTE(v206) = v129 & 1;
    v205 = 0;
    v142 = sub_213F4EEE0();
    v144 = v143;
    v145 = v191;
    v146 = &v191[*(v190 + 36)];
    v147 = v204;
    sub_213F22B50(v204, v146);
    v148 = (v146 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8430, &qword_213F53C38) + 36));
    *v148 = v142;
    v148[1] = v144;
    *v145 = v125;
    *(v145 + 1) = v127;
    v145[16] = v141;
    *(v145 + 3) = v131;
    v145[32] = v132;
    *(v145 + 5) = v134;
    *(v145 + 6) = v136;
    *(v145 + 7) = v138;
    *(v145 + 8) = v140;
    v145[72] = 0;
    v149 = *(v147 + v181);
    if (v149 > 2)
    {
      v150 = v200;
      v151 = v187;
      if (v149 == 3)
      {
        v153 = 0x6F526D6F74737543;
        v152 = 0xEB00000000657475;
      }

      else if (v149 == 4)
      {
        v153 = 0x7261685365646952;
        v152 = 0xED00006E65704F65;
      }

      else
      {
        v153 = 0x747475426F666E49;
        v152 = 0xEA00000000006E6FLL;
      }
    }

    else
    {
      v150 = v200;
      v151 = v187;
      if (*(v147 + v181))
      {
        if (v149 == 1)
        {
          v152 = 0xE200000000000000;
          v153 = 28487;
        }

        else
        {
          v152 = 0xE500000000000000;
          v153 = 0x7370657453;
        }
      }

      else
      {
        v152 = 0xE400000000000000;
        v153 = 1701736270;
      }
    }

    *&v208 = v153;
    *(&v208 + 1) = v152;

    MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);

    sub_213F3A528();
    v163 = v182;
    v164 = v191;
    sub_213F4E6D0();

    sub_213DE36FC(v164, &qword_27C8FC588, &qword_213F644D8);
    v161 = &qword_27C8FC590;
    v162 = &qword_213F644E0;
    sub_213DE3164(v163, v198, &qword_27C8FC590, &qword_213F644E0);
    swift_storeEnumTagMultiPayload();
    sub_213F3C6EC(&qword_281182ED0, &qword_27C8FC590, &qword_213F644E0, sub_213F3A528);
    goto LABEL_37;
  }

  v75 = sub_213F4DA40();
  v76 = v177;
  *v177 = v75;
  *(v76 + 8) = 0;
  *(v76 + 16) = 1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC598, &qword_213F644E8);
  v78 = v204;
  sub_213F22EA0(v204, v76 + *(v77 + 44));
  v197 = *(v44 + 20);
  sub_213DBBD08(v26);
  sub_213F4D280();
  sub_213F4D270();
  v79 = *(v188 + 8);
  v80 = v189;
  v79(v31, v189);
  v79(v26, v80);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v81 = v179;
  sub_213DE2B44(v76, v179, &qword_27C8FC538, &qword_213F64480);
  v82 = (v81 + *(v176 + 36));
  v83 = v209;
  *v82 = v208;
  v82[1] = v83;
  v82[2] = v210;
  v198 = sub_213F4EEE0();
  v85 = v84;
  v86 = sub_213F26EAC(v78);
  sub_213DBBD08(v23);
  sub_213F4D280();
  v87 = sub_213F4D270();
  v79(v31, v80);
  v79(v23, v80);
  if (v87)
  {
    v88 = 7.0;
  }

  else
  {
    v88 = 14.0;
  }

  v89 = v184;
  v90 = &v184[*(v183 + 36)];
  v91 = *(v178 + 20);
  v92 = *MEMORY[0x277CE0118];
  v93 = sub_213F4D950();
  v94 = v180;
  (*(*(v93 - 8) + 104))(v180 + v91, v92, v93);
  *v94 = v88;
  v94[1] = v88;
  sub_213DEEF8C(v94, v90);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8410, &qword_213F644F0);
  *(v90 + *(v95 + 52)) = v86;
  *(v90 + *(v95 + 56)) = 256;
  v96 = (v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8430, &qword_213F53C38) + 36));
  *v96 = v198;
  v96[1] = v85;
  sub_213DE2B44(v81, v89, &qword_27C8FC540, &qword_213F64488);
  v97 = *(v78 + v181);
  if (v97 > 2)
  {
    v98 = v200;
    if (v97 == 3)
    {
      v100 = 0x6F526D6F74737543;
      v99 = 0xEB00000000657475;
    }

    else if (v97 == 4)
    {
      v100 = 0x7261685365646952;
      v99 = 0xED00006E65704F65;
    }

    else
    {
      v100 = 0x747475426F666E49;
      v99 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    v98 = v200;
    if (*(v78 + v181))
    {
      if (v97 == 1)
      {
        v99 = 0xE200000000000000;
        v100 = 28487;
      }

      else
      {
        v99 = 0xE500000000000000;
        v100 = 0x7370657453;
      }
    }

    else
    {
      v99 = 0xE400000000000000;
      v100 = 1701736270;
    }
  }

  v206 = v100;
  v207 = v99;

  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);

  sub_213F3A300();
  v166 = v185;
  sub_213F4E6D0();

  sub_213DE36FC(v89, &qword_27C8FC548, &qword_213F64490);
  sub_213DE3164(v166, v98, &qword_27C8FC550, &qword_213F64498);
  swift_storeEnumTagMultiPayload();
  sub_213F3A470();
  sub_213F3C6EC(&qword_27C8FC5C0, &qword_27C8FC550, &qword_213F64498, sub_213F3A300);
  sub_213F4DBA0();
  return sub_213DE36FC(v166, &qword_27C8FC550, &qword_213F64498);
}

uint64_t sub_213F22B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v33 = sub_213F4CEA0();
  v2 = *(v33 - 8);
  v3 = MEMORY[0x28223BE20](v33);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = sub_213F4D290();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = sub_213F4D470();
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for RoutePlanningCellPrimaryActionLabel(0);
  sub_213DBBD08(v13);
  sub_213F4D280();
  v18 = sub_213F4D270();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v19(v13, v7);
  if (v18)
  {
    v20 = 7.0;
  }

  else
  {
    v20 = 14.0;
  }

  v21 = *(v15 + 28);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_213F4D950();
  (*(*(v23 - 8) + 104))(v17 + v21, v22, v23);
  *v17 = v20;
  v17[1] = v20;
  sub_213EA8894(v6);
  v25 = v32;
  v24 = v33;
  (*(v2 + 104))(v32, *MEMORY[0x277CDF3C0], v33);
  LOBYTE(v22) = sub_213F4CE90();
  v26 = *(v2 + 8);
  v26(v25, v24);
  v26(v6, v24);
  if (v22)
  {
    v27 = sub_213F4E8F0();
  }

  else
  {
    v27 = sub_213F4E8B0();
  }

  v28 = v27;
  v29 = v34;
  sub_213DEEF8C(v17, v34);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8410, &qword_213F644F0);
  *(v29 + *(result + 52)) = v28;
  *(v29 + *(result + 56)) = 256;
  return result;
}

uint64_t sub_213F22EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v287 = a2;
  *&v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5C8, &qword_213F64570);
  MEMORY[0x28223BE20](v273);
  *(&v273 + 1) = &v224 - v3;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5D0, &qword_213F64578);
  MEMORY[0x28223BE20](v286);
  v274 = (&v224 - v4);
  v5 = sub_213F4CEA0();
  v258 = *(v5 - 8);
  v259 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v257 = &v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v256 = &v224 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5D8, &qword_213F64580);
  v262 = *(v9 - 8);
  v263 = v9;
  MEMORY[0x28223BE20](v9);
  v261 = &v224 - v10;
  v271 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5E0, &qword_213F64588);
  v11 = MEMORY[0x28223BE20](v271);
  v260 = &v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v224 - v13;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5E8, &qword_213F64590);
  MEMORY[0x28223BE20](v279);
  v16 = &v224 - v15;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5F0, &qword_213F64598);
  MEMORY[0x28223BE20](v283);
  v285 = &v224 - v17;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC5F8, &qword_213F645A0);
  MEMORY[0x28223BE20](v276);
  v277 = &v224 - v18;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC600, &qword_213F645A8);
  MEMORY[0x28223BE20](v284);
  v278 = &v224 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC608, &qword_213F645B0);
  v249 = *(v20 - 8);
  v250 = v20;
  MEMORY[0x28223BE20](v20);
  v264 = &v224 - v21;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC610, &qword_213F645B8);
  MEMORY[0x28223BE20](v248);
  v253 = &v224 - v22;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC618, &qword_213F645C0);
  MEMORY[0x28223BE20](v251);
  v254 = &v224 - v23;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC620, &qword_213F645C8);
  v24 = MEMORY[0x28223BE20](v269);
  v252 = &v224 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v255 = &v224 - v26;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC628, &qword_213F645D0);
  MEMORY[0x28223BE20](v267);
  v268 = &v224 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v28 - 8);
  v270 = &v224 - v29;
  v30 = sub_213F4D290();
  v281 = *(v30 - 8);
  v282 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v224 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v246 = &v224 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v238 = &v224 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v247 = &v224 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v244 = &v224 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v272 = &v224 - v43;
  MEMORY[0x28223BE20](v42);
  v280 = &v224 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC630, &qword_213F645D8);
  v230 = *(v45 - 8);
  v231 = v45;
  MEMORY[0x28223BE20](v45);
  v228 = &v224 - v46;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC638, &qword_213F645E0);
  v227 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v226 = &v224 - v47;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC640, &qword_213F645E8);
  MEMORY[0x28223BE20](v225);
  v233 = &v224 - v48;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC648, &qword_213F645F0);
  MEMORY[0x28223BE20](v232);
  v235 = &v224 - v49;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC650, &qword_213F645F8);
  MEMORY[0x28223BE20](v234);
  v237 = &v224 - v50;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC658, &qword_213F64600);
  MEMORY[0x28223BE20](v236);
  v242 = &v224 - v51;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC660, &qword_213F64608);
  MEMORY[0x28223BE20](v240);
  v243 = &v224 - v52;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC668, &qword_213F64610);
  v53 = MEMORY[0x28223BE20](v265);
  v241 = &v224 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v245 = &v224 - v55;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC670, &qword_213F64618);
  MEMORY[0x28223BE20](v275);
  v266 = &v224 - v56;
  v57 = sub_213F4CB60();
  MEMORY[0x28223BE20](v57 - 8);
  v58 = sub_213F4F210();
  v59 = *(v58 - 8);
  v60 = MEMORY[0x28223BE20](v58);
  v62 = &v224 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v64 = &v224 - v63;
  v65 = type metadata accessor for RoutePlanningCellPrimaryActionLabel(0);
  v66 = *(v65 + 24);
  v288 = a1;
  v67 = *(a1 + v66);
  if (v67 == 3)
  {
    v278 = v33;
    v279 = v14;
    v239 = v65;
    v277 = sub_213F4EA10();
    sub_213F4EED0();
    sub_213F4D0C0();
    v93 = BYTE8(v313);
    v275 = v314;
    v276 = v313;
    v94 = BYTE8(v314);
    v270 = *(&v315 + 1);
    v272 = v315;
    LODWORD(v269) = sub_213F4E070();
    sub_213F4CDA0();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v102 = v101;
    LOBYTE(v293) = v93;
    LOBYTE(v289) = v94;
    LOBYTE(v309[0]) = 0;
    v268 = sub_213F4E0E0();
    KeyPath = swift_getKeyPath();
    v104 = v256;
    sub_213EA8894(v256);
    v106 = v257;
    v105 = v258;
    v107 = v259;
    (*(v258 + 104))(v257, *MEMORY[0x277CDF3C0], v259);
    v108 = sub_213F4CE90();
    v109 = *(v105 + 8);
    v109(v106, v107);
    v109(v104, v107);
    if (v108)
    {
      v110 = sub_213F4E8F0();
    }

    else
    {
      v110 = sub_213F4E8B0();
    }

    v114 = v278;
    *&v289 = v277;
    *(&v289 + 1) = v276;
    LOBYTE(v290[0]) = v93;
    *(&v290[0] + 1) = v275;
    LOBYTE(v290[1]) = v94;
    *(&v290[1] + 1) = v272;
    *&v290[2] = v270;
    BYTE8(v290[2]) = v269;
    *&v290[3] = v96;
    *(&v290[3] + 1) = v98;
    *&v290[4] = v100;
    *(&v290[4] + 1) = v102;
    LOBYTE(v290[5]) = 0;
    *(&v290[5] + 1) = KeyPath;
    *&v290[6] = v268;
    *(&v290[6] + 1) = v110;
    sub_213F4E180();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC678, &qword_213F64620);
    sub_213F3A8A4();
    v115 = v261;
    sub_213F4E370();
    v297 = v290[3];
    v298 = v290[4];
    v299 = v290[5];
    v300 = v290[6];
    v293 = v289;
    v294 = v290[0];
    v295 = v290[1];
    v296 = v290[2];
    sub_213DE36FC(&v293, &qword_27C8FC678, &qword_213F64620);
    sub_213DBBD08(v114);
    v116 = v280;
    sub_213F4D280();
    sub_213F4D270();
    v117 = *(v281 + 1);
    v118 = v116;
    v119 = v282;
    v117(v118, v282);
    v117(v114, v119);
    sub_213F4EEE0();
    sub_213F4D0C0();
    v120 = v260;
    (*(v262 + 32))(v260, v115, v263);
    v121 = (v120 + *(v271 + 36));
    v122 = v290[0];
    *v121 = v289;
    v121[1] = v122;
    v121[2] = v290[1];
    v112 = &qword_27C8FC5E0;
    v113 = &qword_213F64588;
    v123 = v279;
    sub_213DE2B44(v120, v279, &qword_27C8FC5E0, &qword_213F64588);
    sub_213DE3164(v123, *(&v273 + 1), &qword_27C8FC5E0, &qword_213F64588);
    swift_storeEnumTagMultiPayload();
    sub_213F3A7DC();
    v124 = v274;
    sub_213F4DBA0();
    v125 = &qword_27C8FC5D0;
    v126 = &qword_213F64578;
    sub_213DE3164(v124, v285, &qword_27C8FC5D0, &qword_213F64578);
    goto LABEL_31;
  }

  if (v67 != 2)
  {
    if (v67 != 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_213F3A7DC();
      v111 = v274;
      sub_213F4DBA0();
      v112 = &qword_27C8FC5D0;
      v113 = &qword_213F64578;
      sub_213DE3164(v111, v285, &qword_27C8FC5D0, &qword_213F64578);
      swift_storeEnumTagMultiPayload();
      sub_213F3AB24();
      sub_213F3B3D8();
      sub_213F4DBA0();
      v90 = v111;
LABEL_32:
      v91 = v112;
      v92 = v113;
      return sub_213DE36FC(v90, v91, v92);
    }

    v239 = v65;
    sub_213F4F200();
    (*(v59 + 16))(v62, v64, v58);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v68 = qword_281182518;
    sub_213F4CB50();
    v69 = sub_213F4F260();
    v71 = v70;
    (*(v59 + 8))(v64, v58);
    v72 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v72 = v69;
    }

    v73 = 7;
    if (((v71 >> 60) & ((v69 & 0x800000000000000) == 0)) != 0)
    {
      v73 = 11;
    }

    v74 = sub_213F38C4C(0xFuLL, v73 | (v72 << 16), v69, v71);
    v75 = v270;
    if (v74 <= 3)
    {
      *&v293 = v69;
      *(&v293 + 1) = v71;
      sub_213DBC9EC();
      v127 = sub_213F4E310();
      v129 = v128;
      v131 = v130;
      v132 = v288 + *(v239 + 20);
      v133 = v280;
      *&v273 = v134;
      *(&v273 + 1) = v132;
      sub_213DBBD08(v280);
      v135 = v272;
      sub_213F4D280();
      LOBYTE(v132) = sub_213F4D270();
      v137 = (v281 + 8);
      v136 = *(v281 + 1);
      v138 = v135;
      v139 = v282;
      v136(v138, v282);
      v281 = v137;
      v274 = v136;
      v136(v133, v139);
      if (v132)
      {
        sub_213F4E0D0();
      }

      else
      {
        v167 = sub_213F4E0F0();
        (*(*(v167 - 8) + 56))(v75, 1, 1, v167);
        sub_213F4E190();
        sub_213DE36FC(v75, &qword_27C8F7668, &qword_213F52190);
      }

      v168 = sub_213F4E2E0();
      v170 = v169;
      v172 = v171;
      v173 = v129;
      v175 = v174;
      v271 = v174;

      sub_213DBCA40(v127, v173, v131 & 1);

      v176 = swift_getKeyPath();
      *&v293 = v168;
      *(&v293 + 1) = v170;
      v172 &= 1u;
      LOBYTE(v294) = v172;
      *(&v294 + 1) = v175;
      *&v295 = v176;
      *(&v295 + 1) = 1;
      LOBYTE(v296) = 0;
      v177 = *MEMORY[0x277CE09A0];
      v178 = sub_213F4E0F0();
      v179 = *(v178 - 8);
      v180 = v270;
      (*(v179 + 104))(v270, v177, v178);
      (*(v179 + 56))(v180, 0, 1, v178);
      v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8980, &unk_213F55A40);
      v182 = sub_213E0C270();
      v183 = v228;
      sub_213F4E360();
      sub_213DE36FC(v180, &qword_27C8F7668, &qword_213F52190);
      sub_213DBCA40(v168, v170, v172);

      sub_213F4E110();
      *&v293 = v181;
      *(&v293 + 1) = v182;
      swift_getOpaqueTypeConformance2();
      v184 = v226;
      v185 = v231;
      sub_213F4E370();
      (*(v230 + 8))(v183, v185);
      v186 = swift_getKeyPath();
      v187 = v233;
      (*(v227 + 32))(v233, v184, v229);
      v188 = (v187 + *(v225 + 36));
      *v188 = v186;
      v188[1] = 0x3FE999999999999ALL;
      if (*(v288 + *(v239 + 32)) == 1)
      {
        v189 = [objc_opt_self() _carSystemFocusLabelColor];
        v190 = sub_213F4E870();
      }

      else
      {
        v190 = sub_213F4E8F0();
      }

      v191 = v190;
      v192 = v235;
      sub_213DE2B44(v187, v235, &qword_27C8FC640, &qword_213F645E8);
      *(v192 + *(v232 + 36)) = v191;
      v193 = sub_213F4E040();
      v194 = v280;
      sub_213DBBD08(v280);
      v195 = v272;
      sub_213F4D280();
      sub_213F4D270();
      v196 = v195;
      v197 = v282;
      v198 = v274;
      v274(v196, v282);
      v198(v194, v197);
      sub_213F4CDA0();
      v200 = v199;
      v202 = v201;
      v204 = v203;
      v206 = v205;
      v207 = v192;
      v208 = v237;
      sub_213DE2B44(v207, v237, &qword_27C8FC648, &qword_213F645F0);
      v209 = v208 + *(v234 + 36);
      *v209 = v193;
      *(v209 + 8) = v200;
      *(v209 + 16) = v202;
      *(v209 + 24) = v204;
      *(v209 + 32) = v206;
      *(v209 + 40) = 0;
      v210 = v244;
      sub_213DBBD08(v244);
      sub_213F4D280();
      sub_213F4D270();
      v198(v194, v197);
      v198(v210, v197);
      sub_213F4EEE0();
      sub_213F4D4E0();
      v211 = v242;
      sub_213DE2B44(v208, v242, &qword_27C8FC650, &qword_213F645F8);
      v212 = (v211 + *(v236 + 36));
      v213 = v290[4];
      v212[4] = v290[3];
      v212[5] = v213;
      v212[6] = v290[5];
      v214 = v290[0];
      *v212 = v289;
      v212[1] = v214;
      v215 = v290[2];
      v212[2] = v290[1];
      v212[3] = v215;
      v216 = v247;
      sub_213DBBD08(v247);
      sub_213F4D280();
      sub_213F4D270();
      v198(v194, v197);
      v198(v216, v197);
      sub_213F4EEE0();
      sub_213F4D4E0();
      v217 = v243;
      sub_213DE2B44(v211, v243, &qword_27C8FC658, &qword_213F64600);
      v218 = (v217 + *(v240 + 36));
      v219 = v298;
      v218[4] = v297;
      v218[5] = v219;
      v218[6] = v299;
      v220 = v294;
      *v218 = v293;
      v218[1] = v220;
      v221 = v296;
      v218[2] = v295;
      v218[3] = v221;
      v222 = v241;
      sub_213DE2B44(v217, v241, &qword_27C8FC660, &qword_213F64608);
      *(v222 + *(v265 + 36)) = 257;
      v164 = &qword_27C8FC668;
      v165 = &qword_213F64610;
      v166 = v245;
      sub_213DE2B44(v222, v245, &qword_27C8FC668, &qword_213F64610);
      sub_213DE3164(v166, v268, &qword_27C8FC668, &qword_213F64610);
      swift_storeEnumTagMultiPayload();
      sub_213F3AC68();
      sub_213F3B088();
      v123 = v266;
    }

    else
    {

      v76 = v239;
      v77 = v288;
      v78 = v280;
      v274 = (v288 + *(v239 + 20));
      sub_213DBBD08(v280);
      v79 = v272;
      sub_213F4D280();
      v80 = sub_213F4D270();
      v81 = *(v281 + 1);
      v82 = v79;
      v83 = v282;
      v81(v82, v282);
      v281 = v81;
      v81(v78, v83);
      v84 = 0x4000000000000000;
      if (v80)
      {
        v84 = 0;
      }

      *(&v273 + 1) = v84;
      *&v273 = sub_213F4DA40();
      v311 = 0;
      sub_213F24F28(v77, &v293);
      v305 = v295;
      v306 = v296;
      v307 = v297;
      v308 = v298;
      v303 = v293;
      v304 = v294;
      v309[2] = v295;
      v309[3] = v296;
      v309[5] = v298;
      v309[4] = v297;
      v309[0] = v293;
      v309[1] = v294;
      sub_213DE3164(&v303, &v289, &qword_27C8FC6D0, &qword_213F646C8);
      sub_213DE36FC(v309, &qword_27C8FC6D0, &qword_213F646C8);
      *&v310[23] = v304;
      *&v310[87] = v308;
      *&v310[71] = v307;
      *&v310[55] = v306;
      *&v310[39] = v305;
      *&v310[7] = v303;
      v85 = v311;
      if (*(v77 + *(v76 + 32)) == 1)
      {
        v86 = [objc_opt_self() _carSystemFocusLabelColor];
        v87 = sub_213F4E870();
      }

      else
      {
        v87 = sub_213F4E8F0();
      }

      v140 = v87;
      v141 = sub_213F4E040();
      v142 = v280;
      sub_213DBBD08(v280);
      v143 = v272;
      sub_213F4D280();
      sub_213F4D270();
      v144 = v143;
      v145 = v281;
      v146 = v282;
      v281(v144, v282);
      v145(v142, v146);
      sub_213F4CDA0();
      *(&v290[3] + 1) = *&v310[48];
      *(&v290[4] + 1) = *&v310[64];
      *(&v290[5] + 1) = *&v310[80];
      *(v290 + 1) = *v310;
      *(&v290[1] + 1) = *&v310[16];
      v312 = 0;
      v289 = v273;
      LOBYTE(v290[0]) = v85;
      *(&v290[2] + 1) = *&v310[32];
      *&v290[6] = *&v310[95];
      *(&v290[6] + 1) = v140;
      LOBYTE(v291) = v141;
      *(&v291 + 1) = v147;
      *&v292[0] = v148;
      *(&v292[0] + 1) = v149;
      *&v292[1] = v150;
      BYTE8(v292[1]) = 0;
      sub_213F4E180();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6A8, &qword_213F64648);
      sub_213F3B268();
      sub_213F4E370();
      v301 = v291;
      v302[0] = v292[0];
      *(v302 + 9) = *(v292 + 9);
      v297 = v290[3];
      v298 = v290[4];
      v299 = v290[5];
      v300 = v290[6];
      v293 = v289;
      v294 = v290[0];
      v295 = v290[1];
      v296 = v290[2];
      sub_213DE36FC(&v293, &qword_27C8FC6A8, &qword_213F64648);
      v151 = v238;
      sub_213DBBD08(v238);
      sub_213F4D280();
      sub_213F4D270();
      v145(v142, v146);
      v145(v151, v146);
      sub_213F4EEE0();
      sub_213F4D4E0();
      v152 = v253;
      (*(v249 + 32))(v253, v264, v250);
      v153 = (v152 + *(v248 + 36));
      v154 = v318;
      v153[4] = v317;
      v153[5] = v154;
      v153[6] = v319;
      v155 = v314;
      *v153 = v313;
      v153[1] = v155;
      v156 = v316;
      v153[2] = v315;
      v153[3] = v156;
      v157 = v246;
      sub_213DBBD08(v246);
      sub_213F4D280();
      sub_213F4D270();
      v145(v142, v146);
      v145(v157, v146);
      sub_213F4EEE0();
      sub_213F4D4E0();
      v158 = v254;
      sub_213DE2B44(v152, v254, &qword_27C8FC610, &qword_213F645B8);
      v159 = (v158 + *(v251 + 36));
      v160 = v290[4];
      v159[4] = v290[3];
      v159[5] = v160;
      v159[6] = v290[5];
      v161 = v290[0];
      *v159 = v289;
      v159[1] = v161;
      v162 = v290[2];
      v159[2] = v290[1];
      v159[3] = v162;
      v163 = v252;
      sub_213DE2B44(v158, v252, &qword_27C8FC618, &qword_213F645C0);
      *(v163 + *(v269 + 36)) = 257;
      v164 = &qword_27C8FC620;
      v165 = &qword_213F645C8;
      v166 = v255;
      sub_213DE2B44(v163, v255, &qword_27C8FC620, &qword_213F645C8);
      sub_213DE3164(v166, v268, &qword_27C8FC620, &qword_213F645C8);
      swift_storeEnumTagMultiPayload();
      sub_213F3AC68();
      sub_213F3B088();
      v123 = v266;
    }

    sub_213F4DBA0();
    sub_213DE36FC(v166, v164, v165);
    v112 = &qword_27C8FC670;
    v113 = &qword_213F64618;
    sub_213DE3164(v123, v277, &qword_27C8FC670, &qword_213F64618);
    swift_storeEnumTagMultiPayload();
    sub_213F3ABDC();
    sub_213DE3AE4(&qword_27C8FC6C0, &qword_27C8FC5E8, &qword_213F64590, MEMORY[0x277CDD828]);
    v124 = v278;
    sub_213F4DBA0();
    v125 = &qword_27C8FC600;
    v126 = &qword_213F645A8;
    sub_213DE3164(v124, v285, &qword_27C8FC600, &qword_213F645A8);
LABEL_31:
    swift_storeEnumTagMultiPayload();
    sub_213F3AB24();
    sub_213F3B3D8();
    sub_213F4DBA0();
    sub_213DE36FC(v124, v125, v126);
    v90 = v123;
    goto LABEL_32;
  }

  *v16 = sub_213F4E010();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6C8, &qword_213F64660);
  sub_213F25600(v288, &v16[*(v88 + 44)]);
  sub_213DE3164(v16, v277, &qword_27C8FC5E8, &qword_213F64590);
  swift_storeEnumTagMultiPayload();
  sub_213F3ABDC();
  sub_213DE3AE4(&qword_27C8FC6C0, &qword_27C8FC5E8, &qword_213F64590, MEMORY[0x277CDD828]);
  v89 = v278;
  sub_213F4DBA0();
  sub_213DE3164(v89, v285, &qword_27C8FC600, &qword_213F645A8);
  swift_storeEnumTagMultiPayload();
  sub_213F3AB24();
  sub_213F3B3D8();
  sub_213F4DBA0();
  sub_213DE36FC(v89, &qword_27C8FC600, &qword_213F645A8);
  v90 = v16;
  v91 = &qword_27C8FC5E8;
  v92 = &qword_213F64590;
  return sub_213DE36FC(v90, v91, v92);
}

double sub_213F24F28@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v3 - 8);
  v75 = v67 - v4;
  v5 = sub_213F4CB60();
  MEMORY[0x28223BE20](v5 - 8);
  v70 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_213F4F210();
  v7 = *(v68 - 8);
  v8 = MEMORY[0x28223BE20](v68);
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v67 - v11;
  v13 = sub_213F4D290();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v67 - v18;
  v76 = sub_213F4EA10();
  v20 = *(type metadata accessor for RoutePlanningCellPrimaryActionLabel(0) + 20);
  v72 = a1;
  v67[1] = v20;
  sub_213DBBD08(v19);
  sub_213F4D280();
  LOBYTE(a1) = sub_213F4D270();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v71 = v13;
  v69 = v21;
  v21(v19, v13);
  if (a1)
  {
    v22 = sub_213F4E200();
  }

  else
  {
    v22 = sub_213F4E1C0();
  }

  v74 = v22;
  KeyPath = swift_getKeyPath();
  sub_213F4F200();
  v23 = v10;
  v24 = v68;
  (*(v7 + 16))(v23, v12, v68);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v25 = qword_281182518;
  sub_213F4CB50();
  v26 = sub_213F4F260();
  v28 = v27;
  (*(v7 + 8))(v12, v24);
  v84 = v26;
  v85 = v28;
  sub_213DBC9EC();
  v29 = sub_213F4E310();
  v31 = v30;
  v33 = v32;
  sub_213DBBD08(v19);
  sub_213F4D280();
  LOBYTE(v26) = sub_213F4D270();
  v34 = v17;
  v35 = v71;
  v36 = v69;
  v69(v34, v71);
  v36(v19, v35);
  if (v26)
  {
    sub_213F4E200();
  }

  else
  {
    sub_213F4E1E0();
  }

  v72 = sub_213F4E2E0();
  v38 = v37;
  v40 = v39;

  sub_213DBCA40(v29, v31, v33 & 1);

  v41 = *MEMORY[0x277CE09A0];
  v42 = sub_213F4E0F0();
  v43 = *(v42 - 8);
  v44 = v75;
  (*(v43 + 104))(v75, v41, v42);
  (*(v43 + 56))(v44, 0, 1, v42);
  v45 = v72;
  v46 = sub_213F4E290();
  v48 = v47;
  v50 = v49;
  sub_213DBCA40(v45, v38, v40 & 1);

  sub_213DE36FC(v44, &qword_27C8F7668, &qword_213F52190);
  sub_213F4E110();
  v51 = sub_213F4E2A0();
  v53 = v52;
  LOBYTE(v38) = v54;
  v56 = v55;
  sub_213DBCA40(v46, v48, v50 & 1);

  v57 = swift_getKeyPath();
  v58 = swift_getKeyPath();
  v59 = v38 & 1;
  v98 = v38 & 1;
  v96 = 0;
  *&v79 = v51;
  *(&v79 + 1) = v53;
  LOBYTE(v80) = v38 & 1;
  *(&v80 + 1) = *v97;
  DWORD1(v80) = *&v97[3];
  *(&v80 + 1) = v56;
  *&v81 = v57;
  *(&v81 + 1) = 1;
  LOBYTE(v82) = 0;
  DWORD1(v82) = *&v95[3];
  *(&v82 + 1) = *v95;
  *(&v82 + 1) = v58;
  v83 = 0x3FE999999999999ALL;
  v60 = v77;
  v62 = KeyPath;
  v61 = v74;
  *v77 = v76;
  v60[1] = v62;
  v60[2] = v61;
  v63 = v81;
  v64 = v82;
  v60[11] = 0x3FE999999999999ALL;
  *(v60 + 9) = v64;
  *(v60 + 7) = v63;
  v65 = v79;
  *(v60 + 5) = v80;
  *(v60 + 3) = v65;
  v84 = v51;
  v85 = v53;
  v86 = v59;
  *&v87[3] = *&v97[3];
  *v87 = *v97;
  v88 = v56;
  v89 = v57;
  v90 = 1;
  v91 = 0;
  *&v92[3] = *&v95[3];
  *v92 = *v95;
  v93 = v58;
  v94 = 0x3FE999999999999ALL;

  sub_213DE3164(&v79, &v78, &qword_27C8FC6D8, &qword_213F646D0);
  sub_213DE36FC(&v84, &qword_27C8FC6D8, &qword_213F646D0);

  return result;
}

uint64_t sub_213F25600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v192 = a1;
  v188 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v2 - 8);
  v173 = &v148 - v3;
  v4 = sub_213F4CB60();
  MEMORY[0x28223BE20](v4 - 8);
  v167 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_213F4F210();
  v166 = *(v168 - 8);
  v6 = MEMORY[0x28223BE20](v168);
  v164 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v165 = &v148 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6E0, &qword_213F646D8);
  v179 = *(v9 - 8);
  v180 = v9;
  MEMORY[0x28223BE20](v9);
  v178 = &v148 - v10;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6E8, &qword_213F646E0);
  MEMORY[0x28223BE20](v177);
  v183 = &v148 - v11;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6F0, &qword_213F646E8);
  MEMORY[0x28223BE20](v182);
  v185 = &v148 - v12;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC6F8, &qword_213F646F0);
  v13 = MEMORY[0x28223BE20](v184);
  v187 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v181 = &v148 - v16;
  MEMORY[0x28223BE20](v15);
  v186 = &v148 - v17;
  v191 = sub_213F4D290();
  v193 = *(v191 - 8);
  v18 = MEMORY[0x28223BE20](v191);
  v176 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v174 = &v148 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v163 = (&v148 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v190 = &v148 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v148 - v26;
  v28 = sub_213F4CEA0();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v148 - v33;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC700, &qword_213F646F8);
  v152 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v151 = &v148 - v35;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC708, &qword_213F64700);
  MEMORY[0x28223BE20](v150);
  v155 = &v148 - v36;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC710, &qword_213F64708);
  MEMORY[0x28223BE20](v154);
  v157 = &v148 - v37;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC718, &qword_213F64710);
  v38 = MEMORY[0x28223BE20](v156);
  v175 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v153 = &v148 - v41;
  MEMORY[0x28223BE20](v40);
  v189 = &v148 - v42;
  v149 = sub_213F4DA40();
  LOBYTE(v194) = 0;
  sub_213F26914(&v208);
  v244 = v210;
  v245 = v211;
  v246 = v212;
  v247 = v213;
  v242 = v208;
  v243 = v209;
  v248[2] = v210;
  v248[3] = v211;
  v248[4] = v212;
  v248[5] = v213;
  v248[0] = v208;
  v248[1] = v209;
  sub_213DE3164(&v242, &v203, &qword_27C8FC6D0, &qword_213F646C8);
  sub_213DE36FC(v248, &qword_27C8FC6D0, &qword_213F646C8);
  *&v219[39] = v244;
  *&v219[55] = v245;
  *&v219[71] = v246;
  *&v219[87] = v247;
  *&v219[7] = v242;
  *&v219[23] = v243;
  v43 = v194;
  v44 = sub_213F4E040();
  sub_213F4CDA0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v220 = 0;
  sub_213EA8894(v34);
  v53 = *(v29 + 104);
  v159 = *MEMORY[0x277CDF3C0];
  v160 = v29 + 104;
  v158 = v53;
  v53(v32);
  v54 = sub_213F4CE90();
  v55 = *(v29 + 8);
  v170 = v32;
  v55(v32, v28);
  v169 = v34;
  v171 = v29 + 8;
  v172 = v28;
  v161 = v55;
  v55(v34, v28);
  if (v54)
  {
    v56 = sub_213F4E8F0();
  }

  else
  {
    v56 = sub_213F4E8B0();
  }

  *(&v204[3] + 1) = *&v219[48];
  *(&v204[4] + 1) = *&v219[64];
  *(&v204[5] + 1) = *&v219[80];
  *(v204 + 1) = *v219;
  *(&v204[1] + 1) = *&v219[16];
  *&v203 = v149;
  *(&v203 + 1) = 0x4000000000000000;
  LOBYTE(v204[0]) = v43;
  *&v204[6] = *&v219[95];
  *(&v204[2] + 1) = *&v219[32];
  BYTE8(v204[6]) = v44;
  *&v205 = v46;
  *(&v205 + 1) = v48;
  *&v206 = v50;
  *(&v206 + 1) = v52;
  LOBYTE(v207) = 0;
  *(&v207 + 1) = v56;
  sub_213F4E180();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC720, &qword_213F64718);
  sub_213F3B464();
  v57 = v151;
  sub_213F4E370();
  v216 = v205;
  v217 = v206;
  v218 = v207;
  v212 = v204[3];
  v213 = v204[4];
  v214 = v204[5];
  v215 = v204[6];
  v208 = v203;
  v209 = v204[0];
  v210 = v204[1];
  v211 = v204[2];
  sub_213DE36FC(&v208, &qword_27C8FC720, &qword_213F64718);
  v58 = v192 + *(type metadata accessor for RoutePlanningCellPrimaryActionLabel(0) + 20);
  sub_213DBBD08(v27);
  v59 = v190;
  sub_213F4D280();
  sub_213F4D270();
  v61 = v193 + 8;
  v60 = *(v193 + 8);
  v62 = v191;
  v60(v59, v191);
  v60(v27, v62);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v63 = v155;
  (*(v152 + 32))(v155, v57, v162);
  v64 = (v63 + *(v150 + 36));
  v65 = v226;
  v64[4] = v225;
  v64[5] = v65;
  v64[6] = v227;
  v66 = v222;
  *v64 = v221;
  v64[1] = v66;
  v67 = v224;
  v64[2] = v223;
  v64[3] = v67;
  v68 = v163;
  v162 = v58;
  sub_213DBBD08(v163);
  sub_213F4D280();
  sub_213F4D270();
  v60(v59, v62);
  v193 = v61;
  v163 = v60;
  v60(v68, v62);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v69 = v157;
  sub_213DE2B44(v63, v157, &qword_27C8FC708, &qword_213F64700);
  v70 = (v69 + *(v154 + 36));
  v71 = v233;
  v70[4] = v232;
  v70[5] = v71;
  v70[6] = v234;
  v72 = v229;
  *v70 = v228;
  v70[1] = v72;
  v73 = v231;
  v70[2] = v230;
  v70[3] = v73;
  v74 = v69;
  v75 = v153;
  sub_213DE2B44(v74, v153, &qword_27C8FC710, &qword_213F64708);
  *(v75 + *(v156 + 36)) = 257;
  sub_213DE2B44(v75, v189, &qword_27C8FC718, &qword_213F64710);
  v76 = v165;
  sub_213F4F200();
  v77 = v166;
  v78 = v168;
  (*(v166 + 16))(v164, v76, v168);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v79 = qword_281182518;
  sub_213F4CB50();
  v80 = sub_213F4F260();
  v82 = v81;
  (*(v77 + 8))(v76, v78);
  *&v203 = v80;
  *(&v203 + 1) = v82;
  sub_213DBC9EC();
  v83 = sub_213F4F6C0();
  v85 = v84;

  *&v194 = v83;
  *(&v194 + 1) = v85;
  v86 = sub_213F4E310();
  v88 = v87;
  v90 = v89;
  sub_213F4E0C0();
  v91 = sub_213F4E2E0();
  v93 = v92;
  v95 = v94;

  sub_213DBCA40(v86, v88, v90 & 1);

  v96 = *MEMORY[0x277CE09A0];
  v97 = sub_213F4E0F0();
  v98 = *(v97 - 8);
  v99 = v173;
  (*(v98 + 104))(v173, v96, v97);
  (*(v98 + 56))(v99, 0, 1, v97);
  v100 = sub_213F4E290();
  v102 = v101;
  LOBYTE(v98) = v103;
  sub_213DBCA40(v91, v93, v95 & 1);

  sub_213DE36FC(v99, &qword_27C8F7668, &qword_213F52190);
  sub_213F4E110();
  v173 = sub_213F4E2A0();
  v167 = v105;
  v168 = v104;
  LOBYTE(v83) = v106;
  sub_213DBCA40(v100, v102, v98 & 1);

  KeyPath = swift_getKeyPath();
  v108 = swift_getKeyPath();
  v109 = v83 & 1;
  LOBYTE(v203) = v83 & 1;
  LOBYTE(v194) = 0;
  v110 = sub_213F4E040();
  sub_213F4CDA0();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v118 = v117;
  v202 = 0;
  v119 = v169;
  sub_213EA8894(v169);
  v120 = v170;
  v121 = v172;
  v158(v170, v159, v172);
  LOBYTE(v83) = sub_213F4CE90();
  v122 = v161;
  v161(v120, v121);
  v122(v119, v121);
  if (v83)
  {
    v123 = sub_213F4E8F0();
  }

  else
  {
    v123 = sub_213F4E8B0();
  }

  *&v194 = v173;
  *(&v194 + 1) = v168;
  LOBYTE(v195) = v109;
  *(&v195 + 1) = v167;
  *&v196 = KeyPath;
  *(&v196 + 1) = 2;
  LOBYTE(v197) = 0;
  *(&v197 + 1) = v108;
  LOBYTE(v198) = 1;
  BYTE8(v198) = v110;
  *&v199 = v112;
  *(&v199 + 1) = v114;
  *&v200 = v116;
  *(&v200 + 1) = v118;
  LOBYTE(v201) = 0;
  *(&v201 + 1) = v123;
  sub_213F4E180();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC730, &qword_213F64758);
  sub_213F3B5D4();
  v124 = v178;
  sub_213F4E370();
  v204[3] = v198;
  v204[4] = v199;
  v204[5] = v200;
  v204[6] = v201;
  v203 = v194;
  v204[0] = v195;
  v204[1] = v196;
  v204[2] = v197;
  sub_213DE36FC(&v203, &qword_27C8FC730, &qword_213F64758);
  v125 = v174;
  sub_213DBBD08(v174);
  v126 = v190;
  sub_213F4D280();
  sub_213F4D270();
  v127 = v191;
  v128 = v163;
  v163(v126, v191);
  v128(v125, v127);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v129 = v183;
  (*(v179 + 32))(v183, v124, v180);
  v130 = v176;
  v131 = (v129 + *(v177 + 36));
  v132 = v240;
  v131[4] = v239;
  v131[5] = v132;
  v131[6] = v241;
  v133 = v236;
  *v131 = v235;
  v131[1] = v133;
  v134 = v238;
  v131[2] = v237;
  v131[3] = v134;
  sub_213DBBD08(v130);
  sub_213F4D280();
  sub_213F4D270();
  v128(v126, v127);
  v128(v130, v127);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v135 = v185;
  sub_213DE2B44(v129, v185, &qword_27C8FC6E8, &qword_213F646E0);
  v136 = (v135 + *(v182 + 36));
  v137 = v199;
  v136[4] = v198;
  v136[5] = v137;
  v136[6] = v200;
  v138 = v195;
  *v136 = v194;
  v136[1] = v138;
  v139 = v197;
  v136[2] = v196;
  v136[3] = v139;
  v140 = v181;
  sub_213DE2B44(v135, v181, &qword_27C8FC6F0, &qword_213F646E8);
  *(v140 + *(v184 + 36)) = 257;
  v141 = v186;
  sub_213DE2B44(v140, v186, &qword_27C8FC6F8, &qword_213F646F0);
  v142 = v189;
  v143 = v175;
  sub_213DE3164(v189, v175, &qword_27C8FC718, &qword_213F64710);
  v144 = v187;
  sub_213DE3164(v141, v187, &qword_27C8FC6F8, &qword_213F646F0);
  v145 = v188;
  sub_213DE3164(v143, v188, &qword_27C8FC718, &qword_213F64710);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC750, &unk_213F64768);
  sub_213DE3164(v144, v145 + *(v146 + 48), &qword_27C8FC6F8, &qword_213F646F0);
  sub_213DE36FC(v141, &qword_27C8FC6F8, &qword_213F646F0);
  sub_213DE36FC(v142, &qword_27C8FC718, &qword_213F64710);
  sub_213DE36FC(v144, &qword_27C8FC6F8, &qword_213F646F0);
  return sub_213DE36FC(v143, &qword_27C8FC718, &qword_213F64710);
}

double sub_213F26914@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v51 - v3;
  v4 = sub_213F4CB60();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_213F4F210();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v54 = sub_213F4E9F0();
  v53 = sub_213F4E1C0();
  KeyPath = swift_getKeyPath();
  sub_213F4F200();
  (*(v6 + 16))(v9, v11, v5);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v12 = qword_281182518;
  sub_213F4CB50();
  v13 = sub_213F4F260();
  v15 = v14;
  (*(v6 + 8))(v11, v5);
  v63 = v13;
  v64 = v15;
  sub_213DBC9EC();
  v16 = sub_213F4F6C0();
  v18 = v17;

  *&v58 = v16;
  *(&v58 + 1) = v18;
  v19 = sub_213F4E310();
  v21 = v20;
  v23 = v22;
  sub_213F4E1E0();
  v24 = sub_213F4E2E0();
  v26 = v25;
  LOBYTE(v15) = v27;

  sub_213DBCA40(v19, v21, v23 & 1);

  v28 = *MEMORY[0x277CE09A0];
  v29 = sub_213F4E0F0();
  v30 = *(v29 - 8);
  v31 = v51;
  (*(v30 + 104))(v51, v28, v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  v32 = sub_213F4E290();
  v34 = v33;
  LOBYTE(v30) = v35;
  sub_213DBCA40(v24, v26, v15 & 1);

  sub_213DE36FC(v31, &qword_27C8F7668, &qword_213F52190);
  sub_213F4E110();
  v36 = sub_213F4E2A0();
  v38 = v37;
  LOBYTE(v15) = v39;
  v41 = v40;
  sub_213DBCA40(v32, v34, v30 & 1);

  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  *&v58 = v36;
  *(&v58 + 1) = v38;
  LOBYTE(v59) = v15 & 1;
  v44 = *v57;
  *(&v59 + 1) = *v57;
  DWORD1(v59) = *&v57[3];
  *(&v59 + 1) = v41;
  *&v60 = v42;
  *(&v60 + 1) = 1;
  LOBYTE(v61) = 0;
  DWORD1(v61) = *&v56[3];
  v45 = *v56;
  *(&v61 + 1) = *v56;
  *(&v61 + 1) = v43;
  v62 = 0x3FE999999999999ALL;
  v46 = KeyPath;
  *a1 = v54;
  *(a1 + 8) = v46;
  *(a1 + 16) = v53;
  v47 = v60;
  v48 = v61;
  *(a1 + 88) = 0x3FE999999999999ALL;
  *(a1 + 72) = v48;
  *(a1 + 56) = v47;
  v49 = v58;
  *(a1 + 40) = v59;
  *(a1 + 24) = v49;
  v63 = v36;
  v64 = v38;
  v65 = v15 & 1;
  *&v66[3] = *&v57[3];
  *v66 = v44;
  v67 = v41;
  v68 = v42;
  v69 = 1;
  v70 = 0;
  *&v71[3] = *&v56[3];
  *v71 = v45;
  v72 = v43;
  v73 = 0x3FE999999999999ALL;

  sub_213DE3164(&v58, v55, &qword_27C8FC6D8, &qword_213F646D0);
  sub_213DE36FC(&v63, &qword_27C8FC6D8, &qword_213F646D0);

  return result;
}

uint64_t sub_213F26EAC(uint64_t a1)
{
  v2 = sub_213F4CEA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for RoutePlanningCellPrimaryActionLabel(0);
  if (*(a1 + *(v9 + 32)) == 1)
  {
    v10 = [objc_opt_self() _carSystemFocusColor];

    return sub_213F4E870();
  }

  else
  {
    v12 = *(a1 + *(v9 + 24));
    if ((v12 - 2) >= 2)
    {
      if (v12 == 1)
      {

        return sub_213F4E8E0();
      }

      else
      {

        return sub_213F4E8D0();
      }
    }

    else
    {
      sub_213EA8894(v8);
      v13 = *(v3 + 104);
      v13(v6, *MEMORY[0x277CDF3C0], v2);
      v14 = sub_213F4CE90();
      v15 = *(v3 + 8);
      v15(v6, v2);
      v15(v8, v2);
      if (v14)
      {
        sub_213F4E8F0();
      }

      else
      {
        sub_213F4E8B0();
      }

      sub_213EA8894(v8);
      v13(v6, *MEMORY[0x277CDF3D0], v2);
      sub_213F4CE90();
      v15(v6, v2);
      v15(v8, v2);
      v16 = sub_213F4E900();

      return v16;
    }
  }
}

void sub_213F271C8(uint64_t a1, id *a2, double *a3, uint64_t *a4)
{
  sub_213E15130(0, &qword_281182338, 0x277D74300);
  v7 = *a3;
  v8 = *a2;
  v9 = static UIFont.withStyleAndWeight(_:_:)(v8, v7);

  *a4 = v9;
}

id sub_213F272E8(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_213F2732C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_213F2752C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213F4D7F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_213DE3164(v2 + *(a1 + 36), &v15 - v10, &qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_213F4CEA0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_213F4F520();
    v14 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_213F27730(uint64_t a1)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_213F4F520();
    v9 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v10 = sub_213E053BC(v8, 0);
    (*(v4 + 8))(v6, v3, v10);
    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

uint64_t sub_213F27884()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_213F2732C(&v10 - v5);
  sub_213F4D280();
  v7 = sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_213F279DC(unsigned __int8 a1)
{
  sub_213F4F880();
  MEMORY[0x216052C90](a1);
  return sub_213F4F8C0();
}

uint64_t sub_213F27A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, *(a1 + 16), *(a1 + 24), a4);
  sub_213F4F6B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE10();
  sub_213F4CDC0();
  return v5;
}

uint64_t sub_213F27AE8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, *(a2 + 16), *(a2 + 24), a4);
  sub_213F4F6B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE10();
  return sub_213F4CDD0();
}

uint64_t sub_213F27BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, *(a1 + 16), *(a1 + 24), a4);
  sub_213F4F6B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE10();
  sub_213F4CDE0();
  return v5;
}

uint64_t sub_213F27CFC(uint64_t a1)
{
  sub_213F4F880();
  sub_213F279B4(v3, *v1);
  return sub_213F4F8C0();
}

double sub_213F27D3C()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_213F2732C(&v10 - v5);
  sub_213F4D280();
  v7 = sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 16.0;
  if (v7)
  {
    return 10.0;
  }

  return result;
}

double sub_213F27E68()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_213F2732C(&v10 - v5);
  sub_213F4D280();
  v7 = sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 16.0;
  if (v7)
  {
    return 6.0;
  }

  return result;
}

double sub_213F27F94()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_213F2732C(&v10 - v5);
  sub_213F4D280();
  v7 = sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 6.0;
  if (v7)
  {
    return 4.0;
  }

  return result;
}

uint64_t sub_213F280C0()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  type metadata accessor for RoutePlanningCellViewModel(0);
  sub_213F2732C(v6);
  sub_213F4D280();
  sub_213F4D270();
  v7 = *(v1 + 8);
  v7(v4, v0);
  return (v7)(v6, v0);
}

double sub_213F28224()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_213F2732C(&v10 - v5);
  sub_213F4D280();
  v7 = sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 112.0;
  if (v7)
  {
    return 66.0;
  }

  return result;
}

uint64_t sub_213F2835C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  (*(v1 + 32))();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

id sub_213F283D8(uint64_t a1)
{
  if (sub_213F27884())
  {
    if (qword_27C8F7380 != -1)
    {
      swift_once();
    }

    v2 = qword_27C8FC468;
    if (sub_213F27A24(a1, v3, v4, v5))
    {
      if (qword_27C8F7390 != -1)
      {
        swift_once();
      }

      v6 = &qword_27C8FC478;
    }

    else
    {
      if (qword_27C8F7388 != -1)
      {
        swift_once();
      }

      v6 = &qword_27C8FC470;
    }
  }

  else
  {
    if (qword_281184110 != -1)
    {
      swift_once();
    }

    v7 = qword_2811840C8;
    v2 = qword_281184118;
    if (v7 != -1)
    {
      swift_once();
    }

    v6 = &qword_2811840D0;
  }

  v8 = *v6;
  return v2;
}

id sub_213F28558(uint64_t a1)
{
  if ((sub_213F27884() & 1) == 0)
  {
    if (qword_2811840F8 != -1)
    {
      swift_once();
    }

    v4 = qword_2811840E0;
    v5 = qword_281184100;
    if (v4 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (*(v1 + *(a1 + 52)) == 1)
  {
    if (qword_27C8F73A8 != -1)
    {
      swift_once();
    }

    v3 = &qword_27C8FC488;
  }

  else
  {
    if (qword_27C8F73A0 != -1)
    {
      swift_once();
    }

    v3 = &qword_27C8FC480;
  }

  v5 = *v3;
  if (sub_213F27A24(a1, v9, v10, v11))
  {
    if (qword_2811840E0 == -1)
    {
LABEL_9:
      v6 = &qword_2811840E8;
      goto LABEL_10;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  if (qword_27C8F73B8 != -1)
  {
    swift_once();
  }

  v6 = &qword_27C8FC490;
LABEL_10:
  v7 = *v6;
  return v5;
}

double sub_213F286FC()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_213F2732C(&v10 - v5);
  sub_213F4D280();
  v7 = sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 20.0;
  if (v7)
  {
    return 12.0;
  }

  return result;
}

double sub_213F28828()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_213F2732C(&v10 - v5);
  sub_213F4D280();
  v7 = sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 8.0;
  if (v7)
  {
    return 6.0;
  }

  return result;
}

uint64_t sub_213F28954@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v6 = sub_213F4DF50();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4F0, &qword_213F63E10);
  MEMORY[0x28223BE20](v41);
  v10 = &v34 - v9;
  v11 = sub_213F4CEA0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = *a1;
  v37 = a1[1];
  v38 = v18;
  v36 = a1[2];
  LODWORD(v18) = *(a1 + 24);
  v34 = *(a1 + 25);
  v35 = v18;
  v39 = sub_213F28558(a2);
  v40 = v19;
  sub_213F2752C(a2, v17);
  (*(v12 + 104))(v15, *MEMORY[0x277CDF3C0], v11);
  v20 = sub_213F4CE90();
  v21 = *(v12 + 8);
  v21(v15, v11);
  v21(v17, v11);
  if (v20)
  {
    v22 = sub_213F4E8F0();
  }

  else
  {
    v22 = sub_213F4E8B0();
  }

  v23 = v22;
  v24 = sub_213F27884();
  v25 = sub_213F4D880();
  v26 = 0x4020000000000000;
  if (v24)
  {
    v26 = 0x4010000000000000;
  }

  *v10 = v25;
  *(v10 + 1) = v26;
  v10[16] = 0;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC758, &qword_213F64798) + 44);
  v28 = *(a2 + 24);
  if (v34)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  v33 = *(a2 + 16);
  v31 = v39;
  v30 = v40;
  sub_213F28CC4(v38, v37, v36, v29 | v35, v3, v40, v23, v39, &v10[v27], v33, v28);
  sub_213F4DF30();
  sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  sub_213F4E640();

  (*(v43 + 8))(v8, v44);
  return sub_213DE36FC(v10, &qword_27C8FC4F0, &qword_213F63E10);
}

uint64_t sub_213F28CC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v144 = a8;
  v139 = a7;
  v162 = a5;
  v158 = a4;
  v156 = a3;
  v155 = a2;
  v154 = a9;
  v160 = a10;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC760, &qword_213F647A0);
  MEMORY[0x28223BE20](v153);
  v135 = &v122 - v13;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC768, &qword_213F647A8);
  MEMORY[0x28223BE20](v147);
  v152 = &v122 - v14;
  v148 = sub_213F4DCA0();
  v128 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v126 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC770, &qword_213F647B0);
  v125 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v124 = &v122 - v16;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC778, &qword_213F647B8);
  v129 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v134 = &v122 - v17;
  v133 = sub_213F4D290();
  v132 = *(v133 - 8);
  v18 = MEMORY[0x28223BE20](v133);
  v131 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v130 = &v122 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC780, &unk_213F647C0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v151 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v150 = &v122 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9640, &qword_213F584C8);
  MEMORY[0x28223BE20](v123);
  v159 = &v122 - v25;
  v26 = sub_213F4EA00();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC788, &qword_213F647D0);
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v122 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC790, &unk_213F647D8);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v145 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v157 = &v122 - v40;
  v161 = a11;
  v127 = a1;
  if (a1)
  {
    v41 = a1;
    sub_213F4E9D0();
    v143 = a6;
    (*(v27 + 104))(v29, *MEMORY[0x277CE0FE0], v26);
    v42 = sub_213F4EA40();

    (*(v27 + 8))(v29, v26);
    type metadata accessor for RoutePlanningCell(0, v160, v161, v43);
    sub_213F286FC();
    sub_213F286FC();
    sub_213F4EEE0();
    sub_213F4D0C0();
    v163 = v42;
    v164 = v171;
    LOBYTE(v165) = v172;
    v166 = v173;
    LOBYTE(v167) = v174;
    v168 = v175;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC690, &qword_213F64638);
    sub_213F3AAA0();
    a6 = v143;
    v44 = v161;
    v45 = v157;
    sub_213F4E6D0();

    sub_213F4D3F0();

    sub_213DE36FC(v34, &qword_27C8FC788, &qword_213F647D0);
    sub_213DE2B44(v36, v45, &qword_27C8FC788, &qword_213F647D0);
    (*(v31 + 56))(v45, 0, 1, v30);
  }

  else
  {
    (*(v31 + 56))();
    v44 = a11;
  }

  v163 = v155;
  v164 = v156;
  sub_213DBC9EC();

  v46 = sub_213F4E310();
  v48 = v47;
  v50 = v49;
  v51 = v160;
  v53 = type metadata accessor for RoutePlanningCell(0, v160, v44, v52);
  v57 = sub_213F27A24(v53, v54, v55, v56);
  v136 = v53;
  if (v57 == 2 || !sub_213F27A24(v53, v58, v59, v60))
  {
    v63 = [objc_opt_self() _carSystemFocusLabelColor];
    v62 = sub_213F4E870();
  }

  else
  {
    v61 = a6;
    v62 = sub_213F4E870();
  }

  v163 = v62;
  v64 = sub_213F4E2B0();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  sub_213DBCA40(v46, v48, v50 & 1);

  v143 = v70;
  v142 = v64;
  v141 = v66;
  v140 = v68;
  if (v158)
  {
    v71 = v162;
    v72 = sub_213F29E70(v162, v139, v64, v66, v68 & 1, v70, v51, v161);
    v66 = v73;
    v68 = v74;
    v70 = v75;
    v76 = v71;
  }

  else
  {
    sub_213DBCA50(v64, v66, v68 & 1);

    v72 = v64;
    v76 = v162;
  }

  v77 = v144;
  sub_213F4E240();
  v137 = v68;
  v144 = v72;
  v139 = v66;
  v138 = v70;
  v78 = sub_213F4E2E0();
  v80 = v79;
  v82 = v81;
  v84 = v83;

  KeyPath = swift_getKeyPath();
  v163 = v78;
  v164 = v80;
  v82 &= 1u;
  LOBYTE(v165) = v82;
  v166 = v84;
  v167 = KeyPath;
  LOBYTE(v168) = 0;
  v169 = 0x79726F7369766441;
  v170 = 0xE800000000000000;
  MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9648, &unk_213F58500);
  sub_213E3D854();
  sub_213F4E6D0();
  sub_213DBCA40(v78, v80, v82);

  v86 = (v76 + *(v136 + 72));
  v87 = *v86;
  v88 = v150;
  if (*v86 && (v158 & 0x100) != 0)
  {
    v89 = v86[1];

    v90 = v130;
    sub_213F2732C(v130);
    v91 = v131;
    sub_213F4D280();
    sub_213F39194(&qword_2811834A8, MEMORY[0x277CDF7E8], MEMORY[0x277CDF7F0]);
    v92 = v133;
    v93 = sub_213F4F1F0();
    v94 = *(v132 + 8);
    v94(v91, v92);
    v94(v90, v92);
    if ((v93 & 1) == 0)
    {
      v110 = swift_allocObject();
      *(v110 + 16) = v87;
      *(v110 + 24) = v89;
      v111 = v127;
      v112 = v155;
      *(v110 + 32) = v127;
      *(v110 + 40) = v112;
      *(v110 + 48) = v156;
      *(v110 + 56) = v158 & 1;
      *(v110 + 57) = 1;
      MEMORY[0x28223BE20](v110);
      v101 = v159;
      *(&v122 - 2) = v159;
      sub_213DD74C4(v87, v89);
      sub_213F3C6EC(&qword_281183070, &qword_27C8F9640, &qword_213F584C8, sub_213E3D854);
      v113 = v111;

      v162 = v89;
      v114 = v124;
      sub_213F4EB00();
      v115 = v126;
      sub_213F4DC90();
      v161 = sub_213DE3AE4(&qword_281182778, &qword_27C8FC770, &qword_213F647B0, MEMORY[0x277CDF028]);
      v116 = sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
      v117 = v134;
      v118 = v146;
      v119 = v148;
      sub_213F4E3B0();
      (*(v128 + 8))(v115, v119);
      (*(v125 + 8))(v114, v118);
      v120 = v129;
      v121 = v149;
      (*(v129 + 16))(v152, v117, v149);
      swift_storeEnumTagMultiPayload();
      v163 = v118;
      v164 = v119;
      v165 = v161;
      v166 = v116;
      swift_getOpaqueTypeConformance2();
      sub_213F3BCF4();
      sub_213F4DBA0();
      sub_213DD7558(v87, v162);
      (*(v120 + 8))(v134, v121);
      goto LABEL_16;
    }

    sub_213DD7558(v87, v89);
  }

  v95 = sub_213F4EEE0();
  v97 = v96;
  v98 = v135;
  v99 = &v135[*(v153 + 36)];
  sub_213F2A2AC(v160, v161, v99);
  v100 = (v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC798, &qword_213F647E8) + 36));
  *v100 = v95;
  v100[1] = v97;
  v101 = v159;
  sub_213DE3164(v159, v98, &qword_27C8F9640, &qword_213F584C8);
  sub_213DE3164(v98, v152, &qword_27C8FC760, &qword_213F647A0);
  swift_storeEnumTagMultiPayload();
  v102 = sub_213DE3AE4(&qword_281182778, &qword_27C8FC770, &qword_213F647B0, MEMORY[0x277CDF028]);
  v103 = sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v163 = v146;
  v164 = v148;
  v165 = v102;
  v166 = v103;
  swift_getOpaqueTypeConformance2();
  sub_213F3BCF4();
  sub_213F4DBA0();
  sub_213DE36FC(v98, &qword_27C8FC760, &qword_213F647A0);
LABEL_16:
  v104 = v157;
  v105 = v145;
  sub_213DE3164(v157, v145, &qword_27C8FC790, &unk_213F647D8);
  v106 = v151;
  sub_213DE3164(v88, v151, &qword_27C8FC780, &unk_213F647C0);
  v107 = v154;
  sub_213DE3164(v105, v154, &qword_27C8FC790, &unk_213F647D8);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7A0, &qword_213F647F0);
  sub_213DE3164(v106, v107 + *(v108 + 48), &qword_27C8FC780, &unk_213F647C0);
  sub_213DBCA40(v144, v139, v137 & 1);

  sub_213DBCA40(v142, v141, v140 & 1);

  sub_213DE36FC(v88, &qword_27C8FC780, &unk_213F647C0);
  sub_213DE36FC(v104, &qword_27C8FC790, &unk_213F647D8);
  sub_213DE36FC(v106, &qword_27C8FC780, &unk_213F647C0);
  sub_213DE36FC(v105, &qword_27C8FC790, &unk_213F647D8);
  return sub_213DE36FC(v101, &qword_27C8F9640, &qword_213F584C8);
}

uint64_t sub_213F29E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a7;
  v51 = a8;
  v54 = a4;
  v55 = a6;
  v53 = a5;
  v52 = a3;
  v49 = a2;
  v8 = sub_213F4D910();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_213F4CB60();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_213F4F210();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  sub_213F4F200();
  (*(v11 + 16))(v14, v16, v10);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v17 = qword_281182518;
  sub_213F4CB50();
  v18 = sub_213F4F260();
  v20 = v19;
  (*(v11 + 8))(v16, v10);
  v56 = v18;
  v57 = v20;
  sub_213DBC9EC();
  v21 = sub_213F4E310();
  v23 = v22;
  v25 = v24;
  sub_213F4E160();
  v26 = sub_213F4E2A0();
  v28 = v27;
  v30 = v29;
  sub_213DBCA40(v21, v23, v25 & 1);

  v32 = type metadata accessor for RoutePlanningCell(0, v50, v51, v31);
  if (sub_213F27A24(v32, v33, v34, v35) == 2 || !sub_213F27A24(v32, v36, v37, v38))
  {
    v40 = [objc_opt_self() _carSystemFocusLabelColor];
    v39 = sub_213F4E870();
  }

  else
  {
    v39 = v49;
  }

  v56 = v39;
  v41 = sub_213F4E2B0();
  v43 = v42;
  v45 = v44;
  sub_213DBCA40(v26, v28, v30 & 1);

  sub_213F4D900();
  sub_213F4D8F0();
  sub_213F4D8C0();
  sub_213F4D8F0();
  sub_213F4D8C0();
  sub_213F4D8F0();
  sub_213F4D930();
  v46 = sub_213F4E2F0();
  sub_213DBCA40(v41, v43, v45 & 1);

  return v46;
}

uint64_t sub_213F2A2AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_213F4D470();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D90, &qword_213F61EB0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = *(v7 + 28);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_213F4D950();
  (*(*(v15 - 8) + 104))(&v9[v13], v14, v15);
  __asm { FMOV            V0.2D, #6.0 }

  *v9 = _Q0;
  v22 = type metadata accessor for RoutePlanningCell(0, a1, a2, v21);
  if (sub_213F27A24(v22, v23, v24, v25) == 2)
  {
    v26 = [objc_opt_self() _carSystemFocusColor];
    v27 = sub_213F4E870();
  }

  else
  {
    v27 = sub_213F4E8D0();
  }

  v28 = v27;
  sub_213DEEF8C(v9, v12);
  *&v12[*(v10 + 36)] = v28;
  LOBYTE(v28) = sub_213F4E050();
  sub_213F4CDA0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_213DE2B44(v12, a3, &qword_27C8F7D90, &qword_213F61EB0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D98, &qword_213F52630);
  v38 = a3 + *(result + 36);
  *v38 = v28;
  *(v38 + 8) = v30;
  *(v38 + 16) = v32;
  *(v38 + 24) = v34;
  *(v38 + 32) = v36;
  *(v38 + 40) = 0;
  return result;
}

uint64_t sub_213F2A4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_213F4DF50();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &OpaqueTypeMetadata2 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v51 = v50;
  v36 = *(a1 + 16);
  sub_213F4D400();
  v52 = sub_213F4F6B0();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  v33 = sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_213F4EBC0();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v29 = &OpaqueTypeMetadata2 - v7;
  v30 = swift_getWitnessTable();
  v49 = v6;
  v50 = v30;
  v34 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v10 = &OpaqueTypeMetadata2 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v31 = &OpaqueTypeMetadata2 - v11;
  v12 = a1;
  sub_213F27884();
  v13 = sub_213F283D8(a1);
  v15 = v14;
  v16 = sub_213F28558(v12);
  v18 = v17;
  sub_213F4DA50();
  v19 = *(v12 + 24);
  v42 = v36;
  v43 = v19;
  v44 = v2;
  v45 = v13;
  v46 = v15;
  v47 = v16;
  v48 = v18;
  v20 = v29;
  sub_213F4EBB0();
  v21 = v38;
  sub_213F4DF30();
  v22 = v30;
  sub_213F4E640();

  (*(v39 + 8))(v21, v40);
  (*(v37 + 8))(v20, v6);
  v49 = v6;
  v50 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v31;
  v25 = OpaqueTypeMetadata2;
  sub_213DBFEEC(v10, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v26 = *(v35 + 8);
  v26(v10, v25);
  sub_213DBFEEC(v24, v25, OpaqueTypeConformance2);
  return (v26)(v24, v25);
}

uint64_t sub_213F2A95C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, void (*a4)(void, void)@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v176 = a5;
  v177 = a4;
  v175 = a8;
  v156 = sub_213F4DCA0();
  v154 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v152 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = a7;
  v15 = type metadata accessor for RoutePlanningCell(0, a6, a7, v14);
  v147 = *(v15 - 8);
  v145 = *(v147 + 64);
  MEMORY[0x28223BE20](v15);
  v146 = &v140 - v16;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC818, &qword_213F64868);
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v140 - v17;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC820, &qword_213F64870);
  MEMORY[0x28223BE20](v150);
  v153 = &v140 - v18;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC828, &qword_213F64878);
  MEMORY[0x28223BE20](v157);
  v158 = &v140 - v19;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC830, &qword_213F64880);
  v169 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v155 = &v140 - v20;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4C8, &unk_213F63DE0);
  v21 = MEMORY[0x28223BE20](v172);
  v174 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v173 = &v140 - v23;
  v24 = sub_213F4D400();
  v165 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v144 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v143 = &v140 - v27;
  v142 = sub_213F4F6B0();
  v140 = *(v142 - 8);
  v28 = MEMORY[0x28223BE20](v142);
  v163 = &v140 - v29;
  v167 = a6;
  v164 = *(a6 - 8);
  MEMORY[0x28223BE20](v28);
  v141 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v24;
  v186 = sub_213F4F6B0();
  v180 = *(v186 - 8);
  v31 = MEMORY[0x28223BE20](v186);
  v192 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v183 = &v140 - v33;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v34 = MEMORY[0x28223BE20](v166);
  v170 = &v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v184 = &v140 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v191 = &v140 - v39;
  MEMORY[0x28223BE20](v38);
  v182 = &v140 - v40;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v162 = *(v190 - 8);
  v41 = MEMORY[0x28223BE20](v190);
  v189 = &v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v140 - v43;
  v168 = v15;
  v45 = *(v15 + 44);
  v178 = a1;
  v46 = a1 + v45;
  v47 = type metadata accessor for RoutePlanningCellViewModel(0);
  v48 = (v46 + v47[5]);
  v49 = v48[1];
  v50 = *(v46 + v47[9]);
  v204[0] = *v48;
  v204[1] = v49;
  v51 = a2;
  v205 = a2;
  v206 = a3;
  LOWORD(v207) = v50;
  v52 = a3;
  v53 = v51;

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC838, &qword_213F64888);
  v55 = sub_213F3C500();
  v181 = v44;
  v56 = v55;
  sub_213F4E6D0();

  v179 = v47;
  v57 = v47[6];
  v187 = v46;
  v58 = (v46 + v57);
  v59 = *v58;
  v161 = v50;
  v160 = v54;
  v159 = v56;
  if (v59)
  {
    v60 = v58[1];
    v204[0] = v59;
    v204[1] = v60;
    v61 = v177;
    v62 = v176;
    v205 = v177;
    v206 = v176;
    LOWORD(v207) = v50;
    sub_213F3C9E8(v59, v60);
    v63 = v62;
    v64 = v61;
    v65 = v189;
    sub_213F4E6D0();

    v66 = v65;
    v67 = v182;
    sub_213DE2B44(v65, v182, &qword_27C8FC4B8, &qword_213F63DD0);
    v68 = 0;
    v69 = v67;
  }

  else
  {
    v66 = v189;
    v68 = 1;
    v69 = v182;
  }

  v70 = *(v162 + 56);
  v71 = 1;
  v70(v69, v68, 1, v190);
  v72 = (v187 + v179[7]);
  v73 = *v72;
  if (*v72)
  {
    v74 = v72[1];
    v204[0] = *v72;
    v204[1] = v74;
    v75 = v177;
    v205 = v177;
    v206 = v176;
    LOWORD(v207) = v161;
    v76 = v176;
    v77 = v75;
    sub_213F3C9E8(v73, v74);
    sub_213F4E6D0();

    v78 = v191;
    sub_213DE2B44(v66, v191, &qword_27C8FC4B8, &qword_213F63DD0);
    v71 = 0;
    v79 = v185;
    v80 = v192;
  }

  else
  {
    v79 = v185;
    v80 = v192;
    v78 = v191;
  }

  v81 = (v70)(v78, v71, 1, v190);
  v82 = v168;
  v83 = v163;
  (*(v178 + *(v168 + 56)))(v81);
  v84 = v164;
  v85 = v167;
  v86 = (*(v164 + 48))(v83, 1, v167);
  v87 = MEMORY[0x277CDF918];
  if (v86 == 1)
  {
    (*(v140 + 8))(v83, v142);
    (*(v165 + 56))(v80, 1, 1, v79);
    v208 = v188;
    v209 = v87;
    swift_getWitnessTable();
  }

  else
  {
    v88 = v141;
    (*(v84 + 32))(v141, v83, v85);
    sub_213F4E060();
    sub_213F27F94();
    v89 = v144;
    v90 = v188;
    sub_213F4E7D0();
    (*(v84 + 8))(v88, v85);
    v193 = v90;
    v194 = v87;
    WitnessTable = swift_getWitnessTable();
    v92 = v143;
    sub_213DBFEEC(v89, v79, WitnessTable);
    v93 = v165;
    v94 = *(v165 + 8);
    v94(v89, v79);
    sub_213DBFEEC(v92, v79, WitnessTable);
    v80 = v192;
    v94(v92, v79);
    (*(v93 + 32))(v80, v89, v79);
    (*(v93 + 56))(v80, 0, 1, v79);
  }

  v95 = v179;
  sub_213F43E1C(v80, v183);
  v96 = *(v180 + 8);
  v179 = (v180 + 8);
  v177 = v96;
  v96(v80, v186);
  if (*(v187 + v95[10]) == 1)
  {
    v97 = v95;
    v98 = v147;
    v99 = v146;
    (*(v147 + 16))(v146, v178, v82);
    v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v101 = swift_allocObject();
    v102 = v188;
    *(v101 + 16) = v85;
    *(v101 + 24) = v102;
    (*(v98 + 32))(v101 + v100, v99, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9648, &unk_213F58500);
    sub_213E3D854();
    v103 = v148;
    sub_213F4EB00();
    v104 = v152;
    sub_213F4DC90();
    sub_213DE3AE4(&qword_281182788, &qword_27C8FC818, &qword_213F64868, MEMORY[0x277CDF028]);
    sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v105 = v153;
    v106 = v151;
    v107 = v156;
    sub_213F4E3B0();
    (*(v154 + 8))(v104, v107);
    (*(v149 + 8))(v103, v106);
    v108 = sub_213F4E060();
    sub_213F27F94();
    sub_213F4CDA0();
    v109 = &v105[*(v150 + 36)];
    *v109 = v108;
    *(v109 + 1) = v110;
    *(v109 + 2) = v111;
    *(v109 + 3) = v112;
    *(v109 + 4) = v113;
    v109[40] = 0;
    v114 = sub_213F4E070();
    if (*(*(v187 + v97[11]) + 16))
    {
      sub_213F27F94();
    }

    sub_213F4CDA0();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v125 = v105;
    v126 = v158;
    sub_213DE2B44(v125, v158, &qword_27C8FC820, &qword_213F64870);
    v127 = v126 + *(v157 + 36);
    *v127 = v114;
    *(v127 + 8) = v118;
    *(v127 + 16) = v120;
    *(v127 + 24) = v122;
    *(v127 + 32) = v124;
    *(v127 + 40) = 0;
    strcpy(v204, "PreviewRoute");
    BYTE5(v204[1]) = 0;
    HIWORD(v204[1]) = -5120;
    MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
    sub_213F3C7A0();
    v128 = v155;
    sub_213F4E6D0();

    sub_213DE36FC(v126, &qword_27C8FC828, &qword_213F64878);
    v129 = v128;
    v116 = v173;
    sub_213DE2B44(v129, v173, &qword_27C8FC830, &qword_213F64880);
    v115 = 0;
  }

  else
  {
    v115 = 1;
    v116 = v173;
  }

  (*(v169 + 56))(v116, v115, 1, v171);
  v130 = v189;
  sub_213DE3164(v181, v189, &qword_27C8FC4B8, &qword_213F63DD0);
  v204[0] = v130;
  v131 = v182;
  v132 = v184;
  sub_213DE3164(v182, v184, &qword_27C8FC4C0, &qword_213F63DD8);
  v204[1] = v132;
  v133 = v170;
  sub_213DE3164(v191, v170, &qword_27C8FC4C0, &qword_213F63DD8);
  v205 = v133;
  v134 = v192;
  v135 = v183;
  v136 = v186;
  (*(v180 + 16))(v192, v183, v186);
  v206 = v134;
  v137 = v174;
  sub_213DE3164(v116, v174, &qword_27C8FC4C8, &unk_213F63DE0);
  v207 = v137;
  v203[0] = v190;
  v203[1] = v166;
  v203[2] = v166;
  v203[3] = v136;
  v203[4] = v172;
  v198 = sub_213F3C6EC(&qword_281183118, &qword_27C8FC4B8, &qword_213F63DD0, sub_213F3C500);
  v199 = sub_213F3C58C();
  v200 = v199;
  v196 = v188;
  v197 = MEMORY[0x277CDF918];
  v195 = swift_getWitnessTable();
  v201 = swift_getWitnessTable();
  v202 = sub_213F3C63C();
  sub_213E95270(v204, 5uLL, v203);
  sub_213DE36FC(v116, &qword_27C8FC4C8, &unk_213F63DE0);
  v138 = v177;
  v177(v135, v136);
  sub_213DE36FC(v191, &qword_27C8FC4C0, &qword_213F63DD8);
  sub_213DE36FC(v131, &qword_27C8FC4C0, &qword_213F63DD8);
  sub_213DE36FC(v181, &qword_27C8FC4B8, &qword_213F63DD0);
  sub_213DE36FC(v137, &qword_27C8FC4C8, &unk_213F63DE0);
  v138(v192, v136);
  sub_213DE36FC(v133, &qword_27C8FC4C0, &qword_213F63DD8);
  sub_213DE36FC(v184, &qword_27C8FC4C0, &qword_213F63DD8);
  return sub_213DE36FC(v189, &qword_27C8FC4B8, &qword_213F63DD0);
}

uint64_t sub_213F2BDF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213F4CB60();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_213F4F210();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = sub_213F4E8B0();
  sub_213F4F200();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v11 = qword_281182518;
  sub_213F4CB50();
  v12 = sub_213F4F260();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v29 = v12;
  v30 = v14;
  sub_213DBC9EC();
  v15 = sub_213F4E310();
  v17 = v16;
  v19 = v18;
  v29 = v10;
  v20 = sub_213F4E2B0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_213DBCA40(v15, v17, v19 & 1);

  result = swift_getKeyPath();
  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_213F2C098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, v3, v4, v5);
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  v19[15] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  v19[14] = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v19[12] = OpaqueTypeConformance2;
  v19[13] = v7;
  v8 = swift_getOpaqueTypeConformance2();
  v19[10] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v19[11] = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v19[8] = v8;
  v19[9] = swift_getOpaqueTypeConformance2();
  v19[7] = swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = sub_213F4EBC0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  sub_213F4DA50();
  v19[4] = v3;
  v19[5] = v4;
  v19[6] = v19[0];
  sub_213F4EBB0();
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v13, v9, WitnessTable);
  v17 = *(v10 + 8);
  v17(v13, v9);
  sub_213DBFEEC(v15, v9, WitnessTable);
  return (v17)(v15, v9);
}

uint64_t sub_213F2C504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v58 = a1;
  v60 = a5;
  v55 = a2;
  v56 = a3;
  v7 = type metadata accessor for RoutePlanningCell(0, a2, a3, a4);
  v51 = *(v7 - 8);
  v59 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  v53 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, a2, a3, v11);
  v12 = sub_213F4F6B0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  v14 = sub_213F39294();
  v65 = v13;
  v66 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v65 = v10;
  v66 = v12;
  v67 = OpaqueTypeConformance2;
  v68 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = OpaqueTypeMetadata2;
  v65 = v10;
  v66 = v12;
  v67 = OpaqueTypeConformance2;
  v68 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v48 = v18;
  v47 = sub_213DE295C();
  v65 = OpaqueTypeMetadata2;
  v66 = &type metadata for CarGestureRepresentable;
  v67 = v18;
  v68 = v47;
  v46[2] = MEMORY[0x277CDEEC8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  v19 = sub_213F4DBB0();
  v50 = v19;
  v52 = sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  v65 = v9;
  v66 = MEMORY[0x277D83B88];
  v67 = v19;
  v68 = v52;
  v69 = MEMORY[0x277D83B98];
  v20 = sub_213F4ECE0();
  v54 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v46 - v24;
  v26 = v7;
  v27 = v58;
  v28 = v58 + *(v7 + 44);
  v29 = type metadata accessor for RoutePlanningCellViewModel(0);
  sub_213EAA460(*(v28 + *(v29 + 44)));
  v64 = v30;
  v46[1] = swift_getKeyPath();
  v31 = v51;
  v32 = v57;
  (*(v51 + 16))(v57, v27, v26);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v36 = v55;
  v35 = v56;
  *(v34 + 16) = v55;
  *(v34 + 24) = v35;
  (*(v31 + 32))(v34 + v33, v32, v26);
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = v35;
  v37[4] = sub_213F3BBBC;
  v37[5] = v34;
  v65 = v49;
  v66 = &type metadata for CarGestureRepresentable;
  v67 = v48;
  v68 = v47;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v40 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v65 = v39;
  v66 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v62 = v38;
  v63 = v41;
  v45 = swift_getWitnessTable();
  sub_213F4ECC0();
  v61 = v45;
  v42 = swift_getWitnessTable();
  sub_213DBFEEC(v23, v20, v42);
  v43 = *(v54 + 8);
  v43(v23, v20);
  sub_213DBFEEC(v25, v20, v42);
  return (v43)(v25, v20);
}

uint64_t sub_213F2CAFC@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v105 = a4;
  v107 = a3;
  v116 = a5;
  v117 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4F8, &qword_213F63E18);
  v104 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v103 = &v87[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4E8, &qword_213F63E08);
  MEMORY[0x28223BE20](v10);
  v96 = &v87[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4E0, &qword_213F63E00);
  v100 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v99 = &v87[-v13];
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, a3, a4, v14);
  v15 = sub_213F4F6B0();
  v16 = sub_213F39294();
  v97 = v10;
  v121 = v10;
  v122 = v16;
  v91 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v121 = v12;
  v122 = v15;
  v123 = OpaqueTypeConformance2;
  v124 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = *(OpaqueTypeMetadata2 - 1);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v94 = &v87[-v20];
  v90 = v12;
  v121 = v12;
  v122 = v15;
  v89 = v15;
  v93 = OpaqueTypeConformance2;
  v123 = OpaqueTypeConformance2;
  v124 = v18;
  v92 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_213DE295C();
  v113 = v21;
  v114 = OpaqueTypeMetadata2;
  v121 = OpaqueTypeMetadata2;
  v122 = &type metadata for CarGestureRepresentable;
  v123 = v21;
  v124 = v22;
  v112 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v101 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v98 = &v87[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v102 = &v87[-v26];
  v27 = sub_213F4D290();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v87[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v33 = &v87[-v32];
  v108 = v23;
  v115 = v8;
  v34 = sub_213F4DBB0();
  v110 = *(v34 - 8);
  v111 = v34;
  MEMORY[0x28223BE20](v34);
  v109 = &v87[-v35];
  v37 = *a1;
  v36 = *(a1 + 8);
  v38 = *(a1 + 16);
  v106 = *(a1 + 24);
  v39 = *(a1 + 25);
  v40 = v117;
  v42 = type metadata accessor for RoutePlanningCell(0, v107, v105, v41);
  v43 = &v40[*(v42 + 72)];
  if (!*v43 || !v39)
  {
    goto LABEL_6;
  }

  v107 = *v43;
  v105 = v43[1];

  sub_213F2732C(v33);
  sub_213F4D280();
  v88 = sub_213F4D270();
  v44 = *(v28 + 8);
  v44(v31, v27);
  v44(v33, v27);
  if ((v88 & 1) == 0)
  {
    sub_213DD7558(v107, v105);
LABEL_6:
    v121 = v37;
    v122 = v36;
    v123 = v38;
    LOBYTE(v124) = v106;
    BYTE1(v124) = v39;
    v74 = v103;
    sub_213F28954(&v121, v42, v103);
    v63 = v113;
    v62 = v114;
    v121 = v114;
    v122 = &type metadata for CarGestureRepresentable;
    v123 = v113;
    v64 = v112;
    v124 = v112;
    v75 = swift_getOpaqueTypeConformance2();
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
    v77 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
    v121 = v76;
    v122 = v77;
    v78 = swift_getOpaqueTypeConformance2();
    v73 = v109;
    v79 = v115;
    sub_213DBFF2C(v74, v108, v115, v75, v78);
    (*(v104 + 8))(v74, v79);
    goto LABEL_7;
  }

  v121 = v37;
  v122 = v36;
  v45 = v36;
  v123 = v38;
  v46 = v106;
  LOBYTE(v124) = v106;
  BYTE1(v124) = 1;
  v47 = v96;
  sub_213F28954(&v121, v42, v96);
  v47[v97[9]] = 0;
  v48 = v99;
  sub_213F4E840();
  sub_213DE36FC(v47, &qword_27C8FC4E8, &qword_213F63E08);
  v121 = sub_213F27BB4(v42, v49, v50, v51);
  v122 = v52;
  LOBYTE(v123) = v53;
  v118 = 2;
  swift_checkMetadataState();
  v54 = v94;
  v55 = v90;
  sub_213F4E770();

  (*(v100 + 8))(v48, v55);
  v56 = swift_allocObject();
  v57 = v107;
  *(v56 + 16) = v107;
  v58 = v57;
  v59 = v105;
  *(v56 + 24) = v105;
  *(v56 + 32) = v37;
  *(v56 + 40) = v45;
  *(v56 + 48) = v38;
  *(v56 + 56) = v46;
  *(v56 + 57) = 1;
  v121 = sub_213F3BC90;
  v122 = v56;
  sub_213DD74C4(v58, v59);
  v60 = v37;

  v61 = v98;
  v63 = v113;
  v62 = v114;
  v64 = v112;
  sub_213F4E7A0();

  (*(v95 + 8))(v54, v62);
  v121 = v62;
  v122 = &type metadata for CarGestureRepresentable;
  v123 = v63;
  v124 = v64;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v102;
  v67 = v108;
  sub_213DBFEEC(v61, v108, v65);
  v117 = *(v101 + 8);
  (v117)(v61, v67);
  sub_213DBFEEC(v66, v67, v65);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v69 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v121 = v68;
  v122 = v69;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v109;
  sub_213E95440(v61, v67, v115, v65, v70);
  sub_213DD7558(v107, v105);
  v72 = v117;
  (v117)(v61, v67);
  (v72)(v102, v67);
  v73 = v71;
LABEL_7:
  v121 = v62;
  v122 = &type metadata for CarGestureRepresentable;
  v123 = v63;
  v124 = v64;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v82 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v121 = v81;
  v122 = v82;
  v83 = swift_getOpaqueTypeConformance2();
  v119 = v80;
  v120 = v83;
  v84 = v111;
  v85 = swift_getWitnessTable();
  sub_213DBFEEC(v73, v84, v85);
  return (*(v110 + 8))(v73, v84);
}

double sub_213F2D658()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_213F2732C(&v10 - v5);
  sub_213F4D280();
  v7 = sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 0.0;
  if (v7)
  {
    return 8.0;
  }

  return result;
}

double sub_213F2D784()
{
  v0 = sub_213F4D290();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_213F2732C(&v10 - v5);
  sub_213F4D280();
  v7 = sub_213F4D270();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  result = 8.0;
  if (v7)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_213F2D8B0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7F0, &qword_213F64840);
  MEMORY[0x28223BE20](v133);
  v134 = &v107 - v4;
  v130 = sub_213F4DCA0();
  v114 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v113 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7E8, &qword_213F64838);
  v112 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v110 = &v107 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7F8, &qword_213F64848);
  v117 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v115 = &v107 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC800, &qword_213F64850);
  MEMORY[0x28223BE20](v124);
  v127 = &v107 - v8;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7C8, &qword_213F64818);
  MEMORY[0x28223BE20](v108);
  v109 = &v107 - v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7C0, &qword_213F64810);
  MEMORY[0x28223BE20](v123);
  v111 = &v107 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC808, &qword_213F64858);
  v118 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v116 = &v107 - v11;
  v122 = sub_213F4D290();
  v121 = *(v122 - 8);
  v12 = MEMORY[0x28223BE20](v122);
  v120 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v107 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7B8, &qword_213F64808);
  MEMORY[0x28223BE20](v132);
  v125 = &v107 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7B0, &qword_213F64800);
  v145 = *(v16 - 8);
  v146 = v16;
  MEMORY[0x28223BE20](v16);
  v131 = &v107 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7A8, &qword_213F647F8);
  MEMORY[0x28223BE20](v18 - 8);
  v144 = &v107 - v19;
  v142 = sub_213F4D390();
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v138 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RoutePlanningCellPrimaryActionLabel(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC810, &qword_213F64860);
  v143 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v136 = &v107 - v24;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7D8, &qword_213F64828) - 8;
  MEMORY[0x28223BE20](v141);
  v137 = &v107 - v25;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC7D0, &qword_213F64820);
  MEMORY[0x28223BE20](v149 - 8);
  v27 = &v107 - v26;
  v135 = v2 + a1[11];
  v28 = v135;
  v139 = *(type metadata accessor for RoutePlanningCellViewModel(0) + 32);
  v29 = *(v28 + v139);
  v30 = *(v2 + a1[12]);
  v31 = v2;
  v35 = sub_213F27A24(a1, v32, v33, v34) == 1;
  LOBYTE(v28) = *(v31 + a1[13]);
  *v23 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v36 = v21[5];
  *(v23 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  v37 = v27;
  swift_storeEnumTagMultiPayload();
  *(v23 + v21[6]) = v29;
  *(v23 + v21[7]) = v30;
  *(v23 + v21[8]) = v35;
  *(v23 + v21[9]) = v28;
  v38 = v31;
  v39 = v140;
  v40 = v138;
  v41 = v142;
  (*(v140 + 104))(v138, *MEMORY[0x277CDF9E8], v142);
  sub_213F39194(qword_281183A78, type metadata accessor for RoutePlanningCellPrimaryActionLabel, &unk_213F643A0);
  v42 = v136;
  sub_213F4E560();
  (*(v39 + 8))(v40, v41);
  sub_213F3C414(v23, type metadata accessor for RoutePlanningCellPrimaryActionLabel);
  LOBYTE(v41) = sub_213F4E080();
  sub_213F2D784();
  sub_213F4CDA0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v137;
  (*(v143 + 32))(v137, v42, v148);
  v52 = v135;
  v53 = v51 + *(v141 + 44);
  *v53 = v41;
  *(v53 + 8) = v44;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50;
  *(v53 + 40) = 0;
  LOBYTE(v41) = sub_213F4E0B0();
  sub_213F2D658();
  sub_213F4CDA0();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  sub_213DE2B44(v51, v37, &qword_27C8FC7D8, &qword_213F64828);
  v62 = *(v149 + 36);
  v148 = v37;
  v63 = v37 + v62;
  v64 = v139;
  *v63 = v41;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  if (*(v52 + v64))
  {
    v65 = (v38 + a1[16]);
    v66 = *v65;
    if (*v65)
    {
      v67 = v65[1];

      v68 = v119;
      sub_213F2732C(v119);
      v69 = v120;
      sub_213F4D280();
      v70 = sub_213F4D270();
      v71 = *(v121 + 8);
      v72 = v69;
      v73 = v122;
      v71(v72, v122);
      v71(v68, v73);
      v142 = v67;
      v143 = v66;
      if (v70)
      {
        v74 = sub_213F4E050();
        v75 = v109;
        sub_213DE3164(v148, v109, &qword_27C8FC7D0, &qword_213F64820);
        v76 = v75 + *(v108 + 36);
        *v76 = v74;
        *(v76 + 8) = 0x4024000000000000;
        v77 = *(v52 + v64);
        if (v77 > 2)
        {
          if (v77 == 3)
          {
            v78 = 0xEB00000000657475;
            v79 = 0x6F526D6F74737543;
          }

          else if (v77 == 4)
          {
            v78 = 0xED00006E65704F65;
            v79 = 0x7261685365646952;
          }

          else
          {
            v78 = 0xEA00000000006E6FLL;
            v79 = 0x747475426F666E49;
          }
        }

        else if (*(v52 + v64))
        {
          if (v77 == 1)
          {
            v78 = 0xE200000000000000;
            v79 = 28487;
          }

          else
          {
            v78 = 0xE500000000000000;
            v79 = 0x7370657453;
          }
        }

        else
        {
          v78 = 0xE400000000000000;
          v79 = 1701736270;
        }

        v150 = v79;
        v151 = v78;

        MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);

        sub_213F3C1E4();
        v96 = v111;
        sub_213F4E6D0();

        sub_213DE36FC(v75, &qword_27C8FC7C8, &qword_213F64818);
        v97 = swift_allocObject();
        *(v97 + 16) = v66;
        *(v97 + 24) = v67;
        v150 = sub_213F3C4AC;
        v151 = v97;
        v98 = sub_213F3C6EC(&qword_281182D98, &qword_27C8FC7C0, &qword_213F64810, sub_213F3C1E4);
        v99 = sub_213DE295C();

        v100 = v116;
        v101 = v123;
        sub_213F4E7A0();

        sub_213DE36FC(v96, &qword_27C8FC7C0, &qword_213F64810);
        v102 = v118;
        v103 = v126;
        (*(v118 + 16))(v127, v100, v126);
        swift_storeEnumTagMultiPayload();
        v150 = v101;
        v151 = &type metadata for CarGestureRepresentable;
        v152 = v98;
        v153 = v99;
        swift_getOpaqueTypeConformance2();
        v104 = sub_213DE3AE4(&qword_281182770, &qword_27C8FC7E8, &qword_213F64838, MEMORY[0x277CDF028]);
        v105 = sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
        v150 = v128;
        v151 = v130;
        v152 = v104;
        v153 = v105;
        swift_getOpaqueTypeConformance2();
        v95 = v125;
        sub_213F4DBA0();
        (*(v102 + 8))(v100, v103);
      }

      else
      {
        v83 = swift_allocObject();
        *(v83 + 16) = v66;
        *(v83 + 24) = v67;
        MEMORY[0x28223BE20](v83);
        *(&v107 - 2) = v148;
        sub_213F3C29C();

        v84 = v110;
        sub_213F4EB00();
        v85 = v113;
        sub_213F4DC90();
        v86 = sub_213DE3AE4(&qword_281182770, &qword_27C8FC7E8, &qword_213F64838, MEMORY[0x277CDF028]);
        v87 = sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
        v88 = v115;
        v89 = v128;
        v90 = v130;
        sub_213F4E3B0();
        (*(v114 + 8))(v85, v90);
        (*(v112 + 8))(v84, v89);
        v91 = v117;
        v92 = v129;
        (*(v117 + 16))(v127, v88, v129);
        swift_storeEnumTagMultiPayload();
        v93 = sub_213F3C6EC(&qword_281182D98, &qword_27C8FC7C0, &qword_213F64810, sub_213F3C1E4);
        v94 = sub_213DE295C();
        v150 = v123;
        v151 = &type metadata for CarGestureRepresentable;
        v152 = v93;
        v153 = v94;
        swift_getOpaqueTypeConformance2();
        v150 = v89;
        v151 = v90;
        v152 = v86;
        v153 = v87;
        swift_getOpaqueTypeConformance2();
        v95 = v125;
        sub_213F4DBA0();
        (*(v91 + 8))(v88, v92);
      }

      sub_213DE3164(v95, v134, &qword_27C8FC7B8, &qword_213F64808);
      swift_storeEnumTagMultiPayload();
      sub_213F3C01C();
      sub_213F3C29C();
      v82 = v131;
      sub_213F4DBA0();
      sub_213DD7558(v143, v142);
      sub_213DE36FC(v95, &qword_27C8FC7B8, &qword_213F64808);
    }

    else
    {
      sub_213DE3164(v148, v134, &qword_27C8FC7D0, &qword_213F64820);
      swift_storeEnumTagMultiPayload();
      sub_213F3C01C();
      sub_213F3C29C();
      v82 = v131;
      sub_213F4DBA0();
    }

    v81 = v144;
    sub_213DE2B44(v82, v144, &qword_27C8FC7B0, &qword_213F64800);
    v80 = 0;
  }

  else
  {
    v80 = 1;
    v81 = v144;
  }

  (*(v145 + 56))(v81, v80, 1, v146);
  sub_213DE2B44(v81, v147, &qword_27C8FC7A8, &qword_213F647F8);
  return sub_213DE36FC(v148, &qword_27C8FC7D0, &qword_213F64820);
}

uint64_t sub_213F2EB90(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_281183558 != -1)
  {
    swift_once();
  }

  v3 = sub_213F4CC40();
  __swift_project_value_buffer(v3, qword_28118EDE0);
  v4 = sub_213F4CC20();
  v5 = sub_213F4F510();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_213DBA000, v4, v5, "CarPlay route planning cell tapped", v6, 2u);
    MEMORY[0x2160533A0](v6, -1, -1);
  }

  return a2();
}

uint64_t sub_213F2EC84(uint64_t (*a1)(void))
{
  if (qword_281183558 != -1)
  {
    swift_once();
  }

  v2 = sub_213F4CC40();
  __swift_project_value_buffer(v2, qword_28118EDE0);
  v3 = sub_213F4CC20();
  v4 = sub_213F4F510();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_213DBA000, v3, v4, "iOS route planning cell tapped", v5, 2u);
    MEMORY[0x2160533A0](v5, -1, -1);
  }

  return a1();
}

uint64_t sub_213F2ED78(uint64_t a1)
{
  sub_213F4DA50();
  sub_213F28828();
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, v2, v3, v4);
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  sub_213F4ECE0();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  return sub_213F4EBB0();
}

uint64_t sub_213F2F2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v60 = a2;
  v66 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, a2, a3, v7);
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v9 = sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  v80 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v10 = a1;
  v78 = OpaqueTypeConformance2;
  v79 = v9;
  v11 = swift_getOpaqueTypeConformance2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v61 = MEMORY[0x277CE1138];
  v76 = v12;
  v77 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v75[3] = v11;
  v75[4] = swift_getOpaqueTypeConformance2();
  v75[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  v13 = sub_213F4EBC0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = &v55 - v17;
  v67 = v18;
  v64 = sub_213F4F6B0();
  v62 = *(v64 - 8);
  v19 = MEMORY[0x28223BE20](v64);
  v68 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v63 = &v55 - v21;
  v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v78 = v77;
  v22 = v60;
  sub_213F4D400();
  v79 = sub_213F4F6B0();
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v23 = sub_213F4EBC0();
  v24 = swift_getWitnessTable();
  v76 = v23;
  v77 = v24;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v25 = sub_213F4EB40();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v55 - v30;
  v69 = v22;
  v32 = v22;
  v33 = v65;
  v70 = v65;
  v71 = v10;
  sub_213F4D8A0();
  sub_213F4EB30();
  v34 = swift_getWitnessTable();
  v58 = v31;
  v57 = v34;
  sub_213DBFEEC(v29, v25, v34);
  v35 = v26;
  v36 = *(v26 + 8);
  v61 = v26 + 8;
  v59 = v36;
  v36(v29, v25);
  v38 = type metadata accessor for RoutePlanningCell(0, v32, v33, v37);
  v39 = v10 + *(v38 + 44);
  if (*(*(v39 + *(type metadata accessor for RoutePlanningCellViewModel(0) + 44)) + 16))
  {
    v40 = v56;
    sub_213F2C098(v38, v56);
    v41 = v67;
    v42 = swift_getWitnessTable();
    v43 = v55;
    sub_213DBFEEC(v40, v41, v42);
    v44 = *(v14 + 8);
    v44(v40, v41);
    sub_213DBFEEC(v43, v41, v42);
    v44(v43, v41);
    v45 = v68;
    (*(v14 + 32))(v68, v40, v41);
    (*(v14 + 56))(v45, 0, 1, v41);
  }

  else
  {
    (*(v14 + 56))(v68, 1, 1, v67);
    swift_getWitnessTable();
  }

  v46 = v63;
  v47 = v68;
  sub_213F43E1C(v68, v63);
  v48 = v62;
  v49 = *(v62 + 8);
  v50 = v64;
  v49(v47, v64);
  v51 = *(v35 + 16);
  v52 = v58;
  v51(v29, v58, v25);
  v76 = v29;
  (*(v48 + 16))(v47, v46, v50);
  v77 = v47;
  v75[0] = v25;
  v75[1] = v50;
  v73 = v57;
  v72 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  sub_213E95270(&v76, 2uLL, v75);
  v49(v46, v50);
  v53 = v59;
  v59(v52, v25);
  v49(v47, v50);
  return v53(v29, v25);
}

uint64_t sub_213F2FCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a3;
  v52 = a5;
  v45 = a2;
  v6 = type metadata accessor for RoutePlanningCell(0, a2, a3, a4);
  v41 = v6;
  v47 = *(v6 - 1);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v40 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4D0, &qword_213F63DF0);
  v8 = MEMORY[0x28223BE20](v49);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v40 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v64 = v63;
  sub_213F4D400();
  v65 = sub_213F4F6B0();
  v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v11 = sub_213F4EBC0();
  WitnessTable = swift_getWitnessTable();
  v62 = v11;
  v63 = WitnessTable;
  v43 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = &v40 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  v17 = sub_213F4D400();
  v53 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v40 = &v40 - v21;
  v22 = v6;
  v23 = a1;
  sub_213F2A4C8(v22, v16);
  v62 = v11;
  v63 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_213F4E510();
  (*(v14 + 8))(v16, OpaqueTypeMetadata2);
  v25 = sub_213DE3AE4(&qword_281182960, &qword_27C8F99C8, &qword_213F59548, MEMORY[0x277CE04A0]);
  v60 = OpaqueTypeConformance2;
  v61 = v25;
  v42 = swift_getWitnessTable();
  sub_213DBFEEC(v20, v17, v42);
  v43 = *(v53 + 8);
  v43(v20, v17);
  v26 = v44;
  v27 = v41;
  sub_213F2D8B0(v41, v44);
  v28 = v47;
  v29 = v46;
  (*(v47 + 16))(v46, v23, v27);
  v30 = v28;
  v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = v51;
  *(v32 + 16) = v45;
  *(v32 + 24) = v33;
  (*(v30 + 32))(v32 + v31, v29, v27);
  v34 = v49;
  v35 = (v26 + *(v49 + 36));
  *v35 = sub_213E08248;
  v35[1] = 0;
  v35[2] = sub_213F3BE50;
  v35[3] = v32;
  v36 = v40;
  (*(v53 + 16))(v20, v40, v17);
  v58 = 0;
  v59 = 1;
  v62 = v20;
  v63 = &v58;
  v37 = v50;
  sub_213DE3164(v26, v50, &qword_27C8FC4D0, &qword_213F63DF0);
  v64 = v37;
  v57[0] = v17;
  v57[1] = MEMORY[0x277CE1180];
  v57[2] = v34;
  v54 = v42;
  v55 = MEMORY[0x277CE1170];
  v56 = sub_213F3BE54();
  sub_213E95270(&v62, 3uLL, v57);
  sub_213DE36FC(v26, &qword_27C8FC4D0, &qword_213F63DF0);
  v38 = v43;
  v43(v36, v17);
  sub_213DE36FC(v37, &qword_27C8FC4D0, &qword_213F63DF0);
  return v38(v20, v17);
}

uint64_t sub_213F30348(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_213F4D8A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, v1, v2, v3);
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  sub_213F4ECE0();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  return sub_213F4EB30();
}

uint64_t sub_213F30878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a1;
  v73 = a5;
  v75 = a3;
  v76 = type metadata accessor for RoutePlanningCell(0, a2, a3, a4);
  v69 = *(v76 - 1);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v76);
  v68 = &v61 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4D0, &qword_213F63DF0);
  v8 = MEMORY[0x28223BE20](v71);
  v72 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v61 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v94 = v93;
  v74 = a2;
  sub_213F4D400();
  v95 = sub_213F4F6B0();
  v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v11 = sub_213F4EBC0();
  v65 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v92 = v11;
  v93 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, a2, a3, v15);
  v16 = sub_213F4F6B0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  v18 = sub_213F39294();
  v92 = v17;
  v93 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v91 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v92 = v14;
  v93 = v16;
  v94 = OpaqueTypeConformance2;
  v95 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v92 = v14;
  v93 = v16;
  v94 = OpaqueTypeConformance2;
  v95 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = sub_213DE295C();
  v92 = v21;
  v93 = &type metadata for CarGestureRepresentable;
  v94 = v22;
  v95 = v23;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  v24 = sub_213F4DBB0();
  v25 = sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  v92 = v13;
  v93 = MEMORY[0x277D83B88];
  v94 = v24;
  v95 = v25;
  v96 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v92 = v21;
  v93 = &type metadata for CarGestureRepresentable;
  v94 = v22;
  v95 = v23;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v28 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v92 = v27;
  v93 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v89 = v26;
  v90 = v29;
  v88 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  v63 = swift_getWitnessTable();
  v30 = sub_213F4EBC0();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v61 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  v34 = sub_213F4D400();
  OpaqueTypeMetadata2 = *(v34 - 8);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v62 = &v61 - v38;
  sub_213F4DA50();
  v39 = v66;
  sub_213F28828();
  v77 = v74;
  v78 = v75;
  v79 = v39;
  sub_213F4EBB0();
  v40 = swift_getWitnessTable();
  sub_213F4E510();
  (*(v31 + 8))(v33, v30);
  v41 = sub_213DE3AE4(&qword_281182960, &qword_27C8F99C8, &qword_213F59548, MEMORY[0x277CE04A0]);
  v86 = v40;
  v87 = v41;
  v63 = swift_getWitnessTable();
  sub_213DBFEEC(v37, v34, v63);
  v42 = OpaqueTypeMetadata2;
  v65 = *(OpaqueTypeMetadata2 + 8);
  v65(v37, v34);
  v43 = v67;
  v44 = v76;
  sub_213F2D8B0(v76, v67);
  v45 = v69;
  v46 = v68;
  v47 = v39;
  v48 = v44;
  (*(v69 + 16))(v68, v47, v44);
  v49 = v45;
  v50 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v51 = swift_allocObject();
  v52 = v75;
  *(v51 + 16) = v74;
  *(v51 + 24) = v52;
  (*(v49 + 32))(v51 + v50, v46, v48);
  v53 = v71;
  v54 = v43;
  v55 = (v43 + *(v71 + 36));
  *v55 = sub_213E08248;
  v55[1] = 0;
  v55[2] = sub_213F3CB7C;
  v55[3] = v51;
  v56 = v62;
  (*(v42 + 16))(v37, v62, v34);
  v84 = 0;
  v85 = 1;
  v92 = v37;
  v93 = &v84;
  v57 = v72;
  sub_213DE3164(v54, v72, &qword_27C8FC4D0, &qword_213F63DF0);
  v94 = v57;
  v83[0] = v34;
  v83[1] = MEMORY[0x277CE1180];
  v83[2] = v53;
  v80 = v63;
  v81 = MEMORY[0x277CE1170];
  v82 = sub_213F3BE54();
  sub_213E95270(&v92, 3uLL, v83);
  sub_213DE36FC(v54, &qword_27C8FC4D0, &qword_213F63DF0);
  v58 = v56;
  v59 = v65;
  v65(v58, v34);
  sub_213DE36FC(v57, &qword_27C8FC4D0, &qword_213F63DF0);
  return v59(v37, v34);
}

uint64_t sub_213F312B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v61 = a1;
  v62 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, a2, a3, v6);
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v8 = sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  v73 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v71 = OpaqueTypeConformance2;
  v72 = v8;
  v9 = swift_getOpaqueTypeConformance2();
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v70 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v68[3] = v9;
  v68[4] = swift_getOpaqueTypeConformance2();
  v68[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_213F4EBC0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v50 - v14;
  v63 = v15;
  v16 = sub_213F4F6B0();
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v64 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = &v50 - v19;
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v71 = v70;
  sub_213F4D400();
  v72 = sub_213F4F6B0();
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v20 = sub_213F4EBC0();
  v21 = swift_getWitnessTable();
  v69 = v20;
  v70 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = *(OpaqueTypeMetadata2 - 8);
  v24 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v50 - v27;
  v30 = type metadata accessor for RoutePlanningCell(0, a2, v60, v29);
  v31 = v61;
  sub_213F2A4C8(v30, v26);
  v69 = v20;
  v70 = v21;
  v32 = swift_getOpaqueTypeConformance2();
  v60 = v28;
  v53 = v32;
  sub_213DBFEEC(v26, OpaqueTypeMetadata2, v32);
  v54 = v23;
  v33 = *(v23 + 8);
  v56 = v23 + 8;
  v55 = v33;
  v33(v26, OpaqueTypeMetadata2);
  v34 = v31 + *(v30 + 44);
  if (*(*(v34 + *(type metadata accessor for RoutePlanningCellViewModel(0) + 44)) + 16))
  {
    v35 = v51;
    sub_213F2C098(v30, v51);
    v36 = v63;
    v37 = swift_getWitnessTable();
    v38 = v52;
    sub_213DBFEEC(v35, v36, v37);
    v39 = *(v11 + 8);
    v39(v35, v36);
    sub_213DBFEEC(v38, v36, v37);
    v39(v38, v36);
    v40 = v64;
    (*(v11 + 32))(v64, v35, v36);
    (*(v11 + 56))(v40, 0, 1, v36);
  }

  else
  {
    (*(v11 + 56))(v64, 1, 1, v63);
    swift_getWitnessTable();
  }

  v41 = v57;
  v42 = v64;
  sub_213F43E1C(v64, v57);
  v43 = v58;
  v44 = v59;
  v45 = *(v58 + 8);
  v45(v42, v59);
  v46 = v60;
  (*(v54 + 16))(v26, v60, OpaqueTypeMetadata2);
  v69 = v26;
  (*(v43 + 16))(v42, v41, v44);
  v70 = v42;
  v68[0] = OpaqueTypeMetadata2;
  v68[1] = v44;
  v66 = v53;
  v65 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  sub_213E95270(&v69, 2uLL, v68);
  v45(v41, v44);
  v47 = v46;
  v48 = v55;
  v55(v47, OpaqueTypeMetadata2);
  v45(v42, v44);
  return v48(v26, OpaqueTypeMetadata2);
}

uint64_t sub_213F31BCC(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for RoutePlanningCell(0, a3, a4, a4);
  v6 = sub_213F27D3C();
  return sub_213F27C7C(v5, v4 + v6 + v6);
}

uint64_t sub_213F31C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a1;
  v57 = a2;
  v58 = a4;
  v54 = *(a3 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](a1);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC4A8, &qword_213F63DB8);
  v44 = v6;
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = *(a3 + 16);
  v51 = *(a3 + 24);
  v52 = v9;
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, v9, v51, v10);
  v11 = sub_213F4F6B0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  v13 = sub_213F391DC();
  v61 = v12;
  v62 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v61 = v6;
  v62 = v11;
  v63 = OpaqueTypeConformance2;
  v64 = v45;
  v43 = OpaqueTypeConformance2;
  v46 = MEMORY[0x277CDEEB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v47 = OpaqueTypeMetadata2;
  v48 = v16;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v43 - v17;
  v61 = sub_213F4E8D0();
  LOBYTE(v62) = 0;
  sub_213F4E840();

  v19 = v49;
  v61 = sub_213F27BB4(a3, v20, v21, v22);
  v62 = v23;
  LOBYTE(v63) = v24;
  LOBYTE(v59) = 1;
  v25 = swift_checkMetadataState();
  v26 = v44;
  v27 = v45;
  sub_213F4E770();

  v28 = v8;
  v29 = v26;
  (*(v50 + 8))(v28, v26);
  v31 = v53;
  v30 = v54;
  v32 = v19;
  v33 = a3;
  (*(v54 + 16))(v53, v32, a3);
  v34 = v30;
  v35 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v36 = (v55 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v51;
  *(v37 + 16) = v52;
  *(v37 + 24) = v38;
  (*(v34 + 32))(v37 + v35, v31, v33);
  v39 = (v37 + v36);
  v40 = v57;
  *v39 = v56;
  v39[1] = v40;
  v59 = sub_213F3BADC;
  v60 = v37;

  v61 = v29;
  v62 = v25;
  v63 = v43;
  v64 = v27;
  swift_getOpaqueTypeConformance2();
  sub_213DE295C();
  v41 = v47;
  sub_213F4E7A0();

  return (*(v48 + 8))(v18, v41);
}

uint64_t sub_213F320A8(_BYTE *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != 1)
  {
    return a3();
  }

  result = type metadata accessor for RoutePlanningCell(0, a5, a6, a4);
  v8 = a2 + *(result + 64);
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 8);

    v9(v11);

    return sub_213DD7558(v9, v10);
  }

  return result;
}

uint64_t sub_213F32138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  v3 = *(a1 + 16);
  v41 = *(a1 + 24);
  v42 = a1;
  v40 = v3;
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, v3, v41, v4);
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  sub_213F391DC();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v37 = sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  v39 = sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  v57 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v55 = OpaqueTypeConformance2;
  v56 = v37;
  v6 = swift_getOpaqueTypeConformance2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v54 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v51 = v6;
  v52 = swift_getOpaqueTypeConformance2();
  v50 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata2();
  v34[1] = sub_213F4EFE0();
  v34[0] = swift_getWitnessTable();
  v7 = sub_213F4EBE0();
  v37 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v36 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v35 = v34 - v10;
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v11 = sub_213F4EBE0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v34 - v16;
  v39 = sub_213F4DBB0();
  OpaqueTypeMetadata2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v19 = v34 - v18;
  v20 = *(v43 + *(v42 + 52));
  v45 = v40;
  v46 = v41;
  v47 = v43;
  sub_213F4EEE0();
  if (v20 == 1)
  {
    sub_213F4EBD0();
    v21 = swift_getWitnessTable();
    sub_213DBFEEC(v15, v11, v21);
    v22 = *(v12 + 8);
    v22(v15, v11);
    sub_213DBFEEC(v17, v11, v21);
    v23 = swift_getWitnessTable();
    sub_213E95440(v15, v11, v7, v21, v23);
    v22(v15, v11);
    v22(v17, v11);
  }

  else
  {
    v24 = v36;
    sub_213F4EBD0();
    v25 = swift_getWitnessTable();
    v26 = v35;
    sub_213DBFEEC(v24, v7, v25);
    v27 = *(v37 + 8);
    v27(v24, v7);
    sub_213DBFEEC(v26, v7, v25);
    v28 = swift_getWitnessTable();
    sub_213DBFF2C(v24, v11, v7, v28, v25);
    v27(v24, v7);
    v27(v26, v7);
  }

  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v48 = v29;
  v49 = v30;
  v31 = v39;
  v32 = swift_getWitnessTable();
  sub_213DBFEEC(v19, v31, v32);
  return (*(OpaqueTypeMetadata2 + 8))(v19, v31);
}

uint64_t sub_213F32CD0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a3;
  v75 = a1;
  v74 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v71 = a2;
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  v80 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  v79 = MEMORY[0x277CDEAE8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v77 = sub_213F4EB40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, a2, a3, v6);
  v7 = sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  v81 = MEMORY[0x277CDEF60];
  swift_getOpaqueTypeConformance2();
  v84[5] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = sub_213DE295C();
  v69 = MEMORY[0x277CDEEC8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  v89 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v87 = OpaqueTypeConformance2;
  v88 = v10;
  v11 = swift_getOpaqueTypeConformance2();
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v86 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v84[3] = v11;
  v84[4] = swift_getOpaqueTypeConformance2();
  v84[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v73 = sub_213F4EBC0();
  v70 = *(v73 - 8);
  v12 = MEMORY[0x28223BE20](v73);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  v17 = sub_213F391DC();
  v85 = v16;
  v86 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v85 = v15;
  v86 = v7;
  v87 = v18;
  v88 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = v15;
  v86 = v7;
  v20 = OpaqueTypeMetadata2;
  v87 = v18;
  v88 = WitnessTable;
  v21 = swift_getOpaqueTypeConformance2();
  v85 = v20;
  v86 = &type metadata for CarGestureRepresentable;
  v87 = v21;
  v81 = v10;
  v88 = v10;
  v22 = v75;
  v23 = swift_getOpaqueTypeMetadata2();
  v67 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v66 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v65 = &v63 - v26;
  v27 = sub_213F4D290();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v63 - v32;
  v69 = sub_213F4F6B0();
  v68 = *(v69 - 8);
  v34 = MEMORY[0x28223BE20](v69);
  v36 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v79 = &v63 - v37;
  v39 = type metadata accessor for RoutePlanningCell(0, v71, v78, v38);
  v77 = v21;
  v78 = v39;
  v40 = (v22 + *(v39 + 60));
  v41 = *v40;
  v76 = v20;
  if (!v41)
  {
    goto LABEL_5;
  }

  v64 = v23;
  v71 = v36;
  v42 = v40[1];

  v43 = v78;
  sub_213F2732C(v33);
  sub_213F4D280();
  v44 = sub_213F4D270();
  v45 = *(v28 + 8);
  v45(v31, v27);
  v45(v33, v27);
  if ((v44 & 1) == 0)
  {
    sub_213DD7558(v41, v42);
    v20 = v76;
    v21 = v77;
    v36 = v71;
    v23 = v64;
LABEL_5:
    (*(v67 + 56))(v36, 1, 1, v23);
    v85 = v20;
    v86 = &type metadata for CarGestureRepresentable;
    v87 = v21;
    v88 = v81;
    swift_getOpaqueTypeConformance2();
    goto LABEL_6;
  }

  v46 = v66;
  sub_213F31C20(v41, v42, v43, v66);
  sub_213DD7558(v41, v42);
  v85 = v76;
  v86 = &type metadata for CarGestureRepresentable;
  v87 = v77;
  v88 = v81;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v65;
  v49 = v64;
  sub_213DBFEEC(v46, v64, v47);
  v50 = v67;
  v51 = *(v67 + 8);
  v51(v46, v49);
  sub_213DBFEEC(v48, v49, v47);
  v51(v48, v49);
  v36 = v71;
  (*(v50 + 32))(v71, v46, v49);
  (*(v50 + 56))(v36, 0, 1, v49);
LABEL_6:
  v52 = v79;
  sub_213F43E1C(v36, v79);
  v53 = v68;
  v71 = *(v68 + 8);
  v54 = v69;
  (v71)(v36, v69);
  v55 = v72;
  sub_213F2ED78(v78);
  v56 = v73;
  v78 = swift_getWitnessTable();
  sub_213DBFEEC(v55, v56, v78);
  v57 = v70;
  v58 = *(v70 + 8);
  v58(v55, v56);
  (*(v53 + 16))(v36, v52, v54);
  v84[0] = v36;
  v59 = v36;
  v60 = v80;
  (*(v57 + 16))(v55, v80, v56);
  v84[1] = v55;
  v83[0] = v54;
  v83[1] = v56;
  v85 = v76;
  v86 = &type metadata for CarGestureRepresentable;
  v87 = v77;
  v88 = v81;
  v82 = swift_getOpaqueTypeConformance2();
  v85 = swift_getWitnessTable();
  v86 = v78;
  sub_213E95270(v84, 2uLL, v83);
  v58(v60, v56);
  v61 = v71;
  (v71)(v79, v54);
  v58(v55, v56);
  return (v61)(v59, v54);
}

uint64_t sub_213F33984@<X0>(uint64_t a1@<X0>, char *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a3;
  v75 = a1;
  v74 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v73 = a2;
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  v80 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  v77 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, a2, a3, v6);
  v7 = sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  v81 = MEMORY[0x277CDEF60];
  swift_getOpaqueTypeConformance2();
  v84[5] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v10 = sub_213DE295C();
  v69 = MEMORY[0x277CDEEC8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  v89 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v87 = OpaqueTypeConformance2;
  v88 = v10;
  v11 = swift_getOpaqueTypeConformance2();
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v86 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v84[3] = v11;
  v84[4] = swift_getOpaqueTypeConformance2();
  v84[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v72 = sub_213F4EB40();
  v70 = *(v72 - 8);
  v12 = MEMORY[0x28223BE20](v72);
  v71 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = &v63 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  v17 = sub_213F391DC();
  v85 = v16;
  v86 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v85 = v15;
  v86 = v7;
  v87 = v18;
  v88 = WitnessTable;
  v19 = swift_getOpaqueTypeMetadata2();
  v85 = v15;
  v86 = v7;
  v20 = v75;
  v87 = v18;
  v88 = WitnessTable;
  v21 = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v85 = v21;
  v86 = &type metadata for CarGestureRepresentable;
  v87 = v22;
  v81 = v10;
  v88 = v10;
  v23 = swift_getOpaqueTypeMetadata2();
  v67 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v66 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v65 = &v63 - v26;
  v27 = sub_213F4D290();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v63 - v32;
  v69 = sub_213F4F6B0();
  v68 = *(v69 - 8);
  v34 = MEMORY[0x28223BE20](v69);
  v36 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  OpaqueTypeMetadata2 = &v63 - v37;
  v39 = type metadata accessor for RoutePlanningCell(0, v73, v78, v38);
  v77 = v22;
  v78 = v39;
  v40 = (v20 + *(v39 + 60));
  v41 = *v40;
  v76 = v21;
  if (!v41)
  {
    goto LABEL_5;
  }

  v64 = v23;
  v73 = v36;
  v42 = v40[1];

  v43 = v78;
  sub_213F2732C(v33);
  sub_213F4D280();
  v44 = sub_213F4D270();
  v45 = *(v28 + 8);
  v45(v31, v27);
  v45(v33, v27);
  if ((v44 & 1) == 0)
  {
    sub_213DD7558(v41, v42);
    v21 = v76;
    v22 = v77;
    v36 = v73;
    v23 = v64;
LABEL_5:
    (*(v67 + 56))(v36, 1, 1, v23);
    v85 = v21;
    v86 = &type metadata for CarGestureRepresentable;
    v87 = v22;
    v88 = v81;
    swift_getOpaqueTypeConformance2();
    goto LABEL_6;
  }

  v46 = v66;
  sub_213F31C20(v41, v42, v43, v66);
  sub_213DD7558(v41, v42);
  v85 = v76;
  v86 = &type metadata for CarGestureRepresentable;
  v87 = v77;
  v88 = v81;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v65;
  v49 = v64;
  sub_213DBFEEC(v46, v64, v47);
  v50 = v67;
  v51 = *(v67 + 8);
  v51(v46, v49);
  sub_213DBFEEC(v48, v49, v47);
  v51(v48, v49);
  v36 = v73;
  (*(v50 + 32))(v73, v46, v49);
  (*(v50 + 56))(v36, 0, 1, v49);
LABEL_6:
  v52 = OpaqueTypeMetadata2;
  sub_213F43E1C(v36, OpaqueTypeMetadata2);
  v53 = v68;
  v73 = *(v68 + 8);
  v54 = v69;
  (v73)(v36, v69);
  v55 = v71;
  sub_213F30348(v78);
  v56 = v72;
  v78 = swift_getWitnessTable();
  sub_213DBFEEC(v55, v56, v78);
  v57 = v70;
  v58 = *(v70 + 8);
  v58(v55, v56);
  (*(v53 + 16))(v36, v52, v54);
  v84[0] = v36;
  v59 = v36;
  v60 = v80;
  (*(v57 + 16))(v55, v80, v56);
  v84[1] = v55;
  v83[0] = v54;
  v83[1] = v56;
  v85 = v76;
  v86 = &type metadata for CarGestureRepresentable;
  v87 = v77;
  v88 = v81;
  v82 = swift_getOpaqueTypeConformance2();
  v85 = swift_getWitnessTable();
  v86 = v78;
  sub_213E95270(v84, 2uLL, v83);
  v58(v60, v56);
  v61 = v73;
  (v73)(OpaqueTypeMetadata2, v54);
  v58(v55, v56);
  return (v61)(v59, v54);
}

uint64_t RoutePlanningCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v276 = a2;
  v262 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v260 = v3;
  v261 = v211 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  v293 = a1;
  v5 = *(a1 + 16);
  v278 = *(a1 + 24);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, v5, v278, v6);
  v7 = sub_213F4F6B0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  v9 = sub_213F391DC();
  *&v350 = v8;
  *(&v350 + 1) = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  *&v350 = v4;
  *(&v350 + 1) = v7;
  v12 = v7;
  v292 = v7;
  v351 = OpaqueTypeConformance2;
  v352 = v11;
  v13 = v11;
  v296 = v11;
  v14 = MEMORY[0x277CDEEB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v350 = v4;
  *(&v350 + 1) = v12;
  v351 = OpaqueTypeConformance2;
  v352 = v13;
  v16 = swift_getOpaqueTypeConformance2();
  v290 = sub_213DE295C();
  *&v350 = OpaqueTypeMetadata2;
  *(&v350 + 1) = &type metadata for CarGestureRepresentable;
  v351 = v16;
  v352 = v290;
  swift_getOpaqueTypeMetadata2();
  v297 = sub_213F4F6B0();
  *&v350 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  *(&v350 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  v351 = *(&v350 + 1);
  v279 = v5;
  sub_213F4D400();
  v352 = sub_213F4F6B0();
  v353 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v17 = sub_213F4EBC0();
  v18 = swift_getWitnessTable();
  *&v350 = v17;
  *(&v350 + 1) = v18;
  v289 = MEMORY[0x277CDEAE8];
  v291 = swift_getOpaqueTypeMetadata2();
  v295 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  v294 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v288 = sub_213F4EB40();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  v22 = sub_213F39294();
  *&v350 = v21;
  *(&v350 + 1) = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v292;
  *&v350 = v20;
  *(&v350 + 1) = v292;
  v25 = v296;
  v351 = v23;
  v352 = v296;
  v286 = v14;
  v26 = swift_getOpaqueTypeMetadata2();
  *&v350 = v20;
  *(&v350 + 1) = v24;
  v351 = v23;
  v352 = v25;
  v27 = swift_getOpaqueTypeConformance2();
  *&v350 = v26;
  *(&v350 + 1) = &type metadata for CarGestureRepresentable;
  v351 = v27;
  v28 = v290;
  v352 = v290;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  v29 = sub_213F4DBB0();
  v30 = sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  *&v350 = v19;
  *(&v350 + 1) = MEMORY[0x277D83B88];
  v351 = v29;
  v352 = v30;
  v353 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  *&v350 = v26;
  *(&v350 + 1) = &type metadata for CarGestureRepresentable;
  v351 = v27;
  v352 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v33 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  *&v350 = v32;
  *(&v350 + 1) = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v348 = v31;
  v349 = v34;
  v347 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  v282 = sub_213F4DBB0();
  v294 = sub_213F4D400();
  v35 = sub_213F4D400();
  v36 = sub_213F4D400();
  v37 = sub_213F4D400();
  v249 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v248 = v211 - v38;
  v285 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B38, &qword_213F60B00);
  v291 = v37;
  v39 = sub_213F4D400();
  v252 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v250 = v211 - v40;
  v284 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  v290 = v39;
  v41 = sub_213F4D400();
  v253 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v251 = v211 - v42;
  v289 = v43;
  v44 = sub_213F4D400();
  v256 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v255 = v211 - v45;
  v288 = v46;
  v287 = sub_213F4D400();
  v259 = *(v287 - 8);
  v47 = MEMORY[0x28223BE20](v287);
  v258 = v211 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v254 = v211 - v50;
  MEMORY[0x28223BE20](v49);
  v257 = v211 - v51;
  v52 = sub_213F4CEA0();
  v270 = *(v52 - 8);
  v271 = v52;
  MEMORY[0x28223BE20](v52);
  v268 = v211 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_213F4DCA0();
  v241 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v240 = v211 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v345 = v56;
  v346 = v57;
  v265 = swift_getWitnessTable();
  v58 = MEMORY[0x277CDF918];
  v343 = v265;
  v344 = MEMORY[0x277CDF918];
  v266 = swift_getWitnessTable();
  v341 = v266;
  v342 = v58;
  v281 = v35;
  v267 = swift_getWitnessTable();
  v339 = v267;
  v340 = v58;
  v297 = v36;
  v295 = swift_getWitnessTable();
  v59 = sub_213F4EB20();
  v230 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v222 = v211 - v60;
  v61 = swift_getWitnessTable();
  v62 = sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  *&v350 = v59;
  *(&v350 + 1) = v54;
  v351 = v61;
  v352 = v62;
  v63 = swift_getOpaqueTypeMetadata2();
  v223 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v219 = v211 - v64;
  v232 = v59;
  *&v350 = v59;
  *(&v350 + 1) = v54;
  v242 = v54;
  v216 = v62;
  v217 = v61;
  v351 = v61;
  v352 = v62;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v292;
  *&v350 = v63;
  *(&v350 + 1) = v292;
  v351 = v65;
  v352 = v296;
  v67 = swift_getOpaqueTypeMetadata2();
  v221 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v218 = v211 - v68;
  v225 = v69;
  v70 = sub_213F4D400();
  v224 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v220 = v211 - v71;
  v72 = sub_213F4D400();
  v233 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v226 = v211 - v73;
  v74 = sub_213F4D400();
  v236 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v231 = v211 - v75;
  v76 = sub_213F4D400();
  v239 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v234 = v211 - v77;
  v227 = v63;
  *&v350 = v63;
  *(&v350 + 1) = v66;
  v215 = v65;
  v351 = v65;
  v352 = v296;
  v211[0] = swift_getOpaqueTypeConformance2();
  v337 = v211[0];
  v338 = MEMORY[0x277CDFC60];
  v228 = v70;
  v78 = swift_getWitnessTable();
  v79 = sub_213DE3AE4(&qword_281182898, &qword_27C8F9B38, &qword_213F60B00, MEMORY[0x277CE0868]);
  v211[1] = v78;
  v335 = v78;
  v286 = v79;
  v336 = v79;
  v235 = v72;
  v80 = swift_getWitnessTable();
  v81 = sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938, MEMORY[0x277CE0328]);
  v213 = v80;
  v333 = v80;
  v285 = v81;
  v334 = v81;
  v238 = v74;
  v82 = swift_getWitnessTable();
  v83 = sub_213DD9674();
  v212 = v82;
  v331 = v82;
  v284 = v83;
  v332 = v83;
  v84 = swift_getWitnessTable();
  v277 = v76;
  v85 = v297;
  *&v350 = v76;
  *(&v350 + 1) = v297;
  v283 = v84;
  v351 = v84;
  v352 = v295;
  v86 = swift_getOpaqueTypeMetadata2();
  v237 = *(v86 - 8);
  v87 = MEMORY[0x28223BE20](v86);
  v229 = v211 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x28223BE20](v87);
  v214 = v211 - v90;
  MEMORY[0x28223BE20](v89);
  v247 = v211 - v91;
  v92 = sub_213F4D290();
  v245 = *(v92 - 8);
  v246 = v92;
  v93 = MEMORY[0x28223BE20](v92);
  v244 = v211 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v243 = v211 - v95;
  v272 = v86;
  v275 = sub_213F4DBB0();
  v274 = *(v275 - 8);
  v96 = MEMORY[0x28223BE20](v275);
  v273 = v211 - v97;
  v98 = *(v282 - 8);
  v99 = MEMORY[0x28223BE20](v96);
  v101 = v211 - v100;
  v263 = *(v294 - 8);
  v102 = MEMORY[0x28223BE20](v99);
  v104 = v211 - v103;
  v264 = *(v281 - 8);
  v105 = MEMORY[0x28223BE20](v102);
  v107 = v211 - v106;
  v269 = *(v85 - 8);
  MEMORY[0x28223BE20](v105);
  v109 = v211 - v108;
  v110 = v293;
  v111 = v280;
  sub_213F32138(v293, v101);
  sub_213F4E040();
  sub_213F27D3C();
  v112 = v282;
  sub_213F4E7D0();
  (*(v98 + 8))(v101, v112);
  sub_213F4E060();
  sub_213F27E68();
  v113 = v294;
  sub_213F4E7D0();
  (*(v263 + 8))(v104, v113);
  sub_213F4E070();
  sub_213F280C0();
  v294 = v109;
  v114 = v281;
  sub_213F4E7D0();
  (*(v264 + 8))(v107, v114);
  v115 = v111;
  v116 = (v111 + *(v110 + 60));
  if (*v116)
  {
    v117 = *v116;
    v118 = v116[1];

    v119 = v243;
    sub_213F2732C(v243);
    v120 = v244;
    sub_213F4D280();
    sub_213F39194(&qword_2811834A8, MEMORY[0x277CDF7E8], MEMORY[0x277CDF7F0]);
    v121 = v246;
    v122 = sub_213F4F1F0();
    v123 = *(v245 + 8);
    v123(v120, v121);
    v123(v119, v121);
    if ((v122 & 1) == 0)
    {
      v163 = swift_allocObject();
      v281 = v117;
      *(v163 + 16) = v117;
      *(v163 + 24) = v118;
      MEMORY[0x28223BE20](v163);

      v164 = v222;
      sub_213F4EB00();
      v165 = v240;
      sub_213F4DC90();
      v166 = v219;
      v282 = v118;
      v167 = v232;
      v168 = v242;
      sub_213F4E3B0();
      (*(v241 + 8))(v165, v168);
      (*(v230 + 8))(v164, v167);
      v169 = v293;
      *&v350 = sub_213F27BB4(v293, v170, v171, v172);
      *(&v350 + 1) = v173;
      LOBYTE(v351) = v174;
      v308 = 0;
      swift_checkMetadataState();
      v175 = v218;
      v176 = v227;
      sub_213F4E770();

      (*(v223 + 8))(v166, v176);
      sub_213F28224();
      sub_213F4EEE0();
      v177 = v225;
      v178 = v220;
      sub_213F4E750();
      (*(v221 + 8))(v175, v177);
      v179 = v268;
      sub_213F2752C(v169, v268);
      v180 = v226;
      v181 = v228;
      sub_213F4E3D0();
      (*(v270 + 8))(v179, v271);
      (*(v224 + 8))(v178, v181);
      LOBYTE(v179) = sub_213F27884();
      v182 = v115 + *(v169 + 44);
      LOBYTE(v178) = *(v182 + *(type metadata accessor for RoutePlanningCellViewModel(0) + 36));
      v186 = sub_213F27A24(v169, v183, v184, v185) == 0;
      v187 = v179 & 1;
      v188 = v231;
      v189 = v235;
      View.backgroundPlatter(isCarPlay:isHighlighted:isFocused:)(v187, v178, v186, v235, v213);
      (*(v233 + 8))(v180, v189);
      v350 = xmmword_213F63D10;
      LOBYTE(v351) = 2;
      v190 = v234;
      v191 = v238;
      View.mapsDesignAXContainer(withID:)(&v350, v238, v212);
      sub_213DD9350(v350, *(&v350 + 1), v351);
      v192 = (*(v236 + 8))(v188, v191);
      MEMORY[0x28223BE20](v192);
      v193 = v297;
      v194 = v214;
      v195 = v277;
      v196 = v283;
      v151 = v295;
      sub_213F4E680();
      (*(v239 + 8))(v190, v195);
      *&v350 = v195;
      *(&v350 + 1) = v193;
      v351 = v196;
      v352 = v151;
      v197 = swift_getOpaqueTypeConformance2();
      v198 = v247;
      v199 = v272;
      sub_213DBFEEC(v194, v272, v197);
      v200 = *(v237 + 8);
      v200(v194, v199);
      v201 = v229;
      sub_213DBFEEC(v198, v199, v197);
      v306 = v151;
      v307 = MEMORY[0x277CDFC60];
      v304 = swift_getWitnessTable();
      v305 = v286;
      v302 = swift_getWitnessTable();
      v303 = v285;
      v300 = swift_getWitnessTable();
      v301 = v284;
      v298 = swift_getWitnessTable();
      v161 = MEMORY[0x277CE0790];
      v299 = MEMORY[0x277CE0790];
      v202 = v287;
      v203 = swift_getWitnessTable();
      v159 = v273;
      sub_213E95440(v201, v199, v202, v197, v203);
      sub_213DD7558(v281, v282);
      v200(v201, v199);
      v204 = v199;
      v162 = v294;
      v200(v247, v204);
      v157 = v277;
      goto LABEL_6;
    }

    sub_213DD7558(v117, v118);
  }

  v124 = v293;
  v125 = v115;
  sub_213F28224();
  sub_213F4EEE0();
  v126 = v295;
  v127 = v248;
  sub_213F4E750();
  v128 = v268;
  sub_213F2752C(v124, v268);
  v329 = v126;
  v330 = MEMORY[0x277CDFC60];
  v129 = v291;
  v130 = swift_getWitnessTable();
  v131 = v250;
  sub_213F4E3D0();
  (*(v270 + 8))(v128, v271);
  (*(v249 + 8))(v127, v129);
  LOBYTE(v128) = sub_213F27884();
  v132 = v125 + *(v124 + 44);
  LOBYTE(v127) = *(v132 + *(type metadata accessor for RoutePlanningCellViewModel(0) + 36));
  LOBYTE(v132) = sub_213F27A24(v124, v133, v134, v135) == 0;
  v327 = v130;
  v328 = v286;
  v136 = v290;
  v137 = swift_getWitnessTable();
  v138 = v128 & 1;
  v139 = v251;
  View.backgroundPlatter(isCarPlay:isHighlighted:isFocused:)(v138, v127, v132, v136, v137);
  (*(v252 + 8))(v131, v136);
  v350 = xmmword_213F63D10;
  LOBYTE(v351) = 2;
  v325 = v137;
  v326 = v285;
  v140 = v289;
  v141 = swift_getWitnessTable();
  v142 = v255;
  View.mapsDesignAXContainer(withID:)(&v350, v140, v141);
  sub_213DD9350(v350, *(&v350 + 1), v351);
  (*(v253 + 8))(v139, v140);
  v144 = v261;
  v143 = v262;
  (*(v262 + 16))(v261, v280, v124);
  v145 = (*(v143 + 80) + 32) & ~*(v143 + 80);
  v146 = swift_allocObject();
  v147 = v278;
  *(v146 + 16) = v279;
  *(v146 + 24) = v147;
  (*(v143 + 32))(v146 + v145, v144, v124);
  v323 = v141;
  v324 = v284;
  v148 = v288;
  v149 = swift_getWitnessTable();
  v150 = v254;
  sub_213F4E800();

  (*(v256 + 8))(v142, v148);
  v321 = v149;
  v151 = v295;
  v322 = MEMORY[0x277CE0790];
  v152 = v287;
  v153 = swift_getWitnessTable();
  v154 = v257;
  sub_213DBFEEC(v150, v152, v153);
  v155 = *(v259 + 8);
  v155(v150, v152);
  v156 = v258;
  sub_213DBFEEC(v154, v152, v153);
  v157 = v277;
  *&v350 = v277;
  *(&v350 + 1) = v297;
  v351 = v283;
  v352 = v151;
  v158 = swift_getOpaqueTypeConformance2();
  v159 = v273;
  sub_213DBFF2C(v156, v272, v152, v158, v153);
  v160 = v156;
  v161 = MEMORY[0x277CE0790];
  v155(v160, v152);
  v155(v154, v152);
  v162 = v294;
LABEL_6:
  *&v350 = v157;
  v205 = v297;
  *(&v350 + 1) = v297;
  v351 = v283;
  v352 = v151;
  v206 = swift_getOpaqueTypeConformance2();
  v319 = v151;
  v320 = MEMORY[0x277CDFC60];
  v317 = swift_getWitnessTable();
  v318 = v286;
  v315 = swift_getWitnessTable();
  v316 = v285;
  v313 = swift_getWitnessTable();
  v314 = v284;
  v311 = swift_getWitnessTable();
  v312 = v161;
  v207 = swift_getWitnessTable();
  v309 = v206;
  v310 = v207;
  v208 = v275;
  v209 = swift_getWitnessTable();
  sub_213DBFEEC(v159, v208, v209);
  (*(v274 + 8))(v159, v208);
  return (*(v269 + 8))(v162, v205);
}

uint64_t sub_213F36904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a1;
  v22 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  type metadata accessor for RoutePlanningCell.NestedFocusState(255, a2, a3, v6);
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  sub_213F391DC();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v7 = sub_213DE295C();
  v20[3] = MEMORY[0x277CDEEC8];
  swift_getOpaqueTypeMetadata2();
  v20[7] = sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  v20[2] = MEMORY[0x277CDEAE8];
  v20[4] = swift_getOpaqueTypeMetadata2();
  v20[6] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  v20[5] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v20[1] = sub_213F4EB40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8, MEMORY[0x277D83980]);
  v38 = MEMORY[0x277D83B98];
  sub_213F4ECE0();
  v36 = OpaqueTypeConformance2;
  v37 = v7;
  v9 = swift_getOpaqueTypeConformance2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  v35 = sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
  v32 = v9;
  v33 = swift_getOpaqueTypeConformance2();
  v31 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  sub_213F4DBB0();
  sub_213F4D400();
  sub_213F4D400();
  v10 = sub_213F4D400();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - v12;
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v29 = v14;
  v30 = v15;
  v16 = swift_getWitnessTable();
  v17 = MEMORY[0x277CDF918];
  v27 = v16;
  v28 = MEMORY[0x277CDF918];
  v25 = swift_getWitnessTable();
  v26 = v17;
  v23 = swift_getWitnessTable();
  v24 = v17;
  v18 = swift_getWitnessTable();
  sub_213DBFEEC(v21, v10, v18);
  sub_213DBFEEC(v13, v10, v18);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_213F371E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v33 = a1;
  v37 = sub_213F4F0B0();
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_213F4F0D0();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RoutePlanningCell(0, a2, a3, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = sub_213F4F0F0();
  v35 = v14;
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  sub_213E15130(0, &qword_2811823E8, 0x277D85C78);
  v32 = sub_213F4F580();
  sub_213F4F0E0();
  sub_213F4F130();
  v34 = *(v15 + 8);
  v34(v18, v14);
  (*(v11 + 16))(v13, v33, v10);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v30;
  *(v22 + 24) = v23;
  (*(v11 + 32))(v22 + v21, v13, v10);
  aBlock[4] = sub_213F3B9FC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_213F1CB04;
  aBlock[3] = &block_descriptor_2;
  v24 = _Block_copy(aBlock);

  sub_213F4F0C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_213F39194(&qword_281182548, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC3E0, &unk_213F63BC0);
  sub_213DE3AE4(&qword_2811824A0, &qword_27C8FC3E0, &unk_213F63BC0, MEMORY[0x277D83970]);
  v25 = v36;
  v26 = v37;
  sub_213F4F6F0();
  v27 = v32;
  MEMORY[0x216052950](v20, v8, v25, v24);
  _Block_release(v24);

  (*(v40 + 8))(v25, v26);
  (*(v38 + 8))(v8, v39);
  return (v34)(v20, v35);
}

uint64_t sub_213F37698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for RoutePlanningCell(0, a2, a3, a4);
  result = sub_213F27730(v4);
  if (result)
  {
    return sub_213F27AE8(1, v4, v6, v7);
  }

  return result;
}

MapsDesign::CustomRouteCellViewModel __swiftcall CustomRouteCellViewModel.init(primaryText:secondaryText:)(Swift::String primaryText, Swift::String secondaryText)
{
  *v2 = primaryText;
  v2[1] = secondaryText;
  result.secondaryText = secondaryText;
  result.primaryText = primaryText;
  return result;
}

__n128 CustomRouteCell.init(viewModel:useCompactLayout:tapHandler:useUIKitSizingForLabels:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 a5@<W4>, __n128 *a6@<X8>)
{
  result = *a1;
  v7 = a1[1].n128_u64[0];
  v8 = a1[1].n128_u64[1];
  *a6 = *a1;
  a6[1].n128_u64[0] = v7;
  a6[1].n128_u64[1] = v8;
  a6[2].n128_u8[0] = a2;
  a6[2].n128_u64[1] = a3;
  a6[3].n128_u64[0] = a4;
  a6[3].n128_u8[8] = a5;
  return result;
}

double CustomRouteCell.body.getter@<D0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  v54 = type metadata accessor for RoutePlanningCellViewModel(0);
  v2 = MEMORY[0x28223BE20](v54);
  v60 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v59 = v52 - v4;
  v5 = sub_213F4CA70();
  MEMORY[0x28223BE20](v5 - 8);
  v64 = sub_213F4CA10();
  v58 = *(v64 - 8);
  v6 = MEMORY[0x28223BE20](v64);
  v63 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = v52 - v8;
  v52[1] = *(v1 + 16);
  v55 = *(v1 + 32);
  v10 = *(v1 + 40);
  v9 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC500, &unk_213F63E20);
  inited = swift_initStackObject();
  v61 = xmmword_213F55C80;
  *(inited + 16) = xmmword_213F55C80;
  v12 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];

  v57 = v10;
  v56 = v9;
  sub_213DD74C4(v10, v9);
  v13 = qword_281186B40;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_281186B48;
  *(inited + 64) = sub_213E15130(0, &qword_281182338, 0x277D74300);
  *(inited + 40) = v15;
  v16 = v15;
  sub_213F4B69C(inited);
  swift_setDeallocating();
  sub_213DE36FC(inited + 32, &qword_27C8FA8B8, &qword_213F5D760);
  sub_213F4CA80();
  v17 = v62;
  sub_213F4CA20();
  sub_213F4CA60();
  v18 = v63;
  sub_213F4CA20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC508, &qword_213F63E30);
  v19 = v58;
  v20 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v61;
  v22 = *(v19 + 16);
  v23 = v17;
  v24 = v64;
  v22(v21 + v20, v23, v64);
  v25 = swift_allocObject();
  *(v25 + 16) = v61;
  v22(v25 + v20, v18, v24);
  v26 = v59;
  sub_213F4CB30();
  v27 = v54;
  v28 = MEMORY[0x277D84F90];
  v29 = (v26 + *(v54 + 20));
  *v29 = v21;
  v29[1] = v28;
  v30 = (v26 + v27[6]);
  *v30 = v25;
  v30[1] = v28;
  v31 = (v26 + v27[7]);
  *v31 = 0;
  v31[1] = 0;
  *(v26 + v27[8]) = 3;
  *(v26 + v27[9]) = 0;
  *(v26 + v27[10]) = 0;
  *(v26 + v27[11]) = v28;
  v32 = v60;
  sub_213F20704(v26, v60);
  KeyPath = swift_getKeyPath();
  v34 = v53;
  *v53 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC510, &qword_213F63E38);
  v36 = v35[9];
  *(v34 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v37 = v34 + v35[10];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  v38 = v34 + v35[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC518, &qword_213F63E40);
  sub_213DE3AE4(qword_281185CC8, &qword_27C8FC518, &qword_213F63E40, &unk_213F64440);
  sub_213F4CE00();
  v39 = v67;
  v40 = LOBYTE(v68);
  *v38 = v66;
  *(v38 + 1) = v39;
  v38[16] = v40;
  sub_213F20704(v32, v34 + v35[11]);
  *(v34 + v35[12]) = 0;
  *(v34 + v35[13]) = v55;
  v41 = (v34 + v35[14]);
  *v41 = sub_213F38BC4;
  v41[1] = 0;
  v65 = 0;
  sub_213F4EC70();
  sub_213F3C414(v32, type metadata accessor for RoutePlanningCellViewModel);
  sub_213F3C414(v26, type metadata accessor for RoutePlanningCellViewModel);
  v42 = *(v19 + 8);
  v43 = v64;
  v42(v63, v64);
  v42(v62, v43);
  v44 = v67;
  result = v68;
  v46 = v34 + v35[20];
  *v46 = v66;
  *(v46 + 1) = v44;
  *(v46 + 2) = result;
  v47 = (v34 + v35[15]);
  v48 = v56;
  *v47 = v57;
  v47[1] = v48;
  v49 = (v34 + v35[16]);
  *v49 = 0;
  v49[1] = 0;
  v50 = (v34 + v35[17]);
  *v50 = nullsub_1;
  v50[1] = 0;
  v51 = (v34 + v35[18]);
  *v51 = 0;
  v51[1] = 0;
  return result;
}

uint64_t RideshareRouteCellViewModel.init(appIconImage:primaryText:secondaryText:tertiaryText:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

__n128 RideshareRouteCell.init(viewModel:useCompactLayout:tapHandler:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 16);
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = result;
  *(a5 + 48) = v7;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = a4;
  return result;
}

id sub_213F37DF8()
{
  v1 = sub_213F4CA10();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = *v0;
  if (*v0)
  {
    v3 = objc_allocWithZone(MEMORY[0x277D74270]);
    v4 = v2;
    v5 = [v3 init];
    [v5 setImage_];
    if (qword_27C8F73C8 != -1)
    {
      swift_once();
    }

    [qword_27C8FC498 pointSize];
    v7 = v6;
    [v4 size];
    v9 = v8;
    [v4 size];
    [v5 setBounds_];
    v11 = [objc_opt_self() attributedStringWithAttachment_];

    return v11;
  }

  else
  {
    sub_213E15130(0, &qword_2811823E0, 0x277CCA898);
    sub_213F4C9A0();
    return sub_213F4F5A0();
  }
}

double RideshareRouteCell.body.getter@<D0>(uint64_t *a1@<X8>)
{
  v96 = a1;
  v92 = type metadata accessor for RoutePlanningCellViewModel(0);
  v2 = MEMORY[0x28223BE20](v92);
  v95 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v94 = &v78 - v4;
  v5 = sub_213F4CA70();
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_213F4CA10();
  v7 = *(v101 - 8);
  v8 = MEMORY[0x28223BE20](v101);
  v100 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v78 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v78 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = *(v1 + 2);
  v17 = v1[3];
  v20 = v1[4];
  v19 = v1[5];
  v21 = v1[6];
  v116 = *(v1 + 56);
  *v113 = *(v1 + 57);
  *&v113[3] = *(v1 + 15);
  v22 = v1[8];
  v23 = v1[9];
  v105 = v15;
  v106 = v16;
  v107 = v18;
  v108 = v17;
  v87 = v20;
  v88 = v17;
  v109 = v20;
  v110 = v19;
  v90 = v19;
  v97 = v21;
  v98 = v23;
  v111 = v21;
  v112 = v116;
  v93 = v22;
  v114 = v22;
  v115 = v23;
  sub_213F37DF8();
  v99 = v14;
  sub_213F4CA50();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC500, &unk_213F63E20);
  inited = swift_initStackObject();
  v102 = xmmword_213F55C80;
  *(inited + 16) = xmmword_213F55C80;
  v25 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v26 = qword_27C8F73C8;
  v80 = v25;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_27C8FC498;
  v79 = sub_213E15130(0, &qword_281182338, 0x277D74300);
  *(inited + 64) = v79;
  *(inited + 40) = v27;
  v28 = v27;
  sub_213F4B69C(inited);
  swift_setDeallocating();
  sub_213DE36FC(inited + 32, &qword_27C8FA8B8, &qword_213F5D760);
  sub_213F4CA80();
  sub_213F4CA20();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC508, &qword_213F63E30);
  v30 = v7;
  v31 = *(v7 + 72);
  v32 = *(v7 + 80);
  v89 = v7;
  v33 = v12;
  v34 = (v32 + 32) & ~v32;
  v35 = swift_allocObject();
  v78 = xmmword_213F51DE0;
  *(v35 + 16) = xmmword_213F51DE0;
  v86 = v35;
  v36 = v35 + v34;
  v37 = *(v30 + 16);
  v81 = v37;
  v38 = v101;
  v37(v35 + v34, v99, v101);
  v91 = v33;
  v82 = v30 + 16;
  v37(v36 + v31, v33, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = v102;
  sub_213F4C9A0();
  v84 = v31;
  v85 = v29;
  v40 = swift_allocObject();
  *(v40 + 16) = v102;

  sub_213F4CA60();
  sub_213F4CA20();
  v41 = swift_initStackObject();
  *(v41 + 16) = v78;
  *(v41 + 32) = v80;
  v42 = qword_27C8F73D0;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = qword_27C8FC4A0;
  *(v41 + 40) = qword_27C8FC4A0;
  v44 = *MEMORY[0x277D740C0];
  *(v41 + 64) = v79;
  *(v41 + 72) = v44;
  v45 = objc_opt_self();
  v46 = v43;
  v47 = v44;
  v48 = [v45 labelColor];
  *(v41 + 104) = sub_213E15130(0, &qword_27C8F9680, 0x277D75348);
  *(v41 + 80) = v48;
  sub_213F4B69C(v41);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA8B8, &qword_213F5D760);
  swift_arrayDestroy();
  sub_213F4CA80();
  v49 = v100;
  sub_213F4CA20();
  v50 = swift_allocObject();
  *(v50 + 16) = v102;
  v81(v50 + v34, v49, v101);
  v51 = v94;
  sub_213F4CB30();
  v52 = v92;
  v53 = (v51 + *(v92 + 20));
  *v53 = v86;
  v53[1] = v39;
  v54 = (v51 + v52[6]);
  v55 = MEMORY[0x277D84F90];
  *v54 = v40;
  v54[1] = v55;
  v56 = (v51 + v52[7]);
  *v56 = v50;
  v56[1] = v55;
  *(v51 + v52[8]) = 4;
  *(v51 + v52[9]) = 0;
  *(v51 + v52[10]) = 0;
  *(v51 + v52[11]) = v55;
  v57 = v95;
  sub_213F20704(v51, v95);
  LODWORD(v103) = v116;
  KeyPath = swift_getKeyPath();
  v59 = v96;
  *v96 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC510, &qword_213F63E38);
  v61 = v60[9];
  *(v59 + v61) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v62 = v59 + v60[10];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = v59 + v60[19];
  v64 = v93;
  sub_213DD74C4(v93, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC518, &qword_213F63E40);
  sub_213DE3AE4(qword_281185CC8, &qword_27C8FC518, &qword_213F63E40, &unk_213F64440);
  sub_213F4CE00();
  v65 = v106;
  v66 = LOBYTE(v107);
  *v63 = LOBYTE(v105);
  *(v63 + 1) = v65;
  v63[16] = v66;
  sub_213F20704(v57, v59 + v60[11]);
  *(v59 + v60[12]) = 0;
  *(v59 + v60[13]) = v103;
  v67 = (v59 + v60[14]);
  *v67 = sub_213F38BC4;
  v67[1] = 0;
  v104 = 0;
  sub_213F4EC70();
  sub_213F3C414(v57, type metadata accessor for RoutePlanningCellViewModel);
  sub_213F3C414(v51, type metadata accessor for RoutePlanningCellViewModel);
  v68 = *(v89 + 8);
  v69 = v101;
  v68(v100, v101);
  v68(v91, v69);
  v68(v99, v69);
  v70 = v106;
  result = v107;
  v72 = v59 + v60[20];
  *v72 = v105;
  *(v72 + 1) = v70;
  *(v72 + 2) = result;
  v73 = (v59 + v60[15]);
  v74 = v98;
  *v73 = v64;
  v73[1] = v74;
  v75 = (v59 + v60[16]);
  *v75 = 0;
  v75[1] = 0;
  v76 = (v59 + v60[17]);
  *v76 = nullsub_1;
  v76[1] = 0;
  v77 = (v59 + v60[18]);
  *v77 = 0;
  v77[1] = 0;
  return result;
}

uint64_t sub_213F38830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8460, &unk_213F53C68);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213DE3164(a1, &v5 - v3, &qword_27C8F8460, &unk_213F53C68);
  return sub_213F4D6C0();
}

void sub_213F388D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x216052C90](v3);
  if (v3)
  {
    v4 = a2 + 57;
    do
    {
      v6 = *(v4 - 25);
      sub_213F4F8A0();
      if (v6)
      {
        v5 = v6;

        v6 = v5;
        sub_213F4F620();
      }

      else
      {
      }

      sub_213F4F2C0();
      sub_213F4F8A0();
      sub_213F4F8A0();

      v4 += 32;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_213F389D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return sub_213F4F8A0();
  }

  sub_213F4F8A0();
  v5 = *(a2 + 16);
  MEMORY[0x216052C90](v5);
  if (v5)
  {
    v6 = *(sub_213F4CA10() - 8);
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    sub_213F39194(&qword_27C8F9F90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    do
    {
      sub_213F4F1B0();
      v7 += v8;
      --v5;
    }

    while (v5);
  }

  v9 = *(a3 + 16);
  result = MEMORY[0x216052C90](v9);
  if (v9)
  {
    v11 = *(sub_213F4CA10() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    sub_213F39194(&qword_27C8F9F90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    do
    {
      result = sub_213F4F1B0();
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

unint64_t sub_213F38BD0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_213F4F360();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x216052740](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_213F38C4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_213F38F70(a1, a3, a4);
  v8 = sub_213F38F70(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_213F4F2A0();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_213F4F750();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_213F4F2B0();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_213F4F750();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_213F38E5C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_213F4F750();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_213F38F70(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_213F39008(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_213F38E5C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_213F39008(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_213F38BD0(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s10MapsDesign17AdvisoryViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 25);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v17 = *(a1 + 25);
    sub_213E15130(0, &qword_281182320, 0x277D755B8);
    v11 = v7;
    v12 = v3;
    v13 = sub_213F4F610();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = *(a1 + 25);
    if (v7)
    {
      return 0;
    }
  }

  if (v2 == v6 && v4 == v8)
  {
    if (v5 == v9)
    {
      return v17 ^ v10 ^ 1u;
    }

    return 0;
  }

  v15 = sub_213F4F830();
  result = 0;
  if ((v15 & 1) != 0 && ((v5 ^ v9) & 1) == 0)
  {
    return v17 ^ v10 ^ 1u;
  }

  return result;
}

uint64_t sub_213F39194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213F391DC()
{
  result = qword_281183270;
  if (!qword_281183270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183270);
  }

  return result;
}

unint64_t sub_213F39294()
{
  result = qword_281183280;
  if (!qword_281183280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
    sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183280);
  }

  return result;
}

unint64_t sub_213F393F8()
{
  result = qword_27C8FC520;
  if (!qword_27C8FC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC520);
  }

  return result;
}

unint64_t sub_213F39450()
{
  result = qword_27C8FC528;
  if (!qword_27C8FC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC528);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_213F3957C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213F395C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoutePlanningCellPrimaryActionStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoutePlanningCellPrimaryActionStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_213F39790(uint64_t a1)
{
  sub_213F4CB40();
  if (v1 <= 0x3F)
  {
    sub_213F39AD8(319, qword_281184B78, &type metadata for MultiPartLabelViewModel, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_213F39AD8(319, &qword_2811824D0, &type metadata for AdvisoryViewModel, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213F39898(uint64_t a1)
{
  sub_213E61E68(319, &qword_281183520, MEMORY[0x277CDF7E8]);
  if (v2 <= 0x3F)
  {
    sub_213E61E68(319, &qword_281183528, MEMORY[0x277CDF3E0]);
    if (v3 <= 0x3F)
    {
      sub_213F39AD8(319, &qword_281183500, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v4 <= 0x3F)
      {
        type metadata accessor for RoutePlanningCellViewModel(319);
        if (v5 <= 0x3F)
        {
          sub_213DE22E8();
          if (v6 <= 0x3F)
          {
            sub_213E0C0F8(319);
            if (v8 <= 0x3F)
            {
              type metadata accessor for RoutePlanningCell.NestedFocusState(255, *(a1 + 16), *(a1 + 24), v7);
              sub_213F4F6B0();
              swift_getWitnessTable();
              swift_getWitnessTable();
              sub_213F4CE10();
              if (v9 <= 0x3F)
              {
                sub_213F39AD8(319, &qword_281182630, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
                if (v10 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_213F39AD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_213F39B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_213F39B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213F39BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213F39C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213F39C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213F39CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213F39D30(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213F39DB8(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_213F39F1C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *(a1 + v9) = v14;
              }

              else
              {
                *(a1 + v9) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *(a1 + v9) = 0;
  }

  else if (v12)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

  v18(v19);
}

void sub_213F3A1A4(uint64_t a1)
{
  sub_213E61E68(319, &qword_281183528, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_213E61E68(319, &qword_281183520, MEMORY[0x277CDF7E8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_213F3A300()
{
  result = qword_27C8FC5A0;
  if (!qword_27C8FC5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC548, &qword_213F64490);
    sub_213F3A3B8();
    sub_213DE3AE4(&qword_281182C08, &qword_27C8F8430, &qword_213F53C38, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC5A0);
  }

  return result;
}

unint64_t sub_213F3A3B8()
{
  result = qword_27C8FC5A8;
  if (!qword_27C8FC5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC540, &qword_213F64488);
    sub_213DE3AE4(&qword_27C8FC5B0, &qword_27C8FC538, &qword_213F64480, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC5A8);
  }

  return result;
}

unint64_t sub_213F3A470()
{
  result = qword_281182AE0;
  if (!qword_281182AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC580, &unk_213F644C8);
    sub_213F3C6EC(&qword_281182ED0, &qword_27C8FC590, &qword_213F644E0, sub_213F3A528);
    sub_213F3A5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AE0);
  }

  return result;
}

unint64_t sub_213F3A528()
{
  result = qword_281183080;
  if (!qword_281183080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC588, &qword_213F644D8);
    sub_213E29BA4();
    sub_213DE3AE4(&qword_281182C08, &qword_27C8F8430, &qword_213F53C38, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183080);
  }

  return result;
}

unint64_t sub_213F3A5E0()
{
  result = qword_281182D58;
  if (!qword_281182D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC568, &qword_213F644B0);
    sub_213F3A66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D58);
  }

  return result;
}

unint64_t sub_213F3A66C()
{
  result = qword_281182E20;
  if (!qword_281182E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC560, &qword_213F644A8);
    sub_213F3A724();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E20);
  }

  return result;
}

unint64_t sub_213F3A724()
{
  result = qword_281182FC0;
  if (!qword_281182FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC558, &qword_213F644A0);
    sub_213DE2CCC();
    sub_213DE3AE4(&qword_281182868, &qword_27C8FC5B8, &unk_213F644F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FC0);
  }

  return result;
}

unint64_t sub_213F3A7DC()
{
  result = qword_2811832F0;
  if (!qword_2811832F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC5E0, &qword_213F64588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC678, &qword_213F64620);
    sub_213F3A8A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832F0);
  }

  return result;
}

unint64_t sub_213F3A8A4()
{
  result = qword_281182D90;
  if (!qword_281182D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC678, &qword_213F64620);
    sub_213F3A95C();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D90);
  }

  return result;
}

unint64_t sub_213F3A95C()
{
  result = qword_281182E50;
  if (!qword_281182E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC680, &qword_213F64628);
    sub_213F3AA14();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E50);
  }

  return result;
}

unint64_t sub_213F3AA14()
{
  result = qword_281182FE0;
  if (!qword_281182FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC688, &qword_213F64630);
    sub_213F3AAA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FE0);
  }

  return result;
}

unint64_t sub_213F3AAA0()
{
  result = qword_281183240;
  if (!qword_281183240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC690, &qword_213F64638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183240);
  }

  return result;
}

unint64_t sub_213F3AB24()
{
  result = qword_27C8FC698;
  if (!qword_27C8FC698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC600, &qword_213F645A8);
    sub_213F3ABDC();
    sub_213DE3AE4(&qword_27C8FC6C0, &qword_27C8FC5E8, &qword_213F64590, MEMORY[0x277CDD828]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC698);
  }

  return result;
}

unint64_t sub_213F3ABDC()
{
  result = qword_281182AD8;
  if (!qword_281182AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC670, &qword_213F64618);
    sub_213F3AC68();
    sub_213F3B088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AD8);
  }

  return result;
}

unint64_t sub_213F3AC68()
{
  result = qword_281182CC8;
  if (!qword_281182CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC668, &qword_213F64610);
    sub_213F3ACF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182CC8);
  }

  return result;
}

unint64_t sub_213F3ACF4()
{
  result = qword_281182D18;
  if (!qword_281182D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC660, &qword_213F64608);
    sub_213F3AD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182D18);
  }

  return result;
}

unint64_t sub_213F3AD80()
{
  result = qword_281182DA8;
  if (!qword_281182DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC658, &qword_213F64600);
    sub_213F3AE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182DA8);
  }

  return result;
}

unint64_t sub_213F3AE0C()
{
  result = qword_281182E88;
  if (!qword_281182E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC650, &qword_213F645F8);
    sub_213F3AE98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E88);
  }

  return result;
}

unint64_t sub_213F3AE98()
{
  result = qword_281183028;
  if (!qword_281183028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC648, &qword_213F645F0);
    sub_213F3AF50();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183028);
  }

  return result;
}

unint64_t sub_213F3AF50()
{
  result = qword_2811832E8;
  if (!qword_2811832E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC640, &qword_213F645E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC630, &qword_213F645D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8980, &unk_213F55A40);
    sub_213E0C270();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_2811828A8, &qword_27C8FC6A0, &qword_213F64640, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832E8);
  }

  return result;
}

unint64_t sub_213F3B088()
{
  result = qword_281182E90;
  if (!qword_281182E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC620, &qword_213F645C8);
    sub_213F3B114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E90);
  }

  return result;
}

unint64_t sub_213F3B114()
{
  result = qword_281183030;
  if (!qword_281183030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC618, &qword_213F645C0);
    sub_213F3B1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183030);
  }

  return result;
}

unint64_t sub_213F3B1A0()
{
  result = qword_2811832F8;
  if (!qword_2811832F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC610, &qword_213F645B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC6A8, &qword_213F64648);
    sub_213F3B268();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832F8);
  }

  return result;
}

unint64_t sub_213F3B268()
{
  result = qword_281182F50;
  if (!qword_281182F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC6A8, &qword_213F64648);
    sub_213F3B2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F50);
  }

  return result;
}

unint64_t sub_213F3B2F4()
{
  result = qword_281183188;
  if (!qword_281183188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC6B0, &qword_213F64650);
    sub_213DE3AE4(&qword_281182690, &qword_27C8FC6B8, &qword_213F64658, MEMORY[0x277CE1198]);
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183188);
  }

  return result;
}

unint64_t sub_213F3B3D8()
{
  result = qword_281182B38;
  if (!qword_281182B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC5D0, &qword_213F64578);
    sub_213F3A7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B38);
  }

  return result;
}

unint64_t sub_213F3B464()
{
  result = qword_281182F48;
  if (!qword_281182F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC720, &qword_213F64718);
    sub_213F3B51C();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F48);
  }

  return result;
}

unint64_t sub_213F3B51C()
{
  result = qword_281183180;
  if (!qword_281183180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC728, &qword_213F64720);
    sub_213DE3AE4(&qword_281182690, &qword_27C8FC6B8, &qword_213F64658, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183180);
  }

  return result;
}

unint64_t sub_213F3B5D4()
{
  result = qword_27C8FC738;
  if (!qword_27C8FC738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC730, &qword_213F64758);
    sub_213F3B68C();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC738);
  }

  return result;
}

unint64_t sub_213F3B68C()
{
  result = qword_27C8FC740;
  if (!qword_27C8FC740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC748, &qword_213F64760);
    sub_213E50DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC740);
  }

  return result;
}

uint64_t objectdestroy_13Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RoutePlanningCell(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80);
  v7 = v4 + v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D290();
    (*(*(v8 - 8) + 8))(v4 + v6, v8);
  }

  else
  {
  }

  v9 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_213F4CEA0();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  else
  {
  }

  sub_213E053BC(*(v7 + v5[10]), *(v7 + v5[10] + 8));
  v11 = v7 + v5[11];
  v12 = sub_213F4CB40();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = type metadata accessor for RoutePlanningCellViewModel(0);

  if (*(v11 + *(v13 + 24)))
  {
  }

  if (*(v11 + *(v13 + 28)))
  {
  }

  if (*(v7 + v5[15]))
  {
  }

  if (*(v7 + v5[16]))
  {
  }

  if (*(v7 + v5[18]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_213F3BA14(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for RoutePlanningCell(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_213F3BADC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for RoutePlanningCell(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_213F320A8(a1, v4 + v9, v11, v12, v6, v7);
}

uint64_t sub_213F3BBBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for RoutePlanningCell(0, v6, v7, a2) - 8);
  v9 = (v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));

  return sub_213F2CAFC(a1, v9, v6, v7, a3);
}

uint64_t sub_213F3BC90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (*(v0 + 57))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v6 = *(v0 + 32);
  v7 = v2;
  v8 = v4 | v3;
  return v1(&v6);
}

unint64_t sub_213F3BCF4()
{
  result = qword_281182EC0;
  if (!qword_281182EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC760, &qword_213F647A0);
    sub_213F3C6EC(&qword_281183070, &qword_27C8F9640, &qword_213F584C8, sub_213E3D854);
    sub_213DE3AE4(&qword_281182BE0, &qword_27C8FC798, &qword_213F647E8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182EC0);
  }

  return result;
}

uint64_t objectdestroy_118Tm()
{

  return swift_deallocObject();
}

unint64_t sub_213F3BE54()
{
  result = qword_281183388;
  if (!qword_281183388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
    sub_213F3BF0C();
    sub_213DE3AE4(&qword_281182918, &qword_27C8F7940, &qword_213F51AA0, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183388);
  }

  return result;
}

unint64_t sub_213F3BF0C()
{
  result = qword_281182A10;
  if (!qword_281182A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7A8, &qword_213F647F8);
    sub_213F3BF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A10);
  }

  return result;
}

unint64_t sub_213F3BF90()
{
  result = qword_281182A18;
  if (!qword_281182A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7B0, &qword_213F64800);
    sub_213F3C01C();
    sub_213F3C29C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182A18);
  }

  return result;
}

unint64_t sub_213F3C01C()
{
  result = qword_281182AB0;
  if (!qword_281182AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7B8, &qword_213F64808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7C0, &qword_213F64810);
    sub_213F3C6EC(&qword_281182D98, &qword_27C8FC7C0, &qword_213F64810, sub_213F3C1E4);
    sub_213DE295C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7E8, &qword_213F64838);
    sub_213F4DCA0();
    sub_213DE3AE4(&qword_281182770, &qword_27C8FC7E8, &qword_213F64838, MEMORY[0x277CDF028]);
    sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182AB0);
  }

  return result;
}

unint64_t sub_213F3C1E4()
{
  result = qword_281182E60;
  if (!qword_281182E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7C8, &qword_213F64818);
    sub_213F3C29C();
    sub_213DE3AE4(qword_2811844D8, &qword_27C8FC7E0, &qword_213F64830, &unk_213F643F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E60);
  }

  return result;
}

unint64_t sub_213F3C29C()
{
  result = qword_281182FF8;
  if (!qword_281182FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7D0, &qword_213F64820);
    sub_213F3C328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182FF8);
  }

  return result;
}

unint64_t sub_213F3C328()
{
  result = qword_2811832A0;
  if (!qword_2811832A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC7D8, &qword_213F64828);
    type metadata accessor for RoutePlanningCellPrimaryActionLabel(255);
    sub_213F39194(qword_281183A78, type metadata accessor for RoutePlanningCellPrimaryActionLabel, &unk_213F643A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832A0);
  }

  return result;
}

uint64_t sub_213F3C414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_213F3C500()
{
  result = qword_281183448;
  if (!qword_281183448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC838, &qword_213F64888);
    sub_213E66C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183448);
  }

  return result;
}

unint64_t sub_213F3C58C()
{
  result = qword_281183110;
  if (!qword_281183110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
    sub_213F3C6EC(&qword_281183118, &qword_27C8FC4B8, &qword_213F63DD0, sub_213F3C500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183110);
  }

  return result;
}

unint64_t sub_213F3C63C()
{
  result = qword_281182E78;
  if (!qword_281182E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
    sub_213F3C6EC(&qword_281182E80, &qword_27C8FC830, &qword_213F64880, sub_213F3C7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182E78);
  }

  return result;
}

uint64_t sub_213F3C6EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213F39194(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213F3C7A0()
{
  result = qword_281183020;
  if (!qword_281183020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC828, &qword_213F64878);
    sub_213F3C82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183020);
  }

  return result;
}

unint64_t sub_213F3C82C()
{
  result = qword_2811832E0;
  if (!qword_2811832E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC820, &qword_213F64870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC818, &qword_213F64868);
    sub_213F4DCA0();
    sub_213DE3AE4(&qword_281182788, &qword_27C8FC818, &qword_213F64868, MEMORY[0x277CDF028]);
    sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811832E0);
  }

  return result;
}

uint64_t sub_213F3C9E8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_213F3CA40(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for RoutePlanningCell(0, v6, v7, a4) - 8);
  return sub_213F31BCC(a1, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7);
}

unint64_t sub_213F3CAC0()
{
  result = qword_27C8FC840;
  if (!qword_27C8FC840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC848, &unk_213F64890);
    sub_213F3A470();
    sub_213F3C6EC(&qword_27C8FC5C0, &qword_27C8FC550, &qword_213F64498, sub_213F3A300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC840);
  }

  return result;
}

uint64_t sub_213F3CB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213E29028();
  sub_213F4EA90();
  return a1;
}

uint64_t sub_213F3CBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213F3CC1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213F3CC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213F3CD00@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a1;
  v34 = a7;
  v11 = *(a5 - 8);
  v32 = a6;
  v33 = v11;
  MEMORY[0x28223BE20](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC850, &unk_213F64960);
  v14 = sub_213F4D400();
  v31 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v44 = a3;
  v45 = a4;
  v20 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC858, &qword_213F64FC0);
  sub_213F4EAA0();
  v21 = v43;
  v22 = a2;
  v23 = v30;
  v30(v43);

  v24 = v32;
  v35 = a5;
  v36 = v32;
  v37 = v23;
  v38 = v22;
  v39 = a3;
  v40 = v20;
  sub_213F4EEE0();
  sub_213F3D030();
  sub_213F4E350();
  (*(v33 + 8))(v13, a5);
  v25 = sub_213F3D084();
  v41 = v24;
  v42 = v25;
  WitnessTable = swift_getWitnessTable();
  sub_213DBFEEC(v17, v14, WitnessTable);
  v27 = *(v31 + 8);
  v27(v17, v14);
  sub_213DBFEEC(v19, v14, WitnessTable);
  return (v27)(v19, v14);
}

void *sub_213F3CFD8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC858, &qword_213F64FC0);
  result = sub_213F4EAA0();
  *a1 = v3;
  return result;
}

unint64_t sub_213F3D030()
{
  result = qword_281185B88;
  if (!qword_281185B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281185B88);
  }

  return result;
}

unint64_t sub_213F3D084()
{
  result = qword_281182C18;
  if (!qword_281182C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC850, &unk_213F64960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182C18);
  }

  return result;
}

uint64_t sub_213F3D0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F3D1EC();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213F3D160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F3D1EC();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213F3D1C4(uint64_t a1)
{
  sub_213F3D1EC();
  sub_213F4DB60();
  __break(1u);
}

unint64_t sub_213F3D1EC()
{
  result = qword_281185B90[0];
  if (!qword_281185B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281185B90);
  }

  return result;
}

uint64_t type metadata accessor for ClipShadowModifier(uint64_t a1)
{
  result = qword_281185A90;
  if (!qword_281185A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213F3D2B4(uint64_t a1)
{
  result = sub_213F4D950();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213F3D370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v13 = *(v2 + 1);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC888, &qword_213F64BC0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC890, &qword_213F64BC8) + 36)) = 256;
  v8 = sub_213F4EEE0();
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC898, &qword_213F64BD0) + 36);
  *v11 = v5;
  *(v11 + 8) = v13;
  *(v11 + 24) = v6;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
}

uint64_t sub_213F3D490@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = a2[5];
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC860, &unk_213F64B90) + 36));
  v9 = sub_213F4D470();
  v10 = *(v9 + 20);
  v11 = sub_213F4D950();
  v12 = *(*(v11 - 8) + 16);
  v12(&v8[v10], v3 + v7, v11);
  *v8 = v6;
  *(v8 + 1) = v6;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC868, &qword_213F64BA0);
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  v25 = sub_213F4EEE0();
  v15 = v14;
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC870, &qword_213F64BA8) + 36));
  v12(&v16[*(v9 + 20)], v3 + v7, v11);
  *v16 = v6;
  *(v16 + 1) = v6;
  v17 = *(v3 + a2[6]);
  v18 = *(v3 + a2[7]);
  v19 = *(v3 + a2[8]);
  v20 = *(v3 + a2[9]);
  v21 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC878, &qword_213F64BB0) + 36)];
  *v21 = v17;
  *(v21 + 1) = v18;
  *(v21 + 2) = v19;
  *(v21 + 3) = v20;
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC880, &qword_213F64BB8) + 36)];
  *v22 = v25;
  v22[1] = v15;
}

unint64_t sub_213F3D690()
{
  result = qword_27C8FC8A0;
  if (!qword_27C8FC8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC870, &qword_213F64BA8);
    sub_213F3D748();
    sub_213DE3AE4(&qword_27C8FC8A8, &qword_27C8FC880, &qword_213F64BB8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC8A0);
  }

  return result;
}

unint64_t sub_213F3D748()
{
  result = qword_281183368;
  if (!qword_281183368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC860, &unk_213F64B90);
    sub_213DE3AE4(&qword_281182950, &qword_27C8FC868, &qword_213F64BA0, MEMORY[0x277CE04B0]);
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183368);
  }

  return result;
}

unint64_t sub_213F3D82C()
{
  result = qword_2811830A0;
  if (!qword_2811830A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC898, &qword_213F64BD0);
    sub_213F3D8E4();
    sub_213DE3AE4(&qword_281182BF8, &qword_27C8FC8B8, &unk_213F64BE0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811830A0);
  }

  return result;
}

unint64_t sub_213F3D8E4()
{
  result = qword_281183360;
  if (!qword_281183360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC890, &qword_213F64BC8);
    sub_213DE3AE4(&qword_281182948, &qword_27C8FC888, &qword_213F64BC0, MEMORY[0x277CE04B0]);
    sub_213DE3AE4(&qword_2811834D8, &qword_27C8FC8B0, &qword_213F64BD8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183360);
  }

  return result;
}

uint64_t static Color.mapsDesignColor(_:)(uint64_t a1, uint64_t a2)
{
  sub_213E621D4();
  v4 = sub_213F4F600();
  if (!v4)
  {
    v4 = [objc_opt_self() mainBundle];
  }

  return MEMORY[0x282133540](a1, a2, v4);
}

uint64_t sub_213F3DA6C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for ImageComposerViewModel(0);
  v8 = swift_allocObject();

  sub_213F4CB30();
  v9 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  sub_213F4CBB0();
  *(v8 + v9) = a1;
  v10 = (v8 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  *v10 = a2;
  v10[1] = a3;
  *(v8 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder) = a4;
  v11 = a1;
  return v8;
}

uint64_t ImageComposerViewModel.__allocating_init(image:colorGradient:isCityPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  sub_213F4CB30();
  v9 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  sub_213F4CBB0();
  *(v8 + v9) = a1;
  v10 = (v8 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  *v10 = a2;
  v10[1] = a3;
  *(v8 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder) = a4;
  return v8;
}

uint64_t sub_213F3DC3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_213F3DD34(uint64_t a1)
{
  v2 = sub_213F4CB40();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_213F3DEF8(v4);
}

uint64_t sub_213F3DE00@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  v3 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  swift_beginAccess();
  v4 = sub_213F4CB40();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_213F3DEF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_213F3F4BC(&qword_27C8F8BF8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_213F4F1F0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
    sub_213F4CB70();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_213F3E198(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t (*sub_213F3E2B4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F3DBDC(v4);
  return sub_213F3E3EC;
}

id sub_213F3E458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_213F3E52C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_213F3E620(v1);
}

void *sub_213F3E55C()
{
  swift_getKeyPath();
  v5 = v0;
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

void sub_213F3E620(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
    sub_213F4CB70();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_213F3F53C();
  v6 = v5;
  v7 = a1;
  v8 = sub_213F4F610();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_213F3E79C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

uint64_t (*sub_213F3E80C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F3E3F8(v4);
  return sub_213F3E944;
}

uint64_t sub_213F3E9B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  v4 = (v3 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *a2 = v5;
  a2[1] = v6;
}

double sub_213F3EA84(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);

  sub_213F4CB70();

  return result;
}

uint64_t sub_213F3EB80()
{
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  v1 = (v0 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_213F3EC58(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB70();

  return result;
}

void sub_213F3ED40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t (*sub_213F3EDCC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F3E950(v4);
  return sub_213F3EF04;
}

void sub_213F3EF70(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_213F3F05C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  v1 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder;
  swift_beginAccess();
  return *(v3 + v1);
}

void sub_213F3F118(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
    sub_213F4CB70();
  }
}

uint64_t (*sub_213F3F244(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  *v4 = v1;
  swift_getKeyPath();
  sub_213F4CBA0();

  v4[7] = sub_213F3EF10(v4);
  return sub_213F3F37C;
}

uint64_t ImageComposerViewModel.init(image:colorGradient:isCityPlaceholder:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_213F4CB40();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4CB30();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id, v12, v9);
  v13 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  *(v4 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image) = 0;
  sub_213F4CBB0();

  *(v4 + v13) = a1;
  v14 = (v4 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  *v14 = a2;
  v14[1] = a3;
  *(v4 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder) = a4;
  return v4;
}

uint64_t sub_213F3F4BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213F3F53C()
{
  result = qword_281182320;
  if (!qword_281182320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281182320);
  }

  return result;
}

void sub_213F3F5A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t ImageComposerViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ImageComposerViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel___observationRegistrar;
  v4 = sub_213F4CBC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_213F3F820@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  v4 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__id;
  swift_beginAccess();
  v5 = sub_213F4CB40();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_213F3F920(uint64_t a1)
{
  result = sub_213F4CB40();
  if (v2 <= 0x3F)
  {
    result = sub_213F4CBC0();
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

void sub_213F3FC4C(uint64_t a1)
{
  sub_213DE59D4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ImageComposerViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213F3FCEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v81 = a2;
  v74 = sub_213F4EF90();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_213F4CEA0();
  v65 = *(v66 - 8);
  v4 = MEMORY[0x28223BE20](v66);
  v64 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v59 - v6;
  v7 = sub_213F4EA00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9F30, &qword_213F5A7E8);
  MEMORY[0x28223BE20](v69);
  v68 = &v59 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8D8, &qword_213F64DE0);
  v79 = *(v80 - 8);
  v12 = MEMORY[0x28223BE20](v80);
  v71 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8E0, &unk_213F64DE8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v78 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v59 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_213F51DE0;
  v20 = *(type metadata accessor for ImageComposerView(0) + 20);
  v67 = a1;
  v21 = *(a1 + v20);
  swift_getKeyPath();
  v85 = v21;
  sub_213F3F4BC(&qword_27C8FC8C0, type metadata accessor for ImageComposerViewModel, &protocol conformance descriptor for ImageComposerViewModel);
  sub_213F4CB80();

  v22 = (v21 + OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__colorGradient);
  swift_beginAccess();
  *(v19 + 32) = *v22;
  swift_getKeyPath();
  v85 = v21;

  sub_213F4CB80();

  *(v19 + 40) = v22[1];

  sub_213F4F020();
  sub_213F4F030();
  MEMORY[0x2160521D0](v19);
  sub_213F4D2C0();
  v23 = v85;
  v75 = v87;
  v76 = v86;
  swift_getKeyPath();
  v84 = v21;
  sub_213F4CB80();

  v24 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__image;
  swift_beginAccess();
  v25 = *(v21 + v24);
  if (v25)
  {
    v62 = v23;
    v61 = v25;
    sub_213F4E9D0();
    v26 = v8;
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v27 = sub_213F4EA40();

    (*(v26 + 8))(v10, v7);
    swift_getKeyPath();
    v83 = v21;
    sub_213F4CB80();

    v28 = OBJC_IVAR____TtC10MapsDesign22ImageComposerViewModel__isCityPlaceholder;
    swift_beginAccess();
    v29 = 1.0;
    if (*(v21 + v28) == 1)
    {
      v60 = v27;
      v30 = v63;
      sub_213EA8894(v63);
      v31 = v65;
      v32 = v64;
      v33 = v66;
      (*(v65 + 104))(v64, *MEMORY[0x277CDF3D0], v66);
      v34 = sub_213F4CE90();
      v35 = *(v31 + 8);
      v35(v32, v33);
      v36 = v30;
      v27 = v60;
      v35(v36, v33);
      if (v34)
      {
        v29 = 1.5;
      }

      else
      {
        v29 = 1.1;
      }
    }

    swift_getKeyPath();
    v82 = v21;
    sub_213F4CB80();

    v37 = v73;
    if (*(v21 + v28))
    {
      v38 = MEMORY[0x277CE13F0];
    }

    else
    {
      v38 = MEMORY[0x277CE13D8];
    }

    v39 = v72;
    v40 = v74;
    (*(v73 + 104))(v72, *v38, v74);
    v41 = v68;
    (*(v37 + 32))(&v68[*(v69 + 36)], v39, v40);
    *v41 = v27;
    *(v41 + 8) = 0;
    *(v41 + 16) = 1;
    *(v41 + 24) = v29;
    swift_getKeyPath();
    v82 = v21;
    sub_213F4CB80();

    if (*(v21 + v28))
    {
      v42 = 1.1;
    }

    else
    {
      v42 = 0.8;
    }

    sub_213F4F040();
    v44 = v43;
    v46 = v45;

    v47 = v71;
    sub_213DE2B44(v41, v71, &qword_27C8F9F30, &qword_213F5A7E8);
    v48 = v80;
    v49 = v47 + *(v80 + 36);
    *v49 = v42;
    *(v49 + 8) = v42;
    *(v49 + 16) = v44;
    *(v49 + 24) = v46;
    v50 = v47;
    v51 = v70;
    sub_213DE2B44(v50, v70, &qword_27C8FC8D8, &qword_213F64DE0);
    v52 = v51;
    v53 = v77;
    sub_213DE2B44(v52, v77, &qword_27C8FC8D8, &qword_213F64DE0);
    v54 = 0;
    v23 = v62;
  }

  else
  {
    v54 = 1;
    v48 = v80;
    v53 = v77;
  }

  (*(v79 + 56))(v53, v54, 1, v48);
  v55 = v78;
  sub_213F406DC(v53, v78);
  v56 = v81;
  *v81 = v23;
  *(v56 + 3) = v75;
  *(v56 + 1) = v76;
  *(v56 + 20) = 256;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8E8, &qword_213F64DF8);
  sub_213F406DC(v55, v56 + *(v57 + 48));

  sub_213F4074C(v53);
  sub_213F4074C(v55);
}

uint64_t sub_213F40668@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_213F4EEE0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8C8, &qword_213F64DC8);
  sub_213F3FCEC(v2, (a2 + *(v5 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8D0, &unk_213F64DD0);
  v7 = a2 + *(result + 36);
  *v7 = 0x3FF0000000000000;
  *(v7 + 4) = 0;
  return result;
}

uint64_t sub_213F406DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8E0, &unk_213F64DE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213F4074C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC8E0, &unk_213F64DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_213F407B4()
{
  result = qword_27C8FC8F0;
  if (!qword_27C8FC8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC8D0, &unk_213F64DD0);
    sub_213F40840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC8F0);
  }

  return result;
}

unint64_t sub_213F40840()
{
  result = qword_27C8FC8F8;
  if (!qword_27C8FC8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC900, qword_213F64E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC8F8);
  }

  return result;
}

id static UIImage.mapsDesignImage(_:)(uint64_t a1, uint64_t a2)
{
  sub_213E621D4();
  v2 = sub_213F4F600();
  if (!v2)
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = v2;
  v4 = sub_213F4F220();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:v3];

  return v5;
}

uint64_t static Image.mapsDesignImage(_:)(uint64_t a1, uint64_t a2)
{
  sub_213E621D4();
  v4 = sub_213F4F600();
  if (!v4)
  {
    v4 = [objc_opt_self() mainBundle];
  }

  return MEMORY[0x2821336E0](a1, a2, v4);
}

uint64_t ImageProvidingSpecs.init(preferredSize:displayScale:darkMode:isRightToLeft:isCarPlay:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a7;
  *(a4 + 24) = result;
  *(a4 + 25) = a2;
  *(a4 + 26) = a3;
  return result;
}

void ImageProvidingSpecs.withPreferredSize(_:displayScale:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v5 = v4[24];
  v6 = v4[25];
  v7 = v4[26];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = v5;
  *(a1 + 25) = v6;
  *(a1 + 26) = v7;
}

double ImageProvidingSpecs.withEnvironments(colorScheme:layoutDirection:interfaceIdiom:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v21 = a1;
  v22 = a2;
  v23 = sub_213F4D290();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_213F4D3B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_213F4CEA0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v4;
  v17 = *(v4 + 2);
  (*(v14 + 104))(v16, *MEMORY[0x277CDF3C0], v13);
  v18 = sub_213F4CE90();
  (*(v14 + 8))(v16, v13);
  (*(v10 + 104))(v12, *MEMORY[0x277CDFA90], v9);
  LOBYTE(v14) = sub_213F4D3A0();
  (*(v10 + 8))(v12, v9);
  sub_213F4D280();
  LOBYTE(v9) = sub_213F4D270();
  (*(v6 + 8))(v8, v23);
  result = *&v20;
  *a4 = v20;
  *(a4 + 16) = v17;
  *(a4 + 24) = v18 & 1;
  *(a4 + 25) = v14 & 1;
  *(a4 + 26) = v9 & 1;
  return result;
}

uint64_t sub_213F40DC4(uint64_t a1)
{
  result = sub_213F414D0(&qword_281182318, sub_213F3F53C, MEMORY[0x277D85378]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213F40E24(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_213F40EA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 27))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_213F40EFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_213F40F80()
{
  v1 = OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MapsDesignStaticImageProvider(uint64_t a1)
{
  result = qword_27C8FC918;
  if (!qword_27C8FC918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213F41090(uint64_t a1)
{
  result = sub_213F4CB40();
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

void sub_213F41174(uint64_t a1, void (*a2)(void *))
{
  v4 = *(*v2 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  v5 = v4;
  a2(v4);
}

void *sub_213F411E4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_placeholderImage);
  v2 = v1;
  return v1;
}

uint64_t sub_213F41218@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_id;
  v5 = sub_213F4CB40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_213F412A0()
{
  v1 = *v0;
  sub_213F4F880();
  v2 = *(v1 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  sub_213F4F8A0();
  if (v2)
  {
    v3 = v2;
    sub_213F4F620();
  }

  return sub_213F4F8C0();
}

void sub_213F4131C(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  if (v2)
  {
    sub_213F4F8A0();
    v3 = v2;
    sub_213F4F620();
  }

  else
  {
    sub_213F4F8A0();
  }
}

uint64_t sub_213F413B8(uint64_t a1)
{
  sub_213F4F880();
  v2 = *(*v1 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  sub_213F4F8A0();
  if (v2)
  {
    v3 = v2;
    sub_213F4F620();
  }

  return sub_213F4F8C0();
}

uint64_t sub_213F41478(uint64_t a1)
{
  result = sub_213F414D0(&qword_27C8FC930, type metadata accessor for MapsDesignStaticImageProvider, &unk_213F64EF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213F414D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_213F41518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  v3 = *(a2 + OBJC_IVAR____TtC10MapsDesign29MapsDesignStaticImageProvider_image);
  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_213F3F53C();
    v6 = v3;
    v7 = v2;
    v8 = sub_213F4F610();

    return v8 & 1;
  }

  return result;
}

void View.insetGroupedSectionBackground(cornerRadius:)(uint64_t a1, uint64_t a2, double a3)
{
  v7[3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E29028();
  sub_213F4EA90();
  v6 = v7[0];
  *&v7[2] = a3;
  MEMORY[0x216051BF0](v7, a1, &type metadata for InsetGroupedSectionBackgroundModifier, a2);
}

void *InsetGroupedUIPlatter.init(cornerRadius:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E29028();
  result = sub_213F4EA90();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = a2;
  *(a1 + 24) = a2;
  *(a1 + 32) = a2;
  *(a1 + 40) = a2;
  return result;
}

void *InsetGroupedUIPlatter.init(topLeft:topRight:bottomLeft:bottomRight:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_213E29028();
  result = sub_213F4EA90();
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  return result;
}

__n128 InsetGroupedUIPlatter.body.getter@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC858, &qword_213F64FC0);
  sub_213F4EAA0();
  *a1 = v4;
  result = *(v1 + 16);
  *(a1 + 24) = *(v1 + 32);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_213F417DC@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC858, &qword_213F64FC0);
  sub_213F4EAA0();
  *a1 = v4;
  result = *(v1 + 16);
  *(a1 + 24) = *(v1 + 32);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213F4184C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213F41894(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_213F418F0()
{
  result = qword_27C8FC938;
  if (!qword_27C8FC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC938);
  }

  return result;
}

uint64_t sub_213F41954(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_213F4199C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_213F41A08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC960, &qword_213F65278);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = sub_213F4CCE0();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = *v0;
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondarySystemGroupedBackgroundColor];
  [v16 setBackgroundColor_];

  sub_213F4CC50();
  v18 = sub_213F4CC60();
  v19 = *(*(v18 - 8) + 56);
  v19(v12, 0, 1, v18);
  sub_213F4CC50();
  v19(v10, 0, 1, v18);
  sub_213F4CC50();
  v19(v7, 0, 1, v18);
  sub_213F4CC50();
  v19(v4, 0, 1, v18);
  sub_213F4CCD0();
  sub_213F41FEC(v4);
  sub_213F41FEC(v7);
  sub_213F41FEC(v10);
  sub_213F41FEC(v12);
  sub_213F4F5E0();
  return v16;
}

uint64_t sub_213F41CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F41F98();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213F41D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F41F98();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213F41DB4(uint64_t a1)
{
  sub_213F41F98();
  sub_213F4DB60();
  __break(1u);
}

uint64_t sub_213F41DF8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>, double a5@<D0>)
{
  v8 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC940, &unk_213F65258) + 36));
  v9 = *(sub_213F4D470() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_213F4D950();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = a5;
  v8[1] = a5;
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)) = 256;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC948, &qword_213F65268);
  (*(*(v12 - 8) + 16))(a4, a1, v12);
  v13 = sub_213F4EEE0();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC858, &qword_213F64FC0);
  sub_213F4EAA0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC950, &qword_213F65270);
  v17 = a4 + *(result + 36);
  *v17 = v18;
  *(v17 + 8) = a5;
  *(v17 + 16) = a5;
  *(v17 + 24) = a5;
  *(v17 + 32) = a5;
  *(v17 + 40) = v13;
  *(v17 + 48) = v15;
  return result;
}

unint64_t sub_213F41F98()
{
  result = qword_27C8FC958;
  if (!qword_27C8FC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC958);
  }

  return result;
}

uint64_t sub_213F41FEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC960, &qword_213F65278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_213F42054()
{
  result = qword_27C8FC968;
  if (!qword_27C8FC968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC950, &qword_213F65270);
    sub_213F4210C();
    sub_213DE3AE4(&qword_27C8FC980, &qword_27C8FC988, &qword_213F65280, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC968);
  }

  return result;
}

unint64_t sub_213F4210C()
{
  result = qword_27C8FC970;
  if (!qword_27C8FC970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC940, &unk_213F65258);
    sub_213DE3AE4(&qword_27C8FC978, &qword_27C8FC948, &qword_213F65268, MEMORY[0x277CE04B0]);
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC970);
  }

  return result;
}

BOOL ListCellProviding.hasOneLineOfText.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 48))(a1) + 16);

  return v2 == 0;
}

BOOL ListCellProviding.hasTwoLinesOfText.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 48))(a1) + 16);

  return v2 == 1;
}

BOOL ListCellProviding.hasThreeLinesOfText.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 48))(a1) + 16);

  return v2 == 2;
}

BOOL ListCellProviding.hasTrailingAccessory.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 72))(a1) + 16);

  return v2 != 0;
}

BOOL ListCellProviding.hasContextLineAccessory.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 80))(a1) + 16);

  return v2 != 0;
}

BOOL ListCellProviding.hasBottomAccessory.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  (*(a2 + 88))(a1, a2);
  v7 = type metadata accessor for BottomAccessoryViewModel(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_213F4241C(v6);
  return v8;
}

uint64_t sub_213F4241C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB630, &qword_213F63CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL ListCellProviding.hasLeadingAccessory.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 64))(a1) + 16);

  return v2 != 0;
}

double ListCellProviding.imageProvider.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ListCellProviding.bottomAccessory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BottomAccessoryViewModel(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id static MapsDesignConstants.Colors.defaultButtonTintColor()()
{
  v0 = [objc_opt_self() labelColor];

  return v0;
}

uint64_t static MapsDesignConstants.Specs.values(_:carPlay:macOS:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_213F4D290();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4D280();
  sub_213F4D270();
  return (*(v6 + 8))(v8, v5);
}

int *static MapsDesignConstants.GridLayouts.visitedPlacesCategoriesGridLayoutConfig(count:dynamicType:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v15 = a1;
  v4 = sub_213F4D390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 104);
  v8(v7, *MEMORY[0x277CDFA00], v4);
  sub_213E691F4();
  v9 = sub_213F4F1D0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    v11 = 2.0;
  }

  else
  {
    v11 = 3.0;
  }

  v8(v7, *MEMORY[0x277CDF988], v4);
  v12 = sub_213F4F1D0();
  v10(v7, v4);
  if ((v12 & 1) == 0)
  {
    v11 = 4.0;
  }

  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig(0);
  *(a3 + result[5]) = 0;
  *(a3 + result[7]) = v11;
  *(a3 + result[8]) = v11;
  *(a3 + result[9]) = 0;
  *(a3 + result[10]) = 6;
  *(a3 + result[11]) = 1;
  *(a3 + result[12]) = 0x4030000000000000;
  *(a3 + result[13]) = 0x4020000000000000;
  *(a3 + result[14]) = 0;
  *(a3 + result[6]) = v15;
  return result;
}

int *static MapsDesignConstants.GridLayouts.visitedPlacesByCategoryGridLayoutConfig(count:dynamicType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a1;
  v4 = sub_213F4D390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CDFA00];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  sub_213E691F4();
  v10 = sub_213F4F1D0();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v12 = 3.0;
  if (v10)
  {
    v13 = 2.0;
  }

  else
  {
    v13 = 3.0;
  }

  v9(v7, v8, v4);
  v14 = sub_213F4F1D0();
  v11(v7, v4);
  if (v14)
  {
    v12 = 2.0;
  }

  v9(v7, *MEMORY[0x277CDF988], v4);
  v15 = sub_213F4F1D0();
  v11(v7, v4);
  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v12 = 2.5;
    v16 = 6.0;
  }

  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig(0);
  *(a3 + result[5]) = 4;
  *(a3 + result[7]) = v16;
  *(a3 + result[8]) = v12;
  *(a3 + result[9]) = 0;
  *(a3 + result[10]) = 6;
  *(a3 + result[11]) = 1;
  *(a3 + result[12]) = 0x4030000000000000;
  *(a3 + result[13]) = 0x4020000000000000;
  *(a3 + result[14]) = 0;
  *(a3 + result[6]) = v19;
  return result;
}

int *static MapsDesignConstants.GridLayouts.visitedPlacesLocationsGridLayoutConfig(count:dynamicType:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v20 = a1;
  v4 = sub_213F4D390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CDFA00];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  sub_213E691F4();
  v19 = sub_213F4F1D0();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v9(v7, *MEMORY[0x277CDF988], v4);
  v18 = sub_213F4F1D0();
  v10(v7, v4);
  v9(v7, v8, v4);
  v11 = sub_213F4F1D0();
  v10(v7, v4);
  if (v11)
  {
    v12 = 4.0;
    v13 = 3.0;
    v14 = 1;
    v15 = 3;
  }

  else
  {
    v14 = 0;
    v16 = 3.0;
    if (v19)
    {
      v16 = 2.0;
    }

    if (v18)
    {
      v13 = v16;
    }

    else
    {
      v13 = 4.0;
    }

    v15 = 6;
    v12 = v13;
  }

  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig(0);
  *(a3 + result[5]) = v14;
  *(a3 + result[7]) = v13;
  *(a3 + result[8]) = v12;
  *(a3 + result[9]) = 0;
  *(a3 + result[10]) = v15;
  *(a3 + result[11]) = 1;
  *(a3 + result[12]) = 0x4030000000000000;
  *(a3 + result[13]) = 0x4020000000000000;
  *(a3 + result[14]) = 0;
  *(a3 + result[6]) = v20;
  return result;
}

void static MapsDesignConstants.ColumnViews.containerSize(for:)(char *a1@<X8>, double a2@<D0>)
{
  if (a2 >= 550.0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (a2 >= 450.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (a2 < 320.0)
  {
    v3 = 0;
  }

  *a1 = v3;
}

double static MapsDesignConstants.ColumnViews.SearchHome.cityGuidesColumnViewConfig(itemCount:containerSize:)@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_213F4CB30();
  v6 = type metadata accessor for ColumnViewConfig(0);
  v7 = a3 + v6[8];
  *(a3 + v6[5]) = a1;
  v8 = 7;
  if (v5 == 2)
  {
    v8 = 9;
  }

  if (v5 == 3)
  {
    v8 = 11;
  }

  *(a3 + v6[6]) = v8;
  *(a3 + v6[7]) = 3;
  result = 3.0;
  *v7 = xmmword_213F652B0;
  *(v7 + 16) = 0;
  *(a3 + v6[9]) = 0x4030000000000000;
  *(a3 + v6[10]) = 0x4020000000000000;
  return result;
}

uint64_t MapsDesignConstants.ColumnViews.ContainerSize.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

int *static MapsDesignConstants.ColumnViews.MapsHome.pinnedColumnViewConfig(itemCount:containerSize:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_213F4CB30();
  result = type metadata accessor for ColumnViewConfig(0);
  v7 = a3 + result[8];
  *(a3 + result[5]) = a1;
  v8 = 8;
  if (v5 == 2)
  {
    v8 = 10;
  }

  if (v5 == 3)
  {
    v8 = 12;
  }

  *(a3 + result[6]) = v8;
  *(a3 + result[7]) = 2;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  *(a3 + result[9]) = 0x4030000000000000;
  *(a3 + result[10]) = 0x4020000000000000;
  return result;
}

int *sub_213F43270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for ColumnViewConfig(0);
  v9 = a4 + result[8];
  *(a4 + result[5]) = a1;
  *(a4 + result[6]) = a2;
  *(a4 + result[7]) = a3;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  *(a4 + result[9]) = 0x4030000000000000;
  *(a4 + result[10]) = 0x4020000000000000;
  return result;
}

double _s10MapsDesign0aB9ConstantsO11ColumnViewsO0A4HomeV010userGuidesD10ViewConfig9itemCount13containerSizeAA0diJ0VSi_AE09ContainerN0OtFZ_0@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_213F4CB30();
  v6 = type metadata accessor for ColumnViewConfig(0);
  v7 = a3 + v6[8];
  *(a3 + v6[5]) = a1;
  v8 = 6;
  if (v5 == 2)
  {
    v8 = 8;
  }

  if (v5 == 3)
  {
    v8 = 10;
  }

  *(a3 + v6[6]) = v8;
  *(a3 + v6[7]) = 3;
  result = 3.0;
  *v7 = xmmword_213F652B0;
  *(v7 + 16) = 0;
  *(a3 + v6[9]) = 0x4030000000000000;
  *(a3 + v6[10]) = 0x4020000000000000;
  return result;
}

double static MapsDesignConstants.GridLayouts.visitedPlacesCurrentYearGridLayoutConfig(count:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 3)
  {
    v4 = 6.0;
  }

  else
  {
    v4 = 4.5;
  }

  sub_213F4CB30();
  v5 = type metadata accessor for GridLayoutConfig(0);
  *(a2 + v5[5]) = 3;
  *(a2 + v5[7]) = v4;
  result = v4 + 1.0;
  *(a2 + v5[8]) = v4 + 1.0;
  *(a2 + v5[9]) = 0;
  *(a2 + v5[10]) = 6;
  *(a2 + v5[11]) = 3;
  *(a2 + v5[12]) = 0x4030000000000000;
  *(a2 + v5[13]) = 0x4020000000000000;
  *(a2 + v5[14]) = 0;
  *(a2 + v5[6]) = a1;
  return result;
}

double static MapsDesignConstants.GridLayouts.visitedPlacesPreviousYearGridLayoutConfig(count:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 1)
  {
    v4 = 6.0;
  }

  else
  {
    v4 = 4.5;
  }

  sub_213F4CB30();
  v5 = type metadata accessor for GridLayoutConfig(0);
  *(a2 + v5[5]) = 3;
  *(a2 + v5[7]) = v4;
  result = v4 + 1.0;
  *(a2 + v5[8]) = v4 + 1.0;
  *(a2 + v5[9]) = 0;
  *(a2 + v5[10]) = 6;
  *(a2 + v5[11]) = 1;
  *(a2 + v5[12]) = 0x4030000000000000;
  *(a2 + v5[13]) = 0x4020000000000000;
  *(a2 + v5[14]) = 0;
  *(a2 + v5[6]) = a1;
  return result;
}

int *static MapsDesignConstants.GridLayouts.searchHomeFindNearbyGridLayoutConfig(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig(0);
  *(a2 + result[5]) = 3;
  *(a2 + result[7]) = 0x4012000000000000;
  *(a2 + result[8]) = 0x4016000000000000;
  *(a2 + result[9]) = 0;
  *(a2 + result[10]) = 6;
  *(a2 + result[11]) = 2;
  *(a2 + result[12]) = 0x4030000000000000;
  *(a2 + result[13]) = 0x4020000000000000;
  *(a2 + result[14]) = 0;
  *(a2 + result[6]) = a1;
  return result;
}

int *static MapsDesignConstants.GridLayouts.searchHomeRecentsGridLayoutConfig(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig(0);
  *(a2 + result[5]) = 2;
  *(a2 + result[7]) = 0x4018000000000000;
  *(a2 + result[8]) = 0x401C000000000000;
  *(a2 + result[9]) = 0;
  *(a2 + result[10]) = 6;
  *(a2 + result[11]) = 3;
  *(a2 + result[12]) = 0x4030000000000000;
  *(a2 + result[13]) = 0x4020000000000000;
  *(a2 + result[14]) = 1;
  *(a2 + result[6]) = a1;
  return result;
}

int *static MapsDesignConstants.GridLayouts.searchHomeCityGuideGridLayoutConfig(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig(0);
  *(a2 + result[5]) = 0;
  *(a2 + result[7]) = 0x4008000000000000;
  *(a2 + result[8]) = 0x4010000000000000;
  *(a2 + result[9]) = 0;
  *(a2 + result[10]) = 7;
  *(a2 + result[11]) = 1;
  *(a2 + result[12]) = 0x4030000000000000;
  *(a2 + result[13]) = 0x4020000000000000;
  *(a2 + result[14]) = 0;
  *(a2 + result[6]) = a1;
  return result;
}

int *static MapsDesignConstants.GridLayouts.searchHomeNearbyGuideGridLayoutConfig(count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F4CB30();
  result = type metadata accessor for GridLayoutConfig(0);
  *(a2 + result[5]) = 0;
  v5 = 3.0;
  if (a1 == 1)
  {
    v5 = 6.0;
  }

  *(a2 + result[7]) = v5;
  *(a2 + result[8]) = 0x4010000000000000;
  *(a2 + result[9]) = 0;
  *(a2 + result[10]) = 6;
  *(a2 + result[11]) = 1;
  *(a2 + result[12]) = 0x4030000000000000;
  *(a2 + result[13]) = 0x4020000000000000;
  *(a2 + result[14]) = 0;
  *(a2 + result[6]) = a1;
  return result;
}

unint64_t sub_213F43BE0()
{
  result = qword_27C8FC990;
  if (!qword_27C8FC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FC990);
  }

  return result;
}

uint64_t sub_213F43D34()
{
  v0 = sub_213F4CC40();
  __swift_allocate_value_buffer(v0, qword_28118EDE0);
  __swift_project_value_buffer(v0, qword_28118EDE0);
  return sub_213F4CC30();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_213F43E1C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_213F4F6B0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t MapsDesignMarquee.init(spacing:feathering:rate:delay:direction:content:)@<X0>(double a1@<X0>, char a2@<W1>, double a3@<X2>, int a4@<W3>, double a5@<X4>, int a6@<W5>, double a7@<X6>, int a8@<W7>, double *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v50 = a8;
  v49 = a7;
  v48 = a6;
  v47 = a5;
  v46 = a4;
  v45 = a3;
  v51 = a12;
  v52 = a11;
  v17 = sub_213F4D3B0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v44 - v22;
  v25 = type metadata accessor for MapsDesignMarquee(0, a13, a14, v24);
  v26 = (a9 + v25[14]);
  v27 = sub_213E93B1C();
  *v26 = v28;
  v26[1] = v29;
  v26[2] = v27;
  v30 = a9 + v25[15];
  v53 = 0;
  sub_213F4EA90();
  v31 = v55;
  *v30 = v54;
  *(v30 + 1) = v31;
  v32 = sub_213F4CB00();
  (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
  sub_213F44254(v23);
  v33 = a9 + v25[17];
  *v33 = swift_getKeyPath();
  *(v33 + 1) = 0;
  *(v33 + 8) = 0;
  v34 = v25[18];
  *(a9 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v35 = a9 + v25[19];
  *v35 = sub_213F47E1C;
  *(v35 + 1) = 0;
  v35[16] = 0;
  v36 = a1;
  if (a2)
  {
    v36 = 20.0;
  }

  v37 = v45;
  if (v46)
  {
    v37 = 8.0;
  }

  *a9 = v36;
  a9[1] = v37;
  v38 = v47;
  if (v48)
  {
    v38 = 30.0;
  }

  v39 = v49;
  if (v50)
  {
    v39 = 2.0;
  }

  a9[2] = v38;
  a9[3] = v39;
  v40 = *(v18 + 48);
  if (v40(a10, 1, v17) == 1)
  {
    (*(v18 + 104))(v20, *MEMORY[0x277CDFA88], v17);
    if (v40(a10, 1, v17) != 1)
    {
      sub_213DE36FC(a10, &qword_27C8F7B58, &unk_213F52120);
    }
  }

  else
  {
    (*(v18 + 32))(v20, a10, v17);
  }

  result = (*(v18 + 32))(a9 + v25[12], v20, v17);
  v42 = (a9 + v25[13]);
  v43 = v51;
  *v42 = v52;
  v42[1] = v43;
  return result;
}

uint64_t sub_213F44254(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  MEMORY[0x28223BE20](v3);
  sub_213DE3164(a1, &v6 - v4, &qword_27C8F7B50, &qword_213F653D0);
  sub_213F4EA90();
  return sub_213DE36FC(a1, &qword_27C8F7B50, &qword_213F653D0);
}

double sub_213F4431C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  return v2;
}

uint64_t sub_213F443E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  return v2;
}

uint64_t sub_213F444A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213DE3164(a1, &v5 - v3, &qword_27C8F7B50, &qword_213F653D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9B8, &qword_213F65450);
  sub_213F4EAB0();
  return sub_213DE36FC(a1, &qword_27C8F7B50, &qword_213F653D0);
}

uint64_t MapsDesignMarquee.coordinatedContentSize.getter(uint64_t a1)
{
  v3 = sub_213F4D7F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 68);
  result = *v7;
  v9 = *(v7 + 16);
  if (*(v7 + 17) != 1)
  {
    v10 = *v7;
    v11 = *(v7 + 8);

    sub_213F4F520();
    v12 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v13 = sub_213F47E54(v10, v11, v9, 0);
    (*(v4 + 8))(v6, v3, v13);
    return v14[1];
  }

  return result;
}

uint64_t sub_213F446EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213F4AD34();
  sub_213F4D820();
  return v4;
}

double sub_213F4472C@<D0>(uint64_t a4@<X8>)
{
  sub_213F4AD34();
  sub_213F4D820();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_213F447D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213F4D7F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_213DE3164(v2 + *(a1 + 72), &v15 - v10, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_213F4D290();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_213F4F520();
    v14 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t MapsDesignMarquee.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = *(a1 - 8);
  v45 = v2;
  v46 = *(v44 + 64);
  MEMORY[0x28223BE20](a1);
  v43 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_213F4DEF0();
  MEMORY[0x28223BE20](v41);
  v35 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a1 + 16);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC998, &qword_213F65430);
  sub_213F4D400();
  sub_213F4DF60();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  v6 = sub_213F4D400();
  WitnessTable = swift_getWitnessTable();
  v64 = MEMORY[0x277CDF748];
  v7 = swift_getWitnessTable();
  v8 = MEMORY[0x277D839B0];
  v59 = v6;
  v60 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277D839C8];
  v61 = v7;
  v62 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  v59 = v6;
  v60 = v8;
  v61 = v7;
  v62 = v9;
  swift_getOpaqueTypeConformance2();
  v34[1] = sub_213F4D250();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9A0, &qword_213F65438);
  v34[2] = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9A8, &qword_213F65440);
  v36 = sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9B0, &qword_213F65448);
  v38 = sub_213F4D400();
  v39 = sub_213F4D400();
  v37 = sub_213F4D400();
  v40 = sub_213F4ACE4(&qword_2811828E8, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  v10 = sub_213F4D060();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v34 - v15;
  v17 = v45;
  sub_213F4510C(a1);
  v18 = v44;
  v19 = v43;
  (*(v44 + 16))(v43, v17, a1);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v22 = *(a1 + 24);
  *(v21 + 16) = v42;
  *(v21 + 24) = v22;
  (*(v18 + 32))(v21 + v20, v19, a1);
  v23 = swift_getWitnessTable();
  v24 = sub_213DE3AE4(&qword_2811834D0, &qword_27C8FC9A0, &qword_213F65438, MEMORY[0x277CDF520]);
  v57 = v23;
  v58 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_213DE3AE4(&qword_281182880, &qword_27C8FC9A8, &qword_213F65440, MEMORY[0x277CE0868]);
  v55 = v25;
  v56 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_213DE3AE4(&qword_2811828B8, &qword_27C8FC9B0, &qword_213F65448, MEMORY[0x277CE07C8]);
  v53 = v27;
  v54 = v28;
  v51 = swift_getWitnessTable();
  v52 = MEMORY[0x277CDF678];
  v49 = swift_getWitnessTable();
  v50 = MEMORY[0x277CDFC60];
  v29 = v37;
  v30 = swift_getWitnessTable();
  sub_213F47C2C(v35, sub_213F47E68, v21, v41, v29, v40, v30);
  v48 = v30;
  v31 = swift_getWitnessTable();
  sub_213DBFEEC(v14, v10, v31);
  v32 = *(v11 + 8);
  v32(v14, v10);
  sub_213DBFEEC(v16, v10, v31);
  return (v32)(v16, v10);
}

uint64_t sub_213F4510C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_213F47D84(a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_213F4CD20();

  if (sub_213F4787C(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9B8, &qword_213F65450);
    sub_213F4EAA0();
    v5 = sub_213F4CB00();
    (*(*(v5 - 8) + 48))(v4, 1, v5);
    sub_213DE36FC(v4, &qword_27C8F7B50, &qword_213F653D0);
  }

  return sub_213F4DEE0();
}

uint64_t sub_213F452AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a3;
  v100 = a4;
  v98 = a2;
  v90 = a1;
  v96 = a5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9C0, &qword_213F65458);
  MEMORY[0x28223BE20](v95);
  v94 = v68 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA58, &qword_213F65740);
  v74 = *(v83 - 8);
  v88 = *(v74 + 64);
  MEMORY[0x28223BE20](v83);
  v9 = v68 - v8;
  v82 = type metadata accessor for MapsDesignMarquee(0, a3, a4, v10);
  v11 = *(v82 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v82);
  v14 = v68 - v13;
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC998, &qword_213F65430);
  sub_213F4D400();
  sub_213F4DF60();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  v15 = sub_213F4D400();
  WitnessTable = swift_getWitnessTable();
  v116 = MEMORY[0x277CDF748];
  v80 = MEMORY[0x277CDFAD8];
  v16 = swift_getWitnessTable();
  v17 = MEMORY[0x277D839B0];
  v111 = v15;
  v112 = MEMORY[0x277D839B0];
  v18 = MEMORY[0x277D839C8];
  v113 = v16;
  v114 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = v15;
  v112 = v17;
  v113 = v16;
  v114 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = sub_213F4D250();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9A0, &qword_213F65438);
  v75 = sub_213F4D400();
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = v68 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9A8, &qword_213F65440);
  v76 = sub_213F4D400();
  v84 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v97 = v68 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9B0, &qword_213F65448);
  v81 = sub_213F4D400();
  v87 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = v68 - v21;
  v86 = sub_213F4D400();
  v92 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v79 = v68 - v22;
  v91 = sub_213F4D400();
  v93 = *(v91 - 8);
  v23 = MEMORY[0x28223BE20](v91);
  v85 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v89 = v68 - v25;
  v26 = v11;
  v27 = *(v11 + 16);
  v68[2] = v11 + 16;
  v69 = v27;
  v68[0] = v14;
  v28 = v82;
  v27(v14, v98, v82);
  v29 = v74;
  v30 = v9;
  v31 = v9;
  v32 = v83;
  (*(v74 + 16))(v31, v90, v83);
  v33 = *(v26 + 80);
  v34 = (v33 + 32) & ~v33;
  v90 = v34 + v12;
  v68[1] = v33 | 7;
  v35 = (v34 + v12 + *(v29 + 80)) & ~*(v29 + 80);
  v36 = swift_allocObject();
  v37 = v100;
  *(v36 + 16) = v99;
  *(v36 + 24) = v37;
  v88 = *(v26 + 32);
  v88(v36 + v34, v14, v28);
  (*(v29 + 32))(v36 + v35, v30, v32);
  v111 = sub_213F4D240();
  v112 = v38;
  v39 = v94;
  v40 = v98;
  MapsDesignMarquee.mask.getter(v28, v94);
  v41 = swift_getWitnessTable();
  sub_213F4A064();
  v42 = v70;
  sub_213F4E720();
  sub_213DE36FC(v39, &qword_27C8FC9C0, &qword_213F65458);

  swift_getKeyPath();
  v43 = sub_213DE3AE4(&qword_2811834D0, &qword_27C8FC9A0, &qword_213F65438, MEMORY[0x277CDF520]);
  v109 = v41;
  v110 = v43;
  v44 = v75;
  v45 = swift_getWitnessTable();
  sub_213F4E3F0();

  (*(v78 + 8))(v42, v44);
  v46 = v68[0];
  v69(v68[0], v40, v28);
  v47 = swift_allocObject();
  v48 = v100;
  *(v47 + 16) = v99;
  *(v47 + 24) = v48;
  v49 = v47 + v34;
  v50 = v28;
  v88(v49, v46, v28);
  v51 = sub_213DE3AE4(&qword_281182880, &qword_27C8FC9A8, &qword_213F65440, MEMORY[0x277CE0868]);
  v107 = v45;
  v108 = v51;
  v52 = v76;
  v53 = swift_getWitnessTable();
  sub_213F4AADC();
  sub_213F4ACE4(&unk_281182358, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
  v54 = v77;
  v55 = v97;
  sub_213F4E5D0();

  (*(v84 + 8))(v55, v52);
  sub_213F4431C(v50);
  sub_213F4EEE0();
  v56 = sub_213DE3AE4(&qword_2811828B8, &qword_27C8FC9B0, &qword_213F65448, MEMORY[0x277CE07C8]);
  v105 = v53;
  v106 = v56;
  v57 = v81;
  v58 = swift_getWitnessTable();
  v59 = v79;
  sub_213F4E740();
  (*(v87 + 8))(v54, v57);
  sub_213F4431C(v50);
  sub_213F4EEE0();
  v103 = v58;
  v104 = MEMORY[0x277CDF678];
  v66 = v86;
  v67 = swift_getWitnessTable();
  v60 = v85;
  sub_213F4E750();
  (*(v92 + 8))(v59, v66);
  v101 = v67;
  v102 = MEMORY[0x277CDFC60];
  v61 = v91;
  v62 = swift_getWitnessTable();
  v63 = v89;
  sub_213DBFEEC(v60, v61, v62);
  v64 = *(v93 + 8);
  v64(v60, v61);
  sub_213DBFEEC(v63, v61, v62);
  return (v64)(v63, v61);
}

uint64_t sub_213F45F9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a5;
  v50 = a3;
  v46 = a1;
  v54 = a6;
  v49 = type metadata accessor for MapsDesignMarquee(0, a4, a5, a4);
  v51 = *(v49 - 8);
  v53 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v36 - v8;
  v48 = sub_213F4CB00();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a4;
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC998, &qword_213F65430);
  sub_213F4D400();
  sub_213F4DF60();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v10 = sub_213F4EB40();
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  v13 = sub_213F4D400();
  v44 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v38 = &v36 - v14;
  WitnessTable = swift_getWitnessTable();
  v64 = WitnessTable;
  v65 = MEMORY[0x277CDF748];
  v40 = swift_getWitnessTable();
  v60 = v13;
  v61 = MEMORY[0x277D839B0];
  v62 = v40;
  v63 = MEMORY[0x277D839C8];
  v42 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v39 = &v36 - v19;
  v56 = a4;
  v57 = v55;
  v58 = a2;
  v59 = v46;
  sub_213F4D8A0();
  sub_213F4EB30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA58, &qword_213F65740);
  v20 = v45;
  sub_213F4D030();
  v21 = v49;
  sub_213F4763C(v20, v49);
  (*(v47 + 8))(v20, v48);
  v22 = v38;
  sub_213F4E760();
  (*(v41 + 8))(v12, v10);
  LOBYTE(v60) = sub_213F4787C(v21) & 1;
  v23 = v51;
  v24 = v52;
  (*(v51 + 16))(v52, a2, v21);
  v25 = v23;
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v27 = swift_allocObject();
  v28 = v55;
  *(v27 + 16) = v36;
  *(v27 + 24) = v28;
  (*(v25 + 32))(v27 + v26, v24, v21);
  v29 = MEMORY[0x277D839B0];
  v30 = v40;
  v31 = MEMORY[0x277D839C8];
  sub_213F4E810();

  (*(v44 + 8))(v22, v13);
  v60 = v13;
  v61 = v29;
  v62 = v30;
  v63 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_213DBFEEC(v18, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v34 = *(v43 + 8);
  v34(v18, OpaqueTypeMetadata2);
  sub_213DBFEEC(v33, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v34)(v33, OpaqueTypeMetadata2);
}

uint64_t sub_213F466C0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v132 = a4;
  v133 = a2;
  v137 = a1;
  v130 = a5;
  v6 = type metadata accessor for MapsDesignMarquee(0, a3, a4, a4);
  v131 = v6;
  v112 = *(v6 - 8);
  v119 = *(v112 + 64);
  MEMORY[0x28223BE20](v6);
  v120 = &v101 - v7;
  v8 = sub_213F4D400();
  sub_213F4DF60();
  v9 = sub_213F4D400();
  v107 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v118 = &v101 - v10;
  v136 = v11;
  v12 = sub_213F4D400();
  v110 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v108 = &v101 - v13;
  v135 = v14;
  v15 = sub_213F4D400();
  v121 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v111 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v109 = &v101 - v18;
  v127 = v19;
  v129 = sub_213F4F6B0();
  v128 = *(v129 - 8);
  v20 = MEMORY[0x28223BE20](v129);
  v126 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v125 = &v101 - v22;
  v123 = sub_213F4D160();
  v23 = *(v123 - 8);
  v117 = *(v23 + 64);
  v24 = MEMORY[0x28223BE20](v123);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a3 - 8);
  v28 = MEMORY[0x28223BE20](v24);
  v30 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v8;
  v124 = *(v8 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v101 - v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC998, &qword_213F65430);
  v33 = sub_213F4D400();
  v134 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v138 = &v101 - v38;
  v39 = v137 + *(v6 + 52);
  v40 = *v39;
  v103 = *(v39 + 8);
  v104 = v40;
  v40(v37);
  v41 = v132;
  sub_213F4E830();
  v42 = *(v27 + 8);
  v105 = v30;
  v122 = a3;
  v106 = v27 + 8;
  v102 = v42;
  v42(v30, a3);
  sub_213F4EAE0();
  v43 = v26;
  v44 = v26;
  v45 = v123;
  (*(v23 + 16))(v44, v133, v123);
  v46 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v47 = swift_allocObject();
  v48 = v43;
  v49 = v113;
  (*(v23 + 32))(v47 + v46, v48, v45);
  type metadata accessor for CGRect(0);
  v155[10] = v41;
  v155[11] = MEMORY[0x277CDFC48];
  WitnessTable = swift_getWitnessTable();
  sub_213F4AADC();
  sub_213F4E580();
  v51 = v124;

  v52 = *(v51 + 8);
  v53 = v32;
  v52(v32, v49);
  v54 = sub_213DE3AE4(&qword_281182928, &qword_27C8FC998, &qword_213F65430, MEMORY[0x277CE0598]);
  v155[8] = WitnessTable;
  v155[9] = v54;
  v114 = swift_getWitnessTable();
  sub_213DBFEEC(v36, v33, v114);
  v55 = *(v134 + 8);
  v123 = v36;
  v124 = v33;
  v117 = v134 + 8;
  v116 = v55;
  v55(v36, v33);
  v56 = v137;
  v57 = sub_213F4431C(v131);
  v58 = sub_213F4D140();
  v115 = WitnessTable;
  if (v59 >= v57)
  {
    v87 = v126;
    (*(v121 + 56))(v126, 1, 1, v127);
    v88 = sub_213F4ACE4(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v155[6] = WitnessTable;
    v155[7] = v88;
    v155[4] = swift_getWitnessTable();
    v89 = MEMORY[0x277CE0790];
    v155[5] = MEMORY[0x277CE0790];
    v155[2] = swift_getWitnessTable();
    v155[3] = v89;
    swift_getWitnessTable();
  }

  else
  {
    v60 = v105;
    v104(v58);
    v61 = v53;
    v62 = v122;
    v63 = v132;
    sub_213F4E830();
    v102(v60, v62);
    sub_213F4E620();
    v52(v61, v49);
    v64 = v112;
    v133 = *(v112 + 16);
    v65 = v120;
    v66 = v131;
    v133(v120, v56, v131);
    v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = v62;
    *(v68 + 24) = v63;
    v113 = *(v64 + 32);
    v113(v68 + v67, v65, v66);
    v69 = sub_213F4ACE4(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v143 = WitnessTable;
    v144 = v69;
    v70 = v136;
    v71 = swift_getWitnessTable();
    v72 = v108;
    v73 = v118;
    sub_213F4E800();

    (*(v107 + 8))(v73, v70);
    v74 = v120;
    v75 = v131;
    v133(v120, v137, v131);
    v76 = swift_allocObject();
    v77 = v132;
    *(v76 + 16) = v122;
    *(v76 + 24) = v77;
    v113(v76 + v67, v74, v75);
    v141 = v71;
    v78 = MEMORY[0x277CE0790];
    v142 = MEMORY[0x277CE0790];
    v79 = v135;
    v80 = swift_getWitnessTable();
    v81 = v111;
    sub_213F4E420();

    (*(v110 + 8))(v72, v79);
    v139 = v80;
    v140 = v78;
    v82 = v127;
    v83 = swift_getWitnessTable();
    v84 = v109;
    sub_213DBFEEC(v81, v82, v83);
    v85 = v121;
    v86 = *(v121 + 8);
    v86(v81, v82);
    sub_213DBFEEC(v84, v82, v83);
    v86(v84, v82);
    v87 = v126;
    (*(v85 + 32))(v126, v81, v82);
    (*(v85 + 56))(v87, 0, 1, v82);
  }

  v90 = v128;
  v91 = *(v128 + 16);
  v92 = v125;
  v93 = v129;
  v91(v125, v87, v129);
  v94 = *(v90 + 8);
  v94(v87, v93);
  v95 = v123;
  v96 = v124;
  (*(v134 + 16))(v123, v138, v124);
  v155[0] = v95;
  v91(v87, v92, v93);
  v155[1] = v87;
  v154[0] = v96;
  v154[1] = v93;
  v152 = v114;
  v97 = sub_213F4ACE4(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v150 = v115;
  v151 = v97;
  v148 = swift_getWitnessTable();
  v98 = MEMORY[0x277CE0790];
  v149 = MEMORY[0x277CE0790];
  v146 = swift_getWitnessTable();
  v147 = v98;
  v145 = swift_getWitnessTable();
  v153 = swift_getWitnessTable();
  sub_213E95270(v155, 2uLL, v154);
  v94(v92, v93);
  v99 = v116;
  v116(v138, v96);
  v94(v87, v93);
  return v99(v95, v96);
}

uint64_t sub_213F4763C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_213F4CB00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9B8, &qword_213F65450);
  sub_213F4EAA0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_213DE36FC(v5, &qword_27C8F7B50, &qword_213F653D0);
  }

  (*(v7 + 32))(v9, v5, v6);
  if (sub_213F4431C(a2) == 0.0 && v11 == 0.0)
  {
    return (*(v7 + 8))(v9, v6);
  }

  sub_213F4CAE0();
  v13 = v12;
  v14 = sub_213F47F04(a2);
  fmod(v13, v14);
  sub_213F47F04(a2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_213F4787C(uint64_t a1)
{
  v2 = sub_213F4D290();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  if (sub_213F443E0(a1))
  {
    sub_213F447D8(a1, v8);
    sub_213F4D280();
    sub_213F4ACE4(&qword_2811834A8, MEMORY[0x277CDF7E8], MEMORY[0x277CDF7F0]);
    v9 = sub_213F4F1F0();
    v10 = *(v3 + 8);
    v10(v6, v2);
    v10(v8, v2);
    v11 = v9 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_213F479F4(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  if (*a2 == 1)
  {
    sub_213F4CAF0();
    v11 = sub_213F4CB00();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v13 = sub_213F4CB00();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  type metadata accessor for MapsDesignMarquee(0, a4, a5, v12);
  return sub_213F444A4(v10);
}

uint64_t MapsDesignMarquee.mask.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_213F47F80(*(a1 + 16), *(a1 + 24), a2);
  v3 = sub_213F4E0B0();
  sub_213F4CDA0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9C0, &qword_213F65458);
  v13 = a2 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

void sub_213F47BAC(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for MapsDesignMarquee(0, a3, a4, a4);
  if (vabdd_f64(sub_213F4431C(v6), v4) > 0.5 || (sub_213F4431C(v6), vabdd_f64(v7, v5) > 0.5))
  {
    sub_213F4437C(v6, v4, v5);
  }
}

uint64_t sub_213F47C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a2;
  v17[7] = a3;
  sub_213F4D050();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_213F47D84(uint64_t a1)
{
  v2 = (v1 + *(a1 + 76));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = type metadata accessor for LowPowerMode(0);
  v7 = sub_213F4ACE4(&qword_281188118, type metadata accessor for LowPowerMode, &unk_213F65660);

  return MEMORY[0x282130840](v3, v4, v5, v6, v7);
}

uint64_t sub_213F47E1C()
{
  type metadata accessor for LowPowerMode(0);
  swift_allocObject();
  return sub_213F487BC();
}

double sub_213F47E54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_213F47E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for MapsDesignMarquee(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_213F452AC(a1, v9, v6, v7, a3);
}

double sub_213F47F04(uint64_t a1)
{
  v3 = sub_213F4431C(a1);
  v4 = *v1;
  v5 = MapsDesignMarquee.coordinatedContentSize.getter(a1);
  if (v6)
  {
    v7 = sub_213F4431C(a1);
  }

  else
  {
    v7 = *&v5;
  }

  return v1[3] + (v3 + v4 + v7 - sub_213F4431C(a1)) / v1[2];
}

uint64_t sub_213F47F80@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA48, &qword_213F656E8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v35 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9F8, &qword_213F655E0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v14 = type metadata accessor for MapsDesignMarquee(0, a2, a3, v13);
  if (sub_213F443E0(v14))
  {
    v39 = v7;
    v40 = a4;
    v38 = sub_213F4D8A0();
    v55 = 0;
    sub_213F483E4(&v42);
    v64 = v50;
    v65 = v51;
    v66 = v52;
    v60 = v46;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v56 = v42;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    v68[8] = v50;
    v68[9] = v51;
    v68[10] = v52;
    v68[4] = v46;
    v68[5] = v47;
    v68[6] = v48;
    v68[7] = v49;
    v68[0] = v42;
    v68[1] = v43;
    v67 = v53;
    v69 = v53;
    v68[2] = v44;
    v68[3] = v45;
    sub_213DE3164(&v56, v41, &qword_27C8FCA50, &qword_213F656F0);
    sub_213DE36FC(v68, &qword_27C8FCA50, &qword_213F656F0);
    *(&v54[8] + 7) = v64;
    *(&v54[9] + 7) = v65;
    *(&v54[10] + 7) = v66;
    *(&v54[4] + 7) = v60;
    *(&v54[5] + 7) = v61;
    *(&v54[6] + 7) = v62;
    *(&v54[7] + 7) = v63;
    *(v54 + 7) = v56;
    *(&v54[1] + 7) = v57;
    *(&v54[2] + 7) = v58;
    *(&v54[11] + 7) = v67;
    *(&v54[3] + 7) = v59;
    v37 = v55;
    v36 = sub_213F4E040();
    sub_213F4CDA0();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v41[0] = 0;
    KeyPath = swift_getKeyPath();
    v24 = &v12[*(v10 + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9A8, &qword_213F65440) + 28);
    v26 = *MEMORY[0x277CDFA88];
    v27 = sub_213F4D3B0();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = KeyPath;
    v28 = v54[9];
    *(v12 + 145) = v54[8];
    *(v12 + 161) = v28;
    *(v12 + 177) = v54[10];
    *(v12 + 12) = *(&v54[10] + 15);
    v29 = v54[5];
    *(v12 + 81) = v54[4];
    *(v12 + 97) = v29;
    v30 = v54[7];
    *(v12 + 113) = v54[6];
    *(v12 + 129) = v30;
    v31 = v54[1];
    *(v12 + 17) = v54[0];
    *(v12 + 33) = v31;
    v32 = v54[3];
    *(v12 + 49) = v54[2];
    *v12 = v38;
    *(v12 + 1) = 0;
    v33 = v36;
    v12[16] = v37;
    *(v12 + 65) = v32;
    v12[208] = v33;
    *(v12 + 209) = v42;
    *(v12 + 53) = *(&v42 + 3);
    *(v12 + 27) = v16;
    *(v12 + 28) = v18;
    *(v12 + 29) = v20;
    *(v12 + 30) = v22;
    v12[248] = 0;
    sub_213DE3164(v12, v9, &qword_27C8FC9F8, &qword_213F655E0);
    swift_storeEnumTagMultiPayload();
    sub_213F4A200();
    sub_213F4DBA0();
    return sub_213DE36FC(v12, &qword_27C8FC9F8, &qword_213F655E0);
  }

  else
  {
    *v9 = sub_213F4E8C0();
    swift_storeEnumTagMultiPayload();
    sub_213F4A200();
    return sub_213F4DBA0();
  }
}

uint64_t sub_213F483E4@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F92C8, &qword_213F57320);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_213F51DE0;
  *(v3 + 32) = sub_213F4E8D0();
  *(v3 + 40) = sub_213F4E8C0();
  sub_213F4F050();
  sub_213F4F060();
  MEMORY[0x2160521D0](v3);
  sub_213F4D2C0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v4 = sub_213F4E8C0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_213F51DE0;
  *(v5 + 32) = sub_213F4E8C0();
  *(v5 + 40) = sub_213F4E8D0();
  sub_213F4F050();
  sub_213F4F060();
  MEMORY[0x2160521D0](v5);
  sub_213F4D2C0();
  sub_213F4EEE0();
  sub_213F4D0C0();
  v19[2] = v15;
  v19[3] = v16;
  v19[4] = v17;
  v19[0] = v13;
  v19[1] = v14;
  v21[2] = v9;
  v21[3] = v10;
  v21[4] = v11;
  v21[0] = v7;
  v21[1] = v8;
  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 48) = v16;
  *(a2 + 64) = v17;
  *(a2 + 32) = v15;
  *(a2 + 128) = v9;
  *(a2 + 144) = v10;
  *(a2 + 160) = v11;
  *(a2 + 96) = v7;
  *(a2 + 112) = v8;
  v20 = v18;
  v22 = v12;
  *(a2 + 80) = v18;
  *(a2 + 88) = v4;
  *(a2 + 176) = v12;
  v23[0] = v7;
  v23[1] = v8;
  v24 = v12;
  v23[3] = v10;
  v23[4] = v11;
  v23[2] = v9;
  sub_213DE3164(v19, v25, &qword_27C8F94E8, &unk_213F65730);

  sub_213DE3164(v21, v25, &qword_27C8F94E8, &unk_213F65730);
  sub_213DE36FC(v23, &qword_27C8F94E8, &unk_213F65730);

  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v26 = v18;
  v25[0] = v13;
  v25[1] = v14;
  return sub_213DE36FC(v25, &qword_27C8F94E8, &unk_213F65730);
}

double View.coordinatedMapsDesignMarquees()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CGSize(0);
  sub_213F4EA90();
  MEMORY[0x216051BF0](&v5, a1, &type metadata for CoordinatedMapsDesignMarquees, a2);

  return result;
}

uint64_t sub_213F48748()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_213F4CD20();

  return v1;
}

uint64_t sub_213F487BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA60, &qword_213F65748);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_213F4F5B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA68, &unk_213F65750);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA40, &qword_213F656E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC10MapsDesignP33_43D951131FA075B6C4BE7F30380B0BA212LowPowerMode__isEnabled;
  v31 = 0;
  sub_213F4CD10();
  (*(v14 + 32))(v1 + v17, v16, v13);
  v18 = OBJC_IVAR____TtC10MapsDesignP33_43D951131FA075B6C4BE7F30380B0BA212LowPowerMode_subscription;
  *(v1 + OBJC_IVAR____TtC10MapsDesignP33_43D951131FA075B6C4BE7F30380B0BA212LowPowerMode_subscription) = 0;
  v19 = [objc_opt_self() defaultCenter];
  sub_213F4F5C0();

  sub_213F1FF38();
  v20 = sub_213F4F580();
  v30 = v20;
  v21 = sub_213F4F570();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_213F4ACE4(&qword_2811823D0, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
  sub_213F4ACE4(&unk_2811823F0, sub_213F1FF38, MEMORY[0x277D85228]);
  sub_213F4CD40();
  sub_213DE36FC(v4, &qword_27C8FCA60, &qword_213F65748);

  (*(v6 + 8))(v8, v5);
  swift_allocObject();
  swift_weakInit();
  sub_213DE3AE4(&qword_281183550, &qword_27C8FCA68, &unk_213F65750, MEMORY[0x277CBCD60]);
  v22 = v27;
  v23 = sub_213F4CD50();

  (*(v28 + 8))(v12, v22);
  *(v1 + v18) = v23;

  v24 = [objc_opt_self() processInfo];
  LOBYTE(v22) = [v24 isLowPowerModeEnabled];

  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v22;

  sub_213F4CD30();
  return v1;
}

uint64_t sub_213F48C98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = [objc_opt_self() processInfo];
    [v3 isLowPowerModeEnabled];

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_213F4CD30();
  }

  return result;
}

uint64_t sub_213F48D58()
{
  v1 = OBJC_IVAR____TtC10MapsDesignP33_43D951131FA075B6C4BE7F30380B0BA212LowPowerMode__isEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA40, &qword_213F656E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_213F48E10@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LowPowerMode(0);
  result = sub_213F4CD00();
  *a2 = result;
  return result;
}

void sub_213F48E50(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_213F48E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213F4AD98();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double CoordinatedMapsDesignMarquees.contentSize.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  return v1;
}

double sub_213F48F1C@<D0>(_OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  result = *&v4;
  *a2 = v4;
  return result;
}

void (*CoordinatedMapsDesignMarquees.contentSize.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 80) = *v1;
  *(v3 + 88) = v6;
  v7 = v1[2];
  v4[12] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  return sub_213F490E0;
}

void sub_213F490E0(uint64_t *a1)
{
  v1 = *a1;
  *(*a1 + 24) = *(*a1 + 80);
  *(v1 + 40) = *(v1 + 96);
  *(v1 + 64) = *(v1 + 48);
  sub_213F4EAB0();

  free(v1);
}

double CoordinatedMapsDesignMarquees.$contentSize.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAC0();
  return v1;
}

uint64_t CoordinatedMapsDesignMarquees.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9C8, &qword_213F65468);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9D0, &qword_213F65470) + 36));
  *v10 = sub_213F493C0;
  v10[1] = v8;
  KeyPath = swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9D8, &qword_213F65478);
  v13 = a2 + *(result + 36);
  *v13 = KeyPath;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15;
  *(v13 + 24) = 0;
  return result;
}

void *sub_213F492EC(double *a1, uint64_t a2, double a3, double a4)
{
  v4 = *a1;
  v5 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  result = sub_213F4EAA0();
  if (v8 == 0.0 && v9 == 0.0)
  {
    result = sub_213F4EAA0();
    if (v8 != v4 || v9 != v5)
    {
      return sub_213F4EAB0();
    }
  }

  return result;
}

uint64_t sub_213F493CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v6;
  v8[4] = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9C8, &qword_213F65468);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9D0, &qword_213F65470) + 36));
  *v10 = sub_213F4AE4C;
  v10[1] = v8;
  KeyPath = swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9720, &qword_213F65460);
  sub_213F4EAA0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9D8, &qword_213F65478);
  v13 = a2 + *(result + 36);
  *v13 = KeyPath;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15;
  *(v13 + 24) = 0;
  return result;
}

uint64_t MapsDesignMarquee<>.init(_:spacing:feathering:rate:delay:direction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, double a5@<X4>, int a6@<W5>, double a7@<X6>, int a8@<W7>, double *a9@<X8>, double a10, unsigned __int8 a11, uint64_t a12)
{
  v58 = a8;
  v57 = a7;
  v54 = a5;
  v53 = a4;
  v52 = a3;
  v55 = a6;
  v56 = a11;
  v48 = a12;
  v49 = a2;
  v50 = sub_213F4D3B0();
  v14 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v59 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B50, &qword_213F653D0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B58, &unk_213F52120);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v47 - v23;
  sub_213DE3164(a12, &v47 - v23, &qword_27C8F7B58, &unk_213F52120);
  v25 = swift_allocObject();
  v51 = v25;
  v26 = v49;
  *(v25 + 16) = a1;
  *(v25 + 24) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B60, &qword_213F65480);
  v28 = a9 + v27[14];
  type metadata accessor for CGSize(0);
  v60 = 0;
  v61 = 0;
  sub_213F4EA90();
  v29 = v63;
  *v28 = v62;
  *(v28 + 2) = v29;
  v30 = a9 + v27[15];
  LOBYTE(v60) = 0;
  sub_213F4EA90();
  v31 = *(&v62 + 1);
  *v30 = v62;
  *(v30 + 1) = v31;
  v32 = sub_213F4CB00();
  (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  sub_213DE3164(v21, v19, &qword_27C8F7B50, &qword_213F653D0);
  sub_213F4EA90();
  sub_213DE36FC(v48, &qword_27C8F7B58, &unk_213F52120);
  v33 = v50;
  sub_213DE36FC(v21, &qword_27C8F7B50, &qword_213F653D0);
  v34 = a9 + v27[17];
  *v34 = swift_getKeyPath();
  *(v34 + 1) = 0;
  *(v34 + 8) = 0;
  v35 = v27[18];
  *(a9 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v36 = a9 + v27[19];
  *v36 = sub_213F47E1C;
  *(v36 + 1) = 0;
  v36[16] = 0;
  v37 = v52;
  if (v53)
  {
    v37 = 20.0;
  }

  v38 = v54;
  if (v55)
  {
    v38 = 8.0;
  }

  *a9 = v37;
  a9[1] = v38;
  v39 = v57;
  if (v58)
  {
    v39 = 30.0;
  }

  if (v56)
  {
    a10 = 2.0;
  }

  a9[2] = v39;
  a9[3] = a10;
  v41 = *(v14 + 48);
  if (v41(v24, 1, v33) == 1)
  {
    v42 = v59;
    (*(v14 + 104))(v59, *MEMORY[0x277CDFA88], v33);
    v43 = v42;
    if (v41(v24, 1, v33) != 1)
    {
      sub_213DE36FC(v24, &qword_27C8F7B58, &unk_213F52120);
    }
  }

  else
  {
    v43 = v59;
    (*(v14 + 32))(v59, v24, v33);
  }

  result = (*(v14 + 32))(a9 + v27[12], v43, v33);
  v45 = (a9 + v27[13]);
  v46 = v51;
  *v45 = sub_213F49A50;
  v45[1] = v46;
  return result;
}

uint64_t sub_213F499E4@<X0>(uint64_t a3@<X8>)
{
  sub_213DBC9EC();

  result = sub_213F4E310();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

void sub_213F49AC0(uint64_t a1)
{
  sub_213F4D3B0();
  if (v1 <= 0x3F)
  {
    sub_213DE22E8();
    if (v2 <= 0x3F)
    {
      sub_213F49D50(319, &qword_281182798, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_213F49F50(319, &qword_2811827B0, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_213F49CEC(319, &qword_2811827E0, &qword_27C8F7B50, &qword_213F653D0, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_213F49CEC(319, &qword_2811834F8, &qword_27C8FC9E0, "Ď", MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_213F49D50(319, &qword_281183520, MEMORY[0x277CDF7E8], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_213F49DB4(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_213F49CEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_213F49D50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_213F49DB4(uint64_t a1)
{
  if (!qword_2811834E8)
  {
    type metadata accessor for LowPowerMode(255);
    sub_213F4ACE4(&qword_281188118, type metadata accessor for LowPowerMode, &unk_213F65660);
    v1 = sub_213F4CF50();
    if (!v2)
    {
      atomic_store(v1, &qword_2811834E8);
    }
  }
}

uint64_t type metadata accessor for LowPowerMode(uint64_t a1)
{
  result = qword_281188108;
  if (!qword_281188108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213F49E9C(uint64_t a1)
{
  sub_213F49F50(319, &qword_281183548, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_213F49F50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_213F49FA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_213F4A000(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_213F4A064()
{
  result = qword_281183258;
  if (!qword_281183258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9C0, &qword_213F65458);
    sub_213F4A0F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183258);
  }

  return result;
}

unint64_t sub_213F4A0F0()
{
  result = qword_2811827F8;
  if (!qword_2811827F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9E8, &qword_213F655D0);
    sub_213F4A174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811827F8);
  }

  return result;
}

unint64_t sub_213F4A174()
{
  result = qword_281182B18;
  if (!qword_281182B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9F0, &qword_213F655D8);
    sub_213F4A200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182B18);
  }

  return result;
}

unint64_t sub_213F4A200()
{
  result = qword_281182F78;
  if (!qword_281182F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9F8, &qword_213F655E0);
    sub_213F4A2B8();
    sub_213DE3AE4(&qword_281182880, &qword_27C8FC9A8, &qword_213F65440, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182F78);
  }

  return result;
}

unint64_t sub_213F4A2B8()
{
  result = qword_2811831D0;
  if (!qword_2811831D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FCA00, &qword_213F655E8);
    sub_213DE3AE4(&qword_2811826D8, &qword_27C8FCA08, &qword_213F655F0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811831D0);
  }

  return result;
}

unint64_t sub_213F4A370()
{
  result = qword_27C8FCA10;
  if (!qword_27C8FCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCA10);
  }

  return result;
}

unint64_t sub_213F4A3C4()
{
  result = qword_27C8FCA18;
  if (!qword_27C8FCA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9D8, &qword_213F65478);
    sub_213F4A47C();
    sub_213DE3AE4(&qword_27C8FCA30, &qword_27C8FCA38, &qword_213F655F8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCA18);
  }

  return result;
}

unint64_t sub_213F4A47C()
{
  result = qword_27C8FCA20;
  if (!qword_27C8FCA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9D0, &qword_213F65470);
    sub_213DE3AE4(&qword_27C8FCA28, &qword_27C8FC9C8, &qword_213F65468, MEMORY[0x277CE04B0]);
    sub_213DE3AE4(&qword_2811828B8, &qword_27C8FC9B0, &qword_213F65448, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCA20);
  }

  return result;
}

void sub_213F4A57C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_213F4CD20();

  *a2 = v3;
}

uint64_t sub_213F4A5FC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_213F4CD30();
}

uint64_t sub_213F4A670@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a8;
  v31 = a7;
  v28 = a3;
  v29 = a2;
  v27 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA58, &qword_213F65740);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - v13;
  v15 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = sub_213F4D040();
  v23 = *(v21 - 8);
  result = v21 - 8;
  if (*(v23 + 64) == v11)
  {
    (*(v10 + 16))(v14, v27, v9);
    v29(v14);
    (*(v10 + 8))(v14, v9);
    v24 = v31;
    sub_213DBFEEC(v18, a5, v31);
    v25 = *(v15 + 8);
    v25(v18, a5);
    sub_213DBFEEC(v20, a5, v24);
    return (v25)(v20, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_213F4A8B4(double *a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v8);
  if ((*&v8 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = v8;
  }

  if ((~*&v8 & 0x7FF0000000000000) != 0)
  {
    v4 = v8;
  }

  if (v8 >= *a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = *a1;
  }

  if ((*&v9 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a1[1];
  }

  else
  {
    v6 = v9;
  }

  if ((~*&v9 & 0x7FF0000000000000) != 0)
  {
    v6 = v9;
  }

  if (v9 >= a1[1])
  {
    v7 = v6;
  }

  else
  {
    v7 = a1[1];
  }

  *a1 = v5;
  a1[1] = v7;
  return result;
}

uint64_t sub_213F4A944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for MapsDesignMarquee(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA58, &qword_213F65740) - 8);
  v12 = v3 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_213F45F9C(a1, (v3 + v9), v12, v6, v7, a3);
}

void sub_213F4AA50(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for MapsDesignMarquee(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_213F47BAC(a1, v9, v6, v7);
}

unint64_t sub_213F4AADC()
{
  result = qword_281185328[0];
  if (!qword_281185328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281185328);
  }

  return result;
}

uint64_t sub_213F4AB3C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for MapsDesignMarquee(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_213F479F4(a1, a2, v10, v7, v8);
}

double sub_213F4ABD8@<D0>(_OWORD *a2@<X8>)
{
  sub_213F4D160();
  type metadata accessor for CGRect(0);
  sub_213F4D170();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_213F4ACE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213F4AD34()
{
  result = qword_281188808;
  if (!qword_281188808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281188808);
  }

  return result;
}

unint64_t sub_213F4AD98()
{
  result = qword_27C8FCA70;
  if (!qword_27C8FCA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9E0, "Ď");
    sub_213F4ACE4(&unk_281182358, type metadata accessor for CGSize, MEMORY[0x277CBF298]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCA70);
  }

  return result;
}

double static Material.mapsDesignMaterial(_:)(uint64_t a1, uint64_t a2)
{
  sub_213E621D4();
  v4 = sub_213F4F600();
  if (!v4)
  {
    v4 = [objc_opt_self() mainBundle];
  }

  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_213F4EE10();

  return result;
}

uint64_t sub_213F4AF28()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static String.mapsDesignLocalized(_:)(uint64_t a1)
{
  v2 = sub_213F4CB60();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_213F4F210();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  if (qword_281182510 != -1)
  {
    swift_once();
  }

  v6 = qword_281182518;
  sub_213F4CB50();
  return sub_213F4F260();
}

id sub_213F4B0C4()
{
  sub_213E621D4();
  result = sub_213F4F600();
  if (!result)
  {
    result = [objc_opt_self() mainBundle];
  }

  qword_281182518 = result;
  return result;
}

uint64_t sub_213F4B150()
{
  v0 = sub_213F4DA00();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4D9F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA78, &qword_213F65840);
  sub_213F4B250();
  sub_213F4E5F0();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_213F4B250()
{
  result = qword_27C8FCA80;
  if (!qword_27C8FCA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FCA78, &qword_213F65840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCA80);
  }

  return result;
}

id static UIFont.withStyleAndWeight(_:_:)(uint64_t a1, double a2)
{
  v3 = [swift_getObjCClassFromMetadata() preferredFontForTextStyle_];
  v4 = [v3 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA88, &qword_213F65848);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_213F55C80;
  v6 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA90, &qword_213F65850);
  v7 = swift_initStackObject();
  v8 = MEMORY[0x277D74430];
  *(v7 + 16) = xmmword_213F55C80;
  v9 = *v8;
  *(v7 + 32) = *v8;
  *(v7 + 40) = a2;
  v10 = v6;
  v11 = v9;
  v12 = sub_213F4B6C0(v7);
  swift_setDeallocating();
  sub_213DE36FC(v7 + 32, &qword_27C8FCA98, &qword_213F65858);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCAA0, &qword_213F65860);
  *(inited + 40) = v12;
  sub_213F4B7B0(inited, &qword_27C8FCAB0, &qword_213F65870, &qword_27C8FCAA8, &qword_213F65868);
  swift_setDeallocating();
  sub_213DE36FC(inited + 32, &qword_27C8FCAA8, &qword_213F65868);
  type metadata accessor for AttributeName(0);
  sub_213F4B8C8();
  v13 = sub_213F4F190();

  v14 = [v4 fontDescriptorByAddingAttributes_];

  [v3 pointSize];
  v16 = [objc_opt_self() fontWithDescriptor:v14 size:v15];

  return v16;
}

unint64_t sub_213F4B508(uint64_t a1)
{
  sub_213F4F250();
  sub_213F4F880();
  sub_213F4F2C0();
  v2 = sub_213F4F8C0();

  return sub_213F4B598(a1, v2);
}

unint64_t sub_213F4B598(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_213F4F250();
      v8 = v7;
      if (v6 == sub_213F4F250() && v8 == v9)
      {
        break;
      }

      v11 = sub_213F4F830();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_213F4B6C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCAB8, &qword_213F65878);
    v3 = sub_213F4F7F0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_213F4B508(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_213F4B7B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_213F4F7F0();
    v10 = a1 + 32;

    while (1)
    {
      sub_213DE3164(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_213F4B508(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_213E150C8(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_213F4B8C8()
{
  result = qword_281182390;
  if (!qword_281182390)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182390);
  }

  return result;
}

uint64_t VariableBlurView.init(blurRadius:reversed:)@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = a3;
  *(a2 + 24) = a1;
  return result;
}

uint64_t sub_213F4B970(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_213EA9188(0, v1, 0);
    v4 = a1 + 56;
    v2 = v13;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCAD0, &unk_213F65A18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA890, &qword_213F5D620);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_213EA9188((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + 32 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      v7[7] = v12;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_213F4BAAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_213EA9168(0, v1, 0);
    v2 = v17;
    v4 = a1 + 32;
    do
    {
      sub_213F4C88C(v4, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCAD8, &qword_213F65A28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAF70, &qword_213F5E2B0);
      swift_dynamicCast();
      v17 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_213EA9168((v5 > 1), v6 + 1, 1);
        v2 = v17;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 56 * v6;
      v8 = v13;
      v9 = v14;
      v10 = v15;
      *(v7 + 80) = v16;
      *(v7 + 48) = v9;
      *(v7 + 64) = v10;
      *(v7 + 32) = v8;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_213F4BBF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_213F4F7E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_213EA91C8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x216052B30](i, a1);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_213EA91C8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_213E150C8(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_213EA91C8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_213E150C8(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id VariableBlurView.makeUIView(context:)()
{
  v1 = sub_213F4D7F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v16 = *v0;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  sub_213F4BF94(v8);
  v10 = v9;
  if (v6 == 1)
  {
    v16 = *&v5;
  }

  else
  {

    sub_213F4F520();
    v11 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();
    v12 = sub_213E053BC(v5, 0);
    (*(v2 + 8))(v4, v1, v12);
  }

  v13 = [objc_opt_self() _effectWithVariableBlurRadius_imageMask_scale_];

  v14 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  return v14;
}

void sub_213F4BF94(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v2 setScale_];
  [v2 setPreferredRange_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithBounds:v2 format:{0.0, 0.0, 100.0, 100.0}];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = vdupq_n_s64(0x4059000000000000uLL);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_213F4C83C;
  *(v5 + 24) = v4;
  v10[4] = sub_213F4C84C;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_213F4C5A4;
  v10[3] = &block_descriptor_3;
  v6 = _Block_copy(v10);

  v7 = [v3 imageWithActions_];

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v8 = [v7 CGImage];

    v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
    if (v8)
    {
      [v9 initWithCGImage_];

      v2 = v8;
    }

    else
    {
      [v9 init];
    }
  }
}

void sub_213F4C1EC(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v8 = 0;
  v9 = 0;
  v30 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v10 = 0.0;
  v11 = MEMORY[0x277D84F90];
  v12 = 1.0 == 0.0;
  if (1.0 <= 0.0)
  {
    goto LABEL_5;
  }

  while (!__OFADD__(v9++, 1))
  {
    v14 = v9 * 0.0333333333 + 0.0;
    if (a2)
    {
LABEL_4:
      v15 = v10 * (v10 * v10) + v10 * (v10 * ((1.0 - v10) * 3.0)) * 0.5 + (1.0 - v10) * ((1.0 - v10) * (1.0 - v10)) * 0.0 + v10 * ((1.0 - v10) * ((1.0 - v10) * 3.0)) * 0.5;
      goto LABEL_11;
    }

    while (1)
    {
      v15 = 1.0 - (v10 * (v10 * v10) + v10 * (v10 * ((1.0 - v10) * 3.0)) * 0.5 + (1.0 - v10) * ((1.0 - v10) * (1.0 - v10)) * 0.0 + v10 * ((1.0 - v10) * ((1.0 - v10) * 3.0)) * 0.5);
LABEL_11:
      v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v18 = [objc_opt_self() blackColor];
      v19 = [v18 colorWithAlphaComponent_];

      v20 = [v19 CGColor];
      MEMORY[0x2160527D0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213F4F400();
      }

      sub_213F4F420();
      v11 = v31;
      v21 = v17;
      MEMORY[0x2160527D0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213F4F400();
      }

      sub_213F4F420();

      v10 = v14;
      v12 = v14 == 1.0;
      if (v14 < 1.0)
      {
        break;
      }

LABEL_5:
      v16 = !v12;
      if ((v16 | v8))
      {
        v22 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
        [v22 setBounds_];
        sub_213F4BBF0(v11);

        v23 = sub_213F4F3E0();

        [v22 setColors_];

        sub_213DE48BC();
        v24 = sub_213F4F3E0();

        [v22 setLocations_];

        v29 = [a1 CGContext];
        [v22 renderInContext_];

        return;
      }

      v14 = 1.0;
      v8 = 1;
      if (a2)
      {
        goto LABEL_4;
      }
    }
  }

  __break(1u);
}

void sub_213F4C5A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_213F4C5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4C7E8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213F4C658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4C7E8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213F4C6BC(uint64_t a1)
{
  sub_213F4C7E8();
  sub_213F4DB60();
  __break(1u);
}

unint64_t sub_213F4C6E8()
{
  result = qword_27C8FCAC0;
  if (!qword_27C8FCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCAC0);
  }

  return result;
}

uint64_t sub_213F4C748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213F4C790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_213F4C7E8()
{
  result = qword_27C8FCAC8;
  if (!qword_27C8FCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8FCAC8);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_213F4C88C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCAD8, &qword_213F65A28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}