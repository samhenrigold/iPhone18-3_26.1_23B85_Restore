uint64_t sub_24B58C8DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 103) = a6;
  *(v6 + 216) = a3;
  *(v6 + 224) = a5;
  *(v6 + 102) = a4;
  *(v6 + 208) = a1;
  *(v6 + 176) = a3;
  *(v6 + 184) = a4;
  *(v6 + 192) = a5;
  *(v6 + 200) = a6;
  *(v6 + 232) = type metadata accessor for FilterAction(0);
  *(v6 + 240) = swift_task_alloc();
  *(v6 + 248) = sub_24B5FFBEC();
  *(v6 + 256) = sub_24B5FFBDC();
  v10 = (*(a2 + 64) + **(a2 + 64));
  v8 = swift_task_alloc();
  *(v6 + 264) = v8;
  *v8 = v6;
  v8[1] = sub_24B58CA48;

  return v10(v6 + 104, v6 + 176);
}

uint64_t sub_24B58CA48()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_24B5FFBCC();
    v5 = v4;
    v6 = sub_24B58CEC8;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v9 = sub_24B5FFBCC();
    v8 = v10;
    *(v2 + 280) = v9;
    *(v2 + 288) = v10;
    v6 = sub_24B58CBA8;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24B58CBA8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 103);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 102) & 1;
  *(v0 + 39) = *(v0 + 120);
  *(v0 + 55) = *(v0 + 136);
  *(v0 + 71) = *(v0 + 152);
  *(v0 + 87) = *(v0 + 168);
  *(v0 + 23) = *(v0 + 104);
  *v1 = v3;
  *(v1 + 8) = v5;
  v6 = *(v0 + 95);
  *(v1 + 12) = *(v0 + 98);
  *(v1 + 9) = v6;
  *(v1 + 16) = v4;
  *(v1 + 24) = v2;
  *(v1 + 25) = *(v0 + 16);
  v7 = *(v0 + 32);
  v8 = *(v0 + 48);
  v9 = *(v0 + 64);
  *(v1 + 88) = *(v0 + 79);
  *(v1 + 73) = v9;
  *(v1 + 57) = v8;
  *(v1 + 41) = v7;
  swift_storeEnumTagMultiPayload();

  v10 = swift_task_alloc();
  *(v0 + 296) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC8, &unk_24B601050);
  *v10 = v0;
  v10[1] = sub_24B58CD00;
  v12 = *(v0 + 240);

  return MEMORY[0x282159B08](v12, v11);
}

uint64_t sub_24B58CD00()
{
  v1 = *v0;
  v2 = *(*v0 + 240);

  sub_24B5A149C(v2, type metadata accessor for FilterAction);
  v3 = *(v1 + 288);
  v4 = *(v1 + 280);

  return MEMORY[0x2822009F8](sub_24B58CE58, v4, v3);
}

uint64_t sub_24B58CE58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B58CEC8()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_24B58CF38(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](v3);
  v4 = sub_24B5FFF3C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_24B58D004(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v21 = *a1;
  v22[0] = v2;
  *(v22 + 9) = *(a1 + 25);
  if (*(a2 + 16) && (sub_24B5FFEFC(), FilterItem.hash(into:)(&v15), v4 = sub_24B5FFF3C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      v8 = *(a2 + 48) + 48 * v6;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v11 = *(v8 + 24);
      v12 = *(v8 + 32);
      v15 = *v8;
      v16 = v9;
      v17 = v10;
      v18 = v11;
      v19 = v12;
      v20 = *(v8 + 40);
      sub_24B57BA1C(v15, v9, v10, v11, v12, v20);
      v13 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v15, &v21);
      sub_24B57BA04(v15, v16, v17, v18, v19, v20);
      if (v13)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_24B58D120(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 89) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a4;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  *(v5 + 40) = type metadata accessor for FilterAction(0);
  *(v5 + 48) = swift_task_alloc();
  sub_24B5FFBEC();
  *(v5 + 56) = sub_24B5FFBDC();
  v7 = sub_24B5FFBCC();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return MEMORY[0x2822009F8](sub_24B58D1F4, v7, v6);
}

uint64_t sub_24B58D1F4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 89);
  v3 = *(v0 + 88);
  v4 = *(v0 + 32);
  *v1 = *(v0 + 24);
  *(v1 + 8) = v3 & 1;
  *(v1 + 16) = v4;
  *(v1 + 24) = v2;
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC8, &unk_24B601050);
  *v5 = v0;
  v5[1] = sub_24B58D2F0;
  v7 = *(v0 + 48);

  return MEMORY[0x282159B08](v7, v6);
}

uint64_t sub_24B58D2F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  sub_24B5A149C(v2, type metadata accessor for FilterAction);
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24B58D448, v4, v3);
}

uint64_t sub_24B58D448()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B58D4B4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = type metadata accessor for FilterAction(0);
  *(v3 + 40) = swift_task_alloc();
  sub_24B5FFBEC();
  *(v3 + 48) = sub_24B5FFBDC();
  v5 = sub_24B5FFBCC();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return MEMORY[0x2822009F8](sub_24B58D580, v5, v4);
}

uint64_t sub_24B58D580()
{
  if (*(v0 + 96) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v1 = swift_task_alloc();
    *(v0 + 72) = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC8, &unk_24B601050);
    *v1 = v0;
    v1[1] = sub_24B58D718;
    v3 = *(v0 + 40);

    return MEMORY[0x282159B08](v3, v2);
  }

  else
  {
    v6 = (*(*(v0 + 24) + 16) + **(*(v0 + 24) + 16));
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_24B58D8EC;

    return v6();
  }
}

uint64_t sub_24B58D718()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *v0;

  sub_24B5A149C(v2, type metadata accessor for FilterAction);
  v6 = (*(*(v1 + 24) + 16) + **(*(v1 + 24) + 16));
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v3;
  v4[1] = sub_24B58D8EC;

  return v6();
}

uint64_t sub_24B58D8EC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_24B58DA94;
  }

  else
  {
    v5 = sub_24B58DA28;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B58DA28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B58DA94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B58DB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v306 = a1;
  v291 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v297 = &v280 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v296 = &v280 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v286 = &v280 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v284 = &v280 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v285 = &v280 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v283 = &v280 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v281 = &v280 - v25;
  MEMORY[0x28223BE20](v24);
  v282 = &v280 - v26;
  v27 = *(a2 + 32);
  v28 = *a3;
  v298 = a3[2];
  v299 = v28;
  v29 = a4[1];
  v304 = *a4;
  v305 = v27;
  v31 = a4[2];
  v30 = a4[3];
  v32 = a4[4];
  v33 = a4[7];
  v302 = a4[6];
  *&v303 = v30;
  v300 = v33;
  v301 = a4[8];
  v34 = *v6;
  v287 = v6[1];
  v288 = v34;
  v35 = v6[10];
  v290 = type metadata accessor for FilterSectionDescriptor(0);
  v36 = v306 + *(v290 + 24);
  v37 = *v36;
  v38 = *(v36 + 8);
  v39 = *(a5 + 48);
  v313 = *(a5 + 32);
  v314[0] = v39;
  *&v314[1] = *(a5 + 64);
  v40 = *(a5 + 16);
  v311 = *a5;
  v312 = v40;
  v35(v308, v38, v305, &v311);
  v306 = v37;
  v41 = *(v37 + 16);
  v305 = v41;
  v289 = v38;
  v295 = *&v309[1];
  v294 = v309[0];
  v293 = v308[1];
  v292 = v308[0];
  if (v38 > 3)
  {
    v42 = MEMORY[0x277D84F90];
    if (v38 > 5)
    {
      if (v38 != 6)
      {
        if (v41)
        {
          v315 = MEMORY[0x277D84F90];
          result = sub_24B5947F8(0, v41, 0);
          v207 = v304;
          if (!*(v306 + 16))
          {
LABEL_248:
            __break(1u);
            goto LABEL_249;
          }

          v208 = 0;
          v305 = v306 + 32;
          v42 = v315;
          v209 = v301 + 56;
          v210 = 1;
          while (1)
          {
            v211 = (v305 + 80 * v208);
            v208 = v210;
            v311 = *v211;
            v212 = v211[1];
            v213 = v211[2];
            v214 = v211[3];
            *(v314 + 9) = *(v211 + 57);
            v313 = v213;
            v314[0] = v214;
            v312 = v212;
            if (v207 && *(v301 + 16))
            {
              v215 = *(&v312 + 1);
              v216 = v313;
              v217 = v301;
              sub_24B5FFEFC();
              sub_24B57BAFC(&v311, v308, &qword_27F018BD8, &unk_24B601060);
              sub_24B57BAFC(&v311, v308, &qword_27F018BD8, &unk_24B601060);
              sub_24B5FFB1C();
              v218 = sub_24B5FFF3C();
              v219 = -1 << *(v217 + 32);
              v220 = v218 & ~v219;
              if ((*(v209 + ((v220 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v220))
              {
                v221 = ~v219;
                while (1)
                {
                  v222 = (*(v301 + 48) + 16 * v220);
                  v223 = *v222 == v215 && v222[1] == v216;
                  if (v223 || (sub_24B5FFECC() & 1) != 0)
                  {
                    break;
                  }

                  v220 = (v220 + 1) & v221;
                  if (((*(v209 + ((v220 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v220) & 1) == 0)
                  {
                    goto LABEL_202;
                  }
                }

                if (v299)
                {
                  *&v316 = v215;
                  *(&v316 + 1) = v216;
                  v318 = 0;
                  v319 = 0;
                  v317 = 0;
                  v320 = 7;
                  v225 = sub_24B58D004(&v316, v298);
                  result = sub_24B58090C(&v311, &qword_27F018BD8, &unk_24B601060);
                  v224 = (v225 & 1) != 0 ? 2 : 1;
                }

                else
                {
                  result = sub_24B58090C(&v311, &qword_27F018BD8, &unk_24B601060);
                  v224 = 1;
                }

                v207 = v304;
              }

              else
              {
LABEL_202:
                result = sub_24B58090C(&v311, &qword_27F018BD8, &unk_24B601060);
                v224 = 0;
                v207 = v304;
              }
            }

            else
            {
              result = sub_24B57BAFC(&v311, v308, &qword_27F018BD8, &unk_24B601060);
              v224 = 0;
            }

            v310 = *&v314[1];
            v309[0] = v313;
            v309[1] = v314[0];
            v308[0] = v311;
            v308[1] = v312;
            v315 = v42;
            v227 = *(v42 + 16);
            v226 = *(v42 + 24);
            if (v227 >= v226 >> 1)
            {
              result = sub_24B5947F8((v226 > 1), v227 + 1, 1);
              v207 = v304;
              v42 = v315;
            }

            *(v42 + 16) = v227 + 1;
            v228 = v42 + 80 * v227;
            *(v228 + 32) = v308[0];
            v229 = v308[1];
            v230 = v309[0];
            v231 = v309[1];
            *(v228 + 96) = v310;
            *(v228 + 64) = v230;
            *(v228 + 80) = v231;
            *(v228 + 48) = v229;
            *(v228 + 104) = v224;
            if (v208 == v41)
            {
              break;
            }

            v210 = v208 + 1;
            if (v208 >= *(v306 + 16))
            {
              goto LABEL_248;
            }
          }
        }

        if (*(v42 + 16))
        {
          v259 = v292;
          v311 = v292;
          v260 = v293;
          v312 = v293;
          v261 = v294;
          v313 = v294;
          v262 = v295;
          *&v314[0] = v295;
          v288(7, &v311);
          sub_24B5A17AC(v259, *(&v259 + 1), v260, *(&v260 + 1), v261, *(&v261 + 1), v262);
          v237 = 0xE700000000000000;
          v236 = 0x72656E69617274;
          v238 = v297;
          goto LABEL_240;
        }

        sub_24B5A17AC(v292, *(&v292 + 1), v293, *(&v293 + 1), v294, *(&v294 + 1), v295);
        v274 = sub_24B5FEDEC();
        v268 = v297;
        (*(*(v274 - 8) + 56))(v297, 1, 1, v274);
        v237 = 0xE700000000000000;
        v236 = 0x72656E69617274;
        goto LABEL_239;
      }

      if (v41)
      {
        v315 = MEMORY[0x277D84F90];
        result = sub_24B594838(0, v41, 0);
        v113 = v304;
        if (!*(v306 + 16))
        {
LABEL_245:
          __break(1u);
          goto LABEL_246;
        }

        v114 = 0;
        *&v303 = v306 + 32;
        v42 = v315;
        v115 = v300 + 56;
        v116 = 1;
        while (1)
        {
          v117 = v303 + 72 * v114;
          v114 = v116;
          v308[0] = *v117;
          v118 = *(v117 + 16);
          v119 = *(v117 + 32);
          v120 = *(v117 + 48);
          LOBYTE(v310) = *(v117 + 64);
          v309[0] = v119;
          v309[1] = v120;
          v308[1] = v118;
          if (v113 && *(v300 + 16))
          {
            v121 = *(&v308[1] + 1);
            v122 = *&v309[0];
            v123 = v300;
            sub_24B5FFEFC();
            sub_24B57BAFC(v308, v307, &qword_27F018BE0, &qword_24B602300);
            sub_24B57BAFC(v308, v307, &qword_27F018BE0, &qword_24B602300);
            sub_24B5FFB1C();
            v124 = sub_24B5FFF3C();
            v125 = -1 << *(v123 + 32);
            v126 = v124 & ~v125;
            if ((*(v115 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126))
            {
              v127 = ~v125;
              while (1)
              {
                v128 = (*(v300 + 48) + 16 * v126);
                v129 = *v128 == v121 && v128[1] == v122;
                if (v129 || (sub_24B5FFECC() & 1) != 0)
                {
                  break;
                }

                v126 = (v126 + 1) & v127;
                if (((*(v115 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126) & 1) == 0)
                {
                  goto LABEL_99;
                }
              }

              if (v299)
              {
                *&v316 = v121;
                *(&v316 + 1) = v122;
                v318 = 0;
                v319 = 0;
                v317 = 0;
                v320 = 6;
                v131 = sub_24B58D004(&v316, v298);
                result = sub_24B58090C(v308, &qword_27F018BE0, &qword_24B602300);
                v130 = (v131 & 1) != 0 ? 2 : 1;
              }

              else
              {
                result = sub_24B58090C(v308, &qword_27F018BE0, &qword_24B602300);
                v130 = 1;
              }
            }

            else
            {
LABEL_99:
              result = sub_24B58090C(v308, &qword_27F018BE0, &qword_24B602300);
              v130 = 0;
            }

            v113 = v304;
          }

          else
          {
            result = sub_24B57BAFC(v308, &v311, &qword_27F018BE0, &qword_24B602300);
            v130 = 0;
          }

          v313 = v309[0];
          v314[0] = v309[1];
          v311 = v308[0];
          v312 = v308[1];
          v315 = v42;
          v133 = *(v42 + 16);
          v132 = *(v42 + 24);
          if (v133 >= v132 >> 1)
          {
            result = sub_24B594838((v132 > 1), v133 + 1, 1);
            v113 = v304;
            v42 = v315;
          }

          *(v42 + 16) = v133 + 1;
          v134 = v42 + 72 * v133;
          v135 = v311;
          v136 = v312;
          v137 = v314[0];
          *(v134 + 64) = v313;
          *(v134 + 80) = v137;
          *(v134 + 32) = v135;
          *(v134 + 48) = v136;
          *(v134 + 96) = v130;
          if (v114 == v305)
          {
            break;
          }

          v116 = v114 + 1;
          if (v114 >= *(v306 + 16))
          {
            goto LABEL_245;
          }
        }
      }

      if (*(v42 + 16))
      {
        v247 = v292;
        v311 = v292;
        v248 = v293;
        v312 = v293;
        v249 = v294;
        v313 = v294;
        v250 = v295;
        *&v314[0] = v295;
        v288(6, &v311);
        sub_24B5A17AC(v247, *(&v247 + 1), v248, *(&v248 + 1), v249, *(&v249 + 1), v250);
        v237 = 0xE500000000000000;
        v236 = 0x656D656874;
        v238 = v296;
        goto LABEL_240;
      }

      sub_24B5A17AC(v292, *(&v292 + 1), v293, *(&v293 + 1), v294, *(&v294 + 1), v295);
      v271 = sub_24B5FEDEC();
      v268 = v296;
      (*(*(v271 - 8) + 56))(v296, 1, 1, v271);
      v237 = 0xE500000000000000;
      v236 = 0x656D656874;
      goto LABEL_239;
    }

    if (v38 != 4)
    {
      if (v41)
      {
        v315 = MEMORY[0x277D84F90];
        result = sub_24B594858(0, v41, 0);
        v158 = v304;
        if (!*(v306 + 16))
        {
LABEL_246:
          __break(1u);
          goto LABEL_247;
        }

        v159 = 0;
        *&v303 = v306 + 32;
        v42 = v315;
        v160 = v302 + 56;
        v161 = 1;
        while (1)
        {
          v162 = (v303 + 80 * v159);
          v159 = v161;
          v311 = *v162;
          v163 = v162[1];
          v164 = v162[2];
          v165 = v162[3];
          *(v314 + 9) = *(v162 + 57);
          v313 = v164;
          v314[0] = v165;
          v312 = v163;
          if (v158 && *(v302 + 16))
          {
            v166 = *(&v312 + 1);
            v167 = v313;
            v168 = v302;
            sub_24B5FFEFC();
            sub_24B57BAFC(&v311, v308, &qword_27F018BE8, &unk_24B601070);
            sub_24B57BAFC(&v311, v308, &qword_27F018BE8, &unk_24B601070);
            sub_24B5FFB1C();
            v169 = sub_24B5FFF3C();
            v170 = -1 << *(v168 + 32);
            v171 = v169 & ~v170;
            if ((*(v160 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171))
            {
              v172 = ~v170;
              while (1)
              {
                v173 = (*(v302 + 48) + 16 * v171);
                v174 = *v173 == v166 && v173[1] == v167;
                if (v174 || (sub_24B5FFECC() & 1) != 0)
                {
                  break;
                }

                v171 = (v171 + 1) & v172;
                if (((*(v160 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171) & 1) == 0)
                {
                  goto LABEL_150;
                }
              }

              if (v299)
              {
                *&v316 = v166;
                *(&v316 + 1) = v167;
                v318 = 0;
                v319 = 0;
                v317 = 0;
                v320 = 5;
                v176 = sub_24B58D004(&v316, v298);
                result = sub_24B58090C(&v311, &qword_27F018BE8, &unk_24B601070);
                v175 = (v176 & 1) != 0 ? 2 : 1;
              }

              else
              {
                result = sub_24B58090C(&v311, &qword_27F018BE8, &unk_24B601070);
                v175 = 1;
              }
            }

            else
            {
LABEL_150:
              result = sub_24B58090C(&v311, &qword_27F018BE8, &unk_24B601070);
              v175 = 0;
            }

            v158 = v304;
          }

          else
          {
            result = sub_24B57BAFC(&v311, v308, &qword_27F018BE8, &unk_24B601070);
            v175 = 0;
          }

          v310 = *&v314[1];
          v309[0] = v313;
          v309[1] = v314[0];
          v308[0] = v311;
          v308[1] = v312;
          v315 = v42;
          v178 = *(v42 + 16);
          v177 = *(v42 + 24);
          if (v178 >= v177 >> 1)
          {
            result = sub_24B594858((v177 > 1), v178 + 1, 1);
            v158 = v304;
            v42 = v315;
          }

          *(v42 + 16) = v178 + 1;
          v179 = v42 + 80 * v178;
          *(v179 + 32) = v308[0];
          v180 = v308[1];
          v181 = v309[0];
          v182 = v309[1];
          *(v179 + 96) = v310;
          *(v179 + 64) = v181;
          *(v179 + 80) = v182;
          *(v179 + 48) = v180;
          *(v179 + 104) = v175;
          if (v159 == v305)
          {
            break;
          }

          v161 = v159 + 1;
          if (v159 >= *(v306 + 16))
          {
            goto LABEL_246;
          }
        }
      }

      if (*(v42 + 16))
      {
        v251 = v292;
        v311 = v292;
        v252 = v293;
        v312 = v293;
        v253 = v294;
        v313 = v294;
        v254 = v295;
        *&v314[0] = v295;
        v288(5, &v311);
        sub_24B5A17AC(v251, *(&v251 + 1), v252, *(&v252 + 1), v253, *(&v253 + 1), v254);
        v237 = 0xEA00000000006C65;
        v236 = 0x76654C6C6C696B73;
        v238 = v286;
        goto LABEL_240;
      }

      sub_24B5A17AC(v292, *(&v292 + 1), v293, *(&v293 + 1), v294, *(&v294 + 1), v295);
      v272 = sub_24B5FEDEC();
      v268 = v286;
      (*(*(v272 - 8) + 56))(v286, 1, 1, v272);
      v237 = 0xEA00000000006C65;
      v236 = 0x76654C6C6C696B73;
      goto LABEL_239;
    }

    if (v41)
    {
      v315 = MEMORY[0x277D84F90];
      result = sub_24B594898(0, v41, 0);
      v67 = v304;
      if (!*(v306 + 16))
      {
LABEL_243:
        __break(1u);
        goto LABEL_244;
      }

      v68 = 0;
      v42 = v315;
      v69 = (v32 + 56);
      v70 = 1;
      v296 = (v32 + 56);
      v297 = (v306 + 32);
      while (1)
      {
        v71 = &v297[64 * v68];
        v68 = v70;
        v72 = *(v71 + 41);
        v74 = v71[1];
        v73 = v71[2];
        v308[0] = *v71;
        v308[1] = v74;
        v309[0] = v73;
        *(v309 + 9) = v72;
        v303 = *(v308 + 8);
        v75 = *(&v74 + 1);
        v301 = *(&v309[0] + 1);
        v76 = v73;
        v302 = *&v308[0];
        v300 = v72 >> 56;
        if (v67 && *(v32 + 16))
        {
          sub_24B5FFEFC();
          sub_24B57BAFC(v308, v307, &qword_27F018BF0, &qword_24B603600);
          sub_24B57BAFC(v308, v307, &qword_27F018BF0, &qword_24B603600);
          sub_24B5FFB1C();
          v77 = sub_24B5FFF3C();
          v78 = -1 << *(v32 + 32);
          v79 = v77 & ~v78;
          if ((*&v69[(v79 >> 3) & 0xFFFFFFFFFFFFFF8] >> v79))
          {
            v80 = ~v78;
            while (1)
            {
              v81 = (*(v32 + 48) + 16 * v79);
              v82 = *v81 == v75 && v81[1] == v76;
              if (v82 || (sub_24B5FFECC() & 1) != 0)
              {
                break;
              }

              v79 = (v79 + 1) & v80;
              if (((*&v69[(v79 >> 3) & 0xFFFFFFFFFFFFFF8] >> v79) & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            if (v299)
            {
              *&v316 = v75;
              *(&v316 + 1) = v76;
              v318 = 0;
              v319 = 0;
              v317 = 0;
              v320 = 4;
              v84 = sub_24B58D004(&v316, v298);
              result = sub_24B58090C(v308, &qword_27F018BF0, &qword_24B603600);
              v83 = (v84 & 1) != 0 ? 2 : 1;
            }

            else
            {
              result = sub_24B58090C(v308, &qword_27F018BF0, &qword_24B603600);
              v83 = 1;
            }
          }

          else
          {
LABEL_45:
            result = sub_24B58090C(v308, &qword_27F018BF0, &qword_24B603600);
            v83 = 0;
          }

          v67 = v304;
        }

        else
        {
          result = sub_24B57BAFC(v308, &v311, &qword_27F018BF0, &qword_24B603600);
          v83 = 0;
        }

        v315 = v42;
        v86 = *(v42 + 16);
        v85 = *(v42 + 24);
        if (v86 >= v85 >> 1)
        {
          result = sub_24B594898((v85 > 1), v86 + 1, 1);
          v67 = v304;
          v42 = v315;
        }

        *(v42 + 16) = v86 + 1;
        v87 = v42 + (v86 << 6);
        v88 = v301;
        *(v87 + 32) = v302;
        *(v87 + 40) = v303;
        *(v87 + 56) = v75;
        *(v87 + 64) = v76;
        v89 = v300;
        *(v87 + 72) = v88;
        *(v87 + 80) = v89;
        *(v87 + 88) = v83;
        if (v68 == v305)
        {
          break;
        }

        v70 = v68 + 1;
        v69 = v296;
        if (v68 >= *(v306 + 16))
        {
          goto LABEL_243;
        }
      }
    }

    if (*(v42 + 16))
    {
      v239 = v292;
      v311 = v292;
      v240 = v293;
      v312 = v293;
      v241 = v294;
      v313 = v294;
      v242 = v295;
      *&v314[0] = v295;
      v288(4, &v311);
      sub_24B5A17AC(v239, *(&v239 + 1), v240, *(&v240 + 1), v241, *(&v241 + 1), v242);
      v236 = 0x6E6547636973756DLL;
      v237 = 0xEA00000000006572;
      v238 = v284;
      goto LABEL_240;
    }

    sub_24B5A17AC(v292, *(&v292 + 1), v293, *(&v293 + 1), v294, *(&v294 + 1), v295);
    v269 = sub_24B5FEDEC();
    v268 = v284;
    (*(*(v269 - 8) + 56))(v284, 1, 1, v269);
    v236 = 0x6E6547636973756DLL;
    v237 = 0xEA00000000006572;
LABEL_239:
    v238 = v268;
    goto LABEL_240;
  }

  if (v38 > 1)
  {
    v42 = MEMORY[0x277D84F90];
    if (v38 != 2)
    {
      if (v41)
      {
        v315 = MEMORY[0x277D84F90];
        result = sub_24B5948D8(0, v41, 0);
        v183 = v304;
        if (!*(v306 + 16))
        {
LABEL_247:
          __break(1u);
          goto LABEL_248;
        }

        v184 = 0;
        v302 = v306 + 32;
        v42 = v315;
        v185 = v303 + 56;
        v186 = 1;
        while (1)
        {
          v187 = (v302 + 80 * v184);
          v184 = v186;
          v311 = *v187;
          v188 = v187[1];
          v189 = v187[2];
          v190 = v187[3];
          *(v314 + 9) = *(v187 + 57);
          v313 = v189;
          v314[0] = v190;
          v312 = v188;
          if (v183 && *(v303 + 16))
          {
            v191 = v313;
            v192 = v303;
            sub_24B5FFEFC();
            sub_24B57BAFC(&v311, v308, &qword_27F018BF8, &unk_24B601080);
            sub_24B57BAFC(&v311, v308, &qword_27F018BF8, &unk_24B601080);
            sub_24B5FFB1C();
            v193 = sub_24B5FFF3C();
            v194 = -1 << *(v192 + 32);
            v195 = v193 & ~v194;
            if ((*(v185 + ((v195 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v195))
            {
              v196 = ~v194;
              while (1)
              {
                v197 = (*(v303 + 48) + 16 * v195);
                v198 = *v197 == v191 && v197[1] == *(&v191 + 1);
                if (v198 || (sub_24B5FFECC() & 1) != 0)
                {
                  break;
                }

                v195 = (v195 + 1) & v196;
                if (((*(v185 + ((v195 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v195) & 1) == 0)
                {
                  goto LABEL_176;
                }
              }

              if (v299)
              {
                v316 = v191;
                v318 = 0;
                v319 = 0;
                v317 = 0;
                v320 = 3;
                v200 = sub_24B58D004(&v316, v298);
                result = sub_24B58090C(&v311, &qword_27F018BF8, &unk_24B601080);
                v199 = (v200 & 1) != 0 ? 2 : 1;
              }

              else
              {
                result = sub_24B58090C(&v311, &qword_27F018BF8, &unk_24B601080);
                v199 = 1;
              }
            }

            else
            {
LABEL_176:
              result = sub_24B58090C(&v311, &qword_27F018BF8, &unk_24B601080);
              v199 = 0;
            }

            v183 = v304;
          }

          else
          {
            result = sub_24B57BAFC(&v311, v308, &qword_27F018BF8, &unk_24B601080);
            v199 = 0;
          }

          v310 = *&v314[1];
          v309[0] = v313;
          v309[1] = v314[0];
          v308[0] = v311;
          v308[1] = v312;
          v315 = v42;
          v202 = *(v42 + 16);
          v201 = *(v42 + 24);
          if (v202 >= v201 >> 1)
          {
            result = sub_24B5948D8((v201 > 1), v202 + 1, 1);
            v183 = v304;
            v42 = v315;
          }

          *(v42 + 16) = v202 + 1;
          v203 = v42 + 80 * v202;
          *(v203 + 32) = v308[0];
          v204 = v308[1];
          v205 = v309[0];
          v206 = v309[1];
          *(v203 + 96) = v310;
          *(v203 + 64) = v205;
          *(v203 + 80) = v206;
          *(v203 + 48) = v204;
          *(v203 + 104) = v199;
          if (v184 == v305)
          {
            break;
          }

          v186 = v184 + 1;
          if (v184 >= *(v306 + 16))
          {
            goto LABEL_247;
          }
        }
      }

      if (*(v42 + 16))
      {
        v255 = v292;
        v311 = v292;
        v256 = v293;
        v312 = v293;
        v257 = v294;
        v313 = v294;
        v258 = v295;
        *&v314[0] = v295;
        v288(3, &v311);
        sub_24B5A17AC(v255, *(&v255 + 1), v256, *(&v256 + 1), v257, *(&v257 + 1), v258);
        v237 = 0xE800000000000000;
        v236 = 0x7974696C61646F6DLL;
        v238 = v285;
        goto LABEL_240;
      }

      sub_24B5A17AC(v292, *(&v292 + 1), v293, *(&v293 + 1), v294, *(&v294 + 1), v295);
      v273 = sub_24B5FEDEC();
      v268 = v285;
      (*(*(v273 - 8) + 56))(v285, 1, 1, v273);
      v237 = 0xE800000000000000;
      v236 = 0x7974696C61646F6DLL;
      goto LABEL_239;
    }

    if (v41)
    {
      v315 = MEMORY[0x277D84F90];
      result = sub_24B594918(0, v41, 0);
      v90 = v304;
      if (!*(v306 + 16))
      {
LABEL_244:
        __break(1u);
        goto LABEL_245;
      }

      v91 = 0;
      v42 = v315;
      v92 = (v31 + 56);
      v93 = 1;
      v296 = (v31 + 56);
      v297 = (v306 + 32);
      while (1)
      {
        v94 = &v297[64 * v91];
        v91 = v93;
        v95 = *(v94 + 41);
        v97 = v94[1];
        v96 = v94[2];
        v308[0] = *v94;
        v308[1] = v97;
        v309[0] = v96;
        *(v309 + 9) = v95;
        v303 = *(v308 + 8);
        v98 = *(&v97 + 1);
        v301 = *(&v309[0] + 1);
        v99 = v96;
        v302 = *&v308[0];
        v300 = v95 >> 56;
        if (v90 && *(v31 + 16))
        {
          sub_24B5FFEFC();
          sub_24B57BAFC(v308, v307, &qword_27F018C00, &qword_24B603620);
          sub_24B57BAFC(v308, v307, &qword_27F018C00, &qword_24B603620);
          sub_24B5FFB1C();
          v100 = sub_24B5FFF3C();
          v101 = -1 << *(v31 + 32);
          v102 = v100 & ~v101;
          if ((*&v92[(v102 >> 3) & 0xFFFFFFFFFFFFFF8] >> v102))
          {
            v103 = ~v101;
            while (1)
            {
              v104 = (*(v31 + 48) + 16 * v102);
              v105 = *v104 == v98 && v104[1] == v99;
              if (v105 || (sub_24B5FFECC() & 1) != 0)
              {
                break;
              }

              v102 = (v102 + 1) & v103;
              if (((*&v92[(v102 >> 3) & 0xFFFFFFFFFFFFFF8] >> v102) & 1) == 0)
              {
                goto LABEL_72;
              }
            }

            if (v299)
            {
              *&v316 = v98;
              *(&v316 + 1) = v99;
              v318 = 0;
              v319 = 0;
              v317 = 0;
              v320 = 2;
              v107 = sub_24B58D004(&v316, v298);
              result = sub_24B58090C(v308, &qword_27F018C00, &qword_24B603620);
              v106 = (v107 & 1) != 0 ? 2 : 1;
            }

            else
            {
              result = sub_24B58090C(v308, &qword_27F018C00, &qword_24B603620);
              v106 = 1;
            }
          }

          else
          {
LABEL_72:
            result = sub_24B58090C(v308, &qword_27F018C00, &qword_24B603620);
            v106 = 0;
          }

          v90 = v304;
        }

        else
        {
          result = sub_24B57BAFC(v308, &v311, &qword_27F018C00, &qword_24B603620);
          v106 = 0;
        }

        v315 = v42;
        v109 = *(v42 + 16);
        v108 = *(v42 + 24);
        if (v109 >= v108 >> 1)
        {
          result = sub_24B594918((v108 > 1), v109 + 1, 1);
          v90 = v304;
          v42 = v315;
        }

        *(v42 + 16) = v109 + 1;
        v110 = v42 + (v109 << 6);
        v111 = v301;
        *(v110 + 32) = v302;
        *(v110 + 40) = v303;
        *(v110 + 56) = v98;
        *(v110 + 64) = v99;
        v112 = v300;
        *(v110 + 72) = v111;
        *(v110 + 80) = v112;
        *(v110 + 88) = v106;
        if (v91 == v305)
        {
          break;
        }

        v93 = v91 + 1;
        v92 = v296;
        if (v91 >= *(v306 + 16))
        {
          goto LABEL_244;
        }
      }
    }

    if (*(v42 + 16))
    {
      v243 = v292;
      v311 = v292;
      v244 = v293;
      v312 = v293;
      v245 = v294;
      v313 = v294;
      v246 = v295;
      *&v314[0] = v295;
      v288(2, &v311);
      sub_24B5A17AC(v243, *(&v243 + 1), v244, *(&v244 + 1), v245, *(&v245 + 1), v246);
      v237 = 0xE900000000000074;
      v236 = 0x6E656D7069757165;
      v238 = v283;
      goto LABEL_240;
    }

    sub_24B5A17AC(v292, *(&v292 + 1), v293, *(&v293 + 1), v294, *(&v294 + 1), v295);
    v270 = sub_24B5FEDEC();
    v268 = v283;
    (*(*(v270 - 8) + 56))(v283, 1, 1, v270);
    v237 = 0xE900000000000074;
    v236 = 0x6E656D7069757165;
    goto LABEL_239;
  }

  if (!v38)
  {
    v42 = MEMORY[0x277D84F90];
    if (!v41)
    {
LABEL_215:
      if (*(v42 + 16))
      {
        v232 = v292;
        v311 = v292;
        v233 = v293;
        v312 = v293;
        v234 = v294;
        v313 = v294;
        v235 = v295;
        *&v314[0] = v295;
        v288(0, &v311);
        sub_24B5A17AC(v232, *(&v232 + 1), v233, *(&v233 + 1), v234, *(&v234 + 1), v235);
        v236 = 0x75636F4679646F62;
        v237 = 0xE900000000000073;
        v238 = v282;
LABEL_240:
        v276 = v290;
        v275 = v291;
        *v291 = v236;
        v275[1] = v237;
        result = sub_24B5A1810(v238, v275 + *(v276 + 20));
        v277 = v275 + *(v276 + 24);
        *v277 = v42;
        v277[8] = v289;
        return result;
      }

      sub_24B5A17AC(v292, *(&v292 + 1), v293, *(&v293 + 1), v294, *(&v294 + 1), v295);
      v267 = sub_24B5FEDEC();
      v268 = v282;
      (*(*(v267 - 8) + 56))(v282, 1, 1, v267);
      v236 = 0x75636F4679646F62;
      v237 = 0xE900000000000073;
      goto LABEL_239;
    }

    v315 = MEMORY[0x277D84F90];
    result = sub_24B594978(0, v41, 0);
    v44 = v304;
    if (*(v306 + 16))
    {
      v45 = 0;
      v297 = (v306 + 32);
      v42 = v315;
      v46 = v304 + 56;
      v47 = 1;
      do
      {
        v48 = &v297[64 * v45];
        v45 = v47;
        v49 = *(v48 + 41);
        v51 = v48[1];
        v50 = v48[2];
        v308[0] = *v48;
        v308[1] = v51;
        v309[0] = v50;
        *(v309 + 9) = v49;
        v303 = *(v308 + 8);
        v52 = *(&v51 + 1);
        v301 = *(&v309[0] + 1);
        v53 = v50;
        v302 = *&v308[0];
        v300 = v49 >> 56;
        if (v44 && *(v44 + 16))
        {
          sub_24B5FFEFC();
          sub_24B57BAFC(v308, v307, &qword_27F018C08, &qword_24B601090);
          sub_24B57BAFC(v308, v307, &qword_27F018C08, &qword_24B601090);
          sub_24B5FFB1C();
          v54 = sub_24B5FFF3C();
          v55 = -1 << *(v44 + 32);
          v56 = v54 & ~v55;
          if ((*(v46 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
          {
            v57 = ~v55;
            while (1)
            {
              v58 = (*(v304 + 48) + 16 * v56);
              v59 = *v58 == v52 && v58[1] == v53;
              if (v59 || (sub_24B5FFECC() & 1) != 0)
              {
                break;
              }

              v56 = (v56 + 1) & v57;
              if (((*(v46 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            if (v299)
            {
              *&v316 = v52;
              *(&v316 + 1) = v53;
              v318 = 0;
              v319 = 0;
              v317 = 0;
              v320 = 0;
              v61 = sub_24B58D004(&v316, v298);
              result = sub_24B58090C(v308, &qword_27F018C08, &qword_24B601090);
              v60 = (v61 & 1) != 0 ? 2 : 1;
            }

            else
            {
              result = sub_24B58090C(v308, &qword_27F018C08, &qword_24B601090);
              v60 = 1;
            }
          }

          else
          {
LABEL_17:
            result = sub_24B58090C(v308, &qword_27F018C08, &qword_24B601090);
            v60 = 0;
          }

          v44 = v304;
        }

        else
        {
          result = sub_24B57BAFC(v308, &v311, &qword_27F018C08, &qword_24B601090);
          v60 = 0;
        }

        v315 = v42;
        v63 = *(v42 + 16);
        v62 = *(v42 + 24);
        if (v63 >= v62 >> 1)
        {
          result = sub_24B594978((v62 > 1), v63 + 1, 1);
          v44 = v304;
          v42 = v315;
        }

        *(v42 + 16) = v63 + 1;
        v64 = v42 + (v63 << 6);
        v65 = v301;
        *(v64 + 32) = v302;
        *(v64 + 40) = v303;
        *(v64 + 56) = v52;
        *(v64 + 64) = v53;
        v66 = v300;
        *(v64 + 72) = v65;
        *(v64 + 80) = v66;
        *(v64 + 88) = v60;
        if (v45 == v305)
        {
          goto LABEL_215;
        }

        v47 = v45 + 1;
      }

      while (v45 < *(v306 + 16));
    }

    __break(1u);
    goto LABEL_243;
  }

  if (!v41)
  {
    v42 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_230:
      v263 = v292;
      v311 = v292;
      v264 = v293;
      v312 = v293;
      v265 = v294;
      v313 = v294;
      *&v314[0] = v295;
      v266 = v281;
      v288(1, &v311);
      sub_24B5A17AC(v263, *(&v263 + 1), v264, *(&v264 + 1), v265, *(&v265 + 1), v295);
      v238 = v266;
    }

    else
    {
      sub_24B5A17AC(v292, *(&v292 + 1), v293, *(&v293 + 1), v294, *(&v294 + 1), v295);
      v278 = sub_24B5FEDEC();
      v279 = v281;
      (*(*(v278 - 8) + 56))(v281, 1, 1, v278);
      v238 = v279;
    }

    v237 = 0xE800000000000000;
    v236 = 0x6E6F697461727564;
    goto LABEL_240;
  }

  v307[0] = MEMORY[0x277D84F90];
  result = sub_24B594958(0, v41, 0);
  v138 = 0;
  v42 = v307[0];
  v139 = v29 + 56;
  v140 = v304;
  v302 = v29 + 56;
  *&v303 = v306 + 32;
  while (v138 < *(v306 + 16))
  {
    v141 = (v303 + 48 * v138);
    v142 = *v141;
    v143 = v141[1];
    v144 = v141[2];
    v145 = v141[3];
    v146 = v141[4];
    if (v140 && *(v29 + 16))
    {
      sub_24B5FFEFC();
      swift_bridgeObjectRetain_n();
      sub_24B5FFB1C();
      v147 = sub_24B5FFF3C();
      v148 = -1 << *(v29 + 32);
      v149 = v147 & ~v148;
      if ((*(v139 + ((v149 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v149))
      {
        v150 = ~v148;
        while (1)
        {
          v151 = (*(v29 + 48) + 16 * v149);
          v152 = *v151 == v142 && v151[1] == v143;
          if (v152 || (sub_24B5FFECC() & 1) != 0)
          {
            break;
          }

          v149 = (v149 + 1) & v150;
          if (((*(v139 + ((v149 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v149) & 1) == 0)
          {
            goto LABEL_125;
          }
        }

        if (v299)
        {
          *&v308[0] = v142;
          *(&v308[0] + 1) = v143;
          *&v308[1] = v144;
          *(&v308[1] + 1) = v145;
          *&v309[0] = v146;
          BYTE8(v309[0]) = 1;
          v154 = sub_24B58D004(v308, v298);

          if (v154)
          {
            v153 = 2;
          }

          else
          {
            v153 = 1;
          }
        }

        else
        {

          v153 = 1;
        }
      }

      else
      {
LABEL_125:

        v153 = 0;
      }

      v140 = v304;
    }

    else
    {

      v153 = 0;
    }

    v307[0] = v42;
    v156 = *(v42 + 16);
    v155 = *(v42 + 24);
    if (v156 >= v155 >> 1)
    {
      result = sub_24B594958((v155 > 1), v156 + 1, 1);
      v140 = v304;
      v42 = v307[0];
    }

    ++v138;
    *(v42 + 16) = v156 + 1;
    v157 = v42 + 48 * v156;
    *(v157 + 32) = v142;
    *(v157 + 40) = v143;
    *(v157 + 48) = v144;
    *(v157 + 56) = v145;
    *(v157 + 64) = v146;
    *(v157 + 72) = v153;
    v139 = v302;
    if (v138 == v305)
    {
      goto LABEL_230;
    }
  }

LABEL_249:
  __break(1u);
  return result;
}

uint64_t sub_24B58FA9C(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_24B5FFBEC();
  v2[3] = sub_24B5FFBDC();
  v6 = (*(a2 + 144) + **(a2 + 144));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24B58FBA4;

  return v6();
}

uint64_t sub_24B58FBA4()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B5FFBCC();
  if (v0)
  {
    v4 = sub_24B58FD64;
  }

  else
  {
    v4 = sub_24B58FD00;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B58FD00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B58FD64()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_24B58FDC8(uint64_t a1)
{
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 272) = 2;
  return result;
}

uint64_t sub_24B58FDFC(uint64_t a1)
{
  if (*(a1 + 272) <= 1u)
  {
    return *(a1 + 272);
  }

  else
  {
    return (*a1 + 2);
  }
}

double sub_24B58FE70(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = 2;
  return result;
}

unint64_t sub_24B58FF7C()
{
  result = qword_27F018B30;
  if (!qword_27F018B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018B30);
  }

  return result;
}

void sub_24B58FFD0(int a1@<W0>, ValueMetadata **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  LODWORD(v297) = a1;
  v294 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v278 = &v270 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v273 = &v270 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v274 = &v270 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v277 = &v270 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v270 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v270 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v270 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v270 - v29;
  v31 = a2[1];
  v287 = *a2;
  v281 = v31;
  v32 = a2[3];
  v286 = a2[2];
  v285 = v32;
  v33 = a2[4];
  v284 = a2[5];
  v34 = a2[7];
  v279 = a2[6];
  v275 = v34;
  v280 = a2[8];
  v292 = *a3;
  v290 = a3[2];
  v35 = a4[1];
  v293 = *a4;
  v36 = a4[2];
  v283 = a4[3];
  v37 = a4[8];
  v272 = a4[7];
  v276 = v37;
  v38 = a5[3];
  v307 = a5[2];
  v308 = v38;
  v309 = *(a5 + 8);
  v39 = a5[1];
  v305 = *a5;
  v306 = v39;
  v40 = *(v6 + 8);
  v289 = *v6;
  v288 = v40;
  LOBYTE(a4) = v297;
  (*(v6 + 80))(&v298, v297, v33, &v305);
  v41 = v299;
  v295 = v298;
  v42 = v301;
  v296 = v300;
  v297 = v299;
  v43 = v302;
  v44 = a4;
  v45 = v303;
  if (v44 <= 3)
  {
    v51 = v286;
    v280 = v35;
    v52 = v36;
    v53 = *(&v302 + 1);
    v291 = v301;
    if (v44 <= 1)
    {
      if (v44)
      {
        goto LABEL_24;
      }

      Kind = v287[1].Kind;
      v55 = v303;
      if (Kind)
      {
        v56 = v287;
        v281 = *(&v302 + 1);
        v282 = v302;
        v57 = sub_24B594728(Kind, 0, &qword_27F018C80, &qword_24B601108);
        v35 = sub_24B59C540(&v305, (v57 + 4), Kind, v56);
        v58 = v305;

        sub_24B5A1880(v58);
        if (v35 != Kind)
        {
          goto LABEL_195;
        }

        v55 = v45;
        v53 = v281;
        v43 = v282;
      }

      else
      {
        v57 = MEMORY[0x277D84F90];
      }

      v140 = v293;
      *&v305 = v57;
      sub_24B596790(&v305, sub_24B59C86C, &type metadata for BodyFocus, sub_24B5997A8, sub_24B597050);
      v141 = v30;
      v142 = v305;
      if (v292)
      {
        v143 = v290;

        if (!v140)
        {
LABEL_73:
          v144 = sub_24B59DB64(v142, v143, v140);

          if (*(v144 + 16))
          {
            v145 = v295;
            v146 = v296;
            v147 = v297;
            *&v305 = v295;
            *(&v305 + 1) = v297;
            v148 = v291;
            *&v306 = v296;
            *(&v306 + 1) = v291;
            *&v307 = v43;
            *(&v307 + 1) = v53;
            *&v308 = v55;
            v289(0, &v305);
            sub_24B5A17AC(v145, v147, v146, v148, v43, v53, v55);
          }

          else
          {
            sub_24B5A17AC(v295, v297, v296, v291, v43, v53, v55);
            v194 = sub_24B5FEDEC();
            (*(*(v194 - 8) + 56))(v30, 1, 1, v194);
          }

          v195 = v294;
          *v294 = 0x75636F4679646F62;
          v195[1] = 0xE900000000000073;
          v196 = type metadata accessor for FilterSectionDescriptor(0);
          sub_24B5A1810(v141, v195 + *(v196 + 20));
          v197 = v195 + *(v196 + 24);
          *v197 = v144;
          v197[8] = 0;
          goto LABEL_184;
        }
      }

      else
      {
        v143 = 0;
        if (!v140)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_73;
    }

    if (v44 == 2)
    {
      v59 = v285[1].Kind;
      if (v59)
      {
        v60 = v285;
        v281 = *(&v302 + 1);
        v282 = v302;
        v271 = v303;
        v35 = sub_24B594728(v59, 0, &qword_27F018C90, &qword_24B601118);
        v61 = sub_24B59C540(&v305, &v35[2], v59, v60);
        v62 = v305;

        sub_24B5A1880(v62);
        if (v61 != v59)
        {
          goto LABEL_196;
        }

        v45 = v271;
        v53 = v281;
        v43 = v282;
      }

      else
      {
        v35 = MEMORY[0x277D84F90];
      }

      v149 = v293;
      v150 = v52;
      *&v305 = v35;
      sub_24B596790(&v305, sub_24B59C818, &type metadata for Equipment, sub_24B5997A8, sub_24B597050);
      v151 = v305;
      if (v292)
      {
        v152 = v290;

        if (v149)
        {
LABEL_78:

LABEL_118:
          v198 = sub_24B59E4C8(v151, v152, v150, sub_24B594918, 2);

          if (*(v198 + 16))
          {
            v199 = v295;
            v200 = v296;
            v201 = v297;
            *&v305 = v295;
            *(&v305 + 1) = v297;
            v202 = v291;
            *&v306 = v296;
            *(&v306 + 1) = v291;
            *&v307 = v43;
            *(&v307 + 1) = v53;
            *&v308 = v45;
            v289(2, &v305);
            sub_24B5A17AC(v199, v201, v200, v202, v43, v53, v45);
          }

          else
          {
            sub_24B5A17AC(v295, v297, v296, v291, v43, v53, v45);
            v213 = sub_24B5FEDEC();
            (*(*(v213 - 8) + 56))(v25, 1, 1, v213);
          }

          v195 = v294;
          *v294 = 0x6E656D7069757165;
          v195[1] = 0xE900000000000074;
          v196 = type metadata accessor for FilterSectionDescriptor(0);
          sub_24B5A1810(v25, v195 + *(v196 + 20));
          v214 = v195 + *(v196 + 24);
          *v214 = v198;
          v215 = 2;
          goto LABEL_183;
        }
      }

      else
      {
        v152 = 0;
        if (v149)
        {
          goto LABEL_78;
        }
      }

      v150 = 0;
      goto LABEL_118;
    }

    v80 = v284[1].Kind;
    if (v80)
    {
      v81 = v284;
      v281 = *(&v302 + 1);
      v282 = v302;
      v271 = v303;
      v82 = sub_24B594608(v80, 0, &qword_27F018C98, &qword_24B601120);
      v35 = sub_24B59C244(&v305, v82 + 32, v80, v81);
      v83 = v305;

      sub_24B5A1880(v83);
      if (v35 != v80)
      {
        goto LABEL_198;
      }

      v45 = v271;
      v53 = v281;
      v43 = v282;
    }

    else
    {
      v82 = MEMORY[0x277D84F90];
    }

    v158 = v293;
    v159 = v283;
    v160 = v22;
    *&v305 = v82;
    sub_24B59682C(&v305, sub_24B59C804, &type metadata for Modality, sub_24B599168, sub_24B596F48);
    v161 = v305;
    if (v292)
    {
      v162 = v290;

      if (v158)
      {
LABEL_86:

LABEL_126:
        v208 = sub_24B59E1A4(v161, v162, v159);

        if (*(v208 + 16))
        {
          v209 = v295;
          v210 = v296;
          v211 = v297;
          *&v305 = v295;
          *(&v305 + 1) = v297;
          v212 = v291;
          *&v306 = v296;
          *(&v306 + 1) = v291;
          *&v307 = v43;
          *(&v307 + 1) = v53;
          *&v308 = v45;
          v289(3, &v305);
          sub_24B5A17AC(v209, v211, v210, v212, v43, v53, v45);
        }

        else
        {
          sub_24B5A17AC(v295, v297, v296, v291, v43, v53, v45);
          v217 = sub_24B5FEDEC();
          (*(*(v217 - 8) + 56))(v22, 1, 1, v217);
        }

        v195 = v294;
        *v294 = 0x7974696C61646F6DLL;
        v195[1] = 0xE800000000000000;
        v196 = type metadata accessor for FilterSectionDescriptor(0);
        sub_24B5A1810(v160, v195 + *(v196 + 20));
        v214 = v195 + *(v196 + 24);
        *v214 = v208;
        v215 = 3;
        goto LABEL_183;
      }
    }

    else
    {
      v162 = 0;
      if (v158)
      {
        goto LABEL_86;
      }
    }

    v159 = 0;
    goto LABEL_126;
  }

  if (v44 > 5)
  {
    if (v44 != 6)
    {
      if (v44 != 7)
      {
        v84 = *(&v302 + 1);
        v85 = type metadata accessor for FilterSectionDescriptor(0);
        (*(*(v85 - 8) + 56))(v294, 1, 1, v85);
        v86 = v295;
        v87 = v296;

        sub_24B5A17AC(v86, v41, v87, v42, v43, v84, v45);
        return;
      }

      v291 = v301;
      v46 = v280;
      v47 = v280[1].Kind;
      v271 = v303;
      if (v47)
      {
        v281 = *(&v302 + 1);
        v282 = v302;
        v48 = sub_24B594608(v47, 0, &qword_27F018CC0, &qword_24B601148);
        v35 = sub_24B59C09C(&v305, v48 + 32, v47, v46, sub_24B5A1548);
        v49 = v305;

        sub_24B5A1880(v49);
        if (v35 != v47)
        {
          goto LABEL_199;
        }

        v50 = v281;
        v43 = v282;
      }

      else
      {
        v50 = *(&v302 + 1);
        v48 = MEMORY[0x277D84F90];
      }

      v163 = v293;
      v164 = v276;
      *&v305 = v48;
      sub_24B596790(&v305, sub_24B59C71C, &type metadata for Trainer, sub_24B598B28, sub_24B596E40);
      v165 = v278;
      v166 = v305;
      v167 = v43;
      if (v292)
      {
        v168 = v290;

        if (v163)
        {
LABEL_90:

LABEL_136:
          v218 = sub_24B5A0298(v166, v168, v164, sub_24B5947F8, sub_24B5A1548, 7);

          if (*(v218 + 16))
          {
            v219 = v295;
            v220 = v296;
            v221 = v297;
            *&v305 = v295;
            *(&v305 + 1) = v297;
            v222 = v291;
            *&v306 = v296;
            *(&v306 + 1) = v291;
            *&v307 = v43;
            *(&v307 + 1) = v50;
            v223 = v50;
            v224 = v271;
            *&v308 = v271;
            v289(7, &v305);
            sub_24B5A17AC(v219, v221, v220, v222, v167, v223, v224);
          }

          else
          {
            sub_24B5A17AC(v295, v297, v296, v291, v43, v50, v271);
            v225 = sub_24B5FEDEC();
            (*(*(v225 - 8) + 56))(v165, 1, 1, v225);
          }

          v195 = v294;
          *v294 = 0x72656E69617274;
          v195[1] = 0xE700000000000000;
          v196 = type metadata accessor for FilterSectionDescriptor(0);
          sub_24B5A1810(v165, v195 + *(v196 + 20));
          v214 = v195 + *(v196 + 24);
          *v214 = v218;
          v215 = 7;
LABEL_183:
          v214[8] = v215;
LABEL_184:
          (*(*(v196 - 8) + 56))(v195, 0, 1, v196);
          return;
        }
      }

      else
      {
        v168 = MEMORY[0x277D84FA0];
        if (v163)
        {
          goto LABEL_90;
        }
      }

      v164 = 0;
      goto LABEL_136;
    }

    v291 = v301;
    v70 = v281;
    v71 = *(v281 + 16);
    v72 = *(&v302 + 1);
    v282 = v302;
    v28 = v303;
    if (v71)
    {
      v73 = sub_24B594608(v71, 0, &qword_27F018CB8, &qword_24B601140);
      v74 = sub_24B59BF08(&v305, v73 + 32, v71, v70);
      v43 = *(&v305 + 1);
      v53 = v305;
      v45 = v307;

      sub_24B5A1880(v53);
      if (v74 != v71)
      {
        __break(1u);
LABEL_24:
        v75 = v51[1].Kind;
        v76 = v45;
        if (v75)
        {
          v77 = v51;
          v282 = v43;
          v281 = v53;
          v78 = sub_24B594698(v75, 0);
          v35 = sub_24B59C3D8(&v305, (v78 + 4), v75, v77);
          v79 = v305;

          sub_24B5A1880(v79);
          if (v35 != v75)
          {
            goto LABEL_197;
          }

          v53 = v281;
          v43 = v282;
        }

        else
        {
          v78 = MEMORY[0x277D84F90];
        }

        v153 = v28;
        v154 = v280;
        *&v305 = v78;
        sub_24B5968C8(&v305);
        v155 = v305;
        v156 = v293;
        if (v292)
        {
          v157 = v290;

          if (v156)
          {
LABEL_82:

LABEL_122:
            v203 = sub_24B59DEB4(v155, v157, v154);

            if (*(v203 + 16))
            {
              v204 = v295;
              v205 = v296;
              v206 = v297;
              *&v305 = v295;
              *(&v305 + 1) = v297;
              v207 = v291;
              *&v306 = v296;
              *(&v306 + 1) = v291;
              *&v307 = v43;
              *(&v307 + 1) = v53;
              *&v308 = v76;
              v289(1, &v305);
              sub_24B5A17AC(v204, v206, v205, v207, v43, v53, v76);
            }

            else
            {
              sub_24B5A17AC(v295, v297, v296, v291, v43, v53, v76);
              v216 = sub_24B5FEDEC();
              (*(*(v216 - 8) + 56))(v28, 1, 1, v216);
            }

            v195 = v294;
            *v294 = 0x6E6F697461727564;
            v195[1] = 0xE800000000000000;
            v196 = type metadata accessor for FilterSectionDescriptor(0);
            sub_24B5A1810(v153, v195 + *(v196 + 20));
            v214 = v195 + *(v196 + 24);
            *v214 = v203;
            v215 = 1;
            goto LABEL_183;
          }
        }

        else
        {
          v157 = 0;
          if (v293)
          {
            goto LABEL_82;
          }
        }

        v154 = 0;
        goto LABEL_122;
      }
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
    }

    *&v305 = v73;
    sub_24B596600(&v305);
    v281 = v72;
    v271 = v28;
    v127 = v305;
    v128 = *(v305 + 16);
    v287 = 0;
    if (!v128)
    {
      v131 = MEMORY[0x277D84F90];
LABEL_99:

      v179 = *(v131 + 2);
      if (v179)
      {
        v180 = 0;
        v35 = (v179 - 1);
        v181 = MEMORY[0x277D84F90];
        do
        {
          v182 = &v131[64 * v180 + 32];
          v183 = v180;
          while (1)
          {
            if (v183 >= *(v131 + 2))
            {
              __break(1u);
              goto LABEL_186;
            }

            v184 = *v182;
            v185 = *(v182 + 1);
            v186 = *(v182 + 3);
            v307 = *(v182 + 2);
            v308 = v186;
            v305 = v184;
            v306 = v185;
            v180 = (&v183->Kind + 1);
            if (*(&v186 + 1))
            {
              break;
            }

            v182 += 64;
            v183 = (v183 + 1);
            if (v179 == v180)
            {
              goto LABEL_147;
            }
          }

          sub_24B5A1888(&v305, &v298);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v304 = v181;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24B5949B8(0, *(v181 + 16) + 1, 1);
            v181 = v304;
          }

          v189 = *(v181 + 16);
          v188 = *(v181 + 24);
          if (v189 >= v188 >> 1)
          {
            sub_24B5949B8((v188 > 1), v189 + 1, 1);
            v181 = v304;
          }

          *(v181 + 16) = v189 + 1;
          v190 = (v181 + (v189 << 6));
          v191 = v305;
          v192 = v306;
          v193 = v308;
          v190[4] = v307;
          v190[5] = v193;
          v190[2] = v191;
          v190[3] = v192;
        }

        while (v35 != v183);
      }

      else
      {
        v181 = MEMORY[0x277D84F90];
      }

LABEL_147:
      *&v305 = v181;

      v35 = v287;
      sub_24B596488(&v305);
      if (v35)
      {
        goto LABEL_202;
      }

      v232 = v305;
      if (v179)
      {
        v233 = 0;
        v234 = v131 + 32;
        v235 = MEMORY[0x277D84F90];
LABEL_150:
        v236 = &v234[64 * v233];
        v237 = v233;
        while (v237 < *(v131 + 2))
        {
          v238 = *v236;
          v239 = *(v236 + 1);
          v240 = *(v236 + 3);
          v307 = *(v236 + 2);
          v308 = v240;
          v305 = v238;
          v306 = v239;
          v233 = v237 + 1;
          if (!*(&v240 + 1))
          {
            sub_24B5A1888(&v305, &v298);
            v241 = swift_isUniquelyReferenced_nonNull_native();
            v304 = v235;
            v287 = v234;
            if ((v241 & 1) == 0)
            {
              sub_24B5949B8(0, *(v235 + 16) + 1, 1);
              v235 = v304;
            }

            v243 = *(v235 + 16);
            v242 = *(v235 + 24);
            if (v243 >= v242 >> 1)
            {
              sub_24B5949B8((v242 > 1), v243 + 1, 1);
              v235 = v304;
            }

            *(v235 + 16) = v243 + 1;
            v244 = (v235 + (v243 << 6));
            v245 = v305;
            v246 = v306;
            v247 = v308;
            v244[4] = v307;
            v244[5] = v247;
            v244[2] = v245;
            v244[3] = v246;
            v234 = v287;
            if ((&v179[-1].Description + 7) != v237)
            {
              goto LABEL_150;
            }

            goto LABEL_162;
          }

          v236 += 64;
          ++v237;
          if (v179 == v233)
          {
            goto LABEL_162;
          }
        }

        goto LABEL_189;
      }

      v235 = MEMORY[0x277D84F90];
LABEL_162:

      *&v305 = v235;

      sub_24B59682C(&v305, sub_24B59C75C, &type metadata for Theme, sub_24B5979A0, sub_24B596D64);

      v248 = v305;
      *&v305 = v232;
      sub_24B59B89C(v248);
      v249 = v305;
      v250 = v271;
      v251 = v281;
      v252 = v282;
      v253 = v273;
      v254 = v272;
      if (v292)
      {
      }

      else
      {
        v290 = 0;
      }

      if (v293)
      {
      }

      else
      {
        v254 = 0;
      }

      v255 = sub_24B59FFA4(v249, v290, v254);

      if (*(v255 + 16))
      {
        v256 = v295;
        v257 = v296;
        v258 = v297;
        *&v305 = v295;
        *(&v305 + 1) = v297;
        v259 = v291;
        *&v306 = v296;
        *(&v306 + 1) = v291;
        *&v307 = v252;
        *(&v307 + 1) = v251;
        *&v308 = v250;
        v289(6, &v305);
        sub_24B5A17AC(v256, v258, v257, v259, v252, v251, v250);
      }

      else
      {
        sub_24B5A17AC(v295, v297, v296, v291, v252, v251, v250);
        v260 = sub_24B5FEDEC();
        (*(*(v260 - 8) + 56))(v253, 1, 1, v260);
      }

      v195 = v294;
      *v294 = 0x656D656874;
      v195[1] = 0xE500000000000000;
      v196 = type metadata accessor for FilterSectionDescriptor(0);
      sub_24B5A1810(v253, v195 + *(v196 + 20));
      v214 = v195 + *(v196 + 24);
      *v214 = v255;
      v215 = 6;
      goto LABEL_183;
    }

    v129 = 0;
    v130 = (v305 + 96);
    v131 = MEMORY[0x277D84F90];
    v35 = &type metadata for Theme;
    while (1)
    {
      if (v129 >= *(v127 + 16))
      {
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      v132 = *v130;
      v133 = *(*v130 + 16);
      v134 = *(v131 + 2);
      v135 = v134 + v133;
      if (__OFADD__(v134, v133))
      {
        goto LABEL_187;
      }

      v136 = swift_isUniquelyReferenced_nonNull_native();
      if (v136 && v135 <= *(v131 + 3) >> 1)
      {
        if (*(v132 + 16))
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v134 <= v135)
        {
          v137 = v134 + v133;
        }

        else
        {
          v137 = v134;
        }

        v131 = sub_24B596270(v136, v137, 1, v131);
        if (*(v132 + 16))
        {
LABEL_65:
          if ((*(v131 + 3) >> 1) - *(v131 + 2) < v133)
          {
            goto LABEL_192;
          }

          swift_arrayInitWithCopy();

          if (v133)
          {
            v138 = *(v131 + 2);
            v101 = __OFADD__(v138, v133);
            v139 = v138 + v133;
            if (v101)
            {
              goto LABEL_193;
            }

            *(v131 + 2) = v139;
          }

          goto LABEL_54;
        }
      }

      if (v133)
      {
        goto LABEL_188;
      }

LABEL_54:
      ++v129;
      v130 += 9;
      if (v128 == v129)
      {
        goto LABEL_99;
      }
    }
  }

  v291 = v301;
  if (v44 == 4)
  {
    v63 = v279;
    v64 = v279[1].Kind;
    v65 = v302;
    if (v64)
    {
      v281 = *(&v302 + 1);
      v282 = v302;
      v66 = sub_24B594728(v64, 0, &qword_27F018CA0, &qword_24B601128);
      v35 = sub_24B59C540(&v305, (v66 + 4), v64, v63);
      v67 = v305;

      sub_24B5A1880(v67);
      if (v35 != v64)
      {
        goto LABEL_200;
      }

      v68 = v45;
      v69 = v281;
      v65 = v282;
    }

    else
    {
      v69 = *(&v302 + 1);
      v68 = v303;
      v66 = MEMORY[0x277D84F90];
    }

    v169 = v293;
    v170 = v283;
    *&v305 = v66;
    sub_24B596790(&v305, sub_24B59C7C4, &type metadata for MusicGenre, sub_24B5997A8, sub_24B597050);
    v171 = v277;
    v172 = v305;
    if (v292)
    {
      v173 = v290;

      if (v169)
      {
LABEL_94:

LABEL_142:
        v226 = sub_24B59E4C8(v172, v173, v170, sub_24B594898, 4);

        if (*(v226 + 16))
        {
          v227 = v295;
          v228 = v296;
          v229 = v297;
          *&v305 = v295;
          *(&v305 + 1) = v297;
          v230 = v291;
          *&v306 = v296;
          *(&v306 + 1) = v291;
          *&v307 = v65;
          *(&v307 + 1) = v69;
          *&v308 = v68;
          v289(4, &v305);
          sub_24B5A17AC(v227, v229, v228, v230, v65, v69, v68);
        }

        else
        {
          sub_24B5A17AC(v295, v297, v296, v291, v65, v69, v68);
          v231 = sub_24B5FEDEC();
          (*(*(v231 - 8) + 56))(v171, 1, 1, v231);
        }

        v195 = v294;
        *v294 = 0x6E6547636973756DLL;
        v195[1] = 0xEA00000000006572;
        v196 = type metadata accessor for FilterSectionDescriptor(0);
        sub_24B5A1810(v171, v195 + *(v196 + 20));
        v214 = v195 + *(v196 + 24);
        *v214 = v226;
        v215 = 4;
        goto LABEL_183;
      }
    }

    else
    {
      v173 = 0;
      if (v169)
      {
        goto LABEL_94;
      }
    }

    v170 = 0;
    goto LABEL_142;
  }

  v88 = v302;
  v271 = v303;
  if (!v299)
  {
    v174 = v275;
    v175 = v275[1].Kind;
    if (v175)
    {
      v176 = *(&v302 + 1);
      v282 = v302;
      v177 = sub_24B594608(v175, 0, &qword_27F018CA8, &qword_24B601130);
      v35 = sub_24B59C09C(&v305, v177 + 32, v175, v174, sub_24B5A15F8);
      v178 = v305;

      sub_24B5A1880(v178);
      if (v35 != v175)
      {
        goto LABEL_201;
      }

      v121 = v176;
      v88 = v282;
    }

    else
    {
      v121 = *(&v302 + 1);
      v177 = MEMORY[0x277D84F90];
    }

    v123 = v293;
    v125 = v283;
    *&v305 = v177;
    sub_24B596790(&v305, sub_24B59C784, &type metadata for SkillLevel, sub_24B598B28, sub_24B596E40);
    v126 = v274;
    v122 = v305;
    v124 = v292;
LABEL_174:
    v261 = v290;
    if (v124)
    {

      if (v123)
      {
LABEL_176:

LABEL_179:
        v262 = sub_24B5A0298(v122, v261, v125, sub_24B594858, sub_24B5A15F8, 5);

        if (*(v262 + 16))
        {
          v263 = v295;
          v264 = v296;
          v265 = v297;
          v298 = v295;
          v299 = v297;
          v266 = v291;
          v300 = v296;
          v301 = v291;
          *&v302 = v88;
          *(&v302 + 1) = v121;
          v267 = v88;
          v268 = v271;
          v303 = v271;
          v289(5, &v298);
          sub_24B5A17AC(v263, v265, v264, v266, v267, v121, v268);
        }

        else
        {
          sub_24B5A17AC(v295, v297, v296, v291, v88, v121, v271);
          v269 = sub_24B5FEDEC();
          (*(*(v269 - 8) + 56))(v126, 1, 1, v269);
        }

        v195 = v294;
        *v294 = 0x76654C6C6C696B73;
        v195[1] = 0xEA00000000006C65;
        v196 = type metadata accessor for FilterSectionDescriptor(0);
        sub_24B5A1810(v126, v195 + *(v196 + 20));
        v214 = v195 + *(v196 + 24);
        *v214 = v262;
        v215 = 5;
        goto LABEL_183;
      }
    }

    else
    {
      v261 = 0;
      if (v123)
      {
        goto LABEL_176;
      }
    }

    v125 = 0;
    goto LABEL_179;
  }

  *&v305 = v295;
  *(&v305 + 1) = v299;
  *&v306 = v296;
  *(&v306 + 1) = v301;
  v307 = v302;
  *&v308 = v303;
  v281 = *(&v302 + 1);
  v282 = v302;
  sub_24B5A18E4(v295, v299, v296, v301, v302, *(&v302 + 1), v303);

  v89 = sub_24B5EA5E8(MEMORY[0x277D84F90]);
  v90 = *(v41 + 16);
  if (!v90)
  {
LABEL_49:

    v110 = v295;
    v111 = v296;
    v112 = v291;
    v113 = v282;
    v114 = v281;
    v115 = v271;
    sub_24B5A18E4(v295, v41, v296, v291, v282, v281, v271);
    v116 = v41;
    v117 = sub_24B59E804(v275, &v305);
    sub_24B5A17AC(v110, v116, v111, v112, v113, v114, v115);
    v118 = v111;
    v119 = v113;
    v120 = v113;
    v121 = v114;
    sub_24B5A17AC(v110, v116, v118, v112, v120, v114, v115);
    v298 = v117;

    sub_24B59FF00(&v298, v89);

    swift_bridgeObjectRelease_n();
    v122 = v298;
    v123 = v293;
    v124 = v292;
    v125 = v283;
    v126 = v274;
    v88 = v119;
    goto LABEL_174;
  }

  v91 = 0;
  v92 = (v41 + 40);
  while (1)
  {
    if (v91 >= *(v41 + 16))
    {
      goto LABEL_190;
    }

    v95 = *(v92 - 1);
    v35 = *v92;
    swift_bridgeObjectRetain_n();

    v96 = swift_isUniquelyReferenced_nonNull_native();
    v298 = v89;
    v97 = sub_24B5EA2D0(v95, v35);
    v99 = *(v89 + 16);
    v100 = (v98 & 1) == 0;
    v101 = __OFADD__(v99, v100);
    v102 = v99 + v100;
    if (v101)
    {
      break;
    }

    v103 = v98;
    if (*(v89 + 24) < v102)
    {
      sub_24B59B990(v102, v96);
      v97 = sub_24B5EA2D0(v95, v35);
      if ((v103 & 1) != (v104 & 1))
      {
        goto LABEL_203;
      }

LABEL_44:
      if (v103)
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }

    if (v96)
    {
      goto LABEL_44;
    }

    v109 = v97;
    sub_24B59BC30();
    v97 = v109;
    if (v103)
    {
LABEL_36:
      v93 = v97;

      v94 = v298;
      *(*(v298 + 7) + 8 * v93) = v91;

      v89 = v94;
      goto LABEL_37;
    }

LABEL_45:
    v105 = v298;
    *&v298[8 * (v97 >> 6) + 64] |= 1 << v97;
    v106 = (*(v105 + 6) + 16 * v97);
    *v106 = v95;
    v106[1] = v35;
    *(*(v105 + 7) + 8 * v97) = v91;

    v107 = *(v105 + 2);
    v101 = __OFADD__(v107, 1);
    v108 = v107 + 1;
    if (v101)
    {
      goto LABEL_194;
    }

    *(v105 + 2) = v108;
    v89 = v105;
LABEL_37:
    ++v91;
    v92 += 2;
    v41 = v297;
    if (v90 == v91)
    {
      goto LABEL_49;
    }
  }

LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
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
  MEMORY[0x24C244180](v35);

  __break(1u);
LABEL_203:
  sub_24B5FFEEC();
  __break(1u);

  MEMORY[0x24C244180](v35);

  __break(1u);
}

char *sub_24B5920E8(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 72);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *(v6 - 2);
    v9 = *(v6 - 1);
    v10 = *(v6 - 4);
    v11 = *(v6 - 3);
    v12 = *v6;
    v29 = *(v6 - 5);
    v30 = v10;
    v31 = v11;
    v32 = v8;
    v33 = v9;
    v34 = v12;
    sub_24B57BA1C(v29, v10, v11, v8, v9, v12);
    a1(&v25, &v29);
    if (v3)
    {
      break;
    }

    sub_24B57BA04(v29, v30, v31, v32, v33, v34);
    if (*(&v28 + 1))
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_24B5959CC(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_24B5959CC((v13 > 1), v14 + 1, 1, v7);
      }

      v19 = v23;
      v20 = v24;
      v15 = v21;
      v18 = v22;
      *(v7 + 2) = v14 + 1;
      v16 = &v7[64 * v14];
      *(v16 + 4) = v19;
      *(v16 + 5) = v20;
      *(v16 + 2) = v15;
      *(v16 + 3) = v18;
    }

    else
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      sub_24B58090C(&v21, &qword_27F018C60, &qword_24B6010E8);
    }

    v6 += 48;
    if (!--v4)
    {
      return v7;
    }
  }

  sub_24B57BA04(v29, v30, v31, v32, v33, v34);

  return v7;
}

uint64_t sub_24B5922BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 89) = a5;
  *(v5 + 24) = a2;
  *(v5 + 32) = a4;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  *(v5 + 40) = type metadata accessor for FilterAction(0);
  *(v5 + 48) = swift_task_alloc();
  sub_24B5FFBEC();
  *(v5 + 56) = sub_24B5FFBDC();
  v7 = sub_24B5FFBCC();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return MEMORY[0x2822009F8](sub_24B592390, v7, v6);
}

uint64_t sub_24B592390()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 89);
  v3 = *(v0 + 88);
  v4 = *(v0 + 32);
  *v1 = *(v0 + 24);
  *(v1 + 8) = v3 & 1;
  *(v1 + 16) = v4;
  *(v1 + 24) = v2;
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC8, &unk_24B601050);
  *v5 = v0;
  v5[1] = sub_24B59248C;
  v7 = *(v0 + 48);

  return MEMORY[0x282159B08](v7, v6);
}

uint64_t sub_24B59248C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  sub_24B5A149C(v2, type metadata accessor for FilterAction);
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24B5A19A8, v4, v3);
}

uint64_t sub_24B5925E4(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_24B5FFBEC();
  v2[3] = sub_24B5FFBDC();
  v6 = (*(a2 + 144) + **(a2 + 144));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24B5926EC;

  return v6();
}

uint64_t sub_24B5926EC()
{
  *(*v1 + 40) = v0;

  v3 = sub_24B5FFBCC();
  if (v0)
  {
    v4 = sub_24B5A19B4;
  }

  else
  {
    v4 = sub_24B5A19B8;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24B592848(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 136) = a1;
  *(v3 + 144) = type metadata accessor for FilterAction(0);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = sub_24B5FFBEC();
  v6 = sub_24B5FFBDC();
  *(v3 + 113) = *(a3 + 25);
  v7 = *a3;
  *(v3 + 104) = a3[1];
  *(v3 + 168) = v6;
  v8 = *(a2 + 128);
  *(v3 + 88) = v7;
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v3 + 176) = v9;
  *v9 = v3;
  v9[1] = sub_24B5929AC;

  return v11(v3 + 16, v3 + 88);
}

uint64_t sub_24B5929AC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = sub_24B5FFBCC();
  if (v0)
  {
    v5 = sub_24B592DB0;
  }

  else
  {
    *(v2 + 192) = v3;
    *(v2 + 200) = v4;
    v5 = sub_24B592B10;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24B592B10()
{
  memmove(*(v0 + 152), (v0 + 16), 0x48uLL);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC8, &unk_24B601050);
  *v1 = v0;
  v1[1] = sub_24B592BE8;
  v3 = *(v0 + 152);

  return MEMORY[0x282159B08](v3, v2);
}

uint64_t sub_24B592BE8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);

  sub_24B5A149C(v2, type metadata accessor for FilterAction);
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_24B592D40, v4, v3);
}

uint64_t sub_24B592D40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B592DB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B592E20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B592EBC;

  return sub_24B592848(a1, v1 + 16, (v1 + 200));
}

uint64_t sub_24B592EBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B592FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CE8, &qword_24B601168);
  *(v2 + 24) = v4;
  *(v2 + 32) = *(v4 - 8);
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CF0, &qword_24B601170);
  *(v2 + 48) = v6;
  *(v2 + 56) = *(v6 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = sub_24B5FFBEC();
  *(v2 + 80) = sub_24B5FFBDC();
  v7 = *(a2 + 96);
  *(v2 + 88) = *(a2 + 160);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  *(v2 + 104) = v8;
  *v8 = v2;
  v8[1] = sub_24B5931D8;

  return v10(v5);
}

uint64_t sub_24B5931D8()
{
  v2 = *v1;
  v2[14] = v0;

  v4 = sub_24B5FFBCC();
  v2[15] = v4;
  v2[16] = v3;
  if (v0)
  {
    v5 = sub_24B5936C4;
  }

  else
  {
    v5 = sub_24B593338;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B593338()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_24B5FFC0C();
  (*(v2 + 8))(v1, v3);
  v4 = sub_24B5FFBDC();
  v0[17] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_24B593428;
  v6 = v0[6];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v4, v7, v6);
}

uint64_t sub_24B593428()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_24B59356C, v3, v2);
}

uint64_t sub_24B59356C()
{
  if (*(v0 + 16))
  {
    (*(v0 + 88))(*(v0 + 16));

    v1 = sub_24B5FFBDC();
    *(v0 + 136) = v1;
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_24B593428;
    v3 = *(v0 + 48);
    v4 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 16, v1, v4, v3);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_24B5936C4()
{

  v1 = *(v0 + 8);

  return v1();
}

int *FilterFeature.dispose(localState:sharedState:)(void *a1)
{
  result = type metadata accessor for FilterState(0);
  if (*(a1 + result[9]) == 1)
  {
    sub_24B58FDC8(v3);
    memcpy(__dst, a1, 0x111uLL);
    sub_24B58FECC(__dst);
    return memcpy(a1, v3, 0x111uLL);
  }

  return result;
}

double sub_24B5937B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  if (v14 <= 3)
  {
    if (*(a2 + 40) > 1u)
    {
      if (v14 == 2)
      {
        if (v13 == 2)
        {
          goto LABEL_28;
        }
      }

      else if (v13 == 3)
      {
        goto LABEL_28;
      }
    }

    else if (*(a2 + 40))
    {
      if (v13 == 1)
      {
        goto LABEL_28;
      }
    }

    else if (!*(a1 + 40))
    {
      goto LABEL_28;
    }
  }

  else if (*(a2 + 40) <= 5u)
  {
    if (v14 == 4)
    {
      if (v13 == 4)
      {
        goto LABEL_28;
      }
    }

    else if (v13 == 5)
    {
      goto LABEL_28;
    }
  }

  else if (v14 == 6)
  {
    if (v13 == 6)
    {
      goto LABEL_28;
    }
  }

  else if (v14 == 7)
  {
    if (v13 == 7)
    {
      goto LABEL_28;
    }
  }

  else if (v13 == 8)
  {
    goto LABEL_28;
  }

  v15 = a3[9];
  v41 = a3[8];
  v42 = v15;
  v43 = a3[10];
  v44 = *(a3 + 22);
  v16 = a3[5];
  v37 = a3[4];
  v38 = v16;
  v17 = a3[7];
  v39 = a3[6];
  v40 = v17;
  v18 = a3[1];
  v33 = *a3;
  v34 = v18;
  v19 = a3[3];
  v35 = a3[2];
  v36 = v19;
  *&v31[0] = v8;
  *&v31[1] = v9;
  *&v31[2] = v10;
  *&v31[3] = v11;
  *&v31[4] = v12;
  v32 = v13;
  v20 = *(a4 + 48);
  v29[2] = *(a4 + 32);
  v29[3] = v20;
  v30 = *(a4 + 64);
  v21 = *(a4 + 16);
  v29[0] = *a4;
  v29[1] = v21;
  v22 = *(a5 + 48);
  v27[2] = *(a5 + 32);
  v27[3] = v22;
  v28 = *(a5 + 64);
  v23 = *(a5 + 16);
  v27[0] = *a5;
  v27[1] = v23;
  v24 = sub_24B593988(v31, v29, v27, a6);
  if (v25)
  {
    *a7 = v8;
    *(a7 + 8) = v9;
    *(a7 + 16) = v10;
    *(a7 + 24) = v11;
    *(a7 + 32) = v12;
    *(a7 + 40) = v13;
    *(a7 + 48) = v24;
    *(a7 + 56) = v25;
    sub_24B57BA1C(v8, v9, v10, v11, v12, v13);
    return result;
  }

LABEL_28:
  result = 0.0;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

double *sub_24B593988(double *a1, void *a2, uint64_t a3, double *a4)
{
  v114 = a3;
  v8 = sub_24B5FEE1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24B5FFADC();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_24B5FFABC();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = *a1;
  v14 = *(a1 + 1);
  v16 = *(a1 + 40);
  if (v16 <= 3)
  {
    if (*(a1 + 40) <= 1u)
    {
      if (*(a1 + 40))
      {
        v67 = a1[3];
        sub_24B5FFAAC();
        sub_24B5FFA9C();
        v68 = round(v67 / 60.0);
        if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v68 > -9.22337204e18)
          {
            if (v68 < 9.22337204e18)
            {
              a1 = a4;
              *&v116[0] = v68;
              sub_24B5FFA7C();
              sub_24B5FFA9C();
              sub_24B5FFACC();
              if (qword_27F0186F0 == -1)
              {
LABEL_90:
                v69 = qword_27F02AD70;
                (*(v9 + 16))(v11, a1, v8);
                v70 = v69;
                return sub_24B5FFAFC();
              }

LABEL_152:
              swift_once();
              goto LABEL_90;
            }

LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      v11 = 0;
      v25 = *a2;
      v26 = *a2;
      v27 = 1 << *(*a2 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = *(v26 + 56);
      v8 = v26 + 56;
      v30 = v28 & v29;
      v31 = (v27 + 63) >> 6;
      v9 = *(a1 + 1);
      while (v30)
      {
LABEL_29:
        v33 = (*(v25 + 48) + 56 * (__clz(__rbit64(v30)) | (v11 << 6)));
        a1 = v33[5];
        if (v33[3] != v15 || v9 != v33[4])
        {
          v30 &= v30 - 1;
          if ((sub_24B5FFECC() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_104;
      }

      while (1)
      {
        v32 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v32 >= v31)
        {
          return 0;
        }

        v30 = *(v8 + 8 * v32);
        ++v11;
        if (v30)
        {
          v11 = v32;
          goto LABEL_29;
        }
      }

LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }

    v9 = *(a1 + 1);
    v11 = 0;
    if (v16 == 2)
    {
      v35 = a2[3];
      v36 = 1 << *(v35 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v8 = v35 + 56;
      v38 = v37 & *(v35 + 56);
      v39 = (v36 + 63) >> 6;
      while (v38)
      {
LABEL_44:
        v41 = (*(v35 + 48) + 56 * (__clz(__rbit64(v38)) | (v11 << 6)));
        a1 = v41[5];
        if (v41[3] != v15 || v9 != v41[4])
        {
          v38 &= v38 - 1;
          if ((sub_24B5FFECC() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_104;
      }

      while (1)
      {
        v40 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v40 >= v39)
        {
          return 0;
        }

        v38 = *(v8 + 8 * v40);
        ++v11;
        if (v38)
        {
          v11 = v40;
          goto LABEL_44;
        }
      }

LABEL_139:
      __break(1u);
    }

    else
    {
      v71 = a2[5];
      v72 = 1 << *(v71 + 32);
      v73 = -1;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      v8 = v71 + 56;
      v74 = v73 & *(v71 + 56);
      v75 = (v72 + 63) >> 6;
      while (v74)
      {
LABEL_99:
        v77 = (*(v71 + 48) + 72 * (__clz(__rbit64(v74)) | (v11 << 6)));
        a1 = v77[6];
        if (v77[4] != v15 || v9 != v77[5])
        {
          v74 &= v74 - 1;
          if ((sub_24B5FFECC() & 1) == 0)
          {
            continue;
          }
        }

LABEL_104:

        return a1;
      }

      while (1)
      {
        v76 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v76 >= v75)
        {
          return 0;
        }

        v74 = *(v8 + 8 * v76);
        ++v11;
        if (v74)
        {
          v11 = v76;
          goto LABEL_99;
        }
      }
    }

    __break(1u);
    goto LABEL_141;
  }

  if (*(a1 + 40) > 5u)
  {
    v9 = *(a1 + 1);
    if (v16 == 6)
    {
      v52 = a2[1];
      v53 = v52 + 56;
      v54 = 1 << *(v52 + 32);
      v55 = -1;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      v56 = v55 & *(v52 + 56);
      v57 = (v54 + 63) >> 6;
      v115 = v52;

      v58 = 0;
      v8 = MEMORY[0x277D84F90];
      v114 = v15;
      while (v56)
      {
LABEL_74:
        v11 = *(*(v115 + 48) + 72 * (__clz(__rbit64(v56)) | (v58 << 6)) + 64);
        v60 = *(v11 + 16);
        a1 = *(v8 + 16);
        v61 = (a1 + v60);
        if (__OFADD__(a1, v60))
        {
          goto LABEL_145;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v61 > *(v8 + 24) >> 1)
        {
          if (a1 <= v61)
          {
            v63 = (a1 + v60);
          }

          else
          {
            v63 = a1;
          }

          v8 = sub_24B596270(isUniquelyReferenced_nonNull_native, v63, 1, v8);
        }

        v15 = v114;
        v56 &= v56 - 1;
        if (*(v11 + 16))
        {
          if ((*(v8 + 24) >> 1) - *(v8 + 16) < v60)
          {
            goto LABEL_147;
          }

          swift_arrayInitWithCopy();

          if (v60)
          {
            v64 = *(v8 + 16);
            v65 = __OFADD__(v64, v60);
            v66 = v64 + v60;
            if (v65)
            {
              goto LABEL_148;
            }

            *(v8 + 16) = v66;
          }
        }

        else
        {

          if (v60)
          {
            goto LABEL_146;
          }
        }
      }

      while (1)
      {
        v59 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          __break(1u);
          goto LABEL_139;
        }

        if (v59 >= v57)
        {
          break;
        }

        v56 = *(v53 + 8 * v59);
        ++v58;
        if (v56)
        {
          v58 = v59;
          goto LABEL_74;
        }
      }

      v105 = v8 + 80;
      v106 = *(v8 + 16) + 1;
      while (--v106)
      {
        a1 = *(v105 - 8);
        if (*(v105 - 24) != v15 || v9 != *(v105 - 16))
        {
          v105 += 64;
          if ((sub_24B5FFECC() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_131;
      }

LABEL_134:
    }

    else if (v16 == 7)
    {
      v11 = 0;
      v17 = a2[8];
      v18 = 1 << *(v17 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v8 = v17 + 56;
      v20 = v19 & *(v17 + 56);
      v21 = (v18 + 63) >> 6;
      while (v20)
      {
LABEL_13:
        v23 = (*(v17 + 48) + 72 * (__clz(__rbit64(v20)) | (v11 << 6)));
        a1 = v23[7];
        if (v23[3] != v15 || v9 != v23[4])
        {
          v20 &= v20 - 1;
          if ((sub_24B5FFECC() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_104;
      }

      while (1)
      {
        v22 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v22 >= v21)
        {
          return 0;
        }

        v20 = *(v8 + 8 * v22);
        ++v11;
        if (v20)
        {
          v11 = v22;
          goto LABEL_13;
        }
      }

LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    return 0;
  }

  v115 = *(a1 + 1);
  if (v16 == 4)
  {
    v11 = 0;
    v43 = a2[6];
    v44 = 1 << *(v43 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v8 = v43 + 56;
    v46 = v45 & *(v43 + 56);
    v47 = (v44 + 63) >> 6;
    while (v46)
    {
LABEL_59:
      v49 = (*(v43 + 48) + 56 * (__clz(__rbit64(v46)) | (v11 << 6)));
      a1 = v49[5];
      if (v49[3] != v15 || v14 != v49[4])
      {
        v46 &= v46 - 1;
        v51 = sub_24B5FFECC();
        v14 = v115;
        if ((v51 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_104;
    }

    while (1)
    {
      v48 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_142;
      }

      if (v48 >= v47)
      {
        return 0;
      }

      v46 = *(v8 + 8 * v48);
      ++v11;
      if (v46)
      {
        v11 = v48;
        goto LABEL_59;
      }
    }
  }

  v79 = 0;
  v111 = a2[4];
  v80 = *(v4 + 88);
  v110 = *(v4 + 80);
  v109 = v80;
  v81 = a2[7];
  v113 = v81;
  v82 = 1 << *(v81 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v85 = *(v81 + 56);
  v84 = v81 + 56;
  v11 = v83 & v85;
  v8 = (v82 + 63) >> 6;
  do
  {
    if (!v11)
    {
      while (1)
      {
        v86 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_144;
        }

        if (v86 >= v8)
        {
          return 0;
        }

        v11 = *(v84 + 8 * v86);
        ++v79;
        if (v11)
        {
          v79 = v86;
          break;
        }
      }
    }

    v87 = (*(v113 + 48) + 72 * (__clz(__rbit64(v11)) | (v79 << 6)));
    a1 = v87[2];
    v88 = v87[3];
    v89 = v87[4];
    v112 = v87[5];
    v9 = v87[6];
    if (v88 == v15 && v14 == v89)
    {
      break;
    }

    v11 &= v11 - 1;
    v91 = sub_24B5FFECC();
    v14 = v115;
  }

  while ((v91 & 1) == 0);

  v92 = v9;

  if (!v9)
  {

    goto LABEL_134;
  }

  v93 = *(v114 + 48);
  v116[2] = *(v114 + 32);
  v116[3] = v93;
  v117 = *(v114 + 64);
  v94 = *(v114 + 16);
  v116[0] = *v114;
  v116[1] = v94;
  v110(&v118, 5, v111, v116);
  v95 = v119;
  if (!v119)
  {
    goto LABEL_134;
  }

  v96 = v118;
  v97 = v120;
  v98 = v121;
  v99 = v122;
  v100 = v123;
  v101 = v124;

  sub_24B5A17AC(v96, v95, v97, v98, v99, v100, v101);
  if (!*(v99 + 16))
  {

    goto LABEL_134;
  }

  v102 = sub_24B5EA2D0(v112, v92);
  v104 = v103;

  if ((v104 & 1) == 0)
  {
    goto LABEL_134;
  }

  a1 = *(*(v99 + 56) + 16 * v102);

LABEL_131:

  return a1;
}

int *sub_24B59444C(uint64_t a1, void *a2)
{
  result = type metadata accessor for FilterState(0);
  if (*(a2 + result[9]) == 1)
  {
    sub_24B58FDC8(v4);
    memcpy(__dst, a2, 0x111uLL);
    sub_24B58FECC(__dst);
    return memcpy(a2, v4, 0x111uLL);
  }

  return result;
}

void *sub_24B5944BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_24B594578(*(a1 + 16), 0);
  v4 = sub_24B59BD98(&v7, (v3 + 4), v1, a1);
  v5 = v7;

  sub_24B5A1880(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_24B594578(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_24B594608(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0xE38E38E38E38E39) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_24B594698(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C88, &qword_24B601110);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_24B594728(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x4924924924924925) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

char *sub_24B5947B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B594B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24B5947D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B594C20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24B5947F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B594F44(a1, a2, a3, *v3, &qword_27F018C50, &qword_24B6010D8, &qword_27F018BD8, &unk_24B601060);
  *v3 = result;
  return result;
}

void *sub_24B594838(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B594DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24B594858(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B594F44(a1, a2, a3, *v3, &qword_27F018C40, &qword_24B6010C8, &qword_27F018BE8, &unk_24B601070);
  *v3 = result;
  return result;
}

void *sub_24B594898(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B5951CC(a1, a2, a3, *v3, &qword_27F018C38, &qword_24B6010C0, &qword_27F018BF0, &qword_24B603600);
  *v3 = result;
  return result;
}

void *sub_24B5948D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B594F44(a1, a2, a3, *v3, &qword_27F018C30, &qword_24B6010B8, &qword_27F018BF8, &unk_24B601080);
  *v3 = result;
  return result;
}

void *sub_24B594918(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B5951CC(a1, a2, a3, *v3, &qword_27F018C28, &qword_24B6010B0, &qword_27F018C00, &qword_24B603620);
  *v3 = result;
  return result;
}

void *sub_24B594958(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B595088(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24B594978(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B5951CC(a1, a2, a3, *v3, &qword_27F018C10, &qword_24B601098, &qword_27F018C08, &qword_24B601090);
  *v3 = result;
  return result;
}

char *sub_24B5949B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B595300(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24B5949D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24B595534(a1, a2, a3, *v3, &qword_27F018CA8, &qword_24B601130, &type metadata for SkillLevel);
  *v3 = result;
  return result;
}

char *sub_24B594A10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B594B2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CD0, &qword_24B601158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_24B594C20(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C58, &qword_24B6010E0);
  v10 = *(type metadata accessor for FilterSectionDescriptor(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FilterSectionDescriptor(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_24B594DF8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C48, &qword_24B6010D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BE0, &qword_24B602300);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24B594F44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 80);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[10 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 80 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_24B595088(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C18, &unk_24B6010A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C20, &qword_24B603630);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24B5951CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 + 31;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 6);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[8 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, v14 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_24B595300(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C70, &qword_24B6010F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B59540C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CB8, &qword_24B601140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B595534(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 72);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[72 * v11])
    {
      memmove(v15, v16, 72 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24B59565C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C98, &qword_24B601120);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B595784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C88, &qword_24B601110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B5958A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_24B5959CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C68, &qword_24B6010F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B595AD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C78, &qword_24B601100);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_24B595BDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B58, &qword_24B600DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24B595CF8(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C58, &qword_24B6010E0);
  v10 = *(type metadata accessor for FilterSectionDescriptor(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FilterSectionDescriptor(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_24B595ED0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018CF8, &qword_24B601178);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B18, &qword_24B600D88) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B18, &qword_24B600D88) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_24B5960C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B5A19AC;

  return sub_24B592FE8(a1, v1 + 16);
}

uint64_t sub_24B596158(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B5A19AC;

  return sub_24B5922BC(a1, v4, v5, v6, v7);
}

char *sub_24B596270(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018C70, &qword_24B6010F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B59637C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BC0, &qword_24B601048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24B596488(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24B59C75C(v2);
  }

  v3 = *(v2 + 2);
  v28[0] = (v2 + 32);
  v28[1] = v3;
  result = sub_24B5FFEAC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 88;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 8) >= *v12)
          {
            break;
          }

          v13 = v12 - 56;
          v14 = *(v12 + 8);
          v15 = *(v12 + 24);
          v16 = *(v12 + 56);
          v26 = *(v12 + 40);
          v27 = v16;
          v24 = v14;
          v25 = v15;
          v17 = *(v12 - 40);
          *(v12 + 8) = *(v12 - 56);
          *(v12 + 24) = v17;
          v18 = *(v12 - 8);
          *(v12 + 40) = *(v12 - 24);
          *(v12 + 56) = v18;
          v19 = v27;
          v20 = v24;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v19;
          *v13 = v20;
          *(v13 + 1) = v21;
          v12 -= 64;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 64;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24B5FFB9C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_24B597F80(&v24, v23, v28, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24B596600(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24B59C770(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_24B5FFEAC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 88;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 9) >= *v12)
          {
            break;
          }

          v13 = v12 - 56;
          v24 = *(v12 + 1);
          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 4);
          v28 = *(v12 + 10);
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 10) = *(v12 + 1);
          v17 = *(v12 - 8);
          *(v12 + 3) = *(v12 - 24);
          *(v12 + 4) = v17;
          v18 = *(v12 - 40);
          *(v12 + 1) = *(v12 - 56);
          *(v12 + 2) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v20;
          *(v12 + 1) = v19;
          *(v13 + 1) = v21;
          v12 -= 72;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 72;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24B5FFB9C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_24B598524(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24B596790(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_24B596B40(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_24B59682C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_24B596A30(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_24B5968C8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24B59C858(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_24B5FFEAC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 56];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = *(v13 + 3);
          v16 = *(v13 + 4);
          v17 = *(v13 + 6);
          v18 = *(v13 - 8);
          *(v13 + 1) = *(v13 - 24);
          *(v13 + 2) = v18;
          *(v13 + 6) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v15;
          *(v13 - 1) = v16;
          *v13 = v11;
          *(v13 + 1) = v17;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24B5FFB9C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_24B599DD4(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24B596A30(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_24B5FFEAC();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_24B5FFB9C();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_24B596B40(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_24B5FFEAC();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        v10 = sub_24B5FFB9C();
        *(v10 + 16) = v7 / 2;
      }

      v12[0] = v10 + 32;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_24B596C50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3 - 48;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 88);
      v10 = *(v8 + 40);
      if (v10 > 4)
      {
        if (*(v8 + 40) > 6u)
        {
          if (v10 == 7)
          {
            if (v9 >= 7)
            {
              goto LABEL_4;
            }
          }

          else if (v9 >= 8)
          {
            goto LABEL_4;
          }
        }

        else if (v10 == 5)
        {
          if (v9 >= 5)
          {
            goto LABEL_4;
          }
        }

        else if (v9 >= 6)
        {
          goto LABEL_4;
        }
      }

      else if (*(v8 + 40) > 2u)
      {
        if (v10 == 3)
        {
          if (v9 >= 3)
          {
            goto LABEL_4;
          }
        }

        else if (v9 >= 4)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= 2)
      {
        if (v9 >= 2)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v10)
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      v12 = *(v8 + 48);
      v11 = *(v8 + 64);
      v13 = *(v8 + 16);
      v14 = *(v8 + 32);
      *(v8 + 48) = *v8;
      *(v8 + 64) = v13;
      v15 = *(v8 + 80);
      *(v8 + 80) = v14;
      *v8 = v12;
      *(v8 + 16) = v11;
      *(v8 + 32) = v15;
      *(v8 + 40) = v9;
      v8 -= 48;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        ++a3;
        v5 += 48;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B596D64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + (a3 << 6);
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 40);
      v11 = result == *(v10 - 24) && *(v10 + 48) == *(v10 - 16);
      if (v11 || (result = sub_24B5FFECC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 64;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = (v10 - 64);
      v14 = *(v10 + 32);
      v13 = *(v10 + 48);
      v16 = *v10;
      v15 = *(v10 + 16);
      v17 = *(v10 - 48);
      *v10 = *(v10 - 64);
      *(v10 + 16) = v17;
      v18 = *(v10 - 16);
      *(v10 + 32) = *(v10 - 32);
      *(v10 + 48) = v18;
      *v12 = v16;
      v12[1] = v15;
      v10 -= 64;
      v12[2] = v14;
      v12[3] = v13;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B596E40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 56);
      v11 = result == *(v10 - 16) && *(v10 + 64) == *(v10 - 8);
      if (v11 || (result = sub_24B5FFECC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 72;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = v10 - 72;
      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 24);
      *(v10 + 32) = *(v10 - 40);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 8);
      v14 = *(v10 - 56);
      *v10 = *(v10 - 72);
      *(v10 + 16) = v14;
      *(v12 + 64) = v20;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      v10 -= 72;
      *v12 = v16;
      *(v12 + 16) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B596F48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 48);
      v11 = result == *(v10 - 24) && *(v10 + 56) == *(v10 - 16);
      if (v11 || (result = sub_24B5FFECC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 72;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = v10 - 72;
      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 24);
      *(v10 + 32) = *(v10 - 40);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 8);
      v14 = *(v10 - 56);
      *v10 = *(v10 - 72);
      *(v10 + 16) = v14;
      *(v12 + 64) = v20;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      v10 -= 72;
      *v12 = v16;
      *(v12 + 16) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B597050(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3 - 56;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 56 * v4;
    result = *(v9 + 40);
    v10 = *(v9 + 48);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 40) && v10 == *(v12 + 48);
      if (v13 || (result = sub_24B5FFECC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 56;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 64);
      v15 = *(v12 + 16);
      v17 = *(v12 + 48);
      v16 = *(v12 + 56);
      *(v12 + 56) = *v12;
      v18 = *(v12 + 80);
      v19 = *(v12 + 88);
      result = *(v12 + 96);
      v10 = *(v12 + 104);
      *(v12 + 72) = v15;
      *(v12 + 88) = *(v12 + 32);
      *(v12 + 104) = v17;
      *v12 = v16;
      *(v12 + 8) = v14;
      *(v12 + 24) = v18;
      *(v12 + 32) = v19;
      *(v12 + 40) = result;
      *(v12 + 48) = v10;
      v12 -= 56;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B59714C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v118 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_128:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_168;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_130;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v119 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_39;
    }

    v10 = *v6;
    v11 = *v6 + 48 * v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);
    v18 = *v6 + 48 * v119;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v5 = *(v18 + 24);
    v116 = v12;
    v117 = *(v18 + 32);
    v22 = *(v18 + 40);
    v114 = v14;
    v115 = v13;
    v112 = v16;
    v113 = v15;
    if (v4)
    {
      sub_24B57BA1C(v12, v13, v14, v15, v16, v17);
      sub_24B57BA1C(v19, v20, v21, v5, v117, v22);
      sub_24B57BA04(v19, v20, v21, v5, v117, v22);
      sub_24B57BA04(v116, v115, v114, v113, v112, v17);
    }

    v109 = v10;
    sub_24B57BA1C(v12, v13, v14, v15, v16, v17);
    sub_24B57BA1C(v19, v20, v21, v5, v117, v22);
    sub_24B57BA04(v19, v20, v21, v5, v117, v22);
    v23 = v17;
    result = sub_24B57BA04(v116, v115, v114, v113, v112, v17);
    v8 = v119 + 2;
    if (v119 + 2 < v7)
    {
      v6 = a3;
      v24 = v109 + 48 * v119 + 88;
      v25 = v23;
      while (1)
      {
        v29 = v24;
        v31 = *(v24 + 48);
        v24 += 48;
        v30 = v31;
        v32 = *v29;
        if (v32 > 4)
        {
          if (v32 > 6)
          {
            if (v32 == 7)
            {
              v26 = v23 < v22;
              v27 = v30 > 6;
            }

            else
            {
              v26 = v23 < v22;
              v27 = v30 > 7;
            }
          }

          else if (v32 == 5)
          {
            v26 = v23 < v22;
            v27 = v30 > 4;
          }

          else
          {
            v26 = v23 < v22;
            v27 = v30 > 5;
          }

          goto LABEL_9;
        }

        if (v32 > 2)
        {
          break;
        }

        if (v32 >= 2)
        {
          v26 = v23 < v22;
          v27 = v30 > 1;
LABEL_9:
          v28 = v27;
          if (((v26 ^ v28) & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_13;
        }

        if (v23 < v22 == v30 >= v32)
        {
          goto LABEL_30;
        }

LABEL_13:
        if (v7 == ++v8)
        {
          v8 = v7;
          if (v23 >= v22)
          {
            goto LABEL_39;
          }

LABEL_31:
          if (v8 >= v119)
          {
            if (v119 < v8)
            {
              v33 = 48 * v8 - 48;
              v34 = v119;
              v35 = 48 * v119;
              v36 = v8;
              do
              {
                if (v34 != --v36)
                {
                  v37 = *v6;
                  if (!*v6)
                  {
                    goto LABEL_165;
                  }

                  v38 = v37 + v35;
                  v39 = *(v37 + v35 + 32);
                  v40 = v37 + v33;
                  v41 = *(v38 + 40);
                  v42 = *v38;
                  v43 = *(v38 + 16);
                  v45 = *(v40 + 16);
                  v44 = *(v40 + 32);
                  *v38 = *v40;
                  *(v38 + 16) = v45;
                  *(v38 + 32) = v44;
                  *v40 = v42;
                  *(v40 + 16) = v43;
                  *(v40 + 32) = v39;
                  *(v40 + 40) = v41;
                }

                ++v34;
                v33 -= 48;
                v35 += 48;
              }

              while (v34 < v36);
            }

            goto LABEL_39;
          }

LABEL_161:
          __break(1u);
LABEL_162:
          result = sub_24B59B888(v9);
          v9 = result;
LABEL_130:
          v105 = *(v9 + 2);
          if (v105 >= 2)
          {
            while (*v6)
            {
              v106 = *&v9[16 * v105];
              v107 = *&v9[16 * v105 + 24];
              sub_24B59A3B4((*v6 + 48 * v106), (*v6 + 48 * *&v9[16 * v105 + 16]), (*v6 + 48 * v107), v5);
              if (v4)
              {
              }

              if (v107 < v106)
              {
                goto LABEL_155;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_24B59B888(v9);
              }

              if (v105 - 2 >= *(v9 + 2))
              {
                goto LABEL_156;
              }

              v108 = &v9[16 * v105];
              *v108 = v106;
              *(v108 + 1) = v107;
              result = sub_24B59B7FC(v105 - 1);
              v105 = *(v9 + 2);
              if (v105 <= 1)
              {
              }
            }

            goto LABEL_166;
          }
        }
      }

      if (v32 == 3)
      {
        v26 = v23 < v22;
        v27 = v30 > 2;
      }

      else
      {
        v26 = v23 < v22;
        v27 = v30 > 3;
      }

      goto LABEL_9;
    }

    v6 = a3;
    v25 = v23;
LABEL_30:
    if (v25 < v22)
    {
      goto LABEL_31;
    }

LABEL_39:
    v46 = v6[1];
    if (v8 < v46)
    {
      if (__OFSUB__(v8, v119))
      {
        goto LABEL_158;
      }

      if (v8 - v119 < a4)
      {
        if (__OFADD__(v119, a4))
        {
          goto LABEL_159;
        }

        if (v119 + a4 < v46)
        {
          v46 = v119 + a4;
        }

        if (v46 < v119)
        {
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (v8 != v46)
        {
          break;
        }
      }
    }

LABEL_77:
    if (v8 < v119)
    {
      goto LABEL_157;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 2);
    v60 = *(v9 + 3);
    v61 = v5 + 1;
    if (v5 >= v60 >> 1)
    {
      result = sub_24B595AD8((v60 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v61;
    v62 = &v9[16 * v5];
    *(v62 + 4) = v119;
    *(v62 + 5) = v8;
    v63 = *v118;
    if (!*v118)
    {
      goto LABEL_167;
    }

    if (v5)
    {
      while (1)
      {
        v64 = v61 - 1;
        if (v61 >= 4)
        {
          break;
        }

        if (v61 == 3)
        {
          v65 = *(v9 + 4);
          v66 = *(v9 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_97:
          if (v68)
          {
            goto LABEL_146;
          }

          v81 = &v9[16 * v61];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_149;
          }

          v87 = &v9[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_152;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_153;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v61 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        v91 = &v9[16 * v61];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_111:
        if (v86)
        {
          goto LABEL_148;
        }

        v94 = &v9[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_151;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_118:
        v5 = v64 - 1;
        if (v64 - 1 >= v61)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (!*v6)
        {
          goto LABEL_164;
        }

        v102 = *&v9[16 * v5 + 32];
        v103 = *&v9[16 * v64 + 40];
        sub_24B59A3B4((*v6 + 48 * v102), (*v6 + 48 * *&v9[16 * v64 + 32]), (*v6 + 48 * v103), v63);
        if (v4)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24B59B888(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_143;
        }

        v104 = &v9[16 * v5];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        result = sub_24B59B7FC(v64);
        v61 = *(v9 + 2);
        if (v61 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v9[16 * v61 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_144;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_145;
      }

      v76 = &v9[16 * v61];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_147;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_150;
      }

      if (v80 >= v72)
      {
        v98 = &v9[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_154;
        }

        if (v67 < v101)
        {
          v64 = v61 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_97;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_128;
    }
  }

  v47 = *v6;
  v48 = *v6 + 48 * v8 - 48;
  v49 = v119 - v8;
LABEL_49:
  v50 = v49;
  v51 = v48;
  while (1)
  {
    v52 = *(v51 + 88);
    v53 = *(v51 + 40);
    if (v53 > 4)
    {
      if (*(v51 + 40) > 6u)
      {
        if (v53 == 7)
        {
          if (v52 >= 7)
          {
            goto LABEL_48;
          }
        }

        else if (v52 >= 8)
        {
          goto LABEL_48;
        }
      }

      else if (v53 == 5)
      {
        if (v52 >= 5)
        {
          goto LABEL_48;
        }
      }

      else if (v52 >= 6)
      {
        goto LABEL_48;
      }
    }

    else if (*(v51 + 40) > 2u)
    {
      if (v53 == 3)
      {
        if (v52 >= 3)
        {
          goto LABEL_48;
        }
      }

      else if (v52 >= 4)
      {
        goto LABEL_48;
      }
    }

    else if (v53 >= 2)
    {
      if (v52 >= 2)
      {
        goto LABEL_48;
      }
    }

    else if (v52 >= v53)
    {
      goto LABEL_48;
    }

    if (!v47)
    {
      break;
    }

    v55 = *(v51 + 48);
    v54 = *(v51 + 64);
    v56 = *(v51 + 16);
    v57 = *(v51 + 32);
    *(v51 + 48) = *v51;
    *(v51 + 64) = v56;
    v58 = *(v51 + 80);
    *(v51 + 80) = v57;
    *v51 = v55;
    *(v51 + 16) = v54;
    *(v51 + 32) = v58;
    *(v51 + 40) = v52;
    v51 -= 48;
    if (__CFADD__(v50++, 1))
    {
LABEL_48:
      ++v8;
      v48 += 48;
      --v49;
      if (v8 != v46)
      {
        goto LABEL_49;
      }

      v8 = v46;
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
  return result;
}

uint64_t sub_24B5979A0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v100;
    if (!*v100)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_24B59B888(v7);
      v7 = result;
    }

    v91 = v7 + 16;
    v92 = *(v7 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = &v7[16 * v92];
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_24B59A6F4((*a3 + (*v93 << 6)), (*a3 + (*v95 << 6)), (*a3 + (v96 << 6)), v8);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_129;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_130;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_131;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3 + (v6 << 6);
      result = *(v9 + 40);
      v10 = *a3 + (v8 << 6);
      if (result == *(v10 + 40) && *(v9 + 48) == *(v10 + 48))
      {
        v12 = 0;
      }

      else
      {
        result = sub_24B5FFECC();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = (v10 + 176);
        do
        {
          result = *(v13 - 1);
          if (result == *(v13 - 9) && *v13 == *(v13 - 8))
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24B5FFECC();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          v13 += 8;
          ++v6;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v15 = (v6 << 6) - 64;
          v16 = v8 << 6;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v19 = (v28 + v16);
              v20 = (v28 + v15);
              v22 = v19[2];
              v21 = v19[3];
              v24 = *v19;
              v23 = v19[1];
              v25 = v20[3];
              v27 = *v20;
              v26 = v20[1];
              v19[2] = v20[2];
              v19[3] = v25;
              *v19 = v27;
              v19[1] = v26;
              *v20 = v24;
              v20[1] = v23;
              v20[2] = v22;
              v20[3] = v21;
            }

            ++v18;
            v15 -= 64;
            v16 += 64;
          }

          while (v18 < v17);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = v8 + a4;
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v46 = *(v7 + 2);
    v45 = *(v7 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_24B595AD8((v45 > 1), v46 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v47;
    v48 = &v7[16 * v46];
    *(v48 + 4) = v8;
    *(v48 + 5) = v6;
    v49 = *v100;
    if (!*v100)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v7 + 4);
          v52 = *(v7 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v7[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v7[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v7[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v7[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v88 = *&v7[16 * v8 + 32];
        v89 = *&v7[16 * v50 + 40];
        sub_24B59A6F4((*a3 + (v88 << 6)), (*a3 + (*&v7[16 * v50 + 32] << 6)), (*a3 + (v89 << 6)), v49);
        if (v4)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_24B59B888(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v90 = &v7[16 * v8];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        result = sub_24B59B7FC(v50);
        v47 = *(v7 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v7[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v7[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v7[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + (v6 << 6);
  v98 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 + 40) == *(v35 - 24) && *(v35 + 48) == *(v35 - 16);
    if (v36 || (result = sub_24B5FFECC(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 64;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v98;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v37 = (v35 - 64);
    v39 = *(v35 + 32);
    v38 = *(v35 + 48);
    v41 = *v35;
    v40 = *(v35 + 16);
    v42 = *(v35 - 48);
    *v35 = *(v35 - 64);
    *(v35 + 16) = v42;
    v43 = *(v35 - 16);
    *(v35 + 32) = *(v35 - 32);
    *(v35 + 48) = v43;
    *v37 = v41;
    v37[1] = v40;
    v35 -= 64;
    v37[2] = v39;
    v37[3] = v38;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_24B597F80(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24B59B888(v8);
      v8 = result;
    }

    v91 = (v8 + 16);
    v92 = *(v8 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v8 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_24B59A934((*a3 + (*v93 << 6)), (*a3 + (*v95 << 6)), (*a3 + (v96 << 6)), v5);
        if (v4)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + (v7 << 6) + 56);
      v11 = v9 << 6;
      v12 = *a3 + (v9 << 6);
      v13 = *(v12 + 56);
      v14 = v9 + 2;
      v15 = (v12 + 184);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 8;
        v18 = (v10 < v13) ^ (v17 >= v16);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = (v7 << 6) - 64;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v11);
            v23 = (v31 + v19);
            v25 = v22[2];
            v24 = v22[3];
            v27 = *v22;
            v26 = v22[1];
            v28 = v23[3];
            v30 = *v23;
            v29 = v23[1];
            v22[2] = v23[2];
            v22[3] = v28;
            *v22 = v30;
            v22[1] = v29;
            *v23 = v27;
            v23[1] = v26;
            v23[2] = v25;
            v23[3] = v24;
          }

          ++v21;
          v19 -= 64;
          v11 += 64;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v45 = *(v8 + 24);
    v46 = v5 + 1;
    if (v5 >= v45 >> 1)
    {
      result = sub_24B595AD8((v45 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v5);
    *v48 = v9;
    v48[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v49 = *(v8 + 32);
          v50 = *(v8 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v8 + 16 * v46);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v47 + 16 * v5);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v5 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v8 + 16 * v46);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v47 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v86 = (v47 + 16 * (v5 - 1));
        v87 = *v86;
        v88 = (v47 + 16 * v5);
        v89 = v88[1];
        sub_24B59A934((*a3 + (*v86 << 6)), (*a3 + (*v88 << 6)), (*a3 + (v89 << 6)), v100);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v8 + 16);
        if (v5 >= v90)
        {
          goto LABEL_101;
        }

        v46 = v90 - 1;
        result = memmove((v47 + 16 * v5), v88 + 2, 16 * (v90 - 1 - v5));
        *(v8 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v47 + 16 * v46;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v8 + 16 * v46);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v47 + 16 * v5);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v5 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + (v7 << 6);
  v34 = v9 - v7;
LABEL_30:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    if (*(v36 + 56) >= *(v36 - 8))
    {
LABEL_29:
      ++v7;
      v33 += 64;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v37 = (v36 - 64);
    v39 = *(v36 + 32);
    v38 = *(v36 + 48);
    v41 = *v36;
    v40 = *(v36 + 16);
    v42 = *(v36 - 48);
    *v36 = *(v36 - 64);
    *(v36 + 16) = v42;
    v43 = *(v36 - 16);
    *(v36 + 32) = *(v36 - 32);
    *(v36 + 48) = v43;
    *v37 = v41;
    v37[1] = v40;
    v36 -= 64;
    v37[2] = v39;
    v37[3] = v38;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_24B598524(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24B59B888(v7);
      v7 = result;
    }

    v80 = (v7 + 16);
    v81 = *(v7 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v7 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_24B59AB50((*a3 + 72 * *v82), (*a3 + 72 * *v84), (*a3 + 72 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 72 * v6 + 56);
      v10 = 72 * v8;
      v11 = *a3 + 72 * v8;
      v12 = *(v11 + 56);
      v13 = v8 + 2;
      v14 = (v11 + 200);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 9;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 72 * v6 - 72;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x48uLL);
            *(v21 + 32) = v94;
            *(v21 + 48) = v96;
            *(v21 + 64) = v98;
            *v21 = v90;
            *(v21 + 16) = v92;
          }

          ++v20;
          v18 -= 72;
          v10 += 72;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 16);
    v32 = *(v7 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_24B595AD8((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v34;
    v35 = v7 + 32;
    v36 = (v7 + 32 + 16 * v33);
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 32);
          v39 = *(v7 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = (v7 + 16 * v34);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = (v35 + 16 * v37);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = (v7 + 16 * v34);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = (v35 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = (v35 + 16 * (v37 - 1));
        v76 = *v75;
        v77 = (v35 + 16 * v37);
        v78 = v77[1];
        sub_24B59AB50((*a3 + 72 * *v75), (*a3 + 72 * *v77), (*a3 + 72 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v7 + 16);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove((v35 + 16 * v37), v77 + 2, 16 * (v79 - 1 - v37));
        *(v7 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v35 + 16 * v34;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = (v7 + 16 * v34);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = (v35 + 16 * v37);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 72 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 56) >= *(v27 - 16))
    {
LABEL_29:
      ++v6;
      v24 += 72;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 72;
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 24);
    *(v27 + 32) = *(v27 - 40);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 8);
    v30 = *(v27 - 56);
    *v27 = *(v27 - 72);
    *(v27 + 16) = v30;
    *(v28 + 64) = v99;
    *(v28 + 32) = v95;
    *(v28 + 48) = v97;
    v27 -= 72;
    *v28 = v91;
    *(v28 + 16) = v93;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_24B598B28(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  __dst = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_24B59B888(v8);
      v8 = result;
    }

    v83 = v8 + 16;
    v84 = *(v8 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v5;
        if (!*v5)
        {
          goto LABEL_142;
        }

        v86 = &v8[16 * v84];
        v5 = *v86;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_24B59ADC8((v85 + 72 * *v86), (v85 + 72 * *v87), (v85 + 72 * v88), __dst);
        if (v4)
        {
        }

        if (v88 < v5)
        {
          goto LABEL_130;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_131;
        }

        *v86 = v5;
        *(v86 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_132;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        v5 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 72 * v7;
      result = *(v11 + 56);
      v12 = *(v11 + 64);
      v13 = *v5 + 72 * v9;
      if (result == *(v13 + 56) && v12 == *(v13 + 64))
      {
        v15 = 0;
      }

      else
      {
        result = sub_24B5FFECC();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 72 * v9 + 208);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 10) && *v16 == *(v16 - 9))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24B5FFECC();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 9;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v18 = 72 * v7 - 72;
          v19 = v9;
          v20 = 72 * v9;
          v21 = v7;
          v90 = v19;
          do
          {
            if (v19 != --v21)
            {
              v23 = *v5;
              if (!*v5)
              {
                goto LABEL_141;
              }

              v22 = v23 + v18;
              v99 = *(v23 + v20 + 32);
              v101 = *(v23 + v20 + 48);
              v103 = *(v23 + v20 + 64);
              v95 = *(v23 + v20);
              v97 = *(v23 + v20 + 16);
              result = memmove((v23 + v20), (v23 + v18), 0x48uLL);
              *(v22 + 32) = v99;
              *(v22 + 48) = v101;
              *(v22 + 64) = v103;
              *v22 = v95;
              *(v22 + 16) = v97;
            }

            ++v19;
            v18 -= 72;
            v20 += 72;
          }

          while (v19 < v21);
          v9 = v90;
        }
      }
    }

    v24 = v5[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v24)
        {
          v25 = v5[1];
        }

        else
        {
          v25 = v9 + a4;
        }

        if (v25 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v25)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_24B595AD8((v36 > 1), v37 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *__dst;
    if (!*__dst)
    {
      goto LABEL_143;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_75:
          if (v45)
          {
            goto LABEL_121;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_124;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_128;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_89:
        if (v63)
        {
          goto LABEL_123;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_126;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_96:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
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
          goto LABEL_137;
        }

        if (!*v5)
        {
          goto LABEL_140;
        }

        v80 = *&v8[16 * v79 + 32];
        v81 = *&v8[16 * v41 + 40];
        sub_24B59ADC8((*v5 + 72 * v80), (*v5 + 72 * *&v8[16 * v41 + 32]), (*v5 + 72 * v81), v40);
        if (v4)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24B59B888(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v82 = &v8[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        result = sub_24B59B7FC(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_119;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_120;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_122;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_125;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_129;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v26 = *v5;
  v27 = *v5 + 72 * v7;
  v91 = v9;
  v28 = v9 - v7;
LABEL_44:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 56) == *(v30 - 16) && *(v30 + 64) == *(v30 - 8);
    if (v31 || (result = sub_24B5FFECC(), (result & 1) == 0))
    {
LABEL_43:
      ++v7;
      v27 += 72;
      --v28;
      if (v7 != v25)
      {
        goto LABEL_44;
      }

      v7 = v25;
      v5 = a3;
      v9 = v91;
      goto LABEL_55;
    }

    if (!v26)
    {
      break;
    }

    v32 = v30 - 72;
    v100 = *(v30 + 32);
    v102 = *(v30 + 48);
    v104 = *(v30 + 64);
    v96 = *v30;
    v98 = *(v30 + 16);
    v33 = *(v30 - 24);
    *(v30 + 32) = *(v30 - 40);
    *(v30 + 48) = v33;
    *(v30 + 64) = *(v30 - 8);
    v34 = *(v30 - 56);
    *v30 = *(v30 - 72);
    *(v30 + 16) = v34;
    *(v32 + 64) = v104;
    *(v32 + 32) = v100;
    *(v32 + 48) = v102;
    v30 -= 72;
    *v32 = v96;
    *(v32 + 16) = v98;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_24B599168(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  __dst = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_24B59B888(v8);
      v8 = result;
    }

    v83 = v8 + 16;
    v84 = *(v8 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v5;
        if (!*v5)
        {
          goto LABEL_142;
        }

        v86 = &v8[16 * v84];
        v5 = *v86;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_24B59B068((v85 + 72 * *v86), (v85 + 72 * *v87), (v85 + 72 * v88), __dst);
        if (v4)
        {
        }

        if (v88 < v5)
        {
          goto LABEL_130;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_131;
        }

        *v86 = v5;
        *(v86 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_132;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        v5 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 72 * v7;
      result = *(v11 + 48);
      v12 = *(v11 + 56);
      v13 = *v5 + 72 * v9;
      if (result == *(v13 + 48) && v12 == *(v13 + 56))
      {
        v15 = 0;
      }

      else
      {
        result = sub_24B5FFECC();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 72 * v9 + 200);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 10) && *v16 == *(v16 - 9))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24B5FFECC();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 9;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v18 = 72 * v7 - 72;
          v19 = v9;
          v20 = 72 * v9;
          v21 = v7;
          v90 = v19;
          do
          {
            if (v19 != --v21)
            {
              v23 = *v5;
              if (!*v5)
              {
                goto LABEL_141;
              }

              v22 = v23 + v18;
              v99 = *(v23 + v20 + 32);
              v101 = *(v23 + v20 + 48);
              v103 = *(v23 + v20 + 64);
              v95 = *(v23 + v20);
              v97 = *(v23 + v20 + 16);
              result = memmove((v23 + v20), (v23 + v18), 0x48uLL);
              *(v22 + 32) = v99;
              *(v22 + 48) = v101;
              *(v22 + 64) = v103;
              *v22 = v95;
              *(v22 + 16) = v97;
            }

            ++v19;
            v18 -= 72;
            v20 += 72;
          }

          while (v19 < v21);
          v9 = v90;
        }
      }
    }

    v24 = v5[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v24)
        {
          v25 = v5[1];
        }

        else
        {
          v25 = v9 + a4;
        }

        if (v25 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v25)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24B595AD8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_24B595AD8((v36 > 1), v37 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *__dst;
    if (!*__dst)
    {
      goto LABEL_143;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_75:
          if (v45)
          {
            goto LABEL_121;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_124;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_128;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_89:
        if (v63)
        {
          goto LABEL_123;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_126;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_96:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
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
          goto LABEL_137;
        }

        if (!*v5)
        {
          goto LABEL_140;
        }

        v80 = *&v8[16 * v79 + 32];
        v81 = *&v8[16 * v41 + 40];
        sub_24B59B068((*v5 + 72 * v80), (*v5 + 72 * *&v8[16 * v41 + 32]), (*v5 + 72 * v81), v40);
        if (v4)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_24B59B888(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v82 = &v8[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        result = sub_24B59B7FC(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_119;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_120;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_122;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_125;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_129;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v26 = *v5;
  v27 = *v5 + 72 * v7;
  v91 = v9;
  v28 = v9 - v7;
LABEL_44:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 48) == *(v30 - 24) && *(v30 + 56) == *(v30 - 16);
    if (v31 || (result = sub_24B5FFECC(), (result & 1) == 0))
    {
LABEL_43:
      ++v7;
      v27 += 72;
      --v28;
      if (v7 != v25)
      {
        goto LABEL_44;
      }

      v7 = v25;
      v5 = a3;
      v9 = v91;
      goto LABEL_55;
    }

    if (!v26)
    {
      break;
    }

    v32 = v30 - 72;
    v100 = *(v30 + 32);
    v102 = *(v30 + 48);
    v104 = *(v30 + 64);
    v96 = *v30;
    v98 = *(v30 + 16);
    v33 = *(v30 - 24);
    *(v30 + 32) = *(v30 - 40);
    *(v30 + 48) = v33;
    *(v30 + 64) = *(v30 - 8);
    v34 = *(v30 - 56);
    *v30 = *(v30 - 72);
    *(v30 + 16) = v34;
    *(v32 + 64) = v104;
    *(v32 + 32) = v100;
    *(v32 + 48) = v102;
    v30 -= 72;
    *v32 = v96;
    *(v32 + 16) = v98;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}