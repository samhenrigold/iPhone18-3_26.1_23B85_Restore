uint64_t sub_21D059604()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_21D05AC6C;
  }

  else
  {
    v2 = sub_21D059718;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D059718()
{
  v233 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[41];
    v5 = v0[20];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[3];
    sub_21D04D27C(v3, &qword_27CE54250, &unk_21D095CB0);
    v9 = *(v4 + 36);
    sub_21D05B270(v8 + v9, v5, &qword_27CE54240, &qword_21D095C90);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_21D04D27C(v0[20], &qword_27CE54240, &qword_21D095C90);
    }

    else
    {
      v44 = v0[5];
      v43 = v0[6];
      v45 = v0[4];
      (*(v44 + 32))(v43, v0[20], v45);
      sub_21D094270();
      sub_21D094280();
      (*(v44 + 8))(v43, v45);
      sub_21D04D27C(v8 + v9, &qword_27CE54240, &qword_21D095C90);
      (*(v44 + 56))(v8 + v9, 1, 1, v45);
    }

    v46 = v0[40];
    v47 = v0[34];
    v48 = v0[35];
    logMetric(logger:name:startInstant:)(v0[3], 0xD000000000000019, 0x800000021D096EC0);
    (*(v48 + 8))(v46, v47);
    v49 = 1;
    goto LABEL_49;
  }

  v11 = v0[32];
  v10 = v0[33];
  v12 = *(v2 + 32);
  v12(v10, v3, v1);
  (*(v2 + 16))(v11, v10, v1);
  v13 = (*(v2 + 88))(v11, v1);
  if (v13 == *MEMORY[0x277D41518])
  {
    v230 = v12;
    v14 = v0[42];
    v15 = v0[39];
    v16 = v0[40];
    v17 = v0[34];
    v18 = v0[32];
    v19 = v0[28];
    v20 = v0[22];
    v21 = v0[23];
    v22 = v0[3];
    (*(v0[31] + 96))(v18, v0[30]);
    v23 = *v18;
    v24 = v18[1];
    v219 = v23;
    v204 = *(v21 + 16);
    v204(v19, v22, v20);
    v14(v15, v16, v17);

    v25 = sub_21D094210();
    v26 = sub_21D094560();
    v225 = v24;

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[39];
    v29 = v0[34];
    v30 = v0[35];
    v31 = v0[28];
    v32 = v0[22];
    v33 = v0[23];
    if (v27)
    {
      v34 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v232 = v196;
      *v34 = 136315395;
      sub_21D05B698(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v179 = v26;
      v35 = sub_21D094790();
      v188 = v31;
      v37 = v36;
      v38 = *(v30 + 8);
      v12 = (v30 + 8);
      v38(v28, v29);
      v39 = v35;
      v40 = v38;
      v41 = sub_21D05550C(v39, v37, &v232);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2081;
      v42 = sub_21D05550C(v219, v225, &v232);

      *(v34 + 14) = v42;
      _os_log_impl(&dword_21D044000, v25, v179, "%s received token %{private}s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v196, -1, -1);
      MEMORY[0x223D3CDF0](v34, -1, -1);

      (*(v33 + 8))(v188, v32);
    }

    else
    {

      v85 = *(v30 + 8);
      v12 = (v30 + 8);
      v40 = v85;
      v85(v28, v29);
      (*(v33 + 8))(v31, v32);
    }

    v86 = v0[41];
    v87 = v0[3];
    v88 = *(v86 + 52);
    v89 = *(v87 + v88);
    if (!v89)
    {
      v228 = v40;
      v119 = v0[27];
      v120 = v0[22];
      sub_21D0942B0();
      v204(v119, v87, v120);
      v193 = *(v87 + *(v86 + 48) + 4);
      v121 = qword_281221758;

      if (v121 != -1)
      {
        swift_once();
      }

      v215 = v0[41];
      v177 = v0[34];
      v182 = v0[40];
      v122 = v0[21];
      v123 = v0[5];
      v186 = v0[4];
      v201 = v0[3];

      LOBYTE(v232) = v193;
      sub_21D094260();
      v228(v182, v177);
      (*(v123 + 56))(v122, 0, 1, v186);
      sub_21D05B198(v122, v201 + *(v215 + 36));
      v90 = 1;
      goto LABEL_16;
    }

    v55 = (v40)(v0[40], v0[34]);
    v90 = v89 + 1;
    if (!__OFADD__(v89, 1))
    {
LABEL_16:
      *(v87 + v88) = v90;
LABEL_33:
      v230(v0[2], v0[33], v0[30]);
LABEL_48:
      v49 = 0;
LABEL_49:
      (*(v0[31] + 56))(v0[2], v49, 1, v0[30]);

      v169 = v0[1];

      return v169();
    }

    __break(1u);
  }

  else
  {
    if (v13 != *MEMORY[0x277D41510])
    {
      if (v13 == *MEMORY[0x277D41500])
      {
        v230 = v12;
        v213 = v0[42];
        v191 = v0[36];
        v199 = v0[34];
        v207 = v0[40];
        v91 = v0[32];
        v92 = v0[23];
        v93 = v0[24];
        v94 = v0[22];
        v96 = v0[9];
        v95 = v0[10];
        v97 = v0[3];
        (*(v0[31] + 96))(v91, v0[30]);
        v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54258, &qword_21D0964C0);
        sub_21D05B208(v91 + *(v227 + 48), v95, &qword_27CE54248, &unk_21D095CA0);
        (*(v92 + 16))(v93, v97, v94);
        v213(v191, v207, v199);
        sub_21D05B270(v95, v96, &qword_27CE54248, &unk_21D095CA0);
        v98 = sub_21D094210();
        v99 = sub_21D094560();
        v100 = os_log_type_enabled(v98, v99);
        v101 = v0[40];
        v103 = v0[35];
        v102 = v0[36];
        v104 = v0[34];
        v105 = v0[23];
        v208 = v0[22];
        v214 = v0[24];
        v106 = v0[9];
        v222 = v0[10];
        if (v100)
        {
          loga = v0[8];
          v181 = v99;
          v107 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v232 = v185;
          *v107 = 136315394;
          sub_21D05B698(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v108 = sub_21D094790();
          v109 = v104;
          v192 = v104;
          v200 = v101;
          v110 = v108;
          v112 = v111;
          v113 = *(v103 + 8);
          v113(v102, v109);
          v114 = sub_21D05550C(v110, v112, &v232);

          *(v107 + 4) = v114;
          *(v107 + 12) = 2082;
          sub_21D05B270(v106, loga, &qword_27CE54248, &unk_21D095CA0);
          v115 = sub_21D094430();
          v117 = v116;
          sub_21D04D27C(v106, &qword_27CE54248, &unk_21D095CA0);
          v118 = sub_21D05550C(v115, v117, &v232);

          *(v107 + 14) = v118;
          _os_log_impl(&dword_21D044000, v98, v181, "%s received environment. Server environment %{public}s", v107, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v185, -1, -1);
          MEMORY[0x223D3CDF0](v107, -1, -1);

          (*(v105 + 8))(v214, v208);
          sub_21D04D27C(v222, &qword_27CE54248, &unk_21D095CA0);
          v113(v200, v192);
        }

        else
        {

          sub_21D04D27C(v106, &qword_27CE54248, &unk_21D095CA0);
          v150 = *(v103 + 8);
          v150(v102, v104);
          (*(v105 + 8))(v214, v208);
          sub_21D04D27C(v222, &qword_27CE54248, &unk_21D095CA0);
          v150(v101, v104);
        }

        v151 = v0[32];
        sub_21D04D27C(v151 + *(v227 + 64), &qword_27CE54260, &unk_21D095CC0);
        v152 = sub_21D0934B0();
        (*(*(v152 - 8) + 8))(v151, v152);
        goto LABEL_33;
      }

      v147 = v0[31];
      v146 = v0[32];
      v148 = v0[30];
      (*(v0[35] + 8))(v0[40], v0[34]);
      (*(v147 + 8))(v146, v148);
LABEL_47:
      v12(v0[2], v0[33], v0[30]);
      goto LABEL_48;
    }

    v50 = v0[32];
    v52 = v0[18];
    v51 = v0[19];
    v53 = v0[16];
    v54 = v0[17];
    (*(v0[31] + 96))(v50, v0[30]);
    (*(v54 + 32))(v51, v50, v53);
    (*(v54 + 16))(v52, v51, v53);
    v55 = (*(v54 + 88))(v52, v53);
    if (v55 == *MEMORY[0x277D414D8])
    {
      v231 = v12;
      v189 = v0[38];
      v197 = v0[34];
      v205 = v0[40];
      v56 = v0[26];
      v58 = v0[22];
      v57 = v0[23];
      v59 = v0[18];
      v60 = v0[15];
      v61 = v0[14];
      v211 = v0[13];
      v220 = v0[42];
      v62 = v0[3];
      (*(v0[17] + 96))(v59, v0[16]);
      sub_21D05B208(v59, v60, &qword_27CE54138, &qword_21D0959E0);
      (*(v57 + 16))(v56, v62, v58);
      v220(v189, v205, v197);
      sub_21D05B270(v60, v61, &qword_27CE54138, &qword_21D0959E0);
      sub_21D05B270(v60, v211, &qword_27CE54138, &qword_21D0959E0);
      v63 = sub_21D094210();
      v64 = sub_21D094560();
      v65 = os_log_type_enabled(v63, v64);
      v184 = v0[40];
      v66 = v0[38];
      v68 = v0[34];
      v67 = v0[35];
      v206 = v0[26];
      v212 = v0[23];
      v198 = v0[22];
      v226 = v0[19];
      v69 = v0[17];
      v221 = v0[16];
      v70 = v0[14];
      v190 = v0[15];
      if (v65)
      {
        v180 = v0[17];
        v71 = v0[11];
        v72 = v0[12];
        v171 = v0[13];
        log = v63;
        v73 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v232 = v172;
        *v73 = 136315650;
        sub_21D05B698(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v74 = sub_21D094790();
        v75 = v68;
        v176 = v68;
        v77 = v76;
        v78 = *(v67 + 8);
        v78(v66, v75);
        v79 = sub_21D05550C(v74, v77, &v232);

        *(v73 + 4) = v79;
        *(v73 + 12) = 2048;
        sub_21D05B270(v70, v72, &qword_27CE54138, &qword_21D0959E0);

        v80 = *(v72 + 24);
        v81 = *(v71 + 80);
        v82 = sub_21D093230();
        v170 = v64;
        v83 = *(*(v82 - 8) + 8);
        v83(v72 + v81, v82);
        sub_21D04D27C(v70, &qword_27CE54138, &qword_21D0959E0);
        *(v73 + 14) = v80;
        *(v73 + 22) = 1024;
        sub_21D05B270(v171, v72, &qword_27CE54138, &qword_21D0959E0);

        LODWORD(v81) = *(v72 + 16);
        v83(v72 + *(v71 + 80), v82);
        sub_21D04D27C(v171, &qword_27CE54138, &qword_21D0959E0);
        *(v73 + 24) = v81;
        _os_log_impl(&dword_21D044000, log, v170, "%s received media header with total size: %lld and total chucks: %d.", v73, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_0(v172);
        MEMORY[0x223D3CDF0](v172, -1, -1);
        MEMORY[0x223D3CDF0](v73, -1, -1);

        (*(v212 + 8))(v206, v198);
        sub_21D04D27C(v190, &qword_27CE54138, &qword_21D0959E0);
        (*(v180 + 8))(v226, v221);
        result = (v78)(v184, v176);
      }

      else
      {
        sub_21D04D27C(v0[13], &qword_27CE54138, &qword_21D0959E0);
        sub_21D04D27C(v70, &qword_27CE54138, &qword_21D0959E0);

        v149 = *(v67 + 8);
        v149(v66, v68);
        (*(v212 + 8))(v206, v198);
        sub_21D04D27C(v190, &qword_27CE54138, &qword_21D0959E0);
        (*(v69 + 8))(v226, v221);
        result = (v149)(v184, v68);
      }

      goto LABEL_45;
    }
  }

  if (v55 == *MEMORY[0x277D414D0])
  {
    v231 = v12;
    v216 = v0[40];
    v223 = v0[42];
    v124 = v0[37];
    v125 = v0[34];
    v126 = v0[25];
    v128 = v0[22];
    v127 = v0[23];
    v129 = v0[18];
    v130 = v0[3];
    (*(v0[17] + 96))(v129, v0[16]);
    v131 = *(v129 + 16);
    v132 = *(v129 + 24);
    (*(v127 + 16))(v126, v130, v128);
    v223(v124, v216, v125);

    sub_21D055C20(v131, v132);

    v229 = v131;
    sub_21D055C20(v131, v132);
    v133 = sub_21D094210();
    v134 = sub_21D094560();
    if (os_log_type_enabled(v133, v134))
    {
      v217 = v134;
      v135 = v0[37];
      v137 = v0[34];
      v136 = v0[35];
      v138 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v232 = v202;
      *v138 = 136315394;
      sub_21D05B698(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v139 = sub_21D094790();
      v141 = v140;
      v209 = *(v136 + 8);
      v209(v135, v137);
      v142 = sub_21D05550C(v139, v141, &v232);

      *(v138 + 4) = v142;
      *(v138 + 12) = 2048;
      v143 = v132 >> 62;
      v144 = v133;
      if ((v132 >> 62) > 1)
      {
        if (v143 == 2)
        {
          v159 = *(v131 + 16);
          v160 = *(v229 + 24);

          result = sub_21D04FE3C(v229, v132);
          v145 = v160 - v159;
          if (__OFSUB__(v160, v159))
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }
        }

        else
        {

          sub_21D04FE3C(v131, v132);
          v145 = 0;
        }
      }

      else if (v143)
      {

        result = sub_21D04FE3C(v131, v132);
        LODWORD(v145) = HIDWORD(v131) - v131;
        if (__OFSUB__(HIDWORD(v131), v131))
        {
LABEL_54:
          __break(1u);
          return result;
        }

        v145 = v145;
      }

      else
      {

        sub_21D04FE3C(v131, v132);
        v145 = BYTE6(v132);
      }

      v187 = v0[34];
      v195 = v0[40];
      v161 = v0[22];
      v162 = v0[23];
      v183 = v0[19];
      v163 = v0[17];
      v175 = v0[25];
      v178 = v0[16];
      *(v138 + 14) = v145;

      sub_21D04FE3C(v229, v132);
      _os_log_impl(&dword_21D044000, v144, v217, "%s received media chunk with data size: %ld.", v138, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v202);
      MEMORY[0x223D3CDF0](v202, -1, -1);
      MEMORY[0x223D3CDF0](v138, -1, -1);

      sub_21D04FE3C(v229, v132);
      (*(v162 + 8))(v175, v161);
      (*(v163 + 8))(v183, v178);
      result = (v209)(v195, v187);
    }

    else
    {
      v153 = v0[37];
      v155 = v0[34];
      v154 = v0[35];
      v156 = v0[23];
      v194 = v0[22];
      v203 = v0[25];
      v218 = v0[19];
      v224 = v0[40];
      v157 = v0[17];
      v210 = v0[16];

      sub_21D04FE3C(v131, v132);

      sub_21D04FE3C(v131, v132);

      sub_21D04FE3C(v131, v132);
      v158 = *(v154 + 8);
      v158(v153, v155);
      (*(v156 + 8))(v203, v194);
      (*(v157 + 8))(v218, v210);
      result = (v158)(v224, v155);
    }

LABEL_45:
    v12 = v231;
    v164 = v0[3];
    v165 = *(v0[41] + 52);
    v166 = *(v164 + v165);
    v167 = __OFADD__(v166, 1);
    v168 = v166 + 1;
    if (!v167)
    {
      *(v164 + v165) = v168;
      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_53;
  }

  return sub_21D0947C0();
}

uint64_t sub_21D05AC6C()
{
  (*(v0[35] + 8))(v0[40], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21D05AE24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D051DB8;

  return sub_21D059134(a1);
}

uint64_t sub_21D05AEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_21D05AF5C;

  return sub_21D059134(a1);
}

uint64_t sub_21D05AF5C()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
    {
      swift_getObjectType();
      v3 = sub_21D0944B0();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](sub_21D05B0CC, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_21D05B0CC()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_21D05B16C@<X0>(uint64_t a1@<X8>)
{
  sub_21D058B08(a1);

  return sub_21D05B6E0(v1);
}

uint64_t sub_21D05B198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54240, &qword_21D095C90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D05B208(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_21D05B270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_21D05B300(uint64_t a1)
{
  sub_21D094230();
  if (v1 <= 0x3F)
  {
    sub_21D092FC0();
    if (v2 <= 0x3F)
    {
      sub_21D093470();
      if (v3 <= 0x3F)
      {
        sub_21D094730();
        if (v4 <= 0x3F)
        {
          sub_21D05B3EC();
          if (v5 <= 0x3F)
          {
            sub_21D05B450();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_21D05B3EC()
{
  result = qword_2812217A0;
  if (!qword_2812217A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812217A0);
  }

  return result;
}

void sub_21D05B450()
{
  if (!qword_281221460)
  {
    v0 = sub_21D094690();
    if (!v1)
    {
      atomic_store(v0, &qword_281221460);
    }
  }
}

void sub_21D05B4C8(uint64_t a1)
{
  sub_21D094230();
  if (v1 <= 0x3F)
  {
    sub_21D092FC0();
    if (v2 <= 0x3F)
    {
      sub_21D094730();
      if (v3 <= 0x3F)
      {
        sub_21D0942C0();
        if (v4 <= 0x3F)
        {
          sub_21D05B5EC(319);
          if (v5 <= 0x3F)
          {
            sub_21D093440();
            if (v6 <= 0x3F)
            {
              sub_21D05B3EC();
              if (v7 <= 0x3F)
              {
                sub_21D05B450();
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

void sub_21D05B5EC(uint64_t a1)
{
  if (!qword_281221480)
  {
    sub_21D094290();
    v1 = sub_21D094690();
    if (!v2)
    {
      atomic_store(v1, &qword_281221480);
    }
  }
}

uint64_t sub_21D05B698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21D05B6E0(uint64_t a1)
{
  v2 = _s18InstrumentedTokensVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D05B73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54428, &qword_21D096438);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_21D0931D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_21D04D27C(a1, &qword_27CE54428, &qword_21D096438);
    sub_21D08F420(a2, a3, v9);

    return sub_21D04D27C(v9, &qword_27CE54428, &qword_21D096438);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_21D056F88(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_21D05B914(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void logMetric(logger:name:startInstant:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_21D094730();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);
  if (sub_21D0945C0())
  {
    sub_21D094710();
    sub_21D094720();
    (*(v6 + 8))(v8, v5);

    v9 = sub_21D094210();
    v10 = sub_21D094580();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_21D05550C(a2, a3, &v17);
      *(v11 + 12) = 2080;
      v13 = sub_21D094880();
      v15 = sub_21D05550C(v13, v14, &v17);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_21D044000, v9, v10, "performance metric: %s %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v12, -1, -1);
      MEMORY[0x223D3CDF0](v11, -1, -1);
    }
  }
}

uint64_t sub_21D05BBEC()
{
  v0 = sub_21D094230();
  __swift_allocate_value_buffer(v0, qword_2812217C8);
  __swift_project_value_buffer(v0, qword_2812217C8);

  return sub_21D094220();
}

uint64_t PrivateMLClientInferenceProviderError.code.getter()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    if (*(v0 + 8))
    {
      return 6;
    }

    else
    {
      return 1;
    }
  }

  else if (v1 == 2)
  {
    return 10;
  }

  else if (v1 == 3)
  {
    return 15;
  }

  else
  {
    return qword_21D096598[*v0];
  }
}

uint64_t sub_21D05BCC8(uint64_t a1)
{
  v2 = sub_21D090AF0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21D05BD04(uint64_t a1)
{
  v2 = sub_21D090AF0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PrivateMLClientInferenceProviderError.descriptionWithoutUnderlying.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  swift_beginAccess();
  v4 = qword_27CE54280;
  v3 = off_27CE54288;
  if (v2 > 1)
  {
    if (v2 == 2)
    {

      sub_21D0946E0();

      v11 = v4;
      v5 = ": unknown image format";
      v6 = 0xD00000000000001ALL;
      goto LABEL_8;
    }

    if (v2 == 3)
    {

      sub_21D0946E0();

      v11 = v4;
      v5 = "eMLClientInferenceProvider";
      v6 = 0xD00000000000001CLL;
LABEL_8:
      v7 = v5 | 0x8000000000000000;
      goto LABEL_9;
    }

    if (v1 <= 4)
    {
      if (v1 <= 1)
      {
        if (!v1)
        {
          v11 = qword_27CE54280;

          v6 = 0x746163206F6E203ALL;
          v7 = 0xEC000000676F6C61;
          goto LABEL_9;
        }

        sub_21D0946E0();

        v11 = v4;
        v5 = ": untrusted bundle";
        v6 = 0xD000000000000019;
        goto LABEL_8;
      }

      if (v1 == 2)
      {

        sub_21D0946E0();

        v11 = v4;
        v5 = ": invalid session UUID";
        v6 = 0xD000000000000012;
        goto LABEL_8;
      }

      if (v1 == 3)
      {

        sub_21D0946E0();

        v11 = v4;
        v9 = ": invalid session UUID";
        goto LABEL_33;
      }

      sub_21D0946E0();

      v11 = v4;
      v10 = ": unknown response type";
    }

    else
    {
      if (v1 > 7)
      {
        if (v1 == 8)
        {

          sub_21D0946E0();

          v11 = v4;
          v5 = "tadata not handled";
          v6 = 0xD000000000000023;
        }

        else
        {

          sub_21D0946E0();

          v11 = v4;
          if (v1 == 9)
          {
            v5 = ": no request data";
            v6 = 0xD000000000000022;
          }

          else
          {
            v5 = ": denied due to availability";
            v6 = 0xD000000000000011;
          }
        }

        goto LABEL_8;
      }

      if (v1 != 5)
      {
        if (v1 == 6)
        {

          sub_21D0946E0();

          v11 = v4;
          v5 = ": denied due to rate limit";
          v6 = 0xD000000000000015;
          goto LABEL_8;
        }

        sub_21D0946E0();

        v11 = v4;
        v9 = ": unknown image format";
LABEL_33:
        v7 = (v9 - 32) | 0x8000000000000000;
        v6 = 0xD000000000000016;
        goto LABEL_9;
      }

      sub_21D0946E0();

      v11 = v4;
      v10 = ": request not supported";
    }

    v5 = (v10 - 32);
    v6 = 0xD000000000000017;
    goto LABEL_8;
  }

  if (v2)
  {
    v11 = 0;

    sub_21D0946E0();
    MEMORY[0x223D3C530](v4, v3);

    MEMORY[0x223D3C530](0xD00000000000001CLL, 0x800000021D097080);
    sub_21D094740();
    return v11;
  }

  sub_21D0946E0();

  v11 = v4;
  v6 = 0x776F6E6B6E55203ALL;
  v7 = 0xEF726F727265206ELL;
LABEL_9:
  MEMORY[0x223D3C530](v6, v7);
  return v11;
}

uint64_t PrivateMLClientInferenceProviderError.underlyingErrors.getter()
{
  v1 = *(v0 + 8);
  if (v1 < 4 && *v0)
  {
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t PrivateMLClientInferenceProviderError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (v3 <= 1)
  {
    if (*(v1 + 8))
    {
      v4 = MEMORY[0x277CEDEC8];
    }

    else
    {
      v4 = MEMORY[0x277CEDED0];
    }
  }

  else if (v3 == 2 || v3 == 3)
  {
    v4 = MEMORY[0x277CEDED8];
  }

  else
  {
    v4 = qword_278329150[*v1];
  }

  v5 = *v4;
  v6 = sub_21D094080();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t sub_21D05C31C()
{
  swift_beginAccess();
  v0 = qword_27CE54280;

  return v0;
}

uint64_t PrivateMLClientInferenceProviderError.domain.getter()
{
  swift_beginAccess();
  v0 = qword_27CE54280;

  return v0;
}

uint64_t PrivateMLClientInferenceProviderError.description.getter()
{
  v1 = *(v0 + 8);
  v18 = *v0;
  v19 = v1;
  v2 = PrivateMLClientInferenceProviderError.descriptionWithoutUnderlying.getter();
  v4 = v3;
  v11 = v18;
  LOBYTE(v12) = v1;
  v5 = *(PrivateMLClientInferenceProviderError.underlyingErrors.getter() + 16);

  if (!v5)
  {
    v9 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_5;
  }

  v16 = 14906;
  v17 = 0xE200000000000000;
  v14 = v18;
  v15 = v1;
  v6 = PrivateMLClientInferenceProviderError.underlyingErrors.getter();
  if (*(v6 + 16))
  {
    sub_21D0590D0(v6 + 32, &v11);

    __swift_project_boxed_opaque_existential_1(&v11, v13);
    v7 = sub_21D094790();
    MEMORY[0x223D3C530](v7);

    __swift_destroy_boxed_opaque_existential_0(&v11);
    v9 = v16;
    v8 = v17;
LABEL_5:
    v11 = v2;
    v12 = v4;

    MEMORY[0x223D3C530](v9, v8);

    return v11;
  }

  __break(1u);
  return result;
}

void sub_21D05C4F8()
{
  sub_21D090A98();

  JUMPOUT(0x223D3C1B0);
}

uint64_t static PrivateMLClientInferenceProviderError.errorDomain.getter()
{
  swift_beginAccess();
  v0 = qword_27CE54280;

  return v0;
}

void sub_21D05C588()
{
  sub_21D090A98();

  JUMPOUT(0x223D3C1E0);
}

PrivateMLClientInferenceProvider::ErrorCodeDifferentiator_optional __swiftcall ErrorCodeDifferentiator.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 39999)
  {
    switch(rawValue)
    {
      case 10000:
        *v1 = 0;
        return rawValue;
      case 20000:
        *v1 = 1;
        return rawValue;
      case 30000:
        *v1 = 2;
        return rawValue;
    }

LABEL_14:
    *v1 = 7;
    return rawValue;
  }

  if (rawValue > 59999)
  {
    if (rawValue == 60000)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 70000)
    {
      *v1 = 6;
      return rawValue;
    }

    goto LABEL_14;
  }

  if (rawValue == 40000)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 50000)
  {
    goto LABEL_14;
  }

  *v1 = 4;
  return rawValue;
}

uint64_t sub_21D05C6A0()
{
  v1 = *v0;
  sub_21D094850();
  MEMORY[0x223D3C930](10000 * v1 + 10000);
  return sub_21D094870();
}

uint64_t sub_21D05C720(uint64_t a1)
{
  v2 = *v1;
  sub_21D094850();
  MEMORY[0x223D3C930](10000 * v2 + 10000);
  return sub_21D094870();
}

uint64_t static PrivateMLClientInferenceProviderError.errorDomain.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27CE54280 = a1;
  off_27CE54288 = a2;
}

uint64_t sub_21D05C838()
{
  sub_21D094250();
  swift_allocObject();
  result = sub_21D094240();
  qword_2812217C0 = result;
  return result;
}

uint64_t NewInferenceProvider.__allocating_init()()
{
  v0 = sub_21D094230();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  if (qword_281221778 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_2812217C8);
  v7 = *(v1 + 16);
  v7(v4 + v5, v6, v0);
  sub_21D094700();
  v7(v3, v4 + v5, v0);
  sub_21D094190();
  return v4;
}

uint64_t NewInferenceProvider.init()()
{
  v1 = sub_21D094230();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21D0941B0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  if (qword_281221778 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v1, qword_2812217C8);
  v11 = *(v2 + 16);
  v11(v0 + v9, v10, v1);
  sub_21D094700();
  v11(v4, v0 + v9, v1);
  sub_21D094190();
  (*(v6 + 32))(v0 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster, v8, v5);
  return v0;
}

uint64_t NewInferenceProvider.loadIn(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21D05CBF0, 0, 0);
}

uint64_t sub_21D05CBF0()
{
  v10 = v0;

  v1 = sub_21D094210();
  v2 = sub_21D094580();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D05550C(v4, v3, &v9);
    _os_log_impl(&dword_21D044000, v1, v2, "%s load in", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D3CDF0](v6, -1, -1);
    MEMORY[0x223D3CDF0](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t NewInferenceProvider.loadOut(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21D05CD60, 0, 0);
}

uint64_t sub_21D05CD60()
{
  v10 = v0;

  v1 = sub_21D094210();
  v2 = sub_21D094580();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_21D05550C(v4, v3, &v9);
    _os_log_impl(&dword_21D044000, v1, v2, "%s load out", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D3CDF0](v6, -1, -1);
    MEMORY[0x223D3CDF0](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t NewInferenceProvider.prewarmHint(_:)(uint64_t a1)
{
  v2[113] = v1;
  v2[112] = a1;
  v3 = sub_21D093FE0();
  v2[114] = v3;
  v2[115] = *(v3 - 8);
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v4 = sub_21D092FC0();
  v2[137] = v4;
  v2[138] = *(v4 - 8);
  v2[139] = swift_task_alloc();
  v2[140] = swift_task_alloc();
  v5 = sub_21D093E70();
  v2[141] = v5;
  v2[142] = *(v5 - 8);
  v2[143] = swift_task_alloc();
  v6 = sub_21D094180();
  v2[144] = v6;
  v2[145] = *(v6 - 8);
  v2[146] = swift_task_alloc();
  v2[147] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D05D18C, 0, 0);
}

uint64_t sub_21D05D18C()
{
  v324 = v0;
  sub_21D094170();
  v1 = sub_21D0941A0();
  v2 = sub_21D094660();
  if (sub_21D094680())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v1, v2, v4, "prewarmHint", "", v3, 2u);
    MEMORY[0x223D3CDF0](v3, -1, -1);
  }

  v5 = *(v0 + 1176);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 1160);
  v8 = *(v0 + 1152);

  (*(v7 + 16))(v6, v5, v8);
  sub_21D0941F0();
  swift_allocObject();
  *(v0 + 1184) = sub_21D0941E0();
  v9 = (*(v7 + 8))(v5, v8);
  *(v0 + 1312) = 0;
  v10 = MEMORY[0x223D3C0A0](v9);
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = sub_21D0937E0();
  if (!*(v11 + 16))
  {

    goto LABEL_10;
  }

  v14 = sub_21D055BA8(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_10:

    goto LABEL_15;
  }

  v17 = (*(v11 + 56) + 16 * v14);
  v19 = *v17;
  v18 = v17[1];

  if (v19 == 0x746E656E696D6D69 && v18 == 0xE800000000000000)
  {
  }

  else
  {
    v20 = sub_21D0947D0();

    if ((v20 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  *(v0 + 1312) = 1;
  v21 = sub_21D094210();
  v22 = sub_21D094560();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_21D044000, v21, v22, "Prewam Urgency Level: imminent", v23, 2u);
    MEMORY[0x223D3CDF0](v23, -1, -1);
  }

LABEL_15:
  v24 = *(v0 + 1144);
  v25 = *(v0 + 1136);
  v26 = *(v0 + 1128);
  v27 = *(v0 + 1120);
  v28 = sub_21D093D00();
  *(v0 + 1192) = v28;
  v312 = v28;
  v315 = *(v28 - 8);
  *(v0 + 1200) = v315;
  v29 = swift_task_alloc();
  *(v0 + 1208) = v29;
  sub_21D093CF0();
  sub_21D093FB0();
  sub_21D093E60();
  (*(v25 + 8))(v24, v26);
  LOBYTE(v323[0]) = 0;
  sub_21D093CE0();
  sub_21D092FB0();
  v30 = sub_21D092FA0();
  v32 = v31;
  *(v0 + 1216) = v30;
  *(v0 + 1224) = v31;
  v33 = sub_21D093F90();
  v34 = sub_21D0605B4(v27, v33, 0);
  v36 = v35;
  *(v0 + 1232) = v34;
  *(v0 + 1240) = v35;
  sub_21D093040();
  swift_allocObject();
  sub_21D093030();
  sub_21D093FC0();
  sub_21D093010();

  v303 = v34;
  v304 = v30;
  v306 = v32;
  v311 = v36;
  v305 = v29;
  if (!*(v0 + 80))
  {
    v75 = *(v0 + 968);
    v76 = *(v0 + 960);
    v77 = *(v0 + 952);
    v78 = *(v0 + 920);
    v79 = *(v0 + 912);
    v80 = *(v0 + 896);
    sub_21D04D27C(v0 + 56, &qword_27CE54290, &qword_21D095DF8);
    v81 = *(v78 + 16);
    v81(v75, v80, v79);
    v81(v76, v80, v79);
    v81(v77, v80, v79);

    v82 = sub_21D094210();
    v83 = sub_21D094570();

    v319 = v82;
    v84 = os_log_type_enabled(v82, v83);
    v300 = *(v0 + 1120);
    if (v84)
    {
      v85 = *(v0 + 1112);
      v86 = *(v0 + 1104);
      v87 = *(v0 + 1096);
      v88 = *(v0 + 968);
      v281 = *(v0 + 952);
      v89 = *(v0 + 920);
      v275 = *(v0 + 912);
      v277 = *(v0 + 960);
      v288 = v83;
      v90 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      v323[0] = v294;
      *v90 = 136316162;
      v91 = sub_21D05550C(v304, v306, v323);

      *(v90 + 4) = v91;
      *(v90 + 12) = 2080;
      MEMORY[0x223D3C050](v92);
      v93 = sub_21D092FA0();
      v95 = v94;
      v308 = *(v86 + 8);
      v308(v85, v87);
      v96 = *(v89 + 8);
      v96(v88, v275);
      v97 = sub_21D05550C(v93, v95, v323);

      *(v90 + 14) = v97;
      *(v90 + 22) = 2080;
      v98 = sub_21D093FC0();
      v100 = v99;
      v96(v277, v275);
      v101 = sub_21D05550C(v98, v100, v323);

      *(v90 + 24) = v101;
      *(v90 + 32) = 2080;
      v103 = MEMORY[0x223D3C070](v102);
      v105 = v104;
      v96(v281, v275);
      v106 = sub_21D05550C(v103, v105, v323);

      *(v90 + 34) = v106;
      *(v90 + 42) = 2080;
      v107 = sub_21D05550C(v303, v311, v323);

      *(v90 + 44) = v107;
      _os_log_impl(&dword_21D044000, v319, v288, "%s prewarm for unknown bundle. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s", v90, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v294, -1, -1);
      MEMORY[0x223D3CDF0](v90, -1, -1);

      v308(v300, v87);
    }

    else
    {
      v153 = *(v0 + 1104);
      v154 = *(v0 + 1096);
      v155 = *(v0 + 968);
      v156 = *(v0 + 960);
      v157 = *(v0 + 952);
      v158 = *(v0 + 920);
      v159 = *(v0 + 912);

      v160 = *(v158 + 8);
      v160(v157, v159);
      v160(v156, v159);
      v160(v155, v159);
      (*(v153 + 8))(v300, v154);
    }

    (*(v315 + 8))(v305, v312);
LABEL_49:

    sub_21D060360(*(v0 + 904), *(v0 + 1184));

    v214 = *(v0 + 8);

    return v214();
  }

  sub_21D046D78((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_21D093060();
  v38 = result;
  v39 = *(result + 16);
  if (!v39)
  {
LABEL_21:
    v42 = *(v0 + 992);
    v43 = *(v0 + 984);
    v44 = *(v0 + 976);
    v45 = *(v0 + 920);
    v46 = *(v0 + 912);
    v47 = *(v0 + 896);

    v48 = *(v45 + 16);
    v48(v42, v47, v46);
    v48(v43, v47, v46);
    v48(v44, v47, v46);

    v49 = sub_21D094210();
    v50 = sub_21D094570();

    v318 = v49;
    v51 = os_log_type_enabled(v49, v50);
    v299 = *(v0 + 1120);
    if (v51)
    {
      v52 = *(v0 + 1112);
      v53 = *(v0 + 1104);
      v54 = *(v0 + 1096);
      v55 = *(v0 + 992);
      v280 = *(v0 + 976);
      v56 = *(v0 + 920);
      v274 = *(v0 + 912);
      v276 = *(v0 + 984);
      v287 = v50;
      v57 = swift_slowAlloc();
      v293 = swift_slowAlloc();
      v323[0] = v293;
      *v57 = 136316162;
      v58 = sub_21D05550C(v304, v306, v323);

      *(v57 + 4) = v58;
      *(v57 + 12) = 2080;
      MEMORY[0x223D3C050](v59);
      v60 = sub_21D092FA0();
      v62 = v61;
      v307 = *(v53 + 8);
      v307(v52, v54);
      v63 = *(v56 + 8);
      v63(v55, v274);
      v64 = sub_21D05550C(v60, v62, v323);

      *(v57 + 14) = v64;
      *(v57 + 22) = 2080;
      v65 = sub_21D093FC0();
      v67 = v66;
      v63(v276, v274);
      v68 = sub_21D05550C(v65, v67, v323);

      *(v57 + 24) = v68;
      *(v57 + 32) = 2080;
      v70 = MEMORY[0x223D3C070](v69);
      v72 = v71;
      v63(v280, v274);
      v73 = sub_21D05550C(v70, v72, v323);

      *(v57 + 34) = v73;
      *(v57 + 42) = 2080;
      v74 = sub_21D05550C(v303, v311, v323);

      *(v57 + 44) = v74;
      _os_log_impl(&dword_21D044000, v318, v287, "%s prewarm with no LLModel called. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s", v57, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v293, -1, -1);
      MEMORY[0x223D3CDF0](v57, -1, -1);

      v307(v299, v54);
    }

    else
    {
      v108 = *(v0 + 1104);
      v109 = *(v0 + 1096);
      v110 = *(v0 + 992);
      v111 = *(v0 + 984);
      v112 = *(v0 + 976);
      v113 = *(v0 + 920);
      v114 = *(v0 + 912);

      v115 = *(v113 + 8);
      v115(v112, v114);
      v115(v111, v114);
      v115(v110, v114);
      (*(v108 + 8))(v299, v109);
    }

    (*(v315 + 8))();
LABEL_48:
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_49;
  }

  v40 = 0;
  v41 = result + 32;
  while (1)
  {
    if (v40 >= *(v38 + 16))
    {
      __break(1u);
      goto LABEL_59;
    }

    sub_21D0590D0(v41, v0 + 176);
    sub_21D0590D0(v0 + 176, v0 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54298, &qword_21D095E00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542A0, &qword_21D095E08);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v40;
    result = __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    v41 += 40;
    if (v39 == v40)
    {
      goto LABEL_21;
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 256));
  sub_21D046D78((v0 + 176), v0 + 136);
  sub_21D046D78((v0 + 136), v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  result = sub_21D093060();
  v116 = result;
  v117 = *(result + 16);
  if (!v117)
  {
LABEL_32:
    v120 = *(v0 + 1016);
    v121 = *(v0 + 1008);
    v122 = *(v0 + 1000);
    v123 = *(v0 + 920);
    v124 = *(v0 + 912);
    v125 = *(v0 + 896);

    v126 = *(v123 + 16);
    v126(v120, v125, v124);
    v126(v121, v125, v124);
    v126(v122, v125, v124);

    v127 = sub_21D094210();
    v128 = sub_21D094570();

    v320 = v127;
    v129 = os_log_type_enabled(v127, v128);
    v301 = *(v0 + 1120);
    if (v129)
    {
      v130 = *(v0 + 1112);
      v131 = *(v0 + 1104);
      v295 = *(v0 + 1096);
      v289 = v128;
      v132 = *(v0 + 1016);
      v278 = *(v0 + 1008);
      v282 = *(v0 + 1000);
      v133 = *(v0 + 920);
      v134 = *(v0 + 912);
      v135 = swift_slowAlloc();
      v284 = swift_slowAlloc();
      v323[0] = v284;
      *v135 = 136316162;
      v136 = sub_21D05550C(v304, v306, v323);

      *(v135 + 4) = v136;
      *(v135 + 12) = 2080;
      MEMORY[0x223D3C050](v137);
      v138 = sub_21D092FA0();
      v140 = v139;
      v309 = *(v131 + 8);
      v309(v130, v295);
      v141 = *(v133 + 8);
      v141(v132, v134);
      v142 = sub_21D05550C(v138, v140, v323);

      *(v135 + 14) = v142;
      *(v135 + 22) = 2080;
      v143 = sub_21D093FC0();
      v145 = v144;
      v141(v278, v134);
      v146 = sub_21D05550C(v143, v145, v323);

      *(v135 + 24) = v146;
      *(v135 + 32) = 2080;
      v148 = MEMORY[0x223D3C070](v147);
      v150 = v149;
      v141(v282, v134);
      v151 = sub_21D05550C(v148, v150, v323);

      *(v135 + 34) = v151;
      *(v135 + 42) = 2080;
      v152 = sub_21D05550C(v303, v311, v323);

      *(v135 + 44) = v152;
      _os_log_impl(&dword_21D044000, v320, v289, "%s prewarm with no LLMAdapter called. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s", v135, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v284, -1, -1);
      MEMORY[0x223D3CDF0](v135, -1, -1);

      v309(v301, v295);
    }

    else
    {
      v161 = *(v0 + 1104);
      v162 = *(v0 + 1096);
      v163 = *(v0 + 1016);
      v164 = *(v0 + 1008);
      v165 = *(v0 + 1000);
      v166 = *(v0 + 920);
      v167 = *(v0 + 912);

      v168 = *(v166 + 8);
      v168(v165, v167);
      v168(v164, v167);
      v168(v163, v167);
      (*(v161 + 8))(v301, v162);
    }

    (*(v315 + 8))();
LABEL_47:
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    goto LABEL_48;
  }

  v118 = 0;
  v119 = result + 32;
  while (v118 < *(v116 + 16))
  {
    sub_21D0590D0(v119, v0 + 376);
    sub_21D0590D0(v0 + 376, v0 + 416);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542A8, &qword_21D095E10);
    if (swift_dynamicCast())
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 456));
      sub_21D046D78((v0 + 376), v0 + 336);
      sub_21D046D78((v0 + 336), v0 + 296);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      result = sub_21D093060();
      v169 = result;
      v170 = *(result + 16);
      if (!v170)
      {
LABEL_43:
        v173 = *(v0 + 1040);
        v174 = *(v0 + 1032);
        v175 = *(v0 + 1024);
        v176 = *(v0 + 920);
        v177 = *(v0 + 912);
        v178 = *(v0 + 896);

        v179 = *(v176 + 16);
        v179(v173, v178, v177);
        v179(v174, v178, v177);
        v179(v175, v178, v177);

        v180 = sub_21D094210();
        v181 = sub_21D094570();

        v321 = v180;
        v182 = os_log_type_enabled(v180, v181);
        v302 = *(v0 + 1120);
        if (v182)
        {
          v183 = *(v0 + 1112);
          v184 = *(v0 + 1104);
          v296 = *(v0 + 1096);
          v290 = v181;
          v185 = *(v0 + 1040);
          v279 = *(v0 + 1032);
          v283 = *(v0 + 1024);
          v186 = *(v0 + 920);
          v187 = *(v0 + 912);
          v188 = swift_slowAlloc();
          v285 = swift_slowAlloc();
          v323[0] = v285;
          *v188 = 136316162;
          v189 = sub_21D05550C(v304, v306, v323);

          *(v188 + 4) = v189;
          *(v188 + 12) = 2080;
          MEMORY[0x223D3C050](v190);
          v191 = sub_21D092FA0();
          v193 = v192;
          v310 = *(v184 + 8);
          v310(v183, v296);
          v194 = *(v186 + 8);
          v194(v185, v187);
          v195 = sub_21D05550C(v191, v193, v323);

          *(v188 + 14) = v195;
          *(v188 + 22) = 2080;
          v196 = sub_21D093FC0();
          v198 = v197;
          v194(v279, v187);
          v199 = sub_21D05550C(v196, v198, v323);

          *(v188 + 24) = v199;
          *(v188 + 32) = 2080;
          v201 = MEMORY[0x223D3C070](v200);
          v203 = v202;
          v194(v283, v187);
          v204 = sub_21D05550C(v201, v203, v323);

          *(v188 + 34) = v204;
          *(v188 + 42) = 2080;
          v205 = sub_21D05550C(v303, v311, v323);

          *(v188 + 44) = v205;
          _os_log_impl(&dword_21D044000, v321, v290, "%s prewarm with no Tokenizer called. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s", v188, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x223D3CDF0](v285, -1, -1);
          MEMORY[0x223D3CDF0](v188, -1, -1);

          v310(v302, v296);
        }

        else
        {
          v206 = *(v0 + 1104);
          v207 = *(v0 + 1096);
          v208 = *(v0 + 1040);
          v209 = *(v0 + 1032);
          v210 = *(v0 + 1024);
          v211 = *(v0 + 920);
          v212 = *(v0 + 912);

          v213 = *(v211 + 8);
          v213(v210, v212);
          v213(v209, v212);
          v213(v208, v212);
          (*(v206 + 8))(v302, v207);
        }

        (*(v315 + 8))();
        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        goto LABEL_47;
      }

      v171 = 0;
      v172 = result + 32;
      while (v171 < *(v169 + 16))
      {
        sub_21D0590D0(v172, v0 + 536);
        sub_21D0590D0(v0 + 536, v0 + 576);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B0, &qword_21D095E18);
        if (swift_dynamicCast())
        {

          __swift_destroy_boxed_opaque_existential_0((v0 + 616));
          sub_21D046D78((v0 + 536), v0 + 496);
          sub_21D093FC0();
          v215 = sub_21D092FF0();
          v217 = v216;
          v297 = *(v0 + 1088);
          v313 = *(v0 + 1080);
          v316 = *(v0 + 1072);
          v218 = *(v0 + 920);
          v291 = *(v0 + 912);
          v219 = *(v0 + 896);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
          v220 = swift_allocObject();
          *(v220 + 16) = xmmword_21D095DC0;
          *(v220 + 32) = 0x6C65646F6DLL;
          *(v220 + 40) = 0xE500000000000000;
          __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
          *(v220 + 48) = sub_21D093050();
          *(v220 + 56) = v221;
          *(v220 + 64) = 0x72657470616461;
          *(v220 + 72) = 0xE700000000000000;
          __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
          *(v220 + 80) = sub_21D093050();
          *(v220 + 88) = v222;
          strcpy((v220 + 96), "inference-id");
          *(v220 + 109) = 0;
          *(v220 + 110) = -5120;
          *(v220 + 112) = v215;
          *(v220 + 120) = v217;
          *(v220 + 128) = 0x65662D656C707061;
          *(v220 + 136) = 0xEF64696572757461;
          *(v220 + 144) = MEMORY[0x223D3C070]();
          *(v220 + 152) = v223;
          v224 = sub_21D0900B0(v220);
          *(v0 + 1248) = v224;
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542C0, &qword_21D095E28);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(v0 + 1256) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
          v225 = *(v218 + 16);
          *(v0 + 1264) = v225;
          *(v0 + 1272) = (v218 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v225(v297, v219, v291);
          v225(v313, v219, v291);
          v225(v316, v219, v291);
          sub_21D0590D0(v0 + 96, v0 + 656);
          sub_21D0590D0(v0 + 296, v0 + 696);
          sub_21D0590D0(v0 + 496, v0 + 736);

          v226 = v311;

          v227 = sub_21D094210();
          v228 = sub_21D094580();

          if (os_log_type_enabled(v227, v228))
          {
            v322 = v227;
            v229 = *(v0 + 1112);
            v230 = *(v0 + 1104);
            v231 = v224;
            v232 = *(v0 + 1088);
            v286 = *(v0 + 1096);
            v292 = *(v0 + 1080);
            v298 = *(v0 + 1072);
            v233 = *(v0 + 920);
            v234 = *(v0 + 912);
            v235 = swift_slowAlloc();
            v317 = swift_slowAlloc();
            v323[0] = v317;
            *v235 = 136316930;
            *(v235 + 4) = sub_21D05550C(v304, v306, v323);
            *(v235 + 12) = 2080;
            v314 = v228;
            MEMORY[0x223D3C050]();
            v236 = sub_21D092FA0();
            v238 = v237;
            (*(v230 + 8))(v229, v286);
            v239 = *(v233 + 8);
            v240 = v232;
            v224 = v231;
            v239(v240, v234);
            v241 = sub_21D05550C(v236, v238, v323);

            *(v235 + 14) = v241;
            *(v235 + 22) = 2080;
            v242 = sub_21D093FC0();
            v244 = v243;
            v239(v292, v234);
            v245 = sub_21D05550C(v242, v244, v323);

            *(v235 + 24) = v245;
            *(v235 + 32) = 2080;
            v247 = MEMORY[0x223D3C070](v246);
            v249 = v248;
            v239(v298, v234);
            v226 = v311;
            v250 = sub_21D05550C(v247, v249, v323);

            *(v235 + 34) = v250;
            *(v235 + 42) = 2080;
            v251 = v303;
            *(v235 + 44) = sub_21D05550C(v303, v311, v323);
            *(v235 + 52) = 2080;
            __swift_project_boxed_opaque_existential_1((v0 + 656), *(v0 + 680));
            v252 = sub_21D093050();
            v254 = v253;
            __swift_destroy_boxed_opaque_existential_0((v0 + 656));
            v255 = sub_21D05550C(v252, v254, v323);

            *(v235 + 54) = v255;
            *(v235 + 62) = 2080;
            __swift_project_boxed_opaque_existential_1((v0 + 696), *(v0 + 720));
            v256 = sub_21D093050();
            v258 = v257;
            __swift_destroy_boxed_opaque_existential_0((v0 + 696));
            v259 = sub_21D05550C(v256, v258, v323);

            *(v235 + 64) = v259;
            *(v235 + 72) = 2080;
            __swift_project_boxed_opaque_existential_1((v0 + 736), *(v0 + 760));
            v260 = sub_21D093050();
            v262 = v261;
            __swift_destroy_boxed_opaque_existential_0((v0 + 736));
            v263 = sub_21D05550C(v260, v262, v323);
            v264 = v304;

            *(v235 + 74) = v263;
            _os_log_impl(&dword_21D044000, v322, v314, "%s Initiating prewarm. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s\nmodel=%s adapter=%stokenizerResource=%s", v235, 0x52u);
            swift_arrayDestroy();
            MEMORY[0x223D3CDF0](v317, -1, -1);
            MEMORY[0x223D3CDF0](v235, -1, -1);

            v265 = v305;
          }

          else
          {
            v266 = *(v0 + 1088);
            v267 = *(v0 + 1080);
            v268 = *(v0 + 1072);
            v269 = *(v0 + 920);
            v270 = *(v0 + 912);

            v239 = *(v269 + 8);
            v239(v268, v270);
            v239(v267, v270);
            v239(v266, v270);
            __swift_destroy_boxed_opaque_existential_0((v0 + 656));
            __swift_destroy_boxed_opaque_existential_0((v0 + 696));
            __swift_destroy_boxed_opaque_existential_0((v0 + 736));
            v264 = v304;
            v265 = v305;
            v251 = v303;
          }

          *(v0 + 1280) = v239;
          v271 = *(v0 + 896);
          v272 = swift_task_alloc();
          *(v0 + 1288) = v272;
          v272[2] = v264;
          v272[3] = v306;
          v272[4] = v224;
          v272[5] = v271;
          v272[6] = v251;
          v272[7] = v226;
          v272[8] = v0 + 1312;
          v273 = swift_task_alloc();
          *(v0 + 1296) = v273;
          *v273 = v0;
          v273[1] = sub_21D05F468;

          return sub_21D090360(v265, &unk_21D095E38, v272);
        }

        ++v171;
        result = __swift_destroy_boxed_opaque_existential_0((v0 + 536));
        v172 += 40;
        if (v170 == v171)
        {
          goto LABEL_43;
        }
      }

      goto LABEL_60;
    }

    ++v118;
    result = __swift_destroy_boxed_opaque_existential_0((v0 + 376));
    v119 += 40;
    if (v117 == v118)
    {
      goto LABEL_32;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_21D05F468()
{
  *(*v1 + 1304) = v0;

  if (v0)
  {
    v2 = sub_21D05FD28;
  }

  else
  {
    v2 = sub_21D05F5B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D05F5B8()
{
  v71 = v0;
  v1 = v0[158];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[114];
  v5 = v0[112];
  v1(v0[133], v5, v4);
  v1(v2, v5, v4);
  v1(v3, v5, v4);
  sub_21D0590D0((v0 + 12), (v0 + 97));
  sub_21D0590D0((v0 + 37), (v0 + 102));
  sub_21D0590D0((v0 + 62), (v0 + 107));

  v6 = sub_21D094210();
  v7 = sub_21D094580();

  v69 = v6;
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[160];
  v68 = v0[155];
  if (v8)
  {
    v57 = v0[154];
    v10 = v0[153];
    v59 = v7;
    v11 = v0[152];
    v66 = v0[151];
    v62 = v0[150];
    v64 = v0[149];
    v60 = v0[140];
    v12 = v0[139];
    v13 = v0[138];
    v14 = v0[137];
    v15 = v0[133];
    v16 = v0[132];
    v55 = v0[131];
    v54 = v0[114];
    v17 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v70 = v58;
    *v17 = 136316930;
    v18 = sub_21D05550C(v11, v10, &v70);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    MEMORY[0x223D3C050](v19);
    v20 = sub_21D092FA0();
    v22 = v21;
    v56 = *(v13 + 8);
    v56(v12, v14);
    v9(v15, v54);
    v23 = sub_21D05550C(v20, v22, &v70);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    v24 = sub_21D093FC0();
    v26 = v25;
    v9(v16, v54);
    v27 = sub_21D05550C(v24, v26, &v70);

    *(v17 + 24) = v27;
    *(v17 + 32) = 2080;
    v29 = MEMORY[0x223D3C070](v28);
    v31 = v30;
    v9(v55, v54);
    v32 = sub_21D05550C(v29, v31, &v70);

    *(v17 + 34) = v32;
    *(v17 + 42) = 2080;
    v33 = sub_21D05550C(v57, v68, &v70);

    *(v17 + 44) = v33;
    *(v17 + 52) = 2080;
    __swift_project_boxed_opaque_existential_1(v0 + 97, v0[100]);
    v34 = sub_21D093050();
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
    v37 = sub_21D05550C(v34, v36, &v70);

    *(v17 + 54) = v37;
    *(v17 + 62) = 2080;
    __swift_project_boxed_opaque_existential_1(v0 + 102, v0[105]);
    v38 = sub_21D093050();
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
    v41 = sub_21D05550C(v38, v40, &v70);

    *(v17 + 64) = v41;
    *(v17 + 72) = 2080;
    __swift_project_boxed_opaque_existential_1(v0 + 107, v0[110]);
    v42 = sub_21D093050();
    v44 = v43;
    __swift_destroy_boxed_opaque_existential_0(v0 + 107);
    v45 = sub_21D05550C(v42, v44, &v70);

    *(v17 + 74) = v45;
    _os_log_impl(&dword_21D044000, v69, v59, "%s prewarm complete. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s model=%s adapter=%stokenizerResource=%s", v17, 0x52u);
    swift_arrayDestroy();
    MEMORY[0x223D3CDF0](v58, -1, -1);
    MEMORY[0x223D3CDF0](v17, -1, -1);

    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
    v56(v60, v14);
    (*(v62 + 8))(v66, v64);
  }

  else
  {
    v67 = v0[151];
    v46 = v0[150];
    v63 = v0[140];
    v65 = v0[149];
    v47 = v0[138];
    v61 = v0[137];
    v48 = v0[133];
    v49 = v0[132];
    v50 = v0[131];
    v51 = v0[114];

    v9(v50, v51);
    v9(v49, v51);
    v9(v48, v51);
    __swift_destroy_boxed_opaque_existential_0(v0 + 62);
    (*(v47 + 8))(v63, v61);
    (*(v46 + 8))(v67, v65);
    __swift_destroy_boxed_opaque_existential_0(v0 + 107);
    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  sub_21D060360(v0[113], v0[148]);

  v52 = v0[1];

  return v52();
}

uint64_t sub_21D05FD28()
{
  v63 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[114];
  v61 = v0[163];
  v4 = v0[112];
  v5 = *(v0[115] + 16);
  v5(v0[118], v4, v3);
  v5(v1, v4, v3);
  v5(v2, v4, v3);

  v6 = sub_21D094210();
  v7 = sub_21D094580();

  v60 = v6;
  v8 = os_log_type_enabled(v6, v7);
  v59 = v0[155];
  if (v8)
  {
    v50 = v0[154];
    v9 = v0[153];
    v10 = v0[152];
    v55 = v0[149];
    v57 = v0[151];
    v52 = v0[140];
    v53 = v0[150];
    v11 = v0[139];
    v51 = v7;
    v12 = v0[138];
    v13 = v0[137];
    v14 = v0[118];
    v48 = v0[116];
    v15 = v0[115];
    v46 = v0[114];
    v47 = v0[117];
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v62 = v49;
    *v16 = 136316162;
    v17 = sub_21D05550C(v10, v9, &v62);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;
    MEMORY[0x223D3C050](v18);
    v19 = sub_21D092FA0();
    v21 = v20;
    v22 = *(v12 + 8);
    v22(v11, v13);
    v23 = *(v15 + 8);
    v23(v14, v46);
    v24 = sub_21D05550C(v19, v21, &v62);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2080;
    v25 = sub_21D093FC0();
    v27 = v26;
    v23(v47, v46);
    v28 = sub_21D05550C(v25, v27, &v62);

    *(v16 + 24) = v28;
    *(v16 + 32) = 2080;
    v30 = MEMORY[0x223D3C070](v29);
    v32 = v31;
    v23(v48, v46);
    v33 = sub_21D05550C(v30, v32, &v62);

    *(v16 + 34) = v33;
    *(v16 + 42) = 2080;
    v34 = sub_21D05550C(v50, v59, &v62);

    *(v16 + 44) = v34;
    _os_log_impl(&dword_21D044000, v60, v51, "%s prewarm failed. sessionUUID=%s modelBundleIdentifier=%s featureIdentifier=%s bundleIdentifier=%s", v16, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x223D3CDF0](v49, -1, -1);
    MEMORY[0x223D3CDF0](v16, -1, -1);

    v22(v52, v13);
    (*(v53 + 8))(v57, v55);
  }

  else
  {
    v35 = v0[150];
    v56 = v0[149];
    v58 = v0[151];
    v54 = v0[140];
    v36 = v0[138];
    v37 = v0[137];
    v38 = v0[118];
    v39 = v0[117];
    v40 = v0[116];
    v41 = v0[115];
    v42 = v0[114];

    v43 = *(v41 + 8);
    v43(v40, v42);
    v43(v39, v42);
    v43(v38, v42);
    (*(v36 + 8))(v54, v37);
    (*(v35 + 8))(v58, v56);
  }

  sub_21D060360(v0[113], v0[148]);

  v44 = v0[1];

  return v44();
}

uint64_t sub_21D060360(uint64_t a1, uint64_t a2)
{
  v2 = sub_21D0941C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21D094180();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21D0941A0();
  sub_21D0941D0();
  v11 = sub_21D094650();
  if (sub_21D094680())
  {

    sub_21D094200();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v10, v11, v14, "prewarmHint", v12, v13, 2u);
    MEMORY[0x223D3CDF0](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21D0605B4(NSObject *a1, uint64_t a2, int a3)
{
  LODWORD(v160) = a3;
  v162 = a1;
  v4 = sub_21D092FC0();
  v163 = *(v4 - 8);
  v164 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v156 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v158 = &v156 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v159 = &v156 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v156 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v156 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v156 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = sub_21D094230();
  v25 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v27 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281221778 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v24, qword_2812217C8);
  v29 = *(v25 + 16);
  v166 = v24;
  v167 = v27;
  v29(v27, v28, v24);
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_59;
  }

  v27 = a2;
  if (a2 > 0x7FFFFFFF)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    swift_once();
    goto LABEL_32;
  }

  v165 = v25;
  v30 = [objc_opt_self() identifierWithPid_];
  if (!v30)
  {
    v32 = v163;
    v33 = v164;
    (*(v163 + 16))(v7, v162, v164);
    v34 = v167;
    v35 = sub_21D094210();
    v36 = sub_21D094560();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v161 = v27;
      v39 = v38;
      v169[0] = v38;
      *v37 = 136315394;
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_21D094790();
      v42 = v41;
      (*(v32 + 8))(v7, v33);
      v43 = sub_21D05550C(v40, v42, v169);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2048;
      *(v37 + 14) = v161;
      _os_log_impl(&dword_21D044000, v35, v36, "%s could not get identifier for pid %ld", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x223D3CDF0](v39, -1, -1);
      MEMORY[0x223D3CDF0](v37, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v7, v33);
    }

    (*(v165 + 8))(v34, v166);
    return 0x6E6B6E752E6D6F63;
  }

  v31 = v30;
  v161 = a2;
  sub_21D091E88(0, &qword_2812217A8, 0x277D46F48);
  v27 = v31;
  v24 = sub_21D09029C(v27);

  v44 = [v24 isDaemon];
  if (v44)
  {
    v45 = [v24 name];
    if (v45)
    {
      v46 = v45;
      v47 = sub_21D0943F0();
      v49 = v48;
    }

    else
    {
      v47 = 0xD000000000000012;
      v49 = 0x800000021D097500;
    }

    v73 = v167;
    v157 = v47;
    v169[0] = v47;
    v169[1] = v49;
    MEMORY[0x28223BE20](v45);
    *(&v156 - 2) = v169;
    if ((sub_21D05B914(sub_21D091FD4, (&v156 - 4), &unk_282E968B0) & 1) == 0 && (v160 & 1) == 0)
    {
      v158 = v27;
      v74 = v163;
      v75 = v164;
      (*(v163 + 16))(v23, v162, v164);

      v76 = sub_21D094210();
      v77 = sub_21D094560();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v160 = v24;
        v79 = v78;
        v80 = swift_slowAlloc();
        v169[0] = v80;
        *v79 = 136315650;
        sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v81 = sub_21D094790();
        v83 = v82;
        (*(v74 + 8))(v23, v75);
        v84 = sub_21D05550C(v81, v83, v169);
        v73 = v167;

        *(v79 + 4) = v84;
        *(v79 + 12) = 2080;
        v85 = sub_21D05550C(v157, v49, v169);

        *(v79 + 14) = v85;
        *(v79 + 22) = 2048;
        *(v79 + 24) = v161;
        _os_log_impl(&dword_21D044000, v76, v77, "%s daemon %s for pid=%ld is not allowed", v79, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v80, -1, -1);
        v86 = v79;
        v24 = v160;
        MEMORY[0x223D3CDF0](v86, -1, -1);
      }

      else
      {

        (*(v74 + 8))(v23, v75);
      }

      v93 = v165;

      (*(v93 + 8))(v73, v166);
      return 0xD000000000000012;
    }

    v87 = sub_21D094210();
    v88 = sub_21D094560();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = v24;
      v91 = swift_slowAlloc();
      v169[0] = v91;
      *v89 = 136315138;
      v92 = v157;
      *(v89 + 4) = sub_21D05550C(v157, v49, v169);
      _os_log_impl(&dword_21D044000, v87, v88, "allowing daemon %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x223D3CDF0](v91, -1, -1);
      MEMORY[0x223D3CDF0](v89, -1, -1);

      (*(v165 + 8))(v73, v166);
      return v92;
    }

    (*(v165 + 8))(v73, v166);
    return v157;
  }

  v51 = [v24 bundle];
  if (v51)
  {
    v52 = v51;
    v53 = [v51 identifier];
    if (v53)
    {
      v54 = v53;
      v55 = sub_21D0943F0();
      v57 = v56;

      v157 = v55;
      if ((sub_21D08F17C(0x6C7070612E6D6F63, 0xEA00000000002E65, v55, v57) & 1) == 0 && (v160 & 1) == 0)
      {

        v58 = v163;
        v59 = v164;
        (*(v163 + 16))(v17, v162, v164);
        v60 = sub_21D094210();
        v61 = sub_21D094560();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v162 = v52;
          v63 = v62;
          v64 = swift_slowAlloc();
          v160 = v24;
          v65 = v64;
          v169[0] = v64;
          *v63 = 136315138;
          sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v66 = sub_21D094790();
          v67 = v27;
          v69 = v68;
          (*(v58 + 8))(v17, v59);
          v70 = sub_21D05550C(v66, v69, v169);
          v27 = v67;

          *(v63 + 4) = v70;
          _os_log_impl(&dword_21D044000, v60, v61, "%s is third party bundle-id", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v65);
          v71 = v65;
          v24 = v160;
          MEMORY[0x223D3CDF0](v71, -1, -1);
          v72 = v63;
          v52 = v162;
          MEMORY[0x223D3CDF0](v72, -1, -1);
        }

        else
        {

          (*(v58 + 8))(v17, v59);
        }

        v154 = v165;

        (*(v154 + 8))(v167, v166);
        return 0xD000000000000017;
      }

      v160 = v24;
      v114 = v163;
      v115 = v164;
      (*(v163 + 16))(v20, v162, v164);

      v94 = v167;
      v116 = sub_21D094210();
      v117 = sub_21D094560();

      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v162 = v52;
        v119 = v118;
        v120 = swift_slowAlloc();
        v158 = v27;
        v121 = v120;
        v169[0] = v120;
        *v119 = 136315650;
        sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v122 = sub_21D094790();
        v124 = v123;
        (*(v114 + 8))(v20, v115);
        v125 = sub_21D05550C(v122, v124, v169);

        *(v119 + 4) = v125;
        *(v119 + 12) = 2080;
        v126 = v157;
        *(v119 + 14) = sub_21D05550C(v157, v57, v169);
        *(v119 + 22) = 2048;
        *(v119 + 24) = v161;
        _os_log_impl(&dword_21D044000, v116, v117, "%s is bundle-id %s for pid %ld", v119, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v121, -1, -1);
        MEMORY[0x223D3CDF0](v119, -1, -1);

        (*(v165 + 8))(v167, v166);
        return v126;
      }

      (*(v114 + 8))(v20, v115);
      goto LABEL_54;
    }
  }

  if (qword_281221488 != -1)
  {
    goto LABEL_60;
  }

LABEL_32:
  swift_beginAccess();
  v94 = v167;
  v96 = v163;
  v95 = v164;
  if (byte_281221490 != 1)
  {
    (*(v163 + 16))(v10, v162, v164);
    v102 = sub_21D094210();
    v103 = sub_21D094560();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = v96;
      v160 = v24;
      v107 = v105;
      v168[0] = v105;
      *v104 = 136315394;
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v108 = sub_21D094790();
      v109 = v27;
      v111 = v110;
      (*(v106 + 8))(v10, v95);
      v112 = sub_21D05550C(v108, v111, v168);
      v27 = v109;

      *(v104 + 4) = v112;
      *(v104 + 12) = 2048;
      *(v104 + 14) = v161;
      _os_log_impl(&dword_21D044000, v102, v103, "%s could not get process bundle for pid=%ld", v104, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v107);
      v113 = v107;
      v24 = v160;
      MEMORY[0x223D3CDF0](v113, -1, -1);
      MEMORY[0x223D3CDF0](v104, -1, -1);
    }

    else
    {

      (*(v96 + 8))(v10, v95);
    }

    v127 = v165;

    (*(v127 + 8))(v167, v166);
    return 0xD000000000000012;
  }

  v97 = [v24 name];
  if (v97)
  {
    v98 = v97;
    v99 = sub_21D0943F0();
    v101 = v100;
  }

  else
  {
    v101 = 0x800000021D0974C0;
    v99 = 0xD000000000000010;
  }

  v157 = v99;
  v168[0] = v99;
  v168[1] = v101;
  MEMORY[0x28223BE20](v97);
  *(&v156 - 2) = v168;
  if (sub_21D05B914(sub_21D091ED0, (&v156 - 4), &unk_282E96900) & 1) != 0 || (v160)
  {
    v140 = v159;
    (*(v96 + 16))(v159, v162, v95);

    v141 = sub_21D094210();
    v142 = sub_21D094560();

    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v162 = v141;
      v144 = v140;
      v145 = v143;
      v146 = swift_slowAlloc();
      v160 = v24;
      v158 = v27;
      v147 = v146;
      v168[0] = v146;
      *v145 = 136315394;
      sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v148 = sub_21D094790();
      v149 = v94;
      v151 = v150;
      (*(v96 + 8))(v144, v95);
      v152 = sub_21D05550C(v148, v151, v168);

      *(v145 + 4) = v152;
      *(v145 + 12) = 2080;
      v126 = v157;
      *(v145 + 14) = sub_21D05550C(v157, v101, v168);
      v153 = v162;
      _os_log_impl(&dword_21D044000, v162, v142, "%s bundle identifier is cli tool %s", v145, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v147, -1, -1);
      MEMORY[0x223D3CDF0](v145, -1, -1);

      (*(v165 + 8))(v149, v166);
      return v126;
    }

    (*(v96 + 8))(v140, v95);
LABEL_54:
    (*(v165 + 8))(v94, v166);
    return v157;
  }

  v128 = v158;
  (*(v96 + 16))(v158, v162, v95);
  v129 = sub_21D094210();
  v130 = v95;
  v131 = sub_21D094560();
  if (os_log_type_enabled(v129, v131))
  {
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v160 = v24;
    v162 = v133;
    v168[0] = v133;
    *v132 = 136315138;
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v134 = sub_21D094790();
    v135 = v94;
    v137 = v136;
    (*(v96 + 8))(v128, v130);
    v138 = sub_21D05550C(v134, v137, v168);
    v94 = v135;

    *(v132 + 4) = v138;
    _os_log_impl(&dword_21D044000, v129, v131, "%s bundle identifier is an unknown cli tool", v132, 0xCu);
    v139 = v162;
    __swift_destroy_boxed_opaque_existential_0(v162);
    v24 = v160;
    MEMORY[0x223D3CDF0](v139, -1, -1);
    MEMORY[0x223D3CDF0](v132, -1, -1);
  }

  else
  {

    (*(v96 + 8))(v128, v130);
  }

  v155 = v165;

  (*(v155 + 8))(v94, v166);
  return 0xD000000000000010;
}

uint64_t sub_21D061B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_21D092FC0();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D061C40, 0, 0);
}

uint64_t sub_21D061C40()
{
  v1 = v0[8];
  v2 = MEMORY[0x223D3C070]();
  v4 = v3;
  v0[13] = v3;
  MEMORY[0x223D3C050]();
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_21D061D30;
  v6 = v0[12];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return MEMORY[0x2821A23D0](v10, v8, v9, v2, v4, v7, v1, v6);
}

uint64_t sub_21D061D30()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t NewInferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = a2;
  v66 = a1;
  v69 = a3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542C8, &qword_21D095E48);
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v68 = &v53[-v4];
  v5 = sub_21D094230();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v64 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21D092FC0();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = sub_21D094070();
  v9 = *(v70 - 8);
  v10 = MEMORY[0x28223BE20](v70);
  v61 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v53[-v12];
  v14 = sub_21D094180();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v53[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v53[-v19];
  sub_21D0941A0();
  sub_21D094150();
  v71 = v3;
  v21 = sub_21D0941A0();
  v22 = sub_21D094660();
  if (sub_21D094680())
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v21, v22, v24, "requestStream", "full request", v23, 2u);
    MEMORY[0x223D3CDF0](v23, -1, -1);
  }

  (*(v15 + 16))(v18, v20, v14);
  sub_21D0941F0();
  swift_allocObject();
  v60 = sub_21D0941E0();
  (*(v15 + 8))(v20, v14);
  v25 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v26 = *(v9 + 16);
  v27 = v13;
  v28 = v70;
  v26(v13, v72, v70);
  v29 = sub_21D094210();
  v30 = sub_21D094580();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = v9;
    v56 = v26;
    v33 = v31;
    v55 = swift_slowAlloc();
    v73 = v55;
    *v33 = 136315138;
    v34 = v57;
    v54 = v30;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v35 = v25;
    v36 = v59;
    v37 = sub_21D094790();
    v39 = v38;
    v40 = v36;
    v25 = v35;
    (*(v58 + 8))(v34, v40);
    (*(v32 + 8))(v27, v70);
    v41 = sub_21D05550C(v37, v39, &v73);

    *(v33 + 4) = v41;
    _os_log_impl(&dword_21D044000, v29, v54, "%s executing stream request with client data", v33, 0xCu);
    v42 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    v28 = v70;
    MEMORY[0x223D3CDF0](v42, -1, -1);
    v43 = v33;
    v26 = v56;
    MEMORY[0x223D3CDF0](v43, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v13, v28);
  }

  v44 = v71;
  (*(v62 + 16))(v64, v71 + v25, v63);
  v45 = v72;
  v26(v61, v72, v28);
  sub_21D093670();
  swift_allocObject();
  v46 = sub_21D093650();
  v47 = MEMORY[0x28223BE20](v46);
  v48 = v60;
  *&v53[-48] = v44;
  *&v53[-40] = v48;
  v49 = v66;
  *&v53[-32] = v45;
  *&v53[-24] = v49;
  *&v53[-16] = v47;
  sub_21D093EB0();
  (*(v65 + 104))(v68, *MEMORY[0x277D858A0], v67);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542D0, &qword_21D095E50);
  v51 = v69;
  v69[3] = v50;
  v51[4] = sub_21D090A4C(&qword_27CE542D8, &qword_27CE542D0, &qword_21D095E50, MEMORY[0x277D858E0]);
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_21D094530();
}

uint64_t sub_21D0625E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a3;
  v39 = a6;
  v36 = a5;
  v37 = a2;
  v34 = a4;
  v40 = a1;
  v6 = sub_21D093EB0();
  v41 = *(v6 - 8);
  v42 = v6;
  v35 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v8;
  v9 = sub_21D094070();
  v30 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
  v29 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v33 = &v29 - v18;
  v20 = sub_21D0944D0();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v16, v40, v12);
  (*(v10 + 16))(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
  v21 = v41;
  (*(v41 + 16))(v8, v36, v42);
  v22 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v23 = (v14 + *(v10 + 80) + v22) & ~*(v10 + 80);
  v24 = (v11 + *(v21 + 80) + v23) & ~*(v21 + 80);
  v25 = (v35 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v38;
  *(v26 + 4) = v37;
  *(v26 + 5) = v27;
  (*(v13 + 32))(&v26[v22], v16, v29);
  (*(v10 + 32))(&v26[v23], v31, v30);
  (*(v41 + 32))(&v26[v24], v32, v42);
  *&v26[v25] = v39;

  sub_21D05156C(0, 0, v33, &unk_21D096550, v26);
  return sub_21D094500();
}

uint64_t sub_21D0629D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[71] = v20;
  v8[70] = a8;
  v8[69] = a7;
  v8[68] = a6;
  v8[67] = a5;
  v8[66] = a4;
  v9 = sub_21D093EF0();
  v8[72] = v9;
  v8[73] = *(v9 - 8);
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v10 = sub_21D0941C0();
  v8[78] = v10;
  v8[79] = *(v10 - 8);
  v8[80] = swift_task_alloc();
  v11 = sub_21D093EE0();
  v8[81] = v11;
  v8[82] = *(v11 - 8);
  v8[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78);
  v8[84] = swift_task_alloc();
  v12 = sub_21D094070();
  v8[85] = v12;
  v8[86] = *(v12 - 8);
  v8[87] = swift_task_alloc();
  v13 = sub_21D094330();
  v8[88] = v13;
  v8[89] = *(v13 - 8);
  v8[90] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54318, &qword_21D095E98);
  v8[91] = swift_task_alloc();
  v14 = sub_21D094360();
  v8[92] = v14;
  v8[93] = *(v14 - 8);
  v8[94] = swift_task_alloc();
  v15 = sub_21D093A50();
  v8[95] = v15;
  v8[96] = *(v15 - 8);
  v8[97] = swift_task_alloc();
  v16 = sub_21D094180();
  v8[98] = v16;
  v8[99] = *(v16 - 8);
  v8[100] = swift_task_alloc();
  v8[101] = swift_task_alloc();
  v8[102] = swift_task_alloc();
  v17 = sub_21D092FC0();
  v8[103] = v17;
  v8[104] = *(v17 - 8);
  v8[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D062E38, 0, 0);
}

char *sub_21D062E38()
{
  v203 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  sub_21D094010();
  v4 = sub_21D092FA0();
  v6 = v5;
  *(v0 + 848) = v4;
  *(v0 + 856) = v5;
  v200 = *(v2 + 8);
  v200(v1, v3);
  *(v0 + 864) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  sub_21D0941A0();
  sub_21D094150();

  v7 = sub_21D0941A0();
  v8 = sub_21D094660();

  v196 = v4;
  if (sub_21D094680())
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v202[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21D05550C(v4, v6, v202);
    v11 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v7, v8, v11, "requestStream", "first token requestIdentifier=%{public, signpost.description=attribute,public}s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D3CDF0](v10, -1, -1);
    MEMORY[0x223D3CDF0](v9, -1, -1);
  }

  v12 = *(v0 + 840);
  v13 = *(v0 + 824);
  v14 = *(v0 + 816);
  v15 = *(v0 + 792);
  v16 = *(v0 + 784);
  (*(v15 + 16))(*(v0 + 808), v14, v16);
  sub_21D0941F0();
  swift_allocObject();
  v17 = sub_21D0941E0();
  v18 = *(v15 + 8);
  *(v0 + 872) = v18;
  *(v0 + 880) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v14, v16);
  *(v0 + 472) = v17;
  sub_21D092FB0();
  v19 = sub_21D092FA0();
  v21 = v20;
  *(v0 + 888) = v20;
  v200(v12, v13);
  v22 = sub_21D093E90();
  *(v0 + 896) = v22;
  *(v0 + 904) = v23;
  if (v23 >> 60 == 15)
  {

    v24 = sub_21D094210();
    v25 = sub_21D094570();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21D044000, v24, v25, "No data provided for stream request", v26, 2u);
      MEMORY[0x223D3CDF0](v26, -1, -1);
    }

    v27 = *(v0 + 664);
    v28 = *(v0 + 656);
    v29 = *(v0 + 648);
    v30 = *(v0 + 584);
    v31 = *(v0 + 576);

    swift_beginAccess();

    sub_21D0900B0(MEMORY[0x277D84F90]);
    sub_21D093ED0();
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v32 = swift_allocError();
    v34 = v33;
    (*(v28 + 16))(v33, v27, v29);
    (*(v30 + 104))(v34, *MEMORY[0x277D29DB0], v31);
    swift_willThrow();
    (*(v28 + 8))(v27, v29);
LABEL_19:
    *(v0 + 480) = v32;
    v83 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
    if (swift_dynamicCast())
    {
      v84 = *(v0 + 616);
      v85 = *(v0 + 608);
      v86 = *(v0 + 584);
      v87 = *(v0 + 576);

      (*(v86 + 32))(v85, v84, v87);
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      v88 = swift_allocError();
      (*(v86 + 16))(v89, v85, v87);
      *(v0 + 520) = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
      sub_21D094520();
      (*(v86 + 8))(v85, v87);
      v90 = *(v0 + 480);
LABEL_35:

      goto LABEL_36;
    }

    *(v0 + 488) = v32;
    v91 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
    if (swift_dynamicCast())
    {

      sub_21D046D78((v0 + 208), v0 + 248);
      sub_21D0590D0(v0 + 248, v0 + 288);
      sub_21D0590D0(v0 + 248, v0 + 328);
      sub_21D0590D0(v0 + 248, v0 + 368);
      v92 = sub_21D094210();
      v93 = sub_21D094550();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v202[0] = v95;
        *v94 = 136315650;
        __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
        v96 = sub_21D094090();
        v98 = v97;
        __swift_destroy_boxed_opaque_existential_0((v0 + 288));
        v99 = sub_21D05550C(v96, v98, v202);

        *(v94 + 4) = v99;
        *(v94 + 12) = 2048;
        __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
        v100 = sub_21D093520();
        __swift_destroy_boxed_opaque_existential_0((v0 + 328));
        *(v94 + 14) = v100;
        *(v94 + 22) = 2080;
        __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
        v101 = sub_21D093530();
        v103 = v102;
        __swift_destroy_boxed_opaque_existential_0((v0 + 368));
        v104 = sub_21D05550C(v101, v103, v202);

        *(v94 + 24) = v104;
        _os_log_impl(&dword_21D044000, v92, v93, "Request failed: %s %ld %s", v94, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v95, -1, -1);
        MEMORY[0x223D3CDF0](v94, -1, -1);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 328));

        __swift_destroy_boxed_opaque_existential_0((v0 + 288));
        __swift_destroy_boxed_opaque_existential_0((v0 + 368));
      }

      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      v201 = swift_allocError();
      v131 = v130;
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      sub_21D093530();
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      sub_21D094090();
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      result = sub_21D093520();
      if (!__OFADD__(result, 10000))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21D0959B0;
        *(inited + 32) = sub_21D0943F0();
        *(inited + 40) = v133;
        v134 = *(v0 + 272);
        v135 = *(v0 + 280);
        __swift_project_boxed_opaque_existential_1((v0 + 248), v134);
        *(inited + 48) = MEMORY[0x223D3C1D0](v134, *(v135 + 8));
        *(inited + 56) = v136;
        sub_21D0900B0(inited);
        swift_setDeallocating();
        sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
        v137 = *(v0 + 272);
        v138 = __swift_project_boxed_opaque_existential_1((v0 + 248), v137);
        v139 = *(v137 - 8);
        v140 = swift_task_alloc();
        (*(v139 + 16))(v140, v138, v137);
        if (sub_21D0947A0())
        {
          (*(v139 + 8))(v140, v137);
        }

        else
        {
          swift_allocError();
          (*(v139 + 32))(v146, v140, v137);
        }

        v147 = *(v0 + 584);
        v148 = *(v0 + 576);
        sub_21D093EC0();

        (*(v147 + 104))(v131, *MEMORY[0x277D29DA8], v148);
        *(v0 + 512) = v201;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
        sub_21D094520();
        __swift_destroy_boxed_opaque_existential_0((v0 + 248));
        v90 = *(v0 + 488);
        goto LABEL_35;
      }
    }

    else
    {

      v105 = sub_21D092F10();
      *(v0 + 496) = v32;
      v106 = v32;
      sub_21D094430();
      v107 = [v105 domain];
      sub_21D0943F0();

      result = [v105 code];
      if (!__OFADD__(result, 20000))
      {
        v109 = *(v0 + 600);
        v110 = *(v0 + 584);
        v177 = *(v0 + 576);
        v179 = *(v0 + 592);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
        v111 = swift_initStackObject();
        *(v111 + 16) = xmmword_21D0959B0;
        *(v111 + 32) = sub_21D0943F0();
        *(v111 + 40) = v112;
        v113 = [v105 description];
        v114 = sub_21D0943F0();
        v116 = v115;

        *(v111 + 48) = v114;
        *(v111 + 56) = v116;
        sub_21D0900B0(v111);
        swift_setDeallocating();
        sub_21D04D27C(v111 + 32, &qword_27CE542C0, &qword_21D095E28);
        v183 = v105;
        sub_21D093EC0();
        (*(v110 + 104))(v109, *MEMORY[0x277D29DA8], v177);
        v117 = *(v110 + 16);
        v117(v179, v109, v177);
        v118 = sub_21D094210();
        v119 = sub_21D094550();
        v120 = os_log_type_enabled(v118, v119);
        v121 = *(v0 + 592);
        v122 = *(v0 + 584);
        v123 = *(v0 + 576);
        if (v120)
        {
          bufc = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v202[0] = v194;
          *bufc = 136315138;
          sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0], MEMORY[0x277D29DF0]);
          formatc = v119;
          v124 = sub_21D094790();
          v199 = v117;
          v126 = v125;
          v127 = *(v122 + 8);
          v127(v121, v123);
          v128 = v127;
          v129 = sub_21D05550C(v124, v126, v202);
          v117 = v199;

          *(bufc + 4) = v129;
          _os_log_impl(&dword_21D044000, v118, formatc, "Request failed: %s", bufc, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v194);
          MEMORY[0x223D3CDF0](v194, -1, -1);
          MEMORY[0x223D3CDF0](bufc, -1, -1);
        }

        else
        {

          v141 = *(v122 + 8);
          v141(v121, v123);
          v128 = v141;
        }

        v142 = *(v0 + 600);
        v143 = *(v0 + 576);
        sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
        v144 = swift_allocError();
        v117(v145, v142, v143);
        *(v0 + 504) = v144;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
        sub_21D094520();

        v128(v142, v143);
LABEL_36:

        v149 = sub_21D0941A0();
        sub_21D0941D0();
        v150 = sub_21D094650();

        if (sub_21D094680())
        {
          v151 = *(v0 + 640);
          v152 = *(v0 + 632);
          v153 = *(v0 + 624);

          sub_21D094200();

          if ((*(v152 + 88))(v151, v153) == *MEMORY[0x277D85B00])
          {
            v154 = 0;
            v155 = 0;
            format = "[Error] Interval already ended";
          }

          else
          {
            (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));
            format = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
            v155 = 2;
            v154 = 1;
          }

          v195 = *(v0 + 872);
          v159 = *(v0 + 856);
          v160 = *(v0 + 848);
          v161 = *(v0 + 800);
          bufd = *(v0 + 784);
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v202[0] = v163;
          *v162 = v155;
          *(v162 + 1) = v154;
          *(v162 + 2) = 2082;
          v164 = sub_21D05550C(v160, v159, v202);

          *(v162 + 4) = v164;
          v165 = sub_21D094160();
          _os_signpost_emit_with_name_impl(&dword_21D044000, v149, v150, v165, "requestStream", format, v162, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v163);
          MEMORY[0x223D3CDF0](v163, -1, -1);
          MEMORY[0x223D3CDF0](v162, -1, -1);

          v195(v161, bufd);
        }

        else
        {
          v156 = *(v0 + 872);
          v157 = *(v0 + 800);
          v158 = *(v0 + 784);

          v156(v157, v158);
        }

        v166 = *(v0 + 544);
        v167 = *(v0 + 536);
        v168 = *(v0 + 528);
        sub_21D093640();

        sub_21D06D62C(v168, v167, v166, &qword_27CE544D8, &qword_21D096540);

        v169 = *(v0 + 8);

        return v169();
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v35 = v22;
  v36 = v23;
  sub_21D091B40(&qword_27CE544E0, MEMORY[0x277D71D00], MEMORY[0x277D71D08]);
  sub_21D0937C0();
  buf = v19;
  v193 = (v0 + 408);
  v37 = *(v0 + 744);
  v38 = *(v0 + 736);
  v39 = *(v0 + 728);
  sub_21D093E80();
  if ((*(v37 + 48))(v39, 1, v38) == 1)
  {
    sub_21D04D27C(*(v0 + 728), &qword_27CE54318, &qword_21D095E98);
  }

  else
  {
    (*(*(v0 + 744) + 32))(*(v0 + 752), *(v0 + 728), *(v0 + 736));
    sub_21D094350();
    v40 = MEMORY[0x223D3CEB0]();
    if (v40 == sub_21D094320())
    {
      v180 = *(v0 + 736);
      v181 = *(v0 + 752);
      v41 = *(v0 + 720);
      v42 = *(v0 + 712);
      v176 = *(v0 + 704);
      v178 = *(v0 + 744);
      swift_unknownObjectRetain();
      sub_21D094340();
      sub_21D093A40();
      swift_unknownObjectRelease();
      (*(v42 + 8))(v41, v176);
      (*(v178 + 8))(v181, v180);
    }

    else
    {
      (*(*(v0 + 744) + 8))(*(v0 + 752), *(v0 + 736));
      swift_unknownObjectRelease();
    }
  }

  v43 = *(v0 + 568);
  v44 = *(v0 + 544);
  v45 = *(v0 + 528);
  v46 = sub_21D093670();
  v47 = MEMORY[0x277D41578];
  *(v0 + 432) = v46;
  *(v0 + 440) = v47;
  *(v0 + 408) = v43;
  v48 = swift_task_alloc();
  *(v0 + 912) = v48;
  v48[2] = buf;
  v48[3] = v21;
  v48[4] = v45;
  v48[5] = v0 + 472;
  v48[6] = v196;
  v48[7] = v6;
  v48[8] = v43;
  v48[9] = v44;
  sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);

  if (sub_21D0945A0())
  {
    (*(*(v0 + 688) + 16))(*(v0 + 696), *(v0 + 552), *(v0 + 680));
    v49 = sub_21D094210();
    v50 = sub_21D094570();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v0 + 840);
      bufb = v50;
      v52 = *(v0 + 696);
      v53 = *(v0 + 688);
      v182 = *(v0 + 824);
      formata = *(v0 + 680);
      v54 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v202[0] = v197;
      *v54 = 136315138;
      sub_21D094010();
      v55 = sub_21D092FA0();
      v57 = v56;
      v200(v51, v182);
      (*(v53 + 8))(v52, formata);
      v58 = sub_21D05550C(v55, v57, v202);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_21D044000, v49, bufb, "%s Fallback is enabled", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v197);
      MEMORY[0x223D3CDF0](v197, -1, -1);
      MEMORY[0x223D3CDF0](v54, -1, -1);
    }

    else
    {
      v69 = *(v0 + 696);
      v70 = *(v0 + 688);
      v71 = *(v0 + 680);

      (*(v70 + 8))(v69, v71);
    }

    v72 = *(v0 + 584);
    v73 = *(v0 + 576);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v32 = swift_allocError();
    v75 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_21D0959B0;
    *(v76 + 32) = sub_21D0943F0();
    *(v76 + 40) = v77;
    *(v76 + 48) = 0xD00000000000001FLL;
    *(v76 + 56) = 0x800000021D0971A0;
    sub_21D0900B0(v76);
    swift_setDeallocating();
    sub_21D04D27C(v76 + 32, &qword_27CE542C0, &qword_21D095E28);
    sub_21D093ED0();
    (*(v72 + 104))(v75, *MEMORY[0x277D29DA8], v73);
    swift_willThrow();

    v78 = *(v0 + 904);
    v79 = *(v0 + 896);
    v80 = *(v0 + 776);
    v81 = *(v0 + 768);
    v82 = *(v0 + 760);

    sub_21D058258(v79, v78);
    (*(v81 + 8))(v80, v82);
    __swift_destroy_boxed_opaque_existential_0(v193);
    goto LABEL_19;
  }

  v59 = *(v0 + 840);
  v60 = *(v0 + 824);
  formatb = *(v0 + 672);
  v61 = *(v0 + 528);
  sub_21D094010();
  v198 = sub_21D092FA0();
  bufa = v62;
  *(v0 + 920) = v62;
  v200(v59, v60);
  logMetric(logger:name:startInstant:)(v61 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, 0xD000000000000012, 0x800000021D097180);
  v63 = sub_21D093D00();
  *(v0 + 928) = v63;
  *(v0 + 936) = *(v63 - 8);
  v64 = swift_task_alloc();
  *(v0 + 944) = v64;
  sub_21D093CF0();
  sub_21D094000();
  v65 = sub_21D093E70();
  v66 = *(v65 - 8);
  v67 = (*(v66 + 48))(formatb, 1, v65);
  v68 = *(v0 + 672);
  if (v67 == 1)
  {
    sub_21D04D27C(*(v0 + 672), &qword_27CE542F8, &qword_21D095E78);
  }

  else
  {
    sub_21D093E50();
    (*(v66 + 8))(v68, v65);
  }

  v170 = v67 == 1;
  v171 = *(v0 + 776);
  v172 = *(v0 + 552);
  v173 = *(v0 + 528);
  LOBYTE(v202[0]) = v170;
  sub_21D093CE0();
  v174 = swift_task_alloc();
  *(v0 + 952) = v174;
  v174[2] = v171;
  v174[3] = v173;
  v174[4] = v198;
  v174[5] = bufa;
  v174[6] = v193;
  v174[7] = v35;
  v174[8] = v36;
  v174[9] = v172;
  v174[10] = &unk_21D096560;
  v174[11] = v48;
  v175 = swift_task_alloc();
  *(v0 + 960) = v175;
  *v175 = v0;
  v175[1] = sub_21D06480C;

  return sub_21D07BC88(v175, v198, bufa, 0, v64, &unk_21D096570, v174);
}

uint64_t sub_21D06480C()
{
  *(*v1 + 968) = v0;

  if (v0)
  {
    v2 = sub_21D064D60;
  }

  else
  {
    v2 = sub_21D06495C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D06495C()
{
  v35 = v0;
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[113];
  v5 = v0[112];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[95];

  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 51);
  sub_21D058258(v5, v4);
  (*(v7 + 8))(v6, v8);

  v9 = sub_21D0941A0();
  sub_21D0941D0();
  v10 = sub_21D094650();

  if (sub_21D094680())
  {
    v11 = v0[80];
    v12 = v0[79];
    v13 = v0[78];

    sub_21D094200();

    if ((*(v12 + 88))(v11, v13) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[79] + 8))(v0[80], v0[78]);
      format = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
      v15 = 2;
      v14 = 1;
    }

    v33 = v0[109];
    v19 = v0[107];
    v20 = v0[106];
    v21 = v0[100];
    v32 = v0[98];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34 = v23;
    *v22 = v15;
    *(v22 + 1) = v14;
    *(v22 + 2) = 2082;
    v24 = sub_21D05550C(v20, v19, &v34);

    *(v22 + 4) = v24;
    v25 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v9, v10, v25, "requestStream", format, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223D3CDF0](v23, -1, -1);
    MEMORY[0x223D3CDF0](v22, -1, -1);

    v33(v21, v32);
  }

  else
  {
    v16 = v0[109];
    v17 = v0[100];
    v18 = v0[98];

    v16(v17, v18);
  }

  v26 = v0[68];
  v27 = v0[67];
  v28 = v0[66];
  sub_21D093640();

  sub_21D06D62C(v28, v27, v26, &qword_27CE544D8, &qword_21D096540);

  v29 = v0[1];

  return v29();
}

char *sub_21D064D60()
{
  v111 = v0;
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 968);
  v5 = *(v0 + 904);
  v6 = *(v0 + 896);
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v9 = *(v0 + 760);

  sub_21D058258(v6, v5);
  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  *(v0 + 480) = v4;
  v10 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 616);
    v12 = *(v0 + 608);
    v13 = *(v0 + 584);
    v14 = *(v0 + 576);

    (*(v13 + 32))(v12, v11, v14);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v15 = swift_allocError();
    (*(v13 + 16))(v16, v12, v14);
    *(v0 + 520) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
    sub_21D094520();
    (*(v13 + 8))(v12, v14);
    v17 = *(v0 + 480);
LABEL_17:

    goto LABEL_18;
  }

  *(v0 + 488) = v4;
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
  if (swift_dynamicCast())
  {

    sub_21D046D78((v0 + 208), v0 + 248);
    sub_21D0590D0(v0 + 248, v0 + 288);
    sub_21D0590D0(v0 + 248, v0 + 328);
    sub_21D0590D0(v0 + 248, v0 + 368);
    v19 = sub_21D094210();
    v20 = sub_21D094550();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v110 = v22;
      *v21 = 136315650;
      __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
      v23 = sub_21D094090();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0((v0 + 288));
      v26 = sub_21D05550C(v23, v25, &v110);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2048;
      __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
      v27 = sub_21D093520();
      __swift_destroy_boxed_opaque_existential_0((v0 + 328));
      *(v21 + 14) = v27;
      *(v21 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
      v28 = sub_21D093530();
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_0((v0 + 368));
      v31 = sub_21D05550C(v28, v30, &v110);

      *(v21 + 24) = v31;
      _os_log_impl(&dword_21D044000, v19, v20, "Request failed: %s %ld %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v22, -1, -1);
      MEMORY[0x223D3CDF0](v21, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 328));

      __swift_destroy_boxed_opaque_existential_0((v0 + 288));
      __swift_destroy_boxed_opaque_existential_0((v0 + 368));
    }

    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v57 = swift_allocError();
    v59 = v58;
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    sub_21D093530();
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    sub_21D094090();
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    result = sub_21D093520();
    if (!__OFADD__(result, 10000))
    {
      v109 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21D0959B0;
      *(inited + 32) = sub_21D0943F0();
      *(inited + 40) = v61;
      v62 = *(v0 + 272);
      v63 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), v62);
      *(inited + 48) = MEMORY[0x223D3C1D0](v62, *(v63 + 8));
      *(inited + 56) = v64;
      sub_21D0900B0(inited);
      swift_setDeallocating();
      sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
      v65 = *(v0 + 272);
      v66 = __swift_project_boxed_opaque_existential_1((v0 + 248), v65);
      v67 = *(v65 - 8);
      v68 = swift_task_alloc();
      (*(v67 + 16))(v68, v66, v65);
      if (sub_21D0947A0())
      {
        (*(v67 + 8))(v68, v65);
      }

      else
      {
        swift_allocError();
        (*(v67 + 32))(v74, v68, v65);
      }

      v75 = *(v0 + 584);
      v76 = *(v0 + 576);
      sub_21D093EC0();

      (*(v75 + 104))(v59, *MEMORY[0x277D29DA8], v76);
      *(v0 + 512) = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
      sub_21D094520();
      __swift_destroy_boxed_opaque_existential_0((v0 + 248));
      v17 = *(v0 + 488);
      goto LABEL_17;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v32 = sub_21D092F10();
  *(v0 + 496) = v4;
  v33 = v4;
  sub_21D094430();
  v34 = [v32 domain];
  sub_21D0943F0();

  result = [v32 code];
  if (__OFADD__(result, 20000))
  {
    __break(1u);
    goto LABEL_28;
  }

  v36 = *(v0 + 584);
  v106 = *(v0 + 576);
  v108 = *(v0 + 592);
  v101 = *(v0 + 600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_21D0959B0;
  *(v37 + 32) = sub_21D0943F0();
  *(v37 + 40) = v38;
  v39 = [v32 description];
  v40 = sub_21D0943F0();
  v42 = v41;

  *(v37 + 48) = v40;
  *(v37 + 56) = v42;
  sub_21D0900B0(v37);
  swift_setDeallocating();
  sub_21D04D27C(v37 + 32, &qword_27CE542C0, &qword_21D095E28);
  v43 = v32;
  sub_21D093EC0();
  v44 = v106;
  (*(v36 + 104))(v101, *MEMORY[0x277D29DA8], v106);
  v107 = *(v36 + 16);
  v107(v108, v101, v44);
  v45 = sub_21D094210();
  v46 = sub_21D094550();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 592);
  v49 = *(v0 + 584);
  v50 = *(v0 + 576);
  if (v47)
  {
    bufa = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v110 = v102;
    *bufa = 136315138;
    sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0], MEMORY[0x277D29DF0]);
    v98 = v46;
    v51 = sub_21D094790();
    v104 = v43;
    v53 = v52;
    v54 = *(v49 + 8);
    v54(v48, v50);
    v55 = v54;
    v56 = sub_21D05550C(v51, v53, &v110);
    v43 = v104;

    *(bufa + 4) = v56;
    _os_log_impl(&dword_21D044000, v45, v98, "Request failed: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v102);
    MEMORY[0x223D3CDF0](v102, -1, -1);
    MEMORY[0x223D3CDF0](bufa, -1, -1);
  }

  else
  {

    v69 = *(v49 + 8);
    v69(v48, v50);
    v55 = v69;
  }

  v70 = *(v0 + 600);
  v71 = *(v0 + 576);
  sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  v72 = swift_allocError();
  v107(v73, v70, v71);
  *(v0 + 504) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
  sub_21D094520();

  v55(v70, v71);
LABEL_18:

  v77 = sub_21D0941A0();
  sub_21D0941D0();
  v78 = sub_21D094650();

  if (sub_21D094680())
  {
    v79 = *(v0 + 640);
    v80 = *(v0 + 632);
    v81 = *(v0 + 624);

    sub_21D094200();

    if ((*(v80 + 88))(v79, v81) == *MEMORY[0x277D85B00])
    {
      v82 = 0;
      v83 = 0;
      buf = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 632) + 8))(*(v0 + 640), *(v0 + 624));
      buf = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
      v83 = 2;
      v82 = 1;
    }

    v105 = *(v0 + 872);
    v87 = *(v0 + 856);
    v88 = *(v0 + 848);
    v89 = *(v0 + 800);
    v103 = *(v0 + 784);
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v110 = v91;
    *v90 = v83;
    *(v90 + 1) = v82;
    *(v90 + 2) = 2082;
    v92 = sub_21D05550C(v88, v87, &v110);

    *(v90 + 4) = v92;
    v93 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v77, v78, v93, "requestStream", buf, v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
    MEMORY[0x223D3CDF0](v91, -1, -1);
    MEMORY[0x223D3CDF0](v90, -1, -1);

    v105(v89, v103);
  }

  else
  {
    v84 = *(v0 + 872);
    v85 = *(v0 + 800);
    v86 = *(v0 + 784);

    v84(v85, v86);
  }

  v94 = *(v0 + 544);
  v95 = *(v0 + 536);
  v96 = *(v0 + 528);
  sub_21D093640();

  sub_21D06D62C(v96, v95, v94, &qword_27CE544D8, &qword_21D096540);

  v97 = *(v0 + 8);

  return v97();
}

uint64_t sub_21D065BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 776) = v34;
  *(v8 + 768) = v33;
  *(v8 + 760) = a8;
  *(v8 + 752) = a7;
  *(v8 + 744) = a6;
  *(v8 + 736) = a5;
  *(v8 + 728) = a4;
  *(v8 + 720) = a3;
  *(v8 + 712) = a2;
  v9 = sub_21D0933E0();
  *(v8 + 784) = v9;
  *(v8 + 792) = *(v9 - 8);
  *(v8 + 800) = swift_task_alloc();
  v10 = sub_21D0937B0();
  *(v8 + 808) = v10;
  *(v8 + 816) = *(v10 - 8);
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();
  v11 = sub_21D093420();
  *(v8 + 840) = v11;
  *(v8 + 848) = *(v11 - 8);
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 880) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54420, &qword_21D096430);
  *(v8 + 888) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54480, &qword_21D096498);
  *(v8 + 896) = swift_task_alloc();
  sub_21D093C30();
  *(v8 + 904) = swift_task_alloc();
  v12 = sub_21D093C50();
  *(v8 + 912) = v12;
  *(v8 + 920) = *(v12 - 8);
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = swift_task_alloc();
  v13 = sub_21D0935E0();
  *(v8 + 944) = v13;
  *(v8 + 952) = *(v13 - 8);
  *(v8 + 960) = swift_task_alloc();
  v14 = sub_21D093820();
  *(v8 + 968) = v14;
  *(v8 + 976) = *(v14 - 8);
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54478, &qword_21D096490);
  *(v8 + 1008) = swift_task_alloc();
  *(v8 + 1016) = swift_task_alloc();
  v15 = sub_21D093570();
  *(v8 + 1024) = v15;
  *(v8 + 1032) = *(v15 - 8);
  *(v8 + 1040) = swift_task_alloc();
  *(v8 + 1048) = swift_task_alloc();
  v16 = sub_21D093840();
  *(v8 + 1056) = v16;
  *(v8 + 1064) = *(v16 - 8);
  *(v8 + 1072) = swift_task_alloc();
  *(v8 + 1080) = swift_task_alloc();
  v17 = sub_21D093630();
  *(v8 + 1088) = v17;
  *(v8 + 1096) = *(v17 - 8);
  *(v8 + 1104) = swift_task_alloc();
  *(v8 + 1112) = swift_task_alloc();
  *(v8 + 1120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54260, &unk_21D095CC0);
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54248, &unk_21D095CA0);
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  v18 = sub_21D0934B0();
  *(v8 + 1160) = v18;
  *(v8 + 1168) = *(v18 - 8);
  *(v8 + 1176) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544E8, &unk_21D096588);
  *(v8 + 1184) = v19;
  *(v8 + 1192) = *(v19 - 8);
  *(v8 + 1200) = swift_task_alloc();
  v20 = sub_21D093EB0();
  *(v8 + 1208) = v20;
  *(v8 + 1216) = *(v20 - 8);
  *(v8 + 1224) = swift_task_alloc();
  *(v8 + 1232) = swift_task_alloc();
  v21 = sub_21D092FC0();
  *(v8 + 1240) = v21;
  *(v8 + 1248) = *(v21 - 8);
  *(v8 + 1256) = swift_task_alloc();
  v22 = sub_21D093A80();
  *(v8 + 1264) = v22;
  *(v8 + 1272) = *(v22 - 8);
  *(v8 + 1280) = swift_task_alloc();
  *(v8 + 1288) = swift_task_alloc();
  *(v8 + 1296) = swift_task_alloc();
  v23 = sub_21D0941C0();
  *(v8 + 1304) = v23;
  *(v8 + 1312) = *(v23 - 8);
  *(v8 + 1320) = swift_task_alloc();
  *(v8 + 1328) = swift_task_alloc();
  v24 = sub_21D094180();
  *(v8 + 1336) = v24;
  *(v8 + 1344) = *(v24 - 8);
  *(v8 + 1352) = swift_task_alloc();
  *(v8 + 1360) = swift_task_alloc();
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54250, &unk_21D095CB0);
  *(v8 + 1392) = swift_task_alloc();
  v25 = sub_21D093460();
  *(v8 + 1400) = v25;
  *(v8 + 1408) = *(v25 - 8);
  *(v8 + 1416) = swift_task_alloc();
  *(v8 + 1424) = swift_task_alloc();
  *(v8 + 1432) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  *(v8 + 1440) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  v26 = MEMORY[0x277D41510];
  *(v8 + 1472) = *MEMORY[0x277D41518];
  *(v8 + 1476) = *v26;
  *(v8 + 1480) = *MEMORY[0x277D41500];
  v27 = MEMORY[0x277D85B00];
  *(v8 + 1484) = *MEMORY[0x277D41508];
  *(v8 + 1488) = *v27;
  *(v8 + 1492) = *MEMORY[0x277D414E0];
  v28 = MEMORY[0x277D71B68];
  *(v8 + 1496) = *MEMORY[0x277D71B50];
  *(v8 + 1500) = *v28;
  *(v8 + 1448) = 0;
  v29 = swift_task_alloc();
  *(v8 + 1456) = v29;
  *v29 = v8;
  v29[1] = sub_21D0665F4;
  v30 = *(v8 + 1392);

  return sub_21D059134(v30);
}

uint64_t sub_21D0665F4()
{
  *(*v1 + 1464) = v0;

  if (v0)
  {
    v2 = sub_21D0699C0;
  }

  else
  {
    v2 = sub_21D066708;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D066708()
{
  v430 = v0;
  v1 = v0;
  v2 = v0[176];
  v3 = v1[175];
  v4 = v1[174];
  v5 = (*(v2 + 48))(v4, 1, v3);
  v6 = v1[178];
  v7 = v1[177];
  if (v5 == 1)
  {

    sub_21D04D27C(v4, &qword_27CE54250, &unk_21D095CB0);

    v8 = v1[1];
LABEL_37:

    return v8();
  }

  v9 = *(v1 + 368);
  (*(v2 + 32))(v1[178], v4, v3);
  (*(v2 + 16))(v7, v6, v3);
  v10 = (*(v2 + 88))(v7, v3);
  v427 = v1;
  if (v10 == v9)
  {
    (*(v1[176] + 96))(v1[177], v1[175]);

    v11 = sub_21D0941A0();
    sub_21D0941D0();
    v12 = sub_21D094650();
    if (sub_21D094680())
    {
      v13 = *(v1 + 372);
      v14 = v1[166];
      v15 = v1[164];
      v16 = v1[163];

      sub_21D094200();

      if ((*(v15 + 88))(v14, v16) == v13)
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[164] + 8))(v1[166], v1[163]);
        v17 = "token received";
      }

      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v11, v12, v37, "requestStream", v17, v36, 2u);
      MEMORY[0x223D3CDF0](v36, -1, -1);
    }

    v38 = v1[173];
    v39 = v1[168];
    v40 = v1[167];

    v399 = *(v39 + 8);
    v399(v38, v40);
    sub_21D0941A0();
    sub_21D094150();

    v41 = sub_21D0941A0();
    v42 = sub_21D094660();

    if (sub_21D094680())
    {
      v43 = v1[95];
      v44 = v1[94];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v429[0] = v46;
      *v45 = 136446210;
      *(v45 + 4) = sub_21D05550C(v44, v43, v429);
      v47 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v41, v42, v47, "requestStream", "extend token requestIdentifier=%{public, signpost.description=attribute,public}s)", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x223D3CDF0](v46, -1, -1);
      MEMORY[0x223D3CDF0](v45, -1, -1);
    }

    v48 = v1[172];
    v49 = v1[167];
    v390 = v1[183];
    v50 = v1[157];
    v51 = v1[156];
    v52 = v1[155];
    v53 = v1[93];
    (*(v1[168] + 16))(v1[171], v48, v49);
    sub_21D0941F0();
    swift_allocObject();
    v54 = sub_21D0941E0();
    v399(v48, v49);
    *v53 = v54;

    sub_21D092FB0();
    sub_21D092FA0();
    (*(v51 + 8))(v50, v52);
    v1[75] = sub_21D093B40();
    v1[76] = MEMORY[0x277D71D70];
    __swift_allocate_boxed_opaque_existential_1(v1 + 72);

    sub_21D093B30();
    sub_21D093A90();
    sub_21D093660();

    sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38], MEMORY[0x277D71D40]);
    v55 = sub_21D0937D0();
    if (v390)
    {
      v57 = v1[178];
      v58 = v1[176];
      v59 = v1[175];
      v60 = v1[162];
      v61 = v1[159];
      v62 = v1[158];

LABEL_35:
      (*(v61 + 8))(v60, v62);
      (*(v58 + 8))(v57, v59);
      goto LABEL_36;
    }

    v63 = v1[176];
    v410 = v1[175];
    v419 = v1[178];
    v64 = v1[159];
    v391 = v1[158];
    v400 = v1[162];
    v65 = v1[154];
    v66 = v1[153];
    v67 = v1[152];
    v68 = v427[151];
    v69 = v427[150];
    v70 = v427[149];
    v384 = v427[148];
    v71 = v55;
    v72 = v56;
    sub_21D055C20(v55, v56);
    MEMORY[0x223D3BF70](v71, v72);
    (*(v67 + 16))(v66, v65, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
    sub_21D094510();
    sub_21D04FE3C(v71, v72);
    (*(v70 + 8))(v69, v384);
    (*(v67 + 8))(v65, v68);
    v73 = v427;
    (*(v64 + 8))(v400, v391);
    (*(v63 + 8))(v419, v410);
    goto LABEL_20;
  }

  if (v10 == *(v1 + 369))
  {
    v18 = v1[181];
    v19 = v1[177];
    v20 = v1[100];
    v21 = v1[99];
    v22 = v1[98];
    (*(v1[176] + 96))(v19, v1[175]);
    (*(v21 + 32))(v20, v19, v22);
    if (!v18)
    {
      if (qword_27CE53E98 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_107;
    }

    v23 = v1[181];
    while (1)
    {
      v108 = v1[183];
      v109 = v1[100];

      v110 = sub_21D0525F4(v109);
      if (v108)
      {
        v57 = v1[178];
        v58 = v1[176];
        v59 = v1[175];
        v60 = v1[100];
        v61 = v1[99];
        v62 = v1[98];

        goto LABEL_35;
      }

      v111 = v110;
      v367 = v23;
      v375 = *(v110 + 16);
      if (!v375)
      {
        break;
      }

      v112 = 0;
      v113 = v110 + 32;
      v371 = v110;
      while (v112 < *(v111 + 16))
      {
        sub_21D0590D0(v113, (v427 + 2));
        sub_21D093A90();
        sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38], MEMORY[0x277D71D40]);
        v114 = sub_21D0937D0();
        v116 = v115;
        v412 = v427[158];
        v420 = v427[160];
        v117 = v427[154];
        v118 = v427[153];
        v119 = v427[152];
        v120 = v427[150];
        v121 = v427[149];
        v392 = v427[148];
        v401 = v427[159];
        ++v112;
        v379 = v427[151];
        sub_21D055C20(v114, v115);
        MEMORY[0x223D3BF70](v114, v116);
        v1 = v379;
        (*(v119 + 16))(v118, v117, v379);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
        sub_21D094510();
        sub_21D04FE3C(v114, v116);
        (*(v121 + 8))(v120, v392);
        (*(v119 + 8))(v117, v379);
        (*(v401 + 8))(v420, v412);
        v113 += 40;
        v111 = v371;
        if (v375 == v112)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_107:
      swift_once();
LABEL_28:
      v95 = qword_27CE540E8;
      v96 = qword_27CE53EA0;

      if (v96 != -1)
      {
        swift_once();
      }

      v97 = qword_27CE540F0;
      type metadata accessor for MediaProcessor(0);
      v23 = swift_allocObject();
      v98 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_logger;
      v99 = qword_281221778;

      if (v99 != -1)
      {
        swift_once();
      }

      v100 = v1[91];
      v101 = v1[90];
      v102 = sub_21D094230();
      v103 = __swift_project_value_buffer(v102, qword_2812217C8);
      (*(*(v102 - 8) + 16))(v23 + v98, v103, v102);
      v104 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
      v105 = MEMORY[0x277D84F90];
      *(v23 + v104) = sub_21D08FE94(MEMORY[0x277D84F90]);
      v106 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks;
      *(v23 + v106) = sub_21D08FF98(v105);
      v107 = (v23 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID);
      *v107 = v101;
      v107[1] = v100;
      *(v23 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedAudioFormats) = v95;
      *(v23 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedImageFormats) = v97;
      *(v23 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming) = 1;
    }

LABEL_44:
    v73 = v427;
    v122 = v427[178];
    v123 = v427[176];
    v124 = v427[175];
    v125 = v427[100];
    v126 = v427[99];
    v127 = v427[98];
    v74 = v367;

    (*(v126 + 8))(v125, v127);
    (*(v123 + 8))(v122, v124);
    goto LABEL_21;
  }

  if (v10 == *(v1 + 370))
  {
    v24 = v1[177];
    v25 = v1[147];
    v26 = v1[146];
    v27 = v1[145];
    v28 = v1[144];
    v29 = v1[143];
    v30 = v1[137];
    v409 = v1[142];
    v418 = v1[136];
    (*(v1[176] + 96))(v24, v1[175]);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54258, &qword_21D0964C0);
    v32 = v1;
    v33 = *(v31 + 48);
    v34 = *(v31 + 64);
    (*(v26 + 32))(v25, v24, v27);
    sub_21D05B208(v24 + v33, v28, &qword_27CE54248, &unk_21D095CA0);
    sub_21D05B208(v24 + v34, v409, &qword_27CE54260, &unk_21D095CC0);
    sub_21D05B270(v28, v29, &qword_27CE54248, &unk_21D095CA0);
    if ((*(v30 + 48))(v29, 1, v418) == 1)
    {
      sub_21D04D27C(v32[143], &qword_27CE54248, &unk_21D095CA0);
      v35 = v32[183];
      v1 = v32;
      goto LABEL_82;
    }

    v128 = v32[140];
    v129 = v32[139];
    v130 = v32[137];
    v131 = v32[136];
    (*(v130 + 32))(v128, v32[143], v131);
    v132 = *(v130 + 16);
    v132(v129, v128, v131);

    v133 = sub_21D094210();
    v134 = sub_21D094550();

    v135 = os_log_type_enabled(v133, v134);
    v136 = v32[139];
    if (v135)
    {
      v137 = v32[138];
      v138 = v32[137];
      v139 = v32[136];
      v402 = v32[94];
      v413 = v32[95];
      v140 = swift_slowAlloc();
      v421 = swift_slowAlloc();
      v429[0] = v421;
      *v140 = 136315394;
      *(v140 + 4) = sub_21D05550C(v402, v413, v429);
      *(v140 + 12) = 2082;
      v132(v137, v136, v139);
      v141 = sub_21D094430();
      v143 = v142;
      v414 = *(v138 + 8);
      v414(v136, v139);
      v144 = sub_21D05550C(v141, v143, v429);

      *(v140 + 14) = v144;
      _os_log_impl(&dword_21D044000, v133, v134, "%s %{public}s", v140, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v421, -1, -1);
      MEMORY[0x223D3CDF0](v140, -1, -1);
    }

    else
    {
      v161 = v32[137];
      v162 = v32[136];

      v414 = *(v161 + 8);
      v414(v136, v162);
    }

    v1 = v32;
    v163 = v32[129];
    v164 = v32[128];
    v165 = v32[127];
    sub_21D093610();
    v166 = *(v163 + 48);
    if (v166(v165, 1, v164) == 1)
    {
      v167 = v32[128];
      v168 = v32[126];
      sub_21D04D27C(v32[127], &qword_27CE54478, &qword_21D096490);
      sub_21D093620();
      if (v166(v168, 1, v167) == 1)
      {
        v169 = v32[124];
        v170 = v32[122];
        v171 = v32[121];
        sub_21D04D27C(v32[126], &qword_27CE54478, &qword_21D096490);
        sub_21D08FD64(MEMORY[0x277D84F90]);
        sub_21D093810();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
        v172 = (*(v170 + 80) + 32) & ~*(v170 + 80);
        v173 = swift_allocObject();
        *(v173 + 16) = xmmword_21D0959B0;
        (*(v170 + 16))(v173 + v172, v169, v171);
        sub_21D093830();
        (*(v170 + 8))(v169, v171);
      }

      else
      {
        v230 = v32[130];
        v231 = v32[129];
        v232 = v32[128];
        v233 = v32[123];
        v234 = v32[122];
        v235 = v32[121];
        (*(v231 + 32))(v230, v32[126], v232);
        sub_21D093550();
        sub_21D093560();
        sub_21D08FD64(MEMORY[0x277D84F90]);
        v1 = v427;
        sub_21D093810();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
        v236 = (*(v234 + 80) + 32) & ~*(v234 + 80);
        v237 = swift_allocObject();
        *(v237 + 16) = xmmword_21D0959B0;
        (*(v234 + 16))(v237 + v236, v233, v235);
        sub_21D093600();
        sub_21D093830();
        (*(v234 + 8))(v233, v235);
        (*(v231 + 8))(v230, v232);
      }
    }

    else
    {
      v174 = v32[131];
      v175 = v32[129];
      v176 = v32[128];
      v177 = v32[127];
      v178 = v32[125];
      v179 = v32[122];
      v403 = v1[121];
      (*(v175 + 32))(v174, v177, v176);
      sub_21D093550();
      sub_21D093560();
      sub_21D08FD64(MEMORY[0x277D84F90]);
      v1 = v427;
      sub_21D093810();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
      v180 = (*(v179 + 80) + 32) & ~*(v179 + 80);
      v181 = swift_allocObject();
      *(v181 + 16) = xmmword_21D0959B0;
      (*(v179 + 16))(v181 + v180, v178, v403);
      sub_21D093600();
      sub_21D093830();
      (*(v179 + 8))(v178, v403);
      (*(v175 + 8))(v174, v176);
    }

    v238 = v1[158];
    (*(v1[133] + 16))(v1[134], v1[135], v1[132]);
    v239 = sub_21D093B00();
    v240 = MEMORY[0x277D71D60];
    v1[50] = v239;
    v1[51] = v240;
    __swift_allocate_boxed_opaque_existential_1(v1 + 47);

    sub_21D093AF0();
    v1[45] = v238;
    v1[46] = sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38], MEMORY[0x277D71D40]);
    __swift_allocate_boxed_opaque_existential_1(v1 + 42);
    sub_21D093A90();
    if (qword_281221488 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v241 = (v1 + 42);
    if (byte_281221490 == 1)
    {
      sub_21D0590D0(v241, (v1 + 62));

      v242 = sub_21D094210();
      v243 = sub_21D094560();

      if (os_log_type_enabled(v242, v243))
      {
        v244 = v1[95];
        v245 = v1[94];
        v246 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        v429[0] = v247;
        *v246 = 136315394;
        *(v246 + 4) = sub_21D05550C(v245, v244, v429);
        *(v246 + 12) = 2082;
        sub_21D0590D0((v1 + 62), (v1 + 67));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
        v248 = sub_21D094430();
        v250 = v249;
        __swift_destroy_boxed_opaque_existential_0(v1 + 62);
        v251 = sub_21D05550C(v248, v250, v429);

        *(v246 + 14) = v251;
        v252 = "%s Emitting TG event: %{public}s";
LABEL_75:
        _os_log_impl(&dword_21D044000, v242, v243, v252, v246, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v247, -1, -1);
        MEMORY[0x223D3CDF0](v246, -1, -1);

LABEL_79:
        v260 = v1[183];
        v261 = sub_21D0937D0();
        if (v260)
        {
          v428 = v1[178];
          v263 = v1[176];
          v396 = v1[147];
          v405 = v1[175];
          v264 = v1[146];
          v381 = v1[144];
          v386 = v1[145];
          v265 = v1[142];
          v266 = v1[140];
          v267 = v1[136];
          v268 = v1[135];
          v269 = v1[133];
          v270 = v1[132];

          (*(v269 + 8))(v268, v270);
          v414(v266, v267);
          sub_21D04D27C(v265, &qword_27CE54260, &unk_21D095CC0);
          sub_21D04D27C(v381, &qword_27CE54248, &unk_21D095CA0);
          (*(v264 + 8))(v396, v386);
          (*(v263 + 8))(v428, v405);
          __swift_destroy_boxed_opaque_existential_0(v1 + 42);
          goto LABEL_36;
        }

        v271 = v1[154];
        v272 = v1[153];
        v273 = v1[152];
        v274 = v1[151];
        v275 = v1[150];
        v276 = v1[149];
        v424 = v1[140];
        v387 = v1[135];
        v277 = v1[133];
        v377 = v1[148];
        v382 = v1[132];
        v406 = v1[136];
        v278 = v261;
        v279 = v262;
        sub_21D055C20(v261, v262);
        MEMORY[0x223D3BF70](v278, v279);
        (*(v273 + 16))(v272, v271, v274);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
        sub_21D094510();
        sub_21D04FE3C(v278, v279);
        (*(v276 + 8))(v275, v377);
        (*(v273 + 8))(v271, v274);
        (*(v277 + 8))(v387, v382);
        v414(v424, v406);
        __swift_destroy_boxed_opaque_existential_0(v1 + 42);
        v35 = 0;
LABEL_82:
        v280 = v1[141];
        v281 = v1[119];
        v282 = v1[118];
        sub_21D05B270(v1[142], v280, &qword_27CE54260, &unk_21D095CC0);
        if ((*(v281 + 48))(v280, 1, v282) == 1)
        {
          v283 = v1[178];
          v284 = v1[176];
          v285 = v1[175];
          v286 = v1[147];
          v287 = v427[146];
          v288 = v427[145];
          v289 = v427[144];
          v290 = v427[141];
          sub_21D04D27C(v427[142], &qword_27CE54260, &unk_21D095CC0);
          sub_21D04D27C(v289, &qword_27CE54248, &unk_21D095CA0);
          (*(v287 + 8))(v286, v288);
          v73 = v427;
          (*(v284 + 8))(v283, v285);
          sub_21D04D27C(v290, &qword_27CE54260, &unk_21D095CC0);
          goto LABEL_20;
        }

        v425 = v35;
        v291 = v1[112];
        (*(v1[119] + 32))(v1[120], v1[141], v1[118]);
        sub_21D0935B0();
        v292 = sub_21D0935A0();
        v293 = *(v292 - 8);
        v294 = (*(v293 + 48))(v291, 1, v292);
        v295 = v1[112];
        if (v294 == 1)
        {
          sub_21D04D27C(v1[112], &qword_27CE54480, &qword_21D096498);
        }

        else
        {
          sub_21D093590();
          (*(v293 + 8))(v295, v292);
        }

        sub_21D093C20();
        sub_21D0935C0();
        sub_21D093580();
        sub_21D0932D0();
        sub_21D094430();
        v296 = sub_21D0935D0();
        v297 = *(v296 + 16);
        if (v297)
        {
          v298 = v1 + 88;
          v1[88] = MEMORY[0x277D84F90];
          v299 = v296;
          sub_21D08FAFC(0, v297, 0);
          v300 = v299;
          v301 = v1[88];
          v302 = *(*v298 + 16);
          v303 = 32;
          do
          {
            v304 = *(v300 + v303);
            *v298 = v301;
            v305 = *(v301 + 24);
            if (v302 >= v305 >> 1)
            {
              sub_21D08FAFC((v305 > 1), v302 + 1, 1);
              v300 = v299;
              v301 = *v298;
            }

            *(v301 + 16) = v302 + 1;
            *(v301 + 8 * v302 + 32) = v304;
            v303 += 4;
            ++v302;
            --v297;
          }

          while (v297);
        }

        v306 = v427[158];
        v307 = v427[117];
        v308 = v427[116];
        v309 = v427[115];
        v310 = v427[114];
        sub_21D0900B0(MEMORY[0x277D84F90]);
        sub_21D093C40();
        (*(v309 + 16))(v308, v307, v310);
        v311 = sub_21D093710();
        v312 = MEMORY[0x277D719C8];
        v427[20] = v311;
        v427[21] = v312;
        __swift_allocate_boxed_opaque_existential_1(v427 + 17);

        sub_21D093700();
        v427[15] = v306;
        v427[16] = sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38], MEMORY[0x277D71D40]);
        __swift_allocate_boxed_opaque_existential_1(v427 + 12);
        sub_21D093A90();
        if (qword_281221488 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v313 = (v427 + 12);
        if (byte_281221490)
        {
          sub_21D0590D0(v313, (v427 + 32));

          v314 = sub_21D094210();
          v315 = sub_21D094560();

          if (os_log_type_enabled(v314, v315))
          {
            v316 = v427[95];
            v317 = v427[94];
            v318 = swift_slowAlloc();
            v319 = swift_slowAlloc();
            v429[0] = v319;
            *v318 = 136315394;
            *(v318 + 4) = sub_21D05550C(v317, v316, v429);
            *(v318 + 12) = 2082;
            sub_21D0590D0((v427 + 32), (v427 + 37));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
            v320 = sub_21D094430();
            v322 = v321;
            __swift_destroy_boxed_opaque_existential_0(v427 + 32);
            v323 = sub_21D05550C(v320, v322, v429);

            *(v318 + 14) = v323;
            v324 = "%s Emitting TG event: %{public}s";
LABEL_99:
            _os_log_impl(&dword_21D044000, v314, v315, v324, v318, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x223D3CDF0](v319, -1, -1);
            MEMORY[0x223D3CDF0](v318, -1, -1);

LABEL_103:
            v332 = sub_21D0937D0();
            if (!v425)
            {
              v345 = v332;
              v346 = v333;
              v408 = v427[176];
              v417 = v427[175];
              v426 = v427[178];
              v347 = v427[154];
              v348 = v427[153];
              v349 = v427[152];
              v350 = v427[151];
              v351 = v427[150];
              v352 = v427[149];
              v357 = v427[148];
              v389 = v427[145];
              v398 = v427[147];
              v378 = v427[144];
              v383 = v427[146];
              v370 = v427[120];
              v374 = v427[142];
              v353 = v427[119];
              v366 = v427[118];
              v363 = v427[117];
              v354 = v427[115];
              v360 = v427[114];
              sub_21D055C20(v332, v333);
              MEMORY[0x223D3BF70](v345, v346);
              (*(v349 + 16))(v348, v347, v350);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
              sub_21D094510();
              sub_21D04FE3C(v345, v346);
              (*(v352 + 8))(v351, v357);
              (*(v349 + 8))(v347, v350);
              (*(v354 + 8))(v363, v360);
              v73 = v427;
              (*(v353 + 8))(v370, v366);
              sub_21D04D27C(v374, &qword_27CE54260, &unk_21D095CC0);
              sub_21D04D27C(v378, &qword_27CE54248, &unk_21D095CA0);
              (*(v383 + 8))(v398, v389);
              (*(v408 + 8))(v426, v417);
              __swift_destroy_boxed_opaque_existential_0(v427 + 12);
              goto LABEL_20;
            }

            v334 = v427[176];
            v407 = v427[175];
            v416 = v427[178];
            v335 = v427[146];
            v388 = v427[145];
            v397 = v427[147];
            v336 = v427[144];
            v337 = v427[142];
            v338 = v427[120];
            v339 = v427[119];
            v340 = v427[118];
            v341 = v427[117];
            v342 = v427[115];
            v343 = v427[114];

            v344 = v341;
            v1 = v427;
            (*(v342 + 8))(v344, v343);
            (*(v339 + 8))(v338, v340);
            sub_21D04D27C(v337, &qword_27CE54260, &unk_21D095CC0);
            sub_21D04D27C(v336, &qword_27CE54248, &unk_21D095CA0);
            (*(v335 + 8))(v397, v388);
            (*(v334 + 8))(v416, v407);
            __swift_destroy_boxed_opaque_existential_0(v427 + 12);
LABEL_36:

            v8 = v1[1];
            goto LABEL_37;
          }

          v331 = v427 + 32;
        }

        else
        {
          sub_21D0590D0(v313, (v427 + 22));

          v314 = sub_21D094210();
          v315 = sub_21D094560();

          if (os_log_type_enabled(v314, v315))
          {
            v325 = v427[95];
            v326 = v427[94];
            v318 = swift_slowAlloc();
            v319 = swift_slowAlloc();
            v429[0] = v319;
            *v318 = 136315395;
            *(v318 + 4) = sub_21D05550C(v326, v325, v429);
            *(v318 + 12) = 2081;
            sub_21D0590D0((v427 + 22), (v427 + 27));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
            v327 = sub_21D094430();
            v329 = v328;
            __swift_destroy_boxed_opaque_existential_0(v427 + 22);
            v330 = sub_21D05550C(v327, v329, v429);

            *(v318 + 14) = v330;
            v324 = "%s Emitting TG event: %{private}s";
            goto LABEL_99;
          }

          v331 = v427 + 22;
        }

        __swift_destroy_boxed_opaque_existential_0(v331);
        goto LABEL_103;
      }

      v259 = v1 + 62;
    }

    else
    {
      sub_21D0590D0(v241, (v1 + 52));

      v242 = sub_21D094210();
      v243 = sub_21D094560();

      if (os_log_type_enabled(v242, v243))
      {
        v253 = v1[95];
        v254 = v1[94];
        v246 = swift_slowAlloc();
        v247 = swift_slowAlloc();
        v429[0] = v247;
        *v246 = 136315395;
        *(v246 + 4) = sub_21D05550C(v254, v253, v429);
        *(v246 + 12) = 2081;
        sub_21D0590D0((v1 + 52), (v1 + 57));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
        v255 = sub_21D094430();
        v257 = v256;
        __swift_destroy_boxed_opaque_existential_0(v1 + 52);
        v258 = sub_21D05550C(v255, v257, v429);

        *(v246 + 14) = v258;
        v252 = "%s Emitting TG event: %{private}s";
        goto LABEL_75;
      }

      v259 = v1 + 52;
    }

    __swift_destroy_boxed_opaque_existential_0(v259);
    goto LABEL_79;
  }

  if (v10 != *(v1 + 371))
  {
    v145 = v1[178];
    v415 = v1[177];
    v146 = v1[176];
    v147 = v1[175];
    v148 = v1[95];
    v149 = v427[94];
    v150 = sub_21D093EF0();
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    v152 = v151;
    v429[0] = 0;
    v429[1] = 0xE000000000000000;
    sub_21D0946E0();
    v427[86] = 0;
    v427[87] = 0xE000000000000000;
    MEMORY[0x223D3C530](0xD000000000000027, 0x800000021D097420);
    MEMORY[0x223D3C530](v149, v148);
    MEMORY[0x223D3C530](8250, 0xE200000000000000);
    sub_21D094740();
    swift_beginAccess();

    sub_21D0900B0(MEMORY[0x277D84F90]);
    v1 = v427;
    sub_21D093ED0();
    (*(*(v150 - 8) + 104))(v152, *MEMORY[0x277D29DA8], v150);
    swift_willThrow();

    v153 = *(v146 + 8);
    v153(v145, v147);
    v153(v415, v147);
    goto LABEL_36;
  }

  v78 = v1[177];
  v79 = v1[109];
  v80 = v1[108];
  v81 = v1[106];
  v82 = v1[105];
  (*(v1[176] + 96))(v78, v1[175]);
  (*(v81 + 32))(v79, v78, v82);
  (*(v81 + 16))(v80, v79, v82);
  v83 = sub_21D094210();
  v84 = sub_21D094560();
  v85 = os_log_type_enabled(v83, v84);
  v86 = v1[108];
  v87 = v1[106];
  v88 = v1[105];
  if (v85)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v429[0] = v90;
    *v89 = 136315138;
    sub_21D091B40(&qword_27CE544B0, MEMORY[0x277D414E8], MEMORY[0x277D414F0]);
    v91 = sub_21D094790();
    v93 = v92;
    v411 = *(v87 + 8);
    v411(v86, v88);
    v94 = sub_21D05550C(v91, v93, v429);

    *(v89 + 4) = v94;
    _os_log_impl(&dword_21D044000, v83, v84, "requestStream completionReason: %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v90);
    MEMORY[0x223D3CDF0](v90, -1, -1);
    MEMORY[0x223D3CDF0](v89, -1, -1);
  }

  else
  {

    v411 = *(v87 + 8);
    v411(v86, v88);
  }

  v154 = sub_21D0941A0();
  sub_21D0941D0();
  v155 = sub_21D094650();
  if (sub_21D094680())
  {
    v156 = *(v1 + 372);
    v157 = v1[165];
    v158 = v1[164];
    v159 = v1[163];

    sub_21D094200();

    if ((*(v158 + 88))(v157, v159) == v156)
    {
      v160 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[164] + 8))(v1[165], v1[163]);
      v160 = "token received";
    }

    v182 = swift_slowAlloc();
    *v182 = 0;
    v183 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v154, v155, v183, "requestStream", v160, v182, 2u);
    MEMORY[0x223D3CDF0](v182, -1, -1);
  }

  v184 = v1[170];
  v185 = v1[168];
  v186 = v1[167];

  v422 = *(v185 + 8);
  v422(v184, v186);
  sub_21D0941A0();
  sub_21D094150();

  v187 = sub_21D0941A0();
  v188 = sub_21D094660();

  if (sub_21D094680())
  {
    v189 = v1[95];
    v190 = v1[94];
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v429[0] = v192;
    *v191 = 136446210;
    *(v191 + 4) = sub_21D05550C(v190, v189, v429);
    v193 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v187, v188, v193, "requestStream", "extend token requestIdentifier=%{public, signpost.description=attribute,public}s)", v191, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v192);
    MEMORY[0x223D3CDF0](v192, -1, -1);
    MEMORY[0x223D3CDF0](v191, -1, -1);
  }

  v393 = v1[183];
  v361 = *(v1 + 375);
  v358 = *(v1 + 374);
  v404 = *(v1 + 373);
  v194 = v1[171];
  v195 = v1[169];
  v196 = v1[168];
  v197 = v1[167];
  v198 = v1[157];
  v364 = v427[156];
  v372 = v427[155];
  v199 = v427[107];
  v200 = v427[106];
  v201 = v427[105];
  v356 = v427[104];
  v368 = v427[103];
  v202 = v427[102];
  v355 = v427[101];
  v203 = v427[93];
  (*(v196 + 16))(v194, v195, v197);
  sub_21D0941F0();
  swift_allocObject();
  v204 = sub_21D0941E0();
  v422(v195, v197);
  *v203 = v204;

  (*(v200 + 104))(v199, v404, v201);
  LOBYTE(v204) = sub_21D093140();
  v411(v199, v201);
  if (v204)
  {
    v205 = v361;
  }

  else
  {
    v205 = v358;
  }

  (*(v202 + 104))(v356, v205, v355);

  sub_21D092FB0();
  sub_21D092FA0();
  (*(v364 + 8))(v198, v372);
  (*(v202 + 16))(v368, v356, v355);
  v206 = sub_21D093B20();
  v207 = MEMORY[0x277D71D68];
  v427[10] = v206;
  v427[11] = v207;
  __swift_allocate_boxed_opaque_existential_1(v427 + 7);
  sub_21D093B10();
  sub_21D093A90();
  sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38], MEMORY[0x277D71D40]);
  v208 = sub_21D0937D0();
  if (v393)
  {
    v394 = v427[178];
    v210 = v427[176];
    v211 = v427[175];
    v212 = v427[161];
    v213 = v427[159];
    v214 = v427[158];
    v215 = v427[109];
    v216 = v427[105];
    v217 = v427[104];
    v218 = v427[102];
    v219 = v427[101];

    (*(v213 + 8))(v212, v214);
    v1 = v427;
    (*(v218 + 8))(v217, v219);
    v411(v215, v216);
    (*(v210 + 8))(v394, v211);
    goto LABEL_36;
  }

  v220 = v208;
  v221 = v209;
  v423 = v427[178];
  v385 = v427[176];
  v395 = v427[175];
  v222 = v427[159];
  v369 = v427[158];
  v373 = v427[161];
  v223 = v427[154];
  v224 = v427[153];
  v225 = v427[152];
  v226 = v427[151];
  v227 = v427[150];
  v228 = v427[149];
  v359 = v427[148];
  v376 = v427[105];
  v380 = v427[109];
  v365 = v427[104];
  v229 = v427[102];
  v362 = v427[101];
  sub_21D055C20(v208, v209);
  MEMORY[0x223D3BF70](v220, v221);
  (*(v225 + 16))(v224, v223, v226);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540);
  sub_21D094510();
  sub_21D04FE3C(v220, v221);
  (*(v228 + 8))(v227, v359);
  (*(v225 + 8))(v223, v226);
  v73 = v427;
  (*(v222 + 8))(v373, v369);
  (*(v229 + 8))(v365, v362);
  v411(v380, v376);
  (*(v385 + 8))(v423, v395);
LABEL_20:
  v74 = v73[181];
LABEL_21:
  v73[181] = v74;
  v75 = swift_task_alloc();
  v73[182] = v75;
  *v75 = v73;
  v75[1] = sub_21D0665F4;
  v76 = v73[174];

  return sub_21D059134(v76);
}

uint64_t sub_21D0699C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NewInferenceProvider.requestStream(clientData:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v85 = a2;
  v82 = a1;
  v87 = a4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542E0, &qword_21D095E58);
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v86 = v67 - v7;
  v8 = sub_21D094230();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x28223BE20](v8);
  v80 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21D094180();
  v72 = *(v10 - 1);
  v73 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v70 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = v67 - v13;
  v14 = sub_21D092FC0();
  v76 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21D094070();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v77 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v74 = v67 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = v67 - v23;
  v25 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v89 = v18;
  v27 = *(v18 + 16);
  v26 = v18 + 16;
  v91 = v27;
  v27(v67 - v23, a3, v17);
  v90 = v25;
  v28 = sub_21D094210();
  v29 = sub_21D094580();
  v30 = os_log_type_enabled(v28, v29);
  v88 = v5;
  v83 = a3;
  v68 = v14;
  v75 = v16;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v67[1] = v26;
    v33 = v32;
    v92[0] = v32;
    *v31 = 136315138;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_21D094790();
    v36 = v35;
    (*(v76 + 8))(v16, v14);
    v69 = *(v89 + 8);
    v69(v24, v17);
    v37 = sub_21D05550C(v34, v36, v92);
    v5 = v88;

    *(v31 + 4) = v37;
    _os_log_impl(&dword_21D044000, v28, v29, "%s executing original stream request with data", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x223D3CDF0](v33, -1, -1);
    v38 = v31;
    a3 = v83;
    MEMORY[0x223D3CDF0](v38, -1, -1);
  }

  else
  {

    v69 = *(v89 + 8);
    v69(v24, v17);
  }

  sub_21D0941A0();
  v39 = v71;
  sub_21D094150();
  v40 = sub_21D0941A0();
  v41 = sub_21D094660();
  if (sub_21D094680())
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v40, v41, v43, "requestStream", "full request", v42, 2u);
    v44 = v42;
    v5 = v88;
    MEMORY[0x223D3CDF0](v44, -1, -1);
  }

  v46 = v72;
  v45 = v73;
  (*(v72 + 16))(v70, v39, v73);
  sub_21D0941F0();
  swift_allocObject();
  v70 = sub_21D0941E0();
  (*(v46 + 8))(v39, v45);
  v47 = v74;
  v91(v74, a3, v17);
  v48 = sub_21D094210();
  v49 = sub_21D094580();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v75;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v92[0] = v73;
    *v52 = 136315138;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v53 = v68;
    v54 = sub_21D094790();
    v56 = v55;
    (*(v76 + 8))(v51, v53);
    v69(v47, v17);
    v57 = sub_21D05550C(v54, v56, v92);
    v5 = v88;

    *(v52 + 4) = v57;
    _os_log_impl(&dword_21D044000, v48, v49, "%s executing stream request", v52, 0xCu);
    v58 = v73;
    __swift_destroy_boxed_opaque_existential_0(v73);
    a3 = v83;
    MEMORY[0x223D3CDF0](v58, -1, -1);
    MEMORY[0x223D3CDF0](v52, -1, -1);
  }

  else
  {

    v69(v47, v17);
  }

  (*(v78 + 16))(v80, v5 + v90, v79);
  v91(v77, a3, v17);
  sub_21D093670();
  swift_allocObject();
  v59 = sub_21D093650();
  v60 = MEMORY[0x28223BE20](v59);
  v61 = v70;
  v67[-6] = v5;
  v67[-5] = v61;
  v62 = v82;
  v67[-4] = a3;
  v67[-3] = v62;
  v63 = v86;
  v67[-2] = v85;
  v67[-1] = v60;
  (*(v81 + 104))(v63, *MEMORY[0x277D858A0], v84);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542E8, &qword_21D095E60);
  v65 = v87;
  v87[3] = v64;
  v65[4] = sub_21D090A4C(&qword_281221470, &qword_27CE542E8, &qword_21D095E60, MEMORY[0x277D858E0]);
  __swift_allocate_boxed_opaque_existential_1(v65);
  sub_21D094530();
}

uint64_t sub_21D06A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v39 = a6;
  v40 = a7;
  v37 = a3;
  v38 = a5;
  v35 = a2;
  v36 = a4;
  v34 = a1;
  v8 = sub_21D094070();
  v31 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v32 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
  v30 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540E0, &unk_21D095920);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v29 - v17;
  v33 = &v29 - v17;
  v19 = sub_21D0944D0();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a1, v11);
  (*(v9 + 16))(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v8);
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v37;
  *(v23 + 4) = v35;
  *(v23 + 5) = v24;
  (*(v12 + 32))(&v23[v20], v15, v30);
  (*(v9 + 32))(&v23[v21], v32, v31);
  v25 = &v23[v22];
  v27 = v38;
  v26 = v39;
  *v25 = v38;
  v25[1] = v26;
  *&v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8] = v40;

  sub_21D055C20(v27, v26);

  sub_21D05156C(0, 0, v33, &unk_21D0964F0, v23);
  return sub_21D094500();
}

uint64_t sub_21D06A970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[69] = v18;
  v8[68] = v17;
  v8[67] = a8;
  v8[66] = a7;
  v8[65] = a6;
  v8[63] = a4;
  v8[64] = a5;
  v9 = sub_21D093EF0();
  v8[70] = v9;
  v8[71] = *(v9 - 8);
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v8[74] = swift_task_alloc();
  v8[75] = swift_task_alloc();
  v10 = sub_21D0941C0();
  v8[76] = v10;
  v8[77] = *(v10 - 8);
  v8[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78);
  v8[79] = swift_task_alloc();
  v11 = sub_21D094070();
  v8[80] = v11;
  v8[81] = *(v11 - 8);
  v8[82] = swift_task_alloc();
  v12 = sub_21D093800();
  v8[83] = v12;
  v8[84] = *(v12 - 8);
  v8[85] = swift_task_alloc();
  v13 = sub_21D094180();
  v8[86] = v13;
  v8[87] = *(v13 - 8);
  v8[88] = swift_task_alloc();
  v8[89] = swift_task_alloc();
  v8[90] = swift_task_alloc();
  v14 = sub_21D092FC0();
  v8[91] = v14;
  v8[92] = *(v14 - 8);
  v8[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D06AC8C, 0, 0);
}

char *sub_21D06AC8C()
{
  v179 = v0;
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  sub_21D094010();
  v4 = sub_21D092FA0();
  v6 = v5;
  *(v0 + 752) = v4;
  *(v0 + 760) = v5;
  v7 = *(v2 + 8);
  v7(v1, v3);
  *(v0 + 768) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  sub_21D0941A0();
  sub_21D094150();

  v8 = sub_21D0941A0();
  v9 = sub_21D094660();

  v174 = v7;
  format = v6;
  buf = v4;
  if (sub_21D094680())
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v178[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_21D05550C(v4, v6, v178);
    v12 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v8, v9, v12, "requestStream", "first token requestIdentifier=%{public, signpost.description=attribute,public}s)", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D3CDF0](v11, -1, -1);
    MEMORY[0x223D3CDF0](v10, -1, -1);
  }

  v13 = *(v0 + 744);
  v14 = *(v0 + 728);
  v15 = *(v0 + 720);
  v16 = *(v0 + 696);
  v17 = *(v0 + 688);
  (*(v16 + 16))(*(v0 + 712), v15, v17);
  sub_21D0941F0();
  swift_allocObject();
  v18 = sub_21D0941E0();
  v19 = *(v16 + 8);
  *(v0 + 776) = v19;
  *(v0 + 784) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v15, v17);
  *(v0 + 448) = v18;
  sub_21D092FB0();
  v20 = sub_21D092FA0();
  v22 = v21;
  *(v0 + 792) = v21;
  v174(v13, v14);
  sub_21D091B40(&qword_281221798, MEMORY[0x277D71BC0], MEMORY[0x277D71BC8]);
  sub_21D0937C0();
  v23 = *(v0 + 552);
  v24 = *(v0 + 520);
  v25 = *(v0 + 504);
  v26 = sub_21D093670();
  v27 = MEMORY[0x277D41578];
  *(v0 + 432) = v26;
  *(v0 + 440) = v27;
  *(v0 + 408) = v23;
  v28 = swift_task_alloc();
  *(v0 + 800) = v28;
  v28[2] = v20;
  v28[3] = v22;
  v28[4] = v25;
  v28[5] = v0 + 448;
  v28[6] = buf;
  v28[7] = format;
  v28[8] = v23;
  v28[9] = v24;
  sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);

  if (sub_21D0945A0())
  {
    v29 = (v0 + 408);
    (*(*(v0 + 648) + 16))(*(v0 + 656), *(v0 + 528), *(v0 + 640));
    v30 = sub_21D094210();
    v31 = sub_21D094570();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 744);
      v33 = *(v0 + 656);
      v34 = *(v0 + 648);
      formatc = *(v0 + 728);
      bufb = *(v0 + 640);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v178[0] = v36;
      *v35 = 136315138;
      sub_21D094010();
      v37 = sub_21D092FA0();
      v39 = v38;
      v174(v32, formatc);
      (*(v34 + 8))(v33, bufb);
      v29 = (v0 + 408);
      v40 = sub_21D05550C(v37, v39, v178);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_21D044000, v30, v31, "%s Fallback is enabled", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x223D3CDF0](v36, -1, -1);
      MEMORY[0x223D3CDF0](v35, -1, -1);
    }

    else
    {
      v53 = *(v0 + 656);
      v54 = *(v0 + 648);
      v55 = *(v0 + 640);

      (*(v54 + 8))(v53, v55);
    }

    v56 = *(v0 + 568);
    v57 = *(v0 + 560);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v58 = swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21D0959B0;
    *(inited + 32) = sub_21D0943F0();
    *(inited + 40) = v62;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x800000021D0971A0;
    sub_21D0900B0(inited);
    swift_setDeallocating();
    sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
    sub_21D093ED0();
    (*(v56 + 104))(v60, *MEMORY[0x277D29DA8], v57);
    swift_willThrow();

    v63 = *(v0 + 680);
    v64 = *(v0 + 672);
    v65 = *(v0 + 664);

    (*(v64 + 8))(v63, v65);
    __swift_destroy_boxed_opaque_existential_0(v29);
    *(v0 + 456) = v58;
    v66 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
    if (swift_dynamicCast())
    {
      v67 = *(v0 + 600);
      v68 = *(v0 + 592);
      v69 = *(v0 + 568);
      v70 = *(v0 + 560);

      (*(v69 + 32))(v68, v67, v70);
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      v71 = swift_allocError();
      (*(v69 + 16))(v72, v68, v70);
      *(v0 + 496) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
      sub_21D094520();
      (*(v69 + 8))(v68, v70);
      v73 = *(v0 + 456);
LABEL_29:

      goto LABEL_30;
    }

    *(v0 + 464) = v58;
    v74 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
    if (swift_dynamicCast())
    {

      sub_21D046D78((v0 + 208), v0 + 248);
      sub_21D0590D0(v0 + 248, v0 + 288);
      sub_21D0590D0(v0 + 248, v0 + 328);
      sub_21D0590D0(v0 + 248, v0 + 368);
      v75 = sub_21D094210();
      v76 = sub_21D094550();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v178[0] = v78;
        *v77 = 136315650;
        __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
        v79 = sub_21D094090();
        v81 = v80;
        __swift_destroy_boxed_opaque_existential_0((v0 + 288));
        v82 = sub_21D05550C(v79, v81, v178);

        *(v77 + 4) = v82;
        *(v77 + 12) = 2048;
        __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
        v83 = sub_21D093520();
        __swift_destroy_boxed_opaque_existential_0((v0 + 328));
        *(v77 + 14) = v83;
        *(v77 + 22) = 2080;
        __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
        v84 = sub_21D093530();
        v86 = v85;
        __swift_destroy_boxed_opaque_existential_0((v0 + 368));
        v87 = sub_21D05550C(v84, v86, v178);

        *(v77 + 24) = v87;
        _os_log_impl(&dword_21D044000, v75, v76, "Request failed: %s %ld %s", v77, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v78, -1, -1);
        MEMORY[0x223D3CDF0](v77, -1, -1);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v0 + 328));

        __swift_destroy_boxed_opaque_existential_0((v0 + 288));
        __swift_destroy_boxed_opaque_existential_0((v0 + 368));
      }

      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      v176 = swift_allocError();
      v114 = v113;
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      sub_21D093530();
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      sub_21D094090();
      __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
      result = sub_21D093520();
      if (!__OFADD__(result, 10000))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
        v115 = swift_initStackObject();
        *(v115 + 16) = xmmword_21D0959B0;
        *(v115 + 32) = sub_21D0943F0();
        *(v115 + 40) = v116;
        v117 = *(v0 + 272);
        v118 = *(v0 + 280);
        __swift_project_boxed_opaque_existential_1((v0 + 248), v117);
        *(v115 + 48) = MEMORY[0x223D3C1D0](v117, *(v118 + 8));
        *(v115 + 56) = v119;
        sub_21D0900B0(v115);
        swift_setDeallocating();
        sub_21D04D27C(v115 + 32, &qword_27CE542C0, &qword_21D095E28);
        v120 = *(v0 + 272);
        v121 = __swift_project_boxed_opaque_existential_1((v0 + 248), v120);
        v122 = *(v120 - 8);
        v123 = swift_task_alloc();
        (*(v122 + 16))(v123, v121, v120);
        if (sub_21D0947A0())
        {
          (*(v122 + 8))(v123, v120);
        }

        else
        {
          swift_allocError();
          (*(v122 + 32))(v135, v123, v120);
        }

        v136 = *(v0 + 568);
        v137 = *(v0 + 560);
        sub_21D093EC0();

        (*(v136 + 104))(v114, *MEMORY[0x277D29DA8], v137);
        *(v0 + 488) = v176;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
        sub_21D094520();
        __swift_destroy_boxed_opaque_existential_0((v0 + 248));
        v73 = *(v0 + 464);
        goto LABEL_29;
      }
    }

    else
    {

      v88 = sub_21D092F10();
      *(v0 + 472) = v58;
      v89 = v58;
      sub_21D094430();
      v90 = [v88 domain];
      sub_21D0943F0();

      result = [v88 code];
      if (!__OFADD__(result, 20000))
      {
        v92 = *(v0 + 584);
        v93 = *(v0 + 568);
        v159 = *(v0 + 560);
        v160 = *(v0 + 576);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
        v94 = swift_initStackObject();
        *(v94 + 16) = xmmword_21D0959B0;
        *(v94 + 32) = sub_21D0943F0();
        *(v94 + 40) = v95;
        v96 = [v88 description];
        v97 = sub_21D0943F0();
        v99 = v98;

        *(v94 + 48) = v97;
        *(v94 + 56) = v99;
        sub_21D0900B0(v94);
        swift_setDeallocating();
        sub_21D04D27C(v94 + 32, &qword_27CE542C0, &qword_21D095E28);
        v161 = v88;
        sub_21D093EC0();
        (*(v93 + 104))(v92, *MEMORY[0x277D29DA8], v159);
        v100 = *(v93 + 16);
        v100(v160, v92, v159);
        v101 = sub_21D094210();
        v102 = sub_21D094550();
        v103 = os_log_type_enabled(v101, v102);
        v104 = *(v0 + 576);
        v105 = *(v0 + 568);
        v106 = *(v0 + 560);
        if (v103)
        {
          bufc = swift_slowAlloc();
          v172 = swift_slowAlloc();
          v178[0] = v172;
          *bufc = 136315138;
          sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0], MEMORY[0x277D29DF0]);
          formatd = v102;
          v107 = sub_21D094790();
          v175 = v100;
          v109 = v108;
          v110 = *(v105 + 8);
          v110(v104, v106);
          v111 = v110;
          v112 = sub_21D05550C(v107, v109, v178);
          v100 = v175;

          *(bufc + 4) = v112;
          _os_log_impl(&dword_21D044000, v101, formatd, "Request failed: %s", bufc, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v172);
          MEMORY[0x223D3CDF0](v172, -1, -1);
          MEMORY[0x223D3CDF0](bufc, -1, -1);
        }

        else
        {

          v124 = *(v105 + 8);
          v124(v104, v106);
          v111 = v124;
        }

        v125 = *(v0 + 584);
        v126 = *(v0 + 560);
        sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
        v127 = swift_allocError();
        v100(v128, v125, v126);
        *(v0 + 480) = v127;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
        sub_21D094520();

        v111(v125, v126);
LABEL_30:

        v138 = sub_21D0941A0();
        sub_21D0941D0();
        v139 = sub_21D094650();

        if (sub_21D094680())
        {
          v140 = *(v0 + 624);
          v141 = *(v0 + 616);
          v142 = *(v0 + 608);

          sub_21D094200();

          if ((*(v141 + 88))(v140, v142) == *MEMORY[0x277D85B00])
          {
            v143 = 0;
            v144 = 0;
            formatb = "[Error] Interval already ended";
          }

          else
          {
            (*(*(v0 + 616) + 8))(*(v0 + 624), *(v0 + 608));
            formatb = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
            v144 = 2;
            v143 = 1;
          }

          v173 = *(v0 + 776);
          v148 = *(v0 + 760);
          v149 = *(v0 + 752);
          v150 = *(v0 + 704);
          bufd = *(v0 + 688);
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v178[0] = v152;
          *v151 = v144;
          *(v151 + 1) = v143;
          *(v151 + 2) = 2082;
          v153 = sub_21D05550C(v149, v148, v178);

          *(v151 + 4) = v153;
          v154 = sub_21D094160();
          _os_signpost_emit_with_name_impl(&dword_21D044000, v138, v139, v154, "requestStream", formatb, v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v152);
          MEMORY[0x223D3CDF0](v152, -1, -1);
          MEMORY[0x223D3CDF0](v151, -1, -1);

          v173(v150, bufd);
        }

        else
        {
          v145 = *(v0 + 776);
          v146 = *(v0 + 704);
          v147 = *(v0 + 688);

          v145(v146, v147);
        }

        v155 = *(v0 + 520);
        v156 = *(v0 + 504);
        v157 = *(v0 + 512);
        sub_21D093640();

        sub_21D06D62C(v156, v157, v155, &qword_27CE544C0, &unk_21D0964D8);

        v158 = *(v0 + 8);

        return v158();
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v41 = *(v0 + 744);
  v42 = *(v0 + 728);
  v43 = *(v0 + 632);
  v44 = *(v0 + 504);
  sub_21D094010();
  v45 = sub_21D092FA0();
  formata = v46;
  bufa = v45;
  *(v0 + 808) = v46;
  v174(v41, v42);
  logMetric(logger:name:startInstant:)(v44 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, 0xD000000000000012, 0x800000021D097180);
  v47 = sub_21D093D00();
  *(v0 + 816) = v47;
  *(v0 + 824) = *(v47 - 8);
  v48 = swift_task_alloc();
  *(v0 + 832) = v48;
  sub_21D093CF0();
  sub_21D094000();
  v49 = sub_21D093E70();
  v50 = *(v49 - 8);
  v51 = (*(v50 + 48))(v43, 1, v49);
  v52 = *(v0 + 632);
  if (v51 == 1)
  {
    sub_21D04D27C(*(v0 + 632), &qword_27CE542F8, &qword_21D095E78);
  }

  else
  {
    sub_21D093E50();
    (*(v50 + 8))(v52, v49);
  }

  v129 = v51 == 1;
  v130 = *(v0 + 680);
  v177 = *(v0 + 536);
  v131 = *(v0 + 528);
  v132 = *(v0 + 504);
  LOBYTE(v178[0]) = v129;
  sub_21D093CE0();
  v133 = swift_task_alloc();
  *(v0 + 840) = v133;
  *(v133 + 16) = v130;
  *(v133 + 24) = v132;
  *(v133 + 32) = bufa;
  *(v133 + 40) = formata;
  *(v133 + 48) = v0 + 408;
  *(v133 + 56) = v177;
  *(v133 + 72) = v131;
  *(v133 + 80) = &unk_21D096500;
  *(v133 + 88) = v28;
  v134 = swift_task_alloc();
  *(v0 + 848) = v134;
  *v134 = v0;
  v134[1] = sub_21D06C2F4;

  return sub_21D07BC88(v134, bufa, formata, 0, v48, &unk_21D096510, v133);
}

uint64_t sub_21D06C2F4()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_21D06C7F8;
  }

  else
  {
    v2 = sub_21D06C444;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D06C444()
{
  v33 = v0;
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];

  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 51);
  (*(v5 + 8))(v4, v6);

  v7 = sub_21D0941A0();
  sub_21D0941D0();
  v8 = sub_21D094650();

  if (sub_21D094680())
  {
    v9 = v0[78];
    v10 = v0[77];
    v11 = v0[76];

    sub_21D094200();

    if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
    {
      v12 = 0;
      v13 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[77] + 8))(v0[78], v0[76]);
      format = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
      v13 = 2;
      v12 = 1;
    }

    v31 = v0[97];
    v17 = v0[95];
    v18 = v0[94];
    v19 = v0[88];
    v30 = v0[86];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = v13;
    *(v20 + 1) = v12;
    *(v20 + 2) = 2082;
    v22 = sub_21D05550C(v18, v17, &v32);

    *(v20 + 4) = v22;
    v23 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v7, v8, v23, "requestStream", format, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x223D3CDF0](v21, -1, -1);
    MEMORY[0x223D3CDF0](v20, -1, -1);

    v31(v19, v30);
  }

  else
  {
    v14 = v0[97];
    v15 = v0[88];
    v16 = v0[86];

    v14(v15, v16);
  }

  v24 = v0[65];
  v25 = v0[63];
  v26 = v0[64];
  sub_21D093640();

  sub_21D06D62C(v25, v26, v24, &qword_27CE544C0, &unk_21D0964D8);

  v27 = v0[1];

  return v27();
}

char *sub_21D06C7F8()
{
  v109 = v0;
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 856);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);

  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  *(v0 + 456) = v4;
  v8 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 600);
    v10 = *(v0 + 592);
    v11 = *(v0 + 568);
    v12 = *(v0 + 560);

    (*(v11 + 32))(v10, v9, v12);
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v13 = swift_allocError();
    (*(v11 + 16))(v14, v10, v12);
    *(v0 + 496) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
    sub_21D094520();
    (*(v11 + 8))(v10, v12);
    v15 = *(v0 + 456);
LABEL_17:

    goto LABEL_18;
  }

  *(v0 + 464) = v4;
  v16 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
  if (swift_dynamicCast())
  {

    sub_21D046D78((v0 + 208), v0 + 248);
    sub_21D0590D0(v0 + 248, v0 + 288);
    sub_21D0590D0(v0 + 248, v0 + 328);
    sub_21D0590D0(v0 + 248, v0 + 368);
    v17 = sub_21D094210();
    v18 = sub_21D094550();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v108 = v20;
      *v19 = 136315650;
      __swift_project_boxed_opaque_existential_1((v0 + 288), *(v0 + 312));
      v21 = sub_21D094090();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0((v0 + 288));
      v24 = sub_21D05550C(v21, v23, &v108);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2048;
      __swift_project_boxed_opaque_existential_1((v0 + 328), *(v0 + 352));
      v25 = sub_21D093520();
      __swift_destroy_boxed_opaque_existential_0((v0 + 328));
      *(v19 + 14) = v25;
      *(v19 + 22) = 2080;
      __swift_project_boxed_opaque_existential_1((v0 + 368), *(v0 + 392));
      v26 = sub_21D093530();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_0((v0 + 368));
      v29 = sub_21D05550C(v26, v28, &v108);

      *(v19 + 24) = v29;
      _os_log_impl(&dword_21D044000, v17, v18, "Request failed: %s %ld %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v20, -1, -1);
      MEMORY[0x223D3CDF0](v19, -1, -1);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 328));

      __swift_destroy_boxed_opaque_existential_0((v0 + 288));
      __swift_destroy_boxed_opaque_existential_0((v0 + 368));
    }

    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v55 = swift_allocError();
    v57 = v56;
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    sub_21D093530();
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    sub_21D094090();
    __swift_project_boxed_opaque_existential_1((v0 + 248), *(v0 + 272));
    result = sub_21D093520();
    if (!__OFADD__(result, 10000))
    {
      v107 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21D0959B0;
      *(inited + 32) = sub_21D0943F0();
      *(inited + 40) = v59;
      v60 = *(v0 + 272);
      v61 = *(v0 + 280);
      __swift_project_boxed_opaque_existential_1((v0 + 248), v60);
      *(inited + 48) = MEMORY[0x223D3C1D0](v60, *(v61 + 8));
      *(inited + 56) = v62;
      sub_21D0900B0(inited);
      swift_setDeallocating();
      sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
      v63 = *(v0 + 272);
      v64 = __swift_project_boxed_opaque_existential_1((v0 + 248), v63);
      v65 = *(v63 - 8);
      v66 = swift_task_alloc();
      (*(v65 + 16))(v66, v64, v63);
      if (sub_21D0947A0())
      {
        (*(v65 + 8))(v66, v63);
      }

      else
      {
        swift_allocError();
        (*(v65 + 32))(v72, v66, v63);
      }

      v73 = *(v0 + 568);
      v74 = *(v0 + 560);
      sub_21D093EC0();

      (*(v73 + 104))(v57, *MEMORY[0x277D29DA8], v74);
      *(v0 + 488) = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
      sub_21D094520();
      __swift_destroy_boxed_opaque_existential_0((v0 + 248));
      v15 = *(v0 + 464);
      goto LABEL_17;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  v30 = sub_21D092F10();
  *(v0 + 472) = v4;
  v31 = v4;
  sub_21D094430();
  v32 = [v30 domain];
  sub_21D0943F0();

  result = [v30 code];
  if (__OFADD__(result, 20000))
  {
    __break(1u);
    goto LABEL_28;
  }

  v34 = *(v0 + 568);
  v104 = *(v0 + 560);
  v106 = *(v0 + 576);
  v99 = *(v0 + 584);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_21D0959B0;
  *(v35 + 32) = sub_21D0943F0();
  *(v35 + 40) = v36;
  v37 = [v30 description];
  v38 = sub_21D0943F0();
  v40 = v39;

  *(v35 + 48) = v38;
  *(v35 + 56) = v40;
  sub_21D0900B0(v35);
  swift_setDeallocating();
  sub_21D04D27C(v35 + 32, &qword_27CE542C0, &qword_21D095E28);
  v41 = v30;
  sub_21D093EC0();
  v42 = v104;
  (*(v34 + 104))(v99, *MEMORY[0x277D29DA8], v104);
  v105 = *(v34 + 16);
  v105(v106, v99, v42);
  v43 = sub_21D094210();
  v44 = sub_21D094550();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 576);
  v47 = *(v0 + 568);
  v48 = *(v0 + 560);
  if (v45)
  {
    bufa = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v108 = v100;
    *bufa = 136315138;
    sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0], MEMORY[0x277D29DF0]);
    v96 = v44;
    v49 = sub_21D094790();
    v102 = v41;
    v51 = v50;
    v52 = *(v47 + 8);
    v52(v46, v48);
    v53 = v52;
    v54 = sub_21D05550C(v49, v51, &v108);
    v41 = v102;

    *(bufa + 4) = v54;
    _os_log_impl(&dword_21D044000, v43, v96, "Request failed: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v100);
    MEMORY[0x223D3CDF0](v100, -1, -1);
    MEMORY[0x223D3CDF0](bufa, -1, -1);
  }

  else
  {

    v67 = *(v47 + 8);
    v67(v46, v48);
    v53 = v67;
  }

  v68 = *(v0 + 584);
  v69 = *(v0 + 560);
  sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  v70 = swift_allocError();
  v105(v71, v68, v69);
  *(v0 + 480) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
  sub_21D094520();

  v53(v68, v69);
LABEL_18:

  v75 = sub_21D0941A0();
  sub_21D0941D0();
  v76 = sub_21D094650();

  if (sub_21D094680())
  {
    v77 = *(v0 + 624);
    v78 = *(v0 + 616);
    v79 = *(v0 + 608);

    sub_21D094200();

    if ((*(v78 + 88))(v77, v79) == *MEMORY[0x277D85B00])
    {
      v80 = 0;
      v81 = 0;
      buf = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 616) + 8))(*(v0 + 624), *(v0 + 608));
      buf = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s)";
      v81 = 2;
      v80 = 1;
    }

    v103 = *(v0 + 776);
    v85 = *(v0 + 760);
    v86 = *(v0 + 752);
    v87 = *(v0 + 704);
    v101 = *(v0 + 688);
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v108 = v89;
    *v88 = v81;
    *(v88 + 1) = v80;
    *(v88 + 2) = 2082;
    v90 = sub_21D05550C(v86, v85, &v108);

    *(v88 + 4) = v90;
    v91 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v75, v76, v91, "requestStream", buf, v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v89);
    MEMORY[0x223D3CDF0](v89, -1, -1);
    MEMORY[0x223D3CDF0](v88, -1, -1);

    v103(v87, v101);
  }

  else
  {
    v82 = *(v0 + 776);
    v83 = *(v0 + 704);
    v84 = *(v0 + 688);

    v82(v83, v84);
  }

  v92 = *(v0 + 520);
  v93 = *(v0 + 504);
  v94 = *(v0 + 512);
  sub_21D093640();

  sub_21D06D62C(v93, v94, v92, &qword_27CE544C0, &unk_21D0964D8);

  v95 = *(v0 + 8);

  return v95();
}

uint64_t sub_21D06D62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v19 = a4;
  v20 = a5;
  v21 = a3;
  v5 = sub_21D0941C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21D094180();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21D0941A0();
  sub_21D0941D0();
  v14 = sub_21D094650();
  if (sub_21D094680())
  {

    sub_21D094200();

    if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v13, v14, v17, "requestStream", v15, v16, 2u);
    MEMORY[0x223D3CDF0](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  return sub_21D094520();
}

uint64_t sub_21D06D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 856) = v33;
  *(v8 + 848) = v32;
  *(v8 + 840) = a8;
  *(v8 + 832) = a7;
  *(v8 + 824) = a6;
  *(v8 + 816) = a5;
  *(v8 + 808) = a4;
  *(v8 + 800) = a3;
  *(v8 + 792) = a2;
  v9 = sub_21D0933E0();
  *(v8 + 864) = v9;
  *(v8 + 872) = *(v9 - 8);
  *(v8 + 880) = swift_task_alloc();
  v10 = sub_21D0937B0();
  *(v8 + 888) = v10;
  *(v8 + 896) = *(v10 - 8);
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  v11 = sub_21D093420();
  *(v8 + 920) = v11;
  *(v8 + 928) = *(v11 - 8);
  *(v8 + 936) = swift_task_alloc();
  *(v8 + 944) = swift_task_alloc();
  *(v8 + 952) = swift_task_alloc();
  *(v8 + 960) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54420, &qword_21D096430);
  *(v8 + 968) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54480, &qword_21D096498);
  *(v8 + 976) = swift_task_alloc();
  sub_21D093C30();
  *(v8 + 984) = swift_task_alloc();
  v12 = sub_21D093C50();
  *(v8 + 992) = v12;
  *(v8 + 1000) = *(v12 - 8);
  *(v8 + 1008) = swift_task_alloc();
  *(v8 + 1016) = swift_task_alloc();
  v13 = sub_21D0935E0();
  *(v8 + 1024) = v13;
  *(v8 + 1032) = *(v13 - 8);
  *(v8 + 1040) = swift_task_alloc();
  v14 = sub_21D093820();
  *(v8 + 1048) = v14;
  *(v8 + 1056) = *(v14 - 8);
  *(v8 + 1064) = swift_task_alloc();
  *(v8 + 1072) = swift_task_alloc();
  *(v8 + 1080) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54478, &qword_21D096490);
  *(v8 + 1088) = swift_task_alloc();
  *(v8 + 1096) = swift_task_alloc();
  v15 = sub_21D093570();
  *(v8 + 1104) = v15;
  *(v8 + 1112) = *(v15 - 8);
  *(v8 + 1120) = swift_task_alloc();
  *(v8 + 1128) = swift_task_alloc();
  v16 = sub_21D093840();
  *(v8 + 1136) = v16;
  *(v8 + 1144) = *(v16 - 8);
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  v17 = sub_21D093630();
  *(v8 + 1168) = v17;
  *(v8 + 1176) = *(v17 - 8);
  *(v8 + 1184) = swift_task_alloc();
  *(v8 + 1192) = swift_task_alloc();
  *(v8 + 1200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54260, &unk_21D095CC0);
  *(v8 + 1208) = swift_task_alloc();
  *(v8 + 1216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54248, &unk_21D095CA0);
  *(v8 + 1224) = swift_task_alloc();
  *(v8 + 1232) = swift_task_alloc();
  v18 = sub_21D0934B0();
  *(v8 + 1240) = v18;
  *(v8 + 1248) = *(v18 - 8);
  *(v8 + 1256) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C8, &qword_21D096530);
  *(v8 + 1264) = v19;
  *(v8 + 1272) = *(v19 - 8);
  *(v8 + 1280) = swift_task_alloc();
  *(v8 + 1288) = swift_task_alloc();
  *(v8 + 1296) = swift_task_alloc();
  *(v8 + 1304) = swift_task_alloc();
  *(v8 + 1312) = swift_task_alloc();
  v20 = sub_21D092FC0();
  *(v8 + 1320) = v20;
  *(v8 + 1328) = *(v20 - 8);
  *(v8 + 1336) = swift_task_alloc();
  v21 = sub_21D093A80();
  *(v8 + 1344) = v21;
  *(v8 + 1352) = *(v21 - 8);
  *(v8 + 1360) = swift_task_alloc();
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  v22 = sub_21D0941C0();
  *(v8 + 1384) = v22;
  *(v8 + 1392) = *(v22 - 8);
  *(v8 + 1400) = swift_task_alloc();
  *(v8 + 1408) = swift_task_alloc();
  v23 = sub_21D094180();
  *(v8 + 1416) = v23;
  *(v8 + 1424) = *(v23 - 8);
  *(v8 + 1432) = swift_task_alloc();
  *(v8 + 1440) = swift_task_alloc();
  *(v8 + 1448) = swift_task_alloc();
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 1464) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54250, &unk_21D095CB0);
  *(v8 + 1472) = swift_task_alloc();
  v24 = sub_21D093460();
  *(v8 + 1480) = v24;
  *(v8 + 1488) = *(v24 - 8);
  *(v8 + 1496) = swift_task_alloc();
  *(v8 + 1504) = swift_task_alloc();
  *(v8 + 1512) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  *(v8 + 1520) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  v25 = MEMORY[0x277D41510];
  *(v8 + 1552) = *MEMORY[0x277D41518];
  *(v8 + 1556) = *v25;
  *(v8 + 1560) = *MEMORY[0x277D41500];
  v26 = MEMORY[0x277D85B00];
  *(v8 + 1564) = *MEMORY[0x277D41508];
  *(v8 + 1568) = *v26;
  *(v8 + 1572) = *MEMORY[0x277D414E0];
  v27 = MEMORY[0x277D71B68];
  *(v8 + 1576) = *MEMORY[0x277D71B50];
  *(v8 + 1580) = *v27;
  *(v8 + 1528) = 0;
  v28 = swift_task_alloc();
  *(v8 + 1536) = v28;
  *v28 = v8;
  v28[1] = sub_21D06E280;
  v29 = *(v8 + 1472);

  return sub_21D059134(v29);
}

uint64_t sub_21D06E280()
{
  *(*v1 + 1544) = v0;

  if (v0)
  {
    v2 = sub_21D0712FC;
  }

  else
  {
    v2 = sub_21D06E394;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D06E394()
{
  v401 = v0;
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1472);
  v4 = (*(v1 + 48))(v3, 1, v2);
  v5 = *(v0 + 1504);
  v6 = *(v0 + 1496);
  if (v4 == 1)
  {

    sub_21D04D27C(v3, &qword_27CE54250, &unk_21D095CB0);

    v7 = *(v0 + 8);
LABEL_102:

    return v7();
  }

  v8 = *(v0 + 1552);
  (*(v1 + 32))(*(v0 + 1504), v3, v2);
  (*(v1 + 16))(v6, v5, v2);
  v9 = (*(v1 + 88))(v6, v2);
  if (v9 == v8)
  {
    (*(*(v0 + 1488) + 96))(*(v0 + 1496), *(v0 + 1480));

    v10 = sub_21D0941A0();
    sub_21D0941D0();
    v11 = sub_21D094650();
    if (sub_21D094680())
    {
      v12 = *(v0 + 1568);
      v13 = *(v0 + 1408);
      v14 = *(v0 + 1392);
      v15 = *(v0 + 1384);

      sub_21D094200();

      if ((*(v14 + 88))(v13, v15) == v12)
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 1392) + 8))(*(v0 + 1408), *(v0 + 1384));
        v16 = "token received";
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v10, v11, v35, "requestStream", v16, v34, 2u);
      MEMORY[0x223D3CDF0](v34, -1, -1);
    }

    v36 = *(v0 + 1464);
    v37 = *(v0 + 1424);
    v38 = *(v0 + 1416);

    v374 = *(v37 + 8);
    v374(v36, v38);
    sub_21D0941A0();
    sub_21D094150();

    v39 = sub_21D0941A0();
    v40 = sub_21D094660();

    if (sub_21D094680())
    {
      v41 = *(v0 + 840);
      v42 = *(v0 + 832);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v400[0] = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_21D05550C(v42, v41, v400);
      v45 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v39, v40, v45, "requestStream", "extend token requestIdentifier=%{public, signpost.description=attribute,public}s)", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x223D3CDF0](v44, -1, -1);
      MEMORY[0x223D3CDF0](v43, -1, -1);
    }

    v46 = *(v0 + 1456);
    v47 = *(v0 + 1416);
    v364 = *(v0 + 1544);
    v48 = *(v0 + 1336);
    v49 = *(v0 + 1328);
    v50 = *(v0 + 1320);
    v51 = *(v0 + 824);
    (*(*(v0 + 1424) + 16))(*(v0 + 1448), v46, v47);
    sub_21D0941F0();
    swift_allocObject();
    v52 = sub_21D0941E0();
    v374(v46, v47);
    *v51 = v52;

    sub_21D092FB0();
    sub_21D092FA0();
    (*(v49 + 8))(v48, v50);
    v53 = sub_21D093B40();
    v54 = MEMORY[0x277D71D70];
    *(v0 + 120) = v53;
    *(v0 + 128) = v54;
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));

    sub_21D093B30();
    sub_21D093A90();
    sub_21D093660();

    sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38], MEMORY[0x277D71D40]);
    v55 = sub_21D0937D0();
    if (v364)
    {
      v57 = *(v0 + 1504);
      v58 = *(v0 + 1488);
      v59 = *(v0 + 1480);
      v60 = *(v0 + 1376);
      v61 = *(v0 + 1352);
      v62 = *(v0 + 1344);

      (*(v61 + 8))(v60, v62);
      (*(v58 + 8))(v57, v59);
LABEL_101:

      v7 = *(v0 + 8);
      goto LABEL_102;
    }

    v390 = *(v0 + 1504);
    v63 = *(v0 + 1488);
    v64 = *(v0 + 1480);
    v65 = *(v0 + 1376);
    v66 = *(v0 + 1352);
    v67 = *(v0 + 1344);
    v68 = *(v0 + 1312);
    v69 = *(v0 + 1272);
    v70 = *(v0 + 1264);
    *(v0 + 768) = v55;
    *(v0 + 776) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
    sub_21D094510();
    (*(v69 + 8))(v68, v70);
    (*(v66 + 8))(v65, v67);
    (*(v63 + 8))(v390, v64);
    goto LABEL_20;
  }

  if (v9 == *(v0 + 1556))
  {
    v17 = *(v0 + 1528);
    v18 = *(v0 + 1496);
    v19 = *(v0 + 880);
    v20 = *(v0 + 872);
    v21 = *(v0 + 864);
    (*(*(v0 + 1488) + 96))(v18, *(v0 + 1480));
    (*(v20 + 32))(v19, v18, v21);
    if (!v17)
    {
      if (qword_27CE53E98 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_107;
    }

    v22 = *(v0 + 1528);
    while (1)
    {
      v105 = *(v0 + 1544);
      v106 = *(v0 + 880);

      v107 = sub_21D0525F4(v106);
      if (v105)
      {
        v108 = *(v0 + 1504);
        v109 = *(v0 + 1488);
        v110 = *(v0 + 1480);
        v111 = *(v0 + 880);
        v112 = *(v0 + 872);
        v113 = *(v0 + 864);

        (*(v112 + 8))(v111, v113);
        (*(v109 + 8))(v108, v110);
        goto LABEL_101;
      }

      v114 = v107;
      v365 = v22;
      v382 = *(v107 + 16);
      if (!v382)
      {
        break;
      }

      v115 = 0;
      v116 = v107 + 32;
      v375 = v107;
      while (v115 < *(v114 + 16))
      {
        sub_21D0590D0(v116, v0 + 56);
        sub_21D093A90();
        sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38], MEMORY[0x277D71D40]);
        v117 = sub_21D0937D0();
        v118 = *(v0 + 1360);
        v119 = *(v0 + 1352);
        v120 = *(v0 + 1344);
        v121 = *(v0 + 1280);
        v122 = *(v0 + 1272);
        v123 = *(v0 + 1264);
        ++v115;
        *(v0 + 752) = v117;
        *(v0 + 760) = v124;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
        sub_21D094510();
        (*(v122 + 8))(v121, v123);
        (*(v119 + 8))(v118, v120);
        v116 += 40;
        v114 = v375;
        if (v382 == v115)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_107:
      swift_once();
LABEL_28:
      v92 = qword_27CE540E8;
      v93 = qword_27CE53EA0;

      if (v93 != -1)
      {
        swift_once();
      }

      v94 = qword_27CE540F0;
      type metadata accessor for MediaProcessor(0);
      v22 = swift_allocObject();
      v95 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_logger;
      v96 = qword_281221778;

      if (v96 != -1)
      {
        swift_once();
      }

      v97 = *(v0 + 808);
      v98 = *(v0 + 800);
      v99 = sub_21D094230();
      v100 = __swift_project_value_buffer(v99, qword_2812217C8);
      (*(*(v99 - 8) + 16))(v22 + v95, v100, v99);
      v101 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
      v102 = MEMORY[0x277D84F90];
      *(v22 + v101) = sub_21D08FE94(MEMORY[0x277D84F90]);
      v103 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks;
      *(v22 + v103) = sub_21D08FF98(v102);
      v104 = (v22 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID);
      *v104 = v98;
      v104[1] = v97;
      *(v22 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedAudioFormats) = v92;
      *(v22 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedImageFormats) = v94;
      *(v22 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming) = 1;
    }

LABEL_39:
    v125 = *(v0 + 1504);
    v126 = *(v0 + 1488);
    v127 = *(v0 + 1480);
    v128 = *(v0 + 880);
    v129 = *(v0 + 872);
    v130 = *(v0 + 864);
    v71 = v365;

    (*(v129 + 8))(v128, v130);
    (*(v126 + 8))(v125, v127);
    goto LABEL_21;
  }

  if (v9 != *(v0 + 1560))
  {
    if (v9 != *(v0 + 1564))
    {
      v366 = *(v0 + 1504);
      v385 = *(v0 + 1496);
      v148 = *(v0 + 1488);
      v149 = *(v0 + 1480);
      v150 = *(v0 + 840);
      v151 = *(v0 + 832);
      v152 = sub_21D093EF0();
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_allocError();
      v400[0] = 0;
      v154 = v153;
      v400[1] = 0xE000000000000000;
      sub_21D0946E0();
      *(v0 + 688) = 0;
      *(v0 + 696) = 0xE000000000000000;
      MEMORY[0x223D3C530](0xD000000000000027, 0x800000021D097420);
      MEMORY[0x223D3C530](v151, v150);
      MEMORY[0x223D3C530](8250, 0xE200000000000000);
      sub_21D094740();
      swift_beginAccess();

      sub_21D0900B0(MEMORY[0x277D84F90]);
      sub_21D093ED0();
      (*(*(v152 - 8) + 104))(v154, *MEMORY[0x277D29DA8], v152);
      swift_willThrow();

      v155 = *(v148 + 8);
      v155(v366, v149);
      v155(v385, v149);
      goto LABEL_101;
    }

    v75 = *(v0 + 1496);
    v76 = *(v0 + 952);
    v77 = *(v0 + 944);
    v78 = *(v0 + 928);
    v79 = *(v0 + 920);
    (*(*(v0 + 1488) + 96))(v75, *(v0 + 1480));
    (*(v78 + 32))(v76, v75, v79);
    (*(v78 + 16))(v77, v76, v79);
    v80 = sub_21D094210();
    v81 = sub_21D094560();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 944);
    v84 = *(v0 + 928);
    v85 = *(v0 + 920);
    if (v82)
    {
      v86 = swift_slowAlloc();
      v391 = swift_slowAlloc();
      v400[0] = v391;
      *v86 = 136315138;
      sub_21D091B40(&qword_27CE544B0, MEMORY[0x277D414E8], MEMORY[0x277D414F0]);
      v87 = sub_21D094790();
      v89 = v88;
      v90 = *(v84 + 8);
      v90(v83, v85);
      v91 = sub_21D05550C(v87, v89, v400);

      *(v86 + 4) = v91;
      _os_log_impl(&dword_21D044000, v80, v81, "requestStream completionReason: %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v391);
      MEMORY[0x223D3CDF0](v391, -1, -1);
      MEMORY[0x223D3CDF0](v86, -1, -1);
    }

    else
    {

      v90 = *(v84 + 8);
      v90(v83, v85);
    }

    v156 = sub_21D0941A0();
    sub_21D0941D0();
    v157 = sub_21D094650();
    if (sub_21D094680())
    {
      v158 = *(v0 + 1568);
      v159 = *(v0 + 1400);
      v160 = *(v0 + 1392);
      v161 = *(v0 + 1384);

      sub_21D094200();

      if ((*(v160 + 88))(v159, v161) == v158)
      {
        v162 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v0 + 1392) + 8))(*(v0 + 1400), *(v0 + 1384));
        v162 = "token received";
      }

      v182 = swift_slowAlloc();
      *v182 = 0;
      v183 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v156, v157, v183, "requestStream", v162, v182, 2u);
      MEMORY[0x223D3CDF0](v182, -1, -1);
    }

    v386 = v90;
    v184 = *(v0 + 1440);
    v185 = *(v0 + 1424);
    v186 = *(v0 + 1416);

    v394 = *(v185 + 8);
    v394(v184, v186);
    sub_21D0941A0();
    sub_21D094150();

    v187 = sub_21D0941A0();
    v188 = sub_21D094660();

    if (sub_21D094680())
    {
      v189 = *(v0 + 840);
      v190 = *(v0 + 832);
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v400[0] = v192;
      *v191 = 136446210;
      *(v191 + 4) = sub_21D05550C(v190, v189, v400);
      v193 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v187, v188, v193, "requestStream", "extend token requestIdentifier=%{public, signpost.description=attribute,public}s)", v191, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v192);
      MEMORY[0x223D3CDF0](v192, -1, -1);
      MEMORY[0x223D3CDF0](v191, -1, -1);
    }

    v368 = *(v0 + 1544);
    v344 = *(v0 + 1580);
    v343 = *(v0 + 1576);
    v377 = *(v0 + 1572);
    v194 = *(v0 + 1432);
    v195 = *(v0 + 1416);
    v345 = *(v0 + 1336);
    v346 = *(v0 + 1328);
    v349 = *(v0 + 1320);
    v196 = *(v0 + 936);
    v197 = *(v0 + 928);
    v198 = *(v0 + 920);
    v342 = *(v0 + 912);
    v347 = *(v0 + 904);
    v199 = *(v0 + 896);
    v341 = *(v0 + 888);
    v200 = *(v0 + 824);
    (*(*(v0 + 1424) + 16))(*(v0 + 1448), v194, v195);
    sub_21D0941F0();
    swift_allocObject();
    v201 = sub_21D0941E0();
    v394(v194, v195);
    *v200 = v201;

    (*(v197 + 104))(v196, v377, v198);
    LOBYTE(v201) = sub_21D093140();
    v90(v196, v198);
    if (v201)
    {
      v202 = v344;
    }

    else
    {
      v202 = v343;
    }

    (*(v199 + 104))(v342, v202, v341);

    sub_21D092FB0();
    sub_21D092FA0();
    (*(v346 + 8))(v345, v349);
    (*(v199 + 16))(v347, v342, v341);
    v203 = sub_21D093B20();
    v204 = MEMORY[0x277D71D68];
    *(v0 + 160) = v203;
    *(v0 + 168) = v204;
    __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_21D093B10();
    sub_21D093A90();
    sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38], MEMORY[0x277D71D40]);
    v205 = sub_21D0937D0();
    if (v368)
    {
      v207 = *(v0 + 1488);
      v359 = *(v0 + 1480);
      v369 = *(v0 + 1504);
      v208 = *(v0 + 1368);
      v209 = *(v0 + 1352);
      v210 = *(v0 + 1344);
      v211 = *(v0 + 952);
      v212 = *(v0 + 920);
      v213 = *(v0 + 912);
      v214 = *(v0 + 896);
      v215 = *(v0 + 888);

      (*(v209 + 8))(v208, v210);
      (*(v214 + 8))(v213, v215);
      v386(v211, v212);
      (*(v207 + 8))(v369, v359);
      goto LABEL_101;
    }

    v395 = *(v0 + 1504);
    v216 = *(v0 + 1488);
    v217 = *(v0 + 1352);
    v218 = *(v0 + 1344);
    v219 = *(v0 + 1288);
    v220 = *(v0 + 1272);
    v221 = *(v0 + 1264);
    v360 = *(v0 + 952);
    v370 = *(v0 + 1480);
    v352 = *(v0 + 1368);
    v355 = *(v0 + 920);
    v350 = *(v0 + 912);
    v222 = *(v0 + 896);
    v223 = *(v0 + 888);
    *(v0 + 736) = v205;
    *(v0 + 744) = v206;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
    sub_21D094510();
    (*(v220 + 8))(v219, v221);
    (*(v217 + 8))(v352, v218);
    (*(v222 + 8))(v350, v223);
    v386(v360, v355);
    (*(v216 + 8))(v395, v370);
    goto LABEL_20;
  }

  v23 = *(v0 + 1496);
  v24 = *(v0 + 1256);
  v25 = *(v0 + 1248);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1224);
  v29 = *(v0 + 1176);
  v381 = *(v0 + 1216);
  v389 = *(v0 + 1168);
  (*(*(v0 + 1488) + 96))(v23, *(v0 + 1480));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54258, &qword_21D0964C0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 64);
  (*(v25 + 32))(v24, v23, v26);
  sub_21D05B208(v23 + v31, v27, &qword_27CE54248, &unk_21D095CA0);
  sub_21D05B208(v23 + v32, v381, &qword_27CE54260, &unk_21D095CC0);
  sub_21D05B270(v27, v28, &qword_27CE54248, &unk_21D095CA0);
  if ((*(v29 + 48))(v28, 1, v389) == 1)
  {
    sub_21D04D27C(*(v0 + 1224), &qword_27CE54248, &unk_21D095CA0);
    v33 = *(v0 + 1544);
    goto LABEL_77;
  }

  v131 = *(v0 + 1200);
  v132 = *(v0 + 1192);
  v133 = *(v0 + 1176);
  v134 = *(v0 + 1168);
  (*(v133 + 32))(v131, *(v0 + 1224), v134);
  v135 = *(v133 + 16);
  v135(v132, v131, v134);

  v136 = sub_21D094210();
  v137 = sub_21D094550();

  v138 = os_log_type_enabled(v136, v137);
  v139 = *(v0 + 1192);
  if (v138)
  {
    v140 = *(v0 + 1184);
    v141 = *(v0 + 1176);
    v142 = *(v0 + 1168);
    v376 = *(v0 + 832);
    v383 = *(v0 + 840);
    v143 = swift_slowAlloc();
    v392 = swift_slowAlloc();
    v400[0] = v392;
    *v143 = 136315394;
    *(v143 + 4) = sub_21D05550C(v376, v383, v400);
    *(v143 + 12) = 2082;
    v135(v140, v139, v142);
    v144 = sub_21D094430();
    v146 = v145;
    v384 = *(v141 + 8);
    v384(v139, v142);
    v147 = sub_21D05550C(v144, v146, v400);

    *(v143 + 14) = v147;
    _os_log_impl(&dword_21D044000, v136, v137, "%s %{public}s", v143, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3CDF0](v392, -1, -1);
    MEMORY[0x223D3CDF0](v143, -1, -1);
  }

  else
  {
    v163 = *(v0 + 1176);
    v164 = *(v0 + 1168);

    v384 = *(v163 + 8);
    v384(v139, v164);
  }

  v165 = *(v0 + 1112);
  v166 = *(v0 + 1104);
  v167 = *(v0 + 1096);
  sub_21D093610();
  v168 = *(v165 + 48);
  if (v168(v167, 1, v166) == 1)
  {
    v169 = *(v0 + 1104);
    v170 = *(v0 + 1088);
    sub_21D04D27C(*(v0 + 1096), &qword_27CE54478, &qword_21D096490);
    sub_21D093620();
    if (v168(v170, 1, v169) == 1)
    {
      v171 = *(v0 + 1072);
      v172 = *(v0 + 1056);
      v173 = *(v0 + 1048);
      sub_21D04D27C(*(v0 + 1088), &qword_27CE54478, &qword_21D096490);
      sub_21D08FD64(MEMORY[0x277D84F90]);
      sub_21D093810();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
      v174 = (*(v172 + 80) + 32) & ~*(v172 + 80);
      v175 = swift_allocObject();
      *(v175 + 16) = xmmword_21D0959B0;
      (*(v172 + 16))(v175 + v174, v171, v173);
      sub_21D093830();
      (*(v172 + 8))(v171, v173);
    }

    else
    {
      v224 = *(v0 + 1120);
      v225 = *(v0 + 1112);
      v396 = *(v0 + 1104);
      v226 = *(v0 + 1064);
      v227 = *(v0 + 1056);
      v228 = *(v0 + 1048);
      (*(v225 + 32))(v224, *(v0 + 1088));
      sub_21D093550();
      sub_21D093560();
      sub_21D08FD64(MEMORY[0x277D84F90]);
      sub_21D093810();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
      v229 = (*(v227 + 80) + 32) & ~*(v227 + 80);
      v230 = swift_allocObject();
      *(v230 + 16) = xmmword_21D0959B0;
      (*(v227 + 16))(v230 + v229, v226, v228);
      sub_21D093600();
      sub_21D093830();
      (*(v227 + 8))(v226, v228);
      (*(v225 + 8))(v224, v396);
    }
  }

  else
  {
    v176 = *(v0 + 1128);
    v177 = *(v0 + 1112);
    v393 = *(v0 + 1104);
    v178 = *(v0 + 1080);
    v179 = *(v0 + 1056);
    v367 = *(v0 + 1048);
    (*(v177 + 32))(v176, *(v0 + 1096));
    sub_21D093550();
    sub_21D093560();
    sub_21D08FD64(MEMORY[0x277D84F90]);
    sub_21D093810();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
    v180 = (*(v179 + 80) + 32) & ~*(v179 + 80);
    v181 = swift_allocObject();
    *(v181 + 16) = xmmword_21D0959B0;
    (*(v179 + 16))(v181 + v180, v178, v367);
    sub_21D093600();
    sub_21D093830();
    (*(v179 + 8))(v178, v367);
    (*(v177 + 8))(v176, v393);
  }

  v231 = *(v0 + 1344);
  (*(*(v0 + 1144) + 16))(*(v0 + 1152), *(v0 + 1160), *(v0 + 1136));
  *(v0 + 600) = sub_21D093B00();
  *(v0 + 608) = MEMORY[0x277D71D60];
  __swift_allocate_boxed_opaque_existential_1((v0 + 576));

  sub_21D093AF0();
  *(v0 + 560) = v231;
  *(v0 + 568) = sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38], MEMORY[0x277D71D40]);
  __swift_allocate_boxed_opaque_existential_1((v0 + 536));
  sub_21D093A90();
  if (qword_281221488 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v232 = v0 + 536;
  if (byte_281221490 != 1)
  {
    sub_21D0590D0(v232, v0 + 16);

    v233 = sub_21D094210();
    v234 = sub_21D094560();

    if (os_log_type_enabled(v233, v234))
    {
      v244 = *(v0 + 840);
      v245 = *(v0 + 832);
      v237 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      v400[0] = v238;
      *v237 = 136315395;
      *(v237 + 4) = sub_21D05550C(v245, v244, v400);
      *(v237 + 12) = 2081;
      sub_21D0590D0(v0 + 16, v0 + 376);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
      v246 = sub_21D094430();
      v248 = v247;
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v249 = sub_21D05550C(v246, v248, v400);

      *(v237 + 14) = v249;
      v243 = "%s Emitting TG event: %{private}s";
      goto LABEL_70;
    }

    v250 = (v0 + 16);
LABEL_73:
    __swift_destroy_boxed_opaque_existential_0(v250);
    goto LABEL_74;
  }

  sub_21D0590D0(v232, v0 + 216);

  v233 = sub_21D094210();
  v234 = sub_21D094560();

  if (!os_log_type_enabled(v233, v234))
  {

    v250 = (v0 + 216);
    goto LABEL_73;
  }

  v235 = *(v0 + 840);
  v236 = *(v0 + 832);
  v237 = swift_slowAlloc();
  v238 = swift_slowAlloc();
  v400[0] = v238;
  *v237 = 136315394;
  *(v237 + 4) = sub_21D05550C(v236, v235, v400);
  *(v237 + 12) = 2082;
  sub_21D0590D0(v0 + 216, v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
  v239 = sub_21D094430();
  v241 = v240;
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));
  v242 = sub_21D05550C(v239, v241, v400);

  *(v237 + 14) = v242;
  v243 = "%s Emitting TG event: %{public}s";
LABEL_70:
  _os_log_impl(&dword_21D044000, v233, v234, v243, v237, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223D3CDF0](v238, -1, -1);
  MEMORY[0x223D3CDF0](v237, -1, -1);

LABEL_74:
  v251 = *(v0 + 1544);
  v252 = sub_21D0937D0();
  if (v251)
  {
    v254 = *(v0 + 1488);
    v371 = *(v0 + 1480);
    v378 = *(v0 + 1504);
    v255 = *(v0 + 1248);
    v356 = *(v0 + 1240);
    v361 = *(v0 + 1256);
    v353 = *(v0 + 1232);
    v256 = *(v0 + 1216);
    v257 = *(v0 + 1200);
    v258 = *(v0 + 1168);
    v259 = *(v0 + 1160);
    v260 = *(v0 + 1144);
    v261 = *(v0 + 1136);

    (*(v260 + 8))(v259, v261);
    v384(v257, v258);
    sub_21D04D27C(v256, &qword_27CE54260, &unk_21D095CC0);
    sub_21D04D27C(v353, &qword_27CE54248, &unk_21D095CA0);
    (*(v255 + 8))(v361, v356);
    (*(v254 + 8))(v378, v371);
    v262 = (v0 + 536);
    goto LABEL_100;
  }

  v263 = *(v0 + 1304);
  v264 = *(v0 + 1272);
  v265 = *(v0 + 1264);
  v397 = *(v0 + 1200);
  v266 = *(v0 + 1168);
  v267 = *(v0 + 1160);
  v268 = *(v0 + 1144);
  v269 = *(v0 + 1136);
  *(v0 + 704) = v252;
  *(v0 + 712) = v253;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
  sub_21D094510();
  (*(v264 + 8))(v263, v265);
  (*(v268 + 8))(v267, v269);
  v384(v397, v266);
  __swift_destroy_boxed_opaque_existential_0((v0 + 536));
  v33 = 0;
LABEL_77:
  v270 = *(v0 + 1208);
  v271 = *(v0 + 1032);
  v272 = *(v0 + 1024);
  sub_21D05B270(*(v0 + 1216), v270, &qword_27CE54260, &unk_21D095CC0);
  if ((*(v271 + 48))(v270, 1, v272) != 1)
  {
    v281 = *(v0 + 976);
    (*(*(v0 + 1032) + 32))(*(v0 + 1040), *(v0 + 1208), *(v0 + 1024));
    sub_21D0935B0();
    v282 = sub_21D0935A0();
    v283 = *(v282 - 8);
    v284 = (*(v283 + 48))(v281, 1, v282);
    v285 = *(v0 + 976);
    v398 = v33;
    if (v284 == 1)
    {
      sub_21D04D27C(v285, &qword_27CE54480, &qword_21D096498);
    }

    else
    {
      sub_21D093590();
      (*(v283 + 8))(v285, v282);
    }

    sub_21D093C20();
    sub_21D0935C0();
    sub_21D093580();
    sub_21D0932D0();
    sub_21D094430();
    v286 = sub_21D0935D0();
    v287 = *(v286 + 16);
    if (v287)
    {
      v288 = (v0 + 784);
      *(v0 + 784) = MEMORY[0x277D84F90];
      v289 = v286;
      sub_21D08FAFC(0, v287, 0);
      v290 = v289;
      v291 = *(v0 + 784);
      v292 = *(v291 + 16);
      v293 = 32;
      do
      {
        v294 = *(v290 + v293);
        *v288 = v291;
        v295 = *(v291 + 24);
        if (v292 >= v295 >> 1)
        {
          sub_21D08FAFC((v295 > 1), v292 + 1, 1);
          v290 = v289;
          v291 = *v288;
        }

        *(v291 + 16) = v292 + 1;
        *(v291 + 8 * v292 + 32) = v294;
        v293 += 4;
        ++v292;
        --v287;
      }

      while (v287);
    }

    v296 = *(v0 + 1344);
    v297 = *(v0 + 1016);
    v298 = *(v0 + 1008);
    v299 = *(v0 + 1000);
    v300 = *(v0 + 992);
    sub_21D0900B0(MEMORY[0x277D84F90]);
    sub_21D093C40();
    (*(v299 + 16))(v298, v297, v300);
    v301 = sub_21D093710();
    v302 = MEMORY[0x277D719C8];
    *(v0 + 320) = v301;
    *(v0 + 328) = v302;
    __swift_allocate_boxed_opaque_existential_1((v0 + 296));

    sub_21D093700();
    *(v0 + 280) = v296;
    *(v0 + 288) = sub_21D091B40(&qword_281221788, MEMORY[0x277D71D38], MEMORY[0x277D71D40]);
    __swift_allocate_boxed_opaque_existential_1((v0 + 256));
    sub_21D093A90();
    if (qword_281221488 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v303 = v0 + 256;
    if (byte_281221490)
    {
      sub_21D0590D0(v303, v0 + 456);

      v304 = sub_21D094210();
      v305 = sub_21D094560();

      if (os_log_type_enabled(v304, v305))
      {
        v306 = *(v0 + 840);
        v307 = *(v0 + 832);
        v308 = swift_slowAlloc();
        v309 = swift_slowAlloc();
        v400[0] = v309;
        *v308 = 136315394;
        *(v308 + 4) = sub_21D05550C(v307, v306, v400);
        *(v308 + 12) = 2082;
        sub_21D0590D0(v0 + 456, v0 + 496);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
        v310 = sub_21D094430();
        v312 = v311;
        __swift_destroy_boxed_opaque_existential_0((v0 + 456));
        v313 = sub_21D05550C(v310, v312, v400);

        *(v308 + 14) = v313;
        v314 = "%s Emitting TG event: %{public}s";
LABEL_94:
        _os_log_impl(&dword_21D044000, v304, v305, v314, v308, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v309, -1, -1);
        MEMORY[0x223D3CDF0](v308, -1, -1);

LABEL_98:
        v322 = sub_21D0937D0();
        if (!v398)
        {
          v333 = *(v0 + 1488);
          v388 = *(v0 + 1480);
          v399 = *(v0 + 1504);
          v334 = *(v0 + 1296);
          v335 = *(v0 + 1272);
          v336 = *(v0 + 1248);
          v373 = *(v0 + 1240);
          v380 = *(v0 + 1256);
          v358 = *(v0 + 1216);
          v363 = *(v0 + 1232);
          v354 = *(v0 + 1040);
          v337 = *(v0 + 1032);
          v348 = *(v0 + 1264);
          v351 = *(v0 + 1024);
          v338 = *(v0 + 1016);
          v339 = *(v0 + 1000);
          v340 = *(v0 + 992);
          *(v0 + 720) = v322;
          *(v0 + 728) = v323;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8);
          sub_21D094510();
          (*(v335 + 8))(v334, v348);
          (*(v339 + 8))(v338, v340);
          (*(v337 + 8))(v354, v351);
          sub_21D04D27C(v358, &qword_27CE54260, &unk_21D095CC0);
          sub_21D04D27C(v363, &qword_27CE54248, &unk_21D095CA0);
          (*(v336 + 8))(v380, v373);
          (*(v333 + 8))(v399, v388);
          __swift_destroy_boxed_opaque_existential_0((v0 + 256));
          goto LABEL_20;
        }

        v324 = *(v0 + 1488);
        v379 = *(v0 + 1480);
        v387 = *(v0 + 1504);
        v325 = *(v0 + 1248);
        v362 = *(v0 + 1240);
        v372 = *(v0 + 1256);
        v357 = *(v0 + 1232);
        v326 = *(v0 + 1216);
        v327 = *(v0 + 1040);
        v328 = *(v0 + 1032);
        v329 = *(v0 + 1024);
        v330 = *(v0 + 1016);
        v331 = *(v0 + 1000);
        v332 = *(v0 + 992);

        (*(v331 + 8))(v330, v332);
        (*(v328 + 8))(v327, v329);
        sub_21D04D27C(v326, &qword_27CE54260, &unk_21D095CC0);
        sub_21D04D27C(v357, &qword_27CE54248, &unk_21D095CA0);
        (*(v325 + 8))(v372, v362);
        (*(v324 + 8))(v387, v379);
        v262 = (v0 + 256);
LABEL_100:
        __swift_destroy_boxed_opaque_existential_0(v262);
        goto LABEL_101;
      }

      v321 = (v0 + 456);
    }

    else
    {
      sub_21D0590D0(v303, v0 + 336);

      v304 = sub_21D094210();
      v305 = sub_21D094560();

      if (os_log_type_enabled(v304, v305))
      {
        v315 = *(v0 + 840);
        v316 = *(v0 + 832);
        v308 = swift_slowAlloc();
        v309 = swift_slowAlloc();
        v400[0] = v309;
        *v308 = 136315395;
        *(v308 + 4) = sub_21D05550C(v316, v315, v400);
        *(v308 + 12) = 2081;
        sub_21D0590D0(v0 + 336, v0 + 416);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D0, &qword_21D096538);
        v317 = sub_21D094430();
        v319 = v318;
        __swift_destroy_boxed_opaque_existential_0((v0 + 336));
        v320 = sub_21D05550C(v317, v319, v400);

        *(v308 + 14) = v320;
        v314 = "%s Emitting TG event: %{private}s";
        goto LABEL_94;
      }

      v321 = (v0 + 336);
    }

    __swift_destroy_boxed_opaque_existential_0(v321);
    goto LABEL_98;
  }

  v273 = *(v0 + 1504);
  v274 = *(v0 + 1488);
  v275 = *(v0 + 1480);
  v276 = *(v0 + 1256);
  v277 = *(v0 + 1248);
  v278 = *(v0 + 1240);
  v279 = *(v0 + 1232);
  v280 = *(v0 + 1208);
  sub_21D04D27C(*(v0 + 1216), &qword_27CE54260, &unk_21D095CC0);
  sub_21D04D27C(v279, &qword_27CE54248, &unk_21D095CA0);
  (*(v277 + 8))(v276, v278);
  (*(v274 + 8))(v273, v275);
  sub_21D04D27C(v280, &qword_27CE54260, &unk_21D095CC0);
LABEL_20:
  v71 = *(v0 + 1528);
LABEL_21:
  *(v0 + 1528) = v71;
  v72 = swift_task_alloc();
  *(v0 + 1536) = v72;
  *v72 = v0;
  v72[1] = sub_21D06E280;
  v73 = *(v0 + 1472);

  return sub_21D059134(v73);
}

uint64_t sub_21D0712FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NewInferenceProvider.requestOneShot(clientData:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_21D093EE0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_21D093EB0();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D071740, 0, 0);
}

{
  v4[46] = a3;
  v4[47] = v3;
  v4[44] = a1;
  v4[45] = a2;
  v5 = sub_21D093EE0();
  v4[48] = v5;
  v4[49] = *(v5 - 8);
  v4[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542F8, &qword_21D095E78);
  v4[51] = swift_task_alloc();
  v6 = sub_21D0930A0();
  v4[52] = v6;
  v4[53] = *(v6 - 8);
  v4[54] = swift_task_alloc();
  v7 = sub_21D0930C0();
  v4[55] = v7;
  v4[56] = *(v7 - 8);
  v4[57] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54300, &qword_21D095E80);
  v4[58] = v8;
  v4[59] = *(v8 - 8);
  v4[60] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54308, &qword_21D095E88);
  v4[61] = v9;
  v4[62] = *(v9 - 8);
  v4[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54310, &qword_21D095E90);
  v4[64] = swift_task_alloc();
  v10 = sub_21D0930E0();
  v4[65] = v10;
  v4[66] = *(v10 - 8);
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v11 = sub_21D093A70();
  v4[69] = v11;
  v4[70] = *(v11 - 8);
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v12 = sub_21D094330();
  v4[77] = v12;
  v4[78] = *(v12 - 8);
  v4[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54318, &qword_21D095E98);
  v4[80] = swift_task_alloc();
  v13 = sub_21D094360();
  v4[81] = v13;
  v4[82] = *(v13 - 8);
  v4[83] = swift_task_alloc();
  v14 = sub_21D093800();
  v4[84] = v14;
  v4[85] = *(v14 - 8);
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v15 = sub_21D094070();
  v4[89] = v15;
  v4[90] = *(v15 - 8);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v16 = sub_21D094230();
  v4[94] = v16;
  v4[95] = *(v16 - 8);
  v4[96] = swift_task_alloc();
  v17 = sub_21D094180();
  v4[97] = v17;
  v4[98] = *(v17 - 8);
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v18 = sub_21D092FC0();
  v4[101] = v18;
  v4[102] = *(v18 - 8);
  v4[103] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D072320, 0, 0);
}

uint64_t sub_21D071740()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_21D055C20(v2, v1);
  MEMORY[0x223D3BF70](v2, v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_21D071804;
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[4];

  return NewInferenceProvider.requestOneShot(clientData:configuration:)(v4, v5, v6);
}

uint64_t sub_21D071804()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v2[14] = v0;

  v6 = *(v4 + 8);
  v2[15] = v6;
  v2[16] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_21D071BEC;
  }

  else
  {
    v7 = sub_21D071988;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_21D071988(uint64_t a1)
{
  v2 = sub_21D093E90();
  v4 = v1[15];
  v5 = v1[12];
  if (v3 >> 60 == 15)
  {
    v6 = v1[8];
    v17 = v1[9];
    v8 = v1[6];
    v7 = v1[7];
    sub_21D0900B0(MEMORY[0x277D84F90]);
    sub_21D093ED0();
    v9 = sub_21D093EF0();
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    v11 = v10;
    (*(v7 + 16))(v10, v6, v8);
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D29DA8], v9);
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
    v4(v5, v17);

    v12 = v1[1];

    return v12();
  }

  else
  {
    v14 = v2;
    v15 = v3;
    v4(v1[12], v1[9]);

    v16 = v1[1];

    return v16(v14, v15);
  }
}

uint64_t sub_21D071BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D072320()
{
  v290 = v0;
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[101];
  sub_21D094010();
  v4 = sub_21D092FA0();
  v6 = v5;
  v0[104] = v5;
  v268 = *(v2 + 8);
  v268(v1, v3);
  sub_21D0941A0();
  sub_21D094150();

  v7 = sub_21D0941A0();
  v8 = sub_21D094660();

  v280 = v6;
  v266 = v4;
  if (sub_21D094680())
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v289[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_21D05550C(v4, v6, v289);
    v11 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v7, v8, v11, "requestOneShot", "full request requestIdentifier=%{public, signpost.description=attribute,public}s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D3CDF0](v10, -1, -1);
    MEMORY[0x223D3CDF0](v9, -1, -1);
  }

  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[98];
  v287 = v0;
  v15 = v0[97];
  v16 = v0[96];
  v17 = v0[95];
  v276 = *(v287 + 94);
  v18 = *(v287 + 93);
  v281 = *(v287 + 92);
  v19 = *(v287 + 90);
  v278 = *(v287 + 89);
  v20 = *(v287 + 47);
  v21 = *(v287 + 46);
  (*(v14 + 16))(v13, v12, v15);
  sub_21D0941F0();
  swift_allocObject();
  v275 = sub_21D0941E0();
  *(v287 + 105) = v275;
  v22 = v15;
  v23 = v287;
  (*(v14 + 8))(v12, v22);
  v24 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  (*(v17 + 16))(v16, v20 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger, v276);
  v25 = *(v19 + 16);
  v25(v18, v21, v278);
  v264 = sub_21D093670();
  swift_allocObject();
  v277 = sub_21D093650();
  *(v287 + 106) = v277;
  v261 = v25;
  v25(v281, v21, v278);
  v282 = v20;
  v26 = sub_21D094210();
  v27 = sub_21D094580();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v287 + 103);
    v257 = v24;
    v29 = *(v287 + 101);
    v30 = *(v287 + 92);
    v31 = *(v287 + 90);
    v253 = *(v287 + 89);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v289[0] = v33;
    *v32 = 136315138;
    sub_21D094010();
    sub_21D091B40(&qword_2812217B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v34 = sub_21D094790();
    v36 = v35;
    v37 = v29;
    v24 = v257;
    v268(v28, v37);
    v38 = *(v31 + 8);
    v38(v30, v253);
    v39 = sub_21D05550C(v34, v36, v289);
    v23 = v287;

    *(v32 + 4) = v39;
    _os_log_impl(&dword_21D044000, v26, v27, "%s executing one shot request", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x223D3CDF0](v33, -1, -1);
    MEMORY[0x223D3CDF0](v32, -1, -1);
  }

  else
  {
    v40 = *(v287 + 92);
    v41 = *(v287 + 90);
    v42 = *(v287 + 89);

    v38 = *(v41 + 8);
    v38(v40, v42);
  }

  v43 = sub_21D093E90();
  *(v23 + 107) = v43;
  *(v23 + 108) = v44;
  if (v44 >> 60 == 15)
  {

    v45 = sub_21D094210();
    v46 = sub_21D094570();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_21D044000, v45, v46, "No data present in client request", v47, 2u);
      MEMORY[0x223D3CDF0](v47, -1, -1);
    }

    v48 = *(v23 + 49);
    v49 = *(v23 + 50);
    v50 = *(v23 + 48);

    swift_beginAccess();

    sub_21D0900B0(MEMORY[0x277D84F90]);
    sub_21D093ED0();
    v51 = sub_21D093EF0();
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    v53 = v52;
    (*(v48 + 16))(v52, v49, v50);
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D29DB0], v51);
    swift_willThrow();

    (*(v48 + 8))(v49, v50);
    goto LABEL_11;
  }

  v54 = v43;
  v55 = v44;
  sub_21D091B40(&qword_281221798, MEMORY[0x277D71BC0], MEMORY[0x277D71BC8]);
  sub_21D0937C0();
  v58 = *(v23 + 82);
  v59 = *(v23 + 81);
  v60 = *(v23 + 80);
  sub_21D093E80();
  v61 = (*(v58 + 48))(v60, 1, v59);
  if (v61 == 1)
  {
    sub_21D04D27C(*(v23 + 80), &qword_27CE54318, &qword_21D095E98);
  }

  else
  {
    (*(*(v23 + 82) + 32))(*(v23 + 83), *(v23 + 80), *(v23 + 81));
    sub_21D094350();
    v62 = MEMORY[0x223D3CEB0]();
    if (v62 == sub_21D094320())
    {
      v254 = v55;
      v258 = *(v23 + 83);
      v63 = *(v23 + 82);
      v248 = *(v23 + 81);
      v64 = *(v23 + 79);
      v65 = *(v287 + 78);
      v66 = v24;
      v67 = v54;
      v68 = *(v287 + 77);
      swift_unknownObjectRetain();
      sub_21D094340();
      sub_21D0937F0();
      swift_unknownObjectRelease();
      v69 = v64;
      v55 = v254;
      v70 = v68;
      v54 = v67;
      v24 = v66;
      (*(v65 + 8))(v69, v70);
      v23 = v287;
      (*(v63 + 8))(v258, v248);
    }

    else
    {
      (*(*(v23 + 82) + 8))(*(v23 + 83), *(v23 + 81));
      swift_unknownObjectRelease();
    }
  }

  v71 = *(v23 + 88);
  v72 = *(v23 + 86);
  v73 = *(v23 + 85);
  v74 = *(v23 + 84);
  (*(v73 + 32))(v71, *(v23 + 87), v74);
  (*(v73 + 16))(v72, v71, v74);
  v75 = (*(v73 + 88))(v72, v74);
  v76 = *(v23 + 86);
  v77 = *(v23 + 84);
  v78 = *(v23 + 85) + 8;
  if (v75 == *MEMORY[0x277D71B98])
  {

    v79 = *v78;
    (*v78)(v76, v77);
    sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);
    v80 = sub_21D094600();
    if (v81)
    {
      v279 = v79;
      v82 = sub_21D0945E0();
      if ((v83 & 1) == 0)
      {
        v121 = v82;
        v122 = sub_21D094210();
        v123 = sub_21D094560();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = 134217984;
          *(v124 + 4) = v121;
          _os_log_impl(&dword_21D044000, v122, v123, "Setting context length from user default contextLengthDefault=%ld", v124, 0xCu);
          MEMORY[0x223D3CDF0](v124, -1, -1);
        }
      }

      v125 = v23;
      v126 = sub_21D094060();
      v128 = v127;
      sub_21D093040();
      swift_allocObject();
      sub_21D093030();
      sub_21D093010();
      v252 = v54;

      if (*(v125 + 23))
      {
        v153 = *(v125 + 66);

        sub_21D046D78(v125 + 10, v125 + 120);
        sub_21D0590D0(v125 + 120, v125 + 200);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54330, &qword_21D095ED8);
        v154 = swift_dynamicCast();
        v155 = *(v153 + 56);
        v23 = v125;
        if (v154)
        {
          v256 = v55;
          v156 = *(v125 + 68);
          v157 = *(v125 + 66);
          v158 = *(v23 + 65);
          v160 = *(v23 + 63);
          v159 = *(v23 + 64);
          v161 = *(v23 + 61);
          v162 = *(v23 + 62);
          v155(v159, 0, 1, v158);
          (*(v157 + 32))(v156, v159, v158);
          sub_21D0930D0();
          sub_21D093080();
          v163 = *(v162 + 8);
          v163(v160, v161);
          if (*(v23 + 38))
          {
            sub_21D046D78((v23 + 280), (v23 + 15));
            __swift_project_boxed_opaque_existential_1(v23 + 30, *(v23 + 33));
            sub_21D093070();
            v198 = sub_21D094210();
            v199 = sub_21D094560();
            if (os_log_type_enabled(v198, v199))
            {
              v200 = swift_slowAlloc();
              *v200 = 0;
              _os_log_impl(&dword_21D044000, v198, v199, "Successfully fetched asset server configuration", v200, 2u);
              MEMORY[0x223D3CDF0](v200, -1, -1);
            }

            sub_21D093000();
            v265 = v163;
            v210 = sub_21D094210();
            v211 = sub_21D094560();
            if (os_log_type_enabled(v210, v211))
            {
              v212 = swift_slowAlloc();
              *v212 = 0;
              _os_log_impl(&dword_21D044000, v210, v211, "Successfully got serverAsset metadata", v212, 2u);
              MEMORY[0x223D3CDF0](v212, -1, -1);
            }

            v213 = *(v287 + 68);
            v214 = *(v287 + 67);
            v215 = *(v287 + 66);
            v270 = *(v287 + 65);
            v216 = *(v287 + 53);
            v217 = *(v287 + 54);
            v218 = *(v287 + 52);

            v219 = sub_21D0930B0();
            v220 = MEMORY[0x223D3B160](v219);
            (*(v216 + 8))(v217, v218);
            (*(v215 + 16))(v214, v213, v270);
            v221 = sub_21D094210();
            v222 = sub_21D094560();
            v223 = os_log_type_enabled(v221, v222);
            v224 = *(v287 + 67);
            v225 = *(v287 + 66);
            v226 = *(v287 + 65);
            if (v223)
            {
              v227 = *(v287 + 63);
              v228 = *(v287 + 61);
              v249 = *(v287 + 65);
              v229 = swift_slowAlloc();
              v289[0] = swift_slowAlloc();
              v271 = v220;
              v230 = v289[0];
              *v229 = 136315394;
              v262 = v222;
              sub_21D0930D0();
              sub_21D090A4C(&qword_27CE54340, &qword_27CE54308, &qword_21D095E88, MEMORY[0x277D29C70]);
              v231 = sub_21D094790();
              v233 = v232;
              v265(v227, v228);
              v234 = *(v225 + 8);
              v234(v224, v249);
              v235 = sub_21D05550C(v231, v233, v289);

              *(v229 + 4) = v235;
              *(v229 + 12) = 2048;
              *(v229 + 14) = v271;
              _os_log_impl(&dword_21D044000, v221, v262, "Resource bundle %s has context length:%ld.", v229, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v230);
              MEMORY[0x223D3CDF0](v230, -1, -1);
              MEMORY[0x223D3CDF0](v229, -1, -1);
            }

            else
            {

              v234 = *(v225 + 8);
              v234(v224, v226);
            }

            sub_21D093A60();
            sub_21D091B40(&qword_27CE54328, MEMORY[0x277D71D20], MEMORY[0x277D71D28]);
            v236 = sub_21D0937D0();
            v286 = *(v287 + 88);
            v250 = *(v287 + 75);
            v237 = *(v287 + 70);
            v238 = *(v287 + 69);
            v272 = *(v287 + 68);
            v274 = *(v287 + 84);
            v267 = *(v287 + 65);
            v239 = v234;
            v240 = *(v287 + 59);
            v260 = *(v287 + 58);
            v263 = *(v287 + 60);
            v241 = *(v287 + 57);
            v242 = *(v287 + 56);
            v243 = *(v287 + 55);
            v244 = v236;
            v246 = v245;
            sub_21D055C20(v236, v245);
            MEMORY[0x223D3BF70](v244, v246);
            sub_21D058258(v252, v256);

            sub_21D04FE3C(v244, v246);

            (*(v237 + 8))(v250, v238);
            v247 = v241;
            v23 = v287;
            (*(v242 + 8))(v247, v243);
            (*(v240 + 8))(v263, v260);
            v239(v272, v267);
            __swift_destroy_boxed_opaque_existential_0(v287 + 15);
            v279(v286, v274);
            __swift_destroy_boxed_opaque_existential_0(v287 + 30);
            goto LABEL_11;
          }

          sub_21D04D27C(v23 + 280, &qword_27CE54338, &qword_21D095EE0);
          v187 = sub_21D094210();
          v188 = sub_21D094560();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            *v189 = 0;
            _os_log_impl(&dword_21D044000, v187, v188, "Failed to get server configuration. Fallback to default context length", v189, 2u);
            MEMORY[0x223D3CDF0](v189, -1, -1);
          }

          sub_21D093A60();
          sub_21D091B40(&qword_27CE54328, MEMORY[0x277D71D20], MEMORY[0x277D71D28]);
          v190 = sub_21D0937D0();
          v285 = *(v23 + 88);
          v201 = *(v23 + 74);
          v202 = *(v23 + 70);
          v203 = *(v23 + 69);
          v269 = *(v23 + 68);
          v273 = *(v23 + 84);
          v204 = *(v23 + 66);
          v205 = *(v23 + 65);
          v206 = v190;
          v208 = v207;
          sub_21D055C20(v190, v207);
          MEMORY[0x223D3BF70](v206, v208);
          sub_21D058258(v252, v256);

          v209 = v208;
          v23 = v287;
          sub_21D04FE3C(v206, v209);

          (*(v202 + 8))(v201, v203);
          (*(v204 + 8))(v269, v205);
          __swift_destroy_boxed_opaque_existential_0(v287 + 15);
          v164 = v285;
          v165 = v273;
          goto LABEL_45;
        }

        v174 = *(v125 + 64);
        v155(v174, 1, 1, *(v125 + 65));
        sub_21D04D27C(v174, &qword_27CE54310, &qword_21D095E90);
        v175 = sub_21D094210();
        v176 = sub_21D094560();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          *v177 = 0;
          _os_log_impl(&dword_21D044000, v175, v176, "Failed to cast bundle to LLMBundle. Fallback to default context length", v177, 2u);
          MEMORY[0x223D3CDF0](v177, -1, -1);
        }

        sub_21D093A60();
        sub_21D091B40(&qword_27CE54328, MEMORY[0x277D71D20], MEMORY[0x277D71D28]);
        v178 = sub_21D0937D0();
        v288 = *(v125 + 88);
        v191 = *(v125 + 84);
        v192 = *(v125 + 73);
        v193 = *(v125 + 70);
        v194 = *(v23 + 69);
        v195 = v178;
        v197 = v196;
        sub_21D055C20(v178, v196);
        MEMORY[0x223D3BF70](v195, v197);
        sub_21D058258(v252, v55);

        sub_21D04FE3C(v195, v197);

        (*(v193 + 8))(v192, v194);
        __swift_destroy_boxed_opaque_existential_0(v23 + 15);
        v164 = v288;
      }

      else
      {
        sub_21D04D27C((v125 + 10), &qword_27CE54290, &qword_21D095DF8);

        v166 = sub_21D094210();
        v167 = sub_21D094560();

        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          v169 = v55;
          v170 = swift_slowAlloc();
          v289[0] = v170;
          *v168 = 136315138;
          v171 = v54;
          v172 = sub_21D05550C(v126, v128, v289);

          *(v168 + 4) = v172;
          v54 = v171;
          _os_log_impl(&dword_21D044000, v166, v167, "Failed to get resource bundle for %s. Fallback to default context length", v168, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v170);
          v173 = v170;
          v55 = v169;
          MEMORY[0x223D3CDF0](v173, -1, -1);
          MEMORY[0x223D3CDF0](v168, -1, -1);
        }

        else
        {
        }

        v23 = v287;
        sub_21D093A60();
        sub_21D091B40(&qword_27CE54328, MEMORY[0x277D71D20], MEMORY[0x277D71D28]);
        v179 = sub_21D0937D0();
        v284 = *(v287 + 88);
        v191 = *(v287 + 84);
        v180 = *(v287 + 72);
        v181 = *(v287 + 70);
        v182 = *(v287 + 69);
        v183 = v54;
        v184 = v179;
        v186 = v185;
        sub_21D055C20(v179, v185);
        MEMORY[0x223D3BF70](v184, v186);
        sub_21D058258(v183, v55);

        sub_21D04FE3C(v184, v186);

        (*(v181 + 8))(v180, v182);
        v164 = v284;
      }

      v165 = v191;
    }

    else
    {
      v99 = v80;
      v100 = sub_21D094210();
      v101 = sub_21D094560();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 134217984;
        *(v102 + 4) = v99;
        _os_log_impl(&dword_21D044000, v100, v101, "UserDefault overrideContextLength is set. Forcing context length to be %ld", v102, 0xCu);
        MEMORY[0x223D3CDF0](v102, -1, -1);
      }

      sub_21D093A60();
      sub_21D091B40(&qword_27CE54328, MEMORY[0x277D71D20], MEMORY[0x277D71D28]);
      v103 = sub_21D0937D0();
      v104 = *(v23 + 88);
      v105 = *(v23 + 76);
      v106 = *(v23 + 70);
      v107 = *(v23 + 69);
      v148 = *(v23 + 84);
      v149 = v54;
      v150 = v103;
      v279 = v79;
      v152 = v151;
      sub_21D055C20(v103, v151);
      MEMORY[0x223D3BF70](v150, v152);
      sub_21D058258(v149, v55);

      sub_21D04FE3C(v150, v152);

      (*(v106 + 8))(v105, v107);
      v164 = v104;
      v165 = v148;
    }

LABEL_45:
    v279(v164, v165);
LABEL_11:

    v56 = *(v23 + 1);

    return v56();
  }

  v259 = v23 + 5;
  v84 = *(v23 + 47);
  v85 = *v78;
  *(v23 + 109) = *v78;
  *(v23 + 110) = v78 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85(v76, v77);
  v86 = MEMORY[0x277D41578];
  *(v23 + 13) = v264;
  *(v23 + 14) = v86;
  *(v23 + 10) = v277;
  v87 = swift_task_alloc();
  *(v23 + 111) = v87;
  v87[2] = v84;
  v87[3] = v275;
  v87[4] = v277;
  v87[5] = v266;
  v87[6] = v280;
  sub_21D091E88(0, &qword_281221468, 0x277CBEBD0);

  if (sub_21D0945A0())
  {
    v261(*(v23 + 91), *(v23 + 46), *(v23 + 89));
    v88 = sub_21D094210();
    v89 = sub_21D094570();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = *(v23 + 103);
      v91 = *(v23 + 101);
      v92 = *(v23 + 91);
      v283 = *(v23 + 89);
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v289[0] = v94;
      *v93 = 136315138;
      sub_21D094010();
      v95 = sub_21D092FA0();
      v97 = v96;
      v268(v90, v91);
      v38(v92, v283);
      v98 = sub_21D05550C(v95, v97, v289);
      v23 = v287;

      *(v93 + 4) = v98;
      _os_log_impl(&dword_21D044000, v88, v89, "%s Fallback is enabled", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      MEMORY[0x223D3CDF0](v94, -1, -1);
      MEMORY[0x223D3CDF0](v93, -1, -1);
    }

    else
    {
      v129 = *(v23 + 91);
      v130 = *(v23 + 89);

      v38(v129, v130);
    }

    v131 = sub_21D093EF0();
    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    v133 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21D0959B0;
    *(inited + 32) = sub_21D0943F0();
    *(inited + 40) = v135;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x800000021D0971A0;
    sub_21D0900B0(inited);
    swift_setDeallocating();
    sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
    sub_21D093ED0();
    (*(*(v131 - 8) + 104))(v133, *MEMORY[0x277D29DA8], v131);
    swift_willThrow();

    v136 = *(v23 + 109);
    v137 = *(v23 + 108);
    v138 = *(v23 + 107);
    v139 = *(v23 + 88);
    v140 = *(v23 + 84);

    sub_21D058258(v138, v137);

    v136(v139, v140);
    __swift_destroy_boxed_opaque_existential_0(v259);
    goto LABEL_11;
  }

  v251 = v54;
  v255 = v55;
  v108 = *(v23 + 103);
  v109 = *(v23 + 101);
  v110 = *(v287 + 51);
  sub_21D094010();
  v111 = sub_21D092FA0();
  v112 = v24;
  v114 = v113;
  *(v287 + 112) = v113;
  v268(v108, v109);
  logMetric(logger:name:startInstant:)(v282 + v112, 0xD000000000000012, 0x800000021D097180);
  v115 = sub_21D093D00();
  *(v287 + 113) = v115;
  *(v287 + 114) = *(v115 - 8);
  v116 = swift_task_alloc();
  *(v287 + 115) = v116;
  sub_21D093CF0();
  sub_21D094000();
  v117 = sub_21D093E70();
  v118 = *(v117 - 8);
  v119 = (*(v118 + 48))(v110, 1, v117);
  v120 = *(v287 + 51);
  if (v119 == 1)
  {
    sub_21D04D27C(*(v287 + 51), &qword_27CE542F8, &qword_21D095E78);
  }

  else
  {
    sub_21D093E50();
    (*(v118 + 8))(v120, v117);
  }

  v141 = v119 == 1;
  v142 = *(v287 + 88);
  v144 = *(v287 + 46);
  v143 = *(v287 + 47);
  LOBYTE(v289[0]) = v141;
  sub_21D093CE0();
  v145 = swift_task_alloc();
  *(v287 + 116) = v145;
  v145[2] = v142;
  v145[3] = v143;
  v145[4] = v111;
  v145[5] = v114;
  v145[6] = v259;
  v145[7] = v251;
  v145[8] = v255;
  v145[9] = v144;
  v145[10] = &unk_21D095EB0;
  v145[11] = v87;
  v146 = swift_task_alloc();
  *(v287 + 117) = v146;
  *v146 = v287;
  v146[1] = sub_21D074AE4;
  v147 = *(v287 + 44);

  return sub_21D07C794(v147, v111, v114, 1, v116, &unk_21D095EC0, v145);
}

uint64_t sub_21D074AE4()
{
  *(*v1 + 944) = v0;

  if (v0)
  {
    v2 = sub_21D074EB4;
  }

  else
  {
    v2 = sub_21D074C34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D074C34()
{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v10 = v0[109];
  v4 = v0[108];
  v5 = v0[107];
  v9 = v0[88];
  v6 = v0[84];

  (*(v2 + 8))(v1, v3);

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  sub_21D058258(v5, v4);

  v10(v9, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21D074EB4()
{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];

  (*(v2 + 8))(v1, v3);

  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[107];
  v7 = v0[88];
  v8 = v0[84];

  sub_21D058258(v6, v5);

  v4(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21D075130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[78] = a7;
  v7[77] = a6;
  v7[76] = a5;
  v7[75] = a4;
  v7[74] = a3;
  v7[73] = a2;
  v7[72] = a1;
  v8 = sub_21D0930F0();
  v7[79] = v8;
  v7[80] = *(v8 - 8);
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v9 = sub_21D093EF0();
  v7[84] = v9;
  v7[85] = *(v9 - 8);
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  sub_21D093B60();
  v7[89] = swift_task_alloc();
  sub_21D093900();
  v7[90] = swift_task_alloc();
  v10 = sub_21D093A30();
  v7[91] = v10;
  v7[92] = *(v10 - 8);
  v7[93] = swift_task_alloc();
  v11 = sub_21D0938F0();
  v7[94] = v11;
  v7[95] = *(v11 - 8);
  v7[96] = swift_task_alloc();
  v7[97] = swift_task_alloc();
  v12 = sub_21D0938B0();
  v7[98] = v12;
  v7[99] = *(v12 - 8);
  v7[100] = swift_task_alloc();
  v13 = sub_21D0937B0();
  v7[101] = v13;
  v7[102] = *(v13 - 8);
  v7[103] = swift_task_alloc();
  v7[104] = swift_task_alloc();
  v7[105] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54478, &qword_21D096490);
  v7[106] = swift_task_alloc();
  v7[107] = swift_task_alloc();
  v14 = sub_21D093570();
  v7[108] = v14;
  v7[109] = *(v14 - 8);
  v7[110] = swift_task_alloc();
  v7[111] = swift_task_alloc();
  v15 = sub_21D093630();
  v7[112] = v15;
  v7[113] = *(v15 - 8);
  v7[114] = swift_task_alloc();
  v7[115] = swift_task_alloc();
  v7[116] = swift_task_alloc();
  v16 = sub_21D093840();
  v7[117] = v16;
  v7[118] = *(v16 - 8);
  v7[119] = swift_task_alloc();
  v7[120] = swift_task_alloc();
  v17 = sub_21D093820();
  v7[121] = v17;
  v7[122] = *(v17 - 8);
  v7[123] = swift_task_alloc();
  v7[124] = swift_task_alloc();
  v7[125] = swift_task_alloc();
  v18 = sub_21D092FC0();
  v7[126] = v18;
  v7[127] = *(v18 - 8);
  v7[128] = swift_task_alloc();
  v19 = sub_21D0933E0();
  v7[129] = v19;
  v7[130] = *(v19 - 8);
  v7[131] = swift_task_alloc();
  v20 = sub_21D093420();
  v7[132] = v20;
  v7[133] = *(v20 - 8);
  v7[134] = swift_task_alloc();
  v7[135] = swift_task_alloc();
  v7[136] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54420, &qword_21D096430);
  v7[137] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54480, &qword_21D096498);
  v7[138] = swift_task_alloc();
  v21 = sub_21D093C30();
  v7[139] = v21;
  v7[140] = *(v21 - 8);
  v7[141] = swift_task_alloc();
  v22 = sub_21D0935E0();
  v7[142] = v22;
  v7[143] = *(v22 - 8);
  v7[144] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54260, &unk_21D095CC0);
  v7[145] = swift_task_alloc();
  v7[146] = swift_task_alloc();
  v23 = sub_21D0934B0();
  v7[147] = v23;
  v7[148] = *(v23 - 8);
  v7[149] = swift_task_alloc();
  v24 = sub_21D0941C0();
  v7[150] = v24;
  v7[151] = *(v24 - 8);
  v7[152] = swift_task_alloc();
  v7[153] = swift_task_alloc();
  v7[154] = swift_task_alloc();
  v7[155] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54250, &unk_21D095CB0);
  v7[156] = swift_task_alloc();
  v25 = sub_21D093460();
  v7[157] = v25;
  v7[158] = *(v25 - 8);
  v7[159] = swift_task_alloc();
  v7[160] = swift_task_alloc();
  v26 = sub_21D094180();
  v7[161] = v26;
  v7[162] = *(v26 - 8);
  v7[163] = swift_task_alloc();
  v7[164] = swift_task_alloc();
  v7[165] = swift_task_alloc();
  v7[166] = swift_task_alloc();
  v7[167] = swift_task_alloc();
  v7[168] = swift_task_alloc();
  v7[169] = swift_task_alloc();
  v7[170] = swift_task_alloc();
  v7[171] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54488, &unk_21D0964A0);
  v7[172] = swift_task_alloc();
  v7[173] = swift_task_alloc();
  v7[174] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54248, &unk_21D095CA0);
  v7[175] = swift_task_alloc();
  v7[176] = swift_task_alloc();
  v7[177] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D075BEC, 0, 0);
}

uint64_t sub_21D075BEC()
{
  v28 = v0;
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 904);
  v4 = *(v0 + 896);
  *(v0 + 488) = 0;
  *(v0 + 496) = 0xE000000000000000;
  (*(v3 + 56))(v1, 1, 1, v4);
  v5 = sub_21D093C50();
  *(v0 + 1424) = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  *(v0 + 1432) = v7;
  *(v0 + 1440) = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v2, 1, 1, v5);
  *(v0 + 1448) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster;
  sub_21D0941A0();
  sub_21D094150();

  v8 = sub_21D0941A0();
  v9 = sub_21D094660();

  if (sub_21D094680())
  {
    v10 = *(v0 + 624);
    v11 = *(v0 + 616);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_21D05550C(v11, v10, &v27);
    v14 = sub_21D094160();
    _os_signpost_emit_with_name_impl(&dword_21D044000, v8, v9, v14, "requestOneShot", "first token requestIdentifier=%{public, signpost.description=attribute,public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223D3CDF0](v13, -1, -1);
    MEMORY[0x223D3CDF0](v12, -1, -1);
  }

  v15 = *(v0 + 1368);
  v16 = *(v0 + 1360);
  v17 = *(v0 + 1296);
  v18 = *(v0 + 1288);
  v19 = *(v17 + 16);
  *(v0 + 1456) = v19;
  *(v0 + 1464) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v16, v15, v18);
  *(v0 + 1472) = sub_21D0941F0();
  swift_allocObject();
  v20 = sub_21D0941E0();
  v21 = *(v17 + 8);
  *(v0 + 1480) = v21;
  *(v0 + 1488) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v15, v18);
  *(v0 + 1496) = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  v22 = MEMORY[0x277D41510];
  *(v0 + 1536) = *MEMORY[0x277D41518];
  *(v0 + 1540) = *v22;
  *(v0 + 1544) = *MEMORY[0x277D41500];
  v23 = MEMORY[0x277D414E0];
  *(v0 + 1548) = *MEMORY[0x277D41508];
  *(v0 + 1552) = *v23;
  *(v0 + 1556) = *MEMORY[0x277D85B00];
  *(v0 + 1512) = 0;
  *(v0 + 1504) = v20;
  *(v0 + 1560) = 0;
  v24 = swift_task_alloc();
  *(v0 + 1520) = v24;
  *v24 = v0;
  v24[1] = sub_21D075F38;
  v25 = *(v0 + 1248);

  return sub_21D059134(v25);
}

uint64_t sub_21D075F38()
{
  *(*v1 + 1528) = v0;

  if (v0)
  {

    v2 = sub_21D07A424;
  }

  else
  {
    v2 = sub_21D076054;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_21D076054()
{
  v587 = v0;
  v1 = v0;
  v2 = v0[158];
  v3 = v1[157];
  v4 = v1[156];
  v583 = v1;
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_21D04D27C(v4, &qword_27CE54250, &unk_21D095CB0);

    v5 = sub_21D0941A0();
    sub_21D0941D0();
    v6 = sub_21D094650();

    if (sub_21D094680())
    {
      v7 = *(v1 + 389);
      v8 = v1[152];
      v9 = v1[151];
      v10 = v1[150];

      sub_21D094200();

      if ((*(v9 + 88))(v8, v10) == v7)
      {
        v11 = 0;
        v12 = 0;
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[151] + 8))(v1[152], v1[150]);
        v13 = "last token received requestIdentifier=%{public, signpost.description=attribute,public}s";
        v12 = 2;
        v11 = 1;
      }

      v563 = v1[185];
      v46 = v1[163];
      v549 = v1[161];
      v47 = v1[78];
      v48 = v1[77];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v586[0] = v50;
      *v49 = v12;
      *(v49 + 1) = v11;
      *(v49 + 2) = 2082;
      *(v49 + 4) = sub_21D05550C(v48, v47, v586);
      v51 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v5, v6, v51, "requestOneShot", v13, v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x223D3CDF0](v50, -1, -1);
      v52 = v49;
      v1 = v583;
      MEMORY[0x223D3CDF0](v52, -1, -1);

      v563(v46, v549);
    }

    else
    {
      v30 = v1[185];
      v31 = v1[163];
      v32 = v1[161];

      v30(v31, v32);
    }

    v53 = v1[177];
    v54 = v1[175];
    v55 = v1[125];
    v56 = v1[122];
    v57 = v1[121];
    v58 = v1[113];
    v564 = v1[112];
    sub_21D08FD64(MEMORY[0x277D84F90]);
    sub_21D093810();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544A8, &qword_21D0964B8);
    v59 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_21D0959B0;
    v550 = v59;
    v531 = *(v56 + 16);
    v531(v60 + v59, v55, v57);
    sub_21D093830();
    sub_21D05B270(v53, v54, &qword_27CE54248, &unk_21D095CA0);
    if ((*(v58 + 48))(v54, 1, v564) == 1)
    {
      sub_21D04D27C(v1[175], &qword_27CE54248, &unk_21D095CA0);
      goto LABEL_44;
    }

    v61 = v1[116];
    v62 = v1[115];
    v63 = v1[113];
    v64 = v1[112];
    (*(v63 + 32))(v61, v1[175], v64);
    v65 = *(v63 + 16);
    v65(v62, v61, v64);

    v66 = sub_21D094210();
    v67 = sub_21D094550();

    v68 = os_log_type_enabled(v66, v67);
    v69 = v1[115];
    if (v68)
    {
      v70 = v1[114];
      v71 = v1[113];
      v72 = v1[112];
      v565 = v1[78];
      v503 = v1[77];
      v73 = swift_slowAlloc();
      v508 = swift_slowAlloc();
      v586[0] = v508;
      *v73 = 136315394;
      *(v73 + 4) = sub_21D05550C(v503, v565, v586);
      *(v73 + 12) = 2082;
      v65(v70, v69, v72);
      v74 = sub_21D094430();
      v76 = v75;
      v566 = *(v71 + 8);
      v566(v69, v72);
      v77 = sub_21D05550C(v74, v76, v586);

      *(v73 + 14) = v77;
      _os_log_impl(&dword_21D044000, v66, v67, "%s %{public}s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3CDF0](v508, -1, -1);
      MEMORY[0x223D3CDF0](v73, -1, -1);
    }

    else
    {
      v99 = v1[113];
      v100 = v1[112];

      v566 = *(v99 + 8);
      v566(v69, v100);
    }

    v101 = v1[109];
    v102 = v1[108];
    v103 = v1[107];
    sub_21D093610();
    v104 = *(v101 + 48);
    if (v104(v103, 1, v102) == 1)
    {
      v105 = v1[108];
      v106 = v1[106];
      sub_21D04D27C(v1[107], &qword_27CE54478, &qword_21D096490);
      sub_21D093620();
      if (v104(v106, 1, v105) == 1)
      {
        v107 = v1[106];
        v566(v1[116], v1[112]);
        sub_21D04D27C(v107, &qword_27CE54478, &qword_21D096490);
        goto LABEL_44;
      }

      v108 = v1[125];
      v109 = v1[123];
      v110 = v1[122];
      v111 = v1[121];
      v504 = v1[117];
      v509 = v1[120];
      v159 = v1[116];
      v496 = v1[119];
      v498 = v1[112];
      v500 = v1[118];
      v113 = v583[110];
      v114 = v583[109];
      v494 = v159;
      v495 = v583[108];
      v115 = v583[106];
    }

    else
    {
      v108 = v1[125];
      v109 = v1[124];
      v110 = v1[122];
      v111 = v1[121];
      v504 = v1[117];
      v509 = v1[120];
      v112 = v1[116];
      v496 = v1[119];
      v498 = v1[112];
      v500 = v1[118];
      v113 = v583[111];
      v114 = v583[109];
      v494 = v112;
      v495 = v583[108];
      v115 = v583[107];
    }

    (*(v114 + 32))(v113, v115);
    sub_21D093550();
    sub_21D093560();
    sub_21D08FD64(MEMORY[0x277D84F90]);
    sub_21D093810();
    (*(v110 + 8))(v108, v111);
    (*(v110 + 32))(v108, v109, v111);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_21D0959B0;
    v531(v550 + v160, v108, v111);
    sub_21D093600();
    sub_21D093830();
    v161 = v113;
    v1 = v583;
    (*(v114 + 8))(v161, v495);
    v566(v494, v498);
    (*(v500 + 8))(v509, v504);
    (*(v500 + 32))(v509, v496, v504);
LABEL_44:
    v162 = v1[105];
    v163 = v1[104];
    v164 = v1[102];
    v165 = v1[101];
    if (*(v1 + 1560))
    {
      v166 = MEMORY[0x277D71B68];
    }

    else
    {
      v166 = MEMORY[0x277D71B50];
    }

    (*(v1[102] + 104))(v1[105], *v166, v1[101]);
    v568 = *(v164 + 16);
    v568(v163, v162, v165);
    v167 = sub_21D094210();
    v168 = sub_21D094550();
    v169 = os_log_type_enabled(v167, v168);
    v170 = v1[104];
    if (v169)
    {
      v171 = v1[103];
      v172 = v1[102];
      v173 = v1[101];
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v586[0] = v175;
      *v174 = 136315138;
      v568(v171, v170, v173);
      v176 = sub_21D094430();
      v178 = v177;
      v526 = *(v172 + 8);
      v526(v170, v173);
      v179 = sub_21D05550C(v176, v178, v586);
      v1 = v583;

      *(v174 + 4) = v179;
      _os_log_impl(&dword_21D044000, v167, v168, "Request finished with reason: %s", v174, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v175);
      MEMORY[0x223D3CDF0](v175, -1, -1);
      MEMORY[0x223D3CDF0](v174, -1, -1);
    }

    else
    {
      v180 = v1[102];
      v181 = v1[101];

      v526 = *(v180 + 8);
      v526(v170, v181);
    }

    v544 = v1[189];
    v519 = v1[105];
    v182 = v1[103];
    v183 = v1[101];
    v184 = v1[100];
    v185 = v1[99];
    v186 = v1[98];
    v187 = v1[95];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54200, &qword_21D095B50);
    v188 = (*(v187 + 80) + 32) & ~*(v187 + 80);
    v553 = *(v187 + 72);
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_21D0959B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54168, qword_21D0959F8);
    sub_21D0938D0();
    *(swift_allocObject() + 16) = xmmword_21D0959B0;
    sub_21D093850();
    (*(v185 + 104))(v184, *MEMORY[0x277D71C10], v186);
    sub_21D0938C0();
    v568(v182, v519, v183);
    v569 = v188;
    sub_21D0938E0();
    v190 = v1[191];
    if (v544)
    {
      v191 = sub_21D054080();
      if (v190)
      {
        v192 = v1[125];
        v193 = v1[122];
        v520 = v1[121];
        v194 = v1[120];
        v195 = v1[118];
        v196 = v1[117];
        v197 = v583[105];
        v198 = v583[101];
        v554 = v192;
        v570 = v583[76];
        v535 = v583[75];
        v199 = v583[74];

        v200 = v197;
        v1 = v583;
        v526(v200, v198);
        (*(v195 + 8))(v194, v196);
        (*(v193 + 8))(v554, v520);

        v201 = v199;
        v202 = v535;
        v203 = v570;
LABEL_63:
        sub_21D07BA24(v201, v202, v203);
LABEL_64:
        v231 = v1;
        v232 = v1[177];
        sub_21D04D27C(v231[174], &qword_27CE54488, &unk_21D0964A0);
        sub_21D04D27C(v232, &qword_27CE54248, &unk_21D095CA0);

        v233 = v231[1];
LABEL_65:

        return v233();
      }

      v204 = *(v191 + 16);
      if (v204)
      {
        v205 = v1[95];
        v206 = v189;
        v207 = v191 + v569;
        v536 = *(v205 + 16);
        v208 = (v205 + 8);
        v209 = (v205 + 32);
        do
        {
          v210 = v1[97];
          v211 = v1[96];
          v212 = v1[94];
          v536(v210, v207, v212);
          v536(v211, v210, v212);
          v214 = v206[2];
          v213 = v206[3];
          if (v214 >= v213 >> 1)
          {
            v580 = sub_21D05524C((v213 > 1), v214 + 1, 1, v206);
          }

          else
          {
            v580 = v206;
          }

          v1 = v583;
          v215 = v583[96];
          v216 = v583[94];
          (*v208)(v583[97], v216);
          v206 = v580;
          v580[2] = v214 + 1;
          (*v209)(v580 + v569 + v214 * v553, v215, v216);
          v207 += v553;
          --v204;
        }

        while (v204);
      }

      v190 = 0;
    }

    v217 = v1[174];
    v218 = v1[172];
    (*(v1[118] + 16))(v1[119], v1[120], v1[117]);

    sub_21D093B50();
    sub_21D05B270(v217, v218, &qword_27CE54488, &unk_21D0964A0);
    sub_21D0938A0();
    sub_21D093A20();
    sub_21D091B40(&qword_281221790, MEMORY[0x277D71CC8], MEMORY[0x277D71CD0]);
    v220 = sub_21D0937D0();
    if (!v190)
    {
      v234 = v219;
      v493 = v583[177];
      v492 = v583[174];
      v235 = v583[122];
      v490 = v583[121];
      v491 = v583[125];
      v236 = v583[118];
      v488 = v583[117];
      v489 = v583[120];
      v484 = v583[105];
      v483 = v583[101];
      v237 = v583[93];
      v238 = v583[92];
      v239 = v583[91];
      v486 = v583[75];
      v487 = v583[76];
      v485 = v583[74];
      sub_21D055C20(v220, v219);
      MEMORY[0x223D3BF70](v220, v234);

      sub_21D04FE3C(v220, v234);
      (*(v238 + 8))(v237, v239);
      v526(v484, v483);
      (*(v236 + 8))(v489, v488);
      (*(v235 + 8))(v491, v490);

      sub_21D07BA24(v485, v486, v487);
      sub_21D04D27C(v492, &qword_27CE54488, &unk_21D0964A0);
      sub_21D04D27C(v493, &qword_27CE54248, &unk_21D095CA0);

      v233 = v583[1];
      goto LABEL_65;
    }

    v555 = v583[125];
    v221 = v583[122];
    v537 = v583[121];
    v222 = v583[120];
    v223 = v583[118];
    v224 = v583[117];
    v225 = v583[105];
    v226 = v583[101];
    v227 = v583[93];
    v228 = v583[92];
    v229 = v583[91];
    v514 = v583[75];
    v521 = v583[76];
    v510 = v583[74];

    v230 = v227;
    v1 = v583;
    (*(v228 + 8))(v230, v229);
    v526(v225, v226);
    (*(v223 + 8))(v222, v224);
    (*(v221 + 8))(v555, v537);

    v201 = v510;
    v202 = v514;
    v203 = v521;
    goto LABEL_63;
  }

  v14 = *(v1 + 384);
  v15 = v1[160];
  v16 = v1[159];
  (*(v2 + 32))(v15, v4, v3);
  (*(v2 + 16))(v16, v15, v3);
  v17 = (*(v2 + 88))(v16, v3);
  if (v17 == v14)
  {
    v18 = v1[159];
    (*(v1[158] + 96))(v18, v1[157]);
    v20 = *v18;
    v19 = v18[1];
    sub_21D093660();

    v21 = sub_21D0941A0();
    sub_21D0941D0();
    v22 = sub_21D094650();

    v562 = v20;
    v577 = v19;
    if (sub_21D094680())
    {
      v548 = v22;
      v23 = *(v1 + 389);
      v24 = v1[155];
      v25 = v1[151];
      v26 = v1[150];

      sub_21D094200();

      if ((*(v25 + 88))(v24, v26) == v23)
      {
        v27 = 0;
        v28 = 0;
        v29 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[151] + 8))(v1[155], v1[150]);
        v29 = "token received requestIdentifier=%{public, signpost.description=attribute,public}s";
        v28 = 2;
        v27 = 1;
      }

      v116 = v1[169];
      v533 = v1[161];
      v543 = v1[185];
      v117 = v1[78];
      v118 = v583[77];
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v586[0] = v120;
      *v119 = v28;
      *(v119 + 1) = v27;
      *(v119 + 2) = 2082;
      v121 = v117;
      v1 = v583;
      *(v119 + 4) = sub_21D05550C(v118, v121, v586);
      v122 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v21, v548, v122, "requestOneShot", v29, v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v120);
      MEMORY[0x223D3CDF0](v120, -1, -1);
      MEMORY[0x223D3CDF0](v119, -1, -1);

      v543(v116, v533);
    }

    else
    {
      v78 = v1[185];
      v79 = v1[169];
      v80 = v1[161];

      v78(v79, v80);
    }

    sub_21D0941A0();
    sub_21D094150();
    v123 = sub_21D0941A0();
    v124 = sub_21D094660();
    if (sub_21D094680())
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      v126 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v123, v124, v126, "requestOneShot", "extend token", v125, 2u);
      MEMORY[0x223D3CDF0](v125, -1, -1);
    }

    v534 = v1[185];
    v127 = v1[182];
    v128 = v1[170];
    v129 = v1[168];
    v130 = v1[161];
    v584 = v1[160];
    v131 = v1[158];
    v552 = v1[157];

    v127(v128, v129, v130);
    swift_allocObject();
    v132 = sub_21D0941E0();

    v534(v129, v130);
    MEMORY[0x223D3C530](v562, v577);

    (*(v131 + 8))(v584, v552);
    v133 = v1[189];
    goto LABEL_34;
  }

  if (v17 == *(v1 + 385))
  {
    v33 = v1[159];
    v34 = v1[131];
    v35 = v1[130];
    v36 = v1[129];
    (*(v1[158] + 96))(v33, v1[157]);
    (*(v35 + 32))(v34, v33, v36);

    v37 = sub_21D0941A0();
    sub_21D0941D0();
    v38 = sub_21D094650();

    if (sub_21D094680())
    {
      v39 = *(v1 + 389);
      v40 = v1[153];
      v41 = v1[151];
      v42 = v1[150];

      sub_21D094200();

      if ((*(v41 + 88))(v40, v42) == v39)
      {
        v43 = 0;
        v44 = 0;
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (*(v1[151] + 8))(v1[153], v1[150]);
        v45 = "media chunk received requestIdentifier=%{public, signpost.description=attribute,public}s";
        v44 = 2;
        v43 = 1;
      }

      v571 = v1[185];
      v240 = v1[165];
      v556 = v1[161];
      v241 = v1[78];
      v242 = v1[77];
      v243 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      v586[0] = v244;
      *v243 = v44;
      *(v243 + 1) = v43;
      *(v243 + 2) = 2082;
      *(v243 + 4) = sub_21D05550C(v242, v241, v586);
      v245 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v37, v38, v245, "requestOneShot", v45, v243, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v244);
      MEMORY[0x223D3CDF0](v244, -1, -1);
      v141 = v583;
      MEMORY[0x223D3CDF0](v243, -1, -1);

      v571(v240, v556);
    }

    else
    {
      v138 = v1[185];
      v139 = v1[165];
      v140 = v1[161];

      v138(v139, v140);
      v141 = v1;
    }

    sub_21D0941A0();
    sub_21D094150();
    v246 = sub_21D0941A0();
    v247 = sub_21D094660();
    if (sub_21D094680())
    {
      v248 = swift_slowAlloc();
      *v248 = 0;
      v249 = sub_21D094160();
      _os_signpost_emit_with_name_impl(&dword_21D044000, v246, v247, v249, "requestOneShot", "extend token", v248, 2u);
      MEMORY[0x223D3CDF0](v248, -1, -1);
    }

    v572 = v141[189];
    v250 = v141[185];
    v251 = v141[182];
    v252 = v141[170];
    v253 = v141[164];
    v254 = v141[161];

    v251(v252, v253, v254);
    swift_allocObject();
    v581 = sub_21D0941E0();

    v250(v253, v254);
    if (v572)
    {
      v133 = v141[189];
      v1 = v141;
      if (*(v133 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming) == 1)
      {
        v255 = v141[160];
        v256 = v141[158];
        v257 = v141[157];
        v258 = v141[131];
        v259 = v141[130];
        v260 = v141[129];

        type metadata accessor for MediaProcessor.InternalError(0);
        sub_21D091B40(&qword_27CE54100, type metadata accessor for MediaProcessor.InternalError, &unk_21D095ACC);
        v261 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v259 + 8))(v258, v260);
        (*(v256 + 8))(v255, v257);
        goto LABEL_99;
      }
    }

    else
    {
      v262 = v141[128];
      v263 = v141[127];
      v264 = v141[126];
      sub_21D092FB0();
      v265 = sub_21D092FA0();
      v267 = v266;
      (*(v263 + 8))(v262, v264);
      v1 = v141;
      if (qword_27CE53E98 != -1)
      {
        swift_once();
      }

      v268 = qword_27CE540E8;
      v269 = qword_27CE53EA0;

      if (v269 != -1)
      {
        swift_once();
      }

      v270 = qword_27CE540F0;
      type metadata accessor for MediaProcessor(0);
      v271 = swift_allocObject();
      v272 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_logger;
      v273 = qword_281221778;

      if (v273 != -1)
      {
        swift_once();
      }

      v274 = sub_21D094230();
      v275 = __swift_project_value_buffer(v274, qword_2812217C8);
      (*(*(v274 - 8) + 16))(v271 + v272, v275, v274);
      v276 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_streamsMetadata;
      v277 = MEMORY[0x277D84F90];
      *(v271 + v276) = sub_21D08FE94(MEMORY[0x277D84F90]);
      v278 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_chunks;
      *(v271 + v278) = sub_21D08FF98(v277);
      v279 = (v271 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_responseID);
      *v279 = v265;
      v279[1] = v267;
      *(v271 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedAudioFormats) = v268;
      *(v271 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_supportedImageFormats) = v270;
      *(v271 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider14MediaProcessor_isStreaming) = 0;
      v133 = v271;
    }

    v280 = v1[191];
    sub_21D0525F4(v1[131]);
    v261 = v280;
    v281 = v1[160];
    v282 = v1[158];
    v283 = v1[157];
    v284 = v1[131];
    v285 = v1[130];
    v286 = v1[129];
    if (!v261)
    {

      (*(v285 + 8))(v284, v286);
      (*(v282 + 8))(v281, v283);
      v134 = *(v1 + 1560);
      v132 = v581;
      goto LABEL_35;
    }

    (*(v285 + 8))(v1[131], v1[129]);
    (*(v282 + 8))(v281, v283);

LABEL_99:
    v1[65] = v261;
    v327 = v261;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE540A8, &qword_21D0956D0);
    if (swift_dynamicCast())
    {
      v328 = v1[88];
      v329 = v1[87];
      v330 = v1[86];
      v331 = v1[85];
      v332 = v1[84];

      (*(v331 + 32))(v329, v328, v332);
      v559 = *(v331 + 16);
      (v559)(v330, v329, v332);

      v333 = sub_21D094210();
      v334 = sub_21D094570();
      v335 = v583;

      v336 = os_log_type_enabled(v333, v334);
      v337 = v583[86];
      v338 = v583[85];
      v339 = v583[84];
      if (v336)
      {
        v340 = v583[78];
        v539 = v334;
        v341 = v583[77];
        v342 = swift_slowAlloc();
        v528 = swift_slowAlloc();
        v586[0] = v528;
        *v342 = 136315394;
        *(v342 + 4) = sub_21D05550C(v341, v340, v586);
        *(v342 + 12) = 2080;
        sub_21D091B40(&qword_27CE544A0, MEMORY[0x277D29DE0], MEMORY[0x277D29DF0]);
        v343 = sub_21D094790();
        v345 = v344;
        v346 = *(v338 + 8);
        v346(v337, v339);
        v347 = sub_21D05550C(v343, v345, v586);

        *(v342 + 14) = v347;
        _os_log_impl(&dword_21D044000, v333, v539, "Oneshot request %s failed: %s", v342, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v528, -1, -1);
        MEMORY[0x223D3CDF0](v342, -1, -1);
      }

      else
      {

        v346 = *(v338 + 8);
        v346(v337, v339);
      }

      v368 = v583[87];
      v369 = v583[84];
      v370 = v583[76];
      v371 = v583[75];
      v372 = v583[74];
      sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_allocError();
      (v559)(v373, v368, v369);
      swift_willThrow();

      v346(v368, v369);

      v374 = v372;
    }

    else
    {

      v1[66] = v261;
      v348 = v261;
      if (!swift_dynamicCast())
      {

        v1[67] = v261;
        v375 = v261;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54490, &qword_21D0964B0);
        if (swift_dynamicCast())
        {

          sub_21D046D78(v1 + 9, (v1 + 38));
          sub_21D0590D0((v1 + 38), (v1 + 43));
          sub_21D0590D0((v1 + 38), (v1 + 48));
          sub_21D0590D0((v1 + 38), (v1 + 53));
          v376 = sub_21D094210();
          v377 = sub_21D094550();
          if (os_log_type_enabled(v376, v377))
          {
            v378 = swift_slowAlloc();
            v379 = swift_slowAlloc();
            v586[0] = v379;
            *v378 = 136315650;
            __swift_project_boxed_opaque_existential_1(v1 + 43, v1[46]);
            v380 = sub_21D094090();
            v382 = v381;
            __swift_destroy_boxed_opaque_existential_0(v1 + 43);
            v383 = sub_21D05550C(v380, v382, v586);

            *(v378 + 4) = v383;
            *(v378 + 12) = 2048;
            __swift_project_boxed_opaque_existential_1(v583 + 48, v1[51]);
            v384 = sub_21D093520();
            __swift_destroy_boxed_opaque_existential_0(v583 + 48);
            *(v378 + 14) = v384;
            *(v378 + 22) = 2080;
            __swift_project_boxed_opaque_existential_1(v583 + 53, v583[56]);
            v1 = v583;
            v385 = sub_21D093530();
            v387 = v386;
            __swift_destroy_boxed_opaque_existential_0(v583 + 53);
            v388 = sub_21D05550C(v385, v387, v586);

            *(v378 + 24) = v388;
            _os_log_impl(&dword_21D044000, v376, v377, "Request failed with PrivateMLClientError: %s %ld %s", v378, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223D3CDF0](v379, -1, -1);
            MEMORY[0x223D3CDF0](v378, -1, -1);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v1 + 48);

            __swift_destroy_boxed_opaque_existential_0(v1 + 43);
            __swift_destroy_boxed_opaque_existential_0(v1 + 53);
          }

          sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
          swift_allocError();
          v575 = v401;
          __swift_project_boxed_opaque_existential_1(v1 + 38, v1[41]);
          sub_21D093530();
          __swift_project_boxed_opaque_existential_1(v1 + 38, v1[41]);
          sub_21D094090();
          __swift_project_boxed_opaque_existential_1(v1 + 38, v1[41]);
          result = sub_21D093520();
          if (!__OFADD__(result, 30000))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21D0959B0;
            *(inited + 32) = sub_21D0943F0();
            *(inited + 40) = v403;
            v404 = v1[41];
            v405 = v1[42];
            __swift_project_boxed_opaque_existential_1(v1 + 38, v404);
            *(inited + 48) = MEMORY[0x223D3C1D0](v404, *(v405 + 8));
            *(inited + 56) = v406;
            sub_21D0900B0(inited);
            swift_setDeallocating();
            sub_21D04D27C(inited + 32, &qword_27CE542C0, &qword_21D095E28);
            v407 = v1[41];
            v408 = __swift_project_boxed_opaque_existential_1(v1 + 38, v407);
            v409 = *(v407 - 8);
            v410 = swift_task_alloc();
            (*(v409 + 16))(v410, v408, v407);
            if (sub_21D0947A0())
            {
              (*(v409 + 8))(v410, v407);
            }

            else
            {
              swift_allocError();
              (*(v409 + 32))(v450, v410, v407);
            }

            v451 = v583[85];
            v452 = v583[84];
            v453 = v583[76];
            v454 = v583[75];
            v455 = v583[74];
            v1 = v583;
            sub_21D093EC0();

            (*(v451 + 104))(v575, *MEMORY[0x277D29DA8], v452);
            swift_willThrow();

            __swift_destroy_boxed_opaque_existential_0(v583 + 38);

            v201 = v455;
            v202 = v454;
            v203 = v453;
            goto LABEL_63;
          }

          __break(1u);
        }

        else
        {

          v1[68] = v261;
          v393 = v261;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54378, &qword_21D0963A8);
          if (swift_dynamicCast())
          {

            sub_21D046D78((v1 + 23), (v1 + 28));
            sub_21D0590D0((v1 + 28), (v1 + 33));
            v394 = sub_21D094210();
            v395 = sub_21D094550();
            if (os_log_type_enabled(v394, v395))
            {
              v396 = swift_slowAlloc();
              v560 = swift_slowAlloc();
              *v396 = 138412290;
              v397 = v1[36];
              v398 = __swift_project_boxed_opaque_existential_1(v1 + 33, v397);
              v399 = *(v397 - 8);
              v400 = swift_task_alloc();
              (*(v399 + 16))(v400, v398, v397);
              if (sub_21D0947A0())
              {
                (*(v399 + 8))(v400, v397);
              }

              else
              {
                swift_allocError();
                (*(v399 + 32))(v473, v400, v397);
              }

              v474 = _swift_stdlib_bridgeErrorToNSError();
              v1 = v583;
              __swift_destroy_boxed_opaque_existential_0(v583 + 33);
              *(v396 + 4) = v474;
              *v560 = v474;
              _os_log_impl(&dword_21D044000, v394, v395, "Request failed with AppleIntelligenceError: %@", v396, 0xCu);
              sub_21D04D27C(v560, &qword_27CE54320, &qword_21D095EA0);
              MEMORY[0x223D3CDF0](v560, -1, -1);
              MEMORY[0x223D3CDF0](v396, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_0(v1 + 33);
            }

            v475 = v1[31];
            v476 = __swift_project_boxed_opaque_existential_1(v1 + 28, v475);
            v477 = *(v475 - 8);
            v478 = swift_task_alloc();
            (*(v477 + 16))(v478, v476, v475);
            if (sub_21D0947A0())
            {
              (*(v477 + 8))(v478, v475);
            }

            else
            {
              swift_allocError();
              (*(v477 + 32))(v479, v478, v475);
            }

            v480 = v1[76];
            v481 = v1[75];
            v482 = v1[74];
            swift_willThrow();

            __swift_destroy_boxed_opaque_existential_0(v1 + 28);

            v201 = v482;
            v202 = v481;
            v203 = v480;
            goto LABEL_63;
          }

          v411 = v261;
          v412 = sub_21D094210();
          v413 = sub_21D094550();

          if (os_log_type_enabled(v412, v413))
          {
            v414 = v1 + 70;
            v415 = swift_slowAlloc();
            v416 = swift_slowAlloc();
            v586[0] = v416;
            *v415 = 136315138;
            *v414 = v261;
            v417 = v261;
            v418 = sub_21D094430();
            v420 = sub_21D05550C(v418, v419, v586);

            *(v415 + 4) = v420;
            _os_log_impl(&dword_21D044000, v412, v413, "Request failed: %s", v415, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v416);
            v421 = v416;
            v1 = v583;
            MEMORY[0x223D3CDF0](v421, -1, -1);
            MEMORY[0x223D3CDF0](v415, -1, -1);
          }

          v422 = sub_21D092F10();
          sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
          swift_allocError();
          v424 = v423;
          v1[69] = v261;
          v425 = v261;
          sub_21D094430();
          v426 = [v422 domain];
          sub_21D0943F0();

          result = [v422 code];
          if (!__OFADD__(result, 40000))
          {
            v427 = v1[85];
            v512 = v1[75];
            v516 = v1[76];
            v501 = v1[84];
            v506 = v1[74];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE542B8, &qword_21D095E20);
            v428 = swift_initStackObject();
            *(v428 + 16) = xmmword_21D0959B0;
            *(v428 + 32) = sub_21D0943F0();
            *(v428 + 40) = v429;
            v430 = [v422 description];
            v431 = sub_21D0943F0();
            v433 = v432;

            *(v428 + 48) = v431;
            *(v428 + 56) = v433;
            v1 = v583;
            sub_21D0900B0(v428);
            swift_setDeallocating();
            sub_21D04D27C(v428 + 32, &qword_27CE542C0, &qword_21D095E28);
            v434 = v422;
            sub_21D093EC0();
            (*(v427 + 104))(v424, *MEMORY[0x277D29DA8], v501);
            swift_willThrow();

            v201 = v506;
            v202 = v512;
            v203 = v516;
            goto LABEL_63;
          }
        }

        __break(1u);
        return result;
      }

      v349 = v1[83];
      v350 = v1[82];
      v351 = v1[81];
      v352 = v1[80];
      v353 = v1[79];

      (*(v352 + 32))(v350, v349, v353);
      v585 = *(v352 + 16);
      v585(v351, v350, v353);

      v354 = sub_21D094210();
      v355 = sub_21D094570();

      v356 = os_log_type_enabled(v354, v355);
      v357 = v1[81];
      v358 = v1[80];
      v359 = v1[79];
      if (v356)
      {
        v360 = v1[78];
        v361 = v1[77];
        v362 = swift_slowAlloc();
        v547 = swift_slowAlloc();
        v586[0] = v547;
        *v362 = 136315394;
        *(v362 + 4) = sub_21D05550C(v361, v360, v586);
        *(v362 + 12) = 2080;
        sub_21D091B40(&qword_27CE54498, MEMORY[0x277D41440], MEMORY[0x277D41450]);
        v363 = sub_21D094790();
        v365 = v364;
        v366 = *(v358 + 8);
        v540 = v355;
        v335 = v1;
        v366(v357, v359);
        v367 = sub_21D05550C(v363, v365, v586);

        *(v362 + 14) = v367;
        _os_log_impl(&dword_21D044000, v354, v540, "%s One shot request failed with : %s", v362, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3CDF0](v547, -1, -1);
        MEMORY[0x223D3CDF0](v362, -1, -1);
      }

      else
      {

        v366 = *(v358 + 8);
        v335 = v1;
        v366(v357, v359);
      }

      v389 = v335[82];
      v390 = v335[79];
      v370 = v335[76];
      v371 = v335[75];
      v391 = v335[74];
      sub_21D091B40(&qword_27CE54380, MEMORY[0x277D41440], MEMORY[0x277D41448]);
      swift_allocError();
      v585(v392, v389, v390);
      swift_willThrow();

      v366(v389, v390);

      v374 = v391;
    }

    sub_21D07BA24(v374, v371, v370);
    v1 = v335;
    goto LABEL_64;
  }

  if (v17 != *(v1 + 386))
  {
    if (v17 == *(v1 + 387))
    {
      v142 = v1[159];
      v143 = v1[136];
      v144 = v1[135];
      v145 = v1[133];
      v146 = v1[132];
      (*(v1[158] + 96))(v142, v1[157]);
      (*(v145 + 32))(v143, v142, v146);
      (*(v145 + 16))(v144, v143, v146);
      v147 = sub_21D094210();
      v148 = sub_21D094560();
      v149 = os_log_type_enabled(v147, v148);
      v150 = v1[135];
      v151 = v1[133];
      v152 = v1[132];
      if (v149)
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v586[0] = v154;
        *v153 = 136315138;
        sub_21D091B40(&qword_27CE544B0, MEMORY[0x277D414E8], MEMORY[0x277D414F0]);
        v155 = sub_21D094790();
        v157 = v156;
        v579 = *(v151 + 8);
        v579(v150, v152);
        v158 = sub_21D05550C(v155, v157, v586);
        v1 = v583;

        *(v153 + 4) = v158;
        _os_log_impl(&dword_21D044000, v147, v148, "requestOneShot completionReason: %s", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v154);
        MEMORY[0x223D3CDF0](v154, -1, -1);
        MEMORY[0x223D3CDF0](v153, -1, -1);
      }

      else
      {

        v579 = *(v151 + 8);
        v579(v150, v152);
      }

      v574 = *(v1 + 1560);
      v301 = v1[134];
      v302 = v1[132];
      (*(v1[133] + 104))(v301, *(v1 + 388), v302);
      v557 = sub_21D093140();
      v579(v301, v302);

      v303 = sub_21D0941A0();
      sub_21D0941D0();
      v304 = sub_21D094650();

      if (sub_21D094680())
      {
        v305 = *(v1 + 389);
        v306 = v1[154];
        v307 = v1[151];
        v308 = v1[150];

        sub_21D094200();

        v545 = v304;
        if ((*(v307 + 88))(v306, v308) == v305)
        {
          v309 = 0;
          v310 = 0;
          v311 = "[Error] Interval already ended";
        }

        else
        {
          (*(v1[151] + 8))(v1[154], v1[150]);
          v311 = "token received requestIdentifier=%{public, signpost.description=attribute,public}s";
          v310 = 2;
          v309 = 1;
        }

        v529 = v1[185];
        v435 = v1[167];
        v523 = v1[161];
        v436 = v1[78];
        v437 = v1[77];
        v438 = swift_slowAlloc();
        v439 = swift_slowAlloc();
        v586[0] = v439;
        *v438 = v310;
        *(v438 + 1) = v309;
        *(v438 + 2) = 2082;
        *(v438 + 4) = sub_21D05550C(v437, v436, v586);
        v440 = sub_21D094160();
        _os_signpost_emit_with_name_impl(&dword_21D044000, v303, v545, v440, "requestOneShot", v311, v438, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v439);
        MEMORY[0x223D3CDF0](v439, -1, -1);
        MEMORY[0x223D3CDF0](v438, -1, -1);

        v529(v435, v523);
      }

      else
      {
        v315 = v1[185];
        v316 = v1[167];
        v317 = v1[161];

        v315(v316, v317);
      }

      v134 = v557 | v574;
      sub_21D0941A0();
      sub_21D094150();
      v441 = sub_21D0941A0();
      v442 = sub_21D094660();
      if (sub_21D094680())
      {
        v443 = swift_slowAlloc();
        *v443 = 0;
        v444 = sub_21D094160();
        _os_signpost_emit_with_name_impl(&dword_21D044000, v441, v442, v444, "requestOneShot", "extend token", v443, 2u);
        MEMORY[0x223D3CDF0](v443, -1, -1);
      }

      v541 = v1[185];
      v445 = v1[182];
      v446 = v1[170];
      v447 = v1[166];
      v448 = v1[161];
      v576 = v1[160];
      v449 = v1[158];
      v561 = v1[157];
      v517 = v1[132];
      v524 = v1[136];

      v445(v446, v447, v448);
      swift_allocObject();
      v132 = sub_21D0941E0();

      v541(v447, v448);
      v579(v524, v517);
      (*(v449 + 8))(v576, v561);
      v133 = v1[189];
      goto LABEL_35;
    }

    v292 = v1[160];
    v293 = v1[158];
    v294 = v1[157];
    v295 = v1[85];
    v573 = v1[84];
    v582 = v1[159];
    v296 = v1[78];
    v297 = v583[77];

    sub_21D091B40(&qword_27CE542F0, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v261 = swift_allocError();
    v299 = v298;
    v586[0] = 0;
    v586[1] = 0xE000000000000000;
    sub_21D0946E0();
    v583[63] = 0;
    v583[64] = 0xE000000000000000;
    MEMORY[0x223D3C530](0xD000000000000025, 0x800000021D0973F0);
    MEMORY[0x223D3C530](v297, v296);
    MEMORY[0x223D3C530](8250, 0xE200000000000000);
    sub_21D094740();
    swift_beginAccess();

    sub_21D0900B0(MEMORY[0x277D84F90]);
    v1 = v583;
    sub_21D093ED0();
    (*(v295 + 104))(v299, *MEMORY[0x277D29DA8], v573);
    swift_willThrow();
    v300 = *(v293 + 8);
    v300(v292, v294);
    v300(v582, v294);
    goto LABEL_99;
  }

  v81 = v1[176];
  v82 = v1[159];
  v83 = v1[158];
  v84 = v1[157];
  v542 = v1[149];
  v551 = v1[177];
  v85 = v1[148];
  v532 = v1[147];
  v86 = v1[146];
  v87 = v1[143];
  v567 = v1[145];
  v578 = v1[142];
  sub_21D04D27C(v551, &qword_27CE54248, &unk_21D095CA0);
  (*(v83 + 96))(v82, v84);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54258, &qword_21D0964C0);
  v89 = *(v88 + 48);
  v90 = *(v88 + 64);
  (*(v85 + 32))(v542, v82, v532);
  sub_21D05B208(v82 + v89, v81, &qword_27CE54248, &unk_21D095CA0);
  sub_21D05B208(v82 + v90, v86, &qword_27CE54260, &unk_21D095CC0);
  sub_21D05B270(v81, v551, &qword_27CE54248, &unk_21D095CA0);
  sub_21D05B270(v86, v567, &qword_27CE54260, &unk_21D095CC0);
  if ((*(v87 + 48))(v567, 1, v578) == 1)
  {
    v91 = v1[176];
    v92 = v1[160];
    v93 = v1[158];
    v94 = v1[157];
    v95 = v1[149];
    v96 = v1[148];
    v97 = v1[147];
    v98 = v1[145];
    sub_21D04D27C(v1[146], &qword_27CE54260, &unk_21D095CC0);
    sub_21D04D27C(v91, &qword_27CE54248, &unk_21D095CA0);
    (*(v96 + 8))(v95, v97);
    (*(v93 + 8))(v92, v94);
    sub_21D04D27C(v98, &qword_27CE54260, &unk_21D095CC0);
  }

  else
  {
    v287 = v1[138];
    (*(v1[143] + 32))(v1[144], v1[145], v1[142]);
    sub_21D0935B0();
    v288 = sub_21D0935A0();
    v289 = *(v288 - 8);
    v290 = (*(v289 + 48))(v287, 1, v288);
    v291 = v1[138];
    if (v290 == 1)
    {
      sub_21D04D27C(v1[138], &qword_27CE54480, &qword_21D096498);
    }

    else
    {
      sub_21D093590();
      (*(v289 + 8))(v291, v288);
    }

    v312 = v1[137];
    sub_21D093C20();
    sub_21D0935C0();
    sub_21D093580();
    sub_21D0932D0();
    v313 = sub_21D0932C0();
    v314 = *(v313 - 8);
    if ((*(v314 + 48))(v312, 1, v313) == 1)
    {
      sub_21D04D27C(v1[137], &qword_27CE54420, &qword_21D096430);
    }

    else
    {
      v318 = v1[191];
      sub_21D0932B0();
      if (v318)
      {
        v261 = v318;
        v319 = v1[158];
        v546 = v1[157];
        v558 = v1[160];
        v320 = v1[149];
        v321 = v1[148];
        v515 = v1[176];
        v522 = v1[147];
        v505 = v1[144];
        v511 = v1[146];
        v322 = v1[143];
        v323 = v583[142];
        v324 = v583[141];
        v325 = v583[140];
        v326 = v583[139];
        v527 = v320;
        v538 = v583[137];

        (*(v325 + 8))(v324, v326);
        (*(v322 + 8))(v505, v323);
        v1 = v583;
        sub_21D04D27C(v511, &qword_27CE54260, &unk_21D095CC0);
        sub_21D04D27C(v515, &qword_27CE54248, &unk_21D095CA0);
        (*(v321 + 8))(v527, v522);
        (*(v319 + 8))(v558, v546);

        (*(v314 + 8))(v538, v313);
        goto LABEL_99;
      }

      (*(v314 + 8))(v1[137], v313);
    }

    v456 = sub_21D0935D0();
    v457 = *(v456 + 16);
    if (v457)
    {
      v458 = v1 + 71;
      v1[71] = MEMORY[0x277D84F90];
      v459 = v456;
      sub_21D08FAFC(0, v457, 0);
      v460 = v459;
      v461 = v1[71];
      v462 = *(v461 + 16);
      v463 = 32;
      do
      {
        v464 = *(v460 + v463);
        *v458 = v461;
        v465 = *(v461 + 24);
        if (v462 >= v465 >> 1)
        {
          sub_21D08FAFC((v465 > 1), v462 + 1, 1);
          v460 = v459;
          v461 = *v458;
        }

        *(v461 + 16) = v462 + 1;
        *(v461 + 8 * v462 + 32) = v464;
        v463 += 4;
        ++v462;
        --v457;
      }

      while (v457);
    }

    v530 = v1[179];
    v518 = v1[174];
    v525 = v1[178];
    v466 = v1[173];
    v467 = v1[158];
    v507 = v1[157];
    v513 = v1[160];
    v502 = v1[149];
    v468 = v1[148];
    v497 = v1[176];
    v499 = v1[147];
    v469 = v1[146];
    v470 = v1[144];
    v471 = v1[143];
    v472 = v1[142];
    sub_21D0900B0(MEMORY[0x277D84F90]);
    sub_21D093C40();
    (*(v471 + 8))(v470, v472);
    sub_21D04D27C(v469, &qword_27CE54260, &unk_21D095CC0);
    sub_21D04D27C(v497, &qword_27CE54248, &unk_21D095CA0);
    (*(v468 + 8))(v502, v499);
    (*(v467 + 8))(v513, v507);
    sub_21D04D27C(v518, &qword_27CE54488, &unk_21D0964A0);
    v530(v466, 0, 1, v525);
    sub_21D05B208(v466, v518, &qword_27CE54488, &unk_21D0964A0);
  }

  v133 = v1[189];
  v132 = v1[188];
LABEL_34:
  v134 = *(v1 + 1560);
LABEL_35:
  v1[189] = v133;
  v1[188] = v132;
  *(v1 + 1560) = v134 & 1;
  v135 = swift_task_alloc();
  v1[190] = v135;
  *v135 = v1;
  v135[1] = sub_21D075F38;
  v136 = v1[156];

  return sub_21D059134(v136);
}