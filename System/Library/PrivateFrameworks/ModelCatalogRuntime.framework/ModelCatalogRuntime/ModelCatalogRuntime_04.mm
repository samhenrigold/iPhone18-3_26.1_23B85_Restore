void sub_22D8A1FA8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22D8580D8(&qword_27DA0D7A8, &qword_22D8B3B60);
    v5 = sub_22D8B1ACC();
  }

  if (a2)
  {
    v6 = sub_22D8B068C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_22D8A2050(uint64_t a1, char a2)
{
  *(v3 + 608) = v2;
  *(v3 + 908) = a2;
  *(v3 + 600) = a1;
  sub_22D84C3F0();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22D8A2084()
{
  sub_22D84D198();
  v0[66] = MEMORY[0x277D84FA0];
  if (qword_281459018 != -1)
  {
    sub_22D84DB74(&qword_281459018);
  }

  v0[77] = qword_281459480;
  v1 = swift_task_alloc();
  v0[78] = v1;
  *v1 = v0;
  sub_22D84DD88(v1);

  return sub_22D869C90();
}

uint64_t sub_22D8A2140()
{
  sub_22D84D77C();
  v3 = v2;
  sub_22D84C734();
  v5 = v4;
  sub_22D84F51C();
  *v6 = v5;
  v7 = *v1;
  sub_22D84CED0();
  *v8 = v7;
  *(v5 + 632) = v0;

  if (!v0)
  {
    *(v5 + 640) = v3;
  }

  sub_22D8AEFD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22D8A3F74()
{
  sub_22D84D77C();
  v2 = *v1;
  sub_22D84CED0();
  *v3 = v2;
  v4 = *v1;
  sub_22D84F51C();
  *v5 = v4;
  *(v2 + 888) = v6;
  *(v2 + 896) = v0;

  if (v0)
  {
  }

  else
  {
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22D8A40DC()
{
  v1 = v0[98];
  if (v0[111])
  {
    v2 = (v0 + 74);
    swift_isUniquelyReferenced_nonNull_native();
    v0[74] = v1;
    v3 = sub_22D84EB60();
    sub_22D852D10(v3, v4);
    sub_22D84E448();
    if (v7)
    {
      goto LABEL_206;
    }

    v8 = v5;
    v9 = v6;
    sub_22D8580D8(&qword_27DA0D8E0, &qword_22D8B3FF0);
    sub_22D8AF84C();
    if (sub_22D8B1EAC())
    {
      v10 = sub_22D852D10(v0[103], v0[104]);
      if ((v9 & 1) != (v11 & 1))
      {
LABEL_5:
        sub_22D8AF460();

        sub_22D8B1FBC();
        return;
      }

      v8 = v10;
    }

    v17 = v0[111];
    v18 = v0[74];
    v19 = v0[104];
    v338 = v18;
    if (v9)
    {
      v20 = v18[7];
      v21 = *(v20 + 8 * v8);
      *(v20 + 8 * v8) = v17;
    }

    else
    {
      v22 = v0[103];
      v18[(v8 >> 6) + 8] |= 1 << v8;
      v23 = (v18[6] + 16 * v8);
      *v23 = v22;
      v23[1] = v19;
      *(v18[7] + 8 * v8) = v17;
      v24 = v18[2];
      v7 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v7)
      {
        goto LABEL_207;
      }

      v18[2] = v25;
    }
  }

  else
  {
    v13 = sub_22D84EB60();
    v15 = sub_22D852D10(v13, v14);
    v2 = v16;

    if (v2)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v2 = v1[3];
      sub_22D8580D8(&qword_27DA0D8E0, &qword_22D8B3FF0);
      sub_22D8B1EAC();

      sub_22D85AFB0(0, &qword_2814588F0, 0x277D779E8);
      v338 = v1;
      sub_22D8B1EBC();
    }

    else
    {
      v338 = v0[98];
    }
  }

  v332 = v0 + 67;
  v333 = v0 + 69;
  v26 = (v0 + 70);
  v335 = v0 + 68;
  v336 = v0 + 72;

  v27 = v0[112];
  sub_22D84F5A0();
  v334 = v28;
  *&v29 = 136446466;
  v330 = v29;
  *&v29 = 136446722;
  v329 = v29;
  v353 = v0;
  do
  {
    v30 = v0[96];
    v31 = v0[15];
    sub_22D850844(v0 + 12);
    sub_22D8B0A5C();
    v32 = sub_22D8AFA3C();
    v30(v32);
    v33 = v0[73];
    swift_isUniquelyReferenced_nonNull_native();
    v0[72] = v33;
    v34 = sub_22D8AF214();
    sub_22D852D10(v34, v35);
    sub_22D84E448();
    if (v7)
    {
      goto LABEL_201;
    }

    v38 = v36;
    v39 = v37;
    sub_22D8580D8(&qword_27DA0D620, &qword_22D8B3408);
    v0 = v336;
    v40 = v336;
    if (sub_22D8B1EAC())
    {
      v40 = *v336;
      v41 = sub_22D8AF214();
      v43 = sub_22D852D10(v41, v42);
      if ((v39 & 1) != (v44 & 1))
      {
        goto LABEL_5;
      }

      v38 = v43;
    }

    v45 = *v336;
    if (v39)
    {
      sub_22D8AF7B8(v45[7]);
    }

    else
    {
      sub_22D84DDB0(&v45[v38 >> 6]);
      v46 = (v45[6] + 16 * v38);
      *v46 = v2;
      v46[1] = v31;
      sub_22D8AF7B8(v45[7]);
      v47 = v45[2];
      v7 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v7)
      {
        goto LABEL_203;
      }

      v45[2] = v48;
    }

    sub_22D8AFCC0();
    v337 = v45;
    v336[73] = v45;
    sub_22D84D8A0(v336 + 12);
    if (v31 != v40)
    {
      v302 = v336[99] + 1;
      v301 = v336[94];
      goto LABEL_182;
    }

    do
    {
      v49 = v0[92];
      sub_22D8580D8(&qword_27DA0D828, &unk_22D8B4DB0);
      v50 = 0;
      v0[71] = sub_22D8B193C();
      v51 = v49 + 32;
      for (i = v49 + 32; ; i += 40)
      {
        v53 = v0[92];
        if (v50 == v0[93])
        {
          break;
        }

        v54 = sub_22D8AF22C();
        sub_22D8AD6C8(v54, v55, v53);
        sub_22D84E298(i, (v0 + 27));
        sub_22D8A9EF4(v0 + 71, v0 + 27);
        if (v27)
        {
          sub_22D8AFB54();

          sub_22D84D8A0(v0 + 27);

          v317 = sub_22D84C538();
          v318(v317);

          sub_22D84D800();
          sub_22D8AF460();

          __asm { BRAA            X1, X16 }
        }

        ++v50;
        sub_22D84D8A0(v0 + 27);
      }

      v56 = v0[89];
      v57 = v0[71];
      *(swift_task_alloc() + 16) = v56;

      v58 = sub_22D84DB1C();
      v346 = v27;

      if (*(v57 + 16))
      {
        v327 = v51;
        v59 = sub_22D8B0D3C();
        v60 = MEMORY[0x277D84F90];
        if (v59)
        {
          v61 = v59;
        }

        else
        {
          v61 = MEMORY[0x277D84F90];
        }

        v339 = v61;
        sub_22D84E314();
        v63 = v62 >> 6;
        v347 = v60;
        v340 = v60;

        if (v39)
        {
          while (1)
          {
            sub_22D8AF238();
            sub_22D8AF65C();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22D84DAB8();
              sub_22D851D5C();
              v347 = v71;
            }

            sub_22D84DF74();
            if (v65)
            {
              sub_22D8516E8(v64);
              sub_22D851D5C();
              v347 = v72;
              sub_22D8AF89C(v72);
            }

            else
            {
              sub_22D8AF89C(v347);
            }

            v66 = *(v60 + 16);
            if (v66)
            {
              sub_22D8580D8(&qword_27DA0D7E0, &unk_22D8B3D70);
              v67 = swift_allocObject();
              j__malloc_size(v67);
              sub_22D8AEF00();
              v67[2] = v66;
              v67[3] = v68;
              sub_22D8AE98C((v353 + 256), v67 + 4, v66, v60);
              sub_22D8AFFA8();
              if (v60 != v66)
              {
                goto LABEL_205;
              }
            }

            else
            {

              v67 = MEMORY[0x277D84F90];
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_22D84DAB8();
              sub_22D88C2F4(v73, v74, v75, v76);
              v340 = v77;
            }

            sub_22D8AF060();
            if (v65)
            {
              v78 = sub_22D854F8C(v69);
              sub_22D88C2F4(v78, v79, v80, v340);
              v340 = v81;
            }

            sub_22D8AF964();
            sub_22D8AF958(v340);
            *(v70 + 32) = v67;
          }
        }

        while (v63 > 1)
        {
          sub_22D8AFDBC();
        }

        v83 = sub_22D893F6C(v82);
        v85 = v84;
        v86 = v353;
        *(v353 + 512) = v83;
        *(v353 + 520) = v84;
        v331 = (v58 + 32);
        v325 = v83;

        v326 = v85;

        v328 = v347 + 40;
LABEL_52:
        sub_22D894070();
        if (!v87)
        {
          v345 = v26;
          v283 = *(v86 + 736);

          goto LABEL_176;
        }

        v88 = v87;
        v89 = sub_22D8B193C();
        v90 = 0;
        v343 = *(v347 + 16);
        v342 = v88;
        while (v343 != v90)
        {
          sub_22D8AF988();
          if (v65)
          {
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
            return;
          }

          if (v92 >= *(v88 + 16))
          {
            goto LABEL_197;
          }

          LOBYTE(v348) = v93;
          v350 = v92;
          v95 = *(v93 - 1);
          v94 = *v93;
          v96 = *(v91 - 1);
          v97 = *v91;

          swift_isUniquelyReferenced_nonNull_native();
          *v26 = v89;
          v98 = sub_22D8AFE3C();
          sub_22D852D10(v98, v99);
          sub_22D84E448();
          if (v7)
          {
            goto LABEL_198;
          }

          v102 = v100;
          v103 = v101;
          sub_22D8580D8(&qword_27DA0DC08, &qword_22D8B4A80);
          if (sub_22D8B1EAC())
          {
            v104 = sub_22D8AFE3C();
            sub_22D852D10(v104, v105);
            sub_22D850930();
            if (!v146)
            {
              goto LABEL_5;
            }

            v102 = v106;
          }

          v89 = *v26;
          if (v103)
          {
            v107 = (v89[7] + 16 * v102);
            *v107 = v96;
            v107[1] = v97;
          }

          else
          {
            sub_22D8AF544();
            sub_22D84DDB0(v108);
            v109 = (v89[6] + 16 * v102);
            *v109 = v95;
            v109[1] = v94;
            v110 = (v89[7] + 16 * v102);
            *v110 = v96;
            v110[1] = v97;
            sub_22D8AF538();
            if (v7)
            {
              goto LABEL_199;
            }

            v89[2] = v111;
          }

          v90 = v350 + 1;
          v88 = v342;
        }

        v341 = v89;
        v112 = sub_22D8B0D5C();
        sub_22D84D7DC();
        v114 = v113;
        v115 = sub_22D84C584();
        v116 = 0;
        v117 = v339;
        v118 = *(v339 + 16);
        v119 = v114 + 16;
        v120 = (v114 + 8);
        while (v118 != v116)
        {
          if (v116 >= *(v117 + 16))
          {
            goto LABEL_200;
          }

          sub_22D84D24C();
          (*(v114 + 16))(v115, v122 + v121 + *(v114 + 72) * v116, v112);
          v123 = sub_22D8AAC30(v115, v341);
          if (v346)
          {

            (*v120)(v115, v112);
            sub_22D8AF460();

            return;
          }

          v124 = v123;
          ++v116;
          (*v120)(v115, v112);
          v346 = 0;
          v117 = v339;
          if (v124)
          {

            v125 = 0;
            v126 = v327;
            v127 = MEMORY[0x277D84F90];
            v86 = v353;
            v128 = v333;
            while (v125 != *(v353 + 744))
            {
              if (v125 >= *(*(v353 + 736) + 16))
              {
                goto LABEL_202;
              }

              v129 = *(v353 + 608);
              sub_22D84E298(v126, v353 + 336);
              if (sub_22D8AADCC((v353 + 336), v129, v341))
              {
                sub_22D851550((v353 + 336), v353 + 376);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v128 = v127;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v131 = sub_22D84C414();
                  sub_22D87BC48(v131, v132, v133);
                  v127 = *v128;
                }

                v135 = *(v127 + 16);
                v134 = *(v127 + 24);
                if (v135 >= v134 >> 1)
                {
                  sub_22D84C4D0(v134);
                  sub_22D8AF9B8();
                  sub_22D87BC48(v136, v137, v138);
                  v127 = *v333;
                }

                *(v127 + 16) = v135 + 1;
                sub_22D851550((v353 + 376), v127 + 40 * v135 + 32);
                v128 = v333;
              }

              else
              {
                sub_22D84D8A0((v353 + 336));
              }

              v126 += 40;
              ++v125;
            }

            v139 = *(v127 + 16);
            if (v139)
            {
              v344 = v26;
              v140 = 0;
              v141 = MEMORY[0x277D84F90];
LABEL_87:
              while (v140 != v139)
              {
                if (v140 >= *(v127 + 16))
                {
                  goto LABEL_204;
                }

                v119 = v140 + 1;
                sub_22D8AFB38(v140);
                sub_22D8AFD04();
                v142 = v331;
                while (1)
                {
                  if (!--v86)
                  {
                    v150 = sub_22D8AF6F4();
                    sub_22D84D8A0(v150);
                    v140 = v119;
                    goto LABEL_87;
                  }

                  sub_22D84E4D0(v142);
                  v126 = sub_22D8B0A5C();
                  v144 = v143;
                  sub_22D851278((v353 + 16), *(v353 + 40));
                  v146 = v126 == sub_22D8B0A5C() && v144 == v145;
                  if (v146)
                  {
                    break;
                  }

                  v142 += 5;
                  v147 = sub_22D87294C();
                  v126 = sub_22D8B00CC(v147, v148, v149);

                  if (v126)
                  {
                    goto LABEL_99;
                  }
                }

LABEL_99:
                v151 = sub_22D8AF6F4();
                sub_22D851550(v151, v152 + 416);
                v153 = swift_isUniquelyReferenced_nonNull_native();
                *v332 = v141;
                if ((v153 & 1) == 0)
                {
                  v154 = sub_22D84C414();
                  sub_22D87BC48(v154, v155, v156);
                  v141 = *v332;
                }

                v86 = *(v141 + 16);
                v157 = *(v141 + 24);
                if (v86 >= v157 >> 1)
                {
                  sub_22D84C4D0(v157);
                  sub_22D8AF9B8();
                  sub_22D87BC48(v158, v159, v160);
                  v141 = *v332;
                }

                *(v141 + 16) = v86 + 1;
                sub_22D851550((v353 + 416), v141 + 40 * v86 + 32);
                v140 = v119;
              }

              v161 = *(v141 + 16);
              if (v161)
              {
                v162 = MEMORY[0x277D84F90];
                *v335 = MEMORY[0x277D84F90];
                v163 = v141 + 32;
                v164 = v162;
                v165 = v353;
                while (1)
                {
                  sub_22D84E298(v163, v353 + 296);
                  sub_22D84E4D0((v353 + 296));
                  v166 = sub_22D8B0A5C();
                  if (v337[2])
                  {
                    sub_22D852D10(v166, v167);
                    v126 = v168;

                    if (v126)
                    {
                      sub_22D84C5B4();
                      if (v146)
                      {
                        v170 = *(v353 + 320);
                        v169 = *(v353 + 328);
                        sub_22D84E4D0((v353 + 296));
                        sub_22D8B0A5C();
                        sub_22D84C550();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_22D84C414();
                          sub_22D851D5C();
                          v164 = v181;
                        }

                        v171 = *(v164 + 16);
                        sub_22D8AF9D0();
                        if (v65)
                        {
                          sub_22D8AEF14(v172);
                          sub_22D851D5C();
                          v164 = v182;
                        }

                        *(v164 + 16) = v126;
                        v173 = v164 + 16 * v171;
                        *(v173 + 32) = v169;
                        *(v173 + 40) = v170;
                        goto LABEL_121;
                      }
                    }
                  }

                  else
                  {
                  }

                  v175 = *(v353 + 320);
                  v174 = *(v353 + 328);
                  sub_22D84E4D0((v353 + 296));
                  sub_22D8B0A5C();
                  sub_22D854FE4();
                  sub_22D8B009C(v335, v353 + 456);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_22D84C414();
                    sub_22D851D5C();
                    v162 = v179;
                  }

                  v176 = *(v162 + 16);
                  sub_22D8AF9C4();
                  if (v65)
                  {
                    sub_22D8516E8(v177);
                    sub_22D851D5C();
                    v162 = v180;
                  }

                  *(v162 + 16) = v175;
                  v178 = v162 + 16 * v176;
                  *(v178 + 32) = v174;
                  *(v178 + 40) = v126;
                  *v335 = v162;
                  swift_endAccess();
LABEL_121:
                  sub_22D84D8A0((v353 + 296));
                  v163 += 40;
                  if (!--v161)
                  {

                    if (*(v162 + 16))
                    {
                      if (qword_2814589E0 != -1)
                      {
                        sub_22D86845C();
                        swift_once();
                      }

                      v183 = sub_22D8AF74C();
                      sub_22D84C6FC(v183, qword_281459298);
                      v184 = swift_task_alloc();
                      sub_22D8AF1B0();
                      (v164)();

                      v185 = sub_22D8B176C();
                      v186 = sub_22D8B1C6C();

                      if (os_log_type_enabled(v185, v186))
                      {
                        v187 = sub_22D84CE7C();
                        sub_22D8B0084();
                        *v187 = v329;
                        sub_22D8B0D1C();
                        sub_22D8AF1A4();
                        v188 = sub_22D8AF1E8();
                        v189(v188);
                        v190 = sub_22D8AF014();
                        sub_22D84C63C(v190, 0, v191);
                        sub_22D868470();

                        *(v187 + 4) = v184;
                        *(v187 + 12) = 2082;
                        v192 = MEMORY[0x277D837D0];
                        sub_22D8AFE1C();
                        v193 = sub_22D8B192C();
                        v195 = sub_22D8AF700(v193, v194);

                        *(v187 + 14) = v195;
                        *(v187 + 22) = 2082;

                        MEMORY[0x2318D43B0](v196, v192);
                        sub_22D84C550();

                        v197 = sub_22D8AF014();
                        sub_22D84C63C(v197, v195, v198);
                        sub_22D85331C();

                        *(v187 + 24) = v184;
                        _os_log_impl(&dword_22D84A000, v185, v186, "availableUseCases: Use case identifier %{public}s, with arguments: %{public}s is NOT ready, missing: %{public}s", v187, 0x20u);
                        sub_22D8AF308();
                        swift_arrayDestroy();
                        sub_22D85167C();
                        sub_22D8728AC();
                      }

                      else
                      {

                        v245 = sub_22D8AF1E8();
                        v246(v245);
                      }

                      v247 = *(v353 + 720);
                      sub_22D8AF2B0();
                      v249 = *(v248 + 908);
                      sub_22D8B006C();
                      v348 = sub_22D8B0F6C();
                      sub_22D84D7DC();
                      v251 = v250;
                      sub_22D8AFA9C();
                      sub_22D8B012C();
                      sub_22D8AFC48();
                      sub_22D8AF328();
                      v247();
                      if ((v249 & 1) == 0)
                      {
                        goto LABEL_149;
                      }

LABEL_148:

                      sub_22D8AFEB4();
                    }

                    else
                    {
                      if (qword_2814589E0 != -1)
                      {
                        sub_22D86845C();
                        swift_once();
                      }

                      v228 = sub_22D8AF74C();
                      sub_22D84C6FC(v228, qword_281459298);
                      v184 = swift_task_alloc();
                      sub_22D8AF1B0();
                      (v164)();

                      v229 = sub_22D8B176C();
                      v230 = sub_22D8B1C6C();

                      if (os_log_type_enabled(v229, v230))
                      {
                        sub_22D8AF4E8();
                        v349 = sub_22D8AF15C();
                        *v353 = sub_22D8AF55C(v349, v231, v232, v233, v234, v235, v236, v237, v325, v326, v327, v328, v329, *(&v329 + 1), v330).n128_u32[0];
                        sub_22D8B0D1C();
                        sub_22D8AF1A4();
                        v238 = sub_22D8AF1E8();
                        v239(v238);
                        v240 = sub_22D8AF014();
                        sub_22D84C63C(v240, 0, v241);
                        sub_22D868470();

                        sub_22D84E224();
                        v242 = sub_22D8B192C();
                        v244 = sub_22D8AF700(v242, v243);

                        *(v353 + 14) = v244;
                        sub_22D8AF928(&dword_22D84A000, v229, v230, "availableUseCases: Use case identifier %{public}s, with arguments: %{public}s is ready.");
                        sub_22D8AF308();
                        swift_arrayDestroy();
                        sub_22D85167C();
                        v165 = v353;
                        sub_22D84C3D8();
                      }

                      else
                      {

                        v258 = sub_22D8AF1E8();
                        v259(v258);
                      }

                      v260 = *(v165 + 720);
                      sub_22D8AF2B0();
                      v262 = *(v261 + 908);
                      sub_22D8B006C();
                      v348 = sub_22D8B0F6C();
                      sub_22D84D7DC();
                      v251 = v263;
                      sub_22D8AFA9C();
                      sub_22D8B012C();
                      sub_22D8AFC48();
                      sub_22D8AF328();
                      v260();
                      if (v262)
                      {
                        goto LABEL_148;
                      }

LABEL_149:

                      sub_22D8AF6D0();
                    }

                    sub_22D8AFA24();
                    sub_22D8B0F5C();

                    v86 = v353;
                    sub_22D88D150();
                    (*(v251 + 8))(v184, v348);

                    v346 = 0;
                    v26 = v344;
                    goto LABEL_52;
                  }
                }
              }

              v213 = v353;
              if (qword_2814589E0 != -1)
              {
                sub_22D86845C();
                swift_once();
              }

              v214 = *(v353 + 720);
              v215 = sub_22D8B0054();
              sub_22D8AF50C(v215, qword_281459298);
              sub_22D8AF1B0();
              v214();

              v216 = sub_22D8B176C();
              v217 = sub_22D8B1C6C();

              if (os_log_type_enabled(v216, v217))
              {
                sub_22D8AF4E8();
                v218 = sub_22D8AF15C();
                sub_22D8AF268(v218);
                *v119 = v330;
                sub_22D8B0D1C();
                sub_22D8AF1A4();
                v219 = sub_22D8538E0();
                v220(v219);
                v221 = sub_22D8AF014();
                sub_22D84C63C(v221, v353, v222);
                sub_22D868470();

                sub_22D84E224();
                v223 = sub_22D8B192C();
                v225 = sub_22D8AF700(v223, v224);

                *(v119 + 14) = v225;
                sub_22D8AF928(&dword_22D84A000, v216, v217, "availableUseCases: Use case identifier %{public}s, with arguments: %{public}s is ready (no matching required variants).");
                sub_22D8AF0F8();
                sub_22D84C3D8();
                v213 = v353;
                sub_22D84C3D8();
              }

              else
              {

                v252 = sub_22D8538E0();
                v253(v252);
              }

              v254 = *(v213 + 720);

              v255 = sub_22D8B0F6C();
              sub_22D84D7DC();
              v257 = v256;
              sub_22D8AF5EC();
              sub_22D8B0114();
              sub_22D8AFA84();
              sub_22D8AF1B0();
              v254();
              sub_22D8B0F5C();
              v86 = v353;

              sub_22D8AF790();
              sub_22D88D150();
              (*(v257 + 8))(v216, v255);

              v346 = 0;
              v26 = v344;
            }

            else
            {

              if (qword_2814589E0 != -1)
              {
                sub_22D86845C();
                swift_once();
              }

              v199 = *(v353 + 720);
              v200 = sub_22D8B178C();
              sub_22D84C6FC(v200, qword_281459298);
              v201 = swift_task_alloc();
              sub_22D8AF430();
              v199();

              v202 = sub_22D8B176C();
              v203 = sub_22D8B1C6C();

              v204 = os_log_type_enabled(v202, v203);
              v205 = *(v353 + 672);
              if (v204)
              {
                sub_22D8AF4E8();
                v206 = sub_22D8AF15C();
                sub_22D8AF268(v206);
                *v119 = v330;
                sub_22D8B0D1C();
                sub_22D8AF1A4();
                v207 = sub_22D8AF1E8();
                v208(v207);
                v209 = sub_22D8AF014();
                sub_22D84C63C(v209, v118, v210);
                sub_22D868470();

                sub_22D84E224();
                sub_22D8B192C();
                sub_22D84C550();

                v211 = sub_22D8AF014();
                sub_22D84C63C(v211, v205, v212);
                sub_22D85331C();

                *(v119 + 14) = v201;
                sub_22D8AF928(&dword_22D84A000, v202, v203, "availableUseCases: Use case identifier %{public}s, with arguments: %{public}s did NOT match any variants for the use case");
                sub_22D8AF0F8();
                sub_22D84C3D8();
                v86 = v353;
                sub_22D84C3D8();
              }

              else
              {

                v226 = sub_22D8AF1E8();
                v227(v226);
              }

              v346 = 0;
            }

LABEL_84:

            goto LABEL_52;
          }
        }

        v86 = v353;
        goto LABEL_84;
      }

      v345 = v26;

      v264 = *(v58 + 2);
      if (!v264)
      {

        v266 = MEMORY[0x277D84F90];
        goto LABEL_170;
      }

      v265 = v58 + 32;
      v266 = MEMORY[0x277D84F90];
      v267 = MEMORY[0x277D84F90];
      do
      {
        sub_22D84E298(v265, (v0 + 22));
        sub_22D851278(v0 + 22, v0[25]);
        v268 = sub_22D8B0A5C();
        if (v337[2])
        {
          v270 = sub_22D852D10(v268, v269);
          v272 = v271;

          if ((v272 & 1) != 0 && *(v337[7] + v270) == 1)
          {
            v274 = v0[25];
            v273 = v0[26];
            sub_22D851278(v0 + 22, v274);
            sub_22D8B0A5C();
            sub_22D84C578();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22D84C414();
              sub_22D851D5C();
              v267 = v281;
            }

            v275 = v267[2];
            sub_22D8AF9D0();
            if (v65)
            {
              sub_22D8AEF14(v276);
              sub_22D851D5C();
              v267 = v277;
            }

            else
            {
              v277 = v267;
            }

            goto LABEL_165;
          }
        }

        else
        {
        }

        v274 = v0[25];
        v273 = v0[26];
        sub_22D851278(v0 + 22, v274);
        sub_22D8B0A5C();
        sub_22D84C578();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22D84C414();
          sub_22D851D5C();
          v266 = v280;
        }

        v275 = v266[2];
        sub_22D8AF9D0();
        if (v65)
        {
          sub_22D8AEF14(v278);
          sub_22D851D5C();
          v266 = v277;
        }

        else
        {
          v277 = v266;
        }

LABEL_165:
        v277[2] = v274;
        v279 = &v277[2 * v275];
        v279[4] = v273;
        v279[5] = v39;
        v0 = v353;
        sub_22D84D8A0((v353 + 176));
        v265 += 40;
        --v264;
      }

      while (v264);

LABEL_170:
      v282 = v0[90];
      v351 = sub_22D8AF8BC();
      sub_22D84D7DC();
      swift_task_alloc();
      swift_task_alloc();
      swift_task_alloc();
      v282();
      sub_22D8B193C();
      if (v348)
      {

        v26 = v266;
      }

      else
      {

        v26 = 0;
      }

      sub_22D8B0F5C();

      v283 = v353;
      sub_22D88D150();
      v284 = sub_22D8AF9AC();
      v285(v284, v351);
      v86 = v353;
      while (1)
      {

LABEL_176:
        v286 = *(v86 + 648);
        v287 = sub_22D8AF318();
        v288(v287);

        if (v283 == v286)
        {
          sub_22D8B110C();
          sub_22D8AF198();
          v321 = sub_22D8B0F7C();
          sub_22D84C3FC(v321);
          sub_22D84C584();
          sub_22D8AF454();
          sub_22D8B0F4C();
          sub_22D854FA0();

          sub_22D8AFE28();
          sub_22D8AF460();

          __asm { BRAA            X2, X16 }
        }

        sub_22D8AF400();
        v39 = *(v353 + 600);
        v283 = sub_22D84C584();
        v289 = *(v26 + 16);
        v26 += 16;
        v0 = v353;
        *(v353 + 712) = v283;
        *(v353 + 720) = v289;
        *(v353 + 728) = v26 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v352 = v289;
        v289();
        v290 = sub_22D8B09BC();
        *(swift_task_alloc() + 16) = v283;
        v291 = sub_22D84F550();
        v293 = sub_22D86A4FC(v291, v292, v290);
        *(v353 + 736) = v293;

        v294 = *(v293 + 16);
        *(v353 + 744) = v294;
        if (v294)
        {
          break;
        }

        sub_22D8B0F6C();
        sub_22D84D7DC();
        sub_22D8AF5EC();
        sub_22D8B00FC();
        sub_22D8AFA84();
        v352();
        v295 = sub_22D8B193C();
        sub_22D85098C(v295);
        v86 = v353;

        sub_22D8AF220();
        sub_22D88D150();
        v296 = sub_22D87294C();
        v297(v296);
      }

      v27 = v346;
      v299 = sub_22D89357C(v298, v353 + 584);
      *(v353 + 752) = v299;
      v300 = *(v299 + 16);
      *(v353 + 760) = v300;
      v26 = v345;
    }

    while (!v300);
    sub_22D8AF3B8();
LABEL_182:
    v0[99] = v302;
    v0[98] = v338;
    v303 = sub_22D8AF2F8(v301, v302);
    sub_22D84E298(v303, (v0 + 12));
    sub_22D850844(v0 + 12);
    v0[60] = sub_22D8B0A4C();
    v0[61] = v304;
    sub_22D8AF550();
    v0[62] = v305;
    v0[63] = v334;
    v2 = sub_22D8ADEAC();
    sub_22D8ADF00();
    sub_22D8AFC30((v0 + 62), MEMORY[0x277D837D0]);
    sub_22D84C59C();
  }

  while (((v0 - 32) & 1) == 0 || !v338);
  sub_22D8519F8(v0 + 12);
  v0[100] = sub_22D8B0C6C();
  sub_22D84D7DC();
  v307 = v306;
  v0[101] = *(v308 + 64);
  v0[102] = sub_22D8AFB20();
  sub_22D8538E0();
  sub_22D8B0E4C();
  v0[103] = sub_22D8B0C2C();
  v0[104] = v309;
  v310 = *(v307 + 8);
  v0[105] = v310;
  v0[106] = (v307 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v311 = sub_22D85236C();
  v310(v311);
  sub_22D8519F8(v0 + 12);
  v0[107] = swift_task_alloc();
  sub_22D8538E0();
  sub_22D8B0E4C();
  sub_22D8B0C2C();
  sub_22D8AF7EC();
  v0[108] = v312;
  v313 = sub_22D85236C();
  v310(v313);
  v314 = sub_22D852330(v0 + 12);
  v0[109] = sub_22D8AFB78(v314);
  v315 = swift_task_alloc();
  v0[110] = v315;
  *v315 = v0;
  sub_22D84EB94(v315);
  sub_22D84C628();
  sub_22D8AF460();

  sub_22D869A48();
}

uint64_t sub_22D8A9BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[7] = a2;
  sub_22D84E298(a1, v27);
  sub_22D8580D8(&qword_27DA0D688, &unk_22D8B36B0);
  sub_22D8580D8(&qword_27DA0D690, &unk_22D8B4DD0);
  if (swift_dynamicCast())
  {
    v19 = a3;
    v20 = v3;
    sub_22D851550(v25, v28);
    sub_22D84E124(v28, v28[3]);
    v5 = sub_22D8B0A7C();
    v6 = sub_22D8B12BC();
    v18[1] = v18;
    v7 = *(v6 - 8);
    result = MEMORY[0x28223BE20](v6);
    v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = 0;
    v23 = *(v5 + 16);
    v24 = v5;
    v21 = v7 + 8;
    v22 = v7 + 16;
    while (1)
    {
      if (v23 == v11)
      {

        v17 = v19;
        *(v19 + 32) = 0;
        *v17 = 0u;
        v17[1] = 0u;
        return sub_22D84D8A0(v28);
      }

      if (v11 >= *(v24 + 16))
      {
        break;
      }

      (*(v7 + 16))(v10, v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11++, v6);
      v12 = sub_22D8B0D8C();
      v13 = *(v12 - 8);
      MEMORY[0x28223BE20](v12);
      v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_22D8B127C();
      (*(v7 + 8))(v10, v6);
      v16 = sub_22D8B0D0C();
      result = (*(v13 + 8))(v15, v12);
      if (v16)
      {

        sub_22D84E298(v28, v19);
        return sub_22D84D8A0(v28);
      }
    }

    __break(1u);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    result = sub_22D84D014(v25, &qword_27DA0D698, &qword_22D8B36C0);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22D8A9EF4(uint64_t *a1, int64_t *a2)
{
  v3 = a2;
  v97 = a1;
  sub_22D84E124(a2, a2[3]);
  sub_22D8B0A4C();
  v4 = sub_22D879550();

  if (!v4)
  {
    if (qword_2814589E0 == -1)
    {
LABEL_50:
      v62 = sub_22D8B178C();
      sub_22D84C6FC(v62, qword_281459298);
      sub_22D84E298(v3, &v98);
      v63 = sub_22D8B176C();
      v64 = sub_22D8B1C4C();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v101 = v66;
        *v65 = 136446210;
        sub_22D84E124(&v98, v100);
        v67 = sub_22D8B0A4C();
        v69 = v68;
        sub_22D84D8A0(&v98);
        v70 = sub_22D84C63C(v67, v69, &v101);

        *(v65 + 4) = v70;
        _os_log_impl(&dword_22D84A000, v63, v64, "availableUseCases: Resource '%{public}s' does not have a corresponding variant resolver mapping", v65, 0xCu);
        sub_22D84D8A0(v66);
        MEMORY[0x2318D50E0](v66, -1, -1);
        MEMORY[0x2318D50E0](v65, -1, -1);
      }

      else
      {

        sub_22D84D8A0(&v98);
      }

      v71 = sub_22D8B0A1C();
      sub_22D8551D4(&qword_2814587A0, MEMORY[0x2822218C0]);
      swift_allocError();
      v73 = v72;
      v98 = 0;
      v99 = 0xE000000000000000;
      sub_22D8B1E2C();
      MEMORY[0x2318D4340](0x656372756F736552, 0xEA00000000002720);
      sub_22D84E124(v3, v3[3]);
      v74 = sub_22D8B0A4C();
      MEMORY[0x2318D4340](v74);

      MEMORY[0x2318D4340](0xD000000000000038, 0x800000022D8B82B0);
      v75 = v99;
      *v73 = v98;
      v73[1] = v75;
      (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277D29A88], v71);
      return swift_willThrow();
    }

LABEL_58:
    swift_once();
    goto LABEL_50;
  }

  v88 = 0;
  v89 = 0;
  v5 = 0;
  v6 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  v77 = v4 + 64;
  v76 = v10;
  v79 = v2;
  v78 = v4;
  if (!v9)
  {
LABEL_7:
    while (1)
    {
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v11 >= v10)
      {

        sub_22D8AEB14(v88, 0);
        return sub_22D8AEB14(v89, 0);
      }

      v9 = *(v6 + 8 * v11);
      ++v5;
      if (v9)
      {
        goto LABEL_10;
      }
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_6:
  v11 = v5;
LABEL_10:
  v82 = (v9 - 1) & v9;
  v12 = *(v4 + 56);
  v81 = v11;
  v13 = *(v12 + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));
  v14 = *(v13 + 64);
  v84 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = sub_22D8580D8(&qword_27DA0D830, &unk_22D8B3E10);
  v80 = &v76;
  v92 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v90 = &v76 - v19;
  v91 = v19;
  v83 = (v15 + 63) >> 6;
  v85 = v13;

  v21 = 0;
  while (1)
  {
    while (1)
    {
      v3 = &v76;
      MEMORY[0x28223BE20](v20);
      v22 = &v76 - v91;
      if (!v17)
      {
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v23 >= v83)
          {
            v60 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
            sub_22D84C4F8(v22, 1, 1, v60);
            v17 = 0;
            goto LABEL_21;
          }

          v17 = *(v84 + 8 * v23);
          ++v21;
          if (v17)
          {
            v96 = &v76;
            v21 = v23;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v96 = &v76;
      v23 = v21;
LABEL_20:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v24 | (v23 << 6);
      v26 = sub_22D8B122C();
      v95 = &v76;
      v27 = *(v26 - 8);
      MEMORY[0x28223BE20](v26);
      v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = v85;
      (*(v27 + 16))(v29, *(v85 + 48) + *(v31 + 72) * v25, v26);
      v32 = *(*(v30 + 56) + 8 * v25);
      v33 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
      v34 = *(v33 + 48);
      (*(v27 + 32))(v22, v29, v26);
      *&v22[v34] = v32;
      sub_22D84C4F8(v22, 0, 1, v33);

LABEL_21:
      v35 = v90;
      sub_22D8AED30(v22, v90, &qword_27DA0D830, &unk_22D8B3E10);
      v3 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
      if (sub_22D84D0C0(v35, 1, v3) == 1)
      {

        v5 = v81;
        v4 = v78;
        v6 = v77;
        v9 = v82;
        v10 = v76;
        if (!v82)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v36 = sub_22D8B122C();
      v96 = &v76;
      MEMORY[0x28223BE20](v36);
      v38 = &v76 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = *(v35 + *(v3 + 12));
      v94 = v41;
      v95 = v40;
      (*(v41 + 32))(v38, v35);
      v42 = sub_22D8B120C();
      v93 = v38;
      if (v42 == 2)
      {
        break;
      }

      v50 = v42;

      v3 = sub_22D8B121C();
      v52 = v51;
      v98 = 0;
      v99 = 0xE000000000000000;
      if (v50)
      {
        v53 = 1702195828;
      }

      else
      {
        v53 = 0x65736C6166;
      }

      if (v50)
      {
        v54 = 0xE400000000000000;
      }

      else
      {
        v54 = 0xE500000000000000;
      }

      MEMORY[0x2318D4340](v53, v54);

      v86 = v99;
      v87 = v98;
      sub_22D8AEB14(v88, 0);
      v55 = v97;
      swift_isUniquelyReferenced_nonNull_native();
      v56 = *v55;
      v98 = v56;
      sub_22D852D10(v3, v52);
      if (__OFADD__(*(v56 + 16), (v57 & 1) == 0))
      {
        goto LABEL_56;
      }

      v58 = v57;
      sub_22D8580D8(&unk_27DA0D840, &qword_22D8B3E20);
      if (sub_22D8B1EAC())
      {
        sub_22D852D10(v3, v52);
        if ((v58 & 1) != (v59 & 1))
        {
          goto LABEL_59;
        }
      }

      *v97 = v98;
      if (v58)
      {
      }

      else
      {
        sub_22D87954C();
      }

      sub_22D851F6C(&v98, v87, v86);

      v20 = (*(v94 + 8))(v93, v95);
      v88 = sub_22D8AEE88;
    }

    v87 = v39;
    v43 = sub_22D8B121C();
    v3 = v44;
    sub_22D8AEB14(v89, 0);
    v45 = v97;
    swift_isUniquelyReferenced_nonNull_native();
    v46 = *v45;
    v98 = v46;
    sub_22D852D10(v43, v3);
    if (__OFADD__(*(v46 + 16), (v47 & 1) == 0))
    {
      goto LABEL_55;
    }

    v48 = v47;
    sub_22D8580D8(&unk_27DA0D840, &qword_22D8B3E20);
    if (sub_22D8B1EAC())
    {
      sub_22D852D10(v43, v3);
      if ((v48 & 1) != (v49 & 1))
      {
        break;
      }
    }

    *v97 = v98;
    if (v48)
    {
    }

    else
    {
      sub_22D87954C();
    }

    sub_22D8936FC(v87);
    v20 = (*(v94 + 8))(v93, v95);
    v89 = sub_22D8AEE88;
  }

LABEL_59:
  result = sub_22D8B1FBC();
  __break(1u);
  return result;
}

uint64_t sub_22D8AA99C(void *a1, uint64_t a2)
{
  v22 = a2;
  sub_22D84E124(a1, a1[3]);
  v3 = sub_22D8B0A7C();
  v21 = *(v3 + 16);
  if (v21)
  {
    v16[1] = v2;
    result = sub_22D8B12BC();
    v5 = result;
    v6 = 0;
    v7 = *(result - 8);
    v19 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v20 = v3;
    v17 = (v7 + 8);
    v18 = v7 + 16;
    while (v6 < *(v3 + 16))
    {
      v23 = v16;
      MEMORY[0x28223BE20](result);
      v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = sub_22D8B0D8C();
      v11 = *(v10 - 8);
      MEMORY[0x28223BE20](v10);
      v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_22D8B127C();
      v14 = sub_22D8B0D0C();
      (*(v11 + 8))(v13, v10);
      if (v14)
      {
        v15 = sub_22D8B128C();
        result = (*v17)(v9, v5);
        v3 = v20;
        if ((v15 & 1) == 0)
        {

          return 1;
        }
      }

      else
      {
        result = (*v17)(v9, v5);
        v3 = v20;
      }

      if (v21 == ++v6)
      {

        return 0;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_22D8AAC30(uint64_t a1, uint64_t a2)
{
  result = sub_22D8B0D4C();
  v4 = 0;
  v5 = result + 64;
  v27 = result;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v8;
LABEL_10:
    v8 = (v10 - 1) & v10;
    if (*(a2 + 16))
    {
      v12 = __clz(__rbit64(v10)) | (v4 << 6);
      v13 = (*(v27 + 56) + 16 * v12);
      v14 = v13[1];
      v26 = *v13;
      v15 = (*(v27 + 48) + 16 * v12);
      v16 = *v15;
      v17 = v15[1];

      v18 = a2;
      v19 = sub_22D852D10(v16, v17);
      v21 = v20;

      if ((v21 & 1) == 0 || ((v22 = (*(v18 + 56) + 16 * v19), *v22 == v26) ? (v23 = v22[1] == v14) : (v23 = 0), v23))
      {

        a2 = v18;
      }

      else
      {
        v24 = sub_22D8B1F8C();

        a2 = v18;
        if ((v24 & 1) == 0)
        {
          v25 = 0;
LABEL_20:

          return v25;
        }
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      v25 = 1;
      goto LABEL_20;
    }

    v10 = *(v5 + 8 * v11);
    ++v4;
    if (v10)
    {
      v4 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22D8AADCC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a3;
  v5 = a1;
  sub_22D84E124(a1, a1[3]);
  sub_22D8B0A4C();
  v6 = sub_22D879550();

  if (!v6)
  {
    if (qword_2814589E0 == -1)
    {
LABEL_17:
      v32 = sub_22D8B178C();
      sub_22D84C6FC(v32, qword_281459298);
      sub_22D84E298(v5, v49);
      v33 = sub_22D8B176C();
      v34 = sub_22D8B1C4C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v50 = v36;
        *v35 = 136446210;
        sub_22D84E124(v49, v49[3]);
        v37 = sub_22D8B0A4C();
        v39 = v38;
        sub_22D84D8A0(v49);
        v40 = sub_22D84C63C(v37, v39, &v50);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_22D84A000, v33, v34, "availableUseCases: Resource '%{public}s' does not have a corresponding variant resolver mapping", v35, 0xCu);
        sub_22D84D8A0(v36);
        MEMORY[0x2318D50E0](v36, -1, -1);
        MEMORY[0x2318D50E0](v35, -1, -1);
      }

      else
      {

        sub_22D84D8A0(v49);
      }

      return 0;
    }

LABEL_29:
    swift_once();
    goto LABEL_17;
  }

  sub_22D84E124(v5, v5[3]);
  sub_22D8B0A6C();
  v7 = sub_22D879550();

  if (!v7)
  {
    return 1;
  }

  v5 = (v7 + 64);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v43[1] = v43;
  v46 = sub_22D8580D8(&qword_27DA0D838, &unk_22D8B4DC0);
  MEMORY[0x28223BE20](v46);
  v12 = v43 - v11;
  v13 = (v8 + 63) >> 6;

  v14 = 0;
  v44 = v13;
  v45 = v7;
  if (!v10)
  {
LABEL_7:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {
        v41 = 1;
        goto LABEL_26;
      }

      v10 = v5[v15];
      ++v14;
      if (v10)
      {
        v48 = v4;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  while (1)
  {
    v48 = v4;
    v15 = v14;
LABEL_11:
    v16 = __clz(__rbit64(v10)) | (v15 << 6);
    v17 = *(v7 + 48);
    v18 = sub_22D8B122C();
    (*(*(v18 - 8) + 16))(v12, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(*(v7 + 56) + 8 * v16);
    *&v12[*(v46 + 48)] = v19;

    v20 = sub_22D8B121C();
    v22 = v47;
    if (!*(v47 + 16))
    {

      goto LABEL_25;
    }

    v23 = v12;
    v24 = sub_22D852D10(v20, v21);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      break;
    }

    v28 = (*(v22 + 56) + 16 * v24);
    v29 = v28[1];
    v49[0] = *v28;
    v49[1] = v29;
    MEMORY[0x28223BE20](v27);
    v43[-2] = v49;

    v30 = v48;
    v31 = sub_22D855C1C(sub_22D8727B0, &v43[-4], v19);
    v4 = v30;

    if (!v31)
    {
      break;
    }

    v10 &= v10 - 1;
    v12 = v23;
    sub_22D84D014(v23, &qword_27DA0D838, &unk_22D8B4DC0);
    v14 = v15;
    v13 = v44;
    v7 = v45;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v12 = v23;
LABEL_25:
  sub_22D84D014(v12, &qword_27DA0D838, &unk_22D8B4DC0);
  v41 = 0;
LABEL_26:

  return v41;
}

void CatalogServiceServer.Server.availableUseCases(useCaseIdentifiers:includeAssetsInformation:with:)(uint64_t a1, uint64_t a2)
{
  sub_22D8B0028();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v11);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v12);
  sub_22D8AFFE8();
  sub_22D84E35C();
  sub_22D84C4F8(v13, v14, v15, v16);
  sub_22D8AF3F4();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v10;
  *(v17 + 40) = v2;
  *(v17 + 48) = v8;
  *(v17 + 56) = v6;
  *(v17 + 64) = v4;

  v18 = v2;

  sub_22D8AEFE4();
  sub_22D8930E4();

  sub_22D8AFEDC();
}

uint64_t sub_22D8AB378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22D8AB3A0, 0, 0);
}

uint64_t sub_22D8AB3A0()
{
  sub_22D84D77C();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v1 = sub_22D8B178C();
  *(v0 + 48) = sub_22D84C6FC(v1, qword_281459298);
  v2 = sub_22D8B176C();
  v3 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v3))
  {
    v4 = sub_22D85225C();
    sub_22D84C544(v4);
    sub_22D84C460();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_22D84DDE4();
  }

  v10 = *(v0 + 16);

  v11 = sub_22D8AB76C(v10);
  *(v0 + 56) = v11;
  v12 = swift_task_alloc();
  *(v0 + 64) = v12;
  *v12 = v0;
  v12[1] = sub_22D8AB4D0;
  v13 = *(v0 + 88);

  return sub_22D8A2050(v11, v13);
}

uint64_t sub_22D8AB4D0()
{
  sub_22D84D77C();
  v3 = v2;
  sub_22D84C734();
  v5 = v4;
  sub_22D84F51C();
  *v6 = v5;
  v7 = *v1;
  sub_22D84CED0();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {

    *(v5 + 80) = v3;
  }

  sub_22D8AEFD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22D8AB5E0()
{
  sub_22D84D77C();
  v2 = *(v1 + 32);
  v3 = *(v1 + 80);
  v4 = sub_22D8AF384();
  v2(v4);

  sub_22D84D800();

  return v5();
}

uint64_t sub_22D8AB658(uint64_t a1, uint64_t a2)
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  v3 = *(v2 + 72);

  v4 = v3;
  v5 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D8AFC90())
  {
    sub_22D84DD3C();
    v6 = sub_22D84C600();
    sub_22D84C520(5.8381e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AF7F8(v7);
    sub_22D8AF09C(&dword_22D84A000, v8, v9, "availableUseCases: error while processing request %{public}@");
    sub_22D84D014(v6, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  v10 = *(v2 + 72);
  v11 = *(v2 + 32);

  v12 = v10;
  v13 = sub_22D84CF98();
  v11(v13);

  sub_22D84D800();
  sub_22D8AFC08();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_22D8AB76C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_22D8B0D8C();
  v4 = *(*(v3 - 8) + 64);
  v38 = *(v3 - 8);
  v39 = (v38 + 32);
  v36 = v38 + 8;
  v37 = (v38 + 16);
  v41 = MEMORY[0x277D84F90];
  v5 = (a1 + 40);
  *&v6 = 136315138;
  v35 = v6;
  v43 = v3;
  v40 = v4;
  do
  {
    v45 = v5;
    v46 = v1;
    v44 = &v35;
    v7 = *(v5 - 1);
    v8 = *v5;
    MEMORY[0x28223BE20](v3);
    v9 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v10 = &v35 - v9;
    v11 = sub_22D8580D8(qword_27DA0D9F0, &unk_22D8B4DE0);
    MEMORY[0x28223BE20](v11 - 8);
    v13 = &v35 - v12;
    swift_bridgeObjectRetain_n();
    v42 = v7;
    sub_22D8B0D7C();
    v14 = v43;
    if (sub_22D84D0C0(v13, 1, v43) == 1)
    {
      sub_22D84D014(v13, qword_27DA0D9F0, &unk_22D8B4DE0);
      if (qword_2814589E0 != -1)
      {
        swift_once();
      }

      v15 = sub_22D8B178C();
      sub_22D84C6FC(v15, qword_281459298);

      v16 = sub_22D8B176C();
      v17 = sub_22D8B1C4C();

      v18 = os_log_type_enabled(v16, v17);
      v19 = v46;
      if (v18)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v47 = v21;
        *v20 = v35;
        v22 = sub_22D84C63C(v42, v8, &v47);

        *(v20 + 4) = v22;
        _os_log_impl(&dword_22D84A000, v16, v17, "availableUseCases could not convert identifier %s into a valid UseCaseIdentifier", v20, 0xCu);
        sub_22D84D8A0(v21);
        MEMORY[0x2318D50E0](v21, -1, -1);
        MEMORY[0x2318D50E0](v20, -1, -1);
      }

      else
      {
      }
    }

    else
    {

      v23 = *v39;
      v24 = (*v39)(&v35 - v9, v13, v14);
      MEMORY[0x28223BE20](v24);
      v25 = &v35 - v9;
      (*v37)(&v35 - v9, &v35 - v9, v14);
      v26 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22D853C84();
        v26 = v32;
      }

      v27 = *(v26 + 16);
      if (v27 >= *(v26 + 24) >> 1)
      {
        sub_22D853C84();
        v26 = v33;
      }

      v28 = v38;
      v29 = v10;
      v30 = v43;
      (*(v38 + 8))(v29, v43);
      *(v26 + 16) = v27 + 1;
      v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v41 = v26;
      v3 = v23((v26 + v31 + *(v28 + 72) * v27), v25, v30);
      v19 = v46;
    }

    v5 = v45 + 2;
    v1 = v19 - 1;
    v4 = v40;
  }

  while (v1);
  return v41;
}

uint64_t CatalogServiceServer.Server.debugInformation(options:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v7);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v8);
  sub_22D8AFCE0();
  sub_22D8B1B9C();
  sub_22D84E35C();
  sub_22D84C4F8(v9, v10, v11, v12);
  sub_22D8AFDB0();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = v3;
  v13[6] = a2;
  v13[7] = a3;
  v14 = a1;
  v15 = v3;

  sub_22D8AEFE4();
  sub_22D8930E4();
}

uint64_t sub_22D8ABD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x2822009F8](sub_22D8ABD90, 0, 0);
}

uint64_t sub_22D8ABD90()
{
  sub_22D84D77C();
  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v1 = sub_22D8B178C();
  sub_22D84DD10(v1, qword_281459298);
  v2 = sub_22D8B176C();
  v3 = sub_22D8B1C6C();
  if (sub_22D84CEE0(v3))
  {
    v4 = sub_22D85225C();
    sub_22D84C544(v4);
    sub_22D84C460();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_22D84DDE4();
  }

  v10 = v0[8];
  v11 = v0[9];

  v12 = sub_22D8B102C();
  v0[12] = v12;
  sub_22D84C5D0(v12);
  v0[13] = v13;
  v14 = sub_22D84C584();
  v0[14] = v14;
  [v10 integerValue];
  sub_22D8B101C();
  sub_22D84E298(v11 + OBJC_IVAR____TtCC19ModelCatalogRuntime20CatalogServiceServer6Server_unifiedAssetInterface, (v0 + 2));
  if (qword_281459018 != -1)
  {
    sub_22D84DB74(&qword_281459018);
  }

  v0[7] = qword_281459480;
  v15 = sub_22D8B0BCC();
  v0[15] = v15;
  sub_22D84C5D0(v15);
  v0[16] = v16;
  v0[17] = *(v17 + 64);
  v18 = sub_22D84C584();
  v0[18] = v18;

  swift_task_alloc();
  sub_22D84DDC0();
  v0[19] = v19;
  *v19 = v20;
  v19[1] = sub_22D8ABFB4;

  return sub_22D85A6E0(v18, v14);
}

uint64_t sub_22D8ABFB4()
{
  sub_22D84D198();
  sub_22D84C734();
  v1 = *v0;
  sub_22D84CED0();
  *v2 = v1;

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22D8AC09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22D852350();
  v15 = v14[13];
  v30 = v14[12];
  v31 = v14[14];
  v16 = v14[10];
  sub_22D8B104C();
  swift_task_alloc();
  sub_22D8AF87C();
  v17();
  v18 = sub_22D8B103C();

  v16(v18, 0);

  v19 = sub_22D84C538();
  v20(v19);
  sub_22D8ADE3C((v14 + 2));
  (*(v15 + 8))(v31, v30);

  sub_22D84D800();
  sub_22D8728C8();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

void sub_22D8AC250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22D8B1ACC();
  if (a2)
  {
    v6 = sub_22D8B068C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_22D8AC2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D8AC320, 0, 0);
}

uint64_t sub_22D8AC320()
{
  sub_22D84D198();
  v1 = sub_22D8B0B1C();
  v0[5] = v1;
  sub_22D84C5D0(v1);
  v0[6] = v2;
  v3 = sub_22D84C584();
  v0[7] = v3;
  sub_22D8B0F8C();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  sub_22D84DD88(v4);

  return sub_22D8B0174(v3);
}

uint64_t sub_22D8AC404()
{
  sub_22D84F8A0();
  sub_22D84C734();
  v3 = v2;
  sub_22D84F51C();
  *v4 = v3;
  v5 = *v1;
  sub_22D84CED0();
  *v6 = v5;
  *(v3 + 72) = v0;

  v7 = sub_22D8538E0();
  v8(v7);
  if (!v0)
  {
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22D8AC564()
{
  sub_22D84D198();
  (*(v0 + 24))(0, 0xE000000000000000, 0);
  sub_22D84D800();

  return v1();
}

uint64_t sub_22D8AC5CC(uint64_t a1, uint64_t a2)
{
  sub_22D8AFC1C();
  sub_22D84F8A0();

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v3 = *(v2 + 72);
  v4 = sub_22D8B178C();
  sub_22D84DD10(v4, qword_281459298);
  v5 = v3;
  v6 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D8AFC90())
  {
    sub_22D84DD3C();
    v7 = sub_22D84C600();
    sub_22D84C520(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AF7F8(v8);
    sub_22D8AF09C(&dword_22D84A000, v9, v10, "donateSafetyFailure: error while donating safety failure: %@");
    sub_22D84D014(v7, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  v11 = *(v2 + 72);
  v12 = *(v2 + 24);

  v13 = v11;
  v14 = sub_22D862778();
  v12(v14);

  sub_22D84D800();
  sub_22D8AFC08();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t CatalogServiceServer.Server.safetyFailures(userIdentifier:with:)(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D8580D8(&qword_27DA0D628, "l\x1B");
  sub_22D84C3FC(v6);
  sub_22D84C5F4();
  MEMORY[0x28223BE20](v7);
  sub_22D8B0008();
  sub_22D84E35C();
  sub_22D84C4F8(v8, v9, v10, v11);
  sub_22D8AF500();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;

  sub_22D8AEFE4();
  sub_22D8930E4();
}

uint64_t sub_22D8AC824(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 72) = a4;
  return MEMORY[0x2822009F8](sub_22D8AC848, 0, 0);
}

uint64_t sub_22D8AC848()
{
  sub_22D84D198();
  sub_22D8B131C();
  swift_allocObject();
  *(v0 + 32) = sub_22D8B12FC();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22D8AC90C;
  v2 = *(v0 + 72);

  return MEMORY[0x2821659D0](v2);
}

uint64_t sub_22D8AC90C()
{
  sub_22D84F8A0();
  v3 = v2;
  v5 = v4;
  sub_22D84C734();
  v7 = v6;
  sub_22D84F51C();
  *v8 = v7;
  v9 = *v1;
  sub_22D84CED0();
  *v10 = v9;
  v7[6] = v0;

  if (!v0)
  {
    v7[7] = v3;
    v7[8] = v5;
  }

  sub_22D84C3F0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22D8ACA24()
{
  sub_22D84D77C();
  v1 = *(v0 + 16);

  v2 = sub_22D84EB60();
  sub_22D879444(v2, v3);
  v4 = sub_22D84EB60();
  v1(v4);
  v5 = sub_22D84EB60();
  sub_22D877894(v5, v6);
  v7 = sub_22D84EB60();
  sub_22D877894(v7, v8);
  sub_22D84D800();

  return v9();
}

uint64_t sub_22D8ACAB4(uint64_t a1, uint64_t a2)
{
  sub_22D8AFC1C();
  sub_22D84F8A0();

  if (qword_2814589E0 != -1)
  {
    sub_22D86845C();
    swift_once();
  }

  v3 = *(v2 + 48);
  v4 = sub_22D8B178C();
  sub_22D84DD10(v4, qword_281459298);
  v5 = v3;
  v6 = sub_22D8B176C();
  sub_22D8B1C4C();

  if (sub_22D8AFC90())
  {
    sub_22D84DD3C();
    v7 = sub_22D84C600();
    sub_22D84C520(5.7779e-34);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    sub_22D8AF7F8(v8);
    sub_22D8AF09C(&dword_22D84A000, v9, v10, "safetyFailures: error while getting safety failure: %@");
    sub_22D84D014(v7, &qword_27DA0D4D0, &qword_22D8B3400);
    sub_22D84F8CC();
    sub_22D84D6DC();
  }

  v11 = *(v2 + 48);
  v12 = *(v2 + 16);

  v13 = v11;
  v12(0, 0xF000000000000000, v11);

  sub_22D84D800();
  sub_22D8AFC08();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

void sub_22D8ACC9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_22D8B068C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_22D8B07AC();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id CatalogServiceServer.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CatalogServiceServer.Server.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22D8ACDF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_22D8B19CC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_22D8ACE5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22D8580D8(&qword_27DA0DCB0, &qword_22D8B4E18);
    v2 = sub_22D8B1F2C();
    v17 = v2;
    sub_22D8B1ECC();
    while (1)
    {
      v3 = sub_22D8B1EEC();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_22D8B113C();
      swift_dynamicCast();
      sub_22D8B10EC();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_22D8AD050(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_22D8B1D5C();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22D8AD050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22D8580D8(&qword_27DA0DCB0, &qword_22D8B4E18);
  result = sub_22D8B1F1C();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return result;
  }

  v32 = v2;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        sub_22D88C8E8(0, (v31 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    result = sub_22D8B1D5C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v7 + 48) + 8 * v26) = v19;
    *(*(v7 + 56) + 8 * v26) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_22D8AD2B4(uint64_t a1, uint64_t a2)
{
  sub_22D8B0028();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_22D852D10(v5, v3);
  sub_22D84E448();
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_22D8B1FBC();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_22D8580D8(&qword_27DA0D5F8, &qword_22D8B33B8);
  if (sub_22D8B1EAC())
  {
    sub_22D852D10(v6, v4);
    sub_22D8AF258();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v2;
  if (v13)
  {
    sub_22D84D8A0((*(v16 + 56) + 32 * v12));
    sub_22D8AF580();
    sub_22D8AFEDC();

    sub_22D855C0C(v17, v18);
  }

  else
  {
    sub_22D877930(v12, v6, v4, v8, v16);
    sub_22D8AFEDC();
  }
}

void sub_22D8AD400()
{
  sub_22D851698();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_22D852D10(v3, v1);
  sub_22D84E448();
  if (v11)
  {
    __break(1u);
LABEL_14:
    sub_22D8B1FBC();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  v14 = sub_22D8580D8(&qword_27DA0DC08, &qword_22D8B4A80);
  if (sub_22D84E1AC(v14))
  {
    v15 = sub_22D8AF214();
    sub_22D852D10(v15, v16);
    sub_22D8AF248();
    if (!v18)
    {
      goto LABEL_14;
    }

    v12 = v17;
  }

  v19 = *v0;
  if (v13)
  {
    sub_22D8AFD98(v19[7]);
    *v20 = v8;
    v20[1] = v6;
    sub_22D84D1C0();
  }

  else
  {
    sub_22D877974(v12, v4, v2, v8, v6, v19);
    sub_22D84D1C0();
  }
}

void sub_22D8AD538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22D8AFEF0();
  sub_22D8AF274(v11, v12, v13);
  sub_22D84E448();
  if (v14)
  {
    __break(1u);
LABEL_14:
    sub_22D8B1FBC();
    __break(1u);
    return;
  }

  v15 = sub_22D8AFF28();
  if (sub_22D84E1AC(v15))
  {
    v16 = sub_22D84CFB4();
    sub_22D852D10(v16, v17);
    sub_22D8AF248();
    if (!v19)
    {
      goto LABEL_14;
    }

    v10 = v18;
  }

  if (v9)
  {
    *(*(*v8 + 56) + 8 * v10) = v7;
    sub_22D8AF604();
  }

  else
  {
    v21 = sub_22D8AF970();
    v22(v21);
    sub_22D8AF604();
  }
}

void sub_22D8AD600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22D8AFEF0();
  sub_22D8AF274(v11, v12, v13);
  sub_22D84E448();
  if (v14)
  {
    __break(1u);
LABEL_14:
    sub_22D8B1FBC();
    __break(1u);
    return;
  }

  v15 = sub_22D8AFF28();
  if (sub_22D84E1AC(v15))
  {
    v16 = sub_22D84CFB4();
    sub_22D852D10(v16, v17);
    sub_22D8AF248();
    if (!v19)
    {
      goto LABEL_14;
    }

    v10 = v18;
  }

  if (v9)
  {
    *(*(*v8 + 56) + 8 * v10) = v7;
    sub_22D8AF604();
  }

  else
  {
    v22 = sub_22D8AF970();
    v23(v22);
    sub_22D8AF604();
  }
}

unint64_t sub_22D8AD6C8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22D8AD6E8(uint64_t a1)
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  sub_22D84C4E8();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DF3C(v2);
  sub_22D8AFC08();

  return sub_22D89ABCC(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22D8AD77C(uint64_t a1)
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  sub_22D84C4E8();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DF3C(v2);
  sub_22D8AFC08();

  return sub_22D89B050(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22D8AD810()
{
  sub_22D872924();
  sub_22D84C4E8();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22D84D1FC(v3);
  *v4 = v5;
  v6 = sub_22D84DF3C(v4);

  return sub_22D89BD30(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_22D8AD8B8(uint64_t a1)
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  sub_22D84C4E8();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DF3C(v2);
  sub_22D8AFC08();

  return sub_22D89FCB0(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22D8AD94C(uint64_t a1)
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84D764();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DF3C(v2);
  sub_22D84E19C();
  sub_22D8AF734();

  return sub_22D8A03C8(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22D8AD9DC(uint64_t a1)
{
  sub_22D8AF6DC();
  sub_22D872924();
  sub_22D84C4E8();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DF3C(v2);
  sub_22D8AF734();

  return sub_22D8AB378(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_22D8ADA7C()
{
  sub_22D872924();
  sub_22D84C4E8();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_22D84D1FC(v3);
  *v4 = v5;
  v6 = sub_22D84DF3C(v4);

  return sub_22D8ABD6C(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_22D8ADB24(uint64_t a1)
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  sub_22D84C4E8();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DF3C(v2);
  sub_22D8AFC08();

  return sub_22D8AC2FC(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22D8ADBB8(uint64_t a1)
{
  sub_22D8AFC1C();
  sub_22D84F8A0();
  v1 = swift_task_alloc();
  v2 = sub_22D84D1FC(v1);
  *v2 = v3;
  sub_22D84DC44(v2);
  sub_22D8AFC08();

  return sub_22D8AC824(v4, v5, v6, v7, v8, v9);
}

uint64_t type metadata accessor for CatalogServiceServer.Server(uint64_t a1)
{
  result = qword_2814591C0;
  if (!qword_2814591C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D8ADD04(uint64_t a1)
{
  result = sub_22D8B073C();
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

unint64_t sub_22D8ADE18(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_22D8ADEAC()
{
  result = qword_281458930;
  if (!qword_281458930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458930);
  }

  return result;
}

unint64_t sub_22D8ADF00()
{
  result = qword_281458938;
  if (!qword_281458938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458938);
  }

  return result;
}

uint64_t sub_22D8ADF74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_22D8ADFEC(uint64_t a1, uint64_t a2)
{

  sub_22D8AE06C(a1, a2);
}

void sub_22D8AE06C(uint64_t a1, uint64_t a2)
{
  sub_22D8B0028();
  v5 = v4;
  v13[6] = *MEMORY[0x277D85DE8];
  v13[0] = isStackAllocationSafe;
  v7 = *(v6 + 32);
  v13[3] = v13;
  v13[4] = v6;
  v8 = ((1 << v7) + 63) >> 6;
  if (v7 & 0x3Fu) <= 0xD || (v10 = v3, isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    sub_22D88C8E8(0, v8, &v13[-1] - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    v9 = sub_22D851E68();
    v5(v9);
    sub_22D8AEFC8();
  }

  else
  {
    v11 = swift_slowAlloc();
    sub_22D8AE560(v11, v8, v10);
    sub_22D8AEFC8();

    sub_22D84F8CC();
  }

  sub_22D8AFEDC();
}

void sub_22D8AE1E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v32 = a4 + 56;

  v27 = 0;
  v10 = 0;
  v29 = v9;
  v30 = v5;
LABEL_5:
  while (v8)
  {
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(a3 + 48) + ((v10 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    sub_22D8B201C();

    sub_22D8B1A6C();
    v16 = sub_22D8B205C();
    v17 = ~(-1 << *(a4 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v32 + 8 * v19)) == 0)
      {

        v9 = v29;
        v5 = v30;
        goto LABEL_5;
      }

      v21 = (*(a4 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_22D8B1F8C();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = a1[v19];
    a1[v19] = v24 | v20;
    v9 = v29;
    v5 = v30;
    if ((v24 & v20) == 0 && __OFADD__(v27++, 1))
    {
      goto LABEL_24;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      sub_22D877FBC(a1, a2, v27, a4);
      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

unint64_t *sub_22D8AE3D4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v21 = v5;
LABEL_3:
    if (v6 == v24)
    {
      goto LABEL_19;
    }

    if (v6 >= v24)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v23 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v25 = v6 + 1;
    sub_22D8B201C();

    sub_22D8B1A6C();
    v11 = sub_22D8B205C();
    v12 = ~(-1 << *(a4 + 32));
    do
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = 1 << (v11 & v12);
      if ((v15 & *(v7 + 8 * v14)) == 0)
      {

        v6 = v25;
        goto LABEL_3;
      }

      v16 = (*(a4 + 48) + 16 * v13);
      if (*v16 == v10 && v16[1] == v9)
      {
        break;
      }

      v18 = sub_22D8B1F8C();
      v11 = v13 + 1;
    }

    while ((v18 & 1) == 0);

    v19 = v22[v14];
    v22[v14] = v19 | v15;
    v6 = v25;
    if ((v19 & v15) != 0)
    {
      goto LABEL_3;
    }

    v5 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:

      return sub_22D877FBC(v22, a2, v21, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_22D8AE560(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_22D8AE5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22D8B1F8C() & 1;
  }
}

uint64_t sub_22D8AE65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  a3(0);
  sub_22D8AF0BC();
  sub_22D8551D4(v4, v5);
  return sub_22D8B19AC() & 1;
}

void *sub_22D8AE6F8(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a4 + 56;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  if (!a2)
  {
    v11 = 0;
    a3 = 0;
LABEL_22:
    *result = a4;
    result[1] = v5;
    result[2] = ~v6;
    result[3] = v11;
    result[4] = v8;
    return a3;
  }

  if (!a3)
  {
    v11 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v26 = -1 << *(a4 + 32);
    v27 = result;
    v10 = 0;
    v11 = 0;
    v28 = (63 - v6) >> 6;
    v29 = a3;
    while (1)
    {
      if (v10 >= a3)
      {
        goto LABEL_25;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_26;
      }

      v12 = v10;
      v32 = v10 + 1;
      v33 = v9;
      v13 = sub_22D8B12BC();
      v14 = *(v13 - 8);
      v15 = MEMORY[0x28223BE20](&v26);
      v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      result = MEMORY[0x28223BE20](v15);
      v20 = &v26 - v18;
      if (!v8)
      {
        while (1)
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v21 >= v28)
          {
            v8 = 0;
            a3 = v12;
            result = v27;
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v21);
          ++v11;
          if (v8)
          {
            v30 = v19;
            v31 = result;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v30 = v19;
      v31 = result;
      v21 = v11;
LABEL_16:
      v22 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v23 = *(v14 + 72);
      (*(v14 + 16))(&v26 - v18, *(a4 + 48) + v23 * (v22 | (v21 << 6)), v13);
      v24 = *(v14 + 32);
      v24(v17, v20, v13);
      v25 = v33;
      result = (v24)(v33, v17, v13);
      a3 = v29;
      if (v32 == v29)
      {
        break;
      }

      v9 = v25 + v23;
      v10 = v32;
      v11 = v21;
    }

    v11 = v21;
    result = v27;
LABEL_20:
    v6 = v26;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22D8AE98C(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_22D8AEB14(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_22D8AEB24(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_22D8AE1E4(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

unint64_t *sub_22D8AEB54@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  result = sub_22D8AE3D4(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_22D8AEBC8()
{
  v1 = sub_22D8580D8(&qword_27DA0DCB8, &qword_22D8B4E20);
  sub_22D84C3FC(v1);
  sub_22D84D24C();
  v2 = *(v0 + 16);

  return sub_22D893DE0(v2);
}

uint64_t sub_22D8AEC30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22D84D794();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22D8AEC74()
{
  v0 = sub_22D8B0C6C();
  sub_22D84C3FC(v0);
  return sub_22D8B0C5C();
}

uint64_t sub_22D8AECE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22D852220(a1, a2, a3, a4);
  sub_22D84C740();
  v5 = sub_22D8AF580();
  v6(v5);
  return v4;
}

uint64_t sub_22D8AED30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22D852220(a1, a2, a3, a4);
  sub_22D84C740();
  v5 = sub_22D8AF580();
  v6(v5);
  return v4;
}

uint64_t sub_22D8AEDAC()
{
  sub_22D84D77C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22D84D1FC(v3);
  *v4 = v5;
  v4[1] = sub_22D851AF8;
  v6 = sub_22D855A60();

  return v7(v6, v2, v1);
}

void sub_22D8AEF40()
{
  sub_22D84D8A0(v0);

  JUMPOUT(0x2318D50E0);
}

void sub_22D8AEF74()
{
  sub_22D84D8A0(v0);

  JUMPOUT(0x2318D50E0);
}

void sub_22D8AEFA8()
{

  JUMPOUT(0x2318D50E0);
}

void sub_22D8AF038()
{

  JUMPOUT(0x2318D50E0);
}

uint64_t sub_22D8AF080()
{

  return swift_slowAlloc();
}

void sub_22D8AF09C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_22D8AF0F8()
{

  return swift_arrayDestroy();
}

void *sub_22D8AF134(int a1, int a2, int a3, void *aBlock)
{

  return _Block_copy(aBlock);
}

uint64_t sub_22D8AF15C()
{

  return swift_slowAlloc();
}

uint64_t sub_22D8AF1BC(unint64_t *a1)
{
  v2 = MEMORY[0x282221C18];

  return sub_22D8AEC30(a1, v2);
}

id sub_22D8AF1F4(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

unint64_t sub_22D8AF274(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22D852D10(a2, a3);
}

void sub_22D8AF2DC()
{

  JUMPOUT(0x2318D50E0);
}

void sub_22D8AF344()
{

  JUMPOUT(0x2318D50E0);
}

void sub_22D8AF394()
{
  v1 = (v0[76] + v0[83]);
  v0[96] = *v1;
  v0[97] = v1[1];
}

void sub_22D8AF3B8()
{
  v1 = (v0[76] + v0[83]);
  v0[96] = *v1;
  v0[97] = v1[1];
}

uint64_t sub_22D8AF498@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[114] = v4;
  v6[113] = v5;
  v6[112] = a4;
  v8 = v6[94] + 40 * a1 + 72;

  return sub_22D84E298(v8, (v6 + 49));
}

uint64_t sub_22D8AF4CC()
{

  return swift_slowAlloc();
}

uint64_t sub_22D8AF4E8()
{

  return swift_slowAlloc();
}

uint64_t sub_22D8AF50C(uint64_t a1, uint64_t a2)
{
  sub_22D84C6FC(a1, a2);

  return swift_task_alloc();
}

uint64_t sub_22D8AF58C()
{
}

uint64_t sub_22D8AF5BC()
{
}

uint64_t sub_22D8AF5EC()
{

  return swift_task_alloc();
}

uint64_t sub_22D8AF63C(unint64_t *a1)
{
  v2 = MEMORY[0x282221898];

  return sub_22D8551D4(a1, v2);
}

double sub_22D8AF65C()
{

  return result;
}

uint64_t sub_22D8AF67C()
{

  return sub_22D8B1B9C();
}

uint64_t sub_22D8AF69C()
{

  return swift_slowAlloc();
}

uint64_t sub_22D8AF700(uint64_t a1, unint64_t a2)
{

  return sub_22D84C63C(a1, a2, (v2 - 96));
}

uint64_t sub_22D8AF74C()
{

  return sub_22D8B178C();
}

double sub_22D8AF79C()
{

  return result;
}

uint64_t sub_22D8AF7D0(uint64_t result)
{
  v3[89] = result;
  v3[90] = v1;
  v3[91] = v2 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

uint64_t sub_22D8AF7F8(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

void sub_22D8AF804(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_22D8AF81C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2112;
  return result;
}

void sub_22D8AF89C(uint64_t a1@<X8>)
{
  *(a1 + 16) = v4;
  v5 = a1 + 16 * v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t sub_22D8AF8AC(uint64_t result)
{
  *(v1 + 872) = result;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_22D8AF8BC()
{
  *(v1 - 120) = *(v0 + 908);

  return sub_22D8B0F6C();
}

uint64_t sub_22D8AF8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *(v11 - 96) = a1;
  *v10 = a9;

  return sub_22D84E298(v9 + 472, v9 + 512);
}

void sub_22D8AF928(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22D8AFA84()
{

  return swift_task_alloc();
}

uint64_t sub_22D8AFA9C()
{

  return swift_task_alloc();
}

uint64_t sub_22D8AFAB4(uint64_t a1)
{

  return sub_22D8B127C();
}

uint64_t sub_22D8AFAD8(uint64_t a1)
{

  return sub_22D8B127C();
}

uint64_t sub_22D8AFAFC()
{
  v4 = (*(v2 - 104) + 416);

  return sub_22D851550(v4, v0 + 40 * v1 + 32);
}

uint64_t sub_22D8AFB20()
{

  return swift_task_alloc();
}

uint64_t sub_22D8AFB38@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v3 - 104) + 16;

  return sub_22D84E298(v2 + a1 * v1, v5);
}

uint64_t sub_22D8AFB54()
{
}

uint64_t sub_22D8AFB78(uint64_t a1)
{

  return sub_22D8B0E6C();
}

uint64_t sub_22D8AFB90()
{
}

BOOL sub_22D8AFBCC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22D8AFBE4()
{
  *(v2 + 704) = v1;

  return swift_task_alloc();
}

uint64_t sub_22D8AFC30(uint64_t a1, uint64_t a2)
{

  return sub_22D8B198C();
}

uint64_t sub_22D8AFC48()
{

  return swift_task_alloc();
}

uint64_t sub_22D8AFC60(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

void sub_22D8AFC78(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

BOOL sub_22D8AFC90()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_22D8AFCA8()
{
}

uint64_t sub_22D8AFD44@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 144) = 0xD000000000000029;
  *(v2 - 136) = a1;
  return v1;
}

uint64_t sub_22D8AFDA4(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_22D8AFE5C(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t sub_22D8AFF28()
{

  return sub_22D8580D8(v0, v1);
}

uint64_t sub_22D8AFF48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{

  return sub_22D8AE65C(a1, a2, a3, a4);
}

void sub_22D8AFF68(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, v6, a4, a5, 0xCu);
}

uint64_t sub_22D8AFF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_22D84C63C(a4, v6, va);
}

uint64_t sub_22D8AFFA8()
{
  v2 = *(v0 + 256);

  return sub_22D879544(v2);
}

BOOL sub_22D8AFFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{

  return sub_22D8934A0(v4, v6, v5, a4);
}

uint64_t sub_22D8AFFE8()
{

  return sub_22D8B1B9C();
}

uint64_t sub_22D8B0008()
{

  return sub_22D8B1B9C();
}

uint64_t sub_22D8B003C()
{
}

uint64_t sub_22D8B0054()
{

  return sub_22D8B178C();
}

uint64_t sub_22D8B006C()
{
}

uint64_t sub_22D8B0084()
{

  return swift_slowAlloc();
}

uint64_t sub_22D8B009C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_22D8B00B4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22D8B00CC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22D8B1F8C();
}

id sub_22D8B00E4()
{

  return v0;
}

uint64_t sub_22D8B00FC()
{

  return swift_task_alloc();
}

uint64_t sub_22D8B0114()
{

  return swift_task_alloc();
}

uint64_t sub_22D8B012C()
{

  return swift_task_alloc();
}

void sub_22D8B0144(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void sub_22D8B015C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_22D8B0194()
{
  v1 = sub_22D8B0B0C();
  if (getuid() != v1)
  {
    if (qword_2814589E0 != -1)
    {
      sub_22D84DE60(&qword_2814589E0);
    }

    v2 = sub_22D8B178C();
    sub_22D84C6FC(v2, qword_281459298);
    v3 = sub_22D8B176C();
    v4 = sub_22D8B1C5C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_22D84A000, v3, v4, "TemporaryGuardrailsHelper:donateSafetyFailure does not support reporting for other users (%{public}u) on embedded platforms", v5, 8u);
      MEMORY[0x2318D50E0](v5, -1, -1);
    }
  }

  sub_22D8B0B0C();
  sub_22D8B131C();
  swift_allocObject();
  v0[3] = sub_22D8B12FC();
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_22D8B0334;
  v7 = v0[2];

  return MEMORY[0x2821659E0](v7);
}

uint64_t sub_22D8B0334()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22D8B04AC;
  }

  else
  {
    v2 = sub_22D8B0448;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22D8B0448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D8B04AC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22D8B0510()
{
  result = qword_2814588F8;
  if (!qword_2814588F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814588F8);
  }

  return result;
}

uint64_t sub_22D8B0554(void *a1)
{
  v1 = [a1 countryCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22D8B19FC();

  return v3;
}

unint64_t sub_22D8B05B8()
{
  result = qword_281458918;
  if (!qword_281458918)
  {
    sub_22D85EE94(&qword_27DA0D7A0, &unk_22D8B3B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281458918);
  }

  return result;
}