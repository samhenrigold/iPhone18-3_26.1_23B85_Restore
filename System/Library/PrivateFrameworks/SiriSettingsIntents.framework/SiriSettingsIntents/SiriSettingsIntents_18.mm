uint64_t sub_268F30590(uint64_t a1)
{
  v200 = a1;
  v154 = sub_268D9C164;
  v155 = sub_268D9C164;
  v156 = sub_268D9C164;
  v157 = sub_268D9C164;
  v158 = sub_268D9C164;
  v159 = sub_268D9C164;
  v160 = sub_268D9C164;
  v161 = sub_268D9C164;
  v162 = sub_268D9C164;
  v163 = sub_268D9C164;
  v164 = sub_268D9C164;
  v239 = 0;
  v238 = 0;
  v236 = 0;
  v237 = 0;
  v222 = 0;
  v165 = 0;
  v220 = 0;
  v218 = 0;
  v216 = 0;
  v214 = 0;
  v212 = 0;
  v210 = 0;
  v208 = 0;
  v206 = 0;
  v204 = 0;
  v202 = 0;
  v169 = sub_268F99F64();
  v194 = *(v169 - 8);
  v168 = v169 - 8;
  v166 = (*(v194 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v169, v1, v2, v3);
  v167 = &v55 - v166;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
  v191 = *(*(v4 - 8) + 64);
  v170 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v169);
  v171 = &v55 - v170;
  v172 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v55 - v170, v7, v8, v9);
  v173 = &v55 - v172;
  v174 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v55 - v172, v10, v11, v12);
  v175 = &v55 - v174;
  v176 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v55 - v174, v13, v14, v15);
  v177 = &v55 - v176;
  v178 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v55 - v176, v16, v17, v18);
  v179 = &v55 - v178;
  v180 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v55 - v178, v19, v20, v21);
  v181 = &v55 - v180;
  v182 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v55 - v180, v22, v23, v24);
  v183 = &v55 - v182;
  v184 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v55 - v182, v25, v26, v27);
  v185 = &v55 - v184;
  v186 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v55 - v184, v28, v29, v30);
  v187 = &v55 - v186;
  v188 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v55 - v186, v31, v32, v33);
  v189 = &v55 - v188;
  v190 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v55 - v188, v34, v35, v36);
  v192 = &v55 - v190;
  v193 = (v191 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = MEMORY[0x28223BE20](&v55 - v190, v37, v38, v39);
  v195 = &v55 - v193;
  v239 = &v55 - v193;
  v238 = v200;
  v196 = *(v194 + 56);
  v197 = v194 + 56;
  v196(v40);
  v41 = sub_268DDA5D0();
  v198 = *v41;
  v199 = v41[1];

  v236 = v198;
  v237 = v199;

  sub_268F9A204();

  if (!v235[3])
  {
    goto LABEL_124;
  }

  v153 = v234;
  sub_268F32C94(v235, v234);
  v152 = 0;
  sub_268F9A524();
  if (swift_dynamicCast())
  {
    v150 = v233;
    v202 = v233;

    sub_268F9A324();
    v151 = v201[1];

    if (!v151 || (v149 = v151, v147 = v151, v148 = sub_268F9A0A4(), , !v148))
    {
      (v196)(v192, 1, 1, v169);
      goto LABEL_11;
    }

    v146 = v148;
    v42 = v165;
    v201[0] = v148;
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    sub_268DA5FC0();
    result = sub_268F9AF94();
    if (!v42)
    {
      sub_268CD7930(v201);
LABEL_11:
      sub_268F32D24(v192, v195);

      __swift_destroy_boxed_opaque_existential_0(v234);
      sub_268D28414(v235);
LABEL_125:
      if ((*(v194 + 48))(v195, 1, v169) == 0)
      {
        (*(v194 + 16))(v167, v195, v169);
        v58 = sub_268F99F44();
        v59 = v54;
        (*(v194 + 8))(v167, v169);
        v60 = v58;
        v61 = v59;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v57 = v61;
      v56 = v60;

      sub_268D9C0BC(v195);
      v63 = v56;
      v64 = v57;
      return v63;
    }

    __break(1u);
    goto LABEL_131;
  }

  v144 = 0;
  sub_268F9A624();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v136 = 0;
    sub_268F9A394();
    if (swift_dynamicCast())
    {
      v134 = v231;
      v206 = v231;

      sub_268F9A5C4();
      v135 = v205[1];

      if (v135 && (v133 = v135, v131 = v135, v132 = sub_268F9A0A4(), , v132))
      {
        v130 = v132;
        v45 = v165;
        v205[0] = v132;
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v45)
        {
          goto LABEL_132;
        }

        sub_268CD7930(v205);
      }

      else
      {
        (v196)(v187, 1, 1, v169);
      }

      sub_268F32D24(v187, v195);

      __swift_destroy_boxed_opaque_existential_0(v234);
      sub_268D28414(v235);
      goto LABEL_125;
    }

    v128 = 0;
    sub_268F9A444();
    if (swift_dynamicCast())
    {
      v126 = v230;
      v208 = v230;

      sub_268F9A5C4();
      v127 = v207[1];

      if (v127 && (v125 = v127, v123 = v127, v124 = sub_268F9A0A4(), , v124))
      {
        v122 = v124;
        v46 = v165;
        v207[0] = v124;
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v46)
        {
          goto LABEL_133;
        }

        sub_268CD7930(v207);
      }

      else
      {
        (v196)(v185, 1, 1, v169);
      }

      sub_268F32D24(v185, v195);

      __swift_destroy_boxed_opaque_existential_0(v234);
      sub_268D28414(v235);
      goto LABEL_125;
    }

    v120 = 0;
    sub_268F9A304();
    if (swift_dynamicCast())
    {
      v118 = v229;
      v210 = v229;

      sub_268F9A5C4();
      v119 = v209[1];

      if (v119 && (v117 = v119, v115 = v119, v116 = sub_268F9A0A4(), , v116))
      {
        v114 = v116;
        v47 = v165;
        v209[0] = v116;
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v47)
        {
          goto LABEL_134;
        }

        sub_268CD7930(v209);
      }

      else
      {
        (v196)(v183, 1, 1, v169);
      }

      sub_268F32D24(v183, v195);

      __swift_destroy_boxed_opaque_existential_0(v234);
      sub_268D28414(v235);
      goto LABEL_125;
    }

    v112 = 0;
    sub_268F9A514();
    if (swift_dynamicCast())
    {
      v110 = v228;
      v212 = v228;

      sub_268F9A664();
      v111 = v211[1];

      if (v111 && (v109 = v111, v107 = v111, v108 = sub_268F9A0A4(), , v108))
      {
        v106 = v108;
        v48 = v165;
        v211[0] = v108;
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v48)
        {
          goto LABEL_135;
        }

        sub_268CD7930(v211);
      }

      else
      {
        (v196)(v181, 1, 1, v169);
      }

      sub_268F32D24(v181, v195);

      __swift_destroy_boxed_opaque_existential_0(v234);
      sub_268D28414(v235);
      goto LABEL_125;
    }

    v104 = 0;
    sub_268F9A684();
    if (swift_dynamicCast())
    {
      v102 = v227;
      v214 = v227;

      sub_268F9A6A4();
      v103 = v213[1];

      if (v103 && (v101 = v103, v99 = v103, v100 = sub_268F9A0A4(), , v100))
      {
        v98 = v100;
        v49 = v165;
        v213[0] = v100;
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v49)
        {
          goto LABEL_136;
        }

        sub_268CD7930(v213);
      }

      else
      {
        (v196)(v179, 1, 1, v169);
      }

      sub_268F32D24(v179, v195);

      __swift_destroy_boxed_opaque_existential_0(v234);
      sub_268D28414(v235);
      goto LABEL_125;
    }

    v96 = 0;
    sub_268F9A594();
    if (swift_dynamicCast())
    {
      v94 = v226;
      v216 = v226;

      sub_268F9A664();
      v95 = v215[1];

      if (v95 && (v93 = v95, v91 = v95, v92 = sub_268F9A0A4(), , v92))
      {
        v90 = v92;
        v50 = v165;
        v215[0] = v92;
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v50)
        {
          goto LABEL_137;
        }

        sub_268CD7930(v215);
      }

      else
      {
        (v196)(v177, 1, 1, v169);
      }

      sub_268F32D24(v177, v195);

      __swift_destroy_boxed_opaque_existential_0(v234);
      sub_268D28414(v235);
      goto LABEL_125;
    }

    v88 = 0;
    sub_268F9A674();
    if (swift_dynamicCast())
    {
      v86 = v225;
      v218 = v225;

      sub_268F9A6A4();
      v87 = v217[1];

      if (v87 && (v85 = v87, v83 = v87, v84 = sub_268F9A0A4(), , v84))
      {
        v82 = v84;
        v51 = v165;
        v217[0] = v84;
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v51)
        {
          goto LABEL_138;
        }

        sub_268CD7930(v217);
      }

      else
      {
        (v196)(v175, 1, 1, v169);
      }

      sub_268F32D24(v175, v195);

      __swift_destroy_boxed_opaque_existential_0(v234);
      sub_268D28414(v235);
      goto LABEL_125;
    }

    v80 = 0;
    sub_268F9A584();
    if (swift_dynamicCast())
    {
      v78 = v224;
      v220 = v224;

      sub_268F9A664();
      v79 = v219[1];

      if (v79 && (v77 = v79, v75 = v79, v76 = sub_268F9A0A4(), , v76))
      {
        v74 = v76;
        v52 = v165;
        v219[0] = v76;
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v52)
        {
          goto LABEL_139;
        }

        sub_268CD7930(v219);
      }

      else
      {
        (v196)(v173, 1, 1, v169);
      }

      sub_268F32D24(v173, v195);

      __swift_destroy_boxed_opaque_existential_0(v234);
      sub_268D28414(v235);
      goto LABEL_125;
    }

    v72 = 0;
    sub_268F9A354();
    if (swift_dynamicCast())
    {
      v70 = v223;
      v222 = v223;

      sub_268F9A324();
      v71 = v221[1];

      if (v71 && (v69 = v71, v67 = v71, v68 = sub_268F9A0A4(), , v68))
      {
        v66 = v68;
        v53 = v165;
        v221[0] = v68;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v53)
        {
          goto LABEL_140;
        }

        sub_268CD7930(v221);
      }

      else
      {
        (v196)(v171, 1, 1, v169);
      }

      sub_268F32D24(v171, v195);

      __swift_destroy_boxed_opaque_existential_0(v234);
      sub_268D28414(v235);
      goto LABEL_125;
    }

    __swift_destroy_boxed_opaque_existential_0(v234);
LABEL_124:
    sub_268D28414(v235);

    sub_268D9C0BC(v195);
    v63 = 0;
    v64 = 0;
    return v63;
  }

  v142 = v232;
  v204 = v232;

  sub_268F9A324();
  v143 = v203[1];

  if (!v143 || (v141 = v143, v139 = v143, v140 = sub_268F9A0A4(), , !v140))
  {
    (v196)(v189, 1, 1, v169);
    goto LABEL_22;
  }

  v138 = v140;
  v44 = v165;
  v203[0] = v140;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v44)
  {
    sub_268CD7930(v203);
LABEL_22:
    sub_268F32D24(v189, v195);

    __swift_destroy_boxed_opaque_existential_0(v234);
    sub_268D28414(v235);
    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_268F31BAC(uint64_t a1)
{
  v79 = a1;
  v62 = sub_268D9C164;
  v63 = sub_268D9C164;
  v64 = sub_268D9C164;
  v65 = "ConverterUtils isNounlessSettingsTask | no nouns found on task";
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v92 = 0;
  v85 = 0;
  v66 = 0;
  v83 = 0;
  v81 = 0;
  v67 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79, v1, v2, v3);
  v68 = &v30[-v67];
  v69 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, &v30[-v67], v6, v7);
  v70 = &v30[-v69];
  v71 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, &v30[-v69], v10, v11);
  v72 = &v30[-v71];
  v73 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, &v30[-v71], v14, v15);
  v74 = &v30[-v73];
  v75 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, &v30[-v73], v18, v19);
  v76 = &v30[-v75];
  v94 = &v30[-v75];
  v93 = v20;
  v21 = sub_268DDA5D0();
  v77 = *v21;
  v78 = v21[1];

  v91 = v77;
  v92 = v78;

  sub_268F9A204();

  if (!v90[3])
  {
    goto LABEL_36;
  }

  v61 = &v89;
  sub_268F32C94(v90, &v89);
  v60 = 0;
  sub_268F9A354();
  if (swift_dynamicCast())
  {
    v58 = v88;
    v81 = v88;

    sub_268F9A324();
    v59 = v80[1];

    if (!v59 || (v57 = v59, v55 = v59, v56 = sub_268F9A0A4(), , !v56))
    {
      v24 = sub_268F99F64();
      (*(*(v24 - 8) + 56))(v74, 1);
      goto LABEL_11;
    }

    v54 = v56;
    v22 = v66;
    v80[0] = v56;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
    sub_268DA5FC0();
    result = sub_268F9AF94();
    if (!v22)
    {
      sub_268CD7930(v80);
LABEL_11:
      sub_268DA69E0(v74, v76);

      __swift_destroy_boxed_opaque_existential_0(&v89);
      sub_268D28414(v90);
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_42;
  }

  v52 = 0;
  sub_268F9A594();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v44 = 0;
    sub_268F9A584();
    if (swift_dynamicCast())
    {
      v42 = v86;
      v85 = v86;

      sub_268F9A664();
      v43 = v84[1];

      if (v43 && (v41 = v43, v39 = v43, v40 = sub_268F9A0A4(), , v40))
      {
        v38 = v40;
        v27 = v66;
        v84[0] = v40;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
        sub_268DA5FC0();
        result = sub_268F9AF94();
        if (v27)
        {
          goto LABEL_43;
        }

        sub_268CD7930(v84);
      }

      else
      {
        v28 = sub_268F99F64();
        (*(*(v28 - 8) + 56))(v70, 1);
      }

      sub_268DA69E0(v70, v76);

      __swift_destroy_boxed_opaque_existential_0(&v89);
      sub_268D28414(v90);
LABEL_37:
      sub_268D9BF94(v76, v68);
      v29 = sub_268F99F64();
      v35 = (*(*(v29 - 8) + 48))(v68, 1) == 1;
      v34 = v35;
      sub_268D9C0BC(v68);
      if (v34)
      {
        v31 = sub_268F9B284();
        v33 = *sub_268DC7EA8();
        MEMORY[0x277D82BE0](v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
        v32 = sub_268F9B734();
        sub_268F9AC14(v31, &dword_268CBE000, v33, v65, 62, 2);

        MEMORY[0x277D82BD8](v33);
        sub_268D9C0BC(v76);

        v36 = 1;
      }

      else
      {
        sub_268D9C0BC(v76);

        v36 = 0;
      }

      return v36 & 1;
    }

    __swift_destroy_boxed_opaque_existential_0(&v89);
LABEL_36:
    sub_268D28414(v90);

    v36 = 0;
    return v36 & 1;
  }

  v50 = v87;
  v83 = v87;

  sub_268F9A664();
  v51 = v82[1];

  if (!v51 || (v49 = v51, v47 = v51, v48 = sub_268F9A0A4(), , !v48))
  {
    v26 = sub_268F99F64();
    (*(*(v26 - 8) + 56))(v72, 1);
    goto LABEL_22;
  }

  v46 = v48;
  v25 = v66;
  v82[0] = v48;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7E0, &qword_268F9F558);
  sub_268DA5FC0();
  result = sub_268F9AF94();
  if (!v25)
  {
    sub_268CD7930(v82);
LABEL_22:
    sub_268DA69E0(v72, v76);

    __swift_destroy_boxed_opaque_existential_0(&v89);
    sub_268D28414(v90);
    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_268F325B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v26 = a1;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v20 = 0;
  v27 = sub_268F99DE4();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v19 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v28 = &v18 - v19;
  v33 = sub_268F99D24();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v21 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v6, v7, v8);
  v29 = &v18 - v21;
  v22 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10, &v18 - v21, v11, v12);
  v34 = &v18 - v22;
  v41 = &v18 - v22;
  v38 = sub_268F99E34();
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v23 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26, v13, v14, v15);
  v37 = &v18 - v23;
  v40 = &v18 - v23;
  v39 = v16;
  sub_268F99E24();
  sub_268F99D14();
  (*(v24 + 16))(v28, v26, v27);
  sub_268F99D04();
  (*(v31 + 16))(v29, v34, v33);
  sub_268F99E14();
  (*(v35 + 16))(v30, v37, v38);
  (*(v31 + 8))(v34, v33);
  return (*(v35 + 8))(v37, v38);
}

uint64_t sub_268F32884(uint64_t a1)
{
  v3 = sub_268F99FE4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268F32950(uint64_t a1)
{
  v3 = sub_268F9A344();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_268F32A1C(const void *a1, void *a2)
{
  v6 = sub_268F99FE4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE368, &unk_268FAA5B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_268F32B44(uint64_t a1)
{
  v3 = sub_268F9A024();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268F32BEC(uint64_t a1)
{
  v3 = sub_268F9A054();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_268F32C94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

void *sub_268F32D24(const void *a1, void *a2)
{
  v7 = sub_268F99F64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC7C8, &qword_268FA3290);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

id sub_268F32F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_268F9AE14();
  v9 = [v5 initWithSettingId_targetDevice_targetApp_];
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v8);

  return v9;
}

id sub_268F3301C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a2)
  {
    v9 = sub_268F9AE14();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v7 = sub_268F9AE14();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [v12 initWithDeviceName:v10 deviceModel:? deviceCategory:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v10);
  return v6;
}

id sub_268F33150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_268F9AE14();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v5 = sub_268F9AE14();
  v6 = [v9 initWithIdentifier:v8 displayString:?];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v8);
  return v6;
}

uint64_t sub_268F33238()
{
  type metadata accessor for SetAXColorFiltersBlueYellowHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F16F8 = result;
  return result;
}

uint64_t *sub_268F332A0()
{
  if (qword_2802DB840 != -1)
  {
    swift_once();
  }

  return &qword_2802F16F8;
}

uint64_t sub_268F33300()
{
  v1 = *sub_268F332A0();

  return v1;
}

uint64_t sub_268F33330(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXColorFiltersBlueYellowHandler handling intent", 50, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3ECD4();

  v4 = sub_268DBD4F4();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268F33554, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F33554, v8);
}

uint64_t sub_268F334E4(char a1)
{

  sub_268D3ED04(a1 & 1);
}

uint64_t *sub_268F335A0()
{
  if (qword_280FE49C8 != -1)
  {
    swift_once();
  }

  return &qword_280FE8180;
}

uint64_t sub_268F33600()
{
  type metadata accessor for GetAutoCorrectHandler();
  result = sub_268CDA260();
  qword_280FE8180 = result;
  return result;
}

uint64_t sub_268F3365C()
{
  v1 = *sub_268F335A0();

  return v1;
}

uint64_t sub_268F3368C(uint64_t a1, void (*a2)(id))
{
  v6 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v7 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "GetAutoCorrectHandler handling intent; Siri cannot change setting: AutoCorrect", 78, 2);

  MEMORY[0x277D82BD8](v7);

  v3 = sub_268E948B8(17);
  v9 = sub_268E41B70(v3, v4);

  a2(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t *sub_268F337EC()
{
  if (qword_280FE5F40 != -1)
  {
    swift_once();
  }

  return &qword_280FE5F48;
}

uint64_t sub_268F33A04()
{
  type metadata accessor for SettingsIntentConfirmationConfigProvider();
  result = sub_268F33A60();
  qword_280FE5F48 = result;
  return result;
}

uint64_t static SettingsIntentConfirmationConfigProvider.shared.getter()
{
  v1 = *sub_268F337EC();

  return v1;
}

uint64_t sub_268F33AD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3B0, &qword_268FAA710);
  sub_268F9B734();
  v5 = v0;
  *v0 = 29;
  v1 = sub_268F3436C();
  sub_268F34374(2, 0, v1, sub_268F34C58, 0, sub_268F34CD4, 0, sub_268F34CEC, v7, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 8, v7, 0x60uLL);
  v5[104] = 0;
  sub_268F34374(1, 1, 0, sub_268F34DC4, 0, sub_268F34E40, 0, sub_268F34EC8, v8, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 112, v8, 0x60uLL);
  v5[208] = 51;
  sub_268F34374(2, 1, 4, sub_268F34F5C, 0, sub_268F34E40, 0, sub_268F34FD8, v9, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 216, v9, 0x60uLL);
  v5[312] = 16;
  sub_268F34374(2, 1, 1, sub_268F3506C, 0, sub_268F34E40, 0, sub_268F350E8, v10, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 320, v10, 0x60uLL);
  v5[416] = 35;
  sub_268F34374(1, 0, 5, sub_268F3517C, 0, sub_268F34CD4, 0, sub_268F351F8, v11, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 424, v11, 0x60uLL);
  v5[520] = 36;
  sub_268F34374(1, 0, 6, sub_268F3528C, 0, sub_268F34CD4, 0, sub_268F35308, v12, 0, sub_268D2AAB4, 0, sub_268F34D80, 0);
  memcpy(v5 + 528, v12, 0x60uLL);
  v5[624] = 45;
  sub_268F34374(2, 1, 3, sub_268F3539C, 0, sub_268F34CD4, 0, sub_268F3568C, v13, 0, sub_268F35774, 0, sub_268F34D80, 0);
  memcpy(v5 + 632, v13, 0x60uLL);
  v5[728] = 26;
  v2 = sub_268F3436C();
  sub_268F34374(2, 0, v2, sub_268F35784, 0, sub_268F34CD4, 0, sub_268F3579C, v14, 0, sub_268D2AAB4, 0, sub_268F35800, 0);
  memcpy(v5 + 736, v14, 0x60uLL);
  sub_268CD0F7C();
  sub_268E12E98();
  v3 = sub_268F9ADA4();
  result = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = 5;
  return result;
}

uint64_t sub_268F34254()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_268F3428C()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_268F342C4()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_268F342FC()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t sub_268F34334()
{
  v2 = *(v0 + 80);

  return v2;
}

void *sub_268F34374@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  memset(__b, 0, sizeof(__b));
  v37 = a1;
  v36 = a2 & 1;
  v35 = a3;
  v33 = a4;
  v34 = a5;
  v31 = a6;
  v32 = a7;
  v29 = a8;
  v30 = a10;
  v27 = a11;
  v28 = a12;
  v25 = a13;
  v26 = a14;
  __b[0] = a1;
  LOBYTE(__b[1]) = a2;
  BYTE1(__b[1]) = a3;

  __b[2] = a4;
  __b[3] = a5;

  __b[4] = a6;
  __b[5] = a7;

  __b[6] = a8;
  __b[7] = a10;

  __b[8] = a11;
  __b[9] = a12;

  __b[10] = a13;
  __b[11] = a14;
  memcpy(__dst, __b, sizeof(__dst));
  sub_268F35A5C(__dst, v24);

  sub_268DD57B4();
  return memcpy(a9, __dst, 0x60uLL);
}

uint64_t sub_268F345A8()
{
  LODWORD(v2) = *v0;
  BYTE4(v2) = *(v0 + 4) & 1;
  return v2;
}

uint64_t sub_268F345E0()
{
  v2 = *(v0 + 24);

  return v2;
}

void *sub_268F3462C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  memset(__b, 0, sizeof(__b));
  v21[8] = a1;
  LODWORD(__b[0]) = a1;
  BYTE4(__b[0]) = BYTE4(a1) & 1;
  __b[1] = a2;
  LOBYTE(__b[2]) = a3 & 1;
  LOBYTE(__b[5]) = a4;
  BYTE1(__b[5]) = a7;

  __b[6] = a8;
  __b[7] = a10;

  __b[3] = a5;
  __b[4] = a6;
  LODWORD(v21[0]) = a1;
  BYTE4(v21[0]) = BYTE4(a1) & 1;
  v21[1] = a2;
  LOBYTE(v21[2]) = a3 & 1;
  v21[3] = a5;
  v21[4] = a6;
  LOBYTE(v21[5]) = a4;
  BYTE1(v21[5]) = a7;
  v21[6] = a8;
  v21[7] = a10;

  sub_268F27288();
  return memcpy(a9, v21, 0x40uLL);
}

uint64_t sub_268F34834(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "AirplaneModeConfirmationCount";
  *(v2 + 8) = 29;
  *(v2 + 16) = 2;
  *(v2 + 24) = "CellularDataConfirmationCount";
  *(v2 + 32) = 29;
  *(v2 + 40) = 2;
  *(v2 + 48) = "";
  *(v2 + 56) = 0;
  *(v2 + 64) = 2;
  *(v2 + 72) = "SpokenMessagesConfirmationCount";
  *(v2 + 80) = 31;
  *(v2 + 88) = 2;
  *(v2 + 96) = "WifiConfirmationCount";
  *(v2 + 104) = 21;
  *(v2 + 112) = 2;
  *(v2 + 120) = "PersonalHotspotConfirmation";
  *(v2 + 128) = 27;
  *(v2 + 136) = 2;
  *(v2 + 144) = "PersonalHotspotDiscoverabilityConfirmation";
  *(v2 + 152) = 42;
  *(v2 + 160) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_16:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_16;
    case 2:
      v5 = 2;
      goto LABEL_16;
    case 3:
      v5 = 3;
      goto LABEL_16;
    case 4:
      v5 = 4;
      goto LABEL_16;
    case 5:
      v5 = 5;
      goto LABEL_16;
    case 6:
      v5 = 6;
      goto LABEL_16;
  }

  return 7;
}

uint64_t sub_268F34BEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F34834(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F34C24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F3384C(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268F34C58()
{
  sub_268D35434();

  v2 = sub_268D37138();

  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F34CEC(void (*a1)(void))
{

  sub_268D35434();

  v2 = sub_268D37138();

  a1(v2 & 1);
}

uint64_t sub_268F34DC4()
{
  sub_268D35434();

  v2 = sub_268D36960();

  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F34E40(void *a1)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if ((*(v3 + 8))(v4))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F34EC8(void (*a1)(void))
{

  sub_268D35434();

  v2 = sub_268D36960();

  a1(v2 & 1);
}

uint64_t sub_268F34F5C()
{
  sub_268D35434();

  v2 = sub_268D39148();

  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F34FD8(void (*a1)(void))
{

  sub_268D35434();

  v2 = sub_268D39148();

  a1(v2 & 1);
}

uint64_t sub_268F3506C()
{
  sub_268D35434();

  v2 = sub_268D38D64();

  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F350E8(void (*a1)(void))
{

  sub_268D35434();

  v2 = sub_268D38D64();

  a1(v2 & 1);
}

uint64_t sub_268F3517C()
{
  sub_268D35434();

  v2 = sub_268D36D3C();

  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F351F8(void (*a1)(void))
{

  sub_268D35434();

  v2 = sub_268D36D3C();

  a1(v2 & 1);
}

uint64_t sub_268F3528C()
{
  sub_268D35434();

  v2 = sub_268D36DD0();

  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F35308(void (*a1)(void))
{

  sub_268D35434();

  v2 = sub_268D36DD0();

  a1(v2 & 1);
}

uint64_t sub_268F3539C(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    v1 = [a1 settingMetadata];
    v19 = v1;
    if (v1 && (v18 = [v1 targetApp], *&v2 = MEMORY[0x277D82BD8](v19).n128_u64[0], v18))
    {
      v3 = [v18 bundleIdentifier];
      v17 = v3;
      if (v3)
      {
        v13 = sub_268F9AE24();
        v14 = v4;
        MEMORY[0x277D82BD8](v17);
        v15 = v13;
        v16 = v14;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      MEMORY[0x277D82BD8](v18);
      v11 = v15;
      v12 = v16;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    if (v12)
    {
      sub_268D35434();

      v10 = sub_268D40380(v11, v12);

      if (v10)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      MEMORY[0x277D82BD8](a1);
      return v9;
    }

    MEMORY[0x277D82BD8](a1);
  }

  sub_268D35434();

  v7 = sub_268D415B8();

  if (v7)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F3568C(uint64_t a1, uint64_t a2)
{
  sub_268D35434();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_268D413E4(sub_268F36868, v5);
}

uint64_t sub_268F3579C(void (*a1)(void), uint64_t a2)
{
  sub_268D35434();

  sub_268D3618C(a1, a2);
}

uint64_t sub_268F35800(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1 && (v8 = [a1 settingMetadata], *&v1 = MEMORY[0x277D82BD8](a1).n128_u64[0], v8 && (v7 = objc_msgSend(v8, sel_targetDevice, v1), *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0], v7)))
  {
    [v7 deviceCategory];
    MEMORY[0x277D82BD8](v7);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v5 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v5 = sub_268F9AE04();
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268F35A5C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 9) = *(a1 + 9);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);

  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);

  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);

  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);

  result = a2;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  return result;
}

unint64_t sub_268F35B70()
{
  v2 = qword_2802DE3B8;
  if (!qword_2802DE3B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE3B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F35BEC()
{
  v2 = *(v0 + 16);

  return v2;
}

void *sub_268F35C24@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v7 = 0;
  v6 = 0;
  v7 = *a1;
  v6 = v2;

  sub_268E12E98();
  sub_268F9ADC4();
  memcpy(__dst, v5, sizeof(__dst));

  return memcpy(a2, __dst, 0x60uLL);
}

void *sub_268F35CE8@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v10 = *a1;
  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3C0, &qword_268FAA718);
  sub_268F9B734();
  v5 = v3;
  *v3 = 7;
  sub_268F35E30(v11);
  memcpy(v5 + 8, v11, 0x40uLL);
  sub_268CD0F7C();
  sub_268E571E0();
  v8 = sub_268F9ADA4();
  sub_268F9ADC4();
  memcpy(__dst, v7, sizeof(__dst));

  return memcpy(a2, __dst, 0x40uLL);
}

void *sub_268F35E30@<X0>(void *a1@<X8>)
{
  sub_268D35434();

  v9 = sub_268D44174();

  if (v9)
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v6 = 1120403456;
    v7 = 0;
  }

  if (v9)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v4 = 3;
    v5 = 0;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v9 & 1;
  v1 = sub_268F3436C();
  LODWORD(v10) = v6;
  BYTE4(v10) = v7 & 1;
  sub_268F3462C(v10, v4, v5 & 1, 0, sub_268F36018, v3, v1, sub_268F36024, v11, 0);
  return memcpy(a1, v11, 0x40uLL);
}

float sub_268F36024()
{
  sub_268D35434();

  v1 = sub_268D3BC60();

  return v1;
}

uint64_t sub_268F36140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 16)))
      {
        v3 = *(a1 + 16);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268F36258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_268F3648C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 24) < 0x100000000uLL)
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_268F365CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_268F367EC()
{
  v2 = qword_2802DE3C8;
  if (!qword_2802DE3C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE3C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F36878()
{
  if (qword_280FE5A18 != -1)
  {
    swift_once();
  }

  return &qword_280FE8288;
}

uint64_t sub_268F368D8()
{
  type metadata accessor for ButtonProvider();
  result = sub_268CDA260();
  qword_280FE8288 = result;
  return result;
}

id sub_268F36934(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = a1;
  v46._countAndFlagsBits = a2;
  v46._object = a3;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v47 = 0;
  v48 = 0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46._object, v46._countAndFlagsBits, v4, v5);
  v45 = (&v17 - v44);
  v63 = v6;
  v61 = v7;
  v62 = v8;
  v60 = v3;

  v57 = v46;
  if (v46._object)
  {
    v58 = v57;
  }

  else
  {
    v58._countAndFlagsBits = sub_268F9AEF4();
    v58._object = v9;
    if (v57._object)
    {
      sub_268CD9D30(&v57);
    }
  }

  BinarySettingIdentifier.init(rawValue:)(v58);
  v41 = v59;
  if (v59 == 65)
  {
    return 0;
  }

  v40 = v41;
  v56 = v41;
  v55 = v41;
  v10 = sub_268E7B768();
  v38 = v10;
  v39 = v11;
  if (!v11)
  {
    return 0;
  }

  v36 = v38;
  v37 = v39;
  v32 = v39;
  v33 = v38;
  v53 = v38;
  v54 = v39;
  v34 = *(v42 + qword_2802F0740);

  v35 = type metadata accessor for SettingsBinarySetting(0);

  v51 = v46;
  if (v46._object)
  {
    v52 = v51;
  }

  else
  {
    v52._countAndFlagsBits = sub_268F9AEF4();
    v52._object = v12;
    if (v51._object)
    {
      sub_268CD9D30(&v51);
    }
  }

  v31 = SettingsBinarySetting.__allocating_init(settingId:value:)(v52._countAndFlagsBits, v52._object, 0);

  v49 = v46;
  if (v46._object)
  {
    v50 = v49;
  }

  else
  {
    v50._countAndFlagsBits = sub_268F9AEF4();
    v50._object = v13;
    if (v49._object)
    {
      sub_268CD9D30(&v49);
    }
  }

  object = v50._object;
  v28 = sub_268F288D0(v50._countAndFlagsBits, v50._object);

  sub_268F56768(v31, 0, v28);

  v29 = sub_268F9B824();
  v30 = v14;
  if (!v14)
  {
    sub_268D28378(v45);

    return 0;
  }

  v25 = v29;
  v26 = v30;
  v22 = v30;
  v23 = v29;
  v47 = v29;
  v48 = v30;
  sub_268D28378(v45);
  v15 = sub_268F394C4(v23, v22, v33, v32);
  v24 = v15;
  if (v15)
  {
    v21 = v24;
    v20 = v24;
  }

  else
  {
    v20 = 0;
  }

  v18 = v20;

  return v18;
}

id sub_268F36E44(uint64_t a1, uint64_t a2, void *a3)
{
  v375 = a1;
  v384._countAndFlagsBits = a2;
  v384._object = a3;
  v334 = sub_268F39974;
  v335 = sub_268CD7608;
  v336 = sub_268CD7600;
  v337 = sub_268CD7600;
  v338 = sub_268CD7614;
  v339 = sub_268F3997C;
  v340 = sub_268CD7608;
  v341 = sub_268DA6BE8;
  v342 = sub_268CD7608;
  v343 = sub_268CD7600;
  v344 = sub_268CD7600;
  v345 = sub_268CD7614;
  v346 = sub_268CD7600;
  v347 = sub_268CD7600;
  v348 = sub_268CD7614;
  v349 = sub_268F39964;
  v350 = sub_268CD7608;
  v351 = sub_268CD7600;
  v352 = sub_268CD7600;
  v353 = sub_268CD7614;
  v354 = sub_268F3996C;
  v355 = sub_268CD7608;
  v356 = sub_268DA6BE8;
  v357 = sub_268CD7608;
  v358 = sub_268CD7600;
  v359 = sub_268CD7600;
  v360 = sub_268CD7614;
  v361 = sub_268CD7600;
  v362 = sub_268CD7600;
  v363 = sub_268CD7614;
  v364 = sub_268DA6BE8;
  v365 = sub_268CD7608;
  v366 = sub_268CD7600;
  v367 = sub_268CD7600;
  v368 = sub_268CD7614;
  v448 = 0;
  v446 = 0;
  v447 = 0;
  v445 = 0;
  v369 = 0;
  v431 = 0;
  v429 = 0;
  v430 = 0;
  v422 = 0;
  v423 = 0;
  v420 = 0;
  v421 = 0;
  v414 = 0;
  v410 = 0;
  v411 = 0;
  v402 = 0;
  v403 = 0;
  v400 = 0;
  v401 = 0;
  v394 = 0;
  v391 = 0;
  v392 = 0;
  v385 = 0;
  v386 = 0;
  v370 = 0;
  v4 = sub_268F9A9C4();
  v371 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v372 = v130 - v371;
  v373 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v130 - v371, v9, v10, v11);
  v374 = v130 - v373;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990);
  v380 = *(*(v376 - 8) + 64);
  v377 = (v380 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v384._object, v384._countAndFlagsBits, v12, v13);
  v378 = (v130 - v377);
  v379 = (v380 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v15, v130 - v377, v16);
  v381 = (v130 - v379);
  v382 = (v380 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v18, v130 - v379, v19);
  v383 = (v130 - v382);
  v448 = v20;
  v446 = v21;
  v447 = v22;
  v445 = v3;

  v442 = v384;
  if (v384._object)
  {
    v443 = v442;
  }

  else
  {
    v443._countAndFlagsBits = sub_268F9AEF4();
    v443._object = v23;
    if (v442._object)
    {
      sub_268CD9D30(&v442);
    }
  }

  BinarySettingIdentifier.init(rawValue:)(v443);
  v333 = v444;
  if (v444 != 65)
  {
    v332 = v333;
    v394 = v333;
    v393 = v333;
    v24 = sub_268E7B768();
    v330 = v24;
    v331 = v25;
    if (v25)
    {
      v328 = v330;
      v329 = v331;
      v324 = v331;
      v325 = v330;
      v391 = v330;
      v392 = v331;

      v326 = *(v375 + qword_280FE80B0);

      v327 = type metadata accessor for SettingsBinarySetting(0);

      v389 = v384;
      if (v384._object)
      {
        v390 = v389;
      }

      else
      {
        v390._countAndFlagsBits = sub_268F9AEF4();
        v390._object = v26;
        if (v389._object)
        {
          sub_268CD9D30(&v389);
        }
      }

      v323 = SettingsBinarySetting.__allocating_init(settingId:value:)(v390._countAndFlagsBits, v390._object, 0);

      v387 = v384;
      if (v384._object)
      {
        v388 = v387;
      }

      else
      {
        v388._countAndFlagsBits = sub_268F9AEF4();
        v388._object = v27;
        if (v387._object)
        {
          sub_268CD9D30(&v387);
        }
      }

      object = v388._object;
      v320 = sub_268F288D0(v388._countAndFlagsBits, v388._object);

      sub_268F56768(v323, 0, v320);

      v321 = sub_268F9B824();
      v322 = v28;
      sub_268D28378(v383);
      if (v322)
      {
        v317 = v321;
        v318 = v322;
        v315 = v322;
        v385 = v321;
        v386 = v322;
        v29 = sub_268F394C4(v321, v322, v325, v324);
        v316 = v29;
        if (v29)
        {
          v314 = v316;
          v313 = v316;
        }

        else
        {
          v313 = 0;
        }

        v311 = v313;

        return v311;
      }
    }

    return v370;
  }

  v439 = v384;
  if (v384._object)
  {
    v440 = v439;
  }

  else
  {
    v440._countAndFlagsBits = sub_268F9AEF4();
    v440._object = v30;
    if (v439._object)
    {
      sub_268CD9D30(&v439);
    }
  }

  NumericSettingIdentifier.init(rawValue:)(v440);
  v310 = v441;
  if (v441 == 13)
  {

    v437 = v384;
    if (v384._object)
    {
      v438 = v437;
    }

    else
    {
      v438._countAndFlagsBits = sub_268F9AEF4();
      v438._object = v73;
      if (v437._object)
      {
        sub_268CD9D30(&v437);
      }
    }

    v229 = sub_268EC68A8(v438._countAndFlagsBits, v438._object);
    if (v229 == 5)
    {
      v151 = sub_268F9B284();
      v150 = *sub_268DC7F68();
      MEMORY[0x277D82BE0](v150);

      v140 = 32;
      v141 = 7;
      v115 = swift_allocObject();
      v116 = v384._object;
      v142 = v115;
      *(v115 + 16) = v384._countAndFlagsBits;
      *(v115 + 24) = v116;
      v139 = 17;
      v144 = swift_allocObject();
      *(v144 + 16) = 32;
      v145 = swift_allocObject();
      *(v145 + 16) = 8;
      v117 = swift_allocObject();
      v118 = v142;
      v143 = v117;
      *(v117 + 16) = v364;
      *(v117 + 24) = v118;
      v119 = swift_allocObject();
      v120 = v143;
      v147 = v119;
      *(v119 + 16) = v365;
      *(v119 + 24) = v120;
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v146 = sub_268F9B734();
      v148 = v121;

      v122 = v144;
      v123 = v148;
      *v148 = v366;
      v123[1] = v122;

      v124 = v145;
      v125 = v148;
      v148[2] = v367;
      v125[3] = v124;

      v126 = v147;
      v127 = v148;
      v148[4] = v368;
      v127[5] = v126;
      sub_268CD0F7C();

      if (os_log_type_enabled(v150, v151))
      {
        v128 = v369;
        v132 = sub_268F9B3A4();
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v133 = sub_268CD5448(0, v131, v131);
        v134 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v135 = &v436;
        v436 = v132;
        v136 = &v435;
        v435 = v133;
        v137 = &v434;
        v434 = v134;
        sub_268CD549C(2, &v436);
        sub_268CD549C(1, v135);
        v432 = v366;
        v433 = v144;
        sub_268CD54B0(&v432, v135, v136, v137);
        v138 = v128;
        if (v128)
        {

          __break(1u);
        }

        else
        {
          v432 = v367;
          v433 = v145;
          sub_268CD54B0(&v432, &v436, &v435, &v434);
          v130[1] = 0;
          v432 = v368;
          v433 = v147;
          sub_268CD54B0(&v432, &v436, &v435, &v434);
          _os_log_impl(&dword_268CBE000, v150, v151, "Identifier is neither binary nor numeric: %s", v132, 0xCu);
          sub_268CD54FC(v133, 0, v131);
          sub_268CD54FC(v134, 1, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v150);
      return v370;
    }

    else
    {
      v228 = v229;
      v214 = v229;
      v431 = v229;
      v227 = sub_268F9B284();
      v226 = *sub_268DC7F68();
      MEMORY[0x277D82BE0](v226);
      v215 = 17;
      v217 = 7;
      v218 = swift_allocObject();
      *(v218 + 16) = v214;
      v220 = swift_allocObject();
      *(v220 + 16) = 32;
      v221 = swift_allocObject();
      *(v221 + 16) = 8;
      v216 = 32;
      v74 = swift_allocObject();
      v75 = v218;
      v219 = v74;
      *(v74 + 16) = v349;
      *(v74 + 24) = v75;
      v76 = swift_allocObject();
      v77 = v219;
      v223 = v76;
      *(v76 + 16) = v350;
      *(v76 + 24) = v77;
      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
      v222 = sub_268F9B734();
      v224 = v78;

      v79 = v220;
      v80 = v224;
      *v224 = v351;
      v80[1] = v79;

      v81 = v221;
      v82 = v224;
      v224[2] = v352;
      v82[3] = v81;

      v83 = v223;
      v84 = v224;
      v224[4] = v353;
      v84[5] = v83;
      sub_268CD0F7C();

      if (os_log_type_enabled(v226, v227))
      {
        v85 = v369;
        v207 = sub_268F9B3A4();
        v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v208 = sub_268CD5448(0, v206, v206);
        v209 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v210 = &v419;
        v419 = v207;
        v211 = &v418;
        v418 = v208;
        v212 = &v417;
        v417 = v209;
        sub_268CD549C(2, &v419);
        sub_268CD549C(1, v210);
        v415 = v351;
        v416 = v220;
        sub_268CD54B0(&v415, v210, v211, v212);
        v213 = v85;
        if (v85)
        {

          __break(1u);
        }

        else
        {
          v415 = v352;
          v416 = v221;
          sub_268CD54B0(&v415, &v419, &v418, &v417);
          v204 = 0;
          v415 = v353;
          v416 = v223;
          sub_268CD54B0(&v415, &v419, &v418, &v417);
          v203 = 0;
          _os_log_impl(&dword_268CBE000, v226, v227, "Providing button for identifier: %s", v207, 0xCu);
          sub_268CD54FC(v208, 0, v206);
          sub_268CD54FC(v209, 1, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();

          v205 = v203;
        }
      }

      else
      {
        v86 = v369;

        v205 = v86;
      }

      v195 = v205;
      MEMORY[0x277D82BD8](v226);
      v198 = *(v375 + qword_280FE80B0);

      v196 = 0;
      type metadata accessor for SettingsBinarySetting(0);
      sub_268EC63FC(v214);
      sub_268F9A9A4();
      sub_268EC63FC(v214);
      sub_268F9A9A4();
      v87 = sub_268CDD6D4();
      v197 = sub_268F77F04(v374, v87 & 1, v372);
      sub_268F56768(v197, v196, 0);

      v199 = sub_268F9B824();
      v200 = v88;
      v429 = v199;
      v430 = v88;
      sub_268D28378(v378);
      v201 = sub_268EC6290(v214);
      v202 = v89;
      if (v89)
      {
        v193 = v201;
        v194 = v202;
        v191 = v202;
        v192 = v201;
        v422 = v201;
        v423 = v202;

        if (v200)
        {
          v189 = v199;
          v190 = v200;
          v187 = v200;
          v420 = v199;
          v421 = v200;
          v90 = sub_268F394C4(v199, v200, v192, v191);
          v188 = v90;
          if (v90)
          {
            v186 = v188;
            v185 = v188;
          }

          else
          {
            v185 = 0;
          }

          v184 = v185;

          return v184;
        }
      }

      v183 = sub_268F9B284();
      v182 = *sub_268DC7F68();
      MEMORY[0x277D82BE0](v182);
      v168 = 17;
      v171 = 7;
      v165 = swift_allocObject();
      *(v165 + 16) = v214;

      v170 = 32;
      v91 = swift_allocObject();
      v92 = v200;
      v172 = v91;
      *(v91 + 16) = v199;
      *(v91 + 24) = v92;
      v174 = swift_allocObject();
      v167 = 32;
      *(v174 + 16) = 32;
      v175 = swift_allocObject();
      v169 = 8;
      *(v175 + 16) = 8;
      v93 = swift_allocObject();
      v94 = v165;
      v166 = v93;
      *(v93 + 16) = v354;
      *(v93 + 24) = v94;
      v95 = swift_allocObject();
      v96 = v166;
      v176 = v95;
      *(v95 + 16) = v355;
      *(v95 + 24) = v96;
      v177 = swift_allocObject();
      *(v177 + 16) = v167;
      v178 = swift_allocObject();
      *(v178 + 16) = v169;
      v97 = swift_allocObject();
      v98 = v172;
      v173 = v97;
      *(v97 + 16) = v356;
      *(v97 + 24) = v98;
      v99 = swift_allocObject();
      v100 = v173;
      v180 = v99;
      *(v99 + 16) = v357;
      *(v99 + 24) = v100;
      v179 = sub_268F9B734();
      v181 = v101;

      v102 = v174;
      v103 = v181;
      *v181 = v358;
      v103[1] = v102;

      v104 = v175;
      v105 = v181;
      v181[2] = v359;
      v105[3] = v104;

      v106 = v176;
      v107 = v181;
      v181[4] = v360;
      v107[5] = v106;

      v108 = v177;
      v109 = v181;
      v181[6] = v361;
      v109[7] = v108;

      v110 = v178;
      v111 = v181;
      v181[8] = v362;
      v111[9] = v110;

      v112 = v180;
      v113 = v181;
      v181[10] = v363;
      v113[11] = v112;
      sub_268CD0F7C();

      if (os_log_type_enabled(v182, v183))
      {
        v114 = v195;
        v157 = sub_268F9B3A4();
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
        v158 = sub_268CD5448(0, v156, v156);
        v159 = sub_268CD5448(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v161 = &v428;
        v428 = v157;
        v162 = &v427;
        v427 = v158;
        v163 = &v426;
        v426 = v159;
        v160 = 2;
        sub_268CD549C(2, &v428);
        sub_268CD549C(v160, v161);
        v424 = v358;
        v425 = v174;
        sub_268CD54B0(&v424, v161, v162, v163);
        v164 = v114;
        if (v114)
        {

          __break(1u);
        }

        else
        {
          v424 = v359;
          v425 = v175;
          sub_268CD54B0(&v424, &v428, &v427, &v426);
          v155 = 0;
          v424 = v360;
          v425 = v176;
          sub_268CD54B0(&v424, &v428, &v427, &v426);
          v154 = 0;
          v424 = v361;
          v425 = v177;
          sub_268CD54B0(&v424, &v428, &v427, &v426);
          v153 = 0;
          v424 = v362;
          v425 = v178;
          sub_268CD54B0(&v424, &v428, &v427, &v426);
          v152 = 0;
          v424 = v363;
          v425 = v180;
          sub_268CD54B0(&v424, &v428, &v427, &v426);
          _os_log_impl(&dword_268CBE000, v182, v183, "Failed. Punchout: %s, Text: %s", v157, 0x16u);
          sub_268CD54FC(v158, 0, v156);
          sub_268CD54FC(v159, 2, MEMORY[0x277D84F70] + 8);
          sub_268F9B384();
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v182);

      return v370;
    }
  }

  else
  {
    v309 = v310;
    v295 = v310;
    v414 = v310;
    v308 = sub_268F9B284();
    v307 = *sub_268DC7F68();
    MEMORY[0x277D82BE0](v307);
    v296 = 17;
    v298 = 7;
    v299 = swift_allocObject();
    *(v299 + 16) = v295;
    v301 = swift_allocObject();
    *(v301 + 16) = 32;
    v302 = swift_allocObject();
    *(v302 + 16) = 8;
    v297 = 32;
    v31 = swift_allocObject();
    v32 = v299;
    v300 = v31;
    *(v31 + 16) = v334;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v300;
    v304 = v33;
    *(v33 + 16) = v335;
    *(v33 + 24) = v34;
    v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC960, &unk_268F9FB90);
    v303 = sub_268F9B734();
    v305 = v35;

    v36 = v301;
    v37 = v305;
    *v305 = v336;
    v37[1] = v36;

    v38 = v302;
    v39 = v305;
    v305[2] = v337;
    v39[3] = v38;

    v40 = v304;
    v41 = v305;
    v305[4] = v338;
    v41[5] = v40;
    sub_268CD0F7C();

    if (os_log_type_enabled(v307, v308))
    {
      v42 = v369;
      v288 = sub_268F9B3A4();
      v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v289 = sub_268CD5448(0, v287, v287);
      v290 = sub_268CD5448(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v291 = &v399;
      v399 = v288;
      v292 = &v398;
      v398 = v289;
      v293 = &v397;
      v397 = v290;
      sub_268CD549C(2, &v399);
      sub_268CD549C(1, v291);
      v395 = v336;
      v396 = v301;
      sub_268CD54B0(&v395, v291, v292, v293);
      v294 = v42;
      if (v42)
      {

        __break(1u);
      }

      else
      {
        v395 = v337;
        v396 = v302;
        sub_268CD54B0(&v395, &v399, &v398, &v397);
        v285 = 0;
        v395 = v338;
        v396 = v304;
        sub_268CD54B0(&v395, &v399, &v398, &v397);
        v284 = 0;
        _os_log_impl(&dword_268CBE000, v307, v308, "Providing button for identifier: %s", v288, 0xCu);
        sub_268CD54FC(v289, 0, v287);
        sub_268CD54FC(v290, 1, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();

        v286 = v284;
      }
    }

    else
    {
      v43 = v369;

      v286 = v43;
    }

    v281 = v286;
    MEMORY[0x277D82BD8](v307);
    v282 = *(v375 + qword_280FE80B0);

    v283 = type metadata accessor for SettingsNumericSetting(0);

    v412 = v384;
    if (v384._object)
    {
      v413 = v412;
    }

    else
    {
      v413._countAndFlagsBits = sub_268F9AEF4();
      v413._object = v44;
      if (v412._object)
      {
        sub_268CD9D30(&v412);
      }
    }

    v274 = v413._object;
    countAndFlagsBits = v413._countAndFlagsBits;
    v273 = 0;
    sub_268D34FD4();
    v45 = sub_268F9B314();
    v276 = SettingsNumericSetting.__allocating_init(settingId:value:)(countAndFlagsBits, v274, v45);
    sub_268F55EF4(v276, 0);

    v277 = sub_268F9B824();
    v278 = v46;
    v410 = v277;
    v411 = v46;
    sub_268D28378(v381);
    v409 = v295;
    v279 = sub_268EB0030();
    v280 = v47;
    if (v47)
    {
      v271 = v279;
      v272 = v280;
      v269 = v280;
      v270 = v279;
      v402 = v279;
      v403 = v280;

      if (v278)
      {
        v267 = v277;
        v268 = v278;
        v265 = v278;
        v400 = v277;
        v401 = v278;
        v48 = sub_268F394C4(v277, v278, v270, v269);
        v266 = v48;
        if (v48)
        {
          v264 = v266;
          v263 = v266;
        }

        else
        {
          v263 = 0;
        }

        v262 = v263;

        return v262;
      }
    }

    v261 = sub_268F9B284();
    v260 = *sub_268DC7F68();
    MEMORY[0x277D82BE0](v260);
    v246 = 17;
    v249 = 7;
    v243 = swift_allocObject();
    *(v243 + 16) = v295;

    v248 = 32;
    v49 = swift_allocObject();
    v50 = v278;
    v250 = v49;
    *(v49 + 16) = v277;
    *(v49 + 24) = v50;
    v252 = swift_allocObject();
    v245 = 32;
    *(v252 + 16) = 32;
    v253 = swift_allocObject();
    v247 = 8;
    *(v253 + 16) = 8;
    v51 = swift_allocObject();
    v52 = v243;
    v244 = v51;
    *(v51 + 16) = v339;
    *(v51 + 24) = v52;
    v53 = swift_allocObject();
    v54 = v244;
    v254 = v53;
    *(v53 + 16) = v340;
    *(v53 + 24) = v54;
    v255 = swift_allocObject();
    *(v255 + 16) = v245;
    v256 = swift_allocObject();
    *(v256 + 16) = v247;
    v55 = swift_allocObject();
    v56 = v250;
    v251 = v55;
    *(v55 + 16) = v341;
    *(v55 + 24) = v56;
    v57 = swift_allocObject();
    v58 = v251;
    v258 = v57;
    *(v57 + 16) = v342;
    *(v57 + 24) = v58;
    v257 = sub_268F9B734();
    v259 = v59;

    v60 = v252;
    v61 = v259;
    *v259 = v343;
    v61[1] = v60;

    v62 = v253;
    v63 = v259;
    v259[2] = v344;
    v63[3] = v62;

    v64 = v254;
    v65 = v259;
    v259[4] = v345;
    v65[5] = v64;

    v66 = v255;
    v67 = v259;
    v259[6] = v346;
    v67[7] = v66;

    v68 = v256;
    v69 = v259;
    v259[8] = v347;
    v69[9] = v68;

    v70 = v258;
    v71 = v259;
    v259[10] = v348;
    v71[11] = v70;
    sub_268CD0F7C();

    if (os_log_type_enabled(v260, v261))
    {
      v72 = v281;
      v235 = sub_268F9B3A4();
      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3E0, &qword_268F9C880);
      v236 = sub_268CD5448(0, v234, v234);
      v237 = sub_268CD5448(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v239 = &v408;
      v408 = v235;
      v240 = &v407;
      v407 = v236;
      v241 = &v406;
      v406 = v237;
      v238 = 2;
      sub_268CD549C(2, &v408);
      sub_268CD549C(v238, v239);
      v404 = v343;
      v405 = v252;
      sub_268CD54B0(&v404, v239, v240, v241);
      v242 = v72;
      if (v72)
      {

        __break(1u);
      }

      else
      {
        v404 = v344;
        v405 = v253;
        sub_268CD54B0(&v404, &v408, &v407, &v406);
        v233 = 0;
        v404 = v345;
        v405 = v254;
        sub_268CD54B0(&v404, &v408, &v407, &v406);
        v232 = 0;
        v404 = v346;
        v405 = v255;
        sub_268CD54B0(&v404, &v408, &v407, &v406);
        v231 = 0;
        v404 = v347;
        v405 = v256;
        sub_268CD54B0(&v404, &v408, &v407, &v406);
        v230 = 0;
        v404 = v348;
        v405 = v258;
        sub_268CD54B0(&v404, &v408, &v407, &v406);
        _os_log_impl(&dword_268CBE000, v260, v261, "Failed. Punchout: %s, Text: %s", v235, 0x16u);
        sub_268CD54FC(v236, 0, v234);
        sub_268CD54FC(v237, 2, MEMORY[0x277D84F70] + 8);
        sub_268F9B384();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v260);

    return v370;
  }
}

uint64_t sub_268F393E0(char a1)
{
  sub_268EB0030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

uint64_t sub_268F39474(char a1)
{
  sub_268EC6290(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DC8F0, qword_268F9F830);
  return sub_268F9AE64();
}

id sub_268F394C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a2;
  v26 = a3;
  v25 = a4;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v20 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE3F0, &qword_268F9D7A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v22, v26, v25);
  v29 = &v12 - v20;
  v38 = v5;
  v39 = v6;
  v36 = v7;
  v37 = v8;
  v35 = v4;
  v28 = 0;
  sub_268F39984();
  v23 = sub_268CF0C44();
  v34 = v23;

  v24 = sub_268F9AE14();

  [v23 setText_];
  MEMORY[0x277D82BD8](v24);
  sub_268E0FA80();
  v27 = sub_268CF0C44();
  v33 = v27;
  sub_268F99134();
  v30 = sub_268F99144();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  if ((*(v31 + 48))(v29, 1) == 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = sub_268F99114();
    (*(v31 + 8))(v29, v30);
    v19 = v18;
  }

  [v27 setPunchOutUri_];
  MEMORY[0x277D82BD8](v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE408, qword_268FAA928);
  v14 = sub_268F9B734();
  v13 = v9;
  MEMORY[0x277D82BE0](v27);
  *v13 = v27;
  sub_268CD0F7C();
  v16 = v10;
  v17 = sub_268F9B004();

  [v23 setCommands_];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v27);
  return v23;
}

BOOL sub_268F397B4(char *a1)
{
  v6 = 0;
  v5[2] = 0;
  v6 = *a1;
  if (v6 == 65)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = sub_268E7B768();
    v4 = v1;
  }

  v5[0] = v3;
  v5[1] = v4;
  sub_268CD9D30(v5);
  return v4 != 0;
}

BOOL sub_268F3988C(char *a1)
{
  v6 = 0;
  v5[2] = 0;
  v6 = *a1;
  if (v6 == 13)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = sub_268EB0030();
    v4 = v1;
  }

  v5[0] = v3;
  v5[1] = v4;
  sub_268CD9D30(v5);
  return v4 != 0;
}

unint64_t sub_268F39984()
{
  v2 = qword_2802DE3F8;
  if (!qword_2802DE3F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DE3F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_268F399E8()
{
  type metadata accessor for SetEnvironmentHandler();
  v2 = sub_268CDC590();
  v0 = sub_268CDD6D4();
  result = sub_268CDC5C0(v2, v0 & 1);
  qword_2802F1700 = result;
  return result;
}

uint64_t *sub_268F39A64()
{
  if (qword_2802DB850 != -1)
  {
    swift_once();
  }

  return &qword_2802F1700;
}

uint64_t sub_268F39AC4()
{
  v1 = *sub_268F39A64();

  return v1;
}

uint64_t sub_268F39AF4(uint64_t a1, void (*a2)(id))
{

  v4 = sub_268E948B8(17);
  v6 = sub_268E77AC0(0, v4, v2);

  a2(v6);
  MEMORY[0x277D82BD8](v6);
}

BOOL sub_268F39BAC(uint64_t a1)
{
  v30 = a1;
  v37 = 0;
  v36 = 0;
  v25 = sub_268F99214();
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v2, v3, v4);
  v29 = &v17 - v28;
  v31 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC390, &qword_268FA32F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v5, v6, v7);
  v32 = &v17 - v31;
  v33 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v9, &v17 - v31, v10, v11);
  v34 = &v17 - v33;
  v37 = v13;
  v36 = v1;
  v35 = [v13 temporalEventTrigger];
  if (v35)
  {
    v24 = v35;
    v21 = v35;
    v22 = [v35 dateComponentsRange];
    *&v14 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    v23 = [v22 startDate];
    if (v23)
    {
      v20 = v23;
      v19 = v23;
      sub_268F991E4();
      (*(v26 + 32))(v32, v29, v25);
      (*(v26 + 56))(v32, 0, 1, v25);
      MEMORY[0x277D82BD8](v19);
    }

    else
    {
      (*(v26 + 56))(v32, 1, 1, v25);
    }

    sub_268E02F0C(v32, v34);
    v15 = MEMORY[0x277D82BD8](v22);
  }

  else
  {
    (*(v26 + 56))(v34, 1, 1, v25);
  }

  v18 = (*(v26 + 48))(v34, 1, v25, v15) != 1;
  v17 = v18;
  sub_268D54CB4(v34);
  return v17;
}

uint64_t sub_268F39F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v6 = a3;
  *(&v6 + 1) = a4;
  v8 = 0u;
  v9 = 0u;

  *&v8 = a1;
  *(&v8 + 1) = a2;

  v9 = v6;

  sub_268D28550(&v8);
  return a1;
}

uint64_t sub_268F39FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = sub_268F99C04();
  v15 = v3;
  v4 = (*(a3 + 32))(a2);
  v13 = sub_268F3AB40(v4, v5, v6, v7);
  v14 = v8;

  v16 = MEMORY[0x26D62DB50](v12, v15, v13, v14);

  return v16 & 1;
}

uint64_t sub_268F3A0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268F3B2D0(a1, a2, a3);
  v5 = sub_268F9B334();
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t sub_268F3A148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v65 = a4;
  v66 = a1;
  v79 = a2;
  v80 = a3;
  v98 = *MEMORY[0x277D85DE8];
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v67 = 0;
  v94 = 0;
  v95 = 0;
  v89 = a2;
  v68 = sub_268F9B3B4();
  v69 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68, v79, v5, v6);
  v70 = &v31 - v69;
  v71 = *(v7 - 8);
  v72 = v7 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v31 - v69, v7, v8, v9);
  v74 = &v31 - v73;
  v75 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v31 - v73, v11, v12, v13);
  v76 = &v31 - v75;
  v93 = &v31 - v75;
  v77 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15, v16, v17, v18);
  v78 = &v31 - v77;
  v92 = &v31 - v77;
  v91 = a1;
  v83 = sub_268F99C04();
  v86 = v19;
  v20 = (*(v80 + 32))();
  v81 = v21;
  v82 = v22;
  v84 = sub_268F3AB40(v20, v21, v23, v22);
  v85 = v24;

  v87 = MEMORY[0x26D62DB50](v83, v86, v84, v85);

  if (v87)
  {
    v97 = 0;
    v64 = objc_opt_self();
    v96 = sub_268F99C14();
    if (v96)
    {
      v88 = v96;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
      sub_268F9B734();
      v88 = sub_268F9ADA4();
      if (v96)
      {
        sub_268CD7930(&v96);
      }
    }

    v58 = v88;
    v62 = sub_268F9AD74();

    v59 = 0;
    type metadata accessor for WritingOptions(0);
    v60 = sub_268F9B734();
    sub_268CD8B9C();
    sub_268F9B424();
    v90[0] = v97;
    v63 = [v64 dataWithJSONObject:v62 options:v90[1] error:v90];
    v61 = v90[0];
    MEMORY[0x277D82BE0](v90[0]);
    v25 = v97;
    v97 = v61;
    MEMORY[0x277D82BD8](v25);
    swift_unknownObjectRelease();
    if (v63)
    {
      v57 = v63;
      v51 = v63;
      v52 = sub_268F99184();
      v53 = v26;
      MEMORY[0x277D82BD8](v51);
      v54 = v52;
      v55 = v53;
      v56 = v67;
    }

    else
    {
      v33 = v97;
      v34 = sub_268F990F4();
      MEMORY[0x277D82BD8](v33);
      swift_willThrow();
      v35 = 0;

      v54 = 0;
      v55 = 0xF000000000000000;
      v56 = v35;
    }

    v48 = v56;
    v49 = v55;
    v50 = v54;
    if ((v55 & 0xF000000000000000) != 0xF000000000000000)
    {
      v46 = v50;
      v47 = v49;
      v27 = v48;
      v43 = v49;
      v42 = v50;
      v94 = v50;
      v95 = v49;
      sub_268F99024();
      v44 = sub_268F99014();
      sub_268F99004();
      v45 = v27;
      if (v27)
      {
        v32 = v45;

        (*(v71 + 56))(v70, 1, 1, v79);
      }

      else
      {

        (*(v71 + 56))(v70, 0, 1, v79);
      }

      if ((*(v71 + 48))(v70, 1, v79) != 1)
      {
        v37 = *(v71 + 32);
        v36 = v71 + 32;
        v37(v76, v70, v79);
        v39 = *(v71 + 16);
        v38 = v71 + 16;
        v39(v74, v76, v79);
        v37(v78, v74, v79);
        v41 = *(v71 + 8);
        v40 = v71 + 8;
        v41(v76, v79);
        sub_268D55C74(v42, v43);
        v39(v65, v78, v79);
        (*(v71 + 56))(v65, 0, 1, v79);
        v28 = sub_268F99C24();
        (*(*(v28 - 8) + 8))(v66);
        return (v41)(v78, v79);
      }

      sub_268F3B370(v70, v79);
      sub_268D55C74(v42, v43);
    }
  }

  v30 = sub_268F99C24();
  (*(*(v30 - 8) + 8))(v66);
  return (*(v71 + 56))(v65, 1, 1, v79);
}

uint64_t sub_268F3AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  v15[0] = sub_268F9B724();
  v15[1] = v4;
  v5 = sub_268F9AEF4();
  MEMORY[0x26D62E360](v5);

  v14[0] = a1;
  v14[1] = a2;
  sub_268F9B704();
  sub_268CD9D30(v14);
  v6 = sub_268F9AEF4();
  MEMORY[0x26D62E360](v6);

  v13[0] = a3;
  v13[1] = a4;
  sub_268F9B704();
  sub_268CD9D30(v13);
  v7 = sub_268F9AEF4();
  MEMORY[0x26D62E360](v7);

  sub_268CD9D30(v15);
  return sub_268F9AED4();
}

id sub_268F3ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v12 = a2;
  v14 = 0;
  v15 = a1;
  v8 = *(a1 - 8);
  v9 = a1 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v13 = &v6 - v7;
  v14 = v4;
  sub_268F3B414();
  (*(v8 + 16))(v13, v10, v11);
  return sub_268F3ADDC(v13, v11, v12);
}

id sub_268F3ADDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v28[3] = a1;
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = (*(a3 + 32))();
  sub_268F3AB40(v3, v4, v5, v6);
  v21 = sub_268F9AE14();

  v22 = [v20 initWithIdentifier_];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BE0](v22);
  v30 = 0;
  v23 = objc_opt_self();
  sub_268F99054();
  sub_268F99044();
  v27 = sub_268F99034();
  v16 = v7;

  v18 = sub_268F99164();
  sub_268D55C74(v27, v16);
  type metadata accessor for ReadingOptions(0);
  sub_268F9B734();
  sub_268CD8CCC();
  sub_268F9B424();
  v28[0] = 0;
  v19 = [v23 JSONObjectWithData:v18 options:v28[1] error:v28];
  v17 = v28[0];
  MEMORY[0x277D82BE0](v28[0]);
  v8 = v30;
  v30 = v17;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);
  if (v19)
  {
    sub_268F9B404();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v30;
    v12 = sub_268F990F4();
    MEMORY[0x277D82BD8](v11);
    swift_willThrow();

    memset(v31, 0, sizeof(v31));
    v32 = 0;
  }

  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE418, &qword_268FAA9B8);
    if (swift_dynamicCast())
    {
      v14 = v28[2];
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    sub_268D28414(v31);
    v15 = 0;
  }

  v29 = v15;
  if (!v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
    sub_268F9B734();
    sub_268F9ADA4();
    if (v29)
    {
      sub_268CD7930(&v29);
    }
  }

  sub_268F9B594();
  v13 = sub_268F9AD74();

  [v22 setUserData_];
  v9 = MEMORY[0x277D82BD8](v13);
  (*(*(a2 - 8) + 8))(a1, v9);
  MEMORY[0x277D82BD8](v22);
  return v22;
}

id sub_268F3B2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = objc_opt_self();
  v9 = sub_268F3ACF8(a2, a3, v8, v3);
  v10 = [v8 runSiriKitExecutorCommandWithContext:a1 payload:?];
  MEMORY[0x277D82BD8](v9);
  return v10;
}

uint64_t sub_268F3B370(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

unint64_t sub_268F3B414()
{
  v2 = qword_2802DE410;
  if (!qword_2802DE410)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2802DE410);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_268F3B478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268F3B2D0(a1, a2, a3);
  v4 = objc_opt_self();
  MEMORY[0x277D82BE0](v6);
  v5 = [v4 wrapCommandInStartLocalRequest_];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v6);
  return v5;
}

uint64_t sub_268F3B564()
{
  v0 = sub_268DDE5B4();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_280FE8158 = v2;
  return result;
}

uint64_t *sub_268F3B5A4()
{
  if (qword_280FE4618 != -1)
  {
    swift_once();
  }

  return &qword_280FE8158;
}

uint64_t sub_268F3B604()
{
  v0 = sub_268F3B5A4();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268F3B63C()
{
  v9 = 0;
  SettingFlow = type metadata accessor for GetSettingFlowStrategy.IntentConversionError(0);
  v6 = (*(*(SettingFlow - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5[1], v0, v1, v2);
  v8 = v5 - v6;
  v9 = v3;
  sub_268F3B754(v3, v5 - v6);
  return sub_268F9AE64();
}

uint64_t type metadata accessor for GetSettingFlowStrategy.IntentConversionError(uint64_t a1)
{
  v2 = qword_2802DE430;
  if (!qword_2802DE430)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_268F3B754(const void *a1, void *a2)
{
  SettingFlow = type metadata accessor for GetSettingFlowStrategy.IntentConversionError(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_268F99C34();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(SettingFlow - 8) + 64));
  }

  return a2;
}

uint64_t sub_268F3B87C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v5 = v0;
  v6 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  *v5 = sub_268F9AE24();
  v5[1] = v1;
  v2 = sub_268F3B63C();
  v5[5] = MEMORY[0x277D837D0];
  v5[2] = v2;
  v5[3] = v3;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v6);
  return sub_268F9ADA4();
}

unint64_t sub_268F3B9A0()
{
  v2 = qword_2802DE420;
  if (!qword_2802DE420)
  {
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE420);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F3BA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v91 = a1;
  v3 = v2;
  v4 = v91;
  v111 = v3;
  v115 = "GetSettingFlowStrategy: actionForInput.";
  v92 = "GetSettingFlowStrategy: not a compatible type of parse. Ignoring.";
  v93 = "GetSettingFlowStrategy: %@ handling NLV3Intent.";
  v94 = "GetSettingFlowStrategy: Error parsing uso parse.";
  v134 = 0;
  v133 = 0;
  v136 = 0;
  v95 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v135 = 0;
  v125 = 0;
  v124 = 0;
  v113 = 0;
  v96 = sub_268F99CB4();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v5, v6, v7);
  v100 = &v44[-v99];
  v101 = sub_268F99C64();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113, v8, v9, v10);
  v105 = &v44[-v104];
  v136 = &v44[-v104];
  v106 = sub_268F9A704();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113, v11, v12, v13);
  v110 = &v44[-v109];
  v135 = &v44[-v109];
  v122 = sub_268F99C34();
  v119 = *(v122 - 8);
  v120 = v122 - 8;
  v112 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122, v14, v15, v16);
  v121 = &v44[-v112];
  v134 = v4;
  v133 = v17;
  v116 = sub_268F9B284();
  v118 = *sub_268DC964C();
  MEMORY[0x277D82BE0](v118);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v117 = sub_268F9B734();
  sub_268F9AC14(v116, &dword_268CBE000, v118, v115, 39, 2);

  MEMORY[0x277D82BD8](v118);
  sub_268F99BE4();
  v123 = (*(v119 + 88))(v121, v122);
  if (v123 == *MEMORY[0x277D5C128])
  {
    (*(v119 + 96))(v121, v122);
    (*(v107 + 32))(v110, v121, v106);
    v135 = v110;
    v88 = v127;
    memset(v127, 0, sizeof(v127));
    v87 = &v126;
    sub_268D8E52C(&v126);
    v89 = sub_268DA7690(v110, v88, v87);
    sub_268D28414(v87);
    sub_268D28414(v88);
    v125 = v89;
    MEMORY[0x277D82BE0](v89);
    if (v89)
    {
      v86 = v89;
      v84 = v89;
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (v85)
      {
        v83 = v85;
      }

      else
      {
        MEMORY[0x277D82BD8](v84);
        v83 = 0;
      }

      v82 = v83;
    }

    else
    {
      v82 = 0;
    }

    v79 = v82 != 0;
    v124 = v82 != 0;
    MEMORY[0x277D82BD8](v82);
    v77 = sub_268F9B284();
    v78 = *sub_268DC964C();
    MEMORY[0x277D82BE0](v78);
    v80 = sub_268F9B734();
    v81 = v18;
    if (v79)
    {
      v76 = sub_268F9AEF4();
      v75 = v19;
      v81[3] = MEMORY[0x277D837D0];
      v20 = sub_268CDD224();
      v21 = v75;
      v22 = v81;
      v23 = v20;
      v24 = v76;
    }

    else
    {
      v74 = sub_268F9AEF4();
      v73 = v25;
      v81[3] = MEMORY[0x277D837D0];
      v26 = sub_268CDD224();
      v21 = v73;
      v22 = v81;
      v23 = v26;
      v24 = v74;
    }

    v81[4] = v23;
    *v22 = v24;
    v22[1] = v21;
    sub_268CD0F7C();
    v72 = v27;
    sub_268F9AC14(v77, &dword_268CBE000, v78, v93, 47, 2);

    MEMORY[0x277D82BD8](v78);
    if (v79)
    {
      sub_268F99894();
    }

    else
    {
      sub_268F998A4();
    }

    v28 = MEMORY[0x277D82BD8](v89);
    return (*(v107 + 8))(v110, v106, v28);
  }

  else if (v123 == *MEMORY[0x277D5C160])
  {
    v29 = v95;
    v30 = v105;
    (*(v119 + 96))(v121, v122);
    (*(v102 + 32))(v30, v121, v101);
    v136 = v30;
    sub_268F99C54();
    v68 = &v132;
    sub_268F99C44();
    v69 = &v131;
    sub_268D8E52C(&v131);
    v70 = sub_268E17680(v100, v68, v69);
    v71 = v29;
    if (v29)
    {
      v51 = v71;
      sub_268D28414(&v131);
      sub_268D28414(&v132);
      (*(v97 + 8))(v100, v96);
      v42 = v51;
      v130 = v51;
      v48 = sub_268F9B294();
      v50 = *sub_268DC964C();
      MEMORY[0x277D82BE0](v50);
      v49 = sub_268F9B734();
      sub_268F9AC14(v48, &dword_268CBE000, v50, v94, 48, 2);

      MEMORY[0x277D82BD8](v50);

      sub_268F998A4();
      return (*(v102 + 8))(v105, v101);
    }

    else
    {
      v67 = v70;
      sub_268D28414(&v131);
      sub_268D28414(&v132);
      (*(v97 + 8))(v100, v96);
      v129 = v67;
      MEMORY[0x277D82BE0](v67);
      if (v67)
      {
        v66 = v67;
        v64 = v67;
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          v63 = v65;
        }

        else
        {
          MEMORY[0x277D82BD8](v64);
          v63 = 0;
        }

        v62 = v63;
      }

      else
      {
        v62 = 0;
      }

      v59 = v62 != 0;
      v128 = v62 != 0;
      MEMORY[0x277D82BD8](v62);
      v57 = sub_268F9B284();
      v58 = *sub_268DC964C();
      MEMORY[0x277D82BE0](v58);
      v60 = sub_268F9B734();
      v61 = v31;
      if (v59)
      {
        v56 = sub_268F9AEF4();
        v55 = v32;
        v61[3] = MEMORY[0x277D837D0];
        v33 = sub_268CDD224();
        v34 = v55;
        v35 = v61;
        v36 = v33;
        v37 = v56;
      }

      else
      {
        v54 = sub_268F9AEF4();
        v53 = v38;
        v61[3] = MEMORY[0x277D837D0];
        v39 = sub_268CDD224();
        v34 = v53;
        v35 = v61;
        v36 = v39;
        v37 = v54;
      }

      v61[4] = v36;
      *v35 = v37;
      v35[1] = v34;
      sub_268CD0F7C();
      v52 = v40;
      sub_268F9AC14(v57, &dword_268CBE000, v58, v93, 47, 2);

      MEMORY[0x277D82BD8](v58);
      if (v59)
      {
        sub_268F99894();
      }

      else
      {
        sub_268F998A4();
      }

      v41 = MEMORY[0x277D82BD8](v67);
      return (*(v102 + 8))(v105, v101, v41);
    }
  }

  else
  {
    v45 = sub_268F9B284();
    v47 = *sub_268DC964C();
    MEMORY[0x277D82BE0](v47);
    v46 = sub_268F9B734();
    sub_268F9AC14(v45, &dword_268CBE000, v47, v92, 65, 2);

    MEMORY[0x277D82BD8](v47);
    sub_268F998A4();
    return (*(v119 + 8))(v121, v122);
  }
}

uint64_t sub_268F3C9D0(uint64_t a1, uint64_t a2)
{
  v3[32] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[27] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v3[31] = 0;
  v4 = sub_268F99CB4();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = sub_268F99C64();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v6 = sub_268F9A704();
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v7 = sub_268F99C34();
  v3[43] = v7;
  v3[44] = *(v7 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = v2;

  return MEMORY[0x2822009F8](sub_268F3CC84, 0);
}

uint64_t sub_268F3CC84(uint64_t a1)
{
  v81 = v1[46];
  v79 = v1[44];
  v80 = v1[43];
  v77 = v1[32];
  v1[22] = v1;
  v75 = sub_268F9B284();
  v2 = sub_268DC964C();
  v76 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v75, &dword_268CBE000, v76, "GetSettingFlowStrategy: makeIntentFromParse.", 44, 2);

  v3 = MEMORY[0x277D82BD8](v76);
  v78 = *(v79 + 16);
  (v78)(v81, v77, v80, v3);
  v82 = (*(v79 + 88))(v81, v80);
  if (v82 == *MEMORY[0x277D5C128])
  {
    v70 = v74[46];
    v72 = v74[42];
    v71 = v74[39];
    v69 = v74[40];
    (*(v74[44] + 96))();
    (*(v69 + 32))(v72, v70, v71);
    v74[30] = v72;
    v74[12] = 0;
    v74[13] = 0;
    v74[14] = 0;
    v74[15] = 0;
    v74[16] = 0;
    sub_268D8E52C(v74 + 17);
    v73 = sub_268DA7690(v72, v74 + 12, v74 + 17);
    sub_268D28414(v74 + 17);
    sub_268D28414(v74 + 12);
    if (v73)
    {
      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (v68)
      {
        v67 = v68;
      }

      else
      {
        MEMORY[0x277D82BD8](v73);
        v67 = 0;
      }

      v66 = v67;
    }

    else
    {
      v66 = 0;
    }

    if (v66)
    {
      v4 = v74[42];
      v5 = v74[40];
      v6 = v74[39];
      v74[31] = v66;
      (*(v5 + 8))(v4, v6);
      v65 = v66;
      goto LABEL_22;
    }

    v63 = v74[42];
    v57 = v74[41];
    v64 = v74[39];
    v56 = v74[40];
    v7 = sub_268DC964C();
    v62 = *v7;
    MEMORY[0x277D82BE0](*v7);
    v61 = sub_268F9B294();
    sub_268F9B734();
    v60 = v8;
    (*(v56 + 16))(v57, v63, v64);
    sub_268DA7B0C();
    v58 = sub_268F9AE74();
    v59 = v9;
    v60[3] = MEMORY[0x277D837D0];
    v60[4] = sub_268CDD224();
    *v60 = v58;
    v60[1] = v59;
    sub_268CD0F7C();
    sub_268F9AC04("Error converting uso intent to SiriKit intent: %@.", 50, 2, &dword_268CBE000, v62, v61);

    MEMORY[0x277D82BD8](v62);
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError(0);
    sub_268F3DB94();
    swift_allocError();
    v78();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v56 + 8))(v63, v64);
LABEL_25:

    v17 = v55;
    v18 = *(v74[22] + 8);

    return v18(v17);
  }

  if (v82 != *MEMORY[0x277D5C160])
  {
    v41 = v74[46];
    v33 = v74[45];
    v42 = v74[43];
    v39 = v74[32];
    v40 = v74[44];
    v14 = sub_268DC964C();
    v38 = *v14;
    MEMORY[0x277D82BE0](*v14);
    v37 = sub_268F9B294();
    sub_268F9B734();
    v36 = v15;
    (v78)(v33, v39, v42);
    v34 = sub_268F9AE64();
    v35 = v16;
    v36[3] = MEMORY[0x277D837D0];
    v36[4] = sub_268CDD224();
    *v36 = v34;
    v36[1] = v35;
    sub_268CD0F7C();
    sub_268F9AC04("Received not an NLV4 or NLv3IntentOnly: %@.", 43, 2, &dword_268CBE000, v38, v37);

    MEMORY[0x277D82BD8](v38);
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError(0);
    sub_268F3DB94();
    swift_allocError();
    v78();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v40 + 8))(v41, v42);
    goto LABEL_25;
  }

  v51 = v74[46];
  v10 = v74[38];
  v52 = v74[36];
  v53 = v74[35];
  v50 = v74[37];
  (*(v74[44] + 96))();
  (*(v50 + 32))(v10, v51, v52);
  v74[26] = v10;
  sub_268F99C54();
  sub_268F99C44();
  sub_268D8E52C(v74 + 7);
  v54 = sub_268E17680(v53, v74 + 2, v74 + 7);
  v49 = v74[35];
  v48 = v74[33];
  v47 = v74[34];
  sub_268D28414(v74 + 7);
  sub_268D28414(v74 + 2);
  (*(v47 + 8))(v49, v48);
  if (v54)
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v45 = v46;
    }

    else
    {
      MEMORY[0x277D82BD8](v54);
      v45 = 0;
    }

    v44 = v45;
  }

  else
  {
    v44 = 0;
  }

  if (!v44)
  {
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError(0);
    sub_268F3DB94();
    v43 = swift_allocError();
    v78();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v31 = v74[38];
    v32 = v74[36];
    v30 = v74[37];
    v19 = v43;
    v74[27] = v43;
    v20 = sub_268DC964C();
    v29 = *v20;
    MEMORY[0x277D82BE0](*v20);
    v28 = sub_268F9B294();
    sub_268F9B734();
    v27 = v21;
    v22 = v43;
    v74[28] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v25 = sub_268F9AE64();
    v26 = v23;
    v27[3] = MEMORY[0x277D837D0];
    v27[4] = sub_268CDD224();
    *v27 = v25;
    v27[1] = v26;
    sub_268CD0F7C();
    sub_268F9AC04("Error converting uso intent to SiriKit intent: %@.", 50, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError(0);
    sub_268F3DB94();
    swift_allocError();
    v78();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v30 + 8))(v31, v32);
    goto LABEL_25;
  }

  v11 = v74[38];
  v12 = v74[37];
  v13 = v74[36];
  v74[29] = v44;
  (*(v12 + 8))(v11, v13);
  v65 = v44;
LABEL_22:

  v17 = v65;
  v18 = *(v74[22] + 8);

  return v18(v17);
}

unint64_t sub_268F3DB94()
{
  v2 = qword_2802DE428;
  if (!qword_2802DE428)
  {
    type metadata accessor for GetSettingFlowStrategy.IntentConversionError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE428);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F3DC38(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268F3C9D0(a1, a2);
}

uint64_t sub_268F3DD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D90](a1, a2, a3, SettingFlowStrategy, a5);
}

uint64_t sub_268F3DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D88](a1, a2, a3, SettingFlowStrategy, a5);
}

uint64_t sub_268F3DF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D80](a1, a2, a3, SettingFlowStrategy, a5);
}

uint64_t sub_268F3E008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, SettingFlowStrategy, a6);
}

uint64_t sub_268F3E0EC(uint64_t a1, uint64_t a2)
{
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  v2 = sub_268F3E194();
  v3 = sub_268E04070(a1, a2, SettingFlowStrategy, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268F3E194()
{
  v2 = qword_280FE45F0;
  if (!qword_280FE45F0)
  {
    type metadata accessor for GetSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE45F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F3E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, SettingFlowStrategy, a6);
}

unint64_t sub_268F3E310()
{
  v2 = qword_280FE45F8;
  if (!qword_280FE45F8)
  {
    type metadata accessor for GetSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE45F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F3E3A8()
{
  v2 = qword_280FE4608;
  if (!qword_280FE4608)
  {
    type metadata accessor for GetSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F3E428(uint64_t a1)
{
  result = sub_268F3E310();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268F3E484()
{
  v2 = qword_280FE4610;
  if (!qword_280FE4610)
  {
    type metadata accessor for GetSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4610);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F3E504()
{
  type metadata accessor for SetAXColorFiltersGreenRedHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1708 = result;
  return result;
}

uint64_t *sub_268F3E56C()
{
  if (qword_2802DB860 != -1)
  {
    swift_once();
  }

  return &qword_2802F1708;
}

uint64_t sub_268F3E5CC()
{
  v1 = *sub_268F3E56C();

  return v1;
}

uint64_t sub_268F3E5FC(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v7 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "SetAXColorFiltersGreenRedHandler handling intent", 48, 2);

  MEMORY[0x277D82BD8](v7);

  v9 = sub_268D3EC44();

  v4 = sub_268DBD424();
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v8 + 24);

  sub_268DAAB84(v9, a1, v11, v12, v13, v14 & 1, a2, a3, sub_268F3E820, v8, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F3E820, v8);
}

uint64_t sub_268F3E7B0(char a1)
{

  sub_268D3EC74(a1 & 1);
}

uint64_t sub_268F3E86C()
{
  v0 = sub_268DB61E0();
  v2 = *v0;
  result = MEMORY[0x277D82BE0](*v0);
  qword_2802F1710 = v2;
  return result;
}

uint64_t *sub_268F3E8AC()
{
  if (qword_2802DB868 != -1)
  {
    swift_once();
  }

  return &qword_2802F1710;
}

uint64_t sub_268F3E90C()
{
  v0 = sub_268F3E8AC();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_268F3E944()
{
  v9 = 0;
  v7 = type metadata accessor for OpenSettingFlowStrategy.IntentConversionError(0);
  v6 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5[1], v0, v1, v2);
  v8 = v5 - v6;
  v9 = v3;
  sub_268F3EA5C(v3, v5 - v6);
  return sub_268F9AE64();
}

uint64_t type metadata accessor for OpenSettingFlowStrategy.IntentConversionError(uint64_t a1)
{
  v2 = qword_2802DE458;
  if (!qword_2802DE458)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

void *sub_268F3EA5C(const void *a1, void *a2)
{
  v6 = type metadata accessor for OpenSettingFlowStrategy.IntentConversionError(0);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v2 = sub_268F99C34();
    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

uint64_t sub_268F3EB84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v5 = v0;
  v6 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  *v5 = sub_268F9AE24();
  v5[1] = v1;
  v2 = sub_268F3E944();
  v5[5] = MEMORY[0x277D837D0];
  v5[2] = v2;
  v5[3] = v3;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v6);
  return sub_268F9ADA4();
}

unint64_t sub_268F3ECA8()
{
  v2 = qword_2802DE440;
  if (!qword_2802DE440)
  {
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE440);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F3ED70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v91 = a1;
  v3 = v2;
  v4 = v91;
  v111 = v3;
  v115 = "OpenSettingFlowStrategy: actionForInput.";
  v92 = "OpenSettingFlowStrategy: not a compatible type of parse. Ignoring.";
  v93 = "OpenSettingFlowStrategy: %@ handling NLV3Intent.";
  v94 = "OpenSettingFlowStrategy: Error parsing uso parse.";
  v134 = 0;
  v133 = 0;
  v136 = 0;
  v95 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v135 = 0;
  v125 = 0;
  v124 = 0;
  v113 = 0;
  v96 = sub_268F99CB4();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v5, v6, v7);
  v100 = &v44[-v99];
  v101 = sub_268F99C64();
  v102 = *(v101 - 8);
  v103 = v101 - 8;
  v104 = (*(v102 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113, v8, v9, v10);
  v105 = &v44[-v104];
  v136 = &v44[-v104];
  v106 = sub_268F9A704();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113, v11, v12, v13);
  v110 = &v44[-v109];
  v135 = &v44[-v109];
  v122 = sub_268F99C34();
  v119 = *(v122 - 8);
  v120 = v122 - 8;
  v112 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122, v14, v15, v16);
  v121 = &v44[-v112];
  v134 = v4;
  v133 = v17;
  v116 = sub_268F9B284();
  v118 = *sub_268DC97D0();
  MEMORY[0x277D82BE0](v118);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  v117 = sub_268F9B734();
  sub_268F9AC14(v116, &dword_268CBE000, v118, v115, 40, 2);

  MEMORY[0x277D82BD8](v118);
  sub_268F99BE4();
  v123 = (*(v119 + 88))(v121, v122);
  if (v123 == *MEMORY[0x277D5C128])
  {
    (*(v119 + 96))(v121, v122);
    (*(v107 + 32))(v110, v121, v106);
    v135 = v110;
    v88 = v127;
    memset(v127, 0, sizeof(v127));
    v87 = &v126;
    sub_268D8E52C(&v126);
    v89 = sub_268DA7690(v110, v88, v87);
    sub_268D28414(v87);
    sub_268D28414(v88);
    v125 = v89;
    MEMORY[0x277D82BE0](v89);
    if (v89)
    {
      v86 = v89;
      v84 = v89;
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (v85)
      {
        v83 = v85;
      }

      else
      {
        MEMORY[0x277D82BD8](v84);
        v83 = 0;
      }

      v82 = v83;
    }

    else
    {
      v82 = 0;
    }

    v79 = v82 != 0;
    v124 = v82 != 0;
    MEMORY[0x277D82BD8](v82);
    v77 = sub_268F9B284();
    v78 = *sub_268DC97D0();
    MEMORY[0x277D82BE0](v78);
    v80 = sub_268F9B734();
    v81 = v18;
    if (v79)
    {
      v76 = sub_268F9AEF4();
      v75 = v19;
      v81[3] = MEMORY[0x277D837D0];
      v20 = sub_268CDD224();
      v21 = v75;
      v22 = v81;
      v23 = v20;
      v24 = v76;
    }

    else
    {
      v74 = sub_268F9AEF4();
      v73 = v25;
      v81[3] = MEMORY[0x277D837D0];
      v26 = sub_268CDD224();
      v21 = v73;
      v22 = v81;
      v23 = v26;
      v24 = v74;
    }

    v81[4] = v23;
    *v22 = v24;
    v22[1] = v21;
    sub_268CD0F7C();
    v72 = v27;
    sub_268F9AC14(v77, &dword_268CBE000, v78, v93, 48, 2);

    MEMORY[0x277D82BD8](v78);
    if (v79)
    {
      sub_268F99894();
    }

    else
    {
      sub_268F998A4();
    }

    v28 = MEMORY[0x277D82BD8](v89);
    return (*(v107 + 8))(v110, v106, v28);
  }

  else if (v123 == *MEMORY[0x277D5C160])
  {
    v29 = v95;
    v30 = v105;
    (*(v119 + 96))(v121, v122);
    (*(v102 + 32))(v30, v121, v101);
    v136 = v30;
    sub_268F99C54();
    v68 = &v132;
    sub_268F99C44();
    v69 = &v131;
    sub_268D8E52C(&v131);
    v70 = sub_268E17680(v100, v68, v69);
    v71 = v29;
    if (v29)
    {
      v51 = v71;
      sub_268D28414(&v131);
      sub_268D28414(&v132);
      (*(v97 + 8))(v100, v96);
      v42 = v51;
      v130 = v51;
      v48 = sub_268F9B294();
      v50 = *sub_268DC97D0();
      MEMORY[0x277D82BE0](v50);
      v49 = sub_268F9B734();
      sub_268F9AC14(v48, &dword_268CBE000, v50, v94, 49, 2);

      MEMORY[0x277D82BD8](v50);

      sub_268F998A4();
      return (*(v102 + 8))(v105, v101);
    }

    else
    {
      v67 = v70;
      sub_268D28414(&v131);
      sub_268D28414(&v132);
      (*(v97 + 8))(v100, v96);
      v129 = v67;
      MEMORY[0x277D82BE0](v67);
      if (v67)
      {
        v66 = v67;
        v64 = v67;
        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          v63 = v65;
        }

        else
        {
          MEMORY[0x277D82BD8](v64);
          v63 = 0;
        }

        v62 = v63;
      }

      else
      {
        v62 = 0;
      }

      v59 = v62 != 0;
      v128 = v62 != 0;
      MEMORY[0x277D82BD8](v62);
      v57 = sub_268F9B284();
      v58 = *sub_268DC97D0();
      MEMORY[0x277D82BE0](v58);
      v60 = sub_268F9B734();
      v61 = v31;
      if (v59)
      {
        v56 = sub_268F9AEF4();
        v55 = v32;
        v61[3] = MEMORY[0x277D837D0];
        v33 = sub_268CDD224();
        v34 = v55;
        v35 = v61;
        v36 = v33;
        v37 = v56;
      }

      else
      {
        v54 = sub_268F9AEF4();
        v53 = v38;
        v61[3] = MEMORY[0x277D837D0];
        v39 = sub_268CDD224();
        v34 = v53;
        v35 = v61;
        v36 = v39;
        v37 = v54;
      }

      v61[4] = v36;
      *v35 = v37;
      v35[1] = v34;
      sub_268CD0F7C();
      v52 = v40;
      sub_268F9AC14(v57, &dword_268CBE000, v58, v93, 48, 2);

      MEMORY[0x277D82BD8](v58);
      if (v59)
      {
        sub_268F99894();
      }

      else
      {
        sub_268F998A4();
      }

      v41 = MEMORY[0x277D82BD8](v67);
      return (*(v102 + 8))(v105, v101, v41);
    }
  }

  else
  {
    v45 = sub_268F9B284();
    v47 = *sub_268DC97D0();
    MEMORY[0x277D82BE0](v47);
    v46 = sub_268F9B734();
    sub_268F9AC14(v45, &dword_268CBE000, v47, v92, 66, 2);

    MEMORY[0x277D82BD8](v47);
    sub_268F998A4();
    return (*(v119 + 8))(v121, v122);
  }
}

uint64_t sub_268F3FCD8(uint64_t a1, uint64_t a2)
{
  v3[32] = a1;
  v3[22] = v3;
  v3[23] = 0;
  v3[24] = 0;
  v3[25] = 0;
  v3[26] = 0;
  v3[27] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v3[31] = 0;
  v4 = sub_268F99CB4();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = sub_268F99C64();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v6 = sub_268F9A704();
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v7 = sub_268F99C34();
  v3[43] = v7;
  v3[44] = *(v7 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[23] = a1;
  v3[24] = a2;
  v3[25] = v2;

  return MEMORY[0x2822009F8](sub_268F3FF8C, 0);
}

uint64_t sub_268F3FF8C(uint64_t a1)
{
  v81 = v1[46];
  v79 = v1[44];
  v80 = v1[43];
  v77 = v1[32];
  v1[22] = v1;
  v75 = sub_268F9B284();
  v2 = sub_268DC97D0();
  v76 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v75, &dword_268CBE000, v76, "OpenSettingFlowStrategy: makeIntentFromParse.", 45, 2);

  v3 = MEMORY[0x277D82BD8](v76);
  v78 = *(v79 + 16);
  (v78)(v81, v77, v80, v3);
  v82 = (*(v79 + 88))(v81, v80);
  if (v82 == *MEMORY[0x277D5C128])
  {
    v70 = v74[46];
    v72 = v74[42];
    v71 = v74[39];
    v69 = v74[40];
    (*(v74[44] + 96))();
    (*(v69 + 32))(v72, v70, v71);
    v74[30] = v72;
    v74[12] = 0;
    v74[13] = 0;
    v74[14] = 0;
    v74[15] = 0;
    v74[16] = 0;
    sub_268D8E52C(v74 + 17);
    v73 = sub_268DA7690(v72, v74 + 12, v74 + 17);
    sub_268D28414(v74 + 17);
    sub_268D28414(v74 + 12);
    if (v73)
    {
      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (v68)
      {
        v67 = v68;
      }

      else
      {
        MEMORY[0x277D82BD8](v73);
        v67 = 0;
      }

      v66 = v67;
    }

    else
    {
      v66 = 0;
    }

    if (v66)
    {
      v4 = v74[42];
      v5 = v74[40];
      v6 = v74[39];
      v74[31] = v66;
      (*(v5 + 8))(v4, v6);
      v65 = v66;
      goto LABEL_22;
    }

    v63 = v74[42];
    v57 = v74[41];
    v64 = v74[39];
    v56 = v74[40];
    v7 = sub_268DC97D0();
    v62 = *v7;
    MEMORY[0x277D82BE0](*v7);
    v61 = sub_268F9B294();
    sub_268F9B734();
    v60 = v8;
    (*(v56 + 16))(v57, v63, v64);
    sub_268DA7B0C();
    v58 = sub_268F9AE74();
    v59 = v9;
    v60[3] = MEMORY[0x277D837D0];
    v60[4] = sub_268CDD224();
    *v60 = v58;
    v60[1] = v59;
    sub_268CD0F7C();
    sub_268F9AC04("Error converting uso intent to SiriKit intent: %@.", 50, 2, &dword_268CBE000, v62, v61);

    MEMORY[0x277D82BD8](v62);
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError(0);
    sub_268F40E9C();
    swift_allocError();
    v78();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v56 + 8))(v63, v64);
LABEL_25:

    v17 = v55;
    v18 = *(v74[22] + 8);

    return v18(v17);
  }

  if (v82 != *MEMORY[0x277D5C160])
  {
    v41 = v74[46];
    v33 = v74[45];
    v42 = v74[43];
    v39 = v74[32];
    v40 = v74[44];
    v14 = sub_268DC97D0();
    v38 = *v14;
    MEMORY[0x277D82BE0](*v14);
    v37 = sub_268F9B294();
    sub_268F9B734();
    v36 = v15;
    (v78)(v33, v39, v42);
    v34 = sub_268F9AE64();
    v35 = v16;
    v36[3] = MEMORY[0x277D837D0];
    v36[4] = sub_268CDD224();
    *v36 = v34;
    v36[1] = v35;
    sub_268CD0F7C();
    sub_268F9AC04("Received not an NLV4 or NLv3IntentOnly: %@.", 43, 2, &dword_268CBE000, v38, v37);

    MEMORY[0x277D82BD8](v38);
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError(0);
    sub_268F40E9C();
    swift_allocError();
    v78();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v40 + 8))(v41, v42);
    goto LABEL_25;
  }

  v51 = v74[46];
  v10 = v74[38];
  v52 = v74[36];
  v53 = v74[35];
  v50 = v74[37];
  (*(v74[44] + 96))();
  (*(v50 + 32))(v10, v51, v52);
  v74[26] = v10;
  sub_268F99C54();
  sub_268F99C44();
  sub_268D8E52C(v74 + 7);
  v54 = sub_268E17680(v53, v74 + 2, v74 + 7);
  v49 = v74[35];
  v48 = v74[33];
  v47 = v74[34];
  sub_268D28414(v74 + 7);
  sub_268D28414(v74 + 2);
  (*(v47 + 8))(v49, v48);
  if (v54)
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v45 = v46;
    }

    else
    {
      MEMORY[0x277D82BD8](v54);
      v45 = 0;
    }

    v44 = v45;
  }

  else
  {
    v44 = 0;
  }

  if (!v44)
  {
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError(0);
    sub_268F40E9C();
    v43 = swift_allocError();
    v78();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v31 = v74[38];
    v32 = v74[36];
    v30 = v74[37];
    v19 = v43;
    v74[27] = v43;
    v20 = sub_268DC97D0();
    v29 = *v20;
    MEMORY[0x277D82BE0](*v20);
    v28 = sub_268F9B294();
    sub_268F9B734();
    v27 = v21;
    v22 = v43;
    v74[28] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v25 = sub_268F9AE64();
    v26 = v23;
    v27[3] = MEMORY[0x277D837D0];
    v27[4] = sub_268CDD224();
    *v27 = v25;
    v27[1] = v26;
    sub_268CD0F7C();
    sub_268F9AC04("Error converting uso intent to SiriKit intent: %@.", 50, 2, &dword_268CBE000, v29, v28);

    MEMORY[0x277D82BD8](v29);
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError(0);
    sub_268F40E9C();
    swift_allocError();
    v78();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v30 + 8))(v31, v32);
    goto LABEL_25;
  }

  v11 = v74[38];
  v12 = v74[37];
  v13 = v74[36];
  v74[29] = v44;
  (*(v12 + 8))(v11, v13);
  v65 = v44;
LABEL_22:

  v17 = v65;
  v18 = *(v74[22] + 8);

  return v18(v17);
}

unint64_t sub_268F40E9C()
{
  v2 = qword_2802DE448;
  if (!qword_2802DE448)
  {
    type metadata accessor for OpenSettingFlowStrategy.IntentConversionError(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE448);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F40F40(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268F3FCD8(a1, a2);
}

uint64_t sub_268F4107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for OpenSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D90](a1, a2, a3, v7, a5);
}

uint64_t sub_268F41158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for OpenSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D88](a1, a2, a3, v7, a5);
}

uint64_t sub_268F41234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v9 + 24) = v6;
  v7 = type metadata accessor for OpenSettingFlowStrategy();
  *v6 = *(v9 + 16);
  v6[1] = sub_268D34238;

  return MEMORY[0x2821B9D80](a1, a2, a3, v7, a5);
}

uint64_t sub_268F41310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for OpenSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v8, a6);
}

uint64_t sub_268F413F4(uint64_t a1, uint64_t a2)
{
  v7 = type metadata accessor for OpenSettingFlowStrategy();
  v2 = sub_268F4149C();
  v3 = sub_268E04070(a1, a2, v7, v2);
  v4 = *(v9 + 8);

  return v4(v3);
}

unint64_t sub_268F4149C()
{
  v2 = qword_2802DE450;
  if (!qword_2802DE450)
  {
    type metadata accessor for OpenSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE450);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  *(v6 + 16) = v6;
  v7 = swift_task_alloc();
  *(v10 + 24) = v7;
  v8 = type metadata accessor for OpenSettingFlowStrategy();
  *v7 = *(v10 + 16);
  v7[1] = sub_268D34238;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v8, a6);
}

unint64_t sub_268F41618()
{
  v2 = qword_2802DE468;
  if (!qword_2802DE468)
  {
    type metadata accessor for OpenSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F416B0()
{
  v2 = qword_2802DE470;
  if (!qword_2802DE470)
  {
    type metadata accessor for OpenSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F41730(uint64_t a1)
{
  result = sub_268F41618();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268F4178C()
{
  v2 = qword_2802DE478;
  if (!qword_2802DE478)
  {
    type metadata accessor for OpenSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE478);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F4180C()
{
  if (qword_280FE2F50 != -1)
  {
    swift_once();
  }

  return &qword_280FE8030;
}

uint64_t sub_268F4186C()
{
  type metadata accessor for GetAXColorFiltersGreenRedHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8030 = result;
  return result;
}

uint64_t sub_268F418D4()
{
  v1 = *sub_268F4180C();

  return v1;
}

double sub_268F41904(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetAXColorFiltersGreenRedHandler handling intent", 48, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBAA94();
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
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F41D88, v18, MEMORY[0x277D84F78] + 8, v3);
  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268F41B20(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4)
{
  v16 = [a1 settingMetadata];

  v17 = sub_268D3EC44();

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

uint64_t *sub_268F41DE0()
{
  if (qword_280FE4B88 != -1)
  {
    swift_once();
  }

  return &qword_280FE8190;
}

uint64_t sub_268F41E40()
{
  type metadata accessor for GetShakeMouseHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE8190 = result;
  return result;
}

uint64_t sub_268F41EA8()
{
  v1 = *sub_268F41DE0();

  return v1;
}

uint64_t sub_268F41ED8(uint64_t a1, void (*a2)(id))
{
  v6 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v7 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v6, &dword_268CBE000, v7, "Non macOS! GetShakeMouseHandler handling intent; Siri cannot get setting", 72, 2);

  MEMORY[0x277D82BD8](v7);

  v3 = sub_268E948B8(17);
  v9 = sub_268E41B70(v3, v4);

  a2(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t *sub_268F42038()
{
  if (qword_2802DB870 != -1)
  {
    swift_once();
  }

  return &qword_2802F1718;
}

uint64_t *sub_268F42098()
{
  if (qword_280FE5268 != -1)
  {
    swift_once();
  }

  return &qword_280FE81E8;
}

uint64_t sub_268F4211C()
{
  result = sub_268F9AEF4();
  qword_2802F1718 = result;
  qword_2802F1720 = v1;
  return result;
}

uint64_t sub_268F42160()
{
  v1 = *sub_268F42038();

  return v1;
}

uint64_t sub_268F4219C()
{
  type metadata accessor for GetFocusModeHandler();
  v2 = sub_268CDC590();
  v0 = sub_268F1C948();
  result = sub_268F4221C(v2, 1, v0);
  qword_280FE81E8 = result;
  return result;
}

uint64_t sub_268F4227C()
{
  v1 = *sub_268F42098();

  return v1;
}

uint64_t sub_268F422AC(uint64_t a1, char a2, uint64_t a3)
{

  *(v3 + 24) = a1;
  *(v3 + 16) = a2;

  *(v3 + 32) = a3;

  return v8;
}

double sub_268F42340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_268F9B284();
  v3 = sub_268DC7AE8();
  v6 = *v3;
  MEMORY[0x277D82BE0](*v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "GetFocusModeHandler handling intent.", 36, 2);

  MEMORY[0x277D82BD8](v6);
  return sub_268F42430(a1, a2, a3);
}

double sub_268F42430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v4 = sub_268DC7AE8();
  v9 = *v4;
  MEMORY[0x277D82BE0](*v4);
  v8 = sub_268F9B284();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("GetFocusModeHandler sending focus mode intent", 45, 2, &dword_268CBE000, v9, v8);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBBFC4();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 16);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F42758, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t sub_268F42650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x277D82BE0](a2);

  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a2;
  v9[5] = a1;
  sub_268D48CFC(a2, sub_268F43B2C, v9);
}

uint64_t sub_268F4278C(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4, void *a5, uint64_t a6)
{
  v38[6] = a1;
  v38[7] = a2;
  v38[4] = a3;
  v38[5] = a4;
  v38[3] = a5;
  v38[2] = a6;
  if (a2 == -1)
  {
    v6 = sub_268DC7AE8();
    v33 = *v6;
    MEMORY[0x277D82BE0](*v6);
    v32 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Error while getting state of focus.", 35, 2, &dword_268CBE000, v33, v32);

    MEMORY[0x277D82BD8](v33);

    v34 = sub_268E419BC(4);
    (a3)();
    MEMORY[0x277D82BD8](v34);
  }

  else if (a2 == 100)
  {
    v31 = [a5 settingMetadata];
    if (v31)
    {
      v26 = [v31 settingId];
      v27 = sub_268F9AE24();
      v28 = v8;
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v26);
      v29 = v27;
      v30 = v28;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    v37[0] = v29;
    v37[1] = v30;
    sub_268CD9D30(v37);
    if (v30)
    {

      v25 = sub_268F23C10();

      if (v25)
      {
        sub_268F42038();

        v24 = sub_268F9AE14();

        [v25 setBool:1 forKey:v24];
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
      }
    }

    v9 = sub_268DC7AE8();
    v22 = *v9;
    MEMORY[0x277D82BE0](*v9);
    v21 = sub_268F9B284();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("Attempting to get state of unconfigured focus. Returning error.", 63, 2, &dword_268CBE000, v22, v21);

    MEMORY[0x277D82BD8](v22);

    v10 = sub_268E948B8(7);
    v23 = sub_268E41B70(v10, v11);

    a3(v23);
    MEMORY[0x277D82BD8](v23);
  }

  else
  {
    v20 = [a5 settingMetadata];
    if (v20)
    {
      v15 = [v20 settingId];
      v16 = sub_268F9AE24();
      v17 = v12;
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v15);
      v18 = v16;
      v19 = v17;
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    v38[0] = v18;
    v38[1] = v19;
    sub_268CD9D30(v38);
    if (v19)
    {

      v14 = sub_268F23C10();

      if (v14)
      {
        sub_268F42038();

        v13 = sub_268F9AE14();

        [v14 setBool:0 forKey:v13];
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v14);
      }
    }

    a3(a1);
  }
}

uint64_t sub_268F42D88(uint64_t a1)
{
  v2[12] = v1;
  v2[11] = a1;
  v2[8] = v2;
  v2[9] = 0;
  v2[10] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[9] = a1;
  v2[10] = v1;
  return MEMORY[0x2822009F8](sub_268F42DE0, 0);
}

uint64_t sub_268F42DE0()
{
  v13 = v0[12];
  v0[8] = v0;
  v1 = sub_268DC7AE8();
  v8 = *v1;
  MEMORY[0x277D82BE0](*v1);
  v7 = sub_268F9B284();
  v0[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC04("GetFocusModeHandler sending focus mode intent", 45, 2, &dword_268CBE000, v8, v7);

  MEMORY[0x277D82BD8](v8);
  v2 = sub_268DBBFC4();
  v11 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 16);
  v3 = sub_268DC7AE8();
  v12 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9934(v11, v9, v10, v12, *(v13 + 16) & 1);
  MEMORY[0x277D82BD8](v12);
  v0[14] = *(v13 + 24);

  v4 = swift_task_alloc();
  v14[15] = v4;
  *v4 = v14[8];
  v4[1] = sub_268F42FB0;
  v5 = v14[11];

  return sub_268D4AA24(v5);
}

uint64_t sub_268F42FB0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v4[8] = *v2;
  v4[16] = a1;
  v4[17] = a2;

  return MEMORY[0x2822009F8](sub_268F430F0, 0);
}

uint64_t sub_268F430F0()
{
  v1 = v0[17];
  v2 = v0[16];
  v0[8] = v0;
  v0[2] = v2;
  v0[3] = v1;
  if (v1 == -1)
  {
    v53 = *(v56 + 128);
    v3 = sub_268DC7AE8();
    v48 = *v3;
    MEMORY[0x277D82BE0](*v3);
    v47 = sub_268F9B294();
    sub_268F9B734();
    sub_268F9AC04("Error while getting state of focus.", 35, 2, &dword_268CBE000, v48, v47);

    MEMORY[0x277D82BD8](v48);
    v4 = sub_268DBBFC4();
    v51 = *v4;
    v49 = v4[1];
    v50 = *(v4 + 16);
    v5 = sub_268DC7AE8();
    v52 = *v5;
    MEMORY[0x277D82BE0](*v5);
    sub_268DB9B78(v51, v49, v50, v52);
    MEMORY[0x277D82BD8](v52);
    v54 = sub_268E419BC(4);
    v6 = MEMORY[0x277D82BD8](v53);
    v55 = v54;
  }

  else if (*(v56 + 136) == 100)
  {
    v46 = [*(v56 + 88) settingMetadata];
    if (v46)
    {
      v41 = [v46 settingId];
      v42 = sub_268F9AE24();
      v43 = v7;
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v41);
      v44 = v42;
      v45 = v43;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    *(v56 + 48) = v44;
    *(v56 + 56) = v45;
    if (*(v56 + 56))
    {
      sub_268CD9D30(v56 + 48);

      v40 = sub_268F23C10();

      if (v40)
      {
        sub_268F42038();

        v39 = sub_268F9AE14();

        [v40 setBool:1 forKey:v39];
        MEMORY[0x277D82BD8](v39);
        MEMORY[0x277D82BD8](v40);
      }
    }

    else
    {
      sub_268CD9D30(v56 + 48);
    }

    v37 = *(v56 + 128);
    v8 = sub_268DC7AE8();
    v32 = *v8;
    MEMORY[0x277D82BE0](*v8);
    v31 = sub_268F9B284();
    sub_268F9B734();
    sub_268F9AC04("Attempting to get state of unconfigured focus. Returning error.", 63, 2, &dword_268CBE000, v32, v31);

    MEMORY[0x277D82BD8](v32);
    v9 = sub_268DBBFC4();
    v35 = *v9;
    v33 = v9[1];
    v34 = *(v9 + 16);
    v10 = sub_268DC7AE8();
    v36 = *v10;
    MEMORY[0x277D82BE0](*v10);
    sub_268DB9B78(v35, v33, v34, v36);
    MEMORY[0x277D82BD8](v36);
    v11 = sub_268E948B8(7);
    v38 = sub_268E41B70(v11, v12);

    v6 = MEMORY[0x277D82BD8](v37);
    v55 = v38;
  }

  else
  {
    v30 = [*(v56 + 88) settingMetadata];
    if (v30)
    {
      v25 = [v30 settingId];
      v26 = sub_268F9AE24();
      v27 = v13;
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v25);
      v28 = v26;
      v29 = v27;
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    *(v56 + 32) = v28;
    *(v56 + 40) = v29;
    if (*(v56 + 40))
    {
      sub_268CD9D30(v56 + 32);

      v24 = sub_268F23C10();

      if (v24)
      {
        sub_268F42038();

        v23 = sub_268F9AE14();

        [v24 setBool:0 forKey:v23];
        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](v24);
      }
    }

    else
    {
      sub_268CD9D30(v56 + 32);
    }

    v22 = *(v56 + 128);
    v14 = sub_268DBBFC4();
    v20 = *v14;
    v18 = v14[1];
    v19 = *(v14 + 16);
    v15 = sub_268DC7AE8();
    v21 = *v15;
    MEMORY[0x277D82BE0](*v15);
    sub_268DB9B78(v20, v18, v19, v21);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BE0](v22);
    v6 = MEMORY[0x277D82BD8](v22);
    v55 = *(v56 + 128);
  }

  v16 = *(*(v56 + 64) + 8);

  return v16(v55, v6);
}

uint64_t sub_268F439AC()
{

  return v1;
}

uint64_t sub_268F43A74(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_268D82A48;

  return sub_268F42D88(a1);
}

uint64_t *sub_268F43B40()
{
  if (qword_280FE3A80 != -1)
  {
    swift_once();
  }

  return &qword_280FE80D8;
}

uint64_t sub_268F43BA0()
{
  type metadata accessor for GetLocationServicesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_280FE80D8 = result;
  return result;
}

uint64_t sub_268F43C08()
{
  v1 = *sub_268F43B40();

  return v1;
}

double sub_268F43C38(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_268F9AC14(v8, &dword_268CBE000, v9, "GetLocationServicesHandler handling intent", 42, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBB594();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F44154, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

double sub_268F43E50(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4)
{

  v20 = sub_268D37138();

  sub_268CDD0DC();
  v17 = sub_268CD42AC(3, 0);
  sub_268CDD140();
  sub_268F9B734();
  v19 = v4;
  v21 = [a2 settingMetadata];
  if (v20)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *v19 = sub_268E41954(v21, 0, 0, v15, 0, 0);
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

uint64_t sub_268F441AC()
{
  type metadata accessor for SetShakeMouseHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1728 = result;
  return result;
}

uint64_t *sub_268F44214()
{
  if (qword_2802DB878 != -1)
  {
    swift_once();
  }

  return &qword_2802F1728;
}

uint64_t sub_268F44274()
{
  v1 = *sub_268F44214();

  return v1;
}

uint64_t sub_268F442A4(uint64_t a1, void (*a2)(id))
{
  v5 = sub_268F9B284();
  v2 = sub_268DC7AE8();
  v6 = *v2;
  MEMORY[0x277D82BE0](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  sub_268F9AC14(v5, &dword_268CBE000, v6, "Non macOS! SetShakeMouseHandler handling intent; Siri cannot set setting", 72, 2);

  MEMORY[0x277D82BD8](v6);

  v7 = sub_268E948B8(17);
  v9 = sub_268DAB158(0, v7, v3);

  a2(v9);
  MEMORY[0x277D82BD8](v9);
}

uint64_t sub_268F44440()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v6 = v0;
  v7 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  v1 = sub_268F9AE24();
  *v6 = v1;
  v6[1] = v2;
  v3 = sub_268F4441C(v1);
  v6[5] = MEMORY[0x277D837D0];
  v6[2] = v3;
  v6[3] = v4;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v7);
  return sub_268F9ADA4();
}

unint64_t sub_268F44560()
{
  v2 = qword_2802DE480;
  if (!qword_2802DE480)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F44624()
{
  v2 = qword_2802DE488;
  if (!qword_2802DE488)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE488);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4470C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v6 = v0;
  v7 = *MEMORY[0x277CCA450];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCA450]);
  v1 = sub_268F9AE24();
  *v6 = v1;
  v6[1] = v2;
  v3 = sub_268F446E8(v1);
  v6[5] = MEMORY[0x277D837D0];
  v6[2] = v3;
  v6[3] = v4;
  sub_268CD0F7C();
  MEMORY[0x277D82BD8](v7);
  return sub_268F9ADA4();
}

unint64_t sub_268F4482C()
{
  v2 = qword_2802DE490;
  if (!qword_2802DE490)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F448F0()
{
  v2 = qword_2802DE498;
  if (!qword_2802DE498)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F44A0C()
{
  v2 = qword_2802DE4A0;
  if (!qword_2802DE4A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F44AB8()
{
  v2 = qword_2802DE4A8;
  if (!qword_2802DE4A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F44B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268E4F23C(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC258, &unk_268FA7F90);
  sub_268F9B734();
  v10 = v3;
  *v3 = sub_268E4F2C8(1);
  v10[1] = v4;

  v10[5] = MEMORY[0x277D837D0];
  v10[2] = a1;
  v10[3] = a2;
  v10[6] = sub_268E4F2C8(0);
  v10[7] = v5;
  MEMORY[0x277D82BE0](a3);
  v10[11] = sub_268D34FD4();
  v10[8] = a3;
  sub_268CD0F7C();
  sub_268F9ADA4();
  return sub_268F99BF4();
}

uint64_t sub_268F44C8C()
{
  sub_268D2DF48();
  sub_268DC7C08();

  sub_268F9AEF4();
  result = sub_268F9B374();
  qword_2802DE4B0 = result;
  return result;
}

uint64_t *sub_268F44D0C()
{
  if (qword_2802DB880 != -1)
  {
    swift_once();
  }

  return &qword_2802DE4B0;
}

uint64_t sub_268F44D6C()
{
  v7 = sub_268F9AEF4();
  v8 = v0;
  v1 = sub_268D2A940();
  result = sub_268F39F28(v1, v2, v7, v8);
  qword_2802F1730 = result;
  qword_2802F1738 = v4;
  qword_2802F1740 = v5;
  qword_2802F1748 = v6;
  return result;
}

uint64_t *sub_268F44DD8()
{
  if (qword_2802DB888 != -1)
  {
    swift_once();
  }

  return &qword_2802F1730;
}

uint64_t sub_268F44E38()
{
  v1 = sub_268F44DD8();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

double sub_268F44EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_268F44DD8();

  swift_beginAccess();
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;

  swift_endAccess();

  return result;
}

uint64_t sub_268F44F74(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_268F9AEF4();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x26D62DB50](v12[0], v2, a1, a2);
  sub_268CD9D30(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_268F9AEF4();
  v11[1] = v3;
  v6 = MEMORY[0x26D62DB50](v11[0], v3, a1, a2);
  sub_268CD9D30(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_268F45174()
{
  v2 = qword_2802DE4B8;
  if (!qword_2802DE4B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F452BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268F44F74(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_268F45318()
{
  v2 = qword_2802DE4C0;
  if (!qword_2802DE4C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F453C4(uint64_t a1)
{
  v11 = a1;
  v28 = 0;
  v27 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE500, &unk_268FAB610);
  v12 = *(v22 - 8);
  v13 = v22 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v2, v3, v4);
  v17 = v9 - v14;
  v28 = v5;
  v27 = v1;
  v15 = v5[3];
  v16 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v15);
  sub_268F45318();
  sub_268F9B844();
  v6 = v19;
  v20 = v18[2];
  v21 = v18[3];

  v26 = 0;
  sub_268F9B6A4();
  v23 = v6;
  v24 = v6;
  if (v6)
  {
    v9[1] = v24;

    return (*(v12 + 8))(v17, v22);
  }

  else
  {

    v7 = v23;
    v9[3] = v18[4];
    v9[4] = v18[5];

    v25 = 1;
    sub_268F9B6A4();
    v9[5] = v7;
    v10 = v7;
    if (v7)
    {
      v9[0] = v10;
    }

    return (*(v12 + 8))(v17, v22);
  }
}

uint64_t sub_268F45648(void *a1)
{
  swift_allocObject();
  v5 = sub_268F456D4(a1);
  if (v3)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_268F456D4(void *a1)
{
  v32 = a1;
  v46 = 0;
  v45 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE4F8, &qword_268FAB608);
  v34 = *(v33 - 8);
  v35 = v33 - 8;
  v36 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32, v2, v3, v4);
  v37 = v18 - v36;
  v46 = v5;
  v45 = v1;
  v39 = v5[3];
  v40 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v39);
  sub_268F45318();
  v6 = v38;
  sub_268F9B834();
  v41 = v6;
  v42 = v6;
  if (v6)
  {
    v21 = v42;
    v22 = 0;
    v19 = 0;
    v20 = v42;
    v18[2] = v31;
    v18[1] = v31;
    type metadata accessor for UndoNumericSetting();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(v32);
    return v18[0];
  }

  else
  {
    v44 = 0;
    v7 = sub_268F9B614();
    v27 = 0;
    v28 = v7;
    v29 = v8;
    v30 = 0;
    v9 = v31;
    *(v31 + 16) = v7;
    *(v9 + 24) = v8;
    v43 = 1;
    v10 = sub_268F9B614();
    v23 = 0;
    v24 = v10;
    v25 = v11;
    v26 = 0;
    v12 = v31;
    v13 = v33;
    v14 = v37;
    v15 = v34;
    v16 = v25;
    *(v31 + 32) = v24;
    *(v12 + 40) = v16;
    (*(v15 + 8))(v14, v13);
    __swift_destroy_boxed_opaque_existential_0(v32);
    return v31;
  }
}

uint64_t sub_268F45A3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268F45648(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_268F45B44()
{
  v2 = qword_2802DE4C8;
  if (!qword_2802DE4C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F45BD8()
{
  v2 = qword_2802DE4D0;
  if (!qword_2802DE4D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F45C6C()
{
  v2 = qword_2802DE4D8;
  if (!qword_2802DE4D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F45CE8(void *a1)
{
  a1[1] = sub_268F45D2C();
  a1[2] = sub_268F45DAC();
  result = sub_268F45E2C();
  a1[3] = result;
  return result;
}

unint64_t sub_268F45D2C()
{
  v2 = qword_2802DE4E0;
  if (!qword_2802DE4E0)
  {
    type metadata accessor for UndoNumericSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F45DAC()
{
  v2 = qword_2802DE4E8;
  if (!qword_2802DE4E8)
  {
    type metadata accessor for UndoNumericSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F45E2C()
{
  v2 = qword_2802DE4F0;
  if (!qword_2802DE4F0)
  {
    type metadata accessor for UndoNumericSetting();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE4F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F45EAC()
{
  v1 = *sub_268D591A8();

  return v1;
}

uint64_t sub_268F45EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v62 = a1;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v71 = 0;
  v69 = 0;
  v68 = 0;
  v58 = 0;
  v34 = sub_268F99A74();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v2, v3, v4);
  v38 = v31 - v37;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE508, &qword_268FAB620);
  v39 = *(v56 - 8);
  v40 = v56 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56, v5, v6, v7);
  v55 = v31 - v41;
  v78 = v31 - v41;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE510, &qword_268FAB628);
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v42 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62, v8, v9, v10);
  v51 = v31 - v42;
  v43 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v31 - v42, v13, v14);
  v49 = v31 - v43;
  v77 = v31 - v43;
  v76 = v15;
  v60 = v75;
  sub_268F99C44();
  v44 = v74;
  sub_268F99764();
  v46 = v73;
  sub_268CDE730(v60, v73);
  v45 = v72;
  sub_268CDE730(v44, v72);
  v16 = sub_268D57C40();
  sub_268F464EC(v46, v45, v16, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE518, &qword_268FAB630);
  (*(v47 + 16))(v51, v49, v50);
  v52 = sub_268F995F4();
  v71 = v52;
  SettingFlowStrategy = type metadata accessor for GetSettingFlowStrategy();
  v17 = sub_268CDA260();
  v54 = &v70;
  v70 = v17;

  sub_268F46D3C();
  sub_268F998C4();
  sub_268F9AB54();
  sub_268F9AEF4();
  v57 = sub_268F9AB34();
  v69 = v57;
  v59 = sub_268F998B4();
  v68 = v59;
  type metadata accessor for AuthenticationHandler();
  v61 = v67;
  sub_268CDE730(v60, v67);
  v18 = sub_268CDC590();
  v63 = sub_268E4C814(v61, v18);
  v64 = sub_268E4CA7C(v62);

  if (v64)
  {
    v31[5] = &v66;
    v66 = v59;
    v31[1] = 0;
    v31[7] = sub_268F99544();
    v31[4] = sub_268F99574();
    v31[3] = sub_268F9B734();
    v31[2] = v19;
    sub_268F99A54();
    sub_268F99564();
    (*(v35 + 8))(v38, v34);
    sub_268CD0F7C();
    v20 = sub_268F99534();
    v31[8] = &v65;
    v65 = v20;
    v31[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE520, &qword_268FAB638);
    sub_268F46DBC();
    v32 = sub_268F99644();

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE528, qword_268FAB640);
    v33[3] = v21;
    v22 = sub_268F46E44();
    v23 = v32;
    v24 = v33;
    v33[4] = v22;
    *v24 = v23;
  }

  else
  {

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE520, &qword_268FAB638);
    v33[3] = v26;
    v27 = sub_268F46DBC();
    v28 = v33;
    v29 = v27;
    v30 = v59;
    v33[4] = v29;
    *v28 = v30;
  }

  (*(v39 + 8))(v55, v56);

  (*(v47 + 8))(v49, v50);
  __swift_destroy_boxed_opaque_existential_0(v74);
  return __swift_destroy_boxed_opaque_existential_0(v75);
}

uint64_t sub_268F464EC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v98 = a4;
  v103 = a1;
  v102 = a2;
  v101 = a3;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v118 = 0;
  v91 = 0;
  v34 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4, v5, v6);
  v67 = &v33 - v34;
  v44 = sub_268F99274();
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v35 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44, v7, v8, v9);
  v43 = &v33 - v35;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE510, &qword_268FAB628);
  v76 = *(v105 - 8);
  v77 = v105 - 8;
  v37 = *(v76 + 64);
  v36 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v91, v102, v101, v10);
  v88 = &v33 - v36;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v12, v13, &v33 - v36);
  v104 = &v33 - v38;
  v127 = &v33 - v38;
  v126 = v14;
  v125 = v15;
  v124 = v16;
  v92 = sub_268D2E630();
  v93 = sub_268CDD0DC();
  sub_268F995E4();
  (*(v76 + 32))(v104, v88, v105);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC5A8, qword_268F9E900);
  v49 = 1;
  v68 = sub_268F9AEF4();
  v61 = v17;
  v40 = v103[3];
  v39 = v103[4];
  __swift_project_boxed_opaque_existential_1(v103, v40);
  sub_268F99784();
  v45 = sub_268F99254();
  v46 = v18;
  (*(v41 + 8))(v43, v44);
  v54 = v123;
  v123[0] = v45;
  v123[1] = v46;
  v47 = 1;
  v19 = sub_268F9AEF4();
  v53 = v122;
  v122[0] = v19;
  v122[1] = v20;
  v21 = sub_268F9AEF4();
  v52 = v121;
  v121[0] = v21;
  v121[1] = v22;
  v48 = sub_268D58980();
  v50 = MEMORY[0x277D837D0];
  sub_268D58944();
  v62 = sub_268F9B3E4();
  v63 = v23;
  sub_268CD9D30(v52);
  sub_268CD9D30(v53);
  sub_268CD9D30(v54);
  v64 = v120;
  sub_268CDE730(v102, v120);
  v65 = v119;
  sub_268CDE730(v103, v119);
  v66 = sub_268D589F8();
  sub_268D58A5C(v92, v93);
  v55 = sub_268D58B9C();
  v56 = sub_268D58ABC();
  v57 = sub_268D58AF4();
  v58 = sub_268D58BD4();
  v59 = sub_268D58B64();
  v60 = sub_268D58C0C();
  v24 = sub_268D58C44();
  v97 = sub_268EEB954(v68, v61, v62, v63, v64, v65, v66, v67, v55, v56, v57, v58, v59, v60, v24);
  v118 = v97;
  v100 = *(v76 + 16);
  v99 = v76 + 16;
  v100(v88, v104, v105);
  SettingIntentStrategy = type metadata accessor for ConfirmGetSettingIntentStrategy();
  v69 = v117;
  sub_268CDE730(v103, v117);
  v70 = v116;
  sub_268CDE730(v102, v116);

  v71 = sub_268F45EAC();
  v72 = v115;
  sub_268D58CB4(v115);
  v73 = v114;
  sub_268D58CF4(v114);
  v25 = sub_268D86C08(v69, v70, v71, v97, v72, v73);
  v75 = &v113;
  v113 = v25;
  v26 = sub_268F46ECC();
  v78 = sub_268D5B7C4(v75, v101, v105, SettingIntentStrategy, v26);
  v79 = v27;

  v107 = *(v76 + 8);
  v106 = v76 + 8;
  v107(v88, v105);
  sub_268F995D4();
  v100(v88, v104, v105);
  SettingHandleIntentFlowStrategy = type metadata accessor for GetSettingHandleIntentFlowStrategy();
  v85 = v112;
  sub_268CDE730(v103, v112);
  v80 = v111;
  sub_268CDE730(v102, v111);

  v81 = sub_268D587A8();
  v82 = sub_268D58ED0();
  v83 = v110;
  sub_268D58CB4(v110);
  v84 = v109;
  sub_268D58CF4(v109);
  v28 = sub_268F45EAC();
  v29 = sub_268D2E2B4(v85, v80, v81, v82, v97, v83, v84, v28);
  v87 = &v108;
  v108 = v29;
  sub_268F46F4C();
  v89 = sub_268D58F00();
  v90 = v30;

  v107(v88, v105);
  sub_268F995B4();
  sub_268F9AB54();
  v94 = sub_268F9AB34();
  v95 = sub_268F99594();
  v96 = v31;

  sub_268F995C4();

  v100(v98, v104, v105);

  __swift_destroy_boxed_opaque_existential_0(v102);
  __swift_destroy_boxed_opaque_existential_0(v103);
  return (v107)(v104, v105);
}

unint64_t sub_268F46D3C()
{
  v2 = qword_280FE4600;
  if (!qword_280FE4600)
  {
    type metadata accessor for GetSettingFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE4600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F46DBC()
{
  v2 = qword_280FE66C0;
  if (!qword_280FE66C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DE520, &qword_268FAB638);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE66C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F46E44()
{
  v2 = qword_2802DE530;
  if (!qword_2802DE530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802DE528, qword_268FAB640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F46ECC()
{
  v2 = qword_280FE32B0;
  if (!qword_280FE32B0)
  {
    type metadata accessor for ConfirmGetSettingIntentStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE32B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F46F4C()
{
  v2 = qword_280FE2AD8;
  if (!qword_280FE2AD8)
  {
    type metadata accessor for GetSettingHandleIntentFlowStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE2AD8);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268F46FE0(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "OpenSettingIntent#OpenSettingSpokenOnly";
  *(v2 + 8) = 39;
  *(v2 + 16) = 2;
  sub_268CD0F7C();
  v4 = sub_268F9B5C4();

  return v4 != 0;
}

unint64_t sub_268F47138()
{
  v2 = qword_2802DE538;
  if (!qword_2802DE538)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE538);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_268F47284@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F46FE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F472C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F470B8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_268F472F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v4 = v1;
  *v1 = sub_268F9AEF4();
  v4[1] = v2;

  if (a1)
  {
    v4[5] = type metadata accessor for SettingsSetting(0);
    v4[2] = a1;
  }

  else
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  return sub_268F9B4F4();
}

uint64_t sub_268F4740C(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[8] = a2;
  v3[7] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268F47470, 0);
}

uint64_t sub_268F47470()
{
  v6 = MEMORY[0x277D55BE8];
  v4 = v0[7];
  v0[4] = v0;
  v0[6] = sub_268D63D3C();
  v4(v0 + 6);
  v11 = sub_268F9AEF4();
  v8 = v1;
  v0[10] = v1;
  v5 = v0[6];

  v9 = sub_268F472F4(v5);
  v0[11] = v9;

  v10 = (v6 + *v6);
  v2 = swift_task_alloc();
  *(v7 + 96) = v2;
  *v2 = *(v7 + 32);
  v2[1] = sub_268D73B74;

  return v10(v11, v8, v9);
}

uint64_t sub_268F47620(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_268F47804(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_268D7F90C;

  return sub_268F4740C(a1, a2);
}

uint64_t sub_268F478EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 8) + **(a4 + 8));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_268D82A48;

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata accessor for OpenSettingIntentCATPatternsExecutor(uint64_t a1)
{
  v2 = qword_2802DE540;
  if (!qword_2802DE540)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F47AA4(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t sub_268F47B48()
{
  v2 = qword_2802DE550;
  if (!qword_2802DE550)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE550);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_268F47BC4()
{
  if (qword_280FE6790 != -1)
  {
    swift_once();
  }

  return &qword_280FE6798;
}

uint64_t sub_268F47C24()
{
  type metadata accessor for AppearanceUtils();
  v0 = sub_268CDC590();
  result = sub_268D5DE80(v0);
  qword_280FE6798 = result;
  return result;
}

uint64_t static AppearanceUtils.shared.getter()
{
  v1 = *sub_268F47BC4();

  return v1;
}

uint64_t sub_268F47CBC()
{
  result = sub_268F47D04(0, 0);
  word_2802F1760 = result;
  return result;
}

uint64_t sub_268F47D04(char a1, char a2)
{
  LOBYTE(v3) = a1 & 1;
  HIBYTE(v3) = a2 & 1;
  return v3;
}

__int16 *sub_268F47D28()
{
  if (qword_2802DB898 != -1)
  {
    swift_once();
  }

  return &word_2802F1760;
}

uint64_t sub_268F47DBC()
{
  result = sub_268F47D04(1, 1);
  word_280FE8248 = result;
  return result;
}

__int16 *sub_268F47E04()
{
  if (qword_280FE57B0 != -1)
  {
    swift_once();
  }

  return &word_280FE8248;
}

BOOL sub_268F47E98(__int16 a1)
{
  v5 = a1;
  v6 = HIBYTE(a1);

  v7 = sub_268D43E38();

  if (v7)
  {
    v3 = sub_268D43D48(v6 & 1);

    return v3;
  }

  else
  {
    v2 = sub_268D43C24(v5 & 1);

    return v2;
  }
}

uint64_t sub_268F47F9C(unsigned __int8 *a1)
{
  v6 = *a1;
  if (v6 == 65)
  {
    return 2;
  }

  else
  {
    switch(v6)
    {
      case 1u:
        v7 = *sub_268F47E04();
        if (sub_268F47E98(v7))
        {
          v3 = sub_268F47E04();
        }

        else
        {
          v3 = sub_268F47D28();
        }

        return *v3 & 1 | ((*(v3 + 1) & 1) << 8);
      case 2u:
        v2 = sub_268F47D04(0, 0);
        return v2 & 1 | ((HIBYTE(v2) & 1) << 8);
      case 3u:
        v1 = sub_268F47D04(1, 1);
        return v1 & 1 | ((HIBYTE(v1) & 1) << 8);
      default:
        return 2;
    }
  }
}

BOOL sub_268F48124()
{
  v6 = v0;
  v5 = 1;
  v4 = sub_268F47F9C(&v5);
  if (v4 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v4 & 1;
  }

  return v3 != 2 && sub_268D2CBA4(v3 & 1, 0);
}

uint64_t sub_268F48344(unsigned __int16 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 65281) >> 16) + 1;
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
      v6 = *(a1 + 2);
    }

    else
    {
      v6 = v8 == 2 ? a1[1] : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 16)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
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

uint64_t sub_268F484B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 65281) >> 16) + 1;
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

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = v4;
      }

      else if (v7 == 2)
      {
        *(result + 2) = v4;
      }

      else
      {
        *(result + 2) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        *(result + 2) = 0;
      }

      else if (v7 == 2)
      {
        *(result + 2) = 0;
      }

      else
      {
        *(result + 2) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268F486C0()
{
  type metadata accessor for SetNightShiftHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1768 = result;
  return result;
}

uint64_t *sub_268F48728()
{
  if (qword_2802DB8A8 != -1)
  {
    swift_once();
  }

  return &qword_2802F1768;
}

uint64_t sub_268F48788()
{
  v1 = *sub_268F48728();

  return v1;
}

uint64_t sub_268F487B8(void *a1, void (*a2)(void), uint64_t a3)
{
  v29 = sub_268CD7620();
  SettingIntent.deviceCategory.getter(v29, &protocol witness table for INSetBinarySettingIntent);
  if (v3)
  {
    v24 = 0;
  }

  else
  {
    type metadata accessor for INDeviceCategory(0);
    sub_268CD7818();
    v24 = sub_268F9AE04();
  }

  if (v24 & 1) != 0 || ((SettingIntent.deviceCategory.getter(v29, &protocol witness table for INSetBinarySettingIntent), (v4) ? (v23 = 0) : (type metadata accessor for INDeviceCategory(0), sub_268CD7818(), v23 = sub_268F9AE04()), (v23 & 1) != 0 || ((SettingIntent.deviceCategory.getter(v29, &protocol witness table for INSetBinarySettingIntent), (v5) ? (v22 = 0) : (type metadata accessor for INDeviceCategory(0), sub_268CD7818(), v22 = sub_268F9AE04()), (v22)))
  {
    v11 = sub_268F9B284();
    v9 = sub_268DC7AE8();
    v12 = *v9;
    MEMORY[0x277D82BE0](*v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v11, &dword_268CBE000, v12, "SetNightShiftHandler handleSet | handling intent", 48, 2);

    MEMORY[0x277D82BD8](v12);

    v13 = sub_268D363F0();

    v10 = sub_268DBE2D4();
    v14 = *v10;
    v15 = v10[1];
    v16 = *(v10 + 16);
    v17 = *(v28 + 24);

    sub_268DAAB84(v13 & 1, a1, v14, v15, v16, v17 & 1, a2, a3, sub_268F48E14, v28, 0, 1, 0, 0);
    return sub_268CD9A28(sub_268F48E14, v28);
  }

  else
  {
    v18 = sub_268F9B284();
    v6 = sub_268DC7AE8();
    v19 = *v6;
    MEMORY[0x277D82BE0](*v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC14(v18, &dword_268CBE000, v19, "SetNightShiftHandler handleSet | night shift not supported on this device", 73, 2);

    MEMORY[0x277D82BD8](v19);

    v20 = sub_268E948B8(3);
    v21 = sub_268DAB158(0, v20, v7);

    (a2)(v21);
    MEMORY[0x277D82BD8](v21);
  }
}

uint64_t sub_268F48DA4(char a1)
{

  sub_268D36314(a1 & 1);
}

uint64_t sub_268F48E60(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "GetSettingIntent#DescribeBinarySettingState";
  *(v2 + 8) = 43;
  *(v2 + 16) = 2;
  *(v2 + 24) = "GetSettingIntent#DescribeMultiSettingState";
  *(v2 + 32) = 42;
  *(v2 + 40) = 2;
  *(v2 + 48) = "GetSettingIntent#DescribeNumericSettingState";
  *(v2 + 56) = 44;
  *(v2 + 64) = 2;
  *(v2 + 72) = "GetSettingIntent#DescribeNumericSettingStateSpokenOnly";
  *(v2 + 80) = 54;
  *(v2 + 88) = 2;
  *(v2 + 96) = "GetSettingIntent#HotspotDiscoverabilityPrompt";
  *(v2 + 104) = 45;
  *(v2 + 112) = 2;
  *(v2 + 120) = "GetSettingIntent#SiriCannotChangeSetting";
  *(v2 + 128) = 40;
  *(v2 + 136) = 2;
  *(v2 + 144) = "GetSettingIntent#TargetDeviceNotFoundReadBattery";
  *(v2 + 152) = 48;
  *(v2 + 160) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_16:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_16;
    case 2:
      v5 = 2;
      goto LABEL_16;
    case 3:
      v5 = 3;
      goto LABEL_16;
    case 4:
      v5 = 4;
      goto LABEL_16;
    case 5:
      v5 = 5;
      goto LABEL_16;
    case 6:
      v5 = 6;
      goto LABEL_16;
  }

  return 7;
}

unint64_t sub_268F49308()
{
  v2 = qword_2802DE558;
  if (!qword_2802DE558)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE558);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F49454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F48E60(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F4948C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F49100(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268F494C0(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 106) = a3 & 1;
  *(v5 + 105) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3 & 1;
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268F49550, 0);
}

uint64_t sub_268F49550()
{
  v21 = v0[6];
  v0[2] = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;

  if (v21)
  {
    v16 = *(v17 + 48);
    v20[5] = type metadata accessor for SettingsBinarySetting(0);
    v20[2] = v16;
  }

  else
  {
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
  }

  v15 = *(v17 + 105);
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;
  if (v15 == 2)
  {
    v20[8] = 0;
    v20[9] = 0;
    v20[10] = 0;
    v20[11] = 0;
  }

  else
  {
    v5 = *(v17 + 105);
    v20[11] = MEMORY[0x277D839B0];
    *(v20 + 64) = v5 & 1;
  }

  v14 = *(v17 + 56);
  v13 = *(v17 + 106);
  v20[12] = sub_268F9AEF4();
  v20[13] = v6;
  v20[17] = MEMORY[0x277D839B0];
  *(v20 + 112) = v13;
  v20[18] = sub_268F9AEF4();
  v20[19] = v7;

  if (v14)
  {
    v12 = *(v17 + 56);
    v20[23] = sub_268F9AA44();
    v20[20] = v12;
  }

  else
  {
    v20[20] = 0;
    v20[21] = 0;
    v20[22] = 0;
    v20[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  *(v17 + 80) = v10;
  v11 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v8 = swift_task_alloc();
  *(v17 + 88) = v8;
  *v8 = *(v17 + 16);
  v8[1] = sub_268F49984;

  return v11(v18, v19, v10);
}

uint64_t sub_268F49984(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268F49B6C, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268F49B6C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268F49C2C(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "first1#first1#dialog1";
  *(v2 + 8) = 21;
  *(v2 + 16) = 2;
  *(v2 + 24) = "first1#first1#dialog2";
  *(v2 + 32) = 21;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first1#first2#dialog1";
  *(v2 + 56) = 21;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first1#first2#dialog2";
  *(v2 + 80) = 21;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first1#first3#dialog1";
  *(v2 + 104) = 21;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first1#first3#dialog2";
  *(v2 + 128) = 21;
  *(v2 + 136) = 2;
  *(v2 + 144) = "first2#dialog1";
  *(v2 + 152) = 14;
  *(v2 + 160) = 2;
  *(v2 + 168) = "first2#dialog2";
  *(v2 + 176) = 14;
  *(v2 + 184) = 2;
  *(v2 + 192) = "first3#dialog1";
  *(v2 + 200) = 14;
  *(v2 + 208) = 2;
  *(v2 + 216) = "first3#dialog2";
  *(v2 + 224) = 14;
  *(v2 + 232) = 2;
  *(v2 + 240) = "first4#dialog1";
  *(v2 + 248) = 14;
  *(v2 + 256) = 2;
  *(v2 + 264) = "first4#dialog2";
  *(v2 + 272) = 14;
  *(v2 + 280) = 2;
  *(v2 + 288) = "first5#all1#dialog1";
  *(v2 + 296) = 19;
  *(v2 + 304) = 2;
  *(v2 + 312) = "first5#all1#dialog2";
  *(v2 + 320) = 19;
  *(v2 + 328) = 2;
  *(v2 + 336) = "first5#all2#dialog1";
  *(v2 + 344) = 19;
  *(v2 + 352) = 2;
  *(v2 + 360) = "first5#all2#dialog2";
  *(v2 + 368) = 19;
  *(v2 + 376) = 2;
  *(v2 + 384) = "first6#dialog1";
  *(v2 + 392) = 14;
  *(v2 + 400) = 2;
  *(v2 + 408) = "first6#dialog2";
  *(v2 + 416) = 14;
  *(v2 + 424) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_38:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_38;
    case 2:
      v5 = 2;
      goto LABEL_38;
    case 3:
      v5 = 3;
      goto LABEL_38;
    case 4:
      v5 = 4;
      goto LABEL_38;
    case 5:
      v5 = 5;
      goto LABEL_38;
    case 6:
      v5 = 6;
      goto LABEL_38;
    case 7:
      v5 = 7;
      goto LABEL_38;
    case 8:
      v5 = 8;
      goto LABEL_38;
    case 9:
      v5 = 9;
      goto LABEL_38;
    case 10:
      v5 = 10;
      goto LABEL_38;
    case 11:
      v5 = 11;
      goto LABEL_38;
    case 12:
      v5 = 12;
      goto LABEL_38;
    case 13:
      v5 = 13;
      goto LABEL_38;
    case 14:
      v5 = 14;
      goto LABEL_38;
    case 15:
      v5 = 15;
      goto LABEL_38;
    case 16:
      v5 = 16;
      goto LABEL_38;
    case 17:
      v5 = 17;
      goto LABEL_38;
  }

  return 18;
}

unint64_t sub_268F4A528()
{
  v2 = qword_2802DE560;
  if (!qword_2802DE560)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE560);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4A674@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F49C2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F4A6AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F4A1AC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268F4A6E0(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 106) = a3 & 1;
  *(v5 + 105) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3 & 1;
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268F4A770, 0);
}

uint64_t sub_268F4A770()
{
  v22 = v0[6];
  v0[2] = v0;
  v19 = sub_268F9AEF4();
  v20 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v21 = v2;
  *v2 = sub_268F9AEF4();
  v21[1] = v3;

  if (v22)
  {
    v17 = *(v18 + 48);
    v21[5] = type metadata accessor for SettingsBinarySetting(0);
    v21[2] = v17;
  }

  else
  {
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
  }

  v16 = *(v18 + 105);
  v21[6] = sub_268F9AEF4();
  v21[7] = v4;
  if (v16 == 2)
  {
    v21[8] = 0;
    v21[9] = 0;
    v21[10] = 0;
    v21[11] = 0;
  }

  else
  {
    v5 = *(v18 + 105);
    v21[11] = MEMORY[0x277D839B0];
    *(v21 + 64) = v5 & 1;
  }

  v15 = *(v18 + 56);
  v14 = *(v18 + 106);
  v21[12] = sub_268F9AEF4();
  v21[13] = v6;
  v21[17] = MEMORY[0x277D839B0];
  *(v21 + 112) = v14;
  v21[18] = sub_268F9AEF4();
  v21[19] = v7;

  if (v15)
  {
    v13 = *(v18 + 56);
    v21[23] = sub_268F9AA44();
    v21[20] = v13;
  }

  else
  {
    v21[20] = 0;
    v21[21] = 0;
    v21[22] = 0;
    v21[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v18 + 80) = v11;
  v12 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v8 = swift_task_alloc();
  *(v18 + 88) = v8;
  v9 = sub_268F4A528();
  *v8 = *(v18 + 16);
  v8[1] = sub_268F49984;

  return v12(v19, v20, v11, &unk_287996BE8, v9);
}

uint64_t sub_268F4ABBC(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 106) = a3 & 1;
  *(v5 + 105) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3 & 1;
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268F4AC4C, 0);
}

uint64_t sub_268F4AC4C()
{
  v21 = v0[6];
  v0[2] = v0;
  v18 = sub_268F9AEF4();
  v19 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v20 = v2;
  *v2 = sub_268F9AEF4();
  v20[1] = v3;

  if (v21)
  {
    v16 = *(v17 + 48);
    v20[5] = type metadata accessor for SettingsMultiSetting(0);
    v20[2] = v16;
  }

  else
  {
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
  }

  v15 = *(v17 + 105);
  v20[6] = sub_268F9AEF4();
  v20[7] = v4;
  if (v15 == 2)
  {
    v20[8] = 0;
    v20[9] = 0;
    v20[10] = 0;
    v20[11] = 0;
  }

  else
  {
    v5 = *(v17 + 105);
    v20[11] = MEMORY[0x277D839B0];
    *(v20 + 64) = v5 & 1;
  }

  v14 = *(v17 + 56);
  v13 = *(v17 + 106);
  v20[12] = sub_268F9AEF4();
  v20[13] = v6;
  v20[17] = MEMORY[0x277D839B0];
  *(v20 + 112) = v13;
  v20[18] = sub_268F9AEF4();
  v20[19] = v7;

  if (v14)
  {
    v12 = *(v17 + 56);
    v20[23] = sub_268F9AA44();
    v20[20] = v12;
  }

  else
  {
    v20[20] = 0;
    v20[21] = 0;
    v20[22] = 0;
    v20[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v10 = sub_268F9B4F4();
  *(v17 + 80) = v10;
  v11 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v8 = swift_task_alloc();
  *(v17 + 88) = v8;
  *v8 = *(v17 + 16);
  v8[1] = sub_268F49984;

  return v11(v18, v19, v10);
}

uint64_t sub_268F4B080(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "first1#dialog1";
  *(v2 + 8) = 14;
  *(v2 + 16) = 2;
  *(v2 + 24) = "first1#dialog2";
  *(v2 + 32) = 14;
  *(v2 + 40) = 2;
  *(v2 + 48) = "first2#dialog1";
  *(v2 + 56) = 14;
  *(v2 + 64) = 2;
  *(v2 + 72) = "first2#dialog2";
  *(v2 + 80) = 14;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first3#all1#dialog1";
  *(v2 + 104) = 19;
  *(v2 + 112) = 2;
  *(v2 + 120) = "first3#all1#dialog2";
  *(v2 + 128) = 19;
  *(v2 + 136) = 2;
  *(v2 + 144) = "first3#all2#dialog1";
  *(v2 + 152) = 19;
  *(v2 + 160) = 2;
  *(v2 + 168) = "first3#all2#dialog2";
  *(v2 + 176) = 19;
  *(v2 + 184) = 2;
  *(v2 + 192) = "first4#dialog1";
  *(v2 + 200) = 14;
  *(v2 + 208) = 2;
  *(v2 + 216) = "first4#dialog2";
  *(v2 + 224) = 14;
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

unint64_t sub_268F4B69C()
{
  v2 = qword_2802DE568;
  if (!qword_2802DE568)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE568);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4B7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F4B080(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F4B820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F4B3E0(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268F4B854(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = v4;
  *(v5 + 56) = a4;
  *(v5 + 106) = a3 & 1;
  *(v5 + 105) = a2;
  *(v5 + 48) = a1;
  *(v5 + 16) = v5;
  *(v5 + 24) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 24) = a1;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3 & 1;
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  return MEMORY[0x2822009F8](sub_268F4B8E4, 0);
}

uint64_t sub_268F4B8E4()
{
  v22 = v0[6];
  v0[2] = v0;
  v19 = sub_268F9AEF4();
  v20 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v21 = v2;
  *v2 = sub_268F9AEF4();
  v21[1] = v3;

  if (v22)
  {
    v17 = *(v18 + 48);
    v21[5] = type metadata accessor for SettingsMultiSetting(0);
    v21[2] = v17;
  }

  else
  {
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
  }

  v16 = *(v18 + 105);
  v21[6] = sub_268F9AEF4();
  v21[7] = v4;
  if (v16 == 2)
  {
    v21[8] = 0;
    v21[9] = 0;
    v21[10] = 0;
    v21[11] = 0;
  }

  else
  {
    v5 = *(v18 + 105);
    v21[11] = MEMORY[0x277D839B0];
    *(v21 + 64) = v5 & 1;
  }

  v15 = *(v18 + 56);
  v14 = *(v18 + 106);
  v21[12] = sub_268F9AEF4();
  v21[13] = v6;
  v21[17] = MEMORY[0x277D839B0];
  *(v21 + 112) = v14;
  v21[18] = sub_268F9AEF4();
  v21[19] = v7;

  if (v15)
  {
    v13 = *(v18 + 56);
    v21[23] = sub_268F9AA44();
    v21[20] = v13;
  }

  else
  {
    v21[20] = 0;
    v21[21] = 0;
    v21[22] = 0;
    v21[23] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v18 + 80) = v11;
  v12 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v8 = swift_task_alloc();
  *(v18 + 88) = v8;
  v9 = sub_268F4B69C();
  *v8 = *(v18 + 16);
  v8[1] = sub_268F49984;

  return v12(v19, v20, v11, &unk_287996C78, v9);
}

uint64_t sub_268F4BD30(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 64) = v5;
  *(v6 + 107) = a5 & 1;
  *(v6 + 106) = a4 & 1;
  *(v6 + 105) = a3 & 1;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  *(v6 + 16) = v6;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 40) = 0;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 104) = a3 & 1;
  *(v6 + 112) = a4 & 1;
  *(v6 + 120) = a5 & 1;
  *(v6 + 40) = v5;
  return MEMORY[0x2822009F8](sub_268F4BDF0, 0);
}

uint64_t sub_268F4BDF0()
{
  v23 = v0[6];
  v0[2] = v0;
  v20 = sub_268F9AEF4();
  v21 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v22 = v2;
  *v2 = sub_268F9AEF4();
  v22[1] = v3;

  if (v23)
  {
    v18 = *(v19 + 48);
    v22[5] = type metadata accessor for SettingsNumericSetting(0);
    v22[2] = v18;
  }

  else
  {
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
  }

  v17 = *(v19 + 56);
  v22[6] = sub_268F9AEF4();
  v22[7] = v4;

  if (v17)
  {
    v16 = *(v19 + 56);
    v22[11] = sub_268F9AA44();
    v22[8] = v16;
  }

  else
  {
    v22[8] = 0;
    v22[9] = 0;
    v22[10] = 0;
    v22[11] = 0;
  }

  v13 = *(v19 + 107);
  v11 = *(v19 + 106);
  v10 = *(v19 + 105);
  v22[12] = sub_268F9AEF4();
  v22[13] = v5;
  v12 = MEMORY[0x277D839B0];
  v22[17] = MEMORY[0x277D839B0];
  *(v22 + 112) = v10;
  v22[18] = sub_268F9AEF4();
  v22[19] = v6;
  v22[23] = v12;
  *(v22 + 160) = v11;
  v22[24] = sub_268F9AEF4();
  v22[25] = v7;
  v22[29] = v12;
  *(v22 + 208) = v13;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v14 = sub_268F9B4F4();
  *(v19 + 80) = v14;
  v15 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v8 = swift_task_alloc();
  *(v19 + 88) = v8;
  *v8 = *(v19 + 16);
  v8[1] = sub_268F4C204;

  return v15(v20, v21, v14);
}

uint64_t sub_268F4C204(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268F4C3F8, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268F4C3F8()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_268F4C4BC(uint64_t a1, uint64_t a2)
{
  sub_268F9B734();
  *v2 = "dialog1";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "dialog2";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "dialog3";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  *(v2 + 72) = "dialog4";
  *(v2 + 80) = 7;
  *(v2 + 88) = 2;
  *(v2 + 96) = "dialog5";
  *(v2 + 104) = 7;
  *(v2 + 112) = 2;
  *(v2 + 120) = "dialog6";
  *(v2 + 128) = 7;
  *(v2 + 136) = 2;
  *(v2 + 144) = "dialog7";
  *(v2 + 152) = 7;
  *(v2 + 160) = 2;
  sub_268CD0F7C();
  v6 = sub_268F9B5C4();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_16:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_16;
    case 2:
      v5 = 2;
      goto LABEL_16;
    case 3:
      v5 = 3;
      goto LABEL_16;
    case 4:
      v5 = 4;
      goto LABEL_16;
    case 5:
      v5 = 5;
      goto LABEL_16;
    case 6:
      v5 = 6;
      goto LABEL_16;
  }

  return 7;
}

unint64_t sub_268F4C950()
{
  v2 = qword_2802DE570;
  if (!qword_2802DE570)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE570);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4CA9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268F4C4BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268F4CAD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268F4C748(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268F4CB08(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 64) = v5;
  *(v6 + 107) = a5 & 1;
  *(v6 + 106) = a4 & 1;
  *(v6 + 105) = a3 & 1;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  *(v6 + 16) = v6;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 40) = 0;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 104) = a3 & 1;
  *(v6 + 112) = a4 & 1;
  *(v6 + 120) = a5 & 1;
  *(v6 + 40) = v5;
  return MEMORY[0x2822009F8](sub_268F4CBC8, 0);
}

uint64_t sub_268F4CBC8()
{
  v24 = v0[6];
  v0[2] = v0;
  v21 = sub_268F9AEF4();
  v22 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v23 = v2;
  *v2 = sub_268F9AEF4();
  v23[1] = v3;

  if (v24)
  {
    v19 = *(v20 + 48);
    v23[5] = type metadata accessor for SettingsNumericSetting(0);
    v23[2] = v19;
  }

  else
  {
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
  }

  v18 = *(v20 + 56);
  v23[6] = sub_268F9AEF4();
  v23[7] = v4;

  if (v18)
  {
    v17 = *(v20 + 56);
    v23[11] = sub_268F9AA44();
    v23[8] = v17;
  }

  else
  {
    v23[8] = 0;
    v23[9] = 0;
    v23[10] = 0;
    v23[11] = 0;
  }

  v14 = *(v20 + 107);
  v12 = *(v20 + 106);
  v11 = *(v20 + 105);
  v23[12] = sub_268F9AEF4();
  v23[13] = v5;
  v13 = MEMORY[0x277D839B0];
  v23[17] = MEMORY[0x277D839B0];
  *(v23 + 112) = v11;
  v23[18] = sub_268F9AEF4();
  v23[19] = v6;
  v23[23] = v13;
  *(v23 + 160) = v12;
  v23[24] = sub_268F9AEF4();
  v23[25] = v7;
  v23[29] = v13;
  *(v23 + 208) = v14;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v15 = sub_268F9B4F4();
  *(v20 + 80) = v15;
  v16 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v8 = swift_task_alloc();
  *(v20 + 88) = v8;
  v9 = sub_268F4C950();
  *v8 = *(v20 + 16);
  v8[1] = sub_268F4C204;

  return v16(v21, v22, v15, &unk_287996D08, v9);
}

uint64_t sub_268F4CFF4(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268F4D050, 0);
}

uint64_t sub_268F4D050()
{
  v16 = v0[6];
  v0[2] = v0;
  v13 = sub_268F9AEF4();
  v14 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v15 = v2;
  *v2 = sub_268F9AEF4();
  v15[1] = v3;

  if (v16)
  {
    v11 = v12[6];
    v15[5] = type metadata accessor for SettingsNumericSetting(0);
    v15[2] = v11;
  }

  else
  {
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = 0;
    v15[5] = 0;
  }

  v10 = v12[7];
  v15[6] = sub_268F9AEF4();
  v15[7] = v4;

  if (v10)
  {
    v9 = v12[7];
    v15[11] = sub_268F9AA44();
    v15[8] = v9;
  }

  else
  {
    v15[8] = 0;
    v15[9] = 0;
    v15[10] = 0;
    v15[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v12[10] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v12[11] = v5;
  *v5 = v12[2];
  v5[1] = sub_268DF5A04;

  return v8(v13, v14, v7);
}

unint64_t sub_268F4D384()
{
  v2 = qword_2802DE578;
  if (!qword_2802DE578)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE578);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4D4D0(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[7] = a2;
  v3[6] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;
  return MEMORY[0x2822009F8](sub_268F4D52C, 0);
}

uint64_t sub_268F4D52C()
{
  v17 = v0[6];
  v0[2] = v0;
  v14 = sub_268F9AEF4();
  v15 = v1;
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v16 = v2;
  *v2 = sub_268F9AEF4();
  v16[1] = v3;

  if (v17)
  {
    v12 = v13[6];
    v16[5] = type metadata accessor for SettingsNumericSetting(0);
    v16[2] = v12;
  }

  else
  {
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = 0;
    v16[5] = 0;
  }

  v11 = v13[7];
  v16[6] = sub_268F9AEF4();
  v16[7] = v4;

  if (v11)
  {
    v10 = v13[7];
    v16[11] = sub_268F9AA44();
    v16[8] = v10;
  }

  else
  {
    v16[8] = 0;
    v16[9] = 0;
    v16[10] = 0;
    v16[11] = 0;
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v13[10] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v13[11] = v5;
  v6 = sub_268F4D384();
  *v5 = v13[2];
  v5[1] = sub_268DF5A04;

  return v9(v14, v15, v8, &unk_287996D98, v6);
}

uint64_t sub_268F4D82C()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268F4D868, 0);
}

uint64_t sub_268F4D868()
{
  v4 = MEMORY[0x277D55C70];
  v0[2] = v0;
  v9 = sub_268F9AEF4();
  v6 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v0[6] = v7;
  v8 = (v4 + *v4);
  v2 = swift_task_alloc();
  *(v5 + 56) = v2;
  *v2 = *(v5 + 16);
  v2[1] = sub_268D71B74;

  return v8(v9, v6, v7);
}

unint64_t sub_268F4DA08()
{
  v2 = qword_2802DE580;
  if (!qword_2802DE580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4DB54()
{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x2822009F8](sub_268F4DB90, 0);
}

uint64_t sub_268F4DB90()
{
  v5 = MEMORY[0x277D55C68];
  v0[2] = v0;
  v10 = sub_268F9AEF4();
  v7 = v1;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v0[6] = v8;
  v9 = (v5 + *v5);
  v2 = swift_task_alloc();
  *(v6 + 56) = v2;
  v3 = sub_268F4DA08();
  *v2 = *(v6 + 16);
  v2[1] = sub_268D71B74;

  return v9(v10, v7, v8, &unk_287996E28, v3);
}

uint64_t sub_268F4DCFC(uint64_t a1, char a2, char a3)
{
  *(v4 + 48) = v3;
  *(v4 + 90) = a3 & 1;
  *(v4 + 89) = a2 & 1;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 32) = 0;
  *(v4 + 24) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3 & 1;
  *(v4 + 32) = v3;
  return MEMORY[0x2822009F8](sub_268F4DD8C, 0);
}

uint64_t sub_268F4DD8C()
{
  v18 = v0[5];
  v0[2] = v0;
  v15 = sub_268F9AEF4();
  v16 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v17 = v2;
  *v2 = sub_268F9AEF4();
  v17[1] = v3;

  if (v18)
  {
    v13 = *(v14 + 40);
    v17[5] = type metadata accessor for SettingsBinarySetting(0);
    v17[2] = v13;
  }

  else
  {
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = 0;
    v17[5] = 0;
  }

  v10 = *(v14 + 90);
  v8 = *(v14 + 89);
  v17[6] = sub_268F9AEF4();
  v17[7] = v4;
  v9 = MEMORY[0x277D839B0];
  v17[11] = MEMORY[0x277D839B0];
  *(v17 + 64) = v8;
  v17[12] = sub_268F9AEF4();
  v17[13] = v5;
  v17[17] = v9;
  *(v17 + 112) = v10;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v11 = sub_268F9B4F4();
  *(v14 + 64) = v11;
  v12 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v6 = swift_task_alloc();
  *(v14 + 72) = v6;
  *v6 = *(v14 + 16);
  v6[1] = sub_268F4E060;

  return v12(v15, v16, v11);
}

uint64_t sub_268F4E060(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 16) = *v2;
  *(v6 + 80) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268F4E23C, 0);
  }

  else
  {

    v3 = *(*(v6 + 16) + 8);

    return v3(a1);
  }
}

uint64_t sub_268F4E23C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

unint64_t sub_268F4E344()
{
  v2 = qword_2802DE588;
  if (!qword_2802DE588)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE588);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4E490(uint64_t a1, char a2, char a3)
{
  *(v4 + 48) = v3;
  *(v4 + 90) = a3 & 1;
  *(v4 + 89) = a2 & 1;
  *(v4 + 40) = a1;
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 32) = 0;
  *(v4 + 24) = a1;
  *(v4 + 88) = a2 & 1;
  *(v4 + 96) = a3 & 1;
  *(v4 + 32) = v3;
  return MEMORY[0x2822009F8](sub_268F4E520, 0);
}

uint64_t sub_268F4E520()
{
  v19 = v0[5];
  v0[2] = v0;
  v16 = sub_268F9AEF4();
  v17 = v1;
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v18 = v2;
  *v2 = sub_268F9AEF4();
  v18[1] = v3;

  if (v19)
  {
    v14 = *(v15 + 40);
    v18[5] = type metadata accessor for SettingsBinarySetting(0);
    v18[2] = v14;
  }

  else
  {
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = 0;
  }

  v11 = *(v15 + 90);
  v9 = *(v15 + 89);
  v18[6] = sub_268F9AEF4();
  v18[7] = v4;
  v10 = MEMORY[0x277D839B0];
  v18[11] = MEMORY[0x277D839B0];
  *(v18 + 64) = v9;
  v18[12] = sub_268F9AEF4();
  v18[13] = v5;
  v18[17] = v10;
  *(v18 + 112) = v11;
  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v12 = sub_268F9B4F4();
  *(v15 + 64) = v12;
  v13 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v6 = swift_task_alloc();
  *(v15 + 72) = v6;
  v7 = sub_268F4E344();
  *v6 = *(v15 + 16);
  v6[1] = sub_268F4E060;

  return v13(v16, v17, v12, &unk_287996EB8, v7);
}

uint64_t sub_268F4E80C(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v2[7] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x2822009F8](sub_268F4E8F4, 0);
}

uint64_t sub_268F4E8F4()
{
  v15 = v0[7];
  v14 = v0[5];
  v0[2] = v0;
  v11 = sub_268F9AEF4();
  v12 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v13 = v2;
  *v2 = sub_268F9AEF4();
  v13[1] = v3;
  sub_268D2A1F0(v14, v15);
  v16 = sub_268F9A9C4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1) == 1)
  {
    sub_268D28588(v10[7]);
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = 0;
    v13[5] = 0;
  }

  else
  {
    v9 = v10[7];
    v13[5] = v16;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13 + 2);
    (*(v17 + 32))(boxed_opaque_existential_1, v9, v16);
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v7 = sub_268F9B4F4();
  v10[9] = v7;
  v8 = (MEMORY[0x277D55C70] + *MEMORY[0x277D55C70]);
  v5 = swift_task_alloc();
  v10[10] = v5;
  *v5 = v10[2];
  v5[1] = sub_268DF3218;

  return v8(v11, v12, v7);
}

unint64_t sub_268F4EBEC()
{
  v2 = qword_2802DE590;
  if (!qword_2802DE590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE590);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4ED38(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  v2[7] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x2822009F8](sub_268F4EE20, 0);
}

uint64_t sub_268F4EE20()
{
  v16 = v0[7];
  v15 = v0[5];
  v0[2] = v0;
  v12 = sub_268F9AEF4();
  v13 = v1;
  v0[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC0, qword_268F9D740);
  sub_268F9B734();
  v14 = v2;
  *v2 = sub_268F9AEF4();
  v14[1] = v3;
  sub_268D2A1F0(v15, v16);
  v17 = sub_268F9A9C4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1) == 1)
  {
    sub_268D28588(v11[7]);
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 0;
  }

  else
  {
    v10 = v11[7];
    v14[5] = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14 + 2);
    (*(v18 + 32))(boxed_opaque_existential_1, v10, v17);
  }

  sub_268CD0F7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DBFC8, &qword_268F9EA20);
  v8 = sub_268F9B4F4();
  v11[9] = v8;
  v9 = (MEMORY[0x277D55C68] + *MEMORY[0x277D55C68]);
  v5 = swift_task_alloc();
  v11[10] = v5;
  v6 = sub_268F4EBEC();
  *v5 = v11[2];
  v5[1] = sub_268DF3218;

  return v9(v12, v13, v8, &unk_287996F48, v6);
}

uint64_t type metadata accessor for GetSettingIntentCATsSimple(uint64_t a1)
{
  v2 = qword_280FE3908;
  if (!qword_280FE3908)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F4F158(uint64_t a1)
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_268F4F224(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v25 = sub_268F9A9D4();

  v29 = v25;
  v12 = MEMORY[0x277D82BD8](v19);
  (*(v20 + 8))(v22, v23, v12);
  sub_268CDC480(v24);

  return v25;
}

uint64_t sub_268F4F460(int a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v14 = sub_268F9AB24();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v8 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14, v11, v14, v3);
  v9 = &v7 - v8;
  v17 = v10 & 1;
  v16 = v5;
  v18 = v2;
  (*(v12 + 16))(v4);
  v15 = sub_268F9A9E4();

  v18 = v15;
  (*(v12 + 8))(v11, v14);

  return v15;
}

uint64_t sub_268F4F5D0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 17) >> 8) + 1;
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
      v5 = (*a1 | ((v6 - 1) << 8)) + 238;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 18;
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

_BYTE *sub_268F4F738(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEE)
  {
    v5 = ((a3 + 17) >> 8) + 1;
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

  if (a2 > 0xEE)
  {
    v4 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
      *result = a2 + 17;
    }
  }

  return result;
}

unint64_t sub_268F4F9D8()
{
  v2 = qword_2802DE598;
  if (!qword_2802DE598)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE598);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FA6C()
{
  v2 = qword_2802DE5A0;
  if (!qword_2802DE5A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FB00()
{
  v2 = qword_2802DE5A8;
  if (!qword_2802DE5A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FB94()
{
  v2 = qword_2802DE5B0;
  if (!qword_2802DE5B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FC28()
{
  v2 = qword_2802DE5B8;
  if (!qword_2802DE5B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FCBC()
{
  v2 = qword_2802DE5C0;
  if (!qword_2802DE5C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FD50()
{
  v2 = qword_2802DE5C8;
  if (!qword_2802DE5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_268F4FDE4()
{
  v2 = qword_2802DE5D0;
  if (!qword_2802DE5D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2802DE5D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_268F4FE60()
{
  type metadata accessor for SetAXMotionCuesHandler();
  v0 = sub_268CDC590();
  result = sub_268CDC5C0(v0, 1);
  qword_2802F1770 = result;
  return result;
}

uint64_t *sub_268F4FEC8()
{
  if (qword_2802DB8B0 != -1)
  {
    swift_once();
  }

  return &qword_2802F1770;
}

uint64_t sub_268F4FF28()
{
  v1 = *sub_268F4FEC8();

  return v1;
}

double sub_268F4FF58(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_268F9AC14(v8, &dword_268CBE000, v9, "SetAXMotionCuesHandler handling intent", 38, 2);

  MEMORY[0x277D82BD8](v9);
  v5 = sub_268DBD904();
  v10 = *v5;
  v14 = v5[1];
  v15 = *(v5 + 16);
  v6 = sub_268DC7AE8();
  v16 = *v6;
  MEMORY[0x277D82BE0](*v6);
  v17 = *(v3 + 24);

  MEMORY[0x277D82BE0](a1);

  v19 = v3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  sub_268DB944C(v10, v14, v15, v16, v17 & 1, sub_268F5029C, v18, MEMORY[0x277D84F78] + 8, v3);

  MEMORY[0x277D82BD8](a1);

  *&result = MEMORY[0x277D82BD8](v16).n128_u64[0];
  return result;
}

uint64_t sub_268F50170(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{

  v6 = sub_268D3EDF4();

  v4 = sub_268DBD904();
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v4 + 16);
  v12 = *(a1 + 24);

  sub_268DAAB84(v6 & 1, a2, v9, v10, v11, v12 & 1, a3, a4, sub_268F50364, a1, 0, 1, 0, 0);
  return sub_268CD9A28(sub_268F50364, a1);
}

uint64_t sub_268F502D0(char a1)
{

  sub_268D3EE68(a1 & 1);
}

uint64_t sub_268F5038C(uint64_t a1)
{
  v12 = a1;
  v15 = 0;
  v14 = 0;
  v11 = sub_268F9A9C4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v7 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v11, v12, v11, v2);
  v8 = &v6 - v7;
  v15 = v4;
  v14 = v1;
  (*(v9 + 16))(v3);
  (*(v9 + 32))(v1 + OBJC_IVAR____TtCC19SiriSettingsIntents15SettingsSetting7Builder_identifier, v8, v11);
  (*(v9 + 8))(v12, v11);
  return v13;
}

uint64_t sub_268F504C0()
{
  v3 = OBJC_IVAR____TtCC19SiriSettingsIntents15SettingsSetting7Builder_identifier;
  v1 = sub_268F9A9C4();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_268F50534@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents15SettingsSetting7Builder_identifier;
  swift_beginAccess();
  v2 = sub_268F9A9C4();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_268F505C0(uint64_t a1)
{
  v12 = a1;
  v13 = sub_268F9A9C4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtCC19SiriSettingsIntents15SettingsSetting7Builder_identifier;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_268F50764(uint64_t a1)
{
  v14 = a1;
  v18 = 0;
  v17 = 0;
  v13 = sub_268F9A9C4();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14, v2, v3, v4);
  v12 = &v7 - v7;
  v18 = v5;
  v17 = v1;
  *(v1 + 16) = 0;
  v8 = v5 + OBJC_IVAR____TtCC19SiriSettingsIntents15SettingsSetting7Builder_identifier;
  v9 = &v16;
  swift_beginAccess();
  (*(v10 + 16))(v12, v8, v13);
  swift_endAccess();
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v12, v13);

  return v15;
}

void sub_268F508B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v12[2] = 0;
  v12[3] = a1;
  v12[4] = a2;

  v12[0] = sub_268F9AEF4();
  v12[1] = v3;
  v11 = MEMORY[0x26D62DB50](v12[0], v3, a1, a2);
  sub_268CD9D30(v12);

  if (v11)
  {
    v5 = v8 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier;
    v6 = sub_268F9A9C4();
    a3[3] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v5);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
  }
}

uint64_t SettingsSetting.init(from:)(void *a1)
{
  v25 = a1;
  v37 = 0;
  v36 = 0;
  v20 = sub_268F9A9C4();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v2, v3, v4);
  v24 = v12 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE5D8, &qword_268FAC0E0);
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v5, v6, v7);
  v30 = v12 - v29;
  v37 = v8;
  v36 = v1;
  *(v1 + 16) = 0;
  v32 = v8[3];
  v33 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v32);
  sub_268F50D1C();
  v9 = v31;
  sub_268F9B834();
  v34 = v9;
  v35 = v9;
  if (v9)
  {
    v14 = v35;
    v15 = v19;
  }

  else
  {
    sub_268DD91D4();
    v10 = v34;
    sub_268F9B654();
    v17 = v10;
    v18 = v10;
    if (!v10)
    {
      (*(v21 + 32))(v19 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v24, v20);
      (*(v27 + 8))(v30, v26);
      __swift_destroy_boxed_opaque_existential_0(v25);
      return v19;
    }

    v13 = v18;
    (*(v27 + 8))(v30, v26);
    v14 = v13;
    v15 = v19;
  }

  v12[1] = v15;
  v12[2] = v14;
  sub_268D35038((v15 + 16));
  type metadata accessor for SettingsSetting(0);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v16;
}

unint64_t sub_268F50D1C()
{
  v2 = qword_280FE5E70;
  if (!qword_280FE5E70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280FE5E70);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SettingsSetting(uint64_t a1)
{
  v2 = qword_280FE5D70;
  if (!qword_280FE5D70)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_268F50E0C(uint64_t a1)
{
  v13 = a1;
  v30 = 0;
  v29 = 0;
  v24 = sub_268F9A9C4();
  v20 = *(v24 - 8);
  v21 = v24 - 8;
  v12 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24, v2, v3, v4);
  v26 = v11 - v12;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DE5E0, &qword_268FAC0E8);
  v14 = *(v23 - 8);
  v15 = v23 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v5, v6, v7);
  v19 = v11 - v16;
  v30 = v8;
  v29 = v1;
  v17 = v8[3];
  v18 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v17);
  sub_268F50D1C();
  sub_268F9B844();
  (*(v20 + 16))(v26, v22 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v24);
  sub_268DD95FC();
  v9 = v25;
  sub_268F9B6E4();
  v27 = v9;
  v28 = v9;
  if (v9)
  {
    v11[1] = v28;
  }

  (*(v20 + 8))(v26, v24);
  return (*(v14 + 8))(v19, v23);
}