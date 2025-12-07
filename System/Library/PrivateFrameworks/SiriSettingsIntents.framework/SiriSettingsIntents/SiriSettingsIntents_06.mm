unint64_t sub_268D9BF0C()
{
  v2 = qword_280FE2850;
  if (!qword_280FE2850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7D0, &qword_268F9F550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2850);
    return WitnessTable;
  }

  return v2;
}

void *sub_268D9BF94(const void *a1, void *a2)
{
  v6 = sub_268F99F64();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D9C0BC(uint64_t a1)
{
  v3 = sub_268F99F64();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

BOOL static SupportedFlowDomain.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    switch(v5)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      default:
        v4 = 7;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    switch(v6)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      default:
        v3 = 7;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_268D9C3BC(uint64_t a1)
{
  v13 = a1;
  v17 = sub_268F99F64();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v1, v2, v3);
  v12 = &v6 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v16 = swift_projectBox();
  swift_beginAccess();
  if ((*(v14 + 48))(v16, 1, v17) == 0)
  {
    (*(v14 + 16))(v12, v16, v17);
    swift_endAccess();
    v7 = sub_268F99F44();
    v8 = v4;
    (*(v14 + 8))(v12, v17);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    swift_endAccess();
    v9 = 0;
    v10 = 0;
  }

  v6 = v19;
  v19[0] = v9;
  v19[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268D9C5C0(uint64_t a1)
{
  v168 = v219;
  v200 = a1;
  v2 = v1;
  v3 = v200;
  v182 = v2;
  v196 = "Checking for connect to wifi use case.";
  v169 = sub_268D9D86C;
  v170 = sub_268DA6B08;
  v171 = sub_268CD7608;
  v172 = sub_268CD7600;
  v173 = sub_268CD7600;
  v174 = sub_268CD7614;
  v175 = sub_268D9C164;
  v176 = sub_268DA6B78;
  v177 = sub_268CD7608;
  v178 = sub_268CD7600;
  v179 = sub_268CD7600;
  v180 = sub_268CD7614;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  v181 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v183 = *(v4 - 8);
  v184 = v183;
  v192 = *(v183 + 64);
  v185 = (v192 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v186 = &v61[-v185];
  v187 = v185;
  MEMORY[0x28223BE20](&v61[-v185], v8, v9, v10);
  v188 = &v61[-v187];
  v189 = (v192 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v61[-v187], v11, v12, v13);
  v190 = &v61[-v189];
  v230 = &v61[-v189];
  v191 = (v192 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15, v16, v17);
  v193 = &v61[-v191];
  v194 = (v192 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v61[-v191], v18, v19, v20);
  v195 = &v61[-v194];
  v229 = &v61[-v194];
  v228 = v3;
  v227 = v21;
  v197 = sub_268F9B284();
  v199 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v199);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v198 = sub_268F9B734();
  sub_268F9AC14(v197, &dword_268CBE000, v199, v196, 38, 2);

  MEMORY[0x277D82BD8](v199);

  sub_268F9A5C4();
  v201 = v226;

  if (v201 && (v167 = v201, v165 = v201, v22 = sub_268D8E220(), v163 = *v22, v164 = v22[1], , v166 = sub_268F9A0A4(), , , v166))
  {
    v162 = v166;
    v23 = v181;
    v202 = v166;
    v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    sub_268DA5FC0();
    result = sub_268F9AF94();
    v161 = v23;
    if (v23)
    {
      __break(1u);
      goto LABEL_59;
    }

    sub_268CD7930(&v202);
    v159 = v161;
  }

  else
  {
    v60 = sub_268F99F64();
    (*(*(v60 - 8) + 56))(v195, 1);
    v159 = v181;
  }

  v143 = v159;
  v158 = sub_268F9B284();
  v157 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v157);
  sub_268D9BF94(v195, v193);
  v144 = *(v184 + 80);
  v145 = (v144 + 16) & ~v144;
  v148 = 7;
  v149 = swift_allocObject();
  sub_268DA69E0(v193, (v149 + v145));
  v146 = 17;
  v151 = swift_allocObject();
  *(v151 + 16) = 32;
  v152 = swift_allocObject();
  *(v152 + 16) = 8;
  v147 = 32;
  v25 = swift_allocObject();
  v26 = v149;
  v150 = v25;
  *(v25 + 16) = v170;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v150;
  v154 = v27;
  *(v27 + 16) = v171;
  *(v27 + 24) = v28;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v153 = sub_268F9B734();
  v155 = v29;

  v30 = v151;
  v31 = v155;
  *v155 = v172;
  v31[1] = v30;

  v32 = v152;
  v33 = v155;
  v155[2] = v173;
  v33[3] = v32;

  v34 = v154;
  v35 = v155;
  v155[4] = v174;
  v35[5] = v34;
  sub_268CD0F7C();

  if (os_log_type_enabled(v157, v158))
  {
    v36 = v143;
    v136 = sub_268F9B3A4();
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v137 = sub_268CD5448(0, v135, v135);
    v138 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v139 = &v207;
    v207 = v136;
    v140 = &v206;
    v206 = v137;
    v141 = &v205;
    v205 = v138;
    sub_268CD549C(2, &v207);
    sub_268CD549C(1, v139);
    v203 = v172;
    v204 = v151;
    sub_268CD54B0(&v203, v139, v140, v141);
    v142 = v36;
    if (v36)
    {

      __break(1u);
    }

    else
    {
      v203 = v173;
      v204 = v152;
      sub_268CD54B0(&v203, &v207, &v206, &v205);
      v133 = 0;
      v203 = v174;
      v204 = v154;
      sub_268CD54B0(&v203, &v207, &v206, &v205);
      v132 = 0;
      _os_log_impl(&dword_268CBE000, v157, v158, "Uso identifier: %s.", v136, 0xCu);
      sub_268CD54FC(v137, 0, v135);
      sub_268CD54FC(v138, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();

      v134 = v132;
    }
  }

  else
  {
    v37 = v143;

    v134 = v37;
  }

  v130 = v134;
  MEMORY[0x277D82BD8](v157);

  sub_268F9A5C4();
  v131 = v225;

  if (!v131 || (v129 = v131, v127 = v131, v128 = sub_268F9A1C4(), , !v128 || (v126 = v128, v124 = v128, v38 = sub_268D8E220(), v122 = *v38, v123 = v38[1], , v125 = sub_268F9A0A4(), , , !v125)))
  {
    v59 = sub_268F99F64();
    (*(*(v59 - 8) + 56))(v190, 1);
    v118 = v130;
LABEL_25:
    v104 = v118;
    v117 = sub_268F9B284();
    v116 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v116);
    sub_268D9BF94(v190, v193);
    v105 = (v144 + 16) & ~v144;
    v108 = 7;
    v109 = swift_allocObject();
    sub_268DA69E0(v193, (v109 + v105));
    v106 = 17;
    v111 = swift_allocObject();
    *(v111 + 16) = 32;
    v112 = swift_allocObject();
    *(v112 + 16) = 8;
    v107 = 32;
    v40 = swift_allocObject();
    v41 = v109;
    v110 = v40;
    *(v40 + 16) = v176;
    *(v40 + 24) = v41;
    v42 = swift_allocObject();
    v43 = v110;
    v114 = v42;
    *(v42 + 16) = v177;
    *(v42 + 24) = v43;
    v113 = sub_268F9B734();
    v115 = v44;

    v45 = v111;
    v46 = v115;
    *v115 = v178;
    v46[1] = v45;

    v47 = v112;
    v48 = v115;
    v115[2] = v179;
    v48[3] = v47;

    v49 = v114;
    v50 = v115;
    v115[4] = v180;
    v50[5] = v49;
    sub_268CD0F7C();

    if (os_log_type_enabled(v116, v117))
    {
      v51 = v104;
      v97 = sub_268F9B3A4();
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v98 = sub_268CD5448(0, v96, v96);
      v99 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v100 = &v213;
      v213 = v97;
      v101 = &v212;
      v212 = v98;
      v102 = &v211;
      v211 = v99;
      sub_268CD549C(2, &v213);
      sub_268CD549C(1, v100);
      v209 = v178;
      v210 = v111;
      sub_268CD54B0(&v209, v100, v101, v102);
      v103 = v51;
      if (v51)
      {

        __break(1u);
      }

      else
      {
        v209 = v179;
        v210 = v112;
        sub_268CD54B0(&v209, &v213, &v212, &v211);
        v95 = 0;
        v209 = v180;
        v210 = v114;
        sub_268CD54B0(&v209, &v213, &v212, &v211);
        _os_log_impl(&dword_268CBE000, v116, v117, "Associated setting: %s.", v97, 0xCu);
        sub_268CD54FC(v98, 0, v96);
        sub_268CD54FC(v99, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v116);
    sub_268D9BF94(v190, v188);
    v90 = sub_268F99F64();
    v91 = *(v90 - 8);
    v92 = v90 - 8;
    v93 = *(v91 + 48);
    v94 = v91 + 48;
    if (v93(v188, 1) == 1)
    {
      sub_268D9C0BC(v188);
      v88 = 0;
      v89 = 0;
    }

    else
    {
      v86 = sub_268F99F44();
      v87 = v52;
      (*(v91 + 8))(v188, v90);
      v88 = v86;
      v89 = v87;
    }

    v84 = v89;
    v83 = v88;

    v224 = 51;
    v82 = BinarySettingIdentifier.rawValue.getter();
    v85 = v53;

    v222[0] = v83;
    v222[1] = v84;
    v222[2] = v82;
    v223 = v85;
    if (v84)
    {
      sub_268D28874(v222, &v216);
      if (v223)
      {
        v79 = &v215;
        v215 = v216;
        v54 = v168[4];
        v78 = &v214;
        v214 = v54;
        v80 = MEMORY[0x26D62DB50](v216, *(&v216 + 1), v54, *(&v54 + 1));
        sub_268CD9D30(v78);
        sub_268CD9D30(v79);
        sub_268CD9D30(v222);
        v81 = v80;
        goto LABEL_38;
      }

      sub_268CD9D30(&v216);
    }

    else if (!v223)
    {
      sub_268CD9D30(v222);
      v81 = 1;
LABEL_38:
      v77 = v81;

      if ((v77 & 1) == 0)
      {
        v64 = 0;
LABEL_54:
        v62 = v64;
        sub_268D9C0BC(v190);
        sub_268D9C0BC(v195);
        return v62 & 1;
      }

      sub_268D9BF94(v195, v186);
      if ((v93)(v186, 1, v90) == 1)
      {
        sub_268D9C0BC(v186);
        v75 = 0;
        v76 = 0;
      }

      else
      {
        v73 = sub_268F99F44();
        v74 = v55;
        (*(v91 + 8))(v186, v90);
        v75 = v73;
        v76 = v74;
      }

      v70 = v76;
      v69 = v75;

      v56 = sub_268F2842C();
      v71 = *v56;
      v72 = v56[1];

      v220[0] = v69;
      v220[1] = v70;
      v220[2] = v71;
      v221 = v72;
      if (v70)
      {
        sub_268D28874(v220, v219);
        if (v221)
        {
          v57 = *v168;
          v66 = &v218;
          v218 = v57;
          v58 = v168[2];
          v65 = &v217;
          v217 = v58;
          v67 = MEMORY[0x26D62DB50](v218, *(&v218 + 1), v58, *(&v58 + 1));
          sub_268CD9D30(v65);
          sub_268CD9D30(v66);
          sub_268CD9D30(v220);
          v68 = v67;
LABEL_51:
          v63 = v68;

          v64 = v63;
          goto LABEL_54;
        }

        sub_268CD9D30(v219);
      }

      else if (!v221)
      {
        sub_268CD9D30(v220);
        v68 = 1;
        goto LABEL_51;
      }

      sub_268D28550(v220);
      v68 = 0;
      goto LABEL_51;
    }

    sub_268D28550(v222);
    v81 = 0;
    goto LABEL_38;
  }

  v121 = v125;
  v39 = v130;
  v208 = v125;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  v120 = v39;
  if (!v39)
  {
    sub_268CD7930(&v208);
    v118 = v120;
    goto LABEL_25;
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_268D9D8A4(uint64_t a1)
{
  v12 = a1;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v1, v2, v3);
  v14 = v7 - v13;
  sub_268D9BF94(v4, v7 - v13);
  v15 = sub_268F99F64();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  if ((*(v16 + 48))(v14, 1) == 1)
  {
    sub_268D9C0BC(v14);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v8 = sub_268F99F44();
    v9 = v5;
    (*(v16 + 8))(v14, v15);
    v10 = v8;
    v11 = v9;
  }

  v7[1] = v18;
  v18[0] = v10;
  v18[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268D9DA3C(uint64_t a1)
{
  v6 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v7 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v1, v2, v3);
  v9 = &v6 - v7;
  sub_268D9BF94(v4, &v6 - v7);
  return sub_268F9AE64();
}

double sub_268D9DAD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v133 = &v193;
  v134 = a6;
  v149 = a1;
  v150 = a2;
  v144 = a3;
  v145 = a4;
  v146 = a5;
  v152 = sub_268DA6BE8;
  v156 = sub_268CD7608;
  v158 = sub_268CD7600;
  v160 = sub_268CD7600;
  v163 = sub_268CD7614;
  v136 = "SupportedFlowDomainProvider getDomainForSettingTask | rejecting non-setting namespace";
  v137 = sub_268DA6BF4;
  v138 = sub_268CD7608;
  v139 = sub_268CD7600;
  v140 = sub_268CD7600;
  v141 = sub_268CD7614;
  v142 = "SupportedFlowDomainProvider getDomainForSettingTask | name can't be resolved";
  v206 = 0;
  v207 = 0;
  v204 = 0;
  v205 = 0;
  v203 = 0;
  v202 = 0;
  v197 = 0;
  v198 = 0;
  v191 = 0;
  v192 = 0;
  v190 = 0;
  v186 = 0;
  v184 = 0;
  v183 = 0;
  v143 = 0;
  v176 = 0;
  v177 = 0;
  v147 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v149, v150, v144, v145);
  v148 = &v49 - v147;
  v206 = v7;
  v207 = v8;
  v204 = v9;
  v205 = v10;
  v203 = v11;
  v202 = v6;
  v168 = sub_268F9B284();
  v167 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v167);

  v153 = 32;
  v154 = 7;
  v12 = swift_allocObject();
  v13 = v150;
  v155 = v12;
  *(v12 + 16) = v149;
  *(v12 + 24) = v13;
  v151 = 17;
  v159 = swift_allocObject();
  *(v159 + 16) = 32;
  v161 = swift_allocObject();
  *(v161 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v155;
  v157 = v14;
  *(v14 + 16) = v152;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v157;
  v164 = v16;
  *(v16 + 16) = v156;
  *(v16 + 24) = v17;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v162 = sub_268F9B734();
  v165 = v18;

  v19 = v159;
  v20 = v165;
  *v165 = v158;
  v20[1] = v19;

  v21 = v161;
  v22 = v165;
  v165[2] = v160;
  v22[3] = v21;

  v23 = v164;
  v24 = v165;
  v165[4] = v163;
  v24[5] = v23;
  sub_268CD0F7C();

  if (os_log_type_enabled(v167, v168))
  {
    v25 = v143;
    v126 = sub_268F9B3A4();
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v127 = sub_268CD5448(0, v125, v125);
    v128 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v129 = &v173;
    v173 = v126;
    v130 = &v172;
    v172 = v127;
    v131 = &v171;
    v171 = v128;
    sub_268CD549C(2, &v173);
    sub_268CD549C(1, v129);
    v169 = v158;
    v170 = v159;
    sub_268CD54B0(&v169, v129, v130, v131);
    v132 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v169 = v160;
      v170 = v161;
      sub_268CD54B0(&v169, &v173, &v172, &v171);
      v123 = 0;
      v169 = v163;
      v170 = v164;
      sub_268CD54B0(&v169, &v173, &v172, &v171);
      v122 = 0;
      _os_log_impl(&dword_268CBE000, v167, v168, "SupportedFlowDomainProvider getDomainForSettingTask | Attribute name is %s", v126, 0xCu);
      sub_268CD54FC(v127, 0, v125);
      sub_268CD54FC(v128, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();

      v124 = v122;
    }
  }

  else
  {
    v26 = v143;

    v124 = v26;
  }

  v121 = v124;
  MEMORY[0x277D82BD8](v167);
  sub_268D35D60((v135 + 72), v199);
  if (v200)
  {
    v116 = v200;
    v117 = v201;
    __swift_project_boxed_opaque_existential_1(v199, v200);
    (*(v117 + 16))(v146, v116);
    v118 = sub_268F9ACE4();
    v119 = *(v118 - 8);
    v120 = v118 - 8;
    if ((*(v119 + 48))(v148, 1) != 1)
    {
      v112 = sub_268F9ACC4();
      v113 = v27;
      (*(v119 + 8))(v148, v118);
      __swift_destroy_boxed_opaque_existential_0(v199);
      v114 = v112;
      v115 = v113;
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0(v199);
    sub_268D59D2C(v148);
  }

  else
  {
    sub_268D28414(v199);
  }

  v114 = 0;
  v115 = 0;
LABEL_11:
  v111 = v115;
  v110 = v114;
  v197 = v114;
  v198 = v115;

  v193 = v149;
  v194 = v150;

  if (v194)
  {
    *(v133 + 1) = *v133;
  }

  else
  {

    v195 = v110;
    v196 = v111;
    if (v194)
    {
      sub_268CD9D30(&v193);
    }
  }

  v108 = v195;
  v109 = v196;
  if (v196)
  {
    v106 = v108;
    v107 = v109;
    v104 = v109;
    v105 = v108;
    v191 = v108;
    v192 = v109;

    if (v145)
    {
      v102 = v144;
      v103 = v145;
      v97 = v145;
      v96 = v144;
      v176 = v144;
      v177 = v145;
      v95 = *sub_268F2848C();

      v100 = &v175;
      v175 = v95;
      v99 = v174;
      v174[0] = v96;
      v174[1] = v97;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
      sub_268DA6BFC();
      v101 = sub_268F9AFC4();
      sub_268CD7930(v100);
      if ((v101 & 1) == 0)
      {
        v92 = sub_268F9B284();
        v94 = *sub_268D8E144();
        MEMORY[0x277D82BE0](v94);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v93 = sub_268F9B734();
        sub_268F9AC14(v92, &dword_268CBE000, v94, v136, 85, 2);

        MEMORY[0x277D82BD8](v94);
        *v134 = 0;

        return result;
      }
    }

    v88 = *(v135 + 16);

    v89 = sub_268D2B440();

    v190 = v89 & 1;
    v189 = 3;
    v29 = NumericSettingIdentifier.rawValue.getter();
    v90 = v30;
    v91 = MEMORY[0x26D62DB50](v105, v104, v29);

    if (v91)
    {
      v87 = 1;
    }

    else
    {
      v188 = 4;
      v31 = NumericSettingIdentifier.rawValue.getter();
      v85 = v32;
      v86 = MEMORY[0x26D62DB50](v105, v104, v31);

      v87 = v86;
    }

    v84 = v87;

    if (v84)
    {
      v83 = 1;
    }

    else
    {
      v187 = 6;
      v33 = NumericSettingIdentifier.rawValue.getter();
      v81 = v34;
      v82 = MEMORY[0x26D62DB50](v105, v104, v33);

      v83 = v82;
    }

    v78 = v83;

    v186 = v78 & 1;
    v185 = 9;
    v35 = NumericSettingIdentifier.rawValue.getter();
    v79 = v36;
    v80 = MEMORY[0x26D62DB50](v105, v104, v35);

    if (v80)
    {
      v77 = v89 ^ 1;
    }

    else
    {
      v77 = 0;
    }

    v76 = v77;
    v184 = v77 & 1;
    if (v78)
    {
      v75 = 1;
    }

    else
    {
      v75 = v76;
    }

    if (v75)
    {
      v74 = 1;
    }

    else
    {
      v74 = 2;
    }

    v61 = v74;
    v183 = v74;
    v73 = sub_268F9B284();
    v72 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v72);
    v62 = 17;
    v64 = 7;
    v65 = swift_allocObject();
    *(v65 + 16) = v61;
    v67 = swift_allocObject();
    *(v67 + 16) = 32;
    v68 = swift_allocObject();
    *(v68 + 16) = 8;
    v63 = 32;
    v37 = swift_allocObject();
    v38 = v65;
    v66 = v37;
    *(v37 + 16) = v137;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v66;
    v70 = v39;
    *(v39 + 16) = v138;
    *(v39 + 24) = v40;
    v69 = sub_268F9B734();
    v71 = v41;

    v42 = v67;
    v43 = v71;
    *v71 = v139;
    v43[1] = v42;

    v44 = v68;
    v45 = v71;
    v71[2] = v140;
    v45[3] = v44;

    v46 = v70;
    v47 = v71;
    v71[4] = v141;
    v47[5] = v46;
    sub_268CD0F7C();

    if (os_log_type_enabled(v72, v73))
    {
      v48 = v121;
      v54 = sub_268F9B3A4();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v55 = sub_268CD5448(0, v53, v53);
      v56 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v57 = &v182;
      v182 = v54;
      v58 = &v181;
      v181 = v55;
      v59 = &v180;
      v180 = v56;
      sub_268CD549C(2, &v182);
      sub_268CD549C(1, v57);
      v178 = v139;
      v179 = v67;
      sub_268CD54B0(&v178, v57, v58, v59);
      v60 = v48;
      if (v48)
      {

        __break(1u);
      }

      else
      {
        v178 = v140;
        v179 = v68;
        sub_268CD54B0(&v178, &v182, &v181, &v180);
        v52 = 0;
        v178 = v141;
        v179 = v70;
        sub_268CD54B0(&v178, &v182, &v181, &v180);
        _os_log_impl(&dword_268CBE000, v72, v73, "SupportedFlowDomainProvider getDomainForSettingTask | choosing domain %s", v54, 0xCu);
        sub_268CD54FC(v55, 0, v53);
        sub_268CD54FC(v56, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v72);
    *v134 = v61;
  }

  else
  {
    HIDWORD(v49) = sub_268F9B284();
    v51 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v50 = sub_268F9B734();
    sub_268F9AC14(HIDWORD(v49), &dword_268CBE000, v51, v142, 76, 2);

    MEMORY[0x277D82BD8](v51);
    *v134 = 0;
  }

  return result;
}

uint64_t sub_268D9EB24(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

double sub_268D9EBC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v89 = a6;
  *&v101 = a1;
  *(&v101 + 1) = a2;
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v103 = sub_268DA6BE8;
  v107 = sub_268CD7608;
  v109 = sub_268CD7600;
  v111 = sub_268CD7600;
  v114 = sub_268CD7614;
  v91 = "SupportedFlowDomainProvider isSRRVoiceTask | rejecting non-setting namespace";
  v92 = "SupportedFlowDomainProvider getDomainForSettingTask | found no voice SRR entity";
  v93 = "SupportedFlowDomainProvider getDomainForSettingTask | found voice SRR entity, choosing domain .setting";
  v94 = "SupportedFlowDomainProvider isSRRVoiceTask | name can't be resolved";
  v144 = 0;
  v145 = 0;
  v142 = 0;
  v143 = 0;
  v141 = 0;
  v140 = 0;
  v136 = 0uLL;
  v133 = 0uLL;
  v127 = 0;
  v128 = 0;
  v95 = 0;
  v99 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101, *(&v101 + 1), v96, v97);
  v100 = &v36 - v99;
  v144 = v7;
  v145 = v8;
  v142 = v9;
  v143 = v10;
  v141 = v11;
  v140 = v6;
  v119 = sub_268F9B284();
  v118 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v118);

  v104 = 32;
  v105 = 7;
  v12 = swift_allocObject();
  v13 = *(&v101 + 1);
  v106 = v12;
  *(v12 + 16) = v101;
  *(v12 + 24) = v13;
  v102 = 17;
  v110 = swift_allocObject();
  *(v110 + 16) = 32;
  v112 = swift_allocObject();
  *(v112 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v106;
  v108 = v14;
  *(v14 + 16) = v103;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v108;
  v115 = v16;
  *(v16 + 16) = v107;
  *(v16 + 24) = v17;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v113 = sub_268F9B734();
  v116 = v18;

  v19 = v110;
  v20 = v116;
  *v116 = v109;
  v20[1] = v19;

  v21 = v112;
  v22 = v116;
  v116[2] = v111;
  v22[3] = v21;

  v23 = v115;
  v24 = v116;
  v116[4] = v114;
  v24[5] = v23;
  sub_268CD0F7C();

  if (os_log_type_enabled(v118, v119))
  {
    v25 = v95;
    v82 = sub_268F9B3A4();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v83 = sub_268CD5448(0, v81, v81);
    v84 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v85 = &v124;
    v124 = v82;
    v86 = &v123;
    v123 = v83;
    v87 = &v122;
    v122 = v84;
    sub_268CD549C(2, &v124);
    sub_268CD549C(1, v85);
    v120 = v109;
    v121 = v110;
    sub_268CD54B0(&v120, v85, v86, v87);
    v88 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v120 = v111;
      v121 = v112;
      sub_268CD54B0(&v120, &v124, &v123, &v122);
      v80 = 0;
      v120 = v114;
      v121 = v115;
      sub_268CD54B0(&v120, &v124, &v123, &v122);
      _os_log_impl(&dword_268CBE000, v118, v119, "Attribute name is %s", v82, 0xCu);
      sub_268CD54FC(v83, 0, v81);
      sub_268CD54FC(v84, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v118);
  sub_268D35D60((v90 + 72), v137);
  if (v138)
  {
    v75 = v138;
    v76 = v139;
    __swift_project_boxed_opaque_existential_1(v137, v138);
    (*(v76 + 16))(v98, v75);
    v77 = sub_268F9ACE4();
    v78 = *(v77 - 8);
    v79 = v77 - 8;
    if ((*(v78 + 48))(v100, 1) != 1)
    {
      *&v73 = sub_268F9ACC4();
      *(&v73 + 1) = v26;
      (*(v78 + 8))(v100, v77);
      __swift_destroy_boxed_opaque_existential_0(v137);
      v74 = v73;
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0(v137);
    sub_268D59D2C(v100);
  }

  else
  {
    sub_268D28414(v137);
  }

  v74 = 0uLL;
LABEL_11:
  v72 = v74;
  v136 = v74;

  v134 = v101;

  if (*(&v134 + 1))
  {
    v135 = v134;
  }

  else
  {

    v135 = v72;
    if (*(&v134 + 1))
    {
      sub_268CD9D30(&v134);
    }
  }

  v71 = v135;
  if (*(&v135 + 1))
  {
    v70 = v71;
    v68 = *(&v71 + 1);
    v69 = v71;
    v133 = v71;

    if (v97)
    {
      v66 = v96;
      v67 = v97;
      v61 = v97;
      v60 = v96;
      v127 = v96;
      v128 = v97;
      v59 = *sub_268F2848C();

      v64 = &v126;
      v126 = v59;
      v63 = v125;
      v125[0] = v60;
      v125[1] = v61;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
      sub_268DA6BFC();
      v65 = sub_268F9AFC4();
      sub_268CD7930(v64);
      if ((v65 & 1) == 0)
      {
        v56 = sub_268F9B284();
        v58 = *sub_268D8E144();
        MEMORY[0x277D82BE0](v58);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v57 = sub_268F9B734();
        sub_268F9AC14(v56, &dword_268CBE000, v58, v91, 76, 2);

        MEMORY[0x277D82BD8](v58);
        *v89 = 0;

        return result;
      }
    }

    v51 = MEMORY[0x277D837D0];
    v50 = sub_268F9B734();
    v49 = v28;
    v132 = 7;
    v29 = NumericSettingIdentifier.rawValue.getter();
    v30 = v49;
    *v49 = v29;
    v30[1] = v31;
    v131 = 8;
    v32 = NumericSettingIdentifier.rawValue.getter();
    v33 = v49;
    v49[2] = v32;
    v33[3] = v34;
    sub_268CD0F7C();
    v54 = &v130;
    v130 = v35;
    v53 = v129;
    v129[0] = v69;
    v129[1] = v68;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268DA6BFC();
    v55 = sub_268F9AFC4();
    sub_268CD7930(v54);
    if (v55 & 1) == 0 || (v47 = *(v90 + 16), , v48 = sub_268D2B440(), , (v48))
    {
      v40 = sub_268F9B284();
      v42 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v41 = sub_268F9B734();
      sub_268F9AC14(v40, &dword_268CBE000, v42, v92, 79, 2);

      MEMORY[0x277D82BD8](v42);
      *v89 = 0;
    }

    else
    {
      v43 = sub_268F9B284();
      v45 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      v44 = sub_268F9B734();
      v46 = 2;
      sub_268F9AC14(v43, &dword_268CBE000, v45, v93, 102, 2);

      MEMORY[0x277D82BD8](v45);
      *v89 = v46;
    }
  }

  else
  {
    v37 = sub_268F9B284();
    v39 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    v38 = sub_268F9B734();
    sub_268F9AC14(v37, &dword_268CBE000, v39, v94, 67, 2);

    MEMORY[0x277D82BD8](v39);
    *v89 = 0;
  }

  return result;
}

uint64_t sub_268D9F7F0(uint64_t a1)
{
  v17 = a1;
  v16 = v1;
  v8 = sub_268F99F54();
  v9 = v2;

  v7 = sub_268F9AEF4();
  v10 = v3;

  v14[0] = v8;
  v14[1] = v9;
  *&v15 = v7;
  *(&v15 + 1) = v10;
  if (!v9)
  {
    if (!*(&v15 + 1))
    {
      sub_268CD9D30(v14);
      v6 = 1;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_268D28874(v14, &v13);
  if (!*(&v15 + 1))
  {
    sub_268CD9D30(&v13);
LABEL_8:
    sub_268D28550(v14);
    v6 = 0;
    goto LABEL_7;
  }

  v12 = v13;
  v11 = v15;
  v5 = MEMORY[0x26D62DB50](v13, *(&v13 + 1), v15, *(&v15 + 1));
  sub_268CD9D30(&v11);
  sub_268CD9D30(&v12);
  sub_268CD9D30(v14);
  v6 = v5;
LABEL_7:

  return v6 & 1;
}

uint64_t sub_268D9F984(uint64_t a1, uint64_t a2, char a3)
{
  v13[5] = 0;
  v16 = a1;
  v15 = a2;
  v14 = a3 & 1;
  v13[3] = &unk_28798DFB8;
  v10 = sub_268DA6C84();
  v13[4] = v10;
  LOBYTE(v13[0]) = 0;
  v11 = sub_268F99C84();
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (v11 & 1) != 0 || (v12[3] = &unk_28798DFB8, v12[4] = v10, LOBYTE(v12[0]) = 1, v8 = sub_268F99C84(), __swift_destroy_boxed_opaque_existential_0(v12), (v8 & 1) == 0) || (AFDeviceSupportsSAE())
  {
    v7 = sub_268DA16CC(a1) ^ 1;
  }

  else
  {
    v5 = sub_268F9B284();
    v3 = sub_268D8E144();
    v6 = *v3;
    MEMORY[0x277D82BE0](*v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v5, &dword_268CBE000, v6, "SupportedFlowDomainProvider isIntelligenceFlowParse | IntelligenceFlow is disabled or unsupported", 97, 2);

    MEMORY[0x277D82BD8](v6);
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

void *sub_268D9FB5C(const void *a1, void *a2)
{
  v6 = sub_268F9A434();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C0, &unk_268F9F540);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268D9FC84(uint64_t a1)
{
  v4 = sub_268F9A434();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7B8, &qword_268F9F538) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

uint64_t sub_268D9FDB0(uint64_t a1)
{
  v3 = sub_268F9A434();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268D9FE58(const void *a1, void *a2)
{
  v6 = sub_268F9ACE4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_268D9FF80()
{
  v2 = qword_2802DC7D8;
  if (!qword_2802DC7D8)
  {
    sub_268F9A434();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC7D8);
    return WitnessTable;
  }

  return v2;
}

void sub_268DA0000(uint64_t a1)
{
  v194 = a1;
  v195 = 0;
  v224 = 0;
  v223 = 0;
  v196 = 0;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  v211 = 0;
  v210 = 0;
  v197 = sub_268F99F64();
  v198 = *(v197 - 8);
  v199 = v198;
  v201 = *(v198 + 64);
  v200 = v201;
  MEMORY[0x28223BE20](v197 - 8, v197, v2, v3);
  v202 = &v81 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = a1;
  v223 = v4;
  v203 = sub_268F99F54();
  v204 = v5;
  if (v5)
  {
    v192 = v203;
    v193 = v204;
    v6 = v196;
    v186 = v204;
    v188 = v203;
    v216 = v203;
    v217 = v204;
    v184 = MEMORY[0x277D837D0];
    v183 = sub_268F9B734();
    v182 = v7;
    v181 = 11;
    v180 = 1;
    v8 = sub_268F9AEF4();
    v9 = v182;
    *v182 = v8;
    v9[1] = v10;
    v179 = 12;
    v11 = sub_268F9AEF4();
    v12 = v182;
    v182[2] = v11;
    v12[3] = v13;
    v14 = sub_268F9AEF4();
    v15 = v182;
    v182[4] = v14;
    v15[5] = v16;
    v17 = sub_268F9AEF4();
    v18 = v182;
    v182[6] = v17;
    v18[7] = v19;
    v20 = sub_268F9AEF4();
    v21 = v182;
    v182[8] = v20;
    v21[9] = v22;
    v23 = sub_268F9AEF4();
    v24 = v182;
    v182[10] = v23;
    v24[11] = v25;
    v26 = sub_268F9AEF4();
    v27 = v182;
    v182[12] = v26;
    v27[13] = v28;
    sub_268CD0F7C();
    v185 = v29;
    v215 = v29;
    v212 = v29;

    v187 = &v81;
    MEMORY[0x28223BE20](&v81, v30, v31, v32);
    v189 = &v81 - 4;
    *(&v81 - 2) = v188;
    *(&v81 - 1) = v33;
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC560, qword_268FA0000);
    sub_268DA6BFC();
    sub_268F9AF94();
    v191 = v6;
    if (v6)
    {

      __break(1u);
    }

    else
    {

      v177 = v213;
      v178 = v214;
      if (v214)
      {
        v175 = v177;
        v176 = v178;
        v147 = v178;
        v146 = v177;
        v210 = v177;
        v211 = v178;
        v173 = sub_268F9B284();
        v144 = v173;
        v174 = *sub_268D8E144();
        v145 = v174;
        v34 = v174;

        v154 = 32;
        v159 = 32;
        v160 = 7;
        v35 = swift_allocObject();
        v36 = v147;
        v37 = v194;
        v38 = v199;
        v39 = v197;
        v40 = v35;
        v41 = v202;
        v151 = v40;
        *(v40 + 16) = v146;
        *(v40 + 24) = v36;
        (*(v38 + 16))(v41, v37, v39);
        v148 = (*(v199 + 80) + 16) & ~*(v199 + 80);
        v161 = swift_allocObject();
        (*(v199 + 32))(v161 + v148, v202, v197);
        v155 = 17;
        v164 = swift_allocObject();
        v149 = v164;
        *(v164 + 16) = v154;
        v165 = swift_allocObject();
        v150 = v165;
        v157 = 8;
        *(v165 + 16) = 8;
        v42 = swift_allocObject();
        v43 = v151;
        v152 = v42;
        *(v42 + 16) = sub_268DA6D94;
        *(v42 + 24) = v43;
        v44 = swift_allocObject();
        v45 = v152;
        v166 = v44;
        v153 = v44;
        *(v44 + 16) = sub_268CD7608;
        *(v44 + 24) = v45;
        v167 = swift_allocObject();
        v156 = v167;
        *(v167 + 16) = v154;
        v168 = swift_allocObject();
        v158 = v168;
        *(v168 + 16) = v157;
        v46 = swift_allocObject();
        v47 = v161;
        v162 = v46;
        *(v46 + 16) = sub_268DA6D00;
        *(v46 + 24) = v47;
        v48 = swift_allocObject();
        v49 = v162;
        v171 = v48;
        v163 = v48;
        *(v48 + 16) = sub_268CD7608;
        *(v48 + 24) = v49;
        v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
        v169 = sub_268F9B734();
        v170 = v50;

        v51 = v164;
        v52 = v170;
        *v170 = sub_268CD7600;
        v52[1] = v51;

        v53 = v165;
        v54 = v170;
        v170[2] = sub_268CD7600;
        v54[3] = v53;

        v55 = v166;
        v56 = v170;
        v170[4] = sub_268CD7614;
        v56[5] = v55;

        v57 = v167;
        v58 = v170;
        v170[6] = sub_268CD7600;
        v58[7] = v57;

        v59 = v168;
        v60 = v170;
        v170[8] = sub_268CD7600;
        v60[9] = v59;

        v61 = v170;
        v62 = v171;
        v170[10] = sub_268CD7614;
        v61[11] = v62;
        sub_268CD0F7C();

        if (os_log_type_enabled(v174, v173))
        {
          v63 = v191;
          v137 = sub_268F9B3A4();
          v134 = v137;
          v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
          v138 = sub_268CD5448(0, v135, v135);
          v136 = v138;
          v140 = 2;
          v139 = sub_268CD5448(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v209 = v137;
          v208 = v138;
          v207 = v139;
          v141 = &v209;
          sub_268CD549C(v140, &v209);
          sub_268CD549C(v140, v141);
          v205 = sub_268CD7600;
          v206 = v149;
          sub_268CD54B0(&v205, v141, &v208, &v207);
          v142 = v63;
          v143 = v63;
          if (v63)
          {
            v132 = 0;

            __break(1u);
          }

          else
          {
            v205 = sub_268CD7600;
            v206 = v150;
            sub_268CD54B0(&v205, &v209, &v208, &v207);
            v130 = 0;
            v131 = 0;
            v205 = sub_268CD7614;
            v206 = v153;
            sub_268CD54B0(&v205, &v209, &v208, &v207);
            v128 = 0;
            v129 = 0;
            v205 = sub_268CD7600;
            v206 = v156;
            sub_268CD54B0(&v205, &v209, &v208, &v207);
            v126 = 0;
            v127 = 0;
            v205 = sub_268CD7600;
            v206 = v158;
            sub_268CD54B0(&v205, &v209, &v208, &v207);
            v124 = 0;
            v125 = 0;
            v205 = sub_268CD7614;
            v206 = v163;
            sub_268CD54B0(&v205, &v209, &v208, &v207);
            v122 = 0;
            v123 = 0;
            _os_log_impl(&dword_268CBE000, v145, v144, "SupportedFlowDomainProvider isIntelligenceFlowParse | found Siri X namespace %s on identifier %s", v134, 0x16u);
            sub_268CD54FC(v136, 0, v135);
            sub_268CD54FC(v139, 2, MEMORY[0x277D84F70] + 8);
            sub_268F9B384();

            v133 = v122;
          }
        }

        else
        {
          v64 = v191;

          v133 = v64;
        }

        v119 = v133;

        v120 = 1;
        v121 = v119;
      }

      else
      {

        v120 = 0;
        v121 = v191;
      }
    }
  }

  else
  {
    v117 = sub_268F9B284();
    v99 = v117;
    v118 = *sub_268D8E144();
    v100 = v118;
    v65 = v118;
    (*(v199 + 16))(v202, v194, v197);
    v101 = (*(v199 + 80) + 16) & ~*(v199 + 80);
    v108 = swift_allocObject();
    (*(v199 + 32))(v108 + v101, v202, v197);
    v102 = 17;
    v107 = 7;
    v111 = swift_allocObject();
    v103 = v111;
    v104 = 32;
    *(v111 + 16) = 32;
    v66 = swift_allocObject();
    v67 = v104;
    v112 = v66;
    v105 = v66;
    *(v66 + 16) = 8;
    v106 = v67;
    v68 = swift_allocObject();
    v69 = v108;
    v109 = v68;
    *(v68 + 16) = sub_268DA6D00;
    *(v68 + 24) = v69;
    v70 = swift_allocObject();
    v71 = v109;
    v115 = v70;
    v110 = v70;
    *(v70 + 16) = sub_268CD7608;
    *(v70 + 24) = v71;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v113 = sub_268F9B734();
    v114 = v72;

    v73 = v111;
    v74 = v114;
    *v114 = sub_268CD7600;
    v74[1] = v73;

    v75 = v112;
    v76 = v114;
    v114[2] = sub_268CD7600;
    v76[3] = v75;

    v77 = v114;
    v78 = v115;
    v114[4] = sub_268CD7614;
    v77[5] = v78;
    sub_268CD0F7C();

    if (os_log_type_enabled(v118, v117))
    {
      v79 = v196;
      v92 = sub_268F9B3A4();
      v89 = v92;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v93 = sub_268CD5448(0, v90, v90);
      v91 = v93;
      v95 = 1;
      v94 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v222 = v92;
      v221 = v93;
      v220 = v94;
      v96 = &v222;
      sub_268CD549C(2, &v222);
      sub_268CD549C(v95, v96);
      v218 = sub_268CD7600;
      v219 = v103;
      sub_268CD54B0(&v218, v96, &v221, &v220);
      v97 = v79;
      v98 = v79;
      if (v79)
      {
        v87 = 0;

        __break(1u);
      }

      else
      {
        v218 = sub_268CD7600;
        v219 = v105;
        sub_268CD54B0(&v218, &v222, &v221, &v220);
        v85 = 0;
        v86 = 0;
        v218 = sub_268CD7614;
        v219 = v110;
        sub_268CD54B0(&v218, &v222, &v221, &v220);
        v83 = 0;
        v84 = 0;
        _os_log_impl(&dword_268CBE000, v100, v99, "SupportedFlowDomainProvider isIntelligenceFlowParse | found no namespace on identifier %s", v89, 0xCu);
        sub_268CD54FC(v91, 0, v90);
        sub_268CD54FC(v94, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();

        v88 = v83;
      }
    }

    else
    {
      v80 = v196;

      v88 = v80;
    }

    v82 = v88;

    v120 = 1;
    v121 = v82;
  }
}

uint64_t sub_268DA16CC(uint64_t a1)
{
  v3 = sub_268F9B284();
  v1 = sub_268D8E144();
  v4 = *v1;
  MEMORY[0x277D82BE0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v3, &dword_268CBE000, v4, "Sending to Siri X.", 18, 2);

  MEMORY[0x277D82BD8](v4);
  return 1;
}

uint64_t sub_268DA17B4(uint64_t a1)
{
  v17 = a1;
  v2 = v1;
  v3 = v17;
  v20 = v2;
  v35 = 0;
  v34 = 0;
  v25 = sub_268F9A0D4();
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v18 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v4, v5, v6);
  v23 = &v14 - v18;
  v19 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v14 - v18, v8, v9, v10);
  v24 = &v14 - v19;
  v35 = v3;
  v34 = v20;
  sub_268F99F24();
  (*(v21 + 104))(v23, *MEMORY[0x277D5E6B0], v25);
  v28 = MEMORY[0x26D62CD10](v24, v23);
  v27 = *(v21 + 8);
  v26 = v21 + 8;
  v27(v23, v25);
  v27(v24, v25);
  if (v28)
  {
    v16 = 1;
  }

  else
  {
    v30 = sub_268F99F54();
    v31 = v11;
    if (v11)
    {
      v32 = v30;
      v33 = v31;
    }

    else
    {
      v32 = sub_268F9AEF4();
      v33 = v12;
      if (v31)
      {
        sub_268CD9D30(&v30);
      }
    }

    v29 = sub_268DA1A0C(v32, v33);
    v15 = v29 != 10;
    v16 = v15;
  }

  return v16 & 1;
}

uint64_t sub_268DA1A0C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "homeAutomationService";
  *(v2 + 8) = 21;
  *(v2 + 16) = 2;
  *(v2 + 24) = "homeAutomationAccessoryType";
  *(v2 + 32) = 27;
  *(v2 + 40) = 2;
  *(v2 + 48) = "homeAutomationPlaceHint";
  *(v2 + 56) = 23;
  *(v2 + 64) = 2;
  *(v2 + 72) = "homeAutomationNoun";
  *(v2 + 80) = 18;
  *(v2 + 88) = 2;
  *(v2 + 96) = "homeAutomationState";
  *(v2 + 104) = 19;
  *(v2 + 112) = 2;
  *(v2 + 120) = "homeAutomationHue";
  *(v2 + 128) = 17;
  *(v2 + 136) = 2;
  *(v2 + 144) = "homeAutomationTrigger";
  *(v2 + 152) = 21;
  *(v2 + 160) = 2;
  *(v2 + 168) = "homeAutomationSettingTag";
  *(v2 + 176) = 24;
  *(v2 + 184) = 2;
  *(v2 + 192) = "homeAutomationEntityTag";
  *(v2 + 200) = 23;
  *(v2 + 208) = 2;
  *(v2 + 216) = "homeAutomationScene";
  *(v2 + 224) = 19;
  *(v2 + 232) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_22:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_22;
    case 2:
      v5 = 2;
      goto LABEL_22;
    case 3:
      v5 = 3;
      goto LABEL_22;
    case 4:
      v5 = 4;
      goto LABEL_22;
    case 5:
      v5 = 5;
      goto LABEL_22;
    case 6:
      v5 = 6;
      goto LABEL_22;
    case 7:
      v5 = 7;
      goto LABEL_22;
    case 8:
      v5 = 8;
      goto LABEL_22;
    case 9:
      v5 = 9;
      goto LABEL_22;
  }

  return 10;
}

uint64_t sub_268DA1D80(uint64_t a1)
{
  v43 = a1;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, v2, v3, v4);
  v40 = &v14 - v39;
  v41 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, &v14 - v39, v7, v8);
  v42 = &v14 - v41;
  v55 = &v14 - v41;
  v54 = v9;
  v53 = v1;

  if (!v43)
  {
    v15 = 0;
    return v15 & 1;
  }

  v37 = v43;
  v36 = v43;
  v52 = v43;
  sub_268D35D60((v38 + 72), &v49);
  if (v50)
  {
    v35 = &v49;
    v32 = v50;
    v33 = v51;
    v31 = __swift_project_boxed_opaque_existential_1(&v49, v50);

    v34 = sub_268F99F04();

    (*(v33 + 16))(v34, v32);

    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    sub_268D28414(&v49);
    v12 = sub_268F9ACE4();
    (*(*(v12 - 8) + 56))(v42, 1);
  }

  sub_268D9FE58(v42, v40);
  v28 = sub_268F9ACE4();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  if ((*(v29 + 48))(v40, 1) == 1)
  {
    sub_268D59D2C(v40);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v24 = sub_268F9ACA4();
    v25 = v10;
    (*(v29 + 8))(v40, v28);
    v26 = v24;
    v27 = v25;
  }

  v22 = v27;
  v21 = v26;

  v20 = sub_268F9AEF4();
  v23 = v11;

  v47[0] = v21;
  v47[1] = v22;
  *&v48 = v20;
  *(&v48 + 1) = v23;
  if (!v22)
  {
    if (!*(&v48 + 1))
    {
      sub_268CD9D30(v47);
      v19 = 1;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  sub_268D28874(v47, &v46);
  if (!*(&v48 + 1))
  {
    sub_268CD9D30(&v46);
LABEL_13:
    sub_268D28550(v47);
    v19 = 0;
    goto LABEL_12;
  }

  v17 = &v45;
  v45 = v46;
  v16 = &v44;
  v44 = v48;
  v18 = MEMORY[0x26D62DB50](v46, *(&v46 + 1), v48, *(&v48 + 1));
  sub_268CD9D30(v16);
  sub_268CD9D30(v17);
  sub_268CD9D30(v47);
  v19 = v18;
LABEL_12:
  v14 = v19;

  sub_268D59D2C(v42);

  v15 = v14;
  return v15 & 1;
}

uint64_t sub_268DA2274(_BYTE *a1, uint64_t a2)
{
  v572 = a1;
  v583 = a2;
  v585 = sub_268DA6DA0;
  v589 = sub_268CD7608;
  v591 = sub_268CD7600;
  v593 = sub_268CD7600;
  v596 = sub_268CD7614;
  v499 = sub_268D9C164;
  v500 = sub_268DA60A4;
  v501 = sub_268DA6DB8;
  v502 = sub_268CD7608;
  v503 = sub_268CD7600;
  v504 = sub_268CD7600;
  v505 = sub_268CD7614;
  v506 = sub_268D9C164;
  v507 = sub_268DA6DB8;
  v508 = sub_268CD7608;
  v509 = sub_268CD7600;
  v510 = sub_268CD7600;
  v511 = sub_268CD7614;
  v512 = sub_268DA6DC0;
  v513 = sub_268CD7608;
  v514 = sub_268CD7600;
  v515 = sub_268CD7600;
  v516 = sub_268CD7614;
  v517 = sub_268DA6DB0;
  v518 = sub_268CD7608;
  v519 = sub_268CD7600;
  v520 = sub_268CD7600;
  v521 = sub_268CD7614;
  v522 = sub_268DA6DA8;
  v523 = sub_268CD7608;
  v524 = sub_268CD7600;
  v525 = sub_268CD7600;
  v526 = sub_268CD7614;
  v527 = "Settings identifier not detected.";
  v528 = sub_268DA60A4;
  v529 = "Neither Settings nor HA identifiers detected.";
  v530 = sub_268DA6DC0;
  v531 = sub_268CD7608;
  v532 = sub_268CD7600;
  v533 = sub_268CD7600;
  v534 = sub_268CD7614;
  v535 = sub_268DA60A4;
  v536 = sub_268DA6DB8;
  v537 = sub_268CD7608;
  v538 = sub_268CD7600;
  v539 = sub_268CD7600;
  v540 = sub_268CD7614;
  v541 = sub_268DA6DC0;
  v542 = sub_268CD7608;
  v543 = sub_268CD7600;
  v544 = sub_268CD7600;
  v545 = sub_268CD7614;
  v546 = sub_268DA6DB0;
  v547 = sub_268CD7608;
  v548 = sub_268CD7600;
  v549 = sub_268CD7600;
  v550 = sub_268CD7614;
  v551 = sub_268DA6DA8;
  v552 = sub_268CD7608;
  v553 = sub_268CD7600;
  v554 = sub_268CD7600;
  v555 = sub_268CD7614;
  v676 = 0;
  v675 = 0;
  v674 = 0;
  v673 = 0;
  v672 = 0;
  v671 = 0;
  v670 = 0;
  v556 = 0;
  v664 = 0;
  v657 = 0;
  v641 = 0;
  v640 = 0;
  v634 = 0;
  v627 = 0;
  v557 = sub_268F99F64();
  v559 = *(v557 - 8);
  v558 = v557 - 8;
  v560 = v559;
  v561 = *(v559 + 64);
  v562 = (v561 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v557, v3, v4, v5);
  v563 = &v192 - v562;
  v676 = &v192 - v562;
  v564 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  v565 = &v192 - v564;
  v675 = &v192 - v564;
  v566 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13, v14, v15);
  v567 = &v192 - v566;
  v674 = &v192 - v566;
  v568 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v18, v19, v20);
  v569 = &v192 - v568;
  v570 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v192 - v568, v22, v23, v24);
  v571 = &v192 - v570;
  v673 = &v192 - v570;
  v573 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v572, v583, v25, v26);
  v574 = &v192 - v573;
  v575 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v29, &v192 - v573, v30);
  v576 = &v192 - v575;
  v577 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32, v33, &v192 - v575, v34);
  v578 = &v192 - v577;
  v579 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v37, &v192 - v577, v38);
  v580 = &v192 - v579;
  v581 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40, v41, &v192 - v579, v42);
  v582 = &v192 - v581;
  v672 = v43;
  v671 = v44;
  v670 = v2;
  v601 = sub_268F9B284();
  v600 = *sub_268D8E144();
  MEMORY[0x277D82BE0](v600);

  v587 = 7;
  v588 = swift_allocObject();
  *(v588 + 16) = v583;
  v584 = 17;
  v592 = swift_allocObject();
  *(v592 + 16) = 32;
  v594 = swift_allocObject();
  *(v594 + 16) = 8;
  v586 = 32;
  v45 = swift_allocObject();
  v46 = v588;
  v590 = v45;
  *(v45 + 16) = v585;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v590;
  v597 = v47;
  *(v47 + 16) = v589;
  *(v47 + 24) = v48;
  v599 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v595 = sub_268F9B734();
  v598 = v49;

  v50 = v592;
  v51 = v598;
  *v598 = v591;
  v51[1] = v50;

  v52 = v594;
  v53 = v598;
  v598[2] = v593;
  v53[3] = v52;

  v54 = v597;
  v55 = v598;
  v598[4] = v596;
  v55[5] = v54;
  sub_268CD0F7C();

  if (os_log_type_enabled(v600, v601))
  {
    v56 = v556;
    v492 = sub_268F9B3A4();
    v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v493 = sub_268CD5448(0, v491, v491);
    v494 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v495 = &v606;
    v606 = v492;
    v496 = &v605;
    v605 = v493;
    v497 = &v604;
    v604 = v494;
    sub_268CD549C(2, &v606);
    sub_268CD549C(1, v495);
    v602 = v591;
    v603 = v592;
    sub_268CD54B0(&v602, v495, v496, v497);
    v498 = v56;
    if (v56)
    {

      __break(1u);
    }

    else
    {
      v602 = v593;
      v603 = v594;
      sub_268CD54B0(&v602, &v606, &v605, &v604);
      v489 = 0;
      v602 = v596;
      v603 = v597;
      sub_268CD54B0(&v602, &v606, &v605, &v604);
      v488 = 0;
      _os_log_impl(&dword_268CBE000, v600, v601, "Checking for HA parse: %s", v492, 0xCu);
      sub_268CD54FC(v493, 0, v491);
      sub_268CD54FC(v494, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();

      v490 = v488;
    }
  }

  else
  {
    v57 = v556;

    v490 = v57;
  }

  v487 = v490;
  MEMORY[0x277D82BD8](v600);

  if (v583)
  {
    v486 = v583;
    v481 = v583;
    v641 = v583;
    v58 = sub_268D8E220();
    v482 = *v58;
    v483 = v58[1];

    v484 = sub_268F9A0A4();

    if (v484)
    {
      v480 = v484;
      v60 = v487;
      v476 = v484;
      v640 = v484;
      v639[1] = v484;
      v477 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
      v478 = sub_268DA5FC0();
      result = sub_268F9AF94();
      v479 = v60;
      if (v60)
      {
        __break(1u);
      }

      else
      {
        v474 = *(v559 + 48);
        v475 = v559 + 48;
        v473 = v474(v582, 1, v557) == 1;
        v472 = v473;
        sub_268D9C0BC(v582);
        if (!v472)
        {

          if (v572)
          {
            v440 = v572;
            v437 = v572;
            v611[3] = v572;
            v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570);
            sub_268DA6E24();
            sub_268F9B234();
            v438 = v611[2];

            v439 = v438;
          }

          else
          {
            v439 = 0;
          }

          v435 = v439;
          if (!v439)
          {
            v332 = sub_268F9B284();
            v331 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v331);

            v323 = 7;
            v324 = swift_allocObject();
            *(v324 + 16) = v572;
            v321 = 17;
            v326 = swift_allocObject();
            *(v326 + 16) = 32;
            v327 = swift_allocObject();
            *(v327 + 16) = 8;
            v322 = 32;
            v129 = swift_allocObject();
            v130 = v324;
            v325 = v129;
            *(v129 + 16) = v522;
            *(v129 + 24) = v130;
            v131 = swift_allocObject();
            v132 = v325;
            v329 = v131;
            *(v131 + 16) = v523;
            *(v131 + 24) = v132;
            v328 = sub_268F9B734();
            v330 = v133;

            v134 = v326;
            v135 = v330;
            *v330 = v524;
            v135[1] = v134;

            v136 = v327;
            v137 = v330;
            v330[2] = v525;
            v137[3] = v136;

            v138 = v329;
            v139 = v330;
            v330[4] = v526;
            v139[5] = v138;
            sub_268CD0F7C();

            if (os_log_type_enabled(v331, v332))
            {
              v140 = v479;
              v314 = sub_268F9B3A4();
              v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
              v315 = sub_268CD5448(0, v313, v313);
              v316 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v317 = v639;
              v639[0] = v314;
              v318 = &v638;
              v638 = v315;
              v319 = &v637;
              v637 = v316;
              sub_268CD549C(2, v639);
              sub_268CD549C(1, v317);
              v635 = v524;
              v636 = v326;
              sub_268CD54B0(&v635, v317, v318, v319);
              v320 = v140;
              if (v140)
              {

                __break(1u);
              }

              else
              {
                v635 = v525;
                v636 = v327;
                sub_268CD54B0(&v635, v639, &v638, &v637);
                v312 = 0;
                v635 = v526;
                v636 = v329;
                sub_268CD54B0(&v635, v639, &v638, &v637);
                _os_log_impl(&dword_268CBE000, v331, v332, "No associated user entities found: %s", v314, 0xCu);
                sub_268CD54FC(v315, 0, v313);
                sub_268CD54FC(v316, 1, MEMORY[0x277D84F70] + 8);
                sub_268F9B384();
              }
            }

            else
            {
            }

            MEMORY[0x277D82BD8](v331);

            v441 = 0;
            return v441 & 1;
          }

          v434 = v435;
          v432 = v435;
          v634 = v435;
          sub_268F9A064();
          v433 = v633;
          if (v633)
          {
            v431 = v433;
            v428 = v433;
            sub_268F9AEF4();
            v427 = v76;
            v429 = sub_268F9A0A4();

            v430 = v429;
          }

          else
          {
            v430 = 0;
          }

          v426 = v430;
          if (!v430)
          {
            v352 = sub_268F9B284();
            v351 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v351);

            v342 = 17;
            v344 = 7;
            v346 = swift_allocObject();
            *(v346 + 16) = 32;
            v347 = swift_allocObject();
            *(v347 + 16) = 8;
            v343 = 32;
            v117 = swift_allocObject();
            v118 = v432;
            v345 = v117;
            *(v117 + 16) = v517;
            *(v117 + 24) = v118;
            v119 = swift_allocObject();
            v120 = v345;
            v349 = v119;
            *(v119 + 16) = v518;
            *(v119 + 24) = v120;
            v348 = sub_268F9B734();
            v350 = v121;

            v122 = v346;
            v123 = v350;
            *v350 = v519;
            v123[1] = v122;

            v124 = v347;
            v125 = v350;
            v350[2] = v520;
            v125[3] = v124;

            v126 = v349;
            v127 = v350;
            v350[4] = v521;
            v127[5] = v126;
            sub_268CD0F7C();

            if (os_log_type_enabled(v351, v352))
            {
              v128 = v479;
              v335 = sub_268F9B3A4();
              v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
              v336 = sub_268CD5448(0, v334, v334);
              v337 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v338 = &v632;
              v632 = v335;
              v339 = &v631;
              v631 = v336;
              v340 = &v630;
              v630 = v337;
              sub_268CD549C(2, &v632);
              sub_268CD549C(1, v338);
              v628 = v519;
              v629 = v346;
              sub_268CD54B0(&v628, v338, v339, v340);
              v341 = v128;
              if (v128)
              {

                __break(1u);
              }

              else
              {
                v628 = v520;
                v629 = v347;
                sub_268CD54B0(&v628, &v632, &v631, &v630);
                v333 = 0;
                v628 = v521;
                v629 = v349;
                sub_268CD54B0(&v628, &v632, &v631, &v630);
                _os_log_impl(&dword_268CBE000, v351, v352, "No names identifiers of associated user entity found: %s", v335, 0xCu);
                sub_268CD54FC(v336, 0, v334);
                sub_268CD54FC(v337, 1, MEMORY[0x277D84F70] + 8);
                sub_268F9B384();
              }
            }

            else
            {
            }

            MEMORY[0x277D82BD8](v351);

            v441 = 0;
            return v441 & 1;
          }

          v425 = v426;
          v77 = v479;
          v423 = v426;
          v627 = v426;
          v626[1] = v426;
          result = sub_268F9AF94();
          v424 = v77;
          if (!v77)
          {
            if (v474(v578, 1, v557) == 1)
            {
              sub_268D9C0BC(v578);
              v373 = sub_268F9B284();
              v372 = *sub_268D8E144();
              MEMORY[0x277D82BE0](v372);

              v364 = 7;
              v365 = swift_allocObject();
              *(v365 + 16) = v423;
              v362 = 17;
              v367 = swift_allocObject();
              *(v367 + 16) = 32;
              v368 = swift_allocObject();
              *(v368 + 16) = 8;
              v363 = 32;
              v105 = swift_allocObject();
              v106 = v365;
              v366 = v105;
              *(v105 + 16) = v501;
              *(v105 + 24) = v106;
              v107 = swift_allocObject();
              v108 = v366;
              v370 = v107;
              *(v107 + 16) = v502;
              *(v107 + 24) = v108;
              v369 = sub_268F9B734();
              v371 = v109;

              v110 = v367;
              v111 = v371;
              *v371 = v503;
              v111[1] = v110;

              v112 = v368;
              v113 = v371;
              v371[2] = v504;
              v113[3] = v112;

              v114 = v370;
              v115 = v371;
              v371[4] = v505;
              v115[5] = v114;
              sub_268CD0F7C();

              if (os_log_type_enabled(v372, v373))
              {
                v116 = v424;
                v355 = sub_268F9B3A4();
                v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
                v356 = sub_268CD5448(0, v354, v354);
                v357 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                v358 = v626;
                v626[0] = v355;
                v359 = &v625;
                v625 = v356;
                v360 = &v624;
                v624 = v357;
                sub_268CD549C(2, v626);
                sub_268CD549C(1, v358);
                v622 = v503;
                v623 = v367;
                sub_268CD54B0(&v622, v358, v359, v360);
                v361 = v116;
                if (v116)
                {

                  __break(1u);
                }

                else
                {
                  v622 = v504;
                  v623 = v368;
                  sub_268CD54B0(&v622, v626, &v625, &v624);
                  v353 = 0;
                  v622 = v505;
                  v623 = v370;
                  sub_268CD54B0(&v622, v626, &v625, &v624);
                  _os_log_impl(&dword_268CBE000, v372, v373, "No HA identifier found in entities: %s", v355, 0xCu);
                  sub_268CD54FC(v356, 0, v354);
                  sub_268CD54FC(v357, 1, MEMORY[0x277D84F70] + 8);
                  sub_268F9B384();
                }
              }

              else
              {
              }

              MEMORY[0x277D82BD8](v372);

              v441 = 0;
              return v441 & 1;
            }

            v78 = v424;
            v420 = *(v559 + 32);
            v421 = v559 + 32;
            v420(v567, v578, v557);
            v621[1] = v423;
            result = sub_268F9AF94();
            v422 = v78;
            if (!v78)
            {
              if (v474(v576, 1, v557) == 1)
              {
                sub_268D9C0BC(v576);
                v394 = sub_268F9B284();
                v393 = *sub_268D8E144();
                MEMORY[0x277D82BE0](v393);

                v385 = 7;
                v386 = swift_allocObject();
                *(v386 + 16) = v423;
                v383 = 17;
                v388 = swift_allocObject();
                *(v388 + 16) = 32;
                v389 = swift_allocObject();
                *(v389 + 16) = 8;
                v384 = 32;
                v92 = swift_allocObject();
                v93 = v386;
                v387 = v92;
                *(v92 + 16) = v507;
                *(v92 + 24) = v93;
                v94 = swift_allocObject();
                v95 = v387;
                v391 = v94;
                *(v94 + 16) = v508;
                *(v94 + 24) = v95;
                v390 = sub_268F9B734();
                v392 = v96;

                v97 = v388;
                v98 = v392;
                *v392 = v509;
                v98[1] = v97;

                v99 = v389;
                v100 = v392;
                v392[2] = v510;
                v100[3] = v99;

                v101 = v391;
                v102 = v392;
                v392[4] = v511;
                v102[5] = v101;
                sub_268CD0F7C();

                if (os_log_type_enabled(v393, v394))
                {
                  v103 = v422;
                  v376 = sub_268F9B3A4();
                  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
                  v377 = sub_268CD5448(0, v375, v375);
                  v378 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v379 = v621;
                  v621[0] = v376;
                  v380 = &v620;
                  v620 = v377;
                  v381 = &v619;
                  v619 = v378;
                  sub_268CD549C(2, v621);
                  sub_268CD549C(1, v379);
                  v617 = v509;
                  v618 = v388;
                  sub_268CD54B0(&v617, v379, v380, v381);
                  v382 = v103;
                  if (v103)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v617 = v510;
                    v618 = v389;
                    sub_268CD54B0(&v617, v621, &v620, &v619);
                    v374 = 0;
                    v617 = v511;
                    v618 = v391;
                    sub_268CD54B0(&v617, v621, &v620, &v619);
                    _os_log_impl(&dword_268CBE000, v393, v394, "Setting identifier found in entities: %s", v376, 0xCu);
                    sub_268CD54FC(v377, 0, v375);
                    sub_268CD54FC(v378, 1, MEMORY[0x277D84F70] + 8);
                    sub_268F9B384();
                  }
                }

                else
                {
                }

                v104 = MEMORY[0x277D82BD8](v393);
                (*(v559 + 8))(v567, v557, v104);

                v441 = 1;
              }

              else
              {
                v420(v565, v576, v557);
                v419 = sub_268F9B284();
                v418 = *sub_268D8E144();
                MEMORY[0x277D82BE0](v418);
                v406 = v560;
                (*(v559 + 16))(v569, v567, v557);
                v407 = (*(v406 + 80) + 16) & ~*(v406 + 80);
                v410 = 7;
                v411 = swift_allocObject();
                v420((v411 + v407), v569, v557);
                v408 = 17;
                v413 = swift_allocObject();
                *(v413 + 16) = 32;
                v414 = swift_allocObject();
                *(v414 + 16) = 8;
                v409 = 32;
                v79 = swift_allocObject();
                v80 = v411;
                v412 = v79;
                *(v79 + 16) = v512;
                *(v79 + 24) = v80;
                v81 = swift_allocObject();
                v82 = v412;
                v416 = v81;
                *(v81 + 16) = v513;
                *(v81 + 24) = v82;
                v415 = sub_268F9B734();
                v417 = v83;

                v84 = v413;
                v85 = v417;
                *v417 = v514;
                v85[1] = v84;

                v86 = v414;
                v87 = v417;
                v417[2] = v515;
                v87[3] = v86;

                v88 = v416;
                v89 = v417;
                v417[4] = v516;
                v89[5] = v88;
                sub_268CD0F7C();

                if (os_log_type_enabled(v418, v419))
                {
                  v90 = v422;
                  v399 = sub_268F9B3A4();
                  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
                  v400 = sub_268CD5448(0, v398, v398);
                  v401 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
                  v402 = &v616;
                  v616 = v399;
                  v403 = &v615;
                  v615 = v400;
                  v404 = &v614;
                  v614 = v401;
                  sub_268CD549C(2, &v616);
                  sub_268CD549C(1, v402);
                  v612 = v514;
                  v613 = v413;
                  sub_268CD54B0(&v612, v402, v403, v404);
                  v405 = v90;
                  if (v90)
                  {

                    __break(1u);
                  }

                  else
                  {
                    v612 = v515;
                    v613 = v414;
                    sub_268CD54B0(&v612, &v616, &v615, &v614);
                    v397 = 0;
                    v612 = v516;
                    v613 = v416;
                    sub_268CD54B0(&v612, &v616, &v615, &v614);
                    _os_log_impl(&dword_268CBE000, v418, v419, "Found HA identifier: %s", v399, 0xCu);
                    sub_268CD54FC(v400, 0, v398);
                    sub_268CD54FC(v401, 1, MEMORY[0x277D84F70] + 8);
                    sub_268F9B384();
                  }
                }

                else
                {
                }

                v91 = MEMORY[0x277D82BD8](v418);
                v396 = *(v559 + 8);
                v395 = v559 + 8;
                v396(v565, v557, v91);
                (v396)(v567, v557);

                v441 = 0;
              }

              return v441 & 1;
            }

            goto LABEL_113;
          }

LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        v62 = v479;
        v468 = sub_268F9B284();
        v470 = *sub_268D8E144();
        MEMORY[0x277D82BE0](v470);
        v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v469 = sub_268F9B734();
        sub_268F9AC14(v468, &dword_268CBE000, v470, v527, 33, 2);

        MEMORY[0x277D82BD8](v470);
        v611[1] = v476;
        result = sub_268F9AF94();
        v471 = v62;
        if (!v62)
        {
          if (v474(v580, 1, v557) != 1)
          {
            v451 = v560;
            v454 = *(v559 + 32);
            v453 = v559 + 32;
            v454(v571, v580, v557);
            v466 = sub_268F9B284();
            v465 = *sub_268D8E144();
            MEMORY[0x277D82BE0](v465);
            (*(v559 + 16))(v569, v571, v557);
            v452 = (*(v451 + 80) + 16) & ~*(v451 + 80);
            v457 = 7;
            v458 = swift_allocObject();
            v454((v458 + v452), v569, v557);
            v455 = 17;
            v460 = swift_allocObject();
            *(v460 + 16) = 32;
            v461 = swift_allocObject();
            *(v461 + 16) = 8;
            v456 = 32;
            v63 = swift_allocObject();
            v64 = v458;
            v459 = v63;
            *(v63 + 16) = v530;
            *(v63 + 24) = v64;
            v65 = swift_allocObject();
            v66 = v459;
            v463 = v65;
            *(v65 + 16) = v531;
            *(v65 + 24) = v66;
            v462 = sub_268F9B734();
            v464 = v67;

            v68 = v460;
            v69 = v464;
            *v464 = v532;
            v69[1] = v68;

            v70 = v461;
            v71 = v464;
            v464[2] = v533;
            v71[3] = v70;

            v72 = v463;
            v73 = v464;
            v464[4] = v534;
            v73[5] = v72;
            sub_268CD0F7C();

            if (os_log_type_enabled(v465, v466))
            {
              v74 = v471;
              v444 = sub_268F9B3A4();
              v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
              v445 = sub_268CD5448(0, v443, v443);
              v446 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
              v447 = v611;
              v611[0] = v444;
              v448 = &v610;
              v610 = v445;
              v449 = &v609;
              v609 = v446;
              sub_268CD549C(2, v611);
              sub_268CD549C(1, v447);
              v607 = v532;
              v608 = v460;
              sub_268CD54B0(&v607, v447, v448, v449);
              v450 = v74;
              if (v74)
              {

                __break(1u);
              }

              else
              {
                v607 = v533;
                v608 = v461;
                sub_268CD54B0(&v607, v611, &v610, &v609);
                v442 = 0;
                v607 = v534;
                v608 = v463;
                sub_268CD54B0(&v607, v611, &v610, &v609);
                _os_log_impl(&dword_268CBE000, v465, v466, "HA identifier detected: %s.", v444, 0xCu);
                sub_268CD54FC(v445, 0, v443);
                sub_268CD54FC(v446, 1, MEMORY[0x277D84F70] + 8);
                sub_268F9B384();
              }
            }

            else
            {
            }

            v75 = MEMORY[0x277D82BD8](v465);
            (*(v559 + 8))(v571, v557, v75);

            v441 = 1;
            return v441 & 1;
          }

          sub_268D9C0BC(v580);
          v309 = sub_268F9B284();
          v311 = *sub_268D8E144();
          MEMORY[0x277D82BE0](v311);
          v310 = sub_268F9B734();
          sub_268F9AC14(v309, &dword_268CBE000, v311, v529, 45, 2);

          MEMORY[0x277D82BD8](v311);

          v485 = v471;
          goto LABEL_65;
        }
      }

      __break(1u);
      goto LABEL_112;
    }

    v59 = v487;

    v485 = v59;
  }

  else
  {
    v485 = v487;
  }

LABEL_65:
  v308 = v485;

  if (v572 && (v307 = v572, v305 = v572, v646 = v572, v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7F0, &qword_268F9F570), v304 = sub_268DA6E24(), sub_268F9B234(), v306 = v645, , v306 && (v302 = v306, v300 = v306, sub_268F9A064(), v301 = v644, , v301 && (v299 = v301, v297 = v301, v298 = sub_268F99E94(), , v298))))
  {
    v296 = v298;
    v293 = v298;
    v643 = v298;
    sub_268F9B234();
    v294 = v642;

    v295 = v294;
  }

  else
  {
    v295 = 0;
  }

  v292 = v295;
  if (!v295)
  {
    v212 = sub_268F9B284();
    v211 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v211);

    v203 = 7;
    v204 = swift_allocObject();
    *(v204 + 16) = v572;
    v201 = 17;
    v206 = swift_allocObject();
    *(v206 + 16) = 32;
    v207 = swift_allocObject();
    *(v207 + 16) = 8;
    v202 = 32;
    v180 = swift_allocObject();
    v181 = v204;
    v205 = v180;
    *(v180 + 16) = v551;
    *(v180 + 24) = v181;
    v182 = swift_allocObject();
    v183 = v205;
    v209 = v182;
    *(v182 + 16) = v552;
    *(v182 + 24) = v183;
    v208 = sub_268F9B734();
    v210 = v184;

    v185 = v206;
    v186 = v210;
    *v210 = v553;
    v186[1] = v185;

    v187 = v207;
    v188 = v210;
    v210[2] = v554;
    v188[3] = v187;

    v189 = v209;
    v190 = v210;
    v210[4] = v555;
    v190[5] = v189;
    sub_268CD0F7C();

    if (os_log_type_enabled(v211, v212))
    {
      v191 = v308;
      v194 = sub_268F9B3A4();
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v195 = sub_268CD5448(0, v193, v193);
      v196 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v197 = &v669;
      v669 = v194;
      v198 = &v668;
      v668 = v195;
      v199 = &v667;
      v667 = v196;
      sub_268CD549C(2, &v669);
      sub_268CD549C(1, v197);
      v665 = v553;
      v666 = v206;
      sub_268CD54B0(&v665, v197, v198, v199);
      v200 = v191;
      if (v191)
      {

        __break(1u);
      }

      else
      {
        v665 = v554;
        v666 = v207;
        sub_268CD54B0(&v665, &v669, &v668, &v667);
        v192 = 0;
        v665 = v555;
        v666 = v209;
        sub_268CD54B0(&v665, &v669, &v668, &v667);
        _os_log_impl(&dword_268CBE000, v211, v212, "No associated user entities found: %s", v194, 0xCu);
        sub_268CD54FC(v195, 0, v193);
        sub_268CD54FC(v196, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v211);
    v441 = 0;
    return v441 & 1;
  }

  v291 = v292;
  v289 = v292;
  v664 = v292;
  sub_268F9A064();
  v290 = v663;
  if (v663)
  {
    v288 = v290;
    v285 = v290;
    sub_268F9AEF4();
    v284 = v141;
    v286 = sub_268F9A0A4();

    v287 = v286;
  }

  else
  {
    v287 = 0;
  }

  v283 = v287;
  if (!v287)
  {
    v232 = sub_268F9B284();
    v231 = *sub_268D8E144();
    MEMORY[0x277D82BE0](v231);

    v222 = 17;
    v224 = 7;
    v226 = swift_allocObject();
    *(v226 + 16) = 32;
    v227 = swift_allocObject();
    *(v227 + 16) = 8;
    v223 = 32;
    v168 = swift_allocObject();
    v169 = v289;
    v225 = v168;
    *(v168 + 16) = v546;
    *(v168 + 24) = v169;
    v170 = swift_allocObject();
    v171 = v225;
    v229 = v170;
    *(v170 + 16) = v547;
    *(v170 + 24) = v171;
    v228 = sub_268F9B734();
    v230 = v172;

    v173 = v226;
    v174 = v230;
    *v230 = v548;
    v174[1] = v173;

    v175 = v227;
    v176 = v230;
    v230[2] = v549;
    v176[3] = v175;

    v177 = v229;
    v178 = v230;
    v230[4] = v550;
    v178[5] = v177;
    sub_268CD0F7C();

    if (os_log_type_enabled(v231, v232))
    {
      v179 = v308;
      v215 = sub_268F9B3A4();
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v216 = sub_268CD5448(0, v214, v214);
      v217 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v218 = &v662;
      v662 = v215;
      v219 = &v661;
      v661 = v216;
      v220 = &v660;
      v660 = v217;
      sub_268CD549C(2, &v662);
      sub_268CD549C(1, v218);
      v658 = v548;
      v659 = v226;
      sub_268CD54B0(&v658, v218, v219, v220);
      v221 = v179;
      if (v179)
      {

        __break(1u);
      }

      else
      {
        v658 = v549;
        v659 = v227;
        sub_268CD54B0(&v658, &v662, &v661, &v660);
        v213 = 0;
        v658 = v550;
        v659 = v229;
        sub_268CD54B0(&v658, &v662, &v661, &v660);
        _os_log_impl(&dword_268CBE000, v231, v232, "No names identifiers of associated user entity found: %s", v215, 0xCu);
        sub_268CD54FC(v216, 0, v214);
        sub_268CD54FC(v217, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v231);

    v441 = 0;
    return v441 & 1;
  }

  v282 = v283;
  v142 = v308;
  v279 = v283;
  v657 = v283;
  v656[1] = v283;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  v281 = v142;
  if (!v142)
  {
    if ((*(v559 + 48))(v574, 1, v557) == 1)
    {
      sub_268D9C0BC(v574);
      v253 = sub_268F9B284();
      v252 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v252);

      v244 = 7;
      v245 = swift_allocObject();
      *(v245 + 16) = v279;
      v242 = 17;
      v247 = swift_allocObject();
      *(v247 + 16) = 32;
      v248 = swift_allocObject();
      *(v248 + 16) = 8;
      v243 = 32;
      v156 = swift_allocObject();
      v157 = v245;
      v246 = v156;
      *(v156 + 16) = v536;
      *(v156 + 24) = v157;
      v158 = swift_allocObject();
      v159 = v246;
      v250 = v158;
      *(v158 + 16) = v537;
      *(v158 + 24) = v159;
      v249 = sub_268F9B734();
      v251 = v160;

      v161 = v247;
      v162 = v251;
      *v251 = v538;
      v162[1] = v161;

      v163 = v248;
      v164 = v251;
      v251[2] = v539;
      v164[3] = v163;

      v165 = v250;
      v166 = v251;
      v251[4] = v540;
      v166[5] = v165;
      sub_268CD0F7C();

      if (os_log_type_enabled(v252, v253))
      {
        v167 = v281;
        v235 = sub_268F9B3A4();
        v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v236 = sub_268CD5448(0, v234, v234);
        v237 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v238 = v656;
        v656[0] = v235;
        v239 = &v655;
        v655 = v236;
        v240 = &v654;
        v654 = v237;
        sub_268CD549C(2, v656);
        sub_268CD549C(1, v238);
        v652 = v538;
        v653 = v247;
        sub_268CD54B0(&v652, v238, v239, v240);
        v241 = v167;
        if (v167)
        {

          __break(1u);
        }

        else
        {
          v652 = v539;
          v653 = v248;
          sub_268CD54B0(&v652, v656, &v655, &v654);
          v233 = 0;
          v652 = v540;
          v653 = v250;
          sub_268CD54B0(&v652, v656, &v655, &v654);
          _os_log_impl(&dword_268CBE000, v252, v253, "No HA identifier found in entities: %s", v235, 0xCu);
          sub_268CD54FC(v236, 0, v234);
          sub_268CD54FC(v237, 1, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v252);

      v441 = 0;
    }

    else
    {
      v263 = v560;
      v266 = *(v559 + 32);
      v265 = v559 + 32;
      v266(v563, v574, v557);
      v278 = sub_268F9B284();
      v277 = *sub_268D8E144();
      MEMORY[0x277D82BE0](v277);
      (*(v559 + 16))(v569, v563, v557);
      v264 = (*(v263 + 80) + 16) & ~*(v263 + 80);
      v269 = 7;
      v270 = swift_allocObject();
      v266((v270 + v264), v569, v557);
      v267 = 17;
      v272 = swift_allocObject();
      *(v272 + 16) = 32;
      v273 = swift_allocObject();
      *(v273 + 16) = 8;
      v268 = 32;
      v143 = swift_allocObject();
      v144 = v270;
      v271 = v143;
      *(v143 + 16) = v541;
      *(v143 + 24) = v144;
      v145 = swift_allocObject();
      v146 = v271;
      v275 = v145;
      *(v145 + 16) = v542;
      *(v145 + 24) = v146;
      v274 = sub_268F9B734();
      v276 = v147;

      v148 = v272;
      v149 = v276;
      *v276 = v543;
      v149[1] = v148;

      v150 = v273;
      v151 = v276;
      v276[2] = v544;
      v151[3] = v150;

      v152 = v275;
      v153 = v276;
      v276[4] = v545;
      v153[5] = v152;
      sub_268CD0F7C();

      if (os_log_type_enabled(v277, v278))
      {
        v154 = v281;
        v256 = sub_268F9B3A4();
        v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v257 = sub_268CD5448(0, v255, v255);
        v258 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v259 = &v651;
        v651 = v256;
        v260 = &v650;
        v650 = v257;
        v261 = &v649;
        v649 = v258;
        sub_268CD549C(2, &v651);
        sub_268CD549C(1, v259);
        v647 = v543;
        v648 = v272;
        sub_268CD54B0(&v647, v259, v260, v261);
        v262 = v154;
        if (v154)
        {

          __break(1u);
        }

        else
        {
          v647 = v544;
          v648 = v273;
          sub_268CD54B0(&v647, &v651, &v650, &v649);
          v254 = 0;
          v647 = v545;
          v648 = v275;
          sub_268CD54B0(&v647, &v651, &v650, &v649);
          _os_log_impl(&dword_268CBE000, v277, v278, "Found HA identifier: %s", v256, 0xCu);
          sub_268CD54FC(v257, 0, v255);
          sub_268CD54FC(v258, 1, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();
        }
      }

      else
      {
      }

      v155 = MEMORY[0x277D82BD8](v277);
      (*(v559 + 8))(v563, v557, v155);

      v441 = 1;
    }

    return v441 & 1;
  }

LABEL_114:
  __break(1u);
  return result;
}

unint64_t sub_268DA5FC0()
{
  v2 = qword_280FE2868;
  if (!qword_280FE2868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7E0, &qword_268F9F558);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2868);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DA6050(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC838, &qword_268F9F828);
  return sub_268F9AE64();
}

uint64_t sub_268DA60F4(uint64_t a1)
{
  v5 = a1;
  v8 = sub_268F99F64();
  v7 = *(v8 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v8, v5, v8, v1);
  v9 = &v4 - v6;
  (*(v7 + 16))(v2);
  return sub_268F9AE64();
}

uint64_t sub_268DA61A8(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E8, &unk_268F9F560);
  return sub_268F9AE64();
}

uint64_t sub_268DA61FC(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC830, &qword_268F9F820);
  return sub_268F9AE64();
}

uint64_t sub_268DA6250(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA7608();
  return sub_268F9AE74();
}

uint64_t SupportedFlowDomainProvider.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  sub_268D28414((v0 + 72));
  return v2;
}

void sub_268DA6340()
{
  sub_268F9B734();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  v0[5] = 5;
  v0[6] = 6;
  v0[7] = 7;
  v0[8] = 8;
  v0[9] = 9;
  sub_268CD0F7C();
}

uint64_t sub_268DA675C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268DA1A0C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268DA6794@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268DA63D0(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_268DA69E0(const void *a1, void *a2)
{
  v6 = sub_268F99F64();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268DA6B08()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268D9D8A4(v2);
}

uint64_t sub_268DA6B78()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268D9DA3C(v2);
}

unint64_t sub_268DA6BFC()
{
  v2 = qword_280FE2840;
  if (!qword_280FE2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC560, qword_268FA0000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2840);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA6C84()
{
  v2 = qword_280FE36F0;
  if (!qword_280FE36F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE36F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DA6D00()
{
  v1 = *(sub_268F99F64() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268DA15DC(v2);
}

uint64_t sub_268DA6DC0()
{
  v1 = *(sub_268F99F64() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_268DA60F4(v2);
}

unint64_t sub_268DA6E24()
{
  v2 = qword_280FE2858;
  if (!qword_280FE2858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7F0, &qword_268F9F570);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2858);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA6EAC()
{
  v2 = qword_2802DC7F8;
  if (!qword_2802DC7F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC7F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA6F28()
{
  v2 = qword_2802DC800;
  if (!qword_2802DC800)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC800);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA6FBC()
{
  v2 = qword_2802DC808;
  if (!qword_2802DC808)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC808);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SupportedFlowDomain(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF8)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 7) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 248;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 8;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SupportedFlowDomain(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF8)
  {
    v5 = ((a3 + 7) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF8)
  {
    v4 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

unint64_t sub_268DA7458()
{
  v2 = qword_2802DC810;
  if (!qword_2802DC810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC818, qword_268F9F6A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC810);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA74F8()
{
  v2 = qword_2802DC820;
  if (!qword_2802DC820)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA758C()
{
  v2 = qword_2802DC828;
  if (!qword_2802DC828)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC828);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA7608()
{
  v2 = qword_280FE2860;
  if (!qword_280FE2860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC7E0, &qword_268F9F558);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2860);
    return WitnessTable;
  }

  return v2;
}

id sub_268DA7690(uint64_t a1, void *a2, void *a3)
{
  v51 = a1;
  v38 = a2;
  v37 = a3;
  v47 = "Forming SettingsNLIntent wrapper from NLv3 intent: %@";
  v32 = "No verb found. Returning GetSettingIntent by default.";
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v58 = 0;
  v33 = 0;
  v34 = (*(*(type metadata accessor for SettingsNLIntent(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v35 = &v23[-v34];
  v36 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, &v23[-v34], v8, v9);
  v56 = &v23[-v36];
  v63 = &v23[-v36];
  v52 = sub_268F9A704();
  v40 = *(v52 - 8);
  v41 = v52 - 8;
  v39 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51, v38, v37, v10);
  v55 = &v23[-v39];
  v62 = v11;
  v61 = v12;
  v60 = v13;
  v48 = sub_268F9B284();
  v50 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v50);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v46 = sub_268F9B734();
  v44 = v14;
  v54 = *(v40 + 16);
  v53 = v40 + 16;
  v54(v55, v51, v52);
  sub_268DA7B0C();
  v42 = sub_268F9AE74();
  v43 = v15;
  v44[3] = MEMORY[0x277D837D0];
  v16 = sub_268CDD224();
  v17 = v42;
  v18 = v43;
  v19 = v44;
  v44[4] = v16;
  *v19 = v17;
  v19[1] = v18;
  sub_268CD0F7C();
  v49 = v20;
  sub_268F9AC14(v48, &dword_268CBE000, v50, v47, 53, 2);

  v21 = MEMORY[0x277D82BD8](v50);
  (v54)(v55, v51, v52, v21);
  sub_268E42410(v55, v56);
  v57 = sub_268DA7B8C();
  if (v57 == 6)
  {
    v24 = sub_268F9B284();
    v26 = *sub_268DC7EA8();
    MEMORY[0x277D82BE0](v26);
    v27 = 0;
    v25 = sub_268F9B734();
    sub_268F9AC14(v24, &dword_268CBE000, v26, v32, 53, 2);

    MEMORY[0x277D82BD8](v26);
    sub_268D2E630();
    sub_268DA7C90(v56, v35);
    memset(v59, 0, sizeof(v59));
    v28 = sub_268EAF564(v35, v59);
    sub_268D87800(v56);
    return v28;
  }

  else
  {
    v31 = v57;
    v58 = v57;
    v29 = sub_268DA7CF4(v56, v57, v38, v37);
    sub_268D87800(v56);
    return v29;
  }
}

unint64_t sub_268DA7B0C()
{
  v2 = qword_2802DC840;
  if (!qword_2802DC840)
  {
    sub_268F9A704();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC840);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DA7B8C()
{
  v3 = sub_268E4277C();
  if (v3 == 6)
  {
    v2 = sub_268E42860();
    if (v2 == 6)
    {
      v1 = sub_268E428C8();
      if (v1 == 6)
      {
        return sub_268E42B00();
      }

      else
      {
        return v1;
      }
    }

    else
    {
      return v2;
    }
  }

  else
  {
    return v3;
  }
}

uint64_t sub_268DA7C90(uint64_t a1, uint64_t a2)
{
  v2 = sub_268F9A704();
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

id sub_268DA7CF4(uint64_t a1, unsigned int a2, void *a3, void *a4)
{
  v59 = a1;
  v73 = a2;
  v56 = a3;
  v57 = a4;
  v69 = "Finding corresponding SiriKit intent %@ based on verb: %@";
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v46 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v47 = v34 - v46;
  v48 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34 - v46, v9, v10, v11);
  v49 = v34 - v48;
  v50 = 0;
  v51 = sub_268F9ACE4();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50, v12, v13, v14);
  v55 = v34 - v54;
  v89 = v34 - v54;
  v60 = type metadata accessor for SettingsNLIntent(v15);
  v58 = (*(*(v60 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v73, v56, v57);
  v61 = v34 - v58;
  v88 = v16;
  v87 = v17;
  v86 = v18;
  v85 = v19;
  v70 = sub_268F9B284();
  v72 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v72);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v67 = sub_268F9B734();
  v66 = v20;
  sub_268DA7C90(v59, v61);
  sub_268DA967C();
  v63 = sub_268F9AE74();
  v62 = v21;
  v64 = MEMORY[0x277D837D0];
  v66[3] = MEMORY[0x277D837D0];
  v22 = sub_268CDD224();
  v23 = v62;
  v24 = v66;
  v25 = v73;
  v26 = v22;
  v27 = v63;
  v65 = v26;
  v66[4] = v26;
  *v24 = v27;
  v24[1] = v23;
  v84 = v25;
  v28 = sub_268F9AE64();
  v29 = v65;
  v30 = v66;
  v66[8] = v64;
  v30[9] = v29;
  v30[5] = v28;
  v30[6] = v31;
  sub_268CD0F7C();
  v71 = v32;
  sub_268F9AC14(v70, &dword_268CBE000, v72, v69, 57, 2);

  MEMORY[0x277D82BD8](v72);
  if (!v73)
  {
    sub_268DA96FC();
    sub_268DA7C90(v59, v61);
    memset(v83, 0, sizeof(v83));
    return sub_268EC5698(v61, v83);
  }

  if (v73 == 1)
  {
    sub_268D2E630();
    sub_268DA7C90(v59, v61);
    v44 = v74;
    sub_268D35D60(v56, v74);
    return sub_268EAF564(v61, v44);
  }

  else if (v73 == 3)
  {
    sub_268E42694(&v82);
    v81 = v82;
    v43 = v82 == 65;
    if (v82 == 65)
    {
      sub_268D35D60(v57, v76);
      if (v76[3])
      {
        v40 = __dst;
        sub_268CDF978(v76, __dst);
        v42 = v78;
        v41 = v79;
        __swift_project_boxed_opaque_existential_1(v40, v78);
        (*(v41 + 24))(v42);
        if ((*(v52 + 48))(v49, 1, v51) != 1)
        {
          (*(v52 + 32))(v55, v49, v51);
          (*(v52 + 16))(v47, v55, v51);
          (*(v52 + 56))(v47, 0, 1, v51);
          v38 = __dst;
          v37 = v75;
          sub_268CDE730(__dst, v75);
          v39 = sub_268DA83CC(v59, v56, v47, v37);
          sub_268D28414(v37);
          sub_268D59D2C(v47);
          (*(v52 + 8))(v55, v51);
          __swift_destroy_boxed_opaque_existential_0(v38);
          return v39;
        }

        sub_268D59D2C(v49);
        __swift_destroy_boxed_opaque_existential_0(__dst);
      }

      else
      {
        sub_268D28414(v76);
      }
    }

    sub_268CD7620();
    sub_268DA7C90(v59, v61);
    v35 = v80;
    sub_268D35D60(v56, v80);
    v36 = sub_268E88DA0(v61, v35);
    if (!v36)
    {
      return 0;
    }

    v34[1] = v36;
    v34[0] = v36;
    return v34[0];
  }

  else
  {
    return sub_268DA8EF0(v59, v56, v57);
  }
}

id sub_268DA83CC(uint64_t a1, void *a2, const void *a3, void *a4)
{
  v61 = a1;
  v60 = a2;
  v59 = a3;
  v73 = a4;
  v69 = "Verb is 'set'. Finding corresponding SiriKit intent based on type of setting name populated by NL";
  v54 = "Creating a default intent with unknown setting to be handled gracefully later.";
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  countAndFlagsBits = 0;
  v87 = 0;
  v85 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v55 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v56 = &v24[-v55];
  v57 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v24[-v55], v9, v10, v11);
  v58 = &v24[-v57];
  v67 = 0;
  v62 = sub_268F9ACE4();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61, v60, v59, v73);
  v66 = &v24[-v65];
  v97 = &v24[-v65];
  v96 = v12;
  v95 = v13;
  v94 = v14;
  v93 = v15;
  v70 = sub_268F9B284();
  v72 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v72);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v71 = sub_268F9B734();
  sub_268F9AC14(v70, &dword_268CBE000, v72, v69, 97, 2);

  MEMORY[0x277D82BD8](v72);
  sub_268D35D60(v73, v89);
  if (!v89[3])
  {
    sub_268D28414(v89);
LABEL_17:
    v25 = sub_268F9B294();
    v27 = *sub_268DC7F08();
    MEMORY[0x277D82BE0](v27);
    v29 = 0;
    v26 = sub_268F9B734();
    sub_268F9AC14(v25, &dword_268CBE000, v27, v54, 78, 2);

    MEMORY[0x277D82BD8](v27);
    sub_268CD7620();
    v28 = v88;
    memset(v88, 0, sizeof(v88));
    v30 = sub_268F284EC(v29, v29, v88, v29, v29);
    sub_268D28414(v28);
    return sub_268DA95CC(v30, v29, v29);
  }

  sub_268CDF978(v89, &__dst);
  sub_268D9FE58(v59, v56);
  v52 = *(v63 + 48);
  v53 = v63 + 48;
  if (v52(v56, 1, v62) == 1)
  {
    v51 = v91;
    v50 = v92;
    __swift_project_boxed_opaque_existential_1(&__dst, v91);
    (*(v50 + 24))(v51);
    if (v52(v56, 1, v62) != 1)
    {
      sub_268D59D2C(v56);
    }
  }

  else
  {
    (*(v63 + 32))(v58, v56, v62);
    (*(v63 + 56))(v58, 0, 1, v62);
  }

  if (v52(v58, 1, v62) == 1)
  {
    sub_268D59D2C(v58);
    __swift_destroy_boxed_opaque_existential_0(&__dst);
    goto LABEL_17;
  }

  (*(v63 + 32))(v66, v58, v62);
  v49._countAndFlagsBits = sub_268F9ACC4();
  v49._object = v16;
  countAndFlagsBits = v49._countAndFlagsBits;
  v87 = v16;

  v46 = 0;
  sub_268DA9760();
  v47 = sub_268DA9564(v46, v46, v46, v46, v46, v46);
  v48 = sub_268F284EC(v49._countAndFlagsBits, v49._object, v60, v47, v46);
  MEMORY[0x277D82BD8](v47);

  v85 = v48;

  BinarySettingIdentifier.init(rawValue:)(v49);
  v83 = v84;
  v45 = v84 != 65;
  if (v84 == 65)
  {

    NumericSettingIdentifier.init(rawValue:)(v49);
    v81 = v82;
    v36 = v82 != 13;
    if (v82 == 13)
    {
      MEMORY[0x277D82BD8](v48);

      (*(v63 + 8))(v66, v62);
      __swift_destroy_boxed_opaque_existential_0(&__dst);
      goto LABEL_17;
    }

    v31 = sub_268D588E0();
    v34 = sub_268E3DE20(v61);
    v33 = v20;
    v79 = v34;
    v80 = v20;
    v32 = sub_268E3E06C(v61);
    v78 = v32;
    has_malloc_size = _swift_stdlib_has_malloc_size();
    v22 = sub_268F28680(v61, has_malloc_size & 1);
    v35 = sub_268DA961C(v48, v32, v33, v34, v22);

    (*(v63 + 8))(v66, v62);
    __swift_destroy_boxed_opaque_existential_0(&__dst);
    return v35;
  }

  else
  {
    v41 = sub_268CD7620();
    v44 = sub_268E892CC(v61);
    v42 = v17;
    v76 = v44;
    v43 = 1;
    v77 = v17 & 1;
    MEMORY[0x277D82BE0](v48);
    v74 = v44;
    if (v42 & 1 & v43)
    {
      v40 = 0;
    }

    else
    {
      v40 = v74;
    }

    v37 = v40;
    v18 = _swift_stdlib_has_malloc_size();
    v19 = sub_268F28680(v61, v18 & 1);
    v38 = sub_268DA95CC(v48, v37, v19);
    MEMORY[0x277D82BD8](v48);

    (*(v63 + 8))(v66, v62);
    __swift_destroy_boxed_opaque_existential_0(&__dst);
    return v38;
  }
}

id sub_268DA8EF0(uint64_t a1, void *a2, void *a3)
{
  v35 = a1;
  v39 = a2;
  v38 = a3;
  v43 = "Verb is 'set'. Finding corresponding SiriKit intent based on type of setting name populated by NL";
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5C8, &qword_268F9F530);
  v36 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v37 = &v14 - v36;
  v42 = 0;
  v8 = type metadata accessor for SettingsNLIntent(0);
  v40 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v39, v38, v9);
  v41 = &v14 - v40;
  v64 = a1;
  v63 = v10;
  v62 = v11;
  v44 = sub_268F9B284();
  v46 = *sub_268DC7EA8();
  MEMORY[0x277D82BE0](v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v45 = sub_268F9B734();
  sub_268F9AC14(v44, &dword_268CBE000, v46, v43, 97, 2);

  MEMORY[0x277D82BD8](v46);
  sub_268E42694(&v61);
  v60[2] = v61;
  v34 = v61 != 65;
  if (v61 != 65)
  {
    sub_268CD7620();
    sub_268DA7C90(v35, v41);
    v32 = &v47;
    sub_268D35D60(v39, &v47);
    v33 = sub_268E88DA0(v41, v32);
    if (!v33)
    {
      return 0;
    }

    v31 = v33;
    return v33;
  }

  sub_268E4262C();
  v60[0] = v60[1];
  v28 = &v59;
  v59 = 10;
  v27 = &v58;
  sub_268D288B4(v60, &v57);
  sub_268D288B4(v28, v27);
  if (v57 != 13)
  {
    sub_268D288B4(&v57, &v50);
    if (v58 != 13)
    {
      v25 = &v49;
      v49 = v50;
      v24 = &v48;
      v48 = v58;
      sub_268D91118();
      v26 = sub_268F9AE04();
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v58 != 13)
  {
LABEL_14:
    v26 = 0;
    goto LABEL_12;
  }

  v26 = 1;
LABEL_12:
  if (v26)
  {
    sub_268CD7620();
    sub_268DA7C90(v35, v41);
    v23 = sub_268E890A8(v41);
    if (!v23)
    {
      return 0;
    }

    v22 = v23;
    return v23;
  }

  else
  {
    sub_268E4262C();
    v55 = v56;
    if (v56 != 13)
    {
      sub_268D588E0();
      sub_268DA7C90(v35, v41);
      v18 = &v53;
      sub_268D35D60(v39, &v53);
      v19 = sub_268E3DA44(v41, v18);
      if (v19)
      {
        v17 = v19;
        v16 = v19;
      }

      else
      {
        v16 = 0;
      }

      v52 = v16;
      if (v16)
      {
        return v52;
      }

      sub_268D2E630();
      sub_268DA7C90(v35, v41);
      v15 = &v51;
      sub_268D35D60(v39, &v51);
      v54 = sub_268EAF564(v41, v15);
      if (v52)
      {
        sub_268D35038(&v52);
      }

      return v54;
    }

    else
    {
      v12 = sub_268F9ACE4();
      (*(*(v12 - 8) + 56))(v37, 1);
      v14 = sub_268DA83CC(v35, v39, v37, v38);
      sub_268D59D2C(v37);
      return v14;
    }
  }
}

unint64_t sub_268DA967C()
{
  v2 = qword_2802DC848;
  if (!qword_2802DC848)
  {
    type metadata accessor for SettingsNLIntent(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DA96FC()
{
  v2 = qword_2802DC850;
  if (!qword_2802DC850)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC850);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268DA9760()
{
  v2 = qword_2802DC858;
  if (!qword_2802DC858)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC858);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_268DA97D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  if (a2)
  {
    v14 = sub_268F9AE14();

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a4)
  {
    v12 = sub_268F9AE14();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v11 = sub_268F9AE14();

    v7 = [v18 initWithBundleIdentifier:v15 bundleVersion:v13 appName:v11];
  }

  else
  {
    v7 = [v18 initWithBundleIdentifier:v15 bundleVersion:v13 appName:0];
  }

  v10 = v7;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v15);
  return v10;
}

id sub_268DA9980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 initWithSettingMetadata:a1 binaryValue:a2 temporalEventTrigger:?];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a1);
  return v7;
}

id sub_268DA99EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [v5 initWithSettingMetadata:a1 numericValue:a2 boundedValue:a3 action:a4 temporalEventTrigger:?];
  MEMORY[0x277D82BD8](a5);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v10;
}

id sub_268DA9A7C(uint64_t a1, uint64_t a2)
{
  sub_268CD795C();
  MEMORY[0x277D82BE0](a2);
  return sub_268CD42AC(a1, a2);
}

uint64_t sub_268DA9AE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = v14;
  *(v8 + 200) = v13;
  *(v8 + 37) = v12;
  *(v8 + 192) = v11;
  *(v8 + 184) = a8;
  *(v8 + 176) = a7;
  *(v8 + 36) = a6 & 1;
  *(v8 + 35) = a5;
  *(v8 + 168) = a4;
  *(v8 + 160) = a3;
  *(v8 + 152) = a2;
  *(v8 + 34) = a1 & 1;
  *(v8 + 88) = v8;
  *(v8 + 232) = 0;
  *(v8 + 96) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 240) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 104) = 0;
  *(v8 + 33) = 0;
  *(v8 + 120) = 0;
  *(v8 + 232) = a1 & 1;
  *(v8 + 96) = a2;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 240) = a6 & 1;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 72) = v11;
  *(v8 + 80) = v12 & 1;
  *(v8 + 56) = v13;
  *(v8 + 64) = v14;

  return MEMORY[0x2822009F8](sub_268DA9C20, 0);
}

uint64_t sub_268DA9C20()
{
  v1 = *(v0 + 37);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);
  *(v0 + 88) = v0;
  v39 = v2;
  v40 = v1 & 1;
  MEMORY[0x277D82BE0](v3);
  if (v40)
  {
    v37 = [*(v38 + 152) binaryValue];
  }

  else
  {
    v37 = v39;
  }

  MEMORY[0x277D82BD8](*(v38 + 152));
  *(v38 + 104) = v37;
  if (v37 == 1)
  {
    *(v38 + 33) = 1;
    v36 = 1;
  }

  else if (v37 == 2)
  {
    *(v38 + 33) = 0;
    v36 = 0;
  }

  else
  {
    if (v37 != 3)
    {
      v29 = *(v38 + 152);
      v33 = sub_268F9B294();
      v5 = sub_268DC7AE8();
      v34 = *v5;
      MEMORY[0x277D82BE0](*v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v32 = v6;
      MEMORY[0x277D82BE0](v29);
      *(v38 + 112) = v29;
      sub_268CD7620();
      sub_268D28940();
      v30 = sub_268F9AE74();
      v31 = v7;
      v32[3] = MEMORY[0x277D837D0];
      v32[4] = sub_268CDD224();
      *v32 = v30;
      v32[1] = v31;
      sub_268CD0F7C();
      sub_268F9AC14(v33, &dword_268CBE000, v34, "Unknown binary setting value for intent: %@.", 44, 2);

      MEMORY[0x277D82BD8](v34);
      v8 = sub_268DAB2DC();
      v35 = sub_268DA9A7C(v8, 0);
      goto LABEL_19;
    }

    v4 = *(v38 + 34) ^ 1;
    *(v38 + 33) = v4 & 1;
    v36 = v4;
  }

  *(v38 + 38) = v36 & 1;
  v25 = *(v38 + 36);
  v24 = *(v38 + 35);
  v23 = *(v38 + 168);
  v26 = *(v38 + 160);
  v28 = *(v38 + 34);
  v9 = sub_268DC7AE8();
  v27 = *v9;
  MEMORY[0x277D82BE0](*v9);
  sub_268DB9934(v26, v23, v24, v27, v25 & 1);
  MEMORY[0x277D82BD8](v27);
  if ((v36 & 1) == (v28 & 1))
  {
    v20 = v36;
    goto LABEL_18;
  }

  v22 = *(v38 + 176);
  sub_268DABAF0(v22);
  if (!v22)
  {
    v20 = v36;
LABEL_18:
    v17 = *(v38 + 35);
    v16 = *(v38 + 168);
    v18 = *(v38 + 160);
    v15 = sub_268DAB988(*(v38 + 34) & 1);
    v13 = sub_268DAB988(v20 & 1);
    v19 = sub_268DAB9C8(0, v15, v13);
    sub_268DABA74(v18, v16, v17);
    v35 = v19;
LABEL_19:
    v12 = v35;
    v11 = *(*(v38 + 88) + 8);

    return v11(v12);
  }

  v21 = (*(v38 + 176) + **(v38 + 176));
  v10 = swift_task_alloc();
  v11 = v21;
  *(v38 + 216) = v10;
  *v10 = *(v38 + 88);
  v10[1] = sub_268DAA3B0;
  v12 = v36 & 1;

  return v11(v12);
}

uint64_t sub_268DAA3B0()
{
  v4 = *v1;
  *(v4 + 88) = *v1;
  *(v4 + 224) = v0;

  if (v0)
  {
    v2 = sub_268DAA6A8;
  }

  else
  {
    v2 = sub_268DAA518;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_268DAA518()
{
  *(v0 + 88) = v0;

  v5 = *(v0 + 38);
  v8 = *(v0 + 35);
  v7 = *(v0 + 168);
  v9 = *(v0 + 160);
  v6 = sub_268DAB988(*(v0 + 34) & 1);
  v1 = sub_268DAB988(v5 & 1);
  v10 = sub_268DAB9C8(0, v6, v1);
  v2.n128_f64[0] = sub_268DABA74(v9, v7, v8);
  v3 = *(*(v0 + 88) + 8);

  return v3(v10, v2);
}

uint64_t sub_268DAA6A8()
{
  v19 = v0[28];
  v28 = v0[25];
  v22 = v0[19];
  v0[11] = v0;

  v1 = v19;
  v0[15] = v19;
  v26 = sub_268F9B294();
  v2 = sub_268DC7AE8();
  v27 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v25 = v3;
  v4 = v19;
  v0[16] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v20 = sub_268F9AE64();
  v21 = v5;
  v23 = MEMORY[0x277D837D0];
  v25[3] = MEMORY[0x277D837D0];
  v24 = sub_268CDD224();
  v25[4] = v24;
  *v25 = v20;
  v25[1] = v21;
  MEMORY[0x277D82BE0](v22);
  v0[17] = v22;
  sub_268CD7620();
  sub_268D28940();
  v6 = sub_268F9AE74();
  v25[8] = v23;
  v25[9] = v24;
  v25[5] = v6;
  v25[6] = v7;
  sub_268CD0F7C();
  sub_268F9AC14(v26, &dword_268CBE000, v27, "Failed to execute set value callback: %@\nfor intent: %@", 55, 2);

  MEMORY[0x277D82BD8](v27);
  sub_268DABAF0(v28);
  if (v28)
  {
    v16 = (*(v18 + 200))(*(v18 + 224));

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  *(v18 + 144) = v17;
  if (*(v18 + 144))
  {
    v29 = *(v18 + 144);
  }

  else
  {
    v8 = sub_268DAB2DC();
    v29 = sub_268DA9A7C(v8, 0);
    if (*(v18 + 144))
    {
      sub_268D35038((v18 + 144));
    }
  }

  v12 = *(v18 + 224);
  v15 = *(v18 + 35);
  v14 = *(v18 + 168);
  v13 = *(v18 + 160);

  v9.n128_f64[0] = sub_268DABA74(v13, v14, v15);
  v10 = *(*(v18 + 88) + 8);

  return v10(v29, v9);
}

uint64_t sub_268DAAB84(int a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12, uint64_t a13, uint64_t a14)
{
  v69 = a8;
  v70 = a7;
  v71 = a4;
  v72 = a3;
  v73 = a2;
  v74 = a14;
  v75 = a13;
  v76 = a10;
  v77 = a9;
  v78 = a6;
  v79 = a5;
  v80 = a1;
  v81 = 0;
  v85 = 0;
  v84 = 0;
  v82 = 0;
  v101 = a1;
  v100 = a2;
  v97 = a3;
  v98 = a4;
  v99 = a5;
  v96 = a6;
  v94 = a7;
  v95 = a8;
  v92 = a9;
  v93 = a10;
  v90 = a11;
  v91 = a12 & 1;
  v88 = a13;
  v89 = a14;
  v86 = a11;
  v87 = a12 & 1;
  v14 = a2;
  if (a12)
  {
    v67 = [v73 binaryValue];
    v68 = v67;
  }

  else
  {
    v68 = v86;
  }

  v66 = v68;

  v85 = v68;
  if (v68 == 1)
  {
    v84 = 1;
    goto LABEL_11;
  }

  if (v66 == 2)
  {
    v84 = 0;
    goto LABEL_11;
  }

  if (v66 == 3)
  {
    v84 = (v80 & 1) == 0;
LABEL_11:
    v26 = v82;
    v50 = *sub_268DC7AE8();
    v49 = v50;
    v27 = v50;
    sub_268DABAF0(v77);
    v28 = v73;

    sub_268DABAF0(v75);
    v51 = &v48;
    MEMORY[0x28223BE20](v72, v71, v79, v50);
    v52 = &v48;
    v39[2] = &v84;
    v40 = v80 & 1;
    v41 = v77;
    v42 = v29;
    v43 = v30;
    v44 = v31;
    v45 = v32;
    v46 = v75;
    v47 = v74;
    sub_268DB944C(v34, v35, v36, v37, v33 & 1, sub_268DABB24, v39, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v53 = v26;
    sub_268CD9A28(v77, v76);

    sub_268CD9A28(v75, v74);

    return v53;
  }

  v15 = v82;
  v60 = sub_268F9B294();
  v62 = *sub_268DC7AE8();
  v16 = v62;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v59 = sub_268F9B734();
  v56 = v17;
  v18 = v73;
  v83 = v73;
  v63 = 0;
  v54 = sub_268CD7620();
  sub_268D28940();
  v55 = sub_268F9AE74();
  v57 = v19;
  v56[3] = MEMORY[0x277D837D0];
  v20 = sub_268CDD224();
  v21 = v55;
  v22 = v56;
  v23 = v57;
  v56[4] = v20;
  *v22 = v21;
  v22[1] = v23;
  sub_268CD0F7C();
  v61 = v24;
  sub_268F9AC14(v60, &dword_268CBE000, v62, "Unknown binary setting value for intent: %@.", 44, 2);

  v25 = sub_268DAB2DC();
  v64 = sub_268DA9A7C(v25, v63);
  v70();

  return v15;
}

id sub_268DAB158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268CD795C();
  v5 = sub_268CD42AC(8, 0);

  v4 = sub_268F9AE14();

  [v5 setErrorDetail_];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268DAB218(uint64_t a1)
{
  v8 = a1;
  v6 = a1;
  v1 = sub_268CD7620();
  v5._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v1, &protocol witness table for INSetBinarySettingIntent);
  v5._object = v2;
  if (v2)
  {
    rawValue = v5;
  }

  else
  {
    rawValue._countAndFlagsBits = sub_268F9AEF4();
    rawValue._object = v3;
  }

  return BinarySettingIdentifier.init(rawValue:)(rawValue);
}

void *sub_268DAB2E8(_BYTE *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t (*a8)(), uint64_t a9)
{
  v57 = 0;
  v67 = a1;
  v66 = a2 & 1;
  v64 = a3;
  v65 = a4;
  v63 = a5;
  v61 = a6;
  v62 = a7;
  v59 = a8;
  v60 = a9;
  if ((*a1 & 1) == (a2 & 1))
  {
    v38 = v52;
    goto LABEL_9;
  }

  v44 = sub_268F9B274();
  v9 = sub_268DC7AE8();
  v45 = *v9;
  MEMORY[0x277D82BE0](*v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v42 = v10;
  v58 = *a1;
  v40 = sub_268F9AE74();
  v41 = v11;
  v42[3] = MEMORY[0x277D837D0];
  v43 = sub_268CDD224();
  v42[4] = v43;
  *v42 = v40;
  v42[1] = v41;
  sub_268CD0F7C();
  sub_268F9AC14(v44, &dword_268CBE000, v45, "Callback with requested value: %@.", 34, 2);

  MEMORY[0x277D82BD8](v45);
  sub_268DABAF0(a3);
  if (!a3)
  {
    v39 = v52;
LABEL_7:
    v36 = sub_268F9B274();
    v12 = sub_268DC7AE8();
    v37 = *v12;
    MEMORY[0x277D82BE0](*v12);
    sub_268F9B734();
    sub_268F9AC14(v36, &dword_268CBE000, v37, "Callback completed.", 19, 2);

    MEMORY[0x277D82BD8](v37);
    v38 = v39;
LABEL_9:
    v32 = sub_268F9B274();
    v13 = sub_268DC7AE8();
    v33 = *v13;
    MEMORY[0x277D82BE0](*v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v32, &dword_268CBE000, v33, "Calling handler completion.", 27, 2);

    MEMORY[0x277D82BD8](v33);

    v34 = sub_268DAB988(a2 & 1);
    v14 = sub_268DAB988(*a1 & 1);
    v35 = sub_268DAB9C8(0, v34, v14);
    a6();
    MEMORY[0x277D82BD8](v35);

    return v38;
  }

  a3(*a1 & 1);
  if (!v52)
  {

    v39 = 0;
    goto LABEL_7;
  }

  v16 = v52;
  v57 = v52;
  v30 = sub_268F9B294();
  v17 = sub_268DC7AE8();
  v31 = *v17;
  MEMORY[0x277D82BE0](*v17);
  sub_268F9B734();
  v29 = v18;
  v19 = v52;
  v56 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v20 = sub_268F9AE64();
  v28 = MEMORY[0x277D837D0];
  v29[3] = MEMORY[0x277D837D0];
  v29[4] = v43;
  *v29 = v20;
  v29[1] = v21;
  MEMORY[0x277D82BE0](a5);
  v55 = a5;
  sub_268CD7620();
  sub_268D28940();
  v22 = sub_268F9AE74();
  v29[8] = v28;
  v29[9] = v43;
  v29[5] = v22;
  v29[6] = v23;
  sub_268CD0F7C();
  sub_268F9AC14(v30, &dword_268CBE000, v31, "Failed to execute set value callback: %@\nfor intent: %@", 55, 2);

  MEMORY[0x277D82BD8](v31);

  sub_268DABAF0(a8);
  if (a8)
  {
    v26 = a8();

    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v53 = v27;
  if (v27)
  {
    v54 = v53;
  }

  else
  {
    v24 = sub_268DAB2DC();
    v54 = sub_268DA9A7C(v24, 0);
  }

  v25 = v54;
  a6();
  MEMORY[0x277D82BD8](v25);

  return 0;
}

uint64_t sub_268DAB988(char a1)
{
  if (a1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_268DAB9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268CD795C();
  MEMORY[0x277D82BE0](a1);
  v7 = sub_268CD42AC(3, a1);
  [v7 setOldValue_];
  [v7 setUpdatedValue_];
  return v7;
}

double sub_268DABA74(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = sub_268DC7AE8();
  v8 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(a1, a2, a3, v8);
  *&result = MEMORY[0x277D82BD8](v8).n128_u64[0];
  return result;
}

uint64_t sub_268DABAF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_268DABB80(uint64_t a1)
{
  v97 = a1;
  v61 = "Fatal error";
  v62 = "Unexpectedly found nil while unwrapping an Optional value";
  v63 = "SiriSettingsIntents/SetBinaryIntentHandlerUtil.swift";
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC860, &unk_268FA32E0);
  v64 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1, v2, v3, v4);
  v65 = v51 - v64;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC868, qword_268F9F890);
  v66 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v67 = v51 - v66;
  v86 = 0;
  v68 = sub_268F99294();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, v9, v10, v11);
  v72 = v51 - v71;
  v73 = sub_268F992A4();
  v74 = *(v73 - 8);
  v75 = v73 - 8;
  v76 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, v12, v13, v14);
  v77 = v51 - v76;
  v78 = sub_268F99284();
  v79 = *(v78 - 8);
  v80 = v78 - 8;
  v81 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, v15, v16, v17);
  v82 = v51 - v81;
  v101 = sub_268F992F4();
  v98 = *(v101 - 8);
  v99 = v101 - 8;
  v83 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, v18, v19, v20);
  v100 = v51 - v83;
  v105 = sub_268F99314();
  v102 = *(v105 - 8);
  v103 = v105 - 8;
  v84 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105, v21, v22, v23);
  v104 = v51 - v84;
  v85 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v26, v27, v28);
  v94 = v51 - v85;
  v87 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86, v29, v30, v31);
  v88 = v51 - v87;
  v89 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33, v51 - v87, v34, v35);
  v90 = v51 - v89;
  v91 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37, v51 - v89, v38, v39);
  v110 = v51 - v91;
  v92 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41, v51 - v91, v42, v43);
  v93 = v51 - v92;
  v112 = sub_268F99214();
  v108 = *(v112 - 8);
  v109 = v112 - 8;
  v95 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v97, v44, v45, v46);
  v96 = v51 - v95;
  v118 = v51 - v95;
  v117 = v47;
  sub_268F992E4();
  sub_268F992E4();
  (*(v98 + 104))(v100, *MEMORY[0x277CC9968], v101);
  sub_268CDD6D4();
  v111 = 1;
  sub_268F992D4();
  (*(v98 + 8))(v100, v101);
  v106 = *(v102 + 8);
  v107 = v102 + 8;
  v106(v104, v105);
  v113 = *(v108 + 48);
  v114 = v108 + 48;
  if (v113(v110, v111, v112) == 1)
  {
    sub_268F9B584();
    __break(1u);
  }

  sub_268DAC6A8(v82);
  sub_268DAC714(v77);
  sub_268DAC780(v72);
  sub_268F992C4();
  (*(v69 + 8))(v72, v68);
  (*(v74 + 8))(v77, v73);
  (*(v79 + 8))(v82, v78);
  v59 = *(v108 + 8);
  v60 = v108 + 8;
  v59(v110, v112);
  v106(v94, v105);
  if (v113(v93, 1, v112) == 1)
  {
    sub_268D54CB4(v93);
    return 0;
  }

  else
  {
    (*(v108 + 32))(v96, v93, v112);
    v55 = 0;
    sub_268DAC7EC();
    sub_268F991F4();
    v52 = *(v108 + 56);
    v51[1] = v108 + 56;
    v54 = 0;
    v53 = 1;
    v52(v90);
    (*(v108 + 16))(v88, v96, v112);
    (v52)(v88, v54, v53, v112);
    sub_268F992E4();
    (*(v102 + 56))(v67, v54, v53, v105);
    sub_268F99334();
    v48 = sub_268F99344();
    (*(*(v48 - 8) + 56))(v65, v54, v53);
    v56 = sub_268DAC850(v90, v88, v67, v65);
    v116 = v56;
    sub_268DAC8A8();
    MEMORY[0x277D82BE0](v56);
    v57 = sub_268DAC90C(v56);
    v115 = v57;
    v49 = MEMORY[0x277D82BD8](v56);
    (v59)(v96, v112, v49);
    return v57;
  }
}

uint64_t sub_268DAC6A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC9878];
  v1 = sub_268F99284();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_268DAC714@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC9900];
  v1 = sub_268F992A4();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_268DAC780@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC98E8];
  v1 = sub_268F99294();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

unint64_t sub_268DAC7EC()
{
  v2 = qword_2802DC870;
  if (!qword_2802DC870)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC870);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_268DAC8A8()
{
  v2 = qword_2802DC878;
  if (!qword_2802DC878)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC878);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_268DAC960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = sub_268F99214();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(a1, 1) == 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = sub_268F991D4();
    (*(v24 + 8))(a1, v23);
    v17 = v16;
  }

  if ((v25)(a2, 1, v23) == 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = sub_268F991D4();
    (*(v24 + 8))(a2, v23);
    v15 = v14;
  }

  v12 = sub_268F99314();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a3, 1) == 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = sub_268F992B4();
    (*(v13 + 8))(a3, v12);
    v11 = v10;
  }

  v8 = sub_268F99344();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a4, 1) == 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_268F99324();
    (*(v9 + 8))(a4, v8);
    v7 = v6;
  }

  v5 = [v21 initWithStartDate:v17 endDate:v15 onCalendar:v11 inTimeZone:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v17);
  return v5;
}

id sub_268DACCB0(uint64_t a1)
{
  v4 = [v1 initWithDateComponentsRange_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_268DACD00()
{
  type metadata accessor for GetAutoAnswerHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81C0 = result;
  return result;
}

uint64_t *sub_268DACD68()
{
  if (qword_280FE4EB0 != -1)
  {
    swift_once();
  }

  return &qword_280FE81C0;
}

uint64_t sub_268DACDC8()
{
  v1 = *sub_268DACD68();

  return v1;
}

double sub_268DACDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAutoAnswerHandler handling intent", 36, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DB9E94();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = a2;
  v20 = a3;
  v21 = a1;
  v22 = v3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268DAD154, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t sub_268DAD014(void (*a1)(id, __n128), uint64_t a2, void *a3)
{

  v10 = [a3 settingMetadata];

  v11 = sub_268D3F1D4();

  if (v11)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v3 = sub_268D4AA1C();
  v6 = sub_268E41A08(v10, 0, v3, v7, 0, 0);
  v4 = MEMORY[0x277D82BD8](v10);
  a1(v6, v4);
  MEMORY[0x277D82BD8](v6);
}

uint64_t sub_268DAD1AC()
{
  type metadata accessor for SetNumericSettingAceViewProvider(0);
  v0 = sub_268D587A8();
  result = sub_268DAD258(v0);
  qword_2802F07E8 = result;
  return result;
}

uint64_t type metadata accessor for SetNumericSettingAceViewProvider(uint64_t a1)
{
  v2 = qword_2802DC890;
  if (!qword_2802DC890)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t *sub_268DAD2A4()
{
  if (qword_2802DAFC8 != -1)
  {
    swift_once();
  }

  return &qword_2802F07E8;
}

uint64_t sub_268DAD304()
{
  v1 = *sub_268DAD2A4();

  return v1;
}

uint64_t sub_268DAD334()
{
  v2 = *(v0 + qword_2802DC880);

  return v2;
}

uint64_t sub_268DAD368(uint64_t a1)
{

  *qword_2802DC880 = a1;
  v3 = sub_268F99B04();

  return v3;
}

void sub_268DAD3F0(uint64_t a1, void *a2, id a3, void (*a4)(void), uint64_t a5)
{
  v39 = 0;
  v36 = 0;
  v34 = 0;
  v32 = 0;
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v40 = a4;
  v41 = a5;
  v38 = [a3 code];
  v37 = 3;
  type metadata accessor for INSetNumericSettingIntentResponseCode(0);
  sub_268DAD9F4();
  if (sub_268F9B754())
  {
    v27 = [a2 settingMetadata];
    if (v27)
    {
      v24 = [v27 settingId];
      v25._countAndFlagsBits = sub_268F9AE24();
      v25._object = v5;
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v24);
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26._object)
    {
      v36 = v26;

      NumericSettingIdentifier.init(rawValue:)(v26);
      v23 = v35;
      if (v35 == 13)
      {
      }

      else
      {
        v34 = v35;
        v6 = [a3 updatedValue];
        v33 = v6;
        if (v6)
        {
          v20 = v33;
          MEMORY[0x277D82BE0](v33);
          sub_268D35038(&v33);
          v21 = [v20 value];
          MEMORY[0x277D82BD8](v20);
          v22 = v21;
        }

        else
        {
          sub_268D35038(&v33);
          v22 = 0;
        }

        if (v22)
        {
          v32 = v22;

          v31 = v23;
          v19 = sub_268E574DC(&v31, v22);

          if (v19)
          {

            sub_268D34954();
            sub_268F9B734();
            v17 = v7;
            MEMORY[0x277D82BE0](v19);
            *v17 = v19;
            sub_268CD0F7C();
            v18 = v8;
            a4();
            sub_268DADA74(v18, 0);

            MEMORY[0x277D82BD8](v19);
            MEMORY[0x277D82BD8](v22);

            return;
          }

          MEMORY[0x277D82BD8](v22);
        }

        else
        {
        }
      }
    }

    v9 = sub_268DC7F68();
    v15 = *v9;
    MEMORY[0x277D82BE0](*v9);
    v14 = sub_268F9B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Unable to make snippet from the numeric setting and slider value", 64, 2, &dword_268CBE000, v15, v14);

    MEMORY[0x277D82BD8](v15);

    sub_268D34954();
    v16 = sub_268F9B734();
    a4();
    sub_268DADA74(v16, 0);
  }

  else
  {
    v10 = sub_268DC7F68();
    v12 = *v10;
    MEMORY[0x277D82BE0](*v10);
    v11 = sub_268F9B274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("The intent response code is not equivalent to INGetSettingIntentResponseCode.success.", 85, 2, &dword_268CBE000, v12, v11);

    MEMORY[0x277D82BD8](v12);

    sub_268D34954();
    v13 = sub_268F9B734();
    a4();
    sub_268DADA74(v13, 0);
  }
}

unint64_t sub_268DAD9F4()
{
  v2 = qword_2802DC888;
  if (!qword_2802DC888)
  {
    type metadata accessor for INSetNumericSettingIntentResponseCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC888);
    return WitnessTable;
  }

  return v2;
}

void sub_268DADA74(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_268DADB90()
{
  v1 = sub_268F99B14();

  return v1;
}

uint64_t sub_268DADC14(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268DADCB4(uint64_t a1)
{
  v3 = 0;

  v3 = a1;

  sub_268D287E8(&v3);
  return a1;
}

uint64_t sub_268DADD14()
{
  v0 = sub_268DC7FC8();
  v3 = *v0;
  MEMORY[0x277D82BE0](*v0);
  v2 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("GuardedFlow on | returning true", 31, 2, &dword_268CBE000, v3, v2);

  MEMORY[0x277D82BD8](v3);
  return 1;
}

uint64_t sub_268DADDE4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v30 = a2;
  v18 = a3;
  v12 = "GuardedFlow executing | executing flow with guards";
  v10 = &dword_268CBE000;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v19 = 0;
  v29 = sub_268F99904();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v9 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v30, v18, v3);
  v28 = &v9 - v9;
  v36 = v4;
  v37 = v5;
  v35 = v6;
  v14 = *sub_268DC7FC8();
  MEMORY[0x277D82BE0](v14);
  v11 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v13 = sub_268F9B734();
  sub_268F9AC04(v12, 50, 2, v10, v14, v11);

  MEMORY[0x277D82BD8](v14);
  v16 = sub_268F99574();
  v15 = sub_268F9B734();
  sub_268F99554();
  sub_268CD0F7C();
  v17 = v7;
  v31 = sub_268F99434();

  v34 = v31;

  v33[1] = v18;
  v21 = v33;
  v33[0] = v31;
  v20 = sub_268F99524();
  sub_268F99544();
  v22 = sub_268F99644();

  v24 = &v32;
  v32 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC8A0, qword_268F9F9B8);
  sub_268DAE0A0();
  sub_268F998E4();

  v25(v28);
  (*(v26 + 8))(v28, v29);
}

unint64_t sub_268DAE0A0()
{
  v2 = qword_280FE66C8;
  if (!qword_280FE66C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC8A0, qword_268F9F9B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DAE148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268DAE20C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268DAE20C(unsigned int a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_268DAE358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_268CD7B50;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_268DAE460()
{
  type metadata accessor for SetWifiHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F0800 = result;
  return result;
}

uint64_t *sub_268DAE4C8()
{
  if (qword_2802DAFD0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0800;
}

uint64_t sub_268DAE528()
{
  v1 = *sub_268DAE4C8();

  return v1;
}

uint64_t sub_268DAE558(void *a1, void (*a2)(id), uint64_t a3)
{
  v39 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v40 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v39, &dword_268CBE000, v40, "SetWifiHandler handling intent", 30, 2);

  [a1 binaryValue];
  type metadata accessor for INBinarySettingValue(0);
  sub_268CD925C();
  if (sub_268F9B754())
  {
    v32 = sub_268F9B284();
    v4 = sub_268DC7AE8();
    v33 = *v4;
    MEMORY[0x277D82BE0](*v4);
    sub_268F9B734();
    sub_268F9AC14(v32, &dword_268CBE000, v33, "SetWifiHandler returning failure to connect to wifi.", 52, 2);

    MEMORY[0x277D82BD8](v33);

    v34 = sub_268E948B8(1);
    v35 = sub_268DAB158(0, v34, v5);

    a2(v35);
    MEMORY[0x277D82BD8](v35);
  }

  else
  {
    v31 = sub_268CD7620();
    SettingIntent.deviceCategory.getter(v31, &protocol witness table for INSetBinarySettingIntent);
    if (v7)
    {
      v30 = 0;
    }

    else
    {
      type metadata accessor for INDeviceCategory(0);
      sub_268CD7818();
      v30 = sub_268F9AE04();
    }

    MEMORY[0x277D82BE0](a1);
    if (v30)
    {
      v29 = 1;
    }

    else
    {
      SettingIntent.deviceCategory.getter(v31, &protocol witness table for INSetBinarySettingIntent);
      if (v8)
      {
        v28 = 0;
      }

      else
      {
        type metadata accessor for INDeviceCategory(0);
        sub_268CD7818();
        v28 = sub_268F9AE04();
      }

      v29 = v28;
    }

    MEMORY[0x277D82BD8](a1);
    if (v29)
    {
      v25 = sub_268F9B284();
      v9 = sub_268DC7AE8();
      v26 = *v9;
      MEMORY[0x277D82BE0](*v9);
      sub_268F9B734();
      sub_268F9AC14(v25, &dword_268CBE000, v26, "SetWifiHandler cannot modify state of WiFi for HomePod or Apple TV.", 67, 2);

      MEMORY[0x277D82BD8](v26);

      v27 = sub_268DA9A7C(7, 0);
      (a2)();
      MEMORY[0x277D82BD8](v27);
    }

    else
    {

      v24 = sub_268D39148();

      MEMORY[0x277D82BE0](a1);
      if (v24)
      {
        [a1 binaryValue];
        sub_268D292B8();
        v23 = sub_268F9AE04() ^ 1;
      }

      else
      {
        LOBYTE(v23) = 0;
      }

      MEMORY[0x277D82BD8](a1);

      if (v23)
      {

        v21 = sub_268D3CD44();

        v22 = v21 ^ 1;
      }

      else
      {
        v22 = 0;
      }

      if (v22)
      {
        v17 = sub_268F9B284();
        v10 = sub_268DC7AE8();
        v18 = *v10;
        MEMORY[0x277D82BE0](*v10);
        sub_268F9B734();
        sub_268F9AC14(v17, &dword_268CBE000, v18, "SetWifiHandler cannot modify state of WiFi due to MDM restriction.", 66, 2);

        MEMORY[0x277D82BD8](v18);

        v19 = sub_268E948B8(8);
        v20 = sub_268DAB158(0, v19, v11);

        a2(v20);
        MEMORY[0x277D82BD8](v20);
      }

      else
      {
        v12 = sub_268DB9EF4();
        v13 = *v12;
        v14 = v12[1];
        v15 = *(v12 + 16);
        v16 = *(v38 + 24);

        sub_268DAAB84(v24 & 1, a1, v13, v14, v15, v16 & 1, a2, a3, sub_268DAEE14, v38, 0, 1, 0, 0);
        return sub_268CD9A28(sub_268DAEE14, v38);
      }
    }
  }
}

uint64_t sub_268DAEDA4(char a1)
{

  sub_268D39184(a1 & 1);
}

uint64_t sub_268DAEE60()
{
  type metadata accessor for SetStandByHandler();
  sub_268D58CB4(v1);
  result = sub_268DAEEDC(1, v1);
  qword_2802F0808 = result;
  return result;
}

uint64_t *sub_268DAEF34()
{
  if (qword_2802DAFD8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0808;
}

uint64_t sub_268DAEF94()
{
  v1 = *sub_268DAEF34();

  return v1;
}

uint64_t sub_268DAEFE4(char a1, void *a2)
{
  v9 = a1 & 1;
  v8 = a2;
  v7 = v2;
  *(v2 + 16) = a1;
  sub_268CDE730(a2, v6);
  sub_268CDF978(v6, (v2 + 24));
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v5;
}

double sub_268DAF060(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v35 = 0;
  v34 = 0;
  v38 = a1;
  v36 = a2;
  v37 = a3;
  v22 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v23 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v22, &dword_268CBE000, v23, "SetStandByHandler handling intent", 33, 2);

  MEMORY[0x277D82BD8](v23);
  sub_268CD795C();
  v25 = sub_268CD42AC(8, 0);
  v34 = v25;
  v33 = a1;
  v4 = sub_268CD7620();
  v29 = SettingIntent.deviceCategory.getter(v4, &protocol witness table for INSetBinarySettingIntent);
  v30 = v5 & 1;
  v31 = 1;
  v32 = 0;
  if (v5)
  {
    v19 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v19 = sub_268F9AE04();
  }

  if (v19)
  {
    sub_268CDE730(v21 + 24, v26);
    v16 = v27;
    v15 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v17 = (*(v15 + 48))(v16);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v12 = sub_268F9B284();
    v6 = sub_268DC7AE8();
    v13 = *v6;
    MEMORY[0x277D82BE0](*v6);
    sub_268F9B734();
    sub_268F9AC14(v12, &dword_268CBE000, v13, "Setting standBy not allowed", 27, 2);

    MEMORY[0x277D82BD8](v13);
    sub_268E948B8(23);
    v14 = sub_268F9AE14();

    [v25 setErrorDetail_];
    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v9 = sub_268F9B284();
    v8 = sub_268DC7AE8();
    v10 = *v8;
    MEMORY[0x277D82BE0](*v8);
    sub_268F9B734();
    sub_268F9AC14(v9, &dword_268CBE000, v10, "Setting standBy not available", 29, 2);

    MEMORY[0x277D82BD8](v10);
    sub_268E948B8(3);
    v11 = sub_268F9AE14();

    [v25 setErrorDetail_];
    MEMORY[0x277D82BD8](v11);
  }

  a2(v25);

  *&result = MEMORY[0x277D82BD8](v25).n128_u64[0];
  return result;
}

uint64_t sub_268DAF5B8()
{
  type metadata accessor for GetAXColorFiltersRedGreenHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8028 = result;
  return result;
}

uint64_t *sub_268DAF620()
{
  if (qword_280FE2E90 != -1)
  {
    swift_once();
  }

  return &qword_280FE8028;
}

uint64_t sub_268DAF680()
{
  v1 = *sub_268DAF620();

  return v1;
}

double sub_268DAF6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXColorFiltersRedGreenHandler handling intent", 48, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DB9F54();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268DAFB34, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268DAF8CC(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3EBB4();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t sub_268DAFBAC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v158 = a5;
  v162 = a4;
  v144 = a3;
  v145 = a2;
  v146 = a1;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  v197 = 0;
  v147 = 0;
  v201 = a4;
  v148 = *(a4 - 8);
  v160 = v148;
  v156 = *(v148 + 64);
  v149 = v156;
  MEMORY[0x28223BE20](a1, a2, a3, a4 - 8);
  v161 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v161;
  v200 = v7;
  v198 = v8;
  v199 = v9;
  v197 = v5;
  v181 = sub_268F9B284();
  v151 = v181;
  v182 = *sub_268DC7AE8();
  v152 = v182;
  v10 = v182;
  v154 = *(v160 + 16);
  v155 = (v160 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v154(v161, v153, v162);
  v157 = *(v160 + 80);
  v159 = (v157 + 32) & ~v157;
  v11 = swift_allocObject();
  v12 = v158;
  v13 = v159;
  v14 = v160;
  v15 = v161;
  v171 = v11;
  *(v11 + 16) = v162;
  *(v11 + 24) = v12;
  v163 = *(v14 + 32);
  v164 = (v14 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v163(v11 + v13, v15);
  v165 = 17;
  v170 = 7;
  v175 = swift_allocObject();
  v166 = v175;
  v167 = 32;
  *(v175 + 16) = 32;
  v16 = swift_allocObject();
  v17 = v167;
  v176 = v16;
  v168 = v16;
  *(v16 + 16) = 8;
  v169 = v17;
  v18 = swift_allocObject();
  v19 = v171;
  v172 = v18;
  *(v18 + 16) = sub_268DB0E6C;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v172;
  v179 = v20;
  v173 = v20;
  *(v20 + 16) = sub_268CD7608;
  *(v20 + 24) = v21;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
  v174 = v180;
  v177 = sub_268F9B734();
  v178 = v22;

  v23 = v175;
  v24 = v178;
  *v178 = sub_268CD7600;
  v24[1] = v23;

  v25 = v176;
  v26 = v178;
  v178[2] = sub_268CD7600;
  v26[3] = v25;

  v27 = v178;
  v28 = v179;
  v178[4] = sub_268CD7614;
  v27[5] = v28;
  sub_268CD0F7C();

  if (os_log_type_enabled(v182, v181))
  {
    v29 = v147;
    v137 = sub_268F9B3A4();
    v134 = v137;
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
    v138 = sub_268CD5448(0, v135, v135);
    v136 = v138;
    v140 = 1;
    v139 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v187 = v137;
    v186 = v138;
    v185 = v139;
    v141 = &v187;
    sub_268CD549C(2, &v187);
    sub_268CD549C(v140, v141);
    v183 = sub_268CD7600;
    v184 = v166;
    sub_268CD54B0(&v183, v141, &v186, &v185);
    v142 = v29;
    v143 = v29;
    if (v29)
    {
      v132 = 0;

      __break(1u);
    }

    else
    {
      v183 = sub_268CD7600;
      v184 = v168;
      sub_268CD54B0(&v183, &v187, &v186, &v185);
      v130 = 0;
      v131 = 0;
      v183 = sub_268CD7614;
      v184 = v173;
      sub_268CD54B0(&v183, &v187, &v186, &v185);
      v128 = 0;
      v129 = 0;
      _os_log_impl(&dword_268CBE000, v152, v151, "%s handling intent", v134, 0xCu);
      sub_268CD54FC(v136, 0, v135);
      sub_268CD54FC(v139, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();

      v133 = v128;
    }
  }

  else
  {
    v30 = v147;

    v133 = v30;
  }

  v121 = v133;

  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA40, &unk_268F9C870);
  sub_268F9B734();
  v123 = v31;
  *v31 = 1;
  *(v31 + 8) = 0;
  *(v31 + 16) = 2;
  *(v31 + 24) = 0;
  *(v31 + 32) = 3;
  *(v31 + 40) = 0;
  *(v31 + 48) = 5;
  *(v31 + 56) = 0;
  sub_268CD0F7C();
  v196 = v32;
  v195 = v146;
  v33 = sub_268D2E630();
  v193[1] = SettingIntent.deviceCategory.getter(v33, &protocol witness table for INGetSettingIntent);
  v194 = v34 & 1;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA50, &qword_268F9E2F0);
  v125 = sub_268CD7684();
  sub_268CD7780();
  v126 = &v196;
  v127 = sub_268F9AFC4();
  sub_268CD7930(v126);
  if ((v127 & 1) == 0)
  {
    v110 = sub_268F9B294();
    v93 = v110;
    v111 = *sub_268DC7AE8();
    v94 = v111;
    v50 = v111;
    v154(v150, v153, v162);
    v95 = (v157 + 32) & ~v157;
    v51 = swift_allocObject();
    v52 = v158;
    v53 = v95;
    v54 = v150;
    v55 = v163;
    v102 = v51;
    *(v51 + 16) = v162;
    *(v51 + 24) = v52;
    v55(v51 + v53, v54);
    v96 = 17;
    v101 = 7;
    v105 = swift_allocObject();
    v97 = v105;
    v98 = 32;
    *(v105 + 16) = 32;
    v56 = swift_allocObject();
    v57 = v98;
    v106 = v56;
    v99 = v56;
    *(v56 + 16) = 8;
    v100 = v57;
    v58 = swift_allocObject();
    v59 = v102;
    v103 = v58;
    *(v58 + 16) = sub_268DB0E6C;
    *(v58 + 24) = v59;
    v60 = swift_allocObject();
    v61 = v103;
    v109 = v60;
    v104 = v60;
    *(v60 + 16) = sub_268CD7608;
    *(v60 + 24) = v61;
    v107 = sub_268F9B734();
    v108 = v62;

    v63 = v105;
    v64 = v108;
    *v108 = sub_268CD7600;
    v64[1] = v63;

    v65 = v106;
    v66 = v108;
    v108[2] = sub_268CD7600;
    v66[3] = v65;

    v67 = v108;
    v68 = v109;
    v108[4] = sub_268CD7614;
    v67[5] = v68;
    sub_268CD0F7C();

    if (os_log_type_enabled(v111, v110))
    {
      v69 = v121;
      v86 = sub_268F9B3A4();
      v83 = v86;
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v87 = sub_268CD5448(0, v84, v84);
      v85 = v87;
      v89 = 1;
      v88 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v193[0] = v86;
      v192 = v87;
      v191 = v88;
      v90 = v193;
      sub_268CD549C(2, v193);
      sub_268CD549C(v89, v90);
      v189 = sub_268CD7600;
      v190 = v97;
      sub_268CD54B0(&v189, v90, &v192, &v191);
      v91 = v69;
      v92 = v69;
      if (v69)
      {
        v81 = 0;

        __break(1u);
      }

      else
      {
        v189 = sub_268CD7600;
        v190 = v99;
        sub_268CD54B0(&v189, v193, &v192, &v191);
        v79 = 0;
        v80 = 0;
        v189 = sub_268CD7614;
        v190 = v104;
        sub_268CD54B0(&v189, v193, &v192, &v191);
        v77 = 0;
        v78 = 0;
        _os_log_impl(&dword_268CBE000, v94, v93, "%s host device unsupported.", v83, 0xCu);
        sub_268CD54FC(v85, 0, v84);
        sub_268CD54FC(v88, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();

        v82 = v77;
      }
    }

    else
    {
      v70 = v121;

      v82 = v70;
    }

    v75 = v82;

    v73 = 0;
    sub_268CDD0DC();
    v74 = sub_268CD42AC(6, v73);
    v145();

    return v75;
  }

  v35 = v121;
  v119 = (*(v158 + 24))(v162);
  v115 = v36;
  v116 = v37;
  v117 = *sub_268DC7AE8();
  v112 = v117;
  v38 = v117;
  v114 = (*(v158 + 16))(v162);
  v39 = v146;

  v113 = &v72;
  MEMORY[0x28223BE20](&v72, v40, v41, v42);
  v43 = v146;
  v44 = v145;
  v118 = &v72 - 8;
  *(&v72 - 6) = v45;
  *(&v72 - 5) = v46;
  *(&v72 - 4) = v47;
  *(&v72 - 3) = v43;
  *(&v72 - 2) = v44;
  *(&v72 - 1) = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC8A8, qword_268F9FBA0);
  sub_268DB944C(v119, v115, v116, v117, v114 & 1, sub_268DB2B7C, v118, v49, &v188);
  v120 = v35;
  if (!v35)
  {

    return v120;
  }

  __break(1u);
  return result;
}

uint64_t sub_268DB0DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[1] = a1;
  v9 = a2;
  v8 = *(a2 - 8);
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](a1, a1, a2, a4);
  v10 = v6 - v7;
  (*(v8 + 16))(v4);
  return sub_268F9AE64();
}

uint64_t sub_268DB0EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v48 = a7;
  v30 = a1;
  v39 = a2;
  v42 = a3;
  v43 = a4;
  v38 = a5;
  v33 = a6;
  v46 = &unk_268F9FC10;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v53 = a5;
  v34 = *(a5 - 8);
  v35 = a5 - 8;
  v31 = v34;
  v32 = *(v34 + 64);
  v28 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v37 = &v27 - v28;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DBA30, &unk_268F9C860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v39, v42, v43);
  v45 = &v27 - v29;
  v52 = v7;
  v51 = v8;
  v49 = v9;
  v50 = v10;
  v44 = 0;
  v11 = sub_268F9B0E4();
  (*(*(v11 - 8) + 56))(v45, 1);
  (*(v34 + 16))(v37, v30, v38);
  MEMORY[0x277D82BE0](v39);

  v36 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v40 = (v36 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = v33;
  v14 = v34;
  v15 = v36;
  v16 = v37;
  v17 = v38;
  v47 = v12;
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v17;
  v12[5] = v13;
  (*(v14 + 32))(v12 + v15, v16);
  v18 = v41;
  v19 = v42;
  v20 = v43;
  v21 = v44;
  v22 = v45;
  v23 = v46;
  v24 = v47;
  *(v47 + v40) = v39;
  v25 = (v24 + v18);
  *v25 = v19;
  v25[1] = v20;
  result = sub_268CD3CE0(v21, v21, v22, v23, v24, MEMORY[0x277D84F78] + 8);
  *v48 = result;
  return result;
}

uint64_t sub_268DB11CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v20;
  *(v8 + 96) = a8;
  *(v8 + 88) = a7;
  *(v8 + 80) = a6;
  *(v8 + 72) = a5;
  *(v8 + 64) = a4;
  *(v8 + 32) = v8;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 145) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 56) = 0;
  v12 = *(a8 - 8);
  *(v8 + 112) = v12;
  *(v8 + 120) = *(v12 + 64);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  v17 = (*(v20 + 32) + **(v20 + 32));
  v10 = swift_task_alloc();
  *(v16 + 136) = v10;
  *v10 = *(v16 + 32);
  v10[1] = sub_268DB1404;

  return v17(a8);
}

uint64_t sub_268DB1404(__int16 a1)
{
  v3 = *v1;
  *(v3 + 32) = *v1;
  *(v3 + 147) = a1;

  return MEMORY[0x2822009F8](sub_268DB1530, 0);
}

uint64_t sub_268DB1530(uint64_t a1)
{
  v79 = v1;
  v2 = *(v1 + 148);
  v3 = *(v1 + 147);
  *(v1 + 32) = v1;
  *(v1 + 145) = v3;
  *(v1 + 146) = v2 & 1;
  if (v2)
  {
    v23 = *(v68 + 147);
    v21 = *(v68 + 128);
    v19 = *(v68 + 104);
    v22 = *(v68 + 96);
    v18 = *(v68 + 64);
    v17 = *(v68 + 112);
    *(v68 + 144) = v23;
    v37 = sub_268F9B294();
    v7 = sub_268DC7AE8();
    log = *v7;
    MEMORY[0x277D82BE0](*v7);
    (*(v17 + 16))(v21, v18, v22);
    v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v19;
    (*(v17 + 32))(v24 + v20, v21);
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    sub_268D2AAC0();

    v29 = swift_allocObject();
    *(v29 + 16) = 32;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_268DB0E6C;
    *(v25 + 24) = v24;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_268CD7608;
    *(v31 + 24) = v25;
    v32 = swift_allocObject();
    *(v32 + 16) = 64;
    v33 = swift_allocObject();
    *(v33 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_268CD9898;
    *(v27 + 24) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_268CD98A0;
    *(v28 + 24) = v27;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_268CD98AC;
    *(v34 + 24) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v35 = v8;

    *v35 = sub_268CD7600;
    v35[1] = v29;

    v35[2] = sub_268CD7600;
    v35[3] = v30;

    v35[4] = sub_268CD7614;
    v35[5] = v31;

    v35[6] = sub_268CD7600;
    v35[7] = v32;

    v35[8] = sub_268CD7600;
    v35[9] = v33;

    v35[10] = sub_268CD98B8;
    v35[11] = v34;
    sub_268CD0F7C();

    if (os_log_type_enabled(log, v37))
    {
      v14 = sub_268F9B3A4();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v15 = sub_268CD5448(1, v13, v13);
      v16 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v69 = v14;
      v70 = v15;
      v71 = v16;
      sub_268CD549C(2, &v69);
      sub_268CD549C(2, &v69);
      v72 = sub_268CD7600;
      v73 = v29;
      sub_268CD54B0(&v72, &v69, &v70, &v71);
      v72 = sub_268CD7600;
      v73 = v30;
      sub_268CD54B0(&v72, &v69, &v70, &v71);
      v72 = sub_268CD7614;
      v73 = v31;
      sub_268CD54B0(&v72, &v69, &v70, &v71);
      v72 = sub_268CD7600;
      v73 = v32;
      sub_268CD54B0(&v72, &v69, &v70, &v71);
      v72 = sub_268CD7600;
      v73 = v33;
      sub_268CD54B0(&v72, &v69, &v70, &v71);
      v72 = sub_268CD98B8;
      v73 = v34;
      sub_268CD54B0(&v72, &v69, &v70, &v71);
      _os_log_impl(&dword_268CBE000, log, v37, "%s failed to get value %@", v14, 0x16u);
      sub_268CD54FC(v15, 1, v13);
      sub_268CD54FC(v16, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }

    else
    {
    }

    v11 = *(v68 + 80);
    MEMORY[0x277D82BD8](log);

    v12 = sub_268E419BC(6);
    v11();
    MEMORY[0x277D82BD8](v12);
  }

  else
  {
    v52 = *(v68 + 147);
    v50 = *(v68 + 128);
    v48 = *(v68 + 104);
    v51 = *(v68 + 96);
    v47 = *(v68 + 64);
    v46 = *(v68 + 112);
    *(v68 + 152) = v52 & 1;
    v67 = sub_268F9B294();
    v4 = sub_268DC7AE8();
    oslog = *v4;
    MEMORY[0x277D82BE0](*v4);
    (*(v46 + 16))(v50, v47, v51);
    v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = v51;
    *(v53 + 24) = v48;
    (*(v46 + 32))(v53 + v49, v50);
    v55 = swift_allocObject();
    *(v55 + 16) = v52 & 1;
    v59 = swift_allocObject();
    *(v59 + 16) = 32;
    v60 = swift_allocObject();
    *(v60 + 16) = 8;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_268DB0E6C;
    *(v54 + 24) = v53;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_268CD7608;
    *(v61 + 24) = v54;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    v63 = swift_allocObject();
    *(v63 + 16) = 4;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_268CD9ADC;
    *(v56 + 24) = v55;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_268CD9AE8;
    *(v57 + 24) = v56;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_268CD9AF4;
    *(v58 + 24) = v57;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_268CD9B00;
    *(v64 + 24) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    sub_268F9B734();
    v65 = v5;

    *v65 = sub_268CD7600;
    v65[1] = v59;

    v65[2] = sub_268CD7600;
    v65[3] = v60;

    v65[4] = sub_268CD7614;
    v65[5] = v61;

    v65[6] = sub_268CD7600;
    v65[7] = v62;

    v65[8] = sub_268CD7600;
    v65[9] = v63;

    v65[10] = sub_268CD9B0C;
    v65[11] = v64;
    sub_268CD0F7C();

    if (os_log_type_enabled(oslog, v67))
    {
      buf = sub_268F9B3A4();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v44 = sub_268CD5448(0, v42, v42);
      v45 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v74 = buf;
      v75 = v44;
      v76 = v45;
      sub_268CD549C(2, &v74);
      sub_268CD549C(2, &v74);
      v77 = sub_268CD7600;
      v78 = v59;
      sub_268CD54B0(&v77, &v74, &v75, &v76);
      v77 = sub_268CD7600;
      v78 = v60;
      sub_268CD54B0(&v77, &v74, &v75, &v76);
      v77 = sub_268CD7614;
      v78 = v61;
      sub_268CD54B0(&v77, &v74, &v75, &v76);
      v77 = sub_268CD7600;
      v78 = v62;
      sub_268CD54B0(&v77, &v74, &v75, &v76);
      v77 = sub_268CD7600;
      v78 = v63;
      sub_268CD54B0(&v77, &v74, &v75, &v76);
      v77 = sub_268CD9B0C;
      v78 = v64;
      sub_268CD54B0(&v77, &v74, &v75, &v76);
      _os_log_impl(&dword_268CBE000, oslog, v67, "%s set value to %{BOOL}d", buf, 0x12u);
      sub_268CD54FC(v44, 0, v42);
      sub_268CD54FC(v45, 1, MEMORY[0x277D84F70] + 8);
      sub_268F9B384();
    }

    else
    {
    }

    v41 = [*(v68 + 72) settingMetadata];
    if (v52)
    {
      v40 = 1;
    }

    else
    {
      v40 = 2;
    }

    v38 = *(v68 + 80);
    v6 = sub_268D4AA1C();
    v39 = sub_268E41A08(v41, 0, v6, v40, 0, 0);
    MEMORY[0x277D82BD8](v41);
    *(v68 + 56) = v39;

    v38(v39);

    MEMORY[0x277D82BD8](v39);
  }

  v9 = *(*(v68 + 32) + 8);

  return v9();
}

uint64_t sub_268DB2B04(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_268DB2C40(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v7 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268CD7DB8;

  return v7(a1, a2);
}

uint64_t sub_268DB2D74(uint64_t a1)
{
  v7 = v2;
  *(v2 + 16) = v2;
  v14 = v1[4];
  v10 = (*(*(v14 - 8) + 80) + 48) & ~*(*(v14 - 8) + 80);
  v3 = (v10 + *(*(v14 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v11 = *(v1 + v3);
  v4 = (v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v4;
  v13 = v4[1];
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268CD7B50;

  return sub_268DB11CC(a1, v8, v9, v1 + v10, v11, v12, v13, v14);
}

uint64_t sub_268DB2F04()
{
  type metadata accessor for GetNightShiftHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE81A8 = result;
  return result;
}

uint64_t *sub_268DB2F6C()
{
  if (qword_280FE4C78 != -1)
  {
    swift_once();
  }

  return &qword_280FE81A8;
}

uint64_t sub_268DB2FCC()
{
  v1 = *sub_268DB2F6C();

  return v1;
}

double sub_268DB2FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetNightShiftHandler handling intent", 36, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DB9FB4();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268DB3508, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268DB3218(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v20 = [a1 settingMetadata];

  v21 = sub_268D363F0();

  if (v21)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v20, 0, 0, v15, 0, 0);
  sub_268CD0F7C();
  v9 = sub_268F9B004();

  [v17 setSettingResponseDatas_];
  MEMORY[0x277D82BD8](v9);
  v13 = sub_268F9B284();
  v5 = sub_268DC7AE8();
  v14 = *v5;
  MEMORY[0x277D82BE0](*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v12 = v6;
  MEMORY[0x277D82BE0](v17);
  sub_268CDD1A4();
  v10 = sub_268F9AE74();
  v11 = v7;
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = sub_268CDD224();
  *v12 = v10;
  v12[1] = v11;
  sub_268CD0F7C();
  sub_268F9AC14(v13, &dword_268CBE000, v14, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v14);

  a3(v17);

  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

uint64_t sub_268DB3560()
{
  type metadata accessor for GetAXColorFiltersGrayscaleHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE7FF8 = result;
  return result;
}

uint64_t *sub_268DB35C8()
{
  if (qword_280FE2CB0 != -1)
  {
    swift_once();
  }

  return &qword_280FE7FF8;
}

uint64_t sub_268DB3628()
{
  v1 = *sub_268DB35C8();

  return v1;
}

double sub_268DB3658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXColorFiltersGrayscaleHandler handling intent", 49, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBA014();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268DB3ADC, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268DB3874(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3EAE4();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t sub_268DB3B34()
{
  type metadata accessor for GetAXAutoBrightnessHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80E8 = result;
  return result;
}

uint64_t *sub_268DB3B9C()
{
  if (qword_280FE3BF8 != -1)
  {
    swift_once();
  }

  return &qword_280FE80E8;
}

uint64_t sub_268DB3BFC()
{
  v1 = *sub_268DB3B9C();

  return v1;
}

double sub_268DB3C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXAutoBrightnessHandler handling intent", 42, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBA074();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268DB40B0, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268DB3E48(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D41E74();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

uint64_t sub_268DB4108()
{
  sub_268DB41C0();
  sub_268DB4220();
  swift_beginAccess();
  type metadata accessor for INDeviceCategory(0);
  sub_268F9ADC4();
  swift_endAccess();
  return v1;
}

uint64_t *sub_268DB41C0()
{
  if (qword_2802DAFE0 != -1)
  {
    swift_once();
  }

  return &qword_2802DC8B0;
}

uint64_t sub_268DB4220()
{
  sub_268F9AEF4();
  v1 = sub_268F9AE14();
  v2 = MGGetSInt32Answer();
  MEMORY[0x277D82BD8](v1);

  return v2;
}

uint64_t sub_268DB4290()
{
  sub_268DB4360();
  type metadata accessor for MGProductType(0);
  sub_268DB44CC();
  if (sub_268F9B754())
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_268F9B754();
  }

  return v1 & 1;
}

uint64_t sub_268DB4378()
{
  sub_268DB4360();
  type metadata accessor for MGProductType(0);
  sub_268DB44CC();
  return sub_268F9B754() & 1;
}

uint64_t sub_268DB43E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC8C0, qword_268F9FD50);
  sub_268F9B734();
  *v0 = 4;
  *(v0 + 8) = 5;
  *(v0 + 16) = 7;
  *(v0 + 24) = 6;
  *(v0 + 32) = 3;
  *(v0 + 40) = 2;
  *(v0 + 48) = 1;
  *(v0 + 56) = 1;
  *(v0 + 64) = 9;
  *(v0 + 72) = 4;
  *(v0 + 80) = 6;
  *(v0 + 88) = 3;
  sub_268CD0F7C();
  type metadata accessor for INDeviceCategory(0);
  result = sub_268F9ADA4();
  qword_2802DC8B0 = result;
  return result;
}

unint64_t sub_268DB44CC()
{
  v2 = qword_2802DC8B8;
  if (!qword_2802DC8B8)
  {
    type metadata accessor for MGProductType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC8B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DB454C()
{
  v1 = sub_268DB41C0();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

double sub_268DB45A4(uint64_t a1)
{
  v2 = sub_268DB41C0();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();

  return result;
}

uint64_t sub_268DB462C()
{
  type metadata accessor for GetAXButtonShapesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8130 = result;
  return result;
}

uint64_t *sub_268DB4694()
{
  if (qword_280FE4238 != -1)
  {
    swift_once();
  }

  return &qword_280FE8130;
}

uint64_t sub_268DB46F4()
{
  v1 = *sub_268DB4694();

  return v1;
}

double sub_268DB4724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v8 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXButtonShapesHandler handling intent", 40, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBA0D4();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);
  MEMORY[0x277D82BE0](a1);

  v19 = a1;
  v20 = v3;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268DB4BA8, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268DB4940(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3E5B4();

  if (v17)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v13 = sub_268E41A08(v16, 0, 0, v14, 0, 0);
  MEMORY[0x277D82BD8](v16);
  v11 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v12 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v5;
  MEMORY[0x277D82BE0](v13);
  sub_268CDD0DC();
  sub_268CDD1A4();
  v8 = sub_268F9AE74();
  v9 = v6;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC14(v11, &dword_268CBE000, v12, "Sending back response %@", 24, 2);

  MEMORY[0x277D82BD8](v12);

  a3(v13);

  *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
  return result;
}

double sub_268DB4C00()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268DB4CDC(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  return MEMORY[0x2822009F8](sub_268DB4D1C, 0);
}

uint64_t sub_268DB4D1C()
{
  v5 = MEMORY[0x277D55BF0];
  v0[2] = v0;
  v7 = sub_268F9AEF4();
  v8 = v1;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v9 = sub_268F9B4F4();
  v0[7] = v9;
  v10 = (v5 + *v5);
  v2 = swift_task_alloc();
  v6[8] = v2;
  *v2 = v6[2];
  v2[1] = sub_268DB4E74;
  v3 = v6[4];

  return v10(v3, v7, v8, v9);
}

uint64_t sub_268DB4E74()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268DB5020, 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_268DB5020()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

double sub_268DB50CC()
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

double sub_268DB5190(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v5 = v1;
  *v1 = sub_268F9AEF4();
  v5[1] = v2;
  v7 = sub_268F9A9C4();
  v5[5] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8E4();

  return result;
}

uint64_t sub_268DB530C(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[6] = a2;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[3] = a2;
  v3[4] = v2;
  return MEMORY[0x2822009F8](sub_268DB5360, 0);
}

uint64_t sub_268DB5360()
{
  v11 = MEMORY[0x277D55BF0];
  v9 = v0[6];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v8 = v2;
  *v2 = sub_268F9AEF4();
  v8[1] = v3;
  v10 = sub_268F9A9C4();
  v8[5] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8 + 2);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v9);
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v15 = sub_268F9B4F4();
  v0[9] = v15;
  v16 = (v11 + *v11);
  v5 = swift_task_alloc();
  v12[10] = v5;
  *v5 = v12[2];
  v5[1] = sub_268DB5558;
  v6 = v12[5];

  return v16(v6, v13, v14, v15);
}

uint64_t sub_268DB5558()
{
  v4 = *v1;
  *(v4 + 16) = *v1;
  *(v4 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268DB5710, 0);
  }

  else
  {

    v2 = *(*(v4 + 16) + 8);

    return v2();
  }
}

uint64_t sub_268DB5710()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

double sub_268DB57C0(uint64_t a1)
{
  sub_268F9AEF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v5 = v1;
  *v1 = sub_268F9AEF4();
  v5[1] = v2;
  v7 = sub_268F9A9C4();
  v5[5] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1);
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  sub_268F9B4F4();
  sub_268F9A8F4();

  return result;
}

uint64_t type metadata accessor for SetLabeledSettingIntentCATs(uint64_t a1)
{
  v2 = qword_2802DC8C8;
  if (!qword_2802DC8C8)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268DB5998(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268DB5A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v22 = a2;
  v19 = a3;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v23 = sub_268F9AB24();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v15 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v4, v5, v6);
  v17 = &v14 - v15;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v7, v19, v8);
  v18 = &v14 - v16;
  v28 = v9;
  v27 = v10;
  v26 = v11;
  v29 = v3;
  sub_268CDC358(v9, &v14 - v16);
  (*(v20 + 16))(v17, v22, v23);
  MEMORY[0x277D82BE0](v19);
  v25 = sub_268F9A8D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

uint64_t sub_268DB5C64()
{
  type metadata accessor for OpenIntentHandler();
  result = sub_268DB5CC0();
  qword_2802DC8E0 = result;
  return result;
}

uint64_t sub_268DB5CC0()
{
  v33 = 0;
  v40[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC8E8, &unk_268F9FE60);
  v31 = sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  v40[0] = sub_268F9ADA4();
  static BinarySettingIdentifier.allCases.getter();
  v39[2] = v0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
  v32 = v34;
  sub_268DB7710();
  v35 = 0;
  v36 = sub_268F9B514();
  v39[0] = v36;
  v28 = v17;
  MEMORY[0x28223BE20](v17, v1, v2, v3);
  v29 = v15;
  v16 = v40;
  sub_268D28B4C();
  sub_268F9AFA4();
  v30 = 0;
  sub_268CD7930(v39);
  static NumericSettingIdentifier.allCases.getter();
  v38[1] = v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC910, "ā");
  v24 = v25;
  sub_268DB790C();
  v5 = sub_268F9B514();
  v26 = 0;
  v27 = v5;
  v38[0] = v5;
  v21 = v17;
  MEMORY[0x28223BE20](v17, v6, v7, v8);
  v22 = v15;
  v16 = v40;
  sub_268DB7A80();
  sub_268F9AFA4();
  v23 = 0;
  sub_268CD7930(v38);
  sub_268EC6228();
  v37[1] = v9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC928, &unk_268F9FE70);
  v17[3] = v18;
  sub_268DB7B80();
  v10 = sub_268F9B514();
  v19 = 0;
  v20 = v10;
  v37[0] = v10;
  v17[1] = v17;
  MEMORY[0x28223BE20](v17, v11, v12, v13);
  v17[2] = v15;
  v16 = v40;
  sub_268DB7CE8();
  sub_268F9AFA4();
  sub_268CD7930(v37);
  v17[0] = v40[0];

  sub_268CD7930(v40);
  return v17[0];
}

uint64_t *sub_268DB60A4()
{
  if (qword_2802DAFF0 != -1)
  {
    swift_once();
  }

  return &qword_2802DC8E0;
}

uint64_t sub_268DB6104()
{
  v1 = *sub_268DB60A4();

  return v1;
}

_BYTE *sub_268DB613C()
{
  type metadata accessor for OpenIntentHandler();
  memset(v1, 0, sizeof(v1));
  result = sub_268DB6198(1, v1);
  qword_2802F0820 = result;
  return result;
}

uint64_t *sub_268DB61E0()
{
  if (qword_2802DAFF8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0820;
}

uint64_t sub_268DB6240()
{
  v0 = sub_268DB61E0();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268DB62A8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_deviceState);
  swift_beginAccess();
  sub_268D35D60(v3, a1);
  return swift_endAccess();
}

void *sub_268DB630C(void *a1)
{
  v5[5] = 0;
  v5[6] = a1;
  sub_268D35D60(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_deviceState);
  swift_beginAccess();
  sub_268DB7D70(v5, v3);
  swift_endAccess();
  return sub_268D28414(a1);
}

_BYTE *sub_268DB643C(char a1, void *a2)
{
  v11 = 0;
  v10 = a1 & 1;
  v9[5] = a2;
  v2 = OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_deviceState;
  *OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_deviceState = 0;
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  v11[OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_enableTelemetryForSignpost] = a1;
  v4 = v11;
  sub_268D35D60(a2, v9);
  v5 = &v4[OBJC_IVAR____TtC19SiriSettingsIntents17OpenIntentHandler_deviceState];
  swift_beginAccess();
  sub_268DB7D70(v9, v5);
  swift_endAccess();
  v8.receiver = v11;
  v8.super_class = type metadata accessor for OpenIntentHandler();
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v7);
  v11 = v7;
  sub_268D28414(a2);
  MEMORY[0x277D82BD8](v11);
  return v7;
}

void sub_268DB6584(void *a1, void (*a2)(void), uint64_t a3)
{
  v76 = 0;
  v69 = 0;
  v70 = 0;
  v83 = a1;
  v81 = a2;
  v82 = a3;
  v80 = v3;
  v60 = sub_268F9B284();
  v4 = sub_268DC7AE8();
  v61 = *v4;
  MEMORY[0x277D82BE0](*v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v60, &dword_268CBE000, v61, "OpenIntentHandler handling intent.", 34, 2);

  MEMORY[0x277D82BD8](v61);
  sub_268DB62A8(v77);
  if (v78)
  {
    sub_268CDF978(v77, __dst);
  }

  else
  {
    sub_268F99C44();
    if (v78)
    {
      sub_268D28414(v77);
    }
  }

  v57 = sub_268F80E80(a1, __dst);
  __swift_destroy_boxed_opaque_existential_0(__dst);
  if (v57)
  {
    v14 = sub_268F9B284();
    v13 = sub_268DC7AE8();
    v15 = *v13;
    MEMORY[0x277D82BE0](*v13);
    sub_268F9B734();
    sub_268F9AC14(v14, &dword_268CBE000, v15, "OpenIntentHandler requires device unlock.", 41, 2);

    MEMORY[0x277D82BD8](v15);
    sub_268DB7E34();
    v76 = sub_268CD42AC(2, 0);
    MEMORY[0x277D82BE0](v76);
    [v76 _setRequiresAuthentication_];
    MEMORY[0x277D82BD8](v76);

    (a2)(v76);

    MEMORY[0x277D82BD8](v76);
  }

  else
  {
    v56 = [a1 settingMetadata];
    if (v56)
    {
      v51 = [v56 settingId];
      v52 = sub_268F9AE24();
      v53 = v5;
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v51);
      v54 = v52;
      v55 = v53;
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    if (v55)
    {
      v69 = v54;
      v70 = v55;
      sub_268DB60A4();

      v67[0] = v54;
      v67[1] = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
      sub_268F9ADC4();
      sub_268CD9D30(v67);
      v50 = v68;
      if (v68 == 1)
      {

        v41 = sub_268F9B294();
        v9 = sub_268DC7AE8();
        oslog = *v9;
        MEMORY[0x277D82BE0](*v9);
        MEMORY[0x277D82BE0](a1);
        v34 = swift_allocObject();
        *(v34 + 16) = a1;
        v36 = swift_allocObject();
        *(v36 + 16) = 32;
        v37 = swift_allocObject();
        *(v37 + 16) = 8;
        v35 = swift_allocObject();
        *(v35 + 16) = sub_268DB7E98;
        *(v35 + 24) = v34;
        v38 = swift_allocObject();
        *(v38 + 16) = sub_268CD7608;
        *(v38 + 24) = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
        sub_268F9B734();
        v39 = v10;

        *v39 = sub_268CD7600;
        v39[1] = v36;

        v39[2] = sub_268CD7600;
        v39[3] = v37;

        v39[4] = sub_268CD7614;
        v39[5] = v38;
        sub_268CD0F7C();

        if (os_log_type_enabled(oslog, v41))
        {
          buf = sub_268F9B3A4();
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
          v32 = sub_268CD5448(0, v30, v30);
          v33 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v66 = buf;
          v65 = v32;
          v64 = v33;
          sub_268CD549C(2, &v66);
          sub_268CD549C(1, &v66);
          v62 = sub_268CD7600;
          v63 = v36;
          sub_268CD54B0(&v62, &v66, &v65, &v64);
          v62 = sub_268CD7600;
          v63 = v37;
          sub_268CD54B0(&v62, &v66, &v65, &v64);
          v62 = sub_268CD7614;
          v63 = v38;
          sub_268CD54B0(&v62, &v66, &v65, &v64);
          _os_log_impl(&dword_268CBE000, oslog, v41, "Unable to find a punchout url for the setting intent %s", buf, 0xCu);
          sub_268CD54FC(v32, 0, v30);
          sub_268CD54FC(v33, 1, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();
        }

        else
        {
        }

        MEMORY[0x277D82BD8](oslog);

        v29 = sub_268DB7EA0(0, 19);
        a2();
        MEMORY[0x277D82BD8](v29);
      }

      else
      {

        sub_268DB7E34();
        v49 = sub_268CD42AC(3, 0);

        if (v50)
        {
          v47 = sub_268F9AE14();

          v48 = v47;
        }

        else
        {
          v48 = 0;
        }

        [v49 setPunchoutUrl_];
        MEMORY[0x277D82BD8](v48);
        v45 = sub_268F9B284();
        v6 = sub_268DC7AE8();
        v46 = *v6;
        MEMORY[0x277D82BE0](*v6);
        sub_268F9B734();
        v44 = v7;
        MEMORY[0x277D82BE0](v49);
        sub_268DB9134();
        v42 = sub_268F9AE74();
        v43 = v8;
        v44[3] = MEMORY[0x277D837D0];
        v44[4] = sub_268CDD224();
        *v44 = v42;
        v44[1] = v43;
        sub_268CD0F7C();
        sub_268F9AC14(v45, &dword_268CBE000, v46, "Sending back response %@", 24, 2);

        MEMORY[0x277D82BD8](v46);

        (a2)(v49);

        MEMORY[0x277D82BD8](v49);
      }
    }

    else
    {
      v28 = sub_268F9B294();
      v11 = sub_268DC7AE8();
      log = *v11;
      MEMORY[0x277D82BE0](*v11);
      MEMORY[0x277D82BE0](a1);
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      v23 = swift_allocObject();
      *(v23 + 16) = 32;
      v24 = swift_allocObject();
      *(v24 + 16) = 8;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_268DB7E98;
      *(v22 + 24) = v21;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_268CD7608;
      *(v25 + 24) = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      sub_268F9B734();
      v26 = v12;

      *v26 = sub_268CD7600;
      v26[1] = v23;

      v26[2] = sub_268CD7600;
      v26[3] = v24;

      v26[4] = sub_268CD7614;
      v26[5] = v25;
      sub_268CD0F7C();

      if (os_log_type_enabled(log, v28))
      {
        v18 = sub_268F9B3A4();
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v19 = sub_268CD5448(0, v17, v17);
        v20 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v75 = v18;
        v74 = v19;
        v73 = v20;
        sub_268CD549C(2, &v75);
        sub_268CD549C(1, &v75);
        v71 = sub_268CD7600;
        v72 = v23;
        sub_268CD54B0(&v71, &v75, &v74, &v73);
        v71 = sub_268CD7600;
        v72 = v24;
        sub_268CD54B0(&v71, &v75, &v74, &v73);
        v71 = sub_268CD7614;
        v72 = v25;
        sub_268CD54B0(&v71, &v75, &v74, &v73);
        _os_log_impl(&dword_268CBE000, log, v28, "Unable to find a setting id in the intent %s", v18, 0xCu);
        sub_268CD54FC(v19, 0, v17);
        sub_268CD54FC(v20, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }

      else
      {
      }

      MEMORY[0x277D82BD8](log);

      sub_268DB7E34();
      v16 = sub_268CD42AC(7, 0);
      a2();
      MEMORY[0x277D82BD8](v16);
    }
  }
}

uint64_t sub_268DB7520(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_268DA96FC();
  sub_268DB927C();
  return sub_268F9AE74();
}

BOOL sub_268DB7688(char *a1)
{
  v6 = 0;
  v6 = *a1;
  v5 = v6;
  v4[0] = sub_268E7B768();
  v4[1] = v1;
  v3 = v1 != 0;
  sub_268CD9D30(v4);
  return v3;
}

unint64_t sub_268DB7710()
{
  v2 = qword_2802DC900;
  if (!qword_2802DC900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC090, &qword_268F9D9A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC900);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DB7798(char *a1, uint64_t a2)
{
  sub_268E7C600();
  sub_268E7B768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC9E8, &qword_268F9FED8);
  return sub_268F9ADD4();
}

BOOL sub_268DB7884(char *a1)
{
  v6 = 0;
  v6 = *a1;
  v5 = v6;
  v4[0] = sub_268EB0030();
  v4[1] = v1;
  v3 = v1 != 0;
  sub_268CD9D30(v4);
  return v3;
}

unint64_t sub_268DB790C()
{
  v2 = qword_2802DC918;
  if (!qword_2802DC918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC910, "ā");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC918);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DB7994(char *a1, uint64_t a2)
{
  sub_268EB01F8();
  sub_268EB0030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC9E8, &qword_268F9FED8);
  return sub_268F9ADD4();
}

unint64_t sub_268DB7A80()
{
  v2 = qword_2802DC920;
  if (!qword_2802DC920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC910, "ā");
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC920);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268DB7B08(char *a1)
{
  v5 = 0;
  v5 = *a1;
  v4[0] = sub_268EC6290(v5);
  v4[1] = v1;
  v3 = v1 != 0;
  sub_268CD9D30(v4);
  return v3;
}

unint64_t sub_268DB7B80()
{
  v2 = qword_2802DC930;
  if (!qword_2802DC930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC928, &unk_268F9FE70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC930);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DB7C08(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = v2;
  sub_268EC63D4(v2);
  sub_268EC6290(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC9E8, &qword_268F9FED8);
  return sub_268F9ADD4();
}

unint64_t sub_268DB7CE8()
{
  v2 = qword_2802DC938;
  if (!qword_2802DC938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DC928, &unk_268F9FE70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC938);
    return WitnessTable;
  }

  return v2;
}

void *sub_268DB7D70(const void *a1, void *a2)
{
  if (a2[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
    memcpy(a2, a1, 0x28uLL);
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

unint64_t sub_268DB7E34()
{
  v2 = qword_2802DC958;
  if (!qword_2802DC958)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DC958);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_268DB7EA0(uint64_t a1, char a2)
{
  sub_268DB7E34();
  v5 = sub_268CD42AC(8, 0);
  sub_268E948B8(a2);
  v4 = sub_268F9AE14();

  [v5 setErrorDetail_];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id OpenIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OpenIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_268DB80C4(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_268F9B1D4();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_268F9B5A4();
  __break(1u);
LABEL_12:
  result = sub_268F9B584();
  __break(1u);
  return result;
}

uint64_t sub_268DB83F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17, a2, v26, a4);
        v15 = sub_268DB9234;
        v16 = &v37;
        sub_268DB80C4(sub_268DB9250, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_268F9B584();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_268F9B584();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_268F9B584();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_268F9B584();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_268F9B584();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_268F9B584();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_268F9B584();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_268F9B584();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_268F9B584();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_268F9B584();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_268F9B584();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_268F9B584();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_268F9B5A4();
    __break(1u);
  }

  result = sub_268F9B584();
  __break(1u);
  return result;
}

uint64_t sub_268DB8C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_268F9B584();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_268F9B584();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_268F9B584();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_268F9B584();
                __break(1u);
              }

              sub_268F9B584();
              __break(1u);
            }

            sub_268F9B584();
            __break(1u);
          }

          sub_268F9B584();
          __break(1u);
        }

        sub_268F9B584();
        __break(1u);
      }

      sub_268F9B584();
      __break(1u);
    }

    sub_268F9B584();
    __break(1u);
  }

  result = sub_268F9B584();
  __break(1u);
  return result;
}

unint64_t sub_268DB9134()
{
  v2 = qword_2802DC970;
  if (!qword_2802DC970)
  {
    sub_268DB7E34();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC970);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268DB927C()
{
  v2 = qword_2802DC9E0;
  if (!qword_2802DC9E0)
  {
    sub_268DA96FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DC9E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268DB92FC()
{
  type metadata accessor for SetIHandler();
  v0 = sub_268CDC590();
  result = sub_268D5DE80(v0);
  qword_2802F0828 = result;
  return result;
}

uint64_t *sub_268DB935C()
{
  if (qword_2802DB000 != -1)
  {
    swift_once();
  }

  return &qword_2802F0828;
}

uint64_t sub_268DB93BC()
{
  v1 = *sub_268DB935C();

  return v1;
}

uint64_t *sub_268DB93EC()
{
  if (qword_2802DB040 != -1)
  {
    swift_once();
  }

  return &qword_2802F08C0;
}

uint64_t sub_268DB944C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, void (*a6)(__n128)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a9;
  v34 = a1;
  v38 = a2;
  v35 = a3;
  v44 = a4;
  v45 = a5;
  v36 = a6;
  v37 = a7;
  v32 = "";
  v33 = "enableTelemetry=YES";
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v57 = a8;
  v39 = sub_268F9AC54();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44, v38, v35, v9);
  v43 = v20 - v42;
  v56 = v20 - v42;
  v53 = v10;
  v54 = v11;
  v55 = v12;
  v52 = v13;
  v51 = v14 & 1;
  v49 = v15;
  v50 = v16;
  MEMORY[0x277D82BE0](v13);
  sub_268F9AC44();
  if (v45)
  {
    v27 = v33;
    v28 = 19;
  }

  else
  {
    v27 = v32;
    v28 = 0;
  }

  v29 = 2;
  v21 = 2;
  v20[2] = v28;
  v22 = v27;
  v46 = v27;
  v47 = v28;
  v48 = 2;
  v23 = sub_268F9B2F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v24 = sub_268F9B734();
  sub_268F9AC24();

  v18 = v31;
  (v36)(v17);
  v25 = v18;
  v26 = v18;
  if (v18)
  {
    v20[1] = v26;
  }

  sub_268DBA134(v44, v34, v38, v35, v43);
  return (*(v40 + 8))(v43, v39);
}

uint64_t *sub_268DB97B4()
{
  if (qword_280FE5AD0 != -1)
  {
    swift_once();
  }

  return &qword_280FE82A0;
}

uint64_t *sub_268DB9814()
{
  if (qword_2802DB298 != -1)
  {
    swift_once();
  }

  return &qword_2802F0F98;
}

uint64_t *sub_268DB9874()
{
  if (qword_2802DB208 != -1)
  {
    swift_once();
  }

  return &qword_2802F0DE8;
}

uint64_t *sub_268DB98D4()
{
  if (qword_280FE5B00 != -1)
  {
    swift_once();
  }

  return &qword_280FE8300;
}

uint64_t sub_268DB9934(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v22 = a1;
  v24 = a2;
  v23 = a3;
  v30 = a4;
  v31 = a5;
  v20 = "";
  v21 = "enableTelemetry=YES";
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v25 = sub_268F9AC54();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v24, v23, v5);
  v29 = v12 - v28;
  v40 = v12 - v28;
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v36 = v9;
  v35 = v10 & 1;
  MEMORY[0x277D82BE0](v9);
  sub_268F9AC44();
  if (v31)
  {
    v17 = v21;
    v18 = 19;
  }

  else
  {
    v17 = v20;
    v18 = 0;
  }

  v19 = 2;
  v13 = 2;
  v12[1] = v18;
  v14 = v17;
  v32 = v17;
  v33 = v18;
  v34 = 2;
  v15 = sub_268F9B2F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v16 = sub_268F9B734();
  sub_268F9AC24();

  return (*(v26 + 8))(v29, v25);
}

uint64_t sub_268DB9B78(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v11 = a4;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v18 = sub_268F9AC54();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v9 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13, v14, v11);
  v17 = &v9 - v9;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v19 = v7;
  v10 = sub_268F9B2E4();
  MEMORY[0x277D82BE0](v11);
  sub_268F9AC44();
  sub_268F9AC34();
  return (*(v15 + 8))(v17, v18);
}

uint64_t *sub_268DB9CB4()
{
  if (qword_2802DB018 != -1)
  {
    swift_once();
  }

  return &qword_2802F0848;
}

uint64_t *sub_268DB9D14()
{
  if (qword_2802DB2C8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1028;
}

uint64_t *sub_268DB9D74()
{
  if (qword_2802DB0E0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0AA0;
}

uint64_t *sub_268DB9DD4()
{
  if (qword_2802DB2F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F10A0;
}

uint64_t *sub_268DB9E34()
{
  if (qword_2802DB250 != -1)
  {
    swift_once();
  }

  return &qword_2802F0EC0;
}

uint64_t *sub_268DB9E94()
{
  if (qword_2802DB038 != -1)
  {
    swift_once();
  }

  return &qword_2802F08A8;
}

uint64_t *sub_268DB9EF4()
{
  if (qword_2802DB2C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1010;
}

uint64_t *sub_268DB9F54()
{
  if (qword_2802DB070 != -1)
  {
    swift_once();
  }

  return &qword_2802F0950;
}

uint64_t *sub_268DB9FB4()
{
  if (qword_2802DB0F8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0AE8;
}

uint64_t *sub_268DBA014()
{
  if (qword_2802DB068 != -1)
  {
    swift_once();
  }

  return &qword_2802F0938;
}

uint64_t *sub_268DBA074()
{
  if (qword_2802DB048 != -1)
  {
    swift_once();
  }

  return &qword_2802F08D8;
}

uint64_t *sub_268DBA0D4()
{
  if (qword_2802DB058 != -1)
  {
    swift_once();
  }

  return &qword_2802F0908;
}

void sub_268DBA1B0()
{
  sub_268DBA1F8();
  qword_2802F0830 = v0;
  qword_2802F0838 = v1;
  byte_2802F0840 = v2;
}

uint64_t *sub_268DBA234()
{
  if (qword_2802DB008 != -1)
  {
    swift_once();
  }

  return &qword_2802F0830;
}

void sub_268DBA2BC()
{
  sub_268DBA1F8();
  qword_280FE8300 = v0;
  qword_280FE8308 = v1;
  byte_280FE8310 = v2;
}

void sub_268DBA32C()
{
  sub_268DBA1F8();
  qword_2802F0848 = v0;
  qword_2802F0850 = v1;
  byte_2802F0858 = v2;
}

void sub_268DBA39C()
{
  sub_268DBA1F8();
  qword_2802F0860 = v0;
  qword_2802F0868 = v1;
  byte_2802F0870 = v2;
}

uint64_t *sub_268DBA3E4()
{
  if (qword_2802DB020 != -1)
  {
    swift_once();
  }

  return &qword_2802F0860;
}

void sub_268DBA46C()
{
  sub_268DBA1F8();
  qword_2802F0878 = v0;
  qword_2802F0880 = v1;
  byte_2802F0888 = v2;
}

uint64_t *sub_268DBA4B4()
{
  if (qword_2802DB028 != -1)
  {
    swift_once();
  }

  return &qword_2802F0878;
}

void sub_268DBA53C()
{
  sub_268DBA1F8();
  qword_2802F0890 = v0;
  qword_2802F0898 = v1;
  byte_2802F08A0 = v2;
}

uint64_t *sub_268DBA584()
{
  if (qword_2802DB030 != -1)
  {
    swift_once();
  }

  return &qword_2802F0890;
}

void sub_268DBA60C()
{
  sub_268DBA1F8();
  qword_2802F08A8 = v0;
  qword_2802F08B0 = v1;
  byte_2802F08B8 = v2;
}

void sub_268DBA67C()
{
  sub_268DBA1F8();
  qword_2802F08C0 = v0;
  qword_2802F08C8 = v1;
  byte_2802F08D0 = v2;
}

void sub_268DBA6EC()
{
  sub_268DBA1F8();
  qword_2802F08D8 = v0;
  qword_2802F08E0 = v1;
  byte_2802F08E8 = v2;
}

void sub_268DBA75C()
{
  sub_268DBA1F8();
  qword_2802F08F0 = v0;
  qword_2802F08F8 = v1;
  byte_2802F0900 = v2;
}

uint64_t *sub_268DBA7A4()
{
  if (qword_2802DB050 != -1)
  {
    swift_once();
  }

  return &qword_2802F08F0;
}

void sub_268DBA82C()
{
  sub_268DBA1F8();
  qword_2802F0908 = v0;
  qword_2802F0910 = v1;
  byte_2802F0918 = v2;
}

void sub_268DBA89C()
{
  sub_268DBA1F8();
  qword_2802F0920 = v0;
  qword_2802F0928 = v1;
  byte_2802F0930 = v2;
}

uint64_t *sub_268DBA8E4()
{
  if (qword_2802DB060 != -1)
  {
    swift_once();
  }

  return &qword_2802F0920;
}

void sub_268DBA96C()
{
  sub_268DBA1F8();
  qword_2802F0938 = v0;
  qword_2802F0940 = v1;
  byte_2802F0948 = v2;
}

void sub_268DBA9DC()
{
  sub_268DBA1F8();
  qword_2802F0950 = v0;
  qword_2802F0958 = v1;
  byte_2802F0960 = v2;
}

void sub_268DBAA4C()
{
  sub_268DBA1F8();
  qword_2802F0968 = v0;
  qword_2802F0970 = v1;
  byte_2802F0978 = v2;
}

uint64_t *sub_268DBAA94()
{
  if (qword_2802DB078 != -1)
  {
    swift_once();
  }

  return &qword_2802F0968;
}

void sub_268DBAB1C()
{
  sub_268DBA1F8();
  qword_2802F0980 = v0;
  qword_2802F0988 = v1;
  byte_2802F0990 = v2;
}

uint64_t *sub_268DBAB64()
{
  if (qword_2802DB080 != -1)
  {
    swift_once();
  }

  return &qword_2802F0980;
}

void sub_268DBABEC()
{
  sub_268DBA1F8();
  qword_2802F0998 = v0;
  qword_2802F09A0 = v1;
  byte_2802F09A8 = v2;
}

uint64_t *sub_268DBAC34()
{
  if (qword_2802DB088 != -1)
  {
    swift_once();
  }

  return &qword_2802F0998;
}

void sub_268DBACBC()
{
  sub_268DBA1F8();
  qword_2802F09B0 = v0;
  qword_2802F09B8 = v1;
  byte_2802F09C0 = v2;
}

uint64_t *sub_268DBAD04()
{
  if (qword_2802DB090 != -1)
  {
    swift_once();
  }

  return &qword_2802F09B0;
}

void sub_268DBAD8C()
{
  sub_268DBA1F8();
  qword_2802F09C8 = v0;
  qword_2802F09D0 = v1;
  byte_2802F09D8 = v2;
}

uint64_t *sub_268DBADD4()
{
  if (qword_2802DB098 != -1)
  {
    swift_once();
  }

  return &qword_2802F09C8;
}

void sub_268DBAE5C()
{
  sub_268DBA1F8();
  qword_2802F09E0 = v0;
  qword_2802F09E8 = v1;
  byte_2802F09F0 = v2;
}

uint64_t *sub_268DBAEA4()
{
  if (qword_2802DB0A0 != -1)
  {
    swift_once();
  }

  return &qword_2802F09E0;
}

void sub_268DBAF2C()
{
  sub_268DBA1F8();
  qword_2802F09F8 = v0;
  qword_2802F0A00 = v1;
  byte_2802F0A08 = v2;
}

uint64_t *sub_268DBAF74()
{
  if (qword_2802DB0A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F09F8;
}

void sub_268DBAFFC()
{
  sub_268DBA1F8();
  qword_2802F0A10 = v0;
  qword_2802F0A18 = v1;
  byte_2802F0A20 = v2;
}

uint64_t *sub_268DBB044()
{
  if (qword_2802DB0B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A10;
}

void sub_268DBB0CC()
{
  sub_268DBA1F8();
  qword_2802F0A28 = v0;
  qword_2802F0A30 = v1;
  byte_2802F0A38 = v2;
}

uint64_t *sub_268DBB114()
{
  if (qword_2802DB0B8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A28;
}

void sub_268DBB19C()
{
  sub_268DBA1F8();
  qword_2802F0A40 = v0;
  qword_2802F0A48 = v1;
  byte_2802F0A50 = v2;
}

uint64_t *sub_268DBB1E4()
{
  if (qword_2802DB0C0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A40;
}

void sub_268DBB26C()
{
  sub_268DBA1F8();
  qword_2802F0A58 = v0;
  qword_2802F0A60 = v1;
  byte_2802F0A68 = v2;
}

uint64_t *sub_268DBB2B4()
{
  if (qword_2802DB0C8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A58;
}

void sub_268DBB33C()
{
  sub_268DBA1F8();
  qword_2802F0A70 = v0;
  qword_2802F0A78 = v1;
  byte_2802F0A80 = v2;
}

uint64_t *sub_268DBB384()
{
  if (qword_2802DB0D0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A70;
}

void sub_268DBB40C()
{
  sub_268DBA1F8();
  qword_2802F0A88 = v0;
  qword_2802F0A90 = v1;
  byte_2802F0A98 = v2;
}

uint64_t *sub_268DBB454()
{
  if (qword_2802DB0D8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0A88;
}

void sub_268DBB4DC()
{
  sub_268DBA1F8();
  qword_2802F0AA0 = v0;
  qword_2802F0AA8 = v1;
  byte_2802F0AB0 = v2;
}

void sub_268DBB54C()
{
  sub_268DBA1F8();
  qword_2802F0AB8 = v0;
  qword_2802F0AC0 = v1;
  byte_2802F0AC8 = v2;
}

uint64_t *sub_268DBB594()
{
  if (qword_2802DB0E8 != -1)
  {
    swift_once();
  }

  return &qword_2802F0AB8;
}

void sub_268DBB61C()
{
  sub_268DBA1F8();
  qword_2802F0AD0 = v0;
  qword_2802F0AD8 = v1;
  byte_2802F0AE0 = v2;
}

uint64_t *sub_268DBB664()
{
  if (qword_2802DB0F0 != -1)
  {
    swift_once();
  }

  return &qword_2802F0AD0;
}

void sub_268DBB6EC()
{
  sub_268DBA1F8();
  qword_2802F0AE8 = v0;
  qword_2802F0AF0 = v1;
  byte_2802F0AF8 = v2;
}

void sub_268DBB75C()
{
  sub_268DBA1F8();
  qword_2802F0B00 = v0;
  qword_2802F0B08 = v1;
  byte_2802F0B10 = v2;
}

uint64_t *sub_268DBB7A4()
{
  if (qword_2802DB100 != -1)
  {
    swift_once();
  }

  return &qword_2802F0B00;
}

void sub_268DBB82C()
{
  sub_268DBA1F8();
  qword_2802F0B18 = v0;
  qword_2802F0B20 = v1;
  byte_2802F0B28 = v2;
}

uint64_t *sub_268DBB874()
{
  if (qword_2802DB108 != -1)
  {
    swift_once();
  }

  return &qword_2802F0B18;
}

void sub_268DBB8FC()
{
  sub_268DBA1F8();
  qword_2802F0B30 = v0;
  qword_2802F0B38 = v1;
  byte_2802F0B40 = v2;
}