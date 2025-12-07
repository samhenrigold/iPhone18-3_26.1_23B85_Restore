void sub_23312D2A0(uint64_t a1, uint64_t a2)
{
  TTSVBError.Problem.hash(into:)(a1);
  TTSVBError.Reason.hash(into:)(a1);
  v5 = *(v2 + *(a2 + 24));
  if (v5)
  {
    sub_23328E63C();
    v6 = v5;
    sub_23328DFEC();
  }

  else
  {
    sub_23328E63C();
  }
}

uint64_t sub_23312D364(uint64_t a1, uint64_t a2)
{
  sub_23328E61C();
  TTSVBError.Problem.hash(into:)(v7);
  TTSVBError.Reason.hash(into:)(v7);
  v4 = *(v2 + *(a2 + 24));
  sub_23328E63C();
  if (v4)
  {
    v5 = v4;
    sub_23328DFEC();
  }

  return sub_23328E66C();
}

unint64_t sub_23312D458(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      result = 0x6669636570736E75;
      break;
    case 2:
    case 22:
    case 30:
      result = 0xD000000000000018;
      break;
    case 3:
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 4:
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
    case 26:
    case 28:
      result = 0xD000000000000014;
      break;
    case 7:
    case 21:
    case 23:
    case 24:
      result = 0xD000000000000017;
      break;
    case 8:
    case 20:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 12:
    case 19:
      result = 0xD000000000000013;
      break;
    case 13:
    case 17:
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 27:
      result = 0xD000000000000016;
      break;
    case 29:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23312D724@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23315064C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23312D758(uint64_t a1)
{
  v2 = sub_233147CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D794(uint64_t a1)
{
  v2 = sub_233147CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312D7DC(uint64_t a1)
{
  v2 = sub_233148564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D818(uint64_t a1)
{
  v2 = sub_233148564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312D854(uint64_t a1)
{
  v2 = sub_2331484BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D890(uint64_t a1)
{
  v2 = sub_2331484BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312D8CC(uint64_t a1)
{
  v2 = sub_233147ED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D908(uint64_t a1)
{
  v2 = sub_233147ED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312D944(uint64_t a1)
{
  v2 = sub_233147E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D980(uint64_t a1)
{
  v2 = sub_233147E80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312D9BC(uint64_t a1)
{
  v2 = sub_233147D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D9F8(uint64_t a1)
{
  v2 = sub_233147D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DA34(uint64_t a1)
{
  v2 = sub_233148318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DA70(uint64_t a1)
{
  v2 = sub_233148318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DAAC(uint64_t a1)
{
  v2 = sub_233148078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DAE8(uint64_t a1)
{
  v2 = sub_233148078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DB24(uint64_t a1)
{
  v2 = sub_2331480CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DB60(uint64_t a1)
{
  v2 = sub_2331480CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DB9C(uint64_t a1)
{
  v2 = sub_233147FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DBD8(uint64_t a1)
{
  v2 = sub_233147FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DC14(uint64_t a1)
{
  v2 = sub_233148510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DC50(uint64_t a1)
{
  v2 = sub_233148510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DC8C(uint64_t a1)
{
  v2 = sub_233148174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DCC8(uint64_t a1)
{
  v2 = sub_233148174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DD04(uint64_t a1)
{
  v2 = sub_233147D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DD40(uint64_t a1)
{
  v2 = sub_233147D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DD7C(uint64_t a1)
{
  v2 = sub_233148120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DDB8(uint64_t a1)
{
  v2 = sub_233148120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DDF4(uint64_t a1)
{
  v2 = sub_233147F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DE30(uint64_t a1)
{
  v2 = sub_233147F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DE6C(uint64_t a1)
{
  v2 = sub_233148414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DEA8(uint64_t a1)
{
  v2 = sub_233148414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DEE4(uint64_t a1)
{
  v2 = sub_23314836C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DF20(uint64_t a1)
{
  v2 = sub_23314836C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DF5C(uint64_t a1)
{
  v2 = sub_233148024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DF98(uint64_t a1)
{
  v2 = sub_233148024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DFD4(uint64_t a1)
{
  v2 = sub_2331482C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E010(uint64_t a1)
{
  v2 = sub_2331482C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E04C(uint64_t a1)
{
  v2 = sub_233147F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E088(uint64_t a1)
{
  v2 = sub_233147F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E0C4(uint64_t a1)
{
  v2 = sub_2331481C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E100(uint64_t a1)
{
  v2 = sub_2331481C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E13C(uint64_t a1)
{
  v2 = sub_233148468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E178(uint64_t a1)
{
  v2 = sub_233148468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E1B4(uint64_t a1)
{
  v2 = sub_2331483C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E1F0(uint64_t a1)
{
  v2 = sub_2331483C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E238(uint64_t a1)
{
  v2 = sub_2331485B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E274(uint64_t a1)
{
  v2 = sub_2331485B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E2B0(uint64_t a1)
{
  v2 = sub_23314860C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E2EC(uint64_t a1)
{
  v2 = sub_23314860C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E328(uint64_t a1)
{
  v2 = sub_233148660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E364(uint64_t a1)
{
  v2 = sub_233148660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E3A0(uint64_t a1)
{
  v2 = sub_233148270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E3DC(uint64_t a1)
{
  v2 = sub_233148270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E418(uint64_t a1)
{
  v2 = sub_23314821C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E454(uint64_t a1)
{
  v2 = sub_23314821C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E490(uint64_t a1)
{
  v2 = sub_233147E2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E4CC(uint64_t a1)
{
  v2 = sub_233147E2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E508(uint64_t a1)
{
  v2 = sub_233147DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E544(uint64_t a1)
{
  v2 = sub_233147DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E580(uint64_t a1)
{
  v2 = sub_233148708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E5BC(uint64_t a1)
{
  v2 = sub_233148708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E5F8(uint64_t a1)
{
  v2 = sub_2331486B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E634(uint64_t a1)
{
  v2 = sub_2331486B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBError.Problem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B50, &qword_2332909B0);
  v172 = *(v3 - 8);
  v173 = v3;
  MEMORY[0x28223BE20](v3);
  v171 = &v90 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B58, &qword_2332909B8);
  v169 = *(v5 - 8);
  v170 = v5;
  MEMORY[0x28223BE20](v5);
  v168 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B60, &qword_2332909C0);
  v166 = *(v7 - 8);
  v167 = v7;
  MEMORY[0x28223BE20](v7);
  v165 = &v90 - v8;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B68, &qword_2332909C8);
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v162 = &v90 - v9;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B70, &qword_2332909D0);
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = &v90 - v10;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B78, &qword_2332909D8);
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = &v90 - v11;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B80, &qword_2332909E0);
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v90 - v12;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B88, &qword_2332909E8);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v90 - v13;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B90, &qword_2332909F0);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v90 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B98, &qword_2332909F8);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v90 - v15;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BA0, &qword_233290A00);
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v90 - v16;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BA8, &qword_233290A08);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v90 - v17;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BB0, &qword_233290A10);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v90 - v18;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BB8, &qword_233290A18);
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v90 - v19;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BC0, &qword_233290A20);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v90 - v20;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BC8, &qword_233290A28);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = &v90 - v21;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BD0, &qword_233290A30);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v90 - v22;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BD8, &qword_233290A38);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v90 - v23;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BE0, &qword_233290A40);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v90 - v24;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BE8, &qword_233290A48);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v90 - v25;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BF0, &qword_233290A50);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v90 - v26;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BF8, &qword_233290A58);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v90 - v27;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C00, &qword_233290A60);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v90 - v28;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C08, &qword_233290A68);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v90 - v29;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C10, &qword_233290A70);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v90 - v30;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C18, &qword_233290A78);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v90 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C20, &qword_233290A80);
  v178 = *(v32 - 8);
  v179 = v32;
  MEMORY[0x28223BE20](v32);
  v177 = &v90 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C28, &qword_233290A88);
  v175 = *(v34 - 8);
  v176 = v34;
  MEMORY[0x28223BE20](v34);
  v36 = &v90 - v35;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C30, &qword_233290A90);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v90 - v37;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C38, &qword_233290A98);
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v90 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C40, &qword_233290AA0);
  v174 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v41 = &v90 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C48, &qword_233290AA8);
  v43 = *(v42 - 8);
  v181 = v42;
  v182 = v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v90 - v44;
  v183 = *v1;
  v46 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233147CDC();
  v180 = v45;
  sub_23328E69C();
  if (v46 > 1)
  {
    if (v46 == 2)
    {
      v185 = 4;
      sub_2331485B8();
      v50 = v177;
      v52 = v180;
      v51 = v181;
      sub_23328E45C();
      v53 = v179;
      sub_23328E49C();
      (*(v178 + 8))(v50, v53);
      return (*(v182 + 8))(v52, v51);
    }

    else
    {
      switch(v183)
      {
        case 1:
          v185 = 2;
          sub_233148660();
          v77 = v93;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v94 + 8);
          v61 = v77;
          v62 = &v127;
          goto LABEL_36;
        case 2:
          v185 = 5;
          sub_233148564();
          v73 = v96;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v97 + 8);
          v61 = v73;
          v62 = &v130;
          goto LABEL_36;
        case 3:
          v185 = 6;
          sub_233148510();
          v75 = v99;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v100 + 8);
          v61 = v75;
          v62 = &v133;
          goto LABEL_36;
        case 4:
          v185 = 7;
          sub_2331484BC();
          v69 = v102;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v103 + 8);
          v61 = v69;
          v62 = &v136;
          goto LABEL_36;
        case 5:
          v185 = 8;
          sub_233148468();
          v80 = v105;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v106 + 8);
          v61 = v80;
          v62 = &v139;
          goto LABEL_36;
        case 6:
          v185 = 9;
          sub_233148414();
          v83 = v108;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v109 + 8);
          v61 = v83;
          v62 = &v142;
          goto LABEL_36;
        case 7:
          v185 = 10;
          sub_2331483C0();
          v76 = v111;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v112 + 8);
          v61 = v76;
          v62 = &v145;
          goto LABEL_36;
        case 8:
          v185 = 11;
          sub_23314836C();
          v86 = v114;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v115 + 8);
          v61 = v86;
          v62 = &v148;
          goto LABEL_36;
        case 9:
          v185 = 12;
          sub_233148318();
          v71 = v117;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v118 + 8);
          v61 = v71;
          v62 = &v151;
          goto LABEL_36;
        case 10:
          v185 = 13;
          sub_2331482C4();
          v85 = v120;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v121 + 8);
          v61 = v85;
          v62 = &v154;
          goto LABEL_36;
        case 11:
          v185 = 14;
          sub_233148270();
          v68 = v123;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v124 + 8);
          v61 = v68;
          v62 = &v157;
          goto LABEL_36;
        case 12:
          v185 = 15;
          sub_23314821C();
          v70 = v126;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v127 + 8);
          v61 = v70;
          v62 = &v160;
          goto LABEL_36;
        case 13:
          v185 = 16;
          sub_2331481C8();
          v82 = v129;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v130 + 8);
          v61 = v82;
          v62 = &v163;
          goto LABEL_36;
        case 14:
          v185 = 17;
          sub_233148174();
          v67 = v132;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v133 + 8);
          v61 = v67;
          v62 = &v166;
          goto LABEL_36;
        case 15:
          v185 = 18;
          sub_233148120();
          v74 = v135;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v136 + 8);
          v61 = v74;
          v62 = &v169;
          goto LABEL_36;
        case 16:
          v185 = 19;
          sub_2331480CC();
          v66 = v138;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v139 + 8);
          v61 = v66;
          v62 = &v172;
          goto LABEL_36;
        case 17:
          v185 = 20;
          sub_233148078();
          v78 = v141;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v142 + 8);
          v61 = v78;
          v62 = &v175;
          goto LABEL_36;
        case 18:
          v185 = 21;
          sub_233148024();
          v84 = v144;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v145 + 8);
          v61 = v84;
          v62 = &v178;
          goto LABEL_36;
        case 19:
          v185 = 22;
          sub_233147FD0();
          v88 = v147;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v148 + 8);
          v61 = v88;
          v62 = &v181;
          goto LABEL_36;
        case 20:
          v185 = 23;
          sub_233147F7C();
          v79 = v150;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v151 + 8);
          v61 = v79;
          v62 = &v183;
          goto LABEL_36;
        case 21:
          v185 = 24;
          sub_233147F28();
          v81 = v153;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v154 + 8);
          v61 = v81;
          v62 = &v184;
          goto LABEL_36;
        case 22:
          v185 = 25;
          sub_233147ED4();
          v87 = v156;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v157 + 8);
          v61 = v87;
          v62 = &v186;
          goto LABEL_36;
        case 23:
          v185 = 26;
          sub_233147E80();
          v89 = v159;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v160 + 8);
          v61 = v89;
          v62 = &v187;
          goto LABEL_36;
        case 24:
          v185 = 27;
          sub_233147E2C();
          v72 = v162;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          (*(v163 + 8))(v72, v164);
          return (*(v182 + 8))(v59, v58);
        case 25:
          v185 = 28;
          sub_233147DD8();
          v63 = v165;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v65 = v166;
          v64 = v167;
          goto LABEL_40;
        case 26:
          v185 = 29;
          sub_233147D84();
          v63 = v168;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v65 = v169;
          v64 = v170;
          goto LABEL_40;
        case 27:
          v185 = 30;
          sub_233147D30();
          v63 = v171;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v65 = v172;
          v64 = v173;
LABEL_40:
          (*(v65 + 8))(v63, v64);
          break;
        default:
          v185 = 1;
          sub_2331486B4();
          v57 = v90;
          v59 = v180;
          v58 = v181;
          sub_23328E45C();
          v60 = *(v91 + 8);
          v61 = v57;
          v62 = &v124;
LABEL_36:
          v60(v61, *(v62 - 32));
          break;
      }

      return (*(v182 + 8))(v59, v58);
    }
  }

  else if (v46)
  {
    v185 = 3;
    sub_23314860C();
    v55 = v180;
    v54 = v181;
    sub_23328E45C();
    v56 = v176;
    sub_23328E48C();
    (*(v175 + 8))(v36, v56);
    return (*(v182 + 8))(v55, v54);
  }

  else
  {
    v185 = 0;
    sub_233148708();
    v47 = v180;
    v48 = v181;
    sub_23328E45C();
    sub_23328E48C();
    (*(v174 + 8))(v41, v39);
    return (*(v182 + 8))(v47, v48);
  }
}

uint64_t TTSVBError.Problem.hash(into:)(uint64_t a1)
{
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      MEMORY[0x23839C380](4);
      return sub_23328E63C();
    }

    else
    {
      switch(*v1)
      {
        case 1:
          v4 = 2;
          break;
        case 2:
          v4 = 5;
          break;
        case 3:
          v4 = 6;
          break;
        case 4:
          v4 = 7;
          break;
        case 5:
          v4 = 8;
          break;
        case 6:
          v4 = 9;
          break;
        case 7:
          v4 = 10;
          break;
        case 8:
          v4 = 11;
          break;
        case 9:
          v4 = 12;
          break;
        case 0xALL:
          v4 = 13;
          break;
        case 0xBLL:
          v4 = 14;
          break;
        case 0xCLL:
          v4 = 15;
          break;
        case 0xDLL:
          v4 = 16;
          break;
        case 0xELL:
          v4 = 17;
          break;
        case 0xFLL:
          v4 = 18;
          break;
        case 0x10:
          v4 = 19;
          break;
        case 0x11:
          v4 = 20;
          break;
        case 0x12:
          v4 = 21;
          break;
        case 0x13:
          v4 = 22;
          break;
        case 0x14:
          v4 = 23;
          break;
        case 0x15:
          v4 = 24;
          break;
        case 0x16:
          v4 = 25;
          break;
        case 0x17:
          v4 = 26;
          break;
        case 0x18:
          v4 = 27;
          break;
        case 0x19:
          v4 = 28;
          break;
        case 0x1ALL:
          v4 = 29;
          break;
        case 0x1BLL:
          v4 = 30;
          break;
        default:
          v4 = 1;
          break;
      }

      return MEMORY[0x23839C380](v4);
    }
  }

  else
  {
    if (*(v1 + 16))
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x23839C380](v2);

    return sub_23328DA3C();
  }
}

uint64_t TTSVBError.Problem.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_23328E61C();
  TTSVBError.Problem.hash(into:)(v3);
  return sub_23328E66C();
}

uint64_t TTSVBError.Problem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v233 = a2;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C50, &qword_233290AB0);
  v201 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v227 = v138 - v3;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C58, &qword_233290AB8);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v226 = v138 - v4;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C60, &qword_233290AC0);
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v225 = v138 - v5;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C68, &qword_233290AC8);
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v224 = v138 - v6;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C70, &qword_233290AD0);
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v223 = v138 - v7;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C78, &qword_233290AD8);
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v222 = v138 - v8;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C80, &qword_233290AE0);
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v221 = v138 - v9;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C88, &qword_233290AE8);
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v220 = v138 - v10;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C90, &qword_233290AF0);
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v219 = v138 - v11;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C98, &qword_233290AF8);
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v218 = v138 - v12;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CA0, &qword_233290B00);
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v217 = v138 - v13;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CA8, &qword_233290B08);
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v216 = v138 - v14;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CB0, &qword_233290B10);
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v215 = v138 - v15;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CB8, &qword_233290B18);
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v214 = v138 - v16;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CC0, &qword_233290B20);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v213 = v138 - v17;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CC8, &qword_233290B28);
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v212 = v138 - v18;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CD0, &qword_233290B30);
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v211 = v138 - v19;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CD8, &qword_233290B38);
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v210 = v138 - v20;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CE0, &qword_233290B40);
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v209 = v138 - v21;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CE8, &qword_233290B48);
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v208 = v138 - v22;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CF0, &qword_233290B50);
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v207 = v138 - v23;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CF8, &qword_233290B58);
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v231 = v138 - v24;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D00, &qword_233290B60);
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v205 = v138 - v25;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D08, &qword_233290B68);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v230 = v138 - v26;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D10, &qword_233290B70);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v206 = v138 - v27;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D18, &qword_233290B78);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v203 = v138 - v28;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D20, &qword_233290B80);
  v144 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v204 = v138 - v29;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D28, &qword_233290B88);
  v228 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v229 = v138 - v30;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D30, &qword_233290B90);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v202 = v138 - v31;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D38, &qword_233290B98);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v33 = v138 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D40, &qword_233290BA0);
  v143 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = v138 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D48, &qword_233290BA8);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = v138 - v39;
  v41 = a1[3];
  v234 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_233147CDC();
  v42 = v235;
  sub_23328E68C();
  if (v42)
  {
LABEL_69:
    v125 = v234;
    return __swift_destroy_boxed_opaque_existential_0(v125);
  }

  v140 = v36;
  v141 = v33;
  v139 = v34;
  v43 = v229;
  v44 = v230;
  v45 = v231;
  v142 = 0;
  v47 = v232;
  v46 = v233;
  v235 = v38;
  v48 = v40;
  v49 = sub_23328E44C();
  if (*(v49 + 16) != 1 || (v50 = *(v49 + 32), v50 == 31))
  {
    v56 = sub_23328E29C();
    swift_allocError();
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D50, &qword_233290BB0);
    *v58 = &type metadata for TTSVBError.Problem;
    sub_23328E39C();
    sub_23328E28C();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
    swift_willThrow();
    (*(v235 + 8))(v48, v37);
LABEL_68:
    swift_unknownObjectRelease();
    goto LABEL_69;
  }

  v138[1] = v49;
  v51 = v228;
  switch(v50)
  {
    case 1:
      v236 = 1;
      sub_2331486B4();
      v91 = v141;
      v92 = v142;
      sub_23328E38C();
      if (v92)
      {
        goto LABEL_67;
      }

      (*(v145 + 8))(v91, v146);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v135 = 0;
      v136 = 0;
      v137 = 3;
      goto LABEL_72;
    case 2:
      v236 = 2;
      sub_233148660();
      v80 = v202;
      v81 = v142;
      sub_23328E38C();
      if (v81)
      {
        goto LABEL_67;
      }

      (*(v147 + 8))(v80, v148);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 1;
      goto LABEL_72;
    case 3:
      v236 = 3;
      sub_23314860C();
      v84 = v43;
      v85 = v142;
      sub_23328E38C();
      if (v85)
      {
        goto LABEL_67;
      }

      v86 = v48;
      v87 = v149;
      v88 = sub_23328E3CC();
      v89 = v235;
      v128 = *(v51 + 8);
      v129 = v88;
      v131 = v130;
      v128(v84, v87);
      (*(v89 + 8))(v86, v37);
      swift_unknownObjectRelease();
      v135 = v129;
      v136 = v131;
      v137 = 1;
      goto LABEL_72;
    case 4:
      v236 = 4;
      sub_2331485B8();
      v67 = v204;
      v68 = v142;
      sub_23328E38C();
      if (v68)
      {
        goto LABEL_67;
      }

      v69 = v48;
      v70 = v150;
      v71 = sub_23328E3DC();
      v72 = v235;
      v127 = v71;
      (*(v144 + 8))(v67, v70);
      (*(v72 + 8))(v69, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v135 = v127 & 1;
      v137 = 2;
      goto LABEL_72;
    case 5:
      v236 = 5;
      sub_233148564();
      v97 = v203;
      v98 = v142;
      sub_23328E38C();
      if (v98)
      {
        goto LABEL_67;
      }

      (*(v151 + 8))(v97, v152);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 2;
      goto LABEL_72;
    case 6:
      v236 = 6;
      sub_233148510();
      v103 = v206;
      v104 = v142;
      sub_23328E38C();
      if (v104)
      {
        goto LABEL_67;
      }

      (*(v153 + 8))(v103, v154);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v135 = 3;
      v137 = 3;
      goto LABEL_72;
    case 7:
      v236 = 7;
      sub_2331484BC();
      v90 = v142;
      sub_23328E38C();
      if (v90)
      {
        goto LABEL_67;
      }

      (*(v155 + 8))(v44, v156);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 4;
      goto LABEL_72;
    case 8:
      v236 = 8;
      sub_233148468();
      v109 = v205;
      v110 = v142;
      sub_23328E38C();
      if (v110)
      {
        goto LABEL_67;
      }

      (*(v157 + 8))(v109, v158);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 5;
      goto LABEL_72;
    case 9:
      v236 = 9;
      sub_233148414();
      v75 = v142;
      sub_23328E38C();
      if (v75)
      {
        goto LABEL_67;
      }

      (*(v159 + 8))(v45, v160);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 6;
      goto LABEL_72;
    case 10:
      v236 = 10;
      sub_2331483C0();
      v107 = v207;
      v108 = v142;
      sub_23328E38C();
      if (v108)
      {
        goto LABEL_67;
      }

      (*(v161 + 8))(v107, v162);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 7;
      goto LABEL_72;
    case 11:
      v236 = 11;
      sub_23314836C();
      v65 = v208;
      v66 = v142;
      sub_23328E38C();
      if (v66)
      {
        goto LABEL_67;
      }

      (*(v163 + 8))(v65, v164);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 8;
      goto LABEL_72;
    case 12:
      v236 = 12;
      sub_233148318();
      v73 = v209;
      v74 = v142;
      sub_23328E38C();
      if (v74)
      {
        goto LABEL_67;
      }

      (*(v165 + 8))(v73, v166);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 9;
      goto LABEL_72;
    case 13:
      v236 = 13;
      sub_2331482C4();
      v101 = v210;
      v102 = v142;
      sub_23328E38C();
      if (v102)
      {
        goto LABEL_67;
      }

      (*(v167 + 8))(v101, v168);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 10;
      goto LABEL_72;
    case 14:
      v236 = 14;
      sub_233148270();
      v63 = v211;
      v64 = v142;
      sub_23328E38C();
      if (v64)
      {
        goto LABEL_67;
      }

      (*(v169 + 8))(v63, v170);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 11;
      goto LABEL_72;
    case 15:
      v236 = 15;
      sub_23314821C();
      v82 = v212;
      v83 = v142;
      sub_23328E38C();
      if (v83)
      {
        goto LABEL_67;
      }

      (*(v171 + 8))(v82, v172);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 12;
      goto LABEL_72;
    case 16:
      v236 = 16;
      sub_2331481C8();
      v61 = v213;
      v62 = v142;
      sub_23328E38C();
      if (v62)
      {
        goto LABEL_67;
      }

      (*(v173 + 8))(v61, v174);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 13;
      goto LABEL_72;
    case 17:
      v236 = 17;
      sub_233148174();
      v93 = v214;
      v94 = v142;
      sub_23328E38C();
      if (v94)
      {
        goto LABEL_67;
      }

      (*(v175 + 8))(v93, v176);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 14;
      goto LABEL_72;
    case 18:
      v236 = 18;
      sub_233148120();
      v105 = v215;
      v106 = v142;
      sub_23328E38C();
      if (v106)
      {
        goto LABEL_67;
      }

      (*(v177 + 8))(v105, v178);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 15;
      goto LABEL_72;
    case 19:
      v236 = 19;
      sub_2331480CC();
      v115 = v216;
      v116 = v142;
      sub_23328E38C();
      if (v116)
      {
        goto LABEL_67;
      }

      (*(v179 + 8))(v115, v180);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 16;
      goto LABEL_72;
    case 20:
      v236 = 20;
      sub_233148078();
      v95 = v217;
      v96 = v142;
      sub_23328E38C();
      if (v96)
      {
        goto LABEL_67;
      }

      (*(v181 + 8))(v95, v182);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 17;
      goto LABEL_72;
    case 21:
      v236 = 21;
      sub_233148024();
      v99 = v218;
      v100 = v142;
      sub_23328E38C();
      if (v100)
      {
        goto LABEL_67;
      }

      (*(v183 + 8))(v99, v184);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 18;
      goto LABEL_72;
    case 22:
      v236 = 22;
      sub_233147FD0();
      v113 = v219;
      v114 = v142;
      sub_23328E38C();
      if (v114)
      {
        goto LABEL_67;
      }

      (*(v185 + 8))(v113, v186);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 19;
      goto LABEL_72;
    case 23:
      v236 = 23;
      sub_233147F7C();
      v117 = v220;
      v118 = v142;
      sub_23328E38C();
      if (v118)
      {
        goto LABEL_67;
      }

      (*(v187 + 8))(v117, v188);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 20;
      goto LABEL_72;
    case 24:
      v236 = 24;
      sub_233147F28();
      v78 = v221;
      v79 = v142;
      sub_23328E38C();
      if (v79)
      {
        goto LABEL_67;
      }

      (*(v189 + 8))(v78, v190);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 21;
      goto LABEL_72;
    case 25:
      v236 = 25;
      sub_233147ED4();
      v76 = v222;
      v77 = v142;
      sub_23328E38C();
      if (v77)
      {
        goto LABEL_67;
      }

      (*(v191 + 8))(v76, v192);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 22;
      goto LABEL_72;
    case 26:
      v236 = 26;
      sub_233147E80();
      v123 = v223;
      v124 = v142;
      sub_23328E38C();
      if (v124)
      {
        goto LABEL_67;
      }

      (*(v193 + 8))(v123, v194);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 23;
      goto LABEL_72;
    case 27:
      v236 = 27;
      sub_233147E2C();
      v59 = v224;
      v60 = v142;
      sub_23328E38C();
      if (v60)
      {
        goto LABEL_67;
      }

      (*(v195 + 8))(v59, v196);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 24;
      goto LABEL_72;
    case 28:
      v236 = 28;
      sub_233147DD8();
      v119 = v225;
      v120 = v142;
      sub_23328E38C();
      if (v120)
      {
        goto LABEL_67;
      }

      (*(v197 + 8))(v119, v198);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 25;
      goto LABEL_72;
    case 29:
      v236 = 29;
      sub_233147D84();
      v121 = v226;
      v122 = v142;
      sub_23328E38C();
      if (v122)
      {
        goto LABEL_67;
      }

      (*(v199 + 8))(v121, v200);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 26;
      goto LABEL_72;
    case 30:
      v236 = 30;
      sub_233147D30();
      v111 = v227;
      v112 = v142;
      sub_23328E38C();
      if (v112)
      {
        goto LABEL_67;
      }

      (*(v201 + 8))(v111, v47);
      (*(v235 + 8))(v48, v37);
      swift_unknownObjectRelease();
      v136 = 0;
      v137 = 3;
      v135 = 27;
      goto LABEL_72;
    default:
      v236 = 0;
      sub_233148708();
      v52 = v140;
      v53 = v142;
      sub_23328E38C();
      if (v53)
      {
LABEL_67:
        (*(v235 + 8))(v48, v37);
        goto LABEL_68;
      }

      v54 = v48;
      v55 = v139;
      v132 = sub_23328E3CC();
      v134 = v133;
      (*(v143 + 8))(v52, v55);
      (*(v235 + 8))(v54, v37);
      swift_unknownObjectRelease();
      v135 = v132;
      v136 = v134;
      v137 = 0;
LABEL_72:
      v125 = v234;
      *v46 = v135;
      *(v46 + 8) = v136;
      *(v46 + 16) = v137;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0(v125);
}

uint64_t sub_233132D0C()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_23328E61C();
  TTSVBError.Problem.hash(into:)(v3);
  return sub_23328E66C();
}

uint64_t sub_233132D64(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_23328E61C();
  TTSVBError.Problem.hash(into:)(v4);
  return sub_23328E66C();
}

uint64_t TTSVBError.Reason.localizedTitle.getter()
{
  v1 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23314406C(v0, v3, type metadata accessor for TTSVBError.Reason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 63)
  {
    if (EnumCaseMultiPayload == 53 || EnumCaseMultiPayload == 62 || EnumCaseMultiPayload == 63)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
    return 0;
  }

  if ((EnumCaseMultiPayload - 64) >= 2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v5 = sub_23328D95C();
  v6 = TTSVBSupportLocString(v5);

  v7 = sub_23328D98C();
  return v7;
}

uint64_t TTSVBError.Reason.localizedDescription.getter()
{
  v1 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23314406C(v0, v3, type metadata accessor for TTSVBError.Reason);
  v4 = swift_getEnumCaseMultiPayload() - 53;
  if (v4 <= 0xC && (((1 << v4) & 0x1A01) != 0 || v4 == 10))
  {
    v5 = sub_23328D95C();
    v6 = TTSVBSupportLocString(v5);

    v7 = sub_23328D98C();
  }

  else
  {
    sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
    return 0;
  }

  return v7;
}

uint64_t TTSVBError.Reason.localizedActionTitle.getter()
{
  v1 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23314406C(v0, v3, type metadata accessor for TTSVBError.Reason);
  v4 = swift_getEnumCaseMultiPayload() - 53;
  if (v4 > 0xC)
  {
    goto LABEL_9;
  }

  if (((1 << v4) & 0x1A01) != 0)
  {
    v5 = MobileGestalt_get_current_device();
    if (v5)
    {
      v6 = v5;
      MobileGestalt_get_wapiCapability();
    }

    goto LABEL_7;
  }

  if (v4 != 10)
  {
LABEL_9:
    sub_233144DDC(v3, type metadata accessor for TTSVBError.Reason);
    return 0;
  }

LABEL_7:
  v7 = sub_23328D95C();
  v8 = TTSVBSupportLocString(v7);

  v9 = sub_23328D98C();
  return v9;
}

unint64_t sub_2331332C0(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      return 0x6669636570736E75;
    case 2:
      return 0x456E776F6E6B6E75;
    case 3:
      return 0xD000000000000010;
    case 4:
    case 27:
    case 46:
    case 63:
      v3 = 5;
      goto LABEL_35;
    case 5:
      v3 = 11;
      goto LABEL_35;
    case 6:
      return 0xD000000000000010;
    case 7:
    case 58:
      return 0xD000000000000011;
    case 8:
    case 37:
    case 48:
      return 0xD000000000000021;
    case 9:
    case 19:
    case 42:
    case 51:
      return 0xD00000000000001CLL;
    case 10:
    case 11:
    case 29:
    case 49:
    case 61:
      return 0xD000000000000017;
    case 12:
    case 16:
    case 38:
      v3 = 9;
      goto LABEL_35;
    case 13:
    case 17:
    case 30:
      return 0xD000000000000014;
    case 14:
    case 18:
    case 65:
      return 0xD00000000000001ELL;
    case 15:
    case 50:
    case 62:
      return 0xD000000000000018;
    case 20:
      return 0x726F745361746164;
    case 21:
      return 0xD000000000000024;
    case 22:
      return 0xD000000000000025;
    case 23:
      return 0xD000000000000026;
    case 24:
    case 39:
    case 44:
    case 45:
    case 66:
      return 0xD00000000000001FLL;
    case 25:
    case 40:
    case 60:
      v3 = 10;
      goto LABEL_35;
    case 26:
      return 0xD000000000000023;
    case 28:
      return 0xD000000000000010;
    case 31:
    case 34:
      return 0xD000000000000012;
    case 32:
      return 0xD000000000000010;
    case 33:
      return 0xD000000000000010;
    case 35:
    case 36:
    case 41:
      return 0xD000000000000013;
    case 43:
    case 59:
      v3 = 13;
LABEL_35:
      result = v3 | 0xD000000000000010;
      break;
    case 47:
    case 53:
      result = 0xD000000000000022;
      break;
    case 52:
      result = 0xD000000000000010;
      break;
    case 54:
      result = 0x536B736944776F6CLL;
      break;
    case 55:
      result = 0xD000000000000010;
      break;
    case 56:
    case 57:
      result = 0xD000000000000016;
      break;
    case 64:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_233133840(uint64_t a1)
{
  v2 = sub_233149CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313387C(uint64_t a1)
{
  v2 = sub_233149CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331338B8(uint64_t a1)
{
  v2 = sub_233148B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331338F4(uint64_t a1)
{
  v2 = sub_233148B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133930(uint64_t a1)
{
  v2 = sub_233149524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313396C(uint64_t a1)
{
  v2 = sub_233149524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331339A8(uint64_t a1)
{
  v2 = sub_233149968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331339E4(uint64_t a1)
{
  v2 = sub_233149968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133A20(uint64_t a1)
{
  v2 = sub_233149BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133A5C(uint64_t a1)
{
  v2 = sub_233149BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133A98(uint64_t a1)
{
  v2 = sub_233149B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133AD4(uint64_t a1)
{
  v2 = sub_233149B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_233133B9C(uint64_t a1)
{
  v2 = sub_2331489FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133BD8(uint64_t a1)
{
  v2 = sub_2331489FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133C24(uint64_t a1)
{
  v2 = sub_233148A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133C60(uint64_t a1)
{
  v2 = sub_233148A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s31TextToSpeechVoiceBankingSupport14RecordingStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23328E61C();
  MEMORY[0x23839C380](v1);
  return sub_23328E66C();
}

uint64_t sub_233133D2C(uint64_t a1)
{
  v2 = *v1;
  sub_23328E61C();
  MEMORY[0x23839C380](v2);
  return sub_23328E66C();
}

uint64_t sub_233133D78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_233150FB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_233133DAC(uint64_t a1)
{
  v2 = sub_23314875C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133DE8(uint64_t a1)
{
  v2 = sub_23314875C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133E24@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_233133E54(uint64_t a1)
{
  v2 = sub_233148E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133E90(uint64_t a1)
{
  v2 = sub_233148E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133EE4()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_233133F10(uint64_t a1)
{
  v2 = sub_23314932C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133F4C(uint64_t a1)
{
  v2 = sub_23314932C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133F88(uint64_t a1)
{
  v2 = sub_233148E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133FC4(uint64_t a1)
{
  v2 = sub_233148E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134000(uint64_t a1)
{
  v2 = sub_2331499BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313403C(uint64_t a1)
{
  v2 = sub_2331499BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134078(uint64_t a1)
{
  v2 = sub_233149AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331340B4(uint64_t a1)
{
  v2 = sub_233149AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331340F0(uint64_t a1)
{
  v2 = sub_233149A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313412C(uint64_t a1)
{
  v2 = sub_233149A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134168(uint64_t a1)
{
  v2 = sub_233149134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331341A4(uint64_t a1)
{
  v2 = sub_233149134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331341E0(uint64_t a1)
{
  v2 = sub_233149A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313421C(uint64_t a1)
{
  v2 = sub_233149A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134258(uint64_t a1)
{
  v2 = sub_233149284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134294(uint64_t a1)
{
  v2 = sub_233149284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331342D0(uint64_t a1)
{
  v2 = sub_233149620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313430C(uint64_t a1)
{
  v2 = sub_233149620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134348(uint64_t a1)
{
  v2 = sub_233149038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134384(uint64_t a1)
{
  v2 = sub_233149038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331343C0(uint64_t a1)
{
  v2 = sub_233149380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331343FC(uint64_t a1)
{
  v2 = sub_233149380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134438(uint64_t a1)
{
  v2 = sub_233149230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134474(uint64_t a1)
{
  v2 = sub_233149230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331344B0(uint64_t a1)
{
  v2 = sub_233148C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331344EC(uint64_t a1)
{
  v2 = sub_233148C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134528(uint64_t a1)
{
  v2 = sub_233149428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134564(uint64_t a1)
{
  v2 = sub_233149428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331345A0(uint64_t a1)
{
  v2 = sub_233148FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331345DC(uint64_t a1)
{
  v2 = sub_233148FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134618(uint64_t a1)
{
  v2 = sub_2331490E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134654(uint64_t a1)
{
  v2 = sub_2331490E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134690(uint64_t a1)
{
  v2 = sub_23314908C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331346CC(uint64_t a1)
{
  v2 = sub_23314908C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134708(uint64_t a1)
{
  v2 = sub_2331497C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134744(uint64_t a1)
{
  v2 = sub_2331497C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134780(uint64_t a1)
{
  v2 = sub_233149770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331347BC(uint64_t a1)
{
  v2 = sub_233149770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331347F8(uint64_t a1)
{
  v2 = sub_2331492D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134834(uint64_t a1)
{
  v2 = sub_2331492D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134870(uint64_t a1)
{
  v2 = sub_233149188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331348AC(uint64_t a1)
{
  v2 = sub_233149188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331348E8(uint64_t a1)
{
  v2 = sub_233149674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134924(uint64_t a1)
{
  v2 = sub_233149674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134960(uint64_t a1)
{
  v2 = sub_233148C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313499C(uint64_t a1)
{
  v2 = sub_233148C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331349D8(uint64_t a1)
{
  v2 = sub_23314986C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134A14(uint64_t a1)
{
  v2 = sub_23314986C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134A50(uint64_t a1)
{
  v2 = sub_233148F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134A8C(uint64_t a1)
{
  v2 = sub_233148F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134AC8(uint64_t a1)
{
  v2 = sub_233148EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134B04(uint64_t a1)
{
  v2 = sub_233148EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134B40(uint64_t a1)
{
  v2 = sub_2331498C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134B7C(uint64_t a1)
{
  v2 = sub_2331498C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134BBC(uint64_t a1)
{
  v2 = sub_2331491DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134BF8(uint64_t a1)
{
  v2 = sub_2331491DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134C34(uint64_t a1)
{
  v2 = sub_233149DAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134C70(uint64_t a1)
{
  v2 = sub_233149DAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134CAC(uint64_t a1)
{
  v2 = sub_23314971C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134CE8(uint64_t a1)
{
  v2 = sub_23314971C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134D24(uint64_t a1)
{
  v2 = sub_2331494D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134D60(uint64_t a1)
{
  v2 = sub_2331494D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134D9C(uint64_t a1)
{
  v2 = sub_233148BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134DD8(uint64_t a1)
{
  v2 = sub_233148BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134E14(uint64_t a1)
{
  v2 = sub_23314947C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134E50(uint64_t a1)
{
  v2 = sub_23314947C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134E8C(uint64_t a1)
{
  v2 = sub_233148AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134EC8(uint64_t a1)
{
  v2 = sub_233148AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134F04(uint64_t a1)
{
  v2 = sub_233148AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134F40(uint64_t a1)
{
  v2 = sub_233148AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134F7C()
{
  if (*v0)
  {
    return 0x6465726975716572;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_233134FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v6 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_2331350A0(uint64_t a1)
{
  v2 = sub_233148900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331350DC(uint64_t a1)
{
  v2 = sub_233148900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135118(uint64_t a1)
{
  v2 = sub_233148BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135154(uint64_t a1)
{
  v2 = sub_233148BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_23313525C(uint64_t a1)
{
  v2 = sub_2331493D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135298(uint64_t a1)
{
  v2 = sub_2331493D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331352D4(uint64_t a1)
{
  v2 = sub_233148858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135310(uint64_t a1)
{
  v2 = sub_233148858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23313534C(uint64_t a1)
{
  v2 = sub_2331487B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135388(uint64_t a1)
{
  v2 = sub_2331487B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331353C4()
{
  if (*v0)
  {
    return 28532;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_2331353EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_2331354C0(uint64_t a1)
{
  v2 = sub_2331488AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331354FC(uint64_t a1)
{
  v2 = sub_2331488AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135538(uint64_t a1)
{
  v2 = sub_233149B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135574(uint64_t a1)
{
  v2 = sub_233149B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331355B0(uint64_t a1)
{
  v2 = sub_233149818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331355EC(uint64_t a1)
{
  v2 = sub_233149818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135628(uint64_t a1)
{
  v2 = sub_233149C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135664(uint64_t a1)
{
  v2 = sub_233149C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331356A0(uint64_t a1)
{
  v2 = sub_233148954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331356DC(uint64_t a1)
{
  v2 = sub_233148954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135724(uint64_t a1)
{
  v2 = sub_2331489A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135760(uint64_t a1)
{
  v2 = sub_2331489A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23313579C(uint64_t a1)
{
  v2 = sub_233149C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331357D8(uint64_t a1)
{
  v2 = sub_233149C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135814(uint64_t a1)
{
  v2 = sub_233148D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135850(uint64_t a1)
{
  v2 = sub_233148D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23313588C(uint64_t a1)
{
  v2 = sub_2331495CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331358C8(uint64_t a1)
{
  v2 = sub_2331495CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135904(uint64_t a1)
{
  v2 = sub_2331496C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135940(uint64_t a1)
{
  v2 = sub_2331496C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23313597C(uint64_t a1)
{
  v2 = sub_233148F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331359B8(uint64_t a1)
{
  v2 = sub_233148F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331359F4(uint64_t a1)
{
  v2 = sub_233148DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135A30(uint64_t a1)
{
  v2 = sub_233148DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135A6C(uint64_t a1)
{
  v2 = sub_233149914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135AA8(uint64_t a1)
{
  v2 = sub_233149914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135AE4(uint64_t a1)
{
  v2 = sub_233149D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135B20(uint64_t a1)
{
  v2 = sub_233149D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135B5C(uint64_t a1)
{
  v2 = sub_233149D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135B98(uint64_t a1)
{
  v2 = sub_233149D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135BD4(uint64_t a1)
{
  v2 = sub_233148CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135C10(uint64_t a1)
{
  v2 = sub_233148CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_233135CCC(uint64_t a1)
{
  v2 = sub_233148D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135D08(uint64_t a1)
{
  v2 = sub_233148D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_233135DCC(uint64_t a1)
{
  v2 = sub_233149578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135E08(uint64_t a1)
{
  v2 = sub_233149578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBError.Reason.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D58, &qword_233290BB8);
  v430 = *(v2 - 8);
  v431 = v2;
  MEMORY[0x28223BE20](v2);
  v427 = &v243 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D60, &qword_233290BC0);
  v425 = *(v4 - 8);
  v426 = v4;
  MEMORY[0x28223BE20](v4);
  v423 = &v243 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D68, &qword_233290BC8);
  v428 = *(v6 - 8);
  v429 = v6;
  MEMORY[0x28223BE20](v6);
  v424 = &v243 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D70, &qword_233290BD0);
  v421 = *(v8 - 8);
  v422 = v8;
  MEMORY[0x28223BE20](v8);
  v418 = &v243 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D78, &qword_233290BD8);
  v419 = *(v10 - 8);
  v420 = v10;
  MEMORY[0x28223BE20](v10);
  v417 = &v243 - v11;
  v415[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D80, &qword_233290BE0);
  v414[1] = *(v415[0] - 8);
  MEMORY[0x28223BE20](v415[0]);
  v413 = &v243 - v12;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D88, &qword_233290BE8);
  v415[1] = *(v416 - 8);
  MEMORY[0x28223BE20](v416);
  v414[0] = &v243 - v13;
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D90, &qword_233290BF0);
  v411[1] = *(v412 - 8);
  MEMORY[0x28223BE20](v412);
  v411[0] = &v243 - v14;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D98, &qword_233290BF8);
  v406 = *(v407 - 8);
  MEMORY[0x28223BE20](v407);
  v405 = &v243 - v15;
  v410 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DA0, &qword_233290C00);
  v409 = *(v410 - 8);
  MEMORY[0x28223BE20](v410);
  v408 = &v243 - v16;
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DA8, &qword_233290C08);
  v403 = *(v404 - 8);
  MEMORY[0x28223BE20](v404);
  v402 = &v243 - v17;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DB0, &qword_233290C10);
  v400 = *(v401 - 8);
  MEMORY[0x28223BE20](v401);
  v398 = &v243 - v18;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DB8, &qword_233290C18);
  v395 = *(v396 - 8);
  MEMORY[0x28223BE20](v396);
  v392 = &v243 - v19;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DC0, &qword_233290C20);
  v389 = *(v390 - 8);
  MEMORY[0x28223BE20](v390);
  v387 = &v243 - v20;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DC8, &qword_233290C28);
  v397 = *(v399 - 8);
  MEMORY[0x28223BE20](v399);
  v394 = &v243 - v21;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DD0, &qword_233290C30);
  v391 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v388 = &v243 - v22;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DD8, &qword_233290C38);
  v383 = *(v384 - 8);
  MEMORY[0x28223BE20](v384);
  v381 = &v243 - v23;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DE0, &qword_233290C40);
  v385 = *(v386 - 8);
  MEMORY[0x28223BE20](v386);
  v382 = &v243 - v24;
  v379[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DE8, &qword_233290C48);
  v378 = *(v379[0] - 8);
  MEMORY[0x28223BE20](v379[0]);
  v376 = &v243 - v25;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DF0, &qword_233290C50);
  v374 = *(v375 - 8);
  MEMORY[0x28223BE20](v375);
  v372 = &v243 - v26;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DF8, &qword_233290C58);
  v379[1] = *(v380 - 8);
  MEMORY[0x28223BE20](v380);
  v377 = &v243 - v27;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E00, &qword_233290C60);
  v368 = *(v369 - 8);
  MEMORY[0x28223BE20](v369);
  v367 = &v243 - v28;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E08, &qword_233290C68);
  v371 = *(v373 - 8);
  MEMORY[0x28223BE20](v373);
  v370 = &v243 - v29;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E10, &qword_233290C70);
  v365 = *(v366 - 8);
  MEMORY[0x28223BE20](v366);
  v363 = &v243 - v30;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E18, &qword_233290C78);
  v360 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v357 = &v243 - v31;
  v356[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E20, &qword_233290C80);
  v355 = *(v356[0] - 8);
  MEMORY[0x28223BE20](v356[0]);
  v353 = &v243 - v32;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E28, &qword_233290C88);
  v362 = *(v364 - 8);
  MEMORY[0x28223BE20](v364);
  v359 = &v243 - v33;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E30, &qword_233290C90);
  v356[1] = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v354 = &v243 - v34;
  v349[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E38, &qword_233290C98);
  v348 = *(v349[0] - 8);
  MEMORY[0x28223BE20](v349[0]);
  v345 = &v243 - v35;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E40, &qword_233290CA0);
  v351[1] = *(v352 - 8);
  MEMORY[0x28223BE20](v352);
  v351[0] = &v243 - v36;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E48, &qword_233290CA8);
  v349[1] = *(v350 - 8);
  MEMORY[0x28223BE20](v350);
  v347 = &v243 - v37;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E50, &qword_233290CB0);
  v335 = *(v336 - 8);
  MEMORY[0x28223BE20](v336);
  v333 = &v243 - v38;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E58, &qword_233290CB8);
  v339 = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v338 = &v243 - v39;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E60, &qword_233290CC0);
  v344 = *(v346 - 8);
  MEMORY[0x28223BE20](v346);
  v343 = &v243 - v40;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E68, &qword_233290CC8);
  v340 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v337 = &v243 - v41;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E70, &qword_233290CD0);
  v329[1] = *(v330 - 8);
  MEMORY[0x28223BE20](v330);
  v329[0] = &v243 - v42;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E78, &qword_233290CD8);
  v332 = *(v334 - 8);
  MEMORY[0x28223BE20](v334);
  v331 = &v243 - v43;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E80, &qword_233290CE0);
  v327 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v326 = &v243 - v44;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E88, &qword_233290CE8);
  v324[1] = *(v325 - 8);
  MEMORY[0x28223BE20](v325);
  v324[0] = &v243 - v45;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E90, &qword_233290CF0);
  v322[1] = *(v323 - 8);
  MEMORY[0x28223BE20](v323);
  v322[0] = &v243 - v46;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E98, &qword_233290CF8);
  v320 = *(v321 - 8);
  MEMORY[0x28223BE20](v321);
  v319 = &v243 - v47;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EA0, &qword_233290D00);
  v317 = *(v318 - 8);
  MEMORY[0x28223BE20](v318);
  v316 = &v243 - v48;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EA8, &qword_233290D08);
  v314 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v313 = &v243 - v49;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EB0, &qword_233290D10);
  v311 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v310 = &v243 - v50;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EB8, &qword_233290D18);
  v308 = *(v309 - 8);
  MEMORY[0x28223BE20](v309);
  v306 = &v243 - v51;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EC0, &qword_233290D20);
  v303 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v300 = &v243 - v52;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EC8, &qword_233290D28);
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v295 = &v243 - v53;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1ED0, &qword_233290D30);
  v305 = *(v307 - 8);
  MEMORY[0x28223BE20](v307);
  v302 = &v243 - v54;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1ED8, &qword_233290D38);
  v299 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v296 = &v243 - v55;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EE0, &qword_233290D40);
  v288 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v286 = &v243 - v56;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EE8, &qword_233290D48);
  v293 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v292 = &v243 - v57;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EF0, &qword_233290D50);
  v290 = *(v291 - 8);
  MEMORY[0x28223BE20](v291);
  v287 = &v243 - v58;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EF8, &qword_233290D58);
  v284 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v282 = &v243 - v59;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F00, &qword_233290D60);
  v279 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  v276 = &v243 - v60;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F08, &qword_233290D68);
  v273 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v271 = &v243 - v61;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F10, &qword_233290D70);
  v281 = *(v283 - 8);
  MEMORY[0x28223BE20](v283);
  v278 = &v243 - v62;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F18, &qword_233290D78);
  v275 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v272 = &v243 - v63;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F20, &qword_233290D80);
  v269 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v268 = &v243 - v64;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F28, &qword_233290D88);
  v266 = *(v267 - 8);
  MEMORY[0x28223BE20](v267);
  v265 = &v243 - v65;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F30, &qword_233290D90);
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v262 = &v243 - v66;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F38, &qword_233290D98);
  v260 = *(v261 - 8);
  MEMORY[0x28223BE20](v261);
  v259 = &v243 - v67;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F40, &qword_233290DA0);
  v257 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v256 = &v243 - v68;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F48, &qword_233290DA8);
  v254 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v253 = &v243 - v69;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F50, &qword_233290DB0);
  v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v250 = &v243 - v70;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F58, &qword_233290DB8);
  v248 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v247 = &v243 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F60, &qword_233290DC0);
  v244 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v74 = &v243 - v73;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F68, &qword_233290DC8);
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v76 = &v243 - v75;
  v77 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v77);
  v79 = (&v243 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F70, &qword_233290DD0);
  v432 = *(v436 - 8);
  MEMORY[0x28223BE20](v436);
  v81 = &v243 - v80;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23314875C();
  v435 = v81;
  v82 = v79;
  sub_23328E69C();
  sub_23314406C(v434, v79, type metadata accessor for TTSVBError.Reason);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v188 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v188);
      LOBYTE(v438) = 10;
      sub_233149A64();
      v117 = v272;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v277;
      sub_23328E4DC();
      v121 = &v307;
      goto LABEL_76;
    case 2u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v174 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v174);
      LOBYTE(v438) = 11;
      sub_233149A10();
      v117 = v278;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v283;
      sub_23328E4DC();
      v121 = &v313;
      goto LABEL_76;
    case 3u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v186 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v186);
      LOBYTE(v438) = 15;
      sub_2331498C0();
      v117 = v287;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v291;
      sub_23328E4DC();
      v121 = v322;
      goto LABEL_76;
    case 4u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v152 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v152);
      LOBYTE(v438) = 16;
      sub_23314986C();
      v117 = v292;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v294;
      sub_23328E4DC();
      v121 = v324;
      goto LABEL_76;
    case 5u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v199 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v199);
      LOBYTE(v438) = 18;
      sub_2331497C4();
      v117 = v296;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v301;
      sub_23328E4DC();
      v121 = v329;
      goto LABEL_76;
    case 6u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v207 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v207);
      LOBYTE(v438) = 19;
      sub_233149770();
      v117 = v302;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v307;
      sub_23328E4DC();
      v121 = &v334;
      goto LABEL_76;
    case 7u:
      LOBYTE(v438) = 25;
      sub_233149578();
      v171 = v316;
      v84 = v435;
      v83 = v436;
      sub_23328E45C();
      v172 = v318;
      sub_23328E48C();

      v173 = &v346;
      goto LABEL_71;
    case 8u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v213 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v213);
      LOBYTE(v438) = 26;
      sub_233149524();
      v117 = v319;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v321;
      sub_23328E4DC();
      v121 = v349;
      goto LABEL_76;
    case 9u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v167 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v167);
      LOBYTE(v438) = 27;
      sub_2331494D0();
      v117 = v322[0];
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v323;
      sub_23328E4DC();
      v121 = v351;
      goto LABEL_76;
    case 0xAu:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v211 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v212 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v211);
      LOBYTE(v438) = 28;
      sub_23314947C();
      v117 = v324[0];
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v325;
      sub_23328E4DC();
      v121 = &v353;
      goto LABEL_76;
    case 0xBu:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v149 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v149);
      LOBYTE(v438) = 29;
      sub_233149428();
      v117 = v326;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v328;
      sub_23328E4DC();
      v121 = v356;
      goto LABEL_76;
    case 0xCu:
      v431 = *(v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990) + 48));
      v157 = sub_23328CC9C();
      v434 = &v243;
      v158 = *(v157 - 8);
      v159 = MEMORY[0x28223BE20](v157);
      v161 = &v243 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v158 + 32))(v161, v159);
      LOBYTE(v438) = 30;
      sub_2331493D4();
      v162 = v331;
      v164 = v435;
      v163 = v436;
      sub_23328E45C();
      LOBYTE(v438) = 0;
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v165 = v334;
      v166 = v433;
      sub_23328E4DC();
      if (!v166)
      {
        LOBYTE(v438) = 1;
        sub_23328E48C();
      }

      (*(v332 + 8))(v162, v165);
      (*(v158 + 8))(v161, v157);
      return (*(v432 + 8))(v164, v163);
    case 0xDu:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v205 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v206 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v205);
      LOBYTE(v438) = 31;
      sub_233149380();
      v117 = v329[0];
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v330;
      sub_23328E4DC();
      v121 = &v358;
      goto LABEL_76;
    case 0xEu:
      v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v124 = sub_23328CC9C();
      v434 = &v243;
      v125 = *(v124 - 8);
      v126 = *(v125 + 64);
      v127 = MEMORY[0x28223BE20](v124);
      v128 = &v243 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
      v430 = v125;
      v129 = *(v125 + 32);
      v130 = v129(v128, v82, v124, v127);
      v431 = &v243;
      v131 = MEMORY[0x28223BE20](v130);
      v132 = v128;
      v129(v128, (v82 + v123), v124, v131);
      LOBYTE(v438) = 32;
      sub_23314932C();
      v133 = v337;
      v134 = v435;
      v135 = v436;
      sub_23328E45C();
      LOBYTE(v438) = 0;
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v136 = v341;
      v137 = v433;
      sub_23328E4DC();
      if (v137)
      {
        v138 = &v369;
        goto LABEL_40;
      }

      LOBYTE(v438) = 1;
      sub_23328E4DC();
      v241 = &v369;
      goto LABEL_91;
    case 0xFu:
      v176 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v124 = sub_23328CC9C();
      v434 = &v243;
      v177 = *(v124 - 8);
      v178 = *(v177 + 64);
      v179 = MEMORY[0x28223BE20](v124);
      v128 = &v243 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
      v430 = v177;
      v180 = *(v177 + 32);
      v181 = v180(v128, v82, v124, v179);
      v431 = &v243;
      v182 = MEMORY[0x28223BE20](v181);
      v132 = v128;
      v180(v128, (v82 + v176), v124, v182);
      LOBYTE(v438) = 33;
      sub_2331492D8();
      v133 = v343;
      v134 = v435;
      v135 = v436;
      sub_23328E45C();
      LOBYTE(v438) = 0;
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v136 = v346;
      v183 = v433;
      sub_23328E4DC();
      if (v183)
      {
        v138 = &v373;
LABEL_40:
        (*(*(v138 - 32) + 8))(v133, v136);
        v184 = *(v430 + 8);
        v184(v132, v124);
        v184(v128, v124);
        return (*(v432 + 8))(v134, v135);
      }

      else
      {
        LOBYTE(v438) = 1;
        sub_23328E4DC();
        v241 = &v373;
LABEL_91:
        (*(*(v241 - 32) + 8))(v133, v136);
        v242 = *(v430 + 8);
        v242(v132, v124);
        v242(v128, v124);
        return (*(v432 + 8))(v435, v436);
      }

    case 0x10u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v114 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v114);
      LOBYTE(v438) = 34;
      sub_233149284();
      v117 = v338;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v342;
      sub_23328E4DC();
      v121 = &v368;
      goto LABEL_76;
    case 0x11u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v193 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v193);
      LOBYTE(v438) = 36;
      sub_2331491DC();
      v117 = v347;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v350;
      sub_23328E4DC();
      v121 = v379;
      goto LABEL_76;
    case 0x12u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v209 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v209);
      LOBYTE(v438) = 37;
      sub_233149188();
      v117 = v351[0];
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v352;
      sub_23328E4DC();
      v121 = &v381;
      goto LABEL_76;
    case 0x13u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v224 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v224);
      LOBYTE(v438) = 39;
      sub_2331490E0();
      v117 = v354;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v358;
      sub_23328E4DC();
      v121 = &v387;
      goto LABEL_76;
    case 0x14u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v196 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v196);
      LOBYTE(v438) = 40;
      sub_23314908C();
      v117 = v359;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v364;
      sub_23328E4DC();
      v121 = &v393;
      goto LABEL_76;
    case 0x15u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v203 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v203);
      LOBYTE(v438) = 44;
      sub_233148F3C();
      v117 = v370;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v373;
      sub_23328E4DC();
      v121 = &v402;
      goto LABEL_76;
    case 0x16u:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v221 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v221);
      LOBYTE(v438) = 46;
      sub_233148E94();
      v117 = v377;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v380;
      sub_23328E4DC();
      v121 = v411;
      goto LABEL_76;
    case 0x17u:
      v112 = sub_23328CE8C();
      v113 = *(v112 - 8);
      v229 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v229);
      LOBYTE(v438) = 49;
      sub_233148D98();
      v117 = v382;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F80, MEMORY[0x28220C0A0], MEMORY[0x28220C0C0]);
      v120 = v386;
      sub_23328E4DC();
      v121 = v415;
      goto LABEL_76;
    case 0x18u:
      LOBYTE(v438) = 50;
      sub_233148D44();
      v171 = v381;
      v84 = v435;
      v83 = v436;
      sub_23328E45C();
      v172 = v384;
      sub_23328E48C();

      v173 = v414;
      goto LABEL_71;
    case 0x19u:
      v112 = sub_23328CE8C();
      v113 = *(v112 - 8);
      v169 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v169);
      LOBYTE(v438) = 51;
      sub_233148CF0();
      v117 = v388;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F80, MEMORY[0x28220C0A0], MEMORY[0x28220C0C0]);
      v120 = v393;
      sub_23328E4DC();
      v121 = &v420;
      goto LABEL_76;
    case 0x1Au:
      v112 = sub_23328CC9C();
      v113 = *(v112 - 8);
      v234 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v234);
      LOBYTE(v438) = 52;
      sub_233148C9C();
      v117 = v394;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8], MEMORY[0x28220BE50]);
      v120 = v399;
      sub_23328E4DC();
      v121 = &v426;
      goto LABEL_76;
    case 0x1Bu:
      LOBYTE(v438) = 57;
      sub_233148AF8();
      v105 = v408;
      v107 = v435;
      v106 = v436;
      sub_23328E45C();
      LOBYTE(v438) = 0;
      v108 = v410;
      v109 = v433;
      sub_23328E4AC();
      if (!v109)
      {
        LOBYTE(v438) = 1;
        sub_23328E4FC();
      }

      (*(v409 + 8))(v105, v108);
      return (*(v432 + 8))(v107, v106);
    case 0x1Cu:
      LOBYTE(v438) = 59;
      sub_233148A50();
      v171 = v411[0];
      v84 = v435;
      v83 = v436;
      sub_23328E45C();
      v172 = v412;
      sub_23328E48C();

      v173 = &v440;
      goto LABEL_71;
    case 0x1Du:
      v112 = sub_23328CE8C();
      v113 = *(v112 - 8);
      v231 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v231);
      LOBYTE(v438) = 60;
      sub_2331489FC();
      v117 = v414[0];
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F80, MEMORY[0x28220C0A0], MEMORY[0x28220C0C0]);
      v120 = v416;
      sub_23328E4DC();
      v121 = &v442;
LABEL_76:
      v192 = *(v121 - 32);
      goto LABEL_77;
    case 0x1Eu:
      LOBYTE(v438) = 61;
      sub_2331489A8();
      v171 = v413;
      v84 = v435;
      v83 = v436;
      sub_23328E45C();
      v172 = v415[0];
      sub_23328E48C();

      v173 = &v441;
LABEL_71:
      (*(*(v173 - 32) + 8))(v171, v172);
      return (*(v432 + 8))(v84, v83);
    case 0x1Fu:
      v112 = sub_23328CE8C();
      v113 = *(v112 - 8);
      v190 = MEMORY[0x28223BE20](v112);
      v116 = &v243 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v113 + 32))(v116, v79, v112, v190);
      LOBYTE(v438) = 62;
      sub_233148954();
      v117 = v417;
      v119 = v435;
      v118 = v436;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F80, MEMORY[0x28220C0A0], MEMORY[0x28220C0C0]);
      v120 = v420;
      sub_23328E4DC();
      v192 = v419;
LABEL_77:
      (*(v192 + 8))(v117, v120);
      (*(v113 + 8))(v116, v112);
      return (*(v432 + 8))(v119, v118);
    case 0x20u:
      LOBYTE(v438) = 63;
      sub_233148900();
      v215 = v418;
      v217 = v435;
      v216 = v436;
      sub_23328E45C();
      LOBYTE(v438) = 0;
      v218 = v422;
      v219 = v433;
      sub_23328E4EC();
      if (!v219)
      {
        LOBYTE(v438) = 1;
        sub_23328E4EC();
      }

      (*(v421 + 8))(v215, v218);
      return (*(v432 + 8))(v217, v216);
    case 0x21u:
      v140 = *v79;
      v139 = v79[1];
      v141 = v79[3];
      v434 = v79[2];
      LOBYTE(v438) = 64;
      sub_2331488AC();
      v142 = v424;
      v144 = v435;
      v143 = v436;
      sub_23328E45C();
      v438 = v140;
      v439 = v139;
      v437 = 0;
      sub_233148804();
      v145 = v429;
      v146 = v433;
      sub_23328E4DC();
      if (v146)
      {

        (*(v428 + 8))(v142, v145);
        (*(v432 + 8))(v144, v143);
      }

      else
      {

        v438 = v434;
        v439 = v141;
        v437 = 1;
        sub_23328E4DC();
        (*(v428 + 8))(v142, v145);
        (*(v432 + 8))(v144, v143);
      }

    case 0x22u:
      v111 = *v79;
      v110 = v79[1];
      LOBYTE(v438) = 65;
      sub_233148858();
      v100 = v423;
      v102 = v435;
      v101 = v436;
      sub_23328E45C();
      v438 = v111;
      v439 = v110;
      sub_233148804();
      v103 = v426;
      sub_23328E4DC();
      v104 = v425;
      goto LABEL_15;
    case 0x23u:
      v99 = *v79;
      v98 = v79[1];
      LOBYTE(v438) = 66;
      sub_2331487B0();
      v100 = v427;
      v102 = v435;
      v101 = v436;
      sub_23328E45C();
      v438 = v99;
      v439 = v98;
      sub_233148804();
      v103 = v431;
      sub_23328E4DC();
      v104 = v430;
LABEL_15:
      (*(v104 + 8))(v100, v103);
      (*(v432 + 8))(v102, v101);

    case 0x24u:
      LOBYTE(v438) = 1;
      sub_233149D58();
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v244 + 8))(v74, v72);
      return (*(v432 + 8))(v88, v87);
    case 0x25u:
      LOBYTE(v438) = 2;
      sub_233149D04();
      v91 = v247;
      v92 = v435;
      v93 = v436;
      sub_23328E45C();
      (*(v248 + 8))(v91, v249);
      return (*(v432 + 8))(v92, v93);
    case 0x26u:
      LOBYTE(v438) = 3;
      sub_233149CB0();
      v233 = v250;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v251 + 8))(v233, v252);
      return (*(v432 + 8))(v88, v87);
    case 0x27u:
      LOBYTE(v438) = 4;
      sub_233149C5C();
      v223 = v253;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v254 + 8))(v223, v255);
      return (*(v432 + 8))(v88, v87);
    case 0x28u:
      LOBYTE(v438) = 5;
      sub_233149C08();
      v154 = v256;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v257 + 8))(v154, v258);
      return (*(v432 + 8))(v88, v87);
    case 0x29u:
      LOBYTE(v438) = 6;
      sub_233149BB4();
      v195 = v259;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v260 + 8))(v195, v261);
      return (*(v432 + 8))(v88, v87);
    case 0x2Au:
      LOBYTE(v438) = 7;
      sub_233149B60();
      v227 = v262;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v263 + 8))(v227, v264);
      return (*(v432 + 8))(v88, v87);
    case 0x2Bu:
      LOBYTE(v438) = 8;
      sub_233149B0C();
      v89 = v265;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v266 + 8))(v89, v267);
      return (*(v432 + 8))(v88, v87);
    case 0x2Cu:
      LOBYTE(v438) = 9;
      sub_233149AB8();
      v122 = v268;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v269 + 8))(v122, v270);
      return (*(v432 + 8))(v88, v87);
    case 0x2Du:
      LOBYTE(v438) = 12;
      sub_2331499BC();
      v220 = v271;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v273 + 8))(v220, v274);
      return (*(v432 + 8))(v88, v87);
    case 0x2Eu:
      LOBYTE(v438) = 13;
      sub_233149968();
      v239 = v276;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v279 + 8))(v239, v280);
      return (*(v432 + 8))(v88, v87);
    case 0x2Fu:
      LOBYTE(v438) = 14;
      sub_233149914();
      v96 = v282;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v284 + 8))(v96, v285);
      return (*(v432 + 8))(v88, v87);
    case 0x30u:
      LOBYTE(v438) = 17;
      sub_233149818();
      v147 = v286;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v288 + 8))(v147, v289);
      return (*(v432 + 8))(v88, v87);
    case 0x31u:
      LOBYTE(v438) = 20;
      sub_23314971C();
      v151 = v295;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v297 + 8))(v151, v298);
      return (*(v432 + 8))(v88, v87);
    case 0x32u:
      LOBYTE(v438) = 21;
      sub_2331496C8();
      v86 = v300;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v303 + 8))(v86, v304);
      return (*(v432 + 8))(v88, v87);
    case 0x33u:
      LOBYTE(v438) = 22;
      sub_233149674();
      v240 = v306;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v308 + 8))(v240, v309);
      return (*(v432 + 8))(v88, v87);
    case 0x34u:
      LOBYTE(v438) = 23;
      sub_233149620();
      v238 = v310;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v311 + 8))(v238, v312);
      return (*(v432 + 8))(v88, v87);
    case 0x35u:
      LOBYTE(v438) = 24;
      sub_2331495CC();
      v95 = v313;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v314 + 8))(v95, v315);
      return (*(v432 + 8))(v88, v87);
    case 0x36u:
      LOBYTE(v438) = 35;
      sub_233149230();
      v236 = v333;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v335 + 8))(v236, v336);
      return (*(v432 + 8))(v88, v87);
    case 0x37u:
      LOBYTE(v438) = 38;
      sub_233149134();
      v237 = v345;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v348 + 8))(v237, v349[0]);
      return (*(v432 + 8))(v88, v87);
    case 0x38u:
      LOBYTE(v438) = 41;
      sub_233149038();
      v97 = v353;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v355 + 8))(v97, v356[0]);
      return (*(v432 + 8))(v88, v87);
    case 0x39u:
      LOBYTE(v438) = 42;
      sub_233148FE4();
      v226 = v357;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v360 + 8))(v226, v361);
      return (*(v432 + 8))(v88, v87);
    case 0x3Au:
      LOBYTE(v438) = 43;
      sub_233148F90();
      v148 = v363;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v365 + 8))(v148, v366);
      return (*(v432 + 8))(v88, v87);
    case 0x3Bu:
      LOBYTE(v438) = 45;
      sub_233148EE8();
      v228 = v367;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v368 + 8))(v228, v369);
      return (*(v432 + 8))(v88, v87);
    case 0x3Cu:
      LOBYTE(v438) = 47;
      sub_233148E40();
      v155 = v372;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v374 + 8))(v155, v375);
      return (*(v432 + 8))(v88, v87);
    case 0x3Du:
      LOBYTE(v438) = 48;
      sub_233148DEC();
      v198 = v376;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v378 + 8))(v198, v379[0]);
      return (*(v432 + 8))(v88, v87);
    case 0x3Eu:
      LOBYTE(v438) = 53;
      sub_233148C48();
      v202 = v387;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v389 + 8))(v202, v390);
      return (*(v432 + 8))(v88, v87);
    case 0x3Fu:
      LOBYTE(v438) = 54;
      sub_233148BF4();
      v185 = v392;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v395 + 8))(v185, v396);
      return (*(v432 + 8))(v88, v87);
    case 0x40u:
      LOBYTE(v438) = 55;
      sub_233148BA0();
      v156 = v398;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v400 + 8))(v156, v401);
      return (*(v432 + 8))(v88, v87);
    case 0x41u:
      LOBYTE(v438) = 56;
      sub_233148B4C();
      v201 = v402;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v403 + 8))(v201, v404);
      return (*(v432 + 8))(v88, v87);
    case 0x42u:
      LOBYTE(v438) = 58;
      sub_233148AA4();
      v90 = v405;
      v88 = v435;
      v87 = v436;
      sub_23328E45C();
      (*(v406 + 8))(v90, v407);
      return (*(v432 + 8))(v88, v87);
    default:
      LOBYTE(v438) = 0;
      sub_233149DAC();
      v84 = v435;
      v83 = v436;
      sub_23328E45C();
      v85 = v246;
      sub_23328E48C();

      (*(v245 + 8))(v76, v85);
      return (*(v432 + 8))(v84, v83);
  }
}

uint64_t TTSVBError.Reason.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23314406C(v2, v5, type metadata accessor for TTSVBError.Reason);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v60 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v60);
      v19 = 10;
      goto LABEL_71;
    case 2u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v49 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v49);
      v19 = 11;
      goto LABEL_71;
    case 3u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v58 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v58);
      v19 = 15;
      goto LABEL_71;
    case 4u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v37 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v37);
      v19 = 16;
      goto LABEL_71;
    case 5u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v68 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v68);
      v19 = 18;
      goto LABEL_71;
    case 6u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v74 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v74);
      v19 = 19;
      goto LABEL_71;
    case 7u:
      v6 = 25;
      goto LABEL_65;
    case 8u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v80 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v80);
      v19 = 26;
      goto LABEL_71;
    case 9u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v44 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v44);
      v19 = 27;
      goto LABEL_71;
    case 0xAu:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v78 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v78);
      v19 = 28;
      goto LABEL_71;
    case 0xBu:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v35 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v35);
      v19 = 29;
      goto LABEL_71;
    case 0xCu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990);
      v39 = sub_23328CC9C();
      v40 = *(v39 - 8);
      v41 = MEMORY[0x28223BE20](v39);
      v43 = &v97 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v40 + 32))(v43, v5, v39, v41);
      MEMORY[0x23839C380](30);
      sub_233149EA8(&qword_27DDE1FA0, MEMORY[0x28220BDF8], MEMORY[0x28220BE58]);
      sub_23328D8CC();
      sub_23328DA3C();

      return (*(v40 + 8))(v43, v39);
    case 0xDu:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v72 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v72);
      v19 = 31;
      goto LABEL_71;
    case 0xEu:
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v21 = sub_23328CC9C();
      v98 = &v97;
      v22 = *(v21 - 8);
      v23 = v22[8];
      v24 = MEMORY[0x28223BE20](v21);
      v25 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = v22[4];
      v27 = v26(v25, v5, v21, v24);
      v97 = &v97;
      v28 = MEMORY[0x28223BE20](v27);
      v29 = v25;
      v26(v25, &v5[v20], v21, v28);
      v30 = 32;
      goto LABEL_35;
    case 0xFu:
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v21 = sub_23328CC9C();
      v98 = &v97;
      v22 = *(v21 - 8);
      v52 = v22[8];
      v53 = MEMORY[0x28223BE20](v21);
      v25 = &v97 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      v54 = v22[4];
      v55 = v54(v25, v5, v21, v53);
      v97 = &v97;
      v56 = MEMORY[0x28223BE20](v55);
      v29 = v25;
      v54(v25, &v5[v51], v21, v56);
      v30 = 33;
LABEL_35:
      MEMORY[0x23839C380](v30);
      sub_233149EA8(&qword_27DDE1FA0, MEMORY[0x28220BDF8], MEMORY[0x28220BE58]);
      sub_23328D8CC();
      sub_23328D8CC();
      v57 = v22[1];
      v57(v29, v21);
      return (v57)(v25, v21);
    case 0x10u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v16 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v16);
      v19 = 34;
      goto LABEL_71;
    case 0x11u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v64 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v64);
      v19 = 36;
      goto LABEL_71;
    case 0x12u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v76 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v76);
      v19 = 37;
      goto LABEL_71;
    case 0x13u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v86 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v86);
      v19 = 39;
      goto LABEL_71;
    case 0x14u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v66 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v66);
      v19 = 40;
      goto LABEL_71;
    case 0x15u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v70 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v70);
      v19 = 44;
      goto LABEL_71;
    case 0x16u:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v84 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v84);
      v19 = 46;
      goto LABEL_71;
    case 0x17u:
      v14 = sub_23328CE8C();
      v15 = *(v14 - 8);
      v88 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v88);
      v48 = 49;
      goto LABEL_68;
    case 0x18u:
      v6 = 50;
      goto LABEL_65;
    case 0x19u:
      v14 = sub_23328CE8C();
      v15 = *(v14 - 8);
      v46 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v46);
      v48 = 51;
      goto LABEL_68;
    case 0x1Au:
      v14 = sub_23328CC9C();
      v15 = *(v14 - 8);
      v95 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v95);
      v19 = 52;
LABEL_71:
      MEMORY[0x23839C380](v19);
      v92 = &qword_27DDE1FA0;
      v93 = MEMORY[0x28220BDF8];
      v94 = MEMORY[0x28220BE58];
      goto LABEL_72;
    case 0x1Bu:
      v11 = *v5;
      MEMORY[0x23839C380](57);
      v12 = 0.0;
      if (v11 != 0.0)
      {
        v12 = v11;
      }

      MEMORY[0x23839C3B0](*&v12);
      return sub_23328E64C();
    case 0x1Cu:
      v6 = 59;
      goto LABEL_65;
    case 0x1Du:
      v14 = sub_23328CE8C();
      v15 = *(v14 - 8);
      v90 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v90);
      v48 = 60;
      goto LABEL_68;
    case 0x1Eu:
      v6 = 61;
      goto LABEL_65;
    case 0x1Fu:
      v14 = sub_23328CE8C();
      v15 = *(v14 - 8);
      v62 = MEMORY[0x28223BE20](v14);
      v18 = &v97 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 32))(v18, v5, v14, v62);
      v48 = 62;
LABEL_68:
      MEMORY[0x23839C380](v48);
      v92 = &qword_27DDE1F98;
      v93 = MEMORY[0x28220C0A0];
      v94 = MEMORY[0x28220C0C8];
LABEL_72:
      sub_233149EA8(v92, v93, v94);
      sub_23328D8CC();
      return (*(v15 + 8))(v18, v14);
    case 0x20u:
      v82 = *v5;
      v83 = *(v5 + 1);
      MEMORY[0x23839C380](63);
      MEMORY[0x23839C3B0](*&v82);
      return MEMORY[0x23839C3B0](v83);
    case 0x21u:
      v32 = *v5;
      v31 = *(v5 + 1);
      v34 = *(v5 + 2);
      v33 = *(v5 + 3);
      MEMORY[0x23839C380](64);
      v99 = v32;
      v100 = v31;
      sub_233149E00();
      sub_23328D8CC();

      v99 = v34;
      v100 = v33;
      sub_23328D8CC();
      goto LABEL_66;
    case 0x22u:
      v9 = *v5;
      v8 = *(v5 + 1);
      v10 = 65;
      goto LABEL_16;
    case 0x23u:
      v9 = *v5;
      v8 = *(v5 + 1);
      v10 = 66;
LABEL_16:
      MEMORY[0x23839C380](v10);
      v99 = v9;
      v100 = v8;
      sub_233149E00();
      sub_23328D8CC();
      goto LABEL_66;
    case 0x24u:
      v7 = 1;
      goto LABEL_78;
    case 0x25u:
      v7 = 2;
      goto LABEL_78;
    case 0x26u:
      v7 = 3;
      goto LABEL_78;
    case 0x27u:
      v7 = 4;
      goto LABEL_78;
    case 0x28u:
      v7 = 5;
      goto LABEL_78;
    case 0x29u:
      v7 = 6;
      goto LABEL_78;
    case 0x2Au:
      v7 = 7;
      goto LABEL_78;
    case 0x2Bu:
      v7 = 8;
      goto LABEL_78;
    case 0x2Cu:
      v7 = 9;
      goto LABEL_78;
    case 0x2Du:
      v7 = 12;
      goto LABEL_78;
    case 0x2Eu:
      v7 = 13;
      goto LABEL_78;
    case 0x2Fu:
      v7 = 14;
      goto LABEL_78;
    case 0x30u:
      v7 = 17;
      goto LABEL_78;
    case 0x31u:
      v7 = 20;
      goto LABEL_78;
    case 0x32u:
      v7 = 21;
      goto LABEL_78;
    case 0x33u:
      v7 = 22;
      goto LABEL_78;
    case 0x34u:
      v7 = 23;
      goto LABEL_78;
    case 0x35u:
      v7 = 24;
      goto LABEL_78;
    case 0x36u:
      v7 = 35;
      goto LABEL_78;
    case 0x37u:
      v7 = 38;
      goto LABEL_78;
    case 0x38u:
      v7 = 41;
      goto LABEL_78;
    case 0x39u:
      v7 = 42;
      goto LABEL_78;
    case 0x3Au:
      v7 = 43;
      goto LABEL_78;
    case 0x3Bu:
      v7 = 45;
      goto LABEL_78;
    case 0x3Cu:
      v7 = 47;
      goto LABEL_78;
    case 0x3Du:
      v7 = 48;
      goto LABEL_78;
    case 0x3Eu:
      v7 = 53;
      goto LABEL_78;
    case 0x3Fu:
      v7 = 54;
      goto LABEL_78;
    case 0x40u:
      v7 = 55;
      goto LABEL_78;
    case 0x41u:
      v7 = 56;
      goto LABEL_78;
    case 0x42u:
      v7 = 58;
LABEL_78:
      result = MEMORY[0x23839C380](v7);
      break;
    default:
      v6 = 0;
LABEL_65:
      MEMORY[0x23839C380](v6);
      sub_23328DA3C();
LABEL_66:

      break;
  }

  return result;
}

uint64_t TTSVBError.Reason.hashValue.getter()
{
  sub_23328E61C();
  TTSVBError.Reason.hash(into:)(v1);
  return sub_23328E66C();
}

uint64_t TTSVBError.Reason.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v683 = a2;
  v608 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FA8, &qword_233290DD8);
  v610 = *(v608 - 8);
  MEMORY[0x28223BE20](v608);
  v674 = &v446 - v3;
  v607 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FB0, &qword_233290DE0);
  v686 = *(v607 - 8);
  MEMORY[0x28223BE20](v607);
  v673 = &v446 - v4;
  v609 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FB8, &qword_233290DE8);
  v615 = *(v609 - 8);
  MEMORY[0x28223BE20](v609);
  v675 = &v446 - v5;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FC0, &qword_233290DF0);
  v614 = *(v606 - 8);
  MEMORY[0x28223BE20](v606);
  v672 = &v446 - v6;
  v605 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FC8, &qword_233290DF8);
  v604 = *(v605 - 8);
  MEMORY[0x28223BE20](v605);
  v671 = &v446 - v7;
  v603 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FD0, &qword_233290E00);
  v602 = *(v603 - 8);
  MEMORY[0x28223BE20](v603);
  v670 = &v446 - v8;
  v601 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FD8, &qword_233290E08);
  v600 = *(v601 - 8);
  MEMORY[0x28223BE20](v601);
  v669 = &v446 - v9;
  v599 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FE0, &qword_233290E10);
  v598 = *(v599 - 8);
  MEMORY[0x28223BE20](v599);
  v668 = &v446 - v10;
  v595 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FE8, &qword_233290E18);
  v594 = *(v595 - 8);
  MEMORY[0x28223BE20](v595);
  v666 = &v446 - v11;
  v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FF0, &qword_233290E20);
  v596 = *(v597 - 8);
  MEMORY[0x28223BE20](v597);
  v667 = &v446 - v12;
  v593 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FF8, &qword_233290E28);
  v592 = *(v593 - 8);
  MEMORY[0x28223BE20](v593);
  v665 = &v446 - v13;
  v591 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2000, &qword_233290E30);
  v590 = *(v591 - 8);
  MEMORY[0x28223BE20](v591);
  v664 = &v446 - v14;
  v589 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2008, &qword_233290E38);
  v588 = *(v589 - 8);
  MEMORY[0x28223BE20](v589);
  v663 = &v446 - v15;
  v585 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2010, &qword_233290E40);
  v584 = *(v585 - 8);
  MEMORY[0x28223BE20](v585);
  v661 = &v446 - v16;
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2018, &qword_233290E48);
  v586 = *(v587 - 8);
  MEMORY[0x28223BE20](v587);
  v662 = &v446 - v17;
  v583 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2020, &qword_233290E50);
  v582 = *(v583 - 8);
  MEMORY[0x28223BE20](v583);
  v682 = &v446 - v18;
  v581 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2028, &qword_233290E58);
  v580 = *(v581 - 8);
  MEMORY[0x28223BE20](v581);
  v660 = &v446 - v19;
  v579 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2030, &qword_233290E60);
  v578 = *(v579 - 8);
  MEMORY[0x28223BE20](v579);
  v681 = &v446 - v20;
  v577 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2038, &qword_233290E68);
  v576 = *(v577 - 8);
  MEMORY[0x28223BE20](v577);
  v659 = &v446 - v21;
  v573 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2040, &qword_233290E70);
  v572 = *(v573 - 8);
  MEMORY[0x28223BE20](v573);
  v658 = &v446 - v22;
  v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2048, &qword_233290E78);
  v574 = *(v575 - 8);
  MEMORY[0x28223BE20](v575);
  v680 = &v446 - v23;
  v569 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2050, &qword_233290E80);
  v568 = *(v569 - 8);
  MEMORY[0x28223BE20](v569);
  v657 = &v446 - v24;
  v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2058, &qword_233290E88);
  v570 = *(v571 - 8);
  MEMORY[0x28223BE20](v571);
  v679 = &v446 - v25;
  v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2060, &qword_233290E90);
  v566 = *(v567 - 8);
  MEMORY[0x28223BE20](v567);
  v656 = &v446 - v26;
  v565 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2068, &qword_233290E98);
  v564 = *(v565 - 8);
  MEMORY[0x28223BE20](v565);
  v655 = &v446 - v27;
  v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2070, &qword_233290EA0);
  v560 = *(v561 - 8);
  MEMORY[0x28223BE20](v561);
  v653 = &v446 - v28;
  v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2078, &qword_233290EA8);
  v562 = *(v563 - 8);
  MEMORY[0x28223BE20](v563);
  v654 = &v446 - v29;
  v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2080, &qword_233290EB0);
  v558 = *(v559 - 8);
  MEMORY[0x28223BE20](v559);
  v652 = &v446 - v30;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2088, &qword_233290EB8);
  v554 = *(v555 - 8);
  MEMORY[0x28223BE20](v555);
  v650 = &v446 - v31;
  v557 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2090, &qword_233290EC0);
  v556 = *(v557 - 8);
  MEMORY[0x28223BE20](v557);
  v651 = &v446 - v32;
  v553 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2098, &qword_233290EC8);
  v552 = *(v553 - 8);
  MEMORY[0x28223BE20](v553);
  v649 = &v446 - v33;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20A0, &qword_233290ED0);
  v546 = *(v547 - 8);
  MEMORY[0x28223BE20](v547);
  v645 = &v446 - v34;
  v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20A8, &qword_233290ED8);
  v549 = *(v550 - 8);
  MEMORY[0x28223BE20](v550);
  v647 = &v446 - v35;
  v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20B0, &qword_233290EE0);
  v613 = *(v551 - 8);
  MEMORY[0x28223BE20](v551);
  v648 = &v446 - v36;
  v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20B8, &qword_233290EE8);
  v612 = *(v548 - 8);
  MEMORY[0x28223BE20](v548);
  v646 = &v446 - v37;
  v544 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20C0, &qword_233290EF0);
  v543 = *(v544 - 8);
  MEMORY[0x28223BE20](v544);
  v643 = &v446 - v38;
  v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20C8, &qword_233290EF8);
  v611 = *(v545 - 8);
  MEMORY[0x28223BE20](v545);
  v644 = &v446 - v39;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20D0, &qword_233290F00);
  v541 = *(v542 - 8);
  MEMORY[0x28223BE20](v542);
  v642 = &v446 - v40;
  v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20D8, &qword_233290F08);
  v539 = *(v540 - 8);
  MEMORY[0x28223BE20](v540);
  v641 = &v446 - v41;
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20E0, &qword_233290F10);
  v537 = *(v538 - 8);
  MEMORY[0x28223BE20](v538);
  v678 = &v446 - v42;
  v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20E8, &qword_233290F18);
  v535 = *(v536 - 8);
  MEMORY[0x28223BE20](v536);
  v640 = &v446 - v43;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20F0, &qword_233290F20);
  v533 = *(v534 - 8);
  MEMORY[0x28223BE20](v534);
  v639 = &v446 - v44;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20F8, &qword_233290F28);
  v531 = *(v532 - 8);
  MEMORY[0x28223BE20](v532);
  v638 = &v446 - v45;
  v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2100, &qword_233290F30);
  v529 = *(v530 - 8);
  MEMORY[0x28223BE20](v530);
  v637 = &v446 - v46;
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2108, &qword_233290F38);
  v527 = *(v528 - 8);
  MEMORY[0x28223BE20](v528);
  v636 = &v446 - v47;
  v526 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2110, &qword_233290F40);
  v525 = *(v526 - 8);
  MEMORY[0x28223BE20](v526);
  v635 = &v446 - v48;
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2118, &qword_233290F48);
  v521 = *(v522 - 8);
  MEMORY[0x28223BE20](v522);
  v633 = &v446 - v49;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2120, &qword_233290F50);
  v523 = *(v524 - 8);
  MEMORY[0x28223BE20](v524);
  v634 = &v446 - v50;
  v520 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2128, &qword_233290F58);
  v519 = *(v520 - 8);
  MEMORY[0x28223BE20](v520);
  v632 = &v446 - v51;
  v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2130, &qword_233290F60);
  v515 = *(v516 - 8);
  MEMORY[0x28223BE20](v516);
  v631 = &v446 - v52;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2138, &qword_233290F68);
  v517 = *(v518 - 8);
  MEMORY[0x28223BE20](v518);
  v677 = &v446 - v53;
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2140, &qword_233290F70);
  v513 = *(v514 - 8);
  MEMORY[0x28223BE20](v514);
  v630 = &v446 - v54;
  v512 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2148, &qword_233290F78);
  v511 = *(v512 - 8);
  MEMORY[0x28223BE20](v512);
  v629 = &v446 - v55;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2150, &qword_233290F80);
  v509 = *(v510 - 8);
  MEMORY[0x28223BE20](v510);
  v628 = &v446 - v56;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2158, &qword_233290F88);
  v505 = *(v506 - 8);
  MEMORY[0x28223BE20](v506);
  v627 = &v446 - v57;
  v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2160, &qword_233290F90);
  v507 = *(v508 - 8);
  MEMORY[0x28223BE20](v508);
  v676 = &v446 - v58;
  v504 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2168, &qword_233290F98);
  v503 = *(v504 - 8);
  MEMORY[0x28223BE20](v504);
  v626 = &v446 - v59;
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2170, &qword_233290FA0);
  v501 = *(v502 - 8);
  MEMORY[0x28223BE20](v502);
  v625 = &v446 - v60;
  v500 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2178, &qword_233290FA8);
  v499 = *(v500 - 8);
  MEMORY[0x28223BE20](v500);
  v624 = &v446 - v61;
  v498 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2180, &qword_233290FB0);
  v497 = *(v498 - 8);
  MEMORY[0x28223BE20](v498);
  v623 = &v446 - v62;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2188, &qword_233290FB8);
  v495 = *(v496 - 8);
  MEMORY[0x28223BE20](v496);
  v622 = &v446 - v63;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2190, &qword_233290FC0);
  v494 = *(v493 - 8);
  MEMORY[0x28223BE20](v493);
  v685 = &v446 - v64;
  v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2198, &qword_233290FC8);
  v491 = *(v492 - 8);
  MEMORY[0x28223BE20](v492);
  v619 = &v446 - v65;
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE21A0, &qword_233290FD0);
  v489 = *(v490 - 8);
  MEMORY[0x28223BE20](v490);
  v621 = &v446 - v66;
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE21A8, &qword_233290FD8);
  v487 = *(v488 - 8);
  MEMORY[0x28223BE20](v488);
  v620 = &v446 - v67;
  v486 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE21B0, &qword_233290FE0);
  v484 = *(v486 - 8);
  MEMORY[0x28223BE20](v486);
  v618 = &v446 - v68;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE21B8, &qword_233290FE8);
  v483 = *(v485 - 8);
  MEMORY[0x28223BE20](v485);
  v617 = &v446 - v69;
  v687 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE21C0, &qword_233290FF0);
  v684 = *(v687 - 8);
  MEMORY[0x28223BE20](v687);
  v691 = &v446 - v70;
  v688 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v688);
  v461 = (&v446 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v72);
  v460 = (&v446 - v73);
  MEMORY[0x28223BE20](v74);
  v455 = (&v446 - v75);
  MEMORY[0x28223BE20](v76);
  v454 = (&v446 - v77);
  MEMORY[0x28223BE20](v78);
  v482 = &v446 - v79;
  MEMORY[0x28223BE20](v80);
  v459 = (&v446 - v81);
  MEMORY[0x28223BE20](v82);
  v481 = &v446 - v83;
  MEMORY[0x28223BE20](v84);
  v458 = (&v446 - v85);
  MEMORY[0x28223BE20](v86);
  v453 = (&v446 - v87);
  MEMORY[0x28223BE20](v88);
  v480 = &v446 - v89;
  MEMORY[0x28223BE20](v90);
  v479 = &v446 - v91;
  MEMORY[0x28223BE20](v92);
  v457 = (&v446 - v93);
  MEMORY[0x28223BE20](v94);
  v476 = &v446 - v95;
  MEMORY[0x28223BE20](v96);
  v475 = &v446 - v97;
  MEMORY[0x28223BE20](v98);
  v474 = &v446 - v99;
  MEMORY[0x28223BE20](v100);
  v473 = &v446 - v101;
  MEMORY[0x28223BE20](v102);
  v472 = &v446 - v103;
  MEMORY[0x28223BE20](v104);
  v471 = &v446 - v105;
  MEMORY[0x28223BE20](v106);
  v470 = &v446 - v107;
  MEMORY[0x28223BE20](v108);
  v469 = &v446 - v109;
  MEMORY[0x28223BE20](v110);
  v478 = &v446 - v111;
  MEMORY[0x28223BE20](v112);
  v477 = &v446 - v113;
  MEMORY[0x28223BE20](v114);
  v468 = &v446 - v115;
  MEMORY[0x28223BE20](v116);
  v616 = &v446 - v117;
  MEMORY[0x28223BE20](v118);
  v467 = &v446 - v119;
  MEMORY[0x28223BE20](v120);
  v466 = &v446 - v121;
  MEMORY[0x28223BE20](v122);
  v465 = &v446 - v123;
  MEMORY[0x28223BE20](v124);
  v464 = &v446 - v125;
  MEMORY[0x28223BE20](v126);
  v456 = (&v446 - v127);
  MEMORY[0x28223BE20](v128);
  v463 = &v446 - v129;
  MEMORY[0x28223BE20](v130);
  v462 = &v446 - v131;
  MEMORY[0x28223BE20](v132);
  v134 = &v446 - v133;
  MEMORY[0x28223BE20](v135);
  v137 = &v446 - v136;
  MEMORY[0x28223BE20](v138);
  v140 = &v446 - v139;
  MEMORY[0x28223BE20](v141);
  v143 = &v446 - v142;
  MEMORY[0x28223BE20](v144);
  v146 = &v446 - v145;
  MEMORY[0x28223BE20](v147);
  v149 = &v446 - v148;
  v150 = a1[3];
  v689 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v150);
  sub_23314875C();
  v151 = v690;
  sub_23328E68C();
  if (v151)
  {
    v152 = v689;
  }

  else
  {
    v447 = v146;
    v452 = v143;
    v448 = v140;
    v449 = v137;
    v450 = v134;
    v154 = v685;
    v153 = v686;
    v690 = 0;
    v451 = v149;
    v155 = v687;
    v156 = v691;
    v157 = sub_23328E44C();
    if (*(v157 + 16) != 1 || (v158 = *(v157 + 32), v158 == 67))
    {
      v168 = sub_23328E29C();
      swift_allocError();
      v170 = v169;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D50, &qword_233290BB0);
      *v170 = v688;
      sub_23328E39C();
      sub_23328E28C();
      (*(*(v168 - 8) + 104))(v170, *MEMORY[0x277D84160], v168);
      swift_willThrow();
      (*(v684 + 8))(v156, v155);
LABEL_9:
      swift_unknownObjectRelease();
      v152 = v689;
    }

    else
    {
      v446 = v157;
      v159 = v156;
      v160 = v452;
      switch(v158)
      {
        case 1:
          LOBYTE(v695) = 1;
          sub_233149D58();
          v280 = v618;
          v281 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v281)
          {
            goto LABEL_142;
          }

          (*(v484 + 8))(v280, v486);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 2:
          LOBYTE(v695) = 2;
          sub_233149D04();
          v266 = v620;
          v267 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v267)
          {
            goto LABEL_142;
          }

          (*(v487 + 8))(v266, v488);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 3:
          LOBYTE(v695) = 3;
          sub_233149CB0();
          v276 = v621;
          v277 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v277)
          {
            goto LABEL_142;
          }

          (*(v489 + 8))(v276, v490);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 4:
          LOBYTE(v695) = 4;
          sub_233149C5C();
          v239 = v619;
          v240 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v240)
          {
            goto LABEL_142;
          }

          (*(v491 + 8))(v239, v492);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 5:
          LOBYTE(v695) = 5;
          sub_233149C08();
          v299 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v299)
          {
            goto LABEL_142;
          }

          (*(v494 + 8))(v154, v493);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 6:
          LOBYTE(v695) = 6;
          sub_233149BB4();
          v314 = v622;
          v315 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v315)
          {
            goto LABEL_142;
          }

          (*(v495 + 8))(v314, v496);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 7:
          LOBYTE(v695) = 7;
          sub_233149B60();
          v278 = v623;
          v279 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v279)
          {
            goto LABEL_142;
          }

          (*(v497 + 8))(v278, v498);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 8:
          LOBYTE(v695) = 8;
          sub_233149B0C();
          v323 = v624;
          v324 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v324)
          {
            goto LABEL_142;
          }

          (*(v499 + 8))(v323, v500);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 9:
          LOBYTE(v695) = 9;
          sub_233149AB8();
          v257 = v625;
          v258 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v258)
          {
            goto LABEL_142;
          }

          (*(v501 + 8))(v257, v502);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 10:
          LOBYTE(v695) = 10;
          sub_233149A64();
          v321 = v626;
          v322 = v690;
          sub_23328E38C();
          if (v322)
          {
            (*(v684 + 8))(v159, v155);
            goto LABEL_9;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v397 = v504;
          sub_23328E41C();
          v398 = v321;
          v399 = v684;
          (*(v503 + 8))(v398, v397);
          (*(v399 + 8))(v159, v155);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v179 = v451;
          sub_233144E3C(v160, v451, type metadata accessor for TTSVBError.Reason);
          v163 = v689;
          goto LABEL_150;
        case 11:
          LOBYTE(v695) = 11;
          sub_233149A10();
          v230 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v230)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v231 = v448;
          v232 = v508;
          v233 = v676;
          sub_23328E41C();
          v234 = v684;
          (*(v507 + 8))(v233, v232);
          (*(v234 + 8))(v159, v687);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v407 = v231;
          goto LABEL_149;
        case 12:
          LOBYTE(v695) = 12;
          sub_2331499BC();
          v255 = v627;
          v256 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v256)
          {
            goto LABEL_142;
          }

          (*(v505 + 8))(v255, v506);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 13:
          LOBYTE(v695) = 13;
          sub_233149968();
          v312 = v628;
          v313 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v313)
          {
            goto LABEL_142;
          }

          (*(v509 + 8))(v312, v510);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 14:
          LOBYTE(v695) = 14;
          sub_233149914();
          v218 = v629;
          v219 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v219)
          {
            goto LABEL_142;
          }

          (*(v511 + 8))(v218, v512);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 15:
          LOBYTE(v695) = 15;
          sub_2331498C0();
          v268 = v630;
          v269 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v269)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v449;
          v270 = v514;
          sub_23328E41C();
          (*(v513 + 8))(v268, v270);
          (*(v684 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 16:
          LOBYTE(v695) = 16;
          sub_23314986C();
          v210 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v210)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v450;
          v211 = v518;
          v212 = v677;
          sub_23328E41C();
          v213 = v684;
          (*(v517 + 8))(v212, v211);
          (*(v213 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 17:
          LOBYTE(v695) = 17;
          sub_233149818();
          v287 = v631;
          v288 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v288)
          {
            goto LABEL_142;
          }

          (*(v515 + 8))(v287, v516);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 18:
          LOBYTE(v695) = 18;
          sub_2331497C4();
          v316 = v632;
          v317 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v317)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v462;
          v318 = v520;
          sub_23328E41C();
          v319 = v316;
          v320 = v684;
          (*(v519 + 8))(v319, v318);
          (*(v320 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 19:
          LOBYTE(v695) = 19;
          sub_233149770();
          v344 = v634;
          v345 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v345)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v463;
          v346 = v524;
          sub_23328E41C();
          v347 = v344;
          v348 = v684;
          (*(v523 + 8))(v347, v346);
          (*(v348 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 20:
          LOBYTE(v695) = 20;
          sub_23314971C();
          v291 = v633;
          v292 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v292)
          {
            goto LABEL_142;
          }

          (*(v521 + 8))(v291, v522);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 21:
          LOBYTE(v695) = 21;
          sub_2331496C8();
          v310 = v635;
          v311 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v311)
          {
            goto LABEL_142;
          }

          (*(v525 + 8))(v310, v526);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 22:
          LOBYTE(v695) = 22;
          sub_233149674();
          v337 = v636;
          v338 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v338)
          {
            goto LABEL_142;
          }

          (*(v527 + 8))(v337, v528);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 23:
          LOBYTE(v695) = 23;
          sub_233149620();
          v361 = v637;
          v362 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v362)
          {
            goto LABEL_142;
          }

          (*(v529 + 8))(v361, v530);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 24:
          LOBYTE(v695) = 24;
          sub_2331495CC();
          v264 = v638;
          v265 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v265)
          {
            goto LABEL_142;
          }

          (*(v531 + 8))(v264, v532);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 25:
          LOBYTE(v695) = 25;
          sub_233149578();
          v259 = v639;
          v260 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v260)
          {
            goto LABEL_142;
          }

          v261 = v534;
          v262 = sub_23328E3CC();
          v263 = v684;
          v411 = v410;
          (*(v533 + 8))(v259, v261);
          (*(v263 + 8))(v159, v155);
          swift_unknownObjectRelease();
          v412 = v456;
          *v456 = v262;
          *(v412 + 8) = v411;
          swift_storeEnumTagMultiPayload();
          v179 = v451;
          sub_233144E3C(v412, v451, type metadata accessor for TTSVBError.Reason);
          v413 = v683;
          goto LABEL_151;
        case 26:
          LOBYTE(v695) = 26;
          sub_233149524();
          v375 = v640;
          v376 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v376)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v464;
          v377 = v536;
          sub_23328E41C();
          v378 = v375;
          v379 = v684;
          (*(v535 + 8))(v378, v377);
          (*(v379 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 27:
          LOBYTE(v695) = 27;
          sub_2331494D0();
          v201 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v201)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v465;
          v202 = v538;
          v203 = v678;
          sub_23328E41C();
          v204 = v684;
          (*(v537 + 8))(v203, v202);
          (*(v204 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 28:
          LOBYTE(v695) = 28;
          sub_23314947C();
          v363 = v641;
          v364 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v364)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v466;
          v365 = v540;
          sub_23328E41C();
          v366 = v363;
          v367 = v684;
          (*(v539 + 8))(v366, v365);
          (*(v367 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 29:
          LOBYTE(v695) = 29;
          sub_233149428();
          v368 = v642;
          v369 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v369)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v467;
          v370 = v542;
          sub_23328E41C();
          v371 = v368;
          v372 = v684;
          (*(v541 + 8))(v371, v370);
          (*(v372 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 30:
          LOBYTE(v695) = 30;
          sub_2331493D4();
          v325 = v644;
          v326 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v326)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          LOBYTE(v695) = 0;
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v327 = v545;
          v328 = v325;
          sub_23328E41C();
          v329 = v684;
          LOBYTE(v695) = 1;
          v426 = sub_23328E3CC();
          v690 = 0;
          v685 = v439;
          v686 = v426;
          v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990);
          v441 = v616;
          v442 = &v616[*(v440 + 48)];
          (*(v611 + 8))(v328, v327);
          (*(v329 + 8))(v159, v155);
          swift_unknownObjectRelease();
          v443 = v685;
          *v442 = v686;
          *(v442 + 1) = v443;
          swift_storeEnumTagMultiPayload();
          v179 = v451;
          sub_233144E3C(v441, v451, type metadata accessor for TTSVBError.Reason);
          v413 = v683;
          goto LABEL_151;
        case 31:
          LOBYTE(v695) = 31;
          sub_233149380();
          v282 = v643;
          v283 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v283)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v468;
          v284 = v544;
          sub_23328E41C();
          v285 = v282;
          v286 = v684;
          (*(v543 + 8))(v285, v284);
          (*(v286 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 32:
          LOBYTE(v695) = 32;
          sub_23314932C();
          v330 = v646;
          v331 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v331)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          LOBYTE(v695) = 0;
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v222 = v477;
          v332 = v548;
          v333 = v330;
          sub_23328E41C();
          v334 = v684;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0);
          LOBYTE(v695) = 1;
          sub_23328E41C();
          (*(v612 + 8))(v333, v332);
          (*(v334 + 8))(v159, v687);
          swift_unknownObjectRelease();
          goto LABEL_154;
        case 33:
          LOBYTE(v695) = 33;
          sub_2331492D8();
          v220 = v648;
          v221 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v221)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          LOBYTE(v695) = 0;
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v222 = v478;
          v223 = v551;
          v224 = v220;
          sub_23328E41C();
          v225 = v684;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0);
          LOBYTE(v695) = 1;
          sub_23328E41C();
          (*(v613 + 8))(v224, v223);
          (*(v225 + 8))(v159, v687);
          swift_unknownObjectRelease();
LABEL_154:
          swift_storeEnumTagMultiPayload();
          v436 = v222;
          goto LABEL_147;
        case 34:
          LOBYTE(v695) = 34;
          sub_233149284();
          v205 = v647;
          v206 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v206)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v469;
          v207 = v550;
          sub_23328E41C();
          v208 = v205;
          v209 = v684;
          (*(v549 + 8))(v208, v207);
          (*(v209 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 35:
          LOBYTE(v695) = 35;
          sub_233149230();
          v194 = v645;
          v195 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v195)
          {
            goto LABEL_142;
          }

          (*(v546 + 8))(v194, v547);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 36:
          LOBYTE(v695) = 36;
          sub_2331491DC();
          v196 = v649;
          v197 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v197)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v470;
          v198 = v553;
          sub_23328E41C();
          v199 = v196;
          v200 = v684;
          (*(v552 + 8))(v199, v198);
          (*(v200 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 37:
          LOBYTE(v695) = 37;
          sub_233149188();
          v182 = v651;
          v183 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v183)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v471;
          v185 = v557;
          sub_23328E41C();
          v186 = v182;
          v187 = v684;
          (*(v556 + 8))(v186, v185);
          (*(v187 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 38:
          LOBYTE(v695) = 38;
          sub_233149134();
          v373 = v650;
          v374 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v374)
          {
            goto LABEL_142;
          }

          (*(v554 + 8))(v373, v555);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 39:
          LOBYTE(v695) = 39;
          sub_2331490E0();
          v339 = v652;
          v340 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v340)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v472;
          v341 = v559;
          sub_23328E41C();
          v342 = v339;
          v343 = v684;
          (*(v558 + 8))(v342, v341);
          (*(v343 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 40:
          LOBYTE(v695) = 40;
          sub_23314908C();
          v241 = v654;
          v242 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v242)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v473;
          v243 = v563;
          sub_23328E41C();
          v244 = v241;
          v245 = v684;
          (*(v562 + 8))(v244, v243);
          (*(v245 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 41:
          LOBYTE(v695) = 41;
          sub_233149038();
          v289 = v653;
          v290 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v290)
          {
            goto LABEL_142;
          }

          (*(v560 + 8))(v289, v561);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 42:
          LOBYTE(v695) = 42;
          sub_233148FE4();
          v353 = v655;
          v354 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v354)
          {
            goto LABEL_142;
          }

          (*(v564 + 8))(v353, v565);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 43:
          LOBYTE(v695) = 43;
          sub_233148F90();
          v177 = v656;
          v178 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v178)
          {
            goto LABEL_142;
          }

          (*(v566 + 8))(v177, v567);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 44:
          LOBYTE(v695) = 44;
          sub_233148F3C();
          v214 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v214)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v474;
          v215 = v571;
          v216 = v679;
          sub_23328E41C();
          v217 = v684;
          (*(v570 + 8))(v216, v215);
          (*(v217 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 45:
          LOBYTE(v695) = 45;
          sub_233148EE8();
          v335 = v657;
          v336 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v336)
          {
            goto LABEL_142;
          }

          (*(v568 + 8))(v335, v569);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 46:
          LOBYTE(v695) = 46;
          sub_233148E94();
          v389 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v389)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v475;
          v390 = v575;
          v391 = v680;
          sub_23328E41C();
          v392 = v684;
          (*(v574 + 8))(v391, v390);
          (*(v392 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 47:
          LOBYTE(v695) = 47;
          sub_233148E40();
          v190 = v658;
          v191 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v191)
          {
            goto LABEL_142;
          }

          (*(v572 + 8))(v190, v573);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 48:
          LOBYTE(v695) = 48;
          sub_233148DEC();
          v226 = v659;
          v227 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v227)
          {
            goto LABEL_142;
          }

          (*(v576 + 8))(v226, v577);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 49:
          LOBYTE(v695) = 49;
          sub_233148D98();
          v235 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v235)
          {
            goto LABEL_142;
          }

          sub_23328CE8C();
          sub_233149EA8(&qword_27DDE21D0, MEMORY[0x28220C0A0], MEMORY[0x28220C0D8]);
          v184 = v476;
          v236 = v579;
          v237 = v681;
          sub_23328E41C();
          v238 = v684;
          (*(v578 + 8))(v237, v236);
          (*(v238 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 50:
          LOBYTE(v695) = 50;
          sub_233148D44();
          v171 = v660;
          v172 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v172)
          {
            goto LABEL_142;
          }

          v173 = v581;
          v174 = sub_23328E3CC();
          v175 = v171;
          v176 = v684;
          v403 = v174;
          v405 = v404;
          (*(v580 + 8))(v175, v173);
          (*(v176 + 8))(v159, v155);
          swift_unknownObjectRelease();
          v420 = v457;
          *v457 = v403;
          v420[1] = v405;
          goto LABEL_146;
        case 51:
          LOBYTE(v695) = 51;
          sub_233148CF0();
          v393 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v393)
          {
            goto LABEL_142;
          }

          sub_23328CE8C();
          sub_233149EA8(&qword_27DDE21D0, MEMORY[0x28220C0A0], MEMORY[0x28220C0D8]);
          v184 = v479;
          v400 = v583;
          v401 = v682;
          sub_23328E41C();
          v402 = v684;
          (*(v582 + 8))(v401, v400);
          (*(v402 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 52:
          LOBYTE(v695) = 52;
          sub_233148C9C();
          v384 = v662;
          v385 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v385)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8], MEMORY[0x28220BE68]);
          v184 = v480;
          v386 = v587;
          sub_23328E41C();
          v387 = v384;
          v388 = v684;
          (*(v586 + 8))(v387, v386);
          (*(v388 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 53:
          LOBYTE(v695) = 53;
          sub_233148C48();
          v188 = v661;
          v189 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v189)
          {
            goto LABEL_142;
          }

          (*(v584 + 8))(v188, v585);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 54:
          LOBYTE(v695) = 54;
          sub_233148BF4();
          v380 = v663;
          v381 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v381)
          {
            goto LABEL_142;
          }

          (*(v588 + 8))(v380, v589);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 55:
          LOBYTE(v695) = 55;
          sub_233148BA0();
          v382 = v664;
          v383 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v383)
          {
            goto LABEL_142;
          }

          (*(v590 + 8))(v382, v591);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 56:
          LOBYTE(v695) = 56;
          sub_233148B4C();
          v192 = v665;
          v193 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v193)
          {
            goto LABEL_142;
          }

          (*(v592 + 8))(v192, v593);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
          goto LABEL_136;
        case 57:
          LOBYTE(v695) = 57;
          sub_233148AF8();
          v349 = v667;
          v350 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v350)
          {
            goto LABEL_142;
          }

          LOBYTE(v695) = 0;
          v351 = v597;
          sub_23328E3EC();
          v352 = v684;
          v428 = v427;
          LOBYTE(v695) = 1;
          v444 = sub_23328E43C();
          (*(v596 + 8))(v349, v351);
          (*(v352 + 8))(v159, v155);
          swift_unknownObjectRelease();
          v445 = v453;
          *v453 = v428;
          *(v445 + 2) = v444;
          goto LABEL_155;
        case 58:
          LOBYTE(v695) = 58;
          sub_233148AA4();
          v228 = v666;
          v229 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v229)
          {
            goto LABEL_142;
          }

          (*(v594 + 8))(v228, v595);
          (*(v684 + 8))(v156, v155);
          swift_unknownObjectRelease();
          v179 = v451;
LABEL_136:
          swift_storeEnumTagMultiPayload();
          goto LABEL_150;
        case 59:
          LOBYTE(v695) = 59;
          sub_233148A50();
          v355 = v668;
          v356 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v356)
          {
            goto LABEL_142;
          }

          v357 = v599;
          v358 = sub_23328E3CC();
          v359 = v355;
          v360 = v684;
          v429 = v358;
          v431 = v430;
          (*(v598 + 8))(v359, v357);
          (*(v360 + 8))(v159, v155);
          swift_unknownObjectRelease();
          v420 = v458;
          *v458 = v429;
          v420[1] = v431;
          goto LABEL_146;
        case 60:
          LOBYTE(v695) = 60;
          sub_2331489FC();
          v246 = v669;
          v247 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v247)
          {
            goto LABEL_142;
          }

          sub_23328CE8C();
          sub_233149EA8(&qword_27DDE21D0, MEMORY[0x28220C0A0], MEMORY[0x28220C0D8]);
          v184 = v481;
          v248 = v601;
          sub_23328E41C();
          v249 = v246;
          v250 = v684;
          (*(v600 + 8))(v249, v248);
          (*(v250 + 8))(v159, v155);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 61:
          LOBYTE(v695) = 61;
          sub_2331489A8();
          v293 = v670;
          v294 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v294)
          {
            goto LABEL_142;
          }

          v295 = v603;
          v296 = sub_23328E3CC();
          v297 = v293;
          v298 = v684;
          v421 = v296;
          v423 = v422;
          (*(v602 + 8))(v297, v295);
          (*(v298 + 8))(v159, v155);
          swift_unknownObjectRelease();
          v420 = v459;
          *v459 = v421;
          v420[1] = v423;
          goto LABEL_146;
        case 62:
          LOBYTE(v695) = 62;
          sub_233148954();
          v305 = v671;
          v306 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v306)
          {
            goto LABEL_142;
          }

          sub_23328CE8C();
          sub_233149EA8(&qword_27DDE21D0, MEMORY[0x28220C0A0], MEMORY[0x28220C0D8]);
          v184 = v482;
          v307 = v605;
          sub_23328E41C();
          v308 = v305;
          v309 = v684;
          (*(v604 + 8))(v308, v307);
          (*(v309 + 8))(v159, v155);
          swift_unknownObjectRelease();
LABEL_148:
          swift_storeEnumTagMultiPayload();
          v407 = v184;
          goto LABEL_149;
        case 63:
          LOBYTE(v695) = 63;
          sub_233148900();
          v271 = v672;
          v272 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v272)
          {
            goto LABEL_142;
          }

          LOBYTE(v695) = 0;
          v273 = v606;
          v274 = sub_23328E42C();
          v275 = v684;
          v414 = v274;
          LOBYTE(v695) = 1;
          v415 = sub_23328E42C();
          v416 = v271;
          v437 = v415;
          (*(v614 + 8))(v416, v273);
          (*(v275 + 8))(v159, v155);
          swift_unknownObjectRelease();
          v438 = v454;
          *v454 = v414;
          v438[1] = v437;
          swift_storeEnumTagMultiPayload();
          v407 = v438;
          goto LABEL_149;
        case 64:
          LOBYTE(v695) = 64;
          sub_2331488AC();
          v251 = v675;
          v252 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v252)
          {
            goto LABEL_142;
          }

          LOBYTE(v693) = 0;
          sub_233149E54();
          v253 = v609;
          sub_23328E41C();
          v254 = v684;
          v690 = v695;
          v408 = v251;
          v409 = v696;
          v692 = 1;
          sub_23328E41C();
          (*(v615 + 8))(v408, v253);
          (*(v254 + 8))(v159, v155);
          swift_unknownObjectRelease();
          v433 = v693;
          v434 = v694;
          v435 = v455;
          *v455 = v690;
          v435[1] = v409;
          v435[2] = v433;
          v435[3] = v434;
          swift_storeEnumTagMultiPayload();
          v436 = v435;
          goto LABEL_147;
        case 65:
          v300 = v153;
          LOBYTE(v695) = 65;
          sub_233148858();
          v301 = v673;
          v302 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v302)
          {
            goto LABEL_142;
          }

          sub_233149E54();
          v303 = v607;
          sub_23328E41C();
          v304 = v684;
          (*(v300 + 8))(v301, v303);
          (*(v304 + 8))(v159, v155);
          swift_unknownObjectRelease();
          v424 = v696;
          v425 = v460;
          *v460 = v695;
          v425[1] = v424;
          swift_storeEnumTagMultiPayload();
          v407 = v425;
          goto LABEL_149;
        case 66:
          LOBYTE(v695) = 66;
          sub_2331487B0();
          v180 = v674;
          v181 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v181)
          {
            (*(v684 + 8))(v159, v155);
            swift_unknownObjectRelease();
            v152 = v163;
            return __swift_destroy_boxed_opaque_existential_0(v152);
          }

          sub_233149E54();
          v394 = v608;
          sub_23328E41C();
          v395 = v180;
          v396 = v684;
          (*(v610 + 8))(v395, v394);
          (*(v396 + 8))(v159, v155);
          swift_unknownObjectRelease();
          v406 = v696;
          v445 = v461;
          *v461 = v695;
          v445[1] = v406;
LABEL_155:
          swift_storeEnumTagMultiPayload();
          v407 = v445;
LABEL_149:
          v179 = v451;
          sub_233144E3C(v407, v451, type metadata accessor for TTSVBError.Reason);
LABEL_150:
          v413 = v683;
          goto LABEL_151;
        default:
          LOBYTE(v695) = 0;
          sub_233149DAC();
          v161 = v617;
          v162 = v690;
          sub_23328E38C();
          v163 = v689;
          if (v162)
          {
LABEL_142:
            (*(v684 + 8))(v159, v155);
            swift_unknownObjectRelease();
          }

          else
          {
            v164 = v485;
            v165 = sub_23328E3CC();
            v166 = v161;
            v167 = v684;
            v417 = v165;
            v419 = v418;
            (*(v483 + 8))(v166, v164);
            (*(v167 + 8))(v159, v155);
            swift_unknownObjectRelease();
            v420 = v447;
            *v447 = v417;
            v420[1] = v419;
LABEL_146:
            swift_storeEnumTagMultiPayload();
            v436 = v420;
LABEL_147:
            v179 = v451;
            sub_233144E3C(v436, v451, type metadata accessor for TTSVBError.Reason);
            v413 = v683;
LABEL_151:
            sub_233144E3C(v179, v413, type metadata accessor for TTSVBError.Reason);
          }

          v152 = v163;
          break;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v152);
}

uint64_t sub_233143B20()
{
  sub_23328E61C();
  TTSVBError.Reason.hash(into:)(v1);
  return sub_23328E66C();
}

uint64_t sub_233143B64(uint64_t a1)
{
  sub_23328E61C();
  TTSVBError.Reason.hash(into:)(v2);
  return sub_23328E66C();
}

uint64_t sub_233143BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_23328E2DC();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
      sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
      swift_dynamicCast();
      sub_23328E2BC();
      sub_23328E2EC();
      sub_23328E2FC();
      sub_23328E2CC();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_233143CEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23328E19C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_23328E19C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2331442D8(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_233144AAC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_233143DDC(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_23314412C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A90, &unk_233290970);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_233143EE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23314400C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_233144054(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_23314406C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331440F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_23314412C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2298, &qword_233297608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A90, &unk_233290970);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_233144260(uint64_t a1, uint64_t a2)
{
  sub_23328E61C();
  sub_23328DA3C();
  v4 = sub_23328E66C();

  return sub_2331443DC(a1, a2, v4);
}

uint64_t sub_2331442D8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_23328E19C();
LABEL_9:
  result = sub_23328E27C();
  *v2 = result;
  return result;
}

uint64_t sub_233144378(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23328E19C();
  }

  return sub_23328E27C();
}

unint64_t sub_2331443DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23328E54C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_233144494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2288, &unk_233299A90);
  v33 = v4;
  result = sub_23328E34C();
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
        sub_233145134(v24, v34);
      }

      else
      {
        sub_23311B0C0(v24, v34);
      }

      sub_23328E61C();
      sub_23328DA3C();
      result = sub_23328E66C();
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
      result = sub_233145134(v34, (*(v7 + 56) + 32 * v15));
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

_OWORD *sub_23314474C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_233144260(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_233144908();
      v11 = v19;
      goto LABEL_8;
    }

    sub_233144494(v16, a4 & 1);
    v11 = sub_233144260(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_23328E5AC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_233145134(a1, v22);
  }

  else
  {
    sub_23314489C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_23314489C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_233145134(a4, (a5[7] + 32 * a1));
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

void *sub_233144908()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2288, &unk_233299A90);
  v2 = *v0;
  v3 = sub_23328E33C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23311B0C0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_233145134(v25, (*(v4 + 56) + v22));
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

  return result;
}

uint64_t sub_233144AAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23328E19C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23328E19C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23315246C(&qword_27DDE22A8, &qword_27DDE22A0, &unk_233297610, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE22A0, &unk_233297610);
            v9 = sub_233144C60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_233144C60(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23839BFC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_233144CE0;
  }

  __break(1u);
  return result;
}

unint64_t sub_233144CE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_23328E37C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_233144D34()
{
  result = qword_27DDE1AC0;
  if (!qword_27DDE1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1AC0);
  }

  return result;
}

unint64_t sub_233144D88()
{
  result = qword_27DDE1AC8;
  if (!qword_27DDE1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1AC8);
  }

  return result;
}

uint64_t sub_233144DDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_233144E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_233144EA4()
{
  result = qword_27DDE1AD8;
  if (!qword_27DDE1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1AD8);
  }

  return result;
}

uint64_t sub_233144EEC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_233144F34()
{
  result = qword_27DDE1AF8;
  if (!qword_27DDE1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1AF8);
  }

  return result;
}

unint64_t sub_233144F88()
{
  result = qword_27DDE1B08;
  if (!qword_27DDE1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1B08);
  }

  return result;
}

unint64_t sub_233144FD0()
{
  result = qword_27DDE1B20;
  if (!qword_27DDE1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1B20);
  }

  return result;
}

unint64_t sub_233145024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2288, &unk_233299A90);
    v3 = sub_23328E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2331523FC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_233144260(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_233145134(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_233145134(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t _s31TextToSpeechVoiceBankingSupport10TTSVBErrorV7ProblemO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      switch(v3)
      {
        case 1:
          if (v7 != 3 || v5 != 1 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v14 = 1;
          sub_2331220AC(1, 0, 3u);
          return v14 & 1;
        case 2:
          if (v7 != 3 || v5 != 2 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 2;
          goto LABEL_274;
        case 3:
          if (v7 != 3 || v5 != 3 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 3;
          goto LABEL_274;
        case 4:
          if (v7 != 3 || v5 != 4 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 4;
          goto LABEL_274;
        case 5:
          if (v7 != 3 || v5 != 5 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 5;
          goto LABEL_274;
        case 6:
          if (v7 != 3 || v5 != 6 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 6;
          goto LABEL_274;
        case 7:
          if (v7 != 3 || v5 != 7 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 7;
          goto LABEL_274;
        case 8:
          if (v7 != 3 || v5 != 8 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 8;
          goto LABEL_274;
        case 9:
          if (v7 != 3 || v5 != 9 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 9;
          goto LABEL_274;
        case 10:
          if (v7 != 3 || v5 != 10 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 10;
          goto LABEL_274;
        case 11:
          if (v7 != 3 || v5 != 11 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 11;
          goto LABEL_274;
        case 12:
          if (v7 != 3 || v5 != 12 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 12;
          goto LABEL_274;
        case 13:
          if (v7 != 3 || v5 != 13 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 13;
          goto LABEL_274;
        case 14:
          if (v7 != 3 || v5 != 14 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 14;
          goto LABEL_274;
        case 15:
          if (v7 != 3 || v5 != 15 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 15;
          goto LABEL_274;
        case 16:
          if (v7 != 3 || v5 != 16 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 16;
          goto LABEL_274;
        case 17:
          if (v7 != 3 || v5 != 17 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 17;
          goto LABEL_274;
        case 18:
          if (v7 != 3 || v5 != 18 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 18;
          goto LABEL_274;
        case 19:
          if (v7 != 3 || v5 != 19 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 19;
          goto LABEL_274;
        case 20:
          if (v7 != 3 || v5 != 20 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 20;
          goto LABEL_274;
        case 21:
          if (v7 != 3 || v5 != 21 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 21;
          goto LABEL_274;
        case 22:
          if (v7 != 3 || v5 != 22 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 22;
          goto LABEL_274;
        case 23:
          if (v7 != 3 || v5 != 23 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 23;
          goto LABEL_274;
        case 24:
          if (v7 != 3 || v5 != 24 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 24;
          goto LABEL_274;
        case 25:
          if (v7 != 3 || v5 != 25 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 25;
          goto LABEL_274;
        case 26:
          if (v7 != 3 || v5 != 26 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 26;
          goto LABEL_274;
        case 27:
          if (v7 != 3 || v5 != 27 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 27;
          goto LABEL_274;
        default:
          if (v7 != 3 || (v6 | v5) != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v18 = 0;
LABEL_274:
          v19 = 0;
          v20 = 3;
          break;
      }

LABEL_275:
      sub_2331220AC(v18, v19, v20);
      v14 = 1;
      return v14 & 1;
    }

    if (v7 != 2)
    {
      goto LABEL_20;
    }

    sub_2331220AC(*a1, v2, 2u);
    sub_2331220AC(v5, v6, 2u);
    v14 = v5 ^ v3 ^ 1;
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v8 = *a1;
        if (v3 != v5 || v2 != v6)
        {
          v10 = sub_23328E54C();
          sub_233144054(v5, v6, 0);
          sub_233144054(v3, v2, 0);
          sub_2331220AC(v3, v2, 0);
          v11 = v5;
          v12 = v6;
          v13 = 0;
LABEL_18:
          sub_2331220AC(v11, v12, v13);
          return v10 & 1;
        }

        sub_233144054(v8, v2, 0);
        sub_233144054(v3, v2, 0);
        sub_2331220AC(v3, v2, 0);
        v18 = v3;
        v19 = v2;
        v20 = 0;
        goto LABEL_275;
      }

      goto LABEL_19;
    }

    if (v7 != 1)
    {
LABEL_19:

LABEL_20:
      sub_233144054(v5, v6, v7);
      sub_2331220AC(v3, v2, v4);
      sub_2331220AC(v5, v6, v7);
      v14 = 0;
      return v14 & 1;
    }

    if (v3 != v5 || v2 != v6)
    {
      v10 = sub_23328E54C();
      sub_233144054(v5, v6, 1u);
      sub_233144054(v3, v2, 1u);
      sub_2331220AC(v3, v2, 1u);
      v11 = v5;
      v12 = v6;
      v13 = 1;
      goto LABEL_18;
    }

    v14 = 1;
    sub_233144054(*a1, v2, 1u);
    sub_233144054(v3, v2, 1u);
    sub_2331220AC(v3, v2, 1u);
    sub_2331220AC(v3, v2, 1u);
  }

  return v14 & 1;
}

uint64_t _s31TextToSpeechVoiceBankingSupport10TTSVBErrorV6ReasonO2eeoiySbAE_AEtFZ_0(uint64_t *a1, char *a2)
{
  v288 = a1;
  v289 = a2;
  v287 = type metadata accessor for TTSVBError.Reason(0);
  MEMORY[0x28223BE20](v287);
  v282 = (&v258 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v281 = (&v258 - v4);
  MEMORY[0x28223BE20](v5);
  v280 = (&v258 - v6);
  MEMORY[0x28223BE20](v7);
  v286 = (&v258 - v8);
  MEMORY[0x28223BE20](v9);
  v284 = &v258 - v10;
  MEMORY[0x28223BE20](v11);
  v275 = (&v258 - v12);
  MEMORY[0x28223BE20](v13);
  v283 = &v258 - v14;
  MEMORY[0x28223BE20](v15);
  v270 = (&v258 - v16);
  MEMORY[0x28223BE20](v17);
  v285 = (&v258 - v18);
  MEMORY[0x28223BE20](v19);
  v279 = &v258 - v20;
  MEMORY[0x28223BE20](v21);
  v278 = &v258 - v22;
  MEMORY[0x28223BE20](v23);
  v265 = (&v258 - v24);
  MEMORY[0x28223BE20](v25);
  v277 = &v258 - v26;
  MEMORY[0x28223BE20](v27);
  v276 = &v258 - v28;
  MEMORY[0x28223BE20](v29);
  v273 = &v258 - v30;
  MEMORY[0x28223BE20](v31);
  v271 = &v258 - v32;
  MEMORY[0x28223BE20](v33);
  v269 = &v258 - v34;
  MEMORY[0x28223BE20](v35);
  v268 = &v258 - v36;
  MEMORY[0x28223BE20](v37);
  v267 = &v258 - v38;
  MEMORY[0x28223BE20](v39);
  v266 = &v258 - v40;
  MEMORY[0x28223BE20](v41);
  v274 = &v258 - v42;
  MEMORY[0x28223BE20](v43);
  v272 = &v258 - v44;
  MEMORY[0x28223BE20](v45);
  v263 = &v258 - v46;
  MEMORY[0x28223BE20](v47);
  v264 = &v258 - v48;
  MEMORY[0x28223BE20](v49);
  v262 = &v258 - v50;
  MEMORY[0x28223BE20](v51);
  v261 = &v258 - v52;
  MEMORY[0x28223BE20](v53);
  v260 = &v258 - v54;
  MEMORY[0x28223BE20](v55);
  v259 = &v258 - v56;
  MEMORY[0x28223BE20](v57);
  v59 = (&v258 - v58);
  MEMORY[0x28223BE20](v60);
  v258 = &v258 - v61;
  MEMORY[0x28223BE20](v62);
  v64 = &v258 - v63;
  MEMORY[0x28223BE20](v65);
  v67 = &v258 - v66;
  MEMORY[0x28223BE20](v68);
  v70 = &v258 - v69;
  MEMORY[0x28223BE20](v71);
  v73 = &v258 - v72;
  MEMORY[0x28223BE20](v74);
  v76 = &v258 - v75;
  MEMORY[0x28223BE20](v77);
  v79 = (&v258 - v78);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2278, &unk_2332975F0);
  MEMORY[0x28223BE20](v80 - 8);
  v82 = &v258 - v81;
  v84 = &v258 + *(v83 + 56) - v81;
  sub_23314406C(v288, &v258 - v81, type metadata accessor for TTSVBError.Reason);
  v290 = v84;
  sub_23314406C(v289, v84, type metadata accessor for TTSVBError.Reason);
  v289 = v82;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v189 = v289;
      sub_23314406C(v289, v76, type metadata accessor for TTSVBError.Reason);
      v190 = v290;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v192 = sub_23328CC9C();
      v193 = v192;
      v194 = *(v192 - 8);
      if (EnumCaseMultiPayload != 1)
      {
        (*(*(v192 - 8) + 8))(v76, v192);
        v85 = v189;
        goto LABEL_128;
      }

      v195 = MEMORY[0x28223BE20](v192);
      v197 = &v258 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v194 + 32))(v197, v190, v193, v195);
      v97 = sub_23328CC2C();
      v198 = *(v194 + 8);
      v198(v197, v193);
      v198(v76, v193);
      sub_233144DDC(v189, type metadata accessor for TTSVBError.Reason);
      return v97 & 1;
    case 2u:
      v85 = v289;
      sub_23314406C(v289, v73, type metadata accessor for TTSVBError.Reason);
      v167 = v290;
      v168 = swift_getEnumCaseMultiPayload();
      v169 = sub_23328CC9C();
      v170 = v169;
      v171 = *(v169 - 8);
      if (v168 == 2)
      {
        v172 = MEMORY[0x28223BE20](v169);
        v174 = &v258 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v171 + 32))(v174, v167, v170, v172);
        v97 = sub_23328CC2C();
        v175 = *(v171 + 8);
        v175(v174, v170);
        v175(v73, v170);
        goto LABEL_115;
      }

      (*(*(v169 - 8) + 8))(v73, v169);
      goto LABEL_128;
    case 3u:
      v85 = v289;
      sub_23314406C(v289, v70, type metadata accessor for TTSVBError.Reason);
      v178 = v290;
      v179 = swift_getEnumCaseMultiPayload();
      v180 = sub_23328CC9C();
      v181 = v180;
      v182 = *(v180 - 8);
      if (v179 == 3)
      {
        v183 = MEMORY[0x28223BE20](v180);
        v185 = &v258 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v182 + 32))(v185, v178, v181, v183);
        v186 = sub_23328CC2C();
        v187 = *(v182 + 8);
        v187(v185, v181);
        v188 = v70;
        v97 = v186;
        v187(v188, v181);
        goto LABEL_115;
      }

      (*(*(v180 - 8) + 8))(v70, v180);
      goto LABEL_128;
    case 4u:
      v85 = v289;
      sub_23314406C(v289, v67, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v133 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v133 != 4)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 5u:
      v85 = v289;
      sub_23314406C(v289, v64, type metadata accessor for TTSVBError.Reason);
      v202 = v290;
      v203 = swift_getEnumCaseMultiPayload();
      v204 = sub_23328CC9C();
      v205 = v204;
      v206 = *(v204 - 8);
      if (v203 == 5)
      {
        v207 = MEMORY[0x28223BE20](v204);
        v209 = &v258 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v206 + 32))(v209, v202, v205, v207);
        v97 = sub_23328CC2C();
        v210 = *(v206 + 8);
        v210(v209, v205);
        v210(v64, v205);
        goto LABEL_115;
      }

      (*(*(v204 - 8) + 8))(v64, v204);
      goto LABEL_128;
    case 6u:
      v85 = v289;
      v213 = v258;
      sub_23314406C(v289, v258, type metadata accessor for TTSVBError.Reason);
      v214 = v290;
      v215 = swift_getEnumCaseMultiPayload();
      v216 = sub_23328CC9C();
      v217 = v216;
      v218 = *(v216 - 8);
      v219 = v218;
      if (v215 != 6)
      {
        goto LABEL_138;
      }

      v220 = MEMORY[0x28223BE20](v216);
      v222 = &v258 - ((v221 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v219 + 32))(v222, v214, v217, v220);
      v97 = sub_23328CC2C();
      v223 = *(v219 + 8);
      v223(v222, v217);
      v223(v213, v217);
      goto LABEL_115;
    case 7u:
      v85 = v289;
      sub_23314406C(v289, v59, type metadata accessor for TTSVBError.Reason);
      v165 = *v59;
      v164 = v59[1];
      v166 = v290;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_127;
      }

      goto LABEL_104;
    case 8u:
      v85 = v289;
      v213 = v259;
      sub_23314406C(v289, v259, type metadata accessor for TTSVBError.Reason);
      v226 = v290;
      v227 = swift_getEnumCaseMultiPayload();
      v216 = sub_23328CC9C();
      v228 = v216;
      v218 = *(v216 - 8);
      v229 = v218;
      if (v227 == 8)
      {
        v230 = MEMORY[0x28223BE20](v216);
        v232 = &v258 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v229 + 32))(v232, v226, v228, v230);
        v97 = sub_23328CC2C();
        v233 = *(v229 + 8);
        v233(v232, v228);
        v233(v213, v228);
        goto LABEL_115;
      }

LABEL_138:
      (*(v218 + 8))(v213, v216);
      goto LABEL_128;
    case 9u:
      v85 = v289;
      v150 = v260;
      sub_23314406C(v289, v260, type metadata accessor for TTSVBError.Reason);
      v151 = v290;
      v152 = swift_getEnumCaseMultiPayload();
      v153 = sub_23328CC9C();
      v154 = v153;
      v155 = *(v153 - 8);
      if (v152 == 9)
      {
        v156 = MEMORY[0x28223BE20](v153);
        v158 = &v258 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v155 + 32))(v158, v151, v154, v156);
        v97 = sub_23328CC2C();
        v159 = *(v155 + 8);
        v159(v158, v154);
        v159(v150, v154);
        goto LABEL_115;
      }

      (*(*(v153 - 8) + 8))(v150, v153);
      goto LABEL_128;
    case 0xAu:
      v85 = v289;
      v67 = v261;
      sub_23314406C(v289, v261, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v225 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v225 != 10)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0xBu:
      v85 = v289;
      v67 = v262;
      sub_23314406C(v289, v262, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v132 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v132 != 11)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0xCu:
      v85 = v289;
      v134 = v264;
      sub_23314406C(v289, v264, type metadata accessor for TTSVBError.Reason);
      v135 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990) + 48);
      v136 = *(v134 + v135);
      v137 = *(v134 + v135 + 8);
      v138 = v290;
      if (swift_getEnumCaseMultiPayload() != 12)
      {

        v255 = sub_23328CC9C();
        (*(*(v255 - 8) + 8))(v134, v255);
        goto LABEL_128;
      }

      v140 = *&v138[v135];
      v139 = *&v138[v135 + 8];
      v141 = sub_23328CC9C();
      v142 = *(v141 - 8);
      v143 = MEMORY[0x28223BE20](v141);
      v145 = &v258 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v142 + 32))(v145, v143);
      v146 = sub_23328CC2C();
      v147 = v134;
      v148 = v146;
      v149 = *(v142 + 8);
      v149(v147, v141);
      if ((v148 & 1) == 0)
      {
        v149(v145, v141);

        goto LABEL_141;
      }

      if (v136 == v140 && v137 == v139)
      {

        v149(v145, v141);
      }

      else
      {
        v257 = sub_23328E54C();

        v149(v145, v141);
        if ((v257 & 1) == 0)
        {
          goto LABEL_141;
        }
      }

      v253 = v289;
      goto LABEL_125;
    case 0xDu:
      v85 = v289;
      v67 = v263;
      sub_23314406C(v289, v263, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v212 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v212 != 13)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0xEu:
      v85 = v289;
      v107 = v272;
      sub_23314406C(v289, v272, type metadata accessor for TTSVBError.Reason);
      v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_26;
      }

      goto LABEL_55;
    case 0xFu:
      v85 = v289;
      v107 = v274;
      sub_23314406C(v289, v274, type metadata accessor for TTSVBError.Reason);
      v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      if (swift_getEnumCaseMultiPayload() != 15)
      {
LABEL_55:
        v176 = sub_23328CC9C();
        v177 = *(*(v176 - 8) + 8);
        v177(v107 + v108, v176);
        v177(v107, v176);
        goto LABEL_128;
      }

LABEL_26:
      v109 = sub_23328CC9C();
      v288 = &v258;
      v110 = v107;
      v111 = *(v109 - 8);
      v112 = v111[8];
      v113 = MEMORY[0x28223BE20](v109);
      v114 = &v258 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
      v115 = v111[4];
      v116 = v115(v114, v113);
      v287 = &v258;
      v117 = MEMORY[0x28223BE20](v116);
      v118 = (v115)(v114, v110 + v108, v109, v117);
      v286 = &v258;
      v119 = MEMORY[0x28223BE20](v118);
      (v115)(v114, &v290[v108], v109, v119);
      v120 = sub_23328CC2C();
      v121 = v111[1];
      v121(v110, v109);
      if (v120)
      {
        v97 = sub_23328CC2C();
        v121(v114, v109);
        v121(v114, v109);
        v121(v114, v109);
        sub_233144DDC(v289, type metadata accessor for TTSVBError.Reason);
        return v97 & 1;
      }

      v121(v114, v109);
      v121(v114, v109);
      v121(v114, v109);
LABEL_141:
      sub_233144DDC(v289, type metadata accessor for TTSVBError.Reason);
      goto LABEL_129;
    case 0x10u:
      v85 = v289;
      v67 = v266;
      sub_23314406C(v289, v266, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v103 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v103 != 16)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x11u:
      v85 = v289;
      v67 = v267;
      sub_23314406C(v289, v267, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v200 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v200 != 17)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x12u:
      v85 = v289;
      v67 = v268;
      sub_23314406C(v289, v268, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v224 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v224 != 18)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x13u:
      v85 = v289;
      v67 = v269;
      sub_23314406C(v289, v269, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v238 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v238 != 19)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x14u:
      v85 = v289;
      v67 = v271;
      sub_23314406C(v289, v271, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v201 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v201 != 20)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x15u:
      v85 = v289;
      v67 = v273;
      sub_23314406C(v289, v273, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v211 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v211 != 21)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x16u:
      v85 = v289;
      v67 = v276;
      sub_23314406C(v289, v276, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v237 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v237 != 22)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x17u:
      v85 = v289;
      v67 = v277;
      sub_23314406C(v289, v277, type metadata accessor for TTSVBError.Reason);
      v160 = v290;
      v239 = swift_getEnumCaseMultiPayload();
      v162 = sub_23328CE8C();
      v105 = v162;
      v106 = *(v162 - 8);
      if (v239 != 23)
      {
        goto LABEL_116;
      }

      goto LABEL_110;
    case 0x18u:
      v85 = v289;
      v163 = v265;
      sub_23314406C(v289, v265, type metadata accessor for TTSVBError.Reason);
      v165 = *v163;
      v164 = v163[1];
      v166 = v290;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_127;
      }

      goto LABEL_104;
    case 0x19u:
      v85 = v289;
      v67 = v278;
      sub_23314406C(v289, v278, type metadata accessor for TTSVBError.Reason);
      v160 = v290;
      v161 = swift_getEnumCaseMultiPayload();
      v162 = sub_23328CE8C();
      v105 = v162;
      v106 = *(v162 - 8);
      if (v161 != 25)
      {
        goto LABEL_116;
      }

      goto LABEL_110;
    case 0x1Au:
      v85 = v289;
      v67 = v279;
      sub_23314406C(v289, v279, type metadata accessor for TTSVBError.Reason);
      v102 = v290;
      v249 = swift_getEnumCaseMultiPayload();
      v104 = sub_23328CC9C();
      v105 = v104;
      v106 = *(v104 - 8);
      if (v249 != 26)
      {
        goto LABEL_116;
      }

LABEL_113:
      v250 = MEMORY[0x28223BE20](v104);
      v247 = &v258 - ((v251 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v106 + 32))(v247, v102, v105, v250);
      v248 = sub_23328CC2C();
      goto LABEL_114;
    case 0x1Bu:
      v85 = v289;
      v95 = v285;
      sub_23314406C(v289, v285, type metadata accessor for TTSVBError.Reason);
      v96 = *(v95 + 2);
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_128;
      }

      if (*v285 != *v290)
      {
        goto LABEL_143;
      }

      v97 = v96 == *(v290 + 2);
      goto LABEL_115;
    case 0x1Cu:
      v85 = v289;
      v240 = v270;
      sub_23314406C(v289, v270, type metadata accessor for TTSVBError.Reason);
      v165 = *v240;
      v164 = v240[1];
      v166 = v290;
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        goto LABEL_104;
      }

      goto LABEL_127;
    case 0x1Du:
      v85 = v289;
      v67 = v283;
      sub_23314406C(v289, v283, type metadata accessor for TTSVBError.Reason);
      v160 = v290;
      v244 = swift_getEnumCaseMultiPayload();
      v162 = sub_23328CE8C();
      v105 = v162;
      v106 = *(v162 - 8);
      if (v244 == 29)
      {
        goto LABEL_110;
      }

      goto LABEL_116;
    case 0x1Eu:
      v85 = v289;
      v234 = v275;
      sub_23314406C(v289, v275, type metadata accessor for TTSVBError.Reason);
      v165 = *v234;
      v164 = v234[1];
      v166 = v290;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_127;
      }

LABEL_104:
      v241 = *v166;
      v242 = v166[1];
      if (v165 == v241 && v164 == v242)
      {
        goto LABEL_106;
      }

      v243 = sub_23328E54C();

      if ((v243 & 1) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_124;
    case 0x1Fu:
      v85 = v289;
      v67 = v284;
      sub_23314406C(v289, v284, type metadata accessor for TTSVBError.Reason);
      v160 = v290;
      v199 = swift_getEnumCaseMultiPayload();
      v162 = sub_23328CE8C();
      v105 = v162;
      v106 = *(v162 - 8);
      if (v199 != 31)
      {
LABEL_116:
        (*(v106 + 8))(v67, v105);
        goto LABEL_128;
      }

LABEL_110:
      v245 = MEMORY[0x28223BE20](v162);
      v247 = &v258 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v106 + 32))(v247, v160, v105, v245);
      v248 = sub_23328CE5C();
LABEL_114:
      v97 = v248;
      v252 = *(v106 + 8);
      v252(v247, v105);
      v252(v67, v105);
      goto LABEL_115;
    case 0x20u:
      v85 = v289;
      v235 = v286;
      sub_23314406C(v289, v286, type metadata accessor for TTSVBError.Reason);
      v236 = *(v235 + 8);
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_128;
      }

      if (*v286 != *v290)
      {
        goto LABEL_143;
      }

      v97 = v236 == *(v290 + 1);
      goto LABEL_115;
    case 0x21u:
      v85 = v289;
      v122 = v280;
      sub_23314406C(v289, v280, type metadata accessor for TTSVBError.Reason);
      v124 = v122[1];
      v123 = v122[2];
      v125 = v122[3];
      v126 = v290;
      if (swift_getEnumCaseMultiPayload() != 33)
      {

LABEL_127:

LABEL_128:
        sub_233121E04(v85, &qword_27DDE2278, &unk_2332975F0);
        goto LABEL_129;
      }

      v127 = *v122;
      v128 = *v126;
      v129 = v126[1];
      v130 = v126[2];
      v100 = v126[3];
      v131 = sub_233128650(v127, v124, v128, v129);

      if ((v131 & 1) == 0)
      {

        goto LABEL_143;
      }

      v98 = v123;
      v101 = v125;
      v99 = v130;
LABEL_21:
      v97 = sub_233128650(v98, v101, v99, v100);

LABEL_115:
      sub_233144DDC(v85, type metadata accessor for TTSVBError.Reason);
      return v97 & 1;
    case 0x22u:
      v85 = v289;
      v92 = v281;
      sub_23314406C(v289, v281, type metadata accessor for TTSVBError.Reason);
      v93 = v92[1];
      v94 = v290;
      if (swift_getEnumCaseMultiPayload() == 34)
      {
        goto LABEL_20;
      }

      goto LABEL_127;
    case 0x23u:
      v85 = v289;
      v92 = v282;
      sub_23314406C(v289, v282, type metadata accessor for TTSVBError.Reason);
      v93 = v92[1];
      v94 = v290;
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_127;
      }

LABEL_20:
      v98 = *v92;
      v99 = *v94;
      v100 = v94[1];
      v101 = v93;
      goto LABEL_21;
    case 0x24u:
      v91 = swift_getEnumCaseMultiPayload() == 36;
      goto LABEL_122;
    case 0x25u:
      v91 = swift_getEnumCaseMultiPayload() == 37;
      goto LABEL_122;
    case 0x26u:
      v91 = swift_getEnumCaseMultiPayload() == 38;
      goto LABEL_122;
    case 0x27u:
      v91 = swift_getEnumCaseMultiPayload() == 39;
      goto LABEL_122;
    case 0x28u:
      v91 = swift_getEnumCaseMultiPayload() == 40;
      goto LABEL_122;
    case 0x29u:
      v91 = swift_getEnumCaseMultiPayload() == 41;
      goto LABEL_122;
    case 0x2Au:
      v91 = swift_getEnumCaseMultiPayload() == 42;
      goto LABEL_122;
    case 0x2Bu:
      v91 = swift_getEnumCaseMultiPayload() == 43;
      goto LABEL_122;
    case 0x2Cu:
      v91 = swift_getEnumCaseMultiPayload() == 44;
      goto LABEL_122;
    case 0x2Du:
      v91 = swift_getEnumCaseMultiPayload() == 45;
      goto LABEL_122;
    case 0x2Eu:
      v91 = swift_getEnumCaseMultiPayload() == 46;
      goto LABEL_122;
    case 0x2Fu:
      v91 = swift_getEnumCaseMultiPayload() == 47;
      goto LABEL_122;
    case 0x30u:
      v91 = swift_getEnumCaseMultiPayload() == 48;
      goto LABEL_122;
    case 0x31u:
      v91 = swift_getEnumCaseMultiPayload() == 49;
      goto LABEL_122;
    case 0x32u:
      v91 = swift_getEnumCaseMultiPayload() == 50;
      goto LABEL_122;
    case 0x33u:
      v91 = swift_getEnumCaseMultiPayload() == 51;
      goto LABEL_122;
    case 0x34u:
      v91 = swift_getEnumCaseMultiPayload() == 52;
      goto LABEL_122;
    case 0x35u:
      v91 = swift_getEnumCaseMultiPayload() == 53;
      goto LABEL_122;
    case 0x36u:
      v91 = swift_getEnumCaseMultiPayload() == 54;
      goto LABEL_122;
    case 0x37u:
      v91 = swift_getEnumCaseMultiPayload() == 55;
      goto LABEL_122;
    case 0x38u:
      v91 = swift_getEnumCaseMultiPayload() == 56;
      goto LABEL_122;
    case 0x39u:
      v91 = swift_getEnumCaseMultiPayload() == 57;
      goto LABEL_122;
    case 0x3Au:
      v91 = swift_getEnumCaseMultiPayload() == 58;
      goto LABEL_122;
    case 0x3Bu:
      v91 = swift_getEnumCaseMultiPayload() == 59;
      goto LABEL_122;
    case 0x3Cu:
      v91 = swift_getEnumCaseMultiPayload() == 60;
      goto LABEL_122;
    case 0x3Du:
      v91 = swift_getEnumCaseMultiPayload() == 61;
      goto LABEL_122;
    case 0x3Eu:
      v91 = swift_getEnumCaseMultiPayload() == 62;
      goto LABEL_122;
    case 0x3Fu:
      v91 = swift_getEnumCaseMultiPayload() == 63;
      goto LABEL_122;
    case 0x40u:
      v91 = swift_getEnumCaseMultiPayload() == 64;
      goto LABEL_122;
    case 0x41u:
      v91 = swift_getEnumCaseMultiPayload() == 65;
      goto LABEL_122;
    case 0x42u:
      v91 = swift_getEnumCaseMultiPayload() == 66;
LABEL_122:
      v85 = v289;
      if (!v91)
      {
        goto LABEL_128;
      }

      goto LABEL_124;
    default:
      v85 = v289;
      sub_23314406C(v289, v79, type metadata accessor for TTSVBError.Reason);
      v87 = *v79;
      v86 = v79[1];
      v88 = v290;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_127;
      }

      v89 = *v88;
      v90 = v88[1];
      if (v87 == v89 && v86 == v90)
      {
LABEL_106:

        goto LABEL_124;
      }

      v256 = sub_23328E54C();

      if (v256)
      {
LABEL_124:
        v253 = v85;
LABEL_125:
        sub_233144DDC(v253, type metadata accessor for TTSVBError.Reason);
        v97 = 1;
        return v97 & 1;
      }

LABEL_143:
      sub_233144DDC(v85, type metadata accessor for TTSVBError.Reason);
LABEL_129:
      v97 = 0;
      return v97 & 1;
  }
}

uint64_t _s31TextToSpeechVoiceBankingSupport10TTSVBErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v20 = *a1;
  v21 = v4;
  v22 = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v17 = *a2;
  v18 = v6;
  v19 = v7;
  sub_233144054(v20, v4, v5);
  sub_233144054(v17, v6, v7);
  v8 = _s31TextToSpeechVoiceBankingSupport10TTSVBErrorV7ProblemO2eeoiySbAE_AEtFZ_0(&v20, &v17);
  sub_2331220AC(v17, v18, v19);
  sub_2331220AC(v20, v21, v22);
  if (v8)
  {
    v9 = type metadata accessor for TTSVBError(0);
    if (_s31TextToSpeechVoiceBankingSupport10TTSVBErrorV6ReasonO2eeoiySbAE_AEtFZ_0((a1 + *(v9 + 20)), (a2 + *(v9 + 20))))
    {
      v10 = *(v9 + 24);
      v11 = *(a1 + v10);
      v12 = *(a2 + v10);
      if (v11)
      {
        if (v12)
        {
          sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
          v13 = v12;
          v14 = v11;
          v15 = sub_23328DFDC();

          if (v15)
          {
            return 1;
          }
        }
      }

      else if (!v12)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_233147CDC()
{
  result = qword_27DDE4540;
  if (!qword_27DDE4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4540);
  }

  return result;
}

unint64_t sub_233147D30()
{
  result = qword_27DDE4548;
  if (!qword_27DDE4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4548);
  }

  return result;
}

unint64_t sub_233147D84()
{
  result = qword_27DDE4550;
  if (!qword_27DDE4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4550);
  }

  return result;
}

unint64_t sub_233147DD8()
{
  result = qword_27DDE4558;
  if (!qword_27DDE4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4558);
  }

  return result;
}

unint64_t sub_233147E2C()
{
  result = qword_27DDE4560;
  if (!qword_27DDE4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4560);
  }

  return result;
}

unint64_t sub_233147E80()
{
  result = qword_27DDE4568;
  if (!qword_27DDE4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4568);
  }

  return result;
}

unint64_t sub_233147ED4()
{
  result = qword_27DDE4570;
  if (!qword_27DDE4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4570);
  }

  return result;
}

unint64_t sub_233147F28()
{
  result = qword_27DDE4578;
  if (!qword_27DDE4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4578);
  }

  return result;
}

unint64_t sub_233147F7C()
{
  result = qword_27DDE4580;
  if (!qword_27DDE4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4580);
  }

  return result;
}

unint64_t sub_233147FD0()
{
  result = qword_27DDE4588;
  if (!qword_27DDE4588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4588);
  }

  return result;
}

unint64_t sub_233148024()
{
  result = qword_27DDE4590;
  if (!qword_27DDE4590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4590);
  }

  return result;
}

unint64_t sub_233148078()
{
  result = qword_27DDE4598;
  if (!qword_27DDE4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4598);
  }

  return result;
}

unint64_t sub_2331480CC()
{
  result = qword_27DDE45A0;
  if (!qword_27DDE45A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45A0);
  }

  return result;
}

unint64_t sub_233148120()
{
  result = qword_27DDE45A8;
  if (!qword_27DDE45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45A8);
  }

  return result;
}

unint64_t sub_233148174()
{
  result = qword_27DDE45B0;
  if (!qword_27DDE45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45B0);
  }

  return result;
}

unint64_t sub_2331481C8()
{
  result = qword_27DDE45B8;
  if (!qword_27DDE45B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45B8);
  }

  return result;
}

unint64_t sub_23314821C()
{
  result = qword_27DDE45C0;
  if (!qword_27DDE45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45C0);
  }

  return result;
}

unint64_t sub_233148270()
{
  result = qword_27DDE45C8;
  if (!qword_27DDE45C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45C8);
  }

  return result;
}

unint64_t sub_2331482C4()
{
  result = qword_27DDE45D0;
  if (!qword_27DDE45D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45D0);
  }

  return result;
}

unint64_t sub_233148318()
{
  result = qword_27DDE45D8;
  if (!qword_27DDE45D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45D8);
  }

  return result;
}

unint64_t sub_23314836C()
{
  result = qword_27DDE45E0;
  if (!qword_27DDE45E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45E0);
  }

  return result;
}

unint64_t sub_2331483C0()
{
  result = qword_27DDE45E8;
  if (!qword_27DDE45E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45E8);
  }

  return result;
}

unint64_t sub_233148414()
{
  result = qword_27DDE45F0;
  if (!qword_27DDE45F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45F0);
  }

  return result;
}

unint64_t sub_233148468()
{
  result = qword_27DDE45F8;
  if (!qword_27DDE45F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE45F8);
  }

  return result;
}

unint64_t sub_2331484BC()
{
  result = qword_27DDE4600;
  if (!qword_27DDE4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4600);
  }

  return result;
}

unint64_t sub_233148510()
{
  result = qword_27DDE4608;
  if (!qword_27DDE4608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4608);
  }

  return result;
}

unint64_t sub_233148564()
{
  result = qword_27DDE4610;
  if (!qword_27DDE4610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4610);
  }

  return result;
}

unint64_t sub_2331485B8()
{
  result = qword_27DDE4618;
  if (!qword_27DDE4618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4618);
  }

  return result;
}

unint64_t sub_23314860C()
{
  result = qword_27DDE4620;
  if (!qword_27DDE4620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4620);
  }

  return result;
}

unint64_t sub_233148660()
{
  result = qword_27DDE4628;
  if (!qword_27DDE4628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4628);
  }

  return result;
}

unint64_t sub_2331486B4()
{
  result = qword_27DDE4630;
  if (!qword_27DDE4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4630);
  }

  return result;
}

unint64_t sub_233148708()
{
  result = qword_27DDE4638;
  if (!qword_27DDE4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4638);
  }

  return result;
}

unint64_t sub_23314875C()
{
  result = qword_27DDE4640;
  if (!qword_27DDE4640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4640);
  }

  return result;
}

unint64_t sub_2331487B0()
{
  result = qword_27DDE4648;
  if (!qword_27DDE4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4648);
  }

  return result;
}

unint64_t sub_233148804()
{
  result = qword_27DDE1F78;
  if (!qword_27DDE1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1F78);
  }

  return result;
}

unint64_t sub_233148858()
{
  result = qword_27DDE4650;
  if (!qword_27DDE4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4650);
  }

  return result;
}

unint64_t sub_2331488AC()
{
  result = qword_27DDE4658;
  if (!qword_27DDE4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4658);
  }

  return result;
}

unint64_t sub_233148900()
{
  result = qword_27DDE4660;
  if (!qword_27DDE4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4660);
  }

  return result;
}

unint64_t sub_233148954()
{
  result = qword_27DDE4668;
  if (!qword_27DDE4668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4668);
  }

  return result;
}

unint64_t sub_2331489A8()
{
  result = qword_27DDE4670;
  if (!qword_27DDE4670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4670);
  }

  return result;
}

unint64_t sub_2331489FC()
{
  result = qword_27DDE4678;
  if (!qword_27DDE4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4678);
  }

  return result;
}

unint64_t sub_233148A50()
{
  result = qword_27DDE4680;
  if (!qword_27DDE4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4680);
  }

  return result;
}

unint64_t sub_233148AA4()
{
  result = qword_27DDE4688;
  if (!qword_27DDE4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4688);
  }

  return result;
}

unint64_t sub_233148AF8()
{
  result = qword_27DDE4690;
  if (!qword_27DDE4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4690);
  }

  return result;
}

unint64_t sub_233148B4C()
{
  result = qword_27DDE4698;
  if (!qword_27DDE4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE4698);
  }

  return result;
}

unint64_t sub_233148BA0()
{
  result = qword_27DDE46A0;
  if (!qword_27DDE46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE46A0);
  }

  return result;
}

unint64_t sub_233148BF4()
{
  result = qword_27DDE46A8;
  if (!qword_27DDE46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE46A8);
  }

  return result;
}

unint64_t sub_233148C48()
{
  result = qword_27DDE46B0;
  if (!qword_27DDE46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE46B0);
  }

  return result;
}

unint64_t sub_233148C9C()
{
  result = qword_27DDE46B8;
  if (!qword_27DDE46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE46B8);
  }

  return result;
}

unint64_t sub_233148CF0()
{
  result = qword_27DDE46C0;
  if (!qword_27DDE46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE46C0);
  }

  return result;
}

unint64_t sub_233148D44()
{
  result = qword_27DDE46C8;
  if (!qword_27DDE46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE46C8);
  }

  return result;
}

unint64_t sub_233148D98()
{
  result = qword_27DDE46D0;
  if (!qword_27DDE46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE46D0);
  }

  return result;
}

unint64_t sub_233148DEC()
{
  result = qword_27DDE46D8;
  if (!qword_27DDE46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE46D8);
  }

  return result;
}

unint64_t sub_233148E40()
{
  result = qword_27DDE46E0;
  if (!qword_27DDE46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE46E0);
  }

  return result;
}